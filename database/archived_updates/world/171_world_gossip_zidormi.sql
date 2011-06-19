-- Add teleport to gossip option "Teleport me to Caverns of Time." - Zidormi
-- Zidormi
UPDATE gossip_menu_option SET action_script_id=10131 WHERE menu_id=10131 AND id=0;
DELETE FROM gossip_scripts WHERE id=10131;
INSERT INTO gossip_scripts (id,delay,command,datalong,datalong2,dataint,x,y,z,o) VALUES
(10131,0,6,1,0,0,-8167.24,-4766.05,33.8599,1.74123);
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=10131 AND SourceEntry=0;
INSERT INTO conditions (SourceTypeOrReferenceId,SourceGroup,SourceEntry,ElseGroup,ConditionTypeOrReference,ConditionValue1,ConditionValue2,ConditionValue3,ErrorTextId,ScriptName,Comment) VALUES
(15,10131,0,0,27,65,3,0,0, '', 'Zidormi - Teleport to CoT level restriction');