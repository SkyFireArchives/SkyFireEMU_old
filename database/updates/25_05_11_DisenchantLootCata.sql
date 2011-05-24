-- /ITEM LEVEL 318/
DELETE FROM disenchant_loot_template WHERE entry=80;
INSERT INTO disenchant_loot_template (entry, item, ChanceOrQuestChance, groupid, mincount, maxcount) VALUES 
(80, 52555, 75, 0, 1, 5),
(80, 52718, 10, 0, 1, 3);

-- /ITEM LEVEL 352/
DELETE FROM disenchant_loot_template WHERE entry=81;
INSERT INTO disenchant_loot_template (entry, item, ChanceOrQuestChance, groupid, mincount, maxcount) VALUES 
(81, 52721, 100, 0, 1, 2);

-- /ITEM LEVEL 353/359/365/372/
DELETE FROM disenchant_loot_template WHERE entry=82;
INSERT INTO disenchant_loot_template (entry, item, ChanceOrQuestChance, groupid, mincount, maxcount) VALUES 
(82, 52722, 100, 0, 1, 2);

