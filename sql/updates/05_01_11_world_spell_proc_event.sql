-- Some Warrior Spell Fixes 
-- by ZenitH


-- Wrecking Crew proc fix

UPDATE `spell_proc_event` SET `SpellFamilyMask0` = '536870912' WHERE `spell_proc_event`.`entry` =20503;
UPDATE `spell_proc_event` SET `SpellFamilyMask0` = '536870912' WHERE `spell_proc_event`.`entry` =20502;

-- Lambs to the Slaughter proc fix

DELETE FROM `spell_proc_event` WHERE entry IN (84583, 84587, 84588);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(84583, 0, 4, 33554432, 0, 0, 0, 3, 0, 0, 0),
(84587, 0, 4, 33554432, 0, 0, 0, 3, 0, 0, 0),
(84588, 0, 4, 33554432, 0, 0, 0, 3, 0, 0, 0);


-- Rude Interruption proc fix

UPDATE `spell_proc_event` SET `SpellFamilyMask0` = '8',`procFlags` = '4112',`procEx` = '3' WHERE `spell_proc_event`.`entry` =61216;
UPDATE `spell_proc_event` SET `SpellFamilyMask0` = '8',`procFlags` = '4112',`procEx` = '3' WHERE `spell_proc_event`.`entry` =61221;

-- Executioner proc fix

DELETE FROM `spell_proc_event` WHERE entry IN (20502, 20503);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(20502, 0, 4, 536870912, 0, 0, 16, 0, 0, 50, 0),
(20503, 0, 4, 536870912, 0, 0, 16, 0, 0, 100, 0);

-- Meat Cleaver proc fix

DELETE FROM `spell_proc_event` WHERE entry IN (12329, 12950);

INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES 
('12329', '0', '4', '4194304', '0', '0', '0', '0', '0', '0', '0'), 
('12950', '0', '4', '4194304', '0', '0', '0', '0', '0', '0', '0');

UPDATE `spell_proc_event` SET `SpellFamilyMask1` = '17179869184' WHERE `spell_proc_event`.`entry` =12329;
UPDATE `spell_proc_event` SET `SpellFamilyMask1` = '17179869184' WHERE `spell_proc_event`.`entry` =12950;

-- Bloodsurge proc fix

UPDATE `spell_proc_event` SET `SpellFamilyMask0` = '4398046511104',`SpellFamilyMask1` = '0' WHERE `spell_proc_event`.`entry` =46913;

UPDATE `spell_proc_event` SET `SpellFamilyMask0` = '4398046511104',`SpellFamilyMask1` = '0' WHERE `spell_proc_event`.`entry` =46914;

UPDATE `spell_proc_event` SET `SpellFamilyMask0` = '4398046511104',`SpellFamilyMask1` = '0' WHERE `spell_proc_event`.`entry` =46915;

