-- 
-- Structure for table `CardType`
-- 

DROP TABLE IF EXISTS `CardType`;
CREATE TABLE IF NOT EXISTS `CardType` (
  `Card_Id` int(11) NOT NULL,
  `Type_Id` int(11) NOT NULL,
  PRIMARY KEY (`Card_Id`,`Type_Id`),
  KEY `Type_Id` (`Type_Id`),
  CONSTRAINT `CardType_ibfk_1` FOREIGN KEY (`Card_Id`) REFERENCES `Card` (`Id
`),
  CONSTRAINT `CardType_ibfk_2` FOREIGN KEY (`Type_Id`) REFERENCES `Type` (`Id
`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
