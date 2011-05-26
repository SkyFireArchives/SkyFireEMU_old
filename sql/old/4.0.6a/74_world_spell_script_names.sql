DELETE FROM `spell_script_names` WHERE `spell_id`=-49145 AND `ScriptName`='spell_dk_spell_deflection';
DELETE FROM `spell_script_names` WHERE `spell_id`=-33851 AND `ScriptName`='spell_dru_primal_tenacity';
DELETE FROM `spell_script_names` WHERE `spell_id`=69366 AND `ScriptName`='spell_dru_moonkin_form_passive';

DELETE FROM `spell_script_names` WHERE `spell_id`=-6143 AND `ScriptName`='spell_mage_frost_warding_trigger';
DELETE FROM `spell_script_names` WHERE `spell_id`=-6143 AND `ScriptName`='spell_mage_incanters_absorbtion_absorb';

DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_dk_corpse_explosion';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_pal_guarded_by_the_light';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_pal_judgement_of_command';

INSERT IGNORE INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
( 24907, 'spell_dru_moonkin_form_passive'),
( 66630, 'spell_gen_gunship_portal'),
( 66637, 'spell_gen_gunship_portal'),
( 66656, 'spell_gen_parachute_ic');
