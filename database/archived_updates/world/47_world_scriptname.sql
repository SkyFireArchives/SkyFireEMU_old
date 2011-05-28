UPDATE `creature_template` SET `ScriptName` = '' WHERE `entry` IN (33299,33409,33301,33414,33418,33416,33297,33298,33300,33408);
UPDATE `creature_template` SET `ScriptName` = 'generic_vehicleAI_toc5' WHERE `entry` IN (33217,33323,33320,33316,33317,33324,33318,33319,33321,33322);

DELETE FROM `spell_script_names` WHERE `spell_id`=46221 AND `ScriptName`='spell_gen_animal_blood';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(46221,'spell_gen_animal_blood');
