-- Blackrock Battle Worg (Double Spawn)
DELETE FROM creature WHERE guid=254738;
DELETE FROM creature WHERE guid=252583;
-- Blackrock Battle Worg (Movement)
UPDATE creature SET MovementType=1, spawntimesecs=300, spawndist=5 WHERE id=49871;
-- Fix By Ari.