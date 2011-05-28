-- Fix loot di Shattered Sword of Marduk

DELETE FROM gameobject_loot_template WHERE entry = 176209;
INSERT INTO gameobject_loot_template
VALUES
(176209, 12957, -100, 1, 0, 1, 1);