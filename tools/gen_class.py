"""Peon Journey class-quest guides: one guide per worthwhile class chain, filtered by class, faction and race.

Usage: python -I gen_class.py <data_forever.json> <class_plan.json> <dungeons_config.json> <item_stats.json|-> <out_dir>
"""
import json
import re
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from qlib import DB  # noqa: E402
from router import Router, fmt  # noqa: E402
from emit import Emitter, guide, lua_safe, goto, A_MASK, H_MASK, RACE_TOKENS  # noqa: E402
from common import EVIDENCE, objective_order_fixes  # noqa: E402

DATA, PLAN, DCFG, STATS, OUT = sys.argv[1:6]
OUT = Path(OUT)
OUT.mkdir(parents=True, exist_ok=True)
db = DB(DATA)
FIX = objective_order_fixes()
plan = json.loads(Path(PLAN).read_text())
dungeons = json.loads(Path(DCFG).read_text())["dungeons"]
stats = json.loads(Path(STATS).read_text()).get("items", {}) if STATS != "-" and Path(STATS).exists() else {}
GROUP = "Peon Journey - Class Quests"
CL = {"Warrior": 1, "Paladin": 2, "Hunter": 4, "Rogue": 8, "Priest": 16, "Shaman": 64, "Mage": 128, "Warlock": 256,
      "Druid": 1024}
FMASK = {"Alliance": A_MASK, "Horde": H_MASK}
FACTION_RACES = {"Alliance": ["Human", "Dwarf", "NightElf", "Gnome", "Skyborne"],
                 "Horde": ["Orc", "Undead", "Tauren", "Troll", "Skyborne"]}
RACE_BIT = {"Human": 1, "Orc": 2, "Dwarf": 4, "NightElf": 8, "Undead": 16, "Tauren": 32, "Gnome": 64, "Troll": 128}
RACE_LABEL = {"NightElf": "Night Elf"}
ITEMS_BY_QUEST = {}
for iid, it in db.I.items():
    for q in db.lst(db.g(it, 6)):
        ITEMS_BY_QUEST.setdefault(q, []).append(iid)

AREA_DUNGEON = {}
for d in dungeons:
    for a in d["areas"]:
        AREA_DUNGEON[a] = d


def akeys(sp):
    if isinstance(sp, list):
        return [i + 1 for i, v in enumerate(sp) if v]
    if isinstance(sp, dict):
        return [int(k) for k, v in sp.items() if v]
    return []


def dungeon_of(o):
    ids = []
    if o["kind"] in ("mob", "killcredit") and isinstance(o["id"], int):
        ids = [("n", o["id"])]
    elif o["kind"] == "item" and isinstance(o["id"], int):
        it = db.I.get(o["id"])
        ids = [("n", n) for n in db.lst(db.g(it, 2))[:6]] + [("o", x) for x in db.lst(db.g(it, 3))[:6]]
    elif o["kind"] == "object" and isinstance(o["id"], int):
        ids = [("o", o["id"])]
    for k, i in ids:
        row = (db.N if k == "n" else db.O).get(i)
        for a in akeys(db.g(row, 7 if k == "n" else 4)):
            if a in AREA_DUNGEON:
                return AREA_DUNGEON[a]
    return None


class ClassRouter(Router):
    def quest_info(self, qid, prefer_ui):
        i = super().quest_info(qid, prefer_ui)
        for o in i["objs"]:
            d = dungeon_of(o)
            if d and d.get("entrance"):
                o["loc"] = tuple(d["entrance"])
                o["known"] = True
                o["dungeon"] = d["name"]
        return i


class ClassEmitter(Emitter):
    def obj(self, st, info):
        out = super().obj(st, info)
        ds = sorted({o.get("dungeon") for _, o in st["items"] if o.get("dungeon")})
        if ds:
            out.insert(2, f"    *|cRXP_WARN_Inside {lua_safe(', '.join(ds))}: bring a group.|r")
        return out


EM = ClassEmitter(db)


def race_names(mask, faction):
    full = FMASK[faction]
    part = mask & full
    if not mask or not part or part == full:
        return None
    return sorted(dict.fromkeys(n for b, n in RACE_TOKENS if part & b and b & full))


def fits(q, cls, faction, races):
    r = db.Q.get(q)
    if not r or (q >= 79000 and q not in EVIDENCE):
        return False
    c = db.g(r, 7, 0) or 0
    if c and not (c & CL[cls]):
        return False
    if not db.available_for(q, faction):
        return False
    rm = db.g(r, 6, 0) or 0
    if races and rm:
        rs = race_names(rm, faction)
        if rs and not set(rs) & set(races):
            return False
    return True


def chain_before(q, cls, faction, races, seen):
    g, s = db.prereqs(q)
    singles = [p for p in s if fits(p, cls, faction, races)]
    for p in [p for p in g if fits(p, cls, faction, races)] + singles[:1]:
        if p not in seen:
            seen.add(p)
            chain_before(p, cls, faction, races, seen)
    return seen


def chain_after(q, cls, faction, races):
    out, cur = [], q
    for _ in range(20):
        n = db.g(db.Q.get(cur), 22)
        if not n or not fits(n, cls, faction, races) or n in out:
            break
        out.append(n)
        cur = n
    return out


def reward_quests(entry, cls, faction, races, steps):
    """quests of this class that hand out the items named in the reward text"""
    names = [re.sub(r"^(choose|pick|either)\s+", "", n.strip(" ."), flags=re.I).strip(" .")
             for n in re.split(r",|\bor\b|;|:|\bplus\b|\band\b", re.sub(r"\(.*?\)", "", entry.get("reward") or ""), flags=re.I)]
    out = set()
    for n in names:
        for iid, it in db.I.items():
            if db.g(it, 1) != n:
                continue
            for q in db.lst(db.g(it, 6)):
                if fits(q, cls, faction, races) and ((db.g(db.Q[q], 7, 0) or 0) & CL[cls] or q in steps):
                    out.add(q)
    return out


def bracket(lo):
    if lo < 20:
        return "Levels 01-19"
    if lo >= 50:
        return "Levels 50-60"
    b = (lo // 10) * 10
    return f"Levels {b}-{b + 9}"


def short(s, n=42):
    s = re.sub(r"\s*\(.*?\)", "", s or "").strip()
    s = re.sub(r"^(Night Elf|Human|Dwarf|Gnome|Orc|Troll|Tauren|Undead|Skyborne|Horde|Alliance)( and \w+)?\s+", "", s)
    s = re.sub(r"\s+(side )?chain\b", "", s)
    s = s.split(";")[0].strip()
    return s if len(s) <= n else s[:n - 1].rstrip() + "."


def stat_lines(qs):
    lines = []
    seen = set()
    for q in sorted(qs):
        for iid in ITEMS_BY_QUEST.get(q, []):
            st = stats.get(str(iid))
            if not st or iid in seen:
                continue
            seen.add(iid)
            bits = [st.get("type") or ""]
            if st.get("dps"):
                bits.append(f"{st['dps']} DPS")
            if st.get("armor"):
                bits.append(f"{st['armor']} armor")
            bits += (st.get("stats") or [])[:5]
            v = st.get("verdict")
            tag = {"good": "|cff40ff40GOOD|r", "ok": "|cffffd200OK|r", "skip": "|cff9d9d9dSKIP|r"}.get(v, "")
            note = f" - {st['verdict_note']}" if st.get("verdict_note") else ""
            lines.append(f"{tag} [{st.get('name') or db.item_name(iid)}]: {', '.join(b for b in bits if b)}{note}")
    return lines


KIND = {"item_quests": ("ITEM", "classitem"), "ability_quests": ("MUST DO", "classmust"), "level60": ("LEVEL 60", "class60")}
written = []
meta = {}
summary = []
for cls, secs in plan.items():
    chunks = []
    for faction in ("Alliance", "Horde"):
        rows = meta.setdefault(cls, {}).setdefault(faction, [])
        used_names = set()
        raid_info = []
        done_chains = {}
        for sec, entries in secs.items():
            label, kind = KIND[sec]
            for e in entries:
                solo = (e.get("solo") or e.get("difficulty") or "").lower()
                if sec == "level60" and ("raid" in solo or "unverified" in solo or not e.get("ids")):
                    raid_info.append(e)
                    continue
                ids = [q for q in e.get("ids", []) if fits(q, cls, faction, None)]
                if not ids:
                    continue
                # one chain per race, then races with the very same steps share one guide
                per_race = {}
                for race in FACTION_RACES[faction]:
                    bit = RACE_BIT.get(race) or (2 ** 32 if faction == "Alliance" else 2 ** 33)
                    starts = [q for q in ids if not (db.g(db.Q[q], 6, 0) or 0) & FMASK[faction]
                              or (db.g(db.Q[q], 6, 0) or 0) & bit]
                    if not starts:
                        continue
                    steps = set(starts)
                    for q in starts:
                        chain_before(q, cls, faction, (race,), steps)
                        steps |= set(chain_after(q, cls, faction, (race,)))
                    if sec != "ability_quests":
                        for rq in reward_quests(e, cls, faction, (race,), steps):
                            steps.add(rq)
                            chain_before(rq, cls, faction, (race,), steps)
                    steps = frozenset(q for q in steps if fits(q, cls, faction, (race,)))
                    if steps:
                        per_race.setdefault(steps, (starts, []))[1].append(race)
                for steps, (starts, rlist) in per_race.items():
                    races = None if set(rlist) == set(FACTION_RACES[faction]) else tuple(rlist)
                    rset = set(races) if races else set(FACTION_RACES[faction])
                    same = next((k for k, (rw, rs) in done_chains.items() if steps <= k and rset <= rs), None)
                    if same is not None:     # chain already guided (item + ability, or a sub-chain): merge the label
                        row = done_chains[same][0]
                        if label not in row["sub"]:
                            row["sub"] = (label + " + " + row["sub"])[:110]
                            row["tip"].insert(0, f"Also: {e.get('reward') or e.get('unlocks') or ''}"[:200])
                        continue
                    reqs = [db.g(db.Q[q], 4, 0) for q in starts if db.g(db.Q[q], 4, 0)]
                    qlv = [db.g(db.Q[q], 5, 0) for q in steps if db.g(db.Q[q], 5, 0)]
                    lo = max(min(reqs) if reqs else 1, (min(db.g(db.Q[q], 5, 0) or 1 for q in starts) - 3))
                    hi = max(qlv) if qlv else lo
                    hi = min(60, max(lo, hi))
                    r = ClassRouter(db, faction, fixes=FIX)
                    st, info, left = r.route(sorted(steps), None, max(1, lo), hi + 2)
                    if not st:
                        continue
                    title = short(e.get("quest_or_chain") or e.get("chain"))
                    if sec == "item_quests":   # name item guides after what they give
                        got = []
                        for q in sorted(steps):
                            for iid in ITEMS_BY_QUEST.get(q, []):
                                nm = db.item_name(iid)
                                if nm in (e.get("reward") or "") and db.g(db.I[iid], 12) in (2, 4) and nm not in got:
                                    got.append(nm)
                        if got:
                            title = " / ".join(got[:2]) + (" +" if len(got) > 2 else "")
                    rlabel = " (" + "/".join(RACE_LABEL.get(x, x) for x in races) + ")" if races else ""
                    name = f"{lo}-{hi} {title}{rlabel}" if lo != hi else f"{lo} {title}{rlabel}"
                    base, n = name, 2
                    while name in used_names:
                        name, n = f"{base} {n}", n + 1
                    used_names.add(name)
                    cond = "/".join(f"{faction} {cls} {x}" for x in races) if races else f"{faction} {cls}"
                    header = ["#forever", "#version 1", f"<< {cond}", f"#group {GROUP}", "#groupweight 75",
                              f"#subgroup {bracket(lo)}", f"#name {name}", f"#displayname {name}"]
                    body = ["step", f"    +|cRXP_WARN_{label}: {lua_safe(title)}|r. Click to start."]
                    if e.get("reward") or e.get("unlocks"):
                        body.append("    *Reward: " + lua_safe(e.get("reward") or e.get("unlocks"))[:220])
                    for sl in stat_lines(steps)[:4]:
                        body.append("    *" + lua_safe(sl)[:230])
                    if e.get("why"):
                        body.append("    *Why: " + lua_safe(e["why"])[:200])
                    if any(w in solo for w in ("group", "elite", "dungeon")):
                        body.append("    *|cRXP_WARN_Needs a group for part of it.|r")
                    if re.search(r"new|changed", e.get("forever") or "", re.I):
                        body.append("    *Forever: " + lua_safe(e["forever"])[:180])
                    body += EM.render(st, info)
                    if left:
                        body += ["step", "    >>|cRXP_WARN_Also part of this chain (no known pick-up spot yet), do them if offered:|r"]
                        body += [f"    *{lua_safe(db.qname(q))}" for q in left[:8]]
                        body.append("    +Done")
                    body += ["step", f"    +|cRXP_WARN_Done:|r {lua_safe(title)}. Enjoy the loot. Click to finish."]
                    chunks.append(guide(header, body))
                    tip = [f"Reward: {e.get('reward') or e.get('unlocks') or ''}"[:200]] + stat_lines(steps)[:3]
                    if e.get("why"):
                        tip.append(e["why"][:200])
                    if any(w in solo for w in ("group", "elite", "dungeon")):
                        tip.append("|cffff6040Needs a group for part of it.|r")
                    row = dict(lo=lo, hi=hi, kind=kind, title=title + rlabel,
                               sub=(label + " | " + (e.get("reward") or e.get("unlocks") or ""))[:110],
                               group=GROUP, guide=name, cond=cond, tip=[t for t in tip if t])
                    rows.append(row)
                    done_chains[steps] = (row, set(races) if races else set(FACTION_RACES[faction]))
                    summary.append(f"{cls[:4]} {faction[0]} {name}: {len(steps)} quests, {len(st)} steps, left {len(left)}")
        if raid_info:
            name = "60 Raid class chains (info)"
            header = ["#forever", "#version 1", f"<< {faction} {cls}", f"#group {GROUP}", "#groupweight 75",
                      "#subgroup Levels 50-60", f"#name {name}", f"#displayname {name}"]
            body = ["step", "    +|cRXP_WARN_Raid or not-yet-open class chains.|r Listed for planning, not guided. Click to close."]
            for e in raid_info:
                body.append("    *" + lua_safe(short(e.get("chain") or e.get("quest_or_chain"), 60) + ": " + (e.get("reward") or "") + " (" + (e.get("difficulty") or "") + ")")[:230])
            chunks.append(guide(header, body))
            rows.append(dict(lo=60, hi=60, kind="classinfo", title="Raid class chains (info only)",
                             sub="Molten Core / Zul'Gurub chains: not open in Forever yet", group=GROUP, guide=name,
                             cond=f"{faction} {cls}", tip=[short(e.get("chain") or "", 60) for e in raid_info]))
        rows.sort(key=lambda x: (x["lo"], x["hi"]))
    fn = f"C_{cls}.lua"
    (OUT / fn).write_text("\n".join(chunks))
    written.append(fn)
(OUT / "class_meta.json").write_text(json.dumps(meta, indent=1))
print("\n".join(summary))
print(len(summary), "class guides in", len(written), "files")
