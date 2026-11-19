"""Peon Journey gold guides, from research/dailies.json facts + QuestieDB coordinates.

Usage: python -I gen_gold.py <data_forever.json> <out_dir>
"""
import math
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from qlib import DB, centroid  # noqa: E402
from router import fmt  # noqa: E402
from emit import guide  # noqa: E402

db = DB(sys.argv[1])
OUT = Path(sys.argv[2])
OUT.mkdir(parents=True, exist_ok=True)
GROUP = "Peon Journey 5 - Gold"


def npc(name, ui=None):
    for nid, n in db.N.items():
        if db.g(n, 1) == name:
            for s in db.spawns("npc", nid):
                if ui is None or s[0] == ui:
                    return s
    return None


def go(loc):
    return f"    .goto {loc[0]},{fmt(round(loc[1], 2))},{fmt(round(loc[2], 2))}"


def mob_loop(name, ui, max_points=14):
    pts = []
    for nid, n in db.N.items():
        if db.g(n, 1) == name:
            pts += [(x, y) for u, x, y in db.spawns("npc", nid) if u == ui]
    if len(pts) < 4:
        return None
    cells = {}
    for x, y in pts:
        cells.setdefault((int(x // 5), int(y // 5)), []).append((x, y))
    top = sorted(cells.values(), key=len, reverse=True)[:max_points]
    cent = [(sum(p[0] for p in c) / len(c), sum(p[1] for p in c) / len(c)) for c in top]
    route = [cent[0]]
    rest = cent[1:]
    while rest:
        nxt = min(rest, key=lambda p: math.hypot(p[0] - route[-1][0], p[1] - route[-1][1]))
        route.append(nxt)
        rest.remove(nxt)
    route.append(route[0])
    return f"    .loop 35,{ui}," + ",".join(f"{fmt(round(x, 1))},{fmt(round(y, 1))}" for x, y in route)


PIX = npc("Pix Xizzix") or (1434, 28.52, 75.86)
DM = (1444, 59.2, 45.1)
BRM = (1427, 34.8, 85.3)
files = []


def write(name, header_extra, body):
    header = ["#forever", "#version 1", f"#group {GROUP}", f"#name {name}", f"#displayname {name}"] + header_extra
    fn = "G_" + "".join(ch if ch.isalnum() else "_" for ch in name) + ".lua"
    (OUT / fn).write_text(guide(header, body))
    files.append(fn)


# 1. weekly In Demand: Dire Maul
write("Weekly: In Demand - Dire Maul", ["#subgroup Weekly"], [
    "step",
    "    +|cRXP_WARN_The best repeatable gold in Forever is weekly, not daily.|r Pix Xizzix in Booty Bay offers one 'In Demand' quest per week (level 60). This guide is the Dire Maul version. If Pix offers Blackrock Legal Records instead, load that guide.",
    "    *Reward: Undermine Satchel with one vendor item (Gold Nugget 10g, Huge Quartz Gem 20g, Silver Necklace 40g or Gold Ring 100g) plus materials. Guides estimate about 20-60g a week, best case about 140g.",
    "step",
    go(PIX),
    "    >>Talk to |cRXP_FRIENDLY_Pix Xizzix|r near the Booty Bay auction house",
    "    .accept 96076 >>Accept In Demand - Ancient Elven Curiosities",
    "    .target Pix Xizzix",
    "step",
    go(DM),
    "    >>Fly to Feathermoon / Camp Mojache and go to Dire Maul. Bring a group.",
    "    *East: kill |cRXP_ENEMY_Pusillin|r for the Crescent Key, then |cRXP_ENEMY_Alzzin the Wildshaper|r.",
    "    *West: kill |cRXP_ENEMY_Prince Tortheldrin|r.",
    "    *North: kill |cRXP_ENEMY_King Gordok|r (a tribute run counts).",
    "    *Every boss also drops a Tarnished Undermine Real (one per boss per day). Reals buy items from Pix, they are not gold.",
    "    .complete 96076,1",
    "    .complete 96076,2",
    "    .complete 96076,3",
    "    .mob Alzzin the Wildshaper",
    "    .mob Prince Tortheldrin",
    "    .mob King Gordok",
    "step",
    go(PIX),
    "    >>Talk to |cRXP_FRIENDLY_Pix Xizzix|r",
    "    .turnin 96076 >>Turn in In Demand - Ancient Elven Curiosities",
    "    .target Pix Xizzix",
    "step",
    "    +Open the |cRXP_LOOT_Undermine Satchel|r. Vendor the gold item and post the materials (Essence of Air, Marefoil, Refined Deeprock Salt) on the auction house. Done until next week.",
])

# 2. weekly In Demand: Blackrock
write("Weekly: In Demand - Blackrock", ["#subgroup Weekly"], [
    "step",
    "    +|cRXP_WARN_Weekly gold quest, Blackrock version.|r Only take this if Pix offers it this week.",
    "    *You need: Overseer's License (Overlord Wyrmthalak, Lower Blackrock Spire), Nefarian's Remit (General Drakkisath, Upper Blackrock Spire), Bronzebeard Wedding Contract (Emperor Thaurissan, Blackrock Depths).",
    "step",
    go(PIX),
    "    >>Talk to |cRXP_FRIENDLY_Pix Xizzix|r",
    "    .accept 96075 >>Accept In Demand - Blackrock Legal Records",
    "    .target Pix Xizzix",
    "step",
    go(BRM),
    "    >>Go to Blackrock Mountain with a group: BRD (Emperor Thaurissan), LBRS (Overlord Wyrmthalak), UBRS (General Drakkisath).",
    "    .complete 96075,1",
    "    .complete 96075,2",
    "    .complete 96075,3",
    "    .mob Emperor Dagran Thaurissan",
    "    .mob Overlord Wyrmthalak",
    "    .mob General Drakkisath",
    "step",
    go(PIX),
    "    >>Talk to |cRXP_FRIENDLY_Pix Xizzix|r",
    "    .turnin 96075 >>Turn in In Demand - Blackrock Legal Records",
    "    .target Pix Xizzix",
    "step",
    "    +Open the |cRXP_LOOT_Undermine Satchel|r, vendor the gold item, sell the materials. Done until next week.",
])

# 3. daily routine: writs and crates
for faction, camp_npc, camp_ui, label in (("Alliance", "Marcy Baker", 1433, "Three Corners, Redridge"),
                                          ("Horde", "Dokimi", 1413, "west of the Crossroads, Barrens")):
    camp = npc(camp_npc, camp_ui)
    body = [
        "step",
        "    +|cRXP_WARN_Honest truth: Forever has no daily quest that makes real gold.|r Craftsman's Writs are daily but the item usually costs more than the Coin Pouch (about 20-90 silver). Use this routine for reputation and small change, and sell what you can't use.",
        "    *Sealed Writs drop from any mob (more from chests and dungeons). Open them at level 10+. No profession needed: a bought item works.",
        "    *Only deliver an order when the writ + item cost less than about 50 silver on the auction house. Sell the rest of the writs on the auction house.",
        "    *Each different order can be delivered once per day.",
        "step",
    ]
    if camp:
        body += [go(camp), f"    >>Talk to |cRXP_FRIENDLY_{camp_npc}|r ({label})", f"    .target {camp_npc}"]
    body += [
        "    *Hand in sealed Waylaid Crates here (Merchant's Favor + a few silver). Unfilled crates sold for about 17-30 silver on the AH in week one.",
        "    *Your first writ or crate gives a Shipping Label quest: 2,000 reputation + 50 Merchant's Favor, once per character.",
        "    +Done with crates today",
        "step",
        "    +|cRXP_WARN_Known Journeyman writ customers|r (deliver cheap orders while you pass by):",
        "    *Kixxle - Wetlands 50.2,37.8 | Kzixx - Duskwood 81.8,19.8 | Ziz Fizziks - Stonetalon 59.0,62.4",
        "    *Muggol Breezebeard - Arathi 48.8,55.8 | Alyce - Arathi 34.0,23.2 | Gorgrash - Hillsbrad 80.0,48.2",
        "    *Alan Sneeks - Alterac 30.6,61.0 | Sos'mol - Alterac 38.4,61.2 | Short John Mithril - STV 29.6,47.4",
        "    *Scooty - STV 27.6,77.4 | 'Plucky' Johnson - Thousand Needles 79.6,75.6 | Ash'alari - Ashenvale 60.2,72.6",
        "    *Cowardly Peon - Ashenvale 78.4,68.8 | Webbed Mudsnout Gnoll - Hillsbrad 62.2,69.2",
    ]
    write(f"Daily: Writs and Crates ({faction[0]})", [f"<< {faction}", "#subgroup Daily"], body)

# 4. level 60 farm spots
farm = [
    ("Devilsaur", 1449, "Devilsaurs in Un'Goro Crater: about 1g70s per kill with Skinning (Devilsaur Leather). Watch for other farmers."),
    ("Firetail Scorpid", 1428, "Firetail Scorpids in Burning Steppes around 26,57: about 36s per kill with Skinning."),
    ("Cyclone Warrior", 1451, "Cyclone Warriors in Silithus around 41,58: about 36s per kill (cloth, Essence of Air chance)."),
]
body = ["step",
        "    +|cRXP_WARN_Gold farming at 60.|r Numbers come from a 15 Nov auction scan on one realm, so check your own AH first. Normal dungeon groups make about 24g/hour too.",
        "    *Quests of quest level 48+ pay gold since the 10 Nov hotfix (once per quest), so finishing Azshara, Mount Hyjal, Alcaz Prison and Blackmaw Hold quests is gold too."]
for name, ui, text in farm:
    lp = mob_loop(name, ui)
    body += ["step", f"    >>{text}", f"    .mob {name}"]
    if lp:
        body.append(lp)
    body.append("    +Done farming here")
riggle = npc("Riggle Bassbait") or (1434, 27.35, 76.88)
body += ["step", go(riggle),
         "    >>|cRXP_WARN_Sundays 2 pm server time:|r Stranglethorn Fishing Extravaganza. Needs Expert Fishing (225 recommended). Fish 40 Speckled Tastyfish and hand them to |cRXP_FRIENDLY_Riggle Bassbait|r. Fish decay after 4 hours.",
         "    .target Riggle Bassbait",
         "    +Done (or not Sunday)"]
write("Gold Farming at 60", ["#subgroup Farming"], body)

(OUT / "gold_files.txt").write_text("\n".join(files) + "\n")
print(files)
