RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - Professions
#groupweight 70
#subgroup Crafting
#name 1-300 Enchanting (A)
#displayname 1-300 Enchanting
step
    +|cRXP_WARN_Enchanting 1-300 for WoW Forever.|r Read the notes, then click to start.
    *New reagent Mote of Magic (item 247786), sold by enchanting supply vendors; the Runed Copper Rod is made from 1 Copper Rod + 1 Mote of Magic. wow-professions: in starting zones only the vendors on Zephras Isle and in Brill sell it
    *New low-level enchants make 1-70 cheaper: Enchant Bracer - Inferior Stamina (Mote of Magic) and Enchant Chest - Inferior Stamina (Strange Dust).
    *Disenchanting Uncommon or better items gives a skill point each to 20, with a falling chance after that, stopping at 60. Disenchant sits in the Professions window, not the spellbook.
    *Artisan Enchanting is taught only by Annora inside Uldaman (both factions); she also teaches the 230-250 Artisan recipes.
    *63 new recipes, 27 of them enchants; the rest are staves, orbs, wands, trinkets, relics and camp items (33 for Merchant's Favor, 21 unknown source).
    *Arcane Salvager is now made with a Runed Golden Rod instead of a Runed Truesilver Rod.
step
    +|cRXP_WARN_Shopping list for the whole route|r (buy or farm before you start). Click when ready.
    *1 Copper Rod, 1 Mote of Magic, 68 Simple Wood, 92 Lesser Magic Essence
    *23 Strange Dust, 1 Silver Rod, 1 Shadowgem, 25 Lesser Astral Essence
    *57 Soul Dust, 1 Golden Rod, 1 Iridescent Pearl, 1 Greater Astral Essence
    *110 Vision Dust, 1 Truesilver Rod, 1 Black Pearl, 1 Greater Mystic Essence
    *195 Dream Dust, 15 Purple Lotus, 15 Crystal Vial, 1 Arcanite Rod
    *1 Golden Pearl, 50 Illusion Dust, 4 Greater Eternal Essence, 4 Small Brilliant Shard
    *2 Large Brilliant Shard, 1 Formula: Enchant Cloak - Minor Agility, 1 Formula: Enchant Bracer - Lesser Strength, 1 Formula: Lesser Mana Oil
    *1 Formula: Enchant Shield - Greater Stamina, 1 Formula: Runed Arcanite Rod, 1 Formula: Enchant Cloak - Superior Defense
    *Computed from the step table. The 2-20 disenchant step needs about 18 green-or-better items, not listed. Includes the six vendor formulas.
step
    .goto 1453,52.9,74.46
    >>Talk to |cRXP_FRIENDLY_Lucan Cordell|r and train Apprentice Enchanting
    .target Lucan Cordell
    .skill enchanting,1 >>Learn Apprentice Enchanting
step
    *Each craft: 1 Copper Rod, 1 Mote of Magic
    *Keep the Runed Copper Rod: every enchant up to 155 needs it. Mote of Magic and Copper Rod are sold by enchanting supply vendors. Wowhead: 'Unconfirmed until checked on a live realm: how a new enchanter gets the first rod
    .skill enchanting,2 >>Craft 1x Runed Copper Rod until 2
step
    *Not a craft: disenchant Uncommon (green) or better items; each one is a skill point up to 20, then the chance drops and it stops at 60. Other Forever guides use 18-24x Enchant Bracer - Inferior Stamina (1 Mote of Magic e
    .skill enchanting,20 >>Craft 18x Disenchant until 20
step
    *Each craft: 1 Simple Wood, 1 Lesser Magic Essence
    *Train Journeyman at 50 (char level 10).
    .skill enchanting,79 >>Craft 59x Lesser Magic Wand until 79
step
    .goto 1453,52.9,74.46
    >>Talk to |cRXP_FRIENDLY_Lucan Cordell|r and train Journeyman Enchanting
    .target Lucan Cordell
    .maxskill enchanting,150 >>Train Journeyman Enchanting (needs skill 50)
step
    *Each craft: 1 Lesser Magic Essence
    .skill enchanting,90 >>Craft 11x Enchant Chest - Minor Absorption until 90
step
    *Each craft: 2 Strange Dust
    .skill enchanting,100 >>Craft 10x Enchant Bracer - Minor Stamina until 100
step
    *Each craft: 1 Silver Rod, 3 Strange Dust, 4 Lesser Magic Essence, 1 Shadowgem
    *Keep the Runed Silver Rod: the enchants from here to 155 need it. Conflict: conquestcapped says Forever teaches the Silver Rod at 130; Wowhead preferred.
    .skill enchanting,101 >>Craft 1x Runed Silver Rod until 101
step
    *Each craft: 1 Simple Wood, 2 Lesser Magic Essence
    .skill enchanting,110 >>Craft 9x Greater Magic Wand until 110
step
    #completewith next
    .goto 1440,35.12,52.12
    >>Buy the recipe from |cRXP_FRIENDLY_Dalria|r
    .target Dalria
step
    *Each craft: 1 Lesser Astral Essence
    *Formula: Enchant Cloak - Minor Agility requires Enchanting 110. Train Expert at 125 (char level 20).
    .skill enchanting,135 >>Craft 25x Enchant Cloak - Minor Agility until 135
step
    .goto 1453,52.9,74.46
    >>Talk to |cRXP_FRIENDLY_Lucan Cordell|r and train Expert Enchanting
    .target Lucan Cordell
    .maxskill enchanting,225 >>Train Expert Enchanting (needs skill 125)
step
    *Each craft: 1 Soul Dust
    .skill enchanting,155 >>Craft 20x Enchant Bracer - Lesser Stamina until 155
step
    *Each craft: 1 Golden Rod, 1 Iridescent Pearl, 1 Greater Astral Essence, 1 Soul Dust
    *Keep the Runed Golden Rod: the enchants from here to 200 need it. Conflict: conquestcapped says Forever teaches the Golden Rod at 175.
    .skill enchanting,156 >>Craft 1x Runed Golden Rod until 156
step
    #completewith next
    .goto 1440,35.12,52.12
    >>Buy the recipe from |cRXP_FRIENDLY_Dalria|r
    .target Dalria
step
    *Each craft: 1 Soul Dust
    *Formula: Enchant Bracer - Lesser Strength requires Enchanting 140.
    .skill enchanting,185 >>Craft 36x Enchant Bracer - Lesser Strength until 185
step
    *Each craft: 1 Vision Dust
    *Train Artisan at 200 (char level 35) from Annora inside Uldaman.
    .skill enchanting,200 >>Craft 15x Enchant Bracer - Strength until 200
step
    >>Train Artisan Enchanting
    *Both factions: Annora, inside Uldaman (Badlands); use the back entrance at 65.3, 42.6. She appears only after every enemy in her room is killed; reaching her needs a few elites and a room of scorpions cleared (not soloable at 35 per wow-pro
    .maxskill enchanting,300 >>Train Artisan Enchanting (needs skill 200)
step
    *Each craft: 1 Truesilver Rod, 1 Black Pearl, 1 Greater Mystic Essence, 1 Vision Dust
    *Keep the Runed Truesilver Rod: the enchants from here to 290 need it. Conflict: conquestcapped says Forever teaches it at 220.
    .skill enchanting,201 >>Craft 1x Runed Truesilver Rod until 201
step
    *Each craft: 1 Vision Dust
    .skill enchanting,220 >>Craft 26x Enchant Bracer - Strength until 220
step
    *Each craft: 1 Vision Dust
    .skill enchanting,225 >>Craft 5x Enchant Cloak - Greater Defense until 225
step
    *Each craft: 1 Vision Dust
    .skill enchanting,230 >>Craft 5x Enchant Gloves - Agility until 230
step
    *Each craft: 2 Vision Dust
    .skill enchanting,235 >>Craft 5x Enchant Boots - Stamina until 235
step
    *Each craft: 3 Vision Dust
    .skill enchanting,250 >>Craft 16x Enchant Chest - Superior Stamina until 250
step
    #completewith next
    >>Recipe: vendor: Lokhtos Darkbargainer, Blackrock Depths (both factions)
step
    *Each craft: 1 Dream Dust, 1 Purple Lotus, 1 Crystal Vial
    *Formula: Lesser Mana Oil requires Enchanting 250. Wowhead's item page says it is also sold in Silithus (wow-professions names Kania).
    .skill enchanting,265 >>Craft 15x Lesser Mana Oil until 265
step
    #completewith next
    .goto 1457,60.96,17.67
    >>Buy the recipe from |cRXP_FRIENDLY_Mythrin'dir|r
    .target Mythrin'dir
step
    *Each craft: 6 Dream Dust
    *Formula: Enchant Shield - Greater Stamina requires Enchanting 265; limited stock.
    .skill enchanting,294 >>Craft 30x Enchant Shield - Greater Stamina until 294
step
    #completewith next
    .goto 1450,48.24,40.14
    >>Buy the recipe from |cRXP_FRIENDLY_Lorelae Wintersong|r
    .target Lorelae Wintersong
step
    *Each craft: 1 Arcanite Rod, 1 Golden Pearl, 10 Illusion Dust, 4 Greater Eternal Essence, 4 Small Brilliant Shard, 2 Large Brilliant Shard
    *Formula: Runed Arcanite Rod requires Enchanting 290. Keep the rod: the last enchants need it.
    .skill enchanting,295 >>Craft 1x Runed Arcanite Rod until 295
step
    #completewith next
    .goto 1450,48.24,40.14
    >>Buy the recipe from |cRXP_FRIENDLY_Lorelae Wintersong|r
    .target Lorelae Wintersong
step
    *Each craft: 8 Illusion Dust
    *Formula: Enchant Cloak - Superior Defense requires Enchanting 285.
    .skill enchanting,300 >>Craft 5x Enchant Cloak - Superior Defense until 300
step
    +|cRXP_WARN_Enchanting 300 done.|r Zug zug.
]])
