DELETE FROM `spell_bonus_data` WHERE `entry` = 2818;
INSERT INTO `spell_bonus_data` VALUES
(2818,-1,-1,-1,0.03,'Rogue - Deadly Poison Rank 1($AP*0.12 / number of ticks)');

DELETE FROM `spell_script_names` WHERE `spell_id` = -2818;
INSERT INTO `spell_script_names` VALUES
(-2818,'spell_rog_deadly_poison');