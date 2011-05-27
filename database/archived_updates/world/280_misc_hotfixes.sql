-- Totemic Wrath fix
-- 2523 Searing Totem
update creature_template set spell2 = 77746 where entry = 2523;
-- 5929 Magma Totem
update creature_template set spell2 = 77746 where entry = 5929;
-- 5950 Flametongue Totem
update creature_template set spell2 = 77746 where entry = 5950;
-- 15439 Fire Elemental Totem
update creature_template set spell2 = 77746 where entry = 15439;

-- Rolling Thunder proc
REPLACE INTO `spell_proc_event` VALUES (88756, 0x00, 0x0B, 0x00000003, 0x00000000, 0x00000000, 0x00010000, 0x00000000, 0, 30, 0);
REPLACE INTO `spell_proc_event` VALUES (88764, 0x00, 0x0B, 0x00000003, 0x00000000, 0x00000000, 0x00010000, 0x00000000, 0, 60, 0);

-- Die by the Sword cooldown fix
-- (81913) Die by the Sword (Rank 1)
DELETE FROM `spell_proc_event` WHERE `entry` IN (81913);
INSERT INTO `spell_proc_event` VALUES (81913, 0x00, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00100000, 0x00000000, 0, 100, 120);

-- (81912) Die by the Sword (Rank 2)
DELETE FROM `spell_proc_event` WHERE `entry` IN (81914);
INSERT INTO `spell_proc_event` VALUES (81914, 0x00, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00100000, 0x00000000, 0, 100, 120);


-- Fulmination - no SP bonus
replace into `spell_bonus_data`(`entry`,`direct_bonus`,`dot_bonus`,`ap_bonus`,`ap_dot_bonus`,`comments`) values ( '88767','0','-1','-1','-1','Shaman - Fulmination');
replace into `spell_script_names`(`spell_id`,`ScriptName`) values ( '77746','spell_sha_totemic_wrath');
replace into `spell_script_names`(`spell_id`,`ScriptName`) values ( '8042','spell_sha_fulmination');
replace into `disables` (`sourceType`, `entry`, `flags`, `comment`) values('0','80129','1','Impending Victory. Should heal for 5% instead of 20%. Doesn\'t always turn off after 1 use.');
replace into `disables` (`sourceType`, `entry`, `flags`, `comment`) values('0','80128','1','Impending Victory. Should heal for 5% instead of 20%. Doesn\'t always turn off after 1 use.');
replace into `disables` (`sourceType`, `entry`, `flags`, `comment`) values('0','83050','1','Early Frost. Should activate once per 15 sec, not all the time.');
replace into `disables` (`sourceType`, `entry`, `flags`, `comment`) values('0','83049','1','Early Frost. Should activate once per 15 sec, not all the time.');