--  Lexicon SQL Golf Cup --

drop database golf;
create database golf;
USE golf;

-- checked
CREATE TABLE `player` (
  `pnr` varchar(13) NOT NULL UNIQUE,
  `name` varchar(30) NOT NULL,
  `age` int NOT NULL, 
  PRIMARY KEY (`pnr`)
) ENGINE=InnoDB; 

-- checked
CREATE TABLE `competition` (
  `competition_name` varchar(30) NOT NULL UNIQUE,
  `date` varchar(30) NOT NULL,
  PRIMARY KEY (`competition_name`)
) ENGINE=InnoDB;  


-- checked
CREATE TABLE `jacket` (
  `initials` varchar(3) NOT NULL,
  `size` varchar(10) NOT NULL,
  `material` varchar(10) NOT NULL,
  `pnr` varchar(13) NOT NULL,
  PRIMARY KEY (`pnr`,`initials`),
  FOREIGN KEY(`pnr`) references player(pnr)
  ON DELETE CASCADE
) ENGINE=InnoDB;  

-- checked
CREATE TABLE `construction` (
  `serial_nr` int NOT NULL AUTO_INCREMENT,
  `hardness` varchar(10) NOT NULL,
  PRIMARY KEY (`serial_nr`)
) ENGINE=InnoDB;  

-- checked 
CREATE TABLE `club` (
  `nr` int NOT NULL AUTO_INCREMENT,
  `material` varchar(30) NOT NULL,
  `pnr` varchar(13) NOT NULL,
  `serial_nr` int NOT NULL,
  PRIMARY KEY (`nr`,`pnr`,`serial_nr`),
  FOREIGN KEY(`pnr`) references player(pnr),
  FOREIGN KEY(`serial_nr`) references construction(`serial_nr`)
  ON DELETE CASCADE
) ENGINE=InnoDB;  


-- checked
CREATE TABLE `rain` (
  `type` varchar(20) NOT NULL,
  `wind_strength` varchar(10) NOT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB;  


-- checked
-- N-M Control
CREATE TABLE `competition_rain` (
  `time` varchar(10) NOT NULL,
  `type` varchar(13) NOT NULL,
  `competition_name` varchar(30) NOT NULL,
  FOREIGN KEY(`competition_name`) REFERENCES competition(competition_name),
  FOREIGN KEY(`type`) REFERENCES rain(`type`)
  ON DELETE CASCADE
) ENGINE=InnoDB;  

-- N-M Control
-- checked
CREATE TABLE `competition_players` (
  `pnr` varchar(13) NOT NULL,
  `competition_name` varchar(30) NOT NULL,
  FOREIGN KEY(`pnr`) REFERENCES player(`pnr`),
  FOREIGN KEY(`competition_name`) REFERENCES competition(competition_name)
  ON DELETE CASCADE
) ENGINE=InnoDB;  



