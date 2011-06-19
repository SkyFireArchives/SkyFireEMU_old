-- Item MaxCount About 47K Items Affected
UPDATE item_template SET maxcount=0 WHERE Flags!=524288;
-- Fix By Ari