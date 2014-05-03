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
