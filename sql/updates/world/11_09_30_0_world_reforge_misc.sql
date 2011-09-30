--  UNIT_NPC_FLAG_GOSSIP = 1,  UNIT_NPC_FLAG_REFORGER = 134217728
UPDATE creature_template SET npcflag = npcflag | (134217728 | 1) WHERE entry IN (46180,46181);

DELETE FROM gossip_menu_option WHERE `menu_id` = 0 AND `id` IN (18,19);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`) VALUES
('0','18','7','I wish to reforge an item','20','134217728','0','0','0','0','0',NULL),
('0','19','7','What is reforging?','1','134217728','0','0','0','0','0',NULL); -- TODO: link to reforge introduction
