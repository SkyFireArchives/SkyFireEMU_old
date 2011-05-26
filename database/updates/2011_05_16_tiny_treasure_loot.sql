-- Tiny Treasure Chest (Loot)
DELETE FROM item_loot_template WHERE entry=67539;
INSERT INTO item_loot_template (entry, item, ChanceOrQuestChance, lootmode, groupid, mincountOrRef, maxcount) VALUES 
(67539, 53010, 80, 1, 0, 4, 11),
(67539, 52327, 10, 1, 0, 1, 5),
(67539, 52325, 10, 1, 0, 1, 5),
(67539, 52329, 10, 1, 0, 1, 5),
(67539, 52183, 10, 1, 0, 1, 4),
(67539, 52185, 10, 1, 0, 1, 4),
(67539, 52328, 10, 1, 0, 1, 5),
(67539, 52326, 10, 1, 0, 1, 5);