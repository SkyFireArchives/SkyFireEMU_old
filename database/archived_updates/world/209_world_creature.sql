-- Fix Db Error Releated To Table Creature Have Non Existing Equipment Id
UPDATE `creature` SET `equipment_id`=0 WHERE `guid` IN
(323450, 323451, 323452, 323453, 323454); 