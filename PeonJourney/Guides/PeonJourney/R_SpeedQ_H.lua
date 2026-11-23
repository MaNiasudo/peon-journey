RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 20-29
#name 22-25 Stonetalon/Barrens
#displayname 22-25 Stonetalon/Barrens
#next 25-26 Ashenvale
step
    .zone 1442 >>Travel to Stonetalon
    *How: The starter route ends in the Barrens/Stonetalon: fly to Sun Rock Retreat.
    *Level for this part: 22-25. 37 quests, roughly 6 h 45 min.
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
    .accept 1088 >>Accept Ordanus
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
    .goto 1413,43.07,70.08
    >>Loot |cRXP_LOOT_[Harvester's Head]|r from |cRXP_ENEMY_Silithid Harvester|r, then click it to start the quest
    .accept 897 >>Accept The Harvester
    .use 5138
    .mob Silithid Harvester
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
    >>Kill |cRXP_ENEMY_Hecklefang Stalker|r. Kill |cRXP_ENEMY_Stormhide|r
    *Sulhasa in southern Barrens wants you to clear out 7 Stormhide lizards and 7 Hecklefang Stalkers in the area so she can leave the tree safely.
    .complete 98093,1 --Field to Clear
    .complete 98093,2 --Field to Clear
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
    .goto 1413,44.86,59.14
    >>Talk to |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 897 >>Turn in The Harvester
    .turnin 885 >>Turn in Washte Pawne
    .target Jorn Skyseer
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
    .goto 1413,61.96,54.96
    >>Talk to |cRXP_FRIENDLY_Gilthares Firebough|r
    .accept 898 >>Accept Free From the Hold
    .target Gilthares Firebough
step
    .goto 1413,62.29,39.03
    >>Talk to |cRXP_FRIENDLY_Captain Thalo'thas Brightsun|r
    .turnin 898 >>Turn in Free From the Hold
    .accept 891 >>Accept The Guns of Northwatch
    .target Captain Thalo'thas Brightsun
step
    .goto 1413,52.26,31.93
    >>Talk to |cRXP_FRIENDLY_Tonga Runetotem|r
    .accept 3301 >>Accept Mura Runetotem
    .target Tonga Runetotem
step
    .goto 1413,51.07,29.63
    >>Talk to |cRXP_FRIENDLY_Korran|r
    .accept 868 >>Accept Egg Hunt
    .target Korran
step
    .goto 1413,35.26,27.88
    >>Talk to |cRXP_FRIENDLY_Seereth Stonebreak|r
    .accept 1068 >>Accept Shredding Machines
    .target Seereth Stonebreak
step
    .goto 1413,49.05,11.17
    >>Talk to |cRXP_FRIENDLY_Wenikee Boltbucket|r
    .accept 3922 >>Accept Nugget Slugs
    .target Wenikee Boltbucket
step
    .goto 1413,48.12,5.42
    >>Talk to |cRXP_FRIENDLY_Kadrak|r
    .accept 6543 >>Accept The Warsong Reports
    .target Kadrak
step
    .goto 1413,48.12,5.42
    >>Collect |cRXP_LOOT_[Nugget Slug]|r from |cRXP_PICK_Tool Bucket|r. Collect |cRXP_LOOT_[Warsong Scout Update]|r. Collect |cRXP_LOOT_[Warsong Runner Update]|r. Collect |cRXP_LOOT_[Warsong Outrider Update]|r
    *Bring 15 Nugget Slugs to Wenikee Boltbucket in the Barrens.
    *Open the Bundle of Reports. Take the Warsong Reports to the Warsong Scout, Warsong Runner, and Warsong Outrider. Bring back the updates they give you to Kadrak at the northern watch tower in the barrens.
    .complete 3922,1 --Nugget Slugs
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
    .turnin 3922 >>Turn in Nugget Slugs
    .accept 3923 >>Accept Rilli Greasygob
    .target Wenikee Boltbucket
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
    .target Captain Thalo'thas Brightsun
step
    .goto 1413,44.9,72.55
    >>Collect |cRXP_LOOT_[Kuz's Skull]|r from |cRXP_ENEMY_Kuz|r. Collect |cRXP_LOOT_[Razormane Backstabber]|r from |cRXP_ENEMY_Razormane Pathfinder|r, |cRXP_ENEMY_Razormane Stalker|r. Collect |cRXP_LOOT_[Razormane War Shield]|r from |cRXP_ENEMY_Razormane Warfrenzy|r. Collect |cRXP_LOOT_[Silithid Egg]|r from |cRXP_ENEMY_Silithid Creeper|r, |cRXP_ENEMY_Silithid Grub|r, |cRXP_ENEMY_Silithid Swarmer|r
    *Kill Nak, Kuz, and Lok Orcbane and bring their skulls to Mangletooth at Camp Taurajo in the Barrens.
    *Bring a Razormane Backstabber, a Charred Razormane Wand and a Razormane War Shield to Tatternack Steelforge at Camp Taurajo in the Barrens.
    *Bring 12 Silithid Eggs and the Digging Claw to Korran at the Crossroads.
    .complete 879,1 --Betrayal from Within
    .complete 893,1 --Weapons of Choice
    .complete 893,3 --Weapons of Choice
    .complete 868,1 --Egg Hunt
    .mob Kuz
    .mob Razormane Pathfinder
    .mob Razormane Stalker
    .mob Razormane Warfrenzy
    .mob Silithid Creeper
    .mob Silithid Grub
step
    .goto 1413,43.75,83.26
    >>Collect |cRXP_LOOT_[Nak's Skull]|r from |cRXP_ENEMY_Nak|r. Collect |cRXP_LOOT_[Lok's Skull]|r from |cRXP_ENEMY_Lok Orcbane|r. Collect |cRXP_LOOT_[Charred Razormane Wand]|r from |cRXP_ENEMY_Razormane Seer|r
    *Kill Nak, Kuz, and Lok Orcbane and bring their skulls to Mangletooth at Camp Taurajo in the Barrens.
    *Bring a Razormane Backstabber, a Charred Razormane Wand and a Razormane War Shield to Tatternack Steelforge at Camp Taurajo in the Barrens.
    .complete 879,2 --Betrayal from Within
    .complete 879,3 --Betrayal from Within
    .complete 893,2 --Weapons of Choice
    .mob Nak
    .mob Lok Orcbane
    .mob Razormane Seer
step
    .goto 1413,44.55,59.26
    >>Talk to |cRXP_FRIENDLY_Mangletooth|r
    .turnin 879 >>Turn in Betrayal from Within
    .target Mangletooth
step
    .goto 1413,45.1,57.68
    >>Talk to |cRXP_FRIENDLY_Tatternack Steelforge|r
    .turnin 893 >>Turn in Weapons of Choice
    .accept 1153 >>Accept A New Ore Sample
    .target Tatternack Steelforge
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
    .goto 1436,37.41,50.7
    >>Click the |cRXP_PICK_Burned-Out Remains|r
    .turnin 79007 >>Turn in ... and that note you found
step
    .goto 1421,42.91,41.99
    >>Talk to |cRXP_FRIENDLY_Mura Runetotem|r
    .turnin 3301 >>Turn in Mura Runetotem
    .target Mura Runetotem
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
step
    .goto 1440,62.05,51.37
    >>Collect |cRXP_LOOT_[Ordanus' Head]|r from |cRXP_ENEMY_Keeper Ordanus|r
    *Bring Ordanus' head to Braelyn Firehand near Sun Rock Retreat.
    .complete 1088,1 --Ordanus
    .mob Keeper Ordanus
step
    .goto 1442,45.94,60.42
    >>Talk to |cRXP_FRIENDLY_Braelyn Firehand|r
    .turnin 1088 >>Turn in Ordanus
    .accept 1089 >>Accept The Den
    .target Braelyn Firehand
step
    .goto 1442,25.55,11.36
    >>Collect |cRXP_LOOT_[Sleepers' Key]|r from |cRXP_PICK_Sleepers' Cache|r. Collect |cRXP_LOOT_[Claw Key]|r from |cRXP_PICK_Druids' Cache|r. Collect |cRXP_LOOT_[Barrow Key]|r from |cRXP_PICK_Barrow Cache|r
    *Travel to the Den on Stonetalon Peak. Using the Gatekeeper's Key, obtain the druids' hidden items. Use these items to open the Talon Den Hoard.
    .complete 1089,1 --The Den
    .complete 1089,2 --The Den
    .complete 1089,3 --The Den
step
    .goto 1442,26.6,10.87
    >>Click the |cRXP_PICK_Talon Den Hoard|r
    .turnin 1089 >>Turn in The Den
step
    .goto 1441,11.85,21.31
    >>Collect |cRXP_LOOT_[Unrefined Ore Sample]|r from |cRXP_ENEMY_Gravelsnout Digger|r, |cRXP_ENEMY_Gravelsnout Surveyor|r, |cRXP_ENEMY_Gibblesnik|r
    *Find an Unrefined Ore Sample on a Gravelsnout Digger or Surveyor and bring it to Tatternack Steelforge at Camp Taurajo in the Barrens.
    .complete 1153,1 --A New Ore Sample
    .mob Gravelsnout Digger
    .mob Gravelsnout Surveyor
step
    .goto 1413,45.1,57.68
    >>Talk to |cRXP_FRIENDLY_Tatternack Steelforge|r
    .turnin 1153 >>Turn in A New Ore Sample
    .target Tatternack Steelforge
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 20-29
#name 25-26 Ashenvale
#displayname 25-26 Ashenvale
#next 26-28 Thousand Needles
step
    .zone 1440 >>Travel to Ashenvale
    *How: Fly to Splintertree Post.
    *Level for this part: 25-26. 14 quests, roughly 1 h 5 min.
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
    .goto 1440,73.06,61.48
    >>Talk to |cRXP_FRIENDLY_Pixel|r
    .accept 6441 >>Accept Satyr Horns
    .target Pixel
step
    .goto 1440,73.67,60
    >>Talk to |cRXP_FRIENDLY_Mastok Wrilehiss|r
    .accept 25 >>Accept Stonetalon Standstill
    .target Mastok Wrilehiss
step
    .goto 1440,71.11,68.12
    >>Talk to |cRXP_FRIENDLY_Kuray'bin|r
    .accept 6503 >>Accept Ashenvale Outrunners
    .target Kuray'bin
step
    .goto 1440,70.01,71.16
    >>Talk to |cRXP_FRIENDLY_Gurda Ragescar|r
    .accept 6504 >>Accept The Lost Pages
    .target Gurda Ragescar
step
    .goto 1440,70.01,71.16
    >>Kill |cRXP_ENEMY_Ashenvale Outrunner|r. Collect |cRXP_LOOT_[Shredder Operating Manual - Chapter 1]|r. Collect |cRXP_LOOT_[Shredder Operating Manual - Chapter 2]|r. Collect |cRXP_LOOT_[Shredder Operating Manual - Chapter 3]|r
    *Kill 9 Ashenvale Outrunners, then return to Kuray'bin at Splintertree Outpost.
    *Find the 12 missing pages of the Shredder Operating Manual, and put them together to form Chapters 1, 2, and 3. Return the pages to Gurda Ragescar near Splintertree Post.
    .complete 6503,1 --Ashenvale Outrunners
    .complete 6504,1 --The Lost Pages
    .complete 6504,2 --The Lost Pages
    .complete 6504,3 --The Lost Pages
    .mob Ashenvale Outrunner
step
    .goto 1440,70.01,71.16
    >>Talk to |cRXP_FRIENDLY_Gurda Ragescar|r
    .turnin 6504 >>Turn in The Lost Pages
    .target Gurda Ragescar
step
    .goto 1440,71.11,68.12
    >>Talk to |cRXP_FRIENDLY_Kuray'bin|r
    .turnin 6503 >>Turn in Ashenvale Outrunners
    .target Kuray'bin
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
    .target Senani Thunderheart
step
    .goto 1440,73.67,60
    >>Talk to |cRXP_FRIENDLY_Mastok Wrilehiss|r
    .accept 824 >>Accept Je'neu of the Earthen Ring
    .target Mastok Wrilehiss
step
    .goto 1440,73.78,61.46
    >>Talk to |cRXP_FRIENDLY_Senani Thunderheart|r
    .accept 247 >>Accept The Hunt Completed
    .target Senani Thunderheart
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
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 20-29
#name 26-28 Thousand Needles
#displayname 26-28 Thousand Needles
#next 28-29 Hillsbrad/Alterac
step
    .zone 1441 >>Travel to Thousand Needles
    *How: Fly to Freewind Post.
    *Level for this part: 26-28. 24 quests, roughly 2 h 55 min.
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
    >>Collect |cRXP_LOOT_[Rocket Car Parts]|r from |cRXP_PICK_Rocket Car Rubble|r, |cRXP_PICK_Rocket Car Rubble|r. Collect |cRXP_LOOT_[Salty Scorpid Venom]|r from |cRXP_ENEMY_Scorpid Terror|r, |cRXP_ENEMY_Scorpid Reaver|r, |cRXP_ENEMY_Vile Sting|r. Collect |cRXP_LOOT_[Hardened Tortoise Shell]|r from |cRXP_ENEMY_Sparkleshell Tortoise|r, |cRXP_ENEMY_Sparkleshell Snapper|r, |cRXP_ENEMY_Sparkleshell Borer|r
    *Bring 30 Rocket Car Parts to Kravel Koalbeard in the Shimmering Flats.
    *Bring 6 Salty Scorpid Venoms to Fizzle Brassbolts in the Shimmering Flats.
    *Bring 9 Hardened Tortoise Shells to Wizzle Brassbolts in the Shimmering Flats.
    .complete 1110,1 --Rocket Car Parts
    .complete 1104,1 --Salt Flat Venom
    .complete 1105,1 --Hardened Shells
    .mob Scorpid Terror
    .mob Scorpid Reaver
    .mob Sparkleshell Tortoise
    .mob Sparkleshell Snapper
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
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 20-29
#name 28-29 Hillsbrad/Alterac
#displayname 28-29 Hillsbrad/Alterac
#next 29-31 Desolace
step
    .zone 1424 >>Travel to Hillsbrad
    *How: Zeppelin Orgrimmar -> Undercity, then fly to Tarren Mill.
    *Level for this part: 28-29. 15 quests, roughly 2 h 10 min.
step
    #completewith next
    .goto 1424,60.14,18.62,15,0
    >>Talk to |cRXP_FRIENDLY_Zarise|r if you don't have this flight path yet
    .fp Zarise >>Get the flight path
    .target Zarise
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
    .goto 1424,61.44,19.06
    >>Talk to |cRXP_FRIENDLY_Apothecary Lydon|r
    .turnin 501 >>Turn in Elixir of Pain
    .accept 502 >>Accept Elixir of Pain
    .target Apothecary Lydon
step
    .goto 1424,63.88,19.66
    >>Talk to |cRXP_FRIENDLY_Novice Thaivand|r
    .turnin 552 >>Turn in Helcular's Revenge
    .accept 553 >>Accept Helcular's Revenge
    .target Novice Thaivand
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
    .goto 1424,26.98,31.5
    >>Collect |cRXP_LOOT_[Worn Stone Token]|r from |cRXP_ENEMY_Dalaran Shield Guard|r, |cRXP_ENEMY_Dalaran Theurgist|r, |cRXP_ENEMY_Dalaran Summoner|r
    *Bring 10 Worn Stone Tokens to Keeper Bel'varil in Tarren Mill.
    .complete 556,1 --Stone Tokens
    .mob Dalaran Shield Guard
    .mob Dalaran Theurgist
step
    .goto 1424,29.51,42.41
    >>Kill |cRXP_ENEMY_Clerk Horrace Whitesteed|r. Kill |cRXP_ENEMY_Citizen Wilkes|r. Kill |cRXP_ENEMY_Farmer Kalaba|r
    *High Executor Darthalia of Tarren Mill is offering a bounty on Clerk Horrace Whitesteed, Citizen Wilkes, Miner Hackett and Farmer Kalaba.
    .complete 567,1 --Dangerous!
    .complete 567,2 --Dangerous!
    .complete 567,4 --Dangerous!
    .mob Clerk Horrace Whitesteed
    .mob Citizen Wilkes
    .mob Farmer Kalaba
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
    .goto 1424,62.76,20.21
    >>Talk to |cRXP_FRIENDLY_Deathguard Humbert|r
    .turnin 547 >>Turn in Humbert's Sword
    .target Deathguard Humbert
step
    .goto 1424,62.33,20.45
    >>Talk to |cRXP_FRIENDLY_High Executor Darthalia|r
    .turnin 549 >>Turn in WANTED: Syndicate Personnel
    .turnin 567 >>Turn in Dangerous!
    .turnin 494 >>Turn in Time To Strike
    .target High Executor Darthalia
step
    .goto 1424,61.5,20.93
    >>Talk to |cRXP_FRIENDLY_Keeper Bel'varil|r
    .turnin 556 >>Turn in Stone Tokens
    .target Keeper Bel'varil
step
    .goto 1424,61.44,19.06
    >>Talk to |cRXP_FRIENDLY_Apothecary Lydon|r
    .turnin 496 >>Turn in Elixir of Suffering
    .target Apothecary Lydon
step
    .goto 1424,63.24,20.66
    >>Talk to |cRXP_FRIENDLY_Krusk|r
    .turnin 498 >>Turn in The Rescue
    .target Krusk
step
    .goto 1424,61.5,20.93
    >>Talk to |cRXP_FRIENDLY_Keeper Bel'varil|r
    .accept 557 >>Accept Bracers of Binding
    .target Keeper Bel'varil
step
    .goto 1424,61.44,19.06
    >>Talk to |cRXP_FRIENDLY_Apothecary Lydon|r
    .accept 499 >>Accept Elixir of Suffering
    .target Apothecary Lydon
step
    .goto 1424,63.24,20.66
    >>Talk to |cRXP_FRIENDLY_Krusk|r
    .accept 533 >>Accept Infiltration
    .target Krusk
step
    .goto 1424,61.55,19.14
    >>Talk to |cRXP_FRIENDLY_Umpi|r
    .turnin 499 >>Turn in Elixir of Suffering
    .target Umpi
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
    .goto 1416,57.71,67.64
    >>Collect |cRXP_LOOT_[Syndicate Missive]|r from |cRXP_ENEMY_Syndicate Footpad|r, |cRXP_ENEMY_Syndicate Thief|r
    *Retrieve information about Gol'dir's whereabouts for Krusk in Tarren Mill.
    .complete 533,1 --Infiltration
    .mob Syndicate Footpad
    .mob Syndicate Thief
step
    .goto 1424,52.75,53.37
    >>Click the |cRXP_PICK_Helcular's Grave|r
    .turnin 553 >>Turn in Helcular's Revenge
step
    .goto 1424,61.5,20.93
    >>Talk to |cRXP_FRIENDLY_Keeper Bel'varil|r
    .turnin 557 >>Turn in Bracers of Binding
    .target Keeper Bel'varil
step
    .goto 1424,63.24,20.66
    >>Talk to |cRXP_FRIENDLY_Krusk|r
    .turnin 533 >>Turn in Infiltration
    .target Krusk
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 20-29
#name 29-31 Desolace
#displayname 29-31 Desolace
#next 31-32 Stranglethorn Vale
step
    .zone 1443 >>Travel to Desolace
    *How: In the Eastern Kingdoms? Zeppelin Grom'gol -> Orgrimmar first. Then fly to Shadowprey Village.
    *Level for this part: 29-31. 21 quests, roughly 3 h 50 min.
step
    #completewith next
    .goto 1443,21.6,74.13,15,0
    >>Talk to |cRXP_FRIENDLY_Thalon|r if you don't have this flight path yet
    .fp Thalon >>Get the flight path
    .target Thalon
step
    .goto 1443,25.05,72.27
    >>Talk to |cRXP_FRIENDLY_Roon Wildmane|r
    .accept 5763 >>Accept Hunting in Stranglethorn
    .target Roon Wildmane
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
    .goto 1443,25.32,67.05
    >>Talk to |cRXP_FRIENDLY_Aka'rai|r
    .accept 97265 >>Accept Hate the Hatefury
    .target Aka'rai
step
    .goto 1443,56.19,59.57
    >>Talk to |cRXP_FRIENDLY_Felgur Twocuts|r
    .accept 1365 >>Accept Khan Dez'hepah
    .target Felgur Twocuts
step
    .goto 1443,56.29,59.68
    >>Talk to |cRXP_FRIENDLY_Gurda Wildmane|r
    .accept 1367 >>Accept Magram Alliance
    .accept 1368 >>Accept Gelkis Alliance
    .target Gurda Wildmane
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
    .goto 1443,66.78,58.13
    >>Talk to |cRXP_FRIENDLY_Cork Gizelton|r
    .accept 5821 >>Accept Bodyguard for Hire
    .target Cork Gizelton
step
    .goto 1443,60.86,61.86
    >>Talk to |cRXP_FRIENDLY_Smeed Scrabblescrew|r
    .turnin 5821 >>Turn in Bodyguard for Hire
    .target Smeed Scrabblescrew
step
    .goto 1443,74.97,68.16
    >>Talk to |cRXP_FRIENDLY_Warug|r
    .turnin 1367 >>Turn in Magram Alliance
    .accept 1369 >>Accept Broken Tears
    .target Warug
step
    .goto 1443,73.38,41.62
    >>Collect |cRXP_LOOT_[Khan Dez'hepah's Head]|r from |cRXP_ENEMY_Khan Dez'hepah|r
    *Bring Khan Dez'hepah's Head to Felgur Twocuts in Desolace.
    .complete 1365,1 --Khan Dez'hepah
    .mob Khan Dez'hepah
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
    .accept 5741 >>Accept Sceptre of Light
    .target Azore Aldamort
step
    .goto 1443,36.07,30.41
    >>Click the |cRXP_PICK_Rackmore's Log|r
    .accept 6161 >>Accept Claim Rackmore's Treasure!
step
    .goto 1443,34.55,23.24
    >>Collect |cRXP_LOOT_[Soft-shelled Clam Meat]|r from |cRXP_ENEMY_Deepstrider Giant|r, |cRXP_ENEMY_Deepstrider Searcher|r, |cRXP_ENEMY_Slitherblade Naga|r. Kill |cRXP_ENEMY_Slitherblade Myrmidon|r. Kill |cRXP_ENEMY_Slitherblade Naga|r. Kill |cRXP_ENEMY_Slitherblade Sorceress|r
    *Find 10 pieces of Soft-shelled Clam Meat and bring it back to Mai'Lahii at Shadowprey Village.
    *Slay 7 Slitherblade Myrmidon, 7 Slitherblade Naga, and 5 Slitherblade Sorceresses, and then talk to Drulzegar at Shadowprey in Desolace.
    .complete 6142,1 --Clam Bait
    .complete 6143,1 --Other Fish to Fry
    .complete 6143,2 --Other Fish to Fry
    .complete 6143,3 --Other Fish to Fry
    .mob Deepstrider Giant
    .mob Deepstrider Searcher
    .mob Slitherblade Myrmidon
    .mob Slitherblade Naga
    .mob Slitherblade Sorceress
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
    .target Azore Aldamort
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
    .goto 1443,36.22,79.25
    >>Talk to |cRXP_FRIENDLY_Uthek the Wise|r
    .turnin 1368 >>Turn in Gelkis Alliance
    .accept 1370 >>Accept Stealing Supplies
    .target Uthek the Wise
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
    .goto 1443,25.32,67.05
    >>Talk to |cRXP_FRIENDLY_Aka'rai|r
    .turnin 97265 >>Turn in Hate the Hatefury
    .target Aka'rai
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
    >>Earn the required reputation
    *Bring 6 bags of Crudely Dried Meat to Uthek the Wise in the Gelkis Village.
    .complete 1370,2 --Stealing Supplies
step
    .goto 1443,36.22,79.25
    >>Talk to |cRXP_FRIENDLY_Uthek the Wise|r
    .turnin 1370 >>Turn in Stealing Supplies
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
    .goto 1434,35.66,10.81
    >>Talk to |cRXP_FRIENDLY_Hemet Nesingwary|r
    .turnin 5763 >>Turn in Hunting in Stranglethorn
    .target Hemet Nesingwary
step
    .goto 1413,45.34,28.41
    >>Talk to |cRXP_FRIENDLY_Regthar Deathgate|r
    .accept 1362 >>Accept The Kolkar of Desolace
    .target Regthar Deathgate
step
    .goto 1443,56.19,59.57
    >>Talk to |cRXP_FRIENDLY_Felgur Twocuts|r
    .turnin 1362 >>Turn in The Kolkar of Desolace
    .target Felgur Twocuts
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 30-39
#name 31-32 Stranglethorn Vale
#displayname 31-32 Stranglethorn Vale
#next 32-33 Arathi Highlands
step
    .zone 1434 >>Travel to Stranglethorn Vale
    *How: Fly to Grom'gol (or the zeppelin Orgrimmar -> Grom'gol).
    *Level for this part: 31-32. 20 quests, roughly 2 h 10 min.
step
    #completewith next
    .goto 1434,32.54,29.35,15,0
    >>Talk to |cRXP_FRIENDLY_Thysta|r if you don't have this flight path yet
    .fp Thysta >>Get the flight path
    .target Thysta
step
    .goto 1434,32.16,27.72
    >>Talk to |cRXP_FRIENDLY_Nimboya|r
    .accept 581 >>Accept Hunt for Yenniku
    .accept 638 >>Accept Trollbane
    .target Nimboya
step
    .goto 1434,32.27,27.71
    >>Talk to |cRXP_FRIENDLY_Kin'weelay|r
    .accept 596 >>Accept Bloody Bone Necklaces
    .accept 629 >>Accept The Vile Reef
    .target Kin'weelay
step
    .goto 1434,32.78,28.43
    >>Talk to |cRXP_FRIENDLY_Gemmil|r
    .accept 97453 >>Accept Weed Whacked
    .target Gemmil
step
    .goto 1434,32.17,28.9
    >>Talk to |cRXP_FRIENDLY_Commander Aggro'gosh|r
    .accept 568 >>Accept The Defense of Grom'gol
    .target Commander Aggro'gosh
step
    .goto 1434,31.86,29.41
    >>Kill |cRXP_ENEMY_Carnivorous Weed|r. Kill |cRXP_ENEMY_Lashtail Raptor|r
    *Slay 6 Carnivorous Weeds south of Grom'gol and then inform Gemmil's mother.
    *Commander Aggro'gosh of the Grom'gol base camp wants you to kill 15 Lashtail Raptors.
    .complete 97453,1 --Weed Whacked
    .complete 568,1 --The Defense of Grom'gol
    .mob Carnivorous Weed
    .mob Lashtail Raptor
step
    .goto 1434,32.7,29.23
    >>Talk to |cRXP_FRIENDLY_Nerrist|r
    .turnin 97453 >>Turn in Weed Whacked
    .target Nerrist
step
    .goto 1434,32.17,28.9
    >>Talk to |cRXP_FRIENDLY_Commander Aggro'gosh|r
    .turnin 568 >>Turn in The Defense of Grom'gol
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
    .target Kin'weelay
step
    .goto 1434,31.5,12.86
    >>Click the |cRXP_PICK_Thoroughly Scavenged Supplies|r
    .accept 97328 >>Accept Anything of Value
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
    >>Collect |cRXP_LOOT_[Bloodscalp Tusk]|r from |cRXP_ENEMY_Bloodscalp Warrior|r, |cRXP_ENEMY_Bloodscalp Scout|r, |cRXP_ENEMY_Bloodscalp Hunter|r. Collect |cRXP_LOOT_[Bloody Bone Necklace]|r from |cRXP_ENEMY_Bloodscalp Warrior|r, |cRXP_ENEMY_Bloodscalp Scout|r, |cRXP_ENEMY_Bloodscalp Hunter|r. Collect |cRXP_LOOT_[Stolen Shipment]|r from |cRXP_PICK_Stolen Shipment|r
    *Bring 9 Bloodscalp Tusks to Nimboya at the Grom'gol Base Camp.
    *Bring 25 Bloody Bone Necklaces to Kin'weelay at the Grom'gol Base Camp.
    *Recover 8 Stolen Shipments from the Ruins of Zul'Kunda in Stranglethorn Vale and return your haul to someone in Booty Bay.
    .complete 581,1 --Hunt for Yenniku
    .complete 596,1 --Bloody Bone Necklaces
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
    .goto 1434,32.16,27.72
    >>Talk to |cRXP_FRIENDLY_Nimboya|r
    .turnin 581 >>Turn in Hunt for Yenniku
    .target Nimboya
step
    .goto 1434,32.27,27.71
    >>Talk to |cRXP_FRIENDLY_Kin'weelay|r
    .turnin 596 >>Turn in Bloody Bone Necklaces
    .target Kin'weelay
step
    .goto 1434,32.16,27.72
    >>Talk to |cRXP_FRIENDLY_Nimboya|r
    .accept 582 >>Accept Headhunting
    .target Nimboya
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
    .target Nimboya
step
    .goto 1434,26.35,73.56
    >>Talk to |cRXP_FRIENDLY_Wharfmaster Lozgil|r
    .turnin 97328 >>Turn in Anything of Value
    .turnin 97331 >>Turn in Zimmix's Great Escape
    .target Wharfmaster Lozgil
step
    .goto 1434,27.69,76.66
    >>Talk to |cRXP_FRIENDLY_Captain Aransas|r
    .turnin 97048 >>Turn in Returning to Port
    .target Captain Aransas
step
    .goto 1434,27,77.13
    >>Talk to |cRXP_FRIENDLY_Kebok|r
    .accept 213 >>Accept Hostile Takeover
    .accept 189 >>Accept Bloodscalp Ears
    .target Kebok
step
    .goto 1434,27.12,77.21
    >>Talk to |cRXP_FRIENDLY_Crank Fizzlebub|r
    .accept 605 >>Accept Singing Blue Shards
    .target Crank Fizzlebub
step
    .goto 1434,28.29,77.59
    >>Talk to |cRXP_FRIENDLY_Drizzlik|r
    .accept 575 >>Accept Supply and Demand
    .target Drizzlik
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
    >>Collect |cRXP_LOOT_[Large River Crocolisk Skin]|r from |cRXP_ENEMY_River Crocolisk|r
    *Bring 2 Large River Crocolisk Skins to Drizzlik in Booty Bay.
    .complete 575,1 --Supply and Demand
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
    .turnin 213 >>Turn in Hostile Takeover
    .turnin 189 >>Turn in Bloodscalp Ears
    .target Kebok
step
    .goto 1434,27.12,77.21
    >>Talk to |cRXP_FRIENDLY_Crank Fizzlebub|r
    .turnin 605 >>Turn in Singing Blue Shards
    .target Crank Fizzlebub
step
    .goto 1434,28.29,77.59
    >>Talk to |cRXP_FRIENDLY_Drizzlik|r
    .turnin 575 >>Turn in Supply and Demand
    .accept 577 >>Accept Some Assembly Required
    .target Drizzlik
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
    .goto 1417,73.8,33.96
    >>Talk to |cRXP_FRIENDLY_Zengu|r
    .turnin 638 >>Turn in Trollbane
    .target Zengu
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 30-39
#name 32-33 Arathi Highlands
#displayname 32-33 Arathi Highlands
#next 33-34 Dustwallow Marsh
step
    .zone 1417 >>Travel to Arathi Highlands
    *How: Fly to Hammerfall.
    *Level for this part: 32-33. 16 quests, roughly 1 h 30 min.
step
    #completewith next
    .goto 1417,73.02,32.7,15,0
    >>Talk to |cRXP_FRIENDLY_Urda|r if you don't have this flight path yet
    .fp Urda >>Get the flight path
    .target Urda
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
    .goto 1417,43.08,39.21
    >>Collect |cRXP_LOOT_[Highland Raptor Eye]|r from |cRXP_ENEMY_Highland Strider|r, |cRXP_ENEMY_Highland Thrasher|r
    *Acquire 10 Highland Raptor Eyes from Highland Striders and Highland Thrashers for Tor'gan in Hammerfall.
    .complete 672,1 --Raising Spirits
    .mob Highland Strider
    .mob Highland Thrasher
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
    .goto 1417,50.54,64.59
    >>Collect |cRXP_LOOT_[Raptor Heart]|r from |cRXP_ENEMY_Highland Fleshstalker|r
    *Acquire 12 Raptor Hearts from Highland Fleshstalkers for Tor'gan.
    .complete 701,1 --Guile of the Raptor
    .mob Highland Fleshstalker
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
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 30-39
#name 33-34 Dustwallow Marsh
#displayname 33-34 Dustwallow Marsh
#next 34-35 Desolace
step
    .zone 1445 >>Travel to Dustwallow Marsh
    *How: Fly to Brackenwall Village.
    *Level for this part: 33-34. 15 quests, roughly 1 h 45 min.
step
    #completewith next
    .goto 1445,35.56,31.88,15,0
    >>Talk to |cRXP_FRIENDLY_Shardi|r if you don't have this flight path yet
    .fp Shardi >>Get the flight path
    .target Shardi
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
    .accept 1203 >>Accept Jarl Needs a Blade
    .target "Swamp Eye" Jarl
step
    .goto 1445,55.44,25.92
    >>Click the |cRXP_PICK_Loose Dirt|r
    .accept 1239 >>Accept The Severed Head
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
    .goto 1445,71.53,51.19
    >>Collect |cRXP_LOOT_[Captain's Documents]|r from |cRXP_PICK_Captain's Footlocker|r
    *Bring the Captain's Documents to Nazeer Bloodpike in Brackenwall Village.
    .complete 1202,1 --The Theramore Docks
step
    .goto 1445,35.21,30.66
    >>Talk to |cRXP_FRIENDLY_Nazeer Bloodpike|r
    .turnin 1202 >>Turn in The Theramore Docks
    .target Nazeer Bloodpike
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
    .goto 1445,60.18,63.02
    >>Collect |cRXP_LOOT_[Jeweled Pendant]|r from |cRXP_ENEMY_Muckshell Clacker|r, |cRXP_ENEMY_Muckshell Snapclaw|r, |cRXP_ENEMY_Muckshell Pincer|r
    *Bring the Jeweled Pendant to Nazeer in Brackenwall Village.
    .complete 1261,1 --Marg Speaks
    .mob Muckshell Clacker
    .mob Muckshell Snapclaw
step
    .goto 1445,35.21,30.66
    >>Talk to |cRXP_FRIENDLY_Nazeer Bloodpike|r
    .turnin 1261 >>Turn in Marg Speaks
    .accept 1262 >>Accept Report to Zor
    .target Nazeer Bloodpike
step
    .goto 1454,38.93,38.4
    >>Talk to |cRXP_FRIENDLY_Zor Lonetree|r
    .turnin 1262 >>Turn in Report to Zor
    .target Zor Lonetree
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 30-39
#name 34-35 Desolace
#displayname 34-35 Desolace
#next 35-36 Arathi Highlands
step
    .zone 1443 >>Travel to Desolace
    *How: In the Eastern Kingdoms? Zeppelin Grom'gol -> Orgrimmar first. Then fly to Shadowprey Village.
    *Level for this part: 34-35. 12 quests, roughly 2 h 30 min.
step
    .goto 1443,25.82,68.21
    >>Talk to |cRXP_FRIENDLY_Taiga Wisemane|r
    .accept 5381 >>Accept Hand of Iruxos
    .target Taiga Wisemane
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
    .goto 1443,36.22,79.25
    >>Talk to |cRXP_FRIENDLY_Uthek the Wise|r
    .accept 93045 >>Accept Test Your Theory
    .accept 1373 >>Accept Ongeku
    .target Uthek the Wise
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
    .goto 1443,55.41,55.81
    >>Talk to |cRXP_FRIENDLY_Nataka Longhorn|r
    .accept 5386 >>Accept Catch of the Day
    .target Nataka Longhorn
step
    >>Collect |cRXP_LOOT_[Bloodbelly Fish]|r
    *Talk to Jinar'Zillen at Shadowprey Village, and then bring Nataka Longhorn 2 Bloodbelly fish.
    .complete 5386,1 --Catch of the Day
step
    .goto 1443,55.41,55.81
    >>Talk to |cRXP_FRIENDLY_Nataka Longhorn|r
    .turnin 5386 >>Turn in Catch of the Day
    .target Nataka Longhorn
step
    .goto 1443,66.72,58.62
    >>Talk to |cRXP_FRIENDLY_Rigger Gizelton|r
    .accept 5943 >>Accept Gizelton Caravan
    .target Rigger Gizelton
step
    .goto 1443,60.86,61.86
    >>Talk to |cRXP_FRIENDLY_Smeed Scrabblescrew|r
    .turnin 5943 >>Turn in Gizelton Caravan
    .target Smeed Scrabblescrew
step
    .goto 1443,74.97,68.16
    >>Talk to |cRXP_FRIENDLY_Warug|r
    .accept 1375 >>Accept Khan Shaka
    .target Warug
step
    .goto 1443,62.33,38.99
    >>Talk to |cRXP_FRIENDLY_Bibbly F'utzbuckle|r
    .accept 5501 >>Accept Bone Collector
    .target Bibbly F'utzbuckle
step
    .goto 1443,51.14,60.02
    >>Collect |cRXP_LOOT_[Kodo Bone]|r from |cRXP_PICK_Kodo Bones|r, |cRXP_PICK_Kodo Bones|r
    *Bring 10 Kodo Bones from the Kodo Graveyard to Bibbly F'utzbuckle at Kormek's Hut.
    .complete 5501,1 --Bone Collector
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
    .goto 1443,62.33,38.99
    >>Talk to |cRXP_FRIENDLY_Bibbly F'utzbuckle|r
    .turnin 5501 >>Turn in Bone Collector
    .target Bibbly F'utzbuckle
step
    .goto 1443,38.88,27.16
    >>Talk to |cRXP_FRIENDLY_Azore Aldamort|r
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
    .target Warug
step
    .goto 2652,20.93,22.68
    >>Talk to |cRXP_FRIENDLY_Nerlokh|r
    .turnin 93045 >>Turn in Test Your Theory
    .target Nerlokh
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
<< Horde
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 30-39
#name 35-36 Arathi Highlands
#displayname 35-36 Arathi Highlands
#next 36-36 Stranglethorn Vale
step
    .zone 1417 >>Travel to Arathi Highlands
    *How: Fly to Hammerfall.
    *Level for this part: 35-36. 11 quests, roughly 1 h 55 min.
step
    .goto 1417,73.8,33.96
    >>Talk to |cRXP_FRIENDLY_Zengu|r
    .accept 640 >>Accept The Broken Sigil
    .target Zengu
step
    .goto 1417,74.24,33.92
    >>Talk to |cRXP_FRIENDLY_Drum Fel|r
    .accept 678 >>Accept Call to Arms
    .target Drum Fel
step
    .goto 1417,74.72,36.29
    >>Talk to |cRXP_FRIENDLY_Tor'gan|r
    .accept 673 >>Accept Foul Magics
    .target Tor'gan
step
    .goto 1417,84.31,30.95
    >>Click the |cRXP_PICK_Iridescent Shards|r
    .accept 651 >>Accept Stones of Binding
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
    .goto 1417,25.64,28.53
    >>Collect |cRXP_LOOT_[Burning Key]|r from |cRXP_ENEMY_Burning Exile|r
    *Gather the Burning Key, the Cresting Key and the Thundering Key from the Stone of West Binding, the Stone of East Binding and the Stone of Outer Binding.
    .complete 651,1 --Stones of Binding
    .mob Burning Exile
step
    .goto 1417,23.89,60.57
    >>Collect |cRXP_LOOT_[Sigil Fragment]|r from |cRXP_ENEMY_Stromgarde Troll Hunter|r, |cRXP_ENEMY_Stromgarde Defender|r, |cRXP_ENEMY_Stromgarde Vindicator|r. Collect |cRXP_LOOT_[Befouled Bloodstone Orb]|r from |cRXP_ENEMY_Marez Cowl|r
    *Retrieve the 5 Sigil Fragments from the defenders in Stromgarde, and bring them to Tor'gan in Hammerfall.
    *Retrieve Marez Cowl's Bloodstone Orb and bring it to Tor'gan in Hammerfall.
    .complete 640,1 --The Broken Sigil
    .complete 673,1 --Foul Magics
    .mob Stromgarde Troll Hunter
    .mob Stromgarde Defender
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
    .goto 1417,51.99,76.85
    >>Kill |cRXP_ENEMY_Boulderfist Brute|r. Kill |cRXP_ENEMY_Boulderfist Magus|r
    *Kill 10 Boulderfist Brutes and 4 Boulderfist Magi, and return to Drum Fel in the Hammerfall outpost.
    .complete 678,1 --Call to Arms
    .complete 678,2 --Call to Arms
    .mob Boulderfist Brute
    .mob Boulderfist Magus
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
    .target Tor'gan
step
    .goto 1417,74.24,33.92
    >>Talk to |cRXP_FRIENDLY_Drum Fel|r
    .turnin 678 >>Turn in Call to Arms
    .target Drum Fel
step
    .goto 1417,74.72,36.29
    >>Talk to |cRXP_FRIENDLY_Tor'gan|r
    .accept 641 >>Accept Sigil of Thoradin
    .target Tor'gan
step
    .goto 1417,73.8,33.96
    >>Talk to |cRXP_FRIENDLY_Zengu|r
    .turnin 641 >>Turn in Sigil of Thoradin
    .target Zengu
step
    .goto 1417,74.04,33.07
    >>Talk to |cRXP_FRIENDLY_Korin Fel|r
    .accept 680 >>Accept The Real Threat
    .target Korin Fel
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
    .goto 1417,18.56,66.24
    >>Collect |cRXP_LOOT_[Or'Kalar's Head]|r from |cRXP_ENEMY_Or'Kalar|r
    *Slay Or'Kalar and bring his Head to Korin Fel in the Hammerfall outpost.
    .complete 680,1 --The Real Threat
    .mob Or'Kalar
step
    .goto 1417,74.04,33.07
    >>Talk to |cRXP_FRIENDLY_Korin Fel|r
    .turnin 680 >>Turn in The Real Threat
    .target Korin Fel
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
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 30-39
#name 36-36 Stranglethorn Vale
#displayname 36-36 Stranglethorn Vale
#next 36-38 Swamp of Sorrows/Badlands
step
    .zone 1434 >>Travel to Stranglethorn Vale
    *How: Fly to Grom'gol (or the zeppelin Orgrimmar -> Grom'gol).
    *Level for this part: 36-36. 10 quests, roughly 1 h 30 min.
step
    .goto 1434,32.27,27.71
    >>Talk to |cRXP_FRIENDLY_Kin'weelay|r
    .accept 95748 >>Accept The Gurubashi Legends of Old
    .target Kin'weelay
step
    .goto 1434,32.16,27.72
    >>Talk to |cRXP_FRIENDLY_Nimboya|r
    .accept 584 >>Accept Bloodscalp Clan Heads
    .target Nimboya
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
    .goto 1434,23.44,8.12
    >>Collect |cRXP_LOOT_[The Third Troll Legend]|r from |cRXP_PICK_Fall of Gurubashi|r. Collect |cRXP_LOOT_[Gan'zulah's Head]|r from |cRXP_ENEMY_Gan'zulah|r. Collect |cRXP_LOOT_[Nezzliok's Head]|r from |cRXP_ENEMY_Nezzliok the Dire|r
    *Use the hide and charcoal to create a rubbing of the Third Troll Legend tablet.
    *Bring Gan'zulah's Head and Nezzliok's Head to the bubbling cauldron at the Grom'gol Base Camp.
    .complete 95748,1 --The Gurubashi Legends of Old
    .complete 584,1 --Bloodscalp Clan Heads
    .complete 584,2 --Bloodscalp Clan Heads
    .mob Gan'zulah
    .mob Nezzliok the Dire
step
    .goto 1434,32.27,27.71
    >>Talk to |cRXP_FRIENDLY_Kin'weelay|r
    .turnin 95748 >>Turn in The Gurubashi Legends of Old
    .target Kin'weelay
step
    .goto 1434,32.22,27.6
    >>Click the |cRXP_PICK_Bubbling Cauldron|r
    .turnin 584 >>Turn in Bloodscalp Clan Heads
    .accept 585 >>Accept Speaking with Nezzliok
step
    .goto 1434,32.27,27.71
    >>Talk to |cRXP_FRIENDLY_Kin'weelay|r
    .accept 95770 >>Accept Locating the Lost City
    .target Kin'weelay
step
    .goto 1434,32.17,28.9
    >>Talk to |cRXP_FRIENDLY_Commander Aggro'gosh|r
    .accept 95773 >>Accept Enemies in the Water
    .target Commander Aggro'gosh
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
    .accept 97332 >>Accept Twice Misplaced Trust
    .target Wharfmaster Lozgil
step
    .goto 1434,27.12,77.21
    >>Talk to |cRXP_FRIENDLY_Crank Fizzlebub|r
    .accept 600 >>Accept Venture Company Mining
    .target Crank Fizzlebub
step
    .goto 1434,27.78,77.07
    >>Talk to |cRXP_FRIENDLY_"Sea Wolf" MacKinley|r
    .accept 606 >>Accept Scaring Shaky
    .target "Sea Wolf" MacKinley
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
    .goto 1434,41.67,43.91
    >>Collect |cRXP_LOOT_[Singing Blue Crystal]|r from |cRXP_ENEMY_Venture Co. Strip Miner|r, |cRXP_ENEMY_Venture Co. Foreman|r, |cRXP_ENEMY_Venture Co. Surveyor|r
    *Bring 10 Singing Blue Crystals to Crank Fizzlebub in Booty Bay.
    .complete 600,1 --Venture Company Mining
    .mob Venture Co. Strip Miner
    .mob Venture Co. Foreman
step
    .goto 1434,27.12,77.21
    >>Talk to |cRXP_FRIENDLY_Crank Fizzlebub|r
    .turnin 600 >>Turn in Venture Company Mining
    .target Crank Fizzlebub
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
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 30-39
#name 36-38 Swamp of Sorrows/Badlands
#displayname 36-38 Swamp of Sorrows/Badlands
#next 38-41 Riverglades
step
    .zone 1435 >>Travel to Swamp of Sorrows
    *How: Ride out of the Riverglades to Stonard (Swamp of Sorrows) or Kargath (Badlands).
    *Level for this part: 36-38. 25 quests, roughly 4 h 50 min.
step
    #completewith next
    .goto 1435,46.07,54.83,15,0
    >>Talk to |cRXP_FRIENDLY_Breyk|r if you don't have this flight path yet
    .fp Breyk >>Get the flight path
    .target Breyk
step
    .goto 1435,47.74,55.2
    >>Talk to |cRXP_FRIENDLY_Helgrum the Swift|r
    .accept 1418 >>Accept Neeka Bloodscar
    .target Helgrum the Swift
step
    .goto 1435,44.7,57.21
    >>Talk to |cRXP_FRIENDLY_Dar|r
    .accept 93663 >>Accept Lost in Transit
    .accept 698 >>Accept Lack of Surplus
    .target Dar
step
    >>Collect |cRXP_LOOT_[Courier's Shipment]|r
    *Find the missing courier, and ensure Dar's shipment is delivered to the Harborage.
    .complete 93663,1 --Lost in Transit
step
    .goto 1435,25.16,54.03
    >>Talk to |cRXP_FRIENDLY_Amaryllis Webb|r
    .accept 93176 >>Accept My Little Friends
    .target Amaryllis Webb
step
    .goto 1435,25.98,31.4
    >>Talk to |cRXP_FRIENDLY_Magtoor|r
    .accept 1389 >>Accept Draenethyst Crystals
    .target Magtoor
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
    .goto 1435,75.53,19.4
    >>Collect |cRXP_LOOT_[Unprepared Sawtooth Flank]|r from |cRXP_ENEMY_Sawtooth Crocolisk|r, |cRXP_ENEMY_Sawtooth Snapper|r
    *Bring 8 Unprepared Sawtooth Flanks to Tok'Kar in Swamp of Sorrows.
    .complete 698,1 --Lack of Surplus
    .mob Sawtooth Crocolisk
    .mob Sawtooth Snapper
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
    .target Tok'Kar
step
    .goto 1418,6.49,47.2
    >>Talk to |cRXP_FRIENDLY_Neeka Bloodscar|r
    .turnin 1418 >>Turn in Neeka Bloodscar
    .accept 1419 >>Accept Coyote Thieves
    .accept 1420 >>Accept Report to Helgrum
    .target Neeka Bloodscar
step
    .goto 1418,2.42,46.06
    >>Talk to |cRXP_FRIENDLY_Jarkal Mossmeld|r
    .accept 2258 >>Accept Badlands Reagent Run
    .target Jarkal Mossmeld
step
    .goto 1418,4.09,46.22
    >>Talk to |cRXP_FRIENDLY_Mus'hale|r
    .accept 97663 >>Accept Supplies and Studies
    .target Mus'hale
step
    .goto 1418,4.09,46.22
    >>Talk to |cRXP_FRIENDLY_Mus'hale|r
    .turnin 97663 >>Turn in Supplies and Studies
    .target Mus'hale
step
    .goto 1418,15.03,60.1
    >>Collect |cRXP_LOOT_[Buzzard Gizzard]|r from |cRXP_ENEMY_Wayward Buzzard|r, |cRXP_ENEMY_Buzzard|r, |cRXP_ENEMY_Giant Buzzard|r
    *Bring 5 Buzzard Gizzards, 10 Crag Coyote Fangs, and 5 Rock Elemental Shards to Jarkal Mossmeld in Kargath, Badlands.
    .complete 2258,1 --Badlands Reagent Run
    .mob Wayward Buzzard
    .mob Buzzard
step
    .goto 1418,10.59,77.63
    >>Loot |cRXP_LOOT_[Primitive Drawing]|r from |cRXP_ENEMY_Dustbelcher Ogre|r, |cRXP_ENEMY_Dustbelcher Brute|r, |cRXP_ENEMY_Dustbelcher Wyrmhunter|r, then click it to start the quest
    .accept 78823 >>Accept Terror of the Desert Skies
    .use 211269
    .mob Dustbelcher Ogre
    .mob Dustbelcher Brute
step
    .goto 1418,10.59,77.63
    >>Collect |cRXP_LOOT_[Rock Elemental Shard]|r from |cRXP_ENEMY_Earth Elemental|r, |cRXP_ENEMY_Lesser Rock Elemental|r, |cRXP_ENEMY_Greater Rock Elemental|r. Collect |cRXP_LOOT_[Primitive Drawing]|r from |cRXP_ENEMY_Dustbelcher Ogre|r, |cRXP_ENEMY_Dustbelcher Brute|r, |cRXP_ENEMY_Dustbelcher Wyrmhunter|r
    *Bring 5 Buzzard Gizzards, 10 Crag Coyote Fangs, and 5 Rock Elemental Shards to Jarkal Mossmeld in Kargath, Badlands.
    *Bring the Primitive Drawing to Hemet Nesingwary in Stranglethorn Vale.
    .complete 2258,3 --Badlands Reagent Run
    .complete 78823,1 --Terror of the Desert Skies
    .mob Earth Elemental
    .mob Lesser Rock Elemental
    .mob Dustbelcher Ogre
    .mob Dustbelcher Brute
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
    .goto 1418,42.39,52.93
    >>Talk to |cRXP_FRIENDLY_Rigglefuzz|r
    .accept 705 >>Accept Pearl Diving
    .accept 703 >>Accept Barbecued Buzzard Wings
    .target Rigglefuzz
step
    .goto 1418,55.52,56.68
    >>Collect |cRXP_LOOT_[Coyote Jawbone]|r from |cRXP_ENEMY_Crag Coyote|r, |cRXP_ENEMY_Feral Crag Coyote|r, |cRXP_ENEMY_Elder Crag Coyote|r. Collect |cRXP_LOOT_[Crag Coyote Fang]|r from |cRXP_ENEMY_Crag Coyote|r, |cRXP_ENEMY_Feral Crag Coyote|r, |cRXP_ENEMY_Elder Crag Coyote|r. Collect |cRXP_LOOT_[Buzzard Wing]|r from |cRXP_ENEMY_Carrion Vulture|r, |cRXP_ENEMY_Young Mesa Buzzard|r, |cRXP_ENEMY_Mesa Buzzard|r
    *Bring 30 Coyote Jawbones to Neeka Bloodscar in Kargath.
    *Bring 5 Buzzard Gizzards, 10 Crag Coyote Fangs, and 5 Rock Elemental Shards to Jarkal Mossmeld in Kargath, Badlands.
    *Bring 4 Buzzard Wings to Rigglefuzz.
    .complete 1419,1 --Coyote Thieves
    .complete 2258,2 --Badlands Reagent Run
    .complete 703,1 --Barbecued Buzzard Wings
    .mob Crag Coyote
    .mob Feral Crag Coyote
    .mob Carrion Vulture
    .mob Young Mesa Buzzard
step
    .goto 1418,42.39,52.93
    >>Talk to |cRXP_FRIENDLY_Rigglefuzz|r
    .turnin 703 >>Turn in Barbecued Buzzard Wings
    .target Rigglefuzz
step
    .goto 1418,40.51,78.29
    >>Collect |cRXP_LOOT_[Large Stone Slab]|r from |cRXP_ENEMY_Rock Elemental|r
    *Bring 3 Large Stone Slabs to Lotwil Veriatus in the Badlands.
    .complete 711,1 --Study of the Elements: Rock
    .mob Rock Elemental
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
    .goto 1418,2.42,46.06
    >>Talk to |cRXP_FRIENDLY_Jarkal Mossmeld|r
    .turnin 2258 >>Turn in Badlands Reagent Run
    .target Jarkal Mossmeld
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
    .goto 1443,38.88,27.16
    >>Talk to |cRXP_FRIENDLY_Azore Aldamort|r
    .turnin 93464 >>Turn in The Visiting Mage
    .target Azore Aldamort
step
    .goto 1435,47.74,55.2
    >>Talk to |cRXP_FRIENDLY_Helgrum the Swift|r
    .turnin 1420 >>Turn in Report to Helgrum
    .target Helgrum the Swift
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
<< Horde
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 30-39
#name 38-41 Riverglades
#displayname 38-41 Riverglades
#next 41-42 Tanaris
step
    .zone 2548 >>Travel to Riverglades
    *How: Fly to Gadgetzan, ride to Steamwheedle Port, take the goblin boat to Powderfuse Port and ride to Rog'mar (Powderfuse has no working flight master). Never through Redridge.
    *Level for this part: 38-41. 66 quests, roughly 6 h 25 min.
step
    #completewith next
    .goto 2548,59.59,45.08,15,0
    >>Talk to |cRXP_FRIENDLY_Grakna|r if you don't have this flight path yet
    .fp Grakna >>Get the flight path
    .target Grakna
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
    .target Kreza Darkthorn
step
    .goto 2548,59.6,47.01
    >>Click the |cRXP_PICK_Wanted|r
    .accept 95882 >>Accept WANTED: Scoutmaster Vargas
step
    .goto 2548,58.13,45.32
    >>Talk to |cRXP_FRIENDLY_Tan'jani|r
    .accept 95951 >>Accept Fetch 'n' Fletch
    .target Tan'jani
step
    .goto 2548,59.46,47.02
    >>Click the |cRXP_PICK_WANTED!|r
    .accept 95992 >>Accept WANTED: Ghostmaw
step
    >>Collect |cRXP_LOOT_[Makeshift Stickin' Spear]|r
    *Collect Wood Bundles from Peasant Woodpiles in Turner's Logging Camp then fletch them into 20 Makeshift Stickin' Spears.
    .complete 95951,1 --Fetch 'n' Fletch
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
    .goto 2548,65.2,25
    >>Collect |cRXP_LOOT_[Good Rock]|r from |cRXP_PICK_Rock Pile|r
    *Gather 10 Good Rocks for Hamur in Bolder'ok.
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
    .goto 2548,73.36,24.76
    >>Talk to |cRXP_FRIENDLY_Jom-jom|r
    .accept 94556 >>Accept Jom-jom's Escape
    .target Jom-jom
step
    .goto 2548,64.25,15.72
    >>Talk to |cRXP_FRIENDLY_Clugfist|r
    .turnin 94556 >>Turn in Jom-jom's Escape
    .target Clugfist
step
    .goto 2548,59.37,45.6
    >>Talk to |cRXP_FRIENDLY_Krom'rosh|r
    .turnin 95062 >>Turn in Frazzlespark's Crate
    .target Krom'rosh
step
    .goto 2548,60.46,47.86
    >>Talk to |cRXP_FRIENDLY_Neza Bloodsnout|r
    .turnin 95882 >>Turn in WANTED: Scoutmaster Vargas
    .target Neza Bloodsnout
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
    .turnin 95122 >>Turn in Unchecked Expansion
    .turnin 95123 >>Turn in A Blast Ye Scurvy Dogs!
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
    .accept 95124 >>Accept Admiral Lamora
    .accept 95165 >>Accept See Ya, Scallywags!
    .target Wharfmaster Whizzbuzz
step
    .goto 2548,79.45,52.71
    >>Talk to |cRXP_FRIENDLY_Wharfmaster Whizzbuzz|r
    .turnin 95165 >>Turn in See Ya, Scallywags!
    .target Wharfmaster Whizzbuzz
step
    .goto 2548,74.58,71.88
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
    .goto 2548,44.58,81.4
    >>Kill |cRXP_ENEMY_Meadowsbrook Farmhand|r. Collect |cRXP_LOOT_[Feed Satchel]|r from |cRXP_PICK_Feed Satchel|r
    *Slay 12 Meadowsbrook Farmhands, then return to Krom'rosh with news of your success.
    *Steal 6 Feed Satchels from the Alliance farm in Meadowsbrook then return to Krom'rosh.
    .complete 93786,1 --A Message in Blood
    .complete 93787,1 --Food for the Taking
    .mob Meadowsbrook Farmhand
step
    .goto 2548,43.94,67.16
    >>Collect |cRXP_LOOT_[Woodworker's Axe]|r from |cRXP_ENEMY_Turner's Mill Lumberjack|r. Collect |cRXP_LOOT_[Ghostmaw's Fang]|r from |cRXP_ENEMY_Ghostmaw|r
    *Retrieve 10 Woodworker's Axe from the lumberjacks at Turner's Logging Camp for Kreza Darkthorn in Rog'mar.
    *Bring Ghostmaw's Fang to Tan'jani in Rog'mar.
    .complete 93788,1 --Borrowed Blades
    .complete 95992,1 --WANTED: Ghostmaw
    .mob Turner's Mill Lumberjack
    .mob Ghostmaw
step
    .goto 2548,43.25,55.86
    >>Kill |cRXP_ENEMY_Freshwater Crocolisk|r
    *Impale 10 Freshwater Crocolisks then return to Tran'jani in Rog'mar.
    .complete 95955,1 --Stick 'Em
    .mob Freshwater Crocolisk
step
    .goto 2548,47.31,51.41
    >>Talk to |cRXP_FRIENDLY_Fuzzle|r
    .accept 94961 >>Accept Biting the Hand
    .target Fuzzle
step
    .goto 2548,46.7,49.24
    >>Collect |cRXP_LOOT_[Twilight Finger Bone]|r from |cRXP_ENEMY_Twilight Shadowmancer|r, |cRXP_ENEMY_Twilight Neophyte|r, |cRXP_ENEMY_Twilight Raider|r
    *Bring 20 Twilight Finger Bones to Fuzzle.
    .complete 94961,1 --Biting the Hand
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
    .goto 2548,59.37,45.6
    >>Talk to |cRXP_FRIENDLY_Krom'rosh|r
    .turnin 93786 >>Turn in A Message in Blood
    .turnin 93787 >>Turn in Food for the Taking
    .target Krom'rosh
step
    .goto 2548,59.92,45.97
    >>Talk to |cRXP_FRIENDLY_Kreza Darkthorn|r
    .turnin 93788 >>Turn in Borrowed Blades
    .target Kreza Darkthorn
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
    .goto 2548,77.1,52.9
    >>Talk to |cRXP_FRIENDLY_Friz Frazzlespark|r
    .turnin 93976 >>Turn in The Goblin Trader
    .target Friz Frazzlespark
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
    .goto 2548,20.79,68.22
    >>Kill |cRXP_ENEMY_Young Paletusk|r. Kill |cRXP_ENEMY_Redridge Mystic|r. Kill |cRXP_ENEMY_Redridge Trapper|r. Kill |cRXP_ENEMY_Redridge Brute|r. Collect |cRXP_LOOT_[Snargl's Snout]|r from |cRXP_ENEMY_Snargl|r. Collect |cRXP_LOOT_[Stolen Ore]|r from |cRXP_ENEMY_Redridge Brute|r, |cRXP_ENEMY_Redridge Mystic|r, |cRXP_ENEMY_Redridge Trapper|r
    *Return 10 Young Paletusks to Na'zok's farm near Bolder'ok.
    *Kill 8 Redridge Mystics, 8 Redridge Trappers, and 6 Redridge Brutes for Neza Bloodsnout at Rog'mar.
    *Locate Snargl in the Bristle Hills, kill him, and retrieve his snout for Neza Bloodsnout.
    *Gather 40 Stolen Ore from gnolls in the Bristle Hills for Kreza Darkthorn.
    .complete 95163,1 --Drive Them Back
    .complete 94532,1 --Gnoll Infestation
    .complete 94532,2 --Gnoll Infestation
    .complete 94532,3 --Gnoll Infestation
    .complete 94533,1 --Snargl's Snout
    .complete 94535,1 --Bristle Hills Bandits
    .mob Young Paletusk
    .mob Redridge Mystic
    .mob Redridge Trapper
    .mob Redridge Brute
    .mob Snargl
step
    .goto 2548,60.46,47.86
    >>Talk to |cRXP_FRIENDLY_Neza Bloodsnout|r
    .turnin 94532 >>Turn in Gnoll Infestation
    .turnin 94533 >>Turn in Snargl's Snout
    .target Neza Bloodsnout
step
    .goto 2548,59.92,45.97
    >>Talk to |cRXP_FRIENDLY_Kreza Darkthorn|r
    .turnin 94535 >>Turn in Bristle Hills Bandits
    .target Kreza Darkthorn
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
    .goto 2548,70.73,28.09
    >>Talk to |cRXP_FRIENDLY_Na'zok|r
    .turnin 95163 >>Turn in Drive Them Back
    .target Na'zok
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
    .target Crag'rog
step
    .goto 2548,26.65,41.69
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
    .target Da'grosh
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
    .goto 1458,61.64,28.95
    >>Talk to |cRXP_FRIENDLY_Mirelle Tremayne|r
    .accept 97884 >>Accept Armory of Sunnyglade
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
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 40-49
#name 41-42 Tanaris
#displayname 41-42 Tanaris
#next 42-44 Feralas
step
    .zone 1446 >>Travel to Tanaris
    *How: From Powderfuse Port take the goblin boat to Steamwheedle Port and ride to Gadgetzan. From Kalimdor: fly to Gadgetzan.
    *Level for this part: 41-42. 22 quests, roughly 2 h 55 min.
step
    #completewith next
    .goto 1446,51.6,25.44,15,0
    >>Talk to |cRXP_FRIENDLY_Bulkrek Ragefist|r if you don't have this flight path yet
    .fp Bulkrek Ragefist >>Get the flight path
    .target Bulkrek Ragefist
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
    .accept 8366 >>Accept Southsea Shakedown
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
    >>Kill |cRXP_ENEMY_Southsea Pirate|r. Kill |cRXP_ENEMY_Southsea Freebooter|r. Kill |cRXP_ENEMY_Southsea Dock Worker|r. Kill |cRXP_ENEMY_Southsea Swashbuckler|r. Collect |cRXP_LOOT_[Southsea Pirate Hat]|r from |cRXP_ENEMY_Southsea Pirate|r, |cRXP_ENEMY_Southsea Freebooter|r, |cRXP_ENEMY_Southsea Dock Worker|r. Collect |cRXP_LOOT_[Firebeard's Head]|r from |cRXP_ENEMY_Andre Firebeard|r
    *Security Chief Bilgewhizzle of Steamwheedle Port in Tanaris wants you to kill 10 Southsea Pirates, 10 Southsea Freebooters, 10 Southsea Dock Workers and 10 Southsea Swashbucklers.
    *Haughty Modiste wants you to collect 20 Southsea Pirate Hats and return them to her at Steamwheedle Port in Tanaris.
    *Bring Andre's Head to Security Chief Bilgewhizzle in Steamwheedle Port.
    .complete 8366,1 --Southsea Shakedown
    .complete 8366,2 --Southsea Shakedown
    .complete 8366,3 --Southsea Shakedown
    .complete 8366,4 --Southsea Shakedown
    .complete 8365,1 --Pirate Hats Ahoy!
    .complete 2875,1 --WANTED: Andre Firebeard
    .mob Southsea Pirate
    .mob Southsea Freebooter
    .mob Southsea Dock Worker
    .mob Southsea Swashbuckler
    .mob Andre Firebeard
step
    .goto 1446,67.06,23.89
    >>Talk to |cRXP_FRIENDLY_Security Chief Bilgewhizzle|r
    .turnin 8366 >>Turn in Southsea Shakedown
    .turnin 2875 >>Turn in WANTED: Andre Firebeard
    .target Security Chief Bilgewhizzle
step
    .goto 1446,66.56,22.27
    >>Talk to |cRXP_FRIENDLY_Haughty Modiste|r
    .turnin 8365 >>Turn in Pirate Hats Ahoy!
    .target Haughty Modiste
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
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 40-49
#name 42-44 Feralas
#displayname 42-44 Feralas
#next 44-44 Shen'dralas
step
    .zone 1444 >>Travel to Feralas
    *How: Fly to Camp Mojache.
    *Level for this part: 42-44. 28 quests, roughly 2 h 50 min.
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
    .goto 1444,74.91,44.02
    >>Talk to |cRXP_FRIENDLY_Blaise Montgomery|r
    .accept 92878 >>Accept Lost for Words
    .target Blaise Montgomery
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
    .target Witch Doctor Uzer'i
step
    >>Collect |cRXP_LOOT_[Gordunni Cobalt]|r from |cRXP_PICK_Gordunni Dirt Mound|r
    *Orwin Gizzmick in Camp Mojache wants 12 samples of Gordunni Cobalt.
    .complete 2987,1 --Gordunni Cobalt
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
    >>Collect |cRXP_LOOT_[Gordunni Orb]|r from |cRXP_ENEMY_Gordunni Mage-Lord|r. Kill |cRXP_ENEMY_Gordunni Shaman|r. Kill |cRXP_ENEMY_Gordunni Warlock|r
    *Rok Orhan in Camp Mojache wants you to find a Gordunni Orb.
    *Rok Orhan in Camp Mojache wants you to kill 10 Gordunni Shaman, 10 Gordunni Warlocks, and 5 Gordunni Maulers.
    .complete 2979,1 --Dark Ceremony
    .complete 2980,1 --The Ogres of Feralas
    .complete 2980,2 --The Ogres of Feralas
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
    .goto 1444,74.43,42.91
    >>Talk to |cRXP_FRIENDLY_Jangdor Swiftstrider|r
    .turnin 2822 >>Turn in The Mark of Quality
    .target Jangdor Swiftstrider
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
    .accept 7732 >>Accept Zukk'ash Report
    .target Hadoken Swiftstrider
step
    .goto 1444,74.43,42.91
    >>Talk to |cRXP_FRIENDLY_Jangdor Swiftstrider|r
    .accept 7734 >>Accept Improved Quality
    .target Jangdor Swiftstrider
step
    .goto 1444,75.8,43.58
    >>Talk to |cRXP_FRIENDLY_Rok Orhan|r
    .accept 3002 >>Accept The Gordunni Orb
    .target Rok Orhan
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
    .target Witch Doctor Uzer'i
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 40-49
#name 44-44 Shen'dralas
#displayname 44-44 Shen'dralas
#next 44-45 Dustwallow Marsh
step
    .zone 2652 >>Travel to Shen'dralas
    *How: Ride south out of Desolace through the Valley of Bones.
    *Level for this part: 44-44. 17 quests, roughly 1 h.
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
    .goto 2652,34.13,77.9
    >>Talk to |cRXP_FRIENDLY_Rokren|r
    .accept 93125 >>Accept Going Home
    .target Rokren
step
    .goto 2652,20.93,22.68
    >>Talk to |cRXP_FRIENDLY_Nerlokh|r
    .turnin 93125 >>Turn in Going Home
    .target Nerlokh
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
    .goto 2652,59.27,53.93
    >>Talk to |cRXP_FRIENDLY_Hagiak|r
    .turnin 93072 >>Turn in Long-Term Solutions
    .target Hagiak
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
    .target Mordent Evenshade
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
    .target Nerlokh
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 40-49
#name 44-45 Dustwallow Marsh
#displayname 44-45 Dustwallow Marsh
#next 45-46 Un'Goro Crater
step
    .zone 1445 >>Travel to Dustwallow Marsh
    *How: Fly to Brackenwall Village.
    *Level for this part: 44-45. 13 quests, roughly 1 h 50 min.
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
    .goto 1445,36.4,30.85
    >>Talk to |cRXP_FRIENDLY_Krak|r
    .accept 98192 >>Accept Skin Careful, Skin Sharp
    .target Krak
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
    >>Kill |cRXP_ENEMY_Firemane Scalebane|r. Collect |cRXP_LOOT_[Shed Dark Dragonscale]|r from |cRXP_ENEMY_Searing Hatchling|r, |cRXP_ENEMY_Searing Whelp|r, |cRXP_ENEMY_Firemane Scout|r. Kill |cRXP_ENEMY_Searing Hatchling|r. Kill |cRXP_ENEMY_Searing Whelp|r. Collect |cRXP_LOOT_[Wyrmtail]|r from |cRXP_PICK_Wyrmtail|r
    *Tharg in Brackenwall Village wants you to kill 10 Firemane Scouts, 10 Firemane Ash Tails, and 5 Firemane Scalebanes.
    *Bring 20 Shed Dark Dragonscales to Drazzit Dripvalve.
    *Slay 8 Searing Hatchlings and 8 Searing Whelps.
    *Bring 10 Wyrmtail to Gizzix Grimegurgle.
    .complete 1168,3 --Army of the Black Dragon
    .complete 98215,1 --Dragon Scales, Post Burnt Tails
    .complete 98205,1 --Whelps are the Worst!
    .complete 98205,2 --Whelps are the Worst!
    .complete 98231,1 --Active Ingredient
    .mob Firemane Scalebane
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
    .goto 1445,34.16,69.01
    >>Collect |cRXP_LOOT_[Intact Raptor Hide]|r from |cRXP_ENEMY_Bloodfen Razormaw|r, |cRXP_ENEMY_Bloodfen Lashtail|r
    *Bring 8 Intact Raptor Hides to Krak in Brackenwall Village.
    .complete 98192,1 --Skin Careful, Skin Sharp
    .mob Bloodfen Razormaw
    .mob Bloodfen Lashtail
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
    .target Draz'Zilb
step
    .goto 1445,36.4,30.85
    >>Talk to |cRXP_FRIENDLY_Krak|r
    .turnin 98192 >>Turn in Skin Careful, Skin Sharp
    .target Krak
step
    .goto 1445,37.15,33.09
    >>Talk to |cRXP_FRIENDLY_Draz'Zilb|r
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
    .goto 1445,37.15,33.09
    >>Talk to |cRXP_FRIENDLY_Draz'Zilb|r
    .turnin 1173 >>Turn in Challenge Overlord Mok'Morokk
    .target Draz'Zilb
step
    .goto 1456,61.54,80.92
    >>Talk to |cRXP_FRIENDLY_Melor Stonehoof|r
    .accept 1205 >>Accept Deadmire
    .target Melor Stonehoof
step
    .goto 1454,38.93,38.4
    >>Talk to |cRXP_FRIENDLY_Zor Lonetree|r
    .accept 7541 >>Accept Service to the Horde
    .target Zor Lonetree
step
    .goto 1454,38.93,38.4
    >>Talk to |cRXP_FRIENDLY_Zor Lonetree|r
    .turnin 7541 >>Turn in Service to the Horde
    .target Zor Lonetree
step
    .goto 1445,48.81,56.75
    >>Collect |cRXP_LOOT_[Deadmire's Tooth]|r from |cRXP_ENEMY_Deadmire|r
    *Bring Deadmire's Tooth to Melor in Thunder Bluff.
    .complete 1205,1 --Deadmire
    .mob Deadmire
step
    .goto 1456,61.54,80.92
    >>Talk to |cRXP_FRIENDLY_Melor Stonehoof|r
    .turnin 1205 >>Turn in Deadmire
    .target Melor Stonehoof
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 40-49
#name 45-46 Un'Goro Crater
#displayname 45-46 Un'Goro Crater
#next 46-47 Azshara
step
    .zone 1449 >>Travel to Un'Goro Crater
    *How: Fly to Marshal's Refuge.
    *Level for this part: 45-46. 14 quests, roughly 1 h 40 min.
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
    .goto 1449,66.96,30.14
    >>Kill |cRXP_ENEMY_Bloodpetal Lasher|r. Kill |cRXP_ENEMY_Bloodpetal Thresher|r
    *Hunt 5 Bloodpetal Lashers, 5 Bloodpetal Threshers, 5 Bloodpetal Flayers and 5 Bloodpetal Trappers for Larion at Marshal's Refuge.
    .complete 4145,1 --Larion and Muigin
    .complete 4145,4 --Larion and Muigin
    .mob Bloodpetal Lasher
    .mob Bloodpetal Thresher
step
    .goto 1449,35.5,38.3
    >>Kill |cRXP_ENEMY_Bloodpetal Trapper|r
    *Hunt 5 Bloodpetal Lashers, 5 Bloodpetal Threshers, 5 Bloodpetal Flayers and 5 Bloodpetal Trappers for Larion at Marshal's Refuge.
    .complete 4145,2 --Larion and Muigin
    .mob Bloodpetal Trapper
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
    .goto 1449,45.54,8.72
    >>Talk to |cRXP_FRIENDLY_Larion|r
    .accept 4147 >>Accept Marvon's Workshop
    .target Larion
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
    .goto 1413,62.45,38.73
    >>Talk to |cRXP_FRIENDLY_Liv Rizzlefix|r
    .turnin 4147 >>Turn in Marvon's Workshop
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
    .target J.D. Collie
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 40-49
#name 46-47 Azshara
#displayname 46-47 Azshara
#next 47-48 Blasted Lands/Burning Steppes
step
    .zone 1447 >>Travel to Azshara
    *How: Fly to Valormok.
    *Level for this part: 46-47. 28 quests, roughly 3 h 5 min.
step
    #completewith next
    .goto 1447,21.96,49.62,15,0
    >>Talk to |cRXP_FRIENDLY_Kroum|r if you don't have this flight path yet
    .fp Kroum >>Get the flight path
    .target Kroum
step
    .goto 1447,21.82,52.1
    >>Talk to |cRXP_FRIENDLY_Kurll|r
    .accept 91488 >>Accept Home on the Range
    .target Kurll
step
    .goto 1447,22.53,51.84
    >>Talk to |cRXP_FRIENDLY_Izvi Gildfizz|r
    .accept 91568 >>Accept Long Walks on the Beach
    .accept 91569 >>Accept Blue Gold
    .target Izvi Gildfizz
step
    .goto 1447,22.56,51.42
    >>Talk to |cRXP_FRIENDLY_Jediga|r
    .accept 3517 >>Accept Stealing Knowledge
    .target Jediga
step
    .goto 1447,38.91,53.46
    >>Collect |cRXP_LOOT_[Highborne Treasure Fragment]|r from |cRXP_ENEMY_Makrinni Burrower|r. Collect |cRXP_LOOT_[Tablet of Beth'Amara]|r from |cRXP_PICK_Tablet of Beth'Amara|r. Collect |cRXP_LOOT_[Tablet of Jin'yael]|r from |cRXP_PICK_Tablet of Jin'yael|r. Collect |cRXP_LOOT_[Tablet of Markri]|r from |cRXP_PICK_Tablet of Markri|r. Collect |cRXP_LOOT_[Tablet of Sael'hai]|r from |cRXP_PICK_Tablet of Sael'hai|r
    *Dig up 10 Highborne Treasure Fragments with the Treasure Trowel 3000 for Izvi Glidfizz in Valormok.
    *Find the Tablet of Beth'Amara, the Tablet of Jin'yael, the Tablet of Markri, and the Tablet of Sael'hai before returning to Jediga in Azshara.
    .complete 91568,1 --Long Walks on the Beach
    .complete 3517,1 --Stealing Knowledge
    .complete 3517,2 --Stealing Knowledge
    .complete 3517,3 --Stealing Knowledge
    .complete 3517,4 --Stealing Knowledge
    .mob Makrinni Burrower
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
    .target Elder Bramblesnap
step
    .goto 1447,42.28,20.13
    >>Talk to |cRXP_FRIENDLY_Gatekeeper Rageroar|r
    .accept 86791 >>Accept Missing Blackmaw Scouts
    .target Gatekeeper Rageroar
step
    .goto 1447,41.67,19.54
    >>Talk to |cRXP_FRIENDLY_Elder Bramblesnap|r
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
    .turnin 86791 >>Turn in Missing Blackmaw Scouts
    .accept 86797 >>Accept Return to Rageroar
    .accept 86777 >>Accept Master Feardred
    .target Korsa
step
    .goto 1447,60.57,23.96
    >>Collect |cRXP_LOOT_[Mana-Siphoning Wand]|r from |cRXP_ENEMY_Blood Elf Arcanist|r, |cRXP_ENEMY_Evin Schmidtt|r, |cRXP_ENEMY_Lumina Windsinger|r. Collect |cRXP_LOOT_[Feardred's Amulet]|r from |cRXP_ENEMY_Master Feardred|r
    *Bring a Mana-Siphoning Wand to Izvi Gildfizz at Valormok.
    *Kill Master Feardred, and bring his amulet to Korsa.
    .complete 91569,1 --Blue Gold
    .complete 86777,1 --Master Feardred
    .mob Blood Elf Arcanist
    .mob Evin Schmidtt
    .mob Master Feardred
step
    .goto 1447,63.01,21.43
    >>Talk to |cRXP_FRIENDLY_Korsa|r
    .turnin 86777 >>Turn in Master Feardred
    .target Korsa
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
    .goto 1447,44.37,53.93
    >>Collect |cRXP_LOOT_[Some Rune]|r from |cRXP_ENEMY_Spitelash Siren|r, |cRXP_ENEMY_Spitelash Myrmidon|r, |cRXP_ENEMY_Spitelash Battlemaster|r
    *Find Some Rune that the naga have in their possession in the Ruins of Eldarath and return it to Kim'jael in Azshara.
    .complete 5534,1 --Kim'jael's "Missing" Equipment
    .mob Spitelash Siren
    .mob Spitelash Myrmidon
step
    .goto 1447,22.53,51.84
    >>Talk to |cRXP_FRIENDLY_Izvi Gildfizz|r
    .turnin 91568 >>Turn in Long Walks on the Beach
    .turnin 91569 >>Turn in Blue Gold
    .target Izvi Gildfizz
step
    .goto 1447,22.56,51.42
    >>Talk to |cRXP_FRIENDLY_Jediga|r
    .turnin 3517 >>Turn in Stealing Knowledge
    .accept 3541 >>Accept Delivery to Jes'rimon
    .accept 3542 >>Accept Delivery to Andron Gant
    .accept 3561 >>Accept Delivery to Archmage Xylem
    .accept 3518 >>Accept Delivery to Magatha
    .target Jediga
step
    .goto 1447,29.25,40.21
    >>Talk to |cRXP_FRIENDLY_Archmage Xylem|r
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
    .goto 1447,21.82,52.1
    >>Talk to |cRXP_FRIENDLY_Kurll|r
    .turnin 91488 >>Turn in Home on the Range
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
    .goto 1447,53.45,21.82
    >>Talk to |cRXP_FRIENDLY_Kim'jael|r
    .turnin 5534 >>Turn in Kim'jael's "Missing" Equipment
    .target Kim'jael
step
    .goto 1454,55.52,34.08
    >>Talk to |cRXP_FRIENDLY_Jes'rimon|r
    .turnin 3541 >>Turn in Delivery to Jes'rimon
    .accept 3563 >>Accept Jes'rimon's Payment to Jediga
    .target Jes'rimon
step
    .goto 1458,54.81,76.33
    >>Talk to |cRXP_FRIENDLY_Andron Gant|r
    .turnin 3542 >>Turn in Delivery to Andron Gant
    .accept 3564 >>Accept Andron's Payment to Jediga
    .target Andron Gant
step
    .goto 1456,69.85,30.91
    >>Talk to |cRXP_FRIENDLY_Magatha Grimtotem|r
    .turnin 3518 >>Turn in Delivery to Magatha
    .accept 3562 >>Accept Magatha's Payment to Jediga
    .target Magatha Grimtotem
step
    .goto 1447,22.56,51.42
    >>Talk to |cRXP_FRIENDLY_Jediga|r
    .turnin 3563 >>Turn in Jes'rimon's Payment to Jediga
    .turnin 3564 >>Turn in Andron's Payment to Jediga
    .turnin 3562 >>Turn in Magatha's Payment to Jediga
    .target Jediga
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 40-49
#name 47-48 Blasted Lands/Burning Steppes
#displayname 47-48 Blasted Lands/Burning Steppes
#next 48-48 Western/Eastern Plaguelands
step
    .zone 1419 >>Travel to Blasted Lands
    *How: In Kalimdor? Zeppelin to Grom'gol or the Undercity first. Then fly to Stonard or Flame Crest.
    *Level for this part: 47-48. 12 quests, roughly 2 h 40 min.
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
    .goto 1435,47.79,54.94
    >>Talk to |cRXP_FRIENDLY_Dispatch Commander Ruag|r
    .turnin 2621 >>Turn in The Disgraced One
    .target Dispatch Commander Ruag
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
    .accept 4808 >>Accept Felnok Steelspring
    .target Tinkee Steamboil
step
    .goto 1428,95.09,31.56
    >>Talk to |cRXP_FRIENDLY_Cyrus Therepentous|r
    .accept 4023 >>Accept A Taste of Flame
    .target Cyrus Therepentous
step
    .goto 1452,61.63,38.61
    >>Talk to |cRXP_FRIENDLY_Felnok Steelspring|r
    .turnin 4808 >>Turn in Felnok Steelspring
    .target Felnok Steelspring
step
    .goto 1419,50.64,14.3
    >>Talk to |cRXP_FRIENDLY_Bloodmage Lynnore|r
    .accept 2601 >>Accept The Basilisk's Bite
    .accept 2603 >>Accept Vulture's Vigor
    .target Bloodmage Lynnore
step
    .goto 1419,50.55,14.2
    >>Talk to |cRXP_FRIENDLY_Bloodmage Drazial|r
    .accept 2581 >>Accept Snickerfang Jowls
    .accept 2583 >>Accept A Boar's Vitality
    .accept 2585 >>Accept The Decisive Striker
    .target Bloodmage Drazial
step
    .goto 1419,47.03,22.07
    >>Collect |cRXP_LOOT_[Basilisk Brain]|r from |cRXP_ENEMY_Redstone Basilisk|r, |cRXP_ENEMY_Redstone Crystalhide|r, |cRXP_ENEMY_Deatheye|r
    *Bring ten Basilisk Brains and two Vulture Gizzards to Bloodmage Lynnore.
    *Bring three Blasted Boar Lungs, two Scorpok Pincers, and one Basilisk Brain to Bloodmage Drazial.
    .complete 2601,1 --The Basilisk's Bite
    .complete 2583,3 --A Boar's Vitality
    .mob Redstone Basilisk
    .mob Redstone Crystalhide
step
    .goto 1419,54.23,32.8
    >>Collect |cRXP_LOOT_[Vulture Gizzard]|r from |cRXP_ENEMY_Black Slayer|r, |cRXP_ENEMY_Bonepicker|r, |cRXP_ENEMY_Spiteflayer|r. Collect |cRXP_LOOT_[Snickerfang Jowl]|r from |cRXP_ENEMY_Starving Snickerfang|r, |cRXP_ENEMY_Snickerfang Hyena|r, |cRXP_ENEMY_Ravage|r. Collect |cRXP_LOOT_[Blasted Boar Lung]|r from |cRXP_ENEMY_Ashmane Boar|r, |cRXP_ENEMY_Helboar|r, |cRXP_ENEMY_Grunter|r. Collect |cRXP_LOOT_[Scorpok Pincer]|r from |cRXP_ENEMY_Scorpok Stinger|r, |cRXP_ENEMY_Clack the Reaver|r
    *Bring ten Basilisk Brains and two Vulture Gizzards to Bloodmage Lynnore.
    *Bring ten Vulture Gizzards and two Snickerfang Jowls to Bloodmage Lynnore.
    *Bring three Snickerfang Jowls, two Blasted Boar Lungs, and one Scorpok Pincer to Bloodmage Drazial.
    *Bring three Blasted Boar Lungs, two Scorpok Pincers, and one Basilisk Brain to Bloodmage Drazial.
    *Bring three Scorpok Pincers, two Vulture Gizzards, and one Blasted Boar Lung to Bloodmage Drazial.
    .complete 2601,2 --The Basilisk's Bite
    .complete 2603,1 --Vulture's Vigor
    .complete 2603,2 --Vulture's Vigor
    .complete 2581,1 --Snickerfang Jowls
    .complete 2581,2 --Snickerfang Jowls
    .complete 2581,3 --Snickerfang Jowls
    .complete 2583,1 --A Boar's Vitality
    .complete 2583,2 --A Boar's Vitality
    .complete 2585,1 --The Decisive Striker
    .complete 2585,2 --The Decisive Striker
    .complete 2585,3 --The Decisive Striker
    .mob Black Slayer
    .mob Bonepicker
    .mob Starving Snickerfang
    .mob Snickerfang Hyena
    .mob Ashmane Boar
    .mob Helboar
    .mob Scorpok Stinger
    .mob Clack the Reaver
step
    .goto 1419,50.64,14.3
    >>Talk to |cRXP_FRIENDLY_Bloodmage Lynnore|r
    .turnin 2601 >>Turn in The Basilisk's Bite
    .turnin 2603 >>Turn in Vulture's Vigor
    .target Bloodmage Lynnore
step
    .goto 1419,50.55,14.2
    >>Talk to |cRXP_FRIENDLY_Bloodmage Drazial|r
    .turnin 2581 >>Turn in Snickerfang Jowls
    .turnin 2583 >>Turn in A Boar's Vitality
    .turnin 2585 >>Turn in The Decisive Striker
    .target Bloodmage Drazial
step
    .goto 1418,3.02,47.81
    >>Talk to |cRXP_FRIENDLY_Hierophant Theodora Mulvadania|r
    .accept 4061 >>Accept The Rise of the Machines
    .target Hierophant Theodora Mulvadania
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
    .goto 1428,85.81,57.07
    >>Collect |cRXP_LOOT_[Fractured Elemental Shard]|r from |cRXP_ENEMY_[DNT]|r, |cRXP_ENEMY_[DNT]|r, |cRXP_ENEMY_Malfunctioning Reaver|r
    *Venture to the Burning Steppes and recover 10 Fractured Elemental Shards for Hierophant Theodora Mulvadania.
    .complete 4061,1 --The Rise of the Machines
    .mob [DNT]
step
    .goto 1418,3.02,47.81
    >>Talk to |cRXP_FRIENDLY_Hierophant Theodora Mulvadania|r
    .turnin 4061 >>Turn in The Rise of the Machines
    .target Hierophant Theodora Mulvadania
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 40-49
#name 48-48 Western/Eastern Plaguelands
#displayname 48-48 Western/Eastern Plaguelands
#next 48-49 Felwood
step
    .zone 1422 >>Travel to Western
    *How: Fly to the Bulwark (Tirisfal); later Light's Hope Chapel.
    *Level for this part: 48-48. 13 quests, roughly 1 h 35 min.
step
    .goto 1422,47.35,49.63
    >>Click the |cRXP_PICK_Locked Cabinet|r
    .accept 5060 >>Accept Locked Away
step
    >>Collect |cRXP_LOOT_[Dalson Cabinet Key]|r from |cRXP_ENEMY_Farmer Dalson|r
    .complete 5060,1 --Locked Away
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
    .goto 1422,46.47,42.65
    >>Kill |cRXP_ENEMY_Diseased Wolf|r
    *Destroy 8 Diseased Wolves, and then return to Mulgris Deepriver at the Writhing Haunt, Western Plaguelands.
    .complete 4984,1 --The Wildlife Suffers Too
    .mob Diseased Wolf
step
    .goto 1422,53.73,64.66
    >>Talk to |cRXP_FRIENDLY_Mulgris Deepriver|r
    .turnin 4984 >>Turn in The Wildlife Suffers Too
    .target Mulgris Deepriver
step
    .goto 1458,69.79,43.16
    >>Talk to |cRXP_FRIENDLY_Royal Overseer Bauhaus|r
    .turnin 5023 >>Turn in Better Late Than Never
    .target Royal Overseer Bauhaus
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
    .goto 1423,23.07,72.63
    >>Collect |cRXP_LOOT_[Zaeldarr's Head]|r from |cRXP_ENEMY_Zaeldarr the Outcast|r
    *Bring Zaeldarr's Head to Caretaker Alen at Light's Hope Chapel.
    .complete 6021,1 --Zaeldarr the Outcast
    .mob Zaeldarr the Outcast
step
    .goto 1423,11.36,26.37
    >>Talk to |cRXP_FRIENDLY_Augustus the Touched|r
    .accept 6164 >>Accept Augustus' Receipt Book
    .target Augustus the Touched
step
    .goto 1423,14.04,24.22
    >>Collect |cRXP_LOOT_[Augustus' Receipt Book]|r from |cRXP_PICK_Augustus' Receipt Book|r
    *Bring Augustus' Receipt Book to Augustus the Touched in Terrordale.
    .complete 6164,1 --Augustus' Receipt Book
step
    .goto 1423,11.36,26.37
    >>Talk to |cRXP_FRIENDLY_Augustus the Touched|r
    .turnin 6164 >>Turn in Augustus' Receipt Book
    .target Augustus the Touched
step
    .goto 1423,69.93,53.72
    >>Talk to |cRXP_FRIENDLY_Caretaker Alen|r
    .turnin 6021 >>Turn in Zaeldarr the Outcast
    .target Caretaker Alen
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
    .goto 1420,83.19,68.45
    >>Talk to |cRXP_FRIENDLY_Argent Officer Garush|r
    .accept 5405 >>Accept Argent Dawn Commission
    .target Argent Officer Garush
step
    .goto 1420,83.13,68.94
    >>Talk to |cRXP_FRIENDLY_High Executor Derrington|r
    .turnin 5096 >>Turn in Scarlet Diversions
    .target High Executor Derrington
step
    .goto 1420,83.19,68.45
    >>Talk to |cRXP_FRIENDLY_Argent Officer Garush|r
    .turnin 5405 >>Turn in Argent Dawn Commission
    .target Argent Officer Garush
step
    .goto 1420,83.13,68.94
    >>Talk to |cRXP_FRIENDLY_High Executor Derrington|r
    .accept 5228 >>Accept The Scourge Cauldrons
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
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 40-49
#name 48-49 Felwood
#displayname 48-49 Felwood
#next 49-50 Winterspring
step
    .zone 1448 >>Travel to Felwood
    *How: In the Eastern Kingdoms? Zeppelin to Orgrimmar first. Then fly to Bloodvenom Post.
    *Level for this part: 48-49. 18 quests, roughly 2 h 10 min.
step
    #completewith next
    .goto 1448,34.44,53.96,15,0
    >>Talk to |cRXP_FRIENDLY_Brakkar|r if you don't have this flight path yet
    .fp Brakkar >>Get the flight path
    .target Brakkar
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
    .goto 1448,34.21,52.34
    >>Talk to |cRXP_FRIENDLY_Winna Hazzard|r
    .turnin 86612 >>Turn in Stag Lord's Bauble
    .target Winna Hazzard
step
    .goto 1448,46.75,83.13
    >>Talk to |cRXP_FRIENDLY_Maybess Riverbreeze|r
    .accept 4102 >>Accept Cleansing Felwood
    .target Maybess Riverbreeze
step
    .goto 1448,51.35,82.01
    >>Talk to |cRXP_FRIENDLY_Jessir Moonbow|r
    .turnin 5203 >>Turn in Rescue From Jaedenar
    .target Jessir Moonbow
step
    .goto 1448,51.21,82.11
    >>Talk to |cRXP_FRIENDLY_Greta Mosshoof|r
    .accept 5155 >>Accept Forces of Jaedenar
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
    .goto 1448,50.93,85.01
    >>Talk to |cRXP_FRIENDLY_Grazle|r
    .accept 8460 >>Accept Timbermaw Ally
    .target Grazle
step
    .goto 1448,46.63,91.98
    >>Collect |cRXP_LOOT_[Overlord Ror's Claw]|r from |cRXP_ENEMY_Overlord Ror|r. Kill |cRXP_ENEMY_Deadwood Warrior|r. Kill |cRXP_ENEMY_Deadwood Pathfinder|r. Kill |cRXP_ENEMY_Deadwood Gardener|r
    *Kill Overlord Ror and return his claw to Dreka'Sur at Bloodvenom Post in Felwood.
    *Grazle wants you to prove yourself by killing 6 Deadwood Warriors, 6 Deadwood Pathfinders, and 6 Deadwood Gardeners. Return to him in southern Felwood near the Emerald Sanctuary when you are done.
    .complete 6162,1 --A Husband's Last Battle
    .complete 8460,1 --Timbermaw Ally
    .complete 8460,2 --Timbermaw Ally
    .complete 8460,3 --Timbermaw Ally
    .mob Overlord Ror
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
    .turnin 6162 >>Turn in A Husband's Last Battle
    .target Dreka'Sur
step
    .goto 1448,43.91,40.81
    >>Kill |cRXP_ENEMY_Entropic Beast|r. Kill |cRXP_ENEMY_Entropic Horror|r
    *Seek out and destroy 2 Entropic Beasts and 2 Entropic Horrors while exploring Shatter Scar Vale. After checking to see if the craters there are still filled with corrupt fel water, return to Taronn Redfeather in Felwood.
    .complete 5156,1 --Verifying the Corruption
    .complete 5156,2 --Verifying the Corruption
    .mob Entropic Beast
    .mob Entropic Horror
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
    .target Nafien
step
    .goto 1448,65.5,3.52
    >>Talk to |cRXP_FRIENDLY_Kernda|r
    .turnin 8470 >>Turn in Deadwood Ritual Totem
    .target Kernda
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
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 40-49
#name 49-50 Winterspring
#displayname 49-50 Winterspring
#next 50-51 Un'Goro Crater
step
    .zone 1452 >>Travel to Winterspring
    *How: Fly to Everlook.
    *Level for this part: 49-50. 12 quests, roughly 2 h 15 min.
step
    #completewith next
    .goto 1452,60.47,36.3,15,0
    >>Talk to |cRXP_FRIENDLY_Yugrek|r if you don't have this flight path yet
    .fp Yugrek >>Get the flight path
    .target Yugrek
step
    .goto 1452,60.88,37.62
    >>Talk to |cRXP_FRIENDLY_Umi Rumplesnicker|r
    .accept 3783 >>Accept Are We There, Yeti?
    .target Umi Rumplesnicker
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
    .goto 1452,61.35,38.97
    >>Talk to |cRXP_FRIENDLY_Gregor Greystone|r
    .accept 6029 >>Accept The Everlook Report
    .accept 6030 >>Accept Duke Nicholas Zverenhoff
    .target Gregor Greystone
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
    >>Collect |cRXP_LOOT_[Thick Yeti Fur]|r from |cRXP_ENEMY_Rogue Ice Thistle|r, |cRXP_ENEMY_Ice Thistle Yeti|r. Earn the required reputation
    *Collect 10 Thick Yeti Furs for Umi Rumplesnicker in Everlook.
    *Take the Winterfall Ritual Totem inside Timbermaw Hold and see if one of the furbolgs there will find a use for the item. The Timbermaw will not speak with you unless you are of Neutral reputation or greater with them.
    .complete 3783,1 --Are We There, Yeti?
    .complete 8471,1 --Winterfall Ritual Totem
    .mob Rogue Ice Thistle
    .mob Ice Thistle Yeti
step
    .goto 1452,60.88,37.62
    >>Talk to |cRXP_FRIENDLY_Umi Rumplesnicker|r
    .turnin 3783 >>Turn in Are We There, Yeti?
    .target Umi Rumplesnicker
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
    .goto 1448,65.5,3.52
    >>Talk to |cRXP_FRIENDLY_Kernda|r
    .turnin 8471 >>Turn in Winterfall Ritual Totem
    .target Kernda
step
    .goto 1448,60.2,5.84
    >>Click the |cRXP_PICK_Deadwood Cauldron|r
    .turnin 5084 >>Turn in Falling to Corruption
    .accept 5085 >>Accept Mystery Goo
step
    .goto 1428,65.24,24
    >>Talk to |cRXP_FRIENDLY_Tinkee Steamboil|r
    .turnin 4810 >>Turn in Return to Tinkee
    .target Tinkee Steamboil
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
    .target Donova Snowden
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 50-60
#name 50-51 Un'Goro Crater
#displayname 50-51 Un'Goro Crater
#next 51-51 Tanaris
step
    .zone 1449 >>Travel to Un'Goro Crater
    *How: Fly to Marshal's Refuge.
    *Level for this part: 50-51. 24 quests, roughly 3 h 20 min.
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
    .goto 1449,41.92,2.7
    >>Talk to |cRXP_FRIENDLY_J.D. Collie|r
    .accept 3942 >>Accept Linken's Memory
    .accept 4284 >>Accept Crystals of Power
    .target J.D. Collie
step
    .goto 1449,46.38,13.44
    >>Talk to |cRXP_FRIENDLY_Karna Remtravel|r
    .accept 4243 >>Accept Chasing A-Me 01
    .target Karna Remtravel
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
    .goto 1449,38.45,66.06
    >>Collect |cRXP_LOOT_[Research Equipment]|r from |cRXP_PICK_Research Equipment|r
    *Bring a Crate of Foodstuffs and Research Equipment to Williden Marshal in Un'Goro Crater.
    .complete 3881,2 --Expedition Salvation
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
<< Horde
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 50-60
#name 51-51 Tanaris
#displayname 51-51 Tanaris
#next 51-52 The Hinterlands
step
    .zone 1446 >>Travel to Tanaris
    *How: From Powderfuse Port take the goblin boat to Steamwheedle Port and ride to Gadgetzan. From Kalimdor: fly to Gadgetzan.
    *Level for this part: 51-51. 11 quests, roughly 1 h 45 min.
step
    .goto 1446,51.57,26.76
    >>Talk to |cRXP_FRIENDLY_Tran'rek|r
    .accept 3362 >>Accept Thistleshrub Valley
    .accept 4504 >>Accept Super Sticky
    .target Tran'rek
step
    .goto 1446,52.82,27.4
    >>Talk to |cRXP_FRIENDLY_Andi Lynn|r
    .accept 5863 >>Accept The Dunemaul Compound
    .target Andi Lynn
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
    .goto 1446,40.08,54.26
    >>Kill |cRXP_ENEMY_Dunemaul Brute|r. Kill |cRXP_ENEMY_Dunemaul Enforcer|r. Kill |cRXP_ENEMY_Gor'marok the Ravager|r
    *Andi Lynn in Gadgetzan wants you to destroy the Dunemaul Compound by killing 10 Dunemaul Brutes, 10 Dunemaul Enforcers, and Gor'marok the Ravager.
    .complete 5863,1 --The Dunemaul Compound
    .complete 5863,2 --The Dunemaul Compound
    .complete 5863,3 --The Dunemaul Compound
    .mob Dunemaul Brute
    .mob Dunemaul Enforcer
    .mob Gor'marok the Ravager
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
    .goto 1446,52.82,27.4
    >>Talk to |cRXP_FRIENDLY_Andi Lynn|r
    .turnin 5863 >>Turn in The Dunemaul Compound
    .target Andi Lynn
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
    .accept 2641 >>Accept Sprinkle's Secret Ingredient
    .target Sprinkle
step
    .goto 1446,66.58,25.67
    >>Talk to |cRXP_FRIENDLY_Torta|r
    .turnin 1560 >>Turn in Tooga's Quest
    .target Torta
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
    .target Marin Noggenfogger
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 50-60
#name 51-52 The Hinterlands
#displayname 51-52 The Hinterlands
#next 52-53 Searing Gorge
step
    .zone 1425 >>Travel to The Hinterlands
    *How: Fly to Revantusk Village.
    *Level for this part: 51-52. 25 quests, roughly 2 h 55 min.
step
    #completewith next
    .goto 1425,81.7,81.76,15,0
    >>Talk to |cRXP_FRIENDLY_Gorkas|r if you don't have this flight path yet
    .fp Gorkas >>Get the flight path
    .target Gorkas
step
    .goto 1425,80.33,81.54
    >>Talk to |cRXP_FRIENDLY_Katoom the Angler|r
    .accept 7815 >>Accept Snapjaws, Mon!
    .target Katoom the Angler
step
    .goto 1425,79.16,79.53
    >>Talk to |cRXP_FRIENDLY_Huntsman Markhor|r
    .accept 7828 >>Accept Stalking the Stalkers
    .accept 7829 >>Accept Hunt the Savages
    .accept 7830 >>Accept Avenging the Fallen
    .accept 7849 >>Accept Separation Anxiety
    .target Huntsman Markhor
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
    >>Loot |cRXP_LOOT_[OOX-09/HL Distress Beacon]|r from |cRXP_ENEMY_Saltwater Snapjaw|r, |cRXP_ENEMY_Vilebranch Axe Thrower|r, |cRXP_ENEMY_Vilebranch Witch Doctor|r, then click it to start the quest
    .accept 485 >>Accept Find OOX-09/HL!
    .use 8704
    .mob Saltwater Snapjaw
    .mob Vilebranch Axe Thrower
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
    .goto 1425,30.73,46.9
    >>Talk to |cRXP_FRIENDLY_Rin'ji|r
    .accept 2742 >>Accept Rin'ji is Trapped!
    .target Rin'ji
step
    .goto 1425,23.54,58.8
    >>Click the |cRXP_PICK_Venom Bottle|r
    .accept 2933 >>Accept Venom Bottles
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
    .goto 1425,86.3,59.01
    >>Click the |cRXP_PICK_Rin'ji's Secret|r
    .turnin 2742 >>Turn in Rin'ji is Trapped!
    .accept 2782 >>Accept Rin'ji's Secret
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
    .goto 1434,28.36,76.35
    >>Talk to |cRXP_FRIENDLY_Oglethorpe Obnoticus|r
    .turnin 836 >>Turn in Rescue OOX-09/HL!
    .target Oglethorpe Obnoticus
step
    .goto 1424,61.44,19.06
    >>Talk to |cRXP_FRIENDLY_Apothecary Lydon|r
    .turnin 2933 >>Turn in Venom Bottles
    .accept 2934 >>Accept Undamaged Venom Sac
    .target Apothecary Lydon
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
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 50-60
#name 52-53 Searing Gorge
#displayname 52-53 Searing Gorge
#next 53-54 Western/Eastern Plaguelands
step
    .zone 1427 >>Travel to Searing Gorge
    *How: Fly to Thorium Point.
    *Level for this part: 52-53. 18 quests, roughly 1 h 55 min.
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
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 50-60
#name 53-54 Western/Eastern Plaguelands
#displayname 53-54 Western/Eastern Plaguelands
#next 54-55 Silithus
step
    .zone 1422 >>Travel to Western
    *How: Fly to the Bulwark (Tirisfal); later Light's Hope Chapel.
    *Level for this part: 53-54. 31 quests, roughly 4 h 40 min.
step
    .goto 1423,31.15,77.98
    >>Talk to |cRXP_FRIENDLY_Pamela Redpath|r
    .accept 5241 >>Accept Uncle Carlin
    .accept 5152 >>Accept Auntie Marlene
    .target Pamela Redpath
step
    .goto 1423,22.23,63.51
    >>Talk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .accept 6022 >>Accept To Kill With Purpose
    .accept 6042 >>Accept Un-Life's Little Annoyances
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
    .goto 1423,58.31,50.2
    >>Kill |cRXP_ENEMY_Noxious Plaguebat|r
    *Slay 20 Noxious Plaguebats and 10 Monstrous Plaguebats. Return to Nathanos Blightcaller when you are finished.
    .complete 6042,1 --Un-Life's Little Annoyances
    .mob Noxious Plaguebat
step
    .goto 1423,71.7,50.04
    >>Talk to |cRXP_FRIENDLY_Carlin Redpath|r
    .turnin 5241 >>Turn in Uncle Carlin
    .target Carlin Redpath
step
    .goto 1423,70.88,48.43
    >>Talk to |cRXP_FRIENDLY_Smokey LaRue|r
    .accept 6026 >>Accept That's Asking A Lot
    .target Smokey LaRue
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
    .goto 1423,71.63,50.09
    >>Talk to |cRXP_FRIENDLY_Duke Nicholas Zverenhoff|r
    .turnin 5503 >>Turn in Argent Dawn Commission
    .target Duke Nicholas Zverenhoff
step
    >>Collect |cRXP_LOOT_[Thorium Bar]|r. Collect |cRXP_LOOT_[Golden Rod]|r. Collect |cRXP_LOOT_[Hi-Explosive Bomb]|r. Collect |cRXP_LOOT_[Unstable Trigger]|r. Kill |cRXP_ENEMY_Darrowshire Spirit|r
    *Smokey LaRue wants you to get 2 Thorium Bars, 1 Golden Rod, 8 Hi-Explosive Bombs, and 8 Unstable Triggers.
    *Free 15 Darrowshire Spirits and return to Carlin Redpath.
    .complete 6026,1 --That's Asking A Lot
    .complete 6026,2 --That's Asking A Lot
    .complete 6026,3 --That's Asking A Lot
    .complete 6026,4 --That's Asking A Lot
    .complete 5211,1 --Defenders of Darrowshire
    .mob Darrowshire Spirit
step
    .goto 1423,70.88,48.43
    >>Talk to |cRXP_FRIENDLY_Smokey LaRue|r
    .turnin 6026 >>Turn in That's Asking A Lot
    .target Smokey LaRue
step
    .goto 1423,71.7,50.04
    >>Talk to |cRXP_FRIENDLY_Carlin Redpath|r
    .turnin 5211 >>Turn in Defenders of Darrowshire
    .target Carlin Redpath
step
    .goto 1423,70.88,48.43
    >>Talk to |cRXP_FRIENDLY_Smokey LaRue|r
    .accept 6041 >>Accept When Smokey Sings, I Get Violent
    .target Smokey LaRue
step
    .goto 1423,55.96,25.56
    >>Collect |cRXP_LOOT_[Slab of Carrion Worm Meat]|r from |cRXP_ENEMY_Random Worm|r, |cRXP_ENEMY_Carrion Devourer|r
    *Seek out the Carrion Grubs and Devourers of the region. Slay them and harvest their meat. Return to Tirion Fordring when you have gathered 15 Slabs of Carrion Worm Meat.
    .complete 5544,1 --Carrion Grubbage
    .mob Random Worm
    .mob Carrion Devourer
step
    .goto 1423,44.45,28.28
    >>Kill |cRXP_ENEMY_Monstrous Plaguebat|r. Kill |cRXP_ENEMY_Frenzied Plaguehound|r
    *Slay 20 Noxious Plaguebats and 10 Monstrous Plaguebats. Return to Nathanos Blightcaller when you are finished.
    *Slay 20 Plaguehound Runts, 5 Plaguehounds and 5 Frenzied Plaguehounds. Return to Tirion Fordring when the task is complete.
    .complete 6042,2 --Un-Life's Little Annoyances
    .complete 5542,3 --Demon Dogs
    .mob Monstrous Plaguebat
    .mob Frenzied Plaguehound
step
    .goto 1423,24.73,17.85
    >>Kill |cRXP_ENEMY_Scourge Structure|r
    *Travel to Plaguewood, northwest of Light's Hope. Destroy 8 Scourge Structures by using Smokey's Special Compound at the Mark of Detonation planted inside each building. Smokey has had the Ziggurats and Slaughterhouses marked.
    .complete 6041,1 --When Smokey Sings, I Get Violent
    .mob Scourge Structure
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
    .goto 1423,22.23,63.51
    >>Talk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .turnin 6042 >>Turn in Un-Life's Little Annoyances
    .target Nathanos Blightcaller
step
    .goto 1423,70.88,48.43
    >>Talk to |cRXP_FRIENDLY_Smokey LaRue|r
    .turnin 6041 >>Turn in When Smokey Sings, I Get Violent
    .target Smokey LaRue
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
    .goto 1422,53.73,64.66
    >>Talk to |cRXP_FRIENDLY_Mulgris Deepriver|r
    .accept 4985 >>Accept The Wildlife Suffers Too
    .target Mulgris Deepriver
step
    .goto 1422,39.46,66.76
    >>Talk to |cRXP_FRIENDLY_Chromie|r
    .turnin 5153 >>Turn in A Strange Historian
    .accept 5154 >>Accept The Annals of Darrowshire
    .accept 4971 >>Accept A Matter of Time
    .target Chromie
step
    >>Collect |cRXP_LOOT_[Annals of Darrowshire]|r from |cRXP_PICK_Musty Tome|r. Kill |cRXP_ENEMY_Temporal Parasite|r
    *Bring the Annals of Darrowshire to Chromie in Andorhal.
    *Use the Temporal Displacer near one of Andorhal's silos and uncover Temporal Parasites.
    .complete 5154,1 --The Annals of Darrowshire
    .complete 4971,1 --A Matter of Time
    .mob Temporal Parasite
step
    .goto 1422,39.46,66.76
    >>Talk to |cRXP_FRIENDLY_Chromie|r
    .turnin 5154 >>Turn in The Annals of Darrowshire
    .turnin 4971 >>Turn in A Matter of Time
    .accept 5210 >>Accept Brother Carlin
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
    .goto 1422,65.77,75.37
    >>Talk to |cRXP_FRIENDLY_Artist Renfray|r
    .turnin 5846 >>Turn in Of Love and Family
    .target Artist Renfray
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
    .goto 1422,53.73,64.66
    >>Talk to |cRXP_FRIENDLY_Mulgris Deepriver|r
    .turnin 4985 >>Turn in The Wildlife Suffers Too
    .accept 4987 >>Accept Glyphed Oaken Branch
    .target Mulgris Deepriver
step
    .goto 1423,71.7,50.04
    >>Talk to |cRXP_FRIENDLY_Carlin Redpath|r
    .turnin 5210 >>Turn in Brother Carlin
    .accept 5168 >>Accept Heroes of Darrowshire
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
step
    .goto 1456,75.65,31.61
    >>Talk to |cRXP_FRIENDLY_Nara Wildmane|r
    .turnin 4987 >>Turn in Glyphed Oaken Branch
    .target Nara Wildmane
step
    .goto 1420,83.13,68.94
    >>Talk to |cRXP_FRIENDLY_High Executor Derrington|r
    .accept 5098 >>Accept All Along the Watchtowers
    .target High Executor Derrington
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
    .goto 1423,71.7,50.04
    >>Talk to |cRXP_FRIENDLY_Carlin Redpath|r
    .turnin 5168 >>Turn in Heroes of Darrowshire
    .target Carlin Redpath
step
    .goto 1420,83.13,68.94
    >>Talk to |cRXP_FRIENDLY_High Executor Derrington|r
    .turnin 5098 >>Turn in All Along the Watchtowers
    .accept 838 >>Accept Scholomance
    .target High Executor Derrington
step
    .goto 1420,83.28,69.23
    >>Talk to |cRXP_FRIENDLY_Apothecary Dithers|r
    .turnin 838 >>Turn in Scholomance
    .accept 964 >>Accept Skeletal Fragments
    .target Apothecary Dithers
step
    .goto 1422,44.48,68.65
    >>Collect |cRXP_LOOT_[Skeletal Fragments]|r from |cRXP_ENEMY_Skeletal Magelord|r, |cRXP_ENEMY_Skeletal Sorcerer|r, |cRXP_ENEMY_Skeletal Terror|r
    *Bring 15 Skeletal Fragments to Apothecary Dithers at the Bulwark, Western Plaguelands.
    .complete 964,1 --Skeletal Fragments
    .mob Skeletal Magelord
    .mob Skeletal Sorcerer
step
    .goto 1420,83.28,69.23
    >>Talk to |cRXP_FRIENDLY_Apothecary Dithers|r
    .turnin 964 >>Turn in Skeletal Fragments
    .target Apothecary Dithers
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
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
    .goto 1451,48.68,36.67,15,0
    >>Talk to |cRXP_FRIENDLY_Runk Windtamer|r if you don't have this flight path yet
    .fp Runk Windtamer >>Get the flight path
    .target Runk Windtamer
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
<< Horde
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 50-60
#name 55-55 Silithus
#displayname 55-55 Silithus
#next 55-56 Winterspring
step
    .zone 1451 >>Travel to Silithus
    *How: Fly to Cenarion Hold.
    *Level for this part: 55-55. 9 quests, roughly 1 h 15 min.
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
    .goto 1451,48.57,37.78
    >>Talk to |cRXP_FRIENDLY_Bor Wildmane|r
    .turnin 8318 >>Turn in Secret Communication
    .target Bor Wildmane
step
    .goto 1451,50.75,69.54
    >>Talk to |cRXP_FRIENDLY_General Kirika|r
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
<< Horde
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 50-60
#name 55-56 Winterspring
#displayname 55-56 Winterspring
#next 56-58 Mount Hyjal
step
    .zone 1452 >>Travel to Winterspring
    *How: Fly to Everlook.
    *Level for this part: 55-56. 14 quests, roughly 2 h.
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
    .goto 1452,61.92,38.3
    >>Talk to |cRXP_FRIENDLY_Witch Doctor Mau'ari|r
    .turnin 6606 >>Turn in A Little Luck
    .target Witch Doctor Mau'ari
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
    .goto 1452,31.27,45.16
    >>Talk to |cRXP_FRIENDLY_Donova Snowden|r
    .accept 4842 >>Accept Strange Sources
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
    .target Witch Doctor Mau'ari
step
    .goto 1452,69.56,38.31
    >>Loot |cRXP_LOOT_[Crudely-written Log]|r from |cRXP_ENEMY_High Chief Winterfall|r, then click it to start the quest
    .accept 5123 >>Accept The Final Piece
    .use 12842
    .mob High Chief Winterfall
step
    .goto 1452,31.27,45.16
    >>Talk to |cRXP_FRIENDLY_Donova Snowden|r
    .turnin 4842 >>Turn in Strange Sources
    .turnin 5123 >>Turn in The Final Piece
    .accept 5128 >>Accept Words of the High Chief
    .target Donova Snowden
step
    .goto 1428,53,24.4
    >>Talk to |cRXP_FRIENDLY_Red Bag|r
    .turnin 84146 >>Turn in Red Bag Blues
    .target Red Bag
step
    .goto 1448,34.73,52.79
    >>Talk to |cRXP_FRIENDLY_Trull Failbane|r
    .turnin 4882 >>Turn in Guarding Secrets
    .accept 4883 >>Accept Guarding Secrets
    .target Trull Failbane
step
    .goto 1448,51.14,81.75
    >>Talk to |cRXP_FRIENDLY_Kelek Skykeeper|r
    .turnin 5128 >>Turn in Words of the High Chief
    .target Kelek Skykeeper
step
    .goto 1456,75.65,31.61
    >>Talk to |cRXP_FRIENDLY_Nara Wildmane|r
    .turnin 4883 >>Turn in Guarding Secrets
    .target Nara Wildmane
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
<< Horde
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 50-60
#name 56-58 Mount Hyjal
#displayname 56-58 Mount Hyjal
#next 58-60 Grind to 60
step
    .zone 2482 >>Travel to Mount Hyjal
    *How: From Everlook take the flight to Tainted Foothills (do the Hyjal intro first if the flight is missing).
    *Level for this part: 56-58. 48 quests, roughly 5 h 20 min.
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
    .goto 2482,61.57,41.47
    >>Click the |cRXP_PICK_Troll Remains|r
    .accept 96998 >>Accept Tribal Colors
step
    .goto 2482,71.3,28.93
    >>Collect |cRXP_LOOT_[Wicked Ritualist's Kris]|r from |cRXP_ENEMY_Blackthorne Cultist|r, |cRXP_ENEMY_Blackthorne Outrunner|r. Collect |cRXP_LOOT_[Recoiling Gnarlybark Staff]|r from |cRXP_ENEMY_Blackthorne Adept|r, |cRXP_ENEMY_Blackthorne Priest|r
    *Recover a Wicked Ritualist's Kris and a Recoiling Gnarlybark Staff from Blackthorne cultists.
    .complete 92533,1 --Twisted Tools
    .complete 92533,2 --Twisted Tools
    .mob Blackthorne Cultist
    .mob Blackthorne Outrunner
    .mob Blackthorne Adept
    .mob Blackthorne Priest
step
    .goto 2482,76.92,35.42
    >>Click the |cRXP_PICK_Bookshelf|r
    .accept 93521 >>Accept Challenger of the Gods
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
    .goto 2482,50.45,58.98
    >>Collect |cRXP_LOOT_[Omnuron's Spear]|r from |cRXP_ENEMY_Zarrat Wormwing|r, |cRXP_ENEMY_Searshrike Wormwing|r. Collect |cRXP_LOOT_[Tarnished Highfeather Bangle]|r from |cRXP_PICK_Tarnished Highfeather Bangle|r
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
    .turnin 99670 >>Turn in Return to Jereman
    .target Jereman
step
    .goto 2482,20.35,59.23
    >>Talk to |cRXP_FRIENDLY_Veteran of the Third War|r
    .accept 92100 >>Accept Anywhere But Here
    .target Veteran of the Third War
step
    .goto 2482,18.78,62.01
    >>Talk to |cRXP_FRIENDLY_Eluneth|r
    .accept 90865 >>Accept Eyes of the Watchers
    .target Eluneth
step
    .goto 2482,13.82,54.75
    >>Talk to |cRXP_FRIENDLY_Zet'gan|r
    .turnin 96998 >>Turn in Tribal Colors
    .target Zet'gan
step
    .goto 2482,13.77,53.06
    >>Talk to |cRXP_FRIENDLY_Kal'tinzan|r
    .accept 91794 >>Accept Flags of Our Forebears
    .accept 95769 >>Accept Threading a Solution
    .target Kal'tinzan
step
    .goto 2482,13.82,54.75
    >>Talk to |cRXP_FRIENDLY_Zet'gan|r
    .accept 92592 >>Accept Final Death
    .accept 95026 >>Accept Blight No More
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
    .goto 2482,8.75,46.48
    >>Click the |cRXP_PICK_Embroidered Scabbard|r
    .turnin 92100 >>Turn in Anywhere But Here
    .accept 96550 >>Accept Battle Recall
step
    .goto 2482,8.79,46.47
    >>Talk to |cRXP_FRIENDLY_Veteran of the Third War|r
    .turnin 96550 >>Turn in Battle Recall
    .accept 92101 >>Accept Lifted by Legacy
    .accept 93510 >>Accept Wake Memories
    .target Veteran of the Third War
step
    .goto 2482,22.89,46
    >>Collect |cRXP_LOOT_[Watcher's Eye]|r from |cRXP_ENEMY_Eternal Sentry|r. Collect |cRXP_LOOT_[Reanimator's Amulet]|r from |cRXP_ENEMY_Scourge Reanimator|r. Kill |cRXP_ENEMY_Forgotten Soldier|r. Kill |cRXP_ENEMY_Fleshflay Ravener|r. Collect |cRXP_LOOT_[Hyjal Silphium]|r from |cRXP_PICK_Hyjal Silphium|r
    *Retrieve 8 Watcher's Eyes for Eluneth.
    *Use the Survivor's Torch on the Bone Pile, then collect the Reanimator's Amulet.
    *Eliminate 3 Forgotten Soldiers and 12 Fleshflay Raveners.
    *Collect 12 Hyjal Silphium.
    .complete 90865,1 --Eyes of the Watchers
    .complete 92592,1 --Final Death
    .complete 95026,1 --Blight No More
    .complete 95026,2 --Blight No More
    .complete 96616,1 --Herbs for the Bruised and Weary
    .mob Eternal Sentry
    .mob Scourge Reanimator
    .mob Forgotten Soldier
    .mob Fleshflay Ravener
step
    .goto 2482,13.82,54.75
    >>Talk to |cRXP_FRIENDLY_Zet'gan|r
    .turnin 92592 >>Turn in Final Death
    .turnin 95026 >>Turn in Blight No More
    .target Zet'gan
step
    .goto 2482,12.93,52.85
    >>Talk to |cRXP_FRIENDLY_Ortak Lomgok|r
    .turnin 96616 >>Turn in Herbs for the Bruised and Weary
    .target Ortak Lomgok
step
    .goto 2482,13.82,54.75
    >>Talk to |cRXP_FRIENDLY_Zet'gan|r
    .accept 90854 >>Accept Leather for Inclement Weather
    .target Zet'gan
step
    .goto 2482,18.78,62.01
    >>Talk to |cRXP_FRIENDLY_Eluneth|r
    .turnin 90865 >>Turn in Eyes of the Watchers
    .target Eluneth
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
    .goto 2482,21.77,79.18
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
    .target Brerufa
step
    .goto 2482,21.77,79.18
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
    .goto 2482,59.84,72.04
    >>Collect |cRXP_LOOT_[Broken Frond of Celastrus]|r from |cRXP_ENEMY_Celastrus the Bitter|r. Collect |cRXP_LOOT_[Verdant Leaves]|r from |cRXP_ENEMY_Tainted Shrubbery|r
    *Find and destroy Celastrus the Bitter, and return to Thylaen with its broken frond.
    *Collect 12 Verdant Leaves from Tainted Shrubbery in the foothills of Mount Hyjal.
    .complete 91923,1 --Celastrus the Bitter
    .complete 91755,1 --Leaves to Ligatures
    .mob Celastrus the Bitter
    .mob Tainted Shrubbery
step
    .goto 2482,49.32,69.52
    >>Collect |cRXP_LOOT_[Fel Ash Experimentation Notes]|r from |cRXP_ENEMY_Ashen Acolyte|r
    *Find 12 Fel Ash Experimentation Notes.
    .complete 95317,1 --Notation, Notation, Notation
    .mob Ashen Acolyte
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
    .goto 2482,71.05,77.5
    >>Collect |cRXP_LOOT_[Hyjal Owl Feather]|r from |cRXP_ENEMY_Hyjal Owl|r, |cRXP_ENEMY_Tainted Hyjal Owl|r. Collect |cRXP_LOOT_[Fel-Slime Ooze]|r from |cRXP_ENEMY_Noxious Slime|r, |cRXP_ENEMY_Forlorn Ghost|r
    *Gather 9 Hyjal Owl Feathers for Zet'gan.
    *Gather 8 Fel-Slime Ooze.
    .complete 92609,1 --Feathers in Flight
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
    .accept 94782 >>Accept The Western Post
    .target Curious Crow
step
    .goto 2482,68.3,46.71
    >>Talk to |cRXP_FRIENDLY_Marn Euhorn|r
    .turnin 92017 >>Turn in Cleansing Winds
    .accept 92016 >>Accept Rootwork
    .target Marn Euhorn
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
    .goto 2482,49.72,37.12
    >>Collect |cRXP_LOOT_[Horde Flag]|r from |cRXP_PICK_Horde Flag|r. Collect |cRXP_LOOT_[Scrap of Horde Heraldry]|r from |cRXP_ENEMY_Felguard Sentinel|r, |cRXP_ENEMY_Doomguard|r, |cRXP_ENEMY_Mazzogore|r
    *Collect 1 Horde Flag and 3 Scraps of Horde Heraldry for Kal'tinzan at Elderwild.
    .complete 91794,1 --Flags of Our Forebears
    .complete 91794,2 --Flags of Our Forebears
    .mob Felguard Sentinel
    .mob Doomguard
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
    .goto 2482,68.99,49.99
    >>Talk to |cRXP_FRIENDLY_Thisalee Crow|r
    .turnin 95248 >>Turn in To the Summit of Eternity
    .target Thisalee Crow
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
    .target Veteran of the Third War
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
#group Peon Journey - 1-60 Speed (no Dungeons)
#groupweight 105
#subgroup Levels 50-60
#name 58-60 Grind to 60
#displayname 58-60 Grind to 60
step
    +|cRXP_WARN_Grind to 60.|r Not enough quests worth the time are left at your level. Kill mobs at your level around Mount Hyjal (or run a dungeon with a group), roughly 16 h 10 min. Rested XP doubles kill XP: log out in an inn. Click to skip.
step
    .xp 60 >>Grind to level 60
]])
