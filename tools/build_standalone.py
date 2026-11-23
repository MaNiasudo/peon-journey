"""Assemble the standalone PeonJourney addon: free RXP engine + free 1-21 guides (one regrouped copy per route,
chained into our routes) + Peon Journey 21-60 routes (Speed with/without dungeons, Full Journey), dungeons,
attunements, class quests, professions, gold, theme and planner.

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

VERSION = "2.1.1"
G_SD = "Peon Journey - 1-60 Speed (with Dungeons)"
G_SQ = "Peon Journey - 1-60 Speed (no Dungeons)"
G_FJ = "Peon Journey - 1-60 Full Journey"
G_D = "Peon Journey - Dungeon Quests Only"
G_A = "Peon Journey - Attunements"
G_P = "Peon Journey - Professions"
G_G = "Peon Journey - Gold"
RXP_GROUPS = ("RestedXP Forever Dungeon Guide (A)", "RestedXP Forever Dungeon Guide (H)",
              "RestedXP Forever Guide (A)", "RestedXP Forever Guide (H)")
# the free 1-21 start, one copy per route (a guide belongs to one group, and each copy hands over to its own route)
COPIES = [("speed", G_SD, "dungeon"), ("speedq", G_SQ, "plain"), ("full", G_FJ, "dungeon")]
ROUTE_OF = {G_SD: "speed", G_SQ: "speedq", G_FJ: "full"}


def regroup(text, group):
    # the dungeon copies #include some plain RestedXP guides: those live in the Speed (no Dungeons) copy
    for a in RXP_GROUPS:
        text = text.replace(a, group if "Dungeon" in a else G_SQ)
    # one level-bracket subgroup so the start sits right above Peon Journey's 20-29
    text = re.sub(r"^(\s*)#subgroup (Speedrun|Dungeon) Guide 1-2\d.*$", r"\1#subgroup Levels 01-20", text, flags=re.M)
    return text


FIND_GROUP = "    >>|cRXP_WARN_Find a group now (Group Finder or /4 LookingForGroup).|r"


def group_warning(text):
    """RestedXP's free dungeon guides open with "Now you should be looking for a group", then send you on an hour or
    more of solo pre-quests. Say how many pre-quests come first, and ask for the group at the entrance step."""
    out = []
    for m in re.finditer(r"RXPGuides\.RegisterGuide\(\[\[(.*?)\]\]\)", text, re.S):
        out.append((m.start(1), m.end(1)))
    pieces, last = [], 0
    for a, b in out:
        block = text[a:b]
        lines = block.split("\n")
        for i, ln in enumerate(lines):
            mm = re.match(r"^(\s*)(\.\S+.*?)\s*>>\s*Now you should be looking for a group to (.+)$", ln)
            if not mm:
                continue
            label = None
            for j in range(i - 1, max(0, i - 4), -1):
                lm = re.match(r"\s*#completewith (Enter\w+)", lines[j])
                if lm:
                    label = lm.group(1)
            end = next((k for k in range(i, len(lines)) if label and re.match(rf"\s*#label {label}\s*$", lines[k])), None)
            seg = lines[i:end] if end else []
            accepts = sum(1 for x in seg if re.match(r"\s*\.accept ", x))
            work = sum(1 for x in seg if re.match(r"\s*\.complete ", x))
            steps = sum(1 for x in seg if x.strip().startswith("step"))
            mins = int(round((4 * work + steps) / 5.0) * 5) or 5
            dname = mm.group(3).strip()
            lines[i] = (f"{mm.group(1)}{mm.group(2)} >>{dname}: first {accepts} quests to pick up or do solo (pre-quests, "
                        f"roughly {mins} min). No group needed until the entrance step.")
            if end:
                lines.insert(end + 1, FIND_GROUP)
        pieces.append(text[last:a] + "\n".join(lines))
        last = b
    pieces.append(text[last:])
    return "".join(pieces)


db_lua = OUT / "DB" / "forever" / "db.lua"
t = db_lua.read_text()
for fac in ("H", "A"):
    for k in ("defaultGroup", "defaultGroupHC"):
        t = t.replace(f'addon.{k} = L"RestedXP Forever Guide ({fac})"', f'addon.{k} = "{G_SD}"')
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
free_files = []   # (path, copy key)
LOCALE_GUARD = r"^local L = GetLocale\(\) if L and RXP\.enabledLocale\[L\] then return end\s*$"
for f in sorted((RXP / "Guides" / "forever").rglob("*.lua")):
    rel = f.relative_to(RXP / "Guides" / "forever")
    kind = "dungeon" if rel.parts[0] == "dungeon" else "plain"
    text = f.read_text(errors="replace")
    # these English guides must load on any client language (we ship no translations)
    text = re.sub(LOCALE_GUARD, "", text, flags=re.M)
    for key, group, want in COPIES:
        if want != kind:
            continue
        dst = GD / "free" / key / rel.name
        dst.parent.mkdir(parents=True, exist_ok=True)
        t = regroup(text, group)
        if kind == "dungeon":
            t = group_warning(t)
        dst.write_text(t)
        free_files.append((dst, key))

# ------------------------------------------------------------------ attunements: RestedXP's free file, regrouped
ATT = (RXP / "Guides" / "Classic-Attunements.lua").read_text(errors="replace")
ATT = re.sub(LOCALE_GUARD, "", ATT, flags=re.M)
NOT_OPEN = {"Molten Core Attunement": "Molten Core is not in Forever yet (the quest exists in the data). Kept for when it opens.",
            "Blackwing Lair Attunement": "Blackwing Lair is not announced for Forever. Kept for later."}
BLOOD_AND_THUNDER = """step
    .goto Badlands,5.81,47.52
    >>Talk to |cRXP_FRIENDLY_Warlord Goretooth|r. New in Forever: this comes before Warlord's Command
    .accept 98325 >>Accept Blood and Thunder
    .target Warlord Goretooth
step
    .goto Badlands,5.81,47.52
    >>Talk to |cRXP_FRIENDLY_Warlord Goretooth|r
    .turnin 98325 >>Turn in Blood and Thunder
    .target Warlord Goretooth
"""
att_names = []


def attune_block(m):
    b = m.group(1)
    name = re.search(r"^#name (.+)$", b, re.M).group(1).strip()
    if "<<sod" in b or name.startswith("Naxxramas"):
        return ""   # not in Forever
    att_names.append(name)
    b = b.replace("#group RestedXP Endgame Guides", f"#group {G_A}\n#groupweight 72")
    b = re.sub(r"^#subgroup .*$", "#subgroup Keys and attunements", b, flags=re.M)
    first = b.index("\nstep")
    if name in NOT_OPEN:
        b = b[:first] + f"\nstep\n    +|cRXP_WARN_Not open yet.|r {NOT_OPEN[name]} Click to read on." + b[first:]
    if name == "Onyxia Attunement (H)":
        i = b.index(".accept 4903")
        j = b.rindex("\nstep", 0, i)
        b = b[:j + 1] + BLOOD_AND_THUNDER + b[j + 1:]
    return "RXPGuides.RegisterGuide([[" + b + "]])"


ATT = re.sub(r"RXPGuides\.RegisterGuide\(\[\[(.*?)\]\]\)", attune_block, ATT, flags=re.S)
(GD / "Attunements").mkdir()
(GD / "Attunements" / "Classic-Attunements.lua").write_text(ATT)
t = (RXP / "Guides" / "Classic-0.5.lua").read_text(errors="replace")
(GD / "Classic-0.5.lua").write_text(re.sub(LOCALE_GUARD, "", t, flags=re.M))
for f in sorted((G / "attune").glob("*.lua")):
    shutil.copy2(f, GD / "Attunements" / f.name)

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
for f, _ in free_files:
    for m in blocks(f.read_text()):
        h = header_of(m.group(1))
        if h.get("name"):
            for gg in groups_of(m.group(1)):
                names.setdefault(gg, set()).add(h["name"])
for fac in ("Alliance", "Horde"):
    for grp, key in ROUTE_OF.items():
        names.setdefault(grp, set()).update(i["name"] for i in META[fac][key])

FIRST = {}   # (group, faction) -> first Peon Journey guide of that route
MAGE_GROUPS = {"RestedXP ADV AoE Alliance Mage": "Alliance", "RestedXP Alliance Mage": "Alliance",
               "RestedXP Horde Mage AoE": "Horde"}
for fac in ("Alliance", "Horde"):
    for grp, key in ROUTE_OF.items():
        FIRST[(grp, fac)] = grp + "\\" + META[fac][key][0]["name"]
for g, fac in MAGE_GROUPS.items():
    FIRST[(g, fac)] = FIRST[(G_SQ, fac)]


def first_for(grp, cond, faction_hint):
    fac = "Horde" if "Horde" in cond else "Alliance" if "Alliance" in cond else faction_hint
    return FIRST.get((grp, fac))


fixed = 0
for f, _ in free_files:
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
free_list = [f"Guides\\free\\{key}\\{n}" for key, _, _ in COPIES for n in free_order if (GD / "free" / key / n).exists()]
att_list = ["Guides\\Attunements\\Classic-Attunements.lua"] + \
    [f"Guides\\Attunements\\{f.name}" for f in sorted((GD / "Attunements").glob("A_*.lua"))]

# ------------------------------------------------------------------ our code + planner data
SRC = ROOT / "src" if (ROOT / "src").exists() else ROOT / "sa_src"
for f in ("Core.lua", "Planner.lua"):
    shutil.copy2(SRC / f, OUT / f)


def level_of(name):
    m = re.match(r"(\d+)-(\d+)\s+(.*)", name)
    return (int(m.group(1)), int(m.group(2)), m.group(3)) if m else (0, 0, name)


NEWZ = ("Riverglades", "Shen'dralas", "Mount Hyjal", "Azshara", "Desolace", "Wetlands")


def route_rows(fac, key, grp):
    rows = []
    # the free RestedXP start (all races of this faction)
    for f, k in free_files:
        if k != key:
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
    for it in META[fac][key]:
        lo, hi, title = level_of(it["name"])
        kind = it["kind"]
        mins = it.get("minutes", 0)
        took = f"{it.get('quests', 0)} quests, ~{round(mins / 60, 1)} h" if mins else ""
        if kind == "dungeonpre":
            kind, sub = "dungeon", f"Pre-quests, solo (no group yet) | {took}"
        elif kind == "dungeon":
            sub = f"Dungeon run with a group: pick-ups, one run, hand-ins | {took}"
        elif kind == "grind":
            sub = f"Grind mobs at your level | ~{round(mins / 60, 1)} h"
        else:
            kind = "newzone" if any(z in title for z in NEWZ) else "zone"
            sub = ("New Forever zone content" if kind == "newzone" else "Questing") + (f" | {took}" if took else "")
        rows.append(dict(lo=lo, hi=hi, kind=kind, title=title, sub=sub, group=grp, guide=it["name"], tip=[]))
    start = sorted((r for r in rows if r["kind"] == "start"), key=lambda e: (e["lo"], e["hi"]))
    return start + [r for r in rows if r["kind"] != "start"]   # the route itself stays in route order


ATT_LEVELS = {"Onyxia Attunement (A)": (48, 60, "Alliance"), "Onyxia Attunement (H)": (55, 60, "Horde"),
              "Molten Core Attunement": (55, 60, None), "Blackwing Lair Attunement": (60, 60, None),
              "Upper Blackrock Spire Key": (57, 60, None), "Scholomance Key (A)": (55, 60, "Alliance"),
              "Scholomance Key (H)": (55, 60, "Horde"), "Blackrock Depths Key": (48, 52, None),
              "Dire Maul Key": (54, 60, None)}
ATT_SUB = {"Onyxia Attunement (H)": "Raid attunement | Forever adds Blood and Thunder first",
           "Onyxia Attunement (A)": "Raid attunement | the only raid that needs one in Forever",
           "Molten Core Attunement": "Not open in Forever yet", "Blackwing Lair Attunement": "Not announced for Forever"}


data = {"speed": {}, "speedq": {}, "full": {}, "dungeons": {}, "class": {}, "attune": {}, "professions": {}, "gold": {}}
CLASS_META = json.loads((G / "class" / "class_meta.json").read_text())
ATT_META = json.loads((G / "attune" / "attune_meta.json").read_text())
for fac in ("Alliance", "Horde"):
    data["class"][fac] = sorted([r for cls in CLASS_META.values() for r in cls.get(fac, [])],
                                key=lambda r: (r["lo"], r["hi"], r["title"]))
    att = []
    for n in att_names:
        lo, hi, only = ATT_LEVELS.get(n, (55, 60, None))
        if only and only != fac:
            continue
        att.append(dict(lo=lo, hi=hi, kind="attune", title=n, sub=ATT_SUB.get(n, "Dungeon key"), group=G_A, guide=n,
                        tip=["RestedXP's free attunement guide."]))
    data["attune"][fac] = sorted(att + ATT_META[fac], key=lambda r: (r["lo"], r["hi"], r["title"]))
for fac in ("Alliance", "Horde"):
    for grp, key in ROUTE_OF.items():
        data[key][fac] = route_rows(fac, key, grp)
    data["dungeons"][fac] = [dict(lo=i["lo"], hi=i["hi"], kind="dungeon", title=level_of(i["name"])[2],
                                  sub=("Pre-quests, solo" if i["kind"] == "dungeonpre" else "Pick-ups, one run with a group, hand-ins")
                                  + f" | {i.get('quests', 0)} quests, ~{round(i.get('minutes', 0) / 60, 1)} h",
                                  group=i["group"], guide=i["name"], tip=[]) for i in META[fac]["dungeons"]]

# professions + gold rows come from the earlier build's data (same guides, new group names)
sys.path.insert(0, str(Path(__file__).resolve().parent))
from build_addon_data import professions_and_gold  # noqa: E402
pg = professions_and_gold(ROOT, G_P, G_G)
data["professions"], data["gold"] = pg["professions"], pg["gold"]
ST = {fac: META[fac]["stats"] for fac in ("Alliance", "Horde")}


def hours(key):
    return f"~{ST['Alliance'][key]['hours']:.0f} h Alliance, ~{ST['Horde'][key]['hours']:.0f} h Horde"


data["blurbs"] = {
    "speed": f"1-60 Speed (with Dungeons): the fastest way to 60 in our model. Best-XP quests, one visit per zone, and only "
             f"the dungeons worth the trip (Forever dungeon quests pay well). Ends at 60. 21-60 estimate: {hours('speed')}.",
    "speedq": f"1-60 Speed (no Dungeons): fastest solo questing to 60. Weak quests and zones are skipped; a short grind "
              f"fills a gap when no quests are worth it. 21-60 estimate: {hours('speedq')}.",
    "full": f"1-60 Full Journey: everything. Every zone, every dungeon and wing with its pre-quests, in level order and "
            f"continent blocks; Mount Hyjal last. 21-60 estimate: {hours('full')}.",
    "dungeons": "Dungeon Quests Only: pick any dungeon or wing, at any level. Pre-quests are their own solo guide; the run "
                "guide picks up the quests, asks for a group at the entrance, then hand-ins.",
    "class": "Class quests worth doing: ITEM = a reward worth getting, MUST DO = an ability you need, LEVEL 60 = big class chains. Only your class and race are listed. Hover a row for the reward stats.",
    "attune": "Attunements and keys: Onyxia (the only raid attunement in Forever), dungeon keys (UBRS, Scholomance, "
              "BRD, Dire Maul, Dalaran, Maraudon, Krol'dok, Zul'Farrak) and what drops where.",
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
## Notes: Free WoW Forever leveling guide 1-60 (Speed with/without dungeons, Full Journey), dungeons, attunements, class quests, professions 1-300, gold. Guide engine: RestedXP Guides free edition (CC BY-NC-SA 4.0).
## Author: Peon
## Version: {VERSION}
## X-Website: https://github.com/MaNiasudo/peon-journey
## OptionalDeps: Questie
## SavedVariables: RXPData, RXPDB, RXPSettings, RXPString, PeonJourneyDB
## SavedVariablesPerCharacter: RXPCData, RXPCTrackingData, RXPCComms, RXPCSettings
## IconTexture: Interface\\AddOns\\PeonJourney\\Textures\\rxp_logo-64

Core.lua
""" + "\n".join(body) + "\n\nGuides\\Import.lua\n" + "\n".join(free_list) + "\n" + "\n".join(att_list) + \
    "\nGuides\\Classic-0.5.lua\n" + "\n".join(mine) + "\n\nData.lua\nPlanner.lua\n"
(OUT / "PeonJourney.toc").write_text(toc)
notice = ROOT / "PeonJourney" / "NOTICE.txt"
if notice.exists() and notice.resolve() != (OUT / "NOTICE.txt").resolve():
    shutil.copy2(notice, OUT / "NOTICE.txt")
print("dangling/next fixes:", fixed, "| free guide files:", len(free_files), "| our guide files:", len(mine),
      "| attunement guides:", len(att_names), "+", len(att_list) - 1, "files")
