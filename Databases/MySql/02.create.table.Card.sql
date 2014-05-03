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
