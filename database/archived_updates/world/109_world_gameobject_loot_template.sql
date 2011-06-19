-- Fix loot of gameobject : Red Power Crystal - Green Power Crystal - Yellow Power Crystal - Blue Power Crystal

DELETE FROM gameobject_loot_template WHERE entry IN (164660, 164661, 164659, 164658);
INSERT INTO gameobject_loot_template
VALUES
(164660, 11186, -100, 1, 0, 1, 1),
(164661, 11188, -100, 1, 0, 1, 1),
(164659, 11185, -100, 1, 0, 1, 1),
(164658, 11184, -100, 1, 0, 1, 1);