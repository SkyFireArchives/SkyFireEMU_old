DELETE FROM `spell_proc_event` WHERE `entry` IN (16176,16235,16240);
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
(16176,0x00,11,0x000001C0,0x00000000,0x00000010,0x00000000,0x00000002,0,0,0), -- Ancestral Healing (Rank 1)
(16235,0x00,11,0x000001C0,0x00000000,0x00000010,0x00000000,0x00000002,0,0,0), -- Ancestral Healing (Rank 2)
(16240,0x00,11,0x000001C0,0x00000000,0x00000010,0x00000000,0x00000002,0,0,0); -- Ancestral Healing (Rank 3)

-- Taste for Blood, Overpower Ready!, Sudden Death and Fingers of Frost proc data.
DELETE FROM `spell_proc_event` WHERE `entry` IN (60503, 68051, 52437, 74396);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(60503, 0x01, 4, 0x00000004, 0x00000000, 0x00000000, 0x00000010, 0x00000000, 0, 0, 0),
(68051, 0x01, 4, 0x00000004, 0x00000000, 0x00000000, 0x00000010, 0x00000000, 0, 0, 0),
(52437, 0x01, 4, 0x20000000, 0x00000000, 0x00000000, 0x00000010, 0x00000000, 0, 0, 0),
(74396, 0x10, 3, 0x00000000, 0x00000000, 0x00000000, 0x00010000, 0x00000003, 0, 0, 0);

DELETE FROM `spell_proc_event` WHERE `entry`=71903;
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
(71903,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,20,0); -- Item - Shadowmourne Legendary

-- Allow any mage spell to drop Fingers of Frost charge
UPDATE `spell_proc_event` SET `SchoolMask` = 0x54, `SpellFamilyMask0` = 0x28E212F7, `SpellFamilyMask1` = 0x00119048 WHERE `entry` = 74396;

-- Let Nature's Grace proc only from non-periodic magic spells
UPDATE `spell_proc_event` SET `SchoolMask` = 0x48, `SpellFamilyName` = 7, `SpellFamilyMask0` = 0x00000067, `SpellFamilyMask1` = 0x03800002 WHERE `entry` IN (16880, 61345, 61346);
