RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - Professions
#groupweight 70
#subgroup Crafting
#name 1-300 Engineering (A)
#displayname 1-300 Engineering
step
    +|cRXP_WARN_Engineering 1-300 for WoW Forever.|r Read the notes, then click to start.
    *77 new recipes: 28 bought with Merchant's Favor from Fritz Fizzle, Redridge Mountains (Alliance) and Fizzlefuse, The Barrens (Horde) (45-360 Favor, Azeroth Commerce Authority reputation); 40 with no known source.
    *New Artisan trainer for both factions: Kaylaena Springwhisper, Cenarion Circle camp, Mount Hyjal; new Apprentice trainer Strange Hermit on Zephras Isle.
    *Schematic: Thorium Tube is also sold by Kor'gar at Powderfuse, Riverglades.
    *Sandpaper is a new reagent used in 27 new recipes (25 of them Blacksmithing).
    *New recipes include Emergency Field Cloak (225), Loot-A-Rang (275), Gnomish Poultryizer (300) and Dimensional Transporter - Mt. Hyjal (300, 10g from Pexmit).
    *Gnomish or Goblin Engineering is chosen at skill 200 and character level 30; each teaches 11 recipes and is not needed for 300; the quest chain is the Classic one.
step
    +|cRXP_WARN_Shopping list for the whole route|r (buy or farm before you start). Click when ready.
    *58 Rough Stone, 64 Copper Bar, 44 Linen Cloth, 45 Coarse Stone
    *5 Silver Bar, 126 Bronze Bar, 25 Weak Flux, 10 Moss Agate
    *68 Wool Cloth, 15 Medium Leather, 30 Heavy Blasting Powder, 102 Solid Stone
    *4 Steel Bar, 132 Mithril Bar, 18 Mageweave Cloth, 54 Dense Stone
    *165 Thorium Bar, 25 Runecloth, 1 Schematic: Thorium Widget, 1 Schematic: Thorium Tube
    *Computed from the step table, including extra raw mats for intermediates the route under-produces (Rough Blasting Powder, Handful of Copper Bolts, Coarse Blasting Powder, Bronze Framework). Heavy Blasting Powder is liste
step
    .goto 1453,62.09,30.31
    >>Talk to |cRXP_FRIENDLY_Lilliam Sparkspindle|r and train Apprentice Engineering
    .target Lilliam Sparkspindle
    .skill engineering,1 >>Learn Apprentice Engineering
step
    *Each craft: 1 Rough Stone
    *Known with Apprentice. Wowhead: craft 60 and save (Rough Copper Bomb needs 58). Later steps use 58 Rough Blasting Powder in total but the skill-up crafts make only 32; make 26 more (or buy them). total_mats includes the 
    .skill engineering,30 >>Craft 32x Rough Blasting Powder until 30
step
    *Each craft: 1 Copper Bar
    *Wowhead: craft 30 and save (Rough Copper Bomb needs 29). Train Journeyman at 50 (char level 10). Later steps use 29 Handful of Copper Bolts in total but the skill-up crafts make only 20; make 9 more (or buy them). total_
    .skill engineering,50 >>Craft 20x Handful of Copper Bolts until 50
step
    .goto 1453,62.09,30.31
    >>Talk to |cRXP_FRIENDLY_Lilliam Sparkspindle|r and train Journeyman Engineering
    .target Lilliam Sparkspindle
    .maxskill engineering,150 >>Train Journeyman Engineering (needs skill 50)
step
    *Each craft: 6 Copper Bar
    *Keep the Arclight Spanner: most later recipes need it as a tool. conquestcapped also lists a Blacksmith Hammer (vendor) as needed.
    .skill engineering,51 >>Craft 1x Arclight Spanner until 51
step
    *Each craft: 1 Copper Bar, 1 Handful of Copper Bolts, 2 Rough Blasting Powder, 1 Linen Cloth
    .skill engineering,75 >>Craft 29x Rough Copper Bomb until 75
step
    *Each craft: 1 Coarse Stone
    *Later steps use 45 Coarse Blasting Powder in total but the skill-up crafts make only 16; make 29 more (or buy them). total_mats includes the extra mats.
    .skill engineering,90 >>Craft 16x Coarse Blasting Powder until 90
step
    *Each craft: 3 Coarse Blasting Powder, 1 Linen Cloth
    .skill engineering,100 >>Craft 15x Coarse Dynamite until 100
step
    *Each craft: 1 Silver Bar
    .skill engineering,105 >>Craft 5x Silver Contact until 105
step
    *Each craft: 2 Bronze Bar, 1 Weak Flux
    *Buy Weak Flux from an engineering supplies vendor. Train Expert at 125 (char level 20).
    .skill engineering,125 >>Craft 25x Bronze Tube until 125
step
    .goto 1453,62.09,30.31
    >>Talk to |cRXP_FRIENDLY_Lilliam Sparkspindle|r and train Expert Engineering
    .target Lilliam Sparkspindle
    .maxskill engineering,225 >>Train Expert Engineering (needs skill 125)
step
    *Each craft: 1 Bronze Tube, 1 Moss Agate
    .skill engineering,135 >>Craft 10x Standard Scope until 135
step
    *Each craft: 2 Bronze Bar, 1 Wool Cloth
    .skill engineering,150 >>Craft 23x Whirring Bronze Gizmo until 150
step
    *Each craft: 2 Bronze Bar, 1 Medium Leather, 1 Wool Cloth
    *Later steps use 15 Bronze Framework in total but the skill-up crafts make only 12; make 3 more (or buy them). total_mats includes the extra mats.
    .skill engineering,160 >>Craft 12x Bronze Framework until 160
step
    *Each craft: 1 Bronze Framework, 1 Whirring Bronze Gizmo, 2 Heavy Blasting Powder, 2 Wool Cloth
    *Wowhead's route has no step that makes the 30 Heavy Blasting Powder; conquestcapped makes 30 from 30 Heavy Stone at 135-150, or buy them.
    .skill engineering,175 >>Craft 15x Explosive Sheep until 175
step
    *Each craft: 2 Solid Stone
    *Keep the extras: Unstable Trigger and Hi-Explosive Bomb use 48.
    .skill engineering,194 >>Craft 51x Solid Blasting Powder until 194
step
    *Each craft: 4 Steel Bar
    *Keep it: goggles and scopes need it as a tool.
    .skill engineering,195 >>Craft 1x Gyromatic Micro-Adjustor until 195
step
    *Each craft: 3 Mithril Bar
    *Train Artisan at 200 (char level 35). Gnomish/Goblin specialization opens at 200 and level 30; not needed for 300.
    .skill engineering,200 >>Craft 5x Mithril Tube until 200
step
    .goto 1446,52.34,27.72
    >>Talk to |cRXP_FRIENDLY_Buzzek Bracketswing|r and train Artisan Engineering
    .target Buzzek Bracketswing
    *Both trainers serve both factions: Buzzek Bracketswing, Gadgetzan, Tanaris (52.2, 27.4) and Kaylaena Springwhisper, Cenarion Circle camp, Mount Hyjal (60.2, 61.4; new in Forever). Artisan needs skill 200 and character level 35 (5 gold). Sou
    .maxskill engineering,300 >>Train Artisan Engineering (needs skill 200)
step
    *Each craft: 1 Mithril Bar, 1 Mageweave Cloth, 1 Solid Blasting Powder
    .skill engineering,215 >>Craft 18x Unstable Trigger until 215
step
    *Each craft: 3 Mithril Bar
    .skill engineering,238 >>Craft 33x Mithril Casing until 238
step
    *Each craft: 2 Mithril Casing, 1 Unstable Trigger, 2 Solid Blasting Powder
    .skill engineering,250 >>Craft 15x Hi-Explosive Bomb until 250
step
    *Each craft: 2 Dense Stone
    .skill engineering,260 >>Craft 27x Dense Blasting Powder until 260
step
    #completewith next
    .goto 1455,67.84,42.5
    >>Buy the recipe from |cRXP_FRIENDLY_Gearcutter Cogspinner|r
    .target Gearcutter Cogspinner
step
    *Each craft: 3 Thorium Bar, 1 Runecloth
    *Schematic: Thorium Widget requires Engineering 260.
    .skill engineering,285 >>Craft 25x Thorium Widget until 285
step
    #completewith next
    .goto 1452,60.8,38.6
    >>Buy the recipe from |cRXP_FRIENDLY_Xizzer Fizzbolt|r
    .target Xizzer Fizzbolt
step
    *Each craft: 6 Thorium Bar
    *Schematic: Thorium Tube requires Engineering 275. conquestcapped: also sold by Kor'gar at Powderfuse, Riverglades (new Forever zone).
    .skill engineering,300 >>Craft 15x Thorium Tube until 300
step
    +|cRXP_WARN_Engineering 300 done.|r Zug zug.
]])
