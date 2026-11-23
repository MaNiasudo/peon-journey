"""Peon Journey dungeon guides: every dungeon, and every wing of the big ones, at its level.

Each dungeon becomes up to two guides:
  1. pre-quests (solo, no group needed), only when the dungeon quests have pre-quests;
  2. the run: pick up the dungeon quests (solo), ONE run with a group, hand everything in.
The "find a group" warning sits on the run step, not at the start.

Scarlet Monastery, Dire Maul, Blackrock Spire and Stratholme are split into one run per wing
(data/research/dungeon_wings.json). QuestieDB puts every mob of such a dungeon in one area, so the wing of an
objective comes from the wing boss lists (objective mob, item dropper or object name) and, failing that, from the
wing quest lists. A quest is picked up before the first wing it needs, each wing only does its own objectives,
and the hand-in comes after the quest's last wing.
"""
import json
import re
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from qlib import DB, dist  # noqa: E402
from router import Router, fmt  # noqa: E402
from emit import Emitter, guide, lua_safe, goto  # noqa: E402
from common import leveling_quest, ROOT  # noqa: E402
import timing as T  # noqa: E402

db = None
FIX = None
WINGS_JSON = ROOT / "data" / "research" / "dungeon_wings.json"
SPLIT = ("Scarlet Monastery", "Dire Maul", "Blackrock Spire", "Stratholme")
LIVE = "Stratholme (Main Gate) / Live / Living"
DEAD = "Stratholme (Service Gate) / Undead / Dead"

# per wing (key = wing name in the research file): guide name, the door, run length in minutes and, where the wing
# has its own door outside, the entrance point (Questie dungeons.lua per-wing entrances)
WING_META = {
    "Graveyard": dict(name="Scarlet Monastery Graveyard", run=25,
                      door="Graveyard: the open portal farthest left. No key."),
    "Library": dict(name="Scarlet Monastery Library", run=35,
                    door="Library: the open portal farthest right inside the main building. No key. Doan's Strongbox "
                         "(behind Arcanist Doan) drops The Scarlet Key for Armory and Cathedral."),
    "Armory": dict(name="Scarlet Monastery Armory", run=30,
                   door="Armory: the closed door on the right as you enter. Needs The Scarlet Key (Library)."),
    "Cathedral": dict(name="Scarlet Monastery Cathedral", run=40,
                      door="Cathedral: the closed door on the left as you enter. Needs The Scarlet Key (Library)."),
    "Dire Maul (East)": dict(name="Dire Maul East", run=50, entrance=(1444, 64.8, 30.2),
                             door="East wall of the central courtyard. No key. Chase Pusillin: he drops the "
                                  "Crescent Key that opens West and North."),
    "Dire Maul (West)": dict(name="Dire Maul West", run=60, entrance=(1444, 60.3, 30.2),
                             door="West wall of the central courtyard. Needs the Crescent Key (Pusillin, Dire Maul East)."),
    "Dire Maul (North)": dict(name="Dire Maul North", run=45, entrance=(1444, 62.5, 24.9),
                              door="North wall of the central courtyard. Needs the Crescent Key."),
    "Lower Blackrock Spire": dict(name="Lower Blackrock Spire", run=90,
                                  door="Blackrock Spire door inside Blackrock Mountain. No key."),
    "Upper Blackrock Spire": dict(name="Upper Blackrock Spire", run=80,
                                  door="Same entrance, the upstairs door on the left. One player needs the Seal of Ascension."),
    LIVE: dict(name="Stratholme Live", run=75, door="Main gate. No key."),
    DEAD: dict(name="Stratholme Undead", run=75, entrance=(1423, 41.45, 17.74),
               door="Service gate, east of the main gate. Needs the Key to the City (Magistrate Barthilas, Stratholme Live)."),
}
# names the research boss lists miss (QuestieDB still uses the Classic name for Ezra Grimm)
EXTRA_BOSS = {"fras siabi": LIVE}
# quests the research wing lists miss: where they are handed in or done
EXTRA_QUEST_WING = {
    "Foror's Compendium": "Dire Maul (West)", "The Forging of Quel'Serrar": "Dire Maul (West)",
    "Anthion's Old Friend": "Dire Maul (West)", "Falrin's Vendetta": "Dire Maul (West)",
    "The Instigator's Enchantment": "Dire Maul (West)",
    "Finkle Einhorn, At Your Service!": "Upper Blackrock Spire", "Blackhand's Command": "Upper Blackrock Spire",
    "Vivian Lagrave and the Darkstone Tablet": "Upper Blackrock Spire",
    "The Great Fras Siabi": LIVE,
}
GROUP_LINE = ("Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: "
              "everyone takes them before going in.")


def init(db_, fix_):
    global db, FIX
    db, FIX = db_, fix_


def norm(s):
    return re.sub(r"\s*\(.*?\)", "", s or "").strip().lower()


def load_wings():
    if not WINGS_JSON.exists():
        return {}
    data = json.loads(WINGS_JSON.read_text())
    out = {}
    for dd in data.get("dungeons", []):
        if dd["dungeon"] not in SPLIT:
            continue
        wings = []
        for w in dd["wings"]:
            meta = WING_META.get(w["wing"])
            if not meta:
                continue
            lv = [int(x) for x in re.findall(r"\d+", w.get("levels", ""))[:2]] or [0, 0]
            bosses = set()
            for b in w.get("bosses", []):
                for part in re.split(r"/| and ", re.sub(r"\(.*?\)", "", b)):
                    if part.strip():
                        bosses.add(part.strip().lower())
            wings.append(dict(key=w["wing"], idx=len(wings), lo=lv[0], hi=lv[-1], bosses=bosses,
                              quests=[q["name"] for q in w.get("quests", [])], **meta))
        if len(wings) > 1:
            out[dd["dungeon"]] = wings
    return out


def default_run(lo):
    return 40 if lo < 20 else 50 if lo < 30 else 60 if lo < 40 else 70 if lo < 50 else 80


def units(cfg):
    """one unit per dungeon, or one per wing of the split dungeons, in level order"""
    wings = load_wings()
    out = []
    for d in cfg:
        ws = wings.get(d["name"])
        if not ws:
            out.append(dict(d, base=d["name"], wing=None, wings=None, lo=d["levels"][0], hi=d["levels"][1],
                            run=default_run(d["levels"][0]), door=None))
            continue
        for w in ws:
            u = dict(d, name=w["name"], base=d["name"], wing=w, wings=ws, lo=w["lo"], hi=w["hi"], run=w["run"],
                     door=w["door"])
            if w.get("entrance"):
                u["entrance"] = list(w["entrance"])
            out.append(u)
    return sorted(out, key=lambda u: (u["lo"], u["hi"], u["wing"]["idx"] if u["wing"] else 0))


def dungeon_ok(q, faction):
    """like leveling_quest but dungeon quests may be elite/group and level 60"""
    return leveling_quest(db, q, faction)


def collect(d, faction):
    areas = set(d["areas"])
    qs = set()
    for qid, r in db.Q.items():
        if db.g(r, 17) in areas and dungeon_ok(qid, faction):
            qs.add(qid)
    names = set(d.get("quest_names", []))
    if names:
        for qid, r in db.Q.items():
            if db.g(r, 1) in names and dungeon_ok(qid, faction):
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
    return (e[0], e[1], e[2]) if e else None


def akeys(sp):
    if isinstance(sp, list):
        return [i + 1 for i, v in enumerate(sp) if v]
    if isinstance(sp, dict):
        return [int(k) for k, v in sp.items() if v]
    return []


CORE = set()


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
    def __init__(self, db, u):
        super().__init__(db)
        self.u = u

    def giver_line(self, giver):
        kind, gid = giver
        if kind == "inside":
            return [f"    >>Inside {lua_safe(self.u['name'])}: these quests start from a drop or an object in the dungeon"], []
        if kind == "item":
            talk, extra = super().giver_line(giver)
            if not self.db.lst(self.db.g(self.db.I.get(gid), 2)):
                n = lua_safe(self.db.item_name(gid))
                talk = [f"    >>Inside {lua_safe(self.u['name'])}: loot |cRXP_LOOT_[{n}]|r and click it to start the quest"]
            return talk, extra
        return super().giver_line(giver)

    def obj(self, st, info):
        inside = [x for x in st["items"] if x[1].get("inside")]
        if not inside:
            return super().obj(st, info)
        out = ["step"]
        out += goto(st["loc"])
        out.append(f"    >>Enter |cRXP_WARN_{lua_safe(self.u['name'])}|r with your group. Quest goals inside:")
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


LOG_ROOM = 16


def phased_route(cinfo, core, info, completed, ent, start_pos=None, no_accept=frozenset(),
                 no_handin=frozenset(), obj_keep=None):
    """pick-ups, then ONE run, then hand-ins; repeat if a chain needs another run.
    no_accept: picked up in an earlier wing. no_handin: handed in after a later wing.
    obj_keep(q, o): the objective belongs to this run."""
    steps = []
    pos = start_pos
    completed = set(completed)
    remaining = set(q for q in core if q in cinfo)
    keep = obj_keep or (lambda q, o: True)
    for run in range(4):
        def ok(q):
            if q in no_accept:
                return True
            group, single = db.prereqs(q)
            group = [p for p in group if p in info]
            single = [p for p in single if p in info]
            return all(p in completed for p in group) and (not single or any(p in completed for p in single))
        ready = sorted((q for q in remaining if ok(q)), key=lambda q: (cinfo[q]["level"], q))
        if not ready:
            break
        ready = sorted(ready[:LOG_ROOM])   # the quest log holds 20; keep room for zone quests
        new = [q for q in ready if q not in no_accept]
        outdoor = [q for q in new if not cinfo[q].get("inside_start")]
        inside_start = [q for q in new if cinfo[q].get("inside_start")]
        acc = group_by_giver(outdoor, cinfo, "start")
        acc, pos = nn_order(acc, lambda st: st["loc"], pos)
        objs_out, objs_in, objs_after = [], [], []
        for q in ready:
            for o in cinfo[q]["objs"]:
                if not keep(q, o):
                    continue
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
        hand = group_by_giver([q for q in ready if q not in no_handin], cinfo, "end")
        hand, pos = nn_order(hand, lambda st: st["loc"], ent)
        steps.append(("pickup", acc + out_steps))
        steps.append(("run", run_steps))
        if after_steps:
            steps.append(("after", after_steps))
        steps.append(("handin", hand))
        completed |= set(q for q in ready if q not in no_handin)
        remaining -= set(ready)
    return steps, sorted(remaining)


PHASE_TITLE = {"pickup": "Pick up the dungeon quests (solo, no group yet)",
               "run": "Run the dungeon. " + GROUP_LINE,
               "after": "Outside: collect what the quests you got inside need",
               "handin": "Hand everything in (go back inside for quest givers in the dungeon)"}


def render_phases(em, phases, info):
    out = []
    runs = 0
    for kind, st in phases:
        if not st:
            continue
        if kind == "run":
            runs += 1
        label = PHASE_TITLE[kind] + (f" (run {runs})" if kind == "run" and runs > 1 else "")
        out += ["step", "    #completewith next", f"    +|cRXP_WARN_{lua_safe(label)}|r"]
        out += em.render(st, info)
    return out


# ---------------------------------------------------------------------------- wings
def wing_plan(u, cinfo):
    """quest -> [first wing, last wing]; objective -> wing (by object id)"""
    wings = u["wings"]
    order = {w["key"]: w["idx"] for w in wings}
    boss = {}
    for w in wings:
        for b in w["bosses"]:
            boss.setdefault(b, w["idx"])
    for n, k in EXTRA_BOSS.items():
        if k in order:
            boss.setdefault(n, order[k])
    qwing = {}
    for w in wings:
        for qn in w["quests"]:
            qwing.setdefault(qn, w["idx"])
    for qn, k in EXTRA_QUEST_WING.items():
        if k in order:
            qwing.setdefault(qn, order[k])

    def by_level(q):
        lv = db.g(db.Q[q], 5, 0) or 0
        fits = [w for w in wings if w["lo"] <= lv <= w["hi"]]
        return (fits[0] if fits else min(wings, key=lambda w: abs(w["lo"] - lv)))["idx"]

    objw, span = {}, {}
    for q, i in cinfo.items():
        fallback = qwing.get(db.qname(q))
        if fallback is None:
            fallback = by_level(q)
        ws = []
        for o in i["objs"]:
            if not o.get("inside"):
                continue
            if o["kind"] == "item":
                names = list(o.get("droppers") or []) + list(o.get("objects") or [])
            else:
                names = [o["name"]]
            hits = [boss[norm(n)] for n in names if norm(n) in boss]
            w = min(hits) if hits else fallback
            objw[id(o)] = w
            ws.append(w)
        span[q] = [min(ws), max(ws)] if ws else [fallback, fallback]
    # a follow-up can't start before the wing where its prerequisite is handed in
    changed = True
    while changed:
        changed = False
        for q in span:
            g, s = db.prereqs(q)
            for p in list(g) + list(s):
                if p in span and span[p][1] > span[q][0]:
                    span[q][0] = span[p][1]
                    span[q][1] = max(span[q][1], span[q][0])
                    changed = True
    return span, objw


# ---------------------------------------------------------------------------- one dungeon (or wing) for one faction
def build_unit(u, faction, done=frozenset(), pre_ok=None, allow_empty=False, wings_done=None):
    """dict(name, lo, hi, pre_body, run_body, pre_min, run_min, pre, handed, ...) or None.
    done: quests already finished in this route. pre_ok(core_quest, pre_chain) -> keep that quest and its
    pre-quests (Speed routes drop chains whose pre-quests cost more than they pay).
    wings_done: wings of this dungeon the route already ran (None = every earlier wing)."""
    if u.get("faction") and u["faction"] != faction:
        return None
    done = set(done)
    core_all = collect(u, faction) - done
    if pre_ok:
        dropped = set()
        for c in sorted(core_all):
            chain = with_prereqs({c}, faction) - core_all - done
            if chain and not pre_ok(c, chain):
                dropped.add(c)
        changed = True
        while changed:   # follow-ups of a dropped quest go too
            changed = False
            for q in sorted(core_all - dropped):
                g, _ = db.prereqs(q)
                if any(p in dropped for p in g):
                    dropped.add(q)
                    changed = True
        core_all -= dropped
    pre_all = with_prereqs(core_all, faction) - core_all - done
    ent = entrance_loc(u)
    prefer_ui = ent[0] if ent else None
    CORE.clear()
    CORE.update(core_all)
    r = DungeonRouter(db, faction, fixes=FIX, d=u, ent=ent)
    cinfo = {q: r.quest_info(q, prefer_ui) for q in sorted(core_all)}
    missing = sorted(q for q, i in cinfo.items() if i["start"] is None)
    cinfo = {q: i for q, i in cinfo.items() if i["start"] is not None}

    no_accept, no_handin, keep = set(), set(), None
    completed = set(done)
    if u.get("wing"):
        idx = u["wing"]["idx"]
        span, objw = wing_plan(u, cinfo)
        if wings_done is not None:   # a quest that needed a wing the route skipped can't be finished: leave it out
            ran = {w["idx"] for w in u["wings"] if w["name"] in wings_done}
            cinfo = {q: i for q, i in cinfo.items() if span[q][0] >= idx or span[q][0] in ran}
        core = {q for q in cinfo if span[q][0] <= idx <= span[q][1]}
        no_accept = {q for q in core if span[q][0] < idx}
        no_handin = {q for q in core if span[q][1] > idx}
        earlier = {q for q in cinfo if span[q][0] < idx}
        here = core - no_accept
        pre = with_prereqs(here, faction) - core_all - done - with_prereqs(earlier, faction)
        keep = (lambda q, o: max(objw.get(id(o), span[q][0]), span[q][0]) == idx)
        completed |= {q for q in cinfo if span[q][1] < idx}   # handed in after an earlier wing
        if idx != 0:
            missing = []
    else:
        core = set(cinfo)
        pre = pre_all
    lo, hi = u["lo"], u["hi"]
    info = dict(cinfo)
    pre_steps, pre_left = [], []
    if pre:
        s1, i1, l1 = r.route(sorted(pre), prefer_ui, max(1, lo - 6), hi + 2, external_done=done)
        pre_steps, pre_left = s1, l1
        info.update(i1)
        completed |= set(i1)
    phases, left = phased_route(cinfo, core, info, completed, ent,
                                start_pos=pre_steps[-1]["loc"] if pre_steps else None,
                                no_accept=no_accept, no_handin=no_handin, obj_keep=keep)
    left = sorted(set(left) | set(missing))
    has_run = any(st for k, st in phases if k == "run")
    if not has_run and not allow_empty:
        return None
    em = DungeonEmitter(db, u)
    name = u["name"]
    pre_placed = sorted(q for q in info if q in pre and q not in pre_left)
    pre_min = T.steps_minutes(pre_steps, lo) if pre_steps else 0.0
    runs = max(1, sum(1 for k, st in phases if k == "run" and st))
    walk = sum(T.steps_minutes(st, lo) for k, st in phases if k != "run")
    run_min = walk + u["run"] * runs + T.GROUP_WAIT_MIN
    picked = sorted(q for q in core if q not in no_accept and q in cinfo and q not in left)
    handed = sorted(q for q in core if q not in no_handin and q in cinfo and q not in left)

    pre_body = []
    if pre_steps:
        names = [db.qname(q) for q in pre_placed]
        pre_body = ["step", f"    +|cRXP_WARN_{lua_safe(name)}: pre-quests|r. {len(pre_placed)} quests, solo (no group "
                    f"needed), roughly {T.fmt_min(pre_min)}. The run guide comes after this one. Click to start.",
                    "    *Pre-quests: " + lua_safe(", ".join(dict.fromkeys(names[:14]))) + ("..." if len(names) > 14 else "")]
        pre_body += em.render(pre_steps, info)
        pre_body += ["step", f"    +|cRXP_WARN_Pre-quests done.|r Next: {lua_safe(name)} itself. That guide tells you "
                     "when to find a group. Click to continue."]

    if has_run:
        head = (f"    +|cRXP_WARN_{lua_safe(name)}|r (levels {lo}-{hi}). Pick up {len(picked)} dungeon quests solo "
                f"(roughly {T.fmt_min(walk)} with the hand-ins), then ONE run with a group (roughly "
                f"{T.fmt_min(u['run'] * runs)}). No group needed until the run step. Click to start.")
    else:
        head = (f"    +|cRXP_WARN_{lua_safe(name)}|r (levels {lo}-{hi}). No quests here for your faction: run it once "
                f"with a group for XP and loot (roughly {T.fmt_min(u['run'])}), or skip it. Click to start.")
    run_body = ["step", head]
    if u.get("door"):
        run_body.append("    *Door: " + lua_safe(u["door"]))
    if u.get("note"):
        run_body.append("    *" + lua_safe(u["note"]))
    if pre_placed:
        run_body.append(f"    *Its {len(pre_placed)} pre-quests are in the guide before this one. Skipped them? "
                        "Some quests below won't be offered: skip those steps.")
    if no_accept:
        run_body.append("    *Already picked up for an earlier wing: " +
                        lua_safe(", ".join(dict.fromkeys(db.qname(q) for q in sorted(no_accept)))))
    if no_handin:
        run_body.append("    *Keep for a later wing (hand in after it): " +
                        lua_safe(", ".join(dict.fromkeys(db.qname(q) for q in sorted(no_handin)))))
    run_body += render_phases(em, phases, info)
    if not has_run and ent:
        run_body += ["step", f"    .goto {ent[0]},{fmt(ent[1])},{fmt(ent[2])}",
                     f"    +Find a group, run {lua_safe(name)}, then click to finish."]
    if left:
        run_body += ["step", "    >>|cRXP_WARN_Also part of this dungeon (later follow-ups or missing data). "
                     "Do them if they are offered:|r"]
        for q in left[:10]:
            run_body.append(f"    *{lua_safe(db.qname(q))}")
        run_body.append("    +Done")
    if ent and has_run:
        run_body += ["step", f"    .goto {ent[0]},{fmt(ent[1])},{fmt(ent[2])}",
                     f"    +Dungeon entrance: {lua_safe(name)}. Done with this dungeon? Click to finish."]
    return dict(name=name, base=u["base"], wing=u["wing"]["key"] if u.get("wing") else None, lo=lo, hi=hi,
                pre=pre_placed, picked=picked, handed=handed, core=sorted(core),
                quests=sorted(set(pre_placed) | set(picked)), pre_body=pre_body, run_body=run_body,
                pre_min=pre_min, run_min=run_min, runs=runs if has_run else 1, run_only=not has_run)


def build_all(db_, dungeons, fix_):
    """{(unit name, faction): build_unit result} for every dungeon / wing with quests (Dungeon Quests Only)"""
    init(db_, fix_)
    out = {}
    for u in units(dungeons):
        for faction in ("Alliance", "Horde"):
            res = build_unit(u, faction)
            if res:
                res["unit"] = u
                out[(u["name"], faction)] = res
    return out
