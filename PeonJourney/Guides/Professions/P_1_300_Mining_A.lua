RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - Professions
#groupweight 70
#subgroup Gathering
#name 1-300 Mining (A)
#displayname 1-300 Mining
step
    +|cRXP_WARN_Mining 1-300 for WoW Forever.|r Read the notes, then click to start.
    *Ores stack to 20 (was 10).
    *Every starting zone has a Junior Mining Trainer (Apprentice only, no smelting): Kelsey Fargo (Elwynn), Sally Swiftwrench (Dun Morogh), Fanorran Stilloak (Teldrassil), Norzsh (Durotar), Vartha Rockmane (Mulgore), Walter Mason (Tiri
    *New nodes: Poor Copper Vein in starting areas (Mulgore, Durotar, Elwynn Forest; skill-ups only to 20) and Chunk of Amber in Teldrassil; Heavy Thorium Vein (skill 300), a rare Mount Hyjal spawn that looks like a Rich Thorium Vein w
    *Scarce minerals drop from normal veins. Pyrite: Copper/Tin/Iron veins or Copper/Tin/Silver/Iron veins and Large Chunks of Amber. Bauxite: Mithril or Gold and Mithril. Pitchblende: Thorium veins; Wowhead item page also says Pitchbl
    *New smelts (any Mining trainer): Smelt Azerothium at 275 (2 Pitchblende + 1 Coal, Forge) -> Azerothium Bar; Smelt Heavy Thorium at 300 (Heavy Thorium Ore, needs a Molten Foundry) -> Heavy Thorium Bar. Alchemists can transmute Heav
    *Smelt Elementium (Elementium Bar) is listed at 295-310 with no known ore source.
step
    .goto 1453,59.25,37.83
    >>Talk to |cRXP_FRIENDLY_Gelman Stonehand|r and train Apprentice Mining
    .target Gelman Stonehand
    .skill mining,1 >>Learn Apprentice Mining
step
    >>Gather |cRXP_PICK_Copper Vein (also Poor Copper Vein, Chunk of Amber)|r in Elwynn Forest, Dun Morogh, Teldrassil, Zephras Isle
    *The loop follows 107 known node spawns in Elwynn Forest. Press M to see the route.
    .loop 40,1429,61.2,47.2,61.1,50.5,63.4,55.3,60.9,64.2,68,69.7,73.5,64.1,74.6,57.9,74.5,52.1,88.1,61.1,85.5,80.2,82,80.3,76.4,85.2,56.6,80,51.4,82.2,51,85.9,51.2,75.2,45.6,73.5,41.1,76.5,40,80.6,26.7,86.2,20.7,76.3,27.7,68.7,39,51.4,42.8,49.6,61.2,47.2
    *Poor Copper Vein gives skill only to 20. Zephras Isle: start in Thendal Village, smelt at Shen'dar Village. Optional: buy ~140 Copper Ore and smelt Copper Bar 1-65, keeping 70 bars for Bronze.
    .skill mining,65 >>Reach 65 Mining
step
    .goto 1453,59.25,37.83
    >>Talk to |cRXP_FRIENDLY_Gelman Stonehand|r and train Journeyman Mining
    .target Gelman Stonehand
    .maxskill mining,150 >>Train Journeyman Mining (needs skill 50)
step
    >>Gather |cRXP_PICK_Tin Vein (65), Silver Vein (75)|r in Redridge Mountains, Wetlands, The Barrens, Ashenvale
    *The loop follows 307 known node spawns in Wetlands. Press M to see the route.
    .loop 40,1437,30.9,21.9,32,26.9,26.6,33.3,22.1,32.4,36.8,33.8,39.4,45.2,45.5,44.7,33,45.3,33.7,50.2,46.5,63.6,50.1,61.8,50.1,58.8,50.3,68.9,51.1,74,56.5,78.9,61,79.7,67.3,73.6,61.4,68.9,59.8,62,67.5,56.6,68.8,36.9,68.4,32,69,28.6,65.1,31.3,30.9,21.9
    *Train Journeyman at 50. Wetlands cave (Alliance), Silverpine cave or Hillsbrad (Horde). Optional smelting: Tin Bar 65-75, Bronze Bar 75-105 (70 smelts), Silver Bar 105-120 (35-45). Train Expert at 125.
    .skill mining,125 >>Reach 125 Mining
step
    .goto 1453,59.25,37.83
    >>Talk to |cRXP_FRIENDLY_Gelman Stonehand|r and train Expert Mining
    .target Gelman Stonehand
    .maxskill mining,225 >>Train Expert Mining (needs skill 125)
step
    >>Gather |cRXP_PICK_Iron Deposit (125), Gold Vein (155)|r in Arathi Highlands, Stranglethorn Vale, Desolace, Thousand Needles
    *The loop follows 641 known node spawns in Arathi Highlands. Press M to see the route.
    .loop 40,1417,33.1,20.6,46.9,33.5,49.3,34.4,51.6,46.5,33,44.9,33.5,63.9,32.7,69.4,27.6,70,16.2,69.5,20.6,92.4,51.6,80.6,54.6,80.1,56.2,75.2,56.9,70.7,46.2,70.3,68.6,75.3,68.1,80.5,70.4,69.4,73.4,63.2,72.9,50.4,76.1,45.5,80.6,37.6,82.1,33,85.4,32,33.1,20.6
    *Smelt Iron from 125 (grey 140, ~20 Iron Ore to 135); Smelt Gold from 155 (grey 185, ~22 Gold Ore for 155-175). Riverglades (Wowhead: level 36-44) has trainer Grungle but no source maps its veins.
    .skill mining,175 >>Reach 175 Mining
step
    >>Gather |cRXP_PICK_Mithril Deposit (175), Gold Vein (155)|r in The Hinterlands, Tanaris, Azshara, Badlands
    *The loop follows 234 known node spawns in The Hinterlands. Press M to see the route.
    .loop 40,1425,63.5,40.2,57.8,41.2,57.3,43.7,56.5,55.7,61.5,59,68,55.3,73.4,62.1,76.6,57.5,81.2,50.2,68.7,74.7,58.4,82.8,55.7,84.6,51,69.5,52,65.5,56.1,68,45.5,70.7,38.6,67.2,32.8,61.8,31,57.8,21.8,59.1,24.8,65.5,25.7,68.4,41.2,59,38.9,50,63.5,40.2
    *Train Artisan at 200 (needed past 225). Hinterlands route has level 62 elites; skip the 4 Tanaris caves under 60. ConquestCapped: from 185 only veins give skill, no smelt.
    .skill mining,230 >>Reach 230 Mining
step
    .goto 1453,59.25,37.83
    >>Talk to |cRXP_FRIENDLY_Gelman Stonehand|r and train Artisan Mining
    .target Gelman Stonehand
    *Full trainers teach all ranks. Alliance: Gelman Stonehand (Stormwind), Geofram Bouldertoe (Ironforge), Yarr Hammerstone and Dank Drizzlecut (Dun Morogh), Brock Stoneseeker (Loch Modan), Kurdram Stonehammer (Darkshore), Matt Johnson (Duskwoo
    .maxskill mining,300 >>Train Artisan Mining (needs skill 200)
step
    >>Gather |cRXP_PICK_Truesilver Deposit (230), Dark Iron Deposit (230), Small Thorium Vein (245)|r in Searing Gorge, Burning Steppes, Un'Goro Crater, Felwood
    *The loop follows 731 known node spawns in Burning Steppes. Press M to see the route.
    .loop 40,1428,65.8,22,63.5,26.6,64,33.8,70.7,38.9,76.9,44.4,81.2,44.4,81.3,39.8,80.8,50.5,75.1,55.9,69.9,63,62.2,56.8,52.5,53.4,49.6,62.4,42.5,62.5,36.9,63.4,33.8,68.6,27.3,64.6,21.1,43,38.6,40.4,45.3,39.1,55.1,32.6,57.9,44.1,62.7,44.8,73.5,25.1,65.8,22
    *Dark Iron Deposit is in Searing Gorge / Burning Steppes. Small Thorium: Un'Goro (2 caves), Blasted Lands (Alliance cannot mine inside the Garrison Armory), Felwood (Jaedenar cave). Smelt Thorium from 250.
    .skill mining,275 >>Reach 275 Mining
step
    >>Gather |cRXP_PICK_Rich Thorium Vein (275)|r in Winterspring, Eastern Plaguelands, Un'Goro Crater, Silithus
    *The loop follows 91 known node spawns in Eastern Plaguelands. Press M to see the route.
    .loop 40,1423,62.2,14.3,57.4,16.6,53.2,22,56.4,25,63.9,21.9,68.1,39.1,64.1,40.1,66.9,47.4,67.7,51.4,67.1,55.4,64.8,56.1,49.3,57.3,46.8,60.8,41,60.4,44.5,69.1,39.6,71.3,39.1,73.8,33.1,71.5,28.6,72.8,31.7,55.9,46.3,51.7,49.8,40.6,45.9,35.7,50,68.1,62.2,14.3
    *Smelt Azerothium (275, 2 Pitchblende + 1 Coal) for skill-ups (Warcraft Tavern; conflicts with ConquestCapped's 'only veins from 185'). At 300: Heavy Thorium Vein in Mount Hyjal (level 60 zone), smelt at a Molten Foundry.
    .skill mining,300 >>Reach 300 Mining
step
    +|cRXP_WARN_Mining 300 done.|r Zug zug.
]])
