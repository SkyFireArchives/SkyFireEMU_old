-- Table 'gameobject_loot_template' entry xx  (gameobject entry) not exist but used as loot id in DB.

UPDATE gameobject_loot_template SET item = 5169 WHERE entry = 4608 AND item = 5159; -- Wrong item id.
UPDATE gameobject_template SET flags = 4, questItem1 = 33348 WHERE entry = 186591;
UPDATE gameobject_template SET flags = 4, questItem1 = 33385 WHERE entry = 186607;
UPDATE gameobject_template SET flags = 4, questItem1 = 33488 WHERE entry = 186618;
UPDATE gameobject_template SET flags = 4, questItem1 = 33487 WHERE entry = 186619;
UPDATE gameobject_template SET flags = 4, questItem1 = 33541 WHERE entry = 186632;
UPDATE gameobject_template SET flags = 4, questItem1 = 33635 WHERE entry = 186662;
UPDATE gameobject_template SET flags = 4, questItem1 = 33620 WHERE entry = 186679;
UPDATE gameobject_template SET flags = 4, questItem1 = 33794 WHERE entry = 186684;
UPDATE gameobject_template SET flags = 4, questItem1 = 33849 WHERE entry = 186729;
UPDATE gameobject_template SET flags = 4, questItem1 = 33013 WHERE entry = 186733;
UPDATE gameobject_template SET flags = 4, questItem1 = 34031 WHERE entry = 186828;
UPDATE gameobject_template SET flags = 4, questItem1 = 34032 WHERE entry = 186830;
UPDATE gameobject_template SET flags = 4, questItem1 = 34041 WHERE entry = 186832;
UPDATE gameobject_template SET flags = 4, questItem1 = 34069 WHERE entry = 186885;
UPDATE gameobject_template SET flags = 4, questItem1 = 34070 WHERE entry = 186886;
UPDATE gameobject_template SET flags = 4, questItem1 = 34081 WHERE entry = 186912;
UPDATE gameobject_template SET flags = 4, questItem1 = 34102 WHERE entry = 186938;
UPDATE gameobject_template SET flags = 4, questItem1 = 34131 WHERE entry = 186950;
UPDATE gameobject_template SET flags = 4, questItem1 = 34133 WHERE entry = 186954;
UPDATE gameobject_template SET flags = 4, questItem1 = 34134 WHERE entry = 186955;
UPDATE gameobject_template SET flags = 4, questItem1 = 34222 WHERE entry = 187022;
UPDATE gameobject_template SET flags = 4, questItem1 = 34223 WHERE entry = 187023;
UPDATE gameobject_template SET flags = 4, questItem1 = 34224 WHERE entry = 187026;
UPDATE gameobject_template SET flags = 4, questItem1 = 34237 WHERE entry = 187032;
UPDATE gameobject_template SET flags = 4, questItem1 = 34236 WHERE entry = 187033;
UPDATE gameobject_template SET flags = 4, questItem1 = 34246 WHERE entry = 187039;
UPDATE gameobject_template SET flags = 4, questItem1 = 34479 WHERE entry = 187264;
UPDATE gameobject_template SET flags = 4, questItem1 = 34502 WHERE entry = 187333;
UPDATE gameobject_template SET flags = 4, questItem1 = 34597 WHERE entry = 187367;
UPDATE gameobject_template SET flags = 4, questItem1 = 27991 WHERE entry = 187372;
INSERT INTO gameobject_loot_template
VALUES
(186591, 33348, -100, 1, 0, 1, 1),
(186607, 33485, -100, 1, 0, 1, 1),
(186618, 33488, -100, 1, 0, 1, 1),
(186619, 33487, -100, 1, 0, 1, 1),
(186632, 33541, -100, 1, 0, 1, 1),
(186662, 33635, -100, 1, 0, 1, 1),
(186679, 33620, -100, 1, 0, 1, 1),
(186684, 33794, -100, 1, 0, 1, 1),
(186729, 33849, -100, 1, 0, 1, 1),
(186733, 33013, -100, 1, 0, 1, 1),
(186828, 34031, -100, 1, 0, 1, 1),
(186830, 34042, -100, 1, 0, 1, 1),
(186832, 34041, -100, 1, 0, 1, 1),
(186885, 34069, -100, 1, 0, 1, 1),
(186886, 34070, -100, 1, 0, 1, 1),
(186912, 34081, -100, 1, 0, 1, 1),
(186938, 34102, -100, 1, 0, 1, 1),
(186950, 34131, -100, 1, 0, 1, 1),
(186954, 34133, -100, 1, 0, 1, 1),
(186955, 34134, -100, 1, 0, 1, 1),
(187022, 34222, -100, 1, 0, 1, 1),
(187023, 34223, -100, 1, 0, 1, 1),
(187026, 34224, -100, 1, 0, 1, 1),
(187027, 34225, -100, 1, 0, 1, 1),
(187032, 34237, -100, 1, 0, 1, 1),
(187033, 34236, -100, 1, 0, 1, 1),
(187039, 34246, -100, 1, 0, 1, 1),
(187264, 34479, -100, 1, 0, 1, 1),
(187333, 34502, -100, 1, 0, 1, 1),
(187367, 34597, -100, 1, 0, 1, 1),
(187372, 27991, -100, 1, 0, 1, 1),
(187381, 34239, -100, 1, 0, 1, 1);