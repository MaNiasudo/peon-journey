RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Warrior
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 10 Elunite Axe / Elunite Sword +
#displayname 10 Elunite Axe / Elunite Sword +
step
    +|cRXP_WARN_ITEM: Elunite Axe / Elunite Sword +|r. Click to start.
    *Reward: Weapons of Elunite: choose Elunite Axe, Elunite Hammer, Elunite Dagger or Elunite Sword
    *Why: Free level 10 weapon of your choice from Smith Mathiel, optional add-on to the Defensive Stance chain
    *Forever: classic unchanged (Classic quest kept in Forever, no reward change reported)
step
    .goto 1438,56.22,59.2
    >>Talk to |cRXP_FRIENDLY_Kyra Windblade|r
    .accept 1684 >>Accept Elanaria
    .target Kyra Windblade
step
    .goto 1457,57.3,34.61
    >>Talk to |cRXP_FRIENDLY_Elanaria|r
    .turnin 1684 >>Turn in Elanaria
    .accept 1683 >>Accept Vorlus Vilehoof
    .target Elanaria
step
    .goto 1438,47.25,63.6
    >>Collect |cRXP_LOOT_[Horn of Vorlus]|r from |cRXP_ENEMY_Vorlus Vilehoof|r
    *Bring the Horn of Vorlus to Elanaria in Darnassus.
    .complete 1683,1 --Vorlus Vilehoof
    .mob Vorlus Vilehoof
step
    .goto 1457,57.3,34.61
    >>Talk to |cRXP_FRIENDLY_Elanaria|r
    .turnin 1683 >>Turn in Vorlus Vilehoof
    .accept 1686 >>Accept The Shade of Elura
    .target Elanaria
step
    .goto 1439,31.74,45.96
    >>Collect |cRXP_LOOT_[Elunite Ore]|r from |cRXP_PICK_Crate of Elunite|r. Collect |cRXP_LOOT_[Elura's Medallion]|r from |cRXP_ENEMY_Shade of Elura|r
    *Bring 8 loads of Elunite Ore and the Medallion of Elura to Elanaria in Darnassus.
    .complete 1686,1 --The Shade of Elura
    .complete 1686,2 --The Shade of Elura
    .mob Shade of Elura
step
    .goto 1457,57.3,34.61
    >>Talk to |cRXP_FRIENDLY_Elanaria|r
    .turnin 1686 >>Turn in The Shade of Elura
    .accept 1692 >>Accept Smith Mathiel
    .target Elanaria
step
    .goto 1457,59.51,45.38
    >>Talk to |cRXP_FRIENDLY_Mathiel|r
    .turnin 1692 >>Turn in Smith Mathiel
    .accept 1693 >>Accept Weapons of Elunite
    .target Mathiel
step
    .goto 1457,59.51,45.38
    >>Talk to |cRXP_FRIENDLY_Mathiel|r
    .turnin 1693 >>Turn in Weapons of Elunite
    .target Mathiel
step
    +|cRXP_WARN_Done:|r Elunite Axe / Elunite Sword +. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Warrior Skyborne
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 10 Stormforged Protector (Skyborne)
#displayname 10 Stormforged Protector (Skyborne)
step
    +|cRXP_WARN_ITEM: Stormforged Protector|r. Click to start.
    *Reward: Stormforged Protector (item type and stats unverified) plus Defensive Stance
    *|cffffd200OK|r [Stormforged Protector]: Off Hand Shield, 311 armor, 5 Block, +1 Strength, +1 Stamina - early shield upgrade for a 1H+shield setup
    *Why: Skyborne warriors get an item with their stance; reclaim the Bulwark from Zaal Stormshield at the Shrine of Akir
    *Forever: new in Forever
step
    .goto 2521,59.89,72.87
    >>Talk to |cRXP_FRIENDLY_Seena Skybreaker|r
    .accept 94003 >>Accept The Skybreaker Bulwark << Skyborne
    .target Seena Skybreaker
step
    .goto 2521,56.63,50.37
    >>Collect |cRXP_LOOT_[Skybreaker Bulwark]|r from |cRXP_ENEMY_Zaal Stormshield|r
    *Reclaim the Skybreaker Bulwark from Zaal Stormshield at the Shrine of Akir.
    .complete 94003,1 << Skyborne --The Skybreaker Bulwark
    .mob Zaal Stormshield
step
    .goto 2521,59.89,72.87
    >>Talk to |cRXP_FRIENDLY_Seena Skybreaker|r
    .turnin 94003 >>Turn in The Skybreaker Bulwark << Skyborne
    .target Seena Skybreaker
step
    +|cRXP_WARN_Done:|r Stormforged Protector. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Warrior
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 30-39
#name 30-40 Whirlwind Axe / Whirlwind Warhammer +
#displayname 30-40 Whirlwind Axe / Whirlwind Warhammer +
step
    +|cRXP_WARN_ITEM: Whirlwind Axe / Whirlwind Warhammer +|r. Click to start.
    *Reward: Choose Whirlwind Axe (3.60), Whirlwind Sword (2.90) or Whirlwind Warhammer (3.40); all item level 40, +16 Strength, +15 Stamina, about 35.6 DPS
    *Why: Best two-hander you can get around 30-40; needs 8 Liferoot, 30 Bloodscalp Tusks (STV) and charms from Arathi for the Essence of the Exile
    *|cRXP_WARN_Needs a group for part of it.|r
    *Forever: changed in Forever: stats +16 Str / +15 Sta (Classic +15/+14), turning in unlocks all three appearances for transmog; Cyclonian is a level 40 elite, a healer helps
step
    .goto 1455,70.34,90.65
    >>Talk to |cRXP_FRIENDLY_Kelv Sternhammer|r
    .accept 1718 >>Accept The Islander
    .target Kelv Sternhammer
step
    .goto 1413,68.62,49.16
    >>Talk to |cRXP_FRIENDLY_Klannoc Macleod|r
    .turnin 1718 >>Turn in The Islander
    .accept 1719 >>Accept The Affray
    .target Klannoc Macleod
step
    .goto 1413,68.62,49.16
    >>Kill |cRXP_ENEMY_Big Will|r. Step on the grate to begin the Affray
    *Kill Big Will, then speak to Klannoc Macleod on Fray Island.
    .complete 1719,1 --The Affray
    .complete 1719,2 --The Affray
    .mob Big Will
step
    .goto 1413,68.62,49.16
    >>Talk to |cRXP_FRIENDLY_Klannoc Macleod|r
    .turnin 1719 >>Turn in The Affray
    .accept 1791 >>Accept The Windwatcher
    .target Klannoc Macleod
step
    .goto 1416,80.5,66.92
    >>Talk to |cRXP_FRIENDLY_Bath'rah the Windwatcher|r
    .turnin 1791 >>Turn in The Windwatcher
    .accept 1712 >>Accept Cyclonian
    .target Bath'rah the Windwatcher
step
    .goto 1420,82.6,33.8
    *|cRXP_WARN_Inside Scarlet Monastery: bring a group.|r
    >>Collect |cRXP_LOOT_[Liferoot]|r from |cRXP_ENEMY_Nightbane Dark Runner|r, |cRXP_ENEMY_Nightbane Vile Fang|r, |cRXP_ENEMY_Splinter Fist Warrior|r
    *Bring the items on Bath'rah's Parchment to Bath'rah the Windwatcher in Alterac.
    .complete 1712,1 --Cyclonian
    .mob Nightbane Dark Runner
    .mob Nightbane Vile Fang
step
    .goto 1434,25.66,12.14
    >>Collect |cRXP_LOOT_[Bloodscalp Tusk]|r from |cRXP_ENEMY_Bloodscalp Warrior|r, |cRXP_ENEMY_Bloodscalp Scout|r, |cRXP_ENEMY_Bloodscalp Hunter|r
    *Bring the items on Bath'rah's Parchment to Bath'rah the Windwatcher in Alterac.
    .complete 1712,2 --Cyclonian
    .mob Bloodscalp Warrior
    .mob Bloodscalp Scout
step
    >>Collect |cRXP_LOOT_[Essence of the Exile]|r
    *Bring the items on Bath'rah's Parchment to Bath'rah the Windwatcher in Alterac.
    .complete 1712,3 --Cyclonian
step
    .goto 1416,80.5,66.92
    >>Talk to |cRXP_FRIENDLY_Bath'rah the Windwatcher|r
    .turnin 1712 >>Turn in Cyclonian
    .accept 1713 >>Accept The Summoning
    .target Bath'rah the Windwatcher
step
    >>Collect |cRXP_LOOT_[Whirlwind Heart]|r from |cRXP_ENEMY_Cyclonian|r
    *Bring the Whirlwind Heart to Bath'rah Windwatcher.
    .complete 1713,1 --The Summoning
    .mob Cyclonian
step
    .goto 1416,80.5,66.92
    >>Talk to |cRXP_FRIENDLY_Bath'rah the Windwatcher|r
    .turnin 1713 >>Turn in The Summoning
    .accept 1792 >>Accept Whirlwind Weapon
    .target Bath'rah the Windwatcher
step
    .goto 1416,80.5,66.92
    >>Talk to |cRXP_FRIENDLY_Bath'rah the Windwatcher|r
    .turnin 1792 >>Turn in Whirlwind Weapon
    .target Bath'rah the Windwatcher
step
    +|cRXP_WARN_Done:|r Whirlwind Axe / Whirlwind Warhammer +. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Warrior
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 50-60
#name 50-52 Diamond Flask / Razorsteel Shoulders +
#displayname 50-52 Diamond Flask / Razorsteel Shoulders +
step
    +|cRXP_WARN_ITEM: Diamond Flask / Razorsteel Shoulders +|r. Click to start.
    *Reward: Voodoo Feathers: Fury Visor (plate head), Diamond Flask (warrior trinket), Razorsteel Shoulders (plate shoulders)
    *|cffffd200OK|r [Diamond Flask]: Trinket - decent emergency heal; Str buff much smaller than Classic (+75)
    *|cff40ff40GOOD|r [Razorsteel Shoulders]: Shoulder Plate, 410 armor, +10 Strength, +10 Stamina - Str, Sta and 1% hit; strong warrior shoulders at 50
    *|cff40ff40GOOD|r [Fury Visor]: Head Plate, 445 armor, +18 Strength, +9 Spirit - +18 Str with hit and crit; best DPS pick of the warrior rewards
    *Why: Rare plate and trinket for a dungeon you run anyway; needs two each of the Amber, Blue and Green Voodoo Feathers from the troll guardians
    *|cRXP_WARN_Needs a group for part of it.|r
    *Forever: changed in Forever: 12,400 XP (about double), Diamond Flask reworked into a self-heal plus short Strength buff; Icy Veins says Forever gives all three items, Conquest Capped says p
step
    .goto 1455,70.34,90.65
    >>Talk to |cRXP_FRIENDLY_Kelv Sternhammer|r
    .accept 8417 >>Accept A Troubled Spirit
    .target Kelv Sternhammer
step
    .goto 1435,34.29,66.14
    >>Talk to |cRXP_FRIENDLY_Fallen Hero of the Horde|r
    .turnin 8417 >>Turn in A Troubled Spirit
    .accept 8423 >>Accept Warrior Kinship
    .target Fallen Hero of the Horde
step
    .goto 1419,51.49,53.2
    >>Kill |cRXP_ENEMY_Helboar|r
    *Kill 7 Helboar in the Blasted Lands and return to the Fallen Hero of the Horde.
    .complete 8423,1 --Warrior Kinship
    .mob Helboar
step
    .goto 1435,34.29,66.14
    >>Talk to |cRXP_FRIENDLY_Fallen Hero of the Horde|r
    .turnin 8423 >>Turn in Warrior Kinship
    .accept 8424 >>Accept War on the Shadowsworn
    .target Fallen Hero of the Horde
step
    .goto 1419,67.1,31.36
    >>Kill |cRXP_ENEMY_Shadowsworn Adept|r. Kill |cRXP_ENEMY_Shadowsworn Cultist|r. Kill |cRXP_ENEMY_Shadowsworn Thug|r
    *Slaughter the Shadowsworn in the Blasted Lands and return to the Fallen Hero of the Horde.
    .complete 8424,1 --War on the Shadowsworn
    .complete 8424,2 --War on the Shadowsworn
    .complete 8424,3 --War on the Shadowsworn
    .mob Shadowsworn Adept
    .mob Shadowsworn Cultist
    .mob Shadowsworn Thug
step
    .goto 1435,34.29,66.14
    >>Talk to |cRXP_FRIENDLY_Fallen Hero of the Horde|r
    .turnin 8424 >>Turn in War on the Shadowsworn
    .accept 8425 >>Accept Voodoo Feathers
    .target Fallen Hero of the Horde
step
    >>Collect |cRXP_LOOT_[Amber Voodoo Feather]|r from |cRXP_ENEMY_Gasher|r, |cRXP_ENEMY_Zul'Lor|r, |cRXP_ENEMY_Gasher|r. Collect |cRXP_LOOT_[Blue Voodoo Feather]|r from |cRXP_ENEMY_Hukku|r, |cRXP_ENEMY_Mijan|r, |cRXP_ENEMY_Hukku|r. Collect |cRXP_LOOT_[Green Voodoo Feather]|r from |cRXP_ENEMY_Loro|r, |cRXP_ENEMY_Zolo|r
    *Bring the Voodoo Feathers from the trolls in the Sunken Temple to the Fallen Hero of the Horde.
    .complete 8425,1 --Voodoo Feathers
    .complete 8425,2 --Voodoo Feathers
    .complete 8425,3 --Voodoo Feathers
    .mob Gasher
    .mob Zul'Lor
    .mob Hukku
    .mob Mijan
    .mob Loro
    .mob Zolo
step
    .goto 1435,34.29,66.14
    >>Talk to |cRXP_FRIENDLY_Fallen Hero of the Horde|r
    .turnin 8425 >>Turn in Voodoo Feathers
    .target Fallen Hero of the Horde
step
    +|cRXP_WARN_Done:|r Diamond Flask / Razorsteel Shoulders +. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Warrior Human/Alliance Warrior Dwarf/Alliance Warrior NightElf/Alliance Warrior Gnome
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 10 Defensive Stance (Human/Dwarf/Night Elf/Gnome)
#displayname 10 Defensive Stance (Human/Dwarf/Night Elf/Gnome)
step
    +|cRXP_WARN_MUST DO: Defensive Stance|r. Click to start.
    *Reward: Defensive Stance, Taunt, Sunder Armor
step
    .goto 1438,56.22,59.2
    >>Talk to |cRXP_FRIENDLY_Kyra Windblade|r
    .accept 1684 >>Accept Elanaria
    .target Kyra Windblade
step
    .goto 1457,57.3,34.61
    >>Talk to |cRXP_FRIENDLY_Elanaria|r
    .turnin 1684 >>Turn in Elanaria
    .accept 1683 >>Accept Vorlus Vilehoof
    .target Elanaria
step
    .goto 1429,41.09,65.77
    >>Talk to |cRXP_FRIENDLY_Lyria Du Lac|r
    .accept 1638 >>Accept A Warrior's Training
    .target Lyria Du Lac
step
    .goto 1453,77.13,53.26
    >>Talk to |cRXP_FRIENDLY_Harry Burlguard|r
    .turnin 1638 >>Turn in A Warrior's Training
    .accept 1639 >>Accept Bartleby the Drunk
    .target Harry Burlguard
step
    .goto 1453,76.76,52.55
    >>Talk to |cRXP_FRIENDLY_Bartleby|r
    .turnin 1639 >>Turn in Bartleby the Drunk
    .accept 1640 >>Accept Beat Bartleby
    .target Bartleby
step
    .goto 1453,76.76,52.55
    >>Talk to |cRXP_FRIENDLY_Bartleby|r
    .turnin 1640 >>Turn in Beat Bartleby
    .accept 1665 >>Accept Bartleby's Mug
    .target Bartleby
step
    .goto 1453,77.13,53.26
    >>Talk to |cRXP_FRIENDLY_Harry Burlguard|r
    .turnin 1665 >>Turn in Bartleby's Mug
    .target Harry Burlguard
step
    .goto 1438,47.25,63.6
    >>Collect |cRXP_LOOT_[Horn of Vorlus]|r from |cRXP_ENEMY_Vorlus Vilehoof|r
    *Bring the Horn of Vorlus to Elanaria in Darnassus.
    .complete 1683,1 --Vorlus Vilehoof
    .mob Vorlus Vilehoof
step
    .goto 1457,57.3,34.61
    >>Talk to |cRXP_FRIENDLY_Elanaria|r
    .turnin 1683 >>Turn in Vorlus Vilehoof
    .target Elanaria
step
    +|cRXP_WARN_Done:|r Defensive Stance. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Warrior Skyborne
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 10 Defensive Stance (Skyborne)
#displayname 10 Defensive Stance (Skyborne)
step
    +|cRXP_WARN_MUST DO: Defensive Stance|r. Click to start.
    *Reward: Defensive Stance, Taunt, Sunder Armor
    *|cffffd200OK|r [Stormforged Protector]: Off Hand Shield, 311 armor, 5 Block, +1 Strength, +1 Stamina - early shield upgrade for a 1H+shield setup
step
    .goto 1438,56.22,59.2
    >>Talk to |cRXP_FRIENDLY_Kyra Windblade|r
    .accept 1684 >>Accept Elanaria
    .target Kyra Windblade
step
    .goto 1457,57.3,34.61
    >>Talk to |cRXP_FRIENDLY_Elanaria|r
    .turnin 1684 >>Turn in Elanaria
    .accept 1683 >>Accept Vorlus Vilehoof
    .target Elanaria
step
    .goto 2521,59.89,72.87
    >>Talk to |cRXP_FRIENDLY_Seena Skybreaker|r
    .accept 94003 >>Accept The Skybreaker Bulwark << Skyborne
    .target Seena Skybreaker
step
    .goto 2521,56.63,50.37
    >>Collect |cRXP_LOOT_[Skybreaker Bulwark]|r from |cRXP_ENEMY_Zaal Stormshield|r
    *Reclaim the Skybreaker Bulwark from Zaal Stormshield at the Shrine of Akir.
    .complete 94003,1 << Skyborne --The Skybreaker Bulwark
    .mob Zaal Stormshield
step
    .goto 2521,59.89,72.87
    >>Talk to |cRXP_FRIENDLY_Seena Skybreaker|r
    .turnin 94003 >>Turn in The Skybreaker Bulwark << Skyborne
    .target Seena Skybreaker
step
    .goto 1429,41.09,65.77
    >>Talk to |cRXP_FRIENDLY_Lyria Du Lac|r
    .accept 1638 >>Accept A Warrior's Training
    .target Lyria Du Lac
step
    .goto 1453,77.13,53.26
    >>Talk to |cRXP_FRIENDLY_Harry Burlguard|r
    .turnin 1638 >>Turn in A Warrior's Training
    .accept 1639 >>Accept Bartleby the Drunk
    .target Harry Burlguard
step
    .goto 1453,76.76,52.55
    >>Talk to |cRXP_FRIENDLY_Bartleby|r
    .turnin 1639 >>Turn in Bartleby the Drunk
    .accept 1640 >>Accept Beat Bartleby
    .target Bartleby
step
    .goto 1453,76.76,52.55
    >>Talk to |cRXP_FRIENDLY_Bartleby|r
    .turnin 1640 >>Turn in Beat Bartleby
    .accept 1665 >>Accept Bartleby's Mug
    .target Bartleby
step
    .goto 1453,77.13,53.26
    >>Talk to |cRXP_FRIENDLY_Harry Burlguard|r
    .turnin 1665 >>Turn in Bartleby's Mug
    .target Harry Burlguard
step
    .goto 1438,47.25,63.6
    >>Collect |cRXP_LOOT_[Horn of Vorlus]|r from |cRXP_ENEMY_Vorlus Vilehoof|r
    *Bring the Horn of Vorlus to Elanaria in Darnassus.
    .complete 1683,1 --Vorlus Vilehoof
    .mob Vorlus Vilehoof
step
    .goto 1457,57.3,34.61
    >>Talk to |cRXP_FRIENDLY_Elanaria|r
    .turnin 1683 >>Turn in Vorlus Vilehoof
    .target Elanaria
step
    +|cRXP_WARN_Done:|r Defensive Stance. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Warrior
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 50-60
#name 60 Raid class chains (info)
#displayname 60 Raid class chains (info)
step
    +|cRXP_WARN_Raid or not-yet-open class chains.|r Listed for planning, not guided. Click to close.
    *Quel'Serrar: Quel'Serrar, main-hand sword with a defensive proc (raid)
    *Zandalar Tribe Paragons of Power: Zandalar class set pieces (raid)
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Warrior
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 10 Thun'grim's Axe / Thun'grim's Dagger +
#displayname 10 Thun'grim's Axe / Thun'grim's Dagger +
step
    +|cRXP_WARN_ITEM: Thun'grim's Axe / Thun'grim's Dagger +|r. Click to start.
    *Reward: Forged Steel: choose Thun'grim's Axe, Thun'grim's Mace, Thun'grim's Dagger or Thun'grim's Sword
    *|cffffd200OK|r [Thun'grim's Axe]: Main Hand Axe, 7.78 DPS, +1 Stamina - slowest and highest DPS of the four; good early main hand
    *|cff9d9d9dSKIP|r [Thun'grim's Dagger]: One-Hand Dagger, 7.65 DPS, +1 Stamina - fast dagger is the worst warrior pick; take the axe, mace or sword
    *|cffffd200OK|r [Thun'grim's Mace]: Main Hand Mace, 7.61 DPS, +1 Stamina - fine early main hand; the axe hits harder
    *|cffffd200OK|r [Thun'grim's Sword]: Main Hand Sword, 7.62 DPS, +1 Stamina - fine early main hand; the axe hits harder
    *Why: Optional follow-up after Path of Defense in The Barrens gives a free level 10 weapon
    *Forever: classic unchanged (Classic quest kept in Forever, no reward change reported)
step
    .goto 1412,48.35,63.74
    >>Talk to |cRXP_FRIENDLY_Krang Stonehoof|r
    .accept 1505 >>Accept Veteran Uzzek
    .target Krang Stonehoof
step
    .goto 1413,61.38,21.12
    >>Talk to |cRXP_FRIENDLY_Uzzek|r
    .turnin 1505 >>Turn in Veteran Uzzek
    .accept 1498 >>Accept Path of Defense
    .target Uzzek
step
    .goto 1411,40.5,28.96
    >>Collect |cRXP_LOOT_[Singed Scale]|r from |cRXP_ENEMY_Thunder Lizard|r, |cRXP_ENEMY_Lightning Hide|r
    *Bring 5 Singed Scales to Uzzek at Far Watch Post in the Barrens.
    .complete 1498,1 --Path of Defense
    .mob Thunder Lizard
    .mob Lightning Hide
step
    .goto 1413,61.38,21.12
    >>Talk to |cRXP_FRIENDLY_Uzzek|r
    .turnin 1498 >>Turn in Path of Defense
    .accept 1502 >>Accept Thun'grim Firegaze
    .target Uzzek
step
    .goto 1413,57.23,30.34
    >>Talk to |cRXP_FRIENDLY_Thun'grim Firegaze|r
    .turnin 1502 >>Turn in Thun'grim Firegaze
    .accept 1503 >>Accept Forged Steel
    .target Thun'grim Firegaze
step
    .goto 1413,55.05,26.65
    >>Collect |cRXP_LOOT_[Forged Steel Bars]|r from |cRXP_PICK_Stolen Iron Chest|r
    *Bring the Forged Steel Bars to Thun'grim Firegaze in the Barrens.
    .complete 1503,1 --Forged Steel
step
    .goto 1413,57.23,30.34
    >>Talk to |cRXP_FRIENDLY_Thun'grim Firegaze|r
    .turnin 1503 >>Turn in Forged Steel
    .target Thun'grim Firegaze
step
    +|cRXP_WARN_Done:|r Thun'grim's Axe / Thun'grim's Dagger +. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Warrior Skyborne
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 10 Stormforged Protector (Skyborne)
#displayname 10 Stormforged Protector (Skyborne)
step
    +|cRXP_WARN_ITEM: Stormforged Protector|r. Click to start.
    *Reward: Stormforged Protector (item type and stats unverified) plus Defensive Stance
    *|cffffd200OK|r [Stormforged Protector]: Off Hand Shield, 311 armor, 5 Block, +1 Strength, +1 Stamina - early shield upgrade for a 1H+shield setup
    *Why: Skyborne warriors get an item with their stance; reclaim the Bulwark from Zaal Stormshield at the Shrine of Akir
    *Forever: new in Forever
step
    .goto 2521,59.89,72.87
    >>Talk to |cRXP_FRIENDLY_Seena Skybreaker|r
    .accept 94003 >>Accept The Skybreaker Bulwark << Skyborne
    .target Seena Skybreaker
step
    .goto 2521,56.63,50.37
    >>Collect |cRXP_LOOT_[Skybreaker Bulwark]|r from |cRXP_ENEMY_Zaal Stormshield|r
    *Reclaim the Skybreaker Bulwark from Zaal Stormshield at the Shrine of Akir.
    .complete 94003,1 << Skyborne --The Skybreaker Bulwark
    .mob Zaal Stormshield
step
    .goto 2521,59.89,72.87
    >>Talk to |cRXP_FRIENDLY_Seena Skybreaker|r
    .turnin 94003 >>Turn in The Skybreaker Bulwark << Skyborne
    .target Seena Skybreaker
step
    +|cRXP_WARN_Done:|r Stormforged Protector. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Warrior
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 30-39
#name 30-40 Whirlwind Axe / Whirlwind Warhammer +
#displayname 30-40 Whirlwind Axe / Whirlwind Warhammer +
step
    +|cRXP_WARN_ITEM: Whirlwind Axe / Whirlwind Warhammer +|r. Click to start.
    *Reward: Choose Whirlwind Axe (3.60), Whirlwind Sword (2.90) or Whirlwind Warhammer (3.40); all item level 40, +16 Strength, +15 Stamina, about 35.6 DPS
    *Why: Best two-hander you can get around 30-40; needs 8 Liferoot, 30 Bloodscalp Tusks (STV) and charms from Arathi for the Essence of the Exile
    *|cRXP_WARN_Needs a group for part of it.|r
    *Forever: changed in Forever: stats +16 Str / +15 Sta (Classic +15/+14), turning in unlocks all three appearances for transmog; Cyclonian is a level 40 elite, a healer helps
step
    .goto 1456,57.24,87.37
    >>Talk to |cRXP_FRIENDLY_Torm Ragetotem|r
    .accept 1718 >>Accept The Islander
    .target Torm Ragetotem
step
    .goto 1413,68.62,49.16
    >>Talk to |cRXP_FRIENDLY_Klannoc Macleod|r
    .turnin 1718 >>Turn in The Islander
    .accept 1719 >>Accept The Affray
    .target Klannoc Macleod
step
    .goto 1413,68.62,49.16
    >>Kill |cRXP_ENEMY_Big Will|r. Step on the grate to begin the Affray
    *Kill Big Will, then speak to Klannoc Macleod on Fray Island.
    .complete 1719,1 --The Affray
    .complete 1719,2 --The Affray
    .mob Big Will
step
    .goto 1413,68.62,49.16
    >>Talk to |cRXP_FRIENDLY_Klannoc Macleod|r
    .turnin 1719 >>Turn in The Affray
    .accept 1791 >>Accept The Windwatcher
    .target Klannoc Macleod
step
    .goto 1416,80.5,66.92
    >>Talk to |cRXP_FRIENDLY_Bath'rah the Windwatcher|r
    .turnin 1791 >>Turn in The Windwatcher
    .accept 1712 >>Accept Cyclonian
    .target Bath'rah the Windwatcher
step
    .goto 1420,82.6,33.8
    *|cRXP_WARN_Inside Scarlet Monastery: bring a group.|r
    >>Collect |cRXP_LOOT_[Liferoot]|r from |cRXP_ENEMY_Nightbane Dark Runner|r, |cRXP_ENEMY_Nightbane Vile Fang|r, |cRXP_ENEMY_Splinter Fist Warrior|r
    *Bring the items on Bath'rah's Parchment to Bath'rah the Windwatcher in Alterac.
    .complete 1712,1 --Cyclonian
    .mob Nightbane Dark Runner
    .mob Nightbane Vile Fang
step
    .goto 1434,25.66,12.14
    >>Collect |cRXP_LOOT_[Bloodscalp Tusk]|r from |cRXP_ENEMY_Bloodscalp Warrior|r, |cRXP_ENEMY_Bloodscalp Scout|r, |cRXP_ENEMY_Bloodscalp Hunter|r
    *Bring the items on Bath'rah's Parchment to Bath'rah the Windwatcher in Alterac.
    .complete 1712,2 --Cyclonian
    .mob Bloodscalp Warrior
    .mob Bloodscalp Scout
step
    >>Collect |cRXP_LOOT_[Essence of the Exile]|r
    *Bring the items on Bath'rah's Parchment to Bath'rah the Windwatcher in Alterac.
    .complete 1712,3 --Cyclonian
step
    .goto 1416,80.5,66.92
    >>Talk to |cRXP_FRIENDLY_Bath'rah the Windwatcher|r
    .turnin 1712 >>Turn in Cyclonian
    .accept 1713 >>Accept The Summoning
    .target Bath'rah the Windwatcher
step
    >>Collect |cRXP_LOOT_[Whirlwind Heart]|r from |cRXP_ENEMY_Cyclonian|r
    *Bring the Whirlwind Heart to Bath'rah Windwatcher.
    .complete 1713,1 --The Summoning
    .mob Cyclonian
step
    .goto 1416,80.5,66.92
    >>Talk to |cRXP_FRIENDLY_Bath'rah the Windwatcher|r
    .turnin 1713 >>Turn in The Summoning
    .accept 1792 >>Accept Whirlwind Weapon
    .target Bath'rah the Windwatcher
step
    .goto 1416,80.5,66.92
    >>Talk to |cRXP_FRIENDLY_Bath'rah the Windwatcher|r
    .turnin 1792 >>Turn in Whirlwind Weapon
    .target Bath'rah the Windwatcher
step
    +|cRXP_WARN_Done:|r Whirlwind Axe / Whirlwind Warhammer +. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Warrior
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 50-60
#name 50-52 Diamond Flask / Razorsteel Shoulders +
#displayname 50-52 Diamond Flask / Razorsteel Shoulders +
step
    +|cRXP_WARN_ITEM: Diamond Flask / Razorsteel Shoulders +|r. Click to start.
    *Reward: Voodoo Feathers: Fury Visor (plate head), Diamond Flask (warrior trinket), Razorsteel Shoulders (plate shoulders)
    *|cffffd200OK|r [Diamond Flask]: Trinket - decent emergency heal; Str buff much smaller than Classic (+75)
    *|cff40ff40GOOD|r [Razorsteel Shoulders]: Shoulder Plate, 410 armor, +10 Strength, +10 Stamina - Str, Sta and 1% hit; strong warrior shoulders at 50
    *|cff40ff40GOOD|r [Fury Visor]: Head Plate, 445 armor, +18 Strength, +9 Spirit - +18 Str with hit and crit; best DPS pick of the warrior rewards
    *Why: Rare plate and trinket for a dungeon you run anyway; needs two each of the Amber, Blue and Green Voodoo Feathers from the troll guardians
    *|cRXP_WARN_Needs a group for part of it.|r
    *Forever: changed in Forever: 12,400 XP (about double), Diamond Flask reworked into a self-heal plus short Strength buff; Icy Veins says Forever gives all three items, Conquest Capped says p
step
    .goto 1456,57.24,87.37
    >>Talk to |cRXP_FRIENDLY_Torm Ragetotem|r
    .accept 8417 >>Accept A Troubled Spirit
    .target Torm Ragetotem
step
    .goto 1435,34.29,66.14
    >>Talk to |cRXP_FRIENDLY_Fallen Hero of the Horde|r
    .turnin 8417 >>Turn in A Troubled Spirit
    .accept 8423 >>Accept Warrior Kinship
    .target Fallen Hero of the Horde
step
    .goto 1419,51.49,53.2
    >>Kill |cRXP_ENEMY_Helboar|r
    *Kill 7 Helboar in the Blasted Lands and return to the Fallen Hero of the Horde.
    .complete 8423,1 --Warrior Kinship
    .mob Helboar
step
    .goto 1435,34.29,66.14
    >>Talk to |cRXP_FRIENDLY_Fallen Hero of the Horde|r
    .turnin 8423 >>Turn in Warrior Kinship
    .accept 8424 >>Accept War on the Shadowsworn
    .target Fallen Hero of the Horde
step
    .goto 1419,67.1,31.36
    >>Kill |cRXP_ENEMY_Shadowsworn Adept|r. Kill |cRXP_ENEMY_Shadowsworn Cultist|r. Kill |cRXP_ENEMY_Shadowsworn Thug|r
    *Slaughter the Shadowsworn in the Blasted Lands and return to the Fallen Hero of the Horde.
    .complete 8424,1 --War on the Shadowsworn
    .complete 8424,2 --War on the Shadowsworn
    .complete 8424,3 --War on the Shadowsworn
    .mob Shadowsworn Adept
    .mob Shadowsworn Cultist
    .mob Shadowsworn Thug
step
    .goto 1435,34.29,66.14
    >>Talk to |cRXP_FRIENDLY_Fallen Hero of the Horde|r
    .turnin 8424 >>Turn in War on the Shadowsworn
    .accept 8425 >>Accept Voodoo Feathers
    .target Fallen Hero of the Horde
step
    >>Collect |cRXP_LOOT_[Amber Voodoo Feather]|r from |cRXP_ENEMY_Gasher|r, |cRXP_ENEMY_Zul'Lor|r, |cRXP_ENEMY_Gasher|r. Collect |cRXP_LOOT_[Blue Voodoo Feather]|r from |cRXP_ENEMY_Hukku|r, |cRXP_ENEMY_Mijan|r, |cRXP_ENEMY_Hukku|r. Collect |cRXP_LOOT_[Green Voodoo Feather]|r from |cRXP_ENEMY_Loro|r, |cRXP_ENEMY_Zolo|r
    *Bring the Voodoo Feathers from the trolls in the Sunken Temple to the Fallen Hero of the Horde.
    .complete 8425,1 --Voodoo Feathers
    .complete 8425,2 --Voodoo Feathers
    .complete 8425,3 --Voodoo Feathers
    .mob Gasher
    .mob Zul'Lor
    .mob Hukku
    .mob Mijan
    .mob Loro
    .mob Zolo
step
    .goto 1435,34.29,66.14
    >>Talk to |cRXP_FRIENDLY_Fallen Hero of the Horde|r
    .turnin 8425 >>Turn in Voodoo Feathers
    .target Fallen Hero of the Horde
step
    +|cRXP_WARN_Done:|r Diamond Flask / Razorsteel Shoulders +. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Warrior Orc/Horde Warrior Undead/Horde Warrior Tauren/Horde Warrior Troll
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 10-11 Defensive Stance (Orc/Undead/Tauren/Troll)
#displayname 10-11 Defensive Stance (Orc/Undead/Tauren/Troll)
step
    +|cRXP_WARN_MUST DO: Defensive Stance|r. Click to start.
    *Reward: Defensive Stance, Taunt, Sunder Armor
    *|cffffd200OK|r [Thun'grim's Axe]: Main Hand Axe, 7.78 DPS, +1 Stamina - slowest and highest DPS of the four; good early main hand
    *|cff9d9d9dSKIP|r [Thun'grim's Dagger]: One-Hand Dagger, 7.65 DPS, +1 Stamina - fast dagger is the worst warrior pick; take the axe, mace or sword
    *|cffffd200OK|r [Thun'grim's Mace]: Main Hand Mace, 7.61 DPS, +1 Stamina - fine early main hand; the axe hits harder
    *|cffffd200OK|r [Thun'grim's Sword]: Main Hand Sword, 7.62 DPS, +1 Stamina - fine early main hand; the axe hits harder
step
    .goto 1412,48.35,63.74
    >>Talk to |cRXP_FRIENDLY_Krang Stonehoof|r
    .accept 1505 >>Accept Veteran Uzzek
    .target Krang Stonehoof
step
    .goto 1413,61.38,21.12
    >>Talk to |cRXP_FRIENDLY_Uzzek|r
    .turnin 1505 >>Turn in Veteran Uzzek
    .accept 1498 >>Accept Path of Defense
    .target Uzzek
step
    .goto 1420,61.85,52.54
    >>Talk to |cRXP_FRIENDLY_Austil de Mon|r
    .accept 1818 >>Accept Speak with Dillinger
    .target Austil de Mon
step
    .goto 1420,58.2,51.45
    >>Talk to |cRXP_FRIENDLY_Deathguard Dillinger|r
    .turnin 1818 >>Turn in Speak with Dillinger
    .accept 1819 >>Accept Ulag the Cleaver
    .target Deathguard Dillinger
step
    >>Kill |cRXP_ENEMY_Ulag the Cleaver|r
    *Kill Ulag the Cleaver, then speak with Deathguard Dillinger.
    .complete 1819,1 --Ulag the Cleaver
    .mob Ulag the Cleaver
step
    .goto 1420,58.2,51.45
    >>Talk to |cRXP_FRIENDLY_Deathguard Dillinger|r
    .turnin 1819 >>Turn in Ulag the Cleaver
    .accept 1820 >>Accept Speak with Coleman
    .target Deathguard Dillinger
step
    .goto 1420,61.72,52.29
    >>Talk to |cRXP_FRIENDLY_Coleman Farthing|r
    .turnin 1820 >>Turn in Speak with Coleman
    .accept 1821 >>Accept Agamand Heirlooms
    .target Coleman Farthing
step
    .goto 1420,51.68,25.69
    >>Collect |cRXP_LOOT_[Agamand Family Axe]|r from |cRXP_PICK_Agamand Weapon Rack|r. Collect |cRXP_LOOT_[Agamand Family Dagger]|r from |cRXP_PICK_Agamand Weapon Rack|r. Collect |cRXP_LOOT_[Agamand Family Mace]|r from |cRXP_PICK_Agamand Weapon Rack|r. Collect |cRXP_LOOT_[Agamand Family Sword]|r from |cRXP_PICK_Agamand Weapon Rack|r
    *Bring Coleman Farthing the Agamand Family Axe, the Agamand Family Sword, the Agamand Family Mace and the Agamand Family dagger.
    .complete 1821,1 --Agamand Heirlooms
    .complete 1821,2 --Agamand Heirlooms
    .complete 1821,3 --Agamand Heirlooms
    .complete 1821,4 --Agamand Heirlooms
step
    .goto 1420,61.72,52.29
    >>Talk to |cRXP_FRIENDLY_Coleman Farthing|r
    .turnin 1821 >>Turn in Agamand Heirlooms
    .accept 1822 >>Accept Heirloom Weapon
    .target Coleman Farthing
step
    .goto 1420,61.72,52.29
    >>Talk to |cRXP_FRIENDLY_Coleman Farthing|r
    .turnin 1822 >>Turn in Heirloom Weapon
    .target Coleman Farthing
step
    .goto 1411,40.5,28.96
    >>Collect |cRXP_LOOT_[Singed Scale]|r from |cRXP_ENEMY_Thunder Lizard|r, |cRXP_ENEMY_Lightning Hide|r
    *Bring 5 Singed Scales to Uzzek at Far Watch Post in the Barrens.
    .complete 1498,1 --Path of Defense
    .mob Thunder Lizard
    .mob Lightning Hide
step
    .goto 1413,61.38,21.12
    >>Talk to |cRXP_FRIENDLY_Uzzek|r
    .turnin 1498 >>Turn in Path of Defense
    .accept 1502 >>Accept Thun'grim Firegaze
    .target Uzzek
step
    .goto 1413,57.23,30.34
    >>Talk to |cRXP_FRIENDLY_Thun'grim Firegaze|r
    .turnin 1502 >>Turn in Thun'grim Firegaze
    .accept 1503 >>Accept Forged Steel
    .target Thun'grim Firegaze
step
    .goto 1413,55.05,26.65
    >>Collect |cRXP_LOOT_[Forged Steel Bars]|r from |cRXP_PICK_Stolen Iron Chest|r
    *Bring the Forged Steel Bars to Thun'grim Firegaze in the Barrens.
    .complete 1503,1 --Forged Steel
step
    .goto 1413,57.23,30.34
    >>Talk to |cRXP_FRIENDLY_Thun'grim Firegaze|r
    .turnin 1503 >>Turn in Forged Steel
    .target Thun'grim Firegaze
step
    +|cRXP_WARN_Done:|r Defensive Stance. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Warrior Skyborne
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 10-11 Defensive Stance (Skyborne)
#displayname 10-11 Defensive Stance (Skyborne)
step
    +|cRXP_WARN_MUST DO: Defensive Stance|r. Click to start.
    *Reward: Defensive Stance, Taunt, Sunder Armor
    *|cffffd200OK|r [Thun'grim's Axe]: Main Hand Axe, 7.78 DPS, +1 Stamina - slowest and highest DPS of the four; good early main hand
    *|cff9d9d9dSKIP|r [Thun'grim's Dagger]: One-Hand Dagger, 7.65 DPS, +1 Stamina - fast dagger is the worst warrior pick; take the axe, mace or sword
    *|cffffd200OK|r [Thun'grim's Mace]: Main Hand Mace, 7.61 DPS, +1 Stamina - fine early main hand; the axe hits harder
    *|cffffd200OK|r [Thun'grim's Sword]: Main Hand Sword, 7.62 DPS, +1 Stamina - fine early main hand; the axe hits harder
step
    .goto 1412,48.35,63.74
    >>Talk to |cRXP_FRIENDLY_Krang Stonehoof|r
    .accept 1505 >>Accept Veteran Uzzek
    .target Krang Stonehoof
step
    .goto 1413,61.38,21.12
    >>Talk to |cRXP_FRIENDLY_Uzzek|r
    .turnin 1505 >>Turn in Veteran Uzzek
    .accept 1498 >>Accept Path of Defense
    .target Uzzek
step
    .goto 2521,59.89,72.87
    >>Talk to |cRXP_FRIENDLY_Seena Skybreaker|r
    .accept 94003 >>Accept The Skybreaker Bulwark << Skyborne
    .target Seena Skybreaker
step
    .goto 2521,56.63,50.37
    >>Collect |cRXP_LOOT_[Skybreaker Bulwark]|r from |cRXP_ENEMY_Zaal Stormshield|r
    *Reclaim the Skybreaker Bulwark from Zaal Stormshield at the Shrine of Akir.
    .complete 94003,1 << Skyborne --The Skybreaker Bulwark
    .mob Zaal Stormshield
step
    .goto 2521,59.89,72.87
    >>Talk to |cRXP_FRIENDLY_Seena Skybreaker|r
    .turnin 94003 >>Turn in The Skybreaker Bulwark << Skyborne
    .target Seena Skybreaker
step
    .goto 1420,61.85,52.54
    >>Talk to |cRXP_FRIENDLY_Austil de Mon|r
    .accept 1818 >>Accept Speak with Dillinger
    .target Austil de Mon
step
    .goto 1420,58.2,51.45
    >>Talk to |cRXP_FRIENDLY_Deathguard Dillinger|r
    .turnin 1818 >>Turn in Speak with Dillinger
    .accept 1819 >>Accept Ulag the Cleaver
    .target Deathguard Dillinger
step
    >>Kill |cRXP_ENEMY_Ulag the Cleaver|r
    *Kill Ulag the Cleaver, then speak with Deathguard Dillinger.
    .complete 1819,1 --Ulag the Cleaver
    .mob Ulag the Cleaver
step
    .goto 1420,58.2,51.45
    >>Talk to |cRXP_FRIENDLY_Deathguard Dillinger|r
    .turnin 1819 >>Turn in Ulag the Cleaver
    .accept 1820 >>Accept Speak with Coleman
    .target Deathguard Dillinger
step
    .goto 1420,61.72,52.29
    >>Talk to |cRXP_FRIENDLY_Coleman Farthing|r
    .turnin 1820 >>Turn in Speak with Coleman
    .accept 1821 >>Accept Agamand Heirlooms
    .target Coleman Farthing
step
    .goto 1420,51.68,25.69
    >>Collect |cRXP_LOOT_[Agamand Family Axe]|r from |cRXP_PICK_Agamand Weapon Rack|r. Collect |cRXP_LOOT_[Agamand Family Dagger]|r from |cRXP_PICK_Agamand Weapon Rack|r. Collect |cRXP_LOOT_[Agamand Family Mace]|r from |cRXP_PICK_Agamand Weapon Rack|r. Collect |cRXP_LOOT_[Agamand Family Sword]|r from |cRXP_PICK_Agamand Weapon Rack|r
    *Bring Coleman Farthing the Agamand Family Axe, the Agamand Family Sword, the Agamand Family Mace and the Agamand Family dagger.
    .complete 1821,1 --Agamand Heirlooms
    .complete 1821,2 --Agamand Heirlooms
    .complete 1821,3 --Agamand Heirlooms
    .complete 1821,4 --Agamand Heirlooms
step
    .goto 1420,61.72,52.29
    >>Talk to |cRXP_FRIENDLY_Coleman Farthing|r
    .turnin 1821 >>Turn in Agamand Heirlooms
    .accept 1822 >>Accept Heirloom Weapon
    .target Coleman Farthing
step
    .goto 1420,61.72,52.29
    >>Talk to |cRXP_FRIENDLY_Coleman Farthing|r
    .turnin 1822 >>Turn in Heirloom Weapon
    .target Coleman Farthing
step
    .goto 1411,40.5,28.96
    >>Collect |cRXP_LOOT_[Singed Scale]|r from |cRXP_ENEMY_Thunder Lizard|r, |cRXP_ENEMY_Lightning Hide|r
    *Bring 5 Singed Scales to Uzzek at Far Watch Post in the Barrens.
    .complete 1498,1 --Path of Defense
    .mob Thunder Lizard
    .mob Lightning Hide
step
    .goto 1413,61.38,21.12
    >>Talk to |cRXP_FRIENDLY_Uzzek|r
    .turnin 1498 >>Turn in Path of Defense
    .accept 1502 >>Accept Thun'grim Firegaze
    .target Uzzek
step
    .goto 1413,57.23,30.34
    >>Talk to |cRXP_FRIENDLY_Thun'grim Firegaze|r
    .turnin 1502 >>Turn in Thun'grim Firegaze
    .accept 1503 >>Accept Forged Steel
    .target Thun'grim Firegaze
step
    .goto 1413,55.05,26.65
    >>Collect |cRXP_LOOT_[Forged Steel Bars]|r from |cRXP_PICK_Stolen Iron Chest|r
    *Bring the Forged Steel Bars to Thun'grim Firegaze in the Barrens.
    .complete 1503,1 --Forged Steel
step
    .goto 1413,57.23,30.34
    >>Talk to |cRXP_FRIENDLY_Thun'grim Firegaze|r
    .turnin 1503 >>Turn in Forged Steel
    .target Thun'grim Firegaze
step
    +|cRXP_WARN_Done:|r Defensive Stance. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Warrior
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 50-60
#name 60 Raid class chains (info)
#displayname 60 Raid class chains (info)
step
    +|cRXP_WARN_Raid or not-yet-open class chains.|r Listed for planning, not guided. Click to close.
    *Quel'Serrar: Quel'Serrar, main-hand sword with a defensive proc (raid)
    *Zandalar Tribe Paragons of Power: Zandalar class set pieces (raid)
]])
