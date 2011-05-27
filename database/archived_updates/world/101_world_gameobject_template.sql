-- Fix loot gameobject Cache of Shadra

UPDATE gameobject_template SET flags = 4, data3 = 0, questItem1 = 58282, questItem2 = 58281 WHERE entry = 204120;