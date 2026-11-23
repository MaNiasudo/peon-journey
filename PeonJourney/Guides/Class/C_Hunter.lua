RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Hunter
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 50-60
#name 50-52 Devilsaur Eye / Devilsaur Tooth +
#displayname 50-52 Devilsaur Eye / Devilsaur Tooth +
step
    +|cRXP_WARN_ITEM: Devilsaur Eye / Devilsaur Tooth +|r. Click to start.
    *Reward: The Green Drake: Hunting Spear (polearm), Devilsaur Eye (hunter trinket), Devilsaur Tooth (hunter trinket)
    *|cffffd200OK|r [Devilsaur Eye]: Trinket - +16 AP is modest; the Classic +150 AP on-use is gone
    *|cffffd200OK|r [Devilsaur Tooth]: Trinket, +7 Agility - +7 Agi filler trinket; Eye or Spear are the better picks
    *|cff40ff40GOOD|r [Hunting Spear]: Two-Hand Polearm, 45.00 DPS, +17 Stamina, Restores +6 mana per 5 sec. - hunter stat stick: crit, Stamina, mp5
    *Why: The only hunter item quest before 60; needs the Tooth of Morphaz
    *|cRXP_WARN_Needs a group for part of it.|r
    *Forever: changed in Forever: Devilsaur Eye reworked into a beast root, Devilsaur Tooth gives a free Revive Pet; 12,400 XP; all-three-items vs pick-one is unverified
step
    .goto 1457,42.21,7.27
    >>Talk to |cRXP_FRIENDLY_Dorion|r
    .accept 8151 >>Accept The Hunter's Charm
    .target Dorion
step
    .goto 1447,42.4,42.62
    >>Talk to |cRXP_FRIENDLY_Ogtinc|r
    .turnin 8151 >>Turn in The Hunter's Charm
    .accept 8153 >>Accept Courser Antlers
    .target Ogtinc
step
    .goto 1447,48.12,80.69
    >>Collect |cRXP_LOOT_[Perfect Courser Antler]|r from |cRXP_ENEMY_Mosshoof Courser|r
    *Bring a pair of Perfect Courser Antlers to Ogtinc in Azshara. Ogtinc resides atop the cliffs northeast of the Ruins of Eldarath.
    .complete 8153,1 --Courser Antlers
    .mob Mosshoof Courser
step
    .goto 1447,42.4,42.62
    >>Talk to |cRXP_FRIENDLY_Ogtinc|r
    .turnin 8153 >>Turn in Courser Antlers
    .accept 8231 >>Accept Wavethrashing
    .target Ogtinc
step
    .goto 1447,88.2,32.07
    >>Collect |cRXP_LOOT_[Wavethrasher Scales]|r from |cRXP_ENEMY_Young Wavethrasher|r, |cRXP_ENEMY_Wavethrasher|r, |cRXP_ENEMY_Great Wavethrasher|r
    *Bring 6 Wavethrasher Scales to Ogtinc in Azshara. Ogtinc resides atop the cliffs northeast the Ruins of Eldarath.
    .complete 8231,1 --Wavethrashing
    .mob Young Wavethrasher
    .mob Wavethrasher
step
    .goto 1447,42.4,42.62
    >>Talk to |cRXP_FRIENDLY_Ogtinc|r
    .turnin 8231 >>Turn in Wavethrashing
    .accept 8232 >>Accept The Green Drake
    .target Ogtinc
step
    .goto 1435,69.9,53.5
    *|cRXP_WARN_Inside The Temple of Atal'Hakkar: bring a group.|r
    >>Collect |cRXP_LOOT_[Tooth of Morphaz]|r from |cRXP_ENEMY_Morphaz|r
    *Bring the Tooth of Morphaz to Ogtinc in Azshara. Ogtinc resides atop the cliffs northeast the Ruins of Eldarath.
    .complete 8232,1 --The Green Drake
    .mob Morphaz
step
    .goto 1447,42.4,42.62
    >>Talk to |cRXP_FRIENDLY_Ogtinc|r
    .turnin 8232 >>Turn in The Green Drake
    .target Ogtinc
step
    +|cRXP_WARN_Done:|r Devilsaur Eye / Devilsaur Tooth +. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Hunter Human/Alliance Hunter Gnome
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 10 Taming the Beast (Human/Gnome)
#displayname 10 Taming the Beast (Human/Gnome)
step
    +|cRXP_WARN_MUST DO: Taming the Beast|r. Click to start.
    *Reward: Tame Beast, Call/Dismiss Pet and your first pet; Skyborne version from Quel'ana Quickgale tames a Vuldren Alpha (new fox family)
step
    .goto 1429,41.15,66.23
    >>Talk to |cRXP_FRIENDLY_Josephine Carson|r
    .accept 94792 >>Accept Taming the Beast
    .target Josephine Carson
step
    .goto 1429,60.21,78.15
    >>Kill |cRXP_ENEMY_Rockhide Boar|r
    *Use the Taming Rod to tame a Rockhide Boar. Practice your skills, then return the Taming Rod to Josephine Carson.
    .complete 94792,1 --Taming the Beast
    .mob Rockhide Boar
step
    .goto 1429,41.15,66.23
    >>Talk to |cRXP_FRIENDLY_Josephine Carson|r
    .turnin 94792 >>Turn in Taming the Beast
    .accept 94863 >>Accept Taming the Beast
    .target Josephine Carson
step
    .goto 1429,65.11,64.36
    >>Kill |cRXP_ENEMY_Gray Forest Wolf|r
    *Use the Taming Rod to tame a Gray Forest Wolf. Practice your skills, then return the Taming Rod to Josephine Carson.
    .complete 94863,1 --Taming the Beast
    .mob Gray Forest Wolf
step
    .goto 1429,41.15,66.23
    >>Talk to |cRXP_FRIENDLY_Josephine Carson|r
    .turnin 94863 >>Turn in Taming the Beast
    .accept 94864 >>Accept Taming the Beast
    .target Josephine Carson
step
    .goto 1429,47.02,79.67
    >>Kill |cRXP_ENEMY_Young Forest Bear|r
    *Use the Taming Rod to tame a Young Forest Bear. Practice your skills, then return the Taming Rod to Josephine Carson.
    .complete 94864,1 --Taming the Beast
    .mob Young Forest Bear
step
    .goto 1429,41.15,66.23
    >>Talk to |cRXP_FRIENDLY_Josephine Carson|r
    .turnin 94864 >>Turn in Taming the Beast
    .accept 94793 >>Accept Training the Beast
    .target Josephine Carson
step
    .goto 1429,41.79,66.37
    >>Talk to |cRXP_FRIENDLY_Isaac Chan|r
    .turnin 94793 >>Turn in Training the Beast
    .target Isaac Chan
step
    +|cRXP_WARN_Done:|r Taming the Beast. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Hunter Dwarf
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 10 Taming the Beast (Dwarf)
#displayname 10 Taming the Beast (Dwarf)
step
    +|cRXP_WARN_MUST DO: Taming the Beast|r. Click to start.
    *Reward: Tame Beast, Call/Dismiss Pet and your first pet; Skyborne version from Quel'ana Quickgale tames a Vuldren Alpha (new fox family)
step
    .goto 1429,41.15,66.23
    >>Talk to |cRXP_FRIENDLY_Josephine Carson|r
    .accept 94792 >>Accept Taming the Beast
    .target Josephine Carson
step
    .goto 1429,60.21,78.15
    >>Kill |cRXP_ENEMY_Rockhide Boar|r
    *Use the Taming Rod to tame a Rockhide Boar. Practice your skills, then return the Taming Rod to Josephine Carson.
    .complete 94792,1 --Taming the Beast
    .mob Rockhide Boar
step
    .goto 1429,41.15,66.23
    >>Talk to |cRXP_FRIENDLY_Josephine Carson|r
    .turnin 94792 >>Turn in Taming the Beast
    .accept 94863 >>Accept Taming the Beast
    .target Josephine Carson
step
    .goto 1429,65.11,64.36
    >>Kill |cRXP_ENEMY_Gray Forest Wolf|r
    *Use the Taming Rod to tame a Gray Forest Wolf. Practice your skills, then return the Taming Rod to Josephine Carson.
    .complete 94863,1 --Taming the Beast
    .mob Gray Forest Wolf
step
    .goto 1429,41.15,66.23
    >>Talk to |cRXP_FRIENDLY_Josephine Carson|r
    .turnin 94863 >>Turn in Taming the Beast
    .accept 94864 >>Accept Taming the Beast
    .target Josephine Carson
step
    .goto 1429,47.02,79.67
    >>Kill |cRXP_ENEMY_Young Forest Bear|r
    *Use the Taming Rod to tame a Young Forest Bear. Practice your skills, then return the Taming Rod to Josephine Carson.
    .complete 94864,1 --Taming the Beast
    .mob Young Forest Bear
step
    .goto 1429,41.15,66.23
    >>Talk to |cRXP_FRIENDLY_Josephine Carson|r
    .turnin 94864 >>Turn in Taming the Beast
    .accept 94793 >>Accept Training the Beast
    .target Josephine Carson
step
    .goto 1429,41.79,66.37
    >>Talk to |cRXP_FRIENDLY_Isaac Chan|r
    .turnin 94793 >>Turn in Training the Beast
    .target Isaac Chan
step
    .goto 1426,45.81,53.04
    >>Talk to |cRXP_FRIENDLY_Grif Wildheart|r
    .accept 6064 >>Accept Taming the Beast << Dwarf
    .target Grif Wildheart
step
    .goto 1426,45.81,53.04
    >>Talk to |cRXP_FRIENDLY_Grif Wildheart|r
    .turnin 6064 >>Turn in Taming the Beast << Dwarf
    .accept 6084 >>Accept Taming the Beast << Dwarf
    .target Grif Wildheart
step
    .goto 1426,45.81,53.04
    >>Talk to |cRXP_FRIENDLY_Grif Wildheart|r
    .turnin 6084 >>Turn in Taming the Beast << Dwarf
    .accept 6085 >>Accept Taming the Beast << Dwarf
    .target Grif Wildheart
step
    .goto 1426,45.81,53.04
    >>Talk to |cRXP_FRIENDLY_Grif Wildheart|r
    .turnin 6085 >>Turn in Taming the Beast << Dwarf
    .accept 6086 >>Accept Training the Beast << Dwarf
    .target Grif Wildheart
step
    .goto 1455,70.86,85.83
    >>Talk to |cRXP_FRIENDLY_Belia Thundergranite|r
    .turnin 6086 >>Turn in Training the Beast << Dwarf
    .target Belia Thundergranite
step
    +|cRXP_WARN_Done:|r Taming the Beast. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Hunter NightElf
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 10 Taming the Beast (Night Elf)
#displayname 10 Taming the Beast (Night Elf)
step
    +|cRXP_WARN_MUST DO: Taming the Beast|r. Click to start.
    *Reward: Tame Beast, Call/Dismiss Pet and your first pet; Skyborne version from Quel'ana Quickgale tames a Vuldren Alpha (new fox family)
step
    .goto 1429,41.15,66.23
    >>Talk to |cRXP_FRIENDLY_Josephine Carson|r
    .accept 94792 >>Accept Taming the Beast
    .target Josephine Carson
step
    .goto 1429,60.21,78.15
    >>Kill |cRXP_ENEMY_Rockhide Boar|r
    *Use the Taming Rod to tame a Rockhide Boar. Practice your skills, then return the Taming Rod to Josephine Carson.
    .complete 94792,1 --Taming the Beast
    .mob Rockhide Boar
step
    .goto 1429,41.15,66.23
    >>Talk to |cRXP_FRIENDLY_Josephine Carson|r
    .turnin 94792 >>Turn in Taming the Beast
    .accept 94863 >>Accept Taming the Beast
    .target Josephine Carson
step
    .goto 1429,65.11,64.36
    >>Kill |cRXP_ENEMY_Gray Forest Wolf|r
    *Use the Taming Rod to tame a Gray Forest Wolf. Practice your skills, then return the Taming Rod to Josephine Carson.
    .complete 94863,1 --Taming the Beast
    .mob Gray Forest Wolf
step
    .goto 1429,41.15,66.23
    >>Talk to |cRXP_FRIENDLY_Josephine Carson|r
    .turnin 94863 >>Turn in Taming the Beast
    .accept 94864 >>Accept Taming the Beast
    .target Josephine Carson
step
    .goto 1429,47.02,79.67
    >>Kill |cRXP_ENEMY_Young Forest Bear|r
    *Use the Taming Rod to tame a Young Forest Bear. Practice your skills, then return the Taming Rod to Josephine Carson.
    .complete 94864,1 --Taming the Beast
    .mob Young Forest Bear
step
    .goto 1429,41.15,66.23
    >>Talk to |cRXP_FRIENDLY_Josephine Carson|r
    .turnin 94864 >>Turn in Taming the Beast
    .accept 94793 >>Accept Training the Beast
    .target Josephine Carson
step
    .goto 1429,41.79,66.37
    >>Talk to |cRXP_FRIENDLY_Isaac Chan|r
    .turnin 94793 >>Turn in Training the Beast
    .target Isaac Chan
step
    .goto 1438,56.68,59.49
    >>Talk to |cRXP_FRIENDLY_Dazalar|r
    .accept 6063 >>Accept Taming the Beast << NightElf
    .target Dazalar
step
    .goto 1438,56.68,59.49
    >>Talk to |cRXP_FRIENDLY_Dazalar|r
    .turnin 6063 >>Turn in Taming the Beast << NightElf
    .accept 6101 >>Accept Taming the Beast << NightElf
    .target Dazalar
step
    .goto 1438,56.68,59.49
    >>Talk to |cRXP_FRIENDLY_Dazalar|r
    .turnin 6101 >>Turn in Taming the Beast << NightElf
    .accept 6102 >>Accept Taming the Beast << NightElf
    .target Dazalar
step
    .goto 1438,56.68,59.49
    >>Talk to |cRXP_FRIENDLY_Dazalar|r
    .turnin 6102 >>Turn in Taming the Beast << NightElf
    .accept 6103 >>Accept Training the Beast << NightElf
    .target Dazalar
step
    .goto 1457,40.38,8.55
    >>Talk to |cRXP_FRIENDLY_Jocaste|r
    .turnin 6103 >>Turn in Training the Beast << NightElf
    .target Jocaste
step
    +|cRXP_WARN_Done:|r Taming the Beast. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Hunter Skyborne
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 10 Taming the Beast (Skyborne)
#displayname 10 Taming the Beast (Skyborne)
step
    +|cRXP_WARN_MUST DO: Taming the Beast|r. Click to start.
    *Reward: Tame Beast, Call/Dismiss Pet and your first pet; Skyborne version from Quel'ana Quickgale tames a Vuldren Alpha (new fox family)
step
    .goto 2521,59.56,72.63
    >>Talk to |cRXP_FRIENDLY_Quel'ana Quickgale|r
    .accept 94978 >>Accept Taming the Beast << Skyborne
    .target Quel'ana Quickgale
step
    .goto 2521,46.86,48.45
    >>Kill |cRXP_ENEMY_Windsong Crawler|r
    *Use the Taming Rod to tame a Windsong Crawler found near bodies of water.
    .complete 94978,1 << Skyborne --Taming the Beast
    .mob Windsong Crawler
step
    .goto 2521,45.26,44.24
    >>Talk to |cRXP_FRIENDLY_Elayaa Easewind|r
    .accept 94007 >>Accept Taming the Beast << Skyborne
    .target Elayaa Easewind
step
    .goto 2521,59.56,72.63
    >>Talk to |cRXP_FRIENDLY_Quel'ana Quickgale|r
    .turnin 94978 >>Turn in Taming the Beast << Skyborne
    .turnin 94007 >>Turn in Taming the Beast << Skyborne
    .accept 94979 >>Accept Taming the Beast << Skyborne
    .target Quel'ana Quickgale
step
    .goto 2521,50.14,78.39
    >>Kill |cRXP_ENEMY_Ornery Galestrider|r
    *Use the Taming Rod to tame an Ornery Galestrider in the Gustberry Lowlands.
    .complete 94979,1 << Skyborne --Taming the Beast
    .mob Ornery Galestrider
step
    .goto 2521,59.56,72.63
    >>Talk to |cRXP_FRIENDLY_Quel'ana Quickgale|r
    .turnin 94979 >>Turn in Taming the Beast << Skyborne
    .accept 94013 >>Accept Taming the Beast << Skyborne
    .target Quel'ana Quickgale
step
    .goto 2521,50.54,80.33
    >>Kill |cRXP_ENEMY_Vuldren Alpha|r
    *Use the Taming Rod to tame a Vuldren Alpha in the Gustberry Lowlands. Practice your skills, then return the Taming Rod to Quel'ana Quickgale in Valanaar.
    .complete 94013,1 << Skyborne --Taming the Beast
    .mob Vuldren Alpha
step
    .goto 2521,59.56,72.63
    >>Talk to |cRXP_FRIENDLY_Quel'ana Quickgale|r
    .turnin 94013 >>Turn in Taming the Beast << Skyborne
    .accept 94050 >>Accept Training the Beast << Skyborne
    .target Quel'ana Quickgale
step
    .goto 2521,59.74,72.76
    >>Talk to |cRXP_FRIENDLY_Quel'dora Quickgale|r
    .turnin 94050 >>Turn in Training the Beast << Skyborne
    .target Quel'dora Quickgale
step
    .goto 1429,41.15,66.23
    >>Talk to |cRXP_FRIENDLY_Josephine Carson|r
    .accept 94792 >>Accept Taming the Beast
    .target Josephine Carson
step
    .goto 1429,60.21,78.15
    >>Kill |cRXP_ENEMY_Rockhide Boar|r
    *Use the Taming Rod to tame a Rockhide Boar. Practice your skills, then return the Taming Rod to Josephine Carson.
    .complete 94792,1 --Taming the Beast
    .mob Rockhide Boar
step
    .goto 1429,41.15,66.23
    >>Talk to |cRXP_FRIENDLY_Josephine Carson|r
    .turnin 94792 >>Turn in Taming the Beast
    .accept 94863 >>Accept Taming the Beast
    .target Josephine Carson
step
    .goto 1429,65.11,64.36
    >>Kill |cRXP_ENEMY_Gray Forest Wolf|r
    *Use the Taming Rod to tame a Gray Forest Wolf. Practice your skills, then return the Taming Rod to Josephine Carson.
    .complete 94863,1 --Taming the Beast
    .mob Gray Forest Wolf
step
    .goto 1429,41.15,66.23
    >>Talk to |cRXP_FRIENDLY_Josephine Carson|r
    .turnin 94863 >>Turn in Taming the Beast
    .accept 94864 >>Accept Taming the Beast
    .target Josephine Carson
step
    .goto 1429,47.02,79.67
    >>Kill |cRXP_ENEMY_Young Forest Bear|r
    *Use the Taming Rod to tame a Young Forest Bear. Practice your skills, then return the Taming Rod to Josephine Carson.
    .complete 94864,1 --Taming the Beast
    .mob Young Forest Bear
step
    .goto 1429,41.15,66.23
    >>Talk to |cRXP_FRIENDLY_Josephine Carson|r
    .turnin 94864 >>Turn in Taming the Beast
    .accept 94793 >>Accept Training the Beast
    .target Josephine Carson
step
    .goto 1429,41.79,66.37
    >>Talk to |cRXP_FRIENDLY_Isaac Chan|r
    .turnin 94793 >>Turn in Training the Beast
    .target Isaac Chan
step
    +|cRXP_WARN_Done:|r Taming the Beast. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Hunter
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 50-60
#name 60 Raid class chains (info)
#displayname 60 Raid class chains (info)
step
    +|cRXP_WARN_Raid or not-yet-open class chains.|r Listed for planning, not guided. Click to close.
    *Rhok'delar, Longbow of the Ancient Keepers: Rhok'delar, Longbow of the Ancient Keepers (raid)
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Hunter
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 50-60
#name 50-52 Devilsaur Eye / Devilsaur Tooth +
#displayname 50-52 Devilsaur Eye / Devilsaur Tooth +
step
    +|cRXP_WARN_ITEM: Devilsaur Eye / Devilsaur Tooth +|r. Click to start.
    *Reward: The Green Drake: Hunting Spear (polearm), Devilsaur Eye (hunter trinket), Devilsaur Tooth (hunter trinket)
    *|cffffd200OK|r [Devilsaur Eye]: Trinket - +16 AP is modest; the Classic +150 AP on-use is gone
    *|cffffd200OK|r [Devilsaur Tooth]: Trinket, +7 Agility - +7 Agi filler trinket; Eye or Spear are the better picks
    *|cff40ff40GOOD|r [Hunting Spear]: Two-Hand Polearm, 45.00 DPS, +17 Stamina, Restores +6 mana per 5 sec. - hunter stat stick: crit, Stamina, mp5
    *Why: The only hunter item quest before 60; needs the Tooth of Morphaz
    *|cRXP_WARN_Needs a group for part of it.|r
    *Forever: changed in Forever: Devilsaur Eye reworked into a beast root, Devilsaur Tooth gives a free Revive Pet; 12,400 XP; all-three-items vs pick-one is unverified
step
    .goto 1456,58.49,88.33
    >>Talk to |cRXP_FRIENDLY_Kary Thunderhorn|r
    .accept 8151 >>Accept The Hunter's Charm
    .target Kary Thunderhorn
step
    .goto 1447,42.4,42.62
    >>Talk to |cRXP_FRIENDLY_Ogtinc|r
    .turnin 8151 >>Turn in The Hunter's Charm
    .accept 8153 >>Accept Courser Antlers
    .target Ogtinc
step
    .goto 1447,48.12,80.69
    >>Collect |cRXP_LOOT_[Perfect Courser Antler]|r from |cRXP_ENEMY_Mosshoof Courser|r
    *Bring a pair of Perfect Courser Antlers to Ogtinc in Azshara. Ogtinc resides atop the cliffs northeast of the Ruins of Eldarath.
    .complete 8153,1 --Courser Antlers
    .mob Mosshoof Courser
step
    .goto 1447,42.4,42.62
    >>Talk to |cRXP_FRIENDLY_Ogtinc|r
    .turnin 8153 >>Turn in Courser Antlers
    .accept 8231 >>Accept Wavethrashing
    .target Ogtinc
step
    .goto 1447,88.2,32.07
    >>Collect |cRXP_LOOT_[Wavethrasher Scales]|r from |cRXP_ENEMY_Young Wavethrasher|r, |cRXP_ENEMY_Wavethrasher|r, |cRXP_ENEMY_Great Wavethrasher|r
    *Bring 6 Wavethrasher Scales to Ogtinc in Azshara. Ogtinc resides atop the cliffs northeast the Ruins of Eldarath.
    .complete 8231,1 --Wavethrashing
    .mob Young Wavethrasher
    .mob Wavethrasher
step
    .goto 1447,42.4,42.62
    >>Talk to |cRXP_FRIENDLY_Ogtinc|r
    .turnin 8231 >>Turn in Wavethrashing
    .accept 8232 >>Accept The Green Drake
    .target Ogtinc
step
    .goto 1435,69.9,53.5
    *|cRXP_WARN_Inside The Temple of Atal'Hakkar: bring a group.|r
    >>Collect |cRXP_LOOT_[Tooth of Morphaz]|r from |cRXP_ENEMY_Morphaz|r
    *Bring the Tooth of Morphaz to Ogtinc in Azshara. Ogtinc resides atop the cliffs northeast the Ruins of Eldarath.
    .complete 8232,1 --The Green Drake
    .mob Morphaz
step
    .goto 1447,42.4,42.62
    >>Talk to |cRXP_FRIENDLY_Ogtinc|r
    .turnin 8232 >>Turn in The Green Drake
    .target Ogtinc
step
    +|cRXP_WARN_Done:|r Devilsaur Eye / Devilsaur Tooth +. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Hunter Orc/Horde Hunter Troll
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 10 Taming the Beast (Orc/Troll)
#displayname 10 Taming the Beast (Orc/Troll)
step
    +|cRXP_WARN_MUST DO: Taming the Beast|r. Click to start.
    *Reward: Tame Beast, Call/Dismiss Pet and your first pet; Skyborne version from Quel'ana Quickgale tames a Vuldren Alpha (new fox family)
step
    .goto 1411,51.85,43.49
    >>Talk to |cRXP_FRIENDLY_Thotar|r
    .accept 6062 >>Accept Taming the Beast << Orc/Troll
    .target Thotar
step
    .goto 1411,51.85,43.49
    >>Talk to |cRXP_FRIENDLY_Thotar|r
    .turnin 6062 >>Turn in Taming the Beast << Orc/Troll
    .accept 6083 >>Accept Taming the Beast << Orc/Troll
    .target Thotar
step
    .goto 1411,51.85,43.49
    >>Talk to |cRXP_FRIENDLY_Thotar|r
    .turnin 6083 >>Turn in Taming the Beast << Orc/Troll
    .accept 6082 >>Accept Taming the Beast << Orc/Troll
    .target Thotar
step
    .goto 1411,51.85,43.49
    >>Talk to |cRXP_FRIENDLY_Thotar|r
    .turnin 6082 >>Turn in Taming the Beast << Orc/Troll
    .accept 6081 >>Accept Training the Beast << Orc/Undead/Troll
    .target Thotar
step
    .goto 1454,66.05,18.53
    >>Talk to |cRXP_FRIENDLY_Ormak Grimshot|r
    .turnin 6081 >>Turn in Training the Beast << Orc/Undead/Troll
    .target Ormak Grimshot
step
    +|cRXP_WARN_Done:|r Taming the Beast. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Hunter Tauren
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 10 Taming the Beast (Tauren)
#displayname 10 Taming the Beast (Tauren)
step
    +|cRXP_WARN_MUST DO: Taming the Beast|r. Click to start.
    *Reward: Tame Beast, Call/Dismiss Pet and your first pet; Skyborne version from Quel'ana Quickgale tames a Vuldren Alpha (new fox family)
step
    .goto 1412,46.93,59.65
    >>Talk to |cRXP_FRIENDLY_Yaw Sharpmane|r
    .accept 6061 >>Accept Taming the Beast << Tauren
    .target Yaw Sharpmane
step
    .goto 1412,46.93,59.65
    >>Talk to |cRXP_FRIENDLY_Yaw Sharpmane|r
    .turnin 6061 >>Turn in Taming the Beast << Tauren
    .accept 6087 >>Accept Taming the Beast << Tauren
    .target Yaw Sharpmane
step
    .goto 1412,46.93,59.65
    >>Talk to |cRXP_FRIENDLY_Yaw Sharpmane|r
    .turnin 6087 >>Turn in Taming the Beast << Tauren
    .accept 6088 >>Accept Taming the Beast << Tauren
    .target Yaw Sharpmane
step
    .goto 1412,46.93,59.65
    >>Talk to |cRXP_FRIENDLY_Yaw Sharpmane|r
    .turnin 6088 >>Turn in Taming the Beast << Tauren
    .accept 6089 >>Accept Training the Beast << Tauren
    .target Yaw Sharpmane
step
    .goto 1456,57.3,89.79
    >>Talk to |cRXP_FRIENDLY_Holt Thunderhorn|r
    .turnin 6089 >>Turn in Training the Beast << Tauren
    .target Holt Thunderhorn
step
    +|cRXP_WARN_Done:|r Taming the Beast. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Hunter Skyborne
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 10 Taming the Beast (Skyborne)
#displayname 10 Taming the Beast (Skyborne)
step
    +|cRXP_WARN_MUST DO: Taming the Beast|r. Click to start.
    *Reward: Tame Beast, Call/Dismiss Pet and your first pet; Skyborne version from Quel'ana Quickgale tames a Vuldren Alpha (new fox family)
step
    .goto 2521,45.26,44.24
    >>Talk to |cRXP_FRIENDLY_Elayaa Easewind|r
    .accept 94007 >>Accept Taming the Beast << Skyborne
    .target Elayaa Easewind
step
    .goto 2521,59.56,72.63
    >>Talk to |cRXP_FRIENDLY_Quel'ana Quickgale|r
    .turnin 94007 >>Turn in Taming the Beast << Skyborne
    .target Quel'ana Quickgale
step
    +|cRXP_WARN_Done:|r Taming the Beast. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Hunter Undead
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 01-19
#name 10 Training the Beast (Undead)
#displayname 10 Training the Beast (Undead)
step
    +|cRXP_WARN_MUST DO: Training the Beast|r. Click to start.
    *Reward: Beast Training (teach pet abilities); Alliance giver Isaac Chan in Goldshire
step
    .goto 1411,51.85,43.49
    >>Talk to |cRXP_FRIENDLY_Thotar|r
    .accept 6081 >>Accept Training the Beast << Orc/Undead/Troll
    .target Thotar
step
    .goto 1454,66.05,18.53
    >>Talk to |cRXP_FRIENDLY_Ormak Grimshot|r
    .turnin 6081 >>Turn in Training the Beast << Orc/Undead/Troll
    .target Ormak Grimshot
step
    +|cRXP_WARN_Done:|r Training the Beast. Enjoy the loot. Click to finish.
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Horde Hunter
#group Peon Journey - Class Quests
#groupweight 75
#subgroup Levels 50-60
#name 60 Raid class chains (info)
#displayname 60 Raid class chains (info)
step
    +|cRXP_WARN_Raid or not-yet-open class chains.|r Listed for planning, not guided. Click to close.
    *Rhok'delar, Longbow of the Ancient Keepers: Rhok'delar, Longbow of the Ancient Keepers (raid)
]])
