--     //                   //
--    // 406_changeset_01  //
--   //    25.02.2011     //
--  //      4.0.6a       //
-- //                   //

-- Fix by Nosferatu 
-- Warlocks no longer use this spell in 4.0.6 http://old.wowhead.com/spell=5138. Fixed 42 startup errors related to non existing spell  
DELETE FROM `npc_trainer` WHERE `spell` = '5138';