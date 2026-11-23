RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - Professions
#groupweight 70
#subgroup Gathering
#name 1-300 Herbalism (A)
#displayname 1-300 Herbalism
step
    +|cRXP_WARN_Herbalism 1-300 for WoW Forever.|r Read the notes, then click to start.
    *New level-60 herbs Marefoil, Demonsage and Death Lotus (item level 60). No source gives a skill requirement or a confirmed node. Death Lotus: Enchant Gloves - Lotus Claw gives a small chance of it from any herb in Mount Hyjal.
    *Scarce materials drop as bonuses: Frilled Lichen (ilvl 25; Earthroot, Mageroyal, Briarthorn, Bruiseweed/Stranglekelp, Kingsblood), Rosecap (ilvl 45; Kingsblood, Fadeleaf, Goldthorn), Stranglevine (ilvl 60, source unknown).
    *New herb nodes: Wilted Peacebloom and Stunted Silverleaf in starting areas, Tomb Weed (Tirisfal Glades), Hyjal Silphium (quest item, no location).
    *Herb Seeds: Commonplace (Peacebloom, Silverleaf), Uncommon (Briarthorn), Unusual, Scarce. Plant in a Greenhouse; combine tiers at a Seed Hybridizer.
    *Camp objects: Incense Candle (20, Intellect buff, Peacebloom + Silverleaf), Greenhouse (140, Blueprint from Shadetooth, Excavation Site: Wetlands, 6.85%), Seed Hybridizer (300; Mountain Silversage x4, Crystal Vial, Runecloth x2).
    *Junior Herbalism Trainers (Apprentice only) in every starting zone; Zephras Isle has two full trainers instead (Halassa Fernbreeze, Syriel Nightrain).
step
    .goto 1453,31.5,62.61
    >>Talk to |cRXP_FRIENDLY_Shylamiir|r and train Apprentice Herbalism
    .target Shylamiir
    .skill herbalism,1 >>Learn Apprentice Herbalism
step
    >>Gather |cRXP_PICK_Peacebloom (1), Silverleaf (1), Earthroot (15)|r in Elwynn Forest, Dun Morogh, Teldrassil, Zephras Isle
    *The loop follows 171 known node spawns in Elwynn Forest. Press M to see the route.
    .loop 40,1429,40,52.5,39.8,57,32.7,56.8,33.4,68.1,27.3,68.9,39.7,74.7,44.1,81.4,46.3,86.6,51,84.7,50.8,81.3,56.8,80,62.7,79.4,62.7,75,68.9,81.7,81,80.2,86.9,80.7,86.9,75.9,86.8,62.8,80.5,55.6,68.5,62.6,62.7,63.4,50.7,57.8,33.5,88.4,26.3,86.5,40,52.5
    *Zephras Isle has more Peacebloom spawns than any other zone. Wilted Peacebloom / Stunted Silverleaf in starting areas. Train Journeyman at 50.
    .skill herbalism,50 >>Reach 50 Herbalism
step
    .goto 1453,31.5,62.61
    >>Talk to |cRXP_FRIENDLY_Shylamiir|r and train Journeyman Herbalism
    .target Shylamiir
    .maxskill herbalism,150 >>Train Journeyman Herbalism (needs skill 50)
step
    >>Gather |cRXP_PICK_Mageroyal (50), Briarthorn (70), Stranglekelp (85)|r in Darkshore, Loch Modan, Westfall, Wetlands
    *The loop follows 770 known node spawns in The Barrens. Press M to see the route.
    .loop 40,1413,61.8,8.8,56.2,14.3,44.7,15.4,39.7,15,40.7,20.6,44,21.4,44.5,26.2,45.1,33.2,45.3,39,51.3,44.9,55.4,44.9,57.1,50.7,51.9,50.5,50.7,55.8,45,56,45.2,50.9,45.1,63,45.6,68.9,45,75.1,45.1,81.8,63.5,51.1,64.2,44.6,64.1,39.6,56.2,38.7,61.8,8.8
    *Stranglekelp grows only underwater. RankedBoost: Mageroyal in The Barrens (Horde) / Ashenvale (Alliance).
    .skill herbalism,100 >>Reach 100 Herbalism
step
    >>Gather |cRXP_PICK_Bruiseweed (100), Wild Steelbloom (115), Grave Moss (120), Kingsblood (125)|r in Wetlands, Duskwood, Stonetalon Mountains, Hillsbrad Foothills
    *The loop follows 449 known node spawns in Stonetalon Mountains. Press M to see the route.
    .loop 40,1442,32.5,8.1,39.4,8.4,32.9,15.4,38.3,20.6,50.1,33.2,51.9,37.4,44.5,38.2,51.1,45.1,56.5,52.1,73.1,58.5,75.1,50,73.5,45.6,37,50.3,31.2,57.8,33.4,62.1,28.8,63.1,27.4,69.1,33.5,68.7,38.3,67.1,74.9,87.6,75.5,92.6,80.2,92.9,81.1,87.3,84.8,85.4,32.5,8.1
    *Train Expert at 125.
    .skill herbalism,150 >>Reach 150 Herbalism
step
    .goto 1453,31.5,62.61
    >>Talk to |cRXP_FRIENDLY_Shylamiir|r and train Expert Herbalism
    .target Shylamiir
    .maxskill herbalism,225 >>Train Expert Herbalism (needs skill 125)
step
    >>Gather |cRXP_PICK_Liferoot (150), Fadeleaf (160), Goldthorn (170), Khadgar's Whisker (185), Wintersbite (195)|r in Stranglethorn Vale, Arathi Highlands, Dustwallow Marsh, Swamp of Sorrows
    *The loop follows 736 known node spawns in Stranglethorn Vale. Press M to see the route.
    .loop 40,1434,27.1,10,33.2,14.4,39.1,14.9,38.9,20.4,33.1,21.2,38.4,27.1,39,33.5,39.6,38.6,45.3,38.3,46,43.2,38.1,44.8,32.6,43.2,28.3,44.3,28.9,39.4,32.5,38.4,33.8,51.7,33.4,57.1,26.9,57.2,28.7,67.6,45.9,33.3,46.4,27.8,45,20.3,45.6,15.7,43.9,10,27.1,10
    *Wintersbite only in Alterac Mountains. Train Artisan at 200 (no trainers in Tanaris or Searing Gorge).
    .skill herbalism,205 >>Reach 205 Herbalism
step
    .goto 1429,39.96,48.41
    >>Talk to |cRXP_FRIENDLY_Herbalist Pomeroy|r and train Artisan Herbalism
    .target Herbalist Pomeroy
    *25 full trainers teach all ranks, e.g. Alliance: Herbalist Pomeroy (Elwynn), Shylamiir / Tel'Athir / Tannysa (Stormwind), Reyna Stonebranch (Ironforge), Firodren Mooncaller (Darnassus), Kali Healtouch (Loch Modan), Alma Jainrose (Redridge),
    .maxskill herbalism,300 >>Train Artisan Herbalism (needs skill 200)
step
    >>Gather |cRXP_PICK_Firebloom (205), Purple Lotus (210), Arthas' Tears (220), Sungrass (230), Blindweed (235), Ghost Mushroom (245)|r in Tanaris, Searing Gorge, The Hinterlands, Feralas
    *The loop follows 213 known node spawns in Tanaris. Press M to see the route.
    .loop 40,1446,38.9,20.7,40,25.5,45.4,27.3,44.4,36.2,49.8,38.6,45.7,44.2,52.6,45.8,57.5,44.3,58.1,50.2,63.6,51.6,57.2,57.7,46.1,63.7,45.7,67.9,40,68.1,39.6,73.8,34.5,63.2,38.3,62,32.4,56.8,55.4,33.8,64.3,34.1,62.4,26.8,58.4,24.5,62.3,22,71.2,45.2,38.9,20.7
    *wow-professions: 205-230 Tanaris/Searing Gorge, 230-270 The Hinterlands (cave Ghost Mushroom at 245).
    .skill herbalism,250 >>Reach 250 Herbalism
step
    >>Gather |cRXP_PICK_Gromsblood (250), Golden Sansam (260), Dreamfoil (270), Mountain Silversage (280), Plaguebloom (285), Icecap (290), Black Lotus (300)|r in Felwood, Un'Goro Crater, Eastern Plaguelands, Winterspring
    *The loop follows 281 known node spawns in Felwood. Press M to see the route.
    .loop 40,1448,63,8.9,56,9.7,56.5,16.1,56.6,21.1,50.8,20.4,50.5,15.6,45,16.1,45.3,21,51.1,26.8,45.5,40,40.2,38.7,39.1,44.4,38.9,50.3,39.7,58,38.4,62.4,39.4,68.8,39.9,74.7,45.5,74.8,44.3,81.5,40.5,80.9,44.9,86,50,87.7,55.9,86,51.2,81.2,63,8.9
    *Icecap only in Winterspring. wow-professions finishes 270-300 in Felwood. Endgame: Mount Hyjal (level 60) herbs can yield Death Lotus with the Lotus Claw glove enchant.
    .skill herbalism,300 >>Reach 300 Herbalism
step
    +|cRXP_WARN_Herbalism 300 done.|r Zug zug.
]])
