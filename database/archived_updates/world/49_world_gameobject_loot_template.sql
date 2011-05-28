-- Locking Bolt
DELETE FROM gameobject_loot_template WHERE entry=195135;
INSERT INTO gameobject_loot_template (entry, item, ChanceOrQuestChance, lootmode, groupid, mincountOrRef, maxcount) VALUES (195135, 46771, 100, 1, 0, 1, 1);
-- Copper Plating
DELETE FROM gameobject_loot_template WHERE entry=195138;
INSERT INTO gameobject_loot_template (entry, item, ChanceOrQuestChance, lootmode, groupid, mincountOrRef, maxcount) VALUES (195138, 46773, 100, 1, 0, 1, 1);
-- Bronze Cog
DELETE FROM gameobject_loot_template WHERE entry=195136;
INSERT INTO gameobject_loot_template (entry, item, ChanceOrQuestChance, lootmode, groupid, mincountOrRef, maxcount) VALUES (195136, 46772, 100, 1, 0, 1, 1);
-- Fix By Ari