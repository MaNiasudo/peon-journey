"""Assemble the standalone PeonJourney addon: free RXP engine + free 1-21 guides (regrouped and chained)
+ Peon Journey 21-60 routes, dungeons, professions, gold, theme and planner.

Usage: python -I build_standalone.py <scratch_root> <rxp_free_dir> <out_addon_dir>
"""
import json
import re
import shutil
import sys
from pathlib import Path

ROOT, RXP, OUT = Path(sys.argv[1]), Path(sys.argv[2]), Path(sys.argv[3])
G = ROOT / "out_guides"
R = ROOT / "out_route"
META = json.loads((R / "route_meta.json").read_text())

if OUT.exists():
    shutil.rmtree(OUT)
OUT.mkdir(parents=True)

# ------------------------------------------------------------------ engine
ENGINE_DIRS = ["libs", "locale", "UI", "Textures"]
for d in ENGINE_DIRS:
    shutil.copytree(RXP / d, OUT / d)
for f in RXP.glob("*.lua"):
    shutil.copy2(f, OUT / f.name)
for f in ("Bindings.xml", "LICENSE"):
    shutil.copy2(RXP / f, OUT / f)
(OUT / "DB").mkdir()
for f in ("shared.lua", "questDB.lua", "forever.xml"):
    shutil.copy2(RXP / "DB" / f, OUT / "DB" / f)
shutil.copytree(RXP / "DB" / "forever", OUT / "DB" / "forever")

G_QD = "Peon Journey - 1-60 Questing and Dungeons"
G_Q = "Peon Journey - 1-60 Questing (Skip Dungeons)"
G_D = "Peon Journey - Dungeon Quests Only"
G_P = "Peon Journey - Professions"
G_G = "Peon Journey - Gold"
GROUP_MAP = {
    "RestedXP Forever Dungeon Guide (A)": G_QD, "RestedXP Forever Dungeon Guide (H)": G_QD,
    "RestedXP Forever Guide (A)": G_Q, "RestedXP Forever Guide (H)": G_Q,
}


def regroup(text):
    for a, b in GROUP_MAP.items():
        text = text.replace(a, b)
    # one level-bracket subgroup so the start sits right above Peon Journey's 20-29
    text = re.sub(r"^(\s*)#subgroup (Speedrun|Dungeon) Guide 1-2\d.*$", r"\1#subgroup Levels 01-20", text, flags=re.M)
    return text


db_lua = OUT / "DB" / "forever" / "db.lua"
t = db_lua.read_text()
for fac in ("H", "A"):
    for k in ("defaultGroup", "defaultGroupHC"):
        t = t.replace(f'addon.{k} = L"RestedXP Forever Guide ({fac})"', f'addon.{k} = "{G_QD}"')
db_lua.write_text(t)
sp = OUT / "SettingsPanel.lua"
t = sp.read_text()
assert "        showUnusedGuides = true," in t
sp.write_text(t.replace("        showUnusedGuides = true,", "        showUnusedGuides = false,", 1))

# ------------------------------------------------------------------ textures: Peon art wins
ours = ROOT / "art" if (ROOT / "art").exists() else ROOT / "build" / "PeonJourney" / "Textures"
for tga in ours.glob("*.tga"):
    blp = OUT / "Textures" / (tga.stem + ".blp")
    if blp.exists():
        blp.unlink()
    shutil.copy2(tga, OUT / "Textures" / tga.name)

# ------------------------------------------------------------------ guides
GD = OUT / "Guides"
(GD / "free").mkdir(parents=True)
shutil.copy2(RXP / "Guides" / "Import.lua", GD / "Import.lua")
free_files = []
for f in sorted((RXP / "Guides" / "forever").rglob("*.lua")):
    rel = f.relative_to(RXP / "Guides" / "forever")
    dst = GD / "free" / rel
    dst.parent.mkdir(parents=True, exist_ok=True)
    text = f.read_text(errors="replace")
    # these English guides must load on any client language (we ship no translations)
    text = re.sub(r"^local L = GetLocale\(\) if L and RXP\.enabledLocale\[L\] then return end\s*$", "", text, flags=re.M)
    dst.write_text(regroup(text))
    free_files.append(dst)
for extra in ("Classic-Attunements.lua", "Classic-0.5.lua"):
    t = (RXP / "Guides" / extra).read_text(errors="replace")
    t = re.sub(r"^local L = GetLocale\(\) if L and RXP\.enabledLocale\[L\] then return end\s*$", "", t, flags=re.M)
    (GD / extra).write_text(t)

# names per group, to repair dangling #next links in the free guides
def blocks(text):
    return list(re.finditer(r"RXPGuides\.RegisterGuide\(\[\[(.*?)\]\]\)", text, re.S))


def header_of(b):
    h = {"next": []}
    for line in b.splitlines():
        s = line.strip()
        if s.startswith("step"):
            break
        m = re.match(r"#group\s+(.+?)(\s*<<.*)?$", s)
        if m and "group" not in h:
            h["group"] = m.group(1).strip()
        m = re.match(r"#name\s+(.+)$", s)
        if m:
            h["name"] = m.group(1).strip()
        m = re.match(r"#displayname\s+([^<]+)", s)
        if m and "display" not in h:
            h["display"] = m.group(1).strip()
        m = re.match(r"<<\s*(Alliance|Horde)", s)
        if m:
            h["faction"] = m.group(1)
        m = re.match(r"^<<\s*(.+)$", s)
        if m and "cond" not in h:
            h["cond"] = m.group(1).strip()
        m = re.match(r"#defaultfor\s+([^<]+)", s)
        if m and "defaultfor" not in h:
            h["defaultfor"] = m.group(1).strip()
    return h


def groups_of(b):
    out = []
    for line in b.splitlines():
        s = line.strip()
        if s.startswith("step"):
            break
        m = re.match(r"#group\s+(.+?)(\s*<<.*)?$", s)
        if m:
            out.append(m.group(1).strip())
    return out


names = {}
for f in free_files:
    for m in blocks(f.read_text()):
        h = header_of(m.group(1))
        if h.get("name"):
            for gg in groups_of(m.group(1)):
                names.setdefault(gg, set()).add(h["name"])
for fac in ("Alliance", "Horde"):
    for v, grp in (("full", G_QD), ("questing", G_Q)):
        names.setdefault(grp, set()).update(i["name"] for i in META[fac][v])

FIRST = {}   # (group, faction) -> first Peon Journey guide of that route
MAGE_GROUPS = {"RestedXP ADV AoE Alliance Mage": "Alliance", "RestedXP Alliance Mage": "Alliance",
               "RestedXP Horde Mage AoE": "Horde"}
for fac in ("Alliance", "Horde"):
    FIRST[(G_QD, fac)] = G_QD + "\\" + META[fac]["full"][0]["name"]
    FIRST[(G_Q, fac)] = G_Q + "\\" + META[fac]["questing"][0]["name"]
for g, fac in MAGE_GROUPS.items():
    FIRST[(g, fac)] = FIRST[(G_Q, fac)]


def first_for(grp, cond, faction_hint):
    fac = "Horde" if "Horde" in cond else "Alliance" if "Alliance" in cond else faction_hint
    return FIRST.get((grp, fac))


fixed = 0
for f in free_files:
    text = f.read_text()

    def fix_block(m):
        global fixed
        b = m.group(1)
        h = header_of(b)
        grp = h.get("group")
        hint = h.get("faction") or ("Horde" if "Horde" in f.name or "Undead" in f.name or "Durotar" in f.name or "Mulgore" in f.name else "Alliance")
        if not any(k[0] == grp for k in FIRST):
            return m.group(0)
        lines = b.split("\n")
        has_next = False
        for i, line in enumerate(lines):
            s_ = line.strip()
            if s_.startswith("step"):
                break
            if s_.startswith("#next"):
                has_next = True
                body, _, cond = s_[5:].partition("<<")
                target_first = first_for(grp, cond, hint)
                targets = [x.strip() for x in body.split(";") if x.strip()]
                new_t = []
                for tgt in targets:
                    g, _, n = tgt.rpartition("\\")
                    new_t.append(tgt if n in names.get(g or grp, set()) or not target_first else target_first)
                if new_t != targets:
                    fixed += 1
                lines[i] = "#next " + ";".join(dict.fromkeys(new_t)) + (" <<" + cond if cond else "")
        if not has_next:
            lv = re.match(r"(\d+)-(\d+)", h.get("name", ""))
            tf = first_for(grp, "", hint)
            if lv and int(lv.group(2)) >= 20 and tf:
                for i, line in enumerate(lines):
                    if line.strip().startswith("#name"):
                        lines.insert(i + 1, "#next " + tf)
                        fixed += 1
                        break
        return "RXPGuides.RegisterGuide([[" + "\n".join(lines) + "]])"

    f.write_text(re.sub(r"RXPGuides\.RegisterGuide\(\[\[(.*?)\]\]\)", fix_block, text, flags=re.S))

# Peon Journey guides
(GD / "PeonJourney").mkdir()
mine = []
for f in sorted(R.glob("R_*.lua")):
    shutil.copy2(f, GD / "PeonJourney" / f.name)
    mine.append(f"Guides\\PeonJourney\\{f.name}")
(GD / "Class").mkdir()
for f in sorted((G / "class").glob("*.lua")):
    shutil.copy2(f, GD / "Class" / f.name)
    mine.append(f"Guides\\Class\\{f.name}")
for sub, src in (("Professions", G / "prof"), ("Gold", G / "gold")):
    (GD / sub).mkdir()
    for f in sorted(src.glob("*.lua")):
        t = f.read_text().replace("#group Peon Journey 4 - Professions", f"#group {G_P}\n#groupweight 70").replace(
            "#group Peon Journey 5 - Gold", f"#group {G_G}\n#groupweight 60")
        (GD / sub / f.name).write_text(t)
        mine.append(f"Guides\\{sub}\\{f.name}")

free_order = ["RestedXP-Skyborne.lua", "Alliance-1-10_NightElf.lua", "Alliance-1-13_Human.lua",
              "Alliance-1-14_DwarfGnome.lua", "Alliance-11-20.lua", "Horde-01-12_Durotar.lua", "Horde-01-14_Undead.lua",
              "Horde-1-12_Mulgore.lua", "Horde-12-22_Barrens.lua", "Alliance-Mage-1-12.lua", "Alliance-Mage-12-21.lua",
              "Horde-Mage-12-21.lua", "Alliance-ADV-AoE-Mage-1-22.lua"]
free_list = [f"Guides\\free\\{n}" for n in free_order if (GD / "free" / n).exists()]
free_list += [f"Guides\\free\\dungeon\\{n}" for n in free_order if (GD / "free" / "dungeon" / n).exists()]

# ------------------------------------------------------------------ our code + planner data
SRC = ROOT / "src" if (ROOT / "src").exists() else ROOT / "sa_src"
for f in ("Core.lua", "Planner.lua"):
    shutil.copy2(SRC / f, OUT / f)


def level_of(name):
    m = re.match(r"(\d+)-(\d+)\s+(.*)", name)
    return (int(m.group(1)), int(m.group(2)), m.group(3)) if m else (0, 0, name)


NEWZ = ("Riverglades", "Shen'dralas", "Mount Hyjal", "Azshara", "Desolace", "Wetlands")


def route_rows(fac, variant, grp):
    rows = []
    # the free RestedXP start (all races of this faction)
    for f in free_files:
        if (variant == "full") != ("dungeon" in f.parts):
            continue
        for m in blocks(f.read_text()):
            h = header_of(m.group(1))
            if h.get("group") != grp or "name" not in h:
                continue
            lo, hi, title = level_of(h["name"])
            row = dict(lo=lo, hi=hi, kind="start", title=title, sub="RestedXP free starter route",
                       group=grp, guide=h["name"], tip=["Hand-made RestedXP route (free edition). Peon Journey takes over at 21-22."])
            if h.get("defaultfor"):
                row["defaultfor"] = h["defaultfor"]   # race/class this start is meant for
            if h.get("cond"):
                row["cond"] = h["cond"]
            rows.append(row)
    for it in META[fac][variant]:
        lo, hi, title = level_of(it["name"])
        kind = "dungeon" if it["kind"] == "dungeon" else ("newzone" if any(z in title for z in NEWZ) else "zone")
        sub = "Dungeon run with its pre-quests" if kind == "dungeon" else ("New Forever zone content" if kind == "newzone" else "Questing")
        rows.append(dict(lo=lo, hi=hi, kind=kind, title=title, sub=sub, group=grp, guide=it["name"], tip=[]))
    rows.sort(key=lambda e: (e["lo"], e["hi"]))
    return rows


data = {"full": {}, "questing": {}, "dungeons": {}, "class": {}, "professions": {}, "gold": {}}
CLASS_META = json.loads((G / "class" / "class_meta.json").read_text())
for fac in ("Alliance", "Horde"):
    data["class"][fac] = sorted([r for cls in CLASS_META.values() for r in cls.get(fac, [])],
                                key=lambda r: (r["lo"], r["hi"], r["title"]))
for fac, tag in (("Alliance", "A"), ("Horde", "H")):
    data["full"][fac] = route_rows(fac, "full", G_QD)
    data["questing"][fac] = route_rows(fac, "questing", G_Q)
    data["dungeons"][fac] = [dict(lo=i["lo"], hi=i["hi"], kind="dungeon", title=level_of(i["name"])[2],
                                  sub="Pre-quests, pick-ups, one run, hand-ins", group=i["group"], guide=i["name"], tip=[])
                             for i in META[fac]["dungeons"]]

# professions + gold rows come from the earlier build's data (same guides, new group names)
sys.path.insert(0, str(Path(__file__).resolve().parent))
from build_addon_data import professions_and_gold  # noqa: E402
pg = professions_and_gold(ROOT, G_P, G_G)
data["professions"], data["gold"] = pg["professions"], pg["gold"]
data["blurbs"] = {
    "full": "1-60 Questing and Dungeons: every dungeon at its level, questing in between, new Forever zones included. Load the first row for your race; each guide hands you the next one.",
    "questing": "1-60 Questing (Skip Dungeons): solo questing through old and new zones, with catch-up legs when you fall behind.",
    "dungeons": "Dungeon Quests Only: pick any dungeon, at any level (even 60). The guide does its pre-quests and chains, picks up every quest, one run, then all hand-ins.",
    "class": "Class quests worth doing: ITEM = a reward worth getting, MUST DO = an ability you need, LEVEL 60 = big class chains. Only your class and race are listed. Hover a row for the reward stats.",
    "professions": pg["blurbs"]["professions"],
    "gold": pg["blurbs"]["gold"],
}


def lua_str(s):
    return '"' + str(s).replace("\\", "\\\\").replace('"', '\\"').replace("\n", " ") + '"'


def lua_val(v, ind=0):
    pad = "    " * ind
    if isinstance(v, dict):
        items = [f"{pad}    {k} = {lua_val(x, ind + 1)}," if re.match(r"^[A-Za-z_]\w*$", k)
                 else f"{pad}    [{lua_str(k)}] = {lua_val(x, ind + 1)}," for k, x in v.items()]
        return "{\n" + "\n".join(items) + f"\n{pad}}}" if items else "{}"
    if isinstance(v, list):
        return "{\n" + "\n".join(f"{pad}    {lua_val(x, ind + 1)}," for x in v) + f"\n{pad}}}" if v else "{}"
    if isinstance(v, bool):
        return "true" if v else "false"
    if isinstance(v, (int, float)):
        return str(v)
    return "nil" if v is None else lua_str(v)


(OUT / "Data.lua").write_text("-- generated by tools/build_standalone.py\nPeonJourney.data = " + lua_val(data) + "\n")

# ------------------------------------------------------------------ TOC
src_toc = (RXP / "RXPGuides.toc").read_text().splitlines()
body = []
for line in src_toc:
    s = line.strip()
    if s.startswith("##") or not s:
        continue
    if s.startswith("#"):
        continue
    if s.startswith("lang\\") or s.startswith("lang/"):
        continue
    if s.startswith("Guides/GuideList") or s.startswith("Guides\\GuideList"):
        continue
    if s.startswith("DB/") and "camelot" not in s:
        continue
    m = re.search(r"\[AllowLoadGameType ([^\]]+)\]", s)
    if m and "camelot" not in m.group(1):
        continue
    body.append(s)
toc = f"""## Interface: 16001
## Title: |cffe8c478Peon Journey|r
## Notes: Free WoW Forever leveling guide 1-60 (with/without dungeons, dungeon-only), professions 1-300, gold. Guide engine: RestedXP Guides free edition (CC BY-NC-SA 4.0).
## Author: Peon
## Version: 2.0.0
## X-Website: https://github.com/MaNiasudo/peon-journey
## OptionalDeps: Questie
## SavedVariables: RXPData, RXPDB, RXPSettings, RXPString, PeonJourneyDB
## SavedVariablesPerCharacter: RXPCData, RXPCTrackingData, RXPCComms, RXPCSettings
## IconTexture: Interface\\AddOns\\PeonJourney\\Textures\\rxp_logo-64

Core.lua
""" + "\n".join(body) + "\n\nGuides\\Import.lua\n" + "\n".join(free_list) + "\nGuides\\Classic-Attunements.lua\nGuides\\Classic-0.5.lua\n" + \
    "\n".join(mine) + "\n\nData.lua\nPlanner.lua\n"
(OUT / "PeonJourney.toc").write_text(toc)
notice = ROOT / "PeonJourney" / "NOTICE.txt"
if notice.exists() and notice.resolve() != (OUT / "NOTICE.txt").resolve():
    shutil.copy2(notice, OUT / "NOTICE.txt")
print("dangling/next fixes:", fixed, "| free guide files:", len(free_files), "| our guide files:", len(mine))
