-- Some fixes by ZenitH

-- Aftermath caster daze fix
DELETE FROM `spell_linked_spell` where `spell_trigger` = 17962;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(17962, -18118, 0, 'Conflagrate Daze Fix');

-- Aftermath correct proc fix
DELETE from `spell_proc_event` where entry IN (85113, 85114);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(85113, 0, 5, 0, 8388608, 0, 87376, 0, 0, 0, 0),
(85114, 0, 5, 0, 8388608, 0, 87376, 0, 0, 0, 0);

-- Improved Soul Fire fix

DELETE FROM `spell_proc_event` where entry IN ( 18120, 18119 );
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
 ('18120', '0', '5', 0, '128', 0, '0', '0', '0', '100', '0'),
 ('18119', '0', '5', 0, '128', 0, '0', '0', '0', '100', '0');

-- Exploit Weakness fix

DELETE FROM `spell_proc_event` where entry IN (51632, 91023); 
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(51632, 0, 8, 8390400, 0, 0, 4112, 0, 0, 0, 0),
(91023, 0, 8, 8390400, 0, 0, 4112, 0, 0, 0, 0);


-- MoonFire fix

DELETE FROM `spell_proc_event` where entry IN (33603, 33604, 33605); 
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(33603, 0, 7, 2, 0, 0, 0, 0, 0, 0, 0),
(33604, 0, 7, 2, 0, 0, 0, 0, 0, 0, 0),
(33605, 0, 7, 2, 0, 0, 0, 0, 0, 0, 0);


-- Nature's Grace fix

UPDATE spell_proc_event set Cooldown=60 where entry in (61346, 61345, 16880);

-- Denounce fix

DELETE FROM `spell_proc_event` WHERE entry IN ( 85510, 31825 );
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES 
('85510', '0', '0', '2097152', '0', '0', '81920', '0', '0', '50', '0'),
('31825', '0', '0', '2097152', '0', '0', '81920', '0', '0', '50', '0');

-- Power Word : Fortitude Fix

DELETE FROM `spell_group` where id = 1250;
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES
(1250, 79104),
(1250, 79105);

DELETE FROM `spell_group_stack_rules` where group_id = 1250;
INSERT INTO `spell_group_stack_rules` (`group_id`, `stack_rule`) VALUES
(1250, 2);

-- Paralysis Fix

DELETE FROM `spell_proc_event` where entry in (87192, 87195 );
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
('87192', '0', '0', '8192', '0', '0', '65536', '2', '0', '0', '0'),
('87195', '0', '0', '8192', '0', '0', '65536', '2', '0', '0', '0');


-- Mind Melt correct proc on Mind Spike

DELETE FROM `spell_proc_event` WHERE entry IN (14910, 33371);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(14910, 0, 6, 0, 0, 65536, 65536, 0, 0, 0, 0),
(33371, 0, 6, 0, 0, 65536, 65536, 0, 0, 0, 0);

-- Inner Fire/Will Fix

DELETE FROM `spell_group` where id = 1500;
INSERT INTO `spell_group` (`id` ,`spell_id`)VALUES 
('1500', '588'), 
('1500', '73413');

DELETE FROM `spell_group_stack_rules` where group_id = 1500;
INSERT INTO `spell_group_stack_rules` (`group_id`, `stack_rule`) VALUES
(1500, 2);

-- Mind Spike removing Dots

DELETE FROM `spell_linked_spell` where spell_trigger = 73510;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(73510, -34914, 1, 'Mind Spike rem dots'),
(73510, -2944, 1, 'Mind Spike rem dots'),
(73510, -589, 1, 'Mind Spike rem dots');
