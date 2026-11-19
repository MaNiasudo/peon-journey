RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - Professions
#groupweight 70
#subgroup Gathering
#name 1-300 Skinning (H)
#displayname 1-300 Skinning
step
    +|cRXP_WARN_Skinning 1-300 for WoW Forever.|r Read the notes, then click to start.
    *Scarce skins: Scarce Pristine Leather (ilvl 25, drop or skinned; Loch Modan, The Barrens), Scarce Pristine Hide (ilvl 45; Maddened Rotclaws, Wetlands), Pristine Scale (ilvl 60).
    *New level-60 Fel reagents Fel Hide and Fel Leather (sources unconfirmed).
    *Cured hides are a new step; cured Rugged Hide is made only at a Tanning Rack.
    *Tanning camp skill: Camp Chair (20, 2% crit buff; 3 Light Leather + 2 Simple Wood), Field Guide (140, Track Beasts; Blueprint 0.25% from Lady Anacondra, Wailing Caverns), Trapper's Workbench (300, holds a trap; Blueprint 0.01% fro
    *Junior Skinning Trainers (Apprentice only) in starting zones: Riley Peltskinner, Brighid Stormflayer, Terunne Bearshaper, Kagil, Nawka Wildsong, Margaret Weaver; they sell the 4-slot Apprentice's Skinning Satchel. Zephras Isle has
    *Pelt Collecting for Beginners manual (early quest) teaches Skinning and adds 2 skill up to 15.
step
    .goto 1454,63.36,45.42
    >>Talk to |cRXP_FRIENDLY_Thuwd|r and train Apprentice Skinning
    .target Thuwd
    .skill skinning,1 >>Learn Apprentice Skinning
step
    >>Gather |cRXP_PICK_Beasts level 1-14 (Light Leather, Ruined Leather Scraps)|r in Durotar, The Barrens, Zephras Isle
    *Skill needed: 1 for levels 1-10, (level-10)x10 for 11-20, level x5 above 20. Mottled Boars (Valley of Trials), Young/Timber Wolves (Northshire). Train Journeyman at 50.
    .skill skinning,50 >>Reach 50 Skinning
step
    .goto 1454,63.36,45.42
    >>Talk to |cRXP_FRIENDLY_Thuwd|r and train Journeyman Skinning
    .target Thuwd
    .maxskill skinning,150 >>Train Journeyman Skinning (needs skill 50)
step
    >>Gather |cRXP_PICK_Beasts level 15-19 (Light/Medium Leather)|r in The Barrens
    *Barrens raptor camp west of Northwatch Hold (Sunscale Scytheclaw, Zhevra Charger, Ornery Plainstrider); Loch Modan boars, bears, crocolisks.
    .skill skinning,100 >>Reach 100 Skinning
step
    >>Gather |cRXP_PICK_Beasts level 20-29 (Medium/Heavy Leather)|r in Hillsbrad Foothills, Thousand Needles, Ashenvale, The Barrens
    *Whelgar's Excavation Site raptors (Wetlands); RankedBoost Horde pick: The Barrens (Thunderhead, Stormhide). Train Expert at 125.
    .skill skinning,150 >>Reach 150 Skinning
step
    .goto 1454,63.36,45.42
    >>Talk to |cRXP_FRIENDLY_Thuwd|r and train Expert Skinning
    .target Thuwd
    .maxskill skinning,225 >>Train Expert Skinning (needs skill 125)
step
    >>Gather |cRXP_PICK_Beasts level 30-39 (Heavy Leather, Thick Leather, Turtle Scale)|r in Stranglethorn Vale, Hillsbrad Foothills, Thousand Needles, Alterac Mountains
    *Foothill Caverns yetis (Hillsbrad). Train Artisan at 200. Riverglades (Wowhead: 36-44) fits this band by the level x5 rule, but no reliable source lists its beasts.
    .skill skinning,200 >>Reach 200 Skinning
step
    .goto 1454,63.36,45.42
    >>Talk to |cRXP_FRIENDLY_Thuwd|r and train Artisan Skinning
    .target Thuwd
    *Full trainers teach all ranks. Alliance: Maris Granger (Stormwind), Balthus Stoneflayer (Ironforge), Eladriel (Darnassus), Helene Peltskinner (Elwynn), Radnaal Maneweaver (Teldrassil), Wilma Ranthal (Redridge), Jayla (Ashenvale). Horde: Thu
    .maxskill skinning,300 >>Train Artisan Skinning (needs skill 200)
step
    >>Gather |cRXP_PICK_Beasts level 40-49 (Thick, Rugged Leather)|r in Feralas, Stranglethorn Vale, Tanaris, The Hinterlands
    *Feral Scar Vale yetis, Feralas (wow-professions takes them to 280).
    .skill skinning,250 >>Reach 250 Skinning
step
    >>Gather |cRXP_PICK_Beasts level 50-60 (Rugged Leather, Heavy Scorpid Scale, Rugged Hide)|r in Un'Goro Crater, Winterspring, Silithus, Eastern Plaguelands
    *Western Un'Goro Diemetradon / Pterrordax from Marshal's Refuge. Level 61 (Core Leather) needs 305.
    .skill skinning,300 >>Reach 300 Skinning
step
    +|cRXP_WARN_Skinning 300 done.|r Zug zug.
]])
