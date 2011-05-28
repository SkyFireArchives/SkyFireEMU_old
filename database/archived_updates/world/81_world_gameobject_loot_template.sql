-- Sin'dorei Armaments

DELETE FROM gameobject_loot_template WHERE entry = 181107;
INSERT INTO gameobject_loot_template
VALUES
(181107, 22413, -100, 1, 0, 1, 1);
UPDATE gameobject_template SET data3 = 0, data4 = 0, data5 = 0 WHERE entry = 181107;