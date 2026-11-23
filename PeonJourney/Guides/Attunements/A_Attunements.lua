RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - Attunements
#groupweight 72
#subgroup Keys and attunements
#name 30-35 Dalaran Sewer Key (A)
#displayname 30-35 Dalaran Sewer Key (A)
step
    +|cRXP_WARN_Dalaran Sewer Key: opens the City of Dalaran dungeon (one holder opens it for the party). New in Forever.|r Click to start.
    *Chain: An Alarming Request > Heart of Disruption.
    *Heart of Disruption needs the Arcane Mote from inside the City of Dalaran: bring a group for that step.
step
    .goto 1424,48.33,60.04
    >>Talk to |cRXP_FRIENDLY_Emissary Jacques|r
    .accept 92432 >>Accept An Alarming Request
    .target Emissary Jacques
step
    .goto 1421,68.62,45.13
    >>Talk to |cRXP_FRIENDLY_Image of Archmage Modera|r
    .turnin 92432 >>Turn in An Alarming Request
    .accept 92458 >>Accept Heart of Disruption
    .target Image of Archmage Modera
step
    .goto 1421,69.3,45.6
    *|cRXP_WARN_Inside City of Dalaran: bring a group.|r
    >>Collect |cRXP_LOOT_[Arcane Mote]|r from |cRXP_ENEMY_Shade of the Archmage|r
    *Collect the Arcane Mote for the Image of Archmage Modera near the City of Dalaran.
    .complete 92458,1 --Heart of Disruption
    .mob Shade of the Archmage
step
    .goto 1421,68.62,45.13
    >>Talk to |cRXP_FRIENDLY_Image of Archmage Modera|r
    .turnin 92458 >>Turn in Heart of Disruption
    .target Image of Archmage Modera
step
    +|cRXP_WARN_Done:|r Dalaran Sewer Key (A). Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - Attunements
#groupweight 72
#subgroup Keys and attunements
#name 30-35 Dalaran Sewer Key (H)
#displayname 30-35 Dalaran Sewer Key (H)
step
    +|cRXP_WARN_Dalaran Sewer Key: opens the City of Dalaran dungeon (one holder opens it for the party). New in Forever.|r Click to start.
    *Chain: Key to the City > Prison Break In > Dalaran Patrols > Blood in the Streets > Heart of Disruption.
    *Heart of Disruption needs the Arcane Mote from inside the City of Dalaran: bring a group for that step.
step
    .goto 1424,61.6,20.85
    >>Talk to |cRXP_FRIENDLY_Magus Wordeen Voidglare|r
    .accept 544 >>Accept Prison Break In
    .accept 93680 >>Accept Key to the City
    .target Magus Wordeen Voidglare
step
    .goto 1416,19.91,85.97
    >>Collect |cRXP_LOOT_[Bloodstone Wedge]|r from |cRXP_ENEMY_Dermot|r. Collect |cRXP_LOOT_[Bloodstone Marble]|r from |cRXP_ENEMY_Ricter|r. Collect |cRXP_LOOT_[Bloodstone Shard]|r from |cRXP_ENEMY_Alina|r. Collect |cRXP_LOOT_[Bloodstone Oval]|r from |cRXP_ENEMY_Kegan Darkmar|r. Collect |cRXP_LOOT_[Grimy Key]|r from |cRXP_PICK_Warden's Footlocker|r
    *Find the traitors and recover their artifacts, then return to Magus Voidglare in Tarren Mill.
    *Acquire the Dalaran Sewer Key for Magus Wordeen Voidglare in Tarren Mill.
    .complete 544,1 --Prison Break In
    .complete 544,2 --Prison Break In
    .complete 544,3 --Prison Break In
    .complete 544,4 --Prison Break In
    .complete 93680,1 --Key to the City
    .mob Dermot
    .mob Ricter
    .mob Alina
    .mob Kegan Darkmar
step
    .goto 1424,61.6,20.85
    >>Talk to |cRXP_FRIENDLY_Magus Wordeen Voidglare|r
    .turnin 544 >>Turn in Prison Break In
    .turnin 93680 >>Turn in Key to the City
    .accept 545 >>Accept Dalaran Patrols
    .target Magus Wordeen Voidglare
step
    .goto 1416,22.8,57.2
    >>Kill |cRXP_ENEMY_Dalaran Summoner|r. Kill |cRXP_ENEMY_Elemental Slave|r
    *Kill 6 Dalaran Summoners and 12 Elemental Slaves, then return to Magus Voidglare in Tarren Mill.
    .complete 545,1 --Dalaran Patrols
    .complete 545,2 --Dalaran Patrols
    .mob Dalaran Summoner
    .mob Elemental Slave
step
    .goto 1424,61.6,20.85
    >>Talk to |cRXP_FRIENDLY_Magus Wordeen Voidglare|r
    .turnin 545 >>Turn in Dalaran Patrols
    .accept 92434 >>Accept Blood in the Streets
    .target Magus Wordeen Voidglare
step
    .goto 1421,68.62,45.13
    >>Kill |cRXP_ENEMY_Image of Archmage Modera|r
    *Find a way into Dalaran along the Lordamere Lake.
    .complete 92434,1 --Blood in the Streets
    .mob Image of Archmage Modera
step
    .goto 1421,68.62,45.13
    >>Talk to |cRXP_FRIENDLY_Image of Archmage Modera|r
    .turnin 92434 >>Turn in Blood in the Streets
    .accept 96984 >>Accept Heart of Disruption
    .target Image of Archmage Modera
step
    .goto 1421,69.3,45.6
    *|cRXP_WARN_Inside City of Dalaran: bring a group.|r
    >>Collect |cRXP_LOOT_[Arcane Mote]|r from |cRXP_ENEMY_Shade of the Archmage|r
    *Collect the Arcane Mote in the City of Dalaran for Magus Wordeen Voidglare in Tarren Mill.
    .complete 96984,1 --Heart of Disruption
    .mob Shade of the Archmage
step
    .goto 1424,61.6,20.85
    >>Talk to |cRXP_FRIENDLY_Magus Wordeen Voidglare|r
    .turnin 96984 >>Turn in Heart of Disruption
    .target Magus Wordeen Voidglare
step
    +|cRXP_WARN_Done:|r Dalaran Sewer Key (H). Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - Attunements
#groupweight 72
#subgroup Keys and attunements
#name 38-45 Krol'dok Compound Key (H)
#displayname 38-45 Krol'dok Compound Key (H)
step
    +|cRXP_WARN_Krol'dok Compound Key|r (Riverglades). Not needed to enter Krol'dok Stronghold; it opens a locked door inside (unconfirmed which). Click to start.
step
    .goto 2548,39,39
    >>Inside |cRXP_WARN_Krol'dok Stronghold|r (with a group): kill |cRXP_ENEMY_Tunk|r, loot |cRXP_LOOT_[Krol'dok Moulding]|r and click it to start the quest
    .accept 94973 >>Accept Krol'dok Moulding
    .use 267137
    .mob Tunk
step
    .goto 2548,59.92,45.97
    >>Talk to |cRXP_FRIENDLY_Kreza Darkthorn|r
    .turnin 94973 >>Turn in Krol'dok Moulding
    .accept 94974 >>Accept Key Ingredients
    .target Kreza Darkthorn
step
    >>Get |cRXP_LOOT_4 [Thick Leather]|r and |cRXP_LOOT_12 [Iron Bar]|r: Auction House, or skin and mine/smelt them yourself
    .complete 94974,1 --Thick Leather
    .complete 94974,2 --Iron Bar
step
    .goto 2548,59.92,45.97
    >>Talk to |cRXP_FRIENDLY_Kreza Darkthorn|r
    .turnin 94974 >>Turn in Key Ingredients
    .target Kreza Darkthorn
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - Attunements
#groupweight 72
#subgroup Keys and attunements
#name 38-45 Krol'dok Compound Key (A)
#displayname 38-45 Krol'dok Compound Key (A)
step
    +|cRXP_WARN_Krol'dok Compound Key|r (Riverglades). Not needed to enter Krol'dok Stronghold; it opens a locked door inside (unconfirmed which). Click to start.
step
    .goto 2548,39,39
    >>Inside |cRXP_WARN_Krol'dok Stronghold|r (with a group): kill |cRXP_ENEMY_Tunk|r, loot |cRXP_LOOT_[Krol'dok Moulding]|r and click it to start the quest
    .accept 94980 >>Accept Krol'dok Moulding
    .use 267138
    .mob Tunk
step
    .goto 2548,64.46,82.03
    >>Talk to |cRXP_FRIENDLY_Alphonse Dumas|r
    .turnin 94980 >>Turn in Krol'dok Moulding
    .accept 94981 >>Accept Key Ingredients
    .target Alphonse Dumas
step
    >>Get |cRXP_LOOT_4 [Thick Leather]|r and |cRXP_LOOT_12 [Iron Bar]|r: Auction House, or skin and mine/smelt them yourself
    .complete 94981,1 --Thick Leather
    .complete 94981,2 --Iron Bar
step
    .goto 2548,64.46,82.03
    >>Talk to |cRXP_FRIENDLY_Alphonse Dumas|r
    .turnin 94981 >>Turn in Key Ingredients
    .target Alphonse Dumas
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - Attunements
#groupweight 72
#subgroup Keys and attunements
#name 41-49 Scepter of Celebras (A)
#displayname 41-49 Scepter of Celebras (A)
step
    +|cRXP_WARN_Scepter of Celebras: the shortcut portal to inner Maraudon (Princess Theradras).|r Click to start.
    *Legends of Maraudon: Celebrian Rod (Noxxion, orange side) and Celebrian Diamond (Lord Vyletongue, purple side), then defeat Celebras the Cursed and follow his ritual.
step
    .goto 1443,32.1,63.96
    >>Talk to |cRXP_FRIENDLY_Cavindra|r
    .accept 7044 >>Accept Legends of Maraudon
    .target Cavindra
step
    .goto 1443,29.1,62.5
    *|cRXP_WARN_Inside Maraudon: bring a group.|r
    >>Collect |cRXP_LOOT_[Celebrian Diamond]|r from |cRXP_ENEMY_Lord Vyletongue|r. Collect |cRXP_LOOT_[Celebrian Rod]|r from |cRXP_ENEMY_Noxxion|r, |cRXP_ENEMY_Noxxion's Spawn|r
    *Recover the two parts of the Scepter of Celebras: the Celebrian Rod and the Celebrian Diamond.
    .complete 7044,1 --Legends of Maraudon
    .complete 7044,2 --Legends of Maraudon
    .mob Lord Vyletongue
    .mob Noxxion
    .mob Noxxion's Spawn
step
    .goto 1443,32.1,63.96
    >>Talk to |cRXP_FRIENDLY_Cavindra|r
    .turnin 7044 >>Turn in Legends of Maraudon
    .target Cavindra
step
    +|cRXP_WARN_Done:|r Scepter of Celebras (A). Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - Attunements
#groupweight 72
#subgroup Keys and attunements
#name 41-49 Scepter of Celebras (H)
#displayname 41-49 Scepter of Celebras (H)
step
    +|cRXP_WARN_Scepter of Celebras: the shortcut portal to inner Maraudon (Princess Theradras).|r Click to start.
    *Legends of Maraudon: Celebrian Rod (Noxxion, orange side) and Celebrian Diamond (Lord Vyletongue, purple side), then defeat Celebras the Cursed and follow his ritual.
step
    .goto 1443,32.1,63.96
    >>Talk to |cRXP_FRIENDLY_Cavindra|r
    .accept 7044 >>Accept Legends of Maraudon
    .target Cavindra
step
    .goto 1443,29.1,62.5
    *|cRXP_WARN_Inside Maraudon: bring a group.|r
    >>Collect |cRXP_LOOT_[Celebrian Diamond]|r from |cRXP_ENEMY_Lord Vyletongue|r. Collect |cRXP_LOOT_[Celebrian Rod]|r from |cRXP_ENEMY_Noxxion|r, |cRXP_ENEMY_Noxxion's Spawn|r
    *Recover the two parts of the Scepter of Celebras: the Celebrian Rod and the Celebrian Diamond.
    .complete 7044,1 --Legends of Maraudon
    .complete 7044,2 --Legends of Maraudon
    .mob Lord Vyletongue
    .mob Noxxion
    .mob Noxxion's Spawn
step
    .goto 1443,32.1,63.96
    >>Talk to |cRXP_FRIENDLY_Cavindra|r
    .turnin 7044 >>Turn in Legends of Maraudon
    .target Cavindra
step
    +|cRXP_WARN_Done:|r Scepter of Celebras (H). Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Peon Journey - Attunements
#groupweight 72
#subgroup Keys and attunements
#name 45-50 Mallet of Zul'Farrak (A)
#displayname 45-50 Mallet of Zul'Farrak (A)
step
    +|cRXP_WARN_Mallet of Zul'Farrak|r: summons Gahz'rilla in Zul'Farrak (optional boss). Not a quest: a drop plus an altar. Click to start.
step
    .goto 1425,48.64,68.24
    >>Kill |cRXP_ENEMY_Qiaga the Keeper|r (level 50 elite, at the Altar of Zul) and loot |cRXP_LOOT_[Sacred Mallet]|r. Bring a friend.
    .collect 9241,1
    .mob Qiaga the Keeper
step
    .goto 1425,59.68,77.83
    >>Climb to the top of Jintha'Alor and use the |cRXP_LOOT_[Sacred Mallet]|r at the altar there: it becomes the |cRXP_LOOT_[Mallet of Zul'Farrak]|r
    .collect 9240,1
    .use 9241
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde
#group Peon Journey - Attunements
#groupweight 72
#subgroup Keys and attunements
#name 45-50 Mallet of Zul'Farrak (H)
#displayname 45-50 Mallet of Zul'Farrak (H)
step
    +|cRXP_WARN_Mallet of Zul'Farrak|r: summons Gahz'rilla in Zul'Farrak (optional boss). Not a quest: a drop plus an altar. Click to start.
step
    .goto 1425,48.64,68.24
    >>Kill |cRXP_ENEMY_Qiaga the Keeper|r (level 50 elite, at the Altar of Zul) and loot |cRXP_LOOT_[Sacred Mallet]|r. Bring a friend.
    .collect 9241,1
    .mob Qiaga the Keeper
step
    .goto 1425,59.68,77.83
    >>Climb to the top of Jintha'Alor and use the |cRXP_LOOT_[Sacred Mallet]|r at the altar there: it becomes the |cRXP_LOOT_[Mallet of Zul'Farrak]|r
    .collect 9240,1
    .use 9241
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
#group Peon Journey - Attunements
#groupweight 72
#subgroup Keys and attunements
#name 1 Dungeon keys that drop (info)
#displayname 1 Dungeon keys that drop (info)
step
    +|cRXP_WARN_Dungeon keys that drop (info)|r. Read, then click to close.
    *Prison Cell Key (Blackrock Depths): opens the Detention Block cells. Drops from High Interrogator Gerstahn about half the time; rogues can pick the locks.
    *Key to the City (Stratholme): opens the Service Gate (Stratholme Undead) and inner gates. Drops from Magistrate Barthilas.
    *Crescent Key (Dire Maul): opens Dire Maul West and North. Drops from Pusillin in Dire Maul East (chase him); 300 Lockpicking works too.
    *Gordok Courtyard Key (Dire Maul North): in Fengus's Chest. Gordok Inner Door Key: from Guard Mol'dar.
    *Workshop Key (Gnomeregan): opens the back door. Drops from Electrocutioner 6000.
    *The Scarlet Key (Scarlet Monastery): opens Armory and Cathedral. In Doan's Strongbox behind Arcanist Doan (Library).
    *Overseer's Keyring (Alcaz Prison, new): opens the lower floor. Drops from Overseer Wrex on the upper floor.
    *Krol'dok Ogre Key (Krol'dok Stronghold, new): drops from Overlord Mugg; may open a shortcut door (unconfirmed).
    *Shaper's Terrace (new): 15 Power Crystals of one colour (Un'Goro) summon that colour's boss at an Archival Panel. Not needed to enter.
    *Mallet of Zul'Farrak and the Scepter of Celebras have their own guides in this group.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
#group Peon Journey - Attunements
#groupweight 72
#subgroup Keys and attunements
#name 60 Forever raids: who needs an attunement (info)
#displayname 60 Forever raids: who needs an attunement (info)
step
    +|cRXP_WARN_Forever raids: who needs an attunement (info)|r. Read, then click to close.
    *Onyxia's Lair: the only raid attunement in Forever, per character (the amulet only has to be in your bags).
    *Alliance: the Classic chain from Dragonkin Menace (Helendis Riverhorn, Burning Steppes, level 48+). Horde: new first quest Blood and Thunder (Warlord Goretooth, Kargath, 55+), then the Classic chain. Both are guides here.
    *Hyjal Summit (20 players): no attunement, any level 60 can enter.
    *Barrow Deeps (10 players): no attunement. Entrances in Mount Hyjal, Winterspring and Blackmaw Hold. The Brooch of the Wardens opens an inner part (how to get it is not known yet).
    *Molten Core: not in Forever yet (the quest is in the data). Its guide here is for when it opens.
    *Blackwing Lair: not announced for Forever. Its guide here is for later.
]])
