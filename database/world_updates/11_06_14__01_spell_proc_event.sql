DELETE FROM `spell_proc_event` where `entry` = 31828 OR `entry` = 31829;
-- Blessed Life
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(31828, 0, 0, 0, 0, 0, 0, 0, 0, 100, 8),
(31829, 0, 0, 0, 0, 0, 0, 0, 0, 100, 8);