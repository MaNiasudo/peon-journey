RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - Professions
#groupweight 70
#subgroup Secondary
#name 1-300 Fishing (H)
#displayname 1-300 Fishing
step
    +|cRXP_WARN_Fishing 1-300 for WoW Forever.|r Read the notes, then click to start.
    *Camp objects (Bait and Tackle): Fish Bowl (skill 20, +8% stats to seated players; Raw Brilliant Smallfish + Empty Vial), Fishing Rack (140; Simple Wood x2, Crystal Vial, Raw Mithril Head Trout x2), Fishing Hut (300; Simple Wood x5
    *Find Fish shows nearby fishing spots on the minimap; how it is learned is unconfirmed (RankedBoost only).
    *New both-faction trainers: Baelann Swiftcurrent (Valanaar) and Fenn Fairweather (Shen'dar Village) on Zephras Isle; Krix (Powderfuse Port, Riverglades).
    *Perk Luremaster: 25%/50% chance of an extra fish while a lure is active.
    *Chef's Knife: usable at Fishing 275 and level 35, prepares unique fish (RankedBoost).
    *Fishing vendors sell raw fish in stacks of five.
step
    .goto 1454,69.8,29.21
    >>Talk to |cRXP_FRIENDLY_Lumak|r and train Apprentice Fishing
    .target Lumak
    .skill fishing,1 >>Learn Apprentice Fishing
step
    >>Gather |cRXP_PICK_Starting-zone waters (Raw Brilliant Smallfish, Raw Longjaw Mud Snapper)|r in Durotar, Mulgore, Tirisfal Glades, Zephras Isle
    *Lake east of Goldshire / Crystal Lake (Elwynn), Stonebull Lake (Mulgore). Use Shiny Bauble. Train Journeyman at 50 (level 10).
    .skill fishing,75 >>Reach 75 Fishing
step
    .goto 1454,69.8,29.21
    >>Talk to |cRXP_FRIENDLY_Lumak|r and train Journeyman Fishing
    .target Lumak
    .maxskill fishing,150 >>Train Journeyman Fishing (needs skill 50)
step
    >>Gather |cRXP_PICK_Capital and 10-20 zone waters (Raw Bristle Whisker Catfish)|r in Orgrimmar, Undercity, Thunder Bluff, The Barrens
    *Stormwind canals or the pond by the Thunder Bluff Auction House (ConquestCapped 75-130). With Nightcrawlers (+50) from ~125 you can move to the 150 zones. Buy Expert Fishing - The Bass and You at 125.
    .skill fishing,150 >>Reach 150 Fishing
step
    .goto 1454,69.8,29.21
    >>Talk to |cRXP_FRIENDLY_Lumak|r and train Expert Fishing
    .target Lumak
    .maxskill fishing,225 >>Train Expert Fishing (needs skill 125)
step
    >>Gather |cRXP_PICK_Open water and inland lakes (Raw Mithril Head Trout from ~205)|r in Stonetalon Mountains, Dustwallow Marsh, Stranglethorn Vale, Arathi Highlands
    *ConquestCapped: 130-205 Mystral Lake (Ashenvale, via Astranaar) for Alliance or Stonetalon Mountains (via Sun Rock Retreat) for Horde, then 205-225 Dustwallow Marsh inland water (Theramore Isle / Brackenwall Village). Us
    .skill fishing,225 >>Reach 225 Fishing
step
    .goto 1434,27.42,77.16
    >>Talk to |cRXP_FRIENDLY_Old Man Heming|r and train Artisan Fishing
    .target Old Man Heming
    *Trainers only teach up to 150. Expert: book from Old Man Heming (Booty Bay, both factions). Artisan: Nat Pagle quest in Dustwallow Marsh (both factions). Trainers include Lee Brown (Elwynn Forest), Arnold Leland (Stormwind), Grimnur Stonebr
    .maxskill fishing,300 >>Train Artisan Fishing (needs skill 200)
step
    >>Gather |cRXP_PICK_Inland water in 300-skill zones (Redgill, Nightfin Snapper, Sunscale Salmon)|r in Feralas, Tanaris, The Hinterlands, Un'Goro Crater
    *ConquestCapped: 225-255 Dustwallow Marsh inland, 255-300 Feralas inland from Feathermoon Stronghold (Alliance) or Camp Mojache (Horde); skip Jademir Lake (425). Avoid Winterspring, Silithus, Eastern Plaguelands until 425
    .skill fishing,300 >>Reach 300 Fishing
step
    +|cRXP_WARN_Fishing 300 done.|r Zug zug.
]])
