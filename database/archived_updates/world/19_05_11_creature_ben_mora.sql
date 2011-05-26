-- Ben Mora <Innkeeper>
UPDATE creature_template SET 
minlevel=85, maxlevel=85, exp=3, faction_A=12, faction_H=12, npcflag=66050 WHERE entry=49599;

-- Ben Mora <Innkeeper> (VENDOR DATA)
DELETE FROM npc_vendor WHERE entry=49599;
INSERT INTO npc_vendor (entry, slot, item, maxcount, incrtime, ExtendedCost) VALUES 
(49599, 0, 58261, 0, 0, 0),
(49599, 0, 58274, 0, 0, 0),
(49599, 0, 58275, 0, 0, 0),
(49599, 0, 58257, 0, 0, 0),
(49599, 0, 58269, 0, 0, 0),
(49599, 0, 58260, 0, 0, 0),
(49599, 0, 58268, 0, 0, 0),
(49599, 0, 58256, 0, 0, 0),
(49599, 0, 58280, 0, 0, 0);

