-- Talent.Paladin.Infusion_of_Light
DELETE FROM `spell_proc_event` WHERE `entry` IN ( 53569, 53576);
INSERT INTO `spell_proc_event` VALUES
(53569,0,10,0x40200000,0x10000,0,0,2,0,0,0),
(53576,0,10,0x40200000,0x10000,0,0,2,0,0,0);

-- Talent.Paladin.Blessed_Life
DELETE FROM `spell_proc_event` WHERE `entry` IN ( 31828, 31829);
INSERT INTO `spell_proc_event` VALUES
(31828,0,0,0,0,0,0,0,0,50,8),
(31829,0,0,0,0,0,0,0,0,100,8);

-- Talent.DK.Sudden_Doom (hacky: add trigger chance)
DELETE FROM `spell_proc_event` WHERE `entry` IN ( 49530, 49529, 49018);
INSERT INTO `spell_proc_event` VALUES
(49530,0,15,0,0,0,0,0,0,15,0),
(49529,0,15,0,0,0,0,0,0,10,0),
(49018,0,15,0,0,0,0,0,0,5,0);

