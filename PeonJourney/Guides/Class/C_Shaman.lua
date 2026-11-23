RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Shaman Human/Alliance Shaman NightElf/Alliance Shaman Gnome/Alliance Shaman Skyborne
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 10-14 Call of Fire (Human/Night Elf/Gnome/Skyborne)
#displayname 10-14 Call of Fire (Human/Night Elf/Gnome/Skyborne)
step
    +|cRXP_WARN_ITEM: Call of Fire|r. Click to start.
    *Reward: Fire Totem + Totem of Charged Flames (relic: -5 mana on Flame Shock and Lightning Bolt) + Searing Totem
    *Why: Gives your first relic-slot totem on top of the Fire Totem
    *Forever: changed in Forever: Totem of Charged Flames relic added; Dwarf and Skyborne versions are new
step
    .goto 1426,87.94,44.8
    >>Talk to |cRXP_FRIENDLY_Bruegs Kindleborn|r
    .accept 94465 >>Accept Call of Fire
    .target Bruegs Kindleborn
step
    .goto 1432,32.17,65.97
    >>Talk to |cRXP_FRIENDLY_Braldir Ashmantle|r
    .turnin 94465 >>Turn in Call of Fire
    .accept 94466 >>Accept Call of Fire
    .target Braldir Ashmantle
step
    .goto 1413,59.14,25.06
    >>Collect |cRXP_LOOT_[Fire Tar]|r from |cRXP_ENEMY_Tunnel Rat Geomancer|r, |cRXP_ENEMY_Razormane Seer|r, |cRXP_ENEMY_Razormane Geomancer|r
    *Bring 1 Fire Tar and 1 Reagent Pouch to Braldir Ashmantle in Loch Modan.
    .complete 94466,1 --Call of Fire
    .mob Tunnel Rat Geomancer
    .mob Razormane Seer
step
    .goto 1432,34.01,85.01
    >>Collect |cRXP_LOOT_[Reagent Pouch]|r from |cRXP_ENEMY_Stonesplinter Seer|r
    *Bring 1 Fire Tar and 1 Reagent Pouch to Braldir Ashmantle in Loch Modan.
    .complete 94466,2 --Call of Fire
    .mob Stonesplinter Seer
step
    .goto 1432,32.17,65.97
    >>Talk to |cRXP_FRIENDLY_Braldir Ashmantle|r
    .turnin 94466 >>Turn in Call of Fire
    .accept 94467 >>Accept Call of Fire
    .target Braldir Ashmantle
step
    .goto 2521,50.99,85.11
    >>Collect |cRXP_LOOT_[Glowing Ember]|r from |cRXP_ENEMY_Manifestation of Flames|r
    *Defeat the Minor Manifestation of Fire, and place the Glowing Ember in the brazier atop the Shrine of Eternal Flame.
    .complete 94467,1 --Call of Fire
    .mob Manifestation of Flames
step
    .goto 1432,31.79,64.52
    >>Click the |cRXP_PICK_Brazier of the Dormant Flame|r
    .turnin 94467 >>Turn in Call of Fire
step
    +|cRXP_WARN_Done:|r Call of Fire. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Shaman Dwarf
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 10-14 Totem of Charged Flames (Dwarf)
#displayname 10-14 Totem of Charged Flames (Dwarf)
step
    +|cRXP_WARN_ITEM: Totem of Charged Flames|r. Click to start.
    *Reward: Fire Totem + Totem of Charged Flames (relic: -5 mana on Flame Shock and Lightning Bolt) + Searing Totem
    *|cffffd200OK|r [Totem of Charged Flames]: Relic Totem - fills an otherwise empty relic slot; small mana saving
    *Why: Gives your first relic-slot totem on top of the Fire Totem
    *Forever: changed in Forever: Totem of Charged Flames relic added; Dwarf and Skyborne versions are new
step
    .goto 1455,47.1,13.79
    >>Talk to |cRXP_FRIENDLY_Eldrun Stormbreaker|r
    .accept 94449 >>Accept Call of Fire << Dwarf
    .target Eldrun Stormbreaker
step
    .goto 1426,87.94,44.8
    >>Talk to |cRXP_FRIENDLY_Bruegs Kindleborn|r
    .turnin 94449 >>Turn in Call of Fire << Dwarf
    .accept 94465 >>Accept Call of Fire
    .target Bruegs Kindleborn
step
    .goto 1432,32.17,65.97
    >>Talk to |cRXP_FRIENDLY_Braldir Ashmantle|r
    .turnin 94465 >>Turn in Call of Fire
    .accept 94466 >>Accept Call of Fire
    .target Braldir Ashmantle
step
    .goto 1413,59.14,25.06
    >>Collect |cRXP_LOOT_[Fire Tar]|r from |cRXP_ENEMY_Tunnel Rat Geomancer|r, |cRXP_ENEMY_Razormane Seer|r, |cRXP_ENEMY_Razormane Geomancer|r
    *Bring 1 Fire Tar and 1 Reagent Pouch to Braldir Ashmantle in Loch Modan.
    .complete 94466,1 --Call of Fire
    .mob Tunnel Rat Geomancer
    .mob Razormane Seer
step
    .goto 1432,34.01,85.01
    >>Collect |cRXP_LOOT_[Reagent Pouch]|r from |cRXP_ENEMY_Stonesplinter Seer|r
    *Bring 1 Fire Tar and 1 Reagent Pouch to Braldir Ashmantle in Loch Modan.
    .complete 94466,2 --Call of Fire
    .mob Stonesplinter Seer
step
    .goto 1432,32.17,65.97
    >>Talk to |cRXP_FRIENDLY_Braldir Ashmantle|r
    .turnin 94466 >>Turn in Call of Fire
    .accept 94467 >>Accept Call of Fire
    .target Braldir Ashmantle
step
    .goto 2521,50.99,85.11
    >>Collect |cRXP_LOOT_[Glowing Ember]|r from |cRXP_ENEMY_Manifestation of Flames|r
    *Defeat the Minor Manifestation of Fire, and place the Glowing Ember in the brazier atop the Shrine of Eternal Flame.
    .complete 94467,1 --Call of Fire
    .mob Manifestation of Flames
step
    .goto 1432,31.79,64.52
    >>Click the |cRXP_PICK_Brazier of the Dormant Flame|r
    .turnin 94467 >>Turn in Call of Fire
    .accept 94468 >>Accept Call of Fire << Dwarf
step
    .goto 1426,87.94,44.8
    >>Talk to |cRXP_FRIENDLY_Bruegs Kindleborn|r
    .turnin 94468 >>Turn in Call of Fire << Dwarf
    .target Bruegs Kindleborn
step
    +|cRXP_WARN_Done:|r Totem of Charged Flames. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Shaman
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 30-39
#name 30-43 Rage of the Storm
#displayname 30-43 Rage of the Storm
step
    +|cRXP_WARN_ITEM: Rage of the Storm|r. Click to start.
    *Reward: Choose Rage of the Storm (two-hand mace, +10% Stormstrike damage), Lightning's Grasp (main-hand fist, +46 spell power, +1% Lightning Bolt crit) or Tidebringer's Claw (main-hand fist, +86 healing, +2% Healing Wave crit); 
    *|cff40ff40GOOD|r [Rage of the Storm]: Two-Hand Mace, 35.56 DPS, +16 Strength, +15 Stamina - rare ilvl 40 2H at req 30 for enhancement shaman; Stormstrike bonus needs the level 40 talent. json reqlevel 30 (jsonEquip says 1)
    *Why: Spec-specific item level 40 weapon; kill Charlga Razorflank in Razorfen Kraul, farm 20 Twisted Totems in four zones, then the Thousand Needles event
    *|cRXP_WARN_Needs a group for part of it.|r
    *Forever: new in Forever (Heed My Call event has elite waves and the elite Ravaging Tempest; group of 3-5 advised; Rage of the Storm stats changed several times in beta, check tooltip)
step
    .goto 1455,47.1,13.79
    >>Talk to |cRXP_FRIENDLY_Eldrun Stormbreaker|r
    .accept 94789 >>Accept Call of Air
    .target Eldrun Stormbreaker
step
    .goto 1417,59.84,27.57
    >>Talk to |cRXP_FRIENDLY_Veyric Thunderhame|r
    .turnin 94789 >>Turn in Call of Air
    .accept 96264 >>Accept Elemental Aid
    .target Veyric Thunderhame
step
    .goto 1413,42.9,90.2
    *|cRXP_WARN_Inside Razorfen Kraul: bring a group.|r
    >>Collect |cRXP_LOOT_[Tattered Note]|r from |cRXP_ENEMY_Charlga Razorflank|r
    *Defeat Charlga Razorflank in Razorfen Kraul and collect information on the quilboar's plans.
    .complete 96264,1 --Elemental Aid
    .mob Charlga Razorflank
step
    .goto 1417,59.84,27.57
    >>Talk to |cRXP_FRIENDLY_Veyric Thunderhame|r
    .turnin 96264 >>Turn in Elemental Aid
    .accept 79358 >>Accept Storm, Earth, and Fire
    .target Veyric Thunderhame
step
    .goto 1445,57.96,11.2
    >>Collect |cRXP_LOOT_[Twisted Water Totem]|r from |cRXP_ENEMY_Mirefin Puddlejumper|r, |cRXP_ENEMY_Mirefin Murloc|r, |cRXP_ENEMY_Mirefin Warrior|r
    *Collect 5 Twisted Fire Totems, 5 Twisted Earth Totems, 5 Twisted Air Totems, and 5 Twisted Water Totems for Veyric Thunderhame in Arathi Highlands.
    .complete 79358,1 --Storm, Earth, and Fire
    .mob Mirefin Puddlejumper
    .mob Mirefin Murloc
step
    .goto 1435,60.94,23.86
    >>Collect |cRXP_LOOT_[Twisted Earth Totem]|r from |cRXP_ENEMY_Lost One Mudlurker|r, |cRXP_ENEMY_Lost One Fisherman|r, |cRXP_ENEMY_Lost One Hunter|r
    *Collect 5 Twisted Fire Totems, 5 Twisted Earth Totems, 5 Twisted Air Totems, and 5 Twisted Water Totems for Veyric Thunderhame in Arathi Highlands.
    .complete 79358,2 --Storm, Earth, and Fire
    .mob Lost One Mudlurker
    .mob Lost One Fisherman
step
    .goto 1418,10.59,77.63
    >>Collect |cRXP_LOOT_[Twisted Fire Totem]|r from |cRXP_ENEMY_Dustbelcher Ogre|r, |cRXP_ENEMY_Dustbelcher Brute|r, |cRXP_ENEMY_Dustbelcher Wyrmhunter|r
    *Collect 5 Twisted Fire Totems, 5 Twisted Earth Totems, 5 Twisted Air Totems, and 5 Twisted Water Totems for Veyric Thunderhame in Arathi Highlands.
    .complete 79358,3 --Storm, Earth, and Fire
    .mob Dustbelcher Ogre
    .mob Dustbelcher Brute
step
    .goto 1443,30.76,55.71
    >>Collect |cRXP_LOOT_[Twisted Air Totem]|r from |cRXP_ENEMY_Maraudine Scout|r, |cRXP_ENEMY_Maraudine Wrangler|r, |cRXP_ENEMY_Maraudine Mauler|r
    *Collect 5 Twisted Fire Totems, 5 Twisted Earth Totems, 5 Twisted Air Totems, and 5 Twisted Water Totems for Veyric Thunderhame in Arathi Highlands.
    .complete 79358,4 --Storm, Earth, and Fire
    .mob Maraudine Scout
    .mob Maraudine Wrangler
step
    .goto 1417,59.84,27.57
    >>Talk to |cRXP_FRIENDLY_Veyric Thunderhame|r
    .turnin 79358 >>Turn in Storm, Earth, and Fire
    .accept 96135 >>Accept Heed My Call
    .target Veyric Thunderhame
step
    .goto 1441,37.18,40.39
    >>Collect |cRXP_LOOT_[Eye of the Tempest]|r from |cRXP_ENEMY_Ravaging Tempest|r
    *Use the Twisted Totems to put an end to the quilboar ritual.
    .complete 96135,1 --Heed My Call
    .mob Ravaging Tempest
step
    .goto 1417,59.84,27.57
    >>Talk to |cRXP_FRIENDLY_Veyric Thunderhame|r
    .turnin 96135 >>Turn in Heed My Call
    .accept 96016 >>Accept The Tempest's Weapons
    .target Veyric Thunderhame
step
    .goto 1416,80.5,66.92
    >>Talk to |cRXP_FRIENDLY_Bath'rah the Windwatcher|r
    .turnin 96016 >>Turn in The Tempest's Weapons
    .target Bath'rah the Windwatcher
step
    +|cRXP_WARN_Done:|r Rage of the Storm. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Shaman Human/Alliance Shaman NightElf/Alliance Shaman Skyborne
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 4 Call of Earth (Human/Night Elf/Skyborne)
#displayname 4 Call of Earth (Human/Night Elf/Skyborne)
step
    +|cRXP_WARN_MUST DO: Call of Earth|r. Click to start.
    *Reward: Earth Totem + Stoneskin Totem (Orc/Troll: Canaga Earthcaller; Tauren: Seer Ravenfeather; Dwarf: Teo Hammerstorm; Skyborne: Windshaper Boro, opens at 3)
step
    .goto 1426,28.79,66.18
    >>Talk to |cRXP_FRIENDLY_Teo Hammerstorm|r
    .accept 94374 >>Accept Call of Earth
    .target Teo Hammerstorm
step
    .goto 1411,44.03,76.2
    >>Talk to |cRXP_FRIENDLY_Minor Manifestation of Earth|r
    .turnin 94374 >>Turn in Call of Earth
    .accept 94375 >>Accept Call of Earth
    .target Minor Manifestation of Earth
step
    .goto 1426,28.79,66.18
    >>Talk to |cRXP_FRIENDLY_Teo Hammerstorm|r
    .turnin 94375 >>Turn in Call of Earth
    .target Teo Hammerstorm
step
    +|cRXP_WARN_Done:|r Call of Earth. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Shaman Dwarf
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 4 Call of Earth (Dwarf)
#displayname 4 Call of Earth (Dwarf)
step
    +|cRXP_WARN_MUST DO: Call of Earth|r. Click to start.
    *Reward: Earth Totem + Stoneskin Totem (Orc/Troll: Canaga Earthcaller; Tauren: Seer Ravenfeather; Dwarf: Teo Hammerstorm; Skyborne: Windshaper Boro, opens at 3)
step
    .goto 1455,47.1,13.79
    >>Talk to |cRXP_FRIENDLY_Eldrun Stormbreaker|r
    .accept 96243 >>Accept Call of Earth << Dwarf/Gnome
    .target Eldrun Stormbreaker
step
    .goto 1426,28.79,66.18
    >>Talk to |cRXP_FRIENDLY_Teo Hammerstorm|r
    .turnin 96243 >>Turn in Call of Earth << Dwarf/Gnome
    .accept 94373 >>Accept Call of Earth << Dwarf
    .target Teo Hammerstorm
step
    .goto 1426,25.86,78.26
    >>Collect |cRXP_LOOT_[Iceclaw Bear Pendant]|r from |cRXP_ENEMY_Frostmane Troll Whelp|r, |cRXP_ENEMY_Frostmane Novice|r
    *Bring 2 Frostmane Bear Pendants to Teo Hammerstorm in Anvilmar.
    .complete 94373,1 << Dwarf --Call of Earth
    .mob Frostmane Troll Whelp
    .mob Frostmane Novice
step
    .goto 1426,28.79,66.18
    >>Talk to |cRXP_FRIENDLY_Teo Hammerstorm|r
    .turnin 94373 >>Turn in Call of Earth << Dwarf
    .accept 94374 >>Accept Call of Earth
    .target Teo Hammerstorm
step
    .goto 1411,44.03,76.2
    >>Talk to |cRXP_FRIENDLY_Minor Manifestation of Earth|r
    .turnin 94374 >>Turn in Call of Earth
    .accept 94375 >>Accept Call of Earth
    .target Minor Manifestation of Earth
step
    .goto 1426,28.79,66.18
    >>Talk to |cRXP_FRIENDLY_Teo Hammerstorm|r
    .turnin 94375 >>Turn in Call of Earth
    .target Teo Hammerstorm
step
    +|cRXP_WARN_Done:|r Call of Earth. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Shaman Gnome
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 4 Call of Earth (Gnome)
#displayname 4 Call of Earth (Gnome)
step
    +|cRXP_WARN_MUST DO: Call of Earth|r. Click to start.
    *Reward: Earth Totem + Stoneskin Totem (Orc/Troll: Canaga Earthcaller; Tauren: Seer Ravenfeather; Dwarf: Teo Hammerstorm; Skyborne: Windshaper Boro, opens at 3)
step
    .goto 1455,47.1,13.79
    >>Talk to |cRXP_FRIENDLY_Eldrun Stormbreaker|r
    .accept 96243 >>Accept Call of Earth << Dwarf/Gnome
    .target Eldrun Stormbreaker
step
    .goto 1426,28.79,66.18
    >>Talk to |cRXP_FRIENDLY_Teo Hammerstorm|r
    .turnin 96243 >>Turn in Call of Earth << Dwarf/Gnome
    .accept 94374 >>Accept Call of Earth
    .target Teo Hammerstorm
step
    .goto 1411,44.03,76.2
    >>Talk to |cRXP_FRIENDLY_Minor Manifestation of Earth|r
    .turnin 94374 >>Turn in Call of Earth
    .accept 94375 >>Accept Call of Earth
    .target Minor Manifestation of Earth
step
    .goto 1426,28.79,66.18
    >>Talk to |cRXP_FRIENDLY_Teo Hammerstorm|r
    .turnin 94375 >>Turn in Call of Earth
    .target Teo Hammerstorm
step
    +|cRXP_WARN_Done:|r Call of Earth. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Shaman Human/Alliance Shaman NightElf/Alliance Shaman Gnome/Alliance Shaman Skyborne
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 20-29
#name 20-23 Call of Water (Human/Night Elf/Gnome/Skyborne)
#displayname 20-23 Call of Water (Human/Night Elf/Gnome/Skyborne)
step
    +|cRXP_WARN_MUST DO: Call of Water|r. Click to start.
    *Reward: Water Totem + Healing Stream Totem (Horde: Islen Waterseer, 3 waterskins; Dwarf: nine-quest chain via Norric Lochthane across five zones; no Skyborne version in beta data). Takes 1-2 hours of travel
step
    .goto 1455,47.1,13.79
    >>Talk to |cRXP_FRIENDLY_Eldrun Stormbreaker|r
    .accept 94494 >>Accept Call of Water
    .target Eldrun Stormbreaker
step
    .goto 1432,41.76,19.05
    >>Talk to |cRXP_FRIENDLY_Norric Lochthane|r
    .turnin 94494 >>Turn in Call of Water
    .accept 94495 >>Accept Call of Water
    .target Norric Lochthane
step
    .goto 1437,65.76,76.52
    >>Talk to |cRXP_FRIENDLY_Hervdana Saegrund|r
    .turnin 94495 >>Turn in Call of Water
    .accept 94497 >>Accept Call of Water
    .target Hervdana Saegrund
step
    >>Collect |cRXP_LOOT_[Full Brown Waterskin]|r
    *Fill the Empty Brown Waterskin at the bottom of the waterfalls below Hervdana's cave and return it to her in the Wetlands.
    .complete 94497,1 --Call of Water
step
    .goto 1437,65.76,76.52
    >>Talk to |cRXP_FRIENDLY_Hervdana Saegrund|r
    .turnin 94497 >>Turn in Call of Water
    .accept 94499 >>Accept Call of Water
    .target Hervdana Saegrund
step
    >>Collect |cRXP_LOOT_[Full Red Waterskin]|r
    *Fill the Empty Red Waterskin at Stonewatch Falls near the Nightcrawler Murlocs and return to Hervdana Saegrund in the Wetlands.
    .complete 94499,1 --Call of Water
step
    .goto 1437,65.76,76.52
    >>Talk to |cRXP_FRIENDLY_Hervdana Saegrund|r
    .turnin 94499 >>Turn in Call of Water
    .accept 94500 >>Accept Call of Water
    .target Hervdana Saegrund
step
    >>Collect |cRXP_LOOT_[Full Blue Waterskin]|r
    *Fill the Unfilled Blue Waterskin at the waters of Astranaar in Ashenvale and return to Hervdana Saegrund in the Wetlands.
    .complete 94500,1 --Call of Water
step
    .goto 1437,65.76,76.52
    >>Talk to |cRXP_FRIENDLY_Hervdana Saegrund|r
    .turnin 94500 >>Turn in Call of Water
    .accept 94501 >>Accept Call of Water
    .target Hervdana Saegrund
step
    .goto 1432,41.76,19.05
    >>Talk to |cRXP_FRIENDLY_Norric Lochthane|r
    .turnin 94501 >>Turn in Call of Water
    .accept 94502 >>Accept Call of Water
    .target Norric Lochthane
step
    .goto 1421,38.78,44.26
    >>Collect |cRXP_LOOT_[Corrupt Manifestation's Bracers]|r from |cRXP_ENEMY_Corrupt Minor Manifestation of Water|r
    *Drink the Water Sapta and Cleanse the corruption at Stendel's Pond in Westfall.
    .complete 94502,1 --Call of Water
    .mob Corrupt Minor Manifestation of Water
step
    .goto 1436,45.59,59.91
    >>Click the |cRXP_PICK_Forgotten Shrine|r
    .turnin 94502 >>Turn in Call of Water
step
    +|cRXP_WARN_Done:|r Call of Water. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Shaman Dwarf
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 20-29
#name 20-23 Call of Water (Dwarf)
#displayname 20-23 Call of Water (Dwarf)
step
    +|cRXP_WARN_MUST DO: Call of Water|r. Click to start.
    *Reward: Water Totem + Healing Stream Totem (Horde: Islen Waterseer, 3 waterskins; Dwarf: nine-quest chain via Norric Lochthane across five zones; no Skyborne version in beta data). Takes 1-2 hours of travel
step
    .goto 1455,47.1,13.79
    >>Talk to |cRXP_FRIENDLY_Eldrun Stormbreaker|r
    .accept 94494 >>Accept Call of Water
    .target Eldrun Stormbreaker
step
    .goto 1432,41.76,19.05
    >>Talk to |cRXP_FRIENDLY_Norric Lochthane|r
    .turnin 94494 >>Turn in Call of Water
    .accept 94495 >>Accept Call of Water
    .target Norric Lochthane
step
    .goto 1437,65.76,76.52
    >>Talk to |cRXP_FRIENDLY_Hervdana Saegrund|r
    .turnin 94495 >>Turn in Call of Water
    .accept 94497 >>Accept Call of Water
    .target Hervdana Saegrund
step
    >>Collect |cRXP_LOOT_[Full Brown Waterskin]|r
    *Fill the Empty Brown Waterskin at the bottom of the waterfalls below Hervdana's cave and return it to her in the Wetlands.
    .complete 94497,1 --Call of Water
step
    .goto 1437,65.76,76.52
    >>Talk to |cRXP_FRIENDLY_Hervdana Saegrund|r
    .turnin 94497 >>Turn in Call of Water
    .accept 94499 >>Accept Call of Water
    .target Hervdana Saegrund
step
    >>Collect |cRXP_LOOT_[Full Red Waterskin]|r
    *Fill the Empty Red Waterskin at Stonewatch Falls near the Nightcrawler Murlocs and return to Hervdana Saegrund in the Wetlands.
    .complete 94499,1 --Call of Water
step
    .goto 1437,65.76,76.52
    >>Talk to |cRXP_FRIENDLY_Hervdana Saegrund|r
    .turnin 94499 >>Turn in Call of Water
    .accept 94500 >>Accept Call of Water
    .target Hervdana Saegrund
step
    >>Collect |cRXP_LOOT_[Full Blue Waterskin]|r
    *Fill the Unfilled Blue Waterskin at the waters of Astranaar in Ashenvale and return to Hervdana Saegrund in the Wetlands.
    .complete 94500,1 --Call of Water
step
    .goto 1437,65.76,76.52
    >>Talk to |cRXP_FRIENDLY_Hervdana Saegrund|r
    .turnin 94500 >>Turn in Call of Water
    .accept 94501 >>Accept Call of Water
    .target Hervdana Saegrund
step
    .goto 1432,41.76,19.05
    >>Talk to |cRXP_FRIENDLY_Norric Lochthane|r
    .turnin 94501 >>Turn in Call of Water
    .accept 94502 >>Accept Call of Water
    .target Norric Lochthane
step
    .goto 1421,38.78,44.26
    >>Collect |cRXP_LOOT_[Corrupt Manifestation's Bracers]|r from |cRXP_ENEMY_Corrupt Minor Manifestation of Water|r
    *Drink the Water Sapta and Cleanse the corruption at Stendel's Pond in Westfall.
    .complete 94502,1 --Call of Water
    .mob Corrupt Minor Manifestation of Water
step
    .goto 1436,45.59,59.91
    >>Click the |cRXP_PICK_Forgotten Shrine|r
    .turnin 94502 >>Turn in Call of Water
    .accept 94503 >>Accept Call of Water << Dwarf
step
    .goto 1436,45.59,59.91
    >>Click the |cRXP_PICK_Forgotten Shrine|r
    .turnin 94503 >>Turn in Call of Water << Dwarf
step
    +|cRXP_WARN_Done:|r Call of Water. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Shaman Orc/Horde Shaman Undead/Horde Shaman Tauren/Horde Shaman Troll
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 10-13 Totem of Charged Flames (Orc/Undead/Tauren/Troll)
#displayname 10-13 Totem of Charged Flames (Orc/Undead/Tauren/Troll)
step
    +|cRXP_WARN_ITEM: Totem of Charged Flames|r. Click to start.
    *Reward: Fire Totem + Totem of Charged Flames (relic: -5 mana on Flame Shock and Lightning Bolt) + Searing Totem
    *|cffffd200OK|r [Totem of Charged Flames]: Relic Totem - fills an otherwise empty relic slot; small mana saving
    *Why: Gives your first relic-slot totem on top of the Fire Totem
    *Forever: changed in Forever: Totem of Charged Flames relic added; Dwarf and Skyborne versions are new
step
    .goto 1411,54.42,42.59
    >>Talk to |cRXP_FRIENDLY_Swart|r
    .accept 2983 >>Accept Call of Fire
    .target Swart
step
    .goto 1413,56.03,19.89
    >>Talk to |cRXP_FRIENDLY_Kranal Fiss|r
    .turnin 2983 >>Turn in Call of Fire
    .accept 1524 >>Accept Call of Fire
    .target Kranal Fiss
step
    .goto 1411,38.55,58.96
    >>Talk to |cRXP_FRIENDLY_Telf Joolam|r
    .turnin 1524 >>Turn in Call of Fire
    .accept 1525 >>Accept Call of Fire
    .target Telf Joolam
step
    .goto 1412,47.4,62.54
    >>Talk to |cRXP_FRIENDLY_Narm Skychaser|r
    .accept 2984 >>Accept Call of Fire
    .target Narm Skychaser
step
    .goto 1413,56.03,19.89
    >>Talk to |cRXP_FRIENDLY_Kranal Fiss|r
    .turnin 2984 >>Turn in Call of Fire
    .target Kranal Fiss
step
    .goto 1413,59.14,25.06
    >>Collect |cRXP_LOOT_[Fire Tar]|r from |cRXP_ENEMY_Tunnel Rat Geomancer|r, |cRXP_ENEMY_Razormane Seer|r, |cRXP_ENEMY_Razormane Geomancer|r
    *Bring 1 Fire Tar and 1 Reagent Pouch to Telf Joolam in Durotar.
    .complete 1525,1 --Call of Fire
    .mob Tunnel Rat Geomancer
    .mob Razormane Seer
step
    .goto 1454,37.96,37.73
    >>Talk to |cRXP_FRIENDLY_Searn Firewarder|r
    .accept 1522 >>Accept Call of Fire
    .target Searn Firewarder
step
    .goto 1413,56.03,19.89
    >>Talk to |cRXP_FRIENDLY_Kranal Fiss|r
    .turnin 1522 >>Turn in Call of Fire
    .target Kranal Fiss
step
    .goto 1456,21.99,18.8
    >>Talk to |cRXP_FRIENDLY_Beram Skychaser|r
    .accept 1523 >>Accept Call of Fire
    .target Beram Skychaser
step
    .goto 1413,56.03,19.89
    >>Talk to |cRXP_FRIENDLY_Kranal Fiss|r
    .turnin 1523 >>Turn in Call of Fire
    .target Kranal Fiss
step
    .goto 2521,51.24,86.19
    >>Talk to |cRXP_FRIENDLY_Olariaan Swiftburn|r
    .accept 97244 >>Accept Call of Fire
    .target Olariaan Swiftburn
step
    .goto 2521,64.43,63.71
    >>Collect |cRXP_LOOT_[Faladiel's Heart]|r from |cRXP_ENEMY_Skypriest Faladiel|r
    *Slay Skypriest Faladiel in the Gustberry Lowlands and collect Faladiel's Heart.
    .complete 97244,1 --Call of Fire
    .mob Skypriest Faladiel
step
    .goto 2521,51.24,86.19
    >>Talk to |cRXP_FRIENDLY_Olariaan Swiftburn|r
    .turnin 97244 >>Turn in Call of Fire
    .accept 97245 >>Accept Call of Fire
    .target Olariaan Swiftburn
step
    .goto 2521,42.44,68.75
    >>Collect |cRXP_LOOT_[Kuramaa's Mask]|r from |cRXP_ENEMY_Kuramaa|r
    *Find the home of Kuramaa in the Shen'dar Highlands, and defeat the spirit in combat. Bring Kuramaa's Mask to Olariaan Swiftburn in the Gustberry Lowlands when you are victorious.
    .complete 97245,1 --Call of Fire
    .mob Kuramaa
step
    .goto 2521,51.24,86.19
    >>Talk to |cRXP_FRIENDLY_Olariaan Swiftburn|r
    .turnin 97245 >>Turn in Call of Fire
    .accept 97257 >>Accept Call of Fire
    .target Olariaan Swiftburn
step
    .goto 2521,51.2,85.9
    >>Kill |cRXP_ENEMY_Brazier of Offering|r
    *Wait for Olariaan to begin the ritual at the Brazier of Offering and follow his instructions.
    .complete 97257,1 --Call of Fire
    .mob Brazier of Offering
step
    .goto 2521,58.35,78.84
    >>Kill |cRXP_ENEMY_Brazier of Eternal Flame|r
    *Wait for Olariaan to begin the ritual at the Brazier of Offering and follow his instructions.
    .complete 97257,2 --Call of Fire
    .mob Brazier of Eternal Flame
step
    .goto 2521,58.31,78.51
    >>Talk to |cRXP_FRIENDLY_Sessaria Skystride|r
    .turnin 97257 >>Turn in Call of Fire
    .target Sessaria Skystride
step
    .goto 1432,34.01,85.01
    >>Collect |cRXP_LOOT_[Reagent Pouch]|r from |cRXP_ENEMY_Stonesplinter Seer|r
    *Bring 1 Fire Tar and 1 Reagent Pouch to Telf Joolam in Durotar.
    .complete 1525,2 --Call of Fire
    .mob Stonesplinter Seer
step
    .goto 1411,38.55,58.96
    >>Talk to |cRXP_FRIENDLY_Telf Joolam|r
    .turnin 1525 >>Turn in Call of Fire
    .accept 1526 >>Accept Call of Fire
    .target Telf Joolam
step
    .goto 2521,50.99,85.11
    >>Collect |cRXP_LOOT_[Glowing Ember]|r from |cRXP_ENEMY_Manifestation of Flames|r
    *Defeat the Minor Manifestation of Fire, and place the Glowing Ember in the brazier atop the Shrine of Eternal Flame.
    .complete 1526,1 --Call of Fire
    .mob Manifestation of Flames
step
    .goto 1432,31.79,64.52
    >>Click the |cRXP_PICK_Brazier of the Dormant Flame|r
    .turnin 1526 >>Turn in Call of Fire
    .accept 1527 >>Accept Call of Fire
step
    .goto 1413,56.03,19.89
    >>Talk to |cRXP_FRIENDLY_Kranal Fiss|r
    .turnin 1527 >>Turn in Call of Fire
    .target Kranal Fiss
step
    +|cRXP_WARN_Done:|r Totem of Charged Flames. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Shaman Skyborne
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 10-13 Totem of Charged Flames (Skyborne)
#displayname 10-13 Totem of Charged Flames (Skyborne)
step
    +|cRXP_WARN_ITEM: Totem of Charged Flames|r. Click to start.
    *Reward: Fire Totem + Totem of Charged Flames (relic: -5 mana on Flame Shock and Lightning Bolt) + Searing Totem
    *|cffffd200OK|r [Totem of Charged Flames]: Relic Totem - fills an otherwise empty relic slot; small mana saving
    *Why: Gives your first relic-slot totem on top of the Fire Totem
    *Forever: changed in Forever: Totem of Charged Flames relic added; Dwarf and Skyborne versions are new
step
    .goto 1411,54.42,42.59
    >>Talk to |cRXP_FRIENDLY_Swart|r
    .accept 2983 >>Accept Call of Fire
    .target Swart
step
    .goto 1413,56.03,19.89
    >>Talk to |cRXP_FRIENDLY_Kranal Fiss|r
    .turnin 2983 >>Turn in Call of Fire
    .accept 1524 >>Accept Call of Fire
    .target Kranal Fiss
step
    .goto 1411,38.55,58.96
    >>Talk to |cRXP_FRIENDLY_Telf Joolam|r
    .turnin 1524 >>Turn in Call of Fire
    .accept 1525 >>Accept Call of Fire
    .target Telf Joolam
step
    .goto 1412,47.4,62.54
    >>Talk to |cRXP_FRIENDLY_Narm Skychaser|r
    .accept 2984 >>Accept Call of Fire
    .target Narm Skychaser
step
    .goto 1413,56.03,19.89
    >>Talk to |cRXP_FRIENDLY_Kranal Fiss|r
    .turnin 2984 >>Turn in Call of Fire
    .target Kranal Fiss
step
    .goto 1413,59.14,25.06
    >>Collect |cRXP_LOOT_[Fire Tar]|r from |cRXP_ENEMY_Tunnel Rat Geomancer|r, |cRXP_ENEMY_Razormane Seer|r, |cRXP_ENEMY_Razormane Geomancer|r
    *Bring 1 Fire Tar and 1 Reagent Pouch to Telf Joolam in Durotar.
    .complete 1525,1 --Call of Fire
    .mob Tunnel Rat Geomancer
    .mob Razormane Seer
step
    .goto 1454,37.96,37.73
    >>Talk to |cRXP_FRIENDLY_Searn Firewarder|r
    .accept 1522 >>Accept Call of Fire
    .target Searn Firewarder
step
    .goto 1413,56.03,19.89
    >>Talk to |cRXP_FRIENDLY_Kranal Fiss|r
    .turnin 1522 >>Turn in Call of Fire
    .target Kranal Fiss
step
    .goto 1456,21.99,18.8
    >>Talk to |cRXP_FRIENDLY_Beram Skychaser|r
    .accept 1523 >>Accept Call of Fire
    .target Beram Skychaser
step
    .goto 1413,56.03,19.89
    >>Talk to |cRXP_FRIENDLY_Kranal Fiss|r
    .turnin 1523 >>Turn in Call of Fire
    .target Kranal Fiss
step
    .goto 2521,58.31,78.51
    >>Talk to |cRXP_FRIENDLY_Sessaria Skystride|r
    .accept 97243 >>Accept Call of Fire << Skyborne
    .target Sessaria Skystride
step
    .goto 2521,51.24,86.19
    >>Talk to |cRXP_FRIENDLY_Olariaan Swiftburn|r
    .turnin 97243 >>Turn in Call of Fire << Skyborne
    .accept 97244 >>Accept Call of Fire
    .target Olariaan Swiftburn
step
    .goto 2521,64.43,63.71
    >>Collect |cRXP_LOOT_[Faladiel's Heart]|r from |cRXP_ENEMY_Skypriest Faladiel|r
    *Slay Skypriest Faladiel in the Gustberry Lowlands and collect Faladiel's Heart.
    .complete 97244,1 --Call of Fire
    .mob Skypriest Faladiel
step
    .goto 2521,51.24,86.19
    >>Talk to |cRXP_FRIENDLY_Olariaan Swiftburn|r
    .turnin 97244 >>Turn in Call of Fire
    .accept 97245 >>Accept Call of Fire
    .target Olariaan Swiftburn
step
    .goto 2521,42.44,68.75
    >>Collect |cRXP_LOOT_[Kuramaa's Mask]|r from |cRXP_ENEMY_Kuramaa|r
    *Find the home of Kuramaa in the Shen'dar Highlands, and defeat the spirit in combat. Bring Kuramaa's Mask to Olariaan Swiftburn in the Gustberry Lowlands when you are victorious.
    .complete 97245,1 --Call of Fire
    .mob Kuramaa
step
    .goto 2521,51.24,86.19
    >>Talk to |cRXP_FRIENDLY_Olariaan Swiftburn|r
    .turnin 97245 >>Turn in Call of Fire
    .accept 97257 >>Accept Call of Fire
    .target Olariaan Swiftburn
step
    .goto 2521,51.2,85.9
    >>Kill |cRXP_ENEMY_Brazier of Offering|r
    *Wait for Olariaan to begin the ritual at the Brazier of Offering and follow his instructions.
    .complete 97257,1 --Call of Fire
    .mob Brazier of Offering
step
    .goto 2521,58.35,78.84
    >>Kill |cRXP_ENEMY_Brazier of Eternal Flame|r
    *Wait for Olariaan to begin the ritual at the Brazier of Offering and follow his instructions.
    .complete 97257,2 --Call of Fire
    .mob Brazier of Eternal Flame
step
    .goto 2521,58.31,78.51
    >>Talk to |cRXP_FRIENDLY_Sessaria Skystride|r
    .turnin 97257 >>Turn in Call of Fire
    .target Sessaria Skystride
step
    .goto 1432,34.01,85.01
    >>Collect |cRXP_LOOT_[Reagent Pouch]|r from |cRXP_ENEMY_Stonesplinter Seer|r
    *Bring 1 Fire Tar and 1 Reagent Pouch to Telf Joolam in Durotar.
    .complete 1525,2 --Call of Fire
    .mob Stonesplinter Seer
step
    .goto 1411,38.55,58.96
    >>Talk to |cRXP_FRIENDLY_Telf Joolam|r
    .turnin 1525 >>Turn in Call of Fire
    .accept 1526 >>Accept Call of Fire
    .target Telf Joolam
step
    .goto 2521,50.99,85.11
    >>Collect |cRXP_LOOT_[Glowing Ember]|r from |cRXP_ENEMY_Manifestation of Flames|r
    *Defeat the Minor Manifestation of Fire, and place the Glowing Ember in the brazier atop the Shrine of Eternal Flame.
    .complete 1526,1 --Call of Fire
    .mob Manifestation of Flames
step
    .goto 1432,31.79,64.52
    >>Click the |cRXP_PICK_Brazier of the Dormant Flame|r
    .turnin 1526 >>Turn in Call of Fire
    .accept 1527 >>Accept Call of Fire
step
    .goto 1413,56.03,19.89
    >>Talk to |cRXP_FRIENDLY_Kranal Fiss|r
    .turnin 1527 >>Turn in Call of Fire
    .target Kranal Fiss
step
    +|cRXP_WARN_Done:|r Totem of Charged Flames. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Shaman
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 30-39
#name 30-43 Rage of the Storm
#displayname 30-43 Rage of the Storm
step
    +|cRXP_WARN_ITEM: Rage of the Storm|r. Click to start.
    *Reward: Choose Rage of the Storm (two-hand mace, +10% Stormstrike damage), Lightning's Grasp (main-hand fist, +46 spell power, +1% Lightning Bolt crit) or Tidebringer's Claw (main-hand fist, +86 healing, +2% Healing Wave crit); 
    *|cff40ff40GOOD|r [Rage of the Storm]: Two-Hand Mace, 35.56 DPS, +16 Strength, +15 Stamina - rare ilvl 40 2H at req 30 for enhancement shaman; Stormstrike bonus needs the level 40 talent. json reqlevel 30 (jsonEquip says 1)
    *Why: Spec-specific item level 40 weapon; kill Charlga Razorflank in Razorfen Kraul, farm 20 Twisted Totems in four zones, then the Thousand Needles event
    *|cRXP_WARN_Needs a group for part of it.|r
    *Forever: new in Forever (Heed My Call event has elite waves and the elite Ravaging Tempest; group of 3-5 advised; Rage of the Storm stats changed several times in beta, check tooltip)
step
    .goto 1454,37.96,37.73
    >>Talk to |cRXP_FRIENDLY_Searn Firewarder|r
    .accept 1531 >>Accept Call of Air
    .target Searn Firewarder
step
    .goto 1441,53.54,42.65
    >>Talk to |cRXP_FRIENDLY_Prate Cloudseer|r
    .turnin 1531 >>Turn in Call of Air
    .target Prate Cloudseer
step
    .goto 1441,46.14,51.71
    >>Talk to |cRXP_FRIENDLY_Rau Cliffrunner|r
    .accept 79360 >>Accept Elemental Aid
    .target Rau Cliffrunner
step
    .goto 1413,42.9,90.2
    *|cRXP_WARN_Inside Razorfen Kraul: bring a group.|r
    >>Collect |cRXP_LOOT_[Tattered Note]|r from |cRXP_ENEMY_Charlga Razorflank|r
    *Defeat Charlga Razorflank in Razorfen Kraul and collect information on the quilboar's plans.
    .complete 79360,1 --Elemental Aid
    .mob Charlga Razorflank
step
    .goto 1441,46.14,51.71
    >>Talk to |cRXP_FRIENDLY_Rau Cliffrunner|r
    .turnin 79360 >>Turn in Elemental Aid
    .accept 79364 >>Accept Eyes on the Sky
    .target Rau Cliffrunner
step
    .goto 1441,53.54,42.65
    >>Talk to |cRXP_FRIENDLY_Prate Cloudseer|r
    .turnin 79364 >>Turn in Eyes on the Sky
    .accept 79361 >>Accept Storm, Earth, and Fire
    .target Prate Cloudseer
step
    .goto 1445,57.96,11.2
    >>Collect |cRXP_LOOT_[Twisted Water Totem]|r from |cRXP_ENEMY_Mirefin Puddlejumper|r, |cRXP_ENEMY_Mirefin Murloc|r, |cRXP_ENEMY_Mirefin Warrior|r
    *Collect 5 Twisted Fire Totems, 5 Twisted Earth Totems, 5 Twisted Air Totems, and 5 Twisted Water Totems for Prate Cloudseer in Thousand Needles.
    .complete 79361,1 --Storm, Earth, and Fire
    .mob Mirefin Puddlejumper
    .mob Mirefin Murloc
step
    .goto 1435,60.94,23.86
    >>Collect |cRXP_LOOT_[Twisted Earth Totem]|r from |cRXP_ENEMY_Lost One Mudlurker|r, |cRXP_ENEMY_Lost One Fisherman|r, |cRXP_ENEMY_Lost One Hunter|r
    *Collect 5 Twisted Fire Totems, 5 Twisted Earth Totems, 5 Twisted Air Totems, and 5 Twisted Water Totems for Prate Cloudseer in Thousand Needles.
    .complete 79361,2 --Storm, Earth, and Fire
    .mob Lost One Mudlurker
    .mob Lost One Fisherman
step
    .goto 1418,10.59,77.63
    >>Collect |cRXP_LOOT_[Twisted Fire Totem]|r from |cRXP_ENEMY_Dustbelcher Ogre|r, |cRXP_ENEMY_Dustbelcher Brute|r, |cRXP_ENEMY_Dustbelcher Wyrmhunter|r
    *Collect 5 Twisted Fire Totems, 5 Twisted Earth Totems, 5 Twisted Air Totems, and 5 Twisted Water Totems for Prate Cloudseer in Thousand Needles.
    .complete 79361,3 --Storm, Earth, and Fire
    .mob Dustbelcher Ogre
    .mob Dustbelcher Brute
step
    .goto 1443,30.76,55.71
    >>Collect |cRXP_LOOT_[Twisted Air Totem]|r from |cRXP_ENEMY_Maraudine Scout|r, |cRXP_ENEMY_Maraudine Wrangler|r, |cRXP_ENEMY_Maraudine Mauler|r
    *Collect 5 Twisted Fire Totems, 5 Twisted Earth Totems, 5 Twisted Air Totems, and 5 Twisted Water Totems for Prate Cloudseer in Thousand Needles.
    .complete 79361,4 --Storm, Earth, and Fire
    .mob Maraudine Scout
    .mob Maraudine Wrangler
step
    .goto 1441,53.54,42.65
    >>Talk to |cRXP_FRIENDLY_Prate Cloudseer|r
    .turnin 79361 >>Turn in Storm, Earth, and Fire
    .target Prate Cloudseer
step
    .goto 1441,46.14,51.71
    >>Talk to |cRXP_FRIENDLY_Rau Cliffrunner|r
    .accept 79366 >>Accept Heed My Call
    .target Rau Cliffrunner
step
    .goto 1441,37.18,40.39
    >>Collect |cRXP_LOOT_[Eye of the Tempest]|r from |cRXP_ENEMY_Ravaging Tempest|r
    *Use the Twisted Totems to put an end to the quilboar ritual.
    .complete 79366,1 --Heed My Call
    .mob Ravaging Tempest
step
    .goto 1441,46.14,51.71
    >>Talk to |cRXP_FRIENDLY_Rau Cliffrunner|r
    .turnin 79366 >>Turn in Heed My Call
    .accept 79442 >>Accept The Tempest's Weapons
    .target Rau Cliffrunner
step
    .goto 1416,80.5,66.92
    >>Talk to |cRXP_FRIENDLY_Bath'rah the Windwatcher|r
    .turnin 79442 >>Turn in The Tempest's Weapons
    .target Bath'rah the Windwatcher
step
    +|cRXP_WARN_Done:|r Rage of the Storm. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Shaman
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 50-60
#name 50-52 Azurite Fists / Enamored Water Spirit +
#displayname 50-52 Azurite Fists / Enamored Water Spirit +
step
    +|cRXP_WARN_ITEM: Azurite Fists / Enamored Water Spirit +|r. Click to start.
    *Reward: Da Voodoo: Azurite Fists (mail hands), Enamored Water Spirit (shaman trinket), Wildstaff (staff)
    *Why: Rare gloves, trinket or caster staff; needs two of each Voodoo Feather
    *|cRXP_WARN_Needs a group for part of it.|r
    *Forever: changed in Forever: 12,400 XP; all-three-items vs pick-one is unverified
step
    .goto 1435,48.19,57.94
    >>Talk to |cRXP_FRIENDLY_Haromm|r
    .accept 8410 >>Accept Elemental Mastery
    .target Haromm
step
    .goto 1436,41.75,59.4
    >>Collect |cRXP_LOOT_[Elemental Air]|r from |cRXP_ENEMY_Dust Devil|r, |cRXP_ENEMY_Thundering Exile|r, |cRXP_ENEMY_Cyclonian|r
    *Collect a sample of air, fire, earth and water for Bath'rah the Windwatcher.
    .complete 8410,1 --Elemental Mastery
    .mob Dust Devil
    .mob Thundering Exile
step
    .goto 1427,52.24,50.37
    >>Collect |cRXP_LOOT_[Elemental Fire]|r from |cRXP_ENEMY_Ambassador Infernus|r, |cRXP_ENEMY_Burning Exile|r, |cRXP_ENEMY_Rogue Flame Spirit|r
    *Collect a sample of air, fire, earth and water for Bath'rah the Windwatcher.
    .complete 8410,2 --Elemental Mastery
    .mob Ambassador Infernus
    .mob Burning Exile
step
    .goto 1418,40.51,78.29
    >>Collect |cRXP_LOOT_[Elemental Earth]|r from |cRXP_ENEMY_Rock Elemental|r, |cRXP_ENEMY_Stone Fury|r, |cRXP_ENEMY_Elemental Slave|r
    *Collect a sample of air, fire, earth and water for Bath'rah the Windwatcher.
    .complete 8410,3 --Elemental Mastery
    .mob Rock Elemental
    .mob Stone Fury
step
    .goto 1440,50.92,67.42
    >>Collect |cRXP_LOOT_[Elemental Water]|r from |cRXP_ENEMY_Lesser Water Elemental|r, |cRXP_ENEMY_Cresting Exile|r, |cRXP_ENEMY_Summoned Guardian|r
    *Collect a sample of air, fire, earth and water for Bath'rah the Windwatcher.
    .complete 8410,4 --Elemental Mastery
    .mob Lesser Water Elemental
    .mob Cresting Exile
step
    .goto 1416,80.5,66.92
    >>Talk to |cRXP_FRIENDLY_Bath'rah the Windwatcher|r
    .turnin 8410 >>Turn in Elemental Mastery
    .accept 8412 >>Accept Spirit Totem
    .target Bath'rah the Windwatcher
step
    .goto 1422,62.71,50.32
    >>Collect |cRXP_LOOT_[Bloodshot Spider Eye]|r from |cRXP_ENEMY_Rotting Condor|r, |cRXP_ENEMY_Plaguewing Vulture|r, |cRXP_ENEMY_Tarantula|r. Collect |cRXP_LOOT_[Thick Black Claw]|r from |cRXP_ENEMY_Rotting Condor|r, |cRXP_ENEMY_Plaguewing Vulture|r, |cRXP_ENEMY_Diseased Grizzly|r
    *Bring the pieces for the spirit totem to Bath'rah the Windwatcher.
    .complete 8412,1 --Spirit Totem
    .complete 8412,2 --Spirit Totem
    .mob Rotting Condor
    .mob Plaguewing Vulture
step
    .goto 1416,80.5,66.92
    >>Talk to |cRXP_FRIENDLY_Bath'rah the Windwatcher|r
    .turnin 8412 >>Turn in Spirit Totem
    .accept 8413 >>Accept Da Voodoo
    .target Bath'rah the Windwatcher
step
    >>Collect |cRXP_LOOT_[Amber Voodoo Feather]|r from |cRXP_ENEMY_Gasher|r, |cRXP_ENEMY_Zul'Lor|r, |cRXP_ENEMY_Gasher|r. Collect |cRXP_LOOT_[Blue Voodoo Feather]|r from |cRXP_ENEMY_Hukku|r, |cRXP_ENEMY_Mijan|r, |cRXP_ENEMY_Hukku|r. Collect |cRXP_LOOT_[Green Voodoo Feather]|r from |cRXP_ENEMY_Loro|r, |cRXP_ENEMY_Zolo|r
    *Bring the voodoo feathers to Bath'rah the Windwatcher.
    .complete 8413,1 --Da Voodoo
    .complete 8413,2 --Da Voodoo
    .complete 8413,3 --Da Voodoo
    .mob Gasher
    .mob Zul'Lor
    .mob Hukku
    .mob Mijan
    .mob Loro
    .mob Zolo
step
    .goto 1416,80.5,66.92
    >>Talk to |cRXP_FRIENDLY_Bath'rah the Windwatcher|r
    .turnin 8413 >>Turn in Da Voodoo
    .target Bath'rah the Windwatcher
step
    +|cRXP_WARN_Done:|r Azurite Fists / Enamored Water Spirit +. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Shaman
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 2 shaman starter
#displayname 2 shaman starter
step
    +|cRXP_WARN_MUST DO: shaman starter|r. Click to start.
    *Reward: Leads to Call of Earth (Zephras Isle) with Windshaper Boro
step
    .goto 2521,42.82,23.39
    >>Talk to |cRXP_FRIENDLY_Ailee Farheart|r
    .accept 92460 >>Accept Coming of Age
    .target Ailee Farheart
step
    .goto 2521,42.05,23.49
    >>Talk to |cRXP_FRIENDLY_Rorian the Dayseeker|r
    .turnin 92460 >>Turn in Coming of Age
    .accept 92461 >>Accept Harmony in Balance
    .target Rorian the Dayseeker
step
    .goto 2521,43.23,25.16
    >>Kill |cRXP_ENEMY_Juvenile Vuldren|r
    *Slay 8 Vuldren Juveniles in Thendal Grove.
    .complete 92461,1 --Harmony in Balance
    .mob Juvenile Vuldren
step
    .goto 2521,42.05,23.49
    >>Talk to |cRXP_FRIENDLY_Rorian the Dayseeker|r
    .turnin 92461 >>Turn in Harmony in Balance
    .accept 92484 >>Accept Embracing the Elements
    .target Rorian the Dayseeker
step
    .goto 2521,42.79,23.58
    >>Talk to |cRXP_FRIENDLY_Windshaper Boro|r
    .turnin 92484 >>Turn in Embracing the Elements
    .target Windshaper Boro
step
    +|cRXP_WARN_Done:|r shaman starter. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Shaman Orc/Horde Shaman Undead/Horde Shaman Troll/Horde Shaman Skyborne
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 3-4 Call of Earth (Orc/Undead/Troll/Skyborne)
#displayname 3-4 Call of Earth (Orc/Undead/Troll/Skyborne)
step
    +|cRXP_WARN_MUST DO: Call of Earth|r. Click to start.
    *Reward: Earth Totem + Stoneskin Totem (Orc/Troll: Canaga Earthcaller; Tauren: Seer Ravenfeather; Dwarf: Teo Hammerstorm; Skyborne: Windshaper Boro, opens at 3)
step
    .goto 1411,42.4,69.17
    >>Talk to |cRXP_FRIENDLY_Canaga Earthcaller|r
    .accept 1516 >>Accept Call of Earth
    .target Canaga Earthcaller
step
    .goto 1411,42.97,52.1
    >>Collect |cRXP_LOOT_[Felstalker Hoof]|r from |cRXP_ENEMY_Felstalker|r
    *Bring 2 Felstalker Hooves to Canaga Earthcaller in the Valley of Trials.
    .complete 1516,1 --Call of Earth
    .mob Felstalker
step
    .goto 1411,42.4,69.17
    >>Talk to |cRXP_FRIENDLY_Canaga Earthcaller|r
    .turnin 1516 >>Turn in Call of Earth
    .accept 1517 >>Accept Call of Earth
    .target Canaga Earthcaller
step
    .goto 1411,44.03,76.2
    >>Talk to |cRXP_FRIENDLY_Minor Manifestation of Earth|r
    .turnin 1517 >>Turn in Call of Earth
    .accept 1518 >>Accept Call of Earth
    .target Minor Manifestation of Earth
step
    .goto 1411,42.4,69.17
    >>Talk to |cRXP_FRIENDLY_Canaga Earthcaller|r
    .turnin 1518 >>Turn in Call of Earth
    .target Canaga Earthcaller
step
    .goto 1412,44.35,76.77
    >>Talk to |cRXP_FRIENDLY_Seer Ravenfeather|r
    .accept 1520 >>Accept Call of Earth
    .target Seer Ravenfeather
step
    .goto 1411,44.03,76.2
    >>Talk to |cRXP_FRIENDLY_Minor Manifestation of Earth|r
    .turnin 1520 >>Turn in Call of Earth
    .accept 1521 >>Accept Call of Earth
    .target Minor Manifestation of Earth
step
    .goto 1412,44.35,76.77
    >>Talk to |cRXP_FRIENDLY_Seer Ravenfeather|r
    .turnin 1521 >>Turn in Call of Earth
    .target Seer Ravenfeather
step
    .goto 2521,42.79,23.58
    >>Talk to |cRXP_FRIENDLY_Windshaper Boro|r
    .accept 92466 >>Accept Call of Earth
    .accept 92467 >>Accept Call of Earth
    .target Windshaper Boro
step
    .goto 2521,49.67,23.8
    >>Talk to |cRXP_FRIENDLY_Minor Manifestation of Earth|r
    .turnin 92467 >>Turn in Call of Earth
    .accept 92468 >>Accept Call of Earth
    .target Minor Manifestation of Earth
step
    .goto 2521,42.79,23.58
    >>Talk to |cRXP_FRIENDLY_Windshaper Boro|r
    .turnin 92468 >>Turn in Call of Earth
    .target Windshaper Boro
step
    .goto 2521,35.42,33.74
    >>Collect |cRXP_LOOT_[Signet of Akir]|r from |cRXP_ENEMY_Al'Aketh Brute|r, |cRXP_ENEMY_Al'Aketh Convert|r, |cRXP_ENEMY_Al'Aketh Neophyte|r
    *Bring a Signet of Akir to Windshaper Boro.
    .complete 92466,1 --Call of Earth
    .mob Al'Aketh Brute
    .mob Al'Aketh Convert
step
    .goto 2521,42.79,23.58
    >>Talk to |cRXP_FRIENDLY_Windshaper Boro|r
    .turnin 92466 >>Turn in Call of Earth
    .target Windshaper Boro
step
    +|cRXP_WARN_Done:|r Call of Earth. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Shaman Tauren
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 3-4 Call of Earth (Tauren)
#displayname 3-4 Call of Earth (Tauren)
step
    +|cRXP_WARN_MUST DO: Call of Earth|r. Click to start.
    *Reward: Earth Totem + Stoneskin Totem (Orc/Troll: Canaga Earthcaller; Tauren: Seer Ravenfeather; Dwarf: Teo Hammerstorm; Skyborne: Windshaper Boro, opens at 3)
step
    .goto 1411,42.4,69.17
    >>Talk to |cRXP_FRIENDLY_Canaga Earthcaller|r
    .accept 1516 >>Accept Call of Earth
    .target Canaga Earthcaller
step
    .goto 1411,42.97,52.1
    >>Collect |cRXP_LOOT_[Felstalker Hoof]|r from |cRXP_ENEMY_Felstalker|r
    *Bring 2 Felstalker Hooves to Canaga Earthcaller in the Valley of Trials.
    .complete 1516,1 --Call of Earth
    .mob Felstalker
step
    .goto 1411,42.4,69.17
    >>Talk to |cRXP_FRIENDLY_Canaga Earthcaller|r
    .turnin 1516 >>Turn in Call of Earth
    .accept 1517 >>Accept Call of Earth
    .target Canaga Earthcaller
step
    .goto 1411,44.03,76.2
    >>Talk to |cRXP_FRIENDLY_Minor Manifestation of Earth|r
    .turnin 1517 >>Turn in Call of Earth
    .accept 1518 >>Accept Call of Earth
    .target Minor Manifestation of Earth
step
    .goto 1411,42.4,69.17
    >>Talk to |cRXP_FRIENDLY_Canaga Earthcaller|r
    .turnin 1518 >>Turn in Call of Earth
    .target Canaga Earthcaller
step
    .goto 1412,44.35,76.77
    >>Talk to |cRXP_FRIENDLY_Seer Ravenfeather|r
    .accept 1519 >>Accept Call of Earth << Tauren
    .target Seer Ravenfeather
step
    .goto 1412,62.17,78.12
    >>Collect |cRXP_LOOT_[Ritual Salve]|r from |cRXP_ENEMY_Bristleback Shaman|r
    *Bring 2 applications of Ritual Salve to Seer Ravenfeather in Camp Narache.
    .complete 1519,1 << Tauren --Call of Earth
    .mob Bristleback Shaman
step
    .goto 1412,44.35,76.77
    >>Talk to |cRXP_FRIENDLY_Seer Ravenfeather|r
    .turnin 1519 >>Turn in Call of Earth << Tauren
    .accept 1520 >>Accept Call of Earth
    .target Seer Ravenfeather
step
    .goto 1411,44.03,76.2
    >>Talk to |cRXP_FRIENDLY_Minor Manifestation of Earth|r
    .turnin 1520 >>Turn in Call of Earth
    .accept 1521 >>Accept Call of Earth
    .target Minor Manifestation of Earth
step
    .goto 1412,44.35,76.77
    >>Talk to |cRXP_FRIENDLY_Seer Ravenfeather|r
    .turnin 1521 >>Turn in Call of Earth
    .target Seer Ravenfeather
step
    .goto 2521,42.79,23.58
    >>Talk to |cRXP_FRIENDLY_Windshaper Boro|r
    .accept 92466 >>Accept Call of Earth
    .accept 92467 >>Accept Call of Earth
    .target Windshaper Boro
step
    .goto 2521,49.67,23.8
    >>Talk to |cRXP_FRIENDLY_Minor Manifestation of Earth|r
    .turnin 92467 >>Turn in Call of Earth
    .accept 92468 >>Accept Call of Earth
    .target Minor Manifestation of Earth
step
    .goto 2521,42.79,23.58
    >>Talk to |cRXP_FRIENDLY_Windshaper Boro|r
    .turnin 92468 >>Turn in Call of Earth
    .target Windshaper Boro
step
    .goto 2521,35.42,33.74
    >>Collect |cRXP_LOOT_[Signet of Akir]|r from |cRXP_ENEMY_Al'Aketh Brute|r, |cRXP_ENEMY_Al'Aketh Convert|r, |cRXP_ENEMY_Al'Aketh Neophyte|r
    *Bring a Signet of Akir to Windshaper Boro.
    .complete 92466,1 --Call of Earth
    .mob Al'Aketh Brute
    .mob Al'Aketh Convert
step
    .goto 2521,42.79,23.58
    >>Talk to |cRXP_FRIENDLY_Windshaper Boro|r
    .turnin 92466 >>Turn in Call of Earth
    .target Windshaper Boro
step
    +|cRXP_WARN_Done:|r Call of Earth. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Shaman
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 20-29
#name 20-23 Call of Water
#displayname 20-23 Call of Water
step
    +|cRXP_WARN_MUST DO: Call of Water|r. Click to start.
    *Reward: Water Totem + Healing Stream Totem (Horde: Islen Waterseer, 3 waterskins; Dwarf: nine-quest chain via Norric Lochthane across five zones; no Skyborne version in beta data). Takes 1-2 hours of travel
step
    .goto 1411,54.42,42.59
    >>Talk to |cRXP_FRIENDLY_Swart|r
    .accept 2985 >>Accept Call of Water
    .target Swart
step
    .goto 1413,65.83,43.78
    >>Talk to |cRXP_FRIENDLY_Islen Waterseer|r
    .turnin 2985 >>Turn in Call of Water
    .accept 1530 >>Accept Call of Water
    .target Islen Waterseer
step
    .goto 1413,43.42,77.41
    >>Talk to |cRXP_FRIENDLY_Brine|r
    .turnin 1530 >>Turn in Call of Water
    .accept 1535 >>Accept Call of Water
    .target Brine
step
    >>Collect |cRXP_LOOT_[Filled Brown Waterskin]|r
    *Fill the Empty Brown Waterskin at the watering hole below Brine's hut and return it to her in the Barrens.
    .complete 1535,1 --Call of Water
step
    .goto 1413,43.42,77.41
    >>Talk to |cRXP_FRIENDLY_Brine|r
    .turnin 1535 >>Turn in Call of Water
    .accept 1536 >>Accept Call of Water
    .target Brine
step
    >>Collect |cRXP_LOOT_[Filled Red Waterskin]|r
    *Fill the Empty Red Waterskin at the well in Tarren Mill and return to Brine in the Barrens.
    .complete 1536,1 --Call of Water
step
    .goto 1413,43.42,77.41
    >>Talk to |cRXP_FRIENDLY_Brine|r
    .turnin 1536 >>Turn in Call of Water
    .accept 1534 >>Accept Call of Water
    .target Brine
step
    >>Collect |cRXP_LOOT_[Filled Blue Waterskin]|r
    *Fill the Empty Blue Waterskin at the Ruins of Stardust in Ashenvale and return to Brine in the Barrens.
    .complete 1534,1 --Call of Water
step
    .goto 1413,43.42,77.41
    >>Talk to |cRXP_FRIENDLY_Brine|r
    .turnin 1534 >>Turn in Call of Water
    .accept 220 >>Accept Call of Water
    .target Brine
step
    .goto 1413,65.83,43.78
    >>Talk to |cRXP_FRIENDLY_Islen Waterseer|r
    .turnin 220 >>Turn in Call of Water
    .accept 63 >>Accept Call of Water
    .target Islen Waterseer
step
    .goto 1412,47.4,62.54
    >>Talk to |cRXP_FRIENDLY_Narm Skychaser|r
    .accept 2986 >>Accept Call of Water
    .target Narm Skychaser
step
    .goto 1413,65.83,43.78
    >>Talk to |cRXP_FRIENDLY_Islen Waterseer|r
    .turnin 2986 >>Turn in Call of Water
    .target Islen Waterseer
step
    .goto 1454,37.96,37.73
    >>Talk to |cRXP_FRIENDLY_Searn Firewarder|r
    .accept 1528 >>Accept Call of Water
    .target Searn Firewarder
step
    .goto 1413,65.83,43.78
    >>Talk to |cRXP_FRIENDLY_Islen Waterseer|r
    .turnin 1528 >>Turn in Call of Water
    .target Islen Waterseer
step
    .goto 1456,25.16,20.51
    >>Talk to |cRXP_FRIENDLY_Xanis Flameweaver|r
    .accept 1529 >>Accept Call of Water
    .target Xanis Flameweaver
step
    .goto 1413,65.83,43.78
    >>Talk to |cRXP_FRIENDLY_Islen Waterseer|r
    .turnin 1529 >>Turn in Call of Water
    .target Islen Waterseer
step
    .goto 1421,38.78,44.26
    >>Collect |cRXP_LOOT_[Corrupt Manifestation's Bracers]|r from |cRXP_ENEMY_Corrupt Minor Manifestation of Water|r
    *Defeat the Corrupt Manifestation of Water and place the Corrupted Manifestation's Bracers along with the Remaining Drops of Purest Water on the Brazier of Everfount in Silverpine Forest.
    .complete 63,1 --Call of Water
    .mob Corrupt Minor Manifestation of Water
step
    .goto 1421,38.26,44.56
    >>Click the |cRXP_PICK_Brazier of Everfount|r
    .turnin 63 >>Turn in Call of Water
    .accept 100 >>Accept Call of Water
step
    .goto 1421,38.26,44.56
    >>Click the |cRXP_PICK_Brazier of Everfount|r
    .turnin 100 >>Turn in Call of Water
step
    .goto 1421,37.34,44.15
    >>Talk to |cRXP_FRIENDLY_Tiev Mordune|r
    .accept 1103 >>Accept Call of Water
    .target Tiev Mordune
step
    >>Collect |cRXP_LOOT_[Water Sapta]|r
    *Bring a Water Sapta to Tiev Mordune in Silverpine Forest if you failed to speak to the Minor Manifestation of Water.
    .complete 1103,1 --Call of Water
step
    .goto 1421,37.34,44.15
    >>Talk to |cRXP_FRIENDLY_Tiev Mordune|r
    .turnin 1103 >>Turn in Call of Water
    .target Tiev Mordune
step
    +|cRXP_WARN_Done:|r Call of Water. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Shaman Orc/Horde Shaman Undead/Horde Shaman Tauren/Horde Shaman Troll
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 30-39
#name 30-43 Call of Air (Orc/Undead/Tauren/Troll)
#displayname 30-43 Call of Air (Orc/Undead/Tauren/Troll)
step
    +|cRXP_WARN_MUST DO: Call of Air|r. Click to start.
    *Reward: Air Totem (no spell) and opens The Tempest's Weapons; Horde: Searn Firewarder / Xanis Flameweaver to Prate Cloudseer; Dwarf: Eldrun Stormbreaker to Veyric Thunderhame
    *|cff40ff40GOOD|r [Rage of the Storm]: Two-Hand Mace, 35.56 DPS, +16 Strength, +15 Stamina - rare ilvl 40 2H at req 30 for enhancement shaman; Stormstrike bonus needs the level 40 talent. json reqlevel 30 (jsonEquip says 1)
step
    .goto 1454,37.96,37.73
    >>Talk to |cRXP_FRIENDLY_Searn Firewarder|r
    .accept 1531 >>Accept Call of Air
    .target Searn Firewarder
step
    .goto 1441,53.54,42.65
    >>Talk to |cRXP_FRIENDLY_Prate Cloudseer|r
    .turnin 1531 >>Turn in Call of Air
    .target Prate Cloudseer
step
    .goto 1441,46.14,51.71
    >>Talk to |cRXP_FRIENDLY_Rau Cliffrunner|r
    .accept 79360 >>Accept Elemental Aid
    .target Rau Cliffrunner
step
    .goto 1456,25.16,20.51
    >>Talk to |cRXP_FRIENDLY_Xanis Flameweaver|r
    .accept 1532 >>Accept Call of Air
    .target Xanis Flameweaver
step
    .goto 1441,53.54,42.65
    >>Talk to |cRXP_FRIENDLY_Prate Cloudseer|r
    .turnin 1532 >>Turn in Call of Air
    .target Prate Cloudseer
step
    .goto 1413,42.9,90.2
    *|cRXP_WARN_Inside Razorfen Kraul: bring a group.|r
    >>Collect |cRXP_LOOT_[Tattered Note]|r from |cRXP_ENEMY_Charlga Razorflank|r
    *Defeat Charlga Razorflank in Razorfen Kraul and collect information on the quilboar's plans.
    .complete 79360,1 --Elemental Aid
    .mob Charlga Razorflank
step
    .goto 1441,46.14,51.71
    >>Talk to |cRXP_FRIENDLY_Rau Cliffrunner|r
    .turnin 79360 >>Turn in Elemental Aid
    .accept 79364 >>Accept Eyes on the Sky
    .target Rau Cliffrunner
step
    .goto 1441,53.54,42.65
    >>Talk to |cRXP_FRIENDLY_Prate Cloudseer|r
    .turnin 79364 >>Turn in Eyes on the Sky
    .accept 79361 >>Accept Storm, Earth, and Fire
    .target Prate Cloudseer
step
    .goto 1445,57.96,11.2
    >>Collect |cRXP_LOOT_[Twisted Water Totem]|r from |cRXP_ENEMY_Mirefin Puddlejumper|r, |cRXP_ENEMY_Mirefin Murloc|r, |cRXP_ENEMY_Mirefin Warrior|r
    *Collect 5 Twisted Fire Totems, 5 Twisted Earth Totems, 5 Twisted Air Totems, and 5 Twisted Water Totems for Prate Cloudseer in Thousand Needles.
    .complete 79361,1 --Storm, Earth, and Fire
    .mob Mirefin Puddlejumper
    .mob Mirefin Murloc
step
    .goto 1435,60.94,23.86
    >>Collect |cRXP_LOOT_[Twisted Earth Totem]|r from |cRXP_ENEMY_Lost One Mudlurker|r, |cRXP_ENEMY_Lost One Fisherman|r, |cRXP_ENEMY_Lost One Hunter|r
    *Collect 5 Twisted Fire Totems, 5 Twisted Earth Totems, 5 Twisted Air Totems, and 5 Twisted Water Totems for Prate Cloudseer in Thousand Needles.
    .complete 79361,2 --Storm, Earth, and Fire
    .mob Lost One Mudlurker
    .mob Lost One Fisherman
step
    .goto 1418,10.59,77.63
    >>Collect |cRXP_LOOT_[Twisted Fire Totem]|r from |cRXP_ENEMY_Dustbelcher Ogre|r, |cRXP_ENEMY_Dustbelcher Brute|r, |cRXP_ENEMY_Dustbelcher Wyrmhunter|r
    *Collect 5 Twisted Fire Totems, 5 Twisted Earth Totems, 5 Twisted Air Totems, and 5 Twisted Water Totems for Prate Cloudseer in Thousand Needles.
    .complete 79361,3 --Storm, Earth, and Fire
    .mob Dustbelcher Ogre
    .mob Dustbelcher Brute
step
    .goto 1443,30.76,55.71
    >>Collect |cRXP_LOOT_[Twisted Air Totem]|r from |cRXP_ENEMY_Maraudine Scout|r, |cRXP_ENEMY_Maraudine Wrangler|r, |cRXP_ENEMY_Maraudine Mauler|r
    *Collect 5 Twisted Fire Totems, 5 Twisted Earth Totems, 5 Twisted Air Totems, and 5 Twisted Water Totems for Prate Cloudseer in Thousand Needles.
    .complete 79361,4 --Storm, Earth, and Fire
    .mob Maraudine Scout
    .mob Maraudine Wrangler
step
    .goto 1441,53.54,42.65
    >>Talk to |cRXP_FRIENDLY_Prate Cloudseer|r
    .turnin 79361 >>Turn in Storm, Earth, and Fire
    .target Prate Cloudseer
step
    .goto 1441,46.14,51.71
    >>Talk to |cRXP_FRIENDLY_Rau Cliffrunner|r
    .accept 79366 >>Accept Heed My Call
    .target Rau Cliffrunner
step
    .goto 1441,37.18,40.39
    >>Collect |cRXP_LOOT_[Eye of the Tempest]|r from |cRXP_ENEMY_Ravaging Tempest|r
    *Use the Twisted Totems to put an end to the quilboar ritual.
    .complete 79366,1 --Heed My Call
    .mob Ravaging Tempest
step
    .goto 1441,46.14,51.71
    >>Talk to |cRXP_FRIENDLY_Rau Cliffrunner|r
    .turnin 79366 >>Turn in Heed My Call
    .accept 79442 >>Accept The Tempest's Weapons
    .target Rau Cliffrunner
step
    .goto 1416,80.5,66.92
    >>Talk to |cRXP_FRIENDLY_Bath'rah the Windwatcher|r
    .turnin 79442 >>Turn in The Tempest's Weapons
    .target Bath'rah the Windwatcher
step
    +|cRXP_WARN_Done:|r Call of Air. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Shaman Skyborne
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 30-39
#name 30-43 Call of Air (Skyborne)
#displayname 30-43 Call of Air (Skyborne)
step
    +|cRXP_WARN_MUST DO: Call of Air|r. Click to start.
    *Reward: Air Totem (no spell) and opens The Tempest's Weapons; Horde: Searn Firewarder / Xanis Flameweaver to Prate Cloudseer; Dwarf: Eldrun Stormbreaker to Veyric Thunderhame
    *|cff40ff40GOOD|r [Rage of the Storm]: Two-Hand Mace, 35.56 DPS, +16 Strength, +15 Stamina - rare ilvl 40 2H at req 30 for enhancement shaman; Stormstrike bonus needs the level 40 talent. json reqlevel 30 (jsonEquip says 1)
step
    .goto 1412,33.37,22.57
    >>Talk to |cRXP_FRIENDLY_Alaana Stormwalker|r
    .accept 96136 >>Accept Call of Air << Skyborne
    .target Alaana Stormwalker
step
    .goto 1441,53.54,42.65
    >>Talk to |cRXP_FRIENDLY_Prate Cloudseer|r
    .turnin 96136 >>Turn in Call of Air << Skyborne
    .target Prate Cloudseer
step
    .goto 1441,46.14,51.71
    >>Talk to |cRXP_FRIENDLY_Rau Cliffrunner|r
    .accept 79360 >>Accept Elemental Aid
    .target Rau Cliffrunner
step
    .goto 1454,37.96,37.73
    >>Talk to |cRXP_FRIENDLY_Searn Firewarder|r
    .accept 1531 >>Accept Call of Air
    .target Searn Firewarder
step
    .goto 1441,53.54,42.65
    >>Talk to |cRXP_FRIENDLY_Prate Cloudseer|r
    .turnin 1531 >>Turn in Call of Air
    .target Prate Cloudseer
step
    .goto 1456,25.16,20.51
    >>Talk to |cRXP_FRIENDLY_Xanis Flameweaver|r
    .accept 1532 >>Accept Call of Air
    .target Xanis Flameweaver
step
    .goto 1441,53.54,42.65
    >>Talk to |cRXP_FRIENDLY_Prate Cloudseer|r
    .turnin 1532 >>Turn in Call of Air
    .target Prate Cloudseer
step
    .goto 1413,42.9,90.2
    *|cRXP_WARN_Inside Razorfen Kraul: bring a group.|r
    >>Collect |cRXP_LOOT_[Tattered Note]|r from |cRXP_ENEMY_Charlga Razorflank|r
    *Defeat Charlga Razorflank in Razorfen Kraul and collect information on the quilboar's plans.
    .complete 79360,1 --Elemental Aid
    .mob Charlga Razorflank
step
    .goto 1441,46.14,51.71
    >>Talk to |cRXP_FRIENDLY_Rau Cliffrunner|r
    .turnin 79360 >>Turn in Elemental Aid
    .accept 79364 >>Accept Eyes on the Sky
    .target Rau Cliffrunner
step
    .goto 1441,53.54,42.65
    >>Talk to |cRXP_FRIENDLY_Prate Cloudseer|r
    .turnin 79364 >>Turn in Eyes on the Sky
    .accept 79361 >>Accept Storm, Earth, and Fire
    .target Prate Cloudseer
step
    .goto 1445,57.96,11.2
    >>Collect |cRXP_LOOT_[Twisted Water Totem]|r from |cRXP_ENEMY_Mirefin Puddlejumper|r, |cRXP_ENEMY_Mirefin Murloc|r, |cRXP_ENEMY_Mirefin Warrior|r
    *Collect 5 Twisted Fire Totems, 5 Twisted Earth Totems, 5 Twisted Air Totems, and 5 Twisted Water Totems for Prate Cloudseer in Thousand Needles.
    .complete 79361,1 --Storm, Earth, and Fire
    .mob Mirefin Puddlejumper
    .mob Mirefin Murloc
step
    .goto 1435,60.94,23.86
    >>Collect |cRXP_LOOT_[Twisted Earth Totem]|r from |cRXP_ENEMY_Lost One Mudlurker|r, |cRXP_ENEMY_Lost One Fisherman|r, |cRXP_ENEMY_Lost One Hunter|r
    *Collect 5 Twisted Fire Totems, 5 Twisted Earth Totems, 5 Twisted Air Totems, and 5 Twisted Water Totems for Prate Cloudseer in Thousand Needles.
    .complete 79361,2 --Storm, Earth, and Fire
    .mob Lost One Mudlurker
    .mob Lost One Fisherman
step
    .goto 1418,10.59,77.63
    >>Collect |cRXP_LOOT_[Twisted Fire Totem]|r from |cRXP_ENEMY_Dustbelcher Ogre|r, |cRXP_ENEMY_Dustbelcher Brute|r, |cRXP_ENEMY_Dustbelcher Wyrmhunter|r
    *Collect 5 Twisted Fire Totems, 5 Twisted Earth Totems, 5 Twisted Air Totems, and 5 Twisted Water Totems for Prate Cloudseer in Thousand Needles.
    .complete 79361,3 --Storm, Earth, and Fire
    .mob Dustbelcher Ogre
    .mob Dustbelcher Brute
step
    .goto 1443,30.76,55.71
    >>Collect |cRXP_LOOT_[Twisted Air Totem]|r from |cRXP_ENEMY_Maraudine Scout|r, |cRXP_ENEMY_Maraudine Wrangler|r, |cRXP_ENEMY_Maraudine Mauler|r
    *Collect 5 Twisted Fire Totems, 5 Twisted Earth Totems, 5 Twisted Air Totems, and 5 Twisted Water Totems for Prate Cloudseer in Thousand Needles.
    .complete 79361,4 --Storm, Earth, and Fire
    .mob Maraudine Scout
    .mob Maraudine Wrangler
step
    .goto 1441,53.54,42.65
    >>Talk to |cRXP_FRIENDLY_Prate Cloudseer|r
    .turnin 79361 >>Turn in Storm, Earth, and Fire
    .target Prate Cloudseer
step
    .goto 1441,46.14,51.71
    >>Talk to |cRXP_FRIENDLY_Rau Cliffrunner|r
    .accept 79366 >>Accept Heed My Call
    .target Rau Cliffrunner
step
    .goto 1441,37.18,40.39
    >>Collect |cRXP_LOOT_[Eye of the Tempest]|r from |cRXP_ENEMY_Ravaging Tempest|r
    *Use the Twisted Totems to put an end to the quilboar ritual.
    .complete 79366,1 --Heed My Call
    .mob Ravaging Tempest
step
    .goto 1441,46.14,51.71
    >>Talk to |cRXP_FRIENDLY_Rau Cliffrunner|r
    .turnin 79366 >>Turn in Heed My Call
    .accept 79442 >>Accept The Tempest's Weapons
    .target Rau Cliffrunner
step
    .goto 1416,80.5,66.92
    >>Talk to |cRXP_FRIENDLY_Bath'rah the Windwatcher|r
    .turnin 79442 >>Turn in The Tempest's Weapons
    .target Bath'rah the Windwatcher
step
    +|cRXP_WARN_Done:|r Call of Air. Enjoy the loot. Click to finish.
]])
