-- Portal to Vashj'ir (GameObject Spawn)
DELETE FROM gameobject WHERE id=207689;
INSERT INTO gameobject (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES 
(207689, 0, 1, 1, -8223.48, 451.378, 117.462, 2.79452, 0, 0, 0.98498, 0.172668, 300, 0, 1),
(207689, 1, 1, 1, 2065.32, -4389.88, 98.0632, 0.38208, 0, 0, 0.18988, 0.981807, 300, 0, 1);

-- Portal to Vashj'ir (GameObject Data)
DELETE FROM gameobject_template WHERE entry=207691;
INSERT INTO gameobject_template (entry, type, displayId, name, faction) VALUES 
(207691, 22, 10358, 'Portal to Vashj\'ir', 35);	