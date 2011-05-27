-- Fix gameobject loot for quest Tomber's Supplies

DELETE FROM gameobject_loot_template WHERE entry = 181133;
INSERT INTO gameobject_loot_template
VALUES
(181133, 22583, -100, 1, 0, 1, 1);