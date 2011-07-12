SET @ver=14333;
insert ignore into `emuopcodes`(`version`,`name`,`number`,`type`) values ( @ver,'MSG_OPCODE_UNKNOWN','0','msg');
UPDATE emuopcodes SET number = 50983 WHERE name = "SMSG_CHAR_ENUM" and version = @ver;
UPDATE emuopcodes SET number = 4305 WHERE name = "CMSG_PLAYER_LOGIN" and version = @ver;
UPDATE emuopcodes SET number = 61990 WHERE name = "CMSG_CHAR_ENUM" and version = @ver;
UPDATE emuopcodes SET number = 47735 WHERE name = "SMSG_LOGIN_VERIFY_WORLD" and version = @ver;
UPDATE emuopcodes SET number = 8033 WHERE name = "SMSG_FEATURE_SYSTEM_STATUS" and version = @ver;
UPDATE emuopcodes SET number = 32294 WHERE name = "SMSG_BINDPOINTUPDATE" and version = @ver;
UPDATE emuopcodes SET number = 63011 WHERE name = "SMSG_CORPSE_RECLAIM_DELAY" and version = @ver;
UPDATE emuopcodes SET number = 32439 WHERE name = "SMSG_INIT_WORLD_STATES" and version = @ver;
UPDATE emuopcodes SET number = 3216 WHERE name = "SMSG_PONG" and version = @ver;
UPDATE emuopcodes SET number = 57919 WHERE name = "SMSG_COMPRESSED_UPDATE_OBJECT" and version = @ver;
-- next 9 are from RealmConnection__MessageHandler
UPDATE emuopcodes SET number = 48891 WHERE name = "SMSG_AUTH_RESPONSE" and version = @ver;
UPDATE emuopcodes SET number = 27310 WHERE name = "SMSG_ADDON_INFO" and version = @ver;
UPDATE emuopcodes SET number = 41527 WHERE name = "SMSG_CLIENTCACHE_VERSION" and version = @ver;
UPDATE emuopcodes SET number = 25274 WHERE name = "SMSG_LOGOUT_RESPONSE" and version = @ver;
UPDATE emuopcodes SET number = 16122 WHERE name = "SMSG_CHAR_CREATE" and version = @ver;
UPDATE emuopcodes SET number = 41599 WHERE name = "SMSG_LOGOUT_COMPLETE" and version = @ver;
UPDATE emuopcodes SET number = 43575 WHERE name = "SMSG_LOGOUT_CANCEL_ACK" and version = @ver;
UPDATE emuopcodes SET number = 15926 WHERE name = "SMSG_CHAR_DELETE" and version = @ver;
UPDATE emuopcodes SET number = 45795 WHERE name = "SMSG_CHARACTER_LOGIN_FAILED" and version = @ver;

UPDATE emuopcodes SET number = 29435 WHERE name = "CMSG_CAST_SPELL" and version = @ver;
UPDATE emuopcodes SET number = 48874 WHERE name = "CMSG_CANCEL_AURA" and version = @ver;
UPDATE emuopcodes SET number = 22965 WHERE name = "CMSG_MESSAGECHAT_SAY" and version = @ver;
UPDATE emuopcodes SET number = 61990 WHERE name = "CMSG_READY_FOR_ACCOUNT_DATA_TIMES" and version = @ver;
UPDATE emuopcodes SET number = 4241 WHERE name = "CMSG_CHAR_ENUM" and version = @ver;