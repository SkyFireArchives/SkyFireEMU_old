UPDATE `gameobject_template` SET `entry`=207385, `faction`=115, `WDBVerified`=13623 WHERE `entry`=193062;
UPDATE `gameobject_template` SET `WDBVerified`=13623 WHERE `entry` in (186811,186812,193061);
INSERT INTO `gameobject_template` (`entry`,`type`,`displayId`,`name`,`faction`,`size`,`data0`,`data1`,`data2`,`data5`,`data6`,`WDBVerified`) VALUES 
(207388,18,7620,"Refreshment Portal",115,1,3,92823,0,1,1,13623),
(207387,22,7537,"Refreshment Table",0,1.2,92826,50,1,0,0,13623),
(207386,22,7537,"Refreshment Table",0,1.2,92826,50,1,0,0,13623);