local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end


RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 1-6 Durotar
#version 11
#group Peon Journey - 1-60 Speed (with Dungeons)
#subgroup Levels 01-20
--#groupid RXP-SRGCE-H1
#defaultfor Troll/Orc
#next 6-10 Durotar


step
.enabledungeon RFC
#include Peon Journey - 1-60 Speed (no Dungeons)\1-6 Durotar
]])

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 6-10 Durotar
#version 11
#group Peon Journey - 1-60 Speed (with Dungeons)
#subgroup Levels 01-20
--#groupid RXP-SRGCE-H1
#defaultfor Troll/Orc
#next 10-12 Durotar

step
.enabledungeon RFC
#include Peon Journey - 1-60 Speed (no Dungeons)\6-10 Durotar
]])

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 10-12 Durotar
#version 11
#group Peon Journey - 1-60 Speed (with Dungeons)
#subgroup Levels 01-20
--#groupid RXP-SRGCE-H1
#defaultfor Troll/Orc
#next 10-12 Tirisfal (Orc/Troll) << !Hunter !Shaman !Tauren !Skyborne
#next 12-16 The Barrens << Orc Hunter/Troll Hunter/Orc Shaman/Troll Shaman


step
.enabledungeon ROL
.enabledungeon RFC
#include Peon Journey - 1-60 Speed (no Dungeons)\10-12 Durotar
]])


RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 10-12 Tirisfal (Orc/Troll)
#version 11
#group Peon Journey - 1-60 Speed (with Dungeons)
#subgroup Levels 01-20
--#groupid RXP-SRGCE-H1
#defaultfor !Hunter !Shaman !Tauren !Skyborne !Undead
#next 12-14 Silverpine Forest << !Hunter !Shaman !Tauren !Skyborne !Undead

step
.enabledungeon RFC
#include Peon Journey - 1-60 Speed (no Dungeons)\10-12 Tirisfal (Orc/Troll)
]])
