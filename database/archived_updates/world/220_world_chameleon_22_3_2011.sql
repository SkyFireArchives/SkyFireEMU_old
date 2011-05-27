-- Shaman - Tranquil Mind Totem
UPDATE creature_template SET spell1=87717 WHERE entry=47069;

-- Shaman - Unleash Elements script
DELETE FROM spell_script_names WHERE spell_id=73680 AND ScriptName='spell_sha_unleash_elements';
INSERT INTO spell_script_names(spell_id, ScriptName) VALUES (73680, 'spell_sha_unleash_elements');

-- Updates for Cata spell power coeffs for Shamans
DELETE FROM spell_bonus_data WHERE entry IN (77478, 51490, 73683, 77472, 8187);
INSERT INTO spell_bonus_data(entry, direct_bonus, dot_bonus, ap_bonus, ap_dot_bonus, comments) VALUES 
(77478,'0.207', -1, -1, -1,'Shaman - Earthquake'),
(51490,'0.571', -1, -1, -1,'Shaman - Thunderstorm'),
(73683,'0.429', -1, -1, -1,'Shaman - Unleash Flame'),
(77472,'0.967', -1, -1, -1,'Shaman - Greater Healing Wave'),
(8187,'0.067', -1, -1, -1,'Shaman - Magma Totem');

-- Healing Stream
UPDATE spell_bonus_data SET direct_bonus='0.083', dot_bonus='0.083' WHERE entry=52042;
-- Healing Wave
UPDATE spell_bonus_data SET direct_bonus='0.302' WHERE entry=331;
-- Chain Heal
UPDATE spell_bonus_data SET direct_bonus='0.35' WHERE entry=1064;
UPDATE spell_bonus_data SET direct_bonus='0.604', comments='Shaman - Healing Surge' WHERE entry=8004;