-- Gameobject loot for quest Into Occupied Territory

DELETE FROM gameobject_loot_template WHERE entry IN (181138, 181139, 181140);
INSERT INTO gameobject_loot_template
VALUES
(181138, 22590, -100, 1, 0, 1, 1),
(181139, 22591, -100, 1, 0, 1, 1),
(181140, 22592, -100, 1, 0, 1, 1);