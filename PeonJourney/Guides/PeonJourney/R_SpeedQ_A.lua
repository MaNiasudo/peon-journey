RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 20-29
#name 21-24 Ashenvale/Stonetalon
#displayname 21-24 Ashenvale/Stonetalon
#next 24-27 Duskwood/Redridge
step
    .zone 1440 >>Travel to Ashenvale
    *How: The starter route ends in Darkshore: ride south into Ashenvale (Astranaar).
    *Level for this part: 21-24. 33 quests, roughly 5 h 35 min.
step
    #completewith next
    .goto 1440,34.41,47.99,15,0
    >>Talk to |cRXP_FRIENDLY_Daelyshia|r if you don't have this flight path yet
    .fp Daelyshia >>Get the flight path
    .target Daelyshia
step
    .goto 1440,36.62,49.58
    >>Talk to |cRXP_FRIENDLY_Raene Wolfrunner|r
    .accept 1054 >>Accept Culling the Threat
    .target Raene Wolfrunner
step
    .goto 1440,35.77,49.1
    >>Talk to |cRXP_FRIENDLY_Faldreas Goeth'Shael|r
    .accept 1056 >>Accept Journey to Stonetalon Peak
    .target Faldreas Goeth'Shael
step
    .goto 1440,34.89,49.79
    >>Talk to |cRXP_FRIENDLY_Sentinel Thenysil|r
    .accept 1070 >>Accept On Guard in Stonetalon
    .target Sentinel Thenysil
step
    .goto 1440,34.67,48.84
    >>Talk to |cRXP_FRIENDLY_Shindrell Swiftfire|r
    .accept 1134 >>Accept Pridewings of Stonetalon
    .target Shindrell Swiftfire
step
    .goto 1440,37.37,51.79
    >>Talk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
    .accept 1034 >>Accept The Ruins of Stardust
    .target Pelturas Whitemoon
step
    .goto 1440,26.21,38.88
    >>Talk to |cRXP_FRIENDLY_Feero Ironhand|r
    .accept 976 >>Accept Supplies to Auberdine
    .target Feero Ironhand
step
    .goto 1440,20.31,42.33
    >>Talk to |cRXP_FRIENDLY_Teronis' Corpse|r
    .accept 1023 >>Accept Raene's Cleansing
    .target Teronis' Corpse
step
    .goto 1440,19.99,45.07
    >>Collect |cRXP_LOOT_[Glowing Gem]|r from |cRXP_ENEMY_Saltspittle Puddlejumper|r, |cRXP_ENEMY_Saltspittle Warrior|r, |cRXP_ENEMY_Saltspittle Muckdweller|r
    *Find the Glowing Gem and return to Raene Wolfrunner in Astranaar with Teronis' Journal.
    .complete 1023,1 --Raene's Cleansing
    .mob Saltspittle Puddlejumper
    .mob Saltspittle Warrior
step
    .goto 1440,36.62,49.58
    >>Talk to |cRXP_FRIENDLY_Raene Wolfrunner|r
    .turnin 1023 >>Turn in Raene's Cleansing
    .accept 1025 >>Accept An Aggressive Defense
    .target Raene Wolfrunner
step
    .goto 1440,37.74,34.73
    >>Collect |cRXP_LOOT_[Dal Bloodclaw's Skull]|r from |cRXP_ENEMY_Dal Bloodclaw|r
    *Bring Dal Bloodclaw's Skull to Raene Wolfrunner in Astranaar.
    .complete 1054,1 --Culling the Threat
    .mob Dal Bloodclaw
step
    .goto 1440,36.62,49.58
    >>Talk to |cRXP_FRIENDLY_Raene Wolfrunner|r
    .turnin 1054 >>Turn in Culling the Threat
    .target Raene Wolfrunner
step
    .goto 1440,33.11,68.6
    >>Collect |cRXP_LOOT_[Handful of Stardust]|r from |cRXP_PICK_Stardust Covered Bush|r
    *Bring 5 Handfuls of Stardust to Pelturas in Astranaar.
    .complete 1034,1 --The Ruins of Stardust
step
    .goto 1440,37.37,51.79
    >>Talk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
    .turnin 1034 >>Turn in The Ruins of Stardust
    .target Pelturas Whitemoon
step
    .goto 1440,49.8,67.21
    >>Talk to |cRXP_FRIENDLY_Sentinel Velene Starstrike|r
    .accept 1016 >>Accept Elemental Bracers
    .target Sentinel Velene Starstrike
step
    .goto 1440,49.8,67.21
    >>Kill |cRXP_ENEMY_Foulweald Den Watcher|r. Kill |cRXP_ENEMY_Foulweald Ursa|r. Kill |cRXP_ENEMY_Foulweald Totemic|r. Kill |cRXP_ENEMY_Foulweald Warrior|r. Collect |cRXP_LOOT_[Divined Scroll]|r
    *Kill 1 Den Watcher, 2 Ursas, 10 Totemics, and 12 Warriors of the Foulweald tribe, and then return to Raene Wolfrunner in Astranaar.
    *Collect 5 Intact Elemental Bracers and use the Divining Scroll on them. Afterwards, bring the Divined Scroll to Sentinel Velene Starstrike at the Silverwind Refuge.
    .complete 1025,1 --An Aggressive Defense
    .complete 1025,2 --An Aggressive Defense
    .complete 1025,3 --An Aggressive Defense
    .complete 1025,4 --An Aggressive Defense
    .complete 1016,1 --Elemental Bracers
    .mob Foulweald Den Watcher
    .mob Foulweald Ursa
    .mob Foulweald Totemic
    .mob Foulweald Warrior
step
    .goto 1440,49.8,67.21
    >>Talk to |cRXP_FRIENDLY_Sentinel Velene Starstrike|r
    .turnin 1016 >>Turn in Elemental Bracers
    .accept 1017 >>Accept Mage Summoner
    .target Sentinel Velene Starstrike
step
    .goto 1440,62.99,71.57
    >>Click the |cRXP_PICK_Gleaming Crescent Pendant|r
    .accept 98027 >>Accept Gleaming Crescent Necklace
step
    .goto 1440,36.62,49.58
    >>Talk to |cRXP_FRIENDLY_Raene Wolfrunner|r
    .turnin 1025 >>Turn in An Aggressive Defense
    .target Raene Wolfrunner
step
    .goto 1440,36.62,49.98
    >>Talk to |cRXP_FRIENDLY_Maliynn|r
    .turnin 98027 >>Turn in Gleaming Crescent Necklace
    .target Maliynn
step
    .goto 1440,29.5,16.8
    >>Protect Feero Ironhand
    *Speak with Delgren the Purifier at Maestra's Post after seeing Feero safely through Ashenvale Forest.
    .complete 976,1 --Supplies to Auberdine
step
    .goto 1440,26.2,38.7
    >>Talk to |cRXP_FRIENDLY_Delgren the Purifier|r
    .turnin 976 >>Turn in Supplies to Auberdine
    .target Delgren the Purifier
step
    .goto 1442,37.1,8.1
    >>Talk to |cRXP_FRIENDLY_Keeper Albagorm|r
    .turnin 1056 >>Turn in Journey to Stonetalon Peak
    .accept 1057 >>Accept Reclaiming the Charred Vale
    .target Keeper Albagorm
step
    .goto 1442,48.69,39.86
    >>Talk to |cRXP_FRIENDLY_Night Elf Courier|r
    .accept 86574 >>Accept Stonetalon Supply Run
    .target Night Elf Courier
step
    .goto 1442,53.03,39.69
    >>Collect |cRXP_LOOT_[Pridewing Venom Sac]|r from |cRXP_ENEMY_Unsuspecting Pridewing|r, |cRXP_ENEMY_Freewind Post Wyvern|r, |cRXP_ENEMY_Pridewing Skyhunter|r. Collect |cRXP_LOOT_[Stonetalon Supply Bundle]|r from |cRXP_ENEMY_Young Pridewing|r, |cRXP_ENEMY_Pridewing Wyvern|r, |cRXP_ENEMY_Pridewing Skyhunter|r
    *Bring 12 Pridewing Venom Sacs to Shindrell Swiftfire in Astranaar.
    *Collect 6 Stonetalon Supplies from Pridewing Wyverns and deliver them to Innkeeper Faralia.
    .complete 1134,1 --Pridewings of Stonetalon
    .complete 86574,1 --Stonetalon Supply Run
    .mob Unsuspecting Pridewing
    .mob Freewind Post Wyvern
    .mob Young Pridewing
    .mob Pridewing Wyvern
step
    .goto 1442,58.99,62.6
    >>Talk to |cRXP_FRIENDLY_Ziz Fizziks|r
    .accept 1093 >>Accept Super Reaper 6000
    .target Ziz Fizziks
step
    .goto 1442,59.9,66.85
    >>Talk to |cRXP_FRIENDLY_Kaela Shadowspear|r
    .turnin 1070 >>Turn in On Guard in Stonetalon
    .accept 1085 >>Accept On Guard in Stonetalon
    .target Kaela Shadowspear
step
    .goto 1442,59.52,67.15
    >>Talk to |cRXP_FRIENDLY_Gaxim Rustfizzle|r
    .turnin 1085 >>Turn in On Guard in Stonetalon
    .accept 1071 >>Accept A Gnome's Respite
    .target Gaxim Rustfizzle
step
    .goto 1442,71.87,60
    >>Talk to |cRXP_FRIENDLY_Piznik|r
    .accept 1090 >>Accept Gerenzo's Orders
    .target Piznik
step
    .goto 1442,71.87,60
    >>Talk to |cRXP_FRIENDLY_Piznik|r
    .turnin 1090 >>Turn in Gerenzo's Orders
    .accept 1092 >>Accept Gerenzo's Orders
    .target Piznik
step
    .goto 1442,65.99,52.06
    >>Collect |cRXP_LOOT_[Super Reaper 6000 Blueprints]|r from |cRXP_ENEMY_Venture Co. Operator|r. Kill |cRXP_ENEMY_Venture Co. Logger|r. Kill |cRXP_ENEMY_Venture Co. Deforester|r
    *Get the Super Reaper 6000 Blueprints for Ziz Fizziks in the Stonetalon Mountains.
    *Kill 10 Venture Co. Loggers, and 10 Venture Co. Deforesters and return to Gaxim Rustfizzle in Stonetalon.
    .complete 1093,1 --Super Reaper 6000
    .complete 1071,1 --A Gnome's Respite
    .complete 1071,2 --A Gnome's Respite
    .mob Venture Co. Operator
    .mob Venture Co. Logger
    .mob Venture Co. Deforester
step
    .goto 1442,58.99,62.6
    >>Talk to |cRXP_FRIENDLY_Ziz Fizziks|r
    .turnin 1093 >>Turn in Super Reaper 6000
    .turnin 1092 >>Turn in Gerenzo's Orders
    .accept 1094 >>Accept Further Instructions
    .target Ziz Fizziks
step
    .goto 1442,59.52,67.15
    >>Talk to |cRXP_FRIENDLY_Gaxim Rustfizzle|r
    .turnin 1071 >>Turn in A Gnome's Respite
    .accept 1072 >>Accept An Old Colleague
    .accept 1075 >>Accept A Scroll from Mauren
    .target Gaxim Rustfizzle
step
    .goto 1442,32.57,60.66
    >>Kill |cRXP_ENEMY_Bloodfury Harpy|r. Kill |cRXP_ENEMY_Bloodfury Ambusher|r. Kill |cRXP_ENEMY_Bloodfury Roguefeather|r
    *Keeper Albagorm on Stonetalon Peak wants you to slay 7 Bloodfury Harpies, 7 Bloodfury Ambushers, 7 Bloodfury Slayers and 7 Bloodfury Roguefeathers.
    .complete 1057,1 --Reclaiming the Charred Vale
    .complete 1057,2 --Reclaiming the Charred Vale
    .complete 1057,4 --Reclaiming the Charred Vale
    .mob Bloodfury Harpy
    .mob Bloodfury Ambusher
    .mob Bloodfury Roguefeather
step
    .goto 1442,34.89,70.26
    >>Kill |cRXP_ENEMY_Bloodfury Slayer|r
    *Keeper Albagorm on Stonetalon Peak wants you to slay 7 Bloodfury Harpies, 7 Bloodfury Ambushers, 7 Bloodfury Slayers and 7 Bloodfury Roguefeathers.
    .complete 1057,3 --Reclaiming the Charred Vale
    .mob Bloodfury Slayer
step
    .goto 1442,37.1,8.1
    >>Talk to |cRXP_FRIENDLY_Keeper Albagorm|r
    .turnin 1057 >>Turn in Reclaiming the Charred Vale
    .accept 1059 >>Accept Reclaiming the Charred Vale
    .target Keeper Albagorm
step
    .goto 1442,35.79,5.74
    >>Talk to |cRXP_FRIENDLY_Innkeeper Faralia|r
    .turnin 86574 >>Turn in Stonetalon Supply Run
    .target Innkeeper Faralia
step
    .goto 1440,34.67,48.84
    >>Talk to |cRXP_FRIENDLY_Shindrell Swiftfire|r
    .turnin 1134 >>Turn in Pridewings of Stonetalon
    .target Shindrell Swiftfire
step
    .goto 1413,62.98,37.22
    >>Talk to |cRXP_FRIENDLY_Sputtervalve|r
    .turnin 1094 >>Turn in Further Instructions
    .accept 1095 >>Accept Further Instructions
    .target Sputtervalve
step
    .goto 1413,48.22,19.15
    >>Collect |cRXP_LOOT_[Sarilus Foulborne's Head]|r from |cRXP_ENEMY_Sarilus Foulborne|r
    *Slay Sarilus Foulborne and bring his head to Sentinel Velene Starstrike in Silverwind Refuge.
    .complete 1017,1 --Mage Summoner
    .mob Sarilus Foulborne
step
    .goto 1440,49.8,67.21
    >>Talk to |cRXP_FRIENDLY_Sentinel Velene Starstrike|r
    .turnin 1017 >>Turn in Mage Summoner
    .target Sentinel Velene Starstrike
step
    .goto 1455,72.08,51.88
    >>Talk to |cRXP_FRIENDLY_Lomac Gearstrip|r
    .turnin 1072 >>Turn in An Old Colleague
    .accept 1073 >>Accept Ineptitude + Chemicals = Fun
    .target Lomac Gearstrip
step
    .goto 1453,53.02,86.64
    >>Talk to |cRXP_FRIENDLY_Collin Mauren|r
    .turnin 1075 >>Turn in A Scroll from Mauren
    .accept 1076 >>Accept Devils in Westfall
    .accept 1078 >>Accept Retrieval for Mauren
    .target Collin Mauren
step
    .goto 1444,89.64,46.57
    >>Talk to |cRXP_FRIENDLY_Falfindel Waywarder|r
    .turnin 1059 >>Turn in Reclaiming the Charred Vale
    .target Falfindel Waywarder
step
    .goto 1442,58.99,62.6
    >>Talk to |cRXP_FRIENDLY_Ziz Fizziks|r
    .turnin 1095 >>Turn in Further Instructions
    .accept 1096 >>Accept Gerenzo Wrenchwhistle
    .target Ziz Fizziks
step
    .goto 1442,64.49,40.25
    >>Collect |cRXP_LOOT_[Gerenzo's Mechanical Arm]|r from |cRXP_ENEMY_Gerenzo Wrenchwhistle|r
    *Bring Gerenzo Wrenchwhistle's Mechanical Arm to Ziz Fizziks in the Stonetalon Mountains.
    .complete 1096,1 --Gerenzo Wrenchwhistle
    .mob Gerenzo Wrenchwhistle
step
    .goto 1442,58.99,62.6
    >>Talk to |cRXP_FRIENDLY_Ziz Fizziks|r
    .turnin 1096 >>Turn in Gerenzo Wrenchwhistle
    .target Ziz Fizziks
step
    .goto 1442,32.66,67.44
    >>Collect |cRXP_LOOT_[Crystalized Scales]|r from |cRXP_ENEMY_Scorched Basilisk|r, |cRXP_ENEMY_Singed Basilisk|r, |cRXP_ENEMY_Blackened Basilisk|r
    *Bring 8 Crystalized Scales to Collin Mauren in Stormwind.
    .complete 1078,1 --Retrieval for Mauren
    .mob Scorched Basilisk
    .mob Singed Basilisk
step
    .goto 1453,53.02,86.64
    >>Talk to |cRXP_FRIENDLY_Collin Mauren|r
    .turnin 1078 >>Turn in Retrieval for Mauren
    .target Collin Mauren
step
    .goto 1440,37.9,33.78
    >>Collect |cRXP_LOOT_[Minor Mana Potion]|r from |cRXP_ENEMY_Defias Smuggler|r, |cRXP_ENEMY_Riverpaw Taskmaster|r, |cRXP_ENEMY_Harvest Watcher|r
    *Bring 4 Minor Mana Potions and 2 Elixirs of Minor Fortitude to Lomac Gearstrip in Ironforge.
    .complete 1073,1 --Ineptitude + Chemicals = Fun
    .mob Defias Smuggler
    .mob Riverpaw Taskmaster
step
    >>Collect |cRXP_LOOT_[Elixir of Minor Fortitude]|r
    *Bring 4 Minor Mana Potions and 2 Elixirs of Minor Fortitude to Lomac Gearstrip in Ironforge.
    .complete 1073,2 --Ineptitude + Chemicals = Fun
step
    .goto 1455,72.08,51.88
    >>Talk to |cRXP_FRIENDLY_Lomac Gearstrip|r
    .turnin 1073 >>Turn in Ineptitude + Chemicals = Fun
    .accept 1074 >>Accept Ineptitude + Chemicals = Fun
    .target Lomac Gearstrip
step
    .goto 1442,59.52,67.15
    >>Talk to |cRXP_FRIENDLY_Gaxim Rustfizzle|r
    .turnin 1074 >>Turn in Ineptitude + Chemicals = Fun
    .accept 1079 >>Accept Covert Ops - Alpha
    .accept 1080 >>Accept Covert Ops - Beta
    .target Gaxim Rustfizzle
step
    .goto 1442,74.46,59.3
    >>Collect |cRXP_LOOT_[Venture Co. Letters]|r from |cRXP_PICK_Venture Co. Documents|r
    *Retrieve the Venture Co. Letters from Windshear Mine at the east end of Windshear Crag.
    .complete 1080,1 --Covert Ops - Beta
step
    .goto 1442,66.09,51.33
    >>Collect |cRXP_LOOT_[Venture Co. Engineering Plans]|r from |cRXP_PICK_Venture Co. Engineering Plans|r
    *Retrieve the Venture Co.'s Engineering Plans from the lumber mill in Windshear Crag.
    .complete 1079,1 --Covert Ops - Alpha
step
    .goto 1442,59.52,67.15
    >>Talk to |cRXP_FRIENDLY_Gaxim Rustfizzle|r
    .turnin 1079 >>Turn in Covert Ops - Alpha
    .turnin 1080 >>Turn in Covert Ops - Beta
    .accept 1091 >>Accept Kaela's Update
    .target Gaxim Rustfizzle
step
    .goto 1442,59.9,66.85
    >>Talk to |cRXP_FRIENDLY_Kaela Shadowspear|r
    .turnin 1091 >>Turn in Kaela's Update
    .accept 1083 >>Accept Enraged Spirits
    .target Kaela Shadowspear
step
    .goto 1442,31.64,70.82
    >>Collect |cRXP_LOOT_[Smoldering Embers]|r from |cRXP_ENEMY_Rogue Flame Spirit|r, |cRXP_ENEMY_Burning Ravager|r, |cRXP_ENEMY_Burning Destroyer|r
    *Bring 8 Smoldering Embers from any of the fire elementals in the Charred Vale to Kaela Shadowspear in Stonetalon.
    .complete 1083,1 --Enraged Spirits
    .mob Rogue Flame Spirit
    .mob Burning Ravager
step
    .goto 1442,59.9,66.85
    >>Talk to |cRXP_FRIENDLY_Kaela Shadowspear|r
    .turnin 1083 >>Turn in Enraged Spirits
    .target Kaela Shadowspear
step
    .goto 1436,38.18,62.31
    >>Collect |cRXP_LOOT_[Dust Devil Debris]|r from |cRXP_ENEMY_Dust Devil|r
    *Bring Dust Devil Debris to Collin Mauren in Stormwind.
    .complete 1076,1 --Devils in Westfall
    .mob Dust Devil
step
    .goto 1453,53.02,86.64
    >>Talk to |cRXP_FRIENDLY_Collin Mauren|r
    .turnin 1076 >>Turn in Devils in Westfall
    .accept 1077 >>Accept Special Delivery for Gaxim
    .target Collin Mauren
step
    .goto 1442,59.52,67.15
    >>Talk to |cRXP_FRIENDLY_Gaxim Rustfizzle|r
    .turnin 1077 >>Turn in Special Delivery for Gaxim
    .target Gaxim Rustfizzle
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 20-29
#name 24-27 Duskwood/Redridge
#displayname 24-27 Duskwood/Redridge
#next 27-30 Wetlands
step
    .zone 1431 >>Travel to Duskwood
    *How: Take the boat Auberdine -> Stormwind Harbor (new in Forever), then fly to Darkshire.
    *Level for this part: 24-27. 52 quests, roughly 4 h 15 min.
step
    #completewith next
    .goto 1431,77.49,44.29,15,0
    >>Talk to |cRXP_FRIENDLY_Felicia Maline|r if you don't have this flight path yet
    .fp Felicia Maline >>Get the flight path
    .target Felicia Maline
step
    .goto 1431,73.75,43.48
    >>Talk to |cRXP_FRIENDLY_Chef Grual|r
    .accept 90 >>Accept Seasoned Wolf Kabobs
    .target Chef Grual
step
    .goto 1431,72.62,47.62
    >>Talk to |cRXP_FRIENDLY_Sirra Von'Indi|r
    .accept 96139 >>Accept The Valor Family
    .target Sirra Von'Indi
step
    .goto 1431,73.54,46.82
    >>Talk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .accept 56 >>Accept The Night Watch
    .target Commander Althea Ebonlocke
step
    .goto 1431,75.34,48.75
    >>Talk to |cRXP_FRIENDLY_Elaine Carevin|r
    .accept 163 >>Accept Raven Hill
    .accept 164 >>Accept Deliveries to Sven
    .accept 165 >>Accept The Hermit
    .target Elaine Carevin
step
    .goto 1431,78.96,69.68
    >>Kill |cRXP_ENEMY_Skeletal Warrior|r. Kill |cRXP_ENEMY_Skeletal Mage|r
    *Commander Althea Ebonlocke of Darkshire wants you to kill 8 Skeletal Warriors and 6 Skeletal Mages.
    .complete 56,1 --The Night Watch
    .complete 56,2 --The Night Watch
    .mob Skeletal Warrior
    .mob Skeletal Mage
step
    .goto 1431,66.23,73.96
    >>Loot |cRXP_LOOT_[An Old History Book]|r from |cRXP_ENEMY_Fallen Mage|r, |cRXP_ENEMY_Kirin Tor Necromancer|r, |cRXP_ENEMY_Skeletal Horror|r, then click it to start the quest
    .accept 337 >>Accept An Old History Book
    .use 2794
    .mob Fallen Mage
    .mob Kirin Tor Necromancer
step
    .goto 1431,45.12,67.03
    >>Talk to |cRXP_FRIENDLY_Watcher Dodds|r
    .accept 245 >>Accept Eight-Legged Menaces
    .target Watcher Dodds
step
    .goto 1431,18.77,61.39
    >>Loot |cRXP_LOOT_[Merrick's Bow]|r from |cRXP_ENEMY_Lost Watcher|r, then click it to start the quest
    .accept 96138 >>Accept Merrick's Bow
    .use 281142
    .mob Lost Watcher
step
    .goto 1431,18.38,56.37
    >>Talk to |cRXP_FRIENDLY_Jitters|r
    .turnin 163 >>Turn in Raven Hill
    .accept 5 >>Accept Jitters' Growling Gut
    .target Jitters
step
    .goto 1431,21.13,55.6
    >>Collect |cRXP_LOOT_[Raven Hill Tome]|r from |cRXP_PICK_Memory of Valor|r
    *Search Raven Hill for anything of interest and return to Sirra Von'Indi in Darkshire.
    .complete 96139,1 --The Valor Family
step
    .goto 1431,10.75,55.39
    >>Kill |cRXP_ENEMY_Pygmy Venom Web Spider|r
    *Kill 15 Pygmy Venom Web Spiders, and then report back to Watcher Dodds in Duskwood.
    .complete 245,1 --Eight-Legged Menaces
    .mob Pygmy Venom Web Spider
step
    .goto 1431,7.78,34.07
    >>Talk to |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 164 >>Turn in Deliveries to Sven
    .accept 95 >>Accept Sven's Revenge
    .target Sven Yorgen
step
    .goto 1431,28.11,31.46
    >>Talk to |cRXP_FRIENDLY_Abercrombie|r
    .turnin 165 >>Turn in The Hermit
    .accept 148 >>Accept Supplies from Darkshire
    .target Abercrombie
step
    .goto 1431,32.63,25.84
    >>Collect |cRXP_LOOT_[Lean Wolf Flank]|r from |cRXP_ENEMY_Starving Dire Wolf|r, |cRXP_ENEMY_Lupos|r, |cRXP_ENEMY_Rabid Dire Wolf|r
    *Gather 10 Lean Wolf Flanks and Stormwind Seasoning Herbs and return to Chef Grual in Darkshire.
    .complete 90,1 --Seasoned Wolf Kabobs
    .mob Starving Dire Wolf
    .mob Lupos
step
    .goto 1431,45.12,67.03
    >>Talk to |cRXP_FRIENDLY_Watcher Dodds|r
    .turnin 245 >>Turn in Eight-Legged Menaces
    .target Watcher Dodds
step
    .goto 1431,49.85,77.71
    >>Click the |cRXP_PICK_Mound of loose dirt|r
    .turnin 95 >>Turn in Sven's Revenge
    .accept 230 >>Accept Sven's Camp
step
    .goto 1431,33.08,75.21
    >>Kill |cRXP_ENEMY_Splinter Fist Warrior|r. Kill |cRXP_ENEMY_Splinter Fist Taskmaster|r
    *Defeat 8 Splinter Fist Warriors and 4 Splinter Fist Taskmasters then return to Sirra Von'Indi in Darkshire for more information.
    .complete 96138,1 --Merrick's Bow
    .complete 96138,2 --Merrick's Bow
    .mob Splinter Fist Warrior
    .mob Splinter Fist Taskmaster
step
    .goto 1431,72.62,47.62
    >>Talk to |cRXP_FRIENDLY_Sirra Von'Indi|r
    .turnin 96139 >>Turn in The Valor Family
    .turnin 96138 >>Turn in Merrick's Bow
    .target Sirra Von'Indi
step
    .goto 1431,73.54,46.82
    >>Talk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .turnin 56 >>Turn in The Night Watch
    .accept 57 >>Accept The Night Watch
    .target Commander Althea Ebonlocke
step
    .goto 1431,75.79,45.32
    >>Talk to |cRXP_FRIENDLY_Madame Eva|r
    .turnin 148 >>Turn in Supplies from Darkshire
    .accept 149 >>Accept Ghost Hair Thread
    .target Madame Eva
step
    .goto 1431,73.75,43.48
    >>Talk to |cRXP_FRIENDLY_Chef Grual|r
    .turnin 5 >>Turn in Jitters' Growling Gut
    .target Chef Grual
step
    >>Collect |cRXP_LOOT_[Stormwind Seasoning Herbs]|r
    *Gather 10 Lean Wolf Flanks and Stormwind Seasoning Herbs and return to Chef Grual in Darkshire.
    .complete 90,2 --Seasoned Wolf Kabobs
step
    .goto 1431,73.75,43.48
    >>Talk to |cRXP_FRIENDLY_Chef Grual|r
    .turnin 90 >>Turn in Seasoned Wolf Kabobs
    .target Chef Grual
step
    .goto 1431,81.99,59.09
    >>Talk to |cRXP_FRIENDLY_Blind Mary|r
    .turnin 149 >>Turn in Ghost Hair Thread
    .accept 154 >>Accept Return the Comb
    .target Blind Mary
step
    .goto 1431,75.79,45.32
    >>Talk to |cRXP_FRIENDLY_Madame Eva|r
    .turnin 154 >>Turn in Return the Comb
    .accept 157 >>Accept Deliver the Thread
    .target Madame Eva
step
    .goto 1431,28.11,31.46
    >>Talk to |cRXP_FRIENDLY_Abercrombie|r
    .turnin 157 >>Turn in Deliver the Thread
    .accept 158 >>Accept Zombie Juice
    .target Abercrombie
step
    .goto 1431,20.65,46.4
    >>Kill |cRXP_ENEMY_Skeletal Fiend|r. Kill |cRXP_ENEMY_Skeletal Horror|r
    *Commander Althea Ebonlocke of Darkshire wants you to kill 15 Skeletal Fiends and 15 Skeletal Horrors.
    .complete 57,1 --The Night Watch
    .complete 57,2 --The Night Watch
    .mob Skeletal Fiend
    .mob Skeletal Horror
step
    .goto 1431,7.78,34.07
    >>Talk to |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 230 >>Turn in Sven's Camp
    .accept 262 >>Accept The Shadowy Figure
    .target Sven Yorgen
step
    .goto 1431,73.54,46.82
    >>Talk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .turnin 57 >>Turn in The Night Watch
    .target Commander Althea Ebonlocke
step
    .goto 1431,73.78,44.49
    >>Talk to |cRXP_FRIENDLY_Tavernkeep Smitts|r
    .turnin 158 >>Turn in Zombie Juice
    .target Tavernkeep Smitts
step
    .goto 1431,75.79,45.32
    >>Talk to |cRXP_FRIENDLY_Madame Eva|r
    .turnin 262 >>Turn in The Shadowy Figure
    .accept 265 >>Accept The Shadowy Search Continues
    .target Madame Eva
step
    .goto 1431,73.78,44.49
    >>Talk to |cRXP_FRIENDLY_Tavernkeep Smitts|r
    .accept 156 >>Accept Gather Rot Blossoms
    .target Tavernkeep Smitts
step
    .goto 1431,73.54,46.82
    >>Talk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .accept 58 >>Accept The Night Watch
    .target Commander Althea Ebonlocke
step
    .goto 1431,72.54,46.87
    >>Talk to |cRXP_FRIENDLY_Clerk Daltry|r
    .turnin 265 >>Turn in The Shadowy Search Continues
    .accept 266 >>Accept Inquire at the Inn
    .target Clerk Daltry
step
    .goto 1431,73.78,44.49
    >>Talk to |cRXP_FRIENDLY_Tavernkeep Smitts|r
    .turnin 266 >>Turn in Inquire at the Inn
    .accept 453 >>Accept Finding the Shadowy Figure
    .target Tavernkeep Smitts
step
    .goto 1431,23.71,34.07
    >>Kill |cRXP_ENEMY_Plague Spreader|r
    *Commander Althea Ebonlocke of Darkshire wants you to kill 20 Plague Spreaders in the eastern Raven Hill mausoleum.
    .complete 58,1 --The Night Watch
    .mob Plague Spreader
step
    .goto 1431,20.65,46.4
    >>Collect |cRXP_LOOT_[Rot Blossom]|r from |cRXP_ENEMY_Skeletal Fiend (Enraged Form)|r, |cRXP_ENEMY_Skeletal Fiend|r
    *Gather 8 Rot Blossoms and bring them to Tavernkeep Smitts in Darkshire.
    .complete 156,1 --Gather Rot Blossoms
    .mob Skeletal Fiend (Enraged Form)
    .mob Skeletal Fiend
step
    .goto 1431,18.38,56.37
    >>Talk to |cRXP_FRIENDLY_Jitters|r
    .turnin 453 >>Turn in Finding the Shadowy Figure
    .accept 268 >>Accept Return to Sven
    .target Jitters
step
    .goto 1431,7.78,34.07
    >>Talk to |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 268 >>Turn in Return to Sven
    .accept 323 >>Accept Proving Your Worth
    .target Sven Yorgen
step
    .goto 1431,17.16,34.94
    >>Kill |cRXP_ENEMY_Skeletal Raider|r. Kill |cRXP_ENEMY_Skeletal Healer|r. Kill |cRXP_ENEMY_Skeletal Warder|r
    *Kill 15 Skeletal Raiders, 3 Skeletal Healers and 3 Skeletal Warders, and then return to Sven.
    .complete 323,1 --Proving Your Worth
    .complete 323,2 --Proving Your Worth
    .complete 323,3 --Proving Your Worth
    .mob Skeletal Raider
    .mob Skeletal Healer
    .mob Skeletal Warder
step
    .goto 1431,7.78,34.07
    >>Talk to |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 323 >>Turn in Proving Your Worth
    .accept 269 >>Accept Seeking Wisdom
    .target Sven Yorgen
step
    .goto 1431,73.78,44.49
    >>Talk to |cRXP_FRIENDLY_Tavernkeep Smitts|r
    .turnin 156 >>Turn in Gather Rot Blossoms
    .target Tavernkeep Smitts
step
    .goto 1431,73.54,46.82
    >>Talk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .turnin 58 >>Turn in The Night Watch
    .target Commander Althea Ebonlocke
step
    .goto 1431,73.78,44.49
    >>Talk to |cRXP_FRIENDLY_Tavernkeep Smitts|r
    .accept 159 >>Accept Juice Delivery
    .target Tavernkeep Smitts
step
    .goto 1431,28.11,31.46
    >>Talk to |cRXP_FRIENDLY_Abercrombie|r
    .turnin 159 >>Turn in Juice Delivery
    .accept 133 >>Accept Ghoulish Effigy
    .target Abercrombie
step
    .goto 1431,22.04,32.62
    >>Collect |cRXP_LOOT_[Ghoul Rib]|r from |cRXP_ENEMY_Flesh Eater|r, |cRXP_ENEMY_Bone Chewer|r, |cRXP_ENEMY_Brain Eater|r
    *Gather 7 Ghoul Ribs and bring them to Abercrombie at his shack.
    .complete 133,1 --Ghoulish Effigy
    .mob Flesh Eater
    .mob Bone Chewer
step
    .goto 1431,28.11,31.46
    >>Talk to |cRXP_FRIENDLY_Abercrombie|r
    .turnin 133 >>Turn in Ghoulish Effigy
    .accept 134 >>Accept Ogre Thieves
    .target Abercrombie
step
    .goto 1431,33.42,76.35
    >>Collect |cRXP_LOOT_[Abercrombie's Crate]|r from |cRXP_PICK_Abercrombie's Crate|r, |cRXP_PICK_Abercrombie's Crate|r
    *Return Abercrombie's Crate to Abercrombie.
    .complete 134,1 --Ogre Thieves
step
    .goto 1431,28.11,31.46
    >>Talk to |cRXP_FRIENDLY_Abercrombie|r
    .turnin 134 >>Turn in Ogre Thieves
    .accept 160 >>Accept Note to the Mayor
    .target Abercrombie
step
    .goto 1431,71.93,46.42
    >>Talk to |cRXP_FRIENDLY_Lord Ello Ebonlocke|r
    .turnin 160 >>Turn in Note to the Mayor
    .accept 251 >>Accept Translate Abercrombie's Note
    .target Lord Ello Ebonlocke
step
    .goto 1431,72.62,47.62
    >>Talk to |cRXP_FRIENDLY_Sirra Von'Indi|r
    .turnin 251 >>Turn in Translate Abercrombie's Note
    .accept 401 >>Accept Wait for Sirra to Finish
    .target Sirra Von'Indi
step
    .goto 1431,72.62,47.62
    >>Talk to |cRXP_FRIENDLY_Sirra Von'Indi|r
    .turnin 401 >>Turn in Wait for Sirra to Finish
    .accept 252 >>Accept Translation to Ello
    .target Sirra Von'Indi
step
    .goto 1431,71.93,46.42
    >>Talk to |cRXP_FRIENDLY_Lord Ello Ebonlocke|r
    .turnin 252 >>Turn in Translation to Ello
    .accept 253 >>Accept Bride of the Embalmer
    .target Lord Ello Ebonlocke
step
    >>Collect |cRXP_LOOT_[The Embalmer's Heart]|r from |cRXP_ENEMY_Eliza|r
    *Find Eliza's grave. Retrieve the Embalmer's Heart from her, then return to Ello Ebonlocke.
    .complete 253,1 --Bride of the Embalmer
    .mob Eliza
step
    .goto 1431,71.93,46.42
    >>Talk to |cRXP_FRIENDLY_Lord Ello Ebonlocke|r
    .turnin 253 >>Turn in Bride of the Embalmer
    .target Lord Ello Ebonlocke
step
    .goto 1453,77.07,30.21
    >>Talk to |cRXP_FRIENDLY_Milton Sheaf|r
    .turnin 337 >>Turn in An Old History Book
    .target Milton Sheaf
step
    .goto 1453,49.93,45.99
    >>Talk to |cRXP_FRIENDLY_Bishop Farthing|r
    .turnin 269 >>Turn in Seeking Wisdom
    .accept 270 >>Accept The Doomed Fleet
    .target Bishop Farthing
step
    .goto 1437,10.58,60.59
    >>Talk to |cRXP_FRIENDLY_Glorin Steelbrow|r
    .turnin 270 >>Turn in The Doomed Fleet
    .accept 321 >>Accept Lightforge Iron
    .target Glorin Steelbrow
step
    .goto 1437,12.11,64.19
    >>Click the |cRXP_PICK_Waterlogged Chest|r
    .turnin 321 >>Turn in Lightforge Iron
    .accept 324 >>Accept The Lost Ingots
step
    .goto 1437,9.52,66.71
    >>Collect |cRXP_LOOT_[Lightforge Ingot]|r from |cRXP_ENEMY_Bluegill Raider|r
    *Gather 5 Lightforge Ingots, then return to Glorin Steelbrow in the Wetlands.
    .complete 324,1 --The Lost Ingots
    .mob Bluegill Raider
step
    .goto 1437,10.58,60.59
    >>Talk to |cRXP_FRIENDLY_Glorin Steelbrow|r
    .turnin 324 >>Turn in The Lost Ingots
    .accept 322 >>Accept Blessed Arm
    .target Glorin Steelbrow
step
    .goto 1453,59.73,33.78
    >>Talk to |cRXP_FRIENDLY_Grimand Elmore|r
    .turnin 322 >>Turn in Blessed Arm
    .target Grimand Elmore
step
    .goto 1433,26.45,57.85
    >>Talk to |cRXP_FRIENDLY_Guard Howe|r
    .accept 128 >>Accept Blackrock Bounty
    .target Guard Howe
step
    .goto 1433,28.41,48.97
    >>Talk to |cRXP_FRIENDLY_Marshal Marris|r
    .accept 19 >>Accept Tharil'zun
    .accept 115 >>Accept Shadow Magic
    .target Marshal Marris
step
    .goto 1433,27.05,48.64
    >>Talk to |cRXP_FRIENDLY_Foreman Oslow|r
    .accept 98386 >>Accept Alther's Mill
    .target Foreman Oslow
step
    .goto 1433,24.53,46.16
    >>Click the |cRXP_PICK_Wanted: Gath'Ilzogg|r
    .accept 169 >>Accept WANTED: Gath'Ilzogg
step
    .goto 1433,25.88,47.27
    >>Talk to |cRXP_FRIENDLY_Verner Osgood|r
    .accept 126 >>Accept Howling in the Hills
    .target Verner Osgood
step
    .goto 1433,24.63,44.26
    >>Talk to |cRXP_FRIENDLY_Bailiff Conacher|r
    .accept 91 >>Accept Solomon's Law
    .target Bailiff Conacher
step
    .goto 1433,21.66,46.44
    >>Click the |cRXP_PICK_Wanted: Lieutenant Fangore|r
    .accept 180 >>Accept WANTED: Lieutenant Fangore
step
    .goto 1433,22.56,21.38
    >>Collect |cRXP_LOOT_[Yowler's Paw]|r from |cRXP_ENEMY_Yowler|r
    *Bring Yowler's Paw to Verner Osgood in Lakeshire.
    .complete 126,1 --Howling in the Hills
    .mob Yowler
step
    .goto 1433,23.3,12.55
    >>Talk to |cRXP_FRIENDLY_Corporal Keeshan|r
    .accept 219 >>Accept Missing In Action
    .target Corporal Keeshan
step
    .goto 1433,24.51,11.22
    >>Kill |cRXP_ENEMY_Blackrock Champion|r
    *Kill 15 Blackrock Champions and Guard Howe in Lakeshire will reward you.
    .complete 128,1 --Blackrock Bounty
    .mob Blackrock Champion
step
    .goto 1433,25.88,47.27
    >>Talk to |cRXP_FRIENDLY_Verner Osgood|r
    .turnin 126 >>Turn in Howling in the Hills
    .target Verner Osgood
step
    .goto 1433,28.41,48.97
    >>Talk to |cRXP_FRIENDLY_Marshal Marris|r
    .turnin 219 >>Turn in Missing In Action
    .target Marshal Marris
step
    .goto 1433,26.45,57.85
    >>Talk to |cRXP_FRIENDLY_Guard Howe|r
    .turnin 128 >>Turn in Blackrock Bounty
    .target Guard Howe
step
    .goto 1433,47.31,42.09
    >>Kill |cRXP_ENEMY_Greater Tarantula|r. Click |cRXP_PICK_Tarantula Egg|r
    *Slay 12 Greater Tarantulas and destroy 6 Tarantula Eggs in Alther's Mill for Foreman Oslow in Redridge.
    .complete 98386,1 --Alther's Mill
    .complete 98386,2 --Alther's Mill
step
    .goto 1433,27.05,48.64
    >>Talk to |cRXP_FRIENDLY_Foreman Oslow|r
    .turnin 98386 >>Turn in Alther's Mill
    .target Foreman Oslow
step
    .goto 1433,64.41,54.04
    >>Collect |cRXP_LOOT_[Tharil'zun's Head]|r from |cRXP_ENEMY_Tharil'zun|r. Collect |cRXP_LOOT_[Midnight Orb]|r from |cRXP_ENEMY_Blackrock Shadowcaster|r. Collect |cRXP_LOOT_[Head of Gath'Ilzogg]|r from |cRXP_ENEMY_Gath'Ilzogg|r
    *Bring Tharil'zun's Head to Marshal Marris in Redridge.
    *Bring 3 Midnight Orbs to Marshal Marris in Lakeshire.
    *Kill Gath'Ilzogg and bring his head to Magistrate Solomon in Lakeshire for the reward.
    .complete 19,1 --Tharil'zun
    .complete 115,1 --Shadow Magic
    .complete 169,1 --WANTED: Gath'Ilzogg
    .mob Tharil'zun
    .mob Blackrock Shadowcaster
    .mob Gath'Ilzogg
step
    .goto 1433,74.93,49.78
    >>Loot |cRXP_LOOT_[Glowing Shadowhide Pendant]|r from |cRXP_ENEMY_Shadowhide Darkweaver|r, |cRXP_ENEMY_Shadowhide Slayer|r, |cRXP_ENEMY_Shadowhide Brute|r, then click it to start the quest
    .accept 178 >>Accept Theocritus' Retrieval
    .use 1962
    .mob Shadowhide Darkweaver
    .mob Shadowhide Slayer
step
    .goto 1433,74.93,49.78
    >>Collect |cRXP_LOOT_[Shadowhide Pendant]|r from |cRXP_ENEMY_Shadowhide Darkweaver|r, |cRXP_ENEMY_Shadowhide Slayer|r, |cRXP_ENEMY_Shadowhide Brute|r
    *Bring 10 Shadowhide Pendants to Bailiff Conacher in the Lakeshire Town Hall.
    .complete 91,1 --Solomon's Law
    .mob Shadowhide Darkweaver
    .mob Shadowhide Slayer
step
    .goto 1433,75.09,37.06
    >>Collect |cRXP_LOOT_[Fangore's Paw]|r from |cRXP_ENEMY_Lieutenant Fangore|r
    *Kill Lieutenant Fangore and return to Magistrate Solomon in Lakeshire with his paw.
    .complete 180,1 --WANTED: Lieutenant Fangore
    .mob Lieutenant Fangore
step
    .goto 1433,28.41,48.97
    >>Talk to |cRXP_FRIENDLY_Marshal Marris|r
    .turnin 19 >>Turn in Tharil'zun
    .turnin 115 >>Turn in Shadow Magic
    .target Marshal Marris
step
    .goto 1433,24.9,44.45
    >>Talk to |cRXP_FRIENDLY_Magistrate Solomon|r
    .turnin 169 >>Turn in WANTED: Gath'Ilzogg
    .turnin 180 >>Turn in WANTED: Lieutenant Fangore
    .target Magistrate Solomon
step
    .goto 1433,24.63,44.26
    >>Talk to |cRXP_FRIENDLY_Bailiff Conacher|r
    .turnin 91 >>Turn in Solomon's Law
    .target Bailiff Conacher
step
    .goto 1429,65.22,69.71
    >>Talk to |cRXP_FRIENDLY_Theocritus|r
    .turnin 178 >>Turn in Theocritus' Retrieval
    .accept 94 >>Accept A Watchful Eye
    .target Theocritus
step
    .goto 1433,79.4,46.83
    >>Click the |cRXP_PICK_Old Lion Statue|r
    .turnin 94 >>Turn in A Watchful Eye
    .accept 248 >>Accept Looking Further
step
    .goto 1433,58.16,49.84
    >>Click the |cRXP_PICK_An Empty Jar|r
    .turnin 248 >>Turn in Looking Further
step
    .goto 1433,79.4,46.83
    >>Click the |cRXP_PICK_Old Lion Statue|r
    .accept 249 >>Accept Morganth
step
    .goto 1433,75.02,49.49
    >>Collect |cRXP_LOOT_[Pendant of Shadow]|r from |cRXP_ENEMY_Morganth|r
    *Defeat Morganth.
    .complete 249,1 --Morganth
    .mob Morganth
step
    .goto 1429,65.22,69.71
    >>Talk to |cRXP_FRIENDLY_Theocritus|r
    .turnin 249 >>Turn in Morganth
    .target Theocritus
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 20-29
#name 27-30 Wetlands
#displayname 27-30 Wetlands
#next 30-31 Hillsbrad/Alterac
step
    .zone 1437 >>Travel to Wetlands
    *How: Fly to Menethil Harbor.
    *Level for this part: 27-30. 47 quests, roughly 4 h 30 min.
step
    #completewith next
    .goto 1437,9.49,59.69,15,0
    >>Talk to |cRXP_FRIENDLY_Shellei Brondir|r if you don't have this flight path yet
    .fp Shellei Brondir >>Get the flight path
    .target Shellei Brondir
step
    .goto 1437,9.86,57.49
    >>Talk to |cRXP_FRIENDLY_Captain Stoutfist|r
    .accept 98221 >>Accept From the Ashes
    .target Captain Stoutfist
step
    .goto 1437,10.9,59.64
    >>Talk to |cRXP_FRIENDLY_First Mate Fitzsimmons|r
    .accept 463 >>Accept The Greenwarden
    .target First Mate Fitzsimmons
step
    .goto 1437,11.8,57.99
    >>Talk to |cRXP_FRIENDLY_Sida|r
    .accept 470 >>Accept Digging Through the Ooze
    .target Sida
step
    .goto 1437,11.88,58.82
    >>Talk to |cRXP_FRIENDLY_Caitlin Grassman|r
    .accept 98282 >>Accept Alchemical Hazards
    .target Caitlin Grassman
step
    .goto 1437,9.86,57.49
    >>Talk to |cRXP_FRIENDLY_Captain Stoutfist|r
    .turnin 98221 >>Turn in From the Ashes
    .target Captain Stoutfist
step
    .goto 1437,8.32,58.57
    >>Talk to |cRXP_FRIENDLY_Karl Boran|r
    .accept 279 >>Accept Claws from the Deep
    .target Karl Boran
step
    .goto 1437,10.1,56.9
    >>Talk to |cRXP_FRIENDLY_Valstag Ironjaw|r
    .accept 98197 >>Accept Spoils of War
    .accept 473 >>Accept Report to Captain Stoutfist
    .target Valstag Ironjaw
step
    .goto 1437,7.92,55.8
    >>Talk to |cRXP_FRIENDLY_Sylessa Duskwhisper|r
    .accept 98208 >>Accept Bloom of the Heavens
    .target Sylessa Duskwhisper
step
    .goto 1437,10.85,55.9
    >>Talk to |cRXP_FRIENDLY_Harlo Barnaby|r
    .accept 472 >>Accept Fall of Dun Modr
    .target Harlo Barnaby
step
    .goto 1437,8.55,55.74
    >>Talk to |cRXP_FRIENDLY_James Halloran|r
    .accept 484 >>Accept Young Crocolisk Skins
    .target James Halloran
step
    .goto 1437,9.86,57.49
    >>Talk to |cRXP_FRIENDLY_Captain Stoutfist|r
    .turnin 473 >>Turn in Report to Captain Stoutfist
    .accept 464 >>Accept War Banners
    .target Captain Stoutfist
step
    .goto 1437,11.5,52.17
    >>Talk to |cRXP_FRIENDLY_Tarrel Rockweaver|r
    .accept 305 >>Accept In Search of The Excavation Team
    .target Tarrel Rockweaver
step
    .goto 1437,8.04,50.56
    >>Collect |cRXP_LOOT_[Khaz Modan Timber]|r from |cRXP_PICK_Khaz Modan Timber|r, |cRXP_PICK_Khaz Modan Timber|r. Collect |cRXP_LOOT_[Khaz Modan Iron]|r from |cRXP_PICK_Khaz Modan Iron|r
    *Recover 6 Khaz Modan Timber and 30 Khaz Modan Iron from Menethil Harbor for Valstag Ironjaw.
    .complete 98197,1 --Spoils of War
    .complete 98197,2 --Spoils of War
step
    .goto 1437,10.1,56.9
    >>Talk to |cRXP_FRIENDLY_Valstag Ironjaw|r
    .turnin 98197 >>Turn in Spoils of War
    .target Valstag Ironjaw
step
    .goto 1437,12.17,63.76
    >>Collect |cRXP_LOOT_[Nord'el]|r from |cRXP_PICK_Nord'el|r
    *Recover Nord'el for Sylessa Duskwhisper in Menethil Harbor.
    .complete 98208,1 --Bloom of the Heavens
step
    .goto 1437,7.92,55.8
    >>Talk to |cRXP_FRIENDLY_Sylessa Duskwhisper|r
    .turnin 98208 >>Turn in Bloom of the Heavens
    .target Sylessa Duskwhisper
step
    .goto 1437,15.26,39.83
    >>Kill |cRXP_ENEMY_Bluegill Murloc|r. Collect |cRXP_LOOT_[Gobbler's Head]|r from |cRXP_ENEMY_Gobbler|r
    *Kill 12 Bluegill Murlocs.
    .complete 279,1 --Claws from the Deep
    .complete 279,2 --Claws from the Deep
    .mob Bluegill Murloc
    .mob Gobbler
step
    .goto 1437,8.32,58.57
    >>Talk to |cRXP_FRIENDLY_Karl Boran|r
    .turnin 279 >>Turn in Claws from the Deep
    .accept 281 >>Accept Reclaiming Goods
    .target Karl Boran
step
    .goto 1437,13.52,41.38
    >>Click the |cRXP_PICK_Damaged Crate|r
    .turnin 281 >>Turn in Reclaiming Goods
    .accept 284 >>Accept The Search Continues
step
    .goto 1437,13.6,38.22
    >>Click the |cRXP_PICK_Sealed Barrel|r
    .turnin 284 >>Turn in The Search Continues
    .accept 285 >>Accept Search More Hovels
step
    .goto 1437,13.94,34.81
    >>Click the |cRXP_PICK_Half-buried Barrel|r
    .turnin 285 >>Turn in Search More Hovels
    .accept 286 >>Accept Return the Statuette
step
    .goto 1437,8.32,58.57
    >>Talk to |cRXP_FRIENDLY_Karl Boran|r
    .turnin 286 >>Turn in Return the Statuette
    .accept 98189 >>Accept Return the Statuette
    .target Karl Boran
step
    .goto 1437,9.86,57.49
    >>Talk to |cRXP_FRIENDLY_Captain Stoutfist|r
    .turnin 98189 >>Turn in Return the Statuette
    .target Captain Stoutfist
step
    .goto 1437,38.91,52.34
    >>Talk to |cRXP_FRIENDLY_Merrin Rockweaver|r
    .turnin 305 >>Turn in In Search of The Excavation Team
    .target Merrin Rockweaver
step
    .goto 1437,38.18,50.89
    >>Talk to |cRXP_FRIENDLY_Ormer Ironbraid|r
    .accept 294 >>Accept Ormer's Revenge
    .target Ormer Ironbraid
step
    .goto 1437,38.81,52.39
    >>Talk to |cRXP_FRIENDLY_Prospector Whelgar|r
    .accept 299 >>Accept Uncovering the Past
    .target Prospector Whelgar
step
    .goto 1437,38.91,52.34
    >>Talk to |cRXP_FRIENDLY_Merrin Rockweaver|r
    .accept 306 >>Accept In Search of The Excavation Team
    .target Merrin Rockweaver
step
    .goto 1437,34.1,49.86
    >>Collect |cRXP_LOOT_[Ados Fragment]|r from |cRXP_PICK_Ancient Relic|r. Collect |cRXP_LOOT_[Modr Fragment]|r from |cRXP_PICK_Ancient Relic|r. Collect |cRXP_LOOT_[Golm Fragment]|r from |cRXP_PICK_Ancient Relic|r. Collect |cRXP_LOOT_[Neru Fragment]|r from |cRXP_PICK_Loose Soil|r
    *Prospector Whelgar wants you to scour the excavation site in search of the 4 missing tablet fragments: Ados, Modr, Golm and Neru.
    .complete 299,1 --Uncovering the Past
    .complete 299,2 --Uncovering the Past
    .complete 299,3 --Uncovering the Past
    .complete 299,4 --Uncovering the Past
step
    .goto 1437,38.81,52.39
    >>Talk to |cRXP_FRIENDLY_Prospector Whelgar|r
    .turnin 299 >>Turn in Uncovering the Past
    .accept 98216 >>Accept Understanding Our Present
    .target Prospector Whelgar
step
    .goto 1437,34.19,47.8
    >>Collect |cRXP_LOOT_[Titanic Keystone]|r from |cRXP_ENEMY_Goaz Warder|r
    *Use the Goaz Stone near the Goaz Warder and bring its Titanic Keystone back to Prospector Whelgar.
    .complete 98216,1 --Understanding Our Present
    .mob Goaz Warder
step
    .goto 1437,38.81,52.39
    >>Talk to |cRXP_FRIENDLY_Prospector Whelgar|r
    .turnin 98216 >>Turn in Understanding Our Present
    .target Prospector Whelgar
step
    .goto 1437,49.36,42.13
    >>Talk to |cRXP_FRIENDLY_Howin Kindfeather|r
    .accept 98245 >>Accept Razormaw Needling
    .accept 98246 >>Accept Trying Times
    .target Howin Kindfeather
step
    .goto 1437,49.92,39.37
    >>Talk to |cRXP_FRIENDLY_Einar Stonegrip|r
    .accept 469 >>Accept Daily Delivery
    .target Einar Stonegrip
step
    .goto 1437,56.37,40.4
    >>Talk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
    .turnin 463 >>Turn in The Greenwarden
    .accept 276 >>Accept Tramping Paws
    .target Rethiel the Greenwarden
step
    .goto 1437,58.86,45.16
    >>Click the |cRXP_PICK_Dragonmaw Armaments|r
    .accept 98293 >>Accept Forced Disarmament
step
    .goto 1437,57.99,45.41
    >>Collect |cRXP_LOOT_[Dragonmaw War Banner]|r from |cRXP_ENEMY_Dragonmaw Infiltrator|r, |cRXP_ENEMY_Dragonmaw Soulbinder|r, |cRXP_ENEMY_Dragonmaw Reclaimer|r. Collect |cRXP_LOOT_[Dragonmaw Armaments]|r from |cRXP_PICK_Dragonmaw Armaments|r, |cRXP_PICK_Dragonmaw Armaments|r
    *Bring 8 Dragonmaw War Banners to Captain Stoutfist.
    *Collect 30 Dragonmaw Armaments in Dragonmaw Retreat, then bring them to Captain Stoutfist in Menethil Keep.
    .complete 464,1 --War Banners
    .complete 98293,1 --Forced Disarmament
    .mob Dragonmaw Infiltrator
    .mob Dragonmaw Soulbinder
step
    .goto 1437,53.51,54.59
    >>Click the |cRXP_PICK_Tattered Spellbook|r
    .accept 98223 >>Accept Old Habits
step
    .goto 1437,51.56,62.13
    >>Collect |cRXP_LOOT_[Unruptured Stalker Gland]|r from |cRXP_ENEMY_Leech Stalker|r, |cRXP_ENEMY_Cave Stalker|r, |cRXP_ENEMY_Leech Stalker Corpse|r
    *Collect an Unruptured Stalker Gland from Thelgen Rock for Caitlin Grassman in Menethil Harbor.
    .complete 98282,1 --Alchemical Hazards
    .mob Leech Stalker
    .mob Cave Stalker
step
    .goto 1437,60.33,73.77
    >>Collect |cRXP_LOOT_[Young Crocolisk Skin]|r from |cRXP_ENEMY_Young Wetlands Crocolisk|r. Kill |cRXP_ENEMY_Mosshide Gnoll|r. Kill |cRXP_ENEMY_Mosshide Mongrel|r
    *Obtain 4 Young Crocolisk Skins for James Halloran in Menethil Harbor.
    *Kill 15 Mosshide Gnolls and 10 Mosshide Mongrels, then return to Rethiel the Greenwarden in the Wetlands.
    .complete 484,1 --Young Crocolisk Skins
    .complete 276,1 --Tramping Paws
    .complete 276,2 --Tramping Paws
    .mob Young Wetlands Crocolisk
    .mob Mosshide Gnoll
    .mob Mosshide Mongrel
step
    .goto 1437,56.37,40.4
    >>Talk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
    .turnin 276 >>Turn in Tramping Paws
    .accept 277 >>Accept Fire Taboo
    .target Rethiel the Greenwarden
step
    .goto 1437,69.16,34.96
    >>Collect |cRXP_LOOT_[Razormaw Incisor]|r from |cRXP_ENEMY_Highland Razormaw|r, |cRXP_ENEMY_Elder Razormaw|r. Collect |cRXP_LOOT_[Perfect Razormaw Egg]|r from |cRXP_PICK_Razormaw Eggs|r, |cRXP_PICK_Razormaw Egg|r
    *Collect 10 Razormaw Incisors for Howin Kindfeather.
    *Gather 12 Perfect Razormaw Eggs for Howin Kindfeather.
    .complete 98245,1 --Razormaw Needling
    .complete 98246,1 --Trying Times
    .mob Highland Razormaw
    .mob Elder Razormaw
step
    .goto 1437,49.36,42.13
    >>Talk to |cRXP_FRIENDLY_Howin Kindfeather|r
    .turnin 98245 >>Turn in Razormaw Needling
    .turnin 98246 >>Turn in Trying Times
    .target Howin Kindfeather
step
    .goto 1437,35.43,31.55
    >>Collect |cRXP_LOOT_[Crude Flint]|r from |cRXP_ENEMY_Gnoll Overseer|r, |cRXP_ENEMY_Mosshide Fenrunner|r, |cRXP_ENEMY_Mosshide Trapper|r
    *Bring Rethiel the Greenwarden 9 Crude Flints.
    .complete 277,1 --Fire Taboo
    .mob Gnoll Overseer
    .mob Mosshide Fenrunner
step
    .goto 1437,44.31,24.7
    >>Collect |cRXP_LOOT_[Sida's Bag]|r from |cRXP_ENEMY_Crimson Ooze|r, |cRXP_ENEMY_Black Ooze|r, |cRXP_ENEMY_Monstrous Ooze|r
    *One of the oozes at Ironbeard's Tomb has Sida's bag, retrieve it and bring it back to her in Menethil Harbor.
    .complete 470,1 --Digging Through the Ooze
    .mob Crimson Ooze
    .mob Black Ooze
step
    .goto 1437,49.8,18.26
    >>Talk to |cRXP_FRIENDLY_Longbraid the Grim|r
    .turnin 472 >>Turn in Fall of Dun Modr
    .accept 304 >>Accept A Grim Task
    .target Longbraid the Grim
step
    .goto 1437,50.05,18.17
    >>Talk to |cRXP_FRIENDLY_Ashlan Stonesmirk|r
    .accept 88756 >>Accept Bring Back a Bang
    .target Ashlan Stonesmirk
step
    .goto 1437,49.9,18.24
    >>Talk to |cRXP_FRIENDLY_Rhag Garmason|r
    .accept 631 >>Accept The Thandol Span
    .target Rhag Garmason
step
    .goto 1437,45.67,16.67
    >>Talk to |cRXP_FRIENDLY_Captive Fire Elemental|r
    .accept 87491 >>Accept Spark of Freedom
    .target Captive Fire Elemental
step
    .goto 1437,49.85,18.09
    >>Talk to |cRXP_FRIENDLY_Roggo Harlbarrow|r
    .turnin 87491 >>Turn in Spark of Freedom
    .target Roggo Harlbarrow
step
    .goto 1437,49.93,12.55
    >>Talk to |cRXP_FRIENDLY_Comar Villard|r
    .accept 87318 >>Accept Hearts of the Lost
    .target Comar Villard
step
    .goto 1437,51.28,7.95
    >>Click the |cRXP_PICK_Ebenezer Rustlocke's Corpse|r
    .turnin 631 >>Turn in The Thandol Span
step
    .goto 1437,51.54,9.01
    >>Talk to |cRXP_FRIENDLY_Essene Villard|r
    .turnin 87318 >>Turn in Hearts of the Lost
    .accept 88757 >>Accept Accessories of the Lost
    .target Essene Villard
step
    .goto 1437,51.28,7.95
    >>Click the |cRXP_PICK_Ebenezer Rustlocke's Corpse|r
    .accept 632 >>Accept The Thandol Span
step
    .goto 1437,51.42,8.24
    >>Collect |cRXP_LOOT_[Essene's Necklace]|r. Collect |cRXP_LOOT_[Essene's Spellbook]|r. Collect |cRXP_LOOT_[Essene's Waterskin]|r
    *Bring back Essene's Necklace, Essene's Spellbook, and Essene's Waterskin.
    .complete 88757,1 --Accessories of the Lost
    .complete 88757,2 --Accessories of the Lost
    .complete 88757,3 --Accessories of the Lost
step
    .goto 1437,51.54,9.01
    >>Talk to |cRXP_FRIENDLY_Essene Villard|r
    .turnin 88757 >>Turn in Accessories of the Lost
    .target Essene Villard
step
    .goto 1437,49.9,18.24
    >>Talk to |cRXP_FRIENDLY_Rhag Garmason|r
    .turnin 632 >>Turn in The Thandol Span
    .accept 633 >>Accept The Thandol Span
    .target Rhag Garmason
step
    .goto 1437,59.83,24.67
    >>Collect |cRXP_LOOT_[Ear of Balgaras]|r from |cRXP_ENEMY_Balgaras the Foul|r. Collect |cRXP_LOOT_[Stolen Explosives]|r from |cRXP_PICK_Stolen Explosives|r
    *Kill Balgaras the Foul and bring his ear to Longbraid the Grim outside of Dun Modr.
    *Retrieve 3 Stolen Explosives from the Dark Iron Dwarf camps.
    .complete 304,1 --A Grim Task
    .complete 88756,1 --Bring Back a Bang
    .mob Balgaras the Foul
step
    .goto 1437,49.8,18.26
    >>Talk to |cRXP_FRIENDLY_Longbraid the Grim|r
    .turnin 304 >>Turn in A Grim Task
    .target Longbraid the Grim
step
    .goto 1437,50.05,18.17
    >>Talk to |cRXP_FRIENDLY_Ashlan Stonesmirk|r
    .turnin 88756 >>Turn in Bring Back a Bang
    .target Ashlan Stonesmirk
step
    .goto 1437,56.37,40.4
    >>Talk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
    .turnin 277 >>Turn in Fire Taboo
    .accept 275 >>Accept Blisters on The Land
    .target Rethiel the Greenwarden
step
    .goto 1437,25.33,35.52
    >>Kill |cRXP_ENEMY_Fen Creeper|r
    *Kill 8 Fen Creepers, then return to Rethiel the Greenwarden in the Wetlands.
    .complete 275,1 --Blisters on The Land
    .mob Fen Creeper
step
    .goto 1437,24.16,48.27
    >>Kill |cRXP_ENEMY_Mottled Raptor|r. Kill |cRXP_ENEMY_Mottled Screecher|r
    *Ormer Ironbraid at the Whelgar Excavation Site wants you to kill 10 Mottled Screechers and 10 Mottled Raptors.
    .complete 294,1 --Ormer's Revenge
    .complete 294,2 --Ormer's Revenge
    .mob Mottled Raptor
    .mob Mottled Screecher
step
    .goto 1437,11.5,52.17
    >>Talk to |cRXP_FRIENDLY_Tarrel Rockweaver|r
    .turnin 306 >>Turn in In Search of The Excavation Team
    .target Tarrel Rockweaver
step
    .goto 1437,8.55,55.74
    >>Talk to |cRXP_FRIENDLY_James Halloran|r
    .turnin 484 >>Turn in Young Crocolisk Skins
    .turnin 469 >>Turn in Daily Delivery
    .target James Halloran
step
    .goto 1437,9.86,57.49
    >>Talk to |cRXP_FRIENDLY_Captain Stoutfist|r
    .turnin 464 >>Turn in War Banners
    .turnin 98293 >>Turn in Forced Disarmament
    .turnin 98223 >>Turn in Old Habits
    .accept 465 >>Accept Nek'rosh's Gambit
    .target Captain Stoutfist
step
    .goto 1437,8.55,55.74
    >>Talk to |cRXP_FRIENDLY_James Halloran|r
    .accept 471 >>Accept Apprentice's Duties
    .target James Halloran
step
    .goto 1437,11.8,57.99
    >>Talk to |cRXP_FRIENDLY_Sida|r
    .turnin 470 >>Turn in Digging Through the Ooze
    .target Sida
step
    .goto 1437,11.88,58.82
    >>Talk to |cRXP_FRIENDLY_Caitlin Grassman|r
    .turnin 98282 >>Turn in Alchemical Hazards
    .target Caitlin Grassman
step
    .goto 1437,38.18,50.89
    >>Talk to |cRXP_FRIENDLY_Ormer Ironbraid|r
    .turnin 294 >>Turn in Ormer's Revenge
    .accept 295 >>Accept Ormer's Revenge
    .target Ormer Ironbraid
step
    .goto 1437,35.9,49.44
    >>Kill |cRXP_ENEMY_Mottled Scytheclaw|r. Kill |cRXP_ENEMY_Mottled Razormaw|r
    *Ormer Ironbraid wants you to kill 10 Mottled Scytheclaw raptors and 10 Mottled Razormaw raptors then return to him at the Whelgar Excavation Site.
    .complete 295,1 --Ormer's Revenge
    .complete 295,2 --Ormer's Revenge
    .mob Mottled Scytheclaw
    .mob Mottled Razormaw
step
    .goto 1437,38.18,50.89
    >>Talk to |cRXP_FRIENDLY_Ormer Ironbraid|r
    .turnin 295 >>Turn in Ormer's Revenge
    .accept 296 >>Accept Ormer's Revenge
    .target Ormer Ironbraid
step
    .goto 1437,33.26,51.51
    >>Collect |cRXP_LOOT_[Sarltooth's Talon]|r from |cRXP_ENEMY_Sarltooth|r
    *Ormer Ironbraid at the Whelgar Excavation Site wants you to kill Sarltooth and return to him with one of his talons once the task is fulfilled.
    .complete 296,1 --Ormer's Revenge
    .mob Sarltooth
step
    .goto 1437,38.18,50.89
    >>Talk to |cRXP_FRIENDLY_Ormer Ironbraid|r
    .turnin 296 >>Turn in Ormer's Revenge
    .target Ormer Ironbraid
step
    .goto 1437,47.46,47.01
    >>Click the |cRXP_PICK_Dragonmaw Catapult|r
    .turnin 465 >>Turn in Nek'rosh's Gambit
    .accept 474 >>Accept Defeat Nek'rosh
step
    .goto 1437,56.37,40.4
    >>Talk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
    .turnin 275 >>Turn in Blisters on The Land
    .accept 98283 >>Accept Carnage
    .target Rethiel the Greenwarden
step
    .goto 1437,55.9,28.3
    >>Collect |cRXP_LOOT_[Malignant Rotclaw Flesh]|r from |cRXP_ENEMY_Maddened Rotclaw|r
    *Bring Carnage's Head to Rethiel the Greenwarden in The Green Belt.
    .complete 98283,1 --Carnage
    .mob Maddened Rotclaw
step
    .goto 1437,67.35,29.11
    >>Collect |cRXP_LOOT_[Carnage's Head]|r from |cRXP_ENEMY_Carnage|r
    *Bring Carnage's Head to Rethiel the Greenwarden in The Green Belt.
    .complete 98283,2 --Carnage
    .mob Carnage
step
    .goto 1437,56.37,40.4
    >>Talk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
    .turnin 98283 >>Turn in Carnage
    .target Rethiel the Greenwarden
step
    .goto 1437,53.51,54.67
    >>Collect |cRXP_LOOT_[Nek'rosh's Head]|r from |cRXP_ENEMY_Chieftain Nek'rosh|r
    *Kill Chieftain Nek'rosh
    .complete 474,1 --Defeat Nek'rosh
    .mob Chieftain Nek'rosh
step
    .goto 1437,9.86,57.49
    >>Talk to |cRXP_FRIENDLY_Captain Stoutfist|r
    .turnin 474 >>Turn in Defeat Nek'rosh
    .target Captain Stoutfist
step
    .goto 1437,19.03,24.79
    >>Collect |cRXP_LOOT_[Giant Crocolisk Skin]|r from |cRXP_ENEMY_Giant Wetlands Crocolisk|r
    *Collect 6 Giant Crocolisk Skins and bring them to James Halloran in Menethil Harbor.
    .complete 471,1 --Apprentice's Duties
    .mob Giant Wetlands Crocolisk
step
    .goto 1437,8.55,55.74
    >>Talk to |cRXP_FRIENDLY_James Halloran|r
    .turnin 471 >>Turn in Apprentice's Duties
    .accept 98072 >>Accept Crocs of the Sky
    .target James Halloran
step
    .goto 1437,66.5,48.51
    >>Collect |cRXP_LOOT_[Pristine Crimson Scale]|r from |cRXP_ENEMY_Red Whelp|r, |cRXP_ENEMY_Lost Whelp|r, |cRXP_ENEMY_Flamesnorting Whelp|r
    *Collect 8 Pristine Crimson Scales and bring them to James Halloran in Menethil Harbor.
    .complete 98072,1 --Crocs of the Sky
    .mob Red Whelp
    .mob Lost Whelp
step
    .goto 1437,8.55,55.74
    >>Talk to |cRXP_FRIENDLY_James Halloran|r
    .turnin 98072 >>Turn in Crocs of the Sky
    .accept 98240 >>Accept Crimson Crate Delivery
    .target James Halloran
step
    .goto 1437,49.36,42.13
    >>Talk to |cRXP_FRIENDLY_Howin Kindfeather|r
    .turnin 98240 >>Turn in Crimson Crate Delivery
    .target Howin Kindfeather
step
    .goto 1417,43.24,92.64
    >>Talk to |cRXP_FRIENDLY_Foggy MacKreel|r
    .accept 647 >>Accept MacKreel's Moonshine
    .target Foggy MacKreel
step
    .goto 1417,48.79,88.05
    >>Click |cRXP_PICK_Cache of Explosives|r
    *Destroy the cache of explosives.
    .complete 633,1 --The Thandol Span
step
    .goto 1437,49.9,18.24
    >>Talk to |cRXP_FRIENDLY_Rhag Garmason|r
    .turnin 633 >>Turn in The Thandol Span
    .accept 634 >>Accept Plea To The Alliance
    .target Rhag Garmason
step
    .goto 1424,52.13,58.74
    >>Talk to |cRXP_FRIENDLY_Brewmeister Bilger|r
    .turnin 647 >>Turn in MacKreel's Moonshine
    .target Brewmeister Bilger
step
    .goto 1417,45.83,47.56
    >>Talk to |cRXP_FRIENDLY_Captain Nials|r
    .turnin 634 >>Turn in Plea To The Alliance
    .target Captain Nials
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 30-39
#name 30-31 Hillsbrad/Alterac
#displayname 30-31 Hillsbrad/Alterac
#next 31-33 Stranglethorn Vale
step
    .zone 1424 >>Travel to Hillsbrad
    *How: Boat Menethil Harbor -> Southshore (the new Menethil, Southshore, Auberdine loop).
    *Level for this part: 30-31. 14 quests, roughly 1 h 30 min.
step
    #completewith next
    .goto 1424,49.34,52.27,15,0
    >>Talk to |cRXP_FRIENDLY_Darla Harris|r if you don't have this flight path yet
    .fp Darla Harris >>Get the flight path
    .target Darla Harris
step
    .goto 1424,46.43,50.2
    >>Talk to |cRXP_FRIENDLY_Captain McManus|r
    .accept 98059 >>Accept Hillsbrad's Hoard
    .target Captain McManus
step
    .goto 1424,46.43,50.2
    >>Talk to |cRXP_FRIENDLY_Captain McManus|r
    .turnin 98059 >>Turn in Hillsbrad's Hoard
    .target Captain McManus
step
    .goto 1424,52.42,55.96
    >>Talk to |cRXP_FRIENDLY_Darren Malvew|r
    .accept 564 >>Accept Costly Menace
    .target Darren Malvew
step
    .goto 1424,51.89,58.68
    >>Talk to |cRXP_FRIENDLY_Chef Jessen|r
    .accept 555 >>Accept Soothing Turtle Bisque
    .target Chef Jessen
step
    .goto 1424,52.13,58.74
    >>Talk to |cRXP_FRIENDLY_Brewmeister Bilger|r
    .accept 98071 >>Accept Brewer's Trade
    .target Brewmeister Bilger
step
    .goto 1424,51.46,58.39
    >>Talk to |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
    .accept 536 >>Accept Down the Coast
    .target Lieutenant Farren Orinelle
step
    .goto 1424,52.13,58.74
    >>Talk to |cRXP_FRIENDLY_Brewmeister Bilger|r
    .turnin 98071 >>Turn in Brewer's Trade
    .target Brewmeister Bilger
step
    .goto 1424,41.11,67.95
    >>Kill |cRXP_ENEMY_Torn Fin Tidehunter|r. Kill |cRXP_ENEMY_Torn Fin Oracle|r
    *Kill 10 Torn Fin Tidehunters and 10 Torn Fin Oracles for Lieutenant Farren Orinelle in Southshore.
    .complete 536,1 --Down the Coast
    .complete 536,2 --Down the Coast
    .mob Torn Fin Tidehunter
    .mob Torn Fin Oracle
step
    .goto 1424,51.46,58.39
    >>Talk to |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
    .turnin 536 >>Turn in Down the Coast
    .accept 559 >>Accept Farren's Proof
    .target Lieutenant Farren Orinelle
step
    .goto 1424,27.9,72.49
    >>Collect |cRXP_LOOT_[Murloc Head]|r from |cRXP_ENEMY_Torn Fin Muckdweller|r, |cRXP_ENEMY_Torn Fin Coastrunner|r, |cRXP_ENEMY_Torn Fin Oracle|r
    *Collect 10 Murloc Heads from the murlocs on the Western Strand for Lieutenant Farren Orinelle in Southshore.
    .complete 559,1 --Farren's Proof
    .mob Torn Fin Muckdweller
    .mob Torn Fin Coastrunner
step
    .goto 1424,51.46,58.39
    >>Talk to |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
    .turnin 559 >>Turn in Farren's Proof
    .accept 560 >>Accept Farren's Proof
    .target Lieutenant Farren Orinelle
step
    .goto 1424,49.47,58.73
    >>Talk to |cRXP_FRIENDLY_Marshal Redpath|r
    .turnin 560 >>Turn in Farren's Proof
    .accept 561 >>Accept Farren's Proof
    .target Marshal Redpath
step
    .goto 1424,51.46,58.39
    >>Talk to |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
    .turnin 561 >>Turn in Farren's Proof
    .accept 562 >>Accept Stormwind Ho!
    .target Lieutenant Farren Orinelle
step
    .goto 1424,58.16,70.01
    >>Kill |cRXP_ENEMY_Daggerspine Shorehunter|r. Kill |cRXP_ENEMY_Daggerspine Siren|r
    *Kill 10 Daggerspine Shorehunters and 10 Daggerspine Sirens for Lieutenant Farren Orinelle in Southshore.
    .complete 562,1 --Stormwind Ho!
    .complete 562,2 --Stormwind Ho!
    .mob Daggerspine Shorehunter
    .mob Daggerspine Siren
step
    .goto 1424,51.46,58.39
    >>Talk to |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
    .turnin 562 >>Turn in Stormwind Ho!
    .accept 563 >>Accept Reassignment
    .target Lieutenant Farren Orinelle
step
    .goto 1424,68.11,28.94
    >>Collect |cRXP_LOOT_[Turtle Meat]|r from |cRXP_ENEMY_Snapjaw|r, |cRXP_ENEMY_Saltwater Snapjaw|r, |cRXP_ENEMY_Sparkleshell Tortoise|r
    *Bring 10 pieces of Turtle Meat and some Soothing Spices to Chef Jessen in Southshore.
    .complete 555,1 --Soothing Turtle Bisque
    .mob Snapjaw
    .mob Saltwater Snapjaw
step
    .goto 1424,38.8,24.62
    >>Kill |cRXP_ENEMY_Mountain Lion|r
    *Darren Malvew of Southshore wants you to kill 8 Mountain Lions and 10 Hulking Mountain Lions.
    .complete 564,1 --Costly Menace
    .mob Mountain Lion
step
    .goto 1424,48.94,55.03
    >>Buy |cRXP_LOOT_[Soothing Spices]|r from |cRXP_FRIENDLY_Micha Yance|r
    *Bring 10 pieces of Turtle Meat and some Soothing Spices to Chef Jessen in Southshore.
    .complete 555,2 --Soothing Turtle Bisque
step
    .goto 1424,51.89,58.68
    >>Talk to |cRXP_FRIENDLY_Chef Jessen|r
    .turnin 555 >>Turn in Soothing Turtle Bisque
    .target Chef Jessen
step
    .goto 1453,75.83,36.72
    >>Talk to |cRXP_FRIENDLY_Major Samuelson|r
    .turnin 563 >>Turn in Reassignment
    .target Major Samuelson
step
    .goto 1416,58.32,67.92
    >>Click the |cRXP_PICK_Syndicate Documents|r
    .accept 510 >>Accept Foreboding Plans
    .accept 511 >>Accept Encrypted Letter
step
    .goto 1416,52.76,30.65
    >>Kill |cRXP_ENEMY_Hulking Mountain Lion|r
    *Darren Malvew of Southshore wants you to kill 8 Mountain Lions and 10 Hulking Mountain Lions.
    .complete 564,2 --Costly Menace
    .mob Hulking Mountain Lion
step
    .goto 1424,52.42,55.96
    >>Talk to |cRXP_FRIENDLY_Darren Malvew|r
    .turnin 564 >>Turn in Costly Menace
    .target Darren Malvew
step
    .goto 1424,50.57,57.09
    >>Talk to |cRXP_FRIENDLY_Loremaster Dibbs|r
    .turnin 511 >>Turn in Encrypted Letter
    .accept 514 >>Accept Letter to Stormpike
    .target Loremaster Dibbs
step
    .goto 1424,48.14,59.11
    >>Talk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
    .turnin 510 >>Turn in Foreboding Plans
    .target Magistrate Henry Maleb
step
    .goto 1455,74.64,11.74
    >>Talk to |cRXP_FRIENDLY_Prospector Stormpike|r
    .turnin 514 >>Turn in Letter to Stormpike
    .accept 525 >>Accept Further Mysteries
    .target Prospector Stormpike
step
    .goto 1424,48.14,59.11
    >>Talk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
    .turnin 525 >>Turn in Further Mysteries
    .target Magistrate Henry Maleb
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 30-39
#name 31-33 Stranglethorn Vale
#displayname 31-33 Stranglethorn Vale
#next 33-34 Swamp of Sorrows/Badlands
step
    .zone 1434 >>Travel to Stranglethorn Vale
    *How: In Kalimdor? Boat Theramore -> Menethil Harbor first. Then fly to Rebel Camp or Booty Bay.
    *Level for this part: 31-33. 32 quests, roughly 3 h.
step
    #completewith next
    .goto 1434,27.53,77.79,15,0
    >>Talk to |cRXP_FRIENDLY_Gyll|r if you don't have this flight path yet
    .fp Gyll >>Get the flight path
    .target Gyll
step
    .goto 1434,27,77.13
    >>Talk to |cRXP_FRIENDLY_Kebok|r
    .accept 189 >>Accept Bloodscalp Ears
    .accept 213 >>Accept Hostile Takeover
    .target Kebok
step
    .goto 1434,28.29,77.59
    >>Talk to |cRXP_FRIENDLY_Drizzlik|r
    .accept 575 >>Accept Supply and Demand
    .target Drizzlik
step
    .goto 1434,26.94,77.21
    >>Talk to |cRXP_FRIENDLY_Krazek|r
    .accept 198 >>Accept Supplies to Private Thorsen
    .accept 616 >>Accept The Haunted Isle
    .target Krazek
step
    .goto 1434,27.12,77.21
    >>Talk to |cRXP_FRIENDLY_Crank Fizzlebub|r
    .accept 605 >>Accept Singing Blue Shards
    .target Crank Fizzlebub
step
    .goto 1434,27.23,76.87
    >>Talk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .turnin 616 >>Turn in The Haunted Isle
    .accept 578 >>Accept The Stone of the Tides
    .target Baron Revilgaz
step
    .goto 1434,39.28,47.1
    >>Collect |cRXP_LOOT_[Singing Crystal Shard]|r from |cRXP_ENEMY_Stone Maw Basilisk|r, |cRXP_ENEMY_Crystal Spine Basilisk|r, |cRXP_ENEMY_Cold Eye Basilisk|r
    *Bring 10 Singing Crystal Shards to Crank Fizzlebub.
    .complete 605,1 --Singing Blue Shards
    .mob Stone Maw Basilisk
    .mob Crystal Spine Basilisk
step
    .goto 1434,50.98,35.21
    >>Talk to |cRXP_FRIENDLY_Gnaz Blunderflame|r
    .accept 97420 >>Accept Reduce, Reuse, Reconcile
    .target Gnaz Blunderflame
step
    .goto 1434,46.75,19.21
    >>Collect |cRXP_LOOT_[Tumbled Crystal]|r from |cRXP_ENEMY_Venture Co. Geologist|r. Collect |cRXP_LOOT_[Drum of Crude Oil]|r from |cRXP_ENEMY_Venture Co. Mechanic|r
    *Retrieve 8 Tumbled Crystals and return them to Kebok in Booty Bay.
    *Acquire 4 Drums of Crude Oil from the Venture Co. operations at Lake Nazferiti, then return to Knaz Blunderflame in Stranglethorn Vale.
    .complete 213,1 --Hostile Takeover
    .complete 97420,1 --Reduce, Reuse, Reconcile
    .mob Venture Co. Geologist
    .mob Venture Co. Mechanic
step
    .goto 1434,44.27,7.9
    >>Talk to |cRXP_FRIENDLY_Wendel Mathers|r
    .accept 97047 >>Accept The Cook in the Cage
    .target Wendel Mathers
step
    .goto 1434,37.98,3.41
    >>Talk to |cRXP_FRIENDLY_Private Thorsen|r
    .turnin 198 >>Turn in Supplies to Private Thorsen
    .target Private Thorsen
step
    .goto 1434,38.02,3.33
    >>Talk to |cRXP_FRIENDLY_Sergeant Yohwa|r
    .accept 203 >>Accept The Second Rebellion
    .accept 204 >>Accept Bad Medicine
    .target Sergeant Yohwa
step
    .goto 1434,37.74,3.3
    >>Talk to |cRXP_FRIENDLY_Corporal Kaleb|r
    .accept 210 >>Accept Krazek's Cookery
    .target Corporal Kaleb
step
    .goto 1434,37.98,3.41
    >>Talk to |cRXP_FRIENDLY_Private Thorsen|r
    .accept 215 >>Accept Jungle Secrets
    .target Private Thorsen
step
    .goto 1434,38.04,3.01
    >>Talk to |cRXP_FRIENDLY_Lieutenant Doren|r
    .turnin 215 >>Turn in Jungle Secrets
    .accept 200 >>Accept Bookie Herod
    .target Lieutenant Doren
step
    .goto 1434,43.67,9.37
    >>Click the |cRXP_PICK_Bookie Herod's Records|r
    .turnin 200 >>Turn in Bookie Herod
    .accept 328 >>Accept The Hidden Key
step
    .goto 1434,44.51,10
    >>Collect |cRXP_LOOT_[Large River Crocolisk Skin]|r from |cRXP_ENEMY_River Crocolisk|r. Collect |cRXP_LOOT_[Compound Cage Key]|r from |cRXP_ENEMY_Colonel Kurzen|r, |cRXP_ENEMY_Kurzen Elite|r, |cRXP_ENEMY_Kurzen Subchief|r. Collect |cRXP_LOOT_[Kurzen Fighter's Uniform]|r from |cRXP_PICK_Kurzen Supply Crate|r. Kill |cRXP_ENEMY_Kurzen Jungle Fighter|r. Collect |cRXP_LOOT_[Jungle Remedy]|r from |cRXP_ENEMY_Kurzen Jungle Fighter|r, |cRXP_ENEMY_Kurzen Medicine Man|r, |cRXP_ENEMY_Kurzen Headshrinker|r. Collect |cRXP_LOOT_[Venom Fern Extract]|r from |cRXP_PICK_Kurzen Supplies|r, |cRXP_PICK_Kurzen Supplies|r
    *Bring 2 Large River Crocolisk Skins to Drizzlik in Booty Bay.
    *Find a key to Wendel's cage, and a disguise for him to sneak out, within the Kurzen compound.
    *Kill 15 Kurzen Jungle Fighters.
    *Bring 7 Jungle Remedies and 1 Venom Fern Extract to Sergeant Yohwa at the Rebel Camp.
    .complete 575,1 --Supply and Demand
    .complete 97047,1 --The Cook in the Cage
    .complete 97047,2 --The Cook in the Cage
    .complete 203,1 --The Second Rebellion
    .complete 204,1 --Bad Medicine
    .complete 204,2 --Bad Medicine
    .mob River Crocolisk
    .mob Colonel Kurzen
    .mob Kurzen Elite
    .mob Kurzen Jungle Fighter
    .mob Kurzen Medicine Man
step
    .goto 1434,44.27,7.9
    >>Talk to |cRXP_FRIENDLY_Wendel Mathers|r
    .turnin 97047 >>Turn in The Cook in the Cage
    .accept 97048 >>Accept Returning to Port
    .target Wendel Mathers
step
    .goto 1434,49.62,7.56
    >>Click the |cRXP_PICK_Bookie Herod's Strongbox|r
    .turnin 328 >>Turn in The Hidden Key
    .accept 329 >>Accept The Spy Revealed!
step
    .goto 1434,38.02,3.33
    >>Talk to |cRXP_FRIENDLY_Sergeant Yohwa|r
    .turnin 203 >>Turn in The Second Rebellion
    .turnin 204 >>Turn in Bad Medicine
    .target Sergeant Yohwa
step
    .goto 1434,38.04,3.01
    >>Talk to |cRXP_FRIENDLY_Lieutenant Doren|r
    .turnin 329 >>Turn in The Spy Revealed!
    .target Lieutenant Doren
step
    .goto 1434,38.02,3.33
    >>Talk to |cRXP_FRIENDLY_Sergeant Yohwa|r
    .accept 574 >>Accept Special Forces
    .target Sergeant Yohwa
step
    .goto 1434,38.04,3.01
    >>Talk to |cRXP_FRIENDLY_Lieutenant Doren|r
    .accept 330 >>Accept Patrol Schedules
    .target Lieutenant Doren
step
    .goto 1434,37.83,3.56
    >>Talk to |cRXP_FRIENDLY_Brother Nimetz|r
    .accept 207 >>Accept Kurzen's Mystery
    .target Brother Nimetz
step
    .goto 1434,37.66,3.39
    >>Talk to |cRXP_FRIENDLY_Corporal Sethman|r
    .turnin 330 >>Turn in Patrol Schedules
    .accept 331 >>Accept Report to Doren
    .target Corporal Sethman
step
    .goto 1434,38.04,3.01
    >>Talk to |cRXP_FRIENDLY_Lieutenant Doren|r
    .turnin 331 >>Turn in Report to Doren
    .target Lieutenant Doren
step
    .goto 1434,35.66,10.53
    >>Talk to |cRXP_FRIENDLY_Barnil Stonepot|r
    .accept 583 >>Accept Welcome to the Jungle
    .target Barnil Stonepot
step
    .goto 1434,35.66,10.81
    >>Talk to |cRXP_FRIENDLY_Hemet Nesingwary|r
    .turnin 583 >>Turn in Welcome to the Jungle
    .target Hemet Nesingwary
step
    .goto 1434,31.5,12.86
    >>Click the |cRXP_PICK_Thoroughly Scavenged Supplies|r
    .accept 97328 >>Accept Anything of Value
step
    .goto 1434,25.66,12.14
    >>Collect |cRXP_LOOT_[Bloodscalp Ear]|r from |cRXP_ENEMY_Bloodscalp Warrior|r, |cRXP_ENEMY_Bloodscalp Scout|r, |cRXP_ENEMY_Bloodscalp Hunter|r. Collect |cRXP_LOOT_[The First Troll Legend]|r from |cRXP_PICK_Moon Over the Vale|r. Collect |cRXP_LOOT_[The Third Troll Legend]|r from |cRXP_PICK_Fall of Gurubashi|r. Collect |cRXP_LOOT_[The Fourth Troll Legend]|r from |cRXP_PICK_The Emperor's Tomb|r. Collect |cRXP_LOOT_[Stolen Shipment]|r from |cRXP_PICK_Stolen Shipment|r
    *Acquire 15 Bloodscalp Ears and return them to Kebok in Booty Bay.
    *Find the 4 tablets and bring their legends back to Brother Nimetz.
    *Recover 8 Stolen Shipments from the Ruins of Zul'Kunda in Stranglethorn Vale and return your haul to someone in Booty Bay.
    .complete 189,1 --Bloodscalp Ears
    .complete 207,1 --Kurzen's Mystery
    .complete 207,3 --Kurzen's Mystery
    .complete 207,4 --Kurzen's Mystery
    .complete 97328,1 --Anything of Value
    .mob Bloodscalp Warrior
    .mob Bloodscalp Scout
step
    .goto 1434,23.46,12.79
    >>Talk to |cRXP_FRIENDLY_Zimmix Sputterspark|r
    .accept 97329 >>Accept Where's the Key?
    .target Zimmix Sputterspark
step
    .goto 1434,24.7,12.3
    >>Collect |cRXP_LOOT_[Primitive Key]|r from |cRXP_ENEMY_Bloodscalp Scout|r, |cRXP_ENEMY_Bloodscalp Hunter|r, |cRXP_ENEMY_Bloodscalp Berserker|r
    *Bring the Primitive Key obtained from the trolls at the Ruins of Zul'kunda in Stranglethorn Vale to Zimmix Sputterspark.
    .complete 97329,1 --Where's the Key?
    .mob Bloodscalp Scout
    .mob Bloodscalp Hunter
step
    .goto 1434,23.46,12.79
    >>Talk to |cRXP_FRIENDLY_Zimmix Sputterspark|r
    .turnin 97329 >>Turn in Where's the Key?
    .accept 97331 >>Accept Zimmix's Great Escape
    .target Zimmix Sputterspark
step
    .goto 1434,26.9,11.4
    >>Escort Zimmix Sputterspark to safety
    *Escort Zimmix Sputterspark away from the Ruins of Zul'Kunda then tell Wharfmaster Lozgil in Booty Bay of your successful rescue.
    .complete 97331,1 --Zimmix's Great Escape
step
    .goto 1434,24.82,23.03
    >>Locate the haunted island. Collect |cRXP_LOOT_[The Second Troll Legend]|r from |cRXP_PICK_Gri'lek the Wanderer|r, |cRXP_PICK_Gri'lek the Wanderer|r
    *Find the haunted island for Baron Revilgaz in Booty Bay.
    *Find the 4 tablets and bring their legends back to Brother Nimetz.
    .complete 578,1 --The Stone of the Tides
    .complete 207,2 --Kurzen's Mystery
step
    .goto 1434,37.83,3.56
    >>Talk to |cRXP_FRIENDLY_Brother Nimetz|r
    .turnin 207 >>Turn in Kurzen's Mystery
    .target Brother Nimetz
step
    .goto 1434,44.15,7.91
    >>Kill |cRXP_ENEMY_Kurzen Commando|r. Kill |cRXP_ENEMY_Kurzen Headshrinker|r
    *Kill 10 Kurzen Commandoes and 6 Kurzen Headshrinkers.
    .complete 574,1 --Special Forces
    .complete 574,2 --Special Forces
    .mob Kurzen Commando
    .mob Kurzen Headshrinker
step
    .goto 1434,38.04,3.01
    >>Talk to |cRXP_FRIENDLY_Lieutenant Doren|r
    .turnin 574 >>Turn in Special Forces
    .target Lieutenant Doren
step
    .goto 1434,50.98,35.21
    >>Talk to |cRXP_FRIENDLY_Gnaz Blunderflame|r
    .turnin 97420 >>Turn in Reduce, Reuse, Reconcile
    .target Gnaz Blunderflame
step
    .goto 1434,26.35,73.56
    >>Talk to |cRXP_FRIENDLY_Wharfmaster Lozgil|r
    .turnin 97328 >>Turn in Anything of Value
    .turnin 97331 >>Turn in Zimmix's Great Escape
    .target Wharfmaster Lozgil
step
    .goto 1434,27,77.13
    >>Talk to |cRXP_FRIENDLY_Kebok|r
    .turnin 189 >>Turn in Bloodscalp Ears
    .turnin 213 >>Turn in Hostile Takeover
    .target Kebok
step
    .goto 1434,28.29,77.59
    >>Talk to |cRXP_FRIENDLY_Drizzlik|r
    .turnin 575 >>Turn in Supply and Demand
    .target Drizzlik
step
    .goto 1434,27.12,77.21
    >>Talk to |cRXP_FRIENDLY_Crank Fizzlebub|r
    .turnin 605 >>Turn in Singing Blue Shards
    .target Crank Fizzlebub
step
    .goto 1434,27.23,76.87
    >>Talk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .turnin 578 >>Turn in The Stone of the Tides
    .target Baron Revilgaz
step
    .goto 1434,26.94,77.21
    >>Talk to |cRXP_FRIENDLY_Krazek|r
    .turnin 210 >>Turn in Krazek's Cookery
    .target Krazek
step
    .goto 1434,27.69,76.66
    >>Talk to |cRXP_FRIENDLY_Captain Aransas|r
    .turnin 97048 >>Turn in Returning to Port
    .target Captain Aransas
step
    .goto 1434,28.29,77.59
    >>Talk to |cRXP_FRIENDLY_Drizzlik|r
    .accept 577 >>Accept Some Assembly Required
    .target Drizzlik
step
    .goto 1434,27.23,76.87
    >>Talk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .accept 601 >>Accept Water Elementals
    .target Baron Revilgaz
step
    .goto 1434,26.94,77.21
    >>Talk to |cRXP_FRIENDLY_Krazek|r
    .accept 627 >>Accept Favor for Krazek
    .target Krazek
step
    .goto 1434,19.9,24.49
    >>Collect |cRXP_LOOT_[Water Elemental Bracers]|r from |cRXP_ENEMY_Lesser Water Elemental|r
    *Acquire 6 Water Elemental Bracers for Baron Revilgaz in Booty Bay.
    .complete 601,1 --Water Elementals
    .mob Lesser Water Elemental
step
    .goto 1434,41.42,20.72
    >>Collect |cRXP_LOOT_[Snapjaw Crocolisk Skin]|r from |cRXP_ENEMY_Snapjaw Crocolisk|r
    *Bring 5 Snapjaw Crocolisks Skins to Drizzlik in Booty Bay.
    .complete 577,1 --Some Assembly Required
    .mob Snapjaw Crocolisk
step
    .goto 1434,28.29,77.59
    >>Talk to |cRXP_FRIENDLY_Drizzlik|r
    .turnin 577 >>Turn in Some Assembly Required
    .target Drizzlik
step
    .goto 1434,27.23,76.87
    >>Talk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .turnin 601 >>Turn in Water Elementals
    .accept 602 >>Accept Magical Analysis
    .target Baron Revilgaz
step
    .goto 1434,28.29,77.59
    >>Talk to |cRXP_FRIENDLY_Drizzlik|r
    .accept 628 >>Accept Excelsior
    .target Drizzlik
step
    .goto 1434,29.32,22.28
    >>Collect |cRXP_LOOT_[Elder Crocolisk Skin]|r from |cRXP_ENEMY_Elder Saltwater Crocolisk|r
    *Bring an Elder Crocolisk Skin to Drizzlik in Booty Bay.
    .complete 628,1 --Excelsior
    .mob Elder Saltwater Crocolisk
step
    .goto 1434,28.29,77.59
    >>Talk to |cRXP_FRIENDLY_Drizzlik|r
    .turnin 628 >>Turn in Excelsior
    .target Drizzlik
step
    .goto 1416,18.84,78.49
    >>Talk to |cRXP_FRIENDLY_Archmage Ansirem Runeweaver|r
    .turnin 602 >>Turn in Magical Analysis
    .accept 603 >>Accept Ansirem's Key
    .target Archmage Ansirem Runeweaver
step
    .goto 1434,27.28,77.53
    >>Talk to |cRXP_FRIENDLY_Catelyn the Blade|r
    .turnin 603 >>Turn in Ansirem's Key
    .target Catelyn the Blade
step
    .goto 1417,83.06,33.03
    >>Collect |cRXP_LOOT_[Lesser Bloodstone Ore]|r from |cRXP_PICK_Lesser Bloodstone Deposit|r
    *Bring 4 loads of Lesser Bloodstone Ore to Krazek in Booty Bay.
    .complete 627,1 --Favor for Krazek
step
    .goto 1434,26.94,77.21
    >>Talk to |cRXP_FRIENDLY_Krazek|r
    .turnin 627 >>Turn in Favor for Krazek
    .accept 622 >>Accept Return to Corporal Kaleb
    .target Krazek
step
    .goto 1434,37.74,3.3
    >>Talk to |cRXP_FRIENDLY_Corporal Kaleb|r
    .turnin 622 >>Turn in Return to Corporal Kaleb
    .target Corporal Kaleb
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 30-39
#name 33-34 Swamp of Sorrows/Badlands
#displayname 33-34 Swamp of Sorrows/Badlands
#next 34-35 Arathi Highlands
step
    .zone 1435 >>Travel to Swamp of Sorrows
    *How: Ride out of the Riverglades into the Swamp of Sorrows or the Badlands.
    *Level for this part: 33-34. 22 quests, roughly 3 h 35 min.
step
    .goto 1418,42.39,52.93
    >>Talk to |cRXP_FRIENDLY_Rigglefuzz|r
    .accept 705 >>Accept Pearl Diving
    .accept 703 >>Accept Barbecued Buzzard Wings
    .target Rigglefuzz
step
    .goto 1418,53.8,43.3
    >>Talk to |cRXP_FRIENDLY_Sigrun Ironhew|r
    .accept 718 >>Accept Mirages
    .target Sigrun Ironhew
step
    .goto 1418,53.42,43.39
    >>Talk to |cRXP_FRIENDLY_Prospector Ryedol|r
    .accept 719 >>Accept A Dwarf and His Tools
    .target Prospector Ryedol
step
    .goto 1418,53.03,33.94
    >>Click the |cRXP_PICK_Crumpled Map|r
    .accept 720 >>Accept A Sign of Hope
step
    .goto 1418,53.42,43.39
    >>Talk to |cRXP_FRIENDLY_Prospector Ryedol|r
    .turnin 720 >>Turn in A Sign of Hope
    .target Prospector Ryedol
step
    .goto 1418,63.27,54.12
    >>Collect |cRXP_LOOT_[Buzzard Wing]|r from |cRXP_ENEMY_Carrion Vulture|r, |cRXP_ENEMY_Young Mesa Buzzard|r, |cRXP_ENEMY_Mesa Buzzard|r
    *Bring 4 Buzzard Wings to Rigglefuzz.
    .complete 703,1 --Barbecued Buzzard Wings
    .mob Carrion Vulture
    .mob Young Mesa Buzzard
step
    .goto 1418,42.39,52.93
    >>Talk to |cRXP_FRIENDLY_Rigglefuzz|r
    .turnin 703 >>Turn in Barbecued Buzzard Wings
    .target Rigglefuzz
step
    .goto 1418,25.95,44.87
    >>Talk to |cRXP_FRIENDLY_Lotwil Veriatus|r
    .accept 710 >>Accept Study of the Elements: Rock
    .accept 713 >>Accept Coolant Heads Prevail
    .target Lotwil Veriatus
step
    >>Collect |cRXP_LOOT_[Small Stone Shard]|r from |cRXP_ENEMY_Earth Elemental|r
    *Find 10 Small Stone Shards and bring them to Lotwil Veriatus in the Badlands.
    .complete 710,1 --Study of the Elements: Rock
    .mob Earth Elemental
step
    .goto 1418,25.95,44.87
    >>Talk to |cRXP_FRIENDLY_Lotwil Veriatus|r
    .turnin 710 >>Turn in Study of the Elements: Rock
    .accept 711 >>Accept Study of the Elements: Rock
    .target Lotwil Veriatus
step
    .goto 1418,41.35,29.62
    >>Collect |cRXP_LOOT_[Ryedol's Lucky Pick]|r from |cRXP_ENEMY_Shadowforge Excavator|r, |cRXP_ENEMY_Shadowforge Darkweaver|r, |cRXP_ENEMY_Shadowforge Chanter|r
    *Find Ryedol's Lucky Pick and return it to Prospector Ryedol south of Hammertoe's Dig Site.
    .complete 719,1 --A Dwarf and His Tools
    .mob Shadowforge Excavator
    .mob Shadowforge Darkweaver
step
    .goto 1418,53.42,43.39
    >>Talk to |cRXP_FRIENDLY_Prospector Ryedol|r
    .turnin 719 >>Turn in A Dwarf and His Tools
    .target Prospector Ryedol
step
    .goto 1418,66.92,23.45
    >>Collect |cRXP_LOOT_[Supply Crate]|r from |cRXP_PICK_Excavation Supply Crate|r
    *Retrieve the Supply Crate for Sigrun Ironhew.
    .complete 718,1 --Mirages
step
    .goto 1418,54.63,12.87
    >>Talk to |cRXP_FRIENDLY_Dorgaron|r
    .accept 97617 >>Accept Safety Checks
    .target Dorgaron
step
    .goto 1418,53.8,43.3
    >>Talk to |cRXP_FRIENDLY_Sigrun Ironhew|r
    .turnin 718 >>Turn in Mirages
    .accept 733 >>Accept Scrounging
    .target Sigrun Ironhew
step
    .goto 1418,51.35,69.72
    >>Collect |cRXP_LOOT_[Unstudied Artifact]|r from |cRXP_ENEMY_Shadowforge Tunneler|r, |cRXP_ENEMY_Shadowforge Darkweaver|r, |cRXP_ENEMY_Stonevault Bonesnapper|r. Collect |cRXP_LOOT_[Pristine Mattock]|r from |cRXP_PICK_Pristine Mattock|r
    *Recover 8 Unstudied Artifacts, an Explorers' League Mining Helmet, and a Pristine Mattock and bring them to Dorgaron at the border of Loch Modan and the Badlands.
    .complete 97617,1 --Safety Checks
    .complete 97617,3 --Safety Checks
    .mob Shadowforge Tunneler
    .mob Shadowforge Darkweaver
step
    .goto 1418,40.51,78.29
    >>Collect |cRXP_LOOT_[Large Stone Slab]|r from |cRXP_ENEMY_Rock Elemental|r
    *Bring 3 Large Stone Slabs to Lotwil Veriatus in the Badlands.
    .complete 711,1 --Study of the Elements: Rock
    .mob Rock Elemental
step
    .goto 1418,10.59,77.63
    >>Loot |cRXP_LOOT_[Primitive Drawing]|r from |cRXP_ENEMY_Dustbelcher Ogre|r, |cRXP_ENEMY_Dustbelcher Brute|r, |cRXP_ENEMY_Dustbelcher Wyrmhunter|r, then click it to start the quest
    .accept 78823 >>Accept Terror of the Desert Skies
    .use 211269
    .mob Dustbelcher Ogre
    .mob Dustbelcher Brute
step
    .goto 1418,10.59,77.63
    >>Collect |cRXP_LOOT_[Scrap Metal]|r from |cRXP_ENEMY_Dustbelcher Ogre|r, |cRXP_ENEMY_Dustbelcher Brute|r, |cRXP_ENEMY_Dustbelcher Wyrmhunter|r. Collect |cRXP_LOOT_[Primitive Drawing]|r from |cRXP_ENEMY_Dustbelcher Ogre|r, |cRXP_ENEMY_Dustbelcher Brute|r, |cRXP_ENEMY_Dustbelcher Wyrmhunter|r
    *Get 7 pieces of Scrap Metal for Sigrun.
    *Bring the Primitive Drawing to Hemet Nesingwary in Stranglethorn Vale.
    .complete 733,1 --Scrounging
    .complete 78823,1 --Terror of the Desert Skies
    .mob Dustbelcher Ogre
    .mob Dustbelcher Brute
step
    .goto 1418,25.95,44.87
    >>Talk to |cRXP_FRIENDLY_Lotwil Veriatus|r
    .turnin 711 >>Turn in Study of the Elements: Rock
    .target Lotwil Veriatus
step
    .goto 1418,53.8,43.3
    >>Talk to |cRXP_FRIENDLY_Sigrun Ironhew|r
    .turnin 733 >>Turn in Scrounging
    .target Sigrun Ironhew
step
    .goto 1418,53.08,34.47
    >>Collect |cRXP_LOOT_[Explorers' League Mining Helmet]|r from |cRXP_PICK_Explorers' League Supplies|r
    *Recover 8 Unstudied Artifacts, an Explorers' League Mining Helmet, and a Pristine Mattock and bring them to Dorgaron at the border of Loch Modan and the Badlands.
    .complete 97617,2 --Safety Checks
step
    .goto 1418,54.63,12.87
    >>Talk to |cRXP_FRIENDLY_Dorgaron|r
    .turnin 97617 >>Turn in Safety Checks
    .target Dorgaron
step
    .goto 1434,35.66,10.81
    >>Talk to |cRXP_FRIENDLY_Hemet Nesingwary|r
    .turnin 78823 >>Turn in Terror of the Desert Skies
    .accept 78830 >>Accept Terror of the Desert Skies
    .target Hemet Nesingwary
step
    .goto 1434,27.22,25.48
    >>Collect |cRXP_LOOT_[Blue Pearl]|r from |cRXP_ENEMY_Saltscale Warrior|r, |cRXP_ENEMY_Saltscale Oracle|r, |cRXP_ENEMY_Saltscale Tide Lord|r
    *Bring 9 Blue Pearls to Rigglefuzz in the Badlands.
    .complete 705,1 --Pearl Diving
    .mob Saltscale Warrior
    .mob Saltscale Oracle
step
    .goto 1418,42.39,52.93
    >>Talk to |cRXP_FRIENDLY_Rigglefuzz|r
    .turnin 705 >>Turn in Pearl Diving
    .target Rigglefuzz
step
    .goto 1418,20.93,67.97
    >>Collect |cRXP_LOOT_[Crimson Trophy Quill]|r from |cRXP_ENEMY_Gharrik|r
    *Get a Crimson Trophy Quill from Gharrik in the Badlands. Then, return to Hemet Nesingwary in Stranglethorn Vale.
    .complete 78830,1 --Terror of the Desert Skies
    .mob Gharrik
step
    .goto 1434,35.66,10.81
    >>Talk to |cRXP_FRIENDLY_Hemet Nesingwary|r
    .turnin 78830 >>Turn in Terror of the Desert Skies
    .target Hemet Nesingwary
step
    .goto 1435,22.31,50.41
    >>Talk to |cRXP_FRIENDLY_Father Tuttle|r
    .accept 93585 >>Accept This Light of Mine
    .target Father Tuttle
step
    .goto 1435,26.74,59.83
    >>Talk to |cRXP_FRIENDLY_Watcher Biggs|r
    .accept 1396 >>Accept Encroaching Wildlife
    .target Watcher Biggs
step
    .goto 1435,30.44,38.94
    >>Kill |cRXP_ENEMY_Young Sawtooth Crocolisk|r
    *Kill 8 Young Sawtooth Crocolisks, 10 Sorrow Spinners and 10 Swamp Jaguars then return to Watcher Biggs in the Swamp of Sorrows.
    .complete 1396,1 --Encroaching Wildlife
    .mob Young Sawtooth Crocolisk
step
    .goto 1435,25.98,31.4
    >>Talk to |cRXP_FRIENDLY_Magtoor|r
    .turnin 93585 >>Turn in This Light of Mine
    .accept 1389 >>Accept Draenethyst Crystals
    .target Magtoor
step
    .goto 1435,24.72,32.64
    >>Talk to |cRXP_FRIENDLY_Karana|r
    .accept 93429 >>Accept Blood of My Blood
    .target Karana
step
    .goto 1435,26.51,30.35
    >>Talk to |cRXP_FRIENDLY_Pelluk|r
    .accept 93430 >>Accept Taking the Bait Back
    .target Pelluk
step
    .goto 1435,24.72,32.64
    >>Talk to |cRXP_FRIENDLY_Karana|r
    .turnin 93429 >>Turn in Blood of My Blood
    .target Karana
step
    .goto 1435,37.47,32.08
    >>Kill |cRXP_ENEMY_Sorrow Spinner|r
    *Kill 8 Young Sawtooth Crocolisks, 10 Sorrow Spinners and 10 Swamp Jaguars then return to Watcher Biggs in the Swamp of Sorrows.
    .complete 1396,2 --Encroaching Wildlife
    .mob Sorrow Spinner
step
    .goto 1435,39.86,41
    >>Kill |cRXP_ENEMY_Swamp Jaguar|r
    *Kill 8 Young Sawtooth Crocolisks, 10 Sorrow Spinners and 10 Swamp Jaguars then return to Watcher Biggs in the Swamp of Sorrows.
    .complete 1396,3 --Encroaching Wildlife
    .mob Swamp Jaguar
step
    .goto 1435,55.7,34.37
    >>Loot |cRXP_LOOT_[Noboru's Cudgel]|r from |cRXP_ENEMY_Noboru the Cudgel|r, then click it to start the quest
    .accept 1392 >>Accept Noboru the Cudgel
    .use 6196
    .mob Noboru the Cudgel
step
    .goto 1435,53.73,30.65
    >>Collect |cRXP_LOOT_[Lucky Lure]|r from |cRXP_ENEMY_Lost One Fisherman|r
    *Find the Lost One Fisherman who stole Pelluk's lure, and take it back.
    .complete 93430,1 --Taking the Bait Back
    .mob Lost One Fisherman
step
    .goto 1435,60.17,22.18
    >>Collect |cRXP_LOOT_[Draenethyst Crystal]|r from |cRXP_PICK_Draenethyst Crystals|r
    *Bring 6 Draenethyst crystals to Magtoor at The Harborage in the Swamp of Sorrows.
    .complete 1389,1 --Draenethyst Crystals
step
    .goto 1435,65.47,18.16
    >>Talk to |cRXP_FRIENDLY_Galen Goodward|r
    .accept 1393 >>Accept Galen's Escape
    .target Galen Goodward
step
    .goto 1435,47.81,39.76
    >>Click the |cRXP_PICK_Galen's Strongbox|r
    .turnin 1393 >>Turn in Galen's Escape
step
    .goto 1435,25.98,31.4
    >>Talk to |cRXP_FRIENDLY_Magtoor|r
    .turnin 1389 >>Turn in Draenethyst Crystals
    .turnin 1392 >>Turn in Noboru the Cudgel
    .target Magtoor
step
    .goto 1435,26.51,30.35
    >>Talk to |cRXP_FRIENDLY_Pelluk|r
    .turnin 93430 >>Turn in Taking the Bait Back
    .target Pelluk
step
    .goto 1435,25.98,31.4
    >>Talk to |cRXP_FRIENDLY_Magtoor|r
    .accept 93464 >>Accept The Visiting Mage
    .target Magtoor
step
    .goto 1435,26.74,59.83
    >>Talk to |cRXP_FRIENDLY_Watcher Biggs|r
    .turnin 1396 >>Turn in Encroaching Wildlife
    .accept 1421 >>Accept The Lost Caravan
    .target Watcher Biggs
step
    .goto 1435,64.46,18.3
    >>Collect |cRXP_LOOT_[Wizards' Reagents]|r from |cRXP_PICK_Caravan Chest|r
    *Find the Caravan Chest in the Fallow Sanctuary, obtain the Wizards' Reagents and bring to Watcher Biggs.
    .complete 1421,1 --The Lost Caravan
step
    .goto 1435,26.74,59.83
    >>Talk to |cRXP_FRIENDLY_Watcher Biggs|r
    .turnin 1421 >>Turn in The Lost Caravan
    .target Watcher Biggs
step
    .goto 1443,38.88,27.16
    >>Talk to |cRXP_FRIENDLY_Azore Aldamort|r
    .turnin 93464 >>Turn in The Visiting Mage
    .target Azore Aldamort
step
    .goto 1448,46.3,90.62
    >>Collect |cRXP_LOOT_[Frost Oil]|r from |cRXP_ENEMY_Vilebranch Witch Doctor|r, |cRXP_ENEMY_Tar Creeper|r, |cRXP_ENEMY_Deadwood Gardener|r
    *Find Frost Oil and bring it to Lotwil Veriatus in Badlands.
    .complete 713,1 --Coolant Heads Prevail
    .mob Vilebranch Witch Doctor
    .mob Tar Creeper
step
    .goto 1418,25.95,44.87
    >>Talk to |cRXP_FRIENDLY_Lotwil Veriatus|r
    .turnin 713 >>Turn in Coolant Heads Prevail
    .accept 714 >>Accept Gyro... What?
    .target Lotwil Veriatus
step
    .goto 1434,43.04,19.31
    >>Collect |cRXP_LOOT_[Gyrochronatom]|r from |cRXP_ENEMY_Venture Co. Tinkerer|r, |cRXP_ENEMY_Venture Co. Mechanic|r, |cRXP_ENEMY_Advanced Target Dummy|r
    *Bring a Gyrochronatom to Lotwil Veriatus in the Badlands.
    .complete 714,1 --Gyro... What?
    .mob Venture Co. Tinkerer
    .mob Venture Co. Mechanic
step
    .goto 1418,25.95,44.87
    >>Talk to |cRXP_FRIENDLY_Lotwil Veriatus|r
    .turnin 714 >>Turn in Gyro... What?
    .target Lotwil Veriatus
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 30-39
#name 34-35 Arathi Highlands
#displayname 34-35 Arathi Highlands
#next 35-37 Desolace
step
    #completewith next
    +|cRXP_WARN_On the way: lead-in quests in Stormwind that open quests in Arathi Highlands|r
step
    .goto 1453,50.5,87.47
    >>Talk to |cRXP_FRIENDLY_Archmage Malin|r
    .accept 690 >>Accept Malin's Request
    .target Archmage Malin
step
    .zone 1417 >>Travel to Arathi Highlands
    *How: Ride east from Southshore over Thoradin's Wall to Refuge Pointe.
    *Level for this part: 34-35. 15 quests, roughly 2 h 25 min.
step
    #completewith next
    .goto 1417,45.73,46.1,15,0
    >>Talk to |cRXP_FRIENDLY_Cedrik Prose|r if you don't have this flight path yet
    .fp Cedrik Prose >>Get the flight path
    .target Cedrik Prose
step
    .goto 1417,46.65,47.01
    >>Talk to |cRXP_FRIENDLY_Skuerto|r
    .turnin 690 >>Turn in Malin's Request
    .target Skuerto
step
    .goto 1417,45.83,47.56
    >>Talk to |cRXP_FRIENDLY_Captain Nials|r
    .accept 681 >>Accept Northfold Manor
    .target Captain Nials
step
    .goto 1417,46.04,47.76
    >>Click the |cRXP_PICK_Wanted Board|r
    .accept 684 >>Accept WANTED: Marez Cowl
step
    .goto 1417,46.2,47.75
    >>Talk to |cRXP_FRIENDLY_Apprentice Kryten|r
    .accept 691 >>Accept Worth Its Weight in Gold
    .target Apprentice Kryten
step
    .goto 1417,28.98,59.68
    >>Talk to |cRXP_FRIENDLY_Caretaker Alaric|r
    .accept 92872 >>Accept Dutiful Steps
    .target Caretaker Alaric
step
    .goto 1417,28.98,59.68
    >>Talk to |cRXP_FRIENDLY_Caretaker Alaric|r
    .turnin 92872 >>Turn in Dutiful Steps
    .target Caretaker Alaric
step
    .goto 1417,29.62,62.97
    >>Collect |cRXP_LOOT_[Marez's Head]|r from |cRXP_ENEMY_Marez Cowl|r
    *Bring Marez's head to Captain Nials at Refuge Pointe.
    .complete 684,1 --WANTED: Marez Cowl
    .mob Marez Cowl
step
    .goto 1417,31.78,82.68
    >>Talk to |cRXP_FRIENDLY_Lolo the Lookout|r
    .accept 663 >>Accept Land Ho!
    .target Lolo the Lookout
step
    .goto 1417,32.28,81.38
    >>Talk to |cRXP_FRIENDLY_Shakes O'Breen|r
    .turnin 663 >>Turn in Land Ho!
    .target Shakes O'Breen
step
    .goto 1417,45.83,47.56
    >>Talk to |cRXP_FRIENDLY_Captain Nials|r
    .turnin 684 >>Turn in WANTED: Marez Cowl
    .target Captain Nials
step
    .goto 1417,62.5,33.73
    >>Click the |cRXP_PICK_Shards of Myzrael|r
    .accept 642 >>Accept The Princess Trapped
step
    .goto 1417,83.4,35.42
    >>Collect |cRXP_LOOT_[Mote of Myzrael]|r from |cRXP_ENEMY_Drywhisker Kobold|r, |cRXP_ENEMY_Drywhisker Surveyor|r, |cRXP_ENEMY_Drywhisker Digger|r
    *Gather 12 Motes of Myzrael, then bring them to the Iridescent Shards in Drywhisker Gorge.
    .complete 642,1 --The Princess Trapped
    .mob Drywhisker Kobold
    .mob Drywhisker Surveyor
step
    .goto 1417,84.31,30.95
    >>Click the |cRXP_PICK_Iridescent Shards|r
    .turnin 642 >>Turn in The Princess Trapped
    .accept 651 >>Accept Stones of Binding
step
    .goto 1417,69.86,77.92
    >>Collect |cRXP_LOOT_[Witherbark Tusk]|r from |cRXP_ENEMY_Witherbark Troll|r, |cRXP_ENEMY_Witherbark Shadowcaster|r, |cRXP_ENEMY_Witherbark Axe Thrower|r. Collect |cRXP_LOOT_[Shadow Hunter Knife]|r from |cRXP_ENEMY_Witherbark Shadow Hunter|r
    *Find 10 Witherbark Tusks, 4 Witherbark Medicine Pouches and a Shadow Hunter Knife for Apprentice Kryten at Refuge Pointe.
    .complete 691,1 --Worth Its Weight in Gold
    .complete 691,3 --Worth Its Weight in Gold
    .mob Witherbark Troll
    .mob Witherbark Shadowcaster
    .mob Witherbark Shadow Hunter
step
    .goto 1417,69.34,68.69
    >>Collect |cRXP_LOOT_[Witherbark Medicine Pouch]|r from |cRXP_ENEMY_Witherbark Witch Doctor|r
    *Find 10 Witherbark Tusks, 4 Witherbark Medicine Pouches and a Shadow Hunter Knife for Apprentice Kryten at Refuge Pointe.
    .complete 691,2 --Worth Its Weight in Gold
    .mob Witherbark Witch Doctor
step
    .goto 1417,46.2,47.75
    >>Talk to |cRXP_FRIENDLY_Apprentice Kryten|r
    .turnin 691 >>Turn in Worth Its Weight in Gold
    .target Apprentice Kryten
step
    .goto 1417,46.65,47.01
    >>Talk to |cRXP_FRIENDLY_Skuerto|r
    .accept 693 >>Accept Wand over Fist
    .target Skuerto
step
    .goto 1417,30.37,28.87
    >>Kill |cRXP_ENEMY_Syndicate Highwayman|r. Kill |cRXP_ENEMY_Syndicate Mercenary|r. Collect |cRXP_LOOT_[Burning Key]|r from |cRXP_ENEMY_Burning Exile|r
    *Kill 10 Syndicate Highwaymen and 6 Syndicate Mercenaries.
    *Gather the Burning Key, the Cresting Key and the Thundering Key from the Stone of West Binding, the Stone of East Binding and the Stone of Outer Binding.
    .complete 681,1 --Northfold Manor
    .complete 681,2 --Northfold Manor
    .complete 651,1 --Stones of Binding
    .mob Syndicate Highwayman
    .mob Syndicate Mercenary
    .mob Burning Exile
step
    .goto 1417,45.83,47.56
    >>Talk to |cRXP_FRIENDLY_Captain Nials|r
    .turnin 681 >>Turn in Northfold Manor
    .accept 682 >>Accept Stromgarde Badges
    .target Captain Nials
step
    .goto 1417,25.39,63.4
    >>Collect |cRXP_LOOT_[Stromgarde Badge]|r from |cRXP_ENEMY_Syndicate Prowler|r, |cRXP_ENEMY_Syndicate Conjuror|r, |cRXP_ENEMY_Syndicate Magus|r
    *Bring 7 Stromgarde Badges to Captain Nials at Refuge Pointe.
    .complete 682,1 --Stromgarde Badges
    .mob Syndicate Prowler
    .mob Syndicate Conjuror
step
    .goto 1417,45.83,47.56
    >>Talk to |cRXP_FRIENDLY_Captain Nials|r
    .turnin 682 >>Turn in Stromgarde Badges
    .target Captain Nials
step
    .goto 1417,66.7,29.72
    >>Collect |cRXP_LOOT_[Cresting Key]|r from |cRXP_PICK_Stone of East Binding|r
    *Gather the Burning Key, the Cresting Key and the Thundering Key from the Stone of West Binding, the Stone of East Binding and the Stone of Outer Binding.
    .complete 651,2 --Stones of Binding
step
    .goto 1417,52.04,50.73
    >>Collect |cRXP_LOOT_[Thundering Key]|r from |cRXP_PICK_Stone of Outer Binding|r
    *Gather the Burning Key, the Cresting Key and the Thundering Key from the Stone of West Binding, the Stone of East Binding and the Stone of Outer Binding.
    .complete 651,3 --Stones of Binding
step
    .goto 1417,36.23,57.38
    >>Click the |cRXP_PICK_Stone of Inner Binding|r
    .turnin 651 >>Turn in Stones of Binding
step
    .goto 1417,54.75,81.87
    >>Collect |cRXP_LOOT_[Trelane's Wand of Invocation]|r from |cRXP_ENEMY_Kor'gresh Coldrage|r
    *Find Trelane's Wand of Invocation and return it to Skuerto at Refuge Pointe.
    .complete 693,1 --Wand over Fist
    .mob Kor'gresh Coldrage
step
    .goto 1417,46.65,47.01
    >>Talk to |cRXP_FRIENDLY_Skuerto|r
    .turnin 693 >>Turn in Wand over Fist
    .accept 694 >>Accept Trelane's Defenses
    .target Skuerto
step
    .goto 1417,18.68,66.54
    >>Collect |cRXP_LOOT_[Azure Agate]|r from |cRXP_ENEMY_Boulderfist Shaman|r
    *Find an Azure Agate and bring it to Apprentice Kryten at Refuge Pointe.
    .complete 694,1 --Trelane's Defenses
    .mob Boulderfist Shaman
step
    .goto 1417,46.2,47.75
    >>Talk to |cRXP_FRIENDLY_Apprentice Kryten|r
    .turnin 694 >>Turn in Trelane's Defenses
    .accept 695 >>Accept An Apprentice's Enchantment
    .target Apprentice Kryten
step
    .goto 1417,46.65,47.01
    >>Talk to |cRXP_FRIENDLY_Skuerto|r
    .turnin 695 >>Turn in An Apprentice's Enchantment
    .accept 696 >>Accept Attack on the Tower
    .target Skuerto
step
    .goto 1417,18.18,68.14
    >>Collect |cRXP_LOOT_[Trelane's Phylactery]|r from |cRXP_PICK_Trelane's Footlocker|r. Collect |cRXP_LOOT_[Trelane's Orb]|r from |cRXP_PICK_Trelane's Lockbox|r. Collect |cRXP_LOOT_[Trelane's Ember Agate]|r from |cRXP_PICK_Trelane's Chest|r
    *Find Trelane's Phylactery, Trelane's Orb, and Trelane's Ember Agate, and return them to Skuerto at Refuge Pointe.
    .complete 696,1 --Attack on the Tower
    .complete 696,2 --Attack on the Tower
    .complete 696,3 --Attack on the Tower
step
    .goto 1417,46.65,47.01
    >>Talk to |cRXP_FRIENDLY_Skuerto|r
    .turnin 696 >>Turn in Attack on the Tower
    .accept 697 >>Accept Malin's Request
    .target Skuerto
step
    .goto 1453,50.5,87.47
    >>Talk to |cRXP_FRIENDLY_Archmage Malin|r
    .turnin 697 >>Turn in Malin's Request
    .target Archmage Malin
step
    .goto 1434,22.26,13.08
    >>Loot |cRXP_LOOT_[Pendant of Myzrael]|r from |cRXP_ENEMY_Bloodscalp Warrior|r, |cRXP_ENEMY_Bloodscalp Scout|r, |cRXP_ENEMY_Bloodscalp Hunter|r, then click it to start the quest
    .accept 635 >>Accept Crystal in the Mountains
    .use 4614
    .mob Bloodscalp Warrior
    .mob Bloodscalp Scout
step
    .goto 1417,62.5,33.73
    >>Click the |cRXP_PICK_Shards of Myzrael|r
    .turnin 635 >>Turn in Crystal in the Mountains
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 30-39
#name 35-37 Desolace
#displayname 35-37 Desolace
#next 37-41 Riverglades
step
    .zone 1443 >>Travel to Desolace
    *How: Fly to Nijel's Point.
    *Level for this part: 35-37. 24 quests, roughly 2 h 10 min.
step
    #completewith next
    .goto 1443,64.66,10.54,15,0
    >>Talk to |cRXP_FRIENDLY_Baritanas Skyriver|r if you don't have this flight path yet
    .fp Baritanas Skyriver >>Get the flight path
    .target Baritanas Skyriver
step
    .goto 1443,66.44,11.82
    >>Talk to |cRXP_FRIENDLY_Vahlarriel Demonslayer|r
    .accept 1437 >>Accept Vahlarriel's Search
    .target Vahlarriel Demonslayer
step
    .goto 1443,66.66,10.93
    >>Talk to |cRXP_FRIENDLY_Captain Pentigast|r
    .accept 93224 >>Accept Carved Centaur Totems
    .target Captain Pentigast
step
    .goto 1443,66.74,10.87
    >>Talk to |cRXP_FRIENDLY_Corporal Melkins|r
    .accept 1387 >>Accept Centaur Bounty
    .target Corporal Melkins
step
    .goto 1443,66.52,7.91
    >>Talk to |cRXP_FRIENDLY_Brother Anton|r
    .accept 261 >>Accept Down the Scarlet Path
    .target Brother Anton
step
    .goto 1443,56.52,17.84
    >>Click the |cRXP_PICK_Malem Chest|r
    .turnin 1437 >>Turn in Vahlarriel's Search
    .accept 1465 >>Accept Vahlarriel's Search
step
    .goto 1443,66.44,11.82
    >>Talk to |cRXP_FRIENDLY_Vahlarriel Demonslayer|r
    .turnin 1465 >>Turn in Vahlarriel's Search
    .accept 1438 >>Accept Vahlarriel's Search
    .target Vahlarriel Demonslayer
step
    .goto 1443,54.86,26.13
    >>Talk to |cRXP_FRIENDLY_Dalinda Malem|r
    .turnin 1438 >>Turn in Vahlarriel's Search
    .accept 1439 >>Accept Search for Tyranis
    .target Dalinda Malem
step
    >>Collect |cRXP_LOOT_[Tyranis' Pendant]|r from |cRXP_ENEMY_Corrupt Tyranis Malem|r
    *Find Tyranis Malem in Desolace.
    .complete 1439,1 --Search for Tyranis
    .mob Corrupt Tyranis Malem
step
    .goto 1443,54.86,26.13
    >>Talk to |cRXP_FRIENDLY_Dalinda Malem|r
    .turnin 1439 >>Turn in Search for Tyranis
    .accept 1440 >>Accept Return to Vahlarriel
    .target Dalinda Malem
step
    .goto 1443,62.33,38.99
    >>Talk to |cRXP_FRIENDLY_Bibbly F'utzbuckle|r
    .accept 5501 >>Accept Bone Collector
    .target Bibbly F'utzbuckle
step
    .goto 1443,71.54,45.46
    >>Collect |cRXP_LOOT_[Carved Centaur Totem]|r from |cRXP_ENEMY_Kolkar Centaur|r, |cRXP_ENEMY_Kolkar Scout|r, |cRXP_ENEMY_Kolkar Mauler|r
    *Acquire 5 Carved Centaur Totems by slaying centaur of any clan throughout Desolace, then return them to Captain Pentigast at Nijel's Point.
    .complete 93224,1 --Carved Centaur Totems
    .mob Kolkar Centaur
    .mob Kolkar Scout
step
    .goto 1443,66.78,58.13
    >>Talk to |cRXP_FRIENDLY_Cork Gizelton|r
    .accept 5821 >>Accept Bodyguard for Hire
    .target Cork Gizelton
step
    .goto 1443,66.72,58.62
    >>Talk to |cRXP_FRIENDLY_Rigger Gizelton|r
    .accept 5943 >>Accept Gizelton Caravan
    .target Rigger Gizelton
step
    .goto 1443,60.86,61.86
    >>Talk to |cRXP_FRIENDLY_Smeed Scrabblescrew|r
    .turnin 5821 >>Turn in Bodyguard for Hire
    .turnin 5943 >>Turn in Gizelton Caravan
    .accept 5561 >>Accept Kodo Roundup
    .target Smeed Scrabblescrew
step
    >>Kill |cRXP_ENEMY_Tamed Kodo|r
    *Bring five Tamed Kodos and the Kodo Kombobulator back to Smeed Scrabblescrew at Scrabblescrew's Camp.
    .complete 5561,1 --Kodo Roundup
    .mob Tamed Kodo
step
    .goto 1443,60.86,61.86
    >>Talk to |cRXP_FRIENDLY_Smeed Scrabblescrew|r
    .turnin 5561 >>Turn in Kodo Roundup
    .target Smeed Scrabblescrew
step
    .goto 1443,51.14,60.02
    >>Collect |cRXP_LOOT_[Kodo Bone]|r from |cRXP_PICK_Kodo Bones|r, |cRXP_PICK_Kodo Bones|r
    *Bring 10 Kodo Bones from the Kodo Graveyard to Bibbly F'utzbuckle at Kormek's Hut.
    .complete 5501,1 --Bone Collector
step
    .goto 1443,47.83,61.83
    >>Talk to |cRXP_FRIENDLY_Hornizz Brimbuzzle|r
    .accept 6134 >>Accept Ghost-o-plasm Round Up
    .target Hornizz Brimbuzzle
step
    >>Collect |cRXP_LOOT_[Ghost-o-plasm]|r from |cRXP_ENEMY_Magrami Spectre|r
    *Bring 8 Ghost-o-plasms and the Crate of Ghost Magnets to Hornizz Brimbuzzle in Desolace.
    .complete 6134,1 --Ghost-o-plasm Round Up
    .mob Magrami Spectre
step
    .goto 1443,47.83,61.83
    >>Talk to |cRXP_FRIENDLY_Hornizz Brimbuzzle|r
    .turnin 6134 >>Turn in Ghost-o-plasm Round Up
    .target Hornizz Brimbuzzle
step
    .goto 1443,47.53,54.6
    >>Click the |cRXP_PICK_Extinguished Campfire|r
    .accept 79229 >>Accept Highway Robbery
step
    .goto 1443,33.95,53.5
    >>Talk to |cRXP_FRIENDLY_Melizza Brimbuzzle|r
    .accept 6132 >>Accept Get Me Out of Here!
    .target Melizza Brimbuzzle
step
    .goto 1443,47.83,61.83
    >>Talk to |cRXP_FRIENDLY_Hornizz Brimbuzzle|r
    .turnin 6132 >>Turn in Get Me Out of Here!
    .target Hornizz Brimbuzzle
step
    .goto 1443,66.55,78.41
    >>Collect |cRXP_LOOT_[Centaur Ear]|r from |cRXP_ENEMY_Maraudine Pack Runner|r, |cRXP_ENEMY_Galthogran the Callous|r, |cRXP_ENEMY_Wep|r
    *Bring 15 Centaur Ears to Corporal Melkins at Nijel's Point in Desolace.
    .complete 1387,1 --Centaur Bounty
    .mob Maraudine Pack Runner
    .mob Galthogran the Callous
step
    .goto 1443,63.86,88.83
    >>Kill |cRXP_ENEMY_Undead Ravager|r
    *Destroy 30 Undead Ravagers, then return to Brother Anton at Nijel's Point.
    .complete 261,1 --Down the Scarlet Path
    .mob Undead Ravager
step
    .goto 1443,62.33,38.99
    >>Talk to |cRXP_FRIENDLY_Bibbly F'utzbuckle|r
    .turnin 5501 >>Turn in Bone Collector
    .turnin 79229 >>Turn in Highway Robbery
    .accept 79235 >>Accept On the Lam
    .target Bibbly F'utzbuckle
step
    .goto 1443,38.88,27.16
    >>Talk to |cRXP_FRIENDLY_Azore Aldamort|r
    .accept 93465 >>Accept Notes on Draenethyst
    .accept 5741 >>Accept Sceptre of Light
    .target Azore Aldamort
step
    .goto 1443,36.07,30.41
    >>Click the |cRXP_PICK_Rackmore's Log|r
    .accept 6161 >>Accept Claim Rackmore's Treasure!
step
    .goto 1443,55.17,30.15
    >>Collect |cRXP_LOOT_[Sceptre of Light]|r from |cRXP_ENEMY_Burning Blade Seer|r
    *Get the Sceptre of Light and then return it to Azore Aldamort at the tower in Ethel Rethor.
    .complete 5741,1 --Sceptre of Light
    .mob Burning Blade Seer
step
    .goto 1443,38.88,27.16
    >>Talk to |cRXP_FRIENDLY_Azore Aldamort|r
    .turnin 5741 >>Turn in Sceptre of Light
    .accept 6027 >>Accept Book of the Ancients
    .target Azore Aldamort
step
    >>Collect |cRXP_LOOT_[Book of the Ancients]|r from |cRXP_ENEMY_Lord Kragaru|r
    *Get the Book of the Ancients and return it to Azore Aldamort at the tower in Ethel Rethor.
    .complete 6027,1 --Book of the Ancients
    .mob Lord Kragaru
step
    .goto 1443,38.88,27.16
    >>Talk to |cRXP_FRIENDLY_Azore Aldamort|r
    .turnin 6027 >>Turn in Book of the Ancients
    .target Azore Aldamort
step
    .goto 1443,66.66,10.93
    >>Talk to |cRXP_FRIENDLY_Captain Pentigast|r
    .turnin 93224 >>Turn in Carved Centaur Totems
    .target Captain Pentigast
step
    .goto 1443,66.74,10.87
    >>Talk to |cRXP_FRIENDLY_Corporal Melkins|r
    .turnin 1387 >>Turn in Centaur Bounty
    .target Corporal Melkins
step
    .goto 1443,66.44,11.82
    >>Talk to |cRXP_FRIENDLY_Vahlarriel Demonslayer|r
    .turnin 1440 >>Turn in Return to Vahlarriel
    .target Vahlarriel Demonslayer
step
    .goto 1443,66.52,7.91
    >>Talk to |cRXP_FRIENDLY_Brother Anton|r
    .turnin 261 >>Turn in Down the Scarlet Path
    .accept 1052 >>Accept Down the Scarlet Path
    .target Brother Anton
step
    .goto 1443,79.13,76.99
    >>Collect |cRXP_LOOT_[Gimashi's Findings]|r from |cRXP_ENEMY_Gimashi|r
    *Take Gimashi's notes on Draenethyst, and bring them back to Azore Aldamort.
    .complete 93465,1 --Notes on Draenethyst
    .mob Gimashi
step
    .goto 1443,21.89,78.97
    >>Collect |cRXP_LOOT_[Rackmore's Silver Key]|r from |cRXP_ENEMY_Drysnap Crawler|r, |cRXP_ENEMY_Drysnap Pincer|r
    *Find Rackmore's Silver Key. Find Rackmore's Golden Key. Find and open Rackmore's Chest.
    .complete 6161,1 --Claim Rackmore's Treasure!
    .mob Drysnap Crawler
    .mob Drysnap Pincer
step
    .goto 1443,38.88,27.16
    >>Talk to |cRXP_FRIENDLY_Azore Aldamort|r
    .turnin 93465 >>Turn in Notes on Draenethyst
    .accept 93678 >>Accept Abridged Notes on Draenethyst
    .target Azore Aldamort
step
    .goto 1443,29.96,12.2
    >>Collect |cRXP_LOOT_[Rackmore's Golden Key]|r from |cRXP_ENEMY_Slitherblade Tide Priestess|r, |cRXP_ENEMY_Slitherblade Sorceress|r, |cRXP_ENEMY_Slitherblade Warrior|r
    *Find Rackmore's Silver Key. Find Rackmore's Golden Key. Find and open Rackmore's Chest.
    .complete 6161,2 --Claim Rackmore's Treasure!
    .mob Slitherblade Tide Priestess
    .mob Slitherblade Sorceress
step
    .goto 1443,30,8.71
    >>Click the |cRXP_PICK_Rackmore's Chest|r
    .turnin 6161 >>Turn in Claim Rackmore's Treasure!
step
    .goto 1434,26.98,77.29
    >>Talk to |cRXP_FRIENDLY_Tokal|r
    .turnin 79235 >>Turn in On the Lam
    .accept 79236 >>Accept Cherry for Your Thoughts?
    .target Tokal
step
    .goto 1434,27.04,77.17
    >>Buy |cRXP_LOOT_[Cherry Grog]|r from |cRXP_FRIENDLY_Nixxrax Fillamug|r
    *Bring a Cherry Grog to Tokal, in Booty Bay, to hear the rest of her story.
    .complete 79236,1 --Cherry for Your Thoughts?
step
    .goto 1434,26.98,77.29
    >>Talk to |cRXP_FRIENDLY_Tokal|r
    .turnin 79236 >>Turn in Cherry for Your Thoughts?
    .accept 79242 >>Accept No Honor Among Thieves
    .target Tokal
step
    .goto 1424,51.47,58.35
    >>Talk to |cRXP_FRIENDLY_Raleigh the Devout|r
    .turnin 1052 >>Turn in Down the Scarlet Path
    .target Raleigh the Devout
step
    .goto 1435,25.98,31.4
    >>Talk to |cRXP_FRIENDLY_Magtoor|r
    .turnin 93678 >>Turn in Abridged Notes on Draenethyst
    .target Magtoor
step
    .goto 1417,94.15,69.28
    >>Click the |cRXP_PICK_Illari's Loot Cache|r
    .turnin 79242 >>Turn in No Honor Among Thieves
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 30-39
#name 37-41 Riverglades
#displayname 37-41 Riverglades
#next 41-42 Tanaris
step
    .zone 2548 >>Travel to Riverglades
    *How: Fly to Lakeshire, take the north road into the Bristle Hills, then south to Farholde Keep (get its flight path).
    *Level for this part: 37-41. 94 quests, roughly 8 h 10 min.
step
    #completewith next
    .goto 2548,60.6,81.54,15,0
    >>Talk to |cRXP_FRIENDLY_Gretchen Mayberry|r if you don't have this flight path yet
    .fp Gretchen Mayberry >>Get the flight path
    .target Gretchen Mayberry
step
    .goto 2548,61.82,83.08
    >>Talk to |cRXP_FRIENDLY_Sister Rowland|r
    .accept 95603 >>Accept Bats in the Belfry
    .target Sister Rowland
step
    .goto 2548,64.66,82.89
    >>Talk to |cRXP_FRIENDLY_Cassandra Wheeler|r
    .accept 95330 >>Accept Love Thy Neighbor
    .target Cassandra Wheeler
step
    .goto 2548,65.92,81.09
    >>Click the |cRXP_PICK_Wanted|r
    .accept 95912 >>Accept WANTED: Blademaster Kaijo
step
    .goto 2548,65.61,80.79
    >>Click the |cRXP_PICK_WANTED!|r
    .accept 95991 >>Accept WANTED: Ghostmaw
step
    .goto 2548,63.39,80.64
    >>Talk to |cRXP_FRIENDLY_Bertrand Ironbrow|r
    .accept 95943 >>Accept Foreman's Plight
    .target Bertrand Ironbrow
step
    .goto 2548,66.67,81.01
    >>Talk to |cRXP_FRIENDLY_Demar Brant|r
    .accept 94613 >>Accept My Kingdom for a Horse
    .accept 94877 >>Accept Saving Sunnyglade
    .target Demar Brant
step
    .goto 2548,66.75,81.1
    >>Talk to |cRXP_FRIENDLY_Ashe Amberhall|r
    .accept 94879 >>Accept Scraps of Knowledge
    .accept 94881 >>Accept Curious Trinkets
    .target Ashe Amberhall
step
    .goto 2548,66.15,79.62
    >>Talk to |cRXP_FRIENDLY_Ember Bladewhisper|r
    .accept 95156 >>Accept Stuff 'Em and Stick 'Em
    .target Ember Bladewhisper
step
    .goto 2548,60.14,86.01
    >>Kill |cRXP_ENEMY_Roosting Duskbat|r
    *Kill 5 Roosting Duskbats in the Farholde Cathedral for Sister Rowland.
    .complete 95603,1 --Bats in the Belfry
    .mob Roosting Duskbat
step
    .goto 2548,61.82,83.08
    >>Talk to |cRXP_FRIENDLY_Sister Rowland|r
    .turnin 95603 >>Turn in Bats in the Belfry
    .accept 95613 >>Accept Keeping the Light On
    .target Sister Rowland
step
    .goto 2548,62.23,85.96
    >>Buy |cRXP_LOOT_[Holy Candle]|r from |cRXP_FRIENDLY_Marla Bell|r
    *Bring 5 Holy Candles to Sister Rowland in Farholde Keep.
    .complete 95613,1 --Keeping the Light On
step
    .goto 2548,61.82,83.08
    >>Talk to |cRXP_FRIENDLY_Sister Rowland|r
    .turnin 95613 >>Turn in Keeping the Light On
    .accept 95615 >>Accept In Memoriam
    .target Sister Rowland
step
    .goto 2548,61.82,83.08
    >>Talk to |cRXP_FRIENDLY_Sister Rowland|r
    .turnin 95615 >>Turn in In Memoriam
    .target Sister Rowland
step
    .goto 2548,54.89,73
    >>Talk to |cRXP_FRIENDLY_Benjy Wheeler|r
    .turnin 94613 >>Turn in My Kingdom for a Horse
    .accept 94614 >>Accept Freshwater Fiends
    .accept 94615 >>Accept Foal Play
    .target Benjy Wheeler
step
    .goto 2548,53.7,75.41
    >>Collect |cRXP_LOOT_[Bundle of Hay]|r from |cRXP_PICK_Hay Bale|r. Kill |cRXP_ENEMY_Mudfin Oracle|r. Collect |cRXP_LOOT_[Pawprint Tracing]|r from |cRXP_PICK_Track|r
    *Collect 3 Bundles of Hay for Ember at the training grounds.
    *Kill 8 Mudfin Oracles and 8 Mudfin Warriors along the river near Wheeler's Grange.
    *Search near the stables at Wheeler's Grange for evidence of the missing horses' whereabouts.
    .complete 95156,1 --Stuff 'Em and Stick 'Em
    .complete 94614,2 --Freshwater Fiends
    .complete 94615,1 --Foal Play
    .mob Mudfin Oracle
step
    .goto 2548,54.89,73
    >>Talk to |cRXP_FRIENDLY_Benjy Wheeler|r
    .turnin 94615 >>Turn in Foal Play
    .accept 94617 >>Accept Coyote Huntin'
    .accept 94618 >>Accept Wheeler's Fleeing Steeds
    .target Benjy Wheeler
step
    .goto 2548,54.89,73
    >>Talk to |cRXP_FRIENDLY_Lost Horse|r
    .turnin 94618 >>Turn in Wheeler's Fleeing Steeds
    .accept 94992 >>Accept Rescue Roundup
    .target Lost Horse
step
    .goto 2548,54.89,73
    >>Talk to |cRXP_FRIENDLY_Benjy Wheeler|r
    .turnin 94992 >>Turn in Rescue Roundup
    .target Benjy Wheeler
step
    .goto 2548,46.11,71.06
    >>Talk to |cRXP_FRIENDLY_Curly|r
    .accept 94857 >>Accept If a Tree Falls, and No One Hears...
    .target Curly
step
    .goto 2548,43.94,67.16
    >>Collect |cRXP_LOOT_[Ghostmaw's Fang]|r from |cRXP_ENEMY_Ghostmaw|r
    *Bring Ghostmaw's Fang to Wheatley in Farholde Keep.
    .complete 95991,1 --WANTED: Ghostmaw
    .mob Ghostmaw
step
    .goto 2548,41.18,62.92
    >>Talk to |cRXP_FRIENDLY_Halligan Turner|r
    .turnin 95330 >>Turn in Love Thy Neighbor
    .target Halligan Turner
step
    .goto 2548,41.41,64.46
    >>Talk to |cRXP_FRIENDLY_Hurley|r
    .turnin 94857 >>Turn in If a Tree Falls, and No One Hears...
    .target Hurley
step
    .goto 2548,41.18,62.92
    >>Talk to |cRXP_FRIENDLY_Halligan Turner|r
    .accept 94842 >>Accept Unsavory Plant Food
    .accept 94931 >>Accept Stolen Saws
    .target Halligan Turner
step
    .goto 2548,41.41,64.46
    >>Talk to |cRXP_FRIENDLY_Hurley|r
    .accept 94861 >>Accept Helping Hands
    .target Hurley
step
    .goto 2548,41.18,62.92
    >>Talk to |cRXP_FRIENDLY_Halligan Turner|r
    .turnin 94861 >>Turn in Helping Hands
    .target Halligan Turner
step
    .goto 2548,43.13,66.58
    >>Collect |cRXP_LOOT_[Jumbo Crawfish Shell]|r from |cRXP_ENEMY_Jumbo Crawfish|r
    *Gather 4 Jumbo Crawfish Shells, 4 pieces of Fresh Manure, and 8 Mudfin Murloc Heads for Halligan Turner.
    .complete 94842,1 --Unsavory Plant Food
    .mob Jumbo Crawfish
step
    .goto 2548,39.57,74.67
    >>Talk to |cRXP_FRIENDLY_Cedric Dalton|r
    .accept 94678 >>Accept Gnoll Infestation
    .accept 94679 >>Accept Snargl's Snout
    .target Cedric Dalton
step
    .goto 2548,44.52,78.76
    >>Collect |cRXP_LOOT_[Fresh Manure]|r from |cRXP_PICK_Fresh Manure|r
    *Gather 4 Jumbo Crawfish Shells, 4 pieces of Fresh Manure, and 8 Mudfin Murloc Heads for Halligan Turner.
    .complete 94842,2 --Unsavory Plant Food
step
    .goto 2548,43.43,82.43
    >>Talk to |cRXP_FRIENDLY_Eleanor Holmsby|r
    .accept 94999 >>Accept Eyes for the Watchman
    .target Eleanor Holmsby
step
    .goto 2548,43.33,82.68
    >>Talk to |cRXP_FRIENDLY_Robbie Holmsby|r
    .accept 94923 >>Accept Hats Off
    .target Robbie Holmsby
step
    .goto 2548,49.28,78.66
    >>Collect |cRXP_LOOT_[Sootfur's Pelt]|r from |cRXP_ENEMY_Sootfur|r. Collect |cRXP_LOOT_[Robbie's Hat]|r from |cRXP_PICK_Hollow Clam Shell|r
    *Kill the coyote known as Sootfur, and bring its pelt back to Benjy Wheeler.
    *Find Robbie's Hat somewhere along the river near the murlocs.
    .complete 94617,1 --Coyote Huntin'
    .complete 94923,1 --Hats Off
    .mob Sootfur
step
    .goto 2548,43.33,82.68
    >>Talk to |cRXP_FRIENDLY_Robbie Holmsby|r
    .turnin 94923 >>Turn in Hats Off
    .target Robbie Holmsby
step
    .goto 2548,36.38,75.75
    >>Talk to |cRXP_FRIENDLY_Watcher Fredericks|r
    .turnin 94999 >>Turn in Eyes for the Watchman
    .target Watcher Fredericks
step
    .goto 2548,30.21,69.07
    >>Talk to |cRXP_FRIENDLY_Gelinda Coppergleam|r
    .accept 95792 >>Accept Clear 'em Out
    .accept 95934 >>Accept Proof of Profit
    .target Gelinda Coppergleam
step
    .goto 2548,29.31,70.5
    >>Collect |cRXP_LOOT_[Saw Blade]|r from |cRXP_PICK_Stolen Tools|r. Kill |cRXP_ENEMY_Redridge Mystic|r. Kill |cRXP_ENEMY_Redridge Brute|r. Kill |cRXP_ENEMY_Cinderscale Whelp|r. Kill |cRXP_ENEMY_Cinderscale Warrior|r. Collect |cRXP_LOOT_[Cubic Draconia]|r from |cRXP_PICK_Cubic Draconia|r
    *Recover 8 Saw Blades from the gnoll camps in Bristle Hills for Halligan Turner at the lumber mill.
    *Kill 8 Redridge Mystics, 8 Redridge Trappers, and 6 Redridge Brutes for Cedric Dalton at Southern Watch.
    *Kill 8 Cinderscale Whelps and 4 Cinderscale Warriors for Gelinda Coppergleam.
    *Find a piece of Cubic Draconia for Gelinda Coppergleam.
    .complete 94931,1 --Stolen Saws
    .complete 94678,1 --Gnoll Infestation
    .complete 94678,3 --Gnoll Infestation
    .complete 95792,1 --Clear 'em Out
    .complete 95792,2 --Clear 'em Out
    .complete 95934,1 --Proof of Profit
    .mob Redridge Mystic
    .mob Redridge Brute
    .mob Cinderscale Whelp
    .mob Cinderscale Warrior
step
    .goto 2548,30.21,69.07
    >>Talk to |cRXP_FRIENDLY_Gelinda Coppergleam|r
    .turnin 95792 >>Turn in Clear 'em Out
    .turnin 95934 >>Turn in Proof of Profit
    .target Gelinda Coppergleam
step
    .goto 2548,23.65,67.82
    >>Talk to |cRXP_FRIENDLY_Scout Bolain|r
    .accept 95147 >>Accept The Lost Scout
    .target Scout Bolain
step
    .goto 2548,20.16,67.75
    >>Kill |cRXP_ENEMY_Redridge Trapper|r. Collect |cRXP_LOOT_[Snargl's Snout]|r from |cRXP_ENEMY_Snargl|r
    *Kill 8 Redridge Mystics, 8 Redridge Trappers, and 6 Redridge Brutes for Cedric Dalton at Southern Watch.
    *Locate Snargl in the Bristle Hills, kill him, and bring his snout to Cedric Dalton at Southern Watch.
    .complete 94678,2 --Gnoll Infestation
    .complete 94679,1 --Snargl's Snout
    .mob Redridge Trapper
    .mob Snargl
step
    .goto 2548,39.57,74.67
    >>Talk to |cRXP_FRIENDLY_Cedric Dalton|r
    .turnin 94678 >>Turn in Gnoll Infestation
    .turnin 94679 >>Turn in Snargl's Snout
    .turnin 95147 >>Turn in The Lost Scout
    .accept 95148 >>Accept Southern Watch Gnoll Report
    .target Cedric Dalton
step
    .goto 2548,41.18,62.92
    >>Talk to |cRXP_FRIENDLY_Halligan Turner|r
    .turnin 94931 >>Turn in Stolen Saws
    .target Halligan Turner
step
    .goto 2548,42.49,57.52
    >>Collect |cRXP_LOOT_[Foreman's Crate]|r from |cRXP_PICK_Foreman's Crate|r. Collect |cRXP_LOOT_[Twilight Page]|r from |cRXP_PICK_Twilight Page|r. Kill |cRXP_ENEMY_Mudfin Warrior|r
    *Locate the Foreman's Crate and return it to Bertrand Ironbrow in Farholde Keep.
    *Collect 5 Twilight Pages from within Sunnyglade for Ashe Amberall in Farholde Keep.
    *Kill 8 Mudfin Oracles and 8 Mudfin Warriors along the river near Wheeler's Grange.
    .complete 95943,1 --Foreman's Plight
    .complete 94879,1 --Scraps of Knowledge
    .complete 94614,1 --Freshwater Fiends
    .mob Mudfin Warrior
step
    .goto 2548,46.7,49.24
    >>Loot |cRXP_LOOT_[Field Marshal's Log]|r from |cRXP_ENEMY_Twilight Shadowmancer|r, |cRXP_ENEMY_Twilight Neophyte|r, |cRXP_ENEMY_Twilight Raider|r, then click it to start the quest
    .accept 94885 >>Accept Field Marshal's Log
    .use 266427
    .mob Twilight Shadowmancer
    .mob Twilight Neophyte
step
    .goto 2548,47.31,51.41
    >>Talk to |cRXP_FRIENDLY_Fuzzle|r
    .accept 94961 >>Accept Biting the Hand
    .target Fuzzle
step
    .goto 2548,46.7,49.24
    >>Kill |cRXP_ENEMY_Twilight Raider|r. Kill |cRXP_ENEMY_Twilight Shadowmancer|r. Kill |cRXP_ENEMY_Twilight Neophyte|r. Collect |cRXP_LOOT_[Twilight Charm]|r from |cRXP_ENEMY_Twilight Shadowmancer|r, |cRXP_ENEMY_Twilight Neophyte|r. Collect |cRXP_LOOT_[Field Marshal's Log]|r from |cRXP_ENEMY_Twilight Shadowmancer|r, |cRXP_ENEMY_Twilight Neophyte|r, |cRXP_ENEMY_Twilight Raider|r. Collect |cRXP_LOOT_[Twilight Finger Bone]|r from |cRXP_ENEMY_Twilight Shadowmancer|r, |cRXP_ENEMY_Twilight Neophyte|r, |cRXP_ENEMY_Twilight Raider|r
    *Defeat 8 Twilight Raiders, 8 Twilight Shadowmancers, and 8 Twilight Neophytes within Sunnyglade for Demar Brant.
    *Retrieve 25 Twilight Charms from Twilight Shadowmancers and Twilight Neophytes in Sunnyglade for Ashe Amberhall in Farholde Keep.
    *Deliver the Field Marshal's Log to Demar Brant in Farholde Keep.
    *Bring 20 Twilight Finger Bones to Fuzzle.
    .complete 94877,1 --Saving Sunnyglade
    .complete 94877,2 --Saving Sunnyglade
    .complete 94877,3 --Saving Sunnyglade
    .complete 94881,1 --Curious Trinkets
    .complete 94885,1 --Field Marshal's Log
    .complete 94961,1 --Biting the Hand
    .mob Twilight Raider
    .mob Twilight Shadowmancer
    .mob Twilight Neophyte
step
    .goto 2548,47.31,51.41
    >>Talk to |cRXP_FRIENDLY_Fuzzle|r
    .turnin 94961 >>Turn in Biting the Hand
    .accept 94963 >>Accept Biting the Hand
    .target Fuzzle
step
    .goto 2548,47.7,47.3
    >>Talk to |cRXP_FRIENDLY_Apprentice Claire|r
    .accept 95642 >>Accept Abominable Magics
    .accept 95643 >>Accept Indiscriminate Purge
    .target Apprentice Claire
step
    .goto 2548,47.7,47.3
    >>Talk to |cRXP_FRIENDLY_Apprentice Claire|r
    .turnin 95642 >>Turn in Abominable Magics
    .target Apprentice Claire
step
    .goto 2548,47.69,48.17
    >>Kill |cRXP_ENEMY_Empowered Brute|r. Kill |cRXP_ENEMY_Twilight Ritualist|r
    *Kill 5 Twilight Ritualists and 5 Empowered Brutes within the caves underneath Sunnyglade.
    .complete 95643,1 --Indiscriminate Purge
    .complete 95643,2 --Indiscriminate Purge
    .mob Empowered Brute
    .mob Twilight Ritualist
step
    .goto 2548,47.7,47.3
    >>Talk to |cRXP_FRIENDLY_Apprentice Claire|r
    .turnin 95643 >>Turn in Indiscriminate Purge
    .accept 95562 >>Accept Cut Off the Heads
    .target Apprentice Claire
step
    .goto 2548,45.03,48.68
    >>Collect |cRXP_LOOT_[Chogg's Head]|r from |cRXP_ENEMY_Chogg'Zac|r. Collect |cRXP_LOOT_[Zac's Head]|r from |cRXP_ENEMY_Chogg'Zac|r
    *Kill Chogg'Zac in the caves beneath Sunnyglade and retrieve their heads for Apprentice Claire.
    .complete 95562,1 --Cut Off the Heads
    .complete 95562,2 --Cut Off the Heads
    .mob Chogg'Zac
step
    .goto 2548,47.7,47.3
    >>Talk to |cRXP_FRIENDLY_Apprentice Claire|r
    .turnin 95562 >>Turn in Cut Off the Heads
    .accept 94884 >>Accept An Unsettling Discovery
    .target Apprentice Claire
step
    .goto 2548,41.59,47.73
    >>Click the |cRXP_PICK_Fuzzle's Treasure|r
    .turnin 94963 >>Turn in Biting the Hand
step
    .goto 2548,52.79,42.35
    >>Talk to |cRXP_FRIENDLY_Farmer Elbrim|r
    .accept 94829 >>Accept What We Lost
    .target Farmer Elbrim
step
    .goto 2548,52.79,42.35
    >>Talk to |cRXP_FRIENDLY_Farmer Elbrim|r
    .turnin 94829 >>Turn in What We Lost
    .accept 94858 >>Accept All That's Left
    .target Farmer Elbrim
step
    .goto 2548,53.68,44.84
    >>Collect |cRXP_LOOT_[Blademaster's Banner]|r from |cRXP_ENEMY_Blademaster Kaijo|r. Collect |cRXP_LOOT_[Discarded Doll]|r from |cRXP_PICK_Discarded Doll|r. Collect |cRXP_LOOT_[Damaged Locket]|r from |cRXP_ENEMY_Converted Farmer|r
    *Bring the Blademaster's Banner to Ember Bladewhisper in Farholde Keep.
    *Find Farmer Elbrim's family's possessions in the nearby barn and return them to him.
    .complete 95912,1 --WANTED: Blademaster Kaijo
    .complete 94858,1 --All That's Left
    .complete 94858,2 --All That's Left
    .mob Blademaster Kaijo
    .mob Converted Farmer
step
    .goto 2548,52.79,42.35
    >>Talk to |cRXP_FRIENDLY_Farmer Elbrim|r
    .turnin 94858 >>Turn in All That's Left
    .target Farmer Elbrim
step
    .goto 2548,68.15,48.57
    >>Talk to |cRXP_FRIENDLY_Sleebo Fizzlespout|r
    .accept 96063 >>Accept Gaseous Gold
    .target Sleebo Fizzlespout
step
    .goto 2548,77.1,52.9
    >>Talk to |cRXP_FRIENDLY_Friz Frazzlespark|r
    .accept 95288 >>Accept Smuggler's Paradise
    .accept 95059 >>Accept Frazzlespark's Crate
    .target Friz Frazzlespark
step
    .goto 2548,75.99,52.65
    >>Talk to |cRXP_FRIENDLY_Jasper Geartoggle|r
    .accept 95982 >>Accept Not My Circus
    .target Jasper Geartoggle
step
    >>Collect |cRXP_LOOT_[Briny Seafood Stew]|r
    *Bring 10 Briny Seafood Stew to Jasper Geartoggle in Powderfuse Port.
    .complete 95982,1 --Not My Circus
step
    .goto 2548,75.99,52.65
    >>Talk to |cRXP_FRIENDLY_Jasper Geartoggle|r
    .turnin 95982 >>Turn in Not My Circus
    .target Jasper Geartoggle
step
    .goto 2548,78.49,53.94
    >>Click the |cRXP_PICK_WANTED!|r
    .accept 95254 >>Accept WANTED: Trapclaw
step
    .goto 2548,79.45,52.71
    >>Talk to |cRXP_FRIENDLY_Wharfmaster Whizzbuzz|r
    .accept 95118 >>Accept Saltwater Savages
    .target Wharfmaster Whizzbuzz
step
    .goto 2548,82.49,51.09
    >>Collect |cRXP_LOOT_[Trapclaw's Pincer]|r from |cRXP_ENEMY_Trapclaw|r
    *Bring Trapclaw's Pincer to Fimbo Greasemitz.
    .complete 95254,1 --WANTED: Trapclaw
    .mob Trapclaw
step
    .goto 2548,79.02,54.2
    >>Talk to |cRXP_FRIENDLY_Fimbo Greasemitz|r
    .turnin 95254 >>Turn in WANTED: Trapclaw
    .target Fimbo Greasemitz
step
    .goto 2548,79.45,52.71
    >>Talk to |cRXP_FRIENDLY_Wharfmaster Whizzbuzz|r
    .accept 95119 >>Accept Unfriendly Competition
    .target Wharfmaster Whizzbuzz
step
    .goto 2548,84.17,40.48
    >>Collect |cRXP_LOOT_[Smuggled Goods]|r from |cRXP_ENEMY_Eastsea Buccaneer|r, |cRXP_ENEMY_Eastsea Musketeer|r. Kill |cRXP_ENEMY_Eastsea Buccaneer|r. Kill |cRXP_ENEMY_Eastsea Musketeer|r
    *Collect 8 Smuggled Goods for Friz Frazzlespark at Powderfuse Port.
    *Kill 10 Eastsea Buccaneers and 10 Eastsea Musketeers along the Eastwind Shore, north of Powderfuse Port.
    .complete 95288,1 --Smuggler's Paradise
    .complete 95119,1 --Unfriendly Competition
    .complete 95119,2 --Unfriendly Competition
    .mob Eastsea Buccaneer
    .mob Eastsea Musketeer
step
    .goto 2548,77.1,52.9
    >>Talk to |cRXP_FRIENDLY_Friz Frazzlespark|r
    .turnin 95288 >>Turn in Smuggler's Paradise
    .target Friz Frazzlespark
step
    .goto 2548,79.45,52.71
    >>Talk to |cRXP_FRIENDLY_Wharfmaster Whizzbuzz|r
    .turnin 95119 >>Turn in Unfriendly Competition
    .target Wharfmaster Whizzbuzz
step
    .goto 2548,77.1,52.9
    >>Talk to |cRXP_FRIENDLY_Friz Frazzlespark|r
    .accept 95293 >>Accept Smuggler's Special
    .target Friz Frazzlespark
step
    .goto 2548,78.49,53.94
    >>Click the |cRXP_PICK_WANTED!|r
    .accept 95120 >>Accept WANTED: Old Rot-Chum
step
    .goto 2548,91.26,39.72
    >>Talk to |cRXP_FRIENDLY_Captain Bentcoin|r
    .turnin 95293 >>Turn in Smuggler's Special
    .target Captain Bentcoin
step
    .goto 2548,91.22,39.78
    >>Talk to |cRXP_FRIENDLY_Captain Haynes|r
    .accept 95294 >>Accept Smuggler's Bargain
    .target Captain Haynes
step
    .goto 2548,77.1,52.9
    >>Talk to |cRXP_FRIENDLY_Friz Frazzlespark|r
    .turnin 95294 >>Turn in Smuggler's Bargain
    .accept 95295 >>Accept I Know a Guy
    .target Friz Frazzlespark
step
    .goto 2548,59.53,59.22
    >>Collect |cRXP_LOOT_[Marsh Gas Vial]|r from |cRXP_PICK_Marsh Gas Vent|r
    *Gather 5 Marsh Gas Vials for Sleebo Fizzlespout.
    .complete 96063,1 --Gaseous Gold
step
    .goto 2548,68.15,48.57
    >>Talk to |cRXP_FRIENDLY_Sleebo Fizzlespout|r
    .turnin 96063 >>Turn in Gaseous Gold
    .accept 96067 >>Accept Rock 'em and Sock 'em
    .target Sleebo Fizzlespout
step
    .goto 2548,68.15,48.57
    >>Talk to |cRXP_FRIENDLY_Sleebo Fizzlespout|r
    .turnin 96067 >>Turn in Rock 'em and Sock 'em
    .target Sleebo Fizzlespout
step
    .goto 2548,79.02,54.2
    >>Talk to |cRXP_FRIENDLY_Fimbo Greasemitz|r
    .accept 95121 >>Accept A Taste of the Sea
    .target Fimbo Greasemitz
step
    .goto 2548,74.58,71.88
    >>Collect |cRXP_LOOT_[Mudfin Murloc Head]|r from |cRXP_ENEMY_Murloc Tideskimmer|r, |cRXP_ENEMY_Mudfin Oracle|r, |cRXP_ENEMY_Mudfin Warrior|r. Kill |cRXP_ENEMY_Murloc Warrior|r. Kill |cRXP_ENEMY_Murloc Oracle|r. Collect |cRXP_LOOT_[Rot-Covered Harpoon]|r from |cRXP_ENEMY_Old Rot-Chum|r. Collect |cRXP_LOOT_[Saltwater Murloc Eye]|r from |cRXP_ENEMY_Murloc Oracle|r, |cRXP_ENEMY_Murloc Tideskimmer|r, |cRXP_ENEMY_Murloc Warrior|r
    *Gather 4 Jumbo Crawfish Shells, 4 pieces of Fresh Manure, and 8 Mudfin Murloc Heads for Halligan Turner.
    *Kill 8 Murloc Oracles and 8 Murloc Warriors along the Eastwind Shore.
    *Bring proof of Old Rot-Chum's demise to Wharfmaster Whizzbuzz.
    *Gather 12 Murloc Eyes and 6 pieces of Sand Crawler Meat for Fimbo Greasemitz.
    .complete 94842,3 --Unsavory Plant Food
    .complete 95118,1 --Saltwater Savages
    .complete 95118,2 --Saltwater Savages
    .complete 95120,1 --WANTED: Old Rot-Chum
    .complete 95121,1 --A Taste of the Sea
    .mob Murloc Tideskimmer
    .mob Mudfin Oracle
    .mob Murloc Warrior
    .mob Murloc Oracle
    .mob Old Rot-Chum
step
    .goto 2548,66.15,79.62
    >>Talk to |cRXP_FRIENDLY_Ember Bladewhisper|r
    .turnin 95912 >>Turn in WANTED: Blademaster Kaijo
    .turnin 95156 >>Turn in Stuff 'Em and Stick 'Em
    .target Ember Bladewhisper
step
    .goto 2548,66.67,81.01
    >>Talk to |cRXP_FRIENDLY_Demar Brant|r
    .turnin 94877 >>Turn in Saving Sunnyglade
    .turnin 95148 >>Turn in Southern Watch Gnoll Report
    .turnin 94885 >>Turn in Field Marshal's Log
    .turnin 95059 >>Turn in Frazzlespark's Crate
    .target Demar Brant
step
    .goto 2548,66.75,81.1
    >>Talk to |cRXP_FRIENDLY_Ashe Amberhall|r
    .turnin 94879 >>Turn in Scraps of Knowledge
    .turnin 94881 >>Turn in Curious Trinkets
    .turnin 94884 >>Turn in An Unsettling Discovery
    .target Ashe Amberhall
step
    .goto 2548,65.55,78.97
    >>Talk to |cRXP_FRIENDLY_Brother Lowley|r
    .accept 96081 >>Accept Wound Dressings
    .target Brother Lowley
step
    .goto 2548,66.67,81.01
    >>Talk to |cRXP_FRIENDLY_Demar Brant|r
    .accept 95329 >>Accept Out in the Field
    .accept 94886 >>Accept The Western Front
    .target Demar Brant
step
    .goto 2548,66.75,81.1
    >>Talk to |cRXP_FRIENDLY_Ashe Amberhall|r
    .accept 94907 >>Accept A Small Favor
    .target Ashe Amberhall
step
    .goto 2548,66.15,79.62
    >>Talk to |cRXP_FRIENDLY_Ember Bladewhisper|r
    .accept 95184 >>Accept The Sharpest of Blades
    .target Ember Bladewhisper
step
    .goto 2548,66.15,79.62
    >>Collect |cRXP_LOOT_[Sand Crawler Meat]|r from |cRXP_ENEMY_Sand Crawler|r, |cRXP_ENEMY_Shore Crawler|r. Collect |cRXP_LOOT_[Solid Sharpening Stone]|r
    *Gather 12 Murloc Eyes and 6 pieces of Sand Crawler Meat for Fimbo Greasemitz.
    *Bring 8 Solid Sharpening Stones to Ember Bladewhisper at the Farholde training grounds.
    .complete 95121,2 --A Taste of the Sea
    .complete 95184,1 --The Sharpest of Blades
    .mob Sand Crawler
    .mob Shore Crawler
step
    .goto 2548,66.15,79.62
    >>Talk to |cRXP_FRIENDLY_Ember Bladewhisper|r
    .turnin 95184 >>Turn in The Sharpest of Blades
    .target Ember Bladewhisper
step
    .goto 2548,63.39,80.64
    >>Talk to |cRXP_FRIENDLY_Bertrand Ironbrow|r
    .turnin 95943 >>Turn in Foreman's Plight
    .accept 96009 >>Accept High Stakes
    .target Bertrand Ironbrow
step
    .goto 2548,63.85,82.24
    >>Talk to |cRXP_FRIENDLY_Tessa Dawnbright|r
    .accept 95561 >>Accept Apple of My Eye
    .target Tessa Dawnbright
step
    .goto 2548,63.53,85.09
    >>Talk to |cRXP_FRIENDLY_Wheatley|r
    .turnin 95991 >>Turn in WANTED: Ghostmaw
    .target Wheatley
step
    .goto 2548,61.08,83.24
    >>Collect |cRXP_LOOT_[Fresh Apple]|r from |cRXP_PICK_Fresh Apple|r
    *Collect 6 Fresh Apples for Tessa Dawnbright in Farholde Keep.
    .complete 95561,1 --Apple of My Eye
step
    .goto 2548,63.85,82.24
    >>Talk to |cRXP_FRIENDLY_Tessa Dawnbright|r
    .turnin 95561 >>Turn in Apple of My Eye
    .accept 95913 >>Accept Fit for a Princess
    .target Tessa Dawnbright
step
    .goto 2548,54.89,73
    >>Talk to |cRXP_FRIENDLY_Benjy Wheeler|r
    .turnin 94614 >>Turn in Freshwater Fiends
    .turnin 94617 >>Turn in Coyote Huntin'
    .target Benjy Wheeler
step
    .goto 2548,59.53,63.97
    >>Talk to |cRXP_FRIENDLY_Watcher Cornelius|r
    .turnin 95329 >>Turn in Out in the Field
    .accept 94924 >>Accept Hunting the Hunters
    .accept 94925 >>Accept A Fur Trade
    .target Watcher Cornelius
step
    .goto 2548,61.64,58.82
    >>Talk to |cRXP_FRIENDLY_Picked Carcass|r
    .accept 95983 >>Accept A Feast for Buzzards
    .target Picked Carcass
step
    .goto 2548,59.53,63.97
    >>Talk to |cRXP_FRIENDLY_Watcher Cornelius|r
    .turnin 95983 >>Turn in A Feast for Buzzards
    .accept 95984 >>Accept Song of the Strider
    .target Watcher Cornelius
step
    .goto 2548,56.72,58.99
    >>Kill |cRXP_ENEMY_Rog'mar Poacher|r. Collect |cRXP_LOOT_[Prized Lion Hide]|r from |cRXP_ENEMY_Wildplains Patriarch|r, |cRXP_ENEMY_Wildplains Huntress|r. Collect |cRXP_LOOT_[Intact Tallstrider Beak]|r from |cRXP_ENEMY_Roving Tallstrider|r
    *Kill 12 Rog'mar Poachers for Watcher Cornelius.
    *Bring 8 Prized Lion Hides to Watcher Terral.
    *Bring an Intact Tallstrider Beak to Watcher Cornelius at Terral's Watch.
    .complete 94924,1 --Hunting the Hunters
    .complete 94925,1 --A Fur Trade
    .complete 95984,1 --Song of the Strider
    .mob Rog'mar Poacher
    .mob Wildplains Patriarch
    .mob Wildplains Huntress
    .mob Roving Tallstrider
step
    .goto 2548,59.53,63.97
    >>Talk to |cRXP_FRIENDLY_Watcher Cornelius|r
    .turnin 94924 >>Turn in Hunting the Hunters
    .turnin 94925 >>Turn in A Fur Trade
    .turnin 95984 >>Turn in Song of the Strider
    .accept 95064 >>Accept Preventative Measures
    .accept 96125 >>Accept In Need of Relief
    .accept 95426 >>Accept Rog'mar Supplies
    .accept 94928 >>Accept A Few Furs for Friz
    .accept 95986 >>Accept King of the Wild Plains
    .target Watcher Cornelius
step
    .goto 2548,58.81,51.93
    >>Collect |cRXP_LOOT_[Ombassa's Hide]|r from |cRXP_ENEMY_Ombassa|r
    *Use the Tallstrider Call to call forth the leader of the lion pride. Slay the beast and retrieve its hide for Watcher Cornelius at Terral's Watch.
    .complete 95986,1 --King of the Wild Plains
    .mob Ombassa
step
    .goto 2548,59.53,63.97
    >>Talk to |cRXP_FRIENDLY_Watcher Cornelius|r
    .turnin 95986 >>Turn in King of the Wild Plains
    .target Watcher Cornelius
step
    .goto 2548,72.36,61.9
    >>Click the |cRXP_PICK_Painted Hide|r
    .accept 95260 >>Accept Terrors From the Deep
step
    .goto 2548,79.45,52.71
    >>Talk to |cRXP_FRIENDLY_Wharfmaster Whizzbuzz|r
    .turnin 95118 >>Turn in Saltwater Savages
    .turnin 95120 >>Turn in WANTED: Old Rot-Chum
    .target Wharfmaster Whizzbuzz
step
    .goto 2548,79.02,54.2
    >>Talk to |cRXP_FRIENDLY_Fimbo Greasemitz|r
    .turnin 95121 >>Turn in A Taste of the Sea
    .target Fimbo Greasemitz
step
    .goto 2548,77.1,52.9
    >>Talk to |cRXP_FRIENDLY_Friz Frazzlespark|r
    .turnin 94928 >>Turn in A Few Furs for Friz
    .target Friz Frazzlespark
step
    .goto 2548,79.95,52.49
    >>Talk to |cRXP_FRIENDLY_Argo Brinewhistle|r
    .turnin 95260 >>Turn in Terrors From the Deep
    .accept 95261 >>Accept It Takes Guts
    .target Argo Brinewhistle
step
    .goto 2548,79.45,52.71
    >>Talk to |cRXP_FRIENDLY_Wharfmaster Whizzbuzz|r
    .accept 95122 >>Accept Unchecked Expansion
    .accept 95123 >>Accept A Blast Ye Scurvy Dogs!
    .target Wharfmaster Whizzbuzz
step
    .goto 2548,77.64,36.04
    >>Kill |cRXP_ENEMY_Eastsea Raider|r. Kill |cRXP_ENEMY_Eastsea Bombardier|r. Collect |cRXP_LOOT_[Eastsea Powder Keg]|r from |cRXP_PICK_Powder Keg|r
    *Kill 8 Eastsea Raiders and 8 Eastsea Bombardiers for Wharfmaster Whizzbuzz.
    *Steal 5 Eastsea Powder Kegs for Wharfmaster Whizzbuzz.
    .complete 95122,1 --Unchecked Expansion
    .complete 95122,2 --Unchecked Expansion
    .complete 95123,1 --A Blast Ye Scurvy Dogs!
    .mob Eastsea Raider
    .mob Eastsea Bombardier
step
    .goto 2548,67.1,33.94
    >>Loot |cRXP_LOOT_[Komuk's Warmaul]|r from |cRXP_ENEMY_Komuk|r, then click it to start the quest
    .accept 94926 >>Accept Drop the Hammer
    .use 266889
    .mob Komuk
step
    .goto 2548,67.1,33.94
    >>Collect |cRXP_LOOT_[Komuk's Warmaul]|r from |cRXP_ENEMY_Komuk|r
    *Take Komuk's Maul to Farholde Keep as proof of the ogre's demise.
    .complete 94926,1 --Drop the Hammer
    .mob Komuk
step
    .goto 2548,58.58,37.27
    >>Kill |cRXP_ENEMY_Rog'mar Trainee|r. Collect |cRXP_LOOT_[Rog'mar Supply Crate]|r from |cRXP_PICK_Rog'mar Supply Crate|r
    *Kill 12 Rog'mar Trainees for Watcher Cornelius at Terral's Watch.
    *Retrieve 8 Horde Supply Shipment from the training camps north of Rog'mar.
    .complete 95064,1 --Preventative Measures
    .complete 95426,1 --Rog'mar Supplies
    .mob Rog'mar Trainee
step
    .goto 2548,37.39,42.88
    >>Collect |cRXP_LOOT_[Beast Entrails]|r from |cRXP_ENEMY_Mature Paletusk|r, |cRXP_ENEMY_Sand Crawler|r, |cRXP_ENEMY_Shore Crawler|r
    *Collect 15 Beast Entrails and 8 Rotflesh Mushrooms for Argo Brinewhistle.
    .complete 95261,1 --It Takes Guts
    .mob Mature Paletusk
    .mob Sand Crawler
step
    .goto 2548,30.71,49.06
    >>Talk to |cRXP_FRIENDLY_Sergeant Riftan|r
    .turnin 94886 >>Turn in The Western Front
    .accept 96015 >>Accept A Miner Problem
    .accept 94888 >>Accept No Soldier Left Behind
    .accept 94889 >>Accept Carving a Path
    .target Sergeant Riftan
step
    .goto 2548,30.71,49.06
    >>Talk to |cRXP_FRIENDLY_Sergeant Riftan|r
    .turnin 94888 >>Turn in No Soldier Left Behind
    .target Sergeant Riftan
step
    .goto 2548,26.65,47.76
    >>Kill |cRXP_ENEMY_Twilight Thrall|r. Kill |cRXP_ENEMY_Twilight Fanatic|r. Kill |cRXP_ENEMY_Twilight Corrupter|r. Kill |cRXP_ENEMY_Twilight Champion|r
    *Summon a Twilight's Thrall from a conduit within the Twilight Shroud and capture it with Amberhall's Soulstone.
    *Defeat 8 Twilight Fanatics, 8 Twilight Corrupters, and 8 Twilight Champions within the Twilight's Shroud for Sergeant Riftan.
    .complete 94907,1 --A Small Favor
    .complete 94889,1 --Carving a Path
    .complete 94889,2 --Carving a Path
    .complete 94889,3 --Carving a Path
    .mob Twilight Thrall
    .mob Twilight Fanatic
    .mob Twilight Corrupter
    .mob Twilight Champion
step
    .goto 2548,30.71,49.06
    >>Talk to |cRXP_FRIENDLY_Sergeant Riftan|r
    .turnin 94889 >>Turn in Carving a Path
    .target Sergeant Riftan
step
    .goto 2548,37.47,61.26
    >>Collect |cRXP_LOOT_[Wood Bundle]|r from |cRXP_PICK_Bundle of Wood|r
    *Collect 10 Wood Bundles from Turner's Logging Camp for Bertrand Ironbrow in Farholde Keep.
    .complete 96009,1 --High Stakes
step
    .goto 2548,41.18,62.92
    >>Talk to |cRXP_FRIENDLY_Halligan Turner|r
    .turnin 94842 >>Turn in Unsavory Plant Food
    .accept 94843 >>Accept From Seed to Sprout
    .target Halligan Turner
step
    .goto 2548,41.18,62.92
    >>Talk to |cRXP_FRIENDLY_Halligan Turner|r
    .turnin 94843 >>Turn in From Seed to Sprout
    .target Halligan Turner
step
    .goto 2548,59.53,63.97
    >>Talk to |cRXP_FRIENDLY_Watcher Cornelius|r
    .turnin 95064 >>Turn in Preventative Measures
    .turnin 95426 >>Turn in Rog'mar Supplies
    .accept 95066 >>Accept The Rog'mar Situation
    .target Watcher Cornelius
step
    .goto 2548,63.39,80.64
    >>Talk to |cRXP_FRIENDLY_Bertrand Ironbrow|r
    .turnin 96009 >>Turn in High Stakes
    .target Bertrand Ironbrow
step
    .goto 2548,66.75,81.1
    >>Talk to |cRXP_FRIENDLY_Ashe Amberhall|r
    .turnin 94907 >>Turn in A Small Favor
    .target Ashe Amberhall
step
    .goto 2548,66.67,81.01
    >>Talk to |cRXP_FRIENDLY_Demar Brant|r
    .turnin 94926 >>Turn in Drop the Hammer
    .turnin 95066 >>Turn in The Rog'mar Situation
    .target Demar Brant
step
    .goto 2548,52.18,84.13
    >>Collect |cRXP_LOOT_[Coyote Pelt]|r from |cRXP_ENEMY_Plains Coyote|r
    *Collect 3 Coyote Pelts for Tessa Dawnbright in Farholde Keep.
    .complete 95913,1 --Fit for a Princess
    .mob Plains Coyote
step
    .goto 2548,63.85,82.24
    >>Talk to |cRXP_FRIENDLY_Tessa Dawnbright|r
    .turnin 95913 >>Turn in Fit for a Princess
    .accept 95961 >>Accept Stepped Out
    .target Tessa Dawnbright
step
    .goto 2548,79.45,52.71
    >>Talk to |cRXP_FRIENDLY_Wharfmaster Whizzbuzz|r
    .turnin 95122 >>Turn in Unchecked Expansion
    .turnin 95123 >>Turn in A Blast Ye Scurvy Dogs!
    .target Wharfmaster Whizzbuzz
step
    .goto 2548,78.85,54.23
    >>Talk to |cRXP_FRIENDLY_Gray Dawnbright|r
    .turnin 95961 >>Turn in Stepped Out
    .target Gray Dawnbright
step
    .goto 2548,79.45,52.71
    >>Talk to |cRXP_FRIENDLY_Wharfmaster Whizzbuzz|r
    .accept 95124 >>Accept Admiral Lamora
    .accept 95165 >>Accept See Ya, Scallywags!
    .target Wharfmaster Whizzbuzz
step
    .goto 2548,78.77,53.98
    >>Talk to |cRXP_FRIENDLY_Innkeeper Zizplink|r
    .accept 95988 >>Accept Goes Down Smooth
    .target Innkeeper Zizplink
step
    .goto 2548,79.45,52.71
    >>Talk to |cRXP_FRIENDLY_Wharfmaster Whizzbuzz|r
    .turnin 95165 >>Turn in See Ya, Scallywags!
    .target Wharfmaster Whizzbuzz
step
    .goto 2548,80.4,48.14
    >>Collect |cRXP_LOOT_[Crawler Spittle]|r from |cRXP_ENEMY_Shore Crawler|r. Buy |cRXP_LOOT_[Fresh Chum]|r from |cRXP_FRIENDLY_Gritta Chumwater|r. Buy |cRXP_LOOT_[Goblin Degreaser]|r from |cRXP_FRIENDLY_Kor'gar|r. Buy |cRXP_LOOT_[Expired Poison]|r from |cRXP_FRIENDLY_Krikshank|r
    *Gather 3 Crawler Spittle, Fresh Chum, Goblin Degreaser, and Expired Poison for Innkeeper Zizplink in Powderfuse Port.
    .complete 95988,1 --Goes Down Smooth
    .complete 95988,2 --Goes Down Smooth
    .complete 95988,3 --Goes Down Smooth
    .complete 95988,4 --Goes Down Smooth
    .mob Shore Crawler
step
    .goto 2548,78.77,53.98
    >>Talk to |cRXP_FRIENDLY_Innkeeper Zizplink|r
    .turnin 95988 >>Turn in Goes Down Smooth
    .accept 95957 >>Accept Drink Up!
    .target Innkeeper Zizplink
step
    .goto 2548,78.85,54.23
    >>Talk to |cRXP_FRIENDLY_Gray Dawnbright|r
    .turnin 95957 >>Turn in Drink Up!
    .accept 95975 >>Accept Her World
    .target Gray Dawnbright
step
    .goto 2548,67.65,52.96
    >>Collect |cRXP_LOOT_[Wildflower]|r from |cRXP_PICK_Wildflower|r
    *Gather 20 Wildflowers and deliver them to Tessa Dawnbright in Farholde Keep.
    .complete 95975,1 --Her World
step
    .goto 2548,63.85,82.24
    >>Talk to |cRXP_FRIENDLY_Tessa Dawnbright|r
    .turnin 95975 >>Turn in Her World
    .target Tessa Dawnbright
step
    .goto 2548,73.31,24.69
    >>Collect |cRXP_LOOT_[Rotflesh Mushroom]|r from |cRXP_PICK_Rotflesh Mushroom|r
    *Collect 15 Beast Entrails and 8 Rotflesh Mushrooms for Argo Brinewhistle.
    .complete 95261,2 --It Takes Guts
step
    .goto 2548,68.62,12.7
    >>Talk to |cRXP_FRIENDLY_Dunston Willis|r
    .turnin 96125 >>Turn in In Need of Relief
    .accept 96126 >>Accept An Ogre's Captive
    .target Dunston Willis
step
    .goto 2548,65,18.02
    >>Collect |cRXP_LOOT_[Gronok's Key]|r from |cRXP_ENEMY_Gronok the Butcher|r
    *Find Gronok the Butcher, kill him, and bring Dunston the key to his shackles.
    .complete 96126,1 --An Ogre's Captive
    .mob Gronok the Butcher
step
    .goto 2548,68.62,12.7
    >>Talk to |cRXP_FRIENDLY_Dunston Willis|r
    .turnin 96126 >>Turn in An Ogre's Captive
    .accept 94927 >>Accept Dunston Checks Out
    .target Dunston Willis
step
    .goto 2548,88.03,29.09
    >>Kill |cRXP_ENEMY_Admiral Lamora|r. Collect |cRXP_LOOT_[Lamora's Loot]|r from |cRXP_PICK_Admiral's Treasure Chest|r
    *Slay Admiral Lamora, locate his stash of loot, and return it to Wharfmaster Whizzbuzz.
    .complete 95124,1 --Admiral Lamora
    .complete 95124,2 --Admiral Lamora
    .mob Admiral Lamora
step
    .goto 2548,79.95,52.49
    >>Talk to |cRXP_FRIENDLY_Argo Brinewhistle|r
    .turnin 95261 >>Turn in It Takes Guts
    .target Argo Brinewhistle
step
    .goto 2548,79.45,52.71
    >>Talk to |cRXP_FRIENDLY_Wharfmaster Whizzbuzz|r
    .turnin 95124 >>Turn in Admiral Lamora
    .target Wharfmaster Whizzbuzz
step
    .goto 2548,79.95,52.49
    >>Talk to |cRXP_FRIENDLY_Argo Brinewhistle|r
    .accept 95267 >>Accept The Monster Surfaces
    .target Argo Brinewhistle
step
    .goto 2548,72.41,72
    >>Collect |cRXP_LOOT_[Sea Monster's Head]|r from |cRXP_ENEMY_Monstrous Threshadon|r
    *Use the Big Ball o' Bait to lure out the sea monster. Then, bring its head to Argo Brinewhistle.
    .complete 95267,1 --The Monster Surfaces
    .mob Monstrous Threshadon
step
    .goto 2548,59.53,63.97
    >>Talk to |cRXP_FRIENDLY_Watcher Cornelius|r
    .turnin 94927 >>Turn in Dunston Checks Out
    .target Watcher Cornelius
step
    .goto 2548,79.95,52.49
    >>Talk to |cRXP_FRIENDLY_Argo Brinewhistle|r
    .turnin 95267 >>Turn in The Monster Surfaces
    .target Argo Brinewhistle
step
    .goto 2548,26.51,35.55
    >>Kill |cRXP_ENEMY_Ogre Miner|r. Kill |cRXP_ENEMY_Twilight Subjugator|r
    *Defeat 5 Ogre Miners and 5 Twilight Subjugators in the cave near the Twilight's Shroud for Sergeant Riftan.
    .complete 96015,1 --A Miner Problem
    .complete 96015,2 --A Miner Problem
    .mob Ogre Miner
    .mob Twilight Subjugator
step
    .goto 2548,30.71,49.06
    >>Talk to |cRXP_FRIENDLY_Sergeant Riftan|r
    .turnin 96015 >>Turn in A Miner Problem
    .target Sergeant Riftan
step
    .goto 1434,27.37,74.08
    >>Talk to |cRXP_FRIENDLY_Caravaneer Ruzzgot|r
    .turnin 95295 >>Turn in I Know a Guy
    .accept 95322 >>Accept Get the Goods
    .target Caravaneer Ruzzgot
step
    .goto 1434,27.37,74.08
    >>Talk to |cRXP_FRIENDLY_Caravaneer Ruzzgot|r
    .turnin 95322 >>Turn in Get the Goods
    .accept 95325 >>Accept We've Been Robbed!
    .target Caravaneer Ruzzgot
step
    .goto 1434,42.76,18.53
    >>Click the |cRXP_PICK_Venture Co. Ledger|r
    .turnin 95325 >>Turn in We've Been Robbed!
    .accept 95326 >>Accept The Big Payback
step
    .goto 1434,42,21.62
    >>Collect |cRXP_LOOT_[Ruzzgot's Shipment]|r from |cRXP_ENEMY_Venture Co. Agent|r
    *Kill the Venture Co. Agent and take back Ruzzgot's Shipment for him in Booty Bay.
    .complete 95326,1 --The Big Payback
    .mob Venture Co. Agent
step
    .goto 1434,22.26,13.08
    >>Collect |cRXP_LOOT_[Mageweave Cloth]|r from |cRXP_ENEMY_Farmer Ray|r, |cRXP_ENEMY_Felhunter|r, |cRXP_ENEMY_Bloodscalp Warrior|r
    *Gather 20 Mageweave Cloth for Brother Lowley at Farholde Keep.
    .complete 96081,1 --Wound Dressings
    .mob Farmer Ray
    .mob Felhunter
step
    .goto 1434,27.37,74.08
    >>Talk to |cRXP_FRIENDLY_Caravaneer Ruzzgot|r
    .turnin 95326 >>Turn in The Big Payback
    .target Caravaneer Ruzzgot
step
    .goto 2548,65.55,78.97
    >>Talk to |cRXP_FRIENDLY_Brother Lowley|r
    .turnin 96081 >>Turn in Wound Dressings
    .accept 96082 >>Accept Doctor's Orderly
    .target Brother Lowley
step
    .goto 2548,65.42,79.21
    >>Kill |cRXP_ENEMY_Wounded Soldier|r
    *Bandage up 3 Wounded Soldiers for Brother Lowley.
    .complete 96082,1 --Doctor's Orderly
    .mob Wounded Soldier
step
    .goto 2548,65.55,78.97
    >>Talk to |cRXP_FRIENDLY_Brother Lowley|r
    .turnin 96082 >>Turn in Doctor's Orderly
    .accept 96083 >>Accept Clerical Quarantine
    .target Brother Lowley
step
    .goto 2548,61.82,83.08
    >>Talk to |cRXP_FRIENDLY_Sister Rowland|r
    .turnin 96083 >>Turn in Clerical Quarantine
    .accept 96084 >>Accept Something's in the Water
    .target Sister Rowland
step
    >>Collect |cRXP_LOOT_[Filled Freshwater Phial]|r
    *Collect a sample of drinking water from the plains for Sister Rowland at the chapel in Farholde Keep.
    .complete 96084,1 --Something's in the Water
step
    .goto 2548,61.82,83.08
    >>Talk to |cRXP_FRIENDLY_Sister Rowland|r
    .turnin 96084 >>Turn in Something's in the Water
    .accept 96085 >>Accept Upstream Contamination
    .target Sister Rowland
step
    .goto 2548,61.82,83.08
    >>Talk to |cRXP_FRIENDLY_Sister Rowland|r
    .turnin 96085 >>Turn in Upstream Contamination
    .target Sister Rowland
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 40-49
#name 41-42 Tanaris
#displayname 41-42 Tanaris
#next 42-44 Feralas
step
    .zone 1446 >>Travel to Tanaris
    *How: From Powderfuse Port (Riverglades) take the goblin boat to Steamwheedle Port, then ride to Gadgetzan. From Kalimdor: fly to Gadgetzan.
    *Level for this part: 41-42. 21 quests, roughly 2 h 30 min.
step
    #completewith next
    .goto 1446,51.01,29.34,15,0
    >>Talk to |cRXP_FRIENDLY_Bera Stonehammer|r if you don't have this flight path yet
    .fp Bera Stonehammer >>Get the flight path
    .target Bera Stonehammer
step
    .goto 1446,52.3,26.89
    >>Talk to |cRXP_FRIENDLY_Jhordy Lapforge|r
    .accept 97536 >>Accept Gnomish Garbage
    .target Jhordy Lapforge
step
    .goto 1446,52.36,26.91
    >>Talk to |cRXP_FRIENDLY_Curgle Cranklehop|r
    .accept 3022 >>Accept Handle With Care
    .target Curgle Cranklehop
step
    .goto 1446,52.46,28.51
    >>Talk to |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r
    .accept 1690 >>Accept Wastewander Justice
    .target Chief Engineer Bilgewhizzle
step
    .goto 1446,51.83,27.04
    >>Click the |cRXP_PICK_Wanted Poster|r
    .accept 2781 >>Accept WANTED: Caliph Scorpidsting
step
    .goto 1446,50.21,27.48
    >>Talk to |cRXP_FRIENDLY_Senior Surveyor Fizzledowser|r
    .accept 992 >>Accept Gadgetzan Water Survey
    .target Senior Surveyor Fizzledowser
step
    .goto 1446,52.49,28.45
    >>Talk to |cRXP_FRIENDLY_Spigot Operator Luglunket|r
    .accept 1707 >>Accept Water Pouch Bounty
    .target Spigot Operator Luglunket
step
    .goto 1446,52.3,26.89
    >>Talk to |cRXP_FRIENDLY_Jhordy Lapforge|r
    .turnin 97536 >>Turn in Gnomish Garbage
    .target Jhordy Lapforge
step
    >>Collect |cRXP_LOOT_[Tapped Dowsing Widget]|r
    *Use the untapped dowsing widget near the pool of water by Sandsorrow Watch. Once you have collected the sample, return the tapped dowsing widget to Senior Surveyor Fizzledowser in Gadgetzan.
    .complete 992,1 --Gadgetzan Water Survey
step
    .goto 1446,50.21,27.48
    >>Talk to |cRXP_FRIENDLY_Senior Surveyor Fizzledowser|r
    .turnin 992 >>Turn in Gadgetzan Water Survey
    .accept 82 >>Accept Noxious Lair Investigation
    .target Senior Surveyor Fizzledowser
step
    .goto 1446,47.69,38.63
    >>Loot |cRXP_LOOT_[OOX-17/TN Distress Beacon]|r from |cRXP_ENEMY_Glasshide Basilisk|r, |cRXP_ENEMY_Glasshide Gazer|r, |cRXP_ENEMY_Glasshide Petrifier|r, then click it to start the quest
    .accept 351 >>Accept Find OOX-17/TN!
    .use 8623
    .mob Glasshide Basilisk
    .mob Glasshide Gazer
step
    .goto 1446,52.71,45.92
    >>Talk to |cRXP_FRIENDLY_Marvon Rivetseeker|r
    .accept 3161 >>Accept Gahz'ridian
    .target Marvon Rivetseeker
step
    .goto 1446,61.77,38.17
    >>Kill |cRXP_ENEMY_Wastewander Thief|r. Collect |cRXP_LOOT_[Caliph Scorpidsting's Head]|r from |cRXP_ENEMY_Caliph Scorpidsting|r. Collect |cRXP_LOOT_[Wastewander Water Pouch]|r from |cRXP_ENEMY_Wastewander Rogue|r, |cRXP_ENEMY_Wastewander Thief|r, |cRXP_ENEMY_Wastewander Shadow Mage|r
    *Take down 10 Wastewander Bandits and Thieves east of Gadgetzan, then report back to Chief Engineer Bilgewhizzle.
    *Bring the head of Caliph Scorpidsting to Chief Engineer Bilgewhizzle in Gadgetzan.
    *Bring 5 Wastewander Water Pouches to Spigot Operator Luglunket in Gadgetzan.
    .complete 1690,2 --Wastewander Justice
    .complete 2781,1 --WANTED: Caliph Scorpidsting
    .complete 1707,1 --Water Pouch Bounty
    .mob Wastewander Thief
    .mob Caliph Scorpidsting
    .mob Wastewander Rogue
step
    .goto 1446,63.75,29.15
    >>Kill |cRXP_ENEMY_Wastewander Bandit|r
    *Take down 10 Wastewander Bandits and Thieves east of Gadgetzan, then report back to Chief Engineer Bilgewhizzle.
    .complete 1690,1 --Wastewander Justice
    .mob Wastewander Bandit
step
    .goto 1446,66.99,22.36
    >>Talk to |cRXP_FRIENDLY_Yeh'kinya|r
    .accept 3520 >>Accept Screecher Spirits
    .target Yeh'kinya
step
    .goto 1446,67.06,23.89
    >>Talk to |cRXP_FRIENDLY_Security Chief Bilgewhizzle|r
    .accept 97530 >>Accept Dunemaul Dues
    .target Security Chief Bilgewhizzle
step
    .goto 1446,66.56,22.27
    >>Talk to |cRXP_FRIENDLY_Haughty Modiste|r
    .accept 8365 >>Accept Pirate Hats Ahoy!
    .target Haughty Modiste
step
    .goto 1446,66.82,22.29
    >>Click the |cRXP_PICK_Wanted Poster|r
    .accept 2875 >>Accept WANTED: Andre Firebeard
step
    >>Kill |cRXP_ENEMY_Screecher Spirit|r
    *Capture the spirits of 3 screechers in Feralas, then return to Yeh'kinya in Steamwheedle Port.
    .complete 3520,1 --Screecher Spirits
    .mob Screecher Spirit
step
    .goto 1446,66.99,22.36
    >>Talk to |cRXP_FRIENDLY_Yeh'kinya|r
    .turnin 3520 >>Turn in Screecher Spirits
    .target Yeh'kinya
step
    .goto 1446,52.46,28.51
    >>Talk to |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r
    .turnin 1690 >>Turn in Wastewander Justice
    .turnin 2781 >>Turn in WANTED: Caliph Scorpidsting
    .target Chief Engineer Bilgewhizzle
step
    .goto 1446,52.49,28.45
    >>Talk to |cRXP_FRIENDLY_Spigot Operator Luglunket|r
    .turnin 1707 >>Turn in Water Pouch Bounty
    .target Spigot Operator Luglunket
step
    .goto 1446,52.46,28.51
    >>Talk to |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r
    .accept 1691 >>Accept More Wastewander Justice
    .target Chief Engineer Bilgewhizzle
step
    .goto 1446,60.08,37.03
    >>Kill |cRXP_ENEMY_Wastewander Rogue|r. Kill |cRXP_ENEMY_Wastewander Assassin|r. Kill |cRXP_ENEMY_Wastewander Shadow Mage|r
    *Take down 10 Wastewander Shadow Mages, 8 Wastewander Rogues, and 6 Wastewander Assassins for Chief Engineer Bilgewhizzle in Gadgetzan.
    .complete 1691,1 --More Wastewander Justice
    .complete 1691,2 --More Wastewander Justice
    .complete 1691,3 --More Wastewander Justice
    .mob Wastewander Rogue
    .mob Wastewander Assassin
    .mob Wastewander Shadow Mage
step
    .goto 1446,52.46,28.51
    >>Talk to |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r
    .turnin 1691 >>Turn in More Wastewander Justice
    .target Chief Engineer Bilgewhizzle
step
    .goto 1446,33.28,44.39
    >>Collect |cRXP_LOOT_[Centipaar Insect Parts]|r from |cRXP_ENEMY_Centipaar Wasp|r, |cRXP_ENEMY_Centipaar Stinger|r, |cRXP_ENEMY_Centipaar Swarmer|r
    *Bring five Centipaar insect parts from the Noxious Lair to Alchemist Pestlezugg in Gadgetzan.
    .complete 82,1 --Noxious Lair Investigation
    .mob Centipaar Wasp
    .mob Centipaar Stinger
step
    .goto 1446,41.21,55.16
    >>Collect |cRXP_LOOT_[Brilliantly Polished Bangle]|r from |cRXP_ENEMY_Dunemaul Ogre|r, |cRXP_ENEMY_Dunemaul Enforcer|r, |cRXP_ENEMY_Dunemaul Ogre Mage|r
    *Security Chief Bilgewhizzle of Steamwheedle Port in Tanaris wants you to recover a particularly shiny bangle bracelet lost near the Dunemaul ogre compound.
    .complete 97530,1 --Dunemaul Dues
    .mob Dunemaul Ogre
    .mob Dunemaul Enforcer
step
    .goto 1446,46.19,70.35
    >>Collect |cRXP_LOOT_[Gahz'ridian Ornament]|r from |cRXP_PICK_Gahz'ridian|r
    *Marvon Rivetseeker in Tanaris wants you to collect 30 Gahz'ridian Ornaments.
    .complete 3161,1 --Gahz'ridian
step
    .goto 1446,60.23,64.72
    >>Talk to |cRXP_FRIENDLY_Homing Robot OOX-17/TN|r
    .turnin 351 >>Turn in Find OOX-17/TN!
    .accept 648 >>Accept Rescue OOX-17/TN!
    .target Homing Robot OOX-17/TN
step
    .goto 1446,52.71,45.92
    >>Talk to |cRXP_FRIENDLY_Marvon Rivetseeker|r
    .turnin 3161 >>Turn in Gahz'ridian
    .target Marvon Rivetseeker
step
    .goto 1446,50.89,26.96
    >>Talk to |cRXP_FRIENDLY_Alchemist Pestlezugg|r
    .turnin 82 >>Turn in Noxious Lair Investigation
    .target Alchemist Pestlezugg
step
    .goto 1446,50.21,27.48
    >>Talk to |cRXP_FRIENDLY_Senior Surveyor Fizzledowser|r
    .accept 10 >>Accept The Scrimshank Redemption
    .target Senior Surveyor Fizzledowser
step
    .goto 1446,67.06,23.89
    >>Talk to |cRXP_FRIENDLY_Security Chief Bilgewhizzle|r
    .turnin 97530 >>Turn in Dunemaul Dues
    .target Security Chief Bilgewhizzle
step
    .goto 1446,73.37,47.14
    >>Collect |cRXP_LOOT_[Southsea Pirate Hat]|r from |cRXP_ENEMY_Southsea Pirate|r, |cRXP_ENEMY_Southsea Freebooter|r, |cRXP_ENEMY_Southsea Dock Worker|r. Collect |cRXP_LOOT_[Firebeard's Head]|r from |cRXP_ENEMY_Andre Firebeard|r
    *Haughty Modiste wants you to collect 20 Southsea Pirate Hats and return them to her at Steamwheedle Port in Tanaris.
    *Bring Andre's Head to Security Chief Bilgewhizzle in Steamwheedle Port.
    .complete 8365,1 --Pirate Hats Ahoy!
    .complete 2875,1 --WANTED: Andre Firebeard
    .mob Southsea Pirate
    .mob Southsea Freebooter
    .mob Andre Firebeard
step
    .goto 1446,66.56,22.27
    >>Talk to |cRXP_FRIENDLY_Haughty Modiste|r
    .turnin 8365 >>Turn in Pirate Hats Ahoy!
    .target Haughty Modiste
step
    .goto 1446,67.06,23.89
    >>Talk to |cRXP_FRIENDLY_Security Chief Bilgewhizzle|r
    .turnin 2875 >>Turn in WANTED: Andre Firebeard
    .target Security Chief Bilgewhizzle
step
    .goto 1446,55.96,71.17
    >>Collect |cRXP_LOOT_[Scrimshank's Surveying Gear]|r from |cRXP_PICK_Scrimshank's Surveying Gear|r
    *Discover the fate of Junior Surveyor Scrimshank, and bring either him or his surveying equipment to Senior Surveyor Fizzledowser in Gadgetzan.
    .complete 10,1 --The Scrimshank Redemption
step
    .goto 1446,50.21,27.48
    >>Talk to |cRXP_FRIENDLY_Senior Surveyor Fizzledowser|r
    .turnin 10 >>Turn in The Scrimshank Redemption
    .accept 110 >>Accept Insect Part Analysis
    .target Senior Surveyor Fizzledowser
step
    .goto 1446,50.89,26.96
    >>Talk to |cRXP_FRIENDLY_Alchemist Pestlezugg|r
    .turnin 110 >>Turn in Insect Part Analysis
    .accept 113 >>Accept Insect Part Analysis
    .target Alchemist Pestlezugg
step
    .goto 1446,50.21,27.48
    >>Talk to |cRXP_FRIENDLY_Senior Surveyor Fizzledowser|r
    .turnin 113 >>Turn in Insect Part Analysis
    .target Senior Surveyor Fizzledowser
step
    .goto 1438,55.5,92.05
    >>Talk to |cRXP_FRIENDLY_Erelas Ambersky|r
    .turnin 3022 >>Turn in Handle With Care
    .target Erelas Ambersky
step
    .goto 1434,28.36,76.35
    >>Talk to |cRXP_FRIENDLY_Oglethorpe Obnoticus|r
    .turnin 648 >>Turn in Rescue OOX-17/TN!
    .target Oglethorpe Obnoticus
step
    .goto 1434,27.78,77.07
    >>Talk to |cRXP_FRIENDLY_"Sea Wolf" MacKinley|r
    .accept 2872 >>Accept Stoley's Debt
    .target "Sea Wolf" MacKinley
step
    .goto 1446,67.11,23.98
    >>Talk to |cRXP_FRIENDLY_Stoley|r
    .turnin 2872 >>Turn in Stoley's Debt
    .accept 2873 >>Accept Stoley's Shipment
    .target Stoley
step
    .goto 1446,72.18,46.84
    >>Collect |cRXP_LOOT_[Stoley's Shipment]|r from |cRXP_PICK_Stolen Cargo|r
    *Bring Stoley's Shipment to Stoley in Steamwheedle Port.
    .complete 2873,1 --Stoley's Shipment
step
    .goto 1446,67.11,23.98
    >>Talk to |cRXP_FRIENDLY_Stoley|r
    .turnin 2873 >>Turn in Stoley's Shipment
    .accept 2874 >>Accept Deliver to MacKinley
    .target Stoley
step
    .goto 1434,27.78,77.07
    >>Talk to |cRXP_FRIENDLY_"Sea Wolf" MacKinley|r
    .turnin 2874 >>Turn in Deliver to MacKinley
    .target "Sea Wolf" MacKinley
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 40-49
#name 42-44 Feralas
#displayname 42-44 Feralas
#next 44-44 Dustwallow Marsh
step
    .zone 1444 >>Travel to Feralas
    *How: Fly to Feathermoon Stronghold (or Thalanaar).
    *Level for this part: 42-44. 38 quests, roughly 3 h 20 min.
step
    #completewith next
    .goto 1444,89.5,45.85,15,0
    >>Talk to |cRXP_FRIENDLY_Thyssiana|r if you don't have this flight path yet
    .fp Thyssiana >>Get the flight path
    .target Thyssiana
step
    .goto 1444,65.94,45.65
    >>Talk to |cRXP_FRIENDLY_Kindal Moonweaver|r
    .accept 2969 >>Accept Freedom for All Creatures
    .target Kindal Moonweaver
step
    .goto 1444,65.94,45.65
    >>Talk to |cRXP_FRIENDLY_Kindal Moonweaver|r
    .turnin 2969 >>Turn in Freedom for All Creatures
    .target Kindal Moonweaver
step
    .goto 1444,65.95,45.61
    >>Talk to |cRXP_FRIENDLY_Jer'kai Moonweaver|r
    .accept 2970 >>Accept Doling Justice
    .target Jer'kai Moonweaver
step
    .goto 1444,68.97,40.16
    >>Kill |cRXP_ENEMY_Grimtotem Naturalist|r. Kill |cRXP_ENEMY_Grimtotem Raider|r. Kill |cRXP_ENEMY_Grimtotem Shaman|r
    *Kill 12 Grimtotem Naturalists, 10 Grimtotem Raiders, and 6 Grimtotem Shamans before returning to Jer'kai Moonweaver in Feralas.
    .complete 2970,1 --Doling Justice
    .complete 2970,2 --Doling Justice
    .complete 2970,3 --Doling Justice
    .mob Grimtotem Naturalist
    .mob Grimtotem Raider
    .mob Grimtotem Shaman
step
    .goto 1444,65.95,45.61
    >>Talk to |cRXP_FRIENDLY_Jer'kai Moonweaver|r
    .turnin 2970 >>Turn in Doling Justice
    .accept 2972 >>Accept Doling Justice
    .target Jer'kai Moonweaver
step
    .goto 1444,58.93,65.03
    >>Loot |cRXP_LOOT_[OOX-22/FE Distress Beacon]|r from |cRXP_ENEMY_Gordunni Ogre|r, |cRXP_ENEMY_Gordunni Brute|r, |cRXP_ENEMY_Gordunni Mauler|r, then click it to start the quest
    .accept 2766 >>Accept Find OOX-22/FE!
    .use 8705
    .mob Gordunni Ogre
    .mob Gordunni Brute
step
    .goto 1444,53.35,55.7
    >>Talk to |cRXP_FRIENDLY_Homing Robot OOX-22/FE|r
    .turnin 2766 >>Turn in Find OOX-22/FE!
    .accept 2767 >>Accept Rescue OOX-22/FE!
    .target Homing Robot OOX-22/FE
step
    .goto 1444,44.81,43.42
    >>Talk to |cRXP_FRIENDLY_Zorbin Fandazzle|r
    .accept 7721 >>Accept Fuel for the Zapping
    .accept 7003 >>Accept Zapped Giants
    .target Zorbin Fandazzle
step
    >>Collect |cRXP_LOOT_[Miniaturization Residue]|r from |cRXP_ENEMY_Zapped Shore Strider|r, |cRXP_ENEMY_Zapped Land Walker|r, |cRXP_ENEMY_Zapped Wave Strider|r
    *Use Zorbin's Ultra-Shrinker to zap any kind of giant found in Feralas into a more manageable form. Bring 15 Miniaturization Residues found on the zapped versions of these giants to Zorbin Fandazzle at the docks of the Forgotten Coast, Feralas.
    .complete 7003,1 --Zapped Giants
    .mob Zapped Shore Strider
    .mob Zapped Land Walker
step
    .goto 1444,44.81,43.42
    >>Talk to |cRXP_FRIENDLY_Zorbin Fandazzle|r
    .turnin 7003 >>Turn in Zapped Giants
    .target Zorbin Fandazzle
step
    .goto 1444,46.86,53.62
    >>Collect |cRXP_LOOT_[Water Elemental Core]|r from |cRXP_ENEMY_Sea Elemental|r, |cRXP_ENEMY_Sea Spray|r
    *Collect 10 Water Elemental Cores from the Sea Elementals and Sea Sprays along the Forgotten Coast of Feralas, and bring them back to Zorbin Fandazzle who is near the dock there.
    .complete 7721,1 --Fuel for the Zapping
    .mob Sea Elemental
    .mob Sea Spray
step
    .goto 1444,44.81,43.42
    >>Talk to |cRXP_FRIENDLY_Zorbin Fandazzle|r
    .turnin 7721 >>Turn in Fuel for the Zapping
    .target Zorbin Fandazzle
step
    .goto 1444,30.38,46.17
    >>Talk to |cRXP_FRIENDLY_Latronicus Moonspear|r
    .accept 4124 >>Accept The Missing Courier
    .target Latronicus Moonspear
step
    .goto 1444,31.83,45.61
    >>Talk to |cRXP_FRIENDLY_Angelas Moonbreeze|r
    .accept 2982 >>Accept The High Wilderness
    .target Angelas Moonbreeze
step
    .goto 1444,30.28,46.17
    >>Talk to |cRXP_FRIENDLY_Shandris Feathermoon|r
    .accept 2866 >>Accept The Ruins of Solarsal
    .target Shandris Feathermoon
step
    .goto 1444,31.09,43.83
    >>Click the |cRXP_PICK_WANTED!|r
    .accept 92858 >>Accept WANTED: Ohk'zi
step
    .goto 1444,31.78,45.5
    >>Talk to |cRXP_FRIENDLY_Troyas Moonbreeze|r
    .accept 2939 >>Accept In Search of Knowledge
    .target Troyas Moonbreeze
step
    .goto 1444,31.86,45.13
    >>Talk to |cRXP_FRIENDLY_Ginro Hearthkindle|r
    .turnin 4124 >>Turn in The Missing Courier
    .accept 4125 >>Accept The Missing Courier
    .target Ginro Hearthkindle
step
    .goto 1444,30.63,42.71
    >>Talk to |cRXP_FRIENDLY_Pratt McGrubben|r
    .accept 2821 >>Accept The Mark of Quality
    .target Pratt McGrubben
step
    .goto 1444,26.31,52.34
    >>Click the |cRXP_PICK_Solarsal Gazebo|r
    .turnin 2866 >>Turn in The Ruins of Solarsal
    .accept 2867 >>Accept Return to Feathermoon Stronghold
step
    .goto 1444,30.28,46.17
    >>Talk to |cRXP_FRIENDLY_Shandris Feathermoon|r
    .turnin 2867 >>Turn in Return to Feathermoon Stronghold
    .accept 3130 >>Accept Against the Hatecrest
    .target Shandris Feathermoon
step
    .goto 1444,30.38,46.17
    >>Talk to |cRXP_FRIENDLY_Latronicus Moonspear|r
    .turnin 3130 >>Turn in Against the Hatecrest
    .accept 2869 >>Accept Against the Hatecrest
    .target Latronicus Moonspear
step
    .goto 1444,26.13,67.4
    >>Collect |cRXP_LOOT_[Hatecrest Naga Scale]|r from |cRXP_ENEMY_Hatecrest Warrior|r, |cRXP_ENEMY_Hatecrest Wave Rider|r, |cRXP_ENEMY_Hatecrest Serpent Guard|r
    *Bring 10 Hatecrest Naga Scales to Latronicus Moonspear in Feathermoon Stronghold.
    .complete 2869,1 --Against the Hatecrest
    .mob Hatecrest Warrior
    .mob Hatecrest Wave Rider
step
    .goto 1444,45.44,64.96
    >>Click the |cRXP_PICK_Wrecked Row Boat|r
    .turnin 4125 >>Turn in The Missing Courier
    .accept 4127 >>Accept Boat Wreckage
step
    .goto 1444,55.88,58.81
    >>Collect |cRXP_LOOT_[Thick Yeti Hide]|r from |cRXP_ENEMY_Feral Scar Yeti|r, |cRXP_ENEMY_Hulking Feral Scar|r, |cRXP_ENEMY_Enraged Feral Scar|r
    *Bring 10 Thick Yeti Hides to Pratt McGrubben in Feathermoon Stronghold.
    .complete 2821,1 --The Mark of Quality
    .mob Feral Scar Yeti
    .mob Hulking Feral Scar
step
    .goto 1444,59.22,69.7
    >>Kill |cRXP_ENEMY_Gordunni Warlock|r. Kill |cRXP_ENEMY_Gordunni Shaman|r
    *Angelas Moonbreeze wants you to kill 8 Gordunni Warlocks, 8 Gordunni Shaman, and 8 Gordunni Brutes.
    .complete 2982,1 --The High Wilderness
    .complete 2982,2 --The High Wilderness
    .mob Gordunni Warlock
    .mob Gordunni Shaman
step
    .goto 1444,30.38,46.17
    >>Talk to |cRXP_FRIENDLY_Latronicus Moonspear|r
    .turnin 2869 >>Turn in Against the Hatecrest
    .target Latronicus Moonspear
step
    .goto 1444,31.86,45.13
    >>Talk to |cRXP_FRIENDLY_Ginro Hearthkindle|r
    .turnin 4127 >>Turn in Boat Wreckage
    .accept 4129 >>Accept The Knife Revealed
    .target Ginro Hearthkindle
step
    .goto 1444,30.38,46.17
    >>Talk to |cRXP_FRIENDLY_Latronicus Moonspear|r
    .accept 2870 >>Accept Against Lord Shalzaru
    .target Latronicus Moonspear
step
    .goto 1444,30.63,42.71
    >>Talk to |cRXP_FRIENDLY_Pratt McGrubben|r
    .turnin 2821 >>Turn in The Mark of Quality
    .target Pratt McGrubben
step
    .goto 1444,32.45,43.79
    >>Talk to |cRXP_FRIENDLY_Quintis Jonespyre|r
    .turnin 4129 >>Turn in The Knife Revealed
    .accept 4130 >>Accept Psychometric Reading
    .target Quintis Jonespyre
step
    .goto 1444,30.63,42.71
    >>Talk to |cRXP_FRIENDLY_Pratt McGrubben|r
    .accept 7733 >>Accept Improved Quality
    .target Pratt McGrubben
step
    .goto 1444,31.86,45.13
    >>Talk to |cRXP_FRIENDLY_Ginro Hearthkindle|r
    .turnin 4130 >>Turn in Psychometric Reading
    .accept 4131 >>Accept The Woodpaw Gnolls
    .target Ginro Hearthkindle
step
    .goto 1444,42.39,22
    >>Talk to |cRXP_FRIENDLY_Rockbiter|r
    .accept 2844 >>Accept The Giant Guardian
    .target Rockbiter
step
    .goto 1444,38.22,10.3
    >>Talk to |cRXP_FRIENDLY_Shay Leafrunner|r
    .turnin 2844 >>Turn in The Giant Guardian
    .accept 2845 >>Accept Wandering Shay
    .target Shay Leafrunner
step
    .goto 1444,38.25,10.29
    >>Collect |cRXP_LOOT_[Shay's Bell]|r from |cRXP_PICK_Shay's Chest|r
    *Pick up Shay's Bell from the chest.
    .complete 2845,1 --Wandering Shay
step
    .goto 1444,42.39,22
    >>Talk to |cRXP_FRIENDLY_Rockbiter|r
    .turnin 2845 >>Turn in Wandering Shay
    .target Rockbiter
step
    .goto 1444,55.73,33.05
    >>Collect |cRXP_LOOT_[Rage Scar Yeti Hide]|r from |cRXP_ENEMY_Lurking Feral Scar|r, |cRXP_ENEMY_Elder Rage Scar|r, |cRXP_ENEMY_Ferocious Rage Scar|r
    *Bring 10 Rage Scar Yeti Hides to Pratt McGrubben at Feathermoon Stronghold, Feralas.
    .complete 7733,1 --Improved Quality
    .mob Lurking Feral Scar
    .mob Elder Rage Scar
step
    .goto 1444,74.68,29.56
    >>Kill |cRXP_ENEMY_Gordunni Brute|r. Collect |cRXP_LOOT_[Staff of Ohk'zi]|r from |cRXP_ENEMY_Ohk'zi|r
    *Angelas Moonbreeze wants you to kill 8 Gordunni Warlocks, 8 Gordunni Shaman, and 8 Gordunni Brutes.
    *Bring the Staff of Ohk'zi to Latronicus Moonspear at Feathermoon Stronghold.
    .complete 2982,3 --The High Wilderness
    .complete 92858,1 --WANTED: Ohk'zi
    .mob Gordunni Brute
    .mob Ohk'zi
step
    .goto 1444,73.32,56.31
    >>Click the |cRXP_PICK_Large Leather Backpacks|r
    .turnin 4131 >>Turn in The Woodpaw Gnolls
    .accept 4135 >>Accept The Writhing Deep
step
    .goto 1444,72.07,63.72
    >>Click the |cRXP_PICK_Zukk'ash Pod|r
    .turnin 4135 >>Turn in The Writhing Deep
    .accept 4265 >>Accept Freed from the Hive
step
    .goto 1444,31.83,45.61
    >>Talk to |cRXP_FRIENDLY_Angelas Moonbreeze|r
    .turnin 2982 >>Turn in The High Wilderness
    .target Angelas Moonbreeze
step
    .goto 1444,30.38,46.17
    >>Talk to |cRXP_FRIENDLY_Latronicus Moonspear|r
    .turnin 92858 >>Turn in WANTED: Ohk'zi
    .target Latronicus Moonspear
step
    .goto 1444,31.86,45.13
    >>Talk to |cRXP_FRIENDLY_Ginro Hearthkindle|r
    .turnin 4265 >>Turn in Freed from the Hive
    .accept 4266 >>Accept A Hero's Welcome
    .target Ginro Hearthkindle
step
    .goto 1444,30.28,46.17
    >>Talk to |cRXP_FRIENDLY_Shandris Feathermoon|r
    .turnin 4266 >>Turn in A Hero's Welcome
    .target Shandris Feathermoon
step
    .goto 1444,30.63,42.71
    >>Talk to |cRXP_FRIENDLY_Pratt McGrubben|r
    .turnin 7733 >>Turn in Improved Quality
    .target Pratt McGrubben
step
    .goto 1444,28.5,70.46
    >>Collect |cRXP_LOOT_[Mysterious Relic]|r from |cRXP_ENEMY_Lord Shalzaru|r
    *Eliminate Lord Shalzaru, and then bring the Mysterious Relic he uncovered to Latronicus Moonspear in Feathermoon Stronghold.
    .complete 2870,1 --Against Lord Shalzaru
    .mob Lord Shalzaru
step
    .goto 1444,30.38,46.17
    >>Talk to |cRXP_FRIENDLY_Latronicus Moonspear|r
    .turnin 2870 >>Turn in Against Lord Shalzaru
    .accept 2871 >>Accept Delivering the Relic
    .target Latronicus Moonspear
step
    .goto 1444,30.08,45.06
    >>Talk to |cRXP_FRIENDLY_Vestia Moonspear|r
    .turnin 2871 >>Turn in Delivering the Relic
    .target Vestia Moonspear
step
    .goto 1457,39.1,81.59
    >>Talk to |cRXP_FRIENDLY_Tyrande Whisperwind|r
    .turnin 2972 >>Turn in Doling Justice
    .target Tyrande Whisperwind
step
    .goto 1434,28.36,76.35
    >>Talk to |cRXP_FRIENDLY_Oglethorpe Obnoticus|r
    .turnin 2767 >>Turn in Rescue OOX-22/FE!
    .target Oglethorpe Obnoticus
step
    .goto 1438,55.41,92.23
    >>Talk to |cRXP_FRIENDLY_Daryn Lightwind|r
    .turnin 2939 >>Turn in In Search of Knowledge
    .target Daryn Lightwind
step
    .goto 1438,55.22,91.46
    >>Click the |cRXP_PICK_Feralas: A History|r
    .accept 2940 >>Accept Feralas: A History
step
    .goto 1438,55.41,92.23
    >>Talk to |cRXP_FRIENDLY_Daryn Lightwind|r
    .turnin 2940 >>Turn in Feralas: A History
    .accept 2941 >>Accept The Borrower
    .target Daryn Lightwind
step
    .goto 1446,52.36,26.91
    >>Talk to |cRXP_FRIENDLY_Curgle Cranklehop|r
    .turnin 2941 >>Turn in The Borrower
    .accept 2944 >>Accept The Super Snapper FX
    .target Curgle Cranklehop
step
    >>Collect |cRXP_LOOT_[Snapshot of Gammerita]|r
    *Use the Super Snapper FX to take a snapshot of Gammerita, then return to Daryn Lightwind in Rut'theran Village.
    .complete 2944,1 --The Super Snapper FX
step
    .goto 1438,55.41,92.23
    >>Talk to |cRXP_FRIENDLY_Daryn Lightwind|r
    .turnin 2944 >>Turn in The Super Snapper FX
    .accept 2943 >>Accept Return to Troyas
    .target Daryn Lightwind
step
    .goto 1444,31.78,45.5
    >>Talk to |cRXP_FRIENDLY_Troyas Moonbreeze|r
    .turnin 2943 >>Turn in Return to Troyas
    .target Troyas Moonbreeze
step
    .goto 1444,65.94,45.65
    >>Talk to |cRXP_FRIENDLY_Kindal Moonweaver|r
    .accept 3841 >>Accept An Orphan Looking For a Home
    .target Kindal Moonweaver
step
    .goto 1441,78.35,74.72
    >>Talk to |cRXP_FRIENDLY_Quentin|r
    .turnin 3841 >>Turn in An Orphan Looking For a Home
    .accept 3842 >>Accept A Short Incubation
    .target Quentin
step
    >>Collect |cRXP_LOOT_[Elixir of Lesser Fortitude]|r
    *Bring 2 Elixirs of Lesser Fortitude to Quentin in Thousand Needles.
    .complete 3842,1 --A Short Incubation
step
    .goto 1441,78.35,74.72
    >>Talk to |cRXP_FRIENDLY_Quentin|r
    .turnin 3842 >>Turn in A Short Incubation
    .accept 3843 >>Accept The Newest Member of the Family
    .target Quentin
step
    .goto 1425,14.16,43.62
    >>Talk to |cRXP_FRIENDLY_Agnar Beastamer|r
    .turnin 3843 >>Turn in The Newest Member of the Family
    .accept 4297 >>Accept Food for Baby
    .target Agnar Beastamer
step
    .goto 1425,69.59,54.85
    >>Collect |cRXP_LOOT_[Silvermane Stalker Flank]|r from |cRXP_ENEMY_Silvermane Stalker|r
    *Bring 5 Silvermane Stalker Flanks to Agnar Beastamer in Hinterlands.
    .complete 4297,1 --Food for Baby
    .mob Silvermane Stalker
step
    .goto 1425,14.16,43.62
    >>Talk to |cRXP_FRIENDLY_Agnar Beastamer|r
    .turnin 4297 >>Turn in Food for Baby
    .accept 4298 >>Accept Becoming a Parent
    .target Agnar Beastamer
step
    .goto 1425,14.16,43.62
    >>Talk to |cRXP_FRIENDLY_Agnar Beastamer|r
    .turnin 4298 >>Turn in Becoming a Parent
    .target Agnar Beastamer
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 40-49
#name 44-44 Dustwallow Marsh
#displayname 44-44 Dustwallow Marsh
#next 44-44 Shen'dralas
step
    .zone 1445 >>Travel to Dustwallow Marsh
    *How: Fly to Theramore.
    *Level for this part: 44-44. 10 quests, roughly 35 min.
step
    #completewith next
    .goto 1445,67.48,51.3,15,0
    >>Talk to |cRXP_FRIENDLY_Baldruc|r if you don't have this flight path yet
    .fp Baldruc >>Get the flight path
    .target Baldruc
step
    .goto 1445,65.5,45.39
    >>Talk to |cRXP_FRIENDLY_Guard Jameson|r
    .accept 98233 >>Accept Sword in the Slime
    .target Guard Jameson
step
    .goto 1445,49.26,55.73
    >>Collect |cRXP_LOOT_[Jameson's Training Sword]|r from |cRXP_ENEMY_Corrosive Swamp Ooze|r
    *Recover Jameson's Training Sword and bring it to Guard Jameson.
    .complete 98233,1 --Sword in the Slime
    .mob Corrosive Swamp Ooze
step
    .goto 1445,65.5,45.39
    >>Talk to |cRXP_FRIENDLY_Guard Jameson|r
    .turnin 98233 >>Turn in Sword in the Slime
    .target Guard Jameson
step
    .goto 1445,46.88,17.52
    >>Talk to |cRXP_FRIENDLY_"Stinky" Ignatz|r
    .accept 1222 >>Accept Stinky's Escape
    .target "Stinky" Ignatz
step
    .goto 1445,66.34,45.47
    >>Talk to |cRXP_FRIENDLY_Morgan Stern|r
    .turnin 1222 >>Turn in Stinky's Escape
    .target Morgan Stern
step
    .goto 1445,29.83,48.24
    >>Click the |cRXP_PICK_Theramore Guard Badge|r
    .accept 1252 >>Accept Lieutenant Paval Reethe
step
    .goto 1445,41.01,75.73
    >>Talk to |cRXP_FRIENDLY_Drazzit Dripvalve|r
    .accept 98215 >>Accept Dragon Scales, Post Burnt Tails
    .accept 98205 >>Accept Whelps are the Worst!
    .target Drazzit Dripvalve
step
    .goto 1445,40.97,75.68
    >>Talk to |cRXP_FRIENDLY_Gizzix Grimegurgle|r
    .accept 98231 >>Accept Active Ingredient
    .target Gizzix Grimegurgle
step
    .goto 1445,47.22,74.47
    >>Collect |cRXP_LOOT_[Shed Dark Dragonscale]|r from |cRXP_ENEMY_Searing Hatchling|r, |cRXP_ENEMY_Searing Whelp|r, |cRXP_ENEMY_Firemane Scout|r. Kill |cRXP_ENEMY_Searing Hatchling|r. Kill |cRXP_ENEMY_Searing Whelp|r. Collect |cRXP_LOOT_[Wyrmtail]|r from |cRXP_PICK_Wyrmtail|r
    *Bring 20 Shed Dark Dragonscales to Drazzit Dripvalve.
    *Slay 8 Searing Hatchlings and 8 Searing Whelps.
    *Bring 10 Wyrmtail to Gizzix Grimegurgle.
    .complete 98215,1 --Dragon Scales, Post Burnt Tails
    .complete 98205,1 --Whelps are the Worst!
    .complete 98205,2 --Whelps are the Worst!
    .complete 98231,1 --Active Ingredient
    .mob Searing Hatchling
    .mob Searing Whelp
step
    .goto 1445,41.01,75.73
    >>Talk to |cRXP_FRIENDLY_Drazzit Dripvalve|r
    .turnin 98215 >>Turn in Dragon Scales, Post Burnt Tails
    .turnin 98205 >>Turn in Whelps are the Worst!
    .target Drazzit Dripvalve
step
    .goto 1445,40.97,75.68
    >>Talk to |cRXP_FRIENDLY_Gizzix Grimegurgle|r
    .turnin 98231 >>Turn in Active Ingredient
    .target Gizzix Grimegurgle
step
    .goto 1445,68.21,48.62
    >>Talk to |cRXP_FRIENDLY_Captain Garran Vimes|r
    .turnin 1252 >>Turn in Lieutenant Paval Reethe
    .accept 1259 >>Accept Lieutenant Paval Reethe
    .target Captain Garran Vimes
step
    .goto 1445,68.05,48.11
    >>Talk to |cRXP_FRIENDLY_Adjutant Tesoran|r
    .turnin 1259 >>Turn in Lieutenant Paval Reethe
    .accept 1285 >>Accept Daelin's Men
    .target Adjutant Tesoran
step
    .goto 1445,68.21,48.62
    >>Talk to |cRXP_FRIENDLY_Captain Garran Vimes|r
    .turnin 1285 >>Turn in Daelin's Men
    .accept 1286 >>Accept The Deserters
    .target Captain Garran Vimes
step
    .goto 1445,36.09,54.31
    >>Talk to |cRXP_FRIENDLY_Balos Jacken|r
    .turnin 1286 >>Turn in The Deserters
    .accept 1287 >>Accept The Deserters
    .target Balos Jacken
step
    .goto 1445,68.21,48.62
    >>Talk to |cRXP_FRIENDLY_Captain Garran Vimes|r
    .turnin 1287 >>Turn in The Deserters
    .target Captain Garran Vimes
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 40-49
#name 44-44 Shen'dralas
#displayname 44-44 Shen'dralas
#next 44-45 Searing Gorge
step
    .zone 2652 >>Travel to Shen'dralas
    *How: Ride south out of Desolace through the Valley of Bones (nearest flight path: Nijel's Point).
    *Level for this part: 44-44. 13 quests, roughly 1 h.
step
    .goto 2652,20.93,22.68
    >>Talk to |cRXP_FRIENDLY_Nerlokh|r
    .accept 93058 >>Accept Saving Our Own
    .target Nerlokh
step
    .goto 2652,20.93,22.68
    >>Talk to |cRXP_FRIENDLY_Nerlokh|r
    .turnin 93058 >>Turn in Saving Our Own
    .target Nerlokh
step
    .goto 2652,43.65,34.31
    >>Click the |cRXP_PICK_Shen'dralar Pylon|r
    .accept 92914 >>Accept Strange Pylons
step
    .goto 2652,59.27,53.93
    >>Talk to |cRXP_FRIENDLY_Hagiak|r
    .accept 93129 >>Accept Threat of Starvation
    .target Hagiak
step
    .goto 2652,59.27,53.93
    >>Talk to |cRXP_FRIENDLY_Hagiak|r
    .turnin 93129 >>Turn in Threat of Starvation
    .target Hagiak
step
    .goto 2652,72.76,23.11
    >>Eastern pylon found
    *Explore Shen'dralas in an effort to find other pylons like the one you found.
    .complete 92914,1 --Strange Pylons
step
    .goto 2652,35.17,46.61
    >>Talk to |cRXP_FRIENDLY_Mordent Evenshade|r
    .turnin 92914 >>Turn in Strange Pylons
    .accept 96010 >>Accept Fragments of the Pylons
    .target Mordent Evenshade
step
    .goto 1443,68.05,78.92
    >>Collect |cRXP_LOOT_[Pylon Fragment]|r from |cRXP_PICK_Pylon Shard|r
    *Recover shards and fragments of the pylons, found guarded at the Magram and Gelkis villages. Return them to Mordent Evenshade.
    .complete 96010,1 --Fragments of the Pylons
step
    .goto 1443,36.18,85.64
    >>Collect |cRXP_LOOT_[Pylon Shard]|r from |cRXP_PICK_Pylon Shard|r
    *Recover shards and fragments of the pylons, found guarded at the Magram and Gelkis villages. Return them to Mordent Evenshade.
    .complete 96010,2 --Fragments of the Pylons
step
    .goto 2652,35.17,46.61
    >>Talk to |cRXP_FRIENDLY_Mordent Evenshade|r
    .turnin 96010 >>Turn in Fragments of the Pylons
    .accept 96018 >>Accept Powering the Pylons
    .target Mordent Evenshade
step
    .goto 2652,35.17,46.61
    >>Talk to |cRXP_FRIENDLY_Mordent Evenshade|r
    .turnin 96018 >>Turn in Powering the Pylons
    .accept 93016 >>Accept A Brief History Lesson
    .target Mordent Evenshade
step
    .goto 2652,35.17,46.61
    >>Talk to |cRXP_FRIENDLY_Mordent Evenshade|r
    .turnin 93016 >>Turn in A Brief History Lesson
    .accept 93394 >>Accept Meeting the Magister
    .target Mordent Evenshade
step
    .goto 2652,47.37,76.46
    >>Talk to |cRXP_FRIENDLY_Magister Kirandis|r
    .turnin 93394 >>Turn in Meeting the Magister
    .target Magister Kirandis
step
    .goto 2652,46,78.22
    >>Talk to |cRXP_FRIENDLY_Historian Biraxas|r
    .accept 99257 >>Accept A Heart of Crystal
    .target Historian Biraxas
step
    .goto 2652,42,79.02
    >>Talk to |cRXP_FRIENDLY_Vindael|r
    .accept 93450 >>Accept Phantasmal Problems
    .target Vindael
step
    >>Collect |cRXP_LOOT_[Phantasmal Blade]|r
    *Take Vindael's unfinished sword and figure out a way to usher it into the spirit realm, then return the Phantasmal Blade to him at Shen'dralas.
    .complete 93450,1 --Phantasmal Problems
step
    .goto 2652,42,79.02
    >>Talk to |cRXP_FRIENDLY_Vindael|r
    .turnin 93450 >>Turn in Phantasmal Problems
    .accept 93546 >>Accept Spectral Iron Ore
    .target Vindael
step
    .goto 2652,53.32,76.02
    >>Talk to |cRXP_FRIENDLY_Mithera|r
    .accept 93341 >>Accept Forlorn Gardens
    .target Mithera
step
    .goto 2652,52.76,70.97
    >>Collect |cRXP_LOOT_[Spectral Iron Ore]|r from |cRXP_PICK_Spectral Iron Deposit|r, |cRXP_PICK_Spectral Iron Deposit|r
    *Search for Spectral Iron Deposits around Shen'dralas and collect 10 Spectral Iron Ore. Return to Vindael in Shen'dralas once you have found enough.
    .complete 93546,1 --Spectral Iron Ore
step
    .goto 2652,42,79.02
    >>Talk to |cRXP_FRIENDLY_Vindael|r
    .turnin 93546 >>Turn in Spectral Iron Ore
    .accept 96060 >>Accept Tempered Expectations
    .target Vindael
step
    .goto 2652,42,79.02
    >>Talk to |cRXP_FRIENDLY_Vindael|r
    .turnin 96060 >>Turn in Tempered Expectations
    .target Vindael
step
    .goto 2652,70.21,79.71
    >>Pedestal examined
    *Investigate the Forlorn Gardens near Shen'dralas and then return to Mithera at the nearby temple.
    .complete 93341,1 --Forlorn Gardens
step
    .goto 2652,53.32,76.02
    >>Talk to |cRXP_FRIENDLY_Mithera|r
    .turnin 93341 >>Turn in Forlorn Gardens
    .accept 93594 >>Accept Word of the Woods
    .target Mithera
step
    .goto 2652,69.66,71.78
    >>Talk to |cRXP_FRIENDLY_Woodwyrd|r
    .turnin 93594 >>Turn in Word of the Woods
    .target Woodwyrd
step
    .goto 2652,43.42,33.73
    >>Collect |cRXP_LOOT_[Depleted Crystal Heart]|r from |cRXP_ENEMY_Decrepit Pylon Protector|r
    *Slay a Decrepit Pylon Protector for their Depleted Crystal Heart and bring it to Historian Biraxas within the temple of Shen'dralas.
    .complete 99257,1 --A Heart of Crystal
    .mob Decrepit Pylon Protector
step
    .goto 2652,46,78.22
    >>Talk to |cRXP_FRIENDLY_Historian Biraxas|r
    .turnin 99257 >>Turn in A Heart of Crystal
    .target Historian Biraxas
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 40-49
#name 44-45 Searing Gorge
#displayname 44-45 Searing Gorge
#next 45-46 Un'Goro Crater
step
    .zone 1427 >>Travel to Searing Gorge
    *How: Fly to Thorium Point.
    *Level for this part: 44-45. 13 quests, roughly 1 h 35 min.
step
    #completewith next
    .goto 1427,37.94,30.86,15,0
    >>Talk to |cRXP_FRIENDLY_Lanie Reed|r if you don't have this flight path yet
    .fp Lanie Reed >>Get the flight path
    .target Lanie Reed
step
    .goto 1427,38.58,27.81
    >>Talk to |cRXP_FRIENDLY_Hansel Heavyhands|r
    .accept 7723 >>Accept Curse These Fat Fingers
    .accept 7724 >>Accept Fiery Menace!
    .accept 7727 >>Accept Incendosaurs? Whateverosaur is More Like It
    .target Hansel Heavyhands
step
    .goto 1427,37.65,26.47
    >>Click the |cRXP_PICK_Wanted/Missing/Lost & Found|r
    .accept 7728 >>Accept STOLEN: Smithing Tuyere and Lookout's Spyglass
    .accept 7729 >>Accept JOB OPPORTUNITY: Culling the Competition
step
    .goto 1427,42.99,36.43
    >>Kill |cRXP_ENEMY_Dark Iron Taskmaster|r
    *Slay 15 Dark Iron Taskmasters and 15 Dark Iron Slavers. Return to Taskmaster Scrange in the Searing Gorge once you have accomplished this task.
    .complete 7729,1 --JOB OPPORTUNITY: Culling the Competition
    .mob Dark Iron Taskmaster
step
    .goto 1427,39.06,38.99
    >>Talk to |cRXP_FRIENDLY_Kalaran Windblade|r
    .accept 3441 >>Accept Divine Retribution
    .target Kalaran Windblade
step
    .goto 1427,39.06,38.99
    >>Talk to |cRXP_FRIENDLY_Kalaran Windblade|r
    .turnin 3441 >>Turn in Divine Retribution
    .accept 3442 >>Accept The Flawless Flame
    .target Kalaran Windblade
step
    .goto 1427,37.23,45.15
    >>Kill |cRXP_ENEMY_Heavy War Golem|r. Collect |cRXP_LOOT_[Smithing Tuyere]|r from |cRXP_ENEMY_Dark Iron Steamsmith|r. Collect |cRXP_LOOT_[Golem Oil]|r from |cRXP_ENEMY_Tempered War Golem|r, |cRXP_ENEMY_Heavy War Golem|r, |cRXP_ENEMY_Magma Elemental|r
    *Hansel Heavyhands wants you to kill 20 Heavy War Golems.
    *Find and return the Smithing Tuyere and Lookout's Spyglass to Taskmaster Scrange in the Searing Gorge.
    *Collect 4 Hearts of Flame and 4 globes of Golem Oil and return the items to Kalaran Windblade.
    .complete 7723,1 --Curse These Fat Fingers
    .complete 7728,1 --STOLEN: Smithing Tuyere and Lookout's Spyglass
    .complete 3442,2 --The Flawless Flame
    .mob Heavy War Golem
    .mob Dark Iron Steamsmith
    .mob Tempered War Golem
step
    .goto 1427,37.69,49.65
    >>Loot |cRXP_LOOT_[Grimesilt Outhouse Key]|r from |cRXP_ENEMY_Dark Iron Steamsmith|r, |cRXP_ENEMY_Dark Iron Slaver|r, |cRXP_ENEMY_Dark Iron Taskmaster|r, then click it to start the quest
    .accept 4451 >>Accept The Key to Freedom
    .use 11818
    .mob Dark Iron Steamsmith
    .mob Dark Iron Slaver
step
    .goto 1427,43.2,51.97
    >>Kill |cRXP_ENEMY_Dark Iron Slaver|r
    *Slay 15 Dark Iron Taskmasters and 15 Dark Iron Slavers. Return to Taskmaster Scrange in the Searing Gorge once you have accomplished this task.
    .complete 7729,2 --JOB OPPORTUNITY: Culling the Competition
    .mob Dark Iron Slaver
step
    .goto 1427,52.24,50.37
    >>Collect |cRXP_LOOT_[Lookout's Spyglass]|r from |cRXP_ENEMY_Dark Iron Lookout|r. Collect |cRXP_LOOT_[Heart of Flame]|r from |cRXP_ENEMY_Blazing Elemental|r, |cRXP_ENEMY_Inferno Elemental|r, |cRXP_ENEMY_Magma Elemental|r
    *Find and return the Smithing Tuyere and Lookout's Spyglass to Taskmaster Scrange in the Searing Gorge.
    *Collect 4 Hearts of Flame and 4 globes of Golem Oil and return the items to Kalaran Windblade.
    .complete 7728,2 --STOLEN: Smithing Tuyere and Lookout's Spyglass
    .complete 3442,1 --The Flawless Flame
    .mob Dark Iron Lookout
    .mob Blazing Elemental
    .mob Inferno Elemental
step
    .goto 1427,65.59,62.17
    >>Click the |cRXP_PICK_Wooden Outhouse|r
    .accept 4449 >>Accept Caught!
step
    .goto 1427,63.92,60.99
    >>Talk to |cRXP_FRIENDLY_Dorius Stonetender|r
    .accept 3367 >>Accept Suntara Stones
    .target Dorius Stonetender
step
    .goto 1427,65.59,62.17
    >>Click the |cRXP_PICK_Wooden Outhouse|r
    .turnin 4451 >>Turn in The Key to Freedom
step
    .goto 1427,62.76,62.27
    >>Kill |cRXP_ENEMY_Dark Iron Geologist|r
    *Kill 8 Dark Iron Geologists and bring 15 pieces of Silk Cloth to the person locked in the outhouse in Searing Gorge.
    .complete 4449,1 --Caught!
    .mob Dark Iron Geologist
step
    .goto 1427,73.52,82.31
    >>Loot |cRXP_LOOT_[Margol's Horn]|r from |cRXP_ENEMY_Margol the Rager|r, then click it to start the quest
    .accept 3181 >>Accept The Horn of the Beast
    .use 10000
    .mob Margol the Rager
step
    .goto 1427,26.41,75.38
    >>Kill |cRXP_ENEMY_Greater Lava Spider|r
    *Hansel Heavyhands wants you to kill 20 Greater Lava Spiders in the Searing Gorge. You can find Greater Lava Spiders in the plateaus and lava pools of the Searing Gorge.
    .complete 7724,1 --Fiery Menace!
    .mob Greater Lava Spider
step
    .goto 1427,39.06,38.99
    >>Talk to |cRXP_FRIENDLY_Kalaran Windblade|r
    .turnin 3442 >>Turn in The Flawless Flame
    .accept 3443 >>Accept Forging the Shaft
    .target Kalaran Windblade
step
    .goto 1427,40.32,36.29
    >>Collect |cRXP_LOOT_[Thorium Plated Dagger]|r from |cRXP_ENEMY_Dark Iron Marksman|r, |cRXP_ENEMY_Dark Iron Steamsmith|r, |cRXP_ENEMY_Slave Worker|r
    *Bring 8 Thorium Plated Daggers to Kalaran Windblade.
    .complete 3443,1 --Forging the Shaft
    .mob Dark Iron Marksman
    .mob Dark Iron Steamsmith
step
    .goto 1427,39.06,38.99
    >>Talk to |cRXP_FRIENDLY_Kalaran Windblade|r
    .turnin 3443 >>Turn in Forging the Shaft
    .target Kalaran Windblade
step
    .goto 1427,38.58,27.81
    >>Talk to |cRXP_FRIENDLY_Hansel Heavyhands|r
    .turnin 7723 >>Turn in Curse These Fat Fingers
    .turnin 7724 >>Turn in Fiery Menace!
    .target Hansel Heavyhands
step
    .goto 1427,38.97,27.51
    >>Talk to |cRXP_FRIENDLY_Taskmaster Scrange|r
    .turnin 7728 >>Turn in STOLEN: Smithing Tuyere and Lookout's Spyglass
    .turnin 7729 >>Turn in JOB OPPORTUNITY: Culling the Competition
    .target Taskmaster Scrange
step
    .goto 1427,48.46,26.48
    >>Kill |cRXP_ENEMY_Incendosaur|r
    *Hansel Heavyhands wants you to kill 20 Incendosaurs.
    .complete 7727,1 --Incendosaurs? Whateverosaur is More Like It
    .mob Incendosaur
step
    .goto 1427,38.58,27.81
    >>Talk to |cRXP_FRIENDLY_Hansel Heavyhands|r
    .turnin 7727 >>Turn in Incendosaurs? Whateverosaur is More Like It
    .target Hansel Heavyhands
step
    .goto 1427,74.45,19.29
    >>Click the |cRXP_PICK_Singed Letter|r
    .turnin 3367 >>Turn in Suntara Stones
    .accept 3368 >>Accept Suntara Stones
step
    .goto 1432,18.18,84.01
    >>Talk to |cRXP_FRIENDLY_Mountaineer Pebblebitty|r
    .turnin 3181 >>Turn in The Horn of the Beast
    .target Mountaineer Pebblebitty
step
    .goto 1455,71.5,15.74
    >>Talk to |cRXP_FRIENDLY_Curator Thorius|r
    .turnin 3368 >>Turn in Suntara Stones
    .target Curator Thorius
step
    .goto 1431,76.88,70.25
    >>Collect |cRXP_LOOT_[Silk Cloth]|r from |cRXP_ENEMY_Flesh Eater|r, |cRXP_ENEMY_Skeletal Warrior|r, |cRXP_ENEMY_Skeletal Horror|r
    *Kill 8 Dark Iron Geologists and bring 15 pieces of Silk Cloth to the person locked in the outhouse in Searing Gorge.
    .complete 4449,2 --Caught!
    .mob Flesh Eater
    .mob Skeletal Warrior
step
    .goto 1427,65.59,62.17
    >>Click the |cRXP_PICK_Wooden Outhouse|r
    .turnin 4449 >>Turn in Caught!
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 40-49
#name 45-46 Un'Goro Crater
#displayname 45-46 Un'Goro Crater
#next 46-47 Azshara
step
    .zone 1449 >>Travel to Un'Goro Crater
    *How: Fly to Marshal's Refuge.
    *Level for this part: 45-46. 15 quests, roughly 1 h 40 min.
step
    #completewith next
    .goto 1449,45.23,5.83,15,0
    >>Talk to |cRXP_FRIENDLY_Gryfe|r if you don't have this flight path yet
    .fp Gryfe >>Get the flight path
    .target Gryfe
step
    .goto 1449,43.5,7.42
    >>Talk to |cRXP_FRIENDLY_Spark Nilminer|r
    .accept 3882 >>Accept Roll the Bones
    .target Spark Nilminer
step
    .goto 1449,43.89,7.24
    >>Talk to |cRXP_FRIENDLY_Hol'anyee Marshal|r
    .accept 3883 >>Accept Alien Ecology
    .target Hol'anyee Marshal
step
    >>Collect |cRXP_LOOT_[Hive Wall Sample]|r
    *Use the Scraping Vial to collect a Hive Wall Sample from one of the Gorishi hive hatcheries in Un'Goro Crater. Look for the chambers with the hanging larval spawns.
    .complete 3883,1 --Alien Ecology
step
    .goto 1449,43.89,7.24
    >>Talk to |cRXP_FRIENDLY_Hol'anyee Marshal|r
    .turnin 3883 >>Turn in Alien Ecology
    .target Hol'anyee Marshal
step
    .goto 1449,42.94,9.64
    >>Talk to |cRXP_FRIENDLY_Muigin|r
    .accept 4141 >>Accept Muigin and Larion
    .target Muigin
step
    .goto 1449,44.23,11.59
    >>Talk to |cRXP_FRIENDLY_Shizzle|r
    .accept 4503 >>Accept Shizzle's Flyer
    .target Shizzle
step
    .goto 1449,66.96,30.14
    >>Collect |cRXP_LOOT_[Bloodpetal]|r from |cRXP_ENEMY_Bloodpetal Lasher|r, |cRXP_ENEMY_Bloodpetal Flayer|r, |cRXP_ENEMY_Bloodpetal Thresher|r
    *Collect 15 Bloodpetals and return to Muigin.
    .complete 4141,1 --Muigin and Larion
    .mob Bloodpetal Lasher
    .mob Bloodpetal Flayer
step
    .goto 1449,42.94,9.64
    >>Talk to |cRXP_FRIENDLY_Muigin|r
    .turnin 4141 >>Turn in Muigin and Larion
    .accept 4142 >>Accept A Visit to Gregan
    .target Muigin
step
    .goto 1449,48.93,65.03
    >>Collect |cRXP_LOOT_[Webbed Diemetradon Scale]|r from |cRXP_ENEMY_Young Diemetradon|r, |cRXP_ENEMY_Diemetradon|r, |cRXP_ENEMY_Elder Diemetradon|r
    *Collect 8 Webbed Diemetradon Scales and 8 Webbed Pterrordax Scales for Shizzle in Marshal's Refuge.
    .complete 4503,1 --Shizzle's Flyer
    .mob Young Diemetradon
    .mob Diemetradon
step
    .goto 1449,63.02,68.6
    >>Click the |cRXP_PICK_A Wrecked Raft|r
    .accept 3844 >>Accept It's a Secret to Everybody
step
    .goto 1449,63.11,69.06
    >>Click the |cRXP_PICK_A Small Pack|r
    .turnin 3844 >>Turn in It's a Secret to Everybody
    .accept 3845 >>Accept It's a Secret to Everybody
step
    >>Collect |cRXP_LOOT_[Large Compass]|r. Collect |cRXP_LOOT_[Curled Map Parchment]|r. Collect |cRXP_LOOT_[Lion-headed Key]|r
    *Examine the items inside the pack and bring them to their owner.
    .complete 3845,1 --It's a Secret to Everybody
    .complete 3845,2 --It's a Secret to Everybody
    .complete 3845,3 --It's a Secret to Everybody
step
    .goto 1449,62.67,76.26
    >>Loot |cRXP_LOOT_[A Mangled Journal]|r from |cRXP_ENEMY_Devilsaur|r, |cRXP_ENEMY_Ironhide Devilsaur|r, |cRXP_ENEMY_Tyrant Devilsaur|r, then click it to start the quest
    .accept 3884 >>Accept Williden's Journal
    .use 11116
    .mob Devilsaur
    .mob Ironhide Devilsaur
step
    .goto 1449,35.52,74.75
    >>Collect |cRXP_LOOT_[Dinosaur Bone]|r from |cRXP_ENEMY_Stegodon|r, |cRXP_ENEMY_Plated Stegodon|r, |cRXP_ENEMY_Spiked Stegodon|r
    *Bring 8 Dinosaur Bones to Spark Nilminer in Un'Goro Crater.
    .complete 3882,1 --Roll the Bones
    .mob Stegodon
    .mob Plated Stegodon
step
    .goto 1449,23.15,41.08
    >>Collect |cRXP_LOOT_[Webbed Pterrordax Scale]|r from |cRXP_ENEMY_Fledgling Pterrordax|r, |cRXP_ENEMY_Pterrordax|r, |cRXP_ENEMY_Frenzied Pterrordax|r
    *Collect 8 Webbed Diemetradon Scales and 8 Webbed Pterrordax Scales for Shizzle in Marshal's Refuge.
    .complete 4503,2 --Shizzle's Flyer
    .mob Fledgling Pterrordax
    .mob Pterrordax
step
    .goto 1449,44.23,11.59
    >>Talk to |cRXP_FRIENDLY_Shizzle|r
    .turnin 4503 >>Turn in Shizzle's Flyer
    .target Shizzle
step
    .goto 1449,43.5,7.42
    >>Talk to |cRXP_FRIENDLY_Spark Nilminer|r
    .turnin 3882 >>Turn in Roll the Bones
    .target Spark Nilminer
step
    .goto 1449,44.66,8.1
    >>Talk to |cRXP_FRIENDLY_Linken|r
    .turnin 3845 >>Turn in It's a Secret to Everybody
    .target Linken
step
    .goto 1449,43.95,7.14
    >>Talk to |cRXP_FRIENDLY_Williden Marshal|r
    .turnin 3884 >>Turn in Williden's Journal
    .target Williden Marshal
step
    .goto 1449,44.66,8.1
    >>Talk to |cRXP_FRIENDLY_Linken|r
    .accept 3908 >>Accept It's a Secret to Everybody
    .target Linken
step
    .goto 1444,45.12,25.57
    >>Talk to |cRXP_FRIENDLY_Gregan Brewspewer|r
    .turnin 4142 >>Turn in A Visit to Gregan
    .accept 4143 >>Accept Haze of Evil
    .target Gregan Brewspewer
step
    >>Collect |cRXP_LOOT_[Atal'ai Haze]|r from |cRXP_ENEMY_Murk Worm|r, |cRXP_ENEMY_Saturated Ooze|r, |cRXP_ENEMY_Deep Lurker|r
    *Collect 5 samples of Atal'ai Haze, then return to Muigin in Un'Goro Crater.
    .complete 4143,1 --Haze of Evil
    .mob Murk Worm
    .mob Saturated Ooze
step
    .goto 1452,31.27,45.16
    >>Talk to |cRXP_FRIENDLY_Donova Snowden|r
    .turnin 3908 >>Turn in It's a Secret to Everybody
    .accept 3909 >>Accept The Videre Elixir
    .target Donova Snowden
step
    >>Collect |cRXP_LOOT_[Videre Elixir]|r
    *Seek out Gregan Brewspewer in northern Feralas. From him, learn how you may acquire the Videre Elixir, then return to Donova Snowden in Winterspring.
    .complete 3909,1 --The Videre Elixir
step
    .goto 1452,31.27,45.16
    >>Talk to |cRXP_FRIENDLY_Donova Snowden|r
    .turnin 3909 >>Turn in The Videre Elixir
    .accept 3912 >>Accept Meet at the Grave
    .target Donova Snowden
step
    .goto 1449,42.94,9.64
    >>Talk to |cRXP_FRIENDLY_Muigin|r
    .turnin 4143 >>Turn in Haze of Evil
    .target Muigin
step
    .goto 1446,53.92,23.33
    >>Talk to |cRXP_FRIENDLY_Gaeriyan|r
    .turnin 3912 >>Turn in Meet at the Grave
    .accept 3913 >>Accept A Grave Situation
    .target Gaeriyan
step
    .goto 1446,53.81,29.06
    >>Click the |cRXP_PICK_A Conspicuous Gravestone|r
    .turnin 3913 >>Turn in A Grave Situation
    .accept 3914 >>Accept Linken's Sword
step
    .goto 1449,44.66,8.1
    >>Talk to |cRXP_FRIENDLY_Linken|r
    .turnin 3914 >>Turn in Linken's Sword
    .accept 3941 >>Accept A Gnome's Assistance
    .target Linken
step
    .goto 1449,41.92,2.7
    >>Talk to |cRXP_FRIENDLY_J.D. Collie|r
    .turnin 3941 >>Turn in A Gnome's Assistance
    .target J.D. Collie
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 40-49
#name 46-47 Azshara
#displayname 46-47 Azshara
#next 47-48 Blasted Lands/Burning Steppes
step
    .zone 1447 >>Travel to Azshara
    *How: Fly to Talrendis Point.
    *Level for this part: 46-47. 26 quests, roughly 2 h 45 min.
step
    #completewith next
    .goto 1447,11.9,77.59,15,0
    >>Talk to |cRXP_FRIENDLY_Jarrodenus|r if you don't have this flight path yet
    .fp Jarrodenus >>Get the flight path
    .target Jarrodenus
step
    .goto 1447,11.37,78.17
    >>Talk to |cRXP_FRIENDLY_Loh'atu|r
    .accept 5535 >>Accept Spiritual Unrest
    .accept 5536 >>Accept A Land Filled with Hatred
    .target Loh'atu
step
    .goto 1447,11.81,78.36
    >>Talk to |cRXP_FRIENDLY_Commander Truesong|r
    .accept 88807 >>Accept Slay the Spitelash
    .target Commander Truesong
step
    .goto 1447,12.6,77.36
    >>Talk to |cRXP_FRIENDLY_Berdun Cliffbrew|r
    .accept 89001 >>Accept Home on the Range
    .target Berdun Cliffbrew
step
    .goto 1447,16.57,69.4
    >>Kill |cRXP_ENEMY_Highborne Apparition|r. Kill |cRXP_ENEMY_Highborne Lichling|r. Kill |cRXP_ENEMY_Haldarr Satyr|r. Kill |cRXP_ENEMY_Haldarr Trickster|r
    *Destroy 6 Highborne Apparitions and 6 Highborne Lichlings before returning to Loh'atu in Azshara.
    *Kill 6 Haldarr Satyr, 2 Haldarr Tricksters, 2 Haldarr Felsworn and then return to Loh'atu on the border of Ashenvale.
    .complete 5535,1 --Spiritual Unrest
    .complete 5535,2 --Spiritual Unrest
    .complete 5536,1 --A Land Filled with Hatred
    .complete 5536,2 --A Land Filled with Hatred
    .mob Highborne Apparition
    .mob Highborne Lichling
    .mob Haldarr Satyr
    .mob Haldarr Trickster
step
    .goto 1447,20.62,61.92
    >>Talk to |cRXP_FRIENDLY_Sentinel Keldara Sunblade|r
    .accept 88857 >>Accept Saving a Sentinel
    .target Sentinel Keldara Sunblade
step
    .goto 1447,20.54,61.2
    >>Kill |cRXP_ENEMY_Haldarr Felsworn|r
    *Kill 6 Haldarr Satyr, 2 Haldarr Tricksters, 2 Haldarr Felsworn and then return to Loh'atu on the border of Ashenvale.
    .complete 5536,3 --A Land Filled with Hatred
    .mob Haldarr Felsworn
step
    .goto 1447,30.26,54.38
    >>Kill |cRXP_ENEMY_Spitelash Warrior|r. Kill |cRXP_ENEMY_Spitelash Screamer|r
    *Kill 8 Spitelash Warriors and 8 Spitelash Screamers for Commander Truesong in Azshara.
    .complete 88807,1 --Slay the Spitelash
    .complete 88807,2 --Slay the Spitelash
    .mob Spitelash Warrior
    .mob Spitelash Screamer
step
    .goto 1447,42,38.88
    >>Talk to |cRXP_FRIENDLY_Ekkal|r
    .accept 86746 >>Accept The Legashi Threat
    .accept 86752 >>Accept Report to Rageroar
    .target Ekkal
step
    .goto 1447,45.29,22.34
    >>Talk to |cRXP_FRIENDLY_Furze|r
    .accept 86799 >>Accept Encroaching Corruption
    .target Furze
step
    .goto 1447,42.28,20.13
    >>Talk to |cRXP_FRIENDLY_Gatekeeper Rageroar|r
    .turnin 86752 >>Turn in Report to Rageroar
    .target Gatekeeper Rageroar
step
    .goto 1447,41.67,19.54
    >>Talk to |cRXP_FRIENDLY_Elder Bramblesnap|r
    .turnin 86799 >>Turn in Encroaching Corruption
    .target Elder Bramblesnap
step
    .goto 1447,42.28,20.13
    >>Talk to |cRXP_FRIENDLY_Gatekeeper Rageroar|r
    .accept 86791 >>Accept Missing Blackmaw Scouts
    .target Gatekeeper Rageroar
step
    .goto 1447,41.67,19.54
    >>Talk to |cRXP_FRIENDLY_Elder Bramblesnap|r
    .accept 86804 >>Accept An Unlikely Source
    .accept 86812 >>Accept Transmuted Tincture
    .accept 86813 >>Accept Potential Panacea
    .target Elder Bramblesnap
step
    .goto 1447,41.67,19.54
    >>Talk to |cRXP_FRIENDLY_Elder Bramblesnap|r
    .turnin 86812 >>Turn in Transmuted Tincture
    .turnin 86813 >>Turn in Potential Panacea
    .target Elder Bramblesnap
step
    .goto 1447,53.45,21.82
    >>Talk to |cRXP_FRIENDLY_Kim'jael|r
    .accept 3601 >>Accept Kim'jael Indeed!
    .target Kim'jael
step
    .goto 1447,57.7,21.02
    >>Click the |cRXP_PICK_Legashi Cauldron|r
    .turnin 86804 >>Turn in An Unlikely Source
    .accept 86925 >>Accept Toil and Trouble
    .accept 86926 >>Accept Felfire Burn, Cauldron Bubble
    .accept 86927 >>Accept Running Firewater
step
    .goto 1447,58.15,22.81
    >>Kill |cRXP_ENEMY_Legashi Satyr|r. Collect |cRXP_LOOT_[Kim'Jael's Compass]|r from |cRXP_PICK_Kim'jael's Equipment|r. Collect |cRXP_LOOT_[Kim'Jael's Scope]|r from |cRXP_PICK_Kim'jael's Equipment|r. Collect |cRXP_LOOT_[Kim'Jael's Stuffed Chicken]|r from |cRXP_PICK_Kim'jael's Equipment|r. Collect |cRXP_LOOT_[Kim'Jael's Wizzlegoober]|r from |cRXP_PICK_Kim'jael's Equipment|r. Collect |cRXP_LOOT_[Legashi Firewater Recipe]|r from |cRXP_ENEMY_Legashi Satyr|r, |cRXP_ENEMY_Legashi Rogue|r, |cRXP_ENEMY_Legashi Hellcaller|r. Collect |cRXP_LOOT_[Satyrweed]|r. Collect |cRXP_LOOT_[Fel Mote]|r from |cRXP_PICK_Fel Mote|r
    *Kill 5 Legashi Satyr, 5 Legashi Rogues, and 5 Legashi Hellcallers for Ekkal at the Ruins of Eldarth.
    *Search the Thalassian Base Camp for Kim'jael's Compass, Scope, Stuffed Chicken and Wizzlegoober, then return them to him in Azshara.
    *Find a Legashi Firewater Recipe from satyr in the Legashi Encampment.
    *Bring 5 Satyrweed and a Fel Mote to the Legashi Cauldron in the Legashi Encampment.
    .complete 86746,1 --The Legashi Threat
    .complete 3601,1 --Kim'jael Indeed!
    .complete 3601,2 --Kim'jael Indeed!
    .complete 3601,3 --Kim'jael Indeed!
    .complete 3601,4 --Kim'jael Indeed!
    .complete 86925,1 --Toil and Trouble
    .complete 86926,1 --Felfire Burn, Cauldron Bubble
    .complete 86926,2 --Felfire Burn, Cauldron Bubble
    .mob Legashi Satyr
    .mob Legashi Rogue
step
    .goto 1447,57.7,21.02
    >>Click the |cRXP_PICK_Legashi Cauldron|r
    .turnin 86925 >>Turn in Toil and Trouble
    .turnin 86926 >>Turn in Felfire Burn, Cauldron Bubble
step
    .goto 1447,53.45,21.82
    >>Talk to |cRXP_FRIENDLY_Kim'jael|r
    .turnin 3601 >>Turn in Kim'jael Indeed!
    .accept 5534 >>Accept Kim'jael's "Missing" Equipment
    .target Kim'jael
step
    .goto 1447,63.01,21.43
    >>Talk to |cRXP_FRIENDLY_Korsa|r
    .turnin 86791 >>Turn in Missing Blackmaw Scouts
    .accept 86797 >>Accept Return to Rageroar
    .accept 86777 >>Accept Master Feardred
    .target Korsa
step
    .goto 1447,60.57,23.96
    >>Kill |cRXP_ENEMY_Legashi Hellcaller|r. Collect |cRXP_LOOT_[Feardred's Amulet]|r from |cRXP_ENEMY_Master Feardred|r
    *Kill 5 Legashi Satyr, 5 Legashi Rogues, and 5 Legashi Hellcallers for Ekkal at the Ruins of Eldarth.
    *Kill Master Feardred, and bring his amulet to Korsa.
    .complete 86746,3 --The Legashi Threat
    .complete 86777,1 --Master Feardred
    .mob Legashi Hellcaller
    .mob Master Feardred
step
    .goto 1447,63.01,21.43
    >>Talk to |cRXP_FRIENDLY_Korsa|r
    .turnin 86777 >>Turn in Master Feardred
    .target Korsa
step
    .goto 1447,66.41,16.83
    >>Kill |cRXP_ENEMY_Legashi Rogue|r
    *Kill 5 Legashi Satyr, 5 Legashi Rogues, and 5 Legashi Hellcallers for Ekkal at the Ruins of Eldarth.
    .complete 86746,2 --The Legashi Threat
    .mob Legashi Rogue
step
    .goto 1447,41.67,19.54
    >>Talk to |cRXP_FRIENDLY_Elder Bramblesnap|r
    .turnin 86927 >>Turn in Running Firewater
    .target Elder Bramblesnap
step
    .goto 1447,42.28,20.13
    >>Talk to |cRXP_FRIENDLY_Gatekeeper Rageroar|r
    .turnin 86797 >>Turn in Return to Rageroar
    .target Gatekeeper Rageroar
step
    .goto 1447,42,38.88
    >>Talk to |cRXP_FRIENDLY_Ekkal|r
    .turnin 86746 >>Turn in The Legashi Threat
    .target Ekkal
step
    .goto 1447,44.37,53.93
    >>Collect |cRXP_LOOT_[Some Rune]|r from |cRXP_ENEMY_Spitelash Siren|r, |cRXP_ENEMY_Spitelash Myrmidon|r, |cRXP_ENEMY_Spitelash Battlemaster|r
    *Find Some Rune that the naga have in their possession in the Ruins of Eldarath and return it to Kim'jael in Azshara.
    .complete 5534,1 --Kim'jael's "Missing" Equipment
    .mob Spitelash Siren
    .mob Spitelash Myrmidon
step
    .goto 1447,54.55,78.75
    >>Collect |cRXP_LOOT_[Mosshoof Hide]|r from |cRXP_ENEMY_Mosshoof Runner|r, |cRXP_ENEMY_Mosshoof Stag|r, |cRXP_ENEMY_Mosshoof Courser|r
    *Bring 5 Mosshoof Hides to Berdun Cliffbrew at Talrendis Point in Azshara.
    .complete 89001,1 --Home on the Range
    .mob Mosshoof Runner
    .mob Mosshoof Stag
step
    .goto 1447,11.37,78.17
    >>Talk to |cRXP_FRIENDLY_Loh'atu|r
    .turnin 5535 >>Turn in Spiritual Unrest
    .turnin 5536 >>Turn in A Land Filled with Hatred
    .target Loh'atu
step
    .goto 1447,11.81,78.36
    >>Talk to |cRXP_FRIENDLY_Commander Truesong|r
    .turnin 88807 >>Turn in Slay the Spitelash
    .turnin 88857 >>Turn in Saving a Sentinel
    .target Commander Truesong
step
    .goto 1447,12.6,77.36
    >>Talk to |cRXP_FRIENDLY_Berdun Cliffbrew|r
    .turnin 89001 >>Turn in Home on the Range
    .accept 89228 >>Accept Winter Frontier Fishery
    .accept 89013 >>Accept Gettin' Buzzed
    .target Berdun Cliffbrew
step
    .goto 1447,11.81,78.36
    >>Talk to |cRXP_FRIENDLY_Commander Truesong|r
    .accept 88809 >>Accept Preserving Eldarath
    .accept 88821 >>Accept Making Contact
    .target Commander Truesong
step
    >>Collect |cRXP_LOOT_[Winter Squid]|r
    *Fish up 10 Winter Squid for Berdun Cliffbrew at Talrendis Point, in Azshara.
    .complete 89228,1 --Winter Frontier Fishery
step
    .goto 1447,12.6,77.36
    >>Talk to |cRXP_FRIENDLY_Berdun Cliffbrew|r
    .turnin 89228 >>Turn in Winter Frontier Fishery
    .target Berdun Cliffbrew
step
    .goto 1447,17.81,54.94
    >>Collect |cRXP_LOOT_[Wild Honey]|r from |cRXP_ENEMY_Honey Wasp|r
    *Gather 5 Wild Honey from Wasp Nests using Berdun's Pellet Gun.
    .complete 89013,1 --Gettin' Buzzed
    .mob Honey Wasp
step
    .goto 1447,12.6,77.36
    >>Talk to |cRXP_FRIENDLY_Berdun Cliffbrew|r
    .turnin 89013 >>Turn in Gettin' Buzzed
    .target Berdun Cliffbrew
step
    .goto 1447,40.5,52.09
    >>Collect |cRXP_LOOT_[Eldarath Relic]|r from |cRXP_ENEMY_Spitelash Serpent Guard|r, |cRXP_ENEMY_Spitelash Siren|r, |cRXP_ENEMY_Spitelash Myrmidon|r. Collect |cRXP_LOOT_[Lord Sarthiss' Head]|r from |cRXP_ENEMY_Lord Sarthiss|r
    *Collect 12 Eldarath Relics from Spitelash Serpent Guards, Spitelash Sirens, and Spitelash Myrmidons, and Lord Sarthiss' Head for Commander Truesong in Azshara.
    .complete 88809,1 --Preserving Eldarath
    .complete 88809,2 --Preserving Eldarath
    .mob Spitelash Serpent Guard
    .mob Spitelash Siren
    .mob Lord Sarthiss
step
    .goto 1447,50.56,42.7
    >>Talk to |cRXP_FRIENDLY_Saria Fairmoon|r
    .turnin 88821 >>Turn in Making Contact
    .accept 88917 >>Accept Slithering Looters
    .target Saria Fairmoon
step
    .goto 1447,40.98,50.55
    >>Collect |cRXP_LOOT_[Staff of Archmage Selwyn]|r from |cRXP_PICK_Sesspira's Hoard|r
    *Find the Staff of Archmage Selwyn among the Ruins of Eldarath, and bring it to Saria Fairmoon in Azshara.
    .complete 88917,1 --Slithering Looters
step
    .goto 1447,50.56,42.7
    >>Talk to |cRXP_FRIENDLY_Saria Fairmoon|r
    .turnin 88917 >>Turn in Slithering Looters
    .accept 88884 >>Accept Highborne Tablets
    .target Saria Fairmoon
step
    .goto 1447,49.16,49.58
    >>Collect |cRXP_LOOT_[Tablet of Creation]|r from |cRXP_PICK_Highborne Tablet|r. Collect |cRXP_LOOT_[Tablet of Manipulation]|r from |cRXP_PICK_Highborne Tablet|r
    *Find the three highborne tablets among the ruins of Southridge Beach, then bring them to Saria Fairmoon in Azshara.
    .complete 88884,1 --Highborne Tablets
    .complete 88884,2 --Highborne Tablets
step
    .goto 1447,49.99,63.8
    >>Collect |cRXP_LOOT_[Tablet of Power]|r from |cRXP_PICK_Highborne Tablet|r
    *Find the three highborne tablets among the ruins of Southridge Beach, then bring them to Saria Fairmoon in Azshara.
    .complete 88884,3 --Highborne Tablets
step
    .goto 1447,50.56,42.7
    >>Talk to |cRXP_FRIENDLY_Saria Fairmoon|r
    .turnin 88884 >>Turn in Highborne Tablets
    .accept 89037 >>Accept Murloc Thieves
    .target Saria Fairmoon
step
    .goto 1447,53.45,21.82
    >>Talk to |cRXP_FRIENDLY_Kim'jael|r
    .turnin 5534 >>Turn in Kim'jael's "Missing" Equipment
    .target Kim'jael
step
    .goto 1447,87.37,31.52
    >>Collect |cRXP_LOOT_[Memory Crystal]|r from |cRXP_ENEMY_Razorgill|r
    *Take the Memory Crystal from Razorgill near the Tower of Eldara, and bring it to Saria Fairmoon in Azshara.
    .complete 89037,1 --Murloc Thieves
    .mob Razorgill
step
    .goto 1447,50.56,42.7
    >>Talk to |cRXP_FRIENDLY_Saria Fairmoon|r
    .turnin 89037 >>Turn in Murloc Thieves
    .target Saria Fairmoon
step
    .goto 1447,11.81,78.36
    >>Talk to |cRXP_FRIENDLY_Commander Truesong|r
    .turnin 88809 >>Turn in Preserving Eldarath
    .target Commander Truesong
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 40-49
#name 47-48 Blasted Lands/Burning Steppes
#displayname 47-48 Blasted Lands/Burning Steppes
#next 48-49 Western/Eastern Plaguelands
step
    #completewith next
    +|cRXP_WARN_On the way: lead-in quests in Searing Gorge that open quests in Blasted Lands|r
step
    .goto 1427,14.55,36.42
    >>Click the |cRXP_PICK_Weathered Etching|r
    .accept 81900 >>Accept The Burning Beast
step
    .zone 1419 >>Travel to Blasted Lands
    *How: In Kalimdor? Boat Auberdine -> Stormwind Harbor first. Then fly to Nethergarde Keep or Morgan's Vigil.
    *Level for this part: 47-48. 15 quests, roughly 2 h 10 min.
step
    #completewith next
    .goto 1419,65.54,24.34,15,0
    >>Talk to |cRXP_FRIENDLY_Alexandra Constantine|r if you don't have this flight path yet
    .fp Alexandra Constantine >>Get the flight path
    .target Alexandra Constantine
step
    .goto 1419,50.64,14.3
    >>Talk to |cRXP_FRIENDLY_Bloodmage Lynnore|r
    .turnin 81900 >>Turn in The Burning Beast
    .accept 2601 >>Accept The Basilisk's Bite
    .accept 2603 >>Accept Vulture's Vigor
    .accept 81917 >>Accept Chains That Bind
    .target Bloodmage Lynnore
step
    .goto 1419,47.03,22.07
    >>Collect |cRXP_LOOT_[Basilisk Brain]|r from |cRXP_ENEMY_Redstone Basilisk|r, |cRXP_ENEMY_Redstone Crystalhide|r, |cRXP_ENEMY_Deatheye|r
    *Bring ten Basilisk Brains and two Vulture Gizzards to Bloodmage Lynnore.
    .complete 2601,1 --The Basilisk's Bite
    .mob Redstone Basilisk
    .mob Redstone Crystalhide
step
    .goto 1419,63.51,17.01
    >>Talk to |cRXP_FRIENDLY_Bernie Heisten|r
    .accept 87295 >>Accept Deflective Surface
    .target Bernie Heisten
step
    .goto 1419,64.77,33.72
    >>Collect |cRXP_LOOT_[Vulture Gizzard]|r from |cRXP_ENEMY_Black Slayer|r, |cRXP_ENEMY_Bonepicker|r, |cRXP_ENEMY_Spiteflayer|r. Collect |cRXP_LOOT_[Infernal Chain Link]|r from |cRXP_ENEMY_Shadowsworn Cultist|r, |cRXP_ENEMY_Shadowsworn Thug|r, |cRXP_ENEMY_Shadowsworn Adept|r. Collect |cRXP_LOOT_[Redstone Basilisk Scale]|r from |cRXP_ENEMY_Redstone Basilisk|r, |cRXP_ENEMY_Redstone Crystalhide|r
    *Bring ten Basilisk Brains and two Vulture Gizzards to Bloodmage Lynnore.
    *Bring ten Vulture Gizzards and two Snickerfang Jowls to Bloodmage Lynnore.
    *Bring 5 infernal chain links to Bloodmage Lynnore in the Blasted Lands
    *Bring 10 Redstone Basilisk Scales to Bernie Heisten.
    .complete 2601,2 --The Basilisk's Bite
    .complete 2603,1 --Vulture's Vigor
    .complete 81917,1 --Chains That Bind
    .complete 87295,1 --Deflective Surface
    .mob Black Slayer
    .mob Bonepicker
    .mob Shadowsworn Cultist
    .mob Shadowsworn Thug
    .mob Redstone Basilisk
    .mob Redstone Crystalhide
step
    .goto 1419,63.51,17.01
    >>Talk to |cRXP_FRIENDLY_Bernie Heisten|r
    .turnin 87295 >>Turn in Deflective Surface
    .target Bernie Heisten
step
    .goto 1419,50.64,14.3
    >>Talk to |cRXP_FRIENDLY_Bloodmage Lynnore|r
    .turnin 2601 >>Turn in The Basilisk's Bite
    .turnin 81917 >>Turn in Chains That Bind
    .target Bloodmage Lynnore
step
    .goto 1419,49.1,36.56
    >>Collect |cRXP_LOOT_[Snickerfang Jowl]|r from |cRXP_ENEMY_Starving Snickerfang|r, |cRXP_ENEMY_Snickerfang Hyena|r, |cRXP_ENEMY_Ravage|r
    *Bring ten Vulture Gizzards and two Snickerfang Jowls to Bloodmage Lynnore.
    .complete 2603,2 --Vulture's Vigor
    .mob Starving Snickerfang
    .mob Snickerfang Hyena
step
    .goto 1419,50.64,14.3
    >>Talk to |cRXP_FRIENDLY_Bloodmage Lynnore|r
    .turnin 2603 >>Turn in Vulture's Vigor
    .target Bloodmage Lynnore
step
    .goto 1416,21.62,73.18
    >>Talk to |cRXP_FRIENDLY_Orphan Matron Aria|r
    .accept 96797 >>Accept The Orphan
    .target Orphan Matron Aria
step
    .goto 1419,66.07,19.4
    >>Talk to |cRXP_FRIENDLY_Lieutenant Connar|r
    .turnin 96797 >>Turn in The Orphan
    .accept 96798 >>Accept Into the Darkness
    .target Lieutenant Connar
step
    .goto 1419,66.73,31.67
    >>Talk to |cRXP_FRIENDLY_Sergeant Danneth|r
    .turnin 96798 >>Turn in Into the Darkness
    .accept 96811 >>Accept Escaping the Shadows
    .target Sergeant Danneth
step
    .goto 1419,66.07,19.4
    >>Talk to |cRXP_FRIENDLY_Lieutenant Connar|r
    .turnin 96811 >>Turn in Escaping the Shadows
    .accept 96799 >>Accept A Heavy Responsibility
    .target Lieutenant Connar
step
    .goto 1419,65.23,15.33
    >>Talk to |cRXP_FRIENDLY_Sergeant Danneth|r
    .turnin 96799 >>Turn in A Heavy Responsibility
    .target Sergeant Danneth
step
    .goto 1428,65.15,23.91
    >>Talk to |cRXP_FRIENDLY_Maxwort Uberglint|r
    .accept 4296 >>Accept Tablet of the Seven
    .target Maxwort Uberglint
step
    .goto 1428,65.24,24
    >>Talk to |cRXP_FRIENDLY_Tinkee Steamboil|r
    .accept 4726 >>Accept Broodling Essence
    .target Tinkee Steamboil
step
    >>Collect |cRXP_LOOT_[Tablet Transcript]|r. Collect |cRXP_LOOT_[Broodling Essence]|r from |cRXP_PICK_Broodling Essence|r
    *Bring the Tablet Transcript to Maxwort Uberglint in the Burning Steppes.
    *Bring 8 Broodling Essence and the Draco-Incarcinatrix 900 to Tinkee Steamboil at the Flame Crest in the Burning Steppes.
    .complete 4296,1 --Tablet of the Seven
    .complete 4726,1 --Broodling Essence
step
    .goto 1428,65.15,23.91
    >>Talk to |cRXP_FRIENDLY_Maxwort Uberglint|r
    .turnin 4296 >>Turn in Tablet of the Seven
    .target Maxwort Uberglint
step
    .goto 1428,65.24,24
    >>Talk to |cRXP_FRIENDLY_Tinkee Steamboil|r
    .turnin 4726 >>Turn in Broodling Essence
    .target Tinkee Steamboil
step
    .goto 1428,95.09,31.56
    >>Talk to |cRXP_FRIENDLY_Cyrus Therepentous|r
    .accept 4023 >>Accept A Taste of Flame
    .target Cyrus Therepentous
step
    .goto 1428,84.56,68.68
    >>Talk to |cRXP_FRIENDLY_Oralius|r
    .accept 3823 >>Accept Extinguish the Firegut
    .target Oralius
step
    .goto 1428,78.95,44.04
    >>Kill |cRXP_ENEMY_Firegut Ogre Mage|r. Kill |cRXP_ENEMY_Firegut Ogre|r. Kill |cRXP_ENEMY_Firegut Brute|r
    *Slay 15 Firegut Ogre-Mages, 7 Firegut Ogres, and 7 Firegut Ogre Brutes, and return to Oralius when you are finished.
    .complete 3823,1 --Extinguish the Firegut
    .complete 3823,2 --Extinguish the Firegut
    .complete 3823,3 --Extinguish the Firegut
    .mob Firegut Ogre Mage
    .mob Firegut Ogre
    .mob Firegut Brute
step
    .goto 1428,84.56,68.68
    >>Talk to |cRXP_FRIENDLY_Oralius|r
    .turnin 3823 >>Turn in Extinguish the Firegut
    .accept 3824 >>Accept Gor'tesh the Brute Lord
    .target Oralius
step
    .goto 1428,55.53,54.41
    >>Collect |cRXP_LOOT_[Gor'tesh's Lopped Off Head]|r from |cRXP_ENEMY_Grubbub|r
    *Find Gor'tesh, somewhere to the west of Dreadmaul Rock. Kill Gor'tesh and then take Gor'tesh's Lopped Off Head back to Oralius in Burning Steppes.
    .complete 3824,1 --Gor'tesh the Brute Lord
    .mob Grubbub
step
    .goto 1428,84.56,68.68
    >>Talk to |cRXP_FRIENDLY_Oralius|r
    .turnin 3824 >>Turn in Gor'tesh the Brute Lord
    .accept 3825 >>Accept Ogre Head On A Stick = Party
    .target Oralius
step
    .goto 1428,81,46.79
    >>Click |cRXP_PICK_Soft Dirt Mound|r
    *Take Gor'tesh's Lopped Off Head and place it at the top of Dreadmaul Rock. Look for a soft dirt mound to plant the pike.
    .complete 3825,1 --Ogre Head On A Stick = Party
step
    .goto 1428,84.56,68.68
    >>Talk to |cRXP_FRIENDLY_Oralius|r
    .turnin 3825 >>Turn in Ogre Head On A Stick = Party
    .target Oralius
step
    .goto 1427,42.99,36.43
    >>Collect |cRXP_LOOT_[Black Dragonflight Molt]|r from |cRXP_ENEMY_Dark Iron Taskmaster|r, |cRXP_ENEMY_Heavy War Golem|r, |cRXP_ENEMY_Frenzied Black Drake|r
    *Show Cyrus Therepentous proof of your worth.
    .complete 4023,1 --A Taste of Flame
    .mob Dark Iron Taskmaster
    .mob Heavy War Golem
step
    .goto 1428,95.09,31.56
    >>Talk to |cRXP_FRIENDLY_Cyrus Therepentous|r
    .turnin 4023 >>Turn in A Taste of Flame
    .target Cyrus Therepentous
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 40-49
#name 48-49 Western/Eastern Plaguelands
#displayname 48-49 Western/Eastern Plaguelands
#next 49-50 Felwood
step
    .zone 1422 >>Travel to Western
    *How: Fly to Chillwind Camp; later Light's Hope Chapel.
    *Level for this part: 48-49. 15 quests, roughly 1 h 15 min.
step
    #completewith next
    .goto 1422,42.92,85.06,15,0
    >>Talk to |cRXP_FRIENDLY_Bibilfaz Featherwhistle|r if you don't have this flight path yet
    .fp Bibilfaz Featherwhistle >>Get the flight path
    .target Bibilfaz Featherwhistle
step
    .goto 1422,43.42,84.83
    >>Talk to |cRXP_FRIENDLY_Nathaniel Dumah|r
    .accept 5903 >>Accept A Plague Upon Thee
    .target Nathaniel Dumah
step
    .goto 1422,42.97,83.55
    >>Talk to |cRXP_FRIENDLY_Argent Officer Pureheart|r
    .accept 5401 >>Accept Argent Dawn Commission
    .target Argent Officer Pureheart
step
    .goto 1422,42.97,83.55
    >>Talk to |cRXP_FRIENDLY_Argent Officer Pureheart|r
    .turnin 5401 >>Turn in Argent Dawn Commission
    .target Argent Officer Pureheart
step
    .goto 1422,49.17,78.57
    >>Talk to |cRXP_FRIENDLY_Marlene Redpath|r
    .accept 5142 >>Accept Little Pamela
    .target Marlene Redpath
step
    .goto 1422,53.02,65.61
    >>Click the |cRXP_PICK_Scourge Cauldron|r
    .accept 5234 >>Accept Return to the Bulwark
step
    .goto 1422,53.73,64.66
    >>Talk to |cRXP_FRIENDLY_Mulgris Deepriver|r
    .accept 4984 >>Accept The Wildlife Suffers Too
    .target Mulgris Deepriver
step
    .goto 1422,53.02,65.61
    >>Click the |cRXP_PICK_Scourge Cauldron|r
    .turnin 5234 >>Turn in Return to the Bulwark
step
    .goto 1422,47.35,49.63
    >>Click the |cRXP_PICK_Locked Cabinet|r
    .accept 5060 >>Accept Locked Away
step
    .goto 1422,47.35,49.63
    >>Kill |cRXP_ENEMY_Diseased Wolf|r. Collect |cRXP_LOOT_[Dalson Cabinet Key]|r from |cRXP_ENEMY_Farmer Dalson|r
    *Destroy 8 Diseased Wolves, and then return to Mulgris Deepriver at the Writhing Haunt, Western Plaguelands.
    .complete 4984,1 --The Wildlife Suffers Too
    .complete 5060,1 --Locked Away
    .mob Diseased Wolf
    .mob Farmer Dalson
step
    .goto 1422,47.35,49.63
    >>Click the |cRXP_PICK_Locked Cabinet|r
    .turnin 5060 >>Turn in Locked Away
step
    .goto 1422,38.4,54.05
    >>Talk to |cRXP_FRIENDLY_Janice Felstone|r
    .accept 5021 >>Accept Better Late Than Never
    .target Janice Felstone
step
    .goto 1422,38.73,55.24
    >>Click the |cRXP_PICK_Janice's Parcel|r
    .turnin 5021 >>Turn in Better Late Than Never
    .accept 5022 >>Accept Better Late Than Never
step
    .goto 1422,53.73,64.66
    >>Talk to |cRXP_FRIENDLY_Mulgris Deepriver|r
    .turnin 4984 >>Turn in The Wildlife Suffers Too
    .target Mulgris Deepriver
step
    .goto 1423,31.15,77.98
    >>Talk to |cRXP_FRIENDLY_Pamela Redpath|r
    .turnin 5142 >>Turn in Little Pamela
    .accept 5149 >>Accept Pamela's Doll
    .target Pamela Redpath
step
    >>Collect |cRXP_LOOT_[Pamela's Doll]|r
    *Find Pamela's doll.
    .complete 5149,1 --Pamela's Doll
step
    .goto 1423,31.15,77.98
    >>Talk to |cRXP_FRIENDLY_Pamela Redpath|r
    .turnin 5149 >>Turn in Pamela's Doll
    .target Pamela Redpath
step
    .goto 1423,69.93,53.72
    >>Talk to |cRXP_FRIENDLY_Caretaker Alen|r
    .accept 6021 >>Accept Zaeldarr the Outcast
    .target Caretaker Alen
step
    .goto 1423,35.07,21.34
    >>Collect |cRXP_LOOT_[Plagueland Termites]|r from |cRXP_PICK_Large Termite Mound|r
    *Use the Empty Termite Jar on the Termite Mounds in Eastern Plaguelands. After you've gathered 100 Plagueland Termites, return to Nathaniel Dumah at Chillwind Camp in Western Plaguelands.
    .complete 5903,1 --A Plague Upon Thee
step
    .goto 1423,23.07,72.63
    >>Collect |cRXP_LOOT_[Zaeldarr's Head]|r from |cRXP_ENEMY_Zaeldarr the Outcast|r
    *Bring Zaeldarr's Head to Caretaker Alen at Light's Hope Chapel.
    .complete 6021,1 --Zaeldarr the Outcast
    .mob Zaeldarr the Outcast
step
    .goto 1423,69.93,53.72
    >>Talk to |cRXP_FRIENDLY_Caretaker Alen|r
    .turnin 6021 >>Turn in Zaeldarr the Outcast
    .target Caretaker Alen
step
    .goto 1422,43.42,84.83
    >>Talk to |cRXP_FRIENDLY_Nathaniel Dumah|r
    .turnin 5903 >>Turn in A Plague Upon Thee
    .accept 5904 >>Accept A Plague Upon Thee
    .target Nathaniel Dumah
step
    .goto 1422,48.34,31.99
    >>Click the |cRXP_PICK_Termite Barrel|r
    .turnin 5904 >>Turn in A Plague Upon Thee
    .accept 6389 >>Accept A Plague Upon Thee
step
    .goto 1422,43.42,84.83
    >>Talk to |cRXP_FRIENDLY_Nathaniel Dumah|r
    .turnin 6389 >>Turn in A Plague Upon Thee
    .target Nathaniel Dumah
step
    .goto 1453,57.17,48.07
    >>Talk to |cRXP_FRIENDLY_Royal Factor Bathrilor|r
    .turnin 5022 >>Turn in Better Late Than Never
    .accept 5048 >>Accept Good Natured Emma
    .target Royal Factor Bathrilor
step
    .goto 1453,60.2,57.03
    >>Talk to |cRXP_FRIENDLY_Ol' Emma|r
    .turnin 5048 >>Turn in Good Natured Emma
    .accept 5050 >>Accept Good Luck Charm
    .target Ol' Emma
step
    .goto 1422,38.4,54.05
    >>Talk to |cRXP_FRIENDLY_Janice Felstone|r
    .turnin 5050 >>Turn in Good Luck Charm
    .accept 5051 >>Accept Two Halves Become One
    .target Janice Felstone
step
    >>Collect |cRXP_LOOT_[Good Luck Charm]|r
    *Locate the other half of the Good Luck Charm somewhere on the Felstone Farm in Western Plaguelands and reassemble it.
    .complete 5051,1 --Two Halves Become One
step
    .goto 1422,38.4,54.05
    >>Talk to |cRXP_FRIENDLY_Janice Felstone|r
    .turnin 5051 >>Turn in Two Halves Become One
    .target Janice Felstone
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 40-49
#name 49-50 Felwood
#displayname 49-50 Felwood
#next 50-50 Winterspring
step
    .zone 1448 >>Travel to Felwood
    *How: In the Eastern Kingdoms? Boat Stormwind Harbor -> Auberdine first. Then fly to Talonbranch Glade.
    *Level for this part: 49-50. 18 quests, roughly 2 h 10 min.
step
    #completewith next
    .goto 1448,62.49,24.24,15,0
    >>Talk to |cRXP_FRIENDLY_Mishellena|r if you don't have this flight path yet
    .fp Mishellena >>Get the flight path
    .target Mishellena
step
    .goto 1448,65.18,2.68
    >>Talk to |cRXP_FRIENDLY_Gorn One Eye|r
    .accept 87346 >>Accept Chieftain Bloodmaw
    .target Gorn One Eye
step
    .goto 1448,62.75,7.74
    >>Collect |cRXP_LOOT_[Bloodmaw's Basher]|r from |cRXP_ENEMY_Chieftain Bloodmaw|r
    *Kill Chieftain Bloodmaw and bring his mace to Gorn One Eye in Timbermaw Hold.
    .complete 87346,1 --Chieftain Bloodmaw
    .mob Chieftain Bloodmaw
step
    .goto 1448,65.18,2.68
    >>Talk to |cRXP_FRIENDLY_Gorn One Eye|r
    .turnin 87346 >>Turn in Chieftain Bloodmaw
    .target Gorn One Eye
step
    .goto 1448,39.07,22.35
    >>Loot |cRXP_LOOT_[Flute of Xavaric]|r from |cRXP_ENEMY_Xavaric|r, then click it to start the quest
    .accept 939 >>Accept Flute of Xavaric
    .use 11668
    .mob Xavaric
step
    .goto 1448,42.05,47.32
    >>Click the |cRXP_PICK_Statue of Malorne|r
    .accept 86611 >>Accept Stag Lord's Bauble
step
    .goto 1448,36.93,51.3
    >>Loot |cRXP_LOOT_[Blood Red Key]|r from |cRXP_ENEMY_Jaedenar Enforcer|r, |cRXP_ENEMY_Jaedenar Darkweaver|r, |cRXP_ENEMY_Jaedenar Warlock|r, then click it to start the quest
    .accept 5202 >>Accept A Strange Red Key
    .use 13140
    .mob Jaedenar Enforcer
    .mob Jaedenar Darkweaver
step
    .goto 1448,36.21,55.47
    >>Talk to |cRXP_FRIENDLY_Captured Arko'narin|r
    .turnin 5202 >>Turn in A Strange Red Key
    .accept 5203 >>Accept Rescue From Jaedenar
    .target Captured Arko'narin
step
    .goto 1448,42.26,83.68
    >>Collect |cRXP_LOOT_[Jadefire Felbind]|r from |cRXP_ENEMY_Jadefire Satyr|r, |cRXP_ENEMY_Jadefire Rogue|r, |cRXP_ENEMY_Jadefire Trickster|r
    *Bring the Flute of Xavaric and 5 Jadefire Felbind samples to Eridan Bluewind in southern Felwood.
    .complete 939,1 --Flute of Xavaric
    .mob Jadefire Satyr
    .mob Jadefire Rogue
step
    .goto 1448,51.35,81.51
    >>Talk to |cRXP_FRIENDLY_Eridan Bluewind|r
    .turnin 939 >>Turn in Flute of Xavaric
    .target Eridan Bluewind
step
    .goto 1448,51.35,82.01
    >>Talk to |cRXP_FRIENDLY_Jessir Moonbow|r
    .turnin 5203 >>Turn in Rescue From Jaedenar
    .target Jessir Moonbow
step
    .goto 1448,51.23,82.16
    >>Talk to |cRXP_FRIENDLY_Ketharas|r
    .accept 95569 >>Accept Hope for Hatchlings
    .target Ketharas
step
    .goto 1448,51.35,81.51
    >>Talk to |cRXP_FRIENDLY_Eridan Bluewind|r
    .accept 4441 >>Accept Felbound Ancients
    .target Eridan Bluewind
step
    .goto 1448,51.21,82.11
    >>Talk to |cRXP_FRIENDLY_Greta Mosshoof|r
    .accept 5155 >>Accept Forces of Jaedenar
    .accept 91952 >>Accept The Source of the Corruption
    .target Greta Mosshoof
step
    .goto 1448,50.89,81.62
    >>Talk to |cRXP_FRIENDLY_Taronn Redfeather|r
    .accept 5156 >>Accept Verifying the Corruption
    .target Taronn Redfeather
step
    .goto 1448,51.14,81.75
    >>Talk to |cRXP_FRIENDLY_Kelek Skykeeper|r
    .accept 86577 >>Accept A Sampling of Putrescence
    .target Kelek Skykeeper
step
    .goto 1448,51.23,82.16
    >>Talk to |cRXP_FRIENDLY_Ketharas|r
    .turnin 91952 >>Turn in The Source of the Corruption
    .target Ketharas
step
    .goto 1448,51.35,81.51
    >>Collect |cRXP_LOOT_[Vial of Blessed Water]|r. Collect |cRXP_LOOT_[Putrescent Bear Organs]|r from |cRXP_ENEMY_Angerclaw Bear|r, |cRXP_ENEMY_Angerclaw Grizzly|r, |cRXP_ENEMY_Angerclaw Mauler|r. Collect |cRXP_LOOT_[Putrescent Wolf Organs]|r from |cRXP_ENEMY_Felpaw Wolf|r, |cRXP_ENEMY_Felpaw Scavenger|r, |cRXP_ENEMY_Felpaw Ravager|r
    *Travel to Darnassus and use Eridan's Vial to collect a Vial of Blessed Water from the Temple of the Moon. Return to Eridan with the filled vial.
    *Bring 8 Putrescent Bear Organs and 10 Putrescent Wolf Organs to Kelek Skykeeper.
    .complete 4441,1 --Felbound Ancients
    .complete 86577,1 --A Sampling of Putrescence
    .complete 86577,2 --A Sampling of Putrescence
    .mob Angerclaw Bear
    .mob Angerclaw Grizzly
    .mob Felpaw Wolf
    .mob Felpaw Scavenger
step
    .goto 1448,51.35,81.51
    >>Talk to |cRXP_FRIENDLY_Eridan Bluewind|r
    .turnin 4441 >>Turn in Felbound Ancients
    .target Eridan Bluewind
step
    .goto 1448,51.14,81.75
    >>Talk to |cRXP_FRIENDLY_Kelek Skykeeper|r
    .turnin 86577 >>Turn in A Sampling of Putrescence
    .target Kelek Skykeeper
step
    .goto 1448,51.35,81.51
    >>Talk to |cRXP_FRIENDLY_Eridan Bluewind|r
    .accept 4442 >>Accept Purified!
    .target Eridan Bluewind
step
    .goto 1448,51.35,81.51
    >>Talk to |cRXP_FRIENDLY_Eridan Bluewind|r
    .turnin 4442 >>Turn in Purified!
    .target Eridan Bluewind
step
    .goto 1448,54.15,86.83
    >>Talk to |cRXP_FRIENDLY_Arathandris Silversky|r
    .accept 4101 >>Accept Cleansing Felwood
    .target Arathandris Silversky
step
    .goto 1448,38.38,61.07
    >>Kill |cRXP_ENEMY_Jaedenar Hound|r. Kill |cRXP_ENEMY_Jaedenar Guardian|r. Kill |cRXP_ENEMY_Jaedenar Adept|r. Kill |cRXP_ENEMY_Jaedenar Cultist|r
    *Enter Jaedenar and slay 4 Jaedenar Hounds, 4 Jaedenar Guardsmen, 6 Jaedenar Adepts, and 6 Jaedenar Cultists before returning to Greta Mosshoof in Felwood.
    .complete 5155,1 --Forces of Jaedenar
    .complete 5155,2 --Forces of Jaedenar
    .complete 5155,3 --Forces of Jaedenar
    .complete 5155,4 --Forces of Jaedenar
    .mob Jaedenar Hound
    .mob Jaedenar Guardian
    .mob Jaedenar Adept
    .mob Jaedenar Cultist
step
    .goto 1448,43.91,40.81
    >>Kill |cRXP_ENEMY_Entropic Beast|r. Kill |cRXP_ENEMY_Entropic Horror|r
    *Seek out and destroy 2 Entropic Beasts and 2 Entropic Horrors while exploring Shatter Scar Vale. After checking to see if the craters there are still filled with corrupt fel water, return to Taronn Redfeather in Felwood.
    .complete 5156,1 --Verifying the Corruption
    .complete 5156,2 --Verifying the Corruption
    .mob Entropic Beast
    .mob Entropic Horror
step
    .goto 1448,61.93,24.54
    >>Talk to |cRXP_FRIENDLY_Golhine the Hooded|r
    .turnin 86611 >>Turn in Stag Lord's Bauble
    .target Golhine the Hooded
step
    .goto 1448,59.1,19.89
    >>Collect |cRXP_LOOT_[Blood Amber]|r from |cRXP_ENEMY_Warpwood Moss Flayer|r, |cRXP_ENEMY_Warpwood Shredder|r, |cRXP_ENEMY_Dessecus|r
    *Bring 15 Blood Amber to Arathandris Silversky in Felwood.
    .complete 4101,1 --Cleansing Felwood
    .mob Warpwood Moss Flayer
    .mob Warpwood Shredder
step
    .goto 1448,51.21,82.11
    >>Talk to |cRXP_FRIENDLY_Greta Mosshoof|r
    .turnin 5155 >>Turn in Forces of Jaedenar
    .target Greta Mosshoof
step
    .goto 1448,50.89,81.62
    >>Talk to |cRXP_FRIENDLY_Taronn Redfeather|r
    .turnin 5156 >>Turn in Verifying the Corruption
    .target Taronn Redfeather
step
    .goto 1448,51.21,82.11
    >>Talk to |cRXP_FRIENDLY_Greta Mosshoof|r
    .accept 5157 >>Accept Collection of the Corrupt Water
    .target Greta Mosshoof
step
    >>Collect |cRXP_LOOT_[Corrupt Moonwell Water]|r
    *Take the Empty Canteen to the Moon Well in the center of Jaedenar and fill it before returning to Greta Mosshoof in Felwood.
    .complete 5157,1 --Collection of the Corrupt Water
step
    .goto 1448,51.21,82.11
    >>Talk to |cRXP_FRIENDLY_Greta Mosshoof|r
    .turnin 5157 >>Turn in Collection of the Corrupt Water
    .accept 5158 >>Accept Seeking Spiritual Aid
    .target Greta Mosshoof
step
    .goto 1448,54.15,86.83
    >>Talk to |cRXP_FRIENDLY_Arathandris Silversky|r
    .turnin 4101 >>Turn in Cleansing Felwood
    .accept 4103 >>Accept Salve via Hunting
    .target Arathandris Silversky
step
    .goto 1448,39.5,49.25
    >>Collect |cRXP_LOOT_[Corrupted Soul Shard]|r from |cRXP_ENEMY_Cursed Ooze|r, |cRXP_ENEMY_Tainted Ooze|r, |cRXP_ENEMY_Vile Ooze|r
    .complete 4103,1 --Salve via Hunting
    .mob Cursed Ooze
    .mob Tainted Ooze
step
    .goto 1448,54.15,86.83
    >>Talk to |cRXP_FRIENDLY_Arathandris Silversky|r
    .turnin 4103 >>Turn in Salve via Hunting
    .target Arathandris Silversky
step
    .goto 1413,65.83,43.78
    >>Talk to |cRXP_FRIENDLY_Islen Waterseer|r
    .turnin 5158 >>Turn in Seeking Spiritual Aid
    .accept 5159 >>Accept Cleansed Water Returns to Felwood
    .target Islen Waterseer
step
    .goto 1448,51.21,82.11
    >>Talk to |cRXP_FRIENDLY_Greta Mosshoof|r
    .turnin 5159 >>Turn in Cleansed Water Returns to Felwood
    .accept 5165 >>Accept Dousing the Flames of Protection
    .target Greta Mosshoof
step
    .goto 1448,36.27,56.3
    >>Click |cRXP_PICK_Brazier of Pain|r. Click |cRXP_PICK_Brazier of Malice|r. Click |cRXP_PICK_Brazier of Suffering|r. Click |cRXP_PICK_Brazier of Hatred|r
    *Using the Purified Moon Well Water, douse the flames of the four braziers of protection within Shadow Hold in Felwood, then return to Greta Mosshoof in the Emerald Sanctuary.
    .complete 5165,1 --Dousing the Flames of Protection
    .complete 5165,2 --Dousing the Flames of Protection
    .complete 5165,3 --Dousing the Flames of Protection
    .complete 5165,4 --Dousing the Flames of Protection
step
    .goto 1448,51.21,82.11
    >>Talk to |cRXP_FRIENDLY_Greta Mosshoof|r
    .turnin 5165 >>Turn in Dousing the Flames of Protection
    .target Greta Mosshoof
step
    .goto 2482,76.81,73.75
    >>Collect |cRXP_LOOT_[Hyjal Owl Egg]|r from |cRXP_PICK_Hyjal Owl Egg|r
    *Rescue 12 Hyjal Owl Eggs and bring them to Ketharas.
    .complete 95569,1 --Hope for Hatchlings
step
    .goto 1448,51.23,82.16
    >>Talk to |cRXP_FRIENDLY_Ketharas|r
    .turnin 95569 >>Turn in Hope for Hatchlings
    .target Ketharas
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 50-60
#name 50-50 Winterspring
#displayname 50-50 Winterspring
#next 50-51 Tanaris
step
    #completewith next
    +|cRXP_WARN_On the way: lead-in quests in Un'Goro Crater that open quests in Winterspring|r
step
    .goto 1449,30.93,50.44
    >>Talk to |cRXP_FRIENDLY_Krakle|r
    .accept 974 >>Accept Finding the Source
    .target Krakle
step
    .goto 1449,45.46,48.53
    >>Kill |cRXP_ENEMY_Krakle's Thermometer|r
    *Krakle in Un'Goro Crater wants you to find the hottest area of Fire Plume Ridge.
    .complete 974,1 --Finding the Source
    .mob Krakle's Thermometer
step
    .goto 1449,30.93,50.44
    >>Talk to |cRXP_FRIENDLY_Krakle|r
    .turnin 974 >>Turn in Finding the Source
    .accept 980 >>Accept The New Springs
    .target Krakle
step
    .zone 1452 >>Travel to Winterspring
    *How: Fly to Everlook.
    *Level for this part: 50-50. 12 quests, roughly 1 h 30 min.
step
    #completewith next
    .goto 1452,62.33,36.61,15,0
    >>Talk to |cRXP_FRIENDLY_Maethrya|r if you don't have this flight path yet
    .fp Maethrya >>Get the flight path
    .target Maethrya
step
    .goto 1452,31.27,45.16
    >>Talk to |cRXP_FRIENDLY_Donova Snowden|r
    .turnin 980 >>Turn in The New Springs
    .accept 4842 >>Accept Strange Sources
    .target Donova Snowden
step
    .goto 1452,51.97,30.39
    >>Talk to |cRXP_FRIENDLY_Wynd Nightchaser|r
    .accept 5244 >>Accept The Ruins of Kel'Theril
    .target Wynd Nightchaser
step
    .goto 1452,52.14,30.43
    >>Talk to |cRXP_FRIENDLY_Jaron Stoneshaper|r
    .turnin 5244 >>Turn in The Ruins of Kel'Theril
    .target Jaron Stoneshaper
step
    .goto 1452,60.88,37.62
    >>Talk to |cRXP_FRIENDLY_Umi Rumplesnicker|r
    .accept 3783 >>Accept Are We There, Yeti?
    .target Umi Rumplesnicker
step
    .goto 1452,60.66,38.17
    >>Talk to |cRXP_FRIENDLY_Meggi Peppinrocker|r
    .accept 6603 >>Accept Trouble in Winterspring!
    .target Meggi Peppinrocker
step
    .goto 1452,65.24,37.81
    >>Loot |cRXP_LOOT_[Empty Firewater Flask]|r from |cRXP_ENEMY_Winterfall Ursa|r, |cRXP_ENEMY_Winterfall Shaman|r, |cRXP_ENEMY_Winterfall Den Watcher|r, then click it to start the quest
    .accept 5083 >>Accept Winterfall Firewater
    .use 12771
    .mob Winterfall Ursa
    .mob Winterfall Shaman
step
    .goto 1452,67.48,41.82
    >>Collect |cRXP_LOOT_[Thick Yeti Fur]|r from |cRXP_ENEMY_Rogue Ice Thistle|r, |cRXP_ENEMY_Ice Thistle Yeti|r
    *Collect 10 Thick Yeti Furs for Umi Rumplesnicker in Everlook.
    .complete 3783,1 --Are We There, Yeti?
    .mob Rogue Ice Thistle
    .mob Ice Thistle Yeti
step
    .goto 1452,60.88,37.62
    >>Talk to |cRXP_FRIENDLY_Umi Rumplesnicker|r
    .turnin 3783 >>Turn in Are We There, Yeti?
    .target Umi Rumplesnicker
step
    .goto 1452,31.27,45.16
    >>Talk to |cRXP_FRIENDLY_Donova Snowden|r
    .turnin 6603 >>Turn in Trouble in Winterspring!
    .turnin 5083 >>Turn in Winterfall Firewater
    .accept 5082 >>Accept Threat of the Winterfall
    .accept 5084 >>Accept Falling to Corruption
    .target Donova Snowden
step
    .goto 1452,30.94,34.88
    >>Kill |cRXP_ENEMY_Winterfall Pathfinder|r
    *Donova Snowden in Winterspring wants you to kill 8 Winterfall Pathfinders, 8 Winterfall Den Watchers, and 8 Winterfall Totemics.
    .complete 5082,1 --Threat of the Winterfall
    .mob Winterfall Pathfinder
step
    .goto 1452,68,34.37
    >>Kill |cRXP_ENEMY_Winterfall Den Watcher|r
    *Donova Snowden in Winterspring wants you to kill 8 Winterfall Pathfinders, 8 Winterfall Den Watchers, and 8 Winterfall Totemics.
    .complete 5082,2 --Threat of the Winterfall
    .mob Winterfall Den Watcher
step
    .goto 1452,39.42,44.68
    >>Kill |cRXP_ENEMY_Winterfall Totemic|r
    *Donova Snowden in Winterspring wants you to kill 8 Winterfall Pathfinders, 8 Winterfall Den Watchers, and 8 Winterfall Totemics.
    .complete 5082,3 --Threat of the Winterfall
    .mob Winterfall Totemic
step
    .goto 1452,31.27,45.16
    >>Talk to |cRXP_FRIENDLY_Donova Snowden|r
    .turnin 5082 >>Turn in Threat of the Winterfall
    .target Donova Snowden
step
    .goto 1452,59.82,74.25
    >>Discover Darkwhisper Gorge
    *Follow Donova Snowden's instructions, then report back.
    .complete 4842,1 --Strange Sources
step
    .goto 1452,31.27,45.16
    >>Talk to |cRXP_FRIENDLY_Donova Snowden|r
    .turnin 4842 >>Turn in Strange Sources
    .target Donova Snowden
step
    .goto 1448,60.2,5.84
    >>Click the |cRXP_PICK_Deadwood Cauldron|r
    .turnin 5084 >>Turn in Falling to Corruption
    .accept 5085 >>Accept Mystery Goo
step
    .goto 1452,31.27,45.16
    >>Talk to |cRXP_FRIENDLY_Donova Snowden|r
    .turnin 5085 >>Turn in Mystery Goo
    .accept 5086 >>Accept Toxic Horrors
    .target Donova Snowden
step
    .goto 1448,49.09,26.56
    >>Collect |cRXP_LOOT_[Toxic Horror Droplet]|r from |cRXP_ENEMY_Toxic Horror|r
    *Collect 3 Toxic Horror Droplets for Donova Snowden in Winterspring.
    .complete 5086,1 --Toxic Horrors
    .mob Toxic Horror
step
    .goto 1452,31.27,45.16
    >>Talk to |cRXP_FRIENDLY_Donova Snowden|r
    .turnin 5086 >>Turn in Toxic Horrors
    .accept 5087 >>Accept Winterfall Runners
    .target Donova Snowden
step
    .goto 1452,27.96,34.52
    >>Collect |cRXP_LOOT_[Winterfall Crate]|r from |cRXP_ENEMY_Winterfall Runner|r
    *Find the Winterfall Runners and stop them from delivering their shipment to Winterfall Village.
    .complete 5087,1 --Winterfall Runners
    .mob Winterfall Runner
step
    .goto 1452,31.27,45.16
    >>Talk to |cRXP_FRIENDLY_Donova Snowden|r
    .turnin 5087 >>Turn in Winterfall Runners
    .target Donova Snowden
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 50-60
#name 50-51 Tanaris
#displayname 50-51 Tanaris
#next 51-51 Azshara
step
    .zone 1446 >>Travel to Tanaris
    *How: From Powderfuse Port (Riverglades) take the goblin boat to Steamwheedle Port, then ride to Gadgetzan. From Kalimdor: fly to Gadgetzan.
    *Level for this part: 50-51. 9 quests, roughly 1 h 5 min.
step
    .goto 1446,50.21,27.48
    >>Talk to |cRXP_FRIENDLY_Senior Surveyor Fizzledowser|r
    .accept 162 >>Accept Rise of the Silithid
    .target Senior Surveyor Fizzledowser
step
    .goto 1446,51.57,26.76
    >>Talk to |cRXP_FRIENDLY_Tran'rek|r
    .accept 3362 >>Accept Thistleshrub Valley
    .accept 4504 >>Accept Super Sticky
    .target Tran'rek
step
    .goto 1446,51.81,28.66
    >>Talk to |cRXP_FRIENDLY_Marin Noggenfogger|r
    .accept 2605 >>Accept The Thirsty Goblin
    .target Marin Noggenfogger
step
    .goto 1446,50.89,26.96
    >>Talk to |cRXP_FRIENDLY_Alchemist Pestlezugg|r
    .accept 4496 >>Accept Bungle in the Jungle
    .target Alchemist Pestlezugg
step
    .goto 1446,31.22,65.54
    >>Kill |cRXP_ENEMY_Gnarled Thistleshrub|r. Kill |cRXP_ENEMY_Thistleshrub Rootshaper|r. Collect |cRXP_LOOT_[Laden Dew Gland]|r from |cRXP_ENEMY_Thistleshrub Dew Collector|r
    *Tran'rek in Gadgetzan wants you to kill 8 Gnarled Thistleshrubs and 8 Thistleshrub Rootshapers.
    *Collect a Laden Dew Gland and bring it to Marin Noggenfogger in Gadgetzan.
    .complete 3362,1 --Thistleshrub Valley
    .complete 3362,2 --Thistleshrub Valley
    .complete 2605,1 --The Thirsty Goblin
    .mob Gnarled Thistleshrub
    .mob Thistleshrub Rootshaper
    .mob Thistleshrub Dew Collector
step
    .goto 1446,31.8,74.15
    >>Talk to |cRXP_FRIENDLY_Tooga|r
    .accept 97540 >>Accept Oasis
    .accept 1560 >>Accept Tooga's Quest
    .target Tooga
step
    .goto 1446,31.8,74.15
    >>Talk to |cRXP_FRIENDLY_Tooga|r
    .turnin 97540 >>Turn in Oasis
    .target Tooga
step
    .goto 1446,51.57,26.76
    >>Talk to |cRXP_FRIENDLY_Tran'rek|r
    .turnin 3362 >>Turn in Thistleshrub Valley
    .target Tran'rek
step
    .goto 1446,51.81,28.66
    >>Talk to |cRXP_FRIENDLY_Marin Noggenfogger|r
    .turnin 2605 >>Turn in The Thirsty Goblin
    .accept 2606 >>Accept In Good Taste
    .target Marin Noggenfogger
step
    .goto 1446,51.06,26.87
    >>Talk to |cRXP_FRIENDLY_Sprinkle|r
    .turnin 2606 >>Turn in In Good Taste
    .target Sprinkle
step
    .goto 1446,66.58,25.67
    >>Talk to |cRXP_FRIENDLY_Torta|r
    .turnin 1560 >>Turn in Tooga's Quest
    .target Torta
step
    .goto 1457,41.83,85.62
    >>Talk to |cRXP_FRIENDLY_Gracina Spiritmight|r
    .turnin 162 >>Turn in Rise of the Silithid
    .target Gracina Spiritmight
step
    .goto 1449,49.04,23.4
    >>Collect |cRXP_LOOT_[Super Sticky Tar]|r from |cRXP_ENEMY_Tar Beast|r, |cRXP_ENEMY_Tar Lurker|r, |cRXP_ENEMY_Tar Lord|r
    *Collect 12 samples of Super Sticky Tar for Tran'rek in Gadgetzan.
    .complete 4504,1 --Super Sticky
    .mob Tar Beast
    .mob Tar Lurker
step
    .goto 1449,46.86,81.87
    >>Collect |cRXP_LOOT_[Gorishi Scent Gland]|r from |cRXP_ENEMY_Gorishi Hive Queen|r, |cRXP_ENEMY_Gorishi Worker|r, |cRXP_ENEMY_Gorishi Reaver|r
    *Bring a Gorishi Scent Gland and 5 Un'Goro Soil samples to Alchemist Pestlezugg in Gadgetzan.
    .complete 4496,1 --Bungle in the Jungle
    .mob Gorishi Hive Queen
    .mob Gorishi Worker
step
    .goto 1449,62.67,76.26
    >>Collect |cRXP_LOOT_[Un'Goro Soil]|r from |cRXP_ENEMY_Devilsaur|r, |cRXP_ENEMY_Ironhide Devilsaur|r, |cRXP_ENEMY_Tyrant Devilsaur|r
    *Bring a Gorishi Scent Gland and 5 Un'Goro Soil samples to Alchemist Pestlezugg in Gadgetzan.
    .complete 4496,2 --Bungle in the Jungle
    .mob Devilsaur
    .mob Ironhide Devilsaur
step
    .goto 1446,51.57,26.76
    >>Talk to |cRXP_FRIENDLY_Tran'rek|r
    .turnin 4504 >>Turn in Super Sticky
    .target Tran'rek
step
    .goto 1446,50.89,26.96
    >>Talk to |cRXP_FRIENDLY_Alchemist Pestlezugg|r
    .turnin 4496 >>Turn in Bungle in the Jungle
    .accept 4507 >>Accept Pawn Captures Queen
    .target Alchemist Pestlezugg
step
    >>Collect |cRXP_LOOT_[Gorishi Queen Brain]|r from |cRXP_ENEMY_Gorishi Hive Queen|r
    *Defeat the Gorishi Hive Queen once she is summoned.
    .complete 4507,1 --Pawn Captures Queen
    .mob Gorishi Hive Queen
step
    .goto 1446,50.89,26.96
    >>Talk to |cRXP_FRIENDLY_Alchemist Pestlezugg|r
    .turnin 4507 >>Turn in Pawn Captures Queen
    .target Alchemist Pestlezugg
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 50-60
#name 51-51 Azshara
#displayname 51-51 Azshara
#next 51-52 Un'Goro Crater
step
    .zone 1447 >>Travel to Azshara
    *How: Fly to Talrendis Point.
    *Level for this part: 51-51. 8 quests, roughly 40 min.
step
    .goto 1447,11.81,78.36
    >>Talk to |cRXP_FRIENDLY_Commander Truesong|r
    .accept 88812 >>Accept Reclaiming Ravencrest
    .target Commander Truesong
step
    .goto 1447,12.6,77.36
    >>Talk to |cRXP_FRIENDLY_Berdun Cliffbrew|r
    .accept 89015 >>Accept Deadliest Catch
    .target Berdun Cliffbrew
step
    .goto 1447,11.81,78.36
    >>Talk to |cRXP_FRIENDLY_Commander Truesong|r
    .turnin 88812 >>Turn in Reclaiming Ravencrest
    .accept 88813 >>Accept The Head of the Serpent
    .target Commander Truesong
step
    .goto 1447,41.02,53.05
    >>Collect |cRXP_LOOT_[Krellian's Head]|r from |cRXP_ENEMY_Warlord Krellian|r
    *Bring Warlord Krellian's head to Commander Truesong in Azshara.
    .complete 88813,1 --The Head of the Serpent
    .mob Warlord Krellian
step
    .goto 1447,50.56,42.7
    >>Talk to |cRXP_FRIENDLY_Saria Fairmoon|r
    .accept 89038 >>Accept A Monumental Task
    .target Saria Fairmoon
step
    .goto 1447,63.01,21.43
    >>Talk to |cRXP_FRIENDLY_Korsa|r
    .accept 86792 >>Accept Thinning Their Forces
    .target Korsa
step
    .goto 1447,66.26,19.38
    >>Kill |cRXP_ENEMY_Legashi Hellraiser|r. Kill |cRXP_ENEMY_Legashi Soulstealer|r. Kill |cRXP_ENEMY_Legashi Blackguard|r
    *Kill 6 Legashi Hellraisers, 4 Legashi Soulstealers, and 2 Legashi Blackguards for Korsa outside Legashi Stronghold.
    .complete 86792,1 --Thinning Their Forces
    .complete 86792,2 --Thinning Their Forces
    .complete 86792,3 --Thinning Their Forces
    .mob Legashi Hellraiser
    .mob Legashi Soulstealer
    .mob Legashi Blackguard
step
    .goto 1447,63.01,21.43
    >>Talk to |cRXP_FRIENDLY_Korsa|r
    .turnin 86792 >>Turn in Thinning Their Forces
    .target Korsa
step
    .goto 1447,66.58,14.56
    >>Talk to |cRXP_FRIENDLY_Graal|r
    .accept 86796 >>Accept Later, Satyr
    .target Graal
step
    .goto 1447,63.01,21.43
    >>Talk to |cRXP_FRIENDLY_Korsa|r
    .turnin 86796 >>Turn in Later, Satyr
    .target Korsa
step
    .goto 1447,71.24,89.5
    >>Collect |cRXP_LOOT_[Mammoth Shark Steak]|r from |cRXP_ENEMY_Mammoth Shark|r, |cRXP_ENEMY_Ravenous Shark|r. Collect |cRXP_LOOT_[Mark of the Queen]|r from |cRXP_PICK_Mark of the Queen|r
    *Bring a Mammoth Shark Steak to Berdun Cliffbrew at Talrendis Point in Azshara.
    *Search for the Mark of the Queen among the ruins of the Ravencrest Monument, and bring it to Saria Fairmoon in Azshara.
    .complete 89015,1 --Deadliest Catch
    .complete 89038,1 --A Monumental Task
    .mob Mammoth Shark
    .mob Ravenous Shark
step
    .goto 1447,50.56,42.7
    >>Talk to |cRXP_FRIENDLY_Saria Fairmoon|r
    .turnin 89038 >>Turn in A Monumental Task
    .accept 89053 >>Accept Your Final Reward
    .target Saria Fairmoon
step
    .goto 1447,49.42,41.81
    >>Click the |cRXP_PICK_Saria's Knapsack|r
    .turnin 89053 >>Turn in Your Final Reward
    .accept 89470 >>Accept Ill Tidings
step
    .goto 1447,12.6,77.36
    >>Talk to |cRXP_FRIENDLY_Berdun Cliffbrew|r
    .turnin 89015 >>Turn in Deadliest Catch
    .target Berdun Cliffbrew
step
    .goto 1447,11.81,78.36
    >>Talk to |cRXP_FRIENDLY_Commander Truesong|r
    .turnin 88813 >>Turn in The Head of the Serpent
    .turnin 89470 >>Turn in Ill Tidings
    .target Commander Truesong
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 50-60
#name 51-52 Un'Goro Crater
#displayname 51-52 Un'Goro Crater
#next 52-53 Western/Eastern Plaguelands
step
    .zone 1449 >>Travel to Un'Goro Crater
    *How: Fly to Marshal's Refuge.
    *Level for this part: 51-52. 24 quests, roughly 3 h 20 min.
step
    .goto 1449,43.62,8.5
    >>Talk to |cRXP_FRIENDLY_Spraggle Frock|r
    .accept 4492 >>Accept Lost!
    .target Spraggle Frock
step
    .goto 1449,43.53,8.44
    >>Click the |cRXP_PICK_Beware of Pterrordax|r
    .accept 4501 >>Accept Beware of Pterrordax
step
    .goto 1449,43.95,7.14
    >>Talk to |cRXP_FRIENDLY_Williden Marshal|r
    .accept 3881 >>Accept Expedition Salvation
    .target Williden Marshal
step
    .goto 1449,42.94,9.64
    >>Talk to |cRXP_FRIENDLY_Muigin|r
    .accept 4144 >>Accept Bloodpetal Sprouts
    .target Muigin
step
    .goto 1449,46.38,13.44
    >>Talk to |cRXP_FRIENDLY_Karna Remtravel|r
    .accept 4243 >>Accept Chasing A-Me 01
    .target Karna Remtravel
step
    .goto 1449,41.92,2.7
    >>Talk to |cRXP_FRIENDLY_J.D. Collie|r
    .accept 3942 >>Accept Linken's Memory
    .accept 4284 >>Accept Crystals of Power
    .target J.D. Collie
step
    .goto 1449,67.66,16.76
    >>Talk to |cRXP_FRIENDLY_A-Me 01|r
    .turnin 4243 >>Turn in Chasing A-Me 01
    .accept 4244 >>Accept Chasing A-Me 01
    .target A-Me 01
step
    .goto 1449,68.54,36.54
    >>Collect |cRXP_LOOT_[Crate of Foodstuffs]|r from |cRXP_PICK_Crate of Foodstuffs|r, |cRXP_PICK_Research Equipment|r
    *Bring a Crate of Foodstuffs and Research Equipment to Williden Marshal in Un'Goro Crater.
    .complete 3881,1 --Expedition Salvation
step
    .goto 1449,51.9,49.85
    >>Talk to |cRXP_FRIENDLY_Ringo|r
    .turnin 4492 >>Turn in Lost!
    .accept 4491 >>Accept A Little Help From My Friends
    .target Ringo
step
    .goto 1449,38.45,66.06
    >>Collect |cRXP_LOOT_[Research Equipment]|r from |cRXP_PICK_Research Equipment|r
    *Bring a Crate of Foodstuffs and Research Equipment to Williden Marshal in Un'Goro Crater.
    .complete 3881,2 --Expedition Salvation
step
    .goto 1449,62.67,76.26
    >>Collect |cRXP_LOOT_[Bloodpetal Sprout]|r from |cRXP_ENEMY_Devilsaur|r, |cRXP_ENEMY_Ironhide Devilsaur|r, |cRXP_ENEMY_Tyrant Devilsaur|r. Collect |cRXP_LOOT_[Red Power Crystal]|r from |cRXP_ENEMY_Devilsaur|r, |cRXP_ENEMY_Ironhide Devilsaur|r, |cRXP_ENEMY_Tyrant Devilsaur|r. Collect |cRXP_LOOT_[Yellow Power Crystal]|r from |cRXP_ENEMY_Devilsaur|r, |cRXP_ENEMY_Ironhide Devilsaur|r, |cRXP_ENEMY_Tyrant Devilsaur|r. Collect |cRXP_LOOT_[Green Power Crystal]|r from |cRXP_ENEMY_Devilsaur|r, |cRXP_ENEMY_Ironhide Devilsaur|r, |cRXP_ENEMY_Tyrant Devilsaur|r. Collect |cRXP_LOOT_[Blue Power Crystal]|r from |cRXP_ENEMY_Devilsaur|r, |cRXP_ENEMY_Ironhide Devilsaur|r, |cRXP_ENEMY_Tyrant Devilsaur|r
    *Collect 7 Power Crystals of each color: red, blue, yellow, and green. Bring them to J.D. Collie at Marshal's Refuge.
    .complete 4144,1 --Bloodpetal Sprouts
    .complete 4284,1 --Crystals of Power
    .complete 4284,2 --Crystals of Power
    .complete 4284,3 --Crystals of Power
    .complete 4284,4 --Crystals of Power
    .mob Devilsaur
    .mob Ironhide Devilsaur
step
    .goto 1449,71.64,75.96
    >>Talk to |cRXP_FRIENDLY_Torwa Pathfinder|r
    .accept 4289 >>Accept The Apes of Un'Goro
    .accept 4290 >>Accept The Fare of Lar'korwi
    .accept 87492 >>Accept Uncanny Crystal
    .target Torwa Pathfinder
step
    .goto 1449,71.64,75.96
    >>Collect |cRXP_LOOT_[Un'Goro Gorilla Pelt]|r from |cRXP_ENEMY_Un'Goro Gorilla|r. Collect |cRXP_LOOT_[Damaged Blue Crystal]|r from |cRXP_PICK_Damaged Blue Crystal|r
    *Bring 2 Un'Goro Gorilla Pelts, 2 Un'Goro Stomper Pelts, and 2 Un'Goro Thunderer Pelts to Torwa Pathfinder at the entrance of Un'Goro Crater.
    *Bring 1 Damaged Blue Crystal back to Torwa Pathfinder.
    .complete 4289,1 --The Apes of Un'Goro
    .complete 87492,1 --Uncanny Crystal
    .mob Un'Goro Gorilla
step
    .goto 1449,71.64,75.96
    >>Talk to |cRXP_FRIENDLY_Torwa Pathfinder|r
    .turnin 87492 >>Turn in Uncanny Crystal
    .target Torwa Pathfinder
step
    .goto 1449,68.74,56.71
    >>Collect |cRXP_LOOT_[Piece of Threshadon Carcass]|r from |cRXP_PICK_Fresh Threshadon Carcass|r
    *Find the carcass of Lar'korwi's freshest kill and steal a Piece of Threshadon Carcass before returning to Torwa Pathfinder in Un'Goro Crater.
    .complete 4290,1 --The Fare of Lar'korwi
step
    .goto 1449,71.64,75.96
    >>Talk to |cRXP_FRIENDLY_Torwa Pathfinder|r
    .turnin 4290 >>Turn in The Fare of Lar'korwi
    .accept 4291 >>Accept The Scent of Lar'korwi
    .target Torwa Pathfinder
step
    >>Collect |cRXP_LOOT_[Ravasaur Pheromone Gland]|r from |cRXP_ENEMY_Lar'korwi Mate|r
    *Bring 2 Ravasaur Pheromone Glands to Torwa Pathfinder near the entrance to Un'Goro Crater.
    .complete 4291,1 --The Scent of Lar'korwi
    .mob Lar'korwi Mate
step
    .goto 1449,71.64,75.96
    >>Talk to |cRXP_FRIENDLY_Torwa Pathfinder|r
    .turnin 4291 >>Turn in The Scent of Lar'korwi
    .accept 4292 >>Accept The Bait for Lar'korwi
    .target Torwa Pathfinder
step
    >>Collect |cRXP_LOOT_[Lar'korwi's Head]|r from |cRXP_ENEMY_Lar'korwi|r
    *Using the contents of Torwa's Pouch, summon Lar'korwi and defeat him. Then bring Lar'korwi's Head to Torwa Pathfinder near the entrance to Un'Goro Crater.
    .complete 4292,1 --The Bait for Lar'korwi
    .mob Lar'korwi
step
    .goto 1449,71.64,75.96
    >>Talk to |cRXP_FRIENDLY_Torwa Pathfinder|r
    .turnin 4292 >>Turn in The Bait for Lar'korwi
    .target Torwa Pathfinder
step
    .goto 1449,56.3,88.47
    >>Kill |cRXP_ENEMY_Pterrordax|r
    *Kill 10 Pterrordax and 15 Frenzied Pterrordax, then speak to Spraggle Frock at Marshal's Refuge.
    .complete 4501,1 --Beware of Pterrordax
    .mob Pterrordax
step
    .goto 1449,23.15,41.08
    >>Kill |cRXP_ENEMY_Frenzied Pterrordax|r
    *Kill 10 Pterrordax and 15 Frenzied Pterrordax, then speak to Spraggle Frock at Marshal's Refuge.
    .complete 4501,2 --Beware of Pterrordax
    .mob Frenzied Pterrordax
step
    .goto 1449,43.62,8.5
    >>Talk to |cRXP_FRIENDLY_Spraggle Frock|r
    .turnin 4501 >>Turn in Beware of Pterrordax
    .turnin 4491 >>Turn in A Little Help From My Friends
    .target Spraggle Frock
step
    .goto 1449,42.94,9.64
    >>Talk to |cRXP_FRIENDLY_Muigin|r
    .turnin 4144 >>Turn in Bloodpetal Sprouts
    .target Muigin
step
    .goto 1449,43.95,7.14
    >>Talk to |cRXP_FRIENDLY_Williden Marshal|r
    .turnin 3881 >>Turn in Expedition Salvation
    .target Williden Marshal
step
    .goto 1449,41.92,2.7
    >>Talk to |cRXP_FRIENDLY_J.D. Collie|r
    .turnin 4284 >>Turn in Crystals of Power
    .accept 4288 >>Accept The Western Pylon
    .accept 4285 >>Accept The Northern Pylon
    .accept 4287 >>Accept The Eastern Pylon
    .target J.D. Collie
step
    .goto 1449,41.92,2.7
    >>Talk to |cRXP_FRIENDLY_J.D. Collie|r
    .turnin 4288 >>Turn in The Western Pylon
    .turnin 4285 >>Turn in The Northern Pylon
    .turnin 4287 >>Turn in The Eastern Pylon
    .accept 4321 >>Accept Making Sense of It
    .target J.D. Collie
step
    .goto 1449,41.92,2.7
    >>Talk to |cRXP_FRIENDLY_J.D. Collie|r
    .turnin 4321 >>Turn in Making Sense of It
    .target J.D. Collie
step
    .goto 1449,65.65,14.68
    >>Collect |cRXP_LOOT_[Un'Goro Stomper Pelt]|r from |cRXP_ENEMY_Un'Goro Stomper|r. Collect |cRXP_LOOT_[Un'Goro Thunderer Pelt]|r from |cRXP_ENEMY_Un'Goro Thunderer|r
    *Bring 2 Un'Goro Gorilla Pelts, 2 Un'Goro Stomper Pelts, and 2 Un'Goro Thunderer Pelts to Torwa Pathfinder at the entrance of Un'Goro Crater.
    .complete 4289,2 --The Apes of Un'Goro
    .complete 4289,3 --The Apes of Un'Goro
    .mob Un'Goro Stomper
    .mob Un'Goro Thunderer
step
    .goto 1449,71.64,75.96
    >>Talk to |cRXP_FRIENDLY_Torwa Pathfinder|r
    .turnin 4289 >>Turn in The Apes of Un'Goro
    .accept 4301 >>Accept The Mighty U'cha
    .target Torwa Pathfinder
step
    .goto 1449,68.14,12.56
    >>Collect |cRXP_LOOT_[U'cha's Pelt]|r from |cRXP_ENEMY_U'cha|r
    *Bring U'cha's Pelt to Torwa Pathfinder at the entrance of Un'Goro Crater.
    .complete 4301,1 --The Mighty U'cha
    .mob U'cha
step
    .goto 1449,71.64,75.96
    >>Talk to |cRXP_FRIENDLY_Torwa Pathfinder|r
    .turnin 4301 >>Turn in The Mighty U'cha
    .target Torwa Pathfinder
step
    .goto 1448,51.35,81.51
    >>Talk to |cRXP_FRIENDLY_Eridan Bluewind|r
    .turnin 3942 >>Turn in Linken's Memory
    .accept 4084 >>Accept Silver Heart
    .target Eridan Bluewind
step
    .goto 1448,49.64,84.69
    >>Collect |cRXP_LOOT_[Silvery Claws]|r from |cRXP_ENEMY_Angerclaw Bear|r, |cRXP_ENEMY_Angerclaw Grizzly|r, |cRXP_ENEMY_Angerclaw Mauler|r
    *Collect 11 Silvery Claws and 1 Irontree Heart for Eridan Bluewind in Felwood.
    .complete 4084,1 --Silver Heart
    .mob Angerclaw Bear
    .mob Angerclaw Grizzly
step
    .goto 1448,51,24.93
    >>Collect |cRXP_LOOT_[Irontree Heart]|r from |cRXP_ENEMY_Irontree Wanderer|r, |cRXP_ENEMY_Irontree Stomper|r
    *Collect 11 Silvery Claws and 1 Irontree Heart for Eridan Bluewind in Felwood.
    .complete 4084,2 --Silver Heart
    .mob Irontree Wanderer
    .mob Irontree Stomper
step
    .goto 1448,51.35,81.51
    >>Talk to |cRXP_FRIENDLY_Eridan Bluewind|r
    .turnin 4084 >>Turn in Silver Heart
    .accept 4005 >>Accept Aquementas
    .target Eridan Bluewind
step
    >>Collect |cRXP_LOOT_[Silver Totem of Aquementas]|r
    *Take the Book of Aquor, the Silvery Claws, and the Irontree Heart to Tanaris.
    .complete 4005,1 --Aquementas
step
    .goto 1449,41.92,2.7
    >>Talk to |cRXP_FRIENDLY_J.D. Collie|r
    .turnin 4005 >>Turn in Aquementas
    .accept 3961 >>Accept Linken's Adventure
    .target J.D. Collie
step
    .goto 1449,44.66,8.1
    >>Talk to |cRXP_FRIENDLY_Linken|r
    .turnin 3961 >>Turn in Linken's Adventure
    .target Linken
step
    .goto 1413,62.45,38.73
    >>Talk to |cRXP_FRIENDLY_Liv Rizzlefix|r
    .accept 4502 >>Accept Volcanic Activity
    .target Liv Rizzlefix
step
    .goto 1427,34.69,51.89
    >>Collect |cRXP_LOOT_[Mithril Casing]|r from |cRXP_ENEMY_Clunk|r, |cRXP_ENEMY_Frostwolf Shredder Unit|r, |cRXP_ENEMY_Stormpike Shredder Unit|r
    *Find a Mithril Casing and return to A-Me 01 in Un'Goro Crater.
    .complete 4244,1 --Chasing A-Me 01
    .mob Clunk
    .mob Frostwolf Shredder Unit
step
    .goto 1449,67.66,16.76
    >>Talk to |cRXP_FRIENDLY_A-Me 01|r
    .turnin 4244 >>Turn in Chasing A-Me 01
    .accept 4245 >>Accept Chasing A-Me 01
    .target A-Me 01
step
    .goto 1449,46.38,13.44
    >>Talk to |cRXP_FRIENDLY_Karna Remtravel|r
    .turnin 4245 >>Turn in Chasing A-Me 01
    .target Karna Remtravel
step
    .goto 1449,49.45,47.77
    >>Collect |cRXP_LOOT_[Un'Goro Ash]|r from |cRXP_ENEMY_Scorching Elemental|r, |cRXP_ENEMY_Living Blaze|r, |cRXP_ENEMY_Blazerunner|r
    *Collect 9 samples of Un'Goro Ash from the fire elementals around the volcano in Un'Goro Crater, and return them to Liv Rizzlefix in Ratchet.
    .complete 4502,1 --Volcanic Activity
    .mob Scorching Elemental
    .mob Living Blaze
step
    .goto 1413,62.45,38.73
    >>Talk to |cRXP_FRIENDLY_Liv Rizzlefix|r
    .turnin 4502 >>Turn in Volcanic Activity
    .target Liv Rizzlefix
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 50-60
#name 52-53 Western/Eastern Plaguelands
#displayname 52-53 Western/Eastern Plaguelands
#next 53-54 Blasted Lands/Burning Steppes
step
    .zone 1422 >>Travel to Western
    *How: Fly to Chillwind Camp; later Light's Hope Chapel.
    *Level for this part: 52-53. 23 quests, roughly 2 h 50 min.
step
    .goto 1422,39.46,66.76
    >>Talk to |cRXP_FRIENDLY_Chromie|r
    .accept 4971 >>Accept A Matter of Time
    .target Chromie
step
    >>Kill |cRXP_ENEMY_Temporal Parasite|r
    *Use the Temporal Displacer near one of Andorhal's silos and uncover Temporal Parasites.
    .complete 4971,1 --A Matter of Time
    .mob Temporal Parasite
step
    .goto 1422,39.46,66.76
    >>Talk to |cRXP_FRIENDLY_Chromie|r
    .turnin 4971 >>Turn in A Matter of Time
    .accept 4972 >>Accept Counting Out Time
    .target Chromie
step
    .goto 1422,42.93,68.32
    >>Collect |cRXP_LOOT_[Andorhal Watch]|r from |cRXP_PICK_Small Lockbox|r
    *Locate 5 Andorhal Watches, found in lockboxes amongst the rubble of the city. Return with them to Chromie in the Andorhal Inn, Western Plaguelands.
    .complete 4972,1 --Counting Out Time
step
    .goto 1422,39.46,66.76
    >>Talk to |cRXP_FRIENDLY_Chromie|r
    .turnin 4972 >>Turn in Counting Out Time
    .target Chromie
step
    .goto 1422,53.73,64.66
    >>Talk to |cRXP_FRIENDLY_Mulgris Deepriver|r
    .accept 4985 >>Accept The Wildlife Suffers Too
    .target Mulgris Deepriver
step
    .goto 1422,62.71,50.32
    >>Kill |cRXP_ENEMY_Diseased Grizzly|r
    *Destroy 8 Diseased Grizzlies, and then return to Mulgris Deepriver at the Writhing Haunt, Western Plaguelands.
    .complete 4985,1 --The Wildlife Suffers Too
    .mob Diseased Grizzly
step
    .goto 1422,70.08,44.15
    >>Talk to |cRXP_FRIENDLY_Fallen Skyborne|r
    .accept 7790 >>Accept River Ends
    .target Fallen Skyborne
step
    .goto 1422,70.09,44.12
    >>Click the |cRXP_PICK_Argent Wayfinder|r
    .turnin 7790 >>Turn in River Ends
    .accept 8152 >>Accept Rapid Escape
step
    .goto 1422,70.09,44.12
    >>Click the |cRXP_PICK_Argent Wayfinder|r
    .turnin 8152 >>Turn in Rapid Escape
step
    .goto 1422,51.92,28.06
    >>Talk to |cRXP_FRIENDLY_Kirsta Deepshadow|r
    .accept 6004 >>Accept Unfinished Business
    .target Kirsta Deepshadow
step
    .goto 1422,40.53,51.4
    >>Kill |cRXP_ENEMY_Scarlet Medic|r
    *Kill 2 Scarlet Medics, 2 Scarlet Hunters, 2 Scarlet Magi and 2 Scarlet Knights before returning to Kirsta Deepshadow in Western Plaguelands.
    .complete 6004,1 --Unfinished Business
    .mob Scarlet Medic
step
    .goto 1422,51.45,44.14
    >>Kill |cRXP_ENEMY_Scarlet Hunter|r. Kill |cRXP_ENEMY_Scarlet Mage|r. Kill |cRXP_ENEMY_Scarlet Knight|r
    *Kill 2 Scarlet Medics, 2 Scarlet Hunters, 2 Scarlet Magi and 2 Scarlet Knights before returning to Kirsta Deepshadow in Western Plaguelands.
    .complete 6004,2 --Unfinished Business
    .complete 6004,3 --Unfinished Business
    .complete 6004,4 --Unfinished Business
    .mob Scarlet Hunter
    .mob Scarlet Mage
    .mob Scarlet Knight
step
    .goto 1422,51.92,28.06
    >>Talk to |cRXP_FRIENDLY_Kirsta Deepshadow|r
    .turnin 6004 >>Turn in Unfinished Business
    .accept 6023 >>Accept Unfinished Business
    .target Kirsta Deepshadow
step
    .goto 1422,57.83,36.1
    >>Kill |cRXP_ENEMY_Huntsman Radley|r
    *Kill Huntsman Radley and Cavalier Durgen before returning to Kirsta Deepshadow in Western Plaguelands.
    .complete 6023,1 --Unfinished Business
    .mob Huntsman Radley
step
    .goto 1422,55.15,23.62
    >>Kill |cRXP_ENEMY_Cavalier Durgen|r
    *Kill Huntsman Radley and Cavalier Durgen before returning to Kirsta Deepshadow in Western Plaguelands.
    .complete 6023,2 --Unfinished Business
    .mob Cavalier Durgen
step
    .goto 1422,51.92,28.06
    >>Talk to |cRXP_FRIENDLY_Kirsta Deepshadow|r
    .turnin 6023 >>Turn in Unfinished Business
    .target Kirsta Deepshadow
step
    .goto 1422,53.73,64.66
    >>Talk to |cRXP_FRIENDLY_Mulgris Deepriver|r
    .turnin 4985 >>Turn in The Wildlife Suffers Too
    .accept 4986 >>Accept Glyphed Oaken Branch
    .target Mulgris Deepriver
step
    .goto 1457,35.37,8.4
    >>Talk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .turnin 4986 >>Turn in Glyphed Oaken Branch
    .target Mathrengyl Bearwalker
step
    .goto 1423,31.15,77.98
    >>Talk to |cRXP_FRIENDLY_Pamela Redpath|r
    .accept 5241 >>Accept Uncle Carlin
    .accept 5152 >>Accept Auntie Marlene
    .target Pamela Redpath
step
    .goto 1423,71.7,50.04
    >>Talk to |cRXP_FRIENDLY_Carlin Redpath|r
    .turnin 5241 >>Turn in Uncle Carlin
    .target Carlin Redpath
step
    .goto 1423,70.88,48.21
    >>Talk to |cRXP_FRIENDLY_Argent Medic|r
    .accept 97986 >>Accept Argent Arbiter
    .target Argent Medic
step
    .goto 1423,71.7,50.04
    >>Talk to |cRXP_FRIENDLY_Carlin Redpath|r
    .accept 5211 >>Accept Defenders of Darrowshire
    .target Carlin Redpath
step
    .goto 1423,71.63,50.09
    >>Talk to |cRXP_FRIENDLY_Duke Nicholas Zverenhoff|r
    .accept 5503 >>Accept Argent Dawn Commission
    .target Duke Nicholas Zverenhoff
step
    .goto 1423,70.88,48.21
    >>Talk to |cRXP_FRIENDLY_Argent Medic|r
    .turnin 97986 >>Turn in Argent Arbiter
    .target Argent Medic
step
    .goto 1423,71.63,50.09
    >>Talk to |cRXP_FRIENDLY_Duke Nicholas Zverenhoff|r
    .turnin 5503 >>Turn in Argent Dawn Commission
    .target Duke Nicholas Zverenhoff
step
    >>Kill |cRXP_ENEMY_Darrowshire Spirit|r
    *Free 15 Darrowshire Spirits and return to Carlin Redpath.
    .complete 5211,1 --Defenders of Darrowshire
    .mob Darrowshire Spirit
step
    .goto 1423,71.7,50.04
    >>Talk to |cRXP_FRIENDLY_Carlin Redpath|r
    .turnin 5211 >>Turn in Defenders of Darrowshire
    .target Carlin Redpath
step
    .goto 1423,50.92,11.48
    >>Talk to |cRXP_FRIENDLY_Adon|r
    .accept 97987 >>Accept Stormwind's High Order
    .target Adon
step
    .goto 1423,5.16,35.57
    >>Talk to |cRXP_FRIENDLY_Tirion Fordring|r
    .accept 5542 >>Accept Demon Dogs
    .accept 5543 >>Accept Blood Tinged Skies
    .accept 5544 >>Accept Carrion Grubbage
    .target Tirion Fordring
step
    .goto 1423,17.43,56.35
    >>Kill |cRXP_ENEMY_Plaguehound Runt|r. Kill |cRXP_ENEMY_Plaguebat|r
    *Slay 20 Plaguehound Runts, 5 Plaguehounds and 5 Frenzied Plaguehounds. Return to Tirion Fordring when the task is complete.
    *Slay 30 Plaguebats and return to Tirion Fordring.
    .complete 5542,1 --Demon Dogs
    .complete 5543,1 --Blood Tinged Skies
    .mob Plaguehound Runt
    .mob Plaguebat
step
    .goto 1423,5.16,35.57
    >>Talk to |cRXP_FRIENDLY_Tirion Fordring|r
    .turnin 5543 >>Turn in Blood Tinged Skies
    .target Tirion Fordring
step
    .goto 1423,47.25,48.12
    >>Kill |cRXP_ENEMY_Plaguehound|r
    *Slay 20 Plaguehound Runts, 5 Plaguehounds and 5 Frenzied Plaguehounds. Return to Tirion Fordring when the task is complete.
    .complete 5542,2 --Demon Dogs
    .mob Plaguehound
step
    .goto 1423,44.45,28.28
    >>Kill |cRXP_ENEMY_Frenzied Plaguehound|r
    *Slay 20 Plaguehound Runts, 5 Plaguehounds and 5 Frenzied Plaguehounds. Return to Tirion Fordring when the task is complete.
    .complete 5542,3 --Demon Dogs
    .mob Frenzied Plaguehound
step
    .goto 1423,55.96,25.56
    >>Collect |cRXP_LOOT_[Slab of Carrion Worm Meat]|r from |cRXP_ENEMY_Random Worm|r, |cRXP_ENEMY_Carrion Devourer|r
    *Seek out the Carrion Grubs and Devourers of the region. Slay them and harvest their meat. Return to Tirion Fordring when you have gathered 15 Slabs of Carrion Worm Meat.
    .complete 5544,1 --Carrion Grubbage
    .mob Random Worm
    .mob Carrion Devourer
step
    .goto 1423,5.16,35.57
    >>Talk to |cRXP_FRIENDLY_Tirion Fordring|r
    .turnin 5542 >>Turn in Demon Dogs
    .turnin 5544 >>Turn in Carrion Grubbage
    .accept 5742 >>Accept Redemption
    .target Tirion Fordring
step
    .goto 1423,5.16,35.57
    >>Talk to |cRXP_FRIENDLY_Tirion Fordring|r
    .turnin 5742 >>Turn in Redemption
    .accept 5781 >>Accept Of Forgotten Memories
    .target Tirion Fordring
step
    >>Collect |cRXP_LOOT_[Taelan's Hammer]|r from |cRXP_ENEMY_Mercutio Filthgorger|r
    *Travel to the Undercroft - at the southernmost section of the Eastern Plaguelands - and recover Taelan's Hammer. Return to Tirion Fordring upon completion of your objective.
    .complete 5781,1 --Of Forgotten Memories
    .mob Mercutio Filthgorger
step
    .goto 1423,5.16,35.57
    >>Talk to |cRXP_FRIENDLY_Tirion Fordring|r
    .turnin 5781 >>Turn in Of Forgotten Memories
    .target Tirion Fordring
step
    .goto 1422,49.17,78.57
    >>Talk to |cRXP_FRIENDLY_Marlene Redpath|r
    .turnin 5152 >>Turn in Auntie Marlene
    .accept 5153 >>Accept A Strange Historian
    .target Marlene Redpath
step
    .goto 1422,49.7,76.76
    >>Collect |cRXP_LOOT_[Joseph's Wedding Ring]|r from |cRXP_PICK_Joseph Redpath's Monument|r
    *Bring Joseph's Wedding Ring to Chromie.
    .complete 5153,1 --A Strange Historian
step
    .goto 1422,39.46,66.76
    >>Talk to |cRXP_FRIENDLY_Chromie|r
    .turnin 5153 >>Turn in A Strange Historian
    .accept 5154 >>Accept The Annals of Darrowshire
    .target Chromie
step
    >>Collect |cRXP_LOOT_[Annals of Darrowshire]|r from |cRXP_PICK_Musty Tome|r
    *Bring the Annals of Darrowshire to Chromie in Andorhal.
    .complete 5154,1 --The Annals of Darrowshire
step
    .goto 1422,39.46,66.76
    >>Talk to |cRXP_FRIENDLY_Chromie|r
    .turnin 5154 >>Turn in The Annals of Darrowshire
    .accept 5210 >>Accept Brother Carlin
    .target Chromie
step
    .goto 1453,78.61,48.1
    >>Talk to |cRXP_FRIENDLY_Saera Wirraway|r
    .turnin 97987 >>Turn in Stormwind's High Order
    .target Saera Wirraway
step
    .goto 1423,71.7,50.04
    >>Talk to |cRXP_FRIENDLY_Carlin Redpath|r
    .turnin 5210 >>Turn in Brother Carlin
    .accept 5181 >>Accept Villains of Darrowshire
    .target Carlin Redpath
step
    .goto 1423,44.34,41.18
    >>Collect |cRXP_LOOT_[Skull of Horgus]|r from |cRXP_PICK_Horgus' Skull|r
    *Bring the Skull of Horgus and the Shattered Sword of Marduk to Carlin Redpath at Light's Hope Chapel.
    .complete 5181,1 --Villains of Darrowshire
step
    .goto 1423,46.86,55.43
    >>Collect |cRXP_LOOT_[Shattered Sword of Marduk]|r from |cRXP_PICK_Shattered Sword of Marduk|r
    *Bring the Skull of Horgus and the Shattered Sword of Marduk to Carlin Redpath at Light's Hope Chapel.
    .complete 5181,2 --Villains of Darrowshire
step
    .goto 1423,71.7,50.04
    >>Talk to |cRXP_FRIENDLY_Carlin Redpath|r
    .turnin 5181 >>Turn in Villains of Darrowshire
    .target Carlin Redpath
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 50-60
#name 53-54 Blasted Lands/Burning Steppes
#displayname 53-54 Blasted Lands/Burning Steppes
#next 54-54 Searing Gorge
step
    #completewith next
    +|cRXP_WARN_On the way: lead-in quests in Swamp of Sorrows that open quests in Blasted Lands|r
step
    .goto 1435,25.98,31.4
    >>Talk to |cRXP_FRIENDLY_Magtoor|r
    .accept 93679 >>Accept Visions of Another
    .target Magtoor
step
    .goto 1435,25.98,31.4
    >>Talk to |cRXP_FRIENDLY_Magtoor|r
    .turnin 93679 >>Turn in Visions of Another
    .accept 93684 >>Accept The Found One
    .target Magtoor
step
    .zone 1419 >>Travel to Blasted Lands
    *How: In Kalimdor? Boat Auberdine -> Stormwind Harbor first. Then fly to Nethergarde Keep or Morgan's Vigil.
    *Level for this part: 53-54. 12 quests, roughly 1 h 30 min.
step
    .goto 1419,51.98,35.65
    >>Talk to |cRXP_FRIENDLY_Kum'isha the Collector|r
    .turnin 93684 >>Turn in The Found One
    .accept 93572 >>Accept To Serve The Draenei
    .accept 3501 >>Accept Everything Counts In Large Amounts
    .accept 93685 >>Accept To Serve Kum'isha
    .accept 2521 >>Accept To Serve Kum'isha
    .target Kum'isha the Collector
step
    .goto 1419,51.98,35.65
    >>Talk to |cRXP_FRIENDLY_Kum'isha the Collector|r
    .turnin 93572 >>Turn in To Serve The Draenei
    .target Kum'isha the Collector
step
    .goto 1419,50.06,41.14
    >>Collect |cRXP_LOOT_[Imperfect Draenethyst Fragment]|r from |cRXP_ENEMY_Dreadmaul Ogre|r, |cRXP_ENEMY_Dreadmaul Ogre Mage|r, |cRXP_ENEMY_Dreadmaul Brute|r. Collect |cRXP_LOOT_[Flawless Draenethyst Sphere]|r from |cRXP_ENEMY_Dreadmaul Ogre|r, |cRXP_ENEMY_Dreadmaul Ogre Mage|r, |cRXP_ENEMY_Dreadmaul Brute|r
    *Bring Kum'isha Imperfect Draenethyst Fragments and be rewarded for each one you turn in.
    *Find a Flawless Draenethyst Sphere in the Blasted Lands, and bring it to Kum'isha the Collector.
    *In your journeys throughout the Blasted Lands, should you ever come across a Flawless Draenethyst Sphere, take the item back to Kum'isha the Collector.
    .complete 3501,1 --Everything Counts In Large Amounts
    .complete 93685,1 --To Serve Kum'isha
    .complete 2521,1 --To Serve Kum'isha
    .mob Dreadmaul Ogre
    .mob Dreadmaul Ogre Mage
step
    .goto 1419,51.98,35.65
    >>Talk to |cRXP_FRIENDLY_Kum'isha the Collector|r
    .turnin 3501 >>Turn in Everything Counts In Large Amounts
    .turnin 93685 >>Turn in To Serve Kum'isha
    .turnin 2521 >>Turn in To Serve Kum'isha
    .target Kum'isha the Collector
step
    .goto 1419,67.57,19.29
    >>Talk to |cRXP_FRIENDLY_Ambassador Ardalan|r
    .accept 2783 >>Accept Petty Squabbles
    .target Ambassador Ardalan
step
    .goto 1435,34.29,66.14
    >>Talk to |cRXP_FRIENDLY_Fallen Hero of the Horde|r
    .turnin 2783 >>Turn in Petty Squabbles
    .accept 2721 >>Accept Kirith
    .accept 2801 >>Accept A Tale of Sorrow
    .target Fallen Hero of the Horde
step
    .goto 1435,34.29,66.14
    >>Talk to |cRXP_FRIENDLY_Fallen Hero of the Horde|r
    .turnin 2721 >>Turn in Kirith
    .turnin 2801 >>Turn in A Tale of Sorrow
    .accept 2681 >>Accept The Stones That Bind Us
    .target Fallen Hero of the Horde
step
    .goto 1428,84.56,68.68
    >>Talk to |cRXP_FRIENDLY_Oralius|r
    .accept 4283 >>Accept FIFTY! YEP!
    .target Oralius
step
    .goto 1428,43.67,34.1
    >>Collect |cRXP_LOOT_[Blackrock Medallion]|r from |cRXP_ENEMY_Blackrock Ambusher|r, |cRXP_ENEMY_Blackrock Raider|r, |cRXP_ENEMY_Blackrock Slayer|r
    *Oralius wants 50 Blackrock Medallions. Chances are high that these medallions can be found on the orcs in the Burning Steppes.
    .complete 4283,1 --FIFTY! YEP!
    .mob Blackrock Ambusher
    .mob Blackrock Raider
step
    .goto 1428,84.56,68.68
    >>Talk to |cRXP_FRIENDLY_Oralius|r
    .turnin 4283 >>Turn in FIFTY! YEP!
    .target Oralius
step
    .goto 1419,61.79,51.17
    >>Kill |cRXP_ENEMY_Servant of Razelikh|r
    *Free nine Servants of Razelikh, three Servants of Sevine, three Servants of Allistarj, and three Servants of Grol. Return to the Fallen Hero when your task is complete. You must remain within close proximity of the stones or the process will fail.
    .complete 2681,1 --The Stones That Bind Us
    .mob Servant of Razelikh
step
    .goto 1419,41.22,14.43
    >>Kill |cRXP_ENEMY_Servant of Grol|r
    *Free nine Servants of Razelikh, three Servants of Sevine, three Servants of Allistarj, and three Servants of Grol. Return to the Fallen Hero when your task is complete. You must remain within close proximity of the stones or the process will fail.
    .complete 2681,2 --The Stones That Bind Us
    .mob Servant of Grol
step
    .goto 1419,64.37,34.25
    >>Kill |cRXP_ENEMY_Servant of Allistarj|r
    *Free nine Servants of Razelikh, three Servants of Sevine, three Servants of Allistarj, and three Servants of Grol. Return to the Fallen Hero when your task is complete. You must remain within close proximity of the stones or the process will fail.
    .complete 2681,3 --The Stones That Bind Us
    .mob Servant of Allistarj
step
    .goto 1419,40.99,40.09
    >>Kill |cRXP_ENEMY_Servant of Sevine|r
    *Free nine Servants of Razelikh, three Servants of Sevine, three Servants of Allistarj, and three Servants of Grol. Return to the Fallen Hero when your task is complete. You must remain within close proximity of the stones or the process will fail.
    .complete 2681,4 --The Stones That Bind Us
    .mob Servant of Sevine
step
    .goto 1435,34.29,66.14
    >>Talk to |cRXP_FRIENDLY_Fallen Hero of the Horde|r
    .turnin 2681 >>Turn in The Stones That Bind Us
    .accept 2702 >>Accept Heroes of Old
    .target Fallen Hero of the Horde
step
    .goto 1435,34.29,66.14
    >>Talk to |cRXP_FRIENDLY_Fallen Hero of the Horde|r
    .turnin 2702 >>Turn in Heroes of Old
    .target Fallen Hero of the Horde
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 50-60
#name 54-54 Searing Gorge
#displayname 54-54 Searing Gorge
#next 54-55 Silithus
step
    #completewith next
    +|cRXP_WARN_On the way: lead-in quests in Ironforge that open quests in Searing Gorge|r
step
    .goto 1455,71.5,15.74
    >>Talk to |cRXP_FRIENDLY_Curator Thorius|r
    .accept 3371 >>Accept Dwarven Justice
    .target Curator Thorius
step
    .zone 1427 >>Travel to Searing Gorge
    *How: Fly to Thorium Point.
    *Level for this part: 54-54. 13 quests, roughly 1 h 40 min.
step
    .goto 1427,41.14,25.56
    >>Talk to |cRXP_FRIENDLY_Dying Archaeologist|r
    .turnin 3371 >>Turn in Dwarven Justice
    .accept 3372 >>Accept Release Them
    .target Dying Archaeologist
step
    .goto 1427,38.8,28.51
    >>Talk to |cRXP_FRIENDLY_Master Smith Burninate|r
    .accept 7722 >>Accept What the Flux?
    .target Master Smith Burninate
step
    .goto 1427,37.65,26.47
    >>Click the |cRXP_PICK_Wanted/Missing/Lost & Found|r
    .accept 7701 >>Accept WANTED: Overseer Maltorius
step
    .goto 1427,29.57,26.29
    >>Talk to |cRXP_FRIENDLY_Zamael Lunthistle|r
    .accept 3377 >>Accept Prayer to Elune
    .target Zamael Lunthistle
step
    .goto 1427,29.57,26.29
    >>Talk to |cRXP_FRIENDLY_Zamael Lunthistle|r
    .turnin 3377 >>Turn in Prayer to Elune
    .accept 3378 >>Accept Prayer to Elune
    .target Zamael Lunthistle
step
    .goto 1427,29.14,25.87
    >>Collect |cRXP_LOOT_[Mysterious Artifact]|r from |cRXP_PICK_Twilight Artifact|r
    *Find the Mysterious Artifact being guarded by the Twilight's Hammer Idolaters in the northwest quadrant of the Searing Gorge and bring it to the Altar of Suntara in the Slag Pit.
    .complete 3372,1 --Release Them
step
    .goto 1427,41.25,25.41
    >>Click the |cRXP_PICK_Altar of Suntara|r
    .turnin 3372 >>Turn in Release Them
step
    .goto 1427,41.14,25.56
    >>Talk to |cRXP_FRIENDLY_Dying Archaeologist|r
    .accept 3566 >>Accept Rise, Obsidion!
    .target Dying Archaeologist
step
    .goto 1427,41.14,25.56
    >>Collect |cRXP_LOOT_[Head of Lathoric the Black]|r from |cRXP_ENEMY_Lathoric the Black|r. Collect |cRXP_LOOT_[Heart of Obsidion]|r from |cRXP_ENEMY_Obsidion|r
    *Slay Lathoric the Black and Obsidion, and return to Thorius in Ironforge with the Head of Lathoric the Black and the Heart of Obsidion.
    .complete 3566,1 --Rise, Obsidion!
    .complete 3566,2 --Rise, Obsidion!
    .mob Lathoric the Black
    .mob Obsidion
step
    .goto 1427,40.45,35.74
    >>Collect |cRXP_LOOT_[Secret Plans: Fiery Flux]|r from |cRXP_PICK_Secret Plans: Fiery Flux|r. Collect |cRXP_LOOT_[Head of Overseer Maltorius]|r from |cRXP_ENEMY_Overseer Maltorius|r
    *Somewhere in the Slag Pit of the Cauldron you will find the Secret Plans: Fiery Flux that Overseer Maltorius stole. Find those plans and return them to Master Smith Burninate in the Searing Gorge.
    *Deep within the Slag Pit of the Cauldron, in the Searing Gorge, you will find the traitorous Dark Iron dwarf named Overseer Maltorius.
    .complete 7722,1 --What the Flux?
    .complete 7701,1 --WANTED: Overseer Maltorius
    .mob Overseer Maltorius
step
    .goto 1427,39.06,38.99
    >>Talk to |cRXP_FRIENDLY_Kalaran Windblade|r
    .accept 3452 >>Accept The Flame's Casing
    .target Kalaran Windblade
step
    .goto 1427,38.8,28.51
    >>Talk to |cRXP_FRIENDLY_Master Smith Burninate|r
    .turnin 7722 >>Turn in What the Flux?
    .target Master Smith Burninate
step
    .goto 1427,37.74,26.56
    >>Talk to |cRXP_FRIENDLY_Lookout Captain Lolo Longstriker|r
    .turnin 7701 >>Turn in WANTED: Overseer Maltorius
    .target Lookout Captain Lolo Longstriker
step
    .goto 1427,19.65,38.6
    >>Collect |cRXP_LOOT_[Prayer to Elune]|r from |cRXP_ENEMY_Twilight Dark Shaman|r, |cRXP_ENEMY_Twilight Fire Guard|r, |cRXP_ENEMY_Twilight Geomancer|r. Collect |cRXP_LOOT_[Symbol of Ragnaros]|r from |cRXP_ENEMY_Twilight Dark Shaman|r, |cRXP_ENEMY_Twilight Fire Guard|r, |cRXP_ENEMY_Twilight Geomancer|r
    *Find the Prayer to Elune and take it to Astarii Starseeker in Darnassus.
    *Find and return a Symbol of Ragnaros to Kalaran Windblade.
    .complete 3378,1 --Prayer to Elune
    .complete 3452,1 --The Flame's Casing
    .mob Twilight Dark Shaman
    .mob Twilight Fire Guard
step
    .goto 1427,39.06,38.99
    >>Talk to |cRXP_FRIENDLY_Kalaran Windblade|r
    .turnin 3452 >>Turn in The Flame's Casing
    .accept 3453 >>Accept The Torch of Retribution
    .target Kalaran Windblade
step
    .goto 1427,39.06,38.99
    >>Talk to |cRXP_FRIENDLY_Kalaran Windblade|r
    .turnin 3453 >>Turn in The Torch of Retribution
    .accept 3454 >>Accept The Torch of Retribution
    .target Kalaran Windblade
step
    .goto 1427,39.06,39.07
    >>Click the |cRXP_PICK_Torch of Retribution|r
    .turnin 3454 >>Turn in The Torch of Retribution
step
    .goto 1427,39.06,38.99
    >>Talk to |cRXP_FRIENDLY_Kalaran Windblade|r
    .accept 3462 >>Accept Squire Maltrake
    .target Kalaran Windblade
step
    .goto 1427,39.17,39
    >>Talk to |cRXP_FRIENDLY_Squire Maltrake|r
    .turnin 3462 >>Turn in Squire Maltrake
    .accept 3463 >>Accept Set Them Ablaze!
    .target Squire Maltrake
step
    .goto 1427,35.67,60.68
    >>Click |cRXP_PICK_Sentry Brazier|r
    *Set the North, South, East, and West Sentry Towers on fire by using the Torch of Retribution inside each of the buildings.
    .complete 3463,1 --Set Them Ablaze!
    .complete 3463,2 --Set Them Ablaze!
    .complete 3463,4 --Set Them Ablaze!
step
    .goto 1427,50.07,54.74
    >>Click |cRXP_PICK_Sentry Brazier|r
    *Set the North, South, East, and West Sentry Towers on fire by using the Torch of Retribution inside each of the buildings.
    .complete 3463,3 --Set Them Ablaze!
step
    .goto 1427,39.17,39
    >>Talk to |cRXP_FRIENDLY_Squire Maltrake|r
    .turnin 3463 >>Turn in Set Them Ablaze!
    .target Squire Maltrake
step
    .goto 1427,38.85,38.99
    >>Click the |cRXP_PICK_Hoard of the Black Dragonflight|r
    .accept 3481 >>Accept Trinkets...
step
    .goto 1427,38.85,38.99
    >>Click the |cRXP_PICK_Hoard of the Black Dragonflight|r
    .turnin 3481 >>Turn in Trinkets...
step
    .goto 1457,38.33,80.95
    >>Talk to |cRXP_FRIENDLY_Astarii Starseeker|r
    .turnin 3378 >>Turn in Prayer to Elune
    .target Astarii Starseeker
step
    .goto 1455,71.5,15.74
    >>Talk to |cRXP_FRIENDLY_Curator Thorius|r
    .turnin 3566 >>Turn in Rise, Obsidion!
    .target Curator Thorius
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 50-60
#name 54-55 Silithus
#displayname 54-55 Silithus
#next 55-55 Silithus
step
    .zone 1451 >>Travel to Silithus
    *How: Fly to Cenarion Hold.
    *Level for this part: 54-55. 8 quests, roughly 1 h.
step
    #completewith next
    .goto 1451,50.58,34.45,15,0
    >>Talk to |cRXP_FRIENDLY_Cloud Skydancer|r if you don't have this flight path yet
    .fp Cloud Skydancer >>Get the flight path
    .target Cloud Skydancer
step
    .goto 1451,51.61,38.63
    >>Talk to |cRXP_FRIENDLY_Beetix Ficklespragg|r
    .accept 8277 >>Accept Deadly Desert Venom
    .target Beetix Ficklespragg
step
    .goto 1451,51.15,38.29
    >>Talk to |cRXP_FRIENDLY_Windcaller Proudhorn|r
    .accept 8280 >>Accept Securing the Supply Lines
    .target Windcaller Proudhorn
step
    .goto 1451,51.35,38.27
    >>Click the |cRXP_PICK_Wanted Poster: Deathclasp|r
    .accept 8283 >>Accept Wanted - Deathclasp, Terror of the Sands
step
    .goto 1451,49.67,37.46
    >>Talk to |cRXP_FRIENDLY_Geologist Larksbane|r
    .accept 8284 >>Accept The Twilight Mystery
    .target Geologist Larksbane
step
    .goto 1451,64.35,27.03
    >>Collect |cRXP_LOOT_[Stonelash Scorpid Stinger]|r from |cRXP_ENEMY_Stonelash Scorpid|r
    *Beetix Ficklespragg at Cenarion Hold in Silithus wants you to gather 8 Stonelash Scorpid Stingers and 8 Sand Skitterer Fangs. Return to her when you have completed the task.
    .complete 8277,1 --Deadly Desert Venom
    .mob Stonelash Scorpid
step
    .goto 1451,58.14,18.03
    >>Collect |cRXP_LOOT_[Sand Skitterer Fang]|r from |cRXP_ENEMY_Sand Skitterer|r. Kill |cRXP_ENEMY_Dredge Striker|r
    *Beetix Ficklespragg at Cenarion Hold in Silithus wants you to gather 8 Stonelash Scorpid Stingers and 8 Sand Skitterer Fangs. Return to her when you have completed the task.
    *Windcaller Proudhorn at Cenarion Hold in Silithus wants you to kill 15 Dredge Strikers.
    .complete 8277,2 --Deadly Desert Venom
    .complete 8280,1 --Securing the Supply Lines
    .mob Sand Skitterer
    .mob Dredge Striker
step
    .goto 1451,51.61,38.63
    >>Talk to |cRXP_FRIENDLY_Beetix Ficklespragg|r
    .turnin 8277 >>Turn in Deadly Desert Venom
    .target Beetix Ficklespragg
step
    .goto 1451,51.15,38.29
    >>Talk to |cRXP_FRIENDLY_Windcaller Proudhorn|r
    .turnin 8280 >>Turn in Securing the Supply Lines
    .target Windcaller Proudhorn
step
    .goto 1451,51.61,38.63
    >>Talk to |cRXP_FRIENDLY_Beetix Ficklespragg|r
    .accept 8278 >>Accept Noggle's Last Hope
    .target Beetix Ficklespragg
step
    .goto 1451,51.15,38.29
    >>Talk to |cRXP_FRIENDLY_Windcaller Proudhorn|r
    .accept 8281 >>Accept Stepping Up Security
    .target Windcaller Proudhorn
step
    .goto 1451,32.82,41.06
    >>Kill |cRXP_ENEMY_Dredge Crusher|r
    *Windcaller Proudhorn at Cenarion Hold in Silithus wants you to slay 20 Dredge Crushers.
    .complete 8281,1 --Stepping Up Security
    .mob Dredge Crusher
step
    .goto 1451,51.15,38.29
    >>Talk to |cRXP_FRIENDLY_Windcaller Proudhorn|r
    .turnin 8281 >>Turn in Stepping Up Security
    .target Windcaller Proudhorn
step
    .goto 1451,24.4,11.76
    >>Collect |cRXP_LOOT_[Twilight Tablet Fragment]|r from |cRXP_ENEMY_Whirling Invader|r
    *Geologist Larksbane at Cenarion Hold in Silithus wants you to collect 8 Twilight Tablet Fragments.
    .complete 8284,1 --The Twilight Mystery
    .mob Whirling Invader
step
    .goto 1451,49.67,37.46
    >>Talk to |cRXP_FRIENDLY_Geologist Larksbane|r
    .turnin 8284 >>Turn in The Twilight Mystery
    .accept 8285 >>Accept The Deserter
    .target Geologist Larksbane
step
    .goto 1451,67.19,69.76
    >>Talk to |cRXP_FRIENDLY_Hermit Ortell|r
    .turnin 8285 >>Turn in The Deserter
    .target Hermit Ortell
step
    .goto 1451,45.07,92.31
    >>Collect |cRXP_LOOT_[Deathclasp's Pincer]|r from |cRXP_ENEMY_Deathclasp|r
    *Bring Deathclasp's Pincer to Vish Kozus, Captain of the Guard.
    .complete 8283,1 --Wanted - Deathclasp, Terror of the Sands
    .mob Deathclasp
step
    .goto 1451,27.41,79.96
    >>Collect |cRXP_LOOT_[Stonelash Flayer Stinger]|r from |cRXP_ENEMY_Stonelash Flayer|r. Collect |cRXP_LOOT_[Rock Stalker Fang]|r from |cRXP_ENEMY_Rock Stalker|r
    *Beetix Ficklespragg at Cenarion Hold in Silithus wants you to gather 3 Stonelash Pincer Stingers, 3 Stonelash Flayer Stingers and 3 Rock Stalker Fangs.
    .complete 8278,1 --Noggle's Last Hope
    .complete 8278,3 --Noggle's Last Hope
    .mob Stonelash Flayer
    .mob Rock Stalker
step
    .goto 1451,38.97,62.66
    >>Collect |cRXP_LOOT_[Stonelash Pincer Stinger]|r from |cRXP_ENEMY_Stonelash Pincer|r
    *Beetix Ficklespragg at Cenarion Hold in Silithus wants you to gather 3 Stonelash Pincer Stingers, 3 Stonelash Flayer Stingers and 3 Rock Stalker Fangs.
    .complete 8278,2 --Noggle's Last Hope
    .mob Stonelash Pincer
step
    .goto 1451,51.61,38.63
    >>Talk to |cRXP_FRIENDLY_Beetix Ficklespragg|r
    .turnin 8278 >>Turn in Noggle's Last Hope
    .target Beetix Ficklespragg
step
    .goto 1451,51.63,38.5
    >>Talk to |cRXP_FRIENDLY_Noggle Ficklespragg|r
    .accept 8282 >>Accept Noggle's Lost Satchel
    .target Noggle Ficklespragg
step
    .goto 1451,50.75,33.65
    >>Talk to |cRXP_FRIENDLY_Vish Kozus|r
    .turnin 8283 >>Turn in Wanted - Deathclasp, Terror of the Sands
    .target Vish Kozus
step
    .goto 1451,44.56,91.38
    >>Collect |cRXP_LOOT_[Noggle's Satchel]|r from |cRXP_PICK_Noggle's Satchel|r
    *Retrieve Noggle's Satchel from the mountains in the south of Silithus and return it to him at Cenarion Hold.
    .complete 8282,1 --Noggle's Lost Satchel
step
    .goto 1451,51.63,38.5
    >>Talk to |cRXP_FRIENDLY_Noggle Ficklespragg|r
    .turnin 8282 >>Turn in Noggle's Lost Satchel
    .target Noggle Ficklespragg
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 50-60
#name 55-55 Silithus
#displayname 55-55 Silithus
#next 55-56 Winterspring
step
    .zone 1451 >>Travel to Silithus
    *How: Fly to Cenarion Hold.
    *Level for this part: 55-55. 10 quests, roughly 1 h 15 min.
step
    .goto 1451,50.68,34.71
    >>Talk to |cRXP_FRIENDLY_Rifleman Torrig|r
    .accept 9415 >>Accept Report to Marshal Bluewall
    .target Rifleman Torrig
step
    .goto 1451,49.5,37.27
    >>Talk to |cRXP_FRIENDLY_Colossus Researcher Nestor|r
    .accept 8857 >>Accept Secrets of the Colossus - Ashi
    .target Colossus Researcher Nestor
step
    .goto 1451,49.55,37.31
    >>Talk to |cRXP_FRIENDLY_Colossus Researcher Eazel|r
    .accept 8858 >>Accept Secrets of the Colossus - Regal
    .target Colossus Researcher Eazel
step
    .goto 1451,49.49,37.36
    >>Talk to |cRXP_FRIENDLY_Colossus Researcher Sophia|r
    .accept 8859 >>Accept Secrets of the Colossus - Zora
    .target Colossus Researcher Sophia
step
    .goto 1451,48.57,37.78
    >>Talk to |cRXP_FRIENDLY_Bor Wildmane|r
    .accept 8318 >>Accept Secret Communication
    .target Bor Wildmane
step
    .goto 1451,45.72,26.85
    >>Loot |cRXP_LOOT_[Brann Bronzebeard's Lost Letter]|r from |cRXP_ENEMY_Hive'Ashi Stinger|r, |cRXP_ENEMY_Hive'Ashi Worker|r, |cRXP_ENEMY_Hive'Ashi Defender|r, then click it to start the quest
    .accept 8308 >>Accept Brann Bronzebeard's Lost Letter
    .use 20461
    .mob Hive'Ashi Stinger
    .mob Hive'Ashi Worker
step
    .goto 1451,37.81,44.38
    >>Collect |cRXP_LOOT_[Encrypted Twilight Text]|r from |cRXP_ENEMY_Twilight Keeper Havunth|r, |cRXP_ENEMY_Twilight Avenger|r, |cRXP_ENEMY_Twilight Geolord|r
    *Bring 10 Encrypted Twilight Texts to Bor Wildmane in Cenarion Hold.
    .complete 8318,1 --Secret Communication
    .mob Twilight Keeper Havunth
    .mob Twilight Avenger
step
    .goto 1451,33.29,51.06
    >>Talk to |cRXP_FRIENDLY_Marshal Bluewall|r
    .turnin 9415 >>Turn in Report to Marshal Bluewall
    .accept 9419 >>Accept Scouring the Desert
    .target Marshal Bluewall
step
    .goto 1451,32.95,50.81
    >>Kill |cRXP_ENEMY_Silithus Dust Turnin Quest Doodad|r
    *Find and deliver Silithyst to the Silithyst Extractor, then speak with Marshal Bluewall at the Alliance encampment near Hive'Zora.
    .complete 9419,1 --Scouring the Desert
    .mob Silithus Dust Turnin Quest Doodad
step
    .goto 1451,33.29,51.06
    >>Talk to |cRXP_FRIENDLY_Marshal Bluewall|r
    .turnin 9419 >>Turn in Scouring the Desert
    .target Marshal Bluewall
step
    .goto 1451,48.57,37.78
    >>Talk to |cRXP_FRIENDLY_Bor Wildmane|r
    .turnin 8318 >>Turn in Secret Communication
    .target Bor Wildmane
step
    .goto 1451,67.19,69.76
    >>Talk to |cRXP_FRIENDLY_Hermit Ortell|r
    .accept 8279 >>Accept The Twilight Lexicon
    .target Hermit Ortell
step
    .goto 1451,41.28,88.45
    >>Talk to |cRXP_FRIENDLY_Rutgar Glyphshaper|r
    .turnin 8308 >>Turn in Brann Bronzebeard's Lost Letter
    .target Rutgar Glyphshaper
step
    .goto 1451,26.35,36.62
    >>Collect |cRXP_LOOT_[Twilight Lexicon - Chapter 1]|r from |cRXP_ENEMY_Twilight Keeper Mayna|r
    *Bring the three chapters of the Twilight Lexicon to Hermit Ortell in Silithus.
    .complete 8279,1 --The Twilight Lexicon
    .mob Twilight Keeper Mayna
step
    .goto 1451,16.09,86.37
    >>Collect |cRXP_LOOT_[Twilight Lexicon - Chapter 2]|r from |cRXP_ENEMY_Twilight Keeper Exeter|r
    *Bring the three chapters of the Twilight Lexicon to Hermit Ortell in Silithus.
    .complete 8279,2 --The Twilight Lexicon
    .mob Twilight Keeper Exeter
step
    .goto 1451,40.86,42.22
    >>Collect |cRXP_LOOT_[Twilight Lexicon - Chapter 3]|r from |cRXP_ENEMY_Twilight Keeper Havunth|r
    *Bring the three chapters of the Twilight Lexicon to Hermit Ortell in Silithus.
    .complete 8279,3 --The Twilight Lexicon
    .mob Twilight Keeper Havunth
step
    .goto 1451,67.19,69.76
    >>Talk to |cRXP_FRIENDLY_Hermit Ortell|r
    .turnin 8279 >>Turn in The Twilight Lexicon
    .accept 8323 >>Accept True Believers
    .accept 8287 >>Accept A Terrible Purpose
    .target Hermit Ortell
step
    .goto 1451,49.2,34.18
    >>Talk to |cRXP_FRIENDLY_Commander Mar'alith|r
    .turnin 8287 >>Turn in A Terrible Purpose
    .target Commander Mar'alith
step
    .goto 1451,37.81,44.38
    >>Collect |cRXP_LOOT_[Encrypted Twilight Text]|r from |cRXP_ENEMY_Twilight Keeper Havunth|r, |cRXP_ENEMY_Twilight Avenger|r, |cRXP_ENEMY_Twilight Geolord|r
    *Hermit Ortell wants you to bring him 10 Encrypted Twilight Texts
    .complete 8323,1 --True Believers
    .mob Twilight Keeper Havunth
    .mob Twilight Avenger
step
    .goto 1451,67.19,69.76
    >>Talk to |cRXP_FRIENDLY_Hermit Ortell|r
    .turnin 8323 >>Turn in True Believers
    .target Hermit Ortell
step
    .goto 1434,28.36,76.35
    >>Talk to |cRXP_FRIENDLY_Oglethorpe Obnoticus|r
    .turnin 8857 >>Turn in Secrets of the Colossus - Ashi
    .target Oglethorpe Obnoticus
step
    .goto 1427,38.12,26.97
    >>Talk to |cRXP_FRIENDLY_Overseer Oilfist|r
    .turnin 8858 >>Turn in Secrets of the Colossus - Regal
    .target Overseer Oilfist
step
    .goto 1423,71.9,48.41
    >>Talk to |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .turnin 8859 >>Turn in Secrets of the Colossus - Zora
    .target Lord Maxwell Tyrosus
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 50-60
#name 55-56 Winterspring
#displayname 55-56 Winterspring
#next 56-59 Mount Hyjal
step
    .zone 1452 >>Travel to Winterspring
    *How: Fly to Everlook.
    *Level for this part: 55-56. 8 quests, roughly 1 h 20 min.
step
    .goto 1452,61.93,38.38
    >>Talk to |cRXP_FRIENDLY_Storm Shadowhoof|r
    .accept 5057 >>Accept Past Endeavors
    .target Storm Shadowhoof
step
    .goto 1452,61.92,38.3
    >>Talk to |cRXP_FRIENDLY_Witch Doctor Mau'ari|r
    .accept 969 >>Accept Luck Be With You
    .target Witch Doctor Mau'ari
step
    .goto 1452,61.12,38.43
    >>Talk to |cRXP_FRIENDLY_Harlo Wigglesworth|r
    .accept 6606 >>Accept A Little Luck
    .target Harlo Wigglesworth
step
    .goto 1452,60.88,37.62
    >>Talk to |cRXP_FRIENDLY_Umi Rumplesnicker|r
    .accept 977 >>Accept Are We There, Yeti?
    .target Umi Rumplesnicker
step
    .goto 1452,61.33,36.92
    >>Talk to |cRXP_FRIENDLY_Nami|r
    .accept 84146 >>Accept Red Bag Blues
    .target Nami
step
    .goto 1452,61.93,38.38
    >>Talk to |cRXP_FRIENDLY_Storm Shadowhoof|r
    .turnin 5057 >>Turn in Past Endeavors
    .target Storm Shadowhoof
step
    .goto 1452,61.92,38.3
    >>Talk to |cRXP_FRIENDLY_Witch Doctor Mau'ari|r
    .turnin 6606 >>Turn in A Little Luck
    .target Witch Doctor Mau'ari
step
    .goto 1452,69.56,38.31
    >>Loot |cRXP_LOOT_[Crudely-written Log]|r from |cRXP_ENEMY_High Chief Winterfall|r, then click it to start the quest
    .accept 5123 >>Accept The Final Piece
    .use 12842
    .mob High Chief Winterfall
step
    .goto 1452,68.82,41.65
    >>Collect |cRXP_LOOT_[Pristine Yeti Horn]|r from |cRXP_ENEMY_Ice Thistle Matriarch|r, |cRXP_ENEMY_Ice Thistle Patriarch|r
    *Collect 2 Pristine Yeti Horns for Umi Rumplesnicker in Everlook.
    .complete 977,1 --Are We There, Yeti?
    .mob Ice Thistle Matriarch
    .mob Ice Thistle Patriarch
step
    .goto 1452,60.88,37.62
    >>Talk to |cRXP_FRIENDLY_Umi Rumplesnicker|r
    .turnin 977 >>Turn in Are We There, Yeti?
    .accept 5163 >>Accept Are We There, Yeti?
    .target Umi Rumplesnicker
step
    .goto 1452,61.54,38.61
    >>Kill |cRXP_ENEMY_Legacki|r
    *Take Umi's Mechanical Yeti and scare her friends with it:
    .complete 5163,1 --Are We There, Yeti?
    .mob Legacki
step
    .goto 1452,61.37,68.05
    >>Collect |cRXP_LOOT_[Frostmaul Shards]|r from |cRXP_ENEMY_Hailspite|r, |cRXP_ENEMY_Frostmaul Preserver|r, |cRXP_ENEMY_Kashoch the Reaver|r
    *Collect 4 Frostmaul Shards for Witch Doctor Mau'ari in Everlook.
    .complete 969,1 --Luck Be With You
    .mob Hailspite
    .mob Frostmaul Preserver
step
    .goto 1452,61.92,38.3
    >>Talk to |cRXP_FRIENDLY_Witch Doctor Mau'ari|r
    .turnin 969 >>Turn in Luck Be With You
    .target Witch Doctor Mau'ari
step
    .goto 1452,31.27,45.16
    >>Talk to |cRXP_FRIENDLY_Donova Snowden|r
    .turnin 5123 >>Turn in The Final Piece
    .accept 5128 >>Accept Words of the High Chief
    .target Donova Snowden
step
    .goto 1428,53,24.4
    >>Talk to |cRXP_FRIENDLY_Red Bag|r
    .turnin 84146 >>Turn in Red Bag Blues
    .target Red Bag
step
    .goto 1448,51.14,81.75
    >>Talk to |cRXP_FRIENDLY_Kelek Skykeeper|r
    .turnin 5128 >>Turn in Words of the High Chief
    .target Kelek Skykeeper
step
    .goto 1446,51.06,26.87
    >>Kill |cRXP_ENEMY_Sprinkle|r
    *Take Umi's Mechanical Yeti and scare her friends with it:
    .complete 5163,2 --Are We There, Yeti?
    .mob Sprinkle
step
    .goto 1449,43.66,9.37
    >>Kill |cRXP_ENEMY_Quixxil|r
    *Take Umi's Mechanical Yeti and scare her friends with it:
    .complete 5163,3 --Are We There, Yeti?
    .mob Quixxil
step
    .goto 1452,60.88,37.62
    >>Talk to |cRXP_FRIENDLY_Umi Rumplesnicker|r
    .turnin 5163 >>Turn in Are We There, Yeti?
    .target Umi Rumplesnicker
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 50-60
#name 56-59 Mount Hyjal
#displayname 56-59 Mount Hyjal
#next 59-60 Silithus
step
    .zone 2482 >>Travel to Mount Hyjal
    *How: From Everlook take the flight to Tainted Foothills (do the Hyjal intro first if the flight is missing).
    *Level for this part: 56-59. 100 quests, roughly 8 h 5 min.
step
    #completewith next
    .goto 2482,68.71,46.8,15,0
    >>Talk to |cRXP_FRIENDLY_Fayran Elthas|r if you don't have this flight path yet
    .fp Fayran Elthas >>Get the flight path
    .target Fayran Elthas
step
    .goto 2482,68.3,46.71
    >>Talk to |cRXP_FRIENDLY_Marn Euhorn|r
    .accept 96301 >>Accept Power Wash
    .accept 92017 >>Accept Cleansing Winds
    .target Marn Euhorn
step
    .goto 2482,68.88,48.35
    >>Talk to |cRXP_FRIENDLY_Toron Rockhoof|r
    .accept 92533 >>Accept Twisted Tools
    .target Toron Rockhoof
step
    .goto 2482,70.87,51.55
    >>Talk to |cRXP_FRIENDLY_Sebelia|r
    .accept 93197 >>Accept Mending Communications
    .target Sebelia
step
    .goto 2482,68.85,50.6
    >>Talk to |cRXP_FRIENDLY_Tiala Whitemane|r
    .accept 99670 >>Accept Return to Jereman
    .accept 93407 >>Accept A Thorn in the Paw
    .target Tiala Whitemane
step
    .goto 2482,68.99,49.99
    >>Talk to |cRXP_FRIENDLY_Thisalee Crow|r
    .accept 93584 >>Accept Cult Closure
    .target Thisalee Crow
step
    .goto 2482,75.68,40.82
    >>Well of Eternity entered with the chimaera heart. Collect |cRXP_LOOT_[Thorn Seed]|r from |cRXP_PICK_Thorn Bush|r
    *Enter the Well of Eternity and observe its effects on the Venom-dripping Heart.
    *Find thorn seeds in the forests at the summit of Mount Hyjal and bring them back to Tiala Whitemane.
    .complete 96301,1 --Power Wash
    .complete 93407,1 --A Thorn in the Paw
step
    .goto 2482,76.92,35.42
    >>Click the |cRXP_PICK_Bookshelf|r
    .accept 93521 >>Accept Challenger of the Gods
step
    .goto 2482,71.3,28.93
    >>Collect |cRXP_LOOT_[Wicked Ritualist's Kris]|r from |cRXP_ENEMY_Blackthorne Cultist|r, |cRXP_ENEMY_Blackthorne Outrunner|r. Collect |cRXP_LOOT_[Recoiling Gnarlybark Staff]|r from |cRXP_ENEMY_Blackthorne Adept|r, |cRXP_ENEMY_Blackthorne Priest|r. Kill |cRXP_ENEMY_Blackthorne Cultist|r. Kill |cRXP_ENEMY_Blackthorne Adept|r
    *Recover a Wicked Ritualist's Kris and a Recoiling Gnarlybark Staff from Blackthorne cultists.
    *Kill 10 Blackthorne Adepts and 10 Wild-branded Cultists.
    .complete 92533,1 --Twisted Tools
    .complete 92533,2 --Twisted Tools
    .complete 93584,1 --Cult Closure
    .complete 93584,2 --Cult Closure
    .mob Blackthorne Cultist
    .mob Blackthorne Outrunner
    .mob Blackthorne Adept
    .mob Blackthorne Priest
step
    .goto 2482,63.32,25.89
    >>Talk to |cRXP_FRIENDLY_Maerion Thaelemaches|r
    .accept 97009 >>Accept Maerion's Misery
    .target Maerion Thaelemaches
step
    .goto 2482,49.33,32.63
    >>Talk to |cRXP_FRIENDLY_Yashiro|r
    .accept 96959 >>Accept Blademaster's Bonfires
    .target Yashiro
step
    .goto 2482,49.33,32.63
    >>Talk to |cRXP_FRIENDLY_Yashiro|r
    .turnin 96959 >>Turn in Blademaster's Bonfires
    .target Yashiro
step
    .goto 2482,43.77,32.24
    >>Talk to |cRXP_FRIENDLY_Elaena Moonwhisper|r
    .accept 92960 >>Accept Siphoned Ephemeral Essence
    .target Elaena Moonwhisper
step
    .goto 2482,43.74,31.94
    >>Talk to |cRXP_FRIENDLY_Witherbeard|r
    .accept 95793 >>Accept Stemming the Demon Tide
    .target Witherbeard
step
    .goto 2482,43.91,37.81
    >>Talk to |cRXP_FRIENDLY_Johun "Punchy" Dillas|r
    .accept 92015 >>Accept Area Denial Skunks
    .target Johun "Punchy" Dillas
step
    .goto 2482,43.91,37.81
    >>Talk to |cRXP_FRIENDLY_Johun "Punchy" Dillas|r
    .turnin 92015 >>Turn in Area Denial Skunks
    .accept 92014 >>Accept Fox Hole
    .target Johun "Punchy" Dillas
step
    .goto 2482,41.27,45.33
    >>Talk to |cRXP_FRIENDLY_Jereman|r
    .turnin 99670 >>Turn in Return to Jereman
    .target Jereman
step
    .goto 2482,42.07,52.09
    >>Talk to |cRXP_FRIENDLY_Lisbael Highfeather|r
    .accept 96145 >>Accept Past Wing and Claw
    .target Lisbael Highfeather
step
    .goto 2482,48.54,56.32
    >>Click the |cRXP_PICK_Corrupted Growth|r
    .accept 96296 >>Accept Fetid Corruption
step
    .goto 2482,48.54,56.32
    >>Click |cRXP_PICK_Corrupted Growth|r
    *Find and remove 6 Corrupted Knots from the trees nearby.
    .complete 96296,1 --Fetid Corruption
step
    .goto 2482,54.48,63.91
    >>Talk to |cRXP_FRIENDLY_Phoebe Highfeather|r
    .turnin 96145 >>Turn in Past Wing and Claw
    .turnin 96296 >>Turn in Fetid Corruption
    .target Phoebe Highfeather
step
    .goto 2482,54.31,63.95
    >>Talk to |cRXP_FRIENDLY_Skylord Omnuron|r
    .accept 91883 >>Accept Spear of the Skylord
    .target Skylord Omnuron
step
    .goto 2482,54.48,63.91
    >>Talk to |cRXP_FRIENDLY_Phoebe Highfeather|r
    .accept 92147 >>Accept Highfeather Helper
    .accept 96252 >>Accept Tarnished Treasures
    .target Phoebe Highfeather
step
    .goto 2482,60.1,61.18
    >>Talk to |cRXP_FRIENDLY_Kaylaena Springwhisper|r
    .accept 92008 >>Accept Premiere Parts
    .accept 92594 >>Accept Kindling, Kinda
    .target Kaylaena Springwhisper
step
    .goto 2482,60.1,61.18
    >>Talk to |cRXP_FRIENDLY_Nami|r
    .turnin 92008 >>Turn in Premiere Parts
    .accept 92009 >>Accept Crate Expectations
    .target Nami
step
    .goto 2482,60.44,62.11
    >>Shipment delivered to Mount Hyjal before it expires
    *Gently transport the crate of parts and baubles to Kaylaena Springwhisper in Mount Hyjal.
    .complete 92009,1 --Crate Expectations
step
    .goto 2482,60.1,61.18
    >>Talk to |cRXP_FRIENDLY_Kaylaena Springwhisper|r
    .turnin 92009 >>Turn in Crate Expectations
    .accept 92011 >>Accept Rubble Rummage
    .target Kaylaena Springwhisper
step
    .goto 2482,50.45,59.1
    >>Collect |cRXP_LOOT_[Omnuron's Spear]|r from |cRXP_ENEMY_Zarrat Wormwing|r, |cRXP_ENEMY_Searshrike Wormwing|r. Collect |cRXP_LOOT_[Wormwing Pinfeather]|r from |cRXP_ENEMY_Wormwing Harpy|r, |cRXP_ENEMY_Wormwing Windwitch|r, |cRXP_ENEMY_Wormwing Ambusher|r. Collect |cRXP_LOOT_[Tarnished Highfeather Bangle]|r from |cRXP_PICK_Tarnished Highfeather Bangle|r
    *Slay Zarrat Wormwing and return Omnuron's Spear.
    *Slay 18 Wormwing harpies on Mount Hyjal and bring their feathers to Phoebe Highfeather.
    *Collect 8 Tarnished Highfeather Bangles from Wormwing Harpy nests.
    .complete 91883,1 --Spear of the Skylord
    .complete 92147,1 --Highfeather Helper
    .complete 96252,1 --Tarnished Treasures
    .mob Zarrat Wormwing
    .mob Searshrike Wormwing
    .mob Wormwing Harpy
    .mob Wormwing Windwitch
step
    .goto 2482,54.31,63.95
    >>Talk to |cRXP_FRIENDLY_Skylord Omnuron|r
    .turnin 91883 >>Turn in Spear of the Skylord
    .target Skylord Omnuron
step
    .goto 2482,54.48,63.91
    >>Talk to |cRXP_FRIENDLY_Phoebe Highfeather|r
    .turnin 92147 >>Turn in Highfeather Helper
    .turnin 96252 >>Turn in Tarnished Treasures
    .target Phoebe Highfeather
step
    .goto 2482,59.84,72.04
    >>Kill |cRXP_ENEMY_Tainted Shrubbery|r
    *Destroy 15 Tainted Shrubbery for Kaylaena Springwhisper at the workshop in the Tainted Foothills.
    .complete 92594,1 --Kindling, Kinda
    .mob Tainted Shrubbery
step
    .goto 2482,60.1,61.18
    >>Talk to |cRXP_FRIENDLY_Kaylaena Springwhisper|r
    .turnin 92594 >>Turn in Kindling, Kinda
    .target Kaylaena Springwhisper
step
    .goto 2482,68.88,48.35
    >>Talk to |cRXP_FRIENDLY_Toron Rockhoof|r
    .turnin 92533 >>Turn in Twisted Tools
    .target Toron Rockhoof
step
    .goto 2482,68.85,50.6
    >>Talk to |cRXP_FRIENDLY_Tiala Whitemane|r
    .turnin 93407 >>Turn in A Thorn in the Paw
    .turnin 93521 >>Turn in Challenger of the Gods
    .target Tiala Whitemane
step
    .goto 2482,68.99,49.99
    >>Talk to |cRXP_FRIENDLY_Thisalee Crow|r
    .turnin 93584 >>Turn in Cult Closure
    .accept 96303 >>Accept Memory Mist
    .target Thisalee Crow
step
    .goto 2482,68.85,50.6
    >>Talk to |cRXP_FRIENDLY_Tiala Whitemane|r
    .accept 93547 >>Accept A Thorny Solution
    .accept 93127 >>Accept Summit Sentries
    .target Tiala Whitemane
step
    .goto 2482,68.99,49.99
    >>Talk to |cRXP_FRIENDLY_Thisalee Crow|r
    .turnin 96303 >>Turn in Memory Mist
    .target Thisalee Crow
step
    .goto 2482,68.85,50.6
    >>Talk to |cRXP_FRIENDLY_Tiala Whitemane|r
    .turnin 93547 >>Turn in A Thorny Solution
    .turnin 93127 >>Turn in Summit Sentries
    .target Tiala Whitemane
step
    .goto 2482,68.3,46.71
    >>Talk to |cRXP_FRIENDLY_Marn Euhorn|r
    .turnin 96301 >>Turn in Power Wash
    .target Marn Euhorn
step
    .goto 2482,53.1,34.12
    >>Collect |cRXP_LOOT_[Felhound Spike]|r from |cRXP_ENEMY_Defiling Hound|r. Collect |cRXP_LOOT_[Ephemeral Essence]|r from |cRXP_ENEMY_Defiling Hound|r. Kill |cRXP_ENEMY_Felguard Sentinel|r. Collect |cRXP_LOOT_[Frayed Wire]|r from |cRXP_PICK_Tangle of Wire|r. Collect |cRXP_LOOT_[Warped Metal Scrap]|r from |cRXP_PICK_Tarnished Shield Dome|r, |cRXP_PICK_Rusting Metal Chunk|r
    *Bring 12 Felhound Spikes to Maerion Thaelemaches in Dae'gun.
    *Retrieve 6 Ephemeral Essences for Elaena Moonwhisper.
    *Slay 12 Felguard Sentinels in Dae'gun.
    *Scavenge the remains of the Horde base and return 5 Frayed Wire, 5 Scrap Metal, and 5 Calcified Excrement to Kaylaena.
    .complete 97009,1 --Maerion's Misery
    .complete 92960,1 --Siphoned Ephemeral Essence
    .complete 95793,1 --Stemming the Demon Tide
    .complete 92011,1 --Rubble Rummage
    .complete 92011,3 --Rubble Rummage
    .mob Defiling Hound
    .mob Felguard Sentinel
step
    .goto 2482,43.77,32.24
    >>Talk to |cRXP_FRIENDLY_Elaena Moonwhisper|r
    .turnin 92960 >>Turn in Siphoned Ephemeral Essence
    .target Elaena Moonwhisper
step
    .goto 2482,43.74,31.94
    >>Talk to |cRXP_FRIENDLY_Witherbeard|r
    .turnin 95793 >>Turn in Stemming the Demon Tide
    .target Witherbeard
step
    .goto 2482,31.17,42.55
    >>Collect |cRXP_LOOT_[Rustleaf Fox Tail]|r from |cRXP_ENEMY_Rustleaf Fox|r
    *Return 9 Rustleaf Fox Tails to Johun "Punchy" Dillas in Hyjal.
    .complete 92014,1 --Fox Hole
    .mob Rustleaf Fox
step
    .goto 2482,31.3,50.3
    >>Talk to |cRXP_FRIENDLY_Shalla'kal|r
    .accept 93615 >>Accept Kits and Cats
    .target Shalla'kal
step
    .goto 2482,31.3,50.3
    >>Talk to |cRXP_FRIENDLY_Shalla'kal|r
    .turnin 93615 >>Turn in Kits and Cats
    .target Shalla'kal
step
    .goto 2482,32.89,54.44
    >>Talk to |cRXP_FRIENDLY_Galvinquam Leafsyre|r
    .accept 96979 >>Accept Sacred Refreshment
    .target Galvinquam Leafsyre
step
    .goto 2482,32.89,54.44
    >>Talk to |cRXP_FRIENDLY_Galvinquam Leafsyre|r
    .turnin 96979 >>Turn in Sacred Refreshment
    .accept 96991 >>Accept Trail Assist
    .target Galvinquam Leafsyre
step
    .goto 2482,31.5,58.62
    >>Talk to |cRXP_FRIENDLY_Barkskin Matriarch|r
    .accept 91698 >>Accept Barkskin Breakout
    .target Barkskin Matriarch
step
    .goto 2482,28.88,58.64
    >>Collect |cRXP_LOOT_[Oily Chimaera Hair]|r from |cRXP_ENEMY_Wildbreath Chimaerok|r. Collect |cRXP_LOOT_[Deadwood Key]|r from |cRXP_ENEMY_Deadwood Warden|r
    *Collect 5 Grand Hippogryph Feathers and 3 Oily Chimaera Hair for Marn.
    *Recover a Deadwood Key from a Deadwood Warden and return to the Barkskin Cage.
    .complete 92017,2 --Cleansing Winds
    .complete 91698,1 --Barkskin Breakout
    .mob Wildbreath Chimaerok
    .mob Deadwood Warden
step
    .goto 2482,31.5,58.62
    >>Talk to |cRXP_FRIENDLY_Barkskin Matriarch|r
    .turnin 91698 >>Turn in Barkskin Breakout
    .accept 91696 >>Accept Open Season
    .target Barkskin Matriarch
step
    .goto 2482,36.48,66.77
    >>Collect |cRXP_LOOT_[Grand Hippogryph Feather]|r from |cRXP_ENEMY_Mountain Squallclimber|r
    *Collect 5 Grand Hippogryph Feathers and 3 Oily Chimaera Hair for Marn.
    .complete 92017,1 --Cleansing Winds
    .mob Mountain Squallclimber
step
    .goto 2482,36.67,78.25
    >>Talk to |cRXP_FRIENDLY_Velician|r
    .accept 96321 >>Accept The Dying God
    .target Velician
step
    .goto 2482,25.31,75.87
    >>Talk to |cRXP_FRIENDLY_Fenwick Togglespring|r
    .accept 92702 >>Accept Branch Out
    .target Fenwick Togglespring
step
    .goto 2482,24.78,77.68
    >>Collect |cRXP_LOOT_[Sturdy Tree Branch]|r from |cRXP_PICK_Sturdy Tree Branch|r
    *Locate a sturdy branch capable of reaching Fenwick Togglespring.
    .complete 92702,1 --Branch Out
step
    .goto 2482,25.31,75.87
    >>Talk to |cRXP_FRIENDLY_Fenwick Togglespring|r
    .turnin 92702 >>Turn in Branch Out
    .accept 92064 >>Accept Tree Free
    .target Fenwick Togglespring
step
    .goto 2482,25.27,76.34
    >>Kill |cRXP_ENEMY_Tree Branch|r
    *Break the tree branch to free Fenwick Togglespring.
    .complete 92064,1 --Tree Free
    .mob Tree Branch
step
    .goto 2482,25.31,75.87
    >>Talk to |cRXP_FRIENDLY_Fenwick Togglespring|r
    .turnin 92064 >>Turn in Tree Free
    .accept 96559 >>Accept Supply Drop
    .target Fenwick Togglespring
step
    .goto 2482,25.46,74.62
    >>Talk to |cRXP_FRIENDLY_Personal Survival Pack|r
    .turnin 96559 >>Turn in Supply Drop
    .accept 93383 >>Accept Contents Under Pressure
    .target Personal Survival Pack
step
    .goto 2482,25.46,74.62
    >>Talk to |cRXP_FRIENDLY_Personal Survival Pack|r
    .turnin 93383 >>Turn in Contents Under Pressure
    .target Personal Survival Pack
step
    .goto 2482,20.56,71.73
    >>Talk to |cRXP_FRIENDLY_Brerufa|r
    .turnin 91696 >>Turn in Open Season
    .accept 93952 >>Accept Balance Through Strength
    .target Brerufa
step
    .goto 2482,21.77,78.98
    >>Talk to |cRXP_FRIENDLY_Elder Mistpaw|r
    .accept 94504 >>Accept Barkskin Beginnings
    .accept 95107 >>Accept Deeproar Down
    .accept 93832 >>Accept Shatter the Stonewatchers
    .target Elder Mistpaw
step
    .goto 2482,20.16,77.99
    >>Talk to |cRXP_FRIENDLY_Fennar Mossmane|r
    .accept 95273 >>Accept Water of Hyjal
    .accept 93828 >>Accept Herbs of the Hollow
    .accept 93830 >>Accept Water of Hyjal
    .target Fennar Mossmane
step
    .goto 2482,21.77,79.18
    >>Talk to |cRXP_FRIENDLY_Elder Pinespeaker|r
    .accept 93833 >>Accept Wicked Wisdom
    .accept 95108 >>Accept Mystic Mix
    .accept 96666 >>Accept Burrow Bonding
    .target Elder Pinespeaker
step
    .goto 2482,21.08,78.51
    >>Talk to |cRXP_FRIENDLY_Dala Fairmaw|r
    .accept 93834 >>Accept Burrow Beetles
    .target Dala Fairmaw
step
    .goto 2482,21.77,78.98
    >>Talk to |cRXP_FRIENDLY_Elder Mistpaw|r
    .turnin 94504 >>Turn in Barkskin Beginnings
    .turnin 95108 >>Turn in Mystic Mix
    .target Elder Mistpaw
step
    .goto 2482,20.16,77.99
    >>Talk to |cRXP_FRIENDLY_Fennar Mossmane|r
    .turnin 95273 >>Turn in Water of Hyjal
    .turnin 93828 >>Turn in Herbs of the Hollow
    .target Fennar Mossmane
step
    .goto 2482,21.77,79.18
    >>Talk to |cRXP_FRIENDLY_Elder Pinespeaker|r
    .turnin 96666 >>Turn in Burrow Bonding
    .target Elder Pinespeaker
step
    .goto 2482,20.16,77.99
    >>Collect |cRXP_LOOT_[Filled Hyjal Waterskin]|r. Collect |cRXP_LOOT_[Burrow Beetle Bits]|r from |cRXP_ENEMY_Burrow Beetle|r
    *Fill a waterskin provided by Fennar Mossmane at the pond outside of the Deadwood Furbolg den.
    *Gather 10 Burrow Beetle Bits for Dala Fairmaw.
    .complete 93830,1 --Water of Hyjal
    .complete 93834,1 --Burrow Beetles
    .mob Burrow Beetle
step
    .goto 2482,20.16,77.99
    >>Talk to |cRXP_FRIENDLY_Fennar Mossmane|r
    .turnin 93830 >>Turn in Water of Hyjal
    .target Fennar Mossmane
step
    .goto 2482,21.08,78.51
    >>Talk to |cRXP_FRIENDLY_Dala Fairmaw|r
    .turnin 93834 >>Turn in Burrow Beetles
    .target Dala Fairmaw
step
    .goto 2482,18.78,62.01
    >>Talk to |cRXP_FRIENDLY_Eluneth|r
    .accept 90865 >>Accept Eyes of the Watchers
    .target Eluneth
step
    .goto 2482,20.35,59.23
    >>Talk to |cRXP_FRIENDLY_Veteran of the Third War|r
    .accept 92100 >>Accept Anywhere But Here
    .target Veteran of the Third War
step
    .goto 2482,24.76,61.89
    >>Kill |cRXP_ENEMY_Chieftain Deeproar|r. Collect |cRXP_LOOT_[Broken Staff]|r from |cRXP_ENEMY_Chieftain Deeproar|r
    *Kill Chieftain Deeproar and return his staff to Elder Pinespeaker in Barkskin Burrow.
    .complete 95107,1 --Deeproar Down
    .complete 95107,2 --Deeproar Down
    .mob Chieftain Deeproar
step
    .goto 2482,15.67,54.66
    >>Talk to |cRXP_FRIENDLY_Sefira Everbright|r
    .accept 92449 >>Accept Blight No More
    .accept 92591 >>Accept Final Death
    .target Sefira Everbright
step
    .goto 2482,15.64,49.99
    >>Talk to |cRXP_FRIENDLY_Hnaz Blunderflame|r
    .accept 92433 >>Accept Now We're Cooking
    .accept 95027 >>Accept Feathers in Flight
    .target Hnaz Blunderflame
step
    .goto 2482,15.75,50.73
    >>Talk to |cRXP_FRIENDLY_Trigg Ironhand|r
    .accept 92189 >>Accept Back to the Grind
    .target Trigg Ironhand
step
    .goto 2482,15.75,50.73
    >>Kill |cRXP_ENEMY_Eternal Sentry|r. Collect |cRXP_LOOT_[Watcher's Eye]|r from |cRXP_ENEMY_Eternal Sentry|r. Kill |cRXP_ENEMY_Forgotten Soldier|r. Kill |cRXP_ENEMY_Fleshflay Ravener|r. Collect |cRXP_LOOT_[Reanimator's Amulet]|r from |cRXP_ENEMY_Scourge Reanimator|r. Collect |cRXP_LOOT_[Savory Stag Sliders]|r. Collect |cRXP_LOOT_[Dense Sharpening Stone]|r. Collect |cRXP_LOOT_[Dense Grinding Stone]|r
    *Destroy 6 Eternal Sentry gargoyles in the destroyed Alliance base in upper Hyjal and return to Elder Mistpaw.
    *Retrieve 8 Watcher's Eyes for Eluneth.
    *Eliminate 3 Forgotten Soldiers and 12 Fleshflay Raveners.
    *Use the Survivor's Torch on the Bone Pile, then collect the Reanimator's Amulet.
    *Bring 6 Savory Stag Sliders to Hnaz Blunderflame in Elderwild.
    *Bring 2 Dense Sharpening Stones and 2 Dense Grinding Stones to Trigg Ironhand in Elderwild on Mount Hyjal.
    .complete 93832,1 --Shatter the Stonewatchers
    .complete 90865,1 --Eyes of the Watchers
    .complete 92449,1 --Blight No More
    .complete 92449,2 --Blight No More
    .complete 92591,1 --Final Death
    .complete 92433,1 --Now We're Cooking
    .complete 92189,1 --Back to the Grind
    .complete 92189,2 --Back to the Grind
    .mob Eternal Sentry
    .mob Forgotten Soldier
    .mob Fleshflay Ravener
    .mob Scourge Reanimator
step
    .goto 2482,15.64,49.99
    >>Talk to |cRXP_FRIENDLY_Hnaz Blunderflame|r
    .turnin 92433 >>Turn in Now We're Cooking
    .target Hnaz Blunderflame
step
    .goto 2482,15.75,50.73
    >>Talk to |cRXP_FRIENDLY_Trigg Ironhand|r
    .turnin 92189 >>Turn in Back to the Grind
    .target Trigg Ironhand
step
    .goto 2482,15.67,54.66
    >>Talk to |cRXP_FRIENDLY_Sefira Everbright|r
    .turnin 92449 >>Turn in Blight No More
    .turnin 92591 >>Turn in Final Death
    .accept 91688 >>Accept To the Summit of Eternity
    .accept 90750 >>Accept More Work?
    .target Sefira Everbright
step
    .goto 2482,15.55,52.07
    >>Talk to |cRXP_FRIENDLY_Daythor Brellan|r
    .turnin 90750 >>Turn in More Work?
    .accept 95218 >>Accept More of the Same
    .target Daythor Brellan
step
    .goto 2482,15.67,54.66
    >>Talk to |cRXP_FRIENDLY_Sefira Everbright|r
    .turnin 95218 >>Turn in More of the Same
    .accept 94832 >>Accept Belle's Ring
    .target Sefira Everbright
step
    .goto 2482,15.55,52.07
    >>Talk to |cRXP_FRIENDLY_Daythor Brellan|r
    .turnin 94832 >>Turn in Belle's Ring
    .accept 96077 >>Accept Belle's Ring
    .target Daythor Brellan
step
    .goto 2482,22.49,48.64
    >>Click the |cRXP_PICK_Unmarked Grave|r
    .accept 90702 >>Accept Disturbed Grave
step
    .goto 2482,23.07,54.13
    >>Collect |cRXP_LOOT_[Ring of the Fallen Soldier]|r from |cRXP_ENEMY_Fleshflay Ravener|r, |cRXP_ENEMY_Fleshflayer Ravener|r
    *Search the area for the grave's missing contents.
    .complete 90702,1 --Disturbed Grave
    .mob Fleshflay Ravener
    .mob Fleshflayer Ravener
step
    .goto 2482,15.67,54.66
    >>Talk to |cRXP_FRIENDLY_Sefira Everbright|r
    .turnin 90702 >>Turn in Disturbed Grave
    .target Sefira Everbright
step
    .goto 2482,18.78,62.01
    >>Talk to |cRXP_FRIENDLY_Eluneth|r
    .turnin 90865 >>Turn in Eyes of the Watchers
    .target Eluneth
step
    .goto 2482,21.77,79.18
    >>Talk to |cRXP_FRIENDLY_Elder Pinespeaker|r
    .turnin 95107 >>Turn in Deeproar Down
    .target Elder Pinespeaker
step
    .goto 2482,21.77,78.98
    >>Talk to |cRXP_FRIENDLY_Elder Mistpaw|r
    .turnin 93832 >>Turn in Shatter the Stonewatchers
    .target Elder Mistpaw
step
    .goto 2482,34.46,67.93
    >>Kill |cRXP_ENEMY_Deadwood Den Guardian|r. Collect |cRXP_LOOT_[Intact Owl Body]|r from |cRXP_ENEMY_Hyjal Owl|r
    *Defeat 9 Deadwood Den Guardians and return to Brerufa.
    *Bring 5 owl bodies to Elder Pinespeaker in Barkskin Burrow in Hyjal.
    .complete 93952,1 --Balance Through Strength
    .complete 93833,1 --Wicked Wisdom
    .mob Deadwood Den Guardian
    .mob Hyjal Owl
step
    .goto 2482,20.56,71.73
    >>Talk to |cRXP_FRIENDLY_Brerufa|r
    .turnin 93952 >>Turn in Balance Through Strength
    .accept 92111 >>Accept Of Friend and Fur
    .target Brerufa
step
    .goto 2482,21.77,79.18
    >>Talk to |cRXP_FRIENDLY_Elder Pinespeaker|r
    .turnin 93833 >>Turn in Wicked Wisdom
    .target Elder Pinespeaker
step
    .goto 2482,21.08,80.19
    >>Talk to |cRXP_FRIENDLY_Osi Mistpaw|r
    .turnin 92111 >>Turn in Of Friend and Fur
    .accept 93831 >>Accept Sweetpaw Jam
    .target Osi Mistpaw
step
    .goto 2482,30.09,76.11
    >>Collect |cRXP_LOOT_[Bear Berries]|r from |cRXP_PICK_Bear Berries|r
    *Gather 30 Bear Berries from Hyjal and return to Osi Mistpaw.
    .complete 93831,1 --Sweetpaw Jam
step
    .goto 2482,21.08,80.19
    >>Talk to |cRXP_FRIENDLY_Osi Mistpaw|r
    .turnin 93831 >>Turn in Sweetpaw Jam
    .accept 91697 >>Accept Meet the Elders
    .target Osi Mistpaw
step
    .goto 2482,21.77,78.98
    >>Talk to |cRXP_FRIENDLY_Elder Mistpaw|r
    .turnin 91697 >>Turn in Meet the Elders
    .target Elder Mistpaw
step
    .goto 2482,20.82,79.81
    >>Talk to |cRXP_FRIENDLY_Suma Mossmane|r
    .accept 93825 >>Accept Barkbound Blessings
    .target Suma Mossmane
step
    .goto 2482,21.77,78.98
    >>Talk to |cRXP_FRIENDLY_Elder Mistpaw|r
    .accept 93826 >>Accept Deal Dread to Deadwood
    .target Elder Mistpaw
step
    .goto 2482,18.52,78.6
    >>Talk to |cRXP_FRIENDLY_Thobon Sapclaw|r
    .accept 93827 >>Accept Windswept Wards
    .target Thobon Sapclaw
step
    .goto 2482,30.84,78.96
    >>Collect |cRXP_LOOT_[Moonveil Moss]|r from |cRXP_PICK_Moonveil Moss|r
    *Gather 12 clumps of Moonveil Moss and return to Suma Mossmane.
    .complete 93825,1 --Barkbound Blessings
step
    .goto 2482,20.82,79.81
    >>Talk to |cRXP_FRIENDLY_Suma Mossmane|r
    .turnin 93825 >>Turn in Barkbound Blessings
    .target Suma Mossmane
step
    .goto 2482,33.1,69.82
    >>Kill |cRXP_ENEMY_Deadwood Totemic|r. Kill |cRXP_ENEMY_Deadwood Fel-Tender|r
    *Defeat 8 Deadwood Totemics and 8 Deadwood Fel-Tenders and return to Elder Pinespeaker.
    .complete 93826,1 --Deal Dread to Deadwood
    .complete 93826,2 --Deal Dread to Deadwood
    .mob Deadwood Totemic
    .mob Deadwood Fel-Tender
step
    .goto 2482,21.77,79.18
    >>Talk to |cRXP_FRIENDLY_Elder Pinespeaker|r
    .turnin 93826 >>Turn in Deal Dread to Deadwood
    .target Elder Pinespeaker
step
    .goto 2482,48.26,85.72
    >>Talk to |cRXP_FRIENDLY_Curious Crow|r
    .turnin 96321 >>Turn in The Dying God
    .accept 95317 >>Accept Notation, Notation, Notation
    .accept 95320 >>Accept A Curious Question
    .target Curious Crow
step
    .goto 2482,54.83,84.56
    >>Talk to |cRXP_FRIENDLY_Thylaen|r
    .accept 91923 >>Accept Celastrus the Bitter
    .target Thylaen
step
    .goto 2482,54.05,84.39
    >>Talk to |cRXP_FRIENDLY_Hyacinth|r
    .accept 91754 >>Accept Rub Some Dirt In It
    .accept 91755 >>Accept Leaves to Ligatures
    .target Hyacinth
step
    .goto 2482,60.48,82.71
    >>Collect |cRXP_LOOT_[Untainted Soil]|r from |cRXP_PICK_Untainted Soil|r
    *Collect 6 samples of Untainted Soil from around the foothills of Mount Hyjal.
    .complete 91754,1 --Rub Some Dirt In It
step
    .goto 2482,54.05,84.39
    >>Talk to |cRXP_FRIENDLY_Hyacinth|r
    .turnin 91754 >>Turn in Rub Some Dirt In It
    .target Hyacinth
step
    .goto 2482,48.58,73.54
    >>Talk to |cRXP_FRIENDLY_Felflick|r
    .turnin 95320 >>Turn in A Curious Question
    .accept 95318 >>Accept Taste of Ash
    .target Felflick
step
    .goto 2482,49.32,69.52
    >>Collect |cRXP_LOOT_[Fel Ash Experimentation Notes]|r from |cRXP_ENEMY_Ashen Acolyte|r. Kill |cRXP_ENEMY_Ashen Acolyte|r
    *Find 12 Fel Ash Experimentation Notes.
    *Slay 12 Ashen Acolytes.
    .complete 95317,1 --Notation, Notation, Notation
    .complete 95318,1 --Taste of Ash
    .mob Ashen Acolyte
step
    .goto 2482,48.58,73.54
    >>Talk to |cRXP_FRIENDLY_Felflick|r
    .turnin 95318 >>Turn in Taste of Ash
    .accept 95319 >>Accept Crystalline Collection
    .target Felflick
step
    .goto 2482,43.82,76.02
    >>Collect |cRXP_LOOT_[Fel-Slime Crystal]|r from |cRXP_PICK_Crystallized Fel-Slime|r. Collect |cRXP_LOOT_[Pristine Fel-Slime Crystal]|r from |cRXP_PICK_Pristine Crystallized Fel-Slime|r
    *Gather 8 Fel-Slime Crystals and 1 Pristine Fel-Slime Crystal.
    .complete 95319,1 --Crystalline Collection
    .complete 95319,2 --Crystalline Collection
step
    .goto 2482,48.58,73.54
    >>Talk to |cRXP_FRIENDLY_Felflick|r
    .turnin 95319 >>Turn in Crystalline Collection
    .accept 95378 >>Accept The Hydra's Head
    .accept 95379 >>Accept A Revenge So Sweet
    .target Felflick
step
    .goto 2482,47.66,70.76
    >>Collect |cRXP_LOOT_[Bones of Tyaeha Darkoath]|r from |cRXP_ENEMY_Tyaeha Darkoath|r. Collect |cRXP_LOOT_[Bones of Dazka Shadowsleep]|r from |cRXP_ENEMY_Dazka Shadowsleep|r. Collect |cRXP_LOOT_[Bones of Frezzlie Popwhiz]|r from |cRXP_ENEMY_Frezzlie Popwhiz|r. Kill |cRXP_ENEMY_Brashann Grimdark|r
    *Retrieve the bones of Frezzlie Popwhiz, Tyaeha Darkoath and Dazka Shadowsleep.
    *Slay Brashann Grimdark and search his body for his soulstone.
    .complete 95378,1 --The Hydra's Head
    .complete 95378,2 --The Hydra's Head
    .complete 95378,3 --The Hydra's Head
    .complete 95379,1 --A Revenge So Sweet
    .mob Tyaeha Darkoath
    .mob Dazka Shadowsleep
    .mob Frezzlie Popwhiz
    .mob Brashann Grimdark
step
    .goto 2482,48.58,73.54
    >>Talk to |cRXP_FRIENDLY_Felflick|r
    .turnin 95378 >>Turn in The Hydra's Head
    .turnin 95379 >>Turn in A Revenge So Sweet
    .accept 96435 >>Accept A Fitting End
    .target Felflick
step
    .goto 2482,40.83,80.24
    >>Click the |cRXP_PICK_Bone Pile|r
    .turnin 96435 >>Turn in A Fitting End
step
    .goto 2482,48.26,85.72
    >>Talk to |cRXP_FRIENDLY_Curious Crow|r
    .turnin 95317 >>Turn in Notation, Notation, Notation
    .accept 96262 >>Accept Prickly Pinecones
    .accept 95380 >>Accept A Prolific Source
    .target Curious Crow
step
    .goto 2482,48.17,87.96
    >>Collect |cRXP_LOOT_[Prickly Pinecone]|r from |cRXP_PICK_Prickly Pinecone|r
    *Collect 10 Prickly Pinecones under healthy trees.
    .complete 96262,1 --Prickly Pinecones
step
    .goto 2482,48.26,85.72
    >>Talk to |cRXP_FRIENDLY_Curious Crow|r
    .turnin 96262 >>Turn in Prickly Pinecones
    .target Curious Crow
step
    .goto 2482,59.84,72.04
    >>Collect |cRXP_LOOT_[Broken Frond of Celastrus]|r from |cRXP_ENEMY_Celastrus the Bitter|r. Collect |cRXP_LOOT_[Verdant Leaves]|r from |cRXP_ENEMY_Tainted Shrubbery|r
    *Find and destroy Celastrus the Bitter, and return to Thylaen with its broken frond.
    *Collect 12 Verdant Leaves from Tainted Shrubbery in the foothills of Mount Hyjal.
    .complete 91923,1 --Celastrus the Bitter
    .complete 91755,1 --Leaves to Ligatures
    .mob Celastrus the Bitter
    .mob Tainted Shrubbery
step
    .goto 2482,54.83,84.56
    >>Talk to |cRXP_FRIENDLY_Thylaen|r
    .turnin 91923 >>Turn in Celastrus the Bitter
    .target Thylaen
step
    .goto 2482,54.05,84.39
    >>Talk to |cRXP_FRIENDLY_Hyacinth|r
    .turnin 91755 >>Turn in Leaves to Ligatures
    .target Hyacinth
step
    .goto 2482,71.05,77.5
    >>Collect |cRXP_LOOT_[Hyjal Owl Feather]|r from |cRXP_ENEMY_Hyjal Owl|r, |cRXP_ENEMY_Tainted Hyjal Owl|r. Collect |cRXP_LOOT_[Fel-Slime Ooze]|r from |cRXP_ENEMY_Noxious Slime|r, |cRXP_ENEMY_Forlorn Ghost|r
    *Head south into the valley and collect owl feathers from their nests.
    *Gather 8 Fel-Slime Ooze.
    .complete 95027,1 --Feathers in Flight
    .complete 95380,1 --A Prolific Source
    .mob Hyjal Owl
    .mob Tainted Hyjal Owl
    .mob Noxious Slime
    .mob Forlorn Ghost
step
    .goto 2482,48.26,85.72
    >>Talk to |cRXP_FRIENDLY_Curious Crow|r
    .turnin 95380 >>Turn in A Prolific Source
    .accept 95316 >>Accept The Experimental Method
    .target Curious Crow
step
    .goto 2482,48.26,85.72
    >>Talk to |cRXP_FRIENDLY_Curious Crow|r
    .turnin 95316 >>Turn in The Experimental Method
    .accept 91881 >>Accept The Western Post
    .target Curious Crow
step
    .goto 2482,50.45,59.1
    >>Collect |cRXP_LOOT_[Enchanted Harpy Amulet]|r from |cRXP_ENEMY_Wormwing Harpy|r, |cRXP_ENEMY_Wormwing Windwitch|r, |cRXP_ENEMY_Wormwing Ambusher|r
    *Collect 16 Enchanted Harpy Amulet and return to Thobon Sapclaw.
    .complete 93827,1 --Windswept Wards
    .mob Wormwing Harpy
    .mob Wormwing Windwitch
step
    .goto 2482,59.75,44.01
    >>Collect |cRXP_LOOT_[Calcified Excrement]|r from |cRXP_PICK_Calcified Excrement|r
    *Scavenge the remains of the Horde base and return 5 Frayed Wire, 5 Scrap Metal, and 5 Calcified Excrement to Kaylaena.
    .complete 92011,2 --Rubble Rummage
step
    .goto 2482,68.3,46.71
    >>Talk to |cRXP_FRIENDLY_Marn Euhorn|r
    .turnin 92017 >>Turn in Cleansing Winds
    .turnin 96991 >>Turn in Trail Assist
    .accept 96302 >>Accept Arch Absolution
    .accept 92016 >>Accept Rootwork
    .target Marn Euhorn
step
    .goto 2482,68.3,46.71
    >>Talk to |cRXP_FRIENDLY_Marn Euhorn|r
    .turnin 96302 >>Turn in Arch Absolution
    .target Marn Euhorn
step
    .goto 2482,68.99,49.99
    >>Talk to |cRXP_FRIENDLY_Thisalee Crow|r
    .turnin 91688 >>Turn in To the Summit of Eternity
    .target Thisalee Crow
step
    .goto 2482,60.1,61.18
    >>Talk to |cRXP_FRIENDLY_Kaylaena Springwhisper|r
    .turnin 92011 >>Turn in Rubble Rummage
    .accept 92328 >>Accept Siegecraft
    .target Kaylaena Springwhisper
step
    .goto 2482,60.1,61.18
    >>Talk to |cRXP_FRIENDLY_Kaylaena Springwhisper|r
    .turnin 92328 >>Turn in Siegecraft
    .accept 92329 >>Accept Drum Up Trouble
    .target Kaylaena Springwhisper
step
    .goto 2482,60.1,61.18
    >>Talk to |cRXP_FRIENDLY_Kaylaena Springwhisper|r
    .turnin 92329 >>Turn in Drum Up Trouble
    .target Kaylaena Springwhisper
step
    .goto 2482,68.71,46.8
    >>Talk to |cRXP_FRIENDLY_Fayran Elthas|r
    .accept 93444 >>Accept Bait the Beast
    .target Fayran Elthas
step
    .goto 2482,68.71,46.8
    >>Talk to |cRXP_FRIENDLY_Fayran Elthas|r
    .turnin 93444 >>Turn in Bait the Beast
    .target Fayran Elthas
step
    .goto 2482,74.31,36.39
    >>Nordrassil's deep roots examined
    *Enter the Well of Eternity and examine the roots of Nordrassil.
    .complete 92016,1 --Rootwork
step
    .goto 2482,68.3,46.71
    >>Talk to |cRXP_FRIENDLY_Marn Euhorn|r
    .turnin 92016 >>Turn in Rootwork
    .target Marn Euhorn
step
    .goto 2482,63.32,25.89
    >>Talk to |cRXP_FRIENDLY_Maerion Thaelemaches|r
    .turnin 97009 >>Turn in Maerion's Misery
    .accept 97010 >>Accept Blind Vengeance
    .target Maerion Thaelemaches
step
    .goto 2482,63.32,25.89
    >>Talk to |cRXP_FRIENDLY_Maerion Thaelemaches|r
    .turnin 97010 >>Turn in Blind Vengeance
    .target Maerion Thaelemaches
step
    .goto 2482,43.91,37.81
    >>Talk to |cRXP_FRIENDLY_Johun "Punchy" Dillas|r
    .turnin 92014 >>Turn in Fox Hole
    .accept 96992 >>Accept Resupply
    .target Johun "Punchy" Dillas
step
    .goto 2482,31.4,44.38
    >>Collect |cRXP_LOOT_[Nail]|r from |cRXP_PICK_Pile of Nails|r. Collect |cRXP_LOOT_[Metal Bracket]|r from |cRXP_PICK_Bracket|r
    *Look through the burned buildings in the Cradle of Tranquility for 6 Metal Brackets and 30 Nails and return to Johun "Punchy" Dillas in Hyjal.
    .complete 96992,1 --Resupply
    .complete 96992,2 --Resupply
step
    .goto 2482,43.91,37.81
    >>Talk to |cRXP_FRIENDLY_Johun "Punchy" Dillas|r
    .turnin 96992 >>Turn in Resupply
    .accept 92593 >>Accept Avalanche of Corruption
    .target Johun "Punchy" Dillas
step
    .goto 2482,53.66,33.46
    >>Dae'gun Horde Tower scouted
    *Enter Dae'gun and locate a high vantage point, then report details to Johun.
    .complete 92593,1 --Avalanche of Corruption
step
    .goto 2482,43.91,37.81
    >>Talk to |cRXP_FRIENDLY_Johun "Punchy" Dillas|r
    .turnin 92593 >>Turn in Avalanche of Corruption
    .accept 96494 >>Accept Gathering Storm
    .target Johun "Punchy" Dillas
step
    .goto 2482,15.64,49.99
    >>Talk to |cRXP_FRIENDLY_Hnaz Blunderflame|r
    .turnin 95027 >>Turn in Feathers in Flight
    .target Hnaz Blunderflame
step
    .goto 2482,15.67,54.66
    >>Talk to |cRXP_FRIENDLY_Sefira Everbright|r
    .turnin 91881 >>Turn in The Western Post
    .target Sefira Everbright
step
    .goto 2482,8.75,46.48
    >>Click the |cRXP_PICK_Embroidered Scabbard|r
    .turnin 92100 >>Turn in Anywhere But Here
    .accept 96550 >>Accept Battle Recall
step
    .goto 2482,8.79,46.47
    >>Talk to |cRXP_FRIENDLY_Veteran of the Third War|r
    .turnin 96550 >>Turn in Battle Recall
    .accept 93510 >>Accept Wake Memories
    .accept 92101 >>Accept Lifted by Legacy
    .target Veteran of the Third War
step
    .goto 2482,18.52,78.6
    >>Talk to |cRXP_FRIENDLY_Thobon Sapclaw|r
    .turnin 93827 >>Turn in Windswept Wards
    .target Thobon Sapclaw
step
    .goto 2482,83.92,32.39
    >>Find the entrance to Hyjal Summit
    *Find the Blackthorne reinforcement point at the entrance to Hyjal Summit.
    .complete 96494,1 --Gathering Storm
step
    .goto 2482,43.91,37.81
    >>Talk to |cRXP_FRIENDLY_Johun "Punchy" Dillas|r
    .turnin 96494 >>Turn in Gathering Storm
    .accept 96529 >>Accept A Shaw Deal
    .target Johun "Punchy" Dillas
step
    .goto 1452,61.36,38.83
    >>Talk to |cRXP_FRIENDLY_Innkeeper Vizzie|r
    .turnin 93197 >>Turn in Mending Communications
    .target Innkeeper Vizzie
step
    .goto 1452,61.86,38.23
    >>Talk to |cRXP_FRIENDLY_Umaron Stragarelm|r
    .accept 97490 >>Accept Halt the Hail
    .target Umaron Stragarelm
step
    .goto 1452,61.36,38.83
    >>Talk to |cRXP_FRIENDLY_Innkeeper Vizzie|r
    .accept 93406 >>Accept Unfrozen Deliveries
    .target Innkeeper Vizzie
step
    .goto 1452,67.48,41.82
    >>Collect |cRXP_LOOT_[Missing Mail]|r from |cRXP_ENEMY_Ice Thistle Yeti|r, |cRXP_ENEMY_Ice Thistle Yeti|r, |cRXP_ENEMY_Ice Thistle Matriarch|r
    *Find 4 pieces of Missing Mail in the hills north of Everlook and bring it back to Innkeeper Vizzie.
    .complete 93406,1 --Unfrozen Deliveries
    .mob Ice Thistle Yeti
step
    .goto 1452,61.36,38.83
    >>Talk to |cRXP_FRIENDLY_Innkeeper Vizzie|r
    .turnin 93406 >>Turn in Unfrozen Deliveries
    .target Innkeeper Vizzie
step
    .goto 1452,63.42,56.35
    >>Collect |cRXP_LOOT_[Hailspite Frostmoss]|r from |cRXP_ENEMY_Hailspite|r
    *Search the southern hills of Winterspring for the giant known as Hailspite and recover the frost moss that grows upon him.
    .complete 97490,1 --Halt the Hail
    .mob Hailspite
step
    .goto 1452,61.86,38.23
    >>Talk to |cRXP_FRIENDLY_Umaron Stragarelm|r
    .turnin 97490 >>Turn in Halt the Hail
    .target Umaron Stragarelm
step
    .goto 1429,43.39,65.55
    >>Talk to |cRXP_FRIENDLY_Michelle Belle|r
    .turnin 96077 >>Turn in Belle's Ring
    .target Michelle Belle
step
    .goto 1453,78.31,70.74
    >>Talk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 96529 >>Turn in A Shaw Deal
    .accept 96676 >>Accept Unsealing Blackthorne Pact
    .target Master Mathias Shaw
step
    .goto 2482,43.91,37.81
    >>Talk to |cRXP_FRIENDLY_Johun "Punchy" Dillas|r
    .turnin 96676 >>Turn in Unsealing Blackthorne Pact
    .target Johun "Punchy" Dillas
step
    .goto 1433,30.46,56.98
    >>Talk to |cRXP_FRIENDLY_Veteran of the Third War|r
    .accept 93551 >>Accept Praise
    .target Veteran of the Third War
step
    .goto 1433,30.05,57.3
    >>Tobin's spot on Lake Everstill visited
    *Find the anchor on Lake Everstill the War Veteran remembers from childhood.
    .complete 93510,1 --Wake Memories
step
    .goto 1433,30.44,56.98
    >>Click the |cRXP_PICK_Weathered Anchor|r
    .turnin 93510 >>Turn in Wake Memories
step
    .goto 2482,27.5,50.88
    >>Talk to |cRXP_FRIENDLY_Veteran of the Third War|r
    .turnin 93551 >>Turn in Praise
    .target Veteran of the Third War
step
    .goto 1441,31.91,24.48
    >>Talk to |cRXP_FRIENDLY_Veteran of the Third War|r
    .accept 92102 >>Accept Praise
    .target Veteran of the Third War
step
    .goto 1441,31.93,24.06
    >>Tobin's spot visited
    *Find the Veteran of the Third War's markings of significance on the Great Lift.
    .complete 92101,1 --Lifted by Legacy
step
    .goto 1441,31.93,24.04
    >>Click the |cRXP_PICK_Carving|r
    .turnin 92101 >>Turn in Lifted by Legacy
step
    .goto 2482,27.5,50.88
    >>Talk to |cRXP_FRIENDLY_Veteran of the Third War|r
    .turnin 92102 >>Turn in Praise
    .accept 93567 >>Accept Ends Meet
    .target Veteran of the Third War
step
    .goto 2482,27.5,50.88
    >>Talk to |cRXP_FRIENDLY_Veteran of the Third War|r
    .turnin 93567 >>Turn in Ends Meet
    .accept 96558 >>Accept Soldier's Solace
    .target Veteran of the Third War
step
    .goto 2482,29,52.8
    >>Click the |cRXP_PICK_Battle Cache|r
    .turnin 96558 >>Turn in Soldier's Solace
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 50-60
#name 59-60 Silithus
#displayname 59-60 Silithus
step
    .zone 1451 >>Travel to Silithus
    *How: Fly to Cenarion Hold.
    *Level for this part: 59-60. 23 quests, roughly 3 h 5 min.
step
    .goto 1451,49.45,36.45
    >>Talk to |cRXP_FRIENDLY_Baristolth of the Shifting Sands|r
    .accept 8286 >>Accept What Tomorrow Brings
    .target Baristolth of the Shifting Sands
step
    .goto 1451,49.98,36.35
    >>Talk to |cRXP_FRIENDLY_Windcaller Kaldon|r
    .accept 8800 >>Accept Cenarion Battlegear
    .target Windcaller Kaldon
step
    .goto 1451,49.2,34.18
    >>Talk to |cRXP_FRIENDLY_Commander Mar'alith|r
    .accept 8304 >>Accept Dearest Natalia
    .target Commander Mar'alith
step
    .goto 1451,48.62,37.87
    >>Talk to |cRXP_FRIENDLY_Huum Wildmane|r
    .accept 8320 >>Accept Twilight Geolords
    .accept 8331 >>Accept Aurel Goldleaf
    .accept 8343 >>Accept Goldleaf's Discovery
    .target Huum Wildmane
step
    .goto 1451,48.57,37.78
    >>Talk to |cRXP_FRIENDLY_Bor Wildmane|r
    .accept 8361 >>Accept Abyssal Contacts
    .target Bor Wildmane
step
    >>Collect |cRXP_LOOT_[Abyssal Crest]|r from |cRXP_ENEMY_Crimson Templar|r, |cRXP_ENEMY_Azure Templar|r, |cRXP_ENEMY_Hoary Templar|r
    *Bor Wildmane at Cenarion Hold in Silithus wants you to destroy an Abyssal Templar and bring him an Abyssal Crest as proof of the deed.
    .complete 8361,1 --Abyssal Contacts
    .mob Crimson Templar
    .mob Azure Templar
step
    .goto 1451,48.57,37.78
    >>Talk to |cRXP_FRIENDLY_Bor Wildmane|r
    .turnin 8361 >>Turn in Abyssal Contacts
    .target Bor Wildmane
step
    .goto 1451,51.23,38.86
    >>Talk to |cRXP_FRIENDLY_Vargus|r
    .turnin 8800 >>Turn in Cenarion Battlegear
    .target Vargus
step
    .goto 1451,51.96,38.16
    >>Talk to |cRXP_FRIENDLY_Aurel Goldleaf|r
    .turnin 8331 >>Turn in Aurel Goldleaf
    .turnin 8343 >>Turn in Goldleaf's Discovery
    .accept 8332 >>Accept Dukes of the Council
    .accept 8341 >>Accept Lords of the Council
    .accept 9248 >>Accept A Humble Offering
    .target Aurel Goldleaf
step
    .goto 1451,52.13,39.14
    >>Talk to |cRXP_FRIENDLY_Dirk Thunderwood|r
    .accept 9023 >>Accept The Perfect Poison
    .target Dirk Thunderwood
step
    >>Collect |cRXP_LOOT_[Large Brilliant Shard]|r. Collect |cRXP_LOOT_[Abyssal Crest]|r from |cRXP_ENEMY_Crimson Templar|r, |cRXP_ENEMY_Azure Templar|r, |cRXP_ENEMY_Hoary Templar|r. Collect |cRXP_LOOT_[Abyssal Signet]|r from |cRXP_ENEMY_The Duke of Cynders|r, |cRXP_ENEMY_The Duke of Fathoms|r, |cRXP_ENEMY_The Duke of Shards|r. Collect |cRXP_LOOT_[Abyssal Scepter]|r from |cRXP_ENEMY_Prince Skaldrenox|r, |cRXP_ENEMY_High Marshal Whirlaxis|r, |cRXP_ENEMY_Baron Kazum|r. Earn the required reputation. Collect |cRXP_LOOT_[Venoxis's Venom Sac]|r from |cRXP_ENEMY_High Priest Venoxis|r. Collect |cRXP_LOOT_[Kurinnaxx's Venom Sac]|r from |cRXP_ENEMY_Kurinnaxx|r
    *Bring 1 Large Brilliant Shard and 3 Abyssal Crests to Aurel Goldleaf in Cenarion Hold.
    *Bring 5 Large Brilliant Shards and 3 Abyssal Signets to Aurel Goldleaf in Cenarion Hold.
    *Aurel Goldleaf at Cenarion Hold in Silithus wants you to bring her 1 Abyssal Scepter. You must also be Honored with the Cenarion Circle.
    *Dirk Thunderwood at Cenarion Hold wants you to bring him Venoxis's Venom Sac and Kurinnaxx's Venom Sac.
    .complete 8332,1 --Dukes of the Council
    .complete 8332,2 --Dukes of the Council
    .complete 8341,1 --Lords of the Council
    .complete 8341,2 --Lords of the Council
    .complete 9248,1 --A Humble Offering
    .complete 9248,2 --A Humble Offering
    .complete 9023,1 --The Perfect Poison
    .complete 9023,2 --The Perfect Poison
    .mob Crimson Templar
    .mob Azure Templar
    .mob The Duke of Cynders
    .mob The Duke of Fathoms
    .mob Prince Skaldrenox
    .mob High Marshal Whirlaxis
    .mob High Priest Venoxis
    .mob Kurinnaxx
step
    .goto 1451,51.96,38.16
    >>Talk to |cRXP_FRIENDLY_Aurel Goldleaf|r
    .turnin 8332 >>Turn in Dukes of the Council
    .turnin 8341 >>Turn in Lords of the Council
    .turnin 9248 >>Turn in A Humble Offering
    .target Aurel Goldleaf
step
    .goto 1451,52.13,39.14
    >>Talk to |cRXP_FRIENDLY_Dirk Thunderwood|r
    .turnin 9023 >>Turn in The Perfect Poison
    .target Dirk Thunderwood
step
    .goto 1451,51.96,38.16
    >>Talk to |cRXP_FRIENDLY_Aurel Goldleaf|r
    .accept 8349 >>Accept Bor Wildmane
    .accept 8351 >>Accept Bor Wishes to Speak
    .target Aurel Goldleaf
step
    .goto 1451,48.57,37.78
    >>Talk to |cRXP_FRIENDLY_Bor Wildmane|r
    .turnin 8349 >>Turn in Bor Wildmane
    .turnin 8351 >>Turn in Bor Wishes to Speak
    .accept 8348 >>Accept Signet of the Dukes
    .accept 8352 >>Accept Scepter of the Council
    .target Bor Wildmane
step
    >>Collect |cRXP_LOOT_[Abyssal Signet]|r from |cRXP_ENEMY_The Duke of Cynders|r, |cRXP_ENEMY_The Duke of Fathoms|r, |cRXP_ENEMY_The Duke of Shards|r. Collect |cRXP_LOOT_[Abyssal Scepter]|r from |cRXP_ENEMY_Prince Skaldrenox|r, |cRXP_ENEMY_High Marshal Whirlaxis|r, |cRXP_ENEMY_Baron Kazum|r
    *Bring the Abyssal Signet to Bor Wildmane in Cenarion Hold.
    *Bring an Abyssal Scepter to Bor Wildmane in Cenarion Hold.
    .complete 8348,1 --Signet of the Dukes
    .complete 8352,1 --Scepter of the Council
    .mob The Duke of Cynders
    .mob The Duke of Fathoms
    .mob Prince Skaldrenox
    .mob High Marshal Whirlaxis
step
    .goto 1451,48.57,37.78
    >>Talk to |cRXP_FRIENDLY_Bor Wildmane|r
    .turnin 8348 >>Turn in Signet of the Dukes
    .turnin 8352 >>Turn in Scepter of the Council
    .target Bor Wildmane
step
    .goto 1451,25.54,33.11
    >>Kill |cRXP_ENEMY_Twilight Geolord|r
    *Kill 10 Twilight Geolords, then return to Huum Wildmane in Cenarion Hold.
    .complete 8320,1 --Twilight Geolords
    .mob Twilight Geolord
step
    .goto 1451,48.62,37.87
    >>Talk to |cRXP_FRIENDLY_Huum Wildmane|r
    .turnin 8320 >>Turn in Twilight Geolords
    .accept 8321 >>Accept Vyral the Vile
    .target Huum Wildmane
step
    .goto 1451,72.39,15.58
    >>Collect |cRXP_LOOT_[Vyral's Signet Ring]|r from |cRXP_ENEMY_Vyral the Vile|r
    *Bring Vyral's Signet Ring to Huum Wildmane in Cenarion Hold.
    .complete 8321,1 --Vyral the Vile
    .mob Vyral the Vile
step
    .goto 1451,48.62,37.87
    >>Talk to |cRXP_FRIENDLY_Huum Wildmane|r
    .turnin 8321 >>Turn in Vyral the Vile
    .target Huum Wildmane
step
    .goto 1451,40.62,89.18
    >>Kill |cRXP_ENEMY_Frankal Invisible Trigger|r. Kill |cRXP_ENEMY_Rutgar Invisible Trigger|r
    *Commander Mar'alith at Cenarion Hold in Silithus wants you to question the inhabitants of Bronzebeard's Encampment. You will find Bronzebeard's Encampment south of Cenarion Hold.
    .complete 8304,1 --Dearest Natalia
    .complete 8304,2 --Dearest Natalia
    .mob Frankal Invisible Trigger
    .mob Rutgar Invisible Trigger
step
    .goto 1451,49.2,34.18
    >>Talk to |cRXP_FRIENDLY_Commander Mar'alith|r
    .turnin 8304 >>Turn in Dearest Natalia
    .target Commander Mar'alith
step
    .goto 1451,41.28,88.45
    >>Talk to |cRXP_FRIENDLY_Rutgar Glyphshaper|r
    .accept 8309 >>Accept Glyph Chasing
    .target Rutgar Glyphshaper
step
    .goto 1451,40.81,88.86
    >>Talk to |cRXP_FRIENDLY_Frankal Stonebridge|r
    .accept 8310 >>Accept Breaking the Code
    .target Frankal Stonebridge
step
    >>Collect |cRXP_LOOT_[Hive'Ashi Rubbing]|r. Collect |cRXP_LOOT_[Hive'Zora Rubbing]|r. Collect |cRXP_LOOT_[Hive'Regal Rubbing]|r
    *Rutgar Glyphshaper at Bronzebeard's Encampment in Silithus wants you to venture to Hive'Ashi, Hive'Zora, and Hive'Regal and recover Glyphed Rubbings from the Glyphed Crystals of each hive.
    .complete 8309,1 --Glyph Chasing
    .complete 8309,2 --Glyph Chasing
    .complete 8309,3 --Glyph Chasing
step
    .goto 1451,41.28,88.45
    >>Talk to |cRXP_FRIENDLY_Rutgar Glyphshaper|r
    .turnin 8309 >>Turn in Glyph Chasing
    .target Rutgar Glyphshaper
step
    .goto 1451,45.72,26.85
    >>Collect |cRXP_LOOT_[Hive'Ashi Silithid Brain]|r from |cRXP_ENEMY_Hive'Ashi Stinger|r, |cRXP_ENEMY_Hive'Ashi Worker|r, |cRXP_ENEMY_Hive'Ashi Defender|r
    *Frankal Stonebridge at Bronzebeard's Encampment in Silithus wants you to recover a Hive'Zora Silithid Brain, Hive'Ashi Silithid Brain, and a Hive'Regal Silithid Brain. Return to Frankal when you have completed this task.
    .complete 8310,1 --Breaking the Code
    .mob Hive'Ashi Stinger
    .mob Hive'Ashi Worker
step
    .goto 1451,23.17,58.65
    >>Collect |cRXP_LOOT_[Hive'Zora Silithid Brain]|r from |cRXP_ENEMY_Silithid Darter|r, |cRXP_ENEMY_Hive'Zora Tunneler|r, |cRXP_ENEMY_Hive'Zora Wasp|r
    *Frankal Stonebridge at Bronzebeard's Encampment in Silithus wants you to recover a Hive'Zora Silithid Brain, Hive'Ashi Silithid Brain, and a Hive'Regal Silithid Brain. Return to Frankal when you have completed this task.
    .complete 8310,2 --Breaking the Code
    .mob Silithid Darter
    .mob Hive'Zora Tunneler
step
    .goto 1451,62,80.34
    >>Collect |cRXP_LOOT_[Hive'Regal Silithid Brain]|r from |cRXP_ENEMY_Hive'Regal Ambusher|r, |cRXP_ENEMY_Hive'Regal Burrower|r, |cRXP_ENEMY_Hive'Regal Spitfire|r
    *Frankal Stonebridge at Bronzebeard's Encampment in Silithus wants you to recover a Hive'Zora Silithid Brain, Hive'Ashi Silithid Brain, and a Hive'Regal Silithid Brain. Return to Frankal when you have completed this task.
    .complete 8310,3 --Breaking the Code
    .mob Hive'Regal Ambusher
    .mob Hive'Regal Burrower
step
    .goto 1451,40.81,88.86
    >>Talk to |cRXP_FRIENDLY_Frankal Stonebridge|r
    .turnin 8310 >>Turn in Breaking the Code
    .target Frankal Stonebridge
step
    .goto 1446,64.6,50.42
    >>Discover the Brood of Nozdormu.
    *Venture to the Caverns of Time in Tanaris and find Anachronos, Brood of Nozdormu.
    .complete 8286,1 --What Tomorrow Brings
step
    .goto 1451,49.45,36.45
    >>Talk to |cRXP_FRIENDLY_Baristolth of the Shifting Sands|r
    .turnin 8286 >>Turn in What Tomorrow Brings
    .accept 8288 >>Accept Only One May Rise
    .target Baristolth of the Shifting Sands
step
    >>Collect |cRXP_LOOT_[Head of the Broodlord Lashlayer]|r from |cRXP_ENEMY_Broodlord Lashlayer|r
    *Return the Head of the Broodlord Lashlayer to Baristolth of the Shifting Sands at Cenarion Hold in Silithus.
    .complete 8288,1 --Only One May Rise
    .mob Broodlord Lashlayer
step
    .goto 1451,49.45,36.45
    >>Talk to |cRXP_FRIENDLY_Baristolth of the Shifting Sands|r
    .turnin 8288 >>Turn in Only One May Rise
    .accept 8301 >>Accept The Path of the Righteous
    .target Baristolth of the Shifting Sands
step
    .goto 1451,45.72,26.85
    >>Collect |cRXP_LOOT_[Silithid Carapace Fragment]|r from |cRXP_ENEMY_Hive'Ashi Stinger|r, |cRXP_ENEMY_Hive'Ashi Worker|r, |cRXP_ENEMY_Hive'Ashi Defender|r
    *Collect 200 Silithid Carapace Fragments and return to Baristolth.
    .complete 8301,1 --The Path of the Righteous
    .mob Hive'Ashi Stinger
    .mob Hive'Ashi Worker
step
    .goto 1451,49.45,36.45
    >>Talk to |cRXP_FRIENDLY_Baristolth of the Shifting Sands|r
    .turnin 8301 >>Turn in The Path of the Righteous
    .accept 8303 >>Accept Anachronos
    .target Baristolth of the Shifting Sands
step
    .goto 1446,65.27,50.03
    >>Talk to |cRXP_FRIENDLY_Anachronos|r
    .turnin 8303 >>Turn in Anachronos
    .accept 8305 >>Accept Long Forgotten Memories
    .target Anachronos
step
    .goto 1451,28.68,89.14
    >>Click the |cRXP_PICK_Crystalline Tear|r
    .turnin 8305 >>Turn in Long Forgotten Memories
    .accept 8519 >>Accept A Pawn on the Eternal Board
step
    .goto 1446,65.27,50.03
    >>Talk to |cRXP_FRIENDLY_Anachronos|r
    .turnin 8519 >>Turn in A Pawn on the Eternal Board
    .target Anachronos
]])
