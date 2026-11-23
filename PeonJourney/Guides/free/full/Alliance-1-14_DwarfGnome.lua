local faction = UnitFactionGroup("player")
if faction == "Horde" then return end


RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Full Journey
#subgroup Levels 01-20
--#groupid RXP-SRGCE-A1
#name 1-5 Coldridge Valley
#next 5-11 Dun Morogh
#defaultfor Dwarf/Gnome

step
#include Peon Journey - 1-60 Speed (no Dungeons)\1-5 Coldridge Valley
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Full Journey
#subgroup Levels 01-20
--#groupid RXP-SRGCE-A1
#name 5-11 Dun Morogh
#next 11-12 Elwynn (Dwarf/Gnome);Peon Journey - 1-60 Full Journey\15-24 Wailing Caverns pre-quests;12-14 Loch Modan (Dwarf/Gnome);11-13 Loch Modan (Hunter)
#defaultfor Dwarf/Gnome

step
#include Peon Journey - 1-60 Speed (no Dungeons)\5-11 Dun Morogh
]])

RXPGuides.RegisterGuide([[
#forever
<< Alliance !Hunter
#group Peon Journey - 1-60 Full Journey
#subgroup Levels 01-20
--#groupid RXP-SRGCE-A1
#name 11-12 Elwynn (Dwarf/Gnome)
#version 1
#defaultfor Gnome/Dwarf
#next 12-14 Loch Modan (Dwarf/Gnome)

step
#include Peon Journey - 1-60 Speed (no Dungeons)\11-12 Elwynn (Dwarf/Gnome)
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance !Hunter
#group Peon Journey - 1-60 Full Journey
#subgroup Levels 01-20
--#groupid RXP-SRGCE-A1
#name 12-14 Loch Modan (Dwarf/Gnome)
#next 13-15 Westfall
#defaultfor Gnome/Dwarf

step
#include Peon Journey - 1-60 Speed (no Dungeons)\12-14 Loch Modan (Dwarf/Gnome)
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Hunter
#group Peon Journey - 1-60 Full Journey
#subgroup Levels 01-20
--#groupid RXP-SRGCE-A1
#name 11-13 Loch Modan (Hunter)
#next 13-15 Westfall
#defaultfor Dwarf

step
#include Peon Journey - 1-60 Speed (no Dungeons)\11-13 Loch Modan (Hunter)@NormalRouteStart-NormalRouteEnd
]])