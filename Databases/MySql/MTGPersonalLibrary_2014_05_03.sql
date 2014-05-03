-- 
-- Structure for table `Card`
-- 

DROP TABLE IF EXISTS `Card`;
CREATE TABLE IF NOT EXISTS `Card` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `CardStatus_Id` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Name` (`Name`),
  KEY `CardStatus_Id` (`CardStatus_Id`),
  CONSTRAINT `Card_ibfk_1` FOREIGN KEY (`CardStatus_Id`) REFERENCES `CardStatus` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Structure for table `CardStatus`
-- 

DROP TABLE IF EXISTS `CardStatus`;
CREATE TABLE IF NOT EXISTS `CardStatus` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Code` varchar(1) NOT NULL,
  `Name` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Code` (`Code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- 
-- Data for table `CardStatus`
-- 

INSERT INTO `CardStatus` (`Id`, `Code`, `Name`) VALUES
  ('1', 'C', 'Common'),
  ('2', 'U', 'Uncommon'),
  ('3', 'R', 'Rare'),
  ('4', 'M', 'Mythic');

-- 
-- Structure for table `CardSubtype`
-- 

DROP TABLE IF EXISTS `CardSubtype`;
CREATE TABLE IF NOT EXISTS `CardSubtype` (
  `Card_Id` int(11) NOT NULL,
  `Subtype_Id` int(11) NOT NULL,
  PRIMARY KEY (`Card_Id`,`Subtype_Id`),
  KEY `Subtype_Id` (`Subtype_Id`),
  CONSTRAINT `CardSubtype_ibfk_1` FOREIGN KEY (`Card_Id`) REFERENCES `Card` (`Id`),
  CONSTRAINT `CardSubtype_ibfk_2` FOREIGN KEY (`Subtype_Id`) REFERENCES `SubType` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Structure for table `CardType`
-- 

DROP TABLE IF EXISTS `CardType`;
CREATE TABLE IF NOT EXISTS `CardType` (
  `Card_Id` int(11) NOT NULL,
  `Type_Id` int(11) NOT NULL,
  PRIMARY KEY (`Card_Id`,`Type_Id`),
  KEY `Type_Id` (`Type_Id`),
  CONSTRAINT `CardType_ibfk_1` FOREIGN KEY (`Card_Id`) REFERENCES `Card` (`Id`),
  CONSTRAINT `CardType_ibfk_2` FOREIGN KEY (`Type_Id`) REFERENCES `Type` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Structure for table `Edition`
-- 

DROP TABLE IF EXISTS `Edition`;
CREATE TABLE IF NOT EXISTS `Edition` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Code` varchar(255) NOT NULL,
  `Nbcards` int(11) NOT NULL,
  `NbBasicLands` int(11) NOT NULL,
  `Date` date NOT NULL,
  `EditionType_Id` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Name` (`Name`),
  KEY `EditionType_Id` (`EditionType_Id`),
  CONSTRAINT `Edition_ibfk_1` FOREIGN KEY (`EditionType_Id`) REFERENCES `EditionType` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Structure for table `EditionBloc`
-- 

DROP TABLE IF EXISTS `EditionBloc`;
CREATE TABLE IF NOT EXISTS `EditionBloc` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Code` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Name` (`Name`),
  UNIQUE KEY `Code` (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Structure for table `EditionCard`
-- 

DROP TABLE IF EXISTS `EditionCard`;
CREATE TABLE IF NOT EXISTS `EditionCard` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdInEdition` int(11) NOT NULL,
  `MCMId` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Structure for table `EditionType`
-- 

DROP TABLE IF EXISTS `EditionType`;
CREATE TABLE IF NOT EXISTS `EditionType` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Structure for table `PhysicalType`
-- 

DROP TABLE IF EXISTS `PhysicalType`;
CREATE TABLE IF NOT EXISTS `PhysicalType` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Structure for table `PysicalState`
-- 

DROP TABLE IF EXISTS `PysicalState`;
CREATE TABLE IF NOT EXISTS `PysicalState` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Structure for table `SubType`
-- 

DROP TABLE IF EXISTS `SubType`;
CREATE TABLE IF NOT EXISTS `SubType` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=225 DEFAULT CHARSET=utf8;

-- 
-- Data for table `SubType`
-- 

INSERT INTO `SubType` (`Id`, `Name`) VALUES
  ('1', 'Advisor'),
  ('2', 'Ally'),
  ('3', 'Angel'),
  ('4', 'Anteater'),
  ('5', 'Antelope'),
  ('6', 'Ape'),
  ('7', 'Archer'),
  ('8', 'Archon'),
  ('9', 'Artificer'),
  ('10', 'Assassin'),
  ('11', 'Assembly-Worker'),
  ('12', 'Atog'),
  ('13', 'Aurochs'),
  ('14', 'Avatar'),
  ('15', 'Badger'),
  ('16', 'Barbarian'),
  ('17', 'Basilisk'),
  ('18', 'Bat'),
  ('19', 'Bear'),
  ('20', 'Beast'),
  ('21', 'Beeble'),
  ('22', 'Berserker'),
  ('23', 'Bird'),
  ('24', 'Blinkmoth'),
  ('25', 'Boar'),
  ('26', 'Bringer'),
  ('27', 'Brushwagg'),
  ('28', 'Camarid'),
  ('29', 'Camel'),
  ('30', 'Caribou'),
  ('31', 'Carrier'),
  ('32', 'Cat'),
  ('33', 'Centaur'),
  ('34', 'Cephalid'),
  ('35', 'Chimera'),
  ('36', 'Citizen'),
  ('37', 'Cleric'),
  ('38', 'Cockatrice'),
  ('39', 'Construct'),
  ('40', 'Coward'),
  ('41', 'Crab'),
  ('42', 'Crocodile'),
  ('43', 'Cyclops'),
  ('44', 'Dauthi'),
  ('45', 'Demon'),
  ('46', 'Deserter'),
  ('47', 'Devil'),
  ('48', 'Djinn'),
  ('49', 'Dragon'),
  ('50', 'Drake'),
  ('51', 'Dreadnought'),
  ('52', 'Drone'),
  ('53', 'Druid'),
  ('54', 'Dryad'),
  ('55', 'Dwarf'),
  ('56', 'Efreet'),
  ('57', 'Elder'),
  ('58', 'Eldrazi'),
  ('59', 'Elemental'),
  ('60', 'Elephant'),
  ('61', 'Elf'),
  ('62', 'Elk'),
  ('63', 'Eye'),
  ('64', 'Faerie'),
  ('65', 'Ferret'),
  ('66', 'Fish'),
  ('67', 'Flagbearer'),
  ('68', 'Fox'),
  ('69', 'Frog'),
  ('70', 'Fungus'),
  ('71', 'Gargoyle'),
  ('72', 'Germ'),
  ('73', 'Giant'),
  ('74', 'Gnome'),
  ('75', 'Goat'),
  ('76', 'Goblin'),
  ('77', 'Golem'),
  ('78', 'Gorgon'),
  ('79', 'Graveborn'),
  ('80', 'Gremlin'),
  ('81', 'Griffin'),
  ('82', 'Hag'),
  ('83', 'Harpy'),
  ('84', 'Hellion'),
  ('85', 'Hippo'),
  ('86', 'Hippogriff'),
  ('87', 'Homarid'),
  ('88', 'Homunculus'),
  ('89', 'Horror'),
  ('90', 'Horse'),
  ('91', 'Hound'),
  ('92', 'Human'),
  ('93', 'Hydra'),
  ('94', 'Hyena'),
  ('95', 'Illusion'),
  ('96', 'Imp'),
  ('97', 'Incarnation'),
  ('98', 'Insect'),
  ('99', 'Jellyfish'),
  ('100', 'Juggernaut'),
  ('101', 'Kavu'),
  ('102', 'Kirin'),
  ('103', 'Kithkin'),
  ('104', 'Knight'),
  ('105', 'Kobold'),
  ('106', 'Kor'),
  ('107', 'Kraken'),
  ('108', 'Lammasu'),
  ('109', 'Leech'),
  ('110', 'Leviathan'),
  ('111', 'Lhurgoyf'),
  ('112', 'Licid'),
  ('113', 'Lizard'),
  ('114', 'Manticore'),
  ('115', 'Masticore'),
  ('116', 'Mercenary'),
  ('117', 'Merfolk'),
  ('118', 'Metathran'),
  ('119', 'Minion'),
  ('120', 'Minotaur'),
  ('121', 'Monger'),
  ('122', 'Mongoose'),
  ('123', 'Monk'),
  ('124', 'Moonfolk'),
  ('125', 'Mutant'),
  ('126', 'Myr'),
  ('127', 'Mystic'),
  ('128', 'Nautilus'),
  ('129', 'Nephilim'),
  ('130', 'Nightmare'),
  ('131', 'Nightstalker'),
  ('132', 'Ninja'),
  ('133', 'Noggle'),
  ('134', 'Nomad'),
  ('135', 'Octopus'),
  ('136', 'Ogre'),
  ('137', 'Ooze'),
  ('138', 'Orb'),
  ('139', 'Orc'),
  ('140', 'Orgg'),
  ('141', 'Ouphe'),
  ('142', 'Ox'),
  ('143', 'Oyster'),
  ('144', 'Pegasus'),
  ('145', 'Pentavite'),
  ('146', 'Pest'),
  ('147', 'Phelddagrif'),
  ('148', 'Phoenix'),
  ('149', 'Pincher'),
  ('150', 'Pirate'),
  ('151', 'Plant'),
  ('152', 'Praetor'),
  ('153', 'Prism'),
  ('154', 'Rabbit'),
  ('155', 'Rat'),
  ('156', 'Rebel'),
  ('157', 'Reflection'),
  ('158', 'Rhino'),
  ('159', 'Rigger'),
  ('160', 'Rogue'),
  ('161', 'Salamander'),
  ('162', 'Samurai'),
  ('163', 'Sand'),
  ('164', 'Saproling'),
  ('165', 'Satyr'),
  ('166', 'Scarecrow'),
  ('167', 'Scorpion'),
  ('168', 'Scout'),
  ('169', 'Serf'),
  ('170', 'Serpent'),
  ('171', 'Shade'),
  ('172', 'Shaman'),
  ('173', 'Shapeshifter'),
  ('174', 'Sheep'),
  ('175', 'Siren'),
  ('176', 'Skeleton'),
  ('177', 'Slith'),
  ('178', 'Sliver'),
  ('179', 'Slug'),
  ('180', 'Snake'),
  ('181', 'Soldier'),
  ('182', 'Soltari'),
  ('183', 'Spawn'),
  ('184', 'Specter'),
  ('185', 'Spellshaper'),
  ('186', 'Sphinx'),
  ('187', 'Spider'),
  ('188', 'Spike'),
  ('189', 'Spirit'),
  ('190', 'Splinter'),
  ('191', 'Sponge'),
  ('192', 'Squid'),
  ('193', 'Squirrel'),
  ('194', 'Starfish'),
  ('195', 'Surrakar'),
  ('196', 'Survivor'),
  ('197', 'Tetravite'),
  ('198', 'Thalakos'),
  ('199', 'Thopter'),
  ('200', 'Thrull'),
  ('201', 'Treefolk'),
  ('202', 'Triskelavite'),
  ('203', 'Troll'),
  ('204', 'Turtle'),
  ('205', 'Unicorn'),
  ('206', 'Vampire'),
  ('207', 'Vedalken'),
  ('208', 'Viashino'),
  ('209', 'Volver'),
  ('210', 'Wall'),
  ('211', 'Warrior'),
  ('212', 'Weird'),
  ('213', 'Werewolf'),
  ('214', 'Whale'),
  ('215', 'Wizard'),
  ('216', 'Wolf'),
  ('217', 'Wolverine'),
  ('218', 'Wombat'),
  ('219', 'Worm'),
  ('220', 'Wraith'),
  ('221', 'Wurm'),
  ('222', 'Yeti'),
  ('223', 'Zombie'),
  ('224', 'Zubera');

-- 
-- Structure for table `Type`
-- 

DROP TABLE IF EXISTS `Type`;
CREATE TABLE IF NOT EXISTS `Type` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- 
-- Data for table `Type`
-- 

INSERT INTO `Type` (`Id`, `Name`) VALUES
  ('1', 'Artifact'),
  ('2', 'Basic'),
  ('3', 'Creature'),
  ('4', 'Enchantment'),
  ('5', 'Instant'),
  ('6', 'Land'),
  ('7', 'Legendary'),
  ('8', 'Planeswalker'),
  ('9', 'Sorcery'),
  ('10', 'Tribal');

-- 
-- Structure for table `User`
-- 

DROP TABLE IF EXISTS `User`;
CREATE TABLE IF NOT EXISTS `User` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) NOT NULL,
  `MCMLogin` varchar(255) NOT NULL,
  `MCMApiKey` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `isActive` bit(1) NOT NULL DEFAULT b'0',
  `isValidate` bit(1) NOT NULL DEFAULT b'0',
  `ApiKey` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `login` (`login`),
  UNIQUE KEY `MCMLogin` (`MCMLogin`),
  UNIQUE KEY `mail` (`mail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Structure for table `UserCard`
-- 

DROP TABLE IF EXISTS `UserCard`;
CREATE TABLE IF NOT EXISTS `UserCard` (
  `User_Id` int(11) NOT NULL,
  `EditionCard_Id` int(11) NOT NULL,
  `PhysicalState_Id` int(11) NOT NULL,
  `PhysicalType_Id` int(11) NOT NULL,
  KEY `User_Id` (`User_Id`),
  KEY `EditionCard_Id` (`EditionCard_Id`),
  KEY `PhysicalState_Id` (`PhysicalState_Id`),
  KEY `PhysicalType_Id` (`PhysicalType_Id`),
  CONSTRAINT `UserCard_ibfk_1` FOREIGN KEY (`User_Id`) REFERENCES `User` (`Id`),
  CONSTRAINT `UserCard_ibfk_2` FOREIGN KEY (`EditionCard_Id`) REFERENCES `EditionCard` (`Id`),
  CONSTRAINT `UserCard_ibfk_3` FOREIGN KEY (`PhysicalState_Id`) REFERENCES `PysicalState` (`Id`),
  CONSTRAINT `UserCard_ibfk_4` FOREIGN KEY (`PhysicalType_Id`) REFERENCES `PhysicalType` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

