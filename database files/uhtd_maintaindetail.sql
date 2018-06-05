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
-- Table structure for table `maintaindetail`
--

DROP TABLE IF EXISTS `maintaindetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maintaindetail` (
  `serialno` int(11) NOT NULL AUTO_INCREMENT,
  `formno` int(11) NOT NULL,
  `partno` varchar(10) NOT NULL,
  `mechanicid` varchar(10) NOT NULL,
  PRIMARY KEY (`serialno`),
  KEY `fk2_d_idx` (`partno`),
  KEY `fk3_d_idx` (`mechanicid`),
  KEY `fk3_d_idx1` (`formno`),
  CONSTRAINT `fk1_d` FOREIGN KEY (`formno`) REFERENCES `maintainlog` (`formno`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk2_d` FOREIGN KEY (`partno`) REFERENCES `part` (`partno`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk3_d` FOREIGN KEY (`mechanicid`) REFERENCES `staffmechanic` (`staffid`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maintaindetail`
--

LOCK TABLES `maintaindetail` WRITE;
/*!40000 ALTER TABLE `maintaindetail` DISABLE KEYS */;
INSERT INTO `maintaindetail` VALUES (6,1,'01','16mcmc53');
/*!40000 ALTER TABLE `maintaindetail` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-05 20:25:16
