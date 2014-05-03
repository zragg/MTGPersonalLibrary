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

