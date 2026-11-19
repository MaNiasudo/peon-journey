RXPGuides.RegisterGuide([[
#forever
#version 1
#group Peon Journey - Gold
#groupweight 60
#name Weekly: In Demand - Dire Maul
#displayname Weekly: In Demand - Dire Maul
#subgroup Weekly
step
    +|cRXP_WARN_The best repeatable gold in Forever is weekly, not daily.|r Pix Xizzix in Booty Bay offers one 'In Demand' quest per week (level 60). This guide is the Dire Maul version. If Pix offers Blackrock Legal Records instead, load that guide.
    *Reward: Undermine Satchel with one vendor item (Gold Nugget 10g, Huge Quartz Gem 20g, Silver Necklace 40g or Gold Ring 100g) plus materials. Guides estimate about 20-60g a week, best case about 140g.
step
    .goto 1434,28.52,75.86
    >>Talk to |cRXP_FRIENDLY_Pix Xizzix|r near the Booty Bay auction house
    .accept 96076 >>Accept In Demand - Ancient Elven Curiosities
    .target Pix Xizzix
step
    .goto 1444,59.2,45.1
    >>Fly to Feathermoon / Camp Mojache and go to Dire Maul. Bring a group.
    *East: kill |cRXP_ENEMY_Pusillin|r for the Crescent Key, then |cRXP_ENEMY_Alzzin the Wildshaper|r.
    *West: kill |cRXP_ENEMY_Prince Tortheldrin|r.
    *North: kill |cRXP_ENEMY_King Gordok|r (a tribute run counts).
    *Every boss also drops a Tarnished Undermine Real (one per boss per day). Reals buy items from Pix, they are not gold.
    .complete 96076,1
    .complete 96076,2
    .complete 96076,3
    .mob Alzzin the Wildshaper
    .mob Prince Tortheldrin
    .mob King Gordok
step
    .goto 1434,28.52,75.86
    >>Talk to |cRXP_FRIENDLY_Pix Xizzix|r
    .turnin 96076 >>Turn in In Demand - Ancient Elven Curiosities
    .target Pix Xizzix
step
    +Open the |cRXP_LOOT_Undermine Satchel|r. Vendor the gold item and post the materials (Essence of Air, Marefoil, Refined Deeprock Salt) on the auction house. Done until next week.
]])
