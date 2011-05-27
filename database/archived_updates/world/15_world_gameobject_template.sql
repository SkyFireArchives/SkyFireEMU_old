-- Fixed 5 startup errors related to non existing gameobject entry
-- Leftover Boar Meat
DELETE FROM gameobject_template WHERE entry=201704;
INSERT INTO gameobject_template 
(entry, type, displayId, name, flags, size, questItem1, data0, data1, WDBVerified) VALUES (201704, 3, 114, 'Leftover Boar Meat', 4, 1, 49756, 43, 201704, 13329);
-- Wolf-Hide Cloaks
DELETE FROM gameobject_template WHERE entry=201705;
INSERT INTO gameobject_template 
(entry, type, displayId, name, flags, size, questItem1, data0, data1, WDBVerified) VALUES (201705, 3, 286, 'Wolf-Hide Cloaks', 4, 1, 49755, 43, 201705, 13329);
-- Bear's Paw
DELETE FROM gameobject_template WHERE entry=194100;
INSERT INTO gameobject_template 
(entry, type, displayId, name, flags, size, questItem1, data0, data1, WDBVerified) VALUES (194100, 3, 7816, 'Bear\'s Paw', 4, 1, 44850, 43, 194100, 13329);
-- Floating Greymist Debris
DELETE FROM gameobject_template WHERE entry=195080;
INSERT INTO gameobject_template 
(entry, type, displayId, name, flags, size, questItem1, data0, data1, WDBVerified) VALUES (195080, 3, 6682, 'Floating Greymist Debris', 4, 1, 46384, 43, 195080, 13329);
-- Beer Barrel
DELETE FROM gameobject_template WHERE entry=201706;
INSERT INTO gameobject_template 
(entry, type, displayId, name, flags, size, questItem1, data0, data1, WDBVerified) VALUES (201706, 3, 32, 'Beer Barrel', 4, 1, 49754, 43, 1201706, 13329);
-- Fixed By Ari.