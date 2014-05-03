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
