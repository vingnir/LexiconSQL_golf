--- Lexicon SQL Golf Cup ---
-- drop database golf;
create database golf;
use database golf;

CREATE TABLE `player` (
  `pnr` varchar(13),
  `name` varchar(30),
  `age` int, 
  PRIMARY KEY (`pnr`)
) ENGINE=InnoDB; 

CREATE TABLE `competition` (
  `competition_name` varchar(13),
  `date` varchar(30),
  PRIMARY KEY (`competition_name`)
) ENGINE=InnoDB;  
--  CREATE INDEX index_name ON table_name (column1, column2, ...);
-- ALTER TABLE `table` ADD UNIQUE INDEX `name` (`username`, `date`);
 
CREATE TABLE `jacket` (
  `initials` varchar(3),
  `size` varchar(10),
  `material` varchar(10),
  PRIMARY KEY (`initials`)
) ENGINE=InnoDB;  

CREATE TABLE `club` (
  `nr` int,
  `material` varchar(30),
  PRIMARY KEY (`nr`)
) ENGINE=InnoDB;  

CREATE TABLE `construction` (
  `serial_nr` int,
  `hardness` varchar(10),
  PRIMARY KEY (`serial_nr`)
) ENGINE=InnoDB;  

CREATE TABLE `rain` (
  `type` varchar(30),
  `wind_strenght` varchar(30),
  PRIMARY KEY (`type`)
) ENGINE=InnoDB;  

--joined tables
CREATE TABLE `participate` (
  `player` varchar(30),
  `competition` varchar(30),
) ENGINE=InnoDB;  

CREATE TABLE `has` (
  `rain` varchar(30),
  `competition` varchar(30),
  `time` varchar(10),
) ENGINE=InnoDB;  
