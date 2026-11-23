RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - Professions
#groupweight 70
#subgroup Crafting
#name 1-300 Tailoring (A)
#displayname 1-300 Tailoring
step
    +|cRXP_WARN_Tailoring 1-300 for WoW Forever.|r Read the notes, then click to start.
    *180 new recipes: 67 bought with Merchant's Favor, 39 with no known source; e.g. Pristine Circlet / Pristine Sash (30 Favor, skill 60-125), Gilded Slippers, Earthen Silk Slippers, Gilded Sandals (140-235).
    *New Pattern: Runecloth Cuffs (Tailoring 250; 5 Bolt of Runecloth, 1 Ironweb Spider Silk, 1 Rune Thread), sold only by Pexmit in Mount Hyjal.
    *New Venomspew Gloves / Cord / Footpads patterns (285 / 290 / 295) from Mishta in Silithus; Bind on Equip blues with Nature Resistance; need Cenarion Circle Friendly (Gloves) or Honored (Cord, Footpads).
    *16 skill-300 tier set recipes from Aisarra Nightmeadow; Robes of Fiery Devastation and Felblood Soul Bag (300, source unknown).
    *Synthetic Gordok Ogre Suit moved from Leatherworking to Tailoring.
    *Camp object Faction Banner (skill 20) increases Spirit and is exclusive with Divine Spirit.
step
    +|cRXP_WARN_Shopping list for the whole route|r (buy or farm before you start). Click when ready.
    *108 Linen Cloth, 56 Coarse Thread, 252 Wool Cloth, 111 Fine Thread
    *264 Silk Cloth, 14 Blue Dye, 16 Spider's Silk, 2 Bleach
    *425 Mageweave Cloth, 31 Elemental Earth, 20 Elemental Water, 20 Elemental Fire
    *20 Elemental Air, 50 Silken Thread, 11 Orange Dye, 45 Heavy Silken Thread
    *2370 Runecloth, 196 Rune Thread, 83 Ironweb Spider Silk, 48 Rugged Leather
    *24 Essence of Earth, 24 Living Essence, 20 Small Brilliant Shard, 60 Essence of Air
    *1 Pattern: Runecloth Cloak, 1 Pattern: Runecloth Boots, 1 Pattern: Runecloth Cuffs, 1 Pattern: Wisdom of the Timbermaw
    *1 Pattern: Venomspew Gloves, 1 Pattern: Venomspew Cord, 1 Pattern: Venomspew Footpads
    *Computed from the step table, including the raw cloth for the extra bolts later steps need beyond the bolt-making skill-up crafts. Includes the seven vendor patterns.
step
    .goto 1453,52.17,83.14
    >>Talk to |cRXP_FRIENDLY_Sellandus|r and train Apprentice Tailoring
    .target Sellandus
    .skill tailoring,1 >>Learn Apprentice Tailoring
step
    *Each craft: 2 Linen Cloth
    *Known with Apprentice.
    .skill tailoring,43 >>Craft 54x Bolt of Linen Cloth until 43
step
    *Each craft: 1 Bolt of Linen Cloth, 1 Coarse Thread
    .skill tailoring,45 >>Craft 2x Brown Linen Vest until 45
step
    .goto 1453,52.17,83.14
    >>Talk to |cRXP_FRIENDLY_Sellandus|r and train Journeyman Tailoring
    .target Sellandus
    .maxskill tailoring,150 >>Train Journeyman Tailoring (needs skill 50)
step
    *Each craft: 1 Bolt of Linen Cloth, 1 Coarse Thread
    *Train Journeyman at 50 (char level 10).
    .skill tailoring,70 >>Craft 33x Linen Belt until 70
step
    *Each craft: 2 Bolt of Linen Cloth, 3 Coarse Thread
    .skill tailoring,75 >>Craft 7x Reinforced Linen Cape until 75
step
    *Each craft: 3 Wool Cloth
    *Later steps use 84 Bolt of Woolen Cloth in total but the skill-up crafts make only 12; make 72 more (or buy them). total_mats includes the extra mats.
    .skill tailoring,81 >>Craft 12x Bolt of Woolen Cloth until 81
step
    *Each craft: 1 Bolt of Woolen Cloth, 1 Fine Thread
    .skill tailoring,100 >>Craft 27x Woolen Cape until 100
step
    *Each craft: 4 Silk Cloth
    *Later steps use 66 Bolt of Silk Cloth in total but the skill-up crafts make only 10; make 56 more (or buy them). total_mats includes the extra mats.
    .skill tailoring,110 >>Craft 10x Bolt of Silk Cloth until 110
step
    *Each craft: 3 Bolt of Woolen Cloth, 2 Fine Thread
    *Train Expert at 125 (char level 20).
    .skill tailoring,125 >>Craft 19x Double-stitched Woolen Shoulders until 125
step
    .goto 1453,52.17,83.14
    >>Talk to |cRXP_FRIENDLY_Sellandus|r and train Expert Tailoring
    .target Sellandus
    .maxskill tailoring,225 >>Train Expert Tailoring (needs skill 125)
step
    *Each craft: 2 Bolt of Silk Cloth, 2 Blue Dye, 1 Fine Thread
    .skill tailoring,132 >>Craft 7x Azure Silk Hood until 132
step
    *Each craft: 2 Bolt of Silk Cloth, 2 Fine Thread, 2 Spider's Silk
    .skill tailoring,139 >>Craft 8x Lesser Wizard's Robe until 139
step
    *Each craft: 3 Bolt of Silk Cloth, 2 Bleach, 1 Fine Thread
    .skill tailoring,140 >>Craft 1x Formal White Shirt until 140
step
    *Each craft: 5 Mageweave Cloth
    *Later steps use 85 Bolt of Mageweave in total but the skill-up crafts make only 11; make 74 more (or buy them). total_mats includes the extra mats.
    .skill tailoring,149 >>Craft 11x Bolt of Mageweave until 149
step
    *Each craft: 3 Bolt of Silk Cloth, 1 Elemental Earth, 2 Fine Thread
    .skill tailoring,160 >>Craft 11x Earthen Vest until 160
step
    *Each craft: 2 Bolt of Mageweave, 2 Elemental Earth, 2 Elemental Water, 2 Elemental Fire, 2 Elemental Air, 2 Silken Thread
    .skill tailoring,170 >>Craft 10x Robe of Power until 170
step
    *Each craft: 2 Bolt of Mageweave, 3 Silken Thread
    .skill tailoring,180 >>Craft 10x Black Mageweave Vest until 180
step
    *Each craft: 1 Bolt of Mageweave, 1 Orange Dye, 1 Heavy Silken Thread
    .skill tailoring,190 >>Craft 11x Orange Mageweave Shirt until 190
step
    *Each craft: 2 Bolt of Mageweave, 2 Heavy Silken Thread
    *Train Artisan at 200 (char level 35).
    .skill tailoring,205 >>Craft 17x Black Mageweave Gloves until 205
step
    .goto 1445,66.18,51.81
    >>Talk to |cRXP_FRIENDLY_Timothy Worthington|r and train Artisan Tailoring
    .target Timothy Worthington
    *Alliance: Timothy Worthington, Theramore Isle, Dustwallow Marsh (66.2, 51.6). Horde: Daryl Stack, Tarren Mill, Hillsbrad Foothills (63.4, 20.8). Artisan needs skill 200 and character level 35 (5 gold). Source: conquestcapped (Wowhead's Tail
    .maxskill tailoring,300 >>Train Artisan Tailoring (needs skill 200)
step
    *Each craft: 5 Runecloth
    *Later steps use 474 Bolt of Runecloth in total but the skill-up crafts make only 11; make 463 more (or buy them). total_mats includes the extra mats.
    .skill tailoring,214 >>Craft 11x Bolt of Runecloth until 214
step
    *Each craft: 3 Bolt of Runecloth, 1 Rune Thread
    .skill tailoring,234 >>Craft 21x Runecloth Belt until 234
step
    #completewith next
    .goto 1450,51.47,33.25
    >>Buy the recipe from |cRXP_FRIENDLY_Darnall|r
    .target Darnall
step
    *Each craft: 4 Bolt of Runecloth, 1 Ironweb Spider Silk, 1 Rune Thread
    *Pattern: Runecloth Cloak requires Tailoring 220.
    .skill tailoring,250 >>Craft 18x Runecloth Cloak until 250
step
    #completewith next
    .goto 1450,51.47,33.25
    >>Buy the recipe from |cRXP_FRIENDLY_Darnall|r
    .target Darnall
step
    *Each craft: 4 Bolt of Runecloth, 2 Ironweb Spider Silk, 4 Rugged Leather, 1 Rune Thread
    *Pattern: Runecloth Boots requires Tailoring 235.
    .skill tailoring,260 >>Craft 12x Runecloth Boots until 260
step
    #completewith next
    .goto 2482,46.89,80.68
    >>Buy the recipe from |cRXP_FRIENDLY_Pexmit|r
    .target Pexmit
step
    *Each craft: 5 Bolt of Runecloth, 1 Ironweb Spider Silk, 1 Rune Thread
    *New in Forever. Pattern: Runecloth Cuffs requires Tailoring 250. conquestcapped skips it: the pattern is sold only by Pexmit, a rare demon on Mount Hyjal (its route uses Runecloth Headband / Runecloth Shoulders patterns 
    .skill tailoring,280 >>Craft 25x Runecloth Cuffs until 280
step
    #completewith next
    .goto 1448,65.69,2.81
    >>Buy the recipe from |cRXP_FRIENDLY_Meilosh|r
    .target Meilosh
step
    *Each craft: 8 Bolt of Runecloth, 3 Essence of Earth, 3 Living Essence, 2 Ironweb Spider Silk
    *Pattern: Wisdom of the Timbermaw requires Tailoring 255 and Timbermaw Hold - Honored.
    .skill tailoring,285 >>Craft 8x Wisdom of the Timbermaw until 285
step
    #completewith next
    .goto 1451,49.88,36.33
    >>Buy the recipe from |cRXP_FRIENDLY_Mishta|r
    .target Mishta
step
    *Each craft: 4 Bolt of Runecloth, 1 Small Brilliant Shard, 3 Essence of Air, 6 Rune Thread
    *New in Forever. Pattern: Venomspew Gloves requires Tailoring 285 and Cenarion Circle - Friendly.
    .skill tailoring,292 >>Craft 7x Venomspew Gloves until 292
step
    #completewith next
    .goto 1451,49.88,36.33
    >>Buy the recipe from |cRXP_FRIENDLY_Mishta|r
    .target Mishta
step
    *Each craft: 6 Bolt of Runecloth, 1 Small Brilliant Shard, 3 Essence of Air, 6 Rune Thread
    *New in Forever. Pattern: Venomspew Cord requires Tailoring 290 and Cenarion Circle - Honored.
    .skill tailoring,299 >>Craft 9x Venomspew Cord until 299
step
    #completewith next
    .goto 1451,49.88,36.33
    >>Buy the recipe from |cRXP_FRIENDLY_Mishta|r
    .target Mishta
step
    *Each craft: 5 Bolt of Runecloth, 1 Small Brilliant Shard, 3 Essence of Air, 6 Rune Thread
    *New in Forever. Pattern: Venomspew Footpads requires Tailoring 295 and Cenarion Circle - Honored.
    .skill tailoring,300 >>Craft 4x Venomspew Footpads until 300
step
    +|cRXP_WARN_Tailoring 300 done.|r Zug zug.
]])
