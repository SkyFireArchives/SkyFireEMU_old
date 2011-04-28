UPDATE `creature_template` SET `ScriptName`='npc_injured_soldier' WHERE (`entry`='50047');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `cast_flags`) VALUES
('50047', '93072', '28812', '1', '1'),
('50047', '93072', '28813', '1', '1'),
('50047', '93072', '29082', '1', '1'),
('50047', '93072', '28811', '1', '1'),
('50047', '93072', '28810', '1', '1'),
('50047', '93072', '28808', '1', '1'),
('50047', '93072', '28809', '1', '1'),
('50047', '93072', '28806', '1', '1');

UPDATE `quest_template` SET `SkillOrClassMask`='-2', `MinLevel`='3', `QuestFlags`='524288', `PrevQuestId`='28785'  WHERE (`entry`='28809');
UPDATE `quest_template` SET `SkillOrClassMask`='-128', `MinLevel`='3', `QuestFlags`='524288', `PrevQuestId`='28784'  WHERE (`entry`='28810');
UPDATE `quest_template` SET `SkillOrClassMask`='-8', `MinLevel`='3', `QuestFlags`='524288', `PrevQuestId`='28787'  WHERE (`entry`='28811');
UPDATE `quest_template` SET `SkillOrClassMask`='-256', `MinLevel`='3', `QuestFlags`='524288', `PrevQuestId`='28788'  WHERE (`entry`='28812');
UPDATE `quest_template` SET `SkillOrClassMask`='-1', `MinLevel`='3', `QuestFlags`='524288', `PrevQuestId`='28789'  WHERE (`entry`='28813');
UPDATE `quest_template` SET `SkillOrClassMask`='-4', `MinLevel`='3', `QuestFlags`='524288', `PrevQuestId`='28780' WHERE (`entry`='28806');
UPDATE `quest_template` SET `SkillOrClassMask`='-16', `MinLevel`='3', `QuestFlags`='524288', `PrevQuestId`='28786'  WHERE (`entry`='28808');