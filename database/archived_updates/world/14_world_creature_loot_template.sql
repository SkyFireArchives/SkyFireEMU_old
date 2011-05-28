-- Creature Loot Deleted NPC Ids Dont Exist And Arent Referenced
-- Fixed 2 startup errors related to non existing npc loot
DELETE FROM creature_loot_template WHERE entry=3678902;
DELETE FROM creature_loot_template WHERE entry=3678903;
-- Fix By Ari.