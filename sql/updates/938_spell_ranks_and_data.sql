UPDATE `spell_bonus_data` SET `direct_bonus` = -1 WHERE `entry` = 27243;
DELETE FROM `spell_bonus_data` WHERE `entry` = 27285;
INSERT INTO `spell_bonus_data` VALUES (27285, 0.2129, -1, -1, -1,'Seed of Corruption Proc');

DELETE FROM `spell_ranks` WHERE `first_spell_id` = 27285;
INSERT INTO `spell_ranks` VALUES
(27285, 27285, 1),
(27285, 47833, 2),
(27285, 47834, 3);