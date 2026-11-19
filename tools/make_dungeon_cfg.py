"""Build dungeons_config.json: areas, entrances, levels, notes (from QuestieDB dungeons.lua + research)."""
import json, sys
from pathlib import Path
R = json.loads(Path(sys.argv[1]).read_text())
out = Path(sys.argv[2])
newd = {x["name"]: x for x in R["new_dungeons"]}
def att(name):
    a = newd[name].get("attunement", [])
    return [x["quest"] for x in a if not x["quest"].startswith("None")]
def qnames(name):
    return sorted({q["name"] for q in newd[name]["quests"]})
def note(name, extra=""):
    h = newd[name]["entrance"]["how"]
    return (extra + " " + h).strip()[:420]
D = [
 dict(name="Ragefire Chasm", areas=[2437], levels=[13, 18], entrance=[1454, 52.6, 49.0], bracket="Early (13-26)"),
 dict(name="The Hall of Thanes", areas=[16919], levels=[13, 18], entrance=[1455, 43.5, 52.0], bracket="Early (13-26)",
      quest_names=qnames("The Hall of Thanes"), note=note("The Hall of Thanes", "New Forever dungeon.")),
 dict(name="Wailing Caverns", areas=[718], levels=[15, 24], entrance=[1413, 46.0, 36.5], bracket="Early (13-26)"),
 dict(name="Ruins of Lordaeron", areas=[16611, 16612, 16614, 16615, 16617], levels=[15, 20], entrance=[1420, 72.4, 11.6], bracket="Early (13-26)",
      quest_names=qnames("Ruins of Lordaeron"), note=note("Ruins of Lordaeron", "New Forever dungeon.")),
 dict(name="The Deadmines", areas=[1581, 10029], levels=[17, 26], entrance=[1436, 42.5, 71.7], bracket="Early (13-26)"),
 dict(name="Shadowfang Keep", areas=[209, 10014, 10015, 10016, 10017, 10018, 10019], levels=[20, 30], entrance=[1421, 44.8, 67.8], bracket="Mid (20-38)"),
 dict(name="Blackfathom Deeps", areas=[719, 10020, 10021], levels=[24, 32], entrance=[1440, 14.5, 14.2], bracket="Mid (20-38)"),
 dict(name="The Stockade", areas=[717], levels=[24, 32], entrance=[1453, 52.41, 70.01], bracket="Mid (20-38)"),
 dict(name="Excavation Site: Wetlands", areas=[16732, 16877, 16878, 16879, 16880, 17732], levels=[26, 31], entrance=[1437, 48.1, 56.5], bracket="Mid (20-38)",
      quest_names=qnames("Excavation Site: Wetlands"), note=note("Excavation Site: Wetlands", "New Forever dungeon. Sources disagree on levels (24-29 to 26-33).")),
 dict(name="City of Dalaran", areas=[16544, 16558, 16559, 16560, 16562], levels=[28, 33], entrance=[1421, 69.3, 45.6], bracket="Mid (20-38)",
      quest_names=qnames("City of Dalaran") + att("City of Dalaran"), note=note("City of Dalaran", "ATTUNEMENT: you need the Dalaran Sewer Key (one keyholder opens it for the group). The attunement chain is in this guide.")),
 dict(name="Gnomeregan", areas=[721, 133, 10030, 10031, 10032], levels=[29, 38], entrance=[1426, 24.3, 39.8], bracket="Mid (20-38)"),
 dict(name="Razorfen Kraul", areas=[491, 1717], levels=[29, 38], entrance=[1413, 42.9, 90.2], bracket="Mid (20-38)"),
 dict(name="Scarlet Monastery", areas=[796, 6109, 6386, 10008, 10009, 10010], levels=[30, 46], entrance=[1420, 82.6, 33.8], bracket="Mid (20-38)",
      note="Four wings: Graveyard 30-38, Library 33-41, Armory 36-44, Cathedral 38-46."),
 dict(name="The Drowned City", areas=[], levels=[35, 40], entrance=[1434, 21.4, 27.9], bracket="Late (35-50)",
      quest_names=qnames("The Drowned City"), note=note("The Drowned City", "New Forever dungeon, underwater: bring water breathing.")),
 dict(name="Razorfen Downs", areas=[722], levels=[37, 46], entrance=[1413, 49.0, 93.9], bracket="Late (35-50)"),
 dict(name="Krol'dok Stronghold", areas=[17780], levels=[40, 45], entrance=[2548, 39.0, 39.0], bracket="Late (35-50)",
      quest_names=qnames("Krol'dok Stronghold"), note=note("Krol'dok Stronghold", "New Forever dungeon in the Riverglades.")),
 dict(name="Uldaman", areas=[1337, 1517, 10033], levels=[41, 51], entrance=[1418, 44.6, 12.1], bracket="Late (35-50)",
      note="Forever: Annora inside Uldaman is the Artisan Enchanting trainer."),
 dict(name="Zul'Farrak", areas=[1176, 978], levels=[44, 54], entrance=[1446, 38.7, 20.1], bracket="Late (35-50)"),
 dict(name="Maraudon", areas=[2100, 10000], levels=[46, 55], entrance=[1443, 29.1, 62.5], bracket="Late (35-50)"),
 dict(name="Alcaz Prison", areas=[], levels=[48, 53], entrance=[1445, 75.0, 15.0], bracket="Late (35-50)",
      quest_names=qnames("Alcaz Prison") + att("Alcaz Prison"), note=note("Alcaz Prison", "New Forever dungeon. Elite naga patrol the climb.")),
 dict(name="The Temple of Atal'Hakkar", areas=[1477, 1417], levels=[50, 60], entrance=[1435, 69.9, 53.5], bracket="Endgame (50-60)"),
 dict(name="Blackrock Depths", areas=[1584, 1585], levels=[52, 60], entrance=[1427, 34.8, 85.3], bracket="Endgame (50-60)"),
 dict(name="Dire Maul", areas=[2557, 10022, 10023, 10024, 10025, 10026, 10027], levels=[54, 60], entrance=[1444, 59.2, 45.1], bracket="Endgame (50-60)",
      note="East 54-60, West 56-60, North 56-60."),
 dict(name="Blackrock Spire", areas=[1583, 10003, 10004, 10005, 10006, 10007], levels=[55, 60], entrance=[1427, 34.8, 85.3], bracket="Endgame (50-60)",
      note="Lower Blackrock Spire 55-60, Upper Blackrock Spire 59-60."),
 dict(name="Blackmaw Hold", areas=[1216], levels=[55, 60], entrance=[1447, 38.7, 33.4], bracket="Endgame (50-60)",
      quest_names=qnames("Blackmaw Hold"), note=note("Blackmaw Hold", "New Forever dungeon. The portal is deep inside at Azshara 35.0,23.4.")),
 dict(name="Shaper's Terrace", areas=[16985], levels=[58, 60], entrance=[1449, 48.1, 6.1], bracket="Endgame (50-60)",
      quest_names=qnames("Shaper's Terrace"), note=note("Shaper's Terrace", "New Forever dungeon. Power-crystal consoles inside open the way.")),
 dict(name="Scholomance", areas=[2057, 10011, 10012, 10013], levels=[58, 60], entrance=[1422, 69.7, 73.2], bracket="Endgame (50-60)"),
 dict(name="Stratholme", areas=[2017], levels=[58, 60], entrance=[1423, 26.52, 10.36], bracket="Endgame (50-60)"),
]
out.write_text(json.dumps({"dungeons": D}, indent=1))
print(len(D), "dungeons")
