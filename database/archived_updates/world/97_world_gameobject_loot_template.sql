-- Fix Object for quest Just Ask Alice 

DELETE FROM gameobject_loot_template WHERE entry IN (203174, 203175, 203176, 203088);
INSERT INTO gameobject_loot_template
VALUES
(203174, 55221, -100, 1, 0, 1, 1),
(203175, 55223, -100, 1, 0, 1, 1),
(203176, 55222, -100, 1, 0, 1, 1),
(203088, 55227, -100, 1, 0, 1, 1);