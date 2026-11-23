local faction = UnitFactionGroup("player")
if faction == "Horde" then return end


RXPGuides.RegisterGuide([[
#forever
#season 0,1
<< Alliance
#name 1-6 Shadowglen
#version 1
#group Peon Journey - 1-60 Speed (with Dungeons)
#subgroup Levels 01-20
--#groupid RXP-SRGCE-A1
#defaultfor NightElf
#next 6-11 Teldrassil
step
#include Peon Journey - 1-60 Speed (no Dungeons)\1-6 Shadowglen
]])

RXPGuides.RegisterGuide([[
#forever
#season 0,1
<< Alliance
#name 6-11 Teldrassil
#version 1
#group Peon Journey - 1-60 Speed (with Dungeons)
#subgroup Levels 01-20
--#groupid RXP-SRGCE-A1
#defaultfor NightElf
#next 11-16 Darkshore/Loch Modan

step
#include Peon Journey - 1-60 Speed (no Dungeons)\6-11 Teldrassil
]])
