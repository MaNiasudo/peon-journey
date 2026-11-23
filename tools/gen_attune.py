"""Peon Journey attunement and key guides that the free RestedXP Classic-Attunements file does not have.

Usage: python -I gen_attune.py <data_forever.json> <dungeons_config.json> <attunements.json> <out_dir>

RestedXP's free Classic-Attunements.lua (Onyxia A/H, MC, BWL, UBRS key, Scholomance key A/H, BRD key, DM key) is
regrouped by build_standalone.py. This adds the Forever ones and the missing keys, from QuestieDB chains:
Dalaran Sewer Key (A/H), Krol'dok Compound Key (A/H), Scepter of Celebras (Maraudon), Mallet of Zul'Farrak, plus two
info guides (keys that drop in dungeons, which Forever raids need an attunement).
"""
import json
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from qlib import DB  # noqa: E402
from router import Router, fmt  # noqa: E402
from emit import Emitter, guide, lua_safe  # noqa: E402
from common import objective_order_fixes  # noqa: E402

DATA, DCFG, RESEARCH, OUT = sys.argv[1], sys.argv[2], sys.argv[3], Path(sys.argv[4])
OUT.mkdir(parents=True, exist_ok=True)
db = DB(DATA)
FIX = objective_order_fixes()
dungeons = json.loads(Path(DCFG).read_text())["dungeons"]
research = json.loads(Path(RESEARCH).read_text())
GROUP = "Peon Journey - Attunements"
WEIGHT = 72
AREA_DUNGEON = {a: d for d in dungeons for a in d["areas"]}


def akeys(sp):
    if isinstance(sp, list):
        return [i + 1 for i, v in enumerate(sp) if v]
    if isinstance(sp, dict):
        return [int(k) for k, v in sp.items() if v]
    return []


def dungeon_of_npc(nid):
    for a in akeys(db.g(db.N.get(nid), 7)):
        if a in AREA_DUNGEON:
            return AREA_DUNGEON[a]
    return None


class KeyRouter(Router):
    """objectives (and quest givers) inside a dungeon point at its entrance"""
    def quest_info(self, qid, prefer_ui):
        i = super().quest_info(qid, prefer_ui)
        for o in i["objs"]:
            ids = []
            if o["kind"] in ("mob", "killcredit") and isinstance(o["id"], int):
                ids = [o["id"]]
            elif o["kind"] == "item" and isinstance(o["id"], int):
                ids = db.lst(db.g(db.I.get(o["id"]), 2))[:6]
            for n in ids:
                d = dungeon_of_npc(n)
                if d and d.get("entrance"):
                    o["loc"], o["known"], o["dungeon"] = tuple(d["entrance"]), True, d["name"]
                    break
        if i["start"] is None:   # started inside a dungeon (drop or talk)
            q = db.Q[qid]
            for n in db.grp(db.g(q, 2), 1):
                d = dungeon_of_npc(n)
                if d and d.get("entrance"):
                    i["start"] = ("npc", n, tuple(d["entrance"]))
                    break
            for it in db.grp(db.g(q, 2), 3):
                for n in db.lst(db.g(db.I.get(it), 2))[:3]:
                    d = dungeon_of_npc(n)
                    if d and d.get("entrance") and i["start"] is None:
                        i["start"] = ("item", it, tuple(d["entrance"]))
        if i["end"] is None and i["start"] is not None:
            i["end"] = i["start"]
        return i


class KeyEmitter(Emitter):
    def obj(self, st, info):
        out = super().obj(st, info)
        ds = sorted({o.get("dungeon") for _, o in st["items"] if o.get("dungeon")})
        if ds:
            out.insert(2, f"    *|cRXP_WARN_Inside {lua_safe(', '.join(ds))}: bring a group.|r")
        return out


EM = KeyEmitter(db)


def research_entry(name_part, faction=None):
    for e in research["attunements"]:
        if name_part in e["name"] and (faction is None or e.get("faction") in (faction, "Both")):
            return e
    return {}


def chain_guide(name, faction, qids, intro, lo, hi, notes=()):
    r = KeyRouter(db, faction, fixes=FIX)
    steps, info, left = r.route(sorted(qids), None, lo, hi)
    if not steps:
        return None
    header = ["#forever", "#version 1", f"<< {faction}", f"#group {GROUP}", f"#groupweight {WEIGHT}",
              "#subgroup Keys and attunements", f"#name {name}", f"#displayname {name}"]
    body = ["step", f"    +|cRXP_WARN_{lua_safe(intro)}|r Click to start."]
    body += [f"    *{lua_safe(n)}" for n in notes if n]
    body += EM.render(steps, info)
    if left:
        body += ["step", "    >>|cRXP_WARN_Also part of this chain (no known pick-up spot), do them if offered:|r"]
        body += [f"    *{lua_safe(db.qname(q))}" for q in left]
        body.append("    +Done")
    body += ["step", f"    +|cRXP_WARN_Done:|r {lua_safe(name.split(' ', 1)[1])}. Click to finish."]
    return guide(header, body)


def info_guide(name, faction, lines, lo, hi):
    header = ["#forever", "#version 1"] + ([f"<< {faction}"] if faction else []) + \
        [f"#group {GROUP}", f"#groupweight {WEIGHT}", "#subgroup Keys and attunements", f"#name {name}",
         f"#displayname {name}"]
    body = ["step", f"    +|cRXP_WARN_{lua_safe(name.split(' ', 1)[1])}|r. Read, then click to close."]
    body += [f"    *{lua_safe(x)}" for x in lines]
    return guide(header, body)


def qid(name, faction):
    out = [q for q, r in db.Q.items() if db.g(r, 1) == name and db.available_for(q, faction)]
    return sorted(out)


chunks, rows = [], {"Alliance": [], "Horde": []}


def add(text, faction, lo, hi, name, title, sub, tip, kind="attune"):
    if not text:
        return
    chunks.append(text)
    for fac in ([faction] if faction else ["Alliance", "Horde"]):
        rows[fac].append(dict(lo=lo, hi=hi, kind=kind, title=title, sub=sub, group=GROUP, guide=name,
                              tip=[t for t in tip if t]))


# Dalaran Sewer Key: the only new Forever dungeon with an entry key
for faction, chain in (("Alliance", ["An Alarming Request", "Heart of Disruption"]),
                       ("Horde", ["Key to the City", "Prison Break In", "Dalaran Patrols", "Blood in the Streets",
                                  "Heart of Disruption"])):
    qs = [q for n in chain for q in qid(n, faction)]
    tag = faction[0]
    name = f"30-35 Dalaran Sewer Key ({tag})"
    e = research_entry("City of Dalaran key", faction)
    add(chain_guide(name, faction, qs, "Dalaran Sewer Key: opens the City of Dalaran dungeon (one holder opens it "
                    "for the party). New in Forever.", 30, 35,
                    [f"Chain: {' > '.join(chain)}.", "Heart of Disruption needs the Arcane Mote from inside the "
                     "City of Dalaran: bring a group for that step." ]),
        faction, 30, 35, name, "Dalaran Sewer Key", "New Forever dungeon key, solo chain + one dungeon step",
        [e.get("forever", ""), "Chain: " + " > ".join(chain)])

# Krol'dok Compound Key (Riverglades): the moulding drops from Tunk in Krol'dok Stronghold (no spawn data, so the
# steps are written here from QuestieDB ids and NPC spots)
KROL = next(d for d in dungeons if d["name"] == "Krol'dok Stronghold")["entrance"]
for faction, (mould, moulding, ingred, giver) in (("Horde", (267137, 94973, 94974, 256657)),
                                                ("Alliance", (267138, 94980, 94981, 259250))):
    g = db.spawns("npc", giver)[0]
    gname = lua_safe(db.npc_name(giver))
    name = f"38-45 Krol'dok Compound Key ({faction[0]})"
    header = ["#forever", "#version 1", f"<< {faction}", f"#group {GROUP}", f"#groupweight {WEIGHT}",
              "#subgroup Keys and attunements", f"#name {name}", f"#displayname {name}"]
    body = ["step", "    +|cRXP_WARN_Krol'dok Compound Key|r (Riverglades). Not needed to enter Krol'dok Stronghold; "
            "it opens a locked door inside (unconfirmed which). Click to start.",
            "step", f"    .goto {KROL[0]},{fmt(KROL[1])},{fmt(KROL[2])}",
            "    >>Inside |cRXP_WARN_Krol'dok Stronghold|r (with a group): kill |cRXP_ENEMY_Tunk|r, loot "
            "|cRXP_LOOT_[Krol'dok Moulding]|r and click it to start the quest",
            f"    .accept {moulding} >>Accept Krol'dok Moulding", f"    .use {mould}", "    .mob Tunk",
            "step", f"    .goto {g[0]},{fmt(g[1])},{fmt(g[2])}", f"    >>Talk to |cRXP_FRIENDLY_{gname}|r",
            f"    .turnin {moulding} >>Turn in Krol'dok Moulding", f"    .accept {ingred} >>Accept Key Ingredients",
            f"    .target {gname}",
            "step", "    >>Get |cRXP_LOOT_4 [Thick Leather]|r and |cRXP_LOOT_12 [Iron Bar]|r: Auction House, or skin and "
            "mine/smelt them yourself",
            f"    .complete {ingred},1 --Thick Leather", f"    .complete {ingred},2 --Iron Bar",
            "step", f"    .goto {g[0]},{fmt(g[1])},{fmt(g[2])}", f"    >>Talk to |cRXP_FRIENDLY_{gname}|r",
            f"    .turnin {ingred} >>Turn in Key Ingredients", f"    .target {gname}"]
    add(guide(header, body), faction, 38, 45, name, "Krol'dok Compound Key", "New Forever key: dungeon drop + materials",
        ["Loot the Krol'dok Moulding from Tunk inside Krol'dok Stronghold.", "Then 4 Thick Leather and 12 Iron Bars."])

# Maraudon: Scepter of Celebras (portal to Princess Theradras)
for faction in ("Alliance", "Horde"):
    qs = [q for n in ("Legends of Maraudon", "The Scepter of Celebras") for q in qid(n, faction)]
    name = f"41-49 Scepter of Celebras ({faction[0]})"
    add(chain_guide(name, faction, qs, "Scepter of Celebras: the shortcut portal to inner Maraudon (Princess "
                    "Theradras).", 41, 49,
                    ["Legends of Maraudon: Celebrian Rod (Noxxion, orange side) and Celebrian Diamond (Lord "
                     "Vyletongue, purple side), then defeat Celebras the Cursed and follow his ritual."]),
        faction, 41, 49, name, "Scepter of Celebras (Maraudon)", "Maraudon key chain, needs a group",
        ["Optional: the inner part is also reachable on foot."])

# Mallet of Zul'Farrak (summons Gahz'rilla): Sacred Mallet from Qiaga the Keeper, used on the Jintha'Alor altar
qiaga = next((n for n, r in db.N.items() if db.g(r, 1) == "Qiaga the Keeper"), None)
sp = db.spawns("npc", qiaga)[0] if qiaga and db.spawns("npc", qiaga) else (1425, 48.64, 68.24)
altar = next((s for o, r in db.O.items() if db.g(r, 1) == "Jintha'Alor Alter" for s in db.spawns("object", o)),
             (1425, 59.68, 77.83))
for faction in ("Alliance", "Horde"):
    name = f"45-50 Mallet of Zul'Farrak ({faction[0]})"
    header = ["#forever", "#version 1", f"<< {faction}", f"#group {GROUP}", f"#groupweight {WEIGHT}",
              "#subgroup Keys and attunements", f"#name {name}", f"#displayname {name}"]
    body = ["step", "    +|cRXP_WARN_Mallet of Zul'Farrak|r: summons Gahz'rilla in Zul'Farrak (optional boss). Not a "
            "quest: a drop plus an altar. Click to start.",
            "step", f"    .goto {sp[0]},{fmt(sp[1])},{fmt(sp[2])}",
            "    >>Kill |cRXP_ENEMY_Qiaga the Keeper|r (level 50 elite, at the Altar of Zul) and loot "
            "|cRXP_LOOT_[Sacred Mallet]|r. Bring a friend.",
            "    .collect 9241,1", "    .mob Qiaga the Keeper",
            "step", f"    .goto {altar[0]},{fmt(altar[1])},{fmt(altar[2])}",
            "    >>Climb to the top of Jintha'Alor and use the |cRXP_LOOT_[Sacred Mallet]|r at the altar there: it "
            "becomes the |cRXP_LOOT_[Mallet of Zul'Farrak]|r",
            "    .collect 9240,1", "    .use 9241"]
    add(guide(header, body), faction, 45, 50, name, "Mallet of Zul'Farrak", "Drop + altar, optional boss key",
        ["Qiaga the Keeper is a level 50 elite."])

# info: keys that drop inside dungeons (no quest), from data/research/attunements.json
DROPS = [
    "Prison Cell Key (Blackrock Depths): opens the Detention Block cells. Drops from High Interrogator Gerstahn about "
    "half the time; rogues can pick the locks.",
    "Key to the City (Stratholme): opens the Service Gate (Stratholme Undead) and inner gates. Drops from Magistrate "
    "Barthilas.",
    "Crescent Key (Dire Maul): opens Dire Maul West and North. Drops from Pusillin in Dire Maul East (chase him); "
    "300 Lockpicking works too.",
    "Gordok Courtyard Key (Dire Maul North): in Fengus's Chest. Gordok Inner Door Key: from Guard Mol'dar.",
    "Workshop Key (Gnomeregan): opens the back door. Drops from Electrocutioner 6000.",
    "The Scarlet Key (Scarlet Monastery): opens Armory and Cathedral. In Doan's Strongbox behind Arcanist Doan (Library).",
    "Overseer's Keyring (Alcaz Prison, new): opens the lower floor. Drops from Overseer Wrex on the upper floor.",
    "Krol'dok Ogre Key (Krol'dok Stronghold, new): drops from Overlord Mugg; may open a shortcut door (unconfirmed).",
    "Shaper's Terrace (new): 15 Power Crystals of one colour (Un'Goro) summon that colour's boss at an Archival Panel. "
    "Not needed to enter.",
    "Mallet of Zul'Farrak and the Scepter of Celebras have their own guides in this group.",
]
name = "1 Dungeon keys that drop (info)"
add(info_guide(name, None, DROPS, 1, 60), None, 1, 60, name, "Dungeon keys that drop (info)",
    "Not quests: which boss or chest drops which key", [x.split(":")[0] for x in DROPS][:9], kind="attuneinfo")

# info: Forever raids
RAIDS = [
    "Onyxia's Lair: the only raid attunement in Forever, per character (the amulet only has to be in your bags).",
    "Alliance: the Classic chain from Dragonkin Menace (Helendis Riverhorn, Burning Steppes, level 48+). Horde: new "
    "first quest Blood and Thunder (Warlord Goretooth, Kargath, 55+), then the Classic chain. Both are guides here.",
    "Hyjal Summit (20 players): no attunement, any level 60 can enter.",
    "Barrow Deeps (10 players): no attunement. Entrances in Mount Hyjal, Winterspring and Blackmaw Hold. The Brooch "
    "of the Wardens opens an inner part (how to get it is not known yet).",
    "Molten Core: not in Forever yet (the quest is in the data). Its guide here is for when it opens.",
    "Blackwing Lair: not announced for Forever. Its guide here is for later.",
]
name = "60 Forever raids: who needs an attunement (info)"
add(info_guide(name, None, RAIDS, 60, 60), None, 60, 60, name, "Forever raids: attunements (info)",
    "Onyxia only; Hyjal Summit and Barrow Deeps need none", RAIDS[:1] + RAIDS[2:4], kind="attuneinfo")

(OUT / "A_Attunements.lua").write_text("\n".join(chunks))
(OUT / "attune_meta.json").write_text(json.dumps(rows, indent=1))
print(f"attunement guides: {len(chunks)} blocks, rows A {len(rows['Alliance'])} H {len(rows['Horde'])}")
