RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - Professions
#groupweight 70
#subgroup Secondary
#name 1-300 Cooking (H)
#displayname 1-300 Cooking
step
    +|cRXP_WARN_Cooking 1-300 for WoW Forever.|r Read the notes, then click to start.
    *Camping system: the Basic Campfire becomes a shared campsite where nearby players add up to three profession-crafted Camp Features; resting or crafting there for 1+ minute grants their buffs (Blizzard launch post).
    *Campfire kits: Basic Campfire Kit (skill 1, 3 camp objects), Journeyman Campfire Kit, Expert Campfire Kit (10 objects, skill 200 or 220 depending on wow.gg table).
    *Iron Oven (Cooking 300): needed for the most advanced Cooking recipes. ConquestCapped says Mightfish Steak, Lobster Stew, Poached Sunscale Salmon and Baked Salmon need it; Wowhead's Mightfish Steak spell page shows no tool require
    *About 44 new Cooking recipes, 35 of them give +5% experience from kills while Well Fed.
    *Six Smoothies (Cooking 25-250) bought with Merchant's Favor from Kalsey Sanden (Three Corners, Redridge Mountains, Alliance) or Aza'bek (Crossroads, The Barrens, Horde).
    *New recipes include Plain Ol' Paletusk (185, vendor Martha Wellsworth, Riverglades), Sweetpaw Jam, Goldthorn Tea (175, +15 Herbalism), Sage's Tea (250), Plated Armorfish (225), Flank au Poivre and Swiftstrike Steak (275), Savory W
step
    .goto 1454,57.4,53.96
    >>Talk to |cRXP_FRIENDLY_Zamja|r and train Apprentice Cooking
    .target Zamja
    .skill cooking,1 >>Learn Apprentice Cooking
step
    *Each craft: 1 Raw Brilliant Smallfish
    *Recipe: known from the start (Wowhead)
    *wow.gg lists the recipe as sold by fishing vendors (Catherine Leland, Stormwind; Sewa Mistrunner, Thunder Bluff; Gretta Ganter, Dun Morogh) if not known.
    .skill cooking,50 >>Craft 49x Brilliant Smallfish until 50
step
    .goto 1454,57.4,53.96
    >>Talk to |cRXP_FRIENDLY_Zamja|r and train Journeyman Cooking
    .target Zamja
    .maxskill cooking,150 >>Train Journeyman Cooking (needs skill 50)
step
    #completewith next
    .goto 1456,50.99,52.45
    >>Buy the recipe from |cRXP_FRIENDLY_Naal Mistrunner|r
    .target Naal Mistrunner
step
    *Each craft: 1 Raw Longjaw Mud Snapper
    *Train Journeyman (Cooking 50, level 10) before 75.
    .skill cooking,100 >>Craft 51x Longjaw Mud Snapper until 100
step
    #completewith next
    .goto 1413,62.77,38.24
    >>Buy the recipe from |cRXP_FRIENDLY_Kilxx|r
    .target Kilxx
step
    *Each craft: 1 Raw Bristle Whisker Catfish
    *Use The Expert Cookbook at 125 to pass 150.
    .skill cooking,175 >>Craft 120x Bristle Whisker Catfish until 175
step
    .goto 1454,57.4,53.96
    >>Talk to |cRXP_FRIENDLY_Zamja|r and train Expert Cooking
    .target Zamja
    .maxskill cooking,225 >>Train Expert Cooking (needs skill 125)
step
    #completewith next
    .goto 1434,28.23,74.34
    >>Buy the recipe from |cRXP_FRIENDLY_Kelsey Yance|r
    .target Kelsey Yance
step
    *Each craft: 1 Raw Mithril Head Trout
    *Start Clamlette Surprise once at 225 and level 35.
    .skill cooking,225 >>Craft 51x Mithril Headed Trout until 225
step
    .goto 1443,26.17,69.65
    >>Talk to |cRXP_FRIENDLY_Wulan|r and train Artisan Cooking
    .target Wulan
    *No trainer teaches Artisan. Expert comes from The Expert Cookbook (Shandrina, Ashenvale, Alliance / Wulan, Desolace, Horde); Artisan from the quest Clamlette Surprise (Dirge Quikcleave, Gadgetzan, Tanaris, both factions). Regular trainers (
    .maxskill cooking,300 >>Train Artisan Cooking (needs skill 200)
step
    #completewith next
    .goto 1446,66.64,22.08
    >>Buy the recipe from |cRXP_FRIENDLY_Gikkix|r
    .target Gikkix
step
    *Each craft: 1 Raw Spotted Yellowtail
    *Needs Artisan (Clamlette Surprise) to pass 225.
    .skill cooking,275 >>Craft 51x Spotted Yellowtail until 275
step
    #completewith next
    .goto 1444,74.49,42.73
    >>Buy the recipe from |cRXP_FRIENDLY_Sheendra Tallgrass|r
    .target Sheendra Tallgrass
step
    *Each craft: 1 Large Raw Mightfish, 1 Hot Spices, 1 Soothing Spices
    *Conflict: ConquestCapped says Mightfish Steak needs an Iron Oven (Cooking 300), which would block this step; Wowhead lists the step with no tool. Wowhead preferred. ConquestCapped's own route instead runs 1-58 Herb Baked
    .skill cooking,300 >>Craft 25x Mightfish Steak until 300
step
    +|cRXP_WARN_Cooking 300 done.|r Zug zug.
]])
