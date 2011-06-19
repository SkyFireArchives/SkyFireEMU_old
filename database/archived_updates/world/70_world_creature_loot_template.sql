-- Incriminating Documents (DROP)
DELETE FROM creature_loot_template WHERE entry=15968 AND item=20765;
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, lootmode, groupid, mincountOrRef, maxcount) VALUES (15968, 20765, 88, 1, 0, 1, 1);
-- Fix By Ari
