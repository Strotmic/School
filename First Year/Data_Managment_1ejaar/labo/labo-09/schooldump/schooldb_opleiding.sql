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
-- Table structure for table `opleiding`
--

DROP TABLE IF EXISTS `opleiding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `opleiding` (
  `opleidingid` int NOT NULL AUTO_INCREMENT,
  `code` varchar(10) DEFAULT NULL,
  `naam` varchar(45) DEFAULT NULL,
  `beschrijving` varchar(150) DEFAULT NULL,
  `stad` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`opleidingid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opleiding`
--

LOCK TABLES `opleiding` WRITE;
/*!40000 ALTER TABLE `opleiding` DISABLE KEYS */;
INSERT INTO `opleiding` VALUES (1,'DAE','Digital Arts and Entertainment','DAE is uniek in Europa en bereidt studenten voor op het profiel van technical artist of artistic technologist','Kortrijk'),(2,'DEVINE','Digital Design and Development','Als deviner leef je digitaal en online. Je bent geboeid door design, motion graphics, code en digitale technologie.','Kortrijk'),(3,'MCT','Multimedia and Creative Technology','Na een stevige IT basis kies je een uitstroomprofiel: XR Developer, Next Web Developer, AI Engineer of IoT Engineer.','Kortrijk');
/*!40000 ALTER TABLE `opleiding` ENABLE KEYS */;
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
