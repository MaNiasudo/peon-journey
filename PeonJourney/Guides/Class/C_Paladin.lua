RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Paladin Human/Alliance Paladin Dwarf
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 20-29
#name 20-25 Bastion of Stormwind (Human/Dwarf)
#displayname 20-25 Bastion of Stormwind (Human/Dwarf)
step
    +|cRXP_WARN_ITEM: Bastion of Stormwind|r. Click to start.
    *Reward: Bastion of Stormwind (shield) plus Sense Undead
    *|cffffd200OK|r [Bastion of Stormwind]: Off Hand Shield, 495 armor, 9 Block - no primary stats; fine for a 1H+shield paladin, skip if you level with a 2H
    *|cff40ff40GOOD|r [Verigan's Fist]: Two-Hand Mace, 25.63 DPS, +5 Stamina, +6 Intellect, +10 Spirit - rare ilvl 31 2H with a proc at req 20; big leveling upgrade (Wolfsbane has slightly better stats)
    *Why: Free shield on the way to Verigan's Fist; defend Daphne Stilwell in Westfall (fails if either of you dies)
step
    .goto 1453,50.48,47.49
    >>Talk to |cRXP_FRIENDLY_Duthorian Rall|r
    .accept 1793 >>Accept The Tome of Valor << Human/Dwarf
    .accept 1650 >>Accept The Tome of Valor << Human/Dwarf
    .target Duthorian Rall
step
    .goto 1453,50.48,47.49
    >>Talk to |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1793 >>Turn in The Tome of Valor << Human/Dwarf
    .target Duthorian Rall
step
    .goto 1436,41.69,89.24
    >>Talk to |cRXP_FRIENDLY_Daphne Stilwell|r
    .turnin 1650 >>Turn in The Tome of Valor << Human/Dwarf
    .accept 1651 >>Accept The Tome of Valor << Human/Dwarf
    .target Daphne Stilwell
step
    .goto 1436,41.69,89.24
    >>Talk to |cRXP_FRIENDLY_Daphne Stilwell|r
    .turnin 1651 >>Turn in The Tome of Valor << Human/Dwarf
    .accept 1652 >>Accept The Tome of Valor << Human/Dwarf
    .target Daphne Stilwell
step
    .goto 1453,50.48,47.49
    >>Talk to |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1652 >>Turn in The Tome of Valor << Human/Dwarf
    .accept 1653 >>Accept The Test of Righteousness << Human/Dwarf
    .target Duthorian Rall
step
    .goto 1426,52.49,36.92
    >>Talk to |cRXP_FRIENDLY_Jordan Stilwell|r
    .turnin 1653 >>Turn in The Test of Righteousness << Human/Dwarf
    .accept 1654 >>Accept The Test of Righteousness << Human/Dwarf
    .target Jordan Stilwell
step
    .goto 1455,23.13,6.14
    >>Talk to |cRXP_FRIENDLY_Brandur Ironhammer|r
    .accept 1794 >>Accept The Tome of Valor << Human/Dwarf
    .target Brandur Ironhammer
step
    .goto 1455,23.13,6.14
    >>Talk to |cRXP_FRIENDLY_Brandur Ironhammer|r
    .turnin 1794 >>Turn in The Tome of Valor << Human/Dwarf
    .target Brandur Ironhammer
step
    .goto 1436,42.5,71.7
    *|cRXP_WARN_Inside The Deadmines: bring a group.|r
    >>Collect |cRXP_LOOT_[Whitestone Oak Lumber]|r from |cRXP_ENEMY_Goblin Woodcarver|r
    *Using Jordan's Weapon Notes, find some Whitestone Oak Lumber, Bailor's Refined Ore Shipment, Jordan's Smithing Hammer, and a Kor Gem, and return them to Jordan Stilwell in Ironforge.
    .complete 1654,1 << Human/Dwarf --The Test of Righteousness
    .mob Goblin Woodcarver
step
    >>Collect |cRXP_LOOT_[Jordan's Refined Ore Shipment]|r. Collect |cRXP_LOOT_[Purified Kor Gem]|r
    *Using Jordan's Weapon Notes, find some Whitestone Oak Lumber, Bailor's Refined Ore Shipment, Jordan's Smithing Hammer, and a Kor Gem, and return them to Jordan Stilwell in Ironforge.
    .complete 1654,2 << Human/Dwarf --The Test of Righteousness
    .complete 1654,4 << Human/Dwarf --The Test of Righteousness
step
    .goto 1421,44.8,67.8
    *|cRXP_WARN_Inside Shadowfang Keep: bring a group.|r
    >>Collect |cRXP_LOOT_[Jordan's Smithing Hammer]|r from |cRXP_PICK_Jordan's Hammer|r
    *Using Jordan's Weapon Notes, find some Whitestone Oak Lumber, Bailor's Refined Ore Shipment, Jordan's Smithing Hammer, and a Kor Gem, and return them to Jordan Stilwell in Ironforge.
    .complete 1654,3 << Human/Dwarf --The Test of Righteousness
step
    .goto 1426,52.49,36.92
    >>Talk to |cRXP_FRIENDLY_Jordan Stilwell|r
    .turnin 1654 >>Turn in The Test of Righteousness << Human/Dwarf
    .accept 1806 >>Accept The Test of Righteousness << Human/Dwarf
    .target Jordan Stilwell
step
    .goto 1426,52.49,36.92
    >>Talk to |cRXP_FRIENDLY_Jordan Stilwell|r
    .turnin 1806 >>Turn in The Test of Righteousness << Human/Dwarf
    .target Jordan Stilwell
step
    +|cRXP_WARN_Done:|r Bastion of Stormwind. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Paladin Human/Alliance Paladin Dwarf
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 50-60
#name 50-52 Lightforged Blade / Chivalrous Signet + (Human/Dwarf)
#displayname 50-52 Lightforged Blade / Chivalrous Signet + (Human/Dwarf)
step
    +|cRXP_WARN_ITEM: Lightforged Blade / Chivalrous Signet +|r. Click to start.
    *Reward: Forging the Mightstone: Lightforged Blade (two-hand sword), Sanctified Orb (paladin trinket), Chivalrous Signet (ring), plus Holy Mightstone
    *Why: Rare weapon/trinket/ring; Wowhead Forever lists all three under 'You will also receive' as well as the choice
    *|cRXP_WARN_Needs a group for part of it.|r
    *Forever: changed in Forever: 12,400 XP; Icy Veins and Wowhead data say all three items are granted, Conquest Capped says pick one (unverified). Horde (Undead) paladins have no level 50 clas
step
    .goto 1453,48.43,50.22
    >>Talk to |cRXP_FRIENDLY_Lord Grayson Shadowbreaker|r
    .accept 8415 >>Accept Chillwind Point << Human/Dwarf
    .target Lord Grayson Shadowbreaker
step
    .goto 1422,42.7,84.03
    >>Talk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
    .turnin 8415 >>Turn in Chillwind Point << Human/Dwarf
    .accept 8414 >>Accept Dispelling Evil << Human/Dwarf
    .target Commander Ashlam Valorfist
step
    .goto 1422,49.47,77.79
    >>Collect |cRXP_LOOT_[Minion's Scourgestone]|r from |cRXP_ENEMY_Skeletal Flayer|r, |cRXP_ENEMY_Skeletal Sorcerer|r, |cRXP_ENEMY_Skeletal Terror|r
    *Collect 20 Minion's Scourgestones and bring them to High Priest Thel'danis in the Western Plaguelands.
    .complete 8414,1 << Human/Dwarf --Dispelling Evil
    .mob Skeletal Flayer
    .mob Skeletal Sorcerer
step
    .goto 1422,52.05,83.27
    >>Talk to |cRXP_FRIENDLY_High Priest Thel'danis|r
    .turnin 8414 >>Turn in Dispelling Evil << Human/Dwarf
    .accept 8416 >>Accept Inert Scourgestones << Human/Dwarf
    .target High Priest Thel'danis
step
    .goto 1422,42.7,84.03
    >>Talk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
    .turnin 8416 >>Turn in Inert Scourgestones << Human/Dwarf
    .accept 8418 >>Accept Forging the Mightstone << Human/Dwarf
    .target Commander Ashlam Valorfist
step
    >>Collect |cRXP_LOOT_[Amber Voodoo Feather]|r from |cRXP_ENEMY_Gasher|r, |cRXP_ENEMY_Zul'Lor|r, |cRXP_ENEMY_Gasher|r. Collect |cRXP_LOOT_[Blue Voodoo Feather]|r from |cRXP_ENEMY_Hukku|r, |cRXP_ENEMY_Mijan|r, |cRXP_ENEMY_Hukku|r. Collect |cRXP_LOOT_[Green Voodoo Feather]|r from |cRXP_ENEMY_Loro|r, |cRXP_ENEMY_Zolo|r
    *Bring the voodoo feathers to Ashlam Valorfist.
    .complete 8418,1 << Human/Dwarf --Forging the Mightstone
    .complete 8418,2 << Human/Dwarf --Forging the Mightstone
    .complete 8418,3 << Human/Dwarf --Forging the Mightstone
    .mob Gasher
    .mob Zul'Lor
    .mob Hukku
    .mob Mijan
    .mob Loro
    .mob Zolo
step
    .goto 1422,42.7,84.03
    >>Talk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
    .turnin 8418 >>Turn in Forging the Mightstone << Human/Dwarf
    .target Commander Ashlam Valorfist
step
    +|cRXP_WARN_Done:|r Lightforged Blade / Chivalrous Signet +. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Paladin Human
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 12-13 Redemption (Human)
#displayname 12-13 Redemption (Human)
step
    +|cRXP_WARN_MUST DO: Redemption|r. Click to start.
    *Reward: Redemption (resurrection); do it before dungeons
step
    .goto 1453,50.48,47.49
    >>Talk to |cRXP_FRIENDLY_Duthorian Rall|r
    .accept 1641 >>Accept The Tome of Divinity << Human
    .accept 1643 >>Accept The Tome of Divinity << Human
    .target Duthorian Rall
step
    .goto 1453,50.48,47.49
    >>Talk to |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1641 >>Turn in The Tome of Divinity << Human
    .target Duthorian Rall
step
    .goto 1453,63.84,72.21
    >>Talk to |cRXP_FRIENDLY_Stephanie Turner|r
    .turnin 1643 >>Turn in The Tome of Divinity << Human
    .accept 1644 >>Accept The Tome of Divinity << Human
    .target Stephanie Turner
step
    .goto 1429,60.71,52.8
    >>Collect |cRXP_LOOT_[Linen Cloth]|r from |cRXP_ENEMY_Flesh Eater|r, |cRXP_ENEMY_Kobold Miner|r, |cRXP_ENEMY_Mine Spider|r
    *Bring 10 Linen Cloth to Stephanie Turner in Stormwind.
    .complete 1644,1 << Human --The Tome of Divinity
    .mob Flesh Eater
    .mob Kobold Miner
step
    .goto 1453,63.84,72.21
    >>Talk to |cRXP_FRIENDLY_Stephanie Turner|r
    .turnin 1644 >>Turn in The Tome of Divinity << Human
    .accept 1780 >>Accept The Tome of Divinity << Human
    .target Stephanie Turner
step
    .goto 1453,50.48,47.49
    >>Talk to |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1780 >>Turn in The Tome of Divinity << Human
    .accept 1781 >>Accept The Tome of Divinity << Human
    .target Duthorian Rall
step
    .goto 1453,49.53,44.99
    >>Talk to |cRXP_FRIENDLY_Gazin Tenorm|r
    .turnin 1781 >>Turn in The Tome of Divinity << Human
    .accept 1786 >>Accept The Tome of Divinity << Human
    .target Gazin Tenorm
step
    .goto 1429,72.6,51.41
    >>Kill |cRXP_ENEMY_Henze Faulk|r
    *Take the Symbol of Life and resurrect Henze Faulk in Elwynn.
    .complete 1786,1 << Human --The Tome of Divinity
    .mob Henze Faulk
step
    .goto 1429,72.6,51.41
    >>Talk to |cRXP_FRIENDLY_Henze Faulk|r
    .turnin 1786 >>Turn in The Tome of Divinity << Human
    .accept 1787 >>Accept The Tome of Divinity << Human
    .target Henze Faulk
step
    >>Collect |cRXP_LOOT_[Defias Script]|r from |cRXP_ENEMY_Defias Bodyguard|r
    *Retrieve a Defias Script from the Defias Rogue Wizards in Elwynn, and return to Gazin Tenorm in Stormwind.
    .complete 1787,1 << Human --The Tome of Divinity
    .mob Defias Bodyguard
step
    .goto 1453,49.53,44.99
    >>Talk to |cRXP_FRIENDLY_Gazin Tenorm|r
    .turnin 1787 >>Turn in The Tome of Divinity << Human
    .accept 1788 >>Accept The Tome of Divinity << Human
    .target Gazin Tenorm
step
    .goto 1453,50.48,47.49
    >>Talk to |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1788 >>Turn in The Tome of Divinity << Human
    .target Duthorian Rall
step
    +|cRXP_WARN_Done:|r Redemption. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Paladin Dwarf
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 12-13 Redemption (Dwarf)
#displayname 12-13 Redemption (Dwarf)
step
    +|cRXP_WARN_MUST DO: Redemption|r. Click to start.
    *Reward: Redemption (resurrection); do it before dungeons
step
    .goto 1455,27.63,12.18
    >>Talk to |cRXP_FRIENDLY_Tiza Battleforge|r
    .accept 1645 >>Accept The Tome of Divinity << Dwarf
    .accept 1647 >>Accept The Tome of Divinity << Dwarf
    .target Tiza Battleforge
step
    .goto 1455,27.63,12.18
    >>Talk to |cRXP_FRIENDLY_Tiza Battleforge|r
    .turnin 1645 >>Turn in The Tome of Divinity << Dwarf
    .target Tiza Battleforge
step
    .goto 1455,23.34,61.86
    >>Talk to |cRXP_FRIENDLY_John Turner|r
    .turnin 1647 >>Turn in The Tome of Divinity << Dwarf
    .accept 1648 >>Accept The Tome of Divinity << Dwarf
    .target John Turner
step
    .goto 1429,60.71,52.8
    >>Collect |cRXP_LOOT_[Linen Cloth]|r from |cRXP_ENEMY_Flesh Eater|r, |cRXP_ENEMY_Kobold Miner|r, |cRXP_ENEMY_Mine Spider|r
    *Bring 10 Linen Cloth to John Turner in Ironforge.
    .complete 1648,1 << Dwarf --The Tome of Divinity
    .mob Flesh Eater
    .mob Kobold Miner
step
    .goto 1455,23.34,61.86
    >>Talk to |cRXP_FRIENDLY_John Turner|r
    .turnin 1648 >>Turn in The Tome of Divinity << Dwarf
    .accept 1778 >>Accept The Tome of Divinity << Dwarf
    .target John Turner
step
    .goto 1455,27.63,12.18
    >>Talk to |cRXP_FRIENDLY_Tiza Battleforge|r
    .turnin 1778 >>Turn in The Tome of Divinity << Dwarf
    .accept 1779 >>Accept The Tome of Divinity << Dwarf
    .target Tiza Battleforge
step
    .goto 1455,23.54,8.3
    >>Talk to |cRXP_FRIENDLY_Muiredon Battleforge|r
    .turnin 1779 >>Turn in The Tome of Divinity << Dwarf
    .accept 1783 >>Accept The Tome of Divinity << Dwarf
    .target Muiredon Battleforge
step
    .goto 1426,78.32,58.09
    >>Kill |cRXP_ENEMY_Narm Faulk|r
    *Take the Symbol of Life and resurrect Narm Faulk in Dun Morogh.
    .complete 1783,1 << Dwarf --The Tome of Divinity
    .mob Narm Faulk
step
    .goto 1426,78.32,58.09
    >>Talk to |cRXP_FRIENDLY_Narm Faulk|r
    .turnin 1783 >>Turn in The Tome of Divinity << Dwarf
    .accept 1784 >>Accept The Tome of Divinity << Dwarf
    .target Narm Faulk
step
    .goto 1426,76.96,60.93
    >>Collect |cRXP_LOOT_[Dark Iron Script]|r from |cRXP_ENEMY_Dark Iron Spy|r
    *Retrieve a Dark Iron Script from the Dark Iron dwarves near Helm's Bed, and return to Muiredon Battleforge in Ironforge.
    .complete 1784,1 << Dwarf --The Tome of Divinity
    .mob Dark Iron Spy
step
    .goto 1455,23.54,8.3
    >>Talk to |cRXP_FRIENDLY_Muiredon Battleforge|r
    .turnin 1784 >>Turn in The Tome of Divinity << Dwarf
    .accept 1785 >>Accept The Tome of Divinity << Dwarf
    .target Muiredon Battleforge
step
    .goto 1455,27.63,12.18
    >>Talk to |cRXP_FRIENDLY_Tiza Battleforge|r
    .turnin 1785 >>Turn in The Tome of Divinity << Dwarf
    .target Tiza Battleforge
step
    +|cRXP_WARN_Done:|r Redemption. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Paladin Human/Alliance Paladin Dwarf
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 40-49
#name 40 Level 40 mount (Human/Dwarf)
#displayname 40 Level 40 mount (Human/Dwarf)
step
    +|cRXP_WARN_MUST DO: Level 40 mount|r. Click to start.
    *Reward: Summon Warhorse; paladins skip the 100 gold riding cost this way (Icy Veins news)
step
    .goto 1455,23.13,6.14
    >>Talk to |cRXP_FRIENDLY_Brandur Ironhammer|r
    .accept 4486 >>Accept The Tome of Nobility << Human/Dwarf
    .target Brandur Ironhammer
step
    .goto 1453,50.48,47.49
    >>Talk to |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 4486 >>Turn in The Tome of Nobility << Human/Dwarf
    .accept 1661 >>Accept The Tome of Nobility << Human/Dwarf
    .target Duthorian Rall
step
    .goto 1453,50.48,47.49
    >>Talk to |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1661 >>Turn in The Tome of Nobility << Human/Dwarf
    .target Duthorian Rall
step
    .goto 1453,49.61,49.84
    >>Talk to |cRXP_FRIENDLY_Arthur the Faithful|r
    .accept 4485 >>Accept The Tome of Nobility << Human/Dwarf
    .target Arthur the Faithful
step
    .goto 1453,50.48,47.49
    >>Talk to |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 4485 >>Turn in The Tome of Nobility << Human/Dwarf
    .target Duthorian Rall
step
    +|cRXP_WARN_Done:|r Level 40 mount. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Paladin Human/Alliance Paladin Dwarf
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 50-60
#name 60 Epic mount: Summon Charger (Human/Dwarf)
#displayname 60 Epic mount: Summon Charger (Human/Dwarf)
step
    +|cRXP_WARN_LEVEL 60: Epic mount: Summon Charger|r. Click to start.
    *Reward: Summon Charger
    *|cRXP_WARN_Needs a group for part of it.|r
step
    .goto 1453,50.48,47.49
    >>Talk to |cRXP_FRIENDLY_Duthorian Rall|r
    .accept 7638 >>Accept Lord Grayson Shadowbreaker << Human/Dwarf
    .target Duthorian Rall
step
    .goto 1453,48.43,50.22
    >>Talk to |cRXP_FRIENDLY_Lord Grayson Shadowbreaker|r
    .turnin 7638 >>Turn in Lord Grayson Shadowbreaker << Human/Dwarf
    .accept 7637 >>Accept Emphasis on Sacrifice << Human/Dwarf
    .accept 7646 >>Accept The Divination Scryer << Human/Dwarf
    .target Lord Grayson Shadowbreaker
step
    .goto 1455,24.73,8.16
    >>Talk to |cRXP_FRIENDLY_High Priest Rohan|r
    .turnin 7637 >>Turn in Emphasis on Sacrifice << Human/Dwarf
    .accept 7639 >>Accept To Show Due Judgment << Human/Dwarf
    .target High Priest Rohan
step
    .goto 1453,48.43,50.22
    >>Talk to |cRXP_FRIENDLY_Lord Grayson Shadowbreaker|r
    .turnin 7639 >>Turn in To Show Due Judgment << Human/Dwarf
    .accept 7640 >>Accept Exorcising Terrordale << Human/Dwarf
    .target Lord Grayson Shadowbreaker
step
    >>Kill |cRXP_ENEMY_Terrordale Spirit|r
    *Use the Exorcism Censer to drive out the spirits that torment Terrordale. When you have slain 25 Terrordale Spirits, return to Lord Grayson Shadowbreaker in the Cathedral District of Stormwind.
    .complete 7640,1 << Human/Dwarf --Exorcising Terrordale
    .mob Terrordale Spirit
step
    .goto 1453,48.43,50.22
    >>Talk to |cRXP_FRIENDLY_Lord Grayson Shadowbreaker|r
    .turnin 7640 >>Turn in Exorcising Terrordale << Human/Dwarf
    .accept 7641 >>Accept The Work of Grimand Elmore << Human/Dwarf
    .target Lord Grayson Shadowbreaker
step
    .goto 1453,59.73,33.78
    >>Talk to |cRXP_FRIENDLY_Grimand Elmore|r
    .turnin 7641 >>Turn in The Work of Grimand Elmore << Human/Dwarf
    .accept 7642 >>Accept Collection of Goods << Human/Dwarf
    .target Grimand Elmore
step
    .goto 1444,59.2,45.1
    *|cRXP_WARN_Inside Dire Maul: bring a group.|r
    >>Collect |cRXP_LOOT_[Azerothian Diamond]|r from |cRXP_ENEMY_Cliff Breaker|r, |cRXP_ENEMY_Anubisath Guardian|r
    *Bring an Azerothian Diamond and a Pristine Black Diamond to Lord Grayson Shadowbreaker in the Cathedral District of Stormwind.
    .complete 7646,1 << Human/Dwarf --The Divination Scryer
    .mob Cliff Breaker
    .mob Anubisath Guardian
step
    .goto 1423,26.52,10.36
    *|cRXP_WARN_Inside Stratholme: bring a group.|r
    >>Collect |cRXP_LOOT_[Pristine Black Diamond]|r from |cRXP_ENEMY_Maleki the Pallid|r, |cRXP_ENEMY_Urok Doomhowl|r, |cRXP_ENEMY_Scarlet Magus|r. Collect |cRXP_LOOT_[Stratholme Holy Water]|r from |cRXP_PICK_Supply Crate|r, |cRXP_PICK_Stratholme Supply Crate|r
    *Bring an Azerothian Diamond and a Pristine Black Diamond to Lord Grayson Shadowbreaker in the Cathedral District of Stormwind.
    *Bring 40 Runecloth, 6 Arcanite Bars, 10 Arthas' Tears, 5 Stratholme Holy Water vials, and 150 gold to Grimand Elmore in the Dwarven District of Stormwind.
    .complete 7646,2 << Human/Dwarf --The Divination Scryer
    .complete 7642,1 << Human/Dwarf --Collection of Goods
    .mob Maleki the Pallid
    .mob Urok Doomhowl
step
    .goto 1453,48.43,50.22
    >>Talk to |cRXP_FRIENDLY_Lord Grayson Shadowbreaker|r
    .turnin 7646 >>Turn in The Divination Scryer << Human/Dwarf
    .accept 7647 >>Accept Judgment and Redemption << Human/Dwarf
    .target Lord Grayson Shadowbreaker
step
    >>Collect |cRXP_LOOT_[Charger's Redeemed Soul]|r
    *Use the Divination Scryer in the heart of the Great Ossuary's basement in the Scholomance. Doing so will bring forth the spirits you must judge. Defeating these spirits will summon forth Death Knight Darkreaver. Defeat him and reclaim the lost soul of the fallen charger.
    .complete 7647,1 << Human/Dwarf --Judgment and Redemption
step
    .goto 1413,49,93.9
    *|cRXP_WARN_Inside Razorfen Downs: bring a group.|r
    >>Collect |cRXP_LOOT_[Arthas' Tears]|r from |cRXP_ENEMY_Mire Lord|r, |cRXP_ENEMY_Skeletal Sorcerer|r, |cRXP_ENEMY_Skeletal Executioner|r
    *Bring 40 Runecloth, 6 Arcanite Bars, 10 Arthas' Tears, 5 Stratholme Holy Water vials, and 150 gold to Grimand Elmore in the Dwarven District of Stormwind.
    .complete 7642,2 << Human/Dwarf --Collection of Goods
    .mob Mire Lord
    .mob Skeletal Sorcerer
step
    .goto 1426,28.6,69.85
    >>Collect |cRXP_LOOT_[Runecloth]|r from |cRXP_ENEMY_Stormwind City Guard|r, |cRXP_ENEMY_Felhunter|r, |cRXP_ENEMY_General Marcus Jonathan|r
    *Bring 40 Runecloth, 6 Arcanite Bars, 10 Arthas' Tears, 5 Stratholme Holy Water vials, and 150 gold to Grimand Elmore in the Dwarven District of Stormwind.
    .complete 7642,3 << Human/Dwarf --Collection of Goods
    .mob Stormwind City Guard
    .mob Felhunter
step
    >>Collect |cRXP_LOOT_[Arcanite Bar]|r
    *Bring 40 Runecloth, 6 Arcanite Bars, 10 Arthas' Tears, 5 Stratholme Holy Water vials, and 150 gold to Grimand Elmore in the Dwarven District of Stormwind.
    .complete 7642,4 << Human/Dwarf --Collection of Goods
step
    .goto 1453,59.73,33.78
    >>Talk to |cRXP_FRIENDLY_Grimand Elmore|r
    .turnin 7642 >>Turn in Collection of Goods << Human/Dwarf
    .target Grimand Elmore
step
    .goto 1453,48.43,50.22
    >>Talk to |cRXP_FRIENDLY_Lord Grayson Shadowbreaker|r
    .accept 7643 >>Accept Ancient Equine Spirit << Human/Dwarf
    .target Lord Grayson Shadowbreaker
step
    >>Collect |cRXP_LOOT_[Manna-Enriched Horse Feed]|r
    *Acquire special horse feed used for feeding a spirit horse. Merideth Carlson in Southshore apparently is the source for such food.
    .complete 7643,1 << Human/Dwarf --Ancient Equine Spirit
step
    .goto 1453,48.43,50.22
    >>Talk to |cRXP_FRIENDLY_Lord Grayson Shadowbreaker|r
    .turnin 7643 >>Turn in Ancient Equine Spirit << Human/Dwarf
    .target Lord Grayson Shadowbreaker
step
    .goto 1422,69.7,73.2
    *|cRXP_WARN_Inside Scholomance: bring a group.|r
    >>Collect |cRXP_LOOT_[Blessed Arcanite Barding]|r from |cRXP_ENEMY_Risen Construct|r, |cRXP_ENEMY_Petrified Treant|r
    *Use the Divination Scryer in the heart of the Great Ossuary's basement in the Scholomance. Doing so will bring forth the spirits you must judge. Defeating these spirits will summon forth Death Knight Darkreaver. Defeat him and reclaim the lost soul of the fallen charger.
    .complete 7647,2 << Human/Dwarf --Judgment and Redemption
    .mob Risen Construct
    .mob Petrified Treant
step
    .goto 1453,48.43,50.22
    >>Talk to |cRXP_FRIENDLY_Lord Grayson Shadowbreaker|r
    .turnin 7647 >>Turn in Judgment and Redemption << Human/Dwarf
    .target Lord Grayson Shadowbreaker
step
    +|cRXP_WARN_Done:|r Epic mount: Summon Charger. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Paladin
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 50-60
#name 60 Raid class chains (info)
#displayname 60 Raid class chains (info)
step
    +|cRXP_WARN_Raid or not-yet-open class chains.|r Listed for planning, not guided. Click to close.
    *epic mount: Summon Forsaken Charger: Summon Forsaken Charger (unverified)
    *Quel'Serrar: Quel'Serrar, main-hand sword with a defensive proc (raid)
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Paladin Undead
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 8-11 Skullthumper / Driftwood Smasher (Undead)
#displayname 8-11 Skullthumper / Driftwood Smasher (Undead)
step
    +|cRXP_WARN_ITEM: Skullthumper / Driftwood Smasher|r. Click to start.
    *Reward: Choose Skullthumper or Driftwood Smasher (stats unverified)
    *|cffffd200OK|r [Skullthumper]: Main Hand Mace, 7.00 DPS - no stats, but 7 DPS at req 7 beats starter gear
    *|cffffd200OK|r [Driftwood Smasher]: Two-Hand Mace, 8.94 DPS, +2 Stamina - slow 2H with good DPS for 7; pick if you level with a 2H
    *Why: Free early weapon from Breton Samuels at Bandarion Keep (Tirisfal); start the area with A Second Home
    *Forever: new in Forever
step
    .goto 1420,21.85,45.23
    >>Talk to |cRXP_FRIENDLY_Breton Samuels|r
    .accept 91285 >>Accept Murlocs at the Gates << Undead
    .target Breton Samuels
step
    .goto 1420,17.22,57.46
    >>Kill |cRXP_ENEMY_Vile Fin Attacker|r. Kill |cRXP_ENEMY_Vile Fin Seer|r
    *Slay 8 Vile Fin Attackers and 8 Vile Fin Seers and report back to Breton Samuels when it is done.
    .complete 91285,1 << Undead --Murlocs at the Gates
    .complete 91285,2 << Undead --Murlocs at the Gates
    .mob Vile Fin Attacker
    .mob Vile Fin Seer
step
    .goto 1420,21.85,45.23
    >>Talk to |cRXP_FRIENDLY_Breton Samuels|r
    .turnin 91285 >>Turn in Murlocs at the Gates << Undead
    .accept 91294 >>Accept Touring the Grounds << Undead
    .target Breton Samuels
step
    .goto 1420,21.96,47.25
    >>Kill |cRXP_ENEMY_Hilda the Breaker|r. Kill |cRXP_ENEMY_Jorin Croge|r. Kill |cRXP_ENEMY_Ander Solliden|r. Kill |cRXP_ENEMY_Danitha Morr|r
    *Speak to the residents of Bandarion Keep.
    *|cRXP_WARN_Elite targets here. Group up or skip.|r
    .complete 91294,1 << Undead --Touring the Grounds
    .complete 91294,2 << Undead --Touring the Grounds
    .complete 91294,3 << Undead --Touring the Grounds
    .complete 91294,4 << Undead --Touring the Grounds
    .mob Hilda the Breaker
    .mob Jorin Croge
    .mob Ander Solliden
    .mob Danitha Morr
step
    .goto 1420,22.09,44.66
    >>Talk to |cRXP_FRIENDLY_Danitha Morr|r
    .turnin 91294 >>Turn in Touring the Grounds << Undead
    .target Danitha Morr
step
    +|cRXP_WARN_Done:|r Skullthumper / Driftwood Smasher. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Paladin Undead
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 8-11 Salvaged Wooden Tower Shield (Undead)
#displayname 8-11 Salvaged Wooden Tower Shield (Undead)
step
    +|cRXP_WARN_ITEM: Salvaged Wooden Tower Shield|r. Click to start.
    *Reward: Salvaged Wooden Tower Shield (stats unverified)
    *|cffffd200OK|r [Skullthumper]: Main Hand Mace, 7.00 DPS - no stats, but 7 DPS at req 7 beats starter gear
    *|cffffd200OK|r [Driftwood Smasher]: Two-Hand Mace, 8.94 DPS, +2 Stamina - slow 2H with good DPS for 7; pick if you level with a 2H
    *|cffffd200OK|r [Salvaged Wooden Tower Shield]: Off Hand Shield, 311 armor, 5 Block, +2 Stamina - early shield upgrade for a 1H+shield setup
    *Why: Free shield from Jorin Croge; lumber is in the Shadowvale root cellar, pair it with The Tarnished
    *Forever: new in Forever
step
    .goto 1420,21.85,45.23
    >>Talk to |cRXP_FRIENDLY_Breton Samuels|r
    .accept 91285 >>Accept Murlocs at the Gates << Undead
    .target Breton Samuels
step
    .goto 1420,17.22,57.46
    >>Kill |cRXP_ENEMY_Vile Fin Attacker|r. Kill |cRXP_ENEMY_Vile Fin Seer|r
    *Slay 8 Vile Fin Attackers and 8 Vile Fin Seers and report back to Breton Samuels when it is done.
    .complete 91285,1 << Undead --Murlocs at the Gates
    .complete 91285,2 << Undead --Murlocs at the Gates
    .mob Vile Fin Attacker
    .mob Vile Fin Seer
step
    .goto 1420,21.85,45.23
    >>Talk to |cRXP_FRIENDLY_Breton Samuels|r
    .turnin 91285 >>Turn in Murlocs at the Gates << Undead
    .accept 91294 >>Accept Touring the Grounds << Undead
    .target Breton Samuels
step
    .goto 1420,21.96,47.25
    >>Kill |cRXP_ENEMY_Hilda the Breaker|r. Kill |cRXP_ENEMY_Jorin Croge|r. Kill |cRXP_ENEMY_Ander Solliden|r. Kill |cRXP_ENEMY_Danitha Morr|r
    *Speak to the residents of Bandarion Keep.
    *|cRXP_WARN_Elite targets here. Group up or skip.|r
    .complete 91294,1 << Undead --Touring the Grounds
    .complete 91294,2 << Undead --Touring the Grounds
    .complete 91294,3 << Undead --Touring the Grounds
    .complete 91294,4 << Undead --Touring the Grounds
    .mob Hilda the Breaker
    .mob Jorin Croge
    .mob Ander Solliden
    .mob Danitha Morr
step
    .goto 1420,22.09,44.66
    >>Talk to |cRXP_FRIENDLY_Danitha Morr|r
    .turnin 91294 >>Turn in Touring the Grounds << Undead
    .target Danitha Morr
step
    .goto 1420,22.69,44.7
    >>Talk to |cRXP_FRIENDLY_Jorin Croge|r
    .accept 91316 >>Accept Making Repairs << Undead
    .target Jorin Croge
step
    .goto 1420,8.5,67.1
    >>Collect |cRXP_LOOT_[Sturdy Lumber]|r from |cRXP_PICK_Lumber Pile|r
    *Collect 12 pieces of Sturdy Lumber from Shadowvale in Tirisfal Glades.
    .complete 91316,1 << Undead --Making Repairs
step
    .goto 1420,22.69,44.7
    >>Talk to |cRXP_FRIENDLY_Jorin Croge|r
    .turnin 91316 >>Turn in Making Repairs << Undead
    .target Jorin Croge
step
    +|cRXP_WARN_Done:|r Salvaged Wooden Tower Shield. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Paladin Undead
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 19-26 Moonsilver Blade / Wolfsbane (Undead)
#displayname 19-26 Moonsilver Blade / Wolfsbane (Undead)
step
    +|cRXP_WARN_ITEM: Moonsilver Blade / Wolfsbane|r. Click to start.
    *Reward: Moonsilver Blade (ilvl 31 two-hander, intermediate step) then Wolfsbane: two-hand sword, ilvl 31, 25.6 DPS, +9 Sta, +10 Int, Blazewind Blast Holy proc (tripled vs wolves and worgen)
    *|cffffd200OK|r [Moonsilver Blade]: Two-Hand Sword, 21.03 DPS, +7 Stamina, +7 Intellect - green with lower DPS than Verigan's Fist/Wolfsbane; proc is situational
    *|cff40ff40GOOD|r [Wolfsbane]: Two-Hand Sword, 25.59 DPS, +9 Stamina, +10 Intellect - rare ilvl 31 2H with a proc at req 20; slightly better stats than Verigan's Fist
    *Why: Horde paladin answer to Verigan's Fist; parts from Deadmines (Whitestone Oak Lumber), Shadowfang Keep (Enchanted Silver Ingot) and naga outside BFD; Old Fire-Eye is a level 25 elite (do at 22-24, solo
    *|cRXP_WARN_Needs a group for part of it.|r
    *Forever: new in Forever
step
    .goto 1420,22.09,44.66
    >>Talk to |cRXP_FRIENDLY_Danitha Morr|r
    .accept 91858 >>Accept Diplomatic Incident << Undead
    .target Danitha Morr
step
    .goto 1421,43.4,41.1
    >>Talk to |cRXP_FRIENDLY_Trevan Rol|r
    .turnin 91858 >>Turn in Diplomatic Incident << Undead
    .accept 91859 >>Accept A Curious Pair
    .target Trevan Rol
step
    .goto 1421,45.81,41.88
    >>Talk to |cRXP_FRIENDLY_Deathguard Baldren|r
    .turnin 91859 >>Turn in A Curious Pair
    .accept 91860 >>Accept A Grim Fate
    .target Deathguard Baldren
step
    .goto 1421,65.02,34.1
    >>Click |cRXP_PICK_Charred Remains|r
    *Investigate Fenris Isle to the east and learn the fate of the Earthen Ring traveling party.
    .complete 91860,1 --A Grim Fate
step
    .goto 1421,65.02,34.1
    >>Click the |cRXP_PICK_Charred Remains|r
    .turnin 91860 >>Turn in A Grim Fate
    .accept 91861 >>Accept Into Fenris Keep << Undead
step
    .goto 1421,65.55,23.27
    >>Talk to |cRXP_FRIENDLY_Lumina Windsinger|r
    .turnin 91861 >>Turn in Into Fenris Keep << Undead
    .accept 91862 >>Accept Lumina Windsinger
    .target Lumina Windsinger
step
    .goto 1421,66.36,23.5
    >>Collect |cRXP_LOOT_[Fenris Isle Key]|r from |cRXP_ENEMY_Rot Hide Savage|r, |cRXP_ENEMY_Raging Rot Hide|r, |cRXP_ENEMY_Rot Hide Bruiser|r
    *Retrieve the Fenris Isle Key from the Rot Hide Gnolls and use it to free Lumina Windsinger.
    .complete 91862,1 --Lumina Windsinger
    .mob Rot Hide Savage
    .mob Raging Rot Hide
step
    .goto 1421,65.55,23.27
    >>Talk to |cRXP_FRIENDLY_Lumina Windsinger|r
    .turnin 91862 >>Turn in Lumina Windsinger
    .accept 96204 >>Accept The Windshaper's Wrath
    .target Lumina Windsinger
step
    .goto 1421,65.55,23.27
    >>Kill |cRXP_ENEMY_Lumina Windsinger|r. Escort Lumina Windsinger to safety
    *Accompany Lumina Windsinger and help her escape Fenris Keep.
    .complete 96204,1 --The Windshaper's Wrath
    .complete 96204,2 --The Windshaper's Wrath
    .mob Lumina Windsinger
step
    .goto 1421,43.4,40.99
    >>Talk to |cRXP_FRIENDLY_Lumina Windsinger|r
    .turnin 96204 >>Turn in The Windshaper's Wrath
    .accept 95034 >>Accept The Debt << Undead
    .target Lumina Windsinger
step
    .goto 1421,43.4,40.99
    >>Kill |cRXP_ENEMY_Lumina Windsinger|r
    *Speak with Lumina Windsinger in the Sepulcher.
    .complete 95034,1 << Undead --The Debt
    .mob Lumina Windsinger
step
    .goto 1421,43.4,40.99
    >>Talk to |cRXP_FRIENDLY_Lumina Windsinger|r
    .turnin 95034 >>Turn in The Debt << Undead
    .accept 95036 >>Accept A Moon-Kissed Blade << Undead
    .target Lumina Windsinger
step
    .goto 1421,43.4,41.1
    >>Kill |cRXP_ENEMY_Trevan Rol|r. Collect |cRXP_LOOT_[Trevan's Weapon Notes]|r. Collect |cRXP_LOOT_[Enchanted Silver Ingot]|r. Collect |cRXP_LOOT_[Purified Kor Gem]|r
    *Speak with Trevan Rol in the Sepulcher and bring him the materials he requires.
    .complete 95036,1 << Undead --A Moon-Kissed Blade
    .complete 95036,2 << Undead --A Moon-Kissed Blade
    .complete 95036,4 << Undead --A Moon-Kissed Blade
    .complete 95036,5 << Undead --A Moon-Kissed Blade
    .mob Trevan Rol
step
    .goto 1436,42.5,71.7
    *|cRXP_WARN_Inside The Deadmines: bring a group.|r
    >>Collect |cRXP_LOOT_[Whitestone Oak Lumber]|r from |cRXP_ENEMY_Goblin Woodcarver|r
    *Speak with Trevan Rol in the Sepulcher and bring him the materials he requires.
    .complete 95036,3 << Undead --A Moon-Kissed Blade
    .mob Goblin Woodcarver
step
    .goto 1421,43.4,41.1
    >>Talk to |cRXP_FRIENDLY_Trevan Rol|r
    .turnin 95036 >>Turn in A Moon-Kissed Blade << Undead
    .accept 95111 >>Accept An Underrated Talent
    .target Trevan Rol
step
    .goto 1424,60.43,26.18
    >>Talk to |cRXP_FRIENDLY_Ott|r
    .turnin 95111 >>Turn in An Underrated Talent
    .accept 95125 >>Accept Ott's Masterwork
    .target Ott
step
    .goto 1424,60.43,26.18
    >>Kill |cRXP_ENEMY_Ott|r
    *Watch as Ott forges your blade.
    .complete 95125,1 --Ott's Masterwork
    .mob Ott
step
    .goto 1424,60.43,26.18
    >>Talk to |cRXP_FRIENDLY_Ott|r
    .turnin 95125 >>Turn in Ott's Masterwork
    .accept 95126 >>Accept The Moonsilver Blade
    .target Ott
step
    .goto 1421,43.4,41.1
    >>Talk to |cRXP_FRIENDLY_Trevan Rol|r
    .turnin 95126 >>Turn in The Moonsilver Blade
    .target Trevan Rol
step
    .goto 1421,43.4,40.99
    >>Talk to |cRXP_FRIENDLY_Lumina Windsinger|r
    .accept 95140 >>Accept Old Fire-Eye << Undead
    .target Lumina Windsinger
step
    .goto 1421,47.84,85.03
    >>Kill |cRXP_ENEMY_Old Fire-Eye|r
    *Use the Moonsilver Blade to destroy Old Fire-Eye in Silverpine Forest.
    *|cRXP_WARN_Elite targets here. Group up or skip.|r
    .complete 95140,1 << Undead --Old Fire-Eye
    .mob Old Fire-Eye
step
    >>Collect |cRXP_LOOT_[Moonsilver Blade]|r
    *Use the Moonsilver Blade to destroy Old Fire-Eye in Silverpine Forest.
    .complete 95140,2 << Undead --Old Fire-Eye
step
    .goto 1421,43.4,40.99
    >>Talk to |cRXP_FRIENDLY_Lumina Windsinger|r
    .turnin 95140 >>Turn in Old Fire-Eye << Undead
    .target Lumina Windsinger
step
    +|cRXP_WARN_Done:|r Moonsilver Blade / Wolfsbane. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Paladin Undead
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 1-2 paladin starter (Undead)
#displayname 1-2 paladin starter (Undead)
step
    +|cRXP_WARN_MUST DO: paladin starter|r. Click to start.
    *Reward: Holy Light (Rediscovering the Light, Aramis Hammerhand in Deathknell)
step
    .goto 1420,30.22,71.65
    >>Talk to |cRXP_FRIENDLY_Undertaker Mordo|r
    .accept 363 >>Accept Rude Awakening << Undead
    .target Undertaker Mordo
step
    .goto 1420,30.84,66.2
    >>Talk to |cRXP_FRIENDLY_Shadow Priest Sarvis|r
    .turnin 363 >>Turn in Rude Awakening << Undead
    .accept 364 >>Accept The Mindless Ones
    .target Shadow Priest Sarvis
step
    .goto 1420,34.59,62.77
    >>Kill |cRXP_ENEMY_Mindless Zombie|r. Kill |cRXP_ENEMY_Wretched Zombie|r
    *Shadow Priest Sarvis wants you to kill 8 Mindless Zombies and 8 Wretched Zombies.
    .complete 364,1 --The Mindless Ones
    .complete 364,2 --The Mindless Ones
    .mob Mindless Zombie
    .mob Wretched Zombie
step
    .goto 1420,30.84,66.2
    >>Talk to |cRXP_FRIENDLY_Shadow Priest Sarvis|r
    .turnin 364 >>Turn in The Mindless Ones
    .accept 98601 >>Accept A Difficult Path << Undead
    .target Shadow Priest Sarvis
step
    .goto 1420,31.01,66.24
    >>Talk to |cRXP_FRIENDLY_Aramis Hammerhand|r
    .turnin 98601 >>Turn in A Difficult Path << Undead
    .target Aramis Hammerhand
step
    +|cRXP_WARN_Done:|r paladin starter. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Paladin Undead/Horde Paladin Tauren
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 40-49
#name 40 Level 40 mount (Undead/Tauren)
#displayname 40 Level 40 mount (Undead/Tauren)
step
    +|cRXP_WARN_MUST DO: Level 40 mount|r. Click to start.
    *Reward: Summon Warhorse; paladins skip the 100 gold riding cost this way (Icy Veins news)
step
    .goto 1420,22.09,44.66
    >>Talk to |cRXP_FRIENDLY_Danitha Morr|r
    .accept 94971 >>Accept A Paladin's Steed << Undead/Tauren
    .target Danitha Morr
step
    .goto 1420,22.09,44.66
    >>Talk to |cRXP_FRIENDLY_Danitha Morr|r
    .turnin 94971 >>Turn in A Paladin's Steed << Undead/Tauren
    .target Danitha Morr
step
    +|cRXP_WARN_Done:|r Level 40 mount. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Paladin
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 50-60
#name 60 Epic mount: Summon Charger
#displayname 60 Epic mount: Summon Charger
step
    +|cRXP_WARN_LEVEL 60: Epic mount: Summon Charger|r. Click to start.
    *Reward: Summon Charger
    *|cRXP_WARN_Needs a group for part of it.|r
step
    .goto 1420,22.09,44.66
    >>Talk to |cRXP_FRIENDLY_Danitha Morr|r
    .accept 97184 >>Accept The Divination Scryer
    .target Danitha Morr
step
    .goto 1444,59.2,45.1
    *|cRXP_WARN_Inside Dire Maul: bring a group.|r
    >>Collect |cRXP_LOOT_[Azerothian Diamond]|r from |cRXP_ENEMY_Cliff Breaker|r, |cRXP_ENEMY_Anubisath Guardian|r
    *Bring an Azerothian Diamond and a Pristine Black Diamond to Danitha Morr at Bandarion Keep in Tirisfal Glades.
    .complete 97184,1 --The Divination Scryer
    .mob Cliff Breaker
    .mob Anubisath Guardian
step
    .goto 1423,26.52,10.36
    *|cRXP_WARN_Inside Stratholme: bring a group.|r
    >>Collect |cRXP_LOOT_[Pristine Black Diamond]|r from |cRXP_ENEMY_Maleki the Pallid|r, |cRXP_ENEMY_Urok Doomhowl|r, |cRXP_ENEMY_Scarlet Magus|r
    *Bring an Azerothian Diamond and a Pristine Black Diamond to Danitha Morr at Bandarion Keep in Tirisfal Glades.
    .complete 97184,2 --The Divination Scryer
    .mob Maleki the Pallid
    .mob Urok Doomhowl
step
    .goto 1420,22.09,44.66
    >>Talk to |cRXP_FRIENDLY_Danitha Morr|r
    .turnin 97184 >>Turn in The Divination Scryer
    .target Danitha Morr
step
    +|cRXP_WARN_Done:|r Epic mount: Summon Charger. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Paladin
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 50-60
#name 60 Raid class chains (info)
#displayname 60 Raid class chains (info)
step
    +|cRXP_WARN_Raid or not-yet-open class chains.|r Listed for planning, not guided. Click to close.
    *epic mount: Summon Forsaken Charger: Summon Forsaken Charger (unverified)
    *Quel'Serrar: Quel'Serrar, main-hand sword with a defensive proc (raid)
]])
