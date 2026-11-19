"""Shared quest filters for the Peon Journey generators."""
import json
import re
from pathlib import Path

from qlib import DB

SKY = 2 ** 32 + 2 ** 33
ROOT = Path(__file__).resolve().parent.parent
_EV = ROOT / "data" / "forever_evidence_quests.json"
if not _EV.exists():
    _EV = ROOT / "forever_evidence_quests.json"
EVIDENCE = set(json.loads(_EV.read_text()))


def objective_order_fixes():
    src = (ROOT / "qdb" / "foreverQuestFixes.lua").read_text()
    fixes = {}
    for kind, qid in re.findall(r"QuestieCorrections\.(\w+)ObjectiveFirst\[(\d+)\]\s*=\s*true", src):
        fixes[int(qid)] = kind
    return fixes


def reorder_objectives(info, fixes):
    for q, i in info.items():
        k = fixes.get(q)
        if not k:
            continue
        want = {"item": "item", "killCredit": "killcredit", "object": "object"}.get(k)
        objs = i["objs"]
        i["objs"] = [o for o in objs if o["kind"] == want] + [o for o in objs if o["kind"] != want]


def leveling_quest(db: DB, qid, faction):
    """normal, non-class, non-profession, non-repeatable quest this faction can take"""
    q = db.Q.get(qid)
    if not q:
        return False
    if not db.available_for(qid, faction):
        return False
    races = db.g(q, 6, 0) or 0
    if races and (races & ~SKY) == 0:
        return False  # Skyborne-only
    if db.g(q, 7):
        return False  # class quest
    if db.g(q, 18):
        return False  # profession quest
    if (db.g(q, 24, 0) or 0) & 1:
        return False  # repeatable
    if qid >= 79000 and qid not in EVIDENCE:
        return False  # Era/SoD leftover with no sign of existing in Forever
    name = db.g(q, 1, "") or ""
    if re.search(r"Mission [IVXL]+:", name):
        return False
    if name.startswith("Craftsman's Writ") or name.startswith("<") or "[DEPRECATED]" in name.upper() \
            or name.startswith("zz") or "UNUSED" in name.upper() or "PH" == name[:2]:
        return False
    return True


def drop_exclusive(db: DB, qids):
    keep = []
    s = set(qids)
    for q in sorted(qids):
        ex = db.lst(db.g(db.Q[q], 16))
        if any(e in s and e in keep for e in ex):
            continue
        keep.append(q)
    return keep
