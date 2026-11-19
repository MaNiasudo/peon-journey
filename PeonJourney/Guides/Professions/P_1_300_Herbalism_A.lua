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
    *The loop follows 166 known node spawns in Elwynn Forest. Press M to see the route.
    .loop 40,1429,40,52.5,39.8,57,32.7,56.8,33.4,68.1,27.3,68.9,39.7,74.7,44.1,81.4,46.3,86.6,51.4,84.8,50.8,81.3,57.2,79.4,62.7,79.4,62.7,75,67.6,69.4,68.5,62.6,62.7,63.4,50.7,57.8,80.5,55.6,86.8,62.8,86.9,75.9,86.9,80.7,68.9,81.7,33.5,88.4,26.3,86.5,40,52.5
    *Zephras Isle has more Peacebloom spawns than any other zone. Wilted Peacebloom / Stunted Silverleaf in starting areas. Train Journeyman at 50.
    .skill herbalism,50 >>Reach 50 Herbalism
step
    .goto 1453,31.5,62.61
    >>Talk to |cRXP_FRIENDLY_Shylamiir|r and train Journeyman Herbalism
    .target Shylamiir
    .maxskill herbalism,150 >>Train Journeyman Herbalism (needs skill 50)
step
    >>Gather |cRXP_PICK_Mageroyal (50), Briarthorn (70), Stranglekelp (85)|r in Darkshore, Loch Modan, Westfall, Wetlands
    *The loop follows 523 known node spawns in The Barrens. Press M to see the route.
    .loop 40,1413,61.8,8.9,56.2,14.1,50.3,14.1,44.7,15.4,39.7,14.9,40.6,20.6,44,21.2,45.6,33.2,45.5,39.1,51,44.9,55.5,45,57.5,50.9,52.4,50.5,51,55.3,44.8,56,45.1,50.7,44.9,63,45,68.8,44.9,74.6,45.2,82,63.4,51.1,63.9,44.4,63.7,39.8,56.2,38.5,61.8,8.9
    *Stranglekelp grows only underwater. RankedBoost: Mageroyal in The Barrens (Horde) / Ashenvale (Alliance).
    .skill herbalism,100 >>Reach 100 Herbalism
step
    >>Gather |cRXP_PICK_Bruiseweed (100), Wild Steelbloom (115), Grave Moss (120), Kingsblood (125)|r in Wetlands, Duskwood, Stonetalon Mountains, Hillsbrad Foothills
    *The loop follows 209 known node spawns in Wetlands. Press M to see the route.
    .loop 40,1437,34.2,15.6,34.9,22.2,39.6,19.8,44.7,21,48.5,18.5,47.3,16.3,44,25.6,26.4,26.4,32.1,39.4,32.2,45.5,27.9,45.3,33.5,50.6,38.5,50.5,50.3,51.6,48.6,62.4,47.3,74.5,57.6,73.8,64.5,75.2,66.6,63.3,69.1,37.9,68.3,34,62.5,31.6,13,57.5,14.3,64.8,34.2,15.6
    *Train Expert at 125.
    .skill herbalism,150 >>Reach 150 Herbalism
step
    .goto 1453,31.5,62.61
    >>Talk to |cRXP_FRIENDLY_Shylamiir|r and train Expert Herbalism
    .target Shylamiir
    .maxskill herbalism,225 >>Train Expert Herbalism (needs skill 125)
step
    >>Gather |cRXP_PICK_Liferoot (150), Fadeleaf (160), Goldthorn (170), Khadgar's Whisker (185), Wintersbite (195)|r in Stranglethorn Vale, Arathi Highlands, Dustwallow Marsh, Swamp of Sorrows
    *The loop follows 501 known node spawns in Stranglethorn Vale. Press M to see the route.
    .loop 40,1434,43.8,9.9,45.8,15.5,39.1,15,38.8,20.3,33,21.1,33,25.6,38.3,27.1,39.3,33.6,39.8,38.7,45.2,38,45.8,33.4,46.4,28.1,46.4,43.1,38,44.9,32.7,43.4,28.3,44.1,28.9,39.3,32.3,38.3,33.8,51.5,33.6,57.3,26.8,57.2,28.6,67.6,33.4,14.4,27.1,10.2,43.8,9.9
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
    *The loop follows 164 known node spawns in Tanaris. Press M to see the route.
    .loop 40,1446,38.9,20.7,40,25.5,45.5,26.7,45.8,32.3,45.1,36.3,49.5,38.7,45.9,43.6,52.7,45.9,57.9,44.3,57.5,40.3,63.3,39.8,64.2,34.4,62.4,26.9,61.9,22.3,58.1,24.5,55.4,33.8,58.1,50.2,63.6,51.6,57.3,58.5,46.4,64.4,40.2,68.5,39.3,74,32.4,56.8,71.2,44.6,38.9,20.7
    *wow-professions: 205-230 Tanaris/Searing Gorge, 230-270 The Hinterlands (cave Ghost Mushroom at 245).
    .skill herbalism,250 >>Reach 250 Herbalism
step
    >>Gather |cRXP_PICK_Gromsblood (250), Golden Sansam (260), Dreamfoil (270), Mountain Silversage (280), Plaguebloom (285), Icecap (290), Black Lotus (300)|r in Felwood, Un'Goro Crater, Eastern Plaguelands, Winterspring
    *The loop follows 256 known node spawns in Felwood. Press M to see the route.
    .loop 40,1448,63.1,9.2,55.9,10.2,57,16.1,56.6,21.1,50.7,20.6,50.5,15.6,45,16.1,45.2,20.9,50.6,26.2,61.4,25.6,46,39.9,44.7,44.6,39.1,44.4,40.2,38.7,38.9,50.3,39.8,58.1,39.3,68.7,40.3,75,45.5,75.2,44.1,81.5,40.5,80.9,44.8,86.1,51.5,81.3,55.9,86,63.1,9.2
    *Icecap only in Winterspring. wow-professions finishes 270-300 in Felwood. Endgame: Mount Hyjal (level 60) herbs can yield Death Lotus with the Lotus Claw glove enchant.
    .skill herbalism,300 >>Reach 300 Herbalism
step
    +|cRXP_WARN_Herbalism 300 done.|r Zug zug.
]])
