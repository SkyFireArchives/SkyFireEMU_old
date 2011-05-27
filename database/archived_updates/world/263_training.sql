-- Marsilla Dawnstar Deleted
DELETE FROM creature WHERE guid=55415;

-- Trainer Dummy Template
UPDATE creature_template SET
KillCredit1=44175, 
minlevel=3,
maxlevel=3,
faction_A=7,
faction_H=7,
speed_run=1,
baseattacktime=2000,
unit_flags=131072,
dynamicflags=32
WHERE entry=44937;

-- Update Steady Shoot Quests
UPDATE quest_template SET 
ReqSpellCast1=56641,
WDBVerified=13623
WHERE RequiredSpell=56641;

-- Training Dummy Spawns
DELETE FROM creature WHERE id=44937 AND map=530;
INSERT INTO creature (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation) VALUES 
(44937, 530, 1, 1, 10381.9, -6381.88, 37.7572, 0.974376),
(44937, 530, 1, 1, 10373.2, -6377.88, 37.2, 1.20999),
(44937, 530, 1, 1, 10364.1, -6375.78, 36.9769, 1.193);