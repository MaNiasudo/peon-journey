RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Priest Human
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 5 Friar's Robes of the Light (Human)
#displayname 5 Friar's Robes of the Light (Human)
step
    +|cRXP_WARN_ITEM: Friar's Robes of the Light|r. Click to start.
    *Reward: Friar's Robes of the Light (Human/Dwarf/Gnome), Acolyte's Sacrificial Robes (Undead), Moon Robes of Elune (Night Elf), Juju Hex Robes (Troll)
    *|cffffd200OK|r [Friar's Robes of the Light]: Chest Cloth, 10 armor, +1 Spirit - tiny but free chest upgrade at 5
    *Why: Free chest piece in the first minutes of play
    *Forever: classic unchanged (level 4 in Forever per Icy Veins; no reward change reported)
step
    .goto 1429,49.81,39.49
    >>Talk to |cRXP_FRIENDLY_Priestess Anetta|r
    .accept 5623 >>Accept In Favor of the Light << Human
    .target Priestess Anetta
step
    .goto 1429,43.28,65.72
    >>Talk to |cRXP_FRIENDLY_Priestess Josetta|r
    .turnin 5623 >>Turn in In Favor of the Light << Human
    .accept 5624 >>Accept Garments of the Light << Human
    .target Priestess Josetta
step
    .goto 1429,48.15,68.05
    >>Kill |cRXP_ENEMY_Guard Roberts|r
    *Find Guard Roberts and heal his wounds using Lesser Heal (Rank 2). Afterwards, grant him Power Word: Fortitude and then return to Priestess Josetta in Goldshire.
    .complete 5624,1 << Human --Garments of the Light
    .mob Guard Roberts
step
    .goto 1429,43.28,65.72
    >>Talk to |cRXP_FRIENDLY_Priestess Josetta|r
    .turnin 5624 >>Turn in Garments of the Light << Human
    .target Priestess Josetta
step
    +|cRXP_WARN_Done:|r Friar's Robes of the Light. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Priest Dwarf/Alliance Priest Gnome
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 5 Friar's Robes of the Light (Dwarf/Gnome)
#displayname 5 Friar's Robes of the Light (Dwarf/Gnome)
step
    +|cRXP_WARN_ITEM: Friar's Robes of the Light|r. Click to start.
    *Reward: Friar's Robes of the Light (Human/Dwarf/Gnome), Acolyte's Sacrificial Robes (Undead), Moon Robes of Elune (Night Elf), Juju Hex Robes (Troll)
    *|cffffd200OK|r [Friar's Robes of the Light]: Chest Cloth, 10 armor, +1 Spirit - tiny but free chest upgrade at 5
    *Why: Free chest piece in the first minutes of play
    *Forever: classic unchanged (level 4 in Forever per Icy Veins; no reward change reported)
step
    .goto 1426,28.6,66.39
    >>Talk to |cRXP_FRIENDLY_Branstock Khalder|r
    .accept 5626 >>Accept In Favor of the Light << Dwarf/Gnome
    .target Branstock Khalder
step
    .goto 1426,47.34,52.19
    >>Talk to |cRXP_FRIENDLY_Maxan Anvol|r
    .turnin 5626 >>Turn in In Favor of the Light << Dwarf/Gnome
    .accept 5625 >>Accept Garments of the Light << Dwarf/Gnome
    .target Maxan Anvol
step
    .goto 1426,45.81,54.57
    >>Kill |cRXP_ENEMY_Mountaineer Dolf|r
    *Find Mountaineer Dolf and heal his wounds using Lesser Heal (Rank 2). Afterwards, grant him Power Word: Fortitude and then return to Maxan Anvol in Kharanos.
    .complete 5625,1 << Dwarf/Gnome --Garments of the Light
    .mob Mountaineer Dolf
step
    .goto 1426,47.34,52.19
    >>Talk to |cRXP_FRIENDLY_Maxan Anvol|r
    .turnin 5625 >>Turn in Garments of the Light << Dwarf/Gnome
    .target Maxan Anvol
step
    +|cRXP_WARN_Done:|r Friar's Robes of the Light. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Priest
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 50-60
#name 50-52 Blessed Prayer Beads / Circle of Hope +
#displayname 50-52 Blessed Prayer Beads / Circle of Hope +
step
    +|cRXP_WARN_ITEM: Blessed Prayer Beads / Circle of Hope +|r. Click to start.
    *Reward: Blessed Prayer Beads (priest trinket, big heal usable while silenced), Woestave (wand), Circle of Hope (ring)
    *|cffffd200OK|r [Blessed Prayer Beads]: Trinket, +7 Shadow Resistance - small passive bonus plus an emergency heal; weaker than the Classic +190 healing on-use
    *|cffffd200OK|r [Circle of Hope]: Finger, +6 Shadow Resistance - only helps Holy damage (Smite/Holy Fire); no healing
    *|cff40ff40GOOD|r [Woestave]: Ranged Wand, 51.32 DPS, +3 Stamina - 51 DPS wand plus shadow damage; great for a priest at 50
    *Why: The only priest weapon/trinket quest before 60; needs Blood of Morphaz, turn in to Greta Mosshoof in Felwood
    *|cRXP_WARN_Needs a group for part of it.|r
    *Forever: changed in Forever: 12,400 XP; all-three-items vs pick-one is unverified
step
    .goto 1453,49.53,44.6
    >>Talk to |cRXP_FRIENDLY_High Priestess Laurena|r
    .accept 8254 >>Accept Cenarion Aid
    .target High Priestess Laurena
step
    .goto 1447,42.4,42.62
    >>Talk to |cRXP_FRIENDLY_Ogtinc|r
    .turnin 8254 >>Turn in Cenarion Aid
    .accept 8255 >>Accept Of Coursers We Know
    .target Ogtinc
step
    .goto 1447,48.12,80.69
    >>Collect |cRXP_LOOT_[Healthy Courser Gland]|r from |cRXP_ENEMY_Mosshoof Courser|r
    *Acquire 4 Healthy Courser Glands and bring them to Ogtinc in Azshara. Ogtinc resides atop the cliffs northeast the Ruins of Eldarath.
    .complete 8255,1 --Of Coursers We Know
    .mob Mosshoof Courser
step
    .goto 1447,42.4,42.62
    >>Talk to |cRXP_FRIENDLY_Ogtinc|r
    .turnin 8255 >>Turn in Of Coursers We Know
    .accept 8256 >>Accept The Ichor of Undeath
    .target Ogtinc
step
    .goto 1434,40.83,59.12
    >>Collect |cRXP_LOOT_[Ichor of Undeath]|r from |cRXP_ENEMY_Zanzil Zombie|r, |cRXP_ENEMY_Zanzil Hunter|r, |cRXP_ENEMY_Skeletal Flayer|r
    *Acquire an Ichor of Undeath for Ogtinc in Azshara. Ogtinc resides atop the cliffs northeast the Ruins of Eldarath.
    .complete 8256,1 --The Ichor of Undeath
    .mob Zanzil Zombie
    .mob Zanzil Hunter
step
    .goto 1447,42.4,42.62
    >>Talk to |cRXP_FRIENDLY_Ogtinc|r
    .turnin 8256 >>Turn in The Ichor of Undeath
    .accept 8257 >>Accept Blood of Morphaz
    .target Ogtinc
step
    .goto 1435,69.9,53.5
    *|cRXP_WARN_Inside The Temple of Atal'Hakkar: bring a group.|r
    >>Collect |cRXP_LOOT_[Blood of Morphaz]|r from |cRXP_ENEMY_Morphaz|r
    *Kill Morphaz in the sunken temple of Atal'Hakkar, and return his blood to Greta Mosshoof in Felwood. The entrance to the sunken temple can be found in the Swamp of Sorrows.
    .complete 8257,1 --Blood of Morphaz
    .mob Morphaz
step
    .goto 1448,51.21,82.11
    >>Talk to |cRXP_FRIENDLY_Greta Mosshoof|r
    .turnin 8257 >>Turn in Blood of Morphaz
    .target Greta Mosshoof
step
    +|cRXP_WARN_Done:|r Blessed Prayer Beads / Circle of Hope +. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Priest Dwarf
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 10 Level 10 racial spell quest (Dwarf)
#displayname 10 Level 10 racial spell quest (Dwarf)
step
    +|cRXP_WARN_MUST DO: Level 10 racial spell quest|r. Click to start.
    *Reward: Divine Grace / Desperate Prayer / Confounding Flash / Starshards / Hex of Weakness / Touch of Weakness
step
    .goto 1457,40.35,88.68
    >>Talk to |cRXP_FRIENDLY_Lariia|r
    .accept 5634 >>Accept Desperate Prayer << Dwarf
    .target Lariia
step
    .goto 1453,49.53,44.6
    >>Talk to |cRXP_FRIENDLY_High Priestess Laurena|r
    .turnin 5634 >>Turn in Desperate Prayer << Dwarf
    .target High Priestess Laurena
step
    .goto 1453,35.68,63.18
    >>Talk to |cRXP_FRIENDLY_Nara Meideros|r
    .accept 5638 >>Accept Desperate Prayer << Dwarf
    .target Nara Meideros
step
    .goto 1453,49.53,44.6
    >>Talk to |cRXP_FRIENDLY_High Priestess Laurena|r
    .turnin 5638 >>Turn in Desperate Prayer << Dwarf
    .target High Priestess Laurena
step
    .goto 1426,47.34,52.19
    >>Talk to |cRXP_FRIENDLY_Maxan Anvol|r
    .accept 5635 >>Accept Desperate Prayer << Dwarf
    .target Maxan Anvol
step
    .goto 1453,49.53,44.6
    >>Talk to |cRXP_FRIENDLY_High Priestess Laurena|r
    .turnin 5635 >>Turn in Desperate Prayer << Dwarf
    .target High Priestess Laurena
step
    .goto 1438,55.56,56.75
    >>Talk to |cRXP_FRIENDLY_Laurna Morninglight|r
    .accept 5636 >>Accept Desperate Prayer << Dwarf
    .target Laurna Morninglight
step
    .goto 1453,49.53,44.6
    >>Talk to |cRXP_FRIENDLY_High Priestess Laurena|r
    .turnin 5636 >>Turn in Desperate Prayer << Dwarf
    .target High Priestess Laurena
step
    .goto 1429,43.28,65.72
    >>Talk to |cRXP_FRIENDLY_Priestess Josetta|r
    .accept 5637 >>Accept Desperate Prayer << Dwarf
    .target Priestess Josetta
step
    .goto 1453,49.53,44.6
    >>Talk to |cRXP_FRIENDLY_High Priestess Laurena|r
    .turnin 5637 >>Turn in Desperate Prayer << Dwarf
    .target High Priestess Laurena
step
    .goto 1455,24.73,8.16
    >>Talk to |cRXP_FRIENDLY_High Priest Rohan|r
    .accept 5639 >>Accept Desperate Prayer << Dwarf
    .target High Priest Rohan
step
    .goto 1453,49.53,44.6
    >>Talk to |cRXP_FRIENDLY_High Priestess Laurena|r
    .turnin 5639 >>Turn in Desperate Prayer << Dwarf
    .target High Priestess Laurena
step
    +|cRXP_WARN_Done:|r Level 10 racial spell quest. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Priest NightElf
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 10 Level 10 racial spell quest (Night Elf)
#displayname 10 Level 10 racial spell quest (Night Elf)
step
    +|cRXP_WARN_MUST DO: Level 10 racial spell quest|r. Click to start.
    *Reward: Divine Grace / Desperate Prayer / Confounding Flash / Starshards / Hex of Weakness / Touch of Weakness
step
    .goto 1429,43.28,65.72
    >>Talk to |cRXP_FRIENDLY_Priestess Josetta|r
    .accept 5628 >>Accept Returning Home << NightElf
    .target Priestess Josetta
step
    .goto 1457,39.52,81.2
    >>Talk to |cRXP_FRIENDLY_Priestess Alathea|r
    .turnin 5628 >>Turn in Returning Home << NightElf
    .accept 5627 >>Accept Stars of Elune << NightElf
    .target Priestess Alathea
step
    .goto 1457,39.52,81.2
    >>Talk to |cRXP_FRIENDLY_Priestess Alathea|r
    .turnin 5627 >>Turn in Stars of Elune << NightElf
    .target Priestess Alathea
step
    +|cRXP_WARN_Done:|r Level 10 racial spell quest. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Priest Human
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 20-29
#name 20 Level 20 racial spell quest (Human)
#displayname 20 Level 20 racial spell quest (Human)
step
    +|cRXP_WARN_MUST DO: Level 20 racial spell quest|r. Click to start.
    *Reward: Feedback / Chastise / Contingency Plan / Elune's Grace / Shadowguard / Dark Sacrifice
step
    .goto 1453,49.5,45.21
    >>Talk to |cRXP_FRIENDLY_Brother Joshua|r
    .accept 5676 >>Accept Arcane Feedback << Human
    .target Brother Joshua
step
    .goto 1453,49.53,44.6
    >>Talk to |cRXP_FRIENDLY_High Priestess Laurena|r
    .turnin 5676 >>Turn in Arcane Feedback << Human
    .target High Priestess Laurena
step
    .goto 1455,24.73,8.16
    >>Talk to |cRXP_FRIENDLY_High Priest Rohan|r
    .accept 5677 >>Accept Arcane Feedback << Human
    .target High Priest Rohan
step
    .goto 1453,49.53,44.6
    >>Talk to |cRXP_FRIENDLY_High Priestess Laurena|r
    .turnin 5677 >>Turn in Arcane Feedback << Human
    .target High Priestess Laurena
step
    +|cRXP_WARN_Done:|r Level 20 racial spell quest. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Priest NightElf
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 20-29
#name 20 Level 20 racial spell quest (Night Elf)
#displayname 20 Level 20 racial spell quest (Night Elf)
step
    +|cRXP_WARN_MUST DO: Level 20 racial spell quest|r. Click to start.
    *Reward: Feedback / Chastise / Contingency Plan / Elune's Grace / Shadowguard / Dark Sacrifice
step
    .goto 1438,55.56,56.75
    >>Talk to |cRXP_FRIENDLY_Laurna Morninglight|r
    .accept 5672 >>Accept Elune's Grace << NightElf
    .target Laurna Morninglight
step
    .goto 1457,39.52,81.2
    >>Talk to |cRXP_FRIENDLY_Priestess Alathea|r
    .turnin 5672 >>Turn in Elune's Grace << NightElf
    .target Priestess Alathea
step
    .goto 1457,38.33,80.95
    >>Talk to |cRXP_FRIENDLY_Astarii Starseeker|r
    .accept 5674 >>Accept Elune's Grace << NightElf
    .target Astarii Starseeker
step
    .goto 1457,39.52,81.2
    >>Talk to |cRXP_FRIENDLY_Priestess Alathea|r
    .turnin 5674 >>Turn in Elune's Grace << NightElf
    .target Priestess Alathea
step
    .goto 1453,49.53,44.6
    >>Talk to |cRXP_FRIENDLY_High Priestess Laurena|r
    .accept 5673 >>Accept Elune's Grace << NightElf
    .target High Priestess Laurena
step
    .goto 1457,39.52,81.2
    >>Talk to |cRXP_FRIENDLY_Priestess Alathea|r
    .turnin 5673 >>Turn in Elune's Grace << NightElf
    .target Priestess Alathea
step
    .goto 1455,24.73,8.16
    >>Talk to |cRXP_FRIENDLY_High Priest Rohan|r
    .accept 5675 >>Accept Elune's Grace << NightElf
    .target High Priest Rohan
step
    .goto 1457,39.52,81.2
    >>Talk to |cRXP_FRIENDLY_Priestess Alathea|r
    .turnin 5675 >>Turn in Elune's Grace << NightElf
    .target Priestess Alathea
step
    +|cRXP_WARN_Done:|r Level 20 racial spell quest. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Priest
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 50-60
#name 60 Raid class chains (info)
#displayname 60 Raid class chains (info)
step
    +|cRXP_WARN_Raid or not-yet-open class chains.|r Listed for planning, not guided. Click to close.
    *Benediction / Anathema: Benediction / Anathema staff (raid)
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Priest Undead
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 5 Acolyte's Sacrificial Robes (Undead)
#displayname 5 Acolyte's Sacrificial Robes (Undead)
step
    +|cRXP_WARN_ITEM: Acolyte's Sacrificial Robes|r. Click to start.
    *Reward: Friar's Robes of the Light (Human/Dwarf/Gnome), Acolyte's Sacrificial Robes (Undead), Moon Robes of Elune (Night Elf), Juju Hex Robes (Troll)
    *|cffffd200OK|r [Acolyte's Sacrificial Robes]: Chest Cloth, 10 armor, +1 Spirit - tiny but free chest upgrade at 5
    *Why: Free chest piece in the first minutes of play
    *Forever: classic unchanged (level 4 in Forever per Icy Veins; no reward change reported)
step
    .goto 1420,31.11,66.03
    >>Talk to |cRXP_FRIENDLY_Dark Cleric Duesten|r
    .accept 5651 >>Accept In Favor of Darkness << Undead
    .target Dark Cleric Duesten
step
    .goto 1420,61.57,52.19
    >>Talk to |cRXP_FRIENDLY_Dark Cleric Beryl|r
    .turnin 5651 >>Turn in In Favor of Darkness << Undead
    .accept 5650 >>Accept Garments of Darkness << Undead
    .target Dark Cleric Beryl
step
    .goto 1420,59.18,46.5
    >>Kill |cRXP_ENEMY_Deathguard Kel|r
    *Find Deathguard Kel and heal his wounds using Lesser Heal (Rank 2). Afterwards, grant him Power Word: Fortitude and then return to Dark Cleric Beryl in Brill.
    .complete 5650,1 << Undead --Garments of Darkness
    .mob Deathguard Kel
step
    .goto 1420,61.57,52.19
    >>Talk to |cRXP_FRIENDLY_Dark Cleric Beryl|r
    .turnin 5650 >>Turn in Garments of Darkness << Undead
    .target Dark Cleric Beryl
step
    +|cRXP_WARN_Done:|r Acolyte's Sacrificial Robes. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Priest Troll
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 5 Juju Hex Robes (Troll)
#displayname 5 Juju Hex Robes (Troll)
step
    +|cRXP_WARN_ITEM: Juju Hex Robes|r. Click to start.
    *Reward: Friar's Robes of the Light (Human/Dwarf/Gnome), Acolyte's Sacrificial Robes (Undead), Moon Robes of Elune (Night Elf), Juju Hex Robes (Troll)
    *|cffffd200OK|r [Juju Hex Robes]: Chest Cloth, 10 armor, +1 Spirit - tiny but free chest upgrade at 5
    *Why: Free chest piece in the first minutes of play
    *Forever: classic unchanged (level 4 in Forever per Icy Veins; no reward change reported)
step
    .goto 1411,42.36,68.81
    >>Talk to |cRXP_FRIENDLY_Ken'jai|r
    .accept 5649 >>Accept In Favor of Spirituality << Troll
    .target Ken'jai
step
    .goto 1411,54.26,42.93
    >>Talk to |cRXP_FRIENDLY_Tai'jin|r
    .turnin 5649 >>Turn in In Favor of Spirituality << Troll
    .accept 5648 >>Accept Garments of Spirituality << Troll
    .target Tai'jin
step
    .goto 1411,53.1,46.46
    >>Kill |cRXP_ENEMY_Grunt Kor'ja|r
    *Find Grunt Kor'ja and heal her wounds using Lesser Heal (Rank 2). Afterwards, grant her Power Word: Fortitude and then return to Tai'jin at Razor Hill.
    .complete 5648,1 << Troll --Garments of Spirituality
    .mob Grunt Kor'ja
step
    .goto 1411,54.26,42.93
    >>Talk to |cRXP_FRIENDLY_Tai'jin|r
    .turnin 5648 >>Turn in Garments of Spirituality << Troll
    .target Tai'jin
step
    +|cRXP_WARN_Done:|r Juju Hex Robes. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Priest
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 50-60
#name 50-52 Blessed Prayer Beads / Circle of Hope +
#displayname 50-52 Blessed Prayer Beads / Circle of Hope +
step
    +|cRXP_WARN_ITEM: Blessed Prayer Beads / Circle of Hope +|r. Click to start.
    *Reward: Blessed Prayer Beads (priest trinket, big heal usable while silenced), Woestave (wand), Circle of Hope (ring)
    *|cffffd200OK|r [Blessed Prayer Beads]: Trinket, +7 Shadow Resistance - small passive bonus plus an emergency heal; weaker than the Classic +190 healing on-use
    *|cffffd200OK|r [Circle of Hope]: Finger, +6 Shadow Resistance - only helps Holy damage (Smite/Holy Fire); no healing
    *|cff40ff40GOOD|r [Woestave]: Ranged Wand, 51.32 DPS, +3 Stamina - 51 DPS wand plus shadow damage; great for a priest at 50
    *Why: The only priest weapon/trinket quest before 60; needs Blood of Morphaz, turn in to Greta Mosshoof in Felwood
    *|cRXP_WARN_Needs a group for part of it.|r
    *Forever: changed in Forever: 12,400 XP; all-three-items vs pick-one is unverified
step
    .goto 1456,24.56,22.57
    >>Talk to |cRXP_FRIENDLY_Malakai Cross|r
    .accept 8254 >>Accept Cenarion Aid
    .target Malakai Cross
step
    .goto 1447,42.4,42.62
    >>Talk to |cRXP_FRIENDLY_Ogtinc|r
    .turnin 8254 >>Turn in Cenarion Aid
    .accept 8255 >>Accept Of Coursers We Know
    .target Ogtinc
step
    .goto 1447,48.12,80.69
    >>Collect |cRXP_LOOT_[Healthy Courser Gland]|r from |cRXP_ENEMY_Mosshoof Courser|r
    *Acquire 4 Healthy Courser Glands and bring them to Ogtinc in Azshara. Ogtinc resides atop the cliffs northeast the Ruins of Eldarath.
    .complete 8255,1 --Of Coursers We Know
    .mob Mosshoof Courser
step
    .goto 1447,42.4,42.62
    >>Talk to |cRXP_FRIENDLY_Ogtinc|r
    .turnin 8255 >>Turn in Of Coursers We Know
    .accept 8256 >>Accept The Ichor of Undeath
    .target Ogtinc
step
    .goto 1434,40.83,59.12
    >>Collect |cRXP_LOOT_[Ichor of Undeath]|r from |cRXP_ENEMY_Zanzil Zombie|r, |cRXP_ENEMY_Zanzil Hunter|r, |cRXP_ENEMY_Skeletal Flayer|r
    *Acquire an Ichor of Undeath for Ogtinc in Azshara. Ogtinc resides atop the cliffs northeast the Ruins of Eldarath.
    .complete 8256,1 --The Ichor of Undeath
    .mob Zanzil Zombie
    .mob Zanzil Hunter
step
    .goto 1447,42.4,42.62
    >>Talk to |cRXP_FRIENDLY_Ogtinc|r
    .turnin 8256 >>Turn in The Ichor of Undeath
    .accept 8257 >>Accept Blood of Morphaz
    .target Ogtinc
step
    .goto 1435,69.9,53.5
    *|cRXP_WARN_Inside The Temple of Atal'Hakkar: bring a group.|r
    >>Collect |cRXP_LOOT_[Blood of Morphaz]|r from |cRXP_ENEMY_Morphaz|r
    *Kill Morphaz in the sunken temple of Atal'Hakkar, and return his blood to Greta Mosshoof in Felwood. The entrance to the sunken temple can be found in the Swamp of Sorrows.
    .complete 8257,1 --Blood of Morphaz
    .mob Morphaz
step
    .goto 1448,51.21,82.11
    >>Talk to |cRXP_FRIENDLY_Greta Mosshoof|r
    .turnin 8257 >>Turn in Blood of Morphaz
    .target Greta Mosshoof
step
    +|cRXP_WARN_Done:|r Blessed Prayer Beads / Circle of Hope +. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Priest Undead
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 10 Level 10 racial spell quest (Undead)
#displayname 10 Level 10 racial spell quest (Undead)
step
    +|cRXP_WARN_MUST DO: Level 10 racial spell quest|r. Click to start.
    *Reward: Divine Grace / Desperate Prayer / Confounding Flash / Starshards / Hex of Weakness / Touch of Weakness
step
    .goto 1458,49.14,14.61
    >>Talk to |cRXP_FRIENDLY_Father Lankester|r
    .accept 5658 >>Accept Touch of Weakness << Undead
    .target Father Lankester
step
    .goto 1458,49.26,17.12
    >>Talk to |cRXP_FRIENDLY_Aelthalyste|r
    .turnin 5658 >>Turn in Touch of Weakness << Undead
    .target Aelthalyste
step
    .goto 1411,54.26,42.93
    >>Talk to |cRXP_FRIENDLY_Tai'jin|r
    .accept 5660 >>Accept Touch of Weakness << Undead
    .target Tai'jin
step
    .goto 1458,49.26,17.12
    >>Talk to |cRXP_FRIENDLY_Aelthalyste|r
    .turnin 5660 >>Turn in Touch of Weakness << Undead
    .target Aelthalyste
step
    .goto 1456,25.32,15.27
    >>Talk to |cRXP_FRIENDLY_Miles Welsh|r
    .accept 5661 >>Accept Touch of Weakness << Undead
    .target Miles Welsh
step
    .goto 1458,49.26,17.12
    >>Talk to |cRXP_FRIENDLY_Aelthalyste|r
    .turnin 5661 >>Turn in Touch of Weakness << Undead
    .target Aelthalyste
step
    .goto 1454,35.59,87.82
    >>Talk to |cRXP_FRIENDLY_Ur'kyo|r
    .accept 5662 >>Accept Touch of Weakness << Undead
    .target Ur'kyo
step
    .goto 1458,49.26,17.12
    >>Talk to |cRXP_FRIENDLY_Aelthalyste|r
    .turnin 5662 >>Turn in Touch of Weakness << Undead
    .target Aelthalyste
step
    .goto 1420,61.57,52.19
    >>Talk to |cRXP_FRIENDLY_Dark Cleric Beryl|r
    .accept 5663 >>Accept Touch of Weakness << Undead
    .target Dark Cleric Beryl
step
    .goto 1458,49.26,17.12
    >>Talk to |cRXP_FRIENDLY_Aelthalyste|r
    .turnin 5663 >>Turn in Touch of Weakness << Undead
    .target Aelthalyste
step
    +|cRXP_WARN_Done:|r Level 10 racial spell quest. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Priest Troll
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 10 Level 10 racial spell quest (Troll)
#displayname 10 Level 10 racial spell quest (Troll)
step
    +|cRXP_WARN_MUST DO: Level 10 racial spell quest|r. Click to start.
    *Reward: Divine Grace / Desperate Prayer / Confounding Flash / Starshards / Hex of Weakness / Touch of Weakness
step
    .goto 1454,35.59,87.82
    >>Talk to |cRXP_FRIENDLY_Ur'kyo|r
    .accept 5652 >>Accept Hex of Weakness << Troll
    .target Ur'kyo
step
    .goto 1454,35.59,87.82
    >>Talk to |cRXP_FRIENDLY_Ur'kyo|r
    .turnin 5652 >>Turn in Hex of Weakness << Troll
    .target Ur'kyo
step
    .goto 1412,46.2,62.27
    >>Talk to |cRXP_FRIENDLY_Var'jun|r
    .accept 5654 >>Accept Hex of Weakness << Troll
    .target Var'jun
step
    .goto 1454,35.59,87.82
    >>Talk to |cRXP_FRIENDLY_Ur'kyo|r
    .turnin 5654 >>Turn in Hex of Weakness << Troll
    .target Ur'kyo
step
    .goto 1411,54.26,42.93
    >>Talk to |cRXP_FRIENDLY_Tai'jin|r
    .accept 5655 >>Accept Hex of Weakness << Troll
    .target Tai'jin
step
    .goto 1411,42.36,68.81
    >>Talk to |cRXP_FRIENDLY_Ken'jai|r
    .accept 5657 >>Accept Hex of Weakness << Troll
    .target Ken'jai
step
    .goto 1454,35.59,87.82
    >>Talk to |cRXP_FRIENDLY_Ur'kyo|r
    .turnin 5655 >>Turn in Hex of Weakness << Troll
    .turnin 5657 >>Turn in Hex of Weakness << Troll
    .target Ur'kyo
step
    .goto 1458,49.14,14.61
    >>Talk to |cRXP_FRIENDLY_Father Lankester|r
    .accept 5656 >>Accept Hex of Weakness << Troll
    .target Father Lankester
step
    .goto 1454,35.59,87.82
    >>Talk to |cRXP_FRIENDLY_Ur'kyo|r
    .turnin 5656 >>Turn in Hex of Weakness << Troll
    .target Ur'kyo
step
    +|cRXP_WARN_Done:|r Level 10 racial spell quest. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Priest Undead
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 20-29
#name 20 Level 20 racial spell quest (Undead)
#displayname 20 Level 20 racial spell quest (Undead)
step
    +|cRXP_WARN_MUST DO: Level 20 racial spell quest|r. Click to start.
    *Reward: Feedback / Chastise / Contingency Plan / Elune's Grace / Shadowguard / Dark Sacrifice
step
    .goto 1454,35.72,86.9
    >>Talk to |cRXP_FRIENDLY_Zayus|r
    .accept 5644 >>Accept Dark Sacrifice << Undead
    .target Zayus
step
    .goto 1458,49.26,17.12
    >>Talk to |cRXP_FRIENDLY_Aelthalyste|r
    .turnin 5644 >>Turn in Dark Sacrifice << Undead
    .target Aelthalyste
step
    .goto 1458,49.14,14.61
    >>Talk to |cRXP_FRIENDLY_Father Lankester|r
    .accept 5679 >>Accept Dark Sacrifice << Undead
    .target Father Lankester
step
    .goto 1458,49.26,17.12
    >>Talk to |cRXP_FRIENDLY_Aelthalyste|r
    .turnin 5679 >>Turn in Dark Sacrifice << Undead
    .target Aelthalyste
step
    .goto 1456,25.64,20.7
    >>Talk to |cRXP_FRIENDLY_Father Cobb|r
    .accept 5646 >>Accept Dark Sacrifice << Undead
    .target Father Cobb
step
    .goto 1458,49.26,17.12
    >>Talk to |cRXP_FRIENDLY_Aelthalyste|r
    .turnin 5646 >>Turn in Dark Sacrifice << Undead
    .target Aelthalyste
step
    +|cRXP_WARN_Done:|r Level 20 racial spell quest. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Priest Troll
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 20-29
#name 20 Level 20 racial spell quest (Troll)
#displayname 20 Level 20 racial spell quest (Troll)
step
    +|cRXP_WARN_MUST DO: Level 20 racial spell quest|r. Click to start.
    *Reward: Feedback / Chastise / Contingency Plan / Elune's Grace / Shadowguard / Dark Sacrifice
step
    .goto 1454,35.72,86.9
    >>Talk to |cRXP_FRIENDLY_Zayus|r
    .accept 5680 >>Accept Shadowguard << Troll
    .target Zayus
step
    .goto 1454,35.59,87.82
    >>Talk to |cRXP_FRIENDLY_Ur'kyo|r
    .turnin 5680 >>Turn in Shadowguard << Troll
    .target Ur'kyo
step
    .goto 1456,25.32,15.27
    >>Talk to |cRXP_FRIENDLY_Miles Welsh|r
    .accept 5642 >>Accept Shadowguard << Troll
    .target Miles Welsh
step
    .goto 1454,35.59,87.82
    >>Talk to |cRXP_FRIENDLY_Ur'kyo|r
    .turnin 5642 >>Turn in Shadowguard << Troll
    .target Ur'kyo
step
    .goto 1458,49.14,14.61
    >>Talk to |cRXP_FRIENDLY_Father Lankester|r
    .accept 5643 >>Accept Shadowguard << Troll
    .target Father Lankester
step
    .goto 1454,35.59,87.82
    >>Talk to |cRXP_FRIENDLY_Ur'kyo|r
    .turnin 5643 >>Turn in Shadowguard << Troll
    .target Ur'kyo
step
    +|cRXP_WARN_Done:|r Level 20 racial spell quest. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Priest
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 50-60
#name 60 Raid class chains (info)
#displayname 60 Raid class chains (info)
step
    +|cRXP_WARN_Raid or not-yet-open class chains.|r Listed for planning, not guided. Click to close.
    *Benediction / Anathema: Benediction / Anathema staff (raid)
]])
