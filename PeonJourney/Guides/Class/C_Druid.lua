RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Druid NightElf
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 16 Aquarius Belt / Idol of Shifting Tides (Night Elf)
#displayname 16 Aquarius Belt / Idol of Shifting Tides (Night Elf)
step
    +|cRXP_WARN_ITEM: Aquarius Belt / Idol of Shifting Tides|r. Click to start.
    *Reward: Choose Idol of Shifting Tides (idol: -40 mana on every shapeshift) or Aquarius Belt
    *|cffffd200OK|r [Aquarius Belt]: Waist Leather, 40 armor, +2 Stamina, +2 Intellect - ordinary green belt for 16
    *|cffffd200OK|r [Idol of Shifting Tides]: Relic Idol - fills an otherwise empty relic slot; helps form-shifting while leveling
    *Why: Your first idol, and you need Aquatic Form anyway
    *Forever: changed in Forever: Idol of Shifting Tides added as a reward option
step
    .goto 1457,35.37,8.4
    >>Talk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .accept 27 >>Accept A Lesson to Learn << NightElf
    .target Mathrengyl Bearwalker
step
    .goto 1450,56.21,30.64
    >>Talk to |cRXP_FRIENDLY_Dendrite Starblaze|r
    .turnin 27 >>Turn in A Lesson to Learn << NightElf
    .accept 29 >>Accept Trial of the Lake << NightElf
    .target Dendrite Starblaze
step
    .goto 1450,36.52,40.1
    >>Talk to |cRXP_FRIENDLY_Tajarri|r
    .turnin 29 >>Turn in Trial of the Lake << NightElf
    .accept 272 >>Accept Trial of the Sea Lion << NightElf/Skyborne
    .target Tajarri
step
    >>Collect |cRXP_LOOT_[Pendant of the Sea Lion]|r
    *Find the Half Pendant of Aquatic Agility and the Half Pendant of Aquatic Endurance. Speak with the residents of Moonglade to learn clues as to where these items may be located.
    .complete 272,1 << NightElf/Skyborne --Trial of the Sea Lion
step
    .goto 1450,56.21,30.64
    >>Talk to |cRXP_FRIENDLY_Dendrite Starblaze|r
    .turnin 272 >>Turn in Trial of the Sea Lion << NightElf/Skyborne
    .accept 5061 >>Accept Aquatic Form << NightElf
    .target Dendrite Starblaze
step
    .goto 1457,35.37,8.4
    >>Talk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .turnin 5061 >>Turn in Aquatic Form << NightElf
    .target Mathrengyl Bearwalker
step
    +|cRXP_WARN_Done:|r Aquarius Belt / Idol of Shifting Tides. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Druid
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 50-60
#name 50-52 Forest's Embrace / Grizzled Pelt +
#displayname 50-52 Forest's Embrace / Grizzled Pelt +
step
    +|cRXP_WARN_ITEM: Forest's Embrace / Grizzled Pelt +|r. Click to start.
    *Reward: Grizzled Pelt (leather chest, feral), Forest's Embrace (leather chest, healing), Moonshadow Stave (staff, +60 spell power)
    *|cff40ff40GOOD|r [Forest's Embrace]: Chest Leather, 151 armor, +9 Intellect, +8 Spirit, Restores +6 mana per 5 sec. - strong healer chest at 50 (resto druid)
    *|cff40ff40GOOD|r [Grizzled Pelt]: Chest Leather, 151 armor, +17 Strength, +16 Agility, +13 Stamina - strong feral chest at 50
    *|cff40ff40GOOD|r [Moonshadow Stave]: Two-Hand Staff, 33.51 DPS, Restores +8 mana per 5 sec. - +60 spell power staff at 50; excellent for a caster druid
    *Why: Rare chest or staff for each spec; needs the Putrid Vine from Atal'alarion
    *|cRXP_WARN_Needs a group for part of it.|r
    *Forever: changed in Forever: 12,400 XP; Icy Veins says all three are granted, Conquest Capped says pick one (unverified)
step
    .goto 1457,35.37,8.4
    >>Talk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .accept 9063 >>Accept Torwa Pathfinder
    .target Mathrengyl Bearwalker
step
    .goto 1449,71.64,75.96
    >>Talk to |cRXP_FRIENDLY_Torwa Pathfinder|r
    .turnin 9063 >>Turn in Torwa Pathfinder
    .accept 9052 >>Accept Bloodpetal Poison
    .target Torwa Pathfinder
step
    .goto 1449,48.33,81.52
    >>Collect |cRXP_LOOT_[Gorishi Sting]|r from |cRXP_ENEMY_Gorishi Wasp|r, |cRXP_ENEMY_Gorishi Worker|r, |cRXP_ENEMY_Gorishi Reaver|r
    *Collect 8 Bloodcap and 8 Gorishi Stings, and return to Torwa Pathfinder in Un'Goro Crater.
    .complete 9052,1 --Bloodpetal Poison
    .mob Gorishi Wasp
    .mob Gorishi Worker
step
    .goto 1449,29.32,42.37
    >>Collect |cRXP_LOOT_[Bloodcap]|r from |cRXP_PICK_Bloodpetal Sprout|r
    *Collect 8 Bloodcap and 8 Gorishi Stings, and return to Torwa Pathfinder in Un'Goro Crater.
    .complete 9052,2 --Bloodpetal Poison
step
    .goto 1449,71.64,75.96
    >>Talk to |cRXP_FRIENDLY_Torwa Pathfinder|r
    .turnin 9052 >>Turn in Bloodpetal Poison
    .accept 9051 >>Accept Toxic Test
    .target Torwa Pathfinder
step
    .goto 1449,71.64,75.96
    >>Talk to |cRXP_FRIENDLY_Torwa Pathfinder|r
    .turnin 9051 >>Turn in Toxic Test
    .accept 9053 >>Accept A Better Ingredient
    .target Torwa Pathfinder
step
    >>Collect |cRXP_LOOT_[Putrid Vine]|r from |cRXP_ENEMY_Atal'alarion|r
    *Retrieve a Putrid Vine from the guardian at the bottom of the Sunken Temple and return to Torwa Pathfinder.
    .complete 9053,1 --A Better Ingredient
    .mob Atal'alarion
step
    .goto 1449,71.64,75.96
    >>Talk to |cRXP_FRIENDLY_Torwa Pathfinder|r
    .turnin 9053 >>Turn in A Better Ingredient
    .target Torwa Pathfinder
step
    +|cRXP_WARN_Done:|r Forest's Embrace / Grizzled Pelt +. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Druid NightElf
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 10 Bear Form (Night Elf)
#displayname 10 Bear Form (Night Elf)
step
    +|cRXP_WARN_MUST DO: Bear Form|r. Click to start.
    *Reward: Bear Form (defeat Lunaclaw at the Moonkin Stone; Skyborne kill Ur'endra in Shen'dar Highlands)
step
    .goto 1457,35.37,8.4
    >>Talk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .accept 5921 >>Accept Moonglade << NightElf
    .target Mathrengyl Bearwalker
step
    .goto 1457,33.51,8.35
    >>Talk to |cRXP_FRIENDLY_Fylerian Nightwing|r
    .accept 5924 >>Accept Heeding the Call << NightElf
    .target Fylerian Nightwing
step
    .goto 1457,34.77,7.37
    >>Talk to |cRXP_FRIENDLY_Denatharion|r
    .accept 5925 >>Accept Heeding the Call << NightElf
    .target Denatharion
step
    .goto 1457,35.37,8.4
    >>Talk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .turnin 5924 >>Turn in Heeding the Call << NightElf
    .turnin 5925 >>Turn in Heeding the Call << NightElf
    .target Mathrengyl Bearwalker
step
    .goto 1450,56.21,30.64
    >>Talk to |cRXP_FRIENDLY_Dendrite Starblaze|r
    .turnin 5921 >>Turn in Moonglade << NightElf
    .accept 5929 >>Accept Great Bear Spirit << NightElf
    .target Dendrite Starblaze
step
    .goto 1450,56.21,30.64
    >>Talk to |cRXP_FRIENDLY_Dendrite Starblaze|r
    .turnin 5929 >>Turn in Great Bear Spirit << NightElf
    .accept 5931 >>Accept Back to Darnassus << NightElf
    .target Dendrite Starblaze
step
    .goto 1457,35.37,8.4
    >>Talk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .turnin 5931 >>Turn in Back to Darnassus << NightElf
    .accept 6001 >>Accept Body and Heart << NightElf
    .target Mathrengyl Bearwalker
step
    .goto 1457,35.37,8.4
    >>Talk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .turnin 6001 >>Turn in Body and Heart << NightElf
    .target Mathrengyl Bearwalker
step
    .goto 1438,55.95,61.56
    >>Talk to |cRXP_FRIENDLY_Kal|r
    .accept 5923 >>Accept Heeding the Call << NightElf
    .target Kal
step
    .goto 1457,35.37,8.4
    >>Talk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .turnin 5923 >>Turn in Heeding the Call << NightElf
    .target Mathrengyl Bearwalker
step
    +|cRXP_WARN_Done:|r Bear Form. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Druid NightElf
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 14 Cure Poison (Night Elf)
#displayname 14 Cure Poison (Night Elf)
step
    +|cRXP_WARN_MUST DO: Cure Poison|r. Click to start.
    *Reward: Cure Poison (no item reward); optional, Abolish Poison at 26 is better in Classic
step
    .goto 1457,35.37,8.4
    >>Talk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .accept 6121 >>Accept Lessons Anew << NightElf/Skyborne
    .target Mathrengyl Bearwalker
step
    .goto 1450,56.21,30.64
    >>Talk to |cRXP_FRIENDLY_Dendrite Starblaze|r
    .turnin 6121 >>Turn in Lessons Anew << NightElf/Skyborne
    .accept 6122 >>Accept The Principal Source << NightElf/Skyborne
    .target Dendrite Starblaze
step
    >>Collect |cRXP_LOOT_[Filled Cliffspring Falls Sampler]|r
    *Use the Empty Cliffspring Falls Sampler to draw a sample of water from the mouth of the cave by the falls.
    .complete 6122,1 << NightElf/Skyborne --The Principal Source
step
    .goto 1439,37.69,40.66
    >>Talk to |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .turnin 6122 >>Turn in The Principal Source << NightElf/Skyborne
    .accept 6123 >>Accept Gathering the Cure << NightElf/Skyborne
    .target Alanndarian Nightsong
step
    .goto 1413,46,36.5
    *|cRXP_WARN_Inside Wailing Caverns: bring a group.|r
    >>Collect |cRXP_LOOT_[Earthroot]|r from |cRXP_ENEMY_Lasher Sproutling|r, |cRXP_ENEMY_Wrathvine|r
    *Bring 5 Earthroot and 12 Lunar Funguses to Alanndarian Nightsong in Auberdine so she may make a curative salve.
    .complete 6123,1 << NightElf/Skyborne --Gathering the Cure
    .mob Lasher Sproutling
    .mob Wrathvine
step
    .goto 1439,45.94,50.17
    >>Collect |cRXP_LOOT_[Lunar Fungus]|r from |cRXP_PICK_Lunar Fungal Bloom|r
    *Bring 5 Earthroot and 12 Lunar Funguses to Alanndarian Nightsong in Auberdine so she may make a curative salve.
    .complete 6123,2 << NightElf/Skyborne --Gathering the Cure
step
    .goto 1439,37.69,40.66
    >>Talk to |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .turnin 6123 >>Turn in Gathering the Cure << NightElf/Skyborne
    .accept 6124 >>Accept Curing the Sick << NightElf/Skyborne
    .target Alanndarian Nightsong
step
    >>Kill |cRXP_ENEMY_Cured Deer|r
    *Use the Curative Animal Salve on 10 Sickly Deer that are located throughout Darkshore; doing so should cure them. Sickly Deer have been reported starting south of the Cliffspring River to the north of Auberdine and extending all the way into southern Darkshore where the edge of Ashenvale begins.
    .complete 6124,1 << NightElf/Skyborne --Curing the Sick
    .mob Cured Deer
step
    .goto 1450,56.21,30.64
    >>Talk to |cRXP_FRIENDLY_Dendrite Starblaze|r
    .turnin 6124 >>Turn in Curing the Sick << NightElf/Skyborne
    .accept 6125 >>Accept Power over Poison << NightElf
    .target Dendrite Starblaze
step
    .goto 1457,35.37,8.4
    >>Talk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .turnin 6125 >>Turn in Power over Poison << NightElf
    .target Mathrengyl Bearwalker
step
    +|cRXP_WARN_Done:|r Cure Poison. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Druid Skyborne
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 14 Cure Poison (Skyborne)
#displayname 14 Cure Poison (Skyborne)
step
    +|cRXP_WARN_MUST DO: Cure Poison|r. Click to start.
    *Reward: Cure Poison (no item reward); optional, Abolish Poison at 26 is better in Classic
step
    .goto 1457,35.37,8.4
    >>Talk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .accept 6121 >>Accept Lessons Anew << NightElf/Skyborne
    .target Mathrengyl Bearwalker
step
    .goto 1450,56.21,30.64
    >>Talk to |cRXP_FRIENDLY_Dendrite Starblaze|r
    .turnin 6121 >>Turn in Lessons Anew << NightElf/Skyborne
    .accept 6122 >>Accept The Principal Source << NightElf/Skyborne
    .target Dendrite Starblaze
step
    >>Collect |cRXP_LOOT_[Filled Cliffspring Falls Sampler]|r
    *Use the Empty Cliffspring Falls Sampler to draw a sample of water from the mouth of the cave by the falls.
    .complete 6122,1 << NightElf/Skyborne --The Principal Source
step
    .goto 1439,37.69,40.66
    >>Talk to |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .turnin 6122 >>Turn in The Principal Source << NightElf/Skyborne
    .accept 6123 >>Accept Gathering the Cure << NightElf/Skyborne
    .target Alanndarian Nightsong
step
    .goto 1413,46,36.5
    *|cRXP_WARN_Inside Wailing Caverns: bring a group.|r
    >>Collect |cRXP_LOOT_[Earthroot]|r from |cRXP_ENEMY_Lasher Sproutling|r, |cRXP_ENEMY_Wrathvine|r
    *Bring 5 Earthroot and 12 Lunar Funguses to Alanndarian Nightsong in Auberdine so she may make a curative salve.
    .complete 6123,1 << NightElf/Skyborne --Gathering the Cure
    .mob Lasher Sproutling
    .mob Wrathvine
step
    .goto 1439,45.94,50.17
    >>Collect |cRXP_LOOT_[Lunar Fungus]|r from |cRXP_PICK_Lunar Fungal Bloom|r
    *Bring 5 Earthroot and 12 Lunar Funguses to Alanndarian Nightsong in Auberdine so she may make a curative salve.
    .complete 6123,2 << NightElf/Skyborne --Gathering the Cure
step
    .goto 1439,37.69,40.66
    >>Talk to |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .turnin 6123 >>Turn in Gathering the Cure << NightElf/Skyborne
    .accept 6124 >>Accept Curing the Sick << NightElf/Skyborne
    .target Alanndarian Nightsong
step
    >>Kill |cRXP_ENEMY_Cured Deer|r
    *Use the Curative Animal Salve on 10 Sickly Deer that are located throughout Darkshore; doing so should cure them. Sickly Deer have been reported starting south of the Cliffspring River to the north of Auberdine and extending all the way into southern Darkshore where the edge of Ashenvale begins.
    .complete 6124,1 << NightElf/Skyborne --Curing the Sick
    .mob Cured Deer
step
    .goto 1450,56.21,30.64
    >>Talk to |cRXP_FRIENDLY_Dendrite Starblaze|r
    .turnin 6124 >>Turn in Curing the Sick << NightElf/Skyborne
    .target Dendrite Starblaze
step
    +|cRXP_WARN_Done:|r Cure Poison. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Druid NightElf
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 20-29
#name 20 Cat Form (Night Elf)
#displayname 20 Cat Form (Night Elf)
step
    +|cRXP_WARN_MUST DO: Cat Form|r. Click to start.
    *Reward: Cat Form, Prowl, Claw, Shred, Rip (Cat Form was a trainer spell in Classic)
step
    .goto 1457,35.37,8.4
    >>Talk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .accept 98393 >>Accept The Great Cat Spirit << NightElf/Skyborne
    .target Mathrengyl Bearwalker
step
    .goto 1450,56.21,30.64
    >>Talk to |cRXP_FRIENDLY_Dendrite Starblaze|r
    .turnin 98393 >>Turn in The Great Cat Spirit << NightElf/Skyborne
    .accept 98394 >>Accept The Great Cat Spirit << NightElf
    .target Dendrite Starblaze
step
    .goto 1450,58.39,73.52
    >>Talk to |cRXP_FRIENDLY_Great Cat Spirit|r
    .turnin 98394 >>Turn in The Great Cat Spirit << NightElf
    .accept 98396 >>Accept The Great Cat Spirit << NightElf
    .target Great Cat Spirit
step
    .goto 1450,72.4,66
    >>Collect |cRXP_LOOT_[Relic of the Fang]|r from |cRXP_PICK_Relic of the Fang|r. Collect |cRXP_LOOT_[Relic of the Claw]|r from |cRXP_PICK_Relic of the Claw|r. Collect |cRXP_LOOT_[Relic of the Silent Shadow]|r from |cRXP_PICK_Relic of the Silent Shadow|r
    *Recover the Relic of the Fang, Relic of the Claw, and Relic of the Silent Shadow from the Stormrage Barrow Den, and return them to the Great Cat Spirit.
    .complete 98396,1 << NightElf --The Great Cat Spirit
    .complete 98396,2 << NightElf --The Great Cat Spirit
    .complete 98396,3 << NightElf --The Great Cat Spirit
step
    .goto 1450,58.39,73.52
    >>Talk to |cRXP_FRIENDLY_Great Cat Spirit|r
    .turnin 98396 >>Turn in The Great Cat Spirit << NightElf
    .accept 98731 >>Accept Blessings of the Great Cat Spirit << NightElf
    .target Great Cat Spirit
step
    .goto 1450,56.21,30.64
    >>Talk to |cRXP_FRIENDLY_Dendrite Starblaze|r
    .turnin 98731 >>Turn in Blessings of the Great Cat Spirit << NightElf
    .accept 98397 >>Accept To Darnassus << NightElf/Skyborne
    .target Dendrite Starblaze
step
    .goto 1457,35.37,8.4
    >>Talk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .turnin 98397 >>Turn in To Darnassus << NightElf/Skyborne
    .target Mathrengyl Bearwalker
step
    +|cRXP_WARN_Done:|r Cat Form. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Druid Skyborne
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 20-29
#name 20 Cat Form (Skyborne)
#displayname 20 Cat Form (Skyborne)
step
    +|cRXP_WARN_MUST DO: Cat Form|r. Click to start.
    *Reward: Cat Form, Prowl, Claw, Shred, Rip (Cat Form was a trainer spell in Classic)
step
    .goto 1457,35.37,8.4
    >>Talk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .accept 98393 >>Accept The Great Cat Spirit << NightElf/Skyborne
    .target Mathrengyl Bearwalker
step
    .goto 1450,56.21,30.64
    >>Talk to |cRXP_FRIENDLY_Dendrite Starblaze|r
    .turnin 98393 >>Turn in The Great Cat Spirit << NightElf/Skyborne
    .accept 98341 >>Accept The Great Windborne Cat Spirit << Skyborne
    .target Dendrite Starblaze
step
    .goto 1450,43.92,73.44
    >>Talk to |cRXP_FRIENDLY_Avatar of Saeyleenan|r
    .turnin 98341 >>Turn in The Great Windborne Cat Spirit << Skyborne
    .accept 98404 >>Accept The Great Windborne Cat Spirit << Skyborne
    .target Avatar of Saeyleenan
step
    .goto 1450,72.4,66
    >>Collect |cRXP_LOOT_[Relic of the Fang]|r from |cRXP_PICK_Relic of the Fang|r. Collect |cRXP_LOOT_[Relic of the Claw]|r from |cRXP_PICK_Relic of the Claw|r. Collect |cRXP_LOOT_[Relic of the Silent Shadow]|r from |cRXP_PICK_Relic of the Silent Shadow|r
    *Recover the Relic of the Fang, Relic of the Claw, and Relic of the Silent Shadow from the Stormrage Barrow Den, and return them to the Avatar of Saeyleenan.
    .complete 98404,1 << Skyborne --The Great Windborne Cat Spirit
    .complete 98404,2 << Skyborne --The Great Windborne Cat Spirit
    .complete 98404,3 << Skyborne --The Great Windborne Cat Spirit
step
    .goto 1450,43.92,73.44
    >>Talk to |cRXP_FRIENDLY_Avatar of Saeyleenan|r
    .turnin 98404 >>Turn in The Great Windborne Cat Spirit << Skyborne
    .accept 98738 >>Accept Blessings of the Great Windborne Cat Spirit << Skyborne
    .target Avatar of Saeyleenan
step
    .goto 1450,56.21,30.64
    >>Talk to |cRXP_FRIENDLY_Dendrite Starblaze|r
    .turnin 98738 >>Turn in Blessings of the Great Windborne Cat Spirit << Skyborne
    .target Dendrite Starblaze
step
    +|cRXP_WARN_Done:|r Cat Form. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Druid Tauren
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 16 Aquarius Belt / Idol of Shifting Tides (Tauren)
#displayname 16 Aquarius Belt / Idol of Shifting Tides (Tauren)
step
    +|cRXP_WARN_ITEM: Aquarius Belt / Idol of Shifting Tides|r. Click to start.
    *Reward: Choose Idol of Shifting Tides (idol: -40 mana on every shapeshift) or Aquarius Belt
    *|cffffd200OK|r [Aquarius Belt]: Waist Leather, 40 armor, +2 Stamina, +2 Intellect - ordinary green belt for 16
    *|cffffd200OK|r [Idol of Shifting Tides]: Relic Idol - fills an otherwise empty relic slot; helps form-shifting while leveling
    *Why: Your first idol, and you need Aquatic Form anyway
    *Forever: changed in Forever: Idol of Shifting Tides added as a reward option
step
    .goto 1456,76.48,27.22
    >>Talk to |cRXP_FRIENDLY_Turak Runetotem|r
    .accept 26 >>Accept A Lesson to Learn << Tauren
    .target Turak Runetotem
step
    .goto 1450,56.21,30.64
    >>Talk to |cRXP_FRIENDLY_Dendrite Starblaze|r
    .turnin 26 >>Turn in A Lesson to Learn << Tauren
    .accept 28 >>Accept Trial of the Lake << Tauren
    .target Dendrite Starblaze
step
    .goto 1450,36.52,40.1
    >>Talk to |cRXP_FRIENDLY_Tajarri|r
    .turnin 28 >>Turn in Trial of the Lake << Tauren
    .accept 30 >>Accept Trial of the Sea Lion << Tauren
    .target Tajarri
step
    >>Collect |cRXP_LOOT_[Pendant of the Sea Lion]|r
    *Find the Half Pendant of Aquatic Agility and the Half Pendant of Aquatic Endurance. Speak with the residents of Moonglade to learn clues as to where these items may be located.
    .complete 30,1 << Tauren --Trial of the Sea Lion
step
    .goto 1450,56.21,30.64
    >>Talk to |cRXP_FRIENDLY_Dendrite Starblaze|r
    .turnin 30 >>Turn in Trial of the Sea Lion << Tauren
    .accept 31 >>Accept Aquatic Form << Tauren
    .target Dendrite Starblaze
step
    .goto 1456,76.48,27.22
    >>Talk to |cRXP_FRIENDLY_Turak Runetotem|r
    .turnin 31 >>Turn in Aquatic Form << Tauren
    .target Turak Runetotem
step
    +|cRXP_WARN_Done:|r Aquarius Belt / Idol of Shifting Tides. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Druid
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 50-60
#name 50-52 Forest's Embrace / Grizzled Pelt +
#displayname 50-52 Forest's Embrace / Grizzled Pelt +
step
    +|cRXP_WARN_ITEM: Forest's Embrace / Grizzled Pelt +|r. Click to start.
    *Reward: Grizzled Pelt (leather chest, feral), Forest's Embrace (leather chest, healing), Moonshadow Stave (staff, +60 spell power)
    *|cff40ff40GOOD|r [Forest's Embrace]: Chest Leather, 151 armor, +9 Intellect, +8 Spirit, Restores +6 mana per 5 sec. - strong healer chest at 50 (resto druid)
    *|cff40ff40GOOD|r [Grizzled Pelt]: Chest Leather, 151 armor, +17 Strength, +16 Agility, +13 Stamina - strong feral chest at 50
    *|cff40ff40GOOD|r [Moonshadow Stave]: Two-Hand Staff, 33.51 DPS, Restores +8 mana per 5 sec. - +60 spell power staff at 50; excellent for a caster druid
    *Why: Rare chest or staff for each spec; needs the Putrid Vine from Atal'alarion
    *|cRXP_WARN_Needs a group for part of it.|r
    *Forever: changed in Forever: 12,400 XP; Icy Veins says all three are granted, Conquest Capped says pick one (unverified)
step
    .goto 1456,76.48,27.22
    >>Talk to |cRXP_FRIENDLY_Turak Runetotem|r
    .accept 9063 >>Accept Torwa Pathfinder
    .target Turak Runetotem
step
    .goto 1449,71.64,75.96
    >>Talk to |cRXP_FRIENDLY_Torwa Pathfinder|r
    .turnin 9063 >>Turn in Torwa Pathfinder
    .accept 9052 >>Accept Bloodpetal Poison
    .target Torwa Pathfinder
step
    .goto 1449,48.33,81.52
    >>Collect |cRXP_LOOT_[Gorishi Sting]|r from |cRXP_ENEMY_Gorishi Wasp|r, |cRXP_ENEMY_Gorishi Worker|r, |cRXP_ENEMY_Gorishi Reaver|r
    *Collect 8 Bloodcap and 8 Gorishi Stings, and return to Torwa Pathfinder in Un'Goro Crater.
    .complete 9052,1 --Bloodpetal Poison
    .mob Gorishi Wasp
    .mob Gorishi Worker
step
    .goto 1449,29.32,42.37
    >>Collect |cRXP_LOOT_[Bloodcap]|r from |cRXP_PICK_Bloodpetal Sprout|r
    *Collect 8 Bloodcap and 8 Gorishi Stings, and return to Torwa Pathfinder in Un'Goro Crater.
    .complete 9052,2 --Bloodpetal Poison
step
    .goto 1449,71.64,75.96
    >>Talk to |cRXP_FRIENDLY_Torwa Pathfinder|r
    .turnin 9052 >>Turn in Bloodpetal Poison
    .accept 9051 >>Accept Toxic Test
    .target Torwa Pathfinder
step
    .goto 1449,71.64,75.96
    >>Talk to |cRXP_FRIENDLY_Torwa Pathfinder|r
    .turnin 9051 >>Turn in Toxic Test
    .accept 9053 >>Accept A Better Ingredient
    .target Torwa Pathfinder
step
    >>Collect |cRXP_LOOT_[Putrid Vine]|r from |cRXP_ENEMY_Atal'alarion|r
    *Retrieve a Putrid Vine from the guardian at the bottom of the Sunken Temple and return to Torwa Pathfinder.
    .complete 9053,1 --A Better Ingredient
    .mob Atal'alarion
step
    .goto 1449,71.64,75.96
    >>Talk to |cRXP_FRIENDLY_Torwa Pathfinder|r
    .turnin 9053 >>Turn in A Better Ingredient
    .target Torwa Pathfinder
step
    +|cRXP_WARN_Done:|r Forest's Embrace / Grizzled Pelt +. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Druid Tauren
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 10 Bear Form (Tauren)
#displayname 10 Bear Form (Tauren)
step
    +|cRXP_WARN_MUST DO: Bear Form|r. Click to start.
    *Reward: Bear Form (defeat Lunaclaw at the Moonkin Stone; Skyborne kill Ur'endra in Shen'dar Highlands)
step
    .goto 1456,76.48,27.22
    >>Talk to |cRXP_FRIENDLY_Turak Runetotem|r
    .accept 5922 >>Accept Moonglade << Tauren
    .target Turak Runetotem
step
    .goto 1456,45.81,64.71
    >>Talk to |cRXP_FRIENDLY_Innkeeper Pala|r
    .accept 5928 >>Accept Heeding the Call << Tauren
    .target Innkeeper Pala
step
    .goto 1456,76.48,27.22
    >>Talk to |cRXP_FRIENDLY_Turak Runetotem|r
    .turnin 5928 >>Turn in Heeding the Call << Tauren
    .target Turak Runetotem
step
    .goto 1450,56.21,30.64
    >>Talk to |cRXP_FRIENDLY_Dendrite Starblaze|r
    .turnin 5922 >>Turn in Moonglade << Tauren
    .accept 5930 >>Accept Great Bear Spirit << Tauren
    .target Dendrite Starblaze
step
    .goto 1450,56.21,30.64
    >>Talk to |cRXP_FRIENDLY_Dendrite Starblaze|r
    .turnin 5930 >>Turn in Great Bear Spirit << Tauren
    .accept 5932 >>Accept Back to Thunder Bluff << Tauren
    .target Dendrite Starblaze
step
    .goto 1456,76.48,27.22
    >>Talk to |cRXP_FRIENDLY_Turak Runetotem|r
    .turnin 5932 >>Turn in Back to Thunder Bluff << Tauren
    .accept 6002 >>Accept Body and Heart << Tauren
    .target Turak Runetotem
step
    .goto 1456,76.48,27.22
    >>Talk to |cRXP_FRIENDLY_Turak Runetotem|r
    .turnin 6002 >>Turn in Body and Heart << Tauren
    .target Turak Runetotem
step
    .goto 1412,47.48,62.95
    >>Talk to |cRXP_FRIENDLY_Gennia Runetotem|r
    .accept 5926 >>Accept Heeding the Call << Tauren
    .target Gennia Runetotem
step
    .goto 1412,44.65,76.55
    >>Talk to |cRXP_FRIENDLY_Gart Mistrunner|r
    .accept 5927 >>Accept Heeding the Call << Tauren
    .target Gart Mistrunner
step
    .goto 1456,76.48,27.22
    >>Talk to |cRXP_FRIENDLY_Turak Runetotem|r
    .turnin 5926 >>Turn in Heeding the Call << Tauren
    .turnin 5927 >>Turn in Heeding the Call << Tauren
    .target Turak Runetotem
step
    +|cRXP_WARN_Done:|r Bear Form. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Druid Tauren
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 14 Cure Poison (Tauren)
#displayname 14 Cure Poison (Tauren)
step
    +|cRXP_WARN_MUST DO: Cure Poison|r. Click to start.
    *Reward: Cure Poison (no item reward); optional, Abolish Poison at 26 is better in Classic
step
    .goto 1456,76.48,27.22
    >>Talk to |cRXP_FRIENDLY_Turak Runetotem|r
    .accept 6126 >>Accept Lessons Anew << Tauren
    .target Turak Runetotem
step
    .goto 1450,56.21,30.64
    >>Talk to |cRXP_FRIENDLY_Dendrite Starblaze|r
    .turnin 6126 >>Turn in Lessons Anew << Tauren
    .accept 6127 >>Accept The Principal Source << Tauren
    .target Dendrite Starblaze
step
    >>Collect |cRXP_LOOT_[Filled Dreadmist Peak Sampler]|r
    *Use the Empty Dreadmist Peak Sampler to draw a sample of water from a pool at the top of the peak.
    .complete 6127,1 << Tauren --The Principal Source
step
    .goto 1413,52.26,31.93
    >>Talk to |cRXP_FRIENDLY_Tonga Runetotem|r
    .turnin 6127 >>Turn in The Principal Source << Tauren
    .accept 6128 >>Accept Gathering the Cure << Tauren
    .target Tonga Runetotem
step
    .goto 1413,46,36.5
    *|cRXP_WARN_Inside Wailing Caverns: bring a group.|r
    >>Collect |cRXP_LOOT_[Earthroot]|r from |cRXP_ENEMY_Lasher Sproutling|r, |cRXP_ENEMY_Wrathvine|r. Collect |cRXP_LOOT_[Kodo Horn]|r from |cRXP_ENEMY_Lost Barrens Kodo|r, |cRXP_ENEMY_Barrens Kodo|r
    *Bring 5 Earthroot and 5 Kodo Horns to Tonga Runetotem at the Crossroads so he may make a curative salve.
    .complete 6128,1 << Tauren --Gathering the Cure
    .complete 6128,2 << Tauren --Gathering the Cure
    .mob Lasher Sproutling
    .mob Wrathvine
    .mob Lost Barrens Kodo
    .mob Barrens Kodo
step
    .goto 1413,52.26,31.93
    >>Talk to |cRXP_FRIENDLY_Tonga Runetotem|r
    .turnin 6128 >>Turn in Gathering the Cure << Tauren
    .accept 6129 >>Accept Curing the Sick << Tauren
    .target Tonga Runetotem
step
    >>Kill |cRXP_ENEMY_Cured Gazelle|r
    *Use the Curative Animal Salve on 10 Sickly Gazelles that are located throughout the northern part of the Barrens; doing so should cure them. Sickly Gazelles have been reported north of the east-west road that runs through the Crossroads.
    .complete 6129,1 << Tauren --Curing the Sick
    .mob Cured Gazelle
step
    .goto 1450,56.21,30.64
    >>Talk to |cRXP_FRIENDLY_Dendrite Starblaze|r
    .turnin 6129 >>Turn in Curing the Sick << Tauren
    .accept 6130 >>Accept Power over Poison << Tauren
    .target Dendrite Starblaze
step
    .goto 1456,76.48,27.22
    >>Talk to |cRXP_FRIENDLY_Turak Runetotem|r
    .turnin 6130 >>Turn in Power over Poison << Tauren
    .target Turak Runetotem
step
    +|cRXP_WARN_Done:|r Cure Poison. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Druid Tauren
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 20-29
#name 20 Cat Form (Tauren)
#displayname 20 Cat Form (Tauren)
step
    +|cRXP_WARN_MUST DO: Cat Form|r. Click to start.
    *Reward: Cat Form, Prowl, Claw, Shred, Rip (Cat Form was a trainer spell in Classic)
step
    .goto 1456,76.48,27.22
    >>Talk to |cRXP_FRIENDLY_Turak Runetotem|r
    .accept 98340 >>Accept The Great Cat Spirit << Tauren/Skyborne
    .target Turak Runetotem
step
    .goto 1450,56.21,30.64
    >>Talk to |cRXP_FRIENDLY_Dendrite Starblaze|r
    .turnin 98340 >>Turn in The Great Cat Spirit << Tauren/Skyborne
    .accept 98405 >>Accept The Great Cat Spirit << Tauren
    .target Dendrite Starblaze
step
    .goto 1450,58.39,73.52
    >>Talk to |cRXP_FRIENDLY_Great Cat Spirit|r
    .turnin 98405 >>Turn in The Great Cat Spirit << Tauren
    .accept 98342 >>Accept The Great Cat Spirit << Tauren
    .target Great Cat Spirit
step
    .goto 1450,72.4,66
    >>Collect |cRXP_LOOT_[Relic of the Fang]|r from |cRXP_PICK_Relic of the Fang|r. Collect |cRXP_LOOT_[Relic of the Claw]|r from |cRXP_PICK_Relic of the Claw|r. Collect |cRXP_LOOT_[Relic of the Silent Shadow]|r from |cRXP_PICK_Relic of the Silent Shadow|r
    *Recover the Relic of the Fang, Relic of the Claw, and Relic of the Silent Shadow from the Stormrage Barrow Den, and return them to the Great Cat Spirit.
    .complete 98342,1 << Tauren --The Great Cat Spirit
    .complete 98342,2 << Tauren --The Great Cat Spirit
    .complete 98342,3 << Tauren --The Great Cat Spirit
step
    .goto 1450,58.39,73.52
    >>Talk to |cRXP_FRIENDLY_Great Cat Spirit|r
    .turnin 98342 >>Turn in The Great Cat Spirit << Tauren
    .accept 98739 >>Accept Blessings of the Great Cat Spirit << Tauren
    .target Great Cat Spirit
step
    .goto 1450,56.21,30.64
    >>Talk to |cRXP_FRIENDLY_Dendrite Starblaze|r
    .turnin 98739 >>Turn in Blessings of the Great Cat Spirit << Tauren
    .accept 98362 >>Accept To Thunder Bluff << Tauren/Skyborne
    .target Dendrite Starblaze
step
    .goto 1456,76.48,27.22
    >>Talk to |cRXP_FRIENDLY_Turak Runetotem|r
    .turnin 98362 >>Turn in To Thunder Bluff << Tauren/Skyborne
    .target Turak Runetotem
step
    +|cRXP_WARN_Done:|r Cat Form. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Druid Skyborne
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 20-29
#name 20 Cat Form (Skyborne)
#displayname 20 Cat Form (Skyborne)
step
    +|cRXP_WARN_MUST DO: Cat Form|r. Click to start.
    *Reward: Cat Form, Prowl, Claw, Shred, Rip (Cat Form was a trainer spell in Classic)
step
    .goto 1456,76.48,27.22
    >>Talk to |cRXP_FRIENDLY_Turak Runetotem|r
    .accept 98340 >>Accept The Great Cat Spirit << Tauren/Skyborne
    .target Turak Runetotem
step
    .goto 1450,56.21,30.64
    >>Talk to |cRXP_FRIENDLY_Dendrite Starblaze|r
    .turnin 98340 >>Turn in The Great Cat Spirit << Tauren/Skyborne
    .accept 98341 >>Accept The Great Windborne Cat Spirit << Skyborne
    .target Dendrite Starblaze
step
    .goto 1450,43.92,73.44
    >>Talk to |cRXP_FRIENDLY_Avatar of Saeyleenan|r
    .turnin 98341 >>Turn in The Great Windborne Cat Spirit << Skyborne
    .accept 98404 >>Accept The Great Windborne Cat Spirit << Skyborne
    .target Avatar of Saeyleenan
step
    .goto 1450,72.4,66
    >>Collect |cRXP_LOOT_[Relic of the Fang]|r from |cRXP_PICK_Relic of the Fang|r. Collect |cRXP_LOOT_[Relic of the Claw]|r from |cRXP_PICK_Relic of the Claw|r. Collect |cRXP_LOOT_[Relic of the Silent Shadow]|r from |cRXP_PICK_Relic of the Silent Shadow|r
    *Recover the Relic of the Fang, Relic of the Claw, and Relic of the Silent Shadow from the Stormrage Barrow Den, and return them to the Avatar of Saeyleenan.
    .complete 98404,1 << Skyborne --The Great Windborne Cat Spirit
    .complete 98404,2 << Skyborne --The Great Windborne Cat Spirit
    .complete 98404,3 << Skyborne --The Great Windborne Cat Spirit
step
    .goto 1450,43.92,73.44
    >>Talk to |cRXP_FRIENDLY_Avatar of Saeyleenan|r
    .turnin 98404 >>Turn in The Great Windborne Cat Spirit << Skyborne
    .accept 98738 >>Accept Blessings of the Great Windborne Cat Spirit << Skyborne
    .target Avatar of Saeyleenan
step
    .goto 1450,56.21,30.64
    >>Talk to |cRXP_FRIENDLY_Dendrite Starblaze|r
    .turnin 98738 >>Turn in Blessings of the Great Windborne Cat Spirit << Skyborne
    .target Dendrite Starblaze
step
    +|cRXP_WARN_Done:|r Cat Form. Enjoy the loot. Click to finish.
]])
