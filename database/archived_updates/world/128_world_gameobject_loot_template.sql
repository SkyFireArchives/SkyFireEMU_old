-- [QUEST] Pilfered Supplies
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`=-100 WHERE `entry`=203129 AND `item`=55151 LIMIT 1;    

-- [OBJECT] Davil's Libram
DELETE FROM gameobject_loot_template WHERE entry = 176206;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (176206, 12954, -100); 

-- By TheHacker66