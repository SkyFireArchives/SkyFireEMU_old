-- Respawn Time 
UPDATE creature SET spawntimesecs=300 WHERE map IN (0,1,530,571) AND id IN (SELECT entry FROM creature_template WHERE rank<=1);         -- normal and elites = 5 mins
UPDATE creature SET spawntimesecs=3600 WHERE map IN (0,1,530,571) AND id IN (SELECT entry FROM creature_template WHERE rank IN (2,4));  -- rare elites and rares = 1 hour
UPDATE creature SET spawntimesecs=43200 WHERE map IN (0,1,530,571) AND id IN (SELECT entry FROM creature_template WHERE rank IN (3,5)); -- bosses = 12 hours
-- Fix By Cmaranec
-- Accepted By Ari