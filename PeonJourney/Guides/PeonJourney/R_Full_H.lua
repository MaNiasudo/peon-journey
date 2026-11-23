RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 20-29
#name 20-30 Shadowfang Keep
#displayname 20-30 Shadowfang Keep
#next 22-24 Stonetalon/Barrens
step
    +|cRXP_WARN_Shadowfang Keep|r (levels 20-30). Pick up 3 dungeon quests solo (roughly 15 min with the hand-ins), then ONE run with a group (roughly 50 min). No group needed until the run step. Click to start.
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1458,53.74,54.46
    >>Talk to |cRXP_FRIENDLY_Keeper Bel'dugur|r
    .accept 1013 >>Accept The Book of Ur
    .target Keeper Bel'dugur
step
    .goto 1421,44.2,39.81
    >>Talk to |cRXP_FRIENDLY_Dalar Dawnweaver|r
    .accept 1014 >>Accept Arugal Must Die
    .target Dalar Dawnweaver
step
    .goto 1421,43.42,40.86
    >>Talk to |cRXP_FRIENDLY_High Executor Hadrec|r
    .accept 1098 >>Accept Deathstalkers in Shadowfang
    .target High Executor Hadrec
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in.|r
step
    .goto 1421,44.8,67.8
    >>Enter |cRXP_WARN_Shadowfang Keep|r with your group. Quest goals inside:
    *The Book of Ur: Bring the Book of Ur to Keeper Bel'dugur at the Apothecarium in the Undercity.
    *Arugal Must Die: Kill Arugal and bring his head to Dalar Dawnweaver at the Sepulcher.
    .complete 1013,1 --The Book of Ur
    .complete 1014,1 --Arugal Must Die
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1421,43.42,40.86
    >>Talk to |cRXP_FRIENDLY_High Executor Hadrec|r
    .turnin 1098 >>Turn in Deathstalkers in Shadowfang
    .target High Executor Hadrec
step
    .goto 1421,44.2,39.81
    >>Talk to |cRXP_FRIENDLY_Dalar Dawnweaver|r
    .turnin 1014 >>Turn in Arugal Must Die
    .target Dalar Dawnweaver
step
    .goto 1458,53.74,54.46
    >>Talk to |cRXP_FRIENDLY_Keeper Bel'dugur|r
    .turnin 1013 >>Turn in The Book of Ur
    .target Keeper Bel'dugur
step
    .goto 1421,44.8,67.8
    +Dungeon entrance: Shadowfang Keep. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 20-29
#name 22-24 Stonetalon/Barrens
#displayname 22-24 Stonetalon/Barrens
#next 24-27 Ashenvale
step
    .zone 1442 >>Travel to Stonetalon
    *How: The starter route ends in the Barrens/Stonetalon: fly to Sun Rock Retreat.
    *Level for this part: 22-24. 35 quests, roughly 5 h 45 min.
step
    #completewith next
    .goto 1442,45.12,59.84,15,0
    >>Talk to |cRXP_FRIENDLY_Tharm|r if you don't have this flight path yet
    .fp Tharm >>Get the flight path
    .target Tharm
step
    .goto 1442,47.2,61.16
    >>Talk to |cRXP_FRIENDLY_Maggran Earthbinder|r
    .accept 6282 >>Accept Harpies Threaten
    .accept 86576 >>Accept Bloodfury Trinkets
    .accept 5881 >>Accept Calling in the Reserves
    .target Maggran Earthbinder
step
    .goto 1442,45.94,60.42
    >>Talk to |cRXP_FRIENDLY_Braelyn Firehand|r
    .accept 1087 >>Accept Cenarius' Legacy
    .target Braelyn Firehand
step
    .goto 1442,47.46,58.38
    >>Talk to |cRXP_FRIENDLY_Tammra Windfield|r
    .accept 6301 >>Accept Cycle of Rebirth
    .target Tammra Windfield
step
    .goto 1442,47.22,64.04
    >>Talk to |cRXP_FRIENDLY_Mor'rogal|r
    .accept 6421 >>Accept Boulderslide Ravine
    .target Mor'rogal
step
    .goto 1442,47.36,64.25
    >>Talk to |cRXP_FRIENDLY_Tsunaman|r
    .accept 6393 >>Accept Elemental War
    .target Tsunaman
step
    .goto 1442,58.99,62.6
    >>Talk to |cRXP_FRIENDLY_Ziz Fizziks|r
    .accept 1096 >>Accept Gerenzo Wrenchwhistle
    .target Ziz Fizziks
step
    .goto 1442,71.87,60
    >>Talk to |cRXP_FRIENDLY_Piznik|r
    .accept 1092 >>Accept Gerenzo's Orders
    .target Piznik
step
    .goto 1442,58.99,62.6
    >>Talk to |cRXP_FRIENDLY_Ziz Fizziks|r
    .turnin 1092 >>Turn in Gerenzo's Orders
    .target Ziz Fizziks
step
    .goto 1442,64.49,40.25
    >>Collect |cRXP_LOOT_[Gerenzo's Mechanical Arm]|r from |cRXP_ENEMY_Gerenzo Wrenchwhistle|r
    *Bring Gerenzo Wrenchwhistle's Mechanical Arm to Ziz Fizziks in the Stonetalon Mountains.
    .complete 1096,1 --Gerenzo Wrenchwhistle
    .mob Gerenzo Wrenchwhistle
step
    .goto 1442,48.05,39.76
    >>Collect |cRXP_LOOT_[Gaea Seed]|r from |cRXP_PICK_Gaea Seed|r
    *Tammra Windfield at Sun Rock Retreat wants you to gather 10 Gaea Seeds.
    .complete 6301,1 --Cycle of Rebirth
step
    .goto 1442,47.46,58.38
    >>Talk to |cRXP_FRIENDLY_Tammra Windfield|r
    .turnin 6301 >>Turn in Cycle of Rebirth
    .accept 6381 >>Accept New Life
    .target Tammra Windfield
step
    .goto 1442,58.99,62.6
    >>Talk to |cRXP_FRIENDLY_Ziz Fizziks|r
    .turnin 1096 >>Turn in Gerenzo Wrenchwhistle
    .target Ziz Fizziks
step
    .goto 1442,33.66,67.02
    >>Kill |cRXP_ENEMY_Bloodfury Harpy|r. Kill |cRXP_ENEMY_Bloodfury Ambusher|r. Kill |cRXP_ENEMY_Bloodfury Slayer|r. Kill |cRXP_ENEMY_Bloodfury Roguefeather|r. Collect |cRXP_LOOT_[Glittering Sunstone]|r from |cRXP_ENEMY_Bloodfury Harpy|r, |cRXP_ENEMY_Bloodfury Roguefeather|r, |cRXP_ENEMY_Bloodfury Slayer|r. Collect |cRXP_LOOT_[Incendrites]|r from |cRXP_ENEMY_Rogue Flame Spirit|r, |cRXP_ENEMY_Burning Ravager|r, |cRXP_ENEMY_Burning Destroyer|r. Click |cRXP_PICK_Gaea Dirt Mound|r
    *Maggran Earthbinder in Sun Rock Retreat wants you to slay 7 Bloodfury Harpies, 7 Bloodfury Ambushers, 7 Bloodfury Slayers and 7 Bloodfury Roguefeathers.
    *Bring 15 Glittering Sunstones to Mor'rogal.
    *Bring 10 Incendrites to Tsunaman at Sun Rock Retreat.
    *Plant 10 Gaea Seeds in Gaea Dirt Mounds, and then return the remaining Enchanted Gaea Seeds to Tammra at Sun Rock Retreat.
    .complete 6282,1 --Harpies Threaten
    .complete 6282,2 --Harpies Threaten
    .complete 6282,3 --Harpies Threaten
    .complete 6282,4 --Harpies Threaten
    .complete 86576,1 --Bloodfury Trinkets
    .complete 6393,1 --Elemental War
    .complete 6381,1 --New Life
    .mob Bloodfury Harpy
    .mob Bloodfury Ambusher
    .mob Bloodfury Slayer
    .mob Bloodfury Roguefeather
    .mob Rogue Flame Spirit
    .mob Burning Ravager
step
    .goto 1442,47.22,64.04
    >>Talk to |cRXP_FRIENDLY_Mor'rogal|r
    .turnin 86576 >>Turn in Bloodfury Trinkets
    .target Mor'rogal
step
    .goto 1442,47.36,64.25
    >>Talk to |cRXP_FRIENDLY_Tsunaman|r
    .turnin 6393 >>Turn in Elemental War
    .target Tsunaman
step
    .goto 1442,47.2,61.16
    >>Talk to |cRXP_FRIENDLY_Maggran Earthbinder|r
    .turnin 6282 >>Turn in Harpies Threaten
    .accept 6283 >>Accept Bloodfury Bloodline
    .target Maggran Earthbinder
step
    .goto 1442,47.46,58.38
    >>Talk to |cRXP_FRIENDLY_Tammra Windfield|r
    .turnin 6381 >>Turn in New Life
    .target Tammra Windfield
step
    .goto 1442,30.75,61.91
    >>Collect |cRXP_LOOT_[Bloodfury Ripper's Remains]|r from |cRXP_ENEMY_Bloodfury Ripper|r
    *Maggran at Sun Rock Retreat wishes you to slay Bloodfury Ripper and bring her remains as proof of your deed.
    .complete 6283,1 --Bloodfury Bloodline
    .mob Bloodfury Ripper
step
    .goto 1442,47.2,61.16
    >>Talk to |cRXP_FRIENDLY_Maggran Earthbinder|r
    .turnin 6283 >>Turn in Bloodfury Bloodline
    .target Maggran Earthbinder
step
    .goto 1442,58.15,90.75
    >>Collect |cRXP_LOOT_[Resonite Crystal]|r from |cRXP_ENEMY_Gogger Rock Keeper|r, |cRXP_ENEMY_Gogger Geomancer|r, |cRXP_ENEMY_Gogger Stonepounder|r. Investigate Cave in Boulderslide Ravine
    *Explore deep into the cave at Boulderslide Ravine and bring back 10 Resonite Crystals for Mor'rogal at Sun Rock Retreat to investigate.
    .complete 6421,1 --Boulderslide Ravine
    .complete 6421,2 --Boulderslide Ravine
    .mob Gogger Rock Keeper
    .mob Gogger Geomancer
step
    .goto 1442,73.25,94.89
    >>Talk to |cRXP_FRIENDLY_Darn Talongrip|r
    .accept 6542 >>Accept Report to Kadrak
    .target Darn Talongrip
step
    .goto 1442,74.54,97.94
    >>Talk to |cRXP_FRIENDLY_Witch Doctor Jin'Zil|r
    .accept 1058 >>Accept Jin'Zil's Forest Magic
    .target Witch Doctor Jin'Zil
step
    .goto 1442,47.22,64.04
    >>Talk to |cRXP_FRIENDLY_Mor'rogal|r
    .turnin 6421 >>Turn in Boulderslide Ravine
    .target Mor'rogal
step
    .goto 1442,38.22,15.42
    >>Kill |cRXP_ENEMY_Son of Cenarius|r. Kill |cRXP_ENEMY_Daughter of Cenarius|r. Kill |cRXP_ENEMY_Cenarion Botanist|r. Collect |cRXP_LOOT_[Stonetalon Sap]|r from |cRXP_ENEMY_Sap Beast|r. Collect |cRXP_LOOT_[Twilight Whisker]|r from |cRXP_ENEMY_Twilight Runner|r. Collect |cRXP_LOOT_[Courser Eye]|r from |cRXP_ENEMY_Antlered Courser|r, |cRXP_ENEMY_Great Courser|r. Collect |cRXP_LOOT_[Fey Dragon Scale]|r from |cRXP_ENEMY_Fey Dragon|r, |cRXP_ENEMY_Wily Fey Dragon|r, |cRXP_ENEMY_Nal'taszar|r
    *Kill 4 Sons of Cenarius, 4 Daughters of Cenarius and 4 Cenarion Botanists for Braelyn Firehand near Sun Rock Retreat.
    *Witch Doctor Jin'Zil at Malaka'jin wants 5 portions of Stonetalon Sap, 5 Twilight Whiskers, 30 Courser Eyes and a Fey Dragon Scale.
    .complete 1087,1 --Cenarius' Legacy
    .complete 1087,2 --Cenarius' Legacy
    .complete 1087,3 --Cenarius' Legacy
    .complete 1058,1 --Jin'Zil's Forest Magic
    .complete 1058,2 --Jin'Zil's Forest Magic
    .complete 1058,3 --Jin'Zil's Forest Magic
    .complete 1058,4 --Jin'Zil's Forest Magic
    .mob Son of Cenarius
    .mob Daughter of Cenarius
    .mob Cenarion Botanist
    .mob Sap Beast
    .mob Twilight Runner
    .mob Antlered Courser
    .mob Great Courser
    .mob Fey Dragon
    .mob Wily Fey Dragon
step
    .goto 1442,45.94,60.42
    >>Talk to |cRXP_FRIENDLY_Braelyn Firehand|r
    .turnin 1087 >>Turn in Cenarius' Legacy
    .target Braelyn Firehand
step
    .goto 1442,74.54,97.94
    >>Talk to |cRXP_FRIENDLY_Witch Doctor Jin'Zil|r
    .turnin 1058 >>Turn in Jin'Zil's Forest Magic
    .target Witch Doctor Jin'Zil
step
    .goto 1441,31.86,21.66
    >>Talk to |cRXP_FRIENDLY_Grish Longrunner|r
    .turnin 5881 >>Turn in Calling in the Reserves
    .target Grish Longrunner
step
    .goto 1413,48.12,5.42
    >>Talk to |cRXP_FRIENDLY_Kadrak|r
    .turnin 6542 >>Turn in Report to Kadrak
    .accept 6543 >>Accept The Warsong Reports
    .target Kadrak
step
    >>Collect |cRXP_LOOT_[Warsong Scout Update]|r. Collect |cRXP_LOOT_[Warsong Runner Update]|r. Collect |cRXP_LOOT_[Warsong Outrider Update]|r
    *Open the Bundle of Reports. Take the Warsong Reports to the Warsong Scout, Warsong Runner, and Warsong Outrider. Bring back the updates they give you to Kadrak at the northern watch tower in the barrens.
    .complete 6543,1 --The Warsong Reports
    .complete 6543,2 --The Warsong Reports
    .complete 6543,3 --The Warsong Reports
step
    .goto 1413,48.12,5.42
    >>Talk to |cRXP_FRIENDLY_Kadrak|r
    .turnin 6543 >>Turn in The Warsong Reports
    .target Kadrak
step
    .goto 1413,49.05,11.17
    >>Talk to |cRXP_FRIENDLY_Wenikee Boltbucket|r
    .accept 3922 >>Accept Nugget Slugs
    .target Wenikee Boltbucket
step
    .goto 1413,55.9,6.83
    >>Collect |cRXP_LOOT_[Nugget Slug]|r from |cRXP_PICK_Tool Bucket|r
    *Bring 15 Nugget Slugs to Wenikee Boltbucket in the Barrens.
    .complete 3922,1 --Nugget Slugs
step
    .goto 1413,49.05,11.17
    >>Talk to |cRXP_FRIENDLY_Wenikee Boltbucket|r
    .turnin 3922 >>Turn in Nugget Slugs
    .accept 3923 >>Accept Rilli Greasygob
    .target Wenikee Boltbucket
step
    .goto 1413,51.07,29.63
    >>Talk to |cRXP_FRIENDLY_Korran|r
    .accept 868 >>Accept Egg Hunt
    .target Korran
step
    .goto 1413,52.26,31.93
    >>Talk to |cRXP_FRIENDLY_Tonga Runetotem|r
    .accept 3301 >>Accept Mura Runetotem
    .target Tonga Runetotem
step
    .goto 1413,62.29,39.03
    >>Talk to |cRXP_FRIENDLY_Captain Thalo'thas Brightsun|r
    .accept 891 >>Accept The Guns of Northwatch
    .target Captain Thalo'thas Brightsun
step
    .goto 1413,61.96,54.96
    >>Talk to |cRXP_FRIENDLY_Gilthares Firebough|r
    .accept 898 >>Accept Free From the Hold
    .target Gilthares Firebough
step
    .goto 1413,61.85,54.65
    >>Kill |cRXP_ENEMY_Captain Fairmount|r. Kill |cRXP_ENEMY_Cannoneer Whessan|r. Kill |cRXP_ENEMY_Cannoneer Smythe|r. Collect |cRXP_LOOT_[Theramore Medal]|r from |cRXP_ENEMY_Theramore Guard|r, |cRXP_ENEMY_Theramore Preserver|r, |cRXP_ENEMY_Captain Fairmount|r
    *Captain Thalo'thas Brightsun of Ratchet wants you to collect 10 Theramore Medals and slay Captain Fairmount, Cannoneer Whessan and Cannoneer Smythe.
    .complete 891,1 --The Guns of Northwatch
    .complete 891,2 --The Guns of Northwatch
    .complete 891,3 --The Guns of Northwatch
    .complete 891,4 --The Guns of Northwatch
    .mob Captain Fairmount
    .mob Cannoneer Whessan
    .mob Cannoneer Smythe
    .mob Theramore Guard
    .mob Theramore Preserver
step
    .goto 1413,62.29,39.03
    >>Talk to |cRXP_FRIENDLY_Captain Thalo'thas Brightsun|r
    .turnin 891 >>Turn in The Guns of Northwatch
    .turnin 898 >>Turn in Free From the Hold
    .target Captain Thalo'thas Brightsun
step
    .goto 1413,44.55,59.26
    >>Talk to |cRXP_FRIENDLY_Mangletooth|r
    .accept 879 >>Accept Betrayal from Within
    .target Mangletooth
step
    .goto 1413,45.1,57.68
    >>Talk to |cRXP_FRIENDLY_Tatternack Steelforge|r
    .accept 893 >>Accept Weapons of Choice
    .target Tatternack Steelforge
step
    .goto 1413,43.07,70.08
    >>Loot |cRXP_LOOT_[Harvester's Head]|r from |cRXP_ENEMY_Silithid Harvester|r, then click it to start the quest
    .accept 897 >>Accept The Harvester
    .use 5138
    .mob Silithid Harvester
step
    .goto 1413,44.9,72.55
    >>Collect |cRXP_LOOT_[Silithid Egg]|r from |cRXP_ENEMY_Silithid Creeper|r, |cRXP_ENEMY_Silithid Grub|r, |cRXP_ENEMY_Silithid Swarmer|r. Collect |cRXP_LOOT_[Kuz's Skull]|r from |cRXP_ENEMY_Kuz|r. Collect |cRXP_LOOT_[Razormane Backstabber]|r from |cRXP_ENEMY_Razormane Pathfinder|r, |cRXP_ENEMY_Razormane Stalker|r. Collect |cRXP_LOOT_[Razormane War Shield]|r from |cRXP_ENEMY_Razormane Warfrenzy|r
    *Bring 12 Silithid Eggs and the Digging Claw to Korran at the Crossroads.
    *Kill Nak, Kuz, and Lok Orcbane and bring their skulls to Mangletooth at Camp Taurajo in the Barrens.
    *Bring a Razormane Backstabber, a Charred Razormane Wand and a Razormane War Shield to Tatternack Steelforge at Camp Taurajo in the Barrens.
    .complete 868,1 --Egg Hunt
    .complete 879,1 --Betrayal from Within
    .complete 893,1 --Weapons of Choice
    .complete 893,3 --Weapons of Choice
    .mob Silithid Creeper
    .mob Silithid Grub
    .mob Kuz
    .mob Razormane Pathfinder
    .mob Razormane Stalker
    .mob Razormane Warfrenzy
step
    .goto 1413,46.36,73.9
    >>Click the |cRXP_PICK_Burned-Out Remains|r
    .accept 79007 >>Accept ... and that note you found
step
    .goto 1413,47.93,77.62
    >>Talk to |cRXP_FRIENDLY_Sulhasa|r
    .accept 98093 >>Accept Field to Clear
    .target Sulhasa
step
    .goto 1413,45.89,77
    >>Talk to |cRXP_FRIENDLY_Gann Stonespire|r
    .accept 843 >>Accept Gann's Reclamation
    .target Gann Stonespire
step
    .goto 1413,44.81,78.88
    >>Loot |cRXP_LOOT_[Washte Pawne's Feather]|r from |cRXP_ENEMY_Washte Pawne|r, then click it to start the quest
    .accept 885 >>Accept Washte Pawne
    .use 5103
    .mob Washte Pawne
step
    .goto 1413,45.42,75.98
    >>Collect |cRXP_LOOT_[Nak's Skull]|r from |cRXP_ENEMY_Nak|r. Collect |cRXP_LOOT_[Lok's Skull]|r from |cRXP_ENEMY_Lok Orcbane|r. Collect |cRXP_LOOT_[Charred Razormane Wand]|r from |cRXP_ENEMY_Razormane Seer|r. Kill |cRXP_ENEMY_Hecklefang Stalker|r. Kill |cRXP_ENEMY_Stormhide|r
    *Kill Nak, Kuz, and Lok Orcbane and bring their skulls to Mangletooth at Camp Taurajo in the Barrens.
    *Bring a Razormane Backstabber, a Charred Razormane Wand and a Razormane War Shield to Tatternack Steelforge at Camp Taurajo in the Barrens.
    *Sulhasa in southern Barrens wants you to clear out 7 Stormhide lizards and 7 Hecklefang Stalkers in the area so she can leave the tree safely.
    .complete 879,2 --Betrayal from Within
    .complete 879,3 --Betrayal from Within
    .complete 893,2 --Weapons of Choice
    .complete 98093,1 --Field to Clear
    .complete 98093,2 --Field to Clear
    .mob Nak
    .mob Lok Orcbane
    .mob Razormane Seer
    .mob Hecklefang Stalker
    .mob Stormhide
step
    .goto 1413,47.93,77.62
    >>Talk to |cRXP_FRIENDLY_Sulhasa|r
    .turnin 98093 >>Turn in Field to Clear
    .target Sulhasa
step
    .goto 1413,48.42,86.01
    >>Kill |cRXP_ENEMY_Bael'dun Excavator|r. Kill |cRXP_ENEMY_Bael'dun Foreman|r. Collect |cRXP_LOOT_[Khazgorm's Journal]|r from |cRXP_ENEMY_Prospector Khazgorm|r
    *Gann Stonespire wants you to kill 15 Bael'dun Excavators and 5 Bael'dun Foremen.
    .complete 843,1 --Gann's Reclamation
    .complete 843,2 --Gann's Reclamation
    .complete 843,3 --Gann's Reclamation
    .mob Bael'dun Excavator
    .mob Bael'dun Foreman
    .mob Prospector Khazgorm
step
    .goto 1413,45.89,77
    >>Talk to |cRXP_FRIENDLY_Gann Stonespire|r
    .turnin 843 >>Turn in Gann's Reclamation
    .accept 846 >>Accept Revenge of Gann
    .target Gann Stonespire
step
    .goto 1413,49.43,83.94
    >>Collect |cRXP_LOOT_[Nitroglycerin]|r from |cRXP_ENEMY_Bael'dun Soldier|r, |cRXP_ENEMY_Bael'dun Rifleman|r, |cRXP_ENEMY_Bael'dun Officer|r. Collect |cRXP_LOOT_[Wood Pulp]|r from |cRXP_ENEMY_Bael'dun Soldier|r, |cRXP_ENEMY_Bael'dun Rifleman|r, |cRXP_ENEMY_Bael'dun Officer|r. Collect |cRXP_LOOT_[Sodium Nitrate]|r from |cRXP_ENEMY_Bael'dun Soldier|r, |cRXP_ENEMY_Bael'dun Rifleman|r, |cRXP_ENEMY_Bael'dun Officer|r
    *Gann Stonespire wants you to bring him 6 vials of Nitroglycerin, 6 bundles of Wood Pulp, and 6 samples of Sodium Nitrate.
    .complete 846,1 --Revenge of Gann
    .complete 846,2 --Revenge of Gann
    .complete 846,3 --Revenge of Gann
    .mob Bael'dun Soldier
    .mob Bael'dun Rifleman
step
    .goto 1413,45.89,77
    >>Talk to |cRXP_FRIENDLY_Gann Stonespire|r
    .turnin 846 >>Turn in Revenge of Gann
    .accept 849 >>Accept Revenge of Gann
    .target Gann Stonespire
step
    .goto 1413,46.97,85.63
    >>Click |cRXP_PICK_Bael Modan Flying Machine|r
    *Destroy the flying machine at Bael Modan and return to Gann Stonespire.
    .complete 849,1 --Revenge of Gann
step
    .goto 1413,45.89,77
    >>Talk to |cRXP_FRIENDLY_Gann Stonespire|r
    .turnin 849 >>Turn in Revenge of Gann
    .target Gann Stonespire
step
    .goto 1413,44.55,59.26
    >>Talk to |cRXP_FRIENDLY_Mangletooth|r
    .turnin 879 >>Turn in Betrayal from Within
    .target Mangletooth
step
    .goto 1413,45.1,57.68
    >>Talk to |cRXP_FRIENDLY_Tatternack Steelforge|r
    .turnin 893 >>Turn in Weapons of Choice
    .target Tatternack Steelforge
step
    .goto 1413,44.86,59.14
    >>Talk to |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 897 >>Turn in The Harvester
    .turnin 885 >>Turn in Washte Pawne
    .target Jorn Skyseer
step
    .goto 1413,44.55,59.26
    >>Talk to |cRXP_FRIENDLY_Mangletooth|r
    .accept 906 >>Accept Betrayal from Within
    .target Mangletooth
step
    .goto 1413,51.07,29.63
    >>Talk to |cRXP_FRIENDLY_Korran|r
    .turnin 868 >>Turn in Egg Hunt
    .target Korran
step
    .goto 1413,51.5,30.87
    >>Talk to |cRXP_FRIENDLY_Thork|r
    .turnin 906 >>Turn in Betrayal from Within
    .target Thork
step
    .goto 1413,35.26,27.88
    >>Talk to |cRXP_FRIENDLY_Seereth Stonebreak|r
    .accept 1068 >>Accept Shredding Machines
    .target Seereth Stonebreak
step
    .goto 1454,76.52,24.41
    >>Talk to |cRXP_FRIENDLY_Rilli Greasygob|r
    .turnin 3923 >>Turn in Rilli Greasygob
    .accept 3924 >>Accept Samophlange Manual
    .target Rilli Greasygob
step
    >>Collect |cRXP_LOOT_[Samophlange Manual]|r
    *Bring the Samophlange Manual to Rilli Greasygob in Orgrimmar.
    .complete 3924,1 --Samophlange Manual
step
    .goto 1454,76.52,24.41
    >>Talk to |cRXP_FRIENDLY_Rilli Greasygob|r
    .turnin 3924 >>Turn in Samophlange Manual
    .target Rilli Greasygob
step
    .goto 1421,42.91,41.99
    >>Talk to |cRXP_FRIENDLY_Mura Runetotem|r
    .turnin 3301 >>Turn in Mura Runetotem
    .target Mura Runetotem
step
    .goto 1436,37.41,50.7
    >>Click the |cRXP_PICK_Burned-Out Remains|r
    .turnin 79007 >>Turn in ... and that note you found
step
    .goto 1456,54.14,47.05
    >>Talk to |cRXP_FRIENDLY_Tah Winterhoof|r
    .accept 97538 >>Accept Pigments for Paints
    .target Tah Winterhoof
step
    .goto 1413,46.39,73.82
    >>Click the |cRXP_PICK_Nailed Plank|r
    .accept 79192 >>Accept Stepping Stones
step
    .goto 1442,40.75,52.57
    >>Click the |cRXP_PICK_Pocket Litter|r
    .turnin 79192 >>Turn in Stepping Stones
    .accept 79980 >>Accept Scramble
step
    .goto 1442,39.62,49.82
    >>Click the |cRXP_PICK_Mound of Dirt|r
    .turnin 79980 >>Turn in Scramble
step
    .goto 1442,47,40.59
    >>Collect |cRXP_LOOT_[Mirkweed Pods]|r from |cRXP_PICK_Mirkweed|r, |cRXP_PICK_Dried Mirkweed Pile|r
    *Tah Winterhoof in Thunder Bluff wants 30 Mirkweed Pods from Mirkfallon Lake.
    .complete 97538,1 --Pigments for Paints
step
    .goto 1442,64.14,46.38
    >>Kill |cRXP_ENEMY_XT:4|r
    *Kill the shredders XT:4 and XT:9, then return to Seereth Stonebreak at the border of the Stonetalon Mountains and the Barrens.
    .complete 1068,1 --Shredding Machines
    .mob XT:4
step
    .goto 1442,64.09,56.62
    >>Kill |cRXP_ENEMY_XT:9|r
    *Kill the shredders XT:4 and XT:9, then return to Seereth Stonebreak at the border of the Stonetalon Mountains and the Barrens.
    .complete 1068,2 --Shredding Machines
    .mob XT:9
step
    .goto 1413,35.26,27.88
    >>Talk to |cRXP_FRIENDLY_Seereth Stonebreak|r
    .turnin 1068 >>Turn in Shredding Machines
    .target Seereth Stonebreak
step
    .goto 1456,54.14,47.05
    >>Talk to |cRXP_FRIENDLY_Tah Winterhoof|r
    .turnin 97538 >>Turn in Pigments for Paints
    .target Tah Winterhoof
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 20-29
#name 24-27 Ashenvale
#displayname 24-27 Ashenvale
#next 24-32 Blackfathom Deeps
step
    .zone 1440 >>Travel to Ashenvale
    *How: Fly to Splintertree Post.
    *Level for this part: 24-27. 18 quests, roughly 2 h 20 min.
step
    #completewith next
    .goto 1440,12.24,33.8,15,0
    >>Talk to |cRXP_FRIENDLY_Andruk|r if you don't have this flight path yet
    .fp Andruk >>Get the flight path
    .target Andruk
step
    .goto 1440,11.65,34.85
    >>Talk to |cRXP_FRIENDLY_Mitsuwa|r
    .accept 6462 >>Accept Troll Charm
    .target Mitsuwa
step
    .goto 1440,11.9,34.54
    >>Talk to |cRXP_FRIENDLY_Karang Amakkar|r
    .accept 216 >>Accept Between a Rock and a Thistlefur
    .target Karang Amakkar
step
    .goto 1440,36.71,36.96
    >>Collect |cRXP_LOOT_[Troll Charm]|r from |cRXP_PICK_Troll Chest|r. Kill |cRXP_ENEMY_Thistlefur Avenger|r. Kill |cRXP_ENEMY_Thistlefur Shaman|r
    *Bring 8 Troll Charms to Mitsuwa at the Zoram'gar Outpost.
    *Take down 8 Thistlefur Avengers and 8 Thistlefur Shaman; most are located east of Zoram Strand in Thistlefur Village. Once completed, return to Karang Amakkar at Zoram'gar Outpost, Ashenvale.
    .complete 6462,1 --Troll Charm
    .complete 216,1 --Between a Rock and a Thistlefur
    .complete 216,2 --Between a Rock and a Thistlefur
    .mob Thistlefur Avenger
    .mob Thistlefur Shaman
step
    .goto 1440,41.53,34.49
    >>Talk to |cRXP_FRIENDLY_Ruul Snowhoof|r
    .accept 6482 >>Accept Freedom to Ruul
    .target Ruul Snowhoof
step
    .goto 1440,57.5,56.05
    >>Loot |cRXP_LOOT_[Shadumbra's Head]|r from |cRXP_ENEMY_Shadumbra|r, then click it to start the quest
    .accept 24 >>Accept Shadumbra's Head
    .use 16304
    .mob Shadumbra
step
    .goto 1440,74.11,60.92
    >>Talk to |cRXP_FRIENDLY_Yama Snowhoof|r
    .turnin 6482 >>Turn in Freedom to Ruul
    .target Yama Snowhoof
step
    .goto 1440,73.78,61.46
    >>Talk to |cRXP_FRIENDLY_Senani Thunderheart|r
    .turnin 24 >>Turn in Shadumbra's Head
    .target Senani Thunderheart
step
    .goto 1440,73.67,60
    >>Talk to |cRXP_FRIENDLY_Mastok Wrilehiss|r
    .accept 25 >>Accept Stonetalon Standstill
    .target Mastok Wrilehiss
step
    .goto 1440,73.06,61.48
    >>Talk to |cRXP_FRIENDLY_Pixel|r
    .accept 6441 >>Accept Satyr Horns
    .target Pixel
step
    .goto 1440,71.11,68.12
    >>Talk to |cRXP_FRIENDLY_Kuray'bin|r
    .accept 6503 >>Accept Ashenvale Outrunners
    .target Kuray'bin
step
    .goto 1440,71.4,67.63
    >>Talk to |cRXP_FRIENDLY_Locke Okarr|r
    .accept 6571 >>Accept Warsong Supplies
    .target Locke Okarr
step
    .goto 1440,71.4,67.63
    >>Kill |cRXP_ENEMY_Ashenvale Outrunner|r. Collect |cRXP_LOOT_[Warsong Saw Blades]|r
    *Kill 9 Ashenvale Outrunners, then return to Kuray'bin at Splintertree Outpost.
    *Collect the Warsong Supplies: Warsong Saw Blades, Logging Rope, Warsong Oil, and the Warsong Axe Shipment for Locke Okarr in Splintertree Post.
    .complete 6503,1 --Ashenvale Outrunners
    .complete 6571,1 --Warsong Supplies
    .mob Ashenvale Outrunner
step
    .goto 1440,71.11,68.12
    >>Talk to |cRXP_FRIENDLY_Kuray'bin|r
    .turnin 6503 >>Turn in Ashenvale Outrunners
    .target Kuray'bin
step
    .goto 1440,70.01,71.16
    >>Talk to |cRXP_FRIENDLY_Gurda Ragescar|r
    .accept 6504 >>Accept The Lost Pages
    .target Gurda Ragescar
step
    >>Collect |cRXP_LOOT_[Shredder Operating Manual - Chapter 1]|r. Collect |cRXP_LOOT_[Shredder Operating Manual - Chapter 2]|r. Collect |cRXP_LOOT_[Shredder Operating Manual - Chapter 3]|r
    *Find the 12 missing pages of the Shredder Operating Manual, and put them together to form Chapters 1, 2, and 3. Return the pages to Gurda Ragescar near Splintertree Post.
    .complete 6504,1 --The Lost Pages
    .complete 6504,2 --The Lost Pages
    .complete 6504,3 --The Lost Pages
step
    .goto 1440,70.01,71.16
    >>Talk to |cRXP_FRIENDLY_Gurda Ragescar|r
    .turnin 6504 >>Turn in The Lost Pages
    .target Gurda Ragescar
step
    .goto 1440,74.98,70.06
    >>Loot |cRXP_LOOT_[Sharptalon's Claw]|r from |cRXP_ENEMY_Sharptalon|r, then click it to start the quest
    .accept 2 >>Accept Sharptalon's Claw
    .use 16305
    .mob Sharptalon
step
    .goto 1440,73.78,61.46
    >>Talk to |cRXP_FRIENDLY_Senani Thunderheart|r
    .turnin 2 >>Turn in Sharptalon's Claw
    .target Senani Thunderheart
step
    .goto 1440,78.42,47.48
    >>Collect |cRXP_LOOT_[Satyr Horns]|r from |cRXP_ENEMY_Bleakheart Trickster|r, |cRXP_ENEMY_Xavian Betrayer|r, |cRXP_ENEMY_Xavian Felsworn|r
    *Collect 16 Satyr Horns for Pixel in Splintertree Post.
    .complete 6441,1 --Satyr Horns
    .mob Bleakheart Trickster
    .mob Xavian Betrayer
step
    .goto 1440,73.06,61.48
    >>Talk to |cRXP_FRIENDLY_Pixel|r
    .turnin 6441 >>Turn in Satyr Horns
    .target Pixel
step
    .goto 1440,48.35,72.76
    >>Kill |cRXP_ENEMY_Befouled Water Elemental|r. Scout the gazebo on Mystral Lake that overlooks the nearby Alliance outpost.
    *Dispatch 12 Befouled Water Elementals at Mystral Lake, due east of the Talondeep Path and southwest of Splintertree Post.
    .complete 25,1 --Stonetalon Standstill
    .complete 25,2 --Stonetalon Standstill
    .mob Befouled Water Elemental
step
    .goto 1440,45.88,70.62
    >>Loot |cRXP_LOOT_[Befouled Water Globe]|r from |cRXP_ENEMY_Tideress|r, then click it to start the quest
    .accept 1918 >>Accept The Befouled Element
    .use 16408
    .mob Tideress
step
    .goto 1440,42,69.2
    >>Talk to |cRXP_FRIENDLY_Alonso|r
    .accept 78132 >>Accept Dragonslayer's Helm
    .accept 78133 >>Accept Dragonslayer's Shield
    .accept 78134 >>Accept Dragonslayer's Lance
    .target Alonso
step
    >>Collect |cRXP_LOOT_[Dragonslayer's Helm]|r from |cRXP_PICK_Discarded Helm|r. Collect |cRXP_LOOT_[Dragonslayer's Shield]|r from |cRXP_PICK_Wall-Mounted Shield|r. Collect |cRXP_LOOT_[Dragonslayer's Lance]|r
    .complete 78132,1 --Dragonslayer's Helm
    .complete 78133,1 --Dragonslayer's Shield
    .complete 78134,1 --Dragonslayer's Lance
step
    .goto 1440,42,69.2
    >>Talk to |cRXP_FRIENDLY_Alonso|r
    .turnin 78132 >>Turn in Dragonslayer's Helm
    .turnin 78133 >>Turn in Dragonslayer's Shield
    .turnin 78134 >>Turn in Dragonslayer's Lance
    .target Alonso
step
    .goto 1440,39.76,65.21
    >>Loot |cRXP_LOOT_[Ursangous's Paw]|r from |cRXP_ENEMY_Ursangous|r, then click it to start the quest
    .accept 23 >>Accept Ursangous's Paw
    .use 16303
    .mob Ursangous
step
    .goto 1440,73.67,60
    >>Talk to |cRXP_FRIENDLY_Mastok Wrilehiss|r
    .turnin 25 >>Turn in Stonetalon Standstill
    .turnin 1918 >>Turn in The Befouled Element
    .target Mastok Wrilehiss
step
    .goto 1440,73.78,61.46
    >>Talk to |cRXP_FRIENDLY_Senani Thunderheart|r
    .turnin 23 >>Turn in Ursangous's Paw
    .accept 247 >>Accept The Hunt Completed
    .target Senani Thunderheart
step
    .goto 1440,73.67,60
    >>Talk to |cRXP_FRIENDLY_Mastok Wrilehiss|r
    .accept 824 >>Accept Je'neu of the Earthen Ring
    .target Mastok Wrilehiss
step
    .goto 1440,73.78,61.46
    >>Talk to |cRXP_FRIENDLY_Senani Thunderheart|r
    .turnin 247 >>Turn in The Hunt Completed
    .target Senani Thunderheart
step
    .goto 1440,11.65,34.85
    >>Talk to |cRXP_FRIENDLY_Mitsuwa|r
    .turnin 6462 >>Turn in Troll Charm
    .target Mitsuwa
step
    .goto 1440,11.9,34.54
    >>Talk to |cRXP_FRIENDLY_Karang Amakkar|r
    .turnin 216 >>Turn in Between a Rock and a Thistlefur
    .target Karang Amakkar
step
    .goto 1440,11.56,34.29
    >>Talk to |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 824 >>Turn in Je'neu of the Earthen Ring
    .target Je'neu Sancrea
step
    .goto 1440,11.9,34.54
    >>Talk to |cRXP_FRIENDLY_Karang Amakkar|r
    .accept 6621 >>Accept King of the Foulweald
    .target Karang Amakkar
step
    >>Collect |cRXP_LOOT_[Murgut's Totem]|r from |cRXP_PICK_Murgut's Totem Basket|r
    *Place Karang's Banner on the Foulweald Totem Mound. Do not let the furbolgs destroy the banner. Defeat Chief Murgut and bring Murgut's Totem to Karang Amakkar at Zoram'gar.
    .complete 6621,1 --King of the Foulweald
step
    .goto 1440,11.9,34.54
    >>Talk to |cRXP_FRIENDLY_Karang Amakkar|r
    .turnin 6621 >>Turn in King of the Foulweald
    .target Karang Amakkar
step
    .goto 1434,26.43,73.3
    >>Collect |cRXP_LOOT_[Warsong Axe Shipment]|r from |cRXP_PICK_Warsong Axe Shipment|r
    *Collect the Warsong Supplies: Warsong Saw Blades, Logging Rope, Warsong Oil, and the Warsong Axe Shipment for Locke Okarr in Splintertree Post.
    .complete 6571,2 --Warsong Supplies
step
    .goto 1440,66.85,57.14
    >>Collect |cRXP_LOOT_[Warsong Oil]|r from |cRXP_PICK_Warsong Oil|r
    *Collect the Warsong Supplies: Warsong Saw Blades, Logging Rope, Warsong Oil, and the Warsong Axe Shipment for Locke Okarr in Splintertree Post.
    .complete 6571,3 --Warsong Supplies
step
    .goto 1440,37.89,35.44
    >>Collect |cRXP_LOOT_[Logging Rope]|r from |cRXP_ENEMY_Drakonid|r, |cRXP_ENEMY_Furbolg Form|r, |cRXP_ENEMY_Ghoul|r
    *Collect the Warsong Supplies: Warsong Saw Blades, Logging Rope, Warsong Oil, and the Warsong Axe Shipment for Locke Okarr in Splintertree Post.
    .complete 6571,4 --Warsong Supplies
    .mob Drakonid
    .mob Furbolg Form
step
    .goto 1440,71.4,67.63
    >>Talk to |cRXP_FRIENDLY_Locke Okarr|r
    .turnin 6571 >>Turn in Warsong Supplies
    .target Locke Okarr
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 20-29
#name 24-32 Blackfathom Deeps
#displayname 24-32 Blackfathom Deeps
#next 26-31 Excavation Site: Wetlands
step
    +|cRXP_WARN_Blackfathom Deeps|r (levels 24-32). Pick up 6 dungeon quests solo (roughly 15 min with the hand-ins), then ONE run with a group (roughly 1 h 40 min). No group needed until the run step. Click to start.
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1440,11.56,34.29
    >>Talk to |cRXP_FRIENDLY_Je'neu Sancrea|r
    .accept 6563 >>Accept The Essence of Aku'Mai
    .accept 6921 >>Accept Amongst the Ruins
    .target Je'neu Sancrea
step
    .goto 1440,13.04,13.12
    >>Loot |cRXP_LOOT_[Damp Note]|r from |cRXP_ENEMY_Blackfathom Tide Priestess|r, then click it to start the quest
    .accept 6564 >>Accept Allegiance to the Old Gods
    .use 16790
    .mob Blackfathom Tide Priestess
step
    .goto 1440,13.59,13.14
    >>Collect |cRXP_LOOT_[Sapphire of Aku'Mai]|r from |cRXP_PICK_Sapphire of Aku'Mai|r, |cRXP_PICK_Sapphire of Aku'Mai|r
    *Bring 20 Sapphires of Aku'Mai to Je'neu Sancrea in Ashenvale.
    .complete 6563,1 --The Essence of Aku'Mai
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in.|r
step
    .goto 1440,14.5,14.2
    >>Inside Blackfathom Deeps: these quests start from a drop or an object in the dungeon
    .accept 6561 >>Accept Blackfathom Villainy
    .accept 78917 >>Accept The Heart of the Void
step
    .goto 1440,14.5,14.2
    >>Enter |cRXP_WARN_Blackfathom Deeps|r with your group. Quest goals inside:
    *Blackfathom Villainy: Bring the head of Twilight Lord Kelris to Bashana Runetotem in Thunder Bluff.
    *Amongst the Ruins: Bring the Fathom Core to Je'neu Sancrea at Zoram'gar Outpost, Ashenvale.
    .complete 6561,1 --Blackfathom Villainy
    .complete 6921,1 --Amongst the Ruins
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1440,11.56,34.29
    >>Talk to |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6563 >>Turn in The Essence of Aku'Mai
    .turnin 6564 >>Turn in Allegiance to the Old Gods
    .turnin 6921 >>Turn in Amongst the Ruins
    .target Je'neu Sancrea
step
    .goto 1456,71.06,34.19
    >>Talk to |cRXP_FRIENDLY_Bashana Runetotem|r
    .turnin 6561 >>Turn in Blackfathom Villainy
    .turnin 78917 >>Turn in The Heart of the Void
    .target Bashana Runetotem
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1440,11.56,34.29
    >>Talk to |cRXP_FRIENDLY_Je'neu Sancrea|r
    .accept 6565 >>Accept Allegiance to the Old Gods
    .target Je'neu Sancrea
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in. (run 2)|r
step
    .goto 1440,14.5,14.2
    >>Enter |cRXP_WARN_Blackfathom Deeps|r with your group. Quest goals inside:
    *Allegiance to the Old Gods: Kill Lorgus Jett in Blackfathom Deeps and then return to Je'neu Sancrea in Ashenvale.
    .complete 6565,1 --Allegiance to the Old Gods
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1440,11.56,34.29
    >>Talk to |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6565 >>Turn in Allegiance to the Old Gods
    .target Je'neu Sancrea
step
    .goto 1440,14.5,14.2
    +Dungeon entrance: Blackfathom Deeps. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 20-29
#name 26-31 Excavation Site: Wetlands
#displayname 26-31 Excavation Site: Wetlands
#next 27-30 Thousand Needles
step
    +|cRXP_WARN_Excavation Site: Wetlands|r (levels 26-31). Pick up 5 dungeon quests solo (roughly 1 h 10 min with the hand-ins), then ONE run with a group (roughly 1 h 40 min). No group needed until the run step. Click to start.
    *New Forever dungeon above Whelgar's Excavation. Take the winding path up left of Thelgen Rock to the meeting stone.
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1417,74.54,35.64
    >>Talk to |cRXP_FRIENDLY_Zaruk|r
    .accept 95663 >>Accept Dragonmaw Rumors
    .target Zaruk
step
    .goto 1454,57.2,53.32
    >>Talk to |cRXP_FRIENDLY_Borstan|r
    .accept 95697 >>Accept Changing Tastes
    .target Borstan
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in.|r
step
    .goto 1437,48.1,56.5
    >>Loot |cRXP_LOOT_[Titan Relic]|r from |cRXP_ENEMY_Relic Guardian|r, then click it to start the quest
    .accept 95664 >>Accept Elder Knowledge
    .use 270866
    .mob Relic Guardian
step
    .goto 1437,48.1,56.5
    >>Enter |cRXP_WARN_Excavation Site: Wetlands|r with your group. Quest goals inside:
    *Elder Knowledge: Take the Titan Relic to the Elder Rise in Thunder Bluff and look for someone who can tell you more about it.
    *Changing Tastes: Enter the Excavation Sites in the Wetlands and bring back Thicket Raptor Meat.
    .complete 95664,1 --Elder Knowledge
    .complete 95697,1 --Changing Tastes
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1437,51.48,59.3
    >>Talk to |cRXP_FRIENDLY_Deathstalker Agent|r
    .turnin 95663 >>Turn in Dragonmaw Rumors
    .target Deathstalker Agent
step
    .goto 1456,71.06,34.19
    >>Talk to |cRXP_FRIENDLY_Bashana Runetotem|r
    .turnin 95664 >>Turn in Elder Knowledge
    .target Bashana Runetotem
step
    .goto 1454,57.2,53.32
    >>Talk to |cRXP_FRIENDLY_Borstan|r
    .turnin 95697 >>Turn in Changing Tastes
    .target Borstan
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1437,51.48,59.3
    >>Talk to |cRXP_FRIENDLY_Deathstalker Agent|r
    .accept 95682 >>Accept Open the Maw
    .target Deathstalker Agent
step
    .goto 1456,71.06,34.19
    >>Talk to |cRXP_FRIENDLY_Bashana Runetotem|r
    .accept 98823 >>Accept Earthen Echo
    .target Bashana Runetotem
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in. (run 2)|r
step
    .goto 1437,48.1,56.5
    >>Enter |cRXP_WARN_Excavation Site: Wetlands|r with your group. Quest goals inside:
    *Open the Maw: Slay the Dragonmaw forces within the Excavation Site and return to the Deathstalker Agent outside with anything you recover.
    .complete 95682,1 --Open the Maw
    .complete 95682,2 --Open the Maw
    .complete 95682,3 --Open the Maw
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1437,51.48,59.3
    >>Talk to |cRXP_FRIENDLY_Deathstalker Agent|r
    .turnin 95682 >>Turn in Open the Maw
    .target Deathstalker Agent
step
    .goto 1412,33.41,22.59
    >>Talk to |cRXP_FRIENDLY_Muln Earthfury|r
    .turnin 98823 >>Turn in Earthen Echo
    .target Muln Earthfury
step
    .goto 1437,48.1,56.5
    +Dungeon entrance: Excavation Site: Wetlands. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 20-29
#name 27-30 Thousand Needles
#displayname 27-30 Thousand Needles
#next 29-38 Razorfen Kraul
step
    .zone 1441 >>Travel to Thousand Needles
    *How: Fly to Freewind Post.
    *Level for this part: 27-30. 25 quests, roughly 3 h 5 min.
step
    #completewith next
    .goto 1441,45.14,49.11,15,0
    >>Talk to |cRXP_FRIENDLY_Nyse|r if you don't have this flight path yet
    .fp Nyse >>Get the flight path
    .target Nyse
step
    .goto 1441,44.64,50.29
    >>Talk to |cRXP_FRIENDLY_Hagar Lightninghoof|r
    .accept 4821 >>Accept Alien Egg
    .target Hagar Lightninghoof
step
    .goto 1441,46,50.86
    >>Click the |cRXP_PICK_Wanted Poster - Arnak Grimtotem|r
    .accept 5147 >>Accept WANTED: Arnak Grimtotem
step
    .goto 1441,44.93,48.92
    >>Talk to |cRXP_FRIENDLY_Elu|r
    .accept 4767 >>Accept Wind Rider
    .target Elu
step
    .goto 1441,46.21,51.51
    >>Talk to |cRXP_FRIENDLY_Jandia|r
    .accept 98069 >>Accept Stolen Freewind Supplies
    .accept 98070 >>Accept Stop the Screeching
    .target Jandia
step
    .goto 1441,56.36,50.39
    >>Collect |cRXP_LOOT_[Alien Egg]|r from |cRXP_PICK_Alien Egg|r
    *Return the Alien Egg to Hagar Lightninghoof in Freewind Post.
    .complete 4821,1 --Alien Egg
step
    .goto 1441,53.95,41.49
    >>Talk to |cRXP_FRIENDLY_Dorn Plainstalker|r
    .accept 1149 >>Accept Test of Faith
    .target Dorn Plainstalker
step
    .goto 1441,44.64,50.29
    >>Talk to |cRXP_FRIENDLY_Hagar Lightninghoof|r
    .turnin 4821 >>Turn in Alien Egg
    .accept 4865 >>Accept Serpent Wild
    .target Hagar Lightninghoof
step
    .goto 1441,39.43,33.1
    >>Loot |cRXP_LOOT_[Assassination Note]|r from |cRXP_ENEMY_Galak Messenger|r, then click it to start the quest
    .accept 4881 >>Accept Assassination Plot
    .use 12564
    .mob Galak Messenger
step
    .goto 1441,37.95,26.45
    >>Talk to |cRXP_FRIENDLY_Lakota Windsong|r
    .accept 4904 >>Accept Free at Last
    .target Lakota Windsong
step
    .goto 1441,38.11,26.87
    >>Collect |cRXP_LOOT_[Arnak's Hoof]|r from |cRXP_ENEMY_Arnak Grimtotem|r
    *Slay Arnak Grimtotem and bring proof of your deed to Cliffwatcher Longhorn in Freewind Post.
    .complete 5147,1 --WANTED: Arnak Grimtotem
    .mob Arnak Grimtotem
step
    .goto 1441,32.24,22.17
    >>Talk to |cRXP_FRIENDLY_Brave Moonhorn|r
    .accept 4542 >>Accept Message to Freewind Post
    .target Brave Moonhorn
step
    .goto 1441,26.43,32.93
    >>If you have faith, leap from the planks overlooking Thousand Needles.
    *If you have faith, leap from the planks overlooking Thousand Needles.
    .complete 1149,1 --Test of Faith
step
    .goto 1441,21.54,32.35
    >>Talk to |cRXP_FRIENDLY_Motega Firemane|r
    .turnin 4865 >>Turn in Serpent Wild
    .target Motega Firemane
step
    .goto 1441,21.25,32.06
    >>Talk to |cRXP_FRIENDLY_Kanati Greycloud|r
    .turnin 4881 >>Turn in Assassination Plot
    .target Kanati Greycloud
step
    .goto 1441,21.54,32.35
    >>Talk to |cRXP_FRIENDLY_Motega Firemane|r
    .accept 5062 >>Accept Sacred Fire
    .target Motega Firemane
step
    .goto 1441,21.43,32.55
    >>Talk to |cRXP_FRIENDLY_Wizlo Bearingshiner|r
    .accept 5151 >>Accept Hypercapacitor Gizmo
    .target Wizlo Bearingshiner
step
    .goto 1441,21.25,32.06
    >>Talk to |cRXP_FRIENDLY_Kanati Greycloud|r
    .accept 4966 >>Accept Protect Kanati Greycloud
    .target Kanati Greycloud
step
    .goto 1441,21.25,32.06
    >>Talk to |cRXP_FRIENDLY_Kanati Greycloud|r
    .turnin 4966 >>Turn in Protect Kanati Greycloud
    .target Kanati Greycloud
step
    .goto 1441,22.76,24.62
    >>Collect |cRXP_LOOT_[Hypercapacitor Gizmo]|r from |cRXP_ENEMY_Enraged Panther|r
    *Slay the beast and bring back the Hypercapacitor Gizmo and Panther Cage Key to Wizlo Bearingshiner.
    .complete 5151,1 --Hypercapacitor Gizmo
    .mob Enraged Panther
step
    .goto 1441,21.43,32.55
    >>Talk to |cRXP_FRIENDLY_Wizlo Bearingshiner|r
    .turnin 5151 >>Turn in Hypercapacitor Gizmo
    .target Wizlo Bearingshiner
step
    .goto 1441,17.89,40.57
    >>Talk to |cRXP_FRIENDLY_Pao'ka Swiftmountain|r
    .accept 4770 >>Accept Homeward Bound
    .target Pao'ka Swiftmountain
step
    .goto 1441,12.56,37.37
    >>Collect |cRXP_LOOT_[Highperch Wyvern Egg]|r from |cRXP_PICK_Highperch Wyvern Egg|r
    *Bring 10 Highperch Wyvern Eggs to Elu in Freewind Post.
    .complete 4767,1 --Wind Rider
step
    .goto 1441,21.54,32.35
    >>Talk to |cRXP_FRIENDLY_Motega Firemane|r
    .turnin 4770 >>Turn in Homeward Bound
    .target Motega Firemane
step
    .goto 1441,36.05,37.41
    >>Collect |cRXP_LOOT_[Incendia Agave]|r from |cRXP_PICK_Incendia Agave|r
    *Gather 10 bushels of Incendia Agave, and then consult Magatha Grimtotem on Elder Rise in Thunderbluff.
    .complete 5062,1 --Sacred Fire
step
    .goto 1441,45.67,50.74
    >>Talk to |cRXP_FRIENDLY_Cliffwatcher Longhorn|r
    .turnin 5147 >>Turn in WANTED: Arnak Grimtotem
    .turnin 4542 >>Turn in Message to Freewind Post
    .target Cliffwatcher Longhorn
step
    .goto 1441,44.93,48.92
    >>Talk to |cRXP_FRIENDLY_Elu|r
    .turnin 4767 >>Turn in Wind Rider
    .target Elu
step
    .goto 1441,45.97,51.61
    >>Talk to |cRXP_FRIENDLY_Thalia Amberhide|r
    .turnin 4904 >>Turn in Free at Last
    .target Thalia Amberhide
step
    .goto 1441,45.67,50.74
    >>Talk to |cRXP_FRIENDLY_Cliffwatcher Longhorn|r
    .accept 4841 >>Accept Pacify the Centaur
    .target Cliffwatcher Longhorn
step
    .goto 1441,53.95,41.49
    >>Talk to |cRXP_FRIENDLY_Dorn Plainstalker|r
    .turnin 1149 >>Turn in Test of Faith
    .accept 1150 >>Accept Test of Endurance
    .target Dorn Plainstalker
step
    >>Collect |cRXP_LOOT_[Grenka's Claw]|r from |cRXP_ENEMY_Grenka Bloodscreech|r
    *Bring Grenka's Claw to Dorn Plainstalker in Thousand Needles.
    .complete 1150,1 --Test of Endurance
    .mob Grenka Bloodscreech
step
    .goto 1441,53.95,41.49
    >>Talk to |cRXP_FRIENDLY_Dorn Plainstalker|r
    .turnin 1150 >>Turn in Test of Endurance
    .accept 1151 >>Accept Test of Strength
    .target Dorn Plainstalker
step
    .goto 1441,43.57,37.97
    >>Kill |cRXP_ENEMY_Galak Scout|r. Kill |cRXP_ENEMY_Galak Wrangler|r. Kill |cRXP_ENEMY_Galak Windchaser|r
    *Kill 12 Galak Scouts, 10 Galak Wranglers, and 6 Galak Windchasers, and then return to Cliffwatcher Longhorn in Freewind Post.
    .complete 4841,1 --Pacify the Centaur
    .complete 4841,2 --Pacify the Centaur
    .complete 4841,3 --Pacify the Centaur
    .mob Galak Scout
    .mob Galak Wrangler
    .mob Galak Windchaser
step
    .goto 1441,45.67,50.74
    >>Talk to |cRXP_FRIENDLY_Cliffwatcher Longhorn|r
    .turnin 4841 >>Turn in Pacify the Centaur
    .accept 5064 >>Accept Grimtotem Spying
    .target Cliffwatcher Longhorn
step
    .goto 1441,33.76,39.99
    >>Collect |cRXP_LOOT_[Fragments of Rok'Alim]|r from |cRXP_ENEMY_Rok'Alim the Pounder|r. Collect |cRXP_LOOT_[Secret Note #1]|r from |cRXP_PICK_Pitted Iron Chest|r, |cRXP_PICK_Document Chest|r. Collect |cRXP_LOOT_[Secret Note #2]|r from |cRXP_PICK_Pitted Iron Chest|r, |cRXP_PICK_Document Chest|r. Collect |cRXP_LOOT_[Secret Note #3]|r from |cRXP_PICK_Pitted Iron Chest|r, |cRXP_PICK_Document Chest|r
    *Bring Fragments of Rok'Alim to Dorn Plainstalker in Thousand Needles.
    *Locate and retrieve the three Secret Notes in Darkcloud Pinnacle.
    .complete 1151,1 --Test of Strength
    .complete 5064,1 --Grimtotem Spying
    .complete 5064,2 --Grimtotem Spying
    .complete 5064,3 --Grimtotem Spying
    .mob Rok'Alim the Pounder
step
    .goto 1441,26.49,52.26
    >>Collect |cRXP_LOOT_[Stolen Freewind Supplies]|r from |cRXP_PICK_Stolen Freewind Supplies|r. Kill |cRXP_ENEMY_Screeching Harpy|r. Kill |cRXP_ENEMY_Screeching Roguefeather|r. Kill |cRXP_ENEMY_Screeching Windcaller|r
    *Bring 8 Stolen Freewind Supplies to Jandia in Freewind Post.
    *Slay 5 Screeching Harpies, 5 Screeching Roguefeather Harpies and 5 Screeching Windcaller Harpies.
    .complete 98069,1 --Stolen Freewind Supplies
    .complete 98070,1 --Stop the Screeching
    .complete 98070,2 --Stop the Screeching
    .complete 98070,3 --Stop the Screeching
    .mob Screeching Harpy
    .mob Screeching Roguefeather
    .mob Screeching Windcaller
step
    .goto 1441,46.21,51.51
    >>Talk to |cRXP_FRIENDLY_Jandia|r
    .turnin 98069 >>Turn in Stolen Freewind Supplies
    .turnin 98070 >>Turn in Stop the Screeching
    .target Jandia
step
    .goto 1441,45.67,50.74
    >>Talk to |cRXP_FRIENDLY_Cliffwatcher Longhorn|r
    .turnin 5064 >>Turn in Grimtotem Spying
    .target Cliffwatcher Longhorn
step
    .goto 1441,53.95,41.49
    >>Talk to |cRXP_FRIENDLY_Dorn Plainstalker|r
    .turnin 1151 >>Turn in Test of Strength
    .target Dorn Plainstalker
step
    .goto 1441,77.79,77.27
    >>Talk to |cRXP_FRIENDLY_Kravel Koalbeard|r
    .accept 5762 >>Accept Hemet Nesingwary
    .accept 1110 >>Accept Rocket Car Parts
    .target Kravel Koalbeard
step
    .goto 1441,78.06,77.13
    >>Talk to |cRXP_FRIENDLY_Fizzle Brassbolts|r
    .accept 1104 >>Accept Salt Flat Venom
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
    .goto 1456,69.85,30.91
    >>Talk to |cRXP_FRIENDLY_Magatha Grimtotem|r
    .turnin 5062 >>Turn in Sacred Fire
    .accept 5088 >>Accept Arikara
    .target Magatha Grimtotem
step
    >>Collect |cRXP_LOOT_[Arikara Serpent Skin]|r from |cRXP_ENEMY_Arikara|r
    *Slay Arikara. Bring her remains and the Incendia powder to Motega Firemane in Whitereach Post as proof of your deed.
    .complete 5088,1 --Arikara
    .mob Arikara
step
    .goto 1434,35.66,10.81
    >>Talk to |cRXP_FRIENDLY_Hemet Nesingwary|r
    .turnin 5762 >>Turn in Hemet Nesingwary
    .target Hemet Nesingwary
step
    .goto 1441,21.54,32.35
    >>Talk to |cRXP_FRIENDLY_Motega Firemane|r
    .turnin 5088 >>Turn in Arikara
    .target Motega Firemane
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 20-29
#name 29-38 Razorfen Kraul
#displayname 29-38 Razorfen Kraul
#next 28-33 City of Dalaran
step
    +|cRXP_WARN_Razorfen Kraul|r (levels 29-38). Pick up 4 dungeon quests solo (roughly 1 h 10 min with the hand-ins), then ONE run with a group (roughly 50 min). No group needed until the run step. Click to start.
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1456,35.97,59.92
    >>Talk to |cRXP_FRIENDLY_Auld Stonespire|r
    .accept 1102 >>Accept A Vengeful Fate
    .target Auld Stonespire
step
    .goto 1458,48.82,69.28
    >>Talk to |cRXP_FRIENDLY_Master Apothecary Faranell|r
    .accept 1109 >>Accept Going, Going, Guano!
    .target Master Apothecary Faranell
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
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in.|r
step
    .goto 1413,42.9,90.2
    >>Inside Razorfen Kraul: these quests start from a drop or an object in the dungeon
    .accept 1144 >>Accept Willix the Importer
step
    .goto 1413,42.9,90.2
    >>Enter |cRXP_WARN_Razorfen Kraul|r with your group. Quest goals inside:
    *A Vengeful Fate: Bring Razorflank's Heart to Auld Stonespire in Thunder Bluff.
    *Going, Going, Guano!: Bring 1 pile of Kraul Guano to Master Apothecary Faranell in the Undercity.
    *Blueleaf Tubers: Grab a Crate with Holes.
    .complete 1102,1 --A Vengeful Fate
    .complete 1109,1 --Going, Going, Guano!
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
    .goto 1456,35.97,59.92
    >>Talk to |cRXP_FRIENDLY_Auld Stonespire|r
    .turnin 1102 >>Turn in A Vengeful Fate
    .target Auld Stonespire
step
    .goto 1458,48.82,69.28
    >>Talk to |cRXP_FRIENDLY_Master Apothecary Faranell|r
    .turnin 1109 >>Turn in Going, Going, Guano!
    .target Master Apothecary Faranell
step
    .goto 1413,42.9,90.2
    +Dungeon entrance: Razorfen Kraul. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 20-29
#name 28-33 City of Dalaran
#displayname 28-33 City of Dalaran
#next 29-38 Gnomeregan
step
    +|cRXP_WARN_City of Dalaran|r (levels 28-33). Pick up 8 dungeon quests solo (roughly 1 h 25 min with the hand-ins), then ONE run with a group (roughly 1 h 40 min). No group needed until the run step. Click to start.
    *New Forever dungeon. KEY NEEDED: one player with the Dalaran Sewer Key opens it for the group; the key chain is in this guide. Enter through the sewers on the Silverpine side of Lordamere Lake.
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1424,61.6,20.85
    >>Talk to |cRXP_FRIENDLY_Magus Wordeen Voidglare|r
    .accept 544 >>Accept Prison Break In
    .accept 93680 >>Accept Key to the City
    .target Magus Wordeen Voidglare
step
    .goto 1424,62.63,20.65
    >>Talk to |cRXP_FRIENDLY_Melisara|r
    .accept 96986 >>Accept The Grave Knight
    .target Melisara
step
    .goto 1458,46.61,74.09
    >>Talk to |cRXP_FRIENDLY_Doctor Martin Felben|r
    .accept 96988 >>Accept Source of Power
    .target Doctor Martin Felben
step
    .goto 1416,19.91,85.97
    >>Collect |cRXP_LOOT_[Bloodstone Wedge]|r from |cRXP_ENEMY_Dermot|r
    *Find the traitors and recover their artifacts, then return to Magus Voidglare in Tarren Mill.
    .complete 544,1 --Prison Break In
    .mob Dermot
step
    .goto 1416,20.34,86.4
    >>Collect |cRXP_LOOT_[Bloodstone Shard]|r from |cRXP_ENEMY_Alina|r
    *Find the traitors and recover their artifacts, then return to Magus Voidglare in Tarren Mill.
    .complete 544,3 --Prison Break In
    .mob Alina
step
    .goto 1416,20.16,84.28
    >>Collect |cRXP_LOOT_[Bloodstone Marble]|r from |cRXP_ENEMY_Ricter|r
    *Find the traitors and recover their artifacts, then return to Magus Voidglare in Tarren Mill.
    .complete 544,2 --Prison Break In
    .mob Ricter
step
    .goto 1416,17.8,83.2
    >>Collect |cRXP_LOOT_[Bloodstone Oval]|r from |cRXP_ENEMY_Kegan Darkmar|r
    *Find the traitors and recover their artifacts, then return to Magus Voidglare in Tarren Mill.
    .complete 544,4 --Prison Break In
    .mob Kegan Darkmar
step
    .goto 1416,16.3,89.31
    >>Collect |cRXP_LOOT_[Grimy Key]|r from |cRXP_PICK_Warden's Footlocker|r
    *Acquire the Dalaran Sewer Key for Magus Wordeen Voidglare in Tarren Mill.
    .complete 93680,1 --Key to the City
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in.|r
step
    .goto 1421,69.3,45.6
    >>Inside City of Dalaran: these quests start from a drop or an object in the dungeon
    .accept 96987 >>Accept Opportunistic Education
step
    .goto 1421,69.3,45.6
    >>Enter |cRXP_WARN_City of Dalaran|r with your group. Quest goals inside:
    *The Grave Knight: Defeat Atrexis the Grave Knight in the City of Dalaran for Melisara in Tarren Mill.
    *Opportunistic Education: Collect the Founding of Dalaran from the City of Dalaran for Rexxie Copperclutch near the sewer entrance.
    *Source of Power: Collect 6 Cracked Sentry Cores in the City of Dalaran for Doctor Martin Felben in Undercity.
    .complete 96986,1 --The Grave Knight
    .complete 96987,1 --Opportunistic Education
    .complete 96988,1 --Source of Power
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1421,69.3,45.6
    >>Inside City of Dalaran: these quests start from a drop or an object in the dungeon
    .turnin 96987 >>Turn in Opportunistic Education
step
    .goto 1424,61.6,20.85
    >>Talk to |cRXP_FRIENDLY_Magus Wordeen Voidglare|r
    .turnin 544 >>Turn in Prison Break In
    .turnin 93680 >>Turn in Key to the City
    .target Magus Wordeen Voidglare
step
    .goto 1424,62.63,20.65
    >>Talk to |cRXP_FRIENDLY_Melisara|r
    .turnin 96986 >>Turn in The Grave Knight
    .target Melisara
step
    .goto 1458,46.61,74.09
    >>Talk to |cRXP_FRIENDLY_Doctor Martin Felben|r
    .turnin 96988 >>Turn in Source of Power
    .target Doctor Martin Felben
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1424,61.6,20.85
    >>Talk to |cRXP_FRIENDLY_Magus Wordeen Voidglare|r
    .accept 545 >>Accept Dalaran Patrols
    .target Magus Wordeen Voidglare
step
    .goto 1416,22.8,57.2
    >>Kill |cRXP_ENEMY_Dalaran Summoner|r
    *Kill 6 Dalaran Summoners and 12 Elemental Slaves, then return to Magus Voidglare in Tarren Mill.
    .complete 545,1 --Dalaran Patrols
    .mob Dalaran Summoner
step
    .goto 1416,24.62,54.86
    >>Kill |cRXP_ENEMY_Elemental Slave|r
    *Kill 6 Dalaran Summoners and 12 Elemental Slaves, then return to Magus Voidglare in Tarren Mill.
    .complete 545,2 --Dalaran Patrols
    .mob Elemental Slave
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1424,61.6,20.85
    >>Talk to |cRXP_FRIENDLY_Magus Wordeen Voidglare|r
    .turnin 545 >>Turn in Dalaran Patrols
    .target Magus Wordeen Voidglare
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1424,61.6,20.85
    >>Talk to |cRXP_FRIENDLY_Magus Wordeen Voidglare|r
    .accept 92434 >>Accept Blood in the Streets
    .target Magus Wordeen Voidglare
step
    .goto 1421,68.62,45.13
    >>Kill |cRXP_ENEMY_Image of Archmage Modera|r
    *Find a way into Dalaran along the Lordamere Lake.
    .complete 92434,1 --Blood in the Streets
    .mob Image of Archmage Modera
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1421,68.62,45.13
    >>Talk to |cRXP_FRIENDLY_Image of Archmage Modera|r
    .turnin 92434 >>Turn in Blood in the Streets
    .target Image of Archmage Modera
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1421,68.62,45.13
    >>Talk to |cRXP_FRIENDLY_Image of Archmage Modera|r
    .accept 96984 >>Accept Heart of Disruption
    .target Image of Archmage Modera
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in. (run 2)|r
step
    .goto 1421,69.3,45.6
    >>Enter |cRXP_WARN_City of Dalaran|r with your group. Quest goals inside:
    *Heart of Disruption: Collect the Arcane Mote in the City of Dalaran for Magus Wordeen Voidglare in Tarren Mill.
    .complete 96984,1 --Heart of Disruption
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1424,61.6,20.85
    >>Talk to |cRXP_FRIENDLY_Magus Wordeen Voidglare|r
    .turnin 96984 >>Turn in Heart of Disruption
    .target Magus Wordeen Voidglare
step
    .goto 1421,69.3,45.6
    +Dungeon entrance: City of Dalaran. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 20-29
#name 29-38 Gnomeregan
#displayname 29-38 Gnomeregan
#next 30-32 Hillsbrad/Alterac
step
    +|cRXP_WARN_Gnomeregan|r (levels 29-38). Pick up 13 dungeon quests solo (roughly 1 h with the hand-ins), then ONE run with a group (roughly 1 h 40 min). No group needed until the run step. Click to start.
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1454,75.99,25.41
    >>Talk to |cRXP_FRIENDLY_Nogg|r
    .accept 2841 >>Accept Rig Wars
    .target Nogg
step
    .goto 1454,75.49,25.36
    >>Talk to |cRXP_FRIENDLY_Sovik|r
    .accept 2842 >>Accept Chief Engineer Scooty
    .target Sovik
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
    .accept 80325 >>Accept The Mad King
step
    .goto 1426,24.3,39.8
    >>Loot |cRXP_LOOT_[Grime-Encrusted Ring]|r from |cRXP_ENEMY_Dark Iron Agent|r, then click it to start the quest
    .accept 2945 >>Accept Grime-Encrusted Ring
    .use 9326
    .mob Dark Iron Agent
step
    .goto 1426,24.3,39.8
    >>Enter |cRXP_WARN_Gnomeregan|r with your group. Quest goals inside:
    *Rig Wars: Retrieve the Rig Blueprints and Thermaplugg's Safe Combination from Gnomeregan and bring them to Nogg in Orgrimmar.
    *The Sparklematic 5200!: Insert a Grime-Encrusted Item into the Sparklematic 5200, and be sure to have three silver coins to start the machine.
    *The Sparklematic 5200!: Insert a Grime-Encrusted Item into the Sparklematic 5200, and be sure to have three silver coins to start the machine.
    *The Sparklematic 5200!: Insert a Grime-Encrusted Item into the Sparklematic 5200, and be sure to have three silver coins to start the machine.
    .complete 2841,1 --Rig Wars
    .complete 2841,2 --Rig Wars
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
    .goto 1454,75.99,25.41
    >>Talk to |cRXP_FRIENDLY_Nogg|r
    .turnin 2841 >>Turn in Rig Wars
    .turnin 80325 >>Turn in The Mad King
    .target Nogg
step
    .goto 1434,27.6,77.48
    >>Talk to |cRXP_FRIENDLY_Scooty|r
    .turnin 2842 >>Turn in Chief Engineer Scooty
    .turnin 2904 >>Turn in A Fine Mess
    .target Scooty
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1434,27.6,77.48
    >>Talk to |cRXP_FRIENDLY_Scooty|r
    .accept 2843 >>Accept Gnomer-gooooone!
    .target Scooty
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in. (run 2)|r
step
    .goto 1426,24.3,39.8
    >>Inside Gnomeregan: these quests start from a drop or an object in the dungeon
    .accept 2949 >>Accept Return of the Ring
    .accept 2952 >>Accept The Sparklematic 5200!
    .accept 4605 >>Accept The Sparklematic 5200!
    .accept 4606 >>Accept The Sparklematic 5200!
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
    .goto 1434,27.6,77.48
    >>Talk to |cRXP_FRIENDLY_Scooty|r
    .turnin 2843 >>Turn in Gnomer-gooooone!
    .target Scooty
step
    .goto 1454,75.99,25.41
    >>Talk to |cRXP_FRIENDLY_Nogg|r
    .turnin 2949 >>Turn in Return of the Ring
    .target Nogg
step
    .goto 1426,24.3,39.8
    +Dungeon entrance: Gnomeregan. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 30-39
#name 30-32 Hillsbrad/Alterac
#displayname 30-32 Hillsbrad/Alterac
#next 30-38 Scarlet Monastery Graveyard
step
    .zone 1424 >>Travel to Hillsbrad
    *How: Zeppelin Orgrimmar -> Undercity, then fly to Tarren Mill.
    *Level for this part: 30-32. 25 quests, roughly 3 h 35 min.
step
    #completewith next
    .goto 1424,60.14,18.62,15,0
    >>Talk to |cRXP_FRIENDLY_Zarise|r if you don't have this flight path yet
    .fp Zarise >>Get the flight path
    .target Zarise
step
    .goto 1424,61.6,20.85
    >>Talk to |cRXP_FRIENDLY_Magus Wordeen Voidglare|r
    .accept 97287 >>Accept Shrewd Negotiations
    .target Magus Wordeen Voidglare
step
    .goto 1424,62.33,20.45
    >>Talk to |cRXP_FRIENDLY_High Executor Darthalia|r
    .accept 527 >>Accept Battle of Hillsbrad
    .target High Executor Darthalia
step
    .goto 1424,62.76,20.21
    >>Talk to |cRXP_FRIENDLY_Deathguard Humbert|r
    .accept 547 >>Accept Humbert's Sword
    .target Deathguard Humbert
step
    .goto 1424,61.87,19.57
    >>Talk to |cRXP_FRIENDLY_Tallow|r
    .accept 676 >>Accept The Hammer May Fall
    .target Tallow
step
    .goto 1424,62.63,20.75
    >>Click the |cRXP_PICK_WANTED|r
    .accept 549 >>Accept WANTED: Syndicate Personnel
step
    .goto 1424,62.56,19.66
    >>Click the |cRXP_PICK_Dangerous!|r
    .accept 567 >>Accept Dangerous!
step
    .goto 1424,61.5,20.93
    >>Talk to |cRXP_FRIENDLY_Keeper Bel'varil|r
    .accept 556 >>Accept Stone Tokens
    .target Keeper Bel'varil
step
    .goto 1424,61.44,19.06
    >>Talk to |cRXP_FRIENDLY_Apothecary Lydon|r
    .accept 496 >>Accept Elixir of Suffering
    .accept 501 >>Accept Elixir of Pain
    .target Apothecary Lydon
step
    .goto 1424,63.24,20.66
    >>Talk to |cRXP_FRIENDLY_Krusk|r
    .accept 498 >>Accept The Rescue
    .target Krusk
step
    .goto 1424,63.88,19.66
    >>Talk to |cRXP_FRIENDLY_Novice Thaivand|r
    .accept 552 >>Accept Helcular's Revenge
    .target Novice Thaivand
step
    .goto 1424,64.35,33.97
    >>Collect |cRXP_LOOT_[Gray Bear Tongue]|r from |cRXP_ENEMY_Gray Bear|r, |cRXP_ENEMY_Vicious Gray Bear|r, |cRXP_ENEMY_Elder Gray Bear|r
    *Apothecary Lydon of Tarren Mill wants 10 Gray Bear Tongues and some Creeper Ichor.
    .complete 496,1 --Elixir of Suffering
    .mob Gray Bear
    .mob Vicious Gray Bear
step
    .goto 1424,53.42,39.28
    >>Collect |cRXP_LOOT_[Mountain Lion Blood]|r from |cRXP_ENEMY_Starving Mountain Lion|r, |cRXP_ENEMY_Feral Mountain Lion|r, |cRXP_ENEMY_Mountain Lion|r
    *Bring 10 vials of Mountain Lion Blood to Apothecary Lydon in Tarren Mill.
    .complete 501,1 --Elixir of Pain
    .mob Starving Mountain Lion
    .mob Feral Mountain Lion
step
    .goto 1424,46.45,30.59
    >>Collect |cRXP_LOOT_[Helcular's Rod]|r from |cRXP_ENEMY_Cave Yeti|r, |cRXP_ENEMY_Ferocious Yeti|r, |cRXP_ENEMY_Mountain Yeti|r
    *Retrieve Helcular's Rod from the Yeti and bring it back to Novice Thaivand in Tarren Mill.
    .complete 552,1 --Helcular's Revenge
    .mob Cave Yeti
    .mob Ferocious Yeti
step
    .goto 1424,34.79,38.52
    >>Kill |cRXP_ENEMY_Hillsbrad Farmer|r. Kill |cRXP_ENEMY_Hillsbrad Farmhand|r. Kill |cRXP_ENEMY_Farmer Ray|r. Kill |cRXP_ENEMY_Farmer Getz|r. Kill |cRXP_ENEMY_Clerk Horrace Whitesteed|r. Kill |cRXP_ENEMY_Citizen Wilkes|r. Kill |cRXP_ENEMY_Farmer Kalaba|r
    *Kill 6 Hillsbrad Farmhands, 6 Hillsbrad Farmers, Farmer Ray and Farmer Getz and report back to Darthalia in Tarren Mill.
    *High Executor Darthalia of Tarren Mill is offering a bounty on Clerk Horrace Whitesteed, Citizen Wilkes, Miner Hackett and Farmer Kalaba.
    .complete 527,1 --Battle of Hillsbrad
    .complete 527,2 --Battle of Hillsbrad
    .complete 527,3 --Battle of Hillsbrad
    .complete 527,4 --Battle of Hillsbrad
    .complete 567,1 --Dangerous!
    .complete 567,2 --Dangerous!
    .complete 567,4 --Dangerous!
    .mob Hillsbrad Farmer
    .mob Hillsbrad Farmhand
    .mob Farmer Ray
    .mob Farmer Getz
    .mob Clerk Horrace Whitesteed
    .mob Citizen Wilkes
    .mob Farmer Kalaba
step
    .goto 1424,26.98,31.5
    >>Collect |cRXP_LOOT_[Worn Stone Token]|r from |cRXP_ENEMY_Dalaran Shield Guard|r, |cRXP_ENEMY_Dalaran Theurgist|r, |cRXP_ENEMY_Dalaran Summoner|r
    *Bring 10 Worn Stone Tokens to Keeper Bel'varil in Tarren Mill.
    .complete 556,1 --Stone Tokens
    .mob Dalaran Shield Guard
    .mob Dalaran Theurgist
step
    .goto 1424,20.79,47.4
    >>Talk to |cRXP_FRIENDLY_Deathstalker Lesh|r
    .accept 494 >>Accept Time To Strike
    .target Deathstalker Lesh
step
    .goto 1424,31.12,58.63
    >>Kill |cRXP_ENEMY_Miner Hackett|r. Collect |cRXP_LOOT_[Creeper Ichor]|r from |cRXP_ENEMY_Elder Moss Creeper|r, |cRXP_ENEMY_Giant Moss Creeper|r, |cRXP_ENEMY_Forest Moss Creeper|r
    *High Executor Darthalia of Tarren Mill is offering a bounty on Clerk Horrace Whitesteed, Citizen Wilkes, Miner Hackett and Farmer Kalaba.
    *Apothecary Lydon of Tarren Mill wants 10 Gray Bear Tongues and some Creeper Ichor.
    .complete 567,3 --Dangerous!
    .complete 496,2 --Elixir of Suffering
    .mob Miner Hackett
    .mob Elder Moss Creeper
    .mob Giant Moss Creeper
step
    .goto 1424,69.04,78.17
    >>Collect |cRXP_LOOT_[Humbert's Sword]|r from |cRXP_ENEMY_Dun Garok Mountaineer|r, |cRXP_ENEMY_Dun Garok Rifleman|r, |cRXP_ENEMY_Dun Garok Priest|r
    *Retrieve Deathguard Humbert's sword from Dun Garok and return it to him in Tarren Mill.
    .complete 547,1 --Humbert's Sword
    .mob Dun Garok Mountaineer
    .mob Dun Garok Rifleman
step
    .goto 1424,75.33,41.5
    >>Kill |cRXP_ENEMY_Syndicate Rogue|r. Kill |cRXP_ENEMY_Syndicate Watchman|r. Click |cRXP_PICK_Locked ball and chain|r
    *Kill 10 Syndicate Rogues and 10 Syndicate Watchmen. Return to High Executor Darthalia in Tarren Mill for your reward.
    *Krusk in Tarren Mill needs you to free Drull and Tog'thar from Durnholde Keep.
    .complete 549,1 --WANTED: Syndicate Personnel
    .complete 549,2 --WANTED: Syndicate Personnel
    .complete 498,1 --The Rescue
    .complete 498,2 --The Rescue
    .mob Syndicate Rogue
    .mob Syndicate Watchman
step
    .goto 1424,62.33,20.45
    >>Talk to |cRXP_FRIENDLY_High Executor Darthalia|r
    .turnin 527 >>Turn in Battle of Hillsbrad
    .turnin 549 >>Turn in WANTED: Syndicate Personnel
    .turnin 567 >>Turn in Dangerous!
    .turnin 494 >>Turn in Time To Strike
    .target High Executor Darthalia
step
    .goto 1424,62.76,20.21
    >>Talk to |cRXP_FRIENDLY_Deathguard Humbert|r
    .turnin 547 >>Turn in Humbert's Sword
    .target Deathguard Humbert
step
    .goto 1424,61.5,20.93
    >>Talk to |cRXP_FRIENDLY_Keeper Bel'varil|r
    .turnin 556 >>Turn in Stone Tokens
    .target Keeper Bel'varil
step
    .goto 1424,61.44,19.06
    >>Talk to |cRXP_FRIENDLY_Apothecary Lydon|r
    .turnin 496 >>Turn in Elixir of Suffering
    .turnin 501 >>Turn in Elixir of Pain
    .target Apothecary Lydon
step
    .goto 1424,63.24,20.66
    >>Talk to |cRXP_FRIENDLY_Krusk|r
    .turnin 498 >>Turn in The Rescue
    .target Krusk
step
    .goto 1424,63.88,19.66
    >>Talk to |cRXP_FRIENDLY_Novice Thaivand|r
    .turnin 552 >>Turn in Helcular's Revenge
    .target Novice Thaivand
step
    .goto 1424,62.33,20.45
    >>Talk to |cRXP_FRIENDLY_High Executor Darthalia|r
    .accept 528 >>Accept Battle of Hillsbrad
    .target High Executor Darthalia
step
    .goto 1424,63.24,20.66
    >>Talk to |cRXP_FRIENDLY_Krusk|r
    .accept 533 >>Accept Infiltration
    .target Krusk
step
    .goto 1424,62.11,19.7
    >>Talk to |cRXP_FRIENDLY_Deathguard Samsa|r
    .accept 546 >>Accept Souvenirs of Death
    .target Deathguard Samsa
step
    .goto 1424,63.88,19.66
    >>Talk to |cRXP_FRIENDLY_Novice Thaivand|r
    .accept 553 >>Accept Helcular's Revenge
    .target Novice Thaivand
step
    .goto 1424,61.5,20.93
    >>Talk to |cRXP_FRIENDLY_Keeper Bel'varil|r
    .accept 557 >>Accept Bracers of Binding
    .target Keeper Bel'varil
step
    .goto 1424,61.44,19.06
    >>Talk to |cRXP_FRIENDLY_Apothecary Lydon|r
    .accept 499 >>Accept Elixir of Suffering
    .accept 502 >>Accept Elixir of Pain
    .target Apothecary Lydon
step
    .goto 1424,61.55,19.14
    >>Talk to |cRXP_FRIENDLY_Umpi|r
    .turnin 499 >>Turn in Elixir of Suffering
    .target Umpi
step
    .goto 1424,43.89,28.06
    >>Click |cRXP_PICK_Flame of Azel|r. Click |cRXP_PICK_Flame of Veraz|r
    *Charge the Rod of Helcular with the powers of the Flame of Azel, Flame of Veraz and the Flame of Uzel.
    .complete 553,1 --Helcular's Revenge
    .complete 553,2 --Helcular's Revenge
step
    .goto 1424,32.66,35.32
    >>Talk to |cRXP_FRIENDLY_Stanley|r
    .turnin 502 >>Turn in Elixir of Pain
    .target Stanley
step
    .goto 1424,35.41,42.01
    >>Kill |cRXP_ENEMY_Hillsbrad Peasant|r
    *Kill 15 Hillsbrad Peasants and report back to Darthalia in Tarren Mill.
    .complete 528,1 --Battle of Hillsbrad
    .mob Hillsbrad Peasant
step
    .goto 1424,29.7,56.54
    >>Collect |cRXP_LOOT_[Hillsbrad Human Skull]|r from |cRXP_ENEMY_Henchman Valik|r, |cRXP_ENEMY_Farmer Kent|r, |cRXP_ENEMY_Arados the Damned|r
    *Deathguard Samsa of Tarren Mill wants 30 Hillsbrad Human Skulls.
    .complete 546,1 --Souvenirs of Death
    .mob Henchman Valik
    .mob Farmer Kent
step
    .goto 1424,62.33,20.45
    >>Talk to |cRXP_FRIENDLY_High Executor Darthalia|r
    .turnin 528 >>Turn in Battle of Hillsbrad
    .target High Executor Darthalia
step
    .goto 1424,62.11,19.7
    >>Talk to |cRXP_FRIENDLY_Deathguard Samsa|r
    .turnin 546 >>Turn in Souvenirs of Death
    .target Deathguard Samsa
step
    .goto 1424,62.33,20.45
    >>Talk to |cRXP_FRIENDLY_High Executor Darthalia|r
    .accept 98094 >>Accept Scout Support
    .target High Executor Darthalia
step
    .goto 1424,64,53.82
    >>Talk to |cRXP_FRIENDLY_Deathstalker Masoj|r
    .turnin 98094 >>Turn in Scout Support
    .accept 98095 >>Accept Valuable Vantages
    .target Deathstalker Masoj
step
    .goto 1421,68.62,45.13
    >>Talk to |cRXP_FRIENDLY_Image of Archmage Modera|r
    .turnin 97287 >>Turn in Shrewd Negotiations
    .target Image of Archmage Modera
step
    .goto 1416,57.17,69.51
    >>Talk to |cRXP_FRIENDLY_Henchman Valik|r
    .accept 535 >>Accept Valik
    .target Henchman Valik
step
    .goto 1416,57.71,67.64
    >>Collect |cRXP_LOOT_[Syndicate Missive]|r from |cRXP_ENEMY_Syndicate Footpad|r, |cRXP_ENEMY_Syndicate Thief|r. Collect |cRXP_LOOT_[Southshore Stout]|r from |cRXP_ENEMY_Drunken Footpad|r
    *Retrieve information about Gol'dir's whereabouts for Krusk in Tarren Mill.
    *Bring a mug of Southshore Stout to Valik in the Syndicate camp.
    .complete 533,1 --Infiltration
    .complete 535,1 --Valik
    .mob Syndicate Footpad
    .mob Syndicate Thief
    .mob Drunken Footpad
step
    .goto 1416,57.17,69.51
    >>Talk to |cRXP_FRIENDLY_Henchman Valik|r
    .turnin 535 >>Turn in Valik
    .target Henchman Valik
step
    .goto 1416,37.55,66.24
    >>Click |cRXP_PICK_Flame of Uzel|r
    *Charge the Rod of Helcular with the powers of the Flame of Azel, Flame of Veraz and the Flame of Uzel.
    .complete 553,3 --Helcular's Revenge
step
    .goto 1416,24.62,54.86
    >>Collect |cRXP_LOOT_[Bracers of Earth Binding]|r from |cRXP_ENEMY_Elemental Slave|r
    *Bring 4 Bracers of Earth Binding to Keeper Bel'varil in Tarren Mill.
    .complete 557,1 --Bracers of Binding
    .mob Elemental Slave
step
    .goto 1416,60.26,43.98
    >>Loot |cRXP_LOOT_[Singed Note]|r from |cRXP_ENEMY_Argus Shadow Mage|r, |cRXP_ENEMY_Syndicate Wizard|r, then click it to start the quest
    .accept 95534 >>Accept Strahnbrad Mystery
    .use 213421
    .mob Argus Shadow Mage
    .mob Syndicate Wizard
step
    .goto 1416,38.58,95.09
    >>Kill |cRXP_ENEMY_Credit|r
    *Deathstalker Masoj needs you to place the three Apothecary Vials on peaks around Hillsbrad Foothills and return to him.
    .complete 98095,1 --Valuable Vantages
    .mob Credit
step
    .goto 1424,63.24,20.66
    >>Talk to |cRXP_FRIENDLY_Krusk|r
    .turnin 533 >>Turn in Infiltration
    .target Krusk
step
    .goto 1424,61.5,20.93
    >>Talk to |cRXP_FRIENDLY_Keeper Bel'varil|r
    .turnin 557 >>Turn in Bracers of Binding
    .target Keeper Bel'varil
step
    .goto 1424,63.66,21.16
    >>Talk to |cRXP_FRIENDLY_Shara Blazen|r
    .turnin 95534 >>Turn in Strahnbrad Mystery
    .target Shara Blazen
step
    .goto 1424,63.24,20.66
    >>Talk to |cRXP_FRIENDLY_Krusk|r
    .accept 503 >>Accept Gol'dir
    .target Krusk
step
    .goto 1424,71.52,30.38
    >>Kill |cRXP_ENEMY_Credit|r
    *Deathstalker Masoj needs you to place the three Apothecary Vials on peaks around Hillsbrad Foothills and return to him.
    .complete 98095,2 --Valuable Vantages
    .mob Credit
step
    .goto 1424,52.75,53.37
    >>Click the |cRXP_PICK_Helcular's Grave|r
    .turnin 553 >>Turn in Helcular's Revenge
step
    .goto 1424,74.24,73.36
    >>Kill |cRXP_ENEMY_Credit|r
    *Deathstalker Masoj needs you to place the three Apothecary Vials on peaks around Hillsbrad Foothills and return to him.
    .complete 98095,3 --Valuable Vantages
    .mob Credit
step
    .goto 1424,64,53.82
    >>Talk to |cRXP_FRIENDLY_Deathstalker Masoj|r
    .turnin 98095 >>Turn in Valuable Vantages
    .target Deathstalker Masoj
step
    .goto 1417,35.7,45.27
    >>Kill |cRXP_ENEMY_Boulderfist Ogre|r. Kill |cRXP_ENEMY_Boulderfist Enforcer|r
    *Kill 8 Boulderfist Ogres and 10 Boulderfist Enforcers, then find Drum Fel in the Hammerfall outpost in Arathi Highlands.
    .complete 676,1 --The Hammer May Fall
    .complete 676,2 --The Hammer May Fall
    .mob Boulderfist Ogre
    .mob Boulderfist Enforcer
step
    .goto 1417,74.24,33.92
    >>Talk to |cRXP_FRIENDLY_Drum Fel|r
    .turnin 676 >>Turn in The Hammer May Fall
    .target Drum Fel
step
    .goto 1416,63.14,43.42
    >>Collect |cRXP_LOOT_[Rusted Iron Key]|r from |cRXP_ENEMY_Jailor Borhuin|r. Find where Gol'dir is being held
    *Free Gol'dir then return to Krusk in Tarren Mill.
    .complete 503,1 --Gol'dir
    .complete 503,2 --Gol'dir
    .mob Jailor Borhuin
step
    .goto 1416,59.96,43.74
    >>Talk to |cRXP_FRIENDLY_Gol'dir|r
    .turnin 503 >>Turn in Gol'dir
    .accept 506 >>Accept Blackmoore's Legacy
    .target Gol'dir
step
    .goto 1424,63.24,20.66
    >>Talk to |cRXP_FRIENDLY_Krusk|r
    .turnin 506 >>Turn in Blackmoore's Legacy
    .target Krusk
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 30-39
#name 30-38 Scarlet Monastery Graveyard
#displayname 30-38 Scarlet Monastery Graveyard
#next 32-34 Arathi Highlands
step
    +|cRXP_WARN_Scarlet Monastery Graveyard|r (levels 30-38). Pick up 2 dungeon quests solo (roughly 25 min with the hand-ins), then ONE run with a group (roughly 25 min). No group needed until the run step. Click to start.
    *Door: Graveyard: the open portal farthest left. No key.
    *Four wings: Graveyard 30-38, Library 33-41, Armory 36-44, Cathedral 38-46.
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1458,48.82,69.28
    >>Talk to |cRXP_FRIENDLY_Master Apothecary Faranell|r
    .accept 1113 >>Accept Hearts of Zeal
    .target Master Apothecary Faranell
step
    .goto 1420,81.36,33.72
    >>Collect |cRXP_LOOT_[Heart of Zeal]|r from |cRXP_ENEMY_Abominable Snowman|r, |cRXP_ENEMY_Herod|r, |cRXP_ENEMY_Arcanist Doan|r
    *Master Apothecary Faranell in the Undercity wants 20 Hearts of Zeal.
    .complete 1113,1 --Hearts of Zeal
    .mob Abominable Snowman
    .mob Herod
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in.|r
step
    .goto 1420,82.6,33.8
    >>Inside Scarlet Monastery Graveyard: these quests start from a drop or an object in the dungeon
    .accept 1051 >>Accept Vorrel's Revenge
step
    #completewith next
    +|cRXP_WARN_Outside: collect what the quests you got inside need|r
step
    .goto 1416,32.33,32.78
    >>Collect |cRXP_LOOT_[Vorrel's Wedding Ring]|r from |cRXP_ENEMY_Nancy Vishas|r
    *Return Vorrel Sengutz's wedding ring to Monika Sengutz in Tarren Mill.
    .complete 1051,1 --Vorrel's Revenge
    .mob Nancy Vishas
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1424,62.67,18.88
    >>Talk to |cRXP_FRIENDLY_Monika Sengutz|r
    .turnin 1051 >>Turn in Vorrel's Revenge
    .target Monika Sengutz
step
    .goto 1458,48.82,69.28
    >>Talk to |cRXP_FRIENDLY_Master Apothecary Faranell|r
    .turnin 1113 >>Turn in Hearts of Zeal
    .target Master Apothecary Faranell
step
    .goto 1420,82.6,33.8
    +Dungeon entrance: Scarlet Monastery Graveyard. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 30-39
#name 32-34 Arathi Highlands
#displayname 32-34 Arathi Highlands
#next 33-41 Scarlet Monastery Library pre-quests
step
    #completewith next
    +|cRXP_WARN_On the way: lead-in quests in Stranglethorn Vale that open quests in Arathi Highlands|r
step
    .goto 1434,32.16,27.72
    >>Talk to |cRXP_FRIENDLY_Nimboya|r
    .accept 638 >>Accept Trollbane
    .target Nimboya
step
    .zone 1417 >>Travel to Arathi Highlands
    *How: Fly to Hammerfall.
    *Level for this part: 32-34. 20 quests, roughly 2 h 20 min.
step
    #completewith next
    .goto 1417,73.02,32.7,15,0
    >>Talk to |cRXP_FRIENDLY_Urda|r if you don't have this flight path yet
    .fp Urda >>Get the flight path
    .target Urda
step
    .goto 1417,73.8,33.96
    >>Talk to |cRXP_FRIENDLY_Zengu|r
    .turnin 638 >>Turn in Trollbane
    .target Zengu
step
    .goto 1417,72.64,33.93
    >>Talk to |cRXP_FRIENDLY_Gor'mul|r
    .accept 655 >>Accept Hammerfall
    .target Gor'mul
step
    .goto 1417,74.24,33.92
    >>Talk to |cRXP_FRIENDLY_Drum Fel|r
    .accept 677 >>Accept Call to Arms
    .target Drum Fel
step
    .goto 1417,73.8,33.96
    >>Talk to |cRXP_FRIENDLY_Zengu|r
    .accept 639 >>Accept Sigil of Strom
    .target Zengu
step
    .goto 1417,74.72,36.29
    >>Talk to |cRXP_FRIENDLY_Tor'gan|r
    .turnin 655 >>Turn in Hammerfall
    .target Tor'gan
step
    .goto 1417,73.41,36.89
    >>Talk to |cRXP_FRIENDLY_Doctor Gregory Victor|r
    .accept 97539 >>Accept Silky Sutures
    .target Doctor Gregory Victor
step
    .goto 1417,74.72,36.29
    >>Talk to |cRXP_FRIENDLY_Tor'gan|r
    .accept 671 >>Accept Foul Magics
    .accept 672 >>Accept Raising Spirits
    .accept 95143 >>Accept Finding Tan'jani
    .target Tor'gan
step
    .goto 1417,62.5,33.73
    >>Click the |cRXP_PICK_Shards of Myzrael|r
    .accept 642 >>Accept The Princess Trapped
step
    .goto 1417,69,50.63
    >>Collect |cRXP_LOOT_[Surgical Spidersilk]|r from |cRXP_ENEMY_Plains Creeper|r, |cRXP_ENEMY_Giant Plains Creeper|r
    *Return 12 Surgical Spidersilk to Doctor Gregory Victor in Hammerfall, Arathi Highlands.
    .complete 97539,1 --Silky Sutures
    .mob Plains Creeper
    .mob Giant Plains Creeper
step
    .goto 1417,73.41,36.89
    >>Talk to |cRXP_FRIENDLY_Doctor Gregory Victor|r
    .turnin 97539 >>Turn in Silky Sutures
    .accept 92519 >>Accept Ward Restocking
    .target Doctor Gregory Victor
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
    .goto 1417,60.19,58.87
    >>Collect |cRXP_LOOT_[Packaged Tonics]|r from |cRXP_PICK_Packaged Tonics|r
    *Pick up a case of Packaged Tonics at Jorell's lab in Go'shek Farm and return to Doctor Gregory Victor in Hammerfall.
    .complete 92519,1 --Ward Restocking
step
    .goto 1417,63.96,68.19
    >>Kill |cRXP_ENEMY_Witherbark Axe Thrower|r. Kill |cRXP_ENEMY_Witherbark Witch Doctor|r
    *Slay 10 Witherbark Axe Throwers, 10 Headhunters and 8 Witch Doctors, and return to Drum Fel in the Hammerfall outpost.
    .complete 677,1 --Call to Arms
    .complete 677,3 --Call to Arms
    .mob Witherbark Axe Thrower
    .mob Witherbark Witch Doctor
step
    .goto 1417,67.69,77.16
    >>Loot |cRXP_LOOT_[Goliath's Wristguards]|r from |cRXP_ENEMY_Witherbark Goliath|r, then click it to start the quest
    .accept 92707 >>Accept The Giant in the Den
    .use 253711
    .mob Witherbark Goliath
step
    .goto 1417,67.69,77.16
    >>Kill |cRXP_ENEMY_Witherbark Headhunter|r. Collect |cRXP_LOOT_[Goliath's Wristguards]|r from |cRXP_ENEMY_Witherbark Goliath|r
    *Slay 10 Witherbark Axe Throwers, 10 Headhunters and 8 Witch Doctors, and return to Drum Fel in the Hammerfall outpost.
    *Bring the Goliath's Wristguards to Drum Fel in Hammerfall.
    .complete 677,2 --Call to Arms
    .complete 92707,1 --The Giant in the Den
    .mob Witherbark Headhunter
    .mob Witherbark Goliath
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
    .goto 1417,25.39,63.4
    >>Collect |cRXP_LOOT_[Sigil of Strom]|r from |cRXP_ENEMY_Syndicate Prowler|r, |cRXP_ENEMY_Syndicate Conjuror|r, |cRXP_ENEMY_Syndicate Magus|r
    *Get the Sigil of Strom for Zengu in Hammerfall.
    .complete 639,1 --Sigil of Strom
    .mob Syndicate Prowler
    .mob Syndicate Conjuror
step
    .goto 1417,15.06,41.05
    >>Collect |cRXP_LOOT_[Bloodstone Amulet]|r from |cRXP_ENEMY_Syndicate Smuggler|r, |cRXP_ENEMY_Syndicate Pathstalker|r, |cRXP_ENEMY_Syndicate Mercenary|r
    *Get 10 Bloodstone Amulets for Tor'gan in Hammerfall.
    .complete 671,1 --Foul Magics
    .mob Syndicate Smuggler
    .mob Syndicate Pathstalker
step
    .goto 1417,25.64,28.53
    >>Collect |cRXP_LOOT_[Burning Key]|r from |cRXP_ENEMY_Burning Exile|r
    *Gather the Burning Key, the Cresting Key and the Thundering Key from the Stone of West Binding, the Stone of East Binding and the Stone of Outer Binding.
    .complete 651,1 --Stones of Binding
    .mob Burning Exile
step
    .goto 1417,43.08,39.21
    >>Collect |cRXP_LOOT_[Highland Raptor Eye]|r from |cRXP_ENEMY_Highland Strider|r, |cRXP_ENEMY_Highland Thrasher|r
    *Acquire 10 Highland Raptor Eyes from Highland Striders and Highland Thrashers for Tor'gan in Hammerfall.
    .complete 672,1 --Raising Spirits
    .mob Highland Strider
    .mob Highland Thrasher
step
    .goto 1417,66.7,29.72
    >>Collect |cRXP_LOOT_[Cresting Key]|r from |cRXP_PICK_Stone of East Binding|r
    *Gather the Burning Key, the Cresting Key and the Thundering Key from the Stone of West Binding, the Stone of East Binding and the Stone of Outer Binding.
    .complete 651,2 --Stones of Binding
step
    .goto 1417,74.24,33.92
    >>Talk to |cRXP_FRIENDLY_Drum Fel|r
    .turnin 677 >>Turn in Call to Arms
    .turnin 92707 >>Turn in The Giant in the Den
    .target Drum Fel
step
    .goto 1417,73.8,33.96
    >>Talk to |cRXP_FRIENDLY_Zengu|r
    .turnin 639 >>Turn in Sigil of Strom
    .target Zengu
step
    .goto 1417,74.24,33.92
    >>Talk to |cRXP_FRIENDLY_Drum Fel|r
    .accept 678 >>Accept Call to Arms
    .target Drum Fel
step
    .goto 1417,74.72,36.29
    >>Talk to |cRXP_FRIENDLY_Tor'gan|r
    .turnin 671 >>Turn in Foul Magics
    .turnin 672 >>Turn in Raising Spirits
    .target Tor'gan
step
    .goto 1417,73.41,36.89
    >>Talk to |cRXP_FRIENDLY_Doctor Gregory Victor|r
    .turnin 92519 >>Turn in Ward Restocking
    .target Doctor Gregory Victor
step
    .goto 1417,74.72,36.29
    >>Talk to |cRXP_FRIENDLY_Tor'gan|r
    .accept 674 >>Accept Raising Spirits
    .target Tor'gan
step
    .goto 1417,72.64,33.93
    >>Talk to |cRXP_FRIENDLY_Gor'mul|r
    .turnin 674 >>Turn in Raising Spirits
    .accept 675 >>Accept Raising Spirits
    .target Gor'mul
step
    .goto 1417,74.72,36.29
    >>Talk to |cRXP_FRIENDLY_Tor'gan|r
    .turnin 675 >>Turn in Raising Spirits
    .accept 701 >>Accept Guile of the Raptor
    .target Tor'gan
step
    .goto 1417,52.04,50.73
    >>Collect |cRXP_LOOT_[Thundering Key]|r from |cRXP_PICK_Stone of Outer Binding|r
    *Gather the Burning Key, the Cresting Key and the Thundering Key from the Stone of West Binding, the Stone of East Binding and the Stone of Outer Binding.
    .complete 651,3 --Stones of Binding
step
    .goto 1417,50.54,64.59
    >>Collect |cRXP_LOOT_[Raptor Heart]|r from |cRXP_ENEMY_Highland Fleshstalker|r
    *Acquire 12 Raptor Hearts from Highland Fleshstalkers for Tor'gan.
    .complete 701,1 --Guile of the Raptor
    .mob Highland Fleshstalker
step
    .goto 1417,51.99,76.85
    >>Kill |cRXP_ENEMY_Boulderfist Brute|r. Kill |cRXP_ENEMY_Boulderfist Magus|r
    *Kill 10 Boulderfist Brutes and 4 Boulderfist Magi, and return to Drum Fel in the Hammerfall outpost.
    .complete 678,1 --Call to Arms
    .complete 678,2 --Call to Arms
    .mob Boulderfist Brute
    .mob Boulderfist Magus
step
    .goto 1417,36.23,57.38
    >>Click the |cRXP_PICK_Stone of Inner Binding|r
    .turnin 651 >>Turn in Stones of Binding
step
    .goto 1417,74.24,33.92
    >>Talk to |cRXP_FRIENDLY_Drum Fel|r
    .turnin 678 >>Turn in Call to Arms
    .target Drum Fel
step
    .goto 1417,74.72,36.29
    >>Talk to |cRXP_FRIENDLY_Tor'gan|r
    .turnin 701 >>Turn in Guile of the Raptor
    .accept 702 >>Accept Guile of the Raptor
    .target Tor'gan
step
    .goto 1417,72.64,33.93
    >>Talk to |cRXP_FRIENDLY_Gor'mul|r
    .turnin 702 >>Turn in Guile of the Raptor
    .accept 847 >>Accept Guile of the Raptor
    .target Gor'mul
step
    .goto 1417,74.72,36.29
    >>Talk to |cRXP_FRIENDLY_Tor'gan|r
    .turnin 847 >>Turn in Guile of the Raptor
    .target Tor'gan
step
    .goto 2548,58.13,45.32
    >>Talk to |cRXP_FRIENDLY_Tan'jani|r
    .turnin 95143 >>Turn in Finding Tan'jani
    .target Tan'jani
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
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 30-39
#name 33-41 Scarlet Monastery Library pre-quests
#displayname 33-41 Scarlet Monastery Library pre-quests
#next 33-41 Scarlet Monastery Library
step
    +|cRXP_WARN_Scarlet Monastery Library: pre-quests|r. 4 quests, solo (no group needed), roughly 45 min. The run guide comes after this one. Click to start.
    *Pre-quests: Test of Lore
step
    .goto 1441,53.95,41.49
    >>Talk to |cRXP_FRIENDLY_Dorn Plainstalker|r
    .accept 1152 >>Accept Test of Lore
    .target Dorn Plainstalker
step
    .goto 1442,78.8,45.69
    >>Talk to |cRXP_FRIENDLY_Braug Dimspirit|r
    .turnin 1152 >>Turn in Test of Lore
    .accept 1154 >>Accept Test of Lore
    .target Braug Dimspirit
step
    .goto 1440,75.57,74.37
    >>Collect |cRXP_LOOT_[Legacy of the Aspects]|r from |cRXP_PICK_The Legacy of the Aspects|r
    *Find the Legacy of the Aspects and return it to Braug Dimspirit near the entrance to Talondeep Path in Stonetalon Mountains.
    .complete 1154,1 --Test of Lore
step
    .goto 1442,78.8,45.69
    >>Talk to |cRXP_FRIENDLY_Braug Dimspirit|r
    .turnin 1154 >>Turn in Test of Lore
    .accept 6627 >>Accept Test of Lore
    .target Braug Dimspirit
step
    .goto 1442,78.8,45.69
    >>Talk to |cRXP_FRIENDLY_Braug Dimspirit|r
    .turnin 6627 >>Turn in Test of Lore
    .accept 1159 >>Accept Test of Lore
    .target Braug Dimspirit
step
    .goto 1458,57.8,65.42
    >>Talk to |cRXP_FRIENDLY_Parqual Fintallas|r
    .turnin 1159 >>Turn in Test of Lore
    .target Parqual Fintallas
step
    +|cRXP_WARN_Pre-quests done.|r Next: Scarlet Monastery Library itself. That guide tells you when to find a group. Click to continue.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 30-39
#name 33-41 Scarlet Monastery Library
#displayname 33-41 Scarlet Monastery Library
#next 34-37 Stranglethorn Vale
step
    +|cRXP_WARN_Scarlet Monastery Library|r (levels 33-41). Pick up 3 dungeon quests solo (roughly 35 min with the hand-ins), then ONE run with a group (roughly 35 min). No group needed until the run step. Click to start.
    *Door: Library: the open portal farthest right inside the main building. No key. Doan's Strongbox (behind Arcanist Doan) drops The Scarlet Key for Armory and Cathedral.
    *Four wings: Graveyard 30-38, Library 33-41, Armory 36-44, Cathedral 38-46.
    *Its 4 pre-quests are in the guide before this one. Skipped them? Some quests below won't be offered: skip those steps.
    *Keep for a later wing (hand in after it): Into The Scarlet Monastery
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1458,57.8,65.42
    >>Talk to |cRXP_FRIENDLY_Parqual Fintallas|r
    .accept 1160 >>Accept Test of Lore
    .target Parqual Fintallas
step
    .goto 1458,56.25,92.2
    >>Talk to |cRXP_FRIENDLY_Varimathras|r
    .accept 1048 >>Accept Into The Scarlet Monastery
    .target Varimathras
step
    .goto 1456,34.4,46.87
    >>Talk to |cRXP_FRIENDLY_Sage Truthseeker|r
    .accept 1049 >>Accept Compendium of the Fallen << Orc/Tauren/Troll
    .target Sage Truthseeker
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in.|r
step
    .goto 1420,82.6,33.8
    >>Enter |cRXP_WARN_Scarlet Monastery Library|r with your group. Quest goals inside:
    *Into The Scarlet Monastery: Kill High Inquisitor Whitemane, Scarlet Commander Mograine, Herod, the Scarlet Champion and Houndmaster Loksey and then report back to Varimathras in the Undercity.
    *Compendium of the Fallen: Retrieve the Compendium of the Fallen from the Monastery in Tirisfal Glades and return to Sage Truthseeker in Thunder Bluff.
    *Test of Lore: Find The Beginnings of the Undead Threat, and return it to Parqual Fintallas in Undercity.
    .complete 1048,4 --Into The Scarlet Monastery
    .complete 1049,1 << Orc/Tauren/Troll --Compendium of the Fallen
    .complete 1160,1 --Test of Lore
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1456,34.4,46.87
    >>Talk to |cRXP_FRIENDLY_Sage Truthseeker|r
    .turnin 1049 >>Turn in Compendium of the Fallen << Orc/Tauren/Troll
    .target Sage Truthseeker
step
    .goto 1458,57.8,65.42
    >>Talk to |cRXP_FRIENDLY_Parqual Fintallas|r
    .turnin 1160 >>Turn in Test of Lore
    .target Parqual Fintallas
step
    .goto 1420,82.6,33.8
    +Dungeon entrance: Scarlet Monastery Library. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 30-39
#name 34-37 Stranglethorn Vale
#displayname 34-37 Stranglethorn Vale
#next 40-41 Arathi Highlands (2nd visit)
step
    .zone 1434 >>Travel to Stranglethorn Vale
    *How: Fly to Grom'gol (or the zeppelin Orgrimmar -> Grom'gol).
    *Level for this part: 34-37. 37 quests, roughly 4 h 55 min.
step
    #completewith next
    .goto 1434,32.54,29.35,15,0
    >>Talk to |cRXP_FRIENDLY_Thysta|r if you don't have this flight path yet
    .fp Thysta >>Get the flight path
    .target Thysta
step
    .goto 1434,32.17,28.9
    >>Talk to |cRXP_FRIENDLY_Commander Aggro'gosh|r
    .accept 95141 >>Accept Report to Rog'mar
    .accept 568 >>Accept The Defense of Grom'gol
    .target Commander Aggro'gosh
step
    .goto 1434,32.78,28.43
    >>Talk to |cRXP_FRIENDLY_Gemmil|r
    .accept 97453 >>Accept Weed Whacked
    .target Gemmil
step
    .goto 1434,32.16,27.72
    >>Talk to |cRXP_FRIENDLY_Nimboya|r
    .accept 581 >>Accept Hunt for Yenniku
    .target Nimboya
step
    .goto 1434,32.27,27.71
    >>Talk to |cRXP_FRIENDLY_Kin'weelay|r
    .accept 596 >>Accept Bloody Bone Necklaces
    .accept 629 >>Accept The Vile Reef
    .target Kin'weelay
step
    .goto 1434,31.86,29.41
    >>Kill |cRXP_ENEMY_Lashtail Raptor|r. Kill |cRXP_ENEMY_Carnivorous Weed|r
    *Commander Aggro'gosh of the Grom'gol base camp wants you to kill 15 Lashtail Raptors.
    *Slay 6 Carnivorous Weeds south of Grom'gol and then inform Gemmil's mother.
    .complete 568,1 --The Defense of Grom'gol
    .complete 97453,1 --Weed Whacked
    .mob Lashtail Raptor
    .mob Carnivorous Weed
step
    .goto 1434,32.17,28.9
    >>Talk to |cRXP_FRIENDLY_Commander Aggro'gosh|r
    .turnin 568 >>Turn in The Defense of Grom'gol
    .target Commander Aggro'gosh
step
    .goto 1434,32.7,29.23
    >>Talk to |cRXP_FRIENDLY_Nerrist|r
    .turnin 97453 >>Turn in Weed Whacked
    .target Nerrist
step
    .goto 1434,32.17,28.9
    >>Talk to |cRXP_FRIENDLY_Commander Aggro'gosh|r
    .accept 569 >>Accept The Defense of Grom'gol
    .target Commander Aggro'gosh
step
    .goto 1434,35.55,30.92
    >>Kill |cRXP_ENEMY_Mosh'Ogg Brute|r. Kill |cRXP_ENEMY_Mosh'Ogg Witch Doctor|r
    *Commander Aggro'gosh of the Grom'gol base camp wants you to kill 10 Ogre Brutes and 5 Ogre Witch Doctors.
    .complete 569,1 --The Defense of Grom'gol
    .complete 569,2 --The Defense of Grom'gol
    .mob Mosh'Ogg Brute
    .mob Mosh'Ogg Witch Doctor
step
    .goto 1434,32.17,28.9
    >>Talk to |cRXP_FRIENDLY_Commander Aggro'gosh|r
    .turnin 569 >>Turn in The Defense of Grom'gol
    .target Commander Aggro'gosh
step
    .goto 1434,24.82,23.03
    >>Collect |cRXP_LOOT_[Tablet Shard]|r from |cRXP_PICK_Gri'lek the Wanderer|r, |cRXP_PICK_Gri'lek the Wanderer|r
    *Bring a Tablet Shard to Kin'weelay at the Grom'gol Base Camp.
    .complete 629,1 --The Vile Reef
step
    .goto 1434,32.27,27.71
    >>Talk to |cRXP_FRIENDLY_Kin'weelay|r
    .turnin 629 >>Turn in The Vile Reef
    .accept 95748 >>Accept The Gurubashi Legends of Old
    .target Kin'weelay
step
    .goto 1434,31.5,12.86
    >>Click the |cRXP_PICK_Thoroughly Scavenged Supplies|r
    .accept 97328 >>Accept Anything of Value
step
    .goto 1434,35.66,10.53
    >>Talk to |cRXP_FRIENDLY_Barnil Stonepot|r
    .accept 583 >>Accept Welcome to the Jungle
    .accept 339 >>Accept Chapter I
    .accept 340 >>Accept Chapter II
    .accept 341 >>Accept Chapter III
    .accept 342 >>Accept Chapter IV
    .target Barnil Stonepot
step
    .goto 1434,35.66,10.81
    >>Talk to |cRXP_FRIENDLY_Hemet Nesingwary|r
    .turnin 583 >>Turn in Welcome to the Jungle
    .target Hemet Nesingwary
step
    .goto 1434,35.66,10.53
    >>Talk to |cRXP_FRIENDLY_Barnil Stonepot|r
    .accept 338 >>Accept The Green Hills of Stranglethorn
    .target Barnil Stonepot
step
    >>Collect |cRXP_LOOT_[Green Hills of Stranglethorn - Chapter I]|r. Collect |cRXP_LOOT_[Green Hills of Stranglethorn - Chapter II]|r. Collect |cRXP_LOOT_[Green Hills of Stranglethorn - Chapter III]|r. Collect |cRXP_LOOT_[Green Hills of Stranglethorn - Chapter IV]|r
    *Collect the missing pages from The Green Hills of Stranglethorn manuscript. Once all four chapters are complete, return them to Barnil.
    .complete 338,1 --The Green Hills of Stranglethorn
    .complete 338,2 --The Green Hills of Stranglethorn
    .complete 338,3 --The Green Hills of Stranglethorn
    .complete 338,4 --The Green Hills of Stranglethorn
step
    .goto 1434,35.66,10.53
    >>Talk to |cRXP_FRIENDLY_Barnil Stonepot|r
    .turnin 338 >>Turn in The Green Hills of Stranglethorn
    .target Barnil Stonepot
step
    .goto 1434,44.27,7.9
    >>Talk to |cRXP_FRIENDLY_Wendel Mathers|r
    .accept 97047 >>Accept The Cook in the Cage
    .target Wendel Mathers
step
    .goto 1434,49.94,3.95
    >>Collect |cRXP_LOOT_[Compound Cage Key]|r from |cRXP_ENEMY_Colonel Kurzen|r, |cRXP_ENEMY_Kurzen Elite|r, |cRXP_ENEMY_Kurzen Subchief|r. Collect |cRXP_LOOT_[Kurzen Fighter's Uniform]|r from |cRXP_PICK_Kurzen Supply Crate|r
    *Find a key to Wendel's cage, and a disguise for him to sneak out, within the Kurzen compound.
    .complete 97047,1 --The Cook in the Cage
    .complete 97047,2 --The Cook in the Cage
    .mob Colonel Kurzen
    .mob Kurzen Elite
step
    .goto 1434,44.27,7.9
    >>Talk to |cRXP_FRIENDLY_Wendel Mathers|r
    .turnin 97047 >>Turn in The Cook in the Cage
    .accept 97048 >>Accept Returning to Port
    .target Wendel Mathers
step
    .goto 1434,25.66,12.14
    >>Collect |cRXP_LOOT_[Bloodscalp Tusk]|r from |cRXP_ENEMY_Bloodscalp Warrior|r, |cRXP_ENEMY_Bloodscalp Scout|r, |cRXP_ENEMY_Bloodscalp Hunter|r. Collect |cRXP_LOOT_[Bloody Bone Necklace]|r from |cRXP_ENEMY_Bloodscalp Warrior|r, |cRXP_ENEMY_Bloodscalp Scout|r, |cRXP_ENEMY_Bloodscalp Hunter|r. Collect |cRXP_LOOT_[The Third Troll Legend]|r from |cRXP_PICK_Fall of Gurubashi|r. Collect |cRXP_LOOT_[Stolen Shipment]|r from |cRXP_PICK_Stolen Shipment|r. Collect |cRXP_LOOT_[Green Hills of Stranglethorn - Page 1]|r from |cRXP_ENEMY_Bloodscalp Warrior|r, |cRXP_ENEMY_Bloodscalp Scout|r, |cRXP_ENEMY_Bloodscalp Hunter|r. Collect |cRXP_LOOT_[Green Hills of Stranglethorn - Page 4]|r from |cRXP_ENEMY_Bloodscalp Warrior|r, |cRXP_ENEMY_Bloodscalp Scout|r, |cRXP_ENEMY_Bloodscalp Hunter|r. Collect |cRXP_LOOT_[Green Hills of Stranglethorn - Page 6]|r from |cRXP_ENEMY_Bloodscalp Warrior|r, |cRXP_ENEMY_Bloodscalp Scout|r, |cRXP_ENEMY_Bloodscalp Hunter|r. Collect |cRXP_LOOT_[Green Hills of Stranglethorn - Page 8]|r from |cRXP_ENEMY_Bloodscalp Warrior|r, |cRXP_ENEMY_Bloodscalp Scout|r, |cRXP_ENEMY_Bloodscalp Hunter|r. Collect |cRXP_LOOT_[Green Hills of Stranglethorn - Page 10]|r from |cRXP_ENEMY_Bloodscalp Warrior|r, |cRXP_ENEMY_Bloodscalp Scout|r, |cRXP_ENEMY_Bloodscalp Hunter|r. Collect |cRXP_LOOT_[Green Hills of Stranglethorn - Page 11]|r from |cRXP_ENEMY_Bloodscalp Warrior|r, |cRXP_ENEMY_Bloodscalp Scout|r, |cRXP_ENEMY_Bloodscalp Hunter|r. Collect |cRXP_LOOT_[Green Hills of Stranglethorn - Page 14]|r from |cRXP_ENEMY_Bloodscalp Warrior|r, |cRXP_ENEMY_Bloodscalp Scout|r, |cRXP_ENEMY_Bloodscalp Hunter|r. Collect |cRXP_LOOT_[Green Hills of Stranglethorn - Page 16]|r from |cRXP_ENEMY_Bloodscalp Warrior|r, |cRXP_ENEMY_Bloodscalp Scout|r, |cRXP_ENEMY_Bloodscalp Hunter|r. Collect |cRXP_LOOT_[Green Hills of Stranglethorn - Page 18]|r from |cRXP_ENEMY_Bloodscalp Warrior|r, |cRXP_ENEMY_Bloodscalp Scout|r, |cRXP_ENEMY_Bloodscalp Hunter|r. Collect |cRXP_LOOT_[Green Hills of Stranglethorn - Page 20]|r from |cRXP_ENEMY_Bloodscalp Warrior|r, |cRXP_ENEMY_Bloodscalp Scout|r, |cRXP_ENEMY_Bloodscalp Hunter|r. Collect |cRXP_LOOT_[Green Hills of Stranglethorn - Page 21]|r from |cRXP_ENEMY_Bloodscalp Warrior|r, |cRXP_ENEMY_Bloodscalp Scout|r, |cRXP_ENEMY_Bloodscalp Hunter|r. Collect |cRXP_LOOT_[Green Hills of Stranglethorn - Page 24]|r from |cRXP_ENEMY_Bloodscalp Warrior|r, |cRXP_ENEMY_Bloodscalp Scout|r, |cRXP_ENEMY_Bloodscalp Hunter|r. Collect |cRXP_LOOT_[Green Hills of Stranglethorn - Page 25]|r from |cRXP_ENEMY_Bloodscalp Warrior|r, |cRXP_ENEMY_Bloodscalp Scout|r, |cRXP_ENEMY_Bloodscalp Hunter|r. Collect |cRXP_LOOT_[Green Hills of Stranglethorn - Page 26]|r from |cRXP_ENEMY_Bloodscalp Warrior|r, |cRXP_ENEMY_Bloodscalp Scout|r, |cRXP_ENEMY_Bloodscalp Hunter|r. Collect |cRXP_LOOT_[Green Hills of Stranglethorn - Page 27]|r from |cRXP_ENEMY_Bloodscalp Warrior|r, |cRXP_ENEMY_Bloodscalp Scout|r, |cRXP_ENEMY_Bloodscalp Hunter|r
    *Bring 9 Bloodscalp Tusks to Nimboya at the Grom'gol Base Camp.
    *Bring 25 Bloody Bone Necklaces to Kin'weelay at the Grom'gol Base Camp.
    *Use the hide and charcoal to create a rubbing of the Third Troll Legend tablet.
    *Recover 8 Stolen Shipments from the Ruins of Zul'Kunda in Stranglethorn Vale and return your haul to someone in Booty Bay.
    *Bring pages 1, 4, 6, and 8 of Nesingwary's The Green Hills of Stranglethorn to Barnil Stonepot in order to complete Chapter I.
    *Bring pages 10, 11, 14 and 16 of Nesingwary's The Green Hills of Stranglethorn to Barnil Stonepot in order to complete Chapter II.
    *Bring pages 18, 20, 21and 24 of Nesingwary's The Green Hills of Stranglethorn to Barnil Stonepot in order to complete Chapter III.
    *Bring pages 25, 26, and 27 of Nesingwary's The Green Hills of Stranglethorn to Barnil Stonepot in order to complete Chapter IV.
    .complete 581,1 --Hunt for Yenniku
    .complete 596,1 --Bloody Bone Necklaces
    .complete 95748,1 --The Gurubashi Legends of Old
    .complete 97328,1 --Anything of Value
    .complete 339,1 --Chapter I
    .complete 339,2 --Chapter I
    .complete 339,3 --Chapter I
    .complete 339,4 --Chapter I
    .complete 340,1 --Chapter II
    .complete 340,2 --Chapter II
    .complete 340,3 --Chapter II
    .complete 340,4 --Chapter II
    .complete 341,1 --Chapter III
    .complete 341,2 --Chapter III
    .complete 341,3 --Chapter III
    .complete 341,4 --Chapter III
    .complete 342,1 --Chapter IV
    .complete 342,2 --Chapter IV
    .complete 342,3 --Chapter IV
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
    .goto 1434,35.66,10.53
    >>Talk to |cRXP_FRIENDLY_Barnil Stonepot|r
    .turnin 339 >>Turn in Chapter I
    .turnin 340 >>Turn in Chapter II
    .turnin 341 >>Turn in Chapter III
    .turnin 342 >>Turn in Chapter IV
    .target Barnil Stonepot
step
    .goto 1434,32.16,27.72
    >>Talk to |cRXP_FRIENDLY_Nimboya|r
    .turnin 581 >>Turn in Hunt for Yenniku
    .target Nimboya
step
    .goto 1434,32.27,27.71
    >>Talk to |cRXP_FRIENDLY_Kin'weelay|r
    .turnin 596 >>Turn in Bloody Bone Necklaces
    .turnin 95748 >>Turn in The Gurubashi Legends of Old
    .accept 95770 >>Accept Locating the Lost City
    .target Kin'weelay
step
    .goto 1434,32.17,28.9
    >>Talk to |cRXP_FRIENDLY_Commander Aggro'gosh|r
    .accept 95773 >>Accept Enemies in the Water
    .target Commander Aggro'gosh
step
    .goto 1434,32.16,27.72
    >>Talk to |cRXP_FRIENDLY_Nimboya|r
    .accept 582 >>Accept Headhunting
    .target Nimboya
step
    .goto 1434,22.7,25.92
    >>Find the Drowned City Entrance. Collect |cRXP_LOOT_[Brinescale Trident]|r from |cRXP_ENEMY_Brinescale Skirmisher|r
    *Explore the Vile Reef and find the cavern entrance.
    *Gather 10 Brinescale Tridents from Brinescale Skirmishers.
    .complete 95770,1 --Locating the Lost City
    .complete 95773,1 --Enemies in the Water
    .mob Brinescale Skirmisher
step
    .goto 1434,32.27,27.71
    >>Talk to |cRXP_FRIENDLY_Kin'weelay|r
    .turnin 95770 >>Turn in Locating the Lost City
    .target Kin'weelay
step
    .goto 1434,32.17,28.9
    >>Talk to |cRXP_FRIENDLY_Commander Aggro'gosh|r
    .turnin 95773 >>Turn in Enemies in the Water
    .target Commander Aggro'gosh
step
    .goto 1434,20.04,11.67
    >>Collect |cRXP_LOOT_[Shrunken Head]|r from |cRXP_ENEMY_Bloodscalp Headhunter|r
    *Bring 20 Shrunken Heads to Nimboya at the Grom'gol Base Camp.
    .complete 582,1 --Headhunting
    .mob Bloodscalp Headhunter
step
    .goto 1434,32.16,27.72
    >>Talk to |cRXP_FRIENDLY_Nimboya|r
    .turnin 582 >>Turn in Headhunting
    .accept 584 >>Accept Bloodscalp Clan Heads
    .target Nimboya
step
    .goto 1434,23.44,8.12
    >>Collect |cRXP_LOOT_[Gan'zulah's Head]|r from |cRXP_ENEMY_Gan'zulah|r. Collect |cRXP_LOOT_[Nezzliok's Head]|r from |cRXP_ENEMY_Nezzliok the Dire|r
    *Bring Gan'zulah's Head and Nezzliok's Head to the bubbling cauldron at the Grom'gol Base Camp.
    .complete 584,1 --Bloodscalp Clan Heads
    .complete 584,2 --Bloodscalp Clan Heads
    .mob Gan'zulah
    .mob Nezzliok the Dire
step
    .goto 1434,32.22,27.6
    >>Click the |cRXP_PICK_Bubbling Cauldron|r
    .turnin 584 >>Turn in Bloodscalp Clan Heads
    .accept 585 >>Accept Speaking with Nezzliok
step
    .goto 1434,46.13,32.33
    >>Collect |cRXP_LOOT_[Balia'mah Trophy]|r from |cRXP_PICK_Balia'mah Trophy Skulls|r. Collect |cRXP_LOOT_[Ziata'jai Trophy]|r from |cRXP_PICK_Ziata'jai Trophy Skulls|r. Collect |cRXP_LOOT_[Zul'Mamwe Trophy]|r from |cRXP_PICK_Zul'Mamwe Trophy Skulls|r
    *Bring a Balia'mah Trophy, a Ziata'jai Trophy and a Zul'Mamwe Trophy to the Bubbling Cauldron at the Grom'gol Base Camp.
    .complete 585,1 --Speaking with Nezzliok
    .complete 585,2 --Speaking with Nezzliok
    .complete 585,3 --Speaking with Nezzliok
step
    .goto 1434,32.22,27.6
    >>Click the |cRXP_PICK_Bubbling Cauldron|r
    .turnin 585 >>Turn in Speaking with Nezzliok
step
    .goto 1434,26.35,73.56
    >>Talk to |cRXP_FRIENDLY_Wharfmaster Lozgil|r
    .turnin 97328 >>Turn in Anything of Value
    .turnin 97331 >>Turn in Zimmix's Great Escape
    .accept 97332 >>Accept Twice Misplaced Trust
    .target Wharfmaster Lozgil
step
    .goto 1434,27.69,76.66
    >>Talk to |cRXP_FRIENDLY_Captain Aransas|r
    .turnin 97048 >>Turn in Returning to Port
    .target Captain Aransas
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
    .accept 201 >>Accept Investigate the Camp
    .target Krazek
step
    .goto 1434,28.1,76.22
    >>Talk to |cRXP_FRIENDLY_First Mate Crazz|r
    .accept 595 >>Accept The Bloodsail Buccaneers
    .target First Mate Crazz
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
    .goto 1434,27.28,69.52
    >>Click the |cRXP_PICK_Bloodsail Correspondence|r
    .turnin 595 >>Turn in The Bloodsail Buccaneers
step
    .goto 1434,26.92,77.35
    >>Talk to |cRXP_FRIENDLY_Deeg|r
    .accept 587 >>Accept Up to Snuff
    .target Deeg
step
    .goto 1434,30.1,87.5
    >>Collect |cRXP_LOOT_[Snuff]|r from |cRXP_ENEMY_Bloodsail Raider|r, |cRXP_ENEMY_Bloodsail Mage|r, |cRXP_ENEMY_Bloodsail Swashbuckler|r
    *Deeg in Booty Bay wants you to bring him 15 shares of Snuff.
    .complete 587,1 --Up to Snuff
    .mob Bloodsail Raider
    .mob Bloodsail Mage
step
    .goto 1434,26.92,77.35
    >>Talk to |cRXP_FRIENDLY_Deeg|r
    .turnin 587 >>Turn in Up to Snuff
    .target Deeg
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
    .goto 1434,46.75,19.21
    >>Collect |cRXP_LOOT_[Tumbled Crystal]|r from |cRXP_ENEMY_Venture Co. Geologist|r
    *Retrieve 8 Tumbled Crystals and return them to Kebok in Booty Bay.
    .complete 213,1 --Hostile Takeover
    .mob Venture Co. Geologist
step
    .goto 1434,36.85,10.51
    >>Collect |cRXP_LOOT_[Large River Crocolisk Skin]|r from |cRXP_ENEMY_River Crocolisk|r. Locate the hunters' camp
    *Bring 2 Large River Crocolisk Skins to Drizzlik in Booty Bay.
    *Find the hunters' camp and report its location to Krazek in Booty Bay.
    .complete 575,1 --Supply and Demand
    .complete 201,1 --Investigate the Camp
    .mob River Crocolisk
step
    .goto 1434,25.66,12.14
    >>Collect |cRXP_LOOT_[Bloodscalp Ear]|r from |cRXP_ENEMY_Bloodscalp Warrior|r, |cRXP_ENEMY_Bloodscalp Scout|r, |cRXP_ENEMY_Bloodscalp Hunter|r
    *Acquire 15 Bloodscalp Ears and return them to Kebok in Booty Bay.
    .complete 189,1 --Bloodscalp Ears
    .mob Bloodscalp Warrior
    .mob Bloodscalp Scout
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
    .goto 1434,26.94,77.21
    >>Talk to |cRXP_FRIENDLY_Krazek|r
    .turnin 201 >>Turn in Investigate the Camp
    .target Krazek
step
    .goto 1434,27.12,77.21
    >>Talk to |cRXP_FRIENDLY_Crank Fizzlebub|r
    .turnin 605 >>Turn in Singing Blue Shards
    .target Crank Fizzlebub
step
    .goto 1434,28.29,77.59
    >>Talk to |cRXP_FRIENDLY_Drizzlik|r
    .accept 577 >>Accept Some Assembly Required
    .target Drizzlik
step
    .goto 1434,27.12,77.21
    >>Talk to |cRXP_FRIENDLY_Crank Fizzlebub|r
    .accept 600 >>Accept Venture Company Mining
    .target Crank Fizzlebub
step
    .goto 1434,41.67,43.91
    >>Collect |cRXP_LOOT_[Singing Blue Crystal]|r from |cRXP_ENEMY_Venture Co. Strip Miner|r, |cRXP_ENEMY_Venture Co. Foreman|r, |cRXP_ENEMY_Venture Co. Surveyor|r
    *Bring 10 Singing Blue Crystals to Crank Fizzlebub in Booty Bay.
    .complete 600,1 --Venture Company Mining
    .mob Venture Co. Strip Miner
    .mob Venture Co. Foreman
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
    .goto 1434,27.12,77.21
    >>Talk to |cRXP_FRIENDLY_Crank Fizzlebub|r
    .turnin 600 >>Turn in Venture Company Mining
    .target Crank Fizzlebub
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
    .goto 2548,59.37,45.6
    >>Talk to |cRXP_FRIENDLY_Krom'rosh|r
    .turnin 95141 >>Turn in Report to Rog'mar
    .target Krom'rosh
step
    .goto 2548,79.45,52.71
    >>Talk to |cRXP_FRIENDLY_Wharfmaster Whizzbuzz|r
    .turnin 97332 >>Turn in Twice Misplaced Trust
    .target Wharfmaster Whizzbuzz
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 40-49
#name 40-41 Arathi Highlands (2nd visit)
#displayname 40-41 Arathi Highlands (2nd visit)
#next 35-40 The Drowned City
step
    +|cRXP_WARN_Back to Arathi Highlands: its quests that were too high last time|r
step
    .zone 1417 >>Travel to Arathi Highlands
    *How: Fly to Hammerfall.
    *Level for this part: 40-41. 10 quests, roughly 1 h 35 min.
step
    .goto 1417,73.8,33.96
    >>Talk to |cRXP_FRIENDLY_Zengu|r
    .accept 640 >>Accept The Broken Sigil
    .target Zengu
step
    .goto 1417,74.04,33.07
    >>Talk to |cRXP_FRIENDLY_Korin Fel|r
    .accept 680 >>Accept The Real Threat
    .target Korin Fel
step
    .goto 1417,74.72,36.29
    >>Talk to |cRXP_FRIENDLY_Tor'gan|r
    .accept 673 >>Accept Foul Magics
    .target Tor'gan
step
    .goto 1417,33.58,44.59
    >>Loot |cRXP_LOOT_[Illegible Recipe]|r from |cRXP_ENEMY_Boulderfist Ogre|r, |cRXP_ENEMY_Boulderfist Enforcer|r, |cRXP_ENEMY_Boulderfist Brute|r, then click it to start the quest
    .accept 79624 >>Accept Anyone Can Cook
    .use 213422
    .mob Boulderfist Ogre
    .mob Boulderfist Enforcer
step
    .goto 1417,33.58,44.59
    >>Collect |cRXP_LOOT_[Illegible Recipe]|r from |cRXP_ENEMY_Boulderfist Ogre|r, |cRXP_ENEMY_Boulderfist Enforcer|r, |cRXP_ENEMY_Boulderfist Brute|r
    *Find an ogre who can read the Illegible Recipe.
    .complete 79624,1 --Anyone Can Cook
    .mob Boulderfist Ogre
    .mob Boulderfist Enforcer
step
    .goto 1417,23.89,60.57
    >>Collect |cRXP_LOOT_[Sigil Fragment]|r from |cRXP_ENEMY_Stromgarde Troll Hunter|r, |cRXP_ENEMY_Stromgarde Defender|r, |cRXP_ENEMY_Stromgarde Vindicator|r. Collect |cRXP_LOOT_[Or'Kalar's Head]|r from |cRXP_ENEMY_Or'Kalar|r. Collect |cRXP_LOOT_[Befouled Bloodstone Orb]|r from |cRXP_ENEMY_Marez Cowl|r
    *Retrieve the 5 Sigil Fragments from the defenders in Stromgarde, and bring them to Tor'gan in Hammerfall.
    *Slay Or'Kalar and bring his Head to Korin Fel in the Hammerfall outpost.
    *Retrieve Marez Cowl's Bloodstone Orb and bring it to Tor'gan in Hammerfall.
    .complete 640,1 --The Broken Sigil
    .complete 680,1 --The Real Threat
    .complete 673,1 --Foul Magics
    .mob Stromgarde Troll Hunter
    .mob Stromgarde Defender
    .mob Or'Kalar
    .mob Marez Cowl
step
    .goto 1417,32.8,81.48
    >>Talk to |cRXP_FRIENDLY_First Mate Nilzlix|r
    .accept 662 >>Accept Deep Sea Salvage
    .target First Mate Nilzlix
step
    .goto 1417,34,80.8
    >>Talk to |cRXP_FRIENDLY_Captain Steelgut|r
    .accept 664 >>Accept Drowned Sorrows
    .target Captain Steelgut
step
    .goto 1417,23.05,84.51
    >>Collect |cRXP_LOOT_[Maiden's Folly Charts]|r from |cRXP_PICK_Maiden's Folly Charts|r. Collect |cRXP_LOOT_[Maiden's Folly Log]|r from |cRXP_PICK_Maiden's Folly Log|r. Collect |cRXP_LOOT_[Spirit of Silverpine Charts]|r from |cRXP_PICK_Spirit of Silverpine Charts|r. Collect |cRXP_LOOT_[Spirit of Silverpine Log]|r from |cRXP_PICK_Spirit of Silverpine Log|r. Kill |cRXP_ENEMY_Daggerspine Raider|r. Kill |cRXP_ENEMY_Daggerspine Sorceress|r
    *First Mate Nilzlix wants you to retrieve the Charts and Logs from the Maiden's Folly and the Spirit of Silverpine.
    *Captain Steelgut in Faldir's Cove wants you to kill 10 Daggerspine Raiders and 3 Daggerspine Sorceresses.
    .complete 662,1 --Deep Sea Salvage
    .complete 662,2 --Deep Sea Salvage
    .complete 662,3 --Deep Sea Salvage
    .complete 662,4 --Deep Sea Salvage
    .complete 664,1 --Drowned Sorrows
    .complete 664,2 --Drowned Sorrows
    .mob Daggerspine Raider
    .mob Daggerspine Sorceress
step
    .goto 1417,32.8,81.48
    >>Talk to |cRXP_FRIENDLY_First Mate Nilzlix|r
    .turnin 662 >>Turn in Deep Sea Salvage
    .target First Mate Nilzlix
step
    .goto 1417,34,80.8
    >>Talk to |cRXP_FRIENDLY_Captain Steelgut|r
    .turnin 664 >>Turn in Drowned Sorrows
    .target Captain Steelgut
step
    .goto 1417,57.68,74.65
    >>Talk to |cRXP_FRIENDLY_Skonk|r
    .turnin 79624 >>Turn in Anyone Can Cook
    .accept 79677 >>Accept A Quick Grocery Run
    .target Skonk
step
    .goto 1417,74.72,36.29
    >>Talk to |cRXP_FRIENDLY_Tor'gan|r
    .turnin 640 >>Turn in The Broken Sigil
    .turnin 673 >>Turn in Foul Magics
    .accept 641 >>Accept Sigil of Thoradin
    .target Tor'gan
step
    .goto 1417,74.04,33.07
    >>Talk to |cRXP_FRIENDLY_Korin Fel|r
    .turnin 680 >>Turn in The Real Threat
    .target Korin Fel
step
    .goto 1417,73.8,33.96
    >>Talk to |cRXP_FRIENDLY_Zengu|r
    .turnin 641 >>Turn in Sigil of Thoradin
    .accept 643 >>Accept Sigil of Arathor
    .target Zengu
step
    .goto 1417,33.47,52.08
    >>Collect |cRXP_LOOT_[Sigil of Arathor]|r from |cRXP_ENEMY_Lieutenant Valorcall|r
    *Retrieve the Sigil of Arathor and return it to Zengu in Hammerfall.
    .complete 643,1 --Sigil of Arathor
    .mob Lieutenant Valorcall
step
    .goto 1417,73.8,33.96
    >>Talk to |cRXP_FRIENDLY_Zengu|r
    .turnin 643 >>Turn in Sigil of Arathor
    .target Zengu
step
    .goto 1424,78.7,34.86
    >>Collect |cRXP_LOOT_[Hybrid Haunch]|r from |cRXP_ENEMY_Wild Gryphon|r, |cRXP_ENEMY_Granistad|r, |cRXP_ENEMY_Kurdros|r
    *Gather the ingredients for Skonk's dish, then bring them to him in Arathi Highlands
    .complete 79677,1 --A Quick Grocery Run
    .mob Wild Gryphon
    .mob Granistad
step
    .goto 1417,21.35,83.98
    >>Collect |cRXP_LOOT_[Smuggler's Spice Blend]|r from |cRXP_PICK_Sealed Barrel|r
    *Gather the ingredients for Skonk's dish, then bring them to him in Arathi Highlands
    .complete 79677,2 --A Quick Grocery Run
step
    .goto 1417,57.68,74.65
    >>Talk to |cRXP_FRIENDLY_Skonk|r
    .turnin 79677 >>Turn in A Quick Grocery Run
    .accept 79678 >>Accept Taste Testing
    .target Skonk
step
    .goto 1417,57.68,74.65
    >>Talk to |cRXP_FRIENDLY_Skonk|r
    .turnin 79678 >>Turn in Taste Testing
    .target Skonk
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 30-39
#name 35-40 The Drowned City
#displayname 35-40 The Drowned City
#next 36-44 Scarlet Monastery Armory
step
    +|cRXP_WARN_The Drowned City|r (levels 35-40). Pick up 5 dungeon quests solo (roughly 35 min with the hand-ins), then ONE run with a group (roughly 1 h). No group needed until the run step. Click to start.
    *New Forever dungeon, underwater off the west coast of Stranglethorn, west of Grom'gol. Bring water breathing. Nearest flights: Booty Bay, Grom'gol.
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1434,32.27,27.71
    >>Talk to |cRXP_FRIENDLY_Kin'weelay|r
    .accept 95775 >>Accept The Drowned City
    .target Kin'weelay
step
    .goto 1434,32.17,28.9
    >>Talk to |cRXP_FRIENDLY_Commander Aggro'gosh|r
    .accept 95776 >>Accept The Only Good Brinescale...
    .target Commander Aggro'gosh
step
    .goto 1434,26.94,77.21
    >>Talk to |cRXP_FRIENDLY_Krazek|r
    .accept 95789 >>Accept Shady Saltseers
    .accept 95791 >>Accept The Saltseer Captain
    .target Krazek
step
    .goto 1412,32.5,20.66
    >>Talk to |cRXP_FRIENDLY_Mazu'kon|r
    .accept 96774 >>Accept Ancient Gurubashi Idol
    .target Mazu'kon
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in.|r
step
    .goto 1434,21.4,27.9
    >>Enter |cRXP_WARN_The Drowned City|r with your group. Quest goals inside:
    *The Drowned City: Use the hide and charcoal to create rubbings of the tablets found in the Drowned City.
    *The Only Good Brinescale...: Slay Var'Taka in the Drowned City.
    *Shady Saltseers: Collect 10 Voodoo Infused Artifacts from Saltseer pirates in the Drowned City.
    *The Saltseer Captain: Slay 3 Saltseer Coroners and Captain Dreadrise in the Drowned City.
    *Ancient Gurubashi Idol: Recover an Ancient Gurubashi Idol from the Drowned City.
    .complete 95775,1 --The Drowned City
    .complete 95775,2 --The Drowned City
    .complete 95775,3 --The Drowned City
    .complete 95775,4 --The Drowned City
    .complete 95776,1 --The Only Good Brinescale...
    .complete 95789,1 --Shady Saltseers
    .complete 95791,1 --The Saltseer Captain
    .complete 95791,2 --The Saltseer Captain
    .complete 96774,1 --Ancient Gurubashi Idol
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1434,32.17,28.9
    >>Talk to |cRXP_FRIENDLY_Commander Aggro'gosh|r
    .turnin 95776 >>Turn in The Only Good Brinescale...
    .target Commander Aggro'gosh
step
    .goto 1434,32.27,27.71
    >>Talk to |cRXP_FRIENDLY_Kin'weelay|r
    .turnin 95775 >>Turn in The Drowned City
    .target Kin'weelay
step
    .goto 1434,26.94,77.21
    >>Talk to |cRXP_FRIENDLY_Krazek|r
    .turnin 95789 >>Turn in Shady Saltseers
    .turnin 95791 >>Turn in The Saltseer Captain
    .target Krazek
step
    .goto 1412,32.5,20.66
    >>Talk to |cRXP_FRIENDLY_Mazu'kon|r
    .turnin 96774 >>Turn in Ancient Gurubashi Idol
    .target Mazu'kon
step
    .goto 1434,21.4,27.9
    +Dungeon entrance: The Drowned City. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 30-39
#name 36-44 Scarlet Monastery Armory
#displayname 36-44 Scarlet Monastery Armory
#next 37-38 Desolace
step
    +|cRXP_WARN_Scarlet Monastery Armory|r (levels 36-44). Pick up 0 dungeon quests solo (roughly 5 min with the hand-ins), then ONE run with a group (roughly 30 min). No group needed until the run step. Click to start.
    *Door: Armory: the closed door on the right as you enter. Needs The Scarlet Key (Library).
    *Four wings: Graveyard 30-38, Library 33-41, Armory 36-44, Cathedral 38-46.
    *Already picked up for an earlier wing: Into The Scarlet Monastery
    *Keep for a later wing (hand in after it): Into The Scarlet Monastery
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in.|r
step
    .goto 1420,82.6,33.8
    >>Enter |cRXP_WARN_Scarlet Monastery Armory|r with your group. Quest goals inside:
    *Into The Scarlet Monastery: Kill High Inquisitor Whitemane, Scarlet Commander Mograine, Herod, the Scarlet Champion and Houndmaster Loksey and then report back to Varimathras in the Undercity.
    .complete 1048,3 --Into The Scarlet Monastery
step
    .goto 1420,82.6,33.8
    +Dungeon entrance: Scarlet Monastery Armory. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 30-39
#name 37-38 Desolace
#displayname 37-38 Desolace
#next 33-44 Thousand Needles (2nd visit)
step
    #completewith next
    +|cRXP_WARN_On the way: lead-in quests in Swamp of Sorrows that open quests in Desolace|r
step
    .goto 1435,25.98,31.4
    >>Talk to |cRXP_FRIENDLY_Magtoor|r
    .accept 1389 >>Accept Draenethyst Crystals
    .target Magtoor
step
    .goto 1435,60.17,22.18
    >>Collect |cRXP_LOOT_[Draenethyst Crystal]|r from |cRXP_PICK_Draenethyst Crystals|r
    *Bring 6 Draenethyst crystals to Magtoor at The Harborage in the Swamp of Sorrows.
    .complete 1389,1 --Draenethyst Crystals
step
    .goto 1435,25.98,31.4
    >>Talk to |cRXP_FRIENDLY_Magtoor|r
    .turnin 1389 >>Turn in Draenethyst Crystals
    .accept 93464 >>Accept The Visiting Mage
    .target Magtoor
step
    .zone 1443 >>Travel to Desolace
    *How: In the Eastern Kingdoms? Zeppelin Grom'gol -> Orgrimmar first. Then fly to Shadowprey Village.
    *Level for this part: 37-38. 48 quests, roughly 7 h 55 min.
step
    #completewith next
    .goto 1443,21.6,74.13,15,0
    >>Talk to |cRXP_FRIENDLY_Thalon|r if you don't have this flight path yet
    .fp Thalon >>Get the flight path
    .target Thalon
step
    .goto 1443,38.88,27.16
    >>Talk to |cRXP_FRIENDLY_Azore Aldamort|r
    .turnin 93464 >>Turn in The Visiting Mage
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
    .goto 1443,62.33,38.99
    >>Talk to |cRXP_FRIENDLY_Bibbly F'utzbuckle|r
    .accept 5501 >>Accept Bone Collector
    .target Bibbly F'utzbuckle
step
    .goto 1443,55.41,55.81
    >>Talk to |cRXP_FRIENDLY_Nataka Longhorn|r
    .accept 5386 >>Accept Catch of the Day
    .target Nataka Longhorn
step
    .goto 1443,55.41,55.81
    >>Collect |cRXP_LOOT_[Kodo Bone]|r from |cRXP_PICK_Kodo Bones|r, |cRXP_PICK_Kodo Bones|r. Collect |cRXP_LOOT_[Bloodbelly Fish]|r
    *Bring 10 Kodo Bones from the Kodo Graveyard to Bibbly F'utzbuckle at Kormek's Hut.
    *Talk to Jinar'Zillen at Shadowprey Village, and then bring Nataka Longhorn 2 Bloodbelly fish.
    .complete 5501,1 --Bone Collector
    .complete 5386,1 --Catch of the Day
step
    .goto 1443,55.41,55.81
    >>Talk to |cRXP_FRIENDLY_Nataka Longhorn|r
    .turnin 5386 >>Turn in Catch of the Day
    .target Nataka Longhorn
step
    .goto 1443,56.29,59.68
    >>Talk to |cRXP_FRIENDLY_Gurda Wildmane|r
    .accept 93225 >>Accept Carved Centaur Totems
    .accept 1367 >>Accept Magram Alliance
    .accept 1368 >>Accept Gelkis Alliance
    .target Gurda Wildmane
step
    .goto 1443,56.19,59.57
    >>Talk to |cRXP_FRIENDLY_Felgur Twocuts|r
    .accept 1365 >>Accept Khan Dez'hepah
    .target Felgur Twocuts
step
    >>Earn the required reputation
    *Gain a Friendly reputation with the Magram, then speak with Warug.
    *Gain a Friendly reputation with the Gelkis, then speak with Uthek the Wise.
    .complete 1367,1 --Magram Alliance
    .complete 1368,1 --Gelkis Alliance
step
    .goto 1443,60.86,61.86
    >>Talk to |cRXP_FRIENDLY_Smeed Scrabblescrew|r
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
    .target Smeed Scrabblescrew
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
    .goto 1443,36.22,79.25
    >>Talk to |cRXP_FRIENDLY_Uthek the Wise|r
    .turnin 1368 >>Turn in Gelkis Alliance
    .accept 1370 >>Accept Stealing Supplies
    .accept 93045 >>Accept Test Your Theory
    .target Uthek the Wise
step
    .goto 1443,25.05,72.27
    >>Talk to |cRXP_FRIENDLY_Roon Wildmane|r
    .accept 5763 >>Accept Hunting in Stranglethorn
    .target Roon Wildmane
step
    .goto 1443,23.44,72.61
    >>Click the |cRXP_PICK_Lost Shipping Crate|r
    .accept 94895 >>Accept Lost Shipping Crate
step
    .goto 1443,22.64,71.97
    >>Talk to |cRXP_FRIENDLY_Mai'Lahii|r
    .accept 6142 >>Accept Clam Bait
    .target Mai'Lahii
step
    .goto 1443,23.32,72.87
    >>Talk to |cRXP_FRIENDLY_Drulzegar Skraghook|r
    .accept 6143 >>Accept Other Fish to Fry
    .target Drulzegar Skraghook
step
    .goto 1443,25.82,68.21
    >>Talk to |cRXP_FRIENDLY_Taiga Wisemane|r
    .accept 5381 >>Accept Hand of Iruxos
    .target Taiga Wisemane
step
    .goto 1443,25.32,67.05
    >>Talk to |cRXP_FRIENDLY_Aka'rai|r
    .accept 97265 >>Accept Hate the Hatefury
    .target Aka'rai
step
    >>Collect |cRXP_LOOT_[Demon Box]|r from |cRXP_ENEMY_Demon Spirit|r
    *Retrieve the Demon Box from Thunder Axe Fortress, and return it, along with the Demon Pick to Taiga Wisemane in Shadowprey Village.
    .complete 5381,1 --Hand of Iruxos
    .mob Demon Spirit
step
    .goto 1443,25.82,68.21
    >>Talk to |cRXP_FRIENDLY_Taiga Wisemane|r
    .turnin 5381 >>Turn in Hand of Iruxos
    .accept 5581 >>Accept Portals of the Legion
    .target Taiga Wisemane
step
    >>Kill |cRXP_ENEMY_Demon Portal Guardian|r
    *Banish 6 Portals at Mannoroc Coven and return to Taiga Wisemane at Shadowprey Village.
    .complete 5581,1 --Portals of the Legion
    .mob Demon Portal Guardian
step
    .goto 1443,25.82,68.21
    >>Talk to |cRXP_FRIENDLY_Taiga Wisemane|r
    .turnin 5581 >>Turn in Portals of the Legion
    .target Taiga Wisemane
step
    .goto 1443,21.89,78.97
    >>Collect |cRXP_LOOT_[Rackmore's Silver Key]|r from |cRXP_ENEMY_Drysnap Crawler|r, |cRXP_ENEMY_Drysnap Pincer|r
    *Find Rackmore's Silver Key. Find Rackmore's Golden Key. Find and open Rackmore's Chest.
    .complete 6161,1 --Claim Rackmore's Treasure!
    .mob Drysnap Crawler
    .mob Drysnap Pincer
step
    .goto 1443,70,78.62
    >>Collect |cRXP_LOOT_[Crudely Dried Meat]|r from |cRXP_PICK_Sack of Meat|r
    *Bring 6 bags of Crudely Dried Meat to Uthek the Wise in the Gelkis Village.
    .complete 1370,1 --Stealing Supplies
step
    .goto 1443,79.13,76.99
    >>Collect |cRXP_LOOT_[Gimashi's Findings]|r from |cRXP_ENEMY_Gimashi|r
    *Take Gimashi's notes on Draenethyst, and bring them back to Azore Aldamort.
    .complete 93465,1 --Notes on Draenethyst
    .mob Gimashi
step
    .goto 1443,74.97,68.16
    >>Talk to |cRXP_FRIENDLY_Warug|r
    .turnin 1367 >>Turn in Magram Alliance
    .accept 1369 >>Accept Broken Tears
    .target Warug
step
    .goto 1443,71.54,45.46
    >>Collect |cRXP_LOOT_[Carved Centaur Totem]|r from |cRXP_ENEMY_Kolkar Centaur|r, |cRXP_ENEMY_Kolkar Scout|r, |cRXP_ENEMY_Kolkar Mauler|r. Collect |cRXP_LOOT_[Khan Dez'hepah's Head]|r from |cRXP_ENEMY_Khan Dez'hepah|r
    *Acquire 5 Carved Centaur Totems by slaying centaur of any clan throughout Desolace, then return them to Gurda Wildmane at Ghost Walker Post.
    *Bring Khan Dez'hepah's Head to Felgur Twocuts in Desolace.
    .complete 93225,1 --Carved Centaur Totems
    .complete 1365,1 --Khan Dez'hepah
    .mob Kolkar Centaur
    .mob Kolkar Scout
    .mob Khan Dez'hepah
step
    .goto 1443,62.33,38.99
    >>Talk to |cRXP_FRIENDLY_Bibbly F'utzbuckle|r
    .turnin 5501 >>Turn in Bone Collector
    .turnin 79229 >>Turn in Highway Robbery
    .accept 79235 >>Accept On the Lam
    .target Bibbly F'utzbuckle
step
    .goto 1443,56.29,59.68
    >>Talk to |cRXP_FRIENDLY_Gurda Wildmane|r
    .turnin 93225 >>Turn in Carved Centaur Totems
    .target Gurda Wildmane
step
    .goto 1443,56.19,59.57
    >>Talk to |cRXP_FRIENDLY_Felgur Twocuts|r
    .turnin 1365 >>Turn in Khan Dez'hepah
    .accept 1366 >>Accept Centaur Bounty
    .target Felgur Twocuts
step
    .goto 1443,66.55,78.41
    >>Collect |cRXP_LOOT_[Centaur Ear]|r from |cRXP_ENEMY_Maraudine Pack Runner|r, |cRXP_ENEMY_Galthogran the Callous|r, |cRXP_ENEMY_Wep|r
    *Bring 15 Centaur Ears to Felgur Twocuts in Desolace.
    .complete 1366,1 --Centaur Bounty
    .mob Maraudine Pack Runner
    .mob Galthogran the Callous
step
    .goto 1443,56.19,59.57
    >>Talk to |cRXP_FRIENDLY_Felgur Twocuts|r
    .turnin 1366 >>Turn in Centaur Bounty
    .target Felgur Twocuts
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
    .goto 1443,40.83,94.75
    >>Collect |cRXP_LOOT_[Broken Tears]|r from |cRXP_PICK_Tear of Theradras|r
    *Maintain your reputation with the Magram, and bring 3 Broken Tears to Warug in the Magram Village.
    .complete 1369,1 --Broken Tears
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
    *Maintain your reputation with the Magram, and bring 3 Broken Tears to Warug in the Magram Village.
    .complete 1369,2 --Broken Tears
step
    .goto 1443,74.97,68.16
    >>Talk to |cRXP_FRIENDLY_Warug|r
    .turnin 1369 >>Turn in Broken Tears
    .accept 92743 >>Accept A Conqueror's Crown
    .accept 1371 >>Accept Gizmo for Warug
    .target Warug
step
    .goto 1443,74.97,68.16
    >>Talk to |cRXP_FRIENDLY_Warug|r
    .turnin 92743 >>Turn in A Conqueror's Crown
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
    .goto 1443,70.47,70.42
    >>Talk to |cRXP_FRIENDLY_Mirda|r
    .accept 92754 >>Accept A New Need for Shadow Protection
    .target Mirda
step
    .goto 1443,70.47,70.42
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
    .goto 1443,40.49,95.49
    >>Collect |cRXP_LOOT_[Khan Shaka's Head]|r from |cRXP_ENEMY_Khan Shaka|r
    *Maintain your reputation with the Magram, and bring the Head of Khan Shaka to Warug in the Magram Village in Desolace.
    .complete 1375,1 --Khan Shaka
    .mob Khan Shaka
step
    >>Earn the required reputation
    *Maintain your reputation with the Magram, and bring the Head of Khan Shaka to Warug in the Magram Village in Desolace.
    .complete 1375,2 --Khan Shaka
step
    .goto 1443,74.97,68.16
    >>Talk to |cRXP_FRIENDLY_Warug|r
    .turnin 1375 >>Turn in Khan Shaka
    .accept 1381 >>Accept Khan Hratha
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
    .goto 1443,77.34,20.35
    >>Kill |cRXP_ENEMY_Hatefury Trickster|r. Kill |cRXP_ENEMY_Hatefury Hellcaller|r. Kill |cRXP_ENEMY_Hatefury Shadowstalker|r. Kill |cRXP_ENEMY_Hatefury Felsworn|r. Kill |cRXP_ENEMY_Hatefury Rogue|r
    *Defeat a variety of Hatefury satyr at Sargeron in Desolace and then return to Aka'rai in Shadowprey Village.
    .complete 97265,1 --Hate the Hatefury
    .complete 97265,2 --Hate the Hatefury
    .complete 97265,3 --Hate the Hatefury
    .complete 97265,4 --Hate the Hatefury
    .complete 97265,5 --Hate the Hatefury
    .mob Hatefury Trickster
    .mob Hatefury Hellcaller
    .mob Hatefury Shadowstalker
    .mob Hatefury Felsworn
    .mob Hatefury Rogue
step
    .goto 1443,38.88,27.16
    >>Talk to |cRXP_FRIENDLY_Azore Aldamort|r
    .turnin 93465 >>Turn in Notes on Draenethyst
    .turnin 5741 >>Turn in Sceptre of Light
    .accept 6027 >>Accept Book of the Ancients
    .accept 93678 >>Accept Abridged Notes on Draenethyst
    .target Azore Aldamort
step
    .goto 1443,38.88,27.16
    >>Collect |cRXP_LOOT_[Soft-shelled Clam Meat]|r from |cRXP_ENEMY_Deepstrider Giant|r, |cRXP_ENEMY_Deepstrider Searcher|r, |cRXP_ENEMY_Slitherblade Naga|r. Kill |cRXP_ENEMY_Slitherblade Naga|r. Kill |cRXP_ENEMY_Slitherblade Sorceress|r. Collect |cRXP_LOOT_[Book of the Ancients]|r from |cRXP_ENEMY_Lord Kragaru|r
    *Find 10 pieces of Soft-shelled Clam Meat and bring it back to Mai'Lahii at Shadowprey Village.
    *Slay 7 Slitherblade Myrmidon, 7 Slitherblade Naga, and 5 Slitherblade Sorceresses, and then talk to Drulzegar at Shadowprey in Desolace.
    *Get the Book of the Ancients and return it to Azore Aldamort at the tower in Ethel Rethor.
    .complete 6142,1 --Clam Bait
    .complete 6143,2 --Other Fish to Fry
    .complete 6143,3 --Other Fish to Fry
    .complete 6027,1 --Book of the Ancients
    .mob Deepstrider Giant
    .mob Deepstrider Searcher
    .mob Slitherblade Naga
    .mob Slitherblade Sorceress
    .mob Lord Kragaru
step
    .goto 1443,38.88,27.16
    >>Talk to |cRXP_FRIENDLY_Azore Aldamort|r
    .turnin 6027 >>Turn in Book of the Ancients
    .target Azore Aldamort
step
    .goto 1443,31.41,17.67
    >>Collect |cRXP_LOOT_[Rackmore's Golden Key]|r from |cRXP_ENEMY_Slitherblade Tide Priestess|r, |cRXP_ENEMY_Slitherblade Sorceress|r, |cRXP_ENEMY_Slitherblade Warrior|r. Kill |cRXP_ENEMY_Slitherblade Myrmidon|r
    *Find Rackmore's Silver Key. Find Rackmore's Golden Key. Find and open Rackmore's Chest.
    *Slay 7 Slitherblade Myrmidon, 7 Slitherblade Naga, and 5 Slitherblade Sorceresses, and then talk to Drulzegar at Shadowprey in Desolace.
    .complete 6161,2 --Claim Rackmore's Treasure!
    .complete 6143,1 --Other Fish to Fry
    .mob Slitherblade Tide Priestess
    .mob Slitherblade Sorceress
    .mob Slitherblade Myrmidon
step
    .goto 1443,30,8.71
    >>Click the |cRXP_PICK_Rackmore's Chest|r
    .turnin 6161 >>Turn in Claim Rackmore's Treasure!
step
    .goto 1443,25.32,67.05
    >>Talk to |cRXP_FRIENDLY_Aka'rai|r
    .turnin 97265 >>Turn in Hate the Hatefury
    .target Aka'rai
step
    .goto 1443,22.64,71.97
    >>Talk to |cRXP_FRIENDLY_Mai'Lahii|r
    .turnin 6142 >>Turn in Clam Bait
    .target Mai'Lahii
step
    .goto 1443,23.32,72.87
    >>Talk to |cRXP_FRIENDLY_Drulzegar Skraghook|r
    .turnin 6143 >>Turn in Other Fish to Fry
    .target Drulzegar Skraghook
step
    .goto 2652,20.93,22.68
    >>Talk to |cRXP_FRIENDLY_Nerlokh|r
    .turnin 93045 >>Turn in Test Your Theory
    .target Nerlokh
step
    .goto 1434,35.66,10.81
    >>Talk to |cRXP_FRIENDLY_Hemet Nesingwary|r
    .turnin 5763 >>Turn in Hunting in Stranglethorn
    .target Hemet Nesingwary
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
    .goto 2548,77.1,52.9
    >>Talk to |cRXP_FRIENDLY_Friz Frazzlespark|r
    .turnin 94895 >>Turn in Lost Shipping Crate
    .target Friz Frazzlespark
step
    .goto 1435,25.98,31.4
    >>Talk to |cRXP_FRIENDLY_Magtoor|r
    .turnin 93678 >>Turn in Abridged Notes on Draenethyst
    .target Magtoor
step
    .goto 1435,65.07,21.97
    >>Collect |cRXP_LOOT_[Draenethyst Shard]|r from |cRXP_ENEMY_Ongeku|r
    *Maintain your reputation with the Gelkis, and bring a Draenethyst Shard to Uthek the Wise in the Gelkis Village in Desolace.
    .complete 1373,1 --Ongeku
    .mob Ongeku
step
    .goto 1417,94.15,69.28
    >>Click the |cRXP_PICK_Illari's Loot Cache|r
    .turnin 79242 >>Turn in No Honor Among Thieves
step
    .goto 1424,63.24,20.66
    >>Talk to |cRXP_FRIENDLY_Krusk|r
    .accept 1361 >>Accept Regthar Deathgate
    .target Krusk
step
    .goto 1413,45.34,28.41
    >>Talk to |cRXP_FRIENDLY_Regthar Deathgate|r
    .turnin 1361 >>Turn in Regthar Deathgate
    .accept 1362 >>Accept The Kolkar of Desolace
    .target Regthar Deathgate
step
    .goto 1443,56.19,59.57
    >>Talk to |cRXP_FRIENDLY_Felgur Twocuts|r
    .turnin 1362 >>Turn in The Kolkar of Desolace
    .target Felgur Twocuts
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
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 30-39
#name 33-44 Thousand Needles (2nd visit)
#displayname 33-44 Thousand Needles (2nd visit)
#next 37-46 Razorfen Downs pre-quests
step
    +|cRXP_WARN_Back to Thousand Needles: its quests that were too high last time|r
step
    #completewith next
    +|cRXP_WARN_On the way: lead-in quests in Undercity, Stranglethorn Vale, The Barrens, Orgrimmar that open quests in Thousand Needles|r
step
    .goto 1458,57.8,65.42
    >>Talk to |cRXP_FRIENDLY_Parqual Fintallas|r
    .accept 6628 >>Accept Test of Lore
    .target Parqual Fintallas
step
    .goto 1458,57.8,65.42
    >>Talk to |cRXP_FRIENDLY_Parqual Fintallas|r
    .turnin 6628 >>Turn in Test of Lore
    .target Parqual Fintallas
step
    .goto 1434,27.12,77.21
    >>Talk to |cRXP_FRIENDLY_Crank Fizzlebub|r
    .accept 621 >>Accept Zanzil's Secret
    .target Crank Fizzlebub
step
    .goto 1434,38.68,56.61
    >>Collect |cRXP_LOOT_[Zanzil's Mixture]|r from |cRXP_ENEMY_Zanzil Zombie|r, |cRXP_ENEMY_Zanzil Hunter|r, |cRXP_ENEMY_Zanzil Witch Doctor|r
    *Bring 12 samples of Zanzil's Mixture to Crank Fizzlebub in Booty Bay.
    .complete 621,1 --Zanzil's Secret
    .mob Zanzil Zombie
    .mob Zanzil Hunter
step
    .goto 1434,27.12,77.21
    >>Talk to |cRXP_FRIENDLY_Crank Fizzlebub|r
    .turnin 621 >>Turn in Zanzil's Secret
    .target Crank Fizzlebub
step
    .goto 1413,51.07,29.63
    >>Talk to |cRXP_FRIENDLY_Korran|r
    .accept 1145 >>Accept The Swarm Grows
    .target Korran
step
    .goto 1454,75.23,34.24
    >>Talk to |cRXP_FRIENDLY_Belgrom Rockmaul|r
    .turnin 1145 >>Turn in The Swarm Grows
    .accept 1146 >>Accept The Swarm Grows
    .target Belgrom Rockmaul
step
    .zone 1441 >>Travel to Thousand Needles
    *How: Fly to Freewind Post.
    *Level for this part: 33-44. 26 quests, roughly 5 h 45 min.
step
    .goto 1441,67.58,63.94
    >>Talk to |cRXP_FRIENDLY_Moktar Krin|r
    .turnin 1146 >>Turn in The Swarm Grows
    .accept 1147 >>Accept The Swarm Grows
    .target Moktar Krin
step
    .goto 1441,78.06,77.13
    >>Talk to |cRXP_FRIENDLY_Fizzle Brassbolts|r
    .accept 1106 >>Accept Martek the Exiled
    .target Fizzle Brassbolts
step
    .goto 1441,78.14,77.12
    >>Talk to |cRXP_FRIENDLY_Wizzle Brassbolts|r
    .accept 1107 >>Accept Encrusted Tail Fins
    .target Wizzle Brassbolts
step
    .goto 1441,77.79,77.27
    >>Talk to |cRXP_FRIENDLY_Kravel Koalbeard|r
    .accept 1111 >>Accept Wharfmaster Dizzywig
    .target Kravel Koalbeard
step
    .goto 1441,67.72,83.51
    >>Kill |cRXP_ENEMY_Silithid Searcher|r. Kill |cRXP_ENEMY_Silithid Hive Drone|r. Kill |cRXP_ENEMY_Silithid Invader|r
    *Kill 5 Silithid Searchers, 5 Silithid Hive Drones, and 5 Silithid Invaders and return to Moktar Krin in Thousand Needles.
    .complete 1147,1 --The Swarm Grows
    .complete 1147,2 --The Swarm Grows
    .complete 1147,3 --The Swarm Grows
    .mob Silithid Searcher
    .mob Silithid Hive Drone
    .mob Silithid Invader
step
    .goto 1441,66.94,86.17
    >>Loot |cRXP_LOOT_[Cracked Silithid Carapace]|r from |cRXP_ENEMY_Silithid Searcher|r, |cRXP_ENEMY_Silithid Invader|r, |cRXP_ENEMY_Silithid Ravager|r, then click it to start the quest
    .accept 1148 >>Accept Parts of the Swarm
    .use 5877
    .mob Silithid Searcher
    .mob Silithid Invader
step
    .goto 1441,66.94,86.17
    >>Collect |cRXP_LOOT_[Silithid Heart]|r from |cRXP_ENEMY_Silithid Searcher|r, |cRXP_ENEMY_Silithid Invader|r, |cRXP_ENEMY_Silithid Ravager|r. Collect |cRXP_LOOT_[Silithid Talon]|r from |cRXP_ENEMY_Silithid Searcher|r, |cRXP_ENEMY_Silithid Invader|r, |cRXP_ENEMY_Silithid Ravager|r. Collect |cRXP_LOOT_[Intact Silithid Carapace]|r from |cRXP_ENEMY_Silithid Searcher|r, |cRXP_ENEMY_Silithid Invader|r, |cRXP_ENEMY_Silithid Ravager|r
    *Bring 1 Silithid Heart, 5 Silithid Talons, and 3 Intact Silithid Carapaces, to Korran at the Crossroads.
    .complete 1148,1 --Parts of the Swarm
    .complete 1148,2 --Parts of the Swarm
    .complete 1148,3 --Parts of the Swarm
    .mob Silithid Searcher
    .mob Silithid Invader
step
    .goto 1441,67.58,63.94
    >>Talk to |cRXP_FRIENDLY_Moktar Krin|r
    .turnin 1147 >>Turn in The Swarm Grows
    .target Moktar Krin
step
    .goto 1441,45.33,49.17
    >>Click the |cRXP_PICK_Lost Shipping Crate|r
    .accept 94930 >>Accept Lost Shipping Crate
step
    .goto 1441,45.67,50.74
    >>Talk to |cRXP_FRIENDLY_Cliffwatcher Longhorn|r
    .accept 5361 >>Accept Family Tree
    .target Cliffwatcher Longhorn
step
    .goto 1418,42.22,52.69
    >>Talk to |cRXP_FRIENDLY_Martek the Exiled|r
    .turnin 1106 >>Turn in Martek the Exiled
    .accept 1108 >>Accept Indurium
    .target Martek the Exiled
step
    .goto 1413,63.35,38.45
    >>Talk to |cRXP_FRIENDLY_Wharfmaster Dizzywig|r
    .turnin 1111 >>Turn in Wharfmaster Dizzywig
    .accept 1112 >>Accept Parts for Kravel
    .target Wharfmaster Dizzywig
step
    .goto 1413,51.07,29.63
    >>Talk to |cRXP_FRIENDLY_Korran|r
    .turnin 1148 >>Turn in Parts of the Swarm
    .accept 1184 >>Accept Parts of the Swarm
    .target Korran
step
    .goto 2548,77.1,52.9
    >>Talk to |cRXP_FRIENDLY_Friz Frazzlespark|r
    .turnin 94930 >>Turn in Lost Shipping Crate
    .target Friz Frazzlespark
step
    .goto 1443,55.41,55.81
    >>Talk to |cRXP_FRIENDLY_Nataka Longhorn|r
    .turnin 5361 >>Turn in Family Tree
    .target Nataka Longhorn
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
    .goto 1454,75.23,34.24
    >>Talk to |cRXP_FRIENDLY_Belgrom Rockmaul|r
    .turnin 1184 >>Turn in Parts of the Swarm
    .target Belgrom Rockmaul
step
    .goto 1434,26.94,77.21
    >>Talk to |cRXP_FRIENDLY_Krazek|r
    .turnin 1115 >>Turn in The Rumormonger
    .accept 1116 >>Accept Dream Dust in the Swamp
    .target Krazek
step
    .goto 1435,14.31,61.27
    >>Collect |cRXP_LOOT_[Speck of Dream Dust]|r from |cRXP_ENEMY_Adolescent Whelp|r, |cRXP_ENEMY_Dreaming Whelp|r, |cRXP_ENEMY_Green Wyrmkin|r
    *Bring 10 Specks of Dream Dust to Krazek in Booty Bay. Dream Dust is gathered from the dragon whelps of the Swamp of Sorrows.
    .complete 1116,1 --Dream Dust in the Swamp
    .mob Adolescent Whelp
    .mob Dreaming Whelp
step
    .goto 1434,26.94,77.21
    >>Talk to |cRXP_FRIENDLY_Krazek|r
    .turnin 1116 >>Turn in Dream Dust in the Swamp
    .accept 1117 >>Accept Rumors for Kravel
    .target Krazek
step
    .goto 1434,24.41,24.76
    >>Collect |cRXP_LOOT_[Encrusted Tail Fin]|r from |cRXP_ENEMY_Saltscale Warrior|r, |cRXP_ENEMY_Saltscale Oracle|r, |cRXP_ENEMY_Saltscale Tide Lord|r
    *Bring 10 Encrusted Tail Fins to Wizzle Brassbolts in the Shimmering Flats.
    .complete 1107,1 --Encrusted Tail Fins
    .mob Saltscale Warrior
    .mob Saltscale Oracle
step
    .goto 1441,78.14,77.12
    >>Talk to |cRXP_FRIENDLY_Wizzle Brassbolts|r
    .turnin 1107 >>Turn in Encrusted Tail Fins
    .target Wizzle Brassbolts
step
    .goto 1441,77.79,77.27
    >>Talk to |cRXP_FRIENDLY_Kravel Koalbeard|r
    .turnin 1117 >>Turn in Rumors for Kravel
    .accept 1118 >>Accept Back to Booty Bay
    .target Kravel Koalbeard
step
    .goto 1434,27.12,77.21
    >>Talk to |cRXP_FRIENDLY_Crank Fizzlebub|r
    .turnin 1118 >>Turn in Back to Booty Bay
    .accept 1119 >>Accept Zanzil's Mixture and a Fool's Stout
    .target Crank Fizzlebub
step
    .goto 1441,77.79,77.27
    >>Talk to |cRXP_FRIENDLY_Kravel Koalbeard|r
    .turnin 1119 >>Turn in Zanzil's Mixture and a Fool's Stout
    .accept 1120 >>Accept Get the Gnomes Drunk
    .target Kravel Koalbeard
step
    .goto 1441,77.56,76.94
    >>Talk to |cRXP_FRIENDLY_Gnome Pit Boss|r
    .turnin 1120 >>Turn in Get the Gnomes Drunk
    .target Gnome Pit Boss
step
    .goto 1441,77.79,77.27
    >>Talk to |cRXP_FRIENDLY_Kravel Koalbeard|r
    .accept 1122 >>Accept Report Back to Fizzlebub
    .target Kravel Koalbeard
step
    .goto 1434,27.12,77.21
    >>Talk to |cRXP_FRIENDLY_Crank Fizzlebub|r
    .turnin 1122 >>Turn in Report Back to Fizzlebub
    .target Crank Fizzlebub
step
    .goto 1458,57.8,65.42
    >>Talk to |cRXP_FRIENDLY_Parqual Fintallas|r
    .accept 1394 >>Accept Final Passage
    .target Parqual Fintallas
step
    .goto 1441,53.95,41.49
    >>Talk to |cRXP_FRIENDLY_Dorn Plainstalker|r
    .turnin 1394 >>Turn in Final Passage
    .target Dorn Plainstalker
step
    .goto 1432,33.32,91.41
    >>Collect |cRXP_LOOT_[Indurium Flake]|r from |cRXP_ENEMY_Stonevault Trogg|r, |cRXP_ENEMY_Stonevault Scout|r, |cRXP_ENEMY_Stonevault Skullthumper|r
    *Bring 10 Indurium Flakes to Martek the Exiled in the Badlands.
    .complete 1108,1 --Indurium
    .mob Stonevault Trogg
    .mob Stonevault Scout
step
    .goto 1418,42.22,52.69
    >>Talk to |cRXP_FRIENDLY_Martek the Exiled|r
    .turnin 1108 >>Turn in Indurium
    .accept 1137 >>Accept News for Fizzle
    .target Martek the Exiled
step
    .goto 1441,78.06,77.13
    >>Talk to |cRXP_FRIENDLY_Fizzle Brassbolts|r
    .turnin 1137 >>Turn in News for Fizzle
    .target Fizzle Brassbolts
step
    .goto 1441,80.18,75.88
    >>Talk to |cRXP_FRIENDLY_Pozzik|r
    .accept 1190 >>Accept Keeping Pace
    .target Pozzik
step
    .goto 1441,77.21,77.39
    >>Click the |cRXP_PICK_Rizzle's Unguarded Plans|r
    .turnin 1190 >>Turn in Keeping Pace
    .accept 1194 >>Accept Rizzle's Schematics
step
    .goto 1441,80.18,75.88
    >>Talk to |cRXP_FRIENDLY_Pozzik|r
    .turnin 1194 >>Turn in Rizzle's Schematics
    .target Pozzik
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 30-39
#name 37-46 Razorfen Downs pre-quests
#displayname 37-46 Razorfen Downs pre-quests
#next 37-46 Razorfen Downs
step
    +|cRXP_WARN_Razorfen Downs: pre-quests|r. 8 quests, solo (no group needed), roughly 45 min. The run guide comes after this one. Click to start.
    *Pre-quests: A Brief History Lesson, Forlorn Gardens, Meeting the Magister, Rot and Regret, Word of the Woods, Passing the Blame, Fragments of the Pylons, Powering the Pylons
step
    .goto 2652,35.17,46.61
    >>Talk to |cRXP_FRIENDLY_Mordent Evenshade|r
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
    >>Kill |cRXP_ENEMY_Woodwyrd|r. Collect |cRXP_LOOT_[Vial of Earth Song Water]|r from |cRXP_PICK_Earth Song Splash|r
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
    +|cRXP_WARN_Pre-quests done.|r Next: Razorfen Downs itself. That guide tells you when to find a group. Click to continue.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 30-39
#name 37-46 Razorfen Downs
#displayname 37-46 Razorfen Downs
#next 38-40 Shen'dralas
step
    +|cRXP_WARN_Razorfen Downs|r (levels 37-46). Pick up 8 dungeon quests solo (roughly 2 h 20 min with the hand-ins), then ONE run with a group (roughly 2 h). No group needed until the run step. Click to start.
    *Its 8 pre-quests are in the guide before this one. Skipped them? Some quests below won't be offered: skip those steps.
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 2652,72.73,31.17
    >>Talk to |cRXP_FRIENDLY_Kog'thug the Brave|r
    .accept 93604 >>Accept Agamaggan's Blood
    .target Kog'thug the Brave
step
    .goto 1458,74.05,33.31
    >>Talk to |cRXP_FRIENDLY_Andrew Brownell|r
    .accept 3341 >>Accept Bring the End
    .target Andrew Brownell
step
    .goto 1413,49.01,94.94
    >>Talk to |cRXP_FRIENDLY_Myriam Moonsinger|r
    .accept 6626 >>Accept A Host of Evil
    .target Myriam Moonsinger
step
    .goto 1412,34.56,23
    >>Talk to |cRXP_FRIENDLY_Sutara Plainstalker|r
    .accept 97196 >>Accept The Coldbringer's Eye
    .target Sutara Plainstalker
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
    .goto 1413,48.84,93.33
    >>Collect |cRXP_LOOT_[Virulent Blood of Agamaggan]|r from |cRXP_ENEMY_Virulent Blood of Agamaggan|r
    *Venture to Razorfen Downs and acquire Virulent Blood of Agamaggan, then return it to Kog'thug the Brave at Bristleback Retreat in the Desolace. Kog'thug felt it worth reminding that the Blood of Agamaggan inside Razorfen Kraul would not be sufficient.
    .complete 93604,1 --Agamaggan's Blood
    .mob Virulent Blood of Agamaggan
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in.|r
step
    .goto 1413,49,93.9
    >>Inside Razorfen Downs: these quests start from a drop or an object in the dungeon
    .accept 3523 >>Accept Scourge of the Downs
step
    .goto 1413,49,93.9
    >>Loot |cRXP_LOOT_[Small Scroll]|r from |cRXP_ENEMY_Charlga Razorflank|r, then click it to start the quest
    .accept 6522 >>Accept An Unholy Alliance
    .use 17008
    .mob Charlga Razorflank
step
    .goto 1413,49,93.9
    >>Enter |cRXP_WARN_Razorfen Downs|r with your group. Quest goals inside:
    *Bring the End: Andrew Brownell wants you to kill Amnennar the Coldbringer and return his skull.
    *The Coldbringer's Eye: Recover The Coldbringer's Eye from Razorfen Downs.
    .complete 3341,1 --Bring the End
    .complete 97196,1 --The Coldbringer's Eye
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
    .goto 1458,74.05,33.31
    >>Talk to |cRXP_FRIENDLY_Andrew Brownell|r
    .turnin 3341 >>Turn in Bring the End
    .target Andrew Brownell
step
    .goto 1458,56.25,92.2
    >>Talk to |cRXP_FRIENDLY_Varimathras|r
    .turnin 6522 >>Turn in An Unholy Alliance
    .target Varimathras
step
    .goto 2652,72.73,31.17
    >>Talk to |cRXP_FRIENDLY_Kog'thug the Brave|r
    .turnin 93604 >>Turn in Agamaggan's Blood
    .target Kog'thug the Brave
step
    .goto 1412,34.56,23
    >>Talk to |cRXP_FRIENDLY_Sutara Plainstalker|r
    .turnin 97196 >>Turn in The Coldbringer's Eye
    .target Sutara Plainstalker
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1458,56.25,92.2
    >>Talk to |cRXP_FRIENDLY_Varimathras|r
    .accept 6521 >>Accept An Unholy Alliance
    .target Varimathras
step
    .goto 1413,47.78,90.71
    >>Collect |cRXP_LOOT_[Ambassador Malcin's Head]|r from |cRXP_ENEMY_Ambassador Malcin|r
    *Bring Ambassador Malcin's Head to Varimathras in the Undercity.
    .complete 6521,1 --An Unholy Alliance
    .mob Ambassador Malcin
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in. (run 2)|r
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
    .goto 1458,56.25,92.2
    >>Talk to |cRXP_FRIENDLY_Varimathras|r
    .turnin 6521 >>Turn in An Unholy Alliance
    .target Varimathras
step
    .goto 1413,49,93.9
    +Dungeon entrance: Razorfen Downs. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 30-39
#name 38-40 Shen'dralas
#displayname 38-40 Shen'dralas
#next 38-46 Scarlet Monastery Cathedral
step
    .zone 2652 >>Travel to Shen'dralas
    *How: Ride south out of Desolace through the Valley of Bones.
    *Level for this part: 38-40. 24 quests, roughly 1 h 35 min.
step
    .goto 2652,20.93,22.68
    >>Talk to |cRXP_FRIENDLY_Nerlokh|r
    .accept 93058 >>Accept Saving Our Own
    .accept 93062 >>Accept Bone Burying
    .target Nerlokh
step
    .goto 2652,20.93,22.68
    >>Talk to |cRXP_FRIENDLY_Nerlokh|r
    .turnin 93058 >>Turn in Saving Our Own
    .turnin 93062 >>Turn in Bone Burying
    .accept 93122 >>Accept Checking Things Out
    .target Nerlokh
step
    .goto 2652,35.71,12.66
    >>Talk to |cRXP_FRIENDLY_Orgrul|r
    .accept 92844 >>Accept Mountain of Bones
    .target Orgrul
step
    .goto 2652,35.71,12.66
    >>Talk to |cRXP_FRIENDLY_Orgrul|r
    .turnin 92844 >>Turn in Mountain of Bones
    .accept 92847 >>Accept Corrupting Tears
    .target Orgrul
step
    .goto 2652,35.71,12.66
    >>Talk to |cRXP_FRIENDLY_Orgrul|r
    .turnin 92847 >>Turn in Corrupting Tears
    .accept 92873 >>Accept Proof of Concept
    .target Orgrul
step
    .goto 2652,35.71,12.66
    >>Talk to |cRXP_FRIENDLY_Orgrul|r
    .turnin 92873 >>Turn in Proof of Concept
    .accept 92893 >>Accept No Mercy for the Weak
    .accept 92894 >>Accept Bone Raising
    .target Orgrul
step
    .goto 2652,35.71,12.66
    >>Talk to |cRXP_FRIENDLY_Orgrul|r
    .turnin 92893 >>Turn in No Mercy for the Weak
    .turnin 92894 >>Turn in Bone Raising
    .accept 93066 >>Accept Bristleback Retreat
    .target Orgrul
step
    .goto 2652,43.65,34.31
    >>Click the |cRXP_PICK_Shen'dralar Pylon|r
    .accept 92914 >>Accept Strange Pylons
step
    .goto 2652,35.04,46.62
    >>Investigate the Outcast Hideaway
    *Maintain your reputation with the Gelkis, and investigate centaur points of interest within Shen'dralas. Then return to Nerlokh at the entrance of Valley of Bones with your findings.
    .complete 93122,1 --Checking Things Out
step
    .goto 2652,59.27,53.93
    >>Talk to |cRXP_FRIENDLY_Hagiak|r
    .turnin 93066 >>Turn in Bristleback Retreat
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
    .goto 2652,34.13,77.9
    >>Talk to |cRXP_FRIENDLY_Rokren|r
    .accept 93125 >>Accept Going Home
    .target Rokren
step
    .goto 2652,32.54,62.06
    >>Kill |cRXP_ENEMY_Outcast Scout|r
    *Maintain your reputation with the Magram clan and slay 2 Outcast Scouts, 6 Outcast Marauders, and 8 Outcast Necromancers then return to Hagiak at the Magram Front.
    .complete 93072,1 --Long-Term Solutions
    .mob Outcast Scout
step
    .goto 2652,31.75,73.81
    >>Kill |cRXP_ENEMY_Outcast Marauder|r
    *Maintain your reputation with the Magram clan and slay 2 Outcast Scouts, 6 Outcast Marauders, and 8 Outcast Necromancers then return to Hagiak at the Magram Front.
    .complete 93072,2 --Long-Term Solutions
    .mob Outcast Marauder
step
    .goto 2652,52.76,70.97
    >>Collect |cRXP_LOOT_[Spectral Iron Ore]|r from |cRXP_PICK_Spectral Iron Deposit|r, |cRXP_PICK_Spectral Iron Deposit|r
    *Search for Spectral Iron Deposits around Shen'dralas and collect 10 Spectral Iron Ore. Return to Vindael in Shen'dralas once you have found enough.
    .complete 93546,1 --Spectral Iron Ore
step
    .goto 2652,61.22,75.31
    >>Kill |cRXP_ENEMY_Rowdy Rose|r. Kill |cRXP_ENEMY_Terrible Tulip|r
    *Cull plants in the Forlorn Garden and then return to Mithera at Shen'dralas.
    .complete 93362,1 --What They've Done to My Peonies
    .complete 93362,2 --What They've Done to My Peonies
    .mob Rowdy Rose
    .mob Terrible Tulip
step
    .goto 2652,65.58,64.31
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
    .goto 2652,43.42,33.73
    >>Collect |cRXP_LOOT_[Depleted Crystal Heart]|r from |cRXP_ENEMY_Decrepit Pylon Protector|r
    *Slay a Decrepit Pylon Protector for their Depleted Crystal Heart and bring it to Historian Biraxas within the temple of Shen'dralas.
    .complete 99257,1 --A Heart of Crystal
    .mob Decrepit Pylon Protector
step
    .goto 2652,20.93,22.68
    >>Talk to |cRXP_FRIENDLY_Nerlokh|r
    .turnin 93122 >>Turn in Checking Things Out
    .turnin 93125 >>Turn in Going Home
    .target Nerlokh
step
    .goto 2652,72.76,23.11
    >>Eastern pylon found
    *Explore Shen'dralas in an effort to find other pylons like the one you found.
    .complete 92914,1 --Strange Pylons
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
    .goto 2652,35.17,46.61
    >>Talk to |cRXP_FRIENDLY_Mordent Evenshade|r
    .turnin 92914 >>Turn in Strange Pylons
    .target Mordent Evenshade
step
    .goto 2652,46,78.22
    >>Talk to |cRXP_FRIENDLY_Historian Biraxas|r
    .turnin 99257 >>Turn in A Heart of Crystal
    .target Historian Biraxas
step
    .goto 1443,36.22,79.25
    >>Talk to |cRXP_FRIENDLY_Uthek the Wise|r
    .accept 93034 >>Accept Valley of Bones
    .target Uthek the Wise
step
    .goto 1443,63.44,89.38
    >>Kill |cRXP_ENEMY_Outcast Necromancer|r
    *Maintain your reputation with the Magram clan and slay 2 Outcast Scouts, 6 Outcast Marauders, and 8 Outcast Necromancers then return to Hagiak at the Magram Front.
    .complete 93072,3 --Long-Term Solutions
    .mob Outcast Necromancer
step
    .goto 2652,59.27,53.93
    >>Talk to |cRXP_FRIENDLY_Hagiak|r
    .turnin 93072 >>Turn in Long-Term Solutions
    .accept 93188 >>Accept Return to Orgrul
    .target Hagiak
step
    .goto 2652,35.71,12.66
    >>Talk to |cRXP_FRIENDLY_Orgrul|r
    .turnin 93188 >>Turn in Return to Orgrul
    .target Orgrul
step
    .goto 2652,20.93,22.68
    >>Talk to |cRXP_FRIENDLY_Nerlokh|r
    .turnin 93034 >>Turn in Valley of Bones
    .accept 93035 >>Accept Ravaging Ravagers
    .accept 93037 >>Accept Outing Outcasts
    .target Nerlokh
step
    .goto 2652,20.93,22.68
    >>Talk to |cRXP_FRIENDLY_Nerlokh|r
    .turnin 93035 >>Turn in Ravaging Ravagers
    .turnin 93037 >>Turn in Outing Outcasts
    .accept 93041 >>Accept Facing the Truth
    .target Nerlokh
step
    .goto 1443,36.22,79.25
    >>Talk to |cRXP_FRIENDLY_Uthek the Wise|r
    .turnin 93041 >>Turn in Facing the Truth
    .target Uthek the Wise
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 30-39
#name 38-46 Scarlet Monastery Cathedral
#displayname 38-46 Scarlet Monastery Cathedral
#next 40-41 Dustwallow Marsh
step
    +|cRXP_WARN_Scarlet Monastery Cathedral|r (levels 38-46). Pick up 0 dungeon quests solo (roughly 5 min with the hand-ins), then ONE run with a group (roughly 40 min). No group needed until the run step. Click to start.
    *Door: Cathedral: the closed door on the left as you enter. Needs The Scarlet Key (Library).
    *Four wings: Graveyard 30-38, Library 33-41, Armory 36-44, Cathedral 38-46.
    *Already picked up for an earlier wing: Into The Scarlet Monastery
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in.|r
step
    .goto 1420,82.6,33.8
    >>Enter |cRXP_WARN_Scarlet Monastery Cathedral|r with your group. Quest goals inside:
    *Into The Scarlet Monastery: Kill High Inquisitor Whitemane, Scarlet Commander Mograine, Herod, the Scarlet Champion and Houndmaster Loksey and then report back to Varimathras in the Undercity.
    .complete 1048,1 --Into The Scarlet Monastery
    .complete 1048,2 --Into The Scarlet Monastery
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1458,56.25,92.2
    >>Talk to |cRXP_FRIENDLY_Varimathras|r
    .turnin 1048 >>Turn in Into The Scarlet Monastery
    .target Varimathras
step
    .goto 1420,82.6,33.8
    +Dungeon entrance: Scarlet Monastery Cathedral. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 40-49
#name 40-41 Dustwallow Marsh
#displayname 40-41 Dustwallow Marsh
#next 40-45 Krol'dok Stronghold pre-quests
step
    .zone 1445 >>Travel to Dustwallow Marsh
    *How: Fly to Brackenwall Village.
    *Level for this part: 40-41. 28 quests, roughly 3 h 15 min.
step
    #completewith next
    .goto 1445,35.56,31.88,15,0
    >>Talk to |cRXP_FRIENDLY_Shardi|r if you don't have this flight path yet
    .fp Shardi >>Get the flight path
    .target Shardi
step
    .goto 1445,36.4,30.85
    >>Talk to |cRXP_FRIENDLY_Krak|r
    .accept 98192 >>Accept Skin Careful, Skin Sharp
    .target Krak
step
    .goto 1445,36.29,31.41
    >>Talk to |cRXP_FRIENDLY_Overlord Mok'Morokk|r
    .accept 1166 >>Accept Overlord Mok'Morokk's Concern
    .target Overlord Mok'Morokk
step
    .goto 1445,37.37,31.39
    >>Talk to |cRXP_FRIENDLY_Tharg|r
    .accept 1168 >>Accept Army of the Black Dragon
    .target Tharg
step
    .goto 1445,37.15,33.09
    >>Talk to |cRXP_FRIENDLY_Draz'Zilb|r
    .accept 1169 >>Accept Identifying the Brood
    .target Draz'Zilb
step
    .goto 1445,35.21,30.66
    >>Talk to |cRXP_FRIENDLY_Nazeer Bloodpike|r
    .accept 1201 >>Accept Theramore Spies
    .target Nazeer Bloodpike
step
    .goto 1445,35.15,38.26
    >>Talk to |cRXP_FRIENDLY_Mudcrush Durtfeet|r
    .accept 1177 >>Accept Hungry!
    .target Mudcrush Durtfeet
step
    .goto 1445,29.7,47.64
    >>Click the |cRXP_PICK_Suspicious Hoofprint|r
    .accept 1268 >>Accept Suspicious Hoofprints
step
    .goto 1445,29.83,48.24
    >>Click the |cRXP_PICK_Theramore Guard Badge|r
    .accept 1269 >>Accept Lieutenant Paval Reethe
step
    .goto 1445,36.42,31.88
    >>Talk to |cRXP_FRIENDLY_Krog|r
    .turnin 1268 >>Turn in Suspicious Hoofprints
    .turnin 1269 >>Turn in Lieutenant Paval Reethe
    .target Krog
step
    .goto 1445,40.96,36.69
    >>Talk to |cRXP_FRIENDLY_Ogron|r
    .accept 1273 >>Accept Questioning Reethe
    .target Ogron
step
    .goto 1445,42.65,38.07
    >>Kill |cRXP_ENEMY_Paval Reethe|r
    *Go with Ogron to speak with Reethe, then return to Krog in Brackenwall Village.
    .complete 1273,1 --Questioning Reethe
    .mob Paval Reethe
step
    .goto 1445,36.42,31.88
    >>Talk to |cRXP_FRIENDLY_Krog|r
    .turnin 1273 >>Turn in Questioning Reethe
    .target Krog
step
    .goto 1445,40.94,25.52
    >>Kill |cRXP_ENEMY_Theramore Infiltrator|r
    *Kill 9 Theramore Infiltrators, then return to Nazeer Bloodpike in Brackenwall Village.
    .complete 1201,1 --Theramore Spies
    .mob Theramore Infiltrator
step
    .goto 1445,35.21,30.66
    >>Talk to |cRXP_FRIENDLY_Nazeer Bloodpike|r
    .turnin 1201 >>Turn in Theramore Spies
    .accept 1202 >>Accept The Theramore Docks
    .target Nazeer Bloodpike
step
    .goto 1445,46.88,17.52
    >>Talk to |cRXP_FRIENDLY_"Stinky" Ignatz|r
    .accept 1270 >>Accept Stinky's Escape
    .target "Stinky" Ignatz
step
    .goto 1445,55.44,26.27
    >>Talk to |cRXP_FRIENDLY_"Swamp Eye" Jarl|r
    .accept 1218 >>Accept Soothing Spices
    .target "Swamp Eye" Jarl
step
    .goto 1445,55.44,25.92
    >>Click the |cRXP_PICK_Loose Dirt|r
    .accept 1238 >>Accept The Lost Report
step
    >>Collect |cRXP_LOOT_[Soothing Spices]|r
    *Bring 3 Soothing Spices to "Swamp Eye" Jarl in Dustwallow Marsh.
    .complete 1218,1 --Soothing Spices
step
    .goto 1445,55.44,26.27
    >>Talk to |cRXP_FRIENDLY_"Swamp Eye" Jarl|r
    .turnin 1218 >>Turn in Soothing Spices
    .accept 1206 >>Accept Jarl Needs Eyes
    .target "Swamp Eye" Jarl
step
    .goto 1445,57.96,11.2
    >>Collect |cRXP_LOOT_[Mirefin Head]|r from |cRXP_ENEMY_Mirefin Puddlejumper|r, |cRXP_ENEMY_Mirefin Murloc|r, |cRXP_ENEMY_Mirefin Warrior|r
    *Mudcrush Durtfeet in northern Dustwallow wants 8 Mirefin Heads.
    .complete 1177,1 --Hungry!
    .mob Mirefin Puddlejumper
    .mob Mirefin Murloc
step
    .goto 1445,32.46,23.27
    >>Collect |cRXP_LOOT_[Unpopped Darkmist Eye]|r from |cRXP_ENEMY_Darkmist Spider|r, |cRXP_ENEMY_Darkmist Lurker|r, |cRXP_ENEMY_Darkmist Recluse|r
    *Bring 20 Unpopped Darkmist Eyes to "Swamp Eye" Jarl at the Swamplight Manor.
    .complete 1206,1 --Jarl Needs Eyes
    .mob Darkmist Spider
    .mob Darkmist Lurker
step
    .goto 1445,35.21,30.66
    >>Talk to |cRXP_FRIENDLY_Nazeer Bloodpike|r
    .turnin 1238 >>Turn in The Lost Report
    .target Nazeer Bloodpike
step
    .goto 1445,35.15,38.26
    >>Talk to |cRXP_FRIENDLY_Mudcrush Durtfeet|r
    .turnin 1177 >>Turn in Hungry!
    .target Mudcrush Durtfeet
step
    .goto 1445,55.44,26.27
    >>Talk to |cRXP_FRIENDLY_"Swamp Eye" Jarl|r
    .turnin 1206 >>Turn in Jarl Needs Eyes
    .target "Swamp Eye" Jarl
step
    .goto 1445,55.44,25.92
    >>Click the |cRXP_PICK_Loose Dirt|r
    .accept 1239 >>Accept The Severed Head
step
    .goto 1445,55.44,26.27
    >>Talk to |cRXP_FRIENDLY_"Swamp Eye" Jarl|r
    .accept 1203 >>Accept Jarl Needs a Blade
    .target "Swamp Eye" Jarl
step
    >>Collect |cRXP_LOOT_[Moonsteel Broadsword]|r
    *Bring a Moonsteel Broadsword to Jarl in Dustwallow Marsh.
    .complete 1203,1 --Jarl Needs a Blade
step
    .goto 1445,55.44,26.27
    >>Talk to |cRXP_FRIENDLY_"Swamp Eye" Jarl|r
    .turnin 1203 >>Turn in Jarl Needs a Blade
    .target "Swamp Eye" Jarl
step
    .goto 1445,35.21,30.66
    >>Talk to |cRXP_FRIENDLY_Nazeer Bloodpike|r
    .turnin 1239 >>Turn in The Severed Head
    .accept 1240 >>Accept The Troll Witchdoctor
    .target Nazeer Bloodpike
step
    .goto 1445,44.53,66.04
    >>Collect |cRXP_LOOT_[Mok'Morokk's Snuff]|r from |cRXP_PICK_Mok'Morokk's Snuff|r. Collect |cRXP_LOOT_[Mok'Morokk's Grog]|r from |cRXP_PICK_Mok'Morokk's Grog|r. Collect |cRXP_LOOT_[Mok'Morokk's Strongbox]|r from |cRXP_PICK_Mok'Morokk's Strongbox|r. Kill |cRXP_ENEMY_Firemane Scout|r. Kill |cRXP_ENEMY_Firemane Ash Tail|r. Collect |cRXP_LOOT_[Searing Tongue]|r from |cRXP_ENEMY_Searing Hatchling|r, |cRXP_ENEMY_Searing Whelp|r. Collect |cRXP_LOOT_[Searing Heart]|r from |cRXP_ENEMY_Searing Hatchling|r, |cRXP_ENEMY_Searing Whelp|r
    *Overlord Mok'Morokk in Brackenwall Village wants you to retrieve his grog, snuff and strongbox in Dustwallow Swamp.
    *Tharg in Brackenwall Village wants you to kill 10 Firemane Scouts, 10 Firemane Ash Tails, and 5 Firemane Scalebanes.
    *Draz'Zilb in Brackenwall Village would like you to bring him 15 Searing Tongues and 15 Searing Hearts.
    .complete 1166,1 --Overlord Mok'Morokk's Concern
    .complete 1166,2 --Overlord Mok'Morokk's Concern
    .complete 1166,3 --Overlord Mok'Morokk's Concern
    .complete 1168,1 --Army of the Black Dragon
    .complete 1168,2 --Army of the Black Dragon
    .complete 1169,1 --Identifying the Brood
    .complete 1169,2 --Identifying the Brood
    .mob Firemane Scout
    .mob Firemane Ash Tail
    .mob Searing Hatchling
    .mob Searing Whelp
step
    .goto 1445,40.97,75.68
    >>Talk to |cRXP_FRIENDLY_Gizzix Grimegurgle|r
    .accept 98231 >>Accept Active Ingredient
    .target Gizzix Grimegurgle
step
    .goto 1445,41.01,75.73
    >>Talk to |cRXP_FRIENDLY_Drazzit Dripvalve|r
    .accept 98205 >>Accept Whelps are the Worst!
    .accept 98215 >>Accept Dragon Scales, Post Burnt Tails
    .target Drazzit Dripvalve
step
    .goto 1445,47.22,74.47
    >>Kill |cRXP_ENEMY_Firemane Scalebane|r. Collect |cRXP_LOOT_[Wyrmtail]|r from |cRXP_PICK_Wyrmtail|r. Kill |cRXP_ENEMY_Searing Hatchling|r. Kill |cRXP_ENEMY_Searing Whelp|r. Collect |cRXP_LOOT_[Shed Dark Dragonscale]|r from |cRXP_ENEMY_Searing Hatchling|r, |cRXP_ENEMY_Searing Whelp|r, |cRXP_ENEMY_Firemane Scout|r
    *Tharg in Brackenwall Village wants you to kill 10 Firemane Scouts, 10 Firemane Ash Tails, and 5 Firemane Scalebanes.
    *Bring 10 Wyrmtail to Gizzix Grimegurgle.
    *Slay 8 Searing Hatchlings and 8 Searing Whelps.
    *Bring 20 Shed Dark Dragonscales to Drazzit Dripvalve.
    .complete 1168,3 --Army of the Black Dragon
    .complete 98231,1 --Active Ingredient
    .complete 98205,1 --Whelps are the Worst!
    .complete 98205,2 --Whelps are the Worst!
    .complete 98215,1 --Dragon Scales, Post Burnt Tails
    .mob Firemane Scalebane
    .mob Searing Hatchling
    .mob Searing Whelp
step
    .goto 1445,40.97,75.68
    >>Talk to |cRXP_FRIENDLY_Gizzix Grimegurgle|r
    .turnin 98231 >>Turn in Active Ingredient
    .target Gizzix Grimegurgle
step
    .goto 1445,41.01,75.73
    >>Talk to |cRXP_FRIENDLY_Drazzit Dripvalve|r
    .turnin 98205 >>Turn in Whelps are the Worst!
    .turnin 98215 >>Turn in Dragon Scales, Post Burnt Tails
    .target Drazzit Dripvalve
step
    .goto 1445,34.16,69.01
    >>Collect |cRXP_LOOT_[Intact Raptor Hide]|r from |cRXP_ENEMY_Bloodfen Razormaw|r, |cRXP_ENEMY_Bloodfen Lashtail|r
    *Bring 8 Intact Raptor Hides to Krak in Brackenwall Village.
    .complete 98192,1 --Skin Careful, Skin Sharp
    .mob Bloodfen Razormaw
    .mob Bloodfen Lashtail
step
    .goto 1445,36.4,30.85
    >>Talk to |cRXP_FRIENDLY_Krak|r
    .turnin 98192 >>Turn in Skin Careful, Skin Sharp
    .target Krak
step
    .goto 1445,36.29,31.41
    >>Talk to |cRXP_FRIENDLY_Overlord Mok'Morokk|r
    .turnin 1166 >>Turn in Overlord Mok'Morokk's Concern
    .target Overlord Mok'Morokk
step
    .goto 1445,37.37,31.39
    >>Talk to |cRXP_FRIENDLY_Tharg|r
    .turnin 1168 >>Turn in Army of the Black Dragon
    .target Tharg
step
    .goto 1445,37.15,33.09
    >>Talk to |cRXP_FRIENDLY_Draz'Zilb|r
    .turnin 1169 >>Turn in Identifying the Brood
    .accept 1170 >>Accept The Brood of Onyxia
    .target Draz'Zilb
step
    .goto 1445,36.29,31.41
    >>Talk to |cRXP_FRIENDLY_Overlord Mok'Morokk|r
    .turnin 1170 >>Turn in The Brood of Onyxia
    .accept 1171 >>Accept The Brood of Onyxia
    .target Overlord Mok'Morokk
step
    .goto 1445,37.15,33.09
    >>Talk to |cRXP_FRIENDLY_Draz'Zilb|r
    .turnin 1171 >>Turn in The Brood of Onyxia
    .accept 1172 >>Accept The Brood of Onyxia
    .target Draz'Zilb
step
    .goto 1445,71.53,51.19
    >>Collect |cRXP_LOOT_[Captain's Documents]|r from |cRXP_PICK_Captain's Footlocker|r
    *Bring the Captain's Documents to Nazeer Bloodpike in Brackenwall Village.
    .complete 1202,1 --The Theramore Docks
step
    .goto 1445,48.48,73.64
    >>Click |cRXP_PICK_Egg of Onyxia|r
    *Draz'Zilb in Brackenwall Village wants you to destroy 5 Eggs of Onyxia.
    .complete 1172,1 --The Brood of Onyxia
step
    .goto 1445,37.15,33.09
    >>Talk to |cRXP_FRIENDLY_Draz'Zilb|r
    .turnin 1172 >>Turn in The Brood of Onyxia
    .target Draz'Zilb
step
    .goto 1445,36.29,31.41
    >>Talk to |cRXP_FRIENDLY_Overlord Mok'Morokk|r
    .accept 1173 >>Accept Challenge Overlord Mok'Morokk
    .target Overlord Mok'Morokk
step
    .goto 1445,35.21,30.66
    >>Talk to |cRXP_FRIENDLY_Nazeer Bloodpike|r
    .turnin 1202 >>Turn in The Theramore Docks
    .target Nazeer Bloodpike
step
    .goto 1445,37.15,33.09
    >>Talk to |cRXP_FRIENDLY_Draz'Zilb|r
    .turnin 1173 >>Turn in Challenge Overlord Mok'Morokk
    .target Draz'Zilb
step
    .goto 1413,62.37,37.62
    >>Talk to |cRXP_FRIENDLY_Mebok Mizzyrix|r
    .turnin 1270 >>Turn in Stinky's Escape
    .target Mebok Mizzyrix
step
    .goto 1434,32.27,27.71
    >>Talk to |cRXP_FRIENDLY_Kin'weelay|r
    .turnin 1240 >>Turn in The Troll Witchdoctor
    .target Kin'weelay
step
    .goto 1434,32.22,27.6
    >>Click the |cRXP_PICK_Bubbling Cauldron|r
    .accept 1261 >>Accept Marg Speaks
step
    .goto 1456,61.54,80.92
    >>Talk to |cRXP_FRIENDLY_Melor Stonehoof|r
    .accept 1205 >>Accept Deadmire
    .target Melor Stonehoof
step
    .goto 1445,60.18,63.02
    >>Collect |cRXP_LOOT_[Jeweled Pendant]|r from |cRXP_ENEMY_Muckshell Clacker|r, |cRXP_ENEMY_Muckshell Snapclaw|r, |cRXP_ENEMY_Muckshell Pincer|r
    *Bring the Jeweled Pendant to Nazeer in Brackenwall Village.
    .complete 1261,1 --Marg Speaks
    .mob Muckshell Clacker
    .mob Muckshell Snapclaw
step
    .goto 1445,48.81,56.75
    >>Collect |cRXP_LOOT_[Deadmire's Tooth]|r from |cRXP_ENEMY_Deadmire|r
    *Bring Deadmire's Tooth to Melor in Thunder Bluff.
    .complete 1205,1 --Deadmire
    .mob Deadmire
step
    .goto 1445,35.21,30.66
    >>Talk to |cRXP_FRIENDLY_Nazeer Bloodpike|r
    .turnin 1261 >>Turn in Marg Speaks
    .accept 1262 >>Accept Report to Zor
    .target Nazeer Bloodpike
step
    .goto 1456,61.54,80.92
    >>Talk to |cRXP_FRIENDLY_Melor Stonehoof|r
    .turnin 1205 >>Turn in Deadmire
    .target Melor Stonehoof
step
    .goto 1454,38.93,38.4
    >>Talk to |cRXP_FRIENDLY_Zor Lonetree|r
    .turnin 1262 >>Turn in Report to Zor
    .accept 7541 >>Accept Service to the Horde
    .target Zor Lonetree
step
    .goto 1454,38.93,38.4
    >>Talk to |cRXP_FRIENDLY_Zor Lonetree|r
    .turnin 7541 >>Turn in Service to the Horde
    .target Zor Lonetree
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 40-49
#name 40-45 Krol'dok Stronghold pre-quests
#displayname 40-45 Krol'dok Stronghold pre-quests
#next 40-45 Krol'dok Stronghold
step
    +|cRXP_WARN_Krol'dok Stronghold: pre-quests|r. 11 quests, solo (no group needed), roughly 55 min. The run guide comes after this one. Click to start.
    *Pre-quests: The Wayward Warrior, Carving a Path, Break Their Chains, Bring Me His Head, It Is Time, Brother..., Spread the Word, Land of Giants, Might Makes Right, Unworthy Champion, Twilight No More!, Clugfist's Decree
step
    .goto 2548,49.95,46.99
    >>Talk to |cRXP_FRIENDLY_Clubtoe|r
    .accept 95427 >>Accept Twilight No More!
    .target Clubtoe
step
    .goto 2548,45.03,48.68
    >>Collect |cRXP_LOOT_[Chogg's Head]|r from |cRXP_ENEMY_Chogg'Zac|r. Collect |cRXP_LOOT_[Zac's Head]|r from |cRXP_ENEMY_Chogg'Zac|r
    *Kill Chogg'Zac in the Sunnyglade cave and collect their heads for Clubtoe.
    .complete 95427,1 --Twilight No More!
    .complete 95427,2 --Twilight No More!
    .mob Chogg'Zac
step
    .goto 2548,49.95,46.99
    >>Talk to |cRXP_FRIENDLY_Clubtoe|r
    .turnin 95427 >>Turn in Twilight No More!
    .accept 95418 >>Accept Spread the Word
    .target Clubtoe
step
    .goto 2548,59.51,43.96
    >>Talk to |cRXP_FRIENDLY_Tran'gul|r
    .turnin 95418 >>Turn in Spread the Word
    .accept 95420 >>Accept Land of Giants
    .target Tran'gul
step
    .goto 2548,64.25,15.72
    >>Talk to |cRXP_FRIENDLY_Clugfist|r
    .turnin 95420 >>Turn in Land of Giants
    .accept 95424 >>Accept Might Makes Right
    .accept 95425 >>Accept Unworthy Champion
    .target Clugfist
step
    .goto 2548,72.43,26.74
    >>Kill |cRXP_ENEMY_Twilight Mauler|r. Kill |cRXP_ENEMY_Twilight Firecaller|r. Collect |cRXP_LOOT_[Skullbasher]|r from |cRXP_ENEMY_Klunk|r
    *Kill 7 Twilight Maulers and 7 Twilight Firecallers for Clugfist in Bolder'ok.
    *Collect Skullthumper from Klunk for Clugfist in Bolder'ok.
    .complete 95424,1 --Might Makes Right
    .complete 95424,2 --Might Makes Right
    .complete 95425,1 --Unworthy Champion
    .mob Twilight Mauler
    .mob Twilight Firecaller
    .mob Klunk
step
    .goto 2548,64.25,15.72
    >>Talk to |cRXP_FRIENDLY_Clugfist|r
    .turnin 95424 >>Turn in Might Makes Right
    .turnin 95425 >>Turn in Unworthy Champion
    .accept 95428 >>Accept Clugfist's Decree
    .target Clugfist
step
    .goto 2548,59.37,45.6
    >>Talk to |cRXP_FRIENDLY_Krom'rosh|r
    .turnin 95428 >>Turn in Clugfist's Decree
    .accept 94744 >>Accept The Wayward Warrior
    .target Krom'rosh
step
    .goto 2548,33.47,37.93
    >>Talk to |cRXP_FRIENDLY_Da'grosh|r
    .turnin 94744 >>Turn in The Wayward Warrior
    .accept 94745 >>Accept Carving a Path
    .accept 94748 >>Accept Break Their Chains
    .target Da'grosh
step
    .goto 2548,29.04,42.73
    >>Kill |cRXP_ENEMY_Twilight Fanatic|r. Kill |cRXP_ENEMY_Twilight Corrupter|r. Kill |cRXP_ENEMY_Twilight Champion|r. Kill |cRXP_ENEMY_Rog'mar Scout|r
    *Defeat 8 Twilight Fanatics, 8 Twilight Corrupters, and 8 Twilight Champions within the Twilight's Shroud for Da'grosh.
    *Rescue 5 Rog'mar Scouts within the Twilight's Shroud for Da'grosh.
    .complete 94745,1 --Carving a Path
    .complete 94745,2 --Carving a Path
    .complete 94745,3 --Carving a Path
    .complete 94748,1 --Break Their Chains
    .mob Twilight Fanatic
    .mob Twilight Corrupter
    .mob Twilight Champion
    .mob Rog'mar Scout
step
    .goto 2548,33.47,37.93
    >>Talk to |cRXP_FRIENDLY_Da'grosh|r
    .turnin 94745 >>Turn in Carving a Path
    .turnin 94748 >>Turn in Break Their Chains
    .accept 94768 >>Accept Bring Me His Head
    .target Da'grosh
step
    .goto 2548,25.72,42.4
    >>Collect |cRXP_LOOT_[Kilgar's Head]|r from |cRXP_ENEMY_Overlord Kilgar|r
    *Defeat Overlord Kilgar within the Twilight's Shroud and bring his head to Da'grosh.
    .complete 94768,1 --Bring Me His Head
    .mob Overlord Kilgar
step
    .goto 2548,33.47,37.93
    >>Talk to |cRXP_FRIENDLY_Da'grosh|r
    .turnin 94768 >>Turn in Bring Me His Head
    .accept 95278 >>Accept It Is Time, Brother...
    .target Da'grosh
step
    .goto 2548,59.37,45.6
    >>Talk to |cRXP_FRIENDLY_Krom'rosh|r
    .turnin 95278 >>Turn in It Is Time, Brother...
    .target Krom'rosh
step
    +|cRXP_WARN_Pre-quests done.|r Next: Krol'dok Stronghold itself. That guide tells you when to find a group. Click to continue.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 40-49
#name 40-45 Krol'dok Stronghold
#displayname 40-45 Krol'dok Stronghold
#next 41-44 Riverglades
step
    +|cRXP_WARN_Krol'dok Stronghold|r (levels 40-45). Pick up 5 dungeon quests solo (roughly 5 min with the hand-ins), then ONE run with a group (roughly 1 h 10 min). No group needed until the run step. Click to start.
    *New Forever dungeon in the Riverglades, on the hill over Sunnyglade next to the closed main gates.
    *Its 11 pre-quests are in the guide before this one. Skipped them? Some quests below won't be offered: skip those steps.
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 2548,59.37,45.6
    >>Talk to |cRXP_FRIENDLY_Krom'rosh|r
    .accept 94968 >>Accept Eye of Mugg
    .target Krom'rosh
step
    .goto 2548,59.51,43.96
    >>Talk to |cRXP_FRIENDLY_Tran'gul|r
    .accept 94972 >>Accept Tome of Twilight
    .target Tran'gul
step
    .goto 2548,33.47,37.93
    >>Talk to |cRXP_FRIENDLY_Da'grosh|r
    .accept 94975 >>Accept A Token of Vengeance
    .target Da'grosh
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in.|r
step
    .goto 2548,39,39
    >>Loot |cRXP_LOOT_[Krol'dok Moulding]|r from |cRXP_ENEMY_Tunk|r, then click it to start the quest
    .accept 94973 >>Accept Krol'dok Moulding
    .use 267137
    .mob Tunk
step
    .goto 2548,39,39
    >>Inside Krol'dok Stronghold: these quests start from a drop or an object in the dungeon
    .accept 95056 >>Accept Krol'dok No More!
step
    .goto 2548,39,39
    >>Enter |cRXP_WARN_Krol'dok Stronghold|r with your group. Quest goals inside:
    *Eye of Mugg: Infiltrate Krol'dok Stronghold and return to Krom'rosh with proof of their leader's demise.
    *Tome of Twilight: Recover the Tome of Twilight from Krol'dok Stronghold.
    *A Token of Vengeance: Collect 15 Cultist Ears from the Twilight's Hammer in Krol'dok Stronghold.
    .complete 94968,1 --Eye of Mugg
    .complete 94972,1 --Tome of Twilight
    .complete 94975,1 --A Token of Vengeance
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 2548,39,39
    >>Inside Krol'dok Stronghold: these quests start from a drop or an object in the dungeon
    .turnin 95056 >>Turn in Krol'dok No More!
step
    .goto 2548,33.47,37.93
    >>Talk to |cRXP_FRIENDLY_Da'grosh|r
    .turnin 94975 >>Turn in A Token of Vengeance
    .target Da'grosh
step
    .goto 2548,59.51,43.96
    >>Talk to |cRXP_FRIENDLY_Tran'gul|r
    .turnin 94972 >>Turn in Tome of Twilight
    .target Tran'gul
step
    .goto 2548,59.37,45.6
    >>Talk to |cRXP_FRIENDLY_Krom'rosh|r
    .turnin 94968 >>Turn in Eye of Mugg
    .target Krom'rosh
step
    .goto 2548,59.92,45.97
    >>Talk to |cRXP_FRIENDLY_Kreza Darkthorn|r
    .turnin 94973 >>Turn in Krol'dok Moulding
    .target Kreza Darkthorn
step
    .goto 2548,39,39
    +Dungeon entrance: Krol'dok Stronghold. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 40-49
#name 41-44 Riverglades
#displayname 41-44 Riverglades
#next 42-51 Stranglethorn Vale (2nd visit)
step
    .zone 2548 >>Travel to Riverglades
    *How: Fly to Gadgetzan, ride to Steamwheedle Port, take the goblin boat to Powderfuse Port and ride to Rog'mar (Powderfuse has no working flight master). Never through Redridge.
    *Level for this part: 41-44. 70 quests, roughly 7 h 35 min.
step
    #completewith next
    .goto 2548,59.59,45.08,15,0
    >>Talk to |cRXP_FRIENDLY_Grakna|r if you don't have this flight path yet
    .fp Grakna >>Get the flight path
    .target Grakna
step
    .goto 2548,58.13,45.32
    >>Talk to |cRXP_FRIENDLY_Tan'jani|r
    .accept 95033 >>Accept On the Other Side
    .accept 95951 >>Accept Fetch 'n' Fletch
    .target Tan'jani
step
    .goto 2548,59.37,45.6
    >>Talk to |cRXP_FRIENDLY_Krom'rosh|r
    .accept 93786 >>Accept A Message in Blood
    .accept 93787 >>Accept Food for the Taking
    .target Krom'rosh
step
    .goto 2548,59.92,45.97
    >>Talk to |cRXP_FRIENDLY_Kreza Darkthorn|r
    .accept 93788 >>Accept Borrowed Blades
    .accept 94974 >>Accept Key Ingredients
    .target Kreza Darkthorn
step
    .goto 2548,59.6,47.01
    >>Click the |cRXP_PICK_Wanted|r
    .accept 95882 >>Accept WANTED: Scoutmaster Vargas
step
    .goto 2548,59.46,47.02
    >>Click the |cRXP_PICK_WANTED!|r
    .accept 95992 >>Accept WANTED: Ghostmaw
step
    >>Collect |cRXP_LOOT_[Makeshift Stickin' Spear]|r. Collect |cRXP_LOOT_[Iron Bar]|r
    *Collect Wood Bundles from Peasant Woodpiles in Turner's Logging Camp then fletch them into 20 Makeshift Stickin' Spears.
    *Bring 4 Thick Leather and 12 Iron Bar to Kreza Darkthorn.
    .complete 95951,1 --Fetch 'n' Fletch
    .complete 94974,2 --Key Ingredients
step
    .goto 2548,58.13,45.32
    >>Talk to |cRXP_FRIENDLY_Tan'jani|r
    .turnin 95951 >>Turn in Fetch 'n' Fletch
    .accept 95955 >>Accept Stick 'Em
    .target Tan'jani
step
    .goto 2548,60.46,47.86
    >>Talk to |cRXP_FRIENDLY_Neza Bloodsnout|r
    .accept 96107 >>Accept Feathers for Fletching
    .target Neza Bloodsnout
step
    .goto 2548,68.15,48.57
    >>Talk to |cRXP_FRIENDLY_Sleebo Fizzlespout|r
    .accept 96063 >>Accept Gaseous Gold
    .target Sleebo Fizzlespout
step
    .goto 2548,77.1,52.9
    >>Talk to |cRXP_FRIENDLY_Friz Frazzlespark|r
    .accept 95288 >>Accept Smuggler's Paradise
    .accept 95062 >>Accept Frazzlespark's Crate
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
    .goto 2548,79.02,54.2
    >>Talk to |cRXP_FRIENDLY_Fimbo Greasemitz|r
    .accept 95121 >>Accept A Taste of the Sea
    .target Fimbo Greasemitz
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
    .goto 2548,72.36,61.9
    >>Click the |cRXP_PICK_Painted Hide|r
    .accept 95260 >>Accept Terrors From the Deep
step
    .goto 2548,70.67,71.97
    >>Collect |cRXP_LOOT_[Rot-Covered Harpoon]|r from |cRXP_ENEMY_Old Rot-Chum|r. Kill |cRXP_ENEMY_Murloc Warrior|r. Kill |cRXP_ENEMY_Murloc Oracle|r. Collect |cRXP_LOOT_[Saltwater Murloc Eye]|r from |cRXP_ENEMY_Murloc Oracle|r, |cRXP_ENEMY_Murloc Tideskimmer|r, |cRXP_ENEMY_Murloc Warrior|r
    *Bring proof of Old Rot-Chum's demise to Wharfmaster Whizzbuzz.
    *Kill 8 Murloc Oracles and 8 Murloc Warriors along the Eastwind Shore.
    *Gather 12 Murloc Eyes and 6 pieces of Sand Crawler Meat for Fimbo Greasemitz.
    .complete 95120,1 --WANTED: Old Rot-Chum
    .complete 95118,1 --Saltwater Savages
    .complete 95118,2 --Saltwater Savages
    .complete 95121,1 --A Taste of the Sea
    .mob Old Rot-Chum
    .mob Murloc Warrior
    .mob Murloc Oracle
    .mob Murloc Tideskimmer
step
    .goto 2548,61.8,76.82
    >>Collect |cRXP_LOOT_[Sand Crawler Meat]|r from |cRXP_ENEMY_Sand Crawler|r, |cRXP_ENEMY_Shore Crawler|r
    *Gather 12 Murloc Eyes and 6 pieces of Sand Crawler Meat for Fimbo Greasemitz.
    .complete 95121,2 --A Taste of the Sea
    .mob Sand Crawler
    .mob Shore Crawler
step
    .goto 2548,61.64,58.82
    >>Talk to |cRXP_FRIENDLY_Picked Carcass|r
    .accept 96103 >>Accept A Feast for Buzzards
    .target Picked Carcass
step
    .goto 2548,59.53,59.22
    >>Collect |cRXP_LOOT_[Plains Buzzard Feather]|r from |cRXP_ENEMY_Low Plains Buzzard|r. Collect |cRXP_LOOT_[Marsh Gas Vial]|r from |cRXP_PICK_Marsh Gas Vent|r
    *Bring 6 Plains Buzzard Feathers to Neza Bloodsnout at Rog'mar.
    *Gather 5 Marsh Gas Vials for Sleebo Fizzlespout.
    .complete 96107,1 --Feathers for Fletching
    .complete 96063,1 --Gaseous Gold
    .mob Low Plains Buzzard
step
    .goto 2548,60.46,47.86
    >>Talk to |cRXP_FRIENDLY_Neza Bloodsnout|r
    .turnin 96107 >>Turn in Feathers for Fletching
    .turnin 96103 >>Turn in A Feast for Buzzards
    .accept 96104 >>Accept Song of the Strider
    .accept 96108 >>Accept Poison Tips
    .target Neza Bloodsnout
step
    .goto 2548,59.37,45.6
    >>Talk to |cRXP_FRIENDLY_Krom'rosh|r
    .turnin 95062 >>Turn in Frazzlespark's Crate
    .target Krom'rosh
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
    .goto 2548,79.95,52.49
    >>Talk to |cRXP_FRIENDLY_Argo Brinewhistle|r
    .turnin 95260 >>Turn in Terrors From the Deep
    .accept 95261 >>Accept It Takes Guts
    .target Argo Brinewhistle
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
    .accept 95123 >>Accept A Blast Ye Scurvy Dogs!
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
    >>Collect |cRXP_LOOT_[Scoutmaster's Eye]|r from |cRXP_ENEMY_Scoutmaster Vargas|r, |cRXP_ENEMY_Scout Reynolds|r. Kill |cRXP_ENEMY_Eastsea Raider|r. Kill |cRXP_ENEMY_Eastsea Bombardier|r. Collect |cRXP_LOOT_[Eastsea Powder Keg]|r from |cRXP_PICK_Powder Keg|r
    *Bring the Scoutmaster's Eye to Neza Bloodsnout in Rog'mar.
    *Kill 8 Eastsea Raiders and 8 Eastsea Bombardiers for Wharfmaster Whizzbuzz.
    *Steal 5 Eastsea Powder Kegs for Wharfmaster Whizzbuzz.
    .complete 95882,1 --WANTED: Scoutmaster Vargas
    .complete 95122,1 --Unchecked Expansion
    .complete 95122,2 --Unchecked Expansion
    .complete 95123,1 --A Blast Ye Scurvy Dogs!
    .mob Scoutmaster Vargas
    .mob Scout Reynolds
    .mob Eastsea Raider
    .mob Eastsea Bombardier
step
    .goto 2548,70.73,28.09
    >>Talk to |cRXP_FRIENDLY_Na'zok|r
    .accept 95162 >>Accept Paletusk Harvesting
    .accept 95163 >>Accept Drive Them Back
    .target Na'zok
step
    .goto 2548,69.65,25.93
    >>Talk to |cRXP_FRIENDLY_Gorgegut|r
    .accept 95183 >>Accept Step One: Rock
    .target Gorgegut
step
    .goto 2548,73.36,24.76
    >>Talk to |cRXP_FRIENDLY_Jom-jom|r
    .accept 94556 >>Accept Jom-jom's Escape
    .target Jom-jom
step
    .goto 2548,65.2,25
    >>Collect |cRXP_LOOT_[Rotflesh Mushroom]|r from |cRXP_PICK_Rotflesh Mushroom|r. Collect |cRXP_LOOT_[Good Rock]|r from |cRXP_PICK_Rock Pile|r
    *Collect 15 Beast Entrails and 8 Rotflesh Mushrooms for Argo Brinewhistle.
    *Gather 10 Good Rocks for Hamur in Bolder'ok.
    .complete 95261,2 --It Takes Guts
    .complete 95183,1 --Step One: Rock
step
    .goto 2548,67.24,21.75
    >>Talk to |cRXP_FRIENDLY_Hamur|r
    .turnin 95183 >>Turn in Step One: Rock
    .accept 96026 >>Accept Step Two: More Rock
    .target Hamur
step
    >>Collect |cRXP_LOOT_[Heavy Weightstone]|r
    *Deliver 10 Heavy Weightstones to Hamur in Bolder'ok.
    .complete 96026,1 --Step Two: More Rock
step
    .goto 2548,67.24,21.75
    >>Talk to |cRXP_FRIENDLY_Hamur|r
    .turnin 96026 >>Turn in Step Two: More Rock
    .target Hamur
step
    .goto 2548,64.25,15.72
    >>Talk to |cRXP_FRIENDLY_Clugfist|r
    .turnin 94556 >>Turn in Jom-jom's Escape
    .accept 94668 >>Accept Bloodmaster's Ring
    .target Clugfist
step
    .goto 2548,65.58,21.45
    >>Talk to |cRXP_FRIENDLY_Jezap Jinglesprocket|r
    .turnin 94668 >>Turn in Bloodmaster's Ring
    .accept 94669 >>Accept Pay to Play
    .target Jezap Jinglesprocket
step
    .goto 2548,65.58,21.45
    >>Talk to |cRXP_FRIENDLY_Jezap Jinglesprocket|r
    .turnin 94669 >>Turn in Pay to Play
    .target Jezap Jinglesprocket
step
    .goto 2548,60.46,47.86
    >>Talk to |cRXP_FRIENDLY_Neza Bloodsnout|r
    .turnin 95882 >>Turn in WANTED: Scoutmaster Vargas
    .target Neza Bloodsnout
step
    .goto 2548,60.26,58.57
    >>Collect |cRXP_LOOT_[Intact Tallstrider Beak]|r from |cRXP_ENEMY_Roving Tallstrider|r. Collect |cRXP_LOOT_[Glade Viper Venom]|r from |cRXP_ENEMY_Glade Viper|r
    *Bring an Intact Tallstrider Beak to Neza Bloodsnout at Rog'mar.
    *Bring 4 samples of Glade Viper Venom to Neza Bloodsnout at Rog'mar.
    .complete 96104,1 --Song of the Strider
    .complete 96108,1 --Poison Tips
    .mob Roving Tallstrider
    .mob Glade Viper
step
    .goto 2548,60.46,47.86
    >>Talk to |cRXP_FRIENDLY_Neza Bloodsnout|r
    .turnin 96104 >>Turn in Song of the Strider
    .turnin 96108 >>Turn in Poison Tips
    .accept 96105 >>Accept King of the Wild Plains
    .accept 96109 >>Accept A Hunter's Quiver
    .target Neza Bloodsnout
step
    .goto 2548,58.81,51.93
    >>Collect |cRXP_LOOT_[Ombassa's Hide]|r from |cRXP_ENEMY_Ombassa|r. Collect |cRXP_LOOT_[Prized Lion Hide]|r from |cRXP_ENEMY_Wildplains Patriarch|r, |cRXP_ENEMY_Wildplains Huntress|r
    *Use the Tallstrider Call to call forth the leader of the lion pride. Slay the beast and retrieve its hide for Neza Bloodsnout at Rog'mar.
    *Gather 6 Prized Lion Hides for Neza Bloodsnout at Rog'mar.
    .complete 96105,1 --King of the Wild Plains
    .complete 96109,1 --A Hunter's Quiver
    .mob Ombassa
    .mob Wildplains Patriarch
    .mob Wildplains Huntress
step
    .goto 2548,60.46,47.86
    >>Talk to |cRXP_FRIENDLY_Neza Bloodsnout|r
    .turnin 96105 >>Turn in King of the Wild Plains
    .turnin 96109 >>Turn in A Hunter's Quiver
    .accept 94532 >>Accept Gnoll Infestation
    .accept 94533 >>Accept Snargl's Snout
    .target Neza Bloodsnout
step
    .goto 2548,59.92,45.97
    >>Talk to |cRXP_FRIENDLY_Kreza Darkthorn|r
    .accept 94535 >>Accept Bristle Hills Bandits
    .target Kreza Darkthorn
step
    .goto 2548,47.31,51.41
    >>Talk to |cRXP_FRIENDLY_Fuzzle|r
    .accept 94961 >>Accept Biting the Hand
    .target Fuzzle
step
    .goto 2548,46.7,49.24
    >>Kill |cRXP_ENEMY_Freshwater Crocolisk|r. Collect |cRXP_LOOT_[Twilight Finger Bone]|r from |cRXP_ENEMY_Twilight Shadowmancer|r, |cRXP_ENEMY_Twilight Neophyte|r, |cRXP_ENEMY_Twilight Raider|r
    *Impale 10 Freshwater Crocolisks then return to Tran'jani in Rog'mar.
    *Bring 20 Twilight Finger Bones to Fuzzle.
    .complete 95955,1 --Stick 'Em
    .complete 94961,1 --Biting the Hand
    .mob Freshwater Crocolisk
    .mob Twilight Shadowmancer
    .mob Twilight Neophyte
step
    .goto 2548,47.31,51.41
    >>Talk to |cRXP_FRIENDLY_Fuzzle|r
    .turnin 94961 >>Turn in Biting the Hand
    .accept 94963 >>Accept Biting the Hand
    .target Fuzzle
step
    .goto 2548,41.59,47.73
    >>Click the |cRXP_PICK_Fuzzle's Treasure|r
    .turnin 94963 >>Turn in Biting the Hand
step
    .goto 2548,37.39,42.88
    >>Collect |cRXP_LOOT_[Beast Entrails]|r from |cRXP_ENEMY_Mature Paletusk|r, |cRXP_ENEMY_Sand Crawler|r, |cRXP_ENEMY_Shore Crawler|r
    *Collect 15 Beast Entrails and 8 Rotflesh Mushrooms for Argo Brinewhistle.
    .complete 95261,1 --It Takes Guts
    .mob Mature Paletusk
    .mob Sand Crawler
step
    .goto 2548,33.47,37.93
    >>Talk to |cRXP_FRIENDLY_Da'grosh|r
    .accept 95431 >>Accept Rumblings of Discontent
    .target Da'grosh
step
    .goto 2548,27.66,36.54
    >>Talk to |cRXP_FRIENDLY_Crag'rog|r
    .turnin 95431 >>Turn in Rumblings of Discontent
    .accept 95432 >>Accept Rise Up!
    .target Crag'rog
step
    .goto 2548,27.66,36.54
    >>Talk to |cRXP_FRIENDLY_Crag'rog|r
    .turnin 95432 >>Turn in Rise Up!
    .accept 95433 >>Accept Death to the Executioner
    .target Crag'rog
step
    .goto 2548,30.28,40.67
    >>Collect |cRXP_LOOT_[Executioner's Mace]|r from |cRXP_ENEMY_Executioner Morg|r
    *Collect the Executioner's Mace from Executioner Morg in the Twilight Shroud for Clugfist in Bolder'ok.
    .complete 95433,1 --Death to the Executioner
    .mob Executioner Morg
step
    .goto 2548,24.95,60.91
    >>Kill |cRXP_ENEMY_Young Paletusk|r. Kill |cRXP_ENEMY_Redridge Mystic|r. Kill |cRXP_ENEMY_Redridge Trapper|r. Collect |cRXP_LOOT_[Stolen Ore]|r from |cRXP_ENEMY_Redridge Brute|r, |cRXP_ENEMY_Redridge Mystic|r, |cRXP_ENEMY_Redridge Trapper|r
    *Return 10 Young Paletusks to Na'zok's farm near Bolder'ok.
    *Kill 8 Redridge Mystics, 8 Redridge Trappers, and 6 Redridge Brutes for Neza Bloodsnout at Rog'mar.
    *Gather 40 Stolen Ore from gnolls in the Bristle Hills for Kreza Darkthorn.
    .complete 95163,1 --Drive Them Back
    .complete 94532,1 --Gnoll Infestation
    .complete 94532,2 --Gnoll Infestation
    .complete 94535,1 --Bristle Hills Bandits
    .mob Young Paletusk
    .mob Redridge Mystic
    .mob Redridge Trapper
    .mob Redridge Brute
step
    .goto 2548,20.69,68.86
    >>Kill |cRXP_ENEMY_Redridge Brute|r. Collect |cRXP_LOOT_[Snargl's Snout]|r from |cRXP_ENEMY_Snargl|r
    *Kill 8 Redridge Mystics, 8 Redridge Trappers, and 6 Redridge Brutes for Neza Bloodsnout at Rog'mar.
    *Locate Snargl in the Bristle Hills, kill him, and retrieve his snout for Neza Bloodsnout.
    .complete 94532,3 --Gnoll Infestation
    .complete 94533,1 --Snargl's Snout
    .mob Redridge Brute
    .mob Snargl
step
    .goto 2548,30.21,69.07
    >>Talk to |cRXP_FRIENDLY_Gelinda Coppergleam|r
    .accept 95792 >>Accept Clear 'em Out
    .target Gelinda Coppergleam
step
    .goto 2548,29.31,70.5
    >>Kill |cRXP_ENEMY_Cinderscale Whelp|r. Kill |cRXP_ENEMY_Cinderscale Warrior|r
    *Kill 8 Cinderscale Whelps and 4 Cinderscale Warriors for Gelinda Coppergleam.
    .complete 95792,1 --Clear 'em Out
    .complete 95792,2 --Clear 'em Out
    .mob Cinderscale Whelp
    .mob Cinderscale Warrior
step
    .goto 2548,30.21,69.07
    >>Talk to |cRXP_FRIENDLY_Gelinda Coppergleam|r
    .turnin 95792 >>Turn in Clear 'em Out
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
    .goto 2548,39.46,63.05
    >>Collect |cRXP_LOOT_[Woodworker's Axe]|r from |cRXP_ENEMY_Turner's Mill Lumberjack|r. Collect |cRXP_LOOT_[Ghostmaw's Fang]|r from |cRXP_ENEMY_Ghostmaw|r
    *Retrieve 10 Woodworker's Axe from the lumberjacks at Turner's Logging Camp for Kreza Darkthorn in Rog'mar.
    *Bring Ghostmaw's Fang to Tan'jani in Rog'mar.
    .complete 93788,1 --Borrowed Blades
    .complete 95992,1 --WANTED: Ghostmaw
    .mob Turner's Mill Lumberjack
    .mob Ghostmaw
step
    .goto 2548,44.58,81.4
    >>Kill |cRXP_ENEMY_Meadowsbrook Farmhand|r. Collect |cRXP_LOOT_[Feed Satchel]|r from |cRXP_PICK_Feed Satchel|r
    *Slay 12 Meadowsbrook Farmhands, then return to Krom'rosh with news of your success.
    *Steal 6 Feed Satchels from the Alliance farm in Meadowsbrook then return to Krom'rosh.
    .complete 93786,1 --A Message in Blood
    .complete 93787,1 --Food for the Taking
    .mob Meadowsbrook Farmhand
step
    .goto 2548,59.92,45.97
    >>Talk to |cRXP_FRIENDLY_Kreza Darkthorn|r
    .turnin 93788 >>Turn in Borrowed Blades
    .turnin 94535 >>Turn in Bristle Hills Bandits
    .target Kreza Darkthorn
step
    .goto 2548,60.46,47.86
    >>Talk to |cRXP_FRIENDLY_Neza Bloodsnout|r
    .turnin 94532 >>Turn in Gnoll Infestation
    .turnin 94533 >>Turn in Snargl's Snout
    .target Neza Bloodsnout
step
    .goto 2548,59.37,45.6
    >>Talk to |cRXP_FRIENDLY_Krom'rosh|r
    .turnin 93786 >>Turn in A Message in Blood
    .turnin 93787 >>Turn in Food for the Taking
    .target Krom'rosh
step
    .goto 2548,58.13,45.32
    >>Talk to |cRXP_FRIENDLY_Tan'jani|r
    .turnin 95992 >>Turn in WANTED: Ghostmaw
    .turnin 95955 >>Turn in Stick 'Em
    .target Tan'jani
step
    .goto 2548,59.37,45.6
    >>Talk to |cRXP_FRIENDLY_Krom'rosh|r
    .accept 94480 >>Accept A Gift From Our Enemies
    .accept 94483 >>Accept Show Them How It's Done
    .target Krom'rosh
step
    .goto 2548,59.92,45.97
    >>Talk to |cRXP_FRIENDLY_Kreza Darkthorn|r
    .accept 93976 >>Accept The Goblin Trader
    .target Kreza Darkthorn
step
    .goto 2548,58.65,44.57
    >>Talk to |cRXP_FRIENDLY_Gorg|r
    .turnin 94480 >>Turn in A Gift From Our Enemies
    .accept 94481 >>Accept A Serving of Strength
    .target Gorg
step
    .goto 2548,58.58,37.27
    >>Kill |cRXP_ENEMY_Rog'mar Trainee|r
    *Feed 8 Rog'mar Trainees at the training grounds.
    .complete 94481,1 --A Serving of Strength
    .mob Rog'mar Trainee
step
    .goto 2548,58.65,44.57
    >>Talk to |cRXP_FRIENDLY_Gorg|r
    .turnin 94481 >>Turn in A Serving of Strength
    .target Gorg
step
    .goto 2548,79.45,52.71
    >>Talk to |cRXP_FRIENDLY_Wharfmaster Whizzbuzz|r
    .turnin 95122 >>Turn in Unchecked Expansion
    .turnin 95123 >>Turn in A Blast Ye Scurvy Dogs!
    .target Wharfmaster Whizzbuzz
step
    .goto 2548,77.1,52.9
    >>Talk to |cRXP_FRIENDLY_Friz Frazzlespark|r
    .turnin 95294 >>Turn in Smuggler's Bargain
    .turnin 93976 >>Turn in The Goblin Trader
    .accept 95295 >>Accept I Know a Guy
    .accept 95296 >>Accept Shipping and Handling
    .target Friz Frazzlespark
step
    .goto 2548,79.45,52.71
    >>Talk to |cRXP_FRIENDLY_Wharfmaster Whizzbuzz|r
    .accept 95124 >>Accept Admiral Lamora
    .accept 95165 >>Accept See Ya, Scallywags!
    .target Wharfmaster Whizzbuzz
step
    .goto 2548,79.95,52.49
    >>Talk to |cRXP_FRIENDLY_Argo Brinewhistle|r
    .turnin 95261 >>Turn in It Takes Guts
    .target Argo Brinewhistle
step
    .goto 2548,79.45,52.71
    >>Talk to |cRXP_FRIENDLY_Wharfmaster Whizzbuzz|r
    .turnin 95165 >>Turn in See Ya, Scallywags!
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
    .goto 2548,79.95,52.49
    >>Talk to |cRXP_FRIENDLY_Argo Brinewhistle|r
    .turnin 95267 >>Turn in The Monster Surfaces
    .target Argo Brinewhistle
step
    .goto 2548,70.73,28.09
    >>Talk to |cRXP_FRIENDLY_Na'zok|r
    .turnin 95163 >>Turn in Drive Them Back
    .target Na'zok
step
    .goto 2548,64.25,15.72
    >>Talk to |cRXP_FRIENDLY_Clugfist|r
    .turnin 95433 >>Turn in Death to the Executioner
    .target Clugfist
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
    .goto 2548,48.1,68.88
    >>Kill |cRXP_ENEMY_Farholde Priest|r. Kill |cRXP_ENEMY_Farholde Scout|r
    *Slay 8 Farholde Priests and 12 Farholde Scouts south of the river.
    .complete 94483,1 --Show Them How It's Done
    .complete 94483,2 --Show Them How It's Done
    .mob Farholde Priest
    .mob Farholde Scout
step
    .goto 2548,59.37,45.6
    >>Talk to |cRXP_FRIENDLY_Krom'rosh|r
    .turnin 94483 >>Turn in Show Them How It's Done
    .target Krom'rosh
step
    .goto 2548,59.51,43.96
    >>Talk to |cRXP_FRIENDLY_Tran'gul|r
    .accept 94672 >>Accept Encroaching Twilight
    .accept 94680 >>Accept Twilight Missives
    .target Tran'gul
step
    .goto 2548,46.45,47.96
    >>Kill |cRXP_ENEMY_Twilight Raider|r. Kill |cRXP_ENEMY_Twilight Shadowmancer|r. Kill |cRXP_ENEMY_Twilight Neophyte|r. Collect |cRXP_LOOT_[Twilight Missive]|r from |cRXP_ENEMY_Twilight Shadowmancer|r
    *Defeat 8 Twilight Raiders and 8 Twilight Neophytes within Sunnyglade for Tran'gul in Rog'mar.
    *Retrieve 3 Twilight Missives from Twilight Shadowmancers in Sunnyglade for Tran'gul in Rog'mar.
    .complete 94672,1 --Encroaching Twilight
    .complete 94672,2 --Encroaching Twilight
    .complete 94672,3 --Encroaching Twilight
    .complete 94680,1 --Twilight Missives
    .mob Twilight Raider
    .mob Twilight Shadowmancer
    .mob Twilight Neophyte
step
    .goto 2548,59.51,43.96
    >>Talk to |cRXP_FRIENDLY_Tran'gul|r
    .turnin 94672 >>Turn in Encroaching Twilight
    .turnin 94680 >>Turn in Twilight Missives
    .accept 94727 >>Accept Digging for Answers
    .target Tran'gul
step
    .goto 2548,49.95,46.99
    >>Talk to |cRXP_FRIENDLY_Clubtoe|r
    .turnin 94727 >>Turn in Digging for Answers
    .accept 95602 >>Accept Sickening Lights
    .accept 95417 >>Accept The Purple Ones
    .target Clubtoe
step
    .goto 2548,49.95,46.99
    >>Talk to |cRXP_FRIENDLY_Clubtoe|r
    .turnin 95602 >>Turn in Sickening Lights
    .target Clubtoe
step
    .goto 2548,49.18,46.74
    >>Talk to |cRXP_FRIENDLY_Twilight Brute|r
    .turnin 95417 >>Turn in The Purple Ones
    .accept 95601 >>Accept The Purple Ones
    .target Twilight Brute
step
    .goto 2548,47.69,48.17
    >>Kill |cRXP_ENEMY_Empowered Brute|r. Kill |cRXP_ENEMY_Twilight Ritualist|r
    *Kill 5 Empowered Brutes and 10 Twilight Ritualists then return to Clubtoe in Sunnyglade.
    .complete 95601,1 --The Purple Ones
    .complete 95601,2 --The Purple Ones
    .mob Empowered Brute
    .mob Twilight Ritualist
step
    .goto 2548,49.95,46.99
    >>Talk to |cRXP_FRIENDLY_Clubtoe|r
    .turnin 95601 >>Turn in The Purple Ones
    .target Clubtoe
step
    .goto 1444,74.42,43.36
    >>Talk to |cRXP_FRIENDLY_Witch Doctor Uzer'i|r
    .turnin 95033 >>Turn in On the Other Side
    .target Witch Doctor Uzer'i
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
    .goto 1434,27.37,74.08
    >>Talk to |cRXP_FRIENDLY_Caravaneer Ruzzgot|r
    .turnin 95326 >>Turn in The Big Payback
    .target Caravaneer Ruzzgot
step
    .goto 1446,67.6,23.15
    >>Talk to |cRXP_FRIENDLY_Wharfmaster Steamfizzle|r
    .turnin 95296 >>Turn in Shipping and Handling
    .accept 95383 >>Accept Shipping and Handling
    .target Wharfmaster Steamfizzle
step
    .goto 1446,67.35,23.98
    >>Talk to |cRXP_FRIENDLY_Tazzik|r
    .turnin 95383 >>Turn in Shipping and Handling
    .accept 95312 >>Accept Coming to Collect
    .target Tazzik
step
    .goto 1446,51.66,27.83
    >>Talk to |cRXP_FRIENDLY_Fizbuz Mithril|r
    .turnin 95312 >>Turn in Coming to Collect
    .accept 95321 >>Accept Tazzik's Dues
    .target Fizbuz Mithril
step
    .goto 1446,67.35,23.98
    >>Kill |cRXP_ENEMY_Tazzik|r
    *Confront Tazzik in Steamwheedle Port in Tanaris.
    .complete 95321,1 --Tazzik's Dues
    .mob Tazzik
step
    .goto 1446,67.35,23.98
    >>Talk to |cRXP_FRIENDLY_Tazzik|r
    .turnin 95321 >>Turn in Tazzik's Dues
    .target Tazzik
step
    .goto 1458,61.64,28.95
    >>Talk to |cRXP_FRIENDLY_Mirelle Tremayne|r
    .accept 97884 >>Accept Armory of Sunnyglade
    .target Mirelle Tremayne
step
    .goto 1445,45.21,67.98
    >>Collect |cRXP_LOOT_[Thick Leather]|r from |cRXP_ENEMY_Wild Gryphon|r, |cRXP_ENEMY_Skhowl|r, |cRXP_ENEMY_Searing Whelp|r
    *Bring 4 Thick Leather and 12 Iron Bar to Kreza Darkthorn.
    .complete 94974,1 --Key Ingredients
    .mob Wild Gryphon
    .mob Skhowl
step
    .goto 2548,59.92,45.97
    >>Talk to |cRXP_FRIENDLY_Kreza Darkthorn|r
    .turnin 94974 >>Turn in Key Ingredients
    .target Kreza Darkthorn
step
    .goto 2548,46.92,49.9
    >>Collect |cRXP_LOOT_[Tremayne Family Blacksmithing Techniques]|r from |cRXP_PICK_Tremayne Family Blacksmithing Techniques|r
    *Travel to Sunnyglade in the Riverglades and recover the tome of Tremayne Family Blacksmithing Techniques.
    .complete 97884,1 --Armory of Sunnyglade
step
    .goto 1458,61.64,28.95
    >>Talk to |cRXP_FRIENDLY_Mirelle Tremayne|r
    .turnin 97884 >>Turn in Armory of Sunnyglade
    .target Mirelle Tremayne
step
    .goto 1429,40.92,69.51
    >>Collect |cRXP_LOOT_[Chunk of Boar Meat]|r from |cRXP_ENEMY_Stonetusk Boar|r, |cRXP_ENEMY_Longsnout|r, |cRXP_ENEMY_Goretusk|r
    *Gather 10 Chunks of Boar Meat for Na'zok near Bolder'ok.
    .complete 95162,1 --Paletusk Harvesting
    .mob Stonetusk Boar
    .mob Longsnout
step
    .goto 2548,70.73,28.09
    >>Talk to |cRXP_FRIENDLY_Na'zok|r
    .turnin 95162 >>Turn in Paletusk Harvesting
    .target Na'zok
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 40-49
#name 42-51 Stranglethorn Vale (2nd visit)
#displayname 42-51 Stranglethorn Vale (2nd visit)
#next 41-51 Uldaman pre-quests
step
    +|cRXP_WARN_Back to Stranglethorn Vale: its quests that were too high last time|r
step
    .zone 1434 >>Travel to Stranglethorn Vale
    *How: Fly to Grom'gol (or the zeppelin Orgrimmar -> Grom'gol).
    *Level for this part: 42-51. 22 quests, roughly 3 h 10 min.
step
    .goto 1434,32.22,27.6
    >>Click the |cRXP_PICK_Bubbling Cauldron|r
    .accept 586 >>Accept Speaking with Gan'zulah
step
    .goto 1434,32.27,27.71
    >>Talk to |cRXP_FRIENDLY_Kin'weelay|r
    .accept 96078 >>Accept A Tale Spun Around the Fire
    .accept 598 >>Accept Split Bone Necklace
    .target Kin'weelay
step
    .goto 1434,45.92,38
    >>Kill |cRXP_ENEMY_Skullsplitter Hunter|r. Kill |cRXP_ENEMY_Skullsplitter Headhunter|r. Kill |cRXP_ENEMY_Skullsplitter Berserker|r. Collect |cRXP_LOOT_[Broken Armor of Ana'thek]|r from |cRXP_ENEMY_Ana'thek the Cruel|r. Collect |cRXP_LOOT_[Split Bone Necklace]|r from |cRXP_ENEMY_Skullsplitter Warrior|r, |cRXP_ENEMY_Skullsplitter Hunter|r, |cRXP_ENEMY_Skullsplitter Witch Doctor|r
    *Kill 8 Skullsplitter Hunters, 6 Skullsplitter Headhunters, and 4 Skullsplitter Berserkers.
    *Bring 25 Split Bone Necklaces to Kin'weelay at the Grom'gol Base camp.
    .complete 586,1 --Speaking with Gan'zulah
    .complete 586,2 --Speaking with Gan'zulah
    .complete 586,3 --Speaking with Gan'zulah
    .complete 586,4 --Speaking with Gan'zulah
    .complete 598,1 --Split Bone Necklace
    .mob Skullsplitter Hunter
    .mob Skullsplitter Headhunter
    .mob Skullsplitter Berserker
    .mob Ana'thek the Cruel
    .mob Skullsplitter Warrior
step
    .goto 1434,32.22,27.6
    >>Click the |cRXP_PICK_Bubbling Cauldron|r
    .turnin 586 >>Turn in Speaking with Gan'zulah
step
    .goto 1434,32.27,27.71
    >>Talk to |cRXP_FRIENDLY_Kin'weelay|r
    .turnin 598 >>Turn in Split Bone Necklace
    .target Kin'weelay
step
    .goto 1434,32.22,27.6
    >>Click the |cRXP_PICK_Bubbling Cauldron|r
    .accept 588 >>Accept The Fate of Yenniku
step
    .goto 1434,32.27,27.71
    >>Talk to |cRXP_FRIENDLY_Kin'weelay|r
    .turnin 588 >>Turn in The Fate of Yenniku
    .accept 589 >>Accept The Singing Crystals
    .target Kin'weelay
step
    .goto 1434,42.67,47.82
    >>Collect |cRXP_LOOT_[Pulsing Blue Shard]|r from |cRXP_ENEMY_Ironjaw Basilisk|r
    *Bring 3 Pulsing Blue Shards to Kin'weelay at the Grom'gol Base Camp.
    .complete 589,1 --The Singing Crystals
    .mob Ironjaw Basilisk
step
    .goto 1434,32.27,27.71
    >>Talk to |cRXP_FRIENDLY_Kin'weelay|r
    .turnin 589 >>Turn in The Singing Crystals
    .accept 591 >>Accept The Mind's Eye
    .target Kin'weelay
step
    .goto 1434,52.93,27.6
    >>Collect |cRXP_LOOT_[Mind's Eye]|r from |cRXP_ENEMY_Mai'Zoth|r
    *Bring the Mind's Eye to Kin'weelay at the Grom'gol Base Camp.
    .complete 591,1 --The Mind's Eye
    .mob Mai'Zoth
step
    .goto 1434,32.27,27.71
    >>Talk to |cRXP_FRIENDLY_Kin'weelay|r
    .turnin 591 >>Turn in The Mind's Eye
    .accept 592 >>Accept Saving Yenniku
    .target Kin'weelay
step
    >>Collect |cRXP_LOOT_[Filled Soul Gem]|r
    *Bring the Filled Soul Gem to Nimboya.
    .complete 592,1 --Saving Yenniku
step
    .goto 1434,32.16,27.72
    >>Talk to |cRXP_FRIENDLY_Nimboya|r
    .turnin 592 >>Turn in Saving Yenniku
    .target Nimboya
step
    .goto 1434,23.25,72.1
    >>Loot |cRXP_LOOT_[Monogrammed Sash]|r from |cRXP_ENEMY_Mok'rash|r, then click it to start the quest
    .accept 8552 >>Accept The Monogrammed Sash
    .use 3985
    .mob Mok'rash
step
    .goto 1434,26.69,73.61
    >>Talk to |cRXP_FRIENDLY_Captain Hecklebury Smotts|r
    .turnin 8552 >>Turn in The Monogrammed Sash
    .target Captain Hecklebury Smotts
step
    .goto 1434,27.37,74.08
    >>Talk to |cRXP_FRIENDLY_Caravaneer Ruzzgot|r
    .accept 95327 >>Accept All's Well That Ends Well
    .target Caravaneer Ruzzgot
step
    .goto 1434,26.69,73.61
    >>Talk to |cRXP_FRIENDLY_Captain Hecklebury Smotts|r
    .accept 8551 >>Accept The Captain's Chest
    .target Captain Hecklebury Smotts
step
    .goto 1434,28.59,75.9
    >>Talk to |cRXP_FRIENDLY_Dizzy One-Eye|r
    .accept 576 >>Accept Keep An Eye Out
    .target Dizzy One-Eye
step
    .goto 1434,27.14,77.45
    >>Talk to |cRXP_FRIENDLY_Whiskey Slim|r
    .accept 580 >>Accept Whiskey Slim's Lost Grog
    .target Whiskey Slim
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
    .accept 609 >>Accept Voodoo Dues
    .target "Sea Wolf" MacKinley
step
    .goto 1434,26.76,76.38
    >>Talk to |cRXP_FRIENDLY_Privateer Bloads|r
    .accept 617 >>Accept Akiris by the Bundle
    .target Privateer Bloads
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
    .goto 1434,37,77.24
    >>Loot |cRXP_LOOT_[Carefully Folded Note]|r, then click it to start the quest
    .accept 594 >>Accept Message in a Bottle
    .use 4098
step
    .goto 1434,38.53,80.58
    >>Talk to |cRXP_FRIENDLY_Princess Poobah|r
    .turnin 594 >>Turn in Message in a Bottle
    .accept 630 >>Accept Message in a Bottle
    .target Princess Poobah
step
    .goto 1434,40.95,83.9
    >>Collect |cRXP_LOOT_[Shackle Key]|r from |cRXP_ENEMY_King Mukla|r
    *Slay King Mukla and return to Princess Poobah with the Key to free her.
    .complete 630,1 --Message in a Bottle
    .mob King Mukla
step
    .goto 1434,38.53,80.58
    >>Talk to |cRXP_FRIENDLY_Princess Poobah|r
    .turnin 630 >>Turn in Message in a Bottle
    .target Princess Poobah
step
    .goto 1434,30.1,87.5
    >>Collect |cRXP_LOOT_[Dizzy's Eye]|r from |cRXP_ENEMY_Bloodsail Raider|r, |cRXP_ENEMY_Bloodsail Mage|r, |cRXP_ENEMY_Bloodsail Swashbuckler|r
    *Dizzy One-Eye in Booty Bay wants you to retrieve his eye from the Bloodsail Buccaneers.
    .complete 576,1 --Keep An Eye Out
    .mob Bloodsail Raider
    .mob Bloodsail Mage
step
    .goto 1434,29.19,88.6
    >>Loot |cRXP_LOOT_[Cortello's Riddle]|r, then click it to start the quest
    .accept 624 >>Accept Cortello's Riddle
    .use 4056
step
    .goto 1434,28.59,75.9
    >>Talk to |cRXP_FRIENDLY_Dizzy One-Eye|r
    .turnin 576 >>Turn in Keep An Eye Out
    .target Dizzy One-Eye
step
    .goto 1434,36.95,69.73
    >>Collect |cRXP_LOOT_[Smotts' Chest]|r from |cRXP_ENEMY_Gorlash|r
    *Bring Smotts' Chest to Hecklebury Smotts in Booty Bay.
    .complete 8551,1 --The Captain's Chest
    .mob Gorlash
step
    .goto 1434,26.69,73.61
    >>Talk to |cRXP_FRIENDLY_Captain Hecklebury Smotts|r
    .turnin 8551 >>Turn in The Captain's Chest
    .target Captain Hecklebury Smotts
step
    .goto 1434,27.92,61.59
    >>Collect |cRXP_LOOT_[Akiris Reed]|r from |cRXP_ENEMY_Naga Explorer|r
    *Bring 10 Bundles of Akiris Reed to Privateer Bloads in Booty Bay.
    .complete 617,1 --Akiris by the Bundle
    .mob Naga Explorer
step
    .goto 1434,35.26,51.27
    >>Collect |cRXP_LOOT_[Maury's Clubbed Foot]|r from |cRXP_ENEMY_Maury "Club Foot" Wilkins|r. Collect |cRXP_LOOT_[Jon-Jon's Golden Spyglass]|r from |cRXP_ENEMY_Jon-Jon the Crow|r. Collect |cRXP_LOOT_[Chucky's Huge Ring]|r from |cRXP_ENEMY_Chucky "Ten Thumbs"|r
    *Bring Maury's Clubbed Foot, Jon-Jon's Golden Spyglass, and Chucky's Huge Ring to "Sea Wolf" MacKinley in Booty Bay.
    .complete 609,1 --Voodoo Dues
    .complete 609,2 --Voodoo Dues
    .complete 609,3 --Voodoo Dues
    .mob Maury "Club Foot" Wilkins
    .mob Jon-Jon the Crow
    .mob Chucky "Ten Thumbs"
step
    .goto 1434,45.92,38
    >>Collect |cRXP_LOOT_[Skullsplitter Tusk]|r from |cRXP_ENEMY_Skullsplitter Warrior|r, |cRXP_ENEMY_Skullsplitter Hunter|r, |cRXP_ENEMY_Skullsplitter Witch Doctor|r
    *Acquire 18 Skullsplitter Tusks and return them to Kebok.
    .complete 209,1 --Skullsplitter Tusks
    .mob Skullsplitter Warrior
    .mob Skullsplitter Hunter
step
    .goto 1434,27,77.13
    >>Talk to |cRXP_FRIENDLY_Kebok|r
    .turnin 209 >>Turn in Skullsplitter Tusks
    .target Kebok
step
    .goto 1434,27.78,77.07
    >>Talk to |cRXP_FRIENDLY_"Sea Wolf" MacKinley|r
    .turnin 609 >>Turn in Voodoo Dues
    .target "Sea Wolf" MacKinley
step
    .goto 1434,26.76,76.38
    >>Talk to |cRXP_FRIENDLY_Privateer Bloads|r
    .turnin 617 >>Turn in Akiris by the Bundle
    .target Privateer Bloads
step
    .goto 1434,27.78,77.07
    >>Talk to |cRXP_FRIENDLY_"Sea Wolf" MacKinley|r
    .accept 613 >>Accept Cracking Maury's Foot
    .target "Sea Wolf" MacKinley
step
    .goto 1434,51.48,27.13
    >>Collect |cRXP_LOOT_[Maury's Key]|r from |cRXP_ENEMY_Mosh'Ogg Mauler|r, |cRXP_ENEMY_Mosh'Ogg Shaman|r, |cRXP_ENEMY_Mosh'Ogg Lord|r
    *Bring Maury's Key to "Sea Wolf" Mackinley in Booty Bay.
    .complete 613,1 --Cracking Maury's Foot
    .mob Mosh'Ogg Mauler
    .mob Mosh'Ogg Shaman
step
    .goto 1434,27.78,77.07
    >>Talk to |cRXP_FRIENDLY_"Sea Wolf" MacKinley|r
    .turnin 613 >>Turn in Cracking Maury's Foot
    .target "Sea Wolf" MacKinley
step
    .goto 1411,55.95,74.72
    >>Talk to |cRXP_FRIENDLY_Master Gadrin|r
    .turnin 96078 >>Turn in A Tale Spun Around the Fire
    .target Master Gadrin
step
    .goto 2548,77.1,52.9
    >>Talk to |cRXP_FRIENDLY_Friz Frazzlespark|r
    .turnin 95327 >>Turn in All's Well That Ends Well
    .target Friz Frazzlespark
step
    .goto 1435,22.87,48.19
    >>Click the |cRXP_PICK_A Soggy Scroll|r
    .turnin 624 >>Turn in Cortello's Riddle
    .accept 625 >>Accept Cortello's Riddle
step
    .goto 1445,31.1,66.14
    >>Click the |cRXP_PICK_Musty Scroll|r
    .turnin 625 >>Turn in Cortello's Riddle
    .accept 626 >>Accept Cortello's Riddle
step
    .goto 1425,80.79,46.82
    >>Click the |cRXP_PICK_Cortello's Treasure|r
    .turnin 626 >>Turn in Cortello's Riddle
step
    .goto 1425,76.05,77.47
    >>Collect |cRXP_LOOT_[Pupellyverbos Port]|r from |cRXP_PICK_Pupellyverbos Port|r
    *Whiskey Slim in Booty Bay wants you to bring him the bottles of Pupellyverbos Port he lost.
    .complete 580,1 --Whiskey Slim's Lost Grog
step
    .goto 1434,27.14,77.45
    >>Talk to |cRXP_FRIENDLY_Whiskey Slim|r
    .turnin 580 >>Turn in Whiskey Slim's Lost Grog
    .target Whiskey Slim
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 40-49
#name 41-51 Uldaman pre-quests
#displayname 41-51 Uldaman pre-quests
#next 41-51 Uldaman
step
    +|cRXP_WARN_Uldaman: pre-quests|r. 1 quests, solo (no group needed), roughly 20 min. The run guide comes after this one. Click to start.
    *Pre-quests: Badlands Reagent Run
step
    .goto 1418,2.42,46.06
    >>Talk to |cRXP_FRIENDLY_Jarkal Mossmeld|r
    .accept 2258 >>Accept Badlands Reagent Run
    .target Jarkal Mossmeld
step
    .goto 1418,15.03,60.1
    >>Collect |cRXP_LOOT_[Buzzard Gizzard]|r from |cRXP_ENEMY_Wayward Buzzard|r, |cRXP_ENEMY_Buzzard|r, |cRXP_ENEMY_Giant Buzzard|r
    *Bring 5 Buzzard Gizzards, 10 Crag Coyote Fangs, and 5 Rock Elemental Shards to Jarkal Mossmeld in Kargath, Badlands.
    .complete 2258,1 --Badlands Reagent Run
    .mob Wayward Buzzard
    .mob Buzzard
step
    .goto 1418,55.52,56.68
    >>Collect |cRXP_LOOT_[Crag Coyote Fang]|r from |cRXP_ENEMY_Crag Coyote|r, |cRXP_ENEMY_Feral Crag Coyote|r, |cRXP_ENEMY_Elder Crag Coyote|r
    *Bring 5 Buzzard Gizzards, 10 Crag Coyote Fangs, and 5 Rock Elemental Shards to Jarkal Mossmeld in Kargath, Badlands.
    .complete 2258,2 --Badlands Reagent Run
    .mob Crag Coyote
    .mob Feral Crag Coyote
step
    .goto 1418,2.77,78.22
    >>Collect |cRXP_LOOT_[Rock Elemental Shard]|r from |cRXP_ENEMY_Earth Elemental|r, |cRXP_ENEMY_Lesser Rock Elemental|r, |cRXP_ENEMY_Greater Rock Elemental|r
    *Bring 5 Buzzard Gizzards, 10 Crag Coyote Fangs, and 5 Rock Elemental Shards to Jarkal Mossmeld in Kargath, Badlands.
    .complete 2258,3 --Badlands Reagent Run
    .mob Earth Elemental
    .mob Lesser Rock Elemental
step
    .goto 1418,2.42,46.06
    >>Talk to |cRXP_FRIENDLY_Jarkal Mossmeld|r
    .turnin 2258 >>Turn in Badlands Reagent Run
    .target Jarkal Mossmeld
step
    +|cRXP_WARN_Pre-quests done.|r Next: Uldaman itself. That guide tells you when to find a group. Click to continue.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 40-49
#name 41-51 Uldaman
#displayname 41-51 Uldaman
#next 44-45 Swamp of Sorrows/Badlands
step
    +|cRXP_WARN_Uldaman|r (levels 41-51). Pick up 10 dungeon quests solo (roughly 1 h 35 min with the hand-ins), then ONE run with a group (roughly 3 h 30 min). No group needed until the run step. Click to start.
    *Forever: Annora inside Uldaman is the Artisan Enchanting trainer.
    *Its 1 pre-quests are in the guide before this one. Skipped them? Some quests below won't be offered: skip those steps.
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1418,2.42,46.06
    >>Talk to |cRXP_FRIENDLY_Jarkal Mossmeld|r
    .accept 2202 >>Accept Uldaman Reagent Run
    .target Jarkal Mossmeld
step
    .goto 1418,42.39,52.93
    >>Talk to |cRXP_FRIENDLY_Rigglefuzz|r
    .accept 2418 >>Accept Power Stones
    .target Rigglefuzz
step
    .goto 1418,51.39,76.87
    >>Talk to |cRXP_FRIENDLY_Theldurin the Lost|r
    .accept 709 >>Accept Solution to Doom
    .target Theldurin the Lost
step
    .goto 1454,59.49,36.57
    >>Talk to |cRXP_FRIENDLY_Dran Droffers|r
    .accept 2283 >>Accept Necklace Recovery
    .target Dran Droffers
step
    .goto 1458,62.32,48.61
    >>Talk to |cRXP_FRIENDLY_Patrick Garrett|r
    .accept 2342 >>Accept Reclaimed Treasures
    .target Patrick Garrett
step
    .goto 1432,38.57,93.18
    >>Collect |cRXP_LOOT_[Tablet of Ryun'eh]|r from |cRXP_PICK_Ancient Chest|r
    *Bring the Tablet of Ryun'eh to Theldurin the Lost.
    .complete 709,1 --Solution to Doom
step
    .goto 1432,33.93,93.01
    >>Collect |cRXP_LOOT_[Garrett Family Treasure]|r from |cRXP_PICK_Garrett Family Chest|r
    *Get Patrick Garrett's family treasure from their family chest in the South Common Hall of Uldaman, and bring it to him in the Undercity.
    .complete 2342,1 --Reclaimed Treasures
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in.|r
step
    .goto 1418,44.6,12.1
    >>Inside Uldaman: these quests start from a drop or an object in the dungeon
    .accept 2278 >>Accept The Platinum Discs
step
    .goto 1418,44.6,12.1
    >>Enter |cRXP_WARN_Uldaman|r with your group. Quest goals inside:
    *Uldaman Reagent Run: Bring 12 Magenta Fungus Caps to Jarkal Mossmeld in Kargath.
    *Necklace Recovery: Look for a valuable necklace within the Uldaman dig site and bring it back to Dran Droffers in Orgrimmar. The necklace may be damaged.
    *Power Stones: Bring 8 Dentrium Power Stones and 8 An'Alleum Power Stones to Rigglefuzz in the Badlands.
    .complete 2202,1 --Uldaman Reagent Run
    .complete 2283,1 --Necklace Recovery
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
    .goto 1418,2.42,46.06
    >>Talk to |cRXP_FRIENDLY_Jarkal Mossmeld|r
    .turnin 2202 >>Turn in Uldaman Reagent Run
    .target Jarkal Mossmeld
step
    .goto 1454,59.49,36.57
    >>Talk to |cRXP_FRIENDLY_Dran Droffers|r
    .turnin 2283 >>Turn in Necklace Recovery
    .target Dran Droffers
step
    .goto 1458,62.32,48.61
    >>Talk to |cRXP_FRIENDLY_Patrick Garrett|r
    .turnin 2342 >>Turn in Reclaimed Treasures
    .target Patrick Garrett
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1454,59.49,36.57
    >>Talk to |cRXP_FRIENDLY_Dran Droffers|r
    .accept 2284 >>Accept Necklace Recovery, Take 2
    .target Dran Droffers
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in. (run 2)|r
step
    .goto 1418,44.6,12.1
    >>Inside Uldaman: these quests start from a drop or an object in the dungeon
    .accept 2280 >>Accept The Platinum Discs
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1456,34.4,46.87
    >>Talk to |cRXP_FRIENDLY_Sage Truthseeker|r
    .turnin 2280 >>Turn in The Platinum Discs
    .target Sage Truthseeker
step
    .goto 1454,59.49,36.57
    >>Talk to |cRXP_FRIENDLY_Dran Droffers|r
    .turnin 2284 >>Turn in Necklace Recovery, Take 2
    .target Dran Droffers
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in. (run 3)|r
step
    .goto 1418,44.6,12.1
    >>Inside Uldaman: these quests start from a drop or an object in the dungeon
    .accept 2318 >>Accept Translating the Journal
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1418,2.42,46.06
    >>Talk to |cRXP_FRIENDLY_Jarkal Mossmeld|r
    .turnin 2318 >>Turn in Translating the Journal
    .target Jarkal Mossmeld
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1418,2.42,46.06
    >>Talk to |cRXP_FRIENDLY_Jarkal Mossmeld|r
    .accept 2338 >>Accept Translating the Journal
    .target Jarkal Mossmeld
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1418,2.42,46.06
    >>Talk to |cRXP_FRIENDLY_Jarkal Mossmeld|r
    .turnin 2338 >>Turn in Translating the Journal
    .target Jarkal Mossmeld
step
    >>|cRXP_WARN_Also part of this dungeon (later follow-ups or missing data). Do them if they are offered:|r
    *Find the Gems and Power Source
    *Deliver the Gems
    *Necklace Recovery, Take 3
    +Done
step
    .goto 1418,44.6,12.1
    +Dungeon entrance: Uldaman. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 40-49
#name 44-45 Swamp of Sorrows/Badlands
#displayname 44-45 Swamp of Sorrows/Badlands
#next 44-54 Zul'Farrak pre-quests
step
    #completewith next
    +|cRXP_WARN_On the way: lead-in quests in Arathi Highlands that open quests in Swamp of Sorrows|r
step
    .goto 1417,36.23,57.38
    >>Click the |cRXP_PICK_Stone of Inner Binding|r
    .accept 652 >>Accept Breaking the Keystone
step
    .goto 1417,67.73,37.65
    >>Collect |cRXP_LOOT_[Rod of Order]|r from |cRXP_ENEMY_Fozruk|r
    *Find and kill Fozruk. Bring the Rod of Order to the Keystone in the Arathi Highlands.
    .complete 652,1 --Breaking the Keystone
    .mob Fozruk
step
    .goto 1417,36.08,58.09
    >>Click the |cRXP_PICK_Keystone|r
    .turnin 652 >>Turn in Breaking the Keystone
    .accept 688 >>Accept Myzrael's Allies
step
    .goto 1417,74.54,35.64
    >>Talk to |cRXP_FRIENDLY_Zaruk|r
    .turnin 688 >>Turn in Myzrael's Allies
    .accept 687 >>Accept Theldurin the Lost
    .target Zaruk
step
    .zone 1435 >>Travel to Swamp of Sorrows
    *How: Ride out of the Riverglades to Stonard (Swamp of Sorrows) or Kargath (Badlands).
    *Level for this part: 44-45. 45 quests, roughly 6 h 40 min.
step
    #completewith next
    .goto 1435,46.07,54.83,15,0
    >>Talk to |cRXP_FRIENDLY_Breyk|r if you don't have this flight path yet
    .fp Breyk >>Get the flight path
    .target Breyk
step
    .goto 1418,51.39,76.87
    >>Talk to |cRXP_FRIENDLY_Theldurin the Lost|r
    .turnin 687 >>Turn in Theldurin the Lost
    .accept 692 >>Accept The Lost Fragments
    .accept 728 >>Accept To the Undercity for Yagyin's Digest
    .target Theldurin the Lost
step
    .goto 1418,53.7,82.4
    >>Collect |cRXP_LOOT_[Torn Scroll Fragment]|r from |cRXP_ENEMY_Enraged Rock Elemental|r. Collect |cRXP_LOOT_[Crumpled Scroll Fragment]|r from |cRXP_ENEMY_Enraged Rock Elemental|r. Collect |cRXP_LOOT_[Singed Scroll Fragment]|r from |cRXP_ENEMY_Enraged Rock Elemental|r
    *Bring the Torn Scroll Fragment, the Crumpled Scroll Fragment and the Singed Scroll Fragment to Theldurin the Lost.
    .complete 692,1 --The Lost Fragments
    .complete 692,2 --The Lost Fragments
    .complete 692,3 --The Lost Fragments
    .mob Enraged Rock Elemental
step
    .goto 1418,51.39,76.87
    >>Talk to |cRXP_FRIENDLY_Theldurin the Lost|r
    .turnin 692 >>Turn in The Lost Fragments
    .target Theldurin the Lost
step
    .goto 1418,42.39,52.93
    >>Talk to |cRXP_FRIENDLY_Rigglefuzz|r
    .accept 703 >>Accept Barbecued Buzzard Wings
    .accept 705 >>Accept Pearl Diving
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
    .goto 1418,6.49,47.2
    >>Talk to |cRXP_FRIENDLY_Neeka Bloodscar|r
    .accept 1419 >>Accept Coyote Thieves
    .accept 1420 >>Accept Report to Helgrum
    .target Neeka Bloodscar
step
    .goto 1418,2.91,45.6
    >>Talk to |cRXP_FRIENDLY_Gorn|r
    .accept 782 >>Accept Broken Alliances
    .target Gorn
step
    .goto 1418,3.36,48.06
    >>Talk to |cRXP_FRIENDLY_Thal'trak Proudtusk|r
    .accept 3821 >>Accept Dreadmaul Rock
    .target Thal'trak Proudtusk
step
    .goto 1418,4.09,46.22
    >>Talk to |cRXP_FRIENDLY_Mus'hale|r
    .accept 97663 >>Accept Supplies and Studies
    .target Mus'hale
step
    .goto 1418,3.36,48.06
    >>Talk to |cRXP_FRIENDLY_Thal'trak Proudtusk|r
    .turnin 3821 >>Turn in Dreadmaul Rock
    .target Thal'trak Proudtusk
step
    .goto 1418,4.09,46.22
    >>Talk to |cRXP_FRIENDLY_Mus'hale|r
    .turnin 97663 >>Turn in Supplies and Studies
    .target Mus'hale
step
    .goto 1418,12.62,75.49
    >>Collect |cRXP_LOOT_[Sign of the Earth]|r from |cRXP_ENEMY_Boss Tho'grun|r
    *Kill Boss Tho'grun and bring the Sign of the Earth to Gorn in Kargath.
    .complete 782,1 --Broken Alliances
    .mob Boss Tho'grun
step
    .goto 1418,10.59,77.63
    >>Loot |cRXP_LOOT_[Primitive Drawing]|r from |cRXP_ENEMY_Dustbelcher Ogre|r, |cRXP_ENEMY_Dustbelcher Brute|r, |cRXP_ENEMY_Dustbelcher Wyrmhunter|r, then click it to start the quest
    .accept 78823 >>Accept Terror of the Desert Skies
    .use 211269
    .mob Dustbelcher Ogre
    .mob Dustbelcher Brute
step
    .goto 1418,10.59,77.63
    >>Collect |cRXP_LOOT_[Primitive Drawing]|r from |cRXP_ENEMY_Dustbelcher Ogre|r, |cRXP_ENEMY_Dustbelcher Brute|r, |cRXP_ENEMY_Dustbelcher Wyrmhunter|r
    *Bring the Primitive Drawing to Hemet Nesingwary in Stranglethorn Vale.
    .complete 78823,1 --Terror of the Desert Skies
    .mob Dustbelcher Ogre
    .mob Dustbelcher Brute
step
    .goto 1418,40.51,78.29
    >>Collect |cRXP_LOOT_[Large Stone Slab]|r from |cRXP_ENEMY_Rock Elemental|r
    *Bring 3 Large Stone Slabs to Lotwil Veriatus in the Badlands.
    .complete 711,1 --Study of the Elements: Rock
    .mob Rock Elemental
step
    .goto 1418,55.52,56.68
    >>Collect |cRXP_LOOT_[Buzzard Wing]|r from |cRXP_ENEMY_Carrion Vulture|r, |cRXP_ENEMY_Young Mesa Buzzard|r, |cRXP_ENEMY_Mesa Buzzard|r. Collect |cRXP_LOOT_[Coyote Jawbone]|r from |cRXP_ENEMY_Crag Coyote|r, |cRXP_ENEMY_Feral Crag Coyote|r, |cRXP_ENEMY_Elder Crag Coyote|r
    *Bring 4 Buzzard Wings to Rigglefuzz.
    *Bring 30 Coyote Jawbones to Neeka Bloodscar in Kargath.
    .complete 703,1 --Barbecued Buzzard Wings
    .complete 1419,1 --Coyote Thieves
    .mob Carrion Vulture
    .mob Young Mesa Buzzard
    .mob Crag Coyote
    .mob Feral Crag Coyote
step
    .goto 1418,42.39,52.93
    >>Talk to |cRXP_FRIENDLY_Rigglefuzz|r
    .turnin 703 >>Turn in Barbecued Buzzard Wings
    .target Rigglefuzz
step
    .goto 1418,25.95,44.87
    >>Talk to |cRXP_FRIENDLY_Lotwil Veriatus|r
    .turnin 711 >>Turn in Study of the Elements: Rock
    .accept 712 >>Accept Study of the Elements: Rock
    .target Lotwil Veriatus
step
    .goto 1418,6.49,47.2
    >>Talk to |cRXP_FRIENDLY_Neeka Bloodscar|r
    .turnin 1419 >>Turn in Coyote Thieves
    .target Neeka Bloodscar
step
    .goto 1418,2.91,45.6
    >>Talk to |cRXP_FRIENDLY_Gorn|r
    .turnin 782 >>Turn in Broken Alliances
    .accept 793 >>Accept Broken Alliances
    .target Gorn
step
    >>Collect |cRXP_LOOT_[Blacklash's Bindings]|r from |cRXP_ENEMY_Blacklash|r. Collect |cRXP_LOOT_[Chains of Hematus]|r from |cRXP_ENEMY_Hematus|r
    *Use the Sign of the Earth to activate the Pillars of Diamond, Opal, and Amethyst and obtain the Runestones.
    .complete 793,1 --Broken Alliances
    .complete 793,2 --Broken Alliances
    .mob Blacklash
    .mob Hematus
step
    .goto 1418,2.91,45.6
    >>Talk to |cRXP_FRIENDLY_Gorn|r
    .turnin 793 >>Turn in Broken Alliances
    .target Gorn
step
    .goto 1418,2.77,78.22
    >>Collect |cRXP_LOOT_[Bracers of Rock Binding]|r from |cRXP_ENEMY_Greater Rock Elemental|r
    *Bring 5 Bracers of Rock Binding to Lotwil Veriatus in the Badlands.
    .complete 712,1 --Study of the Elements: Rock
    .mob Greater Rock Elemental
step
    .goto 1418,25.95,44.87
    >>Talk to |cRXP_FRIENDLY_Lotwil Veriatus|r
    .turnin 712 >>Turn in Study of the Elements: Rock
    .target Lotwil Veriatus
step
    .goto 1418,25.82,44.24
    >>Talk to |cRXP_FRIENDLY_Lucien Tosselwrench|r
    .accept 716 >>Accept Stone Is Better than Cloth
    .target Lucien Tosselwrench
step
    >>Collect |cRXP_LOOT_[Patterned Bronze Bracers]|r
    *Bring some Patterned Bronze Bracers to Lucien Tosselwrench in the Badlands.
    .complete 716,1 --Stone Is Better than Cloth
step
    .goto 1418,25.82,44.24
    >>Talk to |cRXP_FRIENDLY_Lucien Tosselwrench|r
    .turnin 716 >>Turn in Stone Is Better than Cloth
    .target Lucien Tosselwrench
step
    .goto 1458,53.74,54.46
    >>Talk to |cRXP_FRIENDLY_Keeper Bel'dugur|r
    .turnin 728 >>Turn in To the Undercity for Yagyin's Digest
    .accept 736 >>Accept The Star, the Hand and the Heart
    .target Keeper Bel'dugur
step
    .goto 1416,35.58,54.42
    >>Collect |cRXP_LOOT_[Star of Xil'yeh]|r from |cRXP_ENEMY_Grel'borg the Miser|r
    *Bring the items on Bel'dugur's Note to Keeper Bel'dugur in the Undercity.
    .complete 736,1 --The Star, the Hand and the Heart
    .mob Grel'borg the Miser
step
    >>Collect |cRXP_LOOT_[Hand of Dagun]|r from |cRXP_ENEMY_Dagun the Ravenous|r
    *Bring the items on Bel'dugur's Note to Keeper Bel'dugur in the Undercity.
    .complete 736,2 --The Star, the Hand and the Heart
    .mob Dagun the Ravenous
step
    .goto 1434,47.74,44.25
    >>Collect |cRXP_LOOT_[The Legacy Heart]|r from |cRXP_ENEMY_Mogh the Undying|r
    *Bring the items on Bel'dugur's Note to Keeper Bel'dugur in the Undercity.
    .complete 736,3 --The Star, the Hand and the Heart
    .mob Mogh the Undying
step
    .goto 1458,53.74,54.46
    >>Talk to |cRXP_FRIENDLY_Keeper Bel'dugur|r
    .turnin 736 >>Turn in The Star, the Hand and the Heart
    .accept 737 >>Accept Forbidden Knowledge
    .target Keeper Bel'dugur
step
    .goto 1435,47.74,55.2
    >>Talk to |cRXP_FRIENDLY_Helgrum the Swift|r
    .turnin 1420 >>Turn in Report to Helgrum
    .accept 1418 >>Accept Neeka Bloodscar
    .target Helgrum the Swift
step
    .goto 1435,47.93,54.78
    >>Talk to |cRXP_FRIENDLY_Fel'zerul|r
    .accept 1424 >>Accept Pool of Tears
    .target Fel'zerul
step
    .goto 1435,44.7,57.21
    >>Talk to |cRXP_FRIENDLY_Dar|r
    .accept 1430 >>Accept Fresh Meat
    .accept 698 >>Accept Lack of Surplus
    .accept 93663 >>Accept Lost in Transit
    .target Dar
step
    >>Collect |cRXP_LOOT_[Courier's Shipment]|r
    *Find the missing courier, and ensure Dar's shipment is delivered to the Harborage.
    .complete 93663,1 --Lost in Transit
step
    .goto 1435,34.29,66.14
    >>Talk to |cRXP_FRIENDLY_Fallen Hero of the Horde|r
    .accept 2784 >>Accept Fall From Grace
    .target Fallen Hero of the Horde
step
    .goto 1435,34.29,66.14
    >>Talk to |cRXP_FRIENDLY_Fallen Hero of the Horde|r
    .turnin 2784 >>Turn in Fall From Grace
    .accept 2621 >>Accept The Disgraced One
    .target Fallen Hero of the Horde
step
    .goto 1435,25.16,54.03
    >>Talk to |cRXP_FRIENDLY_Amaryllis Webb|r
    .accept 93176 >>Accept My Little Friends
    .target Amaryllis Webb
step
    .goto 1435,24.72,32.64
    >>Talk to |cRXP_FRIENDLY_Karana|r
    .accept 93429 >>Accept Blood of My Blood
    .target Karana
step
    .goto 1435,25.98,31.4
    >>Talk to |cRXP_FRIENDLY_Magtoor|r
    .turnin 93663 >>Turn in Lost in Transit
    .target Magtoor
step
    .goto 1435,24.72,32.64
    >>Talk to |cRXP_FRIENDLY_Karana|r
    .turnin 93429 >>Turn in Blood of My Blood
    .target Karana
step
    .goto 1435,26.51,30.35
    >>Talk to |cRXP_FRIENDLY_Pelluk|r
    .accept 93430 >>Accept Taking the Bait Back
    .target Pelluk
step
    .goto 1435,53.73,30.65
    >>Collect |cRXP_LOOT_[Lucky Lure]|r from |cRXP_ENEMY_Lost One Fisherman|r
    *Find the Lost One Fisherman who stole Pelluk's lure, and take it back.
    .complete 93430,1 --Taking the Bait Back
    .mob Lost One Fisherman
step
    .goto 1435,55.7,34.37
    >>Loot |cRXP_LOOT_[Noboru's Cudgel]|r from |cRXP_ENEMY_Noboru the Cudgel|r, then click it to start the quest
    .accept 1392 >>Accept Noboru the Cudgel
    .use 6196
    .mob Noboru the Cudgel
step
    .goto 1435,65.47,18.16
    >>Talk to |cRXP_FRIENDLY_Galen Goodward|r
    .accept 1393 >>Accept Galen's Escape
    .target Galen Goodward
step
    .goto 1435,75.53,19.4
    >>Collect |cRXP_LOOT_[Unprepared Sawtooth Flank]|r from |cRXP_ENEMY_Sawtooth Crocolisk|r, |cRXP_ENEMY_Sawtooth Snapper|r
    *Bring 8 Unprepared Sawtooth Flanks to Tok'Kar in Swamp of Sorrows.
    .complete 698,1 --Lack of Surplus
    .mob Sawtooth Crocolisk
    .mob Sawtooth Snapper
step
    .goto 1435,92.77,30.05
    >>Collect |cRXP_LOOT_[Monstrous Crawler Leg]|r from |cRXP_ENEMY_Monstrous Crawler|r
    *Bring 10 Monstrous Crawler Legs to Dar in the Swamp of Sorrows.
    .complete 1430,1 --Fresh Meat
    .mob Monstrous Crawler
step
    .goto 1435,70.35,50.71
    >>Collect |cRXP_LOOT_[Atal'ai Artifact]|r from |cRXP_PICK_Atal'ai Artifact|r, |cRXP_PICK_Atal'ai Artifact|r
    *Fel'zerul in Stonard wants you to gather 10 Atal'ai Artifacts.
    .complete 1424,1 --Pool of Tears
step
    .goto 1435,47.93,54.78
    >>Talk to |cRXP_FRIENDLY_Fel'zerul|r
    .turnin 1424 >>Turn in Pool of Tears
    .target Fel'zerul
step
    .goto 1435,47.79,54.94
    >>Talk to |cRXP_FRIENDLY_Dispatch Commander Ruag|r
    .turnin 2621 >>Turn in The Disgraced One
    .target Dispatch Commander Ruag
step
    .goto 1435,47.93,54.78
    >>Talk to |cRXP_FRIENDLY_Fel'zerul|r
    .accept 1429 >>Accept The Atal'ai Exile
    .target Fel'zerul
step
    .goto 1435,47.79,54.94
    >>Talk to |cRXP_FRIENDLY_Dispatch Commander Ruag|r
    .accept 2622 >>Accept The Missing Orders
    .target Dispatch Commander Ruag
step
    .goto 1435,44.7,57.21
    >>Talk to |cRXP_FRIENDLY_Dar|r
    .turnin 1430 >>Turn in Fresh Meat
    .target Dar
step
    .goto 1435,44.97,57.37
    >>Talk to |cRXP_FRIENDLY_Bengor|r
    .turnin 2622 >>Turn in The Missing Orders
    .target Bengor
step
    .goto 1435,47.81,39.76
    >>Click the |cRXP_PICK_Galen's Strongbox|r
    .turnin 1393 >>Turn in Galen's Escape
step
    .goto 1435,26.51,30.35
    >>Talk to |cRXP_FRIENDLY_Pelluk|r
    .turnin 93430 >>Turn in Taking the Bait Back
    .target Pelluk
step
    .goto 1435,25.98,31.4
    >>Talk to |cRXP_FRIENDLY_Magtoor|r
    .turnin 1392 >>Turn in Noboru the Cudgel
    .target Magtoor
step
    .goto 1435,81.32,80.97
    >>Talk to |cRXP_FRIENDLY_Tok'Kar|r
    .turnin 698 >>Turn in Lack of Surplus
    .accept 699 >>Accept Lack of Surplus
    .target Tok'Kar
step
    .goto 1435,82.66,30.88
    >>Collect |cRXP_LOOT_[Sawtooth Snapper Claw]|r from |cRXP_ENEMY_Sawtooth Snapper|r
    *Bring 6 Sawtooth Snapper Claws to Tok'Kar in the Swamp of Sorrows.
    .complete 699,1 --Lack of Surplus
    .mob Sawtooth Snapper
step
    .goto 1435,81.32,80.97
    >>Talk to |cRXP_FRIENDLY_Tok'Kar|r
    .turnin 699 >>Turn in Lack of Surplus
    .accept 1422 >>Accept Threat From the Sea
    .target Tok'Kar
step
    .goto 1435,83.76,80.41
    >>Talk to |cRXP_FRIENDLY_Katar|r
    .turnin 1422 >>Turn in Threat From the Sea
    .accept 1426 >>Accept Threat From the Sea
    .target Katar
step
    .goto 1435,83.69,88.54
    >>Kill |cRXP_ENEMY_Marsh Murloc|r. Kill |cRXP_ENEMY_Marsh Inkspewer|r
    *Kill 10 Marsh Murlocs, 10 Marsh Inkspewer, and 10 Marsh Flesheater, then return to Katar in the Swamp of Sorrows.
    .complete 1426,1 --Threat From the Sea
    .complete 1426,2 --Threat From the Sea
    .mob Marsh Murloc
    .mob Marsh Inkspewer
step
    .goto 1435,63.22,84.91
    >>Kill |cRXP_ENEMY_Marsh Flesheater|r
    *Kill 10 Marsh Murlocs, 10 Marsh Inkspewer, and 10 Marsh Flesheater, then return to Katar in the Swamp of Sorrows.
    .complete 1426,3 --Threat From the Sea
    .mob Marsh Flesheater
step
    .goto 1435,83.76,80.41
    >>Talk to |cRXP_FRIENDLY_Katar|r
    .turnin 1426 >>Turn in Threat From the Sea
    .accept 1427 >>Accept Threat From the Sea
    .target Katar
step
    .goto 1435,81.32,80.97
    >>Talk to |cRXP_FRIENDLY_Tok'Kar|r
    .turnin 1427 >>Turn in Threat From the Sea
    .target Tok'Kar
step
    .goto 1435,83.76,80.41
    >>Talk to |cRXP_FRIENDLY_Katar|r
    .accept 1428 >>Accept Continued Threat
    .target Katar
step
    .goto 1435,85.15,88.73
    >>Kill |cRXP_ENEMY_Marsh Inkspewer|r
    *Kill 10 Marsh Inkspewers, 10 Marsh Flesheaters, and 10 Marsh Oracles, then return to Katar in the Swamp of Sorrows.
    .complete 1428,1 --Continued Threat
    .mob Marsh Inkspewer
step
    .goto 1435,63.22,84.91
    >>Kill |cRXP_ENEMY_Marsh Flesheater|r. Kill |cRXP_ENEMY_Marsh Oracle|r
    *Kill 10 Marsh Inkspewers, 10 Marsh Flesheaters, and 10 Marsh Oracles, then return to Katar in the Swamp of Sorrows.
    .complete 1428,2 --Continued Threat
    .complete 1428,3 --Continued Threat
    .mob Marsh Flesheater
    .mob Marsh Oracle
step
    .goto 1435,83.76,80.41
    >>Talk to |cRXP_FRIENDLY_Katar|r
    .turnin 1428 >>Turn in Continued Threat
    .target Katar
step
    .goto 1434,35.66,10.81
    >>Talk to |cRXP_FRIENDLY_Hemet Nesingwary|r
    .turnin 78823 >>Turn in Terror of the Desert Skies
    .accept 78830 >>Accept Terror of the Desert Skies
    .target Hemet Nesingwary
step
    .goto 1434,43.15,22.49
    >>Collect |cRXP_LOOT_[Arbor Tarantula Specimen]|r from |cRXP_ENEMY_Arbor Tarantula|r
    *Use the items contained in the Entomology Starter Kit to find and catch an Arbor Tarantula, Hay Weevil Specimen, and a Flesh Picker.
    .complete 93176,1 --My Little Friends
    .mob Arbor Tarantula
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
    .goto 1418,51.39,76.87
    >>Talk to |cRXP_FRIENDLY_Theldurin the Lost|r
    .turnin 737 >>Turn in Forbidden Knowledge
    .target Theldurin the Lost
step
    .goto 1418,20.93,67.97
    >>Collect |cRXP_LOOT_[Crimson Trophy Quill]|r from |cRXP_ENEMY_Gharrik|r
    *Get a Crimson Trophy Quill from Gharrik in the Badlands. Then, return to Hemet Nesingwary in Stranglethorn Vale.
    .complete 78830,1 --Terror of the Desert Skies
    .mob Gharrik
step
    .goto 1418,6.49,47.2
    >>Talk to |cRXP_FRIENDLY_Neeka Bloodscar|r
    .turnin 1418 >>Turn in Neeka Bloodscar
    .target Neeka Bloodscar
step
    .goto 1425,33.75,75.21
    >>Talk to |cRXP_FRIENDLY_Atal'ai Exile|r
    .turnin 1429 >>Turn in The Atal'ai Exile
    .target Atal'ai Exile
step
    .goto 1434,35.66,10.81
    >>Talk to |cRXP_FRIENDLY_Hemet Nesingwary|r
    .turnin 78830 >>Turn in Terror of the Desert Skies
    .target Hemet Nesingwary
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
    .goto 1417,53.86,39.71
    >>Collect |cRXP_LOOT_[Hay Weevil Specimen]|r from |cRXP_ENEMY_Hay Weevil|r
    *Use the items contained in the Entomology Starter Kit to find and catch an Arbor Tarantula, Hay Weevil Specimen, and a Flesh Picker.
    .complete 93176,2 --My Little Friends
    .mob Hay Weevil
step
    .goto 1443,51.33,60.35
    >>Collect |cRXP_LOOT_[Flesh Picker Specimen]|r from |cRXP_ENEMY_Flesh Picker|r
    *Use the items contained in the Entomology Starter Kit to find and catch an Arbor Tarantula, Hay Weevil Specimen, and a Flesh Picker.
    .complete 93176,3 --My Little Friends
    .mob Flesh Picker
step
    .goto 1435,25.16,54.03
    >>Talk to |cRXP_FRIENDLY_Amaryllis Webb|r
    .turnin 93176 >>Turn in My Little Friends
    .target Amaryllis Webb
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
    .accept 734 >>Accept This Is Going to Be Hard
    .target Lotwil Veriatus
step
    .goto 1418,25.82,44.24
    >>Talk to |cRXP_FRIENDLY_Lucien Tosselwrench|r
    .turnin 734 >>Turn in This Is Going to Be Hard
    .accept 777 >>Accept This Is Going to Be Hard
    .target Lucien Tosselwrench
step
    .goto 1418,25.95,44.87
    >>Talk to |cRXP_FRIENDLY_Lotwil Veriatus|r
    .turnin 777 >>Turn in This Is Going to Be Hard
    .accept 778 >>Accept This Is Going to Be Hard
    .target Lotwil Veriatus
step
    >>Collect |cRXP_LOOT_[Lotwil's Shackles of Elemental Binding]|r from |cRXP_ENEMY_Fam'retor Guardian|r
    *Defeat the Fam'retor Guardian and bring Lotwil's Shackles of Elemental Binding back to Lotwil Veriatus.
    .complete 778,1 --This Is Going to Be Hard
    .mob Fam'retor Guardian
step
    .goto 1418,25.95,44.87
    >>Talk to |cRXP_FRIENDLY_Lotwil Veriatus|r
    .turnin 778 >>Turn in This Is Going to Be Hard
    .target Lotwil Veriatus
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 40-49
#name 44-54 Zul'Farrak pre-quests
#displayname 44-54 Zul'Farrak pre-quests
#next 44-54 Zul'Farrak
step
    +|cRXP_WARN_Zul'Farrak: pre-quests|r. 4 quests, solo (no group needed), roughly 1 h 5 min. The run guide comes after this one. Click to start.
    *Pre-quests: Venom Bottles, Undamaged Venom Sac, Consult Master Gadrin, Screecher Spirits
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
    .goto 1425,23.54,58.8
    >>Click the |cRXP_PICK_Venom Bottle|r
    .accept 2933 >>Accept Venom Bottles
step
    .goto 1424,61.44,19.06
    >>Talk to |cRXP_FRIENDLY_Apothecary Lydon|r
    .turnin 2933 >>Turn in Venom Bottles
    .accept 2934 >>Accept Undamaged Venom Sac
    .target Apothecary Lydon
step
    .goto 1425,33.26,69.27
    >>Collect |cRXP_LOOT_[Undamaged Venom Sac]|r from |cRXP_ENEMY_Witherbark Broodguard|r
    *Bring an Undamaged Venom Sac to Apothecary Lydon in Tarren Mill.
    .complete 2934,1 --Undamaged Venom Sac
    .mob Witherbark Broodguard
step
    .goto 1424,61.44,19.06
    >>Talk to |cRXP_FRIENDLY_Apothecary Lydon|r
    .turnin 2934 >>Turn in Undamaged Venom Sac
    .accept 2935 >>Accept Consult Master Gadrin
    .target Apothecary Lydon
step
    .goto 1411,55.95,74.72
    >>Talk to |cRXP_FRIENDLY_Master Gadrin|r
    .turnin 2935 >>Turn in Consult Master Gadrin
    .target Master Gadrin
step
    +|cRXP_WARN_Pre-quests done.|r Next: Zul'Farrak itself. That guide tells you when to find a group. Click to continue.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 40-49
#name 44-54 Zul'Farrak
#displayname 44-54 Zul'Farrak
#next 45-47 The Hinterlands
step
    +|cRXP_WARN_Zul'Farrak|r (levels 44-54). Pick up 10 dungeon quests solo (roughly 1 h 35 min with the hand-ins), then ONE run with a group (roughly 2 h 20 min). No group needed until the run step. Click to start.
    *Its 4 pre-quests are in the guide before this one. Skipped them? Some quests below won't be offered: skip those steps.
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1411,55.95,74.72
    >>Talk to |cRXP_FRIENDLY_Master Gadrin|r
    .accept 2936 >>Accept The Spider God
    .target Master Gadrin
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
    .goto 1456,25.7,14.19
    >>Talk to |cRXP_FRIENDLY_Ursyn Ghull|r
    .accept 2861 >>Accept Tabetha's Task
    .target Ursyn Ghull
step
    .goto 1434,26.94,77.21
    >>Talk to |cRXP_FRIENDLY_Krazek|r
    .accept 2864 >>Accept Tran'rek
    .target Krazek
step
    .goto 1412,32.5,20.66
    >>Talk to |cRXP_FRIENDLY_Mazu'kon|r
    .accept 96775 >>Accept Zum'rah's Head
    .target Mazu'kon
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in.|r
step
    .goto 1446,38.7,20.1
    >>Enter |cRXP_WARN_Zul'Farrak|r with your group. Quest goals inside:
    *Divino-matic Rod: Bring the Divino-matic Rod to Chief Engineer Bilgewhizzle in Gadgetzan.
    *Gahz'rilla: Bring Gahz'rilla's Electrified Scale to Wizzle Brassbolts in the Shimmering Flats.
    *Tiara of the Deep: Bring the Tiara of the Deep to Tabetha in Dustwallow Marsh.
    *Troll Temper: Bring 20 Vials of Troll Temper to Trenton Lighthammer in Gadgetzan.
    *The Prophecy of Mosh'aru: Bring the First and Second Mosh'aru Tablets to Yeh'kinya in Tanaris.
    *Zum'rah's Head: Slay Witch Doctor Zum'rah and bring Zum'rah's Head to Mazu'kon in Mulgore.
    .complete 2768,1 --Divino-matic Rod
    .complete 2770,1 --Gahz'rilla
    .complete 2846,1 --Tiara of the Deep
    .complete 3042,1 --Troll Temper
    .complete 3527,1 --The Prophecy of Mosh'aru
    .complete 3527,2 --The Prophecy of Mosh'aru
    .complete 96775,1 --Zum'rah's Head
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
    .goto 1411,55.95,74.72
    >>Talk to |cRXP_FRIENDLY_Master Gadrin|r
    .turnin 2936 >>Turn in The Spider God
    .target Master Gadrin
step
    .goto 1412,32.5,20.66
    >>Talk to |cRXP_FRIENDLY_Mazu'kon|r
    .turnin 96775 >>Turn in Zum'rah's Head
    .target Mazu'kon
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1446,51.57,26.76
    >>Talk to |cRXP_FRIENDLY_Tran'rek|r
    .accept 2865 >>Accept Scarab Shells
    .target Tran'rek
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in. (run 2)|r
step
    .goto 1446,38.7,20.1
    >>Enter |cRXP_WARN_Zul'Farrak|r with your group. Quest goals inside:
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
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 40-49
#name 45-47 The Hinterlands
#displayname 45-47 The Hinterlands
#next 46-55 Maraudon
step
    #completewith next
    +|cRXP_WARN_On the way: lead-in quests in Orgrimmar that open quests in The Hinterlands|r
step
    .goto 1454,59.49,36.57
    >>Talk to |cRXP_FRIENDLY_Dran Droffers|r
    .accept 649 >>Accept Ripple Recovery
    .target Dran Droffers
step
    .goto 1454,59.65,36.94
    >>Talk to |cRXP_FRIENDLY_Malton Droffers|r
    .turnin 649 >>Turn in Ripple Recovery
    .accept 650 >>Accept Ripple Recovery
    .target Malton Droffers
step
    .zone 1425 >>Travel to The Hinterlands
    *How: Fly to Revantusk Village.
    *Level for this part: 45-47. 30 quests, roughly 4 h 15 min.
step
    #completewith next
    .goto 1425,81.7,81.76,15,0
    >>Talk to |cRXP_FRIENDLY_Gorkas|r if you don't have this flight path yet
    .fp Gorkas >>Get the flight path
    .target Gorkas
step
    .goto 1425,26.71,48.59
    >>Talk to |cRXP_FRIENDLY_Gilveradin Sunchaser|r
    .turnin 650 >>Turn in Ripple Recovery
    .accept 77 >>Accept A Sticky Situation
    .target Gilveradin Sunchaser
step
    .goto 1425,30.73,46.9
    >>Talk to |cRXP_FRIENDLY_Rin'ji|r
    .accept 2742 >>Accept Rin'ji is Trapped!
    .target Rin'ji
step
    .goto 1425,33.75,75.21
    >>Talk to |cRXP_FRIENDLY_Atal'ai Exile|r
    .accept 1444 >>Accept Return to Fel'Zerul
    .target Atal'ai Exile
step
    .goto 1425,59.99,42.49
    >>Collect |cRXP_LOOT_[Hinterlands Honey Ripple]|r from |cRXP_PICK_Horde Supply Crate|r
    *Recover 10 bottles of Hinterlands Honey Ripple from the crates located around the abandoned Horde base in Skulk Rock.
    .complete 77,1 --A Sticky Situation
step
    .goto 1425,81.48,60.46
    >>Loot |cRXP_LOOT_[OOX-09/HL Distress Beacon]|r from |cRXP_ENEMY_Saltwater Snapjaw|r, |cRXP_ENEMY_Vilebranch Axe Thrower|r, |cRXP_ENEMY_Vilebranch Witch Doctor|r, then click it to start the quest
    .accept 485 >>Accept Find OOX-09/HL!
    .use 8704
    .mob Saltwater Snapjaw
    .mob Vilebranch Axe Thrower
step
    .goto 1425,86.3,59.01
    >>Click the |cRXP_PICK_Rin'ji's Secret|r
    .turnin 2742 >>Turn in Rin'ji is Trapped!
    .accept 2782 >>Accept Rin'ji's Secret
step
    .goto 1425,79.16,79.53
    >>Talk to |cRXP_FRIENDLY_Huntsman Markhor|r
    .accept 7828 >>Accept Stalking the Stalkers
    .accept 7829 >>Accept Hunt the Savages
    .accept 7830 >>Accept Avenging the Fallen
    .accept 7849 >>Accept Separation Anxiety
    .target Huntsman Markhor
step
    .goto 1425,77.95,77.83
    >>Talk to |cRXP_FRIENDLY_Qujo|r
    .accept 98203 >>Accept Witch Doctor Ti'ik
    .target Qujo
step
    .goto 1425,77.23,80.13
    >>Talk to |cRXP_FRIENDLY_Smith Slagtree|r
    .accept 7839 >>Accept Vilebranch Hooligans
    .target Smith Slagtree
step
    .goto 1425,79.38,79.08
    >>Talk to |cRXP_FRIENDLY_Otho Moji'ko|r
    .accept 7841 >>Accept Message to the Wildhammer
    .target Otho Moji'ko
step
    .goto 1425,78.8,78.25
    >>Talk to |cRXP_FRIENDLY_Mystic Yayo'jin|r
    .accept 7844 >>Accept Cannibalistic Cousins
    .target Mystic Yayo'jin
step
    .goto 1425,80.33,81.54
    >>Talk to |cRXP_FRIENDLY_Katoom the Angler|r
    .accept 7815 >>Accept Snapjaws, Mon!
    .target Katoom the Angler
step
    .goto 1425,78.14,81.38
    >>Talk to |cRXP_FRIENDLY_Lard|r
    .accept 7840 >>Accept Lard Lost His Lunch
    .target Lard
step
    .goto 1425,78.2,81.18
    >>Talk to |cRXP_FRIENDLY_Primal Torntusk|r
    .accept 7845 >>Accept Kidnapped Elder Torntusk!
    .accept 7850 >>Accept Dark Vessels
    .target Primal Torntusk
step
    >>Collect |cRXP_LOOT_[Lard's Lunch]|r from |cRXP_ENEMY_Vilebranch Kidnapper|r
    *Lard at Revantusk Village in the Hinterlands wants you to find Lard's Lunch. Return to him when this task is complete.
    .complete 7840,1 --Lard Lost His Lunch
    .mob Vilebranch Kidnapper
step
    .goto 1425,78.14,81.38
    >>Talk to |cRXP_FRIENDLY_Lard|r
    .turnin 7840 >>Turn in Lard Lost His Lunch
    .target Lard
step
    .goto 1425,59.69,77.84
    >>Talk to |cRXP_FRIENDLY_Elder Torntusk|r
    .turnin 7845 >>Turn in Kidnapped Elder Torntusk!
    .accept 7846 >>Accept Recover the Key!
    .target Elder Torntusk
step
    .goto 1425,62.38,71.62
    >>Collect |cRXP_LOOT_[Huntsman Malkhor's Skull]|r from |cRXP_PICK_Pile of Skulls|r. Collect |cRXP_LOOT_[Huntsman Malkhor's Bones]|r from |cRXP_PICK_Pile of Bones|r. Collect |cRXP_LOOT_[Vessel of Tainted Blood]|r from |cRXP_PICK_Vessel of Tainted Blood|r
    *Huntsman Markhor at Revantusk Village in the Hinterlands wants you to recover his twin brother's remains. Find and return Huntsman Malkhor's Skull and Huntsman Malkhor's Bones to Huntsman Markhor.
    *Primal Torntusk at Revantusk Village in the Hinterlands wants you to recover 10 Vessels of Tainted Blood from Jintha'alor. Return to Primal Torntusk when this task is complete.
    .complete 7849,1 --Separation Anxiety
    .complete 7849,2 --Separation Anxiety
    .complete 7850,1 --Dark Vessels
step
    .goto 1425,57.32,86.64
    >>Collect |cRXP_LOOT_[Shackle Key]|r from |cRXP_ENEMY_Hitah'ya the Keeper|r
    *Elder Torntusk at Jintha'alor wants you to kill Hitah'ya the Keeper to get the Shackle Key to his bindings. Return to Elder Torntusk when you have recovered the key.
    .complete 7846,1 --Recover the Key!
    .mob Hitah'ya the Keeper
step
    .goto 1425,59.69,77.84
    >>Talk to |cRXP_FRIENDLY_Elder Torntusk|r
    .turnin 7846 >>Turn in Recover the Key!
    .accept 7847 >>Accept Return to Primal Torntusk
    .target Elder Torntusk
step
    .goto 1425,79.16,79.53
    >>Talk to |cRXP_FRIENDLY_Huntsman Markhor|r
    .turnin 7849 >>Turn in Separation Anxiety
    .target Huntsman Markhor
step
    .goto 1425,78.2,81.18
    >>Talk to |cRXP_FRIENDLY_Primal Torntusk|r
    .turnin 7850 >>Turn in Dark Vessels
    .turnin 7847 >>Turn in Return to Primal Torntusk
    .target Primal Torntusk
step
    .goto 1425,81.48,60.46
    >>Kill |cRXP_ENEMY_Saltwater Snapjaw|r
    *Katoom the Angler at Revantusk Village in the Hinterlands wants you to kill 15 Saltwater Snapjaw turtles. Return to him when you have completed this task.
    .complete 7815,1 --Snapjaws, Mon!
    .mob Saltwater Snapjaw
step
    .goto 1425,69.59,54.85
    >>Kill |cRXP_ENEMY_Silvermane Stalker|r. Collect |cRXP_LOOT_[Skylord Plume]|r from |cRXP_ENEMY_Razorbeak Skylord|r. Collect |cRXP_LOOT_[Slagtree's Lost Tools]|r from |cRXP_PICK_Slagtree's Lost Tools|r. Kill |cRXP_ENEMY_Vilebranch Scalper|r
    *Huntsman Markhor at Revantusk Village in the Hinterlands wants you to kill 10 Silvermane Stalkers and 10 Silvermane Howlers. Return to him once the task is complete.
    *Huntsman Markhor at Revantusk Village in the Hinterlands wants you to kill a Razorbeak Skylord and retrieve its Skylord Plume. Return to him once the task is complete.
    *Smith Slagtree at Revantusk Village in the Hinterlands wants you to find Slagtree's Lost Tools. Return to him once this task is complete.
    *Mystic Yayo'jin at Revantusk Village in the Hinterlands wants you to kill 30 Vilebranch Scalpers and 15 Vilebranch Soothsayers. Return to her when this task is complete.
    .complete 7828,1 --Stalking the Stalkers
    .complete 7830,1 --Avenging the Fallen
    .complete 7839,1 --Vilebranch Hooligans
    .complete 7844,1 --Cannibalistic Cousins
    .mob Silvermane Stalker
    .mob Razorbeak Skylord
    .mob Vilebranch Scalper
step
    .goto 1425,56.09,46.06
    >>Kill |cRXP_ENEMY_Savage Owlbeast|r
    *Huntsman Markhor at Revantusk Village in the Hinterlands wants you to kill 20 Savage Owlbeasts. Return to him once the task is complete.
    .complete 7829,1 --Hunt the Savages
    .mob Savage Owlbeast
step
    .goto 1425,49.35,37.66
    >>Talk to |cRXP_FRIENDLY_Homing Robot OOX-09/HL|r
    .turnin 485 >>Turn in Find OOX-09/HL!
    .accept 836 >>Accept Rescue OOX-09/HL!
    .target Homing Robot OOX-09/HL
step
    .goto 1425,33.2,45.98
    >>Kill |cRXP_ENEMY_Highvale Scout|r. Kill |cRXP_ENEMY_Highvale Outrunner|r. Kill |cRXP_ENEMY_Highvale Ranger|r. Kill |cRXP_ENEMY_Highvale Marksman|r
    *Otho Moji'ko at Revantusk Village in the Hinterlands wants you to slaughter 15 Highvale Outrunners, 15 Highvale Scouts, 15 Highvale Marksman and 15 Highvale Rangers. Return to him when this task is complete.
    .complete 7841,1 --Message to the Wildhammer
    .complete 7841,2 --Message to the Wildhammer
    .complete 7841,3 --Message to the Wildhammer
    .complete 7841,4 --Message to the Wildhammer
    .mob Highvale Scout
    .mob Highvale Outrunner
    .mob Highvale Ranger
    .mob Highvale Marksman
step
    .goto 1425,26.71,48.59
    >>Talk to |cRXP_FRIENDLY_Gilveradin Sunchaser|r
    .turnin 77 >>Turn in A Sticky Situation
    .target Gilveradin Sunchaser
step
    .goto 1425,24.59,65.49
    >>Collect |cRXP_LOOT_[Ti'ik's Head]|r from |cRXP_ENEMY_Witch Doctor Ti'ik|r
    *Kill the Witherbark witch doctor known as Ti'ik in a cave west of Hiri'watha and return with his head.
    .complete 98203,1 --Witch Doctor Ti'ik
    .mob Witch Doctor Ti'ik
step
    .goto 1425,43.97,61.76
    >>Kill |cRXP_ENEMY_Silvermane Howler|r. Kill |cRXP_ENEMY_Vilebranch Soothsayer|r
    *Huntsman Markhor at Revantusk Village in the Hinterlands wants you to kill 10 Silvermane Stalkers and 10 Silvermane Howlers. Return to him once the task is complete.
    *Mystic Yayo'jin at Revantusk Village in the Hinterlands wants you to kill 30 Vilebranch Scalpers and 15 Vilebranch Soothsayers. Return to her when this task is complete.
    .complete 7828,2 --Stalking the Stalkers
    .complete 7844,2 --Cannibalistic Cousins
    .mob Silvermane Howler
    .mob Vilebranch Soothsayer
step
    .goto 1425,79.16,79.53
    >>Talk to |cRXP_FRIENDLY_Huntsman Markhor|r
    .turnin 7828 >>Turn in Stalking the Stalkers
    .turnin 7829 >>Turn in Hunt the Savages
    .turnin 7830 >>Turn in Avenging the Fallen
    .target Huntsman Markhor
step
    .goto 1425,77.95,77.83
    >>Talk to |cRXP_FRIENDLY_Qujo|r
    .turnin 98203 >>Turn in Witch Doctor Ti'ik
    .target Qujo
step
    .goto 1425,77.23,80.13
    >>Talk to |cRXP_FRIENDLY_Smith Slagtree|r
    .turnin 7839 >>Turn in Vilebranch Hooligans
    .target Smith Slagtree
step
    .goto 1425,79.38,79.08
    >>Talk to |cRXP_FRIENDLY_Otho Moji'ko|r
    .turnin 7841 >>Turn in Message to the Wildhammer
    .target Otho Moji'ko
step
    .goto 1425,78.8,78.25
    >>Talk to |cRXP_FRIENDLY_Mystic Yayo'jin|r
    .turnin 7844 >>Turn in Cannibalistic Cousins
    .target Mystic Yayo'jin
step
    .goto 1425,79.38,79.08
    >>Talk to |cRXP_FRIENDLY_Otho Moji'ko|r
    .accept 7842 >>Accept Another Message to the Wildhammer
    .target Otho Moji'ko
step
    .goto 1425,80.33,81.54
    >>Talk to |cRXP_FRIENDLY_Katoom the Angler|r
    .turnin 7815 >>Turn in Snapjaws, Mon!
    .accept 7816 >>Accept Gammerita, Mon!
    .target Katoom the Angler
step
    .goto 1425,80.4,58.23
    >>Collect |cRXP_LOOT_[Katoom's Best Lure]|r from |cRXP_ENEMY_Gammerita|r
    *Katoom the Angler at Revantusk Village in the Hinterlands wants you to kill Gammerita and retrieve Katoom's Best Lure from her corpse.
    .complete 7816,1 --Gammerita, Mon!
    .mob Gammerita
step
    .goto 1425,80.33,81.54
    >>Talk to |cRXP_FRIENDLY_Katoom the Angler|r
    .turnin 7816 >>Turn in Gammerita, Mon!
    .target Katoom the Angler
step
    .goto 1425,27.97,57.96
    >>Collect |cRXP_LOOT_[Long Elegant Feather]|r from |cRXP_ENEMY_Wild Gryphon|r, |cRXP_ENEMY_Granistad|r, |cRXP_ENEMY_Kurdros|r
    *Otho Moji'ko at Revantusk Village in the Hinterlands wants you to bring him 10 Long Elegant Feathers from the gryphons that inhabit the Hinterlands. Return to him once this task is complete.
    .complete 7842,1 --Another Message to the Wildhammer
    .mob Wild Gryphon
    .mob Granistad
step
    .goto 1425,79.38,79.08
    >>Talk to |cRXP_FRIENDLY_Otho Moji'ko|r
    .turnin 7842 >>Turn in Another Message to the Wildhammer
    .accept 7843 >>Accept The Final Message to the Wildhammer
    .target Otho Moji'ko
step
    .goto 1425,79.38,79.08
    >>Talk to |cRXP_FRIENDLY_Otho Moji'ko|r
    .turnin 7843 >>Turn in The Final Message to the Wildhammer
    .target Otho Moji'ko
step
    .goto 1435,47.93,54.78
    >>Talk to |cRXP_FRIENDLY_Fel'zerul|r
    .turnin 1444 >>Turn in Return to Fel'Zerul
    .target Fel'zerul
step
    .goto 1458,73.06,32.85
    >>Talk to |cRXP_FRIENDLY_Oran Snakewrithe|r
    .turnin 2782 >>Turn in Rin'ji's Secret
    .accept 8273 >>Accept Oran's Gratitude
    .target Oran Snakewrithe
step
    .goto 1458,73.06,32.85
    >>Talk to |cRXP_FRIENDLY_Oran Snakewrithe|r
    .turnin 8273 >>Turn in Oran's Gratitude
    .target Oran Snakewrithe
step
    .goto 1434,28.36,76.35
    >>Talk to |cRXP_FRIENDLY_Oglethorpe Obnoticus|r
    .turnin 836 >>Turn in Rescue OOX-09/HL!
    .target Oglethorpe Obnoticus
step
    .goto 1434,32.16,27.72
    >>Talk to |cRXP_FRIENDLY_Nimboya|r
    .accept 2932 >>Accept Grim Message
    .target Nimboya
step
    .goto 1434,32.16,27.72
    >>Talk to |cRXP_FRIENDLY_Nimboya|r
    .turnin 2932 >>Turn in Grim Message
    .target Nimboya
step
    .goto 1446,66.99,22.36
    >>Talk to |cRXP_FRIENDLY_Yeh'kinya|r
    .accept 4787 >>Accept The Ancient Egg
    .target Yeh'kinya
step
    .goto 1411,55.95,74.72
    >>Talk to |cRXP_FRIENDLY_Master Gadrin|r
    .accept 2937 >>Accept Summoning Shadra
    .target Master Gadrin
step
    >>Collect |cRXP_LOOT_[Shadra's Venom]|r from |cRXP_ENEMY_Shadra|r, |cRXP_ENEMY_Hethiss|r, |cRXP_ENEMY_Bethekk|r
    *Defeat Shadra at the altar of Shadra'Alor, then bring her venom to Apothecary Lydon in Tarren Mill.
    .complete 2937,1 --Summoning Shadra
    .mob Shadra
    .mob Hethiss
step
    .goto 1424,61.44,19.06
    >>Talk to |cRXP_FRIENDLY_Apothecary Lydon|r
    .turnin 2937 >>Turn in Summoning Shadra
    .accept 2938 >>Accept Venom to the Undercity
    .target Apothecary Lydon
step
    .goto 1458,48.82,69.28
    >>Talk to |cRXP_FRIENDLY_Master Apothecary Faranell|r
    .turnin 2938 >>Turn in Venom to the Undercity
    .target Master Apothecary Faranell
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
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 40-49
#name 46-55 Maraudon
#displayname 46-55 Maraudon
#next 47-48 Searing Gorge
step
    +|cRXP_WARN_Maraudon|r (levels 46-55). Pick up 9 dungeon quests solo (roughly 55 min with the hand-ins), then ONE run with a group (roughly 2 h 20 min). No group needed until the run step. Click to start.
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1443,62.2,39.63
    >>Talk to |cRXP_FRIENDLY_Willow|r
    .accept 7028 >>Accept Twisted Evils
    .target Willow
step
    .goto 1443,32.1,63.96
    >>Talk to |cRXP_FRIENDLY_Cavindra|r
    .accept 7044 >>Accept Legends of Maraudon
    .target Cavindra
step
    .goto 1443,23.22,70.33
    >>Talk to |cRXP_FRIENDLY_Vark Battlescar|r
    .accept 7029 >>Accept Vyletongue Corruption
    .target Vark Battlescar
step
    .goto 1443,26.87,77.67
    >>Talk to |cRXP_FRIENDLY_Selendra|r
    .accept 7064 >>Accept Corruption of Earth and Seed
    .target Selendra
step
    .goto 1443,50.42,86.65
    >>Talk to |cRXP_FRIENDLY_Centaur Pariah|r
    .accept 7067 >>Accept The Pariah's Instructions
    .target Centaur Pariah
step
    .goto 1454,39.16,86.27
    >>Talk to |cRXP_FRIENDLY_Uthel'nay|r
    .accept 7068 >>Accept Shadowshard Fragments
    .target Uthel'nay
step
    .goto 1412,32.63,24.2
    >>Talk to |cRXP_FRIENDLY_Olana Brighthoof|r
    .accept 96776 >>Accept An'she's Radiance
    .target Olana Brighthoof
step
    .goto 1443,28.38,54.4
    >>Collect |cRXP_LOOT_[Shadowshard Fragment]|r from |cRXP_ENEMY_Shadowshard Thunderer|r, |cRXP_ENEMY_Shadowshard Smasher|r
    *Collect 10 Shadowshard Fragments from Maraudon and return them to Uthel'nay in Orgrimmar.
    .complete 7068,1 --Shadowshard Fragments
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
    *Corruption of Earth and Seed: Slay Princess Theradras and return to Selendra near Shadowprey Village in Desolace.
    *The Pariah's Instructions: Read the Pariah's Instructions. Afterwards, obtain the Amulet of Union from Maraudon and return it to the Centaur Pariah in southern Desolace.
    *An'she's Radiance: Recover the crystal known as An'she's Radiance from Maraudon.
    .complete 7028,1 --Twisted Evils
    .complete 7029,1 --Vyletongue Corruption
    .complete 7029,2 --Vyletongue Corruption
    .complete 7044,1 --Legends of Maraudon
    .complete 7044,2 --Legends of Maraudon
    .complete 7064,1 --Corruption of Earth and Seed
    .complete 7067,1 --The Pariah's Instructions
    .complete 96776,1 --An'she's Radiance
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1443,32.1,63.96
    >>Talk to |cRXP_FRIENDLY_Cavindra|r
    .turnin 7044 >>Turn in Legends of Maraudon
    .target Cavindra
step
    .goto 1443,23.22,70.33
    >>Talk to |cRXP_FRIENDLY_Vark Battlescar|r
    .turnin 7029 >>Turn in Vyletongue Corruption
    .target Vark Battlescar
step
    .goto 1443,26.87,77.67
    >>Talk to |cRXP_FRIENDLY_Selendra|r
    .turnin 7064 >>Turn in Corruption of Earth and Seed
    .target Selendra
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
    .goto 1450,36.18,41.79
    >>Talk to |cRXP_FRIENDLY_Keeper Remulos|r
    .turnin 7066 >>Turn in Seed of Life
    .target Keeper Remulos
step
    .goto 1454,39.16,86.27
    >>Talk to |cRXP_FRIENDLY_Uthel'nay|r
    .turnin 7068 >>Turn in Shadowshard Fragments
    .target Uthel'nay
step
    .goto 1412,32.63,24.2
    >>Talk to |cRXP_FRIENDLY_Olana Brighthoof|r
    .turnin 96776 >>Turn in An'she's Radiance
    .target Olana Brighthoof
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
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 40-49
#name 47-48 Searing Gorge
#displayname 47-48 Searing Gorge
#next 48-49 Tanaris
step
    .zone 1427 >>Travel to Searing Gorge
    *How: Fly to Thorium Point.
    *Level for this part: 47-48. 19 quests, roughly 3 h.
step
    #completewith next
    .goto 1427,34.84,30.87,15,0
    >>Talk to |cRXP_FRIENDLY_Grisha|r if you don't have this flight path yet
    .fp Grisha >>Get the flight path
    .target Grisha
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
    .goto 1427,38.58,27.81
    >>Talk to |cRXP_FRIENDLY_Hansel Heavyhands|r
    .accept 7723 >>Accept Curse These Fat Fingers
    .accept 7724 >>Accept Fiery Menace!
    .accept 7727 >>Accept Incendosaurs? Whateverosaur is More Like It
    .target Hansel Heavyhands
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
    >>Collect |cRXP_LOOT_[Smithing Tuyere]|r from |cRXP_ENEMY_Dark Iron Steamsmith|r. Kill |cRXP_ENEMY_Heavy War Golem|r. Collect |cRXP_LOOT_[Golem Oil]|r from |cRXP_ENEMY_Tempered War Golem|r, |cRXP_ENEMY_Heavy War Golem|r, |cRXP_ENEMY_Magma Elemental|r
    *Find and return the Smithing Tuyere and Lookout's Spyglass to Taskmaster Scrange in the Searing Gorge.
    *Hansel Heavyhands wants you to kill 20 Heavy War Golems.
    *Collect 4 Hearts of Flame and 4 globes of Golem Oil and return the items to Kalaran Windblade.
    .complete 7728,1 --STOLEN: Smithing Tuyere and Lookout's Spyglass
    .complete 7723,1 --Curse These Fat Fingers
    .complete 3442,2 --The Flawless Flame
    .mob Dark Iron Steamsmith
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
    >>Collect |cRXP_LOOT_[Lookout's Spyglass]|r from |cRXP_ENEMY_Dark Iron Lookout|r. Collect |cRXP_LOOT_[Heart of Flame]|r from |cRXP_ENEMY_Blazing Elemental|r, |cRXP_ENEMY_Inferno Elemental|r, |cRXP_ENEMY_Magma Elemental|r
    *Find and return the Smithing Tuyere and Lookout's Spyglass to Taskmaster Scrange in the Searing Gorge.
    *Collect 4 Hearts of Flame and 4 globes of Golem Oil and return the items to Kalaran Windblade.
    .complete 7728,2 --STOLEN: Smithing Tuyere and Lookout's Spyglass
    .complete 3442,1 --The Flawless Flame
    .mob Dark Iron Lookout
    .mob Blazing Elemental
    .mob Inferno Elemental
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
    .accept 3452 >>Accept The Flame's Casing
    .target Kalaran Windblade
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
    .goto 1427,38.58,27.81
    >>Talk to |cRXP_FRIENDLY_Hansel Heavyhands|r
    .turnin 7723 >>Turn in Curse These Fat Fingers
    .target Hansel Heavyhands
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
    .goto 1427,65.59,62.17
    >>Click the |cRXP_PICK_Wooden Outhouse|r
    .turnin 4451 >>Turn in The Key to Freedom
    .accept 4449 >>Accept Caught!
step
    .goto 1427,62.76,62.27
    >>Kill |cRXP_ENEMY_Dark Iron Geologist|r
    *Kill 8 Dark Iron Geologists and bring 15 pieces of Silk Cloth to the person locked in the outhouse in Searing Gorge.
    .complete 4449,1 --Caught!
    .mob Dark Iron Geologist
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
    .goto 1427,26.41,75.38
    >>Kill |cRXP_ENEMY_Greater Lava Spider|r
    *Hansel Heavyhands wants you to kill 20 Greater Lava Spiders in the Searing Gorge. You can find Greater Lava Spiders in the plateaus and lava pools of the Searing Gorge.
    .complete 7724,1 --Fiery Menace!
    .mob Greater Lava Spider
step
    .goto 1427,38.58,27.81
    >>Talk to |cRXP_FRIENDLY_Hansel Heavyhands|r
    .turnin 7724 >>Turn in Fiery Menace!
    .target Hansel Heavyhands
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
    .accept 4450 >>Accept Ledger from Tanaris
step
    .goto 1427,65.5,62.19
    >>Collect |cRXP_LOOT_[Goodsteel Ledger]|r from |cRXP_PICK_Goodsteel Ledger|r
    *Take the copy of Goodsteel's Ledger and then find the items listed in it before seeking Krinkle Goodsteel in Tanaris.
    .complete 4450,1 --Ledger from Tanaris
step
    .goto 1427,65.49,48.86
    >>Collect |cRXP_LOOT_[Solid Crystal Leg Shaft]|r from |cRXP_ENEMY_Glassweb Spider|r
    *Take the copy of Goodsteel's Ledger and then find the items listed in it before seeking Krinkle Goodsteel in Tanaris.
    .complete 4450,2 --Ledger from Tanaris
    .mob Glassweb Spider
step
    .goto 1445,54.08,55.9
    >>Collect |cRXP_LOOT_[Overdue Package]|r from |cRXP_PICK_Damaged Crate|r
    *Take the copy of Goodsteel's Ledger and then find the items listed in it before seeking Krinkle Goodsteel in Tanaris.
    .complete 4450,3 --Ledger from Tanaris
step
    .goto 1435,94.78,52.05
    >>Collect |cRXP_LOOT_[Goodsteel's Balanced Flameberge]|r from |cRXP_ENEMY_Jarquia|r
    *Take the copy of Goodsteel's Ledger and then find the items listed in it before seeking Krinkle Goodsteel in Tanaris.
    .complete 4450,4 --Ledger from Tanaris
    .mob Jarquia
step
    .goto 1446,51.46,28.81
    >>Talk to |cRXP_FRIENDLY_Krinkle Goodsteel|r
    .turnin 4450 >>Turn in Ledger from Tanaris
    .target Krinkle Goodsteel
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 40-49
#name 48-49 Tanaris
#displayname 48-49 Tanaris
#next 48-53 Alcaz Prison pre-quests
step
    #completewith next
    +|cRXP_WARN_On the way: lead-in quests in Thunder Bluff that open quests in Tanaris|r
step
    .goto 1456,34.4,46.87
    >>Talk to |cRXP_FRIENDLY_Sage Truthseeker|r
    .accept 2440 >>Accept The Platinum Discs
    .target Sage Truthseeker
step
    .goto 1456,46.62,33.17
    >>Talk to |cRXP_FRIENDLY_Bena Winterhoof|r
    .turnin 2440 >>Turn in The Platinum Discs
    .target Bena Winterhoof
step
    .goto 1456,34.4,46.87
    >>Talk to |cRXP_FRIENDLY_Sage Truthseeker|r
    .accept 2965 >>Accept Portents of Uldum
    .target Sage Truthseeker
step
    .goto 1456,75.65,31.61
    >>Talk to |cRXP_FRIENDLY_Nara Wildmane|r
    .turnin 2965 >>Turn in Portents of Uldum
    .accept 2966 >>Accept Seeing What Happens
    .target Nara Wildmane
step
    .zone 1446 >>Travel to Tanaris
    *How: From Powderfuse Port take the goblin boat to Steamwheedle Port and ride to Gadgetzan. From Kalimdor: fly to Gadgetzan.
    *Level for this part: 48-49. 44 quests, roughly 6 h.
step
    #completewith next
    .goto 1446,51.6,25.44,15,0
    >>Talk to |cRXP_FRIENDLY_Bulkrek Ragefist|r if you don't have this flight path yet
    .fp Bulkrek Ragefist >>Get the flight path
    .target Bulkrek Ragefist
step
    .goto 1446,37.63,81.4
    >>Click the |cRXP_PICK_Uldum Pedestal|r
    .turnin 2966 >>Turn in Seeing What Happens
step
    .goto 1458,50.14,67.97
    >>Talk to |cRXP_FRIENDLY_Apothecary Zinge|r
    .accept 232 >>Accept Errand for Apothecary Zinge
    .target Apothecary Zinge
step
    .goto 1458,58.61,54.68
    >>Talk to |cRXP_FRIENDLY_Alessandro Luca|r
    .turnin 232 >>Turn in Errand for Apothecary Zinge
    .accept 238 >>Accept Errand for Apothecary Zinge
    .target Alessandro Luca
step
    .goto 1458,50.14,67.97
    >>Talk to |cRXP_FRIENDLY_Apothecary Zinge|r
    .turnin 238 >>Turn in Errand for Apothecary Zinge
    .accept 243 >>Accept Into the Field
    .target Apothecary Zinge
step
    .goto 1446,52.46,28.51
    >>Talk to |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r
    .turnin 243 >>Turn in Into the Field
    .target Chief Engineer Bilgewhizzle
step
    .goto 1446,50.89,26.96
    >>Talk to |cRXP_FRIENDLY_Alchemist Pestlezugg|r
    .accept 4496 >>Accept Bungle in the Jungle
    .target Alchemist Pestlezugg
step
    .goto 1446,51.57,26.76
    >>Talk to |cRXP_FRIENDLY_Tran'rek|r
    .accept 4504 >>Accept Super Sticky
    .accept 3362 >>Accept Thistleshrub Valley
    .target Tran'rek
step
    .goto 1446,52.46,28.51
    >>Talk to |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r
    .accept 1690 >>Accept Wastewander Justice
    .accept 379 >>Accept Slake That Thirst
    .target Chief Engineer Bilgewhizzle
step
    .goto 1446,52.51,27.91
    >>Talk to |cRXP_FRIENDLY_Innkeeper Fizzgrimble|r
    .accept 95144 >>Accept Overseas Delivery
    .target Innkeeper Fizzgrimble
step
    .goto 1446,52.49,28.45
    >>Talk to |cRXP_FRIENDLY_Spigot Operator Luglunket|r
    .accept 1707 >>Accept Water Pouch Bounty
    .target Spigot Operator Luglunket
step
    .goto 1446,51.81,28.66
    >>Talk to |cRXP_FRIENDLY_Marin Noggenfogger|r
    .accept 2605 >>Accept The Thirsty Goblin
    .target Marin Noggenfogger
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
    .goto 1446,52.82,27.4
    >>Talk to |cRXP_FRIENDLY_Andi Lynn|r
    .accept 5863 >>Accept The Dunemaul Compound
    .target Andi Lynn
step
    .goto 1446,51.12,27.88
    >>Talk to |cRXP_FRIENDLY_Quinn|r
    .accept 97534 >>Accept Gritty Business
    .target Quinn
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
    .goto 1446,41.08,28.85
    >>Collect |cRXP_LOOT_[Desert Debris]|r from |cRXP_PICK_Gnomish Garbage|r
    *Quinn wants you to recover 7  pieces of Desert Debris and return to her in Gadgetzan.
    .complete 97534,1 --Gritty Business
step
    .goto 1446,51.12,27.88
    >>Talk to |cRXP_FRIENDLY_Quinn|r
    .turnin 97534 >>Turn in Gritty Business
    .target Quinn
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
    >>Kill |cRXP_ENEMY_Wastewander Thief|r. Collect |cRXP_LOOT_[Wastewander Water Pouch]|r from |cRXP_ENEMY_Wastewander Rogue|r, |cRXP_ENEMY_Wastewander Thief|r, |cRXP_ENEMY_Wastewander Shadow Mage|r. Collect |cRXP_LOOT_[Caliph Scorpidsting's Head]|r from |cRXP_ENEMY_Caliph Scorpidsting|r
    *Take down 10 Wastewander Bandits and Thieves east of Gadgetzan, then report back to Chief Engineer Bilgewhizzle.
    *Bring 5 Wastewander Water Pouches to Chief Engineer Bilgewhizzle in Gadgetzan.
    *Bring 5 Wastewander Water Pouches to Spigot Operator Luglunket in Gadgetzan.
    *Bring the head of Caliph Scorpidsting to Chief Engineer Bilgewhizzle in Gadgetzan.
    .complete 1690,2 --Wastewander Justice
    .complete 379,1 --Slake That Thirst
    .complete 1707,1 --Water Pouch Bounty
    .complete 2781,1 --WANTED: Caliph Scorpidsting
    .mob Wastewander Thief
    .mob Wastewander Rogue
    .mob Caliph Scorpidsting
step
    .goto 1446,63.75,29.15
    >>Kill |cRXP_ENEMY_Wastewander Bandit|r
    *Take down 10 Wastewander Bandits and Thieves east of Gadgetzan, then report back to Chief Engineer Bilgewhizzle.
    .complete 1690,1 --Wastewander Justice
    .mob Wastewander Bandit
step
    .goto 1446,66.56,22.27
    >>Talk to |cRXP_FRIENDLY_Haughty Modiste|r
    .accept 8365 >>Accept Pirate Hats Ahoy!
    .target Haughty Modiste
step
    .goto 1446,67.06,23.89
    >>Talk to |cRXP_FRIENDLY_Security Chief Bilgewhizzle|r
    .accept 8366 >>Accept Southsea Shakedown
    .accept 97530 >>Accept Dunemaul Dues
    .target Security Chief Bilgewhizzle
step
    .goto 1446,66.82,22.29
    >>Click the |cRXP_PICK_Wanted Poster|r
    .accept 2875 >>Accept WANTED: Andre Firebeard
step
    .goto 1446,67.35,23.98
    >>Talk to |cRXP_FRIENDLY_Tazzik|r
    .accept 95472 >>Accept Consolation Prize
    .target Tazzik
step
    .goto 1446,52.46,28.51
    >>Talk to |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r
    .turnin 1690 >>Turn in Wastewander Justice
    .turnin 379 >>Turn in Slake That Thirst
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
    .accept 841 >>Accept Another Power Source?
    .target Chief Engineer Bilgewhizzle
step
    .goto 1446,61.84,35.02
    >>Kill |cRXP_ENEMY_Wastewander Rogue|r. Kill |cRXP_ENEMY_Wastewander Assassin|r. Kill |cRXP_ENEMY_Wastewander Shadow Mage|r. Collect |cRXP_LOOT_[Wastewander Water Pouch]|r from |cRXP_ENEMY_Wastewander Rogue|r, |cRXP_ENEMY_Wastewander Thief|r, |cRXP_ENEMY_Wastewander Shadow Mage|r
    *Take down 10 Wastewander Shadow Mages, 8 Wastewander Rogues, and 6 Wastewander Assassins for Chief Engineer Bilgewhizzle in Gadgetzan.
    *Bring 10 Wastewander Water Pouches to Chief Engineer Bilgewhizzle in Gadgetzan in exchange for another power source.
    .complete 1691,1 --More Wastewander Justice
    .complete 1691,2 --More Wastewander Justice
    .complete 1691,3 --More Wastewander Justice
    .complete 841,1 --Another Power Source?
    .mob Wastewander Rogue
    .mob Wastewander Assassin
    .mob Wastewander Shadow Mage
    .mob Wastewander Thief
step
    .goto 1446,52.46,28.51
    >>Talk to |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r
    .turnin 1691 >>Turn in More Wastewander Justice
    .turnin 841 >>Turn in Another Power Source?
    .target Chief Engineer Bilgewhizzle
step
    .goto 1446,33.28,44.39
    >>Collect |cRXP_LOOT_[Centipaar Insect Parts]|r from |cRXP_ENEMY_Centipaar Wasp|r, |cRXP_ENEMY_Centipaar Stinger|r, |cRXP_ENEMY_Centipaar Swarmer|r
    *Bring five Centipaar insect parts from the Noxious Lair to Alchemist Pestlezugg in Gadgetzan.
    .complete 82,1 --Noxious Lair Investigation
    .mob Centipaar Wasp
    .mob Centipaar Stinger
step
    .goto 1446,40.08,54.26
    >>Kill |cRXP_ENEMY_Dunemaul Brute|r. Kill |cRXP_ENEMY_Dunemaul Enforcer|r. Kill |cRXP_ENEMY_Gor'marok the Ravager|r. Collect |cRXP_LOOT_[Brilliantly Polished Bangle]|r from |cRXP_ENEMY_Dunemaul Ogre|r, |cRXP_ENEMY_Dunemaul Enforcer|r, |cRXP_ENEMY_Dunemaul Ogre Mage|r
    *Andi Lynn in Gadgetzan wants you to destroy the Dunemaul Compound by killing 10 Dunemaul Brutes, 10 Dunemaul Enforcers, and Gor'marok the Ravager.
    *Security Chief Bilgewhizzle of Steamwheedle Port in Tanaris wants you to recover a particularly shiny bangle bracelet lost near the Dunemaul ogre compound.
    .complete 5863,1 --The Dunemaul Compound
    .complete 5863,2 --The Dunemaul Compound
    .complete 5863,3 --The Dunemaul Compound
    .complete 97530,1 --Dunemaul Dues
    .mob Dunemaul Brute
    .mob Dunemaul Enforcer
    .mob Gor'marok the Ravager
    .mob Dunemaul Ogre
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
    .goto 1446,51.57,26.76
    >>Talk to |cRXP_FRIENDLY_Tran'rek|r
    .turnin 3362 >>Turn in Thistleshrub Valley
    .target Tran'rek
step
    .goto 1446,51.81,28.66
    >>Talk to |cRXP_FRIENDLY_Marin Noggenfogger|r
    .turnin 2605 >>Turn in The Thirsty Goblin
    .target Marin Noggenfogger
step
    .goto 1446,52.82,27.4
    >>Talk to |cRXP_FRIENDLY_Andi Lynn|r
    .turnin 5863 >>Turn in The Dunemaul Compound
    .target Andi Lynn
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
    .goto 1446,51.81,28.66
    >>Talk to |cRXP_FRIENDLY_Marin Noggenfogger|r
    .accept 2606 >>Accept In Good Taste
    .target Marin Noggenfogger
step
    .goto 1446,51.06,26.87
    >>Talk to |cRXP_FRIENDLY_Sprinkle|r
    .turnin 2606 >>Turn in In Good Taste
    .accept 2641 >>Accept Sprinkle's Secret Ingredient
    .target Sprinkle
step
    .goto 1446,67.06,23.89
    >>Talk to |cRXP_FRIENDLY_Security Chief Bilgewhizzle|r
    .turnin 97530 >>Turn in Dunemaul Dues
    .target Security Chief Bilgewhizzle
step
    .goto 1446,66.58,25.67
    >>Talk to |cRXP_FRIENDLY_Torta|r
    .turnin 1560 >>Turn in Tooga's Quest
    .target Torta
step
    .goto 1446,73.37,47.14
    >>Collect |cRXP_LOOT_[Southsea Pirate Hat]|r from |cRXP_ENEMY_Southsea Pirate|r, |cRXP_ENEMY_Southsea Freebooter|r, |cRXP_ENEMY_Southsea Dock Worker|r. Kill |cRXP_ENEMY_Southsea Pirate|r. Kill |cRXP_ENEMY_Southsea Freebooter|r. Kill |cRXP_ENEMY_Southsea Dock Worker|r. Kill |cRXP_ENEMY_Southsea Swashbuckler|r. Collect |cRXP_LOOT_[Firebeard's Head]|r from |cRXP_ENEMY_Andre Firebeard|r
    *Haughty Modiste wants you to collect 20 Southsea Pirate Hats and return them to her at Steamwheedle Port in Tanaris.
    *Security Chief Bilgewhizzle of Steamwheedle Port in Tanaris wants you to kill 10 Southsea Pirates, 10 Southsea Freebooters, 10 Southsea Dock Workers and 10 Southsea Swashbucklers.
    *Bring Andre's Head to Security Chief Bilgewhizzle in Steamwheedle Port.
    .complete 8365,1 --Pirate Hats Ahoy!
    .complete 8366,1 --Southsea Shakedown
    .complete 8366,2 --Southsea Shakedown
    .complete 8366,3 --Southsea Shakedown
    .complete 8366,4 --Southsea Shakedown
    .complete 2875,1 --WANTED: Andre Firebeard
    .mob Southsea Pirate
    .mob Southsea Freebooter
    .mob Southsea Dock Worker
    .mob Southsea Swashbuckler
    .mob Andre Firebeard
step
    .goto 1446,66.56,22.27
    >>Talk to |cRXP_FRIENDLY_Haughty Modiste|r
    .turnin 8365 >>Turn in Pirate Hats Ahoy!
    .target Haughty Modiste
step
    .goto 1446,67.06,23.89
    >>Talk to |cRXP_FRIENDLY_Security Chief Bilgewhizzle|r
    .turnin 8366 >>Turn in Southsea Shakedown
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
    .accept 32 >>Accept Rise of the Silithid
    .target Senior Surveyor Fizzledowser
step
    .goto 2548,77.1,52.9
    >>Talk to |cRXP_FRIENDLY_Friz Frazzlespark|r
    .turnin 95144 >>Turn in Overseas Delivery
    .turnin 95472 >>Turn in Consolation Prize
    .target Friz Frazzlespark
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
    .goto 1454,56.26,46.68
    >>Talk to |cRXP_FRIENDLY_Zilzibin Drumlore|r
    .turnin 32 >>Turn in Rise of the Silithid
    .target Zilzibin Drumlore
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
    .goto 1449,49.04,23.4
    >>Collect |cRXP_LOOT_[Super Sticky Tar]|r from |cRXP_ENEMY_Tar Beast|r, |cRXP_ENEMY_Tar Lurker|r, |cRXP_ENEMY_Tar Lord|r
    *Collect 12 samples of Super Sticky Tar for Tran'rek in Gadgetzan.
    .complete 4504,1 --Super Sticky
    .mob Tar Beast
    .mob Tar Lurker
step
    .goto 1446,50.89,26.96
    >>Talk to |cRXP_FRIENDLY_Alchemist Pestlezugg|r
    .turnin 4496 >>Turn in Bungle in the Jungle
    .target Alchemist Pestlezugg
step
    .goto 1446,51.57,26.76
    >>Talk to |cRXP_FRIENDLY_Tran'rek|r
    .turnin 4504 >>Turn in Super Sticky
    .target Tran'rek
step
    .goto 1446,50.89,26.96
    >>Talk to |cRXP_FRIENDLY_Alchemist Pestlezugg|r
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
    .accept 4509 >>Accept Calm Before the Storm
    .target Alchemist Pestlezugg
step
    .goto 1454,56.26,46.68
    >>Talk to |cRXP_FRIENDLY_Zilzibin Drumlore|r
    .turnin 4509 >>Turn in Calm Before the Storm
    .target Zilzibin Drumlore
step
    .goto 1425,41.56,58.94
    >>Collect |cRXP_LOOT_[Violet Tragan]|r from |cRXP_PICK_Violet Tragan|r
    *Sprinkle in Gadgetzan wants you to collect a Violet Tragan and return it to her.
    .complete 2641,1 --Sprinkle's Secret Ingredient
step
    .goto 1446,51.06,26.87
    >>Talk to |cRXP_FRIENDLY_Sprinkle|r
    .turnin 2641 >>Turn in Sprinkle's Secret Ingredient
    .accept 2661 >>Accept Delivery for Marin
    .target Sprinkle
step
    .goto 1446,51.81,28.66
    >>Talk to |cRXP_FRIENDLY_Marin Noggenfogger|r
    .turnin 2661 >>Turn in Delivery for Marin
    .accept 2662 >>Accept Noggenfogger Elixir
    .target Marin Noggenfogger
step
    .goto 1446,51.81,28.66
    >>Talk to |cRXP_FRIENDLY_Marin Noggenfogger|r
    .turnin 2662 >>Turn in Noggenfogger Elixir
    .target Marin Noggenfogger
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 40-49
#name 48-53 Alcaz Prison pre-quests
#displayname 48-53 Alcaz Prison pre-quests
#next 48-53 Alcaz Prison
step
    +|cRXP_WARN_Alcaz Prison: pre-quests|r. 2 quests, solo (no group needed), roughly 5 min. The run guide comes after this one. Click to start.
    *Pre-quests: The Elite of the Elite, Right Place, Wrong Time
step
    .goto 1445,35.21,30.66
    >>Talk to |cRXP_FRIENDLY_Nazeer Bloodpike|r
    .accept 95284 >>Accept The Elite of the Elite
    .target Nazeer Bloodpike
step
    .goto 1445,70.3,18.85
    >>Talk to |cRXP_FRIENDLY_Sergeant Ulka|r
    .turnin 95284 >>Turn in The Elite of the Elite
    .accept 95285 >>Accept Right Place, Wrong Time
    .target Sergeant Ulka
step
    .goto 1445,70.3,18.85
    >>Talk to |cRXP_FRIENDLY_Sergeant Ulka|r
    .turnin 95285 >>Turn in Right Place, Wrong Time
    .target Sergeant Ulka
step
    +|cRXP_WARN_Pre-quests done.|r Next: Alcaz Prison itself. That guide tells you when to find a group. Click to continue.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 40-49
#name 48-53 Alcaz Prison
#displayname 48-53 Alcaz Prison
#next 49-50 Feralas
step
    +|cRXP_WARN_Alcaz Prison|r (levels 48-53). Pick up 10 dungeon quests solo (roughly 1 h 5 min with the hand-ins), then ONE run with a group (roughly 3 h 30 min). No group needed until the run step. Click to start.
    *New Forever dungeon on Alcaz Island off Dustwallow Marsh. The portal is in the basement of the big central keep. Elite naga patrol the climb up.
    *Its 2 pre-quests are in the guide before this one. Skipped them? Some quests below won't be offered: skip those steps.
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1445,70.3,18.85
    >>Talk to |cRXP_FRIENDLY_Sergeant Ulka|r
    .accept 95309 >>Accept No Orc Left Behind
    .accept 96332 >>Accept A Little Payback
    .accept 96334 >>Accept Blood Red Bandanas
    .target Sergeant Ulka
step
    .goto 1454,34.28,39.35
    >>Talk to |cRXP_FRIENDLY_Eitrigg|r
    .accept 95283 >>Accept The Missing Kor'kron
    .target Eitrigg
step
    .goto 1454,32.3,35.75
    >>Talk to |cRXP_FRIENDLY_Nazgrel|r
    .accept 96376 >>Accept State Secrets
    .target Nazgrel
step
    .goto 1434,28.51,75.77
    >>Talk to |cRXP_FRIENDLY_Rix Xizzix|r
    .accept 96379 >>Accept State Secrets
    .target Rix Xizzix
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
    *Blood Red Bandanas: Enter Alcaz Prison and collect 8 Blood Red Bandanas from the human guards there.
    *The Man in the Iron Chains: Recover the Alcaz Shackle Key from The Questioner in Alcaz Prison.
    *State Secrets
    .complete 96334,1 --Blood Red Bandanas
    .complete 96335,1 --The Man in the Iron Chains
    .complete 96376,1 --State Secrets
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1445,75,15
    >>Inside Alcaz Prison: these quests start from a drop or an object in the dungeon
    .turnin 96335 >>Turn in The Man in the Iron Chains
step
    .goto 1445,70.3,18.85
    >>Talk to |cRXP_FRIENDLY_Sergeant Ulka|r
    .turnin 95309 >>Turn in No Orc Left Behind
    .turnin 96332 >>Turn in A Little Payback
    .target Sergeant Ulka
step
    .goto 1445,35.21,30.66
    >>Talk to |cRXP_FRIENDLY_Nazeer Bloodpike|r
    .turnin 95283 >>Turn in The Missing Kor'kron
    .target Nazeer Bloodpike
step
    .goto 1454,34.28,39.35
    >>Talk to |cRXP_FRIENDLY_Eitrigg|r
    .turnin 96334 >>Turn in Blood Red Bandanas
    .target Eitrigg
step
    .goto 1454,32.3,35.75
    >>Talk to |cRXP_FRIENDLY_Nazgrel|r
    .turnin 96376 >>Turn in State Secrets
    .target Nazgrel
step
    .goto 1434,28.51,75.77
    >>Talk to |cRXP_FRIENDLY_Rix Xizzix|r
    .turnin 96379 >>Turn in State Secrets
    .target Rix Xizzix
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in. (run 2)|r
step
    .goto 1445,75,15
    >>Inside Alcaz Prison: these quests start from a drop or an object in the dungeon
    .accept 95454 >>Accept The Honor of the Kor'kron
    .accept 96337 >>Accept More Valuable Than Gold
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1445,75,15
    >>Inside Alcaz Prison: these quests start from a drop or an object in the dungeon
    .turnin 95454 >>Turn in The Honor of the Kor'kron
step
    .goto 1436,43.42,67.89
    >>Click the |cRXP_PICK_Connery's Trunk|r
    .turnin 96337 >>Turn in More Valuable Than Gold
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in. (run 3)|r
step
    .goto 1445,75,15
    >>Inside Alcaz Prison: these quests start from a drop or an object in the dungeon
    .accept 96369 >>Accept Bad News for Folkar
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1445,75,15
    >>Inside Alcaz Prison: these quests start from a drop or an object in the dungeon
    .turnin 96369 >>Turn in Bad News for Folkar
step
    .goto 1445,75,15
    +Dungeon entrance: Alcaz Prison. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 40-49
#name 49-50 Feralas
#displayname 49-50 Feralas
#next 50-52 Un'Goro Crater
step
    .zone 1444 >>Travel to Feralas
    *How: Fly to Camp Mojache.
    *Level for this part: 49-50. 35 quests, roughly 4 h 10 min.
step
    #completewith next
    .goto 1444,75.45,44.36,15,0
    >>Talk to |cRXP_FRIENDLY_Shyn|r if you don't have this flight path yet
    .fp Shyn >>Get the flight path
    .target Shyn
step
    .goto 1444,74.43,42.91
    >>Talk to |cRXP_FRIENDLY_Jangdor Swiftstrider|r
    .accept 2822 >>Accept The Mark of Quality
    .target Jangdor Swiftstrider
step
    .goto 1444,76.18,43.83
    >>Talk to |cRXP_FRIENDLY_Talo Thornhoof|r
    .accept 4120 >>Accept The Strength of Corruption
    .accept 3062 >>Accept Dark Heart
    .accept 3063 >>Accept Vengeance on the Northspring
    .target Talo Thornhoof
step
    .goto 1444,75.94,42.74
    >>Talk to |cRXP_FRIENDLY_Krueg Skullsplitter|r
    .accept 2973 >>Accept A New Cloak's Sheen
    .target Krueg Skullsplitter
step
    .goto 1444,75.8,43.58
    >>Talk to |cRXP_FRIENDLY_Rok Orhan|r
    .accept 2975 >>Accept The Ogres of Feralas
    .target Rok Orhan
step
    .goto 1444,75.7,44.31
    >>Talk to |cRXP_FRIENDLY_Orwin Gizzmick|r
    .accept 2987 >>Accept Gordunni Cobalt
    .target Orwin Gizzmick
step
    .goto 1444,74.91,42.46
    >>Talk to |cRXP_FRIENDLY_Hadoken Swiftstrider|r
    .accept 2862 >>Accept War on the Woodpaw
    .target Hadoken Swiftstrider
step
    .goto 1444,74.42,43.36
    >>Talk to |cRXP_FRIENDLY_Witch Doctor Uzer'i|r
    .accept 3121 >>Accept A Strange Request
    .accept 3128 >>Accept Natural Materials
    .target Witch Doctor Uzer'i
step
    .goto 1444,74.91,44.02
    >>Talk to |cRXP_FRIENDLY_Blaise Montgomery|r
    .accept 92878 >>Accept Lost for Words
    .target Blaise Montgomery
step
    >>Collect |cRXP_LOOT_[Edana's Dark Heart]|r from |cRXP_ENEMY_Edana Hatetalon|r. Collect |cRXP_LOOT_[Gordunni Cobalt]|r from |cRXP_PICK_Gordunni Dirt Mound|r
    *Talo Thornhoof in Camp Mojache wants Edana Hatetalon's Dark Heart.
    *Orwin Gizzmick in Camp Mojache wants 12 samples of Gordunni Cobalt.
    .complete 3062,1 --Dark Heart
    .complete 2987,1 --Gordunni Cobalt
    .mob Edana Hatetalon
step
    .goto 1444,76.18,43.83
    >>Talk to |cRXP_FRIENDLY_Talo Thornhoof|r
    .turnin 3062 >>Turn in Dark Heart
    .target Talo Thornhoof
step
    .goto 1444,75.7,44.31
    >>Talk to |cRXP_FRIENDLY_Orwin Gizzmick|r
    .turnin 2987 >>Turn in Gordunni Cobalt
    .target Orwin Gizzmick
step
    .goto 1444,71,53.53
    >>Collect |cRXP_LOOT_[Iridescent Sprite Darter Wing]|r from |cRXP_ENEMY_Sprite Darter|r, |cRXP_ENEMY_Captured Sprite Darter|r. Collect |cRXP_LOOT_[Woodpaw Gnoll Mane]|r from |cRXP_ENEMY_Woodpaw Mongrel|r, |cRXP_ENEMY_Woodpaw Trapper|r, |cRXP_ENEMY_Woodpaw Brute|r
    *Bring 10 Iridescent Sprite Darter Wings to Krueg Skullsplitter in Camp Mojache.
    *Bring 10 Woodpaw Gnoll Manes to Hadoken Swiftstrider in Camp Mojache.
    .complete 2973,1 --A New Cloak's Sheen
    .complete 2862,1 --War on the Woodpaw
    .mob Sprite Darter
    .mob Captured Sprite Darter
    .mob Woodpaw Mongrel
    .mob Woodpaw Trapper
step
    .goto 1444,75.94,42.74
    >>Talk to |cRXP_FRIENDLY_Krueg Skullsplitter|r
    .turnin 2973 >>Turn in A New Cloak's Sheen
    .target Krueg Skullsplitter
step
    .goto 1444,74.91,42.46
    >>Talk to |cRXP_FRIENDLY_Hadoken Swiftstrider|r
    .turnin 2862 >>Turn in War on the Woodpaw
    .target Hadoken Swiftstrider
step
    .goto 1444,75.94,42.74
    >>Talk to |cRXP_FRIENDLY_Krueg Skullsplitter|r
    .accept 2974 >>Accept A Grim Discovery
    .target Krueg Skullsplitter
step
    .goto 1444,74.91,42.46
    >>Talk to |cRXP_FRIENDLY_Hadoken Swiftstrider|r
    .accept 2863 >>Accept Alpha Strike
    .target Hadoken Swiftstrider
step
    .goto 1444,68.97,40.75
    >>Collect |cRXP_LOOT_[Namida's Hoof]|r from |cRXP_ENEMY_Namida Grimtotem|r. Collect |cRXP_LOOT_[Grimtotem Horn]|r from |cRXP_ENEMY_Grimtotem Raider|r, |cRXP_ENEMY_Grimtotem Naturalist|r, |cRXP_ENEMY_Grimtotem Shaman|r
    *Bring proof of Namida Grimtotem's demise to Blaise Montgomery at Camp Mojache.
    *Bring 20 Grimtotem Horns to Krueg Skullsplitter in Camp Mojache.
    .complete 92878,1 --Lost for Words
    .complete 2974,1 --A Grim Discovery
    .mob Namida Grimtotem
    .mob Grimtotem Raider
    .mob Grimtotem Naturalist
step
    .goto 1444,74.91,44.02
    >>Talk to |cRXP_FRIENDLY_Blaise Montgomery|r
    .turnin 92878 >>Turn in Lost for Words
    .target Blaise Montgomery
step
    .goto 1444,75.94,42.74
    >>Talk to |cRXP_FRIENDLY_Krueg Skullsplitter|r
    .turnin 2974 >>Turn in A Grim Discovery
    .accept 2976 >>Accept A Grim Discovery
    .target Krueg Skullsplitter
step
    .goto 1444,75.13,29.73
    >>Loot |cRXP_LOOT_[Gordunni Scroll]|r, then click it to start the quest
    .accept 2978 >>Accept The Gordunni Scroll
    .use 9370
step
    .goto 1444,76.61,29.76
    >>Kill |cRXP_ENEMY_Gordunni Ogre|r. Kill |cRXP_ENEMY_Gordunni Ogre Mage|r. Kill |cRXP_ENEMY_Gordunni Brute|r
    *Rok Orhan in Camp Mojache wants you to kill 10 Gordunni Ogres, 10 Gordunni Ogre-Magi, and 5 Gordunni Brutes.
    .complete 2975,1 --The Ogres of Feralas
    .complete 2975,2 --The Ogres of Feralas
    .complete 2975,3 --The Ogres of Feralas
    .mob Gordunni Ogre
    .mob Gordunni Ogre Mage
    .mob Gordunni Brute
step
    .goto 1444,75.8,43.58
    >>Talk to |cRXP_FRIENDLY_Rok Orhan|r
    .turnin 2975 >>Turn in The Ogres of Feralas
    .turnin 2978 >>Turn in The Gordunni Scroll
    .accept 2979 >>Accept Dark Ceremony
    .accept 2980 >>Accept The Ogres of Feralas
    .target Rok Orhan
step
    .goto 1444,68.66,54.32
    >>Kill |cRXP_ENEMY_Woodpaw Alpha|r. Kill |cRXP_ENEMY_Gordunni Mauler|r
    *Kill 5 Woodpaw Alphas and return to Hadoken Swiftstrider within one hour.
    *Rok Orhan in Camp Mojache wants you to kill 10 Gordunni Shaman, 10 Gordunni Warlocks, and 5 Gordunni Maulers.
    .complete 2863,1 --Alpha Strike
    .complete 2980,3 --The Ogres of Feralas
    .mob Woodpaw Alpha
    .mob Gordunni Mauler
step
    .goto 1444,74.91,42.46
    >>Talk to |cRXP_FRIENDLY_Hadoken Swiftstrider|r
    .turnin 2863 >>Turn in Alpha Strike
    .accept 2902 >>Accept Woodpaw Investigation
    .target Hadoken Swiftstrider
step
    .goto 1444,71.63,55.92
    >>Click the |cRXP_PICK_Woodpaw Battle Map|r
    .turnin 2902 >>Turn in Woodpaw Investigation
    .accept 2903 >>Accept The Battle Plans
step
    .goto 1444,74.91,42.46
    >>Talk to |cRXP_FRIENDLY_Hadoken Swiftstrider|r
    .turnin 2903 >>Turn in The Battle Plans
    .accept 7730 >>Accept Zukk'ash Infestation
    .accept 7731 >>Accept Stinglasher
    .target Hadoken Swiftstrider
step
    .goto 1444,76.99,61.56
    >>Collect |cRXP_LOOT_[Zukk'ash Carapace]|r from |cRXP_ENEMY_Zukk'ash Stinger|r, |cRXP_ENEMY_Zukk'ash Wasp|r, |cRXP_ENEMY_Zukk'ash Worker|r. Collect |cRXP_LOOT_[Stinglasher's Glands]|r from |cRXP_ENEMY_Stinglasher|r
    *Bring 20 Zukk'ash Carapaces to Hadoken Swiftstrider at Camp Mojache, Feralas.
    *Defeat Stinglasher in the Writhing Deep, bringing its glands back to Hadoken Swiftstrider at Camp Mojache, Feralas.
    .complete 7730,1 --Zukk'ash Infestation
    .complete 7731,1 --Stinglasher
    .mob Zukk'ash Stinger
    .mob Zukk'ash Wasp
    .mob Stinglasher
step
    .goto 1444,62.86,69.46
    >>Collect |cRXP_LOOT_[Resilient Sinew]|r from |cRXP_ENEMY_Vicious Owlbeast|r, |cRXP_ENEMY_Primitive Owlbeast|r, |cRXP_ENEMY_Savage Owlbeast|r. Collect |cRXP_LOOT_[Metallic Fragments]|r from |cRXP_ENEMY_The Giant|r, |cRXP_ENEMY_Diseased Forest Walker|r, |cRXP_ENEMY_Savage Owlbeast|r. Collect |cRXP_LOOT_[Gordunni Orb]|r from |cRXP_ENEMY_Gordunni Mage-Lord|r. Kill |cRXP_ENEMY_Gordunni Shaman|r. Kill |cRXP_ENEMY_Gordunni Warlock|r
    *Bring 2 Splintered Logs, 6 Encrusted Minerals, 20 pieces of Resilient Sinew, and 40 Metallic Fragments to Witch Doctor Uzer'i in Camp Mojache.
    *Rok Orhan in Camp Mojache wants you to find a Gordunni Orb.
    *Rok Orhan in Camp Mojache wants you to kill 10 Gordunni Shaman, 10 Gordunni Warlocks, and 5 Gordunni Maulers.
    .complete 3128,3 --Natural Materials
    .complete 3128,4 --Natural Materials
    .complete 2979,1 --Dark Ceremony
    .complete 2980,1 --The Ogres of Feralas
    .complete 2980,2 --The Ogres of Feralas
    .mob Vicious Owlbeast
    .mob Primitive Owlbeast
    .mob The Giant
    .mob Diseased Forest Walker
    .mob Gordunni Mage-Lord
    .mob Gordunni Shaman
    .mob Gordunni Warlock
step
    .goto 1444,58.93,65.03
    >>Loot |cRXP_LOOT_[OOX-22/FE Distress Beacon]|r from |cRXP_ENEMY_Gordunni Ogre|r, |cRXP_ENEMY_Gordunni Brute|r, |cRXP_ENEMY_Gordunni Mauler|r, then click it to start the quest
    .accept 2766 >>Accept Find OOX-22/FE!
    .use 8705
    .mob Gordunni Ogre
    .mob Gordunni Brute
step
    .goto 1444,55.88,58.81
    >>Collect |cRXP_LOOT_[Thick Yeti Hide]|r from |cRXP_ENEMY_Feral Scar Yeti|r, |cRXP_ENEMY_Hulking Feral Scar|r, |cRXP_ENEMY_Enraged Feral Scar|r
    *Bring 10 Thick Yeti Hides to Jangdor Swiftstrider in Camp Mojache.
    .complete 2822,1 --The Mark of Quality
    .mob Feral Scar Yeti
    .mob Hulking Feral Scar
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
    .goto 1444,44.01,23
    >>Collect |cRXP_LOOT_[Splintered Log]|r from |cRXP_ENEMY_Wandering Forest Walker|r. Collect |cRXP_LOOT_[Encrusted Minerals]|r from |cRXP_ENEMY_Sprite Dragon|r, |cRXP_ENEMY_Sprite Darter|r, |cRXP_ENEMY_Land Walker|r
    *Bring 2 Splintered Logs, 6 Encrusted Minerals, 20 pieces of Resilient Sinew, and 40 Metallic Fragments to Witch Doctor Uzer'i in Camp Mojache.
    .complete 3128,1 --Natural Materials
    .complete 3128,2 --Natural Materials
    .mob Wandering Forest Walker
    .mob Sprite Dragon
    .mob Sprite Darter
step
    .goto 1444,37.81,15.94
    >>Kill |cRXP_ENEMY_Northspring Harpy|r. Kill |cRXP_ENEMY_Northspring Roguefeather|r. Kill |cRXP_ENEMY_Northspring Slayer|r. Kill |cRXP_ENEMY_Northspring Windcaller|r
    *Talo Thornhoof wants you to kill 4 Northspring Harpies, 4 Northspring Roguefeathers, 4 Northspring Windcallers, and 4 Northspring Slayers.
    .complete 3063,1 --Vengeance on the Northspring
    .complete 3063,2 --Vengeance on the Northspring
    .complete 3063,3 --Vengeance on the Northspring
    .complete 3063,4 --Vengeance on the Northspring
    .mob Northspring Harpy
    .mob Northspring Roguefeather
    .mob Northspring Slayer
    .mob Northspring Windcaller
step
    .goto 1444,74.43,42.91
    >>Talk to |cRXP_FRIENDLY_Jangdor Swiftstrider|r
    .turnin 2822 >>Turn in The Mark of Quality
    .target Jangdor Swiftstrider
step
    .goto 1444,76.18,43.83
    >>Talk to |cRXP_FRIENDLY_Talo Thornhoof|r
    .turnin 3063 >>Turn in Vengeance on the Northspring
    .target Talo Thornhoof
step
    .goto 1444,74.42,43.36
    >>Talk to |cRXP_FRIENDLY_Witch Doctor Uzer'i|r
    .turnin 3128 >>Turn in Natural Materials
    .target Witch Doctor Uzer'i
step
    .goto 1444,75.8,43.58
    >>Talk to |cRXP_FRIENDLY_Rok Orhan|r
    .turnin 2979 >>Turn in Dark Ceremony
    .turnin 2980 >>Turn in The Ogres of Feralas
    .target Rok Orhan
step
    .goto 1444,74.91,42.46
    >>Talk to |cRXP_FRIENDLY_Hadoken Swiftstrider|r
    .turnin 7730 >>Turn in Zukk'ash Infestation
    .turnin 7731 >>Turn in Stinglasher
    .target Hadoken Swiftstrider
step
    .goto 1444,75.8,43.58
    >>Talk to |cRXP_FRIENDLY_Rok Orhan|r
    .accept 3002 >>Accept The Gordunni Orb
    .target Rok Orhan
step
    .goto 1444,74.91,42.46
    >>Talk to |cRXP_FRIENDLY_Hadoken Swiftstrider|r
    .accept 7732 >>Accept Zukk'ash Report
    .target Hadoken Swiftstrider
step
    .goto 1444,74.43,42.91
    >>Talk to |cRXP_FRIENDLY_Jangdor Swiftstrider|r
    .accept 7734 >>Accept Improved Quality
    .target Jangdor Swiftstrider
step
    .goto 1444,55.73,33.05
    >>Collect |cRXP_LOOT_[Rage Scar Yeti Hide]|r from |cRXP_ENEMY_Lurking Feral Scar|r, |cRXP_ENEMY_Elder Rage Scar|r, |cRXP_ENEMY_Ferocious Rage Scar|r
    *Bring 10 Rage Scar Yeti Hides to Jangdor Swiftstrider at Camp Mojache, Feralas.
    .complete 7734,1 --Improved Quality
    .mob Lurking Feral Scar
    .mob Elder Rage Scar
step
    .goto 1444,74.43,42.91
    >>Talk to |cRXP_FRIENDLY_Jangdor Swiftstrider|r
    .turnin 7734 >>Turn in Improved Quality
    .target Jangdor Swiftstrider
step
    .goto 1454,49.47,50.59
    >>Talk to |cRXP_FRIENDLY_Neeru Fireblade|r
    .turnin 3121 >>Turn in A Strange Request
    .accept 3122 >>Accept Return to Witch Doctor Uzer'i
    .target Neeru Fireblade
step
    .goto 1454,56.26,46.68
    >>Talk to |cRXP_FRIENDLY_Zilzibin Drumlore|r
    .turnin 7732 >>Turn in Zukk'ash Report
    .target Zilzibin Drumlore
step
    .goto 1454,75.23,34.24
    >>Talk to |cRXP_FRIENDLY_Belgrom Rockmaul|r
    .turnin 2976 >>Turn in A Grim Discovery
    .target Belgrom Rockmaul
step
    .goto 1454,39.16,86.27
    >>Talk to |cRXP_FRIENDLY_Uthel'nay|r
    .turnin 3002 >>Turn in The Gordunni Orb
    .target Uthel'nay
step
    .goto 1434,28.36,76.35
    >>Talk to |cRXP_FRIENDLY_Oglethorpe Obnoticus|r
    .turnin 2767 >>Turn in Rescue OOX-22/FE!
    .target Oglethorpe Obnoticus
step
    .goto 1444,74.42,43.36
    >>Talk to |cRXP_FRIENDLY_Witch Doctor Uzer'i|r
    .turnin 3122 >>Turn in Return to Witch Doctor Uzer'i
    .accept 3123 >>Accept Testing the Vessel
    .target Witch Doctor Uzer'i
step
    >>Collect |cRXP_LOOT_[Wildkin Muisek]|r
    *Travel to the Hinterlands, and locate the Wildkin. Kill 10, and use the Muisek Vessel to shrink and capture the fallen Wildkin.
    .complete 3123,1 --Testing the Vessel
step
    .goto 1444,74.42,43.36
    >>Talk to |cRXP_FRIENDLY_Witch Doctor Uzer'i|r
    .turnin 3123 >>Turn in Testing the Vessel
    .accept 3124 >>Accept Hippogryph Muisek
    .target Witch Doctor Uzer'i
step
    >>Collect |cRXP_LOOT_[Hippogryph Muisek]|r
    *Kill 10 Frayfeather Hippogryphs of any type, then use the Muisek Vessel to shrink and capture them.
    .complete 3124,1 --Hippogryph Muisek
step
    .goto 1444,74.42,43.36
    >>Talk to |cRXP_FRIENDLY_Witch Doctor Uzer'i|r
    .turnin 3124 >>Turn in Hippogryph Muisek
    .accept 3125 >>Accept Faerie Dragon Muisek
    .target Witch Doctor Uzer'i
step
    >>Collect |cRXP_LOOT_[Faerie Dragon Muisek]|r
    *Kill 8 Sprite Darters or Sprite Dragons. Use the Muisek Vessel to shrink and capture the fallen Faerie Dragons.
    .complete 3125,1 --Faerie Dragon Muisek
step
    .goto 1444,74.42,43.36
    >>Talk to |cRXP_FRIENDLY_Witch Doctor Uzer'i|r
    .turnin 3125 >>Turn in Faerie Dragon Muisek
    .accept 3126 >>Accept Treant Muisek
    .target Witch Doctor Uzer'i
step
    >>Collect |cRXP_LOOT_[Treant Muisek]|r
    *Kill 3 Wandering Forest Walkers. Use the Muisek Vessel to shrink and capture the fallen Treants.
    .complete 3126,1 --Treant Muisek
step
    .goto 1444,74.42,43.36
    >>Talk to |cRXP_FRIENDLY_Witch Doctor Uzer'i|r
    .turnin 3126 >>Turn in Treant Muisek
    .accept 3127 >>Accept Mountain Giant Muisek
    .target Witch Doctor Uzer'i
step
    >>Collect |cRXP_LOOT_[Mountain Giant Muisek]|r
    *Kill 7 Land Walkers or Cliff Giants. Use the Muisek Vessel to shrink and capture the fallen Mountain Giants.
    .complete 3127,1 --Mountain Giant Muisek
step
    .goto 1444,74.42,43.36
    >>Talk to |cRXP_FRIENDLY_Witch Doctor Uzer'i|r
    .turnin 3127 >>Turn in Mountain Giant Muisek
    .accept 3129 >>Accept Weapons of Spirit
    .target Witch Doctor Uzer'i
step
    .goto 1444,74.42,43.36
    >>Talk to |cRXP_FRIENDLY_Witch Doctor Uzer'i|r
    .turnin 3129 >>Turn in Weapons of Spirit
    .target Witch Doctor Uzer'i
step
    .goto 1448,53.94,15.36
    >>Kill |cRXP_ENEMY_Angerclaw Grizzly|r. Kill |cRXP_ENEMY_Felpaw Ravager|r
    *Talo Thornhoof at Camp Mojache in Feralas wants you to kill 12 Angerclaw Grizzlies and 12 Felpaw Ravagers in Felwood.
    .complete 4120,1 --The Strength of Corruption
    .complete 4120,2 --The Strength of Corruption
    .mob Angerclaw Grizzly
    .mob Felpaw Ravager
step
    .goto 1444,76.18,43.83
    >>Talk to |cRXP_FRIENDLY_Talo Thornhoof|r
    .turnin 4120 >>Turn in The Strength of Corruption
    .target Talo Thornhoof
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 50-60
#name 50-52 Un'Goro Crater
#displayname 50-52 Un'Goro Crater
#next 60-60 Tanaris (2nd visit)
step
    .zone 1449 >>Travel to Un'Goro Crater
    *How: Fly to Marshal's Refuge.
    *Level for this part: 50-52. 40 quests, roughly 4 h 55 min.
step
    #completewith next
    .goto 1449,45.23,5.83,15,0
    >>Talk to |cRXP_FRIENDLY_Gryfe|r if you don't have this flight path yet
    .fp Gryfe >>Get the flight path
    .target Gryfe
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
    .goto 1449,43.5,7.42
    >>Talk to |cRXP_FRIENDLY_Spark Nilminer|r
    .accept 3882 >>Accept Roll the Bones
    .target Spark Nilminer
step
    .goto 1449,43.89,7.24
    >>Talk to |cRXP_FRIENDLY_Hol'anyee Marshal|r
    .accept 3883 >>Accept Alien Ecology
    .accept 92020 >>Accept Hol'anyee's Big Book of Big Lizards
    .target Hol'anyee Marshal
step
    .goto 1449,45.54,8.72
    >>Talk to |cRXP_FRIENDLY_Larion|r
    .accept 4145 >>Accept Larion and Muigin
    .target Larion
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
    >>Collect |cRXP_LOOT_[Crate of Foodstuffs]|r from |cRXP_PICK_Crate of Foodstuffs|r, |cRXP_PICK_Research Equipment|r. Kill |cRXP_ENEMY_Bloodpetal Lasher|r. Kill |cRXP_ENEMY_Bloodpetal Thresher|r
    *Bring a Crate of Foodstuffs and Research Equipment to Williden Marshal in Un'Goro Crater.
    *Hunt 5 Bloodpetal Lashers, 5 Bloodpetal Threshers, 5 Bloodpetal Flayers and 5 Bloodpetal Trappers for Larion at Marshal's Refuge.
    .complete 3881,1 --Expedition Salvation
    .complete 4145,1 --Larion and Muigin
    .complete 4145,4 --Larion and Muigin
    .mob Bloodpetal Lasher
    .mob Bloodpetal Thresher
step
    .goto 1449,51.9,49.85
    >>Talk to |cRXP_FRIENDLY_Ringo|r
    .turnin 4492 >>Turn in Lost!
    .accept 4491 >>Accept A Little Help From My Friends
    .target Ringo
step
    .goto 1449,48.93,65.03
    >>Kill |cRXP_ENEMY_Bloodpetal Flayer|r. Collect |cRXP_LOOT_[Webbed Diemetradon Scale]|r from |cRXP_ENEMY_Young Diemetradon|r, |cRXP_ENEMY_Diemetradon|r, |cRXP_ENEMY_Elder Diemetradon|r
    *Hunt 5 Bloodpetal Lashers, 5 Bloodpetal Threshers, 5 Bloodpetal Flayers and 5 Bloodpetal Trappers for Larion at Marshal's Refuge.
    *Collect 8 Webbed Diemetradon Scales and 8 Webbed Pterrordax Scales for Shizzle in Marshal's Refuge.
    .complete 4145,3 --Larion and Muigin
    .complete 4503,1 --Shizzle's Flyer
    .mob Bloodpetal Flayer
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
    .goto 1449,30.93,50.44
    >>Talk to |cRXP_FRIENDLY_Krakle|r
    .accept 974 >>Accept Finding the Source
    .target Krakle
step
    .goto 1449,23.15,41.08
    >>Kill |cRXP_ENEMY_Frenzied Pterrordax|r. Collect |cRXP_LOOT_[Webbed Pterrordax Scale]|r from |cRXP_ENEMY_Fledgling Pterrordax|r, |cRXP_ENEMY_Pterrordax|r, |cRXP_ENEMY_Frenzied Pterrordax|r
    *Kill 10 Pterrordax and 15 Frenzied Pterrordax, then speak to Spraggle Frock at Marshal's Refuge.
    *Collect 8 Webbed Diemetradon Scales and 8 Webbed Pterrordax Scales for Shizzle in Marshal's Refuge.
    .complete 4501,2 --Beware of Pterrordax
    .complete 4503,2 --Shizzle's Flyer
    .mob Frenzied Pterrordax
    .mob Fledgling Pterrordax
    .mob Pterrordax
step
    .goto 1449,35.5,38.3
    >>Kill |cRXP_ENEMY_Bloodpetal Trapper|r
    *Hunt 5 Bloodpetal Lashers, 5 Bloodpetal Threshers, 5 Bloodpetal Flayers and 5 Bloodpetal Trappers for Larion at Marshal's Refuge.
    .complete 4145,2 --Larion and Muigin
    .mob Bloodpetal Trapper
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
    .goto 1449,63.02,68.6
    >>Click the |cRXP_PICK_A Wrecked Raft|r
    .accept 3844 >>Accept It's a Secret to Everybody
step
    .goto 1449,63.11,69.06
    >>Click the |cRXP_PICK_A Small Pack|r
    .turnin 3844 >>Turn in It's a Secret to Everybody
    .accept 3845 >>Accept It's a Secret to Everybody
step
    .goto 1449,63.11,69.06
    >>Collect |cRXP_LOOT_[Red Power Crystal]|r from |cRXP_ENEMY_Devilsaur|r, |cRXP_ENEMY_Ironhide Devilsaur|r, |cRXP_ENEMY_Tyrant Devilsaur|r. Collect |cRXP_LOOT_[Yellow Power Crystal]|r from |cRXP_ENEMY_Devilsaur|r, |cRXP_ENEMY_Ironhide Devilsaur|r, |cRXP_ENEMY_Tyrant Devilsaur|r. Collect |cRXP_LOOT_[Green Power Crystal]|r from |cRXP_ENEMY_Devilsaur|r, |cRXP_ENEMY_Ironhide Devilsaur|r, |cRXP_ENEMY_Tyrant Devilsaur|r. Collect |cRXP_LOOT_[Blue Power Crystal]|r from |cRXP_ENEMY_Devilsaur|r, |cRXP_ENEMY_Ironhide Devilsaur|r, |cRXP_ENEMY_Tyrant Devilsaur|r. Collect |cRXP_LOOT_[Large Compass]|r. Collect |cRXP_LOOT_[Curled Map Parchment]|r. Collect |cRXP_LOOT_[Lion-headed Key]|r
    *Collect 7 Power Crystals of each color: red, blue, yellow, and green. Bring them to J.D. Collie at Marshal's Refuge.
    *Examine the items inside the pack and bring them to their owner.
    .complete 4284,1 --Crystals of Power
    .complete 4284,2 --Crystals of Power
    .complete 4284,3 --Crystals of Power
    .complete 4284,4 --Crystals of Power
    .complete 3845,1 --It's a Secret to Everybody
    .complete 3845,2 --It's a Secret to Everybody
    .complete 3845,3 --It's a Secret to Everybody
    .mob Devilsaur
    .mob Ironhide Devilsaur
step
    .goto 1449,62.67,76.26
    >>Loot |cRXP_LOOT_[A Mangled Journal]|r from |cRXP_ENEMY_Devilsaur|r, |cRXP_ENEMY_Ironhide Devilsaur|r, |cRXP_ENEMY_Tyrant Devilsaur|r, then click it to start the quest
    .accept 3884 >>Accept Williden's Journal
    .use 11116
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
    .goto 1449,65.65,14.68
    >>Collect |cRXP_LOOT_[Un'Goro Stomper Pelt]|r from |cRXP_ENEMY_Un'Goro Stomper|r. Collect |cRXP_LOOT_[Un'Goro Thunderer Pelt]|r from |cRXP_ENEMY_Un'Goro Thunderer|r
    *Bring 2 Un'Goro Gorilla Pelts, 2 Un'Goro Stomper Pelts, and 2 Un'Goro Thunderer Pelts to Torwa Pathfinder at the entrance of Un'Goro Crater.
    .complete 4289,2 --The Apes of Un'Goro
    .complete 4289,3 --The Apes of Un'Goro
    .mob Un'Goro Stomper
    .mob Un'Goro Thunderer
step
    .goto 1449,43.62,8.5
    >>Talk to |cRXP_FRIENDLY_Spraggle Frock|r
    .turnin 4501 >>Turn in Beware of Pterrordax
    .turnin 4491 >>Turn in A Little Help From My Friends
    .target Spraggle Frock
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
    .goto 1449,45.54,8.72
    >>Talk to |cRXP_FRIENDLY_Larion|r
    .turnin 4145 >>Turn in Larion and Muigin
    .target Larion
step
    .goto 1449,44.66,8.1
    >>Talk to |cRXP_FRIENDLY_Linken|r
    .turnin 3845 >>Turn in It's a Secret to Everybody
    .target Linken
step
    .goto 1449,45.54,8.72
    >>Talk to |cRXP_FRIENDLY_Larion|r
    .accept 4147 >>Accept Marvon's Workshop
    .target Larion
step
    .goto 1449,44.66,8.1
    >>Talk to |cRXP_FRIENDLY_Linken|r
    .accept 3908 >>Accept It's a Secret to Everybody
    .target Linken
step
    .goto 1449,44.23,11.59
    >>Talk to |cRXP_FRIENDLY_Shizzle|r
    .turnin 4503 >>Turn in Shizzle's Flyer
    .target Shizzle
step
    .goto 1449,41.92,2.7
    >>Talk to |cRXP_FRIENDLY_J.D. Collie|r
    .turnin 4284 >>Turn in Crystals of Power
    .accept 4285 >>Accept The Northern Pylon
    .accept 4287 >>Accept The Eastern Pylon
    .accept 4288 >>Accept The Western Pylon
    .target J.D. Collie
step
    .goto 1449,41.92,2.7
    >>Talk to |cRXP_FRIENDLY_J.D. Collie|r
    .turnin 4285 >>Turn in The Northern Pylon
    .turnin 4287 >>Turn in The Eastern Pylon
    .turnin 4288 >>Turn in The Western Pylon
    .accept 4321 >>Accept Making Sense of It
    .target J.D. Collie
step
    .goto 1449,41.92,2.7
    >>Talk to |cRXP_FRIENDLY_J.D. Collie|r
    .turnin 4321 >>Turn in Making Sense of It
    .target J.D. Collie
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
    .goto 2482,68.85,50.6
    >>Talk to |cRXP_FRIENDLY_Tiala Whitemane|r
    .turnin 92020 >>Turn in Hol'anyee's Big Book of Big Lizards
    .target Tiala Whitemane
step
    .goto 1452,31.27,45.16
    >>Talk to |cRXP_FRIENDLY_Donova Snowden|r
    .turnin 980 >>Turn in The New Springs
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
    .goto 1413,62.45,38.73
    >>Talk to |cRXP_FRIENDLY_Liv Rizzlefix|r
    .turnin 4147 >>Turn in Marvon's Workshop
    .accept 4502 >>Accept Volcanic Activity
    .target Liv Rizzlefix
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
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 50-60
#name 60-60 Tanaris (2nd visit)
#displayname 60-60 Tanaris (2nd visit)
#next 50-60 The Temple of Atal'Hakkar pre-quests
step
    +|cRXP_WARN_Back to Tanaris: its quests that were too high last time|r
step
    .zone 1446 >>Travel to Tanaris
    *How: From Powderfuse Port take the goblin boat to Steamwheedle Port and ride to Gadgetzan. From Kalimdor: fly to Gadgetzan.
    *Level for this part: 60-60. 13 quests, roughly 2 h.
step
    .goto 1446,51.9,27.22
    >>Talk to |cRXP_FRIENDLY_Wizzik Dustfizz|r
    .accept 96912 >>Accept Field of Honor: Week 1
    .accept 96913 >>Accept Field of Honor: Week 2
    .target Wizzik Dustfizz
step
    .goto 1446,52.39,26.97
    >>Click the |cRXP_PICK_Egg-O-Matic|r
    .accept 2741 >>Accept The Super Egg-O-Matic
step
    .goto 1446,51.9,27.22
    >>Talk to |cRXP_FRIENDLY_Wizzik Dustfizz|r
    .turnin 96912 >>Turn in Field of Honor: Week 1
    .turnin 96913 >>Turn in Field of Honor: Week 2
    .target Wizzik Dustfizz
step
    .goto 1446,65.24,18.58
    >>Talk to |cRXP_FRIENDLY_Narain Soothfancy|r
    .accept 8576 >>Accept Translating the Ledger
    .target Narain Soothfancy
step
    .goto 1446,65.24,18.58
    >>Talk to |cRXP_FRIENDLY_Narain Soothfancy|r
    .turnin 8576 >>Turn in Translating the Ledger
    .accept 8577 >>Accept Stewvul, Ex-B.F.F.
    .accept 8584 >>Accept Never Ask Me About My Business
    .accept 8597 >>Accept Draconic for Dummies
    .target Narain Soothfancy
step
    .goto 1446,65.24,18.58
    >>Talk to |cRXP_FRIENDLY_Narain Soothfancy|r
    .turnin 8597 >>Turn in Draconic for Dummies
    .target Narain Soothfancy
step
    .goto 1446,52.63,28.11
    >>Talk to |cRXP_FRIENDLY_Dirge Quikcleave|r
    .turnin 8584 >>Turn in Never Ask Me About My Business
    .accept 8585 >>Accept The Isle of Dread!
    .target Dirge Quikcleave
step
    .goto 1446,59.24,91.49
    >>Click the |cRXP_PICK_Half-Buried Mech|r
    .accept 84137 >>Accept Mechanical Romance
step
    .goto 1446,59.43,96.05
    >>Talk to |cRXP_FRIENDLY_Meridith the Mermaiden|r
    .accept 8599 >>Accept Love Song for Narain
    .target Meridith the Mermaiden
step
    .goto 1446,55.29,95.52
    >>Talk to |cRXP_FRIENDLY_Sebastian Jurgens|r
    .turnin 84137 >>Turn in Mechanical Romance
    .accept 84138 >>Accept Frosty Favors
    .target Sebastian Jurgens
step
    .goto 1446,65.24,18.58
    >>Talk to |cRXP_FRIENDLY_Narain Soothfancy|r
    .turnin 8599 >>Turn in Love Song for Narain
    .target Narain Soothfancy
step
    .goto 1421,46.19,86.68
    >>Click the |cRXP_PICK_Inconspicuous Crate|r
    .turnin 8577 >>Turn in Stewvul, Ex-B.F.F.
step
    .goto 2482,60.1,61.18
    >>Talk to |cRXP_FRIENDLY_Nami|r
    .turnin 84138 >>Turn in Frosty Favors
    .target Nami
step
    .goto 1444,58.62,75.53
    >>Collect |cRXP_LOOT_[Hippogryph Egg]|r from |cRXP_PICK_Hippogryph Egg|r
    .complete 2741,1 --The Super Egg-O-Matic
step
    .goto 1444,29.34,72.63
    >>Collect |cRXP_LOOT_[Lakmaeran's Carcass]|r from |cRXP_ENEMY_Lord Lakmaeran|r. Collect |cRXP_LOOT_[Chimaerok Tenderloin]|r from |cRXP_ENEMY_Chimaerok|r, |cRXP_ENEMY_Arcane Chimaerok|r, |cRXP_ENEMY_Chimaerok Devourer|r
    *Recover Lakmaeran's Carcass and 20 Chimaerok Tenderloins for Dirge Quikcleave in Tanaris.
    .complete 8585,1 --The Isle of Dread!
    .complete 8585,2 --The Isle of Dread!
    .mob Lord Lakmaeran
    .mob Chimaerok
    .mob Arcane Chimaerok
step
    .goto 1446,52.39,26.97
    >>Click the |cRXP_PICK_Egg-O-Matic|r
    .turnin 2741 >>Turn in The Super Egg-O-Matic
step
    .goto 1446,52.63,28.11
    >>Talk to |cRXP_FRIENDLY_Dirge Quikcleave|r
    .turnin 8585 >>Turn in The Isle of Dread!
    .accept 8586 >>Accept Dirge's Kickin' Chimaerok Chops
    .target Dirge Quikcleave
step
    .goto 1451,62.65,52.84
    >>Collect |cRXP_LOOT_[Goblin Rocket Fuel]|r from |cRXP_ENEMY_Clunk|r, |cRXP_ENEMY_Spirestone Ogre Magus|r, |cRXP_ENEMY_Tortured Druid|r
    *Dirge Quikcleave in Gadgetzan wants you to bring him 20 Goblin Rocket Fuel and 20 Deeprock Salt.
    .complete 8586,1 --Dirge's Kickin' Chimaerok Chops
    .mob Clunk
    .mob Spirestone Ogre Magus
step
    .goto 1416,24.62,54.86
    >>Collect |cRXP_LOOT_[Deeprock Salt]|r from |cRXP_ENEMY_Garr|r, |cRXP_ENEMY_Felhunter|r, |cRXP_ENEMY_Stone Fury|r
    *Dirge Quikcleave in Gadgetzan wants you to bring him 20 Goblin Rocket Fuel and 20 Deeprock Salt.
    .complete 8586,2 --Dirge's Kickin' Chimaerok Chops
    .mob Garr
    .mob Felhunter
step
    .goto 1446,52.63,28.11
    >>Talk to |cRXP_FRIENDLY_Dirge Quikcleave|r
    .turnin 8586 >>Turn in Dirge's Kickin' Chimaerok Chops
    .accept 8587 >>Accept Return to Narain
    .target Dirge Quikcleave
step
    .goto 1446,65.24,18.58
    >>Talk to |cRXP_FRIENDLY_Narain Soothfancy|r
    .turnin 8587 >>Turn in Return to Narain
    .target Narain Soothfancy
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 50-60
#name 50-60 The Temple of Atal'Hakkar pre-quests
#displayname 50-60 The Temple of Atal'Hakkar pre-quests
#next 50-60 The Temple of Atal'Hakkar
step
    +|cRXP_WARN_The Temple of Atal'Hakkar: pre-quests|r. 1 quests, solo (no group needed), roughly 20 min. The run guide comes after this one. Click to start.
    *Pre-quests: The Stone Circle
step
    .goto 1446,52.71,45.92
    >>Talk to |cRXP_FRIENDLY_Marvon Rivetseeker|r
    .accept 3444 >>Accept The Stone Circle
    .target Marvon Rivetseeker
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
    +|cRXP_WARN_Pre-quests done.|r Next: The Temple of Atal'Hakkar itself. That guide tells you when to find a group. Click to continue.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 50-60
#name 50-60 The Temple of Atal'Hakkar
#displayname 50-60 The Temple of Atal'Hakkar
#next 52-53 Azshara
step
    +|cRXP_WARN_The Temple of Atal'Hakkar|r (levels 50-60). Pick up 9 dungeon quests solo (roughly 1 h 30 min with the hand-ins), then ONE run with a group (roughly 1 h 20 min). No group needed until the run step. Click to start.
    *Its 1 pre-quests are in the guide before this one. Skipped them? Some quests below won't be offered: skip those steps.
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
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
    .goto 1435,47.93,54.78
    >>Talk to |cRXP_FRIENDLY_Fel'zerul|r
    .accept 1445 >>Accept The Temple of Atal'Hakkar
    .target Fel'zerul
step
    .goto 1425,33.75,75.21
    >>Talk to |cRXP_FRIENDLY_Atal'ai Exile|r
    .accept 1446 >>Accept Jammal'an the Prophet
    .target Atal'ai Exile
step
    .goto 1444,74.42,43.36
    >>Talk to |cRXP_FRIENDLY_Witch Doctor Uzer'i|r
    .accept 3380 >>Accept The Sunken Temple
    .target Witch Doctor Uzer'i
step
    .goto 1413,62.45,38.73
    >>Talk to |cRXP_FRIENDLY_Liv Rizzlefix|r
    .accept 4146 >>Accept Zapper Fuel
    .target Liv Rizzlefix
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in.|r
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
    >>Enter |cRXP_WARN_The Temple of Atal'Hakkar|r with your group. Quest goals inside:
    *The Temple of Atal'Hakkar: Collect 20 Fetishes of Hakkar and bring them to Fel'Zerul in Stonard.
    *Jammal'an the Prophet: The Atal'ai Exile in The Hinterlands wants the Head of Jammal'an.
    *The God Hakkar: Bring the Filled Egg of Hakkar to Yeh'kinya in Tanaris.
    *Zapper Fuel: Deliver the Unloaded Zapper and 5 samples of Atal'ai Haze to Larion in Marshal's Refuge.
    .complete 1445,1 --The Temple of Atal'Hakkar
    .complete 1446,1 --Jammal'an the Prophet
    .complete 3528,1 --The God Hakkar
    .complete 4146,1 --Zapper Fuel
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1435,69.9,53.5
    >>Loot |cRXP_LOOT_[Essence of Eranikus]|r from |cRXP_ENEMY_Shade of Eranikus|r, then click it to start the quest
    .turnin 3373 >>Turn in The Essence of Eranikus
step
    .goto 1435,47.93,54.78
    >>Talk to |cRXP_FRIENDLY_Fel'zerul|r
    .turnin 1445 >>Turn in The Temple of Atal'Hakkar
    .target Fel'zerul
step
    .goto 1425,33.75,75.21
    >>Talk to |cRXP_FRIENDLY_Atal'ai Exile|r
    .turnin 1446 >>Turn in Jammal'an the Prophet
    .target Atal'ai Exile
step
    .goto 1446,52.71,45.92
    >>Talk to |cRXP_FRIENDLY_Marvon Rivetseeker|r
    .turnin 3380 >>Turn in The Sunken Temple
    .turnin 3446 >>Turn in Into the Depths
    .turnin 3447 >>Turn in Secret of the Circle
    .target Marvon Rivetseeker
step
    .goto 1446,66.99,22.36
    >>Talk to |cRXP_FRIENDLY_Yeh'kinya|r
    .turnin 3528 >>Turn in The God Hakkar
    .target Yeh'kinya
step
    .goto 1449,45.54,8.72
    >>Talk to |cRXP_FRIENDLY_Larion|r
    .turnin 4146 >>Turn in Zapper Fuel
    .target Larion
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
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 50-60
#name 52-53 Azshara
#displayname 52-53 Azshara
#next 52-60 Blackrock Depths pre-quests
step
    #completewith next
    +|cRXP_WARN_On the way: lead-in quests in Orgrimmar that open quests in Azshara|r
step
    .goto 1454,75.23,34.24
    >>Talk to |cRXP_FRIENDLY_Belgrom Rockmaul|r
    .accept 3504 >>Accept Betrayed
    .target Belgrom Rockmaul
step
    .zone 1447 >>Travel to Azshara
    *How: Fly to Valormok.
    *Level for this part: 52-53. 49 quests, roughly 5 h 45 min.
step
    #completewith next
    .goto 1447,21.96,49.62,15,0
    >>Talk to |cRXP_FRIENDLY_Kroum|r if you don't have this flight path yet
    .fp Kroum >>Get the flight path
    .target Kroum
step
    .goto 1447,22.26,51.48
    >>Talk to |cRXP_FRIENDLY_Ag'tor Bloodfist|r
    .turnin 3504 >>Turn in Betrayed
    .accept 3505 >>Accept Betrayed
    .target Ag'tor Bloodfist
step
    .goto 1447,22.53,51.84
    >>Talk to |cRXP_FRIENDLY_Izvi Gildfizz|r
    .accept 91568 >>Accept Long Walks on the Beach
    .accept 91569 >>Accept Blue Gold
    .target Izvi Gildfizz
step
    .goto 1447,22.56,51.42
    >>Talk to |cRXP_FRIENDLY_Jediga|r
    .accept 92346 >>Accept Beneath Nordrassil
    .accept 3517 >>Accept Stealing Knowledge
    .target Jediga
step
    .goto 1447,21.82,52.1
    >>Talk to |cRXP_FRIENDLY_Kurll|r
    .accept 91611 >>Accept Deadliest Catch
    .accept 91488 >>Accept Home on the Range
    .target Kurll
step
    .goto 1447,29.25,40.21
    >>Talk to |cRXP_FRIENDLY_Archmage Xylem|r
    .accept 90789 >>Accept Scalebeard
    .target Archmage Xylem
step
    .goto 1447,42,38.88
    >>Talk to |cRXP_FRIENDLY_Ekkal|r
    .accept 86746 >>Accept The Legashi Threat
    .accept 86752 >>Accept Report to Rageroar
    .target Ekkal
step
    .goto 1447,42.4,42.62
    >>Talk to |cRXP_FRIENDLY_Ogtinc|r
    .accept 92069 >>Accept Claws That Rend, Tusks that Gore
    .target Ogtinc
step
    .goto 1447,42.4,42.62
    >>Collect |cRXP_LOOT_[Tablet of Markri]|r from |cRXP_PICK_Tablet of Markri|r. Collect |cRXP_LOOT_[Claws of the Great Bear]|r from |cRXP_ENEMY_Withermaw|r. Collect |cRXP_LOOT_[Tusks of the Unbroken]|r from |cRXP_ENEMY_Bonesnout the Unbroken|r
    *Find the Tablet of Beth'Amara, the Tablet of Jin'yael, the Tablet of Markri, and the Tablet of Sael'hai before returning to Jediga in Azshara.
    *Bring the Claws of the Great Bear and the Tusks of the Unbroken to Ogtinc, in Azshara.
    .complete 3517,3 --Stealing Knowledge
    .complete 92069,1 --Claws That Rend, Tusks that Gore
    .complete 92069,2 --Claws That Rend, Tusks that Gore
    .mob Withermaw
    .mob Bonesnout the Unbroken
step
    .goto 1447,42.4,42.62
    >>Talk to |cRXP_FRIENDLY_Ogtinc|r
    .turnin 92069 >>Turn in Claws That Rend, Tusks that Gore
    .target Ogtinc
step
    .goto 1447,47.44,50.95
    >>Collect |cRXP_LOOT_[Highborne Treasure Fragment]|r from |cRXP_ENEMY_Makrinni Burrower|r. Collect |cRXP_LOOT_[Tablet of Beth'Amara]|r from |cRXP_PICK_Tablet of Beth'Amara|r. Collect |cRXP_LOOT_[Prismatic Shell]|r from |cRXP_ENEMY_Scalebeard|r, |cRXP_ENEMY_Scalebeard|r
    *Dig up 10 Highborne Treasure Fragments with the Treasure Trowel 3000 for Izvi Glidfizz in Valormok.
    *Find the Tablet of Beth'Amara, the Tablet of Jin'yael, the Tablet of Markri, and the Tablet of Sael'hai before returning to Jediga in Azshara.
    *Retrieve the Prismatic Shell for Archmage Xylem.  The Archmage resides in a tower atop the cliffs of Azshara.
    .complete 91568,1 --Long Walks on the Beach
    .complete 3517,1 --Stealing Knowledge
    .complete 90789,1 --Scalebeard
    .mob Makrinni Burrower
    .mob Scalebeard
step
    .goto 1447,36.44,54.05
    >>Collect |cRXP_LOOT_[Tablet of Jin'yael]|r from |cRXP_PICK_Tablet of Jin'yael|r. Collect |cRXP_LOOT_[Tablet of Sael'hai]|r from |cRXP_PICK_Tablet of Sael'hai|r
    *Find the Tablet of Beth'Amara, the Tablet of Jin'yael, the Tablet of Markri, and the Tablet of Sael'hai before returning to Jediga in Azshara.
    .complete 3517,2 --Stealing Knowledge
    .complete 3517,4 --Stealing Knowledge
step
    .goto 1447,22.53,51.84
    >>Talk to |cRXP_FRIENDLY_Izvi Gildfizz|r
    .turnin 91568 >>Turn in Long Walks on the Beach
    .target Izvi Gildfizz
step
    .goto 1447,22.56,51.42
    >>Talk to |cRXP_FRIENDLY_Jediga|r
    .turnin 3517 >>Turn in Stealing Knowledge
    .accept 3518 >>Accept Delivery to Magatha
    .accept 3541 >>Accept Delivery to Jes'rimon
    .accept 3542 >>Accept Delivery to Andron Gant
    .accept 3561 >>Accept Delivery to Archmage Xylem
    .target Jediga
step
    .goto 1447,29.25,40.21
    >>Talk to |cRXP_FRIENDLY_Archmage Xylem|r
    .turnin 90789 >>Turn in Scalebeard
    .turnin 3561 >>Turn in Delivery to Archmage Xylem
    .accept 3565 >>Accept Xylem's Payment to Jediga
    .target Archmage Xylem
step
    .goto 1447,22.56,51.42
    >>Talk to |cRXP_FRIENDLY_Jediga|r
    .turnin 3565 >>Turn in Xylem's Payment to Jediga
    .target Jediga
step
    .goto 1447,11.37,78.17
    >>Talk to |cRXP_FRIENDLY_Loh'atu|r
    .accept 5535 >>Accept Spiritual Unrest
    .accept 5536 >>Accept A Land Filled with Hatred
    .target Loh'atu
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
    .goto 1447,11.37,78.17
    >>Talk to |cRXP_FRIENDLY_Loh'atu|r
    .turnin 5535 >>Turn in Spiritual Unrest
    .target Loh'atu
step
    .goto 1447,20.54,61.2
    >>Kill |cRXP_ENEMY_Haldarr Felsworn|r
    *Kill 6 Haldarr Satyr, 2 Haldarr Tricksters, 2 Haldarr Felsworn and then return to Loh'atu on the border of Ashenvale.
    .complete 5536,3 --A Land Filled with Hatred
    .mob Haldarr Felsworn
step
    .goto 1447,11.37,78.17
    >>Talk to |cRXP_FRIENDLY_Loh'atu|r
    .turnin 5536 >>Turn in A Land Filled with Hatred
    .target Loh'atu
step
    .goto 1447,54.55,78.75
    >>Collect |cRXP_LOOT_[Mosshoof Hide]|r from |cRXP_ENEMY_Mosshoof Runner|r, |cRXP_ENEMY_Mosshoof Stag|r, |cRXP_ENEMY_Mosshoof Courser|r
    *Bring 5 Mosshoof Hides to Kurll at Valormok in Azshara.
    .complete 91488,1 --Home on the Range
    .mob Mosshoof Runner
    .mob Mosshoof Stag
step
    .goto 1447,60.82,66.35
    >>Talk to |cRXP_FRIENDLY_Loramus Thalipedes|r
    .accept 91877 >>Accept Demon Hunter's Hunter
    .target Loramus Thalipedes
step
    .goto 1447,79.28,73.7
    >>Talk to |cRXP_FRIENDLY_Duke Hydraxis|r
    .accept 6804 >>Accept Poisoned Water
    .accept 6805 >>Accept Stormers and Rumblers
    .target Duke Hydraxis
step
    >>Collect |cRXP_LOOT_[Discordant Bracers]|r from |cRXP_ENEMY_Discordant Surge|r
    *Use the Aspect of Neptulon on poisoned elementals of Eastern Plaguelands. Bring 12 Discordant Bracers and the Aspect of Neptulon to Duke Hydraxis in Azshara.
    .complete 6804,1 --Poisoned Water
    .mob Discordant Surge
step
    .goto 1447,79.28,73.7
    >>Talk to |cRXP_FRIENDLY_Duke Hydraxis|r
    .turnin 6804 >>Turn in Poisoned Water
    .target Duke Hydraxis
step
    .goto 1447,79.62,91.51
    >>Collect |cRXP_LOOT_[Mammoth Shark Steak]|r from |cRXP_ENEMY_Mammoth Shark|r, |cRXP_ENEMY_Ravenous Shark|r
    *Bring a Mammoth Shark Steak to Kurll at Valormok.
    .complete 91611,1 --Deadliest Catch
    .mob Mammoth Shark
    .mob Ravenous Shark
step
    .goto 1447,66.42,28.91
    >>Kill |cRXP_ENEMY_Blood Elf Surveyor|r. Find Magus Rimtori's camp. Collect |cRXP_LOOT_[Mana-Siphoning Wand]|r from |cRXP_ENEMY_Blood Elf Arcanist|r, |cRXP_ENEMY_Evin Schmidtt|r, |cRXP_ENEMY_Lumina Windsinger|r. Kill |cRXP_ENEMY_Legashi Satyr|r
    *Kill 10 Blood Elf Reclaimers, and 10 Blood Elf Surveyors before seeking out Magus Rimtori's camp. Once you've found it, look for something that might be important to her that can be used to draw her into a fight.
    *Bring a Mana-Siphoning Wand to Izvi Gildfizz at Valormok.
    *Kill 5 Legashi Satyr, 5 Legashi Rogues, and 5 Legashi Hellcallers for Ekkal at the Ruins of Eldarth.
    .complete 3505,2 --Betrayed
    .complete 3505,3 --Betrayed
    .complete 91569,1 --Blue Gold
    .complete 86746,1 --The Legashi Threat
    .mob Blood Elf Surveyor
    .mob Blood Elf Arcanist
    .mob Evin Schmidtt
    .mob Legashi Satyr
step
    .goto 1447,63.01,21.43
    >>Talk to |cRXP_FRIENDLY_Korsa|r
    .accept 86792 >>Accept Thinning Their Forces
    .accept 86797 >>Accept Return to Rageroar
    .accept 86777 >>Accept Master Feardred
    .target Korsa
step
    .goto 1447,60.57,23.96
    >>Kill |cRXP_ENEMY_Blood Elf Reclaimer|r. Kill |cRXP_ENEMY_Legashi Hellcaller|r. Kill |cRXP_ENEMY_Legashi Hellraiser|r. Kill |cRXP_ENEMY_Legashi Soulstealer|r. Kill |cRXP_ENEMY_Legashi Blackguard|r. Collect |cRXP_LOOT_[Feardred's Amulet]|r from |cRXP_ENEMY_Master Feardred|r
    *Kill 10 Blood Elf Reclaimers, and 10 Blood Elf Surveyors before seeking out Magus Rimtori's camp. Once you've found it, look for something that might be important to her that can be used to draw her into a fight.
    *Kill 5 Legashi Satyr, 5 Legashi Rogues, and 5 Legashi Hellcallers for Ekkal at the Ruins of Eldarth.
    *Kill 6 Legashi Hellraisers, 4 Legashi Soulstealers, and 2 Legashi Blackguards for Korsa outside Legashi Stronghold.
    *Kill Master Feardred, and bring his amulet to Korsa.
    .complete 3505,1 --Betrayed
    .complete 86746,3 --The Legashi Threat
    .complete 86792,1 --Thinning Their Forces
    .complete 86792,2 --Thinning Their Forces
    .complete 86792,3 --Thinning Their Forces
    .complete 86777,1 --Master Feardred
    .mob Blood Elf Reclaimer
    .mob Legashi Hellcaller
    .mob Legashi Hellraiser
    .mob Legashi Soulstealer
    .mob Legashi Blackguard
    .mob Master Feardred
step
    .goto 1447,63.01,21.43
    >>Talk to |cRXP_FRIENDLY_Korsa|r
    .turnin 86792 >>Turn in Thinning Their Forces
    .turnin 86777 >>Turn in Master Feardred
    .target Korsa
step
    .goto 1447,57.7,21.02
    >>Click the |cRXP_PICK_Legashi Cauldron|r
    .accept 86925 >>Accept Toil and Trouble
    .accept 86926 >>Accept Felfire Burn, Cauldron Bubble
    .accept 86927 >>Accept Running Firewater
step
    .goto 1447,58.15,22.81
    >>Collect |cRXP_LOOT_[Legashi Firewater Recipe]|r from |cRXP_ENEMY_Legashi Satyr|r, |cRXP_ENEMY_Legashi Rogue|r, |cRXP_ENEMY_Legashi Hellcaller|r. Collect |cRXP_LOOT_[Satyrweed]|r. Collect |cRXP_LOOT_[Fel Mote]|r from |cRXP_PICK_Fel Mote|r
    *Find a Legashi Firewater Recipe from satyr in the Legashi Encampment.
    *Bring 5 Satyrweed and a Fel Mote to the Legashi Cauldron in the Legashi Encampment.
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
    .accept 3601 >>Accept Kim'jael Indeed!
    .target Kim'jael
step
    .goto 1447,45.29,22.34
    >>Talk to |cRXP_FRIENDLY_Furze|r
    .accept 86799 >>Accept Encroaching Corruption
    .target Furze
step
    .goto 1447,42.28,20.13
    >>Talk to |cRXP_FRIENDLY_Gatekeeper Rageroar|r
    .turnin 86752 >>Turn in Report to Rageroar
    .turnin 86797 >>Turn in Return to Rageroar
    .target Gatekeeper Rageroar
step
    .goto 1447,41.67,19.54
    >>Talk to |cRXP_FRIENDLY_Elder Bramblesnap|r
    .turnin 86927 >>Turn in Running Firewater
    .turnin 86799 >>Turn in Encroaching Corruption
    .target Elder Bramblesnap
step
    .goto 1447,42.28,20.13
    >>Talk to |cRXP_FRIENDLY_Gatekeeper Rageroar|r
    .accept 86791 >>Accept Missing Blackmaw Scouts
    .accept 86798 >>Accept Timbermaw Reinforcements
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
    .goto 1447,57.7,21.02
    >>Click the |cRXP_PICK_Legashi Cauldron|r
    .turnin 86804 >>Turn in An Unlikely Source
step
    .goto 1447,63.01,21.43
    >>Talk to |cRXP_FRIENDLY_Korsa|r
    .turnin 86791 >>Turn in Missing Blackmaw Scouts
    .target Korsa
step
    .goto 1447,66.41,16.83
    >>Kill |cRXP_ENEMY_Legashi Rogue|r
    *Kill 5 Legashi Satyr, 5 Legashi Rogues, and 5 Legashi Hellcallers for Ekkal at the Ruins of Eldarth.
    .complete 86746,2 --The Legashi Threat
    .mob Legashi Rogue
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
    .goto 1447,59.51,31.3
    >>Click the |cRXP_PICK_Kaldorei Tome of Summoning|r
    .turnin 3505 >>Turn in Betrayed
step
    .goto 1447,59.53,31.24
    >>Talk to |cRXP_FRIENDLY_Sin'dorei Tome of Summoning|r
    .accept 91497 >>Accept Seals of the Sin'dorei
    .target Sin'dorei Tome of Summoning
step
    .goto 1447,56.09,30.2
    >>Collect |cRXP_LOOT_[Kim'Jael's Compass]|r from |cRXP_PICK_Kim'jael's Equipment|r. Collect |cRXP_LOOT_[Kim'Jael's Scope]|r from |cRXP_PICK_Kim'jael's Equipment|r. Collect |cRXP_LOOT_[Kim'Jael's Stuffed Chicken]|r from |cRXP_PICK_Kim'jael's Equipment|r. Collect |cRXP_LOOT_[Kim'Jael's Wizzlegoober]|r from |cRXP_PICK_Kim'jael's Equipment|r. Collect |cRXP_LOOT_[Seal of the Warrior]|r from |cRXP_ENEMY_Magister Hawkhelm|r
    *Search the Thalassian Base Camp for Kim'jael's Compass, Scope, Stuffed Chicken and Wizzlegoober, then return them to him in Azshara.
    *Bring the Seal of the Warden, Seal of the Warrior, and Seal of the Ranger to the Sin'dorei Tome of Summoning.
    .complete 3601,1 --Kim'jael Indeed!
    .complete 3601,2 --Kim'jael Indeed!
    .complete 3601,3 --Kim'jael Indeed!
    .complete 3601,4 --Kim'jael Indeed!
    .complete 91497,2 --Seals of the Sin'dorei
    .mob Magister Hawkhelm
step
    .goto 1447,53.45,21.82
    >>Talk to |cRXP_FRIENDLY_Kim'jael|r
    .turnin 3601 >>Turn in Kim'jael Indeed!
    .accept 5534 >>Accept Kim'jael's "Missing" Equipment
    .target Kim'jael
step
    .goto 1447,65.25,27.95
    >>Collect |cRXP_LOOT_[Seal of the Warden]|r from |cRXP_ENEMY_Lieutenant Suncrest|r. Collect |cRXP_LOOT_[Seal of the Ranger]|r from |cRXP_ENEMY_Ranger Lydrea|r, |cRXP_ENEMY_Skyborne Test|r
    *Bring the Seal of the Warden, Seal of the Warrior, and Seal of the Ranger to the Sin'dorei Tome of Summoning.
    .complete 91497,1 --Seals of the Sin'dorei
    .complete 91497,3 --Seals of the Sin'dorei
    .mob Lieutenant Suncrest
    .mob Ranger Lydrea
    .mob Skyborne Test
step
    .goto 1447,59.53,31.24
    >>Talk to |cRXP_FRIENDLY_Sin'dorei Tome of Summoning|r
    .turnin 91497 >>Turn in Seals of the Sin'dorei
    .accept 91538 >>Accept Sin'dorei Tome of Summoning
    .accept 91500 >>Accept An Explosive Gambit
    .target Sin'dorei Tome of Summoning
step
    >>Collect |cRXP_LOOT_[Head of Magus Rimtori]|r from |cRXP_ENEMY_Magus Rimtori|r
    *Break the Seals of the Sin'dorei, then bring Magus Rimtori's head to Ag'tor Bloodfist in Valormok.
    .complete 91500,1 --An Explosive Gambit
    .mob Magus Rimtori
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
    .goto 1447,22.53,51.84
    >>Talk to |cRXP_FRIENDLY_Izvi Gildfizz|r
    .turnin 91569 >>Turn in Blue Gold
    .target Izvi Gildfizz
step
    .goto 1447,21.82,52.1
    >>Talk to |cRXP_FRIENDLY_Kurll|r
    .turnin 91611 >>Turn in Deadliest Catch
    .turnin 91488 >>Turn in Home on the Range
    .target Kurll
step
    .goto 1447,22.56,51.42
    >>Talk to |cRXP_FRIENDLY_Jediga|r
    .turnin 91538 >>Turn in Sin'dorei Tome of Summoning
    .target Jediga
step
    .goto 1447,22.26,51.48
    >>Talk to |cRXP_FRIENDLY_Ag'tor Bloodfist|r
    .turnin 91500 >>Turn in An Explosive Gambit
    .target Ag'tor Bloodfist
step
    .goto 1447,22.56,51.42
    >>Talk to |cRXP_FRIENDLY_Jediga|r
    .accept 91547 >>Accept Sin'dorei Tome of Summoning
    .target Jediga
step
    .goto 1447,22.53,51.84
    >>Talk to |cRXP_FRIENDLY_Izvi Gildfizz|r
    .accept 91685 >>Accept Ley of the Land
    .target Izvi Gildfizz
step
    .goto 1447,21.82,52.1
    >>Talk to |cRXP_FRIENDLY_Kurll|r
    .accept 91608 >>Accept Gettin' Buzzed
    .accept 91610 >>Accept Winter Frontier Fishery
    .target Kurll
step
    .goto 1447,21.82,52.1
    >>Collect |cRXP_LOOT_[Wild Honey]|r from |cRXP_ENEMY_Honey Wasp|r. Collect |cRXP_LOOT_[Winter Squid]|r
    *Gather 5 Wild Honey from Wasp Nests using Kurll's Pellet Gun.
    *Fish up 10 Winter Squid for Kurll at Valormok.
    .complete 91608,1 --Gettin' Buzzed
    .complete 91610,1 --Winter Frontier Fishery
    .mob Honey Wasp
step
    .goto 1447,21.82,52.1
    >>Talk to |cRXP_FRIENDLY_Kurll|r
    .turnin 91608 >>Turn in Gettin' Buzzed
    .turnin 91610 >>Turn in Winter Frontier Fishery
    .target Kurll
step
    .goto 1447,39.32,80.88
    >>Collect |cRXP_LOOT_[Tear of Mennar]|r from |cRXP_ENEMY_Celegosa|r
    *Use the Mana-Siphoning Wand on the Leyline Rift in Lake Mennar and bring the Tear of Mennar to Izvi Gildfizz.
    .complete 91685,1 --Ley of the Land
    .mob Celegosa
step
    .goto 1447,22.53,51.84
    >>Talk to |cRXP_FRIENDLY_Izvi Gildfizz|r
    .turnin 91685 >>Turn in Ley of the Land
    .target Izvi Gildfizz
step
    .goto 1447,53.45,21.82
    >>Talk to |cRXP_FRIENDLY_Kim'jael|r
    .turnin 5534 >>Turn in Kim'jael's "Missing" Equipment
    .target Kim'jael
step
    .goto 1456,75.65,31.61
    >>Talk to |cRXP_FRIENDLY_Nara Wildmane|r
    .turnin 92346 >>Turn in Beneath Nordrassil
    .target Nara Wildmane
step
    .goto 1456,69.85,30.91
    >>Talk to |cRXP_FRIENDLY_Magatha Grimtotem|r
    .turnin 3518 >>Turn in Delivery to Magatha
    .accept 3562 >>Accept Magatha's Payment to Jediga
    .target Magatha Grimtotem
step
    .goto 1454,55.52,34.08
    >>Talk to |cRXP_FRIENDLY_Jes'rimon|r
    .turnin 3541 >>Turn in Delivery to Jes'rimon
    .accept 3563 >>Accept Jes'rimon's Payment to Jediga
    .target Jes'rimon
step
    .goto 1454,48.47,45.43
    >>Talk to |cRXP_FRIENDLY_Zevrost|r
    .turnin 91547 >>Turn in Sin'dorei Tome of Summoning
    .target Zevrost
step
    .goto 1458,54.81,76.33
    >>Talk to |cRXP_FRIENDLY_Andron Gant|r
    .turnin 3542 >>Turn in Delivery to Andron Gant
    .accept 91734 >>Accept Remote Contact
    .accept 3564 >>Accept Andron's Payment to Jediga
    .target Andron Gant
step
    .goto 2482,63.32,25.89
    >>Talk to |cRXP_FRIENDLY_Maerion Thaelemaches|r
    .turnin 91877 >>Turn in Demon Hunter's Hunter
    .target Maerion Thaelemaches
step
    .goto 1448,65.18,2.68
    >>Talk to |cRXP_FRIENDLY_Gorn One Eye|r
    .turnin 86798 >>Turn in Timbermaw Reinforcements
    .target Gorn One Eye
step
    .goto 1447,22.56,51.42
    >>Talk to |cRXP_FRIENDLY_Jediga|r
    .turnin 3562 >>Turn in Magatha's Payment to Jediga
    .turnin 3563 >>Turn in Jes'rimon's Payment to Jediga
    .turnin 91734 >>Turn in Remote Contact
    .turnin 3564 >>Turn in Andron's Payment to Jediga
    .target Jediga
step
    .goto 1451,18.57,25.46
    >>Kill |cRXP_ENEMY_Dust Stormer|r
    *Kill 15 Dust Stormers and 15 Desert Rumblers and then return to Duke Hydraxis in Azshara.
    .complete 6805,1 --Stormers and Rumblers
    .mob Dust Stormer
step
    .goto 1451,22.7,14.46
    >>Kill |cRXP_ENEMY_Desert Rumbler|r
    *Kill 15 Dust Stormers and 15 Desert Rumblers and then return to Duke Hydraxis in Azshara.
    .complete 6805,2 --Stormers and Rumblers
    .mob Desert Rumbler
step
    .goto 1447,79.28,73.7
    >>Talk to |cRXP_FRIENDLY_Duke Hydraxis|r
    .turnin 6805 >>Turn in Stormers and Rumblers
    .accept 6821 >>Accept Eye of the Emberseer
    .target Duke Hydraxis
step
    >>Collect |cRXP_LOOT_[Eye of the Emberseer]|r from |cRXP_ENEMY_Pyroguard Emberseer|r
    *Bring the Eye of the Emberseer to Duke Hydraxis in Azshara.
    .complete 6821,1 --Eye of the Emberseer
    .mob Pyroguard Emberseer
step
    .goto 1447,79.28,73.7
    >>Talk to |cRXP_FRIENDLY_Duke Hydraxis|r
    .turnin 6821 >>Turn in Eye of the Emberseer
    .target Duke Hydraxis
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 50-60
#name 52-60 Blackrock Depths pre-quests
#displayname 52-60 Blackrock Depths pre-quests
#next 52-60 Blackrock Depths
step
    +|cRXP_WARN_Blackrock Depths: pre-quests|r. 8 quests, solo (no group needed), roughly 1 h 45 min. The run guide comes after this one. Click to start.
    *Pre-quests: Disharmony of Flame, A Taste of Flame, The Rise of the Machines, In Search of Anthion, Dead Man's Plea, Anthion's Strange Request, Anthion's Old Friend
step
    .goto 1418,3.33,48.26
    >>Talk to |cRXP_FRIENDLY_Thunderheart|r
    .accept 3906 >>Accept Disharmony of Flame
    .target Thunderheart
step
    .goto 1418,3.02,47.81
    >>Talk to |cRXP_FRIENDLY_Hierophant Theodora Mulvadania|r
    .accept 4061 >>Accept The Rise of the Machines
    .target Hierophant Theodora Mulvadania
step
    >>Kill |cRXP_ENEMY_Overmaster Pyron|r
    *Travel to the quarry in Blackrock Mountain and slay Overmaster Pyron. Return to Thunderheart when you have completed this assignment.
    *|cRXP_WARN_Elite targets here. Group up or skip.|r
    .complete 3906,1 --Disharmony of Flame
    .mob Overmaster Pyron
step
    .goto 1418,3.33,48.26
    >>Talk to |cRXP_FRIENDLY_Thunderheart|r
    .turnin 3906 >>Turn in Disharmony of Flame
    .target Thunderheart
step
    .goto 1454,34.95,38.29
    >>Talk to |cRXP_FRIENDLY_Mokvar|r
    .accept 8930 >>Accept In Search of Anthion
    .target Mokvar
step
    .goto 1423,26.11,11.3
    >>Talk to |cRXP_FRIENDLY_Anthion Harmon|r
    .turnin 8930 >>Turn in In Search of Anthion
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
    .goto 1428,95.09,31.56
    >>Talk to |cRXP_FRIENDLY_Cyrus Therepentous|r
    .accept 4022 >>Accept A Taste of Flame
    .target Cyrus Therepentous
step
    .goto 1428,85.81,57.07
    >>Collect |cRXP_LOOT_[Fractured Elemental Shard]|r from |cRXP_ENEMY_[DNT]|r, |cRXP_ENEMY_[DNT]|r, |cRXP_ENEMY_Malfunctioning Reaver|r
    *Venture to the Burning Steppes and recover 10 Fractured Elemental Shards for Hierophant Theodora Mulvadania.
    .complete 4061,1 --The Rise of the Machines
    .mob [DNT]
step
    .goto 1418,3.02,47.81
    >>Talk to |cRXP_FRIENDLY_Hierophant Theodora Mulvadania|r
    .turnin 4061 >>Turn in The Rise of the Machines
    .accept 4062 >>Accept The Rise of the Machines
    .target Hierophant Theodora Mulvadania
step
    .goto 1418,25.95,44.87
    >>Talk to |cRXP_FRIENDLY_Lotwil Veriatus|r
    .turnin 4062 >>Turn in The Rise of the Machines
    .target Lotwil Veriatus
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
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 50-60
#name 52-60 Blackrock Depths
#displayname 52-60 Blackrock Depths
#next 53-54 Felwood
step
    +|cRXP_WARN_Blackrock Depths|r (levels 52-60). Pick up 25 dungeon quests solo (roughly 2 h 55 min with the hand-ins), then ONE run with a group (roughly 4 h). No group needed until the run step. Click to start.
    *Its 8 pre-quests are in the guide before this one. Skipped them? Some quests below won't be offered: skip those steps.
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
    .goto 1418,3.33,48.26
    >>Talk to |cRXP_FRIENDLY_Thunderheart|r
    .accept 3907 >>Accept Disharmony of Fire
    .target Thunderheart
step
    .goto 1418,2.9,47.76
    >>Talk to |cRXP_FRIENDLY_Shadowmage Vivian Lagrave|r
    .accept 7201 >>Accept The Last Element
    .target Shadowmage Vivian Lagrave
step
    .goto 1418,3.74,47.43
    >>Click the |cRXP_PICK_WANTED|r
    .accept 4081 >>Accept KILL ON SIGHT: Dark Iron Dwarves
step
    .goto 1418,5.88,47.63
    >>Talk to |cRXP_FRIENDLY_Lexlort|r
    .accept 4122 >>Accept Grark Lorkrub
    .target Lexlort
step
    .goto 1418,5.96,47.73
    >>Talk to |cRXP_FRIENDLY_Galamav the Marksman|r
    .accept 3981 >>Accept Commander Gor'shak
    .target Galamav the Marksman
step
    .goto 1418,25.95,44.87
    >>Talk to |cRXP_FRIENDLY_Lotwil Veriatus|r
    .accept 4063 >>Accept The Rise of the Machines
    .target Lotwil Veriatus
step
    .goto 1458,50.14,67.97
    >>Talk to |cRXP_FRIENDLY_Apothecary Zinge|r
    .accept 4133 >>Accept Vivian Lagrave
    .target Apothecary Zinge
step
    .goto 1446,67.04,24.01
    >>Talk to |cRXP_FRIENDLY_Yorba Screwspigot|r
    .accept 4324 >>Accept Yuka Screwspigot
    .target Yorba Screwspigot
step
    .goto 1412,33.37,22.57
    >>Talk to |cRXP_FRIENDLY_Alaana Stormwalker|r
    .accept 97197 >>Accept Fragment of the Firelands
    .target Alaana Stormwalker
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in.|r
step
    .goto 1427,34.8,85.3
    >>Inside Blackrock Depths: these quests start from a drop or an object in the dungeon
    .accept 3801 >>Accept Dark Iron Legacy
    .accept 4083 >>Accept The Spectral Chalice
    .accept 4201 >>Accept The Love Potion
    .accept 9015 >>Accept The Challenge
    .accept 82062 >>Accept Ever After
step
    .goto 1427,34.8,85.3
    >>Enter |cRXP_WARN_Blackrock Depths|r with your group. Quest goals inside:
    *Disharmony of Fire: Enter Blackrock Depths and track down Lord Incendius. Slay him and return any source of information you may find to Thunderheart.
    *A Taste of Flame: Travel to Blackrock Depths and slay Bael'Gar.
    *The Rise of the Machines: Find and slay Golem Lord Argelmach. Return his head to Lotwil. You will also need to collect 10 Intact Elemental Cores from the Ragereaver Golems and Warbringer Constructs protecting Argelmach. You know this because you are psychic.
    *KILL ON SIGHT: Dark Iron Dwarves: Venture to Blackrock Depths and destroy the vile aggressors!
    *The Heart of the Mountain: Bring the Heart of the Mountain to Maxwort Uberglint in the Burning Steppes.
    *The Love Potion: Bring 4 Gromsblood, 10 Giant Silver Veins and Nagmara's Filled Vial to Mistress Nagmara in Blackrock Depths.
    *The Last Element: Travel to Blackrock Depths and recover 10 Essence of the Elements. Your first inclination is to search the golems and golem makers. You remember Vivian Lagrave also muttering something about elementals.
    *The Challenge: Travel to the Ring of the Law in Blackrock Depths and place the Banner of Provocation in its center as you are sentenced by High Justice Grimstone. Slay Theldren and his gladiators and return to Anthion Harmon in the Eastern Plaguelands with the first piece of Lord Valthalak's amulet.
    *Fragment of the Firelands: Recover a Fragment of the Firelands from Blackrock Depths for Alaana Stormwalker in Mulgore.
    .complete 3907,1 --Disharmony of Fire
    .complete 3907,2 --Disharmony of Fire
    .complete 4024,1 --A Taste of Flame
    .complete 4063,1 --The Rise of the Machines
    .complete 4063,2 --The Rise of the Machines
    .complete 4081,1 --KILL ON SIGHT: Dark Iron Dwarves
    .complete 4081,2 --KILL ON SIGHT: Dark Iron Dwarves
    .complete 4081,3 --KILL ON SIGHT: Dark Iron Dwarves
    .complete 4123,1 --The Heart of the Mountain
    .complete 4201,3 --The Love Potion
    .complete 7201,1 --The Last Element
    .complete 9015,1 --The Challenge
    .complete 97197,1 --Fragment of the Firelands
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
step
    .goto 1418,3.33,48.26
    >>Talk to |cRXP_FRIENDLY_Thunderheart|r
    .turnin 3907 >>Turn in Disharmony of Fire
    .target Thunderheart
step
    .goto 1418,2.9,47.76
    >>Talk to |cRXP_FRIENDLY_Shadowmage Vivian Lagrave|r
    .turnin 4133 >>Turn in Vivian Lagrave
    .turnin 7201 >>Turn in The Last Element
    .target Shadowmage Vivian Lagrave
step
    .goto 1418,5.81,47.52
    >>Talk to |cRXP_FRIENDLY_Warlord Goretooth|r
    .turnin 4081 >>Turn in KILL ON SIGHT: Dark Iron Dwarves
    .target Warlord Goretooth
step
    .goto 1418,5.96,47.73
    >>Talk to |cRXP_FRIENDLY_Galamav the Marksman|r
    .turnin 3981 >>Turn in Commander Gor'shak
    .target Galamav the Marksman
step
    .goto 1418,25.95,44.87
    >>Talk to |cRXP_FRIENDLY_Lotwil Veriatus|r
    .turnin 4063 >>Turn in The Rise of the Machines
    .target Lotwil Veriatus
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
    .goto 1428,40.2,34.24
    >>Talk to |cRXP_FRIENDLY_Grark Lorkrub|r
    .turnin 4122 >>Turn in Grark Lorkrub
    .target Grark Lorkrub
step
    .goto 1428,35.8,19.8
    >>Talk to |cRXP_FRIENDLY_Rugged Traveler|r
    .turnin 82062 >>Turn in Ever After
    .target Rugged Traveler
step
    .goto 1423,26.11,11.3
    >>Talk to |cRXP_FRIENDLY_Anthion Harmon|r
    .turnin 9015 >>Turn in The Challenge
    .target Anthion Harmon
step
    .goto 1412,33.37,22.57
    >>Talk to |cRXP_FRIENDLY_Alaana Stormwalker|r
    .turnin 97197 >>Turn in Fragment of the Firelands
    .target Alaana Stormwalker
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1418,3.94,46.73
    >>Click the |cRXP_PICK_KILL ON SIGHT|r
    .accept 4082 >>Accept KILL ON SIGHT: High Ranking Dark Iron Officials
step
    .goto 1418,2.9,47.76
    >>Talk to |cRXP_FRIENDLY_Shadowmage Vivian Lagrave|r
    .accept 4134 >>Accept Lost Thunderbrew Recipe
    .target Shadowmage Vivian Lagrave
step
    .goto 1428,40.2,34.24
    >>Talk to |cRXP_FRIENDLY_Grark Lorkrub|r
    .accept 4121 >>Accept Precarious Predicament
    .target Grark Lorkrub
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
    .accept 3982 >>Accept What Is Going On?
step
    .goto 1427,34.8,85.3
    >>Enter |cRXP_WARN_Blackrock Depths|r with your group. Quest goals inside:
    *Dark Iron Legacy: Slay Fineous Darkvire and recover the great hammer, Ironfel. Take Ironfel to the Shrine of Thaurissan and place it on the statue of Franclorn Forgewright.
    *KILL ON SIGHT: High Ranking Dark Iron Officials: Venture to Blackrock Depths and destroy the vile aggressors!
    *Precarious Predicament: Escort your prisoner, Grark Lorkrub, through Burning Steppes and through Blackrock Mountain to the Searing Gorge.
    *Lost Thunderbrew Recipe: Bring the Lost Thunderbrew Recipe to Vivian Lagrave in Kargath.
    *Ribbly Screwspigot: Bring Ribbly's Head to Yuka Screwspigot in the Burning Steppes.
    .complete 3802,1 --Dark Iron Legacy
    .complete 4082,1 --KILL ON SIGHT: High Ranking Dark Iron Officials
    .complete 4082,2 --KILL ON SIGHT: High Ranking Dark Iron Officials
    .complete 4082,3 --KILL ON SIGHT: High Ranking Dark Iron Officials
    .complete 4121,1 --Precarious Predicament
    .complete 4134,1 --Lost Thunderbrew Recipe
    .complete 4136,1 --Ribbly Screwspigot
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1427,34.8,85.3
    >>Inside Blackrock Depths: these quests start from a drop or an object in the dungeon
    .turnin 3802 >>Turn in Dark Iron Legacy
    .turnin 3982 >>Turn in What Is Going On?
step
    .goto 1418,5.81,47.52
    >>Talk to |cRXP_FRIENDLY_Warlord Goretooth|r
    .turnin 4082 >>Turn in KILL ON SIGHT: High Ranking Dark Iron Officials
    .target Warlord Goretooth
step
    .goto 1418,5.88,47.63
    >>Talk to |cRXP_FRIENDLY_Lexlort|r
    .turnin 4121 >>Turn in Precarious Predicament
    .target Lexlort
step
    .goto 1418,2.9,47.76
    >>Talk to |cRXP_FRIENDLY_Shadowmage Vivian Lagrave|r
    .turnin 4134 >>Turn in Lost Thunderbrew Recipe
    .target Shadowmage Vivian Lagrave
step
    .goto 1428,66.06,21.95
    >>Talk to |cRXP_FRIENDLY_Yuka Screwspigot|r
    .turnin 4136 >>Turn in Ribbly Screwspigot
    .target Yuka Screwspigot
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1418,5.81,47.52
    >>Talk to |cRXP_FRIENDLY_Warlord Goretooth|r
    .accept 4132 >>Accept Operation: Death to Angerforge
    .target Warlord Goretooth
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in. (run 3)|r
step
    .goto 1427,34.8,85.3
    >>Inside Blackrock Depths: these quests start from a drop or an object in the dungeon
    .accept 4001 >>Accept What Is Going On?
step
    .goto 1427,34.8,85.3
    >>Enter |cRXP_WARN_Blackrock Depths|r with your group. Quest goals inside:
    *Operation: Death to Angerforge: Travel to Blackrock Depths and slay General Angerforge! Return to Warlord Goretooth when the task is complete.
    .complete 4132,1 --Operation: Death to Angerforge
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1454,31.73,37.82
    >>Talk to |cRXP_FRIENDLY_Thrall|r
    .turnin 4001 >>Turn in What Is Going On?
    .target Thrall
step
    .goto 1418,5.81,47.52
    >>Talk to |cRXP_FRIENDLY_Warlord Goretooth|r
    .turnin 4132 >>Turn in Operation: Death to Angerforge
    .target Warlord Goretooth
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1454,31.73,37.82
    >>Talk to |cRXP_FRIENDLY_Thrall|r
    .accept 4002 >>Accept The Eastern Kingdom
    .target Thrall
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1454,31.73,37.82
    >>Talk to |cRXP_FRIENDLY_Thrall|r
    .turnin 4002 >>Turn in The Eastern Kingdom
    .target Thrall
step
    >>|cRXP_WARN_Also part of this dungeon (later follow-ups or missing data). Do them if they are offered:|r
    *The Royal Rescue
    *The Princess Saved?
    +Done
step
    .goto 1427,34.8,85.3
    +Dungeon entrance: Blackrock Depths. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 50-60
#name 53-54 Felwood
#displayname 53-54 Felwood
#next 54-55 Winterspring
step
    #completewith next
    +|cRXP_WARN_On the way: lead-in quests in Mount Hyjal that open quests in Felwood|r
step
    .goto 2482,75.27,77.38
    >>Click the |cRXP_PICK_Loose Cog|r
    .accept 94479 >>Accept One Person's Trash
step
    .goto 2482,36.67,78.25
    >>Talk to |cRXP_FRIENDLY_Velician|r
    .accept 96321 >>Accept The Dying God
    .target Velician
step
    .goto 2482,48.26,85.72
    >>Talk to |cRXP_FRIENDLY_Curious Crow|r
    .turnin 96321 >>Turn in The Dying God
    .accept 96131 >>Accept An Oldstone But An Old Friend
    .target Curious Crow
step
    .zone 1448 >>Travel to Felwood
    *How: In the Eastern Kingdoms? Zeppelin to Orgrimmar first. Then fly to Bloodvenom Post.
    *Level for this part: 53-54. 43 quests, roughly 5 h 20 min.
step
    #completewith next
    .goto 1448,34.44,53.96,15,0
    >>Talk to |cRXP_FRIENDLY_Brakkar|r if you don't have this flight path yet
    .fp Brakkar >>Get the flight path
    .target Brakkar
step
    .goto 1448,51.23,82.16
    >>Talk to |cRXP_FRIENDLY_Ketharas|r
    .turnin 94479 >>Turn in One Person's Trash
    .turnin 96131 >>Turn in An Oldstone But An Old Friend
    .accept 96796 >>Accept Woods Workshop
    .accept 92612 >>Accept Aid from Moonglade
    .accept 95568 >>Accept Seeds for a New Season
    .accept 95569 >>Accept Hope for Hatchlings
    .target Ketharas
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
    .goto 1448,50.93,85.01
    >>Talk to |cRXP_FRIENDLY_Grazle|r
    .accept 8460 >>Accept Timbermaw Ally
    .target Grazle
step
    .goto 1448,46.75,83.13
    >>Talk to |cRXP_FRIENDLY_Maybess Riverbreeze|r
    .accept 4102 >>Accept Cleansing Felwood
    .target Maybess Riverbreeze
step
    .goto 1448,46.39,77.15
    >>Collect |cRXP_LOOT_[Putrescent Bear Organs]|r from |cRXP_ENEMY_Angerclaw Bear|r, |cRXP_ENEMY_Angerclaw Grizzly|r, |cRXP_ENEMY_Angerclaw Mauler|r. Collect |cRXP_LOOT_[Putrescent Wolf Organs]|r from |cRXP_ENEMY_Felpaw Wolf|r, |cRXP_ENEMY_Felpaw Scavenger|r, |cRXP_ENEMY_Felpaw Ravager|r
    *Bring 8 Putrescent Bear Organs and 10 Putrescent Wolf Organs to Kelek Skykeeper.
    .complete 86577,1 --A Sampling of Putrescence
    .complete 86577,2 --A Sampling of Putrescence
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
    .goto 1448,46.63,91.98
    >>Kill |cRXP_ENEMY_Deadwood Warrior|r. Kill |cRXP_ENEMY_Deadwood Pathfinder|r. Kill |cRXP_ENEMY_Deadwood Gardener|r
    *Grazle wants you to prove yourself by killing 6 Deadwood Warriors, 6 Deadwood Pathfinders, and 6 Deadwood Gardeners. Return to him in southern Felwood near the Emerald Sanctuary when you are done.
    .complete 8460,1 --Timbermaw Ally
    .complete 8460,2 --Timbermaw Ally
    .complete 8460,3 --Timbermaw Ally
    .mob Deadwood Warrior
    .mob Deadwood Pathfinder
    .mob Deadwood Gardener
step
    .goto 1448,50.93,85.01
    >>Talk to |cRXP_FRIENDLY_Grazle|r
    .turnin 8460 >>Turn in Timbermaw Ally
    .accept 8462 >>Accept Speak to Nafien
    .target Grazle
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
    .goto 1448,34.8,52.73
    >>Talk to |cRXP_FRIENDLY_Dreka'Sur|r
    .accept 6162 >>Accept A Husband's Last Battle
    .target Dreka'Sur
step
    .goto 1448,34.21,52.34
    >>Talk to |cRXP_FRIENDLY_Winna Hazzard|r
    .accept 4505 >>Accept Well of Corruption
    .target Winna Hazzard
step
    .goto 1448,34.73,52.79
    >>Talk to |cRXP_FRIENDLY_Trull Failbane|r
    .accept 4521 >>Accept Wild Guardians
    .target Trull Failbane
step
    >>Collect |cRXP_LOOT_[Filled Flasket]|r
    *Collect a sample of corrupted water from the Jadefire Satyrs' moonwell and bring it to Winna Hazzard at Bloodvenom Post.
    .complete 4505,1 --Well of Corruption
step
    .goto 1448,34.21,52.34
    >>Talk to |cRXP_FRIENDLY_Winna Hazzard|r
    .turnin 4505 >>Turn in Well of Corruption
    .accept 4506 >>Accept Corrupted Sabers
    .target Winna Hazzard
step
    .goto 1448,34.21,52.34
    >>Talk to |cRXP_FRIENDLY_Winna Hazzard|r
    .turnin 4506 >>Turn in Corrupted Sabers
    .target Winna Hazzard
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
    .goto 1448,42.05,47.32
    >>Click the |cRXP_PICK_Statue of Malorne|r
    .accept 86612 >>Accept Stag Lord's Bauble
step
    .goto 1448,43.91,40.81
    >>Kill |cRXP_ENEMY_Entropic Beast|r. Kill |cRXP_ENEMY_Entropic Horror|r
    *Seek out and destroy 2 Entropic Beasts and 2 Entropic Horrors while exploring Shatter Scar Vale. After checking to see if the craters there are still filled with corrupt fel water, return to Taronn Redfeather in Felwood.
    .complete 5156,1 --Verifying the Corruption
    .complete 5156,2 --Verifying the Corruption
    .mob Entropic Beast
    .mob Entropic Horror
step
    .goto 1448,34.21,52.34
    >>Talk to |cRXP_FRIENDLY_Winna Hazzard|r
    .turnin 86612 >>Turn in Stag Lord's Bauble
    .target Winna Hazzard
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
    .goto 1448,51.35,82.01
    >>Talk to |cRXP_FRIENDLY_Jessir Moonbow|r
    .turnin 5203 >>Turn in Rescue From Jaedenar
    .target Jessir Moonbow
step
    .goto 1448,51.21,82.11
    >>Talk to |cRXP_FRIENDLY_Greta Mosshoof|r
    .accept 5157 >>Accept Collection of the Corrupt Water
    .target Greta Mosshoof
step
    .goto 1448,51.35,82.01
    >>Talk to |cRXP_FRIENDLY_Jessir Moonbow|r
    .accept 5204 >>Accept Retribution of the Light
    .target Jessir Moonbow
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
    .goto 1448,48.23,94.28
    >>Collect |cRXP_LOOT_[Overlord Ror's Claw]|r from |cRXP_ENEMY_Overlord Ror|r
    *Kill Overlord Ror and return his claw to Dreka'Sur at Bloodvenom Post in Felwood.
    .complete 6162,1 --A Husband's Last Battle
    .mob Overlord Ror
step
    .goto 1448,34.8,52.73
    >>Talk to |cRXP_FRIENDLY_Dreka'Sur|r
    .turnin 6162 >>Turn in A Husband's Last Battle
    .target Dreka'Sur
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
    .goto 1448,51.35,82.01
    >>Talk to |cRXP_FRIENDLY_Jessir Moonbow|r
    .turnin 5385 >>Turn in The Remains of Trey Lightforge
    .target Jessir Moonbow
step
    .goto 1448,59.1,19.89
    >>Collect |cRXP_LOOT_[Blood Amber]|r from |cRXP_ENEMY_Warpwood Moss Flayer|r, |cRXP_ENEMY_Warpwood Shredder|r, |cRXP_ENEMY_Dessecus|r
    *Bring 15 Blood Amber to Maybess Riverbreeze in Felwood.
    .complete 4102,1 --Cleansing Felwood
    .mob Warpwood Moss Flayer
    .mob Warpwood Shredder
step
    .goto 1448,60.07,8.15
    >>Loot |cRXP_LOOT_[Deadwood Ritual Totem]|r from |cRXP_ENEMY_Deadwood Den Watcher|r, |cRXP_ENEMY_Deadwood Avenger|r, |cRXP_ENEMY_Deadwood Shaman|r, then click it to start the quest
    .accept 8470 >>Accept Deadwood Ritual Totem
    .use 20741
    .mob Deadwood Den Watcher
    .mob Deadwood Avenger
step
    >>Earn the required reputation
    *Take the Deadwood Ritual Totem inside Timbermaw Hold and see if one of the furbolgs there will find a use for the item. The Timbermaw will not speak with you unless you are of Neutral reputation or greater with them.
    .complete 8470,1 --Deadwood Ritual Totem
step
    .goto 1448,64.77,8.13
    >>Talk to |cRXP_FRIENDLY_Nafien|r
    .turnin 8462 >>Turn in Speak to Nafien
    .accept 8461 >>Accept Deadwood of the North
    .target Nafien
step
    .goto 1448,65.5,3.52
    >>Talk to |cRXP_FRIENDLY_Kernda|r
    .turnin 8470 >>Turn in Deadwood Ritual Totem
    .target Kernda
step
    .goto 1448,65.18,2.68
    >>Talk to |cRXP_FRIENDLY_Gorn One Eye|r
    .accept 87346 >>Accept Chieftain Bloodmaw
    .target Gorn One Eye
step
    .goto 1448,62.75,7.74
    >>Kill |cRXP_ENEMY_Deadwood Den Watcher|r. Kill |cRXP_ENEMY_Deadwood Avenger|r. Kill |cRXP_ENEMY_Deadwood Shaman|r. Collect |cRXP_LOOT_[Bloodmaw's Basher]|r from |cRXP_ENEMY_Chieftain Bloodmaw|r
    *Nafien would like you to kill 6 Deadwood Den Watchers, 6 Deadwood Avengers, and 6 Deadwood Shamans. Return to him in northern Felwood near the entrance to Timbermaw Hold.
    *Kill Chieftain Bloodmaw and bring his mace to Gorn One Eye in Timbermaw Hold.
    .complete 8461,1 --Deadwood of the North
    .complete 8461,2 --Deadwood of the North
    .complete 8461,3 --Deadwood of the North
    .complete 87346,1 --Chieftain Bloodmaw
    .mob Deadwood Den Watcher
    .mob Deadwood Avenger
    .mob Deadwood Shaman
    .mob Chieftain Bloodmaw
step
    .goto 1448,64.77,8.13
    >>Talk to |cRXP_FRIENDLY_Nafien|r
    .turnin 8461 >>Turn in Deadwood of the North
    .accept 8465 >>Accept Speak to Salfa
    .target Nafien
step
    .goto 1448,65.18,2.68
    >>Talk to |cRXP_FRIENDLY_Gorn One Eye|r
    .turnin 87346 >>Turn in Chieftain Bloodmaw
    .target Gorn One Eye
step
    .goto 1448,46.75,83.13
    >>Talk to |cRXP_FRIENDLY_Maybess Riverbreeze|r
    .turnin 4102 >>Turn in Cleansing Felwood
    .accept 5882 >>Accept Salve via Hunting
    .target Maybess Riverbreeze
step
    .goto 1448,39.5,49.25
    >>Collect |cRXP_LOOT_[Corrupted Soul Shard]|r from |cRXP_ENEMY_Cursed Ooze|r, |cRXP_ENEMY_Tainted Ooze|r, |cRXP_ENEMY_Vile Ooze|r
    .complete 5882,1 --Salve via Hunting
    .mob Cursed Ooze
    .mob Tainted Ooze
step
    .goto 1448,46.75,83.13
    >>Talk to |cRXP_FRIENDLY_Maybess Riverbreeze|r
    .turnin 5882 >>Turn in Salve via Hunting
    .target Maybess Riverbreeze
step
    .goto 2482,60.1,61.18
    >>Talk to |cRXP_FRIENDLY_Kaylaena Springwhisper|r
    .turnin 96796 >>Turn in Woods Workshop
    .target Kaylaena Springwhisper
step
    .goto 2482,76.81,73.75
    >>Collect |cRXP_LOOT_[Untainted Seed]|r from |cRXP_ENEMY_Collector of Suffering|r. Collect |cRXP_LOOT_[Hyjal Owl Egg]|r from |cRXP_PICK_Hyjal Owl Egg|r
    *Collect 10 Untainted Seeds for Ketharas.
    *Rescue 12 Hyjal Owl Eggs and bring them to Ketharas.
    .complete 95568,1 --Seeds for a New Season
    .complete 95569,1 --Hope for Hatchlings
    .mob Collector of Suffering
step
    .goto 1450,56.21,30.64
    >>Talk to |cRXP_FRIENDLY_Dendrite Starblaze|r
    .turnin 92612 >>Turn in Aid from Moonglade
    .accept 96209 >>Accept The Ancient, Orokai
    .target Dendrite Starblaze
step
    .goto 1450,41.45,43.63
    >>Talk to |cRXP_FRIENDLY_Orokai|r
    .turnin 96209 >>Turn in The Ancient, Orokai
    .accept 95006 >>Accept Stolen Power
    .target Orokai
step
    .goto 1450,56.21,30.64
    >>Talk to |cRXP_FRIENDLY_Dendrite Starblaze|r
    .turnin 95006 >>Turn in Stolen Power
    .accept 93773 >>Accept The Pact
    .target Dendrite Starblaze
step
    .goto 1448,51.23,82.16
    >>Talk to |cRXP_FRIENDLY_Ketharas|r
    .turnin 95568 >>Turn in Seeds for a New Season
    .turnin 95569 >>Turn in Hope for Hatchlings
    .turnin 93773 >>Turn in The Pact
    .accept 96930 >>Accept The Capricious Corvid
    .accept 93747 >>Accept Violence Into Verdure
    .accept 93759 >>Accept The Bounty of Nature
    .target Ketharas
step
    .goto 1448,51.23,82.16
    >>Talk to |cRXP_FRIENDLY_Ketharas|r
    .turnin 93747 >>Turn in Violence Into Verdure
    .target Ketharas
step
    .goto 1413,65.83,43.78
    >>Talk to |cRXP_FRIENDLY_Islen Waterseer|r
    .turnin 5158 >>Turn in Seeking Spiritual Aid
    .accept 5159 >>Accept Cleansed Water Returns to Felwood
    .target Islen Waterseer
step
    .goto 1452,27.73,34.5
    >>Talk to |cRXP_FRIENDLY_Salfa|r
    .turnin 8465 >>Turn in Speak to Salfa
    .target Salfa
step
    .goto 1452,56.63,32.11
    >>Kill |cRXP_ENEMY_Raging Owlbeast|r
    *Trull Failbane in Felwood wants you to kill 15 Raging Owlbeasts and 15 Ragged Owlbeasts.
    .complete 4521,1 --Wild Guardians
    .mob Raging Owlbeast
step
    .goto 1452,44.02,37.62
    >>Kill |cRXP_ENEMY_Ragged Owlbeast|r
    *Trull Failbane in Felwood wants you to kill 15 Raging Owlbeasts and 15 Ragged Owlbeasts.
    .complete 4521,2 --Wild Guardians
    .mob Ragged Owlbeast
step
    .goto 1448,34.73,52.79
    >>Talk to |cRXP_FRIENDLY_Trull Failbane|r
    .turnin 4521 >>Turn in Wild Guardians
    .accept 4741 >>Accept Wild Guardians
    .target Trull Failbane
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
    .accept 5242 >>Accept A Final Blow
    .target Greta Mosshoof
step
    .goto 1448,38.81,46.87
    >>Kill |cRXP_ENEMY_Moora|r. Kill |cRXP_ENEMY_Salia|r. Collect |cRXP_LOOT_[Shadow Lord Fel'dan's Head]|r from |cRXP_ENEMY_Shadow Lord Fel'dan|r
    *Kill Moora and Salia, and bring Shadow Lord Fel'dan's Head to Greta Mosshoof in Felwood.
    .complete 5242,1 --A Final Blow
    .complete 5242,2 --A Final Blow
    .complete 5242,3 --A Final Blow
    .mob Moora
    .mob Salia
    .mob Shadow Lord Fel'dan
step
    .goto 1448,51.21,82.11
    >>Talk to |cRXP_FRIENDLY_Greta Mosshoof|r
    .turnin 5242 >>Turn in A Final Blow
    .target Greta Mosshoof
step
    .goto 2482,48.26,85.72
    >>Talk to |cRXP_FRIENDLY_Curious Crow|r
    .turnin 96930 >>Turn in The Capricious Corvid
    .target Curious Crow
step
    .goto 2482,37.64,52.9
    >>Collect |cRXP_LOOT_[Hyjal Venison Cut]|r from |cRXP_ENEMY_Hyjal Stag|r, |cRXP_ENEMY_Predatory Hyjal Stag|r
    *Collect 2 Hyjal Venison Cuts from untainted Hyjal Stags and 6 Scarlet Dart Tubers for the hermit's stew.
    .complete 93759,1 --The Bounty of Nature
    .mob Hyjal Stag
    .mob Predatory Hyjal Stag
step
    .goto 2482,71.61,73.84
    >>Collect |cRXP_LOOT_[Scarlet Dart Tuber]|r from |cRXP_PICK_Scarlet Dart Tuber|r
    *Collect 2 Hyjal Venison Cuts from untainted Hyjal Stags and 6 Scarlet Dart Tubers for the hermit's stew.
    .complete 93759,2 --The Bounty of Nature
step
    .goto 1448,51.23,82.16
    >>Talk to |cRXP_FRIENDLY_Ketharas|r
    .turnin 93759 >>Turn in The Bounty of Nature
    .accept 95611 >>Accept Rites of Respect
    .target Ketharas
step
    .goto 1448,51.23,82.16
    >>Talk to |cRXP_FRIENDLY_Ketharas|r
    .turnin 95611 >>Turn in Rites of Respect
    .accept 90487 >>Accept Ancient Allies
    .target Ketharas
step
    .goto 2482,53.4,84.33
    >>Talk to |cRXP_FRIENDLY_Fraxinus|r
    .turnin 90487 >>Turn in Ancient Allies
    .target Fraxinus
step
    .goto 1452,65.71,20.15
    >>Kill |cRXP_ENEMY_Moontouched Owlbeast|r
    *Trull Failbane in Felwood wants you to hunt 13 Moontouched Owlbeasts.
    .complete 4741,1 --Wild Guardians
    .mob Moontouched Owlbeast
step
    .goto 1448,34.73,52.79
    >>Talk to |cRXP_FRIENDLY_Trull Failbane|r
    .turnin 4741 >>Turn in Wild Guardians
    .accept 4721 >>Accept Wild Guardians
    .target Trull Failbane
step
    .goto 1452,64.77,20.84
    >>Kill |cRXP_ENEMY_Berserk Owlbeast|r
    *Trull Failbane in Felwood wants you to hunt 10 Berserk Owlbeasts in Winterspring.
    .complete 4721,1 --Wild Guardians
    .mob Berserk Owlbeast
step
    .goto 1448,34.73,52.79
    >>Talk to |cRXP_FRIENDLY_Trull Failbane|r
    .turnin 4721 >>Turn in Wild Guardians
    .target Trull Failbane
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 50-60
#name 54-55 Winterspring
#displayname 54-55 Winterspring
#next 54-60 Dire Maul East pre-quests
step
    #completewith next
    +|cRXP_WARN_On the way: lead-in quests in Mount Hyjal that open quests in Winterspring|r
step
    .goto 2482,70.87,51.55
    >>Talk to |cRXP_FRIENDLY_Sebelia|r
    .accept 93197 >>Accept Mending Communications
    .target Sebelia
step
    .zone 1452 >>Travel to Winterspring
    *How: Fly to Everlook.
    *Level for this part: 54-55. 36 quests, roughly 5 h 10 min.
step
    #completewith next
    .goto 1452,60.47,36.3,15,0
    >>Talk to |cRXP_FRIENDLY_Yugrek|r if you don't have this flight path yet
    .fp Yugrek >>Get the flight path
    .target Yugrek
step
    .goto 1452,61.36,38.83
    >>Talk to |cRXP_FRIENDLY_Innkeeper Vizzie|r
    .turnin 93197 >>Turn in Mending Communications
    .target Innkeeper Vizzie
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
    .target Felnok Steelspring
step
    .goto 1452,61.35,38.97
    >>Talk to |cRXP_FRIENDLY_Gregor Greystone|r
    .accept 6029 >>Accept The Everlook Report
    .accept 6030 >>Accept Duke Nicholas Zverenhoff
    .target Gregor Greystone
step
    .goto 1452,61.33,36.92
    >>Talk to |cRXP_FRIENDLY_Nami|r
    .accept 84146 >>Accept Red Bag Blues
    .accept 84212 >>Accept Bookin' it Back
    .target Nami
step
    .goto 1452,60.75,37.78
    >>Talk to |cRXP_FRIENDLY_Evie Whirlbrew|r
    .accept 92859 >>Accept Shroud of the Winter Wilds
    .target Evie Whirlbrew
step
    .goto 1452,60.88,37.62
    >>Talk to |cRXP_FRIENDLY_Umi Rumplesnicker|r
    .accept 3783 >>Accept Are We There, Yeti?
    .target Umi Rumplesnicker
step
    .goto 1452,61.92,38.3
    >>Talk to |cRXP_FRIENDLY_Witch Doctor Mau'ari|r
    .accept 969 >>Accept Luck Be With You
    .target Witch Doctor Mau'ari
step
    .goto 1452,61.63,38.61
    >>Talk to |cRXP_FRIENDLY_Felnok Steelspring|r
    .accept 4809 >>Accept Chillwind Horns
    .target Felnok Steelspring
step
    .goto 1452,60.66,38.17
    >>Talk to |cRXP_FRIENDLY_Meggi Peppinrocker|r
    .accept 6603 >>Accept Trouble in Winterspring!
    .target Meggi Peppinrocker
step
    .goto 1452,61.12,38.43
    >>Talk to |cRXP_FRIENDLY_Harlo Wigglesworth|r
    .accept 6605 >>Accept A Strange One
    .accept 6606 >>Accept A Little Luck
    .target Harlo Wigglesworth
step
    .goto 1452,61.36,38.83
    >>Talk to |cRXP_FRIENDLY_Innkeeper Vizzie|r
    .accept 93406 >>Accept Unfrozen Deliveries
    .target Innkeeper Vizzie
step
    .goto 1452,61.92,38.3
    >>Talk to |cRXP_FRIENDLY_Witch Doctor Mau'ari|r
    .turnin 6606 >>Turn in A Little Luck
    .target Witch Doctor Mau'ari
step
    .goto 1452,65.24,37.81
    >>Loot |cRXP_LOOT_[Winterfall Ritual Totem]|r from |cRXP_ENEMY_Winterfall Ursa|r, |cRXP_ENEMY_Winterfall Shaman|r, |cRXP_ENEMY_Winterfall Den Watcher|r, then click it to start the quest
    .accept 8471 >>Accept Winterfall Ritual Totem
    .use 20742
    .mob Winterfall Ursa
    .mob Winterfall Shaman
step
    .goto 1452,65.24,37.81
    >>Loot |cRXP_LOOT_[Empty Firewater Flask]|r from |cRXP_ENEMY_Winterfall Ursa|r, |cRXP_ENEMY_Winterfall Shaman|r, |cRXP_ENEMY_Winterfall Den Watcher|r, then click it to start the quest
    .accept 5083 >>Accept Winterfall Firewater
    .use 12771
    .mob Winterfall Ursa
    .mob Winterfall Shaman
step
    .goto 1452,65.24,37.81
    >>Collect |cRXP_LOOT_[Winterspring Owl Feather]|r from |cRXP_ENEMY_Winterspring Owl|r, |cRXP_ENEMY_Winterspring Screecher|r. Collect |cRXP_LOOT_[Thick Yeti Fur]|r from |cRXP_ENEMY_Rogue Ice Thistle|r, |cRXP_ENEMY_Ice Thistle Yeti|r. Collect |cRXP_LOOT_[Missing Mail]|r from |cRXP_ENEMY_Ice Thistle Yeti|r, |cRXP_ENEMY_Ice Thistle Yeti|r, |cRXP_ENEMY_Ice Thistle Matriarch|r. Earn the required reputation
    *Bring 5 Winterspring Chimaera Fur and 5 Winterspring Owl Feathers to Evie Whirlbrew.
    *Collect 10 Thick Yeti Furs for Umi Rumplesnicker in Everlook.
    *Find 4 pieces of Missing Mail in the hills north of Everlook and bring it back to Innkeeper Vizzie.
    *Take the Winterfall Ritual Totem inside Timbermaw Hold and see if one of the furbolgs there will find a use for the item. The Timbermaw will not speak with you unless you are of Neutral reputation or greater with them.
    .complete 92859,2 --Shroud of the Winter Wilds
    .complete 3783,1 --Are We There, Yeti?
    .complete 93406,1 --Unfrozen Deliveries
    .complete 8471,1 --Winterfall Ritual Totem
    .mob Winterspring Owl
    .mob Winterspring Screecher
    .mob Rogue Ice Thistle
    .mob Ice Thistle Yeti
step
    .goto 1452,60.88,37.62
    >>Talk to |cRXP_FRIENDLY_Umi Rumplesnicker|r
    .turnin 3783 >>Turn in Are We There, Yeti?
    .target Umi Rumplesnicker
step
    .goto 1452,61.36,38.83
    >>Talk to |cRXP_FRIENDLY_Innkeeper Vizzie|r
    .turnin 93406 >>Turn in Unfrozen Deliveries
    .target Innkeeper Vizzie
step
    .goto 1452,60.88,37.62
    >>Talk to |cRXP_FRIENDLY_Umi Rumplesnicker|r
    .accept 977 >>Accept Are We There, Yeti?
    .target Umi Rumplesnicker
step
    .goto 1452,61.36,38.83
    >>Talk to |cRXP_FRIENDLY_Innkeeper Vizzie|r
    .accept 93269 >>Accept Top of the Post
    .target Innkeeper Vizzie
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
    .goto 1452,64.39,20.67
    >>Loot |cRXP_LOOT_[Blue-feathered Necklace]|r from |cRXP_ENEMY_Crazed Owlbeast|r, |cRXP_ENEMY_Moontouched Owlbeast|r, |cRXP_ENEMY_Berserk Owlbeast|r, then click it to start the quest
    .accept 4882 >>Accept Guarding Secrets
    .use 12558
    .mob Crazed Owlbeast
    .mob Moontouched Owlbeast
step
    .goto 1452,58.18,19.9
    >>Collect |cRXP_LOOT_[Chillwind Chimaera Fur]|r from |cRXP_ENEMY_Fledgling Chillwind|r, |cRXP_ENEMY_Chillwind Chimaera|r, |cRXP_ENEMY_Chillwind Ravager|r. Collect |cRXP_LOOT_[Uncracked Chillwind Horn]|r from |cRXP_ENEMY_Fledgling Chillwind|r, |cRXP_ENEMY_Chillwind Chimaera|r, |cRXP_ENEMY_Chillwind Ravager|r
    *Bring 5 Winterspring Chimaera Fur and 5 Winterspring Owl Feathers to Evie Whirlbrew.
    *Bring 8 Uncracked Chillwind Horns to Felnok Steelspring.
    .complete 92859,1 --Shroud of the Winter Wilds
    .complete 4809,1 --Chillwind Horns
    .mob Fledgling Chillwind
    .mob Chillwind Chimaera
step
    .goto 1452,58.3,12.79
    >>Talk to |cRXP_FRIENDLY_Sar Browneye|r
    .accept 97264 >>Accept Shardtooth Pulling
    .target Sar Browneye
step
    .goto 1452,58.26,12.87
    >>Talk to |cRXP_FRIENDLY_Rilan Howard|r
    .accept 97403 >>Accept Two-Headed Ravagers
    .target Rilan Howard
step
    .goto 1452,57.6,19.48
    >>Kill |cRXP_ENEMY_Elder Shardtooth|r. Kill |cRXP_ENEMY_Chillwind Ravager|r
    *Remove 12 Elder Shardtooth from nearby areas, then return to Sarna Brownhorn.
    *Kill 15 Chillwind Ravagers and return to Rilan Howard in northern Winterspring.
    .complete 97264,1 --Shardtooth Pulling
    .complete 97403,1 --Two-Headed Ravagers
    .mob Elder Shardtooth
    .mob Chillwind Ravager
step
    .goto 1452,58.3,12.79
    >>Talk to |cRXP_FRIENDLY_Sar Browneye|r
    .turnin 97264 >>Turn in Shardtooth Pulling
    .target Sar Browneye
step
    .goto 1452,58.26,12.87
    >>Talk to |cRXP_FRIENDLY_Rilan Howard|r
    .turnin 97403 >>Turn in Two-Headed Ravagers
    .target Rilan Howard
step
    .goto 1452,58.3,12.79
    >>Talk to |cRXP_FRIENDLY_Sar Browneye|r
    .accept 97404 >>Accept Too Bad to Bear
    .target Sar Browneye
step
    .goto 1452,58.61,12.83
    >>Collect |cRXP_LOOT_[Kuroma's Head]|r from |cRXP_ENEMY_Kuroma|r. Collect |cRXP_LOOT_[Kamuro's Head]|r from |cRXP_ENEMY_Kamuro|r
    *Kill the old shardtooth matriarchs, Kuroma and Kamuro, and return their heads to Sarna Brownhorn.
    .complete 97404,1 --Too Bad to Bear
    .complete 97404,2 --Too Bad to Bear
    .mob Kuroma
    .mob Kamuro
step
    .goto 1452,58.3,12.79
    >>Talk to |cRXP_FRIENDLY_Sar Browneye|r
    .turnin 97404 >>Turn in Too Bad to Bear
    .target Sar Browneye
step
    .goto 1452,60.75,37.78
    >>Talk to |cRXP_FRIENDLY_Evie Whirlbrew|r
    .turnin 92859 >>Turn in Shroud of the Winter Wilds
    .target Evie Whirlbrew
step
    .goto 1452,61.63,38.61
    >>Talk to |cRXP_FRIENDLY_Felnok Steelspring|r
    .turnin 4809 >>Turn in Chillwind Horns
    .target Felnok Steelspring
step
    .goto 1452,60.75,37.78
    >>Talk to |cRXP_FRIENDLY_Evie Whirlbrew|r
    .accept 98462 >>Accept Shroud of the Winter Wilds
    .target Evie Whirlbrew
step
    .goto 1452,61.63,38.61
    >>Talk to |cRXP_FRIENDLY_Felnok Steelspring|r
    .accept 4810 >>Accept Return to Tinkee
    .target Felnok Steelspring
step
    .goto 1452,58.18,19.9
    >>Collect |cRXP_LOOT_[Chillwind Chimaera Fur]|r from |cRXP_ENEMY_Fledgling Chillwind|r, |cRXP_ENEMY_Chillwind Chimaera|r, |cRXP_ENEMY_Chillwind Ravager|r
    *Bring 5 Chillwind Chimaera Fur and 5 Winterspring Owl Feathers to Evie Whirlbrew.
    .complete 98462,1 --Shroud of the Winter Wilds
    .mob Fledgling Chillwind
    .mob Chillwind Chimaera
step
    .goto 1452,62.63,32.96
    >>Collect |cRXP_LOOT_[Winterspring Owl Feather]|r from |cRXP_ENEMY_Winterspring Owl|r, |cRXP_ENEMY_Winterspring Screecher|r
    *Bring 5 Chillwind Chimaera Fur and 5 Winterspring Owl Feathers to Evie Whirlbrew.
    .complete 98462,2 --Shroud of the Winter Wilds
    .mob Winterspring Owl
    .mob Winterspring Screecher
step
    .goto 1452,60.75,37.78
    >>Talk to |cRXP_FRIENDLY_Evie Whirlbrew|r
    .turnin 98462 >>Turn in Shroud of the Winter Wilds
    .target Evie Whirlbrew
step
    .goto 1452,31.27,45.16
    >>Talk to |cRXP_FRIENDLY_Donova Snowden|r
    .turnin 6603 >>Turn in Trouble in Winterspring!
    .turnin 5083 >>Turn in Winterfall Firewater
    .accept 5082 >>Accept Threat of the Winterfall
    .accept 5084 >>Accept Falling to Corruption
    .accept 4842 >>Accept Strange Sources
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
    .goto 1452,61.37,68.05
    >>Collect |cRXP_LOOT_[Frostmaul Shards]|r from |cRXP_ENEMY_Hailspite|r, |cRXP_ENEMY_Frostmaul Preserver|r, |cRXP_ENEMY_Kashoch the Reaver|r. Discover Darkwhisper Gorge
    *Collect 4 Frostmaul Shards for Witch Doctor Mau'ari in Everlook.
    *Follow Donova Snowden's instructions, then report back.
    .complete 969,1 --Luck Be With You
    .complete 4842,1 --Strange Sources
    .mob Hailspite
    .mob Frostmaul Preserver
step
    .goto 1452,61.92,38.3
    >>Talk to |cRXP_FRIENDLY_Witch Doctor Mau'ari|r
    .turnin 969 >>Turn in Luck Be With You
    .accept 975 >>Accept Cache of Mau'ari
    .target Witch Doctor Mau'ari
step
    .goto 1452,61.92,38.3
    >>Talk to |cRXP_FRIENDLY_Witch Doctor Mau'ari|r
    .turnin 975 >>Turn in Cache of Mau'ari
    .target Witch Doctor Mau'ari
step
    .goto 1452,31.27,45.16
    >>Talk to |cRXP_FRIENDLY_Donova Snowden|r
    .turnin 4842 >>Turn in Strange Sources
    .target Donova Snowden
step
    .goto 1420,83.19,68.45
    >>Talk to |cRXP_FRIENDLY_Argent Officer Garush|r
    .turnin 6029 >>Turn in The Everlook Report
    .target Argent Officer Garush
step
    .goto 1423,71.63,50.09
    >>Talk to |cRXP_FRIENDLY_Duke Nicholas Zverenhoff|r
    .turnin 6030 >>Turn in Duke Nicholas Zverenhoff
    .target Duke Nicholas Zverenhoff
step
    .goto 1428,53,24.4
    >>Talk to |cRXP_FRIENDLY_Red Bag|r
    .turnin 84146 >>Turn in Red Bag Blues
    .target Red Bag
step
    .goto 1428,65.24,24
    >>Talk to |cRXP_FRIENDLY_Tinkee Steamboil|r
    .turnin 4810 >>Turn in Return to Tinkee
    .target Tinkee Steamboil
step
    .goto 1446,55.29,95.52
    >>Talk to |cRXP_FRIENDLY_Sebastian Jurgens|r
    .turnin 84212 >>Turn in Bookin' it Back
    .target Sebastian Jurgens
step
    .goto 1446,51.06,26.87
    >>Kill |cRXP_ENEMY_Sprinkle|r
    *Take Umi's Mechanical Yeti and scare her friends with it:
    .complete 5163,2 --Are We There, Yeti?
    .mob Sprinkle
step
    .goto 1448,34.21,52.34
    >>Talk to |cRXP_FRIENDLY_Winna Hazzard|r
    .turnin 6605 >>Turn in A Strange One
    .target Winna Hazzard
step
    .goto 1448,34.73,52.79
    >>Talk to |cRXP_FRIENDLY_Trull Failbane|r
    .turnin 4882 >>Turn in Guarding Secrets
    .accept 4883 >>Accept Guarding Secrets
    .target Trull Failbane
step
    .goto 1448,60.2,5.84
    >>Click the |cRXP_PICK_Deadwood Cauldron|r
    .turnin 5084 >>Turn in Falling to Corruption
    .accept 5085 >>Accept Mystery Goo
step
    .goto 1448,65.5,3.52
    >>Talk to |cRXP_FRIENDLY_Kernda|r
    .turnin 8471 >>Turn in Winterfall Ritual Totem
    .target Kernda
step
    .goto 2482,70.87,51.55
    >>Talk to |cRXP_FRIENDLY_Sebelia|r
    .turnin 93269 >>Turn in Top of the Post
    .target Sebelia
step
    .goto 1456,75.65,31.61
    >>Talk to |cRXP_FRIENDLY_Nara Wildmane|r
    .turnin 4883 >>Turn in Guarding Secrets
    .target Nara Wildmane
step
    .goto 1452,31.27,45.16
    >>Talk to |cRXP_FRIENDLY_Donova Snowden|r
    .turnin 5085 >>Turn in Mystery Goo
    .accept 5086 >>Accept Toxic Horrors
    .target Donova Snowden
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
step
    .goto 1452,69.56,38.31
    >>Loot |cRXP_LOOT_[Crudely-written Log]|r from |cRXP_ENEMY_High Chief Winterfall|r, then click it to start the quest
    .accept 5123 >>Accept The Final Piece
    .use 12842
    .mob High Chief Winterfall
step
    .goto 1452,31.27,45.16
    >>Talk to |cRXP_FRIENDLY_Donova Snowden|r
    .turnin 5123 >>Turn in The Final Piece
    .accept 5128 >>Accept Words of the High Chief
    .target Donova Snowden
step
    .goto 1448,51.14,81.75
    >>Talk to |cRXP_FRIENDLY_Kelek Skykeeper|r
    .turnin 5128 >>Turn in Words of the High Chief
    .target Kelek Skykeeper
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 50-60
#name 54-60 Dire Maul East pre-quests
#displayname 54-60 Dire Maul East pre-quests
#next 54-60 Dire Maul East
step
    +|cRXP_WARN_Dire Maul East: pre-quests|r. 1 quests, solo (no group needed), roughly 5 min. The run guide comes after this one. Click to start.
    *Pre-quests: Bodley's Unfortunate Fate
step
    .goto 1454,34.95,38.29
    >>Talk to |cRXP_FRIENDLY_Mokvar|r
    .accept 9032 >>Accept Bodley's Unfortunate Fate
    .target Mokvar
step
    .goto 1454,34.95,38.29
    >>Talk to |cRXP_FRIENDLY_Mokvar|r
    .turnin 9032 >>Turn in Bodley's Unfortunate Fate
    .target Mokvar
step
    +|cRXP_WARN_Pre-quests done.|r Next: Dire Maul East itself. That guide tells you when to find a group. Click to continue.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 50-60
#name 54-60 Dire Maul East
#displayname 54-60 Dire Maul East
#next 55-56 Blasted Lands/Burning Steppes
step
    +|cRXP_WARN_Dire Maul East|r (levels 54-60). Pick up 5 dungeon quests solo (roughly 10 min with the hand-ins), then ONE run with a group (roughly 1 h 40 min). No group needed until the run step. Click to start.
    *Door: East wall of the central courtyard. No key. Chase Pusillin: he drops the Crescent Key that opens West and North.
    *East 54-60, West 56-60, North 56-60.
    *Its 1 pre-quests are in the guide before this one. Skipped them? Some quests below won't be offered: skip those steps.
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1454,37.56,75.36
    >>Talk to |cRXP_FRIENDLY_Warcaller Gorlach|r
    .accept 7492 >>Accept Camp Mojache
    .target Warcaller Gorlach
step
    .goto 1444,76.91,37.35
    >>Talk to |cRXP_FRIENDLY_Azj'Tordin|r
    .accept 7441 >>Accept Pusillin and the Elder Azj'Tordin
    .target Azj'Tordin
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
    .goto 1444,76.18,43.83
    >>Talk to |cRXP_FRIENDLY_Talo Thornhoof|r
    .turnin 7492 >>Turn in Camp Mojache
    .target Talo Thornhoof
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1444,76.18,43.83
    >>Talk to |cRXP_FRIENDLY_Talo Thornhoof|r
    .accept 7489 >>Accept Lethtendris's Web
    .target Talo Thornhoof
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in. (run 2)|r
step
    .goto 1444,64.8,30.2
    >>Enter |cRXP_WARN_Dire Maul East|r with your group. Quest goals inside:
    *Lethtendris's Web: Bring Lethtendris's Web to Talo Thornhoof at Camp Mojache in Feralas.
    .complete 7489,1 --Lethtendris's Web
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1444,76.18,43.83
    >>Talk to |cRXP_FRIENDLY_Talo Thornhoof|r
    .turnin 7489 >>Turn in Lethtendris's Web
    .target Talo Thornhoof
step
    .goto 1444,64.8,30.2
    +Dungeon entrance: Dire Maul East. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 50-60
#name 55-56 Blasted Lands/Burning Steppes
#displayname 55-56 Blasted Lands/Burning Steppes
#next 55-60 Lower Blackrock Spire pre-quests
step
    #completewith next
    +|cRXP_WARN_On the way: lead-in quests in Searing Gorge that open quests in Blasted Lands|r
step
    .goto 1427,14.55,36.42
    >>Click the |cRXP_PICK_Weathered Etching|r
    .accept 81900 >>Accept The Burning Beast
step
    .zone 1419 >>Travel to Blasted Lands
    *How: In Kalimdor? Zeppelin to Grom'gol or the Undercity first. Then fly to Stonard or Flame Crest.
    *Level for this part: 55-56. 23 quests, roughly 4 h 35 min.
step
    .goto 1419,50.64,14.3
    >>Talk to |cRXP_FRIENDLY_Bloodmage Lynnore|r
    .turnin 81900 >>Turn in The Burning Beast
    .target Bloodmage Lynnore
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
    .goto 1435,44.97,57.37
    >>Talk to |cRXP_FRIENDLY_Bengor|r
    .accept 2623 >>Accept The Swamp Talker
    .target Bengor
step
    .goto 1435,62.6,88.07
    >>Collect |cRXP_LOOT_[Warchief's Orders]|r from |cRXP_ENEMY_Swamp Talker|r
    *Retrieve the Warchief's Orders and return them to the Fallen Hero of the Horde.
    .complete 2623,1 --The Swamp Talker
    .mob Swamp Talker
step
    .goto 1435,34.29,66.14
    >>Talk to |cRXP_FRIENDLY_Fallen Hero of the Horde|r
    .turnin 2623 >>Turn in The Swamp Talker
    .target Fallen Hero of the Horde
step
    .goto 1419,51.98,35.65
    >>Talk to |cRXP_FRIENDLY_Kum'isha the Collector|r
    .turnin 93684 >>Turn in The Found One
    .accept 93572 >>Accept To Serve The Draenei
    .accept 2521 >>Accept To Serve Kum'isha
    .accept 3501 >>Accept Everything Counts In Large Amounts
    .accept 93685 >>Accept To Serve Kum'isha
    .target Kum'isha the Collector
step
    .goto 1419,51.98,35.65
    >>Talk to |cRXP_FRIENDLY_Kum'isha the Collector|r
    .turnin 93572 >>Turn in To Serve The Draenei
    .target Kum'isha the Collector
step
    .goto 1419,50.06,41.14
    >>Collect |cRXP_LOOT_[Flawless Draenethyst Sphere]|r from |cRXP_ENEMY_Dreadmaul Ogre|r, |cRXP_ENEMY_Dreadmaul Ogre Mage|r, |cRXP_ENEMY_Dreadmaul Brute|r. Collect |cRXP_LOOT_[Imperfect Draenethyst Fragment]|r from |cRXP_ENEMY_Dreadmaul Ogre|r, |cRXP_ENEMY_Dreadmaul Ogre Mage|r, |cRXP_ENEMY_Dreadmaul Brute|r
    *In your journeys throughout the Blasted Lands, should you ever come across a Flawless Draenethyst Sphere, take the item back to Kum'isha the Collector.
    *Bring Kum'isha Imperfect Draenethyst Fragments and be rewarded for each one you turn in.
    *Find a Flawless Draenethyst Sphere in the Blasted Lands, and bring it to Kum'isha the Collector.
    .complete 2521,1 --To Serve Kum'isha
    .complete 3501,1 --Everything Counts In Large Amounts
    .complete 93685,1 --To Serve Kum'isha
    .mob Dreadmaul Ogre
    .mob Dreadmaul Ogre Mage
step
    .goto 1419,51.98,35.65
    >>Talk to |cRXP_FRIENDLY_Kum'isha the Collector|r
    .turnin 2521 >>Turn in To Serve Kum'isha
    .turnin 3501 >>Turn in Everything Counts In Large Amounts
    .turnin 93685 >>Turn in To Serve Kum'isha
    .target Kum'isha the Collector
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
    .accept 81917 >>Accept Chains That Bind
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
    .goto 1419,64.77,33.72
    >>Collect |cRXP_LOOT_[Infernal Chain Link]|r from |cRXP_ENEMY_Shadowsworn Cultist|r, |cRXP_ENEMY_Shadowsworn Thug|r, |cRXP_ENEMY_Shadowsworn Adept|r
    *Bring 5 infernal chain links to Bloodmage Lynnore in the Blasted Lands
    .complete 81917,1 --Chains That Bind
    .mob Shadowsworn Cultist
    .mob Shadowsworn Thug
step
    .goto 1419,67.57,19.29
    >>Talk to |cRXP_FRIENDLY_Ambassador Ardalan|r
    .accept 91882 >>Accept The Grand Alliance
    .target Ambassador Ardalan
step
    .goto 1419,67.57,19.29
    >>Talk to |cRXP_FRIENDLY_Ambassador Ardalan|r
    .turnin 91882 >>Turn in The Grand Alliance
    .target Ambassador Ardalan
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
    .turnin 81917 >>Turn in Chains That Bind
    .target Bloodmage Lynnore
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
    .goto 1454,48.47,45.43
    >>Talk to |cRXP_FRIENDLY_Zevrost|r
    .accept 91548 >>Accept Vek'zol
    .target Zevrost
step
    .goto 1435,34.29,66.14
    >>Talk to |cRXP_FRIENDLY_Fallen Hero of the Horde|r
    .accept 2721 >>Accept Kirith
    .accept 2801 >>Accept A Tale of Sorrow
    .accept 2744 >>Accept The Demon Hunter
    .target Fallen Hero of the Horde
step
    .goto 1435,34.29,66.14
    >>Talk to |cRXP_FRIENDLY_Fallen Hero of the Horde|r
    .turnin 2721 >>Turn in Kirith
    .turnin 2801 >>Turn in A Tale of Sorrow
    .accept 2681 >>Accept The Stones That Bind Us
    .target Fallen Hero of the Horde
step
    .goto 1447,60.82,66.35
    >>Talk to |cRXP_FRIENDLY_Loramus Thalipedes|r
    .turnin 2744 >>Turn in The Demon Hunter
    .target Loramus Thalipedes
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
step
    .goto 1419,38.57,31.81
    >>Collect |cRXP_LOOT_[Heart of Vek'zol]|r from |cRXP_ENEMY_Vek'zol|r. Kill |cRXP_ENEMY_Servant of Sevine|r
    *Use the Sin'dorei Tome of Summoning to summon Vek'zol at the Altar of Storms in the Blasted Lands. Bring the Heart of Vek'zol to Zevrost in Orgrimmar.
    *Free nine Servants of Razelikh, three Servants of Sevine, three Servants of Allistarj, and three Servants of Grol. Return to the Fallen Hero when your task is complete. You must remain within close proximity of the stones or the process will fail.
    .complete 91548,1 --Vek'zol
    .complete 2681,4 --The Stones That Bind Us
    .mob Vek'zol
    .mob Servant of Sevine
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
    .goto 1454,48.47,45.43
    >>Talk to |cRXP_FRIENDLY_Zevrost|r
    .turnin 91548 >>Turn in Vek'zol
    .target Zevrost
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
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 50-60
#name 55-60 Lower Blackrock Spire pre-quests
#displayname 55-60 Lower Blackrock Spire pre-quests
#next 55-60 Lower Blackrock Spire
step
    +|cRXP_WARN_Lower Blackrock Spire: pre-quests|r. 1 quests, solo (no group needed), roughly 40 min. The run guide comes after this one. Click to start.
    *Pre-quests: The Lost Tablets of Mosh'aru
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
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 50-60
#name 55-60 Lower Blackrock Spire
#displayname 55-60 Lower Blackrock Spire
#next 55-60 Blackmaw Hold
step
    +|cRXP_WARN_Lower Blackrock Spire|r (levels 55-60). Pick up 16 dungeon quests solo (roughly 1 h 15 min with the hand-ins), then ONE run with a group (roughly 4 h 30 min). No group needed until the run step. Click to start.
    *Door: Blackrock Spire door inside Blackrock Mountain. No key.
    *Lower Blackrock Spire 55-60, Upper Blackrock Spire 59-60.
    *Its 1 pre-quests are in the guide before this one. Skipped them? Some quests below won't be offered: skip those steps.
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1446,66.89,24.03
    >>Talk to |cRXP_FRIENDLY_Prospector Ironboot|r
    .accept 4788 >>Accept The Final Tablets
    .target Prospector Ironboot
step
    .goto 1418,5.96,47.73
    >>Talk to |cRXP_FRIENDLY_Galamav the Marksman|r
    .accept 4724 >>Accept The Pack Mistress
    .target Galamav the Marksman
step
    .goto 1418,5.88,47.63
    >>Talk to |cRXP_FRIENDLY_Lexlort|r
    .accept 4981 >>Accept Operative Bijou
    .target Lexlort
step
    .goto 1418,5.81,47.52
    >>Talk to |cRXP_FRIENDLY_Warlord Goretooth|r
    .accept 4903 >>Accept Warlord's Command
    .accept 98325 >>Accept Blood and Thunder
    .target Warlord Goretooth
step
    .goto 1428,65.89,21.92
    >>Talk to |cRXP_FRIENDLY_Kibler|r
    .accept 4729 >>Accept Kibler's Exotic Pets
    .accept 4862 >>Accept En-Ay-Es-Tee-Why
    .target Kibler
step
    .goto 1428,65.01,23.76
    >>Talk to |cRXP_FRIENDLY_Ragged John|r
    .accept 4866 >>Accept Mother's Milk
    .target Ragged John
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
    .accept 8966 >>Accept The Left Piece of Lord Valthalak's Amulet
    .accept 8989 >>Accept The Right Piece of Lord Valthalak's Amulet
step
    .goto 1427,34.8,85.3
    >>Enter |cRXP_WARN_Lower Blackrock Spire|r with your group. Quest goals inside:
    *The Pack Mistress: Slay Halycon, pack mistress of the Bloodaxe worg.
    *Kibler's Exotic Pets: Travel to Blackrock Spire and find Bloodaxe Worg Pups. Use the cage to carry the ferocious little beasts. Bring back a Caged Worg Pup to Kibler.
    *Seal of Ascension: Find the three gemstones of command: The Gemstone of Smolderthorn, Gemstone of Spirestone, and Gemstone of Bloodaxe. Return them, along with the Unadorned Seal of Ascension, to Vaelan.
    *The Final Tablets: Bring the Fifth and Sixth Mosh'aru Tablets to Prospector Ironboot in Tanaris.
    *En-Ay-Es-Tee-Why: Travel to Blackrock Spire and collect 15 Spire Spider Eggs for Kibler.
    *Urok Doomhowl: Read Warosh's Scroll. Bring Warosh's Mojo to Warosh.
    *Warlord's Command: Slay Highlord Omokk, War Master Voone, and Overlord Wyrmthalak. Recover Important Blackrock Documents. Return to Warlord Goretooth in Kargath when the mission has been accomplished.
    *The Left Piece of Lord Valthalak's Amulet: Use the Brazier of Beckoning to summon forth the spirit of Mor Grayhoof and slay him. Return to Bodley inside Blackrock Mountain with the Left Piece of Lord Valthalak's Amulet and the Brazier of Beckoning.
    *The Right Piece of Lord Valthalak's Amulet: Use the Brazier of Beckoning to summon forth the spirit of Mor Grayhoof and slay him. Return to Bodley inside Blackrock Mountain with the recombined Lord Valthalak's Amulet and the Brazier of Beckoning.
    .complete 4724,1 --The Pack Mistress
    .complete 4729,1 --Kibler's Exotic Pets
    .complete 4742,1 --Seal of Ascension
    .complete 4742,2 --Seal of Ascension
    .complete 4742,3 --Seal of Ascension
    .complete 4742,4 --Seal of Ascension
    .complete 4788,1 --The Final Tablets
    .complete 4788,2 --The Final Tablets
    .complete 4862,1 --En-Ay-Es-Tee-Why
    .complete 4867,1 --Urok Doomhowl
    .complete 4903,1 --Warlord's Command
    .complete 4903,2 --Warlord's Command
    .complete 4903,3 --Warlord's Command
    .complete 4903,4 --Warlord's Command
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
    .turnin 8966 >>Turn in The Left Piece of Lord Valthalak's Amulet
    .turnin 8989 >>Turn in The Right Piece of Lord Valthalak's Amulet
step
    .goto 1418,5.96,47.73
    >>Talk to |cRXP_FRIENDLY_Galamav the Marksman|r
    .turnin 4724 >>Turn in The Pack Mistress
    .target Galamav the Marksman
step
    .goto 1418,5.88,47.63
    >>Talk to |cRXP_FRIENDLY_Lexlort|r
    .turnin 4981 >>Turn in Operative Bijou
    .target Lexlort
step
    .goto 1418,5.81,47.52
    >>Talk to |cRXP_FRIENDLY_Warlord Goretooth|r
    .turnin 4903 >>Turn in Warlord's Command
    .turnin 98325 >>Turn in Blood and Thunder
    .target Warlord Goretooth
step
    .goto 1428,65.89,21.92
    >>Talk to |cRXP_FRIENDLY_Kibler|r
    .turnin 4729 >>Turn in Kibler's Exotic Pets
    .turnin 4862 >>Turn in En-Ay-Es-Tee-Why
    .target Kibler
step
    .goto 1428,65.01,23.76
    >>Talk to |cRXP_FRIENDLY_Ragged John|r
    .turnin 4866 >>Turn in Mother's Milk
    .target Ragged John
step
    .goto 1428,65.24,24
    >>Talk to |cRXP_FRIENDLY_Tinkee Steamboil|r
    .turnin 4907 >>Turn in Tinkee Steamboil
    .target Tinkee Steamboil
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
    .accept 4982 >>Accept Bijou's Belongings
step
    .goto 1427,34.8,85.3
    >>Enter |cRXP_WARN_Lower Blackrock Spire|r with your group. Quest goals inside:
    *Seal of Ascension: Travel to the Wyrmbog in Dustwallow Marsh. Find the ancient drake, Emberstrife and beat him without mercy until his will is broken.
    *Bijou's Belongings: Find Bijou's Belongings and return them to her. You recall her mentioning that she stashed them on the bottom floor of the city.
    .complete 4743,1 --Seal of Ascension
    .complete 4982,1 --Bijou's Belongings
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1427,34.8,85.3
    >>Inside Lower Blackrock Spire: these quests start from a drop or an object in the dungeon
    .turnin 4743 >>Turn in Seal of Ascension
    .turnin 4982 >>Turn in Bijou's Belongings
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in. (run 3)|r
step
    .goto 1427,34.8,85.3
    >>Inside Lower Blackrock Spire: these quests start from a drop or an object in the dungeon
    .accept 4983 >>Accept Bijou's Reconnaissance Report
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1418,5.88,47.63
    >>Talk to |cRXP_FRIENDLY_Lexlort|r
    .turnin 4983 >>Turn in Bijou's Reconnaissance Report
    .target Lexlort
step
    .goto 1427,34.8,85.3
    +Dungeon entrance: Lower Blackrock Spire. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 50-60
#name 55-60 Blackmaw Hold
#displayname 55-60 Blackmaw Hold
#next 56-58 Western/Eastern Plaguelands
step
    +|cRXP_WARN_Blackmaw Hold|r (levels 55-60). Pick up 8 dungeon quests solo (roughly 55 min with the hand-ins), then ONE run with a group (roughly 1 h 20 min). No group needed until the run step. Click to start.
    *New Forever dungeon in north Azshara, through the furbolg tunnel (bear-head entrance). The portal is deep inside.
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
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
    .goto 1447,35.9,25.34
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
    .goto 1456,75.65,31.61
    >>Talk to |cRXP_FRIENDLY_Nara Wildmane|r
    .accept 92343 >>Accept Get to the Roots of It
    .target Nara Wildmane
step
    .goto 1412,33.41,22.59
    >>Talk to |cRXP_FRIENDLY_Muln Earthfury|r
    .accept 97198 >>Accept Blackmaw Magic
    .target Muln Earthfury
step
    .goto 1447,35.9,25.34
    >>Collect |cRXP_LOOT_[Feathered Charm Necklace]|r from |cRXP_ENEMY_Impaan the Imprisoner|r, |cRXP_ENEMY_Varrox Bleakhoof|r, |cRXP_ENEMY_Legashi Subjugator|r
    *Find the owner of the Feathered Charm Necklace.
    .complete 92070,1 --A Lost Memento
    .mob Impaan the Imprisoner
    .mob Varrox Bleakhoof
step
    .goto 1447,34.87,24.25
    >>Collect |cRXP_LOOT_[Blackmaw Pouch]|r from |cRXP_ENEMY_Withermaw|r, |cRXP_ENEMY_Bonesnout the Unbroken|r, |cRXP_ENEMY_Impaan the Imprisoner|r
    *Enter Blackmaw Hold and recover 5 Blackmaw Pouches for Ekkal at the Ruins of Eldarath in Azshara.
    .complete 97327,1 --Blackmaw Pouches
    .mob Withermaw
    .mob Bonesnout the Unbroken
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in.|r
step
    .goto 1447,38.7,33.4
    >>Inside Blackmaw Hold: these quests start from a drop or an object in the dungeon
    .accept 92067 >>Accept Feeding Time!
step
    .goto 1447,38.7,33.4
    >>Enter |cRXP_WARN_Blackmaw Hold|r with your group. Quest goals inside:
    *Blackmaw Reclamation: Bring Varrox Bleakhoof's Head to Gatekeeper Rageroar at Ursolan.
    *The Twin Bears: Find the Totem of Ursoc and the Totem of Ursol inside Blackmaw Hold. Then, return them to Lorekeeper Nok at Ursolan.
    *Get to the Roots of It: Gather 10 Nordrassil Root Caps inside Blackmaw Hold for Nara Wildmane in Thunder Bluff.
    *Blackmaw Magic: Recover a Blackmaw Ritual Totem from Blackmaw Hold.
    .complete 92065,1 --Blackmaw Reclamation
    .complete 92066,1 --The Twin Bears
    .complete 92066,2 --The Twin Bears
    .complete 92343,1 --Get to the Roots of It
    .complete 97198,1 --Blackmaw Magic
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
    .goto 1456,75.65,31.61
    >>Talk to |cRXP_FRIENDLY_Nara Wildmane|r
    .turnin 92343 >>Turn in Get to the Roots of It
    .target Nara Wildmane
step
    .goto 1412,33.41,22.59
    >>Talk to |cRXP_FRIENDLY_Muln Earthfury|r
    .turnin 97198 >>Turn in Blackmaw Magic
    .target Muln Earthfury
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1447,42,38.88
    >>Talk to |cRXP_FRIENDLY_Ekkal|r
    .accept 96246 >>Accept Blackmaw Pouches
    .target Ekkal
step
    .goto 1447,34.87,24.25
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
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 50-60
#name 56-58 Western/Eastern Plaguelands
#displayname 56-58 Western/Eastern Plaguelands
#next 56-60 Dire Maul West
step
    #completewith next
    +|cRXP_WARN_On the way: lead-in quests in Tirisfal Glades that open quests in Western|r
step
    .goto 1420,83.29,72.34
    >>Talk to |cRXP_FRIENDLY_Mickey Levine|r
    .accept 5901 >>Accept A Plague Upon Thee
    .target Mickey Levine
step
    .zone 1422 >>Travel to Western
    *How: Fly to the Bulwark (Tirisfal); later Light's Hope Chapel.
    *Level for this part: 56-58. 92 quests, roughly 13 h.
step
    .goto 1423,35.07,21.34
    >>Collect |cRXP_LOOT_[Plagueland Termites]|r from |cRXP_PICK_Large Termite Mound|r
    *Use the Empty Termite Jar on the Termite Mounds in Eastern Plaguelands. After you've gathered 100 Plagueland Termites, return to Mickey Levine at the Bulwark in Tirisfal Glades.
    .complete 5901,1 --A Plague Upon Thee
step
    .goto 1420,83.29,72.34
    >>Talk to |cRXP_FRIENDLY_Mickey Levine|r
    .turnin 5901 >>Turn in A Plague Upon Thee
    .accept 5902 >>Accept A Plague Upon Thee
    .target Mickey Levine
step
    .goto 1422,48.34,31.99
    >>Click the |cRXP_PICK_Termite Barrel|r
    .turnin 5902 >>Turn in A Plague Upon Thee
    .accept 6390 >>Accept A Plague Upon Thee
step
    .goto 1422,51.92,28.06
    >>Talk to |cRXP_FRIENDLY_Kirsta Deepshadow|r
    .accept 6004 >>Accept Unfinished Business
    .target Kirsta Deepshadow
step
    .goto 1422,47.8,50.67
    >>Click the |cRXP_PICK_Mrs. Dalson's Diary|r
    .accept 5058 >>Accept Mrs. Dalson's Diary
step
    .goto 1422,47.35,49.63
    >>Click the |cRXP_PICK_Locked Cabinet|r
    .accept 5060 >>Accept Locked Away
step
    .goto 1422,47.8,50.67
    >>Click the |cRXP_PICK_Mrs. Dalson's Diary|r
    .turnin 5058 >>Turn in Mrs. Dalson's Diary
step
    .goto 1422,47.35,49.63
    >>Kill |cRXP_ENEMY_Scarlet Medic|r. Kill |cRXP_ENEMY_Scarlet Hunter|r. Collect |cRXP_LOOT_[Dalson Cabinet Key]|r from |cRXP_ENEMY_Farmer Dalson|r
    *Kill 2 Scarlet Medics, 2 Scarlet Hunters, 2 Scarlet Magi and 2 Scarlet Knights before returning to Kirsta Deepshadow in Western Plaguelands.
    .complete 6004,1 --Unfinished Business
    .complete 6004,2 --Unfinished Business
    .complete 5060,1 --Locked Away
    .mob Scarlet Medic
    .mob Scarlet Hunter
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
    .accept 5023 >>Accept Better Late Than Never
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
    .accept 4984 >>Accept The Wildlife Suffers Too
    .target Mulgris Deepriver
step
    .goto 1422,49.17,78.57
    >>Talk to |cRXP_FRIENDLY_Marlene Redpath|r
    .accept 5142 >>Accept Little Pamela
    .target Marlene Redpath
step
    .goto 1422,42.97,83.55
    >>Talk to |cRXP_FRIENDLY_Argent Officer Pureheart|r
    .accept 92842 >>Accept A Cousin Abroad
    .target Argent Officer Pureheart
step
    .goto 1422,42.97,83.55
    >>Talk to |cRXP_FRIENDLY_Argent Officer Pureheart|r
    .turnin 92842 >>Turn in A Cousin Abroad
    .target Argent Officer Pureheart
step
    .goto 1422,46.47,42.65
    >>Kill |cRXP_ENEMY_Scarlet Mage|r. Kill |cRXP_ENEMY_Scarlet Knight|r. Kill |cRXP_ENEMY_Diseased Wolf|r
    *Kill 2 Scarlet Medics, 2 Scarlet Hunters, 2 Scarlet Magi and 2 Scarlet Knights before returning to Kirsta Deepshadow in Western Plaguelands.
    *Destroy 8 Diseased Wolves, and then return to Mulgris Deepriver at the Writhing Haunt, Western Plaguelands.
    .complete 6004,3 --Unfinished Business
    .complete 6004,4 --Unfinished Business
    .complete 4984,1 --The Wildlife Suffers Too
    .mob Scarlet Mage
    .mob Scarlet Knight
    .mob Diseased Wolf
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
    .accept 6025 >>Accept Unfinished Business
    .target Kirsta Deepshadow
step
    .goto 1422,45.81,18.25
    >>Overlook Hearthglen from a high vantage point
    *Enter Hearthglen and find a high vantage point from which you can see the town and gauge the Scarlet Crusade's forces, then return to Kirsta Deepshadow in Western Plaguelands.
    .complete 6025,1 --Unfinished Business
step
    .goto 1422,51.92,28.06
    >>Talk to |cRXP_FRIENDLY_Kirsta Deepshadow|r
    .turnin 6025 >>Turn in Unfinished Business
    .target Kirsta Deepshadow
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
    .accept 4987 >>Accept Glyphed Oaken Branch
    .target Mulgris Deepriver
step
    .goto 1420,83.29,72.34
    >>Talk to |cRXP_FRIENDLY_Mickey Levine|r
    .turnin 6390 >>Turn in A Plague Upon Thee
    .target Mickey Levine
step
    .goto 1420,83.19,68.45
    >>Talk to |cRXP_FRIENDLY_Argent Officer Garush|r
    .accept 5405 >>Accept Argent Dawn Commission
    .accept 97319 >>Accept A Cousin Abroad
    .target Argent Officer Garush
step
    .goto 1420,83.26,68.14
    >>Talk to |cRXP_FRIENDLY_Argent Quartermaster Hasana|r
    .accept 5504 >>Accept Mantles of the Dawn
    .target Argent Quartermaster Hasana
step
    .goto 1420,83.19,68.45
    >>Talk to |cRXP_FRIENDLY_Argent Officer Garush|r
    .turnin 5405 >>Turn in Argent Dawn Commission
    .target Argent Officer Garush
step
    >>Collect |cRXP_LOOT_[Argent Dawn Valor Token]|r. Earn the required reputation
    *Bring 10 Argent Dawn Valor Tokens to Quartermaster Hasana at the Bulwark, Western Plaguelands.
    .complete 5504,1 --Mantles of the Dawn
    .complete 5504,2 --Mantles of the Dawn
step
    .goto 1420,83.26,68.14
    >>Talk to |cRXP_FRIENDLY_Argent Quartermaster Hasana|r
    .turnin 5504 >>Turn in Mantles of the Dawn
    .target Argent Quartermaster Hasana
step
    .goto 1458,69.79,43.16
    >>Talk to |cRXP_FRIENDLY_Royal Overseer Bauhaus|r
    .turnin 5023 >>Turn in Better Late Than Never
    .accept 5049 >>Accept The Jeremiah Blues
    .target Royal Overseer Bauhaus
step
    .goto 1458,67.6,44.16
    >>Talk to |cRXP_FRIENDLY_Jeremiah Payson|r
    .turnin 5049 >>Turn in The Jeremiah Blues
    .accept 5050 >>Accept Good Luck Charm
    .target Jeremiah Payson
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
    .accept 5152 >>Accept Auntie Marlene
    .accept 5241 >>Accept Uncle Carlin
    .target Pamela Redpath
step
    .goto 1423,22.9,72.96
    >>Click the |cRXP_PICK_Torn Scroll|r
    .accept 6024 >>Accept Hameya's Plea
step
    .goto 1423,22.23,63.51
    >>Talk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .accept 6144 >>Accept The Call to Command
    .accept 6022 >>Accept To Kill With Purpose
    .accept 6042 >>Accept Un-Life's Little Annoyances
    .accept 6133 >>Accept The Ranger Lord's Behest
    .target Nathanos Blightcaller
step
    >>Collect |cRXP_LOOT_[Coagulated Rot]|r
    *Travel to Corin's Crossing to the east and slaughter the Scourge that inhabit the town. Collect 7 pieces of Living Rot in under 10 minutes. Use the Mortar and Pestle to grind the Living Rot into Coagulated Rot.
    .complete 6022,1 --To Kill With Purpose
step
    .goto 1423,22.23,63.51
    >>Talk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .turnin 6022 >>Turn in To Kill With Purpose
    .target Nathanos Blightcaller
step
    .goto 1423,53.38,58.56
    >>Talk to |cRXP_FRIENDLY_Orthas|r
    .accept 84319 >>Accept Oh No Ye Don't!
    .target Orthas
step
    .goto 1423,58.31,50.2
    >>Kill |cRXP_ENEMY_Noxious Plaguebat|r
    *Slay 20 Noxious Plaguebats and 10 Monstrous Plaguebats. Return to Nathanos Blightcaller when you are finished.
    .complete 6042,1 --Un-Life's Little Annoyances
    .mob Noxious Plaguebat
step
    .goto 1423,69.93,53.72
    >>Talk to |cRXP_FRIENDLY_Caretaker Alen|r
    .accept 6021 >>Accept Zaeldarr the Outcast
    .accept 5281 >>Accept The Restless Souls
    .target Caretaker Alen
step
    .goto 1423,71.7,50.04
    >>Talk to |cRXP_FRIENDLY_Carlin Redpath|r
    .turnin 5241 >>Turn in Uncle Carlin
    .target Carlin Redpath
step
    .goto 1423,71.79,50.25
    >>Talk to |cRXP_FRIENDLY_Quartermaster Miranda Breechlock|r
    .accept 9223 >>Accept Superior Armaments of Battle - Honored Amongst the Dawn
    .accept 5517 >>Accept Chromatic Mantle of the Dawn
    .target Quartermaster Miranda Breechlock
step
    .goto 1423,71.7,50.04
    >>Talk to |cRXP_FRIENDLY_Carlin Redpath|r
    .accept 5211 >>Accept Defenders of Darrowshire
    .target Carlin Redpath
step
    .goto 1423,70.88,48.43
    >>Talk to |cRXP_FRIENDLY_Smokey LaRue|r
    .accept 6026 >>Accept That's Asking A Lot
    .target Smokey LaRue
step
    .goto 1423,71.7,48.69
    >>Talk to |cRXP_FRIENDLY_Archmage Angela Dosantos|r
    .accept 9121 >>Accept The Dread Citadel - Naxxramas
    .target Archmage Angela Dosantos
step
    .goto 1423,71.69,48.94
    >>Talk to |cRXP_FRIENDLY_Huntsman Leopold|r
    .accept 9124 >>Accept Cryptstalker Armor Doesn't Make Itself...
    .target Huntsman Leopold
step
    .goto 1423,71.62,48.91
    >>Talk to |cRXP_FRIENDLY_Rohan the Assassin|r
    .accept 9126 >>Accept Bonescythe Digs
    .target Rohan the Assassin
step
    >>Collect |cRXP_LOOT_[Insignia of the Dawn]|r. Collect |cRXP_LOOT_[Insignia of the Crusade]|r. Collect |cRXP_LOOT_[Argent Dawn Valor Token]|r. Earn the required reputation. Kill |cRXP_ENEMY_Darrowshire Spirit|r. Collect |cRXP_LOOT_[Thorium Bar]|r. Collect |cRXP_LOOT_[Golden Rod]|r. Collect |cRXP_LOOT_[Hi-Explosive Bomb]|r. Collect |cRXP_LOOT_[Unstable Trigger]|r. Collect |cRXP_LOOT_[Nexus Crystal]|r. Collect |cRXP_LOOT_[Righteous Orb]|r from |cRXP_ENEMY_Crimson Guardsman|r, |cRXP_ENEMY_Crimson Conjuror|r, |cRXP_ENEMY_Crimson Initiate|r
    *For 20 Insignias of the Dawn and 20 Insignias of the Crusade you may choose an item from the Argent Dawn's treasure cache.
    *Bring 25 Argent Dawn Valor Tokens to Quartermaster Breechlock at Light's Hope Chapel, Eastern Plaguelands.
    *Free 15 Darrowshire Spirits and return to Carlin Redpath.
    *Smokey LaRue wants you to get 2 Thorium Bars, 1 Golden Rod, 8 Hi-Explosive Bombs, and 8 Unstable Triggers.
    *Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands wants 5 Arcane Crystals, 2 Nexus Crystals, 1 Righteous Orb and 60 gold pieces. You must also be Honored with the Argent Dawn.
    .complete 9223,1 --Superior Armaments of Battle - Honored Amongst the Dawn
    .complete 9223,2 --Superior Armaments of Battle - Honored Amongst the Dawn
    .complete 5517,1 --Chromatic Mantle of the Dawn
    .complete 5517,2 --Chromatic Mantle of the Dawn
    .complete 5211,1 --Defenders of Darrowshire
    .complete 6026,1 --That's Asking A Lot
    .complete 6026,2 --That's Asking A Lot
    .complete 6026,3 --That's Asking A Lot
    .complete 6026,4 --That's Asking A Lot
    .complete 9121,2 --The Dread Citadel - Naxxramas
    .complete 9121,3 --The Dread Citadel - Naxxramas
    .complete 9121,4 --The Dread Citadel - Naxxramas
    .mob Darrowshire Spirit
    .mob Crimson Guardsman
    .mob Crimson Conjuror
step
    .goto 1423,71.79,50.25
    >>Talk to |cRXP_FRIENDLY_Quartermaster Miranda Breechlock|r
    .turnin 9223 >>Turn in Superior Armaments of Battle - Honored Amongst the Dawn
    .turnin 5517 >>Turn in Chromatic Mantle of the Dawn
    .target Quartermaster Miranda Breechlock
step
    .goto 1423,71.7,50.04
    >>Talk to |cRXP_FRIENDLY_Carlin Redpath|r
    .turnin 5211 >>Turn in Defenders of Darrowshire
    .target Carlin Redpath
step
    .goto 1423,70.88,48.43
    >>Talk to |cRXP_FRIENDLY_Smokey LaRue|r
    .turnin 6026 >>Turn in That's Asking A Lot
    .accept 6041 >>Accept When Smokey Sings, I Get Violent
    .target Smokey LaRue
step
    .goto 1423,71.7,48.69
    >>Talk to |cRXP_FRIENDLY_Archmage Angela Dosantos|r
    .accept 9128 >>Accept The Elemental Equation
    .target Archmage Angela Dosantos
step
    .goto 1423,71.95,48.52
    >>Talk to |cRXP_FRIENDLY_Korfax, Champion of the Light|r
    .accept 9131 >>Accept Binding the Dreadnaught
    .target Korfax, Champion of the Light
step
    .goto 1423,71.41,49.35
    >>Talk to |cRXP_FRIENDLY_Rayne|r
    .accept 9136 >>Accept Savage Flora
    .target Rayne
step
    .goto 1423,44.81,31.04
    >>Kill |cRXP_ENEMY_Monstrous Plaguebat|r
    *Slay 20 Noxious Plaguebats and 10 Monstrous Plaguebats. Return to Nathanos Blightcaller when you are finished.
    .complete 6042,2 --Un-Life's Little Annoyances
    .mob Monstrous Plaguebat
step
    .goto 1423,46.69,13.18
    >>Kill |cRXP_ENEMY_Pathstrider|r. Kill |cRXP_ENEMY_Ranger|r. Kill |cRXP_ENEMY_Woodsman|r. Collect |cRXP_LOOT_[Quel'Thalas Registry]|r from |cRXP_PICK_Quel'Thalas Registry|r
    *Travel to the northern borders of the Eastern Plaguelands and recover the Quel'Thalas Registry. The item is somewhere in the Quel'Lithien lodge.
    .complete 6133,1 --The Ranger Lord's Behest
    .complete 6133,2 --The Ranger Lord's Behest
    .complete 6133,3 --The Ranger Lord's Behest
    .complete 6133,4 --The Ranger Lord's Behest
    .mob Pathstrider
    .mob Ranger
    .mob Woodsman
step
    .goto 1423,61.96,11.11
    >>Collect |cRXP_LOOT_[Hameya's Key]|r from |cRXP_ENEMY_Infiltrator Hameya|r
    *Kill Infiltrator Hameya. Use his key on the Mound of Dirt behind the Undercroft.
    .complete 6024,1 --Hameya's Plea
    .mob Infiltrator Hameya
step
    .goto 1423,27.08,23.27
    >>Collect |cRXP_LOOT_[Partially-Digested Plate Armor]|r from |cRXP_ENEMY_Stitched Horror|r, |cRXP_ENEMY_Abomination|r. Kill |cRXP_ENEMY_Scourge Structure|r
    *Orthas needs you to recover his missing armor from the corpse of an Abomination somewhere in Plaguewood.
    *Travel to Plaguewood, northwest of Light's Hope. Destroy 8 Scourge Structures by using Smokey's Special Compound at the Mark of Detonation planted inside each building. Smokey has had the Ziggurats and Slaughterhouses marked.
    .complete 84319,1 --Oh No Ye Don't!
    .complete 6041,1 --When Smokey Sings, I Get Violent
    .mob Stitched Horror
    .mob Abomination
    .mob Scourge Structure
step
    .goto 1423,11.36,26.6
    >>Talk to |cRXP_FRIENDLY_Egan|r
    .turnin 5281 >>Turn in The Restless Souls
    .target Egan
step
    .goto 1423,11.36,26.37
    >>Talk to |cRXP_FRIENDLY_Augustus the Touched|r
    .accept 6164 >>Accept Augustus' Receipt Book
    .target Augustus the Touched
step
    .goto 1423,8.85,28.03
    >>Collect |cRXP_LOOT_[Crypt Fiend Parts]|r from |cRXP_ENEMY_Crypt Fiend|r, |cRXP_ENEMY_Crypt Walker|r, |cRXP_ENEMY_Crypt Horror|r. Collect |cRXP_LOOT_[Augustus' Receipt Book]|r from |cRXP_PICK_Augustus' Receipt Book|r
    *Huntsman Leopold at Light's Hope Chapel in the Eastern Plaguelands wants 30 Crypt Fiend Parts.
    *Bring Augustus' Receipt Book to Augustus the Touched in Terrordale.
    .complete 9124,1 --Cryptstalker Armor Doesn't Make Itself...
    .complete 6164,1 --Augustus' Receipt Book
    .mob Crypt Fiend
    .mob Crypt Walker
step
    .goto 1423,11.36,26.37
    >>Talk to |cRXP_FRIENDLY_Augustus the Touched|r
    .turnin 6164 >>Turn in Augustus' Receipt Book
    .target Augustus the Touched
step
    .goto 1423,5.16,35.57
    >>Talk to |cRXP_FRIENDLY_Tirion Fordring|r
    .accept 5542 >>Accept Demon Dogs
    .target Tirion Fordring
step
    .goto 1423,17.43,56.35
    >>Kill |cRXP_ENEMY_Plaguehound Runt|r
    *Slay 20 Plaguehound Runts, 5 Plaguehounds and 5 Frenzied Plaguehounds. Return to Tirion Fordring when the task is complete.
    .complete 5542,1 --Demon Dogs
    .mob Plaguehound Runt
step
    .goto 1423,22.23,63.51
    >>Talk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .turnin 6042 >>Turn in Un-Life's Little Annoyances
    .turnin 6133 >>Turn in The Ranger Lord's Behest
    .accept 6135 >>Accept Duskwing, Oh How I Hate Thee...
    .target Nathanos Blightcaller
step
    .goto 1423,26.08,59.03
    >>Collect |cRXP_LOOT_[Patch of Duskwing's Fur]|r from |cRXP_ENEMY_Duskwing|r
    *Find Duskwing and slay him. From the corpse, recover a Patch of Duskwing's Fur and return it to Nathanos Blightcaller.
    .complete 6135,1 --Duskwing, Oh How I Hate Thee...
    .mob Duskwing
step
    .goto 1423,22.23,63.51
    >>Talk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .turnin 6135 >>Turn in Duskwing, Oh How I Hate Thee...
    .target Nathanos Blightcaller
step
    .goto 1423,23.58,73.79
    >>Click the |cRXP_PICK_Mound of Dirt|r
    .turnin 6024 >>Turn in Hameya's Plea
step
    .goto 1423,23.07,72.63
    >>Collect |cRXP_LOOT_[Zaeldarr's Head]|r from |cRXP_ENEMY_Zaeldarr the Outcast|r
    *Bring Zaeldarr's Head to Caretaker Alen at Light's Hope Chapel.
    .complete 6021,1 --Zaeldarr the Outcast
    .mob Zaeldarr the Outcast
step
    .goto 1423,53.38,58.56
    >>Talk to |cRXP_FRIENDLY_Orthas|r
    .turnin 84319 >>Turn in Oh No Ye Don't!
    .target Orthas
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
    .goto 1423,50.92,11.48
    >>Talk to |cRXP_FRIENDLY_Adon|r
    .accept 97988 >>Accept Orgrimmar's Windshapers
    .target Adon
step
    .goto 1423,71.69,48.94
    >>Talk to |cRXP_FRIENDLY_Huntsman Leopold|r
    .turnin 9124 >>Turn in Cryptstalker Armor Doesn't Make Itself...
    .target Huntsman Leopold
step
    .goto 1423,70.88,48.43
    >>Talk to |cRXP_FRIENDLY_Smokey LaRue|r
    .turnin 6041 >>Turn in When Smokey Sings, I Get Violent
    .target Smokey LaRue
step
    .goto 1423,71.28,48.04
    >>Talk to |cRXP_FRIENDLY_Dispatch Commander Metz|r
    .accept 9141 >>Accept They Call Me "The Rooster"
    .target Dispatch Commander Metz
step
    .goto 1423,70.37,47.94
    >>Talk to |cRXP_FRIENDLY_Emmisary Gormok|r
    .accept 9665 >>Accept Bolstering Our Defenses
    .target Emmisary Gormok
step
    .goto 1423,70.88,48.21
    >>Talk to |cRXP_FRIENDLY_Argent Medic|r
    .accept 97986 >>Accept Argent Arbiter
    .target Argent Medic
step
    .goto 1423,70.88,48.21
    >>Talk to |cRXP_FRIENDLY_Argent Medic|r
    .turnin 97986 >>Turn in Argent Arbiter
    .target Argent Medic
step
    >>Collect |cRXP_LOOT_[Argent Dawn Valor Token]|r
    *Dispatch Commander Metz at Light's Hope Chapel in the Eastern Plaguelands wants an Argent Dawn Valor Token.
    .complete 9141,1 --They Call Me "The Rooster"
step
    .goto 1423,71.28,48.04
    >>Talk to |cRXP_FRIENDLY_Dispatch Commander Metz|r
    .turnin 9141 >>Turn in They Call Me "The Rooster"
    .target Dispatch Commander Metz
step
    .goto 1423,69.93,53.72
    >>Talk to |cRXP_FRIENDLY_Caretaker Alen|r
    .turnin 6021 >>Turn in Zaeldarr the Outcast
    .target Caretaker Alen
step
    .goto 1423,34.09,64.1
    >>Kill |cRXP_ENEMY_<TXT>Crown Guard Capture Quest Doodad|r
    *Capture Crown Guard Tower, Eastwall Tower, Northpass Tower and Plaguewood Tower in the Eastern Plaguelands, then return to Emmisary Gormok at Light's Hope Chapel.
    .complete 9665,1 --Bolstering Our Defenses
    .mob <TXT>Crown Guard Capture Quest Doodad
step
    .goto 1423,59.04,39.41
    >>Kill |cRXP_ENEMY_<TXT>Eastwall Capture Quest Doodad|r
    *Capture Crown Guard Tower, Eastwall Tower, Northpass Tower and Plaguewood Tower in the Eastern Plaguelands, then return to Emmisary Gormok at Light's Hope Chapel.
    .complete 9665,2 --Bolstering Our Defenses
    .mob <TXT>Eastwall Capture Quest Doodad
step
    .goto 1423,49.25,18.2
    >>Kill |cRXP_ENEMY_<TXT>Northpass Capture Quest Doodad|r
    *Capture Crown Guard Tower, Eastwall Tower, Northpass Tower and Plaguewood Tower in the Eastern Plaguelands, then return to Emmisary Gormok at Light's Hope Chapel.
    .complete 9665,3 --Bolstering Our Defenses
    .mob <TXT>Northpass Capture Quest Doodad
step
    .goto 1423,18.16,25.06
    >>Kill |cRXP_ENEMY_<TXT>Plaguewood Capture Quest Doodad|r
    *Capture Crown Guard Tower, Eastwall Tower, Northpass Tower and Plaguewood Tower in the Eastern Plaguelands, then return to Emmisary Gormok at Light's Hope Chapel.
    .complete 9665,4 --Bolstering Our Defenses
    .mob <TXT>Plaguewood Capture Quest Doodad
step
    .goto 1423,5.16,35.57
    >>Talk to |cRXP_FRIENDLY_Tirion Fordring|r
    .turnin 5542 >>Turn in Demon Dogs
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
    .goto 1423,70.37,47.94
    >>Talk to |cRXP_FRIENDLY_Emmisary Gormok|r
    .turnin 9665 >>Turn in Bolstering Our Defenses
    .target Emmisary Gormok
step
    .goto 1423,5.16,35.57
    >>Talk to |cRXP_FRIENDLY_Tirion Fordring|r
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
    .goto 1423,62.53,26.81
    >>Collect |cRXP_LOOT_[Symbol of Lost Honor]|r from |cRXP_PICK_Symbol of Lost Honor|r
    *Travel to Northdale, in the northeastern region of the Eastern Plaguelands, and recover the Symbol of Lost Honor. Return to Tirion Fordring upon completion of your objective.
    .complete 5845,1 --Of Lost Honor
step
    .goto 1423,5.16,35.57
    >>Talk to |cRXP_FRIENDLY_Tirion Fordring|r
    .turnin 5845 >>Turn in Of Lost Honor
    .accept 5846 >>Accept Of Love and Family
    .target Tirion Fordring
step
    .goto 1456,75.65,31.61
    >>Talk to |cRXP_FRIENDLY_Nara Wildmane|r
    .turnin 4987 >>Turn in Glyphed Oaken Branch
    .target Nara Wildmane
step
    .goto 2482,79.94,70.69
    >>Talk to |cRXP_FRIENDLY_Thark Gorax|r
    .turnin 97319 >>Turn in A Cousin Abroad
    .target Thark Gorax
step
    .goto 1422,38.4,54.05
    >>Talk to |cRXP_FRIENDLY_Janice Felstone|r
    .turnin 5050 >>Turn in Good Luck Charm
    .accept 5051 >>Accept Two Halves Become One
    .target Janice Felstone
step
    .goto 1422,38.4,54.05
    >>Collect |cRXP_LOOT_[Bone Fragments]|r from |cRXP_ENEMY_Skeletal Flayer|r, |cRXP_ENEMY_Skeletal Sorcerer|r, |cRXP_ENEMY_Skeletal Terror|r. Collect |cRXP_LOOT_[Good Luck Charm]|r
    *Rohan the Assassin at Light's Hope Chapel in the Eastern Plaguelands wants 30 Bone Fragments.
    *Locate the other half of the Good Luck Charm somewhere on the Felstone Farm in Western Plaguelands and reassemble it.
    .complete 9126,1 --Bonescythe Digs
    .complete 5051,1 --Two Halves Become One
    .mob Skeletal Flayer
    .mob Skeletal Sorcerer
step
    .goto 1422,38.4,54.05
    >>Talk to |cRXP_FRIENDLY_Janice Felstone|r
    .turnin 5051 >>Turn in Two Halves Become One
    .target Janice Felstone
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
    .goto 1422,65.77,75.37
    >>Talk to |cRXP_FRIENDLY_Artist Renfray|r
    .turnin 5846 >>Turn in Of Love and Family
    .target Artist Renfray
step
    .goto 1422,64.85,36.55
    >>Collect |cRXP_LOOT_[Arcane Crystal]|r from |cRXP_PICK_Small Thorium Vein|r, |cRXP_PICK_Ooze Covered Thorium Vein|r
    *Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands wants 5 Arcane Crystals, 2 Nexus Crystals, 1 Righteous Orb and 60 gold pieces. You must also be Honored with the Argent Dawn.
    .complete 9121,1 --The Dread Citadel - Naxxramas
step
    .goto 1458,56.25,92.2
    >>Talk to |cRXP_FRIENDLY_Varimathras|r
    .turnin 6144 >>Turn in The Call to Command
    .accept 6145 >>Accept The Crimson Courier
    .target Varimathras
step
    .goto 1423,71.7,48.69
    >>Talk to |cRXP_FRIENDLY_Archmage Angela Dosantos|r
    .turnin 9121 >>Turn in The Dread Citadel - Naxxramas
    .target Archmage Angela Dosantos
step
    .goto 1423,71.62,48.91
    >>Talk to |cRXP_FRIENDLY_Rohan the Assassin|r
    .turnin 9126 >>Turn in Bonescythe Digs
    .target Rohan the Assassin
step
    .goto 1423,71.7,50.04
    >>Talk to |cRXP_FRIENDLY_Carlin Redpath|r
    .turnin 5210 >>Turn in Brother Carlin
    .accept 5168 >>Accept Heroes of Darrowshire
    .accept 5181 >>Accept Villains of Darrowshire
    .target Carlin Redpath
step
    .goto 1423,51.39,30.59
    >>Collect |cRXP_LOOT_[The Grand Crusader's Command]|r from |cRXP_ENEMY_Crimson Courier|r
    *Return to Eastern Plaguelands and track down the Crimson Courier. Kill the Courier and recover the Grand Crusader's Command.
    .complete 6145,1 --The Crimson Courier
    .mob Crimson Courier
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
step
    .goto 1423,22.23,63.51
    >>Talk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .turnin 6145 >>Turn in The Crimson Courier
    .accept 6146 >>Accept Nathanos' Ruse
    .target Nathanos Blightcaller
step
    >>Collect |cRXP_LOOT_[The Grand Crusader's Command]|r
    *Travel to Tyr's Hand, southeast of the Marris Stead. Once there, take a bite of the Rotten Apple. While under the guise of the Scarlet Crusade, deliver the Grand Crusader's Command to Crusader Lord Valdelmar.
    .complete 6146,1 --Nathanos' Ruse
step
    .goto 1423,75.21,71.17
    >>Talk to |cRXP_FRIENDLY_Crusader Lord Valdelmar|r
    .turnin 6146 >>Turn in Nathanos' Ruse
    .accept 6147 >>Accept Return to Nathanos
    .target Crusader Lord Valdelmar
step
    .goto 1423,22.23,63.51
    >>Talk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .turnin 6147 >>Turn in Return to Nathanos
    .target Nathanos Blightcaller
step
    .goto 1454,38.1,39.01
    >>Talk to |cRXP_FRIENDLY_Corswyn Aseril|r
    .turnin 97988 >>Turn in Orgrimmar's Windshapers
    .target Corswyn Aseril
step
    .goto 1454,37.56,75.36
    >>Talk to |cRXP_FRIENDLY_Warcaller Gorlach|r
    .accept 5093 >>Accept A Call to Arms: The Plaguelands!
    .target Warcaller Gorlach
step
    .goto 1420,83.13,68.94
    >>Talk to |cRXP_FRIENDLY_High Executor Derrington|r
    .turnin 5093 >>Turn in A Call to Arms: The Plaguelands!
    .accept 5096 >>Accept Scarlet Diversions
    .target High Executor Derrington
step
    .goto 1420,83.13,68.94
    >>Talk to |cRXP_FRIENDLY_High Executor Derrington|r
    .turnin 5096 >>Turn in Scarlet Diversions
    .accept 5228 >>Accept The Scourge Cauldrons
    .accept 5098 >>Accept All Along the Watchtowers
    .target High Executor Derrington
step
    .goto 1420,83.04,71.91
    >>Talk to |cRXP_FRIENDLY_Shadow Priestess Vandis|r
    .turnin 5228 >>Turn in The Scourge Cauldrons
    .accept 5229 >>Accept Target: Felstone Field
    .target Shadow Priestess Vandis
step
    >>Collect |cRXP_LOOT_[Felstone Field Cauldron Key]|r from |cRXP_ENEMY_Cauldron Lord Bilemaw|r
    *Go to Felstone Field in Western Plaguelands to locate and defeat the Cauldron Lord present there. It may have a key that will allow access to the cauldron. You must have the Empty Felstone Field Bottle with you to secure a sample of the poisons used inside the cauldron.
    .complete 5229,1 --Target: Felstone Field
    .mob Cauldron Lord Bilemaw
step
    .goto 1422,37.25,56.78
    >>Click the |cRXP_PICK_Scourge Cauldron|r
    .turnin 5229 >>Turn in Target: Felstone Field
    .accept 5230 >>Accept Return to the Bulwark
step
    .goto 1422,40.05,71.6
    >>Kill |cRXP_ENEMY_Andorhal Tower One|r. Kill |cRXP_ENEMY_Andorhal Tower Two|r. Kill |cRXP_ENEMY_Andorhal Tower Four|r
    *Using the Beacon Torch, mark each tower in Andorhal; you will need to stand in the doorway of the tower to successfully mark it.
    .complete 5098,1 --All Along the Watchtowers
    .complete 5098,2 --All Along the Watchtowers
    .complete 5098,4 --All Along the Watchtowers
    .mob Andorhal Tower One
    .mob Andorhal Tower Two
    .mob Andorhal Tower Four
step
    .goto 1422,44.3,63.25
    >>Kill |cRXP_ENEMY_Andorhal Tower Three|r
    *Using the Beacon Torch, mark each tower in Andorhal; you will need to stand in the doorway of the tower to successfully mark it.
    .complete 5098,3 --All Along the Watchtowers
    .mob Andorhal Tower Three
step
    .goto 1422,42.52,18.99
    >>Collect |cRXP_LOOT_[Davil's Libram]|r from |cRXP_PICK_Davil's Libram|r
    *Bring Davil's Libram and Redpath's Shield to Carlin Redpath.
    .complete 5168,1 --Heroes of Darrowshire
step
    .goto 1422,63.79,57.19
    >>Collect |cRXP_LOOT_[Redpath's Shield]|r from |cRXP_PICK_Redpath's Shield|r
    *Bring Davil's Libram and Redpath's Shield to Carlin Redpath.
    .complete 5168,2 --Heroes of Darrowshire
step
    .goto 1423,71.7,50.04
    >>Talk to |cRXP_FRIENDLY_Carlin Redpath|r
    .turnin 5168 >>Turn in Heroes of Darrowshire
    .accept 5206 >>Accept Marauders of Darrowshire
    .target Carlin Redpath
step
    >>Collect |cRXP_LOOT_[Resonating Skull]|r
    *Bring 5 Resonating Skulls and the Mystic Crystal to Carlin Redpath in Eastern Plaguelands.
    .complete 5206,1 --Marauders of Darrowshire
step
    .goto 1423,71.7,50.04
    >>Talk to |cRXP_FRIENDLY_Carlin Redpath|r
    .turnin 5206 >>Turn in Marauders of Darrowshire
    .accept 5941 >>Accept Return to Chromie
    .target Carlin Redpath
step
    .goto 1420,83.13,68.94
    >>Talk to |cRXP_FRIENDLY_High Executor Derrington|r
    .turnin 5098 >>Turn in All Along the Watchtowers
    .accept 838 >>Accept Scholomance
    .accept 105 >>Accept Alas, Andorhal
    .target High Executor Derrington
step
    .goto 1420,83.28,69.23
    >>Talk to |cRXP_FRIENDLY_Apothecary Dithers|r
    .turnin 838 >>Turn in Scholomance
    .accept 964 >>Accept Skeletal Fragments
    .target Apothecary Dithers
step
    >>Collect |cRXP_LOOT_[Araj's Phylactery Shard]|r from |cRXP_PICK_Araj's Phylactery|r
    *Bring Araj's Phylactery Shard to High Executor Derrington at the Bulwark, Western Plaguelands.
    .complete 105,1 --Alas, Andorhal
step
    .goto 1420,83.13,68.94
    >>Talk to |cRXP_FRIENDLY_High Executor Derrington|r
    .turnin 105 >>Turn in Alas, Andorhal
    .target High Executor Derrington
step
    .goto 1420,83.04,71.91
    >>Talk to |cRXP_FRIENDLY_Shadow Priestess Vandis|r
    .turnin 5230 >>Turn in Return to the Bulwark
    .accept 5231 >>Accept Target: Dalson's Tears
    .target Shadow Priestess Vandis
step
    >>Collect |cRXP_LOOT_[Dalson's Tears Cauldron Key]|r from |cRXP_ENEMY_Cauldron Lord Malvinious|r
    *Go to Dalson's Tears in Western Plaguelands to locate and defeat the Cauldron Lord present there, and use its key to gain access to the cauldron. You must have the Empty Dalson's Tears Bottle with you to secure a sample of the poisons used inside the cauldron.
    .complete 5231,1 --Target: Dalson's Tears
    .mob Cauldron Lord Malvinious
step
    .goto 1422,39.46,66.76
    >>Talk to |cRXP_FRIENDLY_Chromie|r
    .turnin 5941 >>Turn in Return to Chromie
    .accept 5721 >>Accept The Battle of Darrowshire
    .target Chromie
step
    .goto 1422,39.46,66.76
    >>Collect |cRXP_LOOT_[Skeletal Fragments]|r from |cRXP_ENEMY_Skeletal Magelord|r, |cRXP_ENEMY_Skeletal Sorcerer|r, |cRXP_ENEMY_Skeletal Terror|r. Kill |cRXP_ENEMY_Joseph Redpath|r
    *Bring 15 Skeletal Fragments to Apothecary Dithers at the Bulwark, Western Plaguelands.
    *Place the Relic Bundle at the Darrowshire town square.
    .complete 964,1 --Skeletal Fragments
    .complete 5721,1 --The Battle of Darrowshire
    .mob Skeletal Magelord
    .mob Skeletal Sorcerer
    .mob Joseph Redpath
step
    .goto 1422,46.18,51.9
    >>Click the |cRXP_PICK_Scourge Cauldron|r
    .turnin 5231 >>Turn in Target: Dalson's Tears
    .accept 5232 >>Accept Return to the Bulwark
step
    .goto 1420,83.28,69.23
    >>Talk to |cRXP_FRIENDLY_Apothecary Dithers|r
    .turnin 964 >>Turn in Skeletal Fragments
    .accept 5514 >>Accept Mold Rhymes With...
    .target Apothecary Dithers
step
    .goto 1420,83.04,71.91
    >>Talk to |cRXP_FRIENDLY_Shadow Priestess Vandis|r
    .turnin 5232 >>Turn in Return to the Bulwark
    .accept 5233 >>Accept Target: Writhing Haunt
    .target Shadow Priestess Vandis
step
    >>Collect |cRXP_LOOT_[Writhing Haunt Cauldron Key]|r from |cRXP_ENEMY_Cauldron Lord Razarch|r
    *Go to the Writhing Haunt in Western Plaguelands to locate and defeat the Cauldron Lord present there, and use its key to gain access to the cauldron. You must have the Empty Writhing Haunt Bottle with you to secure a sample of the poisons used inside the cauldron.
    .complete 5233,1 --Target: Writhing Haunt
    .mob Cauldron Lord Razarch
step
    .goto 1423,31.15,77.98
    >>Talk to |cRXP_FRIENDLY_Pamela Redpath|r
    .turnin 5721 >>Turn in The Battle of Darrowshire
    .accept 5942 >>Accept Hidden Treasures
    .target Pamela Redpath
step
    .goto 1423,30.92,77.78
    >>Click the |cRXP_PICK_Joseph's Chest|r
    .turnin 5942 >>Turn in Hidden Treasures
step
    .goto 1446,51.46,28.81
    >>Talk to |cRXP_FRIENDLY_Krinkle Goodsteel|r
    .turnin 5514 >>Turn in Mold Rhymes With...
    .accept 5802 >>Accept Fire Plume Forged
    .target Krinkle Goodsteel
step
    >>Collect |cRXP_LOOT_[Unfinished Skeleton Key]|r
    *Take the Skeleton Key Mold and 2 Thorium Bars to the top of Fire Plume Ridge in Un'Goro Crater. Use the Skeleton Key Mold by the lava lake to forge the Unfinished Skeleton Key.
    .complete 5802,1 --Fire Plume Forged
step
    .goto 1420,83.28,69.23
    >>Talk to |cRXP_FRIENDLY_Apothecary Dithers|r
    .turnin 5802 >>Turn in Fire Plume Forged
    .accept 5804 >>Accept Araj's Scarab
    .target Apothecary Dithers
step
    >>Collect |cRXP_LOOT_[Araj's Scarab]|r from |cRXP_PICK_Araj's Phylactery|r
    *Destroy Araj the Summoner and bring Araj's Scarab to Apothecary Dithers at the Bulwark, Western Plaguelands.
    .complete 5804,1 --Araj's Scarab
step
    .goto 1420,83.28,69.23
    >>Talk to |cRXP_FRIENDLY_Apothecary Dithers|r
    .turnin 5804 >>Turn in Araj's Scarab
    .target Apothecary Dithers
step
    .goto 1420,83.13,68.94
    >>Talk to |cRXP_FRIENDLY_High Executor Derrington|r
    .accept 5511 >>Accept The Key to Scholomance
    .target High Executor Derrington
step
    .goto 1420,83.13,68.94
    >>Talk to |cRXP_FRIENDLY_High Executor Derrington|r
    .turnin 5511 >>Turn in The Key to Scholomance
    .target High Executor Derrington
step
    .goto 1422,53.02,65.61
    >>Click the |cRXP_PICK_Scourge Cauldron|r
    .turnin 5233 >>Turn in Target: Writhing Haunt
    .accept 5234 >>Accept Return to the Bulwark
step
    .goto 1420,83.04,71.91
    >>Talk to |cRXP_FRIENDLY_Shadow Priestess Vandis|r
    .turnin 5234 >>Turn in Return to the Bulwark
    .accept 5235 >>Accept Target: Gahrron's Withering
    .target Shadow Priestess Vandis
step
    >>Collect |cRXP_LOOT_[Gahrron's Withering Cauldron Key]|r from |cRXP_ENEMY_Cauldron Lord Soulwrath|r
    *Go to Gahrron's Withering in Western Plaguelands to locate and defeat the Cauldron Lord present there, and use its key to gain access to the cauldron. You must have the Empty Gahrron's Withering Bottle with you to secure a sample of the poisons used inside the cauldron.
    .complete 5235,1 --Target: Gahrron's Withering
    .mob Cauldron Lord Soulwrath
step
    .goto 1422,62.54,58.47
    >>Click the |cRXP_PICK_Scourge Cauldron|r
    .turnin 5235 >>Turn in Target: Gahrron's Withering
    .accept 5236 >>Accept Return to the Bulwark
step
    .goto 1420,83.04,71.91
    >>Talk to |cRXP_FRIENDLY_Shadow Priestess Vandis|r
    .turnin 5236 >>Turn in Return to the Bulwark
    .target Shadow Priestess Vandis
step
    .goto 1420,83.13,68.94
    >>Talk to |cRXP_FRIENDLY_High Executor Derrington|r
    .accept 5237 >>Accept Mission Accomplished!
    .target High Executor Derrington
step
    .goto 1420,83.13,68.94
    >>Talk to |cRXP_FRIENDLY_High Executor Derrington|r
    .turnin 5237 >>Turn in Mission Accomplished!
    .target High Executor Derrington
step
    .goto 1449,50.39,48.4
    >>Collect |cRXP_LOOT_[Core of Elements]|r from |cRXP_ENEMY_Scorching Elemental|r, |cRXP_ENEMY_Living Blaze|r, |cRXP_ENEMY_Obsidian Elemental|r
    *Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands wants 30 Core of Elements.
    .complete 9128,1 --The Elemental Equation
    .mob Scorching Elemental
    .mob Living Blaze
step
    .goto 1449,66.96,30.14
    >>Collect |cRXP_LOOT_[Savage Frond]|r from |cRXP_ENEMY_Cursed Sycamore|r, |cRXP_ENEMY_Bloodpetal Lasher|r, |cRXP_ENEMY_Bloodpetal Flayer|r
    *Rayne at Light's Hope Chapel in the Eastern Plaguelands wants 30 Savage Fronds.
    .complete 9136,1 --Savage Flora
    .mob Cursed Sycamore
    .mob Bloodpetal Lasher
step
    .goto 1423,71.7,48.69
    >>Talk to |cRXP_FRIENDLY_Archmage Angela Dosantos|r
    .turnin 9128 >>Turn in The Elemental Equation
    .target Archmage Angela Dosantos
step
    .goto 1423,71.41,49.35
    >>Talk to |cRXP_FRIENDLY_Rayne|r
    .turnin 9136 >>Turn in Savage Flora
    .target Rayne
step
    .goto 1427,42.99,36.43
    >>Collect |cRXP_LOOT_[Dark Iron Scraps]|r from |cRXP_ENEMY_Dark Iron Steamsmith|r, |cRXP_ENEMY_Dark Iron Slaver|r, |cRXP_ENEMY_Dark Iron Taskmaster|r
    *Korfax at Light's Hope Chapel in the Eastern Plaguelands wants 30 Dark Iron Scraps.
    .complete 9131,1 --Binding the Dreadnaught
    .mob Dark Iron Steamsmith
    .mob Dark Iron Slaver
step
    .goto 1423,71.95,48.52
    >>Talk to |cRXP_FRIENDLY_Korfax, Champion of the Light|r
    .turnin 9131 >>Turn in Binding the Dreadnaught
    .target Korfax, Champion of the Light
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 50-60
#name 56-60 Dire Maul West
#displayname 56-60 Dire Maul West
#next 56-60 Dire Maul North
step
    +|cRXP_WARN_Dire Maul West|r (levels 56-60). Pick up 10 dungeon quests solo (roughly 10 min with the hand-ins), then ONE run with a group (roughly 2 h). No group needed until the run step. Click to start.
    *Door: West wall of the central courtyard. Needs the Crescent Key (Pusillin, Dire Maul East).
    *East 54-60, West 56-60, North 56-60.
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1444,75.24,43.76
    >>Talk to |cRXP_FRIENDLY_Sage Korolusk|r
    .accept 7481 >>Accept Elven Legends
    .target Sage Korolusk
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
    .goto 1444,75.24,43.76
    >>Talk to |cRXP_FRIENDLY_Sage Korolusk|r
    .turnin 7481 >>Turn in Elven Legends
    .target Sage Korolusk
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in. (run 2)|r
step
    .goto 1444,60.3,30.2
    >>Inside Dire Maul West: loot |cRXP_LOOT_[A Dull and Flat Elven Blade]|r and click it to start the quest
    .accept 7508 >>Accept The Forging of Quel'Serrar
    .use 18513
step
    .goto 1444,60.3,30.2
    >>Inside Dire Maul West: these quests start from a drop or an object in the dungeon
    .accept 7877 >>Accept The Treasure of the Shen'dralar
    .accept 8950 >>Accept The Instigator's Enchantment
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
    >>Inside Dire Maul West: loot |cRXP_LOOT_[A Dull and Flat Elven Blade]|r and click it to start the quest
    .turnin 7508 >>Turn in The Forging of Quel'Serrar
step
    .goto 1444,60.3,30.2
    >>Inside Dire Maul West: these quests start from a drop or an object in the dungeon
    .turnin 7877 >>Turn in The Treasure of the Shen'dralar
    .turnin 8950 >>Turn in The Instigator's Enchantment
step
    .goto 1444,60.3,30.2
    +Dungeon entrance: Dire Maul West. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 50-60
#name 56-60 Dire Maul North
#displayname 56-60 Dire Maul North
#next 58-59 Silithus
step
    +|cRXP_WARN_Dire Maul North|r (levels 56-60). Pick up 4 dungeon quests solo (roughly 45 min with the hand-ins), then ONE run with a group (roughly 45 min). No group needed until the run step. Click to start.
    *Door: North wall of the central courtyard. Needs the Crescent Key.
    *East 54-60, West 56-60, North 56-60.
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in.|r
step
    .goto 1444,62.5,24.9
    >>Inside Dire Maul North: these quests start from a drop or an object in the dungeon
    .accept 1193 >>Accept A Broken Trap
    .accept 5518 >>Accept The Gordok Ogre Suit
    .accept 5525 >>Accept Free Knot!
    .accept 5528 >>Accept The Gordok Taste Test
step
    .goto 1444,62.5,24.9
    >>Enter |cRXP_WARN_Dire Maul North|r with your group. Quest goals inside:
    *A Broken Trap
    *The Gordok Ogre Suit: Bring 4 Bolts of Runecloth, 8 Rugged Leather, 2 Rune Threads, and Ogre Tannin to Knot Thimblejack. He is currently chained inside the Gordok wing of Dire Maul.
    *Free Knot!
    .complete 1193,1 --A Broken Trap
    .complete 5518,4 --The Gordok Ogre Suit
    .complete 5525,1 --Free Knot!
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
    .goto 1435,44.77,56.63
    >>Buy |cRXP_LOOT_[Rune Thread]|r from |cRXP_FRIENDLY_Banalash|r
    *Bring 4 Bolts of Runecloth, 8 Rugged Leather, 2 Rune Threads, and Ogre Tannin to Knot Thimblejack. He is currently chained inside the Gordok wing of Dire Maul.
    .complete 5518,3 --The Gordok Ogre Suit
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1444,62.5,24.9
    >>Inside Dire Maul North: these quests start from a drop or an object in the dungeon
    .turnin 1193 >>Turn in A Broken Trap
    .turnin 5518 >>Turn in The Gordok Ogre Suit
    .turnin 5525 >>Turn in Free Knot!
    .turnin 5528 >>Turn in The Gordok Taste Test
step
    .goto 1444,62.5,24.9
    +Dungeon entrance: Dire Maul North. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 50-60
#name 58-59 Silithus
#displayname 58-59 Silithus
#next 58-60 Shaper's Terrace
step
    #completewith next
    +|cRXP_WARN_On the way: lead-in quests in Thunder Bluff, Moonglade that open quests in Silithus|r
step
    .goto 1456,78.62,28.56
    >>Talk to |cRXP_FRIENDLY_Arch Druid Hamuul Runetotem|r
    .accept 1123 >>Accept Rabine Saturna
    .target Arch Druid Hamuul Runetotem
step
    .goto 1450,51.69,45.1
    >>Talk to |cRXP_FRIENDLY_Rabine Saturna|r
    .turnin 1123 >>Turn in Rabine Saturna
    .accept 1124 >>Accept Wasteland
    .target Rabine Saturna
step
    .zone 1451 >>Travel to Silithus
    *How: Fly to Cenarion Hold.
    *Level for this part: 58-59. 46 quests, roughly 6 h 5 min.
step
    #completewith next
    .goto 1451,48.68,36.67,15,0
    >>Talk to |cRXP_FRIENDLY_Runk Windtamer|r if you don't have this flight path yet
    .fp Runk Windtamer >>Get the flight path
    .target Runk Windtamer
step
    .goto 1451,81.87,18.93
    >>Talk to |cRXP_FRIENDLY_Layo Starstrike|r
    .turnin 1124 >>Turn in Wasteland
    .accept 1125 >>Accept The Spirits of Southwind
    .target Layo Starstrike
step
    .goto 1451,51.96,38.16
    >>Talk to |cRXP_FRIENDLY_Aurel Goldleaf|r
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
    .goto 1451,49.67,37.46
    >>Talk to |cRXP_FRIENDLY_Geologist Larksbane|r
    .accept 8284 >>Accept The Twilight Mystery
    .target Geologist Larksbane
step
    >>Collect |cRXP_LOOT_[Abyssal Scepter]|r from |cRXP_ENEMY_Prince Skaldrenox|r, |cRXP_ENEMY_High Marshal Whirlaxis|r, |cRXP_ENEMY_Baron Kazum|r. Earn the required reputation. Collect |cRXP_LOOT_[Venoxis's Venom Sac]|r from |cRXP_ENEMY_High Priest Venoxis|r. Collect |cRXP_LOOT_[Kurinnaxx's Venom Sac]|r from |cRXP_ENEMY_Kurinnaxx|r
    *Aurel Goldleaf at Cenarion Hold in Silithus wants you to bring her 1 Abyssal Scepter. You must also be Honored with the Cenarion Circle.
    *Dirk Thunderwood at Cenarion Hold wants you to bring him Venoxis's Venom Sac and Kurinnaxx's Venom Sac.
    .complete 9248,1 --A Humble Offering
    .complete 9248,2 --A Humble Offering
    .complete 9023,1 --The Perfect Poison
    .complete 9023,2 --The Perfect Poison
    .mob Prince Skaldrenox
    .mob High Marshal Whirlaxis
    .mob High Priest Venoxis
    .mob Kurinnaxx
step
    .goto 1451,51.96,38.16
    >>Talk to |cRXP_FRIENDLY_Aurel Goldleaf|r
    .turnin 9248 >>Turn in A Humble Offering
    .target Aurel Goldleaf
step
    .goto 1451,52.13,39.14
    >>Talk to |cRXP_FRIENDLY_Dirk Thunderwood|r
    .turnin 9023 >>Turn in The Perfect Poison
    .target Dirk Thunderwood
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
    .goto 1451,48.95,36.69
    >>Talk to |cRXP_FRIENDLY_Scout Bloodfist|r
    .accept 9416 >>Accept Report to General Kirika
    .target Scout Bloodfist
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
    .target Aurel Goldleaf
step
    >>Collect |cRXP_LOOT_[Abyssal Crest]|r from |cRXP_ENEMY_Crimson Templar|r, |cRXP_ENEMY_Azure Templar|r, |cRXP_ENEMY_Hoary Templar|r. Collect |cRXP_LOOT_[Large Brilliant Shard]|r. Collect |cRXP_LOOT_[Abyssal Signet]|r from |cRXP_ENEMY_The Duke of Cynders|r, |cRXP_ENEMY_The Duke of Fathoms|r, |cRXP_ENEMY_The Duke of Shards|r
    *Bor Wildmane at Cenarion Hold in Silithus wants you to destroy an Abyssal Templar and bring him an Abyssal Crest as proof of the deed.
    *Bring 1 Large Brilliant Shard and 3 Abyssal Crests to Aurel Goldleaf in Cenarion Hold.
    *Bring 5 Large Brilliant Shards and 3 Abyssal Signets to Aurel Goldleaf in Cenarion Hold.
    .complete 8361,1 --Abyssal Contacts
    .complete 8332,1 --Dukes of the Council
    .complete 8332,2 --Dukes of the Council
    .complete 8341,1 --Lords of the Council
    .complete 8341,2 --Lords of the Council
    .mob Crimson Templar
    .mob Azure Templar
    .mob The Duke of Cynders
    .mob The Duke of Fathoms
step
    .goto 1451,51.96,38.16
    >>Talk to |cRXP_FRIENDLY_Aurel Goldleaf|r
    .turnin 8332 >>Turn in Dukes of the Council
    .turnin 8341 >>Turn in Lords of the Council
    .accept 8349 >>Accept Bor Wildmane
    .accept 8351 >>Accept Bor Wishes to Speak
    .target Aurel Goldleaf
step
    .goto 1451,48.57,37.78
    >>Talk to |cRXP_FRIENDLY_Bor Wildmane|r
    .turnin 8361 >>Turn in Abyssal Contacts
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
    .goto 1451,62.65,52.84
    >>Kill |cRXP_ENEMY_Tortured Druid|r. Kill |cRXP_ENEMY_Tortured Sentinel|r
    *Free the spirits of 8 Tortured Druids and 8 Tortured Sentinels in Southwind Village, and then return to Layo Starstrike at the Valor's Rest graveyard of Silithus.
    .complete 1125,1 --The Spirits of Southwind
    .complete 1125,2 --The Spirits of Southwind
    .mob Tortured Druid
    .mob Tortured Sentinel
step
    .goto 1451,50.75,69.54
    >>Talk to |cRXP_FRIENDLY_General Kirika|r
    .turnin 9416 >>Turn in Report to General Kirika
    .accept 9422 >>Accept Scouring the Desert
    .target General Kirika
step
    .goto 1451,50.93,69.33
    >>Kill |cRXP_ENEMY_Silithus Dust Turnin Quest Doodad Horde|r
    *Find and deliver Silithyst to the Silithyst Extractor then speak with General Kirika at the Horde encampment near Hive'Regal.
    .complete 9422,1 --Scouring the Desert
    .mob Silithus Dust Turnin Quest Doodad Horde
step
    .goto 1451,50.75,69.54
    >>Talk to |cRXP_FRIENDLY_General Kirika|r
    .turnin 9422 >>Turn in Scouring the Desert
    .target General Kirika
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
    .goto 1451,49.67,37.46
    >>Talk to |cRXP_FRIENDLY_Geologist Larksbane|r
    .turnin 8284 >>Turn in The Twilight Mystery
    .target Geologist Larksbane
step
    .goto 1451,48.62,37.87
    >>Talk to |cRXP_FRIENDLY_Huum Wildmane|r
    .turnin 8320 >>Turn in Twilight Geolords
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
    .goto 1451,81.87,18.93
    >>Talk to |cRXP_FRIENDLY_Layo Starstrike|r
    .turnin 1125 >>Turn in The Spirits of Southwind
    .accept 1126 >>Accept Hive in the Tower
    .target Layo Starstrike
step
    >>Collect |cRXP_LOOT_[Encrusted Silithid Object]|r from |cRXP_ENEMY_Hive'Ashi Ambusher|r
    *Scale the tower of Southwind Village and locate a means to stir the silithid hive into activity. Bring back anything unusual you may uncover when doing so to Layo Starstrike at the Valor's Rest graveyard of Silithus.
    .complete 1126,1 --Hive in the Tower
    .mob Hive'Ashi Ambusher
step
    .goto 1451,81.87,18.93
    >>Talk to |cRXP_FRIENDLY_Layo Starstrike|r
    .turnin 1126 >>Turn in Hive in the Tower
    .accept 6844 >>Accept Umber, Archivist
    .target Layo Starstrike
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
    .goto 1451,44.56,91.38
    >>Collect |cRXP_LOOT_[Noggle's Satchel]|r from |cRXP_PICK_Noggle's Satchel|r
    *Retrieve Noggle's Satchel from the mountains in the south of Silithus and return it to him at Cenarion Hold.
    .complete 8282,1 --Noggle's Lost Satchel
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
    .goto 1451,26.35,36.62
    >>Collect |cRXP_LOOT_[Twilight Lexicon - Chapter 1]|r from |cRXP_ENEMY_Twilight Keeper Mayna|r
    *Bring the three chapters of the Twilight Lexicon to Hermit Ortell in Silithus.
    .complete 8279,1 --The Twilight Lexicon
    .mob Twilight Keeper Mayna
step
    .goto 1451,23.17,58.65
    >>Collect |cRXP_LOOT_[Hive'Zora Silithid Brain]|r from |cRXP_ENEMY_Silithid Darter|r, |cRXP_ENEMY_Hive'Zora Tunneler|r, |cRXP_ENEMY_Hive'Zora Wasp|r
    *Frankal Stonebridge at Bronzebeard's Encampment in Silithus wants you to recover a Hive'Zora Silithid Brain, Hive'Ashi Silithid Brain, and a Hive'Regal Silithid Brain. Return to Frankal when you have completed this task.
    .complete 8310,2 --Breaking the Code
    .mob Silithid Darter
    .mob Hive'Zora Tunneler
step
    .goto 1451,16.09,86.37
    >>Collect |cRXP_LOOT_[Twilight Lexicon - Chapter 2]|r from |cRXP_ENEMY_Twilight Keeper Exeter|r
    *Bring the three chapters of the Twilight Lexicon to Hermit Ortell in Silithus.
    .complete 8279,2 --The Twilight Lexicon
    .mob Twilight Keeper Exeter
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
step
    .goto 1450,44.88,35.6
    >>Talk to |cRXP_FRIENDLY_Umber|r
    .turnin 6844 >>Turn in Umber, Archivist
    .target Umber
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

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 50-60
#name 58-60 Shaper's Terrace
#displayname 58-60 Shaper's Terrace
#next 58-60 Scholomance pre-quests
step
    +|cRXP_WARN_Shaper's Terrace|r (levels 58-60). Pick up 3 dungeon quests solo (roughly 35 min with the hand-ins), then ONE run with a group (roughly 1 h 20 min). No group needed until the run step. Click to start.
    *New Forever dungeon on the hill north of Marshal's Refuge in Un'Goro. Power-crystal consoles inside open the way. No key needed.
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1458,48.82,69.28
    >>Talk to |cRXP_FRIENDLY_Master Apothecary Faranell|r
    .accept 95926 >>Accept The Dark Crystal
    .target Master Apothecary Faranell
step
    .goto 1458,47.45,73.35
    >>Talk to |cRXP_FRIENDLY_Chemist Fuely|r
    .accept 97049 >>Accept Essence of Seeping Slimes
    .target Chemist Fuely
step
    .goto 1412,34.97,22.08
    >>Talk to |cRXP_FRIENDLY_Mayena Earthseeker|r
    .accept 95928 >>Accept Crystalline Elements
    .target Mayena Earthseeker
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in.|r
step
    .goto 1449,48.1,6.1
    >>Enter |cRXP_WARN_Shaper's Terrace|r with your group. Quest goals inside:
    *The Dark Crystal: Gather a colorless Drained Crystal Fragment near the Achromatic Crystal in the Shaper's Terrace.
    *Crystalline Elements: Bring Mayena Earthseeker a Moist Crystal, a Charged Crystal, a Noxious Crystal and a Fiery Crystal from Shaper's Terrace.
    *Essence of Seeping Slimes: Gather 8 Seeping Slime Essence in the Shaper's Terrace.
    .complete 95926,1 --The Dark Crystal
    .complete 95928,1 --Crystalline Elements
    .complete 95928,2 --Crystalline Elements
    .complete 95928,3 --Crystalline Elements
    .complete 95928,4 --Crystalline Elements
    .complete 97049,1 --Essence of Seeping Slimes
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1458,48.82,69.28
    >>Talk to |cRXP_FRIENDLY_Master Apothecary Faranell|r
    .turnin 95926 >>Turn in The Dark Crystal
    .target Master Apothecary Faranell
step
    .goto 1458,47.45,73.35
    >>Talk to |cRXP_FRIENDLY_Chemist Fuely|r
    .turnin 97049 >>Turn in Essence of Seeping Slimes
    .target Chemist Fuely
step
    .goto 1412,34.97,22.08
    >>Talk to |cRXP_FRIENDLY_Mayena Earthseeker|r
    .turnin 95928 >>Turn in Crystalline Elements
    .target Mayena Earthseeker
step
    .goto 1449,48.1,6.1
    +Dungeon entrance: Shaper's Terrace. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 50-60
#name 58-60 Scholomance pre-quests
#displayname 58-60 Scholomance pre-quests
#next 58-60 Scholomance
step
    +|cRXP_WARN_Scholomance: pre-quests|r. 7 quests, solo (no group needed), roughly 1 h 5 min. The run guide comes after this one. Click to start.
    *Pre-quests: Egg Freezing, Egg Collection, The Human, Ras Frostwhisper, The Dying, Ras Frostwhisper, Menethil's Gift, Soulbound Keepsake, Leonid Barthalomew
step
    .goto 1422,70.57,74.11
    >>Talk to |cRXP_FRIENDLY_Magistrate Marduke|r
    .accept 5461 >>Accept The Human, Ras Frostwhisper
    .target Magistrate Marduke
step
    .goto 1423,71.89,48.29
    >>Talk to |cRXP_FRIENDLY_Leonid Barthalomew the Revered|r
    .accept 5465 >>Accept Soulbound Keepsake
    .target Leonid Barthalomew the Revered
step
    .goto 1422,70.57,74.11
    >>Talk to |cRXP_FRIENDLY_Magistrate Marduke|r
    .turnin 5465 >>Turn in Soulbound Keepsake
    .target Magistrate Marduke
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
    .accept 5463 >>Accept Menethil's Gift
    .target Leonid Barthalomew the Revered
step
    .goto 1423,71.89,48.29
    >>Talk to |cRXP_FRIENDLY_Leonid Barthalomew the Revered|r
    .turnin 5463 >>Turn in Menethil's Gift
    .target Leonid Barthalomew the Revered
step
    +|cRXP_WARN_Pre-quests done.|r Next: Scholomance itself. That guide tells you when to find a group. Click to continue.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 50-60
#name 58-60 Scholomance
#displayname 58-60 Scholomance
#next 58-60 Stratholme Live
step
    +|cRXP_WARN_Scholomance|r (levels 58-60). Pick up 10 dungeon quests solo (roughly 50 min with the hand-ins), then ONE run with a group (roughly 4 h). No group needed until the run step. Click to start.
    *Its 7 pre-quests are in the guide before this one. Skipped them? Some quests below won't be offered: skip those steps.
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
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
    .goto 1420,83.06,71.6
    >>Talk to |cRXP_FRIENDLY_Alexi Barov|r
    .accept 5341 >>Accept Barov Family Fortune
    .target Alexi Barov
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
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in.|r
step
    .goto 1422,69.7,73.2
    >>Inside Scholomance: these quests start from a drop or an object in the dungeon
    .accept 8969 >>Accept The Left Piece of Lord Valthalak's Amulet
    .accept 8992 >>Accept The Right Piece of Lord Valthalak's Amulet
step
    .goto 1422,69.7,73.2
    >>Enter |cRXP_WARN_Scholomance|r with your group. Quest goals inside:
    *Barov Family Fortune: Venture to the Scholomance and recover the Barov family fortune. Four deeds make up this fortune: The Deed to Caer Darrow; The Deed to Brill; The Deed to Tarren Mill; and The Deed to Southshore. Return to Alexi Barov when you have completed this task.
    *Doctor Theolen Krastinov, the Butcher: Find Doctor Theolen Krastinov inside the Scholomance. Destroy him, then burn the Remains of Eva Sarkhoff and the Remains of Lucien Sarkhoff. Return to Eva Sarkhoff when the task is complete.
    *The Lich, Ras Frostwhisper: Find Ras Frostwhisper in the Scholomance. When you have found him, use the Soulbound Keepsake on his undead visage. Should you succeed in reverting him to a mortal, strike him down and recover the Human Head of Ras Frostwhisper. Take the head back to Magistrate Marduke.
    *Plagued Hatchlings: Kill 20 Plagued Hatchlings, then return to Betina Bigglezink at the Light's Hope Chapel.
    *The Left Piece of Lord Valthalak's Amulet: Use the Brazier of Beckoning to summon forth the spirit of Kormok and slay him. Return to Bodley inside Blackrock Mountain with the Left Piece of Lord Valthalak's Amulet and the Brazier of Beckoning.
    *The Right Piece of Lord Valthalak's Amulet: Use the Brazier of Beckoning to summon forth the spirit of Kormok and slay him. Return to Bodley inside Blackrock Mountain with the recombined Lord Valthalak's Amulet and the Brazier of Beckoning.
    .complete 5341,1 --Barov Family Fortune
    .complete 5341,2 --Barov Family Fortune
    .complete 5341,3 --Barov Family Fortune
    .complete 5341,4 --Barov Family Fortune
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
    .goto 1420,83.06,71.6
    >>Talk to |cRXP_FRIENDLY_Alexi Barov|r
    .turnin 5341 >>Turn in Barov Family Fortune
    .target Alexi Barov
step
    .goto 1423,71.66,49.94
    >>Talk to |cRXP_FRIENDLY_Betina Bigglezink|r
    .turnin 5529 >>Turn in Plagued Hatchlings
    .turnin 5531 >>Turn in Betina Bigglezink
    .target Betina Bigglezink
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
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
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in. (run 2)|r
step
    .goto 1422,69.7,73.2
    >>Enter |cRXP_WARN_Scholomance|r with your group. Quest goals inside:
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
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1422,70.22,73.71
    >>Talk to |cRXP_FRIENDLY_Eva Sarkhoff|r
    .accept 5384 >>Accept Kirtonos the Herald
    .target Eva Sarkhoff
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in. (run 3)|r
step
    .goto 1422,69.7,73.2
    >>Enter |cRXP_WARN_Scholomance|r with your group. Quest goals inside:
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
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 50-60
#name 58-60 Stratholme Live
#displayname 58-60 Stratholme Live
#next 58-60 Stratholme Undead
step
    +|cRXP_WARN_Stratholme Live|r (levels 58-60). Pick up 7 dungeon quests solo (roughly 15 min with the hand-ins), then ONE run with a group (roughly 2 h 30 min). No group needed until the run step. Click to start.
    *Door: Main gate. No key.
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1423,70.88,48.43
    >>Talk to |cRXP_FRIENDLY_Smokey LaRue|r
    .accept 5214 >>Accept The Great Fras Siabi
    .target Smokey LaRue
step
    .goto 1423,71.63,50.09
    >>Talk to |cRXP_FRIENDLY_Duke Nicholas Zverenhoff|r
    .accept 5251 >>Accept The Archivist
    .target Duke Nicholas Zverenhoff
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
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in.|r
step
    .goto 1423,26.52,10.36
    >>Inside Stratholme Live: these quests start from a drop or an object in the dungeon
    .accept 8968 >>Accept The Left Piece of Lord Valthalak's Amulet
    .accept 8991 >>Accept The Right Piece of Lord Valthalak's Amulet
step
    .goto 1423,26.52,10.36
    >>Enter |cRXP_WARN_Stratholme Live|r with your group. Quest goals inside:
    *The Great Fras Siabi: Find Fras Siabi's smoke shop in Stratholme and recover a box of Siabi's Premium Tobacco. Return to Smokey LaRue when the job is done.
    *The Archivist: Travel to Stratholme and find Archivist Galford of the Scarlet Crusade. Destroy him and burn down the Scarlet Archive.
    *The Restless Souls: Use Egan's Blaster on the ghostly and spectral citizens of Stratholme. When the restless souls break free from their ghostly shells, use the blaster again - freedom will be theirs!
    *Of Love and Family: Travel to Stratholme, in the northern part of the Plaguelands. It is in the Scarlet Bastion that you will find the painting 'Of Love and Family,' hidden behind another painting depicting the twin moons of our world.
    *The Left Piece of Lord Valthalak's Amulet: Use the Brazier of Beckoning to summon forth Jarien and Sothos and slay them. Return to Bodley inside Blackrock Mountain with the Left Piece of Lord Valthalak's Amulet and the Brazier of Beckoning.
    *The Right Piece of Lord Valthalak's Amulet: Use the Brazier of Beckoning to summon forth Jarien and Sothos and slay them. Return to Bodley inside Blackrock Mountain with the recombined Lord Valthalak's Amulet and the Brazier of Beckoning.
    .complete 5214,1 --The Great Fras Siabi
    .complete 5251,1 --The Archivist
    .complete 5251,2 --The Archivist
    .complete 5282,1 --The Restless Souls
    .complete 5848,1 --Of Love and Family
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
    >>Inside Stratholme Live: these quests start from a drop or an object in the dungeon
    .turnin 8968 >>Turn in The Left Piece of Lord Valthalak's Amulet
    .turnin 8991 >>Turn in The Right Piece of Lord Valthalak's Amulet
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
    .goto 1423,71.63,50.09
    >>Talk to |cRXP_FRIENDLY_Duke Nicholas Zverenhoff|r
    .turnin 5251 >>Turn in The Archivist
    .target Duke Nicholas Zverenhoff
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in. (run 2)|r
step
    .goto 1423,26.52,10.36
    >>Loot |cRXP_LOOT_[Head of Balnazzar]|r from |cRXP_ENEMY_Balnazzar|r, then click it to start the quest
    .accept 5262 >>Accept The Truth Comes Crashing Down
    .use 13250
    .mob Balnazzar
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1423,71.63,50.09
    >>Talk to |cRXP_FRIENDLY_Duke Nicholas Zverenhoff|r
    .turnin 5262 >>Turn in The Truth Comes Crashing Down
    .target Duke Nicholas Zverenhoff
step
    .goto 1423,26.52,10.36
    +Dungeon entrance: Stratholme Live. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 50-60
#name 58-60 Stratholme Undead
#displayname 58-60 Stratholme Undead
#next 59-60 Mount Hyjal
step
    +|cRXP_WARN_Stratholme Undead|r (levels 58-60). Pick up 6 dungeon quests solo (roughly 5 min with the hand-ins), then ONE run with a group (roughly 2 h 30 min). No group needed until the run step. Click to start.
    *Door: Service gate, east of the main gate. Needs the Key to the City (Magistrate Barthilas, Stratholme Live).
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1423,71.66,49.94
    >>Talk to |cRXP_FRIENDLY_Betina Bigglezink|r
    .accept 5212 >>Accept The Flesh Does Not Lie
    .target Betina Bigglezink
step
    .goto 1423,71.63,50.09
    >>Talk to |cRXP_FRIENDLY_Duke Nicholas Zverenhoff|r
    .accept 5263 >>Accept Above and Beyond
    .target Duke Nicholas Zverenhoff
step
    .goto 1423,71.89,48.29
    >>Talk to |cRXP_FRIENDLY_Leonid Barthalomew the Revered|r
    .accept 5243 >>Accept Houses of the Holy
    .target Leonid Barthalomew the Revered
step
    .goto 1423,22.23,63.51
    >>Talk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .accept 6163 >>Accept Ramstein
    .target Nathanos Blightcaller
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in.|r
step
    .goto 1423,41.45,17.74
    >>Inside Stratholme Undead: these quests start from a drop or an object in the dungeon
    .accept 5125 >>Accept Aurius' Reckoning
step
    .goto 1423,41.45,17.74
    >>Enter |cRXP_WARN_Stratholme Undead|r with your group. Quest goals inside:
    *The Flesh Does Not Lie: Recover 10 Plagued Flesh Samples from Stratholme and return them to Betina Bigglezink. You suspect that any creature in Stratholme would have said flesh sample.
    *Houses of the Holy: Travel to Stratholme, in the north. Search the supply crates that litter the city and recover 5 Stratholme Holy Water. Return to Leonid Barthalomew the Revered when you have collected enough of the blessed fluid.
    *Above and Beyond: Venture to Stratholme and destroy Baron Rivendare. Take his head and return to Duke Nicholas Zverenhoff.
    *Ramstein: Travel to Stratholme and slay Ramstein the Gorger. Take his head as a souvenir for Nathanos.
    .complete 5212,1 --The Flesh Does Not Lie
    .complete 5243,1 --Houses of the Holy
    .complete 5263,1 --Above and Beyond
    .complete 6163,1 --Ramstein
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1423,41.45,17.74
    >>Inside Stratholme Undead: these quests start from a drop or an object in the dungeon
    .turnin 5125 >>Turn in Aurius' Reckoning
step
    .goto 1423,71.89,48.29
    >>Talk to |cRXP_FRIENDLY_Leonid Barthalomew the Revered|r
    .turnin 5243 >>Turn in Houses of the Holy
    .target Leonid Barthalomew the Revered
step
    .goto 1423,71.66,49.94
    >>Talk to |cRXP_FRIENDLY_Betina Bigglezink|r
    .turnin 5212 >>Turn in The Flesh Does Not Lie
    .target Betina Bigglezink
step
    .goto 1423,71.63,50.09
    >>Talk to |cRXP_FRIENDLY_Duke Nicholas Zverenhoff|r
    .turnin 5263 >>Turn in Above and Beyond
    .target Duke Nicholas Zverenhoff
step
    .goto 1423,22.23,63.51
    >>Talk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .turnin 6163 >>Turn in Ramstein
    .target Nathanos Blightcaller
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1423,71.66,49.94
    >>Talk to |cRXP_FRIENDLY_Betina Bigglezink|r
    .accept 5213 >>Accept The Active Agent
    .target Betina Bigglezink
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in. (run 2)|r
step
    .goto 1423,41.45,17.74
    >>Enter |cRXP_WARN_Stratholme Undead|r with your group. Quest goals inside:
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
    .goto 1423,41.45,17.74
    +Dungeon entrance: Stratholme Undead. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 50-60
#name 59-60 Mount Hyjal
#displayname 59-60 Mount Hyjal
#next 59-60 Upper Blackrock Spire pre-quests
step
    .zone 2482 >>Travel to Mount Hyjal
    *How: From Everlook take the flight to Tainted Foothills (do the Hyjal intro first if the flight is missing).
    *Level for this part: 59-60. 104 quests, roughly 8 h 50 min.
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
    .goto 2482,61.57,41.47
    >>Click the |cRXP_PICK_Troll Remains|r
    .accept 96998 >>Accept Tribal Colors
step
    .goto 2482,72.79,38.35
    >>Well of Eternity entered with the chimaera heart. Collect |cRXP_LOOT_[Thorn Seed]|r from |cRXP_PICK_Thorn Bush|r. Kill |cRXP_ENEMY_Blackthorne Adept|r
    *Enter the Well of Eternity and observe its effects on the Venom-dripping Heart.
    *Find thorn seeds in the forests at the summit of Mount Hyjal and bring them back to Tiala Whitemane.
    *Kill 10 Blackthorne Adepts and 10 Wild-branded Cultists.
    .complete 96301,1 --Power Wash
    .complete 93407,1 --A Thorn in the Paw
    .complete 93584,2 --Cult Closure
    .mob Blackthorne Adept
step
    .goto 2482,76.92,35.42
    >>Click the |cRXP_PICK_Bookshelf|r
    .accept 93521 >>Accept Challenger of the Gods
step
    .goto 2482,71.3,28.93
    >>Collect |cRXP_LOOT_[Wicked Ritualist's Kris]|r from |cRXP_ENEMY_Blackthorne Cultist|r, |cRXP_ENEMY_Blackthorne Outrunner|r. Collect |cRXP_LOOT_[Recoiling Gnarlybark Staff]|r from |cRXP_ENEMY_Blackthorne Adept|r, |cRXP_ENEMY_Blackthorne Priest|r. Kill |cRXP_ENEMY_Blackthorne Cultist|r
    *Recover a Wicked Ritualist's Kris and a Recoiling Gnarlybark Staff from Blackthorne cultists.
    *Kill 10 Blackthorne Adepts and 10 Wild-branded Cultists.
    .complete 92533,1 --Twisted Tools
    .complete 92533,2 --Twisted Tools
    .complete 93584,1 --Cult Closure
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
    .goto 2482,50.65,37.76
    >>Collect |cRXP_LOOT_[Felhound Spike]|r from |cRXP_ENEMY_Defiling Hound|r. Collect |cRXP_LOOT_[Ephemeral Essence]|r from |cRXP_ENEMY_Defiling Hound|r
    *Bring 12 Felhound Spikes to Maerion Thaelemaches in Dae'gun.
    *Retrieve 6 Ephemeral Essences for Elaena Moonwhisper.
    .complete 97009,1 --Maerion's Misery
    .complete 92960,1 --Siphoned Ephemeral Essence
    .mob Defiling Hound
step
    .goto 2482,43.77,32.24
    >>Talk to |cRXP_FRIENDLY_Elaena Moonwhisper|r
    .turnin 92960 >>Turn in Siphoned Ephemeral Essence
    .target Elaena Moonwhisper
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
    >>Collect |cRXP_LOOT_[Frayed Wire]|r from |cRXP_PICK_Tangle of Wire|r. Collect |cRXP_LOOT_[Warped Metal Scrap]|r from |cRXP_PICK_Tarnished Shield Dome|r, |cRXP_PICK_Rusting Metal Chunk|r
    *Scavenge the remains of the Horde base and return 5 Frayed Wire, 5 Scrap Metal, and 5 Calcified Excrement to Kaylaena.
    .complete 92011,1 --Rubble Rummage
    .complete 92011,3 --Rubble Rummage
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
    .goto 2482,59.75,44.01
    >>Collect |cRXP_LOOT_[Calcified Excrement]|r from |cRXP_PICK_Calcified Excrement|r
    *Scavenge the remains of the Horde base and return 5 Frayed Wire, 5 Scrap Metal, and 5 Calcified Excrement to Kaylaena.
    .complete 92011,2 --Rubble Rummage
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
    .goto 2482,79.94,70.69
    >>Talk to |cRXP_FRIENDLY_Thark Gorax|r
    .accept 96830 >>Accept Farsight Guided
    .target Thark Gorax
step
    .goto 2482,73.34,81.88
    >>Talk to |cRXP_FRIENDLY_Ketharas|r
    .accept 92171 >>Accept Taking to New Heights
    .target Ketharas
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
    .goto 2482,48.26,85.72
    >>Talk to |cRXP_FRIENDLY_Curious Crow|r
    .accept 95317 >>Accept Notation, Notation, Notation
    .accept 95320 >>Accept A Curious Question
    .accept 96931 >>Accept Heading Up the Mountain
    .target Curious Crow
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
    .goto 2482,54.31,63.95
    >>Talk to |cRXP_FRIENDLY_Skylord Omnuron|r
    .turnin 92171 >>Turn in Taking to New Heights
    .accept 92500 >>Accept A Bit of the Sky
    .target Skylord Omnuron
step
    .goto 2482,47.75,59.44
    >>Collect |cRXP_LOOT_[The Jewel of the Horizon]|r from |cRXP_PICK_The Jewel of the Horizon|r
    *Find the Jewel of the Horizon in the Wormwing harpy nests on Mount Hyjal and bring it to Ketharas.
    .complete 92500,1 --A Bit of the Sky
step
    .goto 2482,36.48,66.77
    >>Collect |cRXP_LOOT_[Grand Hippogryph Feather]|r from |cRXP_ENEMY_Mountain Squallclimber|r
    *Collect 5 Grand Hippogryph Feathers and 3 Oily Chimaera Hair for Marn.
    .complete 92017,1 --Cleansing Winds
    .mob Mountain Squallclimber
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
    .goto 2482,33.29,40.96
    >>Click the |cRXP_PICK_Old Wardrobe|r
    .accept 97001 >>Accept Sawyer's Legacy
step
    .goto 2482,41.27,45.33
    >>Talk to |cRXP_FRIENDLY_Jereman|r
    .turnin 96931 >>Turn in Heading Up the Mountain
    .accept 96939 >>Accept The Balance of Life and Death
    .accept 96964 >>Accept A Clever Creature
    .accept 96978 >>Accept Violent Venison
    .target Jereman
step
    .goto 2482,28.68,43.04
    >>Talk to |cRXP_FRIENDLY_Kala'th|r
    .turnin 96978 >>Turn in Violent Venison
    .accept 93617 >>Accept Prey and Predator
    .target Kala'th
step
    .goto 2482,27.1,49.99
    >>Talk to |cRXP_FRIENDLY_Marrosis|r
    .turnin 96939 >>Turn in The Balance of Life and Death
    .accept 92317 >>Accept Stolen Life
    .accept 96957 >>Accept Bone Sweet Bone
    .target Marrosis
step
    .goto 2482,23.6,52.28
    >>Collect |cRXP_LOOT_[Drop of Stolen Life]|r from |cRXP_ENEMY_Fleshflay Ravener|r, |cRXP_ENEMY_Forgotten Soldier|r, |cRXP_ENEMY_Forgotten Soldier|r. Collect |cRXP_LOOT_[Sun-Bleached Bone]|r from |cRXP_PICK_Sun-Bleached Bonepile|r
    *Acquire a Drop of Stolen Life from the Scourge in the ruins on Mount Hyjal, then return to Ketharas.
    *Collect 20 Sun-Bleached Bones.
    .complete 92317,1 --Stolen Life
    .complete 96957,1 --Bone Sweet Bone
    .mob Fleshflay Ravener
    .mob Forgotten Soldier
step
    .goto 2482,27.1,49.99
    >>Talk to |cRXP_FRIENDLY_Marrosis|r
    .turnin 96957 >>Turn in Bone Sweet Bone
    .target Marrosis
step
    .goto 2482,33.65,46.28
    >>Kill |cRXP_ENEMY_Predatory Hyjal Stag|r
    *Dissuade stags from acting as predators.
    .complete 93617,1 --Prey and Predator
    .mob Predatory Hyjal Stag
step
    .goto 2482,28.68,43.04
    >>Talk to |cRXP_FRIENDLY_Kala'th|r
    .turnin 93617 >>Turn in Prey and Predator
    .target Kala'th
step
    .goto 2482,13.82,54.75
    >>Talk to |cRXP_FRIENDLY_Zet'gan|r
    .turnin 96998 >>Turn in Tribal Colors
    .target Zet'gan
step
    .goto 2482,12.93,52.85
    >>Talk to |cRXP_FRIENDLY_Ortak Lomgok|r
    .turnin 96830 >>Turn in Farsight Guided
    .target Ortak Lomgok
step
    .goto 2482,13.77,53.06
    >>Talk to |cRXP_FRIENDLY_Kal'tinzan|r
    .accept 95769 >>Accept Threading a Solution
    .accept 91794 >>Accept Flags of Our Forebears
    .target Kal'tinzan
step
    .goto 2482,13.82,54.75
    >>Talk to |cRXP_FRIENDLY_Zet'gan|r
    .accept 95026 >>Accept Blight No More
    .accept 92592 >>Accept Final Death
    .accept 92609 >>Accept Feathers in Flight
    .accept 96999 >>Accept Wrap Return
    .target Zet'gan
step
    .goto 2482,12.93,52.85
    >>Talk to |cRXP_FRIENDLY_Ortak Lomgok|r
    .accept 97119 >>Accept Now We're Cooking
    .accept 96616 >>Accept Herbs for the Bruised and Weary
    .target Ortak Lomgok
step
    >>Collect |cRXP_LOOT_[Savory Stag Sliders]|r
    *Bring 6 Savory Stag Sliders to Ortak Lomgok in Elderwild.
    .complete 97119,1 --Now We're Cooking
step
    .goto 2482,12.93,52.85
    >>Talk to |cRXP_FRIENDLY_Ortak Lomgok|r
    .turnin 97119 >>Turn in Now We're Cooking
    .target Ortak Lomgok
step
    .goto 2482,20.35,59.23
    >>Talk to |cRXP_FRIENDLY_Veteran of the Third War|r
    .accept 92100 >>Accept Anywhere But Here
    .target Veteran of the Third War
step
    .goto 2482,23.83,53.96
    >>Kill |cRXP_ENEMY_Forgotten Soldier|r. Kill |cRXP_ENEMY_Fleshflay Ravener|r. Collect |cRXP_LOOT_[Reanimator's Amulet]|r from |cRXP_ENEMY_Scourge Reanimator|r
    *Eliminate 3 Forgotten Soldiers and 12 Fleshflay Raveners.
    *Use the Survivor's Torch on the Bone Pile, then collect the Reanimator's Amulet.
    .complete 95026,1 --Blight No More
    .complete 95026,2 --Blight No More
    .complete 92592,1 --Final Death
    .mob Forgotten Soldier
    .mob Fleshflay Ravener
    .mob Scourge Reanimator
step
    .goto 2482,13.82,54.75
    >>Talk to |cRXP_FRIENDLY_Zet'gan|r
    .turnin 95026 >>Turn in Blight No More
    .turnin 92592 >>Turn in Final Death
    .accept 90854 >>Accept Leather for Inclement Weather
    .target Zet'gan
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
    .goto 2482,31.43,45.24
    >>Collect |cRXP_LOOT_[Hyjal Silphium]|r from |cRXP_PICK_Hyjal Silphium|r
    *Collect 12 Hyjal Silphium.
    .complete 96616,1 --Herbs for the Bruised and Weary
step
    .goto 2482,12.93,52.85
    >>Talk to |cRXP_FRIENDLY_Ortak Lomgok|r
    .turnin 96616 >>Turn in Herbs for the Bruised and Weary
    .target Ortak Lomgok
step
    .goto 2482,18.78,62.01
    >>Talk to |cRXP_FRIENDLY_Eluneth|r
    .accept 90865 >>Accept Eyes of the Watchers
    .target Eluneth
step
    .goto 2482,20.56,71.73
    >>Talk to |cRXP_FRIENDLY_Brerufa|r
    .turnin 91696 >>Turn in Open Season
    .accept 93952 >>Accept Balance Through Strength
    .target Brerufa
step
    .goto 2482,37.86,68.42
    >>Kill |cRXP_ENEMY_Deadwood Den Guardian|r
    *Defeat 9 Deadwood Den Guardians and return to Brerufa.
    .complete 93952,1 --Balance Through Strength
    .mob Deadwood Den Guardian
step
    .goto 2482,20.56,71.73
    >>Talk to |cRXP_FRIENDLY_Brerufa|r
    .turnin 93952 >>Turn in Balance Through Strength
    .accept 92111 >>Accept Of Friend and Fur
    .target Brerufa
step
    .goto 2482,21.08,80.19
    >>Talk to |cRXP_FRIENDLY_Osi Mistpaw|r
    .turnin 92111 >>Turn in Of Friend and Fur
    .target Osi Mistpaw
step
    .goto 2482,21.77,78.98
    >>Talk to |cRXP_FRIENDLY_Elder Mistpaw|r
    .accept 94504 >>Accept Barkskin Beginnings
    .target Elder Mistpaw
step
    .goto 2482,21.77,78.98
    >>Talk to |cRXP_FRIENDLY_Elder Mistpaw|r
    .turnin 94504 >>Turn in Barkskin Beginnings
    .target Elder Mistpaw
step
    .goto 2482,20.16,77.99
    >>Talk to |cRXP_FRIENDLY_Fennar Mossmane|r
    .accept 95273 >>Accept Water of Hyjal
    .target Fennar Mossmane
step
    .goto 2482,20.16,77.99
    >>Talk to |cRXP_FRIENDLY_Fennar Mossmane|r
    .turnin 95273 >>Turn in Water of Hyjal
    .accept 93828 >>Accept Herbs of the Hollow
    .target Fennar Mossmane
step
    .goto 2482,20.16,77.99
    >>Talk to |cRXP_FRIENDLY_Fennar Mossmane|r
    .turnin 93828 >>Turn in Herbs of the Hollow
    .target Fennar Mossmane
step
    .goto 2482,21.77,78.98
    >>Talk to |cRXP_FRIENDLY_Elder Mistpaw|r
    .accept 95107 >>Accept Deeproar Down
    .target Elder Mistpaw
step
    .goto 2482,24.76,61.89
    >>Kill |cRXP_ENEMY_Chieftain Deeproar|r. Collect |cRXP_LOOT_[Broken Staff]|r from |cRXP_ENEMY_Chieftain Deeproar|r
    *Kill Chieftain Deeproar and return his staff to Elder Pinespeaker in Barkskin Burrow.
    .complete 95107,1 --Deeproar Down
    .complete 95107,2 --Deeproar Down
    .mob Chieftain Deeproar
step
    .goto 2482,22.89,46
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
    .goto 2482,20.16,77.99
    >>Talk to |cRXP_FRIENDLY_Fennar Mossmane|r
    .accept 93830 >>Accept Water of Hyjal
    .target Fennar Mossmane
step
    >>Collect |cRXP_LOOT_[Filled Hyjal Waterskin]|r
    *Fill a waterskin provided by Fennar Mossmane at the pond outside of the Deadwood Furbolg den.
    .complete 93830,1 --Water of Hyjal
step
    .goto 2482,21.77,79.18
    >>Talk to |cRXP_FRIENDLY_Elder Pinespeaker|r
    .turnin 95107 >>Turn in Deeproar Down
    .target Elder Pinespeaker
step
    .goto 2482,20.16,77.99
    >>Talk to |cRXP_FRIENDLY_Fennar Mossmane|r
    .turnin 93830 >>Turn in Water of Hyjal
    .target Fennar Mossmane
step
    .goto 2482,21.08,80.19
    >>Talk to |cRXP_FRIENDLY_Osi Mistpaw|r
    .accept 93831 >>Accept Sweetpaw Jam
    .target Osi Mistpaw
step
    .goto 2482,21.77,78.98
    >>Talk to |cRXP_FRIENDLY_Elder Mistpaw|r
    .accept 93832 >>Accept Shatter the Stonewatchers
    .target Elder Mistpaw
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
    .goto 2482,21.77,78.98
    >>Talk to |cRXP_FRIENDLY_Elder Mistpaw|r
    .accept 93826 >>Accept Deal Dread to Deadwood
    .target Elder Mistpaw
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
    .accept 93833 >>Accept Wicked Wisdom
    .target Elder Pinespeaker
step
    .goto 2482,34.46,67.93
    >>Collect |cRXP_LOOT_[Intact Owl Body]|r from |cRXP_ENEMY_Hyjal Owl|r
    *Bring 5 owl bodies to Elder Pinespeaker in Barkskin Burrow in Hyjal.
    .complete 93833,1 --Wicked Wisdom
    .mob Hyjal Owl
step
    .goto 2482,21.77,79.18
    >>Talk to |cRXP_FRIENDLY_Elder Pinespeaker|r
    .turnin 93833 >>Turn in Wicked Wisdom
    .target Elder Pinespeaker
step
    .goto 2482,21.08,78.51
    >>Talk to |cRXP_FRIENDLY_Dala Fairmaw|r
    .accept 93834 >>Accept Burrow Beetles
    .target Dala Fairmaw
step
    .goto 2482,20.21,78.22
    >>Collect |cRXP_LOOT_[Burrow Beetle Bits]|r from |cRXP_ENEMY_Burrow Beetle|r
    *Gather 10 Burrow Beetle Bits for Dala Fairmaw.
    .complete 93834,1 --Burrow Beetles
    .mob Burrow Beetle
step
    .goto 2482,21.08,78.51
    >>Talk to |cRXP_FRIENDLY_Dala Fairmaw|r
    .turnin 93834 >>Turn in Burrow Beetles
    .target Dala Fairmaw
step
    .goto 2482,21.77,79.18
    >>Talk to |cRXP_FRIENDLY_Elder Pinespeaker|r
    .accept 95108 >>Accept Mystic Mix
    .target Elder Pinespeaker
step
    .goto 2482,21.77,78.98
    >>Talk to |cRXP_FRIENDLY_Elder Mistpaw|r
    .turnin 95108 >>Turn in Mystic Mix
    .target Elder Mistpaw
step
    .goto 2482,21.77,79.18
    >>Talk to |cRXP_FRIENDLY_Elder Pinespeaker|r
    .accept 96666 >>Accept Burrow Bonding
    .target Elder Pinespeaker
step
    .goto 2482,21.77,79.18
    >>Talk to |cRXP_FRIENDLY_Elder Pinespeaker|r
    .turnin 96666 >>Turn in Burrow Bonding
    .target Elder Pinespeaker
step
    .goto 2482,18.52,78.6
    >>Talk to |cRXP_FRIENDLY_Thobon Sapclaw|r
    .accept 93827 >>Accept Windswept Wards
    .target Thobon Sapclaw
step
    .goto 2482,22.89,46
    >>Kill |cRXP_ENEMY_Eternal Sentry|r
    *Destroy 6 Eternal Sentry gargoyles in the destroyed Alliance base in upper Hyjal and return to Elder Mistpaw.
    .complete 93832,1 --Shatter the Stonewatchers
    .mob Eternal Sentry
step
    .goto 2482,49.72,37.12
    >>Collect |cRXP_LOOT_[Horde Flag]|r from |cRXP_PICK_Horde Flag|r. Collect |cRXP_LOOT_[Scrap of Horde Heraldry]|r from |cRXP_ENEMY_Felguard Sentinel|r, |cRXP_ENEMY_Doomguard|r, |cRXP_ENEMY_Mazzogore|r
    *Collect 1 Horde Flag and 3 Scraps of Horde Heraldry for Kal'tinzan at Elderwild.
    .complete 91794,1 --Flags of Our Forebears
    .complete 91794,2 --Flags of Our Forebears
    .mob Felguard Sentinel
    .mob Doomguard
step
    .goto 2482,60.04,49.35
    >>Talk to |cRXP_FRIENDLY_Renalard|r
    .turnin 96964 >>Turn in A Clever Creature
    .accept 92335 >>Accept Ashes of the Legion Ascent
    .target Renalard
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
    .goto 2482,60.04,49.35
    >>Talk to |cRXP_FRIENDLY_Renalard|r
    .accept 96971 >>Accept To Outfox a Demon
    .target Renalard
step
    .goto 2482,50.45,59.1
    >>Collect |cRXP_LOOT_[Enchanted Harpy Amulet]|r from |cRXP_ENEMY_Wormwing Harpy|r, |cRXP_ENEMY_Wormwing Windwitch|r, |cRXP_ENEMY_Wormwing Ambusher|r
    *Collect 16 Enchanted Harpy Amulet and return to Thobon Sapclaw.
    .complete 93827,1 --Windswept Wards
    .mob Wormwing Harpy
    .mob Wormwing Windwitch
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
    .goto 2482,73.34,81.88
    >>Talk to |cRXP_FRIENDLY_Ketharas|r
    .turnin 92500 >>Turn in A Bit of the Sky
    .turnin 92317 >>Turn in Stolen Life
    .target Ketharas
step
    .goto 2482,73.21,78.33
    >>Collect |cRXP_LOOT_[Fel-Slime Ooze]|r from |cRXP_ENEMY_Noxious Slime|r, |cRXP_ENEMY_Forlorn Ghost|r. Collect |cRXP_LOOT_[Hyjal Owl Feather]|r from |cRXP_ENEMY_Hyjal Owl|r, |cRXP_ENEMY_Tainted Hyjal Owl|r
    *Gather 8 Fel-Slime Ooze.
    *Gather 9 Hyjal Owl Feathers for Zet'gan.
    .complete 95380,1 --A Prolific Source
    .complete 92609,1 --Feathers in Flight
    .mob Noxious Slime
    .mob Forlorn Ghost
    .mob Hyjal Owl
    .mob Tainted Hyjal Owl
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
    .accept 94782 >>Accept The Western Post
    .target Curious Crow
step
    .goto 2482,21.77,78.98
    >>Talk to |cRXP_FRIENDLY_Elder Mistpaw|r
    .turnin 93832 >>Turn in Shatter the Stonewatchers
    .target Elder Mistpaw
step
    .goto 2482,18.52,78.6
    >>Talk to |cRXP_FRIENDLY_Thobon Sapclaw|r
    .turnin 93827 >>Turn in Windswept Wards
    .target Thobon Sapclaw
step
    .goto 2482,13.77,53.06
    >>Talk to |cRXP_FRIENDLY_Kal'tinzan|r
    .turnin 91794 >>Turn in Flags of Our Forebears
    .target Kal'tinzan
step
    .goto 2482,13.82,54.75
    >>Talk to |cRXP_FRIENDLY_Zet'gan|r
    .turnin 92609 >>Turn in Feathers in Flight
    .turnin 94782 >>Turn in The Western Post
    .accept 95248 >>Accept To the Summit of Eternity
    .accept 92446 >>Accept Head Scratcher
    .target Zet'gan
step
    .goto 2482,33.36,71.16
    >>Collect |cRXP_LOOT_[Head Scratcher's Scratchers]|r from |cRXP_ENEMY_Head Scratcher|r
    *Take the rabbit carcass into the woods to the south, lure out Head Scratcher, defeat him, and bring his claws back to Zet'gan.
    .complete 92446,1 --Head Scratcher
    .mob Head Scratcher
step
    .goto 2482,13.82,54.75
    >>Talk to |cRXP_FRIENDLY_Zet'gan|r
    .turnin 92446 >>Turn in Head Scratcher
    .target Zet'gan
step
    .goto 2482,49.39,34.48
    >>Collect |cRXP_LOOT_[Azgalor's Ashes]|r from |cRXP_PICK_Azgalor's Remains|r. Collect |cRXP_LOOT_[Abandoned Supplies]|r from |cRXP_PICK_Abandoned Supplies|r
    *Fetch a pinch of Azgalor's Ashes from the ruins of Dae'gun on Mount Hyjal.
    *Collect 8 Abandoned Supplies.
    .complete 92335,1 --Ashes of the Legion Ascent
    .complete 96971,1 --To Outfox a Demon
step
    .goto 2482,60.04,49.35
    >>Talk to |cRXP_FRIENDLY_Renalard|r
    .turnin 96971 >>Turn in To Outfox a Demon
    .target Renalard
step
    .goto 2482,68.99,49.99
    >>Talk to |cRXP_FRIENDLY_Thisalee Crow|r
    .turnin 95248 >>Turn in To the Summit of Eternity
    .target Thisalee Crow
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
    .goto 2482,73.34,81.88
    >>Talk to |cRXP_FRIENDLY_Ketharas|r
    .turnin 92335 >>Turn in Ashes of the Legion Ascent
    .accept 90647 >>Accept The Staff of the Mountain
    .target Ketharas
step
    .goto 2482,68.85,50.6
    >>Talk to |cRXP_FRIENDLY_Tiala Whitemane|r
    .turnin 90647 >>Turn in The Staff of the Mountain
    .accept 92169 >>Accept Paying Back the Pact
    .target Tiala Whitemane
step
    .goto 2482,68.85,50.6
    >>Talk to |cRXP_FRIENDLY_Tiala Whitemane|r
    .turnin 92169 >>Turn in Paying Back the Pact
    .target Tiala Whitemane
step
    .goto 1458,54.7,38.76
    >>Talk to |cRXP_FRIENDLY_Abigail Sawyer|r
    .turnin 97001 >>Turn in Sawyer's Legacy
    .accept 97000 >>Accept Grain of Memory
    .accept 97006 >>Accept Notarized Claim
    .target Abigail Sawyer
step
    .goto 1458,69.79,43.16
    >>Talk to |cRXP_FRIENDLY_Royal Overseer Bauhaus|r
    .turnin 97006 >>Turn in Notarized Claim
    .accept 97007 >>Accept Wood Remains
    .target Royal Overseer Bauhaus
step
    .goto 1458,54.7,38.76
    >>Talk to |cRXP_FRIENDLY_Abigail Sawyer|r
    .turnin 97007 >>Turn in Wood Remains
    .target Abigail Sawyer
step
    .goto 1411,56.41,73.79
    >>Talk to |cRXP_FRIENDLY_Tai'tasi|r
    .turnin 96999 >>Turn in Wrap Return
    .target Tai'tasi
step
    .goto 2482,33.29,40.96
    >>Click the |cRXP_PICK_Old Wardrobe|r
    .turnin 97000 >>Turn in Grain of Memory
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
step
    .goto 1452,61.86,38.23
    >>Talk to |cRXP_FRIENDLY_Umaron Stragarelm|r
    .accept 97490 >>Accept Halt the Hail
    .target Umaron Stragarelm
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
    .goto 1451,18.3,85.84
    >>Collect |cRXP_LOOT_[Bolt of Runecloth]|r from |cRXP_ENEMY_Twilight Lord Everun|r
    *Bring 6 Bolts of Runecloth to Mez'dan in Elderwild on Mount Hyjal.
    .complete 95769,1 --Threading a Solution
    .mob Twilight Lord Everun
step
    .goto 2482,13.77,53.06
    >>Talk to |cRXP_FRIENDLY_Kal'tinzan|r
    .turnin 95769 >>Turn in Threading a Solution
    .target Kal'tinzan
step
    .goto 1446,34.13,63.3
    >>Collect |cRXP_LOOT_[Rugged Armor Kit]|r from |cRXP_ENEMY_Rabid Blisterpaw|r, |cRXP_ENEMY_Scorching Elemental|r, |cRXP_ENEMY_Larion|r
    *Bring 2 Rugged Armor Kits and 1 Cured Rugged Hide to Zet'gan in Elderwild on Mount Hyjal.
    .complete 90854,1 --Leather for Inclement Weather
    .mob Rabid Blisterpaw
    .mob Scorching Elemental
step
    >>Collect |cRXP_LOOT_[Cured Rugged Hide]|r
    *Bring 2 Rugged Armor Kits and 1 Cured Rugged Hide to Zet'gan in Elderwild on Mount Hyjal.
    .complete 90854,2 --Leather for Inclement Weather
step
    .goto 2482,13.82,54.75
    >>Talk to |cRXP_FRIENDLY_Zet'gan|r
    .turnin 90854 >>Turn in Leather for Inclement Weather
    .target Zet'gan
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 50-60
#name 59-60 Upper Blackrock Spire pre-quests
#displayname 59-60 Upper Blackrock Spire pre-quests
#next 59-60 Upper Blackrock Spire
step
    +|cRXP_WARN_Upper Blackrock Spire: pre-quests|r. 10 quests, solo (no group needed), roughly 2 h 55 min. The run guide comes after this one. Click to start.
    *Pre-quests: Eitrigg's Wisdom, What the Wind Carries, The Champion of the Horde, The Testament of Rexxar, Emberstrife, The Test of Skulls, Scryer, The Test of Skulls, Somnus, The Test of Skulls, Chronalis, The Test of Skulls, Axtroz, Ascension...
step
    .goto 1454,31.73,37.82
    >>Talk to |cRXP_FRIENDLY_Thrall|r
    .accept 6566 >>Accept What the Wind Carries
    .target Thrall
step
    .goto 1454,31.73,37.82
    >>Talk to |cRXP_FRIENDLY_Thrall|r
    .turnin 6566 >>Turn in What the Wind Carries
    .accept 6567 >>Accept The Champion of the Horde
    .target Thrall
step
    .goto 1444,46.39,18.24
    >>Talk to |cRXP_FRIENDLY_Rexxar|r
    .turnin 6567 >>Turn in The Champion of the Horde
    .accept 6568 >>Accept The Testament of Rexxar
    .target Rexxar
step
    .goto 1422,50.79,77.85
    >>Talk to |cRXP_FRIENDLY_Myranda the Hag|r
    .turnin 6568 >>Turn in The Testament of Rexxar
    .accept 6570 >>Accept Emberstrife
    .target Myranda the Hag
step
    .goto 1445,56.66,87.72
    >>Talk to |cRXP_FRIENDLY_Emberstrife|r
    .turnin 6570 >>Turn in Emberstrife
    .accept 6582 >>Accept The Test of Skulls, Scryer
    .accept 6583 >>Accept The Test of Skulls, Somnus
    .accept 6584 >>Accept The Test of Skulls, Chronalis
    .target Emberstrife
step
    >>Collect |cRXP_LOOT_[The Skull of Scryer]|r from |cRXP_ENEMY_Icemaw|r
    *You must find the blue dragonflight drake champion, Scryer, and slay him. Pry his skull from his corpse and return it to Emberstrife.
    .complete 6582,1 --The Test of Skulls, Scryer
    .mob Icemaw
step
    .goto 1445,56.66,87.72
    >>Talk to |cRXP_FRIENDLY_Emberstrife|r
    .turnin 6582 >>Turn in The Test of Skulls, Scryer
    .target Emberstrife
step
    .goto 1418,5.81,47.52
    >>Talk to |cRXP_FRIENDLY_Warlord Goretooth|r
    .accept 4941 >>Accept Eitrigg's Wisdom
    .target Warlord Goretooth
step
    .goto 1454,31.73,37.82
    >>Talk to |cRXP_FRIENDLY_Thrall|r
    .turnin 4941 >>Turn in Eitrigg's Wisdom
    .target Thrall
step
    .goto 1435,74.12,68.35
    >>Collect |cRXP_LOOT_[The Skull of Somnus]|r from |cRXP_ENEMY_Somnus|r
    *Destroy the drake champion of the Green Flight, Somnus. Take his skull and return it to Emberstrife.
    .complete 6583,1 --The Test of Skulls, Somnus
    .mob Somnus
step
    .goto 1445,56.66,87.72
    >>Talk to |cRXP_FRIENDLY_Emberstrife|r
    .turnin 6583 >>Turn in The Test of Skulls, Somnus
    .target Emberstrife
step
    .goto 1446,64.16,48.49
    >>Collect |cRXP_LOOT_[The Skull of Chronalis]|r from |cRXP_ENEMY_Chronalis|r
    *Guarding the Caverns of Time in the Tanaris Desert is Chronalis, child of Nozdormu. Destroy him and return his skull to Emberstrife.
    .complete 6584,1 --The Test of Skulls, Chronalis
    .mob Chronalis
step
    .goto 1445,56.66,87.72
    >>Talk to |cRXP_FRIENDLY_Emberstrife|r
    .turnin 6584 >>Turn in The Test of Skulls, Chronalis
    .accept 6585 >>Accept The Test of Skulls, Axtroz
    .target Emberstrife
step
    .goto 1437,81.82,48.24
    >>Collect |cRXP_LOOT_[The Skull of Axtroz]|r from |cRXP_ENEMY_Axtroz|r
    *Travel to Grim Batol and track down Axtroz, drake champion of the Red Flight. Destroy him and take his skull. Return the skull to Emberstrife.
    .complete 6585,1 --The Test of Skulls, Axtroz
    .mob Axtroz
step
    .goto 1445,56.66,87.72
    >>Talk to |cRXP_FRIENDLY_Emberstrife|r
    .turnin 6585 >>Turn in The Test of Skulls, Axtroz
    .accept 6601 >>Accept Ascension...
    .target Emberstrife
step
    .goto 1444,46.39,18.24
    >>Talk to |cRXP_FRIENDLY_Rexxar|r
    .turnin 6601 >>Turn in Ascension...
    .target Rexxar
step
    +|cRXP_WARN_Pre-quests done.|r Next: Upper Blackrock Spire itself. That guide tells you when to find a group. Click to continue.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 50-60
#name 59-60 Upper Blackrock Spire
#displayname 59-60 Upper Blackrock Spire
#next 55-60 Stranglethorn Vale (3rd visit)
step
    +|cRXP_WARN_Upper Blackrock Spire|r (levels 59-60). Pick up 9 dungeon quests solo (roughly 1 h 50 min with the hand-ins), then ONE run with a group (roughly 2 h 40 min). No group needed until the run step. Click to start.
    *Door: Same entrance, the upstairs door on the left. One player needs the Seal of Ascension.
    *Lower Blackrock Spire 55-60, Upper Blackrock Spire 59-60.
    *Its 10 pre-quests are in the guide before this one. Skipped them? Some quests below won't be offered: skip those steps.
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1444,46.39,18.24
    >>Talk to |cRXP_FRIENDLY_Rexxar|r
    .accept 6602 >>Accept Blood of the Black Dragon Champion
    .target Rexxar
step
    .goto 1458,50.14,67.97
    >>Talk to |cRXP_FRIENDLY_Apothecary Zinge|r
    .accept 4769 >>Accept Vivian Lagrave and the Darkstone Tablet
    .target Apothecary Zinge
step
    .goto 1454,31.73,37.82
    >>Talk to |cRXP_FRIENDLY_Thrall|r
    .accept 4974 >>Accept For The Horde!
    .target Thrall
step
    .goto 1422,50.79,77.85
    >>Talk to |cRXP_FRIENDLY_Myranda the Hag|r
    .accept 6569 >>Accept Oculus Illusions
    .target Myranda the Hag
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in.|r
step
    .goto 1427,34.8,85.3
    >>Inside Upper Blackrock Spire: these quests start from a drop or an object in the dungeon
    .accept 5047 >>Accept Finkle Einhorn, At Your Service!
    .accept 5160 >>Accept The Matron Protectorate
    .accept 8995 >>Accept Mea Culpa, Lord Valthalak
step
    .goto 1427,34.8,85.3
    >>Loot |cRXP_LOOT_[Blackhand's Command]|r from |cRXP_ENEMY_Scarshield Quartermaster|r, then click it to start the quest
    .accept 7761 >>Accept Blackhand's Command
    .use 18987
    .mob Scarshield Quartermaster
step
    .goto 1427,34.8,85.3
    >>Enter |cRXP_WARN_Upper Blackrock Spire|r with your group. Quest goals inside:
    *For The Horde!: Travel to Blackrock Spire and slay Warchief Rend Blackhand. Take his head and return to Orgrimmar.
    *Oculus Illusions: Travel to Blackrock Spire and collect 20 Black Dragonspawn Eyes. Return to Myranda the Hag when the task is complete.
    *Blood of the Black Dragon Champion: Travel to Blackrock Spire and slay General Drakkisath. Gather his blood and return it to Rexxar.
    *Mea Culpa, Lord Valthalak: Use the Brazier of Beckoning to summon Lord Valthalak. Dispatch him, and use Lord Valthalak's Amulet on the corpse. Then, return Lord Valthalak's Amulet to the Spirit of Lord Valthalak.
    .complete 4974,1 --For The Horde!
    .complete 6569,1 --Oculus Illusions
    .complete 6602,1 --Blood of the Black Dragon Champion
    .complete 8995,1 --Mea Culpa, Lord Valthalak
    .complete 8995,2 --Mea Culpa, Lord Valthalak
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1427,34.8,85.3
    >>Loot |cRXP_LOOT_[Blackhand's Command]|r from |cRXP_ENEMY_Scarshield Quartermaster|r, then click it to start the quest
    .turnin 7761 >>Turn in Blackhand's Command
step
    .goto 1427,34.8,85.3
    >>Inside Upper Blackrock Spire: these quests start from a drop or an object in the dungeon
    .turnin 8995 >>Turn in Mea Culpa, Lord Valthalak
step
    .goto 1418,2.9,47.76
    >>Talk to |cRXP_FRIENDLY_Shadowmage Vivian Lagrave|r
    .turnin 4769 >>Turn in Vivian Lagrave and the Darkstone Tablet
    .target Shadowmage Vivian Lagrave
step
    .goto 1454,31.73,37.82
    >>Talk to |cRXP_FRIENDLY_Thrall|r
    .turnin 4974 >>Turn in For The Horde!
    .target Thrall
step
    .goto 1452,60.99,38.78
    >>Talk to |cRXP_FRIENDLY_Malyfous Darkhammer|r
    .turnin 5047 >>Turn in Finkle Einhorn, At Your Service!
    .target Malyfous Darkhammer
step
    .goto 1452,54.55,51.2
    >>Talk to |cRXP_FRIENDLY_Haleh|r
    .turnin 5160 >>Turn in The Matron Protectorate
    .target Haleh
step
    .goto 1422,50.79,77.85
    >>Talk to |cRXP_FRIENDLY_Myranda the Hag|r
    .turnin 6569 >>Turn in Oculus Illusions
    .target Myranda the Hag
step
    .goto 1444,46.39,18.24
    >>Talk to |cRXP_FRIENDLY_Rexxar|r
    .turnin 6602 >>Turn in Blood of the Black Dragon Champion
    .target Rexxar
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1418,2.9,47.76
    >>Talk to |cRXP_FRIENDLY_Shadowmage Vivian Lagrave|r
    .accept 4768 >>Accept The Darkstone Tablet
    .target Shadowmage Vivian Lagrave
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in. (run 2)|r
step
    .goto 1427,34.8,85.3
    >>Enter |cRXP_WARN_Upper Blackrock Spire|r with your group. Quest goals inside:
    *The Darkstone Tablet: Bring the Darkstone Tablet to Shadow Mage Vivian Lagrave in Kargath.
    .complete 4768,1 --The Darkstone Tablet
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1418,2.9,47.76
    >>Talk to |cRXP_FRIENDLY_Shadowmage Vivian Lagrave|r
    .turnin 4768 >>Turn in The Darkstone Tablet
    .target Shadowmage Vivian Lagrave
step
    .goto 1427,34.8,85.3
    +Dungeon entrance: Upper Blackrock Spire. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 50-60
#name 55-60 Stranglethorn Vale (3rd visit)
#displayname 55-60 Stranglethorn Vale (3rd visit)
#next 52-58 Azshara (2nd visit)
step
    +|cRXP_WARN_Back to Stranglethorn Vale: its quests that were too high last time|r
step
    .zone 1434 >>Travel to Stranglethorn Vale
    *How: Fly to Grom'gol (or the zeppelin Orgrimmar -> Grom'gol).
    *Level for this part: 55-60. 6 quests, roughly 1 h 15 min.
step
    .goto 1434,27.39,69.42
    >>Talk to |cRXP_FRIENDLY_"Pretty Boy" Duncan|r
    .accept 1036 >>Accept Avast Ye, Scallywag
    .target "Pretty Boy" Duncan
step
    >>Earn the required reputation
    *Speak with Fleet Master Firallon aboard the Crimson Vale off the coast of Stranglethorn Vale.
    .complete 1036,1 --Avast Ye, Scallywag
step
    .goto 1434,28.52,75.86
    >>Talk to |cRXP_FRIENDLY_Pix Xizzix|r
    .accept 96076 >>Accept In Demand - Ancient Elven Curiosities
    .accept 96075 >>Accept In Demand - Blackrock Legal Records
    .accept 83934 >>Accept Show Me the Money!
    .target Pix Xizzix
step
    .goto 1434,28.52,75.86
    >>Talk to |cRXP_FRIENDLY_Pix Xizzix|r
    .turnin 83934 >>Turn in Show Me the Money!
    .target Pix Xizzix
step
    >>Collect |cRXP_LOOT_[Felvine Seed]|r from |cRXP_ENEMY_Alzzin the Wildshaper|r. Collect |cRXP_LOOT_[Earthstone Diamond Pinky Ring]|r from |cRXP_ENEMY_King Gordok|r. Collect |cRXP_LOOT_[Ancient Memento]|r from |cRXP_ENEMY_Prince Tortheldrin|r. Collect |cRXP_LOOT_[Nefarion's Remit]|r from |cRXP_ENEMY_General Drakkisath|r. Collect |cRXP_LOOT_[Overseer's License]|r from |cRXP_ENEMY_Overlord Wyrmthalak|r. Collect |cRXP_LOOT_[Bronzebeard Wedding Contract]|r from |cRXP_ENEMY_Emperor Dagran Thaurissan|r
    *Travel to Dire Maul to acquire a Felvine Seed from Alzzin the Wildshaper, an Ancient Memento from Prince Tortheldrin, and an Earthstone Diamond Pinky Ring from King Gordok, and bring them to Pix Xizzix in Booty Bay.
    *Acquire Nefarian's Remit from General Drakkisath in Blackrock Spire, Overseer's License from Overlord Wyrmthalak in Blackrock Spire, and Bronzebeard Wedding Contract from Emperor Thaurissan in Blackrock Depths, and bring them to Pix Xizzix in Booty Bay.
    .complete 96076,1 --In Demand - Ancient Elven Curiosities
    .complete 96076,2 --In Demand - Ancient Elven Curiosities
    .complete 96076,3 --In Demand - Ancient Elven Curiosities
    .complete 96075,1 --In Demand - Blackrock Legal Records
    .complete 96075,2 --In Demand - Blackrock Legal Records
    .complete 96075,3 --In Demand - Blackrock Legal Records
    .mob Alzzin the Wildshaper
    .mob King Gordok
    .mob Prince Tortheldrin
    .mob General Drakkisath
    .mob Overlord Wyrmthalak
    .mob Emperor Dagran Thaurissan
step
    .goto 1434,28.52,75.86
    >>Talk to |cRXP_FRIENDLY_Pix Xizzix|r
    .turnin 96076 >>Turn in In Demand - Ancient Elven Curiosities
    .turnin 96075 >>Turn in In Demand - Blackrock Legal Records
    .target Pix Xizzix
step
    .goto 1434,30.58,90.63
    >>Talk to |cRXP_FRIENDLY_Fleet Master Firallon|r
    .turnin 1036 >>Turn in Avast Ye, Scallywag
    .accept 9272 >>Accept Dressing the Part
    .accept 4621 >>Accept Avast Ye, Admiral!
    .target Fleet Master Firallon
step
    .goto 1434,30.58,90.63
    >>Talk to |cRXP_FRIENDLY_Fleet Master Firallon|r
    .turnin 9272 >>Turn in Dressing the Part
    .target Fleet Master Firallon
step
    .goto 1434,27.23,76.87
    >>Kill |cRXP_ENEMY_Baron Revilgaz|r. Kill |cRXP_ENEMY_Fleet Master Seahorn|r
    *Slay Fleet Master Seahorn and Baron Revilgaz of Booty Bay, and then return to Fleet Master Firallon aboard the Crimson Veil off the coast of Stranglethorn Vale.
    .complete 4621,1 --Avast Ye, Admiral!
    .complete 4621,2 --Avast Ye, Admiral!
    .mob Baron Revilgaz
    .mob Fleet Master Seahorn
step
    >>Earn the required reputation
    *Slay Fleet Master Seahorn and Baron Revilgaz of Booty Bay, and then return to Fleet Master Firallon aboard the Crimson Veil off the coast of Stranglethorn Vale.
    .complete 4621,3 --Avast Ye, Admiral!
step
    .goto 1434,30.58,90.63
    >>Talk to |cRXP_FRIENDLY_Fleet Master Firallon|r
    .turnin 4621 >>Turn in Avast Ye, Admiral!
    .target Fleet Master Firallon
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 50-60
#name 52-58 Azshara (2nd visit)
#displayname 52-58 Azshara (2nd visit)
#next 55-60 Western/Eastern Plaguelands (2nd visit)
step
    +|cRXP_WARN_Back to Azshara: its quests that were too high last time|r
step
    .zone 1447 >>Travel to Azshara
    *How: Fly to Valormok.
    *Level for this part: 52-58. 8 quests, roughly 1 h 5 min.
step
    .goto 1447,60.82,66.35
    >>Talk to |cRXP_FRIENDLY_Loramus Thalipedes|r
    .accept 3141 >>Accept Loramus
    .target Loramus Thalipedes
step
    .goto 1447,60.82,66.35
    >>Talk to |cRXP_FRIENDLY_Loramus Thalipedes|r
    .turnin 3141 >>Turn in Loramus
    .accept 3508 >>Accept Breaking the Ward
    .target Loramus Thalipedes
step
    .goto 1447,60.82,66.35
    >>Talk to |cRXP_FRIENDLY_Loramus Thalipedes|r
    .turnin 3508 >>Turn in Breaking the Ward
    .accept 3509 >>Accept The Name of the Beast
    .target Loramus Thalipedes
step
    .goto 1447,77.13,42.79
    >>Talk to |cRXP_FRIENDLY_Lord Arkkoroc|r
    .turnin 3509 >>Turn in The Name of the Beast
    .accept 3510 >>Accept The Name of the Beast
    .target Lord Arkkoroc
step
    .goto 1447,56.73,44.79
    >>Collect |cRXP_LOOT_[Hetaera's Beaten Head]|r from |cRXP_ENEMY_Hetaera|r. Collect |cRXP_LOOT_[Hetaera's Bloodied Head]|r from |cRXP_ENEMY_Hetaera|r. Collect |cRXP_LOOT_[Hetaera's Bruised Head]|r from |cRXP_ENEMY_Hetaera|r
    *Slay Hetaera and bring back Hetaera's Bloodied Head, Hetaera's Beaten Head, and Hetaera's Bruised Head to Lord Arkkoroc.
    .complete 3510,1 --The Name of the Beast
    .complete 3510,2 --The Name of the Beast
    .complete 3510,3 --The Name of the Beast
    .mob Hetaera
step
    .goto 1447,77.13,42.79
    >>Talk to |cRXP_FRIENDLY_Lord Arkkoroc|r
    .turnin 3510 >>Turn in The Name of the Beast
    .accept 3511 >>Accept The Name of the Beast
    .target Lord Arkkoroc
step
    .goto 1447,60.82,66.35
    >>Talk to |cRXP_FRIENDLY_Loramus Thalipedes|r
    .turnin 3511 >>Turn in The Name of the Beast
    .accept 3602 >>Accept Azsharite
    .target Loramus Thalipedes
step
    .goto 1447,55.57,86.97
    >>Collect |cRXP_LOOT_[Crystallized Azsharite]|r from |cRXP_PICK_Azsharite Formation|r, |cRXP_PICK_Azsharite Formation|r
    *Recover twenty Crystallized Azsharite from southern Azshara. You may use the Felhound to assist you in 'sniffing' out the location of cleverly hidden deposits.
    .complete 3602,1 --Azsharite
step
    .goto 1447,60.82,66.35
    >>Talk to |cRXP_FRIENDLY_Loramus Thalipedes|r
    .turnin 3602 >>Turn in Azsharite
    .accept 3621 >>Accept The Formation of Felbane
    .target Loramus Thalipedes
step
    .goto 1434,50.62,20.48
    >>Talk to |cRXP_FRIENDLY_Galvan the Ancient|r
    .turnin 3621 >>Turn in The Formation of Felbane
    .target Galvan the Ancient
step
    .goto 1454,55.52,34.08
    >>Talk to |cRXP_FRIENDLY_Jes'rimon|r
    .accept 91735 >>Accept Remote Contact
    .target Jes'rimon
step
    .goto 1447,22.56,51.42
    >>Talk to |cRXP_FRIENDLY_Jediga|r
    .turnin 91735 >>Turn in Remote Contact
    .target Jediga
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Full Journey
#groupweight 100
#subgroup Levels 50-60
#name 55-60 Western/Eastern Plaguelands (2nd visit)
#displayname 55-60 Western/Eastern Plaguelands (2nd visit)
step
    +|cRXP_WARN_Back to Western: its quests that were too high last time|r
step
    #completewith next
    +|cRXP_WARN_On the way: lead-in quests in Winterspring that open quests in Western|r
step
    .goto 1452,54.55,51.2
    >>Talk to |cRXP_FRIENDLY_Haleh|r
    .accept 5161 >>Accept Wrath of the Blue Flight
    .target Haleh
step
    .goto 1452,54.55,51.2
    >>Talk to |cRXP_FRIENDLY_Haleh|r
    .turnin 5161 >>Turn in Wrath of the Blue Flight
    .accept 5162 >>Accept Wrath of the Blue Flight
    .target Haleh
step
    .goto 1452,61.28,38.98
    >>Talk to |cRXP_FRIENDLY_Jessica Redpath|r
    .accept 5601 >>Accept Sister Pamela
    .target Jessica Redpath
step
    .zone 1422 >>Travel to Western
    *How: Fly to the Bulwark (Tirisfal); later Light's Hope Chapel.
    *Level for this part: 55-60. 17 quests, roughly 3 h 20 min.
step
    .goto 1422,39.37,66.78
    >>Talk to |cRXP_FRIENDLY_Jeziba|r
    .turnin 5162 >>Turn in Wrath of the Blue Flight
    .accept 5164 >>Accept Catalogue of the Wayward
    .target Jeziba
step
    .goto 1422,39.35,66.6
    >>Click the |cRXP_PICK_Catalogue of the Wayward|r
    .turnin 5164 >>Turn in Catalogue of the Wayward
    .accept 5166 >>Accept Breastplate of the Chromatic Flight
    .accept 5167 >>Accept Legplates of the Chromatic Defier
step
    .goto 1422,39.35,66.6
    >>Collect |cRXP_LOOT_[Chromatic Carapace]|r from |cRXP_ENEMY_Gyth|r. Collect |cRXP_LOOT_[Brilliant Chromatic Scale]|r from |cRXP_ENEMY_Chromatic Whelp|r, |cRXP_ENEMY_Chromatic Dragonspawn|r, |cRXP_ENEMY_Chromatic Elite Guard|r. Collect |cRXP_LOOT_[Blood of Heroes]|r from |cRXP_PICK_Blood of Heroes|r. Collect |cRXP_LOOT_[Frayed Abomination Stitching]|r from |cRXP_ENEMY_Patchwork Horror|r, |cRXP_ENEMY_Bile Spewer|r, |cRXP_ENEMY_Venom Belcher|r. Collect |cRXP_LOOT_[Skin of Shadow]|r from |cRXP_ENEMY_Risen Construct|r, |cRXP_ENEMY_Risen Bonewarder|r, |cRXP_ENEMY_Lady Illucia Barov|r
    *To forge the Breastplate of the Chromatic Flight, you will be required to bring the following items to Jeziba the 'Sculptor':
    *To forge the Legplates of the Chromatic Defier, you will be required to bring the following items to Jeziba the 'Sculptor':
    .complete 5166,1 --Breastplate of the Chromatic Flight
    .complete 5166,2 --Breastplate of the Chromatic Flight
    .complete 5166,3 --Breastplate of the Chromatic Flight
    .complete 5166,4 --Breastplate of the Chromatic Flight
    .complete 5167,1 --Legplates of the Chromatic Defier
    .complete 5167,2 --Legplates of the Chromatic Defier
    .complete 5167,3 --Legplates of the Chromatic Defier
    .complete 5167,4 --Legplates of the Chromatic Defier
    .mob Gyth
    .mob Chromatic Whelp
    .mob Chromatic Dragonspawn
    .mob Patchwork Horror
    .mob Bile Spewer
    .mob Risen Construct
    .mob Risen Bonewarder
step
    .goto 1422,39.37,66.78
    >>Talk to |cRXP_FRIENDLY_Jeziba|r
    .turnin 5166 >>Turn in Breastplate of the Chromatic Flight
    .turnin 5167 >>Turn in Legplates of the Chromatic Defier
    .target Jeziba
step
    .goto 1423,31.15,77.98
    >>Talk to |cRXP_FRIENDLY_Pamela Redpath|r
    .turnin 5601 >>Turn in Sister Pamela
    .target Pamela Redpath
step
    .goto 1423,71.79,50.25
    >>Talk to |cRXP_FRIENDLY_Quartermaster Miranda Breechlock|r
    .accept 5513 >>Accept Mantles of the Dawn
    .target Quartermaster Miranda Breechlock
step
    .goto 1423,71.63,50.09
    >>Talk to |cRXP_FRIENDLY_Duke Nicholas Zverenhoff|r
    .accept 5264 >>Accept Lord Maxwell Tyrosus
    .accept 5503 >>Accept Argent Dawn Commission
    .target Duke Nicholas Zverenhoff
step
    .goto 1423,71.7,48.69
    >>Talk to |cRXP_FRIENDLY_Archmage Angela Dosantos|r
    .accept 9122 >>Accept The Dread Citadel - Naxxramas
    .target Archmage Angela Dosantos
step
    .goto 1423,71.9,48.41
    >>Talk to |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .turnin 5264 >>Turn in Lord Maxwell Tyrosus
    .target Lord Maxwell Tyrosus
step
    .goto 1423,71.63,50.09
    >>Talk to |cRXP_FRIENDLY_Duke Nicholas Zverenhoff|r
    .turnin 5503 >>Turn in Argent Dawn Commission
    .target Duke Nicholas Zverenhoff
step
    >>Collect |cRXP_LOOT_[Argent Dawn Valor Token]|r. Earn the required reputation. Collect |cRXP_LOOT_[Nexus Crystal]|r
    *Bring 10 Argent Dawn Valor Tokens to Quartermaster Breechlock at Light's Hope Chapel, Eastern Plaguelands.
    *Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands wants 2 Arcane Crystals, 1 Nexus Crystal and 30 gold pieces. You must also be Revered with the Argent Dawn.
    .complete 5513,1 --Mantles of the Dawn
    .complete 5513,2 --Mantles of the Dawn
    .complete 9122,2 --The Dread Citadel - Naxxramas
    .complete 9122,3 --The Dread Citadel - Naxxramas
step
    .goto 1423,71.79,50.25
    >>Talk to |cRXP_FRIENDLY_Quartermaster Miranda Breechlock|r
    .turnin 5513 >>Turn in Mantles of the Dawn
    .target Quartermaster Miranda Breechlock
step
    .goto 1423,71.9,48.41
    >>Talk to |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .accept 5265 >>Accept The Argent Hold
    .target Lord Maxwell Tyrosus
step
    .goto 1423,71.96,48.41
    >>Click the |cRXP_PICK_The Argent Hold|r
    .turnin 5265 >>Turn in The Argent Hold
step
    .goto 1423,5.16,35.57
    >>Talk to |cRXP_FRIENDLY_Tirion Fordring|r
    .accept 5861 >>Accept Find Myranda
    .target Tirion Fordring
step
    .goto 1422,50.79,77.85
    >>Talk to |cRXP_FRIENDLY_Myranda the Hag|r
    .turnin 5861 >>Turn in Find Myranda
    .accept 5862 >>Accept Scarlet Subterfuge
    .target Myranda the Hag
step
    .goto 1422,64.85,36.55
    >>Collect |cRXP_LOOT_[Arcane Crystal]|r from |cRXP_PICK_Small Thorium Vein|r, |cRXP_PICK_Ooze Covered Thorium Vein|r
    *Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands wants 2 Arcane Crystals, 1 Nexus Crystal and 30 gold pieces. You must also be Revered with the Argent Dawn.
    .complete 9122,1 --The Dread Citadel - Naxxramas
step
    .goto 1422,42.02,14.79
    >>Talk to |cRXP_FRIENDLY_Highlord Taelan Fordring|r
    .turnin 5862 >>Turn in Scarlet Subterfuge
    .accept 5944 >>Accept In Dreams
    .target Highlord Taelan Fordring
step
    .goto 1423,71.7,48.69
    >>Talk to |cRXP_FRIENDLY_Archmage Angela Dosantos|r
    .turnin 9122 >>Turn in The Dread Citadel - Naxxramas
    .target Archmage Angela Dosantos
step
    .goto 1423,5.16,35.57
    >>Talk to |cRXP_FRIENDLY_Tirion Fordring|r
    .turnin 5944 >>Turn in In Dreams
    .target Tirion Fordring
step
    .goto 1420,83.26,68.14
    >>Talk to |cRXP_FRIENDLY_Argent Quartermaster Hasana|r
    .accept 5524 >>Accept Chromatic Mantle of the Dawn
    .target Argent Quartermaster Hasana
step
    >>Collect |cRXP_LOOT_[Argent Dawn Valor Token]|r. Earn the required reputation
    *Bring 25 Argent Dawn Valor Tokens to Quartermaster Hasana at the Bulwark, Western Plaguelands.
    .complete 5524,1 --Chromatic Mantle of the Dawn
    .complete 5524,2 --Chromatic Mantle of the Dawn
step
    .goto 1420,83.26,68.14
    >>Talk to |cRXP_FRIENDLY_Argent Quartermaster Hasana|r
    .turnin 5524 >>Turn in Chromatic Mantle of the Dawn
    .target Argent Quartermaster Hasana
step
    .goto 1420,83.06,71.6
    >>Talk to |cRXP_FRIENDLY_Alexi Barov|r
    .accept 5342 >>Accept The Last Barov
    .target Alexi Barov
step
    .goto 1458,63.9,44.08
    >>Talk to |cRXP_FRIENDLY_Harbinger Balthazad|r
    .accept 5094 >>Accept A Call to Arms: The Plaguelands!
    .target Harbinger Balthazad
step
    .goto 1420,83.13,68.94
    >>Talk to |cRXP_FRIENDLY_High Executor Derrington|r
    .turnin 5094 >>Turn in A Call to Arms: The Plaguelands!
    .target High Executor Derrington
step
    .goto 1422,43.45,83.73
    >>Collect |cRXP_LOOT_[Head of Weldon Barov]|r from |cRXP_ENEMY_Weldon Barov|r
    *Travel to Chillwind Camp - Alliance territory - and assassinate Weldon Barov. Take his head and return to Alexi Barov.
    .complete 5342,1 --The Last Barov
    .mob Weldon Barov
step
    .goto 1420,83.06,71.6
    >>Talk to |cRXP_FRIENDLY_Alexi Barov|r
    .turnin 5342 >>Turn in The Last Barov
    .target Alexi Barov
]])
