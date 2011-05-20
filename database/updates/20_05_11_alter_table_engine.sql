-- Some tables that handle character data should be on InnoDB engine to prevent table lock-up
-- by ZenitH

ALTER TABLE character_action ENGINE = InnoDB;

ALTER TABLE account_data ENGINE = InnoDB;

ALTER TABLE account_instance_times ENGINE = InnoDB;

ALTER TABLE arena_team ENGINE = InnoDB;

ALTER TABLE arena_team_member ENGINE = InnoDB;

ALTER TABLE arena_team_stats ENGINE = InnoDB;

ALTER TABLE auctionhouse ENGINE = InnoDB;

ALTER TABLE characters ENGINE = InnoDB;

ALTER TABLE character_account_data ENGINE = InnoDB;

ALTER TABLE character_action ENGINE = InnoDB;

ALTER TABLE character_aura ENGINE = InnoDB;

ALTER TABLE character_battleground_data ENGINE = InnoDB;

ALTER TABLE character_currency ENGINE = InnoDB;

ALTER TABLE character_equipmentsets ENGINE = InnoDB;

ALTER TABLE character_gifts ENGINE = InnoDB;

ALTER TABLE character_homebind ENGINE = InnoDB;

ALTER TABLE character_instance ENGINE = InnoDB;

ALTER TABLE character_inventory ENGINE = InnoDB;

ALTER TABLE character_pet ENGINE = InnoDB;

ALTER TABLE character_queststatus ENGINE = InnoDB;

ALTER TABLE pet_spell_cooldown ENGINE = InnoDB;

ALTER TABLE pet_spell ENGINE = InnoDB;

ALTER TABLE mail ENGINE = InnoDB;

ALTER TABLE mail_items ENGINE = InnoDB;

ALTER TABLE item_instance ENGINE = InnoDB;

ALTER TABLE instance_reset ENGINE = InnoDB;

ALTER TABLE instance ENGINE = InnoDB;

ALTER TABLE guild_member ENGINE = InnoDB;

ALTER TABLE guild_rank ENGINE = InnoDB;

ALTER TABLE guild ENGINE = InnoDB;

ALTER TABLE group_member ENGINE = InnoDB;



