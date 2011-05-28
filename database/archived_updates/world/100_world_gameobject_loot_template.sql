-- Fix loot gameobject Cache of Shadra

DELETE FROM gameobject_loot_template WHERE entry = 204120;
INSERT INTO gameobject_loot_template
VALUES
(204120, 58282, -100, 1, 0, 1, 1),
(204120, 58281, -100, 1, 0, 1, 1);