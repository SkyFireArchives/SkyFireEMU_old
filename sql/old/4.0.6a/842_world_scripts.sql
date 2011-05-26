-- A Smart Start
UPDATE `gameobject_template` SET questItem1=23738 WHERE entry=181675;
UPDATE `gameobject_loot_template` SET item=23738 WHERE entry=181675;

-- Captain Kelisendra's Lost Rutters
UPDATE creature_loot_template SET ChanceOrQuestChance='5' WHERE item=21776 AND entry= 15937;