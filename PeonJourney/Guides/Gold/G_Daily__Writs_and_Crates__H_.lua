RXPGuides.RegisterGuide([[
#forever
#version 1
#group Peon Journey - Gold
#groupweight 60
#name Daily: Writs and Crates (H)
#displayname Daily: Writs and Crates (H)
<< Horde
#subgroup Daily
step
    +|cRXP_WARN_Honest truth: Forever has no daily quest that makes real gold.|r Craftsman's Writs are daily but the item usually costs more than the Coin Pouch (about 20-90 silver). Use this routine for reputation and small change, and sell what you can't use.
    *Sealed Writs drop from any mob (more from chests and dungeons). Open them at level 10+. No profession needed: a bought item works.
    *Only deliver an order when the writ + item cost less than about 50 silver on the auction house. Sell the rest of the writs on the auction house.
    *Each different order can be delivered once per day.
step
    .goto 1413,50.13,29.37
    >>Talk to |cRXP_FRIENDLY_Dokimi|r (west of the Crossroads, Barrens)
    .target Dokimi
    *Hand in sealed Waylaid Crates here (Merchant's Favor + a few silver). Unfilled crates sold for about 17-30 silver on the AH in week one.
    *Your first writ or crate gives a Shipping Label quest: 2,000 reputation + 50 Merchant's Favor, once per character.
    +Done with crates today
step
    +|cRXP_WARN_Known Journeyman writ customers|r (deliver cheap orders while you pass by):
    *Kixxle - Wetlands 50.2,37.8 | Kzixx - Duskwood 81.8,19.8 | Ziz Fizziks - Stonetalon 59.0,62.4
    *Muggol Breezebeard - Arathi 48.8,55.8 | Alyce - Arathi 34.0,23.2 | Gorgrash - Hillsbrad 80.0,48.2
    *Alan Sneeks - Alterac 30.6,61.0 | Sos'mol - Alterac 38.4,61.2 | Short John Mithril - STV 29.6,47.4
    *Scooty - STV 27.6,77.4 | 'Plucky' Johnson - Thousand Needles 79.6,75.6 | Ash'alari - Ashenvale 60.2,72.6
    *Cowardly Peon - Ashenvale 78.4,68.8 | Webbed Mudsnout Gnoll - Hillsbrad 62.2,69.2
]])
