-- Fix Template of wetland npc.

UPDATE creature_template SET minlevel = 24, maxlevel = 25, faction_A = 14, faction_H = 14 WHERE entry = 42043;
UPDATE creature_template SET minlevel = 24, maxlevel = 24, faction_A = 14, faction_H = 14 WHERE entry = 42042;