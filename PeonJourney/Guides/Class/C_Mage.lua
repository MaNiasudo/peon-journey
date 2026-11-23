RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Mage Human/Alliance Mage Gnome
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 10 Ley Orb / Ley Staff (Human/Gnome)
#displayname 10 Ley Orb / Ley Staff (Human/Gnome)
step
    +|cRXP_WARN_ITEM: Ley Orb / Ley Staff|r. Click to start.
    *Reward: Choose Ley Orb (off-hand, use: restore mana) or Ley Staff
    *|cffffd200OK|r [Ley Orb]: Held In Off-hand, +1 Spirit - free mana potion every 30 min; only if you use a 1H
    *|cffffd200OK|r [Ley Staff]: Two-Hand Staff, 5.34 DPS, +1 Intellect, +1 Spirit - small stats but a real upgrade over a starter staff
    *Why: Free off-hand or staff at 10
    *Forever: classic unchanged (Mirror Lake is a Classic quest kept in Forever)
step
    .goto 1429,43.25,66.19
    >>Talk to |cRXP_FRIENDLY_Zaldimar Wefhellt|r
    .accept 1860 >>Accept Speak with Jennea << Human/Gnome
    .target Zaldimar Wefhellt
step
    .goto 1453,49.56,85.8
    >>Talk to |cRXP_FRIENDLY_Jennea Cannon|r
    .turnin 1860 >>Turn in Speak with Jennea << Human/Gnome
    .accept 1861 >>Accept Mirror Lake << Human/Gnome/Skyborne
    .target Jennea Cannon
step
    >>Collect |cRXP_LOOT_[Mirror Lake Water Sample]|r
    *Bring a Mirror Lake sample to Jennea Cannon in Stormwind.
    .complete 1861,1 << Human/Gnome/Skyborne --Mirror Lake
step
    .goto 1453,49.56,85.8
    >>Talk to |cRXP_FRIENDLY_Jennea Cannon|r
    .turnin 1861 >>Turn in Mirror Lake << Human/Gnome/Skyborne
    .target Jennea Cannon
step
    +|cRXP_WARN_Done:|r Ley Orb / Ley Staff. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Mage Skyborne
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 10 Ley Orb / Ley Staff (Skyborne)
#displayname 10 Ley Orb / Ley Staff (Skyborne)
step
    +|cRXP_WARN_ITEM: Ley Orb / Ley Staff|r. Click to start.
    *Reward: Choose Ley Orb (off-hand, use: restore mana) or Ley Staff
    *|cffffd200OK|r [Ley Orb]: Held In Off-hand, +1 Spirit - free mana potion every 30 min; only if you use a 1H
    *|cffffd200OK|r [Ley Staff]: Two-Hand Staff, 5.34 DPS, +1 Intellect, +1 Spirit - small stats but a real upgrade over a starter staff
    *Why: Free off-hand or staff at 10
    *Forever: classic unchanged (Mirror Lake is a Classic quest kept in Forever)
step
    .goto 1453,49.56,85.8
    >>Talk to |cRXP_FRIENDLY_Jennea Cannon|r
    .accept 1861 >>Accept Mirror Lake << Human/Gnome/Skyborne
    .target Jennea Cannon
step
    >>Collect |cRXP_LOOT_[Mirror Lake Water Sample]|r
    *Bring a Mirror Lake sample to Jennea Cannon in Stormwind.
    .complete 1861,1 << Human/Gnome/Skyborne --Mirror Lake
step
    .goto 1453,49.56,85.8
    >>Talk to |cRXP_FRIENDLY_Jennea Cannon|r
    .turnin 1861 >>Turn in Mirror Lake << Human/Gnome/Skyborne
    .target Jennea Cannon
step
    +|cRXP_WARN_Done:|r Ley Orb / Ley Staff. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Mage
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 10 Windbough Wand
#displayname 10 Windbough Wand
step
    +|cRXP_WARN_ITEM: Windbough Wand|r. Click to start.
    *Reward: Windbough Wand and Elixir of Minor Spirit
    *|cffffd200OK|r [Windbough Wand]: Ranged Wand, 7.19 DPS, +1 Intellect - useful first wand at 10; crafted Lesser Magic Wand hits harder
    *Why: Free wand for Skyborne mages instead of Ley Orb/Ley Staff
    *Forever: new in Forever (from Icy Veins search excerpt only; page not directly readable, so unverified)
step
    .goto 2521,65.91,80.57
    >>Talk to |cRXP_FRIENDLY_Anathamaas Aetherwind|r
    .accept 93791 >>Accept Speak with Belann
    .target Anathamaas Aetherwind
step
    .goto 2521,62.89,77.44
    >>Talk to |cRXP_FRIENDLY_Belann Windwood|r
    .turnin 93791 >>Turn in Speak with Belann
    .accept 93797 >>Accept Boughs in the Wind
    .target Belann Windwood
step
    .goto 2521,48.57,67.62
    >>Collect |cRXP_LOOT_[Wind-Infused Bough]|r from |cRXP_PICK_Wind-Infused Bough|r
    *Bring a Wind-Infused Bough to Belann Windwood in Valanaar.
    .complete 93797,1 --Boughs in the Wind
step
    .goto 2521,62.89,77.44
    >>Talk to |cRXP_FRIENDLY_Belann Windwood|r
    .turnin 93797 >>Turn in Boughs in the Wind
    .target Belann Windwood
step
    +|cRXP_WARN_Done:|r Windbough Wand. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Mage Human/Alliance Mage Gnome
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 15-16 Manaweave Robe (Human/Gnome)
#displayname 15-16 Manaweave Robe (Human/Gnome)
step
    +|cRXP_WARN_ITEM: Manaweave Robe|r. Click to start.
    *Reward: Manaweave Robe (Alliance) or Lesser Spellfire Robes (Horde)
    *|cffffd200OK|r [Manaweave Robe]: Chest Cloth, 34 armor, +6 Intellect - standard green chest for 15
    *Why: Free chest upgrade at 15
    *Forever: classic unchanged (no change reported)
step
    .goto 1455,27.16,8.57
    >>Talk to |cRXP_FRIENDLY_Dink|r
    .accept 1919 >>Accept Report to Jennea << Human/Gnome
    .target Dink
step
    .goto 1453,49.56,85.8
    >>Talk to |cRXP_FRIENDLY_Jennea Cannon|r
    .turnin 1919 >>Turn in Report to Jennea << Human/Gnome
    .accept 1920 >>Accept Investigate the Blue Recluse << Human/Gnome/Skyborne
    .target Jennea Cannon
step
    .goto 1453,49.56,85.8
    >>Collect |cRXP_LOOT_[Filled Containment Coffer]|r from |cRXP_PICK_Filled Containment Coffer|r. Collect |cRXP_LOOT_[Chest of Containment Coffers]|r from |cRXP_PICK_Chest of Containment Coffers|r
    *Obtain a Cantation of Manifestation and a Chest of Containment coffers from behind Jennea Cannon. Bring 3 Filled Containment Coffers to Jennea at the Wizard's Sanctum.
    .complete 1920,1 << Human/Gnome/Skyborne --Investigate the Blue Recluse
    .complete 1920,2 << Human/Gnome/Skyborne --Investigate the Blue Recluse
step
    .goto 1458,85.7,10.11
    >>Collect |cRXP_LOOT_[Cantation of Manifestation]|r from |cRXP_PICK_Cantation of Manifestation|r
    *Obtain a Cantation of Manifestation and a Chest of Containment coffers from behind Jennea Cannon. Bring 3 Filled Containment Coffers to Jennea at the Wizard's Sanctum.
    .complete 1920,3 << Human/Gnome/Skyborne --Investigate the Blue Recluse
step
    .goto 1453,49.56,85.8
    >>Talk to |cRXP_FRIENDLY_Jennea Cannon|r
    .turnin 1920 >>Turn in Investigate the Blue Recluse << Human/Gnome/Skyborne
    .accept 1921 >>Accept Gathering Materials << Human/Gnome/Skyborne
    .target Jennea Cannon
step
    .goto 1429,60.71,52.8
    >>Collect |cRXP_LOOT_[Linen Cloth]|r from |cRXP_ENEMY_Flesh Eater|r, |cRXP_ENEMY_Kobold Miner|r, |cRXP_ENEMY_Mine Spider|r
    *Bring 10 Linen Cloth and the 6 Charged Rift Gems to Wynne Larson in Stormwind.
    .complete 1921,1 << Human/Gnome/Skyborne --Gathering Materials
    .mob Flesh Eater
    .mob Kobold Miner
step
    .goto 1432,35.26,21.97
    >>Collect |cRXP_LOOT_[Charged Rift Gem]|r from |cRXP_PICK_Miners' League Crates|r
    *Bring 10 Linen Cloth and the 6 Charged Rift Gems to Wynne Larson in Stormwind.
    .complete 1921,2 << Human/Gnome/Skyborne --Gathering Materials
step
    .goto 1453,51.84,83.51
    >>Talk to |cRXP_FRIENDLY_Wynne Larson|r
    .turnin 1921 >>Turn in Gathering Materials << Human/Gnome/Skyborne
    .accept 1941 >>Accept Manaweave Robe << Human/Gnome
    .target Wynne Larson
step
    .goto 1453,51.84,83.51
    >>Talk to |cRXP_FRIENDLY_Wynne Larson|r
    .turnin 1941 >>Turn in Manaweave Robe << Human/Gnome
    .target Wynne Larson
step
    +|cRXP_WARN_Done:|r Manaweave Robe. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Mage Human/Alliance Mage Gnome
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 20-29
#name 26-28 Astral Knot Robe / Astral Knot Blouse (Human/Gnome)
#displayname 26-28 Astral Knot Robe / Astral Knot Blouse (Human/Gnome)
step
    +|cRXP_WARN_ITEM: Astral Knot Robe / Astral Knot Blouse|r. Click to start.
    *Reward: Astral Knot Robe or Astral Knot Blouse (Alliance); Nether-lace Robe or Nether-lace Tunic (Horde)
    *|cffffd200OK|r [Astral Knot Robe]: Chest Cloth, 44 armor, +6 Stamina, +6 Intellect, +6 Spirit - solid green chest for 26
    *|cffffd200OK|r [Astral Knot Blouse]: Chest Cloth, 44 armor, +6 Stamina, +9 Intellect - solid green chest for 26 (same stats as Nether-lace Tunic)
    *Why: Chest upgrade at 26; Tower of Ilgalar is dangerous at level
    *Forever: classic unchanged (no change reported)
step
    .goto 1453,49.56,85.8
    >>Talk to |cRXP_FRIENDLY_Jennea Cannon|r
    .accept 1939 >>Accept High Sorcerer Andromath << Human/Gnome
    .target Jennea Cannon
step
    .goto 1453,48.71,87.62
    >>Talk to |cRXP_FRIENDLY_High Sorcerer Andromath|r
    .turnin 1939 >>Turn in High Sorcerer Andromath << Human/Gnome
    .accept 1938 >>Accept Ur's Treatise on Shadow Magic << Human/Gnome/Skyborne
    .target High Sorcerer Andromath
step
    .goto 1433,73.77,47.61
    >>Collect |cRXP_LOOT_[Ur's Treatise on Shadow Magic]|r from |cRXP_PICK_Ur's Treatise on Shadow Magic|r
    *Bring Ur's Treatise on Shadow Magic to High Sorcerer Andromath in Stormwind.
    .complete 1938,1 << Human/Gnome/Skyborne --Ur's Treatise on Shadow Magic
step
    .goto 1453,48.71,87.62
    >>Talk to |cRXP_FRIENDLY_High Sorcerer Andromath|r
    .turnin 1938 >>Turn in Ur's Treatise on Shadow Magic << Human/Gnome/Skyborne
    .accept 1940 >>Accept Pristine Spider Silk << Human/Gnome/Skyborne
    .target High Sorcerer Andromath
step
    .goto 1431,31.32,49.46
    >>Collect |cRXP_LOOT_[Pristine Spider Silk]|r from |cRXP_ENEMY_Black Widow Hatchling|r, |cRXP_ENEMY_Carrion Recluse|r
    *Bring 8 Pristine Spider Silk to Wynne Larson in Stormwind.
    .complete 1940,1 << Human/Gnome/Skyborne --Pristine Spider Silk
    .mob Black Widow Hatchling
    .mob Carrion Recluse
step
    .goto 1453,51.84,83.51
    >>Talk to |cRXP_FRIENDLY_Wynne Larson|r
    .turnin 1940 >>Turn in Pristine Spider Silk << Human/Gnome/Skyborne
    .accept 1942 >>Accept Astral Knot Garment << Human/Gnome
    .target Wynne Larson
step
    .goto 1453,51.84,83.51
    >>Talk to |cRXP_FRIENDLY_Wynne Larson|r
    .turnin 1942 >>Turn in Astral Knot Garment << Human/Gnome
    .target Wynne Larson
step
    +|cRXP_WARN_Done:|r Astral Knot Robe / Astral Knot Blouse. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Mage
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 30-39
#name 35-40 Ragefire Wand / Icefury Wand +
#displayname 35-40 Ragefire Wand / Icefury Wand +
step
    +|cRXP_WARN_ITEM: Ragefire Wand / Icefury Wand +|r. Click to start.
    *Reward: Choose Icefury Wand, Ragefire Wand or Nether Force Wand (ilvl 40, +3 Int, +9 school damage, about 37 DPS)
    *Why: Wand that lasts into the 40s; Tabetha in Dustwallow Marsh, Scarlet Monastery Library step, Magus Tirth (Thousand Needles), Witherbark trolls (Arathi)
    *|cRXP_WARN_Needs a group for part of it.|r
    *Forever: classic unchanged
step
    .goto 1453,49.56,85.8
    >>Talk to |cRXP_FRIENDLY_Jennea Cannon|r
    .accept 1947 >>Accept Journey to the Marsh
    .target Jennea Cannon
step
    .goto 1445,46.06,57.09
    >>Talk to |cRXP_FRIENDLY_Tabetha|r
    .turnin 1947 >>Turn in Journey to the Marsh
    .accept 1949 >>Accept Hidden Secrets
    .target Tabetha
step
    .goto 1441,78.29,75.7
    >>Talk to |cRXP_FRIENDLY_Magus Tirth|r
    .turnin 1949 >>Turn in Hidden Secrets
    .accept 1950 >>Accept Get the Scoop
    .target Magus Tirth
step
    .goto 1441,78.29,75.7
    >>Talk to |cRXP_FRIENDLY_Magus Tirth|r
    .turnin 1950 >>Turn in Get the Scoop
    .accept 1951 >>Accept Rituals of Power
    .target Magus Tirth
step
    .goto 1420,82.6,33.8
    *|cRXP_WARN_Inside Scarlet Monastery: bring a group.|r
    >>Collect |cRXP_LOOT_[Rituals of Power]|r from |cRXP_PICK_Rituals of Power|r
    *Bring the book Rituals of Power to Tabetha in Dustwallow Marsh.
    .complete 1951,1 --Rituals of Power
step
    .goto 1445,46.06,57.09
    >>Talk to |cRXP_FRIENDLY_Tabetha|r
    .turnin 1951 >>Turn in Rituals of Power
    .accept 1952 >>Accept Mage's Wand
    .target Tabetha
step
    .goto 1445,46.06,57.09
    >>Talk to |cRXP_FRIENDLY_Tabetha|r
    .turnin 1952 >>Turn in Mage's Wand
    .target Tabetha
step
    +|cRXP_WARN_Done:|r Ragefire Wand / Icefury Wand +. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Mage
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 50-60
#name 50-52 Glacial Spike / Fire Ruby +
#displayname 50-52 Glacial Spike / Fire Ruby +
step
    +|cRXP_WARN_ITEM: Glacial Spike / Fire Ruby +|r. Click to start.
    *Reward: Glacial Spike (main-hand dagger, +60 spell power), Arcane Crystal Pendant (neck), Fire Ruby (mage trinket)
    *Why: Glacial Spike is a big caster dagger at 52; needs the Arcane Shard from Morphaz
    *|cRXP_WARN_Needs a group for part of it.|r
    *Forever: changed in Forever: 12,400 XP; all-three-items vs pick-one is unverified
step
    .goto 1455,26.3,6.77
    >>Talk to |cRXP_FRIENDLY_Juli Stormkettle|r
    .accept 8250 >>Accept Magecraft
    .target Juli Stormkettle
step
    .goto 1447,28.11,50.09
    >>Talk to |cRXP_FRIENDLY_Sanath Lim-yo|r
    .turnin 8250 >>Turn in Magecraft
    .target Sanath Lim-yo
step
    .goto 1447,29.25,40.21
    >>Talk to |cRXP_FRIENDLY_Archmage Xylem|r
    .accept 8251 >>Accept Magic Dust
    .target Archmage Xylem
step
    .goto 1447,66.42,28.91
    >>Collect |cRXP_LOOT_[Glittering Dust]|r from |cRXP_ENEMY_Blood Elf Defender|r, |cRXP_ENEMY_Blood Elf Arcanist|r, |cRXP_ENEMY_Evin Schmidtt|r
    *Bring 10 Glittering Dust to Archmage Xylem.
    .complete 8251,1 --Magic Dust
    .mob Blood Elf Defender
    .mob Blood Elf Arcanist
step
    .goto 1447,29.25,40.21
    >>Talk to |cRXP_FRIENDLY_Archmage Xylem|r
    .turnin 8251 >>Turn in Magic Dust
    .accept 8252 >>Accept The Siren's Coral
    .target Archmage Xylem
step
    .goto 1447,40.5,52.09
    >>Collect |cRXP_LOOT_[Enchanted Coral]|r from |cRXP_ENEMY_Spitelash Siren|r
    *Collect 6 Enchanted Coral and return them to Archmage Xylem.
    .complete 8252,1 --The Siren's Coral
    .mob Spitelash Siren
step
    .goto 1447,29.25,40.21
    >>Talk to |cRXP_FRIENDLY_Archmage Xylem|r
    .turnin 8252 >>Turn in The Siren's Coral
    .accept 8253 >>Accept Destroy Morphaz
    .target Archmage Xylem
step
    .goto 1435,69.9,53.5
    *|cRXP_WARN_Inside The Temple of Atal'Hakkar: bring a group.|r
    >>Collect |cRXP_LOOT_[Arcane Shard]|r from |cRXP_ENEMY_Morphaz|r
    *Retrieve the Arcane Shard from Morphaz and return to Archmage Xylem.
    .complete 8253,1 --Destroy Morphaz
    .mob Morphaz
step
    .goto 1447,29.25,40.21
    >>Talk to |cRXP_FRIENDLY_Archmage Xylem|r
    .turnin 8253 >>Turn in Destroy Morphaz
    .target Archmage Xylem
step
    +|cRXP_WARN_Done:|r Glacial Spike / Fire Ruby +. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Mage Orc/Horde Mage Undead/Horde Mage Troll
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 10 Ley Orb / Ley Staff (Orc/Undead/Troll)
#displayname 10 Ley Orb / Ley Staff (Orc/Undead/Troll)
step
    +|cRXP_WARN_ITEM: Ley Orb / Ley Staff|r. Click to start.
    *Reward: Choose Ley Orb (off-hand, use: restore mana) or Ley Staff
    *|cffffd200OK|r [Ley Orb]: Held In Off-hand, +1 Spirit - free mana potion every 30 min; only if you use a 1H
    *|cffffd200OK|r [Ley Staff]: Two-Hand Staff, 5.34 DPS, +1 Intellect, +1 Spirit - small stats but a real upgrade over a starter staff
    *Why: Free off-hand or staff at 10
    *Forever: classic unchanged (Mirror Lake is a Classic quest kept in Forever)
step
    .goto 1454,39.16,86.27
    >>Talk to |cRXP_FRIENDLY_Uthel'nay|r
    .accept 1883 >>Accept Speak with Un'thuwa
    .target Uthel'nay
step
    .goto 1411,56.31,75.11
    >>Talk to |cRXP_FRIENDLY_Un'Thuwa|r
    .turnin 1883 >>Turn in Speak with Un'thuwa
    .accept 1884 >>Accept Ju-Ju Heaps << Orc/Undead/Troll
    .target Un'Thuwa
step
    .goto 1411,67.03,87.8
    >>Click |cRXP_PICK_Ju-Ju Heap|r
    *Destroy 4 Ju-Ju Heaps, then return to Un'thuwa in Sen'jin Village.
    .complete 1884,1 << Orc/Undead/Troll --Ju-Ju Heaps
step
    .goto 1411,56.31,75.11
    >>Talk to |cRXP_FRIENDLY_Un'Thuwa|r
    .turnin 1884 >>Turn in Ju-Ju Heaps << Orc/Undead/Troll
    .target Un'Thuwa
step
    +|cRXP_WARN_Done:|r Ley Orb / Ley Staff. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Mage Undead/Horde Mage Troll
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 15-16 Lesser Spellfire Robes (Undead/Troll)
#displayname 15-16 Lesser Spellfire Robes (Undead/Troll)
step
    +|cRXP_WARN_ITEM: Lesser Spellfire Robes|r. Click to start.
    *Reward: Manaweave Robe (Alliance) or Lesser Spellfire Robes (Horde)
    *|cffffd200OK|r [Lesser Spellfire Robes]: Chest Cloth, 34 armor, +6 Intellect - standard green chest for 15 (same stats as Manaweave Robe)
    *Why: Free chest upgrade at 15
    *Forever: classic unchanged (no change reported)
step
    .goto 1454,39.16,86.27
    >>Talk to |cRXP_FRIENDLY_Uthel'nay|r
    .accept 1959 >>Accept Report to Anastasia << Undead/Troll
    .target Uthel'nay
step
    .goto 1458,85.14,10.03
    >>Talk to |cRXP_FRIENDLY_Anastasia Hartwell|r
    .turnin 1959 >>Turn in Report to Anastasia << Undead/Troll
    .accept 1960 >>Accept Investigate the Alchemist Shop << Orc/Undead/Troll
    .target Anastasia Hartwell
step
    .goto 1458,85.14,10.03
    >>Collect |cRXP_LOOT_[Filled Containment Coffer]|r from |cRXP_PICK_Filled Containment Coffer|r. Collect |cRXP_LOOT_[Cantation of Manifestation]|r from |cRXP_PICK_Cantation of Manifestation|r
    *Obtain a Cantation of Manifestation and a Chest of Containment Coffers from behind Anastasia Hartwell. Bring 3 Filled Containment Coffers, the Chest of Containment Coffers and the Cantation of Manifestation to Anastasia in the Undercity.
    .complete 1960,1 << Orc/Undead/Troll --Investigate the Alchemist Shop
    .complete 1960,3 << Orc/Undead/Troll --Investigate the Alchemist Shop
step
    .goto 1453,49.45,85.48
    >>Collect |cRXP_LOOT_[Chest of Containment Coffers]|r from |cRXP_PICK_Chest of Containment Coffers|r
    *Obtain a Cantation of Manifestation and a Chest of Containment Coffers from behind Anastasia Hartwell. Bring 3 Filled Containment Coffers, the Chest of Containment Coffers and the Cantation of Manifestation to Anastasia in the Undercity.
    .complete 1960,2 << Orc/Undead/Troll --Investigate the Alchemist Shop
step
    .goto 1458,85.14,10.03
    >>Talk to |cRXP_FRIENDLY_Anastasia Hartwell|r
    .turnin 1960 >>Turn in Investigate the Alchemist Shop << Orc/Undead/Troll
    .accept 1961 >>Accept Gathering Materials << Orc/Undead/Troll
    .target Anastasia Hartwell
step
    .goto 1429,60.71,52.8
    >>Collect |cRXP_LOOT_[Linen Cloth]|r from |cRXP_ENEMY_Flesh Eater|r, |cRXP_ENEMY_Kobold Miner|r, |cRXP_ENEMY_Mine Spider|r
    *Bring 10 Linen Cloth and 6 Dalaran Mana Gems to Josef Gregorian.
    .complete 1961,1 << Orc/Undead/Troll --Gathering Materials
    .mob Flesh Eater
    .mob Kobold Miner
step
    .goto 1416,14.38,69.12
    >>Collect |cRXP_LOOT_[Dalaran Mana Gem]|r from |cRXP_ENEMY_Kirin Tor Wizard|r, |cRXP_ENEMY_Adorean Lew|r, |cRXP_ENEMY_Bitty Frostflinger|r
    *Bring 10 Linen Cloth and 6 Dalaran Mana Gems to Josef Gregorian.
    .complete 1961,2 << Orc/Undead/Troll --Gathering Materials
    .mob Kirin Tor Wizard
    .mob Adorean Lew
step
    .goto 1458,70.76,30.69
    >>Talk to |cRXP_FRIENDLY_Josef Gregorian|r
    .turnin 1961 >>Turn in Gathering Materials << Orc/Undead/Troll
    .accept 1962 >>Accept Spellfire Robes << Undead/Troll
    .target Josef Gregorian
step
    .goto 1458,70.76,30.69
    >>Talk to |cRXP_FRIENDLY_Josef Gregorian|r
    .turnin 1962 >>Turn in Spellfire Robes << Undead/Troll
    .target Josef Gregorian
step
    +|cRXP_WARN_Done:|r Lesser Spellfire Robes. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Mage Undead/Horde Mage Troll
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 20-29
#name 26 Nether-lace Robe / Nether-lace Tunic (Undead/Troll)
#displayname 26 Nether-lace Robe / Nether-lace Tunic (Undead/Troll)
step
    +|cRXP_WARN_ITEM: Nether-lace Robe / Nether-lace Tunic|r. Click to start.
    *Reward: Astral Knot Robe or Astral Knot Blouse (Alliance); Nether-lace Robe or Nether-lace Tunic (Horde)
    *|cffffd200OK|r [Nether-lace Robe]: Chest Cloth, 44 armor, +6 Stamina, +6 Intellect, +6 Spirit - solid green chest for 26 (same stats as Astral Knot Robe)
    *|cffffd200OK|r [Nether-lace Tunic]: Chest Cloth, 44 armor, +6 Stamina, +9 Intellect - solid green chest for 26; more Int than the robes
    *Why: Chest upgrade at 26; Tower of Ilgalar is dangerous at level
    *Forever: classic unchanged (no change reported)
step
    .goto 1458,85.14,10.03
    >>Talk to |cRXP_FRIENDLY_Anastasia Hartwell|r
    .accept 1943 >>Accept Speak with Deino << Undead/Troll
    .target Anastasia Hartwell
step
    .goto 1454,38.45,86.13
    >>Talk to |cRXP_FRIENDLY_Deino|r
    .turnin 1943 >>Turn in Speak with Deino << Undead/Troll
    .accept 1944 >>Accept Waters of Xavian << Orc/Undead/Troll
    .target Deino
step
    >>Collect |cRXP_LOOT_[Xavian Water Sample]|r
    *Bring the Xavian Water Sample to Deino in Orgrimmar.
    .complete 1944,1 << Orc/Undead/Troll --Waters of Xavian
step
    .goto 1454,38.45,86.13
    >>Talk to |cRXP_FRIENDLY_Deino|r
    .turnin 1944 >>Turn in Waters of Xavian << Orc/Undead/Troll
    .accept 1945 >>Accept Laughing Sisters << Undead/Troll
    .target Deino
step
    .goto 1440,59.83,54.69
    >>Collect |cRXP_LOOT_[Laughing Sister's Hair]|r from |cRXP_ENEMY_Laughing Sister|r
    *Bring 12 Laughing Sister's Hairs to Kil'hala at the Crossroads.
    .complete 1945,1 << Undead/Troll --Laughing Sisters
    .mob Laughing Sister
step
    .goto 1413,52.2,31.7
    >>Talk to |cRXP_FRIENDLY_Kil'hala|r
    .turnin 1945 >>Turn in Laughing Sisters << Undead/Troll
    .accept 1946 >>Accept Nether-lace Garment << Undead/Troll
    .target Kil'hala
step
    .goto 1413,52.2,31.7
    >>Talk to |cRXP_FRIENDLY_Kil'hala|r
    .turnin 1946 >>Turn in Nether-lace Garment << Undead/Troll
    .target Kil'hala
step
    +|cRXP_WARN_Done:|r Nether-lace Robe / Nether-lace Tunic. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Mage
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 30-39
#name 35-40 Ragefire Wand / Icefury Wand +
#displayname 35-40 Ragefire Wand / Icefury Wand +
step
    +|cRXP_WARN_ITEM: Ragefire Wand / Icefury Wand +|r. Click to start.
    *Reward: Choose Icefury Wand, Ragefire Wand or Nether Force Wand (ilvl 40, +3 Int, +9 school damage, about 37 DPS)
    *Why: Wand that lasts into the 40s; Tabetha in Dustwallow Marsh, Scarlet Monastery Library step, Magus Tirth (Thousand Needles), Witherbark trolls (Arathi)
    *|cRXP_WARN_Needs a group for part of it.|r
    *Forever: classic unchanged
step
    .goto 1454,38.45,86.13
    >>Talk to |cRXP_FRIENDLY_Deino|r
    .accept 1947 >>Accept Journey to the Marsh
    .target Deino
step
    .goto 1445,46.06,57.09
    >>Talk to |cRXP_FRIENDLY_Tabetha|r
    .turnin 1947 >>Turn in Journey to the Marsh
    .accept 1949 >>Accept Hidden Secrets
    .target Tabetha
step
    .goto 1441,78.29,75.7
    >>Talk to |cRXP_FRIENDLY_Magus Tirth|r
    .turnin 1949 >>Turn in Hidden Secrets
    .accept 1950 >>Accept Get the Scoop
    .target Magus Tirth
step
    .goto 1441,78.29,75.7
    >>Talk to |cRXP_FRIENDLY_Magus Tirth|r
    .turnin 1950 >>Turn in Get the Scoop
    .accept 1951 >>Accept Rituals of Power
    .target Magus Tirth
step
    .goto 1420,82.6,33.8
    *|cRXP_WARN_Inside Scarlet Monastery: bring a group.|r
    >>Collect |cRXP_LOOT_[Rituals of Power]|r from |cRXP_PICK_Rituals of Power|r
    *Bring the book Rituals of Power to Tabetha in Dustwallow Marsh.
    .complete 1951,1 --Rituals of Power
step
    .goto 1445,46.06,57.09
    >>Talk to |cRXP_FRIENDLY_Tabetha|r
    .turnin 1951 >>Turn in Rituals of Power
    .accept 1952 >>Accept Mage's Wand
    .target Tabetha
step
    .goto 1445,46.06,57.09
    >>Talk to |cRXP_FRIENDLY_Tabetha|r
    .turnin 1952 >>Turn in Mage's Wand
    .target Tabetha
step
    +|cRXP_WARN_Done:|r Ragefire Wand / Icefury Wand +. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Mage
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 50-60
#name 50-52 Glacial Spike / Fire Ruby +
#displayname 50-52 Glacial Spike / Fire Ruby +
step
    +|cRXP_WARN_ITEM: Glacial Spike / Fire Ruby +|r. Click to start.
    *Reward: Glacial Spike (main-hand dagger, +60 spell power), Arcane Crystal Pendant (neck), Fire Ruby (mage trinket)
    *Why: Glacial Spike is a big caster dagger at 52; needs the Arcane Shard from Morphaz
    *|cRXP_WARN_Needs a group for part of it.|r
    *Forever: changed in Forever: 12,400 XP; all-three-items vs pick-one is unverified
step
    .goto 1456,25.18,20.96
    >>Talk to |cRXP_FRIENDLY_Thurston Xane|r
    .accept 8250 >>Accept Magecraft
    .target Thurston Xane
step
    .goto 1447,28.11,50.09
    >>Talk to |cRXP_FRIENDLY_Sanath Lim-yo|r
    .turnin 8250 >>Turn in Magecraft
    .target Sanath Lim-yo
step
    .goto 1447,29.25,40.21
    >>Talk to |cRXP_FRIENDLY_Archmage Xylem|r
    .accept 8251 >>Accept Magic Dust
    .target Archmage Xylem
step
    .goto 1447,66.42,28.91
    >>Collect |cRXP_LOOT_[Glittering Dust]|r from |cRXP_ENEMY_Blood Elf Defender|r, |cRXP_ENEMY_Blood Elf Arcanist|r, |cRXP_ENEMY_Evin Schmidtt|r
    *Bring 10 Glittering Dust to Archmage Xylem.
    .complete 8251,1 --Magic Dust
    .mob Blood Elf Defender
    .mob Blood Elf Arcanist
step
    .goto 1447,29.25,40.21
    >>Talk to |cRXP_FRIENDLY_Archmage Xylem|r
    .turnin 8251 >>Turn in Magic Dust
    .accept 8252 >>Accept The Siren's Coral
    .target Archmage Xylem
step
    .goto 1447,40.5,52.09
    >>Collect |cRXP_LOOT_[Enchanted Coral]|r from |cRXP_ENEMY_Spitelash Siren|r
    *Collect 6 Enchanted Coral and return them to Archmage Xylem.
    .complete 8252,1 --The Siren's Coral
    .mob Spitelash Siren
step
    .goto 1447,29.25,40.21
    >>Talk to |cRXP_FRIENDLY_Archmage Xylem|r
    .turnin 8252 >>Turn in The Siren's Coral
    .accept 8253 >>Accept Destroy Morphaz
    .target Archmage Xylem
step
    .goto 1435,69.9,53.5
    *|cRXP_WARN_Inside The Temple of Atal'Hakkar: bring a group.|r
    >>Collect |cRXP_LOOT_[Arcane Shard]|r from |cRXP_ENEMY_Morphaz|r
    *Retrieve the Arcane Shard from Morphaz and return to Archmage Xylem.
    .complete 8253,1 --Destroy Morphaz
    .mob Morphaz
step
    .goto 1447,29.25,40.21
    >>Talk to |cRXP_FRIENDLY_Archmage Xylem|r
    .turnin 8253 >>Turn in Destroy Morphaz
    .target Archmage Xylem
step
    +|cRXP_WARN_Done:|r Glacial Spike / Fire Ruby +. Enjoy the loot. Click to finish.
]])
