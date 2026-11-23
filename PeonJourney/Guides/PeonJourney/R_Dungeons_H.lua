RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 10-19
#name 13-18 Ragefire Chasm pre-quests
#displayname 13-18 Ragefire Chasm pre-quests
#next 13-18 Ragefire Chasm
step
    +|cRXP_WARN_Ragefire Chasm: pre-quests|r. 2 quests, solo (no group needed), roughly 20 min. The run guide comes after this one. Click to start.
    *Pre-quests: Hidden Enemies
step
    .goto 1454,31.73,37.82
    >>Talk to |cRXP_FRIENDLY_Thrall|r
    .accept 5726 >>Accept Hidden Enemies
    .target Thrall
step
    .goto 1411,51.61,10.15
    >>Collect |cRXP_LOOT_[Lieutenant's Insignia]|r from |cRXP_ENEMY_Burning Blade Fanatic|r, |cRXP_ENEMY_Burning Blade Apprentice|r
    *Bring a Lieutenant's Insignia to Thrall in Orgrimmar.
    .complete 5726,1 --Hidden Enemies
    .mob Burning Blade Fanatic
    .mob Burning Blade Apprentice
step
    .goto 1454,31.73,37.82
    >>Talk to |cRXP_FRIENDLY_Thrall|r
    .turnin 5726 >>Turn in Hidden Enemies
    .accept 5727 >>Accept Hidden Enemies
    .target Thrall
step
    .goto 1454,31.73,37.82
    >>Talk to |cRXP_FRIENDLY_Thrall|r
    .turnin 5727 >>Turn in Hidden Enemies
    .target Thrall
step
    +|cRXP_WARN_Pre-quests done.|r Next: Ragefire Chasm itself. That guide tells you when to find a group. Click to continue.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 10-19
#name 13-18 Ragefire Chasm
#displayname 13-18 Ragefire Chasm
#next 15-20 Ruins of Lordaeron pre-quests
step
    +|cRXP_WARN_Ragefire Chasm|r (levels 13-18). Pick up 6 dungeon quests solo (roughly 50 min with the hand-ins), then ONE run with a group (roughly 1 h 20 min). No group needed until the run step. Click to start.
    *Its 2 pre-quests are in the guide before this one. Skipped them? Some quests below won't be offered: skip those steps.
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1454,31.73,37.82
    >>Talk to |cRXP_FRIENDLY_Thrall|r
    .accept 5728 >>Accept Hidden Enemies
    .target Thrall
step
    .goto 1454,49.47,50.59
    >>Talk to |cRXP_FRIENDLY_Neeru Fireblade|r
    .accept 5761 >>Accept Slaying the Beast
    .target Neeru Fireblade
step
    .goto 1456,70.14,29.52
    >>Talk to |cRXP_FRIENDLY_Rahauro|r
    .accept 5722 >>Accept Searching for the Lost Satchel
    .accept 5723 >>Accept Testing an Enemy's Strength
    .target Rahauro
step
    .goto 1458,56.25,92.2
    >>Talk to |cRXP_FRIENDLY_Varimathras|r
    .accept 5725 >>Accept The Power to Destroy...
    .target Varimathras
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in.|r
step
    .goto 1454,52.6,49
    >>Enter |cRXP_WARN_Ragefire Chasm|r with your group. Quest goals inside:
    *Testing an Enemy's Strength: Search Orgrimmar for Ragefire Chasm, then kill 8 Ragefire Troggs and 8 Ragefire Shaman before returning to Rahauro in Thunder Bluff.
    *The Power to Destroy...: Bring the books Spells of Shadow and Incantations from the Nether to Varimathras in Undercity.
    *Hidden Enemies: Kill Bazzalan and Jergosh the Invoker before returning to Thrall in Orgrimmar.
    *Slaying the Beast: Enter Ragefire Chasm and slay Taragaman the Hungerer, then bring his heart back to Neeru Fireblade in Orgrimmar.
    .complete 5723,1 --Testing an Enemy's Strength
    .complete 5723,2 --Testing an Enemy's Strength
    .complete 5725,1 --The Power to Destroy...
    .complete 5725,2 --The Power to Destroy...
    .complete 5728,1 --Hidden Enemies
    .complete 5728,2 --Hidden Enemies
    .complete 5761,1 --Slaying the Beast
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1454,49.47,50.59
    >>Talk to |cRXP_FRIENDLY_Neeru Fireblade|r
    .turnin 5761 >>Turn in Slaying the Beast
    .target Neeru Fireblade
step
    .goto 1454,31.73,37.82
    >>Talk to |cRXP_FRIENDLY_Thrall|r
    .turnin 5728 >>Turn in Hidden Enemies
    .target Thrall
step
    .goto 1456,70.14,29.52
    >>Talk to |cRXP_FRIENDLY_Rahauro|r
    .turnin 5722 >>Turn in Searching for the Lost Satchel
    .turnin 5723 >>Turn in Testing an Enemy's Strength
    .target Rahauro
step
    .goto 1458,56.25,92.2
    >>Talk to |cRXP_FRIENDLY_Varimathras|r
    .turnin 5725 >>Turn in The Power to Destroy...
    .target Varimathras
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in. (run 2)|r
step
    .goto 1454,52.6,49
    >>Inside Ragefire Chasm: these quests start from a drop or an object in the dungeon
    .accept 5724 >>Accept Returning the Lost Satchel
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1456,70.14,29.52
    >>Talk to |cRXP_FRIENDLY_Rahauro|r
    .turnin 5724 >>Turn in Returning the Lost Satchel
    .target Rahauro
step
    .goto 1454,52.6,49
    +Dungeon entrance: Ragefire Chasm. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 10-19
#name 15-20 Ruins of Lordaeron pre-quests
#displayname 15-20 Ruins of Lordaeron pre-quests
#next 15-20 Ruins of Lordaeron
step
    +|cRXP_WARN_Ruins of Lordaeron: pre-quests|r. 5 quests, solo (no group needed), roughly 1 h 35 min. The run guide comes after this one. Click to start.
    *Pre-quests: Rear Guard Patrol, A Recipe For Death
step
    .goto 1420,65.49,60.25
    >>Talk to |cRXP_FRIENDLY_Deathguard Linnea|r
    .accept 356 >>Accept Rear Guard Patrol
    .target Deathguard Linnea
step
    .goto 1420,77.83,59.47
    >>Kill |cRXP_ENEMY_Bleeding Horror|r. Kill |cRXP_ENEMY_Wandering Spirit|r
    *Kill 8 Bleeding Horrors and 8 Wandering Spirits, then report back to Linnea at her camp.
    .complete 356,1 --Rear Guard Patrol
    .complete 356,2 --Rear Guard Patrol
    .mob Bleeding Horror
    .mob Wandering Spirit
step
    .goto 1420,65.49,60.25
    >>Talk to |cRXP_FRIENDLY_Deathguard Linnea|r
    .turnin 356 >>Turn in Rear Guard Patrol
    .accept 99156 >>Accept Rear Guard Patrol << Orc/Undead
    .target Deathguard Linnea
step
    .goto 1420,82.62,45.54
    >>Collect |cRXP_LOOT_[Riptear's Heart]|r from |cRXP_ENEMY_Riptear|r
    *Bring Riptear's Heart to Deathguard Linnea.
    .complete 99156,1 << Orc/Undead --Rear Guard Patrol
    .mob Riptear
step
    .goto 1420,65.49,60.25
    >>Talk to |cRXP_FRIENDLY_Deathguard Linnea|r
    .turnin 99156 >>Turn in Rear Guard Patrol << Orc/Undead
    .target Deathguard Linnea
step
    .goto 1421,42.8,40.86
    >>Talk to |cRXP_FRIENDLY_Apothecary Renferrel|r
    .accept 447 >>Accept A Recipe For Death
    .target Apothecary Renferrel
step
    .goto 1429,72.07,40.56
    >>Collect |cRXP_LOOT_[Grizzled Bear Heart]|r from |cRXP_ENEMY_Elmpaw|r, |cRXP_ENEMY_Giant Grizzled Bear|r, |cRXP_ENEMY_Old Vicejaw|r
    *Collect 6 Grizzled Bear Hearts and 6 samples of Skittering Blood and deliver them to Master Apothecary Faranell in the Undercity.
    .complete 447,1 --A Recipe For Death
    .mob Elmpaw
    .mob Giant Grizzled Bear
step
    .goto 1421,34.8,12.72
    >>Collect |cRXP_LOOT_[Skittering Blood]|r from |cRXP_ENEMY_Moss Stalker|r, |cRXP_ENEMY_Mist Creeper|r, |cRXP_ENEMY_Krethis Shadowspinner|r
    *Collect 6 Grizzled Bear Hearts and 6 samples of Skittering Blood and deliver them to Master Apothecary Faranell in the Undercity.
    .complete 447,2 --A Recipe For Death
    .mob Moss Stalker
    .mob Mist Creeper
step
    .goto 1458,48.82,69.28
    >>Talk to |cRXP_FRIENDLY_Master Apothecary Faranell|r
    .turnin 447 >>Turn in A Recipe For Death
    .accept 450 >>Accept A Recipe For Death
    .target Master Apothecary Faranell
step
    .goto 1421,42.98,73.18
    >>Collect |cRXP_LOOT_[Berard's Journal]|r from |cRXP_PICK_Berard's Bookshelf|r
    *Retrieve Apothecary Berard's journal from Pyrewood Village and take it to Apothecary Renferrel at the Sepulcher.
    .complete 450,1 --A Recipe For Death
step
    .goto 1421,42.8,40.86
    >>Talk to |cRXP_FRIENDLY_Apothecary Renferrel|r
    .turnin 450 >>Turn in A Recipe For Death
    .accept 451 >>Accept A Recipe For Death
    .target Apothecary Renferrel
step
    .goto 1421,70,33.56
    >>Collect |cRXP_LOOT_[Lake Skulker Moss]|r from |cRXP_ENEMY_Lake Skulker|r, |cRXP_ENEMY_Elder Lake Skulker|r
    *Bring 6 samples of Lake Creeper Moss, 6 samples of Lake Skulker Moss and a Hardened Tumor to Master Apothecary Faranell in the Undercity.
    .complete 451,1 --A Recipe For Death
    .mob Lake Skulker
    .mob Elder Lake Skulker
step
    .goto 1421,77.54,25.23
    >>Collect |cRXP_LOOT_[Lake Creeper Moss]|r from |cRXP_ENEMY_Lake Creeper|r, |cRXP_ENEMY_Elder Lake Creeper|r
    *Bring 6 samples of Lake Creeper Moss, 6 samples of Lake Skulker Moss and a Hardened Tumor to Master Apothecary Faranell in the Undercity.
    .complete 451,2 --A Recipe For Death
    .mob Lake Creeper
    .mob Elder Lake Creeper
step
    .goto 1421,61.29,15.94
    >>Collect |cRXP_LOOT_[Hardened Tumor]|r from |cRXP_ENEMY_Vile Fin Shredder|r, |cRXP_ENEMY_Vile Fin Tidehunter|r, |cRXP_ENEMY_Vile Fin Oracle|r
    *Bring 6 samples of Lake Creeper Moss, 6 samples of Lake Skulker Moss and a Hardened Tumor to Master Apothecary Faranell in the Undercity.
    .complete 451,3 --A Recipe For Death
    .mob Vile Fin Shredder
    .mob Vile Fin Tidehunter
step
    .goto 1458,48.82,69.28
    >>Talk to |cRXP_FRIENDLY_Master Apothecary Faranell|r
    .turnin 451 >>Turn in A Recipe For Death
    .target Master Apothecary Faranell
step
    +|cRXP_WARN_Pre-quests done.|r Next: Ruins of Lordaeron itself. That guide tells you when to find a group. Click to continue.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 10-19
#name 15-20 Ruins of Lordaeron
#displayname 15-20 Ruins of Lordaeron
#next 15-24 Wailing Caverns pre-quests
step
    +|cRXP_WARN_Ruins of Lordaeron|r (levels 15-20). Pick up 9 dungeon quests solo (roughly 45 min with the hand-ins), then ONE run with a group (roughly 40 min). No group needed until the run step. Click to start.
    *New Forever dungeon in the ruined city above the Undercity. Before the keep, look left and climb the stairs. Alliance: entering the Undercity area flags you for PvP.
    *Its 5 pre-quests are in the guide before this one. Skipped them? Some quests below won't be offered: skip those steps.
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1458,46.31,71.91
    >>Talk to |cRXP_FRIENDLY_Theodore Griffs|r
    .accept 95216 >>Accept The New Plague
    .target Theodore Griffs
step
    .goto 1458,58.08,89.51
    >>Talk to |cRXP_FRIENDLY_Morbin Lightbane|r
    .accept 92421 >>Accept Light's Justice
    .target Morbin Lightbane
step
    .goto 1421,44.52,43.02
    >>Talk to |cRXP_FRIENDLY_Tabitha Heartweaver|r
    .accept 92401 >>Accept A Frightened Request
    .target Tabitha Heartweaver
step
    .goto 1420,65.25,60.2
    >>Talk to |cRXP_FRIENDLY_Deathguard Kristof|r
    .accept 92422 >>Accept The Wrath of Rath'mael
    .target Deathguard Kristof
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in.|r
step
    .goto 1420,72.4,11.6
    >>Inside Ruins of Lordaeron: loot |cRXP_LOOT_[Crest of Lordaeron]|r and click it to start the quest
    .accept 95204 >>Accept Crest of Lordaeron
    .use 275521
step
    .goto 1420,72.4,11.6
    >>Loot |cRXP_LOOT_[Abominable Head]|r from |cRXP_ENEMY_The Baron|r, then click it to start the quest
    .accept 97288 >>Accept Unending Torment
    .use 280438
    .mob The Baron
step
    .goto 1420,72.4,11.6
    >>Enter |cRXP_WARN_Ruins of Lordaeron|r with your group. Quest goals inside:
    *A Frightened Request: Investigate the disappearance of Edward Heartweaver in the Ruins of Lordaeron.
    *Light's Justice: Collect 25 Intact Limbs within The Ruins of Lordaeron for Morbin Lightbane in the Undercity.
    *The Wrath of Rath'mael: Kill Rath'mael in the Ruins of Lordaeron for Deathguard Kristof in Brill.
    *The New Plague: Collect the Highly Toxic Strain from Witherfang in Ruins of Lordaeron for Theodore Griffs in Undercity.
    .complete 92401,1 --A Frightened Request
    .complete 92421,1 --Light's Justice
    .complete 92422,1 --The Wrath of Rath'mael
    .complete 95216,1 --The New Plague
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1420,65.25,60.2
    >>Talk to |cRXP_FRIENDLY_Deathguard Kristof|r
    .turnin 92422 >>Turn in The Wrath of Rath'mael
    .target Deathguard Kristof
step
    .goto 1421,44.52,43.02
    >>Talk to |cRXP_FRIENDLY_Tabitha Heartweaver|r
    .turnin 92401 >>Turn in A Frightened Request
    .target Tabitha Heartweaver
step
    .goto 1458,58.08,89.51
    >>Talk to |cRXP_FRIENDLY_Morbin Lightbane|r
    .turnin 92421 >>Turn in Light's Justice
    .target Morbin Lightbane
step
    .goto 1458,46.31,71.91
    >>Talk to |cRXP_FRIENDLY_Theodore Griffs|r
    .turnin 95216 >>Turn in The New Plague
    .target Theodore Griffs
step
    .goto 1458,48.82,69.28
    >>Talk to |cRXP_FRIENDLY_Master Apothecary Faranell|r
    .turnin 97288 >>Turn in Unending Torment
    .target Master Apothecary Faranell
step
    .goto 1458,73.06,32.85
    >>Talk to |cRXP_FRIENDLY_Oran Snakewrithe|r
    .turnin 95204 >>Turn in Crest of Lordaeron
    .target Oran Snakewrithe
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1458,48.82,69.28
    >>Talk to |cRXP_FRIENDLY_Master Apothecary Faranell|r
    .accept 97289 >>Accept Unending Torment
    .target Master Apothecary Faranell
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1458,45.88,61.7
    >>Talk to |cRXP_FRIENDLY_Unfinished Abomination|r
    .turnin 97289 >>Turn in Unending Torment
    .target Unfinished Abomination
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1458,45.88,61.7
    >>Talk to |cRXP_FRIENDLY_Unfinished Abomination|r
    .accept 97290 >>Accept Unending Torment
    .target Unfinished Abomination
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1458,48.82,69.28
    >>Talk to |cRXP_FRIENDLY_Master Apothecary Faranell|r
    .turnin 97290 >>Turn in Unending Torment
    .target Master Apothecary Faranell
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1458,48.82,69.28
    >>Talk to |cRXP_FRIENDLY_Master Apothecary Faranell|r
    .accept 97291 >>Accept Unending Torment
    .target Master Apothecary Faranell
step
    .goto 1458,54,49.31
    >>Collect |cRXP_LOOT_[Blisterweed]|r from |cRXP_PICK_Blisterweed|r
    *Collect a Toxic Skullcap from Tawny Grisette in the Trade Quarter, Blisterweed near the Herbalism Trainer, and Essence of Agony from the poison vendor in the Rogues' Quarter for Master Apothecary Faranell in Undercity.
    .complete 97291,2 --Unending Torment
step
    .goto 1458,65.19,49.84
    >>Buy |cRXP_LOOT_[Toxic Skullcap]|r from |cRXP_FRIENDLY_Tawny Grisette|r
    *Collect a Toxic Skullcap from Tawny Grisette in the Trade Quarter, Blisterweed near the Herbalism Trainer, and Essence of Agony from the poison vendor in the Rogues' Quarter for Master Apothecary Faranell in Undercity.
    .complete 97291,1 --Unending Torment
step
    .goto 1458,75.2,51.18
    >>Buy |cRXP_LOOT_[Essence of Agony]|r from |cRXP_FRIENDLY_Ezekiel Graves|r
    *Collect a Toxic Skullcap from Tawny Grisette in the Trade Quarter, Blisterweed near the Herbalism Trainer, and Essence of Agony from the poison vendor in the Rogues' Quarter for Master Apothecary Faranell in Undercity.
    .complete 97291,3 --Unending Torment
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1458,48.82,69.28
    >>Talk to |cRXP_FRIENDLY_Master Apothecary Faranell|r
    .turnin 97291 >>Turn in Unending Torment
    .target Master Apothecary Faranell
step
    >>|cRXP_WARN_Also part of this dungeon (later follow-ups or missing data). Do them if they are offered:|r
    *Unending Torment
    +Done
step
    .goto 1420,72.4,11.6
    +Dungeon entrance: Ruins of Lordaeron. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 10-19
#name 15-24 Wailing Caverns pre-quests
#displayname 15-24 Wailing Caverns pre-quests
#next 15-24 Wailing Caverns
step
    +|cRXP_WARN_Wailing Caverns: pre-quests|r. 4 quests, solo (no group needed), roughly 20 min. The run guide comes after this one. Click to start.
    *Pre-quests: Raptor Horns, The Forgotten Pools, The Stagnant Oasis, Altered Beings
step
    .goto 1413,52.26,31.93
    >>Talk to |cRXP_FRIENDLY_Tonga Runetotem|r
    .accept 870 >>Accept The Forgotten Pools
    .target Tonga Runetotem
step
    .goto 1413,45.06,22.53
    >>Explore the waters of the Forgotten Pools
    *Report back to Tonga Runetotem with your findings.
    .complete 870,1 --The Forgotten Pools
step
    .goto 1413,52.26,31.93
    >>Talk to |cRXP_FRIENDLY_Tonga Runetotem|r
    .turnin 870 >>Turn in The Forgotten Pools
    .accept 877 >>Accept The Stagnant Oasis
    .target Tonga Runetotem
step
    .goto 1413,62.37,37.62
    >>Talk to |cRXP_FRIENDLY_Mebok Mizzyrix|r
    .accept 865 >>Accept Raptor Horns
    .target Mebok Mizzyrix
step
    .goto 1413,55.61,42.75
    >>Click |cRXP_PICK_Bubbling Fissure|r. Collect |cRXP_LOOT_[Intact Raptor Horn]|r from |cRXP_ENEMY_Sunscale Scytheclaw|r, |cRXP_ENEMY_Ishamuhale|r, |cRXP_ENEMY_Takk the Leaper|r
    *Return to Tonga at The Crossroads, after investigating the Stagnant Oasis.
    *Gather 5 Intact Raptor Horns from Sunscale Scytheclaws, and bring them to Mebok Mizzyrix in Ratchet.
    .complete 877,1 --The Stagnant Oasis
    .complete 865,1 --Raptor Horns
    .mob Sunscale Scytheclaw
    .mob Ishamuhale
step
    .goto 1413,62.37,37.62
    >>Talk to |cRXP_FRIENDLY_Mebok Mizzyrix|r
    .turnin 865 >>Turn in Raptor Horns
    .target Mebok Mizzyrix
step
    .goto 1413,52.26,31.93
    >>Talk to |cRXP_FRIENDLY_Tonga Runetotem|r
    .turnin 877 >>Turn in The Stagnant Oasis
    .accept 880 >>Accept Altered Beings
    .target Tonga Runetotem
step
    .goto 1413,48.2,40.2
    >>Collect |cRXP_LOOT_[Altered Snapjaw Shell]|r from |cRXP_ENEMY_Oasis Snapjaw Hatchling|r
    *Bring 8 Altered Snapjaw Shells to Tonga Runetotem at the Crossroads.
    .complete 880,1 --Altered Beings
    .mob Oasis Snapjaw Hatchling
step
    .goto 1413,52.26,31.93
    >>Talk to |cRXP_FRIENDLY_Tonga Runetotem|r
    .turnin 880 >>Turn in Altered Beings
    .target Tonga Runetotem
step
    +|cRXP_WARN_Pre-quests done.|r Next: Wailing Caverns itself. That guide tells you when to find a group. Click to continue.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 10-19
#name 15-24 Wailing Caverns
#displayname 15-24 Wailing Caverns
#next 20-30 Shadowfang Keep
step
    +|cRXP_WARN_Wailing Caverns|r (levels 15-24). Pick up 9 dungeon quests solo (roughly 35 min with the hand-ins), then ONE run with a group (roughly 1 h 20 min). No group needed until the run step. Click to start.
    *Its 4 pre-quests are in the guide before this one. Skipped them? Some quests below won't be offered: skip those steps.
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1413,52.26,31.93
    >>Talk to |cRXP_FRIENDLY_Tonga Runetotem|r
    .accept 1489 >>Accept Hamuul Runetotem
    .target Tonga Runetotem
step
    .goto 1413,45.99,35.66
    >>Talk to |cRXP_FRIENDLY_Nalpak|r
    .accept 1486 >>Accept Deviate Hides
    .target Nalpak
step
    .goto 1413,46.01,35.74
    >>Talk to |cRXP_FRIENDLY_Ebru|r
    .accept 1487 >>Accept Deviate Eradication
    .target Ebru
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
    .goto 1456,22.81,20.89
    >>Talk to |cRXP_FRIENDLY_Apothecary Zamah|r
    .accept 962 >>Accept Serpentbloom
    .target Apothecary Zamah
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
    *Serpentbloom: Apothecary Zamah in Thunder Bluff wants you to collect 10 Serpentbloom.
    *Deviate Hides: Nalpak in the Wailing Caverns wants 20 Deviate Hides.
    *Deviate Eradication: Ebru in the Wailing Caverns wants you to kill 7 Deviate Ravagers, 7 Deviate Vipers, 7 Deviate Shamblers and 7 Deviate Dreadfangs.
    *Smart Drinks: Bring 6 portions of Wailing Essence to Mebok Mizzyrix in Ratchet.
    .complete 962,1 --Serpentbloom
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
    .goto 1456,22.81,20.89
    >>Talk to |cRXP_FRIENDLY_Apothecary Zamah|r
    .turnin 962 >>Turn in Serpentbloom
    .target Apothecary Zamah
step
    .goto 1456,78.62,28.56
    >>Talk to |cRXP_FRIENDLY_Arch Druid Hamuul Runetotem|r
    .turnin 1489 >>Turn in Hamuul Runetotem
    .target Arch Druid Hamuul Runetotem
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1456,78.62,28.56
    >>Talk to |cRXP_FRIENDLY_Arch Druid Hamuul Runetotem|r
    .accept 1490 >>Accept Nara Wildmane
    .target Arch Druid Hamuul Runetotem
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1456,75.65,31.61
    >>Talk to |cRXP_FRIENDLY_Nara Wildmane|r
    .turnin 1490 >>Turn in Nara Wildmane
    .target Nara Wildmane
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1456,75.65,31.61
    >>Talk to |cRXP_FRIENDLY_Nara Wildmane|r
    .accept 914 >>Accept Leaders of the Fang
    .target Nara Wildmane
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in. (run 2)|r
step
    .goto 1413,46,36.5
    >>Enter |cRXP_WARN_Wailing Caverns|r with your group. Quest goals inside:
    *Leaders of the Fang: Bring the Gems of Cobrahn, Anacondra, Pythas and Serpentis to Nara Wildmane in Thunder Bluff.
    .complete 914,1 --Leaders of the Fang
    .complete 914,2 --Leaders of the Fang
    .complete 914,3 --Leaders of the Fang
    .complete 914,4 --Leaders of the Fang
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1456,75.65,31.61
    >>Talk to |cRXP_FRIENDLY_Nara Wildmane|r
    .turnin 914 >>Turn in Leaders of the Fang
    .target Nara Wildmane
step
    .goto 1413,46,36.5
    +Dungeon entrance: Wailing Caverns. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 20-29
#name 20-30 Shadowfang Keep
#displayname 20-30 Shadowfang Keep
#next 24-32 Blackfathom Deeps
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
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 20-29
#name 24-32 Blackfathom Deeps
#displayname 24-32 Blackfathom Deeps
#next 26-31 Excavation Site: Wetlands
step
    +|cRXP_WARN_Blackfathom Deeps|r (levels 24-32). Pick up 7 dungeon quests solo (roughly 25 min with the hand-ins), then ONE run with a group (roughly 1 h 40 min). No group needed until the run step. Click to start.
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
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
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
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
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 20-29
#name 26-31 Excavation Site: Wetlands
#displayname 26-31 Excavation Site: Wetlands
#next 28-33 City of Dalaran
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
#group Peon Journey - Dungeon Quests Only
#groupweight 80
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
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 20-29
#name 29-38 Gnomeregan
#displayname 29-38 Gnomeregan
#next 29-38 Razorfen Kraul
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
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 20-29
#name 29-38 Razorfen Kraul
#displayname 29-38 Razorfen Kraul
#next 30-38 Scarlet Monastery Graveyard pre-quests
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
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 30-39
#name 30-38 Scarlet Monastery Graveyard pre-quests
#displayname 30-38 Scarlet Monastery Graveyard pre-quests
#next 30-38 Scarlet Monastery Graveyard
step
    +|cRXP_WARN_Scarlet Monastery Graveyard: pre-quests|r. 1 quests, solo (no group needed), roughly 5 min. The run guide comes after this one. Click to start.
    *Pre-quests: Going, Going, Guano!
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
    +|cRXP_WARN_Pre-quests done.|r Next: Scarlet Monastery Graveyard itself. That guide tells you when to find a group. Click to continue.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 30-39
#name 30-38 Scarlet Monastery Graveyard
#displayname 30-38 Scarlet Monastery Graveyard
#next 33-41 Scarlet Monastery Library pre-quests
step
    +|cRXP_WARN_Scarlet Monastery Graveyard|r (levels 30-38). Pick up 2 dungeon quests solo (roughly 25 min with the hand-ins), then ONE run with a group (roughly 25 min). No group needed until the run step. Click to start.
    *Door: Graveyard: the open portal farthest left. No key.
    *Four wings: Graveyard 30-38, Library 33-41, Armory 36-44, Cathedral 38-46.
    *Its 1 pre-quests are in the guide before this one. Skipped them? Some quests below won't be offered: skip those steps.
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
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 30-39
#name 33-41 Scarlet Monastery Library pre-quests
#displayname 33-41 Scarlet Monastery Library pre-quests
#next 33-41 Scarlet Monastery Library
step
    +|cRXP_WARN_Scarlet Monastery Library: pre-quests|r. 7 quests, solo (no group needed), roughly 1 h. The run guide comes after this one. Click to start.
    *Pre-quests: Test of Faith, Test of Endurance, Test of Strength, Test of Lore
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
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 30-39
#name 33-41 Scarlet Monastery Library
#displayname 33-41 Scarlet Monastery Library
#next 35-40 The Drowned City pre-quests
step
    +|cRXP_WARN_Scarlet Monastery Library|r (levels 33-41). Pick up 3 dungeon quests solo (roughly 35 min with the hand-ins), then ONE run with a group (roughly 35 min). No group needed until the run step. Click to start.
    *Door: Library: the open portal farthest right inside the main building. No key. Doan's Strongbox (behind Arcanist Doan) drops The Scarlet Key for Armory and Cathedral.
    *Four wings: Graveyard 30-38, Library 33-41, Armory 36-44, Cathedral 38-46.
    *Its 7 pre-quests are in the guide before this one. Skipped them? Some quests below won't be offered: skip those steps.
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
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 30-39
#name 35-40 The Drowned City pre-quests
#displayname 35-40 The Drowned City pre-quests
#next 35-40 The Drowned City
step
    +|cRXP_WARN_The Drowned City: pre-quests|r. 4 quests, solo (no group needed), roughly 20 min. The run guide comes after this one. Click to start.
    *Pre-quests: The Vile Reef, The Gurubashi Legends of Old, Locating the Lost City, Enemies in the Water
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
    .goto 1434,22.7,25.92
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
    +|cRXP_WARN_Pre-quests done.|r Next: The Drowned City itself. That guide tells you when to find a group. Click to continue.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 30-39
#name 35-40 The Drowned City
#displayname 35-40 The Drowned City
#next 36-44 Scarlet Monastery Armory
step
    +|cRXP_WARN_The Drowned City|r (levels 35-40). Pick up 5 dungeon quests solo (roughly 35 min with the hand-ins), then ONE run with a group (roughly 1 h). No group needed until the run step. Click to start.
    *New Forever dungeon, underwater off the west coast of Stranglethorn, west of Grom'gol. Bring water breathing. Nearest flights: Booty Bay, Grom'gol.
    *Its 4 pre-quests are in the guide before this one. Skipped them? Some quests below won't be offered: skip those steps.
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
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 30-39
#name 36-44 Scarlet Monastery Armory
#displayname 36-44 Scarlet Monastery Armory
#next 37-46 Razorfen Downs pre-quests
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
#group Peon Journey - Dungeon Quests Only
#groupweight 80
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
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 30-39
#name 37-46 Razorfen Downs
#displayname 37-46 Razorfen Downs
#next 38-46 Scarlet Monastery Cathedral
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
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 30-39
#name 38-46 Scarlet Monastery Cathedral
#displayname 38-46 Scarlet Monastery Cathedral
#next 40-45 Krol'dok Stronghold pre-quests
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
#group Peon Journey - Dungeon Quests Only
#groupweight 80
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
    .goto 2548,74.1,31.67
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
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 40-49
#name 40-45 Krol'dok Stronghold
#displayname 40-45 Krol'dok Stronghold
#next 41-51 Uldaman pre-quests
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
#group Peon Journey - Dungeon Quests Only
#groupweight 80
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
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 40-49
#name 41-51 Uldaman
#displayname 41-51 Uldaman
#next 44-54 Zul'Farrak pre-quests
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
#group Peon Journey - Dungeon Quests Only
#groupweight 80
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
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 40-49
#name 44-54 Zul'Farrak
#displayname 44-54 Zul'Farrak
#next 46-55 Maraudon pre-quests
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
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 40-49
#name 46-55 Maraudon pre-quests
#displayname 46-55 Maraudon pre-quests
#next 46-55 Maraudon
step
    +|cRXP_WARN_Maraudon: pre-quests|r. 7 quests, solo (no group needed), roughly 35 min. The run guide comes after this one. Click to start.
    *Pre-quests: Strange Pylons, A Brief History Lesson, Forlorn Gardens, Meeting the Magister, Word of the Woods, Fragments of the Pylons, Powering the Pylons
step
    .goto 2652,43.65,34.31
    >>Click the |cRXP_PICK_Shen'dralar Pylon|r
    .accept 92914 >>Accept Strange Pylons
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
    +|cRXP_WARN_Pre-quests done.|r Next: Maraudon itself. That guide tells you when to find a group. Click to continue.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 40-49
#name 46-55 Maraudon
#displayname 46-55 Maraudon
#next 48-53 Alcaz Prison pre-quests
step
    +|cRXP_WARN_Maraudon|r (levels 46-55). Pick up 10 dungeon quests solo (roughly 1 h 20 min with the hand-ins), then ONE run with a group (roughly 2 h 20 min). No group needed until the run step. Click to start.
    *Its 7 pre-quests are in the guide before this one. Skipped them? Some quests below won't be offered: skip those steps.
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
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
#group Peon Journey - Dungeon Quests Only
#groupweight 80
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
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 40-49
#name 48-53 Alcaz Prison
#displayname 48-53 Alcaz Prison
#next 50-60 The Temple of Atal'Hakkar pre-quests
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
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 50-60
#name 50-60 The Temple of Atal'Hakkar pre-quests
#displayname 50-60 The Temple of Atal'Hakkar pre-quests
#next 50-60 The Temple of Atal'Hakkar
step
    +|cRXP_WARN_The Temple of Atal'Hakkar: pre-quests|r. 9 quests, solo (no group needed), roughly 2 h 20 min. The run guide comes after this one. Click to start.
    *Pre-quests: Pool of Tears, The Atal'ai Exile, Return to Fel'Zerul, The Stone Circle, Screecher Spirits, The Prophecy of Mosh'aru, Larion and Muigin, Marvon's Workshop, The Ancient Egg
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
    +|cRXP_WARN_Pre-quests done.|r Next: The Temple of Atal'Hakkar itself. That guide tells you when to find a group. Click to continue.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 50-60
#name 50-60 The Temple of Atal'Hakkar
#displayname 50-60 The Temple of Atal'Hakkar
#next 52-60 Blackrock Depths pre-quests
step
    +|cRXP_WARN_The Temple of Atal'Hakkar|r (levels 50-60). Pick up 9 dungeon quests solo (roughly 1 h 30 min with the hand-ins), then ONE run with a group (roughly 1 h 20 min). No group needed until the run step. Click to start.
    *Its 9 pre-quests are in the guide before this one. Skipped them? Some quests below won't be offered: skip those steps.
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
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 50-60
#name 52-60 Blackrock Depths pre-quests
#displayname 52-60 Blackrock Depths pre-quests
#next 52-60 Blackrock Depths
step
    +|cRXP_WARN_Blackrock Depths: pre-quests|r. 15 quests, solo (no group needed), roughly 2 h 20 min. The run guide comes after this one. Click to start.
    *Pre-quests: Forging the Shaft, The Flame's Casing, The Torch of Retribution, Squire Maltrake, Set Them Ablaze!, Trinkets..., Disharmony of Flame, A Taste of Flame, The Rise of the Machines, In Search of Anthion, Dead Man's Plea, Anthion's Strange Request...
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
    +|cRXP_WARN_Pre-quests done.|r Next: Blackrock Depths itself. That guide tells you when to find a group. Click to continue.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 50-60
#name 52-60 Blackrock Depths
#displayname 52-60 Blackrock Depths
#next 54-60 Dire Maul East pre-quests
step
    +|cRXP_WARN_Blackrock Depths|r (levels 52-60). Pick up 25 dungeon quests solo (roughly 2 h 55 min with the hand-ins), then ONE run with a group (roughly 4 h). No group needed until the run step. Click to start.
    *Its 15 pre-quests are in the guide before this one. Skipped them? Some quests below won't be offered: skip those steps.
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
#group Peon Journey - Dungeon Quests Only
#groupweight 80
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
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 50-60
#name 54-60 Dire Maul East
#displayname 54-60 Dire Maul East
#next 55-60 Lower Blackrock Spire pre-quests
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
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 50-60
#name 55-60 Lower Blackrock Spire pre-quests
#displayname 55-60 Lower Blackrock Spire pre-quests
#next 55-60 Lower Blackrock Spire
step
    +|cRXP_WARN_Lower Blackrock Spire: pre-quests|r. 10 quests, solo (no group needed), roughly 2 h 55 min. The run guide comes after this one. Click to start.
    *Pre-quests: Screecher Spirits, The Prophecy of Mosh'aru, The God Hakkar, Broodling Essence, The Ancient Egg, Felnok Steelspring, Chillwind Horns, Return to Tinkee, The Lost Tablets of Mosh'aru, Bodley's Unfortunate Fate
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
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 50-60
#name 55-60 Lower Blackrock Spire
#displayname 55-60 Lower Blackrock Spire
#next 55-60 Blackmaw Hold pre-quests
step
    +|cRXP_WARN_Lower Blackrock Spire|r (levels 55-60). Pick up 16 dungeon quests solo (roughly 1 h 15 min with the hand-ins), then ONE run with a group (roughly 4 h 30 min). No group needed until the run step. Click to start.
    *Door: Blackrock Spire door inside Blackrock Mountain. No key.
    *Lower Blackrock Spire 55-60, Upper Blackrock Spire 59-60.
    *Its 10 pre-quests are in the guide before this one. Skipped them? Some quests below won't be offered: skip those steps.
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
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 50-60
#name 55-60 Blackmaw Hold pre-quests
#displayname 55-60 Blackmaw Hold pre-quests
#next 55-60 Blackmaw Hold
step
    +|cRXP_WARN_Blackmaw Hold: pre-quests|r. 1 quests, solo (no group needed), roughly 10 min. The run guide comes after this one. Click to start.
    *Pre-quests: Beneath Nordrassil
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
    +|cRXP_WARN_Pre-quests done.|r Next: Blackmaw Hold itself. That guide tells you when to find a group. Click to continue.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 50-60
#name 55-60 Blackmaw Hold
#displayname 55-60 Blackmaw Hold
#next 56-60 Dire Maul West pre-quests
step
    +|cRXP_WARN_Blackmaw Hold|r (levels 55-60). Pick up 8 dungeon quests solo (roughly 55 min with the hand-ins), then ONE run with a group (roughly 1 h 20 min). No group needed until the run step. Click to start.
    *New Forever dungeon in north Azshara, through the furbolg tunnel (bear-head entrance). The portal is deep inside.
    *Its 1 pre-quests are in the guide before this one. Skipped them? Some quests below won't be offered: skip those steps.
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
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
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 50-60
#name 56-60 Dire Maul West pre-quests
#displayname 56-60 Dire Maul West pre-quests
#next 56-60 Dire Maul West
step
    +|cRXP_WARN_Dire Maul West: pre-quests|r. 3 quests, solo (no group needed), roughly 40 min. The run guide comes after this one. Click to start.
    *Pre-quests: In Search of Anthion, Dead Man's Plea, Anthion's Strange Request
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
    +|cRXP_WARN_Pre-quests done.|r Next: Dire Maul West itself. That guide tells you when to find a group. Click to continue.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 50-60
#name 56-60 Dire Maul West
#displayname 56-60 Dire Maul West
#next 56-60 Dire Maul North
step
    +|cRXP_WARN_Dire Maul West|r (levels 56-60). Pick up 11 dungeon quests solo (roughly 40 min with the hand-ins), then ONE run with a group (roughly 3 h). No group needed until the run step. Click to start.
    *Door: West wall of the central courtyard. Needs the Crescent Key (Pusillin, Dire Maul East).
    *East 54-60, West 56-60, North 56-60.
    *Its 3 pre-quests are in the guide before this one. Skipped them? Some quests below won't be offered: skip those steps.
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1423,26.11,11.3
    >>Talk to |cRXP_FRIENDLY_Anthion Harmon|r
    .accept 8948 >>Accept Anthion's Old Friend
    .target Anthion Harmon
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
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1444,60.3,30.2
    >>Inside Dire Maul West: these quests start from a drop or an object in the dungeon
    .turnin 1318 >>Turn in Unfinished Gordok Business
    .turnin 7461 >>Turn in The Madness Within
    .turnin 7703 >>Turn in Unfinished Gordok Business
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
    .goto 1423,26.11,11.3
    >>Talk to |cRXP_FRIENDLY_Anthion Harmon|r
    .turnin 8948 >>Turn in Anthion's Old Friend
    .target Anthion Harmon
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
    .accept 8949 >>Accept Falrin's Vendetta
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
    >>Inside Dire Maul West: loot |cRXP_LOOT_[A Dull and Flat Elven Blade]|r and click it to start the quest
    .turnin 7508 >>Turn in The Forging of Quel'Serrar
step
    .goto 1444,60.3,30.2
    >>Inside Dire Maul West: these quests start from a drop or an object in the dungeon
    .turnin 7877 >>Turn in The Treasure of the Shen'dralar
    .turnin 8949 >>Turn in Falrin's Vendetta
step
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in. (run 3)|r
step
    .goto 1444,60.3,30.2
    >>Inside Dire Maul West: these quests start from a drop or an object in the dungeon
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
    >>Inside Dire Maul West: these quests start from a drop or an object in the dungeon
    .turnin 8950 >>Turn in The Instigator's Enchantment
step
    .goto 1444,60.3,30.2
    +Dungeon entrance: Dire Maul West. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 50-60
#name 56-60 Dire Maul North
#displayname 56-60 Dire Maul North
#next 58-60 Shaper's Terrace
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
#group Peon Journey - Dungeon Quests Only
#groupweight 80
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
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 50-60
#name 58-60 Scholomance pre-quests
#displayname 58-60 Scholomance pre-quests
#next 58-60 Scholomance
step
    +|cRXP_WARN_Scholomance: pre-quests|r. 12 quests, solo (no group needed), roughly 2 h 10 min. The run guide comes after this one. Click to start.
    *Pre-quests: Broodling Essence, Egg Freezing, Egg Collection, Felnok Steelspring, Chillwind Horns, Return to Tinkee, The Human, Ras Frostwhisper, The Dying, Ras Frostwhisper, Menethil's Gift, Soulbound Keepsake, Leonid Barthalomew, Bodley's Unfortunate Fate
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
    +|cRXP_WARN_Pre-quests done.|r Next: Scholomance itself. That guide tells you when to find a group. Click to continue.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 50-60
#name 58-60 Scholomance
#displayname 58-60 Scholomance
#next 58-60 Stratholme Live pre-quests
step
    +|cRXP_WARN_Scholomance|r (levels 58-60). Pick up 10 dungeon quests solo (roughly 50 min with the hand-ins), then ONE run with a group (roughly 4 h). No group needed until the run step. Click to start.
    *Its 12 pre-quests are in the guide before this one. Skipped them? Some quests below won't be offered: skip those steps.
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
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 50-60
#name 58-60 Stratholme Live pre-quests
#displayname 58-60 Stratholme Live pre-quests
#next 58-60 Stratholme Live
step
    +|cRXP_WARN_Stratholme Live: pre-quests|r. 9 quests, solo (no group needed), roughly 1 h 5 min. The run guide comes after this one. Click to start.
    *Pre-quests: The Restless Souls, Demon Dogs, Blood Tinged Skies, Carrion Grubbage, Redemption, Of Forgotten Memories, Of Lost Honor, Of Love and Family, Bodley's Unfortunate Fate
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
    .goto 1423,62.53,26.81
    >>Collect |cRXP_LOOT_[Symbol of Lost Honor]|r from |cRXP_PICK_Symbol of Lost Honor|r
    *Travel to Northdale, in the northeastern region of the Eastern Plaguelands, and recover the Symbol of Lost Honor. Return to Tirion Fordring upon completion of your objective.
    .complete 5845,1 --Of Lost Honor
step
    .goto 1423,69.93,53.72
    >>Talk to |cRXP_FRIENDLY_Caretaker Alen|r
    .accept 5281 >>Accept The Restless Souls
    .target Caretaker Alen
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
    +|cRXP_WARN_Pre-quests done.|r Next: Stratholme Live itself. That guide tells you when to find a group. Click to continue.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 50-60
#name 58-60 Stratholme Live
#displayname 58-60 Stratholme Live
#next 58-60 Stratholme Undead pre-quests
step
    +|cRXP_WARN_Stratholme Live|r (levels 58-60). Pick up 7 dungeon quests solo (roughly 15 min with the hand-ins), then ONE run with a group (roughly 2 h 30 min). No group needed until the run step. Click to start.
    *Door: Main gate. No key.
    *Its 9 pre-quests are in the guide before this one. Skipped them? Some quests below won't be offered: skip those steps.
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
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 50-60
#name 58-60 Stratholme Undead pre-quests
#displayname 58-60 Stratholme Undead pre-quests
#next 58-60 Stratholme Undead
step
    +|cRXP_WARN_Stratholme Undead: pre-quests|r. 8 quests, solo (no group needed), roughly 1 h 55 min. The run guide comes after this one. Click to start.
    *Pre-quests: Doctor Theolen Krastinov, the Butcher, Kirtonos the Herald, The Human, Ras Frostwhisper, The Dying, Ras Frostwhisper, Krastinov's Bag of Horrors, The Ranger Lord's Behest, Duskwing, Oh How I Hate Thee..., In Search of Anthion
step
    .goto 1423,22.23,63.51
    >>Talk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .accept 6133 >>Accept The Ranger Lord's Behest
    .target Nathanos Blightcaller
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
    .goto 1423,22.23,63.51
    >>Talk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .turnin 6133 >>Turn in The Ranger Lord's Behest
    .target Nathanos Blightcaller
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
    .accept 8930 >>Accept In Search of Anthion
    .target Mokvar
step
    .goto 1423,26.11,11.3
    >>Talk to |cRXP_FRIENDLY_Anthion Harmon|r
    .turnin 8930 >>Turn in In Search of Anthion
    .target Anthion Harmon
step
    .goto 1423,22.23,63.51
    >>Talk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
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
    +|cRXP_WARN_Pre-quests done.|r Next: Stratholme Undead itself. That guide tells you when to find a group. Click to continue.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 50-60
#name 58-60 Stratholme Undead
#displayname 58-60 Stratholme Undead
#next 59-60 Upper Blackrock Spire pre-quests
step
    +|cRXP_WARN_Stratholme Undead|r (levels 58-60). Pick up 8 dungeon quests solo (roughly 10 min with the hand-ins), then ONE run with a group (roughly 2 h 30 min). No group needed until the run step. Click to start.
    *Door: Service gate, east of the main gate. Needs the Key to the City (Magistrate Barthilas, Stratholme Live).
    *Its 8 pre-quests are in the guide before this one. Skipped them? Some quests below won't be offered: skip those steps.
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests (solo, no group yet)|r
step
    .goto 1423,71.89,48.29
    >>Talk to |cRXP_FRIENDLY_Leonid Barthalomew the Revered|r
    .accept 5243 >>Accept Houses of the Holy
    .accept 5463 >>Accept Menethil's Gift
    .target Leonid Barthalomew the Revered
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
    .goto 1423,22.23,63.51
    >>Talk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .accept 6163 >>Accept Ramstein
    .target Nathanos Blightcaller
step
    .goto 1423,26.11,11.3
    >>Talk to |cRXP_FRIENDLY_Anthion Harmon|r
    .accept 8945 >>Accept Dead Man's Plea
    .target Anthion Harmon
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
    *Dead Man's Plea: Go into Stratholme and rescue Ysida Harmon from Baron Rivendare.
    .complete 5212,1 --The Flesh Does Not Lie
    .complete 5243,1 --Houses of the Holy
    .complete 5263,1 --Above and Beyond
    .complete 6163,1 --Ramstein
    .complete 8945,1 --Dead Man's Plea
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1423,41.45,17.74
    >>Inside Stratholme Undead: these quests start from a drop or an object in the dungeon
    .turnin 5125 >>Turn in Aurius' Reckoning
step
    .goto 1423,26.11,11.3
    >>Talk to |cRXP_FRIENDLY_Anthion Harmon|r
    .turnin 8945 >>Turn in Dead Man's Plea
    .target Anthion Harmon
step
    .goto 1423,22.23,63.51
    >>Talk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
    .turnin 6163 >>Turn in Ramstein
    .target Nathanos Blightcaller
step
    .goto 1423,71.63,50.09
    >>Talk to |cRXP_FRIENDLY_Duke Nicholas Zverenhoff|r
    .turnin 5263 >>Turn in Above and Beyond
    .target Duke Nicholas Zverenhoff
step
    .goto 1423,71.66,49.94
    >>Talk to |cRXP_FRIENDLY_Betina Bigglezink|r
    .turnin 5212 >>Turn in The Flesh Does Not Lie
    .target Betina Bigglezink
step
    .goto 1423,71.89,48.29
    >>Talk to |cRXP_FRIENDLY_Leonid Barthalomew the Revered|r
    .turnin 5243 >>Turn in Houses of the Holy
    .turnin 5463 >>Turn in Menethil's Gift
    .target Leonid Barthalomew the Revered
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
#group Peon Journey - Dungeon Quests Only
#groupweight 80
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
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 50-60
#name 59-60 Upper Blackrock Spire
#displayname 59-60 Upper Blackrock Spire
step
    +|cRXP_WARN_Upper Blackrock Spire|r (levels 59-60). Pick up 11 dungeon quests solo (roughly 2 h 20 min with the hand-ins), then ONE run with a group (roughly 2 h 40 min). No group needed until the run step. Click to start.
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
    .goto 1428,65.24,24
    >>Talk to |cRXP_FRIENDLY_Tinkee Steamboil|r
    .turnin 4734 >>Turn in Egg Freezing
    .target Tinkee Steamboil
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
    #completewith next
    +|cRXP_WARN_Run the dungeon. Find a group now (Group Finder or /4 LookingForGroup). Dungeon quests can't be shared: everyone takes them before going in. (run 2)|r
step
    .goto 1427,34.8,85.3
    >>Enter |cRXP_WARN_Upper Blackrock Spire|r with your group. Quest goals inside:
    *Egg Collection: Bring 8 Collected Dragon Eggs and the Collectronic Module to Tinkee Steamboil at Flame Crest in the Burning Steppes.
    *The Darkstone Tablet: Bring the Darkstone Tablet to Shadow Mage Vivian Lagrave in Kargath.
    .complete 4735,1 --Egg Collection
    .complete 4768,1 --The Darkstone Tablet
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
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
    .goto 1427,34.8,85.3
    +Dungeon entrance: Upper Blackrock Spire. Done with this dungeon? Click to finish.
]])
