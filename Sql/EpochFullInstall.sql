/*
DayZ Epoch 1.0.2.3
*/
SET FOREIGN_KEY_CHECKS=0;
CREATE TABLE IF NOT EXISTS `Character_DATA` (
  `CharacterID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `PlayerUID` varchar(20) NOT NULL DEFAULT '0',
  `InstanceID` int(11) NOT NULL DEFAULT '0',
  `Datestamp` datetime DEFAULT NULL,
  `LastLogin` datetime NOT NULL,
  `Inventory` longtext,
  `Backpack` longtext,
  `Worldspace` varchar(128) NOT NULL DEFAULT '[]',
  `Medical` varchar(300) NOT NULL DEFAULT '[]',
  `Alive` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `Generation` int(11) unsigned NOT NULL DEFAULT '1',
  `LastAte` datetime NOT NULL,
  `LastDrank` datetime NOT NULL,
  `KillsZ` int(11) unsigned NOT NULL DEFAULT '0',
  `HeadshotsZ` int(11) unsigned NOT NULL DEFAULT '0',
  `DistanceFoot` int(11) NOT NULL DEFAULT '0',
  `Duration` int(11) NOT NULL DEFAULT '0',
  `CurrentState` varchar(200) NOT NULL DEFAULT '[]',
  `KillsH` int(11) unsigned NOT NULL DEFAULT '0',
  `Model` varchar(50) NOT NULL DEFAULT '"Survivor2_DZ"',
  `KillsB` int(11) unsigned NOT NULL DEFAULT '0',
  `Humanity` int(11) NOT NULL DEFAULT '2500',
  `Infected` tinyint(3) DEFAULT '0',
  `last_updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`CharacterID`),
  KEY `PlayerUID` (`PlayerUID`) USING BTREE,
  KEY `Alive` (`Alive`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
CREATE TABLE IF NOT EXISTS `Object_DATA` (
  `ObjectID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ObjectUID` bigint(24) NOT NULL DEFAULT '0',
  `Instance` int(11) unsigned NOT NULL,
  `Classname` varchar(50) DEFAULT NULL,
  `Datestamp` datetime NOT NULL,
  `CharacterID` int(11) unsigned NOT NULL DEFAULT '0',
  `Worldspace` varchar(128) NOT NULL DEFAULT '[]',
  `Inventory` longtext,
  `Hitpoints` varchar(512) NOT NULL DEFAULT '[]',
  `Fuel` double(13,5) NOT NULL DEFAULT '1.00000',
  `Damage` double(13,5) NOT NULL DEFAULT '0.00000',
  PRIMARY KEY (`ObjectID`),
  KEY `ObjectUID` (`ObjectUID`) USING BTREE,
  KEY `Instance` (`Instance`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
CREATE TABLE IF NOT EXISTS `Player_DATA` (
  `PlayerUID` varchar(20) NOT NULL DEFAULT '0',
  `PlayerName` varchar(128) CHARACTER SET utf8 NOT NULL DEFAULT 'Null',
  `PlayerMorality` int(11) NOT NULL DEFAULT '0',
  `PlayerSex` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`PlayerUID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE IF NOT EXISTS `Player_LOGIN` (
  `LoginID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `PlayerUID` varchar(20) NOT NULL,
  `CharacterID` int(11) unsigned NOT NULL DEFAULT '0',
  `Datestamp` datetime NOT NULL,
  `Action` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`LoginID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
CREATE TABLE IF NOT EXISTS `server_traders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classname` varchar(128) NOT NULL,
  `instance` int(11) NOT NULL,
  `status` varchar(32) NOT NULL,
  `static` text,
  `desc` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=177 ;
CREATE TABLE IF NOT EXISTS `Traders_DATA` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `item` varchar(255) NOT NULL COMMENT '[Class Name,1 = CfgMagazines | 2 = Vehicle | 3 = Weapon]',
  `qty` int(8) NOT NULL COMMENT 'amount in stock available to buy',
  `buy` varchar(255) NOT NULL COMMENT '[[Qty,Class,Type],]',
  `sell` varchar(255) NOT NULL COMMENT '[[Qty,Class,Type],]',
  `order` int(2) NOT NULL DEFAULT '0' COMMENT '# sort order for addAction menu',
  `tid` int(8) NOT NULL COMMENT 'Trader Menu ID',
  `afile` varchar(64) NOT NULL DEFAULT 'trade_items',
  PRIMARY KEY (`id`),
  UNIQUE KEY `item` (`item`,`tid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7242 ;
CREATE TABLE IF NOT EXISTS `trader_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classname` varchar(128) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `group` varchar(128) DEFAULT NULL,
  `afile` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `itemsntypes` (`classname`,`type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=770 ;
CREATE TABLE IF NOT EXISTS `trader_tids` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `trader` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=693 ;
CREATE EVENT IF NOT EXISTS removeDamagedVehicles ON SCHEDULE EVERY 1 DAY COMMENT 'Removes damaged vehicles' DO DELETE FROM `object_data` WHERE Damage = 1;
CREATE EVENT IF NOT EXISTS RemoveDeadSurvivors ON SCHEDULE EVERY 1 DAY COMMENT 'Removes dead survivors' DO DELETE FROM `character_data` WHERE Alive = 0;
SET GLOBAL event_scheduler = 1;
SET FOREIGN_KEY_CHECKS=1;