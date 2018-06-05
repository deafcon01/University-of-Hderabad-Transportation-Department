CREATE DATABASE  IF NOT EXISTS `uhtd` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `uhtd`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: uhtd
-- ------------------------------------------------------
-- Server version	5.7.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `reservevehicle`
--

DROP TABLE IF EXISTS `reservevehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservevehicle` (
  `formno` int(11) NOT NULL,
  `staffid` varchar(10) DEFAULT NULL,
  `deptid` varchar(10) DEFAULT NULL,
  `vehicleno` varchar(10) DEFAULT NULL,
  `bookingdate` date NOT NULL,
  `bookingtime` time NOT NULL,
  `destination` varchar(30) NOT NULL,
  `purpose` varchar(30) NOT NULL,
  `driverstaffid` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`formno`),
  KEY `fk1_reserve_idx` (`staffid`),
  KEY `fk2_reserve_idx` (`deptid`),
  KEY `fk3_reserve_idx` (`vehicleno`),
  KEY `fk4_reserve_idx` (`driverstaffid`),
  CONSTRAINT `fk1_reserve` FOREIGN KEY (`staffid`) REFERENCES `staff` (`staffid`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk2_reserve` FOREIGN KEY (`deptid`) REFERENCES `department` (`deptid`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk3_reserve` FOREIGN KEY (`vehicleno`) REFERENCES `vehicle` (`registrationno`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk4_reserve` FOREIGN KEY (`driverstaffid`) REFERENCES `staffdriver` (`staffid`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservevehicle`
--

LOCK TABLES `reservevehicle` WRITE;
/*!40000 ALTER TABLE `reservevehicle` DISABLE KEYS */;
INSERT INTO `reservevehicle` VALUES (1,'16mcmc29','01','dl01ab7441','2017-11-01','11:00:00','bangalore','seminar','16mcmc50');
/*!40000 ALTER TABLE `reservevehicle` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-05 20:25:15
