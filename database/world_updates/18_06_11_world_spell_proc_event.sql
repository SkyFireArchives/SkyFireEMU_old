-- Rude Interruption

DELETE FROM `spell_proc_event` WHERE `entry` IN (61221, 61216);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES 
('61221', '0', '4', '0', '0', '0', '4112', '0', '0', '100', '120'), 
('61216', '0', '4', '0', '0', '0', '4112', '0', '0', '100', '120');
