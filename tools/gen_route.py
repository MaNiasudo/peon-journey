"""Peon Journey 21-60 routes: Speed (with Dungeons), Speed (no Dungeons), Full Journey, plus Dungeon Quests Only.

Usage: python -I gen_route.py <data_forever.json> <dungeons_config.json> <free_guides_dir> <out_dir> <report.txt>

- Full Journey: every zone once, in continent blocks and level order, every dungeon (every wing) at its level,
  quests at a sensible level. Levels in its guide names are the levels the content is made for.
- Speed routes: greedy, the next leg is the zone group with the best XP per minute at your level (continent hops
  and second visits cost extra, so legs stay in continent blocks). Every quest is scored by XP per minute
  (Forever quest XP from QuestieDB xpDB / the tools/timing.py estimate); weak quests, weak zones and (with dungeons)
  weak dungeons and pre-quest chains are skipped. A small search picks the quest threshold with the fewest
  estimated hours that still reaches 60 for both factions. The route ends at 60.

PJ_SPEED_DEBUG=<bar>[,d] prints one Speed run per faction for that quest bar (",d" = with dungeons) and writes nothing.
"""
import json
import os
import re
import statistics
import sys
from collections import Counter
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from qlib import DB  # noqa: E402
from router import Router, fmt  # noqa: E402
from emit import Emitter, guide, lua_safe  # noqa: E402
from common import leveling_quest, drop_exclusive, objective_order_fixes, ROOT  # noqa: E402
import gen_dungeons_lib as GD  # noqa: E402
import timing as T  # noqa: E402

DATA, CFG, FREE, OUT, REPORT = sys.argv[1], sys.argv[2], Path(sys.argv[3]), Path(sys.argv[4]), Path(sys.argv[5])
OUT.mkdir(parents=True, exist_ok=True)
if not os.environ.get("PJ_SPEED_DEBUG"):
    for old in OUT.glob("R_*.lua"):   # routes renamed over time: never ship a stale file
        old.unlink()
db = DB(DATA)
FIX = objective_order_fixes()
EM = Emitter(db)
DCFG = json.loads(Path(CFG).read_text())["dungeons"]
GD.init(db, FIX)
UNITS = GD.units(DCFG)

# ---------------------------------------------------------------- XP
XP, TRACED = {}, set()
for f in ("xpDB-classic.lua", "xpDB-traces.lua"):
    for m in re.finditer(r"\[(\d+)\]\s*=\s*\{(\d+),\s*(\d+)\}", (ROOT / "qdb" / f).read_text()):
        XP[int(m.group(1))] = (int(m.group(2)), int(m.group(3)))
        if "traces" in f:
            TRACED.add(int(m.group(1)))
# Forever dungeon quests pay far more than Classic ("The Defias Brotherhood" final step: 2,600 Classic, 6,175 in
# Forever after the October cut, data/research/leveling_routes.json). xpDB only has Forever values for traced
# quests, so an untraced dungeon quest gets its Classic XP times this.
DUNGEON_XP = 6175 / 2600
NEED = [0, 400, 900, 1400, 2100, 2800, 3600, 4500, 5400, 6500, 7600, 8800, 10100, 11400, 12900, 14400, 16000, 17700,
        19400, 21300, 23200, 25200, 27300, 29400, 31700, 34000, 36400, 38900, 41400, 44300, 47400, 50800, 54500,
        58600, 62800, 67100, 71600, 76100, 80800, 85700, 90700, 95800, 101000, 106300, 111800, 117500, 123200,
        129000, 135000, 141100, 147300, 153600, 160000, 166500, 173000, 179600, 186300, 193100, 200000, 207000]
KILL_FACTOR = 1.6   # questing XP = quest XP + mob kills on the way (classic rule of thumb ~30% from kills)


def quest_xp(q, level):
    lv, xp = XP.get(q, (db.g(db.Q.get(q), 5, level) or level, 0))
    if not xp:
        return 0
    if q in DUNGEON_ANY and q not in TRACED:
        xp *= DUNGEON_XP
    diff = int(level) - lv
    mult = 1.0 if diff <= 5 else {6: 0.8, 7: 0.6, 8: 0.4, 9: 0.2}.get(diff, 0.1)
    return xp * mult


class Player:
    def __init__(self, level, xp=0.0):
        self.level, self.xp = level, xp

    def add(self, amount):
        self.xp += amount
        while self.level < 60 and self.xp >= NEED[self.level]:
            self.xp -= NEED[self.level]
            self.level += 1

    @property
    def f(self):
        return self.level + (self.xp / NEED[self.level] if self.level < 60 else 0)


# ---------------------------------------------------------------- quest facts
def elite_quest(q):
    for o in db.objectives(q):
        if o["kind"] in ("mob", "killcredit") and isinstance(o["id"], int):
            if db.g(db.N.get(o["id"]), 6, 0) in (1, 2):
                return True
    return False


DUNGEON_AREAS = set()
for d in DCFG:
    DUNGEON_AREAS |= set(d["areas"])
# every dungeon quest of every dungeon: only the dungeon guides do these, never a zone leg
ALL_CORE = {"Alliance": set(), "Horde": set()}
for u in UNITS:
    for fac in ALL_CORE:
        if not u.get("faction") or u["faction"] == fac:
            ALL_CORE[fac] |= GD.collect(u, fac)


DUNGEON_ANY = ALL_CORE["Alliance"] | ALL_CORE["Horde"]


def dungeon_quest(q):
    return db.g(db.Q[q], 17) in DUNGEON_AREAS


UI = {"ASHENVALE": 1440, "WETLANDS": 1437, "REDRIDGE_MOUNTAINS": 1433, "DUSKWOOD": 1431, "HILLSBRAD_FOOTHILLS": 1424,
      "ALTERAC_MOUNTAINS": 1416, "STONETALON_MOUNTAINS": 1442, "ARATHI_HIGHLANDS": 1417, "THOUSAND_NEEDLES": 1441,
      "DESOLACE": 1443, "STRANGLETHORN_VALE": 1434, "DUSTWALLOW_MARSH": 1445, "RIVERGLADES": 2548, "SHEN_DRALAS": 2652,
      "SWAMP_OF_SORROWS": 1435, "BADLANDS": 1418, "TANARIS": 1446, "FERALAS": 1444, "THE_HINTERLANDS": 1425,
      "AZSHARA": 1447, "UN_GORO_CRATER": 1449, "SEARING_GORGE": 1427, "BLASTED_LANDS": 1419, "BURNING_STEPPES": 1428,
      "FELWOOD": 1448, "WINTERSPRING": 1452, "MOUNT_HYJAL": 2482, "WESTERN_PLAGUELANDS": 1422,
      "EASTERN_PLAGUELANDS": 1423, "SILITHUS": 1451, "THE_BARRENS": 1413}
_POOL = {}


def zone_pool(keys, faction):
    pool = set()
    for k in keys:
        if (k, faction) not in _POOL:
            z = db.Z[k]
            p = {q for q, r in db.Q.items() if db.g(r, 17) == z and leveling_quest(db, q, faction)}
            names = Counter(db.qname(q) for q in p)
            _POOL[(k, faction)] = {q for q in p if names[db.qname(q)] < 4 and not dungeon_quest(q)
                                   and not elite_quest(q) and q not in ALL_CORE[faction]}
        pool |= _POOL[(k, faction)]
    return pool


_QI = {}


def qinfo(q, faction):
    if (q, faction) not in _QI:
        _QI[(q, faction)] = Router(db, faction, fixes=FIX).quest_info(q, None)
    return _QI[(q, faction)]


def quest_min(q, faction, level):
    return T.quest_minutes(qinfo(q, faction), level)


def value(q, faction, level):
    """XP per minute of one quest on its own"""
    return quest_xp(q, level) / max(1.0, quest_min(q, faction, level))


BASE = {}


def base_rate(level):
    """median XP per minute of quests near this level: the yardstick the Speed thresholds are relative to"""
    level = max(1, min(60, int(level)))
    if not BASE:
        allq = {}
        for fac in ("Alliance", "Horde"):
            for k in UI:
                for q in zone_pool([k], fac):
                    allq[q] = fac
        for lv in range(10, 61):
            vals = [value(q, fac, lv) for q, fac in allq.items()
                    if abs((db.g(db.Q[q], 5, 0) or 0) - lv) <= 2 and quest_xp(q, lv) > 0]
            BASE[lv] = statistics.median(vals) if vals else None
        known = sorted(k for k, v in BASE.items() if v)
        for lv in range(1, 61):
            if not BASE.get(lv):
                BASE[lv] = BASE[min(known, key=lambda k: abs(k - lv))]
    return BASE[level]


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


def chain_of(q, pool, done, seen=None):
    """not-yet-done prerequisites of q inside the pool"""
    seen = set() if seen is None else seen
    g, s = db.prereqs(q)
    for p in list(g) + [x for x in s if x in pool][:1]:
        if p in pool and p not in done and p not in seen:
            seen.add(p)
            chain_of(p, pool, done, seen)
    return seen


def speed_filter(cands, pool, done, faction, level, thr):
    """keep quests worth their time; keep a weak prerequisite only when its whole chain still pays"""
    if thr is None:
        return cands
    bar = thr * base_rate(level)
    keep = {q for q in cands if value(q, faction, level) >= bar}
    for q in sorted(keep, key=lambda x: -(db.g(db.Q[x], 5, 0) or 0)):
        ch = chain_of(q, pool, done) - keep
        if not ch:
            continue
        xp = quest_xp(q, level) + sum(quest_xp(p, level) for p in ch)
        mins = quest_min(q, faction, level) + sum(quest_min(p, faction, level) for p in ch)
        if ch <= cands and xp / max(1.0, mins) >= bar:
            keep |= ch
    return keep


# ---------------------------------------------------------------- plans
GATE = {"RIVERGLADES": {"Alliance": 36, "Horde": 38}, "MOUNT_HYJAL": {"Alliance": 56, "Horde": 56},
        "SHEN_DRALAS": {"Alliance": 37, "Horde": 37}}


def L(label, zones, to):
    return (label, zones, to)


# Full Journey: every zone once, continent blocks, level order (to = the level the leg is made for)
FULL_PLAN = {
    "Alliance": [
        L("Ashenvale/Stonetalon", ["ASHENVALE", "STONETALON_MOUNTAINS"], 24),
        L("Duskwood/Redridge", ["DUSKWOOD", "REDRIDGE_MOUNTAINS"], 27),
        L("Wetlands", ["WETLANDS"], 30),
        L("Hillsbrad/Alterac", ["HILLSBRAD_FOOTHILLS", "ALTERAC_MOUNTAINS"], 32),
        L("Arathi Highlands", ["ARATHI_HIGHLANDS"], 34),
        L("Thousand Needles", ["THOUSAND_NEEDLES"], 35),
        L("Desolace", ["DESOLACE"], 37),
        L("Shen'dralas", ["SHEN_DRALAS"], 39),
        L("Dustwallow Marsh", ["DUSTWALLOW_MARSH"], 40),
        L("Stranglethorn Vale", ["STRANGLETHORN_VALE"], 42),
        L("Riverglades", ["RIVERGLADES"], 45),
        L("Swamp of Sorrows/Badlands", ["SWAMP_OF_SORROWS", "BADLANDS"], 46),
        L("The Hinterlands", ["THE_HINTERLANDS"], 47),
        L("Searing Gorge", ["SEARING_GORGE"], 48),
        L("Tanaris", ["TANARIS"], 49),
        L("Feralas", ["FERALAS"], 50),
        L("Un'Goro Crater", ["UN_GORO_CRATER"], 52),
        L("Azshara", ["AZSHARA"], 53),
        L("Felwood", ["FELWOOD"], 54),
        L("Winterspring", ["WINTERSPRING"], 55),
        L("Blasted Lands/Burning Steppes", ["BLASTED_LANDS", "BURNING_STEPPES"], 56),
        L("Western/Eastern Plaguelands", ["WESTERN_PLAGUELANDS", "EASTERN_PLAGUELANDS"], 58),
        L("Silithus", ["SILITHUS"], 59),
        L("Mount Hyjal", ["MOUNT_HYJAL"], 60),
    ],
    "Horde": [
        L("Stonetalon/Barrens", ["STONETALON_MOUNTAINS", "THE_BARRENS"], 24),
        L("Ashenvale", ["ASHENVALE"], 27),
        L("Thousand Needles", ["THOUSAND_NEEDLES"], 30),
        L("Hillsbrad/Alterac", ["HILLSBRAD_FOOTHILLS", "ALTERAC_MOUNTAINS"], 32),
        L("Arathi Highlands", ["ARATHI_HIGHLANDS"], 34),
        L("Stranglethorn Vale", ["STRANGLETHORN_VALE"], 37),
        L("Desolace", ["DESOLACE"], 38),
        L("Shen'dralas", ["SHEN_DRALAS"], 40),
        L("Dustwallow Marsh", ["DUSTWALLOW_MARSH"], 41),
        L("Riverglades", ["RIVERGLADES"], 44),
        L("Swamp of Sorrows/Badlands", ["SWAMP_OF_SORROWS", "BADLANDS"], 45),
        L("The Hinterlands", ["THE_HINTERLANDS"], 47),
        L("Searing Gorge", ["SEARING_GORGE"], 48),
        L("Tanaris", ["TANARIS"], 49),
        L("Feralas", ["FERALAS"], 50),
        L("Un'Goro Crater", ["UN_GORO_CRATER"], 52),
        L("Azshara", ["AZSHARA"], 53),
        L("Felwood", ["FELWOOD"], 54),
        L("Winterspring", ["WINTERSPRING"], 55),
        L("Blasted Lands/Burning Steppes", ["BLASTED_LANDS", "BURNING_STEPPES"], 56),
        L("Western/Eastern Plaguelands", ["WESTERN_PLAGUELANDS", "EASTERN_PLAGUELANDS"], 58),
        L("Silithus", ["SILITHUS"], 59),
        L("Mount Hyjal", ["MOUNT_HYJAL"], 60),
    ],
}
START = {"Alliance": 21, "Horde": 22}
FREE_DUNGEONS = {"Alliance": {"The Hall of Thanes", "Ruins of Lordaeron", "The Deadmines"},
                 "Horde": {"Ragefire Chasm", "Ruins of Lordaeron", "Wailing Caverns"}}
# ConquestCapped's skip advice for fast Forever leveling (Speed with Dungeons only)
SPEED_SKIP = {"Alliance": {"Ragefire Chasm", "Shadowfang Keep", "Razorfen Kraul", "Razorfen Downs", "Scarlet Monastery"},
              "Horde": {"The Hall of Thanes", "Shadowfang Keep"}}

# how to get to each leg
TRAVEL = {
    "Alliance": {
        "Ashenvale/Stonetalon": "The starter route ends in Darkshore: ride south into Ashenvale (Astranaar).",
        "Duskwood/Redridge": "Take the boat Auberdine -> Stormwind Harbor (new in Forever), then fly to Darkshire.",
        "Wetlands": "Fly to Menethil Harbor.",
        "Hillsbrad/Alterac": "Boat Menethil Harbor -> Southshore (the new Menethil, Southshore, Auberdine loop).",
        "Arathi Highlands": "Ride east from Southshore over Thoradin's Wall to Refuge Pointe.",
        "Thousand Needles": "Boat Southshore -> Auberdine, fly to Thalanaar (east Feralas) and ride east into Thousand Needles.",
        "Desolace": "Fly to Nijel's Point.",
        "Shen'dralas": "Ride south out of Desolace through the Valley of Bones (nearest flight path: Nijel's Point).",
        "Dustwallow Marsh": "Fly to Theramore.",
        "Stranglethorn Vale": "In Kalimdor? Boat Theramore -> Menethil Harbor first. Then fly to Rebel Camp or Booty Bay.",
        "Riverglades": "Fly to Lakeshire, take the north road into the Bristle Hills, then south to Farholde Keep "
                       "(get its flight path).",
        "Swamp of Sorrows/Badlands": "Ride out of the Riverglades into the Swamp of Sorrows or the Badlands.",
        "The Hinterlands": "Fly to Aerie Peak.",
        "Searing Gorge": "Fly to Thorium Point.",
        "Tanaris": "From Powderfuse Port (Riverglades) take the goblin boat to Steamwheedle Port, then ride to "
                   "Gadgetzan. From Kalimdor: fly to Gadgetzan.",
        "Feralas": "Fly to Feathermoon Stronghold (or Thalanaar).",
        "Un'Goro Crater": "Fly to Marshal's Refuge.",
        "Azshara": "Fly to Talrendis Point.",
        "Felwood": "In the Eastern Kingdoms? Boat Stormwind Harbor -> Auberdine first. Then fly to Talonbranch Glade.",
        "Winterspring": "Fly to Everlook.",
        "Blasted Lands/Burning Steppes": "In Kalimdor? Boat Auberdine -> Stormwind Harbor first. Then fly to "
                                         "Nethergarde Keep or Morgan's Vigil.",
        "Western/Eastern Plaguelands": "Fly to Chillwind Camp; later Light's Hope Chapel.",
        "Silithus": "Fly to Cenarion Hold.",
        "Mount Hyjal": "From Everlook take the flight to Tainted Foothills (do the Hyjal intro first if the flight is missing).",
    },
    "Horde": {
        "Stonetalon/Barrens": "The starter route ends in the Barrens/Stonetalon: fly to Sun Rock Retreat.",
        "Ashenvale": "Fly to Splintertree Post.",
        "Thousand Needles": "Fly to Freewind Post.",
        "Hillsbrad/Alterac": "Zeppelin Orgrimmar -> Undercity, then fly to Tarren Mill.",
        "Arathi Highlands": "Fly to Hammerfall.",
        "Stranglethorn Vale": "Fly to Grom'gol (or the zeppelin Orgrimmar -> Grom'gol).",
        "Desolace": "In the Eastern Kingdoms? Zeppelin Grom'gol -> Orgrimmar first. Then fly to Shadowprey Village.",
        "Shen'dralas": "Ride south out of Desolace through the Valley of Bones.",
        "Dustwallow Marsh": "Fly to Brackenwall Village.",
        "Riverglades": "Fly to Gadgetzan, ride to Steamwheedle Port, take the goblin boat to Powderfuse Port and ride to "
                       "Rog'mar (Powderfuse has no working flight master). Never through Redridge.",
        "Swamp of Sorrows/Badlands": "Ride out of the Riverglades to Stonard (Swamp of Sorrows) or Kargath (Badlands).",
        "The Hinterlands": "Fly to Revantusk Village.",
        "Searing Gorge": "Fly to Thorium Point.",
        "Tanaris": "From Powderfuse Port take the goblin boat to Steamwheedle Port and ride to Gadgetzan. "
                   "From Kalimdor: fly to Gadgetzan.",
        "Feralas": "Fly to Camp Mojache.",
        "Un'Goro Crater": "Fly to Marshal's Refuge.",
        "Azshara": "Fly to Valormok.",
        "Felwood": "In the Eastern Kingdoms? Zeppelin to Orgrimmar first. Then fly to Bloodvenom Post.",
        "Winterspring": "Fly to Everlook.",
        "Blasted Lands/Burning Steppes": "In Kalimdor? Zeppelin to Grom'gol or the Undercity first. Then fly to "
                                         "Stonard or Flame Crest.",
        "Western/Eastern Plaguelands": "Fly to the Bulwark (Tirisfal); later Light's Hope Chapel.",
        "Silithus": "Fly to Cenarion Hold.",
        "Mount Hyjal": "From Everlook take the flight to Tainted Foothills (do the Hyjal intro first if the flight is missing).",
    },
}
HUBS = {}


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
_FREE = {}


def free_done(faction):
    if faction not in _FREE:
        done = set()
        for f in FREE.rglob("*.lua"):
            for b in re.findall(r"RegisterGuide\(\[\[(.*?)\]\]\)", f.read_text(errors="replace"), re.S):
                fac = re.search(r"^\s*<<\s*(Alliance|Horde)", b, re.M)
                if fac and fac.group(1) != faction:
                    continue
                done |= {int(x) for x in re.findall(r"\.turnin (\d+)", b)}
        _FREE[faction] = done
    return set(_FREE[faction])


# ---------------------------------------------------------------- one zone leg
def plan_leg(zones, faction, player, done, cap, low, thr, min_quests=0):
    """route one leg without committing it"""
    lvl = player.level
    pool = zone_pool(zones, faction) - done
    cands = {q for q in pool
             if (db.g(db.Q[q], 5, 0) or 0) <= cap + 1 and (db.g(db.Q[q], 4, 0) or 0) <= cap - 1
             and (db.g(db.Q[q], 5, 0) or 0) >= low}
    cands = speed_filter(cands, pool, done, faction, lvl, thr)
    cands = available_closure(cands, done, faction)
    cands = set(drop_exclusive(db, sorted(cands)))
    if len(cands) < max(1, min_quests):
        return None
    ui = UI.get(zones[0])
    fm = flight_master(ui, faction)
    r = Router(db, faction, fixes=FIX)
    steps, info, left = r.route(sorted(cands), ui, lvl, cap, external_done=done, start_pos=fm[2] if fm else None)
    placed = {q for q in info if q not in left}
    sim = Player(player.level, player.xp)
    for st in steps:
        if st["type"] == "turnin":
            for q in st["quests"]:
                sim.add(quest_xp(q, sim.level) * KILL_FACTOR)
    return dict(steps=steps, info=info, placed=placed, ui=ui, fm=fm, end=sim.f,
                minutes=T.steps_minutes(steps, lvl, start=fm[2] if fm else None),
                xp=sum(quest_xp(q, lvl) * KILL_FACTOR for q in placed))


def commit_leg(leg, label, faction, player, done, fp_known, lo_lbl, hi_lbl, prev_cont, tagline=None):
    for st in leg["steps"]:
        if st["type"] == "turnin":
            for q in st["quests"]:
                player.add(quest_xp(q, player.level) * KILL_FACTOR)
    done |= leg["placed"]
    ui, fm = leg["ui"], leg["fm"]
    travel = TRAVEL[faction].get(label) or "Fly to the nearest flight path."
    body = []
    if tagline:
        body += ["step", f"    +|cRXP_WARN_{lua_safe(tagline)}|r"]
    body += ["step", f"    .zone {ui} >>Travel to {lua_safe(label.split('/')[0])}",
             f"    *How: {lua_safe(travel)}",
             f"    *Level for this part: {lo_lbl}-{hi_lbl}. {len(leg['placed'])} quests, roughly {T.fmt_min(leg['minutes'])}."]
    if fm and (ui, faction) not in fp_known:
        fp_known.add((ui, faction))
        # completewith next: never blocks if you already know this flight path
        body += ["step", "    #completewith next",
                 f"    .goto {fm[2][0]},{fmt(round(fm[2][1], 2))},{fmt(round(fm[2][2], 2))},15,0",
                 f"    >>Talk to |cRXP_FRIENDLY_{lua_safe(fm[1])}|r if you don't have this flight path yet",
                 f"    .fp {lua_safe(fm[1])} >>Get the flight path", f"    .target {lua_safe(fm[1])}"]
    body += EM.render(leg["steps"], leg["info"])
    cont = T.continent(ui)
    hop = 0.0 if prev_cont is None else (T.CONTINENT_HOP_MIN if cont != prev_cont else T.ZONE_HOP_MIN)
    return dict(kind="zone", lo=lo_lbl, hi=hi_lbl, name=label, body=body, quests=len(leg["placed"]),
                minutes=leg["minutes"] + hop, cont=cont, xp=leg["xp"])


# ---------------------------------------------------------------- dungeons inside a route
def unit_xp(res, level):
    xp = sum(quest_xp(q, level) for q in res["handed"]) + sum(quest_xp(q, level) for q in res["pre"])
    run = 0.30 * NEED[min(59, max(level, res["lo"]))] * (res["unit"]["run"] / 60.0) * res["runs"]
    return xp + run


def build_unit(u, faction, done, pre_ok=None, allow_empty=False, wings_done=None):
    res = GD.build_unit(u, faction, done=done, pre_ok=pre_ok, allow_empty=allow_empty, wings_done=wings_done)
    if res:
        res["unit"] = u
    return res


def dungeon_items(res, lo, hi):
    out = []
    if res["pre_body"]:
        out.append(dict(kind="dungeonpre", lo=lo, hi=hi, name=res["name"] + " pre-quests", body=res["pre_body"],
                        quests=len(res["pre"]), minutes=res["pre_min"]))
    out.append(dict(kind="dungeon", lo=lo, hi=hi, name=res["name"], body=res["run_body"], quests=len(res["picked"]),
                    minutes=res["run_min"]))
    return out


def take_dungeon(res, player, done, seq, report, faction, tag, lo=None, hi=None):
    before = player.f
    player.add(unit_xp(res, player.level))
    done |= set(res["pre"]) | set(res["handed"])
    lo_l = int(before) if lo is None else lo
    hi_l = max(lo_l, int(player.f)) if hi is None else hi
    seq += dungeon_items(res, lo_l, hi_l)
    report.append(f"  {faction[0]} {tag} DUNGEON {res['name']:<30} {before:5.1f} -> {player.f:5.1f}  pre {len(res['pre']):2} "
                  f"quests {len(res['handed']):2}  ~{(res['pre_min'] + res['run_min']) / 60:.1f} h")


# ---------------------------------------------------------------- Full Journey
def empty_ok(u, faction):
    """a wing with no quests still gets a run guide when its dungeon has quests for this faction"""
    return bool(u.get("wing")) and bool(GD.collect(u, faction))


def build_full(faction, report):
    player = Player(START[faction])
    done = free_done(faction)
    seq, fp_known, used = [], set(), set()
    units = [u for u in UNITS if u["base"] not in FREE_DUNGEONS[faction] and (not u.get("faction") or u["faction"] == faction)]
    nominal = START[faction]
    prev_cont = None
    for label, zones, to in FULL_PLAN[faction]:
        # every dungeon / wing the content level has reached; the ones on the continent you are on go first,
        # then the ones on the next leg's continent, so a gap costs at most one boat
        due = [u for u in units if u["name"] not in used and u["lo"] + 1 <= nominal]
        here = prev_cont or T.continent(UI[zones[0]])
        due.sort(key=lambda u: (T.continent(u["entrance"][0]) != here, u["lo"], u["hi"],
                                u["wing"]["idx"] if u.get("wing") else 0))
        for u in due:
            used.add(u["name"])
            res = build_unit(u, faction, done, allow_empty=empty_ok(u, faction))
            if res:
                take_dungeon(res, player, done, seq, report, faction, "J", lo=u["lo"], hi=u["hi"])
                prev_cont = T.continent(u["entrance"][0])
        cap = max(to, player.level) + 3
        low = min(player.level, nominal) - 12
        leg = plan_leg(zones, faction, player, done, cap, low, None)
        if not leg or len(leg["placed"]) < 6:
            report.append(f"  {faction[0]} J skip {label} (only {len(leg['placed']) if leg else 0} quests left)")
            nominal = to
            continue
        before = player.f
        item = commit_leg(leg, label, faction, player, done, fp_known, nominal, to, prev_cont)
        prev_cont = item["cont"]
        seq.append(item)
        report.append(f"  {faction[0]} J {label:<30} made for {nominal}-{to}  sim {before:5.1f} -> {player.f:5.1f}  "
                      f"quests {item['quests']:3}  ~{item['minutes'] / 60:.1f} h")
        nominal = to
    for u in units:
        if u["name"] not in used:
            res = build_unit(u, faction, done, allow_empty=empty_ok(u, faction))
            if res:
                take_dungeon(res, player, done, seq, report, faction, "J", lo=u["lo"], hi=u["hi"])
    return seq, player


# ---------------------------------------------------------------- Speed
def speed_pre_ok(faction, player, thr):
    def ok(core, chain):
        lvl = player.level
        xp = quest_xp(core, lvl) + sum(quest_xp(p, lvl) for p in chain)
        mins = sum(quest_min(p, faction, lvl) for p in chain) + 3.0
        return xp / mins >= thr * base_rate(lvl)
    return ok


def grind_rate(level):
    """XP per minute grinding same-level mobs (Forever kept same-level kill XP): ~1 kill a minute with eating"""
    return (5 * level + 45) * 1.0


def grind_body(lo, target, mins, where):
    body = ["step", f"    +|cRXP_WARN_Grind to {target}.|r Not enough quests worth the time are left at your level. Kill mobs "
            f"at your level around {lua_safe(where)} (or run a dungeon with a group), roughly {T.fmt_min(mins)}. Rested XP "
            "doubles kill XP: log out in an inn. Click to skip.",
            "step", f"    .xp {target} >>Grind to level {target}"]
    return dict(kind="grind", lo=lo, hi=target, name=f"Grind to {target}", body=body, quests=0, minutes=mins,
                cont=None, xp=0)


def grind_level(player):
    """grind to the next level: minutes spent"""
    need = NEED[player.level] - player.xp
    mins = need / grind_rate(player.level)
    player.add(need)
    return mins


# Speed: the research route in continent blocks, one visit per zone; a leg is dropped when it has too few quests
# worth the time. to = the level the leg is made for (quests up to it are fair game even if the sim lags behind).
SPEED_PLAN = {
    "Alliance": [
        L("Ashenvale/Stonetalon", ["ASHENVALE", "STONETALON_MOUNTAINS"], 24),
        L("Duskwood/Redridge", ["DUSKWOOD", "REDRIDGE_MOUNTAINS"], 27),
        L("Wetlands", ["WETLANDS"], 30),
        L("Hillsbrad/Alterac", ["HILLSBRAD_FOOTHILLS", "ALTERAC_MOUNTAINS"], 32),
        L("Arathi Highlands", ["ARATHI_HIGHLANDS"], 34),
        L("Stranglethorn Vale", ["STRANGLETHORN_VALE"], 37),
        L("Riverglades", ["RIVERGLADES"], 43),
        L("Swamp of Sorrows/Badlands", ["SWAMP_OF_SORROWS", "BADLANDS"], 44),
        L("Tanaris", ["TANARIS"], 46),
        L("Feralas", ["FERALAS"], 48),
        L("Un'Goro Crater", ["UN_GORO_CRATER"], 51),
        L("Azshara", ["AZSHARA"], 52),
        L("Blasted Lands/Burning Steppes", ["BLASTED_LANDS", "BURNING_STEPPES"], 54),
        L("Western/Eastern Plaguelands", ["WESTERN_PLAGUELANDS", "EASTERN_PLAGUELANDS"], 56),
        L("Felwood", ["FELWOOD"], 57),
        L("Winterspring", ["WINTERSPRING"], 58),
        L("Mount Hyjal", ["MOUNT_HYJAL"], 60),
    ],
    "Horde": [
        L("Stonetalon/Barrens", ["STONETALON_MOUNTAINS", "THE_BARRENS"], 24),
        L("Ashenvale", ["ASHENVALE"], 27),
        L("Thousand Needles", ["THOUSAND_NEEDLES"], 30),
        L("Hillsbrad/Alterac", ["HILLSBRAD_FOOTHILLS", "ALTERAC_MOUNTAINS"], 32),
        L("Arathi Highlands", ["ARATHI_HIGHLANDS"], 34),
        L("Stranglethorn Vale", ["STRANGLETHORN_VALE"], 37),
        L("Desolace", ["DESOLACE"], 39),
        L("Dustwallow Marsh", ["DUSTWALLOW_MARSH"], 40),
        L("Riverglades", ["RIVERGLADES"], 44),
        L("Tanaris", ["TANARIS"], 46),
        L("Feralas", ["FERALAS"], 48),
        L("Un'Goro Crater", ["UN_GORO_CRATER"], 51),
        L("Azshara", ["AZSHARA"], 52),
        L("Blasted Lands/Burning Steppes", ["BLASTED_LANDS", "BURNING_STEPPES"], 54),
        L("Western/Eastern Plaguelands", ["WESTERN_PLAGUELANDS", "EASTERN_PLAGUELANDS"], 56),
        L("Felwood", ["FELWOOD"], 57),
        L("Winterspring", ["WINTERSPRING"], 58),
        L("Mount Hyjal", ["MOUNT_HYJAL"], 60),
    ],
}
ZONES_OF = {fac: {lbl: zs for lbl, zs, _ in plan} for fac, plan in FULL_PLAN.items()}
SPEED_UP, SPEED_DOWN = 4, 8   # quest level window around your level (green quests still pay 60-80%)
MIN_LEG = 12                  # fewer good quests than this: not worth the trip


def wide_leg(zones, faction, player, done, thr, min_q):
    """one visit that finishes the zone: plan, then widen the level window to where the leg ends"""
    lvl = player.level
    leg = plan_leg(zones, faction, player, done, lvl + SPEED_UP, lvl - SPEED_DOWN, thr, min_quests=min_q)
    if leg and leg["end"] >= lvl + 1:
        wider = plan_leg(zones, faction, player, done, int(leg["end"]) + SPEED_UP - 1, lvl - SPEED_DOWN, thr,
                         min_quests=min_q)
        if wider and wider["xp"] / max(1.0, wider["minutes"]) >= 0.9 * leg["xp"] / max(1.0, leg["minutes"]):
            leg = wider
    return leg


def build_speed(faction, with_dungeons, thr, report, dun_thr=0.8, write=True):
    tag = "S" if with_dungeons else "Q"
    log = report if write else []
    player = Player(START[faction])
    done = free_done(faction)
    seq, fp_known, used, must, ran_units = [], set(), set(), set(), set()
    prev_cont, prev_label = "K", None
    units = [u for u in UNITS if u["base"] not in FREE_DUNGEONS[faction] and u["base"] not in SPEED_SKIP[faction]
             and (not u.get("faction") or u["faction"] == faction)]
    total = 0.0

    def dungeons_here(ref, limit=2):
        """run the dungeons in level range that beat ref (XP/min of the best other option)"""
        nonlocal total
        picked = 0
        for u in units:
            if picked >= limit or player.level >= 60:
                break
            forced = u["name"] in must
            if u["name"] in used or not (u["lo"] <= player.level <= u["hi"] - 1 or (forced and player.level >= u["lo"] - 2)):
                continue
            res = build_unit(u, faction, done, pre_ok=speed_pre_ok(faction, player, thr), wings_done=ran_units)
            if not res or not (res["handed"] or res["picked"]):
                continue
            mins = res["pre_min"] + res["run_min"]
            rate = unit_xp(res, player.level) / max(1.0, mins)
            if rate < dun_thr * ref and not forced:
                log.append(f"  {faction[0]} {tag} skip dungeon {u['name']} ({rate:.0f} xp/min vs zones {ref:.0f})")
                used.add(u["name"])
                continue
            used.add(u["name"])
            ran_units.add(u["name"])
            picked += 1
            take_dungeon(res, player, done, seq, log, faction, tag)
            total += mins
            if u.get("wings") and res["core"] != res["handed"]:   # quests kept for a later wing: that wing must follow
                must.update(w["name"] for w in u["wings"] if w["idx"] > u["wing"]["idx"])
        return picked

    def go(label, leg, note=""):
        nonlocal prev_cont, prev_label, total
        before = player.f
        item = commit_leg(leg, label, faction, player, done, fp_known, int(before), max(int(before), int(leg["end"])),
                          prev_cont)
        prev_cont, prev_label = item["cont"], label
        seq.append(item)
        total += item["minutes"]
        log.append(f"  {faction[0]} {tag} {label:<30} {before:5.1f} -> {player.f:5.1f}  quests {item['quests']:3}  "
                   f"~{item['minutes'] / 60:.1f} h  ({leg['xp'] / max(1.0, leg['minutes']):.0f} xp/min){note}")

    def grind(where):
        nonlocal total
        before = player.f
        mins = grind_level(player)
        if seq and seq[-1]["kind"] == "grind":
            g0 = seq.pop()
            seq.append(grind_body(g0["lo"], player.level, g0["minutes"] + mins, where))
        else:
            seq.append(grind_body(int(before), player.level, mins, where))
        total += mins
        log.append(f"  {faction[0]} {tag} GRIND {before:5.1f} -> {player.f:5.1f}  ~{mins / 60:.1f} h")

    def best_leg(labels, min_q):
        lvl = player.level
        best = None
        opts = []
        for label in labels:
            zones = ZONES_OF[faction][label]
            if lvl < GATE.get(zones[0], {}).get(faction, 0):
                continue
            pool = zone_pool(zones, faction) - done
            cands = {q for q in pool if (db.g(db.Q[q], 4, 0) or 0) <= lvl + SPEED_UP + 2
                     and (db.g(db.Q[q], 5, 0) or 0) >= lvl - SPEED_DOWN}
            if len(cands) >= min_q:
                opts.append((sum(value(q, faction, lvl) for q in cands), label))
        for _, label in sorted(opts, reverse=True)[:4]:
            zones = ZONES_OF[faction][label]
            leg = wide_leg(zones, faction, player, done, thr, min_q)
            if not leg or len(leg["placed"]) < min_q:
                continue
            hop = T.CONTINENT_HOP_MIN if T.continent(UI[zones[0]]) != prev_cont else T.ZONE_HOP_MIN
            score = leg["xp"] / (leg["minutes"] + hop)
            if score >= grind_rate(lvl) and (best is None or score > best[0]):
                best = (score, label, leg)
        return best

    seen = Counter()
    pending = list(SPEED_PLAN[faction])   # in route order
    frm = {lb: (START[faction] if i == 0 else SPEED_PLAN[faction][i - 1][2]) for i, (lb, _, _) in enumerate(pending)}
    guard = 0
    while player.level < 60 and guard < 300:
        guard += 1
        lvl = player.level
        # the earliest of the next 3 plan legs that is worth it now keeps the route order
        choice = None
        for label, zones, to in list(pending[:3]):
            if lvl < GATE.get(zones[0], {}).get(faction, 0):
                continue
            cap = min(max(lvl + SPEED_UP, to + 1), lvl + SPEED_UP + 2)
            low = min(lvl, frm[label]) - SPEED_DOWN
            leg = plan_leg(zones, faction, player, done, cap, low, thr, min_quests=MIN_LEG)
            rate = leg["xp"] / max(1.0, leg["minutes"]) if leg else 0
            if leg and int(leg["end"]) + SPEED_UP - 1 > cap:   # finish the zone: the window follows your level
                wider = plan_leg(zones, faction, player, done, int(leg["end"]) + SPEED_UP - 1, low, thr, min_quests=MIN_LEG)
                wrate = wider["xp"] / max(1.0, wider["minutes"]) if wider else 0
                if wider and wrate >= 0.9 * rate:
                    leg, rate = wider, wrate
            if leg and len(leg["placed"]) >= MIN_LEG and rate >= grind_rate(lvl):
                choice = (rate, label, leg, "")
                break
            if lvl > to + 2:   # out-levelled and not worth it any more: drop it
                pending.remove((label, zones, to))
                log.append(f"  {faction[0]} {tag} skip {label} ({len(leg['placed']) if leg else 0} good quests left at {lvl})")
        if not choice:   # a gap: another zone (or a second visit) on this continent, else anywhere
            later = {x[0] for x in pending}
            free = [lb for lb in ZONES_OF[faction] if seen[lb] < 2 and lb not in later]
            best = best_leg([lb for lb in free if T.continent(UI[ZONES_OF[faction][lb][0]]) == prev_cont], 8) \
                or best_leg(free, 8)
            if best:
                choice = (best[0], best[1], best[2], "  [second visit]" if seen[best[1]] else "  [gap filler]")
        ref = choice[0] if choice else grind_rate(lvl)
        if with_dungeons and dungeons_here(ref):
            continue   # XP changed: look again
        if not choice:
            grind(prev_label.split("/")[0] if prev_label else "your zone")
            continue
        _, label, leg, note = choice
        pending = [x for x in pending if x[0] != label]
        seen[label] += 1
        go(label, leg, note)
    return seq, player, total


# ---------------------------------------------------------------- writing
G_SD = "Peon Journey - 1-60 Speed (with Dungeons)"
G_SQ = "Peon Journey - 1-60 Speed (no Dungeons)"
G_FJ = "Peon Journey - 1-60 Full Journey"
G_D = "Peon Journey - Dungeon Quests Only"
WEIGHT = {G_SD: 110, G_SQ: 105, G_FJ: 100, G_D: 80}


def bracket(lo):
    b = max(10, min(50, (lo // 10) * 10))
    return "Levels 50-60" if b == 50 else f"Levels {b:02d}-{b + 9}"


def write_sequence(seq, faction, group, out_name):
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


def rows(seq, names, group):
    return [dict(lo=s["lo"], hi=s["hi"], kind=s["kind"], name=n, group=group, quests=s.get("quests", 0),
                 minutes=round(s.get("minutes", 0))) for s, n in zip(seq, names)]


def stats(seq, player, minutes):
    return dict(hours=round(minutes / 60, 1), guides=len(seq), quests=sum(s.get("quests", 0) for s in seq),
                steps=sum(sum(1 for ln in s["body"] if ln == "step") for s in seq), level=round(player.f, 1),
                zones=sum(1 for s in seq if s["kind"] == "zone"), dungeons=sum(1 for s in seq if s["kind"] == "dungeon"))


if os.environ.get("PJ_SPEED_DEBUG"):   # PJ_SPEED_DEBUG=<bar>[,d]: print one Speed run per faction and stop
    bar, _, dflag = os.environ["PJ_SPEED_DEBUG"].partition(",")
    for faction in ("Alliance", "Horde"):
        log = []
        _, pl, mins = build_speed(faction, dflag == "d", float(bar), log)
        print("\n".join(log))
        print(f"{faction}: level {pl.f:.1f}, ~{mins / 60:.1f} h")
    sys.exit(0)

report = []
# Speed threshold search: fewest estimated hours that still reaches 60 for both factions
GRID = [0.0, 0.3, 0.5, 0.7, 0.9]
best_thr = {}
for with_d in (False, True):
    scores = []
    for thr in GRID:
        hours, ok = 0.0, True
        for faction in ("Alliance", "Horde"):
            _, pl, mins = build_speed(faction, with_d, thr, [], write=False)
            ok = ok and pl.level >= 60
            hours += mins / 60
        scores.append((thr, ok, hours))
        report.append(f"  search {'with' if with_d else 'no'} dungeons, quest bar {thr:.1f} x median XP/min: "
                      f"reaches 60 {ok}, ~{hours / 2:.1f} h per faction")
    good = [s for s in scores if s[1]] or scores
    best_thr[with_d] = min(good, key=lambda s: s[2])[0]
report.append(f"  picked: no dungeons {best_thr[False]}, with dungeons {best_thr[True]}")

meta, summary = {}, []
dungeons_only = GD.build_all(db, DCFG, FIX)
for faction in ("Alliance", "Horde"):
    tag = "A" if faction == "Alliance" else "H"
    report.append(f"== {faction} Speed (with Dungeons)")
    sd, psd, msd = build_speed(faction, True, best_thr[True], report)
    report.append(f"== {faction} Speed (no Dungeons)")
    sq, psq, msq = build_speed(faction, False, best_thr[False], report)
    report.append(f"== {faction} Full Journey")
    fj, pfj = build_full(faction, report)
    mfj = sum(s.get("minutes", 0) for s in fj)
    dun = []
    for (n, fac), res in sorted(dungeons_only.items(), key=lambda kv: (kv[1]["lo"], kv[1]["hi"],
                                kv[1]["unit"]["wing"]["idx"] if kv[1]["unit"]["wing"] else 0)):
        if fac == faction:
            dun += dungeon_items(res, res["lo"], res["hi"])
    meta[faction] = {
        "speed": rows(sd, write_sequence(sd, faction, G_SD, f"R_Speed_{tag}.lua"), G_SD),
        "speedq": rows(sq, write_sequence(sq, faction, G_SQ, f"R_SpeedQ_{tag}.lua"), G_SQ),
        "full": rows(fj, write_sequence(fj, faction, G_FJ, f"R_Full_{tag}.lua"), G_FJ),
        "dungeons": rows(dun, write_sequence(dun, faction, G_D, f"R_Dungeons_{tag}.lua"), G_D),
        "stats": {"speed": stats(sd, psd, msd), "speedq": stats(sq, psq, msq), "full": stats(fj, pfj, mfj)},
    }
    for key, st in meta[faction]["stats"].items():
        summary.append(f"  {faction:8} {key:7} guides {st['guides']:3}  zones {st['zones']:2}  dungeons {st['dungeons']:2}  "
                       f"steps {st['steps']:5}  quests {st['quests']:4}  ~{st['hours']:5.1f} h  ends at {st['level']}")
report.append("== totals from 21 (Alliance) / 22 (Horde); hours are the tools/timing.py estimate, not measured")
report += summary
(OUT / "route_meta.json").write_text(json.dumps(meta, indent=1))
REPORT.write_text("\n".join(report) + "\n")
print("\n".join(report))
