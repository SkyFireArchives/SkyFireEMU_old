-- Teleport to Deepholm (Potion of Deepholm)
DELETE FROM spell_target_position WHERE id=80256;
INSERT INTO spell_target_position (id, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES 
(80256, 646, 909.795, 502.76, -49.219, 0.21656);

-- Teleport to Deepholm (.tele Deepholm)
DELETE FROM game_tele WHERE id=1631;
INSERT INTO game_tele (id, position_x, position_y, position_z, orientation, map, name) VALUES 
(1631, 909.795, 502.76, -49.219, 0.21656, 646, 'Deepholm');

-- Teleport to Deepholm (Portal to Deepholm)
DELETE FROM spell_target_position WHERE id=84515;
INSERT INTO spell_target_position (id, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES 
(84515, 646, 909.795, 502.76, -49.219, 0.21656);

-- Portal to Deepholm (GameObject Spawn)
DELETE FROM gameobject WHERE id=207689;
INSERT INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES 
(188397, 207689, 0, 1, 1, -8223.48, 451.378, 117.462, 2.79452, 0, 0, 0.98498, 0.172668, 300, 0, 1),
(188399, 207689, 1, 1, 1, 2065.32, -4389.88, 98.0632, 0.38208, 0, 0, 0.18988, 0.981807, 300, 0, 1);
