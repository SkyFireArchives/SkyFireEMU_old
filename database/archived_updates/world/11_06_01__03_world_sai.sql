-- Handler Marnlek SAI
SET @ENTRY  := 40204;
SET @GOSSIP := 11345;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,@GOSSIP,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Handler Marnlek - On gossip option 0 select - Close gossip'),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,11,74978,3,0,0,0,0,7,0,0,0,0,0,0,0, 'Handler Marnlek - On gossip option 0 select - Cast Echo Isles: Unlearned Spy Frog Taxi on player'),
(@ENTRY,0,2,3,62,0,100,0,@GOSSIP,1,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Handler Marnlek - On gossip option 1 select - Close gossip'),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,11,75421,3,0,0,0,0,7,0,0,0,0,0,0,0, 'Handler Marnlek - On gossip option 1 select - Cast Echo Isles: Unlearned Troll Recruit Taxi on player'),
(@ENTRY,0,4,5,62,0,100,0,@GOSSIP,2,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Handler Marnlek - On gossip option 2 select - Close gossip'),
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,11,75422,3,0,0,0,0,7,0,0,0,0,0,0,0, 'Handler Marnlek - On gossip option 2 select - Cast Echo Isles: Unlearned Troll Battle Taxi on player');
-- Cleanup gossip
UPDATE `gossip_menu_option` SET `action_script_id`=0 WHERE `menu_id`=@GOSSIP;
DELETE FROM `gossip_scripts` WHERE `id` IN (1134500,1134501,1134502);

-- Gossip Menu insert from sniff
DELETE FROM `gossip_menu` WHERE `entry`=7333 AND `text_id`=8717;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7333,8717);
DELETE FROM `gossip_menu` WHERE `entry`=7334 AND `text_id`=8718;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7334,8718);
DELETE FROM `gossip_menu` WHERE `entry`=7335 AND `text_id`=8719;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7335,8719);
DELETE FROM `gossip_menu` WHERE `entry`=7348 AND `text_id`=8767;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7348,8767);
DELETE FROM `gossip_menu` WHERE `entry`=7420 AND `text_id`=8962;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7420,8962);
DELETE FROM `gossip_menu` WHERE `entry`=7825 AND `text_id`=9574;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7825,9574);
DELETE FROM `gossip_menu` WHERE `entry`=7878 AND `text_id`=9642;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7878,9642);
DELETE FROM `gossip_menu` WHERE `entry`=7893 AND `text_id`=9657;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7893,9657);
DELETE FROM `gossip_menu` WHERE `entry`=7955 AND `text_id`=9771;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7955,9771);
DELETE FROM `gossip_menu` WHERE `entry`=7967 AND `text_id`=9801;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7967,9801);
DELETE FROM `gossip_menu` WHERE `entry`=7967 AND `text_id`=10027;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7967,10027);
DELETE FROM `gossip_menu` WHERE `entry`=8069 AND `text_id`=9969;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (8069,9969);
DELETE FROM `gossip_menu` WHERE `entry`=8085 AND `text_id`=9995;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (8085,9995);
DELETE FROM `gossip_menu` WHERE `entry`=8086 AND `text_id`=9996;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (8086,9996);
DELETE FROM `gossip_menu` WHERE `entry`=8087 AND `text_id`=9997;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (8087,9997);
DELETE FROM `gossip_menu` WHERE `entry`=8089 AND `text_id`=10004;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (8089,10004);
DELETE FROM `gossip_menu` WHERE `entry`=8090 AND `text_id`=10003;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (8090,10003);
DELETE FROM `gossip_menu` WHERE `entry`=8091 AND `text_id`=10005;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (8091,10005);
DELETE FROM `gossip_menu` WHERE `entry`=8269 AND `text_id`=10293;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (8269,10293);
DELETE FROM `gossip_menu` WHERE `entry`=8272 AND `text_id`=10301;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (8272,10301);
DELETE FROM `gossip_menu` WHERE `entry`=8274 AND `text_id`=10306;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (8274,10306);
DELETE FROM `gossip_menu` WHERE `entry`=8495 AND `text_id`=10610;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (8495,10610);
DELETE FROM `gossip_menu` WHERE `entry`=8505 AND `text_id`=10636;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (8505,10636);

-- Creature Gossip_menu_id Update from sniff
UPDATE `creature_template` SET `gossip_menu_id`=6944 WHERE `entry`=19558;
UPDATE `creature_template` SET `gossip_menu_id`=7333 WHERE `entry`=16584;
UPDATE `creature_template` SET `gossip_menu_id`=7334 WHERE `entry`=16574;
UPDATE `creature_template` SET `gossip_menu_id`=7335 WHERE `entry`=16576;
UPDATE `creature_template` SET `gossip_menu_id`=7348 WHERE `entry`=16858;
UPDATE `creature_template` SET `gossip_menu_id`=7420 WHERE `entry`=17493;
UPDATE `creature_template` SET `gossip_menu_id`=7691 WHERE `entry`=18748;
UPDATE `creature_template` SET `gossip_menu_id`=7810 WHERE `entry`=16588;
UPDATE `creature_template` SET `gossip_menu_id`=7816 WHERE `entry`=18754;
UPDATE `creature_template` SET `gossip_menu_id`=7825 WHERE `entry`=17558;
UPDATE `creature_template` SET `gossip_menu_id`=7878 WHERE `entry`=16915;
UPDATE `creature_template` SET `gossip_menu_id`=7893 WHERE `entry`=18267;
UPDATE `creature_template` SET `gossip_menu_id`=7955 WHERE `entry`=19273;
UPDATE `creature_template` SET `gossip_menu_id`=7957 WHERE `entry`=19315;
UPDATE `creature_template` SET `gossip_menu_id`=7960 WHERE `entry`=19344;
UPDATE `creature_template` SET `gossip_menu_id`=7965 WHERE `entry`=19367;
UPDATE `creature_template` SET `gossip_menu_id`=7967 WHERE `entry`=19401;
UPDATE `creature_template` SET `gossip_menu_id`=8069 WHERE `entry`=19254;
UPDATE `creature_template` SET `gossip_menu_id`=8085 WHERE `entry`=3230;
UPDATE `creature_template` SET `gossip_menu_id`=8086 WHERE `entry`=19253;
UPDATE `creature_template` SET `gossip_menu_id`=8087 WHERE `entry`=19255;
UPDATE `creature_template` SET `gossip_menu_id`=8091 WHERE `entry`=19256;
UPDATE `creature_template` SET `gossip_menu_id`=8269 WHERE `entry`=21257;
UPDATE `creature_template` SET `gossip_menu_id`=8272 WHERE `entry`=21279;
UPDATE `creature_template` SET `gossip_menu_id`=8274 WHERE `entry`=21283;
UPDATE `creature_template` SET `gossip_menu_id`=8495 WHERE `entry`=22107;
UPDATE `creature_template` SET `gossip_menu_id`=8505 WHERE `entry`=22231;

-- Creature Gossip_menu_option Update from sniff
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (7938,7842,7450,7957,7967,7893,8085,8090,6944,7810,7691,6647) AND `id` IN (0);
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (7938,7816,7967,7810,6647) AND `id` IN (1);
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (7967) AND `id` IN (4,5);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`action_script_id`,`box_coded`,`box_money`,`box_text`) VALUES
(7938,0,2, 'Show me where I can fly.',4,8192,0,0,0,0,0, ''),
(7938,1,2, 'Send me to Thrallmar!',4,8192,0,0,0,0,0, ''),
(7842,0,3, 'Train me.',5,16,0,0,0,0,0, ''),
(7816,1,1, 'Let me browse your goods.',3,128,0,0,0,0,0, ''),
(7450,0,1, 'Show me what I''ve earned the right to purchase.',3,128,0,0,0,0,0, ''),
(7957,0,1, 'What do you have for sale?',3,128,0,0,0,0,0, ''),
(7967,4,0, 'Lend me a Windrider.  I''m going to Spinebreaker Post!',1,1,0,0,0,0,0, ''),
(7967,5,0, 'I''m on a bombing mission for Forward Commander To''arch.  I need a wyvern destroyer!',1,1,0,0,0,0,0, ''),
(7967,0,0, 'Send me to the Abyssal Shelf!',1,1,0,0,0,0,0, ''),
(7967,1,0, 'Send me to the Abyssal Shelf!',1,1,0,0,0,0,0, ''),
(7893,0,1, 'I have marks to redeem!',3,128,0,0,0,0,0, ''),
(8085,0,0, 'Tell me more of our mission here, Nazgrel.',1,1,8090,0,0,0,0, ''),
(8090,0,0, '<Keep Listening>',1,1,8089,0,0,0,0, ''),
(6944,0,2, 'Show me where I can fly.',4,8192,0,0,0,0,0, ''),
(7810,0,3, 'I would like to train.',5,16,0,0,0,0,0, ''),
(7810,1,1, 'Let me browse your goods.',3,128,0,0,0,0,0, ''),
(7691,0,3, 'Train me.',5,16,6647,0,0,0,0, ''),
(6647,0,3, 'I would like to train further in the ways of the Light.',5,16,7938,0,0,0,0, ''),
(6647,1,0, 'I wish to unlearn my talents.',16,16,0,0,0,0,0, '');

-- Gossip Menu insert from sniff
DELETE FROM `gossip_menu` WHERE `entry`=7348 AND `text_id`=9619;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7348,9619);
DELETE FROM `gossip_menu` WHERE `entry`=8524 AND `text_id`=10659;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (8524,10659);
DELETE FROM `gossip_menu` WHERE `entry`=8510 AND `text_id`=10643;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (8510,10643);
DELETE FROM `gossip_menu` WHERE `entry`=7375 AND `text_id`=8813;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7375,8813);
DELETE FROM `gossip_menu` WHERE `entry`=7372 AND `text_id`=8810;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7372,8810);
DELETE FROM `gossip_menu` WHERE `entry`=7373 AND `text_id`=8811;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7373,8811);
DELETE FROM `gossip_menu` WHERE `entry`=12594 AND `text_id`=17713;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (12594,17713);
DELETE FROM `gossip_menu` WHERE `entry`=7342 AND `text_id`=8751;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7342,8751);
DELETE FROM `gossip_menu` WHERE `entry`=7345 AND `text_id`=8756;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7345,8756);
DELETE FROM `gossip_menu` WHERE `entry`=7881 AND `text_id`=9644;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7881,9644);
DELETE FROM `gossip_menu` WHERE `entry`=7312 AND `text_id`=8680;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7312,8680);
DELETE FROM `gossip_menu` WHERE `entry`=7317 AND `text_id`=8685;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7317,8685);
DELETE FROM `gossip_menu` WHERE `entry`=7189 AND `text_id`=8469;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7189,8469);
DELETE FROM `gossip_menu` WHERE `entry`=7880 AND `text_id`=9643;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7880,9643);
DELETE FROM `gossip_menu` WHERE `entry`=7963 AND `text_id`=9788;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7963,9788);
DELETE FROM `gossip_menu` WHERE `entry`=8081 AND `text_id`=9988;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (8081,9988);

-- Creature Gossip_menu_id Update from sniff
UPDATE `creature_template` SET `gossip_menu_id`=8524 WHERE `entry`=22258;
UPDATE `creature_template` SET `gossip_menu_id`=7375 WHERE `entry`=16845;
UPDATE `creature_template` SET `gossip_menu_id`=7372 WHERE `entry`=17123;
UPDATE `creature_template` SET `gossip_menu_id`=7373 WHERE `entry`=16848;
UPDATE `creature_template` SET `gossip_menu_id`=7342 WHERE `entry`=17015;
UPDATE `creature_template` SET `gossip_menu_id`=7345 WHERE `entry`=17046;
UPDATE `creature_template` SET `gossip_menu_id`=7881 WHERE `entry`=18997;
UPDATE `creature_template` SET `gossip_menu_id`=7312 WHERE `entry`=16792;
UPDATE `creature_template` SET `gossip_menu_id`=7317 WHERE `entry`=16794;
UPDATE `creature_template` SET `gossip_menu_id`=7288 WHERE `entry`=18905;
UPDATE `creature_template` SET `gossip_menu_id`=7880 WHERE `entry`=17277;
UPDATE `creature_template` SET `gossip_menu_id`=8081 WHERE `entry`=20159;

-- Creature Gossip_menu_option Update from sniff
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (8510,7881,7880,7964,8081) AND `id` IN (0);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`action_script_id`,`box_coded`,`box_money`,`box_text`) VALUES
(8510,0,0, 'Yes, Scryer.  You may possess me.',1,1,0,0,0,0,0, ''),
(7881,0,1, 'I want to browse your goods.',3,128,0,0,0,0,0, ''),
(7880,0,1, 'I want to browse your goods.',3,128,0,0,0,0,0, ''),
(7964,0,0, 'Why don''t you escape?',1,1,7963,0,0,0,0, ''),
(8081,0,0, 'Magistrix Carinda has sent me to ask you about Arelion''s secret.  Who was he seeing?',1,1,0,0,0,0,0, ''); -- http://old.wowhead.com/quest=10286 needs scripting http://old.wowhead.com/npc=20159

-- NPC talk text insert from sniff for http://old.wowhead.com/quest=10286
DELETE FROM `creature_text` WHERE `entry` IN (20159) AND `groupid` IN (0,1);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(20159,0,0, 'If you think I''ll betray my friend that easily, think again!  Face me, you scoundrel!',12,1,100,0,0,0, 'Magister Aledis'),
(20159,1,0, 'Spare my life!  I will tell you about Arelion''s secret.',12,1,100,0,0,0, 'Magister Aledis');

-- Gossip Menu insert from sniff
DELETE FROM `gossip_menu` WHERE `entry`=7953 AND `text_id`=10109;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7953,10109);

-- SAI for Wing Commamder Brack
SET @ENTRY := 19401;
UPDATE `creature_template` SET `ScriptName`='',`AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,62,0,100,0,7967,0,0,0,11,33825,2,0,0,0,0,7,0,0,0,0,0,0,0, 'Wing Commamder Brack - On gossip option 0 select - Cast Aerial Assault Flight (Horde)'),
(@ENTRY,0,1,0,62,0,100,0,7967,1,0,0,11,33825,2,0,0,0,0,7,0,0,0,0,0,0,0, 'Wing Commamder Brack - On gossip option 1 select - Cast Aerial Assault Flight (Horde)'),
(@ENTRY,0,2,0,62,0,100,0,7967,4,0,0,11,34578,2,0,0,0,0,7,0,0,0,0,0,0,0, 'Wing Commamder Brack - On gossip option 4 select - Cast Taxi - Reaver''s Fall to Spinebreaker Ridge'),
(@ENTRY,0,3,0,62,0,100,0,7967,5,0,0,11,33659,2,0,0,0,0,7,0,0,0,0,0,0,0, 'Wing Commamder Brack - On gossip option 5 select - Cast Gateways Murket and Shaadraz');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=7967;
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,7967,0,0,9,10162,0,0,0,'','Show gossip option 0 if player has Quest 10162 "Mission: The Abyssal Shelf"'),
(15,7967,1,0,9,10347,0,0,0,'','Show gossip option 1 if player has Quest 10347 "Return to the Abyssal Shelf"'),
(15,7967,4,0,9,10242,0,0,0,'','Show gossip option 4 if player has Quest 10242 "Spinebreaker Post"'),
(15,7967,5,0,9,10129,0,0,0,'','Show gossip option 5 if player has Quest 10129 "Mission: Gateways Murketh and Shaadraz"'),
(15,8081,0,0,9,10286,0,0,0,'','Show gossip option 0 if player has Quest 10286 "Arelion''s Secret"'),
(15,7938,1,0,9,10289,0,0,0,'','Show gossip option 0 if player has Quest 10289 "Journey to Thrallmar"');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup`=7953;
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,7953,10109,0,8,10162,0,0,0,'','Show gossip text 10109 if player has rewarded Quest 10349 "The Earthbinder"');

-- SAI for Vlagga Freyfeather <Wind Rider Master>
SET @ENTRY := 18930;
UPDATE `creature_template` SET `ScriptName`='',`AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,62,0,100,0,7938,1,0,0,11,34924,2,0,0,0,0,7,0,0,0,0,0,0,0, 'Vlagga Freyfeather - On gossip option 1 select - Cast Stair of Destiny to Thrallmar');

-- SAI for Marcella Bloom
SET @ENTRY := 32421;
UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=5717.51,`position_y`=688.2948,`position_z`=645.7512 WHERE `guid`=111385;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY; 
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,53,0,@ENTRY,1,0,0,0,1,0,0,0,0,0,0,0, 'Marcella Bloom - On spawn - Start WP movement'),
(@ENTRY,0,1,0,40,0,100,0,1,@ENTRY,0,0,54,6000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Marcella Bloom - Reach wp 1 - pause path'),
(@ENTRY,0,2,0,40,0,100,0,6,@ENTRY,0,0,54,6000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Marcella Bloom - Reach wp 6 - pause path'),
(@ENTRY,0,3,4,40,0,100,0,11,@ENTRY,0,0,54,6000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Marcella Bloom - Reach wp 11 - pause path'),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,3.577925, 'Marcella Bloom - Reach wp 11 - turm to'),
(@ENTRY,0,5,0,40,0,100,0,19,@ENTRY,0,0,54,6000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Marcella Bloom - Reach wp 19 - pause path'),
(@ENTRY,0,6,7,40,0,100,0,23,@ENTRY,0,0,54,6000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Marcella Bloom - Reach wp 23 - pause path'),
(@ENTRY,0,7,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,1.710423, 'Marcella Bloom - Reach wp 23 - turm to'),
(@ENTRY,0,8,0,40,0,100,0,28,@ENTRY,0,0,54,6000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Marcella Bloom - Reach wp 28 - pause path'),
(@ENTRY,0,9,10,40,0,100,0,29,@ENTRY,0,0,54,6000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Marcella Bloom - Reach wp 29 - pause path'),
(@ENTRY,0,10,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,5.689773, 'Marcella Bloom - Reach wp 29 - turm to');
-- Waypoints for Marcella Bloom from sniff
DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,5716.89,687.1589,645.7512, 'Marcella Bloom'),
(@ENTRY,2,5718.788,687.6731,645.7512, 'Marcella Bloom'),
(@ENTRY,3,5720.209,685.3612,645.7512, 'Marcella Bloom'),
(@ENTRY,4,5719.699,682.4218,645.7512, 'Marcella Bloom'),
(@ENTRY,5,5717.591,679.3567,645.7512, 'Marcella Bloom'),
(@ENTRY,6,5720.298,678.0955,646.5342, 'Marcella Bloom'),
(@ENTRY,7,5718.915,679.5812,645.7512, 'Marcella Bloom'),
(@ENTRY,8,5719.611,681.8755,645.7512, 'Marcella Bloom'),
(@ENTRY,9,5722.21,685.3296,645.7512, 'Marcella Bloom'),
(@ENTRY,10,5724.167,689.1262,645.7512, 'Marcella Bloom'),
(@ENTRY,11,5721.995,691.3812,645.7512, 'Marcella Bloom'),
(@ENTRY,12,5722.081,690.9567,645.7512, 'Marcella Bloom'),
(@ENTRY,13,5723.241,689.3571,645.7512, 'Marcella Bloom'),
(@ENTRY,14,5722.383,687.1551,645.7512, 'Marcella Bloom'),
(@ENTRY,15,5720.378,686.7902,645.7512, 'Marcella Bloom'),
(@ENTRY,16,5718.554,688.1351,645.7512, 'Marcella Bloom'),
(@ENTRY,17,5716.704,689.7863,645.7512, 'Marcella Bloom'),
(@ENTRY,18,5714.546,691.0844,645.7512, 'Marcella Bloom'),
(@ENTRY,19,5712.564,690.2685,645.7512, 'Marcella Bloom'),
(@ENTRY,20,5712.319,692.1107,645.7512, 'Marcella Bloom'),
(@ENTRY,21,5710.912,694.2338,645.7512, 'Marcella Bloom'),
(@ENTRY,22,5707.329,693.1917,645.7512, 'Marcella Bloom'),
(@ENTRY,23,5705.615,695.2361,645.7512, 'Marcella Bloom'),
(@ENTRY,24,5706.731,693.772,645.7512, 'Marcella Bloom'),
(@ENTRY,25,5708.21,694.3374,645.7512, 'Marcella Bloom'),
(@ENTRY,26,5709.226,695.5887,645.7512, 'Marcella Bloom'),
(@ENTRY,27,5711.422,696.0734,645.7512, 'Marcella Bloom'),
(@ENTRY,28,5713.526,695.2763,645.7512, 'Marcella Bloom'),
(@ENTRY,29,5713.636,691.7002,645.7512, 'Marcella Bloom'),
(@ENTRY,30,5716.311,690.1725,645.7512, 'Marcella Bloom'),
(@ENTRY,31,5717.51,688.2948,645.7512, 'Marcella Bloom');

-- SAI for Inzi Charmlight
SET @ENTRY := 28682;
UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=5715.564,`position_y`=678.4122,`position_z`=645.7512 WHERE `guid`=97343;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY; 
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,53,0,@ENTRY,1,0,0,0,1,0,0,0,0,0,0,0, 'Marcella Bloom - On spawn - Start WP movement'),
(@ENTRY,0,1,0,40,0,100,0,6,@ENTRY,0,0,54,6000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Marcella Bloom - Reach wp 6 - pause path'),
(@ENTRY,0,2,0,40,0,100,0,18,@ENTRY,0,0,54,6000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Marcella Bloom - Reach wp 18 - pause path'),
(@ENTRY,0,3,4,40,0,100,0,21,@ENTRY,0,0,54,6000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Marcella Bloom - Reach wp 21 - pause path'),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,2.426008, 'Marcella Bloom - Reach wp 21 - turm to'),
(@ENTRY,0,5,0,40,0,100,0,22,@ENTRY,0,0,54,6000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Marcella Bloom - Reach wp 22 - pause path'),
(@ENTRY,0,6,0,40,0,100,0,27,@ENTRY,0,0,54,6000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Marcella Bloom - Reach wp 27 - pause path');
-- Waypoints for Inzi Charmlight from sniff
DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,5719.897,682.5544,645.7512, 'Inzi Charmlight'),
(@ENTRY,2,5719.891,686.0665,645.7512, 'Inzi Charmlight'),
(@ENTRY,3,5717.111,689.0646,645.7512, 'Inzi Charmlight'),
(@ENTRY,4,5711.454,694.7701,645.7512, 'Inzi Charmlight'),
(@ENTRY,5,5711.846,699.7839,645.7512, 'Inzi Charmlight'),
(@ENTRY,6,5709.633,700.0297,645.7512, 'Inzi Charmlight'),
(@ENTRY,7,5711.143,699.2699,645.7512, 'Inzi Charmlight'),
(@ENTRY,8,5712.436,694.9948,645.7512, 'Inzi Charmlight'),
(@ENTRY,9,5714.122,692.908,645.7512, 'Inzi Charmlight'),
(@ENTRY,10,5716.777,690.9016,645.7512, 'Inzi Charmlight'),
(@ENTRY,11,5718.896,688.1526,645.7512, 'Inzi Charmlight'),
(@ENTRY,12,5720.531,686.9282,645.7512, 'Inzi Charmlight'),
(@ENTRY,13,5722.85,687.8686,645.7512, 'Inzi Charmlight'),
(@ENTRY,14,5726.107,690.4207,645.7512, 'Inzi Charmlight'),
(@ENTRY,15,5727.03,694.2952,645.7512, 'Inzi Charmlight'),
(@ENTRY,16,5711.432,707.4515,653.6919, 'Inzi Charmlight'),
(@ENTRY,17,5708.918,708.4698,653.7011, 'Inzi Charmlight'),
(@ENTRY,18,5708.552,708.3618,653.7029, 'Inzi Charmlight'),
(@ENTRY,19,5709.459,706.2948,653.7265, 'Inzi Charmlight'),
(@ENTRY,20,5707.508,704.3312,653.7484, 'Inzi Charmlight'),
(@ENTRY,21,5705.197,703.1964,653.7423, 'Inzi Charmlight'),
(@ENTRY,22,5702.96,703.35,653.7493, 'Inzi Charmlight'),
(@ENTRY,23,5703.561,701.5987,653.7566, 'Inzi Charmlight'),
(@ENTRY,24,5703,699.5547,653.7488, 'Inzi Charmlight'),
(@ENTRY,25,5700.375,698.8538,653.7443, 'Inzi Charmlight'),
(@ENTRY,26,5697.52,698.8721,653.7496, 'Inzi Charmlight'),
(@ENTRY,27,5697.274,696.8895,653.7393, 'Inzi Charmlight'),
(@ENTRY,28,5697.476,697.3153,653.7394, 'Inzi Charmlight'),
(@ENTRY,29,5699.13,698.1936,653.7425, 'Inzi Charmlight'),
(@ENTRY,30,5700.803,696.9131,653.7471, 'Inzi Charmlight'),
(@ENTRY,31,5700.124,694.2091,653.7356, 'Inzi Charmlight'),
(@ENTRY,32,5698.897,690.7084,653.7178, 'Inzi Charmlight'),
(@ENTRY,33,5715.564,678.4122,645.7512, 'Inzi Charmlight');

-- SAI for Katherine Lee
SET @ENTRY := 28705;
UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=5707.611,`position_y`=715.5347,`position_z`=642.4725 WHERE `guid`=98952;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY; 
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,53,0,@ENTRY,1,0,0,0,1,0,0,0,0,0,0,0, 'Katherine Lee - On spawn - Start WP movement'),
(@ENTRY,0,1,2,40,0,100,0,5,@ENTRY,0,0,54,6000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Katherine Lee - Reach wp 5 - pause path'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0.8377581, 'Katherine Lee - Reach wp 5 - turm to'),
(@ENTRY,0,3,4,40,0,100,0,10,@ENTRY,0,0,54,6000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Katherine Lee - Reach wp 10 - pause path'),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,2.408554, 'Katherine Lee - Reach wp 10 - turm to');
-- Waypoints for Katherine Lee from sniff
DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,5708.027,715.2877,642.4726, 'Katherine Lee'),
(@ENTRY,2,5707.466,713.4067,642.4758, 'Katherine Lee'),
(@ENTRY,3,5705.038,713.5079,642.4757, 'Katherine Lee'),
(@ENTRY,4,5702.446,715.9288,642.4717, 'Katherine Lee'),
(@ENTRY,5,5700.928,718.1786,642.4681, 'Katherine Lee'),
(@ENTRY,6,5702.446,715.9288,642.4717, 'Katherine Lee'),
(@ENTRY,7,5705.038,713.5079,642.4757, 'Katherine Lee'),
(@ENTRY,8,5707.466,713.4067,642.4758, 'Katherine Lee'),
(@ENTRY,9,5708.027,715.2877,642.4726, 'Katherine Lee'),
(@ENTRY,10,5707.611,715.5347,642.4725, 'Katherine Lee');

-- SAI for Laire Brewgold
SET @ENTRY := 32424;
UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=5639.154,`position_y`=728.4048,`position_z`=641.61 WHERE `guid`=111730;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY; 
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,53,0,@ENTRY,1,0,0,0,1,0,0,0,0,0,0,0, 'Laire Brewgold - On spawn - Start WP movement'),
(@ENTRY,0,1,2,40,0,100,0,1,@ENTRY,0,0,54,6000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Laire Brewgold - Reach wp 1 - pause path'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0.8377581, 'Laire Brewgold - Reach wp 1 - turm to'),
(@ENTRY,0,3,4,40,0,100,0,2,@ENTRY,0,0,54,6000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Laire Brewgold - Reach wp 2 - pause path'),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0.122173, 'Laire Brewgold - Reach wp 2 - turm to'),
(@ENTRY,0,5,6,40,0,100,0,10,@ENTRY,0,0,54,6000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Laire Brewgold - Reach wp 10 - pause path'),
(@ENTRY,0,6,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,2.583087, 'Laire Brewgold - Reach wp 10 - turm to');
-- Waypoints for Laire Brewgold from sniff
DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,5635.932,732.4274,641.7092, 'Laire Brewgold'),
(@ENTRY,2,5633.13,729.802,641.7224, 'Laire Brewgold'),
(@ENTRY,3,5632.857,730.7568,641.7197, 'Laire Brewgold'),
(@ENTRY,4,5638.495,728.9272,641.6107, 'Laire Brewgold'),
(@ENTRY,5,5642.401,730.9983,641.6825, 'Laire Brewgold'),
(@ENTRY,6,5645.889,733.0624,641.682, 'Laire Brewgold'),
(@ENTRY,7,5655.076,730.4822,641.6819, 'Laire Brewgold'),
(@ENTRY,8,5661.111,726.7043,641.6643, 'Laire Brewgold'),
(@ENTRY,9,5663.163,728.8862,641.6496, 'Laire Brewgold'),
(@ENTRY,10,5661.848,731.7643,641.6437, 'Laire Brewgold'),
(@ENTRY,11,5661.233,732.0867,641.6819, 'Laire Brewgold'),
(@ENTRY,12,5661.178,729.5889,641.6537, 'Laire Brewgold'),
(@ENTRY,13,5659.352,724.879,641.6767, 'Laire Brewgold'),
(@ENTRY,14,5656.774,721.9439,641.6959, 'Laire Brewgold'),
(@ENTRY,15,5653.122,721.5146,641.6296, 'Laire Brewgold'),
(@ENTRY,16,5649.408,722.6322,641.5455, 'Laire Brewgold'),
(@ENTRY,17,5645.466,725.3781,641.6395, 'Laire Brewgold'),
(@ENTRY,18,5639.154,728.4048,641.61, 'Laire Brewgold');

-- SAI for Coira Longrifle
SET @ENTRY := 32426;
UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=5644.824,`position_y`=730.5149,`position_z`=641.6822 WHERE `guid`=111940;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY; 
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,53,0,@ENTRY,1,0,0,0,1,0,0,0,0,0,0,0, 'Coira Longrifle - On spawn - Start WP movement'),
(@ENTRY,0,1,2,40,0,100,0,5,@ENTRY,0,0,54,6000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Coira Longrifle - Reach wp 5 - pause path'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,2.740167, 'Coira Longrifle - Reach wp 5 - turm to'),
(@ENTRY,0,3,4,40,0,100,0,14,@ENTRY,0,0,54,6000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Coira Longrifle - Reach wp 14 - pause path'),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,3.996804, 'Coira Longrifle - Reach wp 14 - turm to'),
(@ENTRY,0,5,6,40,0,100,0,20,@ENTRY,0,0,54,6000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Coira Longrifle - Reach wp 20 - pause path'),
(@ENTRY,0,6,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,5.864306, 'Coira Longrifle - Reach wp 20 - turm to');
-- Waypoints for Coira Longrifle from sniff
DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,5643.844,727.0675,641.6488, 'Coira Longrifle'),
(@ENTRY,2,5650.929,722.0482,641.5745, 'Coira Longrifle'),
(@ENTRY,3,5656.711,719.6259,641.5991, 'Coira Longrifle'),
(@ENTRY,4,5658.714,721.329,641.6793, 'Coira Longrifle'),
(@ENTRY,5,5658.198,724.0913,641.6834, 'Coira Longrifle'),
(@ENTRY,6,5658.953,723.9452,641.6814, 'Coira Longrifle'),
(@ENTRY,7,5661.61,728.0839,641.6577, 'Coira Longrifle'),
(@ENTRY,8,5664.91,733.9921,641.6255, 'Coira Longrifle'),
(@ENTRY,9,5663.366,736.1543,641.5908, 'Coira Longrifle'),
(@ENTRY,10,5660.653,736.6083,641.6053, 'Coira Longrifle'),
(@ENTRY,11,5659.226,737.1793,641.6076, 'Coira Longrifle'),
(@ENTRY,12,5656.145,740.5176,641.5779, 'Coira Longrifle'),
(@ENTRY,13,5652.403,743.0245,641.5914, 'Coira Longrifle'),
(@ENTRY,14,5648.907,746.6327,641.6072, 'Coira Longrifle'),
(@ENTRY,15,5648.699,746.1017,641.6102, 'Coira Longrifle'),
(@ENTRY,16,5648.634,743.4974,641.6179, 'Coira Longrifle'),
(@ENTRY,17,5647.743,739.7487,641.6585, 'Coira Longrifle'),
(@ENTRY,18,5645.861,735.217,641.6819, 'Coira Longrifle'),
(@ENTRY,19,5644.097,732.8497,641.6823, 'Coira Longrifle'),
(@ENTRY,20,5645.18,730.3257,641.6822, 'Coira Longrifle'),
(@ENTRY,21,5644.824,730.5149,641.6822, 'Coira Longrifle');

-- Handler Marnlek SAI
SET @ENTRY  := 40204;
SET @GOSSIP := 11345;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,@GOSSIP,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Handler Marnlek - On gossip option 0 select - Close gossip'),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,11,74978,3,0,0,0,0,7,0,0,0,0,0,0,0, 'Handler Marnlek - On gossip option 0 select - Cast Echo Isles: Unlearned Spy Frog Taxi on player'),
(@ENTRY,0,2,3,62,0,100,0,@GOSSIP,1,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Handler Marnlek - On gossip option 1 select - Close gossip'),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,11,75421,3,0,0,0,0,7,0,0,0,0,0,0,0, 'Handler Marnlek - On gossip option 1 select - Cast Echo Isles: Unlearned Troll Recruit Taxi on player'),
(@ENTRY,0,4,5,62,0,100,0,@GOSSIP,2,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Handler Marnlek - On gossip option 2 select - Close gossip'),
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,11,75422,3,0,0,0,0,7,0,0,0,0,0,0,0, 'Handler Marnlek - On gossip option 2 select - Cast Echo Isles: Unlearned Troll Battle Taxi on player');
-- Cleanup gossip
UPDATE `gossip_menu_option` SET `action_script_id`=0 WHERE `menu_id`=@GOSSIP;
DELETE FROM `gossip_scripts` WHERE `id` IN (1134500,1134501,1134502);

-- Quest 12321 "A Righteous Sermon"
-- SAI for Inquisitor Hallard 
SET @ENTRY := 27316;
UPDATE `creature_template` SET `AIName`= 'SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY; 
UPDATE `creature` SET `position_x`=3797.918,`position_y`=-677.4138,`position_z`=213.7526 WHERE id=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid` IN (@ENTRY*100); 
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
-- AI
(@ENTRY,0,0,0,25,0,100,0,0,0,0,0,53,0,@ENTRY,1,0,0,0,1,0,0,0,0,0,0,0, 'Inquisitor Hallard - on reset - load path 0'),
(@ENTRY,0,1,0,19,0,100,0,12321,0,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Inquisitor Hallard - on quest accept 12321 - run script'),
-- Script
(@ENTRY*100,9,0,0,0,0,100,0,1000,1000,0,0,54,180000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Inquisitor Hallard - script - pause path'),
(@ENTRY*100,9,1,0,0,0,100,0,100,100,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Inquisitor Hallard - script - Turn off Questgiver flag'),
(@ENTRY*100,9,2,0,0,0,100,0,100,100,0,0,69,0,0,0,0,0,0,1,0,0,0,3801.585,-678.4510,213.7526,0, 'Inquisitor Hallard - Script - Move to'),
(@ENTRY*100,9,3,0,0,0,100,0,1500,1500,0,0,69,0,0,0,0,0,0,1,0,0,0,3800.602,-680.9520,213.5028,0, 'Inquisitor Hallard - Script - Move to'),
(@ENTRY*100,9,4,0,0,0,100,0,4000,4000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Inquisitor Hallard - script - Say text 0'),
(@ENTRY*100,9,5,0,0,0,100,0,6000,6000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Inquisitor Hallard - script - Say text 1'),
(@ENTRY*100,9,6,0,0,0,100,0,8000,8000,0,0,1,0,0,0,0,0,0,9,27577,0,30,0,0,0,0, 'Inquisitor Hallard - script - Mayor Godfrey Say text 0'),
(@ENTRY*100,9,7,0,0,0,100,0,3000,3000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Inquisitor Hallard - script - Say text 2'),
(@ENTRY*100,9,8,0,0,0,100,0,7000,7000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Inquisitor Hallard - script - Say text 3'),
(@ENTRY*100,9,9,0,0,0,100,0,3000,3000,0,0,1,1,0,0,0,0,0,9,27577,0,30,0,0,0,0, 'Inquisitor Hallard - script - Mayor Godfrey Say text 1'),
(@ENTRY*100,9,10,0,0,0,100,0,4000,4000,0,0,1,2,0,0,0,0,0,9,27577,0,30,0,0,0,0, 'Inquisitor Hallard - script - Mayor Godfrey Say text 2'),
(@ENTRY*100,9,11,0,0,0,100,0,4000,4000,0,0,1,3,0,0,0,0,0,9,27577,0,30,0,0,0,0, 'Inquisitor Hallard - script - Mayor Godfrey Say text 3'),
(@ENTRY*100,9,12,0,0,0,100,0,7000,7000,0,0,1,4,0,0,0,0,0,9,27577,0,30,0,0,0,0, 'Inquisitor Hallard - script - Mayor Godfrey Say text 4'),
(@ENTRY*100,9,13,0,0,0,100,0,7000,7000,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Inquisitor Hallard - script - Say text 4'),
(@ENTRY*100,9,14,0,0,0,100,0,5000,5000,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Inquisitor Hallard - script - Say text 5'),
(@ENTRY*100,9,15,0,0,0,100,0,5000,5000,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Inquisitor Hallard - script - Say text 6'),
(@ENTRY*100,9,16,0,0,0,100,0,5000,5000,0,0,11,49061,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Inquisitor Hallard - script - cast spell 49061'),
(@ENTRY*100,9,17,0,0,0,100,0,4000,4000,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Inquisitor Hallard - script - Say text 7'),
(@ENTRY*100,9,18,0,0,0,100,0,5000,5000,0,0,1,5,0,0,0,0,0,9,27577,0,30,0,0,0,0, 'Inquisitor Hallard - script - Mayor Godfrey Say text 5'),
(@ENTRY*100,9,19,0,0,0,100,0,3500,3500,0,0,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Inquisitor Hallard - script - Say text 8'),
(@ENTRY*100,9,20,0,0,0,100,0,3500,3500,0,0,1,9,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Inquisitor Hallard - script - Say text 9'),
(@ENTRY*100,9,21,0,0,0,100,0,500,500,0,0,1,6,0,0,0,0,0,9,27577,0,30,0,0,0,0, 'Inquisitor Hallard - script - Mayor Godfrey Say text 6'),
(@ENTRY*100,9,22,0,0,0,100,0,3000,3000,0,0,1,10,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Inquisitor Hallard - script - Say text 10'),
(@ENTRY*100,9,23,0,0,0,100,0,2000,2000,0,0,1,11,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Inquisitor Hallard - script - Say text 11'),
(@ENTRY*100,9,24,0,0,0,100,0,7000,7000,0,0,1,7,0,0,0,0,0,9,27577,0,30,0,0,0,0, 'Inquisitor Hallard - script - Mayor Godfrey Say text 7'),
(@ENTRY*100,9,25,0,0,0,100,0,7000,7000,0,0,1,12,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Inquisitor Hallard - script - Say text 12'),
(@ENTRY*100,9,26,0,0,0,100,0,12000,12000,0,0,1,8,0,0,0,0,0,9,27577,0,30,0,0,0,0, 'Inquisitor Hallard - script - Mayor Godfrey Say text 8'),
(@ENTRY*100,9,27,0,0,0,100,0,5000,5000,0,0,1,9,0,0,0,0,0,9,27577,0,30,0,0,0,0, 'Inquisitor Hallard - script - Mayor Godfrey Say text 9'),
(@ENTRY*100,9,28,0,0,0,100,0,13000,13000,0,0,1,13,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Inquisitor Hallard - script - Say text 13'),
(@ENTRY*100,9,29,0,0,0,100,0,7000,7000,0,0,1,10,0,0,0,0,0,9,27577,0,30,0,0,0,0, 'Inquisitor Hallard - script - Mayor Godfrey Say text 10'),
(@ENTRY*100,9,30,0,0,0,100,0,9000,9000,0,0,1,11,0,0,0,0,0,9,27577,0,30,0,0,0,0, 'Inquisitor Hallard - script - Mayor Godfrey Say text 11'),
(@ENTRY*100,9,31,0,0,0,100,0,5000,5000,0,0,1,14,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Inquisitor Hallard - script - Say text 14'),
(@ENTRY*100,9,32,0,0,0,100,0,5000,5000,0,0,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Inquisitor Hallard - script - turn to player'),
(@ENTRY*100,9,33,0,0,0,100,0,1000,1000,0,0,1,15,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Inquisitor Hallard - script - Say text 15'),
(@ENTRY*100,9,34,0,0,0,100,0,9000,9000,0,0,15,12321,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Inquisitor Hallard - script - give quest credit to player'),
(@ENTRY*100,9,35,0,0,0,100,0,1000,1000,0,0,66,0,0,0,0,0,0,9,27577,0,30,0,0,0,0, 'Inquisitor Hallard - script - turn to Mayor Godfrey'),
(@ENTRY*100,9,36,0,0,0,100,0,3000,3000,0,0,1,16,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Inquisitor Hallard - script - Say text 16'),
(@ENTRY*100,9,37,0,0,0,100,0,10000,10000,0,0,81,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Inquisitor Hallard - script - Turn on Questgiver flag'),
(@ENTRY*100,9,38,0,0,0,100,0,0,0,0,0,78,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Inquisitor Hallard - script - reset creature');

-- waypoints for Inquisitor Hallard
DELETE FROM `waypoints` WHERE `entry` IN (@ENTRY); 
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES 
(@ENTRY,1,3804.538,-679.7090,213.7526, 'Inquisitor Hallard'), 
(@ENTRY,2,3802.979,-678.8114,214.2526, 'Inquisitor Hallard'),
(@ENTRY,3,3800.479,-678.0614,214.2526, 'Inquisitor Hallard'),
(@ENTRY,4,3797.918,-677.4138,213.7526, 'Inquisitor Hallard');

-- NPC talk text insert from sniff 
DELETE FROM `creature_text` WHERE `entry` IN (27316,27577); 
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES 
(27316,0,0, 'Stand back, $N, the beast might lash out and harm you.',12,7,100,396,0,0, 'Inquisitor Hallard'),
(27316,1,0, 'GODFREY! Hear me, fiend! Hear me, for I am the Light, here to deliver you from evil!',12,7,100,5,0,0, 'Inquisitor Hallard'),
(27577,0,0, '%s growls.',16,0,100,0,0,409, 'Mayor Godfrey'),
(27316,2,0, 'Good. I have your attention, then, Godfrey?',12,7,100,396,0,0, 'Inquisitor Hallard'),
(27316,3,0, 'We can do this in one of two ways, Godfrey. First, I will simply ask you to tell me what the unholy markings etched upon the pages of this tome mean. What say you?',12,7,100,1,0,0, 'Inquisitor Hallard'),
(27577,1,0, '%s hisses!',16,0,100,0,0,410, 'Mayor Godfrey'),
(27577,2,0, 'Tell you nothing, preacher.',12,0,100,1,0,0, 'Mayor Godfrey'),
(27577,3,0, 'What can you do to me that Kel''Thuzad has not? That the Lich King will not?',12,0,100,1,0,0, 'Mayor Godfrey'),
(27577,4,0, 'The book is your salvation, yes... but nothing will you know! NOTHING I SAY! NOTHING! ',12,0,100,1,0,0, 'Mayor Godfrey'),
(27316,4,0, 'Then it is option two.',12,7,100,1,0,0, 'Inquisitor Hallard'),
(27316,5,0, 'I say a prayer for you now, lost soul. May the Light take you gracefully.',12,7,100,68,4000,0, 'Inquisitor Hallard'),
(27316,6,0, 'Let the sermon begin.',12,7,100,1,0,0, 'Inquisitor Hallard'),
(27316,7,0, 'LIGHT TAKE YOU, BEAST!',12,7,100,0,0,0, 'Inquisitor Hallard'),
(27577,5,0, 'No more LIGHT! NO MORE! I BEG YOU!',12,0,100,0,0,0, 'Mayor Godfrey'),
(27316,8,0, 'BURN IN HOLY FIRE!',12,7,100,0,0,0, 'Inquisitor Hallard'),
(27316,9,0, 'LET THE LIGHT IN, GODFREY GOODARD!',12,7,100,0,0,0, 'Inquisitor Hallard'),
(27577,6,0, 'Never felt hurt like this!',12,0,100,0,0,0, 'Mayor Godfrey'),
(27316,10,0, 'May the power of Light compel you!',12,7,100,0,0,0, 'Inquisitor Hallard'),
(27316,11,0, 'I thought you would see the Light, Godfrey... Now speak quickly, fiend. What does it say?',12,7,100,396,0,0, 'Inquisitor Hallard'),
(27577,7,0, 'It tells of the coming apocalypse. How this world will burn and be reborn from death.',12,0,100,1,0,0, 'Mayor Godfrey'),
(27316,12,0, 'RUBBISH! Godfrey do you take me for a fool? Do not spew your Scourge propaganda at a man of the Light, heathen! Speak now or I will have the peasants craft a holy water bath and dip you into it like a dog with fleas!',12,7,100,6,0,0, 'Inquisitor Hallard'),
(27577,8,0, 'NOOOO!!! I tell you! I tell you everything!',12,0,100,39,0,0, 'Mayor Godfrey'),
(27577,9,0, 'Humans... Beneath the earth of Wintergarde Village you built a mausoleum! Why do you think Naxxramas attacked that spot? Thel''zan hides deep in your own crypt and sends a thousand-thousand corpses at you! Perish you will...',12,0,100,1,0,0, 'Mayor Godfrey'),
(27316,13,0, 'What? There is a mausoleum beneath the old village? What fools we are to not have noticed! We will find and strike down your master now, Godfrey. We will end this nightmare.',12,7,100,6,0,0, 'Inquisitor Hallard'),
(27577,10,0, 'How? Humans truly are stupid, yes? Thel''zan the Duskbringer! Thel''zan the Lich! He who is born of human flesh and bone, sacrificed all for power, protected by the Lich King!',12,0,100,1,0,0, 'Mayor Godfrey'),
(27577,11,0, 'You cannot stop Thel''zan! He bears the dark gift, bestowed upon him by the Lich King himself!',12,0,100,1,0,0, 'Mayor Godfrey'),
(27316,14,0, 'You let us worry about how we kill the monster, Godfrey.',12,7,100,396,0,0, 'Inquisitor Hallard'),
(27316,15,0, 'Return to Halford with the information that the good mayor was kind enough to submit, $N. I will finish here and squeeze whatever else this wretch might know about Thel''zan. Now, I will show Godfrey the rarely seen "option three."',12,7,100,1,0,0, 'Inquisitor Hallard'),
(27316,16,0, 'Let''s you and I have a chat about some things, Godfrey.',12,7,100,1,0,0, 'Inquisitor Hallard');

-- Add spell conditions for 49062
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=49062;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,0,49062,0,18,1,27577,0,0,'','Spell 49062 target creature 27577');

-- Plagued Proto-Dragon SAI
SET @ENTRY  := 23680;
SET @SPELL  := 21862; -- Radiation
SET @SPELL1 := 9573;  -- Flame Breath
SET @SPELL2 := 3391;  -- Thrash
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,23,0,100,0,@SPELL,0,2000,2000,11,@SPELL,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Plagued Proto-Dragon - Aura Radiation not present - Add Aura Radiation'),
(@ENTRY,0,1,0,0,0,100,0,5000,7000,10000,15000,11,@SPELL1,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Plagued Proto-Dragon - Combat - Cast Flame Breath on victim'),
(@ENTRY,0,2,0,0,0,100,0,10000,15000,20000,25000,11,@SPELL2,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Plagued Proto-Dragon - Combat - Cast Thrash on victim');
-- Plagued Proto-Dragon fix InhabitType
UPDATE `creature_template` SET `InhabitType`=7 WHERE entry=@ENTRY;
-- Plagued Proto-Dragon fix model info
UPDATE `creature_model_info` SET `bounding_radius`=0.225,`combat_reach`=3.75,`gender`=0 WHERE `modelid`=24874; -- Plagued Proto-Dragon
-- Plagued Proto-Dragon fix bytes1 and bytes2
DELETE FROM `creature_template_addon` WHERE `entry`=@ENTRY;
INSERT INTO `creature_template_addon` (`entry`,`bytes1`,`bytes2`) VALUES
(@ENTRY,50331648,1); -- Plagued Proto-Dragon
-- Pathing for Plagued Proto-Dragon Entry: 23680
SET @NPC := 107626;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=847.8322,`position_y`=-4441.198,`position_z`=159.749 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,838.0903,-4421.268,159.749,0,0,0,100,0),
(@PATH,2,801.8729,-4407.143,179.2211,0,0,0,100,0),
(@PATH,3,782.8507,-4413.701,194.3322,0,0,0,100,0),
(@PATH,4,777.4731,-4419.182,198.0821,0,0,0,100,0),
(@PATH,5,774.1382,-4438.679,206.8877,0,0,0,100,0),
(@PATH,6,814.439,-4462.499,206.8877,0,0,0,100,0),
(@PATH,7,848.4948,-4489.605,206.8877,0,0,0,100,0),
(@PATH,8,876.2105,-4490.642,206.8877,0,0,0,100,0),
(@PATH,9,896.0039,-4450.317,192.8044,0,0,0,100,0),
(@PATH,10,897.2634,-4422.887,179.6656,0,0,0,100,0),
(@PATH,11,907.506,-4392.95,179.6656,0,0,0,100,0),
(@PATH,12,933.834,-4369.785,166.0267,0,0,0,100,0),
(@PATH,13,956.7077,-4379.646,166.0267,0,0,0,100,0),
(@PATH,14,967.011,-4400.757,158.8045,0,0,0,100,0),
(@PATH,15,966.2571,-4425.053,159.749,0,0,0,100,0),
(@PATH,16,932.5647,-4461.108,159.749,0,0,0,100,0),
(@PATH,17,891.5416,-4476.208,159.749,0,0,0,100,0),
(@PATH,18,861.6124,-4460.188,159.749,0,0,0,100,0),
(@PATH,19,847.8322,-4441.198,159.749,0,0,0,100,0);

