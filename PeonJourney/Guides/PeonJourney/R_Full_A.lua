RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 20-29
#name 21-21 Wailing Caverns
#displayname 21-21 Wailing Caverns
#next 21-22 Ashenvale
step
    +|cRXP_WARN_Wailing Caverns|r (levels 15-24). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *Pre-quests in this guide: Raptor Horns
step
    #completewith next
    +|cRXP_WARN_Pre-quests|r
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
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
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
    +|cRXP_WARN_Run the dungeon|r
step
    .goto 1413,46,36.5
    >>Loot |cRXP_LOOT_[Glowing Shard]|r from |cRXP_ENEMY_Mutanus the Devourer|r, then click it to start the quest
    .accept 6981 >>Accept The Glowing Shard
    .use 10441
    .mob Mutanus the Devourer
step
    .goto 1413,46,36.5
    >>Enter |cRXP_WARN_Wailing Caverns|r and run it with a group. Quest goals inside:
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
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 20-29
#name 21-22 Ashenvale
#displayname 21-22 Ashenvale
#next 22-23 Wetlands
step
    .zone 1440 >>Travel to Ashenvale
    *Suggested level for this part: 21-22
step
    #completewith next
    .goto 1440,34.41,47.99,15,0
    >>Talk to |cRXP_FRIENDLY_Daelyshia|r if you don't have this flight path yet
    .fp Daelyshia >>Get the flight path
    .target Daelyshia
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
    .goto 1440,36.62,49.58
    >>Talk to |cRXP_FRIENDLY_Raene Wolfrunner|r
    .accept 1054 >>Accept Culling the Threat
    .target Raene Wolfrunner
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
    .target Keeper Albagorm
step
    .goto 1442,53.03,39.69
    >>Collect |cRXP_LOOT_[Pridewing Venom Sac]|r from |cRXP_ENEMY_Unsuspecting Pridewing|r, |cRXP_ENEMY_Freewind Post Wyvern|r, |cRXP_ENEMY_Pridewing Skyhunter|r
    *Bring 12 Pridewing Venom Sacs to Shindrell Swiftfire in Astranaar.
    .complete 1134,1 --Pridewings of Stonetalon
    .mob Unsuspecting Pridewing
    .mob Freewind Post Wyvern
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
    .target Gaxim Rustfizzle
step
    .goto 1440,34.67,48.84
    >>Talk to |cRXP_FRIENDLY_Shindrell Swiftfire|r
    .turnin 1134 >>Turn in Pridewings of Stonetalon
    .target Shindrell Swiftfire
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
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 20-29
#name 22-23 Wetlands
#displayname 22-23 Wetlands
#next 23-24 Redridge Mountains
step
    .zone 1437 >>Travel to Wetlands
    *Suggested level for this part: 22-23
step
    #completewith next
    .goto 1437,9.49,59.69,15,0
    >>Talk to |cRXP_FRIENDLY_Shellei Brondir|r if you don't have this flight path yet
    .fp Shellei Brondir >>Get the flight path
    .target Shellei Brondir
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
    .goto 1437,8.32,58.57
    >>Talk to |cRXP_FRIENDLY_Karl Boran|r
    .accept 279 >>Accept Claws from the Deep
    .target Karl Boran
step
    .goto 1437,10.1,56.9
    >>Talk to |cRXP_FRIENDLY_Valstag Ironjaw|r
    .accept 98197 >>Accept Spoils of War
    .target Valstag Ironjaw
step
    .goto 1437,11.5,52.17
    >>Talk to |cRXP_FRIENDLY_Tarrel Rockweaver|r
    .accept 305 >>Accept In Search of The Excavation Team
    .target Tarrel Rockweaver
step
    .goto 1437,7.9,50.7
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
    .goto 1437,38.91,52.34
    >>Talk to |cRXP_FRIENDLY_Merrin Rockweaver|r
    .accept 306 >>Accept In Search of The Excavation Team
    .target Merrin Rockweaver
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
    .goto 1437,38.18,50.89
    >>Talk to |cRXP_FRIENDLY_Ormer Ironbraid|r
    .turnin 294 >>Turn in Ormer's Revenge
    .target Ormer Ironbraid
step
    .goto 1437,49.92,39.37
    >>Talk to |cRXP_FRIENDLY_Einar Stonegrip|r
    .accept 469 >>Accept Daily Delivery
    .target Einar Stonegrip
step
    .goto 1437,56.37,40.4
    >>Talk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
    .turnin 463 >>Turn in The Greenwarden
    .target Rethiel the Greenwarden
step
    .goto 1437,44.31,24.7
    >>Collect |cRXP_LOOT_[Sida's Bag]|r from |cRXP_ENEMY_Crimson Ooze|r, |cRXP_ENEMY_Black Ooze|r, |cRXP_ENEMY_Monstrous Ooze|r
    *One of the oozes at Ironbeard's Tomb has Sida's bag, retrieve it and bring it back to her in Menethil Harbor.
    .complete 470,1 --Digging Through the Ooze
    .mob Crimson Ooze
    .mob Black Ooze
step
    .goto 1437,51.56,62.13
    >>Collect |cRXP_LOOT_[Unruptured Stalker Gland]|r from |cRXP_ENEMY_Leech Stalker|r, |cRXP_ENEMY_Cave Stalker|r, |cRXP_ENEMY_Leech Stalker Corpse|r
    *Collect an Unruptured Stalker Gland from Thelgen Rock for Caitlin Grassman in Menethil Harbor.
    .complete 98282,1 --Alchemical Hazards
    .mob Leech Stalker
    .mob Cave Stalker
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
    .goto 1437,8.55,55.74
    >>Talk to |cRXP_FRIENDLY_James Halloran|r
    .turnin 469 >>Turn in Daily Delivery
    .target James Halloran
step
    .goto 1432,34.17,47.84
    >>Talk to |cRXP_FRIENDLY_Mountaineer Kadrell|r
    .accept 468 >>Accept Report to Mountaineer Rockgar
    .target Mountaineer Kadrell
step
    .goto 1432,25.44,10.38
    >>Talk to |cRXP_FRIENDLY_Mountaineer Rockgar|r
    .turnin 468 >>Turn in Report to Mountaineer Rockgar
    .accept 455 >>Accept The Algaz Gauntlet
    .target Mountaineer Rockgar
step
    .goto 1424,51.21,66.46
    >>Talk to |cRXP_FRIENDLY_Tom "Half-fish" Wilson|r
    .accept 98459 >>Accept A Lack of Virtue
    .target Tom "Half-fish" Wilson
step
    .goto 1437,8.66,58.12
    >>Talk to |cRXP_FRIENDLY_Bart Tidewater|r
    .turnin 98459 >>Turn in A Lack of Virtue
    .target Bart Tidewater
step
    .goto 1437,49.93,76.12
    >>Kill |cRXP_ENEMY_Dragonmaw Scout|r. Kill |cRXP_ENEMY_Dragonmaw Grunt|r. Traverse Dun Algaz
    *Traverse Dun Algaz.
    .complete 455,1 --The Algaz Gauntlet
    .complete 455,2 --The Algaz Gauntlet
    .complete 455,3 --The Algaz Gauntlet
    .mob Dragonmaw Scout
    .mob Dragonmaw Grunt
step
    .goto 1437,10.1,56.9
    >>Talk to |cRXP_FRIENDLY_Valstag Ironjaw|r
    .turnin 455 >>Turn in The Algaz Gauntlet
    .target Valstag Ironjaw
step
    .goto 1439,37.44,41.84
    >>Talk to |cRXP_FRIENDLY_Archaeologist Hollee|r
    .accept 98461 >>Accept Unrequited Love
    .target Archaeologist Hollee
step
    .goto 1437,11.5,52.17
    >>Talk to |cRXP_FRIENDLY_Tarrel Rockweaver|r
    .turnin 98461 >>Turn in Unrequited Love
    .target Tarrel Rockweaver
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 20-29
#name 23-24 Redridge Mountains
#displayname 23-24 Redridge Mountains
#next 24-26 Duskwood
step
    .zone 1433 >>Travel to Redridge Mountains
    *Suggested level for this part: 23-24
step
    #completewith next
    .goto 1433,25.5,59.41,15,0
    >>Talk to |cRXP_FRIENDLY_Ariena Stormfeather|r if you don't have this flight path yet
    .fp Ariena Stormfeather >>Get the flight path
    .target Ariena Stormfeather
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
    .goto 1433,47.32,42.15
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
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 20-29
#name 24-26 Duskwood
#displayname 24-26 Duskwood
#next 26-27 Blackfathom Deeps
step
    .zone 1431 >>Travel to Duskwood
    *Suggested level for this part: 24-26
step
    #completewith next
    .goto 1431,77.49,44.29,15,0
    >>Talk to |cRXP_FRIENDLY_Felicia Maline|r if you don't have this flight path yet
    .fp Felicia Maline >>Get the flight path
    .target Felicia Maline
step
    .goto 1431,75.79,45.32
    >>Talk to |cRXP_FRIENDLY_Madame Eva|r
    .accept 101 >>Accept The Totem of Infliction
    .target Madame Eva
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
    .goto 1431,73.75,43.48
    >>Talk to |cRXP_FRIENDLY_Chef Grual|r
    .accept 90 >>Accept Seasoned Wolf Kabobs
    .target Chef Grual
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
    .goto 1431,21.1,55.6
    >>Collect |cRXP_LOOT_[Raven Hill Tome]|r from |cRXP_PICK_Memory of Valor|r
    *Search Raven Hill for anything of interest and return to Sirra Von'Indi in Darkshire.
    .complete 96139,1 --The Valor Family
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
    .goto 1431,8.36,39.27
    >>Loot |cRXP_LOOT_[Ira's Dagger]|r from |cRXP_ENEMY_Lost Stalker|r, then click it to start the quest
    .accept 96137 >>Accept Ira's Dagger
    .use 281143
    .mob Lost Stalker
step
    .goto 1431,7.78,34.07
    >>Talk to |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 164 >>Turn in Deliveries to Sven
    .accept 95 >>Accept Sven's Revenge
    .target Sven Yorgen
step
    .goto 1431,7.71,33.2
    >>Talk to |cRXP_FRIENDLY_Lars|r
    .accept 226 >>Accept Wolves at Our Heels
    .target Lars
step
    .goto 1431,22.04,32.62
    >>Collect |cRXP_LOOT_[Ghoul Fang]|r from |cRXP_ENEMY_Flesh Eater|r, |cRXP_ENEMY_Bone Chewer|r, |cRXP_ENEMY_Brain Eater|r. Collect |cRXP_LOOT_[Skeleton Finger]|r from |cRXP_ENEMY_Shambling Skeleton UNUSED|r, |cRXP_ENEMY_Brittlebones Skeleton UNUSED|r, |cRXP_ENEMY_Skeletal Fiend (Enraged Form)|r. Kill |cRXP_ENEMY_Rabid Dire Wolf|r
    *Bring 10 Ghoul Fangs, 10 Skeleton Fingers and 5 Vials of Spider Venom to Madame Eva in Darkshire.
    *Kill 12 Starving Dire Wolves and 8 Rabid Dire Wolves, then return to Lars at Sven's Camp on the western border of Duskwood.
    .complete 101,1 --The Totem of Infliction
    .complete 101,3 --The Totem of Infliction
    .complete 226,2 --Wolves at Our Heels
    .mob Flesh Eater
    .mob Bone Chewer
    .mob Shambling Skeleton UNUSED
    .mob Brittlebones Skeleton UNUSED
    .mob Rabid Dire Wolf
step
    .goto 1431,28.11,31.46
    >>Talk to |cRXP_FRIENDLY_Abercrombie|r
    .turnin 165 >>Turn in The Hermit
    .accept 148 >>Accept Supplies from Darkshire
    .target Abercrombie
step
    .goto 1431,32.63,25.84
    >>Collect |cRXP_LOOT_[Lean Wolf Flank]|r from |cRXP_ENEMY_Starving Dire Wolf|r, |cRXP_ENEMY_Lupos|r, |cRXP_ENEMY_Rabid Dire Wolf|r. Kill |cRXP_ENEMY_Starving Dire Wolf|r
    *Gather 10 Lean Wolf Flanks and Stormwind Seasoning Herbs and return to Chef Grual in Darkshire.
    *Kill 12 Starving Dire Wolves and 8 Rabid Dire Wolves, then return to Lars at Sven's Camp on the western border of Duskwood.
    .complete 90,1 --Seasoned Wolf Kabobs
    .complete 226,1 --Wolves at Our Heels
    .mob Starving Dire Wolf
    .mob Lupos
step
    .goto 1431,7.71,33.2
    >>Talk to |cRXP_FRIENDLY_Lars|r
    .turnin 226 >>Turn in Wolves at Our Heels
    .target Lars
step
    .goto 1431,45.12,67.03
    >>Talk to |cRXP_FRIENDLY_Watcher Dodds|r
    .turnin 245 >>Turn in Eight-Legged Menaces
    .target Watcher Dodds
step
    .goto 1431,51.19,64.09
    >>Kill |cRXP_ENEMY_Young Black Ravager|r
    *Defeat 10 Young Black Ravagers and 7 Black Ravagers then return to Sirra Von'Indi in Darkshire for more information.
    .complete 96137,1 --Ira's Dagger
    .mob Young Black Ravager
step
    .goto 1431,49.85,77.71
    >>Click the |cRXP_PICK_Mound of loose dirt|r
    .turnin 95 >>Turn in Sven's Revenge
    .accept 230 >>Accept Sven's Camp
step
    .goto 1431,72.62,47.62
    >>Talk to |cRXP_FRIENDLY_Sirra Von'Indi|r
    .turnin 96139 >>Turn in The Valor Family
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
    .accept 93 >>Accept Dusky Crab Cakes
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
    .goto 1431,66.1,28.73
    >>Collect |cRXP_LOOT_[Vial of Spider Venom]|r from |cRXP_ENEMY_Venom Web Spider|r, |cRXP_ENEMY_Pygmy Venom Web Spider|r, |cRXP_ENEMY_Green Recluse|r. Kill |cRXP_ENEMY_Black Ravager|r
    *Bring 10 Ghoul Fangs, 10 Skeleton Fingers and 5 Vials of Spider Venom to Madame Eva in Darkshire.
    *Defeat 10 Young Black Ravagers and 7 Black Ravagers then return to Sirra Von'Indi in Darkshire for more information.
    .complete 101,2 --The Totem of Infliction
    .complete 96137,2 --Ira's Dagger
    .mob Venom Web Spider
    .mob Pygmy Venom Web Spider
    .mob Black Ravager
step
    .goto 1431,75.79,45.32
    >>Talk to |cRXP_FRIENDLY_Madame Eva|r
    .turnin 101 >>Turn in The Totem of Infliction
    .target Madame Eva
step
    .goto 1431,72.62,47.62
    >>Talk to |cRXP_FRIENDLY_Sirra Von'Indi|r
    .turnin 96137 >>Turn in Ira's Dagger
    .target Sirra Von'Indi
step
    .goto 1431,31.32,49.46
    >>Collect |cRXP_LOOT_[Gooey Spider Leg]|r from |cRXP_ENEMY_Highland Spider|r, |cRXP_ENEMY_Highland Lurker|r, |cRXP_ENEMY_Green Recluse|r
    *Gather 6 Gooey Spider Legs and bring them to Chef Grual in Darkshire.
    .complete 93,1 --Dusky Crab Cakes
    .mob Highland Spider
    .mob Highland Lurker
step
    .goto 1431,20.65,46.4
    >>Kill |cRXP_ENEMY_Skeletal Fiend|r. Kill |cRXP_ENEMY_Skeletal Horror|r
    *Commander Althea Ebonlocke of Darkshire wants you to kill 15 Skeletal Fiends and 15 Skeletal Horrors.
    .complete 57,1 --The Night Watch
    .complete 57,2 --The Night Watch
    .mob Skeletal Fiend
    .mob Skeletal Horror
step
    .goto 1431,28.11,31.46
    >>Talk to |cRXP_FRIENDLY_Abercrombie|r
    .turnin 157 >>Turn in Deliver the Thread
    .accept 158 >>Accept Zombie Juice
    .target Abercrombie
step
    .goto 1431,7.78,34.07
    >>Talk to |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 230 >>Turn in Sven's Camp
    .accept 262 >>Accept The Shadowy Figure
    .target Sven Yorgen
step
    .goto 1431,73.75,43.48
    >>Talk to |cRXP_FRIENDLY_Chef Grual|r
    .turnin 93 >>Turn in Dusky Crab Cakes
    .target Chef Grual
step
    .goto 1431,73.78,44.49
    >>Talk to |cRXP_FRIENDLY_Tavernkeep Smitts|r
    .turnin 158 >>Turn in Zombie Juice
    .accept 156 >>Accept Gather Rot Blossoms
    .target Tavernkeep Smitts
step
    .goto 1431,73.75,43.48
    >>Talk to |cRXP_FRIENDLY_Chef Grual|r
    .accept 240 >>Accept Return to Jitters
    .target Chef Grual
step
    .goto 1431,75.79,45.32
    >>Talk to |cRXP_FRIENDLY_Madame Eva|r
    .turnin 262 >>Turn in The Shadowy Figure
    .accept 265 >>Accept The Shadowy Search Continues
    .target Madame Eva
step
    .goto 1431,73.54,46.82
    >>Talk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .turnin 57 >>Turn in The Night Watch
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
    .goto 1431,20.65,46.4
    >>Collect |cRXP_LOOT_[Rot Blossom]|r from |cRXP_ENEMY_Skeletal Fiend (Enraged Form)|r, |cRXP_ENEMY_Skeletal Fiend|r
    *Gather 8 Rot Blossoms and bring them to Tavernkeep Smitts in Darkshire.
    .complete 156,1 --Gather Rot Blossoms
    .mob Skeletal Fiend (Enraged Form)
    .mob Skeletal Fiend
step
    .goto 1431,18.38,56.37
    >>Talk to |cRXP_FRIENDLY_Jitters|r
    .turnin 240 >>Turn in Return to Jitters
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
    .target Abercrombie
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
    .goto 1453,56.31,53.99
    >>Talk to |cRXP_FRIENDLY_Orphan Matron Nightingale|r
    .accept 95161 >>Accept Remember That I Love You
    .target Orphan Matron Nightingale
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
    .goto 1431,73.03,44.42
    >>Talk to |cRXP_FRIENDLY_Avette Fellwood|r
    .turnin 95161 >>Turn in Remember That I Love You
    .target Avette Fellwood
step
    .goto 1453,59.73,33.78
    >>Talk to |cRXP_FRIENDLY_Grimand Elmore|r
    .turnin 322 >>Turn in Blessed Arm
    .accept 325 >>Accept Armed and Ready
    .target Grimand Elmore
step
    .goto 1431,7.78,34.07
    >>Talk to |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 325 >>Turn in Armed and Ready
    .target Sven Yorgen
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 20-29
#name 26-27 Blackfathom Deeps
#displayname 26-27 Blackfathom Deeps
#next 27-28 The Stockade
step
    +|cRXP_WARN_Blackfathom Deeps|r (levels 24-32). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *Pre-quests in this guide: The Corruption Abroad
step
    #completewith next
    +|cRXP_WARN_Pre-quests|r
step
    .goto 1453,36.24,67.61
    >>Talk to |cRXP_FRIENDLY_Argos Nightwhisper|r
    .accept 3765 >>Accept The Corruption Abroad
    .target Argos Nightwhisper
step
    .goto 1439,38.33,43.04
    >>Talk to |cRXP_FRIENDLY_Gershala Nightwhisper|r
    .turnin 3765 >>Turn in The Corruption Abroad
    .target Gershala Nightwhisper
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1439,38.33,43.04
    >>Talk to |cRXP_FRIENDLY_Gershala Nightwhisper|r
    .accept 1275 >>Accept Researching the Corruption
    .target Gershala Nightwhisper
step
    .goto 1455,50.83,5.62
    >>Talk to |cRXP_FRIENDLY_Gerrig Bonegrip|r
    .accept 971 >>Accept Knowledge in the Deeps
    .target Gerrig Bonegrip
step
    .goto 1457,55.36,25.03
    >>Talk to |cRXP_FRIENDLY_Dawnwatcher Shaedlass|r
    .accept 1198 >>Accept In Search of Thaelrid
    .target Dawnwatcher Shaedlass
step
    .goto 1457,55.24,23.99
    >>Talk to |cRXP_FRIENDLY_Argent Guard Manados|r
    .accept 1199 >>Accept Twilight Falls
    .target Argent Guard Manados
step
    #completewith next
    +|cRXP_WARN_Run the dungeon|r
step
    .goto 1440,14.5,14.2
    >>Inside Blackfathom Deeps: these quests start from a drop or an object in the dungeon
    .accept 78916 >>Accept The Heart of the Void
step
    .goto 1440,14.5,14.2
    >>Enter |cRXP_WARN_Blackfathom Deeps|r and run it with a group. Quest goals inside:
    *Knowledge in the Deeps: Bring the Lorgalis Manuscript to Gerrig Bonegrip in the Forlorn Cavern in Ironforge.
    *Twilight Falls: Bring 10 Twilight Pendants to Argent Guard Manados in Darnassus.
    *Researching the Corruption: Gershala Nightwhisper in Auberdine wants 8 Corrupt Brain stems.
    .complete 971,1 --Knowledge in the Deeps
    .complete 1199,1 --Twilight Falls
    .complete 1275,1 --Researching the Corruption
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1455,50.83,5.62
    >>Talk to |cRXP_FRIENDLY_Gerrig Bonegrip|r
    .turnin 971 >>Turn in Knowledge in the Deeps
    .target Gerrig Bonegrip
step
    .goto 1457,55.36,25.03
    >>Talk to |cRXP_FRIENDLY_Dawnwatcher Shaedlass|r
    .turnin 1198 >>Turn in In Search of Thaelrid
    .target Dawnwatcher Shaedlass
step
    .goto 1457,56.16,24.39
    >>Talk to |cRXP_FRIENDLY_Dawnwatcher Selgorm|r
    .turnin 78916 >>Turn in The Heart of the Void
    .target Dawnwatcher Selgorm
step
    .goto 1457,55.24,23.99
    >>Talk to |cRXP_FRIENDLY_Argent Guard Manados|r
    .turnin 1199 >>Turn in Twilight Falls
    .target Argent Guard Manados
step
    .goto 1439,38.33,43.04
    >>Talk to |cRXP_FRIENDLY_Gershala Nightwhisper|r
    .turnin 1275 >>Turn in Researching the Corruption
    .target Gershala Nightwhisper
step
    #completewith next
    +|cRXP_WARN_Run the dungeon (run 2)|r
step
    .goto 1440,14.5,14.2
    >>Inside Blackfathom Deeps: these quests start from a drop or an object in the dungeon
    .accept 1200 >>Accept Blackfathom Villainy
step
    .goto 1440,14.5,14.2
    >>Enter |cRXP_WARN_Blackfathom Deeps|r and run it with a group. Quest goals inside:
    *Blackfathom Villainy: Bring the head of Twilight Lord Kelris to Dawnwatcher Selgorm in Darnassus.
    .complete 1200,1 --Blackfathom Villainy
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1457,56.16,24.39
    >>Talk to |cRXP_FRIENDLY_Dawnwatcher Selgorm|r
    .turnin 1200 >>Turn in Blackfathom Villainy
    .target Dawnwatcher Selgorm
step
    .goto 1440,14.5,14.2
    +Dungeon entrance: Blackfathom Deeps. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 20-29
#name 27-28 The Stockade
#displayname 27-28 The Stockade
#next 28-30 Wetlands
step
    +|cRXP_WARN_The Stockade|r (levels 24-32). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *Pre-quests in this guide: The Dark Iron War, The Unsent Letter, Bazil Thredd
step
    #completewith next
    +|cRXP_WARN_Pre-quests|r
step
    .goto 1453,57.74,47.86
    >>Talk to |cRXP_FRIENDLY_Baros Alexston|r
    .accept 389 >>Accept Bazil Thredd
    .target Baros Alexston
step
    .goto 1453,51.49,69.38
    >>Talk to |cRXP_FRIENDLY_Warden Thelwater|r
    .turnin 389 >>Turn in Bazil Thredd
    .target Warden Thelwater
step
    .goto 1437,49.67,18.23
    >>Talk to |cRXP_FRIENDLY_Motley Garmason|r
    .accept 303 >>Accept The Dark Iron War
    .target Motley Garmason
step
    .goto 1437,48.05,17.3
    >>Kill |cRXP_ENEMY_Dark Iron Dwarf|r. Kill |cRXP_ENEMY_Dark Iron Tunneler|r. Kill |cRXP_ENEMY_Dark Iron Saboteur|r
    *Motley Garmason at Dun Modr wants you to kill 10 Dark Iron Dwarves, 5 Dark Iron Tunnelers, 5 Dark Iron Saboteurs and 5 Dark Iron Demolitionists.
    *|cRXP_WARN_Elite targets here. Group up or skip.|r
    .complete 303,1 --The Dark Iron War
    .complete 303,2 --The Dark Iron War
    .complete 303,3 --The Dark Iron War
    .mob Dark Iron Dwarf
    .mob Dark Iron Tunneler
    .mob Dark Iron Saboteur
step
    .goto 1437,60.1,24.36
    >>Kill |cRXP_ENEMY_Dark Iron Demolitionist|r
    *Motley Garmason at Dun Modr wants you to kill 10 Dark Iron Dwarves, 5 Dark Iron Tunnelers, 5 Dark Iron Saboteurs and 5 Dark Iron Demolitionists.
    *|cRXP_WARN_Elite targets here. Group up or skip.|r
    .complete 303,4 --The Dark Iron War
    .mob Dark Iron Demolitionist
step
    .goto 1437,49.67,18.23
    >>Talk to |cRXP_FRIENDLY_Motley Garmason|r
    .turnin 303 >>Turn in The Dark Iron War
    .target Motley Garmason
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1437,49.67,18.23
    >>Talk to |cRXP_FRIENDLY_Motley Garmason|r
    .accept 378 >>Accept The Fury Runs Deep
    .target Motley Garmason
step
    .goto 1431,71.92,47.79
    >>Talk to |cRXP_FRIENDLY_Councilman Millstipe|r
    .accept 377 >>Accept Crime and Punishment
    .target Councilman Millstipe
step
    .goto 1433,21.17,46.58
    >>Talk to |cRXP_FRIENDLY_Guard Berton|r
    .accept 386 >>Accept What Comes Around...
    .target Guard Berton
step
    .goto 1453,51.49,69.38
    >>Talk to |cRXP_FRIENDLY_Warden Thelwater|r
    .accept 387 >>Accept Quell The Uprising
    .accept 391 >>Accept The Stockade Riots
    .target Warden Thelwater
step
    .goto 1453,73.78,54.65
    >>Talk to |cRXP_FRIENDLY_Nikova Raskol|r
    .accept 388 >>Accept The Color of Blood
    .target Nikova Raskol
step
    #completewith next
    +|cRXP_WARN_Run the dungeon|r
step
    .goto 1453,52.41,70.01
    >>Enter |cRXP_WARN_The Stockade|r and run it with a group. Quest goals inside:
    *Crime and Punishment: Councilman Millstipe of Darkshire wants you to bring him the hand of Dextren Ward.
    *The Fury Runs Deep: Motley Garmason wants Kam Deepfury's head brought to him at Dun Modr.
    *What Comes Around...: Bring the head of Targorr the Dread to Guard Berton in Lakeshire.
    *Quell The Uprising: Warden Thelwater of Stormwind wants you to kill 10 Defias Prisoners, 8 Defias Convicts, and 8 Defias Insurgents in The Stockade.
    *The Color of Blood: Nikova Raskol of Stormwind wants you to collect 10 Red Wool Bandanas.
    *The Stockade Riots: Kill Bazil Thredd and bring his head back to Warden Thelwater at the Stockade.
    .complete 377,1 --Crime and Punishment
    .complete 378,1 --The Fury Runs Deep
    .complete 386,1 --What Comes Around...
    .complete 387,1 --Quell The Uprising
    .complete 387,2 --Quell The Uprising
    .complete 387,3 --Quell The Uprising
    .complete 388,1 --The Color of Blood
    .complete 391,1 --The Stockade Riots
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1453,51.49,69.38
    >>Talk to |cRXP_FRIENDLY_Warden Thelwater|r
    .turnin 387 >>Turn in Quell The Uprising
    .turnin 391 >>Turn in The Stockade Riots
    .target Warden Thelwater
step
    .goto 1453,73.78,54.65
    >>Talk to |cRXP_FRIENDLY_Nikova Raskol|r
    .turnin 388 >>Turn in The Color of Blood
    .target Nikova Raskol
step
    .goto 1431,71.92,47.79
    >>Talk to |cRXP_FRIENDLY_Councilman Millstipe|r
    .turnin 377 >>Turn in Crime and Punishment
    .target Councilman Millstipe
step
    .goto 1437,49.67,18.23
    >>Talk to |cRXP_FRIENDLY_Motley Garmason|r
    .turnin 378 >>Turn in The Fury Runs Deep
    .target Motley Garmason
step
    .goto 1433,21.17,46.58
    >>Talk to |cRXP_FRIENDLY_Guard Berton|r
    .turnin 386 >>Turn in What Comes Around...
    .target Guard Berton
step
    .goto 1453,52.41,70.01
    +Dungeon entrance: The Stockade. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 20-29
#name 28-30 Wetlands
#displayname 28-30 Wetlands
#next 30-31 Excavation Site: Wetlands
step
    .zone 1437 >>Travel to Wetlands
    *Suggested level for this part: 28-30
step
    .goto 1437,10.9,59.64
    >>Talk to |cRXP_FRIENDLY_First Mate Fitzsimmons|r
    .accept 288 >>Accept The Third Fleet
    .target First Mate Fitzsimmons
step
    .goto 1437,9.96,57.96
    >>Talk to |cRXP_FRIENDLY_Red Jack Flint|r
    .accept 1132 >>Accept Fiora Longears
    .target Red Jack Flint
step
    .goto 1437,9.86,57.49
    >>Talk to |cRXP_FRIENDLY_Captain Stoutfist|r
    .accept 98221 >>Accept From the Ashes
    .target Captain Stoutfist
step
    .goto 1437,9.86,57.49
    >>Talk to |cRXP_FRIENDLY_Captain Stoutfist|r
    .turnin 98221 >>Turn in From the Ashes
    .target Captain Stoutfist
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
    .goto 1437,9.86,57.49
    >>Talk to |cRXP_FRIENDLY_Captain Stoutfist|r
    .turnin 473 >>Turn in Report to Captain Stoutfist
    .accept 464 >>Accept War Banners
    .target Captain Stoutfist
step
    .goto 1437,38.18,50.89
    >>Talk to |cRXP_FRIENDLY_Ormer Ironbraid|r
    .accept 295 >>Accept Ormer's Revenge
    .target Ormer Ironbraid
step
    .goto 1437,38.81,52.39
    >>Talk to |cRXP_FRIENDLY_Prospector Whelgar|r
    .accept 299 >>Accept Uncovering the Past
    .target Prospector Whelgar
step
    .goto 1437,35.9,49.44
    >>Kill |cRXP_ENEMY_Mottled Scytheclaw|r. Kill |cRXP_ENEMY_Mottled Razormaw|r. Collect |cRXP_LOOT_[Ados Fragment]|r from |cRXP_PICK_Ancient Relic|r. Collect |cRXP_LOOT_[Modr Fragment]|r from |cRXP_PICK_Ancient Relic|r. Collect |cRXP_LOOT_[Golm Fragment]|r from |cRXP_PICK_Ancient Relic|r. Collect |cRXP_LOOT_[Neru Fragment]|r from |cRXP_PICK_Loose Soil|r
    *Ormer Ironbraid wants you to kill 10 Mottled Scytheclaw raptors and 10 Mottled Razormaw raptors then return to him at the Whelgar Excavation Site.
    *Prospector Whelgar wants you to scour the excavation site in search of the 4 missing tablet fragments: Ados, Modr, Golm and Neru.
    .complete 295,1 --Ormer's Revenge
    .complete 295,2 --Ormer's Revenge
    .complete 299,1 --Uncovering the Past
    .complete 299,2 --Uncovering the Past
    .complete 299,3 --Uncovering the Past
    .complete 299,4 --Uncovering the Past
    .mob Mottled Scytheclaw
    .mob Mottled Razormaw
step
    .goto 1437,38.18,50.89
    >>Talk to |cRXP_FRIENDLY_Ormer Ironbraid|r
    .turnin 295 >>Turn in Ormer's Revenge
    .target Ormer Ironbraid
step
    .goto 1437,38.81,52.39
    >>Talk to |cRXP_FRIENDLY_Prospector Whelgar|r
    .turnin 299 >>Turn in Uncovering the Past
    .target Prospector Whelgar
step
    .goto 1437,38.18,50.89
    >>Talk to |cRXP_FRIENDLY_Ormer Ironbraid|r
    .accept 296 >>Accept Ormer's Revenge
    .target Ormer Ironbraid
step
    .goto 1437,38.81,52.39
    >>Talk to |cRXP_FRIENDLY_Prospector Whelgar|r
    .accept 98216 >>Accept Understanding Our Present
    .target Prospector Whelgar
step
    .goto 1437,33.26,51.51
    >>Collect |cRXP_LOOT_[Sarltooth's Talon]|r from |cRXP_ENEMY_Sarltooth|r. Collect |cRXP_LOOT_[Titanic Keystone]|r from |cRXP_ENEMY_Goaz Warder|r
    *Ormer Ironbraid at the Whelgar Excavation Site wants you to kill Sarltooth and return to him with one of his talons once the task is fulfilled.
    *Use the Goaz Stone near the Goaz Warder and bring its Titanic Keystone back to Prospector Whelgar.
    .complete 296,1 --Ormer's Revenge
    .complete 98216,1 --Understanding Our Present
    .mob Sarltooth
    .mob Goaz Warder
step
    .goto 1437,38.18,50.89
    >>Talk to |cRXP_FRIENDLY_Ormer Ironbraid|r
    .turnin 296 >>Turn in Ormer's Revenge
    .target Ormer Ironbraid
step
    .goto 1437,38.81,52.39
    >>Talk to |cRXP_FRIENDLY_Prospector Whelgar|r
    .turnin 98216 >>Turn in Understanding Our Present
    .accept 98310 >>Accept Gleaning Our Future
    .target Prospector Whelgar
step
    .goto 1437,49.36,42.13
    >>Talk to |cRXP_FRIENDLY_Howin Kindfeather|r
    .accept 98245 >>Accept Razormaw Needling
    .accept 98246 >>Accept Trying Times
    .target Howin Kindfeather
step
    >>Collect |cRXP_LOOT_[Perfect Razormaw Egg]|r
    *Gather 12 Perfect Razormaw Eggs for Howin Kindfeather.
    .complete 98246,1 --Trying Times
step
    .goto 1437,49.36,42.13
    >>Talk to |cRXP_FRIENDLY_Howin Kindfeather|r
    .turnin 98246 >>Turn in Trying Times
    .target Howin Kindfeather
step
    .goto 1437,58.85,45.16
    >>Click the |cRXP_PICK_Dragonmaw Armaments|r
    .accept 98293 >>Accept Forced Disarmament
step
    .goto 1437,58.85,45.16
    >>Collect |cRXP_LOOT_[Dragonmaw War Banner]|r from |cRXP_ENEMY_Dragonmaw Infiltrator|r, |cRXP_ENEMY_Dragonmaw Soulbinder|r, |cRXP_ENEMY_Dragonmaw Reclaimer|r. Collect |cRXP_LOOT_[Dragonmaw Armaments]|r
    *Bring 8 Dragonmaw War Banners to Captain Stoutfist.
    *Collect 30 Dragonmaw Armaments in Dragonmaw Retreat, then bring them to Captain Stoutfist in Menethil Keep.
    .complete 464,1 --War Banners
    .complete 98293,1 --Forced Disarmament
    .mob Dragonmaw Infiltrator
    .mob Dragonmaw Soulbinder
step
    .goto 1437,53.51,54.58
    >>Click the |cRXP_PICK_Tattered Spellbook|r
    .accept 98223 >>Accept Old Habits
step
    .goto 1437,73.72,46.04
    >>Collect |cRXP_LOOT_[Heart of Ados]|r from |cRXP_ENEMY_Ados|r
    *Use the Goaz Stone near Ados, Modr, Golm, and Neru and bring their hearts back to Prospector Whelgar.
    .complete 98310,1 --Gleaning Our Future
    .mob Ados
step
    .goto 1437,68.41,33.13
    >>Collect |cRXP_LOOT_[Razormaw Incisor]|r from |cRXP_ENEMY_Highland Razormaw|r, |cRXP_ENEMY_Elder Razormaw|r
    *Collect 10 Razormaw Incisors for Howin Kindfeather.
    .complete 98245,1 --Razormaw Needling
    .mob Highland Razormaw
    .mob Elder Razormaw
step
    .goto 1437,49.36,42.13
    >>Talk to |cRXP_FRIENDLY_Howin Kindfeather|r
    .turnin 98245 >>Turn in Razormaw Needling
    .target Howin Kindfeather
step
    .goto 1437,50.57,20.14
    >>Collect |cRXP_LOOT_[Heart of Modr]|r from |cRXP_ENEMY_Modr|r. Collect |cRXP_LOOT_[Heart of Neru]|r from |cRXP_ENEMY_Neru|r
    *Use the Goaz Stone near Ados, Modr, Golm, and Neru and bring their hearts back to Prospector Whelgar.
    .complete 98310,2 --Gleaning Our Future
    .complete 98310,4 --Gleaning Our Future
    .mob Modr
    .mob Neru
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
    >>Collect |cRXP_LOOT_[Stolen Explosives]|r
    *Retrieve 3 Stolen Explosives from the Dark Iron Dwarf camps.
    .complete 88756,1 --Bring Back a Bang
step
    .goto 1437,50.05,18.17
    >>Talk to |cRXP_FRIENDLY_Ashlan Stonesmirk|r
    .turnin 88756 >>Turn in Bring Back a Bang
    .target Ashlan Stonesmirk
step
    .goto 1437,45.67,16.68
    >>Talk to |cRXP_FRIENDLY_Captive Fire Elemental|r
    .accept 87491 >>Accept Spark of Freedom
    .target Captive Fire Elemental
step
    .goto 1437,49.85,18.09
    >>Talk to |cRXP_FRIENDLY_Roggo Harlbarrow|r
    .turnin 87491 >>Turn in Spark of Freedom
    .target Roggo Harlbarrow
step
    .goto 1437,51.28,7.95
    >>Click the |cRXP_PICK_Ebenezer Rustlocke's Corpse|r
    .turnin 631 >>Turn in The Thandol Span
    .accept 632 >>Accept The Thandol Span
step
    .goto 1437,49.9,18.24
    >>Talk to |cRXP_FRIENDLY_Rhag Garmason|r
    .turnin 632 >>Turn in The Thandol Span
    .accept 633 >>Accept The Thandol Span
    .target Rhag Garmason
step
    .goto 1437,65.11,69.83
    >>Collect |cRXP_LOOT_[Heart of Golm]|r from |cRXP_ENEMY_Golm|r
    *Use the Goaz Stone near Ados, Modr, Golm, and Neru and bring their hearts back to Prospector Whelgar.
    .complete 98310,3 --Gleaning Our Future
    .mob Golm
step
    .goto 1437,38.81,52.39
    >>Talk to |cRXP_FRIENDLY_Prospector Whelgar|r
    .turnin 98310 >>Turn in Gleaning Our Future
    .target Prospector Whelgar
step
    .goto 1437,9.86,57.49
    >>Talk to |cRXP_FRIENDLY_Captain Stoutfist|r
    .turnin 464 >>Turn in War Banners
    .turnin 98293 >>Turn in Forced Disarmament
    .turnin 98223 >>Turn in Old Habits
    .accept 465 >>Accept Nek'rosh's Gambit
    .target Captain Stoutfist
step
    .goto 1437,47.46,47.01
    >>Click the |cRXP_PICK_Dragonmaw Catapult|r
    .turnin 465 >>Turn in Nek'rosh's Gambit
    .accept 474 >>Accept Defeat Nek'rosh
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
    .accept 98230 >>Accept This Land Was Their Land
    .target Captain Stoutfist
step
    .goto 1437,49.36,42.13
    >>Talk to |cRXP_FRIENDLY_Howin Kindfeather|r
    .turnin 98230 >>Turn in This Land Was Their Land
    .target Howin Kindfeather
step
    .goto 1445,66.46,45.15
    >>Talk to |cRXP_FRIENDLY_Fiora Longears|r
    .turnin 1132 >>Turn in Fiora Longears
    .target Fiora Longears
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
step
    .goto 1413,49.59,84.3
    >>Collect |cRXP_LOOT_[Flagon of Mead]|r from |cRXP_ENEMY_Malgin Barleybrew|r
    *Buy First Mate Fitzsimmons a Flagon of Mead.
    .complete 288,1 --The Third Fleet
    .mob Malgin Barleybrew
step
    .goto 1437,10.9,59.64
    >>Talk to |cRXP_FRIENDLY_First Mate Fitzsimmons|r
    .turnin 288 >>Turn in The Third Fleet
    .accept 289 >>Accept The Cursed Crew
    .target First Mate Fitzsimmons
step
    .goto 1437,14.03,28.9
    >>Kill |cRXP_ENEMY_Cursed Sailor|r. Kill |cRXP_ENEMY_Cursed Marine|r. Collect |cRXP_LOOT_[Snellig's Snuffbox]|r from |cRXP_ENEMY_First Mate Snellig|r
    *Kill 13 Cursed Sailors, 5 Cursed Marines and First Mate Snellig. Bring Snellig's Snuffbox to First Mate Fitzsimmons in Menethil Harbor.
    .complete 289,1 --The Cursed Crew
    .complete 289,2 --The Cursed Crew
    .complete 289,3 --The Cursed Crew
    .mob Cursed Sailor
    .mob Cursed Marine
    .mob First Mate Snellig
step
    .goto 1437,10.9,59.64
    >>Talk to |cRXP_FRIENDLY_First Mate Fitzsimmons|r
    .turnin 289 >>Turn in The Cursed Crew
    .accept 290 >>Accept Lifting the Curse
    .target First Mate Fitzsimmons
step
    .goto 1437,15.45,23.61
    >>Collect |cRXP_LOOT_[Intrepid Strongbox Key]|r from |cRXP_ENEMY_Captain Halyndor|r
    *Get the Intrepid Strongbox Key from Captain Halyndor.
    .complete 290,1 --Lifting the Curse
    .mob Captain Halyndor
step
    .goto 1437,14.38,24.04
    >>Click the |cRXP_PICK_Intrepid's Locked Strongbox|r
    .turnin 290 >>Turn in Lifting the Curse
    .accept 292 >>Accept The Eye of Paleth
step
    .goto 1437,10.58,60.59
    >>Talk to |cRXP_FRIENDLY_Glorin Steelbrow|r
    .turnin 292 >>Turn in The Eye of Paleth
    .accept 293 >>Accept Cleansing the Eye
    .target Glorin Steelbrow
step
    .goto 1453,50.31,45.47
    >>Talk to |cRXP_FRIENDLY_Archbishop Benedictus|r
    .turnin 293 >>Turn in Cleansing the Eye
    .target Archbishop Benedictus
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 30-39
#name 30-31 Excavation Site: Wetlands
#displayname 30-31 Excavation Site: Wetlands
#next 31-32 City of Dalaran
step
    +|cRXP_WARN_Excavation Site: Wetlands|r (levels 26-31). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *New Forever dungeon above Whelgar's Excavation. Take the winding path up left of Thelgen Rock to the meeting stone.
    *Pre-quests in this guide: Blisters on The Land, Tramping Paws, Fire Taboo, Young Crocolisk Skins
step
    #completewith next
    +|cRXP_WARN_Pre-quests|r
step
    .goto 1437,8.55,55.74
    >>Talk to |cRXP_FRIENDLY_James Halloran|r
    .accept 484 >>Accept Young Crocolisk Skins
    .target James Halloran
step
    .goto 1437,56.37,40.4
    >>Talk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
    .accept 276 >>Accept Tramping Paws
    .target Rethiel the Greenwarden
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
    .goto 1437,35.43,31.55
    >>Collect |cRXP_LOOT_[Crude Flint]|r from |cRXP_ENEMY_Gnoll Overseer|r, |cRXP_ENEMY_Mosshide Fenrunner|r, |cRXP_ENEMY_Mosshide Trapper|r
    *Bring Rethiel the Greenwarden 9 Crude Flints.
    .complete 277,1 --Fire Taboo
    .mob Gnoll Overseer
    .mob Mosshide Fenrunner
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
    .goto 1437,8.55,55.74
    >>Talk to |cRXP_FRIENDLY_James Halloran|r
    .turnin 484 >>Turn in Young Crocolisk Skins
    .target James Halloran
step
    .goto 1437,56.37,40.4
    >>Talk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
    .turnin 275 >>Turn in Blisters on The Land
    .target Rethiel the Greenwarden
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1437,56.37,40.4
    >>Talk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
    .accept 95646 >>Accept Horrors in the Highland
    .target Rethiel the Greenwarden
step
    .goto 1437,11.88,58.82
    >>Talk to |cRXP_FRIENDLY_Caitlin Grassman|r
    .accept 95647 >>Accept Lost in the Thicket Things
    .target Caitlin Grassman
step
    .goto 1437,8.55,55.74
    >>Talk to |cRXP_FRIENDLY_James Halloran|r
    .accept 98815 >>Accept Highland Hides
    .target James Halloran
step
    .goto 1440,34.98,48.46
    >>Talk to |cRXP_FRIENDLY_Llana|r
    .accept 95737 >>Accept Seeking Caitlin
    .target Llana
step
    .goto 1433,25.79,46.44
    >>Talk to |cRXP_FRIENDLY_Dorin Songblade|r
    .accept 95772 >>Accept Songblade Search
    .target Dorin Songblade
step
    .goto 1437,48.43,61.69
    >>Collect |cRXP_LOOT_[Horrible Rootcore]|r from |cRXP_ENEMY_Highland Horror|r
    *Kill a Highland Horror within Excavation Sites and bring its root core to Rethiel the Greenwarden in the Wetlands.
    .complete 95646,1 --Horrors in the Highland
    .mob Highland Horror
step
    #completewith next
    +|cRXP_WARN_Run the dungeon|r
step
    .goto 1437,48.1,56.5
    >>Inside Excavation Site: Wetlands: these quests start from a drop or an object in the dungeon
    .accept 95809 >>Accept Heartwoven
step
    .goto 1437,48.1,56.5
    >>Loot |cRXP_LOOT_[Titan Relic]|r from |cRXP_ENEMY_Relic Guardian|r, then click it to start the quest
    .accept 95810 >>Accept Lost Relic Carry
    .use 270865
    .mob Relic Guardian
step
    .goto 1437,48.1,56.5
    >>Enter |cRXP_WARN_Excavation Site: Wetlands|r and run it with a group. Quest goals inside:
    *Lost Relic Carry: Bring the Titan Relic to Prospector Whelgar in the Wetlands excavation site.
    *Highland Hides: Return 4 Thicket Raptor Hides to James Halloran, the tanner, in Menethil Harbor.
    .complete 95810,1 --Lost Relic Carry
    .complete 98815,1 --Highland Hides
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1437,38.81,52.39
    >>Talk to |cRXP_FRIENDLY_Prospector Whelgar|r
    .turnin 95810 >>Turn in Lost Relic Carry
    .target Prospector Whelgar
step
    .goto 1437,56.37,40.4
    >>Talk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
    .turnin 95646 >>Turn in Horrors in the Highland
    .target Rethiel the Greenwarden
step
    .goto 1437,11.88,58.82
    >>Talk to |cRXP_FRIENDLY_Caitlin Grassman|r
    .turnin 95647 >>Turn in Lost in the Thicket Things
    .turnin 95737 >>Turn in Seeking Caitlin
    .turnin 95809 >>Turn in Heartwoven
    .target Caitlin Grassman
step
    .goto 1437,8.55,55.74
    >>Talk to |cRXP_FRIENDLY_James Halloran|r
    .turnin 98815 >>Turn in Highland Hides
    .target James Halloran
step
    .goto 1433,25.79,46.44
    >>Talk to |cRXP_FRIENDLY_Dorin Songblade|r
    .turnin 95772 >>Turn in Songblade Search
    .target Dorin Songblade
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1437,38.81,52.39
    >>Talk to |cRXP_FRIENDLY_Prospector Whelgar|r
    .accept 98824 >>Accept Prehistoric Prism
    .target Prospector Whelgar
step
    #completewith next
    +|cRXP_WARN_Run the dungeon (run 2)|r
step
    .goto 1437,48.1,56.5
    >>Inside Excavation Site: Wetlands: these quests start from a drop or an object in the dungeon
    .accept 95795 >>Accept Fallen in the Fen
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1433,25.79,46.44
    >>Talk to |cRXP_FRIENDLY_Dorin Songblade|r
    .turnin 95795 >>Turn in Fallen in the Fen
    .target Dorin Songblade
step
    .goto 1455,69.93,18.55
    >>Talk to |cRXP_FRIENDLY_High Explorer Magellas|r
    .turnin 98824 >>Turn in Prehistoric Prism
    .target High Explorer Magellas
step
    .goto 1437,48.1,56.5
    +Dungeon entrance: Excavation Site: Wetlands. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 30-39
#name 31-32 City of Dalaran
#displayname 31-32 City of Dalaran
#next 32-33 Gnomeregan
step
    +|cRXP_WARN_City of Dalaran|r (levels 28-33). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *New Forever dungeon. KEY NEEDED: one player with the Dalaran Sewer Key opens it for the group; the key chain is in this guide. Enter through the sewers on the Silverpine side of Lordamere Lake.
    *Pre-quests in this guide: The Orphan, Into the Darkness, A Heavy Responsibility, Escaping the Shadows
step
    #completewith next
    +|cRXP_WARN_Pre-quests|r
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
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1419,65.23,15.33
    >>Talk to |cRXP_FRIENDLY_Sergeant Danneth|r
    .accept 96812 >>Accept Thicker Than Water
    .target Sergeant Danneth
step
    .goto 1424,48.33,60.04
    >>Talk to |cRXP_FRIENDLY_Emissary Jacques|r
    .accept 92432 >>Accept An Alarming Request
    .target Emissary Jacques
step
    .goto 1453,31.5,62.61
    >>Talk to |cRXP_FRIENDLY_Shylamiir|r
    .accept 92456 >>Accept A Green Sample
    .target Shylamiir
step
    .goto 1453,48.71,87.62
    >>Talk to |cRXP_FRIENDLY_High Sorcerer Andromath|r
    .accept 92489 >>Accept Power Overwhelming
    .target High Sorcerer Andromath
step
    .goto 1416,14.15,60.05
    >>Talk to |cRXP_FRIENDLY_Archmage Celindra|r
    .accept 96603 >>Accept Unstable Magic
    .target Archmage Celindra
step
    .goto 1416,18.51,65.68
    >>Talk to |cRXP_FRIENDLY_Arille Azuregaze|r
    .accept 96609 >>Accept A Taste of Home
    .target Arille Azuregaze
step
    .goto 1416,20.3,64.2
    >>Kill |cRXP_ENEMY_Arcanic Enigma|r
    *Slay the Mana Elemental in the City of Dalaran for High Sorcerer Andromath in Stormwind City.
    *|cRXP_WARN_Elite targets here. Group up or skip.|r
    .complete 92489,1 --Power Overwhelming
    .mob Arcanic Enigma
step
    .goto 1422,45.12,68.75
    >>Collect |cRXP_LOOT_[Mote of Unstable Magic]|r from |cRXP_ENEMY_Skeletal Warlord|r, |cRXP_ENEMY_Flesh Golem|r, |cRXP_ENEMY_Scarlet Executioner|r
    *Bring 10 Motes of Unstable Magic to Archmage Celindra in Dalaran.
    .complete 96603,1 --Unstable Magic
    .mob Skeletal Warlord
    .mob Flesh Golem
step
    .goto 1447,66.42,28.93
    >>Collect |cRXP_LOOT_[Silvermoon Shimmerwine]|r from |cRXP_ENEMY_Blood Elf Surveyor|r, |cRXP_ENEMY_Blood Elf Reclaimer|r, |cRXP_ENEMY_Blood Elf Defender|r
    *Bring 10 bottles of Silvermoon Shimmerwine to Arille Azuregaze in Dalaran city.
    .complete 96609,1 --A Taste of Home
    .mob Blood Elf Surveyor
    .mob Blood Elf Reclaimer
step
    #completewith next
    +|cRXP_WARN_Run the dungeon|r
step
    .goto 1421,69.3,45.6
    >>Enter |cRXP_WARN_City of Dalaran|r and run it with a group. Quest goals inside:
    *A Green Sample: Collect a Fel Infused Blossom from the City of Dalaran for Shylamiir in Stormwind City.
    .complete 92456,1 --A Green Sample
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1421,68.6,45.1
    >>Talk to |cRXP_FRIENDLY_Image of Archmage Modera|r
    .turnin 92432 >>Turn in An Alarming Request
    .target Image of Archmage Modera
step
    .goto 1453,31.5,62.61
    >>Talk to |cRXP_FRIENDLY_Shylamiir|r
    .turnin 92456 >>Turn in A Green Sample
    .target Shylamiir
step
    .goto 1453,48.71,87.62
    >>Talk to |cRXP_FRIENDLY_High Sorcerer Andromath|r
    .turnin 92489 >>Turn in Power Overwhelming
    .target High Sorcerer Andromath
step
    .goto 1416,14.15,60.05
    >>Talk to |cRXP_FRIENDLY_Archmage Celindra|r
    .turnin 96603 >>Turn in Unstable Magic
    .target Archmage Celindra
step
    .goto 1416,18.51,65.68
    >>Talk to |cRXP_FRIENDLY_Arille Azuregaze|r
    .turnin 96609 >>Turn in A Taste of Home
    .target Arille Azuregaze
step
    .goto 1416,21.62,73.18
    >>Talk to |cRXP_FRIENDLY_Orphan Matron Aria|r
    .turnin 96812 >>Turn in Thicker Than Water
    .target Orphan Matron Aria
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1416,14.15,60.05
    >>Talk to |cRXP_FRIENDLY_Archmage Celindra|r
    .accept 96602 >>Accept More Unstable Magic
    .target Archmage Celindra
step
    .goto 1421,68.6,45.1
    >>Talk to |cRXP_FRIENDLY_Image of Archmage Modera|r
    .accept 92457 >>Accept Starving Arcane
    .accept 92458 >>Accept Heart of Disruption
    .target Image of Archmage Modera
step
    .goto 1416,19,67.5
    >>Kill |cRXP_ENEMY_Saturated Remnant|r
    *Defeat 8 Seeking Remnants, 8 Saturated Remnants, and 8 Mana Echoes inside the City of Dalaran for Archmage Modera outside of Dalaran.
    *|cRXP_WARN_Elite targets here. Group up or skip.|r
    .complete 92457,2 --Starving Arcane
    .mob Saturated Remnant
step
    .goto 1416,14.5,68.6
    >>Kill |cRXP_ENEMY_Mana Echo|r
    *Defeat 8 Seeking Remnants, 8 Saturated Remnants, and 8 Mana Echoes inside the City of Dalaran for Archmage Modera outside of Dalaran.
    *|cRXP_WARN_Elite targets here. Group up or skip.|r
    .complete 92457,3 --Starving Arcane
    .mob Mana Echo
step
    .goto 1416,15.2,55.9
    >>Collect |cRXP_LOOT_[Arcane Mote]|r from |cRXP_ENEMY_Shade of the Archmage|r
    *Collect the Arcane Mote for the Image of Archmage Modera near the City of Dalaran.
    .complete 92458,1 --Heart of Disruption
    .mob Shade of the Archmage
step
    .goto 1422,45.12,68.75
    >>Collect |cRXP_LOOT_[Mote of Unstable Magic]|r from |cRXP_ENEMY_Skeletal Warlord|r, |cRXP_ENEMY_Flesh Golem|r, |cRXP_ENEMY_Scarlet Executioner|r
    .complete 96602,1 --More Unstable Magic
    .mob Skeletal Warlord
    .mob Flesh Golem
step
    #completewith next
    +|cRXP_WARN_Run the dungeon (run 2)|r
step
    .goto 1421,69.3,45.6
    >>Enter |cRXP_WARN_City of Dalaran|r and run it with a group. Quest goals inside:
    *Starving Arcane: Defeat 8 Seeking Remnants, 8 Saturated Remnants, and 8 Mana Echoes inside the City of Dalaran for Archmage Modera outside of Dalaran.
    .complete 92457,1 --Starving Arcane
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1421,68.6,45.1
    >>Talk to |cRXP_FRIENDLY_Image of Archmage Modera|r
    .turnin 92457 >>Turn in Starving Arcane
    .turnin 92458 >>Turn in Heart of Disruption
    .target Image of Archmage Modera
step
    .goto 1416,14.15,60.05
    >>Talk to |cRXP_FRIENDLY_Archmage Celindra|r
    .turnin 96602 >>Turn in More Unstable Magic
    .target Archmage Celindra
step
    .goto 1421,69.3,45.6
    +Dungeon entrance: City of Dalaran. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 30-39
#name 32-33 Gnomeregan
#displayname 32-33 Gnomeregan
#next 33-34 Razorfen Kraul
step
    +|cRXP_WARN_Gnomeregan|r (levels 29-38). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
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
    +|cRXP_WARN_Run the dungeon|r
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
    >>Enter |cRXP_WARN_Gnomeregan|r and run it with a group. Quest goals inside:
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
    +|cRXP_WARN_Pick up the dungeon quests|r
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
    +|cRXP_WARN_Run the dungeon (run 2)|r
step
    .goto 1426,24.3,39.8
    >>Inside Gnomeregan: these quests start from a drop or an object in the dungeon
    .accept 2947 >>Accept Return of the Ring
    .accept 2952 >>Accept The Sparklematic 5200!
    .accept 4605 >>Accept The Sparklematic 5200!
    .accept 4606 >>Accept The Sparklematic 5200!
step
    .goto 1426,24.3,39.8
    >>Enter |cRXP_WARN_Gnomeregan|r and run it with a group. Quest goals inside:
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
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1426,45.89,49.39
    >>Talk to |cRXP_FRIENDLY_Ozzie Togglevolt|r
    .accept 2962 >>Accept The Only Cure is More Green Glow
    .target Ozzie Togglevolt
step
    #completewith next
    +|cRXP_WARN_Run the dungeon (run 3)|r
step
    .goto 1426,24.3,39.8
    >>Enter |cRXP_WARN_Gnomeregan|r and run it with a group. Quest goals inside:
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
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 30-39
#name 33-34 Razorfen Kraul
#displayname 33-34 Razorfen Kraul
#next 34-34 Scarlet Monastery
step
    +|cRXP_WARN_Razorfen Kraul|r (levels 29-38). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *Pre-quests in this guide: Lonebrow's Journal
step
    #completewith next
    +|cRXP_WARN_Pre-quests|r
step
    .goto 1441,30.73,24.35
    >>Inside Razorfen Kraul: loot |cRXP_LOOT_[Henrig Lonebrow's Journal]|r and click it to start the quest
    .accept 1100 >>Accept Lonebrow's Journal
    .use 5791
step
    .goto 1444,89.64,46.57
    >>Talk to |cRXP_FRIENDLY_Falfindel Waywarder|r
    .turnin 1100 >>Turn in Lonebrow's Journal
    .target Falfindel Waywarder
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1444,89.64,46.57
    >>Talk to |cRXP_FRIENDLY_Falfindel Waywarder|r
    .accept 1101 >>Accept The Crone of the Kraul
    .target Falfindel Waywarder
step
    .goto 1413,62.37,37.62
    >>Talk to |cRXP_FRIENDLY_Mebok Mizzyrix|r
    .accept 1221 >>Accept Blueleaf Tubers
    .target Mebok Mizzyrix
step
    .goto 1413,62.34,37.6
    >>Collect |cRXP_LOOT_[Snufflenose Command Stick]|r from |cRXP_PICK_Snufflenose Command Sticks|r
    *Grab a Crate with Holes.
    .complete 1221,4 --Blueleaf Tubers
step
    .goto 1413,62.33,37.62
    >>Collect |cRXP_LOOT_[Snufflenose Owner's Manual]|r from |cRXP_PICK_Snufflenose Owner's Manual|r
    *Grab a Crate with Holes.
    .complete 1221,3 --Blueleaf Tubers
step
    .goto 1413,62.32,37.61
    >>Collect |cRXP_LOOT_[Crate With Holes]|r from |cRXP_PICK_Crate with Holes|r
    *Grab a Crate with Holes.
    .complete 1221,2 --Blueleaf Tubers
step
    #completewith next
    +|cRXP_WARN_Run the dungeon|r
step
    .goto 1413,42.9,90.2
    >>Inside Razorfen Kraul: these quests start from a drop or an object in the dungeon
    .accept 1142 >>Accept Mortality Wanes
    .accept 1144 >>Accept Willix the Importer
step
    .goto 1413,42.9,90.2
    >>Enter |cRXP_WARN_Razorfen Kraul|r and run it with a group. Quest goals inside:
    *The Crone of the Kraul: Bring Razorflank's Medallion to Falfindel Waywarder in Thalanaar.
    *Mortality Wanes: Find and return Treshala's Pendant to Treshala Fallowbrook in Darnassus.
    *Blueleaf Tubers: Grab a Crate with Holes.
    .complete 1101,1 --The Crone of the Kraul
    .complete 1142,1 --Mortality Wanes
    .complete 1221,1 --Blueleaf Tubers
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1413,42.9,90.2
    >>Inside Razorfen Kraul: these quests start from a drop or an object in the dungeon
    .turnin 1144 >>Turn in Willix the Importer
step
    .goto 1413,62.37,37.62
    >>Talk to |cRXP_FRIENDLY_Mebok Mizzyrix|r
    .turnin 1221 >>Turn in Blueleaf Tubers
    .target Mebok Mizzyrix
step
    .goto 1444,89.64,46.57
    >>Talk to |cRXP_FRIENDLY_Falfindel Waywarder|r
    .turnin 1101 >>Turn in The Crone of the Kraul
    .target Falfindel Waywarder
step
    .goto 1457,69.54,67.75
    >>Talk to |cRXP_FRIENDLY_Treshala Fallowbrook|r
    .turnin 1142 >>Turn in Mortality Wanes
    .target Treshala Fallowbrook
step
    .goto 1413,42.9,90.2
    +Dungeon entrance: Razorfen Kraul. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 30-39
#name 34-34 Scarlet Monastery
#displayname 34-34 Scarlet Monastery
#next 34-35 Thousand Needles
step
    +|cRXP_WARN_Scarlet Monastery|r (levels 30-46). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *Four wings: Graveyard 30-38, Library 33-41, Armory 36-44, Cathedral 38-46.
    *Pre-quests in this guide: Down the Scarlet Path, Down the Scarlet Path
step
    #completewith next
    +|cRXP_WARN_Pre-quests|r
step
    .goto 1443,66.52,7.91
    >>Talk to |cRXP_FRIENDLY_Brother Anton|r
    .accept 261 >>Accept Down the Scarlet Path
    .target Brother Anton
step
    .goto 1443,63.86,88.83
    >>Kill |cRXP_ENEMY_Undead Ravager|r
    *Destroy 30 Undead Ravagers, then return to Brother Anton at Nijel's Point.
    .complete 261,1 --Down the Scarlet Path
    .mob Undead Ravager
step
    .goto 1443,66.52,7.91
    >>Talk to |cRXP_FRIENDLY_Brother Anton|r
    .turnin 261 >>Turn in Down the Scarlet Path
    .accept 1052 >>Accept Down the Scarlet Path
    .target Brother Anton
step
    .goto 1424,51.47,58.35
    >>Talk to |cRXP_FRIENDLY_Raleigh the Devout|r
    .turnin 1052 >>Turn in Down the Scarlet Path
    .target Raleigh the Devout
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1424,51.47,58.35
    >>Talk to |cRXP_FRIENDLY_Raleigh the Devout|r
    .accept 1053 >>Accept In the Name of the Light
    .target Raleigh the Devout
step
    .goto 1455,74.97,12.48
    >>Talk to |cRXP_FRIENDLY_Librarian Mae Paledust|r
    .accept 1050 >>Accept Mythology of the Titans
    .target Librarian Mae Paledust
step
    .goto 1416,9.51,62.25
    >>Talk to |cRXP_FRIENDLY_Magus Olvek|r
    .accept 96800 >>Accept Past Due
    .target Magus Olvek
step
    #completewith next
    +|cRXP_WARN_Run the dungeon|r
step
    .goto 1420,82.6,33.8
    >>Enter |cRXP_WARN_Scarlet Monastery|r and run it with a group. Quest goals inside:
    *Mythology of the Titans: Retrieve Mythology of the Titans from the Monastery and bring it to Librarian Mae Paledust in Ironforge.
    *In the Name of the Light: Kill High Inquisitor Whitemane, Scarlet Commander Mograine, Herod, the Scarlet Champion and Houndmaster Loksey and then report back to Raleigh the Devout in Southshore.
    *Past Due: Retrieve the book The Lost Magic of the Runemasters from the Scarlet Monastery.
    .complete 1050,1 --Mythology of the Titans
    .complete 1053,1 --In the Name of the Light
    .complete 1053,2 --In the Name of the Light
    .complete 1053,3 --In the Name of the Light
    .complete 1053,4 --In the Name of the Light
    .complete 96800,1 --Past Due
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1455,74.97,12.48
    >>Talk to |cRXP_FRIENDLY_Librarian Mae Paledust|r
    .turnin 1050 >>Turn in Mythology of the Titans
    .target Librarian Mae Paledust
step
    .goto 1424,51.47,58.35
    >>Talk to |cRXP_FRIENDLY_Raleigh the Devout|r
    .turnin 1053 >>Turn in In the Name of the Light
    .target Raleigh the Devout
step
    .goto 1416,9.51,62.25
    >>Talk to |cRXP_FRIENDLY_Magus Olvek|r
    .turnin 96800 >>Turn in Past Due
    .target Magus Olvek
step
    .goto 1420,82.6,33.8
    +Dungeon entrance: Scarlet Monastery. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 30-39
#name 34-35 Thousand Needles
#displayname 34-35 Thousand Needles
#next 35-37 Desolace
step
    .zone 1441 >>Travel to Thousand Needles
    *Suggested level for this part: 34-35
step
    .goto 1441,77.79,77.27
    >>Talk to |cRXP_FRIENDLY_Kravel Koalbeard|r
    .accept 5762 >>Accept Hemet Nesingwary
    .accept 1110 >>Accept Rocket Car Parts
    .accept 1111 >>Accept Wharfmaster Dizzywig
    .target Kravel Koalbeard
step
    .goto 1441,78.06,77.13
    >>Talk to |cRXP_FRIENDLY_Fizzle Brassbolts|r
    .accept 1104 >>Accept Salt Flat Venom
    .accept 1106 >>Accept Martek the Exiled
    .target Fizzle Brassbolts
step
    .goto 1441,78.14,77.12
    >>Talk to |cRXP_FRIENDLY_Wizzle Brassbolts|r
    .accept 1105 >>Accept Hardened Shells
    .target Wizzle Brassbolts
step
    .goto 1441,80.18,75.88
    >>Talk to |cRXP_FRIENDLY_Pozzik|r
    .accept 1176 >>Accept Load Lightening
    .target Pozzik
step
    .goto 1441,81.63,77.95
    >>Talk to |cRXP_FRIENDLY_Trackmaster Zherin|r
    .accept 1175 >>Accept A Bump in the Road
    .target Trackmaster Zherin
step
    .goto 1441,88.23,66.08
    >>Collect |cRXP_LOOT_[Hollow Vulture Bone]|r from |cRXP_ENEMY_Salt Flats Scavenger|r, |cRXP_ENEMY_Salt Flats Vulture|r
    *Get 10 Hollow Vulture Bones for Pozzik in the Shimmering Flats.
    .complete 1176,1 --Load Lightening
    .mob Salt Flats Scavenger
    .mob Salt Flats Vulture
step
    .goto 1441,80.18,75.88
    >>Talk to |cRXP_FRIENDLY_Pozzik|r
    .turnin 1176 >>Turn in Load Lightening
    .target Pozzik
step
    .goto 1441,74.67,59.74
    >>Collect |cRXP_LOOT_[Rocket Car Parts]|r from |cRXP_PICK_Rocket Car Rubble|r, |cRXP_PICK_Rocket Car Rubble|r. Collect |cRXP_LOOT_[Salty Scorpid Venom]|r from |cRXP_ENEMY_Scorpid Terror|r, |cRXP_ENEMY_Scorpid Reaver|r, |cRXP_ENEMY_Vile Sting|r. Collect |cRXP_LOOT_[Hardened Tortoise Shell]|r from |cRXP_ENEMY_Sparkleshell Tortoise|r, |cRXP_ENEMY_Sparkleshell Snapper|r, |cRXP_ENEMY_Sparkleshell Borer|r. Kill |cRXP_ENEMY_Saltstone Basilisk|r
    *Bring 30 Rocket Car Parts to Kravel Koalbeard in the Shimmering Flats.
    *Bring 6 Salty Scorpid Venoms to Fizzle Brassbolts in the Shimmering Flats.
    *Bring 9 Hardened Tortoise Shells to Wizzle Brassbolts in the Shimmering Flats.
    *Kill 10 Saltstone Basilisks, 10 Saltstone Crystalhides and 6 Saltstone Gazers for Trackmaster Zherin on the Shimmering Flats.
    .complete 1110,1 --Rocket Car Parts
    .complete 1104,1 --Salt Flat Venom
    .complete 1105,1 --Hardened Shells
    .complete 1175,1 --A Bump in the Road
    .mob Scorpid Terror
    .mob Scorpid Reaver
    .mob Sparkleshell Tortoise
    .mob Sparkleshell Snapper
    .mob Saltstone Basilisk
step
    .goto 1441,77.79,77.27
    >>Talk to |cRXP_FRIENDLY_Kravel Koalbeard|r
    .turnin 1110 >>Turn in Rocket Car Parts
    .target Kravel Koalbeard
step
    .goto 1441,78.06,77.13
    >>Talk to |cRXP_FRIENDLY_Fizzle Brassbolts|r
    .turnin 1104 >>Turn in Salt Flat Venom
    .target Fizzle Brassbolts
step
    .goto 1441,78.14,77.12
    >>Talk to |cRXP_FRIENDLY_Wizzle Brassbolts|r
    .turnin 1105 >>Turn in Hardened Shells
    .accept 1107 >>Accept Encrusted Tail Fins
    .target Wizzle Brassbolts
step
    .goto 1441,77.46,89.64
    >>Kill |cRXP_ENEMY_Saltstone Crystalhide|r. Kill |cRXP_ENEMY_Saltstone Gazer|r
    *Kill 10 Saltstone Basilisks, 10 Saltstone Crystalhides and 6 Saltstone Gazers for Trackmaster Zherin on the Shimmering Flats.
    .complete 1175,2 --A Bump in the Road
    .complete 1175,3 --A Bump in the Road
    .mob Saltstone Crystalhide
    .mob Saltstone Gazer
step
    .goto 1441,81.63,77.95
    >>Talk to |cRXP_FRIENDLY_Trackmaster Zherin|r
    .turnin 1175 >>Turn in A Bump in the Road
    .target Trackmaster Zherin
step
    .goto 1434,35.66,10.81
    >>Talk to |cRXP_FRIENDLY_Hemet Nesingwary|r
    .turnin 5762 >>Turn in Hemet Nesingwary
    .target Hemet Nesingwary
step
    .goto 1434,24.41,24.76
    >>Collect |cRXP_LOOT_[Encrusted Tail Fin]|r from |cRXP_ENEMY_Saltscale Warrior|r, |cRXP_ENEMY_Saltscale Oracle|r, |cRXP_ENEMY_Saltscale Tide Lord|r
    *Bring 10 Encrusted Tail Fins to Wizzle Brassbolts in the Shimmering Flats.
    .complete 1107,1 --Encrusted Tail Fins
    .mob Saltscale Warrior
    .mob Saltscale Oracle
step
    .goto 1413,63.35,38.45
    >>Talk to |cRXP_FRIENDLY_Wharfmaster Dizzywig|r
    .turnin 1111 >>Turn in Wharfmaster Dizzywig
    .accept 1112 >>Accept Parts for Kravel
    .target Wharfmaster Dizzywig
step
    .goto 1418,42.22,52.69
    >>Talk to |cRXP_FRIENDLY_Martek the Exiled|r
    .turnin 1106 >>Turn in Martek the Exiled
    .target Martek the Exiled
step
    .goto 1441,78.14,77.12
    >>Talk to |cRXP_FRIENDLY_Wizzle Brassbolts|r
    .turnin 1107 >>Turn in Encrusted Tail Fins
    .target Wizzle Brassbolts
step
    .goto 1441,77.79,77.27
    >>Talk to |cRXP_FRIENDLY_Kravel Koalbeard|r
    .turnin 1112 >>Turn in Parts for Kravel
    .accept 1114 >>Accept Delivery to the Gnomes
    .target Kravel Koalbeard
step
    .goto 1441,78.06,77.13
    >>Talk to |cRXP_FRIENDLY_Fizzle Brassbolts|r
    .turnin 1114 >>Turn in Delivery to the Gnomes
    .target Fizzle Brassbolts
step
    .goto 1441,77.79,77.27
    >>Talk to |cRXP_FRIENDLY_Kravel Koalbeard|r
    .accept 1115 >>Accept The Rumormonger
    .target Kravel Koalbeard
step
    .goto 1434,26.94,77.21
    >>Talk to |cRXP_FRIENDLY_Krazek|r
    .turnin 1115 >>Turn in The Rumormonger
    .target Krazek
step
    .goto 1444,89.42,45.99
    >>Talk to |cRXP_FRIENDLY_Kristy Grant|r
    .accept 98155 >>Accept Pristine Pesterhide Pelts
    .target Kristy Grant
step
    .goto 1455,72.73,94.01
    >>Talk to |cRXP_FRIENDLY_Pilot Longbeard|r
    .accept 1179 >>Accept The Brassbolts Brothers
    .target Pilot Longbeard
step
    .goto 1441,78.14,77.12
    >>Talk to |cRXP_FRIENDLY_Wizzle Brassbolts|r
    .turnin 1179 >>Turn in The Brassbolts Brothers
    .target Wizzle Brassbolts
step
    .goto 1441,63.82,56.47
    >>Collect |cRXP_LOOT_[Pristine Pesterhide Pelt]|r from |cRXP_ENEMY_Pesterhide Snarler|r
    *Bring 5 Pristine Pesterhide Pelts to Kristy Grant.
    .complete 98155,1 --Pristine Pesterhide Pelts
    .mob Pesterhide Snarler
step
    .goto 1444,89.42,45.99
    >>Talk to |cRXP_FRIENDLY_Kristy Grant|r
    .turnin 98155 >>Turn in Pristine Pesterhide Pelts
    .accept 98156 >>Accept Packaged Pristine Pelts
    .target Kristy Grant
step
    .goto 1453,37.78,64.8
    >>Talk to |cRXP_FRIENDLY_Kimberly Grant|r
    .turnin 98156 >>Turn in Packaged Pristine Pelts
    .target Kimberly Grant
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 30-39
#name 35-37 Desolace
#displayname 35-37 Desolace
#next 37-37 The Drowned City
step
    .zone 1443 >>Travel to Desolace
    *Suggested level for this part: 35-37
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
    .accept 1382 >>Accept Strange Alliance
    .accept 1385 >>Accept Brutal Politics
    .target Captain Pentigast
step
    .goto 1443,66.74,10.87
    >>Talk to |cRXP_FRIENDLY_Corporal Melkins|r
    .accept 1387 >>Accept Centaur Bounty
    .target Corporal Melkins
step
    .goto 1443,64.59,10.34
    >>Click the |cRXP_PICK_Lost Shipping Crate|r
    .accept 94841 >>Accept Lost Shipping Crate
step
    >>Earn the required reputation
    *Gain a Friendly reputation with the Gelkis, then speak with Uthek the Wise.
    *Gain a Friendly reputation with the Magram, then speak with Warug.
    .complete 1382,1 --Strange Alliance
    .complete 1385,1 --Brutal Politics
step
    .goto 1443,56.52,17.84
    >>Click the |cRXP_PICK_Malem Chest|r
    .turnin 1437 >>Turn in Vahlarriel's Search
    .accept 1465 >>Accept Vahlarriel's Search
step
    .goto 1443,66.44,11.82
    >>Talk to |cRXP_FRIENDLY_Vahlarriel Demonslayer|r
    .turnin 1465 >>Turn in Vahlarriel's Search
    .accept 97284 >>Accept Vahlarriel's Vengeance
    .accept 1438 >>Accept Vahlarriel's Search
    .target Vahlarriel Demonslayer
step
    .goto 1443,54.86,26.13
    >>Talk to |cRXP_FRIENDLY_Dalinda Malem|r
    .turnin 1438 >>Turn in Vahlarriel's Search
    .accept 1439 >>Accept Search for Tyranis
    .target Dalinda Malem
step
    .goto 1443,54.86,26.13
    >>Kill |cRXP_ENEMY_Burning Blade Augur|r. Kill |cRXP_ENEMY_Burning Blade Reaver|r. Kill |cRXP_ENEMY_Burning Blade Adept|r. Kill |cRXP_ENEMY_Burning Blade Felsworn|r. Collect |cRXP_LOOT_[Tyranis' Pendant]|r from |cRXP_ENEMY_Corrupt Tyranis Malem|r
    *Slay Burning Blade orcs at Thunder Axe Fortress in the Desolace, then return to Vahlarriel Demonslayer at Nijel's Point.
    *Find Tyranis Malem in Desolace.
    .complete 97284,1 --Vahlarriel's Vengeance
    .complete 97284,2 --Vahlarriel's Vengeance
    .complete 97284,3 --Vahlarriel's Vengeance
    .complete 97284,4 --Vahlarriel's Vengeance
    .complete 1439,1 --Search for Tyranis
    .mob Burning Blade Augur
    .mob Burning Blade Reaver
    .mob Burning Blade Adept
    .mob Burning Blade Felsworn
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
    .goto 1443,66.72,58.62
    >>Talk to |cRXP_FRIENDLY_Rigger Gizelton|r
    .accept 5943 >>Accept Gizelton Caravan
    .target Rigger Gizelton
step
    .goto 1443,66.78,58.13
    >>Talk to |cRXP_FRIENDLY_Cork Gizelton|r
    .accept 5821 >>Accept Bodyguard for Hire
    .target Cork Gizelton
step
    .goto 1443,60.86,61.86
    >>Talk to |cRXP_FRIENDLY_Smeed Scrabblescrew|r
    .turnin 5943 >>Turn in Gizelton Caravan
    .turnin 5821 >>Turn in Bodyguard for Hire
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
    .goto 1443,36.22,79.25
    >>Talk to |cRXP_FRIENDLY_Uthek the Wise|r
    .turnin 1382 >>Turn in Strange Alliance
    .accept 1384 >>Accept Raid on the Kolkar
    .target Uthek the Wise
step
    .goto 1443,67.3,78.64
    >>Collect |cRXP_LOOT_[Centaur Ear]|r from |cRXP_ENEMY_Maraudine Pack Runner|r, |cRXP_ENEMY_Galthogran the Callous|r, |cRXP_ENEMY_Wep|r
    *Bring 15 Centaur Ears to Corporal Melkins at Nijel's Point in Desolace.
    .complete 1387,1 --Centaur Bounty
    .mob Maraudine Pack Runner
    .mob Galthogran the Callous
step
    .goto 1443,74.97,68.16
    >>Talk to |cRXP_FRIENDLY_Warug|r
    .turnin 1385 >>Turn in Brutal Politics
    .accept 1386 >>Accept Assault on the Kolkar
    .target Warug
step
    .goto 1443,69.35,46.87
    >>Collect |cRXP_LOOT_[Crude Charm]|r from |cRXP_ENEMY_Kolkar Centaur|r, |cRXP_ENEMY_Kolkar Scout|r, |cRXP_ENEMY_Kolkar Mauler|r. Kill |cRXP_ENEMY_Kolkar Centaur|r. Kill |cRXP_ENEMY_Kolkar Scout|r. Kill |cRXP_ENEMY_Kolkar Mauler|r
    *Maintain your reputation with the Gelkis, and bring 10 Crude Charms to Uthek the Wise in the Gelkis Village in Desolace.
    *Maintain your reputation with the Magram. Kill 12 Kolkar Centaurs, 12 Kolkar Scouts and 6 Kolkar Maulers, then return to Warug in the Magram Village in Desolace.
    .complete 1384,1 --Raid on the Kolkar
    .complete 1386,1 --Assault on the Kolkar
    .complete 1386,2 --Assault on the Kolkar
    .complete 1386,3 --Assault on the Kolkar
    .mob Kolkar Centaur
    .mob Kolkar Scout
    .mob Kolkar Mauler
step
    .goto 1443,62.33,38.99
    >>Talk to |cRXP_FRIENDLY_Bibbly F'utzbuckle|r
    .turnin 5501 >>Turn in Bone Collector
    .target Bibbly F'utzbuckle
step
    .goto 1443,38.88,27.16
    >>Talk to |cRXP_FRIENDLY_Azore Aldamort|r
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
    .goto 1443,66.74,10.87
    >>Talk to |cRXP_FRIENDLY_Corporal Melkins|r
    .turnin 1387 >>Turn in Centaur Bounty
    .target Corporal Melkins
step
    .goto 1443,66.44,11.82
    >>Talk to |cRXP_FRIENDLY_Vahlarriel Demonslayer|r
    .turnin 97284 >>Turn in Vahlarriel's Vengeance
    .turnin 1440 >>Turn in Return to Vahlarriel
    .target Vahlarriel Demonslayer
step
    >>Earn the required reputation
    *Maintain your reputation with the Magram. Kill 12 Kolkar Centaurs, 12 Kolkar Scouts and 6 Kolkar Maulers, then return to Warug in the Magram Village in Desolace.
    .complete 1386,4 --Assault on the Kolkar
step
    .goto 1443,74.97,68.16
    >>Talk to |cRXP_FRIENDLY_Warug|r
    .turnin 1386 >>Turn in Assault on the Kolkar
    .accept 1369 >>Accept Broken Tears
    .target Warug
step
    >>Earn the required reputation
    *Maintain your reputation with the Gelkis, and bring 10 Crude Charms to Uthek the Wise in the Gelkis Village in Desolace.
    .complete 1384,2 --Raid on the Kolkar
step
    .goto 1443,36.22,79.25
    >>Talk to |cRXP_FRIENDLY_Uthek the Wise|r
    .turnin 1384 >>Turn in Raid on the Kolkar
    .accept 1370 >>Accept Stealing Supplies
    .target Uthek the Wise
step
    .goto 1443,21.89,78.97
    >>Collect |cRXP_LOOT_[Rackmore's Silver Key]|r from |cRXP_ENEMY_Drysnap Crawler|r, |cRXP_ENEMY_Drysnap Pincer|r
    *Find Rackmore's Silver Key. Find Rackmore's Golden Key. Find and open Rackmore's Chest.
    .complete 6161,1 --Claim Rackmore's Treasure!
    .mob Drysnap Crawler
    .mob Drysnap Pincer
step
    .goto 1443,40.83,94.75
    >>Collect |cRXP_LOOT_[Broken Tears]|r from |cRXP_PICK_Tear of Theradras|r
    *Maintain your reputation with the Magram, and bring 3 Broken Tears to Warug in the Magram Village.
    .complete 1369,1 --Broken Tears
step
    .goto 1443,70,78.62
    >>Collect |cRXP_LOOT_[Crudely Dried Meat]|r from |cRXP_PICK_Sack of Meat|r
    *Bring 6 bags of Crudely Dried Meat to Uthek the Wise in the Gelkis Village.
    .complete 1370,1 --Stealing Supplies
step
    >>Earn the required reputation
    *Maintain your reputation with the Magram, and bring 3 Broken Tears to Warug in the Magram Village.
    .complete 1369,2 --Broken Tears
step
    .goto 1443,74.97,68.16
    >>Talk to |cRXP_FRIENDLY_Warug|r
    .turnin 1369 >>Turn in Broken Tears
    .accept 1371 >>Accept Gizmo for Warug
    .target Warug
step
    >>Collect |cRXP_LOOT_[Advanced Target Dummy]|r. Earn the required reputation
    *Maintain your reputation with the Magram, and bring an Advanced Target Dummy to Warug in the Magram Village in Desolace.
    .complete 1371,1 --Gizmo for Warug
    .complete 1371,2 --Gizmo for Warug
step
    .goto 1443,74.97,68.16
    >>Talk to |cRXP_FRIENDLY_Warug|r
    .turnin 1371 >>Turn in Gizmo for Warug
    .accept 1375 >>Accept Khan Shaka
    .target Warug
step
    .goto 1443,70.48,70.39
    >>Talk to |cRXP_FRIENDLY_Mirda|r
    .accept 92754 >>Accept A New Need for Shadow Protection
    .target Mirda
step
    .goto 1443,70.48,70.39
    >>Talk to |cRXP_FRIENDLY_Mirda|r
    .turnin 92754 >>Turn in A New Need for Shadow Protection
    .target Mirda
step
    .goto 1443,69.83,77.92
    >>Talk to |cRXP_FRIENDLY_Grolkar|r
    .accept 92818 >>Accept Big, No, MASSIVE Iron Axes
    .target Grolkar
step
    .goto 1443,69.83,77.92
    >>Talk to |cRXP_FRIENDLY_Grolkar|r
    .turnin 92818 >>Turn in Big, No, MASSIVE Iron Axes
    .target Grolkar
step
    >>Earn the required reputation
    *Bring 6 bags of Crudely Dried Meat to Uthek the Wise in the Gelkis Village.
    .complete 1370,2 --Stealing Supplies
step
    .goto 1443,36.22,79.25
    >>Talk to |cRXP_FRIENDLY_Uthek the Wise|r
    .turnin 1370 >>Turn in Stealing Supplies
    .accept 1373 >>Accept Ongeku
    .target Uthek the Wise
step
    .goto 1443,34.46,86.93
    >>Talk to |cRXP_FRIENDLY_Talra|r
    .accept 92817 >>Accept Leather Technique
    .target Talra
step
    .goto 1443,34.46,86.93
    >>Talk to |cRXP_FRIENDLY_Talra|r
    .turnin 92817 >>Turn in Leather Technique
    .target Talra
step
    .goto 1443,35.68,92.23
    >>Talk to |cRXP_FRIENDLY_Molkar|r
    .accept 92814 >>Accept I Need a Tailor
    .target Molkar
step
    .goto 1443,35.68,92.23
    >>Talk to |cRXP_FRIENDLY_Molkar|r
    .turnin 92814 >>Turn in I Need a Tailor
    .target Molkar
step
    .goto 1443,40.49,95.49
    >>Collect |cRXP_LOOT_[Khan Shaka's Head]|r from |cRXP_ENEMY_Khan Shaka|r
    *Maintain your reputation with the Magram, and bring the Head of Khan Shaka to Warug in the Magram Village in Desolace.
    .complete 1375,1 --Khan Shaka
    .mob Khan Shaka
step
    .goto 1443,69.83,77.96
    >>Talk to |cRXP_FRIENDLY_Halea|r
    .accept 92755 >>Accept Mysterious Mysticism
    .target Halea
step
    .goto 1443,69.83,77.96
    >>Talk to |cRXP_FRIENDLY_Halea|r
    .turnin 92755 >>Turn in Mysterious Mysticism
    .target Halea
step
    >>Earn the required reputation
    *Maintain your reputation with the Magram, and bring the Head of Khan Shaka to Warug in the Magram Village in Desolace.
    .complete 1375,2 --Khan Shaka
step
    .goto 1443,74.97,68.16
    >>Talk to |cRXP_FRIENDLY_Warug|r
    .turnin 1375 >>Turn in Khan Shaka
    .target Warug
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
    .goto 2548,77.1,52.9
    >>Talk to |cRXP_FRIENDLY_Friz Frazzlespark|r
    .turnin 94841 >>Turn in Lost Shipping Crate
    .target Friz Frazzlespark
step
    .goto 1453,52.62,43.18
    >>Talk to |cRXP_FRIENDLY_Brother Crowley|r
    .accept 6141 >>Accept Brother Anton
    .target Brother Crowley
step
    .goto 1443,66.52,7.91
    >>Talk to |cRXP_FRIENDLY_Brother Anton|r
    .turnin 6141 >>Turn in Brother Anton
    .target Brother Anton
step
    .goto 1435,65.07,21.97
    >>Collect |cRXP_LOOT_[Draenethyst Shard]|r from |cRXP_ENEMY_Ongeku|r
    *Maintain your reputation with the Gelkis, and bring a Draenethyst Shard to Uthek the Wise in the Gelkis Village in Desolace.
    .complete 1373,1 --Ongeku
    .mob Ongeku
step
    >>Earn the required reputation
    *Maintain your reputation with the Gelkis, and bring a Draenethyst Shard to Uthek the Wise in the Gelkis Village in Desolace.
    .complete 1373,2 --Ongeku
step
    .goto 1443,36.22,79.25
    >>Talk to |cRXP_FRIENDLY_Uthek the Wise|r
    .turnin 1373 >>Turn in Ongeku
    .accept 1374 >>Accept Khan Jehn
    .target Uthek the Wise
step
    .goto 1443,65.95,80.41
    >>Collect |cRXP_LOOT_[Khan Jehn's Head]|r from |cRXP_ENEMY_Khan Jehn|r
    *Bring the Khan Jehn's Head to Uthek the Wise in the Gelkis Village in Desolace.
    .complete 1374,1 --Khan Jehn
    .mob Khan Jehn
step
    >>Earn the required reputation
    *Bring the Khan Jehn's Head to Uthek the Wise in the Gelkis Village in Desolace.
    .complete 1374,2 --Khan Jehn
step
    .goto 1443,36.22,79.25
    >>Talk to |cRXP_FRIENDLY_Uthek the Wise|r
    .turnin 1374 >>Turn in Khan Jehn
    .target Uthek the Wise
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 30-39
#name 37-37 The Drowned City
#displayname 37-37 The Drowned City
#next 37-39 Stranglethorn Vale
step
    +|cRXP_WARN_The Drowned City|r (levels 35-40). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *New Forever dungeon, underwater off the west coast of Stranglethorn, west of Grom'gol. Bring water breathing. Nearest flights: Booty Bay, Grom'gol.
    *Pre-quests in this guide: The Second Rebellion, Bad Medicine, Troll Witchery, Kurzen's Mystery, An Acquaintance in Southshore
step
    #completewith next
    +|cRXP_WARN_Pre-quests|r
step
    .goto 1434,38.02,3.33
    >>Talk to |cRXP_FRIENDLY_Sergeant Yohwa|r
    .accept 203 >>Accept The Second Rebellion
    .accept 204 >>Accept Bad Medicine
    .target Sergeant Yohwa
step
    .goto 1434,44.51,10
    >>Kill |cRXP_ENEMY_Kurzen Jungle Fighter|r. Collect |cRXP_LOOT_[Jungle Remedy]|r from |cRXP_ENEMY_Kurzen Jungle Fighter|r, |cRXP_ENEMY_Kurzen Medicine Man|r, |cRXP_ENEMY_Kurzen Headshrinker|r. Collect |cRXP_LOOT_[Venom Fern Extract]|r from |cRXP_PICK_Kurzen Supplies|r, |cRXP_PICK_Kurzen Supplies|r
    *Kill 15 Kurzen Jungle Fighters.
    *Bring 7 Jungle Remedies and 1 Venom Fern Extract to Sergeant Yohwa at the Rebel Camp.
    .complete 203,1 --The Second Rebellion
    .complete 204,1 --Bad Medicine
    .complete 204,2 --Bad Medicine
    .mob Kurzen Jungle Fighter
    .mob Kurzen Medicine Man
step
    .goto 1434,38.02,3.33
    >>Talk to |cRXP_FRIENDLY_Sergeant Yohwa|r
    .turnin 203 >>Turn in The Second Rebellion
    .turnin 204 >>Turn in Bad Medicine
    .target Sergeant Yohwa
step
    .goto 1434,37.83,3.56
    >>Talk to |cRXP_FRIENDLY_Brother Nimetz|r
    .accept 207 >>Accept Kurzen's Mystery
    .target Brother Nimetz
step
    .goto 1434,29.48,19.14
    >>Collect |cRXP_LOOT_[The First Troll Legend]|r from |cRXP_PICK_Moon Over the Vale|r. Collect |cRXP_LOOT_[The Second Troll Legend]|r from |cRXP_PICK_Gri'lek the Wanderer|r, |cRXP_PICK_Gri'lek the Wanderer|r
    *Find the 4 tablets and bring their legends back to Brother Nimetz.
    .complete 207,1 --Kurzen's Mystery
    .complete 207,2 --Kurzen's Mystery
step
    .goto 1434,22.95,12.02
    >>Collect |cRXP_LOOT_[The Third Troll Legend]|r from |cRXP_PICK_Fall of Gurubashi|r. Collect |cRXP_LOOT_[The Fourth Troll Legend]|r from |cRXP_PICK_The Emperor's Tomb|r
    *Find the 4 tablets and bring their legends back to Brother Nimetz.
    .complete 207,3 --Kurzen's Mystery
    .complete 207,4 --Kurzen's Mystery
step
    .goto 1434,37.83,3.56
    >>Talk to |cRXP_FRIENDLY_Brother Nimetz|r
    .turnin 207 >>Turn in Kurzen's Mystery
    .accept 205 >>Accept Troll Witchery
    .target Brother Nimetz
step
    .goto 1434,45.92,38
    >>Collect |cRXP_LOOT_[Skullsplitter Fetish]|r from |cRXP_ENEMY_Skullsplitter Witch Doctor|r, |cRXP_ENEMY_Skullsplitter Mystic|r
    *Bring 4 Skullsplitter Fetishes to Brother Nimetz at the Rebel Camp.
    .complete 205,1 --Troll Witchery
    .mob Skullsplitter Witch Doctor
    .mob Skullsplitter Mystic
step
    .goto 1434,37.83,3.56
    >>Talk to |cRXP_FRIENDLY_Brother Nimetz|r
    .turnin 205 >>Turn in Troll Witchery
    .accept 95786 >>Accept An Acquaintance in Southshore
    .target Brother Nimetz
step
    .goto 1424,50.57,57.09
    >>Talk to |cRXP_FRIENDLY_Loremaster Dibbs|r
    .turnin 95786 >>Turn in An Acquaintance in Southshore
    .target Loremaster Dibbs
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1424,50.57,57.09
    >>Talk to |cRXP_FRIENDLY_Loremaster Dibbs|r
    .accept 95787 >>Accept Take Two With Water
    .accept 95788 >>Accept Magics of the Drowned City
    .target Loremaster Dibbs
step
    .goto 1434,26.94,77.21
    >>Talk to |cRXP_FRIENDLY_Krazek|r
    .accept 95789 >>Accept Shady Saltseers
    .accept 95791 >>Accept The Saltseer Captain
    .target Krazek
step
    .goto 1416,15.37,74.09
    >>Talk to |cRXP_FRIENDLY_Archmage Timear|r
    .accept 97130 >>Accept Ancient Gurubashi Secrets
    .target Archmage Timear
step
    #completewith next
    +|cRXP_WARN_Run the dungeon|r
step
    .goto 1434,21.4,27.9
    >>Enter |cRXP_WARN_The Drowned City|r and run it with a group. Quest goals inside:
    *Take Two With Water: Use the hide and charcoal to create rubbings of the tablets found in the Drowned City.
    *Magics of the Drowned City: Collect 5 I'lalai Fetishes from trolls in the Drowned City.
    *Shady Saltseers: Collect 10 Voodoo Infused Artifacts from Saltseer pirates in the Drowned City.
    *The Saltseer Captain: Slay 3 Saltseer Coroners and Captain Dreadrise in the Drowned City.
    *Ancient Gurubashi Secrets: Recover an Ancient Gurubashi Idol from the Drowned City.
    .complete 95787,1 --Take Two With Water
    .complete 95787,2 --Take Two With Water
    .complete 95787,3 --Take Two With Water
    .complete 95787,4 --Take Two With Water
    .complete 95788,1 --Magics of the Drowned City
    .complete 95789,1 --Shady Saltseers
    .complete 95791,1 --The Saltseer Captain
    .complete 95791,2 --The Saltseer Captain
    .complete 97130,1 --Ancient Gurubashi Secrets
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1434,26.94,77.21
    >>Talk to |cRXP_FRIENDLY_Krazek|r
    .turnin 95789 >>Turn in Shady Saltseers
    .turnin 95791 >>Turn in The Saltseer Captain
    .target Krazek
step
    .goto 1424,50.57,57.09
    >>Talk to |cRXP_FRIENDLY_Loremaster Dibbs|r
    .turnin 95787 >>Turn in Take Two With Water
    .turnin 95788 >>Turn in Magics of the Drowned City
    .target Loremaster Dibbs
step
    .goto 1416,15.37,74.09
    >>Talk to |cRXP_FRIENDLY_Archmage Timear|r
    .turnin 97130 >>Turn in Ancient Gurubashi Secrets
    .target Archmage Timear
step
    .goto 1434,21.4,27.9
    +Dungeon entrance: The Drowned City. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 30-39
#name 37-39 Stranglethorn Vale
#displayname 37-39 Stranglethorn Vale
#next 39-40 Razorfen Downs
step
    .zone 1434 >>Travel to Stranglethorn Vale
    *Suggested level for this part: 37-39
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
    .goto 1434,26.94,77.21
    >>Talk to |cRXP_FRIENDLY_Krazek|r
    .accept 198 >>Accept Supplies to Private Thorsen
    .accept 201 >>Accept Investigate the Camp
    .accept 616 >>Accept The Haunted Isle
    .target Krazek
step
    .goto 1434,27.12,77.21
    >>Talk to |cRXP_FRIENDLY_Crank Fizzlebub|r
    .accept 605 >>Accept Singing Blue Shards
    .target Crank Fizzlebub
step
    .goto 1434,27.78,77.07
    >>Talk to |cRXP_FRIENDLY_"Sea Wolf" MacKinley|r
    .accept 606 >>Accept Scaring Shaky
    .target "Sea Wolf" MacKinley
step
    .goto 1434,27.23,76.87
    >>Talk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .turnin 616 >>Turn in The Haunted Isle
    .accept 578 >>Accept The Stone of the Tides
    .target Baron Revilgaz
step
    .goto 1434,33.17,63.43
    >>Collect |cRXP_LOOT_[Mistvale Giblets]|r from |cRXP_ENEMY_Elder Mistvale Gorilla|r
    *Bring 5 Mistvale Giblets to "Shaky" Phillipe in Booty Bay.
    .complete 606,1 --Scaring Shaky
    .mob Elder Mistvale Gorilla
step
    .goto 1434,26.9,73.59
    >>Talk to |cRXP_FRIENDLY_"Shaky" Phillipe|r
    .turnin 606 >>Turn in Scaring Shaky
    .accept 607 >>Accept Return to MacKinley
    .target "Shaky" Phillipe
step
    .goto 1434,27.78,77.07
    >>Talk to |cRXP_FRIENDLY_"Sea Wolf" MacKinley|r
    .turnin 607 >>Turn in Return to MacKinley
    .target "Sea Wolf" MacKinley
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
    .goto 1434,38,3.01
    >>Click the |cRXP_PICK_Lost Shipping Crate|r
    .accept 93443 >>Accept Lost Shipping Crate
step
    .goto 1434,38.02,3.33
    >>Talk to |cRXP_FRIENDLY_Sergeant Yohwa|r
    .accept 574 >>Accept Special Forces
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
    .goto 1434,44.15,7.91
    >>Collect |cRXP_LOOT_[Compound Cage Key]|r from |cRXP_ENEMY_Colonel Kurzen|r, |cRXP_ENEMY_Kurzen Elite|r, |cRXP_ENEMY_Kurzen Subchief|r. Collect |cRXP_LOOT_[Kurzen Fighter's Uniform]|r from |cRXP_PICK_Kurzen Supply Crate|r. Kill |cRXP_ENEMY_Kurzen Commando|r. Kill |cRXP_ENEMY_Kurzen Headshrinker|r
    *Find a key to Wendel's cage, and a disguise for him to sneak out, within the Kurzen compound.
    *Kill 10 Kurzen Commandoes and 6 Kurzen Headshrinkers.
    .complete 97047,1 --The Cook in the Cage
    .complete 97047,2 --The Cook in the Cage
    .complete 574,1 --Special Forces
    .complete 574,2 --Special Forces
    .mob Colonel Kurzen
    .mob Kurzen Elite
    .mob Kurzen Commando
    .mob Kurzen Headshrinker
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
    .goto 1434,38.04,3.01
    >>Talk to |cRXP_FRIENDLY_Lieutenant Doren|r
    .turnin 574 >>Turn in Special Forces
    .turnin 329 >>Turn in The Spy Revealed!
    .accept 202 >>Accept Colonel Kurzen
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
    .goto 1434,35.65,10.96
    >>Locate the hunters' camp
    *Find the hunters' camp and report its location to Krazek in Booty Bay.
    .complete 201,1 --Investigate the Camp
step
    .goto 1434,31.5,12.86
    >>Click the |cRXP_PICK_Thoroughly Scavenged Supplies|r
    .accept 97328 >>Accept Anything of Value
step
    .goto 1434,31.5,12.86
    >>Collect |cRXP_LOOT_[Bloodscalp Ear]|r from |cRXP_ENEMY_Bloodscalp Warrior|r, |cRXP_ENEMY_Bloodscalp Scout|r, |cRXP_ENEMY_Bloodscalp Hunter|r. Collect |cRXP_LOOT_[Stolen Shipment]|r
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
    .goto 1434,20.79,23.15
    >>Locate the haunted island
    *Find the haunted island for Baron Revilgaz in Booty Bay.
    .complete 578,1 --The Stone of the Tides
step
    .goto 1434,46.81,6.52
    >>Kill |cRXP_ENEMY_Kurzen Elite|r. Kill |cRXP_ENEMY_Kurzen Subchief|r. Collect |cRXP_LOOT_[Kurzen's Head]|r from |cRXP_ENEMY_Colonel Kurzen|r
    *Kill 6 Kurzen Elite, 4 Kurzen Subchiefs, and bring Kurzen's Head to Lieutenant Doren at the Rebel Camp.
    .complete 202,1 --Colonel Kurzen
    .complete 202,2 --Colonel Kurzen
    .complete 202,3 --Colonel Kurzen
    .mob Kurzen Elite
    .mob Kurzen Subchief
    .mob Colonel Kurzen
step
    .goto 1434,38.04,3.01
    >>Talk to |cRXP_FRIENDLY_Lieutenant Doren|r
    .turnin 202 >>Turn in Colonel Kurzen
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
    .accept 97332 >>Accept Twice Misplaced Trust
    .target Wharfmaster Lozgil
step
    .goto 1434,27,77.13
    >>Talk to |cRXP_FRIENDLY_Kebok|r
    .turnin 189 >>Turn in Bloodscalp Ears
    .turnin 213 >>Turn in Hostile Takeover
    .target Kebok
step
    .goto 1434,26.94,77.21
    >>Talk to |cRXP_FRIENDLY_Krazek|r
    .turnin 201 >>Turn in Investigate the Camp
    .turnin 210 >>Turn in Krazek's Cookery
    .target Krazek
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
    .goto 1434,27.69,76.66
    >>Talk to |cRXP_FRIENDLY_Captain Aransas|r
    .turnin 97048 >>Turn in Returning to Port
    .target Captain Aransas
step
    .goto 1434,27.12,77.21
    >>Talk to |cRXP_FRIENDLY_Crank Fizzlebub|r
    .accept 600 >>Accept Venture Company Mining
    .target Crank Fizzlebub
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
    .goto 1434,41.67,43.91
    >>Collect |cRXP_LOOT_[Singing Blue Crystal]|r from |cRXP_ENEMY_Venture Co. Strip Miner|r, |cRXP_ENEMY_Venture Co. Foreman|r, |cRXP_ENEMY_Venture Co. Surveyor|r
    *Bring 10 Singing Blue Crystals to Crank Fizzlebub in Booty Bay.
    .complete 600,1 --Venture Company Mining
    .mob Venture Co. Strip Miner
    .mob Venture Co. Foreman
step
    .goto 1434,19.9,24.49
    >>Collect |cRXP_LOOT_[Water Elemental Bracers]|r from |cRXP_ENEMY_Lesser Water Elemental|r
    *Acquire 6 Water Elemental Bracers for Baron Revilgaz in Booty Bay.
    .complete 601,1 --Water Elementals
    .mob Lesser Water Elemental
step
    .goto 1434,27.12,77.21
    >>Talk to |cRXP_FRIENDLY_Crank Fizzlebub|r
    .turnin 600 >>Turn in Venture Company Mining
    .target Crank Fizzlebub
step
    .goto 1434,27.23,76.87
    >>Talk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .turnin 601 >>Turn in Water Elementals
    .accept 602 >>Accept Magical Analysis
    .target Baron Revilgaz
step
    .goto 2548,77.1,52.9
    >>Talk to |cRXP_FRIENDLY_Friz Frazzlespark|r
    .turnin 93443 >>Turn in Lost Shipping Crate
    .target Friz Frazzlespark
step
    .goto 2548,79.45,52.71
    >>Talk to |cRXP_FRIENDLY_Wharfmaster Whizzbuzz|r
    .turnin 97332 >>Turn in Twice Misplaced Trust
    .target Wharfmaster Whizzbuzz
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
    .accept 611 >>Accept The Curse of the Tides
    .target Catelyn the Blade
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
    .goto 1424,51.57,58.57
    >>Talk to |cRXP_FRIENDLY_Barkeep Kelly|r
    .accept 98463 >>Accept Talk of the Town
    .target Barkeep Kelly
step
    .goto 1434,27.04,77.17
    >>Talk to |cRXP_FRIENDLY_Nixxrax Fillamug|r
    .turnin 98463 >>Turn in Talk of the Town
    .target Nixxrax Fillamug
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
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 30-39
#name 39-40 Razorfen Downs
#displayname 39-40 Razorfen Downs
#next 40-43 Riverglades
step
    +|cRXP_WARN_Razorfen Downs|r (levels 37-46). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *Pre-quests in this guide: A Brief History Lesson, Forlorn Gardens, Meeting the Magister, Rot and Regret, Word of the Woods, Passing the Blame, Fragments of the Pylons, Powering the Pylons
step
    #completewith next
    +|cRXP_WARN_Pre-quests|r
step
    .goto 2652,35.17,46.61
    >>Talk to |cRXP_FRIENDLY_Mordent Evenshade|r
    .accept 96010 >>Accept Fragments of the Pylons
    .target Mordent Evenshade
step
    >>Collect |cRXP_LOOT_[Pylon Fragment]|r. Collect |cRXP_LOOT_[Pylon Shard]|r
    *Recover shards and fragments of the pylons, found guarded at the Magram and Gelkis villages. Return them to Mordent Evenshade.
    .complete 96010,1 --Fragments of the Pylons
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
    .goto 2652,53.32,76.02
    >>Talk to |cRXP_FRIENDLY_Mithera|r
    .accept 93341 >>Accept Forlorn Gardens
    .target Mithera
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
    .accept 93404 >>Accept Rot and Regret
    .target Woodwyrd
step
    .goto 2652,69.66,71.78
    >>Kill |cRXP_ENEMY_Woodwyrd|r. Collect |cRXP_LOOT_[Vial of Earth Song Water]|r
    *Venture to Maraudon and recover a Vial of Earth Song Water and return it to Woodwyrd at the Forlorn Gardens in Desolace.
    *|cRXP_WARN_Elite targets here. Group up or skip.|r
    .complete 93404,1 --Rot and Regret
    .complete 93404,2 --Rot and Regret
    .mob Woodwyrd
step
    .goto 2652,69.66,71.78
    >>Talk to |cRXP_FRIENDLY_Woodwyrd|r
    .turnin 93404 >>Turn in Rot and Regret
    .accept 93601 >>Accept Passing the Blame
    .target Woodwyrd
step
    .goto 2652,72.73,31.17
    >>Talk to |cRXP_FRIENDLY_Kog'thug the Brave|r
    .turnin 93601 >>Turn in Passing the Blame
    .target Kog'thug the Brave
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 2652,72.73,31.17
    >>Talk to |cRXP_FRIENDLY_Kog'thug the Brave|r
    .accept 93604 >>Accept Agamaggan's Blood
    .target Kog'thug the Brave
step
    .goto 1453,50.31,45.47
    >>Talk to |cRXP_FRIENDLY_Archbishop Benedictus|r
    .accept 3636 >>Accept Bring the Light
    .target Archbishop Benedictus
step
    .goto 1413,49.01,94.94
    >>Talk to |cRXP_FRIENDLY_Myriam Moonsinger|r
    .accept 6626 >>Accept A Host of Evil
    .target Myriam Moonsinger
step
    .goto 1416,15.3,73.93
    >>Talk to |cRXP_FRIENDLY_Archmage Lan'dalock|r
    .accept 96773 >>Accept The Coldbringer's Eye
    .target Archmage Lan'dalock
step
    .goto 1413,48.69,89.85
    >>Kill |cRXP_ENEMY_Razorfen Battleguard|r
    *Kill 8 Razorfen Battleguard, 8 Razorfen Thornweavers, and 8 Death's Head Cultists and return to Myriam Moonsinger near the entrance to Razorfen Downs.
    *|cRXP_WARN_Elite targets here. Group up or skip.|r
    .complete 6626,1 --A Host of Evil
    .mob Razorfen Battleguard
step
    .goto 1413,48.61,89.93
    >>Kill |cRXP_ENEMY_Death's Head Cultist|r
    *Kill 8 Razorfen Battleguard, 8 Razorfen Thornweavers, and 8 Death's Head Cultists and return to Myriam Moonsinger near the entrance to Razorfen Downs.
    *|cRXP_WARN_Elite targets here. Group up or skip.|r
    .complete 6626,3 --A Host of Evil
    .mob Death's Head Cultist
step
    .goto 1413,48.65,89.71
    >>Kill |cRXP_ENEMY_Razorfen Thornweaver|r
    *Kill 8 Razorfen Battleguard, 8 Razorfen Thornweavers, and 8 Death's Head Cultists and return to Myriam Moonsinger near the entrance to Razorfen Downs.
    *|cRXP_WARN_Elite targets here. Group up or skip.|r
    .complete 6626,2 --A Host of Evil
    .mob Razorfen Thornweaver
step
    #completewith next
    +|cRXP_WARN_Run the dungeon|r
step
    .goto 1413,49,93.9
    >>Inside Razorfen Downs: these quests start from a drop or an object in the dungeon
    .accept 3523 >>Accept Scourge of the Downs
step
    .goto 1413,49,93.9
    >>Enter |cRXP_WARN_Razorfen Downs|r and run it with a group. Quest goals inside:
    *Bring the Light: Archbishop Bendictus wants you to slay Amnennar the Coldbringer in Razorfen Downs.
    *Agamaggan's Blood: Venture to Razorfen Downs and acquire Virulent Blood of Agamaggan, then return it to Kog'thug the Brave at Bristleback Retreat in the Desolace. Kog'thug felt it worth reminding that the Blood of Agamaggan inside Razorfen Kraul would not be sufficient.
    *The Coldbringer's Eye: Recover The Coldbringer's Eye from Razorfen Downs.
    .complete 3636,1 --Bring the Light
    .complete 93604,1 --Agamaggan's Blood
    .complete 96773,1 --The Coldbringer's Eye
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1413,49,93.9
    >>Inside Razorfen Downs: these quests start from a drop or an object in the dungeon
    .turnin 3523 >>Turn in Scourge of the Downs
step
    .goto 1413,49.01,94.94
    >>Talk to |cRXP_FRIENDLY_Myriam Moonsinger|r
    .turnin 6626 >>Turn in A Host of Evil
    .target Myriam Moonsinger
step
    .goto 1453,50.31,45.47
    >>Talk to |cRXP_FRIENDLY_Archbishop Benedictus|r
    .turnin 3636 >>Turn in Bring the Light
    .target Archbishop Benedictus
step
    .goto 2652,72.73,31.17
    >>Talk to |cRXP_FRIENDLY_Kog'thug the Brave|r
    .turnin 93604 >>Turn in Agamaggan's Blood
    .target Kog'thug the Brave
step
    .goto 1416,15.3,73.93
    >>Talk to |cRXP_FRIENDLY_Archmage Lan'dalock|r
    .turnin 96773 >>Turn in The Coldbringer's Eye
    .target Archmage Lan'dalock
step
    #completewith next
    +|cRXP_WARN_Run the dungeon (run 2)|r
step
    .goto 1413,49,93.9
    >>Inside Razorfen Downs: these quests start from a drop or an object in the dungeon
    .accept 3525 >>Accept Extinguishing the Idol
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1413,49,93.9
    >>Inside Razorfen Downs: these quests start from a drop or an object in the dungeon
    .turnin 3525 >>Turn in Extinguishing the Idol
step
    .goto 1413,49,93.9
    +Dungeon entrance: Razorfen Downs. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 40-49
#name 40-43 Riverglades
#displayname 40-43 Riverglades
#next 43-43 Krol'dok Stronghold
step
    .zone 2548 >>Travel to Riverglades
    *Suggested level for this part: 40-43
step
    #completewith next
    .goto 2548,60.61,81.54,15,0
    >>Talk to |cRXP_FRIENDLY_Gretchen Mayberry|r if you don't have this flight path yet
    .fp Gretchen Mayberry >>Get the flight path
    .target Gretchen Mayberry
step
    .goto 2548,61.82,83.08
    >>Talk to |cRXP_FRIENDLY_Sister Rowland|r
    .accept 95603 >>Accept Bats in the Belfry
    .target Sister Rowland
step
    .goto 2548,60.23,84.48
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
    .goto 2548,64.66,82.89
    >>Talk to |cRXP_FRIENDLY_Cassandra Wheeler|r
    .accept 95330 >>Accept Love Thy Neighbor
    .target Cassandra Wheeler
step
    .goto 2548,65.91,81.09
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
    .goto 2548,63.39,80.64
    >>Buy |cRXP_LOOT_[Holy Candle]|r from |cRXP_FRIENDLY_Marla Bell|r. Collect |cRXP_LOOT_[Foreman's Crate]|r
    *Bring 5 Holy Candles to Sister Rowland in Farholde Keep.
    *Locate the Foreman's Crate and return it to Bertrand Ironbrow in Farholde Keep.
    .complete 95613,1 --Keeping the Light On
    .complete 95943,1 --Foreman's Plight
step
    .goto 2548,63.39,80.64
    >>Talk to |cRXP_FRIENDLY_Bertrand Ironbrow|r
    .turnin 95943 >>Turn in Foreman's Plight
    .accept 96009 >>Accept High Stakes
    .target Bertrand Ironbrow
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
    .goto 2548,66.67,81.01
    >>Talk to |cRXP_FRIENDLY_Demar Brant|r
    .accept 94613 >>Accept My Kingdom for a Horse
    .accept 94877 >>Accept Saving Sunnyglade
    .target Demar Brant
step
    .goto 2548,66.15,79.62
    >>Talk to |cRXP_FRIENDLY_Ember Bladewhisper|r
    .accept 95156 >>Accept Stuff 'Em and Stick 'Em
    .target Ember Bladewhisper
step
    >>Collect |cRXP_LOOT_[Bundle of Hay]|r
    *Collect 3 Bundles of Hay for Ember at the training grounds.
    .complete 95156,1 --Stuff 'Em and Stick 'Em
step
    .goto 2548,66.15,79.62
    >>Talk to |cRXP_FRIENDLY_Ember Bladewhisper|r
    .turnin 95156 >>Turn in Stuff 'Em and Stick 'Em
    .accept 95184 >>Accept The Sharpest of Blades
    .target Ember Bladewhisper
step
    >>Collect |cRXP_LOOT_[Solid Sharpening Stone]|r
    *Bring 8 Solid Sharpening Stones to Ember Bladewhisper at the Farholde training grounds.
    .complete 95184,1 --The Sharpest of Blades
step
    .goto 2548,66.15,79.62
    >>Talk to |cRXP_FRIENDLY_Ember Bladewhisper|r
    .turnin 95184 >>Turn in The Sharpest of Blades
    .target Ember Bladewhisper
step
    .goto 2548,54.89,73
    >>Talk to |cRXP_FRIENDLY_Benjy Wheeler|r
    .turnin 94613 >>Turn in My Kingdom for a Horse
    .accept 94614 >>Accept Freshwater Fiends
    .accept 94615 >>Accept Foal Play
    .target Benjy Wheeler
step
    >>Collect |cRXP_LOOT_[Pawprint Tracing]|r
    *Search near the stables at Wheeler's Grange for evidence of the missing horses' whereabouts.
    .complete 94615,1 --Foal Play
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
    .goto 2548,43.6,63.89
    >>Collect |cRXP_LOOT_[Ghostmaw's Fang]|r from |cRXP_ENEMY_Ghostmaw|r. Collect |cRXP_LOOT_[Wood Bundle]|r from |cRXP_PICK_Bundle of Wood|r. Collect |cRXP_LOOT_[Fresh Manure]|r
    *Bring Ghostmaw's Fang to Wheatley in Farholde Keep.
    *Collect 10 Wood Bundles from Turner's Logging Camp for Bertrand Ironbrow in Farholde Keep.
    *Gather 4 Jumbo Crawfish Shells, 4 pieces of Fresh Manure, and 8 Mudfin Murloc Heads for Halligan Turner.
    .complete 95991,1 --WANTED: Ghostmaw
    .complete 96009,1 --High Stakes
    .complete 94842,2 --Unsavory Plant Food
    .mob Ghostmaw
step
    .goto 2548,43.24,53.04
    >>Kill |cRXP_ENEMY_Twilight Raider|r. Kill |cRXP_ENEMY_Twilight Shadowmancer|r. Kill |cRXP_ENEMY_Twilight Neophyte|r. Collect |cRXP_LOOT_[Jumbo Crawfish Shell]|r from |cRXP_ENEMY_Jumbo Crawfish|r
    *Defeat 8 Twilight Raiders, 8 Twilight Shadowmancers, and 8 Twilight Neophytes within Sunnyglade for Demar Brant.
    *Gather 4 Jumbo Crawfish Shells, 4 pieces of Fresh Manure, and 8 Mudfin Murloc Heads for Halligan Turner.
    .complete 94877,1 --Saving Sunnyglade
    .complete 94877,2 --Saving Sunnyglade
    .complete 94877,3 --Saving Sunnyglade
    .complete 94842,1 --Unsavory Plant Food
    .mob Twilight Raider
    .mob Twilight Shadowmancer
    .mob Twilight Neophyte
    .mob Jumbo Crawfish
step
    .goto 2548,47.31,51.41
    >>Talk to |cRXP_FRIENDLY_Fuzzle|r
    .accept 94961 >>Accept Biting the Hand
    .target Fuzzle
step
    .goto 2548,47.7,47.3
    >>Talk to |cRXP_FRIENDLY_Apprentice Claire|r
    .accept 95642 >>Accept Abominable Magics
    .accept 95643 >>Accept Indiscriminate Purge
    .target Apprentice Claire
step
    .goto 2548,46.88,48.27
    >>Loot |cRXP_LOOT_[Field Marshal's Log]|r from |cRXP_ENEMY_Twilight Shadowmancer|r, |cRXP_ENEMY_Twilight Neophyte|r, |cRXP_ENEMY_Twilight Raider|r, then click it to start the quest
    .accept 94885 >>Accept Field Marshal's Log
    .use 266427
    .mob Twilight Shadowmancer
    .mob Twilight Neophyte
step
    .goto 2548,47.7,47.3
    >>Talk to |cRXP_FRIENDLY_Apprentice Claire|r
    .turnin 95642 >>Turn in Abominable Magics
    .target Apprentice Claire
step
    .goto 2548,46.88,48.27
    >>Collect |cRXP_LOOT_[Twilight Finger Bone]|r from |cRXP_ENEMY_Twilight Shadowmancer|r, |cRXP_ENEMY_Twilight Neophyte|r, |cRXP_ENEMY_Twilight Raider|r. Kill |cRXP_ENEMY_Empowered Brute|r. Kill |cRXP_ENEMY_Twilight Ritualist|r. Collect |cRXP_LOOT_[Field Marshal's Log]|r from |cRXP_ENEMY_Twilight Shadowmancer|r, |cRXP_ENEMY_Twilight Neophyte|r, |cRXP_ENEMY_Twilight Raider|r
    *Bring 20 Twilight Finger Bones to Fuzzle.
    *Kill 5 Twilight Ritualists and 5 Empowered Brutes within the caves underneath Sunnyglade.
    *Deliver the Field Marshal's Log to Demar Brant in Farholde Keep.
    .complete 94961,1 --Biting the Hand
    .complete 95643,1 --Indiscriminate Purge
    .complete 95643,2 --Indiscriminate Purge
    .complete 94885,1 --Field Marshal's Log
    .mob Twilight Shadowmancer
    .mob Twilight Neophyte
    .mob Empowered Brute
    .mob Twilight Ritualist
step
    .goto 2548,47.7,47.3
    >>Talk to |cRXP_FRIENDLY_Apprentice Claire|r
    .turnin 95643 >>Turn in Indiscriminate Purge
    .accept 95562 >>Accept Cut Off the Heads
    .target Apprentice Claire
step
    .goto 2548,47.31,51.41
    >>Talk to |cRXP_FRIENDLY_Fuzzle|r
    .turnin 94961 >>Turn in Biting the Hand
    .accept 94963 >>Accept Biting the Hand
    .target Fuzzle
step
    .goto 2548,45.01,51.17
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
    .goto 2548,53.7,44.8
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
    >>Collect |cRXP_LOOT_[Marsh Gas Vial]|r
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
    .goto 2548,77.1,52.9
    >>Talk to |cRXP_FRIENDLY_Friz Frazzlespark|r
    .accept 95288 >>Accept Smuggler's Paradise
    .accept 95059 >>Accept Frazzlespark's Crate
    .accept 95219 >>Accept From Port to Port
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
    .goto 2548,78.48,53.94
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
    .goto 2548,79.02,54.2
    >>Talk to |cRXP_FRIENDLY_Fimbo Greasemitz|r
    .accept 95121 >>Accept A Taste of the Sea
    .target Fimbo Greasemitz
step
    .goto 2548,82.51,51.75
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
    .goto 2548,84.42,39.31
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
    .accept 95123 >>Accept A Blast Ye Scurvy Dogs!
    .target Wharfmaster Whizzbuzz
step
    >>Collect |cRXP_LOOT_[Eastsea Powder Keg]|r
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
    .goto 2548,77.98,33.88
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
    .goto 2548,61.65,58.82
    >>Talk to |cRXP_FRIENDLY_Picked Carcass|r
    .accept 95983 >>Accept A Feast for Buzzards
    .target Picked Carcass
step
    .goto 2548,59.53,63.97
    >>Talk to |cRXP_FRIENDLY_Watcher Cornelius|r
    .turnin 95983 >>Turn in A Feast for Buzzards
    .accept 94924 >>Accept Hunting the Hunters
    .accept 94925 >>Accept A Fur Trade
    .target Watcher Cornelius
step
    .goto 2548,56.98,55.29
    >>Kill |cRXP_ENEMY_Rog'mar Poacher|r. Collect |cRXP_LOOT_[Prized Lion Hide]|r from |cRXP_ENEMY_Wildplains Patriarch|r, |cRXP_ENEMY_Wildplains Huntress|r
    *Kill 12 Rog'mar Poachers for Watcher Cornelius.
    *Bring 8 Prized Lion Hides to Watcher Terral.
    .complete 94924,1 --Hunting the Hunters
    .complete 94925,1 --A Fur Trade
    .mob Rog'mar Poacher
    .mob Wildplains Patriarch
    .mob Wildplains Huntress
step
    .goto 2548,59.53,63.97
    >>Talk to |cRXP_FRIENDLY_Watcher Cornelius|r
    .turnin 94924 >>Turn in Hunting the Hunters
    .turnin 94925 >>Turn in A Fur Trade
    .accept 95064 >>Accept Preventative Measures
    .accept 96125 >>Accept In Need of Relief
    .target Watcher Cornelius
step
    .goto 2548,69.44,69.6
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
    .goto 2548,66.15,79.62
    >>Talk to |cRXP_FRIENDLY_Ember Bladewhisper|r
    .turnin 95912 >>Turn in WANTED: Blademaster Kaijo
    .target Ember Bladewhisper
step
    .goto 2548,66.67,81.01
    >>Talk to |cRXP_FRIENDLY_Demar Brant|r
    .turnin 94877 >>Turn in Saving Sunnyglade
    .turnin 94885 >>Turn in Field Marshal's Log
    .turnin 95059 >>Turn in Frazzlespark's Crate
    .target Demar Brant
step
    .goto 2548,66.75,81.1
    >>Talk to |cRXP_FRIENDLY_Ashe Amberhall|r
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
    .target Demar Brant
step
    .goto 2548,63.39,80.64
    >>Talk to |cRXP_FRIENDLY_Bertrand Ironbrow|r
    .turnin 96009 >>Turn in High Stakes
    .target Bertrand Ironbrow
step
    .goto 2548,63.85,82.24
    >>Talk to |cRXP_FRIENDLY_Tessa Dawnbright|r
    .accept 95561 >>Accept Apple of My Eye
    .target Tessa Dawnbright
step
    .goto 2548,63.85,82.24
    >>Collect |cRXP_LOOT_[Sand Crawler Meat]|r from |cRXP_ENEMY_Sand Crawler|r, |cRXP_ENEMY_Shore Crawler|r. Collect |cRXP_LOOT_[Fresh Apple]|r
    *Gather 12 Murloc Eyes and 6 pieces of Sand Crawler Meat for Fimbo Greasemitz.
    *Collect 6 Fresh Apples for Tessa Dawnbright in Farholde Keep.
    .complete 95121,2 --A Taste of the Sea
    .complete 95561,1 --Apple of My Eye
    .mob Sand Crawler
    .mob Shore Crawler
step
    .goto 2548,63.85,82.24
    >>Talk to |cRXP_FRIENDLY_Tessa Dawnbright|r
    .turnin 95561 >>Turn in Apple of My Eye
    .accept 95913 >>Accept Fit for a Princess
    .target Tessa Dawnbright
step
    .goto 2548,63.53,85.09
    >>Talk to |cRXP_FRIENDLY_Wheatley|r
    .turnin 95991 >>Turn in WANTED: Ghostmaw
    .target Wheatley
step
    .goto 2548,53.82,84.31
    >>Kill |cRXP_ENEMY_Mudfin Warrior|r. Kill |cRXP_ENEMY_Mudfin Oracle|r. Collect |cRXP_LOOT_[Sootfur's Pelt]|r from |cRXP_ENEMY_Sootfur|r. Collect |cRXP_LOOT_[Coyote Pelt]|r from |cRXP_ENEMY_Plains Coyote|r
    *Kill 8 Mudfin Oracles and 8 Mudfin Warriors along the river near Wheeler's Grange.
    *Kill the coyote known as Sootfur, and bring its pelt back to Benjy Wheeler.
    *Collect 3 Coyote Pelts for Tessa Dawnbright in Farholde Keep.
    .complete 94614,1 --Freshwater Fiends
    .complete 94614,2 --Freshwater Fiends
    .complete 94617,1 --Coyote Huntin'
    .complete 95913,1 --Fit for a Princess
    .mob Mudfin Warrior
    .mob Mudfin Oracle
    .mob Sootfur
    .mob Plains Coyote
step
    .goto 2548,63.85,82.24
    >>Talk to |cRXP_FRIENDLY_Tessa Dawnbright|r
    .turnin 95913 >>Turn in Fit for a Princess
    .accept 95961 >>Accept Stepped Out
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
    .accept 95426 >>Accept Rog'mar Supplies
    .accept 94928 >>Accept A Few Furs for Friz
    .accept 95984 >>Accept Song of the Strider
    .target Watcher Cornelius
step
    .goto 2548,59.53,63.97
    >>Collect |cRXP_LOOT_[Rog'mar Supply Crate]|r. Collect |cRXP_LOOT_[Intact Tallstrider Beak]|r from |cRXP_ENEMY_Roving Tallstrider|r
    *Retrieve 8 Horde Supply Shipment from the training camps north of Rog'mar.
    *Bring an Intact Tallstrider Beak to Watcher Cornelius at Terral's Watch.
    .complete 95426,1 --Rog'mar Supplies
    .complete 95984,1 --Song of the Strider
    .mob Roving Tallstrider
step
    .goto 2548,59.53,63.97
    >>Talk to |cRXP_FRIENDLY_Watcher Cornelius|r
    .turnin 95426 >>Turn in Rog'mar Supplies
    .turnin 95984 >>Turn in Song of the Strider
    .accept 95986 >>Accept King of the Wild Plains
    .target Watcher Cornelius
step
    .goto 2548,58.92,51.93
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
    .goto 2548,39.57,74.67
    >>Talk to |cRXP_FRIENDLY_Cedric Dalton|r
    .accept 94678 >>Accept Gnoll Infestation
    .accept 94679 >>Accept Snargl's Snout
    .target Cedric Dalton
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
    >>Collect |cRXP_LOOT_[Robbie's Hat]|r
    *Find Robbie's Hat somewhere along the river near the murlocs.
    .complete 94923,1 --Hats Off
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
    >>Collect |cRXP_LOOT_[Cubic Draconia]|r
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
    .goto 2548,20.4,69.4
    >>Collect |cRXP_LOOT_[Saw Blade]|r from |cRXP_PICK_Stolen Tools|r. Kill |cRXP_ENEMY_Redridge Mystic|r. Kill |cRXP_ENEMY_Redridge Trapper|r. Kill |cRXP_ENEMY_Redridge Brute|r. Collect |cRXP_LOOT_[Snargl's Snout]|r from |cRXP_ENEMY_Snargl|r
    *Recover 8 Saw Blades from the gnoll camps in Bristle Hills for Halligan Turner at the lumber mill.
    *Kill 8 Redridge Mystics, 8 Redridge Trappers, and 6 Redridge Brutes for Cedric Dalton at Southern Watch.
    *Locate Snargl in the Bristle Hills, kill him, and bring his snout to Cedric Dalton at Southern Watch.
    .complete 94931,1 --Stolen Saws
    .complete 94678,1 --Gnoll Infestation
    .complete 94678,2 --Gnoll Infestation
    .complete 94678,3 --Gnoll Infestation
    .complete 94679,1 --Snargl's Snout
    .mob Redridge Mystic
    .mob Redridge Trapper
    .mob Redridge Brute
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
    .goto 2548,66.67,81.01
    >>Talk to |cRXP_FRIENDLY_Demar Brant|r
    .turnin 95148 >>Turn in Southern Watch Gnoll Report
    .target Demar Brant
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
    .goto 2548,80.74,47.96
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
    .goto 2548,67.4,58.6
    >>Collect |cRXP_LOOT_[Wildflower]|r from |cRXP_PICK_Wildflower|r
    *Gather 20 Wildflowers and deliver them to Tessa Dawnbright in Farholde Keep.
    .complete 95975,1 --Her World
step
    .goto 2548,63.85,82.24
    >>Talk to |cRXP_FRIENDLY_Tessa Dawnbright|r
    .turnin 95975 >>Turn in Her World
    .target Tessa Dawnbright
step
    .goto 2548,58.62,37.23
    >>Kill |cRXP_ENEMY_Rog'mar Trainee|r
    *Kill 12 Rog'mar Trainees for Watcher Cornelius at Terral's Watch.
    .complete 95064,1 --Preventative Measures
    .mob Rog'mar Trainee
step
    .goto 2548,68.62,12.7
    >>Talk to |cRXP_FRIENDLY_Dunston Willis|r
    .turnin 96125 >>Turn in In Need of Relief
    .accept 96126 >>Accept An Ogre's Captive
    .target Dunston Willis
step
    .goto 2548,65.26,18.62
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
    .turnin 94927 >>Turn in Dunston Checks Out
    .accept 95066 >>Accept The Rog'mar Situation
    .target Watcher Cornelius
step
    .goto 2548,66.67,81.01
    >>Talk to |cRXP_FRIENDLY_Demar Brant|r
    .turnin 95066 >>Turn in The Rog'mar Situation
    .target Demar Brant
step
    .goto 1444,31.04,43.12
    >>Talk to |cRXP_FRIENDLY_Mardrack Greenwell|r
    .turnin 95219 >>Turn in From Port to Port
    .target Mardrack Greenwell
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
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 40-49
#name 43-43 Krol'dok Stronghold
#displayname 43-43 Krol'dok Stronghold
#next 43-45 Uldaman
step
    +|cRXP_WARN_Krol'dok Stronghold|r (levels 40-45). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *New Forever dungeon in the Riverglades, on the hill over Sunnyglade next to the closed main gates.
    *Pre-quests in this guide: Scraps of Knowledge, Curious Trinkets, The Western Front, No Soldier Left Behind, Carving a Path, Bring Me His Head, A Small Favor
step
    #completewith next
    +|cRXP_WARN_Pre-quests|r
step
    .goto 2548,66.75,81.1
    >>Talk to |cRXP_FRIENDLY_Ashe Amberhall|r
    .accept 94881 >>Accept Curious Trinkets
    .target Ashe Amberhall
step
    .goto 2548,46.88,48.27
    >>Collect |cRXP_LOOT_[Twilight Charm]|r from |cRXP_ENEMY_Twilight Shadowmancer|r, |cRXP_ENEMY_Twilight Neophyte|r
    *Retrieve 25 Twilight Charms from Twilight Shadowmancers and Twilight Neophytes in Sunnyglade for Ashe Amberhall in Farholde Keep.
    .complete 94881,1 --Curious Trinkets
    .mob Twilight Shadowmancer
    .mob Twilight Neophyte
step
    .goto 2548,66.75,81.1
    >>Talk to |cRXP_FRIENDLY_Ashe Amberhall|r
    .turnin 94881 >>Turn in Curious Trinkets
    .accept 94907 >>Accept A Small Favor
    .accept 94879 >>Accept Scraps of Knowledge
    .target Ashe Amberhall
step
    >>Collect |cRXP_LOOT_[Twilight Page]|r
    *Collect 5 Twilight Pages from within Sunnyglade for Ashe Amberall in Farholde Keep.
    .complete 94879,1 --Scraps of Knowledge
step
    .goto 2548,66.75,81.1
    >>Talk to |cRXP_FRIENDLY_Ashe Amberhall|r
    .turnin 94879 >>Turn in Scraps of Knowledge
    .target Ashe Amberhall
step
    .goto 2548,66.67,81.01
    >>Talk to |cRXP_FRIENDLY_Demar Brant|r
    .accept 94886 >>Accept The Western Front
    .target Demar Brant
step
    .goto 2548,30.71,49.06
    >>Talk to |cRXP_FRIENDLY_Sergeant Riftan|r
    .turnin 94886 >>Turn in The Western Front
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
    .accept 94890 >>Accept Bring Me His Head
    .target Sergeant Riftan
step
    .goto 2548,25.72,42.4
    >>Collect |cRXP_LOOT_[Kilgar's Head]|r from |cRXP_ENEMY_Overlord Kilgar|r
    *Defeat Overlord Kilgar within the Twilight's Shroud and bring his head to Sergeant Riftan.
    .complete 94890,1 --Bring Me His Head
    .mob Overlord Kilgar
step
    .goto 2548,30.71,49.06
    >>Talk to |cRXP_FRIENDLY_Sergeant Riftan|r
    .turnin 94890 >>Turn in Bring Me His Head
    .target Sergeant Riftan
step
    .goto 2548,66.75,81.1
    >>Talk to |cRXP_FRIENDLY_Ashe Amberhall|r
    .turnin 94907 >>Turn in A Small Favor
    .target Ashe Amberhall
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 2548,66.75,81.1
    >>Talk to |cRXP_FRIENDLY_Ashe Amberhall|r
    .accept 94984 >>Accept Tome of Twilight
    .target Ashe Amberhall
step
    .goto 2548,66.67,81.01
    >>Talk to |cRXP_FRIENDLY_Demar Brant|r
    .accept 94982 >>Accept Eye of Mugg
    .target Demar Brant
step
    .goto 2548,30.71,49.06
    >>Talk to |cRXP_FRIENDLY_Sergeant Riftan|r
    .accept 94983 >>Accept Twilight Mementos
    .target Sergeant Riftan
step
    .goto 1416,17.8,65.95
    >>Talk to |cRXP_FRIENDLY_Ranath Nightstride|r
    .accept 96771 >>Accept Vengeance of the Highborne
    .target Ranath Nightstride
step
    #completewith next
    +|cRXP_WARN_Run the dungeon|r
step
    .goto 2548,39,39
    >>Inside Krol'dok Stronghold: these quests start from a drop or an object in the dungeon
    .accept 94969 >>Accept Krol'dok No More!
step
    .goto 2548,39,39
    >>Loot |cRXP_LOOT_[Krol'dok Moulding]|r from |cRXP_ENEMY_Tunk|r, then click it to start the quest
    .accept 94980 >>Accept Krol'dok Moulding
    .use 267138
    .mob Tunk
step
    .goto 2548,39,39
    >>Enter |cRXP_WARN_Krol'dok Stronghold|r and run it with a group. Quest goals inside:
    *Eye of Mugg: Infiltrate Krol'dok Stronghold and return to Commander Brant with proof of their leader's demise.
    *Twilight Mementos: Collect 8 Cultist Bangles from the Twilight's Hammer in Krol'dok Stronghold.
    *Tome of Twilight: Kill Nar'gurk within Krol'dok Stronghold and recover any valuable information.
    *Vengeance of the Highborne: Travel to Krol'dok Stronghold and slay Zalfan Moonshadow.
    .complete 94982,1 --Eye of Mugg
    .complete 94983,1 --Twilight Mementos
    .complete 94984,1 --Tome of Twilight
    .complete 96771,1 --Vengeance of the Highborne
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 2548,39,39
    >>Inside Krol'dok Stronghold: these quests start from a drop or an object in the dungeon
    .turnin 94969 >>Turn in Krol'dok No More!
step
    .goto 2548,30.71,49.06
    >>Talk to |cRXP_FRIENDLY_Sergeant Riftan|r
    .turnin 94983 >>Turn in Twilight Mementos
    .target Sergeant Riftan
step
    .goto 2548,64.46,82.03
    >>Talk to |cRXP_FRIENDLY_Alphonse Dumas|r
    .turnin 94980 >>Turn in Krol'dok Moulding
    .target Alphonse Dumas
step
    .goto 2548,66.67,81.01
    >>Talk to |cRXP_FRIENDLY_Demar Brant|r
    .turnin 94982 >>Turn in Eye of Mugg
    .target Demar Brant
step
    .goto 2548,66.75,81.1
    >>Talk to |cRXP_FRIENDLY_Ashe Amberhall|r
    .turnin 94984 >>Turn in Tome of Twilight
    .target Ashe Amberhall
step
    .goto 1416,17.8,65.95
    >>Talk to |cRXP_FRIENDLY_Ranath Nightstride|r
    .turnin 96771 >>Turn in Vengeance of the Highborne
    .target Ranath Nightstride
step
    .goto 2548,39,39
    +Dungeon entrance: Krol'dok Stronghold. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 40-49
#name 43-45 Uldaman
#displayname 43-45 Uldaman
#next 45-46 Shen'dralas/Desolace
step
    +|cRXP_WARN_Uldaman|r (levels 41-51). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *Forever: Annora inside Uldaman is the Artisan Enchanting trainer.
    *Pre-quests in this guide: Ironband Wants You!, A Sign of Hope, Prospect of Faith, Prospect of Faith, Passing Word of a Threat, Passing Word of a Threat, Find Agmond, Murdaloc, An Ambassador of Evil, Badlands Reagent Run
step
    #completewith next
    +|cRXP_WARN_Pre-quests|r
step
    .goto 1455,74.64,11.74
    >>Talk to |cRXP_FRIENDLY_Prospector Stormpike|r
    .accept 707 >>Accept Ironband Wants You!
    .target Prospector Stormpike
step
    .goto 1432,65.93,65.62
    >>Talk to |cRXP_FRIENDLY_Prospector Ironband|r
    .turnin 707 >>Turn in Ironband Wants You!
    .accept 738 >>Accept Find Agmond
    .target Prospector Ironband
step
    .goto 1432,37.07,49.38
    >>Talk to |cRXP_FRIENDLY_Ghak Healtouch|r
    .accept 2500 >>Accept Badlands Reagent Run
    .target Ghak Healtouch
step
    .goto 1432,37.28,85.78
    >>Talk to |cRXP_FRIENDLY_Hammertoe Grez|r
    .accept 723 >>Accept Prospect of Faith
    .target Hammertoe Grez
step
    .goto 1418,50.89,62.4
    >>Click the |cRXP_PICK_Battered Dwarven Skeleton|r
    .turnin 738 >>Turn in Find Agmond
    .accept 739 >>Accept Murdaloc
step
    .goto 1418,53.42,43.39
    >>Talk to |cRXP_FRIENDLY_Prospector Ryedol|r
    .turnin 723 >>Turn in Prospect of Faith
    .accept 724 >>Accept Prospect of Faith
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
    .goto 1418,49.63,66.31
    >>Kill |cRXP_ENEMY_Murdaloc|r. Kill |cRXP_ENEMY_Stonevault Bonesnapper|r
    *Slay Agmond's killer, Murdaloc.
    .complete 739,1 --Murdaloc
    .complete 739,2 --Murdaloc
    .mob Murdaloc
    .mob Stonevault Bonesnapper
step
    .goto 1418,15.03,60.1
    >>Collect |cRXP_LOOT_[Buzzard Gizzard]|r from |cRXP_ENEMY_Wayward Buzzard|r, |cRXP_ENEMY_Buzzard|r, |cRXP_ENEMY_Giant Buzzard|r
    *Acquire the reagents Ghak Healtouch needs from the Badlands, then return to him in Thelsamar.
    .complete 2500,1 --Badlands Reagent Run
    .mob Wayward Buzzard
    .mob Buzzard
step
    .goto 1418,55.52,56.68
    >>Collect |cRXP_LOOT_[Crag Coyote Fang]|r from |cRXP_ENEMY_Crag Coyote|r, |cRXP_ENEMY_Feral Crag Coyote|r, |cRXP_ENEMY_Elder Crag Coyote|r
    *Acquire the reagents Ghak Healtouch needs from the Badlands, then return to him in Thelsamar.
    .complete 2500,2 --Badlands Reagent Run
    .mob Crag Coyote
    .mob Feral Crag Coyote
step
    .goto 1418,2.77,78.22
    >>Collect |cRXP_LOOT_[Rock Elemental Shard]|r from |cRXP_ENEMY_Earth Elemental|r, |cRXP_ENEMY_Lesser Rock Elemental|r, |cRXP_ENEMY_Greater Rock Elemental|r
    *Acquire the reagents Ghak Healtouch needs from the Badlands, then return to him in Thelsamar.
    .complete 2500,3 --Badlands Reagent Run
    .mob Earth Elemental
    .mob Lesser Rock Elemental
step
    .goto 1432,37.07,49.38
    >>Talk to |cRXP_FRIENDLY_Ghak Healtouch|r
    .turnin 2500 >>Turn in Badlands Reagent Run
    .target Ghak Healtouch
step
    .goto 1432,65.93,65.62
    >>Talk to |cRXP_FRIENDLY_Prospector Ironband|r
    .turnin 739 >>Turn in Murdaloc
    .target Prospector Ironband
step
    .goto 1455,77.54,11.82
    >>Talk to |cRXP_FRIENDLY_Historian Karnik|r
    .turnin 724 >>Turn in Prospect of Faith
    .accept 725 >>Accept Passing Word of a Threat
    .target Historian Karnik
step
    .goto 1455,77.34,9.71
    >>Talk to |cRXP_FRIENDLY_Advisor Belgrum|r
    .turnin 725 >>Turn in Passing Word of a Threat
    .accept 726 >>Accept Passing Word of a Threat
    .target Advisor Belgrum
step
    .goto 1455,77.54,11.82
    >>Talk to |cRXP_FRIENDLY_Historian Karnik|r
    .turnin 726 >>Turn in Passing Word of a Threat
    .accept 762 >>Accept An Ambassador of Evil
    .target Historian Karnik
step
    .goto 1418,42.1,28.88
    >>Collect |cRXP_LOOT_[Ambassador Infernus' Bracer]|r from |cRXP_ENEMY_Ambassador Infernus|r
    *Kill Ambassador Infernus in Angor Fortress and bring proof of his death to Advisor Belgrum in Ironforge.
    .complete 762,1 --An Ambassador of Evil
    .mob Ambassador Infernus
step
    .goto 1455,77.34,9.71
    >>Talk to |cRXP_FRIENDLY_Advisor Belgrum|r
    .turnin 762 >>Turn in An Ambassador of Evil
    .target Advisor Belgrum
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1455,77.34,9.71
    >>Talk to |cRXP_FRIENDLY_Advisor Belgrum|r
    .accept 1139 >>Accept The Lost Tablets of Will
    .target Advisor Belgrum
step
    .goto 1455,74.19,9.39
    >>Talk to |cRXP_FRIENDLY_Krom Stoutarm|r
    .accept 1360 >>Accept Reclaimed Treasures
    .target Krom Stoutarm
step
    .goto 1455,74.64,11.74
    >>Talk to |cRXP_FRIENDLY_Prospector Stormpike|r
    .accept 2398 >>Accept The Lost Dwarves
    .target Prospector Stormpike
step
    .goto 1432,37.07,49.38
    >>Talk to |cRXP_FRIENDLY_Ghak Healtouch|r
    .accept 17 >>Accept Uldaman Reagent Run
    .target Ghak Healtouch
step
    .goto 1432,65.93,65.62
    >>Talk to |cRXP_FRIENDLY_Prospector Ironband|r
    .accept 704 >>Accept Agmond's Fate
    .target Prospector Ironband
step
    .goto 1418,51.39,76.87
    >>Talk to |cRXP_FRIENDLY_Theldurin the Lost|r
    .accept 709 >>Accept Solution to Doom
    .target Theldurin the Lost
step
    .goto 1418,42.39,52.93
    >>Talk to |cRXP_FRIENDLY_Rigglefuzz|r
    .accept 2418 >>Accept Power Stones
    .target Rigglefuzz
step
    .goto 1418,53.42,43.39
    >>Talk to |cRXP_FRIENDLY_Prospector Ryedol|r
    .accept 721 >>Accept A Sign of Hope
    .target Prospector Ryedol
step
    .goto 1418,43.86,10.74
    >>Loot |cRXP_LOOT_[Shattered Necklace]|r from |cRXP_ENEMY_Shadowforge Surveyor|r, |cRXP_ENEMY_Shadowforge Ruffian|r, |cRXP_ENEMY_Shadowforge Digger|r, then click it to start the quest
    .accept 2198 >>Accept The Shattered Necklace
    .use 7666
    .mob Shadowforge Surveyor
    .mob Shadowforge Ruffian
step
    .goto 1418,35.56,23.51
    >>Collect |cRXP_LOOT_[Krom Stoutarm's Treasure]|r from |cRXP_PICK_Krom Stoutarm's Chest|r
    *Get Krom Stoutarm's treasured possession from his chest in the North Common Hall of Uldaman, and bring it to him in Ironforge.
    .complete 1360,1 --Reclaimed Treasures
step
    .goto 1418,34.72,23.94
    >>Collect |cRXP_LOOT_[Carved Stone Urn]|r from |cRXP_PICK_Carved Stone Urn|r
    *Bring 4 Carved Stone Urns to Prospector Ironband in Loch Modan.
    .complete 704,1 --Agmond's Fate
step
    .goto 1432,38.57,93.18
    >>Collect |cRXP_LOOT_[Tablet of Ryun'eh]|r from |cRXP_PICK_Ancient Chest|r
    *Bring the Tablet of Ryun'eh to Theldurin the Lost.
    .complete 709,1 --Solution to Doom
step
    #completewith next
    +|cRXP_WARN_Run the dungeon|r
step
    .goto 1418,44.6,12.1
    >>Inside Uldaman: these quests start from a drop or an object in the dungeon
    .accept 2278 >>Accept The Platinum Discs
step
    .goto 1418,44.6,12.1
    >>Enter |cRXP_WARN_Uldaman|r and run it with a group. Quest goals inside:
    *Uldaman Reagent Run: Bring 12 Magenta Fungus Caps to Ghak Healtouch in Thelsamar.
    *The Lost Tablets of Will: Find the Tablet of Will, and return them to Advisor Belgrum in Ironforge.
    *Power Stones: Bring 8 Dentrium Power Stones and 8 An'Alleum Power Stones to Rigglefuzz in the Badlands.
    .complete 17,1 --Uldaman Reagent Run
    .complete 1139,1 --The Lost Tablets of Will
    .complete 2418,1 --Power Stones
    .complete 2418,2 --Power Stones
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1418,44.6,12.1
    >>Inside Uldaman: these quests start from a drop or an object in the dungeon
    .turnin 2278 >>Turn in The Platinum Discs
step
    .goto 1418,42.39,52.93
    >>Talk to |cRXP_FRIENDLY_Rigglefuzz|r
    .turnin 2418 >>Turn in Power Stones
    .target Rigglefuzz
step
    .goto 1418,51.39,76.87
    >>Talk to |cRXP_FRIENDLY_Theldurin the Lost|r
    .turnin 709 >>Turn in Solution to Doom
    .target Theldurin the Lost
step
    .goto 1432,37.07,49.38
    >>Talk to |cRXP_FRIENDLY_Ghak Healtouch|r
    .turnin 17 >>Turn in Uldaman Reagent Run
    .target Ghak Healtouch
step
    .goto 1432,65.93,65.62
    >>Talk to |cRXP_FRIENDLY_Prospector Ironband|r
    .turnin 704 >>Turn in Agmond's Fate
    .target Prospector Ironband
step
    .goto 1432,37.28,85.78
    >>Talk to |cRXP_FRIENDLY_Hammertoe Grez|r
    .turnin 721 >>Turn in A Sign of Hope
    .target Hammertoe Grez
step
    .goto 1455,77.34,9.71
    >>Talk to |cRXP_FRIENDLY_Advisor Belgrum|r
    .turnin 1139 >>Turn in The Lost Tablets of Will
    .target Advisor Belgrum
step
    .goto 1455,74.19,9.39
    >>Talk to |cRXP_FRIENDLY_Krom Stoutarm|r
    .turnin 1360 >>Turn in Reclaimed Treasures
    .target Krom Stoutarm
step
    .goto 1455,74.64,11.74
    >>Talk to |cRXP_FRIENDLY_Prospector Stormpike|r
    .turnin 2398 >>Turn in The Lost Dwarves
    .target Prospector Stormpike
step
    .goto 1455,36.38,3.61
    >>Talk to |cRXP_FRIENDLY_Talvash del Kissel|r
    .turnin 2198 >>Turn in The Shattered Necklace
    .target Talvash del Kissel
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1455,36.38,3.61
    >>Talk to |cRXP_FRIENDLY_Talvash del Kissel|r
    .accept 2199 >>Accept Lore for a Price
    .target Talvash del Kissel
step
    .goto 1432,37.28,85.78
    >>Talk to |cRXP_FRIENDLY_Hammertoe Grez|r
    .accept 722 >>Accept Amulet of Secrets
    .target Hammertoe Grez
step
    .goto 1432,38.37,93.97
    >>Collect |cRXP_LOOT_[Hammertoe's Amulet]|r from |cRXP_ENEMY_Magregan Deepshadow|r
    *Find Hammertoe's Amulet and return it to him in Uldaman.
    .complete 722,1 --Amulet of Secrets
    .mob Magregan Deepshadow
step
    .goto 1432,48.86,54.23
    >>Collect |cRXP_LOOT_[Silver Bar]|r from |cRXP_PICK_Battered Chest|r, |cRXP_PICK_Tattered Chest|r
    *Bring five silver bars to Talvash del Kissel in Ironforge.
    .complete 2199,1 --Lore for a Price
step
    #completewith next
    +|cRXP_WARN_Run the dungeon (run 2)|r
step
    .goto 1418,44.6,12.1
    >>Inside Uldaman: these quests start from a drop or an object in the dungeon
    .accept 2240 >>Accept The Hidden Chamber
    .accept 2279 >>Accept The Platinum Discs
step
    .goto 1418,44.6,12.1
    >>Enter |cRXP_WARN_Uldaman|r and run it with a group. Quest goals inside:
    *The Hidden Chamber: Read Baelog's Journal, explore the hidden chamber, then report to Prospector Stormpike.
    .complete 2240,1 --The Hidden Chamber
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1432,37.28,85.78
    >>Talk to |cRXP_FRIENDLY_Hammertoe Grez|r
    .turnin 722 >>Turn in Amulet of Secrets
    .target Hammertoe Grez
step
    .goto 1455,36.38,3.61
    >>Talk to |cRXP_FRIENDLY_Talvash del Kissel|r
    .turnin 2199 >>Turn in Lore for a Price
    .target Talvash del Kissel
step
    .goto 1455,69.93,18.55
    >>Talk to |cRXP_FRIENDLY_High Explorer Magellas|r
    .turnin 2279 >>Turn in The Platinum Discs
    .target High Explorer Magellas
step
    .goto 1455,74.64,11.74
    >>Talk to |cRXP_FRIENDLY_Prospector Stormpike|r
    .turnin 2240 >>Turn in The Hidden Chamber
    .target Prospector Stormpike
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1455,36.38,3.61
    >>Talk to |cRXP_FRIENDLY_Talvash del Kissel|r
    .accept 2200 >>Accept Back to Uldaman
    .target Talvash del Kissel
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1455,36.38,3.61
    >>Talk to |cRXP_FRIENDLY_Talvash del Kissel|r
    .turnin 2200 >>Turn in Back to Uldaman
    .target Talvash del Kissel
step
    #completewith next
    +|cRXP_WARN_Run the dungeon (run 3)|r
step
    .goto 1418,44.6,12.1
    >>Inside Uldaman: these quests start from a drop or an object in the dungeon
    .accept 2201 >>Accept Find the Gems
step
    .goto 1418,44.6,12.1
    >>Enter |cRXP_WARN_Uldaman|r and run it with a group. Quest goals inside:
    *Find the Gems: Find the ruby, sapphire, and topaz that are scattered throughout Uldaman. Once acquired, contact Talvash del Kissel remotely by using the Phial of Scrying he previously gave you.
    .complete 2201,1 --Find the Gems
    .complete 2201,2 --Find the Gems
    .complete 2201,3 --Find the Gems
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1418,44.6,12.1
    >>Inside Uldaman: these quests start from a drop or an object in the dungeon
    .turnin 2201 >>Turn in Find the Gems
step
    >>|cRXP_WARN_Also part of this dungeon (later follow-ups or missing data). Do them if they are offered:|r
    *Restoring the Necklace
    *Restoring the Necklace
    +Done
step
    .goto 1418,44.6,12.1
    +Dungeon entrance: Uldaman. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 40-49
#name 45-46 Shen'dralas/Desolace
#displayname 45-46 Shen'dralas/Desolace
#next 46-47 Zul'Farrak
step
    .zone 2652 >>Travel to Shen'dralas
    *Suggested level for this part: 45-46
step
    .goto 2652,20.93,22.68
    >>Talk to |cRXP_FRIENDLY_Nerlokh|r
    .accept 93058 >>Accept Saving Our Own
    .accept 93128 >>Accept Khan Jehn
    .target Nerlokh
step
    .goto 2652,20.93,22.68
    >>Talk to |cRXP_FRIENDLY_Nerlokh|r
    .turnin 93058 >>Turn in Saving Our Own
    .target Nerlokh
step
    .goto 2652,59.27,53.93
    >>Talk to |cRXP_FRIENDLY_Hagiak|r
    .accept 93129 >>Accept Threat of Starvation
    .accept 93072 >>Accept Long-Term Solutions
    .target Hagiak
step
    .goto 2652,59.27,53.93
    >>Talk to |cRXP_FRIENDLY_Hagiak|r
    .turnin 93129 >>Turn in Threat of Starvation
    .target Hagiak
step
    .goto 2652,53.32,76.02
    >>Talk to |cRXP_FRIENDLY_Mithera|r
    .accept 93362 >>Accept What They've Done to My Peonies
    .target Mithera
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
    .goto 2652,48.3,88.2
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
    .goto 2652,32.78,64.24
    >>Kill |cRXP_ENEMY_Outcast Scout|r. Kill |cRXP_ENEMY_Outcast Marauder|r
    *Maintain your reputation with the Magram clan and slay 2 Outcast Scouts, 6 Outcast Marauders, and 8 Outcast Necromancers then return to Hagiak at the Magram Front.
    .complete 93072,1 --Long-Term Solutions
    .complete 93072,2 --Long-Term Solutions
    .mob Outcast Scout
    .mob Outcast Marauder
step
    .goto 2652,61.67,74.89
    >>Kill |cRXP_ENEMY_Rowdy Rose|r. Kill |cRXP_ENEMY_Terrible Tulip|r
    *Cull plants in the Forlorn Garden and then return to Mithera at Shen'dralas.
    .complete 93362,1 --What They've Done to My Peonies
    .complete 93362,2 --What They've Done to My Peonies
    .mob Rowdy Rose
    .mob Terrible Tulip
step
    .goto 2652,66.22,66.69
    >>Kill |cRXP_ENEMY_Malevolent Marigold|r
    *Cull plants in the Forlorn Garden and then return to Mithera at Shen'dralas.
    .complete 93362,3 --What They've Done to My Peonies
    .mob Malevolent Marigold
step
    .goto 2652,53.32,76.02
    >>Talk to |cRXP_FRIENDLY_Mithera|r
    .turnin 93362 >>Turn in What They've Done to My Peonies
    .target Mithera
step
    .goto 2652,43.58,34.25
    >>Collect |cRXP_LOOT_[Depleted Crystal Heart]|r from |cRXP_ENEMY_Decrepit Pylon Protector|r
    *Slay a Decrepit Pylon Protector for their Depleted Crystal Heart and bring it to Historian Biraxas within the temple of Shen'dralas.
    .complete 99257,1 --A Heart of Crystal
    .mob Decrepit Pylon Protector
step
    .goto 2652,72.73,31.17
    >>Talk to |cRXP_FRIENDLY_Kog'thug the Brave|r
    .accept 93606 >>Accept Not on Squealing Terms
    .target Kog'thug the Brave
step
    >>Collect |cRXP_LOOT_[Benevolent Bouquet]|r
    *Quell the quilboar's quarrel by bringing Quolga a Benevolent Bouquet and the Virulent Blood of Agamaggan. The flowers to make the bouquet can be acquired at the Forlorn Gardens, near Shen'dralas in the Desolace.
    .complete 93606,1 --Not on Squealing Terms
step
    .goto 2652,58.15,14.78
    >>Talk to |cRXP_FRIENDLY_Quolga the Wise|r
    .turnin 93606 >>Turn in Not on Squealing Terms
    .target Quolga the Wise
step
    .goto 2652,46,78.22
    >>Talk to |cRXP_FRIENDLY_Historian Biraxas|r
    .turnin 99257 >>Turn in A Heart of Crystal
    .target Historian Biraxas
step
    .goto 1443,36.22,79.25
    >>Talk to |cRXP_FRIENDLY_Uthek the Wise|r
    .turnin 93128 >>Turn in Khan Jehn
    .accept 1380 >>Accept Khan Hratha
    .target Uthek the Wise
step
    >>Collect |cRXP_LOOT_[Maraudine Key Fragment]|r from |cRXP_ENEMY_Khan Hratha|r. Earn the required reputation
    *Maintain your reputation with the Gelkis, and bring the Maraudine Key Fragment to Uthek the Wise in the Gelkis Village.
    .complete 1380,1 --Khan Hratha
    .complete 1380,2 --Khan Hratha
    .mob Khan Hratha
step
    .goto 1443,36.22,79.25
    >>Talk to |cRXP_FRIENDLY_Uthek the Wise|r
    .turnin 1380 >>Turn in Khan Hratha
    .target Uthek the Wise
step
    .goto 1443,43.48,78.98
    >>Talk to |cRXP_FRIENDLY_Umarak|r
    .accept 96222 >>Accept Khan Hratha
    .target Umarak
step
    >>Collect |cRXP_LOOT_[Maraudine Key Fragment]|r from |cRXP_ENEMY_Khan Hratha|r
    *Bring the Maraudine Key Fragment to Umarak in the Desolace.
    .complete 96222,1 --Khan Hratha
    .mob Khan Hratha
step
    .goto 1443,43.48,78.98
    >>Talk to |cRXP_FRIENDLY_Umarak|r
    .turnin 96222 >>Turn in Khan Hratha
    .target Umarak
step
    .goto 1443,63.44,89.38
    >>Kill |cRXP_ENEMY_Outcast Necromancer|r
    *Maintain your reputation with the Magram clan and slay 2 Outcast Scouts, 6 Outcast Marauders, and 8 Outcast Necromancers then return to Hagiak at the Magram Front.
    .complete 93072,3 --Long-Term Solutions
    .mob Outcast Necromancer
step
    .goto 1443,74.97,68.16
    >>Talk to |cRXP_FRIENDLY_Warug|r
    .accept 92743 >>Accept A Conqueror's Crown
    .accept 1381 >>Accept Khan Hratha
    .target Warug
step
    .goto 1443,74.97,68.16
    >>Talk to |cRXP_FRIENDLY_Warug|r
    .turnin 92743 >>Turn in A Conqueror's Crown
    .accept 92841 >>Accept Valley of Bones
    .target Warug
step
    .goto 1443,74.97,68.16
    >>Talk to |cRXP_FRIENDLY_Warug|r
    .turnin 92841 >>Turn in Valley of Bones
    .target Warug
step
    >>Collect |cRXP_LOOT_[Maraudine Key Fragment]|r from |cRXP_ENEMY_Khan Hratha|r. Earn the required reputation
    *Maintain your Magram reputation, and bring the Maraudine Key Fragment to Warug in the Magram Village in Desolace.
    .complete 1381,1 --Khan Hratha
    .complete 1381,2 --Khan Hratha
    .mob Khan Hratha
step
    .goto 1443,74.97,68.16
    >>Talk to |cRXP_FRIENDLY_Warug|r
    .turnin 1381 >>Turn in Khan Hratha
    .target Warug
step
    .goto 1443,47.53,54.61
    >>Click the |cRXP_PICK_Extinguished Campfire|r
    .accept 79229 >>Accept Highway Robbery
step
    .goto 1443,62.33,38.99
    >>Talk to |cRXP_FRIENDLY_Bibbly F'utzbuckle|r
    .turnin 79229 >>Turn in Highway Robbery
    .accept 79235 >>Accept On the Lam
    .target Bibbly F'utzbuckle
step
    .goto 1443,66.66,10.93
    >>Talk to |cRXP_FRIENDLY_Captain Pentigast|r
    .accept 93224 >>Accept Carved Centaur Totems
    .target Captain Pentigast
step
    .goto 1443,71.54,45.46
    >>Collect |cRXP_LOOT_[Carved Centaur Totem]|r from |cRXP_ENEMY_Kolkar Centaur|r, |cRXP_ENEMY_Kolkar Scout|r, |cRXP_ENEMY_Kolkar Mauler|r
    *Acquire 5 Carved Centaur Totems by slaying centaur of any clan throughout Desolace, then return them to Captain Pentigast at Nijel's Point.
    .complete 93224,1 --Carved Centaur Totems
    .mob Kolkar Centaur
    .mob Kolkar Scout
step
    .goto 1443,66.66,10.93
    >>Talk to |cRXP_FRIENDLY_Captain Pentigast|r
    .turnin 93224 >>Turn in Carved Centaur Totems
    .accept 93226 >>Accept Buying Friendship: Magram
    .target Captain Pentigast
step
    .goto 1443,66.25,79.42
    >>Talk to |cRXP_FRIENDLY_Gorhak|r
    .turnin 93226 >>Turn in Buying Friendship: Magram
    .target Gorhak
step
    .goto 2652,59.27,53.93
    >>Talk to |cRXP_FRIENDLY_Hagiak|r
    .turnin 93072 >>Turn in Long-Term Solutions
    .accept 93188 >>Accept Return to Orgrul
    .target Hagiak
step
    .goto 2652,59.27,53.93
    >>Talk to |cRXP_FRIENDLY_Hagiak|r
    .turnin 93188 >>Turn in Return to Orgrul
    .target Hagiak
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
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 40-49
#name 46-47 Zul'Farrak
#displayname 46-47 Zul'Farrak
#next 47-48 Maraudon
step
    +|cRXP_WARN_Zul'Farrak|r (levels 44-54). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *Pre-quests in this guide: Witherbark Cages, The Altar of Zul, Thadius Grimshade, Screecher Spirits
step
    #completewith next
    +|cRXP_WARN_Pre-quests|r
step
    .goto 1446,66.99,22.36
    >>Talk to |cRXP_FRIENDLY_Yeh'kinya|r
    .accept 3520 >>Accept Screecher Spirits
    .target Yeh'kinya
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
    .goto 1425,9.75,44.47
    >>Talk to |cRXP_FRIENDLY_Gryphon Master Talonaxe|r
    .accept 2988 >>Accept Witherbark Cages
    .target Gryphon Master Talonaxe
step
    .goto 1425,23.28,58.81
    >>Click |cRXP_PICK_First Witherbark Cage|r. Click |cRXP_PICK_Second Witherbark Cage|r. Click |cRXP_PICK_Third Witherbark Cage|r
    *Check the cages at the two Witherbark villages, then return to Gryphon Master Talonaxe.
    .complete 2988,1 --Witherbark Cages
    .complete 2988,2 --Witherbark Cages
    .complete 2988,3 --Witherbark Cages
step
    .goto 1425,9.75,44.47
    >>Talk to |cRXP_FRIENDLY_Gryphon Master Talonaxe|r
    .turnin 2988 >>Turn in Witherbark Cages
    .accept 2989 >>Accept The Altar of Zul
    .target Gryphon Master Talonaxe
step
    .goto 1425,48.98,68.66
    >>Search the Altar of Zul
    *Check the top of the Altar of Zul, then return to Gryphon Master Talonaxe.
    .complete 2989,1 --The Altar of Zul
step
    .goto 1425,9.75,44.47
    >>Talk to |cRXP_FRIENDLY_Gryphon Master Talonaxe|r
    .turnin 2989 >>Turn in The Altar of Zul
    .accept 2990 >>Accept Thadius Grimshade
    .target Gryphon Master Talonaxe
step
    .goto 1419,66.9,19.47
    >>Talk to |cRXP_FRIENDLY_Thadius Grimshade|r
    .turnin 2990 >>Turn in Thadius Grimshade
    .target Thadius Grimshade
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1419,66.9,19.47
    >>Talk to |cRXP_FRIENDLY_Thadius Grimshade|r
    .accept 2991 >>Accept Nekrum's Medallion
    .target Thadius Grimshade
step
    .goto 1446,52.46,28.51
    >>Talk to |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r
    .accept 2768 >>Accept Divino-matic Rod
    .target Chief Engineer Bilgewhizzle
step
    .goto 1446,51.41,28.75
    >>Talk to |cRXP_FRIENDLY_Trenton Lighthammer|r
    .accept 3042 >>Accept Troll Temper
    .target Trenton Lighthammer
step
    .goto 1446,66.99,22.36
    >>Talk to |cRXP_FRIENDLY_Yeh'kinya|r
    .accept 3527 >>Accept The Prophecy of Mosh'aru
    .target Yeh'kinya
step
    .goto 1441,78.14,77.12
    >>Talk to |cRXP_FRIENDLY_Wizzle Brassbolts|r
    .accept 2770 >>Accept Gahz'rilla
    .target Wizzle Brassbolts
step
    .goto 1445,46.06,57.09
    >>Talk to |cRXP_FRIENDLY_Tabetha|r
    .accept 2846 >>Accept Tiara of the Deep
    .target Tabetha
step
    .goto 1455,27.25,8.3
    >>Talk to |cRXP_FRIENDLY_Bink|r
    .accept 2861 >>Accept Tabetha's Task
    .target Bink
step
    .goto 1434,26.94,77.21
    >>Talk to |cRXP_FRIENDLY_Krazek|r
    .accept 2864 >>Accept Tran'rek
    .target Krazek
step
    .goto 1416,15.3,73.93
    >>Talk to |cRXP_FRIENDLY_Archmage Lan'dalock|r
    .accept 96770 >>Accept The Witch Doctor's Head
    .target Archmage Lan'dalock
step
    #completewith next
    +|cRXP_WARN_Run the dungeon|r
step
    .goto 1446,38.7,20.1
    >>Enter |cRXP_WARN_Zul'Farrak|r and run it with a group. Quest goals inside:
    *Divino-matic Rod: Bring the Divino-matic Rod to Chief Engineer Bilgewhizzle in Gadgetzan.
    *Gahz'rilla: Bring Gahz'rilla's Electrified Scale to Wizzle Brassbolts in the Shimmering Flats.
    *Tiara of the Deep: Bring the Tiara of the Deep to Tabetha in Dustwallow Marsh.
    *Nekrum's Medallion: Bring Nekrum's Medallion to Thadius Grimshade in the Blasted Lands.
    *Troll Temper: Bring 20 Vials of Troll Temper to Trenton Lighthammer in Gadgetzan.
    *The Prophecy of Mosh'aru: Bring the First and Second Mosh'aru Tablets to Yeh'kinya in Tanaris.
    *The Witch Doctor's Head: Slay Witch Doctor Zum'rah and bring Zum'rah's Head to Archmage Lan'dalock in Dalaran.
    .complete 2768,1 --Divino-matic Rod
    .complete 2770,1 --Gahz'rilla
    .complete 2846,1 --Tiara of the Deep
    .complete 2991,1 --Nekrum's Medallion
    .complete 3042,1 --Troll Temper
    .complete 3527,1 --The Prophecy of Mosh'aru
    .complete 3527,2 --The Prophecy of Mosh'aru
    .complete 96770,1 --The Witch Doctor's Head
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1446,51.57,26.76
    >>Talk to |cRXP_FRIENDLY_Tran'rek|r
    .turnin 2864 >>Turn in Tran'rek
    .target Tran'rek
step
    .goto 1446,52.46,28.51
    >>Talk to |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r
    .turnin 2768 >>Turn in Divino-matic Rod
    .target Chief Engineer Bilgewhizzle
step
    .goto 1446,51.41,28.75
    >>Talk to |cRXP_FRIENDLY_Trenton Lighthammer|r
    .turnin 3042 >>Turn in Troll Temper
    .target Trenton Lighthammer
step
    .goto 1446,66.99,22.36
    >>Talk to |cRXP_FRIENDLY_Yeh'kinya|r
    .turnin 3527 >>Turn in The Prophecy of Mosh'aru
    .target Yeh'kinya
step
    .goto 1441,78.14,77.12
    >>Talk to |cRXP_FRIENDLY_Wizzle Brassbolts|r
    .turnin 2770 >>Turn in Gahz'rilla
    .target Wizzle Brassbolts
step
    .goto 1445,46.06,57.09
    >>Talk to |cRXP_FRIENDLY_Tabetha|r
    .turnin 2846 >>Turn in Tiara of the Deep
    .turnin 2861 >>Turn in Tabetha's Task
    .target Tabetha
step
    .goto 1419,66.9,19.47
    >>Talk to |cRXP_FRIENDLY_Thadius Grimshade|r
    .turnin 2991 >>Turn in Nekrum's Medallion
    .target Thadius Grimshade
step
    .goto 1416,15.3,73.93
    >>Talk to |cRXP_FRIENDLY_Archmage Lan'dalock|r
    .turnin 96770 >>Turn in The Witch Doctor's Head
    .target Archmage Lan'dalock
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1446,51.57,26.76
    >>Talk to |cRXP_FRIENDLY_Tran'rek|r
    .accept 2865 >>Accept Scarab Shells
    .target Tran'rek
step
    #completewith next
    +|cRXP_WARN_Run the dungeon (run 2)|r
step
    .goto 1446,38.7,20.1
    >>Enter |cRXP_WARN_Zul'Farrak|r and run it with a group. Quest goals inside:
    *Scarab Shells: Bring 5 Uncracked Scarab Shells to Tran'rek in Gadgetzan.
    .complete 2865,1 --Scarab Shells
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1446,51.57,26.76
    >>Talk to |cRXP_FRIENDLY_Tran'rek|r
    .turnin 2865 >>Turn in Scarab Shells
    .target Tran'rek
step
    .goto 1446,38.7,20.1
    +Dungeon entrance: Zul'Farrak. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 40-49
#name 47-48 Maraudon
#displayname 47-48 Maraudon
#next 48-48 Riverglades
step
    +|cRXP_WARN_Maraudon|r (levels 46-55). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *Pre-quests in this guide: Strange Pylons, A Brief History Lesson, Forlorn Gardens, Meeting the Magister, Word of the Woods, Fragments of the Pylons, Powering the Pylons
step
    #completewith next
    +|cRXP_WARN_Pre-quests|r
step
    .goto 2652,43.64,34.3
    >>Click the |cRXP_PICK_Shen'dralar Pylon|r
    .accept 92914 >>Accept Strange Pylons
step
    .goto 2652,47.46,76.58
    >>Temple pylon found
    *Explore Shen'dralas in an effort to find other pylons like the one you found.
    .complete 92914,1 --Strange Pylons
step
    .goto 2652,35.17,46.61
    >>Talk to |cRXP_FRIENDLY_Mordent Evenshade|r
    .turnin 92914 >>Turn in Strange Pylons
    .accept 96010 >>Accept Fragments of the Pylons
    .target Mordent Evenshade
step
    >>Collect |cRXP_LOOT_[Pylon Fragment]|r. Collect |cRXP_LOOT_[Pylon Shard]|r
    *Recover shards and fragments of the pylons, found guarded at the Magram and Gelkis villages. Return them to Mordent Evenshade.
    .complete 96010,1 --Fragments of the Pylons
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
    .goto 2652,53.32,76.02
    >>Talk to |cRXP_FRIENDLY_Mithera|r
    .accept 93341 >>Accept Forlorn Gardens
    .target Mithera
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
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 2652,69.66,71.78
    >>Talk to |cRXP_FRIENDLY_Woodwyrd|r
    .accept 93404 >>Accept Rot and Regret
    .target Woodwyrd
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
    .goto 2652,69.66,71.78
    >>Kill |cRXP_ENEMY_Woodwyrd|r
    *Venture to Maraudon and recover a Vial of Earth Song Water and return it to Woodwyrd at the Forlorn Gardens in Desolace.
    *|cRXP_WARN_Elite targets here. Group up or skip.|r
    .complete 93404,1 --Rot and Regret
    .mob Woodwyrd
step
    #completewith next
    +|cRXP_WARN_Run the dungeon|r
step
    .goto 1443,29.1,62.5
    >>Inside Maraudon: these quests start from a drop or an object in the dungeon
    .accept 7066 >>Accept Seed of Life
step
    .goto 1443,29.1,62.5
    >>Enter |cRXP_WARN_Maraudon|r and run it with a group. Quest goals inside:
    *Twisted Evils: Collect 15 Theradric Crystal Carvings for Willow in Desolace.
    *Vyletongue Corruption: Fill the Coated Cerulean Vial at the orange crystal pool in Maraudon.
    *Legends of Maraudon: Recover the two parts of the Scepter of Celebras: the Celebrian Rod and the Celebrian Diamond.
    *Corruption of Earth and Seed: Slay Princess Theradras and return to Keeper Marandis at Nijel's Point in Desolace.
    *The Pariah's Instructions: Read the Pariah's Instructions. Afterwards, obtain the Amulet of Union from Maraudon and return it to the Centaur Pariah in southern Desolace.
    *Rot and Regret: Venture to Maraudon and recover a Vial of Earth Song Water and return it to Woodwyrd at the Forlorn Gardens in Desolace.
    .complete 7028,1 --Twisted Evils
    .complete 7041,1 --Vyletongue Corruption
    .complete 7041,2 --Vyletongue Corruption
    .complete 7044,1 --Legends of Maraudon
    .complete 7044,2 --Legends of Maraudon
    .complete 7065,1 --Corruption of Earth and Seed
    .complete 7067,1 --The Pariah's Instructions
    .complete 93404,2 --Rot and Regret
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
    .goto 2652,69.66,71.78
    >>Talk to |cRXP_FRIENDLY_Woodwyrd|r
    .turnin 93404 >>Turn in Rot and Regret
    .target Woodwyrd
step
    #completewith next
    +|cRXP_WARN_Run the dungeon (run 2)|r
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
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 40-49
#name 48-48 Riverglades
#displayname 48-48 Riverglades
#next 48-48 The Hinterlands
step
    .zone 2548 >>Travel to Riverglades
    *Suggested level for this part: 48-48
step
    .goto 2548,66.67,81.01
    >>Talk to |cRXP_FRIENDLY_Demar Brant|r
    .accept 94887 >>Accept Saving Marshal Ryan
    .target Demar Brant
step
    .goto 2548,79.45,52.71
    >>Talk to |cRXP_FRIENDLY_Wharfmaster Whizzbuzz|r
    .accept 95124 >>Accept Admiral Lamora
    .target Wharfmaster Whizzbuzz
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
    .goto 2548,88.03,29.09
    >>Kill |cRXP_ENEMY_Admiral Lamora|r. Collect |cRXP_LOOT_[Lamora's Loot]|r from |cRXP_PICK_Admiral's Treasure Chest|r
    *Slay Admiral Lamora, locate his stash of loot, and return it to Wharfmaster Whizzbuzz.
    .complete 95124,1 --Admiral Lamora
    .complete 95124,2 --Admiral Lamora
    .mob Admiral Lamora
step
    .goto 2548,79.45,52.71
    >>Talk to |cRXP_FRIENDLY_Wharfmaster Whizzbuzz|r
    .turnin 95124 >>Turn in Admiral Lamora
    .target Wharfmaster Whizzbuzz
step
    .goto 2548,66.67,81.01
    >>Talk to |cRXP_FRIENDLY_Demar Brant|r
    .turnin 94926 >>Turn in Drop the Hammer
    .target Demar Brant
step
    .goto 2548,30.71,49.06
    >>Talk to |cRXP_FRIENDLY_Sergeant Riftan|r
    .accept 94891 >>Accept News to Farholde
    .accept 96015 >>Accept A Miner Problem
    .target Sergeant Riftan
step
    .goto 2548,26.15,40.8
    >>Talk to |cRXP_FRIENDLY_Marshal Ryan|r
    .turnin 94887 >>Turn in Saving Marshal Ryan
    .accept 94892 >>Accept Dying Wish
    .target Marshal Ryan
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
    .goto 2548,66.75,81.1
    >>Talk to |cRXP_FRIENDLY_Ashe Amberhall|r
    .turnin 94891 >>Turn in News to Farholde
    .target Ashe Amberhall
step
    .goto 2548,66.67,81.01
    >>Talk to |cRXP_FRIENDLY_Demar Brant|r
    .turnin 94892 >>Turn in Dying Wish
    .accept 94893 >>Accept Delivering Closure
    .accept 94894 >>Accept The Twilight Threat
    .target Demar Brant
step
    .goto 1453,50.12,51.55
    >>Talk to |cRXP_FRIENDLY_Abigail Lawson|r
    .turnin 94893 >>Turn in Delivering Closure
    .target Abigail Lawson
step
    .goto 1453,80.21,38.35
    >>Talk to |cRXP_FRIENDLY_Highlord Bolvar Fordragon|r
    .turnin 94894 >>Turn in The Twilight Threat
    .target Highlord Bolvar Fordragon
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 40-49
#name 48-48 The Hinterlands
#displayname 48-48 The Hinterlands
#next 48-49 Azshara
step
    .zone 1425 >>Travel to The Hinterlands
    *Suggested level for this part: 48-48
step
    #completewith next
    .goto 1425,11.07,46.15,15,0
    >>Talk to |cRXP_FRIENDLY_Guthrum Thunderfist|r if you don't have this flight path yet
    .fp Guthrum Thunderfist >>Get the flight path
    .target Guthrum Thunderfist
step
    .goto 1425,14.83,44.57
    >>Talk to |cRXP_FRIENDLY_Fraggar Thundermantle|r
    .accept 2880 >>Accept Troll Necklace Bounty
    .accept 2877 >>Accept Skulk Rock Clean-up
    .target Fraggar Thundermantle
step
    .goto 1425,14.4,42.6
    >>Talk to |cRXP_FRIENDLY_Farseer Maret Firetend|r
    .accept 86616 >>Accept Repurposed Totems
    .target Farseer Maret Firetend
step
    .goto 1425,45.72,44.19
    >>Kill |cRXP_ENEMY_Green Sludge|r
    *Kill 10 Green Sludges and 10 Jade Oozes, and then report back to Fraggar Thundermantle in Aerie Peak.
    .complete 2877,1 --Skulk Rock Clean-up
    .mob Green Sludge
step
    .goto 1425,56.57,42.56
    >>Kill |cRXP_ENEMY_Jade Ooze|r
    *Kill 10 Green Sludges and 10 Jade Oozes, and then report back to Fraggar Thundermantle in Aerie Peak.
    .complete 2877,2 --Skulk Rock Clean-up
    .mob Jade Ooze
step
    .goto 1425,45.34,66.67
    >>Collect |cRXP_LOOT_[Vilebranch Totem]|r from |cRXP_ENEMY_Vilebranch Soothsayer|r
    *Bring 12 Vilebranch Totems back to Maret Firetend.
    .complete 86616,1 --Repurposed Totems
    .mob Vilebranch Soothsayer
step
    .goto 1425,63.56,69.97
    >>Collect |cRXP_LOOT_[Troll Tribal Necklace]|r from |cRXP_ENEMY_Vilebranch Axe Thrower|r, |cRXP_ENEMY_Vilebranch Witch Doctor|r, |cRXP_ENEMY_Vilebranch Headhunter|r
    *Bring 5 Troll Tribal Necklaces to Fraggar Thundermantle in Aerie Peak.
    .complete 2880,1 --Troll Necklace Bounty
    .mob Vilebranch Axe Thrower
    .mob Vilebranch Witch Doctor
step
    .goto 1425,81.48,60.46
    >>Loot |cRXP_LOOT_[OOX-09/HL Distress Beacon]|r from |cRXP_ENEMY_Saltwater Snapjaw|r, |cRXP_ENEMY_Vilebranch Axe Thrower|r, |cRXP_ENEMY_Vilebranch Witch Doctor|r, then click it to start the quest
    .accept 485 >>Accept Find OOX-09/HL!
    .use 8704
    .mob Saltwater Snapjaw
    .mob Vilebranch Axe Thrower
step
    .goto 1425,49.35,37.66
    >>Talk to |cRXP_FRIENDLY_Homing Robot OOX-09/HL|r
    .turnin 485 >>Turn in Find OOX-09/HL!
    .accept 836 >>Accept Rescue OOX-09/HL!
    .target Homing Robot OOX-09/HL
step
    .goto 1425,14.83,44.57
    >>Talk to |cRXP_FRIENDLY_Fraggar Thundermantle|r
    .turnin 2880 >>Turn in Troll Necklace Bounty
    .turnin 2877 >>Turn in Skulk Rock Clean-up
    .target Fraggar Thundermantle
step
    .goto 1425,14.4,42.6
    >>Talk to |cRXP_FRIENDLY_Farseer Maret Firetend|r
    .turnin 86616 >>Turn in Repurposed Totems
    .target Farseer Maret Firetend
step
    .goto 1434,28.36,76.35
    >>Talk to |cRXP_FRIENDLY_Oglethorpe Obnoticus|r
    .turnin 836 >>Turn in Rescue OOX-09/HL!
    .target Oglethorpe Obnoticus
step
    .goto 1419,66.9,19.47
    >>Talk to |cRXP_FRIENDLY_Thadius Grimshade|r
    .accept 2992 >>Accept The Divination
    .target Thadius Grimshade
step
    .goto 1419,66.9,19.47
    >>Talk to |cRXP_FRIENDLY_Thadius Grimshade|r
    .turnin 2992 >>Turn in The Divination
    .accept 2993 >>Accept Return to the Hinterlands
    .target Thadius Grimshade
step
    .goto 1425,9.75,44.47
    >>Talk to |cRXP_FRIENDLY_Gryphon Master Talonaxe|r
    .turnin 2993 >>Turn in Return to the Hinterlands
    .target Gryphon Master Talonaxe
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 40-49
#name 48-49 Azshara
#displayname 48-49 Azshara
#next 49-49 Alcaz Prison
step
    .zone 1447 >>Travel to Azshara
    *Suggested level for this part: 48-49
step
    #completewith next
    .goto 1447,11.9,77.59,15,0
    >>Talk to |cRXP_FRIENDLY_Jarrodenus|r if you don't have this flight path yet
    .fp Jarrodenus >>Get the flight path
    .target Jarrodenus
step
    .goto 1447,11.37,78.17
    >>Talk to |cRXP_FRIENDLY_Loh'atu|r
    .accept 5536 >>Accept A Land Filled with Hatred
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
    >>Kill |cRXP_ENEMY_Haldarr Satyr|r. Kill |cRXP_ENEMY_Haldarr Trickster|r. Kill |cRXP_ENEMY_Highborne Apparition|r. Kill |cRXP_ENEMY_Highborne Lichling|r
    *Kill 6 Haldarr Satyr, 2 Haldarr Tricksters, 2 Haldarr Felsworn and then return to Loh'atu on the border of Ashenvale.
    *Destroy 6 Highborne Apparitions and 6 Highborne Lichlings before returning to Loh'atu in Azshara.
    .complete 5536,1 --A Land Filled with Hatred
    .complete 5536,2 --A Land Filled with Hatred
    .complete 5535,1 --Spiritual Unrest
    .complete 5535,2 --Spiritual Unrest
    .mob Haldarr Satyr
    .mob Haldarr Trickster
    .mob Highborne Apparition
    .mob Highborne Lichling
step
    .goto 1447,20.62,61.91
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
    .goto 1447,11.37,78.17
    >>Talk to |cRXP_FRIENDLY_Loh'atu|r
    .turnin 5536 >>Turn in A Land Filled with Hatred
    .turnin 5535 >>Turn in Spiritual Unrest
    .target Loh'atu
step
    .goto 1447,11.81,78.36
    >>Talk to |cRXP_FRIENDLY_Commander Truesong|r
    .turnin 88807 >>Turn in Slay the Spitelash
    .turnin 88857 >>Turn in Saving a Sentinel
    .accept 88809 >>Accept Preserving Eldarath
    .accept 88821 >>Accept Making Contact
    .target Commander Truesong
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
    >>Collect |cRXP_LOOT_[Staff of Archmage Selwyn]|r
    *Find the Staff of Archmage Selwyn among the Ruins of Eldarath, and bring it to Saria Fairmoon in Azshara.
    .complete 88917,1 --Slithering Looters
step
    .goto 1447,50.56,42.7
    >>Talk to |cRXP_FRIENDLY_Saria Fairmoon|r
    .turnin 88917 >>Turn in Slithering Looters
    .accept 88884 >>Accept Highborne Tablets
    .target Saria Fairmoon
step
    >>Collect |cRXP_LOOT_[Tablet of Creation]|r. Collect |cRXP_LOOT_[Tablet of Manipulation]|r. Collect |cRXP_LOOT_[Tablet of Power]|r
    *Find the three highborne tablets among the ruins of Southridge Beach, then bring them to Saria Fairmoon in Azshara.
    .complete 88884,1 --Highborne Tablets
    .complete 88884,2 --Highborne Tablets
    .complete 88884,3 --Highborne Tablets
step
    .goto 1447,50.56,42.7
    >>Talk to |cRXP_FRIENDLY_Saria Fairmoon|r
    .turnin 88884 >>Turn in Highborne Tablets
    .accept 89037 >>Accept Murloc Thieves
    .target Saria Fairmoon
step
    .goto 1447,54.55,78.75
    >>Collect |cRXP_LOOT_[Mosshoof Hide]|r from |cRXP_ENEMY_Mosshoof Runner|r, |cRXP_ENEMY_Mosshoof Stag|r, |cRXP_ENEMY_Mosshoof Courser|r
    *Bring 5 Mosshoof Hides to Berdun Cliffbrew at Talrendis Point in Azshara.
    .complete 89001,1 --Home on the Range
    .mob Mosshoof Runner
    .mob Mosshoof Stag
step
    .goto 1447,12.6,77.36
    >>Talk to |cRXP_FRIENDLY_Berdun Cliffbrew|r
    .turnin 89001 >>Turn in Home on the Range
    .target Berdun Cliffbrew
step
    .goto 1447,11.81,78.36
    >>Talk to |cRXP_FRIENDLY_Commander Truesong|r
    .turnin 88809 >>Turn in Preserving Eldarath
    .target Commander Truesong
step
    .goto 1447,12.6,77.36
    >>Talk to |cRXP_FRIENDLY_Berdun Cliffbrew|r
    .accept 89228 >>Accept Winter Frontier Fishery
    .accept 89013 >>Accept Gettin' Buzzed
    .target Berdun Cliffbrew
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
    .goto 1447,17.81,55.02
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
    .goto 1457,39.65,89.54
    >>Talk to |cRXP_FRIENDLY_Sentinel Dalia Sunblade|r
    .accept 98096 >>Accept Sisters In Duty
    .target Sentinel Dalia Sunblade
step
    .goto 1447,11.81,78.36
    >>Talk to |cRXP_FRIENDLY_Commander Truesong|r
    .turnin 98096 >>Turn in Sisters In Duty
    .target Commander Truesong
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 40-49
#name 49-49 Alcaz Prison
#displayname 49-49 Alcaz Prison
#next 49-51 Un'Goro Crater
step
    +|cRXP_WARN_Alcaz Prison|r (levels 48-53). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *New Forever dungeon on Alcaz Island off Dustwallow Marsh. The portal is in the basement of the big central keep. Elite naga patrol the climb up.
    *Pre-quests in this guide: Watch Yer Back, The Return of the King?
step
    #completewith next
    +|cRXP_WARN_Pre-quests|r
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
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
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
    .goto 1434,28.51,75.78
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
    +|cRXP_WARN_Run the dungeon|r
step
    .goto 1445,75,15
    >>Inside Alcaz Prison: these quests start from a drop or an object in the dungeon
    .accept 96335 >>Accept The Man in the Iron Chains
step
    .goto 1445,75,15
    >>Enter |cRXP_WARN_Alcaz Prison|r and run it with a group. Quest goals inside:
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
    .goto 1434,28.51,75.78
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
    +|cRXP_WARN_Run the dungeon (run 2)|r
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
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 40-49
#name 49-51 Un'Goro Crater
#displayname 49-51 Un'Goro Crater
#next 51-52 The Temple of Atal'Hakkar
step
    .zone 1449 >>Travel to Un'Goro Crater
    *Suggested level for this part: 49-51
step
    #completewith next
    .goto 1449,45.23,5.83,15,0
    >>Talk to |cRXP_FRIENDLY_Gryfe|r if you don't have this flight path yet
    .fp Gryfe >>Get the flight path
    .target Gryfe
step
    .goto 1449,43.95,7.14
    >>Talk to |cRXP_FRIENDLY_Williden Marshal|r
    .accept 3881 >>Accept Expedition Salvation
    .target Williden Marshal
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
    .goto 1449,44.23,11.59
    >>Talk to |cRXP_FRIENDLY_Shizzle|r
    .accept 4503 >>Accept Shizzle's Flyer
    .target Shizzle
step
    .goto 1449,42.94,9.64
    >>Talk to |cRXP_FRIENDLY_Muigin|r
    .accept 4141 >>Accept Muigin and Larion
    .target Muigin
step
    .goto 1449,46.38,13.44
    >>Talk to |cRXP_FRIENDLY_Karna Remtravel|r
    .accept 4243 >>Accept Chasing A-Me 01
    .target Karna Remtravel
step
    .goto 1449,41.92,2.7
    >>Talk to |cRXP_FRIENDLY_J.D. Collie|r
    .accept 4284 >>Accept Crystals of Power
    .target J.D. Collie
step
    .goto 1449,67.66,16.76
    >>Talk to |cRXP_FRIENDLY_A-Me 01|r
    .turnin 4243 >>Turn in Chasing A-Me 01
    .accept 4244 >>Accept Chasing A-Me 01
    .target A-Me 01
step
    .goto 1449,66.96,30.14
    >>Collect |cRXP_LOOT_[Crate of Foodstuffs]|r from |cRXP_PICK_Crate of Foodstuffs|r, |cRXP_PICK_Research Equipment|r. Collect |cRXP_LOOT_[Bloodpetal]|r from |cRXP_ENEMY_Bloodpetal Lasher|r, |cRXP_ENEMY_Bloodpetal Flayer|r, |cRXP_ENEMY_Bloodpetal Thresher|r
    *Bring a Crate of Foodstuffs and Research Equipment to Williden Marshal in Un'Goro Crater.
    *Collect 15 Bloodpetals and return to Muigin.
    .complete 3881,1 --Expedition Salvation
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
    .goto 1449,38.45,66.06
    >>Collect |cRXP_LOOT_[Research Equipment]|r from |cRXP_PICK_Research Equipment|r
    *Bring a Crate of Foodstuffs and Research Equipment to Williden Marshal in Un'Goro Crater.
    .complete 3881,2 --Expedition Salvation
step
    .goto 1449,35.52,74.75
    >>Collect |cRXP_LOOT_[Dinosaur Bone]|r from |cRXP_ENEMY_Stegodon|r, |cRXP_ENEMY_Plated Stegodon|r, |cRXP_ENEMY_Spiked Stegodon|r
    *Bring 8 Dinosaur Bones to Spark Nilminer in Un'Goro Crater.
    .complete 3882,1 --Roll the Bones
    .mob Stegodon
    .mob Plated Stegodon
step
    .goto 1449,62.67,76.26
    >>Loot |cRXP_LOOT_[A Mangled Journal]|r from |cRXP_ENEMY_Devilsaur|r, |cRXP_ENEMY_Ironhide Devilsaur|r, |cRXP_ENEMY_Tyrant Devilsaur|r, then click it to start the quest
    .accept 3884 >>Accept Williden's Journal
    .use 11116
    .mob Devilsaur
    .mob Ironhide Devilsaur
step
    .goto 1449,62.67,76.26
    >>Collect |cRXP_LOOT_[Red Power Crystal]|r from |cRXP_ENEMY_Devilsaur|r, |cRXP_ENEMY_Ironhide Devilsaur|r, |cRXP_ENEMY_Tyrant Devilsaur|r. Collect |cRXP_LOOT_[Yellow Power Crystal]|r from |cRXP_ENEMY_Devilsaur|r, |cRXP_ENEMY_Ironhide Devilsaur|r, |cRXP_ENEMY_Tyrant Devilsaur|r. Collect |cRXP_LOOT_[Green Power Crystal]|r from |cRXP_ENEMY_Devilsaur|r, |cRXP_ENEMY_Ironhide Devilsaur|r, |cRXP_ENEMY_Tyrant Devilsaur|r. Collect |cRXP_LOOT_[Blue Power Crystal]|r from |cRXP_ENEMY_Devilsaur|r, |cRXP_ENEMY_Ironhide Devilsaur|r, |cRXP_ENEMY_Tyrant Devilsaur|r
    *Collect 7 Power Crystals of each color: red, blue, yellow, and green. Bring them to J.D. Collie at Marshal's Refuge.
    .complete 4284,1 --Crystals of Power
    .complete 4284,2 --Crystals of Power
    .complete 4284,3 --Crystals of Power
    .complete 4284,4 --Crystals of Power
    .mob Devilsaur
    .mob Ironhide Devilsaur
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
    .goto 1449,71.64,75.96
    >>Talk to |cRXP_FRIENDLY_Torwa Pathfinder|r
    .accept 4290 >>Accept The Fare of Lar'korwi
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
    .target Torwa Pathfinder
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
    .goto 1449,43.95,7.14
    >>Talk to |cRXP_FRIENDLY_Williden Marshal|r
    .turnin 3881 >>Turn in Expedition Salvation
    .turnin 3884 >>Turn in Williden's Journal
    .target Williden Marshal
step
    .goto 1449,43.5,7.42
    >>Talk to |cRXP_FRIENDLY_Spark Nilminer|r
    .turnin 3882 >>Turn in Roll the Bones
    .target Spark Nilminer
step
    .goto 1449,44.66,8.1
    >>Talk to |cRXP_FRIENDLY_Linken|r
    .turnin 3845 >>Turn in It's a Secret to Everybody
    .accept 3908 >>Accept It's a Secret to Everybody
    .target Linken
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
    .accept 4144 >>Accept Bloodpetal Sprouts
    .target Muigin
step
    .goto 1449,62.67,76.26
    >>Collect |cRXP_LOOT_[Bloodpetal Sprout]|r from |cRXP_ENEMY_Devilsaur|r, |cRXP_ENEMY_Ironhide Devilsaur|r, |cRXP_ENEMY_Tyrant Devilsaur|r
    .complete 4144,1 --Bloodpetal Sprouts
    .mob Devilsaur
    .mob Ironhide Devilsaur
step
    .goto 1449,42.94,9.64
    >>Talk to |cRXP_FRIENDLY_Muigin|r
    .turnin 4144 >>Turn in Bloodpetal Sprouts
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
    .accept 3942 >>Accept Linken's Memory
    .target J.D. Collie
step
    .goto 1448,51.35,81.51
    >>Talk to |cRXP_FRIENDLY_Eridan Bluewind|r
    .turnin 3942 >>Turn in Linken's Memory
    .target Eridan Bluewind
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
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 50-60
#name 51-52 The Temple of Atal'Hakkar
#displayname 51-52 The Temple of Atal'Hakkar
#next 52-53 Searing Gorge/Blasted Lands/Burning Steppes
step
    +|cRXP_WARN_The Temple of Atal'Hakkar|r (levels 50-60). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *Pre-quests in this guide: In Search of The Temple, To The Hinterlands, Gryphon Master Talonaxe, Rhapsody Shindigger, Rhapsody's Kalimdor Kocktail, Rhapsody's Tale, The Stone Circle, The Sunken Temple, Screecher Spirits, The Prophecy of Mosh'aru, The Ancient Egg
step
    #completewith next
    +|cRXP_WARN_Pre-quests|r
step
    .goto 1446,66.99,22.36
    >>Talk to |cRXP_FRIENDLY_Yeh'kinya|r
    .accept 3520 >>Accept Screecher Spirits
    .target Yeh'kinya
step
    >>Kill |cRXP_ENEMY_Screecher Spirit|r
    *Capture the spirits of 3 screechers in Feralas, then return to Yeh'kinya in Steamwheedle Port.
    .complete 3520,1 --Screecher Spirits
    .mob Screecher Spirit
step
    .goto 1446,66.99,22.36
    >>Talk to |cRXP_FRIENDLY_Yeh'kinya|r
    .turnin 3520 >>Turn in Screecher Spirits
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
    .goto 1453,69.45,40.4
    >>Talk to |cRXP_FRIENDLY_Brohann Caskbelly|r
    .accept 1448 >>Accept In Search of The Temple
    .target Brohann Caskbelly
step
    .goto 1444,31.83,45.61
    >>Talk to |cRXP_FRIENDLY_Angelas Moonbreeze|r
    .accept 3445 >>Accept The Sunken Temple
    .target Angelas Moonbreeze
step
    .goto 1446,52.71,45.92
    >>Talk to |cRXP_FRIENDLY_Marvon Rivetseeker|r
    .turnin 3445 >>Turn in The Sunken Temple
    .accept 3444 >>Accept The Stone Circle
    .target Marvon Rivetseeker
step
    .goto 1435,70.01,52.88
    >>Search for the Temple of Atal'Hakkar
    *Brohann Caskbelly in Stormwind wants you to search for the Temple of Atal'Hakkar.
    .complete 1448,1 --In Search of The Temple
step
    .goto 1453,69.45,40.4
    >>Talk to |cRXP_FRIENDLY_Brohann Caskbelly|r
    .turnin 1448 >>Turn in In Search of The Temple
    .accept 1449 >>Accept To The Hinterlands
    .target Brohann Caskbelly
step
    .goto 1425,11.81,46.76
    >>Talk to |cRXP_FRIENDLY_Falstad Wildhammer|r
    .turnin 1449 >>Turn in To The Hinterlands
    .accept 1450 >>Accept Gryphon Master Talonaxe
    .target Falstad Wildhammer
step
    .goto 1425,9.75,44.47
    >>Talk to |cRXP_FRIENDLY_Gryphon Master Talonaxe|r
    .turnin 1450 >>Turn in Gryphon Master Talonaxe
    .accept 1451 >>Accept Rhapsody Shindigger
    .target Gryphon Master Talonaxe
step
    .goto 1425,26.94,48.59
    >>Talk to |cRXP_FRIENDLY_Rhapsody Shindigger|r
    .turnin 1451 >>Turn in Rhapsody Shindigger
    .accept 1452 >>Accept Rhapsody's Kalimdor Kocktail
    .target Rhapsody Shindigger
step
    .goto 1425,57.58,86.79
    >>Collect |cRXP_LOOT_[Ancient Egg]|r from |cRXP_PICK_Ancient Egg|r
    *Bring the Ancient Egg to Yeh'kinya in Tanaris.
    .complete 4787,1 --The Ancient Egg
step
    .goto 1446,66.99,22.36
    >>Talk to |cRXP_FRIENDLY_Yeh'kinya|r
    .turnin 4787 >>Turn in The Ancient Egg
    .target Yeh'kinya
step
    .goto 1446,48.23,41.35
    >>Collect |cRXP_LOOT_[Roc Gizzard]|r from |cRXP_ENEMY_Roc|r, |cRXP_ENEMY_Fire Roc|r, |cRXP_ENEMY_Searing Roc|r
    *Rhapsody Shindigger in The Hinterlands wants you to bring him 3 Roc Gizzards, 3 Groddoc Livers and 3 Ironfur Livers.
    .complete 1452,1 --Rhapsody's Kalimdor Kocktail
    .mob Roc
    .mob Fire Roc
step
    .goto 1413,62.5,38.54
    >>Collect |cRXP_LOOT_[Stone Circle]|r from |cRXP_PICK_Marvon's Chest|r
    *Retrieve the Stone Circle from Marvon Rivetseeker's workshop in Ratchet.
    .complete 3444,1 --The Stone Circle
step
    .goto 1446,52.71,45.92
    >>Talk to |cRXP_FRIENDLY_Marvon Rivetseeker|r
    .turnin 3444 >>Turn in The Stone Circle
    .target Marvon Rivetseeker
step
    .goto 1444,83.31,42.46
    >>Collect |cRXP_LOOT_[Ironfur Liver]|r from |cRXP_ENEMY_Ironfur Bear|r, |cRXP_ENEMY_Grizzled Ironfur Bear|r, |cRXP_ENEMY_Ironfur Patriarch|r
    *Rhapsody Shindigger in The Hinterlands wants you to bring him 3 Roc Gizzards, 3 Groddoc Livers and 3 Ironfur Livers.
    .complete 1452,2 --Rhapsody's Kalimdor Kocktail
    .mob Ironfur Bear
    .mob Grizzled Ironfur Bear
step
    .goto 1444,41.78,21.58
    >>Collect |cRXP_LOOT_[Groddoc Liver]|r from |cRXP_ENEMY_Groddoc Chestpounder|r, |cRXP_ENEMY_Groddoc Thunderer|r
    *Rhapsody Shindigger in The Hinterlands wants you to bring him 3 Roc Gizzards, 3 Groddoc Livers and 3 Ironfur Livers.
    .complete 1452,3 --Rhapsody's Kalimdor Kocktail
    .mob Groddoc Chestpounder
    .mob Groddoc Thunderer
step
    .goto 1425,26.94,48.59
    >>Talk to |cRXP_FRIENDLY_Rhapsody Shindigger|r
    .turnin 1452 >>Turn in Rhapsody's Kalimdor Kocktail
    .accept 1469 >>Accept Rhapsody's Tale
    .target Rhapsody Shindigger
step
    .goto 1453,69.45,40.4
    >>Talk to |cRXP_FRIENDLY_Brohann Caskbelly|r
    .turnin 1469 >>Turn in Rhapsody's Tale
    .target Brohann Caskbelly
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1453,69.45,40.4
    >>Talk to |cRXP_FRIENDLY_Brohann Caskbelly|r
    .accept 1475 >>Accept Into The Temple of Atal'Hakkar
    .target Brohann Caskbelly
step
    .goto 1425,33.75,75.21
    >>Talk to |cRXP_FRIENDLY_Atal'ai Exile|r
    .accept 1446 >>Accept Jammal'an the Prophet
    .target Atal'ai Exile
step
    .goto 1446,52.71,45.92
    >>Talk to |cRXP_FRIENDLY_Marvon Rivetseeker|r
    .accept 3446 >>Accept Into the Depths
    .accept 3447 >>Accept Secret of the Circle
    .target Marvon Rivetseeker
step
    .goto 1446,66.99,22.36
    >>Talk to |cRXP_FRIENDLY_Yeh'kinya|r
    .accept 3528 >>Accept The God Hakkar
    .target Yeh'kinya
step
    #completewith next
    +|cRXP_WARN_Run the dungeon|r
step
    .goto 1435,69.9,53.5
    >>Loot |cRXP_LOOT_[Essence of Eranikus]|r from |cRXP_ENEMY_Shade of Eranikus|r, then click it to start the quest
    .accept 3373 >>Accept The Essence of Eranikus
    .use 10454
    .mob Shade of Eranikus
step
    .goto 1435,69.9,53.5
    >>Inside The Temple of Atal'Hakkar: these quests start from a drop or an object in the dungeon
    .accept 8733 >>Accept Eranikus, Tyrant of the Dream
step
    .goto 1435,69.9,53.5
    >>Enter |cRXP_WARN_The Temple of Atal'Hakkar|r and run it with a group. Quest goals inside:
    *Jammal'an the Prophet: The Atal'ai Exile in The Hinterlands wants the Head of Jammal'an.
    *Into The Temple of Atal'Hakkar: Gather 10 Atal'ai Tablets for Brohann Caskbelly in Stormwind.
    *The God Hakkar: Bring the Filled Egg of Hakkar to Yeh'kinya in Tanaris.
    .complete 1446,1 --Jammal'an the Prophet
    .complete 1475,1 --Into The Temple of Atal'Hakkar
    .complete 3528,1 --The God Hakkar
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1435,69.9,53.5
    >>Loot |cRXP_LOOT_[Essence of Eranikus]|r from |cRXP_ENEMY_Shade of Eranikus|r, then click it to start the quest
    .turnin 3373 >>Turn in The Essence of Eranikus
step
    .goto 1425,33.75,75.21
    >>Talk to |cRXP_FRIENDLY_Atal'ai Exile|r
    .turnin 1446 >>Turn in Jammal'an the Prophet
    .target Atal'ai Exile
step
    .goto 1453,69.45,40.4
    >>Talk to |cRXP_FRIENDLY_Brohann Caskbelly|r
    .turnin 1475 >>Turn in Into The Temple of Atal'Hakkar
    .target Brohann Caskbelly
step
    .goto 1446,52.71,45.92
    >>Talk to |cRXP_FRIENDLY_Marvon Rivetseeker|r
    .turnin 3446 >>Turn in Into the Depths
    .turnin 3447 >>Turn in Secret of the Circle
    .target Marvon Rivetseeker
step
    .goto 1446,66.99,22.36
    >>Talk to |cRXP_FRIENDLY_Yeh'kinya|r
    .turnin 3528 >>Turn in The God Hakkar
    .target Yeh'kinya
step
    .goto 1438,37.55,47.92
    >>Talk to |cRXP_FRIENDLY_Forest Wisp|r
    .turnin 8733 >>Turn in Eranikus, Tyrant of the Dream
    .target Forest Wisp
step
    .goto 1435,69.9,53.5
    +Dungeon entrance: The Temple of Atal'Hakkar. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 50-60
#name 52-53 Searing Gorge/Blasted Lands/Burning Steppes
#displayname 52-53 Searing Gorge/Blasted Lands/Burning Steppes
#next 53-55 Blackrock Depths
step
    .zone 1427 >>Travel to Searing Gorge
    *Suggested level for this part: 52-53
step
    #completewith next
    .goto 1427,37.94,30.86,15,0
    >>Talk to |cRXP_FRIENDLY_Lanie Reed|r if you don't have this flight path yet
    .fp Lanie Reed >>Get the flight path
    .target Lanie Reed
step
    .goto 1427,38.58,27.81
    >>Talk to |cRXP_FRIENDLY_Hansel Heavyhands|r
    .accept 7724 >>Accept Fiery Menace!
    .accept 7723 >>Accept Curse These Fat Fingers
    .accept 7727 >>Accept Incendosaurs? Whateverosaur is More Like It
    .target Hansel Heavyhands
step
    .goto 1427,37.65,26.47
    >>Click the |cRXP_PICK_Wanted/Missing/Lost & Found|r
    .accept 7701 >>Accept WANTED: Overseer Maltorius
    .accept 7728 >>Accept STOLEN: Smithing Tuyere and Lookout's Spyglass
    .accept 7729 >>Accept JOB OPPORTUNITY: Culling the Competition
step
    .goto 1427,38.8,28.51
    >>Talk to |cRXP_FRIENDLY_Master Smith Burninate|r
    .accept 7722 >>Accept What the Flux?
    .target Master Smith Burninate
step
    .goto 1427,40.45,35.74
    >>Collect |cRXP_LOOT_[Head of Overseer Maltorius]|r from |cRXP_ENEMY_Overseer Maltorius|r. Kill |cRXP_ENEMY_Dark Iron Taskmaster|r. Collect |cRXP_LOOT_[Secret Plans: Fiery Flux]|r from |cRXP_PICK_Secret Plans: Fiery Flux|r
    *Deep within the Slag Pit of the Cauldron, in the Searing Gorge, you will find the traitorous Dark Iron dwarf named Overseer Maltorius.
    *Slay 15 Dark Iron Taskmasters and 15 Dark Iron Slavers. Return to Taskmaster Scrange in the Searing Gorge once you have accomplished this task.
    *Somewhere in the Slag Pit of the Cauldron you will find the Secret Plans: Fiery Flux that Overseer Maltorius stole. Find those plans and return them to Master Smith Burninate in the Searing Gorge.
    .complete 7701,1 --WANTED: Overseer Maltorius
    .complete 7729,1 --JOB OPPORTUNITY: Culling the Competition
    .complete 7722,1 --What the Flux?
    .mob Overseer Maltorius
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
    .target Kalaran Windblade
step
    .goto 1427,38.58,27.81
    >>Talk to |cRXP_FRIENDLY_Hansel Heavyhands|r
    .turnin 7724 >>Turn in Fiery Menace!
    .turnin 7723 >>Turn in Curse These Fat Fingers
    .target Hansel Heavyhands
step
    .goto 1427,37.74,26.56
    >>Talk to |cRXP_FRIENDLY_Lookout Captain Lolo Longstriker|r
    .turnin 7701 >>Turn in WANTED: Overseer Maltorius
    .target Lookout Captain Lolo Longstriker
step
    .goto 1427,38.97,27.51
    >>Talk to |cRXP_FRIENDLY_Taskmaster Scrange|r
    .turnin 7728 >>Turn in STOLEN: Smithing Tuyere and Lookout's Spyglass
    .turnin 7729 >>Turn in JOB OPPORTUNITY: Culling the Competition
    .target Taskmaster Scrange
step
    .goto 1427,38.8,28.51
    >>Talk to |cRXP_FRIENDLY_Master Smith Burninate|r
    .turnin 7722 >>Turn in What the Flux?
    .target Master Smith Burninate
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
    .goto 1427,19.65,38.6
    >>Collect |cRXP_LOOT_[Prayer to Elune]|r from |cRXP_ENEMY_Twilight Dark Shaman|r, |cRXP_ENEMY_Twilight Fire Guard|r, |cRXP_ENEMY_Twilight Geomancer|r
    *Find the Prayer to Elune and take it to Astarii Starseeker in Darnassus.
    .complete 3378,1 --Prayer to Elune
    .mob Twilight Dark Shaman
    .mob Twilight Fire Guard
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
    .goto 1457,38.33,80.95
    >>Talk to |cRXP_FRIENDLY_Astarii Starseeker|r
    .turnin 3378 >>Turn in Prayer to Elune
    .target Astarii Starseeker
step
    .goto 1455,71.5,15.74
    >>Talk to |cRXP_FRIENDLY_Curator Thorius|r
    .turnin 3368 >>Turn in Suntara Stones
    .target Curator Thorius
step
    .goto 1428,65.15,23.91
    >>Talk to |cRXP_FRIENDLY_Maxwort Uberglint|r
    .accept 4296 >>Accept Tablet of the Seven
    .target Maxwort Uberglint
step
    >>Collect |cRXP_LOOT_[Tablet Transcript]|r
    *Bring the Tablet Transcript to Maxwort Uberglint in the Burning Steppes.
    .complete 4296,1 --Tablet of the Seven
step
    .goto 1428,65.15,23.91
    >>Talk to |cRXP_FRIENDLY_Maxwort Uberglint|r
    .turnin 4296 >>Turn in Tablet of the Seven
    .target Maxwort Uberglint
step
    .goto 1428,95.09,31.56
    >>Talk to |cRXP_FRIENDLY_Cyrus Therepentous|r
    .accept 4023 >>Accept A Taste of Flame
    .target Cyrus Therepentous
step
    .goto 1428,84.56,68.68
    >>Talk to |cRXP_FRIENDLY_Oralius|r
    .accept 3823 >>Accept Extinguish the Firegut
    .accept 4283 >>Accept FIFTY! YEP!
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
    .goto 1428,55.55,54.4
    >>Collect |cRXP_LOOT_[Gor'tesh's Lopped Off Head]|r from |cRXP_ENEMY_Grubbub|r
    *Find Gor'tesh, somewhere to the west of Dreadmaul Rock. Kill Gor'tesh and then take Gor'tesh's Lopped Off Head back to Oralius in Burning Steppes.
    .complete 3824,1 --Gor'tesh the Brute Lord
    .mob Grubbub
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
    .goto 1419,50.55,14.2
    >>Talk to |cRXP_FRIENDLY_Bloodmage Drazial|r
    .accept 2581 >>Accept Snickerfang Jowls
    .accept 2583 >>Accept A Boar's Vitality
    .accept 2585 >>Accept The Decisive Striker
    .target Bloodmage Drazial
step
    .goto 1419,50.64,14.3
    >>Talk to |cRXP_FRIENDLY_Bloodmage Lynnore|r
    .accept 2601 >>Accept The Basilisk's Bite
    .accept 2603 >>Accept Vulture's Vigor
    .target Bloodmage Lynnore
step
    .goto 1419,47.03,22.07
    >>Collect |cRXP_LOOT_[Basilisk Brain]|r from |cRXP_ENEMY_Redstone Basilisk|r, |cRXP_ENEMY_Redstone Crystalhide|r, |cRXP_ENEMY_Deatheye|r
    *Bring three Blasted Boar Lungs, two Scorpok Pincers, and one Basilisk Brain to Bloodmage Drazial.
    *Bring ten Basilisk Brains and two Vulture Gizzards to Bloodmage Lynnore.
    .complete 2583,3 --A Boar's Vitality
    .complete 2601,1 --The Basilisk's Bite
    .mob Redstone Basilisk
    .mob Redstone Crystalhide
step
    .goto 1419,54.23,32.8
    >>Collect |cRXP_LOOT_[Snickerfang Jowl]|r from |cRXP_ENEMY_Starving Snickerfang|r, |cRXP_ENEMY_Snickerfang Hyena|r, |cRXP_ENEMY_Ravage|r. Collect |cRXP_LOOT_[Blasted Boar Lung]|r from |cRXP_ENEMY_Ashmane Boar|r, |cRXP_ENEMY_Helboar|r, |cRXP_ENEMY_Grunter|r. Collect |cRXP_LOOT_[Scorpok Pincer]|r from |cRXP_ENEMY_Scorpok Stinger|r, |cRXP_ENEMY_Clack the Reaver|r. Collect |cRXP_LOOT_[Vulture Gizzard]|r from |cRXP_ENEMY_Black Slayer|r, |cRXP_ENEMY_Bonepicker|r, |cRXP_ENEMY_Spiteflayer|r
    *Bring three Snickerfang Jowls, two Blasted Boar Lungs, and one Scorpok Pincer to Bloodmage Drazial.
    *Bring three Blasted Boar Lungs, two Scorpok Pincers, and one Basilisk Brain to Bloodmage Drazial.
    *Bring three Scorpok Pincers, two Vulture Gizzards, and one Blasted Boar Lung to Bloodmage Drazial.
    *Bring ten Basilisk Brains and two Vulture Gizzards to Bloodmage Lynnore.
    *Bring ten Vulture Gizzards and two Snickerfang Jowls to Bloodmage Lynnore.
    .complete 2581,1 --Snickerfang Jowls
    .complete 2581,2 --Snickerfang Jowls
    .complete 2581,3 --Snickerfang Jowls
    .complete 2583,1 --A Boar's Vitality
    .complete 2583,2 --A Boar's Vitality
    .complete 2585,1 --The Decisive Striker
    .complete 2585,2 --The Decisive Striker
    .complete 2585,3 --The Decisive Striker
    .complete 2601,2 --The Basilisk's Bite
    .complete 2603,1 --Vulture's Vigor
    .complete 2603,2 --Vulture's Vigor
    .mob Starving Snickerfang
    .mob Snickerfang Hyena
    .mob Ashmane Boar
    .mob Helboar
    .mob Scorpok Stinger
    .mob Clack the Reaver
    .mob Black Slayer
    .mob Bonepicker
step
    .goto 1419,51.98,35.65
    >>Talk to |cRXP_FRIENDLY_Kum'isha the Collector|r
    .accept 2521 >>Accept To Serve Kum'isha
    .accept 3501 >>Accept Everything Counts In Large Amounts
    .target Kum'isha the Collector
step
    .goto 1419,50.06,41.14
    >>Collect |cRXP_LOOT_[Flawless Draenethyst Sphere]|r from |cRXP_ENEMY_Dreadmaul Ogre|r, |cRXP_ENEMY_Dreadmaul Ogre Mage|r, |cRXP_ENEMY_Dreadmaul Brute|r. Collect |cRXP_LOOT_[Imperfect Draenethyst Fragment]|r from |cRXP_ENEMY_Dreadmaul Ogre|r, |cRXP_ENEMY_Dreadmaul Ogre Mage|r, |cRXP_ENEMY_Dreadmaul Brute|r
    *In your journeys throughout the Blasted Lands, should you ever come across a Flawless Draenethyst Sphere, take the item back to Kum'isha the Collector.
    *Bring Kum'isha Imperfect Draenethyst Fragments and be rewarded for each one you turn in.
    .complete 2521,1 --To Serve Kum'isha
    .complete 3501,1 --Everything Counts In Large Amounts
    .mob Dreadmaul Ogre
    .mob Dreadmaul Ogre Mage
step
    .goto 1419,51.98,35.65
    >>Talk to |cRXP_FRIENDLY_Kum'isha the Collector|r
    .turnin 2521 >>Turn in To Serve Kum'isha
    .turnin 3501 >>Turn in Everything Counts In Large Amounts
    .target Kum'isha the Collector
step
    .goto 1419,50.55,14.2
    >>Talk to |cRXP_FRIENDLY_Bloodmage Drazial|r
    .turnin 2581 >>Turn in Snickerfang Jowls
    .turnin 2583 >>Turn in A Boar's Vitality
    .turnin 2585 >>Turn in The Decisive Striker
    .target Bloodmage Drazial
step
    .goto 1419,50.64,14.3
    >>Talk to |cRXP_FRIENDLY_Bloodmage Lynnore|r
    .turnin 2601 >>Turn in The Basilisk's Bite
    .turnin 2603 >>Turn in Vulture's Vigor
    .target Bloodmage Lynnore
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
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 50-60
#name 53-55 Blackrock Depths
#displayname 53-55 Blackrock Depths
#next 55-57 Dire Maul
step
    +|cRXP_WARN_Blackrock Depths|r (levels 52-60). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *Pre-quests in this guide: Forging the Shaft, The Flame's Casing, The Torch of Retribution, The Torch of Retribution, Squire Maltrake, Set Them Ablaze!, Trinkets..., The Smoldering Ruins of Thaurissan, The Smoldering Ruins of Thaurissan, A Taste of Flame, Dragonkin Menace, The True Masters...
step
    #completewith next
    +|cRXP_WARN_Pre-quests|r
step
    .goto 1427,39.06,38.99
    >>Talk to |cRXP_FRIENDLY_Kalaran Windblade|r
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
    .goto 1428,95.09,31.56
    >>Talk to |cRXP_FRIENDLY_Cyrus Therepentous|r
    .accept 4022 >>Accept A Taste of Flame
    .target Cyrus Therepentous
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
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1455,39.09,56.2
    >>Talk to |cRXP_FRIENDLY_King Magni Bronzebeard|r
    .accept 4341 >>Accept Kharan Mighthammer
    .target King Magni Bronzebeard
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
    #completewith next
    +|cRXP_WARN_Run the dungeon|r
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
    >>Enter |cRXP_WARN_Blackrock Depths|r and run it with a group. Quest goals inside:
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
    +|cRXP_WARN_Pick up the dungeon quests|r
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
    +|cRXP_WARN_Run the dungeon (run 2)|r
step
    .goto 1427,34.8,85.3
    >>Inside Blackrock Depths: these quests start from a drop or an object in the dungeon
    .accept 3802 >>Accept Dark Iron Legacy
    .accept 4242 >>Accept Abandoned Hope
    .accept 4361 >>Accept The Bearer of Bad News
step
    .goto 1427,34.8,85.3
    >>Enter |cRXP_WARN_Blackrock Depths|r and run it with a group. Quest goals inside:
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
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1455,39.09,56.2
    >>Talk to |cRXP_FRIENDLY_King Magni Bronzebeard|r
    .accept 4362 >>Accept The Fate of the Kingdom
    .target King Magni Bronzebeard
step
    #completewith next
    +|cRXP_WARN_Run the dungeon (run 3)|r
step
    .goto 1427,34.8,85.3
    >>Loot |cRXP_LOOT_[A Crumpled Up Note]|r from |cRXP_ENEMY_Anvilrage Overseer|r, |cRXP_ENEMY_Anvilrage Warden|r, |cRXP_ENEMY_Anvilrage Guardsman|r, then click it to start the quest
    .accept 4264 >>Accept A Crumpled Up Note
    .use 11446
    .mob Anvilrage Overseer
    .mob Anvilrage Warden
step
    .goto 1427,34.8,85.3
    >>Enter |cRXP_WARN_Blackrock Depths|r and run it with a group. Quest goals inside:
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
    +|cRXP_WARN_Run the dungeon (run 4)|r
step
    .goto 1427,34.8,85.3
    >>Inside Blackrock Depths: these quests start from a drop or an object in the dungeon
    .accept 4282 >>Accept A Shred of Hope
    .accept 4363 >>Accept The Princess's Surprise
step
    .goto 1427,34.8,85.3
    >>Enter |cRXP_WARN_Blackrock Depths|r and run it with a group. Quest goals inside:
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
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 50-60
#name 55-57 Dire Maul
#displayname 55-57 Dire Maul
#next 57-59 Blackrock Spire
step
    +|cRXP_WARN_Dire Maul|r (levels 54-60). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *East 54-60, West 56-60, North 56-60.
    *Pre-quests in this guide: In Search of Anthion, Dead Man's Plea, Proof of Life, Anthion's Strange Request, Bodley's Unfortunate Fate, Three Kings of Flame, Components of Importance, Components of Importance, More Components of Importance
step
    #completewith next
    +|cRXP_WARN_Pre-quests|r
step
    .goto 1455,43.53,52.64
    >>Talk to |cRXP_FRIENDLY_Deliana|r
    .accept 8960 >>Accept Bodley's Unfortunate Fate
    .target Deliana
step
    .goto 1455,43.53,52.64
    >>Talk to |cRXP_FRIENDLY_Deliana|r
    .turnin 8960 >>Turn in Bodley's Unfortunate Fate
    .accept 8929 >>Accept In Search of Anthion
    .target Deliana
step
    .goto 1423,26.11,11.3
    >>Talk to |cRXP_FRIENDLY_Anthion Harmon|r
    .turnin 8929 >>Turn in In Search of Anthion
    .accept 8947 >>Accept Anthion's Strange Request
    .target Anthion Harmon
step
    >>Collect |cRXP_LOOT_[Dark Iron Bar]|r. Collect |cRXP_LOOT_[Enchanted Leather]|r. Collect |cRXP_LOOT_[Mooncloth]|r. Collect |cRXP_LOOT_[Cured Rugged Hide]|r
    *Bring 3 Dark Iron Bars, 20 Enchanted Leather, 3 Mooncloth and 4 Cured Rugged Hides to Anthion Harmon in the Eastern Plaguelands.
    .complete 8947,1 --Anthion's Strange Request
    .complete 8947,2 --Anthion's Strange Request
    .complete 8947,3 --Anthion's Strange Request
    .complete 8947,4 --Anthion's Strange Request
step
    .goto 1423,26.11,11.3
    >>Talk to |cRXP_FRIENDLY_Anthion Harmon|r
    .turnin 8947 >>Turn in Anthion's Strange Request
    .accept 8945 >>Accept Dead Man's Plea
    .target Anthion Harmon
step
    >>Kill |cRXP_ENEMY_Ysida Harmon|r
    *Go into Stratholme and rescue Ysida Harmon from Baron Rivendare.
    .complete 8945,1 --Dead Man's Plea
    .mob Ysida Harmon
step
    .goto 1423,26.11,11.3
    >>Talk to |cRXP_FRIENDLY_Anthion Harmon|r
    .turnin 8945 >>Turn in Dead Man's Plea
    .target Anthion Harmon
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1423,26.11,11.3
    >>Talk to |cRXP_FRIENDLY_Anthion Harmon|r
    .accept 8948 >>Accept Anthion's Old Friend
    .target Anthion Harmon
step
    .goto 1444,76.91,37.35
    >>Talk to |cRXP_FRIENDLY_Azj'Tordin|r
    .accept 7441 >>Accept Pusillin and the Elder Azj'Tordin
    .target Azj'Tordin
step
    .goto 1444,31.65,43.45
    >>Talk to |cRXP_FRIENDLY_Scholar Runethorn|r
    .accept 7482 >>Accept Elven Legends
    .target Scholar Runethorn
step
    .goto 1453,56.39,74.09
    >>Talk to |cRXP_FRIENDLY_Crier Goodman|r
    .accept 7494 >>Accept Feathermoon Stronghold
    .target Crier Goodman
step
    #completewith next
    +|cRXP_WARN_Run the dungeon|r
step
    .goto 1444,59.2,45.1
    >>Inside Dire Maul: these quests start from a drop or an object in the dungeon
    .accept 1193 >>Accept A Broken Trap
    .accept 1318 >>Accept Unfinished Gordok Business
    .accept 5518 >>Accept The Gordok Ogre Suit
    .accept 5525 >>Accept Free Knot!
    .accept 5528 >>Accept The Gordok Taste Test
    .accept 7461 >>Accept The Madness Within
    .accept 7703 >>Accept Unfinished Gordok Business
    .accept 8967 >>Accept The Left Piece of Lord Valthalak's Amulet
    .accept 8990 >>Accept The Right Piece of Lord Valthalak's Amulet
    .accept 84555 >>Accept Nostro's Compendium
step
    .goto 1444,59.2,45.1
    >>Inside Dire Maul: loot |cRXP_LOOT_[Foror's Compendium of Dragon Slaying]|r and click it to start the quest
    .accept 7507 >>Accept Foror's Compendium
    .use 18401
step
    .goto 1444,59.2,45.1
    >>Enter |cRXP_WARN_Dire Maul|r and run it with a group. Quest goals inside:
    *A Broken Trap
    *Unfinished Gordok Business: Find the Gauntlet of Gordok Might and return it to Captain Kromcrush in Dire Maul.
    *The Gordok Ogre Suit: Bring 4 Bolts of Runecloth, 8 Rugged Leather, 2 Rune Threads, and Ogre Tannin to Knot Thimblejack. He is currently chained inside the Gordok wing of Dire Maul.
    *Free Knot!
    *Pusillin and the Elder Azj'Tordin: Travel to Dire Maul and locate the Imp, Pusillin. Convince Pusillin to give you Azj'Tordin's Book of Incantations through any means necessary.
    *The Madness Within: You must destroy the guardians surrounding the 5 Pylons that power the Prison of Immol'thar. Once the Pylons have powered down, the force field surrounding Immol'thar will have dissipated.
    *Unfinished Gordok Business: Find the Gauntlet of Gordok Might and return it to Captain Kromcrush in Dire Maul.
    *The Left Piece of Lord Valthalak's Amulet: Use the Brazier of Beckoning to summon forth the spirit of Isalien and slay her. Return to Bodley inside Blackrock Mountain with the Left Piece of Lord Valthalak's Amulet and the Brazier of Beckoning.
    *The Right Piece of Lord Valthalak's Amulet: Use the Brazier of Beckoning to summon forth the spirit of Isalien and slay her. Return to Bodley inside Blackrock Mountain with the recombined Lord Valthalak's Amulet and the Brazier of Beckoning.
    .complete 1193,1 --A Broken Trap
    .complete 1318,1 --Unfinished Gordok Business
    .complete 5518,4 --The Gordok Ogre Suit
    .complete 5525,1 --Free Knot!
    .complete 7441,1 --Pusillin and the Elder Azj'Tordin
    .complete 7461,1 --The Madness Within
    .complete 7461,2 --The Madness Within
    .complete 7703,1 --Unfinished Gordok Business
    .complete 8967,1 --The Left Piece of Lord Valthalak's Amulet
    .complete 8967,2 --The Left Piece of Lord Valthalak's Amulet
    .complete 8990,1 --The Right Piece of Lord Valthalak's Amulet
    .complete 8990,2 --The Right Piece of Lord Valthalak's Amulet
step
    #completewith next
    +|cRXP_WARN_Outside: collect what the quests you got inside need|r
step
    .goto 1448,46.3,90.62
    >>Collect |cRXP_LOOT_[Frost Oil]|r from |cRXP_ENEMY_Vilebranch Witch Doctor|r, |cRXP_ENEMY_Tar Creeper|r, |cRXP_ENEMY_Deadwood Gardener|r
    .complete 1193,2 --A Broken Trap
    .mob Vilebranch Witch Doctor
    .mob Tar Creeper
step
    .goto 1451,18.3,85.84
    >>Collect |cRXP_LOOT_[Bolt of Runecloth]|r from |cRXP_ENEMY_Twilight Lord Everun|r
    *Bring 4 Bolts of Runecloth, 8 Rugged Leather, 2 Rune Threads, and Ogre Tannin to Knot Thimblejack. He is currently chained inside the Gordok wing of Dire Maul.
    .complete 5518,1 --The Gordok Ogre Suit
    .mob Twilight Lord Everun
step
    .goto 1412,37.39,44.91
    >>Buy |cRXP_LOOT_[Rugged Leather]|r from |cRXP_FRIENDLY_Lhara|r
    *Bring 4 Bolts of Runecloth, 8 Rugged Leather, 2 Rune Threads, and Ogre Tannin to Knot Thimblejack. He is currently chained inside the Gordok wing of Dire Maul.
    .complete 5518,2 --The Gordok Ogre Suit
step
    .goto 1453,64.73,71.26
    >>Buy |cRXP_LOOT_[Rune Thread]|r from |cRXP_FRIENDLY_Edna Mullby|r
    *Bring 4 Bolts of Runecloth, 8 Rugged Leather, 2 Rune Threads, and Ogre Tannin to Knot Thimblejack. He is currently chained inside the Gordok wing of Dire Maul.
    .complete 5518,3 --The Gordok Ogre Suit
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1444,59.2,45.1
    >>Inside Dire Maul: these quests start from a drop or an object in the dungeon
    .turnin 1193 >>Turn in A Broken Trap
    .turnin 1318 >>Turn in Unfinished Gordok Business
    .turnin 5518 >>Turn in The Gordok Ogre Suit
    .turnin 5525 >>Turn in Free Knot!
    .turnin 5528 >>Turn in The Gordok Taste Test
    .turnin 7461 >>Turn in The Madness Within
    .turnin 7703 >>Turn in Unfinished Gordok Business
    .turnin 8967 >>Turn in The Left Piece of Lord Valthalak's Amulet
    .turnin 8990 >>Turn in The Right Piece of Lord Valthalak's Amulet
    .turnin 84555 >>Turn in Nostro's Compendium
step
    .goto 1444,59.2,45.1
    >>Inside Dire Maul: loot |cRXP_LOOT_[Foror's Compendium of Dragon Slaying]|r and click it to start the quest
    .turnin 7507 >>Turn in Foror's Compendium
step
    .goto 1444,76.91,37.35
    >>Talk to |cRXP_FRIENDLY_Azj'Tordin|r
    .turnin 7441 >>Turn in Pusillin and the Elder Azj'Tordin
    .target Azj'Tordin
step
    .goto 1444,31.65,43.45
    >>Talk to |cRXP_FRIENDLY_Scholar Runethorn|r
    .turnin 7482 >>Turn in Elven Legends
    .target Scholar Runethorn
step
    .goto 1444,30.38,46.17
    >>Talk to |cRXP_FRIENDLY_Latronicus Moonspear|r
    .turnin 7494 >>Turn in Feathermoon Stronghold
    .target Latronicus Moonspear
step
    .goto 1423,26.11,11.3
    >>Talk to |cRXP_FRIENDLY_Anthion Harmon|r
    .turnin 8948 >>Turn in Anthion's Old Friend
    .target Anthion Harmon
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1444,30.38,46.17
    >>Talk to |cRXP_FRIENDLY_Latronicus Moonspear|r
    .accept 7488 >>Accept Lethtendris's Web
    .target Latronicus Moonspear
step
    #completewith next
    +|cRXP_WARN_Run the dungeon (run 2)|r
step
    .goto 1444,59.2,45.1
    >>Inside Dire Maul: these quests start from a drop or an object in the dungeon
    .accept 7462 >>Accept The Treasure of the Shen'dralar
    .accept 8949 >>Accept Falrin's Vendetta
step
    .goto 1444,59.2,45.1
    >>Inside Dire Maul: loot |cRXP_LOOT_[A Dull and Flat Elven Blade]|r and click it to start the quest
    .accept 7508 >>Accept The Forging of Quel'Serrar
    .use 18513
step
    .goto 1444,59.2,45.1
    >>Enter |cRXP_WARN_Dire Maul|r and run it with a group. Quest goals inside:
    *Lethtendris's Web: Bring Lethtendris' Web to Latronicus Moonspear at the Feathermoon Stronghold in Feralas.
    .complete 7488,1 --Lethtendris's Web
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
    .goto 1444,59.2,45.1
    >>Inside Dire Maul: these quests start from a drop or an object in the dungeon
    .turnin 7462 >>Turn in The Treasure of the Shen'dralar
    .turnin 8949 >>Turn in Falrin's Vendetta
step
    .goto 1444,59.2,45.1
    >>Inside Dire Maul: loot |cRXP_LOOT_[A Dull and Flat Elven Blade]|r and click it to start the quest
    .turnin 7508 >>Turn in The Forging of Quel'Serrar
step
    .goto 1444,30.38,46.17
    >>Talk to |cRXP_FRIENDLY_Latronicus Moonspear|r
    .turnin 7488 >>Turn in Lethtendris's Web
    .target Latronicus Moonspear
step
    #completewith next
    +|cRXP_WARN_Run the dungeon (run 3)|r
step
    .goto 1444,59.2,45.1
    >>Inside Dire Maul: these quests start from a drop or an object in the dungeon
    .accept 8950 >>Accept The Instigator's Enchantment
step
    .goto 1444,59.2,45.1
    >>Enter |cRXP_WARN_Dire Maul|r and run it with a group. Quest goals inside:
    *The Instigator's Enchantment: Bring the following to Falrin Treeshaper inside Dire Maul: 1 Jeering Spectre's Essence, 4 Dark Runes and 8 Large Brilliant Shards.
    .complete 8950,1 --The Instigator's Enchantment
    .complete 8950,2 --The Instigator's Enchantment
    .complete 8950,3 --The Instigator's Enchantment
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1444,59.2,45.1
    >>Inside Dire Maul: these quests start from a drop or an object in the dungeon
    .turnin 8950 >>Turn in The Instigator's Enchantment
step
    .goto 1444,59.2,45.1
    +Dungeon entrance: Dire Maul. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 50-60
#name 57-59 Blackrock Spire
#displayname 57-59 Blackrock Spire
#next 59-59 Blackmaw Hold
step
    +|cRXP_WARN_Blackrock Spire|r (levels 55-60). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *Lower Blackrock Spire 55-60, Upper Blackrock Spire 59-60.
    *Pre-quests in this guide: Screecher Spirits, The Prophecy of Mosh'aru, The God Hakkar, Marshal Windsor, Abandoned Hope, A Crumpled Up Note, A Shred of Hope, Jail Break!, Broodling Essence, The Ancient Egg, Felnok Steelspring, Chillwind Horns...
step
    #completewith next
    +|cRXP_WARN_Pre-quests|r
step
    .goto 1446,66.99,22.36
    >>Talk to |cRXP_FRIENDLY_Yeh'kinya|r
    .accept 3520 >>Accept Screecher Spirits
    .target Yeh'kinya
step
    >>Kill |cRXP_ENEMY_Screecher Spirit|r
    *Capture the spirits of 3 screechers in Feralas, then return to Yeh'kinya in Steamwheedle Port.
    .complete 3520,1 --Screecher Spirits
    .mob Screecher Spirit
step
    .goto 1446,66.99,22.36
    >>Talk to |cRXP_FRIENDLY_Yeh'kinya|r
    .turnin 3520 >>Turn in Screecher Spirits
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
    .goto 1428,84.74,69.02
    >>Talk to |cRXP_FRIENDLY_Marshal Maxwell|r
    .accept 6402 >>Accept Stormwind Rendezvous
    .accept 4241 >>Accept Marshal Windsor
    .target Marshal Maxwell
step
    .goto 1428,84.74,69.02
    >>Talk to |cRXP_FRIENDLY_Marshal Maxwell|r
    .turnin 6402 >>Turn in Stormwind Rendezvous
    .turnin 4241 >>Turn in Marshal Windsor
    .target Marshal Maxwell
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
    .goto 1453,80.21,38.35
    >>Talk to |cRXP_FRIENDLY_Highlord Bolvar Fordragon|r
    .accept 6501 >>Accept The Dragon's Eye
    .target Highlord Bolvar Fordragon
step
    .goto 1452,54.55,51.2
    >>Talk to |cRXP_FRIENDLY_Haleh|r
    .turnin 6501 >>Turn in The Dragon's Eye
    .target Haleh
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
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
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
    .goto 1428,65.24,24
    >>Talk to |cRXP_FRIENDLY_Tinkee Steamboil|r
    .accept 4734 >>Accept Egg Freezing
    .target Tinkee Steamboil
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
    .goto 1452,54.55,51.2
    >>Talk to |cRXP_FRIENDLY_Haleh|r
    .accept 6502 >>Accept Drakefire Amulet
    .target Haleh
step
    #completewith next
    +|cRXP_WARN_Run the dungeon|r
step
    .goto 1427,34.8,85.3
    >>Inside Blackrock Spire: these quests start from a drop or an object in the dungeon
    .accept 4742 >>Accept Seal of Ascension
    .accept 4867 >>Accept Urok Doomhowl
    .accept 5001 >>Accept Bijou's Belongings
    .accept 5047 >>Accept Finkle Einhorn, At Your Service!
    .accept 5160 >>Accept The Matron Protectorate
step
    .goto 1427,34.8,85.3
    >>Loot |cRXP_LOOT_[General Drakkisath's Command]|r from |cRXP_ENEMY_Overlord Wyrmthalak|r, then click it to start the quest
    .accept 5089 >>Accept General Drakkisath's Command
    .use 12780
    .mob Overlord Wyrmthalak
step
    .goto 1427,34.8,85.3
    >>Loot |cRXP_LOOT_[Blackhand's Command]|r from |cRXP_ENEMY_Scarshield Quartermaster|r, then click it to start the quest
    .accept 7761 >>Accept Blackhand's Command
    .use 18987
    .mob Scarshield Quartermaster
step
    .goto 1427,34.8,85.3
    >>Enter |cRXP_WARN_Blackrock Spire|r and run it with a group. Quest goals inside:
    *Put Her Down: Travel to Blackrock Spire and destroy the source of the worg menace. As you left Helendis, he shouted a name: Halycon. It is what the orcs refer to in regards to the worg.
    *Kibler's Exotic Pets: Travel to Blackrock Spire and find Bloodaxe Worg Pups. Use the cage to carry the ferocious little beasts. Bring back a Caged Worg Pup to Kibler.
    *Seal of Ascension: Find the three gemstones of command: The Gemstone of Smolderthorn, Gemstone of Spirestone, and Gemstone of Bloodaxe. Return them, along with the Unadorned Seal of Ascension, to Vaelan.
    *The Final Tablets: Bring the Fifth and Sixth Mosh'aru Tablets to Prospector Ironboot in Tanaris.
    *En-Ay-Es-Tee-Why: Travel to Blackrock Spire and collect 15 Spire Spider Eggs for Kibler.
    *Urok Doomhowl: Read Warosh's Scroll. Bring Warosh's Mojo to Warosh.
    *Bijou's Belongings: Find Bijou's Belongings and return them to her. Good luck!
    *Drakefire Amulet: You must retrieve the Blood of the Black Dragon Champion from General Drakkisath. Drakkisath can be found in his throne room behind the Halls of Ascension in Blackrock Spire.
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
    .complete 6502,1 --Drakefire Amulet
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1427,34.8,85.3
    >>Inside Blackrock Spire: these quests start from a drop or an object in the dungeon
    .turnin 4742 >>Turn in Seal of Ascension
    .turnin 4867 >>Turn in Urok Doomhowl
    .turnin 5001 >>Turn in Bijou's Belongings
step
    .goto 1427,34.8,85.3
    >>Loot |cRXP_LOOT_[Blackhand's Command]|r from |cRXP_ENEMY_Scarshield Quartermaster|r, then click it to start the quest
    .turnin 7761 >>Turn in Blackhand's Command
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
    .turnin 4734 >>Turn in Egg Freezing
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
    .goto 1452,60.99,38.78
    >>Talk to |cRXP_FRIENDLY_Malyfous Darkhammer|r
    .turnin 5047 >>Turn in Finkle Einhorn, At Your Service!
    .target Malyfous Darkhammer
step
    .goto 1452,54.55,51.2
    >>Talk to |cRXP_FRIENDLY_Haleh|r
    .turnin 5160 >>Turn in The Matron Protectorate
    .turnin 6502 >>Turn in Drakefire Amulet
    .target Haleh
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1428,65.24,24
    >>Talk to |cRXP_FRIENDLY_Tinkee Steamboil|r
    .accept 4735 >>Accept Egg Collection
    .target Tinkee Steamboil
step
    .goto 1428,84.74,69.02
    >>Talk to |cRXP_FRIENDLY_Marshal Maxwell|r
    .accept 5102 >>Accept General Drakkisath's Demise
    .target Marshal Maxwell
step
    .goto 1428,84.84,69.12
    >>Talk to |cRXP_FRIENDLY_Mayara Brightwing|r
    .accept 4764 >>Accept Doomrigger's Clasp
    .target Mayara Brightwing
step
    #completewith next
    +|cRXP_WARN_Run the dungeon (run 2)|r
step
    .goto 1427,34.8,85.3
    >>Inside Blackrock Spire: these quests start from a drop or an object in the dungeon
    .accept 4743 >>Accept Seal of Ascension
    .accept 5002 >>Accept Message to Maxwell
    .accept 8966 >>Accept The Left Piece of Lord Valthalak's Amulet
    .accept 8989 >>Accept The Right Piece of Lord Valthalak's Amulet
    .accept 8995 >>Accept Mea Culpa, Lord Valthalak
step
    .goto 1427,34.8,85.3
    >>Enter |cRXP_WARN_Blackrock Spire|r and run it with a group. Quest goals inside:
    *Egg Collection: Bring 8 Collected Dragon Eggs and the Collectronic Module to Tinkee Steamboil at Flame Crest in the Burning Steppes.
    *Seal of Ascension: Travel to the Wyrmbog in Dustwallow Marsh. Find the ancient drake, Emberstrife and beat him without mercy until his will is broken.
    *Doomrigger's Clasp: Bring Doomrigger's Clasp to Mayara Brightwing in the Burning Steppes.
    *General Drakkisath's Demise: Travel to Blackrock Spire and destroy General Drakkisath. Return to Marshal Maxwell when the job is done.
    *The Left Piece of Lord Valthalak's Amulet: Use the Brazier of Beckoning to summon forth the spirit of Mor Grayhoof and slay him. Return to Bodley inside Blackrock Mountain with the Left Piece of Lord Valthalak's Amulet and the Brazier of Beckoning.
    *The Right Piece of Lord Valthalak's Amulet: Use the Brazier of Beckoning to summon forth the spirit of Mor Grayhoof and slay him. Return to Bodley inside Blackrock Mountain with the recombined Lord Valthalak's Amulet and the Brazier of Beckoning.
    *Mea Culpa, Lord Valthalak: Use the Brazier of Beckoning to summon Lord Valthalak. Dispatch him, and use Lord Valthalak's Amulet on the corpse. Then, return Lord Valthalak's Amulet to the Spirit of Lord Valthalak.
    .complete 4735,1 --Egg Collection
    .complete 4743,1 --Seal of Ascension
    .complete 4764,1 --Doomrigger's Clasp
    .complete 5102,1 --General Drakkisath's Demise
    .complete 8966,1 --The Left Piece of Lord Valthalak's Amulet
    .complete 8966,2 --The Left Piece of Lord Valthalak's Amulet
    .complete 8989,1 --The Right Piece of Lord Valthalak's Amulet
    .complete 8989,2 --The Right Piece of Lord Valthalak's Amulet
    .complete 8995,1 --Mea Culpa, Lord Valthalak
    .complete 8995,2 --Mea Culpa, Lord Valthalak
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1427,34.8,85.3
    >>Inside Blackrock Spire: these quests start from a drop or an object in the dungeon
    .turnin 4743 >>Turn in Seal of Ascension
    .turnin 8966 >>Turn in The Left Piece of Lord Valthalak's Amulet
    .turnin 8989 >>Turn in The Right Piece of Lord Valthalak's Amulet
    .turnin 8995 >>Turn in Mea Culpa, Lord Valthalak
step
    .goto 1428,65.24,24
    >>Talk to |cRXP_FRIENDLY_Tinkee Steamboil|r
    .turnin 4735 >>Turn in Egg Collection
    .target Tinkee Steamboil
step
    .goto 1428,84.74,69.02
    >>Talk to |cRXP_FRIENDLY_Marshal Maxwell|r
    .turnin 5002 >>Turn in Message to Maxwell
    .turnin 5102 >>Turn in General Drakkisath's Demise
    .target Marshal Maxwell
step
    .goto 1428,84.84,69.12
    >>Talk to |cRXP_FRIENDLY_Mayara Brightwing|r
    .turnin 4764 >>Turn in Doomrigger's Clasp
    .target Mayara Brightwing
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1428,84.84,69.12
    >>Talk to |cRXP_FRIENDLY_Mayara Brightwing|r
    .accept 4765 >>Accept Delivery to Ridgewell
    .target Mayara Brightwing
step
    .goto 1428,84.74,69.02
    >>Talk to |cRXP_FRIENDLY_Marshal Maxwell|r
    .accept 5081 >>Accept Maxwell's Mission
    .target Marshal Maxwell
step
    #completewith next
    +|cRXP_WARN_Run the dungeon (run 3)|r
step
    .goto 1427,34.8,85.3
    >>Enter |cRXP_WARN_Blackrock Spire|r and run it with a group. Quest goals inside:
    *Maxwell's Mission: Travel to Blackrock Spire and destroy War Master Voone, Highlord Omokk, and Overlord Wyrmthalak. Return to Marshal Maxwell when the job is done.
    .complete 5081,1 --Maxwell's Mission
    .complete 5081,2 --Maxwell's Mission
    .complete 5081,3 --Maxwell's Mission
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1453,76.94,47.83
    >>Talk to |cRXP_FRIENDLY_Count Remington Ridgewell|r
    .turnin 4765 >>Turn in Delivery to Ridgewell
    .target Count Remington Ridgewell
step
    .goto 1428,84.74,69.02
    >>Talk to |cRXP_FRIENDLY_Marshal Maxwell|r
    .turnin 5081 >>Turn in Maxwell's Mission
    .target Marshal Maxwell
step
    .goto 1427,34.8,85.3
    +Dungeon entrance: Blackrock Spire. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 50-60
#name 59-59 Blackmaw Hold
#displayname 59-59 Blackmaw Hold
#next 59-59 Shaper's Terrace
step
    +|cRXP_WARN_Blackmaw Hold|r (levels 55-60). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *New Forever dungeon in north Azshara, through the furbolg tunnel (bear-head entrance). The portal is deep inside.
    *Pre-quests in this guide: Beneath Nordrassil
step
    #completewith next
    +|cRXP_WARN_Pre-quests|r
step
    .goto 1447,11.81,78.36
    >>Talk to |cRXP_FRIENDLY_Commander Truesong|r
    .accept 92345 >>Accept Beneath Nordrassil
    .target Commander Truesong
step
    .goto 1457,35.37,8.4
    >>Talk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .turnin 92345 >>Turn in Beneath Nordrassil
    .target Mathrengyl Bearwalker
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1457,35.37,8.4
    >>Talk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .accept 92344 >>Accept Get to the Roots of It
    .target Mathrengyl Bearwalker
step
    .goto 1447,42.28,20.13
    >>Talk to |cRXP_FRIENDLY_Gatekeeper Rageroar|r
    .accept 92065 >>Accept Blackmaw Reclamation
    .target Gatekeeper Rageroar
step
    .goto 1447,41.31,20.1
    >>Talk to |cRXP_FRIENDLY_Lorekeeper Nok|r
    .accept 92066 >>Accept The Twin Bears
    .target Lorekeeper Nok
step
    .goto 1447,35.97,25.45
    >>Loot |cRXP_LOOT_[Feathered Charm Necklace]|r from |cRXP_ENEMY_Impaan the Imprisoner|r, |cRXP_ENEMY_Varrox Bleakhoof|r, |cRXP_ENEMY_Legashi Subjugator|r, then click it to start the quest
    .accept 92070 >>Accept A Lost Memento
    .use 249698
    .mob Impaan the Imprisoner
    .mob Varrox Bleakhoof
step
    .goto 1447,42,38.88
    >>Talk to |cRXP_FRIENDLY_Ekkal|r
    .accept 97327 >>Accept Blackmaw Pouches
    .target Ekkal
step
    .goto 1416,15.37,74.09
    >>Talk to |cRXP_FRIENDLY_Archmage Timear|r
    .accept 97173 >>Accept Blackmaw Magic
    .target Archmage Timear
step
    .goto 1447,35.97,25.45
    >>Collect |cRXP_LOOT_[Feathered Charm Necklace]|r from |cRXP_ENEMY_Impaan the Imprisoner|r, |cRXP_ENEMY_Varrox Bleakhoof|r, |cRXP_ENEMY_Legashi Subjugator|r
    *Find the owner of the Feathered Charm Necklace.
    .complete 92070,1 --A Lost Memento
    .mob Impaan the Imprisoner
    .mob Varrox Bleakhoof
step
    .goto 1447,39.96,33.19
    >>Collect |cRXP_LOOT_[Blackmaw Pouch]|r from |cRXP_ENEMY_Withermaw|r, |cRXP_ENEMY_Bonesnout the Unbroken|r, |cRXP_ENEMY_Impaan the Imprisoner|r
    *Enter Blackmaw Hold and recover 5 Blackmaw Pouches for Ekkal at the Ruins of Eldarath in Azshara.
    .complete 97327,1 --Blackmaw Pouches
    .mob Withermaw
    .mob Bonesnout the Unbroken
step
    #completewith next
    +|cRXP_WARN_Run the dungeon|r
step
    .goto 1447,38.7,33.4
    >>Inside Blackmaw Hold: these quests start from a drop or an object in the dungeon
    .accept 92067 >>Accept Feeding Time!
step
    .goto 1447,38.7,33.4
    >>Enter |cRXP_WARN_Blackmaw Hold|r and run it with a group. Quest goals inside:
    *Blackmaw Reclamation: Bring Varrox Bleakhoof's Head to Gatekeeper Rageroar at Ursolan.
    *The Twin Bears: Find the Totem of Ursoc and the Totem of Ursol inside Blackmaw Hold. Then, return them to Lorekeeper Nok at Ursolan.
    *Get to the Roots of It: Gather 10 Nordrassil Root Caps inside Blackmaw Hold for Mathrengyl Bearwalker in Darnassus.
    *Blackmaw Magic: Recover a Blackmaw Ritual Totem from Blackmaw Hold.
    .complete 92065,1 --Blackmaw Reclamation
    .complete 92066,1 --The Twin Bears
    .complete 92066,2 --The Twin Bears
    .complete 92344,1 --Get to the Roots of It
    .complete 97173,1 --Blackmaw Magic
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1447,38.7,33.4
    >>Inside Blackmaw Hold: these quests start from a drop or an object in the dungeon
    .turnin 92067 >>Turn in Feeding Time!
step
    .goto 1447,42,38.88
    >>Talk to |cRXP_FRIENDLY_Ekkal|r
    .turnin 97327 >>Turn in Blackmaw Pouches
    .target Ekkal
step
    .goto 1447,42.28,20.13
    >>Talk to |cRXP_FRIENDLY_Gatekeeper Rageroar|r
    .turnin 92065 >>Turn in Blackmaw Reclamation
    .target Gatekeeper Rageroar
step
    .goto 1447,41.31,20.1
    >>Talk to |cRXP_FRIENDLY_Lorekeeper Nok|r
    .turnin 92066 >>Turn in The Twin Bears
    .target Lorekeeper Nok
step
    .goto 1447,43.17,18.09
    >>Talk to |cRXP_FRIENDLY_Unele|r
    .turnin 92070 >>Turn in A Lost Memento
    .target Unele
step
    .goto 1457,35.37,8.4
    >>Talk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .turnin 92344 >>Turn in Get to the Roots of It
    .target Mathrengyl Bearwalker
step
    .goto 1416,15.37,74.09
    >>Talk to |cRXP_FRIENDLY_Archmage Timear|r
    .turnin 97173 >>Turn in Blackmaw Magic
    .target Archmage Timear
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1447,42,38.88
    >>Talk to |cRXP_FRIENDLY_Ekkal|r
    .accept 96246 >>Accept Blackmaw Pouches
    .target Ekkal
step
    .goto 1447,39.96,33.19
    >>Collect |cRXP_LOOT_[Blackmaw Pouch]|r from |cRXP_ENEMY_Withermaw|r, |cRXP_ENEMY_Bonesnout the Unbroken|r, |cRXP_ENEMY_Impaan the Imprisoner|r
    .complete 96246,1 --Blackmaw Pouches
    .mob Withermaw
    .mob Bonesnout the Unbroken
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1447,42,38.88
    >>Talk to |cRXP_FRIENDLY_Ekkal|r
    .turnin 96246 >>Turn in Blackmaw Pouches
    .target Ekkal
step
    .goto 1447,38.7,33.4
    +Dungeon entrance: Blackmaw Hold. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 50-60
#name 59-59 Shaper's Terrace
#displayname 59-59 Shaper's Terrace
#next 59-60 Scholomance
step
    +|cRXP_WARN_Shaper's Terrace|r (levels 58-60). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *New Forever dungeon on the hill north of Marshal's Refuge in Un'Goro. Power-crystal consoles inside open the way. No key needed.
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1455,71.5,15.74
    >>Talk to |cRXP_FRIENDLY_Curator Thorius|r
    .accept 95924 >>Accept Panic at the Digsite
    .accept 95925 >>Accept Mapping the Way Forward
    .target Curator Thorius
step
    #completewith next
    +|cRXP_WARN_Run the dungeon|r
step
    .goto 1449,48.1,6.1
    >>Inside Shaper's Terrace: these quests start from a drop or an object in the dungeon
    .accept 95790 >>Accept Digestible Research
step
    .goto 1449,48.1,6.1
    >>Enter |cRXP_WARN_Shaper's Terrace|r and run it with a group. Quest goals inside:
    *Digestible Research: Collect 15 Partially Digested Journal Pages from the Shaper's Terrace.
    *Panic at the Digsite: Slay 6 Ravasaur Matriarchs, 9 Ironhide Ravasaurs and Venomridge in Shaper's Terrace.
    .complete 95790,1 --Digestible Research
    .complete 95924,1 --Panic at the Digsite
    .complete 95924,2 --Panic at the Digsite
    .complete 95924,3 --Panic at the Digsite
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1455,71.5,15.74
    >>Talk to |cRXP_FRIENDLY_Curator Thorius|r
    .turnin 95790 >>Turn in Digestible Research
    .turnin 95924 >>Turn in Panic at the Digsite
    .turnin 95925 >>Turn in Mapping the Way Forward
    .target Curator Thorius
step
    .goto 1449,48.1,6.1
    +Dungeon entrance: Shaper's Terrace. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 50-60
#name 59-60 Scholomance
#displayname 59-60 Scholomance
#next 60-60 Mount Hyjal
step
    +|cRXP_WARN_Scholomance|r (levels 58-60). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *Pre-quests in this guide: Broodling Essence, Egg Freezing, Egg Collection, Felnok Steelspring, Chillwind Horns, Return to Tinkee, The Human, Ras Frostwhisper, The Dying, Ras Frostwhisper, Menethil's Gift, Menethil's Gift, Soulbound Keepsake, Leonid Barthalomew...
step
    #completewith next
    +|cRXP_WARN_Pre-quests|r
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
    .goto 1422,70.57,74.11
    >>Talk to |cRXP_FRIENDLY_Magistrate Marduke|r
    .accept 5461 >>Accept The Human, Ras Frostwhisper
    .target Magistrate Marduke
step
    .goto 1417,17.91,69.41
    >>Collect |cRXP_LOOT_[Keepsake of Remembrance]|r from |cRXP_PICK_Keepsake of Remembrance|r
    *Travel to the Arathi Highlands, to the ruins of Stromgarde. Search Stromgarde for a Keepsake of Remembrance. If you find such an item, return with it to Magistrate Marduke.
    .complete 5461,1 --The Human, Ras Frostwhisper
step
    .goto 1422,70.57,74.11
    >>Talk to |cRXP_FRIENDLY_Magistrate Marduke|r
    .turnin 5461 >>Turn in The Human, Ras Frostwhisper
    .accept 5462 >>Accept The Dying, Ras Frostwhisper
    .target Magistrate Marduke
step
    .goto 1423,71.89,48.29
    >>Talk to |cRXP_FRIENDLY_Leonid Barthalomew the Revered|r
    .turnin 5462 >>Turn in The Dying, Ras Frostwhisper
    .accept 5465 >>Accept Soulbound Keepsake
    .accept 5463 >>Accept Menethil's Gift
    .target Leonid Barthalomew the Revered
step
    .goto 1423,71.89,48.29
    >>Talk to |cRXP_FRIENDLY_Leonid Barthalomew the Revered|r
    .turnin 5463 >>Turn in Menethil's Gift
    .target Leonid Barthalomew the Revered
step
    .goto 1422,70.57,74.11
    >>Talk to |cRXP_FRIENDLY_Magistrate Marduke|r
    .turnin 5465 >>Turn in Soulbound Keepsake
    .target Magistrate Marduke
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
    .goto 1428,65.24,24
    >>Talk to |cRXP_FRIENDLY_Tinkee Steamboil|r
    .accept 4734 >>Accept Egg Freezing
    .target Tinkee Steamboil
step
    .goto 1428,65.24,24
    >>Talk to |cRXP_FRIENDLY_Tinkee Steamboil|r
    .turnin 4734 >>Turn in Egg Freezing
    .accept 4735 >>Accept Egg Collection
    .target Tinkee Steamboil
step
    >>Collect |cRXP_LOOT_[Collected Dragon Egg]|r
    *Bring 8 Collected Dragon Eggs and the Collectronic Module to Tinkee Steamboil at Flame Crest in the Burning Steppes.
    .complete 4735,1 --Egg Collection
step
    .goto 1428,65.24,24
    >>Talk to |cRXP_FRIENDLY_Tinkee Steamboil|r
    .turnin 4735 >>Turn in Egg Collection
    .accept 5522 >>Accept Leonid Barthalomew
    .target Tinkee Steamboil
step
    .goto 1423,71.89,48.29
    >>Talk to |cRXP_FRIENDLY_Leonid Barthalomew the Revered|r
    .turnin 5522 >>Turn in Leonid Barthalomew
    .target Leonid Barthalomew the Revered
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1423,71.89,48.29
    >>Talk to |cRXP_FRIENDLY_Leonid Barthalomew the Revered|r
    .accept 5531 >>Accept Betina Bigglezink
    .target Leonid Barthalomew the Revered
step
    .goto 1423,71.66,49.94
    >>Talk to |cRXP_FRIENDLY_Betina Bigglezink|r
    .accept 5529 >>Accept Plagued Hatchlings
    .target Betina Bigglezink
step
    .goto 1422,43.45,83.73
    >>Talk to |cRXP_FRIENDLY_Weldon Barov|r
    .accept 5343 >>Accept Barov Family Fortune
    .target Weldon Barov
step
    .goto 1422,70.22,73.71
    >>Talk to |cRXP_FRIENDLY_Eva Sarkhoff|r
    .accept 5382 >>Accept Doctor Theolen Krastinov, the Butcher
    .target Eva Sarkhoff
step
    .goto 1422,70.57,74.11
    >>Talk to |cRXP_FRIENDLY_Magistrate Marduke|r
    .accept 5466 >>Accept The Lich, Ras Frostwhisper
    .target Magistrate Marduke
step
    #completewith next
    +|cRXP_WARN_Run the dungeon|r
step
    .goto 1422,69.7,73.2
    >>Inside Scholomance: these quests start from a drop or an object in the dungeon
    .accept 8969 >>Accept The Left Piece of Lord Valthalak's Amulet
    .accept 8992 >>Accept The Right Piece of Lord Valthalak's Amulet
step
    .goto 1422,69.7,73.2
    >>Enter |cRXP_WARN_Scholomance|r and run it with a group. Quest goals inside:
    *Barov Family Fortune: Venture to the Scholomance and recover the Barov family fortune. Four deeds make up this fortune: The Deed to Caer Darrow; The Deed to Brill; The Deed to Tarren Mill; and The Deed to Southshore. Return to Weldon Barov when you have completed this task.
    *Doctor Theolen Krastinov, the Butcher: Find Doctor Theolen Krastinov inside the Scholomance. Destroy him, then burn the Remains of Eva Sarkhoff and the Remains of Lucien Sarkhoff. Return to Eva Sarkhoff when the task is complete.
    *The Lich, Ras Frostwhisper: Find Ras Frostwhisper in the Scholomance. When you have found him, use the Soulbound Keepsake on his undead visage. Should you succeed in reverting him to a mortal, strike him down and recover the Human Head of Ras Frostwhisper. Take the head back to Magistrate Marduke.
    *Plagued Hatchlings: Kill 20 Plagued Hatchlings, then return to Betina Bigglezink at the Light's Hope Chapel.
    *The Left Piece of Lord Valthalak's Amulet: Use the Brazier of Beckoning to summon forth the spirit of Kormok and slay him. Return to Bodley inside Blackrock Mountain with the Left Piece of Lord Valthalak's Amulet and the Brazier of Beckoning.
    *The Right Piece of Lord Valthalak's Amulet: Use the Brazier of Beckoning to summon forth the spirit of Kormok and slay him. Return to Bodley inside Blackrock Mountain with the recombined Lord Valthalak's Amulet and the Brazier of Beckoning.
    .complete 5343,1 --Barov Family Fortune
    .complete 5343,2 --Barov Family Fortune
    .complete 5343,3 --Barov Family Fortune
    .complete 5343,4 --Barov Family Fortune
    .complete 5382,1 --Doctor Theolen Krastinov, the Butcher
    .complete 5382,2 --Doctor Theolen Krastinov, the Butcher
    .complete 5382,3 --Doctor Theolen Krastinov, the Butcher
    .complete 5466,1 --The Lich, Ras Frostwhisper
    .complete 5529,1 --Plagued Hatchlings
    .complete 8969,1 --The Left Piece of Lord Valthalak's Amulet
    .complete 8969,2 --The Left Piece of Lord Valthalak's Amulet
    .complete 8992,1 --The Right Piece of Lord Valthalak's Amulet
    .complete 8992,2 --The Right Piece of Lord Valthalak's Amulet
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1422,69.7,73.2
    >>Inside Scholomance: these quests start from a drop or an object in the dungeon
    .turnin 8969 >>Turn in The Left Piece of Lord Valthalak's Amulet
    .turnin 8992 >>Turn in The Right Piece of Lord Valthalak's Amulet
step
    .goto 1422,70.22,73.71
    >>Talk to |cRXP_FRIENDLY_Eva Sarkhoff|r
    .turnin 5382 >>Turn in Doctor Theolen Krastinov, the Butcher
    .target Eva Sarkhoff
step
    .goto 1422,70.57,74.11
    >>Talk to |cRXP_FRIENDLY_Magistrate Marduke|r
    .turnin 5466 >>Turn in The Lich, Ras Frostwhisper
    .target Magistrate Marduke
step
    .goto 1422,43.45,83.73
    >>Talk to |cRXP_FRIENDLY_Weldon Barov|r
    .turnin 5343 >>Turn in Barov Family Fortune
    .target Weldon Barov
step
    .goto 1423,71.66,49.94
    >>Talk to |cRXP_FRIENDLY_Betina Bigglezink|r
    .turnin 5529 >>Turn in Plagued Hatchlings
    .turnin 5531 >>Turn in Betina Bigglezink
    .target Betina Bigglezink
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1423,71.66,49.94
    >>Talk to |cRXP_FRIENDLY_Betina Bigglezink|r
    .accept 4771 >>Accept Dawn's Gambit
    .target Betina Bigglezink
step
    .goto 1422,70.22,73.71
    >>Talk to |cRXP_FRIENDLY_Eva Sarkhoff|r
    .accept 5515 >>Accept Krastinov's Bag of Horrors
    .target Eva Sarkhoff
step
    #completewith next
    +|cRXP_WARN_Run the dungeon (run 2)|r
step
    .goto 1422,69.7,73.2
    >>Enter |cRXP_WARN_Scholomance|r and run it with a group. Quest goals inside:
    *Dawn's Gambit: Place Dawn's Gambit in the Viewing Room of the Scholomance. Defeat Vectus, then return to Betina Bigglezink.
    *Krastinov's Bag of Horrors: Locate Jandice Barov in the Scholomance and destroy her. From her corpse recover Krastinov's Bag of Horrors. Return the bag to Eva Sarkhoff.
    .complete 4771,1 --Dawn's Gambit
    .complete 5515,1 --Krastinov's Bag of Horrors
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1422,70.22,73.71
    >>Talk to |cRXP_FRIENDLY_Eva Sarkhoff|r
    .turnin 5515 >>Turn in Krastinov's Bag of Horrors
    .target Eva Sarkhoff
step
    .goto 1423,71.66,49.94
    >>Talk to |cRXP_FRIENDLY_Betina Bigglezink|r
    .turnin 4771 >>Turn in Dawn's Gambit
    .target Betina Bigglezink
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1422,70.22,73.71
    >>Talk to |cRXP_FRIENDLY_Eva Sarkhoff|r
    .accept 5384 >>Accept Kirtonos the Herald
    .target Eva Sarkhoff
step
    #completewith next
    +|cRXP_WARN_Run the dungeon (run 3)|r
step
    .goto 1422,69.7,73.2
    >>Enter |cRXP_WARN_Scholomance|r and run it with a group. Quest goals inside:
    *Kirtonos the Herald: Return to the Scholomance with the Blood of Innocents. Find the porch and place the Blood of Innocents in the brazier. Kirtonos will come to feast upon your soul.
    .complete 5384,1 --Kirtonos the Herald
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1422,70.22,73.71
    >>Talk to |cRXP_FRIENDLY_Eva Sarkhoff|r
    .turnin 5384 >>Turn in Kirtonos the Herald
    .target Eva Sarkhoff
step
    .goto 1422,69.7,73.2
    +Dungeon entrance: Scholomance. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 50-60
#name 60-60 Mount Hyjal
#displayname 60-60 Mount Hyjal
#next 60-60 Mount Hyjal/Silithus
step
    .zone 2482 >>Travel to Mount Hyjal
    *Suggested level for this part: 60-60
step
    #completewith next
    .goto 2482,68.71,46.8,15,0
    >>Talk to |cRXP_FRIENDLY_Fayran Elthas|r if you don't have this flight path yet
    .fp Fayran Elthas >>Get the flight path
    .target Fayran Elthas
step
    .goto 2482,68.3,46.71
    >>Talk to |cRXP_FRIENDLY_Marn Euhorn|r
    .accept 92017 >>Accept Cleansing Winds
    .target Marn Euhorn
step
    .goto 2482,68.88,48.35
    >>Talk to |cRXP_FRIENDLY_Toron Rockhoof|r
    .accept 92533 >>Accept Twisted Tools
    .target Toron Rockhoof
step
    .goto 2482,68.85,50.6
    >>Talk to |cRXP_FRIENDLY_Tiala Whitemane|r
    .accept 99670 >>Accept Return to Jereman
    .target Tiala Whitemane
step
    .goto 2482,76.92,35.42
    >>Click the |cRXP_PICK_Bookshelf|r
    .accept 93521 >>Accept Challenger of the Gods
step
    .goto 2482,71.8,29.58
    >>Collect |cRXP_LOOT_[Wicked Ritualist's Kris]|r from |cRXP_ENEMY_Blackthorne Cultist|r, |cRXP_ENEMY_Blackthorne Outrunner|r. Collect |cRXP_LOOT_[Recoiling Gnarlybark Staff]|r from |cRXP_ENEMY_Blackthorne Adept|r, |cRXP_ENEMY_Blackthorne Priest|r
    *Recover a Wicked Ritualist's Kris and a Recoiling Gnarlybark Staff from Blackthorne cultists.
    .complete 92533,1 --Twisted Tools
    .complete 92533,2 --Twisted Tools
    .mob Blackthorne Cultist
    .mob Blackthorne Outrunner
    .mob Blackthorne Adept
    .mob Blackthorne Priest
step
    .goto 2482,68.88,48.35
    >>Talk to |cRXP_FRIENDLY_Toron Rockhoof|r
    .turnin 92533 >>Turn in Twisted Tools
    .target Toron Rockhoof
step
    .goto 2482,68.85,50.6
    >>Talk to |cRXP_FRIENDLY_Tiala Whitemane|r
    .turnin 93521 >>Turn in Challenger of the Gods
    .target Tiala Whitemane
step
    .goto 2482,54.31,63.95
    >>Talk to |cRXP_FRIENDLY_Skylord Omnuron|r
    .accept 91883 >>Accept Spear of the Skylord
    .target Skylord Omnuron
step
    .goto 2482,54.48,63.91
    >>Talk to |cRXP_FRIENDLY_Phoebe Highfeather|r
    .accept 96252 >>Accept Tarnished Treasures
    .target Phoebe Highfeather
step
    .goto 2482,54.48,63.91
    >>Collect |cRXP_LOOT_[Omnuron's Spear]|r from |cRXP_ENEMY_Zarrat Wormwing|r, |cRXP_ENEMY_Searshrike Wormwing|r. Collect |cRXP_LOOT_[Tarnished Highfeather Bangle]|r
    *Slay Zarrat Wormwing and return Omnuron's Spear.
    *Collect 8 Tarnished Highfeather Bangles from Wormwing Harpy nests.
    .complete 91883,1 --Spear of the Skylord
    .complete 96252,1 --Tarnished Treasures
    .mob Zarrat Wormwing
    .mob Searshrike Wormwing
step
    .goto 2482,54.31,63.95
    >>Talk to |cRXP_FRIENDLY_Skylord Omnuron|r
    .turnin 91883 >>Turn in Spear of the Skylord
    .target Skylord Omnuron
step
    .goto 2482,54.48,63.91
    >>Talk to |cRXP_FRIENDLY_Phoebe Highfeather|r
    .turnin 96252 >>Turn in Tarnished Treasures
    .target Phoebe Highfeather
step
    .goto 2482,38.06,52.67
    >>Collect |cRXP_LOOT_[Grand Hippogryph Feather]|r from |cRXP_ENEMY_Mountain Squallclimber|r
    *Collect 5 Grand Hippogryph Feathers and 3 Oily Chimaera Hair for Marn.
    .complete 92017,1 --Cleansing Winds
    .mob Mountain Squallclimber
step
    .goto 2482,32.89,54.44
    >>Talk to |cRXP_FRIENDLY_Galvinquam Leafsyre|r
    .accept 96979 >>Accept Sacred Refreshment
    .target Galvinquam Leafsyre
step
    .goto 2482,32.89,54.44
    >>Talk to |cRXP_FRIENDLY_Galvinquam Leafsyre|r
    .turnin 96979 >>Turn in Sacred Refreshment
    .target Galvinquam Leafsyre
step
    .goto 2482,31.5,58.62
    >>Talk to |cRXP_FRIENDLY_Barkskin Matriarch|r
    .accept 91698 >>Accept Barkskin Breakout
    .target Barkskin Matriarch
step
    .goto 2482,28.89,58.61
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
    .target Barkskin Matriarch
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
    .goto 2482,22.49,48.64
    >>Click the |cRXP_PICK_Unmarked Grave|r
    .accept 90702 >>Accept Disturbed Grave
step
    .goto 2482,22.96,54.93
    >>Collect |cRXP_LOOT_[Ring of the Fallen Soldier]|r from |cRXP_ENEMY_Fleshflay Ravener|r, |cRXP_ENEMY_Fleshflayer Ravener|r
    *Search the area for the grave's missing contents.
    .complete 90702,1 --Disturbed Grave
    .mob Fleshflay Ravener
    .mob Fleshflayer Ravener
step
    .goto 2482,20.35,59.21
    >>Talk to |cRXP_FRIENDLY_Veteran of the Third War|r
    .accept 92100 >>Accept Anywhere But Here
    .target Veteran of the Third War
step
    .goto 2482,18.78,62.01
    >>Talk to |cRXP_FRIENDLY_Eluneth|r
    .accept 90865 >>Accept Eyes of the Watchers
    .target Eluneth
step
    .goto 2482,15.67,54.66
    >>Talk to |cRXP_FRIENDLY_Sefira Everbright|r
    .turnin 90702 >>Turn in Disturbed Grave
    .accept 92449 >>Accept Blight No More
    .accept 92591 >>Accept Final Death
    .target Sefira Everbright
step
    .goto 2482,15.64,49.99
    >>Talk to |cRXP_FRIENDLY_Hnaz Blunderflame|r
    .accept 92433 >>Accept Now We're Cooking
    .accept 91564 >>Accept Itching for a Fixing
    .accept 95027 >>Accept Feathers in Flight
    .target Hnaz Blunderflame
step
    .goto 2482,15.75,50.73
    >>Talk to |cRXP_FRIENDLY_Trigg Ironhand|r
    .accept 92189 >>Accept Back to the Grind
    .target Trigg Ironhand
step
    .goto 2482,15.75,50.73
    >>Kill |cRXP_ENEMY_Forgotten Soldier|r. Kill |cRXP_ENEMY_Fleshflay Ravener|r. Collect |cRXP_LOOT_[Reanimator's Amulet]|r from |cRXP_ENEMY_Scourge Reanimator|r. Collect |cRXP_LOOT_[Savory Stag Sliders]|r. Collect |cRXP_LOOT_[Mechanical Repair Kit]|r. Collect |cRXP_LOOT_[Dense Sharpening Stone]|r. Collect |cRXP_LOOT_[Dense Grinding Stone]|r
    *Eliminate 3 Forgotten Soldiers and 12 Fleshflay Raveners.
    *Use the Survivor's Torch on the Bone Pile, then collect the Reanimator's Amulet.
    *Bring 6 Savory Stag Sliders to Hnaz Blunderflame in Elderwild.
    *Bring 2 Mithril Casings and 1 Mechanical Repair Kit to Hnaz Blunderflame.
    *Bring 2 Dense Sharpening Stones and 2 Dense Grinding Stones to Trigg Ironhand in Elderwild on Mount Hyjal.
    .complete 92449,1 --Blight No More
    .complete 92449,2 --Blight No More
    .complete 92591,1 --Final Death
    .complete 92433,1 --Now We're Cooking
    .complete 91564,2 --Itching for a Fixing
    .complete 92189,1 --Back to the Grind
    .complete 92189,2 --Back to the Grind
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
    .target Sefira Everbright
step
    .goto 2482,24.61,55.1
    >>Collect |cRXP_LOOT_[Watcher's Eye]|r from |cRXP_ENEMY_Eternal Sentry|r
    *Retrieve 8 Watcher's Eyes for Eluneth.
    .complete 90865,1 --Eyes of the Watchers
    .mob Eternal Sentry
step
    .goto 2482,18.78,62.01
    >>Talk to |cRXP_FRIENDLY_Eluneth|r
    .turnin 90865 >>Turn in Eyes of the Watchers
    .target Eluneth
step
    .goto 2482,20.19,66.53
    >>Collect |cRXP_LOOT_[Hyjal Owl Feather]|r from |cRXP_ENEMY_Hyjal Owl|r, |cRXP_ENEMY_Tainted Hyjal Owl|r
    *Head south into the valley and collect owl feathers from their nests.
    .complete 95027,1 --Feathers in Flight
    .mob Hyjal Owl
    .mob Tainted Hyjal Owl
step
    .goto 2482,20.56,71.73
    >>Talk to |cRXP_FRIENDLY_Brerufa|r
    .accept 93952 >>Accept Balance Through Strength
    .target Brerufa
step
    .goto 2482,20.16,77.99
    >>Talk to |cRXP_FRIENDLY_Fennar Mossmane|r
    .accept 93828 >>Accept Herbs of the Hollow
    .accept 93830 >>Accept Water of Hyjal
    .accept 95273 >>Accept Water of Hyjal
    .target Fennar Mossmane
step
    .goto 2482,21.77,79.37
    >>Talk to |cRXP_FRIENDLY_Elder Pinespeaker|r
    .accept 93833 >>Accept Wicked Wisdom
    .accept 96666 >>Accept Burrow Bonding
    .target Elder Pinespeaker
step
    .goto 2482,21.08,78.51
    >>Talk to |cRXP_FRIENDLY_Dala Fairmaw|r
    .accept 93834 >>Accept Burrow Beetles
    .target Dala Fairmaw
step
    .goto 2482,20.16,77.99
    >>Talk to |cRXP_FRIENDLY_Fennar Mossmane|r
    .turnin 93828 >>Turn in Herbs of the Hollow
    .turnin 95273 >>Turn in Water of Hyjal
    .target Fennar Mossmane
step
    .goto 2482,21.77,79.37
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
    .goto 2482,25.31,75.87
    >>Talk to |cRXP_FRIENDLY_Fenwick Togglespring|r
    .accept 92702 >>Accept Branch Out
    .target Fenwick Togglespring
step
    >>Collect |cRXP_LOOT_[Sturdy Tree Branch]|r
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
    .goto 2482,20.19,66.53
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
    .target Brerufa
step
    .goto 2482,21.77,79.37
    >>Talk to |cRXP_FRIENDLY_Elder Pinespeaker|r
    .turnin 93833 >>Turn in Wicked Wisdom
    .target Elder Pinespeaker
step
    .goto 2482,48.26,85.72
    >>Talk to |cRXP_FRIENDLY_Curious Crow|r
    .accept 95317 >>Accept Notation, Notation, Notation
    .target Curious Crow
step
    .goto 2482,54.83,84.56
    >>Talk to |cRXP_FRIENDLY_Thylaen|r
    .accept 91923 >>Accept Celastrus the Bitter
    .target Thylaen
step
    .goto 2482,54.05,84.39
    >>Talk to |cRXP_FRIENDLY_Hyacinth|r
    .accept 91755 >>Accept Leaves to Ligatures
    .target Hyacinth
step
    .goto 2482,45.56,74.85
    >>Collect |cRXP_LOOT_[Fel Ash Experimentation Notes]|r from |cRXP_ENEMY_Ashen Acolyte|r
    *Find 12 Fel Ash Experimentation Notes.
    .complete 95317,1 --Notation, Notation, Notation
    .mob Ashen Acolyte
step
    .goto 2482,48.26,85.72
    >>Talk to |cRXP_FRIENDLY_Curious Crow|r
    .turnin 95317 >>Turn in Notation, Notation, Notation
    .accept 96262 >>Accept Prickly Pinecones
    .accept 95380 >>Accept A Prolific Source
    .target Curious Crow
step
    .goto 2482,48.26,85.72
    >>Collect |cRXP_LOOT_[Prickly Pinecone]|r. Collect |cRXP_LOOT_[Fel-Slime Ooze]|r from |cRXP_ENEMY_Noxious Slime|r, |cRXP_ENEMY_Forlorn Ghost|r
    *Collect 10 Prickly Pinecones under healthy trees.
    *Gather 8 Fel-Slime Ooze.
    .complete 96262,1 --Prickly Pinecones
    .complete 95380,1 --A Prolific Source
    .mob Noxious Slime
    .mob Forlorn Ghost
step
    .goto 2482,48.26,85.72
    >>Talk to |cRXP_FRIENDLY_Curious Crow|r
    .turnin 96262 >>Turn in Prickly Pinecones
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
    .goto 2482,59.91,70.17
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
    .goto 2482,68.99,49.99
    >>Talk to |cRXP_FRIENDLY_Thisalee Crow|r
    .turnin 91688 >>Turn in To the Summit of Eternity
    .target Thisalee Crow
step
    .goto 2482,68.3,46.71
    >>Talk to |cRXP_FRIENDLY_Marn Euhorn|r
    .turnin 92017 >>Turn in Cleansing Winds
    .accept 92016 >>Accept Rootwork
    .target Marn Euhorn
step
    .goto 2482,74.23,36.58
    >>Nordrassil's deep roots examined
    *Enter the Well of Eternity and examine the roots of Nordrassil.
    .complete 92016,1 --Rootwork
step
    .goto 2482,68.3,46.71
    >>Talk to |cRXP_FRIENDLY_Marn Euhorn|r
    .turnin 92016 >>Turn in Rootwork
    .target Marn Euhorn
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
    .goto 2482,32.53,51.72
    >>Collect |cRXP_LOOT_[Rustleaf Fox Tail]|r from |cRXP_ENEMY_Rustleaf Fox|r
    *Return 9 Rustleaf Fox Tails to Johun "Punchy" Dillas in Hyjal.
    .complete 92014,1 --Fox Hole
    .mob Rustleaf Fox
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
    .goto 2482,8.8,46.47
    >>Talk to |cRXP_FRIENDLY_Veteran of the Third War|r
    .turnin 96550 >>Turn in Battle Recall
    .accept 92101 >>Accept Lifted by Legacy
    .accept 93510 >>Accept Wake Memories
    .target Veteran of the Third War
step
    .goto 2482,43.91,37.81
    >>Talk to |cRXP_FRIENDLY_Johun "Punchy" Dillas|r
    .turnin 92014 >>Turn in Fox Hole
    .accept 96992 >>Accept Resupply
    .target Johun "Punchy" Dillas
step
    >>Collect |cRXP_LOOT_[Nail]|r. Collect |cRXP_LOOT_[Metal Bracket]|r
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
    .goto 2482,53.69,33.45
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
    .goto 1441,31.91,24.46
    >>Talk to |cRXP_FRIENDLY_Veteran of the Third War|r
    .accept 92102 >>Accept Praise
    .target Veteran of the Third War
step
    .goto 1441,31.94,24
    >>Tobin's spot visited
    *Find the Veteran of the Third War's markings of significance on the Great Lift.
    .complete 92101,1 --Lifted by Legacy
step
    .goto 1441,31.93,24.03
    >>Click the |cRXP_PICK_Carving|r
    .turnin 92101 >>Turn in Lifted by Legacy
step
    .goto 2482,27.5,50.88
    >>Talk to |cRXP_FRIENDLY_Veteran of the Third War|r
    .turnin 92102 >>Turn in Praise
    .target Veteran of the Third War
step
    .goto 1452,61.86,38.23
    >>Talk to |cRXP_FRIENDLY_Umaron Stragarelm|r
    .accept 97490 >>Accept Halt the Hail
    .target Umaron Stragarelm
step
    .goto 1452,64.42,55.1
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
    .goto 1433,30.45,56.99
    >>Talk to |cRXP_FRIENDLY_Veteran of the Third War|r
    .accept 93551 >>Accept Praise
    .target Veteran of the Third War
step
    .goto 1433,29.95,57.18
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
    .goto 1427,34.69,51.89
    >>Collect |cRXP_LOOT_[Mithril Casing]|r from |cRXP_ENEMY_Clunk|r, |cRXP_ENEMY_Frostwolf Shredder Unit|r, |cRXP_ENEMY_Stormpike Shredder Unit|r
    *Bring 2 Mithril Casings and 1 Mechanical Repair Kit to Hnaz Blunderflame.
    .complete 91564,1 --Itching for a Fixing
    .mob Clunk
    .mob Frostwolf Shredder Unit
step
    .goto 2482,15.64,49.99
    >>Talk to |cRXP_FRIENDLY_Hnaz Blunderflame|r
    .turnin 91564 >>Turn in Itching for a Fixing
    .target Hnaz Blunderflame
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 50-60
#name 60-60 Mount Hyjal/Silithus
#displayname 60-60 Mount Hyjal/Silithus
#next 58-60 Stratholme
step
    .zone 2482 >>Travel to Mount Hyjal
    *Suggested level for this part: 60-60
step
    .goto 1451,48.62,37.87
    >>Talk to |cRXP_FRIENDLY_Huum Wildmane|r
    .accept 8320 >>Accept Twilight Geolords
    .accept 8331 >>Accept Aurel Goldleaf
    .accept 8343 >>Accept Goldleaf's Discovery
    .target Huum Wildmane
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
    .accept 8361 >>Accept Abyssal Contacts
    .accept 8318 >>Accept Secret Communication
    .target Bor Wildmane
step
    .goto 1451,49.67,37.46
    >>Talk to |cRXP_FRIENDLY_Geologist Larksbane|r
    .accept 8284 >>Accept The Twilight Mystery
    .target Geologist Larksbane
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
    .goto 1451,51.96,38.16
    >>Talk to |cRXP_FRIENDLY_Aurel Goldleaf|r
    .turnin 8331 >>Turn in Aurel Goldleaf
    .turnin 8343 >>Turn in Goldleaf's Discovery
    .target Aurel Goldleaf
step
    .goto 1451,51.23,38.86
    >>Talk to |cRXP_FRIENDLY_Vargus|r
    .turnin 8800 >>Turn in Cenarion Battlegear
    .target Vargus
step
    .goto 1451,51.96,38.16
    >>Talk to |cRXP_FRIENDLY_Aurel Goldleaf|r
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
    .goto 1451,50.68,34.71
    >>Talk to |cRXP_FRIENDLY_Rifleman Torrig|r
    .accept 9415 >>Accept Report to Marshal Bluewall
    .target Rifleman Torrig
step
    .goto 1451,49.2,34.18
    >>Talk to |cRXP_FRIENDLY_Commander Mar'alith|r
    .accept 8304 >>Accept Dearest Natalia
    .target Commander Mar'alith
step
    .goto 1451,45.72,26.85
    >>Loot |cRXP_LOOT_[Brann Bronzebeard's Lost Letter]|r from |cRXP_ENEMY_Hive'Ashi Stinger|r, |cRXP_ENEMY_Hive'Ashi Worker|r, |cRXP_ENEMY_Hive'Ashi Defender|r, then click it to start the quest
    .accept 8308 >>Accept Brann Bronzebeard's Lost Letter
    .use 20461
    .mob Hive'Ashi Stinger
    .mob Hive'Ashi Worker
step
    .goto 1451,55.88,17.68
    >>Collect |cRXP_LOOT_[Sand Skitterer Fang]|r from |cRXP_ENEMY_Sand Skitterer|r. Kill |cRXP_ENEMY_Dredge Striker|r
    *Beetix Ficklespragg at Cenarion Hold in Silithus wants you to gather 8 Stonelash Scorpid Stingers and 8 Sand Skitterer Fangs. Return to her when you have completed the task.
    *Windcaller Proudhorn at Cenarion Hold in Silithus wants you to kill 15 Dredge Strikers.
    .complete 8277,2 --Deadly Desert Venom
    .complete 8280,1 --Securing the Supply Lines
    .mob Sand Skitterer
    .mob Dredge Striker
step
    .goto 1451,64.35,27.03
    >>Collect |cRXP_LOOT_[Stonelash Scorpid Stinger]|r from |cRXP_ENEMY_Stonelash Scorpid|r
    *Beetix Ficklespragg at Cenarion Hold in Silithus wants you to gather 8 Stonelash Scorpid Stingers and 8 Sand Skitterer Fangs. Return to her when you have completed the task.
    .complete 8277,1 --Deadly Desert Venom
    .mob Stonelash Scorpid
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
    .goto 1451,37.81,44.38
    >>Collect |cRXP_LOOT_[Encrypted Twilight Text]|r from |cRXP_ENEMY_Twilight Keeper Havunth|r, |cRXP_ENEMY_Twilight Avenger|r, |cRXP_ENEMY_Twilight Geolord|r. Kill |cRXP_ENEMY_Dredge Crusher|r
    *Bring 10 Encrypted Twilight Texts to Bor Wildmane in Cenarion Hold.
    *Windcaller Proudhorn at Cenarion Hold in Silithus wants you to slay 20 Dredge Crushers.
    .complete 8318,1 --Secret Communication
    .complete 8281,1 --Stepping Up Security
    .mob Twilight Keeper Havunth
    .mob Twilight Avenger
    .mob Dredge Crusher
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
    .goto 1451,51.15,38.29
    >>Talk to |cRXP_FRIENDLY_Windcaller Proudhorn|r
    .turnin 8281 >>Turn in Stepping Up Security
    .target Windcaller Proudhorn
step
    .goto 1451,25.54,33.11
    >>Kill |cRXP_ENEMY_Twilight Geolord|r
    *Kill 10 Twilight Geolords, then return to Huum Wildmane in Cenarion Hold.
    .complete 8320,1 --Twilight Geolords
    .mob Twilight Geolord
step
    .goto 1451,24.4,11.76
    >>Collect |cRXP_LOOT_[Twilight Tablet Fragment]|r from |cRXP_ENEMY_Whirling Invader|r
    *Geologist Larksbane at Cenarion Hold in Silithus wants you to collect 8 Twilight Tablet Fragments.
    .complete 8284,1 --The Twilight Mystery
    .mob Whirling Invader
step
    .goto 1451,48.62,37.87
    >>Talk to |cRXP_FRIENDLY_Huum Wildmane|r
    .turnin 8320 >>Turn in Twilight Geolords
    .target Huum Wildmane
step
    .goto 1451,49.67,37.46
    >>Talk to |cRXP_FRIENDLY_Geologist Larksbane|r
    .turnin 8284 >>Turn in The Twilight Mystery
    .target Geologist Larksbane
step
    .goto 1451,48.62,37.87
    >>Talk to |cRXP_FRIENDLY_Huum Wildmane|r
    .accept 8321 >>Accept Vyral the Vile
    .target Huum Wildmane
step
    .goto 1451,49.67,37.46
    >>Talk to |cRXP_FRIENDLY_Geologist Larksbane|r
    .accept 8285 >>Accept The Deserter
    .target Geologist Larksbane
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
    .goto 1451,67.19,69.76
    >>Talk to |cRXP_FRIENDLY_Hermit Ortell|r
    .turnin 8285 >>Turn in The Deserter
    .accept 8279 >>Accept The Twilight Lexicon
    .target Hermit Ortell
step
    .goto 1451,41.28,88.45
    >>Talk to |cRXP_FRIENDLY_Rutgar Glyphshaper|r
    .turnin 8308 >>Turn in Brann Bronzebeard's Lost Letter
    .target Rutgar Glyphshaper
step
    .goto 1451,40.62,89.18
    >>Collect |cRXP_LOOT_[Deathclasp's Pincer]|r from |cRXP_ENEMY_Deathclasp|r. Kill |cRXP_ENEMY_Frankal Invisible Trigger|r. Kill |cRXP_ENEMY_Rutgar Invisible Trigger|r
    *Bring Deathclasp's Pincer to Vish Kozus, Captain of the Guard.
    *Commander Mar'alith at Cenarion Hold in Silithus wants you to question the inhabitants of Bronzebeard's Encampment. You will find Bronzebeard's Encampment south of Cenarion Hold.
    .complete 8283,1 --Wanted - Deathclasp, Terror of the Sands
    .complete 8304,1 --Dearest Natalia
    .complete 8304,2 --Dearest Natalia
    .mob Deathclasp
    .mob Frankal Invisible Trigger
    .mob Rutgar Invisible Trigger
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
    .goto 1451,49.2,34.18
    >>Talk to |cRXP_FRIENDLY_Commander Mar'alith|r
    .turnin 8304 >>Turn in Dearest Natalia
    .target Commander Mar'alith
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
    .goto 1451,41.28,88.45
    >>Collect |cRXP_LOOT_[Noggle's Satchel]|r from |cRXP_PICK_Noggle's Satchel|r. Collect |cRXP_LOOT_[Hive'Ashi Rubbing]|r. Collect |cRXP_LOOT_[Hive'Zora Rubbing]|r. Collect |cRXP_LOOT_[Hive'Regal Rubbing]|r
    *Retrieve Noggle's Satchel from the mountains in the south of Silithus and return it to him at Cenarion Hold.
    *Rutgar Glyphshaper at Bronzebeard's Encampment in Silithus wants you to venture to Hive'Ashi, Hive'Zora, and Hive'Regal and recover Glyphed Rubbings from the Glyphed Crystals of each hive.
    .complete 8282,1 --Noggle's Lost Satchel
    .complete 8309,1 --Glyph Chasing
    .complete 8309,2 --Glyph Chasing
    .complete 8309,3 --Glyph Chasing
step
    .goto 1451,41.28,88.45
    >>Talk to |cRXP_FRIENDLY_Rutgar Glyphshaper|r
    .turnin 8309 >>Turn in Glyph Chasing
    .target Rutgar Glyphshaper
step
    .goto 1451,40.86,42.22
    >>Collect |cRXP_LOOT_[Twilight Lexicon - Chapter 3]|r from |cRXP_ENEMY_Twilight Keeper Havunth|r
    *Bring the three chapters of the Twilight Lexicon to Hermit Ortell in Silithus.
    .complete 8279,3 --The Twilight Lexicon
    .mob Twilight Keeper Havunth
step
    .goto 1451,51.63,38.5
    >>Talk to |cRXP_FRIENDLY_Noggle Ficklespragg|r
    .turnin 8282 >>Turn in Noggle's Lost Satchel
    .target Noggle Ficklespragg
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
    .goto 1451,67.19,69.76
    >>Talk to |cRXP_FRIENDLY_Hermit Ortell|r
    .turnin 8279 >>Turn in The Twilight Lexicon
    .accept 8323 >>Accept True Believers
    .accept 8287 >>Accept A Terrible Purpose
    .target Hermit Ortell
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
    .goto 1451,37.81,44.38
    >>Collect |cRXP_LOOT_[Encrypted Twilight Text]|r from |cRXP_ENEMY_Twilight Keeper Havunth|r, |cRXP_ENEMY_Twilight Avenger|r, |cRXP_ENEMY_Twilight Geolord|r
    *Hermit Ortell wants you to bring him 10 Encrypted Twilight Texts
    .complete 8323,1 --True Believers
    .mob Twilight Keeper Havunth
    .mob Twilight Avenger
step
    .goto 1451,49.2,34.18
    >>Talk to |cRXP_FRIENDLY_Commander Mar'alith|r
    .turnin 8287 >>Turn in A Terrible Purpose
    .target Commander Mar'alith
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
step
    .goto 1446,64.6,50.42
    >>Discover the Brood of Nozdormu.
    *Venture to the Caverns of Time in Tanaris and find Anachronos, Brood of Nozdormu.
    .complete 8286,1 --What Tomorrow Brings
step
    .goto 1451,49.45,36.45
    >>Talk to |cRXP_FRIENDLY_Baristolth of the Shifting Sands|r
    .turnin 8286 >>Turn in What Tomorrow Brings
    .target Baristolth of the Shifting Sands
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 50-60
#name 58-60 Stratholme
#displayname 58-60 Stratholme
step
    +|cRXP_WARN_Stratholme|r (levels 58-60). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *Pre-quests in this guide: The Restless Souls, Doctor Theolen Krastinov, the Butcher, Kirtonos the Herald, The Human, Ras Frostwhisper, The Dying, Ras Frostwhisper, Krastinov's Bag of Horrors, Demon Dogs, Blood Tinged Skies, Carrion Grubbage, Redemption, Of Forgotten Memories, Of Lost Honor...
step
    #completewith next
    +|cRXP_WARN_Pre-quests|r
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
    .accept 5845 >>Accept Of Lost Honor
    .target Tirion Fordring
step
    .goto 1423,69.93,53.72
    >>Talk to |cRXP_FRIENDLY_Caretaker Alen|r
    .accept 5281 >>Accept The Restless Souls
    .target Caretaker Alen
step
    .goto 1423,62.53,26.81
    >>Collect |cRXP_LOOT_[Symbol of Lost Honor]|r from |cRXP_PICK_Symbol of Lost Honor|r
    *Travel to Northdale, in the northeastern region of the Eastern Plaguelands, and recover the Symbol of Lost Honor. Return to Tirion Fordring upon completion of your objective.
    .complete 5845,1 --Of Lost Honor
step
    .goto 1423,11.36,26.6
    >>Talk to |cRXP_FRIENDLY_Egan|r
    .turnin 5281 >>Turn in The Restless Souls
    .target Egan
step
    .goto 1423,5.16,35.57
    >>Talk to |cRXP_FRIENDLY_Tirion Fordring|r
    .turnin 5845 >>Turn in Of Lost Honor
    .accept 5846 >>Accept Of Love and Family
    .target Tirion Fordring
step
    .goto 1422,65.77,75.37
    >>Talk to |cRXP_FRIENDLY_Artist Renfray|r
    .turnin 5846 >>Turn in Of Love and Family
    .target Artist Renfray
step
    .goto 1422,70.22,73.71
    >>Talk to |cRXP_FRIENDLY_Eva Sarkhoff|r
    .accept 5382 >>Accept Doctor Theolen Krastinov, the Butcher
    .target Eva Sarkhoff
step
    >>Kill |cRXP_ENEMY_Doctor Theolen Krastinov|r. Click |cRXP_PICK_Remains of Eva Sarkhoff|r. Click |cRXP_PICK_Remains of Lucien Sarkhoff|r
    *Find Doctor Theolen Krastinov inside the Scholomance. Destroy him, then burn the Remains of Eva Sarkhoff and the Remains of Lucien Sarkhoff. Return to Eva Sarkhoff when the task is complete.
    *|cRXP_WARN_Elite targets here. Group up or skip.|r
    .complete 5382,1 --Doctor Theolen Krastinov, the Butcher
    .complete 5382,2 --Doctor Theolen Krastinov, the Butcher
    .complete 5382,3 --Doctor Theolen Krastinov, the Butcher
    .mob Doctor Theolen Krastinov
step
    .goto 1422,70.22,73.71
    >>Talk to |cRXP_FRIENDLY_Eva Sarkhoff|r
    .turnin 5382 >>Turn in Doctor Theolen Krastinov, the Butcher
    .accept 5515 >>Accept Krastinov's Bag of Horrors
    .target Eva Sarkhoff
step
    >>Collect |cRXP_LOOT_[Krastinov's Bag of Horrors]|r from |cRXP_ENEMY_Jandice Barov|r
    *Locate Jandice Barov in the Scholomance and destroy her. From her corpse recover Krastinov's Bag of Horrors. Return the bag to Eva Sarkhoff.
    .complete 5515,1 --Krastinov's Bag of Horrors
    .mob Jandice Barov
step
    .goto 1422,70.22,73.71
    >>Talk to |cRXP_FRIENDLY_Eva Sarkhoff|r
    .turnin 5515 >>Turn in Krastinov's Bag of Horrors
    .accept 5384 >>Accept Kirtonos the Herald
    .target Eva Sarkhoff
step
    >>Kill |cRXP_ENEMY_Kirtonos the Herald|r
    *Return to the Scholomance with the Blood of Innocents. Find the porch and place the Blood of Innocents in the brazier. Kirtonos will come to feast upon your soul.
    *|cRXP_WARN_Elite targets here. Group up or skip.|r
    .complete 5384,1 --Kirtonos the Herald
    .mob Kirtonos the Herald
step
    .goto 1422,70.22,73.71
    >>Talk to |cRXP_FRIENDLY_Eva Sarkhoff|r
    .turnin 5384 >>Turn in Kirtonos the Herald
    .target Eva Sarkhoff
step
    .goto 1422,70.57,74.11
    >>Talk to |cRXP_FRIENDLY_Magistrate Marduke|r
    .accept 5461 >>Accept The Human, Ras Frostwhisper
    .target Magistrate Marduke
step
    .goto 1455,43.53,52.64
    >>Talk to |cRXP_FRIENDLY_Deliana|r
    .accept 8960 >>Accept Bodley's Unfortunate Fate
    .accept 8929 >>Accept In Search of Anthion
    .target Deliana
step
    .goto 1455,43.53,52.64
    >>Talk to |cRXP_FRIENDLY_Deliana|r
    .turnin 8960 >>Turn in Bodley's Unfortunate Fate
    .target Deliana
step
    .goto 1423,26.11,11.3
    >>Talk to |cRXP_FRIENDLY_Anthion Harmon|r
    .turnin 8929 >>Turn in In Search of Anthion
    .target Anthion Harmon
step
    .goto 1417,17.91,69.41
    >>Collect |cRXP_LOOT_[Keepsake of Remembrance]|r from |cRXP_PICK_Keepsake of Remembrance|r
    *Travel to the Arathi Highlands, to the ruins of Stromgarde. Search Stromgarde for a Keepsake of Remembrance. If you find such an item, return with it to Magistrate Marduke.
    .complete 5461,1 --The Human, Ras Frostwhisper
step
    .goto 1422,70.57,74.11
    >>Talk to |cRXP_FRIENDLY_Magistrate Marduke|r
    .turnin 5461 >>Turn in The Human, Ras Frostwhisper
    .accept 5462 >>Accept The Dying, Ras Frostwhisper
    .target Magistrate Marduke
step
    .goto 1423,71.89,48.29
    >>Talk to |cRXP_FRIENDLY_Leonid Barthalomew the Revered|r
    .turnin 5462 >>Turn in The Dying, Ras Frostwhisper
    .target Leonid Barthalomew the Revered
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1423,71.89,48.29
    >>Talk to |cRXP_FRIENDLY_Leonid Barthalomew the Revered|r
    .accept 5243 >>Accept Houses of the Holy
    .accept 5463 >>Accept Menethil's Gift
    .target Leonid Barthalomew the Revered
step
    .goto 1423,70.88,48.43
    >>Talk to |cRXP_FRIENDLY_Smokey LaRue|r
    .accept 5214 >>Accept The Great Fras Siabi
    .target Smokey LaRue
step
    .goto 1423,71.66,49.94
    >>Talk to |cRXP_FRIENDLY_Betina Bigglezink|r
    .accept 5212 >>Accept The Flesh Does Not Lie
    .target Betina Bigglezink
step
    .goto 1423,71.63,50.09
    >>Talk to |cRXP_FRIENDLY_Duke Nicholas Zverenhoff|r
    .accept 5251 >>Accept The Archivist
    .target Duke Nicholas Zverenhoff
step
    .goto 1423,26.11,11.3
    >>Talk to |cRXP_FRIENDLY_Anthion Harmon|r
    .accept 8945 >>Accept Dead Man's Plea
    .target Anthion Harmon
step
    .goto 1423,11.36,26.6
    >>Talk to |cRXP_FRIENDLY_Egan|r
    .accept 5282 >>Accept The Restless Souls
    .target Egan
step
    .goto 1422,65.77,75.37
    >>Talk to |cRXP_FRIENDLY_Artist Renfray|r
    .accept 5848 >>Accept Of Love and Family
    .target Artist Renfray
step
    #completewith next
    +|cRXP_WARN_Run the dungeon|r
step
    .goto 1423,26.52,10.36
    >>Inside Stratholme: these quests start from a drop or an object in the dungeon
    .accept 5125 >>Accept Aurius' Reckoning
    .accept 8968 >>Accept The Left Piece of Lord Valthalak's Amulet
    .accept 8991 >>Accept The Right Piece of Lord Valthalak's Amulet
step
    .goto 1423,26.52,10.36
    >>Enter |cRXP_WARN_Stratholme|r and run it with a group. Quest goals inside:
    *The Flesh Does Not Lie: Recover 10 Plagued Flesh Samples from Stratholme and return them to Betina Bigglezink. You suspect that any creature in Stratholme would have said flesh sample.
    *The Great Fras Siabi: Find Fras Siabi's smoke shop in Stratholme and recover a box of Siabi's Premium Tobacco. Return to Smokey LaRue when the job is done.
    *Houses of the Holy: Travel to Stratholme, in the north. Search the supply crates that litter the city and recover 5 Stratholme Holy Water. Return to Leonid Barthalomew the Revered when you have collected enough of the blessed fluid.
    *The Archivist: Travel to Stratholme and find Archivist Galford of the Scarlet Crusade. Destroy him and burn down the Scarlet Archive.
    *The Restless Souls: Use Egan's Blaster on the ghostly and spectral citizens of Stratholme. When the restless souls break free from their ghostly shells, use the blaster again - freedom will be theirs!
    *Of Love and Family: Travel to Stratholme, in the northern part of the Plaguelands. It is in the Scarlet Bastion that you will find the painting 'Of Love and Family,' hidden behind another painting depicting the twin moons of our world.
    *Dead Man's Plea: Go into Stratholme and rescue Ysida Harmon from Baron Rivendare.
    *The Left Piece of Lord Valthalak's Amulet: Use the Brazier of Beckoning to summon forth Jarien and Sothos and slay them. Return to Bodley inside Blackrock Mountain with the Left Piece of Lord Valthalak's Amulet and the Brazier of Beckoning.
    *The Right Piece of Lord Valthalak's Amulet: Use the Brazier of Beckoning to summon forth Jarien and Sothos and slay them. Return to Bodley inside Blackrock Mountain with the recombined Lord Valthalak's Amulet and the Brazier of Beckoning.
    .complete 5212,1 --The Flesh Does Not Lie
    .complete 5214,1 --The Great Fras Siabi
    .complete 5243,1 --Houses of the Holy
    .complete 5251,1 --The Archivist
    .complete 5251,2 --The Archivist
    .complete 5282,1 --The Restless Souls
    .complete 5848,1 --Of Love and Family
    .complete 8945,1 --Dead Man's Plea
    .complete 8968,1 --The Left Piece of Lord Valthalak's Amulet
    .complete 8968,2 --The Left Piece of Lord Valthalak's Amulet
    .complete 8968,3 --The Left Piece of Lord Valthalak's Amulet
    .complete 8991,1 --The Right Piece of Lord Valthalak's Amulet
    .complete 8991,2 --The Right Piece of Lord Valthalak's Amulet
    .complete 8991,3 --The Right Piece of Lord Valthalak's Amulet
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1423,26.52,10.36
    >>Inside Stratholme: these quests start from a drop or an object in the dungeon
    .turnin 5125 >>Turn in Aurius' Reckoning
    .turnin 8968 >>Turn in The Left Piece of Lord Valthalak's Amulet
    .turnin 8991 >>Turn in The Right Piece of Lord Valthalak's Amulet
step
    .goto 1423,26.11,11.3
    >>Talk to |cRXP_FRIENDLY_Anthion Harmon|r
    .turnin 8945 >>Turn in Dead Man's Plea
    .target Anthion Harmon
step
    .goto 1423,11.36,26.6
    >>Talk to |cRXP_FRIENDLY_Egan|r
    .turnin 5282 >>Turn in The Restless Souls
    .target Egan
step
    .goto 1423,5.16,35.57
    >>Talk to |cRXP_FRIENDLY_Tirion Fordring|r
    .turnin 5848 >>Turn in Of Love and Family
    .target Tirion Fordring
step
    .goto 1423,70.88,48.43
    >>Talk to |cRXP_FRIENDLY_Smokey LaRue|r
    .turnin 5214 >>Turn in The Great Fras Siabi
    .target Smokey LaRue
step
    .goto 1423,71.89,48.29
    >>Talk to |cRXP_FRIENDLY_Leonid Barthalomew the Revered|r
    .turnin 5243 >>Turn in Houses of the Holy
    .turnin 5463 >>Turn in Menethil's Gift
    .target Leonid Barthalomew the Revered
step
    .goto 1423,71.66,49.94
    >>Talk to |cRXP_FRIENDLY_Betina Bigglezink|r
    .turnin 5212 >>Turn in The Flesh Does Not Lie
    .target Betina Bigglezink
step
    .goto 1423,71.63,50.09
    >>Talk to |cRXP_FRIENDLY_Duke Nicholas Zverenhoff|r
    .turnin 5251 >>Turn in The Archivist
    .target Duke Nicholas Zverenhoff
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1423,71.66,49.94
    >>Talk to |cRXP_FRIENDLY_Betina Bigglezink|r
    .accept 5213 >>Accept The Active Agent
    .target Betina Bigglezink
step
    #completewith next
    +|cRXP_WARN_Run the dungeon (run 2)|r
step
    .goto 1423,26.52,10.36
    >>Loot |cRXP_LOOT_[Head of Balnazzar]|r from |cRXP_ENEMY_Balnazzar|r, then click it to start the quest
    .accept 5262 >>Accept The Truth Comes Crashing Down
    .use 13250
    .mob Balnazzar
step
    .goto 1423,26.52,10.36
    >>Enter |cRXP_WARN_Stratholme|r and run it with a group. Quest goals inside:
    *The Active Agent: Travel to Stratholme and search the ziggurats. Find and return new Scourge Data to Betina Bigglezink.
    .complete 5213,1 --The Active Agent
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1423,71.66,49.94
    >>Talk to |cRXP_FRIENDLY_Betina Bigglezink|r
    .turnin 5213 >>Turn in The Active Agent
    .target Betina Bigglezink
step
    .goto 1423,71.63,50.09
    >>Talk to |cRXP_FRIENDLY_Duke Nicholas Zverenhoff|r
    .turnin 5262 >>Turn in The Truth Comes Crashing Down
    .target Duke Nicholas Zverenhoff
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1423,71.63,50.09
    >>Talk to |cRXP_FRIENDLY_Duke Nicholas Zverenhoff|r
    .accept 5263 >>Accept Above and Beyond
    .target Duke Nicholas Zverenhoff
step
    #completewith next
    +|cRXP_WARN_Run the dungeon (run 3)|r
step
    .goto 1423,26.52,10.36
    >>Enter |cRXP_WARN_Stratholme|r and run it with a group. Quest goals inside:
    *Above and Beyond: Venture to Stratholme and destroy Baron Rivendare. Take his head and return to Duke Nicholas Zverenhoff.
    .complete 5263,1 --Above and Beyond
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1423,71.63,50.09
    >>Talk to |cRXP_FRIENDLY_Duke Nicholas Zverenhoff|r
    .turnin 5263 >>Turn in Above and Beyond
    .target Duke Nicholas Zverenhoff
step
    .goto 1423,26.52,10.36
    +Dungeon entrance: Stratholme. Done with this dungeon? Click to finish.
]])
