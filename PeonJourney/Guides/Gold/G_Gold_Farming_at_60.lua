RXPGuides.RegisterGuide([[
#forever
#version 1
#group Peon Journey - Gold
#groupweight 60
#name Gold Farming at 60
#displayname Gold Farming at 60
#subgroup Farming
step
    +|cRXP_WARN_Gold farming at 60.|r Numbers come from a 15 Nov auction scan on one realm, so check your own AH first. Normal dungeon groups make about 24g/hour too.
    *Quests of quest level 48+ pay gold since the 10 Nov hotfix (once per quest), so finishing Azshara, Mount Hyjal, Alcaz Prison and Blackmaw Hold quests is gold too.
step
    >>Devilsaurs in Un'Goro Crater: about 1g70s per kill with Skinning (Devilsaur Leather). Watch for other farmers.
    .mob Devilsaur
    +Done farming here
step
    >>Firetail Scorpids in Burning Steppes around 26,57: about 36s per kill with Skinning.
    .mob Firetail Scorpid
    .loop 35,1428,28.1,56.3,32.5,55.4,26.1,60.7,28.1,56.3
    +Done farming here
step
    >>Cyclone Warriors in Silithus around 41,58: about 36s per kill (cloth, Essence of Air chance).
    .mob Cyclone Warrior
    .loop 35,1451,32.1,83.2,43.4,78.7,45.9,62.9,47.3,59.5,36.4,59.6,32.1,83.2
    +Done farming here
step
    .goto 1434,27.35,76.88
    >>|cRXP_WARN_Sundays 2 pm server time:|r Stranglethorn Fishing Extravaganza. Needs Expert Fishing (225 recommended). Fish 40 Speckled Tastyfish and hand them to |cRXP_FRIENDLY_Riggle Bassbait|r. Fish decay after 4 hours.
    .target Riggle Bassbait
    +Done (or not Sunday)
]])
