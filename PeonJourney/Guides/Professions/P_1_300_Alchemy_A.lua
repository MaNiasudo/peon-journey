RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - Professions
#groupweight 70
#subgroup Crafting
#name 1-300 Alchemy (A)
#displayname 1-300 Alchemy
step
    +|cRXP_WARN_Alchemy 1-300 for WoW Forever.|r Read the notes, then click to start.
    *All six regular healing potions moved from Alchemy to First Aid; Alchemy keeps Discolored Healing Potions, which heal instantly but return 75% of the heal as poison or disease damage over time, and all of them need a Murloc Eye.
    *Discolored Healing Potion recipes are unlocked by a short questline: Odd Child in Westfall (Alliance) or Apothecary Renferrel at the Sepulcher, Silverpine Forest (Horde).
    *Starter recipes known at 1: Elixir of Minor Force (1 Silverleaf, 1 Empty Vial) and Elixir of Minor Defense (Silverleaf, Peacebloom, Empty Vial); Minor Mana Potion uses Mageroyal, Peacebloom and an Empty Vial.
    *72 new recipes: 29 bought with Merchant's Favor (Azeroth Commerce Authority) from Nina Surefire, Three Corners, Redridge Mountains (Alliance) and Apothecary Durelle, The Barrens (Horde); 15 have no known source.
    *New Forever-only herbs Marefoil and Demonsage, plus Death Lotus (a chance from any Mount Hyjal herb, only with the Lotus Claw glove enchant), are reagents for the four skill-300 Flasks of Natural Accuracy, Aggression, Precision an
    *Camp objects: Mana Well (20), Fermenter (140), Alchemy Laboratory (300); the Laboratory is required for every flask.
step
    +|cRXP_WARN_Shopping list for the whole route|r (buy or farm before you start). Click when ready.
    *54 Silverleaf, 163 Empty Vial, 79 Peacebloom, 83 Mageroyal
    *52 Earthroot, 60 Briarthorn, 91 Stranglekelp, 38 Kingsblood
    *88 Leaded Vial, 50 Goldthorn, 40 Khadgar's Whisker, 4 Iron Bar
    *1 Black Vitriol, 4 Purple Lotus, 4 Firebloom, 23 Arthas' Tears
    *64 Crystal Vial, 20 Sungrass, 20 Blindweed, 31 Plaguebloom
    *31 Murloc Eye, 1 Recipe: Philosopher's Stone, 1 Recipe: Superior Mana Potion
    *Computed from the step table (Wowhead's craft counts are averages starting from 1). Includes the two vendor recipes.
step
    .goto 1453,55.66,86.09
    >>Talk to |cRXP_FRIENDLY_Lilyssia Nightbreeze|r and train Apprentice Alchemy
    .target Lilyssia Nightbreeze
    .skill alchemy,1 >>Learn Apprentice Alchemy
step
    *Each craft: 1 Silverleaf, 1 Empty Vial
    *Known: comes with Apprentice Alchemy.
    .skill alchemy,12 >>Craft 11x Elixir of Minor Force until 12
step
    *Each craft: 1 Silverleaf, 1 Peacebloom, 1 Empty Vial
    *Known with Apprentice. Train Journeyman at 50 (char level 10). conquestcapped uses this recipe for all of 1-55.
    .skill alchemy,55 >>Craft 43x Elixir of Minor Defense until 55
step
    .goto 1453,55.66,86.09
    >>Talk to |cRXP_FRIENDLY_Lilyssia Nightbreeze|r and train Journeyman Alchemy
    .target Lilyssia Nightbreeze
    .maxskill alchemy,150 >>Train Journeyman Alchemy (needs skill 50)
step
    *Each craft: 1 Mageroyal, 1 Peacebloom, 1 Empty Vial
    .skill alchemy,65 >>Craft 10x Minor Mana Potion until 65
step
    *Each craft: 2 Earthroot, 1 Peacebloom, 1 Empty Vial
    .skill alchemy,90 >>Craft 26x Elixir of Minor Fortitude until 90
step
    *Each craft: 1 Mageroyal, 2 Briarthorn, 1 Empty Vial
    .skill alchemy,120 >>Craft 30x Elixir of Wisdom until 120
step
    .goto 1453,55.66,86.09
    >>Talk to |cRXP_FRIENDLY_Lilyssia Nightbreeze|r and train Expert Alchemy
    .target Lilyssia Nightbreeze
    .maxskill alchemy,225 >>Train Expert Alchemy (needs skill 125)
step
    *Each craft: 1 Mageroyal, 1 Stranglekelp, 1 Empty Vial
    *Train Expert at 125 (char level 20).
    .skill alchemy,160 >>Craft 43x Lesser Mana Potion until 160
step
    *Each craft: 1 Stranglekelp, 1 Kingsblood, 1 Leaded Vial
    .skill alchemy,195 >>Craft 38x Mana Potion until 195
step
    .goto 1444,32.62,43.78
    >>Talk to |cRXP_FRIENDLY_Kylanna Windwhisper|r and train Artisan Alchemy
    .target Kylanna Windwhisper
    *Alliance: Kylanna Windwhisper, Feathermoon Stronghold, Feralas (32.4, 43.8). Horde: Rogvar, Stonard, Swamp of Sorrows (48.2, 55.4). Both factions: Master Mycologist Shurome, Emerald Sanctuary (Emerald Circle camp), Felwood (51.4, 82.0). Art
    .maxskill alchemy,300 >>Train Artisan Alchemy (needs skill 200)
step
    *Each craft: 1 Stranglekelp, 1 Goldthorn, 1 Leaded Vial
    *Train Artisan at 200 (char level 35) before passing 225.
    .skill alchemy,205 >>Craft 10x Elixir of Agility until 205
step
    *Each craft: 1 Khadgar's Whisker, 1 Goldthorn, 1 Leaded Vial
    .skill alchemy,225 >>Craft 20x Greater Mana Potion until 225
step
    #completewith next
    .goto 1446,50.89,26.96
    >>Buy the recipe from |cRXP_FRIENDLY_Alchemist Pestlezugg|r
    .target Alchemist Pestlezugg
step
    *Each craft: 4 Iron Bar, 1 Black Vitriol, 4 Purple Lotus, 4 Firebloom
    *Recipe: Philosopher's Stone requires Alchemy 225. Keep the stone: transmutes need it.
    .skill alchemy,226 >>Craft 1x Philosopher's Stone until 226
step
    *Each craft: 1 Khadgar's Whisker, 1 Goldthorn, 1 Leaded Vial
    .skill alchemy,240 >>Craft 20x Greater Mana Potion until 240
step
    *Each craft: 1 Arthas' Tears, 1 Crystal Vial
    .skill alchemy,260 >>Craft 23x Draught of Detect Undead until 260
step
    #completewith next
    .goto 1457,55.84,24.47
    >>Buy the recipe from |cRXP_FRIENDLY_Ulthir|r
    .target Ulthir
step
    *Each craft: 2 Sungrass, 2 Blindweed, 1 Crystal Vial
    *Recipe: Superior Mana Potion requires Alchemy 260.
    .skill alchemy,270 >>Craft 10x Superior Mana Potion until 270
step
    *Each craft: 1 Crystal Vial, 1 Plaguebloom, 1 Murloc Eye
    *Taught by special trainers after a short questline: the Odd Child in Westfall or Apothecary Renferrel at the Sepulcher in Silverpine Forest (Horde; chain starts at a farm in northern Silverpine). Unlock it before 270. co
    .skill alchemy,300 >>Craft 31x Major Discolored Healing Potion until 300
step
    +|cRXP_WARN_Alchemy 300 done.|r Zug zug.
]])
