UPDATE creature_template SET skinloot = 0 WHERE entry = 2565;
UPDATE creature_template SET skinloot = 44089 WHERE entry = 44089;
DELETE FROM skinning_loot_template WHERE entry = 2565;
DELETE FROM skinning_loot_template WHERE entry = 44089;
INSERT INTO skinning_loot_template VALUES
(44089, 2319, 49, 1, 0, 1, 1),
(44089, 2318, 43, 1, 0, 1, 2),
(44089, 4232, 5, 1, 0, 1, 1),
(44089, 783, 3, 1, 0, 1, 1);