-- Richard Maschner <Blacksmithing Supplies>
UPDATE creature_template SET 
minlevel=84, maxlevel=84, exp=3, faction_A=12, faction_H=12, npcflag=4224, Health_mod=1.1 WHERE entry=49726;

-- Richard Maschner <Blacksmithing Supplies> (VENDOR DATA)
DELETE FROM npc_vendor WHERE entry=49726;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(49726, 0, 5956, 0, 0, 0),
(49726, 0, 3857, 0, 0, 0),
(49726, 0, 18567, 0, 0, 0),
(49726, 0, 2901, 0, 0, 0),
(49726, 0, 3466, 0, 0, 0),
(49726, 0, 2880, 0, 0, 0);
