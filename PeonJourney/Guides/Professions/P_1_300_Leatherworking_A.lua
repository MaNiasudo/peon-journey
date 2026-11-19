RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - Professions
#groupweight 70
#subgroup Crafting
#name 1-300 Leatherworking (A)
#displayname 1-300 Leatherworking
step
    +|cRXP_WARN_Leatherworking 1-300 for WoW Forever.|r Read the notes, then click to start.
    *271 new recipes, the most of any profession: 80 bought with Merchant's Favor, 92 with no known source.
    *Leatherworking now makes mail: Wildthorn Mail, Heavy Timbermaw Belt, Storm Gauntlets, Helm of the Great Chief, Heavy Timbermaw Boots and Invulnerable Mail (skill 245-295) moved over from Blacksmithing.
    *New recipes include Mender's Leather Belt and six more skill-150 belts from Granny Finespindle, Brawler's Leather Hood and five other skill-100 hoods (30 Merchant's Favor), Prowler's / Skulker's Leather Boots (235, 90 Favor), Stal
    *Camp objects: Tanning Rack (140; blueprint drops from Razorclaw the Butcher in Shadowfang Keep) and Sewing Machine (300, needed for advanced recipes).
    *Synthetic Gordok Ogre Suit moved from Leatherworking to Tailoring.
    *Nightscape Pants is taught only by the Artisan trainers.
step
    +|cRXP_WARN_Shopping list for the whole route|r (buy or farm before you start). Click when ready.
    *96 Ruined Leather Scraps, 10 Light Hide, 445 Salt, 120 Coarse Thread
    *308 Medium Leather, 47 Gray Dye, 190 Fine Thread, 75 Cured Medium Hide
    *145 Heavy Hide, 50 Elixir of Lesser Defense, 50 Spider's Silk, 216 Heavy Leather
    *54 Iridescent Pearl, 54 Jade, 27 Citrine, 180 Silken Thread
    *590 Thick Leather, 33 Rugged Hide, 33 Refined Deeprock Salt, 568 Rugged Leather
    *35 Black Dye, 74 Rune Thread, 420 Heavy Scorpid Scale, 243 Light Leather
    *1 Pattern: Gem-studded Leather Belt, 1 Pattern: Wicked Leather Gauntlets, 1 Pattern: Heavy Scorpid Bracers, 1 Pattern: Heavy Scorpid Helm
    *Computed from the step table. Light Leather beyond the 32 made from scraps and all Cured Medium Hide are listed as buys; extra Heavy Hide/Salt and Rugged Hide/Refined Deeprock Salt cover the Cured Heavy Hide and Cured Ru
step
    .goto 1453,71.69,63
    >>Talk to |cRXP_FRIENDLY_Simon Tanner|r and train Apprentice Leatherworking
    .target Simon Tanner
    .skill leatherworking,1 >>Learn Apprentice Leatherworking
step
    *Each craft: 3 Ruined Leather Scraps
    *Known with Apprentice.
    .skill leatherworking,30 >>Craft 32x Light Leather until 30
step
    *Each craft: 1 Light Leather
    *Known with Apprentice.
    .skill leatherworking,45 >>Craft 20x Light Armor Kit until 45
step
    .goto 1453,71.69,63
    >>Talk to |cRXP_FRIENDLY_Simon Tanner|r and train Journeyman Leatherworking
    .target Simon Tanner
    .maxskill leatherworking,150 >>Train Journeyman Leatherworking (needs skill 50)
step
    *Each craft: 1 Light Hide, 1 Salt
    *Train Journeyman at 50 (char level 10).
    .skill leatherworking,55 >>Craft 10x Cured Light Hide until 55
step
    *Each craft: 3 Light Leather, 2 Coarse Thread
    .skill leatherworking,85 >>Craft 35x Embossed Leather Gloves until 85
step
    *Each craft: 6 Light Leather, 2 Coarse Thread
    *Later steps use 25 Fine Leather Belt in total but the skill-up crafts make only 20; make 5 more (or buy them). total_mats includes the extra mats.
    .skill leatherworking,100 >>Craft 20x Fine Leather Belt until 100
step
    *Each craft: 12 Medium Leather, 1 Gray Dye, 1 Fine Thread
    .skill leatherworking,115 >>Craft 15x Dark Leather Pants until 115
step
    *Each craft: 4 Medium Leather, 2 Fine Thread, 1 Gray Dye
    .skill leatherworking,118 >>Craft 7x Gray Leather Boots until 118
step
    *Each craft: 1 Fine Leather Belt, 1 Cured Medium Hide, 2 Fine Thread, 1 Gray Dye
    *Train Expert at 125 (char level 20).
    .skill leatherworking,125 >>Craft 7x Dark Leather Belt until 125
step
    .goto 1453,71.69,63
    >>Talk to |cRXP_FRIENDLY_Simon Tanner|r and train Expert Leatherworking
    .target Simon Tanner
    .maxskill leatherworking,225 >>Train Expert Leatherworking (needs skill 125)
step
    *Each craft: 1 Heavy Hide, 3 Salt
    *Later steps use 145 Cured Heavy Hide in total but the skill-up crafts make only 22; make 123 more (or buy them). total_mats includes the extra mats.
    .skill leatherworking,135 >>Craft 10x Cured Heavy Hide until 135
step
    *Each craft: 1 Fine Leather Belt, 1 Cured Medium Hide, 2 Fine Thread, 1 Gray Dye
    .skill leatherworking,143 >>Craft 18x Dark Leather Belt until 143
step
    *Each craft: 1 Heavy Hide, 3 Salt
    .skill leatherworking,145 >>Craft 12x Cured Heavy Hide until 145
step
    *Each craft: 4 Medium Leather, 2 Cured Medium Hide, 2 Elixir of Lesser Defense, 2 Spider's Silk, 2 Fine Thread
    .skill leatherworking,155 >>Craft 25x Toughened Leather Gloves until 155
step
    *Each craft: 8 Heavy Leather, 1 Cured Heavy Hide, 2 Fine Thread
    .skill leatherworking,160 >>Craft 5x Barbaric Shoulders until 160
step
    #completewith next
    .goto 1434,28.49,76.05
    >>Buy the recipe from |cRXP_FRIENDLY_Rikqiz|r
    .target Rikqiz
step
    *Each craft: 4 Cured Heavy Hide, 2 Iridescent Pearl, 2 Jade, 1 Citrine, 1 Fine Thread
    *Pattern: Gem-studded Leather Belt requires Leatherworking 160.
    .skill leatherworking,180 >>Craft 20x Gem-studded Leather Belt until 180
step
    *Each craft: 8 Heavy Leather, 1 Cured Heavy Hide, 2 Fine Thread
    .skill leatherworking,185 >>Craft 12x Barbaric Shoulders until 185
step
    #completewith next
    .goto 1434,28.49,76.05
    >>Buy the recipe from |cRXP_FRIENDLY_Rikqiz|r
    .target Rikqiz
step
    *Each craft: 4 Cured Heavy Hide, 2 Iridescent Pearl, 2 Jade, 1 Citrine, 1 Fine Thread
    .skill leatherworking,190 >>Craft 7x Gem-studded Leather Belt until 190
step
    *Each craft: 4 Heavy Leather, 1 Cured Heavy Hide, 1 Silken Thread
    *Train Artisan at 200 (char level 35).
    .skill leatherworking,200 >>Craft 20x Guardian Gloves until 200
step
    .goto 1425,13.39,43.49
    >>Talk to |cRXP_FRIENDLY_Drakk Stonehand|r and train Artisan Leatherworking
    .target Drakk Stonehand
    *Alliance: Drakk Stonehand, Aerie Peak, The Hinterlands (13.4, 43.4). Horde: Hahrana Ironhide, Camp Mojache, Feralas (74.4, 43.0). Both also teach Nightscape Pants. Artisan needs skill 200 and character level 35. Source: conquestcapped (Wowh
    .maxskill leatherworking,300 >>Train Artisan Leatherworking (needs skill 200)
step
    *Each craft: 5 Thick Leather, 1 Silken Thread
    .skill leatherworking,210 >>Craft 20x Thick Armor Kit until 210
step
    *Each craft: 14 Thick Leather, 4 Silken Thread
    *conquestcapped: Nightscape Pants is taught only by the Artisan trainers (Drakk Stonehand / Hahrana Ironhide), so learn it when you train Artisan.
    .skill leatherworking,225 >>Craft 15x Nightscape Pants until 225
step
    *Each craft: 1 Rugged Hide, 1 Refined Deeprock Salt
    *Later steps use 33 Cured Rugged Hide in total but the skill-up crafts make only 6; make 27 more (or buy them). total_mats includes the extra mats.
    .skill leatherworking,230 >>Craft 6x Cured Rugged Hide until 230
step
    *Each craft: 14 Thick Leather, 4 Silken Thread
    .skill leatherworking,240 >>Craft 20x Nightscape Pants until 240
step
    #completewith next
    .goto 1422,43.08,84.31
    >>Buy the recipe from |cRXP_FRIENDLY_Leonard Porter|r
    .target Leonard Porter
step
    *Each craft: 8 Rugged Leather, 1 Black Dye, 1 Rune Thread
    *Pattern: Wicked Leather Gauntlets requires Leatherworking 235.
    .skill leatherworking,255 >>Craft 15x Wicked Leather Gauntlets until 255
step
    #completewith next
    .goto 1451,82,17.74
    >>Buy the recipe from |cRXP_FRIENDLY_Zannok Hidepiercer|r
    .target Zannok Hidepiercer
step
    *Each craft: 4 Rugged Leather, 4 Heavy Scorpid Scale, 1 Rune Thread
    *Pattern: Heavy Scorpid Bracers requires Leatherworking 255.
    .skill leatherworking,260 >>Craft 6x Heavy Scorpid Bracers until 260
step
    #completewith next
    .goto 1422,43.08,84.31
    >>Buy the recipe from |cRXP_FRIENDLY_Leonard Porter|r
    .target Leonard Porter
step
    *Each craft: 8 Rugged Leather, 1 Black Dye, 1 Rune Thread
    .skill leatherworking,270 >>Craft 20x Wicked Leather Gauntlets until 270
step
    #completewith next
    .goto 1451,82,17.74
    >>Buy the recipe from |cRXP_FRIENDLY_Zannok Hidepiercer|r
    .target Zannok Hidepiercer
step
    *Each craft: 8 Rugged Leather, 12 Heavy Scorpid Scale, 1 Cured Rugged Hide, 1 Rune Thread
    *Pattern: Heavy Scorpid Helm requires Leatherworking 270.
    .skill leatherworking,300 >>Craft 33x Heavy Scorpid Helm until 300
step
    +|cRXP_WARN_Leatherworking 300 done.|r Zug zug.
]])
