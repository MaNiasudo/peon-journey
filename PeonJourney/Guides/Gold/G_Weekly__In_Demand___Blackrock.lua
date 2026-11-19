RXPGuides.RegisterGuide([[
#forever
#version 1
#group Peon Journey - Gold
#groupweight 60
#name Weekly: In Demand - Blackrock
#displayname Weekly: In Demand - Blackrock
#subgroup Weekly
step
    +|cRXP_WARN_Weekly gold quest, Blackrock version.|r Only take this if Pix offers it this week.
    *You need: Overseer's License (Overlord Wyrmthalak, Lower Blackrock Spire), Nefarian's Remit (General Drakkisath, Upper Blackrock Spire), Bronzebeard Wedding Contract (Emperor Thaurissan, Blackrock Depths).
step
    .goto 1434,28.52,75.86
    >>Talk to |cRXP_FRIENDLY_Pix Xizzix|r
    .accept 96075 >>Accept In Demand - Blackrock Legal Records
    .target Pix Xizzix
step
    .goto 1427,34.8,85.3
    >>Go to Blackrock Mountain with a group: BRD (Emperor Thaurissan), LBRS (Overlord Wyrmthalak), UBRS (General Drakkisath).
    .complete 96075,1
    .complete 96075,2
    .complete 96075,3
    .mob Emperor Dagran Thaurissan
    .mob Overlord Wyrmthalak
    .mob General Drakkisath
step
    .goto 1434,28.52,75.86
    >>Talk to |cRXP_FRIENDLY_Pix Xizzix|r
    .turnin 96075 >>Turn in In Demand - Blackrock Legal Records
    .target Pix Xizzix
step
    +Open the |cRXP_LOOT_Undermine Satchel|r, vendor the gold item, sell the materials. Done until next week.
]])
