DELETE FROM creature_addon WHERE guid=323958;
INSERT INTO creature_addon (guid, path_id) VALUES (323958, 3239580);

UPDATE creature SET currentwaypoint=1, MovementType=2 WHERE guid=323958;

DELETE FROM waypoint_data WHERE id=3239580;
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z) VALUES 
(3239580, 1, -8431.07, 1324.6, 101.787),
(3239580, 2, -8423.52, 1329.9, 102.084),
(3239580, 3, -8415.16, 1332.9, 102.348),
(3239580, 4, -8397.61, 1334.1, 101.999),
(3239580, 5, -8388.20, 1341.3, 102.011),
(3239580, 6, -8397.61, 1334.1, 101.999),
(3239580, 7, -8415.16, 1332.9, 102.348),
(3239580, 8, -8423.52, 1329.9, 102.084),
(3239580, 9, -8431.07, 1324.6, 101.787);