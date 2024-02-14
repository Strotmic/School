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
-- Table structure for table `domein`
--

DROP TABLE IF EXISTS `domein`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `domein` (
  `domeinid` int NOT NULL AUTO_INCREMENT,
  `naam` varchar(45) DEFAULT NULL,
  `categorie` varchar(45) DEFAULT NULL,
  `beschrijving` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`domeinid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domein`
--

LOCK TABLES `domein` WRITE;
/*!40000 ALTER TABLE `domein` DISABLE KEYS */;
INSERT INTO `domein` VALUES (1,'C#','Programmeren','Een programmeertaal is een formele taal waarin de opdrachten die een computer moet uitvoeren, worden geschreven. Deze talen hebben een andere syntaxis en grammatica dan natuurlijke talen. Deze laatste zijn te complex en ambigu om als programmeertaal te f...'),(2,'Javascript','Frontend','JavaScript is een veelgebruikte scripttaal om webpagina\'s interactief te maken en webapplicaties te ontwikkelen. Het script wordt middels HTML overgebracht in de webbrowser en wordt hierin uitgevoerd.'),(3,'Python','Programmeren','Python is een programmeertaal die begin jaren 90 ontworpen en ontwikkeld werd door Guido van Rossum, destijds verbonden aan het Centrum voor Wiskunde en Informatica (daarvoor Mathematisch Centrum) in Amsterdam. De taal is mede gebaseerd op inzichten van ...'),(4,'MariaDB','Backend','MariaDB is een relationeel databasemanagementsysteem (RDBMS). Het ontstond als opensource-fork van MySQL. MariaDB is grotendeels compatibel met MySQL. MariaDB wordt geschreven in C, C++ en Perl en wordt beschikbaar gesteld onder de voorwaarden van de GPL'),(5,'Access','Backend','Microsoft Access is een relationele database-applicatie van Microsoft Office.'),(6,'Bootstrap','Frontend','Bootstrap is een verzameling hulpmiddelen voor het maken van websites en webtoepassingen. Het is gratis en open source. Het bevat sjablonen gebaseerd op HTML en CSS voor typografie, formulieren, knoppen, navigatie en andere interfaceonderdelen. Het bevat...'),(7,'MySQL','Backend','MySQL is een propriëtair opensource-managementsysteem voor relationele databases (RDBMS). SQL is de taal die wordt gebruikt om een database van dit systeem op te bouwen, te bevragen en te onderhouden. MySQL werd allereerst vooral gebruikt voor internett...'),(8,'Oracle','Backend','Oracle Database is een databasemanagementsysteem (RDBMS) en vlaggenschip van Oracle. Oracle RDBMS was de eerste database gebaseerd op het System/R-model van IBM en de eerste relationele database die gebruikmaakt van SQL'),(9,'MSSQL','Backend','Microsoft SQL Server is een relationeel databasebeheersysteem ontwikkeld door Microsoft. Het ondersteunt een dialect van SQL, de meest gebruikte databasetaal. Het wordt algemeen gebruikt door organisaties voor kleine tot middelgrote datab'),(10,'GUI','Design','Een grafische gebruikersomgeving (ook wel aangeduid met het Engelse Graphical User Interface, afgekort GUI, vaak uitgesproken als \"goewie\") is een manier van interactie met een computer waarbij grafische beelden, widgets en tekst gebruikt worden.'),(11,'React','Frontend','React makes it painless to create interactive UIs. Design simple views for each state in your application, and React will efficiently update and render just the right components when your data changes.'),(12,'Angular','Frontend','Angular is de opvolger van AngularJS, en is geheel opnieuw ontworpen. Vaak wordt de term Angular 2 gebruikt omdat er anders verwarring ontstaat met AngularJS. Angular is een raamwerk voor het bouwen van cliënttoepassingen in HTML en JavaScript of een ta...'),(13,'Java','Programmeren','Java is een objectgeoriënteerde programmeertaal. Java is een platformonafhankelijke taal die qua syntaxis grotendeels gebaseerd is op de (eveneens objectgeoriënteerde) programmeertaal C++. Java beschikt echter over een uitgebreidere klassenbibliotheek ...');
/*!40000 ALTER TABLE `domein` ENABLE KEYS */;
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
