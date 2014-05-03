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
