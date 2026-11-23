RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Rogue
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 10 Blade of Cunning
#displayname 10 Blade of Cunning
step
    +|cRXP_WARN_ITEM: Blade of Cunning|r. Click to start.
    *Reward: Blade of Cunning
    *|cffffd200OK|r [Blade of Cunning]: One-Hand Dagger, 6.75 DPS, +2 Agility - usable Backstab dagger at 10, low item level
    *Why: Early dagger upgrade every rogue gets at 10
step
    .goto 1438,56.38,60.14
    >>Talk to |cRXP_FRIENDLY_Jannok Breezesong|r
    .accept 2241 >>Accept The Apple Falls
    .target Jannok Breezesong
step
    .goto 1457,36.99,21.91
    >>Talk to |cRXP_FRIENDLY_Syurna|r
    .turnin 2241 >>Turn in The Apple Falls
    .accept 2242 >>Accept Destiny Calls
    .target Syurna
step
    >>Collect |cRXP_LOOT_[Sethir's Journal]|r
    *Find Sethir the Ancient and bring back any clues that you may discover to Syurna.
    .complete 2242,1 --Destiny Calls
step
    .goto 1457,36.99,21.91
    >>Talk to |cRXP_FRIENDLY_Syurna|r
    .turnin 2242 >>Turn in Destiny Calls
    .target Syurna
step
    .goto 1426,47.56,52.61
    >>Talk to |cRXP_FRIENDLY_Hogral Bakkan|r
    .accept 2218 >>Accept Road to Salvation
    .target Hogral Bakkan
step
    .goto 1455,51.96,14.84
    >>Talk to |cRXP_FRIENDLY_Hulfdan Blackbeard|r
    .turnin 2218 >>Turn in Road to Salvation
    .accept 2238 >>Accept Simple Subterfugin'
    .target Hulfdan Blackbeard
step
    .goto 1426,25.16,44.45
    >>Talk to |cRXP_FRIENDLY_Onin MacHammar|r
    .turnin 2238 >>Turn in Simple Subterfugin'
    .accept 2239 >>Accept Onin's Report
    .target Onin MacHammar
step
    .goto 1455,51.96,14.84
    >>Talk to |cRXP_FRIENDLY_Hulfdan Blackbeard|r
    .turnin 2239 >>Turn in Onin's Report
    .target Hulfdan Blackbeard
step
    .goto 1429,43.87,65.94
    >>Talk to |cRXP_FRIENDLY_Keryn Sylvius|r
    .accept 2205 >>Accept Seek out SI: 7
    .target Keryn Sylvius
step
    .goto 1453,78.31,70.74
    >>Talk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 2205 >>Turn in Seek out SI: 7
    .accept 2206 >>Accept Snatch and Grab
    .target Master Mathias Shaw
step
    .goto 1429,48.06,86.96
    >>Collect |cRXP_LOOT_[Defias Shipping Schedule]|r from |cRXP_ENEMY_Defias Dockmaster|r
    *Find the Defias Dockmaster and recover the Shipping Schedule for Master Mathias Shaw.
    .complete 2206,1 --Snatch and Grab
    .mob Defias Dockmaster
step
    .goto 1453,78.31,70.74
    >>Talk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 2206 >>Turn in Snatch and Grab
    .target Master Mathias Shaw
step
    +|cRXP_WARN_Done:|r Blade of Cunning. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Rogue
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 20-29
#name 20-24 Poisons
#displayname 20-24 Poisons
step
    +|cRXP_WARN_ITEM: Poisons|r. Click to start.
    *Reward: Recipe: Thistle Tea (instant 100 Energy, 5 min cooldown) plus Poisons
    *Why: Thistle Tea recipe is the item reward; required anyway for poisons
    *Forever: classic unchanged (no change reported)
step
    .goto 1453,78.31,70.74
    >>Talk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .accept 2360 >>Accept Mathias and the Defias
    .target Master Mathias Shaw
step
    .goto 1436,68.49,70.08
    >>Talk to |cRXP_FRIENDLY_Agent Kearnen|r
    .turnin 2360 >>Turn in Mathias and the Defias
    .accept 2359 >>Accept Klaven's Tower
    .target Agent Kearnen
step
    .goto 1436,70.41,73.93
    >>Collect |cRXP_LOOT_[Klaven Mortwake's Journal]|r from |cRXP_PICK_Duskwood Chest|r. Collect |cRXP_LOOT_[Defias Tower Key]|r from |cRXP_ENEMY_Malformed Defias Drone|r
    *Steal the Defias Tower Key, break into the Defias Tower and uncover the contents of the Duskwood Chest. Take whatever information you find back to Mathias Shaw in Stormwind. Read Kearnen's Journal to gain insight about the tower.
    .complete 2359,1 --Klaven's Tower
    .complete 2359,2 --Klaven's Tower
    .mob Malformed Defias Drone
step
    .goto 1453,78.31,70.74
    >>Talk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 2359 >>Turn in Klaven's Tower
    .accept 2607 >>Accept The Touch of Zanzil
    .target Master Mathias Shaw
step
    .goto 1453,80.06,69.9
    >>Talk to |cRXP_FRIENDLY_Doc Mixilpixil|r
    .turnin 2607 >>Turn in The Touch of Zanzil
    .target Doc Mixilpixil
step
    .goto 1433,22.97,52.32
    >>Talk to |cRXP_FRIENDLY_Arantir|r
    .accept 2358 >>Accept Horns of Nez'ra
    .target Arantir
step
    .goto 1433,61.3,53.34
    >>Collect |cRXP_LOOT_[Horns of Nez'ra]|r from |cRXP_ENEMY_Incinerator Gar'im|r, |cRXP_ENEMY_Blackrock Champion|r, |cRXP_ENEMY_Blackrock Shadowcaster|r
    *Return the Horns of Nez'ra to Arantir's Shadow in Lakeshire.
    .complete 2358,1 --Horns of Nez'ra
    .mob Incinerator Gar'im
    .mob Blackrock Champion
step
    .goto 1433,22.97,52.32
    >>Talk to |cRXP_FRIENDLY_Arantir|r
    .turnin 2358 >>Turn in Horns of Nez'ra
    .target Arantir
step
    +|cRXP_WARN_Done:|r Poisons. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Rogue
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 20-29
#name 20-35 Pyrewood Signet Ring
#displayname 20-35 Pyrewood Signet Ring
step
    +|cRXP_WARN_ITEM: Pyrewood Signet Ring|r. Click to start.
    *Reward: Pyrewood Signet Ring (+4 Agility, +4 Stamina, small hit bonus)
    *|cff40ff40GOOD|r [Pyrewood Signet Ring]: Finger, +4 Agility, +4 Stamina - rare ring with Agi and hit; ring slots are usually empty at this stage. req_level 1 is from the item json (tooltip shows none)
    *|cff40ff40GOOD|r [Ruby-Adorned Blade]: One-Hand Sword, 23.91 DPS, +3 Agility, +8 Stamina - rare ilvl 36 sword at req 25; strong main hand for a sword rogue
    *Why: Free ring and the required step to unlock the Eye of Bhossca; horn is in Shadowfang Keep, solo only
    *Forever: new in Forever (reworked from a Season of Discovery chain)
step
    .goto 1421,47.12,70.99
    >>Click the |cRXP_PICK_Dead Drop|r
    .accept 78261 >>Accept The Horn of Xelthos
step
    .goto 1421,47.12,70.99
    >>Click the |cRXP_PICK_Dead Drop|r
    .turnin 78261 >>Turn in The Horn of Xelthos
    .accept 78676 >>Accept The Eye of Bhossca
step
    >>Collect |cRXP_LOOT_[Eye of Bhossca]|r from |cRXP_PICK_Padlocked Reliquary|r
    *Find The Eye of Bhossca inside of the Scarlet Monastery. Then, return it to C's dead drop near Pyrewood Village. You must complete the job alone.
    .complete 78676,1 --The Eye of Bhossca
step
    .goto 1421,47.12,70.99
    >>Click the |cRXP_PICK_Dead Drop|r
    .turnin 78676 >>Turn in The Eye of Bhossca
step
    +|cRXP_WARN_Done:|r Pyrewood Signet Ring. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Rogue
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 50-60
#name 50-52 Duskbat Drape / Ebon Mask +
#displayname 50-52 Duskbat Drape / Ebon Mask +
step
    +|cRXP_WARN_ITEM: Duskbat Drape / Ebon Mask +|r. Click to start.
    *Reward: Ebon Mask (leather head), Whisperwalk Boots (leather feet), Duskbat Drape (cloak)
    *|cff40ff40GOOD|r [Duskbat Drape]: Back (Cloak), 37 armor, +14 Agility - +14 Agi cloak is very good for a rogue at 50
    *|cff40ff40GOOD|r [Ebon Mask]: Head Leather, 122 armor, +14 Stamina - 1% crit + 36 AP head; great for a rogue at 50
    *|cff40ff40GOOD|r [Whisperwalk Boots]: Feet Leather, 104 armor, +17 Agility, +4 Stamina - +17 Agi boots; very good for a rogue at 50
    *Why: Rare leather/cloak; pickpocket the Sealed Azure Bag in Azshara, kill Morphaz in the temple
    *|cRXP_WARN_Needs a group for part of it.|r
    *Forever: changed in Forever: 12,400 XP; all-three-items vs pick-one is unverified
step
    .goto 1457,37.92,20.92
    >>Talk to |cRXP_FRIENDLY_Anishar|r
    .accept 8233 >>Accept A Simple Request
    .target Anishar
step
    .goto 1416,86.02,78.88
    >>Talk to |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .turnin 8233 >>Turn in A Simple Request
    .accept 8234 >>Accept Sealed Azure Bag
    .target Lord Jorach Ravenholdt
step
    .goto 1447,45.36,24.96
    >>Collect |cRXP_LOOT_[Sealed Azure Bag]|r from |cRXP_ENEMY_Blackmaw Shaman|r
    *Retrieve the Sealed Azure Bag from the Timbermaw Shaman in Azshara. Then take the bag to Archmage Xylem, also found in Azshara.
    .complete 8234,1 --Sealed Azure Bag
    .mob Blackmaw Shaman
step
    .goto 1447,29.25,40.21
    >>Talk to |cRXP_FRIENDLY_Archmage Xylem|r
    .turnin 8234 >>Turn in Sealed Azure Bag
    .accept 8235 >>Accept Encoded Fragments
    .target Archmage Xylem
step
    .goto 1447,57.12,19.33
    >>Collect |cRXP_LOOT_[Encoded Fragment]|r from |cRXP_ENEMY_Thunderhead Stagwing|r, |cRXP_ENEMY_Thunderhead Skystormer|r, |cRXP_ENEMY_Thunderhead Patriarch|r
    *Bring 10 Encoded Fragments to Archmage Xylem in Azshara.
    .complete 8235,1 --Encoded Fragments
    .mob Thunderhead Stagwing
    .mob Thunderhead Skystormer
step
    .goto 1447,29.25,40.21
    >>Talk to |cRXP_FRIENDLY_Archmage Xylem|r
    .turnin 8235 >>Turn in Encoded Fragments
    .accept 8236 >>Accept The Azure Key
    .target Archmage Xylem
step
    .goto 1435,69.9,53.5
    *|cRXP_WARN_Inside The Temple of Atal'Hakkar: bring a group.|r
    >>Collect |cRXP_LOOT_[Azure Key]|r from |cRXP_ENEMY_Morphaz|r
    *Return the Azure Key to Lord Jorach Ravenholdt.
    .complete 8236,1 --The Azure Key
    .mob Morphaz
step
    .goto 1416,86.02,78.88
    >>Talk to |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .turnin 8236 >>Turn in The Azure Key
    .target Lord Jorach Ravenholdt
step
    +|cRXP_WARN_Done:|r Duskbat Drape / Ebon Mask +. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Rogue
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 50-60
#name 57-60 Ravenholdt intro
#displayname 57-60 Ravenholdt intro
step
    +|cRXP_WARN_MUST DO: Ravenholdt intro|r. Click to start.
    *Reward: Ravenholdt reputation (Syndicate Sabotage gives 100 Ravenholdt rep, no item); not an ability
step
    .goto 1416,81.45,76.86
    >>Talk to |cRXP_FRIENDLY_Ravenholdt Guard|r
    .accept 6701 >>Accept Syndicate Emblems
    .target Ravenholdt Guard
step
    >>Collect |cRXP_LOOT_[Syndicate Emblem]|r
    .complete 6701,1 --Syndicate Emblems
step
    .goto 1416,81.45,76.86
    >>Talk to |cRXP_FRIENDLY_Ravenholdt Guard|r
    .turnin 6701 >>Turn in Syndicate Emblems
    .target Ravenholdt Guard
step
    +|cRXP_WARN_Done:|r Ravenholdt intro. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Rogue Undead
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 10-13 Blade of Cunning (Undead)
#displayname 10-13 Blade of Cunning (Undead)
step
    +|cRXP_WARN_ITEM: Blade of Cunning|r. Click to start.
    *Reward: Blade of Cunning
    *|cffffd200OK|r [Blade of Cunning]: One-Hand Dagger, 6.75 DPS, +2 Agility - usable Backstab dagger at 10, low item level
    *Why: Early dagger upgrade every rogue gets at 10
step
    .goto 1420,61.75,52
    >>Talk to |cRXP_FRIENDLY_Marion Call|r
    .accept 1885 >>Accept Mennet Carkad << Undead
    .target Marion Call
step
    .goto 1458,83.51,69.11
    >>Talk to |cRXP_FRIENDLY_Mennet Carkad|r
    .turnin 1885 >>Turn in Mennet Carkad << Undead
    .accept 1886 >>Accept The Deathstalkers << Undead
    .target Mennet Carkad
step
    .goto 1421,49.71,32.22
    >>Collect |cRXP_LOOT_[Astor's Letter of Introduction]|r from |cRXP_ENEMY_Astor Hadren|r
    *Get Astor's Letter of Introduction and return it to Mennet Carkad in the Rogues' Quarter.
    .complete 1886,1 << Undead --The Deathstalkers
    .mob Astor Hadren
step
    .goto 1458,83.51,69.11
    >>Talk to |cRXP_FRIENDLY_Mennet Carkad|r
    .turnin 1886 >>Turn in The Deathstalkers << Undead
    .accept 1898 >>Accept The Deathstalkers << Undead
    .target Mennet Carkad
step
    .goto 1458,54.81,76.33
    >>Talk to |cRXP_FRIENDLY_Andron Gant|r
    .turnin 1898 >>Turn in The Deathstalkers << Undead
    .accept 1899 >>Accept The Deathstalkers << Undead
    .target Andron Gant
step
    .goto 1458,55.4,76.96
    >>Collect |cRXP_LOOT_[Andron's Ledger]|r from |cRXP_PICK_Andron's Bookshelf|r
    *Bring Andron's Ledger to Mennet Carkad in the Rogues' Quarter of Undercity.
    .complete 1899,1 << Undead --The Deathstalkers
step
    .goto 1458,83.51,69.11
    >>Talk to |cRXP_FRIENDLY_Mennet Carkad|r
    .turnin 1899 >>Turn in The Deathstalkers << Undead
    .accept 1978 >>Accept The Deathstalkers << Undead
    .target Mennet Carkad
step
    .goto 1458,56.25,92.2
    >>Talk to |cRXP_FRIENDLY_Varimathras|r
    .turnin 1978 >>Turn in The Deathstalkers << Undead
    .target Varimathras
step
    +|cRXP_WARN_Done:|r Blade of Cunning. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Rogue
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 20-29
#name 20 Poisons
#displayname 20 Poisons
step
    +|cRXP_WARN_ITEM: Poisons|r. Click to start.
    *Reward: Recipe: Thistle Tea (instant 100 Energy, 5 min cooldown) plus Poisons
    *Why: Thistle Tea recipe is the item reward; required anyway for poisons
    *Forever: classic unchanged (no change reported)
step
    .goto 1458,83.51,69.11
    >>Talk to |cRXP_FRIENDLY_Mennet Carkad|r
    .accept 2378 >>Accept Find the Shattered Hand
    .target Mennet Carkad
step
    .goto 1454,43.05,53.74
    >>Talk to |cRXP_FRIENDLY_Shenthul|r
    .turnin 2378 >>Turn in Find the Shattered Hand
    .accept 2379 >>Accept Zando'zan
    .accept 2460 >>Accept The Shattered Salute
    .target Shenthul
step
    .goto 1454,42.73,52.95
    >>Talk to |cRXP_FRIENDLY_Zando'zan|r
    .turnin 2379 >>Turn in Zando'zan
    .target Zando'zan
step
    .goto 1454,43.05,53.74
    >>Talk to |cRXP_FRIENDLY_Shenthul|r
    .turnin 2460 >>Turn in The Shattered Salute
    .target Shenthul
step
    .goto 1454,42.73,52.95
    >>Talk to |cRXP_FRIENDLY_Zando'zan|r
    .accept 2382 >>Accept Wrenix of Ratchet
    .target Zando'zan
step
    .goto 1454,43.05,53.74
    >>Talk to |cRXP_FRIENDLY_Shenthul|r
    .accept 2458 >>Accept Deep Cover
    .target Shenthul
step
    .goto 1413,63.07,36.32
    >>Talk to |cRXP_FRIENDLY_Wrenix the Wretched|r
    .turnin 2382 >>Turn in Wrenix of Ratchet
    .accept 2381 >>Accept Plundering the Plunderers
    .target Wrenix the Wretched
step
    >>Collect |cRXP_LOOT_[Southsea Treasure]|r from |cRXP_ENEMY_Polly|r
    *Bring the Southsea Treasure back to Wrenix the Wretched in Ratchet. Do not forget to get an E.C.A.C. and Thieves' Tools from Wrenix's Gizmotronic Apparatus. You will need both of these items to complete your mission.
    .complete 2381,1 --Plundering the Plunderers
    .mob Polly
step
    .goto 1413,63.07,36.32
    >>Talk to |cRXP_FRIENDLY_Wrenix the Wretched|r
    .turnin 2381 >>Turn in Plundering the Plunderers
    .target Wrenix the Wretched
step
    .goto 1413,55.44,5.56
    >>Talk to |cRXP_FRIENDLY_Taskmaster Fizzule|r
    .turnin 2458 >>Turn in Deep Cover
    .target Taskmaster Fizzule
step
    +|cRXP_WARN_Done:|r Poisons. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Rogue
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 20-29
#name 20-35 Pyrewood Signet Ring
#displayname 20-35 Pyrewood Signet Ring
step
    +|cRXP_WARN_ITEM: Pyrewood Signet Ring|r. Click to start.
    *Reward: Pyrewood Signet Ring (+4 Agility, +4 Stamina, small hit bonus)
    *|cff40ff40GOOD|r [Pyrewood Signet Ring]: Finger, +4 Agility, +4 Stamina - rare ring with Agi and hit; ring slots are usually empty at this stage. req_level 1 is from the item json (tooltip shows none)
    *|cff40ff40GOOD|r [Ruby-Adorned Blade]: One-Hand Sword, 23.91 DPS, +3 Agility, +8 Stamina - rare ilvl 36 sword at req 25; strong main hand for a sword rogue
    *Why: Free ring and the required step to unlock the Eye of Bhossca; horn is in Shadowfang Keep, solo only
    *Forever: new in Forever (reworked from a Season of Discovery chain)
step
    .goto 1421,47.12,70.99
    >>Click the |cRXP_PICK_Dead Drop|r
    .accept 78261 >>Accept The Horn of Xelthos
step
    .goto 1421,47.12,70.99
    >>Click the |cRXP_PICK_Dead Drop|r
    .turnin 78261 >>Turn in The Horn of Xelthos
    .accept 78676 >>Accept The Eye of Bhossca
step
    >>Collect |cRXP_LOOT_[Eye of Bhossca]|r from |cRXP_PICK_Padlocked Reliquary|r
    *Find The Eye of Bhossca inside of the Scarlet Monastery. Then, return it to C's dead drop near Pyrewood Village. You must complete the job alone.
    .complete 78676,1 --The Eye of Bhossca
step
    .goto 1421,47.12,70.99
    >>Click the |cRXP_PICK_Dead Drop|r
    .turnin 78676 >>Turn in The Eye of Bhossca
step
    +|cRXP_WARN_Done:|r Pyrewood Signet Ring. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Rogue
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 50-60
#name 50-52 Duskbat Drape / Ebon Mask +
#displayname 50-52 Duskbat Drape / Ebon Mask +
step
    +|cRXP_WARN_ITEM: Duskbat Drape / Ebon Mask +|r. Click to start.
    *Reward: Ebon Mask (leather head), Whisperwalk Boots (leather feet), Duskbat Drape (cloak)
    *|cff40ff40GOOD|r [Duskbat Drape]: Back (Cloak), 37 armor, +14 Agility - +14 Agi cloak is very good for a rogue at 50
    *|cff40ff40GOOD|r [Ebon Mask]: Head Leather, 122 armor, +14 Stamina - 1% crit + 36 AP head; great for a rogue at 50
    *|cff40ff40GOOD|r [Whisperwalk Boots]: Feet Leather, 104 armor, +17 Agility, +4 Stamina - +17 Agi boots; very good for a rogue at 50
    *Why: Rare leather/cloak; pickpocket the Sealed Azure Bag in Azshara, kill Morphaz in the temple
    *|cRXP_WARN_Needs a group for part of it.|r
    *Forever: changed in Forever: 12,400 XP; all-three-items vs pick-one is unverified
step
    .goto 1454,43.9,54.63
    >>Talk to |cRXP_FRIENDLY_Ormok|r
    .accept 8233 >>Accept A Simple Request
    .target Ormok
step
    .goto 1416,86.02,78.88
    >>Talk to |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .turnin 8233 >>Turn in A Simple Request
    .accept 8234 >>Accept Sealed Azure Bag
    .target Lord Jorach Ravenholdt
step
    .goto 1447,45.36,24.96
    >>Collect |cRXP_LOOT_[Sealed Azure Bag]|r from |cRXP_ENEMY_Blackmaw Shaman|r
    *Retrieve the Sealed Azure Bag from the Timbermaw Shaman in Azshara. Then take the bag to Archmage Xylem, also found in Azshara.
    .complete 8234,1 --Sealed Azure Bag
    .mob Blackmaw Shaman
step
    .goto 1447,29.25,40.21
    >>Talk to |cRXP_FRIENDLY_Archmage Xylem|r
    .turnin 8234 >>Turn in Sealed Azure Bag
    .accept 8235 >>Accept Encoded Fragments
    .target Archmage Xylem
step
    .goto 1447,57.12,19.33
    >>Collect |cRXP_LOOT_[Encoded Fragment]|r from |cRXP_ENEMY_Thunderhead Stagwing|r, |cRXP_ENEMY_Thunderhead Skystormer|r, |cRXP_ENEMY_Thunderhead Patriarch|r
    *Bring 10 Encoded Fragments to Archmage Xylem in Azshara.
    .complete 8235,1 --Encoded Fragments
    .mob Thunderhead Stagwing
    .mob Thunderhead Skystormer
step
    .goto 1447,29.25,40.21
    >>Talk to |cRXP_FRIENDLY_Archmage Xylem|r
    .turnin 8235 >>Turn in Encoded Fragments
    .accept 8236 >>Accept The Azure Key
    .target Archmage Xylem
step
    .goto 1435,69.9,53.5
    *|cRXP_WARN_Inside The Temple of Atal'Hakkar: bring a group.|r
    >>Collect |cRXP_LOOT_[Azure Key]|r from |cRXP_ENEMY_Morphaz|r
    *Return the Azure Key to Lord Jorach Ravenholdt.
    .complete 8236,1 --The Azure Key
    .mob Morphaz
step
    .goto 1416,86.02,78.88
    >>Talk to |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .turnin 8236 >>Turn in The Azure Key
    .target Lord Jorach Ravenholdt
step
    +|cRXP_WARN_Done:|r Duskbat Drape / Ebon Mask +. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Rogue
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 50-60
#name 57-60 Ravenholdt intro
#displayname 57-60 Ravenholdt intro
step
    +|cRXP_WARN_MUST DO: Ravenholdt intro|r. Click to start.
    *Reward: Ravenholdt reputation (Syndicate Sabotage gives 100 Ravenholdt rep, no item); not an ability
step
    .goto 1416,81.45,76.86
    >>Talk to |cRXP_FRIENDLY_Ravenholdt Guard|r
    .accept 6701 >>Accept Syndicate Emblems
    .target Ravenholdt Guard
step
    >>Collect |cRXP_LOOT_[Syndicate Emblem]|r
    .complete 6701,1 --Syndicate Emblems
step
    .goto 1416,81.45,76.86
    >>Talk to |cRXP_FRIENDLY_Ravenholdt Guard|r
    .turnin 6701 >>Turn in Syndicate Emblems
    .target Ravenholdt Guard
step
    +|cRXP_WARN_Done:|r Ravenholdt intro. Enjoy the loot. Click to finish.
]])
