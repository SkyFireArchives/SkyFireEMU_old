DROP TABLE IF EXISTS linked_respawn;
CREATE TABLE IF NOT EXISTS linked_respawn (
  guid int(10) unsigned NOT NULL COMMENT 'dependent creature',
  linkedGuid int(10) unsigned NOT NULL COMMENT 'master creature',
  linkType tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (guid,linkType)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Creature Respawn Link System';
