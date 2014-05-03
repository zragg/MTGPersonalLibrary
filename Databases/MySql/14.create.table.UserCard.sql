-- 
-- Structure for table `UserCard`
-- 

DROP TABLE IF EXISTS `UserCard`;
CREATE TABLE IF NOT EXISTS `UserCard` (
  `User_Id` int(11) NOT NULL,
  `EditionCard_Id` int(11) NOT NULL,
  `PhysicalState_Id` int(11) NOT NULL,
  `PhysicalType_Id` int(11) NOT NULL,
  KEY `User_Id` (`User_Id`),
  KEY `EditionCard_Id` (`EditionCard_Id`),
  KEY `PhysicalState_Id` (`PhysicalState_Id`),
  KEY `PhysicalType_Id` (`PhysicalType_Id`),
  CONSTRAINT `UserCard_ibfk_1` FOREIGN KEY (`User_Id`) REFERENCES `User` (`Id
`),
  CONSTRAINT `UserCard_ibfk_2` FOREIGN KEY (`EditionCard_Id`) REFERENCES `Edi
tionCard` (`Id`),
  CONSTRAINT `UserCard_ibfk_3` FOREIGN KEY (`PhysicalState_Id`) REFERENCES `P
ysicalState` (`Id`),
  CONSTRAINT `UserCard_ibfk_4` FOREIGN KEY (`PhysicalType_Id`) REFERENCES `Ph
ysicalType` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
