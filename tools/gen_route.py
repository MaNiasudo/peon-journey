"""Peon Journey 21-60 leveling route + the three variants (full / questing / dungeon-only).

Usage: python -I gen_route.py <data_forever.json> <dungeons_config.json> <free_guides_dir> <out_dir> <report.txt>
"""
import json
import re
import sys
from collections import defaultdict
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from qlib import DB, dist  # noqa: E402
from router import Router, fmt  # noqa: E402
from emit import Emitter, guide, lua_safe  # noqa: E402
from common import leveling_quest, drop_exclusive, objective_order_fixes, ROOT  # noqa: E402
import gen_dungeons_lib as GD  # noqa: E402

DATA, CFG, FREE, OUT, REPORT = sys.argv[1], sys.argv[2], Path(sys.argv[3]), Path(sys.argv[4]), Path(sys.argv[5])
OUT.mkdir(parents=True, exist_ok=True)
db = DB(DATA)
FIX = objective_order_fixes()
EM = Emitter(db)
DCFG = json.loads(Path(CFG).read_text())["dungeons"]

# ---------------------------------------------------------------- XP
XP = {}
for f in ("xpDB-classic.lua", "xpDB-traces.lua"):
    for m in re.finditer(r"\[(\d+)\]\s*=\s*\{(\d+),\s*(\d+)\}", (ROOT / "qdb" / f).read_text()):
        XP[int(m.group(1))] = (int(m.group(2)), int(m.group(3)))
NEED = [0, 400, 900, 1400, 2100, 2800, 3600, 4500, 5400, 6500, 7600, 8800, 10100, 11400, 12900, 14400, 16000, 17700,
        19400, 21300, 23200, 25200, 27300, 29400, 31700, 34000, 36400, 38900, 41400, 44300, 47400, 50800, 54500,
        58600, 62800, 67100, 71600, 76100, 80800, 85700, 90700, 95800, 101000, 106300, 111800, 117500, 123200,
        129000, 135000, 141100, 147300, 153600, 160000, 166500, 173000, 179600, 186300, 193100, 200000, 207000]
KILL_FACTOR = 1.6   # questing XP = quest XP + mob kills on the way (classic rule of thumb ~30% from kills)


def quest_xp(q, level):
    lv, xp = XP.get(q, (db.g(db.Q.get(q), 5, level) or level, 0))
    if not xp:
        return 0
    diff = int(level) - lv
    mult = 1.0 if diff <= 5 else {6: 0.8, 7: 0.6, 8: 0.4, 9: 0.2}.get(diff, 0.1)
    return xp * mult


class Player:
    def __init__(self, level):
        self.level, self.xp = level, 0.0

    def add(self, amount):
        self.xp += amount
        while self.level < 60 and self.xp >= NEED[self.level]:
            self.xp -= NEED[self.level]
            self.level += 1

    @property
    def f(self):
        return self.level + (self.xp / NEED[self.level] if self.level < 60 else 0)


# ---------------------------------------------------------------- filters
def elite_quest(q):
    obj = db.objectives(q)
    for o in obj:
        if o["kind"] in ("mob", "killcredit") and isinstance(o["id"], int):
            if db.g(db.N.get(o["id"]), 6, 0) in (1, 2):
                return True
    return False


DUNGEON_AREAS = set()
for d in DCFG:
    DUNGEON_AREAS |= set(d["areas"])


def dungeon_quest(q):
    return db.g(db.Q[q], 17) in DUNGEON_AREAS


ZID = db.Z


def zone_pool(keys, faction):
    pool = set()
    for k in keys:
        z = ZID[k]
        for q, r in db.Q.items():
            if db.g(r, 17) == z and leveling_quest(db, q, faction):
                pool.add(q)
    from collections import Counter
    names = Counter(db.qname(q) for q in pool)
    return {q for q in pool if names[db.qname(q)] < 4}


def available_closure(cands, done, faction):
    """drop quests whose real prerequisites are neither done nor in the set"""
    cands = set(cands)
    changed = True
    while changed:
        changed = False
        for q in list(cands):
            group, single = db.prereqs(q)
            ok = True
            for p in group:
                if p in done or p in cands:
                    continue
                if p in db.Q and db.available_for(p, faction):
                    ok = False
            singles = [p for p in single if p in db.Q and db.available_for(p, faction)]
            if singles and not any(p in done or p in cands for p in singles):
                ok = False
            if not ok:
                cands.discard(q)
                changed = True
    return cands


# ---------------------------------------------------------------- plans
PLAN = {
    "Alliance": [
        ("Ashenvale", ["ASHENVALE"], 23), ("Wetlands", ["WETLANDS"], 25), ("Redridge Mountains", ["REDRIDGE_MOUNTAINS"], 26),
        ("Duskwood", ["DUSKWOOD"], 28), ("Wetlands", ["WETLANDS"], 29), ("Hillsbrad/Alterac", ["HILLSBRAD_FOOTHILLS", "ALTERAC_MOUNTAINS"], 31),
        ("Ashenvale/Stonetalon", ["ASHENVALE", "STONETALON_MOUNTAINS"], 32), ("Duskwood", ["DUSKWOOD"], 33),
        ("Arathi Highlands", ["ARATHI_HIGHLANDS"], 34), ("Thousand Needles", ["THOUSAND_NEEDLES"], 35),
        ("Desolace", ["DESOLACE"], 37), ("Stranglethorn Vale", ["STRANGLETHORN_VALE"], 38),
        ("Dustwallow Marsh", ["DUSTWALLOW_MARSH"], 39), ("Riverglades", ["RIVERGLADES"], 42),
        ("Shen'dralas/Desolace", ["SHEN_DRALAS", "DESOLACE"], 43), ("Riverglades", ["RIVERGLADES"], 45),
        ("Stranglethorn Vale", ["STRANGLETHORN_VALE"], 46), ("Swamp of Sorrows/Badlands", ["SWAMP_OF_SORROWS", "BADLANDS"], 46),
        ("Tanaris", ["TANARIS"], 47), ("Feralas", ["FERALAS"], 48), ("The Hinterlands", ["THE_HINTERLANDS"], 49),
        ("Azshara", ["AZSHARA"], 51), ("Un'Goro Crater", ["UN_GORO_CRATER"], 53),
        ("Searing Gorge/Blasted Lands/Burning Steppes", ["SEARING_GORGE", "BLASTED_LANDS", "BURNING_STEPPES"], 54),
        ("Felwood", ["FELWOOD"], 55), ("Winterspring", ["WINTERSPRING"], 56), ("Mount Hyjal", ["MOUNT_HYJAL"], 58),
        ("Western/Eastern Plaguelands", ["WESTERN_PLAGUELANDS", "EASTERN_PLAGUELANDS"], 59),
        ("Mount Hyjal/Silithus", ["MOUNT_HYJAL", "SILITHUS"], 60),
    ],
    "Horde": [
        ("Stonetalon/Barrens", ["STONETALON_MOUNTAINS", "THE_BARRENS"], 24), ("Hillsbrad Foothills", ["HILLSBRAD_FOOTHILLS"], 26),
        ("Ashenvale", ["ASHENVALE"], 27), ("Thousand Needles", ["THOUSAND_NEEDLES"], 29),
        ("Hillsbrad/Alterac", ["HILLSBRAD_FOOTHILLS", "ALTERAC_MOUNTAINS"], 31), ("Arathi Highlands", ["ARATHI_HIGHLANDS"], 33),
        ("Stonetalon/Ashenvale", ["STONETALON_MOUNTAINS", "ASHENVALE"], 34), ("Desolace", ["DESOLACE"], 36),
        ("Stranglethorn Vale", ["STRANGLETHORN_VALE"], 38), ("Dustwallow Marsh/Swamp of Sorrows", ["DUSTWALLOW_MARSH", "SWAMP_OF_SORROWS"], 39),
        ("Riverglades", ["RIVERGLADES"], 42), ("Shen'dralas/Desolace", ["SHEN_DRALAS", "DESOLACE"], 43),
        ("Riverglades", ["RIVERGLADES"], 45), ("Stranglethorn Vale/Badlands", ["STRANGLETHORN_VALE", "BADLANDS"], 46),
        ("Tanaris", ["TANARIS"], 47), ("Feralas", ["FERALAS"], 48), ("The Hinterlands", ["THE_HINTERLANDS"], 49),
        ("Azshara", ["AZSHARA"], 51), ("Un'Goro Crater", ["UN_GORO_CRATER"], 53),
        ("Searing Gorge/Burning Steppes/Blasted Lands", ["SEARING_GORGE", "BURNING_STEPPES", "BLASTED_LANDS"], 54),
        ("Felwood", ["FELWOOD"], 55), ("Winterspring", ["WINTERSPRING"], 56), ("Mount Hyjal", ["MOUNT_HYJAL"], 58),
        ("Western/Eastern Plaguelands", ["WESTERN_PLAGUELANDS", "EASTERN_PLAGUELANDS"], 59),
        ("Mount Hyjal/Silithus", ["MOUNT_HYJAL", "SILITHUS"], 60),
    ],
}
START = {"Alliance": 21, "Horde": 22}
FREE_DUNGEONS = {"Alliance": {"The Hall of Thanes", "Ruins of Lordaeron", "The Deadmines"},
                 "Horde": {"Ragefire Chasm", "Ruins of Lordaeron", "Wailing Caverns"}}
NEW_ZONES = {"RIVERGLADES", "SHEN_DRALAS", "MOUNT_HYJAL", "AZSHARA", "DESOLACE", "WETLANDS"}
HUBS = {}  # zone ui -> flight master per faction (filled lazily)
UI = {"ASHENVALE": 1440, "WETLANDS": 1437, "REDRIDGE_MOUNTAINS": 1433, "DUSKWOOD": 1431, "HILLSBRAD_FOOTHILLS": 1424,
      "ALTERAC_MOUNTAINS": 1416, "STONETALON_MOUNTAINS": 1442, "ARATHI_HIGHLANDS": 1417, "THOUSAND_NEEDLES": 1441,
      "DESOLACE": 1443, "STRANGLETHORN_VALE": 1434, "DUSTWALLOW_MARSH": 1445, "RIVERGLADES": 2548, "SHEN_DRALAS": 2652,
      "SWAMP_OF_SORROWS": 1435, "BADLANDS": 1418, "TANARIS": 1446, "FERALAS": 1444, "THE_HINTERLANDS": 1425,
      "AZSHARA": 1447, "UN_GORO_CRATER": 1449, "SEARING_GORGE": 1427, "BLASTED_LANDS": 1419, "BURNING_STEPPES": 1428,
      "FELWOOD": 1448, "WINTERSPRING": 1452, "MOUNT_HYJAL": 2482, "WESTERN_PLAGUELANDS": 1422,
      "EASTERN_PLAGUELANDS": 1423, "SILITHUS": 1451, "THE_BARRENS": 1413}


def flight_master(ui, faction):
    key = (ui, faction)
    if key in HUBS:
        return HUBS[key]
    best = None
    for nid, n in db.N.items():
        sub = db.g(n, 14) or ""
        if not any(w in sub for w in ("Gryphon Master", "Wind Rider Master", "Hippogryph Master", "Bat Handler",
                                      "Flight Master", "Flight Mistress")):
            continue
        fr = db.g(n, 13) or ""
        if (faction == "Alliance" and "A" not in fr) or (faction == "Horde" and "H" not in fr):
            continue
        for s in db.spawns("npc", nid):
            if s[0] == ui:
                best = (nid, db.g(n, 1), s)
                break
        if best:
            break
    HUBS[key] = best
    return best


# ---------------------------------------------------------------- free (RXP) 1-21 coverage
def free_done(faction):
    done = set()
    for f in FREE.rglob("*.lua"):
        for b in re.findall(r"RegisterGuide\(\[\[(.*?)\]\]\)", f.read_text(errors="replace"), re.S):
            fac = re.search(r"^\s*<<\s*(Alliance|Horde)", b, re.M)
            if fac and fac.group(1) != faction:
                continue
            done |= {int(x) for x in re.findall(r"\.turnin (\d+)", b)}
    return done


# ---------------------------------------------------------------- dungeon guides (reuse the phase router)
DUN = GD.build_all(db, DCFG, FIX)   # {(name, faction): dict(lo, hi, steps, info, core, pre, body)}


def dungeon_xp(d, player):
    total = 0
    for q in d["quests"]:
        total += quest_xp(q, player.level)
    # mob kills inside one run: roughly half a level at the dungeon's level
    run = 0.30 * NEED[min(59, max(player.level, d["lo"]))] * d["runs"]
    return total * 1.0 + run


RESERVED = set()   # quests a later dungeon guide will do (Questing and Dungeons route only)


def candidates(zones, faction, player, done, cap=None):
    pool = zone_pool(zones, faction) - done - RESERVED
    lvl = player.level
    cap = cap or lvl + 3
    cands = {q for q in pool
             if (db.g(db.Q[q], 5, 0) or 0) <= cap + 1 and (db.g(db.Q[q], 4, 0) or 0) <= cap - 1
             and (db.g(db.Q[q], 5, 0) or 0) >= lvl - 5 and not elite_quest(q) and not dungeon_quest(q)}
    cands = available_closure(cands, done, faction)
    return set(drop_exclusive(db, sorted(cands)))


def run_segment(segname, zones, to, player, done, faction, fp_known, report, with_dungeons, tagline=None):
    lvl = player.level
    cap = max(to, lvl + 3)
    cands = candidates(zones, faction, player, done, cap)
    if len(cands) < 6:
        report.append(f"  {faction[0]} {'F' if with_dungeons else 'Q'} skip {segname} (only {len(cands)} quests left)")
        return None
    ui = UI.get(zones[0])
    fm = flight_master(ui, faction)
    r = Router(db, faction, fixes=FIX)
    steps, info, left = r.route(sorted(cands), ui, lvl, cap, external_done=done,
                                start_pos=fm[2] if fm else None)
    before = player.f
    for st in steps:
        if st["type"] == "turnin":
            for q in st["quests"]:
                player.add(quest_xp(q, player.level) * KILL_FACTOR)
    placed = {q for q in info if q not in left}
    done |= placed
    lo_lbl, hi_lbl = int(before), max(int(before), int(player.f))
    body = []
    if tagline:
        body += ["step", f"    +|cRXP_WARN_{lua_safe(tagline)}|r"]
    body += ["step", f"    .zone {ui} >>Travel to {lua_safe(segname.split('/')[0])}",
             f"    *Suggested level for this part: {lo_lbl}-{hi_lbl}"]
    if fm and (ui, faction) not in fp_known:
        fp_known.add((ui, faction))
        # completewith next: never blocks if you already know this flight path
        body += ["step", "    #completewith next", f"    .goto {fm[2][0]},{fmt(round(fm[2][1], 2))},{fmt(round(fm[2][2], 2))},15,0",
                 f"    >>Talk to |cRXP_FRIENDLY_{lua_safe(fm[1])}|r if you don't have this flight path yet",
                 f"    .fp {lua_safe(fm[1])} >>Get the flight path", f"    .target {lua_safe(fm[1])}"]
    body += EM.render(steps, info)
    report.append(f"  {faction[0]} {'Q' if not with_dungeons else 'F'} {segname:<40} {before:5.1f} -> {player.f:5.1f} "
                  f"(target {to})  quests {len(placed)}")
    return dict(kind="zone", lo=lo_lbl, hi=hi_lbl, name=segname, body=body, quests=len(placed))


ZONE_LABEL = {k: k.replace("_", " ").title().replace(" Of ", " of ").replace("Un Goro", "Un'Goro") for k in UI}
ZONE_LABEL["SHEN_DRALAS"] = "Shen'dralas"


def catch_up(faction, player, done, fp_known, report, with_dungeons, seq, exclude):
    best = None
    for key in UI:
        if key in exclude:
            continue
        c = candidates([key], faction, player, done)
        if len(c) < 5:
            continue
        score = sum(quest_xp(q, player.level) for q in c)
        if best is None or score > best[0]:
            best = (score, key)
    if not best:
        return False
    key = best[1]
    item = run_segment(ZONE_LABEL[key], [key], player.level + 2, player, done, faction, fp_known, report,
                       with_dungeons, tagline="Catch-up: extra quests at your level here before moving on")
    if not item:
        return False
    seq.append(item)
    return True


# ---------------------------------------------------------------- build one variant
def build_variant(faction, with_dungeons, report):
    tag = "A" if faction == "Alliance" else "H"
    player = Player(START[faction])
    done = free_done(faction)
    used_dungeons = set()
    seq = []    # list of dict(kind, name, body)
    fp_known = set()
    dlist = sorted([v for (n, fac), v in DUN.items() if fac == faction], key=lambda v: (v["lo"], v["hi"]))
    covered = FREE_DUNGEONS[faction]
    prev_to = START[faction]
    RESERVED.clear()
    if with_dungeons:
        for d in dlist:
            if d["name"] not in covered:
                RESERVED.update(d["quests"])
    for segname, zones, to in PLAN[faction]:
        if with_dungeons:
            inserted = 0
            for d in dlist:
                if inserted >= 2:
                    break
                if d["name"] in used_dungeons or d["name"] in covered:
                    continue
                if d["lo"] + 1 <= player.level <= d["hi"] - 1:
                    inserted += 1
                    used_dungeons.add(d["name"])
                    RESERVED.difference_update(d["quests"])
                    before = player.f
                    player.add(dungeon_xp(d, player))
                    done |= set(d["quests"])
                    seq.append(dict(kind="dungeon", lo=int(before), hi=int(player.f), name=d["name"], body=d["body"]))
                    report.append(f"  {faction[0]} DUNGEON {d['name']:<28} {before:5.1f} -> {player.f:5.1f}")
        new_zone = any(z in NEW_ZONES for z in zones)
        if with_dungeons and player.level >= to and not new_zone:
            report.append(f"  {faction[0]} F skip {segname} (already {player.f:.1f})")
            continue
        if not with_dungeons and player.f < prev_to - 0.8:
            catch_up(faction, player, done, fp_known, report, with_dungeons, seq, exclude=zones)
        item = run_segment(segname, zones, to, player, done, faction, fp_known, report, with_dungeons)
        if item:
            seq.append(item)
        prev_to = to
    while not with_dungeons and player.level < 60:
        if not catch_up(faction, player, done, fp_known, report, with_dungeons, seq, exclude=[]):
            break
    # any dungeon not used yet (60s) goes at the end of the full route
    if with_dungeons:
        for d in dlist:
            if d["name"] not in used_dungeons and d["name"] not in FREE_DUNGEONS[faction]:
                seq.append(dict(kind="dungeon", lo=d["lo"], hi=d["hi"], name=d["name"], body=d["body"]))
    return seq


G_QD = "Peon Journey - 1-60 Questing and Dungeons"
G_Q = "Peon Journey - 1-60 Questing (Skip Dungeons)"
G_D = "Peon Journey - Dungeon Quests Only"
WEIGHT = {G_QD: 100, G_Q: 90, G_D: 80}


def bracket(lo):
    b = max(10, min(50, (lo // 10) * 10))
    return f"Levels {b:02d}-{59 if b < 50 else 60}" if b == 50 else f"Levels {b:02d}-{b + 9}"


def write_sequence(seq, faction, group, out_name):
    tag = "A" if faction == "Alliance" else "H"
    names = []
    for item in seq:
        lbl = f"{item['lo']}-{item['hi']} {item['name']}"
        base = lbl
        i = 2
        while lbl in names:
            lbl = f"{base} ({i})"
            i += 1
        names.append(lbl)
    chunks = []
    for i, item in enumerate(seq):
        header = ["#forever", "#version 1", f"<< {faction}", f"#group {group}", f"#groupweight {WEIGHT[group]}",
                  f"#subgroup {bracket(item['lo'])}", f"#name {names[i]}", f"#displayname {names[i]}"]
        if i + 1 < len(seq):
            header.append(f"#next {names[i + 1]}")
        chunks.append(guide(header, item["body"]))
    (OUT / out_name).write_text("\n".join(chunks))
    return names


report = []
meta = {}
for faction in ("Alliance", "Horde"):
    tag = "A" if faction == "Alliance" else "H"
    full = build_variant(faction, True, report)
    quest = build_variant(faction, False, report)
    dun = [dict(kind="dungeon", lo=v["lo"], hi=v["hi"], name=v["name"], body=v["body"])
           for (n, fac), v in sorted(DUN.items(), key=lambda kv: (kv[1]["lo"], kv[1]["hi"])) if fac == faction]
    g_full, g_q, g_d = G_QD, G_Q, G_D
    meta[faction] = {
        "full": [dict(lo=s["lo"], hi=s["hi"], kind=s["kind"], name=n, group=g_full) for s, n in zip(full, write_sequence(full, faction, g_full, f"R_Full_{tag}.lua"))],
        "questing": [dict(lo=s["lo"], hi=s["hi"], kind=s["kind"], name=n, group=g_q) for s, n in zip(quest, write_sequence(quest, faction, g_q, f"R_Questing_{tag}.lua"))],
        "dungeons": [dict(lo=s["lo"], hi=s["hi"], kind=s["kind"], name=n, group=g_d) for s, n in zip(dun, write_sequence(dun, faction, g_d, f"R_Dungeons_{tag}.lua"))],
    }
(OUT / "route_meta.json").write_text(json.dumps(meta, indent=1))
REPORT.write_text("\n".join(report) + "\n")
print("\n".join(report))
