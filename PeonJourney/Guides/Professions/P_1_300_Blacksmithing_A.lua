RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - Professions
#groupweight 70
#subgroup Crafting
#name 1-300 Blacksmithing (A)
#displayname 1-300 Blacksmithing
step
    +|cRXP_WARN_Blacksmithing 1-300 for WoW Forever.|r Read the notes, then click to start.
    *New material Azerothium Bar (item 249726), smelted with Smelt Azerothium from 2 Pitchblende + 1 Coal per bar; used by Bold Dirk (10 per craft) and Enriched Thorium Breastplate (4).
    *New Plans: Bold Dirk (Blacksmithing 270; 30 Thorium Bar, 4 Essence of Air, 10 Azerothium Bar, 4 Rugged Leather), sold by Pexmit in Mount Hyjal; Wowhead uses it for 270-300.
    *197 new recipes: 61 bought with Merchant's Favor from Stondry Darkhammer (Alliance) / Gor'mak (Horde), e.g. Plans: Crusader's Boots (85), Officer's Pauldrons (210), Enriched Thorium Breastplate (300); 55 with no known source. Plan
    *Six mail recipes moved from Blacksmithing to Leatherworking.
    *Coarse Grinding Stone now gives skill up to 90 instead of 75.
    *Sandpaper is a new reagent used in 25 new Blacksmithing recipes.
step
    +|cRXP_WARN_Shopping list for the whole route|r (buy or farm before you start). Click when ready.
    *116 Rough Stone, 290 Copper Bar, 5 Silver Bar, 323 Bronze Bar
    *5 Heavy Stone, 336 Iron Bar, 11 Strong Flux, 11 Medium Leather
    *34 Coarse Grinding Stone, 51 Green Dye, 44 Heavy Grinding Stone, 1154 Mithril Bar
    *168 Mageweave Cloth, 80 Steel Bar, 15 Dense Stone, 132 Thick Leather
    *12 Black Pearl, 48 Shadowgem, 32 Solid Grinding Stone, 10 Arcanite Bar
    *18 Dense Grinding Stone, 120 Truesilver Bar, 40 Star Ruby, 950 Thorium Bar
    *116 Essence of Air, 290 Azerothium Bar, 132 Rugged Leather, 8 Large Opal
    *1 Blacksmith Hammer, 1 Plans: Ebon Shiv, 1 Plans: Ornate Thorium Handaxe, 1 Plans: Bold Dirk
    *Computed from the step table. Grinding stones and Strong Flux are listed as buys (the route has no step that makes them). Includes the Blacksmith Hammer tool and the three vendor plans.
step
    .goto 1453,63.66,37.01
    >>Talk to |cRXP_FRIENDLY_Therum Deepforge|r and train Apprentice Blacksmithing
    .target Therum Deepforge
    .skill blacksmithing,1 >>Learn Apprentice Blacksmithing
step
    *Each craft: 1 Rough Stone
    *Known with Apprentice. Every plan needs a Blacksmith Hammer in your bags (vendor).
    .skill blacksmithing,30 >>Craft 32x Rough Sharpening Stone until 30
step
    *Each craft: 2 Rough Stone
    *Train Journeyman at 50 (char level 10).
    .skill blacksmithing,65 >>Craft 42x Rough Grinding Stone until 65
step
    .goto 1453,63.66,37.01
    >>Talk to |cRXP_FRIENDLY_Therum Deepforge|r and train Journeyman Blacksmithing
    .target Therum Deepforge
    .maxskill blacksmithing,150 >>Train Journeyman Blacksmithing (needs skill 50)
step
    *Each craft: 6 Copper Bar
    .skill blacksmithing,75 >>Craft 10x Copper Chain Belt until 75
step
    *Each craft: 1 Silver Bar, 1 Rough Grinding Stone
    .skill blacksmithing,80 >>Craft 5x Silver Skeleton Key until 80
step
    *Each craft: 6 Bronze Bar
    .skill blacksmithing,90 >>Craft 10x Rough Bronze Leggings until 90
step
    *Each craft: 10 Copper Bar
    .skill blacksmithing,100 >>Craft 13x Runed Copper Belt until 100
step
    *Each craft: 1 Heavy Stone
    .skill blacksmithing,105 >>Craft 5x Heavy Sharpening Stone until 105
step
    *Each craft: 10 Copper Bar
    .skill blacksmithing,110 >>Craft 10x Runed Copper Belt until 110
step
    *Each craft: 6 Bronze Bar
    *Train Expert at 125 (char level 20).
    .skill blacksmithing,125 >>Craft 15x Rough Bronze Leggings until 125
step
    .goto 1453,63.66,37.01
    >>Talk to |cRXP_FRIENDLY_Therum Deepforge|r and train Expert Blacksmithing
    .target Therum Deepforge
    .maxskill blacksmithing,225 >>Train Expert Blacksmithing (needs skill 125)
step
    *Each craft: 1 Iron Bar
    .skill blacksmithing,129 >>Craft 6x Iron Buckle until 129
step
    *Each craft: 8 Bronze Bar, 1 Strong Flux, 1 Medium Leather
    .skill blacksmithing,140 >>Craft 11x Bronze Warhammer until 140
step
    *Each craft: 5 Bronze Bar, 2 Coarse Grinding Stone
    .skill blacksmithing,147 >>Craft 17x Patterned Bronze Bracers until 147
step
    *Each craft: 6 Iron Bar, 1 Green Dye
    .skill blacksmithing,155 >>Craft 8x Green Iron Bracers until 155
step
    *Each craft: 8 Iron Bar, 1 Heavy Grinding Stone, 1 Green Dye
    .skill blacksmithing,165 >>Craft 12x Green Iron Leggings until 165
step
    *Each craft: 6 Iron Bar, 1 Green Dye
    .skill blacksmithing,183 >>Craft 31x Green Iron Bracers until 183
step
    *Each craft: 6 Mithril Bar, 4 Mageweave Cloth
    .skill blacksmithing,190 >>Craft 7x Heavy Mithril Gauntlet until 190
step
    *Each craft: 5 Steel Bar, 2 Heavy Grinding Stone
    *Train Artisan at 200 (char level 35) from Brikk Keencraft, Booty Bay.
    .skill blacksmithing,200 >>Craft 16x Golden Scale Bracers until 200
step
    .goto 1434,28.99,75.56
    >>Talk to |cRXP_FRIENDLY_Brikk Keencraft|r and train Artisan Blacksmithing
    .target Brikk Keencraft
    *One Artisan trainer for both factions: Brikk Keencraft, Booty Bay, Stranglethorn Vale (29.0, 75.4); he is also the only trainer for Big Black Mace. Artisan needs skill 200 and character level 35. Source: conquestcapped (Wowhead's Blacksmith
    .maxskill blacksmithing,300 >>Train Artisan Blacksmithing (needs skill 200)
step
    *Each craft: 6 Mithril Bar, 4 Mageweave Cloth
    .skill blacksmithing,205 >>Craft 5x Heavy Mithril Gauntlet until 205
step
    *Each craft: 12 Mithril Bar
    .skill blacksmithing,210 >>Craft 5x Mithril Plate Pants until 210
step
    *Each craft: 6 Mithril Bar, 4 Mageweave Cloth
    .skill blacksmithing,215 >>Craft 12x Heavy Mithril Gauntlet until 215
step
    *Each craft: 16 Mithril Bar
    .skill blacksmithing,225 >>Craft 10x Heavy Mithril Breastplate until 225
step
    *Each craft: 1 Dense Stone
    .skill blacksmithing,235 >>Craft 15x Dense Weightstone until 235
step
    *Each craft: 10 Mithril Bar, 6 Mageweave Cloth
    .skill blacksmithing,240 >>Craft 12x Mithril Coif until 240
step
    *Each craft: 14 Mithril Bar, 4 Thick Leather
    .skill blacksmithing,246 >>Craft 17x Heavy Mithril Boots until 246
step
    *Each craft: 16 Mithril Bar, 1 Black Pearl, 4 Shadowgem, 1 Solid Grinding Stone, 2 Thick Leather
    *conquestcapped: Big Black Mace is taught only by Brikk Keencraft (the Artisan trainer in Booty Bay).
    .skill blacksmithing,250 >>Craft 12x Big Black Mace until 250
step
    *Each craft: 1 Arcanite Bar, 1 Dense Grinding Stone
    *Needs Arcanite Bars (Alchemy transmute); conquestcapped skips this step for that reason.
    .skill blacksmithing,257 >>Craft 10x Arcanite Skeleton Key until 257
step
    #completewith next
    .goto 1422,68.12,77.57
    >>Buy the recipe from |cRXP_FRIENDLY_Magnus Frostwake|r
    .target Magnus Frostwake
step
    *Each craft: 12 Mithril Bar, 6 Truesilver Bar, 2 Star Ruby, 1 Solid Grinding Stone, 2 Thick Leather
    *Plans: Ebon Shiv requires Blacksmithing 230. conquestcapped: Magnus Frostwake only appears after the Scholomance quests.
    .skill blacksmithing,270 >>Craft 20x Ebon Shiv until 270
step
    #completewith next
    .goto 2482,46.89,80.68
    >>Buy the recipe from |cRXP_FRIENDLY_Pexmit|r
    .target Pexmit
step
    *Each craft: 30 Thorium Bar, 4 Essence of Air, 10 Azerothium Bar, 4 Rugged Leather
    *New in Forever. Plans: Bold Dirk requires Blacksmithing 270. Pexmit (<Someone's Minion>) is described by conquestcapped as a rare demon on Mount Hyjal; conquestcapped skips Bold Dirk and says many guides copied it from b
    .skill blacksmithing,275 >>Craft 5x Bold Dirk until 275
step
    #completewith next
    .goto 1422,68.12,77.57
    >>Buy the recipe from |cRXP_FRIENDLY_Magnus Frostwake|r
    .target Magnus Frostwake
step
    *Each craft: 20 Thorium Bar, 2 Large Opal, 2 Dense Grinding Stone, 4 Rugged Leather
    *Plans: Ornate Thorium Handaxe requires Blacksmithing 250.
    .skill blacksmithing,279 >>Craft 4x Ornate Thorium Handaxe until 279
step
    #completewith next
    .goto 2482,46.89,80.68
    >>Buy the recipe from |cRXP_FRIENDLY_Pexmit|r
    .target Pexmit
step
    *Each craft: 30 Thorium Bar, 4 Essence of Air, 10 Azerothium Bar, 4 Rugged Leather
    *Same Pexmit plans as 270-275.
    .skill blacksmithing,300 >>Craft 24x Bold Dirk until 300
step
    +|cRXP_WARN_Blacksmithing 300 done.|r Zug zug.
]])
