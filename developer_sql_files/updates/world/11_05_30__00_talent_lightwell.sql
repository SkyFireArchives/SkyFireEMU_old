UPDATE `creature_template` SET `unit_flags`=`unit_flags`|0x00000002|0x00000200, `AIName` = 'EventAI', `ScriptName`='' WHERE `entry` IN (31883,31893,31894,31895,31896,31897);

DELETE FROM `creature_ai_scripts` WHERE `action1_param1` = 59907;
INSERT INTO `creature_ai_scripts` VALUES
(3189701,31897,11,0,100,1,0,0,0,0,11,59907,0,0,0,0,0,0,0,0,0,0,'Lightwell rank 1'),
(3189702,31896,11,0,100,1,0,0,0,0,11,59907,0,0,0,0,0,0,0,0,0,0,'Lightwell rank 2'),
(3189703,31895,11,0,100,1,0,0,0,0,11,59907,0,0,0,0,0,0,0,0,0,0,'Lightwell rank 3'),
(3189704,31894,11,0,100,1,0,0,0,0,11,59907,0,0,0,0,0,0,0,0,0,0,'Lightwell rank 4'),
(3189705,31893,11,0,100,1,0,0,0,0,11,59907,0,0,0,0,0,0,0,0,0,0,'Lightwell rank 5'),
(3189706,31883,11,0,100,1,0,0,0,0,11,59907,0,0,0,0,0,0,0,0,0,0,'Lightwell rank 6');