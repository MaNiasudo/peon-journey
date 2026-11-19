"""Helpers over the merged QuestieDB Forever JSON (data_forever.json)."""
import json
import math
from functools import lru_cache
from pathlib import Path

A_RACES = 1 + 4 + 8 + 64 + 2 ** 32
H_RACES = 2 + 16 + 32 + 128 + 2 ** 33


def ent_id_txt(e):
    if isinstance(e, list):
        return (e[0] if e else None), (e[1] if len(e) > 1 and isinstance(e[1], str) else None)
    if isinstance(e, dict):
        t = e.get("2")
        return e.get("1"), (t if isinstance(t, str) else None)
    return e, None


class DB:
    def __init__(self, path):
        d = json.loads(Path(path).read_text())
        self.Q = {int(k): v for k, v in d["quest"].items()}
        self.N = {int(k): v for k, v in d["npc"].items()}
        self.O = {int(k): v for k, v in d["object"].items()}
        self.I = {int(k): v for k, v in d["item"].items()}
        self.area = {int(k): v for k, v in d["areaToUi"].items()}
        self.Z = d["zoneEnum"]
        self.zname = {v: k for k, v in self.Z.items()}

    # ---------- generic getters
    @staticmethod
    def g(row, idx, default=None):
        if row is None:
            return default
        v = row.get(str(idx))
        return default if v is None else v

    @staticmethod
    def lst(v):
        if v is None:
            return []
        if isinstance(v, dict):
            return [x for _, x in sorted(v.items(), key=lambda kv: int(kv[0])) if x is not None]
        if isinstance(v, list):
            return [x for x in v if x is not None]
        return [v]

    @staticmethod
    def grp(v, i):
        """questgiver/objective groups may be list or dict"""
        if v is None:
            return []
        if isinstance(v, list):
            r = (v[i - 1] if len(v) >= i else None) or []
        else:
            r = v.get(str(i)) or []
        return DB.lst(r) if isinstance(r, dict) else r

    def qname(self, qid):
        return self.g(self.Q.get(qid), 1, f"Quest {qid}")

    def npc_name(self, nid):
        if not isinstance(nid, int):
            return "target"
        return self.g(self.N.get(nid), 1, f"NPC {nid}")

    def obj_name(self, oid):
        if not isinstance(oid, int):
            return "object"
        return self.g(self.O.get(oid), 1, f"Object {oid}")

    def item_name(self, iid):
        if not isinstance(iid, int):
            return "item"
        return self.g(self.I.get(iid), 1, f"Item {iid}")

    # ---------- faction
    def quest_faction(self, qid):
        q = self.Q.get(qid) or {}
        races = self.g(q, 6, 0) or 0
        a = (races & A_RACES) != 0 if races else True
        h = (races & H_RACES) != 0 if races else True
        if races and (races & A_RACES) == races:
            h = False
        if races and (races & H_RACES) == races:
            a = False
        # NPC givers: the quest is open to a faction if ANY giver talks to that faction
        givers = self.grp(self.g(q, 2), 1)
        if givers and not self.grp(self.g(q, 2), 2) and not self.grp(self.g(q, 2), 3):
            ga = gh = False
            for nid in givers:
                f = self.g(self.N.get(nid), 13)
                if f is None or f == "" or "A" in f:
                    ga = True
                if f is None or f == "" or "H" in f:
                    gh = True
            a, h = a and ga, h and gh
        return a, h

    def available_for(self, qid, faction):
        a, h = self.quest_faction(qid)
        return a if faction == "Alliance" else h

    # ---------- locations
    def ui_of_area(self, area):
        info = self.area.get(int(area))
        return info["ui"] if info else None

    def spawns(self, kind, eid):
        if not isinstance(eid, int):
            return []
        row = (self.N if kind == "npc" else self.O).get(eid)
        if not row:
            return []
        sp = self.g(row, 7 if kind == "npc" else 4) or {}
        out = []
        if isinstance(sp, list):
            sp = {str(i + 1): v for i, v in enumerate(sp)}
        for area, coords in sp.items():
            ui = self.ui_of_area(area)
            if ui is None or not coords:
                continue
            for c in coords:
                if isinstance(c, list) and len(c) >= 2 and isinstance(c[0], (int, float)) and c[0] >= 0:
                    out.append((ui, float(c[0]), float(c[1])))
        return out

    def giver_locs(self, qid, which=2):
        q = self.Q.get(qid) or {}
        v = self.g(q, which)
        locs = []
        names = []
        for nid in self.grp(v, 1):
            s = self.spawns("npc", nid)
            if s:
                locs.append(("npc", nid, s))
        for oid in self.grp(v, 2):
            s = self.spawns("object", oid)
            if s:
                locs.append(("object", oid, s))
        if which == 2:
            for iid in self.grp(v, 3):
                locs.append(("item", iid, self.item_drop_spawns(iid)))
        return locs

    def item_drop_spawns(self, iid):
        it = self.I.get(iid) or {} if isinstance(iid, int) else {}
        out = []
        for nid in self.lst(self.g(it, 2))[:12]:
            out += self.spawns("npc", nid)
        for oid in self.lst(self.g(it, 3))[:12]:
            out += self.spawns("object", oid)
        return out

    def objectives(self, qid):
        """list of dicts: kind,id,name,text,spawns"""
        q = self.Q.get(qid) or {}
        obj = self.g(q, 10)
        res = []
        for ent in self.grp(obj, 1):
            nid, txt = ent_id_txt(ent)
            res.append(dict(kind="mob", id=nid, name=self.npc_name(nid), text=txt, spawns=self.spawns("npc", nid)))
        for ent in self.grp(obj, 2):
            oid, txt = ent_id_txt(ent)
            res.append(dict(kind="object", id=oid, name=self.obj_name(oid), text=txt, spawns=self.spawns("object", oid)))
        for ent in self.grp(obj, 3):
            iid, txt = ent_id_txt(ent)
            vend = [v for v in self.lst(self.g(self.I.get(iid) if isinstance(iid, int) else None, 14)) if isinstance(v, int)][:40]
            res.append(dict(kind="item", id=iid, name=self.item_name(iid), text=txt, spawns=self.item_drop_spawns(iid),
                            vendors=vend,
                            droppers=[self.npc_name(n) for n in self.lst(self.g(self.I.get(iid), 2))[:4]],
                            objects=[self.obj_name(o) for o in self.lst(self.g(self.I.get(iid), 3))[:3] if o in self.O and self.g(self.O[o], 1)]))
        rep = self.grp(obj, 4)
        if rep:
            res.append(dict(kind="rep", id=None, name="reputation", text=None, spawns=[]))
        for ent in self.grp(obj, 5):
            if isinstance(ent, dict):
                ent = [ent.get("1"), ent.get("2"), ent.get("3")]
            if isinstance(ent, list) and ent:
                ids = self.lst(ent[0]) if isinstance(ent[0], (list, dict)) else [ent[0]]
                base = ent[1] if len(ent) > 1 else (ids[0] if ids else None)
                txt = ent[2] if len(ent) > 2 else None
                sp = []
                for n in ids[:10]:
                    sp += self.spawns("npc", n)
                res.append(dict(kind="killcredit", id=base, name=txt or self.npc_name(base), text=txt, spawns=sp))
        for ent in self.grp(obj, 6):
            if isinstance(ent, dict):
                ent = [ent.get("1"), ent.get("2")]
            res.append(dict(kind="spell", id=ent[0] if isinstance(ent, list) else ent,
                            name=(ent[1] if isinstance(ent, list) and len(ent) > 1 else "Use spell"), text=None, spawns=[]))
        trig = self.g(q, 9)
        if trig:
            sp = []
            tz = trig.get("2") if isinstance(trig, dict) else (trig[1] if len(trig) > 1 else None)
            txt = trig.get("1") if isinstance(trig, dict) else trig[0]
            if isinstance(tz, dict):
                for area, coords in tz.items():
                    ui = self.ui_of_area(area)
                    for c in coords or []:
                        if ui and isinstance(c, list) and len(c) >= 2:
                            sp.append((ui, float(c[0]), float(c[1])))
            res.append(dict(kind="event", id=None, name=txt or "Explore", text=txt, spawns=sp))
        return res

    def prereqs(self, qid):
        q = self.Q.get(qid) or {}
        return self.lst(self.g(q, 12)), self.lst(self.g(q, 13))


def centroid(points, ui=None):
    pts = [p for p in points if ui is None or p[0] == ui]
    if not pts:
        return None
    # pick the densest point (medoid of a sample) rather than the mean, so a split spawn
    # area doesn't put the arrow in the empty middle
    sample = pts[:60]
    best, bestscore = None, None
    for p in sample:
        s = sum(math.hypot(p[1] - o[1], p[2] - o[2]) < 6 for o in pts)
        if bestscore is None or s > bestscore:
            best, bestscore = p, s
    return best


def dist(a, b):
    if a is None or b is None:
        return 1e9
    if a[0] != b[0]:
        return 400.0
    return math.hypot(a[1] - b[1], a[2] - b[2])
