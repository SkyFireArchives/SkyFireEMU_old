-- Your Place In The World
UPDATE quest_template SET 
NextQuestId=25126,
NextQuestInChain=25126, 
OfferRewardText='Another one of Kaltunk\'s recruits, hm?$B$BA sorry state of affairs we find ourselves in if this is the best the Horde can produce. No matter. By the time we think you\'re ready to leave the Valley, you\'ll be a proud $C of the Horde.',
WDBVerified=13623
WHERE entry=25152;

-- Cutting Teeth
UPDATE quest_template SET 
PrevQuestId=25152, 
NextQuestId=25172, 
NextQuestInChain=25172, 
OfferRewardText='Hmmm, not bad, $N. But don\'t let it get to your head...you\'ll fight tougher than boars in your career.$b$bNonetheless, you\'ve proven yourself well, and your next trial will be against a considerably more dangerous opponent, so you\'ll need some extra protection.', 
CompletedText='Return to Gornek at Valley of Trials in Durotar.', 
WDBVerified=13623
WHERE entry=25126;

-- Invaders in Our Home
UPDATE quest_template SET 
NextQuestId=25127, 
NextQuestInChain=25127,
OfferRewardText='Executed with quickness and discretion. A job well done.', 
CompletedText='Return to Gornek at Valley of Trials in Durotar.', 
WDBVerified=13623 WHERE 
entry=25172;