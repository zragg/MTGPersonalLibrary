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
