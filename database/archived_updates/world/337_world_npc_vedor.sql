-- Aaron "Sandy Toes" Williamson <Reagents> (VENDOR DATA)
DELETE FROM npc_vendor WHERE entry=49410;
INSERT INTO npc_vendor 
(entry, item) VALUES 
(49410, 17030),
(49410, 17020),
(49410, 17034),
(49410, 17032),
(49410, 17031);

-- Aaron "Sandy Toes" Williamson <Reagents>
UPDATE creature_template SET npcflag=npcflag|2048 WHERE entry=49410;

-- Jandunel Reedwind <General Goods> (NPC FLAG)
UPDATE creature_template SET npcflag=npcflag|2048 WHERE entry=43493;