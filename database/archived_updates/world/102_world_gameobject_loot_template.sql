-- Fix loot for Crossroads Supply Crate

DELETE FROM gameobject_loot_template WHERE entry = 175708;
INSERT INTO gameobject_loot_template
VALUES
(175708, 12708, -100, 1, 0, 1, 1);