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
