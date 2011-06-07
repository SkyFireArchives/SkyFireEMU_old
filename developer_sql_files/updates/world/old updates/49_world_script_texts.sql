DELETE FROM `script_texts` WHERE `entry` BETWEEN (-1603510) AND (-1603502);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`)
VALUES
(4979,-1603502,'Hey, thanks.','NULL','NULL','NULL','NULL','NULL','NULL','NULL','NULL',0,0,0,0, 'Theramore Guard - SAY_QUEST1'),
(4979,-1603503,'...receive 50 percent off deserter undergarments? What is this garbage?','NULL','NULL','NULL','NULL','NULL','NULL','NULL','NULL',0,0,0,0,'Theramore Guard - SAY_QUEST2'),
(4979,-1603504,'...to establish a fund for the purchase of hair gel? I like my hair the way it is, thanks!','NULL','NULL','NULL','NULL','NULL','NULL','NULL','NULL',0,0,0,0,'Theramore Guard - SAY_QUEST3'),
(4979,-1603505,'...the deserters seek a Theramore where citizens will be free to juggle at all hours of the day? What is this nonsense?','NULL','NULL','NULL','NULL','NULL','NULL','NULL','NULL',0,0,0,0,'Theramore Guard - SAY_QUEST4'),
(4979,-1603506,'...to establish the chicken as the official symbol of Theramore?! These guys are nuts!','NULL','NULL','NULL','NULL','NULL','NULL','NULL','NULL',0,0,0,0,'Theramore Guard - SAY_QUEST5'),
(4979,-1603507,'...as a deserter, you\'ll enjoy activities like tethered swimming and dog grooming? How ridiculous!','NULL','NULL','NULL','NULL','NULL','NULL','NULL','NULL',0,0,0,0,'Theramore Guard - SAY_QUEST6'),
(4979,-1603508,'This... this is a joke, right?','NULL','NULL','NULL','NULL','NULL','NULL','NULL','NULL',0,0,0,0,'Theramore Guard - SAY_QUEST7'),
(4979,-1603509,'I\'d never join anything like this. Better keep this, though. It\'ll come in handy in the privy...','NULL','NULL','NULL','NULL','NULL','NULL','NULL','NULL',0,0,0,0,'Theramore Guard - SAY_QUEST8'),
(4979,-1603510,'What a bunch of lunatics! You actually believe this stuff?','NULL','NULL','NULL','NULL','NULL','NULL','NULL','NULL',0,0,0,0,'Theramore Guard - SAY_QUEST9');

-- Quest Smoke Em Out
DELETE FROM `script_texts` WHERE `entry` BETWEEN (-1603539) AND (-1603535);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
   (27570,-1603535,'We\'re all gonna die!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Smoke \'Em Out - Say1'),
   (27570,-1603536,'Gotta get out of here!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Smoke \'Em Out - Say2'),
   (27570,-1603537,'No way I\'m stickin\' around!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Smoke \'Em Out - Say3'),
   (27570,-1603538,'Forget this! I\'m going home!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Smoke \'Em Out - Say4'),
   (27570,-1603539,'I didn\'t sign up for this!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Smoke \'Em Out - Say5');

DELETE FROM `script_texts` WHERE `npc_entry` IN (25828,25248,25827);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(25248,-1571044,'Well...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'npc_hidden_cultist SAY_HIDDEN_CULTIST_1'),
(25828,-1571045,'Finally! This charade is over... Arthas give me strength!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'npc_hidden_cultist SAY_HIDDEN_CULTIST_2'),
(25827,-1571046,'You don''t know who you''re messing with! Death beckons!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'npc_hidden_cultist SAY_HIDDEN_CULTIST_3'),
(25248,-1571047,'I suppose this is it, then? I won''t go down quietly!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'npc_hidden_cultist SAY_HIDDEN_CULTIST_4');
