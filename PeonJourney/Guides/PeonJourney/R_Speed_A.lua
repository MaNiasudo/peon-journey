RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 20-29
#name 21-22 Wailing Caverns pre-quests
#displayname 21-22 Wailing Caverns pre-quests
#next 21-22 Wailing Caverns
step
    +|cRXP_WARN_Wailing Caverns: pre-quests|r. 1 quests, solo (no group needed), roughly 5 min. The run guide comes after this one. Click to start.
    *Pre-quests: Raptor Horns
step
    .goto 1413,62.37,37.62
    >>Talk to |cRXP_FRIENDLY_Mebok Mizzyrix|r
    .accept 865 >>Accept Raptor Horns
    .target Mebok Mizzyrix
step
    .goto 1413,52.98,51.23
    >>Collect |cRXP_LOOT_[Intact Raptor Horn]|r from |cRXP_ENEMY_Sunscale Scytheclaw|r, |cRXP_ENEMY_Ishamuhale|r, |cRXP_ENEMY_Takk the Leaper|r
    *Gather 5 Intact Raptor Horns from Sunscale Scytheclaws, and bring them to Mebok Mizzyrix in Ratchet.
    .complete 865,1 --Raptor Horns
    .mob Sunscale Scytheclaw
    .mob Ishamuhale
step
    .goto 1413,62.37,37.62
    >>Talk to |cRXP_FRIENDLY_Mebok Mizzyrix|r
    .turnin 865 >>Turn in Raptor Horns
    .target Mebok Mizzyrix
step
    +|cRXP_WARN_Pre-quests done.|r Next: Wailing Caverns itself. That guide tells you when to find a group. Click to continue.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 20-29
#name 21-22 Wailing Caverns
#displayname 21-22 Wailing Caverns
#next 22-23 Ashenvale/Stonetalon
step
    +|cRXP_WARN_Wailing Caverns|r (levels 15-24). Pick up 5 dungeon quests solo (roughly 10 min with the hand-ins), then ONE run with a group (roughly 40 min). No group needed until the run step. Click to start.
    *Its 1 pre-quests are in the guide before this one. Skipped them? Some quests below won't be offered: skip those steps.
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1413,62.37,37.62
    >>Talk to |cRXP_FRIENDLY_Mebok Mizzyrix|r
    .accept 1491 >>Accept Smart Drinks
    .target Mebok Mizzyrix
step
    .goto 1413,63.09,37.61
    >>Talk to |cRXP_FRIENDLY_Crane Operator Bigglefuzz|r
    .accept 959 >>Accept Trouble at the Docks
    .target Crane Operator Bigglefuzz
step
    .goto 1413,46.01,35.74
    >>Talk to |cRXP_FRIENDLY_Ebru|r
    .accept 1487 >>Accept Deviate Eradication
    .target Ebru
step
    .goto 1413,45.99,35.66
    >>Talk to |cRXP_FRIENDLY_Nalpak|r
    .accept 1486 >>Accept Deviate Hides
    .target Nalpak
step
    .goto 1413,45.69,33.62
    >>Collect |cRXP_LOOT_[99-Year-Old Port]|r from |cRXP_ENEMY_Mad Magglish|r
    *Crane Operator Bigglefuzz in Ratchet wants you to retrieve the bottle of 99-Year-Old Port from Mad Magglish who is hiding in the Wailing Caverns.
    .complete 959,1 --Trouble at the Docks
    .mob Mad Magglish
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in.|r
step
    .goto 1413,46,36.5
    >>Loot |cRXP_LOOT_[Glowing Shard]|r from |cRXP_ENEMY_Mutanus the Devourer|r, then click it to start the quest
    .accept 6981 >>Accept The Glowing Shard
    .use 10441
    .mob Mutanus the Devourer
step
    .goto 1413,46,36.5
    >>Enter |cRXP_WARN_Wailing Caverns|r with your group. Quest goals inside:
    *Deviate Hides: Nalpak in the Wailing Caverns wants 20 Deviate Hides.
    *Deviate Eradication: Ebru in the Wailing Caverns wants you to kill 7 Deviate Ravagers, 7 Deviate Vipers, 7 Deviate Shamblers and 7 Deviate Dreadfangs.
    *Smart Drinks: Bring 6 portions of Wailing Essence to Mebok Mizzyrix in Ratchet.
    .complete 1486,1 --Deviate Hides
    .complete 1487,1 --Deviate Eradication
    .complete 1487,2 --Deviate Eradication
    .complete 1487,3 --Deviate Eradication
    .complete 1487,4 --Deviate Eradication
    .complete 1491,1 --Smart Drinks
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1413,46.01,35.74
    >>Talk to |cRXP_FRIENDLY_Ebru|r
    .turnin 1487 >>Turn in Deviate Eradication
    .target Ebru
step
    .goto 1413,45.99,35.66
    >>Talk to |cRXP_FRIENDLY_Nalpak|r
    .turnin 1486 >>Turn in Deviate Hides
    .target Nalpak
step
    .goto 1413,48.18,32.78
    >>Talk to |cRXP_FRIENDLY_Falla Sagewind|r
    .turnin 6981 >>Turn in The Glowing Shard
    .target Falla Sagewind
step
    .goto 1413,62.37,37.62
    >>Talk to |cRXP_FRIENDLY_Mebok Mizzyrix|r
    .turnin 1491 >>Turn in Smart Drinks
    .target Mebok Mizzyrix
step
    .goto 1413,63.09,37.61
    >>Talk to |cRXP_FRIENDLY_Crane Operator Bigglefuzz|r
    .turnin 959 >>Turn in Trouble at the Docks
    .target Crane Operator Bigglefuzz
step
    .goto 1413,46,36.5
    +Dungeon entrance: Wailing Caverns. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 20-29
#name 22-23 Ashenvale/Stonetalon
#displayname 22-23 Ashenvale/Stonetalon
#next 23-26 Duskwood/Redridge
step
    .zone 1440 >>Travel to Ashenvale
    *How: The starter route ends in Darkshore: ride south into Ashenvale (Astranaar).
    *Level for this part: 22-23. 18 quests, roughly 2 h 5 min.
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
    .goto 1440,34.89,49.79
    >>Talk to |cRXP_FRIENDLY_Sentinel Thenysil|r
    .accept 1070 >>Accept On Guard in Stonetalon
    .target Sentinel Thenysil
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
    >>Collect |cRXP_LOOT_[Divined Scroll]|r
    *Collect 5 Intact Elemental Bracers and use the Divining Scroll on them. Afterwards, bring the Divined Scroll to Sentinel Velene Starstrike at the Silverwind Refuge.
    .complete 1016,1 --Elemental Bracers
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
    .goto 1442,58.99,62.6
    >>Talk to |cRXP_FRIENDLY_Ziz Fizziks|r
    .accept 1093 >>Accept Super Reaper 6000
    .target Ziz Fizziks
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
    >>Kill |cRXP_ENEMY_Venture Co. Logger|r. Kill |cRXP_ENEMY_Venture Co. Deforester|r. Collect |cRXP_LOOT_[Super Reaper 6000 Blueprints]|r from |cRXP_ENEMY_Venture Co. Operator|r
    *Kill 10 Venture Co. Loggers, and 10 Venture Co. Deforesters and return to Gaxim Rustfizzle in Stonetalon.
    *Get the Super Reaper 6000 Blueprints for Ziz Fizziks in the Stonetalon Mountains.
    .complete 1071,1 --A Gnome's Respite
    .complete 1071,2 --A Gnome's Respite
    .complete 1093,1 --Super Reaper 6000
    .mob Venture Co. Logger
    .mob Venture Co. Deforester
    .mob Venture Co. Operator
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
    .target Gaxim Rustfizzle
step
    .goto 1442,48.69,39.86
    >>Talk to |cRXP_FRIENDLY_Night Elf Courier|r
    .accept 86574 >>Accept Stonetalon Supply Run
    .target Night Elf Courier
step
    .goto 1442,53.7,41.29
    >>Collect |cRXP_LOOT_[Stonetalon Supply Bundle]|r from |cRXP_ENEMY_Young Pridewing|r, |cRXP_ENEMY_Pridewing Wyvern|r, |cRXP_ENEMY_Pridewing Skyhunter|r
    *Collect 6 Stonetalon Supplies from Pridewing Wyverns and deliver them to Innkeeper Faralia.
    .complete 86574,1 --Stonetalon Supply Run
    .mob Young Pridewing
    .mob Pridewing Wyvern
step
    .goto 1442,37.1,8.1
    >>Talk to |cRXP_FRIENDLY_Keeper Albagorm|r
    .accept 1057 >>Accept Reclaiming the Charred Vale
    .target Keeper Albagorm
step
    .goto 1442,35.79,5.74
    >>Talk to |cRXP_FRIENDLY_Innkeeper Faralia|r
    .turnin 86574 >>Turn in Stonetalon Supply Run
    .target Innkeeper Faralia
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
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 20-29
#name 23-26 Duskwood/Redridge
#displayname 23-26 Duskwood/Redridge
#next 26-29 Wetlands
step
    .zone 1431 >>Travel to Duskwood
    *How: Take the boat Auberdine -> Stormwind Harbor (new in Forever), then fly to Darkshire.
    *Level for this part: 23-26. 48 quests, roughly 3 h 50 min.
step
    #completewith next
    .goto 1431,77.49,44.29,15,0
    >>Talk to |cRXP_FRIENDLY_Felicia Maline|r if you don't have this flight path yet
    .fp Felicia Maline >>Get the flight path
    .target Felicia Maline
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
    .goto 1431,18.38,56.37
    >>Talk to |cRXP_FRIENDLY_Jitters|r
    .turnin 163 >>Turn in Raven Hill
    .accept 5 >>Accept Jitters' Growling Gut
    .target Jitters
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
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 20-29
#name 26-29 Wetlands
#displayname 26-29 Wetlands
#next 29-31 Gnomeregan
step
    .zone 1437 >>Travel to Wetlands
    *How: Fly to Menethil Harbor.
    *Level for this part: 26-29. 38 quests, roughly 3 h 10 min.
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
    .goto 1437,10.85,55.9
    >>Talk to |cRXP_FRIENDLY_Harlo Barnaby|r
    .accept 472 >>Accept Fall of Dun Modr
    .target Harlo Barnaby
step
    .goto 1437,10.1,56.9
    >>Talk to |cRXP_FRIENDLY_Valstag Ironjaw|r
    .accept 473 >>Accept Report to Captain Stoutfist
    .target Valstag Ironjaw
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
    .target Karl Boran
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
    .goto 1437,38.91,52.34
    >>Talk to |cRXP_FRIENDLY_Merrin Rockweaver|r
    .accept 306 >>Accept In Search of The Excavation Team
    .target Merrin Rockweaver
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
    .target Essene Villard
step
    .goto 1437,51.28,7.95
    >>Click the |cRXP_PICK_Ebenezer Rustlocke's Corpse|r
    .accept 632 >>Accept The Thandol Span
step
    .goto 1437,49.9,18.24
    >>Talk to |cRXP_FRIENDLY_Rhag Garmason|r
    .turnin 632 >>Turn in The Thandol Span
    .accept 633 >>Accept The Thandol Span
    .target Rhag Garmason
step
    .goto 1437,59.83,24.67
    >>Collect |cRXP_LOOT_[Stolen Explosives]|r from |cRXP_PICK_Stolen Explosives|r
    *Retrieve 3 Stolen Explosives from the Dark Iron Dwarf camps.
    .complete 88756,1 --Bring Back a Bang
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
    .target James Halloran
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
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 20-29
#name 29-31 Gnomeregan
#displayname 29-31 Gnomeregan
#next 31-32 Hillsbrad/Alterac
step
    +|cRXP_WARN_Gnomeregan|r (levels 29-38). Pick up 21 dungeon quests solo (roughly 1 h 25 min with the hand-ins), then ONE run with a group (roughly 2 h 30 min). No group needed until the run step. Click to start.
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1453,51.05,48.39
    >>Talk to |cRXP_FRIENDLY_Brother Sarno|r
    .accept 2923 >>Accept Tinkmaster Overspark
    .target Brother Sarno
step
    .goto 1453,62.63,34.11
    >>Talk to |cRXP_FRIENDLY_Shoni the Shilent|r
    .accept 2928 >>Accept Gyrodrillmatic Excavationators
    .target Shoni the Shilent
step
    .goto 1455,67.92,46.1
    >>Talk to |cRXP_FRIENDLY_Klockmort Spannerspan|r
    .accept 2924 >>Accept Essential Artificials
    .target Klockmort Spannerspan
step
    .goto 1455,69.83,48.1
    >>Talk to |cRXP_FRIENDLY_Master Mechanic Castpipe|r
    .accept 2930 >>Accept Data Rescue
    .target Master Mechanic Castpipe
step
    .goto 1455,68.75,48.97
    >>Talk to |cRXP_FRIENDLY_High Tinker Mekkatorque|r
    .accept 2929 >>Accept The Grand Betrayal
    .target High Tinker Mekkatorque
step
    .goto 1455,69.18,50.55
    >>Talk to |cRXP_FRIENDLY_Gnoarn|r
    .accept 2927 >>Accept The Day After
    .target Gnoarn
step
    .goto 1457,59.51,45.38
    >>Talk to |cRXP_FRIENDLY_Mathiel|r
    .accept 2925 >>Accept Klockmort's Essentials
    .target Mathiel
step
    .goto 1442,59.52,67.15
    >>Talk to |cRXP_FRIENDLY_Gaxim Rustfizzle|r
    .accept 2931 >>Accept Castpipe's Task
    .target Gaxim Rustfizzle
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in.|r
step
    .goto 1426,24.3,39.8
    >>Inside Gnomeregan: these quests start from a drop or an object in the dungeon
    .accept 2904 >>Accept A Fine Mess
    .accept 2951 >>Accept The Sparklematic 5200!
    .accept 4601 >>Accept The Sparklematic 5200!
    .accept 4602 >>Accept The Sparklematic 5200!
    .accept 80324 >>Accept The Mad King
step
    .goto 1426,24.3,39.8
    >>Loot |cRXP_LOOT_[Grime-Encrusted Ring]|r from |cRXP_ENEMY_Dark Iron Agent|r, then click it to start the quest
    .accept 2945 >>Accept Grime-Encrusted Ring
    .use 9326
    .mob Dark Iron Agent
step
    .goto 1426,24.3,39.8
    >>Enter |cRXP_WARN_Gnomeregan|r with your group. Quest goals inside:
    *Essential Artificials: Bring 12 Essential Artificials to Klockmort Spannerspan in Ironforge.
    *Gyrodrillmatic Excavationators: Bring twenty-four Robo-mechanical Guts to Shoni in Stormwind.
    *The Grand Betrayal: Venture to Gnomeregan and kill Mekgineer Thermaplugg. Return to High Tinker Mekkatorque when the task is complete.
    *Data Rescue: Bring a Prismatic Punch Card to Master Mechanic Castpipe in Ironforge.
    *The Sparklematic 5200!: Insert a Grime-Encrusted Item into the Sparklematic 5200, and be sure to have three silver coins to start the machine.
    *The Sparklematic 5200!: Insert a Grime-Encrusted Item into the Sparklematic 5200, and be sure to have three silver coins to start the machine.
    *The Sparklematic 5200!: Insert a Grime-Encrusted Item into the Sparklematic 5200, and be sure to have three silver coins to start the machine.
    .complete 2924,1 --Essential Artificials
    .complete 2928,1 --Gyrodrillmatic Excavationators
    .complete 2929,1 --The Grand Betrayal
    .complete 2930,1 --Data Rescue
    .complete 2951,1 --The Sparklematic 5200!
    .complete 4601,1 --The Sparklematic 5200!
    .complete 4602,1 --The Sparklematic 5200!
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1426,24.3,39.8
    >>Loot |cRXP_LOOT_[Grime-Encrusted Ring]|r from |cRXP_ENEMY_Dark Iron Agent|r, then click it to start the quest
    .turnin 2945 >>Turn in Grime-Encrusted Ring
step
    .goto 1426,24.3,39.8
    >>Inside Gnomeregan: these quests start from a drop or an object in the dungeon
    .turnin 2951 >>Turn in The Sparklematic 5200!
    .turnin 4601 >>Turn in The Sparklematic 5200!
    .turnin 4602 >>Turn in The Sparklematic 5200!
step
    .goto 1426,45.89,49.39
    >>Talk to |cRXP_FRIENDLY_Ozzie Togglevolt|r
    .turnin 2927 >>Turn in The Day After
    .target Ozzie Togglevolt
step
    .goto 1434,27.6,77.48
    >>Talk to |cRXP_FRIENDLY_Scooty|r
    .turnin 2904 >>Turn in A Fine Mess
    .target Scooty
step
    .goto 1455,69.55,50.33
    >>Talk to |cRXP_FRIENDLY_Tinkmaster Overspark|r
    .turnin 2923 >>Turn in Tinkmaster Overspark
    .target Tinkmaster Overspark
step
    .goto 1455,68.75,48.97
    >>Talk to |cRXP_FRIENDLY_High Tinker Mekkatorque|r
    .turnin 2929 >>Turn in The Grand Betrayal
    .turnin 80324 >>Turn in The Mad King
    .target High Tinker Mekkatorque
step
    .goto 1455,69.83,48.1
    >>Talk to |cRXP_FRIENDLY_Master Mechanic Castpipe|r
    .turnin 2930 >>Turn in Data Rescue
    .turnin 2931 >>Turn in Castpipe's Task
    .target Master Mechanic Castpipe
step
    .goto 1455,67.92,46.1
    >>Talk to |cRXP_FRIENDLY_Klockmort Spannerspan|r
    .turnin 2924 >>Turn in Essential Artificials
    .turnin 2925 >>Turn in Klockmort's Essentials
    .target Klockmort Spannerspan
step
    .goto 1453,62.63,34.11
    >>Talk to |cRXP_FRIENDLY_Shoni the Shilent|r
    .turnin 2928 >>Turn in Gyrodrillmatic Excavationators
    .target Shoni the Shilent
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1455,69.55,50.33
    >>Talk to |cRXP_FRIENDLY_Tinkmaster Overspark|r
    .accept 2922 >>Accept Save Techbot's Brain!
    .target Tinkmaster Overspark
step
    .goto 1426,45.89,49.39
    >>Talk to |cRXP_FRIENDLY_Ozzie Togglevolt|r
    .accept 2926 >>Accept Gnogaine
    .target Ozzie Togglevolt
step
    .goto 1426,19.78,31.93
    >>Collect |cRXP_LOOT_[Techbot's Memory Core]|r from |cRXP_ENEMY_Techbot|r
    *Bring Techbot's Memory Core to Tinkmaster Overspark in Ironforge.
    .complete 2922,1 --Save Techbot's Brain!
    .mob Techbot
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in. (run 2)|r
step
    .goto 1426,24.3,39.8
    >>Inside Gnomeregan: these quests start from a drop or an object in the dungeon
    .accept 2947 >>Accept Return of the Ring
    .accept 2952 >>Accept The Sparklematic 5200!
    .accept 4605 >>Accept The Sparklematic 5200!
    .accept 4606 >>Accept The Sparklematic 5200!
step
    .goto 1426,24.3,39.8
    >>Enter |cRXP_WARN_Gnomeregan|r with your group. Quest goals inside:
    *Gnogaine: Use the Empty Leaden Collection Phial on Irradiated Invaders or Irradiated Pillagers to collect radioactive fallout. Once it is full, take it back to Ozzie Togglevolt in Kharanos.
    .complete 2926,1 --Gnogaine
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1426,24.3,39.8
    >>Inside Gnomeregan: these quests start from a drop or an object in the dungeon
    .turnin 2952 >>Turn in The Sparklematic 5200!
    .turnin 4605 >>Turn in The Sparklematic 5200!
    .turnin 4606 >>Turn in The Sparklematic 5200!
step
    .goto 1426,45.89,49.39
    >>Talk to |cRXP_FRIENDLY_Ozzie Togglevolt|r
    .turnin 2926 >>Turn in Gnogaine
    .target Ozzie Togglevolt
step
    .goto 1455,69.55,50.33
    >>Talk to |cRXP_FRIENDLY_Tinkmaster Overspark|r
    .turnin 2922 >>Turn in Save Techbot's Brain!
    .target Tinkmaster Overspark
step
    .goto 1455,36.38,3.61
    >>Talk to |cRXP_FRIENDLY_Talvash del Kissel|r
    .turnin 2947 >>Turn in Return of the Ring
    .target Talvash del Kissel
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1426,45.89,49.39
    >>Talk to |cRXP_FRIENDLY_Ozzie Togglevolt|r
    .accept 2962 >>Accept The Only Cure is More Green Glow
    .target Ozzie Togglevolt
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in. (run 3)|r
step
    .goto 1426,24.3,39.8
    >>Enter |cRXP_WARN_Gnomeregan|r with your group. Quest goals inside:
    *The Only Cure is More Green Glow: Travel to Gnomeregan and bring back High Potency Radioactive Fallout. Be warned, the fallout is unstable and will collapse rather quickly.
    .complete 2962,1 --The Only Cure is More Green Glow
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1426,45.89,49.39
    >>Talk to |cRXP_FRIENDLY_Ozzie Togglevolt|r
    .turnin 2962 >>Turn in The Only Cure is More Green Glow
    .target Ozzie Togglevolt
step
    .goto 1426,24.3,39.8
    +Dungeon entrance: Gnomeregan. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 30-39
#name 31-32 Hillsbrad/Alterac
#displayname 31-32 Hillsbrad/Alterac
#next 32-34 Stranglethorn Vale
step
    .zone 1424 >>Travel to Hillsbrad
    *How: Boat Menethil Harbor -> Southshore (the new Menethil, Southshore, Auberdine loop).
    *Level for this part: 31-32. 15 quests, roughly 1 h 35 min.
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
    .goto 1424,49.47,58.73
    >>Talk to |cRXP_FRIENDLY_Marshal Redpath|r
    .accept 500 >>Accept Crushridge Bounty
    .target Marshal Redpath
step
    .goto 1424,51.46,58.39
    >>Talk to |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
    .accept 536 >>Accept Down the Coast
    .target Lieutenant Farren Orinelle
step
    .goto 1424,52.13,58.74
    >>Talk to |cRXP_FRIENDLY_Brewmeister Bilger|r
    .accept 98071 >>Accept Brewer's Trade
    .target Brewmeister Bilger
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
    .goto 1453,75.83,36.72
    >>Talk to |cRXP_FRIENDLY_Major Samuelson|r
    .turnin 563 >>Turn in Reassignment
    .target Major Samuelson
step
    .goto 1416,60.26,43.98
    >>Loot |cRXP_LOOT_[Singed Note]|r from |cRXP_ENEMY_Argus Shadow Mage|r, |cRXP_ENEMY_Syndicate Wizard|r, then click it to start the quest
    .accept 95534 >>Accept Strahnbrad Mystery
    .use 213421
    .mob Argus Shadow Mage
    .mob Syndicate Wizard
step
    .goto 1416,49.93,42.09
    >>Collect |cRXP_LOOT_[Dirty Knucklebones]|r from |cRXP_ENEMY_Crushridge Ogre|r, |cRXP_ENEMY_Crushridge Brute|r, |cRXP_ENEMY_Crushridge Mauler|r
    *Gather 9 Dirty Knucklebones from Crushridge ogres in the Alterac Mountains. Bring them to Marshal Redpath in Southshore.
    .complete 500,1 --Crushridge Bounty
    .mob Crushridge Ogre
    .mob Crushridge Brute
step
    .goto 1416,58.32,67.92
    >>Click the |cRXP_PICK_Syndicate Documents|r
    .accept 510 >>Accept Foreboding Plans
    .accept 511 >>Accept Encrypted Letter
step
    .goto 1424,49.47,58.73
    >>Talk to |cRXP_FRIENDLY_Marshal Redpath|r
    .turnin 500 >>Turn in Crushridge Bounty
    .target Marshal Redpath
step
    .goto 1424,48.64,59.01
    >>Talk to |cRXP_FRIENDLY_Kundric Zanden|r
    .turnin 95534 >>Turn in Strahnbrad Mystery
    .target Kundric Zanden
step
    .goto 1424,48.14,59.11
    >>Talk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
    .turnin 510 >>Turn in Foreboding Plans
    .target Magistrate Henry Maleb
step
    .goto 1424,50.57,57.09
    >>Talk to |cRXP_FRIENDLY_Loremaster Dibbs|r
    .turnin 511 >>Turn in Encrypted Letter
    .target Loremaster Dibbs
step
    .goto 1424,48.14,59.11
    >>Talk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
    .accept 512 >>Accept Noble Deaths
    .target Magistrate Henry Maleb
step
    .goto 1424,50.57,57.09
    >>Talk to |cRXP_FRIENDLY_Loremaster Dibbs|r
    .accept 514 >>Accept Letter to Stormpike
    .target Loremaster Dibbs
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
step
    .goto 1416,60.63,43.86
    >>Collect |cRXP_LOOT_[Alterac Signet Ring]|r from |cRXP_ENEMY_Syndicate Spy|r, |cRXP_ENEMY_Syndicate Sentry|r, |cRXP_ENEMY_Syndicate Saboteur|r
    *Bring 7 Alterac Signet Rings to Magistrate Maleb in Southshore.
    .complete 512,1 --Noble Deaths
    .mob Syndicate Spy
    .mob Syndicate Sentry
step
    .goto 1424,48.14,59.11
    >>Talk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
    .turnin 512 >>Turn in Noble Deaths
    .target Magistrate Henry Maleb
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 30-39
#name 32-34 Stranglethorn Vale
#displayname 32-34 Stranglethorn Vale
#next 34-35 Swamp of Sorrows/Badlands
step
    .zone 1434 >>Travel to Stranglethorn Vale
    *How: In Kalimdor? Boat Theramore -> Menethil Harbor first. Then fly to Rebel Camp or Booty Bay.
    *Level for this part: 32-34. 32 quests, roughly 2 h 45 min.
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
    >>Collect |cRXP_LOOT_[Bloodscalp Ear]|r from |cRXP_ENEMY_Bloodscalp Warrior|r, |cRXP_ENEMY_Bloodscalp Scout|r, |cRXP_ENEMY_Bloodscalp Hunter|r. Collect |cRXP_LOOT_[Stolen Shipment]|r from |cRXP_PICK_Stolen Shipment|r
    *Acquire 15 Bloodscalp Ears and return them to Kebok in Booty Bay.
    *Recover 8 Stolen Shipments from the Ruins of Zul'Kunda in Stranglethorn Vale and return your haul to someone in Booty Bay.
    .complete 189,1 --Bloodscalp Ears
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
    .goto 1434,20.79,23.15
    >>Locate the haunted island
    *Find the haunted island for Baron Revilgaz in Booty Bay.
    .complete 578,1 --The Stone of the Tides
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
    .accept 610 >>Accept "Pretty Boy" Duncan
    .target Catelyn the Blade
step
    .goto 1434,27.39,69.42
    >>Collect |cRXP_LOOT_[Catelyn's Blade]|r from |cRXP_ENEMY_"Pretty Boy" Duncan|r
    *Get Catelyn's dagger from "Pretty Boy" Duncan.
    .complete 610,1 --"Pretty Boy" Duncan
    .mob "Pretty Boy" Duncan
step
    .goto 1434,27.28,77.53
    >>Talk to |cRXP_FRIENDLY_Catelyn the Blade|r
    .turnin 610 >>Turn in "Pretty Boy" Duncan
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
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 30-39
#name 34-35 Swamp of Sorrows/Badlands
#displayname 34-35 Swamp of Sorrows/Badlands
#next 35-36 Desolace
step
    .zone 1435 >>Travel to Swamp of Sorrows
    *How: Ride out of the Riverglades into the Swamp of Sorrows or the Badlands.
    *Level for this part: 34-35. 18 quests, roughly 2 h 15 min.
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
    .goto 1418,53.8,43.3
    >>Talk to |cRXP_FRIENDLY_Sigrun Ironhew|r
    .turnin 718 >>Turn in Mirages
    .accept 733 >>Accept Scrounging
    .target Sigrun Ironhew
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
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 30-39
#name 35-36 Desolace
#displayname 35-36 Desolace
#next 36-40 Riverglades
step
    .zone 1443 >>Travel to Desolace
    *How: Fly to Nijel's Point.
    *Level for this part: 35-36. 20 quests, roughly 1 h 30 min.
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
    .accept 5741 >>Accept Sceptre of Light
    .target Azore Aldamort
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
    .target Brother Anton
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
    .goto 1417,94.15,69.28
    >>Click the |cRXP_PICK_Illari's Loot Cache|r
    .turnin 79242 >>Turn in No Honor Among Thieves
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 30-39
#name 36-40 Riverglades
#displayname 36-40 Riverglades
#next 40-42 Feralas
step
    .zone 2548 >>Travel to Riverglades
    *How: Fly to Lakeshire, take the north road into the Bristle Hills, then south to Farholde Keep (get its flight path).
    *Level for this part: 36-40. 82 quests, roughly 6 h 55 min.
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
    .goto 2548,63.39,80.64
    >>Talk to |cRXP_FRIENDLY_Bertrand Ironbrow|r
    .accept 95943 >>Accept Foreman's Plight
    .target Bertrand Ironbrow
step
    .goto 2548,65.61,80.79
    >>Click the |cRXP_PICK_WANTED!|r
    .accept 95991 >>Accept WANTED: Ghostmaw
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
    .goto 2548,65.92,81.09
    >>Click the |cRXP_PICK_Wanted|r
    .accept 95912 >>Accept WANTED: Blademaster Kaijo
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
    .accept 95934 >>Accept Proof of Profit
    .target Gelinda Coppergleam
step
    .goto 2548,30.14,73.35
    >>Collect |cRXP_LOOT_[Cubic Draconia]|r from |cRXP_PICK_Cubic Draconia|r
    *Find a piece of Cubic Draconia for Gelinda Coppergleam.
    .complete 95934,1 --Proof of Profit
step
    .goto 2548,30.21,69.07
    >>Talk to |cRXP_FRIENDLY_Gelinda Coppergleam|r
    .turnin 95934 >>Turn in Proof of Profit
    .target Gelinda Coppergleam
step
    .goto 2548,23.65,67.82
    >>Talk to |cRXP_FRIENDLY_Scout Bolain|r
    .accept 95147 >>Accept The Lost Scout
    .target Scout Bolain
step
    .goto 2548,20.44,69.4
    >>Collect |cRXP_LOOT_[Saw Blade]|r from |cRXP_PICK_Stolen Tools|r. Collect |cRXP_LOOT_[Snargl's Snout]|r from |cRXP_ENEMY_Snargl|r
    *Recover 8 Saw Blades from the gnoll camps in Bristle Hills for Halligan Turner at the lumber mill.
    *Locate Snargl in the Bristle Hills, kill him, and bring his snout to Cedric Dalton at Southern Watch.
    .complete 94931,1 --Stolen Saws
    .complete 94679,1 --Snargl's Snout
    .mob Snargl
step
    .goto 2548,39.57,74.67
    >>Talk to |cRXP_FRIENDLY_Cedric Dalton|r
    .turnin 94679 >>Turn in Snargl's Snout
    .turnin 95147 >>Turn in The Lost Scout
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
    .target Farmer Elbrim
step
    .goto 2548,59.16,39.16
    >>Collect |cRXP_LOOT_[Blademaster's Banner]|r from |cRXP_ENEMY_Blademaster Kaijo|r
    *Bring the Blademaster's Banner to Ember Bladewhisper in Farholde Keep.
    .complete 95912,1 --WANTED: Blademaster Kaijo
    .mob Blademaster Kaijo
step
    .goto 2548,68.15,48.57
    >>Talk to |cRXP_FRIENDLY_Sleebo Fizzlespout|r
    .accept 96063 >>Accept Gaseous Gold
    .target Sleebo Fizzlespout
step
    .goto 2548,77.1,52.9
    >>Talk to |cRXP_FRIENDLY_Friz Frazzlespark|r
    .accept 95288 >>Accept Smuggler's Paradise
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
    .accept 95120 >>Accept WANTED: Old Rot-Chum
step
    .goto 2548,79.45,52.71
    >>Talk to |cRXP_FRIENDLY_Wharfmaster Whizzbuzz|r
    .accept 95118 >>Accept Saltwater Savages
    .accept 95119 >>Accept Unfriendly Competition
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
    .accept 95121 >>Accept A Taste of the Sea
    .target Fimbo Greasemitz
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
    .goto 2548,79.45,52.71
    >>Talk to |cRXP_FRIENDLY_Wharfmaster Whizzbuzz|r
    .accept 95122 >>Accept Unchecked Expansion
    .target Wharfmaster Whizzbuzz
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
    .goto 2548,77.64,36.04
    >>Kill |cRXP_ENEMY_Eastsea Raider|r. Kill |cRXP_ENEMY_Eastsea Bombardier|r
    *Kill 8 Eastsea Raiders and 8 Eastsea Bombardiers for Wharfmaster Whizzbuzz.
    .complete 95122,1 --Unchecked Expansion
    .complete 95122,2 --Unchecked Expansion
    .mob Eastsea Raider
    .mob Eastsea Bombardier
step
    .goto 2548,79.45,52.71
    >>Talk to |cRXP_FRIENDLY_Wharfmaster Whizzbuzz|r
    .turnin 95122 >>Turn in Unchecked Expansion
    .target Wharfmaster Whizzbuzz
step
    .goto 2548,77.1,52.9
    >>Talk to |cRXP_FRIENDLY_Friz Frazzlespark|r
    .turnin 95294 >>Turn in Smuggler's Bargain
    .accept 95295 >>Accept I Know a Guy
    .target Friz Frazzlespark
step
    .goto 2548,79.45,52.71
    >>Talk to |cRXP_FRIENDLY_Wharfmaster Whizzbuzz|r
    .accept 95123 >>Accept A Blast Ye Scurvy Dogs!
    .target Wharfmaster Whizzbuzz
step
    .goto 2548,77.62,33.73
    >>Collect |cRXP_LOOT_[Eastsea Powder Keg]|r from |cRXP_PICK_Powder Keg|r
    *Steal 5 Eastsea Powder Kegs for Wharfmaster Whizzbuzz.
    .complete 95123,1 --A Blast Ye Scurvy Dogs!
step
    .goto 2548,79.45,52.71
    >>Talk to |cRXP_FRIENDLY_Wharfmaster Whizzbuzz|r
    .turnin 95123 >>Turn in A Blast Ye Scurvy Dogs!
    .accept 95165 >>Accept See Ya, Scallywags!
    .target Wharfmaster Whizzbuzz
step
    .goto 2548,79.45,52.71
    >>Talk to |cRXP_FRIENDLY_Wharfmaster Whizzbuzz|r
    .turnin 95165 >>Turn in See Ya, Scallywags!
    .target Wharfmaster Whizzbuzz
step
    .goto 2548,61.64,58.82
    >>Talk to |cRXP_FRIENDLY_Picked Carcass|r
    .accept 95983 >>Accept A Feast for Buzzards
    .target Picked Carcass
step
    .goto 2548,59.53,59.22
    >>Collect |cRXP_LOOT_[Marsh Gas Vial]|r from |cRXP_PICK_Marsh Gas Vent|r
    *Gather 5 Marsh Gas Vials for Sleebo Fizzlespout.
    .complete 96063,1 --Gaseous Gold
step
    .goto 2548,59.53,63.97
    >>Talk to |cRXP_FRIENDLY_Watcher Cornelius|r
    .turnin 95983 >>Turn in A Feast for Buzzards
    .accept 94924 >>Accept Hunting the Hunters
    .target Watcher Cornelius
step
    .goto 2548,56.44,57.36
    >>Kill |cRXP_ENEMY_Rog'mar Poacher|r
    *Kill 12 Rog'mar Poachers for Watcher Cornelius.
    .complete 94924,1 --Hunting the Hunters
    .mob Rog'mar Poacher
step
    .goto 2548,59.53,63.97
    >>Talk to |cRXP_FRIENDLY_Watcher Cornelius|r
    .turnin 94924 >>Turn in Hunting the Hunters
    .accept 95064 >>Accept Preventative Measures
    .target Watcher Cornelius
step
    .goto 2548,54.89,73
    >>Talk to |cRXP_FRIENDLY_Benjy Wheeler|r
    .turnin 94614 >>Turn in Freshwater Fiends
    .turnin 94617 >>Turn in Coyote Huntin'
    .target Benjy Wheeler
step
    .goto 2548,59.53,63.97
    >>Talk to |cRXP_FRIENDLY_Watcher Cornelius|r
    .accept 95426 >>Accept Rog'mar Supplies
    .accept 94925 >>Accept A Fur Trade
    .target Watcher Cornelius
step
    .goto 2548,58.13,53.22
    >>Collect |cRXP_LOOT_[Prized Lion Hide]|r from |cRXP_ENEMY_Wildplains Patriarch|r, |cRXP_ENEMY_Wildplains Huntress|r
    *Bring 8 Prized Lion Hides to Watcher Terral.
    .complete 94925,1 --A Fur Trade
    .mob Wildplains Patriarch
    .mob Wildplains Huntress
step
    .goto 2548,59.53,63.97
    >>Talk to |cRXP_FRIENDLY_Watcher Cornelius|r
    .turnin 94925 >>Turn in A Fur Trade
    .accept 96125 >>Accept In Need of Relief
    .target Watcher Cornelius
step
    .goto 2548,69.29,70.13
    >>Collect |cRXP_LOOT_[Mudfin Murloc Head]|r from |cRXP_ENEMY_Murloc Tideskimmer|r, |cRXP_ENEMY_Mudfin Oracle|r, |cRXP_ENEMY_Mudfin Warrior|r. Collect |cRXP_LOOT_[Rot-Covered Harpoon]|r from |cRXP_ENEMY_Old Rot-Chum|r. Kill |cRXP_ENEMY_Murloc Warrior|r. Kill |cRXP_ENEMY_Murloc Oracle|r. Collect |cRXP_LOOT_[Saltwater Murloc Eye]|r from |cRXP_ENEMY_Murloc Oracle|r, |cRXP_ENEMY_Murloc Tideskimmer|r, |cRXP_ENEMY_Murloc Warrior|r
    *Gather 4 Jumbo Crawfish Shells, 4 pieces of Fresh Manure, and 8 Mudfin Murloc Heads for Halligan Turner.
    *Bring proof of Old Rot-Chum's demise to Wharfmaster Whizzbuzz.
    *Kill 8 Murloc Oracles and 8 Murloc Warriors along the Eastwind Shore.
    *Gather 12 Murloc Eyes and 6 pieces of Sand Crawler Meat for Fimbo Greasemitz.
    .complete 94842,3 --Unsavory Plant Food
    .complete 95120,1 --WANTED: Old Rot-Chum
    .complete 95118,1 --Saltwater Savages
    .complete 95118,2 --Saltwater Savages
    .complete 95121,1 --A Taste of the Sea
    .mob Murloc Tideskimmer
    .mob Mudfin Oracle
    .mob Old Rot-Chum
    .mob Murloc Warrior
    .mob Murloc Oracle
step
    .goto 2548,66.67,81.01
    >>Talk to |cRXP_FRIENDLY_Demar Brant|r
    .turnin 94877 >>Turn in Saving Sunnyglade
    .turnin 94885 >>Turn in Field Marshal's Log
    .target Demar Brant
step
    .goto 2548,66.75,81.1
    >>Talk to |cRXP_FRIENDLY_Ashe Amberhall|r
    .turnin 94879 >>Turn in Scraps of Knowledge
    .turnin 94881 >>Turn in Curious Trinkets
    .turnin 94884 >>Turn in An Unsettling Discovery
    .target Ashe Amberhall
step
    .goto 2548,66.15,79.62
    >>Talk to |cRXP_FRIENDLY_Ember Bladewhisper|r
    .turnin 95912 >>Turn in WANTED: Blademaster Kaijo
    .turnin 95156 >>Turn in Stuff 'Em and Stick 'Em
    .target Ember Bladewhisper
step
    .goto 2548,65.55,78.97
    >>Talk to |cRXP_FRIENDLY_Brother Lowley|r
    .accept 96081 >>Accept Wound Dressings
    .target Brother Lowley
step
    .goto 2548,66.67,81.01
    >>Talk to |cRXP_FRIENDLY_Demar Brant|r
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
    .goto 2548,59.53,63.97
    >>Talk to |cRXP_FRIENDLY_Watcher Cornelius|r
    .accept 94928 >>Accept A Few Furs for Friz
    .accept 95984 >>Accept Song of the Strider
    .target Watcher Cornelius
step
    .goto 2548,56.72,58.99
    >>Collect |cRXP_LOOT_[Intact Tallstrider Beak]|r from |cRXP_ENEMY_Roving Tallstrider|r
    *Bring an Intact Tallstrider Beak to Watcher Cornelius at Terral's Watch.
    .complete 95984,1 --Song of the Strider
    .mob Roving Tallstrider
step
    .goto 2548,59.53,63.97
    >>Talk to |cRXP_FRIENDLY_Watcher Cornelius|r
    .turnin 95984 >>Turn in Song of the Strider
    .accept 95986 >>Accept King of the Wild Plains
    .target Watcher Cornelius
step
    .goto 2548,58.81,51.93
    >>Collect |cRXP_LOOT_[Ombassa's Hide]|r from |cRXP_ENEMY_Ombassa|r
    *Use the Tallstrider Call to call forth the leader of the lion pride. Slay the beast and retrieve its hide for Watcher Cornelius at Terral's Watch.
    .complete 95986,1 --King of the Wild Plains
    .mob Ombassa
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
    .goto 2548,79.45,52.71
    >>Talk to |cRXP_FRIENDLY_Wharfmaster Whizzbuzz|r
    .turnin 95120 >>Turn in WANTED: Old Rot-Chum
    .turnin 95118 >>Turn in Saltwater Savages
    .target Wharfmaster Whizzbuzz
step
    .goto 2548,79.02,54.2
    >>Talk to |cRXP_FRIENDLY_Fimbo Greasemitz|r
    .turnin 95121 >>Turn in A Taste of the Sea
    .target Fimbo Greasemitz
step
    .goto 2548,78.85,54.23
    >>Talk to |cRXP_FRIENDLY_Gray Dawnbright|r
    .turnin 95961 >>Turn in Stepped Out
    .target Gray Dawnbright
step
    .goto 2548,77.1,52.9
    >>Talk to |cRXP_FRIENDLY_Friz Frazzlespark|r
    .turnin 94928 >>Turn in A Few Furs for Friz
    .target Friz Frazzlespark
step
    .goto 2548,78.77,53.98
    >>Talk to |cRXP_FRIENDLY_Innkeeper Zizplink|r
    .accept 95988 >>Accept Goes Down Smooth
    .target Innkeeper Zizplink
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
    .goto 2548,59.53,63.97
    >>Talk to |cRXP_FRIENDLY_Watcher Cornelius|r
    .turnin 95986 >>Turn in King of the Wild Plains
    .target Watcher Cornelius
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
    .goto 2548,37.47,61.26
    >>Collect |cRXP_LOOT_[Wood Bundle]|r from |cRXP_PICK_Bundle of Wood|r
    *Collect 10 Wood Bundles from Turner's Logging Camp for Bertrand Ironbrow in Farholde Keep.
    .complete 96009,1 --High Stakes
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
    .goto 2548,57.29,36.99
    >>Kill |cRXP_ENEMY_Rog'mar Trainee|r. Collect |cRXP_LOOT_[Rog'mar Supply Crate]|r from |cRXP_PICK_Rog'mar Supply Crate|r
    *Kill 12 Rog'mar Trainees for Watcher Cornelius at Terral's Watch.
    *Retrieve 8 Horde Supply Shipment from the training camps north of Rog'mar.
    .complete 95064,1 --Preventative Measures
    .complete 95426,1 --Rog'mar Supplies
    .mob Rog'mar Trainee
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
    .goto 2548,59.53,63.97
    >>Talk to |cRXP_FRIENDLY_Watcher Cornelius|r
    .turnin 95064 >>Turn in Preventative Measures
    .turnin 95426 >>Turn in Rog'mar Supplies
    .turnin 94927 >>Turn in Dunston Checks Out
    .accept 95066 >>Accept The Rog'mar Situation
    .target Watcher Cornelius
step
    .goto 2548,63.39,80.64
    >>Talk to |cRXP_FRIENDLY_Bertrand Ironbrow|r
    .turnin 96009 >>Turn in High Stakes
    .target Bertrand Ironbrow
step
    .goto 2548,63.85,82.24
    >>Talk to |cRXP_FRIENDLY_Tessa Dawnbright|r
    .turnin 95975 >>Turn in Her World
    .target Tessa Dawnbright
step
    .goto 2548,66.75,81.1
    >>Talk to |cRXP_FRIENDLY_Ashe Amberhall|r
    .turnin 94907 >>Turn in A Small Favor
    .target Ashe Amberhall
step
    .goto 2548,66.67,81.01
    >>Talk to |cRXP_FRIENDLY_Demar Brant|r
    .turnin 95066 >>Turn in The Rog'mar Situation
    .target Demar Brant
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
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 40-49
#name 40-42 Feralas
#displayname 40-42 Feralas
#next 42-42 Tanaris
step
    .zone 1444 >>Travel to Feralas
    *How: Fly to Feathermoon Stronghold (or Thalanaar).
    *Level for this part: 40-42. 26 quests, roughly 2 h 10 min.
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
    .goto 1444,30.38,46.17
    >>Talk to |cRXP_FRIENDLY_Latronicus Moonspear|r
    .accept 4124 >>Accept The Missing Courier
    .target Latronicus Moonspear
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
    .goto 1444,31.86,45.13
    >>Talk to |cRXP_FRIENDLY_Ginro Hearthkindle|r
    .turnin 4130 >>Turn in Psychometric Reading
    .accept 4131 >>Accept The Woodpaw Gnolls
    .target Ginro Hearthkindle
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
    .goto 1444,74.62,26.58
    >>Collect |cRXP_LOOT_[Staff of Ohk'zi]|r from |cRXP_ENEMY_Ohk'zi|r
    *Bring the Staff of Ohk'zi to Latronicus Moonspear at Feathermoon Stronghold.
    .complete 92858,1 --WANTED: Ohk'zi
    .mob Ohk'zi
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
    .target Agnar Beastamer
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 40-49
#name 42-42 Tanaris
#displayname 42-42 Tanaris
#next 42-43 Dustwallow Marsh
step
    .zone 1446 >>Travel to Tanaris
    *How: From Powderfuse Port (Riverglades) take the goblin boat to Steamwheedle Port, then ride to Gadgetzan. From Kalimdor: fly to Gadgetzan.
    *Level for this part: 42-42. 17 quests, roughly 1 h 40 min.
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
    .goto 1446,66.56,22.27
    >>Talk to |cRXP_FRIENDLY_Haughty Modiste|r
    .accept 8365 >>Accept Pirate Hats Ahoy!
    .target Haughty Modiste
step
    .goto 1446,67.06,23.89
    >>Talk to |cRXP_FRIENDLY_Security Chief Bilgewhizzle|r
    .accept 97530 >>Accept Dunemaul Dues
    .target Security Chief Bilgewhizzle
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
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 40-49
#name 42-43 Dustwallow Marsh
#displayname 42-43 Dustwallow Marsh
#next 43-44 Stranglethorn Vale
step
    .zone 1445 >>Travel to Dustwallow Marsh
    *How: Fly to Theramore.
    *Level for this part: 42-43. 17 quests, roughly 50 min.
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
    .goto 1445,55.44,25.92
    >>Click the |cRXP_PICK_Loose Dirt|r
    .accept 1219 >>Accept The Orc Report
step
    .goto 1445,46.88,17.52
    >>Talk to |cRXP_FRIENDLY_"Stinky" Ignatz|r
    .accept 1222 >>Accept Stinky's Escape
    .target "Stinky" Ignatz
step
    .goto 1445,35.15,38.26
    >>Talk to |cRXP_FRIENDLY_Mudcrush Durtfeet|r
    .accept 1177 >>Accept Hungry!
    .target Mudcrush Durtfeet
step
    .goto 1445,29.7,47.64
    >>Click the |cRXP_PICK_Suspicious Hoofprint|r
    .accept 1284 >>Accept Suspicious Hoofprints
step
    .goto 1445,29.83,48.24
    >>Click the |cRXP_PICK_Theramore Guard Badge|r
    .accept 1252 >>Accept Lieutenant Paval Reethe
step
    .goto 1445,29.63,48.62
    >>Click the |cRXP_PICK_Black Shield|r
    .accept 1253 >>Accept The Black Shield
step
    .goto 1445,41.01,75.73
    >>Talk to |cRXP_FRIENDLY_Drazzit Dripvalve|r
    .accept 98205 >>Accept Whelps are the Worst!
    .accept 98215 >>Accept Dragon Scales, Post Burnt Tails
    .target Drazzit Dripvalve
step
    .goto 1445,40.97,75.68
    >>Talk to |cRXP_FRIENDLY_Gizzix Grimegurgle|r
    .accept 98231 >>Accept Active Ingredient
    .target Gizzix Grimegurgle
step
    .goto 1445,47.22,74.47
    >>Kill |cRXP_ENEMY_Searing Hatchling|r. Kill |cRXP_ENEMY_Searing Whelp|r. Collect |cRXP_LOOT_[Shed Dark Dragonscale]|r from |cRXP_ENEMY_Searing Hatchling|r, |cRXP_ENEMY_Searing Whelp|r, |cRXP_ENEMY_Firemane Scout|r. Collect |cRXP_LOOT_[Wyrmtail]|r from |cRXP_PICK_Wyrmtail|r
    *Slay 8 Searing Hatchlings and 8 Searing Whelps.
    *Bring 20 Shed Dark Dragonscales to Drazzit Dripvalve.
    *Bring 10 Wyrmtail to Gizzix Grimegurgle.
    .complete 98205,1 --Whelps are the Worst!
    .complete 98205,2 --Whelps are the Worst!
    .complete 98215,1 --Dragon Scales, Post Burnt Tails
    .complete 98231,1 --Active Ingredient
    .mob Searing Hatchling
    .mob Searing Whelp
step
    .goto 1445,41.01,75.73
    >>Talk to |cRXP_FRIENDLY_Drazzit Dripvalve|r
    .turnin 98205 >>Turn in Whelps are the Worst!
    .turnin 98215 >>Turn in Dragon Scales, Post Burnt Tails
    .target Drazzit Dripvalve
step
    .goto 1445,40.97,75.68
    >>Talk to |cRXP_FRIENDLY_Gizzix Grimegurgle|r
    .turnin 98231 >>Turn in Active Ingredient
    .target Gizzix Grimegurgle
step
    .goto 1445,69.22,49.85
    >>Talk to |cRXP_FRIENDLY_Theramore Lieutenant|r
    .turnin 1219 >>Turn in The Orc Report
    .target Theramore Lieutenant
step
    .goto 1445,68.21,48.62
    >>Talk to |cRXP_FRIENDLY_Captain Garran Vimes|r
    .turnin 1284 >>Turn in Suspicious Hoofprints
    .turnin 1252 >>Turn in Lieutenant Paval Reethe
    .turnin 1253 >>Turn in The Black Shield
    .target Captain Garran Vimes
step
    .goto 1445,69.22,49.85
    >>Talk to |cRXP_FRIENDLY_Theramore Lieutenant|r
    .accept 1220 >>Accept Captain Vimes
    .target Theramore Lieutenant
step
    .goto 1445,68.21,48.62
    >>Talk to |cRXP_FRIENDLY_Captain Garran Vimes|r
    .accept 1319 >>Accept The Black Shield
    .accept 1259 >>Accept Lieutenant Paval Reethe
    .target Captain Garran Vimes
step
    .goto 1445,68.21,48.62
    >>Talk to |cRXP_FRIENDLY_Captain Garran Vimes|r
    .turnin 1220 >>Turn in Captain Vimes
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
    .goto 1445,66.34,45.47
    >>Talk to |cRXP_FRIENDLY_Morgan Stern|r
    .turnin 1222 >>Turn in Stinky's Escape
    .target Morgan Stern
step
    .goto 1445,64.75,50.43
    >>Talk to |cRXP_FRIENDLY_Caz Twosprocket|r
    .turnin 1319 >>Turn in The Black Shield
    .accept 1320 >>Accept The Black Shield
    .target Caz Twosprocket
step
    .goto 1445,68.21,48.62
    >>Talk to |cRXP_FRIENDLY_Captain Garran Vimes|r
    .turnin 1320 >>Turn in The Black Shield
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
step
    .goto 1445,57.96,11.2
    >>Collect |cRXP_LOOT_[Mirefin Head]|r from |cRXP_ENEMY_Mirefin Puddlejumper|r, |cRXP_ENEMY_Mirefin Murloc|r, |cRXP_ENEMY_Mirefin Warrior|r
    *Mudcrush Durtfeet in northern Dustwallow wants 8 Mirefin Heads.
    .complete 1177,1 --Hungry!
    .mob Mirefin Puddlejumper
    .mob Mirefin Murloc
step
    .goto 1445,35.15,38.26
    >>Talk to |cRXP_FRIENDLY_Mudcrush Durtfeet|r
    .turnin 1177 >>Turn in Hungry!
    .target Mudcrush Durtfeet
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 40-49
#name 43-44 Stranglethorn Vale
#displayname 43-44 Stranglethorn Vale
#next 44-44 Searing Gorge
step
    .zone 1434 >>Travel to Stranglethorn Vale
    *How: In Kalimdor? Boat Theramore -> Menethil Harbor first. Then fly to Rebel Camp or Booty Bay.
    *Level for this part: 43-44. 13 quests, roughly 1 h 25 min.
step
    .goto 1434,27.28,77.53
    >>Talk to |cRXP_FRIENDLY_Catelyn the Blade|r
    .accept 611 >>Accept The Curse of the Tides
    .target Catelyn the Blade
step
    .goto 1434,26.76,76.38
    >>Talk to |cRXP_FRIENDLY_Privateer Bloads|r
    .accept 617 >>Accept Akiris by the Bundle
    .target Privateer Bloads
step
    .goto 1434,27.12,77.21
    >>Talk to |cRXP_FRIENDLY_Crank Fizzlebub|r
    .accept 621 >>Accept Zanzil's Secret
    .accept 600 >>Accept Venture Company Mining
    .target Crank Fizzlebub
step
    .goto 1434,27,77.13
    >>Talk to |cRXP_FRIENDLY_Kebok|r
    .accept 209 >>Accept Skullsplitter Tusks
    .target Kebok
step
    .goto 1434,27.61,76.74
    >>Talk to |cRXP_FRIENDLY_Fin Fizracket|r
    .accept 348 >>Accept Stranglethorn Fever
    .target Fin Fizracket
step
    .goto 1434,27.78,77.07
    >>Talk to |cRXP_FRIENDLY_"Sea Wolf" MacKinley|r
    .accept 606 >>Accept Scaring Shaky
    .target "Sea Wolf" MacKinley
step
    >>Collect |cRXP_LOOT_[Heart of Mokk]|r from |cRXP_ENEMY_Mokk the Savage|r
    *Seek out Witch Doctor Unbagwa and have him summon Mokk the Savage. Bring the Heart of Mokk to Fin Fizracket.
    .complete 348,1 --Stranglethorn Fever
    .mob Mokk the Savage
step
    .goto 1434,27.61,76.74
    >>Talk to |cRXP_FRIENDLY_Fin Fizracket|r
    .turnin 348 >>Turn in Stranglethorn Fever
    .target Fin Fizracket
step
    .goto 1434,26.69,73.61
    >>Talk to |cRXP_FRIENDLY_Captain Hecklebury Smotts|r
    .accept 8551 >>Accept The Captain's Chest
    .target Captain Hecklebury Smotts
step
    .goto 1434,26.35,73.56
    >>Talk to |cRXP_FRIENDLY_Wharfmaster Lozgil|r
    .accept 97332 >>Accept Twice Misplaced Trust
    .target Wharfmaster Lozgil
step
    .goto 1434,37,77.24
    >>Loot |cRXP_LOOT_[Carefully Folded Note]|r, then click it to start the quest
    .accept 594 >>Accept Message in a Bottle
    .use 4098
step
    .goto 1434,38.53,80.58
    >>Talk to |cRXP_FRIENDLY_Princess Poobah|r
    .turnin 594 >>Turn in Message in a Bottle
    .target Princess Poobah
step
    .goto 1434,36.95,69.73
    >>Collect |cRXP_LOOT_[Mistvale Giblets]|r from |cRXP_ENEMY_Elder Mistvale Gorilla|r. Collect |cRXP_LOOT_[Smotts' Chest]|r from |cRXP_ENEMY_Gorlash|r
    *Bring 5 Mistvale Giblets to "Shaky" Phillipe in Booty Bay.
    *Bring Smotts' Chest to Hecklebury Smotts in Booty Bay.
    .complete 606,1 --Scaring Shaky
    .complete 8551,1 --The Captain's Chest
    .mob Elder Mistvale Gorilla
    .mob Gorlash
step
    .goto 1434,26.9,73.59
    >>Talk to |cRXP_FRIENDLY_"Shaky" Phillipe|r
    .turnin 606 >>Turn in Scaring Shaky
    .target "Shaky" Phillipe
step
    .goto 1434,26.69,73.61
    >>Talk to |cRXP_FRIENDLY_Captain Hecklebury Smotts|r
    .turnin 8551 >>Turn in The Captain's Chest
    .target Captain Hecklebury Smotts
step
    .goto 1434,26.9,73.59
    >>Talk to |cRXP_FRIENDLY_"Shaky" Phillipe|r
    .accept 607 >>Accept Return to MacKinley
    .target "Shaky" Phillipe
step
    .goto 1434,27.78,77.07
    >>Talk to |cRXP_FRIENDLY_"Sea Wolf" MacKinley|r
    .turnin 607 >>Turn in Return to MacKinley
    .target "Sea Wolf" MacKinley
step
    .goto 1434,29.19,88.6
    >>Loot |cRXP_LOOT_[Cortello's Riddle]|r, then click it to start the quest
    .accept 624 >>Accept Cortello's Riddle
    .use 4056
step
    .goto 1434,27.92,61.59
    >>Collect |cRXP_LOOT_[Akiris Reed]|r from |cRXP_ENEMY_Naga Explorer|r
    *Bring 10 Bundles of Akiris Reed to Privateer Bloads in Booty Bay.
    .complete 617,1 --Akiris by the Bundle
    .mob Naga Explorer
step
    .goto 1434,38.68,56.61
    >>Collect |cRXP_LOOT_[Zanzil's Mixture]|r from |cRXP_ENEMY_Zanzil Zombie|r, |cRXP_ENEMY_Zanzil Hunter|r, |cRXP_ENEMY_Zanzil Witch Doctor|r
    *Bring 12 samples of Zanzil's Mixture to Crank Fizzlebub in Booty Bay.
    .complete 621,1 --Zanzil's Secret
    .mob Zanzil Zombie
    .mob Zanzil Hunter
step
    .goto 1434,41.67,43.91
    >>Collect |cRXP_LOOT_[Singing Blue Crystal]|r from |cRXP_ENEMY_Venture Co. Strip Miner|r, |cRXP_ENEMY_Venture Co. Foreman|r, |cRXP_ENEMY_Venture Co. Surveyor|r. Collect |cRXP_LOOT_[Skullsplitter Tusk]|r from |cRXP_ENEMY_Skullsplitter Warrior|r, |cRXP_ENEMY_Skullsplitter Hunter|r, |cRXP_ENEMY_Skullsplitter Witch Doctor|r
    *Bring 10 Singing Blue Crystals to Crank Fizzlebub in Booty Bay.
    *Acquire 18 Skullsplitter Tusks and return them to Kebok.
    .complete 600,1 --Venture Company Mining
    .complete 209,1 --Skullsplitter Tusks
    .mob Venture Co. Strip Miner
    .mob Venture Co. Foreman
    .mob Skullsplitter Warrior
    .mob Skullsplitter Hunter
step
    .goto 1434,22.74,24.1
    >>Collect |cRXP_LOOT_[Stone of the Tides]|r from |cRXP_ENEMY_Gazban|r
    *Destroy the Altar of the Tides with Catelyn's Blade, kill Gazban and bring the Stone of the Tides and Catelyn's Blade back to Baron Revilgaz.
    .complete 611,1 --The Curse of the Tides
    .mob Gazban
step
    .goto 1434,27.23,76.87
    >>Talk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .turnin 611 >>Turn in The Curse of the Tides
    .target Baron Revilgaz
step
    .goto 1434,26.76,76.38
    >>Talk to |cRXP_FRIENDLY_Privateer Bloads|r
    .turnin 617 >>Turn in Akiris by the Bundle
    .target Privateer Bloads
step
    .goto 1434,27.12,77.21
    >>Talk to |cRXP_FRIENDLY_Crank Fizzlebub|r
    .turnin 621 >>Turn in Zanzil's Secret
    .turnin 600 >>Turn in Venture Company Mining
    .target Crank Fizzlebub
step
    .goto 1434,27,77.13
    >>Talk to |cRXP_FRIENDLY_Kebok|r
    .turnin 209 >>Turn in Skullsplitter Tusks
    .target Kebok
step
    .goto 2548,79.45,52.71
    >>Talk to |cRXP_FRIENDLY_Wharfmaster Whizzbuzz|r
    .turnin 97332 >>Turn in Twice Misplaced Trust
    .target Wharfmaster Whizzbuzz
step
    .goto 1435,22.87,48.19
    >>Click the |cRXP_PICK_A Soggy Scroll|r
    .turnin 624 >>Turn in Cortello's Riddle
    .accept 625 >>Accept Cortello's Riddle
step
    .goto 1445,31.1,66.14
    >>Click the |cRXP_PICK_Musty Scroll|r
    .turnin 625 >>Turn in Cortello's Riddle
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 40-49
#name 44-44 Searing Gorge
#displayname 44-44 Searing Gorge
#next 44-45 Grind to 45
step
    .zone 1427 >>Travel to Searing Gorge
    *How: Fly to Thorium Point.
    *Level for this part: 44-44. 11 quests, roughly 1 h.
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
    >>Kill |cRXP_ENEMY_Heavy War Golem|r. Collect |cRXP_LOOT_[Golem Oil]|r from |cRXP_ENEMY_Tempered War Golem|r, |cRXP_ENEMY_Heavy War Golem|r, |cRXP_ENEMY_Magma Elemental|r
    *Hansel Heavyhands wants you to kill 20 Heavy War Golems.
    *Collect 4 Hearts of Flame and 4 globes of Golem Oil and return the items to Kalaran Windblade.
    .complete 7723,1 --Curse These Fat Fingers
    .complete 3442,2 --The Flawless Flame
    .mob Heavy War Golem
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
    >>Collect |cRXP_LOOT_[Heart of Flame]|r from |cRXP_ENEMY_Blazing Elemental|r, |cRXP_ENEMY_Inferno Elemental|r, |cRXP_ENEMY_Magma Elemental|r
    *Collect 4 Hearts of Flame and 4 globes of Golem Oil and return the items to Kalaran Windblade.
    .complete 3442,1 --The Flawless Flame
    .mob Blazing Elemental
    .mob Inferno Elemental
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
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 40-49
#name 44-45 Grind to 45
#displayname 44-45 Grind to 45
#next 45-45 Un'Goro Crater
step
    +|cRXP_WARN_Grind to 45.|r Not enough quests worth the time are left at your level. Kill mobs at your level around Searing Gorge (or run a dungeon with a group), roughly 1 h 50 min. Rested XP doubles kill XP: log out in an inn. Click to skip.
step
    .xp 45 >>Grind to level 45
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 40-49
#name 45-45 Un'Goro Crater
#displayname 45-45 Un'Goro Crater
#next 45-46 Feralas
step
    .zone 1449 >>Travel to Un'Goro Crater
    *How: Fly to Marshal's Refuge.
    *Level for this part: 45-45. 15 quests, roughly 1 h 40 min.
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
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 40-49
#name 45-46 Feralas
#displayname 45-46 Feralas
#next 46-47 Maraudon
step
    .zone 1444 >>Travel to Feralas
    *How: Fly to Feathermoon Stronghold (or Thalanaar).
    *Level for this part: 45-46. 13 quests, roughly 1 h 35 min.
step
    .goto 1444,44.81,43.42
    >>Talk to |cRXP_FRIENDLY_Zorbin Fandazzle|r
    .accept 7003 >>Accept Zapped Giants
    .accept 7721 >>Accept Fuel for the Zapping
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
    .goto 1444,31.78,45.5
    >>Talk to |cRXP_FRIENDLY_Troyas Moonbreeze|r
    .accept 2939 >>Accept In Search of Knowledge
    .target Troyas Moonbreeze
step
    .goto 1444,30.63,42.71
    >>Talk to |cRXP_FRIENDLY_Pratt McGrubben|r
    .accept 7733 >>Accept Improved Quality
    .target Pratt McGrubben
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
    .goto 1444,30.63,42.71
    >>Talk to |cRXP_FRIENDLY_Pratt McGrubben|r
    .turnin 7733 >>Turn in Improved Quality
    .target Pratt McGrubben
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
    .accept 2879 >>Accept The Stave of Equinex
    .target Troyas Moonbreeze
step
    >>Collect |cRXP_LOOT_[Stave of Equinex]|r
    *Energize Troyas' Stave and find the Equinex Monolith.
    .complete 2879,1 --The Stave of Equinex
step
    .goto 1444,38.83,13.17
    >>Click the |cRXP_PICK_Equinex Monolith|r
    .turnin 2879 >>Turn in The Stave of Equinex
    .accept 2942 >>Accept The Morrow Stone
step
    >>Collect |cRXP_LOOT_[A Sparkling Stone]|r
    *Return the Sparkling Stone and the Stave of Equinex to Troyas Moonbreeze in Feathermoon Stronghold.
    .complete 2942,1 --The Morrow Stone
step
    .goto 1444,31.78,45.5
    >>Talk to |cRXP_FRIENDLY_Troyas Moonbreeze|r
    .turnin 2942 >>Turn in The Morrow Stone
    .target Troyas Moonbreeze
step
    .goto 1425,14.16,43.62
    >>Talk to |cRXP_FRIENDLY_Agnar Beastamer|r
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
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 40-49
#name 46-47 Maraudon
#displayname 46-47 Maraudon
#next 47-48 Azshara
step
    +|cRXP_WARN_Maraudon|r (levels 46-55). Pick up 8 dungeon quests solo (roughly 45 min with the hand-ins), then ONE run with a group (roughly 2 h 20 min). No group needed until the run step. Click to start.
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1443,62.2,39.63
    >>Talk to |cRXP_FRIENDLY_Willow|r
    .accept 7028 >>Accept Twisted Evils
    .target Willow
step
    .goto 1443,63.83,10.67
    >>Talk to |cRXP_FRIENDLY_Keeper Marandis|r
    .accept 7065 >>Accept Corruption of Earth and Seed
    .target Keeper Marandis
step
    .goto 1443,68.5,8.88
    >>Talk to |cRXP_FRIENDLY_Talendria|r
    .accept 7041 >>Accept Vyletongue Corruption
    .target Talendria
step
    .goto 1443,32.1,63.96
    >>Talk to |cRXP_FRIENDLY_Cavindra|r
    .accept 7044 >>Accept Legends of Maraudon
    .target Cavindra
step
    .goto 1443,50.42,86.65
    >>Talk to |cRXP_FRIENDLY_Centaur Pariah|r
    .accept 7067 >>Accept The Pariah's Instructions
    .target Centaur Pariah
step
    .goto 1445,66.42,49.26
    >>Talk to |cRXP_FRIENDLY_Archmage Tervosh|r
    .accept 7070 >>Accept Shadowshard Fragments
    .target Archmage Tervosh
step
    .goto 1443,28.38,54.4
    >>Collect |cRXP_LOOT_[Shadowshard Fragment]|r from |cRXP_ENEMY_Shadowshard Thunderer|r, |cRXP_ENEMY_Shadowshard Smasher|r
    *Collect 10 Shadowshard Fragments from Maraudon and return them to Archmage Tervosh in Theramore on the coast of Dustwallow Marsh.
    .complete 7070,1 --Shadowshard Fragments
    .mob Shadowshard Thunderer
    .mob Shadowshard Smasher
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in.|r
step
    .goto 1443,29.1,62.5
    >>Inside Maraudon: these quests start from a drop or an object in the dungeon
    .accept 7066 >>Accept Seed of Life
step
    .goto 1443,29.1,62.5
    >>Enter |cRXP_WARN_Maraudon|r with your group. Quest goals inside:
    *Twisted Evils: Collect 15 Theradric Crystal Carvings for Willow in Desolace.
    *Vyletongue Corruption: Fill the Coated Cerulean Vial at the orange crystal pool in Maraudon.
    *Legends of Maraudon: Recover the two parts of the Scepter of Celebras: the Celebrian Rod and the Celebrian Diamond.
    *Corruption of Earth and Seed: Slay Princess Theradras and return to Keeper Marandis at Nijel's Point in Desolace.
    *The Pariah's Instructions: Read the Pariah's Instructions. Afterwards, obtain the Amulet of Union from Maraudon and return it to the Centaur Pariah in southern Desolace.
    .complete 7028,1 --Twisted Evils
    .complete 7041,1 --Vyletongue Corruption
    .complete 7041,2 --Vyletongue Corruption
    .complete 7044,1 --Legends of Maraudon
    .complete 7044,2 --Legends of Maraudon
    .complete 7065,1 --Corruption of Earth and Seed
    .complete 7067,1 --The Pariah's Instructions
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1443,32.1,63.96
    >>Talk to |cRXP_FRIENDLY_Cavindra|r
    .turnin 7044 >>Turn in Legends of Maraudon
    .target Cavindra
step
    .goto 1443,50.42,86.65
    >>Talk to |cRXP_FRIENDLY_Centaur Pariah|r
    .turnin 7067 >>Turn in The Pariah's Instructions
    .target Centaur Pariah
step
    .goto 1443,62.2,39.63
    >>Talk to |cRXP_FRIENDLY_Willow|r
    .turnin 7028 >>Turn in Twisted Evils
    .target Willow
step
    .goto 1443,63.83,10.67
    >>Talk to |cRXP_FRIENDLY_Keeper Marandis|r
    .turnin 7065 >>Turn in Corruption of Earth and Seed
    .target Keeper Marandis
step
    .goto 1443,68.5,8.88
    >>Talk to |cRXP_FRIENDLY_Talendria|r
    .turnin 7041 >>Turn in Vyletongue Corruption
    .target Talendria
step
    .goto 1450,36.18,41.79
    >>Talk to |cRXP_FRIENDLY_Keeper Remulos|r
    .turnin 7066 >>Turn in Seed of Life
    .target Keeper Remulos
step
    .goto 1445,66.42,49.26
    >>Talk to |cRXP_FRIENDLY_Archmage Tervosh|r
    .turnin 7070 >>Turn in Shadowshard Fragments
    .target Archmage Tervosh
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in. (run 2)|r
step
    .goto 1443,29.1,62.5
    >>Inside Maraudon: these quests start from a drop or an object in the dungeon
    .accept 7046 >>Accept The Scepter of Celebras
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1443,29.1,62.5
    >>Inside Maraudon: these quests start from a drop or an object in the dungeon
    .turnin 7046 >>Turn in The Scepter of Celebras
step
    .goto 1443,29.1,62.5
    +Dungeon entrance: Maraudon. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 40-49
#name 47-48 Azshara
#displayname 47-48 Azshara
#next 48-49 Alcaz Prison pre-quests
step
    .zone 1447 >>Travel to Azshara
    *How: Fly to Talrendis Point.
    *Level for this part: 47-48. 19 quests, roughly 1 h 45 min.
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
    >>Kill |cRXP_ENEMY_Highborne Apparition|r. Kill |cRXP_ENEMY_Highborne Lichling|r
    *Destroy 6 Highborne Apparitions and 6 Highborne Lichlings before returning to Loh'atu in Azshara.
    .complete 5535,1 --Spiritual Unrest
    .complete 5535,2 --Spiritual Unrest
    .mob Highborne Apparition
    .mob Highborne Lichling
step
    .goto 1447,20.62,61.92
    >>Talk to |cRXP_FRIENDLY_Sentinel Keldara Sunblade|r
    .accept 88857 >>Accept Saving a Sentinel
    .target Sentinel Keldara Sunblade
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
    .accept 86925 >>Accept Toil and Trouble
    .accept 86926 >>Accept Felfire Burn, Cauldron Bubble
    .accept 86927 >>Accept Running Firewater
step
    .goto 1447,58.15,22.81
    >>Collect |cRXP_LOOT_[Kim'Jael's Compass]|r from |cRXP_PICK_Kim'jael's Equipment|r. Collect |cRXP_LOOT_[Kim'Jael's Scope]|r from |cRXP_PICK_Kim'jael's Equipment|r. Collect |cRXP_LOOT_[Kim'Jael's Stuffed Chicken]|r from |cRXP_PICK_Kim'jael's Equipment|r. Collect |cRXP_LOOT_[Kim'Jael's Wizzlegoober]|r from |cRXP_PICK_Kim'jael's Equipment|r. Collect |cRXP_LOOT_[Legashi Firewater Recipe]|r from |cRXP_ENEMY_Legashi Satyr|r, |cRXP_ENEMY_Legashi Rogue|r, |cRXP_ENEMY_Legashi Hellcaller|r. Collect |cRXP_LOOT_[Satyrweed]|r. Collect |cRXP_LOOT_[Fel Mote]|r from |cRXP_PICK_Fel Mote|r
    *Search the Thalassian Base Camp for Kim'jael's Compass, Scope, Stuffed Chicken and Wizzlegoober, then return them to him in Azshara.
    *Find a Legashi Firewater Recipe from satyr in the Legashi Encampment.
    *Bring 5 Satyrweed and a Fel Mote to the Legashi Cauldron in the Legashi Encampment.
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
    .accept 86777 >>Accept Master Feardred
    .target Korsa
step
    .goto 1447,60.57,23.96
    >>Collect |cRXP_LOOT_[Feardred's Amulet]|r from |cRXP_ENEMY_Master Feardred|r
    *Kill Master Feardred, and bring his amulet to Korsa.
    .complete 86777,1 --Master Feardred
    .mob Master Feardred
step
    .goto 1447,63.01,21.43
    >>Talk to |cRXP_FRIENDLY_Korsa|r
    .turnin 86777 >>Turn in Master Feardred
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
    .goto 1447,41.67,19.54
    >>Talk to |cRXP_FRIENDLY_Elder Bramblesnap|r
    .turnin 86927 >>Turn in Running Firewater
    .target Elder Bramblesnap
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
    .target Saria Fairmoon
step
    .goto 1447,53.45,21.82
    >>Talk to |cRXP_FRIENDLY_Kim'jael|r
    .turnin 5534 >>Turn in Kim'jael's "Missing" Equipment
    .target Kim'jael
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 40-49
#name 48-49 Alcaz Prison pre-quests
#displayname 48-49 Alcaz Prison pre-quests
#next 48-49 Alcaz Prison
step
    +|cRXP_WARN_Alcaz Prison: pre-quests|r. 2 quests, solo (no group needed), roughly 5 min. The run guide comes after this one. Click to start.
    *Pre-quests: Watch Yer Back, The Return of the King?
step
    .goto 1445,66.21,45.08
    >>Talk to |cRXP_FRIENDLY_Sully McCleary|r
    .accept 95196 >>Accept Watch Yer Back
    .target Sully McCleary
step
    .goto 1445,63.45,42.33
    >>Talk to |cRXP_FRIENDLY_Sully McCleary|r
    .turnin 95196 >>Turn in Watch Yer Back
    .accept 95198 >>Accept The Return of the King?
    .target Sully McCleary
step
    .goto 1445,63.45,42.33
    >>Talk to |cRXP_FRIENDLY_Sully McCleary|r
    .turnin 95198 >>Turn in The Return of the King?
    .target Sully McCleary
step
    +|cRXP_WARN_Pre-quests done.|r Next: Alcaz Prison itself. That guide tells you when to find a group. Click to continue.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 40-49
#name 48-49 Alcaz Prison
#displayname 48-49 Alcaz Prison
#next 49-50 Western/Eastern Plaguelands
step
    +|cRXP_WARN_Alcaz Prison|r (levels 48-53). Pick up 9 dungeon quests solo (roughly 1 h 20 min with the hand-ins), then ONE run with a group (roughly 2 h 20 min). No group needed until the run step. Click to start.
    *New Forever dungeon on Alcaz Island off Dustwallow Marsh. The portal is in the basement of the big central keep. Elite naga patrol the climb up.
    *Its 2 pre-quests are in the guide before this one. Skipped them? Some quests below won't be offered: skip those steps.
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1445,63.45,42.33
    >>Talk to |cRXP_FRIENDLY_Sully McCleary|r
    .accept 95262 >>Accept The Secret Prison
    .accept 96381 >>Accept A Bit of Wet Work
    .target Sully McCleary
step
    .goto 1453,78.31,70.74
    >>Talk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .accept 95194 >>Accept Our Man in Theramore
    .target Master Mathias Shaw
step
    .goto 1453,78.29,71.14
    >>Talk to |cRXP_FRIENDLY_Renzik "The Shiv"|r
    .accept 96377 >>Accept State Secrets
    .target Renzik "The Shiv"
step
    .goto 1434,28.51,75.77
    >>Talk to |cRXP_FRIENDLY_Rix Xizzix|r
    .accept 96379 >>Accept State Secrets
    .target Rix Xizzix
step
    .goto 1416,15.3,73.93
    >>Talk to |cRXP_FRIENDLY_Archmage Lan'dalock|r
    .accept 96772 >>Accept The Dragon's Journal
    .target Archmage Lan'dalock
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in.|r
step
    .goto 1445,75,15
    >>Inside Alcaz Prison: these quests start from a drop or an object in the dungeon
    .accept 96335 >>Accept The Man in the Iron Chains
step
    .goto 1445,75,15
    >>Enter |cRXP_WARN_Alcaz Prison|r with your group. Quest goals inside:
    *The Man in the Iron Chains: Recover the Alcaz Shackle Key from The Questioner in Alcaz Prison.
    *State Secrets
    *The Dragon's Journal: Recover Zarla's Journal from the depths of Alcaz Prison.
    .complete 96335,1 --The Man in the Iron Chains
    .complete 96377,1 --State Secrets
    .complete 96772,1 --The Dragon's Journal
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1445,75,15
    >>Inside Alcaz Prison: these quests start from a drop or an object in the dungeon
    .turnin 96335 >>Turn in The Man in the Iron Chains
step
    .goto 1445,63.45,42.33
    >>Talk to |cRXP_FRIENDLY_Sully McCleary|r
    .turnin 95262 >>Turn in The Secret Prison
    .turnin 96381 >>Turn in A Bit of Wet Work
    .target Sully McCleary
step
    .goto 1445,66.21,45.08
    >>Talk to |cRXP_FRIENDLY_Sully McCleary|r
    .turnin 95194 >>Turn in Our Man in Theramore
    .target Sully McCleary
step
    .goto 1453,78.29,71.14
    >>Talk to |cRXP_FRIENDLY_Renzik "The Shiv"|r
    .turnin 96377 >>Turn in State Secrets
    .target Renzik "The Shiv"
step
    .goto 1434,28.51,75.77
    >>Talk to |cRXP_FRIENDLY_Rix Xizzix|r
    .turnin 96379 >>Turn in State Secrets
    .target Rix Xizzix
step
    .goto 1416,15.3,73.93
    >>Talk to |cRXP_FRIENDLY_Archmage Lan'dalock|r
    .turnin 96772 >>Turn in The Dragon's Journal
    .target Archmage Lan'dalock
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in. (run 2)|r
step
    .goto 1445,75,15
    >>Inside Alcaz Prison: these quests start from a drop or an object in the dungeon
    .accept 95263 >>Accept Somber News
    .accept 96337 >>Accept More Valuable Than Gold
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1445,63.45,42.33
    >>Talk to |cRXP_FRIENDLY_Sully McCleary|r
    .turnin 95263 >>Turn in Somber News
    .target Sully McCleary
step
    .goto 1436,43.42,67.89
    >>Click the |cRXP_PICK_Connery's Trunk|r
    .turnin 96337 >>Turn in More Valuable Than Gold
step
    .goto 1445,75,15
    +Dungeon entrance: Alcaz Prison. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 40-49
#name 49-50 Western/Eastern Plaguelands
#displayname 49-50 Western/Eastern Plaguelands
#next 50-51 Felwood
step
    .zone 1422 >>Travel to Western
    *How: Fly to Chillwind Camp; later Light's Hope Chapel.
    *Level for this part: 49-50. 24 quests, roughly 2 h 20 min.
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
    .goto 1422,53.73,64.66
    >>Talk to |cRXP_FRIENDLY_Mulgris Deepriver|r
    .turnin 4984 >>Turn in The Wildlife Suffers Too
    .accept 4985 >>Accept The Wildlife Suffers Too
    .target Mulgris Deepriver
step
    .goto 1422,62.71,50.32
    >>Kill |cRXP_ENEMY_Diseased Grizzly|r
    *Destroy 8 Diseased Grizzlies, and then return to Mulgris Deepriver at the Writhing Haunt, Western Plaguelands.
    .complete 4985,1 --The Wildlife Suffers Too
    .mob Diseased Grizzly
step
    .goto 1422,53.73,64.66
    >>Talk to |cRXP_FRIENDLY_Mulgris Deepriver|r
    .turnin 4985 >>Turn in The Wildlife Suffers Too
    .accept 4986 >>Accept Glyphed Oaken Branch
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
    .accept 5241 >>Accept Uncle Carlin
    .accept 5152 >>Accept Auntie Marlene
    .target Pamela Redpath
step
    .goto 1423,69.93,53.72
    >>Talk to |cRXP_FRIENDLY_Caretaker Alen|r
    .accept 6021 >>Accept Zaeldarr the Outcast
    .target Caretaker Alen
step
    .goto 1423,71.7,50.04
    >>Talk to |cRXP_FRIENDLY_Carlin Redpath|r
    .turnin 5241 >>Turn in Uncle Carlin
    .accept 5211 >>Accept Defenders of Darrowshire
    .target Carlin Redpath
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
    .goto 1423,35.07,21.34
    >>Collect |cRXP_LOOT_[Plagueland Termites]|r from |cRXP_PICK_Large Termite Mound|r
    *Use the Empty Termite Jar on the Termite Mounds in Eastern Plaguelands. After you've gathered 100 Plagueland Termites, return to Nathaniel Dumah at Chillwind Camp in Western Plaguelands.
    .complete 5903,1 --A Plague Upon Thee
step
    .goto 1423,5.16,35.57
    >>Talk to |cRXP_FRIENDLY_Tirion Fordring|r
    .accept 5543 >>Accept Blood Tinged Skies
    .accept 5544 >>Accept Carrion Grubbage
    .target Tirion Fordring
step
    .goto 1423,14.73,62.93
    >>Kill |cRXP_ENEMY_Plaguebat|r
    *Slay 30 Plaguebats and return to Tirion Fordring.
    .complete 5543,1 --Blood Tinged Skies
    .mob Plaguebat
step
    .goto 1423,23.07,72.63
    >>Collect |cRXP_LOOT_[Zaeldarr's Head]|r from |cRXP_ENEMY_Zaeldarr the Outcast|r
    *Bring Zaeldarr's Head to Caretaker Alen at Light's Hope Chapel.
    .complete 6021,1 --Zaeldarr the Outcast
    .mob Zaeldarr the Outcast
step
    .goto 1423,5.16,35.57
    >>Talk to |cRXP_FRIENDLY_Tirion Fordring|r
    .turnin 5543 >>Turn in Blood Tinged Skies
    .target Tirion Fordring
step
    .goto 1423,55.96,25.56
    >>Collect |cRXP_LOOT_[Slab of Carrion Worm Meat]|r from |cRXP_ENEMY_Random Worm|r, |cRXP_ENEMY_Carrion Devourer|r
    *Seek out the Carrion Grubs and Devourers of the region. Slay them and harvest their meat. Return to Tirion Fordring when you have gathered 15 Slabs of Carrion Worm Meat.
    .complete 5544,1 --Carrion Grubbage
    .mob Random Worm
    .mob Carrion Devourer
step
    .goto 1423,69.93,53.72
    >>Talk to |cRXP_FRIENDLY_Caretaker Alen|r
    .turnin 6021 >>Turn in Zaeldarr the Outcast
    .target Caretaker Alen
step
    .goto 1423,5.16,35.57
    >>Talk to |cRXP_FRIENDLY_Tirion Fordring|r
    .turnin 5544 >>Turn in Carrion Grubbage
    .target Tirion Fordring
step
    .goto 1422,43.42,84.83
    >>Talk to |cRXP_FRIENDLY_Nathaniel Dumah|r
    .turnin 5903 >>Turn in A Plague Upon Thee
    .accept 5904 >>Accept A Plague Upon Thee
    .target Nathaniel Dumah
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
    .target Royal Factor Bathrilor
step
    .goto 1457,35.37,8.4
    >>Talk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .turnin 4986 >>Turn in Glyphed Oaken Branch
    .target Mathrengyl Bearwalker
step
    .goto 1423,71.7,50.04
    >>Talk to |cRXP_FRIENDLY_Carlin Redpath|r
    .turnin 5210 >>Turn in Brother Carlin
    .target Carlin Redpath
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 50-60
#name 50-51 Felwood
#displayname 50-51 Felwood
#next 51-52 Un'Goro Crater
step
    .zone 1448 >>Travel to Felwood
    *How: In the Eastern Kingdoms? Boat Stormwind Harbor -> Auberdine first. Then fly to Talonbranch Glade.
    *Level for this part: 50-51. 12 quests, roughly 1 h.
step
    #completewith next
    .goto 1448,62.49,24.24,15,0
    >>Talk to |cRXP_FRIENDLY_Mishellena|r if you don't have this flight path yet
    .fp Mishellena >>Get the flight path
    .target Mishellena
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
    .goto 1448,51.35,82.01
    >>Talk to |cRXP_FRIENDLY_Jessir Moonbow|r
    .accept 5204 >>Accept Retribution of the Light
    .target Jessir Moonbow
step
    .goto 1448,51.35,81.51
    >>Talk to |cRXP_FRIENDLY_Eridan Bluewind|r
    .accept 4441 >>Accept Felbound Ancients
    .target Eridan Bluewind
step
    .goto 1448,51.35,81.51
    >>Collect |cRXP_LOOT_[Putrescent Bear Organs]|r from |cRXP_ENEMY_Angerclaw Bear|r, |cRXP_ENEMY_Angerclaw Grizzly|r, |cRXP_ENEMY_Angerclaw Mauler|r. Collect |cRXP_LOOT_[Putrescent Wolf Organs]|r from |cRXP_ENEMY_Felpaw Wolf|r, |cRXP_ENEMY_Felpaw Scavenger|r, |cRXP_ENEMY_Felpaw Ravager|r. Collect |cRXP_LOOT_[Vial of Blessed Water]|r
    *Bring 8 Putrescent Bear Organs and 10 Putrescent Wolf Organs to Kelek Skykeeper.
    *Travel to Darnassus and use Eridan's Vial to collect a Vial of Blessed Water from the Temple of the Moon. Return to Eridan with the filled vial.
    .complete 86577,1 --A Sampling of Putrescence
    .complete 86577,2 --A Sampling of Putrescence
    .complete 4441,1 --Felbound Ancients
    .mob Angerclaw Bear
    .mob Angerclaw Grizzly
    .mob Felpaw Wolf
    .mob Felpaw Scavenger
step
    .goto 1448,51.14,81.75
    >>Talk to |cRXP_FRIENDLY_Kelek Skykeeper|r
    .turnin 86577 >>Turn in A Sampling of Putrescence
    .target Kelek Skykeeper
step
    .goto 1448,51.35,81.51
    >>Talk to |cRXP_FRIENDLY_Eridan Bluewind|r
    .turnin 4441 >>Turn in Felbound Ancients
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
    .goto 1448,38.3,50.51
    >>Kill |cRXP_ENEMY_Rakaiah|r
    *Return to Jaedenar and kill the succubus Rakaiah before finding the Remains of Trey Lightforge.
    .complete 5204,1 --Retribution of the Light
    .mob Rakaiah
step
    .goto 1448,38.5,50.41
    >>Talk to |cRXP_FRIENDLY_Remains of Trey Lightforge|r
    .turnin 5204 >>Turn in Retribution of the Light
    .accept 5385 >>Accept The Remains of Trey Lightforge
    .target Remains of Trey Lightforge
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
    .goto 1448,50.89,81.62
    >>Talk to |cRXP_FRIENDLY_Taronn Redfeather|r
    .turnin 5156 >>Turn in Verifying the Corruption
    .target Taronn Redfeather
step
    .goto 1448,51.35,82.01
    >>Talk to |cRXP_FRIENDLY_Jessir Moonbow|r
    .turnin 5385 >>Turn in The Remains of Trey Lightforge
    .target Jessir Moonbow
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
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 50-60
#name 51-52 Un'Goro Crater
#displayname 51-52 Un'Goro Crater
#next 52-55 Blackrock Depths pre-quests
step
    .zone 1449 >>Travel to Un'Goro Crater
    *How: Fly to Marshal's Refuge.
    *Level for this part: 51-52. 15 quests, roughly 1 h 35 min.
step
    .goto 1449,43.62,8.5
    >>Talk to |cRXP_FRIENDLY_Spraggle Frock|r
    .accept 4492 >>Accept Lost!
    .target Spraggle Frock
step
    .goto 1449,42.94,9.64
    >>Talk to |cRXP_FRIENDLY_Muigin|r
    .accept 4144 >>Accept Bloodpetal Sprouts
    .target Muigin
step
    .goto 1449,43.53,8.44
    >>Click the |cRXP_PICK_Beware of Pterrordax|r
    .accept 4501 >>Accept Beware of Pterrordax
step
    .goto 1449,46.38,13.44
    >>Talk to |cRXP_FRIENDLY_Karna Remtravel|r
    .accept 4243 >>Accept Chasing A-Me 01
    .target Karna Remtravel
step
    .goto 1449,41.92,2.7
    >>Talk to |cRXP_FRIENDLY_J.D. Collie|r
    .accept 3942 >>Accept Linken's Memory
    .target J.D. Collie
step
    .goto 1449,67.66,16.76
    >>Talk to |cRXP_FRIENDLY_A-Me 01|r
    .turnin 4243 >>Turn in Chasing A-Me 01
    .target A-Me 01
step
    .goto 1449,51.9,49.85
    >>Talk to |cRXP_FRIENDLY_Ringo|r
    .turnin 4492 >>Turn in Lost!
    .accept 4491 >>Accept A Little Help From My Friends
    .target Ringo
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
    .goto 1449,62.67,76.26
    >>Collect |cRXP_LOOT_[Bloodpetal Sprout]|r from |cRXP_ENEMY_Devilsaur|r, |cRXP_ENEMY_Ironhide Devilsaur|r, |cRXP_ENEMY_Tyrant Devilsaur|r
    .complete 4144,1 --Bloodpetal Sprouts
    .mob Devilsaur
    .mob Ironhide Devilsaur
step
    .goto 1449,71.64,75.96
    >>Talk to |cRXP_FRIENDLY_Torwa Pathfinder|r
    .accept 4290 >>Accept The Fare of Lar'korwi
    .accept 87492 >>Accept Uncanny Crystal
    .target Torwa Pathfinder
step
    .goto 1449,66.21,75.12
    >>Collect |cRXP_LOOT_[Damaged Blue Crystal]|r from |cRXP_PICK_Damaged Blue Crystal|r
    *Bring 1 Damaged Blue Crystal back to Torwa Pathfinder.
    .complete 87492,1 --Uncanny Crystal
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
    .goto 1449,42.94,9.64
    >>Talk to |cRXP_FRIENDLY_Muigin|r
    .turnin 4144 >>Turn in Bloodpetal Sprouts
    .target Muigin
step
    .goto 1449,43.62,8.5
    >>Talk to |cRXP_FRIENDLY_Spraggle Frock|r
    .turnin 4501 >>Turn in Beware of Pterrordax
    .turnin 4491 >>Turn in A Little Help From My Friends
    .target Spraggle Frock
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
    .goto 1452,31.27,45.16
    >>Talk to |cRXP_FRIENDLY_Donova Snowden|r
    .turnin 980 >>Turn in The New Springs
    .target Donova Snowden
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
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 50-60
#name 52-55 Blackrock Depths pre-quests
#displayname 52-55 Blackrock Depths pre-quests
#next 52-55 Blackrock Depths
step
    +|cRXP_WARN_Blackrock Depths: pre-quests|r. 21 quests, solo (no group needed), roughly 2 h 45 min. The run guide comes after this one. Click to start.
    *Pre-quests: The Flame's Casing, The Torch of Retribution, Squire Maltrake, Set Them Ablaze!, Trinkets..., The Smoldering Ruins of Thaurissan, A Taste of Flame, Dragonkin Menace, The True Masters...
step
    .goto 1428,85.82,68.95
    >>Talk to |cRXP_FRIENDLY_Helendis Riverhorn|r
    .accept 4182 >>Accept Dragonkin Menace
    .target Helendis Riverhorn
step
    .goto 1428,85.41,70.06
    >>Talk to |cRXP_FRIENDLY_Jalinda Sprig|r
    .accept 4262 >>Accept Overmaster Pyron
    .target Jalinda Sprig
step
    >>Kill |cRXP_ENEMY_Overmaster Pyron|r
    *Slay Overmaster Pyron and return to Jalinda Sprig.
    *|cRXP_WARN_Elite targets here. Group up or skip.|r
    .complete 4262,1 --Overmaster Pyron
    .mob Overmaster Pyron
step
    .goto 1428,85.41,70.06
    >>Talk to |cRXP_FRIENDLY_Jalinda Sprig|r
    .turnin 4262 >>Turn in Overmaster Pyron
    .target Jalinda Sprig
step
    .goto 1428,87.8,33.45
    >>Kill |cRXP_ENEMY_Black Broodling|r. Kill |cRXP_ENEMY_Black Dragonspawn|r. Kill |cRXP_ENEMY_Black Wyrmkin|r
    *Slay 15 Black Broodlings, 10 Black Dragonspawn, 4 Black Wyrmkin and 1 Black Drake. Return to Helendis Riverhorn when the task is complete.
    *|cRXP_WARN_Elite targets here. Group up or skip.|r
    .complete 4182,1 --Dragonkin Menace
    .complete 4182,2 --Dragonkin Menace
    .complete 4182,4 --Dragonkin Menace
    .mob Black Broodling
    .mob Black Dragonspawn
    .mob Black Wyrmkin
step
    .goto 1428,89.94,43.86
    >>Kill |cRXP_ENEMY_Black Drake|r
    *Slay 15 Black Broodlings, 10 Black Dragonspawn, 4 Black Wyrmkin and 1 Black Drake. Return to Helendis Riverhorn when the task is complete.
    *|cRXP_WARN_Elite targets here. Group up or skip.|r
    .complete 4182,3 --Dragonkin Menace
    .mob Black Drake
step
    .goto 1428,85.82,68.95
    >>Talk to |cRXP_FRIENDLY_Helendis Riverhorn|r
    .turnin 4182 >>Turn in Dragonkin Menace
    .accept 4183 >>Accept The True Masters
    .target Helendis Riverhorn
step
    .goto 1433,24.9,44.45
    >>Talk to |cRXP_FRIENDLY_Magistrate Solomon|r
    .turnin 4183 >>Turn in The True Masters
    .accept 4184 >>Accept The True Masters
    .target Magistrate Solomon
step
    .goto 1453,80.21,38.35
    >>Talk to |cRXP_FRIENDLY_Highlord Bolvar Fordragon|r
    .turnin 4184 >>Turn in The True Masters
    .accept 4185 >>Accept The True Masters
    .target Highlord Bolvar Fordragon
step
    .goto 1453,80.21,38.35
    >>Talk to |cRXP_FRIENDLY_Highlord Bolvar Fordragon|r
    .turnin 4185 >>Turn in The True Masters
    .accept 4186 >>Accept The True Masters
    .target Highlord Bolvar Fordragon
step
    .goto 1433,24.9,44.45
    >>Talk to |cRXP_FRIENDLY_Magistrate Solomon|r
    .turnin 4186 >>Turn in The True Masters
    .accept 4223 >>Accept The True Masters
    .target Magistrate Solomon
step
    .goto 1428,84.74,69.02
    >>Talk to |cRXP_FRIENDLY_Marshal Maxwell|r
    .turnin 4223 >>Turn in The True Masters
    .accept 4224 >>Accept The True Masters
    .target Marshal Maxwell
step
    .goto 1428,84.74,69.02
    >>Talk to |cRXP_FRIENDLY_Marshal Maxwell|r
    .turnin 4224 >>Turn in The True Masters
    .target Marshal Maxwell
step
    .goto 1455,43.53,52.64
    >>Talk to |cRXP_FRIENDLY_Deliana|r
    .accept 8929 >>Accept In Search of Anthion
    .target Deliana
step
    .goto 1455,38.37,55.31
    >>Talk to |cRXP_FRIENDLY_Royal Historian Archesonus|r
    .accept 3702 >>Accept The Smoldering Ruins of Thaurissan
    .target Royal Historian Archesonus
step
    .goto 1455,38.37,55.31
    >>Talk to |cRXP_FRIENDLY_Royal Historian Archesonus|r
    .turnin 3702 >>Turn in The Smoldering Ruins of Thaurissan
    .accept 3701 >>Accept The Smoldering Ruins of Thaurissan
    .target Royal Historian Archesonus
step
    .goto 1423,26.11,11.3
    >>Talk to |cRXP_FRIENDLY_Anthion Harmon|r
    .turnin 8929 >>Turn in In Search of Anthion
    .accept 8945 >>Accept Dead Man's Plea
    .accept 8947 >>Accept Anthion's Strange Request
    .target Anthion Harmon
step
    >>Kill |cRXP_ENEMY_Ysida Harmon|r. Collect |cRXP_LOOT_[Dark Iron Bar]|r. Collect |cRXP_LOOT_[Enchanted Leather]|r. Collect |cRXP_LOOT_[Mooncloth]|r. Collect |cRXP_LOOT_[Cured Rugged Hide]|r
    *Go into Stratholme and rescue Ysida Harmon from Baron Rivendare.
    *Bring 3 Dark Iron Bars, 20 Enchanted Leather, 3 Mooncloth and 4 Cured Rugged Hides to Anthion Harmon in the Eastern Plaguelands.
    .complete 8945,1 --Dead Man's Plea
    .complete 8947,1 --Anthion's Strange Request
    .complete 8947,2 --Anthion's Strange Request
    .complete 8947,3 --Anthion's Strange Request
    .complete 8947,4 --Anthion's Strange Request
    .mob Ysida Harmon
step
    .goto 1423,26.11,11.3
    >>Talk to |cRXP_FRIENDLY_Anthion Harmon|r
    .turnin 8945 >>Turn in Dead Man's Plea
    .turnin 8947 >>Turn in Anthion's Strange Request
    .accept 8948 >>Accept Anthion's Old Friend
    .target Anthion Harmon
step
    .goto 1423,26.11,11.3
    >>Talk to |cRXP_FRIENDLY_Anthion Harmon|r
    .turnin 8948 >>Turn in Anthion's Old Friend
    .target Anthion Harmon
step
    .goto 1427,39.06,38.99
    >>Talk to |cRXP_FRIENDLY_Kalaran Windblade|r
    .accept 3452 >>Accept The Flame's Casing
    .target Kalaran Windblade
step
    .goto 1427,19.65,38.6
    >>Collect |cRXP_LOOT_[Symbol of Ragnaros]|r from |cRXP_ENEMY_Twilight Dark Shaman|r, |cRXP_ENEMY_Twilight Fire Guard|r, |cRXP_ENEMY_Twilight Geomancer|r
    *Find and return a Symbol of Ragnaros to Kalaran Windblade.
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
    .goto 1428,95.09,31.56
    >>Talk to |cRXP_FRIENDLY_Cyrus Therepentous|r
    .accept 4022 >>Accept A Taste of Flame
    .target Cyrus Therepentous
step
    .goto 1428,62.71,39.6
    >>Click |cRXP_PICK_Thaurissan Relic|r
    *Venture to the Ruins of Thaurissan in the Burning Steppes and recover information from the Thaurissan Relics. Return to Royal Historian Archesonus when you have recovered the information.
    .complete 3701,1 --The Smoldering Ruins of Thaurissan
step
    .goto 1455,38.37,55.31
    >>Talk to |cRXP_FRIENDLY_Royal Historian Archesonus|r
    .turnin 3701 >>Turn in The Smoldering Ruins of Thaurissan
    .target Royal Historian Archesonus
step
    .goto 1427,42.99,36.43
    >>Collect |cRXP_LOOT_[Black Dragonflight Molt]|r from |cRXP_ENEMY_Dark Iron Taskmaster|r, |cRXP_ENEMY_Heavy War Golem|r, |cRXP_ENEMY_Frenzied Black Drake|r
    *Show Cyrus Therepentous the Black Dragonflight Molt you received from Kalaran Windblade.
    .complete 4022,1 --A Taste of Flame
    .mob Dark Iron Taskmaster
    .mob Heavy War Golem
step
    .goto 1428,95.09,31.56
    >>Talk to |cRXP_FRIENDLY_Cyrus Therepentous|r
    .turnin 4022 >>Turn in A Taste of Flame
    .target Cyrus Therepentous
step
    +|cRXP_WARN_Pre-quests done.|r Next: Blackrock Depths itself. That guide tells you when to find a group. Click to continue.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 50-60
#name 52-55 Blackrock Depths
#displayname 52-55 Blackrock Depths
#next 55-56 Dire Maul East pre-quests
step
    +|cRXP_WARN_Blackrock Depths|r (levels 52-60). Pick up 23 dungeon quests solo (roughly 2 h 55 min with the hand-ins), then ONE run with a group (roughly 5 h 20 min). No group needed until the run step. Click to start.
    *Its 21 pre-quests are in the guide before this one. Skipped them? Some quests below won't be offered: skip those steps.
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1428,95.09,31.56
    >>Talk to |cRXP_FRIENDLY_Cyrus Therepentous|r
    .accept 4024 >>Accept A Taste of Flame
    .target Cyrus Therepentous
step
    .goto 1428,65.15,23.91
    >>Talk to |cRXP_FRIENDLY_Maxwort Uberglint|r
    .accept 4123 >>Accept The Heart of the Mountain
    .target Maxwort Uberglint
step
    .goto 1428,84.56,68.68
    >>Talk to |cRXP_FRIENDLY_Oralius|r
    .accept 4286 >>Accept The Good Stuff
    .target Oralius
step
    .goto 1428,84.74,69.02
    >>Talk to |cRXP_FRIENDLY_Marshal Maxwell|r
    .accept 4241 >>Accept Marshal Windsor
    .target Marshal Maxwell
step
    .goto 1428,85.41,70.06
    >>Talk to |cRXP_FRIENDLY_Jalinda Sprig|r
    .accept 4263 >>Accept Incendius!
    .target Jalinda Sprig
step
    .goto 1419,63.63,20.63
    >>Talk to |cRXP_FRIENDLY_Enohar Thunderbrew|r
    .accept 4128 >>Accept Ragnar Thunderbrew
    .target Enohar Thunderbrew
step
    .goto 1446,67.04,24.01
    >>Talk to |cRXP_FRIENDLY_Yorba Screwspigot|r
    .accept 4324 >>Accept Yuka Screwspigot
    .target Yorba Screwspigot
step
    .goto 1455,39.09,56.2
    >>Talk to |cRXP_FRIENDLY_King Magni Bronzebeard|r
    .accept 4341 >>Accept Kharan Mighthammer
    .target King Magni Bronzebeard
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in.|r
step
    .goto 1427,34.8,85.3
    >>Inside Blackrock Depths: these quests start from a drop or an object in the dungeon
    .accept 3801 >>Accept Dark Iron Legacy
    .accept 4083 >>Accept The Spectral Chalice
    .accept 4201 >>Accept The Love Potion
    .accept 4342 >>Accept Kharan's Tale
    .accept 9015 >>Accept The Challenge
    .accept 82062 >>Accept Ever After
step
    .goto 1427,34.8,85.3
    >>Enter |cRXP_WARN_Blackrock Depths|r with your group. Quest goals inside:
    *A Taste of Flame: Travel to Blackrock Depths and slay Bael'Gar.
    *The Heart of the Mountain: Bring the Heart of the Mountain to Maxwort Uberglint in the Burning Steppes.
    *The Love Potion: Bring 4 Gromsblood, 10 Giant Silver Veins and Nagmara's Filled Vial to Mistress Nagmara in Blackrock Depths.
    *Incendius!: Find Lord Incendius in Blackrock Depths and destroy him!
    *The Good Stuff: Travel to Blackrock Depths and recover 20 Dark Iron Fanny Packs. Return to Oralius when you have completed this task. You assume that the Dark Iron dwarves inside Blackrock Depths carry these 'fanny pack' contraptions.
    *The Challenge: Travel to the Ring of the Law in Blackrock Depths and place the Banner of Provocation in its center as you are sentenced by High Justice Grimstone. Slay Theldren and his gladiators and return to Anthion Harmon in the Eastern Plaguelands with the first piece of Lord Valthalak's amulet.
    .complete 4024,1 --A Taste of Flame
    .complete 4123,1 --The Heart of the Mountain
    .complete 4201,3 --The Love Potion
    .complete 4263,1 --Incendius!
    .complete 4286,1 --The Good Stuff
    .complete 9015,1 --The Challenge
step
    #completewith next
    +|cRXP_WARN_Outside: collect what the quests you got inside need|r
step
    .goto 1427,22.14,39.93
    >>Collect |cRXP_LOOT_[Star Ruby]|r from |cRXP_ENEMY_Rock Elemental|r, |cRXP_ENEMY_Blue Dragonspawn|r, |cRXP_ENEMY_Bloodscalp Hunter|r
    .complete 4083,1 --The Spectral Chalice
    .mob Rock Elemental
    .mob Blue Dragonspawn
step
    .goto 1427,45.46,38.78
    >>Collect |cRXP_LOOT_[Gold Bar]|r from |cRXP_PICK_Battered Chest|r, |cRXP_PICK_Solid Chest|r
    .complete 4083,2 --The Spectral Chalice
step
    .goto 1427,45.46,38.78
    >>Collect |cRXP_LOOT_[Truesilver Bar]|r from |cRXP_PICK_Solid Chest|r, |cRXP_PICK_Solid Chest|r
    .complete 4083,3 --The Spectral Chalice
step
    .goto 1419,59.56,54.64
    >>Collect |cRXP_LOOT_[Gromsblood]|r from |cRXP_ENEMY_Razorlash|r
    *Bring 4 Gromsblood, 10 Giant Silver Veins and Nagmara's Filled Vial to Mistress Nagmara in Blackrock Depths.
    .complete 4201,1 --The Love Potion
    .mob Razorlash
step
    .goto 1447,54.15,81.05
    >>Collect |cRXP_LOOT_[Giant Silver Vein]|r from |cRXP_ENEMY_Cliff Breaker|r, |cRXP_ENEMY_Cliff Thunderer|r, |cRXP_ENEMY_Cliff Walker|r
    *Bring 4 Gromsblood, 10 Giant Silver Veins and Nagmara's Filled Vial to Mistress Nagmara in Blackrock Depths.
    .complete 4201,2 --The Love Potion
    .mob Cliff Breaker
    .mob Cliff Thunderer
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1427,34.8,85.3
    >>Inside Blackrock Depths: these quests start from a drop or an object in the dungeon
    .turnin 3801 >>Turn in Dark Iron Legacy
    .turnin 4083 >>Turn in The Spectral Chalice
    .turnin 4201 >>Turn in The Love Potion
    .turnin 4342 >>Turn in Kharan's Tale
step
    .goto 1428,95.09,31.56
    >>Talk to |cRXP_FRIENDLY_Cyrus Therepentous|r
    .turnin 4024 >>Turn in A Taste of Flame
    .target Cyrus Therepentous
step
    .goto 1428,66.06,21.95
    >>Talk to |cRXP_FRIENDLY_Yuka Screwspigot|r
    .turnin 4324 >>Turn in Yuka Screwspigot
    .target Yuka Screwspigot
step
    .goto 1428,65.15,23.91
    >>Talk to |cRXP_FRIENDLY_Maxwort Uberglint|r
    .turnin 4123 >>Turn in The Heart of the Mountain
    .target Maxwort Uberglint
step
    .goto 1428,35.8,19.8
    >>Talk to |cRXP_FRIENDLY_Rugged Traveler|r
    .turnin 82062 >>Turn in Ever After
    .target Rugged Traveler
step
    .goto 1428,84.56,68.68
    >>Talk to |cRXP_FRIENDLY_Oralius|r
    .turnin 4286 >>Turn in The Good Stuff
    .target Oralius
step
    .goto 1428,84.74,69.02
    >>Talk to |cRXP_FRIENDLY_Marshal Maxwell|r
    .turnin 4241 >>Turn in Marshal Windsor
    .target Marshal Maxwell
step
    .goto 1428,85.41,70.06
    >>Talk to |cRXP_FRIENDLY_Jalinda Sprig|r
    .turnin 4263 >>Turn in Incendius!
    .target Jalinda Sprig
step
    .goto 1426,46.83,52.36
    >>Talk to |cRXP_FRIENDLY_Ragnar Thunderbrew|r
    .turnin 4128 >>Turn in Ragnar Thunderbrew
    .target Ragnar Thunderbrew
step
    .goto 1455,39.09,56.2
    >>Talk to |cRXP_FRIENDLY_King Magni Bronzebeard|r
    .turnin 4341 >>Turn in Kharan Mighthammer
    .target King Magni Bronzebeard
step
    .goto 1423,26.11,11.3
    >>Talk to |cRXP_FRIENDLY_Anthion Harmon|r
    .turnin 9015 >>Turn in The Challenge
    .target Anthion Harmon
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1426,46.83,52.36
    >>Talk to |cRXP_FRIENDLY_Ragnar Thunderbrew|r
    .accept 4126 >>Accept Hurley Blackbreath
    .target Ragnar Thunderbrew
step
    .goto 1428,66.06,21.95
    >>Talk to |cRXP_FRIENDLY_Yuka Screwspigot|r
    .accept 4136 >>Accept Ribbly Screwspigot
    .target Yuka Screwspigot
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in. (run 2)|r
step
    .goto 1427,34.8,85.3
    >>Inside Blackrock Depths: these quests start from a drop or an object in the dungeon
    .accept 3802 >>Accept Dark Iron Legacy
    .accept 4242 >>Accept Abandoned Hope
    .accept 4361 >>Accept The Bearer of Bad News
step
    .goto 1427,34.8,85.3
    >>Enter |cRXP_WARN_Blackrock Depths|r with your group. Quest goals inside:
    *Dark Iron Legacy: Slay Fineous Darkvire and recover the great hammer, Ironfel. Take Ironfel to the Shrine of Thaurissan and place it on the statue of Franclorn Forgewright.
    *Hurley Blackbreath: Bring the Lost Thunderbrew Recipe to Ragnar Thunderbrew in Kharanos.
    *Ribbly Screwspigot: Bring Ribbly's Head to Yuka Screwspigot in the Burning Steppes.
    .complete 3802,1 --Dark Iron Legacy
    .complete 4126,1 --Hurley Blackbreath
    .complete 4136,1 --Ribbly Screwspigot
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1427,34.8,85.3
    >>Inside Blackrock Depths: these quests start from a drop or an object in the dungeon
    .turnin 3802 >>Turn in Dark Iron Legacy
step
    .goto 1426,46.83,52.36
    >>Talk to |cRXP_FRIENDLY_Ragnar Thunderbrew|r
    .turnin 4126 >>Turn in Hurley Blackbreath
    .target Ragnar Thunderbrew
step
    .goto 1428,66.06,21.95
    >>Talk to |cRXP_FRIENDLY_Yuka Screwspigot|r
    .turnin 4136 >>Turn in Ribbly Screwspigot
    .target Yuka Screwspigot
step
    .goto 1428,84.74,69.02
    >>Talk to |cRXP_FRIENDLY_Marshal Maxwell|r
    .turnin 4242 >>Turn in Abandoned Hope
    .target Marshal Maxwell
step
    .goto 1455,39.09,56.2
    >>Talk to |cRXP_FRIENDLY_King Magni Bronzebeard|r
    .turnin 4361 >>Turn in The Bearer of Bad News
    .target King Magni Bronzebeard
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1455,39.09,56.2
    >>Talk to |cRXP_FRIENDLY_King Magni Bronzebeard|r
    .accept 4362 >>Accept The Fate of the Kingdom
    .target King Magni Bronzebeard
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in. (run 3)|r
step
    .goto 1427,34.8,85.3
    >>Loot |cRXP_LOOT_[A Crumpled Up Note]|r from |cRXP_ENEMY_Anvilrage Overseer|r, |cRXP_ENEMY_Anvilrage Warden|r, |cRXP_ENEMY_Anvilrage Guardsman|r, then click it to start the quest
    .accept 4264 >>Accept A Crumpled Up Note
    .use 11446
    .mob Anvilrage Overseer
    .mob Anvilrage Warden
step
    .goto 1427,34.8,85.3
    >>Enter |cRXP_WARN_Blackrock Depths|r with your group. Quest goals inside:
    *The Fate of the Kingdom: Return to Blackrock Depths and rescue Princess Moira Bronzebeard from the evil clutches of Emperor Dagran Thaurissan.
    .complete 4362,1 --The Fate of the Kingdom
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1427,34.8,85.3
    >>Loot |cRXP_LOOT_[A Crumpled Up Note]|r from |cRXP_ENEMY_Anvilrage Overseer|r, |cRXP_ENEMY_Anvilrage Warden|r, |cRXP_ENEMY_Anvilrage Guardsman|r, then click it to start the quest
    .turnin 4264 >>Turn in A Crumpled Up Note
step
    .goto 1455,39.09,56.2
    >>Talk to |cRXP_FRIENDLY_King Magni Bronzebeard|r
    .turnin 4362 >>Turn in The Fate of the Kingdom
    .target King Magni Bronzebeard
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in. (run 4)|r
step
    .goto 1427,34.8,85.3
    >>Inside Blackrock Depths: these quests start from a drop or an object in the dungeon
    .accept 4282 >>Accept A Shred of Hope
    .accept 4363 >>Accept The Princess's Surprise
step
    .goto 1427,34.8,85.3
    >>Enter |cRXP_WARN_Blackrock Depths|r with your group. Quest goals inside:
    *A Shred of Hope: Return Marshal Windsor's Lost Information.
    .complete 4282,1 --A Shred of Hope
    .complete 4282,2 --A Shred of Hope
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1427,34.8,85.3
    >>Inside Blackrock Depths: these quests start from a drop or an object in the dungeon
    .turnin 4282 >>Turn in A Shred of Hope
step
    .goto 1455,39.09,56.2
    >>Talk to |cRXP_FRIENDLY_King Magni Bronzebeard|r
    .turnin 4363 >>Turn in The Princess's Surprise
    .target King Magni Bronzebeard
step
    >>|cRXP_WARN_Also part of this dungeon (later follow-ups or missing data). Do them if they are offered:|r
    *Jail Break!
    +Done
step
    .goto 1427,34.8,85.3
    +Dungeon entrance: Blackrock Depths. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 50-60
#name 55-56 Dire Maul East pre-quests
#displayname 55-56 Dire Maul East pre-quests
#next 55-56 Dire Maul East
step
    +|cRXP_WARN_Dire Maul East: pre-quests|r. 1 quests, solo (no group needed), roughly 5 min. The run guide comes after this one. Click to start.
    *Pre-quests: Bodley's Unfortunate Fate
step
    .goto 1455,43.53,52.64
    >>Talk to |cRXP_FRIENDLY_Deliana|r
    .accept 8960 >>Accept Bodley's Unfortunate Fate
    .target Deliana
step
    .goto 1455,43.53,52.64
    >>Talk to |cRXP_FRIENDLY_Deliana|r
    .turnin 8960 >>Turn in Bodley's Unfortunate Fate
    .target Deliana
step
    +|cRXP_WARN_Pre-quests done.|r Next: Dire Maul East itself. That guide tells you when to find a group. Click to continue.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 50-60
#name 55-56 Dire Maul East
#displayname 55-56 Dire Maul East
#next 56-59 Lower Blackrock Spire pre-quests
step
    +|cRXP_WARN_Dire Maul East|r (levels 54-60). Pick up 5 dungeon quests solo (roughly 20 min with the hand-ins), then ONE run with a group (roughly 1 h 40 min). No group needed until the run step. Click to start.
    *Door: East wall of the central courtyard. No key. Chase Pusillin: he drops the Crescent Key that opens West and North.
    *East 54-60, West 56-60, North 56-60.
    *Its 1 pre-quests are in the guide before this one. Skipped them? Some quests below won't be offered: skip those steps.
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1444,76.91,37.35
    >>Talk to |cRXP_FRIENDLY_Azj'Tordin|r
    .accept 7441 >>Accept Pusillin and the Elder Azj'Tordin
    .target Azj'Tordin
step
    .goto 1453,56.39,74.09
    >>Talk to |cRXP_FRIENDLY_Crier Goodman|r
    .accept 7494 >>Accept Feathermoon Stronghold
    .target Crier Goodman
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in.|r
step
    .goto 1444,64.8,30.2
    >>Inside Dire Maul East: these quests start from a drop or an object in the dungeon
    .accept 8967 >>Accept The Left Piece of Lord Valthalak's Amulet
    .accept 8990 >>Accept The Right Piece of Lord Valthalak's Amulet
step
    .goto 1444,64.8,30.2
    >>Enter |cRXP_WARN_Dire Maul East|r with your group. Quest goals inside:
    *Pusillin and the Elder Azj'Tordin: Travel to Dire Maul and locate the Imp, Pusillin. Convince Pusillin to give you Azj'Tordin's Book of Incantations through any means necessary.
    *The Left Piece of Lord Valthalak's Amulet: Use the Brazier of Beckoning to summon forth the spirit of Isalien and slay her. Return to Bodley inside Blackrock Mountain with the Left Piece of Lord Valthalak's Amulet and the Brazier of Beckoning.
    *The Right Piece of Lord Valthalak's Amulet: Use the Brazier of Beckoning to summon forth the spirit of Isalien and slay her. Return to Bodley inside Blackrock Mountain with the recombined Lord Valthalak's Amulet and the Brazier of Beckoning.
    .complete 7441,1 --Pusillin and the Elder Azj'Tordin
    .complete 8967,1 --The Left Piece of Lord Valthalak's Amulet
    .complete 8967,2 --The Left Piece of Lord Valthalak's Amulet
    .complete 8990,1 --The Right Piece of Lord Valthalak's Amulet
    .complete 8990,2 --The Right Piece of Lord Valthalak's Amulet
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1444,64.8,30.2
    >>Inside Dire Maul East: these quests start from a drop or an object in the dungeon
    .turnin 8967 >>Turn in The Left Piece of Lord Valthalak's Amulet
    .turnin 8990 >>Turn in The Right Piece of Lord Valthalak's Amulet
step
    .goto 1444,76.91,37.35
    >>Talk to |cRXP_FRIENDLY_Azj'Tordin|r
    .turnin 7441 >>Turn in Pusillin and the Elder Azj'Tordin
    .target Azj'Tordin
step
    .goto 1444,30.38,46.17
    >>Talk to |cRXP_FRIENDLY_Latronicus Moonspear|r
    .turnin 7494 >>Turn in Feathermoon Stronghold
    .target Latronicus Moonspear
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1444,30.38,46.17
    >>Talk to |cRXP_FRIENDLY_Latronicus Moonspear|r
    .accept 7488 >>Accept Lethtendris's Web
    .target Latronicus Moonspear
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in. (run 2)|r
step
    .goto 1444,64.8,30.2
    >>Enter |cRXP_WARN_Dire Maul East|r with your group. Quest goals inside:
    *Lethtendris's Web: Bring Lethtendris' Web to Latronicus Moonspear at the Feathermoon Stronghold in Feralas.
    .complete 7488,1 --Lethtendris's Web
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1444,30.38,46.17
    >>Talk to |cRXP_FRIENDLY_Latronicus Moonspear|r
    .turnin 7488 >>Turn in Lethtendris's Web
    .target Latronicus Moonspear
step
    .goto 1444,64.8,30.2
    +Dungeon entrance: Dire Maul East. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 50-60
#name 56-59 Lower Blackrock Spire pre-quests
#displayname 56-59 Lower Blackrock Spire pre-quests
#next 56-59 Lower Blackrock Spire
step
    +|cRXP_WARN_Lower Blackrock Spire: pre-quests|r. 8 quests, solo (no group needed), roughly 2 h 25 min. The run guide comes after this one. Click to start.
    *Pre-quests: The Prophecy of Mosh'aru, The God Hakkar, Broodling Essence, The Ancient Egg, Felnok Steelspring, Chillwind Horns, Return to Tinkee, The Lost Tablets of Mosh'aru
step
    .goto 1446,66.99,22.36
    >>Talk to |cRXP_FRIENDLY_Yeh'kinya|r
    .accept 3527 >>Accept The Prophecy of Mosh'aru
    .target Yeh'kinya
step
    >>Collect |cRXP_LOOT_[First Mosh'aru Tablet]|r from |cRXP_ENEMY_Theka the Martyr Shapeshift|r, |cRXP_ENEMY_Theka the Martyr Shapeshift|r. Collect |cRXP_LOOT_[Second Mosh'aru Tablet]|r from |cRXP_ENEMY_Hydromancer Velratha|r
    *Bring the First and Second Mosh'aru Tablets to Yeh'kinya in Tanaris.
    .complete 3527,1 --The Prophecy of Mosh'aru
    .complete 3527,2 --The Prophecy of Mosh'aru
    .mob Theka the Martyr Shapeshift
    .mob Hydromancer Velratha
step
    .goto 1446,66.99,22.36
    >>Talk to |cRXP_FRIENDLY_Yeh'kinya|r
    .turnin 3527 >>Turn in The Prophecy of Mosh'aru
    .accept 4787 >>Accept The Ancient Egg
    .target Yeh'kinya
step
    .goto 1428,65.24,24
    >>Talk to |cRXP_FRIENDLY_Tinkee Steamboil|r
    .accept 4726 >>Accept Broodling Essence
    .target Tinkee Steamboil
step
    >>Collect |cRXP_LOOT_[Broodling Essence]|r from |cRXP_PICK_Broodling Essence|r
    *Bring 8 Broodling Essence and the Draco-Incarcinatrix 900 to Tinkee Steamboil at the Flame Crest in the Burning Steppes.
    .complete 4726,1 --Broodling Essence
step
    .goto 1428,65.24,24
    >>Talk to |cRXP_FRIENDLY_Tinkee Steamboil|r
    .turnin 4726 >>Turn in Broodling Essence
    .accept 4808 >>Accept Felnok Steelspring
    .target Tinkee Steamboil
step
    .goto 1452,61.63,38.61
    >>Talk to |cRXP_FRIENDLY_Felnok Steelspring|r
    .turnin 4808 >>Turn in Felnok Steelspring
    .accept 4809 >>Accept Chillwind Horns
    .target Felnok Steelspring
step
    .goto 1452,58.18,19.9
    >>Collect |cRXP_LOOT_[Uncracked Chillwind Horn]|r from |cRXP_ENEMY_Fledgling Chillwind|r, |cRXP_ENEMY_Chillwind Chimaera|r, |cRXP_ENEMY_Chillwind Ravager|r
    *Bring 8 Uncracked Chillwind Horns to Felnok Steelspring.
    .complete 4809,1 --Chillwind Horns
    .mob Fledgling Chillwind
    .mob Chillwind Chimaera
step
    .goto 1452,61.63,38.61
    >>Talk to |cRXP_FRIENDLY_Felnok Steelspring|r
    .turnin 4809 >>Turn in Chillwind Horns
    .accept 4810 >>Accept Return to Tinkee
    .target Felnok Steelspring
step
    .goto 1428,65.24,24
    >>Talk to |cRXP_FRIENDLY_Tinkee Steamboil|r
    .turnin 4810 >>Turn in Return to Tinkee
    .target Tinkee Steamboil
step
    .goto 1425,57.58,86.79
    >>Collect |cRXP_LOOT_[Ancient Egg]|r from |cRXP_PICK_Ancient Egg|r
    *Bring the Ancient Egg to Yeh'kinya in Tanaris.
    .complete 4787,1 --The Ancient Egg
step
    .goto 1446,66.99,22.36
    >>Talk to |cRXP_FRIENDLY_Yeh'kinya|r
    .turnin 4787 >>Turn in The Ancient Egg
    .accept 3528 >>Accept The God Hakkar
    .target Yeh'kinya
step
    >>Collect |cRXP_LOOT_[Filled Egg of Hakkar]|r
    *Bring the Filled Egg of Hakkar to Yeh'kinya in Tanaris.
    .complete 3528,1 --The God Hakkar
step
    .goto 1446,66.99,22.36
    >>Talk to |cRXP_FRIENDLY_Yeh'kinya|r
    .turnin 3528 >>Turn in The God Hakkar
    .target Yeh'kinya
step
    .goto 1446,66.89,24.03
    >>Talk to |cRXP_FRIENDLY_Prospector Ironboot|r
    .accept 5065 >>Accept The Lost Tablets of Mosh'aru
    .target Prospector Ironboot
step
    .goto 1423,63.43,7.84
    >>Collect |cRXP_LOOT_[Third Mosh'aru Tablet]|r from |cRXP_PICK_Third Mosh'aru Tablet|r. Collect |cRXP_LOOT_[Fourth Mosh'aru Tablet]|r from |cRXP_PICK_Fourth Mosh'aru Tablet|r
    *Bring the Third and Fourth Mosh'aru Tablets to Prospector Ironboot in Tanaris.
    .complete 5065,1 --The Lost Tablets of Mosh'aru
    .complete 5065,2 --The Lost Tablets of Mosh'aru
step
    .goto 1446,66.89,24.03
    >>Talk to |cRXP_FRIENDLY_Prospector Ironboot|r
    .turnin 5065 >>Turn in The Lost Tablets of Mosh'aru
    .target Prospector Ironboot
step
    +|cRXP_WARN_Pre-quests done.|r Next: Lower Blackrock Spire itself. That guide tells you when to find a group. Click to continue.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 50-60
#name 56-59 Lower Blackrock Spire
#displayname 56-59 Lower Blackrock Spire
#next 59-60 Dire Maul West
step
    +|cRXP_WARN_Lower Blackrock Spire|r (levels 55-60). Pick up 16 dungeon quests solo (roughly 1 h 15 min with the hand-ins), then ONE run with a group (roughly 4 h 30 min). No group needed until the run step. Click to start.
    *Door: Blackrock Spire door inside Blackrock Mountain. No key.
    *Lower Blackrock Spire 55-60, Upper Blackrock Spire 59-60.
    *Its 8 pre-quests are in the guide before this one. Skipped them? Some quests below won't be offered: skip those steps.
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1446,66.89,24.03
    >>Talk to |cRXP_FRIENDLY_Prospector Ironboot|r
    .accept 4788 >>Accept The Final Tablets
    .target Prospector Ironboot
step
    .goto 1428,85.82,68.95
    >>Talk to |cRXP_FRIENDLY_Helendis Riverhorn|r
    .accept 4701 >>Accept Put Her Down
    .target Helendis Riverhorn
step
    .goto 1428,65.01,23.76
    >>Talk to |cRXP_FRIENDLY_Ragged John|r
    .accept 4866 >>Accept Mother's Milk
    .target Ragged John
step
    .goto 1428,65.89,21.92
    >>Talk to |cRXP_FRIENDLY_Kibler|r
    .accept 4729 >>Accept Kibler's Exotic Pets
    .accept 4862 >>Accept En-Ay-Es-Tee-Why
    .target Kibler
step
    .goto 1453,76.94,47.83
    >>Talk to |cRXP_FRIENDLY_Count Remington Ridgewell|r
    .accept 4766 >>Accept Mayara Brightwing
    .target Count Remington Ridgewell
step
    .goto 1452,61.63,38.61
    >>Talk to |cRXP_FRIENDLY_Felnok Steelspring|r
    .accept 4907 >>Accept Tinkee Steamboil
    .target Felnok Steelspring
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in.|r
step
    .goto 1427,34.8,85.3
    >>Inside Lower Blackrock Spire: these quests start from a drop or an object in the dungeon
    .accept 4742 >>Accept Seal of Ascension
    .accept 4867 >>Accept Urok Doomhowl
    .accept 5001 >>Accept Bijou's Belongings
    .accept 8966 >>Accept The Left Piece of Lord Valthalak's Amulet
    .accept 8989 >>Accept The Right Piece of Lord Valthalak's Amulet
step
    .goto 1427,34.8,85.3
    >>Loot |cRXP_LOOT_[General Drakkisath's Command]|r from |cRXP_ENEMY_Overlord Wyrmthalak|r, then click it to start the quest
    .accept 5089 >>Accept General Drakkisath's Command
    .use 12780
    .mob Overlord Wyrmthalak
step
    .goto 1427,34.8,85.3
    >>Enter |cRXP_WARN_Lower Blackrock Spire|r with your group. Quest goals inside:
    *Put Her Down: Travel to Blackrock Spire and destroy the source of the worg menace. As you left Helendis, he shouted a name: Halycon. It is what the orcs refer to in regards to the worg.
    *Kibler's Exotic Pets: Travel to Blackrock Spire and find Bloodaxe Worg Pups. Use the cage to carry the ferocious little beasts. Bring back a Caged Worg Pup to Kibler.
    *Seal of Ascension: Find the three gemstones of command: The Gemstone of Smolderthorn, Gemstone of Spirestone, and Gemstone of Bloodaxe. Return them, along with the Unadorned Seal of Ascension, to Vaelan.
    *The Final Tablets: Bring the Fifth and Sixth Mosh'aru Tablets to Prospector Ironboot in Tanaris.
    *En-Ay-Es-Tee-Why: Travel to Blackrock Spire and collect 15 Spire Spider Eggs for Kibler.
    *Urok Doomhowl: Read Warosh's Scroll. Bring Warosh's Mojo to Warosh.
    *Bijou's Belongings: Find Bijou's Belongings and return them to her. Good luck!
    *The Left Piece of Lord Valthalak's Amulet: Use the Brazier of Beckoning to summon forth the spirit of Mor Grayhoof and slay him. Return to Bodley inside Blackrock Mountain with the Left Piece of Lord Valthalak's Amulet and the Brazier of Beckoning.
    *The Right Piece of Lord Valthalak's Amulet: Use the Brazier of Beckoning to summon forth the spirit of Mor Grayhoof and slay him. Return to Bodley inside Blackrock Mountain with the recombined Lord Valthalak's Amulet and the Brazier of Beckoning.
    .complete 4701,1 --Put Her Down
    .complete 4729,1 --Kibler's Exotic Pets
    .complete 4742,1 --Seal of Ascension
    .complete 4742,2 --Seal of Ascension
    .complete 4742,3 --Seal of Ascension
    .complete 4742,4 --Seal of Ascension
    .complete 4788,1 --The Final Tablets
    .complete 4788,2 --The Final Tablets
    .complete 4862,1 --En-Ay-Es-Tee-Why
    .complete 4867,1 --Urok Doomhowl
    .complete 5001,1 --Bijou's Belongings
    .complete 8966,1 --The Left Piece of Lord Valthalak's Amulet
    .complete 8966,2 --The Left Piece of Lord Valthalak's Amulet
    .complete 8989,1 --The Right Piece of Lord Valthalak's Amulet
    .complete 8989,2 --The Right Piece of Lord Valthalak's Amulet
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1427,34.8,85.3
    >>Inside Lower Blackrock Spire: these quests start from a drop or an object in the dungeon
    .turnin 4742 >>Turn in Seal of Ascension
    .turnin 4867 >>Turn in Urok Doomhowl
    .turnin 5001 >>Turn in Bijou's Belongings
    .turnin 8966 >>Turn in The Left Piece of Lord Valthalak's Amulet
    .turnin 8989 >>Turn in The Right Piece of Lord Valthalak's Amulet
step
    .goto 1428,85.82,68.95
    >>Talk to |cRXP_FRIENDLY_Helendis Riverhorn|r
    .turnin 4701 >>Turn in Put Her Down
    .target Helendis Riverhorn
step
    .goto 1428,84.84,69.12
    >>Talk to |cRXP_FRIENDLY_Mayara Brightwing|r
    .turnin 4766 >>Turn in Mayara Brightwing
    .target Mayara Brightwing
step
    .goto 1428,84.74,69.02
    >>Talk to |cRXP_FRIENDLY_Marshal Maxwell|r
    .turnin 5089 >>Turn in General Drakkisath's Command
    .target Marshal Maxwell
step
    .goto 1428,65.24,24
    >>Talk to |cRXP_FRIENDLY_Tinkee Steamboil|r
    .turnin 4907 >>Turn in Tinkee Steamboil
    .target Tinkee Steamboil
step
    .goto 1428,65.01,23.76
    >>Talk to |cRXP_FRIENDLY_Ragged John|r
    .turnin 4866 >>Turn in Mother's Milk
    .target Ragged John
step
    .goto 1428,65.89,21.92
    >>Talk to |cRXP_FRIENDLY_Kibler|r
    .turnin 4729 >>Turn in Kibler's Exotic Pets
    .turnin 4862 >>Turn in En-Ay-Es-Tee-Why
    .target Kibler
step
    .goto 1446,66.89,24.03
    >>Talk to |cRXP_FRIENDLY_Prospector Ironboot|r
    .turnin 4788 >>Turn in The Final Tablets
    .target Prospector Ironboot
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in. (run 2)|r
step
    .goto 1427,34.8,85.3
    >>Inside Lower Blackrock Spire: these quests start from a drop or an object in the dungeon
    .accept 4743 >>Accept Seal of Ascension
    .accept 5002 >>Accept Message to Maxwell
step
    .goto 1427,34.8,85.3
    >>Enter |cRXP_WARN_Lower Blackrock Spire|r with your group. Quest goals inside:
    *Seal of Ascension: Travel to the Wyrmbog in Dustwallow Marsh. Find the ancient drake, Emberstrife and beat him without mercy until his will is broken.
    .complete 4743,1 --Seal of Ascension
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1427,34.8,85.3
    >>Inside Lower Blackrock Spire: these quests start from a drop or an object in the dungeon
    .turnin 4743 >>Turn in Seal of Ascension
step
    .goto 1428,84.74,69.02
    >>Talk to |cRXP_FRIENDLY_Marshal Maxwell|r
    .turnin 5002 >>Turn in Message to Maxwell
    .target Marshal Maxwell
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1428,84.74,69.02
    >>Talk to |cRXP_FRIENDLY_Marshal Maxwell|r
    .accept 5081 >>Accept Maxwell's Mission
    .target Marshal Maxwell
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in. (run 3)|r
step
    .goto 1427,34.8,85.3
    >>Enter |cRXP_WARN_Lower Blackrock Spire|r with your group. Quest goals inside:
    *Maxwell's Mission: Travel to Blackrock Spire and destroy War Master Voone, Highlord Omokk, and Overlord Wyrmthalak. Return to Marshal Maxwell when the job is done.
    .complete 5081,1 --Maxwell's Mission
    .complete 5081,2 --Maxwell's Mission
    .complete 5081,3 --Maxwell's Mission
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1428,84.74,69.02
    >>Talk to |cRXP_FRIENDLY_Marshal Maxwell|r
    .turnin 5081 >>Turn in Maxwell's Mission
    .target Marshal Maxwell
step
    .goto 1427,34.8,85.3
    +Dungeon entrance: Lower Blackrock Spire. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 50-60
#name 59-60 Dire Maul West
#displayname 59-60 Dire Maul West
step
    +|cRXP_WARN_Dire Maul West|r (levels 56-60). Pick up 10 dungeon quests solo (roughly 10 min with the hand-ins), then ONE run with a group (roughly 2 h). No group needed until the run step. Click to start.
    *Door: West wall of the central courtyard. Needs the Crescent Key (Pusillin, Dire Maul East).
    *East 54-60, West 56-60, North 56-60.
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1444,31.65,43.45
    >>Talk to |cRXP_FRIENDLY_Scholar Runethorn|r
    .accept 7482 >>Accept Elven Legends
    .target Scholar Runethorn
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in.|r
step
    .goto 1444,60.3,30.2
    >>Inside Dire Maul West: these quests start from a drop or an object in the dungeon
    .accept 1318 >>Accept Unfinished Gordok Business
    .accept 7461 >>Accept The Madness Within
    .accept 7703 >>Accept Unfinished Gordok Business
    .accept 8949 >>Accept Falrin's Vendetta
    .accept 84555 >>Accept Nostro's Compendium
step
    .goto 1444,60.3,30.2
    >>Inside Dire Maul West: loot |cRXP_LOOT_[Foror's Compendium of Dragon Slaying]|r and click it to start the quest
    .accept 7507 >>Accept Foror's Compendium
    .use 18401
step
    .goto 1444,60.3,30.2
    >>Enter |cRXP_WARN_Dire Maul West|r with your group. Quest goals inside:
    *Unfinished Gordok Business: Find the Gauntlet of Gordok Might and return it to Captain Kromcrush in Dire Maul.
    *The Madness Within: You must destroy the guardians surrounding the 5 Pylons that power the Prison of Immol'thar. Once the Pylons have powered down, the force field surrounding Immol'thar will have dissipated.
    *Unfinished Gordok Business: Find the Gauntlet of Gordok Might and return it to Captain Kromcrush in Dire Maul.
    .complete 1318,1 --Unfinished Gordok Business
    .complete 7461,1 --The Madness Within
    .complete 7461,2 --The Madness Within
    .complete 7703,1 --Unfinished Gordok Business
step
    #completewith next
    +|cRXP_WARN_Outside: collect what the quests you got inside need|r
step
    .goto 1444,59.24,43.08
    >>Collect |cRXP_LOOT_[Ogre Warbeads]|r from |cRXP_ENEMY_Urok Enforcer|r, |cRXP_ENEMY_Urok Ogre Magus|r, |cRXP_ENEMY_Ogre Magi|r
    *Collect 25 Ogre Warbeads from Ogres inside Dire Maul or Blackrock Spire and return to Falrin Treeshaper inside the Athenaeum in Dire Maul.
    .complete 8949,1 --Falrin's Vendetta
    .mob Urok Enforcer
    .mob Urok Ogre Magus
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1444,60.3,30.2
    >>Inside Dire Maul West: these quests start from a drop or an object in the dungeon
    .turnin 1318 >>Turn in Unfinished Gordok Business
    .turnin 7461 >>Turn in The Madness Within
    .turnin 7703 >>Turn in Unfinished Gordok Business
    .turnin 8949 >>Turn in Falrin's Vendetta
    .turnin 84555 >>Turn in Nostro's Compendium
step
    .goto 1444,60.3,30.2
    >>Inside Dire Maul West: loot |cRXP_LOOT_[Foror's Compendium of Dragon Slaying]|r and click it to start the quest
    .turnin 7507 >>Turn in Foror's Compendium
step
    .goto 1444,31.65,43.45
    >>Talk to |cRXP_FRIENDLY_Scholar Runethorn|r
    .turnin 7482 >>Turn in Elven Legends
    .target Scholar Runethorn
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in. (run 2)|r
step
    .goto 1444,60.3,30.2
    >>Inside Dire Maul West: these quests start from a drop or an object in the dungeon
    .accept 7462 >>Accept The Treasure of the Shen'dralar
    .accept 8950 >>Accept The Instigator's Enchantment
step
    .goto 1444,60.3,30.2
    >>Inside Dire Maul West: loot |cRXP_LOOT_[A Dull and Flat Elven Blade]|r and click it to start the quest
    .accept 7508 >>Accept The Forging of Quel'Serrar
    .use 18513
step
    .goto 1444,60.3,30.2
    >>Enter |cRXP_WARN_Dire Maul West|r with your group. Quest goals inside:
    *The Instigator's Enchantment: Bring the following to Falrin Treeshaper inside Dire Maul: 1 Jeering Spectre's Essence, 4 Dark Runes and 8 Large Brilliant Shards.
    .complete 8950,1 --The Instigator's Enchantment
    .complete 8950,2 --The Instigator's Enchantment
    .complete 8950,3 --The Instigator's Enchantment
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1444,60.3,30.2
    >>Inside Dire Maul West: these quests start from a drop or an object in the dungeon
    .turnin 7462 >>Turn in The Treasure of the Shen'dralar
    .turnin 8950 >>Turn in The Instigator's Enchantment
step
    .goto 1444,60.3,30.2
    >>Inside Dire Maul West: loot |cRXP_LOOT_[A Dull and Flat Elven Blade]|r and click it to start the quest
    .turnin 7508 >>Turn in The Forging of Quel'Serrar
step
    .goto 1444,60.3,30.2
    +Dungeon entrance: Dire Maul West. Done with this dungeon? Click to finish.
]])
