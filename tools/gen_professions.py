"""Generate Peon Journey profession guides (1-300) from the research JSON + QuestieDB NPC/object data.

Usage: python -I gen_professions.py <data_forever.json> <out_dir> <research json...>
"""
import json
import math
import re
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from qlib import DB  # noqa: E402
from router import fmt  # noqa: E402
from emit import guide, lua_safe  # noqa: E402

DATA, OUT = sys.argv[1], Path(sys.argv[2])
OUT.mkdir(parents=True, exist_ok=True)
db = DB(DATA)
GROUP = "Peon Journey 4 - Professions"

KEYWORD = {"alchemy": "Alchemist", "blacksmithing": "Blacksmith", "enchanting": "Enchanter",
           "engineering": "Engineer", "leatherworking": "Leatherworker", "tailoring": "Tailor",
           "cooking": "Cooking", "first aid": "First Aid", "firstaid": "First Aid", "fishing": "Fishing",
           "herbalism": "Herbalism", "mining": "Mining", "skinning": "Skinning", "jewelcrafting": "Jewelcraft"}
CAPITALS = {"Alliance": [1453, 1455, 1457], "Horde": [1454, 1458, 1456]}
ZONE_UI = {
    "Elwynn Forest": 1429, "Dun Morogh": 1426, "Teldrassil": 1438, "Darkshore": 1439, "Westfall": 1436,
    "Loch Modan": 1432, "Redridge Mountains": 1433, "Duskwood": 1431, "Durotar": 1411, "Mulgore": 1412,
    "Tirisfal Glades": 1420, "Silverpine Forest": 1421, "The Barrens": 1413, "Barrens": 1413,
    "Stonetalon Mountains": 1442, "Ashenvale": 1440, "Hillsbrad Foothills": 1424, "Alterac Mountains": 1416,
    "Arathi Highlands": 1417, "Thousand Needles": 1441, "Stranglethorn Vale": 1434, "Dustwallow Marsh": 1445,
    "Swamp of Sorrows": 1435, "Badlands": 1418, "Feralas": 1444, "Tanaris": 1446, "The Hinterlands": 1425,
    "Hinterlands": 1425, "Blasted Lands": 1419, "Felwood": 1448, "Un'Goro Crater": 1449, "Burning Steppes": 1428,
    "Winterspring": 1452, "Eastern Plaguelands": 1423, "Western Plaguelands": 1422, "Silithus": 1451,
    "Searing Gorge": 1427, "Azshara": 1447, "Desolace": 1443, "Wetlands": 1437, "Deadwind Pass": 1430,
    "Riverglades": 2548, "Mount Hyjal": 2482, "Shen'dralas": 2652, "Zephras Isle": 2521, "Moonglade": 1450,
    "Stormwind City": 1453, "Ironforge": 1455, "Darnassus": 1457, "Orgrimmar": 1454, "Undercity": 1458,
    "Thunder Bluff": 1456,
}
TOWNS = {
    "Booty Bay": (1434, 27.0, 77.0), "Gadgetzan": (1446, 51.5, 28.5), "Everlook": (1452, 61.0, 38.0),
    "Ratchet": (1413, 62.5, 37.5), "Light's Hope Chapel": (1423, 81.0, 59.0), "Thorium Point": (1427, 38.0, 27.0),
    "Feathermoon Stronghold": (1444, 31.0, 43.0), "Stonard": (1435, 46.0, 54.0), "Cenarion Hold": (1451, 51.0, 38.0),
}

NPC_BY_NAME = {}
for nid, n in db.N.items():
    nm = db.g(n, 1)
    if nm:
        NPC_BY_NAME.setdefault(nm, []).append(nid)

OBJ_BY_NAME = {}
for oid, o in db.O.items():
    nm = db.g(o, 1)
    if nm:
        OBJ_BY_NAME.setdefault(nm, []).append(oid)


def friendly(nid, faction):
    f = db.g(db.N.get(nid), 13) or ""
    return (faction == "Alliance" and "A" in f) or (faction == "Horde" and "H" in f)


def npc_loc(nid):
    sp = db.spawns("npc", nid)
    return sp[0] if sp else None


def find_trainer(key, faction, rank_words=("Expert", "Trainer", "Journeyman")):
    kw = KEYWORD[key]
    best = None
    for nid, n in db.N.items():
        sub = db.g(n, 14) or ""
        if kw not in sub or not friendly(nid, faction):
            continue
        if not any(w in sub for w in rank_words):
            continue
        loc = npc_loc(nid)
        if not loc or loc[0] not in CAPITALS[faction]:
            continue
        score = (CAPITALS[faction].index(loc[0]), 0 if "Expert" in sub or "Trainer" in sub else 1)
        if best is None or score < best[0]:
            best = (score, nid, loc)
    return best[1:] if best else None


def find_named_npcs(text, faction, kw=None):
    """NPC names from free text that exist in the DB and suit the faction.
    Longest names win so 'Kylanna' never matches inside 'Kylanna Windwhisper'."""
    masked = text
    hits = []
    for name in sorted((n for n in NPC_BY_NAME if len(n) >= 4 and n in text), key=len, reverse=True):
        pos = masked.find(name)
        if pos < 0:
            continue
        before = masked[pos - 1] if pos > 0 else " "
        after = masked[pos + len(name)] if pos + len(name) < len(masked) else " "
        if before.isalnum() or after.isalnum():
            continue
        masked = masked[:pos] + "#" * len(name) + masked[pos + len(name):]
        for nid in NPC_BY_NAME[name]:
            f = db.g(db.N.get(nid), 13) or ""
            if f and not friendly(nid, faction):
                continue
            loc = npc_loc(nid)
            if loc:
                hits.append((pos, nid, name, loc))
                break
    hits.sort()
    return [(nid, name, loc) for _, nid, name, loc in hits]


def g(loc):
    return f"    .goto {loc[0]},{fmt(round(loc[1], 2))},{fmt(round(loc[2], 2))}"


def node_names(target):
    names = []
    for part in re.split(r",\s*(?![^()]*\))", target or ""):
        part = re.sub(r"\([^)]*\)", "", part).strip()
        part = re.sub(r"^(also|and)\s+", "", part)
        if part and part in OBJ_BY_NAME:
            names.append(part)
    return names


def node_loop(node_name, zone, max_points=24):
    ui = ZONE_UI.get(zone)
    if not ui:
        return None
    pts = []
    for nm in node_names(node_name):
        for oid in OBJ_BY_NAME[nm]:
            pts += [(x, y) for u, x, y in db.spawns("object", oid) if u == ui]
    if len(pts) < 6:
        return None
    # bin into a grid, keep the busiest cells, then walk them nearest-neighbour
    cells = {}
    for x, y in pts:
        k = (int(x // 6), int(y // 6))
        cells.setdefault(k, []).append((x, y))
    top = sorted(cells.values(), key=len, reverse=True)[:max_points]
    cent = [(sum(p[0] for p in c) / len(c), sum(p[1] for p in c) / len(c)) for c in top]
    route = [min(cent, key=lambda p: p[1])]
    rest = [p for p in cent if p is not route[0]]
    while rest:
        nxt = min(rest, key=lambda p: math.hypot(p[0] - route[-1][0], p[1] - route[-1][1]))
        route.append(nxt)
        rest.remove(nxt)
    route.append(route[0])
    return ui, route, len(pts)


def mats_text(mats):
    return ", ".join(f"{q} {lua_safe(n)}" for n, q in mats)


def vendor_steps(source, faction):
    """'vendor: Name, Zone (Faction)' -> goto + buy step if we can find the NPC"""
    out = []
    if not source or not source.lower().startswith("vendor"):
        return out
    hits = find_named_npcs(source, faction)
    if hits:
        nid, name, loc = hits[0]
        out += [g(loc), f"    >>Buy the recipe from |cRXP_FRIENDLY_{lua_safe(name)}|r", f"    .target {lua_safe(name)}"]
    else:
        out.append(f"    >>Recipe: {lua_safe(source)}")
    return out


RANKS = [("Apprentice", 0, 75), ("Journeyman", 50, 150), ("Expert", 125, 225), ("Artisan", 200, 300)]


def train_step(p, faction, rank, at_skill, cap, artisan_text):
    key = p["skill_key"]
    disp = p["profession"]
    out = ["step"]
    if rank == "Artisan" and artisan_text:
        hits = find_named_npcs(artisan_text, faction)
        if hits:
            nid, name, loc = hits[0]
            out += [g(loc), f"    >>Talk to |cRXP_FRIENDLY_{lua_safe(name)}|r and train Artisan {disp}",
                    f"    .target {lua_safe(name)}"]
        else:
            out.append(f"    >>Train Artisan {disp}")
        out.append("    *" + lua_safe(artisan_text[:240]))
    else:
        t = find_trainer(key, faction)
        if t:
            nid, loc = t
            name = lua_safe(db.npc_name(nid))
            out += [g(loc), f"    >>Talk to |cRXP_FRIENDLY_{name}|r and train {rank} {disp}", f"    .target {name}"]
        else:
            out.append(f"    >>Train {rank} {disp} at your capital's {disp} trainer")
    if rank == "Apprentice":
        out.append(f"    .skill {key},1 >>Learn Apprentice {disp}")
    else:
        out.append(f"    .maxskill {key},{cap} >>Train {rank} {disp} (needs skill {at_skill})")
    return out


def profession_guide(p, faction):
    p = dict(p)
    p["skill_key"] = p["skill_key"].lower().replace("first aid", "firstaid").replace("first_aid", "firstaid").replace(" ", "")
    tag = "A" if faction == "Alliance" else "H"
    kind = p.get("kind", "crafting")
    sub = {"gathering": "Gathering", "secondary": "Secondary"}.get(kind, "Crafting")
    name = f"1-300 {p['profession']}"
    header = ["#forever", "#version 1", f"<< {faction}", f"#group {GROUP}", f"#subgroup {sub}",
              f"#name {name} ({tag})", f"#displayname {name}"]
    body = ["step", f"    +|cRXP_WARN_{lua_safe(p['profession'])} 1-300 for WoW Forever.|r Read the notes, then click to start."]
    for ch in (p.get("forever_changes") or [])[:6]:
        body.append("    *" + lua_safe(re.sub(r"\s*\([^)]*(wowhead|conquest|wiki|method|dving|wow-prof)[^)]*\)", "", ch, flags=re.I))[:230])
    if p.get("total_mats"):
        body += ["step", "    +|cRXP_WARN_Shopping list for the whole route|r (buy or farm before you start). Click when ready."]
        mats = p["total_mats"]
        for i in range(0, len(mats), 4):
            body.append("    *" + mats_text(mats[i:i + 4]))
        if p.get("total_mats_note"):
            body.append("    *" + lua_safe(p["total_mats_note"])[:220])
    trained = {"Apprentice": False}
    body += train_step(p, faction, "Apprentice", 0, 75, None)
    art = p.get("artisan_trainer_notes", "")
    for st in p["steps"]:
        frm, to = st["from"], st["to"]
        for rank, need, cap in RANKS[1:]:
            if not trained.get(rank) and to > need and frm >= need - 5:
                body += train_step(p, faction, rank, need, cap, art if rank == "Artisan" else None)
                trained[rank] = True
        sk = p["skill_key"]
        if st.get("recipe"):
            src = st.get("recipe_source", "trainer") or "trainer"
            vend = vendor_steps(src, faction) if src.lower().startswith("vendor") else []
            if vend:
                body += ["step", "    #completewith next"] + vend
            line = f"    .skill {sk},{to} >>Craft {st.get('crafts', '?')}x {lua_safe(st['recipe'])} until {to}"
            body += ["step"]
            if st.get("mats_per_craft"):
                body.append("    *Each craft: " + mats_text(st["mats_per_craft"]))
            if src and not src.lower().startswith("trainer") and not vend:
                body.append("    *Recipe: " + lua_safe(src)[:200])
            if st.get("note"):
                body.append("    *" + lua_safe(re.sub(r"\s*\([^)]*(wowhead|conquest|wiki|method)[^)]*\)", "", st["note"], flags=re.I))[:220])
            body.append(line)
        else:
            target = st.get("node_or_target") or "nodes"
            zones = st.get(f"zones_{faction.lower()}") or []
            zones = zones + (st.get("zones_neutral") or [])
            body += ["step"]
            loop, z = None, None
            for cand in zones[:5]:
                lp = node_loop(target, cand)
                if lp and (loop is None or lp[2] > loop[2] * 1.5):
                    loop, z = lp, cand
            zt = ", ".join(lua_safe(z) for z in zones[:4]) or "suitable zones"
            body.append(f"    >>Gather |cRXP_PICK_{lua_safe(target)}|r in {zt}")
            if loop:
                ui, route, n = loop
                coords = ",".join(f"{fmt(round(x, 1))},{fmt(round(y, 1))}" for x, y in route)
                body.append(f"    *The loop follows {n} known node spawns in {lua_safe(z)}. Press M to see the route.")
                body.append(f"    .loop 40,{ui},{coords}")
            if st.get("note"):
                body.append("    *" + lua_safe(st["note"])[:220])
            body.append(f"    .skill {sk},{to} >>Reach {to} {lua_safe(p['profession'])}")
    body += ["step", f"    +|cRXP_WARN_{lua_safe(p['profession'])} 300 done.|r Zug zug."]
    return name, tag, guide(header, body)


files = []
for path in sys.argv[3:]:
    if not Path(path).exists():
        print("skip missing", path)
        continue
    for p in json.loads(Path(path).read_text()):
        if p.get("skip"):
            continue
        for faction in ("Alliance", "Horde"):
            name, tag, text = profession_guide(p, faction)
            fn = f"P_{''.join(ch if ch.isalnum() else '_' for ch in name)}_{tag}.lua"
            (OUT / fn).write_text(text)
            files.append(fn)
(OUT / "prof_files.txt").write_text("\n".join(files) + "\n")
print(len(files), "profession guides")
