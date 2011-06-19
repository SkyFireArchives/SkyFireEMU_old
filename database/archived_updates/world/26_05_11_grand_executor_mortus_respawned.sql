-- Grand Executor Mortuus
SET @MortuusGUID=295225;
SET @MortuusID=44615;
DELETE FROM creature WHERE id=@MortuusID;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, curhealth) VALUES 
(@MortuusGUID, 44615, 0, 1, 1, 1383, 1038.63, 54.4005, 3.90954, 387450);
