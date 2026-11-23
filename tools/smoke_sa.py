"""Smoke-test the standalone build's own Lua (Core, Planner, Data, generated guides) in a mocked WoW API."""
import re, sys
from pathlib import Path
from lupa import lua51
mock, addon = Path(sys.argv[1]), Path(sys.argv[2])
L = lua51.LuaRuntime(register_eval=False)
L.execute(mock.read_text())
run = L.eval("function(src, name) local f, err = loadstring(src, name); if not f then error(err) end; return f('PeonJourney', {}) end")
g = L.globals()
toc = [l.strip().replace("\\", "/") for l in (addon / "PeonJourney.toc").read_text().splitlines()]
mine = [l for l in toc if l in ("Core.lua", "Data.lua", "Planner.lua") or l.startswith(("Guides/PeonJourney/", "Guides/Professions/", "Guides/Gold/", "Guides/Class/", "Guides/Attunements/A_"))]
# free guides and RestedXP's attunements: register names from text (not executed)
for f in list((addon / "Guides" / "free").rglob("*.lua")) + list((addon / "Guides" / "Attunements").glob("Classic-*.lua")):
    for b in re.findall(r"RXPGuides\.RegisterGuide\(\[\[(.*?)\]\]\)", f.read_text(errors="replace"), re.S):
        nm = re.search(r"^\s*#name\s+(.+)$", b, re.M)
        for grp in re.findall(r"^\s*#group\s+(.+?)(?:\s*<<.*)?$", b, re.M):
            if nm: g.RXP.guides[grp.strip() + "||" + nm.group(1).strip()] = L.table_from({"name": nm.group(1).strip(), "group": grp.strip()})
for f in mine:
    run((addon / f).read_text(), "@" + f)
print("registered guides:", len(list(g.RXP.guides.keys())))
for faction, race, level in (("Alliance", "Human", 23), ("Horde", "Tauren", 5), ("Horde", "Orc", 47)):
    g.PLAYER_FACTION, g.PLAYER_LEVEL, g.PLAYER_RACE = faction, level, race
    g.FireEvent("ADDON_LOADED", "PeonJourney"); g.FireEvent("PLAYER_LOGIN"); g.RunTimers()
    g.SlashCmdList.PEONJOURNEY(""); g.RunTimers()
    pj = g.PeonJourney
    for tab in ("speed", "speedq", "full", "dungeons", "class", "attune", "professions", "gold"):
        rows = pj.data[tab][faction]
        n = len(list(rows.keys())); ok = 0; miss = []
        for i in range(1, n + 1):
            e = rows[i]
            if e.guide:
                if g.RXP.GetGuideTable(e.group, e.guide) is not None:
                    ok += 1; pj.LoadGuide(e.group, e.guide)
                else:
                    miss.append(e.guide)
        print(f"{race:7} {tab:11} rows {n:3} loadable {ok:3} missing {miss[:3]}")
        if tab in ("speed", "speedq", "full"):
            shown = [e for e in [rows[i] for i in range(1, n + 1)] if e.kind == "start" and (not e.defaultfor or g.RXP.applies(e.defaultfor)) and (not e.cond or g.RXP.applies(e.cond))]
            print("        start rows shown to a", race, ":", [e.guide for e in shown][:8])
    for fr in list(g.AllFrames().values()):
        if fr.key and fr.__scripts.OnClick:
            fr.__scripts.OnClick(fr)
    g.SlashCmdList.PEONJOURNEY("theme")
for faction, race, cls in (("Alliance", "NightElf", "Warrior"), ("Horde", "Tauren", "Druid"), ("Horde", "Undead", "Paladin"), ("Alliance", "Dwarf", "Shaman"), ("Horde", "Orc", "Warlock")):
    g.PLAYER_FACTION, g.PLAYER_RACE, g.PLAYER_CLASS = faction, race, cls
    rows = g.PeonJourney.data["class"][faction]
    vis = [rows[i] for i in range(1, len(list(rows.keys())) + 1)]
    vis = [e for e in vis if not e.cond or g.RXP.applies(e.cond)]
    bad = [e.guide for e in vis if g.RXP.GetGuideTable(e.group, e.guide) is None]
    print(f"CLASS {race} {cls}: {len(vis)} rows, missing {bad[:2]} ->", [f"{e.lo} {e.title}" for e in vis][:9])
print("theme:", g.RXP.settings.profile.activeTheme, "| queued for engine:", len(list(g.RXPGuides_Themes.keys())) if g.RXPGuides_Themes else 0)
g.MOCK_RXP_ALSO_LOADED = True
g.FireEvent("PLAYER_LOGIN"); g.RunTimers()
pop = g.StaticPopupDialogs.PEONJOURNEY_RXP_CONFLICT
pop.OnAccept()
print("conflict popup:", [l for l in g.LOG.values() if l.startswith(("POPUP", "DISABLE", "RELOAD"))])
