-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: schooldb
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `inschrijving`
--

DROP TABLE IF EXISTS `inschrijving`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inschrijving` (
  `inschrijvingid` int NOT NULL AUTO_INCREMENT,
  `studentid` int DEFAULT NULL,
  `opleidingid` int DEFAULT NULL,
  PRIMARY KEY (`inschrijvingid`),
  UNIQUE KEY `studentid_UNIQUE` (`studentid`),
  KEY `FK_student_inschrijving_idx` (`studentid`),
  KEY `FK_opleiding_inschrijving_idx` (`opleidingid`),
  CONSTRAINT `FK_opleiding_inschrijving` FOREIGN KEY (`opleidingid`) REFERENCES `opleiding` (`opleidingid`),
  CONSTRAINT `FK_student_inschrijving` FOREIGN KEY (`studentid`) REFERENCES `student` (`studentid`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inschrijving`
--

LOCK TABLES `inschrijving` WRITE;
/*!40000 ALTER TABLE `inschrijving` DISABLE KEYS */;
INSERT INTO `inschrijving` VALUES (1,2,1),(2,6,1),(3,10,1),(4,23,1),(5,31,1),(6,41,1),(7,42,1),(8,64,1),(9,68,1),(10,74,1),(11,83,1),(12,85,1),(13,98,1),(14,100,1),(15,3,2),(16,4,2),(17,7,2),(18,11,2),(19,13,2),(20,14,2),(21,43,2),(22,48,2),(23,51,2),(24,61,2),(25,62,2),(26,66,2),(27,70,2),(28,72,2),(29,80,2),(30,81,2),(31,82,2),(32,84,2),(33,86,2),(34,87,2),(35,88,2),(36,89,2),(37,90,2),(38,91,2),(39,92,2),(40,93,2),(41,94,2),(42,95,2),(43,96,2),(44,97,2),(45,1,3),(46,5,3),(47,8,3),(48,9,3),(49,12,3),(50,16,3),(51,17,3),(52,18,3),(53,19,3),(54,24,3),(55,25,3),(56,26,3),(57,27,3),(58,28,3),(59,32,3),(60,33,3),(61,34,3),(62,35,3),(63,37,3),(64,38,3),(65,39,3),(66,44,3),(67,45,3),(68,46,3),(69,47,3),(70,50,3),(71,52,3),(72,53,3),(73,54,3),(74,55,3),(75,56,3),(76,57,3),(77,58,3),(78,59,3),(79,60,3),(80,63,3),(81,65,3),(82,67,3),(83,69,3),(84,71,3),(85,73,3),(86,75,3),(87,77,3),(88,79,3),(89,99,3);
/*!40000 ALTER TABLE `inschrijving` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-29 14:21:28
