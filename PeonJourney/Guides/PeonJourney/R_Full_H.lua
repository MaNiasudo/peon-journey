RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 20-29
#name 22-22 Shadowfang Keep
#displayname 22-22 Shadowfang Keep
#next 22-25 Stonetalon/Barrens
step
    +|cRXP_WARN_Shadowfang Keep|r (levels 20-30). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
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
    +|cRXP_WARN_Run the dungeon|r
step
    .goto 1421,44.8,67.8
    >>Enter |cRXP_WARN_Shadowfang Keep|r and run it with a group. Quest goals inside:
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
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 20-29
#name 22-25 Stonetalon/Barrens
#displayname 22-25 Stonetalon/Barrens
#next 25-26 Blackfathom Deeps
step
    .zone 1442 >>Travel to Stonetalon
    *Suggested level for this part: 22-25
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
    .goto 1442,32.57,60.66
    >>Kill |cRXP_ENEMY_Bloodfury Harpy|r. Kill |cRXP_ENEMY_Bloodfury Ambusher|r. Kill |cRXP_ENEMY_Bloodfury Roguefeather|r. Collect |cRXP_LOOT_[Glittering Sunstone]|r from |cRXP_ENEMY_Bloodfury Harpy|r, |cRXP_ENEMY_Bloodfury Roguefeather|r, |cRXP_ENEMY_Bloodfury Slayer|r
    *Maggran Earthbinder in Sun Rock Retreat wants you to slay 7 Bloodfury Harpies, 7 Bloodfury Ambushers, 7 Bloodfury Slayers and 7 Bloodfury Roguefeathers.
    *Bring 15 Glittering Sunstones to Mor'rogal.
    .complete 6282,1 --Harpies Threaten
    .complete 6282,2 --Harpies Threaten
    .complete 6282,4 --Harpies Threaten
    .complete 86576,1 --Bloodfury Trinkets
    .mob Bloodfury Harpy
    .mob Bloodfury Ambusher
    .mob Bloodfury Roguefeather
step
    .goto 1442,34.89,70.26
    >>Kill |cRXP_ENEMY_Bloodfury Slayer|r. Collect |cRXP_LOOT_[Incendrites]|r from |cRXP_ENEMY_Rogue Flame Spirit|r, |cRXP_ENEMY_Burning Ravager|r, |cRXP_ENEMY_Burning Destroyer|r
    *Maggran Earthbinder in Sun Rock Retreat wants you to slay 7 Bloodfury Harpies, 7 Bloodfury Ambushers, 7 Bloodfury Slayers and 7 Bloodfury Roguefeathers.
    *Bring 10 Incendrites to Tsunaman at Sun Rock Retreat.
    .complete 6282,3 --Harpies Threaten
    .complete 6393,1 --Elemental War
    .mob Bloodfury Slayer
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
    .goto 1442,33.66,67.02
    >>Click |cRXP_PICK_Gaea Dirt Mound|r
    *Plant 10 Gaea Seeds in Gaea Dirt Mounds, and then return the remaining Enchanted Gaea Seeds to Tammra at Sun Rock Retreat.
    .complete 6381,1 --New Life
step
    .goto 1442,47.46,58.38
    >>Talk to |cRXP_FRIENDLY_Tammra Windfield|r
    .turnin 6381 >>Turn in New Life
    .target Tammra Windfield
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
    .goto 1413,51.07,29.63
    >>Talk to |cRXP_FRIENDLY_Korran|r
    .accept 868 >>Accept Egg Hunt
    .target Korran
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
    .goto 1442,46.9,39.3
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
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 20-29
#name 25-26 Blackfathom Deeps
#displayname 25-26 Blackfathom Deeps
#next 26-27 Ashenvale
step
    +|cRXP_WARN_Blackfathom Deeps|r (levels 24-32). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1442,47.36,64.25
    >>Talk to |cRXP_FRIENDLY_Tsunaman|r
    .accept 6562 >>Accept Trouble in the Deeps
    .target Tsunaman
step
    .goto 1440,13.04,13.12
    >>Loot |cRXP_LOOT_[Damp Note]|r from |cRXP_ENEMY_Blackfathom Tide Priestess|r, then click it to start the quest
    .accept 6564 >>Accept Allegiance to the Old Gods
    .use 16790
    .mob Blackfathom Tide Priestess
step
    .goto 1440,11.56,34.29
    >>Talk to |cRXP_FRIENDLY_Je'neu Sancrea|r
    .accept 6921 >>Accept Amongst the Ruins
    .target Je'neu Sancrea
step
    #completewith next
    +|cRXP_WARN_Run the dungeon|r
step
    .goto 1440,14.5,14.2
    >>Inside Blackfathom Deeps: these quests start from a drop or an object in the dungeon
    .accept 6561 >>Accept Blackfathom Villainy
    .accept 78917 >>Accept The Heart of the Void
step
    .goto 1440,14.5,14.2
    >>Enter |cRXP_WARN_Blackfathom Deeps|r and run it with a group. Quest goals inside:
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
    .turnin 6562 >>Turn in Trouble in the Deeps
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
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1440,11.56,34.29
    >>Talk to |cRXP_FRIENDLY_Je'neu Sancrea|r
    .accept 6563 >>Accept The Essence of Aku'Mai
    .accept 6565 >>Accept Allegiance to the Old Gods
    .target Je'neu Sancrea
step
    .goto 1440,13.59,13.14
    >>Collect |cRXP_LOOT_[Sapphire of Aku'Mai]|r from |cRXP_PICK_Sapphire of Aku'Mai|r, |cRXP_PICK_Sapphire of Aku'Mai|r
    *Bring 20 Sapphires of Aku'Mai to Je'neu Sancrea in Ashenvale.
    .complete 6563,1 --The Essence of Aku'Mai
step
    #completewith next
    +|cRXP_WARN_Run the dungeon (run 2)|r
step
    .goto 1440,14.5,14.2
    >>Enter |cRXP_WARN_Blackfathom Deeps|r and run it with a group. Quest goals inside:
    *Allegiance to the Old Gods: Kill Lorgus Jett in Blackfathom Deeps and then return to Je'neu Sancrea in Ashenvale.
    .complete 6565,1 --Allegiance to the Old Gods
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1440,11.56,34.29
    >>Talk to |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6563 >>Turn in The Essence of Aku'Mai
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
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 20-29
#name 26-27 Ashenvale
#displayname 26-27 Ashenvale
#next 27-28 Excavation Site: Wetlands
step
    .zone 1440 >>Travel to Ashenvale
    *Suggested level for this part: 26-27
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
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 20-29
#name 27-28 Excavation Site: Wetlands
#displayname 27-28 Excavation Site: Wetlands
#next 28-29 Thousand Needles
step
    +|cRXP_WARN_Excavation Site: Wetlands|r (levels 26-31). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *New Forever dungeon above Whelgar's Excavation. Take the winding path up left of Thelgen Rock to the meeting stone.
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
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
    +|cRXP_WARN_Run the dungeon|r
step
    .goto 1437,48.1,56.5
    >>Loot |cRXP_LOOT_[Titan Relic]|r from |cRXP_ENEMY_Relic Guardian|r, then click it to start the quest
    .accept 95664 >>Accept Elder Knowledge
    .use 270866
    .mob Relic Guardian
step
    .goto 1437,48.1,56.5
    >>Enter |cRXP_WARN_Excavation Site: Wetlands|r and run it with a group. Quest goals inside:
    *Elder Knowledge: Take the Titan Relic to the Elder Rise in Thunder Bluff and look for someone who can tell you more about it.
    *Changing Tastes: Enter the Excavation Sites in the Wetlands and bring back Thicket Raptor Meat.
    .complete 95664,1 --Elder Knowledge
    .complete 95697,1 --Changing Tastes
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1417,74.54,35.64
    >>Talk to |cRXP_FRIENDLY_Zaruk|r
    .turnin 95663 >>Turn in Dragonmaw Rumors
    .target Zaruk
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
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1456,71.06,34.19
    >>Talk to |cRXP_FRIENDLY_Bashana Runetotem|r
    .accept 98823 >>Accept Earthen Echo
    .target Bashana Runetotem
step
    #completewith next
    +|cRXP_WARN_Run the dungeon (run 2)|r
step
    .goto 1437,48.1,56.5
    >>Inside Excavation Site: Wetlands: these quests start from a drop or an object in the dungeon
    .accept 95682 >>Accept Open the Maw
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1437,48.1,56.5
    >>Inside Excavation Site: Wetlands: these quests start from a drop or an object in the dungeon
    .turnin 95682 >>Turn in Open the Maw
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
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 20-29
#name 28-29 Thousand Needles
#displayname 28-29 Thousand Needles
#next 29-30 City of Dalaran
step
    .zone 1441 >>Travel to Thousand Needles
    *Suggested level for this part: 28-29
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
    >>Collect |cRXP_LOOT_[Stolen Freewind Supplies]|r
    *Bring 8 Stolen Freewind Supplies to Jandia in Freewind Post.
    .complete 98069,1 --Stolen Freewind Supplies
step
    .goto 1441,46.21,51.51
    >>Talk to |cRXP_FRIENDLY_Jandia|r
    .turnin 98069 >>Turn in Stolen Freewind Supplies
    .target Jandia
step
    .goto 1441,56.36,50.39
    >>Collect |cRXP_LOOT_[Alien Egg]|r from |cRXP_PICK_Alien Egg|r
    *Return the Alien Egg to Hagar Lightninghoof in Freewind Post.
    .complete 4821,1 --Alien Egg
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
    >>Collect |cRXP_LOOT_[Secret Note #1]|r from |cRXP_PICK_Pitted Iron Chest|r, |cRXP_PICK_Document Chest|r. Collect |cRXP_LOOT_[Secret Note #2]|r from |cRXP_PICK_Pitted Iron Chest|r, |cRXP_PICK_Document Chest|r. Collect |cRXP_LOOT_[Secret Note #3]|r from |cRXP_PICK_Pitted Iron Chest|r, |cRXP_PICK_Document Chest|r
    *Locate and retrieve the three Secret Notes in Darkcloud Pinnacle.
    .complete 5064,1 --Grimtotem Spying
    .complete 5064,2 --Grimtotem Spying
    .complete 5064,3 --Grimtotem Spying
step
    .goto 1441,26.49,52.26
    >>Kill |cRXP_ENEMY_Screeching Harpy|r. Kill |cRXP_ENEMY_Screeching Roguefeather|r. Kill |cRXP_ENEMY_Screeching Windcaller|r
    *Slay 5 Screeching Harpies, 5 Screeching Roguefeather Harpies and 5 Screeching Windcaller Harpies.
    .complete 98070,1 --Stop the Screeching
    .complete 98070,2 --Stop the Screeching
    .complete 98070,3 --Stop the Screeching
    .mob Screeching Harpy
    .mob Screeching Roguefeather
    .mob Screeching Windcaller
step
    .goto 1441,46.21,51.51
    >>Talk to |cRXP_FRIENDLY_Jandia|r
    .turnin 98070 >>Turn in Stop the Screeching
    .target Jandia
step
    .goto 1441,45.67,50.74
    >>Talk to |cRXP_FRIENDLY_Cliffwatcher Longhorn|r
    .turnin 5064 >>Turn in Grimtotem Spying
    .target Cliffwatcher Longhorn
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
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 20-29
#name 29-30 City of Dalaran
#displayname 29-30 City of Dalaran
#next 30-31 Gnomeregan
step
    +|cRXP_WARN_City of Dalaran|r (levels 28-33). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *New Forever dungeon. KEY NEEDED: one player with the Dalaran Sewer Key opens it for the group; the key chain is in this guide. Enter through the sewers on the Silverpine side of Lordamere Lake.
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
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
    .goto 1416,17.6,61.8
    >>Collect |cRXP_LOOT_[Cracked Sentry Core]|r from |cRXP_ENEMY_Unstable Sentinel|r, |cRXP_ENEMY_Fragmented Sentry|r
    *Collect 6 Cracked Sentry Cores in the City of Dalaran for Doctor Martin Felben in Undercity.
    .complete 96988,1 --Source of Power
    .mob Unstable Sentinel
    .mob Fragmented Sentry
step
    #completewith next
    +|cRXP_WARN_Run the dungeon|r
step
    .goto 1421,69.3,45.6
    >>Inside City of Dalaran: these quests start from a drop or an object in the dungeon
    .accept 96987 >>Accept Opportunistic Education
step
    .goto 1421,69.3,45.6
    >>Enter |cRXP_WARN_City of Dalaran|r and run it with a group. Quest goals inside:
    *Key to the City: Acquire the Dalaran Sewer Key for Magus Wordeen Voidglare in Tarren Mill.
    *The Grave Knight: Defeat Atrexis the Grave Knight in the City of Dalaran for Melisara in Tarren Mill.
    *Opportunistic Education: Collect the Founding of Dalaran from the City of Dalaran for Rexxie Copperclutch near the sewer entrance.
    .complete 93680,1 --Key to the City
    .complete 96986,1 --The Grave Knight
    .complete 96987,1 --Opportunistic Education
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
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1424,61.6,20.85
    >>Talk to |cRXP_FRIENDLY_Magus Wordeen Voidglare|r
    .accept 545 >>Accept Dalaran Patrols
    .target Magus Wordeen Voidglare
step
    .goto 1416,15.92,75.52
    >>Kill |cRXP_ENEMY_Dalaran Summoner|r
    *Kill 6 Dalaran Summoners and 12 Elemental Slaves, then return to Magus Voidglare in Tarren Mill.
    .complete 545,1 --Dalaran Patrols
    .mob Dalaran Summoner
step
    .goto 1416,22.41,58.63
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
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1424,61.6,20.85
    >>Talk to |cRXP_FRIENDLY_Magus Wordeen Voidglare|r
    .accept 92434 >>Accept Blood in the Streets
    .target Magus Wordeen Voidglare
step
    .goto 1421,69.15,45.21
    >>Find a way into Dalaran along the Lordamere Lake
    *Find a way into Dalaran along the Lordamere Lake.
    .complete 92434,1 --Blood in the Streets
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1421,68.6,45.1
    >>Talk to |cRXP_FRIENDLY_Image of Archmage Modera|r
    .turnin 92434 >>Turn in Blood in the Streets
    .target Image of Archmage Modera
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1421,68.6,45.1
    >>Talk to |cRXP_FRIENDLY_Image of Archmage Modera|r
    .accept 96984 >>Accept Heart of Disruption
    .target Image of Archmage Modera
step
    .goto 1416,15.2,55.9
    >>Collect |cRXP_LOOT_[Arcane Mote]|r from |cRXP_ENEMY_Shade of the Archmage|r
    *Collect the Arcane Mote in the City of Dalaran for Magus Wordeen Voidglare in Tarren Mill.
    .complete 96984,1 --Heart of Disruption
    .mob Shade of the Archmage
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
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 30-39
#name 30-31 Gnomeregan
#displayname 30-31 Gnomeregan
#next 31-31 Razorfen Kraul
step
    +|cRXP_WARN_Gnomeregan|r (levels 29-38). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
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
    +|cRXP_WARN_Run the dungeon|r
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
    >>Enter |cRXP_WARN_Gnomeregan|r and run it with a group. Quest goals inside:
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
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1434,27.6,77.48
    >>Talk to |cRXP_FRIENDLY_Scooty|r
    .accept 2843 >>Accept Gnomer-gooooone!
    .target Scooty
step
    #completewith next
    +|cRXP_WARN_Run the dungeon (run 2)|r
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
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 30-39
#name 31-31 Razorfen Kraul
#displayname 31-31 Razorfen Kraul
#next 31-32 Scarlet Monastery
step
    +|cRXP_WARN_Razorfen Kraul|r (levels 29-38). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
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
    +|cRXP_WARN_Run the dungeon|r
step
    .goto 1413,42.9,90.2
    >>Inside Razorfen Kraul: these quests start from a drop or an object in the dungeon
    .accept 1144 >>Accept Willix the Importer
step
    .goto 1413,42.9,90.2
    >>Enter |cRXP_WARN_Razorfen Kraul|r and run it with a group. Quest goals inside:
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
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 30-39
#name 31-32 Scarlet Monastery
#displayname 31-32 Scarlet Monastery
#next 32-33 Arathi Highlands
step
    +|cRXP_WARN_Scarlet Monastery|r (levels 30-46). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *Four wings: Graveyard 30-38, Library 33-41, Armory 36-44, Cathedral 38-46.
    *Pre-quests in this guide: Going, Going, Guano!, Test of Faith, Test of Endurance, Test of Strength, Test of Lore, Test of Lore, Test of Lore, Test of Lore
step
    #completewith next
    +|cRXP_WARN_Pre-quests|r
step
    .goto 1441,53.95,41.49
    >>Talk to |cRXP_FRIENDLY_Dorn Plainstalker|r
    .accept 1149 >>Accept Test of Faith
    .target Dorn Plainstalker
step
    .goto 1441,26.43,32.93
    >>If you have faith, leap from the planks overlooking Thousand Needles.
    *If you have faith, leap from the planks overlooking Thousand Needles.
    .complete 1149,1 --Test of Faith
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
    .goto 1441,53.95,41.49
    >>Talk to |cRXP_FRIENDLY_Dorn Plainstalker|r
    .turnin 1151 >>Turn in Test of Strength
    .accept 1152 >>Accept Test of Lore
    .target Dorn Plainstalker
step
    .goto 1442,78.8,45.69
    >>Talk to |cRXP_FRIENDLY_Braug Dimspirit|r
    .turnin 1152 >>Turn in Test of Lore
    .accept 1154 >>Accept Test of Lore
    .target Braug Dimspirit
step
    .goto 1458,48.82,69.28
    >>Talk to |cRXP_FRIENDLY_Master Apothecary Faranell|r
    .accept 1109 >>Accept Going, Going, Guano!
    .target Master Apothecary Faranell
step
    >>Collect |cRXP_LOOT_[Kraul Guano]|r from |cRXP_ENEMY_Blind Hunter|r, |cRXP_ENEMY_Greater Kraul Bat|r
    *Bring 1 pile of Kraul Guano to Master Apothecary Faranell in the Undercity.
    .complete 1109,1 --Going, Going, Guano!
    .mob Blind Hunter
    .mob Greater Kraul Bat
step
    .goto 1458,48.82,69.28
    >>Talk to |cRXP_FRIENDLY_Master Apothecary Faranell|r
    .turnin 1109 >>Turn in Going, Going, Guano!
    .target Master Apothecary Faranell
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
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1458,57.8,65.42
    >>Talk to |cRXP_FRIENDLY_Parqual Fintallas|r
    .accept 1160 >>Accept Test of Lore
    .target Parqual Fintallas
step
    .goto 1458,48.82,69.28
    >>Talk to |cRXP_FRIENDLY_Master Apothecary Faranell|r
    .accept 1113 >>Accept Hearts of Zeal
    .target Master Apothecary Faranell
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
    .goto 1420,81.36,33.72
    >>Collect |cRXP_LOOT_[Heart of Zeal]|r from |cRXP_ENEMY_Abominable Snowman|r, |cRXP_ENEMY_Herod|r, |cRXP_ENEMY_Arcanist Doan|r
    *Master Apothecary Faranell in the Undercity wants 20 Hearts of Zeal.
    .complete 1113,1 --Hearts of Zeal
    .mob Abominable Snowman
    .mob Herod
step
    #completewith next
    +|cRXP_WARN_Run the dungeon|r
step
    .goto 1420,82.6,33.8
    >>Inside Scarlet Monastery: these quests start from a drop or an object in the dungeon
    .accept 1051 >>Accept Vorrel's Revenge
step
    .goto 1420,82.6,33.8
    >>Enter |cRXP_WARN_Scarlet Monastery|r and run it with a group. Quest goals inside:
    *Into The Scarlet Monastery: Kill High Inquisitor Whitemane, Scarlet Commander Mograine, Herod, the Scarlet Champion and Houndmaster Loksey and then report back to Varimathras in the Undercity.
    *Compendium of the Fallen: Retrieve the Compendium of the Fallen from the Monastery in Tirisfal Glades and return to Sage Truthseeker in Thunder Bluff.
    *Test of Lore: Find The Beginnings of the Undead Threat, and return it to Parqual Fintallas in Undercity.
    .complete 1048,1 --Into The Scarlet Monastery
    .complete 1048,2 --Into The Scarlet Monastery
    .complete 1048,3 --Into The Scarlet Monastery
    .complete 1048,4 --Into The Scarlet Monastery
    .complete 1049,1 << Orc/Tauren/Troll --Compendium of the Fallen
    .complete 1160,1 --Test of Lore
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
    .goto 1458,56.25,92.2
    >>Talk to |cRXP_FRIENDLY_Varimathras|r
    .turnin 1048 >>Turn in Into The Scarlet Monastery
    .target Varimathras
step
    .goto 1458,48.82,69.28
    >>Talk to |cRXP_FRIENDLY_Master Apothecary Faranell|r
    .turnin 1113 >>Turn in Hearts of Zeal
    .target Master Apothecary Faranell
step
    .goto 1458,57.8,65.42
    >>Talk to |cRXP_FRIENDLY_Parqual Fintallas|r
    .turnin 1160 >>Turn in Test of Lore
    .target Parqual Fintallas
step
    .goto 1456,34.4,46.87
    >>Talk to |cRXP_FRIENDLY_Sage Truthseeker|r
    .turnin 1049 >>Turn in Compendium of the Fallen << Orc/Tauren/Troll
    .target Sage Truthseeker
step
    .goto 1424,62.67,18.88
    >>Talk to |cRXP_FRIENDLY_Monika Sengutz|r
    .turnin 1051 >>Turn in Vorrel's Revenge
    .target Monika Sengutz
step
    .goto 1420,82.6,33.8
    +Dungeon entrance: Scarlet Monastery. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 30-39
#name 32-33 Arathi Highlands
#displayname 32-33 Arathi Highlands
#next 33-33 Stonetalon/Ashenvale
step
    .zone 1417 >>Travel to Arathi Highlands
    *Suggested level for this part: 32-33
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
    >>Collect |cRXP_LOOT_[Packaged Tonics]|r
    *Pick up a case of Packaged Tonics at Jorell's lab in Go'shek Farm and return to Doctor Gregory Victor in Hammerfall.
    .complete 92519,1 --Ward Restocking
step
    .goto 1417,73.41,36.89
    >>Talk to |cRXP_FRIENDLY_Doctor Gregory Victor|r
    .turnin 92519 >>Turn in Ward Restocking
    .target Doctor Gregory Victor
step
    .goto 1417,43.08,39.21
    >>Collect |cRXP_LOOT_[Highland Raptor Eye]|r from |cRXP_ENEMY_Highland Strider|r, |cRXP_ENEMY_Highland Thrasher|r
    *Acquire 10 Highland Raptor Eyes from Highland Striders and Highland Thrashers for Tor'gan in Hammerfall.
    .complete 672,1 --Raising Spirits
    .mob Highland Strider
    .mob Highland Thrasher
step
    .goto 1417,15.29,40.78
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
    .target Tor'gan
step
    .goto 1417,67.88,76.87
    >>Loot |cRXP_LOOT_[Goliath's Wristguards]|r from |cRXP_ENEMY_Witherbark Goliath|r, then click it to start the quest
    .accept 92707 >>Accept The Giant in the Den
    .use 253711
    .mob Witherbark Goliath
step
    .goto 1417,67.88,76.87
    >>Collect |cRXP_LOOT_[Goliath's Wristguards]|r from |cRXP_ENEMY_Witherbark Goliath|r
    *Bring the Goliath's Wristguards to Drum Fel in Hammerfall.
    .complete 92707,1 --The Giant in the Den
    .mob Witherbark Goliath
step
    .goto 1417,74.24,33.92
    >>Talk to |cRXP_FRIENDLY_Drum Fel|r
    .turnin 92707 >>Turn in The Giant in the Den
    .target Drum Fel
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
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 30-39
#name 33-33 Stonetalon/Ashenvale
#displayname 33-33 Stonetalon/Ashenvale
#next 33-34 Desolace
step
    .zone 1442 >>Travel to Stonetalon
    *Suggested level for this part: 33-33
step
    .goto 1442,45.94,60.42
    >>Talk to |cRXP_FRIENDLY_Braelyn Firehand|r
    .accept 1088 >>Accept Ordanus
    .target Braelyn Firehand
step
    .goto 1442,47.2,61.16
    >>Talk to |cRXP_FRIENDLY_Maggran Earthbinder|r
    .accept 5881 >>Accept Calling in the Reserves
    .target Maggran Earthbinder
step
    .goto 1442,39.62,49.82
    >>Click the |cRXP_PICK_Mound of Dirt|r
    .accept 79974 >>Accept Wet Job
step
    .goto 1441,31.86,21.66
    >>Talk to |cRXP_FRIENDLY_Grish Longrunner|r
    .turnin 5881 >>Turn in Calling in the Reserves
    .target Grish Longrunner
step
    .goto 1432,49.43,12.92
    >>Click the |cRXP_PICK_Carved Figurine|r
    .turnin 79974 >>Turn in Wet Job
step
    .goto 1413,46.65,8.38
    >>Talk to |cRXP_FRIENDLY_Kelm Hargunth|r
    .accept 7866 >>Accept Outrider Basic Care Package
    .target Kelm Hargunth
step
    .goto 1413,46.65,8.38
    >>Talk to |cRXP_FRIENDLY_Kelm Hargunth|r
    .turnin 7866 >>Turn in Outrider Basic Care Package
    .target Kelm Hargunth
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
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 30-39
#name 33-34 Desolace
#displayname 33-34 Desolace
#next 34-35 Stranglethorn Vale
step
    .zone 1443 >>Travel to Desolace
    *Suggested level for this part: 33-34
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
    .goto 1443,67.3,78.64
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
    .goto 1434,35.66,10.81
    >>Talk to |cRXP_FRIENDLY_Hemet Nesingwary|r
    .turnin 5763 >>Turn in Hunting in Stranglethorn
    .target Hemet Nesingwary
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
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 30-39
#name 34-35 Stranglethorn Vale
#displayname 34-35 Stranglethorn Vale
#next 35-37 Dustwallow Marsh/Swamp of Sorrows
step
    .zone 1434 >>Travel to Stranglethorn Vale
    *Suggested level for this part: 34-35
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
    .target Kin'weelay
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
    .goto 1434,32.21,28.13
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
    .goto 1434,31.5,12.86
    >>Click the |cRXP_PICK_Thoroughly Scavenged Supplies|r
    .accept 97328 >>Accept Anything of Value
step
    .goto 1434,31.5,12.86
    >>Collect |cRXP_LOOT_[Bloodscalp Tusk]|r from |cRXP_ENEMY_Bloodscalp Warrior|r, |cRXP_ENEMY_Bloodscalp Scout|r, |cRXP_ENEMY_Bloodscalp Hunter|r. Collect |cRXP_LOOT_[Bloody Bone Necklace]|r from |cRXP_ENEMY_Bloodscalp Warrior|r, |cRXP_ENEMY_Bloodscalp Scout|r, |cRXP_ENEMY_Bloodscalp Hunter|r. Collect |cRXP_LOOT_[Stolen Shipment]|r
    *Bring 9 Bloodscalp Tusks to Nimboya at the Grom'gol Base Camp.
    *Bring 25 Bloody Bone Necklaces to Kin'weelay at the Grom'gol Base Camp.
    *Recover 8 Stolen Shipments from the Ruins of Zul'Kunda in Stranglethorn Vale and return your haul to someone in Booty Bay.
    .complete 581,1 --Hunt for Yenniku
    .complete 596,1 --Bloody Bone Necklaces
    .complete 97328,1 --Anything of Value
    .mob Bloodscalp Warrior
    .mob Bloodscalp Scout
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
    .goto 1434,26.94,77.21
    >>Talk to |cRXP_FRIENDLY_Krazek|r
    .accept 201 >>Accept Investigate the Camp
    .target Krazek
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
    >>Locate the hunters' camp. Collect |cRXP_LOOT_[Large River Crocolisk Skin]|r from |cRXP_ENEMY_River Crocolisk|r
    *Find the hunters' camp and report its location to Krazek in Booty Bay.
    *Bring 2 Large River Crocolisk Skins to Drizzlik in Booty Bay.
    .complete 201,1 --Investigate the Camp
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
    .goto 1434,26.94,77.21
    >>Talk to |cRXP_FRIENDLY_Krazek|r
    .turnin 201 >>Turn in Investigate the Camp
    .target Krazek
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
step
    .goto 2548,59.37,45.6
    >>Talk to |cRXP_FRIENDLY_Krom'rosh|r
    .turnin 95141 >>Turn in Report to Rog'mar
    .target Krom'rosh
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 30-39
#name 35-37 Dustwallow Marsh/Swamp of Sorrows
#displayname 35-37 Dustwallow Marsh/Swamp of Sorrows
#next 37-37 The Drowned City
step
    .zone 1445 >>Travel to Dustwallow Marsh
    *Suggested level for this part: 35-37
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
    .target Tok'Kar
step
    .goto 1418,6.49,47.2
    >>Talk to |cRXP_FRIENDLY_Neeka Bloodscar|r
    .turnin 1418 >>Turn in Neeka Bloodscar
    .target Neeka Bloodscar
step
    .goto 1443,38.88,27.16
    >>Talk to |cRXP_FRIENDLY_Azore Aldamort|r
    .turnin 93464 >>Turn in The Visiting Mage
    .target Azore Aldamort
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
step
    .goto 1434,43.15,22.49
    >>Collect |cRXP_LOOT_[Arbor Tarantula Specimen]|r from |cRXP_ENEMY_Arbor Tarantula|r
    *Use the items contained in the Entomology Starter Kit to find and catch an Arbor Tarantula, Hay Weevil Specimen, and a Flesh Picker.
    .complete 93176,1 --My Little Friends
    .mob Arbor Tarantula
step
    .goto 1417,53.86,39.71
    >>Collect |cRXP_LOOT_[Hay Weevil Specimen]|r from |cRXP_ENEMY_Hay Weevil|r
    *Use the items contained in the Entomology Starter Kit to find and catch an Arbor Tarantula, Hay Weevil Specimen, and a Flesh Picker.
    .complete 93176,2 --My Little Friends
    .mob Hay Weevil
step
    .goto 1443,51.01,60.41
    >>Collect |cRXP_LOOT_[Flesh Picker Specimen]|r from |cRXP_ENEMY_Flesh Picker|r
    *Use the items contained in the Entomology Starter Kit to find and catch an Arbor Tarantula, Hay Weevil Specimen, and a Flesh Picker.
    .complete 93176,3 --My Little Friends
    .mob Flesh Picker
step
    .goto 1435,25.16,54.03
    >>Talk to |cRXP_FRIENDLY_Amaryllis Webb|r
    .turnin 93176 >>Turn in My Little Friends
    .target Amaryllis Webb
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 30-39
#name 37-37 The Drowned City
#displayname 37-37 The Drowned City
#next 37-40 Riverglades
step
    +|cRXP_WARN_The Drowned City|r (levels 35-40). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *New Forever dungeon, underwater off the west coast of Stranglethorn, west of Grom'gol. Bring water breathing. Nearest flights: Booty Bay, Grom'gol.
    *Pre-quests in this guide: The Vile Reef, The Gurubashi Legends of Old, Locating the Lost City, Enemies in the Water
step
    #completewith next
    +|cRXP_WARN_Pre-quests|r
step
    .goto 1434,32.27,27.71
    >>Talk to |cRXP_FRIENDLY_Kin'weelay|r
    .accept 629 >>Accept The Vile Reef
    .target Kin'weelay
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
    .goto 1434,22.95,12.02
    >>Collect |cRXP_LOOT_[The Third Troll Legend]|r from |cRXP_PICK_Fall of Gurubashi|r
    *Use the hide and charcoal to create a rubbing of the Third Troll Legend tablet.
    .complete 95748,1 --The Gurubashi Legends of Old
step
    .goto 1434,32.27,27.71
    >>Talk to |cRXP_FRIENDLY_Kin'weelay|r
    .turnin 95748 >>Turn in The Gurubashi Legends of Old
    .target Kin'weelay
step
    .goto 1434,32.17,28.9
    >>Talk to |cRXP_FRIENDLY_Commander Aggro'gosh|r
    .accept 95773 >>Accept Enemies in the Water
    .target Commander Aggro'gosh
step
    .goto 1434,32.27,27.71
    >>Talk to |cRXP_FRIENDLY_Kin'weelay|r
    .accept 95770 >>Accept Locating the Lost City
    .target Kin'weelay
step
    .goto 1434,22.85,25.84
    >>Collect |cRXP_LOOT_[Brinescale Trident]|r from |cRXP_ENEMY_Brinescale Skirmisher|r. Find the Drowned City Entrance
    *Gather 10 Brinescale Tridents from Brinescale Skirmishers.
    *Explore the Vile Reef and find the cavern entrance.
    .complete 95773,1 --Enemies in the Water
    .complete 95770,1 --Locating the Lost City
    .mob Brinescale Skirmisher
step
    .goto 1434,32.17,28.9
    >>Talk to |cRXP_FRIENDLY_Commander Aggro'gosh|r
    .turnin 95773 >>Turn in Enemies in the Water
    .target Commander Aggro'gosh
step
    .goto 1434,32.27,27.71
    >>Talk to |cRXP_FRIENDLY_Kin'weelay|r
    .turnin 95770 >>Turn in Locating the Lost City
    .target Kin'weelay
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
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
    +|cRXP_WARN_Run the dungeon|r
step
    .goto 1434,21.4,27.9
    >>Enter |cRXP_WARN_The Drowned City|r and run it with a group. Quest goals inside:
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
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 30-39
#name 37-40 Riverglades
#displayname 37-40 Riverglades
#next 40-41 Razorfen Downs
step
    .zone 2548 >>Travel to Riverglades
    *Suggested level for this part: 37-40
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
    .target Kreza Darkthorn
step
    .goto 2548,59.46,47.03
    >>Click the |cRXP_PICK_WANTED!|r
    .accept 95992 >>Accept WANTED: Ghostmaw
step
    >>Collect |cRXP_LOOT_[Makeshift Stickin' Spear]|r. Collect |cRXP_LOOT_[Feed Satchel]|r
    *Collect Wood Bundles from Peasant Woodpiles in Turner's Logging Camp then fletch them into 20 Makeshift Stickin' Spears.
    *Steal 6 Feed Satchels from the Alliance farm in Meadowsbrook then return to Krom'rosh.
    .complete 95951,1 --Fetch 'n' Fletch
    .complete 93787,1 --Food for the Taking
step
    .goto 2548,58.13,45.32
    >>Talk to |cRXP_FRIENDLY_Tan'jani|r
    .turnin 95951 >>Turn in Fetch 'n' Fletch
    .target Tan'jani
step
    .goto 2548,59.37,45.6
    >>Talk to |cRXP_FRIENDLY_Krom'rosh|r
    .turnin 93787 >>Turn in Food for the Taking
    .accept 94480 >>Accept A Gift From Our Enemies
    .target Krom'rosh
step
    .goto 2548,58.13,45.32
    >>Talk to |cRXP_FRIENDLY_Tan'jani|r
    .accept 95955 >>Accept Stick 'Em
    .target Tan'jani
step
    .goto 2548,58.65,44.57
    >>Talk to |cRXP_FRIENDLY_Gorg|r
    .turnin 94480 >>Turn in A Gift From Our Enemies
    .accept 94481 >>Accept A Serving of Strength
    .target Gorg
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
    .goto 2548,79.45,52.71
    >>Talk to |cRXP_FRIENDLY_Wharfmaster Whizzbuzz|r
    .accept 95118 >>Accept Saltwater Savages
    .accept 95119 >>Accept Unfriendly Competition
    .target Wharfmaster Whizzbuzz
step
    .goto 2548,78.48,53.94
    >>Click the |cRXP_PICK_WANTED!|r
    .accept 95120 >>Accept WANTED: Old Rot-Chum
    .accept 95254 >>Accept WANTED: Trapclaw
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
    .goto 2548,61.65,58.82
    >>Talk to |cRXP_FRIENDLY_Picked Carcass|r
    .accept 96103 >>Accept A Feast for Buzzards
    .target Picked Carcass
step
    .goto 2548,56.45,58.41
    >>Collect |cRXP_LOOT_[Plains Buzzard Feather]|r from |cRXP_ENEMY_Low Plains Buzzard|r
    *Bring 6 Plains Buzzard Feathers to Neza Bloodsnout at Rog'mar.
    .complete 96107,1 --Feathers for Fletching
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
    .goto 2548,58.62,37.23
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
    .goto 2548,47.31,51.41
    >>Talk to |cRXP_FRIENDLY_Fuzzle|r
    .accept 94961 >>Accept Biting the Hand
    .target Fuzzle
step
    .goto 2548,46.88,48.27
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
    .goto 2548,39.63,62.79
    >>Collect |cRXP_LOOT_[Woodworker's Axe]|r from |cRXP_ENEMY_Turner's Mill Lumberjack|r. Collect |cRXP_LOOT_[Ghostmaw's Fang]|r from |cRXP_ENEMY_Ghostmaw|r. Kill |cRXP_ENEMY_Freshwater Crocolisk|r
    *Retrieve 10 Woodworker's Axe from the lumberjacks at Turner's Logging Camp for Kreza Darkthorn in Rog'mar.
    *Bring Ghostmaw's Fang to Tan'jani in Rog'mar.
    *Impale 10 Freshwater Crocolisks then return to Tran'jani in Rog'mar.
    .complete 93788,1 --Borrowed Blades
    .complete 95992,1 --WANTED: Ghostmaw
    .complete 95955,1 --Stick 'Em
    .mob Turner's Mill Lumberjack
    .mob Ghostmaw
    .mob Freshwater Crocolisk
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
    .goto 2548,44.75,81.52
    >>Kill |cRXP_ENEMY_Meadowsbrook Farmhand|r
    *Slay 12 Meadowsbrook Farmhands, then return to Krom'rosh with news of your success.
    .complete 93786,1 --A Message in Blood
    .mob Meadowsbrook Farmhand
step
    .goto 2548,57.4,58.64
    >>Collect |cRXP_LOOT_[Intact Tallstrider Beak]|r from |cRXP_ENEMY_Roving Tallstrider|r. Collect |cRXP_LOOT_[Glade Viper Venom]|r from |cRXP_ENEMY_Glade Viper|r
    *Bring an Intact Tallstrider Beak to Neza Bloodsnout at Rog'mar.
    *Bring 4 samples of Glade Viper Venom to Neza Bloodsnout at Rog'mar.
    .complete 96104,1 --Song of the Strider
    .complete 96108,1 --Poison Tips
    .mob Roving Tallstrider
    .mob Glade Viper
step
    .goto 2548,59.92,45.97
    >>Talk to |cRXP_FRIENDLY_Kreza Darkthorn|r
    .turnin 93788 >>Turn in Borrowed Blades
    .target Kreza Darkthorn
step
    .goto 2548,60.46,47.86
    >>Talk to |cRXP_FRIENDLY_Neza Bloodsnout|r
    .turnin 96104 >>Turn in Song of the Strider
    .turnin 96108 >>Turn in Poison Tips
    .target Neza Bloodsnout
step
    .goto 2548,59.92,45.97
    >>Talk to |cRXP_FRIENDLY_Kreza Darkthorn|r
    .accept 93976 >>Accept The Goblin Trader
    .target Kreza Darkthorn
step
    .goto 2548,60.46,47.86
    >>Talk to |cRXP_FRIENDLY_Neza Bloodsnout|r
    .accept 96105 >>Accept King of the Wild Plains
    .accept 96109 >>Accept A Hunter's Quiver
    .target Neza Bloodsnout
step
    .goto 2548,59.37,45.6
    >>Talk to |cRXP_FRIENDLY_Krom'rosh|r
    .turnin 93786 >>Turn in A Message in Blood
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
    .accept 94483 >>Accept Show Them How It's Done
    .target Krom'rosh
step
    .goto 2548,58.92,51.93
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
    .goto 2548,77.1,52.9
    >>Talk to |cRXP_FRIENDLY_Friz Frazzlespark|r
    .turnin 93976 >>Turn in The Goblin Trader
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
    .goto 2548,77.1,52.9
    >>Talk to |cRXP_FRIENDLY_Friz Frazzlespark|r
    .turnin 95294 >>Turn in Smuggler's Bargain
    .accept 95295 >>Accept I Know a Guy
    .target Friz Frazzlespark
step
    .goto 2548,70.65,70.13
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
    .goto 2548,61.64,76.85
    >>Collect |cRXP_LOOT_[Sand Crawler Meat]|r from |cRXP_ENEMY_Sand Crawler|r, |cRXP_ENEMY_Shore Crawler|r
    *Gather 12 Murloc Eyes and 6 pieces of Sand Crawler Meat for Fimbo Greasemitz.
    .complete 95121,2 --A Taste of the Sea
    .mob Sand Crawler
    .mob Shore Crawler
step
    .goto 2548,47.61,67.55
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
    .goto 2548,46.88,48.27
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
    .goto 2548,47.31,50.02
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
    .goto 2548,72.89,32.66
    >>Collect |cRXP_LOOT_[Scoutmaster's Eye]|r from |cRXP_ENEMY_Scoutmaster Vargas|r, |cRXP_ENEMY_Scout Reynolds|r
    *Bring the Scoutmaster's Eye to Neza Bloodsnout in Rog'mar.
    .complete 95882,1 --WANTED: Scoutmaster Vargas
    .mob Scoutmaster Vargas
    .mob Scout Reynolds
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
    .goto 2548,25.05,60.93
    >>Kill |cRXP_ENEMY_Redridge Mystic|r. Kill |cRXP_ENEMY_Redridge Trapper|r. Collect |cRXP_LOOT_[Stolen Ore]|r from |cRXP_ENEMY_Redridge Brute|r, |cRXP_ENEMY_Redridge Mystic|r, |cRXP_ENEMY_Redridge Trapper|r. Kill |cRXP_ENEMY_Young Paletusk|r
    *Kill 8 Redridge Mystics, 8 Redridge Trappers, and 6 Redridge Brutes for Neza Bloodsnout at Rog'mar.
    *Gather 40 Stolen Ore from gnolls in the Bristle Hills for Kreza Darkthorn.
    *Return 10 Young Paletusks to Na'zok's farm near Bolder'ok.
    .complete 94532,1 --Gnoll Infestation
    .complete 94532,2 --Gnoll Infestation
    .complete 94535,1 --Bristle Hills Bandits
    .complete 95163,1 --Drive Them Back
    .mob Redridge Mystic
    .mob Redridge Trapper
    .mob Redridge Brute
    .mob Young Paletusk
step
    .goto 2548,20.68,68.92
    >>Kill |cRXP_ENEMY_Redridge Brute|r. Collect |cRXP_LOOT_[Snargl's Snout]|r from |cRXP_ENEMY_Snargl|r
    *Kill 8 Redridge Mystics, 8 Redridge Trappers, and 6 Redridge Brutes for Neza Bloodsnout at Rog'mar.
    *Locate Snargl in the Bristle Hills, kill him, and retrieve his snout for Neza Bloodsnout.
    .complete 94532,3 --Gnoll Infestation
    .complete 94533,1 --Snargl's Snout
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
    .goto 2548,70.73,28.09
    >>Talk to |cRXP_FRIENDLY_Na'zok|r
    .turnin 95163 >>Turn in Drive Them Back
    .target Na'zok
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
    .goto 2548,46.9,49.9
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
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 40-49
#name 40-41 Razorfen Downs
#displayname 40-41 Razorfen Downs
#next 41-41 Krol'dok Stronghold
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
    #completewith next
    +|cRXP_WARN_Run the dungeon|r
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
    >>Enter |cRXP_WARN_Razorfen Downs|r and run it with a group. Quest goals inside:
    *Bring the End: Andrew Brownell wants you to kill Amnennar the Coldbringer and return his skull.
    *Agamaggan's Blood: Venture to Razorfen Downs and acquire Virulent Blood of Agamaggan, then return it to Kog'thug the Brave at Bristleback Retreat in the Desolace. Kog'thug felt it worth reminding that the Blood of Agamaggan inside Razorfen Kraul would not be sufficient.
    *The Coldbringer's Eye: Recover The Coldbringer's Eye from Razorfen Downs.
    .complete 3341,1 --Bring the End
    .complete 93604,1 --Agamaggan's Blood
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
    +|cRXP_WARN_Pick up the dungeon quests|r
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
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 40-49
#name 41-41 Krol'dok Stronghold
#displayname 41-41 Krol'dok Stronghold
#next 41-43 Shen'dralas/Desolace
step
    +|cRXP_WARN_Krol'dok Stronghold|r (levels 40-45). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *New Forever dungeon in the Riverglades, on the hill over Sunnyglade next to the closed main gates.
    *Pre-quests in this guide: The Wayward Warrior, Carving a Path, Break Their Chains, Bring Me His Head, It Is Time, Brother..., Spread the Word, Land of Giants, Might Makes Right, Unworthy Champion, Twilight No More!, Clugfist's Decree
step
    #completewith next
    +|cRXP_WARN_Pre-quests|r
step
    .goto 2548,49.95,46.99
    >>Talk to |cRXP_FRIENDLY_Clubtoe|r
    .accept 95427 >>Accept Twilight No More!
    .target Clubtoe
step
    .goto 2548,45.01,51.17
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
    .goto 2548,75.33,30.99
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
    .goto 2548,29.12,42.5
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
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
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
    +|cRXP_WARN_Run the dungeon|r
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
    >>Enter |cRXP_WARN_Krol'dok Stronghold|r and run it with a group. Quest goals inside:
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
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 40-49
#name 41-43 Shen'dralas/Desolace
#displayname 41-43 Shen'dralas/Desolace
#next 43-44 Uldaman
step
    .zone 2652 >>Travel to Shen'dralas
    *Suggested level for this part: 41-43
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
    .goto 1443,23.43,72.61
    >>Click the |cRXP_PICK_Lost Shipping Crate|r
    .accept 94895 >>Accept Lost Shipping Crate
step
    .goto 1443,36.22,79.25
    >>Talk to |cRXP_FRIENDLY_Uthek the Wise|r
    .accept 1380 >>Accept Khan Hratha
    .accept 93034 >>Accept Valley of Bones
    .accept 93045 >>Accept Test Your Theory
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
    .goto 1443,47.53,54.61
    >>Click the |cRXP_PICK_Extinguished Campfire|r
    .accept 79229 >>Accept Highway Robbery
step
    .goto 1443,56.29,59.68
    >>Talk to |cRXP_FRIENDLY_Gurda Wildmane|r
    .accept 93225 >>Accept Carved Centaur Totems
    .target Gurda Wildmane
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
    .accept 92743 >>Accept A Conqueror's Crown
    .accept 1381 >>Accept Khan Hratha
    .target Warug
step
    .goto 1443,74.97,68.16
    >>Talk to |cRXP_FRIENDLY_Warug|r
    .turnin 92743 >>Turn in A Conqueror's Crown
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
    .goto 1443,71.54,45.46
    >>Collect |cRXP_LOOT_[Carved Centaur Totem]|r from |cRXP_ENEMY_Kolkar Centaur|r, |cRXP_ENEMY_Kolkar Scout|r, |cRXP_ENEMY_Kolkar Mauler|r
    *Acquire 5 Carved Centaur Totems by slaying centaur of any clan throughout Desolace, then return them to Gurda Wildmane at Ghost Walker Post.
    .complete 93225,1 --Carved Centaur Totems
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
    .goto 1443,56.29,59.68
    >>Talk to |cRXP_FRIENDLY_Gurda Wildmane|r
    .turnin 93225 >>Turn in Carved Centaur Totems
    .accept 94872 >>Accept Buying Friendship: Magram
    .target Gurda Wildmane
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
    .goto 1443,66.25,79.42
    >>Talk to |cRXP_FRIENDLY_Gorhak|r
    .turnin 94872 >>Turn in Buying Friendship: Magram
    .target Gorhak
step
    .goto 1443,62.33,38.99
    >>Talk to |cRXP_FRIENDLY_Bibbly F'utzbuckle|r
    .turnin 5501 >>Turn in Bone Collector
    .target Bibbly F'utzbuckle
step
    .goto 1443,38.88,27.16
    >>Talk to |cRXP_FRIENDLY_Azore Aldamort|r
    .accept 6027 >>Accept Book of the Ancients
    .accept 93465 >>Accept Notes on Draenethyst
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
    .goto 1443,79.09,76.93
    >>Collect |cRXP_LOOT_[Gimashi's Findings]|r from |cRXP_ENEMY_Gimashi|r
    *Take Gimashi's notes on Draenethyst, and bring them back to Azore Aldamort.
    .complete 93465,1 --Notes on Draenethyst
    .mob Gimashi
step
    .goto 1443,38.88,27.16
    >>Talk to |cRXP_FRIENDLY_Azore Aldamort|r
    .turnin 93465 >>Turn in Notes on Draenethyst
    .accept 93678 >>Accept Abridged Notes on Draenethyst
    .target Azore Aldamort
step
    .goto 2548,77.1,52.9
    >>Talk to |cRXP_FRIENDLY_Friz Frazzlespark|r
    .turnin 94895 >>Turn in Lost Shipping Crate
    .target Friz Frazzlespark
step
    .goto 2652,20.93,22.68
    >>Talk to |cRXP_FRIENDLY_Nerlokh|r
    .turnin 93034 >>Turn in Valley of Bones
    .turnin 93045 >>Turn in Test Your Theory
    .accept 93058 >>Accept Saving Our Own
    .accept 93062 >>Accept Bone Burying
    .accept 93035 >>Accept Ravaging Ravagers
    .accept 93037 >>Accept Outing Outcasts
    .target Nerlokh
step
    .goto 2652,20.93,22.68
    >>Talk to |cRXP_FRIENDLY_Nerlokh|r
    .turnin 93058 >>Turn in Saving Our Own
    .turnin 93062 >>Turn in Bone Burying
    .turnin 93035 >>Turn in Ravaging Ravagers
    .turnin 93037 >>Turn in Outing Outcasts
    .accept 93122 >>Accept Checking Things Out
    .accept 93041 >>Accept Facing the Truth
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
    .goto 2652,59.27,53.93
    >>Talk to |cRXP_FRIENDLY_Hagiak|r
    .turnin 93066 >>Turn in Bristleback Retreat
    .accept 93072 >>Accept Long-Term Solutions
    .accept 93129 >>Accept Threat of Starvation
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
    .goto 2652,42,79.02
    >>Investigate the Outcast Hideaway. Collect |cRXP_LOOT_[Phantasmal Blade]|r
    *Maintain your reputation with the Gelkis, and investigate centaur points of interest within Shen'dralas. Then return to Nerlokh at the entrance of Valley of Bones with your findings.
    *Take Vindael's unfinished sword and figure out a way to usher it into the spirit realm, then return the Phantasmal Blade to him at Shen'dralas.
    .complete 93122,1 --Checking Things Out
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
    .goto 2652,32.78,64.24
    >>Kill |cRXP_ENEMY_Outcast Scout|r. Kill |cRXP_ENEMY_Outcast Marauder|r
    *Maintain your reputation with the Magram clan and slay 2 Outcast Scouts, 6 Outcast Marauders, and 8 Outcast Necromancers then return to Hagiak at the Magram Front.
    .complete 93072,1 --Long-Term Solutions
    .complete 93072,2 --Long-Term Solutions
    .mob Outcast Scout
    .mob Outcast Marauder
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
    .goto 2652,20.93,22.68
    >>Talk to |cRXP_FRIENDLY_Nerlokh|r
    .turnin 93122 >>Turn in Checking Things Out
    .turnin 93125 >>Turn in Going Home
    .accept 93128 >>Accept Khan Jehn
    .target Nerlokh
step
    .goto 2652,46,78.22
    >>Talk to |cRXP_FRIENDLY_Historian Biraxas|r
    .turnin 99257 >>Turn in A Heart of Crystal
    .target Historian Biraxas
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
    .goto 1435,25.98,31.4
    >>Talk to |cRXP_FRIENDLY_Magtoor|r
    .turnin 93678 >>Turn in Abridged Notes on Draenethyst
    .target Magtoor
step
    .goto 1443,36.22,79.25
    >>Talk to |cRXP_FRIENDLY_Uthek the Wise|r
    .turnin 93041 >>Turn in Facing the Truth
    .turnin 93128 >>Turn in Khan Jehn
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
    .accept 93196 >>Accept Khan Jehn
    .target Orgrul
step
    .goto 1417,94.15,69.28
    >>Click the |cRXP_PICK_Illari's Loot Cache|r
    .turnin 79242 >>Turn in No Honor Among Thieves
step
    .goto 1443,73.83,73.89
    >>Talk to |cRXP_FRIENDLY_Khan Jehn|r
    .turnin 93196 >>Turn in Khan Jehn
    .target Khan Jehn
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 40-49
#name 43-44 Uldaman
#displayname 43-44 Uldaman
#next 44-44 Riverglades
step
    +|cRXP_WARN_Uldaman|r (levels 41-51). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *Forever: Annora inside Uldaman is the Artisan Enchanting trainer.
    *Pre-quests in this guide: Badlands Reagent Run
step
    #completewith next
    +|cRXP_WARN_Pre-quests|r
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
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
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
    +|cRXP_WARN_Run the dungeon|r
step
    .goto 1418,44.6,12.1
    >>Inside Uldaman: these quests start from a drop or an object in the dungeon
    .accept 2278 >>Accept The Platinum Discs
step
    .goto 1418,44.6,12.1
    >>Enter |cRXP_WARN_Uldaman|r and run it with a group. Quest goals inside:
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
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1454,59.49,36.57
    >>Talk to |cRXP_FRIENDLY_Dran Droffers|r
    .accept 2284 >>Accept Necklace Recovery, Take 2
    .target Dran Droffers
step
    #completewith next
    +|cRXP_WARN_Run the dungeon (run 2)|r
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
    +|cRXP_WARN_Run the dungeon (run 3)|r
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
    +|cRXP_WARN_Pick up the dungeon quests|r
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
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 40-49
#name 44-44 Riverglades
#displayname 44-44 Riverglades
#next 44-46 Stranglethorn Vale/Badlands
step
    .zone 2548 >>Travel to Riverglades
    *Suggested level for this part: 44-44
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
    .accept 95124 >>Accept Admiral Lamora
    .accept 95165 >>Accept See Ya, Scallywags!
    .target Wharfmaster Whizzbuzz
step
    .goto 2548,79.45,52.71
    >>Talk to |cRXP_FRIENDLY_Wharfmaster Whizzbuzz|r
    .turnin 95165 >>Turn in See Ya, Scallywags!
    .target Wharfmaster Whizzbuzz
step
    .goto 2548,77.98,33.88
    >>Kill |cRXP_ENEMY_Eastsea Raider|r. Kill |cRXP_ENEMY_Eastsea Bombardier|r
    *Kill 8 Eastsea Raiders and 8 Eastsea Bombardiers for Wharfmaster Whizzbuzz.
    .complete 95122,1 --Unchecked Expansion
    .complete 95122,2 --Unchecked Expansion
    .mob Eastsea Raider
    .mob Eastsea Bombardier
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
    .turnin 95122 >>Turn in Unchecked Expansion
    .turnin 95124 >>Turn in Admiral Lamora
    .target Wharfmaster Whizzbuzz
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
    .goto 2548,30.24,40.63
    >>Collect |cRXP_LOOT_[Executioner's Mace]|r from |cRXP_ENEMY_Executioner Morg|r
    *Collect the Executioner's Mace from Executioner Morg in the Twilight Shroud for Clugfist in Bolder'ok.
    .complete 95433,1 --Death to the Executioner
    .mob Executioner Morg
step
    .goto 2548,64.25,15.72
    >>Talk to |cRXP_FRIENDLY_Clugfist|r
    .turnin 95433 >>Turn in Death to the Executioner
    .target Clugfist
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 40-49
#name 44-46 Stranglethorn Vale/Badlands
#displayname 44-46 Stranglethorn Vale/Badlands
#next 46-47 Zul'Farrak
step
    .zone 1434 >>Travel to Stranglethorn Vale
    *Suggested level for this part: 44-46
step
    .goto 1434,32.16,27.72
    >>Talk to |cRXP_FRIENDLY_Nimboya|r
    .accept 584 >>Accept Bloodscalp Clan Heads
    .target Nimboya
step
    .goto 1434,32.27,27.71
    >>Talk to |cRXP_FRIENDLY_Kin'weelay|r
    .accept 96078 >>Accept A Tale Spun Around the Fire
    .accept 598 >>Accept Split Bone Necklace
    .target Kin'weelay
step
    .goto 1434,35.66,10.53
    >>Talk to |cRXP_FRIENDLY_Barnil Stonepot|r
    .accept 338 >>Accept The Green Hills of Stranglethorn
    .accept 339 >>Accept Chapter I
    .accept 340 >>Accept Chapter II
    .accept 341 >>Accept Chapter III
    .accept 342 >>Accept Chapter IV
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
    >>Collect |cRXP_LOOT_[Gan'zulah's Head]|r from |cRXP_ENEMY_Gan'zulah|r. Collect |cRXP_LOOT_[Nezzliok's Head]|r from |cRXP_ENEMY_Nezzliok the Dire|r. Collect |cRXP_LOOT_[Green Hills of Stranglethorn - Page 1]|r from |cRXP_ENEMY_Bloodscalp Warrior|r, |cRXP_ENEMY_Bloodscalp Scout|r, |cRXP_ENEMY_Bloodscalp Hunter|r. Collect |cRXP_LOOT_[Green Hills of Stranglethorn - Page 4]|r from |cRXP_ENEMY_Bloodscalp Warrior|r, |cRXP_ENEMY_Bloodscalp Scout|r, |cRXP_ENEMY_Bloodscalp Hunter|r. Collect |cRXP_LOOT_[Green Hills of Stranglethorn - Page 6]|r from |cRXP_ENEMY_Bloodscalp Warrior|r, |cRXP_ENEMY_Bloodscalp Scout|r, |cRXP_ENEMY_Bloodscalp Hunter|r. Collect |cRXP_LOOT_[Green Hills of Stranglethorn - Page 8]|r from |cRXP_ENEMY_Bloodscalp Warrior|r, |cRXP_ENEMY_Bloodscalp Scout|r, |cRXP_ENEMY_Bloodscalp Hunter|r. Collect |cRXP_LOOT_[Green Hills of Stranglethorn - Page 10]|r from |cRXP_ENEMY_Bloodscalp Warrior|r, |cRXP_ENEMY_Bloodscalp Scout|r, |cRXP_ENEMY_Bloodscalp Hunter|r. Collect |cRXP_LOOT_[Green Hills of Stranglethorn - Page 11]|r from |cRXP_ENEMY_Bloodscalp Warrior|r, |cRXP_ENEMY_Bloodscalp Scout|r, |cRXP_ENEMY_Bloodscalp Hunter|r. Collect |cRXP_LOOT_[Green Hills of Stranglethorn - Page 14]|r from |cRXP_ENEMY_Bloodscalp Warrior|r, |cRXP_ENEMY_Bloodscalp Scout|r, |cRXP_ENEMY_Bloodscalp Hunter|r. Collect |cRXP_LOOT_[Green Hills of Stranglethorn - Page 16]|r from |cRXP_ENEMY_Bloodscalp Warrior|r, |cRXP_ENEMY_Bloodscalp Scout|r, |cRXP_ENEMY_Bloodscalp Hunter|r. Collect |cRXP_LOOT_[Green Hills of Stranglethorn - Page 18]|r from |cRXP_ENEMY_Bloodscalp Warrior|r, |cRXP_ENEMY_Bloodscalp Scout|r, |cRXP_ENEMY_Bloodscalp Hunter|r. Collect |cRXP_LOOT_[Green Hills of Stranglethorn - Page 20]|r from |cRXP_ENEMY_Bloodscalp Warrior|r, |cRXP_ENEMY_Bloodscalp Scout|r, |cRXP_ENEMY_Bloodscalp Hunter|r. Collect |cRXP_LOOT_[Green Hills of Stranglethorn - Page 21]|r from |cRXP_ENEMY_Bloodscalp Warrior|r, |cRXP_ENEMY_Bloodscalp Scout|r, |cRXP_ENEMY_Bloodscalp Hunter|r. Collect |cRXP_LOOT_[Green Hills of Stranglethorn - Page 24]|r from |cRXP_ENEMY_Bloodscalp Warrior|r, |cRXP_ENEMY_Bloodscalp Scout|r, |cRXP_ENEMY_Bloodscalp Hunter|r. Collect |cRXP_LOOT_[Green Hills of Stranglethorn - Page 25]|r from |cRXP_ENEMY_Bloodscalp Warrior|r, |cRXP_ENEMY_Bloodscalp Scout|r, |cRXP_ENEMY_Bloodscalp Hunter|r. Collect |cRXP_LOOT_[Green Hills of Stranglethorn - Page 26]|r from |cRXP_ENEMY_Bloodscalp Warrior|r, |cRXP_ENEMY_Bloodscalp Scout|r, |cRXP_ENEMY_Bloodscalp Hunter|r. Collect |cRXP_LOOT_[Green Hills of Stranglethorn - Page 27]|r from |cRXP_ENEMY_Bloodscalp Warrior|r, |cRXP_ENEMY_Bloodscalp Scout|r, |cRXP_ENEMY_Bloodscalp Hunter|r
    *Bring Gan'zulah's Head and Nezzliok's Head to the bubbling cauldron at the Grom'gol Base Camp.
    *Bring pages 1, 4, 6, and 8 of Nesingwary's The Green Hills of Stranglethorn to Barnil Stonepot in order to complete Chapter I.
    *Bring pages 10, 11, 14 and 16 of Nesingwary's The Green Hills of Stranglethorn to Barnil Stonepot in order to complete Chapter II.
    *Bring pages 18, 20, 21and 24 of Nesingwary's The Green Hills of Stranglethorn to Barnil Stonepot in order to complete Chapter III.
    *Bring pages 25, 26, and 27 of Nesingwary's The Green Hills of Stranglethorn to Barnil Stonepot in order to complete Chapter IV.
    .complete 584,1 --Bloodscalp Clan Heads
    .complete 584,2 --Bloodscalp Clan Heads
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
    .mob Gan'zulah
    .mob Nezzliok the Dire
    .mob Bloodscalp Warrior
    .mob Bloodscalp Scout
step
    .goto 1434,35.66,10.53
    >>Talk to |cRXP_FRIENDLY_Barnil Stonepot|r
    .turnin 339 >>Turn in Chapter I
    .turnin 340 >>Turn in Chapter II
    .turnin 341 >>Turn in Chapter III
    .turnin 342 >>Turn in Chapter IV
    .target Barnil Stonepot
step
    .goto 1434,32.22,27.6
    >>Click the |cRXP_PICK_Bubbling Cauldron|r
    .turnin 584 >>Turn in Bloodscalp Clan Heads
    .accept 585 >>Accept Speaking with Nezzliok
    .accept 586 >>Accept Speaking with Gan'zulah
step
    .goto 1434,46.13,32.33
    >>Collect |cRXP_LOOT_[Split Bone Necklace]|r from |cRXP_ENEMY_Skullsplitter Warrior|r, |cRXP_ENEMY_Skullsplitter Hunter|r, |cRXP_ENEMY_Skullsplitter Witch Doctor|r. Collect |cRXP_LOOT_[Balia'mah Trophy]|r from |cRXP_PICK_Balia'mah Trophy Skulls|r. Collect |cRXP_LOOT_[Ziata'jai Trophy]|r from |cRXP_PICK_Ziata'jai Trophy Skulls|r. Collect |cRXP_LOOT_[Zul'Mamwe Trophy]|r from |cRXP_PICK_Zul'Mamwe Trophy Skulls|r
    *Bring 25 Split Bone Necklaces to Kin'weelay at the Grom'gol Base camp.
    *Bring a Balia'mah Trophy, a Ziata'jai Trophy and a Zul'Mamwe Trophy to the Bubbling Cauldron at the Grom'gol Base Camp.
    .complete 598,1 --Split Bone Necklace
    .complete 585,1 --Speaking with Nezzliok
    .complete 585,2 --Speaking with Nezzliok
    .complete 585,3 --Speaking with Nezzliok
    .mob Skullsplitter Warrior
    .mob Skullsplitter Hunter
step
    .goto 1434,46.16,42.97
    >>Kill |cRXP_ENEMY_Skullsplitter Hunter|r. Kill |cRXP_ENEMY_Skullsplitter Headhunter|r. Kill |cRXP_ENEMY_Skullsplitter Berserker|r. Collect |cRXP_LOOT_[Broken Armor of Ana'thek]|r from |cRXP_ENEMY_Ana'thek the Cruel|r
    *Kill 8 Skullsplitter Hunters, 6 Skullsplitter Headhunters, and 4 Skullsplitter Berserkers.
    .complete 586,1 --Speaking with Gan'zulah
    .complete 586,2 --Speaking with Gan'zulah
    .complete 586,3 --Speaking with Gan'zulah
    .complete 586,4 --Speaking with Gan'zulah
    .mob Skullsplitter Hunter
    .mob Skullsplitter Headhunter
    .mob Skullsplitter Berserker
    .mob Ana'thek the Cruel
step
    .goto 1434,32.27,27.71
    >>Talk to |cRXP_FRIENDLY_Kin'weelay|r
    .turnin 598 >>Turn in Split Bone Necklace
    .target Kin'weelay
step
    .goto 1434,32.22,27.6
    >>Click the |cRXP_PICK_Bubbling Cauldron|r
    .turnin 585 >>Turn in Speaking with Nezzliok
    .turnin 586 >>Turn in Speaking with Gan'zulah
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
    .goto 1434,26.35,73.56
    >>Talk to |cRXP_FRIENDLY_Wharfmaster Lozgil|r
    .accept 97332 >>Accept Twice Misplaced Trust
    .target Wharfmaster Lozgil
step
    .goto 1434,26.69,73.61
    >>Talk to |cRXP_FRIENDLY_Captain Hecklebury Smotts|r
    .accept 8551 >>Accept The Captain's Chest
    .target Captain Hecklebury Smotts
step
    .goto 1434,27,77.13
    >>Talk to |cRXP_FRIENDLY_Kebok|r
    .accept 209 >>Accept Skullsplitter Tusks
    .target Kebok
step
    .goto 1434,27.12,77.21
    >>Talk to |cRXP_FRIENDLY_Crank Fizzlebub|r
    .accept 600 >>Accept Venture Company Mining
    .accept 621 >>Accept Zanzil's Secret
    .target Crank Fizzlebub
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
    .target Princess Poobah
step
    .goto 1434,36.95,69.73
    >>Collect |cRXP_LOOT_[Smotts' Chest]|r from |cRXP_ENEMY_Gorlash|r. Collect |cRXP_LOOT_[Mistvale Giblets]|r from |cRXP_ENEMY_Elder Mistvale Gorilla|r
    *Bring Smotts' Chest to Hecklebury Smotts in Booty Bay.
    *Bring 5 Mistvale Giblets to "Shaky" Phillipe in Booty Bay.
    .complete 8551,1 --The Captain's Chest
    .complete 606,1 --Scaring Shaky
    .mob Gorlash
    .mob Elder Mistvale Gorilla
step
    .goto 1434,26.69,73.61
    >>Talk to |cRXP_FRIENDLY_Captain Hecklebury Smotts|r
    .turnin 8551 >>Turn in The Captain's Chest
    .target Captain Hecklebury Smotts
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
    .accept 609 >>Accept Voodoo Dues
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
    >>Collect |cRXP_LOOT_[Zanzil's Mixture]|r from |cRXP_ENEMY_Zanzil Zombie|r, |cRXP_ENEMY_Zanzil Hunter|r, |cRXP_ENEMY_Zanzil Witch Doctor|r. Collect |cRXP_LOOT_[Maury's Clubbed Foot]|r from |cRXP_ENEMY_Maury "Club Foot" Wilkins|r. Collect |cRXP_LOOT_[Jon-Jon's Golden Spyglass]|r from |cRXP_ENEMY_Jon-Jon the Crow|r. Collect |cRXP_LOOT_[Chucky's Huge Ring]|r from |cRXP_ENEMY_Chucky "Ten Thumbs"|r
    *Bring 12 samples of Zanzil's Mixture to Crank Fizzlebub in Booty Bay.
    *Bring Maury's Clubbed Foot, Jon-Jon's Golden Spyglass, and Chucky's Huge Ring to "Sea Wolf" MacKinley in Booty Bay.
    .complete 621,1 --Zanzil's Secret
    .complete 609,1 --Voodoo Dues
    .complete 609,2 --Voodoo Dues
    .complete 609,3 --Voodoo Dues
    .mob Zanzil Zombie
    .mob Zanzil Hunter
    .mob Maury "Club Foot" Wilkins
    .mob Jon-Jon the Crow
    .mob Chucky "Ten Thumbs"
step
    .goto 1434,41.67,43.91
    >>Collect |cRXP_LOOT_[Skullsplitter Tusk]|r from |cRXP_ENEMY_Skullsplitter Warrior|r, |cRXP_ENEMY_Skullsplitter Hunter|r, |cRXP_ENEMY_Skullsplitter Witch Doctor|r. Collect |cRXP_LOOT_[Singing Blue Crystal]|r from |cRXP_ENEMY_Venture Co. Strip Miner|r, |cRXP_ENEMY_Venture Co. Foreman|r, |cRXP_ENEMY_Venture Co. Surveyor|r
    *Acquire 18 Skullsplitter Tusks and return them to Kebok.
    *Bring 10 Singing Blue Crystals to Crank Fizzlebub in Booty Bay.
    .complete 209,1 --Skullsplitter Tusks
    .complete 600,1 --Venture Company Mining
    .mob Skullsplitter Warrior
    .mob Skullsplitter Hunter
    .mob Venture Co. Strip Miner
    .mob Venture Co. Foreman
step
    .goto 1434,27,77.13
    >>Talk to |cRXP_FRIENDLY_Kebok|r
    .turnin 209 >>Turn in Skullsplitter Tusks
    .target Kebok
step
    .goto 1434,27.12,77.21
    >>Talk to |cRXP_FRIENDLY_Crank Fizzlebub|r
    .turnin 600 >>Turn in Venture Company Mining
    .turnin 621 >>Turn in Zanzil's Secret
    .target Crank Fizzlebub
step
    .goto 1434,26.76,76.38
    >>Talk to |cRXP_FRIENDLY_Privateer Bloads|r
    .turnin 617 >>Turn in Akiris by the Bundle
    .target Privateer Bloads
step
    .goto 1434,27.78,77.07
    >>Talk to |cRXP_FRIENDLY_"Sea Wolf" MacKinley|r
    .turnin 609 >>Turn in Voodoo Dues
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
    .goto 1418,2.91,45.6
    >>Talk to |cRXP_FRIENDLY_Gorn|r
    .turnin 782 >>Turn in Broken Alliances
    .target Gorn
step
    .goto 1418,42.39,52.93
    >>Talk to |cRXP_FRIENDLY_Rigglefuzz|r
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
    .goto 1418,51.39,76.87
    >>Talk to |cRXP_FRIENDLY_Theldurin the Lost|r
    .accept 728 >>Accept To the Undercity for Yagyin's Digest
    .target Theldurin the Lost
step
    .goto 1418,6.49,47.2
    >>Talk to |cRXP_FRIENDLY_Neeka Bloodscar|r
    .turnin 1419 >>Turn in Coyote Thieves
    .target Neeka Bloodscar
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
    .goto 1458,53.74,54.46
    >>Talk to |cRXP_FRIENDLY_Keeper Bel'dugur|r
    .turnin 728 >>Turn in To the Undercity for Yagyin's Digest
    .target Keeper Bel'dugur
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
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 40-49
#name 46-47 Zul'Farrak
#displayname 46-47 Zul'Farrak
#next 47-48 Maraudon
step
    +|cRXP_WARN_Zul'Farrak|r (levels 44-54). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *Pre-quests in this guide: Venom Bottles, Undamaged Venom Sac, Consult Master Gadrin, Screecher Spirits
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
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
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
    +|cRXP_WARN_Run the dungeon|r
step
    .goto 1446,38.7,20.1
    >>Enter |cRXP_WARN_Zul'Farrak|r and run it with a group. Quest goals inside:
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
<< Horde
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 40-49
#name 47-48 Maraudon
#displayname 47-48 Maraudon
#next 48-49 The Hinterlands
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
    *Corruption of Earth and Seed: Slay Princess Theradras and return to Selendra near Shadowprey Village in Desolace.
    *The Pariah's Instructions: Read the Pariah's Instructions. Afterwards, obtain the Amulet of Union from Maraudon and return it to the Centaur Pariah in southern Desolace.
    *Rot and Regret: Venture to Maraudon and recover a Vial of Earth Song Water and return it to Woodwyrd at the Forlorn Gardens in Desolace.
    *An'she's Radiance: Recover the crystal known as An'she's Radiance from Maraudon.
    .complete 7028,1 --Twisted Evils
    .complete 7029,1 --Vyletongue Corruption
    .complete 7029,2 --Vyletongue Corruption
    .complete 7044,1 --Legends of Maraudon
    .complete 7044,2 --Legends of Maraudon
    .complete 7064,1 --Corruption of Earth and Seed
    .complete 7067,1 --The Pariah's Instructions
    .complete 93404,2 --Rot and Regret
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
    .goto 2652,69.66,71.78
    >>Talk to |cRXP_FRIENDLY_Woodwyrd|r
    .turnin 93404 >>Turn in Rot and Regret
    .target Woodwyrd
step
    .goto 1412,32.63,24.2
    >>Talk to |cRXP_FRIENDLY_Olana Brighthoof|r
    .turnin 96776 >>Turn in An'she's Radiance
    .target Olana Brighthoof
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
<< Horde
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 40-49
#name 48-49 The Hinterlands
#displayname 48-49 The Hinterlands
#next 49-50 Alcaz Prison
step
    .zone 1425 >>Travel to The Hinterlands
    *Suggested level for this part: 48-49
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
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 40-49
#name 49-50 Alcaz Prison
#displayname 49-50 Alcaz Prison
#next 50-51 Azshara
step
    +|cRXP_WARN_Alcaz Prison|r (levels 48-53). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *New Forever dungeon on Alcaz Island off Dustwallow Marsh. The portal is in the basement of the big central keep. Elite naga patrol the climb up.
    *Pre-quests in this guide: The Elite of the Elite, Right Place, Wrong Time
step
    #completewith next
    +|cRXP_WARN_Pre-quests|r
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
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
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
    .goto 1434,28.51,75.78
    >>Talk to |cRXP_FRIENDLY_Rix Xizzix|r
    .accept 96379 >>Accept State Secrets
    .target Rix Xizzix
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
    .goto 1434,28.51,75.78
    >>Talk to |cRXP_FRIENDLY_Rix Xizzix|r
    .turnin 96379 >>Turn in State Secrets
    .target Rix Xizzix
step
    #completewith next
    +|cRXP_WARN_Run the dungeon (run 2)|r
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
    +|cRXP_WARN_Run the dungeon (run 3)|r
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
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 50-60
#name 50-51 Azshara
#displayname 50-51 Azshara
#next 51-52 The Temple of Atal'Hakkar
step
    .zone 1447 >>Travel to Azshara
    *Suggested level for this part: 50-51
step
    #completewith next
    .goto 1447,21.96,49.62,15,0
    >>Talk to |cRXP_FRIENDLY_Kroum|r if you don't have this flight path yet
    .fp Kroum >>Get the flight path
    .target Kroum
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
    .goto 1447,21.82,52.1
    >>Talk to |cRXP_FRIENDLY_Kurll|r
    .accept 91488 >>Accept Home on the Range
    .target Kurll
step
    .goto 1447,38.91,53.46
    >>Collect |cRXP_LOOT_[Tablet of Beth'Amara]|r from |cRXP_PICK_Tablet of Beth'Amara|r. Collect |cRXP_LOOT_[Tablet of Jin'yael]|r from |cRXP_PICK_Tablet of Jin'yael|r. Collect |cRXP_LOOT_[Tablet of Markri]|r from |cRXP_PICK_Tablet of Markri|r. Collect |cRXP_LOOT_[Tablet of Sael'hai]|r from |cRXP_PICK_Tablet of Sael'hai|r
    *Find the Tablet of Beth'Amara, the Tablet of Jin'yael, the Tablet of Markri, and the Tablet of Sael'hai before returning to Jediga in Azshara.
    .complete 3517,1 --Stealing Knowledge
    .complete 3517,2 --Stealing Knowledge
    .complete 3517,3 --Stealing Knowledge
    .complete 3517,4 --Stealing Knowledge
step
    .goto 1447,47.45,49.47
    >>Collect |cRXP_LOOT_[Highborne Treasure Fragment]|r from |cRXP_ENEMY_Makrinni Burrower|r
    *Dig up 10 Highborne Treasure Fragments with the Treasure Trowel 3000 for Izvi Glidfizz in Valormok.
    .complete 91568,1 --Long Walks on the Beach
    .mob Makrinni Burrower
step
    .goto 1447,42,38.88
    >>Talk to |cRXP_FRIENDLY_Ekkal|r
    .accept 86752 >>Accept Report to Rageroar
    .target Ekkal
step
    .goto 1447,45.32,22.36
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
    .goto 1447,57.7,21.02
    >>Collect |cRXP_LOOT_[Satyrweed]|r. Collect |cRXP_LOOT_[Fel Mote]|r from |cRXP_PICK_Fel Mote|r
    *Bring 5 Satyrweed and a Fel Mote to the Legashi Cauldron in the Legashi Encampment.
    .complete 86926,1 --Felfire Burn, Cauldron Bubble
    .complete 86926,2 --Felfire Burn, Cauldron Bubble
step
    .goto 1447,57.7,21.02
    >>Click the |cRXP_PICK_Legashi Cauldron|r
    .turnin 86926 >>Turn in Felfire Burn, Cauldron Bubble
step
    .goto 1447,63.01,21.43
    >>Talk to |cRXP_FRIENDLY_Korsa|r
    .turnin 86791 >>Turn in Missing Blackmaw Scouts
    .accept 86792 >>Accept Thinning Their Forces
    .accept 86797 >>Accept Return to Rageroar
    .accept 86777 >>Accept Master Feardred
    .target Korsa
step
    .goto 1447,60.57,23.96
    >>Collect |cRXP_LOOT_[Mana-Siphoning Wand]|r from |cRXP_ENEMY_Blood Elf Arcanist|r, |cRXP_ENEMY_Evin Schmidtt|r, |cRXP_ENEMY_Lumina Windsinger|r. Collect |cRXP_LOOT_[Kim'Jael's Compass]|r from |cRXP_PICK_Kim'jael's Equipment|r. Collect |cRXP_LOOT_[Kim'Jael's Scope]|r from |cRXP_PICK_Kim'jael's Equipment|r. Collect |cRXP_LOOT_[Kim'Jael's Stuffed Chicken]|r from |cRXP_PICK_Kim'jael's Equipment|r. Collect |cRXP_LOOT_[Kim'Jael's Wizzlegoober]|r from |cRXP_PICK_Kim'jael's Equipment|r. Collect |cRXP_LOOT_[Legashi Firewater Recipe]|r from |cRXP_ENEMY_Legashi Satyr|r, |cRXP_ENEMY_Legashi Rogue|r, |cRXP_ENEMY_Legashi Hellcaller|r. Kill |cRXP_ENEMY_Legashi Hellraiser|r. Kill |cRXP_ENEMY_Legashi Soulstealer|r. Kill |cRXP_ENEMY_Legashi Blackguard|r. Collect |cRXP_LOOT_[Feardred's Amulet]|r from |cRXP_ENEMY_Master Feardred|r
    *Bring a Mana-Siphoning Wand to Izvi Gildfizz at Valormok.
    *Search the Thalassian Base Camp for Kim'jael's Compass, Scope, Stuffed Chicken and Wizzlegoober, then return them to him in Azshara.
    *Find a Legashi Firewater Recipe from satyr in the Legashi Encampment.
    *Kill 6 Legashi Hellraisers, 4 Legashi Soulstealers, and 2 Legashi Blackguards for Korsa outside Legashi Stronghold.
    *Kill Master Feardred, and bring his amulet to Korsa.
    .complete 91569,1 --Blue Gold
    .complete 3601,1 --Kim'jael Indeed!
    .complete 3601,2 --Kim'jael Indeed!
    .complete 3601,3 --Kim'jael Indeed!
    .complete 3601,4 --Kim'jael Indeed!
    .complete 86925,1 --Toil and Trouble
    .complete 86792,1 --Thinning Their Forces
    .complete 86792,2 --Thinning Their Forces
    .complete 86792,3 --Thinning Their Forces
    .complete 86777,1 --Master Feardred
    .mob Blood Elf Arcanist
    .mob Evin Schmidtt
    .mob Legashi Satyr
    .mob Legashi Rogue
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
    .turnin 86925 >>Turn in Toil and Trouble
step
    .goto 1447,53.45,21.82
    >>Talk to |cRXP_FRIENDLY_Kim'jael|r
    .turnin 3601 >>Turn in Kim'jael Indeed!
    .accept 5534 >>Accept Kim'jael's "Missing" Equipment
    .target Kim'jael
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
    .goto 1447,66.58,14.58
    >>Talk to |cRXP_FRIENDLY_Graal|r
    .accept 86796 >>Accept Later, Satyr
    .target Graal
step
    .goto 1447,63.01,21.43
    >>Talk to |cRXP_FRIENDLY_Korsa|r
    .turnin 86796 >>Turn in Later, Satyr
    .target Korsa
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
    .target Jediga
step
    .goto 1447,22.53,51.84
    >>Talk to |cRXP_FRIENDLY_Izvi Gildfizz|r
    .accept 91685 >>Accept Ley of the Land
    .target Izvi Gildfizz
step
    .goto 1447,22.56,51.42
    >>Talk to |cRXP_FRIENDLY_Jediga|r
    .accept 3518 >>Accept Delivery to Magatha
    .accept 3541 >>Accept Delivery to Jes'rimon
    .accept 3542 >>Accept Delivery to Andron Gant
    .accept 3561 >>Accept Delivery to Archmage Xylem
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
    .goto 1447,39.33,80.89
    >>Collect |cRXP_LOOT_[Tear of Mennar]|r from |cRXP_ENEMY_Celegosa|r
    *Use the Mana-Siphoning Wand on the Leyline Rift in Lake Mennar and bring the Tear of Mennar to Izvi Gildfizz.
    .complete 91685,1 --Ley of the Land
    .mob Celegosa
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
    .target Kurll
step
    .goto 1447,22.53,51.84
    >>Talk to |cRXP_FRIENDLY_Izvi Gildfizz|r
    .turnin 91685 >>Turn in Ley of the Land
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
    .goto 1447,53.45,21.82
    >>Talk to |cRXP_FRIENDLY_Kim'jael|r
    .turnin 5534 >>Turn in Kim'jael's "Missing" Equipment
    .target Kim'jael
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
    .goto 1458,54.81,76.33
    >>Talk to |cRXP_FRIENDLY_Andron Gant|r
    .turnin 3542 >>Turn in Delivery to Andron Gant
    .accept 91734 >>Accept Remote Contact
    .accept 3564 >>Accept Andron's Payment to Jediga
    .target Andron Gant
step
    .goto 1447,22.56,51.42
    >>Talk to |cRXP_FRIENDLY_Jediga|r
    .turnin 3562 >>Turn in Magatha's Payment to Jediga
    .turnin 3563 >>Turn in Jes'rimon's Payment to Jediga
    .turnin 91734 >>Turn in Remote Contact
    .turnin 3564 >>Turn in Andron's Payment to Jediga
    .target Jediga
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 50-60
#name 51-52 The Temple of Atal'Hakkar
#displayname 51-52 The Temple of Atal'Hakkar
#next 52-54 Un'Goro Crater
step
    +|cRXP_WARN_The Temple of Atal'Hakkar|r (levels 50-60). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *Pre-quests in this guide: Pool of Tears, The Atal'ai Exile, Return to Fel'Zerul, The Stone Circle, Screecher Spirits, The Prophecy of Mosh'aru, Larion and Muigin, Marvon's Workshop, The Ancient Egg
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
    .goto 1446,52.71,45.92
    >>Talk to |cRXP_FRIENDLY_Marvon Rivetseeker|r
    .accept 3444 >>Accept The Stone Circle
    .target Marvon Rivetseeker
step
    .goto 1435,47.93,54.78
    >>Talk to |cRXP_FRIENDLY_Fel'zerul|r
    .accept 1424 >>Accept Pool of Tears
    .target Fel'zerul
step
    .goto 1435,70.35,50.71
    >>Collect |cRXP_LOOT_[Atal'ai Artifact]|r from |cRXP_PICK_Atal'ai Artifact|r, |cRXP_PICK_Atal'ai Artifact|r
    *Fel'zerul in Stonard wants you to gather 10 Atal'ai Artifacts.
    .complete 1424,1 --Pool of Tears
step
    .goto 1435,47.93,54.78
    >>Talk to |cRXP_FRIENDLY_Fel'zerul|r
    .turnin 1424 >>Turn in Pool of Tears
    .accept 1429 >>Accept The Atal'ai Exile
    .target Fel'zerul
step
    .goto 1425,33.75,75.21
    >>Talk to |cRXP_FRIENDLY_Atal'ai Exile|r
    .turnin 1429 >>Turn in The Atal'ai Exile
    .accept 1444 >>Accept Return to Fel'Zerul
    .target Atal'ai Exile
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
    .goto 1435,47.93,54.78
    >>Talk to |cRXP_FRIENDLY_Fel'zerul|r
    .turnin 1444 >>Turn in Return to Fel'Zerul
    .target Fel'zerul
step
    .goto 1449,45.54,8.72
    >>Talk to |cRXP_FRIENDLY_Larion|r
    .accept 4145 >>Accept Larion and Muigin
    .target Larion
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
    .goto 1449,50.01,65.13
    >>Kill |cRXP_ENEMY_Bloodpetal Flayer|r
    *Hunt 5 Bloodpetal Lashers, 5 Bloodpetal Threshers, 5 Bloodpetal Flayers and 5 Bloodpetal Trappers for Larion at Marshal's Refuge.
    .complete 4145,3 --Larion and Muigin
    .mob Bloodpetal Flayer
step
    .goto 1449,45.54,8.72
    >>Talk to |cRXP_FRIENDLY_Larion|r
    .turnin 4145 >>Turn in Larion and Muigin
    .accept 4147 >>Accept Marvon's Workshop
    .target Larion
step
    .goto 1413,62.45,38.73
    >>Talk to |cRXP_FRIENDLY_Liv Rizzlefix|r
    .turnin 4147 >>Turn in Marvon's Workshop
    .target Liv Rizzlefix
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
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
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
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 50-60
#name 52-54 Un'Goro Crater
#displayname 52-54 Un'Goro Crater
#next 54-56 Blackrock Depths
step
    .zone 1449 >>Travel to Un'Goro Crater
    *Suggested level for this part: 52-54
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
    .target Hol'anyee Marshal
step
    .goto 1449,45.54,8.72
    >>Talk to |cRXP_FRIENDLY_Larion|r
    .accept 4148 >>Accept Bloodpetal Zapper
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
    >>Collect |cRXP_LOOT_[Bloodpetal Sprout]|r from |cRXP_ENEMY_Devilsaur|r, |cRXP_ENEMY_Ironhide Devilsaur|r, |cRXP_ENEMY_Tyrant Devilsaur|r. Collect |cRXP_LOOT_[Red Power Crystal]|r from |cRXP_ENEMY_Devilsaur|r, |cRXP_ENEMY_Ironhide Devilsaur|r, |cRXP_ENEMY_Tyrant Devilsaur|r. Collect |cRXP_LOOT_[Yellow Power Crystal]|r from |cRXP_ENEMY_Devilsaur|r, |cRXP_ENEMY_Ironhide Devilsaur|r, |cRXP_ENEMY_Tyrant Devilsaur|r. Collect |cRXP_LOOT_[Green Power Crystal]|r from |cRXP_ENEMY_Devilsaur|r, |cRXP_ENEMY_Ironhide Devilsaur|r, |cRXP_ENEMY_Tyrant Devilsaur|r. Collect |cRXP_LOOT_[Blue Power Crystal]|r from |cRXP_ENEMY_Devilsaur|r, |cRXP_ENEMY_Ironhide Devilsaur|r, |cRXP_ENEMY_Tyrant Devilsaur|r. Collect |cRXP_LOOT_[Large Compass]|r. Collect |cRXP_LOOT_[Curled Map Parchment]|r. Collect |cRXP_LOOT_[Lion-headed Key]|r
    *Collect 7 Power Crystals of each color: red, blue, yellow, and green. Bring them to J.D. Collie at Marshal's Refuge.
    *Examine the items inside the pack and bring them to their owner.
    .complete 4148,1 --Bloodpetal Zapper
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
    .turnin 4148 >>Turn in Bloodpetal Zapper
    .target Larion
step
    .goto 1449,44.66,8.1
    >>Talk to |cRXP_FRIENDLY_Linken|r
    .turnin 3845 >>Turn in It's a Secret to Everybody
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
<< Horde
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 50-60
#name 54-56 Blackrock Depths
#displayname 54-56 Blackrock Depths
#next 56-58 Dire Maul
step
    +|cRXP_WARN_Blackrock Depths|r (levels 52-60). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *Pre-quests in this guide: Forging the Shaft, The Flame's Casing, The Torch of Retribution, The Torch of Retribution, Squire Maltrake, Set Them Ablaze!, Trinkets..., Disharmony of Flame, A Taste of Flame, The Rise of the Machines, The Rise of the Machines, In Search of Anthion...
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
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
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
    +|cRXP_WARN_Run the dungeon|r
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
    >>Enter |cRXP_WARN_Blackrock Depths|r and run it with a group. Quest goals inside:
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
    +|cRXP_WARN_Pick up the dungeon quests|r
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
    +|cRXP_WARN_Run the dungeon (run 2)|r
step
    .goto 1427,34.8,85.3
    >>Inside Blackrock Depths: these quests start from a drop or an object in the dungeon
    .accept 3802 >>Accept Dark Iron Legacy
    .accept 4001 >>Accept What Is Going On?
step
    .goto 1427,34.8,85.3
    >>Enter |cRXP_WARN_Blackrock Depths|r and run it with a group. Quest goals inside:
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
step
    .goto 1454,31.73,37.82
    >>Talk to |cRXP_FRIENDLY_Thrall|r
    .turnin 4001 >>Turn in What Is Going On?
    .target Thrall
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
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1454,31.73,37.82
    >>Talk to |cRXP_FRIENDLY_Thrall|r
    .accept 4002 >>Accept The Eastern Kingdom
    .target Thrall
step
    .goto 1418,5.81,47.52
    >>Talk to |cRXP_FRIENDLY_Warlord Goretooth|r
    .accept 4132 >>Accept Operation: Death to Angerforge
    .target Warlord Goretooth
step
    #completewith next
    +|cRXP_WARN_Run the dungeon (run 3)|r
step
    .goto 1427,34.8,85.3
    >>Enter |cRXP_WARN_Blackrock Depths|r and run it with a group. Quest goals inside:
    *Operation: Death to Angerforge: Travel to Blackrock Depths and slay General Angerforge! Return to Warlord Goretooth when the task is complete.
    .complete 4132,1 --Operation: Death to Angerforge
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1454,31.73,37.82
    >>Talk to |cRXP_FRIENDLY_Thrall|r
    .turnin 4002 >>Turn in The Eastern Kingdom
    .target Thrall
step
    .goto 1418,5.81,47.52
    >>Talk to |cRXP_FRIENDLY_Warlord Goretooth|r
    .turnin 4132 >>Turn in Operation: Death to Angerforge
    .target Warlord Goretooth
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1454,31.73,37.82
    >>Talk to |cRXP_FRIENDLY_Thrall|r
    .accept 4003 >>Accept The Royal Rescue
    .target Thrall
step
    #completewith next
    +|cRXP_WARN_Run the dungeon (run 4)|r
step
    .goto 1427,34.8,85.3
    >>Enter |cRXP_WARN_Blackrock Depths|r and run it with a group. Quest goals inside:
    *The Royal Rescue: Slay Emperor Dagran Thaurissan and free Princess Moira Bronzebeard from his evil spell.
    .complete 4003,1 --The Royal Rescue
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1454,31.73,37.82
    >>Talk to |cRXP_FRIENDLY_Thrall|r
    .turnin 4003 >>Turn in The Royal Rescue
    .target Thrall
step
    >>|cRXP_WARN_Also part of this dungeon (later follow-ups or missing data). Do them if they are offered:|r
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
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 50-60
#name 56-58 Dire Maul
#displayname 56-58 Dire Maul
#next 58-60 Blackrock Spire
step
    +|cRXP_WARN_Dire Maul|r (levels 54-60). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *East 54-60, West 56-60, North 56-60.
    *Pre-quests in this guide: In Search of Anthion, Dead Man's Plea, Proof of Life, Anthion's Strange Request, Three Kings of Flame, Components of Importance, Components of Importance, More Components of Importance, Bodley's Unfortunate Fate
step
    #completewith next
    +|cRXP_WARN_Pre-quests|r
step
    .goto 1454,34.95,38.29
    >>Talk to |cRXP_FRIENDLY_Mokvar|r
    .accept 9032 >>Accept Bodley's Unfortunate Fate
    .target Mokvar
step
    .goto 1454,34.95,38.29
    >>Talk to |cRXP_FRIENDLY_Mokvar|r
    .turnin 9032 >>Turn in Bodley's Unfortunate Fate
    .accept 8930 >>Accept In Search of Anthion
    .target Mokvar
step
    .goto 1423,26.11,11.3
    >>Talk to |cRXP_FRIENDLY_Anthion Harmon|r
    .turnin 8930 >>Turn in In Search of Anthion
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
    .goto 1444,75.24,43.76
    >>Talk to |cRXP_FRIENDLY_Sage Korolusk|r
    .accept 7481 >>Accept Elven Legends
    .target Sage Korolusk
step
    .goto 1454,37.56,75.36
    >>Talk to |cRXP_FRIENDLY_Warcaller Gorlach|r
    .accept 7492 >>Accept Camp Mojache
    .target Warcaller Gorlach
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
    .goto 1435,44.77,56.63
    >>Buy |cRXP_LOOT_[Rune Thread]|r from |cRXP_FRIENDLY_Banalash|r
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
    .goto 1444,75.24,43.76
    >>Talk to |cRXP_FRIENDLY_Sage Korolusk|r
    .turnin 7481 >>Turn in Elven Legends
    .target Sage Korolusk
step
    .goto 1444,76.18,43.83
    >>Talk to |cRXP_FRIENDLY_Talo Thornhoof|r
    .turnin 7492 >>Turn in Camp Mojache
    .target Talo Thornhoof
step
    .goto 1444,76.91,37.35
    >>Talk to |cRXP_FRIENDLY_Azj'Tordin|r
    .turnin 7441 >>Turn in Pusillin and the Elder Azj'Tordin
    .target Azj'Tordin
step
    .goto 1423,26.11,11.3
    >>Talk to |cRXP_FRIENDLY_Anthion Harmon|r
    .turnin 8948 >>Turn in Anthion's Old Friend
    .target Anthion Harmon
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1444,76.18,43.83
    >>Talk to |cRXP_FRIENDLY_Talo Thornhoof|r
    .accept 7489 >>Accept Lethtendris's Web
    .target Talo Thornhoof
step
    #completewith next
    +|cRXP_WARN_Run the dungeon (run 2)|r
step
    .goto 1444,59.2,45.1
    >>Inside Dire Maul: loot |cRXP_LOOT_[A Dull and Flat Elven Blade]|r and click it to start the quest
    .accept 7508 >>Accept The Forging of Quel'Serrar
    .use 18513
step
    .goto 1444,59.2,45.1
    >>Inside Dire Maul: these quests start from a drop or an object in the dungeon
    .accept 7877 >>Accept The Treasure of the Shen'dralar
    .accept 8949 >>Accept Falrin's Vendetta
step
    .goto 1444,59.2,45.1
    >>Enter |cRXP_WARN_Dire Maul|r and run it with a group. Quest goals inside:
    *Lethtendris's Web: Bring Lethtendris's Web to Talo Thornhoof at Camp Mojache in Feralas.
    .complete 7489,1 --Lethtendris's Web
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
    >>Inside Dire Maul: loot |cRXP_LOOT_[A Dull and Flat Elven Blade]|r and click it to start the quest
    .turnin 7508 >>Turn in The Forging of Quel'Serrar
step
    .goto 1444,59.2,45.1
    >>Inside Dire Maul: these quests start from a drop or an object in the dungeon
    .turnin 7877 >>Turn in The Treasure of the Shen'dralar
    .turnin 8949 >>Turn in Falrin's Vendetta
step
    .goto 1444,76.18,43.83
    >>Talk to |cRXP_FRIENDLY_Talo Thornhoof|r
    .turnin 7489 >>Turn in Lethtendris's Web
    .target Talo Thornhoof
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
<< Horde
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 50-60
#name 58-60 Blackrock Spire
#displayname 58-60 Blackrock Spire
#next 60-60 Mount Hyjal
step
    +|cRXP_WARN_Blackrock Spire|r (levels 55-60). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *Lower Blackrock Spire 55-60, Upper Blackrock Spire 59-60.
    *Pre-quests in this guide: Screecher Spirits, The Prophecy of Mosh'aru, The God Hakkar, Broodling Essence, The Ancient Egg, Felnok Steelspring, Chillwind Horns, Return to Tinkee, Eitrigg's Wisdom, The Lost Tablets of Mosh'aru, What the Wind Carries, The Champion of the Horde...
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
    .goto 1418,5.81,47.52
    >>Talk to |cRXP_FRIENDLY_Warlord Goretooth|r
    .accept 4941 >>Accept Eitrigg's Wisdom
    .target Warlord Goretooth
step
    .goto 1454,31.73,37.82
    >>Talk to |cRXP_FRIENDLY_Thrall|r
    .turnin 4941 >>Turn in Eitrigg's Wisdom
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
    .accept 6583 >>Accept The Test of Skulls, Somnus
    .accept 6582 >>Accept The Test of Skulls, Scryer
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
    .goto 1446,64.16,48.49
    >>Collect |cRXP_LOOT_[The Skull of Chronalis]|r from |cRXP_ENEMY_Chronalis|r
    *Guarding the Caverns of Time in the Tanaris Desert is Chronalis, child of Nozdormu. Destroy him and return his skull to Emberstrife.
    .complete 6584,1 --The Test of Skulls, Chronalis
    .mob Chronalis
step
    .goto 1445,56.66,87.72
    >>Talk to |cRXP_FRIENDLY_Emberstrife|r
    .turnin 6584 >>Turn in The Test of Skulls, Chronalis
    .target Emberstrife
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
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
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
    .goto 1428,65.24,24
    >>Talk to |cRXP_FRIENDLY_Tinkee Steamboil|r
    .accept 4734 >>Accept Egg Freezing
    .target Tinkee Steamboil
step
    .goto 1458,50.14,67.97
    >>Talk to |cRXP_FRIENDLY_Apothecary Zinge|r
    .accept 4769 >>Accept Vivian Lagrave and the Darkstone Tablet
    .target Apothecary Zinge
step
    .goto 1446,66.89,24.03
    >>Talk to |cRXP_FRIENDLY_Prospector Ironboot|r
    .accept 4788 >>Accept The Final Tablets
    .target Prospector Ironboot
step
    .goto 1452,61.63,38.61
    >>Talk to |cRXP_FRIENDLY_Felnok Steelspring|r
    .accept 4907 >>Accept Tinkee Steamboil
    .target Felnok Steelspring
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
    +|cRXP_WARN_Run the dungeon|r
step
    .goto 1427,34.8,85.3
    >>Inside Blackrock Spire: these quests start from a drop or an object in the dungeon
    .accept 4742 >>Accept Seal of Ascension
    .accept 4867 >>Accept Urok Doomhowl
    .accept 5047 >>Accept Finkle Einhorn, At Your Service!
    .accept 5160 >>Accept The Matron Protectorate
step
    .goto 1427,34.8,85.3
    >>Enter |cRXP_WARN_Blackrock Spire|r and run it with a group. Quest goals inside:
    *The Pack Mistress: Slay Halycon, pack mistress of the Bloodaxe worg.
    *Kibler's Exotic Pets: Travel to Blackrock Spire and find Bloodaxe Worg Pups. Use the cage to carry the ferocious little beasts. Bring back a Caged Worg Pup to Kibler.
    *Seal of Ascension: Find the three gemstones of command: The Gemstone of Smolderthorn, Gemstone of Spirestone, and Gemstone of Bloodaxe. Return them, along with the Unadorned Seal of Ascension, to Vaelan.
    *The Final Tablets: Bring the Fifth and Sixth Mosh'aru Tablets to Prospector Ironboot in Tanaris.
    *En-Ay-Es-Tee-Why: Travel to Blackrock Spire and collect 15 Spire Spider Eggs for Kibler.
    *Urok Doomhowl: Read Warosh's Scroll. Bring Warosh's Mojo to Warosh.
    *Warlord's Command: Slay Highlord Omokk, War Master Voone, and Overlord Wyrmthalak. Recover Important Blackrock Documents. Return to Warlord Goretooth in Kargath when the mission has been accomplished.
    *For The Horde!: Travel to Blackrock Spire and slay Warchief Rend Blackhand. Take his head and return to Orgrimmar.
    *Oculus Illusions: Travel to Blackrock Spire and collect 20 Black Dragonspawn Eyes. Return to Myranda the Hag when the task is complete.
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
    .complete 4974,1 --For The Horde!
    .complete 6569,1 --Oculus Illusions
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1427,34.8,85.3
    >>Inside Blackrock Spire: these quests start from a drop or an object in the dungeon
    .turnin 4742 >>Turn in Seal of Ascension
    .turnin 4867 >>Turn in Urok Doomhowl
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
    .target Warlord Goretooth
step
    .goto 1418,2.9,47.76
    >>Talk to |cRXP_FRIENDLY_Shadowmage Vivian Lagrave|r
    .turnin 4769 >>Turn in Vivian Lagrave and the Darkstone Tablet
    .target Shadowmage Vivian Lagrave
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
    .turnin 4734 >>Turn in Egg Freezing
    .turnin 4907 >>Turn in Tinkee Steamboil
    .target Tinkee Steamboil
step
    .goto 1446,66.89,24.03
    >>Talk to |cRXP_FRIENDLY_Prospector Ironboot|r
    .turnin 4788 >>Turn in The Final Tablets
    .target Prospector Ironboot
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
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1428,65.24,24
    >>Talk to |cRXP_FRIENDLY_Tinkee Steamboil|r
    .accept 4735 >>Accept Egg Collection
    .target Tinkee Steamboil
step
    .goto 1418,2.9,47.76
    >>Talk to |cRXP_FRIENDLY_Shadowmage Vivian Lagrave|r
    .accept 4768 >>Accept The Darkstone Tablet
    .target Shadowmage Vivian Lagrave
step
    .goto 1418,5.81,47.52
    >>Talk to |cRXP_FRIENDLY_Warlord Goretooth|r
    .accept 98325 >>Accept Blood and Thunder
    .target Warlord Goretooth
step
    .goto 1444,46.39,18.24
    >>Talk to |cRXP_FRIENDLY_Rexxar|r
    .accept 6602 >>Accept Blood of the Black Dragon Champion
    .target Rexxar
step
    #completewith next
    +|cRXP_WARN_Run the dungeon (run 2)|r
step
    .goto 1427,34.8,85.3
    >>Inside Blackrock Spire: these quests start from a drop or an object in the dungeon
    .accept 4743 >>Accept Seal of Ascension
    .accept 4982 >>Accept Bijou's Belongings
    .accept 8966 >>Accept The Left Piece of Lord Valthalak's Amulet
    .accept 8989 >>Accept The Right Piece of Lord Valthalak's Amulet
    .accept 8995 >>Accept Mea Culpa, Lord Valthalak
step
    .goto 1427,34.8,85.3
    >>Loot |cRXP_LOOT_[Blackhand's Command]|r from |cRXP_ENEMY_Scarshield Quartermaster|r, then click it to start the quest
    .accept 7761 >>Accept Blackhand's Command
    .use 18987
    .mob Scarshield Quartermaster
step
    .goto 1427,34.8,85.3
    >>Enter |cRXP_WARN_Blackrock Spire|r and run it with a group. Quest goals inside:
    *Egg Collection: Bring 8 Collected Dragon Eggs and the Collectronic Module to Tinkee Steamboil at Flame Crest in the Burning Steppes.
    *Seal of Ascension: Travel to the Wyrmbog in Dustwallow Marsh. Find the ancient drake, Emberstrife and beat him without mercy until his will is broken.
    *The Darkstone Tablet: Bring the Darkstone Tablet to Shadow Mage Vivian Lagrave in Kargath.
    *Bijou's Belongings: Find Bijou's Belongings and return them to her. You recall her mentioning that she stashed them on the bottom floor of the city.
    *Blood of the Black Dragon Champion: Travel to Blackrock Spire and slay General Drakkisath. Gather his blood and return it to Rexxar.
    *The Left Piece of Lord Valthalak's Amulet: Use the Brazier of Beckoning to summon forth the spirit of Mor Grayhoof and slay him. Return to Bodley inside Blackrock Mountain with the Left Piece of Lord Valthalak's Amulet and the Brazier of Beckoning.
    *The Right Piece of Lord Valthalak's Amulet: Use the Brazier of Beckoning to summon forth the spirit of Mor Grayhoof and slay him. Return to Bodley inside Blackrock Mountain with the recombined Lord Valthalak's Amulet and the Brazier of Beckoning.
    *Mea Culpa, Lord Valthalak: Use the Brazier of Beckoning to summon Lord Valthalak. Dispatch him, and use Lord Valthalak's Amulet on the corpse. Then, return Lord Valthalak's Amulet to the Spirit of Lord Valthalak.
    .complete 4735,1 --Egg Collection
    .complete 4743,1 --Seal of Ascension
    .complete 4768,1 --The Darkstone Tablet
    .complete 4982,1 --Bijou's Belongings
    .complete 6602,1 --Blood of the Black Dragon Champion
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
    .turnin 4982 >>Turn in Bijou's Belongings
    .turnin 8966 >>Turn in The Left Piece of Lord Valthalak's Amulet
    .turnin 8989 >>Turn in The Right Piece of Lord Valthalak's Amulet
    .turnin 8995 >>Turn in Mea Culpa, Lord Valthalak
step
    .goto 1427,34.8,85.3
    >>Loot |cRXP_LOOT_[Blackhand's Command]|r from |cRXP_ENEMY_Scarshield Quartermaster|r, then click it to start the quest
    .turnin 7761 >>Turn in Blackhand's Command
step
    .goto 1428,65.24,24
    >>Talk to |cRXP_FRIENDLY_Tinkee Steamboil|r
    .turnin 4735 >>Turn in Egg Collection
    .target Tinkee Steamboil
step
    .goto 1418,2.9,47.76
    >>Talk to |cRXP_FRIENDLY_Shadowmage Vivian Lagrave|r
    .turnin 4768 >>Turn in The Darkstone Tablet
    .target Shadowmage Vivian Lagrave
step
    .goto 1418,5.81,47.52
    >>Talk to |cRXP_FRIENDLY_Warlord Goretooth|r
    .turnin 98325 >>Turn in Blood and Thunder
    .target Warlord Goretooth
step
    .goto 1444,46.39,18.24
    >>Talk to |cRXP_FRIENDLY_Rexxar|r
    .turnin 6602 >>Turn in Blood of the Black Dragon Champion
    .target Rexxar
step
    #completewith next
    +|cRXP_WARN_Run the dungeon (run 3)|r
step
    .goto 1427,34.8,85.3
    >>Inside Blackrock Spire: these quests start from a drop or an object in the dungeon
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
    +Dungeon entrance: Blackrock Spire. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
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
    .goto 2482,61.57,41.46
    >>Click the |cRXP_PICK_Troll Remains|r
    .accept 96998 >>Accept Tribal Colors
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
    .goto 2482,33.29,40.96
    >>Click the |cRXP_PICK_Old Wardrobe|r
    .accept 97001 >>Accept Sawyer's Legacy
step
    .goto 2482,41.27,45.33
    >>Talk to |cRXP_FRIENDLY_Jereman|r
    .turnin 99670 >>Turn in Return to Jereman
    .target Jereman
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
    >>Collect |cRXP_LOOT_[Horde Flag]|r. Collect |cRXP_LOOT_[Savory Stag Sliders]|r. Collect |cRXP_LOOT_[Hyjal Silphium]|r
    *Collect 1 Horde Flag and 3 Scraps of Horde Heraldry for Kal'tinzan at Elderwild.
    *Bring 6 Savory Stag Sliders to Ortak Lomgok in Elderwild.
    *Collect 12 Hyjal Silphium.
    .complete 91794,1 --Flags of Our Forebears
    .complete 97119,1 --Now We're Cooking
    .complete 96616,1 --Herbs for the Bruised and Weary
step
    .goto 2482,12.93,52.85
    >>Talk to |cRXP_FRIENDLY_Ortak Lomgok|r
    .turnin 97119 >>Turn in Now We're Cooking
    .turnin 96616 >>Turn in Herbs for the Bruised and Weary
    .target Ortak Lomgok
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
    .goto 2482,23.94,53.2
    >>Collect |cRXP_LOOT_[Watcher's Eye]|r from |cRXP_ENEMY_Eternal Sentry|r. Collect |cRXP_LOOT_[Reanimator's Amulet]|r from |cRXP_ENEMY_Scourge Reanimator|r. Kill |cRXP_ENEMY_Forgotten Soldier|r. Kill |cRXP_ENEMY_Fleshflay Ravener|r
    *Retrieve 8 Watcher's Eyes for Eluneth.
    *Use the Survivor's Torch on the Bone Pile, then collect the Reanimator's Amulet.
    *Eliminate 3 Forgotten Soldiers and 12 Fleshflay Raveners.
    .complete 90865,1 --Eyes of the Watchers
    .complete 92592,1 --Final Death
    .complete 95026,1 --Blight No More
    .complete 95026,2 --Blight No More
    .mob Eternal Sentry
    .mob Scourge Reanimator
    .mob Forgotten Soldier
    .mob Fleshflay Ravener
step
    .goto 2482,18.78,62.01
    >>Talk to |cRXP_FRIENDLY_Eluneth|r
    .turnin 90865 >>Turn in Eyes of the Watchers
    .target Eluneth
step
    .goto 2482,20.19,66.53
    >>Collect |cRXP_LOOT_[Hyjal Owl Feather]|r from |cRXP_ENEMY_Hyjal Owl|r, |cRXP_ENEMY_Tainted Hyjal Owl|r
    *Gather 9 Hyjal Owl Feathers for Zet'gan.
    .complete 92609,1 --Feathers in Flight
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
    .goto 2482,13.82,54.75
    >>Talk to |cRXP_FRIENDLY_Zet'gan|r
    .turnin 92592 >>Turn in Final Death
    .turnin 95026 >>Turn in Blight No More
    .turnin 92609 >>Turn in Feathers in Flight
    .accept 92446 >>Accept Head Scratcher
    .accept 90854 >>Accept Leather for Inclement Weather
    .target Zet'gan
step
    .goto 2482,33.36,71.16
    >>Collect |cRXP_LOOT_[Head Scratcher's Scratchers]|r from |cRXP_ENEMY_Head Scratcher|r
    *Take the rabbit carcass into the woods to the south, lure out Head Scratcher, defeat him, and bring his claws back to Zet'gan.
    .complete 92446,1 --Head Scratcher
    .mob Head Scratcher
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
    .accept 94782 >>Accept The Western Post
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
    .goto 2482,50.44,35.11
    >>Collect |cRXP_LOOT_[Scrap of Horde Heraldry]|r from |cRXP_ENEMY_Felguard Sentinel|r, |cRXP_ENEMY_Doomguard|r, |cRXP_ENEMY_Mazzogore|r
    *Collect 1 Horde Flag and 3 Scraps of Horde Heraldry for Kal'tinzan at Elderwild.
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
    .turnin 92446 >>Turn in Head Scratcher
    .turnin 94782 >>Turn in The Western Post
    .accept 95248 >>Accept To the Summit of Eternity
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
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 50-60
#name 60-60 Mount Hyjal/Silithus
#displayname 60-60 Mount Hyjal/Silithus
#next 55-60 Blackmaw Hold
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
    .goto 1451,48.95,36.69
    >>Talk to |cRXP_FRIENDLY_Scout Bloodfist|r
    .accept 9416 >>Accept Report to General Kirika
    .target Scout Bloodfist
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
<< Horde
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 50-60
#name 55-60 Blackmaw Hold
#displayname 55-60 Blackmaw Hold
#next 58-60 Shaper's Terrace
step
    +|cRXP_WARN_Blackmaw Hold|r (levels 55-60). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *New Forever dungeon in north Azshara, through the furbolg tunnel (bear-head entrance). The portal is deep inside.
    *Pre-quests in this guide: Beneath Nordrassil
step
    #completewith next
    +|cRXP_WARN_Pre-quests|r
step
    .goto 1447,22.56,51.42
    >>Talk to |cRXP_FRIENDLY_Jediga|r
    .accept 92346 >>Accept Beneath Nordrassil
    .target Jediga
step
    .goto 1456,75.65,31.61
    >>Talk to |cRXP_FRIENDLY_Nara Wildmane|r
    .turnin 92346 >>Turn in Beneath Nordrassil
    .target Nara Wildmane
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1456,75.65,31.61
    >>Talk to |cRXP_FRIENDLY_Nara Wildmane|r
    .accept 92343 >>Accept Get to the Roots of It
    .target Nara Wildmane
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
    .goto 1412,33.41,22.59
    >>Talk to |cRXP_FRIENDLY_Muln Earthfury|r
    .accept 97198 >>Accept Blackmaw Magic
    .target Muln Earthfury
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
<< Horde
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 50-60
#name 58-60 Shaper's Terrace
#displayname 58-60 Shaper's Terrace
#next 58-60 Scholomance
step
    +|cRXP_WARN_Shaper's Terrace|r (levels 58-60). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *New Forever dungeon on the hill north of Marshal's Refuge in Un'Goro. Power-crystal consoles inside open the way. No key needed.
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
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
    +|cRXP_WARN_Run the dungeon|r
step
    .goto 1449,48.1,6.1
    >>Enter |cRXP_WARN_Shaper's Terrace|r and run it with a group. Quest goals inside:
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
#group Peon Journey - 1-60 Questing and Dungeons
#groupweight 100
#subgroup Levels 50-60
#name 58-60 Scholomance
#displayname 58-60 Scholomance
#next 58-60 Stratholme
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
    +|cRXP_WARN_Run the dungeon|r
step
    .goto 1422,69.7,73.2
    >>Inside Scholomance: these quests start from a drop or an object in the dungeon
    .accept 8969 >>Accept The Left Piece of Lord Valthalak's Amulet
    .accept 8992 >>Accept The Right Piece of Lord Valthalak's Amulet
step
    .goto 1422,69.7,73.2
    >>Enter |cRXP_WARN_Scholomance|r and run it with a group. Quest goals inside:
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
<< Horde
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
    .goto 1423,22.23,63.51
    >>Talk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .accept 6133 >>Accept The Ranger Lord's Behest
    .target Nathanos Blightcaller
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
    .goto 1423,22.23,63.51
    >>Talk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
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
    .goto 1454,34.95,38.29
    >>Talk to |cRXP_FRIENDLY_Mokvar|r
    .accept 9032 >>Accept Bodley's Unfortunate Fate
    .accept 8930 >>Accept In Search of Anthion
    .target Mokvar
step
    .goto 1454,34.95,38.29
    >>Talk to |cRXP_FRIENDLY_Mokvar|r
    .turnin 9032 >>Turn in Bodley's Unfortunate Fate
    .target Mokvar
step
    .goto 1423,26.11,11.3
    >>Talk to |cRXP_FRIENDLY_Anthion Harmon|r
    .turnin 8930 >>Turn in In Search of Anthion
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
    .goto 1423,22.23,63.51
    >>Talk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .accept 6163 >>Accept Ramstein
    .target Nathanos Blightcaller
step
    .goto 1423,11.36,26.6
    >>Talk to |cRXP_FRIENDLY_Egan|r
    .accept 5282 >>Accept The Restless Souls
    .target Egan
step
    .goto 1423,26.11,11.3
    >>Talk to |cRXP_FRIENDLY_Anthion Harmon|r
    .accept 8945 >>Accept Dead Man's Plea
    .target Anthion Harmon
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
    *Ramstein: Travel to Stratholme and slay Ramstein the Gorger. Take his head as a souvenir for Nathanos.
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
    .complete 6163,1 --Ramstein
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
    .goto 1423,22.23,63.51
    >>Talk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .turnin 6163 >>Turn in Ramstein
    .target Nathanos Blightcaller
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
