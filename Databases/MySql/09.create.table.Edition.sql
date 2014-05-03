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
  CONSTRAINT `Edition_ibfk_1` FOREIGN KEY (`EditionType_Id`) REFERENCES `Edit
ionType` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
