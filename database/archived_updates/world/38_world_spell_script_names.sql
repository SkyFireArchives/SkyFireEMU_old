DELETE FROM `spell_script_names` WHERE `spell_id` IN (-11113) AND `ScriptName` = 'spell_mage_blast_wave';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(-11113,'spell_mage_blast_wave');

DELETE FROM `spell_script_names` WHERE `spell_id`=71905 AND `ScriptName`='spell_item_shadowmourne';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES 
(71905,'spell_item_shadowmourne'); -- Item - Shadowmourne Legendary
