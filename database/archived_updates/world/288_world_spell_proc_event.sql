DELETE FROM `spell_proc_event` WHERE `entry` IN (53695,53696);
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
(53695,0x00,10,0x00800000,0x00000000,0x00000008,0x00000000,0x00000000,0,0,0), -- Judgements of the Just (Rank 1)
(53696,0x00,10,0x00800000,0x00000000,0x00000008,0x00000000,0x00000000,0,0,0); -- Judgements of the Just (Rank 2)

DELETE FROM `spell_proc_event` WHERE `entry`=71585;
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
(71585,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,45); -- Purified Lunar Dust

DELETE FROM `spell_proc_event` WHERE `entry`=70664;
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
(70664,0x00,7,0x00000010,0x00000000,0x00000000,0x00000000,0x00000000,0,0,0); -- Item - Druid T10 Restoration 4P Bonus (Rejuvenation)