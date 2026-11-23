RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Warlock
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 20-29
#name 20 Succubus/Incubus
#displayname 20 Succubus/Incubus
step
    +|cRXP_WARN_ITEM: Succubus/Incubus|r. Click to start.
    *Reward: Small Soul Pouch (14 slots) plus Succubus or Incubus
    *Why: Free shard bag; grimoires do not carry over between the two demons
    *Forever: changed in Forever: Incubus option added; Wish You Were Here now level 27
step
    .goto 1453,39.22,85.23
    >>Talk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .accept 1716 >>Accept Devourer of Souls
    .target Gakin the Darkbinder
step
    .goto 1413,49.31,57.1
    >>Talk to |cRXP_FRIENDLY_Takar the Seer|r
    .turnin 1716 >>Turn in Devourer of Souls
    .accept 1738 >>Accept Heartswood
    .target Takar the Seer
step
    .goto 1440,31.84,31.52
    >>Collect |cRXP_LOOT_[Heartswood]|r from |cRXP_ENEMY_Dark Strand Excavator|r
    *Retrieve the Heartswood from Ashenvale and bring it to Gakin the Darkbinder in the Mage Quarter of Stormwind.
    .complete 1738,1 --Heartswood
    .mob Dark Strand Excavator
step
    .goto 1453,39.22,85.23
    >>Talk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .turnin 1738 >>Turn in Heartswood
    .accept 1739 >>Accept The Binding
    .target Gakin the Darkbinder
step
    >>Kill |cRXP_ENEMY_Summoned Succubus|r
    *Using the Heartswood Core, summon and subdue a succubus, then return the Heartswood Core to Gakin the Darkbinder in the Slaughtered Lamb.
    .complete 1739,1 --The Binding
    .mob Summoned Succubus
step
    .goto 1453,39.22,85.23
    >>Talk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .turnin 1739 >>Turn in The Binding
    .target Gakin the Darkbinder
step
    +|cRXP_WARN_Done:|r Succubus/Incubus. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Warlock
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 20-29
#name 22-25 Orb of Soran'ruk / Staff of Soran'ruk
#displayname 22-25 Orb of Soran'ruk / Staff of Soran'ruk
step
    +|cRXP_WARN_ITEM: Orb of Soran'ruk / Staff of Soran'ruk|r. Click to start.
    *Reward: Choose Staff of Soran'ruk (rare, +14 Sta, +34 Fire and Shadow damage) or Orb of Soran'ruk (off-hand, spell damage + self-heal use)
    *|cff40ff40GOOD|r [Orb of Soran'ruk]: Held In Off-hand - +9 fire/shadow at 20 is strong; but the Staff of Soran'ruk (+34/+34) is far better if you use a 2H
    *|cff40ff40GOOD|r [Staff of Soran'ruk]: Two-Hand Staff, 15.69 DPS, +14 Stamina - +34 fire/shadow at req 20 is far above anything else at that level
    *Why: Big caster weapon for 20-30; needs 3 Soran'ruk Fragments (BFD Twilight mobs) + 1 Large Soran'ruk Fragment (SFK Shadowfang Darksouls); take the Orb if you use a one-hander
    *|cRXP_WARN_Needs a group for part of it.|r
    *Forever: changed in Forever: staff now rare with +14 Sta and +34 Fire/Shadow (Classic: uncommon, +9)
step
    .goto 1413,49.31,57.21
    >>Talk to |cRXP_FRIENDLY_Doan Karhan|r
    .accept 1740 >>Accept The Orb of Soran'ruk
    .target Doan Karhan
step
    .goto 1440,14.5,14.2
    *|cRXP_WARN_Inside Blackfathom Deeps: bring a group.|r
    >>Collect |cRXP_LOOT_[Soran'ruk Fragment]|r from |cRXP_ENEMY_Twilight Acolyte|r
    *Find 3 Soran'ruk Fragments and 1 Large Soran'ruk Fragment and return them to Doan Karhan in the Barrens.
    .complete 1740,1 --The Orb of Soran'ruk
    .mob Twilight Acolyte
step
    .goto 1421,44.8,67.8
    *|cRXP_WARN_Inside Shadowfang Keep: bring a group.|r
    >>Collect |cRXP_LOOT_[Large Soran'ruk Fragment]|r from |cRXP_ENEMY_Shadowfang Darksoul|r
    *Find 3 Soran'ruk Fragments and 1 Large Soran'ruk Fragment and return them to Doan Karhan in the Barrens.
    .complete 1740,2 --The Orb of Soran'ruk
    .mob Shadowfang Darksoul
step
    .goto 1413,49.31,57.21
    >>Talk to |cRXP_FRIENDLY_Doan Karhan|r
    .turnin 1740 >>Turn in The Orb of Soran'ruk
    .target Doan Karhan
step
    +|cRXP_WARN_Done:|r Orb of Soran'ruk / Staff of Soran'ruk. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Warlock
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 30-39
#name 30 Felhunter
#displayname 30 Felhunter
step
    +|cRXP_WARN_ITEM: Felhunter|r. Click to start.
    *Reward: Box of Souls (16 slots) plus Felhunter
    *Why: Bigger shard bag and the Felhunter
    *Forever: classic unchanged
step
    .goto 1453,39.22,85.23
    >>Talk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .accept 1798 >>Accept Seeking Strahad
    .target Gakin the Darkbinder
step
    .goto 1413,62.63,35.5
    >>Talk to |cRXP_FRIENDLY_Strahad Farsan|r
    .turnin 1798 >>Turn in Seeking Strahad
    .accept 1758 >>Accept Tome of the Cabal
    .target Strahad Farsan
step
    .goto 1455,74.19,9.39
    >>Talk to |cRXP_FRIENDLY_Krom Stoutarm|r
    .turnin 1758 >>Turn in Tome of the Cabal
    .accept 1802 >>Accept Tome of the Cabal
    .target Krom Stoutarm
step
    .goto 1424,27.78,72.79
    >>Collect |cRXP_LOOT_[Moldy Tome]|r from |cRXP_PICK_Tome of the Cabal|r
    *Retrieve the Moldy Tome and Tattered Manuscript for Krom Stoutarm in Ironforge.
    .complete 1802,1 --Tome of the Cabal
step
    .goto 1441,43.44,32.69
    >>Collect |cRXP_LOOT_[Tattered Manuscript]|r from |cRXP_PICK_Damaged Chest|r
    *Retrieve the Moldy Tome and Tattered Manuscript for Krom Stoutarm in Ironforge.
    .complete 1802,2 --Tome of the Cabal
step
    .goto 1455,74.19,9.39
    >>Talk to |cRXP_FRIENDLY_Krom Stoutarm|r
    .turnin 1802 >>Turn in Tome of the Cabal
    .accept 1804 >>Accept Tome of the Cabal
    .target Krom Stoutarm
step
    .goto 1437,48.1,56.5
    *|cRXP_WARN_Inside Excavation Site: Wetlands: bring a group.|r
    >>Collect |cRXP_LOOT_[Rod of Channeling]|r from |cRXP_ENEMY_Dragonmaw Thaumaturgist|r, |cRXP_ENEMY_Dragonmaw Bonewarder|r
    *Bring the Reconstructed Tome and 3 Rods of Channeling to Strahad Farsan in Ratchet.
    .complete 1804,1 --Tome of the Cabal
    .mob Dragonmaw Thaumaturgist
    .mob Dragonmaw Bonewarder
step
    .goto 1413,62.63,35.5
    >>Talk to |cRXP_FRIENDLY_Strahad Farsan|r
    .turnin 1804 >>Turn in Tome of the Cabal
    .accept 1795 >>Accept The Binding
    .target Strahad Farsan
step
    >>Kill |cRXP_ENEMY_Summoned Felhunter|r
    *Using the Tome of the Cabal, summon and subdue a felhunter, then return the Tome of the Cabal to Strahad Farsan in Ratchet.
    .complete 1795,1 --The Binding
    .mob Summoned Felhunter
step
    .goto 1413,62.63,35.5
    >>Talk to |cRXP_FRIENDLY_Strahad Farsan|r
    .turnin 1795 >>Turn in The Binding
    .target Strahad Farsan
step
    +|cRXP_WARN_Done:|r Felhunter. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Warlock
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 30-39
#name 35-40 Staff of Dar'Orahil / Orb of Dar'Orahil
#displayname 35-40 Staff of Dar'Orahil / Orb of Dar'Orahil
step
    +|cRXP_WARN_ITEM: Staff of Dar'Orahil / Orb of Dar'Orahil|r. Click to start.
    *Reward: Dar'Orahil version: choose Staff of Dar'Orahil (ilvl 40, +13 Int, +9 Sta, Classic stats) or Orb of Dar'Orahil (off-hand); Horde gets the Noh'Orahil equivalent (Horde item names unverified)
    *Why: Free caster staff/off-hand at 40; Cleansing step is marked as a group quest
    *|cRXP_WARN_Needs a group for part of it.|r
    *Forever: classic unchanged (removed from retail in 4.0.3a, still in Classic and Forever; final quest exists on Wowhead Forever)
step
    .goto 1455,50.35,5.66
    >>Talk to |cRXP_FRIENDLY_Briarthorn|r
    .accept 4965 >>Accept Knowledge of the Orb of Orahil
    .target Briarthorn
step
    .goto 1413,62.51,35.45
    >>Talk to |cRXP_FRIENDLY_Menara Voidrender|r
    .turnin 4965 >>Turn in Knowledge of the Orb of Orahil
    .accept 1799 >>Accept Fragments of the Orb of Orahil
    .target Menara Voidrender
step
    .goto 1443,80.3,76.98
    >>Collect |cRXP_LOOT_[Infernal Orb]|r from |cRXP_ENEMY_Burning Blade Summoner|r
    *Speak to Menara's acolytes inside the tower above Ratchet and choose one of their paths to follow.
    .complete 1799,1 --Fragments of the Orb of Orahil
    .mob Burning Blade Summoner
step
    .goto 1445,46.06,57.09
    >>Talk to |cRXP_FRIENDLY_Tabetha|r
    .turnin 1799 >>Turn in Fragments of the Orb of Orahil
    .accept 4961 >>Accept Cleansing of the Orb of Orahil
    .target Tabetha
step
    >>Kill |cRXP_ENEMY_Demon of the Orb|r
    *Kill the Demon of the Orb, then speak with Tabetha.
    *|cRXP_WARN_Elite targets here. Group up or skip.|r
    .complete 4961,1 --Cleansing of the Orb of Orahil
    .mob Demon of the Orb
step
    .goto 1445,46.06,57.09
    >>Talk to |cRXP_FRIENDLY_Tabetha|r
    .turnin 4961 >>Turn in Cleansing of the Orb of Orahil
    .accept 4976 >>Accept Returning the Cleansed Orb
    .target Tabetha
step
    .goto 1413,62.51,35.45
    >>Talk to |cRXP_FRIENDLY_Menara Voidrender|r
    .turnin 4976 >>Turn in Returning the Cleansed Orb
    .accept 4964 >>Accept The Completed Orb of Dar'Orahil
    .target Menara Voidrender
step
    .goto 1413,62.51,35.45
    >>Talk to |cRXP_FRIENDLY_Menara Voidrender|r
    .turnin 4964 >>Turn in The Completed Orb of Dar'Orahil
    .target Menara Voidrender
step
    +|cRXP_WARN_Done:|r Staff of Dar'Orahil / Orb of Dar'Orahil. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Warlock
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 50-60
#name 50-55 Shard of the Green Flame
#displayname 50-55 Shard of the Green Flame
step
    +|cRXP_WARN_ITEM: Shard of the Green Flame|r. Click to start.
    *Reward: Shard of the Green Flame (trinket) plus Inferno
    *|cff40ff40GOOD|r [Shard of the Green Flame]: Held In Off-hand, +12 Stamina - strong off-hand for a fire mage or fire warlock at 50
    *Why: Trinket and a core spell; Kroshius is a level 55 elite
    *|cRXP_WARN_Needs a group for part of it.|r
    *Forever: classic unchanged
step
    .goto 1448,41.38,44.85
    >>Talk to |cRXP_FRIENDLY_Niby the Almighty|r
    .accept 7601 >>Accept What Niby Commands
    .target Niby the Almighty
step
    .goto 1448,41.36,45.02
    >>Talk to |cRXP_FRIENDLY_Impsy|r
    .turnin 7601 >>Turn in What Niby Commands
    .accept 7602 >>Accept Flawless Fel Essence
    .target Impsy
step
    .goto 1447,65.72,18.82
    >>Collect |cRXP_LOOT_[Flawless Fel Essence (Azshara)]|r from |cRXP_ENEMY_Legashi Soulstealer|r, |cRXP_ENEMY_Legashi Hellraiser|r, |cRXP_ENEMY_Legashi Blackguard|r
    *Impsy in Felwood has asked that you bring him three Flawless Fel Essences originating from three distinct locations.
    .complete 7602,1 --Flawless Fel Essence
    .mob Legashi Soulstealer
    .mob Legashi Hellraiser
step
    >>Collect |cRXP_LOOT_[Flawless Fel Essence (Jaedenar)]|r from |cRXP_ENEMY_Servant of Caius|r
    *Impsy in Felwood has asked that you bring him three Flawless Fel Essences originating from three distinct locations.
    .complete 7602,2 --Flawless Fel Essence
    .mob Servant of Caius
step
    .goto 1419,57.73,50.62
    >>Collect |cRXP_LOOT_[Flawless Fel Essence (Dark Portal)]|r from |cRXP_ENEMY_Felguard Sentry|r
    *Impsy in Felwood has asked that you bring him three Flawless Fel Essences originating from three distinct locations.
    .complete 7602,3 --Flawless Fel Essence
    .mob Felguard Sentry
step
    .goto 1448,41.36,45.02
    >>Talk to |cRXP_FRIENDLY_Impsy|r
    .turnin 7602 >>Turn in Flawless Fel Essence
    .accept 7603 >>Accept Kroshius' Infernal Core
    .target Impsy
step
    .goto 1448,45.7,34.76
    >>Kill |cRXP_ENEMY_Kroshius|r. Collect |cRXP_LOOT_[Kroshius' Infernal Core]|r from |cRXP_ENEMY_Kroshius|r
    *Search Shatter Scar Vale in Felwood for the remains of Kroshius. When you locate the remains, use the Fel Fire near them and await Kroshius' return. When the infernal has awoken, slay him and take from his corpse Kroshius' Infernal Core.
    *|cRXP_WARN_Elite targets here. Group up or skip.|r
    .complete 7603,1 --Kroshius' Infernal Core
    .complete 7603,2 --Kroshius' Infernal Core
    .mob Kroshius
step
    .goto 1448,41.38,44.85
    >>Talk to |cRXP_FRIENDLY_Niby the Almighty|r
    .turnin 7603 >>Turn in Kroshius' Infernal Core
    .target Niby the Almighty
step
    +|cRXP_WARN_Done:|r Shard of the Green Flame. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Warlock
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 50-60
#name 50-52 Robes of Servitude / Abyss Shard +
#displayname 50-52 Robes of Servitude / Abyss Shard +
step
    +|cRXP_WARN_ITEM: Robes of Servitude / Abyss Shard +|r. Click to start.
    *Reward: Soul Harvester (staff, +73 Shadow), Abyss Shard (warlock trinket), Robes of Servitude (cloth chest)
    *|cff40ff40GOOD|r [Robes of Servitude]: Chest Cloth, 75 armor, +15 Stamina, +10 Intellect - +23 fire/shadow chest; great for a warlock at 50
    *|cff40ff40GOOD|r [Abyss Shard]: Trinket, +10 Shadow Resistance - +12 spell power plus a free Voidwalker; good leveling trinket
    *|cff40ff40GOOD|r [Soul Harvester]: Two-Hand Staff, 33.48 DPS, +19 Stamina, +16 Intellect - +73 shadow damage at 50 is far above normal; best pick for a shadow warlock
    *Why: Soul Harvester is a strong shadow staff at 52; needs two of each Voodoo Feather
    *|cRXP_WARN_Needs a group for part of it.|r
    *Forever: changed in Forever: 12,400 XP; Icy Veins says all three items are granted, Conquest Capped says pick one (unverified)
step
    .goto 1453,39.24,84.96
    >>Talk to |cRXP_FRIENDLY_Demisette Cloyce|r
    .accept 8419 >>Accept An Imp's Request
    .target Demisette Cloyce
step
    .goto 1448,37.37,66.1
    >>Collect |cRXP_LOOT_[Felcloth]|r from |cRXP_ENEMY_Felhunter|r, |cRXP_ENEMY_Felguard Sentry|r, |cRXP_ENEMY_Legashi Satyr|r
    *Bring a piece of felcloth to Impsy in Felwood.
    .complete 8419,1 --An Imp's Request
    .mob Felhunter
    .mob Felguard Sentry
step
    .goto 1448,41.36,45.02
    >>Talk to |cRXP_FRIENDLY_Impsy|r
    .turnin 8419 >>Turn in An Imp's Request
    .accept 8421 >>Accept The Wrong Stuff
    .target Impsy
step
    .goto 1448,51,24.93
    >>Collect |cRXP_LOOT_[Rotting Wood]|r from |cRXP_ENEMY_Irontree Wanderer|r, |cRXP_ENEMY_Irontree Stomper|r, |cRXP_ENEMY_Withered Protector|r
    *Bring 10 Rotting Wood and 4 Bloodvenom Essence to Impsy in Felwood.
    .complete 8421,1 --The Wrong Stuff
    .mob Irontree Wanderer
    .mob Irontree Stomper
step
    >>Collect |cRXP_LOOT_[Bloodvenom Essence]|r from |cRXP_ENEMY_Vile Moonwell Ooze|r
    *Bring 10 Rotting Wood and 4 Bloodvenom Essence to Impsy in Felwood.
    .complete 8421,2 --The Wrong Stuff
    .mob Vile Moonwell Ooze
step
    .goto 1448,41.36,45.02
    >>Talk to |cRXP_FRIENDLY_Impsy|r
    .turnin 8421 >>Turn in The Wrong Stuff
    .accept 8422 >>Accept Trolls of a Feather
    .target Impsy
step
    >>Collect |cRXP_LOOT_[Amber Voodoo Feather]|r from |cRXP_ENEMY_Gasher|r, |cRXP_ENEMY_Zul'Lor|r, |cRXP_ENEMY_Gasher|r. Collect |cRXP_LOOT_[Blue Voodoo Feather]|r from |cRXP_ENEMY_Hukku|r, |cRXP_ENEMY_Mijan|r, |cRXP_ENEMY_Hukku|r. Collect |cRXP_LOOT_[Green Voodoo Feather]|r from |cRXP_ENEMY_Loro|r, |cRXP_ENEMY_Zolo|r
    *Bring a total of 6 Voodoo Feathers from the trolls in sunken temple.
    .complete 8422,1 --Trolls of a Feather
    .complete 8422,2 --Trolls of a Feather
    .complete 8422,3 --Trolls of a Feather
    .mob Gasher
    .mob Zul'Lor
    .mob Hukku
    .mob Mijan
    .mob Loro
    .mob Zolo
step
    .goto 1448,41.36,45.02
    >>Talk to |cRXP_FRIENDLY_Impsy|r
    .turnin 8422 >>Turn in Trolls of a Feather
    .target Impsy
step
    +|cRXP_WARN_Done:|r Robes of Servitude / Abyss Shard +. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Warlock Human
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 1-2 Imp (Human)
#displayname 1-2 Imp (Human)
step
    +|cRXP_WARN_MUST DO: Imp|r. Click to start.
    *Reward: Summon Imp (now a level 1-4 quest, not known at level 1)
step
    .goto 1429,48.17,42.94
    >>Talk to |cRXP_FRIENDLY_Deputy Willem|r
    .accept 783 >>Accept A Threat Within
    .target Deputy Willem
step
    .goto 1429,48.92,41.61
    >>Talk to |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 783 >>Turn in A Threat Within
    .accept 7 >>Accept Kobold Camp Cleanup
    .target Marshal McBride
step
    .goto 1429,48.89,36.44
    >>Kill |cRXP_ENEMY_Kobold Vermin|r
    *Kill 10 Kobold Vermin, then return to Marshal McBride.
    .complete 7,1 --Kobold Camp Cleanup
    .mob Kobold Vermin
step
    .goto 1429,48.92,41.61
    >>Talk to |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 7 >>Turn in Kobold Camp Cleanup
    .accept 3105 >>Accept Tainted Letter << Human
    .target Marshal McBride
step
    .goto 1429,49.87,42.65
    >>Talk to |cRXP_FRIENDLY_Drusilla La Salle|r
    .turnin 3105 >>Turn in Tainted Letter << Human
    .target Drusilla La Salle
step
    +|cRXP_WARN_Done:|r Imp. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Warlock Gnome
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 1 Imp (Gnome)
#displayname 1 Imp (Gnome)
step
    +|cRXP_WARN_MUST DO: Imp|r. Click to start.
    *Reward: Summon Imp (now a level 1-4 quest, not known at level 1)
step
    .goto 1426,29.93,71.2
    >>Talk to |cRXP_FRIENDLY_Sten Stoutarm|r
    .accept 179 >>Accept Dwarven Outfitters
    .target Sten Stoutarm
step
    >>Collect |cRXP_LOOT_[Tough Wolf Meat]|r from |cRXP_ENEMY_TEST WOLF (ALPHA FIRST)|r, |cRXP_ENEMY_TEST WOLF (ALPHA SECOND)|r, |cRXP_ENEMY_Annie|r
    *Sten Stoutarm would like 8 pieces of Tough Wolf Meat.
    .complete 179,1 --Dwarven Outfitters
    .mob TEST WOLF (ALPHA FIRST)
    .mob TEST WOLF (ALPHA SECOND)
step
    .goto 1426,29.93,71.2
    >>Talk to |cRXP_FRIENDLY_Sten Stoutarm|r
    .turnin 179 >>Turn in Dwarven Outfitters
    .accept 3115 >>Accept Tainted Memorandum << Gnome
    .target Sten Stoutarm
step
    .goto 1426,28.65,66.14
    >>Talk to |cRXP_FRIENDLY_Alamar Grimm|r
    .turnin 3115 >>Turn in Tainted Memorandum << Gnome
    .target Alamar Grimm
step
    +|cRXP_WARN_Done:|r Imp. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Warlock
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 10-20 Voidwalker
#displayname 10-20 Voidwalker
step
    +|cRXP_WARN_MUST DO: Voidwalker|r. Click to start.
    *Reward: Summon Voidwalker (Orgrimmar Skull Rock version easier with a friend)
step
    .goto 1429,44.49,66.27
    >>Talk to |cRXP_FRIENDLY_Remen Marcot|r
    .accept 1685 >>Accept Gakin's Summons
    .target Remen Marcot
step
    .goto 1453,39.22,85.23
    >>Talk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .turnin 1685 >>Turn in Gakin's Summons
    .accept 1688 >>Accept Surena Caledon
    .target Gakin the Darkbinder
step
    .goto 1429,71.01,80.77
    >>Collect |cRXP_LOOT_[Surena's Choker]|r from |cRXP_ENEMY_Surena Caledon|r
    *Retrieve Surena's Choker for Gakin the Darkbinder in Stormwind.
    .complete 1688,1 --Surena Caledon
    .mob Surena Caledon
step
    .goto 1453,39.22,85.23
    >>Talk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .turnin 1688 >>Turn in Surena Caledon
    .accept 1689 >>Accept The Binding
    .target Gakin the Darkbinder
step
    >>Kill |cRXP_ENEMY_Summoned Voidwalker|r
    *Using the Bloodstone Choker, summon and subdue a voidwalker, then return the Bloodstone Choker to Gakin the Darkbinder in Stormwind.
    .complete 1689,1 --The Binding
    .mob Summoned Voidwalker
step
    .goto 1453,39.22,85.23
    >>Talk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .turnin 1689 >>Turn in The Binding
    .accept 1716 >>Accept Devourer of Souls
    .target Gakin the Darkbinder
step
    .goto 1413,49.31,57.1
    >>Talk to |cRXP_FRIENDLY_Takar the Seer|r
    .turnin 1716 >>Turn in Devourer of Souls
    .target Takar the Seer
step
    .goto 1455,47.63,9.26
    >>Talk to |cRXP_FRIENDLY_Lago Blackwrench|r
    .accept 1717 >>Accept Gakin's Summons
    .target Lago Blackwrench
step
    .goto 1453,39.22,85.23
    >>Talk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .turnin 1717 >>Turn in Gakin's Summons
    .target Gakin the Darkbinder
step
    .goto 1413,49.31,57.1
    >>Talk to |cRXP_FRIENDLY_Takar the Seer|r
    .accept 1738 >>Accept Heartswood
    .target Takar the Seer
step
    .goto 1440,31.84,31.52
    >>Collect |cRXP_LOOT_[Heartswood]|r from |cRXP_ENEMY_Dark Strand Excavator|r
    *Retrieve the Heartswood from Ashenvale and bring it to Gakin the Darkbinder in the Mage Quarter of Stormwind.
    .complete 1738,1 --Heartswood
    .mob Dark Strand Excavator
step
    .goto 1453,39.22,85.23
    >>Talk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .turnin 1738 >>Turn in Heartswood
    .accept 1739 >>Accept The Binding
    .target Gakin the Darkbinder
step
    >>Kill |cRXP_ENEMY_Summoned Succubus|r
    *Using the Heartswood Core, summon and subdue a succubus, then return the Heartswood Core to Gakin the Darkbinder in the Slaughtered Lamb.
    .complete 1739,1 --The Binding
    .mob Summoned Succubus
step
    .goto 1453,39.22,85.23
    >>Talk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .turnin 1739 >>Turn in The Binding
    .target Gakin the Darkbinder
step
    +|cRXP_WARN_Done:|r Voidwalker. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Warlock
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 40-49
#name 40 Felsteed
#displayname 40 Felsteed
step
    +|cRXP_WARN_MUST DO: Felsteed|r. Click to start.
    *Reward: Summon Felsteed, free; warlocks skip the 100 gold riding cost (Icy Veins news)
step
    .goto 1453,39.24,84.96
    >>Talk to |cRXP_FRIENDLY_Demisette Cloyce|r
    .accept 4488 >>Accept Summon Felsteed
    .target Demisette Cloyce
step
    .goto 1413,62.63,35.5
    >>Talk to |cRXP_FRIENDLY_Strahad Farsan|r
    .turnin 4488 >>Turn in Summon Felsteed
    .accept 4490 >>Accept Summon Felsteed
    .target Strahad Farsan
step
    .goto 1413,62.63,35.5
    >>Talk to |cRXP_FRIENDLY_Strahad Farsan|r
    .turnin 4490 >>Turn in Summon Felsteed
    .target Strahad Farsan
step
    .goto 1455,50.35,5.66
    >>Talk to |cRXP_FRIENDLY_Briarthorn|r
    .accept 4487 >>Accept Summon Felsteed
    .target Briarthorn
step
    .goto 1413,62.63,35.5
    >>Talk to |cRXP_FRIENDLY_Strahad Farsan|r
    .turnin 4487 >>Turn in Summon Felsteed
    .target Strahad Farsan
step
    +|cRXP_WARN_Done:|r Felsteed. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Warlock
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 50-60
#name 60 Ritual of Doom
#displayname 60 Ritual of Doom
step
    +|cRXP_WARN_LEVEL 60: Ritual of Doom|r. Click to start.
    *Reward: Ritual of Doom + Tome of Sacrifice
    *|cRXP_WARN_Needs a group for part of it.|r
step
    .goto 1419,34.13,50.14
    >>Talk to |cRXP_FRIENDLY_Daio the Decrepit|r
    .accept 7581 >>Accept The Prison's Bindings
    .target Daio the Decrepit
step
    .goto 1444,59.2,45.1
    *|cRXP_WARN_Inside Dire Maul: bring a group.|r
    >>Collect |cRXP_LOOT_[Satyr Blood]|r from |cRXP_ENEMY_Wildspawn Satyr|r, |cRXP_ENEMY_Wildspawn Rogue|r, |cRXP_ENEMY_Wildspawn Trickster|r
    *Travel to Dire Maul in Feralas and recover 15 Satyr Blood from the Wildspawn Satyr that inhabit the Warpwood Quarter. Return to Daio in the Tainted Scar when this is done.
    .complete 7581,1 --The Prison's Bindings
    .mob Wildspawn Satyr
    .mob Wildspawn Rogue
step
    .goto 1419,34.13,50.14
    >>Talk to |cRXP_FRIENDLY_Daio the Decrepit|r
    .turnin 7581 >>Turn in The Prison's Bindings
    .target Daio the Decrepit
step
    +|cRXP_WARN_Done:|r Ritual of Doom. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Warlock
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 50-60
#name 55-60 Epic mount: Summon Dreadsteed
#displayname 55-60 Epic mount: Summon Dreadsteed
step
    +|cRXP_WARN_LEVEL 60: Epic mount: Summon Dreadsteed|r. Click to start.
    *Reward: Summon Dreadsteed
    *|cRXP_WARN_Needs a group for part of it.|r
step
    .goto 1453,56.39,74.09
    >>Talk to |cRXP_FRIENDLY_Crier Goodman|r
    .accept 5066 >>Accept A Call to Arms: The Plaguelands!
    .target Crier Goodman
step
    .goto 1422,42.7,84.03
    >>Talk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
    .turnin 5066 >>Turn in A Call to Arms: The Plaguelands!
    .accept 5092 >>Accept Clear the Way
    .target Commander Ashlam Valorfist
step
    .goto 1422,38.29,56.44
    >>Kill |cRXP_ENEMY_Skeletal Flayer|r
    *Kill 10 Skeletal Flayers and 10 Slavering Ghouls in Sorrow Hill.
    .complete 5092,1 --Clear the Way
    .mob Skeletal Flayer
step
    .goto 1422,50.35,80.48
    >>Kill |cRXP_ENEMY_Slavering Ghoul|r
    *Kill 10 Skeletal Flayers and 10 Slavering Ghouls in Sorrow Hill.
    .complete 5092,2 --Clear the Way
    .mob Slavering Ghoul
step
    .goto 1422,42.7,84.03
    >>Talk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
    .turnin 5092 >>Turn in Clear the Way
    .accept 5097 >>Accept All Along the Watchtowers
    .target Commander Ashlam Valorfist
step
    .goto 1422,40.05,71.6
    >>Kill |cRXP_ENEMY_Andorhal Tower One|r. Kill |cRXP_ENEMY_Andorhal Tower Two|r. Kill |cRXP_ENEMY_Andorhal Tower Four|r
    *Using the Beacon Torch, mark each tower in Andorhal; you will need to stand in the doorway of the tower to successfully mark it.
    .complete 5097,1 --All Along the Watchtowers
    .complete 5097,2 --All Along the Watchtowers
    .complete 5097,4 --All Along the Watchtowers
    .mob Andorhal Tower One
    .mob Andorhal Tower Two
    .mob Andorhal Tower Four
step
    .goto 1422,44.3,63.25
    >>Kill |cRXP_ENEMY_Andorhal Tower Three|r
    *Using the Beacon Torch, mark each tower in Andorhal; you will need to stand in the doorway of the tower to successfully mark it.
    .complete 5097,3 --All Along the Watchtowers
    .mob Andorhal Tower Three
step
    .goto 1422,42.7,84.03
    >>Talk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
    .turnin 5097 >>Turn in All Along the Watchtowers
    .accept 5533 >>Accept Scholomance
    .target Commander Ashlam Valorfist
step
    .goto 1422,42.66,83.77
    >>Talk to |cRXP_FRIENDLY_Alchemist Arbington|r
    .turnin 5533 >>Turn in Scholomance
    .accept 5537 >>Accept Skeletal Fragments
    .target Alchemist Arbington
step
    .goto 1422,44.48,68.65
    >>Collect |cRXP_LOOT_[Skeletal Fragments]|r from |cRXP_ENEMY_Skeletal Magelord|r, |cRXP_ENEMY_Skeletal Sorcerer|r, |cRXP_ENEMY_Skeletal Terror|r
    *Bring 15 Skeletal Fragments to Alchemist Arbington at Chillwind Point, Western Plaguelands.
    .complete 5537,1 --Skeletal Fragments
    .mob Skeletal Magelord
    .mob Skeletal Sorcerer
step
    .goto 1422,42.66,83.77
    >>Talk to |cRXP_FRIENDLY_Alchemist Arbington|r
    .turnin 5537 >>Turn in Skeletal Fragments
    .accept 5538 >>Accept Mold Rhymes With...
    .target Alchemist Arbington
step
    .goto 1446,51.46,28.81
    >>Talk to |cRXP_FRIENDLY_Krinkle Goodsteel|r
    .turnin 5538 >>Turn in Mold Rhymes With...
    .accept 5801 >>Accept Fire Plume Forged
    .target Krinkle Goodsteel
step
    >>Collect |cRXP_LOOT_[Unfinished Skeleton Key]|r
    *Take the Skeleton Key Mold and 2 Thorium Bars to the top of Fire Plume Ridge in Un'Goro Crater. Use the Skeleton Key Mold by the lava lake to forge the Unfinished Skeleton Key.
    .complete 5801,1 --Fire Plume Forged
step
    .goto 1422,42.66,83.77
    >>Talk to |cRXP_FRIENDLY_Alchemist Arbington|r
    .turnin 5801 >>Turn in Fire Plume Forged
    .accept 5803 >>Accept Araj's Scarab
    .target Alchemist Arbington
step
    >>Collect |cRXP_LOOT_[Araj's Scarab]|r from |cRXP_PICK_Araj's Phylactery|r
    *Destroy Araj the Summoner and bring Araj's Scarab to Alchemist Arbington at Chillwind Point, Western Plaguelands.
    .complete 5803,1 --Araj's Scarab
step
    .goto 1422,42.66,83.77
    >>Talk to |cRXP_FRIENDLY_Alchemist Arbington|r
    .turnin 5803 >>Turn in Araj's Scarab
    .target Alchemist Arbington
step
    +|cRXP_WARN_Done:|r Epic mount: Summon Dreadsteed. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Warlock
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 20-29
#name 20 Succubus/Incubus
#displayname 20 Succubus/Incubus
step
    +|cRXP_WARN_ITEM: Succubus/Incubus|r. Click to start.
    *Reward: Small Soul Pouch (14 slots) plus Succubus or Incubus
    *Why: Free shard bag; grimoires do not carry over between the two demons
    *Forever: changed in Forever: Incubus option added; Wish You Were Here now level 27
step
    .goto 1458,85.06,25.99
    >>Talk to |cRXP_FRIENDLY_Carendin Halgar|r
    .accept 1472 >>Accept Devourer of Souls
    .target Carendin Halgar
step
    .goto 1458,84.81,14.83
    >>Talk to |cRXP_FRIENDLY_Godrick Farsan|r
    .turnin 1472 >>Turn in Devourer of Souls
    .accept 1476 >>Accept Hearts of the Pure
    .target Godrick Farsan
step
    .goto 1454,48.25,45.28
    >>Talk to |cRXP_FRIENDLY_Gan'rul Bloodeye|r
    .accept 1507 >>Accept Devourer of Souls
    .target Gan'rul Bloodeye
step
    .goto 1454,47.06,46.43
    >>Talk to |cRXP_FRIENDLY_Cazul|r
    .turnin 1507 >>Turn in Devourer of Souls
    .accept 1508 >>Accept Blind Cazul
    .target Cazul
step
    .goto 1454,37.04,59.45
    >>Talk to |cRXP_FRIENDLY_Zankaja|r
    .turnin 1508 >>Turn in Blind Cazul
    .accept 1509 >>Accept News of Dogran
    .target Zankaja
step
    .goto 1413,51.93,30.32
    >>Talk to |cRXP_FRIENDLY_Gazrog|r
    .turnin 1509 >>Turn in News of Dogran
    .accept 1510 >>Accept News of Dogran
    .target Gazrog
step
    .goto 1442,73.25,95.13
    >>Talk to |cRXP_FRIENDLY_Ken'zigla|r
    .turnin 1510 >>Turn in News of Dogran
    .accept 1511 >>Accept Ken'zigla's Draught
    .target Ken'zigla
step
    .goto 1413,44.62,59.27
    >>Talk to |cRXP_FRIENDLY_Grunt Logmar|r
    .turnin 1511 >>Turn in Ken'zigla's Draught
    .accept 1515 >>Accept Dogran's Captivity
    .target Grunt Logmar
step
    .goto 1413,43.3,47.89
    >>Talk to |cRXP_FRIENDLY_Grunt Dogran|r
    .turnin 1515 >>Turn in Dogran's Captivity
    .accept 1512 >>Accept Love's Gift
    .target Grunt Dogran
step
    .goto 1454,48.25,45.28
    >>Talk to |cRXP_FRIENDLY_Gan'rul Bloodeye|r
    .turnin 1512 >>Turn in Love's Gift
    .accept 1513 >>Accept The Binding
    .target Gan'rul Bloodeye
step
    >>Kill |cRXP_ENEMY_Summoned Succubus|r
    *Using Dogran's Pendant, summon and subdue a succubus, then return Dogran's Pendant to Gan'rul Bloodeye in Orgrimmar.
    .complete 1513,1 --The Binding
    .mob Summoned Succubus
step
    .goto 1454,48.25,45.28
    >>Talk to |cRXP_FRIENDLY_Gan'rul Bloodeye|r
    .turnin 1513 >>Turn in The Binding
    .target Gan'rul Bloodeye
step
    .goto 1421,47.6,85.65
    >>Collect |cRXP_LOOT_[Dalin's Heart]|r from |cRXP_ENEMY_Dalin Forgewright|r
    *Bring the hearts of Dalin Forgewright and Comar Villard to Carendin Halgar in the Temple of the Damned.
    .complete 1476,1 --Hearts of the Pure
    .mob Dalin Forgewright
step
    .goto 1437,49.93,12.55
    >>Collect |cRXP_LOOT_[Comar's Heart]|r from |cRXP_ENEMY_Comar Villard|r
    *Bring the hearts of Dalin Forgewright and Comar Villard to Carendin Halgar in the Temple of the Damned.
    .complete 1476,2 --Hearts of the Pure
    .mob Comar Villard
step
    .goto 1458,85.06,25.99
    >>Talk to |cRXP_FRIENDLY_Carendin Halgar|r
    .turnin 1476 >>Turn in Hearts of the Pure
    .accept 1474 >>Accept The Binding
    .target Carendin Halgar
step
    >>Kill |cRXP_ENEMY_Summoned Succubus|r
    *Using the Pure Hearts, summon and subdue a succubus, then return the Pure Hearts to Carendin Halgar in the Magic Quarter of the Undercity.
    .complete 1474,1 --The Binding
    .mob Summoned Succubus
step
    .goto 1458,85.06,25.99
    >>Talk to |cRXP_FRIENDLY_Carendin Halgar|r
    .turnin 1474 >>Turn in The Binding
    .target Carendin Halgar
step
    +|cRXP_WARN_Done:|r Succubus/Incubus. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Warlock
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 20-29
#name 22-25 Orb of Soran'ruk / Staff of Soran'ruk
#displayname 22-25 Orb of Soran'ruk / Staff of Soran'ruk
step
    +|cRXP_WARN_ITEM: Orb of Soran'ruk / Staff of Soran'ruk|r. Click to start.
    *Reward: Choose Staff of Soran'ruk (rare, +14 Sta, +34 Fire and Shadow damage) or Orb of Soran'ruk (off-hand, spell damage + self-heal use)
    *|cff40ff40GOOD|r [Orb of Soran'ruk]: Held In Off-hand - +9 fire/shadow at 20 is strong; but the Staff of Soran'ruk (+34/+34) is far better if you use a 2H
    *|cff40ff40GOOD|r [Staff of Soran'ruk]: Two-Hand Staff, 15.69 DPS, +14 Stamina - +34 fire/shadow at req 20 is far above anything else at that level
    *Why: Big caster weapon for 20-30; needs 3 Soran'ruk Fragments (BFD Twilight mobs) + 1 Large Soran'ruk Fragment (SFK Shadowfang Darksouls); take the Orb if you use a one-hander
    *|cRXP_WARN_Needs a group for part of it.|r
    *Forever: changed in Forever: staff now rare with +14 Sta and +34 Fire/Shadow (Classic: uncommon, +9)
step
    .goto 1413,49.31,57.21
    >>Talk to |cRXP_FRIENDLY_Doan Karhan|r
    .accept 1740 >>Accept The Orb of Soran'ruk
    .target Doan Karhan
step
    .goto 1440,14.5,14.2
    *|cRXP_WARN_Inside Blackfathom Deeps: bring a group.|r
    >>Collect |cRXP_LOOT_[Soran'ruk Fragment]|r from |cRXP_ENEMY_Twilight Acolyte|r
    *Find 3 Soran'ruk Fragments and 1 Large Soran'ruk Fragment and return them to Doan Karhan in the Barrens.
    .complete 1740,1 --The Orb of Soran'ruk
    .mob Twilight Acolyte
step
    .goto 1421,44.8,67.8
    *|cRXP_WARN_Inside Shadowfang Keep: bring a group.|r
    >>Collect |cRXP_LOOT_[Large Soran'ruk Fragment]|r from |cRXP_ENEMY_Shadowfang Darksoul|r
    *Find 3 Soran'ruk Fragments and 1 Large Soran'ruk Fragment and return them to Doan Karhan in the Barrens.
    .complete 1740,2 --The Orb of Soran'ruk
    .mob Shadowfang Darksoul
step
    .goto 1413,49.31,57.21
    >>Talk to |cRXP_FRIENDLY_Doan Karhan|r
    .turnin 1740 >>Turn in The Orb of Soran'ruk
    .target Doan Karhan
step
    +|cRXP_WARN_Done:|r Orb of Soran'ruk / Staff of Soran'ruk. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Warlock
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 30-39
#name 30 Felhunter
#displayname 30 Felhunter
step
    +|cRXP_WARN_ITEM: Felhunter|r. Click to start.
    *Reward: Box of Souls (16 slots) plus Felhunter
    *Why: Bigger shard bag and the Felhunter
    *Forever: classic unchanged
step
    .goto 1454,48.25,45.28
    >>Talk to |cRXP_FRIENDLY_Gan'rul Bloodeye|r
    .accept 2996 >>Accept Seeking Strahad
    .target Gan'rul Bloodeye
step
    .goto 1413,62.63,35.5
    >>Talk to |cRXP_FRIENDLY_Strahad Farsan|r
    .turnin 2996 >>Turn in Seeking Strahad
    .accept 1801 >>Accept Tome of the Cabal
    .target Strahad Farsan
step
    .goto 1458,75.92,37.89
    >>Talk to |cRXP_FRIENDLY_Jorah Annison|r
    .turnin 1801 >>Turn in Tome of the Cabal
    .accept 1803 >>Accept Tome of the Cabal
    .target Jorah Annison
step
    .goto 1458,85.06,25.99
    >>Talk to |cRXP_FRIENDLY_Carendin Halgar|r
    .accept 3001 >>Accept Seeking Strahad
    .target Carendin Halgar
step
    .goto 1413,62.63,35.5
    >>Talk to |cRXP_FRIENDLY_Strahad Farsan|r
    .turnin 3001 >>Turn in Seeking Strahad
    .target Strahad Farsan
step
    .goto 1424,27.78,72.79
    >>Collect |cRXP_LOOT_[Moldy Tome]|r from |cRXP_PICK_Tome of the Cabal|r
    *Retrieve the Moldy Tome and Tattered Manuscript for Jorah Annison in the Undercity.
    .complete 1803,1 --Tome of the Cabal
step
    .goto 1441,43.44,32.69
    >>Collect |cRXP_LOOT_[Tattered Manuscript]|r from |cRXP_PICK_Damaged Chest|r
    *Retrieve the Moldy Tome and Tattered Manuscript for Jorah Annison in the Undercity.
    .complete 1803,2 --Tome of the Cabal
step
    .goto 1458,75.92,37.89
    >>Talk to |cRXP_FRIENDLY_Jorah Annison|r
    .turnin 1803 >>Turn in Tome of the Cabal
    .accept 1805 >>Accept Tome of the Cabal
    .target Jorah Annison
step
    .goto 1437,48.1,56.5
    *|cRXP_WARN_Inside Excavation Site: Wetlands: bring a group.|r
    >>Collect |cRXP_LOOT_[Rod of Channeling]|r from |cRXP_ENEMY_Dragonmaw Thaumaturgist|r, |cRXP_ENEMY_Dragonmaw Bonewarder|r
    *Bring the Reconstructed Tome and 3 Rods of Channeling to Strahad Farsan in Ratchet.
    .complete 1805,1 --Tome of the Cabal
    .mob Dragonmaw Thaumaturgist
    .mob Dragonmaw Bonewarder
step
    .goto 1413,62.63,35.5
    >>Talk to |cRXP_FRIENDLY_Strahad Farsan|r
    .turnin 1805 >>Turn in Tome of the Cabal
    .accept 1795 >>Accept The Binding
    .target Strahad Farsan
step
    >>Kill |cRXP_ENEMY_Summoned Felhunter|r
    *Using the Tome of the Cabal, summon and subdue a felhunter, then return the Tome of the Cabal to Strahad Farsan in Ratchet.
    .complete 1795,1 --The Binding
    .mob Summoned Felhunter
step
    .goto 1413,62.63,35.5
    >>Talk to |cRXP_FRIENDLY_Strahad Farsan|r
    .turnin 1795 >>Turn in The Binding
    .target Strahad Farsan
step
    +|cRXP_WARN_Done:|r Felhunter. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Warlock
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 30-39
#name 35-40 Staff of Dar'Orahil / Orb of Dar'Orahil
#displayname 35-40 Staff of Dar'Orahil / Orb of Dar'Orahil
step
    +|cRXP_WARN_ITEM: Staff of Dar'Orahil / Orb of Dar'Orahil|r. Click to start.
    *Reward: Dar'Orahil version: choose Staff of Dar'Orahil (ilvl 40, +13 Int, +9 Sta, Classic stats) or Orb of Dar'Orahil (off-hand); Horde gets the Noh'Orahil equivalent (Horde item names unverified)
    *Why: Free caster staff/off-hand at 40; Cleansing step is marked as a group quest
    *|cRXP_WARN_Needs a group for part of it.|r
    *Forever: classic unchanged (removed from retail in 4.0.3a, still in Classic and Forever; final quest exists on Wowhead Forever)
step
    .goto 1413,62.51,35.45
    >>Talk to |cRXP_FRIENDLY_Menara Voidrender|r
    .accept 1799 >>Accept Fragments of the Orb of Orahil
    .target Menara Voidrender
step
    .goto 1458,86.21,15.93
    >>Talk to |cRXP_FRIENDLY_Kaal Soulreaper|r
    .accept 4969 >>Accept Knowledge of the Orb of Orahil
    .target Kaal Soulreaper
step
    .goto 1413,62.51,35.45
    >>Talk to |cRXP_FRIENDLY_Menara Voidrender|r
    .turnin 4969 >>Turn in Knowledge of the Orb of Orahil
    .target Menara Voidrender
step
    .goto 1443,80.3,76.98
    >>Collect |cRXP_LOOT_[Infernal Orb]|r from |cRXP_ENEMY_Burning Blade Summoner|r
    *Speak to Menara's acolytes inside the tower above Ratchet and choose one of their paths to follow.
    .complete 1799,1 --Fragments of the Orb of Orahil
    .mob Burning Blade Summoner
step
    .goto 1445,46.06,57.09
    >>Talk to |cRXP_FRIENDLY_Tabetha|r
    .turnin 1799 >>Turn in Fragments of the Orb of Orahil
    .accept 4961 >>Accept Cleansing of the Orb of Orahil
    .target Tabetha
step
    >>Kill |cRXP_ENEMY_Demon of the Orb|r
    *Kill the Demon of the Orb, then speak with Tabetha.
    *|cRXP_WARN_Elite targets here. Group up or skip.|r
    .complete 4961,1 --Cleansing of the Orb of Orahil
    .mob Demon of the Orb
step
    .goto 1445,46.06,57.09
    >>Talk to |cRXP_FRIENDLY_Tabetha|r
    .turnin 4961 >>Turn in Cleansing of the Orb of Orahil
    .accept 4976 >>Accept Returning the Cleansed Orb
    .target Tabetha
step
    .goto 1413,62.51,35.45
    >>Talk to |cRXP_FRIENDLY_Menara Voidrender|r
    .turnin 4976 >>Turn in Returning the Cleansed Orb
    .accept 4964 >>Accept The Completed Orb of Dar'Orahil
    .target Menara Voidrender
step
    .goto 1413,62.51,35.45
    >>Talk to |cRXP_FRIENDLY_Menara Voidrender|r
    .turnin 4964 >>Turn in The Completed Orb of Dar'Orahil
    .target Menara Voidrender
step
    +|cRXP_WARN_Done:|r Staff of Dar'Orahil / Orb of Dar'Orahil. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Warlock
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 50-60
#name 50-55 Shard of the Green Flame
#displayname 50-55 Shard of the Green Flame
step
    +|cRXP_WARN_ITEM: Shard of the Green Flame|r. Click to start.
    *Reward: Shard of the Green Flame (trinket) plus Inferno
    *|cff40ff40GOOD|r [Shard of the Green Flame]: Held In Off-hand, +12 Stamina - strong off-hand for a fire mage or fire warlock at 50
    *Why: Trinket and a core spell; Kroshius is a level 55 elite
    *|cRXP_WARN_Needs a group for part of it.|r
    *Forever: classic unchanged
step
    .goto 1448,41.38,44.85
    >>Talk to |cRXP_FRIENDLY_Niby the Almighty|r
    .accept 7601 >>Accept What Niby Commands
    .target Niby the Almighty
step
    .goto 1448,41.36,45.02
    >>Talk to |cRXP_FRIENDLY_Impsy|r
    .turnin 7601 >>Turn in What Niby Commands
    .accept 7602 >>Accept Flawless Fel Essence
    .target Impsy
step
    .goto 1447,65.72,18.82
    >>Collect |cRXP_LOOT_[Flawless Fel Essence (Azshara)]|r from |cRXP_ENEMY_Legashi Soulstealer|r, |cRXP_ENEMY_Legashi Hellraiser|r, |cRXP_ENEMY_Legashi Blackguard|r
    *Impsy in Felwood has asked that you bring him three Flawless Fel Essences originating from three distinct locations.
    .complete 7602,1 --Flawless Fel Essence
    .mob Legashi Soulstealer
    .mob Legashi Hellraiser
step
    >>Collect |cRXP_LOOT_[Flawless Fel Essence (Jaedenar)]|r from |cRXP_ENEMY_Servant of Caius|r
    *Impsy in Felwood has asked that you bring him three Flawless Fel Essences originating from three distinct locations.
    .complete 7602,2 --Flawless Fel Essence
    .mob Servant of Caius
step
    .goto 1419,57.73,50.62
    >>Collect |cRXP_LOOT_[Flawless Fel Essence (Dark Portal)]|r from |cRXP_ENEMY_Felguard Sentry|r
    *Impsy in Felwood has asked that you bring him three Flawless Fel Essences originating from three distinct locations.
    .complete 7602,3 --Flawless Fel Essence
    .mob Felguard Sentry
step
    .goto 1448,41.36,45.02
    >>Talk to |cRXP_FRIENDLY_Impsy|r
    .turnin 7602 >>Turn in Flawless Fel Essence
    .accept 7603 >>Accept Kroshius' Infernal Core
    .target Impsy
step
    .goto 1448,45.7,34.76
    >>Kill |cRXP_ENEMY_Kroshius|r. Collect |cRXP_LOOT_[Kroshius' Infernal Core]|r from |cRXP_ENEMY_Kroshius|r
    *Search Shatter Scar Vale in Felwood for the remains of Kroshius. When you locate the remains, use the Fel Fire near them and await Kroshius' return. When the infernal has awoken, slay him and take from his corpse Kroshius' Infernal Core.
    *|cRXP_WARN_Elite targets here. Group up or skip.|r
    .complete 7603,1 --Kroshius' Infernal Core
    .complete 7603,2 --Kroshius' Infernal Core
    .mob Kroshius
step
    .goto 1448,41.38,44.85
    >>Talk to |cRXP_FRIENDLY_Niby the Almighty|r
    .turnin 7603 >>Turn in Kroshius' Infernal Core
    .target Niby the Almighty
step
    +|cRXP_WARN_Done:|r Shard of the Green Flame. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Warlock
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 50-60
#name 50-52 Robes of Servitude / Abyss Shard +
#displayname 50-52 Robes of Servitude / Abyss Shard +
step
    +|cRXP_WARN_ITEM: Robes of Servitude / Abyss Shard +|r. Click to start.
    *Reward: Soul Harvester (staff, +73 Shadow), Abyss Shard (warlock trinket), Robes of Servitude (cloth chest)
    *|cff40ff40GOOD|r [Robes of Servitude]: Chest Cloth, 75 armor, +15 Stamina, +10 Intellect - +23 fire/shadow chest; great for a warlock at 50
    *|cff40ff40GOOD|r [Abyss Shard]: Trinket, +10 Shadow Resistance - +12 spell power plus a free Voidwalker; good leveling trinket
    *|cff40ff40GOOD|r [Soul Harvester]: Two-Hand Staff, 33.48 DPS, +19 Stamina, +16 Intellect - +73 shadow damage at 50 is far above normal; best pick for a shadow warlock
    *Why: Soul Harvester is a strong shadow staff at 52; needs two of each Voodoo Feather
    *|cRXP_WARN_Needs a group for part of it.|r
    *Forever: changed in Forever: 12,400 XP; Icy Veins says all three items are granted, Conquest Capped says pick one (unverified)
step
    .goto 1435,48.65,55.64
    >>Talk to |cRXP_FRIENDLY_Kartosh|r
    .accept 8419 >>Accept An Imp's Request
    .target Kartosh
step
    .goto 1448,37.37,66.1
    >>Collect |cRXP_LOOT_[Felcloth]|r from |cRXP_ENEMY_Felhunter|r, |cRXP_ENEMY_Felguard Sentry|r, |cRXP_ENEMY_Legashi Satyr|r
    *Bring a piece of felcloth to Impsy in Felwood.
    .complete 8419,1 --An Imp's Request
    .mob Felhunter
    .mob Felguard Sentry
step
    .goto 1448,41.36,45.02
    >>Talk to |cRXP_FRIENDLY_Impsy|r
    .turnin 8419 >>Turn in An Imp's Request
    .accept 8421 >>Accept The Wrong Stuff
    .target Impsy
step
    .goto 1448,51,24.93
    >>Collect |cRXP_LOOT_[Rotting Wood]|r from |cRXP_ENEMY_Irontree Wanderer|r, |cRXP_ENEMY_Irontree Stomper|r, |cRXP_ENEMY_Withered Protector|r
    *Bring 10 Rotting Wood and 4 Bloodvenom Essence to Impsy in Felwood.
    .complete 8421,1 --The Wrong Stuff
    .mob Irontree Wanderer
    .mob Irontree Stomper
step
    >>Collect |cRXP_LOOT_[Bloodvenom Essence]|r from |cRXP_ENEMY_Vile Moonwell Ooze|r
    *Bring 10 Rotting Wood and 4 Bloodvenom Essence to Impsy in Felwood.
    .complete 8421,2 --The Wrong Stuff
    .mob Vile Moonwell Ooze
step
    .goto 1448,41.36,45.02
    >>Talk to |cRXP_FRIENDLY_Impsy|r
    .turnin 8421 >>Turn in The Wrong Stuff
    .accept 8422 >>Accept Trolls of a Feather
    .target Impsy
step
    >>Collect |cRXP_LOOT_[Amber Voodoo Feather]|r from |cRXP_ENEMY_Gasher|r, |cRXP_ENEMY_Zul'Lor|r, |cRXP_ENEMY_Gasher|r. Collect |cRXP_LOOT_[Blue Voodoo Feather]|r from |cRXP_ENEMY_Hukku|r, |cRXP_ENEMY_Mijan|r, |cRXP_ENEMY_Hukku|r. Collect |cRXP_LOOT_[Green Voodoo Feather]|r from |cRXP_ENEMY_Loro|r, |cRXP_ENEMY_Zolo|r
    *Bring a total of 6 Voodoo Feathers from the trolls in sunken temple.
    .complete 8422,1 --Trolls of a Feather
    .complete 8422,2 --Trolls of a Feather
    .complete 8422,3 --Trolls of a Feather
    .mob Gasher
    .mob Zul'Lor
    .mob Hukku
    .mob Mijan
    .mob Loro
    .mob Zolo
step
    .goto 1448,41.36,45.02
    >>Talk to |cRXP_FRIENDLY_Impsy|r
    .turnin 8422 >>Turn in Trolls of a Feather
    .target Impsy
step
    +|cRXP_WARN_Done:|r Robes of Servitude / Abyss Shard +. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Warlock Orc/Horde Warlock Tauren/Horde Warlock Troll/Horde Warlock Skyborne
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 1-2 Imp (Orc/Tauren/Troll/Skyborne)
#displayname 1-2 Imp (Orc/Tauren/Troll/Skyborne)
step
    +|cRXP_WARN_MUST DO: Imp|r. Click to start.
    *Reward: Summon Imp (now a level 1-4 quest, not known at level 1)
step
    .goto 1411,42.06,68.33
    >>Talk to |cRXP_FRIENDLY_Gornek|r
    .accept 788 >>Accept Cutting Teeth
    .target Gornek
step
    .goto 1411,43.96,65.96
    >>Kill |cRXP_ENEMY_Mottled Boar|r
    *Kill 10 Mottled Boars then return to Gornek at the Den.
    .complete 788,1 --Cutting Teeth
    .mob Mottled Boar
step
    .goto 1411,42.06,68.33
    >>Talk to |cRXP_FRIENDLY_Gornek|r
    .turnin 788 >>Turn in Cutting Teeth
    .accept 3090 >>Accept Tainted Parchment
    .target Gornek
step
    .goto 1411,40.65,68.52
    >>Talk to |cRXP_FRIENDLY_Nartok|r
    .turnin 3090 >>Turn in Tainted Parchment
    .target Nartok
step
    +|cRXP_WARN_Done:|r Imp. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Warlock Undead
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 1-2 Imp (Undead)
#displayname 1-2 Imp (Undead)
step
    +|cRXP_WARN_MUST DO: Imp|r. Click to start.
    *Reward: Summon Imp (now a level 1-4 quest, not known at level 1)
step
    .goto 1411,42.06,68.33
    >>Talk to |cRXP_FRIENDLY_Gornek|r
    .accept 788 >>Accept Cutting Teeth
    .target Gornek
step
    .goto 1411,43.96,65.96
    >>Kill |cRXP_ENEMY_Mottled Boar|r
    *Kill 10 Mottled Boars then return to Gornek at the Den.
    .complete 788,1 --Cutting Teeth
    .mob Mottled Boar
step
    .goto 1411,42.06,68.33
    >>Talk to |cRXP_FRIENDLY_Gornek|r
    .turnin 788 >>Turn in Cutting Teeth
    .accept 3090 >>Accept Tainted Parchment
    .target Gornek
step
    .goto 1411,40.65,68.52
    >>Talk to |cRXP_FRIENDLY_Nartok|r
    .turnin 3090 >>Turn in Tainted Parchment
    .target Nartok
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
    .accept 3099 >>Accept Tainted Scroll << Undead
    .target Shadow Priest Sarvis
step
    .goto 1420,30.91,66.34
    >>Talk to |cRXP_FRIENDLY_Maximillion|r
    .turnin 3099 >>Turn in Tainted Scroll << Undead
    .target Maximillion
step
    +|cRXP_WARN_Done:|r Imp. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Warlock Orc/Horde Warlock Tauren/Horde Warlock Troll/Horde Warlock Skyborne
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 10-11 Voidwalker (Orc/Tauren/Troll/Skyborne)
#displayname 10-11 Voidwalker (Orc/Tauren/Troll/Skyborne)
step
    +|cRXP_WARN_MUST DO: Voidwalker|r. Click to start.
    *Reward: Summon Voidwalker (Orgrimmar Skull Rock version easier with a friend)
step
    .goto 1411,54.37,41.29
    >>Talk to |cRXP_FRIENDLY_Ophek|r
    .accept 1506 >>Accept Gan'rul's Summons
    .target Ophek
step
    .goto 1454,48.25,45.28
    >>Talk to |cRXP_FRIENDLY_Gan'rul Bloodeye|r
    .turnin 1506 >>Turn in Gan'rul's Summons
    .accept 1501 >>Accept Creature of the Void
    .target Gan'rul Bloodeye
step
    .goto 1420,61.62,52.68
    >>Talk to |cRXP_FRIENDLY_Ageron Kargal|r
    .accept 1478 >>Accept Halgar's Summons
    .target Ageron Kargal
step
    .goto 1458,85.06,25.99
    >>Talk to |cRXP_FRIENDLY_Carendin Halgar|r
    .turnin 1478 >>Turn in Halgar's Summons
    .target Carendin Halgar
step
    .goto 1411,51.62,9.76
    >>Collect |cRXP_LOOT_[Tablet of Verga]|r from |cRXP_PICK_Burning Blade Stash|r
    *Retrieve the Tablet of Verga for Gan'rul Bloodeye in Orgrimmar.
    .complete 1501,1 --Creature of the Void
step
    .goto 1454,48.25,45.28
    >>Talk to |cRXP_FRIENDLY_Gan'rul Bloodeye|r
    .turnin 1501 >>Turn in Creature of the Void
    .accept 1504 >>Accept The Binding
    .target Gan'rul Bloodeye
step
    >>Kill |cRXP_ENEMY_Summoned Voidwalker|r
    *Using the Glyphs of Summoning, summon and subdue a voidwalker, then return the Glyphs of Summoning to Gan'rul Bloodeye in Orgrimmar.
    .complete 1504,1 --The Binding
    .mob Summoned Voidwalker
step
    .goto 1454,48.25,45.28
    >>Talk to |cRXP_FRIENDLY_Gan'rul Bloodeye|r
    .turnin 1504 >>Turn in The Binding
    .target Gan'rul Bloodeye
step
    +|cRXP_WARN_Done:|r Voidwalker. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Warlock Undead
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 10-11 Voidwalker (Undead)
#displayname 10-11 Voidwalker (Undead)
step
    +|cRXP_WARN_MUST DO: Voidwalker|r. Click to start.
    *Reward: Summon Voidwalker (Orgrimmar Skull Rock version easier with a friend)
step
    .goto 1411,54.37,41.29
    >>Talk to |cRXP_FRIENDLY_Ophek|r
    .accept 1506 >>Accept Gan'rul's Summons
    .target Ophek
step
    .goto 1454,48.25,45.28
    >>Talk to |cRXP_FRIENDLY_Gan'rul Bloodeye|r
    .turnin 1506 >>Turn in Gan'rul's Summons
    .accept 1501 >>Accept Creature of the Void
    .target Gan'rul Bloodeye
step
    .goto 1420,61.62,52.68
    >>Talk to |cRXP_FRIENDLY_Ageron Kargal|r
    .accept 1478 >>Accept Halgar's Summons
    .target Ageron Kargal
step
    .goto 1458,85.06,25.99
    >>Talk to |cRXP_FRIENDLY_Carendin Halgar|r
    .turnin 1478 >>Turn in Halgar's Summons
    .accept 1473 >>Accept Creature of the Void << Undead
    .target Carendin Halgar
step
    .goto 1411,51.62,9.76
    >>Collect |cRXP_LOOT_[Tablet of Verga]|r from |cRXP_PICK_Burning Blade Stash|r
    *Retrieve the Tablet of Verga for Gan'rul Bloodeye in Orgrimmar.
    .complete 1501,1 --Creature of the Void
step
    .goto 1454,48.25,45.28
    >>Talk to |cRXP_FRIENDLY_Gan'rul Bloodeye|r
    .turnin 1501 >>Turn in Creature of the Void
    .accept 1504 >>Accept The Binding
    .target Gan'rul Bloodeye
step
    >>Kill |cRXP_ENEMY_Summoned Voidwalker|r
    *Using the Glyphs of Summoning, summon and subdue a voidwalker, then return the Glyphs of Summoning to Gan'rul Bloodeye in Orgrimmar.
    .complete 1504,1 --The Binding
    .mob Summoned Voidwalker
step
    .goto 1454,48.25,45.28
    >>Talk to |cRXP_FRIENDLY_Gan'rul Bloodeye|r
    .turnin 1504 >>Turn in The Binding
    .target Gan'rul Bloodeye
step
    .goto 1420,51.06,67.57
    >>Collect |cRXP_LOOT_[Egalin's Grimoire]|r from |cRXP_PICK_Perrine's Chest|r
    *Recover Egalin's Grimoire and bring it to Carendin Halgar in the Temple of the Damned.
    .complete 1473,1 << Undead --Creature of the Void
step
    .goto 1458,85.06,25.99
    >>Talk to |cRXP_FRIENDLY_Carendin Halgar|r
    .turnin 1473 >>Turn in Creature of the Void << Undead
    .accept 1471 >>Accept The Binding << Undead
    .target Carendin Halgar
step
    >>Kill |cRXP_ENEMY_Summoned Voidwalker|r
    *Using the Runes of Summoning, summon and subdue a voidwalker, then return the Runes of Summoning to Carendin Halgar in the Magic Quarter of the Undercity.
    .complete 1471,1 << Undead --The Binding
    .mob Summoned Voidwalker
step
    .goto 1458,85.06,25.99
    >>Talk to |cRXP_FRIENDLY_Carendin Halgar|r
    .turnin 1471 >>Turn in The Binding << Undead
    .target Carendin Halgar
step
    +|cRXP_WARN_Done:|r Voidwalker. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Warlock
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 40-49
#name 40 Felsteed
#displayname 40 Felsteed
step
    +|cRXP_WARN_MUST DO: Felsteed|r. Click to start.
    *Reward: Summon Felsteed, free; warlocks skip the 100 gold riding cost (Icy Veins news)
step
    .goto 1458,86.21,15.93
    >>Talk to |cRXP_FRIENDLY_Kaal Soulreaper|r
    .accept 4489 >>Accept Summon Felsteed
    .target Kaal Soulreaper
step
    .goto 1413,62.63,35.5
    >>Talk to |cRXP_FRIENDLY_Strahad Farsan|r
    .turnin 4489 >>Turn in Summon Felsteed
    .accept 4490 >>Accept Summon Felsteed
    .target Strahad Farsan
step
    .goto 1413,62.63,35.5
    >>Talk to |cRXP_FRIENDLY_Strahad Farsan|r
    .turnin 4490 >>Turn in Summon Felsteed
    .target Strahad Farsan
step
    .goto 1454,48.47,45.43
    >>Talk to |cRXP_FRIENDLY_Zevrost|r
    .accept 3631 >>Accept Summon Felsteed
    .target Zevrost
step
    .goto 1413,62.63,35.5
    >>Talk to |cRXP_FRIENDLY_Strahad Farsan|r
    .turnin 3631 >>Turn in Summon Felsteed
    .target Strahad Farsan
step
    +|cRXP_WARN_Done:|r Felsteed. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Warlock
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 50-60
#name 60 Ritual of Doom
#displayname 60 Ritual of Doom
step
    +|cRXP_WARN_LEVEL 60: Ritual of Doom|r. Click to start.
    *Reward: Ritual of Doom + Tome of Sacrifice
    *|cRXP_WARN_Needs a group for part of it.|r
step
    .goto 1419,34.13,50.14
    >>Talk to |cRXP_FRIENDLY_Daio the Decrepit|r
    .accept 7581 >>Accept The Prison's Bindings
    .target Daio the Decrepit
step
    .goto 1444,59.2,45.1
    *|cRXP_WARN_Inside Dire Maul: bring a group.|r
    >>Collect |cRXP_LOOT_[Satyr Blood]|r from |cRXP_ENEMY_Wildspawn Satyr|r, |cRXP_ENEMY_Wildspawn Rogue|r, |cRXP_ENEMY_Wildspawn Trickster|r
    *Travel to Dire Maul in Feralas and recover 15 Satyr Blood from the Wildspawn Satyr that inhabit the Warpwood Quarter. Return to Daio in the Tainted Scar when this is done.
    .complete 7581,1 --The Prison's Bindings
    .mob Wildspawn Satyr
    .mob Wildspawn Rogue
step
    .goto 1419,34.13,50.14
    >>Talk to |cRXP_FRIENDLY_Daio the Decrepit|r
    .turnin 7581 >>Turn in The Prison's Bindings
    .target Daio the Decrepit
step
    +|cRXP_WARN_Done:|r Ritual of Doom. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Warlock
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 50-60
#name 55-60 Epic mount: Summon Dreadsteed
#displayname 55-60 Epic mount: Summon Dreadsteed
step
    +|cRXP_WARN_LEVEL 60: Epic mount: Summon Dreadsteed|r. Click to start.
    *Reward: Summon Dreadsteed
    *|cRXP_WARN_Needs a group for part of it.|r
step
    .goto 1454,37.56,75.36
    >>Talk to |cRXP_FRIENDLY_Warcaller Gorlach|r
    .accept 5093 >>Accept A Call to Arms: The Plaguelands!
    .target Warcaller Gorlach
step
    .goto 1420,83.13,68.94
    >>Talk to |cRXP_FRIENDLY_High Executor Derrington|r
    .turnin 5093 >>Turn in A Call to Arms: The Plaguelands!
    .accept 5096 >>Accept Scarlet Diversions
    .target High Executor Derrington
step
    .goto 1420,83.13,68.94
    >>Talk to |cRXP_FRIENDLY_High Executor Derrington|r
    .turnin 5096 >>Turn in Scarlet Diversions
    .accept 5098 >>Accept All Along the Watchtowers
    .target High Executor Derrington
step
    .goto 1422,40.05,71.6
    >>Kill |cRXP_ENEMY_Andorhal Tower One|r. Kill |cRXP_ENEMY_Andorhal Tower Two|r. Kill |cRXP_ENEMY_Andorhal Tower Four|r
    *Using the Beacon Torch, mark each tower in Andorhal; you will need to stand in the doorway of the tower to successfully mark it.
    .complete 5098,1 --All Along the Watchtowers
    .complete 5098,2 --All Along the Watchtowers
    .complete 5098,4 --All Along the Watchtowers
    .mob Andorhal Tower One
    .mob Andorhal Tower Two
    .mob Andorhal Tower Four
step
    .goto 1422,44.3,63.25
    >>Kill |cRXP_ENEMY_Andorhal Tower Three|r
    *Using the Beacon Torch, mark each tower in Andorhal; you will need to stand in the doorway of the tower to successfully mark it.
    .complete 5098,3 --All Along the Watchtowers
    .mob Andorhal Tower Three
step
    .goto 1420,83.13,68.94
    >>Talk to |cRXP_FRIENDLY_High Executor Derrington|r
    .turnin 5098 >>Turn in All Along the Watchtowers
    .accept 838 >>Accept Scholomance
    .target High Executor Derrington
step
    .goto 1420,83.28,69.23
    >>Talk to |cRXP_FRIENDLY_Apothecary Dithers|r
    .turnin 838 >>Turn in Scholomance
    .accept 964 >>Accept Skeletal Fragments
    .target Apothecary Dithers
step
    .goto 1422,44.48,68.65
    >>Collect |cRXP_LOOT_[Skeletal Fragments]|r from |cRXP_ENEMY_Skeletal Magelord|r, |cRXP_ENEMY_Skeletal Sorcerer|r, |cRXP_ENEMY_Skeletal Terror|r
    *Bring 15 Skeletal Fragments to Apothecary Dithers at the Bulwark, Western Plaguelands.
    .complete 964,1 --Skeletal Fragments
    .mob Skeletal Magelord
    .mob Skeletal Sorcerer
step
    .goto 1420,83.28,69.23
    >>Talk to |cRXP_FRIENDLY_Apothecary Dithers|r
    .turnin 964 >>Turn in Skeletal Fragments
    .accept 5514 >>Accept Mold Rhymes With...
    .target Apothecary Dithers
step
    .goto 1446,51.46,28.81
    >>Talk to |cRXP_FRIENDLY_Krinkle Goodsteel|r
    .turnin 5514 >>Turn in Mold Rhymes With...
    .accept 5802 >>Accept Fire Plume Forged
    .target Krinkle Goodsteel
step
    >>Collect |cRXP_LOOT_[Unfinished Skeleton Key]|r
    *Take the Skeleton Key Mold and 2 Thorium Bars to the top of Fire Plume Ridge in Un'Goro Crater. Use the Skeleton Key Mold by the lava lake to forge the Unfinished Skeleton Key.
    .complete 5802,1 --Fire Plume Forged
step
    .goto 1420,83.28,69.23
    >>Talk to |cRXP_FRIENDLY_Apothecary Dithers|r
    .turnin 5802 >>Turn in Fire Plume Forged
    .accept 5804 >>Accept Araj's Scarab
    .target Apothecary Dithers
step
    >>Collect |cRXP_LOOT_[Araj's Scarab]|r from |cRXP_PICK_Araj's Phylactery|r
    *Destroy Araj the Summoner and bring Araj's Scarab to Apothecary Dithers at the Bulwark, Western Plaguelands.
    .complete 5804,1 --Araj's Scarab
step
    .goto 1420,83.28,69.23
    >>Talk to |cRXP_FRIENDLY_Apothecary Dithers|r
    .turnin 5804 >>Turn in Araj's Scarab
    .target Apothecary Dithers
step
    +|cRXP_WARN_Done:|r Epic mount: Summon Dreadsteed. Enjoy the loot. Click to finish.
]])
