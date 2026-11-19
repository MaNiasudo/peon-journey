"""Download the public inputs the generators need (QuestieDB Forever data + the free RestedXP release).

Usage (from the repo root): python3 -I tools/fetch_sources.py
"""
import io
import tarfile
import urllib.request
from pathlib import Path

QDB = "https://raw.githubusercontent.com/Questie/QuestieDB/master/"
FILES = [
    "data/Forever/foreverQuestDB.lua", "data/Forever/foreverNpcDB.lua", "data/Forever/foreverObjectDB.lua",
    "data/Forever/foreverItemDB.lua",
    "src/corrections/Forever/generated/foreverBaseQuest.lua", "src/corrections/Forever/generated/foreverBaseNpc.lua",
    "src/corrections/Forever/generated/foreverBaseObject.lua", "src/corrections/Forever/generated/foreverBaseItem.lua",
    "src/corrections/Forever/traces/foreverQuestTraces.lua", "src/corrections/Forever/traces/foreverNpcTraces.lua",
    "src/corrections/Forever/traces/foreverObjectTraces.lua", "src/corrections/Forever/traces/foreverItemTraces.lua",
    "src/corrections/Forever/traces/foreverQuestRelationTraces.lua",
    "src/corrections/Forever/foreverQuestFixes.lua", "src/corrections/Forever/foreverNPCFixes.lua",
    "src/corrections/Forever/foreverObjectFixes.lua", "src/corrections/Forever/foreverItemFixes.lua",
    "src/corrections/enum/zones.lua", "src/corrections/enum/expansions.lua", "src/corrections/enum/npcs.lua",
    "src/corrections/enum/quests.lua", "src/corrections/enum/professions.lua",
    "support/Forever/Zones/areaIdToUiMapId.lua", "support/Forever/Zones/dungeons.lua",
    "support/Forever/QuestXP/xpDB-classic.lua", "support/Forever/QuestXP/xpDB-traces.lua",
]
RXP_TAG = "v4.11.37"


def get(url):
    with urllib.request.urlopen(url, timeout=120) as r:
        return r.read()


out = Path("qdb")
out.mkdir(exist_ok=True)
for f in FILES:
    (out / Path(f).name).write_bytes(get(QDB + f))
    print("qdb", Path(f).name)
dst = Path("rxp_free")
if not (dst / "RXPGuides").exists():
    data = get(f"https://github.com/RestedXP/RXPGuides/archive/refs/tags/{RXP_TAG}.tar.gz")
    with tarfile.open(fileobj=io.BytesIO(data)) as t:
        t.extractall(dst, filter="data")
    top = next(p for p in dst.iterdir() if p.is_dir() and p.name.startswith("RXPGuides"))
    top.rename(dst / "RXPGuides")
print("done")
