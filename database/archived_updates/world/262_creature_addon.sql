-- Deleted Bad Addons
DELETE FROM creature_template_addon WHERE entry=49874;
-- Fixed Auras For Blackrock Spys
UPDATE creature_addon SET auras='80676 0' WHERE bytes1=8 AND guid IN (SELECT guid FROM creature WHERE id=49874);
UPDATE creature_addon SET auras='92857 0' WHERE bytes1!=8 AND guid IN (SELECT guid FROM creature WHERE id=49874);
-- Fixed Movement For Blackrock Spys
UPDATE creature SET spawndist=5 WHERE id=49874 AND guid IN (SELECT guid FROM creature_addon WHERE auras='92857 0');
UPDATE creature SET MovementType=1 WHERE id=49874 AND guid IN (SELECT guid FROM creature_addon WHERE auras='92857 0');