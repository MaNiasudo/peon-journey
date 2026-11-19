RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - Professions
#groupweight 70
#subgroup Secondary
#name 1-300 First Aid (A)
#displayname 1-300 First Aid
step
    +|cRXP_WARN_First Aid 1-300 for WoW Forever.|r Read the notes, then click to start.
    *Healing Potions moved from Alchemy to First Aid: Minor (55), Lesser (85), Healing Potion (135) from the trainer; Greater (manual from Syndicate Mercenary, Arathi Highlands), Superior (manual, source unknown), Major (manual from Pe
    *New recipe families: Poultices (Simple 90 trainer, Clever 140, Superior 210, Powerful 280), Tourniquets (Woolen 120 trainer, Leather 200, Surgical 265), Anti-Venoms (Anti-Venom 80, Strong 130, Potent 215, Powerful 300). ConquestCa
    *Skill levels for the manual recipes differ by source: Wowhead DB lists Greater Healing Potion 175, Superior 230, Major 290, Clever Poultice 160, Superior Poultice 225, Powerful Poultice 295, Leather Tourniquet 220, Surgical Tourni
    *Camp objects: First Aid Kit (skill 20, Stamina buff like Power Word: Fortitude), Toxin Study (140, manual from Commander Springvale, Shadowfang Keep), Plague Doctor's Laboratory (300).
    *New both-faction trainers on Zephras Isle: Melasa Fairmend and Naleeia Tattermend.
    *Perk Field Medicine reduces Recently Bandaged by 5/10 sec outside instances.
step
    .goto 1453,53,44.68
    >>Talk to |cRXP_FRIENDLY_Shaina Fuller|r and train Apprentice First Aid
    .target Shaina Fuller
    .skill firstaid,1 >>Learn Apprentice First Aid
step
    *Each craft: 1 Linen Cloth
    .skill firstaid,40 >>Craft 41x Linen Bandage until 40
step
    *Each craft: 2 Linen Cloth
    *Train Journeyman at 50 before 75.
    .skill firstaid,80 >>Craft 55x Heavy Linen Bandage until 80
step
    .goto 1453,53,44.68
    >>Talk to |cRXP_FRIENDLY_Shaina Fuller|r and train Journeyman First Aid
    .target Shaina Fuller
    .maxskill firstaid,150 >>Train Journeyman First Aid (needs skill 50)
step
    *Each craft: 1 Wool Cloth
    .skill firstaid,115 >>Craft 48x Wool Bandage until 115
step
    *Each craft: 2 Wool Cloth
    *Buy Expert First Aid - Under Wraps at 125.
    .skill firstaid,150 >>Craft 48x Heavy Wool Bandage until 150
step
    .goto 1453,53,44.68
    >>Talk to |cRXP_FRIENDLY_Shaina Fuller|r and train Expert First Aid
    .target Shaina Fuller
    .maxskill firstaid,225 >>Train Expert First Aid (needs skill 125)
step
    *Each craft: 1 Silk Cloth
    .skill firstaid,180 >>Craft 41x Silk Bandage until 180
step
    #completewith next
    .goto 1417,26.97,58.83
    >>Buy the recipe from |cRXP_FRIENDLY_Deneb Walker|r
    .target Deneb Walker
step
    *Each craft: 2 Silk Cloth
    .skill firstaid,210 >>Craft 41x Heavy Silk Bandage until 210
step
    .goto 1445,67.76,48.97
    >>Talk to |cRXP_FRIENDLY_Doctor Gustaf VanHowzen|r and train Artisan First Aid
    .target Doctor Gustaf VanHowzen
    *Doctor Gustaf VanHowzen (Theramore Isle, Dustwallow Marsh, Alliance) and Doctor Gregory Victor (Hammerfall, Arathi Highlands, Horde) give Triage and then train Heavy Mageweave Bandage (240), Runecloth Bandage (260) and Heavy Runecloth Banda
    .maxskill firstaid,300 >>Train Artisan First Aid (needs skill 200)
step
    #completewith next
    .goto 1417,26.97,58.83
    >>Buy the recipe from |cRXP_FRIENDLY_Deneb Walker|r
    .target Deneb Walker
step
    *Each craft: 1 Mageweave Cloth
    *Do Triage at 225 (level 35) to pass 225.
    .skill firstaid,240 >>Craft 41x Mageweave Bandage until 240
step
    *Each craft: 2 Mageweave Cloth
    *Wowhead: unconfirmed on a live realm.
    .skill firstaid,260 >>Craft 24x Heavy Mageweave Bandage until 260
step
    *Each craft: 1 Runecloth
    .skill firstaid,290 >>Craft 40x Runecloth Bandage until 290
step
    *Each craft: 2 Runecloth
    *ConquestCapped totals about 422 bandages with a 1-40/40-80/... split close to Wowhead's.
    .skill firstaid,300 >>Craft 11x Heavy Runecloth Bandage until 300
step
    +|cRXP_WARN_First Aid 300 done.|r Zug zug.
]])
