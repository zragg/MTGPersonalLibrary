-- 
-- Structure for table `CardSubtype`
-- 

DROP TABLE IF EXISTS `CardSubtype`;
CREATE TABLE IF NOT EXISTS `CardSubtype` (
  `Card_Id` int(11) NOT NULL,
  `Subtype_Id` int(11) NOT NULL,
  PRIMARY KEY (`Card_Id`,`Subtype_Id`),
  KEY `Subtype_Id` (`Subtype_Id`),
  CONSTRAINT `CardSubtype_ibfk_1` FOREIGN KEY (`Card_Id`) REFERENCES `Card` (
`Id`),
  CONSTRAINT `CardSubtype_ibfk_2` FOREIGN KEY (`Subtype_Id`) REFERENCES `SubT
ype` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
