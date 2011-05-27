-- Fix missing required skillvalue for Cardinal Ruby
UPDATE quest_template SET RequiredSkillValue=450, WDBVerified=13623 WHERE entry=14151;
