-- Innkeeper Teresa <Innkeeper>
UPDATE creature_template SET 
minlevel=84, maxlevel=84, exp=3, faction_A=12, faction_H=12, npcflag=66177, Health_mod=1.1, ScriptName='npc_innkeeper' WHERE entry=49686;

-- Innkeeper Teresa <Innkeeper> (VENDOR DATA)
DELETE FROM npc_vendor WHERE entry=49686;
INSERT INTO npc_vendor (entry, slot, item, maxcount, incrtime, ExtendedCost) VALUES 
(49686, 0, 58261, 0, 0, 0),
(49686, 0, 58274, 0, 0, 0),
(49686, 0, 58276, 0, 0, 0),
(49686, 0, 58275, 0, 0, 0),
(49686, 0, 58259, 0, 0, 0),
(49686, 0, 58257, 0, 0, 0),
(49686, 0, 58260, 0, 0, 0),
(49686, 0, 58258, 0, 0, 0),
(49686, 0, 58256, 0, 0, 0);
