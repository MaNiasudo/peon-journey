"""Match researched class quests to Forever quest IDs, with pick-up / quest / equip levels.
Usage: python -I make_class_plan.py <data_forever.json> <class_quests.json> <out class_plan.json>"""
import json, re, sys
from pathlib import Path
sys.path.insert(0, str(Path(__file__).resolve().parent))
from qlib import DB
from common import EVIDENCE
db = DB(sys.argv[1]); R = json.loads(Path(sys.argv[2]).read_text())
CL = {'Warrior': 1, 'Paladin': 2, 'Hunter': 4, 'Rogue': 8, 'Priest': 16, 'Shaman': 64, 'Mage': 128, 'Warlock': 256, 'Druid': 1024}
byname = {}
for q, r in db.Q.items():
    byname.setdefault(db.g(r, 1, ''), []).append(q)
item_by_name = {}
for iid, it in db.I.items():
    item_by_name.setdefault(db.g(it, 1, ''), []).append(iid)


def names_in(text):
    out = []
    for part in re.split(r";|\bthen\b|,", text or ""):
        part = re.sub(r"\(.*?\)", "", part).strip(" .")
        for p in part.split(" / "):
            p = p.strip()
            if p and p in byname:
                out.append(p)
    return out


def ok_for(q, mask):
    c = db.g(db.Q[q], 7, 0) or 0
    return (not c or c & mask) and not (q >= 79000 and q not in EVIDENCE)


def chain_after(q):
    out, cur = [q], q
    for _ in range(15):
        n = db.g(db.Q.get(cur), 22)
        if not n or n not in db.Q or n in out:
            break
        out.append(n); cur = n
    return out


def chain_before(q, seen=None):
    seen = seen if seen is not None else set()
    g, s = db.prereqs(q)
    for p in g + s[:1]:
        if p in db.Q and p not in seen:
            seen.add(p); chain_before(p, seen)
    return seen


# research names that are race lists or Classic spellings: their real Forever quest IDs
OVERRIDE = {
    "Paladin": {"The Tome of Nobility": [4485, 4486, 94971]},
    "Mage": {"Manaweave Robe": [1941, 1962], "Astral Knot Garment": [1942, 1946]},
    "Druid": {"Torwa Pathfinder": [9063], "The Emerald Dream": [7506], "Dire Maul class book": [7506]},
}
out = {}
for cls, d in R["classes"].items():
    mask = CL[cls]; out[cls] = {}
    for sec in ("item_quests", "ability_quests", "level60"):
        rows = []
        for e in d.get(sec, []):
            cand = names_in(e.get("start_quest")) or names_in(e.get("quest_or_chain")) or names_in(e.get("chain"))
            ids = sorted({q for n in cand for q in byname[n] if ok_for(q, mask)})
            txt = " ".join(str(e.get(k, "")) for k in ("start_quest", "quest_or_chain", "chain"))
            for key, forced in OVERRIDE.get(cls, {}).items():
                if key in txt:
                    ids = forced
            info = dict(e); info["ids"] = ids
            if ids:
                # pick-up level: lowest required level of the first quest(s), including their pre-quests
                firsts = set(ids)
                for q in ids:
                    firsts |= chain_before(q)
                # the chain's own first quest decides when you can start (not ancient starter quests)
                req = [db.g(db.Q[q], 4, 0) for q in ids if db.g(db.Q[q], 4, 0)]
                if not req:
                    req = [db.g(db.Q[q], 4, 0) for q in firsts if db.g(db.Q[q], 4, 0)]
                minreq = min(req) if req else 0
                qlv = [db.g(db.Q[q], 5, 0) for q in ids if db.g(db.Q[q], 5, 0)]
                # recommended start: a few levels under the first quest, never below what the game allows
                info["pickup_level"] = max(minreq, (min(qlv) - 3) if qlv else 0) or None
                info["min_level"] = minreq or None
                steps = set(firsts)
                for q in ids:
                    steps |= set(chain_after(q))
                info["steps"] = len(steps)
                # the quest that hands out the reward, and the level the item can be equipped
                rew_names = [n.strip() for n in re.split(r",|\bor\b|;|:|\bplus\b|\band\b", re.sub(r"\(.*?\)", "", e.get("reward") or ""), flags=re.I) if n.strip()]
                equip, rlv, ilvl = [], [], []
                for n in rew_names:
                    n = re.sub(r"^(choose|pick|a choice of|either)\s+", "", n.strip(" ."), flags=re.I).strip(" .")
                    for iid in item_by_name.get(n, []):
                        it = db.I[iid]
                        rq = [q for q in db.lst(db.g(it, 6)) if q in steps]
                        if not rq:   # reward handed out by a side quest of the same class
                            rq = [q for q in db.lst(db.g(it, 6)) if q in db.Q and (db.g(db.Q[q], 7, 0) or 0) & mask]
                        if rq:
                            equip.append(db.g(it, 10, 0) or 0)
                            ilvl.append(db.g(it, 9, 0) or 0)
                            rlv += [db.g(db.Q[q], 5, 0) for q in rq]
                info["equip_level"] = max(equip) if equip else None
                info["item_level"] = max(ilvl) if ilvl else None
                info["reward_quest_level"] = max(rlv) if rlv else (db.g(db.Q[ids[0]], 5, 0) or None)
                a = h = False
                for q in ids:
                    aa, hh = db.quest_faction(q); a |= aa; h |= hh
                info["fac_data"] = "Both" if a and h else "Alliance" if a else "Horde"
            rows.append(info)
        out[cls][sec] = rows
Path(sys.argv[3]).write_text(json.dumps(out, indent=1))
m = sum(1 for c in out for s in out[c] for r in out[c][s] if r["ids"])
t = sum(len(out[c][s]) for c in out for s in out[c])
print(f"matched {m}/{t}")
for r in out["Warrior"]["item_quests"] + out["Paladin"]["item_quests"][:4] + out["Warlock"]["item_quests"][:4]:
    print(f"  pick up {r.get('pickup_level')}, quest {r.get('reward_quest_level')}, ilvl {r.get('item_level')}, equip {r.get('equip_level')}  | {r['quest_or_chain'][:40]}")
