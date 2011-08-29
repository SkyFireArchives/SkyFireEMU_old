DELETE FROM script_texts WHERE npc_entry=42598 AND entry=-1610001;
INSERT INTO script_texts
  (npc_entry, entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment)
VALUES
  (42598, -1610001, "Initiating cleanup ... ...", "NULL", "NULL", "NULL", "NULL", "NULL", "NULL", "NULL", "NULL", 0, 12, 7, 0, "SAY_MULTI_BOT -  GS-9x Multi-Bot");

