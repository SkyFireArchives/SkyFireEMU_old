ALTER TABLE quest_template ADD `QuestTargetMark` int(11) DEFAULT '0' AFTER `QuestTurnInPortraitUnk`;
ALTER TABLE quest_template ADD `QuestStartType` int(11) DEFAULT '0' AFTER `QuestTargetMark`;
