-- The Dwarven Spy
UPDATE creature_template SET MovementType=2 WHERE entry=15420;
UPDATE creature SET MovementType=2, spawntimesecs=60 WHERE id=15420;
 
DELETE FROM script_waypoint WHERE entry =15420;
INSERT INTO `script_waypoint` (`entry`,`pointid`,`location_x`,`location_y`,`location_z`,`waittime`,`point_comment`)VALUES
(15420,0,9294.78,-6682.51,22.42,0, 'npc_prospector_anvilward'),
(15420,1,9298.27,-6667.99,22.42,0, 'npc_prospector_anvilward'),
(15420,2,9309.63,-6658.84,22.43,0, 'npc_prospector_anvilward'),
(15420,3,9304.43,-6649.31,26.46,0, 'npc_prospector_anvilward'),
(15420,4,9298.83,-6648,28.61,0, 'npc_prospector_anvilward'),
(15420,5,9291.06,-6653.46,31.83,2500,'npc_prospector_anvilward'),
(15420,6,9289.08,-6660.17,31.85,5000, 'npc_prospector_anvilward'),
(15420,7,9291.06,-6653.46,31.83,0, 'npc_prospector_anvilward');
 
DELETE FROM script_texts WHERE entry IN(-1000209, -1000210);
INSERT INTO script_texts(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, TYPE, LANGUAGE, emote, COMMENT)VALUES
(-1000209, 'Very well. Let\'s see what you have to show me, $N.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0, 'npc_prospector_anvilward'),
(-1000210, 'What manner of trick is this, $R? If you seek to ambush me, I warn you I will not go down quietly!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0, 'npc_prospector_anvilward');
