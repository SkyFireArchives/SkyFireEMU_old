ALTER TABLE corpse
  CHANGE guid corpseGuid int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  CHANGE player guid int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  CHANGE map mapId smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  CHANGE position_x posX float NOT NULL DEFAULT '0',
  CHANGE position_y posY float NOT NULL DEFAULT '0',
  CHANGE position_z posZ float NOT NULL DEFAULT '0',
  CHANGE phaseMask  phaseMask smallint(5) unsigned NOT NULL DEFAULT '1',
  CHANGE guild guildId int(10) unsigned NOT NULL DEFAULT '0',
  CHANGE corpse_type corpseType tinyint(3) unsigned NOT NULL DEFAULT '0',
  CHANGE instance instanceId int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Instance Identifier';
    
DROP TABLE IF EXISTS gameobject_respawn;
CREATE TABLE gameobject_respawn (
  guid int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  respawnTime int(10) unsigned NOT NULL DEFAULT '0',
  instanceId int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Instance Identifier',
  PRIMARY KEY (guid,instanceId),
  KEY idx_instance (instanceId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Grid Loading System';

DROP TABLE IF EXISTS creature_respawn;
CREATE TABLE creature_respawn (
  guid int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  respawnTime int(10) unsigned NOT NULL DEFAULT '0',
  instanceId int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Instance Identifier',
  PRIMARY KEY (guid,instanceId),
  KEY idx_instance (instanceId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Grid Loading System';