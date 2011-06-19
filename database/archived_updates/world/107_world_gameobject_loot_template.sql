-- Fix loot di object Angors Coffer

DELETE FROM gameobject_loot_template WHERE entry =206388;
INSERT INTO gameobject_loot_template
VALUES
(206388, 62509, -100, 1, 0, 1, 1);