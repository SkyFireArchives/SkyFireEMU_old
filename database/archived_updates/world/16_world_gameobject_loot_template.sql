-- Add Some Loot To The Gameobject
-- Leftover Boar Meat
DELETE FROM gameobject_loot_template WHERE entry=201704;
INSERT INTO gameobject_loot_template (entry, item) VALUES (201704, 49756);

-- Wolf-Hide Cloaks
DELETE FROM gameobject_loot_template WHERE entry=201705;
INSERT INTO gameobject_loot_template (entry, item) VALUES (201705, 49755);

-- Bear's Paw
DELETE FROM gameobject_loot_template WHERE entry=194100;
INSERT INTO gameobject_loot_template (entry, item) VALUES (194100, 44850);

-- Floating Greymist Debris
DELETE FROM gameobject_loot_template WHERE entry=195080;
INSERT INTO gameobject_loot_template (entry, item) VALUES (195080, 46384);

-- Beer Barrel
DELETE FROM gameobject_loot_template WHERE entry=201706;
INSERT INTO gameobject_loot_template (entry, item) VALUES (201706, 49754);

-- Timberling Sprout
DELETE FROM gameobject_loot_template WHERE entry=4608;
INSERT INTO gameobject_loot_template (entry, item) VALUES (4608, 5169);
-- Fixed By Ari.

