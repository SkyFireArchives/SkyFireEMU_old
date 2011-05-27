-- QUEST: The Exorcism of Colonel Jules
UPDATE quest_template SET 
RequiredRaces=1101, 
PrevQuestId=10909, 
NextQuestInChain=10936, 
OfferRewardText='You have done it, $n. You have saved Colonel Jules\' soul and cast the darkness within him back to where it came. A great, noble deed this is! A hero\'s day!', 
RequestItemsText='Go to Anchorite Barada, $n. He must succeed with his ritual if the colonel is to be saved.', 
EndText='', CompletedText='Return to Assistant Klatu at Honor Hold in Hellfire Peninsula.', 
ReqSpellCast1=39371, 
WDBVerified=13623 WHERE entry=10935;

-- Change NPCFlag From Gossip1 -> 0
UPDATE creature_template SET npcflag=npcflag|0 WHERE entry=22432; -- Colonel Jules