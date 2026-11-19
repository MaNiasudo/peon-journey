"""Generate Peon Journey dungeon guides: every dungeon at its level, with its pre-quests.

Usage: python -I gen_dungeons.py <data_forever.json> <dungeons_config.json> <out_dir>
"""
import json
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from qlib import DB, dist  # noqa: E402
from router import Router, fmt  # noqa: E402
from emit import Emitter, guide, lua_safe, goto  # noqa: E402
from common import leveling_quest, objective_order_fixes, SKY  # noqa: E402

db = None
FIX = None
GROUP = "Peon Journey 3 - Dungeon Journey"


def init(db_, fix_):
    global db, FIX
    db, FIX = db_, fix_


def dungeon_ok(q, faction):
    """like leveling_quest but dungeon quests may be elite/group and level 60"""
    return leveling_quest(db, q, faction)


def collect(d, faction):
    areas = set(d["areas"])
    qs = set()
    for qid, r in db.Q.items():
        if db.g(r, 17) in areas and dungeon_ok(qid, faction):
            qs.add(qid)
    for name in d.get("quest_names", []):
        for qid, r in db.Q.items():
            if db.g(r, 1) == name and dungeon_ok(qid, faction):
                qs.add(qid)
    for qid in d.get("quest_ids", []):
        if qid in db.Q and dungeon_ok(qid, faction):
            qs.add(qid)
    for qid in d.get("exclude_ids", []):
        qs.discard(qid)
    return qs


def with_prereqs(qs, faction, max_depth=8):
    out = set(qs)
    frontier = list(qs)
    depth = 0
    while frontier and depth < max_depth:
        nxt = []
        for q in frontier:
            group, single = db.prereqs(q)
            cands = list(group)
            # for "any one of" prereqs take the one this faction can do
            singles = [p for p in single if p in db.Q and leveling_quest(db, p, faction)]
            if singles:
                cands.append(singles[0])
            for p in cands:
                if p not in out and p in db.Q and leveling_quest(db, p, faction):
                    out.add(p)
                    nxt.append(p)
        frontier = nxt
        depth += 1
    return out


def entrance_loc(d):
    e = d.get("entrance")
    if e:
        return (e[0], e[1], e[2])
    return None


def akeys(sp):
    if isinstance(sp, list):
        return [i + 1 for i, v in enumerate(sp) if v]
    if isinstance(sp, dict):
        return [int(k) for k, v in sp.items() if v]
    return []


def mark_inside(info, d, ent):
    """objectives that live inside the instance point at the entrance"""
    areas = set(d["areas"]) | set(d.get("inner_areas", []))
    for q, i in info.items():
        for o in i["objs"]:
            inside = False
            if o["kind"] in ("mob", "killcredit") and isinstance(o["id"], int):
                inside = any(a in areas for a in akeys(db.g(db.N.get(o["id"]), 7)))
            elif o["kind"] == "item":
                it = db.I.get(o["id"]) if isinstance(o["id"], int) else None
                for n in db.lst(db.g(it, 2))[:8]:
                    if any(a in areas for a in akeys(db.g(db.N.get(n), 7))):
                        inside = True
                for ob in db.lst(db.g(it, 3))[:8]:
                    if any(a in areas for a in akeys(db.g(db.O.get(ob), 4))):
                        inside = True
            elif o["kind"] == "object" and isinstance(o["id"], int):
                inside = any(a in areas for a in akeys(db.g(db.O.get(o["id"]), 4)))
            if (db.g(db.Q[q], 17) in d["areas"] or q in CORE) and not o.get("known"):
                inside = True
            if inside and ent:
                o["loc"] = ent
                o["known"] = True
                o["inside"] = True


class DungeonRouter(Router):
    def __init__(self, *a, d=None, ent=None, **k):
        super().__init__(*a, **k)
        self.d = d
        self.ent = ent

    def quest_info(self, qid, prefer_ui):
        i = super().quest_info(qid, prefer_ui)
        if i["start"] is None and qid in CORE and self.ent:
            items = db.grp(db.g(db.Q[qid], 2), 3)
            i["start"] = ("item", items[0], self.ent) if items else ("inside", None, self.ent)
            i["inside_start"] = True
        if i["end"] is None and i["start"] is not None and qid in CORE:
            i["end"] = i["start"]
        mark_inside({qid: i}, self.d, self.ent)
        return i


class DungeonEmitter(Emitter):
    def __init__(self, db, d):
        super().__init__(db)
        self.d = d

    def giver_line(self, giver):
        kind, gid = giver
        if kind == "inside":
            return [f"    >>Inside {lua_safe(self.d['name'])}: these quests start from a drop or an object in the dungeon"], []
        if kind == "item":
            talk, extra = super().giver_line(giver)
            if not self.db.lst(self.db.g(self.db.I.get(gid), 2)):
                n = lua_safe(self.db.item_name(gid))
                talk = [f"    >>Inside {lua_safe(self.d['name'])}: loot |cRXP_LOOT_[{n}]|r and click it to start the quest"]
            return talk, extra
        return super().giver_line(giver)

    def obj(self, st, info):
        inside = [x for x in st["items"] if x[1].get("inside")]
        if not inside:
            return super().obj(st, info)
        out = ["step"]
        out += goto(st["loc"])
        out.append(f"    >>Enter |cRXP_WARN_{lua_safe(self.d['name'])}|r and run it with a group. Quest goals inside:")
        for q in dict.fromkeys(q for q, _ in st["items"]):
            t = info[q].get("otext")
            out.append("    *" + lua_safe(info[q]["name"]) + (": " + lua_safe(t) if t else ""))
        for q, o in st["items"]:
            idx = info[q]["objs"].index(o) + 1
            out.append(f"    .complete {q},{idx}{self.rtag(q)} --{lua_safe(info[q]['name'])}")
        return out


def nn_order(items, key_loc, start=None):
    """nearest-neighbour order of items by location"""
    items = list(items)
    out = []
    pos = start
    while items:
        nxt = min(items, key=lambda it: dist(pos, key_loc(it)) if pos else 0)
        out.append(nxt)
        items.remove(nxt)
        pos = key_loc(nxt)
    return out, pos


def group_by_giver(qs, info, which):
    groups = {}
    for q in qs:
        g = info[q][which] or info[q]["start"]
        groups.setdefault((g[0], g[1]), (g[2], []))[1].append(q)
    return [dict(type="accept" if which == "start" else "turnin", giver=k, loc=v[0], quests=v[1])
            for k, v in groups.items()]


def phased_route(r, core, qs, prefer_ui, lo, hi, ent):
    """pre-quests, then pick-ups, then ONE run, then hand-ins; repeat if a chain needs another run"""
    pre = set(qs) - set(core)
    steps = []
    info = {}
    left = []
    done = set()
    pos = None
    if pre:
        s1, i1, l1 = r.route(sorted(pre), prefer_ui, max(1, lo - 6), hi + 2)
        steps.append(("pre", s1))
        info.update(i1)
        left += l1
        done |= set(i1)
        if s1:
            pos = s1[-1]["loc"]
    cinfo = {q: r.quest_info(q, prefer_ui) for q in core}
    cinfo = {q: i for q, i in cinfo.items() if i["start"] is not None}
    left += sorted(set(core) - set(cinfo))
    info.update(cinfo)
    remaining = set(cinfo)
    for run in range(4):
        def ok(q):
            group, single = db.prereqs(q)
            group = [p for p in group if p in info]
            single = [p for p in single if p in info]
            return all(p in done for p in group) and (not single or any(p in done for p in single))
        ready = sorted((q for q in remaining if ok(q)), key=lambda q: (cinfo[q]["level"], q))
        if not ready:
            break
        ready = sorted(ready[:LOG_ROOM])   # the quest log holds 20; keep room for zone quests
        outdoor = [q for q in ready if not cinfo[q].get("inside_start")]
        inside_start = [q for q in ready if cinfo[q].get("inside_start")]
        acc = group_by_giver(outdoor, cinfo, "start")
        acc, pos = nn_order(acc, lambda st: st["loc"], pos)
        # outdoor objectives of these quests (rare) before the run
        objs_out, objs_in, objs_after = [], [], []
        for q in ready:
            for o in cinfo[q]["objs"]:
                if o.get("inside") or not o.get("known"):
                    objs_in.append((q, o))
                elif cinfo[q].get("inside_start"):
                    objs_after.append((q, o))   # quest only exists after you pick it up inside
                else:
                    objs_out.append((q, o))
        out_steps = [dict(type="obj", loc=o["loc"], items=[(q, o)]) for q, o in objs_out]
        out_steps, pos = nn_order(out_steps, lambda st: st["loc"], pos)
        run_steps = []
        if inside_start:
            run_steps += group_by_giver(inside_start, cinfo, "start")
        if objs_in:
            run_steps.append(dict(type="obj", loc=ent, items=objs_in))
        after_steps = [dict(type="obj", loc=o["loc"], items=[(q, o)]) for q, o in objs_after]
        after_steps, _ = nn_order(after_steps, lambda st: st["loc"], ent)
        hand = group_by_giver(ready, cinfo, "end")
        hand, pos = nn_order(hand, lambda st: st["loc"], ent)
        steps.append(("pickup", acc + out_steps))
        steps.append(("run", run_steps))
        if after_steps:
            steps.append(("after", after_steps))
        steps.append(("handin", hand))
        done |= set(ready)
        remaining -= set(ready)
    left += sorted(remaining)
    return steps, info, left


PHASE_TITLE = {"pre": "Pre-quests", "pickup": "Pick up the dungeon quests", "run": "Run the dungeon",
               "after": "Outside: collect what the quests you got inside need",
               "handin": "Hand everything in (go back inside for quest givers in the dungeon)"}
LOG_ROOM = 16


def render_phases(em, phases, info):
    out = []
    runs = 0
    for kind, st in phases:
        if not st:
            continue
        if kind == "run":
            runs += 1
        label = PHASE_TITLE[kind] + (f" (run {runs})" if kind == "run" and runs > 1 else "")
        out += ["step", "    #completewith next", f"    +|cRXP_WARN_{label}|r"]
        out += em.render(st, info)
    return out


CORE = set()


def build_all(db_, dungeons, fix_):
    """{(name, faction): dict(name, lo, hi, quests, runs, body)} for every dungeon with quests"""
    init(db_, fix_)
    out = {}
    for d in sorted(dungeons, key=lambda x: x["levels"][0]):
        for faction in ("Alliance", "Horde"):
            if d.get("faction") and d["faction"] != faction:
                continue
            core = collect(d, faction)
            if not core:
                continue
            qs = with_prereqs(core, faction)
            CORE.clear()
            CORE.update(core)
            ent = entrance_loc(d)
            lo, hi = d["levels"]
            prefer_ui = ent[0] if ent else None
            r = DungeonRouter(db, faction, fixes=FIX, d=d, ent=ent)
            steps, info, left = phased_route(r, core, qs, prefer_ui, lo, hi, ent)
            if not any(st for _, st in steps):
                continue
            em = DungeonEmitter(db, d)
            body = ["step", f"    +|cRXP_WARN_{lua_safe(d['name'])}|r (levels {lo}-{hi}). "
                    f"Do the pick-ups below, then run the dungeon, then hand everything in. Click to start."]
            if d.get("note"):
                body.append("    *" + lua_safe(d["note"]))
            pre = sorted(qs - core)
            if pre:
                body.append("    *Pre-quests in this guide: " + lua_safe(", ".join(db.qname(q) for q in pre[:12]))
                            + ("..." if len(pre) > 12 else ""))
            body += render_phases(em, steps, info)
            if left:
                body += ["step", "    >>|cRXP_WARN_Also part of this dungeon (later follow-ups or missing data). Do them if they are offered:|r"]
                for q in left[:10]:
                    body.append(f"    *{lua_safe(db.qname(q))}")
                body.append("    +Done")
            if ent:
                body += ["step", f"    .goto {ent[0]},{fmt(ent[1])},{fmt(ent[2])}",
                         f"    +Dungeon entrance: {lua_safe(d['name'])}. Done with this dungeon? Click to finish."]
            placed = {q for q in info if q not in left}
            out[(d["name"], faction)] = dict(name=d["name"], lo=lo, hi=hi, quests=sorted(placed), body=body,
                                             runs=max(1, sum(1 for k, st in steps if k == "run" and st)),
                                             core=sorted(core), pre=pre)
    return out
