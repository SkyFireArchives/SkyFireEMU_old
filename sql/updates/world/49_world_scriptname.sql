UPDATE `creature_template` SET `ScriptName`='npc_theramore_guard' WHERE `entry`=4979; -- Theramore Guard

-- Quest ...Or Maybe We Don't (12138, 12198)
UPDATE `creature_template` SET `ScriptName`='npc_lightning_sentry' WHERE `entry`=26407; -- Lightning Sentry

-- Quest Smoke 'Em Out (12323, 12324)
UPDATE `creature_template` SET `ScriptName`='npc_venture_co_straggler',`AIName`='' WHERE `entry`=27570;

INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (6474, 'spell_sha_earthbind_totem');