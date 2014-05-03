-- 
-- Structure for table `User`
-- 

DROP TABLE IF EXISTS `User`;
CREATE TABLE IF NOT EXISTS `User` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) NOT NULL,
  `MCMLogin` varchar(255) NOT NULL,
  `MCMApiKey` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `isActive` bit(1) NOT NULL DEFAULT b'0',
  `isValidate` bit(1) NOT NULL DEFAULT b'0',
  `ApiKey` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `login` (`login`),
  UNIQUE KEY `MCMLogin` (`MCMLogin`),
  UNIQUE KEY `mail` (`mail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
