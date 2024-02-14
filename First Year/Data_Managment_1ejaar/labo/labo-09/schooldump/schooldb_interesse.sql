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
-- Table structure for table `interesse`
--

DROP TABLE IF EXISTS `interesse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interesse` (
  `interesseid` int NOT NULL AUTO_INCREMENT,
  `studentid` int DEFAULT NULL,
  `domeinid` int DEFAULT NULL,
  PRIMARY KEY (`interesseid`),
  KEY `FK_student_account_idx` (`studentid`),
  KEY `FK_programmeertaal_account_idx` (`domeinid`),
  CONSTRAINT `FK_domein_interesse` FOREIGN KEY (`domeinid`) REFERENCES `domein` (`domeinid`),
  CONSTRAINT `FK_student_interesse` FOREIGN KEY (`studentid`) REFERENCES `student` (`studentid`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interesse`
--

LOCK TABLES `interesse` WRITE;
/*!40000 ALTER TABLE `interesse` DISABLE KEYS */;
INSERT INTO `interesse` VALUES (1,1,NULL),(2,2,1),(3,3,2),(4,3,3),(5,3,1),(6,4,4),(7,4,5),(8,4,6),(9,5,NULL),(10,6,7),(11,6,8),(12,7,4),(13,7,2),(14,8,9),(15,9,5),(16,10,2),(17,10,10),(18,11,10),(19,12,6),(20,13,5),(21,14,8),(22,14,2),(23,14,11),(24,15,6),(25,16,12),(26,17,NULL),(27,18,NULL),(28,19,NULL),(29,20,9),(30,20,13),(31,21,7),(32,21,8),(33,21,4),(34,21,5),(35,21,12),(36,22,11),(37,22,3),(38,23,8),(39,23,6),(40,24,NULL),(41,25,8),(42,26,11),(43,26,6),(44,27,NULL),(45,28,9),(46,28,4),(47,28,10),(48,29,NULL),(49,30,8),(50,31,NULL),(51,32,5),(52,32,6),(53,32,10),(54,33,9),(55,33,6),(56,34,1),(57,35,7),(58,35,4),(59,35,5),(60,35,11),(61,36,7),(62,36,11),(63,36,1),(64,37,9),(65,37,2),(66,38,12),(67,39,3),(68,40,5),(69,40,13),(70,41,5),(71,41,2),(72,41,1),(73,42,7),(74,42,10),(75,42,13),(76,43,11),(77,44,9),(78,45,4),(79,46,8),(80,46,13),(81,47,7),(82,47,4),(83,47,12),(84,47,3),(85,48,9),(86,48,4),(87,48,5),(88,48,2),(89,49,8),(90,49,5),(91,50,9),(92,50,4),(93,51,10),(94,52,3),(95,53,4),(96,54,13),(97,55,7),(98,55,2),(99,55,10),(100,55,13),(101,56,11),(102,57,11),(103,58,12),(104,59,7),(105,60,7),(106,60,1),(107,61,10),(108,62,4),(109,63,2),(110,64,7),(111,64,5),(112,65,6),(113,65,13),(114,66,10),(115,67,NULL),(116,68,8),(117,68,3),(118,69,12),(119,69,11),(120,70,4),(121,71,11),(122,71,1),(123,72,5),(124,73,5),(125,73,2),(126,74,NULL),(127,75,11),(128,75,10),(129,76,NULL),(130,77,11),(131,77,1),(132,78,8),(133,79,1),(134,80,9),(135,81,7),(136,82,8),(137,82,5),(138,83,5),(139,84,NULL),(140,85,8),(141,85,12),(142,86,13),(143,87,5),(144,87,3),(145,87,13),(146,88,4),(147,89,4),(148,89,5),(149,89,12),(150,89,3),(151,90,5),(152,91,7),(153,92,12),(154,93,4),(155,94,4),(156,94,2),(157,94,6),(158,95,9),(159,96,NULL),(160,97,2),(161,97,12),(162,98,12),(163,99,12),(164,100,9),(165,100,12);
/*!40000 ALTER TABLE `interesse` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-29 14:21:27
