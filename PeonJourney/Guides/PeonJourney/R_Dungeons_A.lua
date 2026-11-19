RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 10-19
#name 13-18 The Hall of Thanes
#displayname 13-18 The Hall of Thanes
#next 15-20 Ruins of Lordaeron
step
    +|cRXP_WARN_The Hall of Thanes|r (levels 13-18). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *New Forever dungeon under Ironforge. From the Great Forge go into the High Seat, take the web-covered passage on the left and go down the stairs to the portal. Careful: falling there kills you.
    *Pre-quests in this guide: Underground Map
step
    #completewith next
    +|cRXP_WARN_Pre-quests|r
step
    .goto 1426,76.96,60.93
    >>Loot |cRXP_LOOT_[Dark Iron Map]|r from |cRXP_ENEMY_Dark Iron Spy|r, |cRXP_ENEMY_Captain Beld|r, then click it to start the quest
    .accept 96391 >>Accept Underground Map
    .use 274268
    .mob Dark Iron Spy
    .mob Captain Beld
step
    .goto 1426,64.87,58.47
    >>Talk to |cRXP_FRIENDLY_Earthseer Farsen|r
    .turnin 96391 >>Turn in Underground Map
    .target Earthseer Farsen
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1426,64.87,58.47
    >>Talk to |cRXP_FRIENDLY_Earthseer Farsen|r
    .accept 96393 >>Accept Old Ironforge Incursion
    .target Earthseer Farsen
step
    .goto 1426,34.58,51.65
    >>Talk to |cRXP_FRIENDLY_Afadra Dunwall|r
    .accept 96394 >>Accept The Restless Dead
    .target Afadra Dunwall
step
    .goto 1455,32.18,44.5
    >>Talk to |cRXP_FRIENDLY_Thom Filch|r
    .accept 96403 >>Accept Important Heirlooms
    .target Thom Filch
step
    #completewith next
    +|cRXP_WARN_Run the dungeon|r
step
    .goto 1455,43.5,52
    >>Inside The Hall of Thanes: these quests start from a drop or an object in the dungeon
    .accept 96395 >>Accept An Ancient Grudge
step
    .goto 1455,43.5,52
    >>Inside The Hall of Thanes: loot |cRXP_LOOT_[Treaty of Understanding]|r and click it to start the quest
    .accept 98423 >>Accept The Treaty of Understanding
    .use 281030
step
    .goto 1455,43.5,52
    >>Enter |cRXP_WARN_The Hall of Thanes|r and run it with a group. Quest goals inside:
    *Old Ironforge Incursion: Enter the Hall of Thanes beneath Old Ironforge and claim the Head of Durgen Dirgehammer.
    *The Restless Dead: Kill 15 Enraged Apparitions, 10 Tormented Souls and put the spirit of Anvilmar to rest.
    *An Ancient Grudge: Put the spirit of Faldrim Anvilmar to rest and then return to the Ghostly Attendant in the Hall of Thanes.
    *Important Heirlooms: Collect 8 Dwarven Heirlooms from the Hall of Thanes.
    .complete 96393,1 --Old Ironforge Incursion
    .complete 96394,1 --The Restless Dead
    .complete 96394,2 --The Restless Dead
    .complete 96395,1 --An Ancient Grudge
    .complete 96403,1 --Important Heirlooms
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1455,43.5,52
    >>Inside The Hall of Thanes: these quests start from a drop or an object in the dungeon
    .turnin 96395 >>Turn in An Ancient Grudge
step
    .goto 1455,39.09,56.2
    >>Talk to |cRXP_FRIENDLY_King Magni Bronzebeard|r
    .turnin 96393 >>Turn in Old Ironforge Incursion
    .turnin 98423 >>Turn in The Treaty of Understanding
    .target King Magni Bronzebeard
step
    .goto 1455,32.18,44.5
    >>Talk to |cRXP_FRIENDLY_Thom Filch|r
    .turnin 96403 >>Turn in Important Heirlooms
    .target Thom Filch
step
    .goto 1426,34.58,51.65
    >>Talk to |cRXP_FRIENDLY_Afadra Dunwall|r
    .turnin 96394 >>Turn in The Restless Dead
    .target Afadra Dunwall
step
    .goto 1455,43.5,52
    +Dungeon entrance: The Hall of Thanes. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 10-19
#name 15-20 Ruins of Lordaeron
#displayname 15-20 Ruins of Lordaeron
#next 15-24 Wailing Caverns
step
    +|cRXP_WARN_Ruins of Lordaeron|r (levels 15-20). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *New Forever dungeon in the ruined city above the Undercity. Before the keep, look left and climb the stairs. Alliance: entering the Undercity area flags you for PvP.
step
    #completewith next
    +|cRXP_WARN_Run the dungeon|r
step
    .goto 1420,72.4,11.6
    >>Inside Ruins of Lordaeron: loot |cRXP_LOOT_[Blood-Stained Parchment]|r and click it to start the quest
    .accept 92415 >>Accept Remember That I Love You
    .use 251270
step
    .goto 1420,72.4,11.6
    >>Inside Ruins of Lordaeron: loot |cRXP_LOOT_[Crest of Lordaeron]|r and click it to start the quest
    .accept 95189 >>Accept Crest of Lordaeron
    .use 268579
step
    .goto 1420,72.4,11.6
    >>Loot |cRXP_LOOT_[Bloodied Insignia]|r from |cRXP_ENEMY_Skeleton|r, |cRXP_ENEMY_Ragged Ghoul|r, |cRXP_ENEMY_Mangled Cadaver|r, then click it to start the quest
    .accept 95195 >>Accept Bloodied Insignia
    .use 268535
    .mob Skeleton
    .mob Ragged Ghoul
step
    .goto 1420,72.4,11.6
    >>Inside Ruins of Lordaeron: these quests start from a drop or an object in the dungeon
    .accept 95250 >>Accept Abominable Creatures
step
    .goto 1420,72.4,11.6
    >>Enter |cRXP_WARN_Ruins of Lordaeron|r and run it with a group. Quest goals inside:
    *Bloodied Insignia: Collect 10 Bloodied Insignias and take them to General Marcus Jonathan in Stormwind City.
    *Abominable Creatures: Collect the Head of the Baron in the Ruins of Lordaeron and bring it back to Captain Truman.
    .complete 95195,1 --Bloodied Insignia
    .complete 95250,1 --Abominable Creatures
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1420,72.4,11.6
    >>Inside Ruins of Lordaeron: these quests start from a drop or an object in the dungeon
    .turnin 95250 >>Turn in Abominable Creatures
step
    .goto 1453,56.31,53.99
    >>Talk to |cRXP_FRIENDLY_Orphan Matron Nightingale|r
    .turnin 92415 >>Turn in Remember That I Love You
    .target Orphan Matron Nightingale
step
    .goto 1453,68,28.9
    >>Talk to |cRXP_FRIENDLY_Lady Dena Kennedy|r
    .turnin 95189 >>Turn in Crest of Lordaeron
    .target Lady Dena Kennedy
step
    .goto 1453,69.17,82.72
    >>Talk to |cRXP_FRIENDLY_General Marcus Jonathan|r
    .turnin 95195 >>Turn in Bloodied Insignia
    .target General Marcus Jonathan
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1453,56.31,53.99
    >>Talk to |cRXP_FRIENDLY_Orphan Matron Nightingale|r
    .accept 95161 >>Accept Remember That I Love You
    .target Orphan Matron Nightingale
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1431,73.03,44.42
    >>Talk to |cRXP_FRIENDLY_Avette Fellwood|r
    .turnin 95161 >>Turn in Remember That I Love You
    .target Avette Fellwood
step
    .goto 1420,72.4,11.6
    +Dungeon entrance: Ruins of Lordaeron. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 10-19
#name 15-24 Wailing Caverns
#displayname 15-24 Wailing Caverns
#next 17-26 The Deadmines
step
    +|cRXP_WARN_Wailing Caverns|r (levels 15-24). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *Pre-quests in this guide: Raptor Horns
step
    #completewith next
    +|cRXP_WARN_Pre-quests|r
step
    .goto 1413,62.37,37.62
    >>Talk to |cRXP_FRIENDLY_Mebok Mizzyrix|r
    .accept 865 >>Accept Raptor Horns
    .target Mebok Mizzyrix
step
    .goto 1413,52.98,51.23
    >>Collect |cRXP_LOOT_[Intact Raptor Horn]|r from |cRXP_ENEMY_Sunscale Scytheclaw|r, |cRXP_ENEMY_Ishamuhale|r, |cRXP_ENEMY_Takk the Leaper|r
    *Gather 5 Intact Raptor Horns from Sunscale Scytheclaws, and bring them to Mebok Mizzyrix in Ratchet.
    .complete 865,1 --Raptor Horns
    .mob Sunscale Scytheclaw
    .mob Ishamuhale
step
    .goto 1413,62.37,37.62
    >>Talk to |cRXP_FRIENDLY_Mebok Mizzyrix|r
    .turnin 865 >>Turn in Raptor Horns
    .target Mebok Mizzyrix
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1413,62.37,37.62
    >>Talk to |cRXP_FRIENDLY_Mebok Mizzyrix|r
    .accept 1491 >>Accept Smart Drinks
    .target Mebok Mizzyrix
step
    .goto 1413,63.09,37.61
    >>Talk to |cRXP_FRIENDLY_Crane Operator Bigglefuzz|r
    .accept 959 >>Accept Trouble at the Docks
    .target Crane Operator Bigglefuzz
step
    .goto 1413,46.01,35.74
    >>Talk to |cRXP_FRIENDLY_Ebru|r
    .accept 1487 >>Accept Deviate Eradication
    .target Ebru
step
    .goto 1413,45.99,35.66
    >>Talk to |cRXP_FRIENDLY_Nalpak|r
    .accept 1486 >>Accept Deviate Hides
    .target Nalpak
step
    .goto 1413,45.69,33.62
    >>Collect |cRXP_LOOT_[99-Year-Old Port]|r from |cRXP_ENEMY_Mad Magglish|r
    *Crane Operator Bigglefuzz in Ratchet wants you to retrieve the bottle of 99-Year-Old Port from Mad Magglish who is hiding in the Wailing Caverns.
    .complete 959,1 --Trouble at the Docks
    .mob Mad Magglish
step
    #completewith next
    +|cRXP_WARN_Run the dungeon|r
step
    .goto 1413,46,36.5
    >>Loot |cRXP_LOOT_[Glowing Shard]|r from |cRXP_ENEMY_Mutanus the Devourer|r, then click it to start the quest
    .accept 6981 >>Accept The Glowing Shard
    .use 10441
    .mob Mutanus the Devourer
step
    .goto 1413,46,36.5
    >>Enter |cRXP_WARN_Wailing Caverns|r and run it with a group. Quest goals inside:
    *Deviate Hides: Nalpak in the Wailing Caverns wants 20 Deviate Hides.
    *Deviate Eradication: Ebru in the Wailing Caverns wants you to kill 7 Deviate Ravagers, 7 Deviate Vipers, 7 Deviate Shamblers and 7 Deviate Dreadfangs.
    *Smart Drinks: Bring 6 portions of Wailing Essence to Mebok Mizzyrix in Ratchet.
    .complete 1486,1 --Deviate Hides
    .complete 1487,1 --Deviate Eradication
    .complete 1487,2 --Deviate Eradication
    .complete 1487,3 --Deviate Eradication
    .complete 1487,4 --Deviate Eradication
    .complete 1491,1 --Smart Drinks
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1413,46.01,35.74
    >>Talk to |cRXP_FRIENDLY_Ebru|r
    .turnin 1487 >>Turn in Deviate Eradication
    .target Ebru
step
    .goto 1413,45.99,35.66
    >>Talk to |cRXP_FRIENDLY_Nalpak|r
    .turnin 1486 >>Turn in Deviate Hides
    .target Nalpak
step
    .goto 1413,48.18,32.78
    >>Talk to |cRXP_FRIENDLY_Falla Sagewind|r
    .turnin 6981 >>Turn in The Glowing Shard
    .target Falla Sagewind
step
    .goto 1413,62.37,37.62
    >>Talk to |cRXP_FRIENDLY_Mebok Mizzyrix|r
    .turnin 1491 >>Turn in Smart Drinks
    .target Mebok Mizzyrix
step
    .goto 1413,63.09,37.61
    >>Talk to |cRXP_FRIENDLY_Crane Operator Bigglefuzz|r
    .turnin 959 >>Turn in Trouble at the Docks
    .target Crane Operator Bigglefuzz
step
    .goto 1413,46,36.5
    +Dungeon entrance: Wailing Caverns. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 10-19
#name 17-26 The Deadmines
#displayname 17-26 The Deadmines
#next 24-32 Blackfathom Deeps
step
    +|cRXP_WARN_The Deadmines|r (levels 17-26). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *Pre-quests in this guide: The Defias Brotherhood, The Defias Brotherhood, The Defias Brotherhood, The Defias Brotherhood, The Defias Brotherhood, The Defias Brotherhood, Testing the Wells, Murloc Gills, The State of the Mines, Moonbrook Espionage, Explosive Consultation, A Dynamite Plan...
step
    #completewith next
    +|cRXP_WARN_Pre-quests|r
step
    .goto 1436,52.48,52.97
    >>Talk to |cRXP_FRIENDLY_Alba Fairmoon|r
    .accept 92742 >>Accept Testing the Wells
    .accept 92744 >>Accept Murloc Gills
    .target Alba Fairmoon
step
    .goto 1436,56.62,18.69
    >>Collect |cRXP_LOOT_[Jansen Stead Water Sample]|r from |cRXP_PICK_Jansen Stead Water Well|r
    *Use the Well Water Sample Kit to collect samples from the wells at the Jansen Stead and the Molsen Farm.
    .complete 92742,1 --Testing the Wells
step
    .goto 1436,42.48,12.34
    >>Collect |cRXP_LOOT_[Longshore Murloc Gill]|r from |cRXP_ENEMY_Murloc Coastrunner|r, |cRXP_ENEMY_Murloc Tidehunter|r, |cRXP_ENEMY_Murloc Warrior|r
    *Alba Fairmoon wants you to collect 7 Longshore Murloc Gills along the shoreline of Westfall.
    .complete 92744,1 --Murloc Gills
    .mob Murloc Coastrunner
    .mob Murloc Tidehunter
step
    .goto 1436,46.08,38.14
    >>Collect |cRXP_LOOT_[Molsen Farm Water Sample]|r from |cRXP_PICK_Molsen Farm Water Well|r
    *Use the Well Water Sample Kit to collect samples from the wells at the Jansen Stead and the Molsen Farm.
    .complete 92742,2 --Testing the Wells
step
    .goto 1436,52.48,52.97
    >>Talk to |cRXP_FRIENDLY_Alba Fairmoon|r
    .turnin 92742 >>Turn in Testing the Wells
    .turnin 92744 >>Turn in Murloc Gills
    .accept 92745 >>Accept The State of the Mines
    .target Alba Fairmoon
step
    .goto 1436,56.33,47.52
    >>Talk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .accept 65 >>Accept The Defias Brotherhood
    .target Gryan Stoutmantle
step
    .goto 1436,44.8,23.12
    >>Kill |cRXP_ENEMY_Kobold Digger|r
    *Slay 4 Kobold Diggers in the Jangolode Mine and 6 Riverpaw Miners in the Gold Coast Quarry.
    .complete 92745,1 --The State of the Mines
    .mob Kobold Digger
step
    .goto 1436,28.94,48.71
    >>Kill |cRXP_ENEMY_Riverpaw Miner|r
    *Slay 4 Kobold Diggers in the Jangolode Mine and 6 Riverpaw Miners in the Gold Coast Quarry.
    .complete 92745,2 --The State of the Mines
    .mob Riverpaw Miner
step
    .goto 1436,52.48,52.97
    >>Talk to |cRXP_FRIENDLY_Alba Fairmoon|r
    .turnin 92745 >>Turn in The State of the Mines
    .accept 92747 >>Accept Moonbrook Espionage
    .target Alba Fairmoon
step
    .goto 1436,41.8,67.3
    >>Collect |cRXP_LOOT_[Suspicious Industrial Supplies]|r from |cRXP_PICK_Suspicious Crate|r
    *Collect 8 Suspicious Industrial Supplies from Moonbrook.
    .complete 92747,1 --Moonbrook Espionage
step
    .goto 1436,52.48,52.97
    >>Talk to |cRXP_FRIENDLY_Alba Fairmoon|r
    .turnin 92747 >>Turn in Moonbrook Espionage
    .accept 92748 >>Accept Explosive Consultation
    .target Alba Fairmoon
step
    .goto 1433,21.39,45.35
    >>Talk to |cRXP_FRIENDLY_Wiley the Black|r
    .turnin 65 >>Turn in The Defias Brotherhood
    .accept 132 >>Accept The Defias Brotherhood
    .target Wiley the Black
step
    .goto 1453,61.88,30.56
    >>Talk to |cRXP_FRIENDLY_Sprite Jumpsprocket|r
    .turnin 92748 >>Turn in Explosive Consultation
    .accept 92749 >>Accept A Dynamite Plan
    .accept 92750 >>Accept Detonation at a Distance
    .target Sprite Jumpsprocket
step
    >>Collect |cRXP_LOOT_[Rough Dynamite]|r
    *Obtain 10 Rough Dynamite from crafting, trading, or the auction house, then return to Sprite Jumpsprocket in the Dwarven District of Stormwind.
    .complete 92749,1 --A Dynamite Plan
step
    .goto 1453,61.88,30.56
    >>Talk to |cRXP_FRIENDLY_Sprite Jumpsprocket|r
    .turnin 92749 >>Turn in A Dynamite Plan
    .target Sprite Jumpsprocket
step
    .goto 1453,80.28,70.07
    >>Talk to |cRXP_FRIENDLY_Jasper Fel|r
    .turnin 92750 >>Turn in Detonation at a Distance
    .accept 92751 >>Accept Detonation at a Distance
    .target Jasper Fel
step
    .goto 1453,61.88,30.56
    >>Talk to |cRXP_FRIENDLY_Sprite Jumpsprocket|r
    .turnin 92751 >>Turn in Detonation at a Distance
    .accept 92752 >>Accept Explosive Consultation
    .target Sprite Jumpsprocket
step
    .goto 1436,56.33,47.52
    >>Talk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 132 >>Turn in The Defias Brotherhood
    .accept 135 >>Accept The Defias Brotherhood
    .target Gryan Stoutmantle
step
    .goto 1436,52.48,52.97
    >>Talk to |cRXP_FRIENDLY_Alba Fairmoon|r
    .turnin 92752 >>Turn in Explosive Consultation
    .target Alba Fairmoon
step
    .goto 1453,78.31,70.74
    >>Talk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 135 >>Turn in The Defias Brotherhood
    .accept 141 >>Accept The Defias Brotherhood
    .target Master Mathias Shaw
step
    .goto 1436,56.33,47.52
    >>Talk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 141 >>Turn in The Defias Brotherhood
    .accept 142 >>Accept The Defias Brotherhood
    .target Gryan Stoutmantle
step
    .goto 1436,45.1,69.33
    >>Collect |cRXP_LOOT_[A Mysterious Message]|r from |cRXP_ENEMY_Defias Messenger|r
    *Track down the Defias Messenger in Westfall and bring his message to Stoutmantle.
    .complete 142,1 --The Defias Brotherhood
    .mob Defias Messenger
step
    .goto 1436,56.33,47.52
    >>Talk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 142 >>Turn in The Defias Brotherhood
    .target Gryan Stoutmantle
step
    .goto 1436,55.68,47.5
    >>Talk to |cRXP_FRIENDLY_The Defias Traitor|r
    .accept 155 >>Accept The Defias Brotherhood
    .target The Defias Traitor
step
    .goto 1436,38.04,77.51
    >>Escort The Defias Traitor to discover where VanCleef is hiding
    *Escort the Defias Traitor to the secret hideout of the Defias Brotherhood. Once the Defias Traitor shows you where VanCleef and his men are hiding out, return to Gryan Stoutmantle with the information.
    .complete 155,1 --The Defias Brotherhood
step
    .goto 1436,56.33,47.52
    >>Talk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 155 >>Turn in The Defias Brotherhood
    .target Gryan Stoutmantle
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1436,56.33,47.52
    >>Talk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .accept 166 >>Accept The Defias Brotherhood
    .target Gryan Stoutmantle
step
    .goto 1436,56.67,47.35
    >>Talk to |cRXP_FRIENDLY_Scout Riell|r
    .accept 214 >>Accept Red Silk Bandanas
    .target Scout Riell
step
    .goto 1436,52.48,52.97
    >>Talk to |cRXP_FRIENDLY_Alba Fairmoon|r
    .accept 92753 >>Accept Destruction in Deadmines
    .target Alba Fairmoon
step
    .goto 1453,70.31,40.82
    >>Talk to |cRXP_FRIENDLY_Wilder Thistlenettle|r
    .accept 167 >>Accept Oh Brother. . .
    .accept 168 >>Accept Collecting Memories
    .target Wilder Thistlenettle
step
    .goto 1453,62.63,34.11
    >>Talk to |cRXP_FRIENDLY_Shoni the Shilent|r
    .accept 2040 >>Accept Underground Assault
    .target Shoni the Shilent
step
    .goto 1436,42.22,82.61
    >>Collect |cRXP_LOOT_[Thistlenettle's Badge]|r from |cRXP_ENEMY_Foreman Thistlenettle|r
    *Bring Foreman Thistlenettle's Explorers' League Badge to Wilder Thistlenettle in Stormwind.
    .complete 167,1 --Oh Brother. . .
    .mob Foreman Thistlenettle
step
    .goto 1436,40.71,81.81
    >>Collect |cRXP_LOOT_[Miners' Union Card]|r from |cRXP_ENEMY_Skeletal Miner|r, |cRXP_ENEMY_Undead Excavator|r, |cRXP_ENEMY_Undead Dynamiter|r
    *Retrieve 4 Miners' Union Cards and return them to Wilder Thistlenettle in Stormwind.
    .complete 168,1 --Collecting Memories
    .mob Skeletal Miner
    .mob Undead Excavator
step
    #completewith next
    +|cRXP_WARN_Run the dungeon|r
step
    .goto 1436,42.5,71.7
    >>Enter |cRXP_WARN_The Deadmines|r and run it with a group. Quest goals inside:
    *The Defias Brotherhood: Kill Edwin VanCleef and bring his head to Gryan Stoutmantle.
    *Red Silk Bandanas: Scout Riell at the Sentinel Hill Tower wants you to bring her 10 Red Silk Bandanas.
    *Underground Assault: Retrieve the Gnoam Sprecklesprocket from the Deadmines and return it to Shoni the Shilent in Stormwind.
    *Destruction in Deadmines: Find the forge hidden in the Deadmines, and plant the Extra-Destructive Explosives nearby. Then, meet up with Alba Fairmoon at the Deadmines exit.
    .complete 166,1 --The Defias Brotherhood
    .complete 214,1 --Red Silk Bandanas
    .complete 2040,1 --Underground Assault
    .complete 92753,1 --Destruction in Deadmines
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1436,38.68,83.7
    >>Talk to |cRXP_FRIENDLY_Alba Fairmoon|r
    .turnin 92753 >>Turn in Destruction in Deadmines
    .target Alba Fairmoon
step
    .goto 1436,56.33,47.52
    >>Talk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 166 >>Turn in The Defias Brotherhood
    .target Gryan Stoutmantle
step
    .goto 1436,56.67,47.35
    >>Talk to |cRXP_FRIENDLY_Scout Riell|r
    .turnin 214 >>Turn in Red Silk Bandanas
    .target Scout Riell
step
    .goto 1453,70.31,40.82
    >>Talk to |cRXP_FRIENDLY_Wilder Thistlenettle|r
    .turnin 167 >>Turn in Oh Brother. . .
    .turnin 168 >>Turn in Collecting Memories
    .target Wilder Thistlenettle
step
    .goto 1453,62.63,34.11
    >>Talk to |cRXP_FRIENDLY_Shoni the Shilent|r
    .turnin 2040 >>Turn in Underground Assault
    .target Shoni the Shilent
step
    .goto 1436,42.5,71.7
    +Dungeon entrance: The Deadmines. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 20-29
#name 24-32 Blackfathom Deeps
#displayname 24-32 Blackfathom Deeps
#next 24-32 The Stockade
step
    +|cRXP_WARN_Blackfathom Deeps|r (levels 24-32). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *Pre-quests in this guide: The Corruption Abroad
step
    #completewith next
    +|cRXP_WARN_Pre-quests|r
step
    .goto 1453,36.24,67.61
    >>Talk to |cRXP_FRIENDLY_Argos Nightwhisper|r
    .accept 3765 >>Accept The Corruption Abroad
    .target Argos Nightwhisper
step
    .goto 1439,38.33,43.04
    >>Talk to |cRXP_FRIENDLY_Gershala Nightwhisper|r
    .turnin 3765 >>Turn in The Corruption Abroad
    .target Gershala Nightwhisper
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1439,38.33,43.04
    >>Talk to |cRXP_FRIENDLY_Gershala Nightwhisper|r
    .accept 1275 >>Accept Researching the Corruption
    .target Gershala Nightwhisper
step
    .goto 1455,50.83,5.62
    >>Talk to |cRXP_FRIENDLY_Gerrig Bonegrip|r
    .accept 971 >>Accept Knowledge in the Deeps
    .target Gerrig Bonegrip
step
    .goto 1457,55.36,25.03
    >>Talk to |cRXP_FRIENDLY_Dawnwatcher Shaedlass|r
    .accept 1198 >>Accept In Search of Thaelrid
    .target Dawnwatcher Shaedlass
step
    .goto 1457,55.24,23.99
    >>Talk to |cRXP_FRIENDLY_Argent Guard Manados|r
    .accept 1199 >>Accept Twilight Falls
    .target Argent Guard Manados
step
    #completewith next
    +|cRXP_WARN_Run the dungeon|r
step
    .goto 1440,14.5,14.2
    >>Inside Blackfathom Deeps: these quests start from a drop or an object in the dungeon
    .accept 78916 >>Accept The Heart of the Void
step
    .goto 1440,14.5,14.2
    >>Enter |cRXP_WARN_Blackfathom Deeps|r and run it with a group. Quest goals inside:
    *Knowledge in the Deeps: Bring the Lorgalis Manuscript to Gerrig Bonegrip in the Forlorn Cavern in Ironforge.
    *Twilight Falls: Bring 10 Twilight Pendants to Argent Guard Manados in Darnassus.
    *Researching the Corruption: Gershala Nightwhisper in Auberdine wants 8 Corrupt Brain stems.
    .complete 971,1 --Knowledge in the Deeps
    .complete 1199,1 --Twilight Falls
    .complete 1275,1 --Researching the Corruption
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1455,50.83,5.62
    >>Talk to |cRXP_FRIENDLY_Gerrig Bonegrip|r
    .turnin 971 >>Turn in Knowledge in the Deeps
    .target Gerrig Bonegrip
step
    .goto 1457,55.36,25.03
    >>Talk to |cRXP_FRIENDLY_Dawnwatcher Shaedlass|r
    .turnin 1198 >>Turn in In Search of Thaelrid
    .target Dawnwatcher Shaedlass
step
    .goto 1457,56.16,24.39
    >>Talk to |cRXP_FRIENDLY_Dawnwatcher Selgorm|r
    .turnin 78916 >>Turn in The Heart of the Void
    .target Dawnwatcher Selgorm
step
    .goto 1457,55.24,23.99
    >>Talk to |cRXP_FRIENDLY_Argent Guard Manados|r
    .turnin 1199 >>Turn in Twilight Falls
    .target Argent Guard Manados
step
    .goto 1439,38.33,43.04
    >>Talk to |cRXP_FRIENDLY_Gershala Nightwhisper|r
    .turnin 1275 >>Turn in Researching the Corruption
    .target Gershala Nightwhisper
step
    #completewith next
    +|cRXP_WARN_Run the dungeon (run 2)|r
step
    .goto 1440,14.5,14.2
    >>Inside Blackfathom Deeps: these quests start from a drop or an object in the dungeon
    .accept 1200 >>Accept Blackfathom Villainy
step
    .goto 1440,14.5,14.2
    >>Enter |cRXP_WARN_Blackfathom Deeps|r and run it with a group. Quest goals inside:
    *Blackfathom Villainy: Bring the head of Twilight Lord Kelris to Dawnwatcher Selgorm in Darnassus.
    .complete 1200,1 --Blackfathom Villainy
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1457,56.16,24.39
    >>Talk to |cRXP_FRIENDLY_Dawnwatcher Selgorm|r
    .turnin 1200 >>Turn in Blackfathom Villainy
    .target Dawnwatcher Selgorm
step
    .goto 1440,14.5,14.2
    +Dungeon entrance: Blackfathom Deeps. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 20-29
#name 24-32 The Stockade
#displayname 24-32 The Stockade
#next 26-31 Excavation Site: Wetlands
step
    +|cRXP_WARN_The Stockade|r (levels 24-32). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *Pre-quests in this guide: The Dark Iron War, The Unsent Letter, Bazil Thredd
step
    #completewith next
    +|cRXP_WARN_Pre-quests|r
step
    .goto 1453,57.74,47.86
    >>Talk to |cRXP_FRIENDLY_Baros Alexston|r
    .accept 389 >>Accept Bazil Thredd
    .target Baros Alexston
step
    .goto 1453,51.49,69.38
    >>Talk to |cRXP_FRIENDLY_Warden Thelwater|r
    .turnin 389 >>Turn in Bazil Thredd
    .target Warden Thelwater
step
    .goto 1437,49.67,18.23
    >>Talk to |cRXP_FRIENDLY_Motley Garmason|r
    .accept 303 >>Accept The Dark Iron War
    .target Motley Garmason
step
    .goto 1437,48.05,17.3
    >>Kill |cRXP_ENEMY_Dark Iron Dwarf|r. Kill |cRXP_ENEMY_Dark Iron Tunneler|r. Kill |cRXP_ENEMY_Dark Iron Saboteur|r
    *Motley Garmason at Dun Modr wants you to kill 10 Dark Iron Dwarves, 5 Dark Iron Tunnelers, 5 Dark Iron Saboteurs and 5 Dark Iron Demolitionists.
    *|cRXP_WARN_Elite targets here. Group up or skip.|r
    .complete 303,1 --The Dark Iron War
    .complete 303,2 --The Dark Iron War
    .complete 303,3 --The Dark Iron War
    .mob Dark Iron Dwarf
    .mob Dark Iron Tunneler
    .mob Dark Iron Saboteur
step
    .goto 1437,60.1,24.36
    >>Kill |cRXP_ENEMY_Dark Iron Demolitionist|r
    *Motley Garmason at Dun Modr wants you to kill 10 Dark Iron Dwarves, 5 Dark Iron Tunnelers, 5 Dark Iron Saboteurs and 5 Dark Iron Demolitionists.
    *|cRXP_WARN_Elite targets here. Group up or skip.|r
    .complete 303,4 --The Dark Iron War
    .mob Dark Iron Demolitionist
step
    .goto 1437,49.67,18.23
    >>Talk to |cRXP_FRIENDLY_Motley Garmason|r
    .turnin 303 >>Turn in The Dark Iron War
    .target Motley Garmason
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1437,49.67,18.23
    >>Talk to |cRXP_FRIENDLY_Motley Garmason|r
    .accept 378 >>Accept The Fury Runs Deep
    .target Motley Garmason
step
    .goto 1431,71.92,47.79
    >>Talk to |cRXP_FRIENDLY_Councilman Millstipe|r
    .accept 377 >>Accept Crime and Punishment
    .target Councilman Millstipe
step
    .goto 1433,21.17,46.58
    >>Talk to |cRXP_FRIENDLY_Guard Berton|r
    .accept 386 >>Accept What Comes Around...
    .target Guard Berton
step
    .goto 1453,51.49,69.38
    >>Talk to |cRXP_FRIENDLY_Warden Thelwater|r
    .accept 387 >>Accept Quell The Uprising
    .accept 391 >>Accept The Stockade Riots
    .target Warden Thelwater
step
    .goto 1453,73.78,54.65
    >>Talk to |cRXP_FRIENDLY_Nikova Raskol|r
    .accept 388 >>Accept The Color of Blood
    .target Nikova Raskol
step
    #completewith next
    +|cRXP_WARN_Run the dungeon|r
step
    .goto 1453,52.41,70.01
    >>Enter |cRXP_WARN_The Stockade|r and run it with a group. Quest goals inside:
    *Crime and Punishment: Councilman Millstipe of Darkshire wants you to bring him the hand of Dextren Ward.
    *The Fury Runs Deep: Motley Garmason wants Kam Deepfury's head brought to him at Dun Modr.
    *What Comes Around...: Bring the head of Targorr the Dread to Guard Berton in Lakeshire.
    *Quell The Uprising: Warden Thelwater of Stormwind wants you to kill 10 Defias Prisoners, 8 Defias Convicts, and 8 Defias Insurgents in The Stockade.
    *The Color of Blood: Nikova Raskol of Stormwind wants you to collect 10 Red Wool Bandanas.
    *The Stockade Riots: Kill Bazil Thredd and bring his head back to Warden Thelwater at the Stockade.
    .complete 377,1 --Crime and Punishment
    .complete 378,1 --The Fury Runs Deep
    .complete 386,1 --What Comes Around...
    .complete 387,1 --Quell The Uprising
    .complete 387,2 --Quell The Uprising
    .complete 387,3 --Quell The Uprising
    .complete 388,1 --The Color of Blood
    .complete 391,1 --The Stockade Riots
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1453,51.49,69.38
    >>Talk to |cRXP_FRIENDLY_Warden Thelwater|r
    .turnin 387 >>Turn in Quell The Uprising
    .turnin 391 >>Turn in The Stockade Riots
    .target Warden Thelwater
step
    .goto 1453,73.78,54.65
    >>Talk to |cRXP_FRIENDLY_Nikova Raskol|r
    .turnin 388 >>Turn in The Color of Blood
    .target Nikova Raskol
step
    .goto 1431,71.92,47.79
    >>Talk to |cRXP_FRIENDLY_Councilman Millstipe|r
    .turnin 377 >>Turn in Crime and Punishment
    .target Councilman Millstipe
step
    .goto 1437,49.67,18.23
    >>Talk to |cRXP_FRIENDLY_Motley Garmason|r
    .turnin 378 >>Turn in The Fury Runs Deep
    .target Motley Garmason
step
    .goto 1433,21.17,46.58
    >>Talk to |cRXP_FRIENDLY_Guard Berton|r
    .turnin 386 >>Turn in What Comes Around...
    .target Guard Berton
step
    .goto 1453,52.41,70.01
    +Dungeon entrance: The Stockade. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 20-29
#name 26-31 Excavation Site: Wetlands
#displayname 26-31 Excavation Site: Wetlands
#next 28-33 City of Dalaran
step
    +|cRXP_WARN_Excavation Site: Wetlands|r (levels 26-31). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *New Forever dungeon above Whelgar's Excavation. Take the winding path up left of Thelgen Rock to the meeting stone.
    *Pre-quests in this guide: Blisters on The Land, Tramping Paws, Fire Taboo, Young Crocolisk Skins
step
    #completewith next
    +|cRXP_WARN_Pre-quests|r
step
    .goto 1437,8.55,55.74
    >>Talk to |cRXP_FRIENDLY_James Halloran|r
    .accept 484 >>Accept Young Crocolisk Skins
    .target James Halloran
step
    .goto 1437,56.37,40.4
    >>Talk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
    .accept 276 >>Accept Tramping Paws
    .target Rethiel the Greenwarden
step
    .goto 1437,60.33,73.77
    >>Collect |cRXP_LOOT_[Young Crocolisk Skin]|r from |cRXP_ENEMY_Young Wetlands Crocolisk|r. Kill |cRXP_ENEMY_Mosshide Gnoll|r. Kill |cRXP_ENEMY_Mosshide Mongrel|r
    *Obtain 4 Young Crocolisk Skins for James Halloran in Menethil Harbor.
    *Kill 15 Mosshide Gnolls and 10 Mosshide Mongrels, then return to Rethiel the Greenwarden in the Wetlands.
    .complete 484,1 --Young Crocolisk Skins
    .complete 276,1 --Tramping Paws
    .complete 276,2 --Tramping Paws
    .mob Young Wetlands Crocolisk
    .mob Mosshide Gnoll
    .mob Mosshide Mongrel
step
    .goto 1437,56.37,40.4
    >>Talk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
    .turnin 276 >>Turn in Tramping Paws
    .accept 277 >>Accept Fire Taboo
    .target Rethiel the Greenwarden
step
    .goto 1437,35.43,31.55
    >>Collect |cRXP_LOOT_[Crude Flint]|r from |cRXP_ENEMY_Gnoll Overseer|r, |cRXP_ENEMY_Mosshide Fenrunner|r, |cRXP_ENEMY_Mosshide Trapper|r
    *Bring Rethiel the Greenwarden 9 Crude Flints.
    .complete 277,1 --Fire Taboo
    .mob Gnoll Overseer
    .mob Mosshide Fenrunner
step
    .goto 1437,56.37,40.4
    >>Talk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
    .turnin 277 >>Turn in Fire Taboo
    .accept 275 >>Accept Blisters on The Land
    .target Rethiel the Greenwarden
step
    .goto 1437,25.33,35.52
    >>Kill |cRXP_ENEMY_Fen Creeper|r
    *Kill 8 Fen Creepers, then return to Rethiel the Greenwarden in the Wetlands.
    .complete 275,1 --Blisters on The Land
    .mob Fen Creeper
step
    .goto 1437,8.55,55.74
    >>Talk to |cRXP_FRIENDLY_James Halloran|r
    .turnin 484 >>Turn in Young Crocolisk Skins
    .target James Halloran
step
    .goto 1437,56.37,40.4
    >>Talk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
    .turnin 275 >>Turn in Blisters on The Land
    .target Rethiel the Greenwarden
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1437,56.37,40.4
    >>Talk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
    .accept 95646 >>Accept Horrors in the Highland
    .target Rethiel the Greenwarden
step
    .goto 1437,11.88,58.82
    >>Talk to |cRXP_FRIENDLY_Caitlin Grassman|r
    .accept 95647 >>Accept Lost in the Thicket Things
    .target Caitlin Grassman
step
    .goto 1437,8.55,55.74
    >>Talk to |cRXP_FRIENDLY_James Halloran|r
    .accept 98815 >>Accept Highland Hides
    .target James Halloran
step
    .goto 1440,34.98,48.46
    >>Talk to |cRXP_FRIENDLY_Llana|r
    .accept 95737 >>Accept Seeking Caitlin
    .target Llana
step
    .goto 1433,25.79,46.44
    >>Talk to |cRXP_FRIENDLY_Dorin Songblade|r
    .accept 95772 >>Accept Songblade Search
    .target Dorin Songblade
step
    .goto 1437,48.43,61.69
    >>Collect |cRXP_LOOT_[Horrible Rootcore]|r from |cRXP_ENEMY_Highland Horror|r
    *Kill a Highland Horror within Excavation Sites and bring its root core to Rethiel the Greenwarden in the Wetlands.
    .complete 95646,1 --Horrors in the Highland
    .mob Highland Horror
step
    #completewith next
    +|cRXP_WARN_Run the dungeon|r
step
    .goto 1437,48.1,56.5
    >>Inside Excavation Site: Wetlands: these quests start from a drop or an object in the dungeon
    .accept 95809 >>Accept Heartwoven
step
    .goto 1437,48.1,56.5
    >>Loot |cRXP_LOOT_[Titan Relic]|r from |cRXP_ENEMY_Relic Guardian|r, then click it to start the quest
    .accept 95810 >>Accept Lost Relic Carry
    .use 270865
    .mob Relic Guardian
step
    .goto 1437,48.1,56.5
    >>Enter |cRXP_WARN_Excavation Site: Wetlands|r and run it with a group. Quest goals inside:
    *Lost Relic Carry: Bring the Titan Relic to Prospector Whelgar in the Wetlands excavation site.
    *Highland Hides: Return 4 Thicket Raptor Hides to James Halloran, the tanner, in Menethil Harbor.
    .complete 95810,1 --Lost Relic Carry
    .complete 98815,1 --Highland Hides
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1437,38.81,52.39
    >>Talk to |cRXP_FRIENDLY_Prospector Whelgar|r
    .turnin 95810 >>Turn in Lost Relic Carry
    .target Prospector Whelgar
step
    .goto 1437,56.37,40.4
    >>Talk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
    .turnin 95646 >>Turn in Horrors in the Highland
    .target Rethiel the Greenwarden
step
    .goto 1437,11.88,58.82
    >>Talk to |cRXP_FRIENDLY_Caitlin Grassman|r
    .turnin 95647 >>Turn in Lost in the Thicket Things
    .turnin 95737 >>Turn in Seeking Caitlin
    .turnin 95809 >>Turn in Heartwoven
    .target Caitlin Grassman
step
    .goto 1437,8.55,55.74
    >>Talk to |cRXP_FRIENDLY_James Halloran|r
    .turnin 98815 >>Turn in Highland Hides
    .target James Halloran
step
    .goto 1433,25.79,46.44
    >>Talk to |cRXP_FRIENDLY_Dorin Songblade|r
    .turnin 95772 >>Turn in Songblade Search
    .target Dorin Songblade
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1437,38.81,52.39
    >>Talk to |cRXP_FRIENDLY_Prospector Whelgar|r
    .accept 98824 >>Accept Prehistoric Prism
    .target Prospector Whelgar
step
    #completewith next
    +|cRXP_WARN_Run the dungeon (run 2)|r
step
    .goto 1437,48.1,56.5
    >>Inside Excavation Site: Wetlands: these quests start from a drop or an object in the dungeon
    .accept 95795 >>Accept Fallen in the Fen
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1433,25.79,46.44
    >>Talk to |cRXP_FRIENDLY_Dorin Songblade|r
    .turnin 95795 >>Turn in Fallen in the Fen
    .target Dorin Songblade
step
    .goto 1455,69.93,18.55
    >>Talk to |cRXP_FRIENDLY_High Explorer Magellas|r
    .turnin 98824 >>Turn in Prehistoric Prism
    .target High Explorer Magellas
step
    .goto 1437,48.1,56.5
    +Dungeon entrance: Excavation Site: Wetlands. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 20-29
#name 28-33 City of Dalaran
#displayname 28-33 City of Dalaran
#next 29-38 Gnomeregan
step
    +|cRXP_WARN_City of Dalaran|r (levels 28-33). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *New Forever dungeon. KEY NEEDED: one player with the Dalaran Sewer Key opens it for the group; the key chain is in this guide. Enter through the sewers on the Silverpine side of Lordamere Lake.
    *Pre-quests in this guide: The Orphan, Into the Darkness, A Heavy Responsibility, Escaping the Shadows
step
    #completewith next
    +|cRXP_WARN_Pre-quests|r
step
    .goto 1416,21.62,73.18
    >>Talk to |cRXP_FRIENDLY_Orphan Matron Aria|r
    .accept 96797 >>Accept The Orphan
    .target Orphan Matron Aria
step
    .goto 1419,66.07,19.4
    >>Talk to |cRXP_FRIENDLY_Lieutenant Connar|r
    .turnin 96797 >>Turn in The Orphan
    .accept 96798 >>Accept Into the Darkness
    .target Lieutenant Connar
step
    .goto 1419,66.73,31.67
    >>Talk to |cRXP_FRIENDLY_Sergeant Danneth|r
    .turnin 96798 >>Turn in Into the Darkness
    .accept 96811 >>Accept Escaping the Shadows
    .target Sergeant Danneth
step
    .goto 1419,66.07,19.4
    >>Talk to |cRXP_FRIENDLY_Lieutenant Connar|r
    .turnin 96811 >>Turn in Escaping the Shadows
    .accept 96799 >>Accept A Heavy Responsibility
    .target Lieutenant Connar
step
    .goto 1419,65.23,15.33
    >>Talk to |cRXP_FRIENDLY_Sergeant Danneth|r
    .turnin 96799 >>Turn in A Heavy Responsibility
    .target Sergeant Danneth
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1419,65.23,15.33
    >>Talk to |cRXP_FRIENDLY_Sergeant Danneth|r
    .accept 96812 >>Accept Thicker Than Water
    .target Sergeant Danneth
step
    .goto 1424,48.33,60.04
    >>Talk to |cRXP_FRIENDLY_Emissary Jacques|r
    .accept 92432 >>Accept An Alarming Request
    .target Emissary Jacques
step
    .goto 1453,31.5,62.61
    >>Talk to |cRXP_FRIENDLY_Shylamiir|r
    .accept 92456 >>Accept A Green Sample
    .target Shylamiir
step
    .goto 1453,48.71,87.62
    >>Talk to |cRXP_FRIENDLY_High Sorcerer Andromath|r
    .accept 92489 >>Accept Power Overwhelming
    .target High Sorcerer Andromath
step
    .goto 1416,14.15,60.05
    >>Talk to |cRXP_FRIENDLY_Archmage Celindra|r
    .accept 96603 >>Accept Unstable Magic
    .target Archmage Celindra
step
    .goto 1416,18.51,65.68
    >>Talk to |cRXP_FRIENDLY_Arille Azuregaze|r
    .accept 96609 >>Accept A Taste of Home
    .target Arille Azuregaze
step
    .goto 1416,20.3,64.2
    >>Kill |cRXP_ENEMY_Arcanic Enigma|r
    *Slay the Mana Elemental in the City of Dalaran for High Sorcerer Andromath in Stormwind City.
    *|cRXP_WARN_Elite targets here. Group up or skip.|r
    .complete 92489,1 --Power Overwhelming
    .mob Arcanic Enigma
step
    .goto 1422,45.12,68.75
    >>Collect |cRXP_LOOT_[Mote of Unstable Magic]|r from |cRXP_ENEMY_Skeletal Warlord|r, |cRXP_ENEMY_Flesh Golem|r, |cRXP_ENEMY_Scarlet Executioner|r
    *Bring 10 Motes of Unstable Magic to Archmage Celindra in Dalaran.
    .complete 96603,1 --Unstable Magic
    .mob Skeletal Warlord
    .mob Flesh Golem
step
    .goto 1447,66.42,28.93
    >>Collect |cRXP_LOOT_[Silvermoon Shimmerwine]|r from |cRXP_ENEMY_Blood Elf Surveyor|r, |cRXP_ENEMY_Blood Elf Reclaimer|r, |cRXP_ENEMY_Blood Elf Defender|r
    *Bring 10 bottles of Silvermoon Shimmerwine to Arille Azuregaze in Dalaran city.
    .complete 96609,1 --A Taste of Home
    .mob Blood Elf Surveyor
    .mob Blood Elf Reclaimer
step
    #completewith next
    +|cRXP_WARN_Run the dungeon|r
step
    .goto 1421,69.3,45.6
    >>Enter |cRXP_WARN_City of Dalaran|r and run it with a group. Quest goals inside:
    *A Green Sample: Collect a Fel Infused Blossom from the City of Dalaran for Shylamiir in Stormwind City.
    .complete 92456,1 --A Green Sample
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1421,68.6,45.1
    >>Talk to |cRXP_FRIENDLY_Image of Archmage Modera|r
    .turnin 92432 >>Turn in An Alarming Request
    .target Image of Archmage Modera
step
    .goto 1453,31.5,62.61
    >>Talk to |cRXP_FRIENDLY_Shylamiir|r
    .turnin 92456 >>Turn in A Green Sample
    .target Shylamiir
step
    .goto 1453,48.71,87.62
    >>Talk to |cRXP_FRIENDLY_High Sorcerer Andromath|r
    .turnin 92489 >>Turn in Power Overwhelming
    .target High Sorcerer Andromath
step
    .goto 1416,14.15,60.05
    >>Talk to |cRXP_FRIENDLY_Archmage Celindra|r
    .turnin 96603 >>Turn in Unstable Magic
    .target Archmage Celindra
step
    .goto 1416,18.51,65.68
    >>Talk to |cRXP_FRIENDLY_Arille Azuregaze|r
    .turnin 96609 >>Turn in A Taste of Home
    .target Arille Azuregaze
step
    .goto 1416,21.62,73.18
    >>Talk to |cRXP_FRIENDLY_Orphan Matron Aria|r
    .turnin 96812 >>Turn in Thicker Than Water
    .target Orphan Matron Aria
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1416,14.15,60.05
    >>Talk to |cRXP_FRIENDLY_Archmage Celindra|r
    .accept 96602 >>Accept More Unstable Magic
    .target Archmage Celindra
step
    .goto 1421,68.6,45.1
    >>Talk to |cRXP_FRIENDLY_Image of Archmage Modera|r
    .accept 92457 >>Accept Starving Arcane
    .accept 92458 >>Accept Heart of Disruption
    .target Image of Archmage Modera
step
    .goto 1416,19,67.5
    >>Kill |cRXP_ENEMY_Saturated Remnant|r
    *Defeat 8 Seeking Remnants, 8 Saturated Remnants, and 8 Mana Echoes inside the City of Dalaran for Archmage Modera outside of Dalaran.
    *|cRXP_WARN_Elite targets here. Group up or skip.|r
    .complete 92457,2 --Starving Arcane
    .mob Saturated Remnant
step
    .goto 1416,14.5,68.6
    >>Kill |cRXP_ENEMY_Mana Echo|r
    *Defeat 8 Seeking Remnants, 8 Saturated Remnants, and 8 Mana Echoes inside the City of Dalaran for Archmage Modera outside of Dalaran.
    *|cRXP_WARN_Elite targets here. Group up or skip.|r
    .complete 92457,3 --Starving Arcane
    .mob Mana Echo
step
    .goto 1416,15.2,55.9
    >>Collect |cRXP_LOOT_[Arcane Mote]|r from |cRXP_ENEMY_Shade of the Archmage|r
    *Collect the Arcane Mote for the Image of Archmage Modera near the City of Dalaran.
    .complete 92458,1 --Heart of Disruption
    .mob Shade of the Archmage
step
    .goto 1422,45.12,68.75
    >>Collect |cRXP_LOOT_[Mote of Unstable Magic]|r from |cRXP_ENEMY_Skeletal Warlord|r, |cRXP_ENEMY_Flesh Golem|r, |cRXP_ENEMY_Scarlet Executioner|r
    .complete 96602,1 --More Unstable Magic
    .mob Skeletal Warlord
    .mob Flesh Golem
step
    #completewith next
    +|cRXP_WARN_Run the dungeon (run 2)|r
step
    .goto 1421,69.3,45.6
    >>Enter |cRXP_WARN_City of Dalaran|r and run it with a group. Quest goals inside:
    *Starving Arcane: Defeat 8 Seeking Remnants, 8 Saturated Remnants, and 8 Mana Echoes inside the City of Dalaran for Archmage Modera outside of Dalaran.
    .complete 92457,1 --Starving Arcane
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1421,68.6,45.1
    >>Talk to |cRXP_FRIENDLY_Image of Archmage Modera|r
    .turnin 92457 >>Turn in Starving Arcane
    .turnin 92458 >>Turn in Heart of Disruption
    .target Image of Archmage Modera
step
    .goto 1416,14.15,60.05
    >>Talk to |cRXP_FRIENDLY_Archmage Celindra|r
    .turnin 96602 >>Turn in More Unstable Magic
    .target Archmage Celindra
step
    .goto 1421,69.3,45.6
    +Dungeon entrance: City of Dalaran. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 20-29
#name 29-38 Gnomeregan
#displayname 29-38 Gnomeregan
#next 29-38 Razorfen Kraul
step
    +|cRXP_WARN_Gnomeregan|r (levels 29-38). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1453,51.05,48.39
    >>Talk to |cRXP_FRIENDLY_Brother Sarno|r
    .accept 2923 >>Accept Tinkmaster Overspark
    .target Brother Sarno
step
    .goto 1453,62.63,34.11
    >>Talk to |cRXP_FRIENDLY_Shoni the Shilent|r
    .accept 2928 >>Accept Gyrodrillmatic Excavationators
    .target Shoni the Shilent
step
    .goto 1455,67.92,46.1
    >>Talk to |cRXP_FRIENDLY_Klockmort Spannerspan|r
    .accept 2924 >>Accept Essential Artificials
    .target Klockmort Spannerspan
step
    .goto 1455,69.83,48.1
    >>Talk to |cRXP_FRIENDLY_Master Mechanic Castpipe|r
    .accept 2930 >>Accept Data Rescue
    .target Master Mechanic Castpipe
step
    .goto 1455,68.75,48.97
    >>Talk to |cRXP_FRIENDLY_High Tinker Mekkatorque|r
    .accept 2929 >>Accept The Grand Betrayal
    .target High Tinker Mekkatorque
step
    .goto 1455,69.18,50.55
    >>Talk to |cRXP_FRIENDLY_Gnoarn|r
    .accept 2927 >>Accept The Day After
    .target Gnoarn
step
    .goto 1457,59.51,45.38
    >>Talk to |cRXP_FRIENDLY_Mathiel|r
    .accept 2925 >>Accept Klockmort's Essentials
    .target Mathiel
step
    .goto 1442,59.52,67.15
    >>Talk to |cRXP_FRIENDLY_Gaxim Rustfizzle|r
    .accept 2931 >>Accept Castpipe's Task
    .target Gaxim Rustfizzle
step
    #completewith next
    +|cRXP_WARN_Run the dungeon|r
step
    .goto 1426,24.3,39.8
    >>Inside Gnomeregan: these quests start from a drop or an object in the dungeon
    .accept 2904 >>Accept A Fine Mess
    .accept 2951 >>Accept The Sparklematic 5200!
    .accept 4601 >>Accept The Sparklematic 5200!
    .accept 4602 >>Accept The Sparklematic 5200!
    .accept 80324 >>Accept The Mad King
step
    .goto 1426,24.3,39.8
    >>Loot |cRXP_LOOT_[Grime-Encrusted Ring]|r from |cRXP_ENEMY_Dark Iron Agent|r, then click it to start the quest
    .accept 2945 >>Accept Grime-Encrusted Ring
    .use 9326
    .mob Dark Iron Agent
step
    .goto 1426,24.3,39.8
    >>Enter |cRXP_WARN_Gnomeregan|r and run it with a group. Quest goals inside:
    *Essential Artificials: Bring 12 Essential Artificials to Klockmort Spannerspan in Ironforge.
    *Gyrodrillmatic Excavationators: Bring twenty-four Robo-mechanical Guts to Shoni in Stormwind.
    *The Grand Betrayal: Venture to Gnomeregan and kill Mekgineer Thermaplugg. Return to High Tinker Mekkatorque when the task is complete.
    *Data Rescue: Bring a Prismatic Punch Card to Master Mechanic Castpipe in Ironforge.
    *The Sparklematic 5200!: Insert a Grime-Encrusted Item into the Sparklematic 5200, and be sure to have three silver coins to start the machine.
    *The Sparklematic 5200!: Insert a Grime-Encrusted Item into the Sparklematic 5200, and be sure to have three silver coins to start the machine.
    *The Sparklematic 5200!: Insert a Grime-Encrusted Item into the Sparklematic 5200, and be sure to have three silver coins to start the machine.
    .complete 2924,1 --Essential Artificials
    .complete 2928,1 --Gyrodrillmatic Excavationators
    .complete 2929,1 --The Grand Betrayal
    .complete 2930,1 --Data Rescue
    .complete 2951,1 --The Sparklematic 5200!
    .complete 4601,1 --The Sparklematic 5200!
    .complete 4602,1 --The Sparklematic 5200!
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1426,24.3,39.8
    >>Loot |cRXP_LOOT_[Grime-Encrusted Ring]|r from |cRXP_ENEMY_Dark Iron Agent|r, then click it to start the quest
    .turnin 2945 >>Turn in Grime-Encrusted Ring
step
    .goto 1426,24.3,39.8
    >>Inside Gnomeregan: these quests start from a drop or an object in the dungeon
    .turnin 2951 >>Turn in The Sparklematic 5200!
    .turnin 4601 >>Turn in The Sparklematic 5200!
    .turnin 4602 >>Turn in The Sparklematic 5200!
step
    .goto 1426,45.89,49.39
    >>Talk to |cRXP_FRIENDLY_Ozzie Togglevolt|r
    .turnin 2927 >>Turn in The Day After
    .target Ozzie Togglevolt
step
    .goto 1434,27.6,77.48
    >>Talk to |cRXP_FRIENDLY_Scooty|r
    .turnin 2904 >>Turn in A Fine Mess
    .target Scooty
step
    .goto 1455,69.55,50.33
    >>Talk to |cRXP_FRIENDLY_Tinkmaster Overspark|r
    .turnin 2923 >>Turn in Tinkmaster Overspark
    .target Tinkmaster Overspark
step
    .goto 1455,68.75,48.97
    >>Talk to |cRXP_FRIENDLY_High Tinker Mekkatorque|r
    .turnin 2929 >>Turn in The Grand Betrayal
    .turnin 80324 >>Turn in The Mad King
    .target High Tinker Mekkatorque
step
    .goto 1455,69.83,48.1
    >>Talk to |cRXP_FRIENDLY_Master Mechanic Castpipe|r
    .turnin 2930 >>Turn in Data Rescue
    .turnin 2931 >>Turn in Castpipe's Task
    .target Master Mechanic Castpipe
step
    .goto 1455,67.92,46.1
    >>Talk to |cRXP_FRIENDLY_Klockmort Spannerspan|r
    .turnin 2924 >>Turn in Essential Artificials
    .turnin 2925 >>Turn in Klockmort's Essentials
    .target Klockmort Spannerspan
step
    .goto 1453,62.63,34.11
    >>Talk to |cRXP_FRIENDLY_Shoni the Shilent|r
    .turnin 2928 >>Turn in Gyrodrillmatic Excavationators
    .target Shoni the Shilent
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1455,69.55,50.33
    >>Talk to |cRXP_FRIENDLY_Tinkmaster Overspark|r
    .accept 2922 >>Accept Save Techbot's Brain!
    .target Tinkmaster Overspark
step
    .goto 1426,45.89,49.39
    >>Talk to |cRXP_FRIENDLY_Ozzie Togglevolt|r
    .accept 2926 >>Accept Gnogaine
    .target Ozzie Togglevolt
step
    .goto 1426,19.78,31.93
    >>Collect |cRXP_LOOT_[Techbot's Memory Core]|r from |cRXP_ENEMY_Techbot|r
    *Bring Techbot's Memory Core to Tinkmaster Overspark in Ironforge.
    .complete 2922,1 --Save Techbot's Brain!
    .mob Techbot
step
    #completewith next
    +|cRXP_WARN_Run the dungeon (run 2)|r
step
    .goto 1426,24.3,39.8
    >>Inside Gnomeregan: these quests start from a drop or an object in the dungeon
    .accept 2947 >>Accept Return of the Ring
    .accept 2952 >>Accept The Sparklematic 5200!
    .accept 4605 >>Accept The Sparklematic 5200!
    .accept 4606 >>Accept The Sparklematic 5200!
step
    .goto 1426,24.3,39.8
    >>Enter |cRXP_WARN_Gnomeregan|r and run it with a group. Quest goals inside:
    *Gnogaine: Use the Empty Leaden Collection Phial on Irradiated Invaders or Irradiated Pillagers to collect radioactive fallout. Once it is full, take it back to Ozzie Togglevolt in Kharanos.
    .complete 2926,1 --Gnogaine
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1426,24.3,39.8
    >>Inside Gnomeregan: these quests start from a drop or an object in the dungeon
    .turnin 2952 >>Turn in The Sparklematic 5200!
    .turnin 4605 >>Turn in The Sparklematic 5200!
    .turnin 4606 >>Turn in The Sparklematic 5200!
step
    .goto 1426,45.89,49.39
    >>Talk to |cRXP_FRIENDLY_Ozzie Togglevolt|r
    .turnin 2926 >>Turn in Gnogaine
    .target Ozzie Togglevolt
step
    .goto 1455,69.55,50.33
    >>Talk to |cRXP_FRIENDLY_Tinkmaster Overspark|r
    .turnin 2922 >>Turn in Save Techbot's Brain!
    .target Tinkmaster Overspark
step
    .goto 1455,36.38,3.61
    >>Talk to |cRXP_FRIENDLY_Talvash del Kissel|r
    .turnin 2947 >>Turn in Return of the Ring
    .target Talvash del Kissel
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1426,45.89,49.39
    >>Talk to |cRXP_FRIENDLY_Ozzie Togglevolt|r
    .accept 2962 >>Accept The Only Cure is More Green Glow
    .target Ozzie Togglevolt
step
    #completewith next
    +|cRXP_WARN_Run the dungeon (run 3)|r
step
    .goto 1426,24.3,39.8
    >>Enter |cRXP_WARN_Gnomeregan|r and run it with a group. Quest goals inside:
    *The Only Cure is More Green Glow: Travel to Gnomeregan and bring back High Potency Radioactive Fallout. Be warned, the fallout is unstable and will collapse rather quickly.
    .complete 2962,1 --The Only Cure is More Green Glow
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1426,45.89,49.39
    >>Talk to |cRXP_FRIENDLY_Ozzie Togglevolt|r
    .turnin 2962 >>Turn in The Only Cure is More Green Glow
    .target Ozzie Togglevolt
step
    .goto 1426,24.3,39.8
    +Dungeon entrance: Gnomeregan. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 20-29
#name 29-38 Razorfen Kraul
#displayname 29-38 Razorfen Kraul
#next 30-46 Scarlet Monastery
step
    +|cRXP_WARN_Razorfen Kraul|r (levels 29-38). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *Pre-quests in this guide: Lonebrow's Journal
step
    #completewith next
    +|cRXP_WARN_Pre-quests|r
step
    .goto 1441,30.73,24.35
    >>Inside Razorfen Kraul: loot |cRXP_LOOT_[Henrig Lonebrow's Journal]|r and click it to start the quest
    .accept 1100 >>Accept Lonebrow's Journal
    .use 5791
step
    .goto 1444,89.64,46.57
    >>Talk to |cRXP_FRIENDLY_Falfindel Waywarder|r
    .turnin 1100 >>Turn in Lonebrow's Journal
    .target Falfindel Waywarder
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1444,89.64,46.57
    >>Talk to |cRXP_FRIENDLY_Falfindel Waywarder|r
    .accept 1101 >>Accept The Crone of the Kraul
    .target Falfindel Waywarder
step
    .goto 1413,62.37,37.62
    >>Talk to |cRXP_FRIENDLY_Mebok Mizzyrix|r
    .accept 1221 >>Accept Blueleaf Tubers
    .target Mebok Mizzyrix
step
    .goto 1413,62.34,37.6
    >>Collect |cRXP_LOOT_[Snufflenose Command Stick]|r from |cRXP_PICK_Snufflenose Command Sticks|r
    *Grab a Crate with Holes.
    .complete 1221,4 --Blueleaf Tubers
step
    .goto 1413,62.33,37.62
    >>Collect |cRXP_LOOT_[Snufflenose Owner's Manual]|r from |cRXP_PICK_Snufflenose Owner's Manual|r
    *Grab a Crate with Holes.
    .complete 1221,3 --Blueleaf Tubers
step
    .goto 1413,62.32,37.61
    >>Collect |cRXP_LOOT_[Crate With Holes]|r from |cRXP_PICK_Crate with Holes|r
    *Grab a Crate with Holes.
    .complete 1221,2 --Blueleaf Tubers
step
    #completewith next
    +|cRXP_WARN_Run the dungeon|r
step
    .goto 1413,42.9,90.2
    >>Inside Razorfen Kraul: these quests start from a drop or an object in the dungeon
    .accept 1142 >>Accept Mortality Wanes
    .accept 1144 >>Accept Willix the Importer
step
    .goto 1413,42.9,90.2
    >>Enter |cRXP_WARN_Razorfen Kraul|r and run it with a group. Quest goals inside:
    *The Crone of the Kraul: Bring Razorflank's Medallion to Falfindel Waywarder in Thalanaar.
    *Mortality Wanes: Find and return Treshala's Pendant to Treshala Fallowbrook in Darnassus.
    *Blueleaf Tubers: Grab a Crate with Holes.
    .complete 1101,1 --The Crone of the Kraul
    .complete 1142,1 --Mortality Wanes
    .complete 1221,1 --Blueleaf Tubers
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1413,42.9,90.2
    >>Inside Razorfen Kraul: these quests start from a drop or an object in the dungeon
    .turnin 1144 >>Turn in Willix the Importer
step
    .goto 1413,62.37,37.62
    >>Talk to |cRXP_FRIENDLY_Mebok Mizzyrix|r
    .turnin 1221 >>Turn in Blueleaf Tubers
    .target Mebok Mizzyrix
step
    .goto 1444,89.64,46.57
    >>Talk to |cRXP_FRIENDLY_Falfindel Waywarder|r
    .turnin 1101 >>Turn in The Crone of the Kraul
    .target Falfindel Waywarder
step
    .goto 1457,69.54,67.75
    >>Talk to |cRXP_FRIENDLY_Treshala Fallowbrook|r
    .turnin 1142 >>Turn in Mortality Wanes
    .target Treshala Fallowbrook
step
    .goto 1413,42.9,90.2
    +Dungeon entrance: Razorfen Kraul. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 30-39
#name 30-46 Scarlet Monastery
#displayname 30-46 Scarlet Monastery
#next 35-40 The Drowned City
step
    +|cRXP_WARN_Scarlet Monastery|r (levels 30-46). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *Four wings: Graveyard 30-38, Library 33-41, Armory 36-44, Cathedral 38-46.
    *Pre-quests in this guide: Down the Scarlet Path, Down the Scarlet Path
step
    #completewith next
    +|cRXP_WARN_Pre-quests|r
step
    .goto 1443,66.52,7.91
    >>Talk to |cRXP_FRIENDLY_Brother Anton|r
    .accept 261 >>Accept Down the Scarlet Path
    .target Brother Anton
step
    .goto 1443,63.86,88.83
    >>Kill |cRXP_ENEMY_Undead Ravager|r
    *Destroy 30 Undead Ravagers, then return to Brother Anton at Nijel's Point.
    .complete 261,1 --Down the Scarlet Path
    .mob Undead Ravager
step
    .goto 1443,66.52,7.91
    >>Talk to |cRXP_FRIENDLY_Brother Anton|r
    .turnin 261 >>Turn in Down the Scarlet Path
    .accept 1052 >>Accept Down the Scarlet Path
    .target Brother Anton
step
    .goto 1424,51.47,58.35
    >>Talk to |cRXP_FRIENDLY_Raleigh the Devout|r
    .turnin 1052 >>Turn in Down the Scarlet Path
    .target Raleigh the Devout
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1424,51.47,58.35
    >>Talk to |cRXP_FRIENDLY_Raleigh the Devout|r
    .accept 1053 >>Accept In the Name of the Light
    .target Raleigh the Devout
step
    .goto 1455,74.97,12.48
    >>Talk to |cRXP_FRIENDLY_Librarian Mae Paledust|r
    .accept 1050 >>Accept Mythology of the Titans
    .target Librarian Mae Paledust
step
    .goto 1416,9.51,62.25
    >>Talk to |cRXP_FRIENDLY_Magus Olvek|r
    .accept 96800 >>Accept Past Due
    .target Magus Olvek
step
    #completewith next
    +|cRXP_WARN_Run the dungeon|r
step
    .goto 1420,82.6,33.8
    >>Enter |cRXP_WARN_Scarlet Monastery|r and run it with a group. Quest goals inside:
    *Mythology of the Titans: Retrieve Mythology of the Titans from the Monastery and bring it to Librarian Mae Paledust in Ironforge.
    *In the Name of the Light: Kill High Inquisitor Whitemane, Scarlet Commander Mograine, Herod, the Scarlet Champion and Houndmaster Loksey and then report back to Raleigh the Devout in Southshore.
    *Past Due: Retrieve the book The Lost Magic of the Runemasters from the Scarlet Monastery.
    .complete 1050,1 --Mythology of the Titans
    .complete 1053,1 --In the Name of the Light
    .complete 1053,2 --In the Name of the Light
    .complete 1053,3 --In the Name of the Light
    .complete 1053,4 --In the Name of the Light
    .complete 96800,1 --Past Due
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1455,74.97,12.48
    >>Talk to |cRXP_FRIENDLY_Librarian Mae Paledust|r
    .turnin 1050 >>Turn in Mythology of the Titans
    .target Librarian Mae Paledust
step
    .goto 1424,51.47,58.35
    >>Talk to |cRXP_FRIENDLY_Raleigh the Devout|r
    .turnin 1053 >>Turn in In the Name of the Light
    .target Raleigh the Devout
step
    .goto 1416,9.51,62.25
    >>Talk to |cRXP_FRIENDLY_Magus Olvek|r
    .turnin 96800 >>Turn in Past Due
    .target Magus Olvek
step
    .goto 1420,82.6,33.8
    +Dungeon entrance: Scarlet Monastery. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 30-39
#name 35-40 The Drowned City
#displayname 35-40 The Drowned City
#next 37-46 Razorfen Downs
step
    +|cRXP_WARN_The Drowned City|r (levels 35-40). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *New Forever dungeon, underwater off the west coast of Stranglethorn, west of Grom'gol. Bring water breathing. Nearest flights: Booty Bay, Grom'gol.
    *Pre-quests in this guide: The Second Rebellion, Bad Medicine, Troll Witchery, Kurzen's Mystery, An Acquaintance in Southshore
step
    #completewith next
    +|cRXP_WARN_Pre-quests|r
step
    .goto 1434,38.02,3.33
    >>Talk to |cRXP_FRIENDLY_Sergeant Yohwa|r
    .accept 203 >>Accept The Second Rebellion
    .accept 204 >>Accept Bad Medicine
    .target Sergeant Yohwa
step
    .goto 1434,44.51,10
    >>Kill |cRXP_ENEMY_Kurzen Jungle Fighter|r. Collect |cRXP_LOOT_[Jungle Remedy]|r from |cRXP_ENEMY_Kurzen Jungle Fighter|r, |cRXP_ENEMY_Kurzen Medicine Man|r, |cRXP_ENEMY_Kurzen Headshrinker|r. Collect |cRXP_LOOT_[Venom Fern Extract]|r from |cRXP_PICK_Kurzen Supplies|r, |cRXP_PICK_Kurzen Supplies|r
    *Kill 15 Kurzen Jungle Fighters.
    *Bring 7 Jungle Remedies and 1 Venom Fern Extract to Sergeant Yohwa at the Rebel Camp.
    .complete 203,1 --The Second Rebellion
    .complete 204,1 --Bad Medicine
    .complete 204,2 --Bad Medicine
    .mob Kurzen Jungle Fighter
    .mob Kurzen Medicine Man
step
    .goto 1434,38.02,3.33
    >>Talk to |cRXP_FRIENDLY_Sergeant Yohwa|r
    .turnin 203 >>Turn in The Second Rebellion
    .turnin 204 >>Turn in Bad Medicine
    .target Sergeant Yohwa
step
    .goto 1434,37.83,3.56
    >>Talk to |cRXP_FRIENDLY_Brother Nimetz|r
    .accept 207 >>Accept Kurzen's Mystery
    .target Brother Nimetz
step
    .goto 1434,29.48,19.14
    >>Collect |cRXP_LOOT_[The First Troll Legend]|r from |cRXP_PICK_Moon Over the Vale|r. Collect |cRXP_LOOT_[The Second Troll Legend]|r from |cRXP_PICK_Gri'lek the Wanderer|r, |cRXP_PICK_Gri'lek the Wanderer|r
    *Find the 4 tablets and bring their legends back to Brother Nimetz.
    .complete 207,1 --Kurzen's Mystery
    .complete 207,2 --Kurzen's Mystery
step
    .goto 1434,22.95,12.02
    >>Collect |cRXP_LOOT_[The Third Troll Legend]|r from |cRXP_PICK_Fall of Gurubashi|r. Collect |cRXP_LOOT_[The Fourth Troll Legend]|r from |cRXP_PICK_The Emperor's Tomb|r
    *Find the 4 tablets and bring their legends back to Brother Nimetz.
    .complete 207,3 --Kurzen's Mystery
    .complete 207,4 --Kurzen's Mystery
step
    .goto 1434,37.83,3.56
    >>Talk to |cRXP_FRIENDLY_Brother Nimetz|r
    .turnin 207 >>Turn in Kurzen's Mystery
    .accept 205 >>Accept Troll Witchery
    .target Brother Nimetz
step
    .goto 1434,45.92,38
    >>Collect |cRXP_LOOT_[Skullsplitter Fetish]|r from |cRXP_ENEMY_Skullsplitter Witch Doctor|r, |cRXP_ENEMY_Skullsplitter Mystic|r
    *Bring 4 Skullsplitter Fetishes to Brother Nimetz at the Rebel Camp.
    .complete 205,1 --Troll Witchery
    .mob Skullsplitter Witch Doctor
    .mob Skullsplitter Mystic
step
    .goto 1434,37.83,3.56
    >>Talk to |cRXP_FRIENDLY_Brother Nimetz|r
    .turnin 205 >>Turn in Troll Witchery
    .accept 95786 >>Accept An Acquaintance in Southshore
    .target Brother Nimetz
step
    .goto 1424,50.57,57.09
    >>Talk to |cRXP_FRIENDLY_Loremaster Dibbs|r
    .turnin 95786 >>Turn in An Acquaintance in Southshore
    .target Loremaster Dibbs
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1424,50.57,57.09
    >>Talk to |cRXP_FRIENDLY_Loremaster Dibbs|r
    .accept 95787 >>Accept Take Two With Water
    .accept 95788 >>Accept Magics of the Drowned City
    .target Loremaster Dibbs
step
    .goto 1434,26.94,77.21
    >>Talk to |cRXP_FRIENDLY_Krazek|r
    .accept 95789 >>Accept Shady Saltseers
    .accept 95791 >>Accept The Saltseer Captain
    .target Krazek
step
    .goto 1416,15.37,74.09
    >>Talk to |cRXP_FRIENDLY_Archmage Timear|r
    .accept 97130 >>Accept Ancient Gurubashi Secrets
    .target Archmage Timear
step
    #completewith next
    +|cRXP_WARN_Run the dungeon|r
step
    .goto 1434,21.4,27.9
    >>Enter |cRXP_WARN_The Drowned City|r and run it with a group. Quest goals inside:
    *Take Two With Water: Use the hide and charcoal to create rubbings of the tablets found in the Drowned City.
    *Magics of the Drowned City: Collect 5 I'lalai Fetishes from trolls in the Drowned City.
    *Shady Saltseers: Collect 10 Voodoo Infused Artifacts from Saltseer pirates in the Drowned City.
    *The Saltseer Captain: Slay 3 Saltseer Coroners and Captain Dreadrise in the Drowned City.
    *Ancient Gurubashi Secrets: Recover an Ancient Gurubashi Idol from the Drowned City.
    .complete 95787,1 --Take Two With Water
    .complete 95787,2 --Take Two With Water
    .complete 95787,3 --Take Two With Water
    .complete 95787,4 --Take Two With Water
    .complete 95788,1 --Magics of the Drowned City
    .complete 95789,1 --Shady Saltseers
    .complete 95791,1 --The Saltseer Captain
    .complete 95791,2 --The Saltseer Captain
    .complete 97130,1 --Ancient Gurubashi Secrets
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1434,26.94,77.21
    >>Talk to |cRXP_FRIENDLY_Krazek|r
    .turnin 95789 >>Turn in Shady Saltseers
    .turnin 95791 >>Turn in The Saltseer Captain
    .target Krazek
step
    .goto 1424,50.57,57.09
    >>Talk to |cRXP_FRIENDLY_Loremaster Dibbs|r
    .turnin 95787 >>Turn in Take Two With Water
    .turnin 95788 >>Turn in Magics of the Drowned City
    .target Loremaster Dibbs
step
    .goto 1416,15.37,74.09
    >>Talk to |cRXP_FRIENDLY_Archmage Timear|r
    .turnin 97130 >>Turn in Ancient Gurubashi Secrets
    .target Archmage Timear
step
    .goto 1434,21.4,27.9
    +Dungeon entrance: The Drowned City. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 30-39
#name 37-46 Razorfen Downs
#displayname 37-46 Razorfen Downs
#next 40-45 Krol'dok Stronghold
step
    +|cRXP_WARN_Razorfen Downs|r (levels 37-46). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *Pre-quests in this guide: A Brief History Lesson, Forlorn Gardens, Meeting the Magister, Rot and Regret, Word of the Woods, Passing the Blame, Fragments of the Pylons, Powering the Pylons
step
    #completewith next
    +|cRXP_WARN_Pre-quests|r
step
    .goto 2652,35.17,46.61
    >>Talk to |cRXP_FRIENDLY_Mordent Evenshade|r
    .accept 96010 >>Accept Fragments of the Pylons
    .target Mordent Evenshade
step
    >>Collect |cRXP_LOOT_[Pylon Fragment]|r. Collect |cRXP_LOOT_[Pylon Shard]|r
    *Recover shards and fragments of the pylons, found guarded at the Magram and Gelkis villages. Return them to Mordent Evenshade.
    .complete 96010,1 --Fragments of the Pylons
    .complete 96010,2 --Fragments of the Pylons
step
    .goto 2652,35.17,46.61
    >>Talk to |cRXP_FRIENDLY_Mordent Evenshade|r
    .turnin 96010 >>Turn in Fragments of the Pylons
    .accept 96018 >>Accept Powering the Pylons
    .target Mordent Evenshade
step
    .goto 2652,35.17,46.61
    >>Talk to |cRXP_FRIENDLY_Mordent Evenshade|r
    .turnin 96018 >>Turn in Powering the Pylons
    .accept 93016 >>Accept A Brief History Lesson
    .target Mordent Evenshade
step
    .goto 2652,35.17,46.61
    >>Talk to |cRXP_FRIENDLY_Mordent Evenshade|r
    .turnin 93016 >>Turn in A Brief History Lesson
    .accept 93394 >>Accept Meeting the Magister
    .target Mordent Evenshade
step
    .goto 2652,47.37,76.46
    >>Talk to |cRXP_FRIENDLY_Magister Kirandis|r
    .turnin 93394 >>Turn in Meeting the Magister
    .target Magister Kirandis
step
    .goto 2652,53.32,76.02
    >>Talk to |cRXP_FRIENDLY_Mithera|r
    .accept 93341 >>Accept Forlorn Gardens
    .target Mithera
step
    .goto 2652,70.21,79.71
    >>Pedestal examined
    *Investigate the Forlorn Gardens near Shen'dralas and then return to Mithera at the nearby temple.
    .complete 93341,1 --Forlorn Gardens
step
    .goto 2652,53.32,76.02
    >>Talk to |cRXP_FRIENDLY_Mithera|r
    .turnin 93341 >>Turn in Forlorn Gardens
    .accept 93594 >>Accept Word of the Woods
    .target Mithera
step
    .goto 2652,69.66,71.78
    >>Talk to |cRXP_FRIENDLY_Woodwyrd|r
    .turnin 93594 >>Turn in Word of the Woods
    .accept 93404 >>Accept Rot and Regret
    .target Woodwyrd
step
    .goto 2652,69.66,71.78
    >>Kill |cRXP_ENEMY_Woodwyrd|r. Collect |cRXP_LOOT_[Vial of Earth Song Water]|r
    *Venture to Maraudon and recover a Vial of Earth Song Water and return it to Woodwyrd at the Forlorn Gardens in Desolace.
    *|cRXP_WARN_Elite targets here. Group up or skip.|r
    .complete 93404,1 --Rot and Regret
    .complete 93404,2 --Rot and Regret
    .mob Woodwyrd
step
    .goto 2652,69.66,71.78
    >>Talk to |cRXP_FRIENDLY_Woodwyrd|r
    .turnin 93404 >>Turn in Rot and Regret
    .accept 93601 >>Accept Passing the Blame
    .target Woodwyrd
step
    .goto 2652,72.73,31.17
    >>Talk to |cRXP_FRIENDLY_Kog'thug the Brave|r
    .turnin 93601 >>Turn in Passing the Blame
    .target Kog'thug the Brave
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 2652,72.73,31.17
    >>Talk to |cRXP_FRIENDLY_Kog'thug the Brave|r
    .accept 93604 >>Accept Agamaggan's Blood
    .target Kog'thug the Brave
step
    .goto 1453,50.31,45.47
    >>Talk to |cRXP_FRIENDLY_Archbishop Benedictus|r
    .accept 3636 >>Accept Bring the Light
    .target Archbishop Benedictus
step
    .goto 1413,49.01,94.94
    >>Talk to |cRXP_FRIENDLY_Myriam Moonsinger|r
    .accept 6626 >>Accept A Host of Evil
    .target Myriam Moonsinger
step
    .goto 1416,15.3,73.93
    >>Talk to |cRXP_FRIENDLY_Archmage Lan'dalock|r
    .accept 96773 >>Accept The Coldbringer's Eye
    .target Archmage Lan'dalock
step
    .goto 1413,48.69,89.85
    >>Kill |cRXP_ENEMY_Razorfen Battleguard|r
    *Kill 8 Razorfen Battleguard, 8 Razorfen Thornweavers, and 8 Death's Head Cultists and return to Myriam Moonsinger near the entrance to Razorfen Downs.
    *|cRXP_WARN_Elite targets here. Group up or skip.|r
    .complete 6626,1 --A Host of Evil
    .mob Razorfen Battleguard
step
    .goto 1413,48.61,89.93
    >>Kill |cRXP_ENEMY_Death's Head Cultist|r
    *Kill 8 Razorfen Battleguard, 8 Razorfen Thornweavers, and 8 Death's Head Cultists and return to Myriam Moonsinger near the entrance to Razorfen Downs.
    *|cRXP_WARN_Elite targets here. Group up or skip.|r
    .complete 6626,3 --A Host of Evil
    .mob Death's Head Cultist
step
    .goto 1413,48.65,89.71
    >>Kill |cRXP_ENEMY_Razorfen Thornweaver|r
    *Kill 8 Razorfen Battleguard, 8 Razorfen Thornweavers, and 8 Death's Head Cultists and return to Myriam Moonsinger near the entrance to Razorfen Downs.
    *|cRXP_WARN_Elite targets here. Group up or skip.|r
    .complete 6626,2 --A Host of Evil
    .mob Razorfen Thornweaver
step
    #completewith next
    +|cRXP_WARN_Run the dungeon|r
step
    .goto 1413,49,93.9
    >>Inside Razorfen Downs: these quests start from a drop or an object in the dungeon
    .accept 3523 >>Accept Scourge of the Downs
step
    .goto 1413,49,93.9
    >>Enter |cRXP_WARN_Razorfen Downs|r and run it with a group. Quest goals inside:
    *Bring the Light: Archbishop Bendictus wants you to slay Amnennar the Coldbringer in Razorfen Downs.
    *Agamaggan's Blood: Venture to Razorfen Downs and acquire Virulent Blood of Agamaggan, then return it to Kog'thug the Brave at Bristleback Retreat in the Desolace. Kog'thug felt it worth reminding that the Blood of Agamaggan inside Razorfen Kraul would not be sufficient.
    *The Coldbringer's Eye: Recover The Coldbringer's Eye from Razorfen Downs.
    .complete 3636,1 --Bring the Light
    .complete 93604,1 --Agamaggan's Blood
    .complete 96773,1 --The Coldbringer's Eye
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1413,49,93.9
    >>Inside Razorfen Downs: these quests start from a drop or an object in the dungeon
    .turnin 3523 >>Turn in Scourge of the Downs
step
    .goto 1413,49.01,94.94
    >>Talk to |cRXP_FRIENDLY_Myriam Moonsinger|r
    .turnin 6626 >>Turn in A Host of Evil
    .target Myriam Moonsinger
step
    .goto 1453,50.31,45.47
    >>Talk to |cRXP_FRIENDLY_Archbishop Benedictus|r
    .turnin 3636 >>Turn in Bring the Light
    .target Archbishop Benedictus
step
    .goto 2652,72.73,31.17
    >>Talk to |cRXP_FRIENDLY_Kog'thug the Brave|r
    .turnin 93604 >>Turn in Agamaggan's Blood
    .target Kog'thug the Brave
step
    .goto 1416,15.3,73.93
    >>Talk to |cRXP_FRIENDLY_Archmage Lan'dalock|r
    .turnin 96773 >>Turn in The Coldbringer's Eye
    .target Archmage Lan'dalock
step
    #completewith next
    +|cRXP_WARN_Run the dungeon (run 2)|r
step
    .goto 1413,49,93.9
    >>Inside Razorfen Downs: these quests start from a drop or an object in the dungeon
    .accept 3525 >>Accept Extinguishing the Idol
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1413,49,93.9
    >>Inside Razorfen Downs: these quests start from a drop or an object in the dungeon
    .turnin 3525 >>Turn in Extinguishing the Idol
step
    .goto 1413,49,93.9
    +Dungeon entrance: Razorfen Downs. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 40-49
#name 40-45 Krol'dok Stronghold
#displayname 40-45 Krol'dok Stronghold
#next 41-51 Uldaman
step
    +|cRXP_WARN_Krol'dok Stronghold|r (levels 40-45). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *New Forever dungeon in the Riverglades, on the hill over Sunnyglade next to the closed main gates.
    *Pre-quests in this guide: Scraps of Knowledge, Curious Trinkets, The Western Front, No Soldier Left Behind, Carving a Path, Bring Me His Head, A Small Favor
step
    #completewith next
    +|cRXP_WARN_Pre-quests|r
step
    .goto 2548,66.75,81.1
    >>Talk to |cRXP_FRIENDLY_Ashe Amberhall|r
    .accept 94881 >>Accept Curious Trinkets
    .target Ashe Amberhall
step
    .goto 2548,46.88,48.27
    >>Collect |cRXP_LOOT_[Twilight Charm]|r from |cRXP_ENEMY_Twilight Shadowmancer|r, |cRXP_ENEMY_Twilight Neophyte|r
    *Retrieve 25 Twilight Charms from Twilight Shadowmancers and Twilight Neophytes in Sunnyglade for Ashe Amberhall in Farholde Keep.
    .complete 94881,1 --Curious Trinkets
    .mob Twilight Shadowmancer
    .mob Twilight Neophyte
step
    .goto 2548,66.75,81.1
    >>Talk to |cRXP_FRIENDLY_Ashe Amberhall|r
    .turnin 94881 >>Turn in Curious Trinkets
    .accept 94907 >>Accept A Small Favor
    .accept 94879 >>Accept Scraps of Knowledge
    .target Ashe Amberhall
step
    >>Collect |cRXP_LOOT_[Twilight Page]|r
    *Collect 5 Twilight Pages from within Sunnyglade for Ashe Amberall in Farholde Keep.
    .complete 94879,1 --Scraps of Knowledge
step
    .goto 2548,66.75,81.1
    >>Talk to |cRXP_FRIENDLY_Ashe Amberhall|r
    .turnin 94879 >>Turn in Scraps of Knowledge
    .target Ashe Amberhall
step
    .goto 2548,66.67,81.01
    >>Talk to |cRXP_FRIENDLY_Demar Brant|r
    .accept 94886 >>Accept The Western Front
    .target Demar Brant
step
    .goto 2548,30.71,49.06
    >>Talk to |cRXP_FRIENDLY_Sergeant Riftan|r
    .turnin 94886 >>Turn in The Western Front
    .accept 94888 >>Accept No Soldier Left Behind
    .accept 94889 >>Accept Carving a Path
    .target Sergeant Riftan
step
    .goto 2548,30.71,49.06
    >>Talk to |cRXP_FRIENDLY_Sergeant Riftan|r
    .turnin 94888 >>Turn in No Soldier Left Behind
    .target Sergeant Riftan
step
    .goto 2548,26.65,47.76
    >>Kill |cRXP_ENEMY_Twilight Thrall|r. Kill |cRXP_ENEMY_Twilight Fanatic|r. Kill |cRXP_ENEMY_Twilight Corrupter|r. Kill |cRXP_ENEMY_Twilight Champion|r
    *Summon a Twilight's Thrall from a conduit within the Twilight Shroud and capture it with Amberhall's Soulstone.
    *Defeat 8 Twilight Fanatics, 8 Twilight Corrupters, and 8 Twilight Champions within the Twilight's Shroud for Sergeant Riftan.
    .complete 94907,1 --A Small Favor
    .complete 94889,1 --Carving a Path
    .complete 94889,2 --Carving a Path
    .complete 94889,3 --Carving a Path
    .mob Twilight Thrall
    .mob Twilight Fanatic
    .mob Twilight Corrupter
    .mob Twilight Champion
step
    .goto 2548,30.71,49.06
    >>Talk to |cRXP_FRIENDLY_Sergeant Riftan|r
    .turnin 94889 >>Turn in Carving a Path
    .accept 94890 >>Accept Bring Me His Head
    .target Sergeant Riftan
step
    .goto 2548,25.72,42.4
    >>Collect |cRXP_LOOT_[Kilgar's Head]|r from |cRXP_ENEMY_Overlord Kilgar|r
    *Defeat Overlord Kilgar within the Twilight's Shroud and bring his head to Sergeant Riftan.
    .complete 94890,1 --Bring Me His Head
    .mob Overlord Kilgar
step
    .goto 2548,30.71,49.06
    >>Talk to |cRXP_FRIENDLY_Sergeant Riftan|r
    .turnin 94890 >>Turn in Bring Me His Head
    .target Sergeant Riftan
step
    .goto 2548,66.75,81.1
    >>Talk to |cRXP_FRIENDLY_Ashe Amberhall|r
    .turnin 94907 >>Turn in A Small Favor
    .target Ashe Amberhall
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 2548,66.75,81.1
    >>Talk to |cRXP_FRIENDLY_Ashe Amberhall|r
    .accept 94984 >>Accept Tome of Twilight
    .target Ashe Amberhall
step
    .goto 2548,66.67,81.01
    >>Talk to |cRXP_FRIENDLY_Demar Brant|r
    .accept 94982 >>Accept Eye of Mugg
    .target Demar Brant
step
    .goto 2548,30.71,49.06
    >>Talk to |cRXP_FRIENDLY_Sergeant Riftan|r
    .accept 94983 >>Accept Twilight Mementos
    .target Sergeant Riftan
step
    .goto 1416,17.8,65.95
    >>Talk to |cRXP_FRIENDLY_Ranath Nightstride|r
    .accept 96771 >>Accept Vengeance of the Highborne
    .target Ranath Nightstride
step
    #completewith next
    +|cRXP_WARN_Run the dungeon|r
step
    .goto 2548,39,39
    >>Inside Krol'dok Stronghold: these quests start from a drop or an object in the dungeon
    .accept 94969 >>Accept Krol'dok No More!
step
    .goto 2548,39,39
    >>Loot |cRXP_LOOT_[Krol'dok Moulding]|r from |cRXP_ENEMY_Tunk|r, then click it to start the quest
    .accept 94980 >>Accept Krol'dok Moulding
    .use 267138
    .mob Tunk
step
    .goto 2548,39,39
    >>Enter |cRXP_WARN_Krol'dok Stronghold|r and run it with a group. Quest goals inside:
    *Eye of Mugg: Infiltrate Krol'dok Stronghold and return to Commander Brant with proof of their leader's demise.
    *Twilight Mementos: Collect 8 Cultist Bangles from the Twilight's Hammer in Krol'dok Stronghold.
    *Tome of Twilight: Kill Nar'gurk within Krol'dok Stronghold and recover any valuable information.
    *Vengeance of the Highborne: Travel to Krol'dok Stronghold and slay Zalfan Moonshadow.
    .complete 94982,1 --Eye of Mugg
    .complete 94983,1 --Twilight Mementos
    .complete 94984,1 --Tome of Twilight
    .complete 96771,1 --Vengeance of the Highborne
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 2548,39,39
    >>Inside Krol'dok Stronghold: these quests start from a drop or an object in the dungeon
    .turnin 94969 >>Turn in Krol'dok No More!
step
    .goto 2548,30.71,49.06
    >>Talk to |cRXP_FRIENDLY_Sergeant Riftan|r
    .turnin 94983 >>Turn in Twilight Mementos
    .target Sergeant Riftan
step
    .goto 2548,64.46,82.03
    >>Talk to |cRXP_FRIENDLY_Alphonse Dumas|r
    .turnin 94980 >>Turn in Krol'dok Moulding
    .target Alphonse Dumas
step
    .goto 2548,66.67,81.01
    >>Talk to |cRXP_FRIENDLY_Demar Brant|r
    .turnin 94982 >>Turn in Eye of Mugg
    .target Demar Brant
step
    .goto 2548,66.75,81.1
    >>Talk to |cRXP_FRIENDLY_Ashe Amberhall|r
    .turnin 94984 >>Turn in Tome of Twilight
    .target Ashe Amberhall
step
    .goto 1416,17.8,65.95
    >>Talk to |cRXP_FRIENDLY_Ranath Nightstride|r
    .turnin 96771 >>Turn in Vengeance of the Highborne
    .target Ranath Nightstride
step
    .goto 2548,39,39
    +Dungeon entrance: Krol'dok Stronghold. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 40-49
#name 41-51 Uldaman
#displayname 41-51 Uldaman
#next 44-54 Zul'Farrak
step
    +|cRXP_WARN_Uldaman|r (levels 41-51). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *Forever: Annora inside Uldaman is the Artisan Enchanting trainer.
    *Pre-quests in this guide: Ironband Wants You!, A Sign of Hope, Prospect of Faith, Prospect of Faith, Passing Word of a Threat, Passing Word of a Threat, Find Agmond, Murdaloc, An Ambassador of Evil, Badlands Reagent Run
step
    #completewith next
    +|cRXP_WARN_Pre-quests|r
step
    .goto 1455,74.64,11.74
    >>Talk to |cRXP_FRIENDLY_Prospector Stormpike|r
    .accept 707 >>Accept Ironband Wants You!
    .target Prospector Stormpike
step
    .goto 1432,65.93,65.62
    >>Talk to |cRXP_FRIENDLY_Prospector Ironband|r
    .turnin 707 >>Turn in Ironband Wants You!
    .accept 738 >>Accept Find Agmond
    .target Prospector Ironband
step
    .goto 1432,37.07,49.38
    >>Talk to |cRXP_FRIENDLY_Ghak Healtouch|r
    .accept 2500 >>Accept Badlands Reagent Run
    .target Ghak Healtouch
step
    .goto 1432,37.28,85.78
    >>Talk to |cRXP_FRIENDLY_Hammertoe Grez|r
    .accept 723 >>Accept Prospect of Faith
    .target Hammertoe Grez
step
    .goto 1418,50.89,62.4
    >>Click the |cRXP_PICK_Battered Dwarven Skeleton|r
    .turnin 738 >>Turn in Find Agmond
    .accept 739 >>Accept Murdaloc
step
    .goto 1418,53.42,43.39
    >>Talk to |cRXP_FRIENDLY_Prospector Ryedol|r
    .turnin 723 >>Turn in Prospect of Faith
    .accept 724 >>Accept Prospect of Faith
    .target Prospector Ryedol
step
    .goto 1418,53.03,33.94
    >>Click the |cRXP_PICK_Crumpled Map|r
    .accept 720 >>Accept A Sign of Hope
step
    .goto 1418,53.42,43.39
    >>Talk to |cRXP_FRIENDLY_Prospector Ryedol|r
    .turnin 720 >>Turn in A Sign of Hope
    .target Prospector Ryedol
step
    .goto 1418,49.63,66.31
    >>Kill |cRXP_ENEMY_Murdaloc|r. Kill |cRXP_ENEMY_Stonevault Bonesnapper|r
    *Slay Agmond's killer, Murdaloc.
    .complete 739,1 --Murdaloc
    .complete 739,2 --Murdaloc
    .mob Murdaloc
    .mob Stonevault Bonesnapper
step
    .goto 1418,15.03,60.1
    >>Collect |cRXP_LOOT_[Buzzard Gizzard]|r from |cRXP_ENEMY_Wayward Buzzard|r, |cRXP_ENEMY_Buzzard|r, |cRXP_ENEMY_Giant Buzzard|r
    *Acquire the reagents Ghak Healtouch needs from the Badlands, then return to him in Thelsamar.
    .complete 2500,1 --Badlands Reagent Run
    .mob Wayward Buzzard
    .mob Buzzard
step
    .goto 1418,55.52,56.68
    >>Collect |cRXP_LOOT_[Crag Coyote Fang]|r from |cRXP_ENEMY_Crag Coyote|r, |cRXP_ENEMY_Feral Crag Coyote|r, |cRXP_ENEMY_Elder Crag Coyote|r
    *Acquire the reagents Ghak Healtouch needs from the Badlands, then return to him in Thelsamar.
    .complete 2500,2 --Badlands Reagent Run
    .mob Crag Coyote
    .mob Feral Crag Coyote
step
    .goto 1418,2.77,78.22
    >>Collect |cRXP_LOOT_[Rock Elemental Shard]|r from |cRXP_ENEMY_Earth Elemental|r, |cRXP_ENEMY_Lesser Rock Elemental|r, |cRXP_ENEMY_Greater Rock Elemental|r
    *Acquire the reagents Ghak Healtouch needs from the Badlands, then return to him in Thelsamar.
    .complete 2500,3 --Badlands Reagent Run
    .mob Earth Elemental
    .mob Lesser Rock Elemental
step
    .goto 1432,37.07,49.38
    >>Talk to |cRXP_FRIENDLY_Ghak Healtouch|r
    .turnin 2500 >>Turn in Badlands Reagent Run
    .target Ghak Healtouch
step
    .goto 1432,65.93,65.62
    >>Talk to |cRXP_FRIENDLY_Prospector Ironband|r
    .turnin 739 >>Turn in Murdaloc
    .target Prospector Ironband
step
    .goto 1455,77.54,11.82
    >>Talk to |cRXP_FRIENDLY_Historian Karnik|r
    .turnin 724 >>Turn in Prospect of Faith
    .accept 725 >>Accept Passing Word of a Threat
    .target Historian Karnik
step
    .goto 1455,77.34,9.71
    >>Talk to |cRXP_FRIENDLY_Advisor Belgrum|r
    .turnin 725 >>Turn in Passing Word of a Threat
    .accept 726 >>Accept Passing Word of a Threat
    .target Advisor Belgrum
step
    .goto 1455,77.54,11.82
    >>Talk to |cRXP_FRIENDLY_Historian Karnik|r
    .turnin 726 >>Turn in Passing Word of a Threat
    .accept 762 >>Accept An Ambassador of Evil
    .target Historian Karnik
step
    .goto 1418,42.1,28.88
    >>Collect |cRXP_LOOT_[Ambassador Infernus' Bracer]|r from |cRXP_ENEMY_Ambassador Infernus|r
    *Kill Ambassador Infernus in Angor Fortress and bring proof of his death to Advisor Belgrum in Ironforge.
    .complete 762,1 --An Ambassador of Evil
    .mob Ambassador Infernus
step
    .goto 1455,77.34,9.71
    >>Talk to |cRXP_FRIENDLY_Advisor Belgrum|r
    .turnin 762 >>Turn in An Ambassador of Evil
    .target Advisor Belgrum
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1455,77.34,9.71
    >>Talk to |cRXP_FRIENDLY_Advisor Belgrum|r
    .accept 1139 >>Accept The Lost Tablets of Will
    .target Advisor Belgrum
step
    .goto 1455,74.19,9.39
    >>Talk to |cRXP_FRIENDLY_Krom Stoutarm|r
    .accept 1360 >>Accept Reclaimed Treasures
    .target Krom Stoutarm
step
    .goto 1455,74.64,11.74
    >>Talk to |cRXP_FRIENDLY_Prospector Stormpike|r
    .accept 2398 >>Accept The Lost Dwarves
    .target Prospector Stormpike
step
    .goto 1432,37.07,49.38
    >>Talk to |cRXP_FRIENDLY_Ghak Healtouch|r
    .accept 17 >>Accept Uldaman Reagent Run
    .target Ghak Healtouch
step
    .goto 1432,65.93,65.62
    >>Talk to |cRXP_FRIENDLY_Prospector Ironband|r
    .accept 704 >>Accept Agmond's Fate
    .target Prospector Ironband
step
    .goto 1418,51.39,76.87
    >>Talk to |cRXP_FRIENDLY_Theldurin the Lost|r
    .accept 709 >>Accept Solution to Doom
    .target Theldurin the Lost
step
    .goto 1418,42.39,52.93
    >>Talk to |cRXP_FRIENDLY_Rigglefuzz|r
    .accept 2418 >>Accept Power Stones
    .target Rigglefuzz
step
    .goto 1418,53.42,43.39
    >>Talk to |cRXP_FRIENDLY_Prospector Ryedol|r
    .accept 721 >>Accept A Sign of Hope
    .target Prospector Ryedol
step
    .goto 1418,43.86,10.74
    >>Loot |cRXP_LOOT_[Shattered Necklace]|r from |cRXP_ENEMY_Shadowforge Surveyor|r, |cRXP_ENEMY_Shadowforge Ruffian|r, |cRXP_ENEMY_Shadowforge Digger|r, then click it to start the quest
    .accept 2198 >>Accept The Shattered Necklace
    .use 7666
    .mob Shadowforge Surveyor
    .mob Shadowforge Ruffian
step
    .goto 1418,35.56,23.51
    >>Collect |cRXP_LOOT_[Krom Stoutarm's Treasure]|r from |cRXP_PICK_Krom Stoutarm's Chest|r
    *Get Krom Stoutarm's treasured possession from his chest in the North Common Hall of Uldaman, and bring it to him in Ironforge.
    .complete 1360,1 --Reclaimed Treasures
step
    .goto 1418,34.72,23.94
    >>Collect |cRXP_LOOT_[Carved Stone Urn]|r from |cRXP_PICK_Carved Stone Urn|r
    *Bring 4 Carved Stone Urns to Prospector Ironband in Loch Modan.
    .complete 704,1 --Agmond's Fate
step
    .goto 1432,38.57,93.18
    >>Collect |cRXP_LOOT_[Tablet of Ryun'eh]|r from |cRXP_PICK_Ancient Chest|r
    *Bring the Tablet of Ryun'eh to Theldurin the Lost.
    .complete 709,1 --Solution to Doom
step
    #completewith next
    +|cRXP_WARN_Run the dungeon|r
step
    .goto 1418,44.6,12.1
    >>Inside Uldaman: these quests start from a drop or an object in the dungeon
    .accept 2278 >>Accept The Platinum Discs
step
    .goto 1418,44.6,12.1
    >>Enter |cRXP_WARN_Uldaman|r and run it with a group. Quest goals inside:
    *Uldaman Reagent Run: Bring 12 Magenta Fungus Caps to Ghak Healtouch in Thelsamar.
    *The Lost Tablets of Will: Find the Tablet of Will, and return them to Advisor Belgrum in Ironforge.
    *Power Stones: Bring 8 Dentrium Power Stones and 8 An'Alleum Power Stones to Rigglefuzz in the Badlands.
    .complete 17,1 --Uldaman Reagent Run
    .complete 1139,1 --The Lost Tablets of Will
    .complete 2418,1 --Power Stones
    .complete 2418,2 --Power Stones
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1418,44.6,12.1
    >>Inside Uldaman: these quests start from a drop or an object in the dungeon
    .turnin 2278 >>Turn in The Platinum Discs
step
    .goto 1418,42.39,52.93
    >>Talk to |cRXP_FRIENDLY_Rigglefuzz|r
    .turnin 2418 >>Turn in Power Stones
    .target Rigglefuzz
step
    .goto 1418,51.39,76.87
    >>Talk to |cRXP_FRIENDLY_Theldurin the Lost|r
    .turnin 709 >>Turn in Solution to Doom
    .target Theldurin the Lost
step
    .goto 1432,37.07,49.38
    >>Talk to |cRXP_FRIENDLY_Ghak Healtouch|r
    .turnin 17 >>Turn in Uldaman Reagent Run
    .target Ghak Healtouch
step
    .goto 1432,65.93,65.62
    >>Talk to |cRXP_FRIENDLY_Prospector Ironband|r
    .turnin 704 >>Turn in Agmond's Fate
    .target Prospector Ironband
step
    .goto 1432,37.28,85.78
    >>Talk to |cRXP_FRIENDLY_Hammertoe Grez|r
    .turnin 721 >>Turn in A Sign of Hope
    .target Hammertoe Grez
step
    .goto 1455,77.34,9.71
    >>Talk to |cRXP_FRIENDLY_Advisor Belgrum|r
    .turnin 1139 >>Turn in The Lost Tablets of Will
    .target Advisor Belgrum
step
    .goto 1455,74.19,9.39
    >>Talk to |cRXP_FRIENDLY_Krom Stoutarm|r
    .turnin 1360 >>Turn in Reclaimed Treasures
    .target Krom Stoutarm
step
    .goto 1455,74.64,11.74
    >>Talk to |cRXP_FRIENDLY_Prospector Stormpike|r
    .turnin 2398 >>Turn in The Lost Dwarves
    .target Prospector Stormpike
step
    .goto 1455,36.38,3.61
    >>Talk to |cRXP_FRIENDLY_Talvash del Kissel|r
    .turnin 2198 >>Turn in The Shattered Necklace
    .target Talvash del Kissel
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1455,36.38,3.61
    >>Talk to |cRXP_FRIENDLY_Talvash del Kissel|r
    .accept 2199 >>Accept Lore for a Price
    .target Talvash del Kissel
step
    .goto 1432,37.28,85.78
    >>Talk to |cRXP_FRIENDLY_Hammertoe Grez|r
    .accept 722 >>Accept Amulet of Secrets
    .target Hammertoe Grez
step
    .goto 1432,38.37,93.97
    >>Collect |cRXP_LOOT_[Hammertoe's Amulet]|r from |cRXP_ENEMY_Magregan Deepshadow|r
    *Find Hammertoe's Amulet and return it to him in Uldaman.
    .complete 722,1 --Amulet of Secrets
    .mob Magregan Deepshadow
step
    .goto 1432,48.86,54.23
    >>Collect |cRXP_LOOT_[Silver Bar]|r from |cRXP_PICK_Battered Chest|r, |cRXP_PICK_Tattered Chest|r
    *Bring five silver bars to Talvash del Kissel in Ironforge.
    .complete 2199,1 --Lore for a Price
step
    #completewith next
    +|cRXP_WARN_Run the dungeon (run 2)|r
step
    .goto 1418,44.6,12.1
    >>Inside Uldaman: these quests start from a drop or an object in the dungeon
    .accept 2240 >>Accept The Hidden Chamber
    .accept 2279 >>Accept The Platinum Discs
step
    .goto 1418,44.6,12.1
    >>Enter |cRXP_WARN_Uldaman|r and run it with a group. Quest goals inside:
    *The Hidden Chamber: Read Baelog's Journal, explore the hidden chamber, then report to Prospector Stormpike.
    .complete 2240,1 --The Hidden Chamber
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1432,37.28,85.78
    >>Talk to |cRXP_FRIENDLY_Hammertoe Grez|r
    .turnin 722 >>Turn in Amulet of Secrets
    .target Hammertoe Grez
step
    .goto 1455,36.38,3.61
    >>Talk to |cRXP_FRIENDLY_Talvash del Kissel|r
    .turnin 2199 >>Turn in Lore for a Price
    .target Talvash del Kissel
step
    .goto 1455,69.93,18.55
    >>Talk to |cRXP_FRIENDLY_High Explorer Magellas|r
    .turnin 2279 >>Turn in The Platinum Discs
    .target High Explorer Magellas
step
    .goto 1455,74.64,11.74
    >>Talk to |cRXP_FRIENDLY_Prospector Stormpike|r
    .turnin 2240 >>Turn in The Hidden Chamber
    .target Prospector Stormpike
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1455,36.38,3.61
    >>Talk to |cRXP_FRIENDLY_Talvash del Kissel|r
    .accept 2200 >>Accept Back to Uldaman
    .target Talvash del Kissel
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1455,36.38,3.61
    >>Talk to |cRXP_FRIENDLY_Talvash del Kissel|r
    .turnin 2200 >>Turn in Back to Uldaman
    .target Talvash del Kissel
step
    #completewith next
    +|cRXP_WARN_Run the dungeon (run 3)|r
step
    .goto 1418,44.6,12.1
    >>Inside Uldaman: these quests start from a drop or an object in the dungeon
    .accept 2201 >>Accept Find the Gems
step
    .goto 1418,44.6,12.1
    >>Enter |cRXP_WARN_Uldaman|r and run it with a group. Quest goals inside:
    *Find the Gems: Find the ruby, sapphire, and topaz that are scattered throughout Uldaman. Once acquired, contact Talvash del Kissel remotely by using the Phial of Scrying he previously gave you.
    .complete 2201,1 --Find the Gems
    .complete 2201,2 --Find the Gems
    .complete 2201,3 --Find the Gems
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1418,44.6,12.1
    >>Inside Uldaman: these quests start from a drop or an object in the dungeon
    .turnin 2201 >>Turn in Find the Gems
step
    >>|cRXP_WARN_Also part of this dungeon (later follow-ups or missing data). Do them if they are offered:|r
    *Restoring the Necklace
    *Restoring the Necklace
    +Done
step
    .goto 1418,44.6,12.1
    +Dungeon entrance: Uldaman. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 40-49
#name 44-54 Zul'Farrak
#displayname 44-54 Zul'Farrak
#next 46-55 Maraudon
step
    +|cRXP_WARN_Zul'Farrak|r (levels 44-54). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *Pre-quests in this guide: Witherbark Cages, The Altar of Zul, Thadius Grimshade, Screecher Spirits
step
    #completewith next
    +|cRXP_WARN_Pre-quests|r
step
    .goto 1446,66.99,22.36
    >>Talk to |cRXP_FRIENDLY_Yeh'kinya|r
    .accept 3520 >>Accept Screecher Spirits
    .target Yeh'kinya
step
    >>Kill |cRXP_ENEMY_Screecher Spirit|r
    *Capture the spirits of 3 screechers in Feralas, then return to Yeh'kinya in Steamwheedle Port.
    .complete 3520,1 --Screecher Spirits
    .mob Screecher Spirit
step
    .goto 1446,66.99,22.36
    >>Talk to |cRXP_FRIENDLY_Yeh'kinya|r
    .turnin 3520 >>Turn in Screecher Spirits
    .target Yeh'kinya
step
    .goto 1425,9.75,44.47
    >>Talk to |cRXP_FRIENDLY_Gryphon Master Talonaxe|r
    .accept 2988 >>Accept Witherbark Cages
    .target Gryphon Master Talonaxe
step
    .goto 1425,23.28,58.81
    >>Click |cRXP_PICK_First Witherbark Cage|r. Click |cRXP_PICK_Second Witherbark Cage|r. Click |cRXP_PICK_Third Witherbark Cage|r
    *Check the cages at the two Witherbark villages, then return to Gryphon Master Talonaxe.
    .complete 2988,1 --Witherbark Cages
    .complete 2988,2 --Witherbark Cages
    .complete 2988,3 --Witherbark Cages
step
    .goto 1425,9.75,44.47
    >>Talk to |cRXP_FRIENDLY_Gryphon Master Talonaxe|r
    .turnin 2988 >>Turn in Witherbark Cages
    .accept 2989 >>Accept The Altar of Zul
    .target Gryphon Master Talonaxe
step
    .goto 1425,48.98,68.66
    >>Search the Altar of Zul
    *Check the top of the Altar of Zul, then return to Gryphon Master Talonaxe.
    .complete 2989,1 --The Altar of Zul
step
    .goto 1425,9.75,44.47
    >>Talk to |cRXP_FRIENDLY_Gryphon Master Talonaxe|r
    .turnin 2989 >>Turn in The Altar of Zul
    .accept 2990 >>Accept Thadius Grimshade
    .target Gryphon Master Talonaxe
step
    .goto 1419,66.9,19.47
    >>Talk to |cRXP_FRIENDLY_Thadius Grimshade|r
    .turnin 2990 >>Turn in Thadius Grimshade
    .target Thadius Grimshade
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1419,66.9,19.47
    >>Talk to |cRXP_FRIENDLY_Thadius Grimshade|r
    .accept 2991 >>Accept Nekrum's Medallion
    .target Thadius Grimshade
step
    .goto 1446,52.46,28.51
    >>Talk to |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r
    .accept 2768 >>Accept Divino-matic Rod
    .target Chief Engineer Bilgewhizzle
step
    .goto 1446,51.41,28.75
    >>Talk to |cRXP_FRIENDLY_Trenton Lighthammer|r
    .accept 3042 >>Accept Troll Temper
    .target Trenton Lighthammer
step
    .goto 1446,66.99,22.36
    >>Talk to |cRXP_FRIENDLY_Yeh'kinya|r
    .accept 3527 >>Accept The Prophecy of Mosh'aru
    .target Yeh'kinya
step
    .goto 1441,78.14,77.12
    >>Talk to |cRXP_FRIENDLY_Wizzle Brassbolts|r
    .accept 2770 >>Accept Gahz'rilla
    .target Wizzle Brassbolts
step
    .goto 1445,46.06,57.09
    >>Talk to |cRXP_FRIENDLY_Tabetha|r
    .accept 2846 >>Accept Tiara of the Deep
    .target Tabetha
step
    .goto 1455,27.25,8.3
    >>Talk to |cRXP_FRIENDLY_Bink|r
    .accept 2861 >>Accept Tabetha's Task
    .target Bink
step
    .goto 1434,26.94,77.21
    >>Talk to |cRXP_FRIENDLY_Krazek|r
    .accept 2864 >>Accept Tran'rek
    .target Krazek
step
    .goto 1416,15.3,73.93
    >>Talk to |cRXP_FRIENDLY_Archmage Lan'dalock|r
    .accept 96770 >>Accept The Witch Doctor's Head
    .target Archmage Lan'dalock
step
    #completewith next
    +|cRXP_WARN_Run the dungeon|r
step
    .goto 1446,38.7,20.1
    >>Enter |cRXP_WARN_Zul'Farrak|r and run it with a group. Quest goals inside:
    *Divino-matic Rod: Bring the Divino-matic Rod to Chief Engineer Bilgewhizzle in Gadgetzan.
    *Gahz'rilla: Bring Gahz'rilla's Electrified Scale to Wizzle Brassbolts in the Shimmering Flats.
    *Tiara of the Deep: Bring the Tiara of the Deep to Tabetha in Dustwallow Marsh.
    *Nekrum's Medallion: Bring Nekrum's Medallion to Thadius Grimshade in the Blasted Lands.
    *Troll Temper: Bring 20 Vials of Troll Temper to Trenton Lighthammer in Gadgetzan.
    *The Prophecy of Mosh'aru: Bring the First and Second Mosh'aru Tablets to Yeh'kinya in Tanaris.
    *The Witch Doctor's Head: Slay Witch Doctor Zum'rah and bring Zum'rah's Head to Archmage Lan'dalock in Dalaran.
    .complete 2768,1 --Divino-matic Rod
    .complete 2770,1 --Gahz'rilla
    .complete 2846,1 --Tiara of the Deep
    .complete 2991,1 --Nekrum's Medallion
    .complete 3042,1 --Troll Temper
    .complete 3527,1 --The Prophecy of Mosh'aru
    .complete 3527,2 --The Prophecy of Mosh'aru
    .complete 96770,1 --The Witch Doctor's Head
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1446,51.57,26.76
    >>Talk to |cRXP_FRIENDLY_Tran'rek|r
    .turnin 2864 >>Turn in Tran'rek
    .target Tran'rek
step
    .goto 1446,52.46,28.51
    >>Talk to |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r
    .turnin 2768 >>Turn in Divino-matic Rod
    .target Chief Engineer Bilgewhizzle
step
    .goto 1446,51.41,28.75
    >>Talk to |cRXP_FRIENDLY_Trenton Lighthammer|r
    .turnin 3042 >>Turn in Troll Temper
    .target Trenton Lighthammer
step
    .goto 1446,66.99,22.36
    >>Talk to |cRXP_FRIENDLY_Yeh'kinya|r
    .turnin 3527 >>Turn in The Prophecy of Mosh'aru
    .target Yeh'kinya
step
    .goto 1441,78.14,77.12
    >>Talk to |cRXP_FRIENDLY_Wizzle Brassbolts|r
    .turnin 2770 >>Turn in Gahz'rilla
    .target Wizzle Brassbolts
step
    .goto 1445,46.06,57.09
    >>Talk to |cRXP_FRIENDLY_Tabetha|r
    .turnin 2846 >>Turn in Tiara of the Deep
    .turnin 2861 >>Turn in Tabetha's Task
    .target Tabetha
step
    .goto 1419,66.9,19.47
    >>Talk to |cRXP_FRIENDLY_Thadius Grimshade|r
    .turnin 2991 >>Turn in Nekrum's Medallion
    .target Thadius Grimshade
step
    .goto 1416,15.3,73.93
    >>Talk to |cRXP_FRIENDLY_Archmage Lan'dalock|r
    .turnin 96770 >>Turn in The Witch Doctor's Head
    .target Archmage Lan'dalock
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1446,51.57,26.76
    >>Talk to |cRXP_FRIENDLY_Tran'rek|r
    .accept 2865 >>Accept Scarab Shells
    .target Tran'rek
step
    #completewith next
    +|cRXP_WARN_Run the dungeon (run 2)|r
step
    .goto 1446,38.7,20.1
    >>Enter |cRXP_WARN_Zul'Farrak|r and run it with a group. Quest goals inside:
    *Scarab Shells: Bring 5 Uncracked Scarab Shells to Tran'rek in Gadgetzan.
    .complete 2865,1 --Scarab Shells
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1446,51.57,26.76
    >>Talk to |cRXP_FRIENDLY_Tran'rek|r
    .turnin 2865 >>Turn in Scarab Shells
    .target Tran'rek
step
    .goto 1446,38.7,20.1
    +Dungeon entrance: Zul'Farrak. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 40-49
#name 46-55 Maraudon
#displayname 46-55 Maraudon
#next 48-53 Alcaz Prison
step
    +|cRXP_WARN_Maraudon|r (levels 46-55). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *Pre-quests in this guide: Strange Pylons, A Brief History Lesson, Forlorn Gardens, Meeting the Magister, Word of the Woods, Fragments of the Pylons, Powering the Pylons
step
    #completewith next
    +|cRXP_WARN_Pre-quests|r
step
    .goto 2652,43.64,34.3
    >>Click the |cRXP_PICK_Shen'dralar Pylon|r
    .accept 92914 >>Accept Strange Pylons
step
    .goto 2652,47.46,76.58
    >>Temple pylon found
    *Explore Shen'dralas in an effort to find other pylons like the one you found.
    .complete 92914,1 --Strange Pylons
step
    .goto 2652,35.17,46.61
    >>Talk to |cRXP_FRIENDLY_Mordent Evenshade|r
    .turnin 92914 >>Turn in Strange Pylons
    .accept 96010 >>Accept Fragments of the Pylons
    .target Mordent Evenshade
step
    >>Collect |cRXP_LOOT_[Pylon Fragment]|r. Collect |cRXP_LOOT_[Pylon Shard]|r
    *Recover shards and fragments of the pylons, found guarded at the Magram and Gelkis villages. Return them to Mordent Evenshade.
    .complete 96010,1 --Fragments of the Pylons
    .complete 96010,2 --Fragments of the Pylons
step
    .goto 2652,35.17,46.61
    >>Talk to |cRXP_FRIENDLY_Mordent Evenshade|r
    .turnin 96010 >>Turn in Fragments of the Pylons
    .accept 96018 >>Accept Powering the Pylons
    .target Mordent Evenshade
step
    .goto 2652,35.17,46.61
    >>Talk to |cRXP_FRIENDLY_Mordent Evenshade|r
    .turnin 96018 >>Turn in Powering the Pylons
    .accept 93016 >>Accept A Brief History Lesson
    .target Mordent Evenshade
step
    .goto 2652,35.17,46.61
    >>Talk to |cRXP_FRIENDLY_Mordent Evenshade|r
    .turnin 93016 >>Turn in A Brief History Lesson
    .accept 93394 >>Accept Meeting the Magister
    .target Mordent Evenshade
step
    .goto 2652,47.37,76.46
    >>Talk to |cRXP_FRIENDLY_Magister Kirandis|r
    .turnin 93394 >>Turn in Meeting the Magister
    .target Magister Kirandis
step
    .goto 2652,53.32,76.02
    >>Talk to |cRXP_FRIENDLY_Mithera|r
    .accept 93341 >>Accept Forlorn Gardens
    .target Mithera
step
    .goto 2652,70.21,79.71
    >>Pedestal examined
    *Investigate the Forlorn Gardens near Shen'dralas and then return to Mithera at the nearby temple.
    .complete 93341,1 --Forlorn Gardens
step
    .goto 2652,53.32,76.02
    >>Talk to |cRXP_FRIENDLY_Mithera|r
    .turnin 93341 >>Turn in Forlorn Gardens
    .accept 93594 >>Accept Word of the Woods
    .target Mithera
step
    .goto 2652,69.66,71.78
    >>Talk to |cRXP_FRIENDLY_Woodwyrd|r
    .turnin 93594 >>Turn in Word of the Woods
    .target Woodwyrd
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 2652,69.66,71.78
    >>Talk to |cRXP_FRIENDLY_Woodwyrd|r
    .accept 93404 >>Accept Rot and Regret
    .target Woodwyrd
step
    .goto 1443,62.2,39.63
    >>Talk to |cRXP_FRIENDLY_Willow|r
    .accept 7028 >>Accept Twisted Evils
    .target Willow
step
    .goto 1443,63.83,10.67
    >>Talk to |cRXP_FRIENDLY_Keeper Marandis|r
    .accept 7065 >>Accept Corruption of Earth and Seed
    .target Keeper Marandis
step
    .goto 1443,68.5,8.88
    >>Talk to |cRXP_FRIENDLY_Talendria|r
    .accept 7041 >>Accept Vyletongue Corruption
    .target Talendria
step
    .goto 1443,32.1,63.96
    >>Talk to |cRXP_FRIENDLY_Cavindra|r
    .accept 7044 >>Accept Legends of Maraudon
    .target Cavindra
step
    .goto 1443,50.42,86.65
    >>Talk to |cRXP_FRIENDLY_Centaur Pariah|r
    .accept 7067 >>Accept The Pariah's Instructions
    .target Centaur Pariah
step
    .goto 1445,66.42,49.26
    >>Talk to |cRXP_FRIENDLY_Archmage Tervosh|r
    .accept 7070 >>Accept Shadowshard Fragments
    .target Archmage Tervosh
step
    .goto 1443,28.38,54.4
    >>Collect |cRXP_LOOT_[Shadowshard Fragment]|r from |cRXP_ENEMY_Shadowshard Thunderer|r, |cRXP_ENEMY_Shadowshard Smasher|r
    *Collect 10 Shadowshard Fragments from Maraudon and return them to Archmage Tervosh in Theramore on the coast of Dustwallow Marsh.
    .complete 7070,1 --Shadowshard Fragments
    .mob Shadowshard Thunderer
    .mob Shadowshard Smasher
step
    .goto 2652,69.66,71.78
    >>Kill |cRXP_ENEMY_Woodwyrd|r
    *Venture to Maraudon and recover a Vial of Earth Song Water and return it to Woodwyrd at the Forlorn Gardens in Desolace.
    *|cRXP_WARN_Elite targets here. Group up or skip.|r
    .complete 93404,1 --Rot and Regret
    .mob Woodwyrd
step
    #completewith next
    +|cRXP_WARN_Run the dungeon|r
step
    .goto 1443,29.1,62.5
    >>Inside Maraudon: these quests start from a drop or an object in the dungeon
    .accept 7066 >>Accept Seed of Life
step
    .goto 1443,29.1,62.5
    >>Enter |cRXP_WARN_Maraudon|r and run it with a group. Quest goals inside:
    *Twisted Evils: Collect 15 Theradric Crystal Carvings for Willow in Desolace.
    *Vyletongue Corruption: Fill the Coated Cerulean Vial at the orange crystal pool in Maraudon.
    *Legends of Maraudon: Recover the two parts of the Scepter of Celebras: the Celebrian Rod and the Celebrian Diamond.
    *Corruption of Earth and Seed: Slay Princess Theradras and return to Keeper Marandis at Nijel's Point in Desolace.
    *The Pariah's Instructions: Read the Pariah's Instructions. Afterwards, obtain the Amulet of Union from Maraudon and return it to the Centaur Pariah in southern Desolace.
    *Rot and Regret: Venture to Maraudon and recover a Vial of Earth Song Water and return it to Woodwyrd at the Forlorn Gardens in Desolace.
    .complete 7028,1 --Twisted Evils
    .complete 7041,1 --Vyletongue Corruption
    .complete 7041,2 --Vyletongue Corruption
    .complete 7044,1 --Legends of Maraudon
    .complete 7044,2 --Legends of Maraudon
    .complete 7065,1 --Corruption of Earth and Seed
    .complete 7067,1 --The Pariah's Instructions
    .complete 93404,2 --Rot and Regret
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1443,32.1,63.96
    >>Talk to |cRXP_FRIENDLY_Cavindra|r
    .turnin 7044 >>Turn in Legends of Maraudon
    .target Cavindra
step
    .goto 1443,50.42,86.65
    >>Talk to |cRXP_FRIENDLY_Centaur Pariah|r
    .turnin 7067 >>Turn in The Pariah's Instructions
    .target Centaur Pariah
step
    .goto 1443,62.2,39.63
    >>Talk to |cRXP_FRIENDLY_Willow|r
    .turnin 7028 >>Turn in Twisted Evils
    .target Willow
step
    .goto 1443,63.83,10.67
    >>Talk to |cRXP_FRIENDLY_Keeper Marandis|r
    .turnin 7065 >>Turn in Corruption of Earth and Seed
    .target Keeper Marandis
step
    .goto 1443,68.5,8.88
    >>Talk to |cRXP_FRIENDLY_Talendria|r
    .turnin 7041 >>Turn in Vyletongue Corruption
    .target Talendria
step
    .goto 1450,36.18,41.79
    >>Talk to |cRXP_FRIENDLY_Keeper Remulos|r
    .turnin 7066 >>Turn in Seed of Life
    .target Keeper Remulos
step
    .goto 1445,66.42,49.26
    >>Talk to |cRXP_FRIENDLY_Archmage Tervosh|r
    .turnin 7070 >>Turn in Shadowshard Fragments
    .target Archmage Tervosh
step
    .goto 2652,69.66,71.78
    >>Talk to |cRXP_FRIENDLY_Woodwyrd|r
    .turnin 93404 >>Turn in Rot and Regret
    .target Woodwyrd
step
    #completewith next
    +|cRXP_WARN_Run the dungeon (run 2)|r
step
    .goto 1443,29.1,62.5
    >>Inside Maraudon: these quests start from a drop or an object in the dungeon
    .accept 7046 >>Accept The Scepter of Celebras
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1443,29.1,62.5
    >>Inside Maraudon: these quests start from a drop or an object in the dungeon
    .turnin 7046 >>Turn in The Scepter of Celebras
step
    .goto 1443,29.1,62.5
    +Dungeon entrance: Maraudon. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 40-49
#name 48-53 Alcaz Prison
#displayname 48-53 Alcaz Prison
#next 50-60 The Temple of Atal'Hakkar
step
    +|cRXP_WARN_Alcaz Prison|r (levels 48-53). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *New Forever dungeon on Alcaz Island off Dustwallow Marsh. The portal is in the basement of the big central keep. Elite naga patrol the climb up.
    *Pre-quests in this guide: Watch Yer Back, The Return of the King?
step
    #completewith next
    +|cRXP_WARN_Pre-quests|r
step
    .goto 1445,66.21,45.08
    >>Talk to |cRXP_FRIENDLY_Sully McCleary|r
    .accept 95196 >>Accept Watch Yer Back
    .target Sully McCleary
step
    .goto 1445,63.45,42.33
    >>Talk to |cRXP_FRIENDLY_Sully McCleary|r
    .turnin 95196 >>Turn in Watch Yer Back
    .accept 95198 >>Accept The Return of the King?
    .target Sully McCleary
step
    .goto 1445,63.45,42.33
    >>Talk to |cRXP_FRIENDLY_Sully McCleary|r
    .turnin 95198 >>Turn in The Return of the King?
    .target Sully McCleary
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1445,63.45,42.33
    >>Talk to |cRXP_FRIENDLY_Sully McCleary|r
    .accept 95262 >>Accept The Secret Prison
    .accept 96381 >>Accept A Bit of Wet Work
    .target Sully McCleary
step
    .goto 1453,78.31,70.74
    >>Talk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .accept 95194 >>Accept Our Man in Theramore
    .target Master Mathias Shaw
step
    .goto 1453,78.29,71.14
    >>Talk to |cRXP_FRIENDLY_Renzik "The Shiv"|r
    .accept 96377 >>Accept State Secrets
    .target Renzik "The Shiv"
step
    .goto 1434,28.51,75.78
    >>Talk to |cRXP_FRIENDLY_Rix Xizzix|r
    .accept 96379 >>Accept State Secrets
    .target Rix Xizzix
step
    .goto 1416,15.3,73.93
    >>Talk to |cRXP_FRIENDLY_Archmage Lan'dalock|r
    .accept 96772 >>Accept The Dragon's Journal
    .target Archmage Lan'dalock
step
    #completewith next
    +|cRXP_WARN_Run the dungeon|r
step
    .goto 1445,75,15
    >>Inside Alcaz Prison: these quests start from a drop or an object in the dungeon
    .accept 96335 >>Accept The Man in the Iron Chains
step
    .goto 1445,75,15
    >>Enter |cRXP_WARN_Alcaz Prison|r and run it with a group. Quest goals inside:
    *The Man in the Iron Chains: Recover the Alcaz Shackle Key from The Questioner in Alcaz Prison.
    *State Secrets
    *The Dragon's Journal: Recover Zarla's Journal from the depths of Alcaz Prison.
    .complete 96335,1 --The Man in the Iron Chains
    .complete 96377,1 --State Secrets
    .complete 96772,1 --The Dragon's Journal
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1445,75,15
    >>Inside Alcaz Prison: these quests start from a drop or an object in the dungeon
    .turnin 96335 >>Turn in The Man in the Iron Chains
step
    .goto 1445,63.45,42.33
    >>Talk to |cRXP_FRIENDLY_Sully McCleary|r
    .turnin 95262 >>Turn in The Secret Prison
    .turnin 96381 >>Turn in A Bit of Wet Work
    .target Sully McCleary
step
    .goto 1445,66.21,45.08
    >>Talk to |cRXP_FRIENDLY_Sully McCleary|r
    .turnin 95194 >>Turn in Our Man in Theramore
    .target Sully McCleary
step
    .goto 1453,78.29,71.14
    >>Talk to |cRXP_FRIENDLY_Renzik "The Shiv"|r
    .turnin 96377 >>Turn in State Secrets
    .target Renzik "The Shiv"
step
    .goto 1434,28.51,75.78
    >>Talk to |cRXP_FRIENDLY_Rix Xizzix|r
    .turnin 96379 >>Turn in State Secrets
    .target Rix Xizzix
step
    .goto 1416,15.3,73.93
    >>Talk to |cRXP_FRIENDLY_Archmage Lan'dalock|r
    .turnin 96772 >>Turn in The Dragon's Journal
    .target Archmage Lan'dalock
step
    #completewith next
    +|cRXP_WARN_Run the dungeon (run 2)|r
step
    .goto 1445,75,15
    >>Inside Alcaz Prison: these quests start from a drop or an object in the dungeon
    .accept 95263 >>Accept Somber News
    .accept 96337 >>Accept More Valuable Than Gold
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1445,63.45,42.33
    >>Talk to |cRXP_FRIENDLY_Sully McCleary|r
    .turnin 95263 >>Turn in Somber News
    .target Sully McCleary
step
    .goto 1436,43.42,67.89
    >>Click the |cRXP_PICK_Connery's Trunk|r
    .turnin 96337 >>Turn in More Valuable Than Gold
step
    .goto 1445,75,15
    +Dungeon entrance: Alcaz Prison. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 50-60
#name 50-60 The Temple of Atal'Hakkar
#displayname 50-60 The Temple of Atal'Hakkar
#next 52-60 Blackrock Depths
step
    +|cRXP_WARN_The Temple of Atal'Hakkar|r (levels 50-60). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *Pre-quests in this guide: In Search of The Temple, To The Hinterlands, Gryphon Master Talonaxe, Rhapsody Shindigger, Rhapsody's Kalimdor Kocktail, Rhapsody's Tale, The Stone Circle, The Sunken Temple, Screecher Spirits, The Prophecy of Mosh'aru, The Ancient Egg
step
    #completewith next
    +|cRXP_WARN_Pre-quests|r
step
    .goto 1446,66.99,22.36
    >>Talk to |cRXP_FRIENDLY_Yeh'kinya|r
    .accept 3520 >>Accept Screecher Spirits
    .target Yeh'kinya
step
    >>Kill |cRXP_ENEMY_Screecher Spirit|r
    *Capture the spirits of 3 screechers in Feralas, then return to Yeh'kinya in Steamwheedle Port.
    .complete 3520,1 --Screecher Spirits
    .mob Screecher Spirit
step
    .goto 1446,66.99,22.36
    >>Talk to |cRXP_FRIENDLY_Yeh'kinya|r
    .turnin 3520 >>Turn in Screecher Spirits
    .accept 3527 >>Accept The Prophecy of Mosh'aru
    .target Yeh'kinya
step
    >>Collect |cRXP_LOOT_[First Mosh'aru Tablet]|r from |cRXP_ENEMY_Theka the Martyr Shapeshift|r, |cRXP_ENEMY_Theka the Martyr Shapeshift|r. Collect |cRXP_LOOT_[Second Mosh'aru Tablet]|r from |cRXP_ENEMY_Hydromancer Velratha|r
    *Bring the First and Second Mosh'aru Tablets to Yeh'kinya in Tanaris.
    .complete 3527,1 --The Prophecy of Mosh'aru
    .complete 3527,2 --The Prophecy of Mosh'aru
    .mob Theka the Martyr Shapeshift
    .mob Hydromancer Velratha
step
    .goto 1446,66.99,22.36
    >>Talk to |cRXP_FRIENDLY_Yeh'kinya|r
    .turnin 3527 >>Turn in The Prophecy of Mosh'aru
    .accept 4787 >>Accept The Ancient Egg
    .target Yeh'kinya
step
    .goto 1453,69.45,40.4
    >>Talk to |cRXP_FRIENDLY_Brohann Caskbelly|r
    .accept 1448 >>Accept In Search of The Temple
    .target Brohann Caskbelly
step
    .goto 1444,31.83,45.61
    >>Talk to |cRXP_FRIENDLY_Angelas Moonbreeze|r
    .accept 3445 >>Accept The Sunken Temple
    .target Angelas Moonbreeze
step
    .goto 1446,52.71,45.92
    >>Talk to |cRXP_FRIENDLY_Marvon Rivetseeker|r
    .turnin 3445 >>Turn in The Sunken Temple
    .accept 3444 >>Accept The Stone Circle
    .target Marvon Rivetseeker
step
    .goto 1435,70.01,52.88
    >>Search for the Temple of Atal'Hakkar
    *Brohann Caskbelly in Stormwind wants you to search for the Temple of Atal'Hakkar.
    .complete 1448,1 --In Search of The Temple
step
    .goto 1453,69.45,40.4
    >>Talk to |cRXP_FRIENDLY_Brohann Caskbelly|r
    .turnin 1448 >>Turn in In Search of The Temple
    .accept 1449 >>Accept To The Hinterlands
    .target Brohann Caskbelly
step
    .goto 1425,11.81,46.76
    >>Talk to |cRXP_FRIENDLY_Falstad Wildhammer|r
    .turnin 1449 >>Turn in To The Hinterlands
    .accept 1450 >>Accept Gryphon Master Talonaxe
    .target Falstad Wildhammer
step
    .goto 1425,9.75,44.47
    >>Talk to |cRXP_FRIENDLY_Gryphon Master Talonaxe|r
    .turnin 1450 >>Turn in Gryphon Master Talonaxe
    .accept 1451 >>Accept Rhapsody Shindigger
    .target Gryphon Master Talonaxe
step
    .goto 1425,26.94,48.59
    >>Talk to |cRXP_FRIENDLY_Rhapsody Shindigger|r
    .turnin 1451 >>Turn in Rhapsody Shindigger
    .accept 1452 >>Accept Rhapsody's Kalimdor Kocktail
    .target Rhapsody Shindigger
step
    .goto 1425,57.58,86.79
    >>Collect |cRXP_LOOT_[Ancient Egg]|r from |cRXP_PICK_Ancient Egg|r
    *Bring the Ancient Egg to Yeh'kinya in Tanaris.
    .complete 4787,1 --The Ancient Egg
step
    .goto 1446,66.99,22.36
    >>Talk to |cRXP_FRIENDLY_Yeh'kinya|r
    .turnin 4787 >>Turn in The Ancient Egg
    .target Yeh'kinya
step
    .goto 1446,48.23,41.35
    >>Collect |cRXP_LOOT_[Roc Gizzard]|r from |cRXP_ENEMY_Roc|r, |cRXP_ENEMY_Fire Roc|r, |cRXP_ENEMY_Searing Roc|r
    *Rhapsody Shindigger in The Hinterlands wants you to bring him 3 Roc Gizzards, 3 Groddoc Livers and 3 Ironfur Livers.
    .complete 1452,1 --Rhapsody's Kalimdor Kocktail
    .mob Roc
    .mob Fire Roc
step
    .goto 1413,62.5,38.54
    >>Collect |cRXP_LOOT_[Stone Circle]|r from |cRXP_PICK_Marvon's Chest|r
    *Retrieve the Stone Circle from Marvon Rivetseeker's workshop in Ratchet.
    .complete 3444,1 --The Stone Circle
step
    .goto 1446,52.71,45.92
    >>Talk to |cRXP_FRIENDLY_Marvon Rivetseeker|r
    .turnin 3444 >>Turn in The Stone Circle
    .target Marvon Rivetseeker
step
    .goto 1444,83.31,42.46
    >>Collect |cRXP_LOOT_[Ironfur Liver]|r from |cRXP_ENEMY_Ironfur Bear|r, |cRXP_ENEMY_Grizzled Ironfur Bear|r, |cRXP_ENEMY_Ironfur Patriarch|r
    *Rhapsody Shindigger in The Hinterlands wants you to bring him 3 Roc Gizzards, 3 Groddoc Livers and 3 Ironfur Livers.
    .complete 1452,2 --Rhapsody's Kalimdor Kocktail
    .mob Ironfur Bear
    .mob Grizzled Ironfur Bear
step
    .goto 1444,41.78,21.58
    >>Collect |cRXP_LOOT_[Groddoc Liver]|r from |cRXP_ENEMY_Groddoc Chestpounder|r, |cRXP_ENEMY_Groddoc Thunderer|r
    *Rhapsody Shindigger in The Hinterlands wants you to bring him 3 Roc Gizzards, 3 Groddoc Livers and 3 Ironfur Livers.
    .complete 1452,3 --Rhapsody's Kalimdor Kocktail
    .mob Groddoc Chestpounder
    .mob Groddoc Thunderer
step
    .goto 1425,26.94,48.59
    >>Talk to |cRXP_FRIENDLY_Rhapsody Shindigger|r
    .turnin 1452 >>Turn in Rhapsody's Kalimdor Kocktail
    .accept 1469 >>Accept Rhapsody's Tale
    .target Rhapsody Shindigger
step
    .goto 1453,69.45,40.4
    >>Talk to |cRXP_FRIENDLY_Brohann Caskbelly|r
    .turnin 1469 >>Turn in Rhapsody's Tale
    .target Brohann Caskbelly
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1453,69.45,40.4
    >>Talk to |cRXP_FRIENDLY_Brohann Caskbelly|r
    .accept 1475 >>Accept Into The Temple of Atal'Hakkar
    .target Brohann Caskbelly
step
    .goto 1425,33.75,75.21
    >>Talk to |cRXP_FRIENDLY_Atal'ai Exile|r
    .accept 1446 >>Accept Jammal'an the Prophet
    .target Atal'ai Exile
step
    .goto 1446,52.71,45.92
    >>Talk to |cRXP_FRIENDLY_Marvon Rivetseeker|r
    .accept 3446 >>Accept Into the Depths
    .accept 3447 >>Accept Secret of the Circle
    .target Marvon Rivetseeker
step
    .goto 1446,66.99,22.36
    >>Talk to |cRXP_FRIENDLY_Yeh'kinya|r
    .accept 3528 >>Accept The God Hakkar
    .target Yeh'kinya
step
    #completewith next
    +|cRXP_WARN_Run the dungeon|r
step
    .goto 1435,69.9,53.5
    >>Loot |cRXP_LOOT_[Essence of Eranikus]|r from |cRXP_ENEMY_Shade of Eranikus|r, then click it to start the quest
    .accept 3373 >>Accept The Essence of Eranikus
    .use 10454
    .mob Shade of Eranikus
step
    .goto 1435,69.9,53.5
    >>Inside The Temple of Atal'Hakkar: these quests start from a drop or an object in the dungeon
    .accept 8733 >>Accept Eranikus, Tyrant of the Dream
step
    .goto 1435,69.9,53.5
    >>Enter |cRXP_WARN_The Temple of Atal'Hakkar|r and run it with a group. Quest goals inside:
    *Jammal'an the Prophet: The Atal'ai Exile in The Hinterlands wants the Head of Jammal'an.
    *Into The Temple of Atal'Hakkar: Gather 10 Atal'ai Tablets for Brohann Caskbelly in Stormwind.
    *The God Hakkar: Bring the Filled Egg of Hakkar to Yeh'kinya in Tanaris.
    .complete 1446,1 --Jammal'an the Prophet
    .complete 1475,1 --Into The Temple of Atal'Hakkar
    .complete 3528,1 --The God Hakkar
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1435,69.9,53.5
    >>Loot |cRXP_LOOT_[Essence of Eranikus]|r from |cRXP_ENEMY_Shade of Eranikus|r, then click it to start the quest
    .turnin 3373 >>Turn in The Essence of Eranikus
step
    .goto 1425,33.75,75.21
    >>Talk to |cRXP_FRIENDLY_Atal'ai Exile|r
    .turnin 1446 >>Turn in Jammal'an the Prophet
    .target Atal'ai Exile
step
    .goto 1453,69.45,40.4
    >>Talk to |cRXP_FRIENDLY_Brohann Caskbelly|r
    .turnin 1475 >>Turn in Into The Temple of Atal'Hakkar
    .target Brohann Caskbelly
step
    .goto 1446,52.71,45.92
    >>Talk to |cRXP_FRIENDLY_Marvon Rivetseeker|r
    .turnin 3446 >>Turn in Into the Depths
    .turnin 3447 >>Turn in Secret of the Circle
    .target Marvon Rivetseeker
step
    .goto 1446,66.99,22.36
    >>Talk to |cRXP_FRIENDLY_Yeh'kinya|r
    .turnin 3528 >>Turn in The God Hakkar
    .target Yeh'kinya
step
    .goto 1438,37.55,47.92
    >>Talk to |cRXP_FRIENDLY_Forest Wisp|r
    .turnin 8733 >>Turn in Eranikus, Tyrant of the Dream
    .target Forest Wisp
step
    .goto 1435,69.9,53.5
    +Dungeon entrance: The Temple of Atal'Hakkar. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 50-60
#name 52-60 Blackrock Depths
#displayname 52-60 Blackrock Depths
#next 54-60 Dire Maul
step
    +|cRXP_WARN_Blackrock Depths|r (levels 52-60). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *Pre-quests in this guide: Forging the Shaft, The Flame's Casing, The Torch of Retribution, The Torch of Retribution, Squire Maltrake, Set Them Ablaze!, Trinkets..., The Smoldering Ruins of Thaurissan, The Smoldering Ruins of Thaurissan, A Taste of Flame, Dragonkin Menace, The True Masters...
step
    #completewith next
    +|cRXP_WARN_Pre-quests|r
step
    .goto 1427,39.06,38.99
    >>Talk to |cRXP_FRIENDLY_Kalaran Windblade|r
    .accept 3443 >>Accept Forging the Shaft
    .target Kalaran Windblade
step
    .goto 1427,40.32,36.29
    >>Collect |cRXP_LOOT_[Thorium Plated Dagger]|r from |cRXP_ENEMY_Dark Iron Marksman|r, |cRXP_ENEMY_Dark Iron Steamsmith|r, |cRXP_ENEMY_Slave Worker|r
    *Bring 8 Thorium Plated Daggers to Kalaran Windblade.
    .complete 3443,1 --Forging the Shaft
    .mob Dark Iron Marksman
    .mob Dark Iron Steamsmith
step
    .goto 1427,39.06,38.99
    >>Talk to |cRXP_FRIENDLY_Kalaran Windblade|r
    .turnin 3443 >>Turn in Forging the Shaft
    .accept 3452 >>Accept The Flame's Casing
    .target Kalaran Windblade
step
    .goto 1427,19.65,38.6
    >>Collect |cRXP_LOOT_[Symbol of Ragnaros]|r from |cRXP_ENEMY_Twilight Dark Shaman|r, |cRXP_ENEMY_Twilight Fire Guard|r, |cRXP_ENEMY_Twilight Geomancer|r
    *Find and return a Symbol of Ragnaros to Kalaran Windblade.
    .complete 3452,1 --The Flame's Casing
    .mob Twilight Dark Shaman
    .mob Twilight Fire Guard
step
    .goto 1427,39.06,38.99
    >>Talk to |cRXP_FRIENDLY_Kalaran Windblade|r
    .turnin 3452 >>Turn in The Flame's Casing
    .accept 3453 >>Accept The Torch of Retribution
    .target Kalaran Windblade
step
    .goto 1427,39.06,38.99
    >>Talk to |cRXP_FRIENDLY_Kalaran Windblade|r
    .turnin 3453 >>Turn in The Torch of Retribution
    .accept 3454 >>Accept The Torch of Retribution
    .target Kalaran Windblade
step
    .goto 1427,39.06,39.07
    >>Click the |cRXP_PICK_Torch of Retribution|r
    .turnin 3454 >>Turn in The Torch of Retribution
step
    .goto 1427,39.06,38.99
    >>Talk to |cRXP_FRIENDLY_Kalaran Windblade|r
    .accept 3462 >>Accept Squire Maltrake
    .target Kalaran Windblade
step
    .goto 1427,39.17,39
    >>Talk to |cRXP_FRIENDLY_Squire Maltrake|r
    .turnin 3462 >>Turn in Squire Maltrake
    .accept 3463 >>Accept Set Them Ablaze!
    .target Squire Maltrake
step
    .goto 1427,35.67,60.68
    >>Click |cRXP_PICK_Sentry Brazier|r
    *Set the North, South, East, and West Sentry Towers on fire by using the Torch of Retribution inside each of the buildings.
    .complete 3463,1 --Set Them Ablaze!
    .complete 3463,2 --Set Them Ablaze!
    .complete 3463,4 --Set Them Ablaze!
step
    .goto 1427,50.07,54.74
    >>Click |cRXP_PICK_Sentry Brazier|r
    *Set the North, South, East, and West Sentry Towers on fire by using the Torch of Retribution inside each of the buildings.
    .complete 3463,3 --Set Them Ablaze!
step
    .goto 1427,39.17,39
    >>Talk to |cRXP_FRIENDLY_Squire Maltrake|r
    .turnin 3463 >>Turn in Set Them Ablaze!
    .target Squire Maltrake
step
    .goto 1427,38.85,38.99
    >>Click the |cRXP_PICK_Hoard of the Black Dragonflight|r
    .accept 3481 >>Accept Trinkets...
step
    .goto 1427,38.85,38.99
    >>Click the |cRXP_PICK_Hoard of the Black Dragonflight|r
    .turnin 3481 >>Turn in Trinkets...
step
    .goto 1428,85.82,68.95
    >>Talk to |cRXP_FRIENDLY_Helendis Riverhorn|r
    .accept 4182 >>Accept Dragonkin Menace
    .target Helendis Riverhorn
step
    .goto 1428,85.41,70.06
    >>Talk to |cRXP_FRIENDLY_Jalinda Sprig|r
    .accept 4262 >>Accept Overmaster Pyron
    .target Jalinda Sprig
step
    >>Kill |cRXP_ENEMY_Overmaster Pyron|r
    *Slay Overmaster Pyron and return to Jalinda Sprig.
    *|cRXP_WARN_Elite targets here. Group up or skip.|r
    .complete 4262,1 --Overmaster Pyron
    .mob Overmaster Pyron
step
    .goto 1428,85.41,70.06
    >>Talk to |cRXP_FRIENDLY_Jalinda Sprig|r
    .turnin 4262 >>Turn in Overmaster Pyron
    .target Jalinda Sprig
step
    .goto 1428,95.09,31.56
    >>Talk to |cRXP_FRIENDLY_Cyrus Therepentous|r
    .accept 4022 >>Accept A Taste of Flame
    .target Cyrus Therepentous
step
    .goto 1428,87.8,33.45
    >>Kill |cRXP_ENEMY_Black Broodling|r. Kill |cRXP_ENEMY_Black Dragonspawn|r. Kill |cRXP_ENEMY_Black Wyrmkin|r
    *Slay 15 Black Broodlings, 10 Black Dragonspawn, 4 Black Wyrmkin and 1 Black Drake. Return to Helendis Riverhorn when the task is complete.
    *|cRXP_WARN_Elite targets here. Group up or skip.|r
    .complete 4182,1 --Dragonkin Menace
    .complete 4182,2 --Dragonkin Menace
    .complete 4182,4 --Dragonkin Menace
    .mob Black Broodling
    .mob Black Dragonspawn
    .mob Black Wyrmkin
step
    .goto 1428,89.94,43.86
    >>Kill |cRXP_ENEMY_Black Drake|r
    *Slay 15 Black Broodlings, 10 Black Dragonspawn, 4 Black Wyrmkin and 1 Black Drake. Return to Helendis Riverhorn when the task is complete.
    *|cRXP_WARN_Elite targets here. Group up or skip.|r
    .complete 4182,3 --Dragonkin Menace
    .mob Black Drake
step
    .goto 1428,85.82,68.95
    >>Talk to |cRXP_FRIENDLY_Helendis Riverhorn|r
    .turnin 4182 >>Turn in Dragonkin Menace
    .accept 4183 >>Accept The True Masters
    .target Helendis Riverhorn
step
    .goto 1433,24.9,44.45
    >>Talk to |cRXP_FRIENDLY_Magistrate Solomon|r
    .turnin 4183 >>Turn in The True Masters
    .accept 4184 >>Accept The True Masters
    .target Magistrate Solomon
step
    .goto 1453,80.21,38.35
    >>Talk to |cRXP_FRIENDLY_Highlord Bolvar Fordragon|r
    .turnin 4184 >>Turn in The True Masters
    .accept 4185 >>Accept The True Masters
    .target Highlord Bolvar Fordragon
step
    .goto 1453,80.21,38.35
    >>Talk to |cRXP_FRIENDLY_Highlord Bolvar Fordragon|r
    .turnin 4185 >>Turn in The True Masters
    .accept 4186 >>Accept The True Masters
    .target Highlord Bolvar Fordragon
step
    .goto 1433,24.9,44.45
    >>Talk to |cRXP_FRIENDLY_Magistrate Solomon|r
    .turnin 4186 >>Turn in The True Masters
    .accept 4223 >>Accept The True Masters
    .target Magistrate Solomon
step
    .goto 1428,84.74,69.02
    >>Talk to |cRXP_FRIENDLY_Marshal Maxwell|r
    .turnin 4223 >>Turn in The True Masters
    .accept 4224 >>Accept The True Masters
    .target Marshal Maxwell
step
    .goto 1428,84.74,69.02
    >>Talk to |cRXP_FRIENDLY_Marshal Maxwell|r
    .turnin 4224 >>Turn in The True Masters
    .target Marshal Maxwell
step
    .goto 1455,43.53,52.64
    >>Talk to |cRXP_FRIENDLY_Deliana|r
    .accept 8929 >>Accept In Search of Anthion
    .target Deliana
step
    .goto 1455,38.37,55.31
    >>Talk to |cRXP_FRIENDLY_Royal Historian Archesonus|r
    .accept 3702 >>Accept The Smoldering Ruins of Thaurissan
    .target Royal Historian Archesonus
step
    .goto 1455,38.37,55.31
    >>Talk to |cRXP_FRIENDLY_Royal Historian Archesonus|r
    .turnin 3702 >>Turn in The Smoldering Ruins of Thaurissan
    .accept 3701 >>Accept The Smoldering Ruins of Thaurissan
    .target Royal Historian Archesonus
step
    .goto 1423,26.11,11.3
    >>Talk to |cRXP_FRIENDLY_Anthion Harmon|r
    .turnin 8929 >>Turn in In Search of Anthion
    .accept 8945 >>Accept Dead Man's Plea
    .accept 8947 >>Accept Anthion's Strange Request
    .target Anthion Harmon
step
    >>Kill |cRXP_ENEMY_Ysida Harmon|r. Collect |cRXP_LOOT_[Dark Iron Bar]|r. Collect |cRXP_LOOT_[Enchanted Leather]|r. Collect |cRXP_LOOT_[Mooncloth]|r. Collect |cRXP_LOOT_[Cured Rugged Hide]|r
    *Go into Stratholme and rescue Ysida Harmon from Baron Rivendare.
    *Bring 3 Dark Iron Bars, 20 Enchanted Leather, 3 Mooncloth and 4 Cured Rugged Hides to Anthion Harmon in the Eastern Plaguelands.
    .complete 8945,1 --Dead Man's Plea
    .complete 8947,1 --Anthion's Strange Request
    .complete 8947,2 --Anthion's Strange Request
    .complete 8947,3 --Anthion's Strange Request
    .complete 8947,4 --Anthion's Strange Request
    .mob Ysida Harmon
step
    .goto 1423,26.11,11.3
    >>Talk to |cRXP_FRIENDLY_Anthion Harmon|r
    .turnin 8945 >>Turn in Dead Man's Plea
    .turnin 8947 >>Turn in Anthion's Strange Request
    .accept 8948 >>Accept Anthion's Old Friend
    .target Anthion Harmon
step
    .goto 1423,26.11,11.3
    >>Talk to |cRXP_FRIENDLY_Anthion Harmon|r
    .turnin 8948 >>Turn in Anthion's Old Friend
    .target Anthion Harmon
step
    .goto 1427,42.99,36.43
    >>Collect |cRXP_LOOT_[Black Dragonflight Molt]|r from |cRXP_ENEMY_Dark Iron Taskmaster|r, |cRXP_ENEMY_Heavy War Golem|r, |cRXP_ENEMY_Frenzied Black Drake|r
    *Show Cyrus Therepentous the Black Dragonflight Molt you received from Kalaran Windblade.
    .complete 4022,1 --A Taste of Flame
    .mob Dark Iron Taskmaster
    .mob Heavy War Golem
step
    .goto 1428,95.09,31.56
    >>Talk to |cRXP_FRIENDLY_Cyrus Therepentous|r
    .turnin 4022 >>Turn in A Taste of Flame
    .target Cyrus Therepentous
step
    .goto 1428,62.71,39.6
    >>Click |cRXP_PICK_Thaurissan Relic|r
    *Venture to the Ruins of Thaurissan in the Burning Steppes and recover information from the Thaurissan Relics. Return to Royal Historian Archesonus when you have recovered the information.
    .complete 3701,1 --The Smoldering Ruins of Thaurissan
step
    .goto 1455,38.37,55.31
    >>Talk to |cRXP_FRIENDLY_Royal Historian Archesonus|r
    .turnin 3701 >>Turn in The Smoldering Ruins of Thaurissan
    .target Royal Historian Archesonus
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1455,39.09,56.2
    >>Talk to |cRXP_FRIENDLY_King Magni Bronzebeard|r
    .accept 4341 >>Accept Kharan Mighthammer
    .target King Magni Bronzebeard
step
    .goto 1428,95.09,31.56
    >>Talk to |cRXP_FRIENDLY_Cyrus Therepentous|r
    .accept 4024 >>Accept A Taste of Flame
    .target Cyrus Therepentous
step
    .goto 1428,65.15,23.91
    >>Talk to |cRXP_FRIENDLY_Maxwort Uberglint|r
    .accept 4123 >>Accept The Heart of the Mountain
    .target Maxwort Uberglint
step
    .goto 1428,84.56,68.68
    >>Talk to |cRXP_FRIENDLY_Oralius|r
    .accept 4286 >>Accept The Good Stuff
    .target Oralius
step
    .goto 1428,84.74,69.02
    >>Talk to |cRXP_FRIENDLY_Marshal Maxwell|r
    .accept 4241 >>Accept Marshal Windsor
    .target Marshal Maxwell
step
    .goto 1428,85.41,70.06
    >>Talk to |cRXP_FRIENDLY_Jalinda Sprig|r
    .accept 4263 >>Accept Incendius!
    .target Jalinda Sprig
step
    .goto 1419,63.63,20.63
    >>Talk to |cRXP_FRIENDLY_Enohar Thunderbrew|r
    .accept 4128 >>Accept Ragnar Thunderbrew
    .target Enohar Thunderbrew
step
    .goto 1446,67.04,24.01
    >>Talk to |cRXP_FRIENDLY_Yorba Screwspigot|r
    .accept 4324 >>Accept Yuka Screwspigot
    .target Yorba Screwspigot
step
    #completewith next
    +|cRXP_WARN_Run the dungeon|r
step
    .goto 1427,34.8,85.3
    >>Inside Blackrock Depths: these quests start from a drop or an object in the dungeon
    .accept 3801 >>Accept Dark Iron Legacy
    .accept 4083 >>Accept The Spectral Chalice
    .accept 4201 >>Accept The Love Potion
    .accept 4342 >>Accept Kharan's Tale
    .accept 9015 >>Accept The Challenge
    .accept 82062 >>Accept Ever After
step
    .goto 1427,34.8,85.3
    >>Enter |cRXP_WARN_Blackrock Depths|r and run it with a group. Quest goals inside:
    *A Taste of Flame: Travel to Blackrock Depths and slay Bael'Gar.
    *The Heart of the Mountain: Bring the Heart of the Mountain to Maxwort Uberglint in the Burning Steppes.
    *The Love Potion: Bring 4 Gromsblood, 10 Giant Silver Veins and Nagmara's Filled Vial to Mistress Nagmara in Blackrock Depths.
    *Incendius!: Find Lord Incendius in Blackrock Depths and destroy him!
    *The Good Stuff: Travel to Blackrock Depths and recover 20 Dark Iron Fanny Packs. Return to Oralius when you have completed this task. You assume that the Dark Iron dwarves inside Blackrock Depths carry these 'fanny pack' contraptions.
    *The Challenge: Travel to the Ring of the Law in Blackrock Depths and place the Banner of Provocation in its center as you are sentenced by High Justice Grimstone. Slay Theldren and his gladiators and return to Anthion Harmon in the Eastern Plaguelands with the first piece of Lord Valthalak's amulet.
    .complete 4024,1 --A Taste of Flame
    .complete 4123,1 --The Heart of the Mountain
    .complete 4201,3 --The Love Potion
    .complete 4263,1 --Incendius!
    .complete 4286,1 --The Good Stuff
    .complete 9015,1 --The Challenge
step
    #completewith next
    +|cRXP_WARN_Outside: collect what the quests you got inside need|r
step
    .goto 1427,22.14,39.93
    >>Collect |cRXP_LOOT_[Star Ruby]|r from |cRXP_ENEMY_Rock Elemental|r, |cRXP_ENEMY_Blue Dragonspawn|r, |cRXP_ENEMY_Bloodscalp Hunter|r
    .complete 4083,1 --The Spectral Chalice
    .mob Rock Elemental
    .mob Blue Dragonspawn
step
    .goto 1427,45.46,38.78
    >>Collect |cRXP_LOOT_[Gold Bar]|r from |cRXP_PICK_Battered Chest|r, |cRXP_PICK_Solid Chest|r
    .complete 4083,2 --The Spectral Chalice
step
    .goto 1427,45.46,38.78
    >>Collect |cRXP_LOOT_[Truesilver Bar]|r from |cRXP_PICK_Solid Chest|r, |cRXP_PICK_Solid Chest|r
    .complete 4083,3 --The Spectral Chalice
step
    .goto 1419,59.56,54.64
    >>Collect |cRXP_LOOT_[Gromsblood]|r from |cRXP_ENEMY_Razorlash|r
    *Bring 4 Gromsblood, 10 Giant Silver Veins and Nagmara's Filled Vial to Mistress Nagmara in Blackrock Depths.
    .complete 4201,1 --The Love Potion
    .mob Razorlash
step
    .goto 1447,54.15,81.05
    >>Collect |cRXP_LOOT_[Giant Silver Vein]|r from |cRXP_ENEMY_Cliff Breaker|r, |cRXP_ENEMY_Cliff Thunderer|r, |cRXP_ENEMY_Cliff Walker|r
    *Bring 4 Gromsblood, 10 Giant Silver Veins and Nagmara's Filled Vial to Mistress Nagmara in Blackrock Depths.
    .complete 4201,2 --The Love Potion
    .mob Cliff Breaker
    .mob Cliff Thunderer
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1427,34.8,85.3
    >>Inside Blackrock Depths: these quests start from a drop or an object in the dungeon
    .turnin 3801 >>Turn in Dark Iron Legacy
    .turnin 4083 >>Turn in The Spectral Chalice
    .turnin 4201 >>Turn in The Love Potion
    .turnin 4342 >>Turn in Kharan's Tale
step
    .goto 1428,95.09,31.56
    >>Talk to |cRXP_FRIENDLY_Cyrus Therepentous|r
    .turnin 4024 >>Turn in A Taste of Flame
    .target Cyrus Therepentous
step
    .goto 1428,66.06,21.95
    >>Talk to |cRXP_FRIENDLY_Yuka Screwspigot|r
    .turnin 4324 >>Turn in Yuka Screwspigot
    .target Yuka Screwspigot
step
    .goto 1428,65.15,23.91
    >>Talk to |cRXP_FRIENDLY_Maxwort Uberglint|r
    .turnin 4123 >>Turn in The Heart of the Mountain
    .target Maxwort Uberglint
step
    .goto 1428,35.8,19.8
    >>Talk to |cRXP_FRIENDLY_Rugged Traveler|r
    .turnin 82062 >>Turn in Ever After
    .target Rugged Traveler
step
    .goto 1428,84.56,68.68
    >>Talk to |cRXP_FRIENDLY_Oralius|r
    .turnin 4286 >>Turn in The Good Stuff
    .target Oralius
step
    .goto 1428,84.74,69.02
    >>Talk to |cRXP_FRIENDLY_Marshal Maxwell|r
    .turnin 4241 >>Turn in Marshal Windsor
    .target Marshal Maxwell
step
    .goto 1428,85.41,70.06
    >>Talk to |cRXP_FRIENDLY_Jalinda Sprig|r
    .turnin 4263 >>Turn in Incendius!
    .target Jalinda Sprig
step
    .goto 1426,46.83,52.36
    >>Talk to |cRXP_FRIENDLY_Ragnar Thunderbrew|r
    .turnin 4128 >>Turn in Ragnar Thunderbrew
    .target Ragnar Thunderbrew
step
    .goto 1455,39.09,56.2
    >>Talk to |cRXP_FRIENDLY_King Magni Bronzebeard|r
    .turnin 4341 >>Turn in Kharan Mighthammer
    .target King Magni Bronzebeard
step
    .goto 1423,26.11,11.3
    >>Talk to |cRXP_FRIENDLY_Anthion Harmon|r
    .turnin 9015 >>Turn in The Challenge
    .target Anthion Harmon
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1426,46.83,52.36
    >>Talk to |cRXP_FRIENDLY_Ragnar Thunderbrew|r
    .accept 4126 >>Accept Hurley Blackbreath
    .target Ragnar Thunderbrew
step
    .goto 1428,66.06,21.95
    >>Talk to |cRXP_FRIENDLY_Yuka Screwspigot|r
    .accept 4136 >>Accept Ribbly Screwspigot
    .target Yuka Screwspigot
step
    #completewith next
    +|cRXP_WARN_Run the dungeon (run 2)|r
step
    .goto 1427,34.8,85.3
    >>Inside Blackrock Depths: these quests start from a drop or an object in the dungeon
    .accept 3802 >>Accept Dark Iron Legacy
    .accept 4242 >>Accept Abandoned Hope
    .accept 4361 >>Accept The Bearer of Bad News
step
    .goto 1427,34.8,85.3
    >>Enter |cRXP_WARN_Blackrock Depths|r and run it with a group. Quest goals inside:
    *Dark Iron Legacy: Slay Fineous Darkvire and recover the great hammer, Ironfel. Take Ironfel to the Shrine of Thaurissan and place it on the statue of Franclorn Forgewright.
    *Hurley Blackbreath: Bring the Lost Thunderbrew Recipe to Ragnar Thunderbrew in Kharanos.
    *Ribbly Screwspigot: Bring Ribbly's Head to Yuka Screwspigot in the Burning Steppes.
    .complete 3802,1 --Dark Iron Legacy
    .complete 4126,1 --Hurley Blackbreath
    .complete 4136,1 --Ribbly Screwspigot
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1427,34.8,85.3
    >>Inside Blackrock Depths: these quests start from a drop or an object in the dungeon
    .turnin 3802 >>Turn in Dark Iron Legacy
step
    .goto 1426,46.83,52.36
    >>Talk to |cRXP_FRIENDLY_Ragnar Thunderbrew|r
    .turnin 4126 >>Turn in Hurley Blackbreath
    .target Ragnar Thunderbrew
step
    .goto 1428,66.06,21.95
    >>Talk to |cRXP_FRIENDLY_Yuka Screwspigot|r
    .turnin 4136 >>Turn in Ribbly Screwspigot
    .target Yuka Screwspigot
step
    .goto 1428,84.74,69.02
    >>Talk to |cRXP_FRIENDLY_Marshal Maxwell|r
    .turnin 4242 >>Turn in Abandoned Hope
    .target Marshal Maxwell
step
    .goto 1455,39.09,56.2
    >>Talk to |cRXP_FRIENDLY_King Magni Bronzebeard|r
    .turnin 4361 >>Turn in The Bearer of Bad News
    .target King Magni Bronzebeard
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1455,39.09,56.2
    >>Talk to |cRXP_FRIENDLY_King Magni Bronzebeard|r
    .accept 4362 >>Accept The Fate of the Kingdom
    .target King Magni Bronzebeard
step
    #completewith next
    +|cRXP_WARN_Run the dungeon (run 3)|r
step
    .goto 1427,34.8,85.3
    >>Loot |cRXP_LOOT_[A Crumpled Up Note]|r from |cRXP_ENEMY_Anvilrage Overseer|r, |cRXP_ENEMY_Anvilrage Warden|r, |cRXP_ENEMY_Anvilrage Guardsman|r, then click it to start the quest
    .accept 4264 >>Accept A Crumpled Up Note
    .use 11446
    .mob Anvilrage Overseer
    .mob Anvilrage Warden
step
    .goto 1427,34.8,85.3
    >>Enter |cRXP_WARN_Blackrock Depths|r and run it with a group. Quest goals inside:
    *The Fate of the Kingdom: Return to Blackrock Depths and rescue Princess Moira Bronzebeard from the evil clutches of Emperor Dagran Thaurissan.
    .complete 4362,1 --The Fate of the Kingdom
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1427,34.8,85.3
    >>Loot |cRXP_LOOT_[A Crumpled Up Note]|r from |cRXP_ENEMY_Anvilrage Overseer|r, |cRXP_ENEMY_Anvilrage Warden|r, |cRXP_ENEMY_Anvilrage Guardsman|r, then click it to start the quest
    .turnin 4264 >>Turn in A Crumpled Up Note
step
    .goto 1455,39.09,56.2
    >>Talk to |cRXP_FRIENDLY_King Magni Bronzebeard|r
    .turnin 4362 >>Turn in The Fate of the Kingdom
    .target King Magni Bronzebeard
step
    #completewith next
    +|cRXP_WARN_Run the dungeon (run 4)|r
step
    .goto 1427,34.8,85.3
    >>Inside Blackrock Depths: these quests start from a drop or an object in the dungeon
    .accept 4282 >>Accept A Shred of Hope
    .accept 4363 >>Accept The Princess's Surprise
step
    .goto 1427,34.8,85.3
    >>Enter |cRXP_WARN_Blackrock Depths|r and run it with a group. Quest goals inside:
    *A Shred of Hope: Return Marshal Windsor's Lost Information.
    .complete 4282,1 --A Shred of Hope
    .complete 4282,2 --A Shred of Hope
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1427,34.8,85.3
    >>Inside Blackrock Depths: these quests start from a drop or an object in the dungeon
    .turnin 4282 >>Turn in A Shred of Hope
step
    .goto 1455,39.09,56.2
    >>Talk to |cRXP_FRIENDLY_King Magni Bronzebeard|r
    .turnin 4363 >>Turn in The Princess's Surprise
    .target King Magni Bronzebeard
step
    >>|cRXP_WARN_Also part of this dungeon (later follow-ups or missing data). Do them if they are offered:|r
    *Jail Break!
    +Done
step
    .goto 1427,34.8,85.3
    +Dungeon entrance: Blackrock Depths. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 50-60
#name 54-60 Dire Maul
#displayname 54-60 Dire Maul
#next 55-60 Blackrock Spire
step
    +|cRXP_WARN_Dire Maul|r (levels 54-60). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *East 54-60, West 56-60, North 56-60.
    *Pre-quests in this guide: In Search of Anthion, Dead Man's Plea, Proof of Life, Anthion's Strange Request, Bodley's Unfortunate Fate, Three Kings of Flame, Components of Importance, Components of Importance, More Components of Importance
step
    #completewith next
    +|cRXP_WARN_Pre-quests|r
step
    .goto 1455,43.53,52.64
    >>Talk to |cRXP_FRIENDLY_Deliana|r
    .accept 8960 >>Accept Bodley's Unfortunate Fate
    .target Deliana
step
    .goto 1455,43.53,52.64
    >>Talk to |cRXP_FRIENDLY_Deliana|r
    .turnin 8960 >>Turn in Bodley's Unfortunate Fate
    .accept 8929 >>Accept In Search of Anthion
    .target Deliana
step
    .goto 1423,26.11,11.3
    >>Talk to |cRXP_FRIENDLY_Anthion Harmon|r
    .turnin 8929 >>Turn in In Search of Anthion
    .accept 8947 >>Accept Anthion's Strange Request
    .target Anthion Harmon
step
    >>Collect |cRXP_LOOT_[Dark Iron Bar]|r. Collect |cRXP_LOOT_[Enchanted Leather]|r. Collect |cRXP_LOOT_[Mooncloth]|r. Collect |cRXP_LOOT_[Cured Rugged Hide]|r
    *Bring 3 Dark Iron Bars, 20 Enchanted Leather, 3 Mooncloth and 4 Cured Rugged Hides to Anthion Harmon in the Eastern Plaguelands.
    .complete 8947,1 --Anthion's Strange Request
    .complete 8947,2 --Anthion's Strange Request
    .complete 8947,3 --Anthion's Strange Request
    .complete 8947,4 --Anthion's Strange Request
step
    .goto 1423,26.11,11.3
    >>Talk to |cRXP_FRIENDLY_Anthion Harmon|r
    .turnin 8947 >>Turn in Anthion's Strange Request
    .accept 8945 >>Accept Dead Man's Plea
    .target Anthion Harmon
step
    >>Kill |cRXP_ENEMY_Ysida Harmon|r
    *Go into Stratholme and rescue Ysida Harmon from Baron Rivendare.
    .complete 8945,1 --Dead Man's Plea
    .mob Ysida Harmon
step
    .goto 1423,26.11,11.3
    >>Talk to |cRXP_FRIENDLY_Anthion Harmon|r
    .turnin 8945 >>Turn in Dead Man's Plea
    .target Anthion Harmon
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1423,26.11,11.3
    >>Talk to |cRXP_FRIENDLY_Anthion Harmon|r
    .accept 8948 >>Accept Anthion's Old Friend
    .target Anthion Harmon
step
    .goto 1444,76.91,37.35
    >>Talk to |cRXP_FRIENDLY_Azj'Tordin|r
    .accept 7441 >>Accept Pusillin and the Elder Azj'Tordin
    .target Azj'Tordin
step
    .goto 1444,31.65,43.45
    >>Talk to |cRXP_FRIENDLY_Scholar Runethorn|r
    .accept 7482 >>Accept Elven Legends
    .target Scholar Runethorn
step
    .goto 1453,56.39,74.09
    >>Talk to |cRXP_FRIENDLY_Crier Goodman|r
    .accept 7494 >>Accept Feathermoon Stronghold
    .target Crier Goodman
step
    #completewith next
    +|cRXP_WARN_Run the dungeon|r
step
    .goto 1444,59.2,45.1
    >>Inside Dire Maul: these quests start from a drop or an object in the dungeon
    .accept 1193 >>Accept A Broken Trap
    .accept 1318 >>Accept Unfinished Gordok Business
    .accept 5518 >>Accept The Gordok Ogre Suit
    .accept 5525 >>Accept Free Knot!
    .accept 5528 >>Accept The Gordok Taste Test
    .accept 7461 >>Accept The Madness Within
    .accept 7703 >>Accept Unfinished Gordok Business
    .accept 8967 >>Accept The Left Piece of Lord Valthalak's Amulet
    .accept 8990 >>Accept The Right Piece of Lord Valthalak's Amulet
    .accept 84555 >>Accept Nostro's Compendium
step
    .goto 1444,59.2,45.1
    >>Inside Dire Maul: loot |cRXP_LOOT_[Foror's Compendium of Dragon Slaying]|r and click it to start the quest
    .accept 7507 >>Accept Foror's Compendium
    .use 18401
step
    .goto 1444,59.2,45.1
    >>Enter |cRXP_WARN_Dire Maul|r and run it with a group. Quest goals inside:
    *A Broken Trap
    *Unfinished Gordok Business: Find the Gauntlet of Gordok Might and return it to Captain Kromcrush in Dire Maul.
    *The Gordok Ogre Suit: Bring 4 Bolts of Runecloth, 8 Rugged Leather, 2 Rune Threads, and Ogre Tannin to Knot Thimblejack. He is currently chained inside the Gordok wing of Dire Maul.
    *Free Knot!
    *Pusillin and the Elder Azj'Tordin: Travel to Dire Maul and locate the Imp, Pusillin. Convince Pusillin to give you Azj'Tordin's Book of Incantations through any means necessary.
    *The Madness Within: You must destroy the guardians surrounding the 5 Pylons that power the Prison of Immol'thar. Once the Pylons have powered down, the force field surrounding Immol'thar will have dissipated.
    *Unfinished Gordok Business: Find the Gauntlet of Gordok Might and return it to Captain Kromcrush in Dire Maul.
    *The Left Piece of Lord Valthalak's Amulet: Use the Brazier of Beckoning to summon forth the spirit of Isalien and slay her. Return to Bodley inside Blackrock Mountain with the Left Piece of Lord Valthalak's Amulet and the Brazier of Beckoning.
    *The Right Piece of Lord Valthalak's Amulet: Use the Brazier of Beckoning to summon forth the spirit of Isalien and slay her. Return to Bodley inside Blackrock Mountain with the recombined Lord Valthalak's Amulet and the Brazier of Beckoning.
    .complete 1193,1 --A Broken Trap
    .complete 1318,1 --Unfinished Gordok Business
    .complete 5518,4 --The Gordok Ogre Suit
    .complete 5525,1 --Free Knot!
    .complete 7441,1 --Pusillin and the Elder Azj'Tordin
    .complete 7461,1 --The Madness Within
    .complete 7461,2 --The Madness Within
    .complete 7703,1 --Unfinished Gordok Business
    .complete 8967,1 --The Left Piece of Lord Valthalak's Amulet
    .complete 8967,2 --The Left Piece of Lord Valthalak's Amulet
    .complete 8990,1 --The Right Piece of Lord Valthalak's Amulet
    .complete 8990,2 --The Right Piece of Lord Valthalak's Amulet
step
    #completewith next
    +|cRXP_WARN_Outside: collect what the quests you got inside need|r
step
    .goto 1448,46.3,90.62
    >>Collect |cRXP_LOOT_[Frost Oil]|r from |cRXP_ENEMY_Vilebranch Witch Doctor|r, |cRXP_ENEMY_Tar Creeper|r, |cRXP_ENEMY_Deadwood Gardener|r
    .complete 1193,2 --A Broken Trap
    .mob Vilebranch Witch Doctor
    .mob Tar Creeper
step
    .goto 1451,18.3,85.84
    >>Collect |cRXP_LOOT_[Bolt of Runecloth]|r from |cRXP_ENEMY_Twilight Lord Everun|r
    *Bring 4 Bolts of Runecloth, 8 Rugged Leather, 2 Rune Threads, and Ogre Tannin to Knot Thimblejack. He is currently chained inside the Gordok wing of Dire Maul.
    .complete 5518,1 --The Gordok Ogre Suit
    .mob Twilight Lord Everun
step
    .goto 1412,37.39,44.91
    >>Buy |cRXP_LOOT_[Rugged Leather]|r from |cRXP_FRIENDLY_Lhara|r
    *Bring 4 Bolts of Runecloth, 8 Rugged Leather, 2 Rune Threads, and Ogre Tannin to Knot Thimblejack. He is currently chained inside the Gordok wing of Dire Maul.
    .complete 5518,2 --The Gordok Ogre Suit
step
    .goto 1453,64.73,71.26
    >>Buy |cRXP_LOOT_[Rune Thread]|r from |cRXP_FRIENDLY_Edna Mullby|r
    *Bring 4 Bolts of Runecloth, 8 Rugged Leather, 2 Rune Threads, and Ogre Tannin to Knot Thimblejack. He is currently chained inside the Gordok wing of Dire Maul.
    .complete 5518,3 --The Gordok Ogre Suit
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1444,59.2,45.1
    >>Inside Dire Maul: these quests start from a drop or an object in the dungeon
    .turnin 1193 >>Turn in A Broken Trap
    .turnin 1318 >>Turn in Unfinished Gordok Business
    .turnin 5518 >>Turn in The Gordok Ogre Suit
    .turnin 5525 >>Turn in Free Knot!
    .turnin 5528 >>Turn in The Gordok Taste Test
    .turnin 7461 >>Turn in The Madness Within
    .turnin 7703 >>Turn in Unfinished Gordok Business
    .turnin 8967 >>Turn in The Left Piece of Lord Valthalak's Amulet
    .turnin 8990 >>Turn in The Right Piece of Lord Valthalak's Amulet
    .turnin 84555 >>Turn in Nostro's Compendium
step
    .goto 1444,59.2,45.1
    >>Inside Dire Maul: loot |cRXP_LOOT_[Foror's Compendium of Dragon Slaying]|r and click it to start the quest
    .turnin 7507 >>Turn in Foror's Compendium
step
    .goto 1444,76.91,37.35
    >>Talk to |cRXP_FRIENDLY_Azj'Tordin|r
    .turnin 7441 >>Turn in Pusillin and the Elder Azj'Tordin
    .target Azj'Tordin
step
    .goto 1444,31.65,43.45
    >>Talk to |cRXP_FRIENDLY_Scholar Runethorn|r
    .turnin 7482 >>Turn in Elven Legends
    .target Scholar Runethorn
step
    .goto 1444,30.38,46.17
    >>Talk to |cRXP_FRIENDLY_Latronicus Moonspear|r
    .turnin 7494 >>Turn in Feathermoon Stronghold
    .target Latronicus Moonspear
step
    .goto 1423,26.11,11.3
    >>Talk to |cRXP_FRIENDLY_Anthion Harmon|r
    .turnin 8948 >>Turn in Anthion's Old Friend
    .target Anthion Harmon
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1444,30.38,46.17
    >>Talk to |cRXP_FRIENDLY_Latronicus Moonspear|r
    .accept 7488 >>Accept Lethtendris's Web
    .target Latronicus Moonspear
step
    #completewith next
    +|cRXP_WARN_Run the dungeon (run 2)|r
step
    .goto 1444,59.2,45.1
    >>Inside Dire Maul: these quests start from a drop or an object in the dungeon
    .accept 7462 >>Accept The Treasure of the Shen'dralar
    .accept 8949 >>Accept Falrin's Vendetta
step
    .goto 1444,59.2,45.1
    >>Inside Dire Maul: loot |cRXP_LOOT_[A Dull and Flat Elven Blade]|r and click it to start the quest
    .accept 7508 >>Accept The Forging of Quel'Serrar
    .use 18513
step
    .goto 1444,59.2,45.1
    >>Enter |cRXP_WARN_Dire Maul|r and run it with a group. Quest goals inside:
    *Lethtendris's Web: Bring Lethtendris' Web to Latronicus Moonspear at the Feathermoon Stronghold in Feralas.
    .complete 7488,1 --Lethtendris's Web
step
    #completewith next
    +|cRXP_WARN_Outside: collect what the quests you got inside need|r
step
    .goto 1444,59.24,43.08
    >>Collect |cRXP_LOOT_[Ogre Warbeads]|r from |cRXP_ENEMY_Urok Enforcer|r, |cRXP_ENEMY_Urok Ogre Magus|r, |cRXP_ENEMY_Ogre Magi|r
    *Collect 25 Ogre Warbeads from Ogres inside Dire Maul or Blackrock Spire and return to Falrin Treeshaper inside the Athenaeum in Dire Maul.
    .complete 8949,1 --Falrin's Vendetta
    .mob Urok Enforcer
    .mob Urok Ogre Magus
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1444,59.2,45.1
    >>Inside Dire Maul: these quests start from a drop or an object in the dungeon
    .turnin 7462 >>Turn in The Treasure of the Shen'dralar
    .turnin 8949 >>Turn in Falrin's Vendetta
step
    .goto 1444,59.2,45.1
    >>Inside Dire Maul: loot |cRXP_LOOT_[A Dull and Flat Elven Blade]|r and click it to start the quest
    .turnin 7508 >>Turn in The Forging of Quel'Serrar
step
    .goto 1444,30.38,46.17
    >>Talk to |cRXP_FRIENDLY_Latronicus Moonspear|r
    .turnin 7488 >>Turn in Lethtendris's Web
    .target Latronicus Moonspear
step
    #completewith next
    +|cRXP_WARN_Run the dungeon (run 3)|r
step
    .goto 1444,59.2,45.1
    >>Inside Dire Maul: these quests start from a drop or an object in the dungeon
    .accept 8950 >>Accept The Instigator's Enchantment
step
    .goto 1444,59.2,45.1
    >>Enter |cRXP_WARN_Dire Maul|r and run it with a group. Quest goals inside:
    *The Instigator's Enchantment: Bring the following to Falrin Treeshaper inside Dire Maul: 1 Jeering Spectre's Essence, 4 Dark Runes and 8 Large Brilliant Shards.
    .complete 8950,1 --The Instigator's Enchantment
    .complete 8950,2 --The Instigator's Enchantment
    .complete 8950,3 --The Instigator's Enchantment
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1444,59.2,45.1
    >>Inside Dire Maul: these quests start from a drop or an object in the dungeon
    .turnin 8950 >>Turn in The Instigator's Enchantment
step
    .goto 1444,59.2,45.1
    +Dungeon entrance: Dire Maul. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 50-60
#name 55-60 Blackrock Spire
#displayname 55-60 Blackrock Spire
#next 55-60 Blackmaw Hold
step
    +|cRXP_WARN_Blackrock Spire|r (levels 55-60). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *Lower Blackrock Spire 55-60, Upper Blackrock Spire 59-60.
    *Pre-quests in this guide: Screecher Spirits, The Prophecy of Mosh'aru, The God Hakkar, Marshal Windsor, Abandoned Hope, A Crumpled Up Note, A Shred of Hope, Jail Break!, Broodling Essence, The Ancient Egg, Felnok Steelspring, Chillwind Horns...
step
    #completewith next
    +|cRXP_WARN_Pre-quests|r
step
    .goto 1446,66.99,22.36
    >>Talk to |cRXP_FRIENDLY_Yeh'kinya|r
    .accept 3520 >>Accept Screecher Spirits
    .target Yeh'kinya
step
    >>Kill |cRXP_ENEMY_Screecher Spirit|r
    *Capture the spirits of 3 screechers in Feralas, then return to Yeh'kinya in Steamwheedle Port.
    .complete 3520,1 --Screecher Spirits
    .mob Screecher Spirit
step
    .goto 1446,66.99,22.36
    >>Talk to |cRXP_FRIENDLY_Yeh'kinya|r
    .turnin 3520 >>Turn in Screecher Spirits
    .accept 3527 >>Accept The Prophecy of Mosh'aru
    .target Yeh'kinya
step
    >>Collect |cRXP_LOOT_[First Mosh'aru Tablet]|r from |cRXP_ENEMY_Theka the Martyr Shapeshift|r, |cRXP_ENEMY_Theka the Martyr Shapeshift|r. Collect |cRXP_LOOT_[Second Mosh'aru Tablet]|r from |cRXP_ENEMY_Hydromancer Velratha|r
    *Bring the First and Second Mosh'aru Tablets to Yeh'kinya in Tanaris.
    .complete 3527,1 --The Prophecy of Mosh'aru
    .complete 3527,2 --The Prophecy of Mosh'aru
    .mob Theka the Martyr Shapeshift
    .mob Hydromancer Velratha
step
    .goto 1446,66.99,22.36
    >>Talk to |cRXP_FRIENDLY_Yeh'kinya|r
    .turnin 3527 >>Turn in The Prophecy of Mosh'aru
    .accept 4787 >>Accept The Ancient Egg
    .target Yeh'kinya
step
    .goto 1428,84.74,69.02
    >>Talk to |cRXP_FRIENDLY_Marshal Maxwell|r
    .accept 6402 >>Accept Stormwind Rendezvous
    .accept 4241 >>Accept Marshal Windsor
    .target Marshal Maxwell
step
    .goto 1428,84.74,69.02
    >>Talk to |cRXP_FRIENDLY_Marshal Maxwell|r
    .turnin 6402 >>Turn in Stormwind Rendezvous
    .turnin 4241 >>Turn in Marshal Windsor
    .target Marshal Maxwell
step
    .goto 1428,65.24,24
    >>Talk to |cRXP_FRIENDLY_Tinkee Steamboil|r
    .accept 4726 >>Accept Broodling Essence
    .target Tinkee Steamboil
step
    >>Collect |cRXP_LOOT_[Broodling Essence]|r from |cRXP_PICK_Broodling Essence|r
    *Bring 8 Broodling Essence and the Draco-Incarcinatrix 900 to Tinkee Steamboil at the Flame Crest in the Burning Steppes.
    .complete 4726,1 --Broodling Essence
step
    .goto 1428,65.24,24
    >>Talk to |cRXP_FRIENDLY_Tinkee Steamboil|r
    .turnin 4726 >>Turn in Broodling Essence
    .accept 4808 >>Accept Felnok Steelspring
    .target Tinkee Steamboil
step
    .goto 1452,61.63,38.61
    >>Talk to |cRXP_FRIENDLY_Felnok Steelspring|r
    .turnin 4808 >>Turn in Felnok Steelspring
    .accept 4809 >>Accept Chillwind Horns
    .target Felnok Steelspring
step
    .goto 1452,58.18,19.9
    >>Collect |cRXP_LOOT_[Uncracked Chillwind Horn]|r from |cRXP_ENEMY_Fledgling Chillwind|r, |cRXP_ENEMY_Chillwind Chimaera|r, |cRXP_ENEMY_Chillwind Ravager|r
    *Bring 8 Uncracked Chillwind Horns to Felnok Steelspring.
    .complete 4809,1 --Chillwind Horns
    .mob Fledgling Chillwind
    .mob Chillwind Chimaera
step
    .goto 1452,61.63,38.61
    >>Talk to |cRXP_FRIENDLY_Felnok Steelspring|r
    .turnin 4809 >>Turn in Chillwind Horns
    .accept 4810 >>Accept Return to Tinkee
    .target Felnok Steelspring
step
    .goto 1428,65.24,24
    >>Talk to |cRXP_FRIENDLY_Tinkee Steamboil|r
    .turnin 4810 >>Turn in Return to Tinkee
    .target Tinkee Steamboil
step
    .goto 1455,43.53,52.64
    >>Talk to |cRXP_FRIENDLY_Deliana|r
    .accept 8960 >>Accept Bodley's Unfortunate Fate
    .target Deliana
step
    .goto 1455,43.53,52.64
    >>Talk to |cRXP_FRIENDLY_Deliana|r
    .turnin 8960 >>Turn in Bodley's Unfortunate Fate
    .target Deliana
step
    .goto 1453,80.21,38.35
    >>Talk to |cRXP_FRIENDLY_Highlord Bolvar Fordragon|r
    .accept 6501 >>Accept The Dragon's Eye
    .target Highlord Bolvar Fordragon
step
    .goto 1452,54.55,51.2
    >>Talk to |cRXP_FRIENDLY_Haleh|r
    .turnin 6501 >>Turn in The Dragon's Eye
    .target Haleh
step
    .goto 1425,57.58,86.79
    >>Collect |cRXP_LOOT_[Ancient Egg]|r from |cRXP_PICK_Ancient Egg|r
    *Bring the Ancient Egg to Yeh'kinya in Tanaris.
    .complete 4787,1 --The Ancient Egg
step
    .goto 1446,66.99,22.36
    >>Talk to |cRXP_FRIENDLY_Yeh'kinya|r
    .turnin 4787 >>Turn in The Ancient Egg
    .accept 3528 >>Accept The God Hakkar
    .target Yeh'kinya
step
    >>Collect |cRXP_LOOT_[Filled Egg of Hakkar]|r
    *Bring the Filled Egg of Hakkar to Yeh'kinya in Tanaris.
    .complete 3528,1 --The God Hakkar
step
    .goto 1446,66.99,22.36
    >>Talk to |cRXP_FRIENDLY_Yeh'kinya|r
    .turnin 3528 >>Turn in The God Hakkar
    .target Yeh'kinya
step
    .goto 1446,66.89,24.03
    >>Talk to |cRXP_FRIENDLY_Prospector Ironboot|r
    .accept 5065 >>Accept The Lost Tablets of Mosh'aru
    .target Prospector Ironboot
step
    .goto 1423,63.43,7.84
    >>Collect |cRXP_LOOT_[Third Mosh'aru Tablet]|r from |cRXP_PICK_Third Mosh'aru Tablet|r. Collect |cRXP_LOOT_[Fourth Mosh'aru Tablet]|r from |cRXP_PICK_Fourth Mosh'aru Tablet|r
    *Bring the Third and Fourth Mosh'aru Tablets to Prospector Ironboot in Tanaris.
    .complete 5065,1 --The Lost Tablets of Mosh'aru
    .complete 5065,2 --The Lost Tablets of Mosh'aru
step
    .goto 1446,66.89,24.03
    >>Talk to |cRXP_FRIENDLY_Prospector Ironboot|r
    .turnin 5065 >>Turn in The Lost Tablets of Mosh'aru
    .target Prospector Ironboot
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1446,66.89,24.03
    >>Talk to |cRXP_FRIENDLY_Prospector Ironboot|r
    .accept 4788 >>Accept The Final Tablets
    .target Prospector Ironboot
step
    .goto 1428,85.82,68.95
    >>Talk to |cRXP_FRIENDLY_Helendis Riverhorn|r
    .accept 4701 >>Accept Put Her Down
    .target Helendis Riverhorn
step
    .goto 1428,65.24,24
    >>Talk to |cRXP_FRIENDLY_Tinkee Steamboil|r
    .accept 4734 >>Accept Egg Freezing
    .target Tinkee Steamboil
step
    .goto 1428,65.01,23.76
    >>Talk to |cRXP_FRIENDLY_Ragged John|r
    .accept 4866 >>Accept Mother's Milk
    .target Ragged John
step
    .goto 1428,65.89,21.92
    >>Talk to |cRXP_FRIENDLY_Kibler|r
    .accept 4729 >>Accept Kibler's Exotic Pets
    .accept 4862 >>Accept En-Ay-Es-Tee-Why
    .target Kibler
step
    .goto 1453,76.94,47.83
    >>Talk to |cRXP_FRIENDLY_Count Remington Ridgewell|r
    .accept 4766 >>Accept Mayara Brightwing
    .target Count Remington Ridgewell
step
    .goto 1452,61.63,38.61
    >>Talk to |cRXP_FRIENDLY_Felnok Steelspring|r
    .accept 4907 >>Accept Tinkee Steamboil
    .target Felnok Steelspring
step
    .goto 1452,54.55,51.2
    >>Talk to |cRXP_FRIENDLY_Haleh|r
    .accept 6502 >>Accept Drakefire Amulet
    .target Haleh
step
    #completewith next
    +|cRXP_WARN_Run the dungeon|r
step
    .goto 1427,34.8,85.3
    >>Inside Blackrock Spire: these quests start from a drop or an object in the dungeon
    .accept 4742 >>Accept Seal of Ascension
    .accept 4867 >>Accept Urok Doomhowl
    .accept 5001 >>Accept Bijou's Belongings
    .accept 5047 >>Accept Finkle Einhorn, At Your Service!
    .accept 5160 >>Accept The Matron Protectorate
step
    .goto 1427,34.8,85.3
    >>Loot |cRXP_LOOT_[General Drakkisath's Command]|r from |cRXP_ENEMY_Overlord Wyrmthalak|r, then click it to start the quest
    .accept 5089 >>Accept General Drakkisath's Command
    .use 12780
    .mob Overlord Wyrmthalak
step
    .goto 1427,34.8,85.3
    >>Loot |cRXP_LOOT_[Blackhand's Command]|r from |cRXP_ENEMY_Scarshield Quartermaster|r, then click it to start the quest
    .accept 7761 >>Accept Blackhand's Command
    .use 18987
    .mob Scarshield Quartermaster
step
    .goto 1427,34.8,85.3
    >>Enter |cRXP_WARN_Blackrock Spire|r and run it with a group. Quest goals inside:
    *Put Her Down: Travel to Blackrock Spire and destroy the source of the worg menace. As you left Helendis, he shouted a name: Halycon. It is what the orcs refer to in regards to the worg.
    *Kibler's Exotic Pets: Travel to Blackrock Spire and find Bloodaxe Worg Pups. Use the cage to carry the ferocious little beasts. Bring back a Caged Worg Pup to Kibler.
    *Seal of Ascension: Find the three gemstones of command: The Gemstone of Smolderthorn, Gemstone of Spirestone, and Gemstone of Bloodaxe. Return them, along with the Unadorned Seal of Ascension, to Vaelan.
    *The Final Tablets: Bring the Fifth and Sixth Mosh'aru Tablets to Prospector Ironboot in Tanaris.
    *En-Ay-Es-Tee-Why: Travel to Blackrock Spire and collect 15 Spire Spider Eggs for Kibler.
    *Urok Doomhowl: Read Warosh's Scroll. Bring Warosh's Mojo to Warosh.
    *Bijou's Belongings: Find Bijou's Belongings and return them to her. Good luck!
    *Drakefire Amulet: You must retrieve the Blood of the Black Dragon Champion from General Drakkisath. Drakkisath can be found in his throne room behind the Halls of Ascension in Blackrock Spire.
    .complete 4701,1 --Put Her Down
    .complete 4729,1 --Kibler's Exotic Pets
    .complete 4742,1 --Seal of Ascension
    .complete 4742,2 --Seal of Ascension
    .complete 4742,3 --Seal of Ascension
    .complete 4742,4 --Seal of Ascension
    .complete 4788,1 --The Final Tablets
    .complete 4788,2 --The Final Tablets
    .complete 4862,1 --En-Ay-Es-Tee-Why
    .complete 4867,1 --Urok Doomhowl
    .complete 5001,1 --Bijou's Belongings
    .complete 6502,1 --Drakefire Amulet
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1427,34.8,85.3
    >>Inside Blackrock Spire: these quests start from a drop or an object in the dungeon
    .turnin 4742 >>Turn in Seal of Ascension
    .turnin 4867 >>Turn in Urok Doomhowl
    .turnin 5001 >>Turn in Bijou's Belongings
step
    .goto 1427,34.8,85.3
    >>Loot |cRXP_LOOT_[Blackhand's Command]|r from |cRXP_ENEMY_Scarshield Quartermaster|r, then click it to start the quest
    .turnin 7761 >>Turn in Blackhand's Command
step
    .goto 1428,85.82,68.95
    >>Talk to |cRXP_FRIENDLY_Helendis Riverhorn|r
    .turnin 4701 >>Turn in Put Her Down
    .target Helendis Riverhorn
step
    .goto 1428,84.84,69.12
    >>Talk to |cRXP_FRIENDLY_Mayara Brightwing|r
    .turnin 4766 >>Turn in Mayara Brightwing
    .target Mayara Brightwing
step
    .goto 1428,84.74,69.02
    >>Talk to |cRXP_FRIENDLY_Marshal Maxwell|r
    .turnin 5089 >>Turn in General Drakkisath's Command
    .target Marshal Maxwell
step
    .goto 1428,65.24,24
    >>Talk to |cRXP_FRIENDLY_Tinkee Steamboil|r
    .turnin 4734 >>Turn in Egg Freezing
    .turnin 4907 >>Turn in Tinkee Steamboil
    .target Tinkee Steamboil
step
    .goto 1428,65.01,23.76
    >>Talk to |cRXP_FRIENDLY_Ragged John|r
    .turnin 4866 >>Turn in Mother's Milk
    .target Ragged John
step
    .goto 1428,65.89,21.92
    >>Talk to |cRXP_FRIENDLY_Kibler|r
    .turnin 4729 >>Turn in Kibler's Exotic Pets
    .turnin 4862 >>Turn in En-Ay-Es-Tee-Why
    .target Kibler
step
    .goto 1446,66.89,24.03
    >>Talk to |cRXP_FRIENDLY_Prospector Ironboot|r
    .turnin 4788 >>Turn in The Final Tablets
    .target Prospector Ironboot
step
    .goto 1452,60.99,38.78
    >>Talk to |cRXP_FRIENDLY_Malyfous Darkhammer|r
    .turnin 5047 >>Turn in Finkle Einhorn, At Your Service!
    .target Malyfous Darkhammer
step
    .goto 1452,54.55,51.2
    >>Talk to |cRXP_FRIENDLY_Haleh|r
    .turnin 5160 >>Turn in The Matron Protectorate
    .turnin 6502 >>Turn in Drakefire Amulet
    .target Haleh
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1428,65.24,24
    >>Talk to |cRXP_FRIENDLY_Tinkee Steamboil|r
    .accept 4735 >>Accept Egg Collection
    .target Tinkee Steamboil
step
    .goto 1428,84.74,69.02
    >>Talk to |cRXP_FRIENDLY_Marshal Maxwell|r
    .accept 5102 >>Accept General Drakkisath's Demise
    .target Marshal Maxwell
step
    .goto 1428,84.84,69.12
    >>Talk to |cRXP_FRIENDLY_Mayara Brightwing|r
    .accept 4764 >>Accept Doomrigger's Clasp
    .target Mayara Brightwing
step
    #completewith next
    +|cRXP_WARN_Run the dungeon (run 2)|r
step
    .goto 1427,34.8,85.3
    >>Inside Blackrock Spire: these quests start from a drop or an object in the dungeon
    .accept 4743 >>Accept Seal of Ascension
    .accept 5002 >>Accept Message to Maxwell
    .accept 8966 >>Accept The Left Piece of Lord Valthalak's Amulet
    .accept 8989 >>Accept The Right Piece of Lord Valthalak's Amulet
    .accept 8995 >>Accept Mea Culpa, Lord Valthalak
step
    .goto 1427,34.8,85.3
    >>Enter |cRXP_WARN_Blackrock Spire|r and run it with a group. Quest goals inside:
    *Egg Collection: Bring 8 Collected Dragon Eggs and the Collectronic Module to Tinkee Steamboil at Flame Crest in the Burning Steppes.
    *Seal of Ascension: Travel to the Wyrmbog in Dustwallow Marsh. Find the ancient drake, Emberstrife and beat him without mercy until his will is broken.
    *Doomrigger's Clasp: Bring Doomrigger's Clasp to Mayara Brightwing in the Burning Steppes.
    *General Drakkisath's Demise: Travel to Blackrock Spire and destroy General Drakkisath. Return to Marshal Maxwell when the job is done.
    *The Left Piece of Lord Valthalak's Amulet: Use the Brazier of Beckoning to summon forth the spirit of Mor Grayhoof and slay him. Return to Bodley inside Blackrock Mountain with the Left Piece of Lord Valthalak's Amulet and the Brazier of Beckoning.
    *The Right Piece of Lord Valthalak's Amulet: Use the Brazier of Beckoning to summon forth the spirit of Mor Grayhoof and slay him. Return to Bodley inside Blackrock Mountain with the recombined Lord Valthalak's Amulet and the Brazier of Beckoning.
    *Mea Culpa, Lord Valthalak: Use the Brazier of Beckoning to summon Lord Valthalak. Dispatch him, and use Lord Valthalak's Amulet on the corpse. Then, return Lord Valthalak's Amulet to the Spirit of Lord Valthalak.
    .complete 4735,1 --Egg Collection
    .complete 4743,1 --Seal of Ascension
    .complete 4764,1 --Doomrigger's Clasp
    .complete 5102,1 --General Drakkisath's Demise
    .complete 8966,1 --The Left Piece of Lord Valthalak's Amulet
    .complete 8966,2 --The Left Piece of Lord Valthalak's Amulet
    .complete 8989,1 --The Right Piece of Lord Valthalak's Amulet
    .complete 8989,2 --The Right Piece of Lord Valthalak's Amulet
    .complete 8995,1 --Mea Culpa, Lord Valthalak
    .complete 8995,2 --Mea Culpa, Lord Valthalak
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1427,34.8,85.3
    >>Inside Blackrock Spire: these quests start from a drop or an object in the dungeon
    .turnin 4743 >>Turn in Seal of Ascension
    .turnin 8966 >>Turn in The Left Piece of Lord Valthalak's Amulet
    .turnin 8989 >>Turn in The Right Piece of Lord Valthalak's Amulet
    .turnin 8995 >>Turn in Mea Culpa, Lord Valthalak
step
    .goto 1428,65.24,24
    >>Talk to |cRXP_FRIENDLY_Tinkee Steamboil|r
    .turnin 4735 >>Turn in Egg Collection
    .target Tinkee Steamboil
step
    .goto 1428,84.74,69.02
    >>Talk to |cRXP_FRIENDLY_Marshal Maxwell|r
    .turnin 5002 >>Turn in Message to Maxwell
    .turnin 5102 >>Turn in General Drakkisath's Demise
    .target Marshal Maxwell
step
    .goto 1428,84.84,69.12
    >>Talk to |cRXP_FRIENDLY_Mayara Brightwing|r
    .turnin 4764 >>Turn in Doomrigger's Clasp
    .target Mayara Brightwing
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1428,84.84,69.12
    >>Talk to |cRXP_FRIENDLY_Mayara Brightwing|r
    .accept 4765 >>Accept Delivery to Ridgewell
    .target Mayara Brightwing
step
    .goto 1428,84.74,69.02
    >>Talk to |cRXP_FRIENDLY_Marshal Maxwell|r
    .accept 5081 >>Accept Maxwell's Mission
    .target Marshal Maxwell
step
    #completewith next
    +|cRXP_WARN_Run the dungeon (run 3)|r
step
    .goto 1427,34.8,85.3
    >>Enter |cRXP_WARN_Blackrock Spire|r and run it with a group. Quest goals inside:
    *Maxwell's Mission: Travel to Blackrock Spire and destroy War Master Voone, Highlord Omokk, and Overlord Wyrmthalak. Return to Marshal Maxwell when the job is done.
    .complete 5081,1 --Maxwell's Mission
    .complete 5081,2 --Maxwell's Mission
    .complete 5081,3 --Maxwell's Mission
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1453,76.94,47.83
    >>Talk to |cRXP_FRIENDLY_Count Remington Ridgewell|r
    .turnin 4765 >>Turn in Delivery to Ridgewell
    .target Count Remington Ridgewell
step
    .goto 1428,84.74,69.02
    >>Talk to |cRXP_FRIENDLY_Marshal Maxwell|r
    .turnin 5081 >>Turn in Maxwell's Mission
    .target Marshal Maxwell
step
    .goto 1427,34.8,85.3
    +Dungeon entrance: Blackrock Spire. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 50-60
#name 55-60 Blackmaw Hold
#displayname 55-60 Blackmaw Hold
#next 58-60 Shaper's Terrace
step
    +|cRXP_WARN_Blackmaw Hold|r (levels 55-60). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *New Forever dungeon in north Azshara, through the furbolg tunnel (bear-head entrance). The portal is deep inside.
    *Pre-quests in this guide: Beneath Nordrassil
step
    #completewith next
    +|cRXP_WARN_Pre-quests|r
step
    .goto 1447,11.81,78.36
    >>Talk to |cRXP_FRIENDLY_Commander Truesong|r
    .accept 92345 >>Accept Beneath Nordrassil
    .target Commander Truesong
step
    .goto 1457,35.37,8.4
    >>Talk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .turnin 92345 >>Turn in Beneath Nordrassil
    .target Mathrengyl Bearwalker
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1457,35.37,8.4
    >>Talk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .accept 92344 >>Accept Get to the Roots of It
    .target Mathrengyl Bearwalker
step
    .goto 1447,42.28,20.13
    >>Talk to |cRXP_FRIENDLY_Gatekeeper Rageroar|r
    .accept 92065 >>Accept Blackmaw Reclamation
    .target Gatekeeper Rageroar
step
    .goto 1447,41.31,20.1
    >>Talk to |cRXP_FRIENDLY_Lorekeeper Nok|r
    .accept 92066 >>Accept The Twin Bears
    .target Lorekeeper Nok
step
    .goto 1447,35.97,25.45
    >>Loot |cRXP_LOOT_[Feathered Charm Necklace]|r from |cRXP_ENEMY_Impaan the Imprisoner|r, |cRXP_ENEMY_Varrox Bleakhoof|r, |cRXP_ENEMY_Legashi Subjugator|r, then click it to start the quest
    .accept 92070 >>Accept A Lost Memento
    .use 249698
    .mob Impaan the Imprisoner
    .mob Varrox Bleakhoof
step
    .goto 1447,42,38.88
    >>Talk to |cRXP_FRIENDLY_Ekkal|r
    .accept 97327 >>Accept Blackmaw Pouches
    .target Ekkal
step
    .goto 1416,15.37,74.09
    >>Talk to |cRXP_FRIENDLY_Archmage Timear|r
    .accept 97173 >>Accept Blackmaw Magic
    .target Archmage Timear
step
    .goto 1447,35.97,25.45
    >>Collect |cRXP_LOOT_[Feathered Charm Necklace]|r from |cRXP_ENEMY_Impaan the Imprisoner|r, |cRXP_ENEMY_Varrox Bleakhoof|r, |cRXP_ENEMY_Legashi Subjugator|r
    *Find the owner of the Feathered Charm Necklace.
    .complete 92070,1 --A Lost Memento
    .mob Impaan the Imprisoner
    .mob Varrox Bleakhoof
step
    .goto 1447,39.96,33.19
    >>Collect |cRXP_LOOT_[Blackmaw Pouch]|r from |cRXP_ENEMY_Withermaw|r, |cRXP_ENEMY_Bonesnout the Unbroken|r, |cRXP_ENEMY_Impaan the Imprisoner|r
    *Enter Blackmaw Hold and recover 5 Blackmaw Pouches for Ekkal at the Ruins of Eldarath in Azshara.
    .complete 97327,1 --Blackmaw Pouches
    .mob Withermaw
    .mob Bonesnout the Unbroken
step
    #completewith next
    +|cRXP_WARN_Run the dungeon|r
step
    .goto 1447,38.7,33.4
    >>Inside Blackmaw Hold: these quests start from a drop or an object in the dungeon
    .accept 92067 >>Accept Feeding Time!
step
    .goto 1447,38.7,33.4
    >>Enter |cRXP_WARN_Blackmaw Hold|r and run it with a group. Quest goals inside:
    *Blackmaw Reclamation: Bring Varrox Bleakhoof's Head to Gatekeeper Rageroar at Ursolan.
    *The Twin Bears: Find the Totem of Ursoc and the Totem of Ursol inside Blackmaw Hold. Then, return them to Lorekeeper Nok at Ursolan.
    *Get to the Roots of It: Gather 10 Nordrassil Root Caps inside Blackmaw Hold for Mathrengyl Bearwalker in Darnassus.
    *Blackmaw Magic: Recover a Blackmaw Ritual Totem from Blackmaw Hold.
    .complete 92065,1 --Blackmaw Reclamation
    .complete 92066,1 --The Twin Bears
    .complete 92066,2 --The Twin Bears
    .complete 92344,1 --Get to the Roots of It
    .complete 97173,1 --Blackmaw Magic
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1447,38.7,33.4
    >>Inside Blackmaw Hold: these quests start from a drop or an object in the dungeon
    .turnin 92067 >>Turn in Feeding Time!
step
    .goto 1447,42,38.88
    >>Talk to |cRXP_FRIENDLY_Ekkal|r
    .turnin 97327 >>Turn in Blackmaw Pouches
    .target Ekkal
step
    .goto 1447,42.28,20.13
    >>Talk to |cRXP_FRIENDLY_Gatekeeper Rageroar|r
    .turnin 92065 >>Turn in Blackmaw Reclamation
    .target Gatekeeper Rageroar
step
    .goto 1447,41.31,20.1
    >>Talk to |cRXP_FRIENDLY_Lorekeeper Nok|r
    .turnin 92066 >>Turn in The Twin Bears
    .target Lorekeeper Nok
step
    .goto 1447,43.17,18.09
    >>Talk to |cRXP_FRIENDLY_Unele|r
    .turnin 92070 >>Turn in A Lost Memento
    .target Unele
step
    .goto 1457,35.37,8.4
    >>Talk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .turnin 92344 >>Turn in Get to the Roots of It
    .target Mathrengyl Bearwalker
step
    .goto 1416,15.37,74.09
    >>Talk to |cRXP_FRIENDLY_Archmage Timear|r
    .turnin 97173 >>Turn in Blackmaw Magic
    .target Archmage Timear
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1447,42,38.88
    >>Talk to |cRXP_FRIENDLY_Ekkal|r
    .accept 96246 >>Accept Blackmaw Pouches
    .target Ekkal
step
    .goto 1447,39.96,33.19
    >>Collect |cRXP_LOOT_[Blackmaw Pouch]|r from |cRXP_ENEMY_Withermaw|r, |cRXP_ENEMY_Bonesnout the Unbroken|r, |cRXP_ENEMY_Impaan the Imprisoner|r
    .complete 96246,1 --Blackmaw Pouches
    .mob Withermaw
    .mob Bonesnout the Unbroken
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1447,42,38.88
    >>Talk to |cRXP_FRIENDLY_Ekkal|r
    .turnin 96246 >>Turn in Blackmaw Pouches
    .target Ekkal
step
    .goto 1447,38.7,33.4
    +Dungeon entrance: Blackmaw Hold. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 50-60
#name 58-60 Shaper's Terrace
#displayname 58-60 Shaper's Terrace
#next 58-60 Scholomance
step
    +|cRXP_WARN_Shaper's Terrace|r (levels 58-60). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *New Forever dungeon on the hill north of Marshal's Refuge in Un'Goro. Power-crystal consoles inside open the way. No key needed.
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1455,71.5,15.74
    >>Talk to |cRXP_FRIENDLY_Curator Thorius|r
    .accept 95924 >>Accept Panic at the Digsite
    .accept 95925 >>Accept Mapping the Way Forward
    .target Curator Thorius
step
    #completewith next
    +|cRXP_WARN_Run the dungeon|r
step
    .goto 1449,48.1,6.1
    >>Inside Shaper's Terrace: these quests start from a drop or an object in the dungeon
    .accept 95790 >>Accept Digestible Research
step
    .goto 1449,48.1,6.1
    >>Enter |cRXP_WARN_Shaper's Terrace|r and run it with a group. Quest goals inside:
    *Digestible Research: Collect 15 Partially Digested Journal Pages from the Shaper's Terrace.
    *Panic at the Digsite: Slay 6 Ravasaur Matriarchs, 9 Ironhide Ravasaurs and Venomridge in Shaper's Terrace.
    .complete 95790,1 --Digestible Research
    .complete 95924,1 --Panic at the Digsite
    .complete 95924,2 --Panic at the Digsite
    .complete 95924,3 --Panic at the Digsite
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1455,71.5,15.74
    >>Talk to |cRXP_FRIENDLY_Curator Thorius|r
    .turnin 95790 >>Turn in Digestible Research
    .turnin 95924 >>Turn in Panic at the Digsite
    .turnin 95925 >>Turn in Mapping the Way Forward
    .target Curator Thorius
step
    .goto 1449,48.1,6.1
    +Dungeon entrance: Shaper's Terrace. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 50-60
#name 58-60 Scholomance
#displayname 58-60 Scholomance
#next 58-60 Stratholme
step
    +|cRXP_WARN_Scholomance|r (levels 58-60). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *Pre-quests in this guide: Broodling Essence, Egg Freezing, Egg Collection, Felnok Steelspring, Chillwind Horns, Return to Tinkee, The Human, Ras Frostwhisper, The Dying, Ras Frostwhisper, Menethil's Gift, Menethil's Gift, Soulbound Keepsake, Leonid Barthalomew...
step
    #completewith next
    +|cRXP_WARN_Pre-quests|r
step
    .goto 1428,65.24,24
    >>Talk to |cRXP_FRIENDLY_Tinkee Steamboil|r
    .accept 4726 >>Accept Broodling Essence
    .target Tinkee Steamboil
step
    >>Collect |cRXP_LOOT_[Broodling Essence]|r from |cRXP_PICK_Broodling Essence|r
    *Bring 8 Broodling Essence and the Draco-Incarcinatrix 900 to Tinkee Steamboil at the Flame Crest in the Burning Steppes.
    .complete 4726,1 --Broodling Essence
step
    .goto 1428,65.24,24
    >>Talk to |cRXP_FRIENDLY_Tinkee Steamboil|r
    .turnin 4726 >>Turn in Broodling Essence
    .accept 4808 >>Accept Felnok Steelspring
    .target Tinkee Steamboil
step
    .goto 1452,61.63,38.61
    >>Talk to |cRXP_FRIENDLY_Felnok Steelspring|r
    .turnin 4808 >>Turn in Felnok Steelspring
    .accept 4809 >>Accept Chillwind Horns
    .target Felnok Steelspring
step
    .goto 1452,58.18,19.9
    >>Collect |cRXP_LOOT_[Uncracked Chillwind Horn]|r from |cRXP_ENEMY_Fledgling Chillwind|r, |cRXP_ENEMY_Chillwind Chimaera|r, |cRXP_ENEMY_Chillwind Ravager|r
    *Bring 8 Uncracked Chillwind Horns to Felnok Steelspring.
    .complete 4809,1 --Chillwind Horns
    .mob Fledgling Chillwind
    .mob Chillwind Chimaera
step
    .goto 1452,61.63,38.61
    >>Talk to |cRXP_FRIENDLY_Felnok Steelspring|r
    .turnin 4809 >>Turn in Chillwind Horns
    .accept 4810 >>Accept Return to Tinkee
    .target Felnok Steelspring
step
    .goto 1428,65.24,24
    >>Talk to |cRXP_FRIENDLY_Tinkee Steamboil|r
    .turnin 4810 >>Turn in Return to Tinkee
    .target Tinkee Steamboil
step
    .goto 1422,70.57,74.11
    >>Talk to |cRXP_FRIENDLY_Magistrate Marduke|r
    .accept 5461 >>Accept The Human, Ras Frostwhisper
    .target Magistrate Marduke
step
    .goto 1417,17.91,69.41
    >>Collect |cRXP_LOOT_[Keepsake of Remembrance]|r from |cRXP_PICK_Keepsake of Remembrance|r
    *Travel to the Arathi Highlands, to the ruins of Stromgarde. Search Stromgarde for a Keepsake of Remembrance. If you find such an item, return with it to Magistrate Marduke.
    .complete 5461,1 --The Human, Ras Frostwhisper
step
    .goto 1422,70.57,74.11
    >>Talk to |cRXP_FRIENDLY_Magistrate Marduke|r
    .turnin 5461 >>Turn in The Human, Ras Frostwhisper
    .accept 5462 >>Accept The Dying, Ras Frostwhisper
    .target Magistrate Marduke
step
    .goto 1423,71.89,48.29
    >>Talk to |cRXP_FRIENDLY_Leonid Barthalomew the Revered|r
    .turnin 5462 >>Turn in The Dying, Ras Frostwhisper
    .accept 5465 >>Accept Soulbound Keepsake
    .accept 5463 >>Accept Menethil's Gift
    .target Leonid Barthalomew the Revered
step
    .goto 1423,71.89,48.29
    >>Talk to |cRXP_FRIENDLY_Leonid Barthalomew the Revered|r
    .turnin 5463 >>Turn in Menethil's Gift
    .target Leonid Barthalomew the Revered
step
    .goto 1422,70.57,74.11
    >>Talk to |cRXP_FRIENDLY_Magistrate Marduke|r
    .turnin 5465 >>Turn in Soulbound Keepsake
    .target Magistrate Marduke
step
    .goto 1455,43.53,52.64
    >>Talk to |cRXP_FRIENDLY_Deliana|r
    .accept 8960 >>Accept Bodley's Unfortunate Fate
    .target Deliana
step
    .goto 1455,43.53,52.64
    >>Talk to |cRXP_FRIENDLY_Deliana|r
    .turnin 8960 >>Turn in Bodley's Unfortunate Fate
    .target Deliana
step
    .goto 1428,65.24,24
    >>Talk to |cRXP_FRIENDLY_Tinkee Steamboil|r
    .accept 4734 >>Accept Egg Freezing
    .target Tinkee Steamboil
step
    .goto 1428,65.24,24
    >>Talk to |cRXP_FRIENDLY_Tinkee Steamboil|r
    .turnin 4734 >>Turn in Egg Freezing
    .accept 4735 >>Accept Egg Collection
    .target Tinkee Steamboil
step
    >>Collect |cRXP_LOOT_[Collected Dragon Egg]|r
    *Bring 8 Collected Dragon Eggs and the Collectronic Module to Tinkee Steamboil at Flame Crest in the Burning Steppes.
    .complete 4735,1 --Egg Collection
step
    .goto 1428,65.24,24
    >>Talk to |cRXP_FRIENDLY_Tinkee Steamboil|r
    .turnin 4735 >>Turn in Egg Collection
    .accept 5522 >>Accept Leonid Barthalomew
    .target Tinkee Steamboil
step
    .goto 1423,71.89,48.29
    >>Talk to |cRXP_FRIENDLY_Leonid Barthalomew the Revered|r
    .turnin 5522 >>Turn in Leonid Barthalomew
    .target Leonid Barthalomew the Revered
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1423,71.89,48.29
    >>Talk to |cRXP_FRIENDLY_Leonid Barthalomew the Revered|r
    .accept 5531 >>Accept Betina Bigglezink
    .target Leonid Barthalomew the Revered
step
    .goto 1423,71.66,49.94
    >>Talk to |cRXP_FRIENDLY_Betina Bigglezink|r
    .accept 5529 >>Accept Plagued Hatchlings
    .target Betina Bigglezink
step
    .goto 1422,43.45,83.73
    >>Talk to |cRXP_FRIENDLY_Weldon Barov|r
    .accept 5343 >>Accept Barov Family Fortune
    .target Weldon Barov
step
    .goto 1422,70.22,73.71
    >>Talk to |cRXP_FRIENDLY_Eva Sarkhoff|r
    .accept 5382 >>Accept Doctor Theolen Krastinov, the Butcher
    .target Eva Sarkhoff
step
    .goto 1422,70.57,74.11
    >>Talk to |cRXP_FRIENDLY_Magistrate Marduke|r
    .accept 5466 >>Accept The Lich, Ras Frostwhisper
    .target Magistrate Marduke
step
    #completewith next
    +|cRXP_WARN_Run the dungeon|r
step
    .goto 1422,69.7,73.2
    >>Inside Scholomance: these quests start from a drop or an object in the dungeon
    .accept 8969 >>Accept The Left Piece of Lord Valthalak's Amulet
    .accept 8992 >>Accept The Right Piece of Lord Valthalak's Amulet
step
    .goto 1422,69.7,73.2
    >>Enter |cRXP_WARN_Scholomance|r and run it with a group. Quest goals inside:
    *Barov Family Fortune: Venture to the Scholomance and recover the Barov family fortune. Four deeds make up this fortune: The Deed to Caer Darrow; The Deed to Brill; The Deed to Tarren Mill; and The Deed to Southshore. Return to Weldon Barov when you have completed this task.
    *Doctor Theolen Krastinov, the Butcher: Find Doctor Theolen Krastinov inside the Scholomance. Destroy him, then burn the Remains of Eva Sarkhoff and the Remains of Lucien Sarkhoff. Return to Eva Sarkhoff when the task is complete.
    *The Lich, Ras Frostwhisper: Find Ras Frostwhisper in the Scholomance. When you have found him, use the Soulbound Keepsake on his undead visage. Should you succeed in reverting him to a mortal, strike him down and recover the Human Head of Ras Frostwhisper. Take the head back to Magistrate Marduke.
    *Plagued Hatchlings: Kill 20 Plagued Hatchlings, then return to Betina Bigglezink at the Light's Hope Chapel.
    *The Left Piece of Lord Valthalak's Amulet: Use the Brazier of Beckoning to summon forth the spirit of Kormok and slay him. Return to Bodley inside Blackrock Mountain with the Left Piece of Lord Valthalak's Amulet and the Brazier of Beckoning.
    *The Right Piece of Lord Valthalak's Amulet: Use the Brazier of Beckoning to summon forth the spirit of Kormok and slay him. Return to Bodley inside Blackrock Mountain with the recombined Lord Valthalak's Amulet and the Brazier of Beckoning.
    .complete 5343,1 --Barov Family Fortune
    .complete 5343,2 --Barov Family Fortune
    .complete 5343,3 --Barov Family Fortune
    .complete 5343,4 --Barov Family Fortune
    .complete 5382,1 --Doctor Theolen Krastinov, the Butcher
    .complete 5382,2 --Doctor Theolen Krastinov, the Butcher
    .complete 5382,3 --Doctor Theolen Krastinov, the Butcher
    .complete 5466,1 --The Lich, Ras Frostwhisper
    .complete 5529,1 --Plagued Hatchlings
    .complete 8969,1 --The Left Piece of Lord Valthalak's Amulet
    .complete 8969,2 --The Left Piece of Lord Valthalak's Amulet
    .complete 8992,1 --The Right Piece of Lord Valthalak's Amulet
    .complete 8992,2 --The Right Piece of Lord Valthalak's Amulet
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1422,69.7,73.2
    >>Inside Scholomance: these quests start from a drop or an object in the dungeon
    .turnin 8969 >>Turn in The Left Piece of Lord Valthalak's Amulet
    .turnin 8992 >>Turn in The Right Piece of Lord Valthalak's Amulet
step
    .goto 1422,70.22,73.71
    >>Talk to |cRXP_FRIENDLY_Eva Sarkhoff|r
    .turnin 5382 >>Turn in Doctor Theolen Krastinov, the Butcher
    .target Eva Sarkhoff
step
    .goto 1422,70.57,74.11
    >>Talk to |cRXP_FRIENDLY_Magistrate Marduke|r
    .turnin 5466 >>Turn in The Lich, Ras Frostwhisper
    .target Magistrate Marduke
step
    .goto 1422,43.45,83.73
    >>Talk to |cRXP_FRIENDLY_Weldon Barov|r
    .turnin 5343 >>Turn in Barov Family Fortune
    .target Weldon Barov
step
    .goto 1423,71.66,49.94
    >>Talk to |cRXP_FRIENDLY_Betina Bigglezink|r
    .turnin 5529 >>Turn in Plagued Hatchlings
    .turnin 5531 >>Turn in Betina Bigglezink
    .target Betina Bigglezink
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1423,71.66,49.94
    >>Talk to |cRXP_FRIENDLY_Betina Bigglezink|r
    .accept 4771 >>Accept Dawn's Gambit
    .target Betina Bigglezink
step
    .goto 1422,70.22,73.71
    >>Talk to |cRXP_FRIENDLY_Eva Sarkhoff|r
    .accept 5515 >>Accept Krastinov's Bag of Horrors
    .target Eva Sarkhoff
step
    #completewith next
    +|cRXP_WARN_Run the dungeon (run 2)|r
step
    .goto 1422,69.7,73.2
    >>Enter |cRXP_WARN_Scholomance|r and run it with a group. Quest goals inside:
    *Dawn's Gambit: Place Dawn's Gambit in the Viewing Room of the Scholomance. Defeat Vectus, then return to Betina Bigglezink.
    *Krastinov's Bag of Horrors: Locate Jandice Barov in the Scholomance and destroy her. From her corpse recover Krastinov's Bag of Horrors. Return the bag to Eva Sarkhoff.
    .complete 4771,1 --Dawn's Gambit
    .complete 5515,1 --Krastinov's Bag of Horrors
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1422,70.22,73.71
    >>Talk to |cRXP_FRIENDLY_Eva Sarkhoff|r
    .turnin 5515 >>Turn in Krastinov's Bag of Horrors
    .target Eva Sarkhoff
step
    .goto 1423,71.66,49.94
    >>Talk to |cRXP_FRIENDLY_Betina Bigglezink|r
    .turnin 4771 >>Turn in Dawn's Gambit
    .target Betina Bigglezink
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1422,70.22,73.71
    >>Talk to |cRXP_FRIENDLY_Eva Sarkhoff|r
    .accept 5384 >>Accept Kirtonos the Herald
    .target Eva Sarkhoff
step
    #completewith next
    +|cRXP_WARN_Run the dungeon (run 3)|r
step
    .goto 1422,69.7,73.2
    >>Enter |cRXP_WARN_Scholomance|r and run it with a group. Quest goals inside:
    *Kirtonos the Herald: Return to the Scholomance with the Blood of Innocents. Find the porch and place the Blood of Innocents in the brazier. Kirtonos will come to feast upon your soul.
    .complete 5384,1 --Kirtonos the Herald
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1422,70.22,73.71
    >>Talk to |cRXP_FRIENDLY_Eva Sarkhoff|r
    .turnin 5384 >>Turn in Kirtonos the Herald
    .target Eva Sarkhoff
step
    .goto 1422,69.7,73.2
    +Dungeon entrance: Scholomance. Done with this dungeon? Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - Dungeon Quests Only
#groupweight 80
#subgroup Levels 50-60
#name 58-60 Stratholme
#displayname 58-60 Stratholme
step
    +|cRXP_WARN_Stratholme|r (levels 58-60). Do the pick-ups below, then run the dungeon, then hand everything in. Click to start.
    *Pre-quests in this guide: The Restless Souls, Doctor Theolen Krastinov, the Butcher, Kirtonos the Herald, The Human, Ras Frostwhisper, The Dying, Ras Frostwhisper, Krastinov's Bag of Horrors, Demon Dogs, Blood Tinged Skies, Carrion Grubbage, Redemption, Of Forgotten Memories, Of Lost Honor...
step
    #completewith next
    +|cRXP_WARN_Pre-quests|r
step
    .goto 1423,5.16,35.57
    >>Talk to |cRXP_FRIENDLY_Tirion Fordring|r
    .accept 5542 >>Accept Demon Dogs
    .accept 5543 >>Accept Blood Tinged Skies
    .accept 5544 >>Accept Carrion Grubbage
    .target Tirion Fordring
step
    .goto 1423,17.43,56.35
    >>Kill |cRXP_ENEMY_Plaguehound Runt|r. Kill |cRXP_ENEMY_Plaguebat|r
    *Slay 20 Plaguehound Runts, 5 Plaguehounds and 5 Frenzied Plaguehounds. Return to Tirion Fordring when the task is complete.
    *Slay 30 Plaguebats and return to Tirion Fordring.
    .complete 5542,1 --Demon Dogs
    .complete 5543,1 --Blood Tinged Skies
    .mob Plaguehound Runt
    .mob Plaguebat
step
    .goto 1423,5.16,35.57
    >>Talk to |cRXP_FRIENDLY_Tirion Fordring|r
    .turnin 5543 >>Turn in Blood Tinged Skies
    .target Tirion Fordring
step
    .goto 1423,47.25,48.12
    >>Kill |cRXP_ENEMY_Plaguehound|r
    *Slay 20 Plaguehound Runts, 5 Plaguehounds and 5 Frenzied Plaguehounds. Return to Tirion Fordring when the task is complete.
    .complete 5542,2 --Demon Dogs
    .mob Plaguehound
step
    .goto 1423,44.45,28.28
    >>Kill |cRXP_ENEMY_Frenzied Plaguehound|r
    *Slay 20 Plaguehound Runts, 5 Plaguehounds and 5 Frenzied Plaguehounds. Return to Tirion Fordring when the task is complete.
    .complete 5542,3 --Demon Dogs
    .mob Frenzied Plaguehound
step
    .goto 1423,55.96,25.56
    >>Collect |cRXP_LOOT_[Slab of Carrion Worm Meat]|r from |cRXP_ENEMY_Random Worm|r, |cRXP_ENEMY_Carrion Devourer|r
    *Seek out the Carrion Grubs and Devourers of the region. Slay them and harvest their meat. Return to Tirion Fordring when you have gathered 15 Slabs of Carrion Worm Meat.
    .complete 5544,1 --Carrion Grubbage
    .mob Random Worm
    .mob Carrion Devourer
step
    .goto 1423,5.16,35.57
    >>Talk to |cRXP_FRIENDLY_Tirion Fordring|r
    .turnin 5542 >>Turn in Demon Dogs
    .turnin 5544 >>Turn in Carrion Grubbage
    .accept 5742 >>Accept Redemption
    .target Tirion Fordring
step
    .goto 1423,5.16,35.57
    >>Talk to |cRXP_FRIENDLY_Tirion Fordring|r
    .turnin 5742 >>Turn in Redemption
    .accept 5781 >>Accept Of Forgotten Memories
    .target Tirion Fordring
step
    >>Collect |cRXP_LOOT_[Taelan's Hammer]|r from |cRXP_ENEMY_Mercutio Filthgorger|r
    *Travel to the Undercroft - at the southernmost section of the Eastern Plaguelands - and recover Taelan's Hammer. Return to Tirion Fordring upon completion of your objective.
    .complete 5781,1 --Of Forgotten Memories
    .mob Mercutio Filthgorger
step
    .goto 1423,5.16,35.57
    >>Talk to |cRXP_FRIENDLY_Tirion Fordring|r
    .turnin 5781 >>Turn in Of Forgotten Memories
    .accept 5845 >>Accept Of Lost Honor
    .target Tirion Fordring
step
    .goto 1423,69.93,53.72
    >>Talk to |cRXP_FRIENDLY_Caretaker Alen|r
    .accept 5281 >>Accept The Restless Souls
    .target Caretaker Alen
step
    .goto 1423,62.53,26.81
    >>Collect |cRXP_LOOT_[Symbol of Lost Honor]|r from |cRXP_PICK_Symbol of Lost Honor|r
    *Travel to Northdale, in the northeastern region of the Eastern Plaguelands, and recover the Symbol of Lost Honor. Return to Tirion Fordring upon completion of your objective.
    .complete 5845,1 --Of Lost Honor
step
    .goto 1423,11.36,26.6
    >>Talk to |cRXP_FRIENDLY_Egan|r
    .turnin 5281 >>Turn in The Restless Souls
    .target Egan
step
    .goto 1423,5.16,35.57
    >>Talk to |cRXP_FRIENDLY_Tirion Fordring|r
    .turnin 5845 >>Turn in Of Lost Honor
    .accept 5846 >>Accept Of Love and Family
    .target Tirion Fordring
step
    .goto 1422,65.77,75.37
    >>Talk to |cRXP_FRIENDLY_Artist Renfray|r
    .turnin 5846 >>Turn in Of Love and Family
    .target Artist Renfray
step
    .goto 1422,70.22,73.71
    >>Talk to |cRXP_FRIENDLY_Eva Sarkhoff|r
    .accept 5382 >>Accept Doctor Theolen Krastinov, the Butcher
    .target Eva Sarkhoff
step
    >>Kill |cRXP_ENEMY_Doctor Theolen Krastinov|r. Click |cRXP_PICK_Remains of Eva Sarkhoff|r. Click |cRXP_PICK_Remains of Lucien Sarkhoff|r
    *Find Doctor Theolen Krastinov inside the Scholomance. Destroy him, then burn the Remains of Eva Sarkhoff and the Remains of Lucien Sarkhoff. Return to Eva Sarkhoff when the task is complete.
    *|cRXP_WARN_Elite targets here. Group up or skip.|r
    .complete 5382,1 --Doctor Theolen Krastinov, the Butcher
    .complete 5382,2 --Doctor Theolen Krastinov, the Butcher
    .complete 5382,3 --Doctor Theolen Krastinov, the Butcher
    .mob Doctor Theolen Krastinov
step
    .goto 1422,70.22,73.71
    >>Talk to |cRXP_FRIENDLY_Eva Sarkhoff|r
    .turnin 5382 >>Turn in Doctor Theolen Krastinov, the Butcher
    .accept 5515 >>Accept Krastinov's Bag of Horrors
    .target Eva Sarkhoff
step
    >>Collect |cRXP_LOOT_[Krastinov's Bag of Horrors]|r from |cRXP_ENEMY_Jandice Barov|r
    *Locate Jandice Barov in the Scholomance and destroy her. From her corpse recover Krastinov's Bag of Horrors. Return the bag to Eva Sarkhoff.
    .complete 5515,1 --Krastinov's Bag of Horrors
    .mob Jandice Barov
step
    .goto 1422,70.22,73.71
    >>Talk to |cRXP_FRIENDLY_Eva Sarkhoff|r
    .turnin 5515 >>Turn in Krastinov's Bag of Horrors
    .accept 5384 >>Accept Kirtonos the Herald
    .target Eva Sarkhoff
step
    >>Kill |cRXP_ENEMY_Kirtonos the Herald|r
    *Return to the Scholomance with the Blood of Innocents. Find the porch and place the Blood of Innocents in the brazier. Kirtonos will come to feast upon your soul.
    *|cRXP_WARN_Elite targets here. Group up or skip.|r
    .complete 5384,1 --Kirtonos the Herald
    .mob Kirtonos the Herald
step
    .goto 1422,70.22,73.71
    >>Talk to |cRXP_FRIENDLY_Eva Sarkhoff|r
    .turnin 5384 >>Turn in Kirtonos the Herald
    .target Eva Sarkhoff
step
    .goto 1422,70.57,74.11
    >>Talk to |cRXP_FRIENDLY_Magistrate Marduke|r
    .accept 5461 >>Accept The Human, Ras Frostwhisper
    .target Magistrate Marduke
step
    .goto 1455,43.53,52.64
    >>Talk to |cRXP_FRIENDLY_Deliana|r
    .accept 8960 >>Accept Bodley's Unfortunate Fate
    .accept 8929 >>Accept In Search of Anthion
    .target Deliana
step
    .goto 1455,43.53,52.64
    >>Talk to |cRXP_FRIENDLY_Deliana|r
    .turnin 8960 >>Turn in Bodley's Unfortunate Fate
    .target Deliana
step
    .goto 1423,26.11,11.3
    >>Talk to |cRXP_FRIENDLY_Anthion Harmon|r
    .turnin 8929 >>Turn in In Search of Anthion
    .target Anthion Harmon
step
    .goto 1417,17.91,69.41
    >>Collect |cRXP_LOOT_[Keepsake of Remembrance]|r from |cRXP_PICK_Keepsake of Remembrance|r
    *Travel to the Arathi Highlands, to the ruins of Stromgarde. Search Stromgarde for a Keepsake of Remembrance. If you find such an item, return with it to Magistrate Marduke.
    .complete 5461,1 --The Human, Ras Frostwhisper
step
    .goto 1422,70.57,74.11
    >>Talk to |cRXP_FRIENDLY_Magistrate Marduke|r
    .turnin 5461 >>Turn in The Human, Ras Frostwhisper
    .accept 5462 >>Accept The Dying, Ras Frostwhisper
    .target Magistrate Marduke
step
    .goto 1423,71.89,48.29
    >>Talk to |cRXP_FRIENDLY_Leonid Barthalomew the Revered|r
    .turnin 5462 >>Turn in The Dying, Ras Frostwhisper
    .target Leonid Barthalomew the Revered
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1423,71.89,48.29
    >>Talk to |cRXP_FRIENDLY_Leonid Barthalomew the Revered|r
    .accept 5243 >>Accept Houses of the Holy
    .accept 5463 >>Accept Menethil's Gift
    .target Leonid Barthalomew the Revered
step
    .goto 1423,70.88,48.43
    >>Talk to |cRXP_FRIENDLY_Smokey LaRue|r
    .accept 5214 >>Accept The Great Fras Siabi
    .target Smokey LaRue
step
    .goto 1423,71.66,49.94
    >>Talk to |cRXP_FRIENDLY_Betina Bigglezink|r
    .accept 5212 >>Accept The Flesh Does Not Lie
    .target Betina Bigglezink
step
    .goto 1423,71.63,50.09
    >>Talk to |cRXP_FRIENDLY_Duke Nicholas Zverenhoff|r
    .accept 5251 >>Accept The Archivist
    .target Duke Nicholas Zverenhoff
step
    .goto 1423,26.11,11.3
    >>Talk to |cRXP_FRIENDLY_Anthion Harmon|r
    .accept 8945 >>Accept Dead Man's Plea
    .target Anthion Harmon
step
    .goto 1423,11.36,26.6
    >>Talk to |cRXP_FRIENDLY_Egan|r
    .accept 5282 >>Accept The Restless Souls
    .target Egan
step
    .goto 1422,65.77,75.37
    >>Talk to |cRXP_FRIENDLY_Artist Renfray|r
    .accept 5848 >>Accept Of Love and Family
    .target Artist Renfray
step
    #completewith next
    +|cRXP_WARN_Run the dungeon|r
step
    .goto 1423,26.52,10.36
    >>Inside Stratholme: these quests start from a drop or an object in the dungeon
    .accept 5125 >>Accept Aurius' Reckoning
    .accept 8968 >>Accept The Left Piece of Lord Valthalak's Amulet
    .accept 8991 >>Accept The Right Piece of Lord Valthalak's Amulet
step
    .goto 1423,26.52,10.36
    >>Enter |cRXP_WARN_Stratholme|r and run it with a group. Quest goals inside:
    *The Flesh Does Not Lie: Recover 10 Plagued Flesh Samples from Stratholme and return them to Betina Bigglezink. You suspect that any creature in Stratholme would have said flesh sample.
    *The Great Fras Siabi: Find Fras Siabi's smoke shop in Stratholme and recover a box of Siabi's Premium Tobacco. Return to Smokey LaRue when the job is done.
    *Houses of the Holy: Travel to Stratholme, in the north. Search the supply crates that litter the city and recover 5 Stratholme Holy Water. Return to Leonid Barthalomew the Revered when you have collected enough of the blessed fluid.
    *The Archivist: Travel to Stratholme and find Archivist Galford of the Scarlet Crusade. Destroy him and burn down the Scarlet Archive.
    *The Restless Souls: Use Egan's Blaster on the ghostly and spectral citizens of Stratholme. When the restless souls break free from their ghostly shells, use the blaster again - freedom will be theirs!
    *Of Love and Family: Travel to Stratholme, in the northern part of the Plaguelands. It is in the Scarlet Bastion that you will find the painting 'Of Love and Family,' hidden behind another painting depicting the twin moons of our world.
    *Dead Man's Plea: Go into Stratholme and rescue Ysida Harmon from Baron Rivendare.
    *The Left Piece of Lord Valthalak's Amulet: Use the Brazier of Beckoning to summon forth Jarien and Sothos and slay them. Return to Bodley inside Blackrock Mountain with the Left Piece of Lord Valthalak's Amulet and the Brazier of Beckoning.
    *The Right Piece of Lord Valthalak's Amulet: Use the Brazier of Beckoning to summon forth Jarien and Sothos and slay them. Return to Bodley inside Blackrock Mountain with the recombined Lord Valthalak's Amulet and the Brazier of Beckoning.
    .complete 5212,1 --The Flesh Does Not Lie
    .complete 5214,1 --The Great Fras Siabi
    .complete 5243,1 --Houses of the Holy
    .complete 5251,1 --The Archivist
    .complete 5251,2 --The Archivist
    .complete 5282,1 --The Restless Souls
    .complete 5848,1 --Of Love and Family
    .complete 8945,1 --Dead Man's Plea
    .complete 8968,1 --The Left Piece of Lord Valthalak's Amulet
    .complete 8968,2 --The Left Piece of Lord Valthalak's Amulet
    .complete 8968,3 --The Left Piece of Lord Valthalak's Amulet
    .complete 8991,1 --The Right Piece of Lord Valthalak's Amulet
    .complete 8991,2 --The Right Piece of Lord Valthalak's Amulet
    .complete 8991,3 --The Right Piece of Lord Valthalak's Amulet
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1423,26.52,10.36
    >>Inside Stratholme: these quests start from a drop or an object in the dungeon
    .turnin 5125 >>Turn in Aurius' Reckoning
    .turnin 8968 >>Turn in The Left Piece of Lord Valthalak's Amulet
    .turnin 8991 >>Turn in The Right Piece of Lord Valthalak's Amulet
step
    .goto 1423,26.11,11.3
    >>Talk to |cRXP_FRIENDLY_Anthion Harmon|r
    .turnin 8945 >>Turn in Dead Man's Plea
    .target Anthion Harmon
step
    .goto 1423,11.36,26.6
    >>Talk to |cRXP_FRIENDLY_Egan|r
    .turnin 5282 >>Turn in The Restless Souls
    .target Egan
step
    .goto 1423,5.16,35.57
    >>Talk to |cRXP_FRIENDLY_Tirion Fordring|r
    .turnin 5848 >>Turn in Of Love and Family
    .target Tirion Fordring
step
    .goto 1423,70.88,48.43
    >>Talk to |cRXP_FRIENDLY_Smokey LaRue|r
    .turnin 5214 >>Turn in The Great Fras Siabi
    .target Smokey LaRue
step
    .goto 1423,71.89,48.29
    >>Talk to |cRXP_FRIENDLY_Leonid Barthalomew the Revered|r
    .turnin 5243 >>Turn in Houses of the Holy
    .turnin 5463 >>Turn in Menethil's Gift
    .target Leonid Barthalomew the Revered
step
    .goto 1423,71.66,49.94
    >>Talk to |cRXP_FRIENDLY_Betina Bigglezink|r
    .turnin 5212 >>Turn in The Flesh Does Not Lie
    .target Betina Bigglezink
step
    .goto 1423,71.63,50.09
    >>Talk to |cRXP_FRIENDLY_Duke Nicholas Zverenhoff|r
    .turnin 5251 >>Turn in The Archivist
    .target Duke Nicholas Zverenhoff
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1423,71.66,49.94
    >>Talk to |cRXP_FRIENDLY_Betina Bigglezink|r
    .accept 5213 >>Accept The Active Agent
    .target Betina Bigglezink
step
    #completewith next
    +|cRXP_WARN_Run the dungeon (run 2)|r
step
    .goto 1423,26.52,10.36
    >>Loot |cRXP_LOOT_[Head of Balnazzar]|r from |cRXP_ENEMY_Balnazzar|r, then click it to start the quest
    .accept 5262 >>Accept The Truth Comes Crashing Down
    .use 13250
    .mob Balnazzar
step
    .goto 1423,26.52,10.36
    >>Enter |cRXP_WARN_Stratholme|r and run it with a group. Quest goals inside:
    *The Active Agent: Travel to Stratholme and search the ziggurats. Find and return new Scourge Data to Betina Bigglezink.
    .complete 5213,1 --The Active Agent
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1423,71.66,49.94
    >>Talk to |cRXP_FRIENDLY_Betina Bigglezink|r
    .turnin 5213 >>Turn in The Active Agent
    .target Betina Bigglezink
step
    .goto 1423,71.63,50.09
    >>Talk to |cRXP_FRIENDLY_Duke Nicholas Zverenhoff|r
    .turnin 5262 >>Turn in The Truth Comes Crashing Down
    .target Duke Nicholas Zverenhoff
step
    #completewith next
    +|cRXP_WARN_Pick up the dungeon quests|r
step
    .goto 1423,71.63,50.09
    >>Talk to |cRXP_FRIENDLY_Duke Nicholas Zverenhoff|r
    .accept 5263 >>Accept Above and Beyond
    .target Duke Nicholas Zverenhoff
step
    #completewith next
    +|cRXP_WARN_Run the dungeon (run 3)|r
step
    .goto 1423,26.52,10.36
    >>Enter |cRXP_WARN_Stratholme|r and run it with a group. Quest goals inside:
    *Above and Beyond: Venture to Stratholme and destroy Baron Rivendare. Take his head and return to Duke Nicholas Zverenhoff.
    .complete 5263,1 --Above and Beyond
step
    #completewith next
    +|cRXP_WARN_Hand everything in (go back inside for quest givers in the dungeon)|r
step
    .goto 1423,71.63,50.09
    >>Talk to |cRXP_FRIENDLY_Duke Nicholas Zverenhoff|r
    .turnin 5263 >>Turn in Above and Beyond
    .target Duke Nicholas Zverenhoff
step
    .goto 1423,26.52,10.36
    +Dungeon entrance: Stratholme. Done with this dungeon? Click to finish.
]])
