RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 20-29
#name 22-24 Stonetalon/Barrens
#displayname 22-24 Stonetalon/Barrens
#next 24-26 Thousand Needles
step
    .zone 1442 >>Travel to Stonetalon
    *How: The starter route ends in the Barrens/Stonetalon: fly to Sun Rock Retreat.
    *Level for this part: 22-24. 27 quests, roughly 3 h 55 min.
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
    .goto 1442,47.22,64.04
    >>Talk to |cRXP_FRIENDLY_Mor'rogal|r
    .turnin 6421 >>Turn in Boulderslide Ravine
    .target Mor'rogal
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
    .goto 1413,45.89,77
    >>Talk to |cRXP_FRIENDLY_Gann Stonespire|r
    .accept 843 >>Accept Gann's Reclamation
    .target Gann Stonespire
step
    .goto 1413,47.93,77.62
    >>Talk to |cRXP_FRIENDLY_Sulhasa|r
    .accept 98093 >>Accept Field to Clear
    .target Sulhasa
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
    .goto 1413,61.96,54.96
    >>Talk to |cRXP_FRIENDLY_Gilthares Firebough|r
    .accept 898 >>Accept Free From the Hold
    .target Gilthares Firebough
step
    .goto 1413,62.29,39.03
    >>Talk to |cRXP_FRIENDLY_Captain Thalo'thas Brightsun|r
    .turnin 898 >>Turn in Free From the Hold
    .target Captain Thalo'thas Brightsun
step
    .goto 1413,51.07,29.63
    >>Talk to |cRXP_FRIENDLY_Korran|r
    .accept 868 >>Accept Egg Hunt
    .target Korran
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
    .goto 1413,44.9,72.55
    >>Collect |cRXP_LOOT_[Kuz's Skull]|r from |cRXP_ENEMY_Kuz|r. Collect |cRXP_LOOT_[Silithid Egg]|r from |cRXP_ENEMY_Silithid Creeper|r, |cRXP_ENEMY_Silithid Grub|r, |cRXP_ENEMY_Silithid Swarmer|r
    *Kill Nak, Kuz, and Lok Orcbane and bring their skulls to Mangletooth at Camp Taurajo in the Barrens.
    *Bring 12 Silithid Eggs and the Digging Claw to Korran at the Crossroads.
    .complete 879,1 --Betrayal from Within
    .complete 868,1 --Egg Hunt
    .mob Kuz
    .mob Silithid Creeper
    .mob Silithid Grub
step
    .goto 1413,43.75,83.26
    >>Collect |cRXP_LOOT_[Nak's Skull]|r from |cRXP_ENEMY_Nak|r. Collect |cRXP_LOOT_[Lok's Skull]|r from |cRXP_ENEMY_Lok Orcbane|r
    *Kill Nak, Kuz, and Lok Orcbane and bring their skulls to Mangletooth at Camp Taurajo in the Barrens.
    .complete 879,2 --Betrayal from Within
    .complete 879,3 --Betrayal from Within
    .mob Nak
    .mob Lok Orcbane
step
    .goto 1413,44.55,59.26
    >>Talk to |cRXP_FRIENDLY_Mangletooth|r
    .turnin 879 >>Turn in Betrayal from Within
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
    .goto 1456,54.14,47.05
    >>Talk to |cRXP_FRIENDLY_Tah Winterhoof|r
    .turnin 97538 >>Turn in Pigments for Paints
    .target Tah Winterhoof
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 20-29
#name 24-26 Thousand Needles
#displayname 24-26 Thousand Needles
#next 26-27 Ashenvale
step
    .zone 1441 >>Travel to Thousand Needles
    *How: Fly to Freewind Post.
    *Level for this part: 24-26. 20 quests, roughly 1 h 45 min.
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
    .goto 1441,25.81,42.11
    >>Collect |cRXP_LOOT_[Fragments of Rok'Alim]|r from |cRXP_ENEMY_Rok'Alim the Pounder|r
    *Bring Fragments of Rok'Alim to Dorn Plainstalker in Thousand Needles.
    .complete 1151,1 --Test of Strength
    .mob Rok'Alim the Pounder
step
    .goto 1441,26.16,52.36
    >>Collect |cRXP_LOOT_[Stolen Freewind Supplies]|r from |cRXP_PICK_Stolen Freewind Supplies|r
    *Bring 8 Stolen Freewind Supplies to Jandia in Freewind Post.
    .complete 98069,1 --Stolen Freewind Supplies
step
    .goto 1441,46.21,51.51
    >>Talk to |cRXP_FRIENDLY_Jandia|r
    .turnin 98069 >>Turn in Stolen Freewind Supplies
    .target Jandia
step
    .goto 1441,53.95,41.49
    >>Talk to |cRXP_FRIENDLY_Dorn Plainstalker|r
    .turnin 1151 >>Turn in Test of Strength
    .target Dorn Plainstalker
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
    .goto 1441,77.79,77.27
    >>Talk to |cRXP_FRIENDLY_Kravel Koalbeard|r
    .accept 1110 >>Accept Rocket Car Parts
    .target Kravel Koalbeard
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
    >>Collect |cRXP_LOOT_[Salty Scorpid Venom]|r from |cRXP_ENEMY_Scorpid Terror|r, |cRXP_ENEMY_Scorpid Reaver|r, |cRXP_ENEMY_Vile Sting|r. Collect |cRXP_LOOT_[Hardened Tortoise Shell]|r from |cRXP_ENEMY_Sparkleshell Tortoise|r, |cRXP_ENEMY_Sparkleshell Snapper|r, |cRXP_ENEMY_Sparkleshell Borer|r. Collect |cRXP_LOOT_[Rocket Car Parts]|r from |cRXP_PICK_Rocket Car Rubble|r, |cRXP_PICK_Rocket Car Rubble|r
    *Bring 6 Salty Scorpid Venoms to Fizzle Brassbolts in the Shimmering Flats.
    *Bring 9 Hardened Tortoise Shells to Wizzle Brassbolts in the Shimmering Flats.
    *Bring 30 Rocket Car Parts to Kravel Koalbeard in the Shimmering Flats.
    .complete 1104,1 --Salt Flat Venom
    .complete 1105,1 --Hardened Shells
    .complete 1110,1 --Rocket Car Parts
    .mob Scorpid Terror
    .mob Scorpid Reaver
    .mob Sparkleshell Tortoise
    .mob Sparkleshell Snapper
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
    .goto 1441,77.79,77.27
    >>Talk to |cRXP_FRIENDLY_Kravel Koalbeard|r
    .turnin 1110 >>Turn in Rocket Car Parts
    .target Kravel Koalbeard
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
    .goto 1441,21.54,32.35
    >>Talk to |cRXP_FRIENDLY_Motega Firemane|r
    .turnin 5088 >>Turn in Arikara
    .target Motega Firemane
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 20-29
#name 26-27 Ashenvale
#displayname 26-27 Ashenvale
#next 27-29 Grind to 29
step
    .zone 1440 >>Travel to Ashenvale
    *How: Fly to Splintertree Post.
    *Level for this part: 26-27. 14 quests, roughly 1 h 5 min.
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
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 20-29
#name 27-29 Grind to 29
#displayname 27-29 Grind to 29
#next 29-30 Gnomeregan
step
    +|cRXP_WARN_Grind to 29.|r Not enough quests worth the time are left at your level. Kill mobs at your level around Ashenvale (or run a dungeon with a group), roughly 4 h 20 min. Rested XP doubles kill XP: log out in an inn. Click to skip.
step
    .xp 29 >>Grind to level 29
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 20-29
#name 29-30 Gnomeregan
#displayname 29-30 Gnomeregan
#next 30-31 Razorfen Kraul
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
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 30-39
#name 30-31 Razorfen Kraul
#displayname 30-31 Razorfen Kraul
#next 31-32 Hillsbrad/Alterac
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
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 30-39
#name 31-32 Hillsbrad/Alterac
#displayname 31-32 Hillsbrad/Alterac
#next 32-32 Arathi Highlands
step
    .zone 1424 >>Travel to Hillsbrad
    *How: Zeppelin Orgrimmar -> Undercity, then fly to Tarren Mill.
    *Level for this part: 31-32. 12 quests, roughly 1 h 40 min.
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
    .goto 1424,61.5,20.93
    >>Talk to |cRXP_FRIENDLY_Keeper Bel'varil|r
    .accept 556 >>Accept Stone Tokens
    .target Keeper Bel'varil
step
    .goto 1424,63.24,20.66
    >>Talk to |cRXP_FRIENDLY_Krusk|r
    .accept 498 >>Accept The Rescue
    .target Krusk
step
    .goto 1424,61.44,19.06
    >>Talk to |cRXP_FRIENDLY_Apothecary Lydon|r
    .accept 501 >>Accept Elixir of Pain
    .target Apothecary Lydon
step
    .goto 1424,63.88,19.66
    >>Talk to |cRXP_FRIENDLY_Novice Thaivand|r
    .accept 552 >>Accept Helcular's Revenge
    .target Novice Thaivand
step
    .goto 1424,46.45,30.59
    >>Collect |cRXP_LOOT_[Helcular's Rod]|r from |cRXP_ENEMY_Cave Yeti|r, |cRXP_ENEMY_Ferocious Yeti|r, |cRXP_ENEMY_Mountain Yeti|r
    *Retrieve Helcular's Rod from the Yeti and bring it back to Novice Thaivand in Tarren Mill.
    .complete 552,1 --Helcular's Revenge
    .mob Cave Yeti
    .mob Ferocious Yeti
step
    .goto 1424,53.42,39.28
    >>Collect |cRXP_LOOT_[Mountain Lion Blood]|r from |cRXP_ENEMY_Starving Mountain Lion|r, |cRXP_ENEMY_Feral Mountain Lion|r, |cRXP_ENEMY_Mountain Lion|r
    *Bring 10 vials of Mountain Lion Blood to Apothecary Lydon in Tarren Mill.
    .complete 501,1 --Elixir of Pain
    .mob Starving Mountain Lion
    .mob Feral Mountain Lion
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
    .goto 1424,61.5,20.93
    >>Talk to |cRXP_FRIENDLY_Keeper Bel'varil|r
    .turnin 556 >>Turn in Stone Tokens
    .accept 557 >>Accept Bracers of Binding
    .target Keeper Bel'varil
step
    .goto 1424,75.33,41.5
    >>Click |cRXP_PICK_Locked ball and chain|r
    *Krusk in Tarren Mill needs you to free Drull and Tog'thar from Durnholde Keep.
    .complete 498,1 --The Rescue
    .complete 498,2 --The Rescue
step
    .goto 1424,63.24,20.66
    >>Talk to |cRXP_FRIENDLY_Krusk|r
    .turnin 498 >>Turn in The Rescue
    .accept 533 >>Accept Infiltration
    .target Krusk
step
    .goto 1424,69.04,78.17
    >>Collect |cRXP_LOOT_[Humbert's Sword]|r from |cRXP_ENEMY_Dun Garok Mountaineer|r, |cRXP_ENEMY_Dun Garok Rifleman|r, |cRXP_ENEMY_Dun Garok Priest|r
    *Retrieve Deathguard Humbert's sword from Dun Garok and return it to him in Tarren Mill.
    .complete 547,1 --Humbert's Sword
    .mob Dun Garok Mountaineer
    .mob Dun Garok Rifleman
step
    .goto 1424,62.76,20.21
    >>Talk to |cRXP_FRIENDLY_Deathguard Humbert|r
    .turnin 547 >>Turn in Humbert's Sword
    .target Deathguard Humbert
step
    .goto 1416,60.26,43.98
    >>Loot |cRXP_LOOT_[Singed Note]|r from |cRXP_ENEMY_Argus Shadow Mage|r, |cRXP_ENEMY_Syndicate Wizard|r, then click it to start the quest
    .accept 95534 >>Accept Strahnbrad Mystery
    .use 213421
    .mob Argus Shadow Mage
    .mob Syndicate Wizard
step
    .goto 1416,57.71,67.64
    >>Collect |cRXP_LOOT_[Syndicate Missive]|r from |cRXP_ENEMY_Syndicate Footpad|r, |cRXP_ENEMY_Syndicate Thief|r
    *Retrieve information about Gol'dir's whereabouts for Krusk in Tarren Mill.
    .complete 533,1 --Infiltration
    .mob Syndicate Footpad
    .mob Syndicate Thief
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
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 30-39
#name 32-32 Arathi Highlands
#displayname 32-32 Arathi Highlands
#next 32-33 Stranglethorn Vale
step
    .zone 1417 >>Travel to Arathi Highlands
    *How: Fly to Hammerfall.
    *Level for this part: 32-32. 13 quests, roughly 55 min.
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
    .goto 1417,74.72,36.29
    >>Talk to |cRXP_FRIENDLY_Tor'gan|r
    .turnin 655 >>Turn in Hammerfall
    .accept 672 >>Accept Raising Spirits
    .accept 671 >>Accept Foul Magics
    .target Tor'gan
step
    .goto 1417,73.41,36.89
    >>Talk to |cRXP_FRIENDLY_Doctor Gregory Victor|r
    .accept 97539 >>Accept Silky Sutures
    .target Doctor Gregory Victor
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
    .goto 1417,67.69,77.16
    >>Loot |cRXP_LOOT_[Goliath's Wristguards]|r from |cRXP_ENEMY_Witherbark Goliath|r, then click it to start the quest
    .accept 92707 >>Accept The Giant in the Den
    .use 253711
    .mob Witherbark Goliath
step
    .goto 1417,67.69,77.16
    >>Collect |cRXP_LOOT_[Goliath's Wristguards]|r from |cRXP_ENEMY_Witherbark Goliath|r
    *Bring the Goliath's Wristguards to Drum Fel in Hammerfall.
    .complete 92707,1 --The Giant in the Den
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
    .goto 1417,43.08,39.21
    >>Collect |cRXP_LOOT_[Highland Raptor Eye]|r from |cRXP_ENEMY_Highland Strider|r, |cRXP_ENEMY_Highland Thrasher|r
    *Acquire 10 Highland Raptor Eyes from Highland Striders and Highland Thrashers for Tor'gan in Hammerfall.
    .complete 672,1 --Raising Spirits
    .mob Highland Strider
    .mob Highland Thrasher
step
    .goto 1417,15.06,41.05
    >>Collect |cRXP_LOOT_[Bloodstone Amulet]|r from |cRXP_ENEMY_Syndicate Smuggler|r, |cRXP_ENEMY_Syndicate Pathstalker|r, |cRXP_ENEMY_Syndicate Mercenary|r
    *Get 10 Bloodstone Amulets for Tor'gan in Hammerfall.
    .complete 671,1 --Foul Magics
    .mob Syndicate Smuggler
    .mob Syndicate Pathstalker
step
    .goto 1417,74.72,36.29
    >>Talk to |cRXP_FRIENDLY_Tor'gan|r
    .turnin 672 >>Turn in Raising Spirits
    .turnin 671 >>Turn in Foul Magics
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
    .turnin 92707 >>Turn in The Giant in the Den
    .target Drum Fel
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
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 30-39
#name 32-33 Stranglethorn Vale
#displayname 32-33 Stranglethorn Vale
#next 33-35 Desolace
step
    .zone 1434 >>Travel to Stranglethorn Vale
    *How: Fly to Grom'gol (or the zeppelin Orgrimmar -> Grom'gol).
    *Level for this part: 32-33. 19 quests, roughly 2 h.
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
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 30-39
#name 33-35 Desolace
#displayname 33-35 Desolace
#next 35-36 Dustwallow Marsh
step
    .zone 1443 >>Travel to Desolace
    *How: In the Eastern Kingdoms? Zeppelin Grom'gol -> Orgrimmar first. Then fly to Shadowprey Village.
    *Level for this part: 33-35. 20 quests, roughly 2 h.
step
    #completewith next
    .goto 1443,21.6,74.13,15,0
    >>Talk to |cRXP_FRIENDLY_Thalon|r if you don't have this flight path yet
    .fp Thalon >>Get the flight path
    .target Thalon
step
    .goto 1443,22.64,71.97
    >>Talk to |cRXP_FRIENDLY_Mai'Lahii|r
    .accept 6142 >>Accept Clam Bait
    .target Mai'Lahii
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
    .goto 1443,33.95,53.5
    >>Talk to |cRXP_FRIENDLY_Melizza Brimbuzzle|r
    .accept 6132 >>Accept Get Me Out of Here!
    .target Melizza Brimbuzzle
step
    .goto 1443,47.53,54.6
    >>Click the |cRXP_PICK_Extinguished Campfire|r
    .accept 79229 >>Accept Highway Robbery
step
    .goto 1443,47.83,61.83
    >>Talk to |cRXP_FRIENDLY_Hornizz Brimbuzzle|r
    .turnin 6132 >>Turn in Get Me Out of Here!
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
    .goto 1443,56.19,59.57
    >>Talk to |cRXP_FRIENDLY_Felgur Twocuts|r
    .accept 1365 >>Accept Khan Dez'hepah
    .target Felgur Twocuts
step
    .goto 1443,56.29,59.68
    >>Talk to |cRXP_FRIENDLY_Gurda Wildmane|r
    .accept 93225 >>Accept Carved Centaur Totems
    .target Gurda Wildmane
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
    .goto 1443,66.72,58.62
    >>Talk to |cRXP_FRIENDLY_Rigger Gizelton|r
    .accept 5943 >>Accept Gizelton Caravan
    .target Rigger Gizelton
step
    .goto 1443,60.86,61.86
    >>Talk to |cRXP_FRIENDLY_Smeed Scrabblescrew|r
    .turnin 5821 >>Turn in Bodyguard for Hire
    .turnin 5943 >>Turn in Gizelton Caravan
    .target Smeed Scrabblescrew
step
    .goto 1443,71.54,45.46
    >>Collect |cRXP_LOOT_[Khan Dez'hepah's Head]|r from |cRXP_ENEMY_Khan Dez'hepah|r. Collect |cRXP_LOOT_[Carved Centaur Totem]|r from |cRXP_ENEMY_Kolkar Centaur|r, |cRXP_ENEMY_Kolkar Scout|r, |cRXP_ENEMY_Kolkar Mauler|r
    *Bring Khan Dez'hepah's Head to Felgur Twocuts in Desolace.
    *Acquire 5 Carved Centaur Totems by slaying centaur of any clan throughout Desolace, then return them to Gurda Wildmane at Ghost Walker Post.
    .complete 1365,1 --Khan Dez'hepah
    .complete 93225,1 --Carved Centaur Totems
    .mob Khan Dez'hepah
    .mob Kolkar Centaur
    .mob Kolkar Scout
step
    .goto 1443,62.33,38.99
    >>Talk to |cRXP_FRIENDLY_Bibbly F'utzbuckle|r
    .turnin 79229 >>Turn in Highway Robbery
    .accept 79235 >>Accept On the Lam
    .accept 5501 >>Accept Bone Collector
    .target Bibbly F'utzbuckle
step
    .goto 1443,56.19,59.57
    >>Talk to |cRXP_FRIENDLY_Felgur Twocuts|r
    .turnin 1365 >>Turn in Khan Dez'hepah
    .target Felgur Twocuts
step
    .goto 1443,56.29,59.68
    >>Talk to |cRXP_FRIENDLY_Gurda Wildmane|r
    .turnin 93225 >>Turn in Carved Centaur Totems
    .target Gurda Wildmane
step
    .goto 1443,56.19,59.57
    >>Talk to |cRXP_FRIENDLY_Felgur Twocuts|r
    .accept 1366 >>Accept Centaur Bounty
    .target Felgur Twocuts
step
    .goto 1443,51.14,60.02
    >>Collect |cRXP_LOOT_[Kodo Bone]|r from |cRXP_PICK_Kodo Bones|r, |cRXP_PICK_Kodo Bones|r
    *Bring 10 Kodo Bones from the Kodo Graveyard to Bibbly F'utzbuckle at Kormek's Hut.
    .complete 5501,1 --Bone Collector
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
    .goto 1443,34.55,23.24
    >>Collect |cRXP_LOOT_[Soft-shelled Clam Meat]|r from |cRXP_ENEMY_Deepstrider Giant|r, |cRXP_ENEMY_Deepstrider Searcher|r, |cRXP_ENEMY_Slitherblade Naga|r
    *Find 10 pieces of Soft-shelled Clam Meat and bring it back to Mai'Lahii at Shadowprey Village.
    .complete 6142,1 --Clam Bait
    .mob Deepstrider Giant
    .mob Deepstrider Searcher
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
    .goto 1443,22.64,71.97
    >>Talk to |cRXP_FRIENDLY_Mai'Lahii|r
    .turnin 6142 >>Turn in Clam Bait
    .target Mai'Lahii
step
    .goto 1443,21.89,78.97
    >>Collect |cRXP_LOOT_[Rackmore's Silver Key]|r from |cRXP_ENEMY_Drysnap Crawler|r, |cRXP_ENEMY_Drysnap Pincer|r
    *Find Rackmore's Silver Key. Find Rackmore's Golden Key. Find and open Rackmore's Chest.
    .complete 6161,1 --Claim Rackmore's Treasure!
    .mob Drysnap Crawler
    .mob Drysnap Pincer
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
    .goto 1417,94.15,69.28
    >>Click the |cRXP_PICK_Illari's Loot Cache|r
    .turnin 79242 >>Turn in No Honor Among Thieves
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 30-39
#name 35-36 Dustwallow Marsh
#displayname 35-36 Dustwallow Marsh
#next 36-36 Thousand Needles
step
    .zone 1445 >>Travel to Dustwallow Marsh
    *How: Fly to Brackenwall Village.
    *Level for this part: 35-36. 15 quests, roughly 1 h 45 min.
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
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 30-39
#name 36-36 Thousand Needles
#displayname 36-36 Thousand Needles
#next 36-37 Stranglethorn Vale
step
    .zone 1441 >>Travel to Thousand Needles
    *How: Fly to Freewind Post.
    *Level for this part: 36-36. 9 quests, roughly 1 h 35 min.
step
    .goto 1441,45.67,50.74
    >>Talk to |cRXP_FRIENDLY_Cliffwatcher Longhorn|r
    .accept 5361 >>Accept Family Tree
    .target Cliffwatcher Longhorn
step
    .goto 1441,78.06,77.13
    >>Talk to |cRXP_FRIENDLY_Fizzle Brassbolts|r
    .accept 1106 >>Accept Martek the Exiled
    .target Fizzle Brassbolts
step
    .goto 1441,77.79,77.27
    >>Talk to |cRXP_FRIENDLY_Kravel Koalbeard|r
    .accept 1111 >>Accept Wharfmaster Dizzywig
    .target Kravel Koalbeard
step
    .goto 1443,55.41,55.81
    >>Talk to |cRXP_FRIENDLY_Nataka Longhorn|r
    .turnin 5361 >>Turn in Family Tree
    .target Nataka Longhorn
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
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 30-39
#name 36-37 Stranglethorn Vale
#displayname 36-37 Stranglethorn Vale
#next 37-38 Swamp of Sorrows/Badlands
step
    .zone 1434 >>Travel to Stranglethorn Vale
    *How: Fly to Grom'gol (or the zeppelin Orgrimmar -> Grom'gol).
    *Level for this part: 36-37. 8 quests, roughly 50 min.
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
    .goto 1434,22.95,12.02
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
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 30-39
#name 37-38 Swamp of Sorrows/Badlands
#displayname 37-38 Swamp of Sorrows/Badlands
#next 38-41 Riverglades
step
    .zone 1435 >>Travel to Swamp of Sorrows
    *How: Ride out of the Riverglades to Stonard (Swamp of Sorrows) or Kargath (Badlands).
    *Level for this part: 37-38. 17 quests, roughly 1 h 55 min.
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
    .accept 698 >>Accept Lack of Surplus
    .target Dar
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
    .goto 1435,47.81,39.76
    >>Click the |cRXP_PICK_Galen's Strongbox|r
    .turnin 1393 >>Turn in Galen's Escape
step
    .goto 1435,25.98,31.4
    >>Talk to |cRXP_FRIENDLY_Magtoor|r
    .turnin 1392 >>Turn in Noboru the Cudgel
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
    .goto 1435,25.98,31.4
    >>Talk to |cRXP_FRIENDLY_Magtoor|r
    .turnin 1389 >>Turn in Draenethyst Crystals
    .target Magtoor
step
    .goto 1435,26.51,30.35
    >>Talk to |cRXP_FRIENDLY_Pelluk|r
    .turnin 93430 >>Turn in Taking the Bait Back
    .target Pelluk
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
    .goto 1418,42.39,52.93
    >>Talk to |cRXP_FRIENDLY_Rigglefuzz|r
    .accept 705 >>Accept Pearl Diving
    .accept 703 >>Accept Barbecued Buzzard Wings
    .target Rigglefuzz
step
    .goto 1418,55.52,56.68
    >>Collect |cRXP_LOOT_[Coyote Jawbone]|r from |cRXP_ENEMY_Crag Coyote|r, |cRXP_ENEMY_Feral Crag Coyote|r, |cRXP_ENEMY_Elder Crag Coyote|r. Collect |cRXP_LOOT_[Buzzard Wing]|r from |cRXP_ENEMY_Carrion Vulture|r, |cRXP_ENEMY_Young Mesa Buzzard|r, |cRXP_ENEMY_Mesa Buzzard|r
    *Bring 30 Coyote Jawbones to Neeka Bloodscar in Kargath.
    *Bring 4 Buzzard Wings to Rigglefuzz.
    .complete 1419,1 --Coyote Thieves
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
    .goto 1435,47.74,55.2
    >>Talk to |cRXP_FRIENDLY_Helgrum the Swift|r
    .turnin 1420 >>Turn in Report to Helgrum
    .target Helgrum the Swift
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
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 30-39
#name 38-41 Riverglades
#displayname 38-41 Riverglades
#next 41-42 Tanaris
step
    .zone 2548 >>Travel to Riverglades
    *How: Fly to Gadgetzan, ride to Steamwheedle Port, take the goblin boat to Powderfuse Port and ride to Rog'mar (Powderfuse has no working flight master). Never through Redridge.
    *Level for this part: 38-41. 62 quests, roughly 5 h 50 min.
step
    #completewith next
    .goto 2548,59.59,45.08,15,0
    >>Talk to |cRXP_FRIENDLY_Grakna|r if you don't have this flight path yet
    .fp Grakna >>Get the flight path
    .target Grakna
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
    .goto 2548,79.45,52.71
    >>Talk to |cRXP_FRIENDLY_Wharfmaster Whizzbuzz|r
    .accept 95118 >>Accept Saltwater Savages
    .accept 95119 >>Accept Unfriendly Competition
    .target Wharfmaster Whizzbuzz
step
    .goto 2548,78.49,53.94
    >>Click the |cRXP_PICK_WANTED!|r
    .accept 95120 >>Accept WANTED: Old Rot-Chum
    .accept 95254 >>Accept WANTED: Trapclaw
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
    .accept 95122 >>Accept Unchecked Expansion
    .accept 95123 >>Accept A Blast Ye Scurvy Dogs!
    .target Wharfmaster Whizzbuzz
step
    .goto 2548,77.1,52.9
    >>Talk to |cRXP_FRIENDLY_Friz Frazzlespark|r
    .accept 95293 >>Accept Smuggler's Special
    .target Friz Frazzlespark
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
    .goto 2548,64.25,15.72
    >>Talk to |cRXP_FRIENDLY_Clugfist|r
    .turnin 94556 >>Turn in Jom-jom's Escape
    .target Clugfist
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
    .target Friz Frazzlespark
step
    .goto 2548,79.45,52.71
    >>Talk to |cRXP_FRIENDLY_Wharfmaster Whizzbuzz|r
    .accept 95124 >>Accept Admiral Lamora
    .accept 95165 >>Accept See Ya, Scallywags!
    .target Wharfmaster Whizzbuzz
step
    .goto 2548,77.1,52.9
    >>Talk to |cRXP_FRIENDLY_Friz Frazzlespark|r
    .accept 95295 >>Accept I Know a Guy
    .target Friz Frazzlespark
step
    .goto 2548,79.45,52.71
    >>Talk to |cRXP_FRIENDLY_Wharfmaster Whizzbuzz|r
    .turnin 95165 >>Turn in See Ya, Scallywags!
    .target Wharfmaster Whizzbuzz
step
    .goto 2548,74.58,71.88
    >>Kill |cRXP_ENEMY_Murloc Warrior|r. Kill |cRXP_ENEMY_Murloc Oracle|r. Collect |cRXP_LOOT_[Rot-Covered Harpoon]|r from |cRXP_ENEMY_Old Rot-Chum|r. Collect |cRXP_LOOT_[Saltwater Murloc Eye]|r from |cRXP_ENEMY_Murloc Oracle|r, |cRXP_ENEMY_Murloc Tideskimmer|r, |cRXP_ENEMY_Murloc Warrior|r
    *Kill 8 Murloc Oracles and 8 Murloc Warriors along the Eastwind Shore.
    *Bring proof of Old Rot-Chum's demise to Wharfmaster Whizzbuzz.
    *Gather 12 Murloc Eyes and 6 pieces of Sand Crawler Meat for Fimbo Greasemitz.
    .complete 95118,1 --Saltwater Savages
    .complete 95118,2 --Saltwater Savages
    .complete 95120,1 --WANTED: Old Rot-Chum
    .complete 95121,1 --A Taste of the Sea
    .mob Murloc Warrior
    .mob Murloc Oracle
    .mob Old Rot-Chum
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
    .turnin 95118 >>Turn in Saltwater Savages
    .turnin 95120 >>Turn in WANTED: Old Rot-Chum
    .target Wharfmaster Whizzbuzz
step
    .goto 2548,79.02,54.2
    >>Talk to |cRXP_FRIENDLY_Fimbo Greasemitz|r
    .turnin 95121 >>Turn in A Taste of the Sea
    .target Fimbo Greasemitz
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
    >>Kill |cRXP_ENEMY_Young Paletusk|r. Collect |cRXP_LOOT_[Snargl's Snout]|r from |cRXP_ENEMY_Snargl|r. Collect |cRXP_LOOT_[Stolen Ore]|r from |cRXP_ENEMY_Redridge Brute|r, |cRXP_ENEMY_Redridge Mystic|r, |cRXP_ENEMY_Redridge Trapper|r
    *Return 10 Young Paletusks to Na'zok's farm near Bolder'ok.
    *Locate Snargl in the Bristle Hills, kill him, and retrieve his snout for Neza Bloodsnout.
    *Gather 40 Stolen Ore from gnolls in the Bristle Hills for Kreza Darkthorn.
    .complete 95163,1 --Drive Them Back
    .complete 94533,1 --Snargl's Snout
    .complete 94535,1 --Bristle Hills Bandits
    .mob Young Paletusk
    .mob Snargl
    .mob Redridge Brute
    .mob Redridge Mystic
step
    .goto 2548,60.46,47.86
    >>Talk to |cRXP_FRIENDLY_Neza Bloodsnout|r
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
    .accept 95417 >>Accept The Purple Ones
    .accept 95602 >>Accept Sickening Lights
    .target Clubtoe
step
    .goto 2548,49.18,46.74
    >>Talk to |cRXP_FRIENDLY_Twilight Brute|r
    .turnin 95417 >>Turn in The Purple Ones
    .target Twilight Brute
step
    .goto 2548,49.95,46.99
    >>Talk to |cRXP_FRIENDLY_Clubtoe|r
    .turnin 95602 >>Turn in Sickening Lights
    .target Clubtoe
step
    .goto 2548,49.18,46.74
    >>Talk to |cRXP_FRIENDLY_Twilight Brute|r
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
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 40-49
#name 41-42 Tanaris
#displayname 41-42 Tanaris
#next 42-43 Feralas
step
    .zone 1446 >>Travel to Tanaris
    *How: From Powderfuse Port take the goblin boat to Steamwheedle Port and ride to Gadgetzan. From Kalimdor: fly to Gadgetzan.
    *Level for this part: 41-42. 17 quests, roughly 1 h 50 min.
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
    .accept 32 >>Accept Rise of the Silithid
    .target Senior Surveyor Fizzledowser
step
    .goto 1434,28.36,76.35
    >>Talk to |cRXP_FRIENDLY_Oglethorpe Obnoticus|r
    .turnin 648 >>Turn in Rescue OOX-17/TN!
    .target Oglethorpe Obnoticus
step
    .goto 1454,56.26,46.68
    >>Talk to |cRXP_FRIENDLY_Zilzibin Drumlore|r
    .turnin 32 >>Turn in Rise of the Silithid
    .target Zilzibin Drumlore
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 40-49
#name 42-43 Feralas
#displayname 42-43 Feralas
#next 43-43 Shen'dralas
step
    .zone 1444 >>Travel to Feralas
    *How: Fly to Camp Mojache.
    *Level for this part: 42-43. 26 quests, roughly 2 h 25 min.
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
    .goto 1444,75.8,43.58
    >>Talk to |cRXP_FRIENDLY_Rok Orhan|r
    .turnin 2978 >>Turn in The Gordunni Scroll
    .accept 2979 >>Accept Dark Ceremony
    .target Rok Orhan
step
    .goto 1444,68.66,54.32
    >>Kill |cRXP_ENEMY_Woodpaw Alpha|r
    *Kill 5 Woodpaw Alphas and return to Hadoken Swiftstrider within one hour.
    .complete 2863,1 --Alpha Strike
    .mob Woodpaw Alpha
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
    >>Collect |cRXP_LOOT_[Gordunni Orb]|r from |cRXP_ENEMY_Gordunni Mage-Lord|r
    *Rok Orhan in Camp Mojache wants you to find a Gordunni Orb.
    .complete 2979,1 --Dark Ceremony
    .mob Gordunni Mage-Lord
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
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 40-49
#name 43-43 Shen'dralas
#displayname 43-43 Shen'dralas
#next 43-44 Dustwallow Marsh
step
    .zone 2652 >>Travel to Shen'dralas
    *How: Ride south out of Desolace through the Valley of Bones.
    *Level for this part: 43-43. 9 quests, roughly 15 min.
step
    .goto 2652,34.13,77.9
    >>Talk to |cRXP_FRIENDLY_Rokren|r
    .accept 93125 >>Accept Going Home
    .target Rokren
step
    .goto 2652,43.65,34.31
    >>Click the |cRXP_PICK_Shen'dralar Pylon|r
    .accept 92914 >>Accept Strange Pylons
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
    .goto 2652,20.93,22.68
    >>Talk to |cRXP_FRIENDLY_Nerlokh|r
    .turnin 93125 >>Turn in Going Home
    .target Nerlokh
step
    .goto 2652,59.27,53.93
    >>Talk to |cRXP_FRIENDLY_Hagiak|r
    .turnin 93066 >>Turn in Bristleback Retreat
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
    .target Mordent Evenshade
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 40-49
#name 43-44 Dustwallow Marsh
#displayname 43-44 Dustwallow Marsh
#next 44-45 The Hinterlands
step
    .zone 1445 >>Travel to Dustwallow Marsh
    *How: Fly to Brackenwall Village.
    *Level for this part: 43-44. 10 quests, roughly 55 min.
step
    .goto 1445,36.4,30.85
    >>Talk to |cRXP_FRIENDLY_Krak|r
    .accept 98192 >>Accept Skin Careful, Skin Sharp
    .target Krak
step
    .goto 1445,37.15,33.09
    >>Talk to |cRXP_FRIENDLY_Draz'Zilb|r
    .accept 1169 >>Accept Identifying the Brood
    .target Draz'Zilb
step
    .goto 1445,34.16,69.01
    >>Collect |cRXP_LOOT_[Intact Raptor Hide]|r from |cRXP_ENEMY_Bloodfen Razormaw|r, |cRXP_ENEMY_Bloodfen Lashtail|r
    *Bring 8 Intact Raptor Hides to Krak in Brackenwall Village.
    .complete 98192,1 --Skin Careful, Skin Sharp
    .mob Bloodfen Razormaw
    .mob Bloodfen Lashtail
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
    >>Collect |cRXP_LOOT_[Searing Tongue]|r from |cRXP_ENEMY_Searing Hatchling|r, |cRXP_ENEMY_Searing Whelp|r. Collect |cRXP_LOOT_[Searing Heart]|r from |cRXP_ENEMY_Searing Hatchling|r, |cRXP_ENEMY_Searing Whelp|r. Collect |cRXP_LOOT_[Shed Dark Dragonscale]|r from |cRXP_ENEMY_Searing Hatchling|r, |cRXP_ENEMY_Searing Whelp|r, |cRXP_ENEMY_Firemane Scout|r. Kill |cRXP_ENEMY_Searing Hatchling|r. Kill |cRXP_ENEMY_Searing Whelp|r. Collect |cRXP_LOOT_[Wyrmtail]|r from |cRXP_PICK_Wyrmtail|r
    *Draz'Zilb in Brackenwall Village would like you to bring him 15 Searing Tongues and 15 Searing Hearts.
    *Bring 20 Shed Dark Dragonscales to Drazzit Dripvalve.
    *Slay 8 Searing Hatchlings and 8 Searing Whelps.
    *Bring 10 Wyrmtail to Gizzix Grimegurgle.
    .complete 1169,1 --Identifying the Brood
    .complete 1169,2 --Identifying the Brood
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
    .goto 1445,36.4,30.85
    >>Talk to |cRXP_FRIENDLY_Krak|r
    .turnin 98192 >>Turn in Skin Careful, Skin Sharp
    .target Krak
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
    .goto 1454,38.93,38.4
    >>Talk to |cRXP_FRIENDLY_Zor Lonetree|r
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
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 40-49
#name 44-45 The Hinterlands
#displayname 44-45 The Hinterlands
#next 45-45 Un'Goro Crater
step
    .zone 1425 >>Travel to The Hinterlands
    *How: Fly to Revantusk Village.
    *Level for this part: 44-45. 14 quests, roughly 1 h 15 min.
step
    #completewith next
    .goto 1425,81.7,81.76,15,0
    >>Talk to |cRXP_FRIENDLY_Gorkas|r if you don't have this flight path yet
    .fp Gorkas >>Get the flight path
    .target Gorkas
step
    .goto 1425,78.14,81.38
    >>Talk to |cRXP_FRIENDLY_Lard|r
    .accept 7840 >>Accept Lard Lost His Lunch
    .target Lard
step
    .goto 1425,78.8,78.25
    >>Talk to |cRXP_FRIENDLY_Mystic Yayo'jin|r
    .accept 7844 >>Accept Cannibalistic Cousins
    .target Mystic Yayo'jin
step
    .goto 1425,79.16,79.53
    >>Talk to |cRXP_FRIENDLY_Huntsman Markhor|r
    .accept 7828 >>Accept Stalking the Stalkers
    .accept 7829 >>Accept Hunt the Savages
    .accept 7830 >>Accept Avenging the Fallen
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
    .goto 1425,81.48,60.46
    >>Loot |cRXP_LOOT_[OOX-09/HL Distress Beacon]|r from |cRXP_ENEMY_Saltwater Snapjaw|r, |cRXP_ENEMY_Vilebranch Axe Thrower|r, |cRXP_ENEMY_Vilebranch Witch Doctor|r, then click it to start the quest
    .accept 485 >>Accept Find OOX-09/HL!
    .use 8704
    .mob Saltwater Snapjaw
    .mob Vilebranch Axe Thrower
step
    .goto 1425,69.59,54.85
    >>Kill |cRXP_ENEMY_Vilebranch Scalper|r. Kill |cRXP_ENEMY_Silvermane Stalker|r. Collect |cRXP_LOOT_[Skylord Plume]|r from |cRXP_ENEMY_Razorbeak Skylord|r. Collect |cRXP_LOOT_[Slagtree's Lost Tools]|r from |cRXP_PICK_Slagtree's Lost Tools|r
    *Mystic Yayo'jin at Revantusk Village in the Hinterlands wants you to kill 30 Vilebranch Scalpers and 15 Vilebranch Soothsayers. Return to her when this task is complete.
    *Huntsman Markhor at Revantusk Village in the Hinterlands wants you to kill 10 Silvermane Stalkers and 10 Silvermane Howlers. Return to him once the task is complete.
    *Huntsman Markhor at Revantusk Village in the Hinterlands wants you to kill a Razorbeak Skylord and retrieve its Skylord Plume. Return to him once the task is complete.
    *Smith Slagtree at Revantusk Village in the Hinterlands wants you to find Slagtree's Lost Tools. Return to him once this task is complete.
    .complete 7844,1 --Cannibalistic Cousins
    .complete 7828,1 --Stalking the Stalkers
    .complete 7830,1 --Avenging the Fallen
    .complete 7839,1 --Vilebranch Hooligans
    .mob Vilebranch Scalper
    .mob Silvermane Stalker
    .mob Razorbeak Skylord
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
    >>Kill |cRXP_ENEMY_Vilebranch Soothsayer|r. Kill |cRXP_ENEMY_Silvermane Howler|r
    *Mystic Yayo'jin at Revantusk Village in the Hinterlands wants you to kill 30 Vilebranch Scalpers and 15 Vilebranch Soothsayers. Return to her when this task is complete.
    *Huntsman Markhor at Revantusk Village in the Hinterlands wants you to kill 10 Silvermane Stalkers and 10 Silvermane Howlers. Return to him once the task is complete.
    .complete 7844,2 --Cannibalistic Cousins
    .complete 7828,2 --Stalking the Stalkers
    .mob Vilebranch Soothsayer
    .mob Silvermane Howler
step
    .goto 1425,78.8,78.25
    >>Talk to |cRXP_FRIENDLY_Mystic Yayo'jin|r
    .turnin 7844 >>Turn in Cannibalistic Cousins
    .target Mystic Yayo'jin
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
    .goto 1425,86.3,59.01
    >>Click the |cRXP_PICK_Rin'ji's Secret|r
    .turnin 2742 >>Turn in Rin'ji is Trapped!
    .accept 2782 >>Accept Rin'ji's Secret
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
    .goto 1424,61.44,19.06
    >>Talk to |cRXP_FRIENDLY_Apothecary Lydon|r
    .turnin 2933 >>Turn in Venom Bottles
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
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 40-49
#name 45-45 Un'Goro Crater
#displayname 45-45 Un'Goro Crater
#next 45-46 Azshara
step
    .zone 1449 >>Travel to Un'Goro Crater
    *How: Fly to Marshal's Refuge.
    *Level for this part: 45-45. 12 quests, roughly 1 h 15 min.
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
    .goto 1449,44.23,11.59
    >>Talk to |cRXP_FRIENDLY_Shizzle|r
    .accept 4503 >>Accept Shizzle's Flyer
    .target Shizzle
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
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 40-49
#name 45-46 Azshara
#displayname 45-46 Azshara
#next 46-48 Maraudon
step
    .zone 1447 >>Travel to Azshara
    *How: Fly to Valormok.
    *Level for this part: 45-46. 14 quests, roughly 1 h 45 min.
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
    .goto 1447,22.53,51.84
    >>Talk to |cRXP_FRIENDLY_Izvi Gildfizz|r
    .turnin 91568 >>Turn in Long Walks on the Beach
    .target Izvi Gildfizz
step
    .goto 1447,22.56,51.42
    >>Talk to |cRXP_FRIENDLY_Jediga|r
    .turnin 3517 >>Turn in Stealing Knowledge
    .accept 3561 >>Accept Delivery to Archmage Xylem
    .accept 3541 >>Accept Delivery to Jes'rimon
    .accept 3542 >>Accept Delivery to Andron Gant
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
    .target Loh'atu
step
    .goto 1447,16.57,69.4
    >>Kill |cRXP_ENEMY_Highborne Apparition|r. Kill |cRXP_ENEMY_Highborne Lichling|r
    *Destroy 6 Highborne Apparitions and 6 Highborne Lichlings before returning to Loh'atu in Azshara.
    .complete 5535,1 --Spiritual Unrest
    .complete 5535,2 --Spiritual Unrest
    .mob Highborne Apparition
    .mob Highborne Lichling
step
    .goto 1447,11.37,78.17
    >>Talk to |cRXP_FRIENDLY_Loh'atu|r
    .turnin 5535 >>Turn in Spiritual Unrest
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
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 40-49
#name 46-48 Maraudon
#displayname 46-48 Maraudon
#next 48-48 Azshara
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
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 40-49
#name 48-48 Azshara
#displayname 48-48 Azshara
#next 48-49 The Hinterlands
step
    .zone 1447 >>Travel to Azshara
    *How: Fly to Valormok.
    *Level for this part: 48-48. 10 quests, roughly 1 h.
step
    .goto 1447,22.53,51.84
    >>Talk to |cRXP_FRIENDLY_Izvi Gildfizz|r
    .accept 91569 >>Accept Blue Gold
    .target Izvi Gildfizz
step
    .goto 1447,45.29,22.34
    >>Talk to |cRXP_FRIENDLY_Furze|r
    .accept 86799 >>Accept Encroaching Corruption
    .target Furze
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
    .goto 1447,53.45,21.82
    >>Talk to |cRXP_FRIENDLY_Kim'jael|r
    .turnin 5534 >>Turn in Kim'jael's "Missing" Equipment
    .target Kim'jael
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 40-49
#name 48-49 The Hinterlands
#displayname 48-49 The Hinterlands
#next 49-50 Western/Eastern Plaguelands
step
    .zone 1425 >>Travel to The Hinterlands
    *How: Fly to Revantusk Village.
    *Level for this part: 48-49. 10 quests, roughly 1 h 5 min.
step
    .goto 1425,78.2,81.18
    >>Talk to |cRXP_FRIENDLY_Primal Torntusk|r
    .accept 7845 >>Accept Kidnapped Elder Torntusk!
    .accept 7850 >>Accept Dark Vessels
    .target Primal Torntusk
step
    .goto 1425,80.33,81.54
    >>Talk to |cRXP_FRIENDLY_Katoom the Angler|r
    .accept 7815 >>Accept Snapjaws, Mon!
    .target Katoom the Angler
step
    .goto 1425,79.16,79.53
    >>Talk to |cRXP_FRIENDLY_Huntsman Markhor|r
    .accept 7849 >>Accept Separation Anxiety
    .target Huntsman Markhor
step
    .goto 1425,79.38,79.08
    >>Talk to |cRXP_FRIENDLY_Otho Moji'ko|r
    .accept 7841 >>Accept Message to the Wildhammer
    .target Otho Moji'ko
step
    .goto 1425,59.69,77.84
    >>Talk to |cRXP_FRIENDLY_Elder Torntusk|r
    .turnin 7845 >>Turn in Kidnapped Elder Torntusk!
    .accept 7846 >>Accept Recover the Key!
    .target Elder Torntusk
step
    .goto 1425,62.38,71.62
    >>Collect |cRXP_LOOT_[Vessel of Tainted Blood]|r from |cRXP_PICK_Vessel of Tainted Blood|r. Collect |cRXP_LOOT_[Huntsman Malkhor's Skull]|r from |cRXP_PICK_Pile of Skulls|r. Collect |cRXP_LOOT_[Huntsman Malkhor's Bones]|r from |cRXP_PICK_Pile of Bones|r
    *Primal Torntusk at Revantusk Village in the Hinterlands wants you to recover 10 Vessels of Tainted Blood from Jintha'alor. Return to Primal Torntusk when this task is complete.
    *Huntsman Markhor at Revantusk Village in the Hinterlands wants you to recover his twin brother's remains. Find and return Huntsman Malkhor's Skull and Huntsman Malkhor's Bones to Huntsman Markhor.
    .complete 7850,1 --Dark Vessels
    .complete 7849,1 --Separation Anxiety
    .complete 7849,2 --Separation Anxiety
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
    .goto 1425,78.2,81.18
    >>Talk to |cRXP_FRIENDLY_Primal Torntusk|r
    .turnin 7850 >>Turn in Dark Vessels
    .turnin 7847 >>Turn in Return to Primal Torntusk
    .target Primal Torntusk
step
    .goto 1425,79.16,79.53
    >>Talk to |cRXP_FRIENDLY_Huntsman Markhor|r
    .turnin 7849 >>Turn in Separation Anxiety
    .target Huntsman Markhor
step
    .goto 1425,81.48,60.46
    >>Kill |cRXP_ENEMY_Saltwater Snapjaw|r
    *Katoom the Angler at Revantusk Village in the Hinterlands wants you to kill 15 Saltwater Snapjaw turtles. Return to him when you have completed this task.
    .complete 7815,1 --Snapjaws, Mon!
    .mob Saltwater Snapjaw
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
    .goto 1425,79.38,79.08
    >>Talk to |cRXP_FRIENDLY_Otho Moji'ko|r
    .turnin 7841 >>Turn in Message to the Wildhammer
    .accept 7842 >>Accept Another Message to the Wildhammer
    .target Otho Moji'ko
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
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 40-49
#name 49-50 Western/Eastern Plaguelands
#displayname 49-50 Western/Eastern Plaguelands
#next 50-51 Felwood
step
    .zone 1422 >>Travel to Western
    *How: Fly to the Bulwark (Tirisfal); later Light's Hope Chapel.
    *Level for this part: 49-50. 24 quests, roughly 3 h 5 min.
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
    .goto 1422,46.47,42.65
    >>Kill |cRXP_ENEMY_Diseased Wolf|r
    *Destroy 8 Diseased Wolves, and then return to Mulgris Deepriver at the Writhing Haunt, Western Plaguelands.
    .complete 4984,1 --The Wildlife Suffers Too
    .mob Diseased Wolf
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
    .goto 1423,23.07,72.63
    >>Collect |cRXP_LOOT_[Zaeldarr's Head]|r from |cRXP_ENEMY_Zaeldarr the Outcast|r
    *Bring Zaeldarr's Head to Caretaker Alen at Light's Hope Chapel.
    .complete 6021,1 --Zaeldarr the Outcast
    .mob Zaeldarr the Outcast
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
    .goto 1456,75.65,31.61
    >>Talk to |cRXP_FRIENDLY_Nara Wildmane|r
    .turnin 4987 >>Turn in Glyphed Oaken Branch
    .target Nara Wildmane
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
    .goto 1423,71.7,50.04
    >>Talk to |cRXP_FRIENDLY_Carlin Redpath|r
    .turnin 5210 >>Turn in Brother Carlin
    .target Carlin Redpath
step
    .goto 1420,83.19,68.45
    >>Talk to |cRXP_FRIENDLY_Argent Officer Garush|r
    .accept 5405 >>Accept Argent Dawn Commission
    .target Argent Officer Garush
step
    .goto 1420,83.19,68.45
    >>Talk to |cRXP_FRIENDLY_Argent Officer Garush|r
    .turnin 5405 >>Turn in Argent Dawn Commission
    .target Argent Officer Garush
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
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 50-60
#name 50-51 Felwood
#displayname 50-51 Felwood
#next 51-51 Un'Goro Crater
step
    .zone 1448 >>Travel to Felwood
    *How: In the Eastern Kingdoms? Zeppelin to Orgrimmar first. Then fly to Bloodvenom Post.
    *Level for this part: 50-51. 12 quests, roughly 55 min.
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
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 50-60
#name 51-51 Un'Goro Crater
#displayname 51-51 Un'Goro Crater
#next 51-52 Searing Gorge
step
    .zone 1449 >>Travel to Un'Goro Crater
    *How: Fly to Marshal's Refuge.
    *Level for this part: 51-51. 14 quests, roughly 1 h 30 min.
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
    .goto 1449,43.62,8.5
    >>Talk to |cRXP_FRIENDLY_Spraggle Frock|r
    .turnin 4491 >>Turn in A Little Help From My Friends
    .target Spraggle Frock
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
    .goto 1449,43.62,8.5
    >>Talk to |cRXP_FRIENDLY_Spraggle Frock|r
    .turnin 4501 >>Turn in Beware of Pterrordax
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
<< Horde
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 50-60
#name 51-52 Searing Gorge
#displayname 51-52 Searing Gorge
#next 52-55 Blackrock Depths pre-quests
step
    .zone 1427 >>Travel to Searing Gorge
    *How: Fly to Thorium Point.
    *Level for this part: 51-52. 14 quests, roughly 1 h 10 min.
step
    #completewith next
    .goto 1427,34.84,30.87,15,0
    >>Talk to |cRXP_FRIENDLY_Grisha|r if you don't have this flight path yet
    .fp Grisha >>Get the flight path
    .target Grisha
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
    .goto 1427,37.65,26.47
    >>Click the |cRXP_PICK_Wanted/Missing/Lost & Found|r
    .accept 7701 >>Accept WANTED: Overseer Maltorius
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
    .goto 1427,52.24,50.37
    >>Collect |cRXP_LOOT_[Heart of Flame]|r from |cRXP_ENEMY_Blazing Elemental|r, |cRXP_ENEMY_Inferno Elemental|r, |cRXP_ENEMY_Magma Elemental|r
    *Collect 4 Hearts of Flame and 4 globes of Golem Oil and return the items to Kalaran Windblade.
    .complete 3442,1 --The Flawless Flame
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
    .goto 1427,37.74,26.56
    >>Talk to |cRXP_FRIENDLY_Lookout Captain Lolo Longstriker|r
    .turnin 7701 >>Turn in WANTED: Overseer Maltorius
    .target Lookout Captain Lolo Longstriker
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
step
    .goto 1427,39.17,39
    >>Talk to |cRXP_FRIENDLY_Squire Maltrake|r
    .turnin 3463 >>Turn in Set Them Ablaze!
    .target Squire Maltrake
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
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 50-60
#name 52-55 Blackrock Depths pre-quests
#displayname 52-55 Blackrock Depths pre-quests
#next 52-55 Blackrock Depths
step
    +|cRXP_WARN_Blackrock Depths: pre-quests|r. 9 quests, solo (no group needed), roughly 1 h 50 min. The run guide comes after this one. Click to start.
    *Pre-quests: Trinkets..., Disharmony of Flame, A Taste of Flame, The Rise of the Machines, In Search of Anthion, Dead Man's Plea, Anthion's Strange Request, Anthion's Old Friend
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
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 50-60
#name 52-55 Blackrock Depths
#displayname 52-55 Blackrock Depths
#next 55-56 Dire Maul East pre-quests
step
    +|cRXP_WARN_Blackrock Depths|r (levels 52-60). Pick up 25 dungeon quests solo (roughly 2 h 55 min with the hand-ins), then ONE run with a group (roughly 4 h). No group needed until the run step. Click to start.
    *Its 9 pre-quests are in the guide before this one. Skipped them? Some quests below won't be offered: skip those steps.
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
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 50-60
#name 55-56 Dire Maul East
#displayname 55-56 Dire Maul East
#next 56-58 Lower Blackrock Spire pre-quests
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
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 50-60
#name 56-58 Lower Blackrock Spire pre-quests
#displayname 56-58 Lower Blackrock Spire pre-quests
#next 56-58 Lower Blackrock Spire
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
<< Horde
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 50-60
#name 56-58 Lower Blackrock Spire
#displayname 56-58 Lower Blackrock Spire
#next 58-60 Dire Maul West
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
#group Peon Journey - 1-60 Speed (with Dungeons)
#groupweight 110
#subgroup Levels 50-60
#name 58-60 Dire Maul West
#displayname 58-60 Dire Maul West
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
