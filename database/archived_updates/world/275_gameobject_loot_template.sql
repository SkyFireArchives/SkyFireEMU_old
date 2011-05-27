-- Olemba Seeds
DELETE FROM gameobject_loot_template WHERE entry = 182541;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES
(182541, 25745, -100);

-- Waste not, Want not
DELETE FROM `gameobject_loot_template` WHERE `entry` = 182797;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES
(182797, 25912, -52);

DELETE FROM `gameobject_loot_template` WHERE `entry` = 182799;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES
(182799, 25911, -52);

-- [QUEST] Some Make Lemonade, Some Make Liquor (Orange GO loot)

DELETE FROM `gameobject_loot_template` WHERE `entry` = 190624;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (190624, 38656, -100);

-- Fix By TheHacker66