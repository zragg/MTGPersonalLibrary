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
