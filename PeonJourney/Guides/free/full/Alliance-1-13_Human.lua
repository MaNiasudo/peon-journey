local faction = UnitFactionGroup("player")
if faction == "Horde" then return end


RXPGuides.RegisterGuide([[
#forever
<< Alliance
#name 1-6 Northshire
#version 1
#group Peon Journey - 1-60 Full Journey
#subgroup Levels 01-20
--#groupid RXP-SRGCE-A1
#defaultfor Human
#next 6-11 Elwynn Forest


step
#include Peon Journey - 1-60 Speed (no Dungeons)\1-6 Northshire
]])


RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Full Journey
#subgroup Levels 01-20
--#groupid RXP-SRGCE-A1
#name 6-11 Elwynn Forest
#next 11-13 Loch Modan
#defaultfor Human

step
#include Peon Journey - 1-60 Speed (no Dungeons)\6-11 Elwynn Forest
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Full Journey
#subgroup Levels 01-20
--#groupid RXP-SRGCE-A1
#name 11-13 Loch Modan
#next 13-15 Westfall
#defaultfor Human

step
    #include Peon Journey - 1-60 Speed (no Dungeons)\11-13 Loch Modan@NormalRouteStart-NormalRouteEnd
]])