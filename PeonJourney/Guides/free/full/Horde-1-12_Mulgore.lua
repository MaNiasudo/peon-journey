local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end


RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 1-6 Mulgore
#version 11
#group Peon Journey - 1-60 Full Journey
#subgroup Levels 01-20
--#groupid RXP-SRGCE-H1
#defaultfor Tauren
#next 6-12 Mulgore;Peon Journey - 1-60 Full Journey\20-30 Shadowfang Keep

step
.enabledungeon RFC
#include Peon Journey - 1-60 Speed (no Dungeons)\1-6 Mulgore
]])


RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 6-12 Mulgore
#version 11
#group Peon Journey - 1-60 Full Journey
#subgroup Levels 01-20
--#groupid RXP-SRGCE-H1
#defaultfor Tauren
#next 12-16 The Barrens


step
.enabledungeon RFC
#include Peon Journey - 1-60 Speed (no Dungeons)\6-12 Mulgore
]])
