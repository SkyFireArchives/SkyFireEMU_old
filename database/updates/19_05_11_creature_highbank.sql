-- Highbank Cannon 
UPDATE creature_template SET 
minlevel=84, maxlevel=84, exp=3, faction_A=12, faction_H=12 WHERE entry=49060;

-- Highbank Cannoneer
UPDATE creature_template SET 
minlevel=84, maxlevel=84, exp=3, faction_A=12, faction_H=12 WHERE entry IN (49025, 49344);

-- Highbank Guardsman
UPDATE creature_template SET 
minlevel=84, maxlevel=84, exp=3, faction_A=12, faction_H=12 WHERE entry IN (49342, 49023);

-- Axebite Infantry
UPDATE creature_template SET 
minlevel=84, maxlevel=84, exp=3, faction_A=29, faction_H=29 WHERE entry=49008;

-- Highbank Prison Guard
UPDATE creature_template SET 
minlevel=84, maxlevel=84, exp=3, faction_A=12, faction_H=12 WHERE entry IN (49029, 49343);