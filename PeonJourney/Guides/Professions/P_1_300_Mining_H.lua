RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - Professions
#groupweight 70
#subgroup Gathering
#name 1-300 Mining (H)
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
    .goto 1454,73.12,26.08
    >>Talk to |cRXP_FRIENDLY_Makaru|r and train Apprentice Mining
    .target Makaru
    .skill mining,1 >>Learn Apprentice Mining
step
    >>Gather |cRXP_PICK_Copper Vein (also Poor Copper Vein, Chunk of Amber)|r in Durotar, Mulgore, Tirisfal Glades, Zephras Isle
    *The loop follows 172 known node spawns in Durotar. Press M to see the route.
    .loop 40,1411,55.5,9.1,52.6,9.6,55.7,16.2,51.1,17.3,51.5,20.7,55.2,21.6,52.1,27.1,50,33.4,44.1,38.3,37.9,38.1,39.5,32,39.2,26.9,43,25.6,44.8,20.8,57,39.5,49.2,49.7,44.8,50.5,38.7,50.8,54.9,59.8,54.9,61.4,60.8,62.3,56.2,68.9,50.8,75.8,47.6,79.4,55.5,9.1
    *Poor Copper Vein gives skill only to 20. Zephras Isle: start in Thendal Village, smelt at Shen'dar Village. Optional: buy ~140 Copper Ore and smelt Copper Bar 1-65, keeping 70 bars for Bronze.
    .skill mining,65 >>Reach 65 Mining
step
    .goto 1454,73.12,26.08
    >>Talk to |cRXP_FRIENDLY_Makaru|r and train Journeyman Mining
    .target Makaru
    .maxskill mining,150 >>Train Journeyman Mining (needs skill 50)
step
    >>Gather |cRXP_PICK_Tin Vein (65), Silver Vein (75)|r in Silverpine Forest, The Barrens, Ashenvale, Stonetalon Mountains
    *The loop follows 236 known node spawns in Silverpine Forest. Press M to see the route.
    .loop 40,1421,55.2,9.4,51,15,45,15.6,45.6,22.8,43.6,26.7,40.8,32,50.2,37.8,49.4,44.3,51.3,48.6,45,50.6,57.6,45.3,64.5,43.8,55.5,31.9,50.2,25.8,38.7,20.1,34.5,19.9,34.7,13.9,35.3,10,76.7,20.3,58.8,71.1,59.4,74.4,62.3,81,45.5,76.2,49.7,68.2,55.2,9.4
    *Train Journeyman at 50. Wetlands cave (Alliance), Silverpine cave or Hillsbrad (Horde). Optional smelting: Tin Bar 65-75, Bronze Bar 75-105 (70 smelts), Silver Bar 105-120 (35-45). Train Expert at 125.
    .skill mining,125 >>Reach 125 Mining
step
    .goto 1454,73.12,26.08
    >>Talk to |cRXP_FRIENDLY_Makaru|r and train Expert Mining
    .target Makaru
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
    .goto 1454,73.12,26.08
    >>Talk to |cRXP_FRIENDLY_Makaru|r and train Artisan Mining
    .target Makaru
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
