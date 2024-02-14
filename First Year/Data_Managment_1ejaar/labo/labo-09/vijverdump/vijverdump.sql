CREATE DATABASE  IF NOT EXISTS `sensors_actuators` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sensors_actuators`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sensors_actuators
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
-- Table structure for table `actie`
--

DROP TABLE IF EXISTS `actie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actie` (
  `actieId` int NOT NULL AUTO_INCREMENT,
  `actieBeschrijving` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`actieId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actie`
--

LOCK TABLES `actie` WRITE;
/*!40000 ALTER TABLE `actie` DISABLE KEYS */;
INSERT INTO `actie` VALUES (1,'Nazicht van  niveaus & apparaten'),(2,'Waterkwaliteit waarden bewaren'),(3,'Temperatuur waarde bewaren'),(4,'Aanschakelen actuator');
/*!40000 ALTER TABLE `actie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device`
--

DROP TABLE IF EXISTS `device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device` (
  `deviceId` int NOT NULL AUTO_INCREMENT,
  `naam` varchar(45) NOT NULL,
  `merk` varchar(45) DEFAULT NULL,
  `beschrijving` varchar(150) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `aankoopkost` float unsigned DEFAULT NULL,
  `meeteenheid` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`deviceId`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device`
--

LOCK TABLES `device` WRITE;
/*!40000 ALTER TABLE `device` DISABLE KEYS */;
INSERT INTO `device` VALUES (1,'LEVEL1','Waterniveaumeter','Submersible Water Level Transmitter',NULL,NULL,'mm'),(2,'NO2','Waterkwaliteit-Nitriet','Nitriet meter',NULL,NULL,'mg/l'),(3,'NO3','Waterkwaliteit-Nitraat','Nitraat meter',NULL,NULL,'mg/l'),(4,'GH','Waterkwaliteit-Hardheid','Total hardheid meter',NULL,NULL,'ppm'),(5,'dKH','Waterkwaliteit-Hardheid','Carbonaat hardheid meter',NULL,NULL,'ppm'),(6,'CL2','Waterkwaliteit-Chloor','Chloorgehalte analyser',NULL,NULL,'ppm'),(7,'TEMPW','Watertemperatuur','Professional Wireless Pool Thermometer',NULL,NULL,'°C'),(8,'TEMPB','Buitentemperatuurr','Digitale Temperatuur sensor',NULL,NULL,'°C'),(9,'UV','Algen bestrijding','Bitron Gravity UV lamp',NULL,NULL,NULL),(10,'FiLTER','Waterfilter','Biotec Screenmatic filter',NULL,NULL,NULL),(11,'POMP','Watertoevoer','AquaMax Eco Premium 12000 pomp',NULL,NULL,NULL);
/*!40000 ALTER TABLE `device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `excelsheet`
--

DROP TABLE IF EXISTS `excelsheet`;
/*!50001 DROP VIEW IF EXISTS `excelsheet`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `excelsheet` AS SELECT 
 1 AS `volgnummer`,
 1 AS `merk`,
 1 AS `beschrijving`,
 1 AS `naam`,
 1 AS `waarde`,
 1 AS `meeteenheid`,
 1 AS `datum`,
 1 AS `actiebeschrijving`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `gemiddelde sensor`
--

DROP TABLE IF EXISTS `gemiddelde sensor`;
/*!50001 DROP VIEW IF EXISTS `gemiddelde sensor`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `gemiddelde sensor` AS SELECT 
 1 AS `naam`,
 1 AS `gemiddelde`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `historiek`
--

DROP TABLE IF EXISTS `historiek`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historiek` (
  `volgnummer` int NOT NULL AUTO_INCREMENT,
  `datum` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `waarde` float DEFAULT NULL,
  `commentaar` varchar(150) DEFAULT NULL,
  `deviceId` int DEFAULT NULL,
  `actieId` int DEFAULT NULL,
  PRIMARY KEY (`volgnummer`),
  KEY `devideId_idx` (`deviceId`),
  KEY `actieId_idx` (`actieId`),
  CONSTRAINT `FK_historiek_actie` FOREIGN KEY (`actieId`) REFERENCES `actie` (`actieId`),
  CONSTRAINT `FK_historiek_device` FOREIGN KEY (`deviceId`) REFERENCES `device` (`deviceId`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historiek`
--

LOCK TABLES `historiek` WRITE;
/*!40000 ALTER TABLE `historiek` DISABLE KEYS */;
INSERT INTO `historiek` VALUES (4,'2023-02-01 00:00:00',NULL,NULL,1,1),(5,'2023-02-02 00:00:00',10,NULL,2,2),(6,'2023-02-03 00:00:00',9,NULL,3,2),(7,'2023-02-04 00:00:00',NULL,NULL,4,2),(8,'2023-02-05 00:00:00',NULL,NULL,5,2),(9,'2023-02-06 00:00:00',0.2,NULL,6,2),(10,'2023-02-07 00:00:00',6.3,NULL,7,3),(11,'2023-02-08 00:00:00',200,NULL,8,3),(12,'2023-02-09 00:00:00',0,NULL,1,1),(13,'2023-02-10 00:00:00',2,NULL,2,2),(14,'2023-02-11 00:00:00',200,NULL,3,2),(15,'2023-02-12 00:00:00',9.7,NULL,4,2),(16,'2023-02-13 00:00:00',9.5,NULL,5,2),(17,'2023-02-14 00:00:00',0.2,NULL,6,2),(18,'2023-02-15 00:00:00',6.3,NULL,7,3),(19,'2023-02-16 00:00:00',16,NULL,8,3),(20,'2023-02-17 00:00:00',0,NULL,1,1),(21,'2023-02-18 00:00:00',2.5,NULL,2,2),(22,'2023-02-19 00:00:00',199.7,NULL,3,2),(23,'2023-02-20 00:00:00',11.2,NULL,4,2),(24,'2023-02-21 00:00:00',9.8,NULL,5,2),(25,'2023-02-22 00:00:00',0.2,NULL,6,2),(26,'2023-02-23 00:00:00',6.3,NULL,7,3),(27,'2023-02-24 00:00:00',16.5,NULL,8,3),(28,'2023-02-25 00:00:00',0,NULL,1,1),(29,'2023-02-26 00:00:00',3,NULL,2,2),(30,'2023-02-27 00:00:00',199.8,NULL,3,2),(31,'2023-02-28 00:00:00',10,NULL,4,2),(32,'2023-03-01 00:00:00',9.9,NULL,5,2),(33,'2023-03-02 00:00:00',0.2,NULL,6,2),(34,'2023-03-03 00:00:00',6.3,NULL,7,3),(35,'2023-03-04 00:00:00',16.6,NULL,8,3),(36,'2023-03-05 00:00:00',0.1,NULL,1,1),(37,'2023-03-06 00:00:00',3.5,NULL,2,2),(38,'2023-03-07 00:00:00',200.9,NULL,3,2),(39,'2023-03-08 00:00:00',9,NULL,4,2),(40,'2023-03-09 00:00:00',10.3,NULL,5,2),(41,'2023-03-10 00:00:00',0.2,NULL,6,2),(42,'2023-03-11 00:00:00',6.3,NULL,7,3),(43,'2023-03-12 00:00:00',16.6,NULL,8,3),(44,'2023-03-13 00:00:00',0.1,NULL,1,1),(45,'2023-03-14 00:00:00',4.5,NULL,2,2),(46,'2023-03-15 00:00:00',200,NULL,3,2),(47,'2023-03-16 00:00:00',8,NULL,4,2),(48,'2023-03-17 00:00:00',10.5,NULL,5,2),(49,'2023-03-18 00:00:00',0.2,NULL,6,2),(50,'2023-03-19 00:00:00',6.3,NULL,9,4),(51,'2023-03-20 00:00:00',17,NULL,10,4),(52,'2023-03-21 00:00:00',0.1,NULL,7,3),(53,'2023-03-22 00:00:00',5,NULL,8,3),(54,'2023-03-23 00:00:00',199.8,NULL,11,4);
/*!40000 ALTER TABLE `historiek` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `excelsheet`
--

/*!50001 DROP VIEW IF EXISTS `excelsheet`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `excelsheet` AS select `h`.`volgnummer` AS `volgnummer`,`d`.`merk` AS `merk`,`d`.`beschrijving` AS `beschrijving`,`d`.`naam` AS `naam`,`h`.`waarde` AS `waarde`,`d`.`meeteenheid` AS `meeteenheid`,`h`.`datum` AS `datum`,`a`.`actieBeschrijving` AS `actiebeschrijving` from ((`historiek` `h` join `device` `d` on((`d`.`deviceId` = `h`.`deviceId`))) join `actie` `a` on((`a`.`actieId` = `h`.`actieId`))) order by `h`.`volgnummer` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `gemiddelde sensor`
--

/*!50001 DROP VIEW IF EXISTS `gemiddelde sensor`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `gemiddelde sensor` AS select `d`.`naam` AS `naam`,round(avg(`h`.`waarde`),2) AS `gemiddelde` from (`device` `d` join `historiek` `h` on((`d`.`deviceId` = `h`.`deviceId`))) where (`h`.`waarde` is not null) group by `d`.`naam` order by `d`.`naam` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-25 11:11:44
