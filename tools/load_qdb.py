"""Merge QuestieDB Forever data (base + correction layers) into one JSON file.

Pure data parsing (tools/luadata.py); nothing from the downloaded files is executed.
Usage: python -I load_qdb.py <qdb_dir> <out.json>
"""
import json
import re
import sys
from collections import Counter
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from luadata import parse_value, find_return_table  # noqa: E402

QDB = Path(sys.argv[1])
OUT = Path(sys.argv[2])


def read(name):
    return (QDB / name).read_text(encoding="utf-8")


def keys_table(src, marker):
    i = src.find(marker)
    j = src.find("{", i)
    return parse_value(src, lambda p: 0, j)


# ---- enums
zones_src = read("zones.lua")
ZONE = keys_table(zones_src, "constants.zoneIDs =")
quests_src = read("quests.lua")
SORT = keys_table(quests_src, "constants.sortKeys =")
SPECIAL = keys_table(quests_src, "constants.specialFlags =")
QFLAGS = keys_table(quests_src, "constants.questFlags =") if "constants.questFlags" in quests_src else {}
RANKS = {"NORMAL": 0, "ELITE": 1, "RARE_ELITE": 2, "BOSS": 3, "RARE": 4}
PROF = keys_table(read("professions.lua"), "constants.professionKeys =")
exp_src = read("expansions.lua")
CLASSES = keys_table(exp_src, "classKeys =")
fi = exp_src.find("Forever = {")
NPCFLAGS = keys_table(exp_src[fi:], "npcFlags =")
A_RACES = 1 + 4 + 8 + 64
H_RACES = 2 + 16 + 32 + 128
SKY_A, SKY_H = 2 ** 32, 2 ** 33
RACES = {"NONE": 0, "HUMAN": 1, "ORC": 2, "DWARF": 4, "NIGHT_ELF": 8, "UNDEAD": 16, "TAUREN": 32,
         "GNOME": 64, "TROLL": 128, "GOBLIN": 256, "SKYBORNE_ALLIANCE": SKY_A, "SKYBORNE_HORDE": SKY_H,
         "ALL_ALLIANCE": A_RACES + SKY_A, "ALL_HORDE": H_RACES + SKY_H}

# entity keys from the base files
def entity_keys(fname, kind):
    src = read(fname)
    return src, keys_table(src, f"QuestieDB.{kind}Keys =")


BASE = {}
KEYS = {}
for fname, kind in [("foreverQuestDB.lua", "quest"), ("foreverNpcDB.lua", "npc"),
                    ("foreverObjectDB.lua", "object"), ("foreverItemDB.lua", "item")]:
    src, k = entity_keys(fname, kind)
    KEYS[kind] = k
    BASE[kind] = src

UNKNOWN = Counter()
CATS = {
    "questKeys": ("keys", "quest"), "npcKeys": ("keys", "npc"), "objectKeys": ("keys", "object"),
    "itemKeys": ("keys", "item"),
    "zoneIDs": ZONE, "sortKeys": SORT, "raceIDs": RACES, "raceKeys": RACES, "classIDs": CLASSES,
    "classKeys": CLASSES, "npcRanks": RANKS, "npcFlags": NPCFLAGS, "specialFlags": SPECIAL,
    "questFlags": QFLAGS, "profKeys": PROF, "professionKeys": PROF,
}


def resolve(path):
    p = [x for x in path if x not in ("QuestieDB", "ZoneDB", "QuestieProfessions")]
    if len(p) >= 2 and p[-2] in CATS:
        cat, name = CATS[p[-2]], p[-1]
        if isinstance(cat, tuple):
            keys = KEYS[cat[1]]
            for suf, off in (("_add", 1000), ("_remove", -1000)):
                if name.endswith(suf) and name[:-len(suf)] in keys:
                    return keys[name[:-len(suf)]] + off
            if name in keys:
                return keys[name]
        elif name in cat:
            return cat[name]
    UNKNOWN[".".join(path)] += 1
    return 0


def norm(v):
    """dict with keys 1..n -> list; recursive"""
    if isinstance(v, dict):
        v = {k: norm(x) for k, x in v.items()}
        if v and all(isinstance(k, int) for k in v) and sorted(v) == list(range(1, len(v) + 1)):
            return [v[i] for i in range(1, len(v) + 1)]
        return v
    return v


def as_map(v):
    if v is None:
        return {}
    if isinstance(v, list):
        return {i + 1: x for i, x in enumerate(v)}
    return dict(v)


def load_base(kind):
    src = BASE[kind]
    i = src.find(f"QuestieDB.{kind}Data = [[")
    j = src.find("return", i)
    t = parse_value(src, resolve, src.find("{", j))
    return {int(k): as_map(norm(v)) for k, v in t.items()}


data = {k: load_base(k) for k in ["quest", "npc", "object", "item"]}
print({k: len(v) for k, v in data.items()}, flush=True)

QUEST_GROUPED = {2, 3, 10}
SPAWNISH = {7, 8}


def grouped(kind, idx):
    return (kind == "quest" and idx in QUEST_GROUPED) or (kind in ("npc", "object") and idx in SPAWNISH) \
        or (kind == "item" and idx in (2, 3, 4, 5))


def add_values(kind, idx, old, val):
    if old is None:
        return val
    if grouped(kind, idx):
        om, vm = as_map(old), as_map(val)
        for g, items in vm.items():
            if items is None:
                continue
            cur = om.get(g)
            if isinstance(cur, list) and isinstance(items, list):
                for it in items:
                    if it not in cur:
                        cur.append(it)
            else:
                om[g] = items
        return om
    if isinstance(old, list) and isinstance(val, list):
        return old + [x for x in val if x not in old]
    return val


def remove_values(old, val):
    if isinstance(old, list) and isinstance(val, list):
        return [x for x in old if x not in val]
    if isinstance(old, dict):
        for g, items in as_map(val).items():
            if isinstance(old.get(g), list) and isinstance(items, list):
                old[g] = [x for x in old[g] if x not in items]
    return old


def apply_layer(kind, fname):
    src = read(fname)
    pos = find_return_table(src, ":Load()")
    if pos < 0:
        print("no Load table in", fname)
        return
    tbl = parse_value(src, resolve, pos)
    n = 0
    for eid, row in tbl.items():
        if not isinstance(eid, (int, float)):
            continue
        ent = data[kind].setdefault(int(eid), {})
        for idx, val in as_map(row).items():
            idx = int(idx)
            val = norm(val)
            if idx > 900:
                ent[idx - 1000] = add_values(kind, idx - 1000, ent.get(idx - 1000), val)
            elif idx < -900:
                ent[idx + 1000] = remove_values(ent.get(idx + 1000), val)
            else:
                ent[idx] = val
        n += 1
    print(f"  {fname}: {n} rows", flush=True)


for kind, f in [
    ("quest", "foreverBaseQuest.lua"), ("npc", "foreverBaseNpc.lua"), ("object", "foreverBaseObject.lua"),
    ("quest", "foreverQuestTraces.lua"), ("npc", "foreverNpcTraces.lua"), ("object", "foreverObjectTraces.lua"),
    ("quest", "foreverQuestRelationTraces.lua"),
    ("quest", "foreverQuestFixes.lua"), ("npc", "foreverNPCFixes.lua"), ("object", "foreverObjectFixes.lua"),
    ("item", "foreverBaseItem.lua"), ("item", "foreverItemTraces.lua"), ("item", "foreverItemFixes.lua"),
]:
    apply_layer(kind, f)

print("unknown refs:", UNKNOWN.most_common(25))

amap = {}
for m in re.finditer(r"\[(\d+)\]\s*=\s*(\d+),\s*--\s*(.*)", read("areaIdToUiMapId.lua")):
    amap[int(m.group(1))] = {"ui": int(m.group(2)), "name": m.group(3).strip()}


def jsonable(o):
    if isinstance(o, dict):
        return {str(k): jsonable(v) for k, v in o.items()}
    if isinstance(o, list):
        return [jsonable(x) for x in o]
    return o


OUT.write_text(json.dumps(jsonable({
    "quest": data["quest"], "npc": data["npc"], "object": data["object"], "item": data["item"],
    "areaToUi": amap, "zoneEnum": ZONE, "keys": KEYS,
})))
print("wrote", OUT, OUT.stat().st_size)
