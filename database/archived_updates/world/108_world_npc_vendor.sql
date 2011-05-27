-- Fix slot npc_vendor

UPDATE npc_vendor SET slot = 0 WHERE slot > 0;