"""Turn a set of quests into an ordered RXP step list (greedy nearest-action router)."""
import math

from qlib import DB, centroid, dist, A_RACES, H_RACES

SKY = 2 ** 32 + 2 ** 33
HUB_RADIUS = 2.5      # same NPC / same camp
OBJ_RADIUS = 9.0      # objectives close enough to do in one pass
LOG_LIMIT = 18


def fmt(v):
    return f"{v:.2f}".rstrip("0").rstrip(".") if v != int(v) else f"{int(v)}"


def first_id(e):
    if isinstance(e, list):
        return e[0] if e else None
    if isinstance(e, dict):
        return e.get("1")
    return e


class Router:
    def __init__(self, db: DB, faction, home_ui=None, fixes=None):
        self.db = db
        self.faction = faction
        self.fixes = fixes or {}
        self.home_ui = home_ui
        self.fp_done = set()

    # ------------------------------------------------------------ quest facts
    def loc_of(self, locs, prefer_ui):
        """locs: list of (kind,id,spawns). Return (kind,id,(ui,x,y))"""
        best = None
        for kind, eid, sp in locs:
            if kind == "npc":
                f = self.db.g(self.db.N.get(eid), 13)
                if f and ((self.faction == "Alliance" and "A" not in f) or (self.faction == "Horde" and "H" not in f)):
                    continue
            c = centroid(sp, prefer_ui) or centroid(sp)
            if c is None:
                continue
            score = 0 if c[0] == prefer_ui else 1
            if best is None or score < best[0]:
                best = (score, kind, eid, c)
        return (best[1], best[2], best[3]) if best else None

    def quest_info(self, qid, prefer_ui):
        db = self.db
        q = db.Q[qid]
        start = self.loc_of(db.giver_locs(qid, 2), prefer_ui)
        end = self.loc_of(db.giver_locs(qid, 3), prefer_ui)
        objs = db.objectives(qid)
        first = {"item": "item", "killCredit": "killcredit", "object": "object"}.get(self.fixes.get(qid))
        if first:
            objs = [o for o in objs if o["kind"] == first] + [o for o in objs if o["kind"] != first]
        gl = start[2] if start else None
        for o in objs:
            o["loc"] = centroid(o["spawns"], prefer_ui) or centroid(o["spawns"])
            o["vendor"] = None
            if not o["loc"] and o.get("vendors"):
                best = None
                for v in o["vendors"]:
                    f = db.g(db.N.get(v), 13) or ""
                    if (self.faction == "Alliance" and "A" not in f) or (self.faction == "Horde" and "H" not in f):
                        continue
                    for sp in db.spawns("npc", v)[:1]:
                        d = dist(gl, sp) if gl else 0
                        if best is None or d < best[0]:
                            best = (d, v, sp)
                if best and best[0] < 60:
                    o["loc"] = best[2]
                    o["vendor"] = best[1]
            o["known"] = o["loc"] is not None
            if o["kind"] == "mob" or o["kind"] == "killcredit":
                ranks = db.g(db.N.get(o["id"]) if isinstance(o["id"], int) else None, 6, 0)
                o["elite"] = ranks in (1, 2, 3)
            else:
                o["elite"] = False
        locs = [o["loc"] for o in objs if o["loc"]]
        objloc = locs[0] if locs else None
        otext = db.g(q, 8)
        otext = (otext[0] if isinstance(otext, list) and otext else None)
        return dict(id=qid, name=db.qname(qid), start=start, end=end, objs=objs, objloc=objloc, otext=otext,
                    level=db.g(q, 5, 0) or 0, req=db.g(q, 4, 0) or 0,
                    item_start=bool(db.grp(db.g(q, 2), 3)) and not db.grp(db.g(q, 2), 1) and not db.grp(db.g(q, 2), 2))

    # ------------------------------------------------------------ routing
    def route(self, qids, prefer_ui, start_level, end_level, external_done=(), start_pos=None, early=()):
        """early: quests done before anything else (lead-ins whose giver is outside the zone)"""
        db = self.db
        info = {q: self.quest_info(q, prefer_ui) for q in qids}
        info = {q: i for q, i in info.items() if i["start"] is not None}
        pending = set(info)
        accepted, objdone, done = [], set(), set(external_done)
        steps = []
        pos = start_pos
        total = max(1, len(info))

        def prereq_ok(q):
            group, single = db.prereqs(q)
            group = [p for p in group if p in info or p in done]
            single = [p for p in single if p in info or p in done]
            if any(p not in done for p in group):
                return False
            if single and not any(p in done for p in single):
                return False
            return True

        def est_level():
            return start_level + (end_level - start_level) * (len(done) / total)

        guard = 0
        while guard < 5000:
            guard += 1
            lvl = est_level()
            actions = []
            if len(accepted) < LOG_LIMIT:
                for q in pending:
                    i = info[q]
                    if prereq_ok(q) and (i["req"] or 0) <= lvl + 1.5:
                        actions.append(("accept", q, i["start"][2]))
            for q in accepted:
                i = info[q]
                if q not in objdone and i["objs"]:
                    for o in i["objs"]:
                        if not o.get("done"):
                            actions.append(("obj", q, o["loc"] or i["start"][2], o))
                            break
                else:
                    actions.append(("turnin", q, (i["end"] or i["start"])[2]))
            if not actions:
                if pending and len(accepted) < LOG_LIMIT:
                    # level gate blocked everything: relax by accepting the lowest one
                    cand = [q for q in pending if prereq_ok(q)]
                    if cand:
                        q = min(cand, key=lambda x: info[x]["req"])
                        actions.append(("accept", q, info[q]["start"][2]))
                if not actions:
                    break

            def cost(a):
                d = dist(pos, a[2]) if pos else 0
                bias = {"turnin": -1.0, "accept": 0.0, "obj": 0.5}[a[0]]
                lvlpen = 0
                if a[0] == "obj":
                    lvlpen = max(0, info[a[1]]["level"] - lvl - 1) * 6
                if a[1] in early:
                    return d + bias - 1000.0
                return d + bias + lvlpen

            act = min(actions, key=cost)
            kind = act[0]
            if kind == "accept":
                here = act[2]
                batch = [a[1] for a in actions if a[0] == "accept" and dist(a[2], here) <= HUB_RADIUS]
                batch = batch[: max(1, LOG_LIMIT - len(accepted))]
                by_giver = {}
                for q in batch:
                    g = info[q]["start"]
                    by_giver.setdefault((g[0], g[1]), []).append(q)
                for (gk, gid), qs in by_giver.items():
                    steps.append(dict(type="accept", giver=(gk, gid), loc=info[qs[0]]["start"][2], quests=qs))
                    for q in qs:
                        pending.discard(q)
                        accepted.append(q)
                pos = here
            elif kind == "turnin":
                here = act[2]
                batch = [a[1] for a in actions if a[0] == "turnin" and dist(a[2], here) <= HUB_RADIUS]
                by_giver = {}
                for q in batch:
                    g = info[q]["end"] or info[q]["start"]
                    by_giver.setdefault((g[0], g[1]), []).append(q)
                for (gk, gid), qs in by_giver.items():
                    steps.append(dict(type="turnin", giver=(gk, gid), loc=(info[qs[0]]["end"] or info[qs[0]]["start"])[2], quests=qs))
                    for q in qs:
                        accepted.remove(q)
                        done.add(q)
                pos = here
            else:
                here = act[2]
                # gather every unfinished objective of accepted quests around here
                group = []
                for q in accepted:
                    if q in objdone:
                        continue
                    for o in info[q]["objs"]:
                        if not o.get("done") and dist(o["loc"] or info[q]["start"][2], here) <= OBJ_RADIUS:
                            group.append((q, o))
                for q, o in group:
                    o["done"] = True
                for q in {q for q, _ in group}:
                    if all(o.get("done") for o in info[q]["objs"]):
                        objdone.add(q)
                steps.append(dict(type="obj", loc=here, items=group))
                pos = here
        leftovers = sorted(pending)
        return steps, info, leftovers
