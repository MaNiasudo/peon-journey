local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end


RXPGuides.RegisterGuide([[
#forever
<< Horde
#version 11
#group Peon Journey - 1-60 Speed (with Dungeons)
#subgroup Levels 01-20
--#groupid RXP-SRGCE-H1
#defaultfor Undead
#name 1-6 Tirisfal Glades
#next 6-12 Tirisfal Glades

step
.enabledungeon RFC
#include Peon Journey - 1-60 Speed (no Dungeons)\1-6 Tirisfal Glades
]])

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 6-12 Tirisfal Glades
#displayname 6-13 Tirisfal Glades << Paladin
#version 11
#group Peon Journey - 1-60 Speed (with Dungeons)
#subgroup Levels 01-20
--#groupid RXP-SRGCE-H1
#defaultfor Undead
#next 12-14 Silverpine Forest;Peon Journey - 1-60 Speed (with Dungeons)\22-24 Stonetalon/Barrens

step
.enabledungeon ROL
.enabledungeon RFC
#include Peon Journey - 1-60 Speed (no Dungeons)\6-12 Tirisfal Glades
]])


RXPGuides.RegisterGuide([[
#group Peon Journey - 1-60 Speed (with Dungeons)
#subgroup Levels 01-20
--#groupid RXP-SRGCE-H1
<< Horde
#version 11
#defaultfor !Hunter !Shaman !Tauren
#forever
#era/som--h
#name 12-14 Silverpine Forest
#displayname 13-15 Silverpine Forest << Paladin
#next 12-16 The Barrens


step
.enabledungeon RFC
.enabledungeon ROL
#include Peon Journey - 1-60 Speed (no Dungeons)\12-14 Silverpine Forest
]])
