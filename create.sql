--  Lexicon SQL Golf Cup --

drop database golf;
create database golf;
USE golf;

-- checked
CREATE TABLE `Player` (
  `pnr` varchar(13) NOT NULL UNIQUE,
  `name` varchar(30) NOT NULL,
  `age` int NOT NULL, 
  PRIMARY KEY (`pnr`)
) ENGINE=InnoDB; 

-- checked
CREATE TABLE `Competition` (
  `competition_name` varchar(30) NOT NULL UNIQUE,
  `date` varchar(30) NOT NULL,
  PRIMARY KEY (`competition_name`)
) ENGINE=InnoDB;  


-- checked
CREATE TABLE `Jacket` (
  `initials` varchar(3) NOT NULL,
  `size` varchar(10) NOT NULL,
  `material` varchar(10) NOT NULL,
  `pnr` varchar(13) NOT NULL,
  PRIMARY KEY (`pnr`,`initials`),
  FOREIGN KEY(`pnr`) references Player(pnr)
) ENGINE=InnoDB;  

-- checked
CREATE TABLE `Construction` (
  `serial_nr` int NOT NULL AUTO_INCREMENT,
  `hardness` varchar(10) NOT NULL,
  PRIMARY KEY (`serial_nr`)
) ENGINE=InnoDB;  

-- checked 
CREATE TABLE `Club` (
  `nr` int NOT NULL AUTO_INCREMENT,
  `material` varchar(30) NOT NULL,
  `pnr` varchar(13) NOT NULL,
  `serial_nr` int NOT NULL,
  PRIMARY KEY (`nr`,`pnr`,`serial_nr`),
  FOREIGN KEY(`pnr`) references Player(pnr),
  FOREIGN KEY(`serial_nr`) references Construction(`serial_nr`)
) ENGINE=InnoDB;  


-- checked
CREATE TABLE `Rain` (
  `type` varchar(20) NOT NULL,
  `wind_strength` varchar(10) NOT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB;  


-- checked
-- N-M Control
CREATE TABLE `Competition_rain` (
  `time` varchar(10) NOT NULL,
  `type` varchar(13) NOT NULL,
  `competition_name` varchar(30) NOT NULL,
  FOREIGN KEY(`competition_name`) REFERENCES Competition(competition_name),
  FOREIGN KEY(`type`) REFERENCES Rain(`type`) 
) ENGINE=InnoDB;  

-- N-M Control
-- checked
CREATE TABLE `Competition_Players` (
  `pnr` varchar(13) NOT NULL,
  `competition_name` varchar(30) NOT NULL,
  FOREIGN KEY(`pnr`) REFERENCES Player(`pnr`),
  FOREIGN KEY(`competition_name`) REFERENCES Competition(competition_name) 
) ENGINE=InnoDB;  



