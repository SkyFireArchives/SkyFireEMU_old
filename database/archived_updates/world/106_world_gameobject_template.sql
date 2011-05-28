-- Fix loot di object Angors Coffer

UPDATE gameobject_template SET flags = 4, questItem1 = 62509 WHERE entry = 206388;