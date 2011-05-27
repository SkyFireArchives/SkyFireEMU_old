# Delete all old SP bonus data since we are using DBC data now
delete from spell_bonus_data where (ap_bonus in (-1,0) and ap_dot_bonus in (-1,0));
# clear SP data for fields that are left due to having AP data
update spell_bonus_data set direct_bonus = -1, dot_bonus = -1;
# Custom SP coeffs as of 4.0.6 that are not in DBC
replace into spell_bonus_data values
(33778, 0.58, -1, -1, -1, 'Lifebloom'),
(543, 0.807, -1, -1, -1, 'Mage Ward'),
(11426, 0.807, -1, -1, -1, 'Ice Barrier'),
(1463, 0.807, -1, -1, -1, 'Mana Shield'),
(17, 0.87, -1, -1, -1, 'Power Word: Shield'),
(2812, 0.61, -1, -1, -1, 'Holy Wrath'),
(33110, 0.318, -1, -1, -1, 'Prayer of Mending'),
(34433, 0.3568, -1, -1, -1, 'Shadowfiend'),
(48181, 0.429, -1, -1, -1, 'Haunt'),
(6229, 0.807, -1, -1, -1, 'Shadow Ward'),
(31117, 1.8, -1, -1, -1, 'Unstable Affliction'),
(30108, -1, 0.2, -1, -1, 'Unstable Affliction'),
(7001, -1, 0.308, -1, -1, 'Lightwell Renew');