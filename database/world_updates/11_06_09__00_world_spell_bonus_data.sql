-- Vampiric Touch Bonus Data
DELETE FROM `spell_bonus_data` WHERE `entry`=34914;
INSERT INTO `spell_bonus_data` VALUES 
(34914,-1,0.4,-1,-1,'Priest - Vampiric Touch');

-- Vampiric Touch (Dispelled) Bonus Data
DELETE FROM `spell_bonus_data` WHERE `entry`=64085;
INSERT INTO `spell_bonus_data` VALUES
(64085,1.2,-1,-1,-1,'Priest - Vampiric Touch (Dispelled)');