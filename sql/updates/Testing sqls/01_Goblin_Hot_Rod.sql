-- Goblin Hot Rod Fix. 

DELETE FROM `smart_scripts` WHERE (`entryorguid`=35234 AND `source_type`=0);
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(35234,0,0,1,24,0,100,1,66392,1,0,0,11,66301,2,0,0,0,0,1,0,0,0,0,0,0,0,'Throw back'),(35234,0,1,2,24,0,100,1,66392,1,0,0,11,67041,2,0,0,0,0,2,0,0,0,0,0,0,0,'No item in  inventory'),(35234,0,2,0,31,0,100,1,67041,0,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'more');