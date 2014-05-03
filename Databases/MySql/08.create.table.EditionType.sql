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
