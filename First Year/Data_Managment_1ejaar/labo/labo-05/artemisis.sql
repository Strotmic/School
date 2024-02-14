CREATE DATABASE  IF NOT EXISTS `artemis` /*!40100 DEFAULT CHARACTER SET latin1 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `artemis`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: artemis
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
-- Table structure for table `tblcategories`
--

DROP TABLE IF EXISTS `tblcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcategories` (
  `CategoryNumber` int NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(20) NOT NULL,
  `Description` varchar(50) NOT NULL,
  PRIMARY KEY (`CategoryNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcategories`
--

LOCK TABLES `tblcategories` WRITE;
/*!40000 ALTER TABLE `tblcategories` DISABLE KEYS */;
INSERT INTO `tblcategories` VALUES (1,'Dranken','Frisdranken, koffie, thee, donker en licht bier'),(2,'Kruiden','Zoete en hartige sausen, smaakmakers, spreads en s'),(3,'Zoetwaren','Desserts en snoep'),(4,'Zuivel','Kaas'),(5,'Graanproducten','Brood, crackers, pasta en andere graanproducten'),(6,'Vlees','Vleesproducten'),(7,'Fruit','Gedroogd fruit en tahoe'),(8,'Vis','Zeewier en vis');
/*!40000 ALTER TABLE `tblcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcustomers`
--

DROP TABLE IF EXISTS `tblcustomers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcustomers` (
  `CustomerId` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Zipcode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `City` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `RegistrationNumber` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Type` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Balance` double DEFAULT NULL,
  `Note` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`CustomerId`)
) ENGINE=InnoDB AUTO_INCREMENT=270 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcustomers`
--

LOCK TABLES `tblcustomers` WRITE;
/*!40000 ALTER TABLE `tblcustomers` DISABLE KEYS */;
INSERT INTO `tblcustomers` VALUES (1,'Artoos','Kleinappelstraat 17','3150','Haacht',NULL,'P',3,NULL),(2,'Roelants','Witteweg 24','3360','Korbeek-Lo',NULL,'P',25,NULL),(3,'Dierckx','Langeveld 18','3220','Holsbeek',NULL,'P',0,NULL),(4,'Azijn','Platte-lostraat 326','3010','Kessel-Lo',NULL,'R',18,NULL),(5,'Hoobergs','Koning Leopoldlaan 107','2260','Westerlo',NULL,'P',93,NULL),(6,'De Jonghe','Verbindingslaan 64','3001','Heverlee',NULL,'P',0,NULL),(7,'Camerlinckx','Slangenstraat 41','3010','Kessel-Lo',NULL,'P',18,NULL),(8,'Vanhentenrijk J.','Wilsonlaan 3','3010','Kessel-Lo',NULL,'P',0,NULL),(9,'Wijnants','Nachtegalenstraat 401','3210','Linden',NULL,'W',0,NULL),(10,'Dons','Papenstraat 4','3020','Veltem',NULL,'P',17,NULL),(11,'Symons','Minckelersstraat 19','3000','Leuven',NULL,'P',0,NULL),(12,'Verheyden','Boekhoutstraat 16','3390','Tielt-Winge',NULL,'P',0,NULL),(13,'Coopmans','Wilselsesteenweg 77','3020','Herent',NULL,'P',0,NULL),(14,'Crabbe','Weergalmlaan 612','3010','Kessel-Lo',NULL,'P',18,NULL),(15,'Daron','De Wijngaard  1','3020','Herent',NULL,'P',0,NULL),(16,'Stroobants','Horenweg 8','3390','Tielt-Winge',NULL,'P',0,NULL),(17,'Roofthooft','Broekmansstraat 10','2221','Booischot',NULL,'P',0,NULL),(18,'Antonneau','Baertlaan 21','3020','Winksele',NULL,'P',17,NULL),(19,'Hoobergs','Beukendreef 13','1820','Steenokkerzeel',NULL,'P',17,NULL),(20,'Vandewyer','Budingenweg 11','3440','Zoutleeuw',NULL,'P',0,NULL),(21,'Roelants','Wilselsesteenweg 284','3010','Kessel-Lo',NULL,'P',0,NULL),(22,'Van Wesemael','Dijlestraat 13','3140','Keerbergen',NULL,'P',0,NULL),(23,'Bastiaens','Beninkstraat 27','3111','Wezemaal',NULL,'P',18,NULL),(24,'Morrens','Koning Albertstraat 7','2800','Walem',NULL,'P',0,NULL),(25,'Vanhentenrijk K.','Heuvelstraat 101','3390','Tielt-Winge',NULL,'P',0,NULL),(26,'Roger','Leo Bosierlaan 28','3010','Kessel-Lo',NULL,'P',0,NULL),(27,'Huenaerts','Egenhovenstraat 32','3060','Bertem',NULL,'P',0,NULL),(28,'Van Der Sande','Werchtersesteenweg 92','3130','Betekom',NULL,'P',0,NULL),(29,'Van Meensel','Guldendellestraat 63','3070','Kortenberg',NULL,'P',0,NULL),(30,'Colla','Steenveldstraat 27','3210','Linden',NULL,'P',18,'Goederen kunnen enkel  \'s avonds geleverd worden.'),(31,'Deschepper','Platte-lostraat 224','3010','Kessel-Lo',NULL,'P',18,NULL),(32,'Beck','Jachtlaan 19','3001','Heverlee',NULL,'P',0,NULL),(33,'Monnaie','Langehof 3','3020','Herent',NULL,'P',0,NULL),(34,'Dirks','De Hand 7','2260','Westerlo',NULL,'P',18,NULL),(35,'Vandeput','Speelberg 6','3210','Linden',NULL,'P',0,NULL),(36,'Anthonissen','Haksberg 1','3390','Tielt-Winge',NULL,'P',18,NULL),(37,'Valckx','Paolalaan 7','1982','Elewijt',NULL,'P',0,NULL),(38,'Wuyts','Molenheidestraat 42','3201','Langdorp',NULL,'P',0,NULL),(39,'Vanhentenrijk D.','Beurt 2','3390','Tielt-Winge',NULL,'P',0,NULL),(40,'Keldermans','Klein Overlaar 38','3320','Hoegaarden',NULL,'P',0,NULL),(41,'Vangoedtsenhoven','Oplintersesteenweg 529','3300','Oplinter',NULL,'P',0,NULL),(42,'Van Langendonck','Molenveldplein 3','3010','Kessel-Lo',NULL,'P',0,NULL),(43,'Vandenbosch','Kerkstraat 64','3010','Kessel-Lo',NULL,'P',0,NULL),(44,'Vandermotte','Geldenaaksebaan 177','3001','Heverlee',NULL,'P',0,NULL),(45,'De Geest','Houtemstraat 151','3300','Tienen',NULL,'P',19,NULL),(46,'Vrancken','Oudebaan 131','3360','Korbeek-Lo',NULL,'P',0,NULL),(47,'Foulon','Kruisstraat 38','3390','Tielt-Winge',NULL,'P',18,NULL),(48,'Vandeputte','Beukendreef 6','1820','Steenokkerzeel',NULL,'P',0,NULL),(49,'Engelbosch','Beatrijslaan 108','3110','Rotselaar',NULL,'P',18,NULL),(50,'Verstraeten','Eeuwfeeststraat 37','3010','Kessel-Lo',NULL,'P',0,NULL),(51,'Ponsaerts','Familie de Cockstraat 27','3128','Baal',NULL,'P',0,NULL),(52,'Lenaerts','Leeuwerikenlaan 35','1150','Brussel',NULL,'P',0,NULL),(53,'Smeuninx','Celestijnenlaan 712','3001','Heverlee',NULL,'P',0,NULL),(54,'Benoit','Zonnestraat 22','1040','Brussel',NULL,'P',0,NULL),(55,'Henderix','Sint-Jansberg 31','3800','Sint-Truiden',NULL,'P',22,NULL),(56,'Paenhuysen','Sportpleinstraat 1','3440','Zoutleeuw',NULL,'P',0,NULL),(57,'Jacobs','Rue de Jodoigne 29','5940','Huppaye',NULL,'P',17,NULL),(58,'Peetermans','Stenenmolen 7','3270','Scherpenheuvel',NULL,'P',0,NULL),(59,'Dekeyser','Achturenstraat 28','3010','Kessel-Lo',NULL,'P',18,NULL),(60,'Sellekaerts','Leuvensesteenweg 195','3390','St.-Joris-Winge',NULL,'P',0,NULL),(61,'Vervaeck','Brouwersdreef 2','2820','Bonheiden',NULL,'P',0,NULL),(62,'Everaerts','Rodestraat 19','3220','St-Pieters-rode',NULL,'P',18,NULL),(63,'Haesevoets','Onze Lieve Vrouwstraat 157','3570','Alken',NULL,'P',0,NULL),(64,'Vanderhulst','Oude baan 65','3071','Erps-Kwerps',NULL,'P',0,NULL),(65,'Welkenhuysen','Arnauld Nobelstraat 218','3000','Leuven',NULL,'P',0,NULL),(66,'Van Eysendeyk','Swertmolenstraat 5','3020','Herent',NULL,'P',250,NULL),(67,'Helsen','Willy Coosemansstraat 200','3010','Kessel-Lo',NULL,'P',18,NULL),(68,'Wullus','\'s Hertogenwijngaard 13','3000','Leuven',NULL,'P',0,NULL),(69,'Vanhoef','Richard Valvekenstraat 45','3010','Kessel-Lo',NULL,'P',0,NULL),(70,'Buts','Albert Woutersstraat 65','3012','Wilsele',NULL,'P',17,NULL),(71,'Nys','Koning Albertlaan 89','3010','Kessel-Lo',NULL,'P',0,NULL),(72,'Vanhentenrijk L.','Bossestraat 16','3201','Langdorp',NULL,'P',0,NULL),(73,'Vanzavelberg','Ijzermolenstraat 154','3001','Heverlee',NULL,'P',0,NULL),(74,'Streignaerts','Tiensestraat 201','3000','Leuven',NULL,'P',0,NULL),(75,'Vermeulen','L. Ruelensstraat 12','3010','Kessel-Lo',NULL,'P',0,NULL),(76,'Verriest','Olivetenvest 372','2800','Mechelen',NULL,'P',0,NULL),(77,'Cantineaux','Het torentje 12','3000','Leuven',NULL,'P',17,NULL),(78,'Nijs','Herfstlaan 5','3010','Kessel-Lo',NULL,'P',0,NULL),(79,'Jong','Kortrijkstraat 1','3210','Linden',NULL,'P',18,NULL),(80,'Maes','Leuvensesteenweg 313','2800','Mechelen',NULL,'P',0,NULL),(81,'Vanouytsel','Broekstraat 29','3110','Rotselaar',NULL,'P',0,NULL),(82,'Veugelen','Houwaartseberg 207','3390','Houwaart',NULL,'P',0,NULL),(83,'Vandevelde','Tildonksesteenweg 179','3020','Herent',NULL,'P',0,NULL),(84,'Geebelen','Bosbergstraat 15','3320','Hoegaarden',NULL,'P',0,NULL),(85,'Verwylen','Nieuwstraat 12','3440','Zoutleeuw',NULL,'P',0,NULL),(86,'Vos','Smidsestraat 8','3010','Kessel-Lo',NULL,'P',0,NULL),(87,'Vantrappen','Esplanadelaan 13','3000','Leuven',NULL,'P',0,NULL),(88,'Crabbe','Merellaan 12','3210','Linden',NULL,'P',18,NULL),(89,'Janssens','Kerkweg 1','3370','Boutersem',NULL,'P',0,NULL),(90,'Vranckx','Steenveldstraat 16','3210','Linden',NULL,'P',0,NULL),(91,'Gielis','Brugstraat 4','3370','Boutersem',NULL,'P',0,NULL),(92,'Derde','Abdijlaan 40','3010','Kessel-Lo',NULL,'P',18,NULL),(93,'Henrioulle','Novemberlaan 96','3010','Kessel-Lo',NULL,'P',18,NULL),(94,'Dehertog','Hertogstraat 94','3001','Heverlee',NULL,'P',0,NULL),(95,'Verbist','Rommelaar 75','3202','Rillaar',NULL,'P',0,NULL),(96,'Verduyckt','Houwaartstraat 130','3210','Linden',NULL,'P',0,NULL),(97,'Bols','Wilselesteenweg 350','3220','Holsbeek',NULL,'P',0,NULL),(98,'Vandewiele','Broekstraat 138','3001','Heverlee',NULL,'P',0,NULL),(99,'Lenssen','Berenbroekstraat 37','3600','Genk',NULL,'P',0,NULL),(100,'Oversteyns','Vrouwvenusstraat 4','3201','Langdorp',NULL,'P',0,NULL),(101,'Cuyvers','Steenweg op Papenbroek 2','3290','Diest',NULL,'P',0,NULL),(102,'Wouters','Walenstraat 20','3110','Rotselaar',NULL,'P',0,NULL),(103,'Creten','Schoolstraat 3','3360','Bierbeek',NULL,'P',0,NULL),(104,'Smets','Houwaartstraat 83','3210','Linden',NULL,'P',0,NULL),(105,'Alma Mater','Schoolstraat 385','3020','Herent',NULL,'P',0,NULL),(106,'Sint-Mariainstituut','Zavelstraat 10','3001','Heverlee',NULL,'P',0,NULL),(107,'Coucheir','Pater Levenslaan 20','3010','Kessel-Lo',NULL,'P',18,NULL),(108,'Taels','Jan Davidtsstraat 71','3010','Kessel-Lo',NULL,'P',0,NULL),(109,'Janssens','Kruisstraat 11','3390','Tielt-Winge',NULL,'P',18,NULL),(110,'Scheys','Karel Schurmansstraat 45','3010','Kessel-Lo',NULL,'P',0,NULL),(111,'Vandersmissen','Nieuwstraat 24','3370','Boutersem',NULL,'P',0,NULL),(112,'Verstraeten','Berkelei 28','2860','Sint-Katelijne-waver',NULL,'P',0,NULL),(113,'Vandevijver','Lostraat 29','3212','Pellenberg',NULL,'P',0,NULL),(114,'Schaumont','Langeheide 86','3040','Ottenburg',NULL,'P',0,NULL),(115,'Philippe','Bankstraat 107','3000','Leuven',NULL,'P',0,NULL),(116,'Vanbekbergen','Wipstraat 39','3010','Kessel-Lo',NULL,'P',0,NULL),(117,'Goossens','Wambertstraat 24','1930','Zaventem',NULL,'P',0,NULL),(118,'Demeyer','Hazenfonteinstraat 57','3050','Oud-Heverlee',NULL,'P',17,NULL),(119,'Vanparijs','Hazenfonteinstraat  9','3050','Oud-Heverlee',NULL,'P',0,NULL),(120,'Decauwer','Kerkstraat 283','3010','Kessel-Lo',NULL,'P',18,NULL),(121,'Debraekeleer','Naamsesteenweg 21','3052','Blanden',NULL,'P',0,NULL),(122,'Cnops','Wijgmaalsesteenweg 108','3020','Herent',NULL,'P',0,NULL),(123,'Smets','Pastoor Dergentstraat 21','3200','Gelrode',NULL,'P',0,NULL),(124,'Cypers','Ter dennen 6','2390','Westmalle',NULL,'P',0,NULL),(125,'Dreesen','Diestsesteenweg 511','3010','Kessel-Lo',NULL,'P',18,NULL),(126,'Vanautgaerden','Regastraat 12','3000','Leuven',NULL,'P',0,NULL),(127,'Gellynck','Bondgenotenlaan 3','3000','Leuven',NULL,'P',17,NULL),(128,'Lacour','Regastraat 18','3000','Leuven',NULL,'P',0,NULL),(129,'Vanderroost','Regastraat 24','3000','Leuven',NULL,'P',0,NULL),(130,'Sermeus','Brugstraat 13','3118','Wakkerzeel',NULL,'P',0,NULL),(131,'Begine','Breugelhof 104','3300','Tienen',NULL,'P',19,NULL),(132,'Beersmans','Schubbeek 60','3210','Lubbeek',NULL,'P',18,NULL),(133,'Sint-Jozef','Schaluin 28','3200','Aarschot',NULL,'W',20,NULL),(134,'Damia','P. Dergentlaan 220','3200','Aarschot',NULL,'R',900,NULL),(135,'\'t Lekkerbekje','Prof. Scharpelaan 23','3130','Betekom',NULL,'T',880,NULL),(136,'Spar','Pastoor Pitetlaan 28','3130','Betekom',NULL,'W',20,NULL),(137,'Natuurlijk','Peetersstraat 14','3290','Diest',NULL,'W',82,NULL),(138,'Mariëndal','Rozengaard 1','3290','Diest',NULL,'R',82,NULL),(139,'Utopia','Mariendaalstraat 44','3290','Diest',NULL,'R',925,NULL),(140,'Hemelbrood','Demerstraat 12','3290','Diest',NULL,'W',925,NULL),(141,'Manna','Demerstraat 12','3290','Diest',NULL,'W',82,NULL),(142,'Bij Diane','Stationsstraat 89','3150','Haacht',NULL,'W',886,NULL),(143,'Carpe Diem','Stationsstraat 91','3150','Haacht',NULL,'T',79,NULL),(144,'Tubex','Geldenaaksebaan 277','3001','Heverlee',NULL,'W',19,NULL),(145,'Vogelzang','Naamsesteenweg 355','3001','Heverlee',NULL,'W',19,NULL),(146,'Tabula rasa','Naamsesteenweg 355','3001','Heverlee',NULL,'R',844,NULL),(147,'De epicurist','Groenveldstraat 32','3001','Heverlee',NULL,'W',844,NULL),(148,'Zonnebloem','Naamsesteenweg 355','3001','Heverlee',NULL,'W',19,NULL),(149,'Veeweide','Tremelobaan 4','3140','Keerbergen',NULL,'W',39,NULL),(150,'Puur natuur','Jozef Pierrestraat 62','3010','Kessel-Lo',NULL,'W',151,NULL),(151,'Comme chez Jean-Luc','Diestsestraat 163','3000','Leuven',NULL,'R',150,NULL),(152,'Zwarte Dan','Sint-Jacobsplein 13','3000','Leuven',NULL,'R',1688,NULL),(153,'Sakura','Minderbroedersstraat 13','3000','Leuven',NULL,'R',38,NULL),(154,'Gezond en lekker','Oude Markt 28','3000','Leuven',NULL,'W',1688,NULL),(155,'De zevende hemel','Pater Damiaanplein 9','3000','Leuven',NULL,'R',150,NULL),(156,'Fijnkost','Tiensevest 60','3000','Leuven',NULL,'W',1688,NULL),(157,'Tempura','Dekenstraat 3','3000','Leuven',NULL,'R',38,NULL),(158,'Domus','Ch. Deberiotstraat 14','3000','Leuven',NULL,'R',1688,NULL),(159,'De Brabander','Ch. Deberiotstraat 14','3000','Leuven',NULL,'R',1688,NULL),(160,'Kosmos','Heuvelstraat 59-65','3090','Overijse',NULL,'W',154,NULL),(161,'Meirsman','Waversesteenweg 96','3090','Overijse',NULL,'T',39,NULL),(162,'Montfort','Aarschotsesteenweg 39','3110','Rotselaar',NULL,'T',156,NULL),(163,'Pan','Isabellaplein 15','3270','Scherpenheuvel',NULL,'W',164,NULL),(164,'Keizer Karel','Brusselsesteenweg 106','3080','Tervuren',NULL,'R',154,NULL),(165,'Bio-food','Broekstraat 31','3300','Tienen',NULL,'W',1857,NULL),(166,'The Great Wall','O.L.V.-Broedersstraat 2','3300','Tienen',NULL,'R',1857,NULL),(167,'Tubex','Waaibergstraat 93','3300','Tienen',NULL,'W',41,NULL),(168,'Bachus','Kruineikestraat 5','3150','Tildonk',NULL,'R',1772,NULL),(169,'De kiem','Markt 1','3440','Zoutleeuw',NULL,'W',1935,NULL),(170,'De waterman','Bethaniastraat 1','3440','Zoutleeuw',NULL,'W',1935,NULL),(171,'Fijn bikken','Molenberg 25','3400','Landen',NULL,'R',42,NULL),(172,'Wiering','Kloosterstraat 1','3400','Landen',NULL,'R',42,NULL),(173,'De vier seizoenen','Waverse Steenweg 1','3320','Hoegaarden',NULL,'R',934,NULL),(174,'De gedekte tafel','Burg. Geyskensstraat 11','3580','Beringen',NULL,'R',22,NULL),(175,'Amadeus','Hoogstraat 10','3580','Beringen',NULL,'R',1007,NULL),(176,'De witte Moor','Kloosterstraat 9','3740','Bilzen',NULL,'R',1052,NULL),(177,'Moolen','Sint-Lambertuslaan 15','3740','Bilzen',NULL,'T',94,NULL),(178,'Tafeltje dek je','Wijerstraat 28','3740','Bilzen',NULL,'T',23,NULL),(179,'\'t Boonje','Tongersesteenweg 84','3840','Borgloon',NULL,'R',1080,NULL),(180,'De vierschaar','Tongersesteenweg 84','3840','Borgloon',NULL,'R',1080,NULL),(181,'Bolleke','Witte Torenstraat 10','3960','Bree',NULL,'T',1114,NULL),(182,'Shogun','Stationsstraat 36','3590','Diepenbeek',NULL,'R',22,NULL),(183,'Saliën','Stationsstraat 36','3590','Diepenbeek',NULL,'T',22,NULL),(184,'Kermesse','Europalaan 10','3650','Dilsen-Stokkem',NULL,'R',91,NULL),(185,'Het groene blaadje','Dorpsstraat 30','3650','Dilsen-Stokkem',NULL,'R',1027,NULL),(186,'Romaans goud','Mosselerlaan 110','3600','Genk',NULL,'T',90,NULL),(187,'Tandra','Grotestraat 25','3600','Genk',NULL,'R',22,NULL),(188,'De ster','Binnenlaan 13','3600','Genk',NULL,'W',1013,NULL),(189,'Kokkerellen','Weg naar As 62','3600','Genk',NULL,'T',90,NULL),(190,'Mandala','Collegelaan 1','3600','Genk',NULL,'R',22,NULL),(191,'De zwarte pot','Collegelaan 30','3600','Genk',NULL,'R',1013,NULL),(192,'Verhaegen','Berm 12','3600','Genk',NULL,'T',22,NULL),(193,'Salvator','Collegestraat 25','3930','Hamont-Achel',NULL,'T',25,NULL),(194,'Natuur','Kleine Breemstraat 5','3500','Hasselt',NULL,'W',88,NULL),(195,'Macrobiotische voeding','Groenplein 6','3500','Hasselt',NULL,'W',88,NULL),(196,'Ying','Salvatorstraat 20','3500','Hasselt',NULL,'W',22,NULL),(197,'Bio-food','Guffenslaan 27','3500','Hasselt',NULL,'W',22,NULL),(198,'Jodokus','Maastrichtersteenweg 62','3500','Hasselt',NULL,'W',984,NULL),(199,'Alfred','Kempensesteenweg 400','3500','Hasselt',NULL,'T',88,NULL),(200,'Kwak','Kempensesteenweg 400','3500','Hasselt',NULL,'W',88,NULL),(201,'Voeding Kris','Paardskerkhofstraat 20','3870','Heers',NULL,'W',24,NULL),(202,'De zonnebloem','Don Boscostraat 6','3530','Helchteren',NULL,'W',993,NULL),(203,'Lucifer','Diestsesteenweg 7','3540','Herk-de-Stad',NULL,'R',88,NULL),(204,'Amandina','Sint-Truidensesteenweg 18','3540','Herk-de-Stad',NULL,'R',996,NULL),(205,'Minnen','Minderbroedersstraat 9-11','3550','Heusden-Zolder','BTW BE 0675.002.214','T',89,NULL),(206,'Troef','Dorpsstraat 18','3730','Hoeselt',NULL,'T',23,NULL),(207,'Vier tafels','Lyceumstraat 11','3530','Houthalen-Helchteren','BTW BE 0674.051.713','R',22,NULL),(208,'De paddestoel','Herebaan-West 41','3530','Houthalen-Helchteren',NULL,'R',993,NULL),(209,'Bio-voeding','Kloosterstraat 11','3640','Kinrooi',NULL,'W',2048,NULL),(210,'Gezond en fit','Stationsstraat 232','3620','Lanaken',NULL,'W',2036,NULL),(211,'Gym-center De trillende spier','Bessemerstraat 443','3620','Lanaken',NULL,'R',2036,NULL),(212,'Fitness-centrum Jabber','Koning Albertlaan 26','3620','Lanaken','BTW BE 0425.902.650','R',2037,NULL),(213,'Het karrewiel','Diestsesteenweg 3','3970','Leopoldsburg',NULL,'R',2233,NULL),(214,'Ter duinen','Duinenstraat 1','3920','Lommel',NULL,'R',49,NULL),(215,'Ginseng','Gemeenteplein 7','3560','Lummen',NULL,'W',2003,NULL),(216,'Anders gaan eten','Sint-Jansberg 39','3680','Maaseik',NULL,'W',46,NULL),(217,'Vrij leven','Eerste Straat 19','3680','Maaseik',NULL,'T',46,NULL),(218,'Marc en Andrea','Looheuvelstraat 1','3630','Maasmechelen','BTW BE 0412.798.544','W',182,NULL),(219,'Kieskeurig','Parklaan 3','3630','Maasmechelen',NULL,'W',182,NULL),(220,'Kolesterol','Rijksweg 357','3630','Maasmechelen',NULL,'T',2042,NULL),(221,'Barbara','Kastanjelaan 59','3630','Maasmechelen',NULL,'W',2042,NULL),(222,'Pastorale','Europaplein 36','3630','Eisden',NULL,'R',91,NULL),(223,'Levenslang','Appelboomgaardstraat 2','3740','Munsterbilzen',NULL,'R',187,NULL),(224,'Cinderella','Stationsstraat 74','3910','Neerpelt',NULL,'R',2200,NULL),(225,'Agnetendal','Kloosterstraat 27','3990','Peer',NULL,'R',2244,NULL),(226,'Tuiter','Gildestraat 22','3800','Sint-Truiden',NULL,'T',48,NULL),(227,'Ursula','Naamsestraat 5','3800','Sint-Truiden',NULL,'R',48,NULL),(228,'Komkommertijd','Weg naar Diest 146','3800','Sint-Truiden',NULL,'W',48,NULL),(229,'Kruiden Sint Truiden','Diesterstraat 1','3800','Sint-Truiden',NULL,'W',190,NULL),(230,'Trudo','Schepen Dejongstraat 16','3800','Sint-Truiden',NULL,'W',48,NULL),(231,'Van Gogh','Plankstraat 11','3800','Sint-Truiden',NULL,'W',48,NULL),(232,'Het stille water','Hasseltsedreef 115','3512','Stevoort',NULL,'R',1976,NULL),(233,'Vegetarische voeding','Stationsstraat 36','3980','Tessenderlo',NULL,'W',50,NULL),(234,'Totaalvoeding','Rode Kruislaan 27','3700','Tongeren',NULL,'W',46,NULL),(235,'Bio-centrum','Watertorenstraat 5','3700','Tongeren',NULL,'W',2081,NULL),(236,'Torenhof','Sint-Truidensteenweg 17','3700','Tongeren',NULL,'R',46,NULL),(237,'Het Santé Boetiekje','Sint-Jansstraat 11','3700','Tongeren',NULL,'W',2082,NULL),(238,'Decamerone','Kasteelstraat 53','3800','Zepperen',NULL,'R',2138,NULL),(239,'Hof ter Zonne','Engstegenseweg 1','3520','Zonhoven',NULL,'R',44,NULL),(240,'Natuurvoeding Alice','Kleine Hemmenweg 4A','3520','Zonhoven',NULL,'W',176,NULL),(241,'\'t Graafschap','Berneauweg 163E','3798','\'s Gravenvoeren',NULL,'R',1068,NULL),(242,'Vogelzang','Schoolstraat 1','3200','Aarschot','BTW BE 0589.547.093','R',20,NULL),(243,'Ja natuurlijk','Boudewijnvest 5','3290','Diest',NULL,'W',926,NULL),(244,'Nectar','Ferdinand Allenstraat 3','3290','Diest','BTW BE 0518.297.130','W',82,NULL),(245,'Waasland','Vlieghavenlaan 18','3140','Keerbergen',NULL,'W',39,NULL),(246,'Verbeken','Rerum Novarumlaan 5','3010','Kessel-Lo (Leuven)',NULL,'T',38,NULL),(247,'Verhaert','Redingenstraat 90','3000','Leuven','BTW BE 0431.365.532','T',38,NULL),(248,'Smakelijk','Waversesteenweg 41','3090','Overijse',NULL,'W',39,NULL),(249,'Mede','Tiensestraat 57','3400','Landen',NULL,'W',170,NULL),(250,'Het koninginnehapje','Sint Margrietstraat 13','3582','Koersel',NULL,'W',179,NULL),(251,'De erwt van de prinses','Vildersstraat 28','3500','Hasselt',NULL,'R',88,NULL),(252,'Cargo','Vildersstraat 3','3500','Hasselt','BTW BE 0437.765.156','T',985,NULL),(253,'Dauwtrip','Koning Boudewijnlaan 12','3500','Hasselt',NULL,'W',985,NULL),(254,'Hungry Hagar','Huidevettersstraat 3','3530','Houthalen-Helchteren',NULL,'R',993,NULL),(255,'Sofie\'s keuze','Koning Albertlaan 58','3620','Lanaken',NULL,'R',181,NULL),(256,'De weegschaal','Atheneumstraat 2','3970','Leopoldsburg','BTW BE 0411.933.858','W',2234,NULL),(257,'Swertmolen','Mudakkers 25','3920','Lommel',NULL,'R',49,NULL),(258,'Voeding Kathy','Moerenstraat 4','3700','Tongeren',NULL,'W',46,NULL),(259,'Levet Scone','Albertvest 86','3300','Tienen','BTW BE 0403.048.262','W',165,NULL),(260,'Gezonde voeding','Weerstandsplein 1','3290','Diest',NULL,'W',926,NULL),(261,'Alternatief eten','Hasseltweg 383','3600','Genk','BTW BE 0523.532.754','R',1013,NULL),(262,'De wereldbol','Maastrichterstraat 10','3700','Tongeren',NULL,'R',2082,NULL),(263,'Au point','Stationsstraat 125','3980','Tessenderlo','BTW BE 0402.220.594','R',199,NULL),(264,'Bien cuit','Elfde Liniestraat 22','3500','Hasselt',NULL,'R',88,NULL),(265,'Saignant','Waaiberg 5','3300','Tienen',NULL,'R',1856,NULL),(266,'De lemming','Herestraat 53','3000','Leuven','BTW BE 0402.963.833','T',150,NULL),(267,'Hera','Millenstraat 16','3960','Bree',NULL,'T',99,NULL),(268,'Degreef P.','Smoldersplein 3','3000','Leuven',NULL,'P',17,NULL),(269,'Lago','Nelson Mandelaplein 19','8500','Kortrijk',NULL,'T',300,NULL);
/*!40000 ALTER TABLE `tblcustomers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblemployees`
--

DROP TABLE IF EXISTS `tblemployees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblemployees` (
  `EmployeeID` int NOT NULL AUTO_INCREMENT,
  `LastName` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `FirstName` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Address` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `City` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ZipCode` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Phone` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `JobTitle` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Wage` int DEFAULT NULL,
  `Superior` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `DeviceNumber` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Car` tinyint(1) NOT NULL,
  `Employed` datetime(6) DEFAULT NULL,
  `BirthDate` datetime(6) DEFAULT NULL,
  `Gender` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Picture` longblob,
  `Details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`EmployeeID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblemployees`
--

LOCK TABLES `tblemployees` WRITE;
/*!40000 ALTER TABLE `tblemployees` DISABLE KEYS */;
INSERT INTO `tblemployees` VALUES (1,'Davidson','Nancy','Smoldersplein 3','Leuven','3000','016 29 56 74','Vertegenwoordiger',2350,'5','54',0,'1991-03-29 00:00:00.000000','1948-12-08 00:00:00.000000','2',_binary '\'\0\0\0\0\0 \0\0 \0×
OLE2A7CE9ED\0PBrush\0\0\0\0\0\0 \0\0\0PBrush\0\0\0\0\0\0\0\00 0 191 222\0@T\0\0BMT\0\0\0\0\0\0v\0\0\0(\0\0\0À\0\0\0ß\0\0\0\0\0\0\0\0\0 S\0\0Ä\0\0Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÀÀÀ\0\0\0ÿ\0\0ÿ\0\0\0ÿÿ\0ÿ\0\0\0ÿ\0ÿ\0ÿÿ\0\0ÿÿÿ\0\0À\0\0\0	\r\0ÐÀ\0É\0\0À\0\0Àÿÿ\0\r	\0À\0ÀÊÎ\n\0ÊÌ¬®Î­êîêì¬®Î\0 Êà¬¬\0	ÀÐéÀ	ÀÜÀÀ\0ÀÚÉ\r\0ÐÐ\0\r\0ÐÀ\0\rÀÀÐ\0\0\0\0É\0ÿÀ\rÐ\r\r\0\0Êî ¬ îÎêÎ¬àì¬àìì\0¬ÊÎÌ \0À Ð\rÉÍ¬ÉÉ	Ì\r\0É	ÀÉÉ	À\0\0À\0\0\0\r	Ð\0Ð\0\0É\0\0À\0\0\0\0À\0ÐÜ\0\0\0\nÀìààÀà¼êÎ\nüêÊÊÊîàÎ®\n	ÀÐÐ­	Ü	\0À\r\0ÀÐÐÐ¼\rÐ\0ÀÐÀÀ	\0À¼\rÀÐ\0Ð\0ÀÀÀ	ÀÀ\0\0	\r­\n\0\0îÎà ÀàîîÎ¬àîÊìîÊÊ\0À¬ ®ÀÊ\0\0ÊÜÉÀ	É	ÀÉ\rÀÛ\0ÐÉÀ\r\r\0ÀÐ\0Ì		ÀÀ\0\0É\0ÉÀ	\0\0ÀÐ\0\0\0	ÀÀÉÉ\0\0ÊªÊÌ\n\0ÀêÀêÎ¬¬¬¬ à®Îà\nÊÎàêàÀ¬	ÐÉÉÍð	\rÉ\0Ú\r\r	\0	\0ÉÐ\0	\0\0\0Ü	ÀÉÀ\r\0\0\0ÀÀÀ\0\0\r\0\0\0À\0\0êî\n¬ªÀî¬®ÊÎêÎÊì®\0¬ì¬Î\0\0\n\0\rÀ	\rÐÜÐÀÀ	ÉÀÀÉ\0À\0\0À\0\0\0À	ÐÉÀÉ\0	ÀÀÀ\0\0ÀÀÉ\r\r\0\0¬Î¬ à\0ìîààì¬®ÎÊÎà àêÊÊÀÀÊÜ	ÉÐÉÀÉ\0ÜéÉÉ\rÀÀÜ\r\rÌÐÐ\0ÜÀÀÐÀ\0\0ÐÀÌ\0ÉÀ\0\0\0ÀÀ\r\0\0	\0\0À\0À\0\0À¬ªÎ\0¬ààÎÊÊÎààìààîî\0Î¬¬¬®À\0 ¬\0ÐÐ\r\0ÉÍ­ÀÐÉ	\0\0\0\0\0À\0ÀÌ\0	\0	\0Ð	\0\0ÀÐ	\0\0É\0\0ÐÌ\0\0\nÊÌàà¬®¬êÊÊÎêà\nÊÎÊÎ\0À­\0éÉÀÉ	\r\r	ÀÐÐÀ\rð½	\0\r	\r\0À\0É\0ÉÀÀÀÀ\0ÀÀÀ\0ÉÀ\0À\0\r\0É\0\0\0ÊÊ¬àÊÀàààÎ¬¬¬ààììì®\0\nàà\0\nÀÉ\r	Ð\r\ràÀ	\0É	ÉÀÉÉ\r\0ÐÀ	\0\0\0\r	À	Ì	\r\0\0\0\0\0­\0\0Àà®Î ÎêÊÎ\nì êÊìààì¬îàÊ\0 \0\rÐ°ÐÀÉÀÐÉÉ\r\rÉ	\0ÌÍ\0É\0\0\r		ÐÀ\0\0\0\nÐ\0\0\0\0\0\0É\0\rÀ\0\0\0ÀÀ\0\0\nÎ\0àÊÎ\nêÊàîÊÎìî¬\0àì ÊÎ\0àÐÐÉÌ	Ì\0Ù\0\0\0\0\0\0ÀÐÀÐ	\r\0É\r\0\0ÀÜÀ\0\0Ð\r\ràÉÀ\rÐÐÜÐ\0ÀÐ\0\0É\0\0ÀîÊÊ\0àîÊ¬ààêÊÊÎÚÊàì®\n\0\0 Ð°É\r\0\0\0\0\0\0\0\0Ì	\0ÀÐÜÐÀÌÀ\0\0\0\r\0Ð\0ÀÐ\0\0\0\0É\0ÙÀ\0\0\0\0ÀÉ\nÀ\0\0àà¬àÀÊÀì Ààìàì¬î¬¬®®ÊÀî\0\0\0É\r\rÉÍ\0ÚÐ\0 \0\0\0\0\0\0\0\0À\0À\0À\r\0ÛÀ	©ÀÐ\0À\0ÐÉÉÉÀ	\0ÀÐ\0\0\0\r\0Ü\0À¬ì¬ à¬®\nÊÊìêÊÊà¬ì¬®àÊ\0\0	ÐÀ\0\0Ð\r	\n\0\0\0\0\0\0\0\0\0\0ÐÐÐÍ\0\0Ð\r		À\0\r\0À	ÀÀ\0\0É\r	À\0Ð\0ÀÉ\0\0\0\nÎì\0ÀàààÎ¬ì®¬ì®Î\nÊÎ\0\0\0\0É	ÀÍ\0ÐÉÌ\rÀ¼ À\0\0\0\0\0À\r\0Ð\0À\0À\r	ËÀ\r\r\0À	À	À\0\0	\0°ÀÐ\0\0àà¬ªÀ¬¬ ¬ÊàìêÞÊà¬ ìì¬àà\0\0\0	É¬ÐÀÚ\r\rÌ\rÐÉÉ\0\0\0ÉÀÉÀÜ\0	ÉÉéË\0ÐÐÐ\r\0\0Ü\r\0Ð\0	Ð\0ÉÉÀÉ\0\0À¬Îà\n¬¬à®\nÎ¬à®ÊÎ\0Î\0\0\0\0¬Ù	ÉÉÊÜ\r\r	ÐËÀÐÉ\0Ú\r\rÀ\0\r\rÉ\0É
É	ÀÐ\0ÐÉÀ\0\0\0	À\0\0Ð\0\0¬êÊ\0àÊÀ\0\nÊàÎÊÎÊì\nÌààêÎ \0\n\0\0
ÉÉÌ\r\rÉÐÜ­ì\r\r\0ðÀ\0ÐÀ	À\0\rì\0À°É\rÀÀ	À\0Í\0	ÀÐ\0\0\0\0Ì\rÉ\0À\0\0àÌ¬êÎ\0¬ ààì¬à à®¬\n\nÊÀà\0î\0\0\0Ð\0ÐÀÙ\r	Éà	ÀéÀÐÝÐÍ	ÉÍÏ\0\0À	ÉéÀÐÀ	ÉÉÀÐ\0\0	À\r\0À\0\0\0\0\0Ì\0\0\nì¬ êÊÀ\0¬\0¬®\0ì¬ìàÊ¬¬\0¬à\0\0ÉÀÜ	É\0éÌÉÉÜ\r\r\r\rÀÐÌÐ\0É\0É	\0Ð	ÀÐ	\0\0\0\0\0ÐÐÉ\0À\0ààààÀÀààÀ ÀàÊ\nÊÊ Ê\nÊÀ\0\0îêà\0\0\r	¼ÉÊÉ\r¬°ÀÐÉ\rÜ	Ð¼É\0\0Í	ÐÉ		ÀÀ\0\r\0\0\0\0\0\0\r\0ÐÉÀ\0\0àì\n\0\0\n \0àì\nÎÊ\nÀ\nî¼\0\0ÉÀÐÐÐÐÐ\r\r¼ÚÀÀ	ÀÌ\0ÀÉ	É\0\0Ð\r\0ÚÜÀÀÀ	ÉÀ\0\0\0\0À\r\0	À\0\0àààê\n\0\0À\0\0\0\0à¬¬àì \0\n\0¬\0Êîî\0\0Ë\r	ÉÀÙÍ\0ÐÜ¼\r\r­Ð	ÐÌ	Ì\r\0\0\r	ÀÉÉÌ	ÀÐÉ\0ÀÐ\0\0\0\0Í\0ÐÏ	ÀÌ\0\0\nÎ\0À\0À\0\0À\nÀ \nÊÊ©à¬\0\0ìîàÊÊà\0\0ÐÀ\n\r	ÍÉËÐÐÜ		Ð\r	éð¬\0ÐÉ
É\0ÙÞ\0À\0\0\0Ð\0\0\0		\0À\0¬¬àÎ\0À\0\0\0\0\nÀì\0ìì¬\0\0\0úÎúÎîËÀ\0\r\0É\r\rÙÀðÚÐÐ\r	ý		ÀÉÐÉÉÍ\0Ð\rÉ­ÐÍ\r\r\0ÀÐÀÀÀ\r\0\0\0ÀÉÜ\0ÐÐÀÀ\0\0ÊÊ \0\0\0\0À\0\0\0\0\0\0\0\0\nÀ\0\0®¬\nÎî­®Ê\0À\r­	ÉÉË\rÉÀüÐ\0\0ðÐÚÙËÉÐÉÐ\r\rÀÐ\r	\r\0Ð\0\0Í ÚÐ\0\0 ìÀ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¬Ààààîìî\0\0ÉÀÐÐ\r	\0Í­Ð\rÜÉÉÀÐ\r\r¬ÐÐÞ\r¼¼\0ÐÉÀÐ\r\0\0\0Ù\r­\0ÀÀÀ\0à¬\0\0\0\0\0\0\0\0\0\0À\n \0¬\0¬®ÎÊÎîÀ\r\0ÐÉÀÐÍÐ\rÜ\0\r\0ÀÀ¼\rÉÌÀ\r\rÉÀÐÀ\r\0ÐÐÉÀ\0\0
\0ÉÉÐ\r\r\r\r\r\0\0\0\nÎª\0\0\0\0\0\0\0\0\0\0\nÀÀ\0\0àÊ\0À ¬àìª\0	À\r	Àé
ÜÍ\rÉÉÉ\rÀÀÙÀéÐðÚÜ	ÚÐÉÀÉ­\r\0Í\0À\0\0\0ÐÀÚÐð\0\rÉÀÀ\0à¬ïìîÀ\0\0\0\0\0\0\0\0\0\0\nÀ\0\0®¬Ê ÊÌ¬®Î\0ÀÉÉÀ\r\r\0ÜÀ¼°½À\0ð\rÉÉÉÀÜÀÀ\0ÐÀ\r\0	À\0	Í\r	ÉÉ\r	ÀÐ\0\0\0\0ÀîîþîÀ\0\0\0\0\0\0\0\0¬ \0\0ì® Ê\n\0®\0	ÉÉ\0\0ÐÐÍÉÉÉÐÐÉÉ\r\0Ì¼\rÌ¼Í­ÙÌÜ\r\0	¼À\0Ð\0
ÉÀÐÜ°	ÌÐÐÜÙ\0éÀ\0\0¬®Îì®ú\0\0\0\0\0\0\0\0\0\0\0àì \0\0\0ÀÎ\0¼\0ÐÉÍ
É­\r­\0Í
Ì¬ÀðÌ	Ì¹ÉéÉùÉ°É¬ÉÍ\r\rÉ\r	ÜÉ	ËÉ\0Ð	À\0À\0îþîíìê \0\0\0\0\0\0\nÊ\0\nìàêÊÊÎ¬¬\0¬\0¬\0ÉÏ\0Ð\r ÐÉÌÐÙàÜ	¹ÜÐÝÐÍ	ÍÀ	°É	ÀÀ\r	ÉÀÚ\rÉðÐÐà	À\0\0\nÎïîÏÎêþì\0\0\0\0\0\0\0À¬êîÊ ÊÀ\0\0¬\0\0ÀÐ\0ÀéÐÉ\r\r\rÉ\r\rÀ	É¬ÉÀÀÀÜËÌðýÀü\0\0ÐÉÉ\0ÐÚÞ\r	ÉÀÉÉÉÉÀ\r\0 îËêêÎìþ¬ \0\0\0\0\0 ¬êÌ¬¬®¬\nÊÊÀ\0\0	­\r\0ÐËÀÐÚÀÐß\0ÜÐÐÐÉÏÉÐÐ	É\r\0\0Éí\0ÀÉÀÚÐÌ\r\r\r\r
ÐÐ	ÀÉ\0\0\nÊîììêÊ¬ï\0\0\0\0\0ìêÌ àÊÀ¬\0\0\0\0\nÀÉ	ÀÍ\r­	À	À\r	Éé\r­¬ÞÏÜÐÀÀ\rÉà	Í	ËÐÐÐÉ\r\0\0Ì\nïÎÊ¬àÎàïª\0\0\0©¬ªÌ àÊÀ\nÀ¬\0\0°\rÉÉÀÚÉÉü\rÊÍËÌí\r\rðÐýÙÙÐÀÀð\0ËÉüÉ Ð\r\r¬¼ÀÀ\0 ¬êì®ÎÎê®ÎÀëÛ¹ËúÊì¬ \0 \0\0\0ËÐÀ	ÀÛÀÉ¬Ð¼	àÐÐß\rÐÏÍ\rÞÙìÐÉÉ°Ü­\r½\0ÉÌËÍ©ÉÉÉ\rÐ	ÉÉÉÜ	À\0Ð\0\0ì¬ààààîîì®ì®¹¹Ù¹°ðÊêÊÊ\0àÀ\0à Ê\0\r\rÉÉ
\r\r\r\0ÐÐÙËËÉüËÝ\0ß\rðÙËÉ	\r¼Ì\0Ð Ü	\0ÀÀªÊÊÊÎ¬àîÊÞ\nÉ	\n®ì¬\0\0\0\0Ì À À\0ÉÉÉÉÐÜ\rÉÐ\ràÐÉÍ­Éí\r¼½ß\r½\0ÐÜ	ÉÉÉÙÀÉÜÀÉ\r	\r	ÀÐðÐÝÚ\0	\0\0¬àÎ®ðì¾àì	°¹ùù°ÚÊÎàà\nÀÀª \0\r\0Ë\r	àÙ\0\0Ý\0Ü¼Ù\rÉÍíðßÍíðÚÐÜÐðÐÊÉÐÀ		À½ÉÌ\r\r\r¬	\0Ë\0\0\0îªÊÊÊðîêì à¹ÉÐ
	©É© \0\0À\nÊÀ\0ÉÉÐÐíÝÊÐÉÌ­í\rÜ¼\r\rü	\0Ý\r\r	­ÀÐ\0ðÐÉÊÀÊÜ\r\r\rÍÉ\0À\n®êÎ®Êì¾ÊÊÊ
ÐÐ¼î\0à\0\0À \nÀ	À\0ÍÀÉ\r \rÉÉÐÐÜËÍ¼ßÞÐýßíÝ	Ðü\r	Í\rÉÀ\0ÐÚ\r\r\0ÐÐÐÀ\0\0Êìîàì¯Êü®	¹	\0°	©
	¼ \0\n\0¬ \0\0\0	\r\0ÉÀÐÐðÐÝ\rß\rÀü¼ü½­ÏÏ	ÛÌ\rÉÉÙÐÜ	ÝÐÐÀÙ\r\0ÐÐ\rÉ\0\0\0îÀ î úìîÊÌ©¹ \0°	ààÀÀ\n\0\0\0À\rÉ\r\0ÀÉ\r\0ð\0	ì\0Ü\rÍÏÙÜÜüùùÜÜÜüü	ÀÐÉ\0\0\r\0	\rÉý\r°\0¬®ÎÀÎî ìªéÐÐ\r	
\n	\0\0Ê\nÀÀà\0\0\0Ú	ÀÉÀ\rÀ\rÀÉËÀßÊÙéÏÏÞÐ\r\rÉü	­	ÐðÉ\rÊ­\rÊÀÐùÉÉ\0\0\0éì¬®®àþÏê¬¹é©°		
Êì À\0 \0À À	\rÉ\r\rÀ\0Ü	À	ÐÌÐÙÞ¼üü½½\0ùÜ\rÜ½ÉÉí\r\r	ÉÐ\0\0À\r\r\r\rÐ\0\0îÊÏÊÎàî\0ÀÚ		°°¼	\n\0Î¬¬\0À\0\0\0\0À\0ÀÀÉÀ	\0ËÀ
É­­\r½éßÏýïÛÚÞíÚÙí\r¼ÐÐ\0ÐÉÉ\r¬ÐÐÐ\r\r
Ð\0à®\n¬êïà¬¹½½°Ú\0°\r
\0êÊÀ À\0¬\0	\r\rËÀÉÉÜÐÜÞÜÞÝ½­ÿ»ÙÀÍ­ÐÙÉÛÍ\r
ÀðÚÐÀÍ\0ÀÐÐùÀÙÉ\rÉ\0À\0ììì¬à®\nÊ¹¹¹½½¹¹©	¹©		\nÌ\n\0\0\0\0\0À\0ÉÌ¬\0É\r	ÀËÀÜðùÚßËßïÿßëßéðËÙÉËÜ\r¼ÀËÀÐÀð\r\0\0ï\nîîÌàé¹û©¹	ë\0­\0	\0¬¬\0 À\0¬\0	ÉÍ\0ÐÜ	ÉÉÚÞÉíýýëßëÿïÐÌüÐðÝ½ÉÉÉÉ\r\rÉ\0\0	ÉÉ¬\r	Í\0àìêÊ­¬®¬	¹ù«Û
ÛÛ
\0À\nÌ \0\0\0ÀÀ¬ÉéÉ\r©ÀüËÉÉÚý½ýþÿßùûýÊÀýÝ
ÌÐß\0ÀÐ\0ÀÉ\0ß°	\rÉÐ\0\0ÊîÎËàÀû½¹ý½
Ù©		°Ð		 ¬¬\n\0ì¬\0\0ÀÐ©ÉÉ\0ÉÉéÌ	ÉÏÏ\rïÍýþ¿ùÿÿÿÿÐ½\0ÚÚÜÜßÐÀü	­	\0ÀÐ\r\rÐ­É¬ÉÉ\0¬®Îàêàì©¿Û¼¹©©\n°¹\0°¹
ÀÊ¬\0 \0\0\0ÀÀ¼\nÌÉÞÝ­½þÿÿûÿÿßÜýÍÛ\rÛÐ	éÉÀÐ	\0\0ÐÐÀ¹Ì­ÉÐ\0ÊüªüÎà
ù¿¿ÛÛËÙðÐ­Ð		\0Ê\0®\0ÐÉÀÍÀÀÀàÀÐÀÙ\r®ßÉßïýÿÿÿÿ¿\réíùàÝéÏÞÐÏ	éÊÝ\0ÐÀÉ\rË\r	Ì\rÉÉéÉÉÀ¬àìîªÀ»ùù½½©°¹	
	Ð
\0°\0 àÀàì\0\0	À­\0ðÝßÍÿïßÿÿÿÿÿÿ¿ÝÐÏÜÝéÉÐÚÐ\rÐÐ\r
\0\0\0	ÉÍ	¼ÐÐÐ\0ÊÊÎ¬®
¿Ûð	
°\0\0\nÊà\0\0ÐÉÀÀÀ\0	ÀÀüÌðûïÿÿÿÿÿÿÿÐÚß\r¼íÞýÏ\rÐé	ÀÐ	ÀÀ­
\rÌÉ­\rÐ¾¬\nËìì	û¹½¼¹	¼½©é©	É
	\r	  À\0é\0\0\0Î\0À	ÀÐéà\rÉì\rûßÿßÿ¿ûÿÿÿÿÿ	ýðÝßËÙéß\r©ÞÏÝÏÐÐÀ	\0ÀÐÐÐÀÐÐÐ©É\0ìÊþîàûÛÛ¹ð	\0		°\0Ì\nà\0À\0ðÜÐ\réýëÞÿÿÿÿûÿÿÿÿ¼\rýððÝÝðÞÝÉÙ\r\r	\0\r	Éì\r\r¼Ðì®Ààà	¿¹»ÛÛ	°û		
			­	
\0\0 À\0\0\0ÀÀÐÐÀÚÉÏ\r\0ÙÏÿïßÿûÿÿÿÿûÿÿ¿¹íýÏùí½\rùÞ¼ýàðÉËÍ	À	ÀÚÐÐÙéÉ	ÀÚ¬ðî
û½©­¿	À°\0\r\0\nÀ\0\r\0ý\0ÜÞûËß¿ÿÿûÿÿÿÿÿÿÿ	íùÍÛÐÿ\réÞÐß\r\r	\0	\r	\0ÜÉ	¬ÀîÊàùûÛù¹\0¹©ÚÉ		\0°°¹	\0\nÀ\0\0ÉÀ	ÀÚÉÏ\0	Ï¿ßÿÿÿûÿÿÿûÿÿÿÿÿ
	¼¼ýÿýÏÝßéÍùí­Í	é\r\0\r\rÍÐ¹à	Î®¬ªÉ¿½»ÛùÉûÉ	\0¼©\0\n¬\0\0ÉÌË­ßÏÌ½ýí¾ßÿÿÿÿÿÿÿÿÿÿÿÿ\0	ýðùí½þ\rÙÙéÜÀ\r\rð	­É°ÙÍ\rÝ\nÎ¼
ùûÛ½¾»			\0©	\0	©°\0\0 ÊÊ\0	\r\0ÉÊß¬½¯Þ¿ÿÿ¿ûÿÿÿ¿ÿÿÿ¿ÿ¿ÿ\0
\r©\nÙéÚßÞÛÜß\r¼üÜÙÀÐ	ÙÉÉÍ	É	 \ràÎ¬¿ûùùù¹ù\r	©\n\0\r\0\0ü\0ÀððÀÉéÍÐÉÞý­þÛÿÿÿÿ¿ÿÿÿ¿ÿÿÿÿû\0Ð\r­­ßÝý½¼½ÉÙéÚÊÉ\0É¼Í\r êÀûû­½¼°Ð	
\0			éÊ\0ê\0\0°Ýëßÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	\0\0\0		ÉíÿËÏÍÞ¼­ÜÜÐÉ
ÉéÉÜ\0ì¬«û¿ùÙ©		©		\0\0\0	\n	\0\0\0ü\0ÍÉÉ\réÍ­í¯ýúßÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ©\nÐ©	©ýýÛíÙíÞÐÚÜ	Ì	ÉÀÜààûÛ»½°©\n\0Ù\0	
\0		É¹é°\0\0à\0\n\nÐÌ\0Àü¿ÿÿÿÿ¿ÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿ	
		 	\0Ð­\r
ÐÿÙþÙéÙü©	\r\r¼	éÐðªË¹ýûÚùÉ\r 	\n	\0	Ð		\0°É°\0\0 	ÀÉÀéÀýÿßßÿÿÿÿÿÿÿÿ¿ÿÿ¿ÿÿÿÿÿÿÿ°¹	©	\0°
\0©­©éÞÙÿßÉÝÐÜ\0Ð\r\rÙÉ	\rÉÉÉì\rÿ¿»¹©	 ° 

	©	Ú\0\0À\rËÚÚÿ¯ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÛÚ©©\0	àûÍÍÝ¿Ë	É\r\0	ù\0ÐÐÐêË»½½½Ð\n	\0©	À\0		©	
\0\0à\0¬
Í¬ÏýÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿÿÿûÿÿÛ­ 	­­©É©ºÜßËÚÍý\0ß½É\r
ýûÛù°½©
	\0°\0\0\r	\0°°°½\0\nÀÐ\0	í½¿ýÿùÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ»Ë			 \r	©üÜ\0ÉÍ	É\r	É©\0®û½»½°		
			\n		©	
	\0\0à
\0ÀÚÞ
Ëí¯¿ÿùÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿÿÿÿ­¿Ú¹

	°¼°\0©\0\nÐ\0ð©
Ý¿ÛßýðÐÉÀûÛ½°°Ð°\0\0À­\r\0ýý¯ÿûÿ½ûÿÿÿÿÿÿÿÿÿÿÿÿÿ¹¼¹©ù©Ð¼°Û


\0\0
\0\n	ÐÐÐ¼¼\rÉ\r\r¬¿½»Ù¹½¹	é¹¹¹\r
		©
É\0
\0\0à	ÀÐ ééËÏ
ëÛÚþÿÿÿÿ¿ÿÿÿÿÿÿÿÿÿÿÿûÛ¹¿ù«©¹ºÚÛÉ\0\0\0	\0\0 ©àÙéËÚ	ÚÀ\0\0»Û½

ÛûÿÛ
	\r	
	
	¼\0\0
°°ï¯½ëÿÿÿþÿûÿÿÿÿÿÿÿÿ¹ºÛ°½©­­° \0\0\n\0°	ð©\0\0ÿ¹ù½½¹ù¹¿½ÿ¹ùù½½°
\0\0ÀÀÐË
ð°¼½ëËÿßÿûï¿ÿûÿ¿ÿÛùºÛ«º«éûÐ°\0\0\0\0\0\0 \n\nÚÚË\r©
Ê\nÀûß¹ùû»¿ûû¿»¹\r©Àé°\0\n\0\r©\r	©
	àúðþÿ¿ÿ¿ßÿï¿ÿÿÿÿ»ù¹½½¯

\0	\0©\n\0\n\0°\0	©\0	 Ð°¹ÛÛÿ¿ûÿÿ»ûûÛùûÛ
		©\nÛð\0\0ÀÚð¾¼°

\0°°ùËËÏ¯½¿í¿íÿÿ¹ú»
»©¹©º¹ð°° \0\0\0\0\n\0\0©© 	  ðû½¹»ûÿ¿ûûÿÿ¿¿¿½¹¹
			Ù«\0\0Ë	©Ð\r ÚÉé©\r¼úûðûÏéûí¿¿¯Û©ù»	
°­¿
Ë\0	\0\0\0\0\n\n\0\0\n	 º
	©½ù©¹¹ùßùûÿ¿¿û»ÿ¿½¿¿½»Ù		
\nÐ\0	Éé­©­­©«\r ÚÚË	ËúÛéïßÛÐ¹	ë©©ë½°°\n
\0 \0	\n\0©\0	

\0°ºû»¿¿ûÿÿ¿ßù¿¹ù½		 \0\0©­
ÚÛ
\rº	àð °¼®¹êúÚùûûË
©\0¹
°¿»Ë©é 	\0\0\0\n\0\0\0	\0©   
© ß½
ù¹¹¿ÿ¿¿ûûÙ¹Ù¿¹¹°Ù©\0\0Ú

Éé
©\nÙ¯\r\n©©Ë¾°Ú©	©°¹	¹©°°½¿É©\0\0\0  \0 \0
	 º\0©º¿ûÿ»ÿû½¹¹	°¹¹¹©
	\nÐð\0\0É©é°ûÊ¹é\r °°°éÉ
­\nËð°é
Ë\rÉ«\n
\0ÚÛú¹«
	 ºÀ\n\0\0\0\0 \0°  © ¹­¼ù½¹ûÿû¿û	
ùû\0ºÛ¹ù­°ûà¹­	­°Ú¼°Ú	  ¹©©

°¿½¼¾	
\0\0\n\0\0\0\n\0\n©«½¿¿ûÛ¿ÿ	
©»¹­
	à\0\0Û­©éë­°Û

ÚË	 ù¬°ðÚ¾©\0 	\n		©
Úù»Û
©°©\0\0\0\n\0 \0 °ª©­©¹ÛÙ¹¿¿»ûß¹¹¹\0\r¹	\0\0\0ûÚÛÙ¼¹°Ð¼ºÚËðð½©¹é¯\r°é¼°¼¹é	° 	\nù©¯­ºëË\n\0\n\0\n\0\n\n\n	«½»ûù¿ûû¹ù¹¹	¹Ð½½©°½\r\0\0\0\0

é­­»é½
	©ð¼¼°ùË­¹ééé¬¹ë
\0 \0			
\0°ð»éúÚ\n\n\0\0\0\0°\0 \0°©­¹û½¿¿¿¿¹ý¹		©¹¹¹¹	©½\0\0°ð°½¾ðð¼ð¾½©éé­°ºÐ¼°¼¹é¼°©©\0\0 \0\0 ©
É©¼¼¹©»ùë\0\0 \n\0\n	ª\0ª
©ùûûù¹»ùûùûÛûù¹ûùÛ\0\0\0¿
Ûùé¯©¹é¿©ùË
Ð¼¹°ù­­ééé¬¹à¼\0	\0	 \0 

¾°Ê\0\0\0	 \0 \n	\n¹\n»½½¿¿¹ÿ½¹¹½\0¹¹	\0\0	í½¾»Ù¼°ð°¿
ù­­°ðù®ËÛ©© \0\0	 \n\0 	 	©ë
»éûÉ©\0\0\n\0	
	  «\0©ðùûÛû¿¹ù»¹			\0\0¹¹¿	½©\0\0¼°¹é¿ý«ëÛ©ûéðúÚÛ©ºù¼é¼¹é­ \0\0 \0\0	\0°	\n	©Ú°\0\0\0\0\0  \n\0
\0\n
¹»Ûù\0\0	\0	\0		\0\0\0\0Ú°\0\0ð°ú°©©ù­»\nÛËËÚ© ©\0\0\0\0\0\0\0\0\0 
«ù¿\r©\0\0\0\0
	\0°
 ©© û¿¿½¹ûù\0¹»»°	 \0	
¹ \r\0\0ù¼ûùë­¹ùùú¼ºÛ¼¿ðð¼¼¾ÛË\0\0\0\0\0\0\0\0\0\0\0\0\0\nÚ\0\0\0\0\0 \n\n\0 	\n\0\0°¿Û½¹¹
¹ûûù\rù		©	Ê
Ùð\0\0	
Ë¾Û¯
©ùËý©éù­­»Ëùù­°ë°\n\0\0\0\0\0\0\0\0\0	©°¿¹à°\0\0\0©	é	\n °©	ÿ»ù¹Ú½û¿ûÿÛ
	©\0			
	¹\0¹\0°\0°ùùû½¯¿Ûß»Ú°ûÚ¼¾ðð­¹éé\0\n\0\0\0\0\0\0\0\0\0\n\0«ÛúÚ	\0 \0\0\0\n\0  \0 \0¹Û¹	©»ßû¿	¹	\0		 Ð\0\0\0¯
Ï¹ë­«Ë­½©ûË½©ÛÛ

Û½\0\0\0\0\0\0\0\0\0\0\0\0\0
ù¿©°\0\0\0\n\n


\0©ûûÛÉ\nû¿½ù\0\0	Ù©°	½ \0\0ððð½½»Û½»Û¼»ÚÚ¾ºÚ½¼°ùðð\0\n\0\0\0\0\0\0\0\0\0\0


ë­ \n\0 \0éË\0   \0\0½¹½©©		ùûÿ¿					
°			\0½	\0\0\0ù­»Ûëéûé«ÚðùëûË½¯ùù\r»ËË

\0\0\0\0\0\0\0\0\0\0\0\0 ¿»û
\0°\0\0  °°
\0	\n

\0½°Ù°
		¿ûÛ\0°	\0			°ð\0\0\0Û­¯½¯¾½°ùðù¾û¼¼»Ë¼ù¼\0\0\0\0\0\0\0\0\0\0\0		ºûÚù
\0\n\n\0ðð° \0\0¿»©ù©	ûÛ¿¹		°	\0\0\0\0þÛùùëùúÚùûË¿¿éù¿Ë¹Ë
é\0\0\0\0\0\0\0\0\0\0\0\n
­¾»ðàð  ¾\n\0	\n\0	û¿¹	©	Ù¹¹¹¹		©ù
ð\0\0	¯¿½½¿©ùúùðûÚÚðð°úÛ¼¿\0\n\0\0\0\0\0\0\0\0\0\0Û»ú¿¯\n\0	é­¼	\0		\0»Û¹¿¹°	¹ûÿ¹ù¹ð©



\0\0\0¼°°ùù¼¿¯¯
ùéÿ«Û½
Ë©¯\n\0\0\0\0\0\0\0\0\0\0°¾ºÛûùù¿¼­  Ë\n
\0\0\0\0½»Ùù	¿ùÿûÿ¿	\0\0	\0\r­ºÚÛùëùùûùé¯¿»ÚºÚúÚ¾ÚÙ¯©\0\n	\0
\0\0\0\0
\0ù¿¿¿¿«ëË		 ¼©­	\0\0\0	ûùû½¹¹¹	¿¿¿ÿûÿ¿¿	\n\0\0\0\0

ÉûûËûÚûúÛûù¼½¼¹úùûÙ©É½½ºù\0\n\n\n\0\0°\0\0\0ºùûù¿¿½¿­°\n\r\nË\n	\0\0	\0½¹¹¿ûÿÿÛûù¹ÿûû¿ÿûÛ°ùÿ»ûû¹\0\0\0©ðûðûðùúÛÚÛú¾¼ºý»éëÏ
éÊ	

\0 \0
ð½¿»ûÿ½¿¾	 ­\0\0	\0	ûÛÿ¿ùù»Ûûùûÿÿÿ¿¹ùûÿù½¿¿ûûÐ \0\0¿¿¿¹úûúùðùúûÛ½¼¹¹¯û	© °°°°©
ëû¿ûû¯¾½¾°	\0­ 	\0\0\0	ùÿ¿¿½½»ý»Û¿ÿ¿¿ûÿÛ¹¿Ûù½¿ÿ¹\0\0\0\0\0ðùûÛëÛëÛÏ¿¿¾½°ûËëË¿þÛ¼¾¹é°°°° \0©½¿¿þëÛûÛ©
\0\0 \0\0°\0	\0»ù½¿¿¿Û½¹û½»ÿÿÿÿ»Û»Û¹Û¿½\0	\0\0\0\0
¯¯¯»éûûûÛËÚß¼¿¹é­¹°ëûÞ»­»Ë\0	¾¿¿¿¿­¾° °	©©\0\0\0	¿ûù¿ù»Û¿½¹ûßûÿÿ¿½»½¿¿ý¹¹û\0\0\0\0\0ðùý¿¿½ûéùðûûûúºúÛûÿ½úû©©
\n	«ûÛÚûéëË«\0\0\0\0\0		 	 ù¿ß»¿ÿûÛÛÿ¹¿¿ûÿÿÛ½¹¿¿ù½\0	\0\0
ÚûëûÞ¿½ûëûðùðùÿë½½¼¼ù°ûûÚûúÛ
\0\0ûë°ºàùê
\n\0 °\0	\0	
½¿¿»½ÿ»¿¿¹û¹ÿ¿ÿ¿»Û¹ûù¿ù¿¹ù\0\0\0\0\0\0½¯ûùÿ¿½ùí¿¾¿¿ëÚÚ¿¿ºÿÿ¯¿©° \n¬¹ëÛÊ°\0\0\n\0	\0\0\0	ð»ùùùÿ¿¿ß¿¹ù¹ûÿÿÿ½¹Ùù»ÿ»ù¹ùÉ\0\0\0\0\0	¹ëûÿ¿¯ë¿»½½½½¹í¯¿Ú½½ð¹ÿ
úÛ
	\0\0¼¼¼°
\0\n\0  
\n
\0 
	\0\0\0É¹½ûûûÛÛ»ß¿»ù¿ûÿûû¹¹¹½½ý¹»°
\0\0\0\0\0Ü½­ûÛÿûÿïï¿¿¯¯û½¼»ß¯»°¾\0\n\0\n\nË
Ë	 \n
		 \0\0	\0\0	\0\0\0\0
¿¹¿û¿ÿ½»¿½¿ÿÿù½¹¹»ýù»Ûù\0\0\0\0\0\0\0
¿¯ÿ¯½¿¿ÿÚÿ
Ï¿½ë½­ëÚÐ°\0\0\0à\n	\0\n\0\n\n	 °   \0\0		\0\0
ÛÛûûù°¼°ÿ»Ûÿûûû¹¹¹¹	»Û	\0\0\0\0\0 \0	ïùûÛÿðÿÿûÿûÛûÿ¿û­¿»ß¿\0\0
	 \0\0 \n\n °\0 \0\n\0\0\0\0\0\0\0\0\0\0\0\r¿¿½»û		½¹¿ÿÿ¹ÛÚ	¹É½¹\0À\0\0\0\0	\0\0	ý¿¿ÿ¿¿¿¿¿úÿÚÿ¼¿úû	 °\n \0\0\0\0\n\0\0  \0 \n\n\n\n\0\0	
	\0\0©
¹¹û¿ù	¹ÿÿûù¹	\0©	ù\0\0\0\0\0\0\0À\0«ÿÿûÿÿýûÿÚý¿Ú¿þ¿Ûûý¿\0\0\0©\0 \0\0\0\n\0° 
\0\0\0\0¼\0\0\0\0\0\0ûûù¹¹
	¿¿û©	©			»¹\0\0\0\0\0ð\0	\0Ûûßÿ¿¿¿ÿ¿ûÿ¿ÿþ¿ûûû\n\n\0\0\n\0\0\n
	©    	 ©

\0\0\0\0	\0\0¹	ÿùû¿½¿°»Ù¿ÿ¿°Ù
	»ù°¹©\r
\0\0\0\0\0\0\0\0\0ÿ¿ïûûýÿÿûÿ¿ùûÛÿùþÿ½ÿ		 \0\0\0°  	 ¼°«



	 \0\0 \0\0\0\0\0\0\0\0Ð
¿ùùÛ¹ù	ù¹û½°½Ú\r		\0¹ù\0\0\0\0\0\0\0\0\0\0°ýûÿÿÿûûßûÿ¿ï¿¯¿ûûÿþ½Ú\n	©© \0\0	\n
©¼º\n\0 \r\0\0\0\0\0\0\0\0\0¹	û½\0ð\0\0Ù\0
¿ùù¹	\0	\0\0\0		\0	\0\0\0\0\0\0\0	\0ëÿÿ¿ûÿÿûýûÿûÿýÿ½ÿûûû °\0	   ©¬½©©©©©©\n \0\0\0\0\0\0\0\0	°\0ÿ½û¹\0\0\0 °\r¹½ù\0\0\0	\0\0\0
°\0\0\0\0\0\0\n\0ý¿ÿÿÿÿÿ¿ÿûýÿ¿ß¿¿ÿ½¿ßÿ©© \n
\n\0	


º»¹«
 ° \n	\0\0\0\0\0\0	\0\0Û	ûû¿\0	\0\0\0		\0
¿½°\0\0\0	\0	½\0\0û\0\0\0\0\0\0\0
íûÿÿÿÿÿ¿ÿÿ½ÿ¿ÿÿ¿ÿÿûß

\0\0©  °¹éà«\n°º\n¼ \0\0\0\0\0\0\0\0¿ùÛ\0\0\0\0		ÿ¿ð\0	\0\0\0ú°\0	¹\0\0\0\0\0\0ÿûÿûÿÿÿûÿÿ¿ÿ¿ÿÿÿ¿ÿûª\n\0
\n



»
©°©­®	\0\0\0\0\0\0\0\0\0\0ùÿ¹ù	\0\0\0\0\0\r¿ûù\0\0\0\0\0°	
	\0\0\0\0\0\0\0	\0\n
ÿ¯ÿÿÿûÿÿÿÿ¿ÿ¿ÿûÿ¿ÿ¿ÿ		\0 \0°ª\n
\n»\n©ª°°©©\0\0\0\0\0\0\0\0	\0\0»û½»	\0		¹¿½¹¹ÿ\0	\0\n	¹¹	\0\0\0\0\0\0\0À\0\0\r
ßÿÿÿÿÿ¿ÿÿÿÿÿÿÿÿÿÿÿ¿\n\0
©© °°« 
©
\nðùëà\0	\0\0\0\0\0\0\0\0¿û¹	\0\0¹¹¿ûÿ		 \0	Éð
\0\r\0\0\0\0\0\0þÿÿÿÿÿÿÿûÿÿûÿûÿÿÿ¿ÿÿ \0\n\0º°©  °\n°\n ­°¾¹	\0\0\0\0\0\0\0\0\0»	Ð½½¹ð°\0
		ù½¹ù	ÿ\0\0½¿»\0\0\0\0\0\0\0\0\0	©ðÿÿÿÿÿÿÿÿ¿ÿÿÿÿûÿÿ¿ÿ\0\0
¬º°°
\0©
\0©\n
ë\0\0\0	\0\0\0\0\0\0\0Û¹°\0»»ÛÙ¹			©	\0	\0\0\0\0\0\0\0\0\0¼ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\n	 °
½«\n\n \n\n
­½¹à°\0	°\0\0\0\0\0\0\0\0ù½»¹¹ùùùù»°\0û\0\0	°\0\0\0\0\0\0\0\0\0¿Ëÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0	¿\nº

	  ¼\nªÚþ\0\0\0\0\0		\0	\0	\0Û½ÿÿ¿ûû½¹»¿¹½Ú
		¹¿¹¿°¹\0\0\0\0\0\0\0\0\0	ð¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ°  «»¼º\n\n
	 ºÊ½¿¿¹°\0\0	\0\0\0\0\0\0\0
¿ûÿ¿ÿ½»ÛÛÛù»Ù¹ÛûÛùÛÐ\0\0\0\0\0\0°Êßÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0	
\r­¿
©©  ª
ÚÚÚ\0\0\0	\0\0\0\0\0\0\0\0ù¹ûÿ¿ûÿ¹û½¿½½¹ùù¹ù¹ù¹»Û¹	\0\0\0\0\0\0\0\0\0	À¯½ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0° ººº»
  ° °ëï¯»ûû½\0\0\0\0\0\0\0\0\0\0\0\nÛûûÿûÿûÛ½¹ùûûù¿¿ÛÛ¹½½¹¾\0\0\0\0\0\0\0\0\0\0½ïÿÿÿÿÿûÿÿÿ¿ÿÿÿÿÿ¿ÿ


º
\n\n«¿ðð\0\0\0\0\0\0\0\0\0\0\0	Éß½¿ûûûûûû¿¿¹ÿÛù¹ûÛ¹ù¿ÛÛÙ\0\0\0\0\0\0\0\0\0

Ëÿ¿ÿÿûÿÿÿÿÿÿÿÿÿÿÿÿ¿© °°»««Ú©  ðº°¾ú¾¿¹\0\0\0\0\0\0\0\0\0¹½»¿ÿ¿ÿûÿÛûÛû¿¿Ûù¹Û½½¹¿\0\0\0\0\0\0\0ÀËÛÛüùÿÿÿßÿÿÿý¿ß½ýýÿ°¼°ðù«ª

\nËËë
ÛÚû\0	\0\0	\0\0\0\0\0\0\0\0ÛûûûûÛûÿ¿ÛûûÛÛÿ»Û»ÛÛÛ¹\0\0\0\0\0\0	\0\0\0éÿ¿¹¯ûÛÿÛùûÿûÿ¿ëü©«
©«««	    °°©¯¯¿¯\0\0\0\0\0\0\0\0\0\0\0\0		É­¿½¿¿Ûÿ¿»û¿¿Ûûûù½½¹½»ß½¹\0\0\0\0\0\0\0\0\0\0ÚÛù¿ßýïýÿý¿ßýý­ùû°°ðº ° °  °ùûð»ù\0\0	\0\0\0\0\0\0\0	\0\0¹¹ûûß¿ûÿùÿ¿¿ûûûÛ½»ù­\0\0\0\0\0\0\0\0	\0
É»


Ðùé«Ú

ËªÚ\n\n
Ê¾½¯¼°\0\0\0\0\0\0	\0\0\0\0\0	ý»ûûûÿ¿¿¿¿»Ù¿ù¹ûù¹ÛÛ

\0\0\0\0\0\0\0\0\0	\0\0	ÛðÚÛÚÛÛÛÛÙùð½
©©©ð°°©  ° ° °«ùûùÐ°\0\0\0\0\0\0\0	\0\0\0\0
	ù¿¿½½ûûûûùý¿ùû¿¿¹¹¹¹ð¹	\0\0\0\0\0\0\0\0\0\0
ÚÙ©©¹	¹¹	°		°	\0Ê°\n\0 ­ºÚ

\n\n\0© ½¯úÛ«\0\0\0\0\0\0\0\0\0\0\0\0\0\0				©ûùûûÿ¿¿ûÿÛû¿»ß¿°Ù
\0\0\0\0\0\0\0\0\0\0\r\0
¹	¹©	°	 	¹	 
° 
\n\n\n	\n\0
Úÿ¿ºÐ\0\0\0	\0\0\0\0\0\0\0\0\0\0\0		½¹»ÿ¿ù¿¹ù¿¹¿	°\0\0\0\0\0\0\0\0\0\0\0\n	

		©\0¹\0©\0		\0	\0\n\n\0 À°°\0	 ©©©«ùùí°\0	\0\0\0\0\0\0\0\0\0	\0	»½»ÛÛûÿ»ÿ¹ù»ù¹°¹°\0\0\0\0\0\0\0\0\0	\n°\0	\0		\0\0	\0	¹©\0\0 «\n\0  \n\n\0\n¼¿¯û\0\0\0	\0\0\0\0\0\0\0\0\0\0	\0¹Û¹½¿»ùûÿÛ¿¿¹û©É	©\0\0\0\0\0\0\0\0\0\0\n\0	\0
				 			\0	\0\0\0\n\0\n\n
\0\0\n\0\0 \0©©
½°ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	
Ùûý¿û»Û¹ù­°		\0\0\0\0\0\0\0\0\0\0					\0\0©\0\n\0\0
\n\0	\0© \0\0 \0\n\n\0 ºë¯\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	¹ûû¿¿ÿý¹ù¹¹Ù½	\0\0\0\0\0\0\0\0	\0\0\0\0\0\0
\0\0		\n°\0\0	\0\0°	\n\n
\0\0 \0\0 \0\0
	­¹úù©\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0	\0	¹ÛßÛ	¹¹ù					\0	\0\0\0\0\0\0\0\0\0\0 Û	¹						\n		\0\0\0©   \n\0\0 \0\0 \0 \n
©ðð\0	\0\0	\0\0\0\0\0\0\0\0\0\0	\0		ù¹½»ûû¿½­¹¹¹
	\0\0\0\0\0\0\0\0\0\0\0 Û		©

		\0\0\0\0\0 \nª \n\0\0 \0\0\n°°ú«\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ë¿Û		½°	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0©°	° \0\0\0Ð \n\0\0\0\0 \0 \n
	ú©\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0°ÛÛÛû¹ù\0¹		\0	\0\0\0\0\0\0\0\0\0\0\0\0\0À\0	°		©	\n°	\0\0\0ª \n°\0\0 \0\0\0 \0 °¼¾©ú \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0		¹¹¿ù		½	\0	\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\r©©	°		©	\n\0\0\0\n	©\0  \0 \0\0\0\n
\n
©©\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ûù
û\0			\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	
Ë
	°	
\0\0\0\0\0 ¬ºÊ\n\0\0\0\0 \0\0­\nªÛ\0\0\n\0\0\0\0\0\0\0	\0\0\0\0\0\0	\0\0	\0ù\0\0\0			½	
\0	\0\0\0\0\0\0\0\0\0\0\0\r\n\0Ð°
			\0\0\0\0\0	\0\0°\n\n\n\0\0\n\n\0­©¬°½½ 
		\0\0\0	\0\0\0	\0\0\0\0\0\0\0\0\0			
Û\0\0\0\0¹\0\0\0\0\0\0	\0\0\0\0\0\0\0\0	\r©
°		 ©		\0	\0\0\n\n\n\0 \0\0\0\0\0\0\n\n½\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¹¹\0			
\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0°¹

		©©\0		\0\0\0\0\0\0\n\0  \n\0\0\0¬¬©êù¯Ú	\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0		\0
\0\0\0\0	\0	\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0û\0¹	
\0\0\0\0 °  \n\0\0\0\0\n\n	\n

\n°¹°\0ù\0	\0°\0\0\0\0\0\0\0\0\0\0\0\0\0	\0­¹\0\0\0\0\0
\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¼				©\n	©\0\0\0\0\0	 \0 \0\0\0\0\0  °º»Û¯©\0	\0\0\0\0
\0\0\0\0\0\0\0\0	\0\0	\0	\0	\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0 		¼
			¹	©\0\0
\0\0 \n\0 \0\0\0\0\0 	
\n°°°°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0°	
			
	
É©°		\n\0
\0 \n\0\0\0\0\n\0\0  ©

«
«\0\0\0\0\0\0\n\0\0\0	\0	\0\0\0\0\0\0		\0	\0\0\0\0\0\0\0\0\0	\0\0\0\0	\0\0\0\0\0\0\0½	°¹©©		\0\0\n\n\0 \0\0\0\n\0\0

«©©«\0\0\0­\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\n	\0Ú					°©
¹		\0\0\0\0\0\0 \0\0\n\n\n\n°¹\0©\0\0	\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0		\0\0\0\0\0\0\0
	\0\0	\0\0\0\0\0\0\0	\0				\0¼¹
	\0\0\n\0  \n\0\0\0\0  \0©© ººÉ\0©\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0¹À°°
	 ¹\0°©
½	¹	\0\0\0\0\n\0		©\0\0\0\0\n\0 «­©ë©\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0ð\0\0\0	\0\0¹\0	\0\0\0\0\0\0	\0\0
\0°Ð½	
	
\0©
	©	¹©©	\0
\n\0\n\0     \n



© °\0	\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0	\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\n¼	\r° °É¬¹	¼Ù¹©		\0\0\0\0\n\0 \0	
\0\0\0\0\n
\n ºº¹ °	é	\0°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ð\0\0	\0	\0\0\0\0\0	\0	°	é	Ú		¹
É©
©¹©		\0\0 \n\0	\0°°       ©
©­©\nÛË\0\0°\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0		­\0
©°é©¬¹»¹©	°\0	\n\0\0\0	\0	
\0\0\0\n\0  ªº»ë©	\0	\0\0	\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0°
\0
\0°ùÉéÚ½
Ú

	\0 °\0° \0   \n\0©©ëð¹¯¯Ð\0
\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0Ê	©\0	ÀðËË»ð
Ú¹©ù¹¹¹¹		\0\0é \0	\0\0\0\0\0\n\0\0\0 ª\n\n¯
úù°ùð	\0			\0	\0	\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0©	
ðËð©½©é¹
	
	
°¼°		
	  \n\n\n\0 úÚ¿©«ï¯«\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0°	\0½¼¹	ùð«¹ù¹¹			\0\0ËÉ	\0\n\0\0 \0 \n\0ªË	¯Ú¼¹°\0
\0	\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0	À
\0\0\0	©\0	\0°¹ð¹
Û
û©¯	°Ú
	
	¿			\0\0\0\n\n\0\n\0 Úù©ëËëËë	½	 \n\0\0\0\0\0\0Ð		 \0\0	\0\0\0\0\0\0\0	É\0 \0\0\0\0 °°	°
ðù°ùëÐ°Ë©¼¹°¹¹¹¹°		\0\0ðð°° \0\0      ­©©©©	
\0°		\0\0\0©		\0°\0\0É\0\0\0\0\0\0\0\0\0	\0\0\0°\0	Ë
ð¹Ë
¹ËºÙé©
	
¯½				\0\0\0\n\n\0\0\0

\nÚ¼¼°ð\0	\0	\0\0\0\0\0\0	\0	\0\0\0\0\0\0\0\0	\0\0	\0\0¬	©ûÛ½©ù¹ÿ¹	ð¹«À¹\r©ù°¹é¹¹°¹		\0ß°	\0\0  \0\0 °°­\0¼
	 Û\0	©	 \0\0\0	\0\0\0	\0\0\0\0\0\0\0	\0\0\0
\0\0Ë\nÐù¿¹ °ÚÚÙÚ©­	\0û	\0	\0°\0\0 °\0\0\0
\n
\0¬°Ú	©	©Ë	 		 \0\0	\0É\0\0\0\0\0\0\0\0\n\0\0\0\nð\0°É½é
\r	¹É»
ð°ð°Ð°¹©¹¹
	\0©é		\0\n\n\0\0°°°©À
	\0 °\0¹
		\0É	©\0	\0	 \0\0\0\0\0
Ð©		
	
Éé\0\0\0\r
¿ËÛË	­
ÚË°	\0°\0	\0 © \0 \0	É© ¼
	\0°°½
À	\n\0\r\0\0\0\r¼ \0\0\0\0\0	\r

	À
	
\r\0©«É¹Û	 ùé	°ð¹¹©	\0ð\n	\n		\0\n\n	\0¬\0©\0\0¿ÿ			
\0\0
\0	\0\0
		
\0	
		©\0©É\0	¿½°©ù»éû	 û


©	©		\0\0¼\0	\0© °\0	\0Ð

\n	\0\0	ûûÉ© \0\0\r	\0\0\0\0	\nù\r\0°ù\0	\0©
\0ùû
	¼°°Ùé©ð°

	\0


	\0\n	\0	\0
	 © \0		\0¼
ÀÛ\0
Ë\r 	\0
	\0À\0ð»Úù©	é\0\0	\r
¹û	¹­


É
Ë	ð°		
	\0ðð		\0
	\n	\0\n


\n\0\0\0		°¹¹©Ë\0°ÐÚ°ÐÐ©  

É	Ú	
\0
­½©¾ºÐ°ÚÚ°ð°°
	
	°\0
	©	©	\0\0\0
\r\0à¼\0\0\0
	­\0¹
Û	©\0°ð	©©	\n		\0		ðù
©
	
À		éðÛéý©Ù¹¹©Ë	
Ð°°©		\0\0	\0\0\0\n
	\0


\n\0\0°©¼¼½°Û	\0°	©ð\0©\0	Ú¿°ÙðÐé	\0¼½
ð°¹­©©
	
°	\0éù°\0			\0\0\0  °\0\0\0\0¹É©¹\r°ð¿Ú©°¼
	\r©
Ð¾°»\0©éúÚ¹ëÛ

¹Ù»©	Ð°		\r©	

		¾	\0\0	\0		 \n\n	\0	\0©ËºËÚû			
Ù
Ú
\0	°ð		½\0ðÛß¹ú½¹
¹º©­ 
\nÛ

	
	
	\0\0éùÉ	\0	\0\0\0\0\0\0¼Ð©¬\0\n\0\0°¹Ð½ù\0½°½			\rðÐ°Ë¿¹½©¹

Ë\r°			
	
		
		¿°	\0		\0\0	\0\0	©\0
\n	
	\0	

Ð°°°°ð		ð	

Àë°
\0	\0Ðð\0°ùÿËûÐ¯é¹¹¹©é©©ð©
\n
	
	
\0\0°	\0é¯\0\0	\0\0	\0\0°°\0° \0\0\0		
Û
Ú
ð\0	À	­ ½©ù	©©¯
¹ðù½

¹	
¾¹
Ë	°Ù
\0			
				°¹		\0ÚÐ	\0\0	\0\0\0\0\0\0©\0\0

		
	\0\0°¼¹°°	ðÉ	°

	\0
ËÛÚÚ\0	ËÐÛÚ
½»ÛËðùù¹©	¹	°ù©ð
\n
\n
	©		¹		\0¹	\0
\0°\0\0\0	\0à°ðÊ\0\0		\0	é¼	ð
\0		é\r¹ 
Ë­»
Ù 	¼½©ù½½¿«©	\0\0ù		°		\0\0\0¼			\0\0\0\0\0\0\0
\0		\0©©\0\0\0	 ¹¼»	©©°©ð	
ÚÙÛ½°ëÚð°¿ÞùúÛù
©	©



\0°
\n		©		©	\0\0­\0\0\0\0\n\0©\0\0\0\n\n
\n\0\0°ù­«Ë
ÚÙðÉ©ý ¹é¼¹¿¹ù«½»¹ûÚ°°°½©\n
\0°	°©		\0\0\0\0
\0\n\0\0\0\0\0\0	\0	\0	 °\0\0	\0Û
©©¹é	°Ð¹ÛéûË¾ûßéé©¹¿	»	¹

					 \0©				\0\0Ê\0\0\n\0\0 \0\0\0\0\0°\n	\0\0\0	­©Û©°Û¹éËùé¼¿¼¹é­¹©¹Ë½¹¿û¼½»û¹½©¹°¹© ©\0\0\n°	\0\0\0\0\0
	\0\0	  \n\0\0\0\0\0\0\0	\0	\0
\n\0\0		°º©©
¹°°¹ûÛÛËÙ°ùÀ¹ËùûÛÛ¿½ùûÛ
Ë¹©¹			
\0		\0
	\0	 		\0\0\0\0\0\0	\r©\n\0\0\0\0\0	  
\0\0	

	éÛ	­©½­°ºÛË»»ðû­¿¿»Ú«Ú¹°¹

\n	\n	°	\n\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0	\0°		 
\0\0\0\0\0Û¹©

	°©	¹Ë¿
ÛÛ
Ûßù¹ðù¹¼»¹

\0			\0°\0\0				\0\0	\0		\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 	\n

\0\0\0°°¼¹ð
¼
¹»­°ºé¹Ëû	°¹Ú½º¹¿°°¹¹°©©\0¹		©\0\0\0	\0\0\0\0\0\0\0\0\0 Ê	\0\0\0\0\0	\0°	\n\0\0	\0Ë
	°½	¹
­Úé»
Ë
ÚûÛÚù¹»Ë
°

	©©\0\0°©	©		\0	\0\0\0\0\0\0\0\0\0	\0\0	\0\0\0\n\0	\n	\0\0\0	©é©à
°¹É©
°©é°¹¹¹¹»ù»Ëù«ÛÛ
°°°¹© 
	\0\0\0\0\0\0\0	\0\0\0\0\0\0\0 \0\0\0¬°\0\0\0\0\0\0\0
		
\0	\0\0¹¹É­	©
	ð°Û
­º¹	


Ëùû»ù©¹¹¹©	¹	©©	
\0	©	©				\0\0\0\0\0\0\n\0\0\0\0©	\0\0\0\0\0\0\0 \0
\0	\n\0\0\0©©Úðºù©é©
	
\rÉ©ðù»Û¹¿Ù»¹¹­°Ûû°°		 	©\0\0\0\0\0\0\0	\0	\0\0\0		 Ê\n	\n\0\0\0\0\0\0°\0\0\0\0©Ë		¹
°°¹©©­\0¹ 	­ºÛù¿½»ùÛ°º
	°©	© \0	\0\0©	\0\0	\0\0\0\0\n\nË\0À\n\0ð°\0\0\0\0\0\0 
\0	\0\0\0
Ë©Ë	©©à
\n\r
Ð
		
	°©°¹½»Û«
¹¹	°°	 \0	\0\0\0\0	\0\0	\0\0 ðàà à
\n\r\n\0\0\n\0\0°\0\0\0\0Ú©ð°Ú		¹é© ù	©©Ê\0Ú
ÛÛ½¿¿¹ûÛé¹ù	©©°¹	©	\0	©\0\n\0\0	\0\0\0\0\0\0\0\0À\0Ê\nÚÊÚ°\n\0	\0\0\0  \0\0\0\0
	©			©\n\0	\n				©Ð	°¹©»Ûû¹»Û¹é¹»	°	 \0\0	\0\0\0\0\0\0\0    \r à©\r­\0
\0\n\n\0° \0\0°©°É¹©¹© ¹
	\n\0Û­»¹ùûù»
	©©	©\0	 		\0\0\0\0\0	\0\0\0\0	\0\0\0\0\0\0ÀÚÐú¼º  °\0\0\0\0\0\0	©Ë	­	­\n\0\r\0		©	
		°©Û¿¹ûÛÛ¹©°	©	©\0\0\n\0	\0	\0	\0\0\0\0\0\0\0\0   àé­«éëË­\r­¬© ¬\n	©\0\0\0\0\0°	©Ë

	©Ð	°Ë
Û
\n
	
\n\0Û»ûûÛ¹ù¹©¼¹Ð°°\0¹	©\0  \0\0	\0\0\0\0\0\0	\0\0\0 À\0\0\0°ð¼ðúÚú°é½­
	\0\0 \0\0\0\0¹	\r
	\n\n¹\0	\0É				É	à°ùù½¿»Û»ù¹°¹	 
©\0	\0\0\0\0	\0\0\0	\0\0\0\0\0\0\0\0\0  àú­ëï½¯Þàé \n\0	 \0\0\0\0	©Ë\0ð°©	©\r

\0
\n°	ËË»ûù½¹ùûÛ©

	\0\0\0	\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ú°ù¯½­º¾Ûû	\n\0\0	\0\0\0\0°\0	 ¹ ¹À\0	
	\0\0¹úû¿¹¹°¹°° °
\0\n\n\0\0\0\0	\0\0\0\0	\0\0\0\0\0\0\n\n\0   éÏÚýëÊûÏ¾ðð 	\n\0\0\0\0	\0©\0°	°°	
\r\0	Ê
\n	©°\n \0
¹ûû¿¹ù»Ë	

	©\0		\0\0\0	\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0ë¯ú¿¿ðþ»Ë \0\0\0\0\0\0\0©\0Ð	
	°¹\0°\0
			\0½
Û½¹©¹ù°°¼°\0\0\0\0\0\0\0	\0\0	\0\0\0\0\0\0\0\0\0 \0   ¬Þß
ëÞÿþ¹ 	\n\0\0\0\0\0 ¼	 ð\0\0
	
	É
\n\n\0\0\0\0©ëû¿»û»Û
¹	
	©		\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0©\0\0\0\0°¼ûëúÿ¿ùëÛË\0\0 \0\0\0\0\0\0\0\n\0¹		 Ë	É °°
\n©		
Û½¹½¿¹ù¹»	 °°	\0°\0 \0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0 À\n\0¬ àé¾Þ\nü¾°Ú\0\0	\0\0\0\0\0\0©\0© 
\0	\n	  \n\0	\0

¿ûÛûÛ¹¿	Ð 				\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0À à\n\0
\0ºé­¯­©½¹­\r \0\0\0	\0\0\0\0\0 © °Ð	©©\0	\n	 	\0©ùûÛ¹û½»¹­¹©¹­©©© \0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0z­þ','Nancy heeft een  diploma psychologie, behaald aan de Universiteit van Gent  in 1970.'),(2,'Fuller','Andre','Nachtegaalstraat 12','Boutersem','3370','016 73 12 45','Vice President Verkoop',4250,'10','34',1,'1991-07-12 00:00:00.000000','1942-02-19 00:00:00.000000','1',_binary '\'\0\0\0\0\0 \0\0 \0×
OLE2D24E9FA\0PBrush\0\0\0\0\0\0 \0\0\0PBrush\0\0\0\0\0\0\0\00 0 191 222\0@T\0\0BMT\0\0\0\0\0\0v\0\0\0(\0\0\0À\0\0\0ß\0\0\0\0\0\0\0\0\0 S\0\0Ä\0\0Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÀÀÀ\0\0\0ÿ\0\0ÿ\0\0\0ÿÿ\0ÿ\0\0\0ÿ\0ÿ\0ÿÿ\0\0ÿÿÿ\0\0\0\0\0\0	\0\0\0\0\0\0\0	\0\0	\0\0\0\0\0	\0\0\0\0\0\0\0\0	\0\0	\0	\0	\0		\0\0	\0\0	\0\0		\0\0\0\0\0\0\0	\0			\0\0		\0	\0			\0\0\0	\0\0		\0		\0\0\0	\0	\0\0\0			\0			\0\0	\0	\0	\0	\0\0		\0		\0		\0		\0\0		\0\0\0\0	\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0	\0\0\0\0	\0	\0\0\0\0	\0\0	\0\0	\0	\0		\0\0\0\0\0	\0	\0			\0	\0\0\0\0			\0\0\0			\0\0	\0\0		\0\0	\0		¯Ð\0				\0	\0						\0\0	\0					\0	\0	\0\0				\0		\0\0	\0			\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0	\0\0	\0\0Àð°\0\0	\0	\0	\0\0\0\0\0	\0\0	\0		\0\0\0\0		\0	\0	\0\0\0\0\0		\0\0\0				\0\0\0\0		\0	\0\0\0\0	\0¼
\0\0				\0	\0\0		\0			\0	\0						\0	\0	\0\0\0	\0\0	\0\0		\0	\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0	\0\0\0	\0	\r\0À\0\0\0	\0	\0	\0\0\0\0\0\0	\0	\0\0	\0	\0\0		\0		\0\0	\0\0\0	\0\0\0\0					\0\0\0\0	\0	\0	\0\0àïË\r	\0									\0	\0	\0			\0\0			\0		\0\0\0		\0	\0	\0			\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0	\0ðÿ\0Ê		\0		\0	\0	\0\0	\0		\0\0\0\0	\0		\0\0	\0\0	\0		\0\0	\0\0	\0\0\0\0\0\0			\0\0	\0\0\0	\0\0		\0		\0	àùÏ\0\0					\0	\0	\0		\0	\0		\0	\0\0	\0\0		\0		\0\0	\0\0	\0	\0		\0\0\0	\0\0	\0\0	\0\0\0	\0\0\0\0\0\0\0\0		\0\0\0\0	\0\0\0¼	\0		\0	\0	\0\0		\0\0\0\0\0\0\0								\0	\0			\0	\0\0\0	\0\0\0\0\0\0			\0\0\0\0\0\0\0\0	\0\0\0	\0\0À	ï
À\0	\0\0\0	\0	\0		\0\0\0	\0				\0\0\0\0		\0		\0\0		\0		\0	\0\0	\0\0		\0\0\0\0\0\0	\0	\0\0\0\0		\0\0\0\0ÊËß\0\0Ð	À\0					\0	\0	\0\0	\0		\0\0	\0\0	\0			\0\0\0	\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
à\0©É\0					\0	\0		\0\0		\0	\0	\0\0	\0			\0\0\0\0	\0		\0\0\0	\0\0		\0\0\0\0	\0		\0\0\0\0\0\0ÀÀùË	¿Ð\0\0	\0		\0	\0	\0\0\0	\0\0		\0\0	\0		\0\0\0	\0	\0\0à\0\0\0\0\0\0	\0\0\0	\0\0\0\0\0\0\0	\0\0\0\0	\0\0\0\0\0\0\0\0\0\nðð\ré¿			\0\0	\0	\0		\0\0\0	\0	\0	\0\0	\0	\0\0\0		\0\0	\0			\0\0	\0\0	\0\0	\0\0\0		\0\0\0\0		\0\0ÉÚÏàÀÿðð		\0		\0\0					\0	\0\0	\0\0\0	\0	\0\0\0\0		\0\0\0\0\0\0	\0\0\0		\0\0\0\0\0\0\0\0\0		\0\0\0\0	\0\0\0\0À¯\0À¬\r\0ÿÿÿ				\0\0	\0	\0	\0	\0		\0\0	\0\0		\0		\0	\0	\0	\0\0í	\0	\0\0		\0\0\0	\0		\0		\0\0		\0	\0\0	\0	\0Ð\0©Éà\n\0ïÿÿð\0	\0	\0		\0\0	\0\0\0	\0	\0\0°\0\0	\0\0\0	\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\nÐÀÐÀÿÿÿÿ\0\0\0\0		\0\0	\0	\0		\0\0	\0		\0		\0\0				\0\0\0	\0		\0\0	\0	\0	\0\0	\0\0\0\0\0\0\0	\0\0	\0\0\0	\0\0\0ðÉí \0\0ÿÿÿÿÐ			\0	\0	\0\0\0\0		\0	\0	\0\0		\0\0¼°ð\0\0\0	\0\0\0				\0\0\0\0\0		\0	\0\0\0\0ÎÐ\0Ï\rÀ\0ÿÿÿÿÿ\0						\0	\0	\0		\0	\0	\0				\0\0\0		\0\0\0Ë\0	\0	\0\0	\0\0\0\0\0\0\0		\0\0\0\0\0\0\0	\0	\0\0\0\0\0Ë
ËìÚÐ \r¿ÿÿÿÿÚ		\0\0						\0		\0\0			\0	\0\0	\0\0\0	\0°ù­¯\0\0	\0\0\0\0\0	\0	\0\0	\0	\0\0\0	\0\0\0\0			Àí¯¿àÉ\0ÿÿÿÿÿý\0\0\0\0		\0\0	\0\0	\0\0\0	\0			\0	\0	\0	\0\0­¬Ú\0\0\0\0\0\0\0		\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0¬êÚðÿÏÐ\0ÿÿÿÿÿÿý	\0\0		\0						\0	\0\0	\0\0\0\0	\0	\0		\0\0	©°Ûé\0\0	\0\0\0		\0\0\0\0	\0\0	\0\0\0	É
ßûþ°ÐÿÿÿÿÿÿÿÐ\0	\0		\0			\0			\0		\0	\0\0\0\0		\0ê¼é	\0\0\0\0\0\0	\0\0\0	\0\0\0\0\0\0	\0	\0\0\0	\0\0àÞþ\0ÿÿÿÿÿÿÿÿ	\0\0\0	\0		\0		\0\0	\0\0\0	\0\0	\0\0	\0			\0\0	úÛÛÊ\0\0\0\0\0	\0		\0\0		\0\0\0	\0			¯ÿðÐ¿ÿÿÿÿÿÿÿÿù					\0\0				\0	\0		\0\0\0	\0\0¯	Ë\0ð\0°\0	\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0	\0\0ðéìÿÿ\0ÿÿÿÿÿÿÿÿÿÐ\0	\0\0	\0\0	\0		\0\0\0\0			\0	\0\0\0	\0	Ð¼¹ïÉ\0\0\0\0\0\0\0	\0			\0\0		\0\0\0\0\0		Úûðéð
¿ÿÿÿÿÿÿÿÿÿ					\0\0	\0	\0\0\0		\0					\0\0\0\0					\0Ë©À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0	\0\0	ðïÏ¿	\0\0ÿÿÿÿÿÿÿÿÿù		\0				\0		\0	\0\0\0\0					\0	\0\0	°¹ù¾°ð\0\0\0\0\0\0	\0\0	\0\0\0\0\0\0\0\0	\0\0ý°ÿù\0\0\0\0ßÿÿÿÿÿÿÿÿÿÛ							\0\0		\0\0	\0\0	\0	\0\0\0\0\0					\0\r­©éË\r\0\0\0\0\0\0\0\0\0	\0	\0\0\0\0\0\0\0\0\0\0\0\0	þÞ	\0\0\0	
ïÿÿÿÿÿÿÿÿý\0	\0\0\0		\0\0\0\0\0\0\0\0\0\0	\0éð½©à°ù\0\0	\0\0\0\0\0	\0\0\0	\0\0	\0\0		\0ëð\0\0ÿÿÿÿÿÿÿÿÿÿùÉ		\0		\0\0	\0	\0	\0\0		\0		\0	\0	éùÚ\réà\0\0\0\0\0\0\0\0\0	\0	\0\0	\0	\0\0\0\0		\0ÉÉ\0\0\0\0©ðÿÿÿÿÿÿÿÿÿÿ½	É			\0	\0		\0	\0\0	\0	\0\0\0	\0\0		\0	\0
éð°©Ü\0\0\0	\0\0\0\0\0	\0\0\0\0\0\0\0	\0	\0\0\ný 			\0	\0Ðà\nÿÿÿÿÿÿÿÿÿ\0\0	\0		\0			\0	\0\0\0\0\0\0ð½¹­©°ú½	\0\0\0\0\0\0	\0\0\0\0\0\0\0	\0	\0		ÿ\0ðÐ\0	\0Ïÿÿÿÿÿÿÿÿúù	\0				\0	\0\0\0	\0	\0\0\0\0\0	ÊÚÚ°Ð\r©Û\0\0\0\0	\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0üÿ\0	\0À\0	\0ÉÿÿÿÿÿÿÿÿÿÿÐ			\0	\0	\0	\0	\0			\0	\0\0		\0\0\0\0\0\0é¼½½­Ù¯ùÚðû\0\0\0\0\0\0\0\0\0\0\0\0\0		\0	ÿ\0Ð\0	\0	\0¯ÿÿÿÿÿÿÿÿÿÿ\0		\0	\0\0	\0	\0		\0				\0\0\0¹É¹­¹ ù¬©Û\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0ûÉ\0Ðü\0ÿÿÿÿÿÿÿÿÿÿÿÙ		\0			\0\0	\0		\0\0		\0\0	\0\0	\0\0ÚÚ
ËÚðùð\0\0\0	\0\0\0\0	\0\0\0\0\0\0	\0\0\0
ü¬¯à\0\rÙ	ÿÿÿÿÿÿÿÿÿÿÿÿÿ						\0\0					\0\0\0\0	\0\0
ù\r­¹éÐ½ùÀ\r©ù	\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0	\0	ÚÐ\0ÊÙÀ¹ \0ÿÿÿÿÿÿÿÿÿÿÿÿÿý			\0\0\0\0			\0\0\0\0				\0\0\0	\0\0\0\rÚü
Ú¹ðððÛ\r\0\0\0\0\0\0\0		\0\0\0\0\0\0\0\0	ü\0\0	\0\0	ÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	\0				\0\0\0\0\0\0\0	\0\0¿¿½©ËË½½½½
½½ûûË\0\0\0\0\0\0\0\0\0\0	\0\0\0ÊùÀ\0	\r	éÿÿÿÿÿÿÿÿÿÿÿÿÿÿý				\0\0	\0	\0\0					\0\0\0	\0\0\nÛßýÛÙùûùûùÝ¹¹ùÿÛÐ \0\0\0\0\0	\0\0\0\0\0\0\0\0\0	ÿ\n\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿû	\0\0	\0				\0\0\0\0\0	\0\0		\0
	ù©ûû¿ùùý¿¿¹Ùû¿ÿûù½ûý¿Ð \0\0\0\0\0\0\0\0\0				
ïý\0	\0\0\0	ïÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	\0	\0\0\0\0				\0\0\0\0ÿ¿½¿ÿ¿½ùûûý¿¿ß½½½½ûÿ¿ÿûÙ\0\0À\0\0\0\0	\0	\0\0\0\0\0ÿÿ\0\0\0	\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿý		\0\0				\0\0\0\0	\0	\0\0\0Ûÿûÿ°°ÿûûÛÛÿ¿ÿÿÛÛÛûûÿûû¿¿ÿ¿ûûÿ°\0\0\0\0	\0\0\0		ßÿÿðÚÐ°\n	¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÙ				\0	\0	\0\0\0Ûùÿÿ¿
Ûÿùûÿûûÿ½½ÿû½ýûßÿ¿ÿÿ¹ûûû\0\0\0\0\0\0\0\0\0ÿÿÿÿÿÐïÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0	\0\0\0		\0\0\0\0	úÿ¿ûûùð¿ûÿ¿ßÿ¿ÿûûÿûÿÿ½ûûÿûûûûÿ¿ßÿÿý\0\0\0\0\0	¿ïÿÿý«éúû¿¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÙ			\0		\0\0				\0­©¿ûßßÿ°úÿùùùûûÿÿ¿ÿ½¿ùùÿÛ½ÿû½ÿ½Ùùùûûûÿ¿\0\0\0\0	ïÿÿþû¹ùùùÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0	\0\0	\0\0\0\0\0\n½ûùùû
ûÿÿ½¿ýÿ¿ûùûÿÿ¿¿ù½½¿ÿ¿»ÿÿýûý°ùð\0\0\0\nßÿÿý¹ëÿûÿûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿý		\0\0		\0\0\0ð°ûû¿ùûÉß»ß¹ûùý½¿ÛÛßûÛÛùÛùùùù½¹ùùû½»ÛÛùÛ\0\0	ÿÿþí¹úÛûùù½ûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÐ	\0	\0\0\0	\0\0ÛË©ËÛý¿½¿¿ûÿ½ûûûý¹ûÿ½½¿¿ÛÛûÛÛÛß¿ß½½½½ÛÐ\0ïÿý¿½½»ý¿ÿÿ½ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿù	\0\0		\0\0\0\0­º
Ð¹­¹Û½¿ù»½¹ùûß½ÛÛ½¿ÛÛ½¹ßù¹ùùù½½¹½½¿ù½¿½°\0ÿÿð°­¿ÛûùûÛ¿¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð	\0\0\0	\0¿°
Û¹ùûý»ðÛß¹½ûÛÙù¹ùù½½»ÛÛÛÛÛ½ùù½ÛùÛÙ½ÿí
ëÛ¿¿½¿½¿ßûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿý	\0	\0\0	\0\0©éªÚðÚ	
ÛÝ½¿ÿ¹ù»¿Û¿ßÛùý¹½½½½½½»ù½½ÿÛ½»ûùù½¿¿¿ßù¹ú¹ëûÛùûû¿»¿¿ýÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûð				\0\0
½»	»½¹»¿ÛýÙûÙ¹ù»Û½½½»ÛÛÛÙÛÛ¹¹ùùÛùÙÛÙ½°ÿ°É©¼¿½ûÛÛßßÿßÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	\0\0\0\0\0\r°°¼
©Ëé©ëýÛùû¿»ùý½¿ûÙùûý¹ÛÛ½½¿¹ûûÛûß½½½¿¿ý»ÛùûûßûÉùððºûùú¿ûû»úÿûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿúÙ\0úË½¿«ËÿÝ¿Ûýÿÿ¿¹ù½ÙÛ½¹ùùûÙ½½½»ÛùûÛ¿½½¹ý	é	«	­ð¼¹ùï½ÿÿÿÿÿÿÿÿÿÿÿÿïÿ
À	\0\0\0	©©
		ë»íù¿»ûûùùù½½½¿½ÛùûùùÛý»½»ûÛÿûÛý½ûÿ½½Ûûùûß¿Ú\nÚÐÚ­é¿¹ûùûûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿù	\0	¯	¾
Û¿¾¹ ûÿ¿ÿÿÿÿ¿ÛÛÛ»ß¿ÛûÛßùûÿß¿½½¿ûÿ½ûùûÿ¿ß¿»ý½¼	À°©ËÚð°ðùß½¿¿ùùÿÿÿÿÿÿÿÿÿÿÿÿÿÐ\0\0\0¼°©° ¹


Ë
Ûùù¿¿¿ûÿ¿¿ÿ¿ÿûý¹ÿ¿ÿ½¿¿¿ÿûûÿûÿÿ¿ûÿ½¿ÿÛÛû½¿ÛûÉ
\r©©¯ù¯éð¿¿û¿ÿÿÿÿÿÿÿÿÿÿÿÿÿ°Ûð»ùùÚ°ÿÿÿÿÿ¿¿Ûÿ¿ÿ½ûÿùÿÛÿùÿÛ¿¿ÿ½¿ûûÿ½ûûÿ¿¿ÿ¿ß½¿¿¿\0É©\n
ÐÐ°ûÉÛð½¿ÛùïÿÿÿÿÿÿÿÿÿþðÀ\0­½¿Ðð°°\n»ëûù½¿ûÿÿÿÿ¿ûß¿¿ÿ¿ûûû¿ù¿¿¿ýûÛÿÿ¿¿¿ÿùûÛûûûÛÛùÿ	¬	½

ÉéÞ¹éí¿ÛÛ¿¿ÿÿÿÿÿÿÿÿÿ	«ÛË½º¹­º
ÐÚÿ°ûÛÿÿÿûûÿ¿ûÿÿûÿ¿ßÿß¿ÿùÿ¿¿ÿûûßÿÿÿÿ¿ÿÿ½ÿÿûß¿	ÛËðù¾Ð¼½	ë©¹¹©ë°ûß»ùïÿÿÿÿÿÿÿÿûéºÐ°»Û»ÚÐù©ð°ð»ºÿ½¹ûÿ¿ÿÿýûÿ¿ûÿ¿ùÿ»ûûý¿¿ûÛûûûÿ¿¿¿¿¿ûùûûûÿ¿ûð½½½ùðúÐéé¼¼¹ý¹¹ÿÿÿÿÿÿÿÿÿËù»	½°ý°»°»
	\r¿ûÛÿÿûûÿùÿÛÿ¿ûÿÿ½ûÿ¿ûý¿ÿÛÿ½ûÛÿÿ½ÿ¿ßûûÛÿ¿¿¿ï¿ÚûÛû
É©»ú¿«ÿÿÿÿÿÿÿü¿¿\0ðú½»­°¹ ½¿ÿý¿ÿÿý¿û¿ûû¿ûß½ûûû¿ûÿ½¿ûùû¿½ÿ¿ÿûùûûÿ¿½ùûûùÙ¹ùí¼ÿü¹Ûéùð°ÀÉ¹½\rÐ¹ð¹¿ÿÿÿÿï
ÿù»
	 ù°°©©Ë\nÛû©ûûÿÿûÿÿ¿ÿÿ½ûûý¿ÿý¿ûßý¿ÿÿÿûûÿ¿½¿ÿ¿ùûÿ¿ÿßû¾ý¿Ûûùÿûÿ¿¯ÚÚÚ¯Úù°ýÿÿÿÿýÿûûð°Ëé¿\n°ûý¿û½ÿÿÿ¿ÿûÛùûÿ¿»ÿ»ûý¿ûûûûûÿ¿¿ùûÿùûÛÿ¿ûÿ¿¿	ùù¿ßß¿Ûùýùûé©é¹©­ ù°½½É¿ÿþÿÿ¯ÿÿ¿\n°ð°º



½ûð»ûÿ¿ûß»ûÿûÿ¿ûßßûßÿûý¿¿ýÿýûÿÿ¿ÿ¿ÿûÿûßú¿ÿ¿ûùÿ¿Ûû¼ëÚÛÐ
ËÐ¹¹©Ïÿÿþ¾Ûÿÿ¹ù\0é\r­¾¼¹©°ûÛÿ
ÿûÿ¿ûßûÿ¿ûÿûûÿÿ½¿¿ûý»ûûý¿ùÿ¿¿ûÿ¿½ûÿû	Ë½¿ÛßÞ¿ý¼½ùùûË	©°°¹
Ððÿÿÿÿÿÿ¿\0©¹¯\0\nÛ\0¾©½¿»ð¹ûÿÿ¿¿½ûß½ùû¿¿ûûûÿß½ûÿý¿¿ÿ¿ùùÿûùÿ½ûû¼½ûËý¿ÿû»ù¿¿¯°ÛÉð¹ë\rºðù\rÿððÿÿÿûÛÚ\nº	»ûÛÿùÿûûßûÿ¿ûÿ¿ÿÿß½ÿÿûûÿ¿ûûÿÿûÿ¿ûûÿ¿ÿûÿ¿ûÙ°ð¹ÛÛÿßÿý½½¹­ý»ß
Ð¹É©\r¹©Û¹\0ÿÿðûÿ¿¿
¹	©½º
ë\r¹ûË©¯¿¿¿ÿ¿¿Ûÿ¿ûûûÛûÿ¿¿ÿûû½ÿûûÿùÿ¿ÿûß¿½ûÿü»Ëùÿÿ¿ÛûÝ¿Û
¼°¼°°Ð°Êÿï¿ûÿÿ©û

ÚÐûð°°ûùûùûßÿûÿûûùÿ½ÿ¿ûûÿÿÿ¿½ýÿ¿¿Û¿ùÿûûÿ¿Ûû¾½½ùùÿ\r»¼½»ùÛÙù¹ùùé	
½°
ßûËÿ¿ÿ°ð°­

½¼¼ºù¯»Êÿ¿¿ÿ½¿ûÿ¹ÿ¹¿û¿ß¿¿¿½ûûûûÿÿ¿ß¿ûûÿ¿ýûÿ¿\r	ËÉûÚ¹ÿ¿ÛùûÐÛÙ­«ûû\r©©°°	\0þüûÛÿûË¹ËËû
¿û½¹½ù¿ÿûÿÿ¿ùÿ»ÿÿ½ÿûÿÿÿÿ¿ÿ¿ßûûûûß¿¿ûý¿¿Ûÿ»¼Þ¹ûü¿ÛÙ¿Ûû½½	ûÛùë

©É©¹\0éû¿ûùð¹ë¼¹«°¿½««ù½ÿ¿
¿ÿÛÿ»ûÿùýûÛÿ½¿¿¿¿ûûÛûÛß¿Ûûÿý¿ûûÿ¿	ëÐûÛ½¹½¹ý¼­¿¹éÛÛûÙ
Û½°	À©
É\n		ì«û½¹«À¿Û¾°ÛËùúÚ¹Úûûû°ù½¿ûÿÿûÿ¿¿½¿Ûûÿýÿÿÿ½ÿÿûÿûý¿ýûûý¿ÿùÿ¼½¯¼½ð½ûÛÿûÛûÛ¿½¿¿½«¿
Û¿\r
¹	ù½¿ÿº¹ù»Ë
¯½©Û©¿½¿ÿ½¿ûÿÿý¿¿ûýûûûÿ½¿¿ûûû¿¿û¿ûÿ¿½¿ûÿ¿©	ÛÛ­¼½½¿ùùëùÛ	½»À¹à		À°\0\0\n©ýù©
ü°©¹ ûÚ«Ë¿ûÛù¹ûûûûÿ¿½ÿßûÿ¿ûÿ¿¿ÿÿûÿý¿ûûÿý¿ûûÿëù­ùþ½¿¿ÛÛûÿùÿ¿½¿Ûùûû¿û\r¿Ú	ðð¹	Ðà¿»ùûû
ß½½¿°ùð»ûß¿ûßÿ½ÿ¿ÿûÿûÿ¿¿¿Ûÿ¿ûÿß¿ù¿ûûûý¿ßûûÿ½ÿùËß¿ÚÛß¿¿ß½¿¹ùû»ù½¿¿É¹ÿ¹¹Ú°		\n	\0\0\0\0­ÿ¼½¹àð©«Úù¿
\r½¿¿¿»ùûß¿¿ÿ¿ûýûÿ¿ùÿ½ûûý»ý¿ß¿ûûÿÿûÿ¿°¹ððûðÿ½¾ûùûÿÿßûùûßÛùý¿ÿ¯©Ú		\0\0«½¹¿ûû°¿
	¿¹¿É¯ûùÿÿÿÿû¿ûûß¿ßû¿ùÿ¿ûÿ¿ÿûýûÿ¿½¿ÿûÿ¿½ûý­¼»ÛÞ°Û½½þÿþ¿¿Û¹¾»Ûûú¹¯ùý©°		\0	\0\0\0\0ÚûÿùÙÿ

©ëÛ\r¿»ë
¿ûÿ¿¿ÿ¿Ûûû¿¿¿ÿ¿ûß¿½¿¿û¿ûùÿý¿¿ûùÿ½úé¿ûûß¿ËÛùúÛÛßýûùû¯ßûÛÝûÛý«Ûº°	\0À\0\0\0»ÿ¿«ûÛ½©Ûù½½½¹ûûÿ¿ÿÿÿûÿ¿ÿÿÿÿßùÿ¿ûÿûÿûß¿ßùÿûûÿÿ¿ÿûÿ¹ëúýùé½»þ¿ÿ¿ÿûß¿½½»ÿ¿ÿ¹ûÛ½ëßÛ
À¬		\0\0Àðûÿûù¹é©«Ë¾¿½úÛûÚ¹ûÛÿûÿ¿ÿÛÿ¿¿¿¿¿¿ûÿ¿¿Ûûý¿¿ûý¿ùûß¿¿°éð½¿»ùð½ùùûß¿¿ûùé½ùÿßûÛëß½¹
É©	\n\0\0Ð\0
ù½«¾ ½º	ß©
»ûÛÿûÿû¿ûßÿýÿûÿ½ùÿûÿ¿ÿ¿ûûÿ»ÿ¿¿ûûßûÉ¹éûûýÿ
Ûùÿÿß¿¿ë¿ûû¿ÿ½½¯½½\0Ð\0\0\0\0\0¿­
ûÛùý¾½»©Û­ºùù½«½ÿÿÿÿÿÿÿûÛû¿ùÿ¿¿¿Ûùûû¿¿Ûûßùÿÿ¿ß¿¿Ûûùð°ù»Ùù½ûÛÛ¿ß»ËÛùùð°°Ë\0\0\0À\0\0¹¿	û©°ù 	­\n
Ú¹û¹¿ûûÿùûÿ¿¿ÿÿûÿûÿûß¿¿¿ßÿß¿¿¿ûÛÿ»ûý©éû¾¿ý¿		ùùù½É¿¿½ÿÛûßûëÛûËß	\0¬\0éë\0¿°Ûÿ¿Ú°¹½»¿ßÿ¿ÿÿÿ¿ûÿûÿ¿¿»ÿ½¿¿¿Ûÿ¿ûÿ¿ùÿ¿¿Ûÿý»\rýü¿ûÉ		
	½°¹ùû¿¿ÿÿ¿\r½°\n\0\0\0\0\0
Ð¿
Ð¹©ð \r\0\0Ë½­½»ûÿûÿûý¿Ûÿ¿ÿÿßùûýûÿ¿¿û¿ùý¿ûßÿ¿ùûðÙ­¿«ûÿ½½ Ë½»		½ùùûûûûéûûÛ½½\0\0\0º¹«à½¿¿
¼»\n°Ú¹»ý¿ÿ¿ÿÿ»ÿ¿¿ß½ûûÿ¿û¿ùûûß¿ý¿ûÿ¿ûÛÿ¿¿½ªÛËßûÿ	©Ëºûûÿü\0ß»ÿý¿ÛËÛùð	
	\0\0\0\0\0\0ûûÐ°Ë°¼©\0­	û¼»ûûÿûùÿùÿ¿¿ÿ¿¿ûÿý¿ùÿûùûÿ¿ûÿ¿¿ùÿÿÚ¿½½ððÚ¿ßÿÿ¿ûûù¿
»ÛÛûÿ¿ùûËÙð¼°½	­\0Ð\0\0\0¹»úû
¯»«
Û\0\nð¼
ÿÿ¿¿ÿ¿ßûûýÿûÿ¿½¿½¿ÿ¿ûý¿Ûßÿ¿½¿¹ëÉé¯¿¹°ðü¿¾ÛÿÿÿÛßùûÿ¿ûß¿¿½¹\n\0\0\0\0\0À
½	ÿ¹ûÐ©ù
©
Ú¼»ý»Ûùÿ¿¿ÿ¿¿ÿûûÿ½ûÿÿùûûûÿ½ûÿ¿¿¿ûÿûûÐûË\r¿¿Ûÿ¿ûû¿Úù¹ûÿûûéûÚÛ	\0\0\0\0\0 	ù°¿ûÿ¹«ß°°º\0 \nü°©þûÛù»ÿÿ¿¿ÿûûÿ½¿»ùÿ½ùÿ¿ûÿÿûÿ¿ÿ¼½ºéËÛ°ûéùù½ù¿¿Û¿ßùÿ½¿Ëùùù­°\r\0\0\0\0À\0\nûËù¿ûÚ½«ù
\r©°úÚëé©½ÿ¿ÿÿÛûûÿ½¿¿ÛûÿÛùÿ¿»ÿ½ÿ¿½ûß¿°éÛÞ¼\0\nÝ½ÿ»Ù¹¹ºÙëÐÛ¿»Ûù¿ÛÚÙ\r	\0\0\0\0\0\r°°ÿ¿©Ð½û©Ë
ú\0ï¹»ðûÿ¿¿ßûÿ¿ÿÛ¿ÿÿ¿ûûÿÿÛÿ»ùÿ¿ûßºûùðù\0©	
	ÿùý½½Ù½	©À°¿ûÏ¿½¹ýº\0\0\0\0\0\0
Ûÿûý¿¿¿¿ ©	ð¹»­­Ë½ûûßûÿ¿ûÿ¿ý¿ù¿ý¿¿¿Ûýÿ»ý¿û°Ý¿\0\0\0Ð	ûÿûÿÐ°¼à\0
\r
Ûù¹ûÚ½©	É\0\0\0\0\0À\0¿Û
ûð¿
¯­©º»¹úÿ¿ÿ¿ûûÿ½ûýûûÿûß»ýûÿ¿ûûýûÿ¿\r¹»ùûù­\0¬\n	 ëùý	­¹À	\0À\0¼¿¿ÿ¿Û\0É\0\0à\0ÀË½ûÛ»ùéÿÿ½®°¹	ëÛ¿
½ûûùûÿ½½ûÿ½¿Ûûùùûßû¿Ûûÿ½¿¿ûù
ýà\0\0\0		Ë
	É\0	\0\0	 	
Û½ù¹éý°ð¹
		\0\0\0\0\0	»Ûù½
¿»ûð¹
	¹\0°ð°ßûßûÿûßÿ¿ûûûÿ¿ý¿½¿¿ÿ¿¿Ûÿûÿ½­©ùúÿ¿û¹½\0\r\0À\0ù\n\0\0\nÀ	Éà¼ß¿¿Ú¼	û\0\0 \n»
ËûûûÿÿûüºËé­¿¿	»©ûÿÿÿûùÿ½ÿ½ûÿ¿ûÚÛÿÛÿÿ¿¿Ûÿú»Ùùý½ÿðù\0\0\0\0\0	\0¼
Ûû¿½¯¹ùð¹¹©\0	­ \0\0ËÛÛ½½¿ÿÿ¾½¹
Ûé¹ð»ùàÿûûûûÿ¿¿ûûûÿ¿ùÿ¿ùÿûÿ¿ûûÿûß¿¿½
Ëùûûûÿ½¿	 \0¹é\0\0Ð\0\0
\rÉ½¿½ýûÙ¿¿ÚÐ\0ù\0\0ù©ÿÛ»ûÿ¿¿ûàù«¯	¼¿ÿ½ÿûùûùÿ¿Ûý¿ûÿ­½ûÿ½½û¿¿ÿ¿ð¼½¿Ûùûù¿\r\n
Ïù	\0\0\0\0\0½¿»ÿ¿½¿½°ðù©¹	\0»Ë\0\0»¿¿ýÿûÿ©¿°°ú¿©½°
Ûûûûÿ¿ÿý¿ûÿ¿ûÿ¿ûûÛû½ùÿÿ½ýûùÿù	Ûð½¿ß½ûùð\0¿À\0Ð\0ÿÛÿÛûûÛÛéÐ¿­\0\n½	\0ëùûûÿÛ¿ÿ¿
ËËð¹
 ùÿÿÿ¿ûý¿»ÿ¿ûÿ¿ûÿÿÛÛÛÛ»ûûûÿ½¿ùûËíûÛûÿ¿Ú­	ë½­°\0\n	­¹¿Ûÿ¿ß¿¿»ùù«°	\0Ûÿ	\0\0»¿°»ùÿÿÿº
ÿùû©¼º¿¹ûÛ¿ûûÿûß½ûý¿ûûú¼°¿ß»ûÿ¿ð	«ù½¿¿Ûù¹ð½¹Ð¹é	Ûÿÿ¿ûùûûÛÙûð½\r¹\0\0ù\0\0
ß¿ûûùðÚÚûû©Ë
¼°¹ ©ßÿÿÿß¿ùÿûÿ½¿½ÿÿË
½¿Ûùÿßûß¿
ûûÿ¿ßù½»Ú¼½­¿¿ûÿ½¿½¿ÿ¿¹ëúÛÙ»À	©û\r\0\rû»ûß½ÿÿ
©©ÿÛÚ°ûÛ«½¹ûûûûûß¿ûÿ¿¿¿ûÿ»ûÿ°Ë
ÿ¿¿ÿ¿¿¿ð	¹éûÛÛÛ¹°¹Ûý½Ù¹ù½ùÛÛý¹¹éù½°¿\0\0\0ðÛ\0\0¿Û
ûÛûû¹ûº
	ë	\n\0¿ûÿÿ¿ûÛûûýÿß¿ÛÿýÿûÿûûÿÛÿ½¿½½ÿ¿ÿÿ	ý¿ÿùùùý¿
úÛÿÿ»ûý¿ûÿÛ»ÛÙÛ	\0Û
	\0û»ÿ¹ûÿ¹ûÿ¾½ùðÛ°¿¹¿½ûûß¿ÿßûûûÿ¿ÿ­ûùùù¿ûÿÿÿ¿ùû	é½¿ý»Ùúùûÿÿ»û\r°ûÛÝ¿Ûÿ¹û½¼¼°°É\0\0	 Ùé°à\0ý»¿»ÛùûÙÛ¾º
Ú¹°¹¯ÿ¿¿ûÿ»ÿ»¿¿¿Ûûûÿ¿ûÛÿÿûÿ»ÿ¿¿Ëù½½ûÿû½ùûýùù¹\r½¿»ý¿ÛÿûßÛÛÙ°Ð\r¿\0
ûûùûý¼¿¿ý»«Ù©½°¹é½ßùùý¿ýûÿýÿÛ¿ß¿ùùù½¹ûÛûÿ¹ýû
¿ÚÛ­ý½©©¿¿Ú½\r©½¿Ûÿ¿½¹ëÛ­¹­	
\0\0Ûû\0ÿÿ¿¿Û¹ÿ»\nÙª
\nù°¹ û¿¿ûûÿ¿ùûù¿ÿ»ßû¿¿¿¿
©Ð ËÚûÛûûÙ\r¿ù¹Û°¹ûÛù¿½½¿½¿¿Ûùù©Ð	é½ù¼	ûûû­¼¾ÛðÛ½»Ú°½

©û
Ûß¿¿ûûý¿¿¿ÿùÿÿÙéð\nùëûÉ¼ \r½¹ðù½¹¿½½½©½½¹\r¼\r¹ÿÿûÛûùÛùù»¹ù©©\0¿ÿ¹ë\0ÿ»Û
	¿¿\n
ÛÚ\0ð¼½½©é¿ûùý½¿ûÿûß½¿ùûû
¹¹ð½¹\0¹\0ËÛÛÛÛ¿°É¹»
\r	¹ûÿùÿûÚ¿¿½ 	É\0àÊ¿Ûù\0ûý½°ÛùûÐÛ





	«ùÿ½¿ûûÿ½ûûûÿ¿¿ùù\r\n
é°
	Ë»ß¼½¼û½\rÛÙÙÙ©½¿»Û¿¹ùû»Ëúð»ù©	\0	ÛÿÛÀùû¹é©½ éÛÛËðà°½¿½ùûÿ½ùÿ¹ÿûÛÿ¼°°	\0¹Ë\r°Ú\r©ë\r°©¹ûù\0¹

ù½¿ùûýÐé½ùù¼\0\0©ûý
°Ú°»Ê
«º
ð¹©
­
ûÿÛûÿ¿ûÿûÿÿ½ÿß¿	ÚÐ¹éûÛ¹û¿½¿½½­
¹ÙÙ©½¹ûý¿½ÿ»ùûÿ¿ß¿½ûÙ½	 \0à½¿°ÛÛ°°û½

Ùé	ý½
«Ë¾©¿û¿¿Ûÿ½¿»ÿ¿»ÿ°©½½°É©	éðé¹ùð

	½»ùù¿	ÛûÛ¹¯	É\0\0\0	ðûÀ\0­\rùð°°º«
¿°é©°Ûÿ½ÿß¿Ûÿÿ¿ûßûÿÿù¿½Ûûé
ûÛ¬¹ùùé¿¿ù»½©°¹ùùûùÿûÿ¿¿úùÐù		\0\0	ÿÙ\0 ¹¿û½
éé Ð°ûù¯½ºÿ¿ûûûûûûÿûß½¿¿ùù©©ùÛð
©©¹ð¿ùýÉé©é¹é½¹½
­¹ùùù
°\0\0É\0Û¼	ÊÿÛºú¹
«É ¹ ©é
©ùÿ¿¿ý¿ý½ûÿ¿¿ÿÿÿ»Ë¾ùû½¿\0
Ëß¿ÿûÿ¼¹ù»¹½»Ë­½¿ÿûÿ¿¿¿¿¼½°¼\0Ê\0©
ûÛ\0	°©ûÿ¿Û\r\nÛ	«½¿¹º¿ûßûûÿûÿùûÿÿ¿¿¿ð¹©©	
ûË½\0»ûúûÛÛþ½ï	Ë
Ù
ÛÛ¹ùû½¿¹¿ÙùÿÛ°©°\0°\0\0\0\r \0
©½ùù¹û­ºÚÉ©é°©Û­¼ÿ¿ÿÿû¿¿ÿùûÿÿÿ¹ûÐ¹©Û½Ú\0
½½¿¯
Ûûûù°ùÿ¹ùÛ¿¿ÿûÛù»ûù¿¿¼¿\rº\0	É	©
Éë¿ûÿº©©»Ë¼¹¯«Úûßûÿ¿ÿûß½¿ÿ¿¿ÿ	ÛÚ
\r	¹ù¯\0ùûÛû	¿
©ù°ú¹©Ûûéÿ¿þÛþËûÛÛ¹ÛÐÐ	\0\0É\0\0\0	\0

	ûÛûÛß°
©é©é© ð½©½ÿ¿¿ûûß¿½ûûûùûÿûùé©°\n°\0\n\0¹ëÐÚþ\0\n\r©©Ë»¹û
ß«Éÿ¯ÛÛ»Ù½½½¯ùü¹
	\0\0\0\n

Ëùÿ½ÿ»°ÚÚ»ºËûÿÿ¿ÿûý¿ûÿÿÿÿÿ¿	¹\0\n
Û
	Ëð\0\r
ÿ½ûýû½½½»¿°ùðûü»ûû»û»½	Àé\0\0\0Ð
Ëùûû¼»\0»
Ëé©»\r©
Êÿ¿¿¿¿ûÿ¿Ûùûûûý»Ûù©¿	­	\n	à¹ù\0«É	ððù
¿¿Úûü\0©­
¹ýùûÙé\r\0	\0	\0 \0	\0	¹àý¿½ùÛ°¿

\r«°½¹éûÿÿÿßÿ¿ûß¿ÿÿÿûûÛÛùûÙ¿\0\0\n\0	
¼°ÿ\0\0	¿ßÿùûÿ½ÿ\0É\0Úúûßû¿¼¿½­À© À\0àú½¿¿¿¼°úÛ

\n
¿ß¿¿¿Ûýûûÿ¿»ÿÛùù½ûùË¿»ð
\0ðªËÛÉ\0\0\0	©ûù¿¿	°¾ð°ð\0 \r½«ùÛ°	\n\0\0\0À\0\0	\0\0»	ð¾Ûý¹ð




ð°
ÿûÿÿÿ¿ÿ¿ÿýÿÿÿ¿ÿ¿ß¿»ÛûßùÀ
\r\n\0	­ûûý
¿ûÛûùýÿ\r¯À	\0\0»ûûý¿¾û½°°Ù\0Ð\0
À	
ùÿ«ù¿ûÿ»ð\nù°ùû
­»É¿¿ÿ¿¿¿»ÿ¿¿ý¿ÿ¹¼»ðË¿» Àð\0Ð\0àÚÚÛ­¹ðùûÿ¿¿Ûûû¹ù°	\0\0ù½é
\r	 \n\0	\0\0Ð\0Û
½
ù¿û¼°ù
\0¹©ðú°ºÿÿûÿÿýÿÛÿûÿûÿ¿ÿË¹é¹ùéàÀº	 		\0­ªÛÞ¿©ûÛß¿ßß¿Ëùûëûù¿
Ú¿ð
ÉÉ\0\0À\n\0»ùû¾ÿÛ© é¼¼¿°¹ ¹­©¿¿¿ÿ¿¿¿»ý¿¿ûÿ¹¹Ë°Ë\n	\nÀÐÐ\0\0\0\0\0	©\r«ß½¿ûÛûë»Ûéëß\r	ð¼¹ð½
ð
\0\0	\0 ÐÀ\0Û
ûù¿¹û»Ú	»©
¼°
ýÿÿûÿûýûÿûÿûÿûÿ¹
\r©ð\n
\0É\0\0\0\0\nÐÛ½ù¿ÿ¿ÿ½üðëëð¼°	¼½°½	ð¼\0é\0­\0 	\n¿¹ùùùùÿ¼¿ºÚÚ¯\n
­ºÿ¿ÿ¿ÿ¿ÿ¿ý¿¿¿ÿÿùû° ù©¼	êÐ\nÐÀ\0\0©	¾¿ÿûûßÛÛ	©à\r	
Ë\r­¬Úùùùð»	ðð\0À\0 	ùë¿¿¿»Û¿½©©úÙ©© ¹½©ðûûûÿûý¿ûûÿÿÿ¿¿Ù
\r

Û\0­\r	\0\0¬	úùûÛùùÿÿ¿ËË\r\0\0à		
Ë

	À°\0À\nÿÝ¹ûû°º¼
É¼©¯
ÿÿÿÿ¿ûÿ½¿ûûûÿÿ½¿½­¹ËÙàË \0°é
	
é¯Ûýÿÿÿùûý½¼­\n\0é	Àð	
Éùù¿Ë°°Ê\0é­ \0\0\0úû©ûù­û¿¯»À»«¼°»«¹«
¿¿¿¿¿Ûÿÿ¿½ÿûûÐ	­	«½¹
 À©À¿Ûß­¿¿»ûù¿¿ÛûùúÛ­½
\0Ú°°°ð°¼¹\r©\0À\0À\0
	°ð¹ù»ÿ»Ê	«©¬°ð¼¹ýÿÿÿÿÿ¿ûûßûÿ¿ÿ¿¯ÛÛ¿¼
	ùþùûÿÿÿýÿÿÿÿûýÿÿÿß­ù\0ÛýûßÛùÐï	À\0\0ºº¹û©­¿ûð¹ù»¼¹¯
¿¿ûûûûÿ¿ûÿ»ýûù\0°½©é\0¼°©Ë°Úùÿ½½¿¿û¿½¿ÿ¿ùùùûÛ©Ë½\r¹¹½ª°­\0 \0\n\0\0
\r\r
	à\0û¿»

Ú	©¹¼© ©ÿûÿÿÿ½ûÿÿ¿ûÿûÿÛùË¯ýúË\0\r¹\r½½¿ûÛÿ½ÿ½ùÿÿÛÿ¿ï¿½¿Ëº»ÛËû
ÚÛÚ\rðà\0\0°À­»°¼©©©àùû¿»Úß«Ú¿

¿¿Ûû¿ûÿùûÿÿ¿¿°\r

ý\0ð
\0û
Û­»ÙûÛÏ¹û»¿ÛÛÛËù½½ð½¯ý¹°¼¹Û

À\0À\0\0
\nÛ \0À	¿¹ûß



	¼°°©¯ÿÿ¿ÿý¿¿¿ÿûûÛûÿÿ¿½©ßºË	­­¿«Ûý¿½¿»¹ýùûùÿ¿½¿¿ÛÛÛÛù¿¹¾Û°¼\n	 \0\0Ù¬°°ù¿¿»ú½ùàû
°ûÛûûûÿùÿ¿½ÿ¿ÿùûù
Ù©É\n©½ ÚÐ¹é­½½¹¿½½¿½»½¿ûÛÛÛÙ¾¿¾ÿûÛùûÚÙù
Ë	Éà©ÉÀ\0

Ë
	«\n\r¯ù¿¿¹
Û°¹°© ¹ûÿÿÿÿûÿûÿÿ¿½¿½ùù©Ú©­\n\0
ÏÛÛéûÛûÛÛ½ûÛÛ½¿¿ùûù½½¹¹¿¹ù¿½¹¬º\0\n\0\0\0
ú
Ûúû¿½«û­©
ùÿÿ¿¿¿½¿¿ûûûÿûÿûû	©°¬°ðÛ\0¹¹½¹ù­½½­½½¿¿Û¹ûùï¿¿ûÿ¿ÿÛû¹ð¹Úùü	éé\r¬\0\0°¹©	
 ð¿
ßúðùû©\0½»ûùÿÛûûÿÿ¿ÿ¿ù	¹©Û	
\0Û\0 \r­û
Ûé¹ûÛù½»ÛÛÛ¹Û½¹ûÛ°»ù½¹½©	 \n\r \0\0\0Ú° 
ðû»Û»ÛúË°°©©ÿÿÿ¿ßÿûûÿùÿûÿÛÿ¿¹©©Ù°¹ Ë\r	
©ûß½ÿûÛÿ½¿¿ûß¿ûß¿ûÿ¿ÿýï»ÚÛËÛðÙ ðþ\0\0\0
ûð°ú	 ¿¿ûð»ý¿°\r©¹©û¿ûûÿ¿ÿÿ¿¿¿¿ûù©
\0¼\0\0°°¼©Û¿Û½ûÛ¹ûý½ûßÛ¿¹í¹¹¹
\r­\0É\0ð\0\0\0
Ð©ð°°¹½»ûÛ°¼°ûÿÿ¿ÿ¿ûÿûùÿûÿùÿ¿û
ù½¹©û	Éù»ÛûÉ½¿½¿ß¿½ÿûûÿ½ûÿ¿»ûûÿûù¿­½°°ëÉì\0\0	ëû»\nëÚ
ûÚûý»ÿ¿¿\nú\n¿ûù¿ûùûÿÿ¿½û¿¿½½°Ë
ÛÛ	«À\0»	­½½»ûéÚùûùÿ¿ùÿ½ùùý¿ûùù¹é°Ù©©\r\0\0\0\n\0\0\0½¿½©Ê
©¹©ù¿û½ûß»ù	ð¹
ÿ¿ÿÿÿÿ¿ÿÿ½ÿùÿûËß»ÛÐË\0ÛÛÚß¿¿ÛûÛûý¿ùÿ¿¿ûÿ¿ûÿ­¿	ÉÉÊÐ\0
ÿû¹é½úÛ
ûùÿ¿ûß°«û¿ÿ¿¿ûûûÿÿ¿»ÿ¿¿ÿ¹¹Ð¹½©©Éðé\0\0\r°°¹þû½¿¹ûÛûÿ¿¿ûÿ¿ûùÿ¿ÛÛÿûÉ»Ð½°°É	 \n­\0\0\0\0û¿¿ë\n

°¼¹°½«ÛÛß¿ûßù«ÿ¿ÿûÿÿûÿýÿÛÿùûÿ
ûÛù°
ÿ°\r©
ßÛûß½¿Ûÿùý¿ß»ß¿ÿ½¿¿¹ùÛé\r°°\0ðÚ\0\0\0¿ÿÿ¹é°ùËË¿½¿¿ûÿ¿û¯½«ûý¿ûÛÿ½»ûûÿù¿½ù¼Ù¿°ÛýàÀ\n\0¹©¹½½¯½¹ûûÿ¿ÿÿ¿¿ûûßùùûÛúÛ»ù¼	Ð\n	\0¬\0\0\0ûÿÿû¹© ¹ºûÛËÛÛÿ½ûû¯ÿûûÿ¿ÿûÿýÿÿ¿¿ÿûûÛ
ù¹	­¿û		ÛÛ½¿¿¿ÛÛÛûÿûûÿ¿ÿÿ¿¿ûûù½ù¿
	°ð Ð\nÐ\0\0\0ÿ¿¿û½ûË¿¿½¿¿¾©ùûÿÿûß¿½ûûûùýÿ½¿ûÙ­Ûù°°Ûÿ¿ê ° °»ºÛÛ½¿ûÿýùÿ¿ùý½ðûÛù½¼Ð©\0¼\n\0	ûûÿý¹ù«Ë¹»
ËÛß¿ÿÿûù¾
ÿûÿ¿ÿ¿ÿ¿ÿÿ¿ûûûÿ½º¼¹©	¿ûû½ÊÐ		­¿éùÛû»ÿ¿¿¿¿ûÿùûûû½¿ù
°©©\0\0ÀÐ\0\0	ÿÿÿ¿¿
¼©°ùÿ¼º¹«ûß¿¿¿Ûéÿ¿ûß¿ÿ¿ÿ¿ûÛÿ¿ß½ûùÛÉ°û\r¿Ú©°	©Ù«ù¿¯¿½ûýùùûÛß¿¿½½½ù¹¹ðû¬¹ÉÛÀ\0À°\0À\0ÿ¿ûûé°Û«
ûÚ½ùûÿûÿ¿¯ûÿ¿ûûÛûÛý¿¿¿ÿ¿¿¿ð°©ÿù°°Ðé\0°½
éûÛÛË¿¿¿»ûýûÛëÚ
°° Ë	\0\0Ê\0À	ûÿ½­ºðùð¿«Û»Ûý¿Ûÿ°¹ºÿûÿ¿ÿÿÿ¿ûÿÿûûÿÿûÛéù«ûû

\0\0\0	Éù¿½½¿¿Ûÿûùùùý¿Û½¹ùÛÛ¹ù¹ûÙ­
Ê\0\nË\0\0ÿ¿ûÛÿ°û

¿»ð¹©ÿûûÿ¿û­ûÿûÛÿ¿ûÿ¿¹ÿ¿ßûûÿù­

¹ù¹ \0\0\0ù¹
½½¿¿¿»ùûÛ¿ûß	
°\0\0À\0\n	ùûÿ¿Ûú°¼°û¾¾¿¹Û¿ûûÛÿûÿÿ¿ÿ¿ûÿÿûÿûÿÿÿ¿¹Û°°	»Ù½ºÚ\0\0	­¿û½ùûùÿùûùùý¿¿ù¿¿¹é¹Ë\r
\0	é À¿¿û¿ûËù¿ù»ù¹ÿ¿¼¿¿ß½½»¿½ûûÛûÿùûý¿¿ûÿûùéÉ©	»»û¹°\0\0\0\0Ëù¹Û¹¯°¿«ùé½©ð¹éû½¹°	\0\0\0\0\0\0ùÿûÿ½¹¹ë
°»»Û
Û¿ûûÿÿÿ¿¿ÿÿûÿ¿¿ûÿÿ¿ûÿÿÙ¹
\r©¹ÿÛ
\0\0\0\0\0¹¿ù¿ùûûû»Û¿	ÐË°¹	\nÐ\0\0\nÀ\0\0½¿û½¿ÿû½¿	½ûÛûûùð°½ÿ¿ûÛûûÿß¿¿¿ûÿÿ¿½¿ÿ¿ûù½­»°¿¹°°\0\0\0\0
ÛÐÿùû¹ðùÿ¹ý¹ùù¹½
\r\0	\0\0\n
Ë\0
ûù¼ÿûÐ½º°º©­¿¿ÿ¿\rûûÛÿ¿ÿÿÿ¿ÿÿÿ¿ùûßûÿ¿ÿÿûð¹¹©	©½«Û	 \0\0\0\0Ë¹¯©ûÛûÛûùé©ù©ð	\0Ð	\0\0\0\0\0ÿ¿Û»ÿÿ¿»Û­\0¹ë¿ùûù°»ß¿Ûûûûûû¿¿ý¿¿ûÿûß¿¿¿°ù©¹ºÚ

\0°\0\0	\0¼ËÙù½ùðùùùùùû©¿	¹°Ð
\0	\0\0\0\0¼\0
ù½\rûÿûÐûÚ
½©©ûÿ¿Ûé ½»ß¿ÿ¿ÿÿÿÿÿûûÿý¿¿¿¿ÿÿùù¿¹

\n
©½¹\0\0\0\0	É©ú¹ð¿ûÛ©½©ßÐ
	 ° \n\0 \0À\0ûù©°û¿ûû
½©¼ûûû\r½»ûûÿûÿ¿¿¿¿ÿûûÿÛÿÿ¿¿¿¿ÿ¹ð¹ù¹Û
Ê°\0\0\0\0 ¹ÛÞ¿ù½½»ÿïù½»ûéÀ	À\0ÉÀ	 \0¿
­¹ÿÿûÛß­«¯¼°»ÿ¿ÿ°Û©
Ëÿÿÿûÿûÿßÿÿ»ßÿ¿¿ûûÿûÛÛÛû




°°¹¹û	\0\0\0	©­°ù½Ëû¿Û½º©
	À\0\0\0\0\0	 \0\0ý½°ÿÿûÐ¹°°©ùÿ \0¼¹½ûÿûÿß¿¿¿ÿûûÿÿ½ÿûÿÿ¿¿ûúù¹¹©»¹¿\n\0\0\0À
é¬½¹ùûûÛ»Ð\0 Ð\0\0\0\0\0\0ÿûÛ¯¯
ÛÛûú½ú¿ùéð¿ûÿ° \nûÿ¿¿ûûûÿÛùûß½»ÿ¿¿ûûßÿ½¹êÛ	©¹
		
Ë\0\0	\0Û°ù°¿	\0\0\0\0\0\0\0\n\0\0\r¿ °°¿¿ÿ¹¿û©Ù»

Û°º\0½ûÿÿÿ¿ÿÿÿ¿¿ÿûÿýûÿÿÿ½ûûûÿ©°Ú¹°º¹é\0\0\0¬\n
Ëùù©»Û	ËÐ°°À\0\0	\0¯¿ûË\r©éûÿ¹ûûÛº\rºÚ°úÛùé©à\n
ÿûÿ¿ÿÛûûÿûûÿ¿¿¿ûûûÿ¿ÿÿ¹ºù¹»¹
	\n\0\0\0\0©¼¹
\0\0	\0\0\0\0\0\0\0\0\0\0
Ûÿ½°°ú½»ßû¿ý½­ û©©ËÀ °Ûûÿ¿¿¿ßÿ¿ÿûýûý¿ÿÿûûÿ¿¿­»úÛ©¹¹­© ð\0\0\0\0\0\0
\0½°Ëé
\0\0\r\0\0\0\0À\0\0\0ûÛû

Ð½¿½¹ÿû°°ÚÚ°¬©»Ú	à¬»ÿ¿ûÿÿûûûÿùûûýûû¿½¿ûýû©©¹°°»\0Ú\0	\0\0\0\0	\0\0¼\0	\n	\0	\0\0\0\0\0\0\0\0ûÿ¿°½«Ûùû¿¿°°½»¹¹­º\nûÿ¿ûÿÿ¿ÿ¿ýûûûÿÿÿûý¿ÿ¿Ë½°ù­©¹ © \0\0Ð\0	\0	©Àé\0	\0\0\0\0\0\0\0\0	ûùûùú©¹
Ûûÿÿ»
ÿ¹ÊÚ\nÚàÚ\0©ÿÿÿûÿ¿ÿûÿûÿÿ¿ÿ¿¿½¿ÿûùé­°¹
¹°¹¹	© \0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0
ÿÿ¿¹¯¼»¿ÿûÐùÛ©ð°ù¹ú¹©©½ûÿûÿûûÿ½ÿ¿¿ûýûÿÿÛûÿ¿û¹¹º°½©©©°©ºÉ \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	Ë¿ûÛ©º©
ÿ½«°°¿û
\0°
¹Ð° 	ëÿûÿûÿß¿ÿûÿùÿûÿÿ¿¿½¿ýûðùû
ù°
°©©Ð \0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0
½	ú°ûûý¿­¿½º°ùÿûÿ¿
ÿ¿¹
ð¼°û¾°	¿ÿÿ¿ûûÛÿ¿ùÿ¿¿ûûÿûÛûû½º¹©½¹¹»
\r¹ù«°°°\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0ð ©	
ÛÛù\0\0¹ð©­
ÿ¿ù°¹
ÛûÐð

	­¹É­\0 ûÿÿÿÿÿÿ¿ÿ¿ûûÿ¿ÿÿ½ÿ¿ÿÿûûÿ¹Û
½©ð¹«\nù
¹\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ¿ù¾½¿ÿ
ß¿»½ûÛý»Û¼­¿ÿº°°°ºÛ¿¾¹ªà¿ûÿûûûÿ¿ÿ¿ýûý¿ûû¹¿¿»û©°ºðù©¹¿ù­©Ð©	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¹ûð¼\n
û
ÿ»\0»ùº¼¿¿
½«Ë¿É\0Û	\n
ûß¿ûÿÿÿÿÿ¿ûÿ¿ûÿ¿ÿÿÿÿù¿
Ë°»¼¹»
Úûð\0\0\0\0\0\0\0\0\0\0\0\0	ð½¿û°¼¿½½¹ùé©ûÿ¿éûù»ÚÛ½»\r¯ÿ¿°°¹é¿½­©à½ù½½¿¿¿¿¿ÿ¿ûý¿ùûù¿ùûûù©°°°¹

ù
	
­	© ¹©¹©\0\0\0\0\0\0\0\0\0\0\0\0¿Ûÿ¿	¿û
½½°ù¾½©ûË­°ûúù©\n\nùùº

ÿ»Û¹ûßûýûù¿ûÿ¿ÿûùÿÿ½¿
À°¹«¼°°¾Ù¿\0\0\0\0\0\0\0
ßý¹ûûùúûùð¼°ûûû¿ûûÚÿ¿»½¿°é©­¿½¼° ûý¹Û½¿Û»Ûÿ¿ÿ¿¿ûûÿÿ¿°ùð½
\n°	¹ºû¬°\0	ðÐ ð
û¿¿ÿû°û©ëËùÿ½«¿¿ÛÛùÿ¯\nÛû«°°Ú¹¿©©\n¿¿»Û¹½»½¹ÿûÿÿùù¿ÿûûù«º

¾°½°	 «¿½«
û½¿ÿÿ½©©­¿©¹¯¿ûÛ½ÿÿ»ÿ¿ú°¹¿¼¹é °ðý¿»Ûð°ùûÿß¿ùÛÐÚÿÿ¿ÿ¿¿ûß¿¿ÛÛ¹

	¿

½Ëû	
	°°¹©º\0Ù	
Ûÿ¹¬»êÛÛ¹ÿ¿ûÊÛðºÐðù½½ëÛÿûùù¿ûû»ËÛÚ°ð°°°º»Ûû©
	¯ûÿûÿù¹ûÿÿ¿»\r«	¿°Û¾©Ë\nº
ÉÚ
\r¹ù¼©¼¹¿ÿ¹­ °ÛÙ


Ûû¹¿¿ÿ½©¹ù©¼û©ðºÐ© ýùù½©àûû½»Û¹©ù¿ÿÿÿÿ¿¿ÿ¿ÿùû¹\r¹»
	¹½«©		\r¿ 	Ù©»Ëº¯ùÿÿ½©¾¿ð°½¿­ÿÿûÛ°ùûßûù©­¿ÐºÚÛ¿¿û¿	¿ûÐ¹éÛÿûûûÿÙùÿÿÿ¿¿¹
©ðû¼¹¹°º©\n	\n\0°É\0°ú¼°\r
ÿû¹¿é¹
	
Ë	¹½ÿÿûÿ°¿¹\nðû
É
\n	ùù¹úùÿÛÛ	ûÛ¹ÿ¿ÿÿÿù¾ûûÿÿ¼»
Ë
Ùù»

©«ð°©
«
	ù°°°½¿ÿ½¿ÚÙ	é©¿	«ûÿ¿ù¹ûÙÿ¿»ùé©ú¹©½¿ÿ½»¿¿¿¹ù¹ù½¹Ûûÿÿ¿ù°½½ÿû	¹\r°ù¹°¹½«»\0°°\0½
Ð		© °\0À

ù½ûù¹ÿù©­©	É	 ÿûÿ°¿ûÛ	¬¼	­©©Ê¹ûûû°ÿûÿÿ¹Û¿½½ûÿûûÛ
ËËûù¿¹ú\rº

Û©¹«é úË©½¿ÿ¹ÿ½¾
°ðº¹¹½ÿ¿Ûûù¯ÿú¾¹
¾
ð¹°ß¿ÿÿ¿½ûÛÛù¹ÙÛû¹ûùé½ÚÐ­°½¼°°ù©°¹ °°©Ð°	°° \0	 ÿûùðù	
É\r©ðùûù½»ûù¿¹¹°½é¼»Ëé °Ûûÿûûÿÿ¿¿¹¹¿¿¿¹¹ß¿¹»	©¼
	\nÛûù
©¹¹
	°»É\n°¾¹¿
«
\n	
¿»ù½¹ÿ¿ÿ¿\0°ºÚ

ÿ¿ÿûûûÿÿßý½½¿»¼\0¼½ÛÛ\0½¹°º
\0©©Ð°©°¹© º¹Éë
Ð°½©¼¹°°¹¬éÚ¿¿½¼ÿ¿½¹ûù«­
½©©  ½¿ÿ¿¿ÿÿ¿¹¹¹ûûûûù­\r
Ê½	¹­¿»Ûÿù¹Û
Û¹­©¹ù»
°­°°½°Ðº¹¿
Û¿
Û\0	\n«ÛÛË¿ûùûù¯ÿ½°°°


Ë
©ùÿÿÿ¿Ûùÿùù¹°° °ÛËùÿÿù½¿¿¹°»¹ð¹©ë«¼»	ëº½»
»©úûÛ¹©­ ¹ ©©©û¾¹
ÿÛÿ½¹ûûË

Ð°°ù ù ¿ÿÿÿù¿ûù°°
Ë	¹ëÐÛ¹¹ÿÿÛûÛÛË¹ð¼¹¹»Ù°°¼¹°°¼½»\n	©û½û½¿ùûÿ¹©¼«©ë
\n¹¹¹¿ÿÿ¿ûûÛÐý½ùù¹ÛÛ¹
­»Ù	¿ÿÿ½¿½¿»©
»½©©»

­«ù©«Û©ûû¹ûÛÛ»
Ê		°ù©¿
ÿ¿Ëûÿ¼¿¿¿«¯	Ëð¹éÚÊßÿ¿ÿÿ¿ÿ¹©¹ÿ¿¿¹°É°¼ÿºûù°¹\n»	Ë
Ù	°°ð¹ðð°°»¾©©º°°©\0\n\nÀ°ûð»¿«ÿ«ð»¬° Ê¹°¹ùÿÿÿÿûûûûÿ¹ù¿ð¹éÚÛ°ùÿûùÛÿûÚ°°¼»ºÛûûÉûù©©«ð¹¹»»¿ùûùù©û
©©ùùé©¯
ùÿûÙÿû¾«»	¼û»
»ÿÿ¿¿ÿÿý©ï¿¿¿Ù°	©É	ûÿ«ÿ¹ð¹©	½¹¹º°½
Ú¼°°ûÚ°¼©\n
\nº	ðûðÿ¿»¿¿ùº°úË¾à°ð¿ûÿÿÿÛ¿»ÿÙ¹½
\r¹­\në¿ÿûûÿ¹«ÚÛð¿°½¯
©ðù©¼¹½
¹»¹ùú	¿©É ¼ù
­

½ÿûÉÿÿ¯ù¹ùëé°ùû¿ÿÿûûÛßÿ»¹¹Ú
	¿¹\0ÿ¿©­¿	©Û¹°ù©ª

°°°Û
\n¹Ú°\r\n	\n°¼°¿Úß¿û¿ûð°¼¹©®º°\nùÿ¿ûÿ½¿»ùû½\r©\r¾		°ÛÛÛùû¹©¹°¹¹¹««©¹½»
¼¹¯°½©©½
	©©©°°¹\n©«
	¯	ûÿ¹ûÿÿ½°«°ûù©ûûÿÿ¿û½ý©¿Ù©ðÛ	¹¹ ð¿
Ú

Ú¹¯½ºÛ	¹¹\0©ËÚË
\0à°°¹ù¼¾¹û¿¿ûù­¹ù°ºú¿Û©­°¿¿ÿ¿ÿ½»°¿û	¹©°éù\r	
Ûú¹¹ð°¹é¹«Ú¯¹«Ùù¹¼¹©ù©
	
Ù«©©É	\nÚÛû°¹©éù¿ÿÿ¿»ù­«	­½»\nÛ¹«ÛÛÿý¿ûû°ß¿ù°	Ú	©¹½¿


ÛÛ¹«°½¾ù¼°¹½½¿
©¼°¹ ° ©©¹ÿ¿»ù¯¿ÿÿßºûùé©ð½¿½¿»ÿ¿û©©ûÿ\r¼¹©\0°É­	ù»¹°


Ë	©¹ù¹º
ÛËðº	é©\nËÉ	©ê\0\r\0
ûù©
©°¹ÿ¿ÿ»éÚù »ûû°°»Ûÿ½ûý»ÛÙ½ûù¹©½©é¹
»°ùÿ»ß
úÛ°¹¹»Ù½¹¼¹ù¹¹ý¹ùû°°¹ð°¿©
ùÿ¿Ú¾©ú«ßÿÿû¿¿
¹¼¿¹¿ûð°¿
¿Û¿ûù¹°°ý»	Û\0½»¯°»½ûû	Û


­«ûÛ

Ë¹é½©©Û
	Ð¼	à\0¹	
¹ùé©¹º	ûý»Ù½ùºÚËÿû¿¹éù¿ùÿ¿
	¿ûù«¹«\0¹ý»ùù	½ÿ¿ÿºÛËÚÚ½©¹©°°ù¹ùð°»\nÚ°°°ù¼



\0ðûßûÛéúùÿÿû½¹û¿½ºÿ¹ûÿ¿°½©¿ûûÿ¹©½¿¹		°»Û¹û©°¹¹¹»

½°
	©¹©\n\0°¹© \0
	¹û¹
¿©¿ûûÛ¿¿û©
ÿÿ»ûû


¿¿\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿ\0\0\0\0\0\0­þ','Andrew ontving in 1964 de graad Master of Business Administration in International Marketing aan de Universiteit van Dallas.   Spreekt vloeiend Engels,Frans en Italiaans en heeft een goede passieve kennis van het Duits.  Kwam in dienst als vertegenwoordiger, werd bevorderd tot Directeur Verkoop in januari 1992 en tot Vice President Verkoop in maart 1993.  Andrew is lid van de Kamer van Koophandel .'),(3,'Leverling','Janet','Koning Albertstraat 7','Walem','2800','015 20 75 12','Vertegenwoordiger',2450,'5','33',1,'1991-02-27 00:00:00.000000','1963-08-30 00:00:00.000000','2',_binary '\'\0\0\0\0\0 \0\0 \0×
OLE2A5EEA08\0PBrush\0\0\0\0\0\0 \0\0\0PBrush\0\0\0\0\0\0\0\00 0 191 222\0@T\0\0BMT\0\0\0\0\0\0v\0\0\0(\0\0\0À\0\0\0ß\0\0\0\0\0\0\0\0\0 S\0\0Ä\0\0Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÀÀÀ\0\0\0ÿ\0\0ÿ\0\0\0ÿÿ\0ÿ\0\0\0ÿ\0ÿ\0ÿÿ\0\0ÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0É\0\0\0\0\0	\0½©		Ù\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0À	\r­­\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÉÀÐ\0\r\0É\0ÀÚ°¹º°¹\n\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0ÉëËÉ¯\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¹\r
\0Ð	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ðÙ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0ÀÀ\0ðð°°¹¼\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ð\0	½é\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÀÉ\0\0\0Í\0\0\0½
\n\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0ÐÀ\0ð°ð¹\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0À\0\0\0\0úÐÚ¹\r\0¹\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÚÜÞ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	¹¹½¿\0
þ	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0	\0ý©­
\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À
ÐúÐù	

ÿð\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0		Ú¼\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0À\0\0

°°ù
Ð¿	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\rÉÊ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À
ÛÚðÙÛ	©\nÐ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0É\0\0	©Ú\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Í\0\0	©
º°ðù	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	À­\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0½½½¹à\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÉàÚÚ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0°°»ºð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0	\0\0\0	©é\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0½¿½½¹Û\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0Ð\0\0\0\0Úß\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0¹©	©¹°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0©ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ì\0	ËÙûÛË
\0\0\0°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\r©ü\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
¹«	
½¼\0ÐÀ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0Ú½©\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÀÀ½½
	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÛÏ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Í»°¹¹Û\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0Ð\0\0ùý\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0ÀÀ¹ÚÚÉ©À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0\0\0À\0\0\0\0¿û\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ì	\0¼¹¹ð°°°\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0À	Éÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
ÛÐ¹ÙùË¼\0À\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\rÀ\0\0ùÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ð	°½¹°ð¹é\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0	À\0Í¿ù\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÚÛ¹ûÐ	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ùû\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0¼¹ÛÐ\0ð\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0À\0Ð\r\0\0ÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Û©\r
	\n	\0\0
\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	À\0\0\0\0\0\0À\0\0	ÐÛ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À°°¾\0
\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\rÏß\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ù\0\0\0
\0\0\0¼\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0Ð¹\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ù­°\0\0\0Ð\0¼°à\0Ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0		É\r\0\0ß\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0Û\0\0°¹	­\n\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0À\0\0	Û\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	é©\0©\0\0\0Ú	à\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ù\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
Ù\0\r\0\0	
©	Ë	\n\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ð\0É\0Ð\0\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0½¼°\0Ð\0°ùÐù©		\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0É\0\rÀ	\r½\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0
 »

©\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0Í	\0\0ÐÛ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
¬°¹
ÐÚÐù	
	\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r	
ÀÚ	
¹
ËÉ°\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0À	\0\r\0\0\0Ð¿\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¹Ûù°	©	\r	\0
À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0\0Ð\0\r\0¿\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
à°ï
	ë¼°°°\nÀ\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	À\0\0À\0Àÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ðû\r¹Ú
¼\0Ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0	\0\0\0\0\r\0ÐÀÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0«Ëð	©ð½	­\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0			À\0\0Ù	Ëÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	¼
	©	©\n	©
À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\rû\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0°¹
ðÚ°			\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0À\0Ðßÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\nù©
	°À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ð\0\0\0\0ßÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	
	é
	É©\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\rû\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À°Û	°\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Üÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
	­		\r\0°ÛÉ
			\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0		À\0	Ï\rÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¼°­	°°¼\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ü \0Ù¿\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À
	\0°¬			À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÀÐ\0¬\0¿\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 
	°Ú°
\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\nÙÀð\0ÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	 Ð
		©	 
	\0\0°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\r\0	À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	 Ð
\0ð	\0©	 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	É\0\r	Àé\0ÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0	 Ð
Ë	¼\0\r©\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÀÀ\r\0ÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\nÐ	 \0 \0©\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ð\0ÐÍ\0û\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\nÐ	©
		 	\0		\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	À\0°¼\rÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0	
\0ð	\0	\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0\0	\0\r¿\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ð\0		Ê\0\0\0	Ë\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¬\0Ð\0ÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0©\0°©	\0É\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0À	­ÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0Ð \0à\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0É\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0­			Ë		\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0Ééÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0 \0
\0¼	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0	Éûû\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0		©\n		\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¼
ÿß\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	
\0\0É\0¼°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	Àßý¿\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0°			©\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0		ûûÿ\0À\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0Ð\0\0\0°ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	©ÿßû	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 ©	É	©
\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ¿¿\0\0À\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ð\n°©©¬\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ð\r\rûÿßÿ		\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0É\nÐºÉ	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0	¿¿ß¿\0\0À	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ú\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0É\0\0
ûÿûßÿÉ\0Ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0	é©°¹	
\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÀÀ	¾½ý½ûû	à\0\n\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r	Ë	É
Ðð°	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0úÛßûÿ¿ß	\0\0\r\0	\0\0\0\0	\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n	©é«Ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0
½ÿ¿Ûßû¯\0\r\0\0
\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 	\0¹ÐÐÐ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0ýûûûý¿ÿ½­\n\0\r\0\0\0\0\0Ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0ÐË	©©¼°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÉÛ	ýýûÿÛÿúÚ\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\nð°Û½©	À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ðºßÿ¿¿¿ÿùÚ\0\n\0É\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0			\nÚ¾Ð½°°À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0	ÛùÿßÿÛÛË¬¼\0Ê\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0à	ðð¹»ù­	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¿ÿÿ¿¿ÿ»Ë		\n	\n	\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	ËÛ
	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÉÙéÛÛÛûÛÿýû°Ú\0­\0°\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0°\0		Úù½¹éÀ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¿¯ÿÿýÿß½ë½©Ë\0¯	à\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
À°	é
¾Ë¼¹©\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ý¼½½ûÛûûÿÿÚÐ°ËËû\0\0
	É©\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n	\0ð	­	ËÐ°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	ÛÛ	ÿÿ¿ÿý¿ÛÛé©ºÐ°	í¹àÀ\0©\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n	\0°½­\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0½°Ï¿ÛýûÛý¿ÿðüÉ¾¹à©\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0		\0	\0Ë	©ù¹¹ Ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	
û\0ûß¿ÿ¿ÿûûÛ¯¼°éðûÚ\0à
Ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
À\0	
É¹½½»ÿÿ°\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¿\r½ûÿÛßßÿùùëË©­­­\0	°°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	
\0¼»ûË
½ûûû°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	¿ÚÛÿ¿ý¿ûÿÿ¿ûëÚ\r
Ú°\0\0ð\0ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0\0\0	
É½½¹½ÿ¿¿ÿûÐ°À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	
ÿ	
ÛÿÛÿÛÛßûùùéé©éð¯	\0¼¹ \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0°ûû¿»ÿÿ¿¿½\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0þÞÿß¿ùÿ¿ÿ¿¿ûÛ
Ë
\nÐÚ¿° 		Ë\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0©½½¿ùûûÿÿÿûð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0ù\0ÛÛûßûÛÛßÿý½°ù©
­\r\0¼\0©ËÀ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0É ©¿½»ûÿ¿ÿÿÿ¿»\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
ËÛÿýûÿ½ÿÿ¿ÛûÚ¼°°Ð°Ð\0 Ð°°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ù¹¯½½»ß¿ÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\r¯ý¿¿ÛßûÛßû¿
	­­­©­ \0\0 Àù\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	©
ðû¹û»ûûÿûÿ¿¿¿ûû\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
Úûÿß¿¿½ÿÿýúÚÚ
\nÙé	©\0	©\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0½¹½½½¿¿¿ÿÿÿÿÿ¼\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r©ßÛûßýûûùÿ¿¹°ððºÐº½ \0\0\0\0é\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	©»ÛûÛûûÿÿûûÿÿûûù\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ëÿ¿ßÿ½ýÿÿß\n
Éë
ÀÚ			\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
\r­¼½¹½¿»¿¿¿ÿûûÿÿûð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ùðÛÛûÛÿÿûûÛûðùððº½©
	°ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À°Ë¹ùûûûûÿ¿¿ÿÿ¿¿ùÐ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	ÿ¿ÿßÿÿýÿ¿
© ùð°¼¼°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0		\r©ù½½¿½¿¿ûÿÿûûÿÿ¿°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	úÚÛßÛûùùÿÿ¿¿ý°ðÛÉ¾°ðé »\0	\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
°û
½¹»ù»ùÿ¿ûÿ¿ÿÿûÿù\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0­¿¿ßßÿûùýÿû«
ëÛ
\n\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	½ð½
ý¿ûÿÿÿÿûû¿ÿ¿°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Àùàÿß¿¿½½ÿÿ¿ùé°ð¼©éË
¼à\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0°­Û¿¿¿¿¿ûÿ¿ùÿûÿð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¿ùÿÛûßÿßÿùûßÚ»þ½°¹ëÉ\n	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
	
ÛÚ©¼°ËÛ¿ÿÿÿûÿ»ûÿûù\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¼¿¿ßÿ¿½¿ÿÿûðû
­ù»Ûé¹º¼\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0Ð¹©Ú­¹¿ßÿÿÿÿÿ½¿¿¿ÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	©ÚÙýÿûÿÿýÿÿ¿ù
°ðÛ¾¼½¼«ËËÚ°\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	
©Ú¼ùß¿ÿÿ¿¿ÿ¿ÿÿû°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r«Ëûý¿ùûûûÛÿß°¾
¯ÿÿ°½¹¼½¼°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0»ÛÛ		Ùðù»ù\rÿ¿ûÛ¿¿¿ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
ýÿýÿýýýÿß¿Ûùð©ÿ¹­ûËËËéú°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	©
©\n	\0¹½ÿÿÿ¿ù¿ÿ¹
ßÿÿû\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r°	©ÿûûûûûûûûÿºûËûý°»©ðð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0É­
¹°Ù	°	¿ÿÿ¿ûÿÿ¹	ÿ½¿»ûûÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Úßùÿßýýÿßýÿßùéð¾¿ÿ\r­¯
\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0©°¿	©\0	É¿ù¿ûÿÿûÿÿ\0¿û¿ÿÿÿ°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0©¬°Ûÿÿ¿¿¿¿¿¿¿°¿
ÛÿùÿûÛ

À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	
É°\0\0Ð»ÿ¹ÿûÿÿÿ

Ûûûÿð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ð	\rûß¿ÿßýýýýÿÛ¯¿
ÿý­­¼¼¼°°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0½©½°\0
	¼
Ú¿¿¿ÿûð\0ÿÿûù\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\nûùËÿÿ¿¿¿¿¿¿¯ðù¿Û¿ÿú«©¼¼©\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	©\0«Û
\0¼
Ë	\0ùÿÿ½ðûûûÿû\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\r½¿Ûÿÿßßýÿÿß
ß»Ëÿ½¼¾ÛË\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ð
\0	\0\0ùÛûûûûù	¿ÿûÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÐÐ©ý
ÿ¿ÿ¿¿¿¿»¿û¼¹ÿÿ	«ù°°­¬\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	©¹É¹­°\0\0	\0		Ûûÿ¿ÿÿÿÿûðÿ¿¿ÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\nðÿùÿÛÿýÿßýÿÐ¿¿Ëÿù¯\r¯
\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÀÛÛ	\0\0	Û»ùûûûûÿÿ»¹ûÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	ý\0ûûÿÿ¿ý¿¿¿¿¿¾ùð¹ëÿÛÉ
°¹ù©¼\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ð¹¹©©	
\0©¹ëËûÿÿÿÿ¿½	ùûûÿù\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ûßÛÛß¿ÿýÿýÿù¾ûÚÿú¿
\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
Ú
\r\nÚ¼¹ð¿¿ÿ¿¿ûÿ¼½¿ÿÿÿ°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
ðÐ¿¿¿ÿûß¿½¿¿¿ùÿ©©ûÿ½
Ð¹ëÚ\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0é¹°°	
é	ùûûÿÿ¿¹
¿¿¿¿¿ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	ýÿý½½¿ÿßÿýÿßûùé¿ÿùë
¼¹©éé \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
ÚÉ©¹ðù ûÿÿ¿¿Û½¿Ûÿÿù\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ð\n	¯ùûûÿûûûÛûûûýùð¹íÿðûË
Ú
\r°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0		©¹©©			É
	Ëûûÿù¹ÿ¿¿¿¿ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 ÀÙéý¿ÿß½½ýÿÿßß¿¾ðûÿ¼°ð©ððË\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0©Ë °Ú°\0Û¿û¹©ûÿûÿÿù\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0	\n\r¿ÿÛûßÿûý¿¿¿ýûù¼¿ÿ¼ºÛÛ

°é\0Ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ù­	©¼°	°½¿ûûÿ½¿¿ÿ¿ÿ¿ù\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0©Ûûý¿ßûùÿûýýÿÿ¿
éºßûÉ­­©é°ðð½ \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	
\0°
Ûûÿÿù©»Û¿ÿ¿ÿûÿû\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\r©ýûÿ¿½ÿûßÿ¿¿ùý½
éûÿËË© ûÚ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	Ù­¹½¹	
»¹ûÛûÿ¿¿½ûÿÿ¿ÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\nÚÿ½ùýÿûÿûÛýÿ¿ûð¿ùé¹éùúÙé½©ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
		
ß¹¹¹ÿ¿ÿù¿¿ûûÿÿ¿ûÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0É	ËÛß¿ÿ½½ûßÿÿ¿ý¿	é©ÿÿ¼½«	éº
ëÿÙ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0éð¹­
ùð»û¿»ÿ¿ûùû¿ûÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0°ð½¿ûýùÿÿÿûûÛßûð¿¿¼¿ûËË°¹úÐ¿ù°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ð¹ÛÚ¹½é	ûùûûûÿ¿ûÿÿûÿÿÿÿ¿\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ðý¿¿ûÛùÿßÿÿÿÛÚ
ÿý	¿
éÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0

°¹½­°°
ù¿Û½¿¿ÿûùûù»¿¿ûÿ¿ÿ°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r¼¿ýÿÿÿÿûûùû¿¿©ú½¿ú©ëðùÿù\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ùùÛÙ¹½¹Û	Ù¹
ÿ»Ûûûÿ¿ûùûÿßûÿÿÿ¿\0\0\0\0\0\0\0\0\0\0\0\0\0\0°ùûûÛÿÛÛýýÿÿÿÚûÚÿ½½©é­
é½ÿûù\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
¿¹©½°ù¹ûý¿½¿ûÿ¿»ûû¿¿ÿûÿÿð\0\0\0\0\0\0\0\0\0\0\0\0\0\0¼°ÛßÿýÿÿÛÿÿûûÿ½ÿ¿ÿ½©¿ùëð°¹é¯¿½¿ÚÀ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¹Ûûû
©¿ùûÿ¿ûÛßÛùûÛÿÿûÿ\0\0\0\0\0\0\0\0\0\0\0\0À\nÉ­¼»Ûûùÿ¿ÛûýÿùÿùùûÚß½©ýÿý¹	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	­¹ù¿ûðû¿¿ûÿ¿ûû»¿¿ÿ¿ÿ¿ð\0\0\0\0\0\0\0\0\0\0\0	\0	Û	íÿßÿýÿ¿ýûùÿÿ¿ÿÿû¿½½¹©°Ú¿ûùû\nÀ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¹¿»ùûÿ¹û¹	¹û½ÿ¿ûÿ¿¹ùù½¿¿ÿ¿ÿ°\0\0\0\0\0\0\0\0\0\0\0\0\0­¼ûÿ¿½ÿÛýÿûûÿ½½©ëËûÚðð¹ý½ÿùÉ	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	

ù½¿½»¹½ºù¹ù»ý¿ûù¿¿»ûûÿ¿ÿ¿ð\0\0\0\0\0\0\0\0\0\0\0\0\0
\r°ÿÿÿÿßÿ¿¿ûûÿßûÿÿûË½ûß
Ëÿûÿ¿ \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	¿ûûûùû¹	éûûÿûÿ¿¿ûÛ¿¿ÿûÿð\0\0\0\0\0\0\0\0\0\0\0\0\0ëÛËßùûûùýÿÿÛÿ½ûùðË½¹ð»Ë½½ûýùÀ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¹ùùûß¿¿½°½
Ð¿ûùû

ÿ¿ÿûûÿÿ°\0\0\0\0\0\0\0\0\0\0\0\0\0Ê¹éù¿¿ÿýÿßûûÿÛÿûÿ½ÿ©¾ß¿
¼¼¹ûÿ½û°	 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r©¿¿»ß
°ù©¼ðù¿ÿ¿¹ÿ¿¿½¿¿¿¿ð\0\0\0\0\0\0\0\0\0\0\0\0Ð©ßÛéÿÿ¿ûÿ¿¿ßß¿ûßûÿûÛéûùð»ËÿÛÿùÀ°É\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ûÛÿû©\r	°	
ûûû¿
½¹©¼¿¿ûÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\r¿¿ÿßùÿßûûÿßÿ½ý¿ÿ©ð½©ï½¿ß
À°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ûù°­¼¿	¼°	½¿¿½ùÛÉ\0
°	¿¿ÿ°\0\0\0\0\0\0\0\0\0\0\0\0
Ûÿý½¿ÿß¿¿ÿ¿½ÿß¿¿ÿûÿ
ÿùûÛ©ëËùÿÿû¼°	 É\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	¹½½	­			 ¿ÿû°°\0\0ÿÐ	ûÿ¿Ð\0\0\0\0\0\0\0\0\0\0\0\0ÿûþ¿¿ÿýùýÿûûÿßûßùÿ½¿½¼°½¿ÿ¿ÛÉ\r°À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
ËÉ©©é©\0\0
	©		½ÿ¿»Ù		\nßÿ \0¿¿¿°\0\0\0\0\0\0\0\0\0\0\0ùÿÿýùÿßÿ½¿¿ÿ¿½ÿß¿ÿûûùÿûÛ©«ËËÿùý¿
\n\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0°Ú	\r\0¿ÿ½ ¼ \0\ný\0ûÿÿ\0\0\0\0\0\0\0\0\0\0\0ý¿¿¿½¿ÿýÿÛýÿûûÿùÿýÿÿ½úÛ½½¿ùÿûðé\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	°ùé	\0\0\0 \0	©Éÿ¿û\0\0\0	ûûÿ¿°\0\0\0\0\0\0\0\0\0\0\0Ûÿ¿ÿßÿßÿÿ¿¿¿ÿ¿ÿßÿÿûÿûßÚ¿ûÿ
Ê	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Éð\0à\0ðé	\0°»¿ÿ¿\0	\0	
¿ÿûûð\0\0\0\0\0\0\0\0\0\0\0¿ß¿ûß¿¿ûÿßýÿÛÿÿÛûÿ¿ßûßû¿
ùûÿß½ùð©\r­°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¯	\0\0\0\0	\0		\0°ùÿ¿ûû	¹ûÿûûÿ\0\0\0\0\0\0\0\0\0\0\0ýÿ¿ýÿûßßýÿ¿¿¿¿ßÿÿÿÿ¿ÿûðûÛ­½»ß¿\0
°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0°
\0\0\0	\0à\rûÿ¿ù½««¿¿¿ùûð\0\0\0\0\0\0\0\0\0\0
ûûý¿¿½ûûûùýýýÿûÿ¿½ÿÿ½½ÿ½¿ßÿ½ûð
àðùË\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	é©Ð\0	\0
°½¿ûûé¹ùùûûÿÿÿ\0\0\0\0\0\0\0\0\0\0ßýûÿýÿ¿ÿßÿÿ¿¿½¿ÿýÿÿÿÿÿûÛëËü¿ß¿°°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ù©			¼»ù
Ë		»¿ûù¼¿½¿ÿù¿ÿ°\0\0\0\0\0\0\0\0\0\0¿¿¿ýûûßÛûÛùÿßÿÿß¿¿ûÿÿ½½¿¿ûÿùü
¯­ \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r¹°\0°	°ðËÐÛß
ÚÐÛ

ûû\0\0\0\0\0\0\0\0\0\0ÿÿýý¿¿ý¿¿ÿÿÿÿ¿Ûûûßÿÿÿ¿ÿûÛºùÿßÛ¹ ° Ð¿\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\r©É	éÐ»
	­
¹»ûû½		

	\0½¿¿ûÐ\0\0\0\0\0\0\0\0\0
ÿùûûÿÿÛýÿùûÛùÿ¿ýÿÿÿýÿ½½¿½¿½û½ºù­\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0

	

\0\r©ûÛÿ¿Û»ÛûÛûÛ½ \0\0\0\0\0\0\0\0\0¿ÿÿßÿ¿¿ÿÿÿÿùÿûý¿ÿûûýÿûðùÿÛÿ½ù­\nÚù\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¹°	\0	\0\0
	»½©»ß¿»ý¿ÿÿ¿¿\0\0Ë\0\0\0\0\0\0\0\0\0ý¿¿ÿùÿÿ¿Ûÿý¿ûý¿ÿßûûÛÛ»ÿ¿ùûÛ\n­©½¿©
\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	
¼\0\0\0°ðùûÛß»½½»ûûûûÐ\0\0\0\0\0\0\0\0\0\0\0\0\0¯ûÿÿßÿ¿½¿ÿßÿ¿Ûÿýÿÿÿÿ¿ÿý¿«ýùÿ½ù­\nÚ¹ëÛðÀ°\0\0\0\0\0\0\0\0\0\0\0\0\0\0		¹»É©þ¿û»Ûûÿûÿ¿°\0\0	\0\0\0\0\0\0\0\0\0\0	\0ÿÿ¿½ÿúßý¿¿¿ÿÿûÿ½¿ÿÿÿ½¿¿¿ùûß	­©¼¹ùé\n\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0ËËË¼¾¹¹½¹úÙû

Ú¿ûÙ\0\0\0\0\0\0\0\0\0\0\0\0\0\0¿ÿÿýÿ½½ûûýÿý½¿ýÿÿÿ¿ûßÿÿÛëÿÿ½ºÚ

Ë¿ÿ°Ù©\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	
¹¹ÛùºÛÚÛ
		
Ú	\0\0\0\0\0\0\0\0\0\0\0\0	\0ÿÿÿ½¿¿ÿûÿÛùûûý»ûÛùéÿûÿ½¿ûùûß½\0ð½¹ý¹
Ë\nÀ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	©©¿\r«°½©\0\r	©\0\0\0\0
ÛÐ\0	\0\0\0\0\0\0\0\0\0\0\0ð	ÿûûßýÿ½ýûÿÿÿÞíùûÛÛùÿÛÿûûßß½¿°°°ú¿Û¼°°ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ðú\0Ð\0			 		\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿßÿ¿¿ÿÛëýûÛùû©ùù¿ÿûÿß½ÿûûÛù­
©ý¿ÛËÉ©\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
	©¼	¹½©°\0	\0\0\0Ð°\0	\0\0\0\0\0\0\0\0\0\0\0\0
ÿÿûÛýÿ½½ûÿÿÿ¹éùý¿ÿûûÿ½½¿Úð¼

Û½°°º\r©
\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ú	°
Ûº\0\0©\0	\0	
½\0\0\0\0\0\0\0\0\0\0\0\0\0\0\nÚýÿÿÿÿ¿ÿðûÿùÿÛÞ©¹ð¹ûÿÿÿÿßÿÿûý»	©¼¾¿»ß­\r©Ú\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0°\0½»\r¹\0
\0\0\0»Ë°\0\0\0\0\0\0\0\0\0\0\0\0½¿ÿÿÿÿûÿûÚÐ­ý¿ÿûûùÿÛð¼\n¹ý½ûº ¼\0\0\0\0\0\0\0\0\0\0\0\0\0\0		
\0¹°Û
\0\0	\0\0\0\0	\0
	\0\0
\0\0\0\0\0\0\0\0\0\0\0\0\0
Ëý¿ÿÿÛð½ÿûÿÿ½¿ûÚûÿûÿßÿùÿÿ	ë»ßûÿ½­©ËÉ	©\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¼\0	\n°	\0\0	\0\0		°¼\0\0	\0\0\0\0\0\0\0\0\0\0\0\0		ÀÛúÿ¿ûËÚûßÿÛÿý¿Ù½ÿý½ùûÿ¿ÿ¹¯½\nðûÿùù°°°Ê°\0\0 \0\0\0\0\0\0\0\0\0\0\0\0		\0¹	¹	°\0\0\0	\0\n	\0\0\0		\0\0\0\0\0\0\0\0\0\0\0\0\0¼¼½ðð½¹­¼¿¿ÛÛ\r­¿
Ûùûÿ¿ÿÛßûðùéëÿÿÿùà¼¼¼°Û\0	\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 	©\0\0	\0\0\0	\0		\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0©Ë


ÛðððÛ½­½½»Û½½½©ÿÿÛÛÛÿÿÿ	¿¹©ïÿÿ


	 	 	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0É
¹°\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¯¹éÀ½©	©
ºÐù¼¿½ÛûÚûÛûÿÿûûùÿ
Ûÿÿÿ½ ¼°ðððð	 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ð \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	

Ú­\r
ËÛÿ¿ý¹Û¿ÿß¿ßð¿½©¿ÿÿùûÚ	­©©©\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n	¹\0ù	\0\0\0\0	\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0
ùéûÿ½©ù°	©©éÛÛßé«ÿÛÿûßÿû½û
Ëÿÿÿùð°»Ë
ËÉ©Ëé\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ð©\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ûÿÿ	éðûËÙ	­­¼°º½ÿ¿ß¿ÿ¿Ëÿ¼¼¿ÿÿ¿Ú¼
À°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0°\0°Ù­\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¿ºÛßÿ°
ÛÛ	ùÛÛùýûýûß½©ûÙ©ÿÿÿùû

ÐºÛ­©
\0ú\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	É°
°\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\nßýÿÿ°û½
úÙ©ùùÿûÉ½ÿÿ¿ÿ½ûÚýª¿ÿÿðùé«\rºÚ¼\r©\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À	Ë\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	éùûéÿûÉ°Ð¼	ûð¿ÿ½
ËûùÿÛÿ½°ûû	ûÿÿý¿¹éË­°°¼ \0\0\0\0\0\0\0\0\0\0\0\0\0\0	©°°°\0Ë\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¯ÿ­¿ùÉ¹­½ûûý¹¿ýÿÿ¿ÛÛù¯ÿÿûý¿¬°ºÛ©éËËÉ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r 	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¬¼ÿÿùà¬©­
ýÿ ÿûÿ½ÿ¿ëÛÿ¼»ÿÿ¿Ûð°ùû
©©
\0\0ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0Û\0\0°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¹°¿ÿðÛÚ¹ùÚ½ûÛÉùÿùÿ½ÿ¯ûÚ¼ÿÿÿß½½«ËÀ¾¿

Ð¼¿
	\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0°\0\0		\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
\nËÛß¹©Ð©Ú°ù©

ÿùð¹¿ùÿÿÿ¾ý¿
¿ÿÿ¿°½»
ùð¼¿\nÛ©ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ûË
ûÚÐ°¹©©½Ùðù
íÿûûÛùÛù
ëÿÿûý¿
Ú¼¿ùé¼°\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ù©à½ÿû
É°Û	©Ë	ù¿ÿ
ÿ¿ßÿË¯ÿ¼¿ÿÿÿÛðû
Ð»ûé­úË«ÿ\0\0¼\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¿¿ùð°¹é¹ Ú¹
ß½¹é½ÿýûù¹°ÿÿÿÿ¿¿
¼¿½¿½¬½½ù°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
ý©\nÛßÿùéÚ¹ËûÚûÿ°
ûûß¿ÚÚÿûÿ¿ÿÿùùû
ð¹Ëÿýú¹¯¿é \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0û¹éºÿÿ¹«ËÛË\0¹é°ÛÿÛÐ½½ëý«¹ÿ½­¹ÿÿÿ¿ûé¾Ê¿ðùÿ½ùÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¿ÞÉÿÿ¿½¹½½©Ù©©¿»ÿ¿Ë½ûÚÿÿÿ¿ßé¼»ß¿¿ÿð¹ûùð\0\0\0\0\0\0\0\0\0\0\0\0\0°\0
\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ¹°»ÿÿù


Ëð½©

Úÿù©\rÛý¿Ú¿ù­¿ÿÿÿûùúÚ¼»ûÛÿ­¯ÿ° \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿß\r­¿ÿ½¼¼½¿Ð°ù°Ð°ÛÛÛÐºº¾Úù©ùûûÿÿÿÿ­½½
ÿð¿ÿðð¹½ÿ\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¿ûûÿÿ°¹ÿ
ù
Éº°¿ð©­ý¿ùÿÿÿùûÿ°¿¿ßÿ

Úûûù­\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	ÿÿùé¼¿ÿÿ©
Ëð¹
	Úÿ	¯ÛÉéûûÿÿÿûÿùúý­¯ü¾¿ûù­¯ÿÚÐ°
\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ý¿
\r¿ÿû	é¹ùúÛð¹Ë

ù¿\0¾½©ëÿÿÿÿÛùûÚ¹¿ÿÚË¹ÿÿ¿\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	¿ÿý¼­¿ùú­½©
	°°°é¹«ý¿
¿ÛÛÿÿÿÿÿ¿ÿ°ûÚÿ¿ßÿ¿ÿù©é°	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0©ûûù©°Úÿÿ	Ú¾É	©é¿©\0½Ûðýý½¯ÿÿûýûý¹¿½«Ûðð¿ý°ÚðÿÿÍ¬¼\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ù­ÿÚù
°Û¿ùù­½Ú	ß

¿ûûûûÿÿßûÿÛÿé¯¿
ÿûé«ÿÿû	
½\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0«\n¿¿©	«Ïÿ¹	©¯	¹©	 °ûÙ­­ùÿßÛßÿûûÿÿ¿Ûùû¿Ûùéÿÿ¼¼¿ÿ½¬½­ððÀ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	ùùýºÛùùÿ»ùÚ	­	ðð
Ûûûû¿¿ÿýÿÿùý¿¯ûß¿\nÿûËËÿûß¹°¿°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
ÚÛù­°ú\0½­	ð°ù°°¿¿ßýÿÿÿûûÛÿûð½¿½ûÛ
Ûßÿ¹¯Ûÿû
Ù­\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0½©©Ëù«
ÿ¼¹ð¹¹º		 °Ë\0ºÛýÿûûùÿ¿ÿÿÿûûÛùú
ÿûËÚð¿ý¿Û
ù°\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
Ë	É©ËÛÛÛ
­
	É©¼°	¿½¿ßÿùÿÿùÿÛÿ¾½ÿÿ©ð¿ÿý©«ÿÛýºÚ­­	­¼\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0°Úðùû°¿ÿ°ð°©¼°¼Ë°¯¯ýÿÿ¿¿¿ý¿¿ûÿÛ½¿ùùûÚ¼¿Ú°ú¿Ë­©ù¹¹°°Ë\0©\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0Ú°¹­½©	½¿


½

	©©ËÛË\nûûùÿßßûýÿÿÿ¿ÿÿ¿ÿ½©ëÛÿ¿
¹ÿù»Û
ËËËÀ°Ë\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0½­°ÚÚùëÚÛÿð¹é©é°¹
	


	©Úúÿýÿÿ¿¿ÿ½¿ùýûùýûÛ¼°¹ÿðË¿¼¼½°¼»
À°	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
Ë	\r¹©©½°ðºÛ«
°Ú¼¹ù
	©ý¿ûÛýÿÿÛÿÿÿÿ¿ÿÿ½°Ë½¯ÿ¬»Ëßû
«
Û¼¼Ë\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\rÛÚÚÐ°Û	°¹úÛË©ÚÐ
	©	°ð°úûÿ¿ÿÿ½¿¿ßÿÿùÿÛùÿ¯»Ú¹ÿú¼¿¿ùéðÿ½
Ë
Ê\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	û¼Û
Ë
¹¹©é©¬°½©		ÿýýûÛÿýÿûÿÿ¿ÿ¿ÿùù­«ßÿ°ÚËÛÿ
ÛÚ¹¼¹ðù¼¹ð°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	­Ûùü¼¼°°­©©

ÿ¼»
¹¹
ËË©Úÿûÿ¿ÿÛûùÿÿûýûÿÛÿ¾½«ÿ\r«­¿ûÚ½»Ðé¿

ËË
¼\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¹ù«\r©¹©

ùù¼½­°é	©ð°©½ûÿûý¿¿ßÿÿÿÿÿ¿ß¿ùéûð½ÿêÛÿý¹ëËý
ð¼¼¹°ÚË	 ©\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	
ÚÐÚÚÙ©­©©é©©½¿©©°°­
	¹©©
ÊËÿßÛýÿûÛÿÿÿ½ÿûÿ¿½¹ÿûË¹Ûÿ¼¹½©©¯
ù©°ð°ËË\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ù©­©©­\0Ë

½°ß¿ð¯
ð©úé¹¼¹ÿ¿ÿ¿ÿ½¿ÿÿÿýÿ½¿ß¿ýÿ¼¿¼¹ëÚ­¿ÿÛÚß¿ð¼»
Ë¼ \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 

\n©©¹©½¼¹©é©°
©¹©¬¹©«	ËË
ùÿûßÛÿýûÿÿ¿¿ÿÿûýûûË°ûÞ
Ûÿÿ¿

éëÚÛ

Ú¼É©\r¬\0©\0\0\0\0\0\0\0\0\0\0\0	\n	°ð	
\nÛ

¹©û	àùé¼°½
ÚÛàð°¹ÿÿÿ¿Ûûýÿ¿ÿÿ½½ÿ¿ý¹Ïý
½­©ûÿý¹©ü¼½©­­­©û©¯
	
\0\0\0\0\0\0\0\0\0\0\0¹\n\n	­ ¹¼¹©°ð¹éé
Ðð°¹©©°°
°û
úûûÿùùÿßûýÿÿÛÿßûùÿÛð»°¿Ë
ßÿû¼½©°ºÚÛ	ùðð¼°ðÐðÐ\0\n\0\0¹é\0©é\r

Ú°»
¹ûÚËÚÚ

ËÚ©°Û	ýýý¿ÿ¿¿ûý¿¿ÿ¿¼¿ÿ¿
Éé¹éëûÿ¿ÛÛËÉ©­©ËÐù°
¯
ÛË	
	©­©ë\n\nÚÚ

Ù©© ð½©¹©½©
Ûé¼°ù©©¹©©°°¼ ¹©	ªÛûûûùùýÿÿÿÿÿýùÿÿùý°¼ùýÿý°­¼ûð¿¹«éé½ù½©©­©
ÚÛ	­
	é©©ùé«
Ë\n¹­¾

ÿùù©­°½°°ºéÿßýÿÿÿ½¿¿ÿ¿¿ùûùÿû
ù©éë¿
ëÿûùù©«Ë	¯
ÛÚÐû¾ÚÚÛË©­©¼ÛË\n¹¼¹°¹©ù­½°¹°¹°°Ëú

©­©©©­°ð ûûûùûÛÿÿÿß¿ßÿ­ÿûð°½ý½½¿ß°ð¼Úùð¹é©éËÉ¿¹©°°Úé©ý­­­ºËÛËÚ¹©©­©°½¼°¼°½¹°°»
ÚÛ
Ú\r¹½\n¹ýÿßÿÿÿÛùûÿÿ¿ùú¿Ûûÿ°°ûû°¿ÿûÛ\r©é©©¯¾¹©»þËÉ °¹©ú
\nËù½º



ù«
\n
ÚÛ°ð½\0ûûÿ½¿¿ÿýûßÿùûÿýºûÉ­¿ýùéûÿÚ½©­©úÚÙû	ð­©»Ê\r­ é°ðùûÚ­½©ú¼°°ù\n	°»Ë


Ú°ùúÛ\r©\n»ÿýûÿÿýÿÛûÿûÛÿûÛûùéÿÿ¿ßý¿
ÚÛÛ
¼¿©ë¼¹­©
\n½©©¼º°°©úÛÛ½°ð°û	°éð¹©¹«

©©©°¹­
ùûýÿ¿¿¿ßûÿÿù¯ÿý¼¿ûÉéûÿýúùûð­©ùð¼¾
ÛÚÛùëË	\0ðù¼¬¹©ÚÛ
­¹ËËù©«ºÐ½¹é°¼º
ÚÐº
Ú
Ð°¹­«ËÿÿûûÿßýýûßÿûÛùûÛÛé¿¼°©¼¿¿½ýú¿½¹©½­©­©¼°½¿
Ú
©­ºÚ¾»¿Ú½­»ú\r­	°ÚÚÚ
½°ù©é«


ÛÛûÿ½ÿß¿¿¿¿ÿý½»Ëÿÿÿßÿ
ßÿý¾¾©éé½ùðúÚ½©

Ú°ð é©é°­°ú¹­­¯½¼¹ûÛùº¹¹¹©¼¾	©°°¹½¼½½©é¹ë¾ÿßÿûûýÿÛßûûÿ½¿ÿ¿ù©ûù ð½«ÿû©ÉËûù¹ÚÚÐù	Ë
ß¹\nÉ ºÛ
©ÚÛûûÛëëË­¯­Úð½©¹°ú
	éë
¼¹ÉûûÛýÿÿ½¿ÿÿÿÛÚÿýºÛÿÿ\r©ð½ÿÿÙ¬»ëýù­¯


¾°ù«
\nÐ©­¹ Ë\r
	«°¼½¯¹»ú¹«ÚÙº

¹º¹°ùééú	°»½ÿÿûùùÿûÿûß¾½ÿß¿½ºÿð¿Ú¿¿ù¼°ûÛûÛù½­©ë°ùúù\n­­ °Ð¹Ê©Ëû¿¿¯­©¼¼½«éðùéé©ùº¹¹©
­°ÿÿÿ½ÿÿÿÛÿûÛÛûûÿð­ÿ¹é¿ÿÛß¿ë½ûÙ¿½ºÚ©
Ë
©©©\nÚ	
¹°«Ûûûùë°°ú
Û©­°¹°°°¼»
Úð¹û­ùûùÿûÛùÿ¿ý½¯¿ßý¹¿ÿþßÿ½­ûý¾¹ëß½ºÚßý½­¼°ùð°°°Ûù\nÉ­¹© ééÉ©é®½­¿ú¯½©ðùë©ÛÛ
Ë½¹­¿	¼¹ËùÿÿÿùÿÿÿûÿÛÿùýÿ¿ûûËÛù©ùÿÿÛû°ûÿùûÛ

\r°ð»
ËÚÐ°¹
ûúÿ¹ûºù¹


\n¹°¹½«

¹©»ù½»ß½¿½¿½ý¿¿¿ÿ½àÿðð¿ÿÿ½­°ðÿ¼¼»ËÚÐð¼½
	©ðù©	éË©é­­­
ËðëÊðùûÛ¾
ÚÚÚÚùðùëÚ
Ëðý©ýÿÿûÿÿÿÿÿûùÿÿÿÿÿÿ¹ûù©©ÿÿÿÿ¿°°¹ûÿ

Û



¹»¿¿ûû»ûûù¹°¹©©©¹¹¹©°¹©°¹©©°¹»
\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿ\0\0\0\0\0\0 ­þ','Janet  is diÃ«tiste .   Janet is in dienst gekomen als verkooppartner in 1991 en is in februari 1992 bevorderd tot vertegenwoordiger.'),(4,'Peeters','Margareta','Speelberg 6','Elewijt','1982','015 61 55 59','Vertegenwoordiger',2250,'5','51',1,'1992-03-30 00:00:00.000000','1937-09-19 00:00:00.000000','2',_binary '\'\0\0\0\0\0 \0\0 \0×
OLE2C3EEA13\0PBrush\0\0\0\0\0\0 \0\0\0PBrush\0\0\0\0\0\0\0\00 0 191 222\0@T\0\0BMT\0\0\0\0\0\0v\0\0\0(\0\0\0À\0\0\0ß\0\0\0\0\0\0\0\0\0 S\0\0Ä\0\0Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÀÀÀ\0\0\0ÿ\0\0ÿ\0\0\0ÿÿ\0ÿ\0\0\0ÿ\0ÿ\0ÿÿ\0\0ÿÿÿ\0¬¬¬¬¬Î¬ ààÌ¬¬àì¬¬¬ÏïÿÿÿÿÿþÿïþÿÿïÎÌÊÊìÀÎ¬ÎÊÊÊàÀÀ¬\nÎîÀàÀìÀÎì¬ÊÎÊÀàÊàÊÀÀààààÊÀàÀêÀàÀ ÊÀàÎÊÀààÎÊÀêÀàààììì¯ÿþÿïþÿÿÿÿÿÿïÿàÎ¬¬ÀìàÎÊààì¬Àì®Ì¬àì\0Àì¬Êì¬¬\0Î¬Î¬Î¬¬ÀÊÀààÊÌ¬¬¬¬à¬ÊÌÀì ÀïÿÿÿÿÿþÿÿÿÿÿÿÿüààÌì®Êì¬¬ÌÀÎÊÀÊÎÊÎì Àì¬¬ÀàÌÊÎààÊÀààÀàÊÎààààÀÊÀàÎ¬¬®ÀÀàÊÀì\nÊÊÀì\0î¬àìÀàÊÎîÿÿïþÿÿÿÿþÿïþÿþÿììêÀìÀîÊÀêì®¬¬¬¬¬àÊààÀìÀìÊ¬ààìÊÎ¬à\0ÊÀààÊÀàÊÊÀÀ ÊÀìàÀÊÀààÎÀÊÀÊÊÊÊÎÀÀïÿÿÿÿþÿÿÿÿÿÿÿÿÿþ¬ÀìÀÎÀìÀàÀÊÎ¬ÊÀàÀìàì¬Ìì¬ÊÀìÊÎ¬¬¬¬¬Àààì¬àÊÀ¬¬¬¬¬¬¬àì®ÿïÿÿÿÿÿþÿÿÿÿÿÿÿÿÊÌì¬àì¬ì¬¬®®Àî¬àÊÊÎÊÊÎ\0¬àÊÊî\nÌ¬ì\0ìàÀÊÀàÀÊÀàÊÊÀÊÀ¬¬\nÎ¬êÊÎÊÀàÌàìÌÿÿÿïþÿÿÿÿÿïþÿïþÿüêÊÎÊÊÊÀì¬ÊÌÀÌ¬àààÌÀÊÀììì¬\0ÎÊÊÀìÀ¬¬ì¬¬¬¬¬ì àÊÊ¬¬ààÊÊÊÀÀàÎ®ÀààÎÊêþÿïÿÿÿþÿþÿÿÿÿÿÿþÿìÎÀàÎìàÌ®ÊàÊÊÊÊÀÀÊÊì¬ÊÀêÊÀìà¬ ì®Î\n¬¬®\0Î¬¬¬¬¬¬Î¬ÀÊÎ ÎÏÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿðààÎÊÎ\nêÌÌàì¬¬ÊÊì¬Àî¬¬ÎìÊÌÊÀÀàìÊÊÀàÀÎ¬àÊÊÊÊÊÀàÊÀêÊÊÀà Êì¬¬àìÌàÊîÿÿÿÿþÿïÿÿþÿïÿÿïÿÿþÎì¬¬ ìì¬ÊìÀàÌ¬àÀÎ\0ÊÎ¬àì\nÀààì¬¬À¬¬\0àà¬¬¬¬¬¬¬ÊÀÀì¬¬ÎÎ\0ÊÎ®ÏÿþÿïÿÿÿþÿÿÿÿïÿÿþÿïÊÎÊÊÌìÊÊÀàÀàì®Êàì¬àÀììÀìÎÎàÀàÀì¬¬¬À¬àÊÀÀÊÊÀÊÀÊÀàÊÀ¬ÊÀÊÀààÊÎÊÀàÊàÎÊÏþÿÿÿÿÿÿÿþÿÿÿÿïÿÿÿÿüì¬¬¬ÎÊÎ¬ÊÀÎ¬ÀàÎ®\nÊÎ  Î®®ÀÀì\nÊÀàÀÊ¬¬¬¬¬¬¬¬¬\nÌ¬¬¬¬¬ ÎàÌ¬¬þÿÿÿÿïÿþÿÿÿþÿÿÿÿÿÿÿþÊÎÎÊÊàì ì¬àÊÎ¬ààÎàÊÀÎÀààÊÎÌàÊÌÀÀà¬¬¬ÊÀÀÊÀêÊÀÊ¬¬ÊÊÀàÀ¬ÎÀìàÊÊÎÌïÿÿþÿÿïÿÿÿÿÿÿïÿïþÿïÿþ¬ìÌàÌàÎìàÌ¬ÊÀàÎ¬¬¬ÎÀì¬ÊÎààÀààÊÊÀ¬¬¬¬¬¬ÊÀàÊÀ¬¬ÊÊÌ¬\0ì¬¬Ì àêÿÿïÿÿÿÿÿþÿþÿÿÿÿÿÿÿÿÿüÎÊÎ®¬Îì¬ÀàìÀàì¬ÊÀààÎ\0àì\0àÀÊÌ¬ ÊÀàÊÌ¬¬Ê®ÊÊÀìªÌì¬ÿÿÿÿÿïÿÿÿÿÿÿÿÿïÿÿÿÿþÿ¬ÊÌàìàÎÊ àìàî\0ì¬¬àÊÎÊÀì¬ÎàÎÀì¬\nÎ¬¬Àààà¬¬¬¬¬¬\nÊÊÊÌ¬î\0ìÀìÊÀìþÿÿïÿÿÿþÿþÿÿþÿÿÿïþÿÿÿÎìÊà¬ÌìÀÎÀì¬ààÎ¬ÊÌ ìÊ¬ÀÌ¬àÀ\nÊÀÀÊÀàÊÀÀà¬¬¬àÀàÊÊÀÎÀàìÀêÎÿþÿÿïÿïÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÊìàìÎÌ®\0àì¬ÀàÊÎÀàÀì¬ÊÎ¬®\nÎ¬à¬¬¬ÊÊÀÌ ÊÀàÊÀ¬¬¬¬¬àì\nàÊÎÿÿÿÿÿÿÿÿÿÿÿïÿÿÿïÿÿþÿÿïüÀàì¬ÊÊÊÀÎÎ¬Àà¬¬ààìÊÌ¬ì ìÀÎÀàÊÀ\nÊ¬¬¬¬ àÊÊ ÊÀàÊÌ¬¬¬¬¬ÎÀì¬¬ïþÿþÿÿÿÿÿÿïÿÿþÿÿÿÿïÿþÿÿðêÎÀì¬¬Îàààì®ÎÀÀàì¬¬ÊÎ\nÎÀàÊÌ¬¬¬¬¬ÊÊ¬ÀààÊÌ¬¬ àÊÊÀÊÊÀìì¬ÊÎÿÿÿþÿïÿþÿÿÿÿÿÿïÿÿÿÿÿÿÿÿìÎ\0ìì Î¬Àì Î¬ÀÎÀ¬ÊÌà¬ÊÊÀàÎÀ¬ ÀÊ¬¬\nÊàÊÀÎ¬¬¬\0àì¬ÊÎÏïþÿÿÿÿïÿÿÿïÿÿÿÿÿïÿïÿÿþÿÀàÎÎÊÀìàÎìÀìàÀààÌ®¬Î¬ì¬¬Àà ÊÀàààÀàÊÀààààà¬\0àÊàÊÀÀìàÌ¬®ÀàÎ¬Îÿÿþÿÿÿÿÿÿÿÿïÿÿÿÿÿÿÿïÿÿþÿì¬¬¬ÊÊÎ\nÎÊÎÊÊÀÀì¬àààì¬ì¬\nÎ\nÀÊÊÀàÊÊÀÊÀÀÎÀàÀààêÊÎêÊÌàÀàïÿÿÿÿÿÿÿÿþÿÿÿþÿÿÿÿÿÿÿþÿÿÿÚÊÀìì¬ÎÀìàààÊÀì¬àÎ\0ÊÎÀàÊì¬ÊÌ¬\0ÊÊÀà¬¬¬¬¬ à¬¬àÊÀÀàîààÎ\nÎÿþÿïÿïþÿÿÿÿÿÿÿþÿþÿþÿÿÿÿÿþþÌîÀàì¬¬¬àÎ\0àÌ¬ ì¬àààÊÌ¬ÀÀàÊÊÊÎ\0¬ÀààÊÊÊÊÀàÀÊÊÀààÊÊÊÀÊîàìààïÿÿÿÿÿÿÿïÿÿïÿÿÿÿÿÿÿÿþÿþÿÿü®¬àÊÌàêÌ¬ÎÊÎÊÊÀÎÀÎàì¬ÊÌ¬®¬Ì \nÊ\0ààÀ¬¬¬¬¬\0ì\nÊ¬¬¬\0Î¬ÎþÿÿÿÿÿÿÿÿÿÿÿÿïÿÿÿÿÿÿÿÿÿþÿÿìÀìîìÌÊÎ ì¬¬¬¬¬®À¬¬\nÊÌÊÀà\n\nÀààÀÊÊÊÀààÊÀ¬ÀìÀÎ¬¬¬àÎ®Ìààïþÿïþÿÿÿÿþÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿý®ÊÀÊÊÊÌ¬¬àÌÊÀìàÀàÊÀÎÌ¬Àà êÀìì\0 à¬¬¬¬\nÊÊÀà\nÀ ààÎÊÎ\0àÌ\nÎÿÿÿÿÿÿþÿÿÿÿÿÿÿþÿþÿþÿïÿïÿÿþÿììàì\nÊÎ¬\0ì®àààààì àìÀÊÀ\n\0¬ ÀÊÊÊÊÀàÀÊÀàÀàÊÀìÊÎÀÀàì¬ÊÀîÀàìì¬ÿÿÿÿÿÿÿþÿÿÿÿïÿÿÿÿÿÿÿÿÿÿïþÿÿðîÊÀ¬àìì\nÀàÀàîÊÀÀì¬ÀÀ¬¬\0ì\n\n\nÀà¬¬¬¬\nÀàÊÀ À àààÌ¬À\nÎÿþÿïÿÿÿÿþÿþÿÿþÿÿÿÿÿÿÿÿÿÿÿÿþÿÌÎ¬ ìÊÎÊÎÀàààÊÀàÊÌ¬ÊÀîÀ\0\0\0ÊÊÊÀàÊÊÀà\nÀàÊÎÊÌÊÌªÊÎì¬ÊÎÊþÿÿÿþÿïÿÿÿÿÿÿÿÿÿïþÿÿÿþÿÿÿÿÿÿÊìÊÀÎÊÌà¬àÀì¬¬¬¬¬¬¬\0ÊÀ\n\0\0\0à¬¬¬¬\0àÀÀÊÀàÀ à¬\nÀàÊÀÎ¬ÎÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿïÿÿÿÿþÿïþÿÌ¬ì¬¬ÊÀìì\nÎÊàÊàÊÀàÊÀàÊÀÀì¬ ì\0\0\n\0ÊÊÀàààààÎ ààÊÀêÌÊÌ¬ì¬àÀàÏÿÿþÿÿÿÿþÿÿþÿïÿþÿÿÿÿÿïÿÿÿÿÿÿÿþúÊÊÊÎÀàÀì¬Àà¬¬¬¬¬\0\0\0\0\0à¬¬¬¬¬¬¬ÀÊÊÎ\0ààêÀìêì®þþÿÿïÿÿÿþÿÿÿÿïÿþÿÿÿÿÿÿþÿÿÿÿÿÿüì¬ìààÎÊÌ®ÎÊÊÊÀàÊÀàÊÀààÀ\nÊ\0\0\0\0ÀÀÊÀ ààÊÀ\0àÊÀàààà ÎÎ¬\0êÀïÿÿÿÿÿïþÿÿþÿÿÿÿÿÿÿïþÿÿÿÿÿïÿÿþÿÿÊÎ¬¬ÀààÊÀÀàì¬¬ àÌ\0\0\0\0à ààÊÊÎ¬¬¬¬¬Àîà ÎàÎÀÎÎÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿïÿÿÿÿïÿþÿüàÊÎÌàìÊÌ¬¬®ì\0àÊÀàÊÀà  \0\0\n\n\0\nÀ¬¬\0ÀÊÀÊÀàÊÀàÊÀàÀÌàÎ¬¬àì¯þÿïþÿÿÿþÿÿÿþÿïþÿÿÿÿþÿÿïÿÿÿÿÿÿþÿüìÊÊàì¬ÊÊÊÌ\0ìÀàÊÀàÊààÊÊ\0\0\0\0\0à¬ÀÀì¬¬¬¬ ÊÀàÊÀà¬à\n\nÀÀÎÊÎÿÿÿÿþÿïÿÿïÿÿÿÿÿþÿÿÿÿÿÿÿþÿïÿÿÿÿÿì¬¬ÎàÊàÊÎÀ¬¬Ê\0À¬\0Àà\n\n \n\0ÊÀ\nÀà¬¬¬Îî¬Àì ì¬ïÿþÿÿÿÿÿÿÿÿþÿÿÿÿÿÿïÿÿÿÿÿÿÿÿÿïÿÿÿÿÊÎÊÊÎàìààÀêÌ ÀààÊÀ Ì À\0\0 \0\n\0¬¬¬ à¬àÊ¬¬¬¬ êÀÌ®ÀàìàÊïïÿÿÿïÿÿÿïÿÿÿþÿÿÿÿÿþÿÿþÿÿÿÿÿÿïïþÿìì¬àÊÊÀìÊÎ¬\n\nÀÊ\0\0  \0\0\0\0ÀÀÀààÊ\0àÊÀ¬¬ÀÊÊÀÊÎ¬ÏÿïÿïÿÿïÿÿÿïþÿþþÿÿÿÿÿïÿÿþÿÿïÿÿÿÿþÿÊÎìÌ¬àààÌ¬¬¬\0àÀÊÀàÊÀÊ\n\0\0\n\0\0\n\0\0¬¬\nÀàÊÀàààà¬¬¬¬àìÊÎ¯ïÿÿÿÿïÿïÿïÿÿÿÿÿþþÿÿÿÿÿÿÿþÿÿÿÿÿÿÿÿüàÊàààààÎÀêÀÎ®Àààà\nÀ\n\0Ê\0\0\0\0\0  \0\n\0 À¬À¬¬¬Ê¬\0àìÊÏÿÿþÿÿÿÿÿïÿþÿþÿÿÿÿÿïÿÿÿÿÿÿÿÿþÿÿïÿÿïìÀì¬àÊÌ\nÊÀÊÌ \0\0\0\0\n\0\0\n\0\0\nÀ àÊÀì\nÀàÊÀààààîì¬¬®Àà¬¬ïïþÿÿïÿþÿÿÿÿþÿþÿïÿÿÿïÿïþÿÿþÿÿþÿÿïïÿÎ®Ààì®Ààì¬\0ààì à  \0à\0\0\0\0\0\0\0\0\0\0\0\0¬\nÌ ÊÀ¬¬ÊÀÊÀÊÊÎÊÌÎÊÏÿÿÿÿÿþÿþÿïÿÿÿÿÿÿþÿÿÿïÿÿþÿÿÿÿÿÿÿÿÿÿÿÊÌÊÌ\nÊÎ¬\nÊÌ\0\0\0\0\0\0\0\0\0\0\0\0\0¬\n ÊÀàÊÀàà¬¬¬¬ààÎ ¬¯þÿÿïÿïþÿÿÿïÿÿÿÿÿÿþÿÿÿÿÿÿÿÿÿþÿþÿÿÿþÿìààÎ¬¬¬¬ÀàÊÌ¬  ààà\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0àÀÊ¬¬ÀÊÀà¬¬ÊÌÎÏÿÿïÿïÿÿÿÿÿÿïÿïÿÿÿÿþÿÿïïïÿÿÿÿÿÿþÿþÿþþàÊÊÀÎ¬\nÀÌ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 ¬Ààà¬¬¬¬¬ÀàÊÀì¬¬¬¯ïÿÿÿÿþÿÿþÿÿÿÿÿÿïÿÿÿþÿÿÿÿÿïþÿÿÿÿÿÿÿÿßÎÎàìÊÀàÎ¬Êà Ê\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\nÀÊ\nÀÀàÊÀÊÀàÎ®¬ÊÀÀïÿïÿþþÿþÿÿþÿÿïÿÿÿïÿÿÿÿÿÿÿïÿÿÿÿïÿþÿÿïþü¬\0ì¬Àà ÀÌ Ê\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0¬¬\0ààààì\0àÀÎ¬®ì¬¬¬Ïÿÿïýÿÿÿþÿÿþÿÿÿïÿÿïÿÿþÿþÿÿþÿÿÿÿïÿþÿÿÿÿàì¬ÎÊÊÊì\nÊ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0 \0à ¬ÀÊÀÊÀ¬ÊÊÊÊÊÀÀìàì¯þÿÿþÿÿÿÿÿïÿþÿïÿÿÿÿïÿÿÿÿþÿÿþÿïÿÿÿÿÿÿþÿÎÀì¬¬¬Ì\0ì ì\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¬Ê àààÊÀà\nÀàÀàÊÊÀîàïÿþÿïþÿïíþÿïÿÿÿÿïïÿÿÿÿÿÿÿÿïÿÿÿÿÿþÿþÿÿÿþÀàÊÎ ¬\0À¬ \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0  \n\0\0 ¬ à\0àÊÀìÊÊÊÀààÊÀÊÏþÿÞÿÿÿÿÿïÿÿïþÿïÿÿïÿïÿÿïÿÿÿïþÿþÿÿÿÿþÿþÿÎ¬¬Ì¬Ê\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0 \0\0\0àà¬ ÊÀ¬®¬¬¬ì¯ÿÿÿÿÿÿÏïÿþÿÿÿÿÿþÿÿïÿþÿÿÿÿÿÿÿþÿþÿþÿÿþÿÿÿÊÊÀàÀ\nÀà\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\n\0\n\0 \0\0\0\0\nÀàêÌ ÊÀàÊÀÊÀàì ïïþþÿïþÿÿïÿþÿïþÿÿÿïÿþÿÿÿÿþÿÿþÿÿÿÿÿþÿÿßþüììàì\nÊ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\nÊ\nÀ\0Ê¬¬ÊÀÊÊÌÏÿÿÿÿÿÏþþÿïÿÿÿÿÿïÿÿÿÿÿþÿïÿþÿÿÿÿïÿïÿÿïþÿÿàî\0¬¬\nÀ¬\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0 À\0\0\0 \0\0\0\0\0 \0¬¬ ÊÀàÊÀà¬\0ààì®¯þÿïÿþþÿÿÿÿïÿÿÿÿÿþÿÿïþÿÿÿÿÿþÿÿïÿïÿÿÿÿÿÿï¿ÀÌ¬\nÀ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0  \n\0\0\0\0\0\0\0\0\0\0\nÀ¬\nÀàÊÀÎÊÊÀàÎÿüÿíïÿÿÿÿÿûïþÿÿÿÿïÿÿÿþÿÿÿÿþÿÿÿÿÿþÿÿïÿÿÎÊì ¬¬\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0  \0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\nÊÀì¬¬àïÿëÿÿÿÿÿ¯Þ¿ÿÿý¿þÿÿÿÿÿïþÿþþÿÿÿþÿïÿþÿþÿÿþßïàÀÎÀ\0\0\0\0\0\0\0	\0\0\0\0\0°\0\0\0\n\0\0 \0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0 \0 ÊÀÊì¬ÊÊÿÿþþÿúÚÚûþûëûý¿ÿÏÿÿÿÿÿþÿÿþÿÿÿÿßþÿÿÿþÿÿþð¬ ¬à\0\0\0\0\n\0\0\0\0\0\0\0\0°\0 \0\0 \0 \n\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0¬¬¬ Ê\0¬¬Ïïïÿÿÿ\r©ûß½¿ýÿûý¿¿¯ÿÿÿÿÿþÿÿÿÿþþÿÿÿþÿÿïï\0îÊ\0\0\0\0\0\n\0\0\0\0	
	\0\n\0  À \0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0 ÌàîÌ¬ àÊÿßïÿ°ú­ëëý¿¿¿ëûûÿÞÿÿÿÿÿüþÿïÿÿÿÿþÿÿÿÿð¬ \0\0\0\0\0\0\0\0\0\0\0	 \0\n\0 \n\n\n\0\n\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\n\0  \n\0À\nÊÌ¯þÿü°Úß¾ËëÏëü»ÿ»ûïÿþÿÿÿÿÿïÿ¯þÿÿþðÀÊÊÀ\0\0\0	 \0\0\0\0\0\0 	©		\0à\0\0\0\0\0\0\0\0\0\0\0\0\0\0
\0\0
\0\0\0\0 \0\0\0¬¬¬¬ààì¬ï¯ÿðùÉ¯ëéþ¾½ºÿ¯½ûþÛí½¿¯ÿÿïÿïÿÿþßÿÿÿÿ¬¬¬¬\n	\0\0\0\0\0\0\0\0		\0\0 \n\n\n\n\n\n\n\0\0\0\0 \0\0\0\0\0\0\0\0 \0
°\0\0\n\0\0\nÊÀ¬ÊÊÊÿï\n¯þëËÎ¯ÚÛÏ¿¿¿»þ¿ßÿÿÿïýÿÿÿþÿÿüïà\n\0\n\0\n\0\0\0\0\0\0\0\0\0\0\0\0 \0©©	\0 \0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
ÿð\0\0\0\n\0\0\0\nÀ¬ÀÎÿÛùûÍ©ÿ¯½¿»ý¯¾ûééð½ù½»ûïÿÿþþÿÿïÿïËð\0 \0\0\0\0\0 \0\0\0\0\0		 °\0 	\0\n\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\nû°\0\0\0\0\0\0\0\0\n¬\nËÿï¬ú¿ëý¾¿íúùéðûûûÿ«ÿ¿Ûß¿ÿÿÿÞÿùïÿ\n	\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\n		 \n\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0 \0\n\0\0\0\0\0¬ïúý°ý½ûÿý¿½¾¾¯¼úÛ½¹þ¿ûþÿïþÿþþÿð\0\0\0\0\0\0\0\0\0\0\0\0\0\0°°\0	\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0 \0\0
ð¾ýú¾½ëÿ¿ÛûûÿùùùéË½úÛï¿¹ùÿÿÿþ¿ÿ\0	\0\0	\0\0\n\0\0	\0\0\0\0 \0\0  \n\0 \0\0\0\0\0\0\0\0\0\0\n\0\0\0\0à\0\0\0 \0\0\0\n\0\n\n\0\0\0 \0\0\n\0
ÿÿþðùéÿ¿ûÿ¿ý¿¿¾úûûË©úÛ¿¾ûûÿÿÿÿÿË	\0 	\0 \0	\0\0	\0	\0\0\0°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0 \0\0 \0\0\0\0\0\0\0\0\0\0¿þÿ
¿ùÿÛÿÿûýÿÿÚðúß­»ûûÛÿïþÞþð\0\0	\n\0	\0\0\0\0\0\0\0\0		©\0\n\n\0\n\0 \0°\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0 \n\0¯ÿð½¯¿¿ÿ¿¿¿ÿ½¿¿ûÛùú¿û¿ÿÿÿÿð\0°\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\n°\0 \0\0\0\0\0  \0\0\0\0\0\0\0\0\0
\0 \0\0\0\n\0\0\0\0\0\0\n\0\0\0\0\0
ÿ
Úùÿùûÿÿÿýûÿÿß­ûÛéù©¿¿½¹í¾¿ïþÿð\0\0\0\0©\0	\n	©	
	\0\n\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0¿°\0\0\0\0\0\0\0\n\0\0\0\0\0 \0\0\nÐÿ
Ëûÿ½ûÿ¿¿ÿ¿»û¯»ÛûËËÛÛÿ»ûßÿûþÿ\0\n\0\0\0	©\0\0\0\0\0\0°\0 \0\n\n°°\n\0\0\0\0\n\0\0\0\0 \0\0\0\0\0\0
ÿÐ\0\0  \0\0\0 \0\0\0\0\0\0\0\0\0\0»ð¿»ß¹ûÿ½ûÿÿûÛýÿÛý¯ûðù­¯úù½½¯ÿüÿû\0	\0\0 \0\0°°©	\0
	©		\0 \0\0\0		
\0 \nÀ\0\0\0\0\0\0\0\0\0\0\n\0¿°\0\0\0\0 \0\n\0\0\n\0\0 \0 \n\0
ïËßûß¿Ûÿ½¿¿ÿ¿¿¿ûý½ûûÚÚûËùïÿÿí	\0\0 °\0\0 \0 \0\0\n\0©		 \0\n\0\nÀ \n\0\0\0\0\0\0\0\0\0\0 \nÿ°\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0­¿ú»ý¿ÿûÿÛûÿûÿ½¿¿¿¼¿ÿ½½»ÿÿïÿ\0 \0\n\0 \0°\n
	\n°°\0 	\0\0\nÀ \0\0 \0\0\0\0\0\0\0\0ÿð \0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\nûû¹ÿþûûÿÛÿÿ¿ÿý¿Ûÿûÿùûù­

û¼ðÿïÿð\0\0\0			
\0\0\0\0	\0\0\0\0 ©	\0©\0\0\0  \n\0\0\0\0\0\0\0\0\0\0\0\n\0¿\0\0\0\0 \0\0\0\0\0\0\0\0\0\n\0 
Ûùë¿ûý¿¿ùûÿÛûÿ¿¿¿ùúÛ	ÿÛïÿÿ\0		\0\0°\n\0 


\n\0°	©
\0\0©\0 \0\0 \0 \0\0\0\0\0\0\0\0\0\0 ÿ°\0\0\0\0\0 \0\0 \0\0\0\0\0\0\0¿¯½½¯¹ÿ¿ùÿ¿ýÿ¿¿ûÿÿ¿ûß¿ùùé©½¿¬¿ÿð\0\0	\0\0			\0\0\0		 \0 \0\0
\0 ©\0©	\0\n\0\0\0\0\0\0\0\n\0  \0\0\0 \0¿\0\0\0\0\0\0\0\n\0\0\0\0\0\0À\0	í¿ëÚÿ½¾ûß¿ÿûÿ¿ûÿý¿Ûûý¿ûÿ¿¾úÚÏï\0\n	   °\n\0©
	 \n\0°°\0©\0\0\n\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0à\n\0\0\0\0\0 \0\0\0\n
û\0° \0\nûÿûÛ½¹ûß¿Ûÿ¿ùûÿ¿ßûÿ¿ûß¿\0¹½¼¯ÿ		\0\0\0\0\0©\0\0\0			\0\n\0\0 \0\0	
\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 ¿\0 \0\n\0\0°
ÿ\0 \0 ¿¿½úÿ¿ûûûÛ¿Ûý¿ÿûÿ¿¿ûß¿ûß½
Ë©ü\0\0\0\0\0\0	\0	 \0° \0©	
		\0\0\n\0\0\0\0\0\0\0\0\n\0\0\n\0\0\n\0\0 \0\0\0ÿ\0\0\0\0\nù¯ÿð\0\0\0¯¿ÿÛë½¹ùù½½½¿ß¿¿ÿ¿½¿ÿý¿ûß¿ûé°»ÐËË\0\0\0©\n\0
\0\0	©\0\n\0\0 
\0\0
			\n\0\0\0\0\0\n\0\0\n\0\0\0\0\0\0\0\0\0\nÿ\0\0 \0\n
ÿ
ÿ\0\0à\0ùÿ¿Ûß¼¹½»Ûûýÿûûûÿ¿ûûé \r
\0
ú°\0 \0	 		\0\n\0\0°°\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0©ÿ°\0\0\n\0\nÿÿ
\0¿ûÿûûû
ÛéùùËÛÍÿ¿¿¿½¿ÿûÿ¿ÿÿ¿Ð°\0¬\0\0\0 \0 \0 \0\0	\0\n
	\0\0\0\n\0©\n\0°\0\0\0\n\0\n\0\0\0\n\0\0\0 \0\0\0\0\0ÿð\0 \0\0\0¿¹ÿ\0 \0­¿¿½ûð­¹½Û©½¿ûÿý¿½ûÿùûùë\n\0Ù\0\0\0\0	\0				\0	© \0\n\0°° \0\0 \0\0\0\n\0\n\0\0\0\0\0\0\0\0\0°\n\0\0\nÿ\n\0\0\n\0¾úÿ\0\0 ÿ¯ßûùÙùÛÛÿÿ¿ßß½ÿ½ÿ¿ÿÿ½ÿ¿¿½°Ð°\0	\0\0\0\0	\0\0   °\0	© \0©	\0\0 \0 	\0\0\n\0 \0\0\0\0\0\0 \0\0\0\nÿ\0\0\0\0«\0\0\0 \0\0ù¿
\0þùÿ¿¿ë½¿¿ÿ¿ÿÿû¹ûûÿ¿ûÿûÿÿûÛ	\0\0
\0\0\0\0\0\0\0\0	\0\0	©\0\0 °	\0\0 °\0\0\0\0\0\0 \0\0\0\0\0\0\n\0\0ÿ\0\0\0\0\0\0\0\0 \0¯ÿ¯ 	ù¿¿ÿû¿ïþÿÿÿÿûÿÿð½½ûÿ¿ÿ½ûÛ»Ù©\0\0½\0\0\0	 \0\n\0\0°
\0°\0	©	\n\0\0©©	\0°\0\0\0\0\0\0 \0\0 \0\0\0\0¿° \0\0\0\0\0 \n\0\0û\0	¿ûÿ¿ÙÐÛûÿýÿÿ¿ùËÿ¿Ûÿûÿ¿¿ÿ­¾
	ÿÿ \0	\n\n° \0\0	\0	 \0 \0 \0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\n\0\0¿\0\0\0\n\0\0°\0\0\0\0¯ÿ
ù\n
ð½ûß¿º¹ð¼¹ûÿðûéùý¿¿	ÿ¿ß½ûÿûÛ©¿¿ÿÿúÿ\0\0\0\0 \0°\0°	
	©\0\0°°\n\0\0à\n\0\0\n\0 \0\0\0\n\0° \0\0\0«û\0   ÿ°ÿ\0ÛÛÿ¿ûý¿ÞÛ¹Ûûÿûÿ¿Ûÿ¿ \0ðý\0\0\0\0\0	©\n\0\0\0	\0 \0\0\0  \0\0\0\0\0\0\0\0\n\0à\0 ¯\n\0\0\n\0¿
û\0\0\0	ÿÿ\0\0\0
ÿð¿ûºûÛû¹ûý»¿»ÛÛýûùùûÛÛÿ¿¿ÿ¿ûû¿Ûû
	 	\0\0\n\0\0\n\0\0°° ° °°°\0\n\0\n\n\0\0¯\0\0\0\0\0ÿ
ÿ\n\0\0¯ÿÿù\0\n\0ÿùû\r¼¿½þùú½ý­ûÿÿ¿ÛûùûûÛùÿ½¿ýÿ¿¼û\0\0\0\0\0\0\n\0\n	
\0\0\0\0	\n\0\0\0\0 \0 \0\0 \0° \0¬ \n\0»\0 \0 \0ÿÿ°\0\0¿ÿþû\0 \n
ÿû¯ý»ûûÏ¹¿ùþ»¿¿ùûûÿ¿ùÿ½¿¿ÿûÿ¿ûûùûß¹ë
	\0\0	\0\0\0\0\0\0°°©
	©	 	©\0	ð\0\0\n\n\0\n\0°\0\0\0\núð¿°\0\0¿ëÿÿ\0\0
ÿïû­­½»ÿûûù½ùù¿¿ßùÿ¿ùûùÿ¿¿ûÿ½ÿ¿¿»¹\0½\0	\0\0	\n\n\0	©\0\0\0\0\0\0\0 \0\n\0\0°\0	\0ÿ \n\0\n\0\n° \0 	ÿð©\n\0\0¿ÿûþð\0 
ÿÿ
ü¹ûûÿûû¿ûÿÿ¿¿ûß¿½¿ùÿÿÛÿ¹ûý½û­©ð\0\0	 \n\0\0\0	©

\n	©						\0\0\0ÿù\0 \0 \0\0 \0\0\0\nÿû\0¼\0\0¿ÿÿÿ¿\0\nÿÿ°ûÛËÛûÿ¿Ûý¿ÛÛûÿ¿ûùûý¿ûùÿ¿¿ùûú¹ù»» \0\0 \n\n	 \0\0\0\0\0\n\0  \n\0 \0	ÿû\0\0 \0\0\0\0\0\0\nÿð
ð \0¯þÿÿÿù\0\0¿ÿð°­¿¿ûÿûÿû¿Ûù¯¼¿Ûý¿¿ÿûÿ½ûûÿûý¿¿ÞË	ýýð\0\0\0\0\0		©	©\0©							\0þû©\0 \0
° \n\0
û¿\nû\0\0¿ûþÿþÿ\0¿ÿ»«ÛÛý½¿½ù¿ü»
ÿ½¿ûÿß½¿ûÿ¿ÿ¿¿½¿¿»¼°ÿ¿¿½\0\0\0\n \0 \0\0\n\0 \0 \n\0 \n\0 \0©\n\0ÿù¿ÿ°\0 ð\0\0\0\0¿ÿ¹û\0\0¯ÿÿ¿ÿÿÿ
ÿð½
ëû¿ùÿ¿ý»ùûÛûÛÛûÿÿ¿ÛýûûßÛÿ½½½é¹éïÿû \0°\0
	©©					\n°\0ÿû¯ÿ\0\0°\0\0\n\0ÿÿ°ÿ \0ÿÿÿûÿ¯û	ÿ»°¿ÿ¿¿ÿ¿½ðÿ¿½¼½»ù¿ûùÿ¿ÿ¿ÿ¿¿ËúûË	¯ß¾ð\0\0\0\0°\0\0\0 \0   	\0\n\0 \n\0\0\0©\0ÿûû\n\n\0¯ð\0\n\0\nûïð¿\0\0«ÿïþÿÿÿ¿»°úùûûÛßÿ½¿

Ûýÿ»Ûÿ½¿ÿ¹ûûýûÿûÿ¿½½¼¹¿ßþ¹\0\0\0\0\0\0	©		©			 \n ÿù¯ÿ\0\0\0¿°\0\0\0\0ÿÿé¿°\0ÿ¿ÿÿïÿÿû	©½ûûùÿý½¿ÿ¿ûýûé¿
ý¹ÿÿÿÿ½ù¿ÛÛÛûË	ÿ¿¿\0	
\0°\0  \0\0\n\0		\n\0 \n\0\0\n\0	þûù \0
¿ \0\n\0ÿÿý¯°\0
ÿÿûÿûÿ¿¹\n¼ûûû¿ÿÿ¿ûðùûÿ¿Û¿½½»ÿÿ¿ûûÿ¿ÿ¿¿¿ð¿¿¿ÿÛÿ\0\n\0\0\0\0°° 			©				 ÿù¯û\0 ¯»ð\0 \0\0¿ëû\n\0
ÿÿÿÿÿûû ©	é¹\r	Ûÿ¿ù¿½ûý¿ùûÛÿÿ¿þßÿûÿ½¿ù
Û
Ëÿ¯ûÐ \0\0	
	
\0 \n\n\0 \n\0\n\0\0\n\n\n\0\0ÿûÿð\0\0¿\n\n\0\0 \0¿ÿÿ  
ÿïþûÿ»°º¹¿¾Ûúß½­¿½¿¿ÛÚß¿
Û¹¿ùûûÿ¿¿½\nù¿¹\0		\0\0\n\0\n\0\0	
					©ÿù¯°\n\0¿\0\0\0\0\0\0¯ÿÿ°\n\0\nûÿ¿ÿ»°	©\n\r
Úùù¿½ù«Ûù½¿½½¾¿ûÛßùùû¿ÛÛùðû¹ù©í¿¿ð	\0\0\0©			\0 \0\0  \0°° \n\n\0 \0\0ÿé¿\0\0\0û°\n\0\0\0\0ÿ¾ð\0\0	ÿÿÿ»°\n\0û	½¿»ý¿¿ùëÛûÛÛëùð¿½¹ÿ¿¿¿¹ûù¯ûûûË
ù­ý½\0\0\0\0 \0 \0°\0\0 					\nÿù \n\0\nÿù \0 \n\0
þÿù\n \nÿÿ»¹
		©¯ððùûßÛ½½½¹°ùùûÿ¿ùÿÛûÿùÛù¿½¼Ðù¯Ûûé\0\0\n\0	©	© \0\n\0 \0°\n\0\n\0	\nÿû\0\0\n
ûð\0\0\0\0\0
ÿÿû\0\0\0¿»»\0\n\n\0ý¹¯»ùû»ß¿¿¹ûùù¾¿ùûý¿½¿ùùÿ»¿¹°û°ß¿½¹\0\0\n\0\0\0	
				 \0\n\n	
		 \0ÿð\0 \0
ïû\0\0\0\0\0\0ÿÿû\0 \0¿» \0	
ûðùûÛðýû¿¿¿½ûûß¿ûûûýÛùû
ÛÉ°ûÿ\0\0\0\0\n	
	\n\0\0 \0 \0\0\0\n	©ÿù\n\0 ÿð\0¾\0\n\0\0¿úÿ  «		\n\0\0°­¿ù
ùé»Ûû¿ûÿ¿	ëÛûùùûÿ»ß»ù½½½¿ûéðûûÚ¼°¾ÿÛÀ\0\0\0\0	\n\0\n			\0°	   \0	\n\0ÿð\0\0\0ûù û\0\0\0\0¿ÿÿ \0\0\0 		 \0¿ÿð¾¿­¿¹ý¿ù¹¹ÿ¼½½ûý»ûÛûý¿¹½­¹ºË	é¿¾	\0	\0\0	\0\n\n	\0\n\0	\0\nÿð\n\0\n¯ÿð\0¿\0\0\0\0¿ïÿ\n\0\0 \n\0	 ûÿ\0ÙÿÛûûþÿÛé¹ûùÿ½ùûÿ½¿ûùð¿
ûËÉÚ\0¿ßùð\0	\0\0	 \n		\n		\n	 \n\0\0 \0ÿ° \n\0
ð\0ú\0\0°\0¯ûû\n\0\n\0\0\n\n\0	ÿù	«ù­½½½»Û¿ß¿¼»Û¿ùûÛûÿûÿ½¹¹é­°
ß¿
ð\0\0\0\0\0\n\0\0 	\n\n\0\0 	 ÿ\0\0\0\0\0¯°\0¹\0\n°\0
ÿû\0\n\0\0\0\0
°ð\nÙûÛ

ÿ½ûÿ	ûùû¿¼¹ùû½¿½¿¿½ù
û­¼°ð\0ÿð	\0\0\0\0 \0			\n	 \0\0\0\0û\0 \n\n\0¿°\0ú\0
ð\0
û»\0 \0\0\n\0\0\n\0Ð\0\0ù©ùý©ëùù¯¿¿¹ËûÛ½©¹ûÛûÛðûÿ¿½ù
Û
¾ù\0¹\0\0	\0 \0\0\0\0\0\n\0\0°\0\n°ù \0\0\0\0¿\0\0 \0\nð\0\0»\0\0\0\0\0\0\n
\0
\n°\0¹ÛÚûÛËùûù»Û½½¿½¿½ûÛ°¹ùé©\0\0½°	ð\0\0\0\0		©	 \0©\0
		\n	\0\0\0\0ð\0\0\0\0
¿\0 \0\0
ð\0\0© \0 \n\0\0	\0
\0	þ\0¹ð°	\0
À¿¿Úù¿Û	ëûÛù¿½»Ù¹
ÚÐ°Û	\0°\0\0\0\0\0\0 \0\0\0©\0\0\n\0\0°\0\0°\0   ¿\n\0\0\0\0\n¹ \0\0\0\0\0\0\0\0\n\0\0\0
ë\0½¹\0	ï­¿û°ù©©½¯Ûûÿ¿
ù	¿°\0	°\0		\0\0\0\n			\0		\0©
	
\0	\0°\0\0\0\0\0\0¿\0\0\0\0\nð\0\n\0 \0 \0\0\0\0\0°
\0ùÉ\0¹©¼\0É\0
Ûï¿	½»Ùý\0\0¹¼¿ð°É©	\0\0\0\0\0\0\0\n\0 ©\n\n	\0\0\0\0\0\0\0\0\0\n\0 \nÿ\0\0\0\0\0\0°\0\0\0\0\0 \0\0\0\0°
ð°\0
Ù¹¹\0\0\0\nßÿ©ûÿÿÙ½ú\0ð\0°ùûû»É	
Ûï\0\0\0\0\0\0\0\0\0\0\0		\0		\n	©
	
\0
	©\n\0\0\0\0\0
û\0\0 \0\0\0\0\0\0\0\n\0\0\0\0\0\0 \0\0\0\0»Ë	\r½ÿÿÿ¿ß¿»Ë°½	É½½½°\0	\0\0\0\0\0\0\0\0\0\0° 	 \0	\0\0\0\n\0\0\0\0\0\0 \n\0ÿ°\0\0\0\0  \0\0 \0\0\n\0\0\0\0\0°\0	°\0\0©ù
¿°Ûÿÿý¾ûß½»¹	\0\0\0ÿÙ¿¿¹é\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0 	
\0
	 \0°\0\0\0\0\n
ûð\0\0\0\0\0\0\0\0\0 \0\0\n\0\0\0\n\0°\0°°\0¹©»Û»ùÿÿûùûÿû
Û»Û	°°ÿûûÛé°	\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\n\0\0 \0\0
\0\0	 \n\0\0\0\0\0 \n\0ûð\0\0\0\0\0\n\0\0 \0\0 \0\0\0\0\0\0\0\0\r\0\0½¹ù¹û¯ÿ¾Ûÿÿ¿Ù¹»©ÿý¿©û©©°\0\0\0\0	\0\0\0\0\0\0\0	
\0°°°\0\0\0\0\0\0\0\0¯û°\n\0\0\0\0\0\0\0\0\0\0\0 \0 \0\0\0°
\0\0
Û¹¿¿½¯ß¿ß¿ß¹ûûùû½ûÿßÿÿ½°ù\0Ûý­\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0 
\0\n	 \0\n\n\0\n\0 \0¿º\0\0\0\0\0\0\0\0\0\n\0\0\n\0\0\0\0\0 \0\0\0¹\0	
¿»ÛðÛûß¿ÿ¿¹
¹û¹û¹»ÿÿÛË¾½
	\0\0\0\0\0\0\0\0\0\0\0	\0°			\0		\0\0\0			\0\0\0\0 ¯¹\0 \0\0\0\0\n\0\0\0\0\0\0\0 \0\0\0\0\0\0\0	\0°¿¾¿ÿûÿ¿ÿß¹½¿¿½þÿúù	ëùð»Ð\0	\0\0\0\0\0\0\0\0
\0 \0\0\n\0
\0 
	\0°\0\n\n\0\0 \0¿ \0\0\0\0\0\0\0\0\0\n\0\0\n\0\0\0\0\0\0\0	\0
Ð			
¹¹ûûÿÿý¿ûÙ
¹»ûûùûÛ¿ßÿ¿\0	\0\0\0\0\0\0\0	\0\0\0		
	\0	
\0		\0\n\0 \0
		\0\n\0\0«\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¼º°¹ûÿÿßûÿ¿ÿ¿ÿù	¹	
¹¿¿ù	ùù¿°ð	\0\0\0\0\0\0\0\0\0\0	\0	 \0\0\n	 \0	\0 
\0\0\0\n\0\0 \0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\n\0\0\0\0\n\0\0		
¹ÿ¿ß¿¿ýÿÿÿÿÿ¿
Û¿¿ùùí°ëûË°\0			°\0\0\0\0\0	\0	©©\0		\0©	\0	\n\0\0\0
\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0	\0\0\0\0\0\0éúúÿ½ÿùÿûÿÿ¿ÿ¿¿½ûßûù°¹Ù¿¿	ÿ½­½½\0	\0À\0©\0\0\0\0	\0\0\0°\0\0©\n\0\0 \0
\0\0°
\0
\0\0\0 \0\0\0\0\0\0\0 \0\n\0\0 \0\0\0 \0\n\0\0\0\0¹­½¼¿¿¿¿¿ß¿ÿ¿ßÿÿÿÿ¿ÿÿÿ¼»é­¿ûúÛûûé °©©\0\0\0\0\0\0\0\0\0\0\0
\0
	\0\0\0	\0\0\n\0\0\0\0\0\0\0\0\0\0\n\0\0\0\n\0 \n\0\0\n\0\0\0	©\0Ðûûûÿÿßùÿûÿÿÿ¿ÿÿ¿ÿÿß¿¿ÛÿÛëùúÛËÙ		\0	­\0	\0\0\0	\0		\0\0 	\0\n\0\0	\0\n\n\0 \0 \n\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0 	 
\0\0

¿¿ÿ¿ý¿¿ÿ¿¿ÿ¿ÿ¿ýÿ¿ûÿ¿½ï½¿½°©\0\0°ð\0\0\0\0\0\0\0\0\n\0		\n\0\0©\0	\n\0\0\0\0\0\0\0\0 \0\0\0\0\0\0«\0\0\0\0\0\n°\0\n\0\0\0	©\0	ëûëûÿþûûßûÿß¿ýÿûÿ¿ÿûûÿ½ûûûûëÛûË\n­­©	°	\0\0\0\0\0\0\0\0\0	
\0\n\0 \0°\0\0\0\0 \n\0 \0\0\0\0\0\0\0\0\0\0\0\n\0\n\0\0\0\0°\0\0
\0ùûß¿½¼ÿÿ¿ûûÛûûÿßý¿¿ÿùÿ¿ýÿùùúùù©	\0\0
	\0\0\0\0\0\0	\0\0\0
\0\0\0\n\0\0©\0\n\0\0\0\0\0\0\0\0\0\0\n\0\0\0ª\0\0\0\0\0\n\0\n	©\0\0\0	ðûÿ½ûÿûûý¿ÿÿÿÿÿ¿¿ÿý¿¿ûý¿½¿¿¿° \0	
Ê\0\0\0\0\0\0\0	\0
\0	 \0\0 °\0		\0\n\0\n\0 \0\0\0\0\0\0\0\0	\0\0\0  \0 \0\0\0©\0°	­ûûùÿ¿¿½¿ûÿÛûûùûÿûûûùÿ¿ûÿûùëí¿\n	\0	\0\0\0\0\0\0\0\0\0\0\0\0©\0	\0\0\0	 \0\0 	\0\0 \0\0\0\0\0\0\0\0\0\n\0\n\0\0\0\n\0\0 \0©\0\0Û­½¿ëýûÿý¿ÿ¿ýÿÿýûýÿÿÿûý¿½¹


	\0©	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0©	
\0\n\0\0	\0\0\0\0\0 \0\0 \0\0\0\0\0\n\0\0\0 \0\0\n\0\0\0\0
		\0Ûÿ½¿½ûûýûÿûùûûÿûûß¿¿ûûû\0¹\0\0	\0	\0	\0\0\0\0	\0\0\0\0\0\0\0 \0\0\0	 \0 \0\0\n\0 \n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0°\n\0\0\0 ©½¹­Ûûÿ½¿ÿ¿¿ÿÿÿùÿÿûßý¿ýð\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0  \0\0°\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0 \0\n\n\0\0\0\0\0	é©ÀË		©
ýûÿÿÛÿÿÛûûÛÿûÿ¿ûûÿ	
\0\0			
\nð\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0  \0\0\0\0\0\0 \n\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0	\0\0\0\0¹É©\0¹¿¿½¿¿¿ÿ¿¿ýÿÿûÿûý¿ÿù°°	\0\0\0	\0	\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0	\0\0\0	\0\0\0\0 \0\0\0\0\0 \0\0\0\0\0\0\0\0 \0  \0\0\0\0\nº©é
ß½ÿùÿûùÿÿûûÿ¿ÿ½ûÿ¹		
\0	\0\r©\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\n\0\0\0	 \0\0\n\n\0\0\0\0\0\0\0\0\n\0\0\0\0\0\n\0\n\0\0 
			\nÛûû¿¯¿ÿ¹û¿ÿûßùÿ¿ú°¹¹			\0\0¹©\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0°¿		©©
¿Éù¹
ß¿û¿ûûÙ\0	\0
\r \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0 \0 \0\0\0 °		

Ð»Ð¹û		¹	©»Ûÿ¿ÿ½¼¹©©©	°©
\0©\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0 \0	\n\0º\0	\r
¼¿	°ÿÿûÿÛÿ»Û¹\0Ð°	¼¾\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0 \0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0¹			©	\0»Ù¹¹			ÿ¿¿¿ù½°ð°			©°	 	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0°\0\0\0\0\0\0\n\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0
\0\0\0\0
		Ù¯¿°ð°»ûÿùÿ¿ûÛúû	ð¾à°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0 \n\0

	\0
	
­¯	¹	½û¿ùÿ¯¹«Ë©
Ëù

	
			\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0	\n\0				©	ûÛ¹ð°¿¿ß¿ûûù©°½Ù¹¹»	©	Û\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0©\0\0\0°½°ù¯¹ùûûß½¿	©
Ë\0\0
\0°
\0\0
	\0	©\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0	\0			\0	ÚÙ­½ÿûûùð°	¿¹\0\0
	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0	\0\n\0\0\0\0\0\n\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0©\0\0\n°		©©©¿¿¿¿ÛÚ©			
	¹é\0\0
\0\0	\0
\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\n\0\0\0\0\n\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0	\0	\0¹Ð°		°¹
ùùÿ¿ù°				©\0	\0\0\0\0	\0\0°Ù\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\n\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0	°\0\0°\0\0¹¯¹»ùû
	\0\0\0\0ú	\0\0			\0		\0\0\nÚ\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0°\0	\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\n\0\0°\0
\0	
\0
	
\0Ù«ûÏ¹ù\0	¹	\0	
\0\0\0°\0\0\0		\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\n Ú¹é\0\0	\0\0\0	


	¹©	\0	\0\0\0	°°\0°©\0\0\0	\0

À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0©\nÙ©	\0	©	\0\0\0\0	\0Ðú\0\0	©\0°ùù	\0
\0\0\0\0°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\n½\0\0	\0\0\0\0\0		\0		\0Û	\0\0	\0\0	
\0\0	\0	\0	 

\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0«


\0\0\0\0\0\0\0\0\0	©°\0\0\0\0	\0\0°	\0\0\n	\0\0\0\0Ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\n\0\n\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0	\0°		\0\0\0\0\0\0\0\0	©	\0\0	\0\0°\0©\0\0	\0\0\0\0°© \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\n\0©		©\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0©
\0\0\0\0\0\0\0	\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0
\0¬°	\0\0\0\0\0\0\0\0\0\0\0\0		\0\0\0\0		\0	©\0\0\0\0
¹	\0\0\0 	 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 	\0\0°	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
	\0\0\0\0\0	©À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0 
\0 \0\0\0\0\0			\0\0\0\0			\0\0\0\0\0\0ð\0\0\0\0\0\0	©\0\0	©\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0 \0		\0\0\0\0	\0\0\0\0\0\0\0\0\0	\0\0\0
	\0\0\0\0\0\0	¿\0\0\0\0°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\n\0\n	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¼\0\0\0\0\0\0\0»À\0\0	\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¹ 
Û	\0\0\0\0\0»Ð	\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \n\0		\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¹ \0\0\0	¼\0\0\0	 \0\0¾\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0©\n\0\0© \0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0Û\n\0
éù©é©\0\0¾\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\nÐ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	©\0Éû\n\0\0
	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0 \n\0\n\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
\0\0\0¹\0\0\0		\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 	©\0		\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0¿	\0\0	©\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\n\0\0 \0\0©\0\0\0\0\0\0\0\0\0\0\0\0\0		\0\0°\0	
ð\0©\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0	\0¼\0\0\0\0\0\0\0\0\0\0\0\0\0\0	©
É	\0\0\0	
	\n\0
		\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\n\0 \0
		\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	à­ \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\n\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0	\0	\0\0\0°\0\0\0
		\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0 \0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
\0\0°\0©©\0	\0°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\n\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	°°	\0	é\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0		\0\0	\0\0\0\0\0\0\0\0\0\0\0°\0\0\0\0
\0Ú				\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0	\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0	\0\0		© 	 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0	\0\0	\0°	\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\n\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
\0\0\0	\0\0
		\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0	\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0 \0\0\0 \0\0\0\0 ©
	©\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0	½©\0	\0\0°ëÐ\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0			\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0
\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\n\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0	\0\0\0\0\n		© °\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0 \0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
\0\0	\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	©\0	\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	 \0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \n\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0	\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0© \0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0©\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0©\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0 \0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿ\0\0\0\0\0\0H­þ','Margaret is kok.  Ze werkt tijdelijk van juli tot en met november 1996.'),(5,'Van den Bosche','Steven','Kerkstraat 54','Steenokkerzeel','1820','016 65 45 44','Manager Verkoop',3750,'2','35',1,'1992-09-13 00:00:00.000000','1955-03-04 00:00:00.000000','1',_binary '\'\0\0\0\0\0 \0\0 \0×
OLE2A9AEA20\0PBrush\0\0\0\0\0\0 \0\0\0PBrush\0\0\0\0\0\0\0\00 0 191 222\0@T\0\0BMT\0\0\0\0\0\0v\0\0\0(\0\0\0À\0\0\0ß\0\0\0\0\0\0\0\0\0 S\0\0Ä\0\0Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÀÀÀ\0\0\0ÿ\0\0ÿ\0\0\0ÿÿ\0ÿ\0\0\0ÿ\0ÿ\0ÿÿ\0\0ÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¿ÿÿ	\0ù\0	°\0\0\0\0\0ÿÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿûÐ				°				\0	\0	ÿÿÿÿÿ°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	ÿÿù\0		\0\0\0\0\0\0ÿÿÿÿÿù\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0ÿÿú°\0ù					\0	\0ÿÿÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿù				\0\0\0\0\0\0\0	ÿÿÿÿÿ¼\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿð	¼°¹							\0ÿÿÿÿÿû\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0	ÿÿ°	\0\0\0\0\0\0\0\0	\0ÿÿÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¿ÿý			\0\0		ÿÿÿÿÿÿð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0Ð	\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿû	\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿÿÿù\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0	\0	\0\0\0\0\0\0\0\0\0\0\0\0\0À
\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	ÿÿ		\0	\0		\0	ÿÿÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0À\0À\0\0\0\0\0	\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÙ\0	\0\0\0\0\0\0\0\0ÿÿÿÿÿÿ°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ¿		\0						\0			ÿÿÿÿÿÿü\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0	\0\0©À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
ÿÿ	\0	\0\0\0\0\0\0\0\0\0ÿÿÿÿÿÿû\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\n\0\0	À\0\0\0	\0\0\0\0\0\0\0\0\0	\0\0\0\0\rÿÿ°	\0			\0\0	\0			ÿÿÿÿÿÿÿð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0À\0\0\0\0Ð  \0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿù	\0\0\0\0	°\0\0\0ÿÿÿÿÿÿÿû\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0	\0\0\0\0	À	\0\0	\0\0°©	\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿ				\0	\0		\0		ßÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	 \0\0\0À \0Ê\0	\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿ\0\0\0\0		\0\0ÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0	\0\0\0		\0	é	\0ÐÐÚ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿù				\0\0
\0	­\0ÿÿÿÿÿÿÿû\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\n\r\0\0\0\0\n\0 \0	Ê\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿû	\0\0	\0	\0	\0\0ÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0ÀÉÉ©\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿù	\0\0\0\0	\0°		ÿÿÿÿÿÿÿÿ¼\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0	\0\0\0	À°\0\0\0	\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿð	\0\0			\0\0\0¿ÿÿÿÿÿÿÿù\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0É\nÀ\nÀ\0ðÚ	é\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	¿	\0\0\0	\0ßÿÿÿÿÿÿÿûð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0		\0\0\0\0\0°\0
À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¹ÿù	\0\0\0\0\0	\0¿ÿÿÿÿÿÿÿÿ°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0À\0\0\0\0\0À \r©À\0Ð
\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
ÿÿÿ			\0\0\0\0\0ÿÿÿÿÿÿÿÿý°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0ð	é\n°\0\n°\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ¿ÿÿ\0	\0\0\0\0	\0	
ÿÿÿÿÿÿÿÿûð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0	 	À\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿû	\0\0\0\0\0\0	\rÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0À\0°ÀÐ\0\0\nÐ	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿù	\0\0	\0\0\0\0\0ÿÿÿÿÿÿÿÿÿ¿\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0	\0\0\n\0\0À\nÐ \0©\0\0
	
\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	ÿÿÿÿ°		\0\0\0\0\0\0		ÿÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0Ð¼\0 	­\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿ¿ù\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿ¿\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0°\0\0	\0\0
	¬
\0\0 à	\n\nÐ\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿ\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
\0\0\0À\0\0À\0\nÐÉ\0Ú	\r	é\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿûÿÿù\0\0\0\0\0\0\0\0	ÿÿÿÿÿÿÿÿ¿ÿÿð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0
	 ÐÉ \r\n	©
©ú\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿû			\0\0\0\0\0ÿÿÿÿÿÿûÿÿÿûÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0
À\0\0 \n°	ù©ùë\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿ\0\0	\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0	\0\0\0Ð\n
\0¼©°°¼¾¹í¿\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿù		\0\0\0\0\0	ÿÿÿÿÿÿ¿ûÿ¿ÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	 \0¬	\0\0\0Ð À\n	É¯ûÛßûÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿÿ\0\0\0\0\0\0\0ÿÿ¿ÿ¿ÿÿßÿ¿ûÿ°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0	¬ °	\0\0ºúùù¿ÿ¿¿¿\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿð	\0\0\0\0\0ÿÿÿ½ÿ¿¿ûÿÿÿûð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¬\0À¼ºûß¿ÿûûÿÿÿ\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ùÿÿÿû	\0	\0\0\0\0\0ÿûÛúßúÿûÿ½¿ÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0		\0\r\0	©\0©½ùûûÿûÿ¿ÿÿûÿ\0\0\0\0	\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0	ÿûß°\0\0\0\0\0\0\0\n\r¿½ÿÿûÿÿûÐ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	
\0\0\0\0	 °Àÿ¿¿ÿûÿÿÿ¿ûÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿù\0	\0\0\0\0\0\0\0Ûðûûÿÿÿ­¿ë\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0	¬	À\0é\0	ûûûÿÿ¿¿ûÿ¿ÿÿÿÿ\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿûß	\0\0\0\0\0\0\0\0\0\0°ÿûÛùÿ½¿\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0ûÿÿÿûÿÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0	\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0	ÿÿù°\0\0\0\0\0\0\0		ù¯¿ÿ¿ûûÞ¼°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0	\0	\0	­¬\0¿¿ûûÿÿÿ¿ÿÿÿÿÿÿ½¹°\0\0\0	\0\0\0	\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿûé\0\0\0\0\0\0\0\0\0\0\0\0ðß¿þ¼»\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n	\0\0\0\0
ÿÿÿÿûÿÿÿÿÿÿûù©é¾ð\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ßÿÛÐ	\0\0\0\0\0\0\0\0	û\0ÿûß¼ú\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\nÉ¬\0	ÿûÿ¿ÿÿûÿÿûû
ùù\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	¿ÿ»		\0\0\0\0\0\0\0\0\0¿ù\0ÿùû¹¼¼\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0	ÿûÿÿÿ¿ÿÿûù¬°ùé¹ù¯ÿ\0\0\0\0\0	\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿý	\0	\0\0	\0\0\0\0ÿÿý©\0­ûË\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\n\0\0¿¿ÿÿÿÿÿú­Û°ùéû\0\0\0\0\0	\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	ûð\0\0\0\0\0\0\0\0	ÿÿ»ÿ	\0©ù¹éË\0\0\0\0\0\0\0\0\0\0\0\0	\0\0	À\0\0ÿÿÿûûÚÐÊ©­©ëÛù½ºÛ\0©\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	ÿû\0\0		\0\0\0\0\0¿ûÿùû	\0°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0À¯ÿÿ½©°ð¹¾
­¹ûÐ\0\0\0\0	\0\0\0	\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ°\0\0\0\0\0\0\0ÿÿ¿ý¾¿\0\0½©ÿ°\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0©
	é	àé
Ïé°½ùû°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿù\0\0	\0\0\0\0
ûûßù½©ù\0\0½©
é \0\0\0\0\0\0\0\0\0\0\0\0\0\0	À \0	 ðÚ¹¿ËÚ°¼½ûËë\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿ°\0\0\0\0\0ÿÿúÿÚ°ù\0\0½¿Ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0
	\0

	©ËÚÚðð¼¿
Ûù¾»½û\0\0\0\0	\0\0	\0\0\0\0\0	\0\0	\0\0\0\0\0\0\0\0\0\0ÿû\0\0\0\0\0\0ûý¾¯Ë\r©ù\0\0ð½»\0\0\0\0\0\0\0\0\0\0\0\0ÀÚ©
		\0­
É¹©¹
éÛð½¾é¼ÿÿ¿°\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
ÿÿ¹\0\0\0\0\0ÿúùðÚÐ¿¼°¼	úÞ°\0\0\0\0\0\0\0\0\0\0\0\0\0 \n­
ËË­°ðùàûÛÛ¯¿©úË¹ûÿ\0\0\0	\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿ\0Ú°ûÛ©©	©		½ù \0	ûÞ\0\0\0\0\0\0\0\0\0\0\0\0\n¹«Ë©°°ÊÛË­°½°¼ºÙ½­½½¿¿\0
ûÿ\0\0\0\n\0\0\0\0À\0\0\0\0À\0	\0\0\0\0\0\0\0\0\0ÿÿÿû°ÿ¿ÿÿý­	Ë
É©ÚÛ¹\0	û°\0\0\0\0\0\0\0\0\0\0\0

\n\r½½­Ù¯ù­ù½»ëËëðù¿¿ÿûÿ\0\0\0	\0 \n\0\0\0\n\0 	\0\0	\0\0\0\0\0\0\0\0ÿÿÿÿÿëË		© Ð\0Ð©­©Ú½\0ÿ\0\0\0\0\0\0\0\0\0\0\0° »­«
ð¹¯ùùºÚ¼ùï¿ËÚûÿ¿¿û	\0\0\0\0É\r	\0\0\0\0\0	\0	\0\0	\0\0\0\0\0\0ÿÿÿË	\0		
\0	
ùË	\0\0\0\0\0\0\0\0\0\0\0©©°úÛ½¿
Úðù©ï
ëÛéûÛù¼½¿»ûÿÿ\0\0\0\r
\0\0\0	\r	©\0À\0\0\0\0\0\0\0\0\0	\0\0ÿÿûùé©	\0\0
\n\r©\0ð¼¹ûð	û\0\0\0\0\0\0\0\0\0
	«
­»ËÉ½­½½«°úþÛúùí¿ÿÿ°\n\n\0 
Ë\0\0À©	\0\n\0	\0\0\0\0\0\0\0ÿÿÿ			\0\0\0\0\0	ËÙ¼¾\0ð\0\0\0\0\0\0\0\0 º°ÛÐûûëÛ¯ÛéëëËýéûùù¿¿
Ûû¿¿ð\0\0\0\0\0\0\0
»Ë	À\0\0\0À	\0	\0\0\0\0\0\0	ÿÿðð	\0\0\0\0\0\0\0\0\0	\0	©É°é¹ûï	\0\0\0\0\0\0\0		©«¿¿¯½°ùéù«Û½½»Ë»ËÛËý­¿¿
ÿÿ\n\0 \0\0 \n\0
ÿÿûÿ¿¿û­«\0	\0\0\0\0À
\0\0\0\0ÿÿË\0\0\0\0\0\0\0\0\0\0\0
ËÏ
Û¿©ð\0\0\0\0\0\0\0ª°°ùË»û­½«ËÚý¹ü½«ûË¿½¼¿ûù\0 \0\n\0\0\0\0\0¿ûÿÿÿÿÿ¿ÿ¹ÿ°\n½¯©©\0\n\n
\0¿ÿ¹\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ú½ÿ\r\0\0\0\0\0\0
©¿¾¿ûûûßÛ¯½¿¿þ»ûý½¿ÛÚûùÿð \0\0\n\0 \0\0¿¿ÿÿ¿ÿ¿ûÿûÿû
¹° °	\0\0\0ÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	©ËëËûÿ°\0\0\0\0\0\0º«ÚÛÛ»û¿ÛÚùéûÛ
úù¯¿ÿ°\0\0\n\0\0\0\0 
ûÿÿÿÿ¿ÿ¿ÿ¿°û\n°«\0\0\n\n	\0¿ù\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¹»ðÿ¿\0\0\0\0\0°°ùë¿¿ûûûÞÚ¿¿¿­ûÿ¯¿ùûÿ¿¯û\0\0\0°\0\n\n\0\0ûÿûÿÿÿûÿûÿÛ¿°	 ¿û  \0°\0ï\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0úþûß©\0\0\0\0
¾½ùé½½ùû¿¿ÚÛëùÿ»Ë½½¯½¹ûÏÿ\0\n\0\0\n\0\0\0°¿ÿÿÿ¿ÿÿÿ¿û¾ÛÛº\0ð¿\n	
\0°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ùû½ûÿ\0\0\0\0¬°¿¯ûï¿¯¿ðù¿ûßëù­ûß¿½¾¿ûûûû\0\0\n\0\0\0\0
ð\0ÿ¿ÿ¿ÿÿûÿ¿ý¹¿	¹ ¹ëù\n\0 \n\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
ÿÿ¿ùû\0\0\0		­«ûÛûÛÿí¿úÿûÿ¿úÿ½¼½¿ð\0\0\0\0\0\0\0û\n»ÿÿ¿ÿÿ°
ÿûü»ºð\n\0\n¹¿ \0©	\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0ûÿÿ¿¿°\0\0Ûý¼¿ûÛûûûûÛúûûûÛÿ¿ÿ¾½¯ð°\0\0\0 \0
\0¿ÿÿÿù\0¿ÿ¿Û½½ \0ûù 
\0\0\0\0\0\0	\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0ûÿÿÿð\0	é°ûûûÿ¿ûÿ¿ÿ¿þ½¾¾ÿ¿û¹ûÿ¿ð\0\0\n\0\0\0û
°°ÿÿ°\0\0ÿùÿ«Û\n	¿©ë©°
°»	\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿ¿\0\0ÿ¿½ûß¿Ûÿûûûý»ÿ¿ûÿ»ÿÿ¿ý½¿\n\0\0\0\0\0°\n\0¿°\0\0\0\0û¾¹½°°
»
ù©¹\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	
©ÿÿÿ\0
­úß¿¿ûûÿ¿ÿûýûý¿ÛßÛûûß»ûû	\0\0 \0
¯°\0
\0\0\0\0\0
ßý¼¹©\0\0\0
ûûûû¯»\0\0\0\0\0\0\0\0\0\0	\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	»ÿÿð°Ð»ïÛûß¿¿ß»ûÿ»ÿ¿¿½»û¿¿¿¿Ûûßûÿ  \0
ÿ½© \0\0\0\0\0\0\0¿ë
¹¹\0\0\0\0\0¹ûÙ°\0\0	\0				\0\0\0\0		\0\0\0\0\0\0\0\0\0\0\0\0\0	©ýÿÿûÉ°¿Û¿ûÿ½ûûÿßûßûßûûÿÿÿûÿÿ¿ûÿ¿Û
\0\0 û©°º	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ºûéé»©\0\0\0\0	\0\0\0\0		\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\r»ÿðÀý¿ÿûÿ¿ÿ¿¿¿ÿ¿¿½ÿùûÛùûÛÿ½ûÿ¿\0\0
°
©\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	
»°\0\0	\0	©	\0	\0\0	\0	\0\0\0\0\0\0\0\0\0\0\0
ÿù¾ûûûÿ¿ûÿûÿÿÿûÿÿÿ¿¿¿¿¿ÿ¿Ûÿ¿Ûÿ \0\0°\0¾ \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	©\0\0\0\0\0\0	\0		\0	 \0\0\0\0\0\0\0\0\0\0\0\0\0\0	Ù ¿ùéÿ¿ÿûÿÿÿ¿ÿ¿¿¿ûûûûÿÿÿÿûÿ¿¿¿¿û
\0
\0»¹°°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0			 \0	\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0	«ùð°¿¿ÿÿ¿ÿ¿ûÿûÿÿÿ¿ÿÿÿÿ¿¿¿¿ûÿÿÿûÿ°\0°»\0\n
«\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0				©°	\0				\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÐÿÉÿûûûÿûÿ¿ûÿûûÿÿûûûûÿÿÿÿ¿ÿ¿¿¿¿\0
\0\0\n¹ÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0¿
ûÿÿÿÿÿÿÿÿÿÿÿûÿ¿ÿÿÿûûûûÿ¿ÿÿÿÿ©\0\0\0	
ûð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\n\0\0\0\0\0\0\0	\0¹¹¹		\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¹©ðÿûÿÿÿ¿ÿûÿûÿûÿÿÿûÿ¿ÿÿÿÿÿÿ¿¿¿¿\0 \n»ÿûÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0	\0\0\0\0			\0\0\0\0	\0\0\0		\0
	ûÿÿÿûÿÿ¿ÿûÿûÿÿûÿÿÿÿ¿ÿ¿ÿ¿¿ÿÿÿÿ\0¹¿û¿û\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\n\0\0\0\0
			©\0°	\0\0\0\0\0		\0\0\0\0\0\0ÿûÿÿÿÿÿÿÿÿÿÿÿûÿÿ¿ûÿÿÿÿ¿ÿÿûÿ¿ÿ»ð¿¿¿ÿ°\0\0\0\0\0\0\0\0\0\0\0\0°\0\0\n\0  \0\0\0\0		
\0\0¹°°		
©\0	\0\0\0		\0		\0\0	¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿûÿÿÿÿÿÿÿ¿¿ÛûÛû\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \n\0	\0¹\0		
©¿\0\0	©	\0	\0\0\0\0\0	\0	«\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿ¿ûÿÿ¿¿¿¿»ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ð»	\0½¹	

\0		\0\0\0\0		\0	\0	\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûûûûÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 
\0
	 ùÛ¿¹Ð				\0\0\0\0			\0\0\0	
\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ½¿ûÛù\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	 		ë¹		°ÿ»ú\r½¹¹	\0		\0\0\0	©\0\0\0\0\0	ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿¿¿¿°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¿¹	¹¹½»				\0	\0\0\0\0		\0	\0	\0\0	\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿû¿\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 ©\0¹ÙëÚ»ûÙ		\0\0\0		\0		\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿¹
ù\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	
»¹		
\0\0\0\0\0\0\0\0\0\0\0\0		\0	\0°\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûûÿ\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0û	
	\0	\0\0\0\0	\0	\0\0\0\0		\0			\0°\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿¿°\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0¹û¿\0\0\0
		\0\0\0\0\0\0	 		\0				\0\0\0\0¯ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0°¹			\0	\0	\0\0\0\0\0	\0	\0\0\0	\0	°\0	\0\0\0\0Ùÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ»ð\0\0\0\0\0\0\0\0\0\0\0°\0\0\0\0\0\0\0\0\0\0
\0\0\0»ùùû\0\0			©\0				\0\0		\0	©\0\0\0°\0\0\0\nÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0°°\0\0\0\0\0\0\0\0\0\0\0\0	½¹
\0	°\0\0\0		©
		\0			\0\0\0\0	ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð\0\0\0\0\0\0\0\0\0\0\0
\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Û»Û

\0\0	\0	ù
\0\0¹°°	\0	\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ°\0\0\0\0\0\0\0\0\0\0\0°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	º¿¹«
		\0		\0\0	
°Ú			\0	\0		©	\0¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ùÛ©¿	¹¹\0\0\0\0
°			
	©½½	ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿÿÿÿÿÿÿÿð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0°»¹¼¹©¾»
	\0	\0\0\0\0¹
\r°Û				 	\0	
ßû\0¿ÿÿÿÿ¿¿ÿÿÿÿÿÿÿÿÿÿÿ¿ÿÿ¿ûÿÿÿ°\0\0\0\0\0\0\0\0\0\0\0\0»\0\0\0\0\0\0\0\0\0\0\0\0\0\0	¿¹ÛÛù\0\0\0\0½¹©	
\nÛ	¹¹ÿ\0ÿÿÿÿ¿ðÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0ù»¼°°»»°°		\0\0\0¹
	
°\0°ð¼¹°ùÿûÿ¯ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿû¿ÿ°\0\0\0\0\0\0\0\0\0\0\0
Ð¿\0\0\0\0\0\0\0\0\0\0\0\0\0	¹­	¹ùûÙ	\0\0\0\0\0	\0»ù	

			

ÛÐ¿¿¿ú¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿÿð\0\0\0\0\0\0\0\0\0
»\0\0\0\0\0\0\0\0\0\0\n\0\0°\0ûù«	»¹°\0	\0	\0		©Ù
Ë		©©	
ðÿùéðÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ°\0\0\0\0\0\0\0\0\0©©\0\0
\0\0\0\0\0\0\nð	\0\0\0\0
¹½
		©©
		
½¹
ð°		ûÿ¾°¯¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÛúÛ©¹ûû
¹\0é¹©ù
©½	¹	ë
\0°©¿ÿ	ûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
úÚ\0\0\0\0
¿»Ù¼	¹½¿¹ù»½©¹¹ûÛ	©	ûÛÛÐûð					û\0ºÿ¿ÿÿ¿ÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¯¹°°\0\0\0ù¿½¿¹°	ûûß»ûÛ	
¹°©¿¹¹¹ùÛ

	\0
\0	Úû»ÿ¿ÛËý¯ûÛÿ¿¿¹ý«ÿ¿
\0\n\0\0\0\0\0\0
\0° \0\0\0\0\0\0\0\0\0½¯«ÿ\0\0\0
ûùù¹½¹ð½¿»½½»Û¿	¹Û¿¿¿°ù¼½½\0\0		°¼ûÞûù¿¹û½½¿½¿»½ù½¿¹°\0\0\0\0\0\0\0\0»\0\0\0\0\0\0\0\0\0\0\0û¹ð¿°\0	½»ûÛû¹°Ûÿ½ÿûùûùù»©¹½»ùûù¹ù½	\0		©
ûºû
ÛÛùûÛû½°ûéûúÛÛûÚ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿúúù©

ÿ¿¹û½ùù¹ûÿ¿¿û»Û	ù	ûùûûÛÿ»½½¼¹ð°	
	\0½¼½½½¿©¿¼»Û»½¹½¯½½»Û
\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
û¹ð¹úûûßû½¿ûß»ûûûÿß»ÛÚÛù¿¿¹»ÛÛÚ			
	»ùÛðùù½¼¹ùù¹»ÛûÛ½°°°°\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0¯ºúùÿÿ¹»ÿÿ¿ûÿÛûùûÿÿ¿»ù¹©¹Ù©½½¿¿ûÛÛý°¹¹½½½©\0
\0\0ùðû	»¹¹¿
¼½­©¼½©ûÛ	

\0\0\0\0\0\0\0\0\0\0\0\0 \0	«¿¿û½©ú¿ûÛýû»ÿ¿ùûûý¿½ûûÿÿÛé»ÛË»ù½½¿¿ÛËÛ

\0		\0	
		¹¹û¼©ðÙ¹¹»Û©Ù°½»\0\0\0\0\0\0\0
\0\0\0\0\n\0ºÿûË¿°úûÿÿ¹û¿ßûÿ¿½¿¿¿¿½ÿûû¿ðÛßûûû¿½»\0\0\0			Ë\r°	¹	ú	¹©

ÐÚÚë

­ \0\0\0\0\0\0\0\0\0\0\0\0\n\0\0»ÿû
û¹ÿû¿ÿ¿½ûûûûÛûùû¿ÿÿù	¹é¿»¿½¿ûÛ¹ùéù¹©\0	\0¹	°¼	¼½¹¹
ù¹
É°°û\0\0\0\0\0\0\0\0\0\0\0\0\0\0 °\0û¿¿\n¿¹ûùûûÿ¿ÿÿ½¿½ûûÿ¿¿­ù»ÛÛù¿¿
ËÙ\0\0			©¼É½­­¹é	Ð°°°ù	°°
ù«»\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
ÿ¾¿ùÿ¹ûÿûÿ¿¿û»ùûÿý¿°°¹½½©ðé»ù»ù¯½¹°\0	\0			Û


	
\rËÉÚÐ°»ðÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
ù©¿¿ð¿ûÿ¿ûûÛÿ»ÿ½ûÿÿ¿¹ù	¹ù°	ùð	\0\0\0		°\0				\0	\0	\n ©\0©©É

¼»\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\nûÿ°»û\0»ù¿ûý¿ûûÛÿÛû¿¿¿û½°¹­Ë		
			©¹ù¿ûË\0\0	\0°\0\0		\0	 °\0
°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	ú¿¿Ú\0¿ÿ¿¿ûÿ»Ë¿ùùÿÿÛ	°¹Ù¹é¹ \0\0\0				°\0	\0\0\0\0\0\0	\0\0\0\0
ËÉ­	¼	É\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n¹\0\0¯¿°ûËÿ»ÿû¿û¹Ûÿ»ûÿû¿	¹			©©¼¹úù	\0\0\0								\0\0	\0\0	ð\0°\0\0°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿû¿¹©»»ùÿù¿ÿ¿
	©¿»ÿÛ¹	¹Û
				
	\0\0\0\0\0\0\0\0\0\0	\0	\0		\0\nÛÚÛ¬
à\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ¿û

½	ÿ¿¿ÿ¹ð°	ùûÿÿ¿¹		\0©	ð¹\0°°\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0	\0\0	½°­°Ù°¼\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¯¿¿ð\n»û	ûùû»¹©	
¿ûÿ	\0\0\0\0\0		Ûù°\0\0\0\0\0	
û	\0\0\0 \0		\0\0\0\0\0
ËËÛ«éé¾\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ûÿðùðù	ÿ¿ûßû»	
ùûÿûð\0\0	\n\0\0\0\0\0\0©
	\0\0\0\0\0\0\0©
É\r©\0É\0\0\0\0\0ºÛ¹é\0\0\0\0\0\0\0\0\0\0\0\0
\0\0\0\0\0
ÿ°\n

û»Û¹úû©°¿ÿ¿\0\0\0\0\0\0	\0ùð\0\0\0\0\0\0\0\0\0ð\0\0\0\0ûÛ\r»Ëë¹\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\n
Ê\0ûû	\0°¿¹
ÿûù¹¿¹û		\0¹¿ÿ½	\0\0\0\0\0\0\0	\0		 \0\0\0\0\0\0\0\0\0	¯	­­\r­	éÀ©\0\0\0
úÚðûé\0\0\0\0\0\n\0\0\0\0\0\0\0	\0\0	°¹ë\0\0
	\0¹¿	\0\0\0\0¿ÿ¿\0	\0\0\0\0\0		ÛÛ	\0\0\0\0\0\0\0\0\0\0	
É

	«

Ð©\0\0	½»Êùë\0\0\0\0\0\0\0\0\0\0\0\0
\0\0\0\0 ú«	 \0\0º»
ùû\0\0\0\0\0		
ûß	\0\0					\0©­	\0\0\0\0\0\0\0\0\0\0¼°ð¼ð\n\0	\0ð°¼¼¼¿½\0\0\0\0\0\0\0\0\0\0\0°°°°\0\0
ù«\0\0		¿\0
ùð\0\0\0\0\0	\0¿»©\0\0\0\0	¼½¹°\0\0\0\0\0\0\0\0\0\0\0



Ë©
Ë	ù\0\0\0	
ËÛÛ©¹éË\0\0\0\0\0\0©\0\0\0\0\0

À\0\0\0¼º
\n\0\0ù\0
ÿ
½\0\0\0

ùý	\0\0\0\0	\0\0»	\0\0\0\0\0\0\0\0\0\0\0\0°ð°¯\0é\0\0\0½¿ÚÛð½»\0\0 \0\0\0\0\0\0\0\0\0\0
\0\0\0
½¹úº\0\n
°\0	ù©ù\0©°\0\0		\0			­©ËðÛ	\0\0\0\0\0\0\0\0\0\0\0\0°º¾
\0			é­»Ú¼©	\0\0\0	\0\0\0\0\0\0\0\0
\0\0\0\0
ê
Ùª\0\0\0\0	û©¹	\0\0		\0	\0\0\0½»	°\0\0\0\0\0\0\0\0\0\0\0\r­\r
		é­¼\0\0\0\0»Ûðð¹©Û\0\n\0\0\0\0 \0\0\0\0\0\0\0\0
\0\0\0\0¹¿ù\0¿\0\0\0¹û¹
		\0©		©	\0\0\0		é
Ú¹ûÛ\0\0\0\0\0\0\0\0\0\0\0\0
	©­
Ë\0\0°\0	
©½«\0\0\n\0\0\0
\0\0\0\0\0\0\0°\0\0\0
\0	«	ª\0\0\0\0\0¿½\r¹\0	\0		¹¹½©¹°¿»©¿©		\0\0\0\0\0\0\0\0\0\0\0\0\0Ë\0­©­¼\0\0\0\0Ú½¿

Ú½\0\0	\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\n°\0\n\0¹\0
\0\0\0ûÛ»\r			\0\0¹
©			
	¼»ùùùùé\0\0\0\0\0\0\0\0\0\0\0\0	é	ËÚ\0°É\0		­»Ú¼¿
Ú\n\0° \0\0\0\0\0\0\0\0\0\0\0°\0\0©\0\0	\n\0

°\0\0\0½¿°	°½©¹¿¹Ûù¿¿¹	\0\0\0\0\0\0\0\0\0\0\0\0\0\0ù©àð°À°\0\0\0	­©ù°ð½©\0
\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n	\0\0¿\0\0\0\0ûûûù»\r¿½¹¹¹ù©ðûÛ°ùû¿¹¿¹°\0\0\0\0\0\0\0\0\0\0\0\0\0É

°©\0\0\0ÛËËÚ\0
\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
°°\0\0\0¿ûÛùùùÛ¹ùû½¹ù¹¹Ù¿ÛÛðÙ	\0\0\0\0\0\0\0\0\0\0\0\0\0\0¼°ð
°\0\0		°ù¼½¹©ð\0 °\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0°\n¼»
\0\0\0Ûÿ¿¿¿»ÿ¿¿¹ûû»Û¿¹ûÛûù¿¿û½¹ð°\0\0\0\0\0\0\0\0\0\0\0\0\0\0° °¼	\0\0\0
Ï
Ë\0
	 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0©
°\n\0\0\0\0¿ûûûý¿½¹¹ûÛ¿¿¹¹½¿ÛÛÛ½©	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n
É\r
\0°\0\0¹¼¹éùð»\0©	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
\n\0 \0©\0\0\0\0ÿ¿¿ÿûý¿ûÿ¿¿ûÛûÿ¿»Ûûûù¿¿¿¿»Û°\0\0\0\0\0\0\0\0\0\0\0\0\0\0É	°°¬
\0\0
Ë¼½©¯	\0º\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0   	«\0\0\0\0\0\r¹ùÿ¿ûû¿Û½¿¿¿¿ûÿù¿¿¹ûÿùùý°¿
\0\0\0\0\0\0\0\0\0\0\0\0\0\0
ÚË
¼\0\0\0¼¹ËÙ
 
É°°\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0 \0\0\0\0\0
¿¿ûûý¿½ÿ¿ÿûÛÿÿ¿¿¿ý¿¿¿ûûÿûûû¿¹	\0\0\0\0\0\0\0\0\0\0\0\0\0	À°Éé \0
\0\0\0	éð¿¿ »\0\n\0¿¿»¯\0\0\0\0\0\0\0\0 
\n
	 º°\0\0\0\0
Ûÿ¿ÿûÿû¿¿¿¿ÿûûÿÿûûùÿ½½»ù¹ùù©©	\0\0\0\0\0\0\0\0\0\0\0\0

ð\0\0	\0¹©ðÛ
ËÐ\n\0\0\0
\nÿùð\0\0\0\0\0\0\n	 \0° ©©\0\0\0\0\0	½û¿¿¿¿ÿÿÿÿ¿¿ÿÿ¿¿ÿûûÿ¿¿¿ÿûÿ¿©\0\0\0\0\0\0\0\0\0\0\0\0\0É\0É\n
	 \0\0	¼½©¾«©\0\0\0\0\0\0\0¿¿\0\0\0\0\0\0	\n\n

\n©\0\0\0\0	ë¿ÿùÿÿÿûûûûÿÿ¿¿ÿÿ¿¿ÿûÿ¿½»Û¹¼\0\0\0\0\0\0\0\0\0\0\0\0	°é °°Ð\0	\0\0\0	é°ùé°°Ù\0\0\0\n\0 \0°© ­¾\0\0\0\0\0 ©	 °°»\0\0\0\0
ûû¿¿¿¿¿ÿÿÿûûýÿ¿ûÿÿû¿ûÛÿ¿ÿ»Ûù¹	\0	\0\0\0\0\0\0\0\0\0\0\0\0É	\nÚ\0\0\0\r­¾\0\0\0\0\0\0\0À\0\0©¿\0\0\0
\n\n


\0\n\0\0\0\0	½¿ÿûûÿÿûûÿ¿¿ûûÿ¿ÿ¿½ÿûÛ½¿½¼°	\0\0\0\0\0\0\0\0\0\0\0\0	É©

	\0	\0\0\0\0¹ù¹ðÛ¹©\0\0\0\0\n 	©©\0\0ðºû	 	 °©©
»°\0\0\0\0	ë¿ùÿ¿ÿûûÿÿûÿÿ¿¿¿ÿûÿûûû¿¿¿¿¹ûË	\0\0\0\0\0\0\0\0\0\0\0\0\n \0\0Ð\0\0\0¼­­©ºÐð\0\0\0\0\0 \0\0\0© 
ù¾Ú
\n
°º\0\0\0\0\0\0¹ÿ¿»û½¿ÿ¿¿¿ûûÿÿÿ¿¿¿¿ûÿùùùùû
\0\0\0\0\0\0\0\0\0\0\0\0\0		À		
\0\n\n\0\0\0Ù¹­
½\0\0\0\0\0\0   \n\0\0 ©©°\0© 
\n\0
\0\0\0\0ûß¿Ûÿ¿ûÿÿÿ¿¿ûûûÿÿ½ûûÛ¿¿¿»ùÿ¹¹ð	\0\0\0\0\0\0\0\0\0\0\0\0ÊÚ
		\0\0\0	«Ëéú°Ú\0\0\0\0\0\0\0\0\0 \n\0\0 ¿\nº
\0\0\0°\0\0\0\0	
¿»ÿ¿ûÿ¿ÿ¿»ÿ½¿ÿ¿ûûÿ½¿¿ÛÛû	°\0\0\0\0\0\0\0\0\0\0\0			À\0à\0\0\0\r©\r©\0\0\0\0\0\0\0\0\0\0\0\n\0\0 \0©«
 \0°\0\0\n\0\0\0\0\0Ûÿ¹ûùûûÿùûû¹ÿ¿ûûùû¿»û¿½¹ûù¹	\0\0\0\0\0\0\0\0\0\0\0\0\0°\n\0©	\0 \0\0\0«½ð\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0©
\0

\0\0\0\0	\0\0\0\0\0	»Û¹û¿¿¿¿ù¿¿ùÿùÿ¿¿ûùùÿ¿
\0\0\0\0\0\0\0\0\0\0\0	ÀÐ ©		\n\0\0\0\0ÙË	©ðð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n
é \0\0\0\0\0\0\n
\0\0\0\0\0¼¿¹ùÛùý¿ûý»û»ûÿ¿½¿¿¹¹ûûÙ½½©\0\0\0\0\0\0\0\0\0\0\0\0
\0\n\0	À\n\0\0\0	­
©

\0\0\0\0\0\0\0\0\0\0\0\0\0\n\n\0\0
\0\0\0\0\0\0\0\0\0\0\0\0°°¹Ë¿»û½»ÿßùûûÿ¿¿¿¹½»ûÛ	\0\0\0\0\0\0\0\0\0\0\0\0\nÚ		Ë\0\0\0\0\0	ºÙé©©ð\0\0\0\0\0\0\0\0\0\0\0\0\0°ûðé\0\0\0\0\0\0\0\0¿»\0\0\0\0		¹ÚÙ©½½û½¹¿»¿¿ùùûûûÛÛ½¹º\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0° \0Ê\0\0\r½
\0\0\0\0\0\0\0\0\0\0\0\0«Ê°\n°\0\0\0\0\0\0\n\0ûÿ \0\0\0\0				©ÛÛ	ÛÛù½ûß¿»ûùûùûÿ»Ë\0\0\0\0\0\0\0\0\0\0\0\0\0©\0ð	\0	©	\0\0\0\0	­¬«°\0\0\0\0\0\0\0\0\0\n
°ðû\0\0\0\0\0\0\0\0ÿð\0\0\0\0\0\0			©	»
Û¹û½¿¿½¿¿¹û
\0\0\0\0\0\0\0\0\0\0\0 \0\0	\0\0 \0\0\0\0¼¹\0\0\0\0\0\0\0\0
 ¾\0¯
 \0\0\0\0\0\0\0\0ÿù\0\0\0\0\0\0\0\0	\0\0°¹°¹ûûùùûûùûû½¹Û	\0\0\0\0\0\0\0\0\0\0	\0 	\0\0			\0\0\0\0
Ëð°¹\0\0\0\0\0\0\0\0\0\0\nûûûð\0\0\0\0\0\0\0\0\0°Ú\0\0\0\0\0\0\0\0\0					\0	¹¹¹	Û½½¿¿¿¿Ûé°\0\0\0\0\0\0\0\0\0\0	\0 \0° \0	\0\0\0Ë
\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0°\0© °\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0¹©ðÛéûÛûû½½©		\0\0\0\0\0	\0\0\0\0\0°\0\0\0À°\0\0\0	ºðÐ¹­\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0°\0\0\0\0\0\0\0\0\0\0\0		\0\0	
ð½¿ÛÛÛ©½°\0\0\0	\0\0\0\0\0\0\0	\0
\0	\0\0	\0\0 \0\0\0	Àé
Ú\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0	
	ûÛÚù»ùûÛÛ	\0	\0\0	 \0\0\0\0\0	\0	\0\0 \0 \n\0\0\0Ú½©Ë\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0			\0	
¹°	\0	\0	\0\0\0\0\0	\0	\0\0\0\n			\0\0\0\0\0\0©Ë°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0°\0\0\0\0\0\0\0\0\0\0\0\0\0\0			\0\0\0		\0¹éð°½
Ù¹\0\0\0\0	\0\0\0\0\0°\0	\0\0
\0\0\0\0\0\0\0\0ÚÙ©
Ë\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¯\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0ù\n	\0\0\0
		\0\0\0\0\0	\0
\0\0\0	\0\0\0\0\0°ð°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0				©
		\0½°Ð\n
		 \0\0		\0	\0\0	\0°\n \0\0\0		­
	
Ê\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Û\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0			\0\0\0\0
	©Ù\0\0\0	
	\0\0\0\0	\n\0\0	\0	\0\0\0°ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0«°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0°ÛÉ °
É
\0\0\0\0\0\0	\0\0\0\0\0\0©	©		\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0½\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0É°ÛÚ\0\0	\0\0\n\0\0\0\0 \0\0\0\0Ú©é\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	©¿	Ë\0°
	\n\0\0\0\0\0\0	\0
\0\0\0\0°ð		\0\0\0\0\0\0\0\0\0\0\0½\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n						\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	 Û¹°°¿	\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0		©é\0\0\0\0\0\0\0\0\0\0\nð \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0		\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	°û¿
Éé

À\0	\0\0\0\0\n\0\0		\0\0\0\0Ð©\0\0\0\0\0\0\0\0\0\0
ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n°  \0\0\0\0
\0			\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
ÛÉ\r¿©©é
\0	\0\0\0\0\n\0\0\0\0\0\0			

\0\0\0\0\0\0\0\0\0\0¿¿\0\0\0\0\0\0\0\0\0\0\0\0\0\0	ð\0\0\0°\0\0	\0\0°ð	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0¼°»°º	\0\0\0\0	\0\0\0\0\0\0\0\0\0
	©\r\0¹\0\0\0\0\0\0\0\0\0\nðü\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0	\0	\0ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	
	\0ðÙùû

\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ¿°\0\0\0\0\0\0\0\0\0\0\0\0\0    \0 ©\0\0\0\0	\0
\0	©\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	©¾¿ùÉ	\0\0\0\0\0\0\0\0	\0	\0\0\0\0
	\0\0\0\0\0\0\0\0\0¯ùëË\0\0\0\0\0\0\0\0\0\0\0

\0\0\0\0\0\0\0	\0\0			 	\0		\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0Ù­°ûð°\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0
	
Ê\0\0\0\0\0
¿° ¼°\0\0à\0\0\0\0\0\0\0ð°° \n\n©ûú	\0\0\0©	\0©\0Ð\n\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0Û		\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ð	\0\0\0\0\0°ÿé­¼©¯\0

úÚ\n
\0\0

\n°°
¿ÿ¿
\0 
\0	©©	\0	\0	\0\0\0\0\0\0\0\0\0\0\0\0\0	¬¹©éð\n\0\0\0\0\0\0\0\0\0	\0\0\0\0\0		é\0\0\0\0\0\0ðÚ\n
\0\0°\r
\r \0\0© \0¼úÛùí¾
É\0	\0
	 		\0\0\0\0\0\0\0\0\0\0\0	\r©½\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0
\0\0\0\0\0ð©¯
ËË\0°\0¿ù¹­
\0\0\n
 
Ë¹ûï»é¹		
	©
\n
					\0\0\0\0\0\0\0\0\0\0\0	\0¹°	\0\0	\0\0\0\0	\0\0\0\0\0\0	\0\0\0\0\0¼ ¹Ð\0\0\0\0°©éà¼©¬¿
Ê\0\0\0\0	©\0\0\0\0 \0	é¯Ï¯¿þÚ\r\nÐ\0°Ú\0	\0\0\0\0\0\0\0\0\0	\0	\0\0\0ÚÛ\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0	\0\0 \0\0\0°Ú
ËË¯\0\0\0\0\0\0\0\0\0\0\0\0\n\0ð¹°ðùÿû°Ú°ð°¹	é	\0	\0\0\0\0\0\0\0\0\0\0\0\0	\0
	ù½©\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0
\0©	\0\0©¯û ¼°¬\n\n\0\0\0\0\0\0\0\0\0©­
\0»ÿ¿ß
						\r
	\0	\0\0\0\0\0\0\0\0\0\0\0\0		\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0¼à°\0
ÚÚðë
Ë\nÛ þ\0éú	\0   º	­

­¿ÿûÿÚÚ½	\n©
\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0	\0\0\0\0		\n	
	\0úÿ¿¼ ½°\r«Ë\n­	\r\0\0\0\0\0°¼°ÚÛÿûÿÿ¿			
\0°¹		\0\0
\0\0\0\0\0\0	\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
	ðÐÚ¿
ïÿ\nÚëûÿ\0Ð	©© \0   »©

	©\n\nûÿÿÿÿ¿¼°ðÛÙÊ
	\0	 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0		
«À ­©úùúË	©©©	\0\0\0\0\0 \0 \0\n\0\0\0\0\0ûÿ¿ÿÿ¿	Ë	© ¹ð½ 	\0\0	\0\0\0\0\0	\0\0	\0\0\0\0\0\0\0\0\0\0	\0\0\0	\0\0\0\0\0
\0
\0¼à\nÐù¼­\0­¬½\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿ¿ÿÿûù°	Ð	é°\r\n°°
\0é\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0	\r		\0 	­
\n\nºÚ
\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¿¿ÿÿÿÿÿÿÿ¿½	°\n	\n©	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\n°Ë\0ð ­¬\nÐð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0©¹ÿÿ¿ÿÿÿ¿ûÿÿûû\r¹
\n °°¼¹Ú¹

\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0	\0\0\0\0\0		É\0 ¼ 	\nÐ°©	©ª\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
Úÿÿÿÿÿ¿ÿÿÿÿÿÿûðù\r		\0«Ðð½\0°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0°©©\0\0
­\nÊ\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0½­¹ûÿÿ¿ÿÿÿÿÿÿÿûÿÿ¹	©

ëð¹	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0	\0é©© À©¹­©à\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÛËÚßûÿÿ¿ÿÿÿÿûÿÿÿ¿ÿ¿ùÛ½¾	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0
Ë	 \0\0¬© © \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0©°°¾ûÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿù½¯
©Ëß©ûÿ	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0	©\nÚ°û\n\r\0à\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0©\r
¼¿ÿûÿÿÿûÿÿÿÿ¿ÿÿÿÿ¿ûùùûÛûûý°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0	 °\0\0©Ë\0éà
\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ð°¼°úÛ¿ÿÿÿÿÿÿûÿÿÿÿÿÿÿûÿÿ¿¿¿¿ÿÿûû\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0	\0¼	\r
\n\0\0 é¯°¹¼°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	¹ßÿ¿ÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿÿÿÿ¿ÿ¿¿ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0			\n\0Ð
ÚÊ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0© ð¼°ù¿¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿûûÿ¿ÿÿ½\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	 	\0\0 \0\n\n
\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0¬É		
¹¿¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿÿÿÿ¿ÿú\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0	\0\0\0\0\0\0\0		\r
\0\0 °É© \0°\r\0\0\0\0\0\0\0\0\0\0 À	©¹©© \0\0\0©ÿÿûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿûý\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0¼\n\0\0©\0\0\n
\0É\0­\0\0\0\0\0\n\0 \0	
\0\0\0\0\0\0\0\0\0ÿÿ¿ÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿû\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0					\0\0\n\n\0\0\0°°\0 	\0	\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0 ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿÿÿð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0°Ð°\0\0\0\0\0	©		
\0°© °
\n\n\0\0\0\0\0\0\0\0\0\0\0\0\n\0 \0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿û\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0¬\0°\r\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0		¹\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿý\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0

\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿû\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0	 ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0 \0¿ÿûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0		©\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \n\0\0\0\0¿ÿÿûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿû\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0©\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\nÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0
Ú	Ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ùÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ð»ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0¹	
\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
½¿ûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0	\0\0\0\0\0\0	\0¬\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ùúÛÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0	\0\0\0\0\0\0\0\0Ð \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0½ºÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0	 	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0©

Úÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0			\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	é¼¹û¿¿ûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0
\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 °°Ë½©ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ©\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0	\0Ð	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ù°¿ûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\nË\n
\r¹ð½¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0© °\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿ\0\0\0\0\0\0ó­þ','Steven Buchanan is in 1976 afgestudeerd aan de St. Andrews-universiteit in Schotland en heeft een BSC. Bij zijn indientstreding als vertegenwoordiger in 1992 heeft hij zes maanden deelgenomen aan een opleiding in Seattle, waarna hij weer is teruggekeerd op zijn post in Londen. Werd bevorderd tot Directeur Verkoop in maart 1993. Steven heeft cursussen gevolgd in Successful Telemarketing en International Sales Management. Spreekt vloeiend Frans.'),(6,'Suyama','Michael','Berkendreef 26','Holsbeek','3220','016 44 45 78','Vertegenwoordiger',2150,'5','42',1,'1992-09-13 00:00:00.000000','1963-07-02 00:00:00.000000','1',_binary '\'\0\0\0\0\0 \0\0 \0×
OLE2CE8EA2B\0PBrush\0\0\0\0\0\0 \0\0\0PBrush\0\0\0\0\0\0\0\00 0 191 222\0@T\0\0BMT\0\0\0\0\0\0v\0\0\0(\0\0\0À\0\0\0ß\0\0\0\0\0\0\0\0\0 S\0\0Ä\0\0Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÀÀÀ\0\0\0ÿ\0\0ÿ\0\0\0ÿÿ\0ÿ\0\0\0ÿ\0ÿ\0ÿÿ\0\0ÿÿÿ\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¹ÛÉ\0\0 ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÛ¯»ûà©É\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÛÿÉ\r\n \0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿù\0ù¿ºÐ
ÚÉÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿû\nð½\0­©À\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿù\0\r	À©ÛË\0	ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0	\0º½ 	ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿû©	¬ÀÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÐà\0°ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0Ð \0		ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ°\0ÐÉ\0
ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0°\0\0Éÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	\0Ë\0		ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿû	\nÀÀ\0
ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0É
\0\0	¹ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÐ \0¹¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0Àð
ùÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÀð\0Ûßÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð\0ù\0
¹¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿðËÚÿ\0Ùÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð	¿©¹ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0úÛ°ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÉ¿¼¹ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿù\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿùðÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿù	Ï¹»ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¹ðÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿý
ûùûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿðÿÿ¿¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0	Ëÿÿùÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿù\0úÿÿ¿¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÀ	ûÿùûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿüÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿù\0­ûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÀ\rÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿù¯ÿûÿûûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿÿÿÿÿ¿¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿü\0Ê\0àÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿà\0\0\0\0
Ïÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿù\rùû¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÀ\0À\0À\nÀð\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿßù\n	\0
ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÀ\0\0°\0\r\0\nÐ\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿\0À À¿ûûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0	­ Ëÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿù©\0É	ÿûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0\0¬\n\0\0\0Ëßÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿Ú\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÀÀÊ¬\0¬\0\0©É\0ïÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿþ½ú	\0
ù°ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿþ\0\0\n\0\0	\n\0  \0Éÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿþ½¿ÿÿÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0ÀÀ\0\0\0É\n\0\0éàðÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿßÉ©¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿþ\0	À\0\r\0\0 \0\0é\n\nÐ\0éíÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿«Úùðÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿù\0ÀÀ\0 	À\0\0\0\0©\0\0¼ðÊÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûË¿©ûßÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\r\n\0àÀ \0\0\0À\0\nÐ©À\0\né­©Ëÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ½½ú°¹¾	éÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð\0\0\0Ð\0©\0\0ÊÀ\0\0\0\0©à\r \0 ¼Ê¬\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÛÚû
ÛÚù°¿ýÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð\0À\0À\0À\0\0À\0\0\0­\n
ÀÉ\0í­\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¾¹ùÿ½¯ùù­
ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿü\0\0\0\n\0\0\0\0\0\0\0\0\n\0À°\0ð\0	 \0éàË\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ­¿¾
°ù¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\n\0\n\0\0\0 \0À\0\0\0\0\0©¬\0\0	°Ë\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÛéúùÿÿïúù½°ðùÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0À\0\0 \0À\n\0\0\0é\0°°\0°À\n\0°\0°\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿþ½ûÛûÛÛú¹½¯ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿü\0\0\0\0\0\0À\0À\0 \0\0\0\0\0\0 \0	à­\0À\0\n\r\0É\0\0 \0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÉ	\0\0\0úð½ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿü\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0¬ 
Ð°
\0Ð\0­   	 \0 ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿý¹¿¿\0\0\0\0\0\0\0	¹ðÿÿÿÿÿÿÿÿÿÿÿÿÿÿð\0\n\0à\0Ê\0\0\0 \0\0À\0À\0Ê\0\0\0
\0\n\0\0\0\0\r\0\0É\r\n
\0\0°½ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÛ¯ëÙ\0\0\nú\0\0\0\0
ÿÿÿÿÿÿÿÿÿÿÿÿð\0\r\0\0\0\0\0\n\0À\0\0\0\n\0\0\0À\0\0°\0ð\0\0\0\0\0\0¼\0\0\nßÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð»ý¹\0	¿ý¿½½½ù°\0\0¹ëÿÿÿÿÿÿÿÿÿÿÿ\0\n\0\0É\0\0À\n\0\0\n\0\0À\0\0\0\0\0\0\0
\0\0¼\0\0\0\0\0\0\0\0\0	\n\n\0\0\0«	\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿Û	ïëÛï¾ú¿éù\0\0°ßÿÿÿÿÿÿÿÿý\0\0ÀÊ\0\0Ê\0\0\0\0\0\0\0\0\n\0\0\0 \0\0\0\0\0à\0Ëà\0°\0\0\0\0É\0\0
É\0\0¬	\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿùðÿ°\0ûù½¯¹ÿÛ¾¾\0½¾ÿÿûÿÿÿÿù\0\0\0 \0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0°\0«\0\0À\0\0\0\0\0\0 \0\0\0\n
\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿý¾¹\0»Þÿûßëÿ¿¾úÛÛÐ\0	©ÿÿÿÿÿÿÐ\0\0\0\0À \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0é\0ð\0\0\0\0	\0	\0© \0\0\0Ú \0
úßÿÿÿÿÿÿÿÿÿÿÿÿÿÿúùûÐíûúÚ¯ÚÞ½½úðù ½¿ÿÿÿÿÐ\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 Ð\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿ°	þÛ­½¿ÿÛÿ¿ûß¿¿ÛúÚ\0	ÿÿÿù\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¬\0
\0\0\0\0\0\0\0\n\0	\0	ªÀº\0ßÿÿÿÿÿÿÿÿÿÿÿðû	ûé¿ß¯ûß¿Ûí½»í­¿­½°	¾ÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 	 
Úð\0À\0\0\0\0	\0	¯\0\0\0©\0\0\0­ \0Ïÿÿÿÿÿÿÿÿÿý¿¼¾ÛÛÞ»ý¿ëÿ¯ûûïÛûëÛÚ
\0	ÿÿ\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\nÀ °\0°\0\0\0\0\0	\0à\0\0\0\0­©\0\0°	\0ÿÿÿÿÿÿÿÿúðû	ù¾¾ûüûí¿Ëß½ïß¿ùý¾¹ùÀÿÿ\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 	©\n°Þ\0\0\0\0\0\0	\0\0\0	©\0\0	\0 \0\0ï\0	\0ÿÿÿÿÿÿÿùÿ¾ùý½¿½ûÿ¿ûÿ¿»í¾ûÿ°°\0ÿ\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
\0Ê	É\n\0\0\0\0\0	\0\0\nà\0\0\0
\0\0\0 \0\0\0ÿÿÿÿÿûëûËûûéþ¿Úÿéùýûý½©û\0ÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¬\0©º\0ð\0\0	\0\0\0\0
À\0\0\0\n\0\0ý\0	\0\0ÿÿÿÿÚÛý­¿ÿÿûß¿Ûï¯þ½¯¿¿ËÚ	ÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	 ©¬\0º\0à\0\0\0\0\0\0\0ð \0\0\0­ 	\0\0°\0\0\0ÿÿÿÿ¹¿
û½©ûÿúß¿ùûý¹ûÛü½¿¯\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0 \0\0\n\0\0é\0\0\0\0\0\0	\0\0\n
\0\0\0©\0	\0Ê\0\0\0ÿÿÿùËÐ¿¿ËÏ¿ëÛúþûþ¯ÛïðûÛúùùð¹ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À°\n¼°\0ð\n\0\0\0\0\0\0\0	\0ð\0\0\0ð \0\0\0¿\0\0	\0Ïÿÿð¿
í¼¿ûßïÛÿÛÿ½¯¼¾¯
Ú\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\n\0\0\0\0\0	 	ÊË\0\0ð\0\0\0\0\0	\0\n
\0\0\0\0\nÐ\0\0\0 \0\0	ÿÿ
ðËùùëÿï¿ÿ¿ÛÛùûúÛùûëù½©ë\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0à\0\0\0\0\0\0\0À\0\0\0\0©\0 \0\0\0\0\0\0	\0\0\0Ð \0\0\0
\n\0\0\0\0û\0\0\0\0ÿÿûï¿¯¿ËÿùùïéùúþÛí½¿¿ë\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0
\0°\0\0\0\0\0\0\0	\0\nÚ\0\0\0\0é \0\0\0\0\0\0ÿû
ðùéï½ûûËÛï¿¾½¹»Ûëü¼¼¿¯ë
í\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0 \0¼\nÀ\0	à\0\0\0\0\0\0\0	  °\0\0\0\0\0\nú\0\0\0ÿðù¿½¿­½ÿ¯ùùûÛÛÏ¼»ÛÛ¿ÿ½½¾½\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0	°\0­°\0\0
\0\0\0\0\0\0\0\0\r
À\0\0\0\nÊ\0\0\0\0\0\0ùúÚúß­ÿëûý¿¿­­¯ù­¼°úßÛëÛÛëÀ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0
\0\nà\0	\0\0\0\0\0\0\0\0\0 ©\0\0\0\0° \0\0\0\0\0\0\0\0½¿½úÿÿ¿¼ûùï¿¿Ûûß½¹¯ëýëð½¹©\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0 \0\0\0\0\0\0\0 	Ê\0\0\0ð\0\0\0\0\0\0\0\0\0ð \0\0\0\0\0\0\0\0\0\0\0\0ðÚÚß»ÚÛÚÿÛùï½½ùúÿÛ¿ÿ»ÛÚÞ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\n\0\0\0\0\0ð\0 ð\0\0\0º\0\0\0\0\0\0\0\0\n\0\0\0\n\0\0\0\0\0\0\0\0		ûúýÿ¿ÿß¯ûù¿¿½¹ý°ù¼¹ûëí¾½¹¹à\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
\0\n\0	\r \n\0©\0\0© ¬	 
\n°\r\0
\0\0	\0\0ð¾¿ÛÚûü¿»ûÛÉðÛ¹¾ÿûÚ¾\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0àü«í\0¼¿Þú°ÿß­¯¯ÚËÐ\nËËË
Ú\0\0\0\0\0½¼¾ÿ¼ûùüý¯¹¹ÿÿÿúù°ð½°ÿ¿éûÛÛ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0°é\0
\n\0\n\n	É©ùë\0À¼¹é \0° \0	\0\0\0	¼ÚûûÛÿ¿þûûù¹ÉßëÚßý½¹ûÿûÏ­½¯\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0àË\nËÀ¼­©éðð¯ùùàþºþ°\0©ï¼¿Ë
\0\0°\0\0\0\0
Ë»ß¿ËßÛÉëÿÿÿ¿¯Û­½¿¿Ûëù¹\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0°ð°Ë\0\r \n\0\0		\r	\r¬\0°	 °ÀÀ°\0\0\0\0°üûëÏ¿ÿ¯ÿ¾\0ûïß¿ÿÛÿßÿ¿ðûúûÞ¿½¼¼°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0\n\0\0\0\0©Ê°\0\0\0\0\0\0\0\0\0à°\0\r\nÀ\0\0\0\0\0É¾¿¿ûÛéûÚù¿ÿüûïúÿüûð½¼¿
Û\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¼\0Ë\0\0\0Ð©À\0\0\0\0\0\0\0\0	
\0°©\0\0\0\0\nÀ\0\0¹éùðÿÿ¿ÿ¿ßïÿÿÿÿÿïûÿËûÿûþ½°ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0«À\0\0\0
\0\nÐ\0\0\0\0\0\0\0\0 ©\0	­ \0\0\0¿¾¿¿úðùùí½½¹»ÿý½ÿ¿ÿû	¿­ù¼¹Û­¹\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\r \0\0\0\0é­\0\0\0\0\0\0\0\0ªÐÚ©\0\0 ú \0

­½½ð½ûÿ¯ûëËÿÐë¯ÿ¿ºÛ\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\r 
à\0\0\0\0


\0\0\0\0\0\0\0\r\n\0©\0\0\0
À¬ÛÐ\0\0ÛÛëþ¿ÿ½ûß½¿©»ûûÛÚÛûÛéðý°ù\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0ð Ë\0\0\0\0\0\0\n\0ð \0\0\0	¯é\0	©ëÛÛÛðÿ¯ûúß¿íùùéÿ¿»ùù¼½¿­¼¿ÛûÛ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0à\0\0\0Ë\0ð\0\0\0\0é\0À° \0\0\0\0\0½ \0©©\0\0\0\n\0\0¹ÿëþûßÛúü¿úÿ¿ùýïÞ¿ÿ¿Ûûðûéëù°°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0©\0\0\0°
ð\0\0\0\0\0à\0Ð \0\0\0\n\0\0\0Ð¬°\0©\0\0\0\0\0 ûÛ¿½ûÿ¯ÛÛðÿ½ùý¿¯½¿¼¹ð¿¿¿Ë\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0°\0\0\0\0\0\0\0\0\0\n\0À\0\0\0\0\n\0 \0\n\0\0\0\0\0\n\n	 \0\0À\0\0\0\0¹ûÚÿ¿ßËëÛß¯¿ûË¾úùÿ¿¾ðùûï¼¿­»ù \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0\0°É\0\0\0\0\0\0\n \0\0\0¿\0\0\0\0\0\0 \0\0\0¬\0°\0\0\0\0\0\0¿ÚÞ¿¿½¯ûÛÏ¯½¿ý½þùïéëùþÚûÛÛÛ¼\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0©\0°\0\0\0\0\0\0\0Ú\0\0\0°ð\0\0\0\0\0à\0 \0 ©\0 \0
\0
À\0\0\0\0\0°É½¿»Úùÿ¿ûûÛÚûÛû¿»ÛËù¿ûðûúúðù»\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
À\0
\0\0\0\0\0\0\0\0«\0\0\nÀ\0\0\0\0\0\0 \0 ð\n\0à\n\0\0\n\0	\0\0ð°¾¿Ëßÿðùÿ¼ùÿ¿¼¾½íûýÿûûËþ°ùË\0\0\0\0\0\0À\0\0\0\0\0\0\0\nÐ\0°à°\0\0\0\0\0\0\0\0\r \0	\n\0\0\0\0\0©\0¬© \0\0\0 ð\0	\0À\0°\0 \0	ù½½¿úÛþ¿¾ùÿ¿éðÚ°¼½¿¹úúûÿ­¿¹\0\0\0\0\0\0\0\0\0\0\0\0	©\0 		\0\0\0\0\0\0\0\0\0\né\0 ©¬\0\0\0\0\0À\0\0\0\0\0	\0	\n
\0\0À\0\0ÿ\0ë\n¾¿¾ßéûûù­½­ûÛù¿ûÛÛË¹\r\0\0\0\0\0\0°\0\0\0\0\0\0 \0	\0° \0\0\0\0\0\0\0\0\0\0
à\n	\0\0\0 \n\0\0\0
\0\nÉ\0\0\0 \0\0\0½\0úÛÛß¯ßûúÿ¯Ûüù½\0¯¹	ÿ
é½¿©ûûùûùÏ»\0\0\0\0\0\0\0\0\0\0		\n\n\n\0\0\0\0\0\0\0\0\0\0\0¬ª\0\r¬\n\0\0\0\0 \0à\n\0\0À\0\0\0	\0\0Û	
	¿¯ûß¯½¿ù½ºù¿\0	ÿÚ¹\0Þ»ÉÉ\0\0\0\0À°\0\0\0\0\0	\n\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0	«\0	\nÚ\n	 À \0 \0 \0	\0 \0\0\0\0\0\0\0\0¿\nûËÛËûßÿí¾ÿ½ùéúûûû¿Úûûé
úûÿ»ûÿ¿»	\0\0\0\0\0\0\0\0 \0Ê\r
\0\0\0\0\0\0\0\0\0\0\0\0\0\0ì\0\n©ð	Ê
À \0
\0\0\n\0 \0\r©\n\0
\0\0\n\0\0ð­¿¯ÿÏûéûýûÏ¼¿¿¼ÿßí¹ðùù½½¼ùýùéùë\r\0\0\0\0 \0\0\0\0\0\0À \n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
\0\0Ðà\n	\0\0	À\0À\0\0	\0 \0\0\0\0\0\0\0\0\0½\0©¿½ÿÿÿ¿ûù¹í½¿¿¿û¯¿Ëëÿ¾¿¯ûëÛÚ\0 \0\0\0\0\0	\0 °\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\nÚ\0 »\0\0\0\0\0\0\n\0\0\n\n\0\0	 \0\0\0\r\0	ú¼ÿ¿úÿïûúÛí¿¯ýï½ý­¿¼¹ùéÿßý½½½«Û\0\0\0\0\0\0\0\0©\n\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0° 
\0\0\0\0\0\0 \0\0\n\0	\0­\0 \0À\0\0\0\0\0\nù	ë»ÞÛïßÿûïþ¹éùûï½þ»Û©	ÿÿÿûúûþ¿¾½°Ù¹\0\0\0\0\0\0\0\0\0	\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À
\0\0\0\0\0\0\0\0\0\0à\0\0 	\0\0\r\0\0\0\0ðûÿÿ¿Ûÿ¿ý¿½ÿ¹¼¼¿¿¿ßÛðùù­°Ë\0\0\0\0\0
\0 \n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0É\0\0\0
Ë	©à\0\0\0\0\0\0\0\0À \0 \0\0\0\0 \0\0\0\0¾¹ ú¾½½úùëÿúßïûÿúðûûÏý¹»¯ÛûÏÿÿ¾¿ÛÿÛ\0\0\0\0\0 \0 \0Ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0  à\0\0\0\0\0\0\0\0\0°	 \0
À\0\0\0\0\0\0\0ûÐ		ÛÛï½¿ýëßÿ¿ðùûß½­»
©éý¯ßûùëý¼¿°ÿ\0\0	\0°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0° \0\0\0\0\0\0\0\0¬\0  \0\0\0\0\0	\0\0ÿ°¿°ûÛÏðÿ¿ûûßÿ¿¿½©¿¿½¿¿¿¿¯½ÿ½ëÿ¼½°¿Ë\0\0\0\0\0 ¼\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0°®\0\0\0\0\0\0\0  \0\r\0\n\0\0\0\0\0\0\0ùð\0¹¼¿¿¿ûý¾ßúûßÛÏéúÛËé«ùëßßûëß¿ÛÚùð»ð\0\0Ê\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\nÀ\0\0\0\n
\0\0\0\0\0\0É	 \0\n\0É\0\0\0\0\0\0\0	¾ù
¿¾Ûßúÿ¾¿ßúûû¯½¿ù
ß«ûÏëý¿ûûÚ½°ù\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\n\n \0\0\0\0\0\0\n\nÀ\0
	\0 \0\0\0\0\0\0\0ÿ	éùëý¿ëÿÛÛß¾¿ÛÛÛËúúùÿûýÿ»ÿ­¼¼»Úðð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0 à\0\0\0\0\0\0\0\0\0\0\0\n\0\n\0\n\0\0\0\0\0\0\n¿	ÚûËÿéÿ¿ïûýÿÿ¿­«ûùü¹»ûéýðûûÛû½­°ù\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À	\0\0\0\0\0\nà\0\0\0\0\0\0°	\0­\0\0 \0\0\0\0\0\0	ß°­½¿
ÿ¿úß¯ùëÛÛ»Þ¿ÿ­ÿ¾¿¾ÛûéëÚ­ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0°\0\0\0\0\0
	\0\0\0\0\0\0\0 
\0 Ð\0°\0©\0\0\0¯©ëÛûËÿËßºûïÛÿÿúûðûÿ­©½¯ÛÛûßùý¿½¯\0ù\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n	\0\0\0\0\0\n\0\0\0\0\0\n\0\0\0 \0\0\n\0\0\0\0	\0\0\0\0°ùé¿¿ë­½½¹¿¿¾Û¹ûÿ¾ÿ½ëú½¿¿
Û\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0­\0à\0\0\0\0\n\0\0\0\n	\0­\0\0	 \0	 \0\0\0\0\0\0¿	
¿éúÛÛï¾ÿïÿÞÿ¿½½¿ë¼ùùûË¹ë	Ûéé¿
Ë¿°\0\0\0\0\0\0\0\0	 \0\0\0\0\0\0\0\0\0\0\0\0\0\0 	\0\0	\0\0\n\0\0\0\0\0 \0
\0 \0	 À\0\0\0\0\0\0ùù\0¹é¯½¼¼¿ùÿûÙù¿¿¯ÿ¹ùÿ¾ÿ½¿Ï¾½­¿\0Ðð\0\0\0\0\0\0 °°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0©©à\0\0  É\0\0É\0À \0\0	\0\0\0\0à\0\0ÚùûûËëÚ	ûëéýûëùéÿ
éùûÏïûúû	Ûð°°\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0 
\0\0\0\0\0\0Ê\0\0°\0\n\0 \n\0	\0\0\0\0\0\0\0	\0\0
	
ùéû\0	û\0\0ÿï¿¿é½¿ðû½½ðù¾½»ËÛà\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¼\0°\0\0\0\0\n°\0\0\n\0\0\0\0\n\0\0\0\n\0\0\0\0\0ð\0¹éûÛÛðÚð\0\0ÙëûÏ¿¯ÿËÛù¯ù\0\0
	
ð	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ê\n\0\0\0\0\0\0ð\0\0\0\n	\n\0\n 
\0\0\0\0\0\0\0\0\0\0\0\0°¼ºú¿¿	\0\0	¯½½ûéýëÿ¿­¯ð\0\0À\0½¿¿\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	°À¹©\0\0\0\0\0\0©\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0	
ÛùùúðùûûûûðûËÞ¿¿½úÛÛùü\0	©¿Ð¹	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\n
\0\nÚÚ\0\0\0\0	\n\0\0\0\n\0\n\0\0\0\0\0\0\0\0\0\0\0À\0\0­¾­¾¿ÿýûùûûðûËÿ½°ûÚû»ùûÛùéëÛé¯°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0Àé\0»©\0\0\0\0\n	\0 \0	\n\0\0 \0\0\0©\0\0\0\0\0\0	©¹¿¾ÚûÛúûÞ¿¿ËË¿¼¿ùüÿ¯úÛû°¹
\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ð\nÚð\0\0\0\0\0à\0\0
Þ\0
\0\0\0\0\0\0\0\0¬½¯½¿¿ßþß¼ûùûëúß¿¿Ï¿ûùý½úÚÛ­©ðù\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\nÐ \0Ë\0\n\0 \n	\0\0\0\0¿ë\0\0\0\0\0\0À\0\0		°¹
\0\0	­úÛûß¿¹ùùúßù»é¼½½¾ûï½½¾

	\0\0\0\0\0\0\0	À	\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0­­ \0\0\0¼°	\0	\0é \0 \0\0ûÿð\0\0\0\0\0\0\0\0\0\0\0Éðù\0\0¿¿ÿë¼ûÞ¿¾ÿ¿¾ÿË¿¯ÿ½ûËë	\0°\0\0\0\0\0\0\0\0\0 \0\0	\0\0\0\0\0\0\0\0\0\0\0 \0\n\0\0©\0\0	\0\n\0 \0
\0\0\0\0\0ùïý¯°\0\0\0\0\0\0
\0\0\0\0
\0		ïþÛÛûÛùüý¼¾	ûùù\0\0
	\0\0\0\0\0\0\0\0\nÚÚÉ À\0\0\0\0\0\0\0\0\0\0\0	à¼\0\0\0\0\0\0\n\0\0\0\0\0
ú¿ÿÀ\0\0\0\r\0 \0\0\0ù°ù­°\0\0\0°ù ððÿ¿¿ûûûùð\0\0\0\0\0\0\0\0\0°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0­ \0\n\0\0\n\0\0\0\0ð\0\0\0\0\0­¿ÿÿ°\0\0\0\0\0\0\0\0	°ù©ð\0\0\0\0\0	¿Ûýí¯Þÿ
\0\0\0\0\0\0\0\0	©Ú	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
\0\0\0\0\0°	ÿ­
ÿ\0\0\0\0\0\0\0\0\0\0\0	ùé°ù©©\0\0\0\0\0\0\0ÛÏ¾ûûÿûÛûù	\0\0\0À\0\0\0		©\0\0\0\0\0\0\0\0\0À\0\0\0\n\0\0 \n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n	¬\0\0\0\nËÊëÛð	\0\0\0\0\0\0\0\0\0\0\0Û¹ \0\0\0\0\0	°ûÿßý¿þý¾°é\0	\0\0\0	\0\0\0\0\0\0\0\0\n \n\0\0\0\0	©©©
	©\0\0¬\0\0\n\0\0\0\0 Ê	\0
ß°ü\0\0\0\0\0\0\0À\0\0\0\0	½©é°Ù©\0\0\0ÿÿÛÿûúüûúýûû
\0\0\0	\0		\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \n \n	 \0\0\0\0\0\0 \0 \n\0À	\0 °\0\0©\0é¿ðûÛ
¿\0\0\0\0À\0\0\0\0\0½¹­¿°½¿ûùûûËÞ¾ÿ¾ßÿ½ýÿ¼ðð¹Ë	\0\0ðù\0\0\0\0\0\0Ð\0\0\0\n©\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0°\0\0\0 ÐË \n\0\0  û¿ïúýý©\0\0\0\0\0\0\0\0\0	©°ù°ÛÛï¹ûý¿ÿûÿÚßûÛÿëúß¿ûÞ»\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\nÀ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0à\0\0\n\0\0É  À\0À\0\nÉ½¾ºÐ\0\0\0\0\0\0\0\0\0	ËËºúÛí¯þ¿ß¿ÿ¾ÿËùûé¼»\0\0\0\0\0\0\0\0\0\0Ð\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0Ú\r\0«\0\0\0Êÿ¿Ûý°\0\0\0\0\0\0\0\0\0\0¹¹­¼½¹ûÿûÛþßúýûß¿ÿ
ÿûÐù\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0 \n
\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 Ê\0\0Úð\0 \0\n\0¹\nûÏ¯Ú\0\0\0\0\0\0\0\0\0
\0¼
¼°¿Ûþ¾½¾¾ûþý©½ð»\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ê\0\0\0À Ê\0\0\0\0\0\0\0\n\0
\n\0­ 		Ë\0 \n\0\0\n\0\0Ú­¿ûß¿\0\0\0\0\0\0\0\0\0\0
Ë¼
ÛÛð¾ÛÿùÚßÛù
þ¹ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0©\0\0\0	\n\nÚ
\0\0\0\0\0\0\0\0À\0\nÐ	é\0\0\0 \0°¼ûûûÀ\0\0\0\0\0\0\0\0Ð	°½°½©¹ù¿	©ÿ»ûûþù	¹\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 °©\n\0Ð\0	©\0\0\0	 \n\0\0¾
«
	\n\n\n\n\0\0\0\0\0\0½þß	\0\0\0\0\0\0\0\0\0\n
Û	ðûËþúûÏÏ	
ù\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 
\n \0\0\0 À\r\0 à\0ÿ\0à\0ð\0   \nûû\0\0\0\0\0\0\0\0\0\0\r	°¹°
¼¿ùÛ
ÿ¿»	ð\0	°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0ÿ°à\0 \0\0\0 À\0\0©ÿ\0\0\0\0\0\0\0\0\0\0©
		°¹
é¹	°ÿËÐ	\0Ù	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
\0\0\0 Ð¯Ëð
\0
\0 \0\0\0°\0
\0©\0\0\0\0\0\0\0\0\0\0\0	
	ð¯Ë©ù	\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0©à	 »À¬\0\0\0¬\0 \0 \0Ë\0é\0\0\0\0\0\0\0\0\0\0\0		\0	
û	©ý¹ÿ\0
À\0	\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0ÊËð°°\0°\0\0\0 \0\0°\0\0\0\0\0\0\0\0\0\0\0\0		\0
	\0¹û\r¹\0\rù\0\n\0\0Ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n
\0°\0úð\0
\0\n\0°\0	\0\0\0
\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0	 °Û\0¿\0	\0\0
\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0éð	\0¯\0\0\0\n\0\0 ¼	\0\0\0\0\0\0\0\0\0\0\0	\0\0	°Ðß\r\nÐ°Ú\r\0\r¼°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\n\0
\0
\n\n©à\0à\n\0\n\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0	\0\0	\0\0\0		\0\0\0°°½½ðËÉÀ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0À\0\0\0ð\0»\n	ú\0\0 \n\0 \0  \0\0\0\0\0\0\0\0\n\0ÛÀ\0\0\0\0\0\0	É	\nÐà¯	éù°\0Ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
\0¬\0 \0ü\0\0\nð\0\0\0\0\0\0	\0\0\0\0\0ð\0\0\0\0ÐÀ\0\0\0\0\0\0\0\0\0\0ð	\0¿\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0 \0ð\0° ë\0ð\0û \n\0\n\0\0\0¬\0\0\0\0\0\0\0\0\0\0
\0\0\0\0\0\0\0\0\0		\0\0\0\0\0\0\0\0\0É\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\n	\0\0\0ù\n\0 \0\0\0\0ÿ\0\n\0\0\n\0\0\0 \0\0\0\0\0Êð\0\0\0Ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ðà°\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¯\0Úð¯\0°\0¿\n\n\0\0ð\0\0Ë\0\0\0\0\0\0\0¼\0ÊÐ\0\0\0\0\0\0\0\0\0\0\0\0\0		Ê	\0\r©		À\nÐ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0 \0à\0\0  \n\n\0\0ÿð\0\0\0\0\0\0\0°\0\0\0\0\0É		\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0¹\0\0\0\0\0ð\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0 \0\0\0\0\0\0\0\0\0\n\0\0\0\0\0 ð\r
 
\0° \n\0
\0\0 \0\0\0\0\0\0\0\nÉðàÀÐ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0
\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 ¯\0\0\0ð\n\0¼
À ¿û\0\0 \0\0\0\n\0\0\0\0À\r\n\0ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0 \0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0
\0\0\0\0\0\0 \0\n\0\0\0\0	\0\0\0\0¿\0ðà°ð\nÿ\0\n
\0\0\0\0 \0\0\0\0\n\0\0Ð\r \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0À\0\0Ð\0Ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0À\0\0\0À\0\0\0\0\0\nÉ\n\n\0°\0°\0
\n\0	Àû\0 \0\0Ð\n\0\0	\0\0\0\0Ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	ð\0\0\0ð\0Ú\0\0\0\0\0\0\0\0\0\0\0\0à \0\0\0\0\0\0\n\0\0\0\0 \0\0\n\0\0\0	ú\0\0\0ð\0ð\0\0 
ÿº \0 \0\0\0\0©\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¼\0\0\0\0\0\0\0Ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \n\0Ë\n\0\0\0\ný\n\0\0û\0°\0ð\0Ð
ÿÀ\0\0\0©\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\n\0\0\0\0\0\0\0 \0\0\0\0\nÐ\0û	\0\0\0à\n\0\n\0ÿ°°\0\0\0\0 \0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¾\0\0\0\0\0À\r\0\0\0\0Ð\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0 \0\0 \0\0\0Ê\0\0\0\0\0
ð\0ÿ\n\0\0\n\0\0°\0©\0ÿú\n\0 À \0À\0\0©\0\0\0\r\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÀÚú\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0   °\0\0 \0\0\0\0¿°ð\0\0Ú\n\0¿ù\0\0\0\0\0 \0°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÚÐ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0 \0Ð	À\0\0\0°\0\0©ð\0ûÚ\0\0\0\0\0©\0
\0ÿû\n\0\0\0\0 \0\0ÿ\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\n\0\0\0 \n\0\0\0\n\0\0À\0¯\0
ù¯°\0\nÐ°ð \0\0¯ÿ	à\n\n\0	 \0\0\0\0\0Àð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0éà\0\0\0\0\0\0ËÀ\0\0\0\0\0\0\0\0\0\0\0\0\0\n\n\0 \nÊ\0\0\n	 \0\0\0 \n\0\0\n
¯ß þ¿ð\0\0\0à
\0ð¿ÿ ©\0	\0	\0 \nÊ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0ú
ûÿ\0\0\n\n\0\0ÿð\0\0\0\n\0 Ð\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0°©\n\0\n\0\0\0\0\0\0\0\0\0
ÿð\0ÿÿ°\0©©À\0ÿ°\0 \n\0\0À\0\0 \n\0\0°À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÚÀ\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\n\0\0\0\0\n\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0°°\0¿°ÿð\0©\0\0°\0ÿð«\0\0\n\0  \0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0­\0\0\0À\0\0\0\0\0\0\0\0ð\0\0\0\0\0\0\0\0¼°ðÚÐ\0	\0 \0 \0\0\0\0\n\0\0\0\0\0\0

ð\0ÿ
ÿÿ\0\0©¯°à\0ÿð\n\0\0\0 \0\n
\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0ððð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \nË
°ÐéËÉ¬\0Ð\n\0Ú ÿ\0¿ÿ\0\0°
\0
ÿû
 \0\0\0°\0\0\0\0ÀÚ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\n\0\0\0\0\0\0\0\0\n\0 \0 \n\0À\0 \n\0	ÿ\0¿ÿÿð\0\n\0ÿ\nÿÿ\0\0\0Ê\0 \0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\n	À \0\0\0\0\0\0\0\0\0 \0\0\0\0\n\0\0\0\0\0 ¯ÿ°ÿÿûà	\0ÿ©à
ÿÿ\0ð\0\0\0\0¬ °\0\0
\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0éðý°À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\n\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¿ÿð\0¯ÿÿÿð\0é¯ð	\0ÿÿ°\n\0 \0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0ýð\0\0
À\0\0\0\0\0\0 \0\0\0\0\0­\0À\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0 ÿÿð\0ÿÿÿù \0û\n\0ÿÿð°\0\0¼\0©\n\0\nû\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ý­\0\0\0\0\0É\0\0\0\0\0\0\0\0\0\0ð\0\0\n\0\0\0\0
\n\0Ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¯ÿû\0¯ÿþÿþÛ\0©ÿ
Àÿÿ\0ÿ\0\0\0\0\0 Àÿ\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ð\n\0\0\0\0\0\0\0\0\0\0ùé\0\0\0\0\0\0à\n\0À\0\0\0\0\0\n\nÊ\0\0\0\0\0\0\0\0\0\0\0\0\0¿ÿÿ\0ÿÿÿÿ¾\0ÿð ¿ð°\0 \0 \0\0\0\n
ÿð\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0éÀ\0\0\0\0\0\0\0\0\0\0\0\nÐ\0\0à\0\0\0ð\0 Ð\0\0\0\0\0\0\0\0Ë\0\0	\0\0\0\0\0\0\0\0©ÿÿÿÿÿÿðð\0¿ú
ÿû\0\0\0\0\0\n
\0\nÿ \n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0É\0\0\0\0 \0\0\0¼\0  \0\0\0\0\0\0\n\0 \n© \0\0\0\0\0\0úÿÿ\0ÿÿÿÿÿðÿÊÿð\0é\0\n\0\0\0	 ÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0¬\0\0\0\0\0
 \0\0\0\0\0\0\0\0\0	Ê
\0\0\0ðÿý 
ÿÿÿÿÿ¯ÿ
ÿ\n\0ÿ\0	ú\0\0\0\0 À\0 \n\0\0ð\0\0\0\0\0\0\0\0\0\0\0À\0°	\0\0\0\0\0\0\0\0\0\0\0\0\0¬à°\0\0\0\0 \0¬ \0\0\0\0\0\n\0 Ê\0 \0\0\0\n\0\0ð°ÿûé\0ÿÿÿýÿÿðÿ°°\0\nÿ\0\0¬\0 \0\n\0\0°\0	\0¯\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ËËÀ\0\0\0ËÀ\0\0\0	 \0\0\0\nÀ\0\0\0\0¬\0\0\0\0\0\0\0\0\0\0\n À\0\0\0ÿÚ\0¿ûûëþÿð
À à\0\0Ë\0\0\0À \0\0
é\nÀ ß\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0ð\0\0\0\0\0
\0\0\0\0\0 àÊ\0\0\0\0\n\n\0
\0À\0\0\0\0\0\0\0\0\0\0\n\0à°ð¯\0À\0ÿÿû\nÊ\0°\0ð\0\0¾\0\0\0\0\0 \0¯û\0\0\0¯ \0
\0\0\0\0\0\0\0\0\0\0\0Ê\0\0\0\0\0\0\0\0\0\0\0\0\0°°\0\0\0\0	\0 °À\0\0\0\0\0
\nÀ\0\0\0\0\0\0\0\0\0\0\0\0À¬ù 
 \0\0\0\0\0À\0\n\0\0\0\0°\0  \0¬\nùü°\n\0\0\0\0Ê\0\0\0\0\0\0\0ÚÐ\0\0\r\0\0\r \0\0\0\0\0\0\0
\0\0  \0©\0Ê\n\0\0\0\0\0\n	\0¬\0\0\0\0\0\0\0\0\0\0\0
	 \0\0\0ð\0\0\0\0	\0
\0­©à\0\0\0\0\0\0\0 
\0©\n\0\0\0\0Ú\0\0\0\0\0\0\0\0\0\0	ð\0\0\0\0Ð\0\0\0\0\0\0\0¼ \0\0À\0©\0\0\0\0\0\0\0\0\n\0 °\0\0\0\0\0\0\0\0\0\0 \n\0é\0ð	 ð° À\0 Ë\0 \0\0\0\0À\0É\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÚÐ\0\0\0À\0\0\0\0 \0\0\0\0\n\0\0© \0\0 \0 \0\0\0\0\0\0\0à\0É \0\0\0\0\0\0\0\0É\0¼\0\n\n\r©à \n\0°É©\0\0\0\0°\0 \0\0\0 \0\0\0\n\n\0 \0\0\0\0Ë
\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0	 \0 \0	ë\0\0\0É\0\0\0 Ð\0à¬\0\0\0\0\0\0  \0°\0\0\0\0\0\0\0° \nÚ\0é\0Ú\r
\0\0\0\0\n \0\0\0\0\0\0\0\n
\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¼\0\0\n\n\0 À \0À\0 à\0\0 
\0\0À\n\0	 \0\0\0\0\0\0\0¬\0\n\0\0\0\0\0	­é\0\0 À°\0	­\nÐ¼°\0\0\0\n\0\n\0\0\0  \0 °\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0 	\0\0\0\r°\0\0\0\0\n\0\0À	\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0û\n\n°\0\0	\n\0 À\0\0\0\0\0à¬\0\0\0\0À\0\0\0\0 \0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0
\n\0\0\0\n\0\n\0\n\nð\0\0¬\0\0©\0\0\nÀ\0° \0\0\0\0\0\0\0 \0	 \0\0¬	©À\0\0¬	\0À\0\0\0\0
	
\0\0\0\0Ê\0\n	\n\0\0\nÀ\0\0\0\0\0\0\0\0\0\0\0ËÀ\0\0\n	\n\0ðÉ
\0
	\0\0	 \0\0¬\0\0©\0\0\0¬\0	¬\n\0\0\0\0\0\0 	\0\0É\nÀ\0\0\0 ¬\n\0\0\n\0\0\0à\0\0\0\0 \0\0\0\0\0À\0\0\0\n\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0Ê\nÀ\0\0\0\0 \0\0\0\0\0ºÀ\0\0\0 \0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0à \n\0\0\0\0\0\0 É\0\0\0°
 \0\0\0\0\0\0\0\0  \r \0\0
\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0é\0\0\n\n\0\0\0\0\0 \0à\n\0¬°\0\0\0 \0\0 \0\0\0©Ê\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\n\nÀ\0° É \nÀ\0\0\n	\0\0\0\0\0  \0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\n\0\0\0\0\0\0\0\0\0 \0\0\0	«À\0\0\0 \0\n\0\0\0\0 Ð \0\0\0\0\0\0\0\0\0\0\0é\0\0\0\0	\n\nÀ°\0ÉÉ­\0Ú\0 \0\n\0\0É\0\n\0\0\0\0\0 \n\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\n\0\0\0\0\0\0°À\0¬°\0\0\0\0\0 \0\0À\0\0\0\0\n©\0\0\0\0\0\0\0\0\0\0\0\0\r\0\nÀ	à\0é  \0\0\0ª\0\0\0\0\0\0\0\0\0\0\0\0\0\0 	\0\0\0\0\0\0\0\0\0
\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0 \0© 
\n\0\0\0\0\0\0 \0\0 \0\0\0\0\0\nÀ\n\0\0\0\0\0\0\0\0\0 \0\0\n\0À¼\0ð\0\r°Ë\0	À\0\0À\0\0 \0\0 \nÀ\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0À\0	\0\0 \0\0\0\0\n	\0\0\0\0\0\0\0\0­ \0\0\0\0\0\0 \0\0  \0\0\0\0\0à \0\0\0\0\0\0\0\0\0À\n
\0\0\0©\0\0\0\0 \0\0\n\0\0\0\0\0\0\0\0  Ê\0\0\0\0\0\0\0\0\0\n\0\nÀ\0\0 \0\0 Ð\0\0\0\n\0\0\0\n\0\nÊ°\0\0\0\0\0\0 \0\0\0\n\0\0\0\0\0\nÀ\0\0\0\0\0\0\n\0\0\0\0\0\r \0\nÀÊ
\0ð\0\n\0\0\0\0\0\0\0 °
\0\0\0\0©\0\0\0\0\0\0\0\0\0	À\0\0\0\0\0
ËÉ\0\0\0\nÀ\0\0\0\0\n\0\0°°\0\0\0\0\0\0À \0\0À\0\0\0\0\0\0à\0\0\0\0\0\0
\0\0\0\0Ú\0\n\0É
\0
\0É\0\0©À\0\0\0\0\n\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0© \0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¬°\0\0\0\0\0\0\0\0\0¬\n\0¬\0\0\0\0\0\0\0\n\0\0\0Ê\0\0\0\0\0\0\0à 
ÀÀ\0 \0°\0\0\0\0\0\0\n\n\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0à\0
\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0	à\0\0\0\0
\0\0\0\0\0\0\0\0\r\0
	À \0 \0\0\0\0\0\0\0\0\0\0\n\0\0À\0\0\0\0\0\0\0\0
\n\0\0\0\0 À\0\0\0\0\0\0À\0\0\0\0\0\0 \0\nð\0\0\0\0\0\0\0\0\0\0\0\0\0  \0\0\0\0\0\0\0\0\0\n\0\0\0\0\n\0\0	é\0 \0\0\0\0\n\0\0à 	\0\0\0 \0\0© \0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0 \0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¬\0\0\0\0\0\0\0\0À°\0\0\0\0À\0	\0\0\0\0	\0\0\0À\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0  \0\0\0\0\0\0À\0\0\0\n\0\0\0\0\0\0\0 ©\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0
\0\0\0\0\0\0é\0\nÀ\0\0\0\0\n\0\0\0\0\0\0\0\0\n\0\0\0\0¼\0\0\0°\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0 \0\0\0	\0\0\0\0\0\0\0\0\0\0
Ú\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\r  \0\0\0\0\0\0À\0\0\0
		\0\n\0\0\0\0\0\0\0\0\nÀ\0\nË\0¬\0 \0\0\0\0\0\0\0\0\0\0
\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \r	\0\0\0\0\n\0à\0\0\0 ¬\0 \0\r­\0\0\0\n\0\0\0©\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\nÀ\0\0\0\0\0À	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	àª\0\0\0ËÀ\0 \0\0 \0Ê\0\n\0\0\0\0\n\0\0\0\0\0\0\0\0\0	 \0Ú\0\0\0\0\0\0\0\0\0\0\0\0
\n\0\0\0\n\0\0\0\0À\0\0\0\n\0\0\0\0\0\0\0¾°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0\0\n\0\0\0\0©\0\0­\0	à \0\0­ \0\0\0\0\0\0\0  \0éëéà\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0É\0À\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ë\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0	À\0	\0	\n\0Ð°  \n¼ \0\0\n\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0à \0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¬\0
\0\0\0À\0\0Ê\0	 \0\0­© \0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0 \0\0\0\0\0\0\0\0À\0\0\0\0\0\0
ë\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0À\0\0\nÐ\0
\n\0Ðë\0\0\0\n\0	\0\0\0½©©Ë\n\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0©\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0° \0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
\0\0\0\0\0\0\0\0 \0\0­\n\0ð\r\0 \0ð\0\0\0\0\n	©\n\0\0¼¼\0  \0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
É\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0 À\0\0\0\0©	  \0


\0\n\0Ê\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0 \0\0\0\0¾ \0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0À°\0\0 \0\0\0\0©é Ú\0\0\0àÚùé\0\0 \0\n\né\0\0\0\0 \0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 Ð\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0
	à\0\0	\0\0\0\0\0\n°\r Ðà¬\0

Þ¿\n\0\0°\0\0¼\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r®\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0Ê\0\0\0\0°
Ê	éé\n\0 \0\0¬ \0\0\0\0\nÐ\0 \0\0\0\0\n\0\0\0
\0\0\0\0\0\0\0\0\0\0\0\0\0	 \n	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0© \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À°\0\0\0\0\0\0\0Àð\0¾\né		\0\0\0¼\0\0\0 \0\0\0\0\0\0\0É\0Ú\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n	\0\n	\r \0\0\0\0\0\0\0\0\0\0\0\0\0¼\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ë\0à\0\0\0\0\0\0\0«
ËÉ	ÊÚÊÊ\0\0¯\n\0\0\0\0\0 \0\n\0\0\0À\0\n\0\n\0\0\0\0\0\0\0\0Ê\0\0\0\0	\0\0\0 À\n\0\0°\0\0\0\0\0\0\0\0\0\0\0\0\0© \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
\0\0\0\0\0\0\0\0­¼\0\nÚ
Ï\0\0ÚÛ
­\n\0\0\0\0\0 \0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0Ð\0\0\0\0\0		\nÀ\0\0\0ð\0\0\0\0\0\0\0\0\0\0\0\0\0ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¬\0\0 \0\0\0\0\0\nÚ\0 ©é¬¼°©àà\0\0­ àúÚ\0\0\0\0à\0ËÊ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0­ \0\0\0\0\0\0\0\0\0\0\0¬ \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿ\0\0\0\0\0\0§­þ','Hij spreekt vloeiend Japans en leest/schrijft Frans, Portugees en Spaans.'),(7,'King','Robert','Oude baan 20','Alken','3570','011 31 52 46','Vertegenwoordiger',2250,'5','46',1,'1992-11-29 00:00:00.000000','1960-05-29 00:00:00.000000','1',_binary '\'\0\0\0\0\0 \0\0 \0×
OLE2B4EEA37\0PBrush\0\0\0\0\0\0 \0\0\0PBrush\0\0\0\0\0\0\0\00 0 191 222\0@T\0\0BMT\0\0\0\0\0\0v\0\0\0(\0\0\0À\0\0\0ß\0\0\0\0\0\0\0\0\0 S\0\0Ä\0\0Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÀÀÀ\0\0\0ÿ\0\0ÿ\0\0\0ÿÿ\0ÿ\0\0\0ÿ\0ÿ\0ÿÿ\0\0ÿÿÿ\0
Ð\0\0\0\0ÿÀÿÿÿ\0\0	ð\0\0ÿÿÿ\0ÿûü\0ÿùÿÿÿÿÿÿÿÿÿÿÿÿì\0\0\0\0\0\nÿÿÿÿÿþÿÿÿÿß\0\0\0ÿ\0\0þ\0Ê\0ÿ\0\0\0\0\0ÀùÀ\0\0ÿÿ\0\0\0\0\0ÿÿÿÿ\0ÿ°ÿ\0à\0\0\0ððð¿ÿÿ¼
\0\0ÿÿ­ÿû\0ÿïÿÿÿÿÿÿÿÿþ¿	\0	ÊÀÿÿÿþÿÿÿÿÿþð\0ü\0\0Ïÿ\0\0\nßÿ¯\0ÿúÿþ
þÿð\0à\0\0\rÿÿ¿ÿÿÿÀð\0\0\0
\0ðÿùïÿÿÿÿ\0¿ÿÿÿÚÐß¿ÿÿÿÿÿÿÿÿýÿü\0\0\0\0ÿÿÿÿþÿÿÿïÿð\0ßð\0\r À\0ü¼¼ðÿÀÿÉÿ\0\0ÿÀÿ\0ÿÿÿðïðï\0ýÿ\0ÿ\0\0\0ÿ ÿÿðþüðÿ\0ï	ð\0ÿð
úÿÿþÿÿÿÿÿÿÿÿÿúÿð\0	\0\0ÿÿÿÿÿÿþÿÿÿüþ\0þ\0\0Ëïð\0\0\0\0ùü°Ð\0\0ÿ
\0ð\0ÿ°\0\0\0\0ÀÿÐÿûÿÿý\nð\0ðÀûÛÿý\0ÿÿûÐÿï¿ÿÿÿÿÿÿÿÿÿÿÿü°\0\0\0ÿÿÿÿÏÿÿÿÿþûð\0\0ð\0ðÀ\0\0\0À\0ð\0°¬\0 \0ÿÿùÀÐ\0\0\0ÿÿÿ	ÿéÿ\0ü\0½ÿÿú\0ÿùÿÿÿ¯\0ÿð°ïÿÿÿÿÿÿÿÿÿÿþý	\0\0\0\0ÿÿÿþ¿ÿÿÿÿÿü\0\0ÿÀ\0Êÿà\0Àÿ\0ðþÐ\0\0ý\0ÿð© \0\0\0ïÿÿÿüÿð\0\0\0°ð\0ð\rï°ÿÿÿðÿßÿ\0ÿÿÿÀýïÿÿÿÿÿÿÿÿÿûÿ\0\0\0\0\0ÿÿÿÿýÿÿÿÿÿÿúï\0ð\0ð\0\0\0ÿ\0ÿÚðù¯ð¯ððëù\0ÿðÿÀÀï	þÿ\0¼\0\0\0\0ÿùí\0ÿÚÿÀÿ
ð\0ð\0\0¯ÿ	­ÿð½ëÿÿÿÿÿÿÿÿÿÿÿûð\0\n\0\0ÿÿÿÿúÿÿÿÿÿÿýÿÞ\0¯À\0Àð\0þ\0\0ïýÿÿ\0ÿ\0°\0ÿðÿ\0ÿù\0\0ð\0Ïÿÿÿÿ½ÿð\0\0ðÿð	ûÿÿ\0¿ðþÿÿÿÿÿÿÿÿÿÿÿÿþð	É\0\0ÿÿÿÿßÿÿÿÿÿÿï\0\0ð\0\0\rï\0¬\0\0\0\0\0\0	\0Ð\0\0ÿÿý\0é\0\0ÿÿÿ\0ðÿð¯ðÿ°ðÿ\0	\0ùÿùÿÿÿÛàÿð\0ûÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿ\0\0ð\0Ï\0ð\0ð\0Ðÿ\0ÿ\0\0àÐÿ°ð\0\0\0\0ïÿÿÿÿÿðÀ\0\0\0	À
ð	àðÿÿÿÿ¿ðÿ¿ÿÿù\0üÿÿÿÿÿÿÿÿÿÿÿÿï\0°\0\0\0ÿÿÿÿïÿÿÿÿÿÿÿÿ\0
ÿ\0\0\nüüàÿàÿþÿ\0¯ðÿð\0ÿÏÿ¼þÿ\0¾\0ÿÐ¿\0\0\0\rúÿðßðð¿ý
ð\0ðýÿ°ïÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿù­\0\0\0\0ÿÿÿùÿÿþÿÿÿÿïûÿ\0\0à\0\r\0\0À\0ÿÀÿÐ\0\0ðï\0ðÀûÀÿý\0°\0\0ð¯ÿÿÿÿýÿð\0ùðð¿\nßÿð
ÿþÿÿÿÿÿÿÿÿÿÿÿý¼\0\0\0\0ÿÿÿþÿÿÿÿÿÿÿÿð\0À\0Àà\0\0\0ð\0\0 \0\0\0ÿ\0ÊÀð\0ð\0\0\0ÿÿ¼ÿð¿ý¯üùð\0\nûü\0\n\0ÿÿÿÿÿÿÿðÿÿý\0ÿÿÿÿÿÿÿÿÿÿÿÿÿé\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿþÐ\0­þ\0ð
à\0¯\0ý\0Ð\0\0ÿÀ\0ü¿ÿ\0\n\0\0©ÿÿÿÿÿð	à\0ð\0°\0ÿÐð\0ÿÐÿðÿÿððÿÿ°\rÿÿÿÿÿÿÿÿÿÿÿÿÿ	\0\0\0\0¿ÿÿïÿÿÿÿÿÿÿÿð¯Ð\0
Ïü\0þÀüð\nð\0ð\0ðÊÿ\0\0\0\nü¼ÿï\0\0\0\0ð\0\0\r¿ÿÛÿ ðÿð\0\0\0ð¼\nÿüûÿÿÿÿÿÿÿÿÿÿÿÿð		\0\0\0\0ÿðÿÿþÿÿÿÿÿÿüÿà\0ü\0ð\0É\0à ÞÀ\0\0\0Ï\0\0\0\0ü\0ðÿÿÀ\0\0ý
ÿÿÿ¼ Ðÿðà\0ðÿÿÿÿðûËÿÿþÿÿÿÿÿÿÿÿÿÿý\0\0\0\0\0ÿ¿ÿÿÿÿÿÿÿÿþð\0\0ð\0\0\0\0\0\0\0	\0 \0ðà\0\0\0ÿÐ­À\0\0\0Àÿÿûÿÿ¯ÿÿÿïÿËÿ\0\0\0ÿÀ\0ÿÿÿÿÿÿÿùÿð\0ÿúÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0ÿÏÿÿÿÿÿÿÿÿÿð\0ËÀ\0\0À\nð\0ðÏ\0\0\0\nÐïÿ\0ð\0\0àÿð¼\0 À¿ÿÿÿð\0°\0Û\0\0\0ð	ðÿÿù
ðÿßÿÿù\0ðÿßÿÿÿÿÿÿÿÿÿÿÿð\0\0\0À	ðÿÿÿÿÿÿÿÿÿÿðÿ\0\0ð°íðïð¾àÿðÀ\0\0ÐÏþ\0\0\0\0àÿéíü°\r\0
Ð\0\0\0°\0ÿÚü
ÿúÿðð\0þ	ð\nðÿÿûÿÿÿÿÿÿÿÿÿÿÿððÀ\nÚ\0þÿÿÿÿÿÿÿÿÿÿïÀþ\0ð¯Àð\0\0\0í\0ÿÀ\0\0\0\0ËÊÿ\0\0\0¼\0ðÿ¿ð°\0ð\0ÿÏÿÿðÀ\0\0ÿ\rí\0\0ÿÿðý\nÐÿÿÿïÿÿÿÿÿÿÿÿÿÿÿð\0°Ð\0\0\0ÿÿÿÿÿÿÿÿÿÿù\0\0\0À\0\0\0\0\0\0\0\0\0\0ïðíà\0\0\0Ïÿ\0\0\0\0\0ÿÿÿÿÿÏÿËÿ¿ÿðÿ°\0Úÿ\0¯\0ûÿÿÿ¿ýÿ°ÿÿÿÿÿÿÿÿÿÿÿÿÿÿý À\0\0ÿÿÿÿÿÿïÿÿÿÿü ðà\0\0\0ë\0é\0À\0¿ü­à\0\0\0ÿÀ\0 Ð\0ùÿ¿ÿ\0ÿÀ\0\0¿ÿÿ\0úÿðÿðÿßûÿÿü
þ¿ÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿïÿ\0ÿü\0ààÿ\0ýüû\0\0\0 ÿ\0\0\0ïàïðÿð\0ð\0ð\0\0\0
Àÿ¼\0
ðÿùÏ
ðÿûÏ\rÿÿÿÿÿÿÿÿÿÿÿÿÿð\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿþ\0ð\0ðù\0à\0à\0ð¼ð\0\0\0 ü\0à\0\0\0\0\0ÿÿÿ¿ý\0½\0¿ðÿÿÿð\0\0\0ÿÿ
À\0ðþ¿ðý\0ð\0úûÿÿÿÿÿÿÿÿÿÿÿÿÿù\0\0	ÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0ð\0\0\0\0\0\0\0\0À\0þðÿ\0\0\0\0\0ÿ\0ù\0\0\0¿\0ÿßÿÿÿÿÿÿð\0	ÿÿ¯ý\0ÿ
ÿëÿÿÿÿÿ½ÿ½üÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	\0ÿÿÿÿÿÿÿÿþÿÿÿþÿÀ\0ï\0À\0\0üÐï\0Ð\0\0À\0þ\r\0\0\0\0þÿÀÿ\0\0¿\0ÿð\0\0\0\0ÿþÿð \0ÿÿÿÿÿÿÿÿÿùïëÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\rÿÿÿÿÿÿÿÿÿÿÿÿÿÿúÚÐð\0\0ððÀ¯Àà\0À\0ï¿ð\0\0\0\0\0\0ÿÿÿðÿ\0\0	ðÿûÿ\0\0\0¿ÿ\0ÿ\0\0ùÿÿ\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÐð¹ÿÿÿÿÿÿÿÿÿÿÿÿÿïðð\rðð¾\0\0\0Ê\0þ\0ü­ \0\0\0\0àïü\0\0\0\0ðÿÿÿÿÿïÿÚÿÀ\0\0ÿð\0ðÿÛÿð\r­ïÿÿÿÿÿÿÿÿÿÿÿÿÿù©	¿ÿÿÿÿÿÿÿþÿÿÿÿýà\0ú\0 À\0\0\0\0\0\0\0\0\0àÿ\0À\0\0\0àì
ü\0ÿù\nÐ	ðþý
î\0°\0ÿÿÿÿ\0ùÿÿÿûÿÿûððÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿàÛûÛÿÿÿÿÿÿÿÿÿÿÿÿïé\nðÎ\0À\0Ðÿ\0ü\0ÀàÐ\0\0àÿß\0\0\0\0\0\0À\0ÿÿû¿ð	ð\0ù\0ùïý°\0	\0¿ÿððïËÿÿÿûàÿÿÿÿÿÿÿÿÿÿÿÿÿÙÞëÿÿÿÿÿÿÿÿÿÿÿÿð\0À\0\0°àß\0þ\nðð\0þ\0\0\0 \0þ\0þ\0 \0ùÿ	ÿÏÿúÿùÿðÿðË\n\0\0ÿÏÿ\rð
ððÿðßÿÿÿÿÿÿÿÿÿÿÿÿÿ
½þÿÿÿÿÿÿÿïÿÿÿÿ°	À°à\0\0\0À\0\0ËÀþÐ\0\0\0ËÀí ÏÀüÿû\0
\0ÛÀ©à\0\0ýÿÿÿð
ð
ýÿ¿ðùù\0ðúÿÿÿÿÿÿÿÿÿÿÿÿÉùûËËÛ¹¾ÿÿÿÿÿÿÿÿÿÿÿþðþ\0À\0\0À\r\0\0í\0\0\0ð\rà\0\0\0\0\0\0\0\0¿ùÿÿÙ¯ðßðþÿûÿü¿Ð\r\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿½¹¹­¹ËÉÿÿÿÿÿÿÿïÿÿÿéÏ\0À\0\0ððà\0ð\0\0\0\0\0ðËü\0ðÚý¿ÿ°þÿÿ¯ÿéÿ\0ë\0\0\0\0¿ÿùÿ
þùÿÿûðÿÿÿÿÿÿÿÿÿÿÿû\r½ÿËÐÙ¼¿\nÿÿÿÿÿÿÿÿÿÿü \0\0\0\0ðü
Àï\0ð\0\0üú\0\0\0\0\0\0à\0à\0ì\0 \0\nÿÐÿëù\0\0	\0\0ðÿÿð\0\0ù	ð¿ÿÉïÿÿÿÿÿÿÿÿÿÿ	ûÿ¹½¹

ËÚÙÿÿÿÿÿÿïÿÿÿ\0ðÀ\0\0\0\0\0\0\0\0í\nÿÀÏÀ\0\0\0\0\0\0\0À	\0\nÿÿÿÿÐÿùÿÿÿÿÿðý\0ðÿÐÿÿÿ\0ð¿ÿÿÿÿÿÿÿÿÿðûù½û½¼½­°Ðÿÿÿÿþÿÿïÿþðþ\0\0\0\0\0ð\0¯Àü\0\0\0\0À\0þ\0ÀÐÎÐ\0\0\0\0ÿðúÿþÿþÿùïú\0 \0 àùÿÿÿûÿÿ\0¼ÿÿÿÿÿÿÿÿÿÿÿùûÿ¹ù		°	ð°ÿÿÿÿÿÿÿÿÿÿ \0\0\0ï\0üÀ\0þð\0\0\0\0\0\0\0Ï\0Ï\0
\0\0\0\0\0\0\0\0þÿð\0\0¼\0ý	ÿÚÏùïþð¿Êÿÿÿü¿ÿÿÿÿÿÿÿÿ\r¿¿¿½¹\r¼ÐÿÿÿÿÿÿÿïÿÀ\0À\0àü\0ð\0\0\0\0ïðÎð\0à\0\0\0\0\0¬\0	\0\0\0\r¿ÿýÿ¼ÿ¹ÿüÿý¿þ	é
ð
ðÿ\nÿý©ÿÿÿÿÿÿÿÿùûÛûûû 	©	©éëÿÿÿþÿïÿþð\0\0\0\0\0ì\0	\0\0\0
ÀÐ
à\0ð\0à\0\0\0 \n\0\n\0ÿð¿\0½\0­
\0	 \0\0ÿ
ÿßùÿûðÿÿÿÿÿÿÿÿ
¿ÿûûÛÛÛËÚÙðÿÿÿÿÿÿÿÿàð\0\0\0\0\0\0þ\r¼\0\0\0\0\0\0\0\0		\0\0\0\0\0\0

ËËðïýûÿ¿ÿïÿÛÿýÿ¿ÿÿÿÿ\0éÿÿÿÿÿÿÿ½ûû½¿¿¿¹û

	é		\nÿÿÿÿÿÿÿÿà\0À\0\nðÏ\0\0\0\0\0à\0ð\0ð\0\0\0\0\0Ê\0\0\0\0\0\0ð\0\0\0\0ð\0ý\0ú\0ü\0ÿ\0ÿÿ°¯Ëþðÿùðÿÿÿÿÿÿüÿ¿ÿ½½¿Ú	\r
ÿÿÿÿÿïÿÐ\0\0ðà\0­\0ï\0¼\0\0\0\0\0\0\0\0\0\0\0\0	\0	\0\0°\0\0	\0
ÿ\0
ÿ¿ÿÿð¿\0	ðù\nðÿ	ÿÿÿÿÿÿ¿¿ûûûûùûùé©©	É	Ú°¼¿ÿÿïÿÿïð\0\r­\0\0\0\0\0\0\0\0Ï\0þÐÀÊÀ\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\r\0\0Úÿ\0Ïðÿÿÿ¿ÿÿÿÿÿÿÿðÿÿÿÿÿð¹ÿûÿ¿¿½¿ûÛÚÚ\0ÐÐÿÿÿïÿÿðÿ\n\0\0\0\0ü\0\0\0\0\0À\0\0\0à	\0\0\r\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ë\r¿¿ð	ðÏ	éÿÿùÿÿðÿÿÿÿÿÿû¿ûÿû½¿ù¿\r
	\0\nÐ°°ÿÿÿÿïÿàðàüÀÀÞð\0À\0\0\0\0À\0\0 \0 \0 \0\0\0\0\0\0\0\0\0\0\0
\0\0\0\0\0\0ÿÿ
ÿ\0ú	ðÿÿÿÿÿù¿¿¿ÿ¿¿ÿ¿¿ðù°¹Ë\r©	
\r\rÿÿÿÿïÿ\0\0\0\0\0\0\0\0\0\0Ï\0 \0
\0\0Ð	
\0\0\0\0	\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0ð\0	\0ÿðÿ
ýÿ¿ÿÿÿÿÿ	ÿûûûÿûûûùù¿­©	éË

ÿÿÿïßð\0\0\0\0Ð	à\0 \0\0\0ÀÀ\0	\0\0\0\0\0	À\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
ÿÿÏ¿úÿÿû	ÿÿÿù¿¿¿ß¿ûûÿ¿ûËËÐ¹\n\0°	©­\rÿÿÿÿïþ\0\0Þ\0ü\0àÀ\0à\0	©	\0\0\0°\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0
\0\0\0\0\0ð\0\0\0\0\0°
ËðÛ\0ÿÿÿÿÿ¿ûÿ»ÿ¿¿ûùû½¹¹\r©é

\0ÐÐ°\r¾ÿÿ¯ÿ\0\0à\r\0\0\nÐ\0\0	\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
\0\0\0\0\0\0\0ÿÿù¯ùùÿÿÿÿÿ
ÿ¿ûÿûÿÿ½¿»Ë
	ÊÐ			

ÿþÿÿð\0\0à\0\0\0\0\0À	\0			\0\0\0\0\0\0°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0	à\0\0\0\0\0\0
\0ÿÿÿÿï¿ÿÿù¿ûÿ¿¿¿ûûû½½¹	\0Ú		 \0\0ÐÉ
ÿþÞþð\0àÀ\0\0\0	\0\0\0\0\0\0\0\0	
\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0¼ÿÿ¹ÿ¿ûÿûÿ¿½¿Û°É	\0\0ð	©\0
		©°­ÿÿÿýà\0\0ð\0		\0		 \0	\0\0\0\0\0\0	\0\0\0\0\0¼\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0
\0
ýÿûÿÿÿÿ¿ÿ¿ù¿ûùûù¹É ° 
	\0\0Ð	\0\0ÉÙ©Ïþþú\0\0\0\0	\0\0À\0	\0\0\0\0\0\nÐ\0°\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	à\0\0¿ÿÿÿÿÿý¿ûûûûý½¿û
ÉÐÀ\0\r		\n\n\0¿ýùý\0\0\0¬\0\0\0°	\0\0\0			\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0à\0\0\0\0\0\0\0\0\0ùÿÿûÿ¿ÿ¿ûûûé°¬	\0\0
\0°\0\n\0\0 ­ÉÙ\nÿïêËÀ\0\0\0\0ð	\0\0\0	\0\0\0\0
\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ð\0\0\0\0\0\0\0\0\0\0
\0\0©éðùéÿÿùûûûÿ½¿¹ù¯¹	ÀÐÉ°Ð\n\nÉþÿý\0Ê\0		\0\0\0	\r\0\0	\0		\0\0\0ð\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0	\0\0\n\0\0\0\0\0\0\0\0\r\0\0\r°­ÿÿÿÿÛÿÿ¿ûûù½»Ù°
	©	
\0\0\0À\0\0\0É­\0	ÿùà\0\0­			\0\n\0\0\n\0\0\0\0\0\0\0\0\0	\0\0\0\0\0		\0\0\0\0\0\0\0\0°\0\0
Ð\0\0\0\0\0\0\0
\0\0
éÉ¯¿¿ÿûûûÿ¿¿Û¼ëðÚ\r°ùù©©	\0	à° ¯þð¼\0Ë\0\0	\0\0		\0\0\0\0\0É\0
\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\r\0\0\0\0\0\0\0\0\0\0ÿÿûÿ¿ûûùÿ»ËðÚÛ¼°ÐÐ	\0\0\0\0É©	\rÿðÀ\0©é	\0\0\0\0\0\0\0	\0\0	\0\0\0°\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0	\0\0°
À\0¿ÿÿ¿ûÿ¿¿¹­ûû©é°Û½½©©\n\0	\0\r\n
í\0\0	ÿùÐ\0\0\0\0		\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0	\0\0\r\0\0\0\0\0\0\0\0\0\0½©\0ðÿÿ¿ûÿùûÛÙ¿û¹ùûÉ©ûÐ\r	\0\nÀ\0	É\rÿì\n\0\0©		\0\0\0ð\0\0À	\0\0\0\nÐ	\0\n\0\0\0\0	\r\0\0\0\0\0\0\0\0\0\0	\0\0ð\0\0\0\0\0\0\0\0©\0\0ûÀ\0\0\0»¿ûÿ¿½»ù¾ûßûùð¼½½­ù½­
\0\0À	\n	À°\0\nÿ	\0¼\0\0\0\0	\0\0°\0©\0à\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0°\0\0\0\0\0\0\0\0\0\0½©­\0\0ÿ¿ûÿ¿¿ù¿ùÿ¿½½»ÛÉ¿é	©É\0\0	\0©É©\rêÀ\0\0\0\0
\0\0\0\0\0\0À\0Ð	\0\0\0\r\0\0	\0\0\0\0\0\0\0\0\0\0\r\0\0ð\0\0\0\0\0\0\0\0é\0\0ù­\0\0	\0¿ÿ¿¿½­Û¿ûûÿ¿½¿ù½ \0\0	\0\0À\ný\0À\0\0\0\0\ný	\0\0\0\0°\0 \0\0\0\0
ëð\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ðð\0\0\0	ûÿûûÛ»¿¿ß¿ý»ù½½¹ûËý­©\r À	\0É
	\rð»Ëëðû¿¿\0\0\0\0\0Ð\0\0\0	ï\0
\0\0\0\0\0\0\0\0\0\0\0\0\0
\0\0\0\0\0\0\0\0\0 \0\0

\0\0\0\0ÿ¿½¹ûÛÛÛûû¿½ûÿ¿¿ùù©¹\r
	\0	\0\0\0\0\0 \0
¼ùéà\0\0\0\0°	éà\0\0	© \0\0\0	\0	\0\0\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0Ð\0\0\0\0\0\0\0ûÿ¿¿¹½¿¿¿ÿÿ¿½ûÛß\r
	\0ð\0\0 
\r	À\0\0	\0\0¿¿\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0	à\0\0\0\0\0\0\0	\0\0«\0\0\0\0\0\0À\0\0°\0\0\0\n\0\0\0¿¿ÛûûûûûûÛû½û½¿

ÚÙ\0\0\0\0\0\0\0\0\0\0\0
\0
ùé­\0\0Ð\0	\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ð\0\0\0	à\0\0\0ÿûûù¿½½¿ÿÿ¿ÿ¿ß½½½­	À\0	\0\0°\0\0\0\0\0ÀûûÐ\0\0\0\0\0\0\0	\0\0\0\0\0	\0 \0\0\0\0\0\0\0\0\0\0	\0\0\0à\0\0\0\0\0\0\0	 \0		à\0\0\0\0¿¹½½¿¿½¿¿¿¿ù»
ð¼°\0°Ð\0\0\0\0\0\0\0­\0\0¼½«ú¾°\0\0\0\0\0\0	\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0à\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0ÿ¿¿¿¿ûÛûûù½
©	­\r\r	\0 \0À\0\r\0\0\0\0\0\0\0\0ð\r\0Ð\0\0\0	\0\0\0	\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0
\0\0
ù©	\0\0\0	ûû
û¿¿ÿ½¿¿û¹Ë­°°				\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\n\0\0\0\0\0\0	\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0°ðà\0\0\0\0¿¹ûÛûûÛûû»ÿ½½¹Ð¹\r\n
É	É©\0¼\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0		\0\0\0\0\0\0\r\n\0\0\0\0\0\0	\0\0	\0\0\0\0\0\0\n\0\0
\0\0­½©	\0\0\0	ý½½¹û¿¿ûßûÿ¿¿
Ð\r\0ðÐ°Ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0°\0	\0\0\0\n\0\0\0\0\0	\0\0\0\0\0\0\0\0ð\0\0\0\0\0\0\0\0\0\0\0­©\0\0\0\0\0û°¿¿ùûûù¿ûûù½½°ð		é\r		© \0\n\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0	\0\0\0\0	\0\0\0\0	\0\0\0\0\0û	\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0úÛ \0\0\0	ûÛù¿ùùûÿ¿ÿ½¿ûðù­	
°ÐÐÀ\0\0\0\0\0\0\0\0\0\0À\0\0\0ð\0\0\0\0\0\0\0\0\0\0\0\0¼\0
À\0\0\0\0\0\0½\0\0\0\0\0\0\0\0\0\0\0\0¿Ê\0\0°¹ûù¿¿¿¿ùûûÿ½¹éÛ	°ð	
Ë
\0À\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0	\0ð\0\0		\0\0\0
\0À©\0\0\0\0\0\0\0\0°\0\0\0\0\0\0\0\0\0Ð\0\0ÿ\0\0\0\0\0½¿¿½¿¿¿ù¿¿¹éùéÉ			é\r	©
\0\0úÚëË\r­\n	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
\0\0\0\0	\0\0\0	í\0\0\0\0\0\0\0\0\0 \0\0ù¿\0\0\0\0
ÛÛ¿»Ûûûûÿÿÿ¿ýÛ½½°Ð¼°\0ðÚÎ©ËËéé­¼¯¾¿­¿	ðð\0	\0ð\0\0	\0	\0\0ðÐ	\0\0\0\r \0\0\0\0
\0\0\0\0\0\0 \0\0\0	úð	\0\0\0\r»ûÛ»ÛùûûûûÛ¿»ÐùùÛ			\0¹\0Ú\r©\n\0à \0\nÀàðÀðÐÚ\0ÚéË	\0		\0\0\0\0\0¿ð\0\0
\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ð\0
ËÛàà\0\0\0
½¹ûûß»ûùÿ¿ÿÿÿý°Ð\0 ½°	\0àà\0\0
 ¬éÉé\n\0
\0\0\0\0\0\0\0\0\0ÿ°\0\0\0\0\0\0
\0\0\0\0\0\0\0\0\0\0\0	ûð\0\0\0¿½ùû½½¿ûÿ¿û¹¹	ùÙ	\r	\0É©	©	©\0ðÉ\0\0ðÚ\n\0\0©àÀ\0É\0\r		À	\0\0\0\0\0\0ÿð\0\0\0\0\0\0\0\0­\0\0\0\0\0\0\0\0\0\0¿
\0\0\0\0Ûûùû»ûß¿¿¿ûÿÿÛ
\0Ð©\0À\0¼\0¬ÊÊ\0\0	\n°\0\0	\0\0\0\0\0ÿð
\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
éð¼\0\0\0»ùûùÿ»ùÿùù¿¿ÿ¿ùùéë\0©	\0©©©­°Ð\n\0©ÊÀÊÀ\0\0Êéà\0ÀËÀ¬\0Ð\n
\0\0\0\0\0\0ÿð
\0\0À\0\0\0\0¼\0\0\0\0\0\0	\0\0	\0\0		ý¿¿¿»ÿ½û¿¿ÿÿÿÿ¿ÿý½½\0\0ÐÉ	\0°		\0\0\0\nÀ¼\0\0ð °\0 \r\0\r\0\0\0\0\0\0\0ÿð\0\0	\0	\0\0\0ð\0\0\0\0\0\0\0\0\0\0\0þ½ÿïß¾ûû¿¿¿û¹ûù°ÿ¿ÿÿÿÿÿûÿí°			©¼¼©ÀÀ\0\nÀ\0à\0É\0é\0\0ÐÉ\nà\r\n		\0\0\0\0\0ÿý\0\0\0 \0°\0\0\0\0\0\0\0\0\0\0\0¯ÿ¯Ûÿÿùûý¿¿½û	é	¿ÿÿ¿ÿ°ûðûà\0\0\r	©É	é©\0à\0à ¼\0\n\0àÀðÀ°\0ÉÀ\n\0\0\0	\0\0\0ÿð\0\0\0	\0	 \0\0\0\0\0\0\0\0\0\0\0\0ïÿþÿý
ùûùûÿ¿¹ù		
ïÿÿÿÿÿ¿ùÿþÛü\0¼\0	\0\0\0Ê\0ÀÀàðÉ¬°	\0éà \0àÉ\0	\0\0\0\0\0ÿð\0	\0	\0\0\0
À\0\0\0\0\0\0\0\0\0\0\0\0ÿ¿ÿùûÿ°¿¿ûûûÛ\0\0¿\0\0\0	°\0\0\0	©­\0Ð	¬\0À	 \0Î\nÉ©\0ð\0	¼ 	éÐ\0\0\0ÿû\0\0°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ß¿þÿÿÀ¿¿¿û¿
\0			°¹Ú\0\0\0\0	ËÚ	\0ð¼¼\0à­ ¼\0Ë\r É\0Ê\nÐÚ\0	\0ð\0\0¿ü\0
À\0ð\0\0\0¹\0\0\0\0\0\0\0\0\0\r\0\0\0ÿ¯Ïûÿÿ
ûûý¿¿¿ù½¿¿ûß				\0éé	¹©\0é	\0\0à\0Êí°ÚÛÊ\0ï°Ú°é©À\r°É

\0\0\0ÿÿ\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0ûÿûÿÿð¿¿½¿½»ûð¹ÿùù¿¿½¹¹é°
	\0	éàÐ	
ðùÛ¼¼­°	\0	Ú		\0	\0\0ÿù	\0		\0\0	
\0\0\0\0\0\0\0\0\0	\0\0	þßÿþÿ\0ûûûÛûûÛûÛÛû¿¿ûÛÛß½½¿Ùé
Ð	é	
			©à
\0	\0\0\0 
\0°\0	\0ð°\0ð¼ð	\0ÿÿ\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\nûþ¿ÿ
ÿ½¿¿¿½¿	ùûÿÿÿÿûûù«	ð	\nÐÚÐ¼	­	\0
ÚÛÛûÛùûÿ¿ùûÿ½°ÿûùûÿðû¿¿\n\0ÿÿ\0\0\0\0\0
\0\0\0\0\0\0\0\0\0
\0\0\rþÿÿÿð¿ùûûûÛûù¹

Ëÿ¿¿¿¿¿ùù¿ÛùÉ°¹\0		©\0°	\0ÿÿÿÿÿÿÿÿÿÿÿÿûËÙÿÿûÿÿùý¿ð°\0\0ÿÿ\0\0\0\0\0\0\0
À\0\0\0\0\0\0\0\0\0\0\0
ý¿ÿÛ\0ÿÿ¿ûÛûÛÛË	Ðûûÿûÿÿùù«Ù©À
Ð
Ð©à¿¿¿¿¿¿¿¿¿º\r  ðé¬\0	à\0°\0\0\0ÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
\0\0ïÿþ¿ÿûÛ¿¿¿ûûÉ©ðÿÿ¿ûûÿ
É©À°É	 \0Ð	\0\0\0\0\0\0\0\0\0\0\0ýé\nÐ\n	
\0	
\0\0\0\0ÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¿ÿðÿûûß¿¹ùð¹		Ûûûý¿ÿù¹ð°		©	©\r©­¹©	©\0\0\0\0\0\0\0\0\0\0ºÀ©\0\0\0¼	À\0\0\0\0¿ÿ\0	\0 \0\0\0\0\0\0\0\0\0\0\0\0\0¬\0\0ÿÚÿÐûðû¿¿Ð©©ÿ¿ûûûÿ	\r
©É©ð©\0\0	 \0\0¬\0 \n\0\0©¬	
\r			\0
\0	©\0\0ÿÿð\n\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0ÿþ¿ð\0\0\0¿¿¿ûûûùù©°É«ÿ¿ÿÿù°¹

\0°
\nÛËË	\0Ð \0	 \0©\0\0Ð	À\0­\n\0\0\0\0\n\0\0\0ÿÿ\0\0	À\0\0°\0\0\0\0\0\0\0\0\0°\0\0\0ùË\0
Ïý½¿½¿ûÛÛÉ°ûÿ¿©\rÐ\0¹	©	\0Ð\0\0\0\0 \0\0\0\0\0\0\0À\0\0\0\0\0		©	À\0\0\0\0\0ÿÿÐ\0	\0 \0À\0\0\0\0	\0\0\0\0\0À\0\0ÿ¾¼\0ÿÿûûùûûÛûûùð\r©Ë¿ùù©Ë		
ÚËÙéé¼©	\0\n\0\0\0\0\0\n\n\0\n\0°
\0	à¼\0Ð°\0	\0	 \0ÿ \0\0\0\0°\0\0\0\0\0\0\0\0\0\0°\0\0ðÐÐ½¿ùûÛûûÿ¿ÿðù¹ÿ¿¿¹ùûÙ°		¼¼	\0 \0Ð\0\0\0\0\0\0\0\0\n\0\0\nÀ\r\0\0	\0 \0	\0\0\0\0\0ðÿÐ\0\0\0\0\0\0Ð\0\0\0\0\0\0\0\0\0\0\0\0\0¼
ÿ¿½¿ûÛûûÿ¿¹ß½½½¿\r¹É\r\0©ù½
	\0\0©À	 \0\0 À\0\0	\n\0\n\0\0\0\0ð° \n\0\0ÿÿ\0\0\0	À	\0 \0\0\0\0\0\0\0\0\0\r\0	\0ððÿÛÿÿ¿¿¿¿¿ÿûÛûÐð¹ûÿûûý¿Ð°©	©©°ð¹\r	­\0\0	\0\0 \0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0ÿÿ\0	\0\0 \0	Ð\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ
ÿ¿ûûùûÛÿÿ¿¿ûÛÛ½ù¿ÿ¿ÿûý¿	 ÚÉÙé\r\0\0Ð\0\0\0 \0\0\0\n\0\0à\0 \0\0	\0	 \0ÿð\0\0	\0\0\n°\0\0\0\0\0\0\0\0\0
\0
ðÿÿÿùùûûÿ¿¿ÿÿ½ùûÙ	ù»ûûûÿ¿	É\0	\nðú°	\0Ð\0\0\0\0\n\0\0\0\0\0\0\0\0 Ú\0 \0\0û\0\0\0\0		À\0\0\0\0\0\0\0\0\0\0\0þ\0
ÿ¿¿¿ûûÿÿûÿ¿½¿¿ùùÿ¿ÿ¿\nðÙ
Ùéð©\0		\n\0\0\0¬\0\0À\0\0\0ð\0\0 \0 ©\n\0\0\0\0ÿ\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0©\0\0\0ÿð\nÿ¿ÿ¿¿¿ÿÿÿùûÛÛÙùû¿ûûÿûÙù©\0°ð½	©À\0\0\0\0\0\n\0\0©\0\0\0\0\n\0\n\0 \0\0\0	\0\0ÿÿ\0	\0\0\0
\0\0\0\0\0\0\0\0\0\0\0°þ	ÿÿûûûÿÿûÿ¿¿½¿¿¿½¹ÿ½½ûÿ¿°\0		­
Ùé©ÚÐ©\0	é
\0\0\0\0\0\0 \n\0é\0\0ð\0\0\0\0			\0\0 \nÿÿ\0 \0\0\0\0\0\0\0\0\0\0\0\0à\0\0\0ÿËûû¿½¿ûûÿûÿûÛûÛùûùùûÿ½»Û°©	© ¼é	\0¼\0	\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0 \0ÿý\0
\0	\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ¿¿ý¿¿¿¿ÿûÿÿûùûÛùÿ¿¿ûûÿûÛ		\0ðÐÛÙ¹éÊË
\r\0\0	
é\0\0\0\0\0\0\0\0à
\r°
	\0\0	\0\0\0\0\0ÿÿ\0\0\0\0\0½\0\0\0\0\0\0\0\0\0\0\0\0éÿÿß°¿ùùûÿ¿ÿÿûÿ½¿¿ûûÿ¿ÿ¿½¹É\0\r		©°¹ð°	\0\0¹\0\0À\0\0\0\0\0\0\0\0\r\nÀðÀ\0	\0\0\0\0\0\0ÿÿ\0\0	\0\0\0Ú\0\0\0\0\0\0\0\0\0\0\0	\0ÿ¿ÿ»ÿ»ûûûÿ¿ûÿûûùÛ½¿ÿûÿûÿûÛ	à°ÙÉéÉ\r	É
\0\0	\0
¼¼¬\0\0\0\0\0\0\nÀ°\0\0\0\0\0\0\0\0ÿý\0\0\0\0	 \0\0\0\0\0\0\0\0	\0\n\0ùïý½¿½ûÿÿÿÿÿÿ½¿¿ûÛÿ¿½û¿ÿ½©	\0\0ð©ù°ð°Ð	\0\0\nÀ\0\0\0\0\0\0\0\0ÐÀ¬\0\0\0\0\0\0\0\0\0\0ÿÿ\0\0\0	\nÐ\0\0\0\0\0\0\0\0\0 \0\r\0ÿÿ¿ù©ÿ¿½¿¿¿¿¿ûûù¿½¹ûûûû¿ÿûÿ	\0	ðÐÚÛ	Ð°Ú\0\0ùëÉ­© \0\0\0\0\0\0\0 
àÚÐÀ\0	\0\0\0\0ÿü\0à	\0\0\0\0\0\0\0\0\0\0
\0þÿ¹ý¿½»ûÿÿÿÿ½ûÛÿ¿ÿÛÿÿÿ¿¿û		\0é	°°Úù
			\0\0À\0À\0\0\0\0\0\0	àÐ  ©\0\0	 \0\0\0\0ÿù\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0ð¿¿ß°ûÿ¿ûûûûÿ¿ûù¿¿ûûûßÿ¹ð°À\r\0­\r	¼°°À Ð\0\r	¬¼¼¼ \0\0\0\0\0\0	 \0½°\0
\0\0\0ÿð°
\0\0°\0\0\0\0\0\0\0\0\0\0Ð\0\0þÿËû	½ûÿ¿ÿÿÿûý»Ûùû½ÿ¿¿ûûÿ\0°É©­\0
ËÊ	Ù 	\0¼\0\0\0\0\0\0\0\0\0\0\0	\0éà\0\0	\0\0\n\0\0ÿð		\r\0\0\0\0\0\0\0\0\0°\0©\0ÿùÿ¿ùùû¹ûÿ¿¿¿¿ûý½
¿Ûÿ¿¿Û	\0		\0		©ð			 	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0à\0\0\0	ÿð\0\0\n\0 \0\0\0\0\0\0\0\0\0\0\0\0\0¯ÿÿ¿¿Ûÿûûÿÿÿÿ¿ûù­»Ûûÿ¿\0\0°ÉËÉ	¼½©Ê\0\0°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 ÿð\0
\0Ð\0Ð\0\0\0\0\0\0\0\0\0\0\0\0 \0ÿÿÿûÿ¿
Û½ÿÿ¿ÿ¿ÿ¹ù­¿½ûÛÚ\0É\0ÚÉ\0\0	É\0\0\0°\0\0\0\0\0\0\0\0\0\0\0\0ð	\0\0\0\0\0à\0\0\0\0\0ÿð	À\0
\0\0\0\0\0\0\0\0\0\r\0\0É\0ÿÿÿÿù	ûÿ¿¿ÿ¹ÿ¿¿©


ÿ¿û				\0\0é\r­¼à°À\0	\0Ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿð\0\0\0\0Ð\0\0\0\0\0\0\0\0\0
\0\0°\0ÿÿÿÿ\0¿ûÿÿ»©ÿÿÿ¿À­Ûÿ½½\0\0\0\0ð\0\0\0\0é	\0\0\0\0	 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	à\0\0\0\0ÿð
\0\0°\0\0\0\0\0\0\0\0\0\0\0\0\0\0¿ÿÿ¹°	û¿¿¿ù\0
			\0°\0¿ûÛ	\0\0\0\0\0\0\0\0\0	\0\0\0Ð\0\0\0\0\0\0\0\0\0\0\0ð\0\0\0\0\0\0\0\0\0\0\0\0ÿð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ¿ù°ù	\0ÿûÿÿ\0\0\0	\0ÿ¿ûÚ	 \0\0\0\0\0\0\0é\0\0\0\0\0\0°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿð	É	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿ	 ð\0¿û¿ûûÿù
\0\0\0\0\0°ûÿ½©	\0		\0\0\0\0\0\r­©à\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0	©\0\0\0\0 ÿð¯\0 \0\0\0\0\0	\0\0\0\0\0\0\0\0ð\0ÿÿùÙ	¿ÿ¿ÿ¿¹Ð	À\0\0	\0\r
¿¿Û	À	\0\0	\n	\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0°\0\0\0\0\0\0\0\0\0\0\0\0ÿð\0\0\0\0\0\0\0\0\0\0	\nÐ\0\0 \0ïÿÿù	 \0\0ûûÛÿÿûÛ	\rÿ¿ °
À°¼½ý\r\0\0	\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0ÿðÏ\0\0\0\0	\0\0\0\0\0\0	\0\0\0Ð\0ÿÿð\0\0¿¿¿½¿¿¿¿½½­	à¹­\nÿ»ùÙÀ¹ï	©à\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ¿\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0°\0\nÿÿ		\0\0Û¿ûÛ½½ûÿûûùÿÐßù©é	\0©Ê¾	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0	\0
\0\0\0\0ÿðÿÀ\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0ð\0ýÿù\0\0\0\0»ß¿»Û¿½ù¿©­©é°­¹ð\0		©ÊÉ\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	À\0\0\0\0ÿ\0ÿ\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0ûà¿ð\0\0\0\0ûûßÐù¿	°ÛúÙ¹	©\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0°\0	\0\0\0ÿ\0ÿ\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0à\0ÿð\0\0\0¹¿¿ûÛ¹É
\nÐ
\0ÛË\rºÚÚÐ	\0\r\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0°\0
\0\0ÿ\0ÿ\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0ÿ\0\0\0\0Ûÿÿ½½©\r©	É\0

\0°Û½Ú¿\0Ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0­©\0\0\0\0\0
Ë©\0°Ú\0\0À\0\0\0\0ÿ\0ð\0\0°	
\0\0\0\0\0\0\0\0\0\0\0
	©ÿ\0\0\0\0\0¹û»ÿûð¹é\0 	ýÉ»Ùéðù°°	\0\0\n\0\0 \0\0\0\0\0\0\0ÚÛÀÀ\0\0¼¼©É¬©\0\0\0\0ý\nÐ\0	À\0\0\0\0\0\0\0\0\0\0\0\0\0
\0\0àÏð\0\0\0	ÿû½½© Éð°°°¿­¿¿ÉÉ\0É©É	\0	\0\0\0\0\0\0¾\0\0à
­«\0Àºð\0\0\0\0\0\0ÿ
\0\0\0
\0\0\0\0\0\0\0\0\0\0\0\0\0\0¿ÿ\0\0\0\0Û¿¿¿ÿûûùûùÙ	¿ùëÛùùù­¹©\0Ð\0\r \0\0\0\0\0\0\0\0ééééà\0	éëË\r	
\r	\0\0\0\0\0\0ü\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿð\0	\0\0\0	ùûý¿¿ÿ¿¿¿¿ûùý¿½½¿¿¿ÛÚÚð
	¬°\0\0\0\0\0\0\0\0ÚÛË\0\0¼¼ùË
\0éëà	\0©\0\0\0\0ý\0\0\0À\0\0\0	\0\0\0\0	\n\0\0	\0
Ï\0ð\0\0\0		¿¿ûûÿûÿÿûßùÿ½¿ûùûÛûÛùý©é	ð\0\0\0\0\0\0\0\0\0¼¼°\0\0
éúÐ\0½­	\0À\0\0\0\0\0ð\0\0ð\0\0\0\0\0\0\0\0\0	\0\0\0\0ðð\0\0\0\0
ËÛûûÿ¿¿ÿ¿¿û¿ûÛý½¿¼¿ûÛûð

\n		\0\0\0\0\0\0\0\0\0
ËËÊ	
ÚðÚ¼\0\0	\0°\0\0ð\0ù\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0¿ÿ\0\0\0\0\0Ð¿ûûÿÿûÿÿ¿ÿ¿ûûÿûÛùÿ¿ùÿ\r°°ÉÐ\0\0\0\0\0\0\0¾Ë¯­¼¼ððð\0­é	
\0\0\0\0\0ð\0
ð\0\0
\0\0\0\0\0\0\0ð	\0\0\0\0\0í¯\0\0	\0°Ûÿ¿ÿûûÿÿûÿûß¿ý¿½½ù¿ËËÚ­©°\n\0
\0\0\0\0\0\0\0\0
Ë\r Ð	¯\n¼°ð\0\0\0°\0\0\0ð\0\0\0\0\0\0\0\0\0\0\0\0°\0\0\0
\0\0
ÿà\0\0\0\0	é¿ûý¿¿ÿÿ¿¿ÿ¿ûß»ûÛûûÛù½¿¹ð©Ú\0\0\0\0\0\0\0\0\0\0ùëËþ¿éË\rëÉ\0ééÀ\0À\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0­\0\0ðÿ\0\0\0¹û»ùÿ¿¿ÿÿûÿ¿ûßùûùéùûûÿ
ù\r©­	­		\0	\0\0\0\0\0\0\0\r ùéé\0ð¼¾©\0¼°\0°\0\0\0\0\0ÿþ\0\n\0\0\0	\0\0\0\0\0°	\0\0\0\0\0	ÿð\0\0\0\0\0¹ûÿ¿ÿ¿ÿÿ¿¿¿ûß¿¿¿¿»ÚÛÐ½ù
°°Ê\r\0	\0\0\0\0\0\0\nÏÚùÊÐððºÛÀ°\0\0à\0\0\0\0ÿù	\0	\0\0\0\0\0\0\0Ð\0\0\0\0\0\0\nÿð\0\0	\0	¼¹ûÿûÿ¿¿ÿÿûûûßùùùûùý¹ùûð¹°½	©Éé\0	\0\0\0\0\0\0\0\0û­­­¾	¼°À\0\0	\0\0ÿð\0\r\0\0\0\0\0\0\0\0\0	\0\0°\0\0Ðÿð\0\0\0\0ù¿¿¿¿ÿÿ¿¿¿ùÿ¿¿¿¿Û¿ûÛÛÚù	ÚÐ°		\0\0\0\0\0\0\0\0\0¼úÛëËëÛëÛí¼°¾\0	\0\0\0\0\0¯ÿù©\n\0\0\0\0	\0\0\0\0\0\0\0Ð\0\0\0¼\0\0\0\0¹ÿûÿûûÿÿÿÿ¿ûûÛÛÛûÿûí¹û
½©\r©	©Ú\0\0\0\0\0\0\0\0\0\0Ë\r¬¼¼¼¼¼¼°°ÉËÉð\0\0\0\0\0\0\0\0ÿð\0	\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0ÿð\0\0\0\0½»û¿¿¿ÿûûûûÿ¿ûûûÛÛÛ¹ùù
ÚðÐ\0Ú\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\n\0	\0ð
\0\0\0\0ïÿð	\0\0	\0\0\0\0	\0\0\0\0\0ð\0\0
Ð\0\0\0\0\nÛÿûÿÿûÿÿÿÿùÿ¿¹ùùûùÿ¹ÿ¼°\r
	©		\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0ÀÿðÐ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0­Ëà\0\0\0	
Û¿½ûûÿÿ¿¿¿¿¹ÿ¿ûûûÛÛ¹¹ùéù	ÚÐ\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0à\0\0\0	\0\0\0\0\r\0ÿÿð\0\0\0ð\0\0\0\0\r\0\0\0\0\0ð\0\0°ß\0\0\0\0\0¿¿ÿ¿¿ÿûÿÿÿûÿÿûß»ß½¿°ûÞù©ÉË
\0Ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¿ûÐ\0	\0\0\0\0\0\n\0\0\0\0\0\0\0\0ðð¿Ð\0\0Ùù¹ûÿ¿¿ûûûû¿¿»ß¿¿½ù¹½½Ú	
	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0ïà\0À¼\0\0	\0\0\0	\0\0\0\0
\0\0\0ÿ½ÿ \0	 ¿ÿùûÿÿÿÿÿÿß¿ûÛûùûÛÚÚ¹©©\r
	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0	\0\0\0\0\0\0ßÿù\0\0\0\0\0\0Ð\0\0\0\0\0\0\0ÿ¿Ð\0\0\0	
ß»¿¿¿¿¿ûÿ¿¿»ß¿½¿½»í½½ÐÙÉ
\r\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0É\0¯Ëà	 \0À\0\0\0\0 \0\0\0\0	\0\0\0ÿù­ \0\0\0¼»ßß¿ûÿÿ¿ûûÿ¿ûùûûûûÛß
	­©°°ð		É \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ú\nÚÀ	À \0ÿÿù\0\0 \0\0\0\0\0\0\0\0\0\n\0\0\0ßÿ\0\0\0\0	û»ÿûûÿ¿ÿÛý¿¿¿½»ù½ùÛÚÉÉ\0Ð\0À	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0 	\0\0\n\0\nðÿð\0\r\0\0\0	\0\0à\0\0\0\0­\0\0\0¾ÿïð\0\0\0	­»ýûÿ¿ÿûÿ¿¿¿½½¿û¿½é©©©Ð \0		\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0°\r\nÚ\r\n\rÿþú\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ëûù
À\0\0\0\0
½û¿ûûû¿ûûûÛûÿ¿ý»ÚûÛÛÛÙ©é		\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0
\0\0\nÿý\0		\0\0\0\0\0\0\0\0\0\0à\0\0\0ýïí\0\0\0¿û½ûÿ½¿¿ù¿¿Û½½¹¹°°ÚÉ \0	\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0Ú\0	 Ð\n\0ðÿð\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0ïÿ¿é\0\0\0\0\0¿½¿ÿ¿½ûûûûÛÿûý½»ÛÛ\r­­°É \0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\n\0\r\0 	À
ïðú\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¿¯Þ\0\0\0\0¿½»ß¿¿¿½¿¿¹½û¿½¿
ÛÛ
À\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0\nð	ÿÿéÀ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Þþßÿð\0\0\0\0\0\nÛÛÿ»Ûùùûùûû»ßù½¹°½©À©
	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0 \n	\0\0\0ïù\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0¯ÿÿï\0\0\0\0\0\0ûù¿ûûûùûùÿ¹ý¹¿Û¹\0\n\0\0\0\0\0\0\0\0\0©Ë¼¼
\r¬©\0	É	\r\n\0\0\r\0\0À\0\0ÿûð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Þ½ëÿ\0\0\0\0\0\0
ËÛý¹ûÛûùûûû¿½½½¹¹\r­\n	À	\0\0\0\0\0\0\0\0\0\0\0¾½¼úËÚðÐ
Î\rð\0\r\0\0 À\0\0ÿþ\0Ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0¯ÿÿð\0\0\0\0\0\0\0¿¿ûûÛûûÛÿÛÛ°¹Ú¬°Ð\0\0\0\0\0\0\0\0\0\0\0\nËéùà¿¬¯°û
É ½©°\0Ê\0\0\0	\n\0þÿ\0	 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿþþÿ	\0\0\0\0\0\0\0\0ù¿ÛûÛÛûù¿½»ÛÚùÐ\0		\0\0\0	\0\0\0\0\0\0\0\0\0ÚÚÛü½­¼þÚÚÚ	ëË\0ð\0\0 À\0\r¯éÿß	\0\0°	\0\0\0\0\0\0\0\0	\0\0\0\0éÿð­\0\0\0\0\0\0ùù¿¿½¿¿ûÛ½½ðù°É		\0\0\0\0\0\0\0\0\0\0\0\0¼½­«Ë¯©°°ðË\0\0É\0\0\0Ëÿ¯\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿ\0\0\r\0\0\0\0\0\0\0\0©ùùûûÛûÿ½»ÛºÛ
À\0\0\0\0\0\0\0\0\0\0\0\0\0\0¾¼¼ð½¼½­¬°àðð°À\0\0\0\0\n\0½þúßÀ\0\0\0\0\0\0\0\0\0\0\0\0\0\0þÿà\0ÿ\0\0\0\0\0\0\0	 Ù
½»ÿ½»ÚÙð¼\0		\0\0\0\0\0\0\0\0\0\0\0\0\0	éËééðúËËðùéúÉ©À\0\0	\r\0ï¯ýë\0\0	\0¬\0­\0\0\0\0\0\0\0\0\0\0\0
ð\0\0ðð	\0\0\0\0\0	\nÚÛÛ½¹¿ù¹½¹Ë	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¼¾­ð¾¬Àð\0üÀ\0¬\0\0\0\0¿ßþ½	
\0		\0\0\0\0\0\0\0\0\0\0\0ÿ\0\0\0\0ï¼\0\0\0\0\0\0\0	\0©»ÛÛùÚù¼°	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
Ëððð¼
éðùË¼
Úé
Ë\0\0\0à\0\0\0ÿ¯ÿþ\0\0
\0À\0\0\0\0\0\0\0\0\0\0\0\0Ï\0\nÛé\0\0\0\0\0\0	\0\0\0¼
¿\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
Àðððú\r ð¯À°é¼\r À\0	\0ÿÿ¯ý\0\0°\0\0\0\0\0\0\0\0\0\0\0\0\0¿\0\0¼ü\0\0\0\0\0\0\0	\0\0	©ùé¹	\r
Ê	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À¼¼»ÚÚ¼¼ÛËí°ù
ÏêÚ\r
\0\0\0\0\0\0\0ÿÿï\0\n©\0\0\0\0\0\0\0\0
\0\0\0\0\0þðÿ\0
ïé	\0\0\0\0\0\0\0\0	\0\0	\0			\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
ËËü¯
Ï¾ºÚÚÐ­©¬½ú\0ð\0\0\0\0	\0\0þÿÏÿ\0\0\0
\0\0\0\0\0\0	\0\0\0ÿÿð\0ý¾\0À\0\0\0\0\0\0\0\0\0\0	¼¼¹\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¼¼½¯\0½­©\r\r­°û\nÚÚÐ°\0\0\0\0\0\0\0\0\nÿÿÿÿ	\0à\0\0	\0\0\0\0\0\0
\0\0\0\0\0ü¿à\0¿ïíé\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÚËÊðÿððüþ¾¼­¬
Ð°\0\r­¯¿Ï­ÿþûïà\0\0\0\0\0\0\0\0\0\0\0\0\0\0¿ÿ\0íûÿ°\0\0\0\0\0\0\0\0\0\0\0\0		\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ûïÿÿßéïïûëßßÿÿþÿÿúÿÿÿûËÿÿÿ¿Ûÿþÿÿ	©\0\0\0\0\0\0\0\0\0\0\0\0\0\0þþ\0\0¿ïÏí\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Àüûþúÿùÿþßþúþðûÿùûÿûÿÿÿÿûÿ¿ÿÿþÿï\0\0\0	\0\0\0\0\0\0\0\0\0	\0\0\0ÿý\0\0þÿûÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¯ûýïÿÿßïïÿëÿÿÿÿÿÚÿÿûßÿ¿¿ÿÿÿÿÿþÿÿÿÀ­\0­\0\0\0 \0\0\0\0
\0\0\0\0\0þþ\0ûÿþð	\0\0		\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\nþþþùþúÿÿÿúÿÞðï¯ÿÿûðÿÿÿÿÿÿÿ¿ÿÿÿÿïï\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿð\0
íëÏÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ð\nýÿÛþÿÿÿß­ïïßïûÿù¿ÿùÿ¿ÿÿÿÿÿ¿ûÿ¿ïÿÙ\0\0\0\0\0	\0\0\0\0\0\0
\0\0	\0\0ÿ\0\0ÿÿÿðÚ\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0à\rûëïïþþ¾þÿ¿ßþ¿þý	àðûÿÿûÿÿÿÿÿÿÿïÿðÉ	É\0\0\0\0\0\0\0\0\0\0\0\0\0\0þ\0\0¯ïïïïýýà\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0þþÿÿùïýûÿïëïÿËàÐÿÿÿûÿÿÿÿÿýÿý\nÿ°  \0\0\0\0\0\0\0\0\0
\0\0\0\0ð\0ßùÿÿ	þúùé\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0îÿÿ½ÿÏïÿþþþüÿÿÿ°ÛÛþÿ¬ûÿÿÿÿÿð\0¿ÿ¯\0ïÿÀ\0\0\0\0\0\0\0\0\0¬\0\0\0\0\0\0ð\0¯þýéïûýþðË\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ëùúðþþ¾ûÿïïûýûýïËÏúÛÚÚÿÿ¿ù	ðÿÿÿþÀ\0\0	\0\0\0\0\0\0\0\0\0\0\0À\0þÿúþÿ	þþÿ°À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0­ïíïýÿÿþÚý¿Þúþúÿÿù½¾¿íéé\0 ÿï\0ï
þû\0ÿðÿðÐ	à\0\0\0\0\0\0\0\0\0\0\0\0\0ïð\0ÿÿÿÿïÿðÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0©ïÿÿÿÿþ¾Þÿÿÿïïÿÿÿúþþ¼\0ÚÛðùÉ\r\r¾ù\0ÿþÿÿÀ\0\0\0	\0\0\0\0\0\0\0\0\0\0	\0\0ÿÀ\0þþëÀÿþïð\0
þÐ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ëÏíïïËïïÿÿÚþþÿ¿íïÏïÛýÿ½\0¾é\0\0©ïÿ°	\0\0
ïþÿ©\0\0\n\0	\0\0\0\0\0­\0\0\0\0\0ÿ°	ïÿÿÿßðÿÉÿÿ\0\0\0Ëí¾Ú\0\0\0\0\0\0\0\0\0\0\0\nÞðÿûý¿ÿûýïïïûßüþ¿ÿûßþþþÞ¿ýþÏ°Ð	ïí°	ÿÿÐ\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0Þ\0\0ÿþÿïïéà¾þü°\0ðÿïÏ­	É\0Ð\0\0\0\0\0\0üúßùíïïïïÏï½ûÿþúÿýÿëïïïÿûÿýïéðù\r	°ðþûÀ\0ÿïïà\0ð\0\0\0\0\0\0\0\0\0\0\0\0\0¯\0ÿëÞ¿ÿðýÿÿ\0ðÿÿÿé\0\0\0À°À¯Ëïþüëÿÿýÿ¿ÿïíïÏÿúþþýÿûÿðþþþ¿ÿËðé\0­\0¯ÿ­ÿé\0	
ÿÿÿ		\0 \0\0\0\0\0\0\0\0\0\0\0üïÿÿßïðïï\0­ïËïÚþÿ	\0\0ðÿÞðëÿÿýëÿ½¯Þþþþüÿÿÿ¿ïíÿ¿ÿïíëïýÿþð°\0		\0\0Ï¼àþþÿà\0ð	\0\0\0\0\0\0\0\0\0\0\0\0\0\0ð\0ÿÏïïÿ\0ÿÿÿï\0\0ÿ¯ïýÿ\0\ný¯ïýïËïÿþþï¿ÿßûÿëïïûÿþüúýÿýÿïïïïß		\0\0\r\0\0ùïðËÿÿù\0
	\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\0¯ÿÿÿðúïðð\0¬¾ðßÿþ¾ú\0úÿþþ¿ÿÿïïßðÿü¾þþüÿÿßíïïÿÿÿ¯þþÿ¿ÿÿúð¾\rÿé¿þÿ\0	ÿïð\0\0\0\0\0\0\0\0	 \0\0\0\0\0\0\0ü¯ïþ­ÿý\0\0ýïþÿÿý\0\0ýïïÿÿïï¿ßþðþÿÿÿÿÿüþ¾ÿÿùþüþÿ¯ûÿÏïéïÐ\r\0
àþí¯ð\0
àÿÿ\0

	\0Ð\0\0\0\0\0\0\0\0\0\0\0	\0ð\0ÿÿÿÿß\nðÿð\0\0¿ïÿÿÿïÉ	Êð\nÿßüþÿýïï¯ÿþþ¾ü¾ÿÿÿÿïïï¿ÿÞýþÞÿùÿÿú	ïÿÿðß	 \0Ðÿð\nð\0
\0À\0\0\0\0\0\0\0\0\0\0\0	à\0ÿï¾ðýëï\rï\0\0\0ÿïðþ\0þý°\n\rþ¾ûÿÛïÿÿÿþðÿýÿÿÿ¾þþúýÿÿþûïÿïÿ¿ïïïí\0üð\0	àþÛÉ\0ðþ\0À 	\0\0°\0\0\0\0\0\0\0\0\0\0\0\0	àÿéúþß\nþ¿éà\0ïïÿàýðÿïÿ\0\0ÿþþþÿïïÏïü¾þþþþÿûýÿûïíïþÿþûþþÿÿùÿþûðþÿ¾Ð	\0ðý\0ï\0\0Ð\0\0\0\0\0\0\0\0\0\0\0\0ÿÿðÿÿþ\rÿßÀ\0\nÛÿéý®þ\nüÿÿ	\0\0ïïÿÿÿÿÿÿÿððÿÿÿ½þÞþþþÿ¿ÿíÿïýïÿßïËÀéþ\0ýÏ©\0\0ððÿÀ\0\0	\0\0\0°\0\0\0\0\0\0\0\0\0\0ÿ\0ï¯ïþÿ\nÿï©\0\rïþÿþÿÛËÿï\0\0\0ÿßþþÞþ¾ÿïÿ¿ïÏïïÿÿÿýÿïïÿþþýþúÿÿ	¾ÿí­ïÿïþÿÐàð\0	\0	\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0þýÿÿð\0þ¿À\0ýÿïúþþÿ 			\0þþÿûÿýÿúÿþýìÿ¿ÿÿþúþþþßÿëïÿïûïÿùïííïûÏûÞÿ­ ©	ð\0þ\0\0\0é\r\0\0\0\0\0\0\0\0\0\0\0\0\0	\0	þÿÿïï\0ïÿ\0\0
ïþþÿðÿÿþÐ\0ðïÿÿüÿïïíïýþ¿¿ïïïïÿßûÿþüÿßþÿþÿþþùúÿÿìÿïëÞß\r\0\0\0\0\nÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ðïíÿïÿÿÿþ	\0ËïÿÿàïÉ°Ïùïï¯þÿÿÿÿþïïÿÎÿÿùÿïïïï¯ûÿïïßíûíÿÿíþúÛúÿÿëþðË\0\0¯ð\0\0\0\0
\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿûïÿéàÿÀÿÏ\0\0¯ÿþÿï\0\0ÿ	\0ÿþÿßÿÿÿïïïïÿþûßïïïßÿýÿÿþþûÿúÿþÿþþÿ¯ù\0Ïþÿéð¼­\0Ü\0ð\0\0
À\0\0\0\0\0\0\0\0\0\0\0\0\0\0þüûÊßíÿ\0þû\0ÏÚþÿÿÞ\0\0\0ÿÿÞÿÿïïïïÿÿÿÿïíïÿàÿÿÿëïïïÏïÿÿïïÿïÿëßðËÀ\0ÿÏþ	\0ÿ\0\n\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0
ÎÏÿþïðÿü\0\0¯ÿÞþÿ\0\0
ðù\0ïþÿÿÿýÿ¼þþðÿÿÿüÿÞþÿÿÿ¿ÿýþÞýÿþÿÞÿþÿ¿Ë¾þÿÏðð\0ÐÿÀ
\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ëÿïïÿàþÿþþ\0ÞÏëïÿþÐ\0\0àþùéïïïïïïÿÿÿï¯ïÿÿÿÿïÏïïïëÿÿïÏÿïÿïÐ\0úÛï½þÿÿ\0û­\0\0\0¯©\0	à\0\0\0\0\0\0\0\0\0\0\0\0\0\nðÚßÿþÿÿÀÿù\0\0¯¿ßûÏïðéððý\0\0ÿÿÿÿÿþþþüÿÿÿþÿ¾þÞÿÿÿÿÿÿþþÿÿþ¿Þÿéïýïïÿï	é\0À\0\0Ð\0	\0\0\0\0°\0\0\0\0\0\0\0\0\0	ÿ¯úþÿþþÿ
ïü¬\0ÿÎþü
ý©	ÊÀÿþ\0ðËîÿíïïïïÿÿÿÿÏïïßïÿÿ¿ïïÏïïïÿÿ¯íÿ¯Ú\0ùÀÿÿüûÀ\0À\0ÿÏð\r \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0þßÉ	ïÿÿÿê\0üùÿÿ¾\0	ïïúþþûÿÿßÿþþþþÿýÿþÞ¾þþÿÿÿÛýÿþÞÿÿþÿ\0\0
úþÿüðÿ\0\nÐ\nÿà°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0É¾ÿÿþúúÿùð\0¯þþËéÉà\0\0ïýÿÿï
ÐÏïïïíÿÿÿÿïïï¿ýÿýÿÏïïïíïÿßïíþüÿé\0
Ðþëý«À	\0ðý	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0úÏïþÿý\0\nüÀ\0\0Þÿÿù\0\0\nýúðÿÀÿà¿ÿÿÿÿþÞþþÿÿÿþþþþþÿÿÿÿÿÿþþ¿ÿïðþð\0\0ïùüûÞüð\nð\0		\0\0\0\0\0
\0\0\0\0\0\0\ný\0ðÿÿ¾ÿð¿ú\0¯\0þþÿÿ\0\0¯\0\0ïÿ¼Ïþþþÿïÿßý¿ïïïÿÿÿÿÿëïïïëïÿÞþÿÿËÛð\0\0ÿü\nÿé­\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0þÿàíïÿðïéÀ\0ïÿýþþü\0\0ý\0éÿïÀð¼¯ÿÿþÿþþþþýÿßþþþ¾þýÿÿßÿûïïÿðÿþ°ïïà\0ð\0ïëßï\0¼ð\0\0\0\0\0\0\0\0\0\0
\0\0\0\0\0\0\0ððÐðÿÿÿïàþù\0\0\nÿïïïÿÿðÀ\0\0\0\0¯ÿÿÀ\0\0\0ÿíïÿïûÿÿÿïïÏÿßÿßþüþ¾üþßÿðàÿðÙ	Ë\0\0ûÐÿð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0þùàþþþþÿÿð	\0À¯ÿÿÿþþ\0\0\0\0\r­ïþ¼	\0\0þÿÿÞÿþþþþÿÿÿþþÿïïÿÿÿÿÿÿï			ÿé°\0\0Ï\0ÿïïÿ\0ð\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0ððÿÿßÿÿÿÀð\0\0Ðþþþÿÿ\0\0\0þÿßð\0ïÿïïßïÿßÿÿïïïÿþÿÿþþþþþþÿÞÿþÐ°\0\0¾üþýÿü¼\0ïð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿþ¯\rïþþþþ\0\0ð¾½ÿÿüïíé\0\0\r	ï®ðÞÿÿþÿÿþßþþüþÿÿÿïÏÿïïÿÿßÿÿÿ¯ðÿÿÏ°ï\0Ð\0\rïïÿÿééàßà\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ûíÚÿïÿðü¼\0\0	þÚÿ\rëÿÚü°\0ÿ\0ð¯ÞÿïÿïïÿïÿÿÿüþÞÿÿþý¿ÞþþþþðÿþþÿÀ\0\0\0¾ý¿þú\0\nàð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0üÿ­¯ÿÿ\0ÿéëà\0üï\nþßïÿ\0Î¿\0
\0þÿÞÿÞÿÿþÿïïïïÿÿÿïïÿïïßÿýÿÿðééÿÿé\0ÞÚÏïïíí\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿ\0\0\0\0\0\0?­þ','Robert King heeft dienst gedaan bij het Vredescorps en uitgebreid gereisd alvorens een graad te behalen in de Engelse Letterkunde aan de Universiteit van Michigan in 1992, het jaar van zijn indiensttreding. Werd na het volgen van een cursus getiteld \"Selling in Europe\" overgeplaatst naar onze vestiging in Londen in maart 1993.'),(8,'Cuypers','Laura','Walenstraat 20','Rotselaar','3110','016 44 12 58','Coördinator Verkoop intern',3000,'5','23',1,'1993-01-30 00:00:00.000000','1958-01-09 00:00:00.000000','2',_binary '\'\0\0\0\0\0 \0\0 \0×
OLE2B26EA44\0PBrush\0\0\0\0\0\0 \0\0\0PBrush\0\0\0\0\0\0\0\00 0 191 222\0@T\0\0BMT\0\0\0\0\0\0v\0\0\0(\0\0\0À\0\0\0ß\0\0\0\0\0\0\0\0\0 S\0\0Ä\0\0Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÀÀÀ\0\0\0ÿ\0\0ÿ\0\0\0ÿÿ\0ÿ\0\0\0ÿ\0ÿ\0ÿÿ\0\0ÿÿÿ\0\0 \0\0\nÞ \0\0\0\r\0 \0\r¯	\0\0Ðð\0Ë\0	 \r\0	\0\0\0Ê\0É	à\0\r\0	éÉù	½­
Ú	ëÉ ð
\0\0\0ð\0\0\0\0\0êé \0\0\0\0\0\0\n\0\0\n\0°\0 à\0¾°àËË\n

	\0°	
\0 °\0À¼	\0«À\0\n\0¬ \0\0	 Ú\nûÊ
	é«Ú©\r	©À°\0\0\0\0 \nÚ\0\0\0ð°	ïÀð\0 \nð\0\0	à\0\0\r\0ëà¯\n\0Ú	\n©¼°\0  \0©\0\r\0\0\n\0
Ð\0\0\0à\0\0\0\0É©\0ûð	­
ù	ëë\nÀ©\0À\0Àð\0Ð\0\0\0\0\0\0\0©\0\0	ðº\nà\0\nÀ\0é°à\0	\n	\n\0\0Ðð	\0	 \n\0­\0à\0\0\0Î\0
ë\0
	\n
\0\0ð¾¹\0\0¼¾ð\0°\0\0 é\0\0\0\0\0\0\0ð°úÀ\0\0ð\0ðîÍï\0\0\0\0«	\0	­
ËÐúà\0\0\n	\0\r\0ð\0\0\0	é \0à\0\0ðÐÐ
Ë	à©¯É
é\n\0\n\0	\0\0ðà\0
\0\0\0\0
î¬­\0\0	\nð®ª \n\0\0®°Ú\0\0¿\0\0\n\n°\0	\0
\0\r\0
\n\0© \0\0\0\0©\0°¼	\0Ë	 ©À
ïð	 Û© 	À\0Ð\0\0® \0Ê\0\0\0°\0\0úúàðÀ
ÚÀÀ\0
à	\0\0\0	\0°\0ð¿	ðÐ\0\0°À¼\0À°\0\0\r\r	\0\nÚÐÐ\0 	\0\nÉ\r«ð\0ù\0°ððéð
	 \0 \0 
À\0°\0\0¯\0
Ð\0\0\0àð ì \0¬éÀ­\0\0\0­àðð  °\0\0É \0°\0\0©\0\n	\0º\0ððð\0ð\0¼\r úÚÀð\0©­­©é		 À\0ð­\0\nÀ\0	ð\0ï ®\0
­\n\0	°  \0\n\n°
éúÐ \0	\n\0	ÀÚ\0	à\0¬\0\0\0\n\0©\0À¯Ú		 ð	\n

Ë
Ë
ËË
	­\0\0\0\0ËÉ¬\0\0­¬ \0\0\0êÉ\0\0\0\0\0	à
\0Ð\0\0°		Ê\r	¿	é\0\0\0\0Ð\n\r\0Ú\0 \0À°\0\0ð	\0	
\nß©éðð­°­	\n	Ð°Ð©\0\0\0 ¼\0\0\0êË\0\0\0ï\nÐ\0\0\0ð¼¾\0\0\0ð\0\0\n	\0\0\0\0Ú
àùà\0\0¹	\0\0©
À¯\nð
\0ù\0\0º	\0ÿ\0\0É\n	ùé­
É Ùéé­­\r\0\0°ð­­à\0­ \0à\0àÊà \0\0\0¬
é\0Ë	\0©	\0ð°°	ë	\0\0\0°\0Ë\0ððÊ\0à \0\0À\0	\0Ë\0À	é¿	°é
\0¼\0
ð°

	É\0\0\0à\nË\0\0\0® \r\0\n¼¾®\0\0\nË\0à\0\0Ð\0	\0ðË\0½\0\0\0\0\n	­©	\0À\0\0\n\0\0 	°àÀ\0­¬ð°¼\nÉé
À	¼°ð\nÐÚð­ \r\0à\r¬à¾\nÐðà°\0\0à¬­®à\0é é\0°\n		 		\n\0ð°ðà		\0		\nÚ\0 	©\0Ê\0\0\0ð\0	\0ÙÊÀ°ÚÚ
ËË\r	­\0ûË\r¹­°°	\0 \0\0°¯\0À\0ð\0
°ð\r¯­©é\0\0í\0\n\0à¼\0ð\0°\0	é­ú		\0\0  \0	\0Éë\r\0À °à\n\0à	­\n	\n\0°ÊÉ¬
¼
	°ÐÐ°°°
Ê	\0ðð\0\n\0àð\0\0\0\0\0\0
À\0ðàêë\0¼Ú\0íí \0	¯\0©é©Ë\0\0\0\0Ð\0Ú¼\n\0°¬\r\0\0\0\0\r\nÀ	À°°ð¼\0°Úð é«
Àé\nÉð¹Úðð	­\0Ð\0ð
\0\0¯à°\0ðü\0	\n¾¬àþ¯\ré®à\0ªà­\0	 ÛéË\0\0
		\0\0\nÉ	\r\0\0°\0 \0\0 ð\n\0\0\0 ÀËËÊ\nËÉ Ð	À¹­¿\r©é ðÐ\0\0\0\0Ê\0\0¬\0\0Àð\0ë\0\0ÊÚ\nÎ\nà\0îÏ	\n©©
\ný \0\0\0\0 \0\0°		\0\0\0ð\0ÚÐ\0\0¼
ÀÐ	À\0\0¼°ðÐ°\r­©\nÚ°ð Û\0ºùéé©ð\0	\0\0\0\0Ð°\0	\0\0°\0\nðð\0\0êÀ°­\0¬\0ð°\0éàÚÚÀ¼½¬\n\0\0			\0°\0\0Ë\nÐ\0À\0\n\0\0	Ê°ËÀ°
	éÐ°ðÚ\r©	¬\nð\0\0Éé\0¬\0\r	àà\0\0\nð\0\0ð­\0ð\0
î\0\n ¼	©\n			À\0°\n\0\0É\0©\0	°\0\0\0
\0½\0\n\0ð\n	éàÊ
À¯°\0Éë	 ûð°¬¼ \0
à\0 \0\0êð\0ð\0\0\0\0úú\0\nÚé\0ÿ\0ð¼
é­\0\0
	\0\r\n°\0\0

\0
 \0\0\0\0ð\r	\0ÐÚ
	àð	\nù\0	 °°Û\r½
\r\n\0\0ð\0ð\0ð\0\0\0À®à\n\0
à¾\0\0	Ú
\0\0\0\0°
¼°	À 
\0\0Ë\n\r\0\0
\0°­
\0Àð	\0\0\0\0\0\né¬¬ Ð		\0	\r\0°ð¾ºÛ°Ú\n¬\0ð\n \0\0\0\0¾ð\n¼¯à\0\0Ð­\0\0 \0ð \0\0ðà°\0¼
\0°ð\n\0°Ù\n\0\0\0À¼\0° \0\0à\0\0	­\0\0ð°  Ú«éé©	Ë

É\0¿°Ú	 \0ÀÀ\0à \0\0î¾\0 \0­\0\0\0\r­\nÚà\0\0\0À¼	­©\r	\0\0	\0\0	\n\0°à\0©\nÀ­\0	
é\0\0\0\néé	àé\r\0Ðð	\0\0ÐÐð°Ðÿ
Û\0ðð°	Ê °Ê\0\n­\nààÀÀ\0Ú \r\0°\n
\0¯	\0	
		°¬°° ÚÚ	\0\0\0\0­
Ê \0\0À\0\0\0¯\0
\nÊÚ	©\nÐ ©­­

É\n\0ð\0«À\0¾¾\nÀ\nÐ Ê\0 \0 \n\n	à\0ðÀ\0\n°\0À°
		¬	\0ð\0\r\0\0\0 °\n	 
Ê\0 \n\0\0\0\r­	\0
\0\0é		\0ðÚ	é
ËÚðé¾\0¾ð¼¼°ë\0àà\0\0ê¾	\0°ÉàÀ¼\0\0\0ËÚ\0\n
Éé­\0ð	©©®	
\0	Àðð\r\0\0À­ \0 	êÚ\0\0¬\0\0\nÀ\0°°ú	¯¹é°¼	é
\0\0\0\0Ë¬ \0	 ì¬\0\0
\0\n\0\0À¼\n \0\0 \r\0\n
\0°
\n	Ú\r \0\0	\0\0\0	ë
À\0ðîàÐ­\r\0Ð\r\0\0é	éËàùÀÚÚ\r\0\0\0\0þ\0ë\0\r\nú\0\0¾\0þ\0 ð½\n	à\0ÉÊ
\r­ ¼
ÀðÚ
 \0\0°ð\0À\n\0\nà\n\0\0
	\0	\0\0	\0\0\n°¼°¹©í©©\0½©à°¯\0\0°àêà\0
\0\0 \0
ì\0©¬	\0\nàà ð\0©\0\r\n
	©
	\0°\r©	\0\0\0	\0à\0\0ð°\0	\0Ë	à
\0	é¬
É 	ééàðÉ¼°
À¬½\0\0úÀ¯Ê\0à\0\0©\0à½úË\0þð\0
\0\0°ðé ­ðÐ°é\0ðé
\0\0°\0°ð	\r©\0¬¯½ïïð	\0\0°\0\0°ð\0°\0\0Ú°
ÀÐ°þé¯Ðð°\0® \0\0à Ð\0ðà\0\0\0\0\0ú\0Ê\nÛÉ\néà\0ËÊ\r
\0	 Ë
ÚÚË\0éÀ°©\0\nÉ\0Ðë\0Ûßïûûß\0É\r©À\0\n\nÉ\0
\0Ú°\n¹ù«ð\0ðÀàÉÉà­\0\r¯à\n\0\0\0\0\0\0À\0\0\0«ý \0¯«Ë\0	ÊÀÙ ð©©	©
\0©\0	
	\0ÐË\nð¿ÿÿßëÿ«ê\0	\0É\0	©Ë\r 	Ë°ú¼½\0°°\nÏ\0\n\0\0\0\0¬\0\0\0	«À\0\0\n\0¬®\r\0\0	ëÀ
¾	Ë
ß\0ð°	\0Ú\0©\n	À\0ÿÞúÿ¾ûÿï	À\0\0	Ë\n\0\nÐ°°ÚË
ððð\r	\0\0à\n\0À\0\0à\0\0\0\0\0\0¬¬°¼\0\0¼®°\0ðï­¼¼
°ý©\0ð
\nÀù\nË\0\0é		 ú\0	ëûßÿýþùùëÀ
° ð É
	À©¬°ý
	\n¼°\0þ
\0\0\0\0\n\0\n\0ðËà
°À\0úÊð
\0
à°¿ÊÚÐð¼©
\0ð		\0\0	Ë°\nÐ	À¿ÿßûßï¿ÿÿÿûÉ
\0\0\0\0©éé¬	©°¼°éÐ\r©\0°\0àà\0Ð\n\0Ð©\0\0\0°ð\0í\0	\0àí¬¬¬\0¬þ¼¹©\nð¼
\0\0
\nÚ\0\0\0é	Ê\0ÿûëïûßÿ¯ùÿúÀ\r¬\0\n	­
¬ù©		 \0	\0	\0\0ð\0\0\0\0 \0\0\0\0¬\nú\0\0¾ª			\0ÚÉ Ð©

É\0ð\0\r	\0°¼©ßÛïûþÿý¯úß	\n	¬\r\n
\0à½\0­©	°¼ûË\0Ë\0\0ËË\0\0\0\0\0 ðÀ\0À\0\0°
À\0¯
Î¼\0\0éàþð°
Éé­­­\n			Ë	 	À\0É Ú	ëÿÿûÿß¯ý¾ûÿÿÐð\0©\0°Ê		
Ë°
	\0°\0ð°\0\0 Ð\0\n\0\0\0à\0à\0À ¯\0¯\n©	éà¼¼°¼°	\0©À\0\0\0	 	\0°\r ÿ¿¯úûßûÿßûÿûð	 ©À\n\0à¼	\nËË\r¼\0\0«À	\0\0\0à\0 \0 \0¾\0\0\0\0\0\0\0\0\0	\0\0ð	Ë
	é°ðÐ
\0
Ë\0É\n	\0ÚÿéÿÏßßÿï¾ïéð\r \0É©		
É°°	



û°Ð\0\0àÚÀ\0¬\0\0à\nà\0\0\0\0\0
\0ÀÐ°\0°ðð°ðû	¼°
\n\0©©ûûûÿúûïùÿÿÛëÿ\0\0ð°\0ð\nÐ
À	\n	Ë\r­­¬­
Éà©àÉ°\0à	
\nÐà®°\0\0\0\0\0\0 
\nÀ ª\0ªÛÉ\r©
\r­©
 ¯
	\0ð\r\0	 ùÿ¿¯ßýïýÿ¿ý¿¿ß
Àð\0	\0\r
¼¹¼	°Û
ÚÛ \0°\n ­\n¬\0\0ÚÊ\0\0 \0ð\0\r\n\0	\0\r\n\nË
\r­

ÉËÊ\n	\r\r	\0\0	\0°ÛËÏßëÿ¿ïúûÛëýïëëð
\0Ú\0©É\0\n\n°ù¯Ú\r­\0ÊÉ	\0\0\rà©Ë\0\0 ¬­\n\n\0\0\0\n\0\0Ð\0\0­\0°¼
\0¼¼°°	ð­­°\n° 	\n\0Ë\r«ûûûÿËý¿ßïýï½¿\0		\n\n°­	\0é\r ù­¬°°	°\n\0	\n\0é\nÀÚ\0\0\0ÀàÊ\0¬°\0 	\0Ë	À°ððÐ¿\n\0\0	É		\0	©©
ÛÏþÿ¿ëÿëûùûûÿùþ½ \0	\r
àððù\r À		\0\0Î\0 \0à\0 \0\0\0\n ©àà\0®\0àð
°«\r
	­­
À	Ð°°ð\nÚ
\0°À	©ï»ûÛùÿ½­¿ÿþÿÞ¾ûÛÉË\r \0\0½	Ê\0©

ËË°
\r\0	\0Êð°\0\0ð\nËÊà\0\0\0Àà\n\nð\0\0\0°
ÀÀéÐÚ°Ú°Ú\0\r\0			À	\nÉ\0ÛùüÿÿÿéÿûÿÿðûÛûß¼¼º\n		\0
À°		°¼¼°úÐð©­\0Ë	à\0\0àà\0\0\0É\n\0\0\0\0 \n\0 ð\0à\0\0\nÐ¼©©\r­	Àð\0\0\0 °\0\r °Û¿¼¿¿­¿Ïÿÿïûß¿½ÐÊÊÀ\0

\n	
\0\0\0Ê	\0\n	\0\0\0\0\0\0\0\0\0\0\0®\0Ú\nË\0\r«À \0ðÐÐ
\0°°
\0½©\0
À©É\0\0Ð\n	°ÿ½ÿÿÿßûïûûï½¯½¿ëððà\nÚ\0\0ð	\0ðÚÙ¾ é	©\0°°°\0à\0\0 \0\n\0à\0\0\0\0\0\0\0\0  \r ¬
ÉË\r© ¼
ËÉðÚ\r\0\0\0É	©	\n
Úÿëùÿ¯ý¿ßûïýÿí¿Ëß	\0\0Ð
\0é© 	©ú\0Ë\0À\0Ê
À\0\0\0	à\0À\0\0\0\0À\nà	\0\n\0 	é\0
Ë\n	\0°	à°\0	\0\0°\0\0\0É	¼ÿ¿ß½ÿéÿïûúþÛûûûý¿ºÚ\0é	©	Ë\0À	°Ú

	éé	°
	\0	©À©\0\0\0\0à\0\0À\0\0\0À\0\0Ð\0­­ 	ÐùÉéÀ°	\nÉ
\0\0 	\0­	É°	
Ëúÿ¯¿ý¿ÿÛþ¿Ïïßúù\rðÚ\0\0 \0	©\0°
Ï¼°\0\0\0\0\0	¬ à\0\0\0\0\0\0\0\0\0\0\n\0\0\0\nÚ\0	é ð 


ÀÐà		\0\0 \n\0°ÿÿýûßÛúÿÿ¿ùÿ¿¯½ûû«	\0

°Þ¹é©­©
	«Ë\0\0\0\0\0ðéà\0\0\0\0\0\0\0\0\0\0\0\0\0\0\nÉ
	à\r­	\0
	É\0À\0	\0			©ÚÛûÿÿ¾ßûÛÿûïùûÿÿÿûð		Ê	©É«
\0¼\0	\0\n\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0à\0

\r\0 °°Ú
°\n\0\n\0	\0\0\0¾¿þÿËðÿûßïý¿¿íü¿½éûÊ\0\0Ú\n	Ë\n¼¾éí©¼ËË	\0\0\0	¬\0	ËÀ\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\n\r\r©¼¹­ÊÚ	\n\0\0	\0ù
ÛÛûÛÿÿý¾ûûëþÿËûûÿÿÿ¿°\0	\0°	\r

	°¼
\0©°\0ð\nÊ\0\0 \0\0\0\0\0À\0\0\0\0\0À\0\0\0À¬°\0©\0°ËÉ©				À\0\n	\0©	\0	úÿÏÿûËûý¿ýýý¿¿ý¿ðûÚß\r©\0\0°\r¬°\0°ððúÐðÐ¼	àÐ \0\0 éàÀÐ\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0É\0\n«\r»\0ðð °©à	\r\0\0\0\n	Ûß¿¾ÿýëüûûûüÿ¼¿ÿÿûûÐ­\0\0\0



É\r	©­Ú
 Ð
\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0ËÉËù¾
		ÀÐ\n\0°	À»ëÿßÿ¿¿ÿ¿ïþûùûÿÿ¾ðù 	\r\0°ÐéÀ\nÚÐ­©©©\0¹É Ê	\0\0	\0\0À\0\0\0À\0\0\0À\0\0\0\0\0\0\0\nð
à °ûéà°Ú©© À		\0\0©¬ÏÿÚûúßÿÿÿÛý¿ÿþÛÚÛÿ¿úÛ\0\0\0\0	\n©©	ðÛ\r­\n	¬\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0ð		­\r©ïÀ°À°\0\0	\0¼¿¿ÿß¾¿ÿëÿÿýþ½¾¿ÿúß	\0
	ððÚÀ
\0ð°ëÉ©é	
Êà\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0Ðº¼»Ú\nÊ\0 
	\0	ËÿïÚûùÿÿ¿ßÿ¯¾½ÿûß¿ûûÐ\0\0\0\0	©
\0¼ú¹
	¬¼à\0\0	\0\0\0\0\0À\0\0\0\0\0\0\0À\0\0\0\0\0	é­©­ÛíëÛÐÉÀ	\0			\0\0\n\0»þ¿¿ýïü¿ÿûßýÿÿ¿ûÚÿ¾ÛÉ\n	\0ð	éË\r
­
	
\n	\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0Ð°ðºÛ°\nÀ\nÉ	\0ð½ûßÿÿ¿¿ÿ½¯úûÿÛÿÿÿúß¿	\0\r\0©ËÊ
\0°ÚËð¼©à­\0\0\0ð	\0	\0\0É\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r 

­°ëÊùÉÉ	\0		\0
	\nÚûëËþÿß¼ÿÿÿÿëþü¿¿½¿ûÞ°\0\n\0Ð
		\0°¼	ðð\0Ú	\0		\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\n¼\0ð¿	\0«\n\0¬	\0
É	¿þ¿ßÿÿ¯ÿûý¿ÛýûûÿÏûí¾ûù\0\0		 ¼		 	é¬
Úù©\0ð\0Àð\0\0\0É\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0

Ë
ÚÚ\nÚ	ÉÀ	é	\0\0\0	éûßûûÛïÿ¿ÿÿïþûÿßùûËûý¿É	\r\0\0	É Ù\0ù°¹©à\0À\0		À\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0ü°é
			\nÚ\0°\0\0
\0\0ð¼
ûïÿ¯ßïûßÏðûÿ¿ÿúÿ¾ÿ¿ßëý»\0\0Ð»É©\n\n	Ë ¼°¬		à\0Ð°À\0\0\r\0\0À\0\0\0\0\0\0\0\0\0\0\0\0°
¹àðð°ù\0\0\n°
É\0		½ùûß¯¿ûûÿýÿß¿ßúýºß¯úý \0 \0\n
À\0\0ÐÚùúé ú	\0	É\0\0Ð\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À

\0		\0\0\0É\r\0\0\0\0	ð
ëÿïûûßþÿÿûÿ¾þß¯ûýûßÿÛ		\0Úð	
À\0°°­°É©\0\0\0\0\0À	\0\0\0À\0\0\0\0\0\0\0\0\0\0\0À\0\0
¼°\0¼°°°
\r\0\0Ú\0ÿëý¾ßï¿­­éé¹ºùð½ï¾ûûï¾\0\0\0°		
ÉËË\0ù©ÀÐÀ°\0ÐÐ\r\0\0À\0	\0\0\0\0À\0\0\0\0\0À\0



©	\0	©\0\0\0\0\0
\0
í½ûÿûùéúß¿ÿþßÛéð°½¿­ûùù\0\0		ËÀ\0\0\0\0°\r©¬°©À\r°\nÀ\0\0É\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\n
\0\0¼
\0é
\r\0			ûÿ¿ï¿ÿûßÿ¿¿¯¿
Ðßÿ½ï°		\0\0°©©
\0©é­
ÀÐ Ú	\r\0\0\0\0É\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÐÉÀ
\nÀð	\r	\0\n°\0\0 Ð©½ûïùúÿËûßï¿Ïÿýÿßÿ©àÛûùð\0	¬¼\0\0\0Ú½	­°ú\n\0\0À\0À\0\0\0À\0\0\0\0À\0\0\0\0\0\0\0Ú\0° °É\n
	   °		\0\0		 ©ûíÿ­¿¿Þûûß¿úûûúÛßÉ¯ü¿é\n\0	\0
\0°\r Ú	«\0ð\r\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0À\0ËÉ\0Ê\nÐ\0É©É	\r\0\0\0\0\0\0\0ï¿ùéÿýÿûÿÿÿÿ¿ßíÿþ¾¼°ûûÛ	\0­ 
\0Ð É
	©	\r\0\0ÀÀ\0\0\0\0\0\0\0\0\0Ê\n\0\0 \0\0àð©\r\0
Àð°À°ð\0\0\0		ï¹ÿûëúùÿÛÛëùÿûûùûß	
ß¯\0\0\0¬		\0\0\0°¼¼¼ àÀÚÀ	\nÉÀ\0\0\0\0\0\0\0\0\0\0\0\0\0\0 	\r	\0à°ð
\0ð¹À	
\0\n\0\0	\0à¹ÿðÿßßßÿëÿÿßÿí¿ýÿÿ»þ¾Ú©½		\0	\n 
ÉÉ\0		­©é\0ð\0Ú\0\0\0\0\0É\0À\0\0\0\0\0\0À\0\0\0\0\0\0\n\0Ê	\0\0ðÚÚ©¼\0\0\0\0\0		þ¿¿¿½¿¿¿ûûýûûËÿÛý»ðéà	\0\r\0
\0\n\n\r  ð\0	\0Ë	\0À\0\0\0\0\r\0\0\0\0 \0\0\0À\0\n\0		À\r\n¼¼\n		\0À\0\0	Ê\0ûù¾ûÚÿÿÿÿÿýÿßÿ¯ÿí¿¼ðð	\0\0°°\0		\0	 Ðð	à\0\0\0\0\0\0\0Ð\0\0\0\0\0À\0\0\0\0À\0\0\0ÀÀ		\n	 ©©	©\0à\0	\0\0¾ÿÿü½­¿¿¿ÿûÛÿïûûïûÿ¿Ð\0\0\0	À\0	à\0\0		à	\n			\0ÐÐ\0\0\0À\0\0\0À\0\0\0\0À\0\0\0\0\0À\0\0	\nÀé\0\0ÐËË\n	 	©\0\0\0\0©\0ùùûúùûÿÿþÿÞý¯ÿ¿ßÿÛß­°ð\0
	\0\0
\r©°	\n	à à¬
\0\0ÀÀ\0\0\0\0\0\0\0À\0\0\0\0À\0\0À\0\0\0\0ÉÀ	\0\0 °°Ð°\r\0Ð°\0 \0\0\0
¿üÿÿÿÿ¿¿¿¿ÿïûÿÿÞ¿ûÿ¿ëß­\0\0\nÐÀ©	\0\0¼ÐÚÐ\r 	\0½\0\0\0À\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0À\0°°©\0	ËË
À\0\0Àùþ¿¿ûùÿßÿÿß½¿¼ÿ¿ûÿûý¿ëÛ©\0\0  ­\0
É
\0À 
\0É¬\0\0éÀÀ	\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0É¬\0 É	À\0°
\0\0\0	«¯¿ßÿÿ¼ÿÿ¯¿¿ÿùÿûý¿ÛÿÏúý¿úÐÀ¬ \0 ° °¼	à\0\0À	\0\0À\0À\0\0\0À\0\0\0\0\0\0\0\0\0\0\0À\0	¬°©\0\n\0©	\0
\0\0\0\0°ßÛûÏ¿ÿûéÿÿïÿ¿ÿ¼ûï¿ÿ¿ûý½û		\n À\r
		\0
Ï\0\0É		À\0\0\0	\0\0\r\0\0\0\0\0\0\0\0\0À\0\0\0\r	 \n\0Ð\n\r\0	\0\0é\0\0\0 Ð	ÿ¿¾ÿ¿Þ¿½ÿÿ½ûÛþÿûÿ¿ùþÛÿÿûï¼°\0\0\0À°¬¼¼
°°\n\0¬\0ÀÀÀÀ\0	À\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0À	É à	\n\0	\0\0Ð\0 éþÿ½ÿ¿ßÿûùûÿïÿÛý¿ûÿüûÿùÿ	à\0°	\0\0\0	\0	\0
Ð
À	\0\0	\0	\0\0\0À\0À\0\0\0\0\0\0\0\0\0\0\0	\0\0		ÉÉ\0°\n°ð	\0\n\0\0\0 \0\0\0\0\0ùùúÿÿûÞ½ÿïûÛÛûÿ¿ûÿ½¿¿¾Ûþ¿éù 	\0\0\0\nÐ\0¼°©é\r ¼\0\0À\0\0\0\0À\0\0\0À\0\0\0\0\0\0\0		À°°é©ËÉ\0À	\0\0ð°\0\0	ëï¿ÿÿûÏ¿ûþ¿ÿÿßÛÏ°ÿýÿÿ¿ûßúÐ\0É\0	\0	\0à\0ú	\0
\0\0\n	\0\0ÀÀ\0\0\0\0\0\0\0\0\0°À\0\0	\0  °\0°\0	\0\0 \0\0\0í¾½¿ûÏýÿÿÿÿ¿ùù½ÿûëûùþûÿ­°	\nÀ\0\0\0\0¼°Ï	\0
\0\r\0\0\0\0	\0À\0\0À\0\0\0\0À\r\0\0\0\0ÉÊÚ\nÐ ¬¬\0\0	\0	À\0\0\0àûÿûýÿÿÿÿ¯ÿÛùÿÿýþ\r¿ïÿûþ¿ËÛË\0\0	
		\0\0\0ð
Ë\0\0\0\0\0\0À	\r\0	\0\0\0\0É	\r\0\0\0\0¬	ÉÉÉ\0\0\0\0\0\0\0À\0\0½­½¿¿­ûÛýðûÞ¹Ù
Ùùðùðÿÿëýûß¿úùÀ\0\0\0\0À\0Ë	é¬\nÐ\0\0\0\0\0\0\0\0À\0\0\0\0\0À\0\0\0Àà\0\0ÀÉ		\0Ú°° \0\n\0É 	\0\0°À \0\0¯ïÿïþÿÿ¯ÿÿ½½	Ü¼½ëß	Ðûûßú¿ûÿ\0	\0\0	°°\0\0Ë\0\0ð	\0\0	\0ÀÀ\0\0\0\0\0\0\0\0\0Ë		É\0\0\0°¼\r	à\r\0 \0\0\0		\0°	\0	\0ý½¿¿½ûÿùé½û½©ÿûÿÿ½ÿÿý¾ùëé°\0\0\0\0\r	©°¯\0\0\0\n\r\0\0\0\0\0À	\0\0À\0\0\0\0\0À\0\0\0	ÀÚ	\0°°°	 \r\0\0\r\0\0 \0\0\0	\0\nÚûëÿýþ¿ý¿ýëÿÿ­ÿÿßÿß¯Ûùëþ¿ÿûÿûÛÀ\0\0À

\0°\0\0Ð\0 \0Ð\0\0\0\0\0\0\0\0\0\0\0À\0ÀÉ
É\0\0À		\r\0\0\n\0\0\0\0	\r		\0\0\0\r¿½ý¿¯¿ýûü¿½ùùûþ¿¯ûß¾¿ÿÛß¯ùÿ¼¿
\0\0\0\0	É	­©\0\0°\0Ð\0\0\0À\0À\0\0\0\0\0\0ÀÀ\n\0\0\0ÚÀÙ\0\n°°Ë	\0\0	\0\0\r\0\0ùëûÿßÿ¿¿ûýÿ¿ÿÿùýÿÿûýÿ¿¿ßÿ¿úÛð¼\0°\0ð \0\nÐ\0ðÀ	\0Ð\0\0\0À\0\r\0\0\0\0\0\0	À	ÉÀ\0\0\0\0É\0\0À\0\0\0\n\0	\0¯ý¾ûÛßí½úûÞ¿½¿ÿùûÿ½ûûïÿûûûÞ½½éù\0\0\0­	À	©\r\n\0
\0\0À\0\0\0\0Ð\0\0\0	\0\0\0	\0\0Ú\0Ú\0\0	ÉÀÐ°é\n			©©\0\n\0\0	\0\0\0°\0\0ùÿ»ÿþ¿þûûï½¿ûÞÿÿûÿýûËþßÿ½­ÿÞ»Ûÿ»ÊÀ\0\0° \0 °Ðð\0\0\0\0À\0À\0\0\0À\0\0\0\0É\0\0\0 		À\0\0\n\0ð\0\0¾ÛÞùûý¿¿ýûÿÿûÛïÛ¯¿ÿ¿¿½ÿÿëûýúð¼¹°\0Ð\nÐ\n	\r\0\n\0\0°
\0\0\0\0\0\0\0À\0À\0\0\0\0\0\0\0Ð\0\0\0\0	ÊË
\0©\0ð\0\0à		\0À 	\0½¾¿½»ÿý¿¿ß¿¿¿ÿ»ßùûùÿÿ¯¿½ÿ¿ÛÚÀ\0\0É\n\r\0\n\0Ð\0\0\0À\0À\0\0\0\0\0\0É\0\0\0\0À\0\0\0à
\r\0\0\r\0°\0ÐËÚÐð\0
\n°é©	\0\0\nÞ¿Ûûÿÿéûïÿ¿üÿýùÿ¿¼¿ýÿý¿ÿßÿëÿ­¿©é°\0 ð\nÉ\0à 	\0	\0\0\0\0\0\0\0\0\0\0\0ÀÐÐ\n\0À\0
	À­	\0\0	À\0\0\0\0\r»ß¾ÛÞ¿ÿÿ½ï¿¼¿¾ûÏÿ¿¾¿ý¿¿½ëßÀ\0	¬	À\n		\0 \0\0\0	À\0\0À\0\0ÀÀ\0\0\0\0\0À\0\r\0\0À	É\0	
Ð¬	\0	À©		\0\0­éù¿ûÿßûÛÿ¿ßÿúßûÛý©ûÿÞ¿ÿþÿÿ¿ûùð¼\0\0	¼©	\0\0à\0\0
\0\0\0\0	À\0À\0\0\0\0À\0\0\0\0ÀÐ\0\0	 °\r¬\0Ð°ð
ÐË \0\n¿¯þûÿÿÛÿûùùûûÿÿû
Ûûþý½ûùùúÛéùé\0	\0	\0ÉÀ\0\0\0\0\0\0\0\0À\0\0À\0\0À\0\n\0\0\r	 		
	©\n\n\n\0à	\0\0Úùý¹ÿÛÿûïý¾ÿ¯ÿùþé½¿ÿß¿ÿ½ïÿùù½°\0	\r ð\0à\0 \nÀÀ\0\0\0\0\0\0\0\0\0\0À\0\0\0\0	À\0\r \0\0\0°\réàð­
	ÀÐÐ\0\0

Úûÿûÿ¿ÿùûýùý¿Ûïùÿéï¿ûß¿ÿûëÛúÛéé\0
\0ú\r© 		\0Ð\0\0	\0\0\0\0\0À\0À\0À\0\0\0
\0Ð	\0\0©	É¬¬	ð
\0 \0à\0\0¿½­¿ÿÿÿþÿ¿ûí¿ß¿û¿íÿÿï¿ß¯	\0
\r
À\0ð \0\0\0\0\0\0\0	\0	\0\0\0\0\0\0À\0\0\0ÐÉÊ\0\0\0¼	 ÀÉ¼°	\nÊÐ\0ð\0°\0	©ûËÛûïûÚÿ¯ûÿûßûûß½ùùùÿ¾ÿïßûß­¼¹Ë\0	\0¼\0\0\0À\0\n\0À\r\0\0\0\0\0\0À\0\r\0À\0\0\0\0\0\0\0\0\r\0	\0	 é			
		à\0\0\0ý©ûðùý¯ÿÿÿÞûßûûýÿûËÿÿ¿ÿÿ¿¾½¿¹¼¼\0\0\0	é\0	\nÐ\0\0\0\0\0\0\r	\0\0\0\0\0\0À\0\0\0	àÉ	\0\0\0Ð\r¬ðÙ\0À¬	àÚ\0\0Ð	ûÚ¿ûý¿½¿¿ßûëÛË¹ÿ½¿¿ÿÿûßßûéûËË\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0À\0\0\0\0À\0\0\0\0À \0ËÀ\0é	\0	\0 	\0	\0	  \0ïûÛðûý½¿ýÿýÿûÿßÿùÿëßùùûÞÿ¿ÿ¿ß½¿Ë\0\0\0\0\0\0\0\0\0\0\0À\0À\0À\0\0\0\0\0\0\0\0\0\0	\0Ð\0\0		\0
Àé	Ùð\0 Ë\0É\0\0¯½¼ÛÛÛïùûúÿïÿÛÿ¾Û¿½¯¿ûëÿÿùïÿ¿½¼½\0\0\0	\0\0\0\0\0\r\0\0	\0\0À\0\0\0\0\0\0\0\0\0\0À\0\0\0À\0\0\0À\0¬\0		Ê\0\0	\0Ð° ÊÀ\0ýÿéûûúÿ½¾¿ÿß¿¯ûÛþ¿ÿÚß½¯Ûÿýý¿¿ý°ùûÚù°\0\0\0\0\0\0\0\n\0	À\0\0\0\0\0\0\0\0À\0	\0\0\0\0À\0\0É\0\0\r\0\0©É	\r©\0\0Ð\0	\0°	ÿ¿½©éùùûýÿÛûÿÿÿéÿ¿úß½¯ÛûëÿÏûÿúùûÛéà\0\0\0\0\0\0	\0\0\0\0\0\0À\0\0À\0\0À\0	À\0À\0\0\0ÉÀ\n\0\0\0\0°É\0Ù	¬\0°É 	\0À\0ÛïÚ¿¿ï¿¾¿ÿßûý¿éûþûß½ºÛÿ¯ßÿÿ¿½ÿ½ûúÚ\0\0\0\0\0\0\n\0\0\0À\0\0\0\0\0\0À\0\0À\0\0\0\0\0\0À\0\0\r\0\0\0­ àÉ	\0	\nÀ
\0
ÿ©ð¿ÛÛßýÿËûíûÿ¯ÛûÿÚÛß¿½ÿþùÿ¼ùûÚÐ\0\0\0\0\0\0\0\0\0À\0\0\0À\0\0\0\0À\0\0À\0\0\0\0	\0É\0\0\0\n\0\0	 Ð¼\0	 Ð\n\0ùþ­½¿¿¿ûûûÿÿûïùÿ½¿ÿÛé»ÿ¿þÿï¿¾ûÿ»ü°°\0À\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0À\0\0\0À É\0\0	ÀÐÀ\0\r	é\0\r
\0ÚÉ \0ðÛÚúûÛý¾ßýûûßý¿ëßûÛÿûÛÏÛïß¿Ûïÿß¼ùþÛ½\0\0\0°\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0É		\0\0\0\0	É\n	¬©\n\n\0Ð\0	\0

úûÿûúÿÏÿûÿ½»ÿ½°ðù¯ß¿ß¿ý¯ûÿ¿ùºÚ\0\0Ð\0\0\0	\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0À\0\0\0\0	à\0ÀÐÉ\0ÉÉ­¬
\0	 ùûÿß½¿ßÿ¿ëÿûÛíÿÛÿ¿ÿ¿ÿ¾þûù¯ÛÞ¿ýùÉ\0\0°\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0É \0\0\n	À\0°	\0°éà°É	¬\0°		Ë

ûÚÿ¿ïþ¿½ÿÿËÞÿ¹ÿÿ¹ð¼ûÿ°ý¹ðð¾ûÚû© \0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0À\0\0ÀÀÀ	\0ÀÊ	\r¬°	\0\0¼	é\0¿ûÛûÛûÿÿ¯ÛÿûÚÿùúß­ÿ½Éð¼í	
ÿÛÉ\0\0\0\0\0\0\0­\0\0\0\0\0À\0\0À\0À\0\0\0\0\0\0\0É\0\0\0\0à\r\0ÉÉ
ÚÐ	\ré\0\0°\0\0	­ 
ðÿ¿Ïÿýðûß¿ûÿ¿Úÿ¿ÿúÛ»Þ¿ÿÎ¾	þÛ¿°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0À\0À\0\0\0	\0\0\0\0\0\0\0­\0ÚÚ\0	 		
ûûÿ¿¯Þðþý¿Ûß½¹ûÏùÿþé©êý ¹¾ß\0\0\0\0\0\0\0\0\0\0Ð\0\0\0\0\0\0\0\0\0\0\0\0\0À\0À\0\0\0\0\0\0À	Ë\0ÚÐ	ËÀ \0	\0\0\r½½¼ùùù\0ÿ
ÿ¿­¿úÿÿðùéëÿÀíÿ\0	½º\0\0\0\0Ð\0\0\0\0\0\n\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\r	\0\0\0\0éÀ	\0 \0Ð	¼\0Ð\0	\0	\0\núþ¿¾¿\0ùìÀùÿ¯ÿûÿß¯ÿ½­î\0\0ûß­¼½\0\0\0\0\0\0\0°\0É\0\0\0\0\0\0À\0\0\0\0\0\0\0À\0\0\0\0\0\0	\0\0\0\0\0 Ð\r	ÀÐÐ
ËÉ\n\0
\0°\0\0ðð\0\r½¹ý½°ÿðð°þùßÚÿ­ÿÿýë¼¹ÿ	àà\0	ðùúÛË\n\0\0\0\0\0\r\0\0 \0\0À\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0	À\0\0\0\0 \0ð\0\r\r À\0\0
\0\nÚÿ»ûÛð\0ÿÊÉíë¿Ûûÿ¿¿¿ÛÚûËÉ	
¿¿­¿
É\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0À\0\0À\0\0\0\0\0\0\0\0\0\0\0ÀÐÉ	\r­\0ð	\0\0	©É\0Ð\0û
À	ûÚßé¹	\0\n\0é½í¿ßüÿßý¯½¼½©ûÛß¼¿\0\0\0\0\0\n	\0\0À\0\0\0\0À\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0	\0\0	à¬ð\0\0 \0\0ðÐ\0\0­¯¿í½	àûûûëûûþûûûËúÛ©»ËßÏÿúÿ­­	\0\0\0\0\0\0\0
\0\0À\0\0\0\0\0\0À\0\0\0À\0\0\0\0À\0\0\0\0\0\0\0À\0\0\0\0\0\0\0Ù°©	\0ù°\0\nÛûÚûûûÿ
¹	ÿí¿ýþÿûþÿßûùúßýÿï¿¼¿¼°\0\0\0\0\0\0	\0\nÐ\0\0\0\0\0\0\0\0\0\0\0\0À\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\n\r
\0é
é	Ë\nÀ\0\0°À	¼¿Þüùý¹¿éûí¿ûßÿùþ¿Ëé¹
ëÿÿûËúË\0\0\0\0\0\0\0À¬	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Àð	°ÛÛý½­½ °\nÉ\0\0\0ëÛð»ûûþûþÿ¿½»ûÿÿ½ÿùÿí¹Î	\0	\0Ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0	\0À\0\0\0À\0Ë	\0ð­¯ß¿ÛÛ
Ð\0\r©\0\0°\0\0½¯
ýÿÏûÿß¹ð¿
Ïþß¿ï¿ÿÿ¿¼¹°\0¼	\0\0\0 \0\0\0\0\0\0°\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0ùéí °Ûùùý¿ÿÿ½ ­\0\0\0\0\0\0¿Ëëÿÿðû­¼¿¾ßÿí¿½ÿÿÛ\0ð	\0\0\0Ð	\0\0\0\0\0\0\0àÀ\0\0\0\0\0À\0\0\0\0À\0\0À\0\0\0éù½¿ÚßÛ	éùûß½¿¿ûûÛÛÙ	 \0\0\0ééÊ½»		 Ë
ûßÿÿûÛÿïÿëûÿïù	\0\0°\0	 \0\0\0\0\0\0\n\0\0\0\0\0\0\0À\0\0\0\0À\0\0\0À\0\0ðü¼½»ðÚÛËÙûÛùýÿß¿ÿ¿¼° ËÉ\0\0\0\0\0ð	\0\0ÚÙËÿÞûÿÿÿÿûýûÿÞûÿ°\0\0	à\0¼	à\0\0\0\0\0\0\0\0\0\r\0\0\0À\0À\0\0\0\0\0\0\0\0\0\0\0Àû½ûý¿ÞÛé½¾½¿ÛûùûûßÛß\0 °\0¬\0\0\0\0¼	\nÉ©©¿ÿ¾ÿÿï¿¿ú½¾½ûÿÛÿù	\0\0	\0\0°\0\0\0\0\0\0\0\0\0¼\0\0\0\0\0\0\0À\0\0\0À\0\0\0\0\0\0\0\0ðß¼í­¼ùÚùß½¿ý¿ÿýûûûÞÐ\n\0	\0\0\0\0ð\0\0ÐÐ°ûùþ½ÿù	¯þÿÿÿÉð		 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0À\0\0À\0\0\0úÛÿÛÛéÊÚ½ûß
ß¿ßß\0Ð°\0\0\0\0\0°¼ðÿûÿÿ¿\0À	ïÿ¾Ûû	\0\0	à\nÀ\0\0\0\0\0	\0\0\0\0\0\0\0\0ÀÀ\0\0À\0\0\0À\0\0\0\0\0û½½­¾¬É¯¹­½ùûý½¿¿\r
\0\n\n\0\0\0\0Ë	°ùù¯ÿûð	\0¹ûð¹ùÿ¿ï\0\0		 	Ð\0\0Ð\0\0\0\0 \0\0\0\0À\0\0\0À\0\0À\0\0\0\0\0\0\0\0ðÿ¿ËÛéÊ	­
ÉËÚÛÚýùý¿\0\n­\0\0\0\0É©Ú¹¹	\0¿ÿëÛÿÛù	\0ð\0Ð\0ðà\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0À\0\0\0\0\0\0\0\0\0\0ùí½¾°ÐÉ­©©éËËËÿß¿ûù¼°À\nÐ\0\0\0\0\n
Û	ëûÉ	éí¿ð¹ï½«ÛûÚ\0¼	°\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0À\0\0\0\0À\0\0\0ÿ­\r\nÉ\r
ùùýùÿûùýùù\0	\0°\0\0\0	ËË¼¿Û½½é°Ë¹ûÿ
ü¹ù½¯ùé\0½úÚðéà\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0À\0\0ùúûÞ¬ ÀÜ°ð½½Úùû¿ßûÛùé \0\0\0\0\0\0\0©
É«Ùï¿¹Ê¿Ïÿý¿
ù¿
ù	¯Ë\r¿Ú	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0À\0ÛßÙëÚÐ°
\rÙ­»ß½ÿùÿ¿½¿\0\0\0\0\0\0\0¼ý¯ùðÛÞ½ùÿ¿¼ûéùé¿ð½¿Ð\0ý°ûíééà°\0à\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0À¿é¿½¼ÀÀðù­ùíºßùÿ½¿¿\0	\0\0\r\0©é¯Ëß©»ûúÛ¾½ÿÿ¿ß­½¹¿
Ë
	À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0À\0\0\0ßÞ\r­\n	\nÚÚûßÚùÿùÿßùù	\0\0\0\0\0\0\0°ùûëûùééùðýÿÿÛÿûÞ°¹ï	í½\0¹é©ÿ\r¼\0¯\0	\0\0\0\0\0\0\0Ð\0À\0À\0\0\0\0\0\0\0\0À\0\0ûÛùü¾\0	ÀéÛÙûÞ½­¿ùÿù©ÿð\0\0°\0\0\0	\nðý¹¿ÿ¿ûûûÿí°ù½¼¿»ð¿\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÀÀ\0\0\0\0\0\0\0À\0¼¿
ÐÀ\n­\nÐûÛÛùÿ½­¼½ù½°°\0\0À\0\0\0\0	ËÏûï­¾ßùûÿûÚ½¯Ëý °é\0Ð°\0À\0\0\0\0\0\0\0\0\r\0\0\0À\0\0\0\0À\0À\0\0\0\0\0\0\0ý½½½ÊÀ\0ÀÚÚ½½¯ùúÛÛÚÐ\nÛðÀ\0\0°\0\0\0\0\n\0¹­­¼½¹éûý¿ÿ¿¿ùé©éËÛùß¿Ë	Ðð
	\0\0°\0\0\0\0\0\0\0\0\0\0\0À\0\0\0À\0\0\0À\0À\0\0\0\0Àùÿ©\0À	­©ðÚÛËÙúÛß­é\r­\n	\0\0\0\0	\0	\nÚÛ
Ûé»ßûùûððÿýù°½«Ð°Ú\0\n¼\n\0
À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0Úðý¼\0\0ÀË\r½½ûß½¿ùÿð	¬\r \0	\0\0\0\0\0\0\r
\0¼½­¿¾Ûÿ¿¹é©ð½ë°­\0\0\0Ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0À\0\0\0\0\0ûÛÛ­ \0\0¼½½«Ûßß\0\0Ð	\0À\0\0\0\0\0\0­

ÚËÿ¿¿ÛÚÛËÞß
ËÀ\0\0	\0\0 \0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0À\0\0\0\0\0\0À\0ùü¾Ü\0\0ÉÉð½éûý¼ûùðù\0 Ð °\0\0\0	\0À°¿ùûÛß¼¿ËÚð\0\0	\0À\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0ðùù\0\0\0©ðÛÚÛÛéÛý¼\r\0 \r\n	à\0\0\0\0\0\0\0
\nÐ
\0»
¹¿­¿úÛùë»Ë
Ë\0\0\0\0\0\0\0\0à\0\0\0\0\0\0\0\0\0\0\0\0À\0ÀÀ\0\0\0\0ÀÀ\0\0À\0\0\0½½­ì\0\0Àð\r¿ûËÏëÚÛúÛÀÐ\0 Ð	\0\0\0\0\0\0\0É\0ð\0Ðíûí½¾Ð¹Ë¼Ù
Ë\0\0\0\0\0	©\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0À\0\0\0\0À\0ðúÚ
\0\0\0	ðú½Ðù­½­¿\r©	\0É  Ð\0\0\0\0\0\0\n
\0

½ûï½»Ð°ÛÊÉ©É\0\0\0\0 À	\0¬\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0À\0À\0\0\0\0\0ÀÛÙðÐÀ\0\0Þ	ÛÐ¯¾ßÙðÚ¼© \0 \0\0\0\0	\0\r\0¼	\0 ûÿûÛË­\nÐ¾Ð\0	\0\0\0\0\0	\0\0	\0\0\0\0\0\0\0ÀÀ\0\0À\0\0À\0\0\0À\0\0\0\0\0¼¾\r¬\0\0\0\0é¹­­¯ÙÉÜ¹é­°ðÊ\0\0ðÀ\0\0\0\0\0\0\0\0	\0\0\r Ë	ééí°Ð©\nÙ	\0	\0\0\0\0\0\0\0À\0\0à\0\0\0\0\0\0\0\0\0\0À\0\0À\0\0À\0\0\0\0\0Ëð\0\0À\0ðÛÚ\nËÊ¼ú\r		À\0À\0°	\0\0\0\0\0\0\0 \0\0	\0\0¿¿ù­©\0	\0\0\0\0\0\0\0\0\0	\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0½\ré\0À\0À\0\r \r¬ÐÚÐÐ°¬¼°	\0¼\0\0\0\0\0\0\0\0É 		\0\nÐù\nÛ\0		à		\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0ÀÀ\0À\0\0\0À\0\0\0\0\0\0\0À\0ÚÀ\0\0\0\0ðÚÛÛÉ¬\0¬\r	\0\0Ê\0\0\0\0\0\0\0\0\0\0À°Ð\0\0 	
\0éð	\0ð\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0	\0\0À\0\0\0\0\0À\0\0À\0\0\0\0\0À­é\0À\0\0\r©\0ÀÐÉ\0ÀÐ\0ÀÉ\0\0\0\0\0\0\0\0\0\0\0\0°
	\0\0\r\0àÚ\0\0©	\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0ÀàÉ\0\0\0À\0\0\0\0\0\0\0À\0\0\0À\0ß\nÀÀ\0\0À
ËÊ\0	\0ÊÉË¼\0À\0\0°\0\0\0\0\0\0\0\0ð©\0\0\0	 Ð\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0½\0\0\0\0À\0\0À\0À\0À\0\0\0°\r\0\0\0\0\0\0\r\r	ÀÀÀ\r\0ÙÉ\0\0\0\0\0\0\0\0\0\0\0\0à\0\0Ð\0\0\0\0\r«Ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0ÀÐà\0\0À\0\0\0\0\0\0\0À\0\0\0\0\0\0ÌðÀÀ\0\0Ê\0¬\0\0\0À\0\0¼\0°\0\0\0\0\0\0\0\0\0\0\0àÚÚ\0é\0\0\0\0\r¬\0\0\0\0\0\0\0\0\0\0\0\0\0\0	
ð \0\0\0\0\0\0\0\0	ÀÀ\0\0\0\0À\0ÀÀ\0\0\0\0\0\0
\0\0\0\0\0\0\0\0ÐÐ\0\0\0\0À\0\0ÐÚÐ\0\0\0\0Ë\0\0\0\0\0\0\0\0\0\0\0\0		 Û\0\0©À\0\0\0\0\0\0\0\0\0\0\0\0¬­\0\0\0\0\0\0\0\0\0Ðà	É \0À\0\0\0À\0\0À\0\0\0\0\0¼\0\0À\0À\0\0\0À\0\0À\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0	\0\0\0\0\0\0\0\r 	\0©\0\0\0\0\0\0\0\0\0\0\0	©		\0\0\0\0\0\0\0	\0 ÀÀ\0\0\0\0\0\0\0\0\0À\0\0\0\0\0ÀÀ\0\0\0À\0\0\0À\0\0\0\0ÀÀ\0\0ÀÐÊÀ	\0\0\0\0\0	\0\0\0\0\0\0\0 ÐÀ\0\0\0\0ððéÀ\0\0\0\0\0\0\0\0\0\0\0\0À¾ðà\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0À\0\0\0À\0\0ÀÀ\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0©à\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0

É\0\0\0\0\0\0\0\0\0	\0Ê\0À\0\0\0\0\0\0\0\0À\0À\0\0\0\0À\0\0\0\0À\0\0À\0\0À\0\0ÀÀ\0\0\0\0\0
\0\0\0\0\0\0\0\r\0\0\0ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ïï\0\0\0\0\0\0\0Ë\r	Ì\0\0\0À\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0ÀÀ\0\0\0À\0\0\0\0À\0\0\0\0\0
\0\0\0	\0\0\0	\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0©\0\0\0\0\0\0\0\0\0\0ÐÀ\0\0\0À\0\0À\0\0À\0À\0\0\0À	ÀÀ\0\0À\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 à\n\0éÉ\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0éé\0\0\0\0\0\0\0À\0É\0\0\0ÀÀ\0À\0\0\0\0\0À\0\0À	\0\0\0\0ÀÀ\0\0\0\0À\0\0ÀÀ\0\0À\0\0\nÐ\0\0\0\0	\0É\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÀÀ\0\0À\0\0\0\0\0À\0\0\0À\0\0\0À¬¬\0\0\0\0\0
û¹\0\0\0\0\0\0ÀÀ\0À\0\0\0\0\0 \0\0\0\0ð\0\r \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 ¼\0¬\0\0\0\0\0\0\0À\0	\0\n\0\0\0\0ÀÀ\0\0\0\0À\0\0\0\0ìÐ\0\0\0\0ÐÀÿÿûûÀ\0\0\0\0\0\0\0\0À\0\0\0\0\0Ð\0\0­­\r\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\r\0¼	\0\0\0\0\0\0\0\0ÀÀ\r\0\0\0\0\0\0\0À\0\0\0	­\0\0\0 \0ÿÿÿÿý
\0\0À\0\0\0\0\0\0\0\0	É 	\0\0	\0Ú½	à\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0©é\0\0\0\0\0\0\0\0\0\0\0\0é\0\0\0À\0 \0\0\0À\0\0\0\0\0\0\0\0Àÿÿÿÿÿ¼\0\0\0À\0À\0\0\0\0\0 \0\0\0\0\0\0\0\0Àð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÀÀ\0\0\0\0\0ïÿÿÿþÐÀÊÀà\0\0\0\0\0\0\0Ð\0\0\0\0\0\0\0	
\0\0°é \0\0\0\0\0\0\0\0\0\0\0\0	\0©\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0À\0\0À\0\0\0\0\0\0\0\0\0\0\0ÏÊÜ­¬	À\0À\0\0À\0\0\0\0\n\0\0\0\0\0\0\nÀ	\0ÀÉ°\0\0\0\0\0\0\0\0\0\0\0\0\0 ÐÀ\0\0\0\0\0\0\0À\0\0\0\0Ð\0\0\0\0\0\0\0\0\0\0\0\0À\0\0ÀÀÀ\0\0\0\0\0\0ðì©ÊÀÀ¬\0Ê\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0­

	à¾\0©\0\0\0\0\0\0\0\0\0°\r©é\0\0\0\0\0\0\0\0\0\0\0À\n	\0À\0\0\0\0À\0À\0\0\0\0\0Ð\0\0\0ÀÀ\0\0ÚÜà¬Ðì\0À\0\0À\0\0\0\0\0	À\0\0\0\0\0\0\0	\0\0	É\n\0\0\0\0	\0\0 
\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÉÀÀ\0\0\0\0\0\0À\0\0\0À\0\0\0\0\0\0\0À\0Í¬\0à\0\0\0\0\0À\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0 	é\0\0	í\r\0 \0Ú\0\0\0\0\0\0\0\0\0À\0À\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0ÀÀêÌ\0Ê\0À\0À\0\0\0\0À\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ð\0\0\0À\0Ê 	\0ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÀÀÐ\0À\0\0\0\0À\0ÀÀ\0\0ÀÀ\0\0\0\0\0\0À\0¬\r\0Ê\0À\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0©é Ú	Ê\0\0\0\0\0\0\0\0\0\0\0\0Ð\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0¬àÀ\0À\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0Àà\0\0\0\0\0\0\0\0\0\0\0Ë\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0ÀÐÚÐàÊ\0À\0\0\0\0\0\0À\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0À\0\0\0\0\0\0\0\0\0À\0\0\0ÀÀ\0\0\0\0\0\0ÊÀàÊÀÀÀ\0\0À\0\0ÀÀ\0\0À\0ÀÀ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0À\0\0À\0\0\0À\0\0À\0\0\0\0\0\0\0\0À\0\0\0\0ð\0\0À\0Ì¬ÊÞ¬\0\0ÀÀÀ\0À\0\0\0\0À\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0À\0ÀÀ\0\0\0ì\0\0\0\0Ð¬ÊÐÚ\0\0\0\0\0\0À\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0À\0\0\0\0\n\0\0\0\0\0\0\0\0\0À\0\0\0À\0\0\0\0Ìð	\0\0ÊÜ¯Î\0\0\0\0\0\0\0\0À\0\0À\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÀÀ\0À\0\0\0\0\0\0\0À\0À\0\0\0À\0\0\0À\0\nðì\0\0\0\0\0\0¼
À\0\0\0\0\0À\0\0\0\0\0\0\0ÀÀ\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÀÊ\0\0\0\0\0\0\0\0\0À\0À\0À\0\0\0\0\0\0\0\0\0\0\0ÀÀÎÌì\0\0\0\0\0\0\0À\0À\0\0\0ÀÐ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0Àà\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0
\nÀ\0\0\0\0\0À\0\0\0\0\0\0\0\0
\0\0\0\0\0\0\0\0\0\0à\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0À\0¬\0\0À\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0À\0\0\0ìÍ\0\0ÀÀÀÀÀÀ\0À\0\0\0\0\0\0\0À	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÀÀÀ\0\0\0À\0À\0\0\0\0\0\0À\0À\0\0\0\0\0À\0\0Ë\0\0 ­\0\0\0\0\0\0À\0\0\0\0\0À\0\r\0\0 Ð\0\0	\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\nÀ\0\0À\n\0\0\0À\0\0À\0\0\0\0\0\0\0À\0À\0\0\0\0\0\0\0\0\0\0\0\0ÀÀ\0\0ÀÀ\0À\0\0\0À\0\0\0\0\0\0Î\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0À\0\0\0\0\0À\0ÀÀ\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÀÀ\0ÀÀ\0\0\0\0À\0À\0À\0\r\0	\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0Ê\0\0\0\0\0Ê\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0À\0\0À\0À\0\0\0À\0\0À\0\0\0\0\0\0\0\0\0	\r\0À\0	\0\0\0\0\0\0\0\0\0\0\0\0Ð\0\0\0\0\0\0\0\0\0\0\0À\0\0\0ÀÀÀ\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0À\0ÀÀ\0\0ÉÐ\0\0\0À\0\r\0	
É\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0ÊÀ\0\0\0\0À\0\0\0À\0\0\0\0\0\0À\0\0\0\0ÀÀ\0\0\0\0\0\0\0\0\0\0\0\0\0¬\0À\0\0\0\0\0\0\0\0\0\0\0Ú\0\0À©\0\r\0	\0\0\0À\0\0\0À	\0À\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0À\0\0ÀÀ\0À\0\0À\0\0\0\0\0\0\0À\0\0ÀÀÉÀ\0­éÀÀÀÀ\0\0\0	ÀÀ	À\0\0\0\0\0ÐÀÀ\0\0\0\0\0\0\0\0\0\0À\0\0\0\0ÊÀ\0\0 \0ÀÀ\0\0\0\0\0\0À\0\0\0\0\0\0\0À\0\0\0\0\0\0¬\0éíàÏÍ¬	
\0\0\0\0	\0\0\0À¬\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0 \0À\0\0\0à\0À\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0À\0\0À\0\0ÀÀÀ\0ÞÞü\0¾ÿíÞÌ\0\0\0\0\0\0\0\0\0\0\r\r\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0À\0À\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0éÀ\0\0¼ïÿüÏüÿþÿÀÀÀÀ\0\0\0É	\0\0À\0\0ÀÀ\0\n\0\0\0\0ÀÀ\0\0\r\0\0\0\0\0ð\0À\0À\0\0À\0À\0\0\0\0 \nÀÀÀ\0\0\0\0\0ÀÀ\0\0\0À\0ÀÀ\0\0ÀÀ\0Þ\0\0À\nÀ\0ÿÿé\0¯ÿþÿüð\0\0\0\0À
ÀÀ\0\0\0\0\r\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0À\0À\0\0\0\n\0\0\0À\0	À\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0Àì\0\0ÀÀïÿü\0Îÿíÿÿ¬\0\0À\0\0	\0\0\0\0\0Ë\0\0 \0\0\0\0\0\0\0\0À\0\0À\0\0\0\0À\0\0\0\0\0\n\0\0À\0\0À\0\0\0À\0\0À\0À\0\0\0\0\0\0\0\0\0À\0\0Ï\0\0À\0\0\0üÿü\0\rü¾üÿÌ\0\0\0\0\0À\0\0À\0\r\0\r\0\0\0\0\0\0À\0À\0\0\0\0À\0\0\0\0\0\0\0\0À\0\0\0ÀÀ \0\0\0\0À\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0¬\0\0\0\0À\0ïÿì\0ÿüÿÿÀ\0\0\0\0À
À\0\0\0\0\0Ð\0\0\0ÉÀÀ\0\0\0\0\0\0\0ÀÀ\0\0\0\0\0\0\0\0\0 \0À\0\0\0\0\0\0\0À\0\0\0\0\0À\0\0\0\0\0\0\0Ï\0\0\0\0¯ÿÿ\0\0þýþüà\0\0\0\0\0\0\0\0À¬Ð¬\0\0\0\0\0À\0\0\0À\0\0\0\0\0\0À\0ÀÀ\0\0\0\0\0\0\0\0ÀÊ\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0àÀ\0\0À\0\0Þþü¬ïÚïÚÐ\0\0\0À\0\0À\0	À\0\0\0	\0À\0\0É\0\0\0\0À\0\0\0À\0\0\0À\0\0\0\0À\0\0\0\0à\0ÀÀ\0À\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0À\0\0À\0\0\0\0\0ÀïÏþÐ\0¯ïÏ¬\0ÀÀ\0\0\0\0À©À\0Àí\0\0ÀÀÀ\0\0\0\0\0\0À\0\0À\0\0\0\0\0\0\0\0\0\0\0\0	\0À¬\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0ÀÀ\0À\0\0À\0À\0ÏÿÏ\0\0ÏÀÀ\0\0\0\0\0\0\0\0\0É\0\0\0\0	\0\0\0\0\0\0\0\0\0\0À\0À\0\0\0\0\0\0\0ÀÀ\0\0ÊÀ\0ÀÀ\0\0\0\0\0\0\0\0À\0\0À\0\0\0\0\0\0\0\0À\0\0\0À\0\0\0\0\0ïíïÀËÏÀÀ\0\0\0À\0\0\0\r\0\0\0\nÀ\0\0\0\0\0À\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0ÀÀ\0\0\0\0À\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0À\0\0À\0\0\0Àðì¬\0à \0À\0\0\0\0\0ÀÀ\0\0\0\0\0ÀÀ\0\0À\0\0À\0ÀÀ\0\0\0\0\0\0\0\0\0\0\nÀÀÀ\0\0ÀÀÀÀ\0\0\0\0À\0ÀÀ\0\0À\0\0\0\0\0\0À\0\0\0À\0\0À\0\0þðÀ\0ÊÀÀ\0\0\0\0\0\0\0\0À\0\0\0\0\0\0ÀðÀ\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0À\0À\0\0\0\0\0\0\0	 \0\0\0ÀÀ\0À\0\0\0\0\0\0\0\0\0\0À\0À\0\0À\0À\0À\0\0\0Ì\0À\0\0À\0ÀÀ\0\0\0\0ÀÀ\0\0\0\0\0\0À\0À\0\0\0\0\0\0À\0\0\0À\0\0\0\0À\0ÀÀ\0\0\0\0À\0\0àÀ\0\0\0\0\0\0\0\0\0À\0\0À\0À\0\0\0\0\0\0\0\0\0\0\0\0À\0Àì\0à\0\0\0À\0\0\0\0\0ÀÀÀÀ\0\0À\nÀÀ\0À\0ÀÀ\0\0\0À\0\0\0\0\0\0\0À\0\0\0\0\0\0\0¬\0À\0À\0ÐàÀÀ\0ÀÀÀ\0À\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿ\0\0\0\0\0\0A­þ','Laura is directie-secretaresse.  Ze  heeft een bijkomende cursus handelscorrespondentie Frans gevolgd en leest en schrijft Frans.'),(9,'Daponte','Anne','Esplanadelaan 13','Leuven','3000','016 20 15 59','Vertegenwoordiger',2425,'5','45',1,'1993-10-12 00:00:00.000000','1966-01-27 00:00:00.000000','2',_binary '\'\0\0\0\0\0 \0\0 \0×
OLE2DCEEA51\0PBrush\0\0\0\0\0\0 \0\0\0PBrush\0\0\0\0\0\0\0\00 0 191 222\0@T\0\0BMT\0\0\0\0\0\0v\0\0\0(\0\0\0À\0\0\0ß\0\0\0\0\0\0\0\0\0 S\0\0Ä\0\0Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÀÀÀ\0\0\0ÿ\0\0ÿ\0\0\0ÿÿ\0ÿ\0\0\0ÿ\0ÿ\0ÿÿ\0\0ÿÿÿ\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0þÿÿÿÿÿÿÿÿÿÿÿÿðÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûð\0	ÿÿÿÿÿÿÿÿÿÿÿÿûïÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿû\0¯ÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿúÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿËÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿÿÿÿÿÿÿÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûßÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ½«ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ­ÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿÿÿÿÿÿÿÿÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ùÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿¿ÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿÿÿÿÿÿÿÿûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûûÿÿÿ½°ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿÿÿÿÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿÿÿÿÿÿÿÿÿÿÿÿÿûÿËÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿÿÿÿÿÿÿÿÿûÿÿ¿ÿÿÿ½ûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿß¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿ¿ÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿûðËÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿÿÿÿÿÿÿÿÿÿÿûÿÿ¿ÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿð\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿ¿¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿÿÿÿÿûÿÿÿÿÿÿÿÿÿûßÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿËÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿÿ¿ûÿûý¿ÿûÿÿûûÿ¿ÿßÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿÿÿÿÿÿûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ûÿûÿÿûûÿûÿÿÿÿÿûÛûûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿëÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿÿÿÿÿÿÿÿÿÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿÿûÿÿÿÿÿ½¿ÿÿÿÿûÿ\r¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿùûÿÿÿÿÿûûùÿ¿ÿÿÿûù\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿýû¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿÿÿÿÿÿÿûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿûÿÿÿÿÿûûûÿûÿÿ¿ðûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿù©ÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿ¿¿ÿÿÿÿ¿ÿý½¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿùûß½ÿÿûÿûûûûÿûÿù©ïÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿû¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿ¿ûûûûÿÿÿÿ¿¿¿ÿ¼¿ð¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿÿÿÿûÿÿÿÿÿÿûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûûÿÿ¿¿ÿ¿¿ûûûÿûÿ¹	ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿûßÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿûûÿûÛÿÿ½ùùÿ¿ÿÿþ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿý­ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿÿÿÿÿÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûûÛÿÿùûûÛûÿ¿¿¹½¹û	ù¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¾
ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ûÿ¿¿¿¿½¹ûÿ	­ëßÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÎÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿ¿ÿÿ½¿½¿¿¿¿Û¹»Ù¿ûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûïÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ûÿ¿ûÛ»½¹éù»Ûÿÿ»ÿ¿¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿðÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûûÿ¹ýû¿¿¹¿¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿðÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿¿¿ÿûù¹¹éûùù¹ùÚÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿÿ¿¹¹»û¹	°»Ùûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿþÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ûûß»ù¹ùù½½\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿïÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿¿ÿûù¹©°¹»
ûÿûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ½¿¿»ÛùÙ½éùé\rýûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿû¿ÿ½¹­©	úû»¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\rÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿÿÿÿû­¹°		¹ù©ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿúÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿû¹ù©©©		°ðÙÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿°	°		
ûÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿¿ûû
¹	°		\n	¹Û¼¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿÿûÛÚù
©	
©É¿¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿï¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿ¿ûû	ùÚ
°Úÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿýÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿ¿»

Ù	
					¹Ðù¿ÿûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÀ\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿¿ûÛ½Ù°­©¿ÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿÿð\0\0»ÿÿÿÿÿÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿù½¹û

			°	©		í¿ÿÿÿûÿÿÿÿÿÿÿÿÿÿÿÿÿÿð\0\0\rïÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿ¿ÛÙ©		\0	
ÚÛûÿÿÿÿÿÿÿÿ¿ÿÿÿÿÿÿÿÿÿÿð\0¾þÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿ¿ûÛÿûù¼¹ù
		°	\0	

ûÿ¿ÿÿÿÿÿÿûÿÿÿÿ¿ÿÿÿ¿ðü¼ëÿÿÿÿÿÿÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿ¿¿Û	¹
	©	\0\0	¹¹ùÉ­ÿÿÿÿÿÿÿÿÿÿÿûÿÿÿÿÿÿÿ¿ûÀ¼ûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûûÿ¿ÿÿÿ¿Ûù	°	©	\r°°ù½¿ÿÿÿÿÿÿÿÿÿÿûÿÿÿ¿ÿÿÿÿþúËÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÛÿ¿ÿ»ù¹¹Ë¹				\0	\0¹»	Ûûûÿÿûÿÿÿÿÿÿÿÿÿÿÿûÿÿûÿÿÿÿÿÿÿÿÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿¿¿ÿ¿ÿÿ½¹°
	©	\r¼­	ÿÿÿ¿ÿÿÿÿÿÿÿÿÿÿûÿþÿ¿þÿì­Ëÿûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿû¿ÿûû			\n\0\0¿¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿À¯ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¹ûÿûÿÛù¹			\0\0¹\0ÿÿ¿ÿÿÿÿ¿ÿÿÿÿÿÿÿÿÿÿÿûÿÿ\0Ï¯ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿ¿						
ËÛÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿ¿ûÿûÿÿÿÿþ	ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ù¿¿ÿû¿°¹

	°¹°¹¿ûÿÿÿ¿ÿÿÿÿÿÿÿÿÿÿÿûÿÿ¿ïÿðÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ»ùûûùþÐ			©	\0	¹	¹\0°ÿÿÿÿÿÿûÿÿÿÿÿ¿ûÿÿÿÿûÿÿÿúÿ®ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿùÿ
ÿÿûù½¹	°\0¹©é¿¿ûÿÿÿÿÿ¿ÿÿÿÿÿûÿ¿ýúÿÿðéÊÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ûÿ¿Û°		ùù	©ïÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿÿ¿¿­ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿ¹ûÿûý¿¹©	°¹		
°¹¹	\r¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿûûÿûúÿÞ\nÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿùÿ½¿½¹°Ùù¼©		©					
­°°
ûûûÿûÿÿÿÿÿÿÿûûÛÏ¿ÿÿÿ½ÿÛûÿÊÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿþÿÿÿÿÿÿÿÿÿÿÿ¿»Ûûÿ¯\0		¹				°Ú	½¿ÿÿûÿÿÿÿÿþùéÉÐ°¹½¯ïÿ¿¾ý¯\r¿ûÿûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¯ÿÿÿÿÿÿÿÿÿÿÿÿ½½¿Ûù­©Ë¹©	\0¹		ð	ûÿ¿ÿÿÿÿÿûÛ		 ûÐùù¯ïÿúÿ\nüÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿþýÿþÿÿÿÿÿÿÿÿÿÿÿ¿Û¿¿»ÛÛ\0©
	
\0°	\n¯ûûÿûÿÿÿÿ½°ð­	Ú	
û¿¿Û½¿¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿßûééÿÿÿÿÿÿÿÿÿÿûû»Ûùý°¿	\0 		
\0	¹	\nÛÛÿÿÿ»Ë
°ùé¯	ËÉÿ¿ÀÀÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿü¿ÿÿÿÿÿÿÿÿÿÿÿùý¹ûû¹\r©				
			Ð­½¿¿ûùùù­¹ð¹°½¹Ù¹
Éÿ	ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿùéðÚËÀÿÿÿÿÿÿÿÿÿÿÿºûùëÛ		\0	
\0\0\0	\0¹© ©¯ÿÿÛÚ½°½¹­¼¹
©¹
\0¿ÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿúÚÚà¼©ÿÿÿÿÿÿÿÿÿÿÿ¿½Û¹ùé			\0¹		\0\0¼¹ù©	¿ÿ»Û¹­¹¹½¹«¼°\0Ëÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûý­¼¼Ë\nÐÿÿÿÿÿÿÿÿÿÿûûÛù½¹ÿ	\0				\0		\0		\0\0	
ÐºÙ¿»Ùú¹ûÛÚ
Ë	½ûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿü¿\nÛÀð¬ ­\nÚÿÿÿÿÿÿÿÿÿÿ¿°ðËù¹	
	\0			\0\0¹
Ûù¾½¿¹ûù½½¹¹°¹é¹©		 Êÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¯Ú\0ÚÐÐ­ÿÿÿÿÿÿÿÿÿÿûûÿß¹¿Û	\0\0		\0			\0	\0\0\0\0»ÛÚ¹¿¹ð¹¹éùÛËÙù 
ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿëÚÚÚ\nÐ½©\nÚëûÿÿÿÿÿÿÿÿÿý¿»é		°	\0		
\0	\0\0\0©\0	\0
	¹½¿¹»ùù»ûÛÛ¹¼½¹°¹©¹º\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ½­­­­
ÊÉà­\0ýÿÿÿÿ¿ÿÿÿÿûûÿ½­»		\0\0\0\0		\0\0\0\0	ËÛù»½½¹¿Û¹¹ù½½©½Ð©»ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿþý¯ÚÚÚÐ¼©¼©Úûÿûÿÿÿÿÿÿÿÿ¿ÿ¿¹»
	\0\0°		\0	\0		\0\0\0¹»ûù»ÛÛ»Ûùù»
Ú½©©
 ðÛÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÛÚù­­­
ÊÚÊ ð¿ûÿûÿÿÿÿÿÿÿÿùû½û¹	\0\0\0\0\0	\0½¿½¹¿»ùù¹»¹½½¹ËÏ©ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûï­¼ð¼°ð­©­
ËÏ
ÿÿÿÿÿÿÿÿûÿÿ¿¿ýû
°©\0	\0\0		\0\0		\0\0\0\0\0\0	ùéùÛ»ù»½½¿­¹¹°°¹¬ûÿÿÿÿÿÿÿÿÿÿÿÿÿûÏÚÚÚÚð¼¼°¼¯ûÿ¿ûûÿÿÿÿÿÿÿû¹ûÛ°©\0		©	
\0\0		\0\0\0½½»¿ûÛÛ¹ùû¹­»°½½¼¹	­¹ûÿÿÿÿÿÿÿÿÿÿûþ¼¿­é©í©éé©ë
ËËÉÿïÿÿÿßÿ¿ÿÿÿÿÿ¿ÿù¹©\r\0\0		\0\0	\0\0\0\0\0\0ûûÛùùû½½»¿»¹ûÛÙ¹½¹©¹°\0¿¿¿ÿÿÿÿÿÿÿÿþßßûÛÚÞ°ü°¼¼¼¼¼Þÿûÿ¿¿¿¿ÿÿ¿¿ÿûùü¿¿					\0°\0	\0\0	\0\0¹ü½»¹Û»»»
ù©«½½©ù\0\0¿ÿÿÿÿÿÿÿÿÿ¯©ðÚÚÚÐðúÚûÿÿÿÿÿÿûÿÿÿÿÿ¿û¿©	\0	 					\0\0\0\0		
»ù¼¿»½ûû¿ù¿½¿ùùÚ½°\0ÛûÿÿÿÿÿÿÿËï°ùðúÜ©ë
Ë
ËÏ
é­
ËËËÿÿûÿ¿Ûý¿ûÿÿ¹ý¹»°\0			\0\0	\0\0	\0\0»ùùÿ¹»Û¹¹ûßÛ
¹¹»ÚÙ¹\0¯¿ûÙÿÿÿÿÿùûÛÚé¼º½­
Ë	é¯ïûÿÿïÿÿ¿¿¾ùÛÿ¿½		°\0			\0				\0\0	\0	\0	¹¹¹ùù¹¹»¿»ùù¿¼½»¼\0Ûÿ»ïÿÿÿù¼¼°ý©ÛééÚùëÚÚÞÚÚððÚÚÛÿÿïûÿ¿ûÛù½û¯Ûùù¹°\0\0\0	\0	\0\0
ùûûÛ¿»¹¹ÛÛÛÙ¹úÛ\0¹\r\nÿÿûûËÛÚ½®½¯­­¼°¼¾¼¾ûÿÿÿÿü¿ÿû¿Ù½¿¿©	©			\0	©	©					\0\0\0\0\0\0	½¼¹½½¹ùû¹½¹¹»ÿ½¿¹°\0	\0\0¹ûûÿÊÛ
ÚùùÚððÚÚééððÚÚððúÚÿÿûÿÿ¿ÿûÿ½ð¼»é°°¹	 	\0\0\0\0\0	\0\0	»Ûúù¹û¿¿¹ûû½½¹¿Û°»Û\0\0\0\0\0		\0¬¹¼¿¯¿­¯­¯¼ÿÿÿÿ¾ÿÿ¿ÛÚ»ÛÛ©
	©	©		\0	\0\0	\0ý»½¹¿ùû½¹ù¹ûÛù¹ÛÐùù°\0\0\0\0\0\0\0\0
	ÛÚÚðûÛðùùéðúÚÚÚÛéëËÊÚðÿÿÿÿÿÿ¿Ï¾¹ù©©ËË°Û	
\0\0	\0	\0\0\0\0\0	¿¿¿ÿ»ûûÛ¿»¹¹­¿¿°»Ð\0\0\0\0\0	\0\n	 ­­½­¯®­­¬¼¹éëÚÚûÿ¿ïÿÿÿ¿»	°É			\0				 \0		\0\0	»é¹¹ù¿¿¿ùûûûùû¹¹»ùù¿¼¹\0\0\0\0\0\0		ÊÉù¾¿¼¿¼½¾¼¾ÛéëËÿïÿûÿûéðùé©ðºð°û
ù°\0\0\0	\0\0\0\0\0\0
\r¿¿ûûß¿½½½¿¹ùûÙ½ûù©\0\0\0\0\0\0\0\0©À
Ë­¾\r­¾­¾ÚÚÚÿÿÿÿûíÿéà°
ý¹ÿ½©©			¹		\0	\0\0\0
Û¿½»û¿Ûûûûûûý¿»»½¯\0\0\0\0\0	ðððúðûéûéÛéùþ½­¾­­éðúûûûûïûé

Úð¿
û½¹¹©\0\0\0\0\0\0\0\0\0\0\0\0\0	ÛÛùÿ¿¿¿¿¿¿»ùùû½½¹ð»¿¹°\0\0\0\0\0\0\0\0
	­»ÛÛÚÚÚÚúÚÚË¼­¼¼¿©ëËüÿíïß¼¼¼ \nð¿é°½¹«
É	\0	\0\0\0\0\0	¿¹ÿ¿ûû¿»ÛÛù¿¾ù¹¹¹¹ù¿	\0\0\0\0\0\0\0	\0¼°ù­­¯­¿¼¿Ééëùï½¯¬ééëðûûëËÊ\n\r­¯»Úðð¼½Û¹		\0\0\0\0	\0 \0\0\0\0\0\0¹¹¿¿¿ùý¹»Û
Ûû\0\0\0\0\0\0\0		ÚûÚß¼¿¯ÚÐ¿¼þ¾Û¼¼ðð­	\n\0°¼¿¿

É°»©¹
°		\0\0\0\0\0\0\0\0\0»¿¿¿¿¿û¿½½©½¹­½¹¹¹»ß\0\0\0\0\0\0\0ÚÛ½­­ºðÿ¼½­«ëü¿¹¼éëÊËÊÚ­\0¬©
ËËð°°ð\r­ð¹©		\0	\0	\0\0\0\0\0	ùù½½½ùûÛÛÛ
°¹¹¹ð¹©ù½»Ú\0\0\0\0\0\0\0	\0°ð¿ÛÚûËÞ¾ÚËü¯ïéï 	¬\n\n 


ËËð»	\0	\0\0	\0\0\0\0
¿»û¿¿»ÿ¹¹ËÛ
Éù¹ÛÛ
Û°\0\0\0\0\0\0é\në¼¼½¯­¼ûéý¯­ûËùí¹®ÛÚ	à¼	 \0\0°ùé¹©é	©¹°¹	
			\0\0\0	\0\0\0\0\0½ûß½½¿ûÛ	¹Ð°Ð
É°¹ù\0\0\0\0\0\0\0	ËËËúÚÛË¾ºÞºÞý¾­\0\0\0 \0àà\n\n
ÊÛ
\r©	Ð°\0	\0\0	\0\0\0	û¹û½¹ðû¿¿°
¹°\r¹¹½½¿\0\0\0\0\0\0	\0Ëð¿ùéûï½íùíùûëúý½ë
Ëß\0\0\0\nÀ\n¬Ð°¹ ð¬°º
\0	\0\0\0\0\0\0¹ÛÛ½¹ÿûÙ			Ú¹
ùé¹ð\0\0\0\0	
\0	©
ËÞþ¾ÚÞº¾ú¾¾ÛÏÚþ½þðú\0\0\0\0\n\n\n	 «\0ù\0
\r¼°ð
\0\0		\0\0	\0\0\0¹¿¿	©Ú»Û		
	¹

¹\0\0\0\0\0\0\0\0úúûïùùûëýí½ýí¾ûëËËËé\0\0\0\0 \0\0Ê\n

\n
\n

°¹		\0\0\0\0\0\0\0	Ûù¹¹¹Ù	ù	º°\n
ùù½½¹ù \0\0\0\0		\0¯¾¾ßÚûúúûí¼½ÿ¾¾þ\0\0\0 \0¼ \n\r¬°¼°Ðð
	Ð\0\0\0\0
\0¿»			\0\0ûëùúù			
¯\0\0\0\0\0°¾½½¿ëëßý¿¯½í½¼ûïëéí½½¾\0\0\0\0\0\0\n


\n
\n

©¹¹© \0\0\0\0	\0
ùº\0\0\0¹	ù	\0	\0\0ÛÛËÛ\0\0\0\0\0\0	éÚúþßúÚúßÚûïï¼½½¾ûïëí\0\0\0\0 °°\n\0¬\0°°°¼	\0\0Ð¼	\0\0\0\0\0\0\0\0¹û¹ùÙ° \0¹­¹Ú	\0\0\0	Ûù\0\0\0\0\0û¯Ûþ¾¿ý¾¿¼ùùïûïí¼¿\0\0\0	\0\0	\0ððð¾
Ë\n

		
\0\0	\0\0\0\0
	Ûùû¹»Ù		°\0\0\0¼	½¯\0\0\0	\0\0	¼ûý½¯ËÛþÞúûüÿ¾þ½¾ÛÛïùïû\0\0\0 °¬
\0 



	\0\0\0	 	\0\0		\0		\0¿¹û¹ù	¹é¹ùùË	¹¹	\0\0\0»é¹ù\0\0\0\0\0ÛïÚúÿ¿þ¿¿üûðÿÛþý¾þ½¾¿\0\0\0	©\0 \0
\0¼©­­	
\nÐ\0	\0\0\0\0\0\0\0	ùûßÛÛÛ	Û¹¹		©É
Û
	\r¹Û½¿\0\0	\0\0 Ûï¿½ùïùüÿï¯¾ÿþ¾Ûúûùÿíûï\0\n\nÊ	 ° Ë\n
\0°\0\n\0\0	
	\0\0\0	\0		\0\0°¿½»½¹¹	°Ûÿð°°	»½¯ÛÐ¹½°\0\0		\r¯ÿÛýï¯ý¯ÿ½¿ßÿ½ÿ¾ßüÿï­ÿ\0\0	\0©©¬\0\0°	\n
\0°	°° 	\0	\0\0	\0\0
ÛÛÿÛ½½
É»ùû		\0À	
	¹Ù¹»ðûð\0\0\0	©ëÿëùÿëÿ¯þþ¿ÿþ½ïúûúÛïÿé\0©\n\n°
\n\0¼©\0À\0\0©\0\r	\0\0\0\0	\0	\0\0ûûÛ»Û¹¹½¿¹			\r\0°»½½¿¹\0\0\0ºßëýþý¿ÿß¿ûÿÿ¯ÿ½¿Þÿÿÿ­¿©¯\n \0 \n
À°\0 °°©	\0\0\0\0©\0½»ûý»Û

ù		©\0			¹
Ù¹ù¹ûü\0\0\0\0	¿½ÿ¿¿íúÿÏÿßïÿï¾ÿï¿ùúÚÿïð¼°°º° ©\0\0\0°\r\0\n	\0\0\0\0\0\0¿½ûû½¹ùÙ	ù¹¹¹		¹
Ù½½½»	\0°ëþÿûïß¿ÿûÿ¾ûûÛÿßûÿï¾ÿÿß½ËûË¯
éë\nÊ\0à\0\0à

\0°©©¬	
\0				\0\0¿½¿¿ûûù¹½¹ÿÛ\0\0¹»ù©¹
Ú»ÿ\0\0\0\0	½ûÿïß¯ÿûÿÿÿþÿþûïÞûßÿÿ¯¾þúÚúùë

Ë	À \0\0\nà 
\0	\0		\0\0\0\0ûûûÿ¹û		ûû¹¹ù¹ÛÛ	©Ùù½
»Ûÿ\0\0°¹ëíûûÿÿïþÿïÿÿÿÿÿÿ¿þûÏ½ÿÿ¿¿ÿÛÚ°ð¼°ð©\0	 °\nêÐ°é ¬°°		
\0\0\0ùÿ¿ûûÿ½¿ÿ¿ÛÿÛ¹»¹¿½«¹ÿ¿ 		\0½¿ýÿúÿÿ¿ÿ¿úÿ¾ûÿÿÿûÿÿþýïßü¿¯¯	à¼\0\0\0 ©ê©
éÙ	°°	\0\0°ûûÿÿÿ¿ûÛûù
ûÿ¿û¿¿ùû	¹½Ù¿û\0\0\0¾ÿúÿÿûÿÿÿÿÿÿÿÿþ¿ïÿÿûÿûûþûþ¿\n\n\0 \nÛ¿
¯\nà©é\r­	©\0¿ÿ¿¿»ûûÿÿ¹û¹ÿûÿ¿ÿ¿¿¿¹ûûû¹¹ÿÿ°\0\0ßûÿþ¿ÿÿÿÿÿÿÿÿÿÿÿûïÿïÿÿÿûÿûß­­\0À¼\0\0 ¹éé¾¾ðûð½Û
«	\0\0	¿ùûûûÿÿÿûûÿûÛ¿ûÿûÿûûÿ
û¹½»ÛÛÙûûÿÐ		©
ûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿúÿïÿúº	 \0\0ÊÉ¬¯«ï»úÛë¯¬»ÙÉ©Ù\0	\0¿»ù¿ÿûÿ¿¿¿ÿ¿»½ÿÿÿÿ¿¿ùÛûý»ù½¿½¿ÿ°\0\nÐÿïÿëÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ïÿ\r­©\0\0\0\0\0\0Ûùÿûÿÿÿûùð¼	¿ÿ¿¿ûÿÿûûÿÿû¹»ûÿ¿ûÿÙ	¿û¿¿Û¿û¿ÿð\0	
¿¿ÿÿûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿ©«  \0\0\0\n	¬¾¾¿½¿¾ÛëëË©\r
		\0
ÿûû¿¿¿¿ÿ¿¿ûùûûÿ¿ÿûÿÿù°°Û¹ÿû¿¿ûß»¿ÿ¹
\r©úßÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÚ\r\r \0\0\0\0\0	©ëÛþþþðÿ¾½­©\r ¹	½¿¿ÿ¿ÿÿûÿÿ¿ûÿûûûûÿÿ¿¹¿ûÿûÛÿûÿ¿ù¹\nÿÿ¯ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ ð\n	\0\0\0\0\0©éëÛÿ¿ùëÚ\né\0¿¿»ÿ¿ÿ¿ûûÿ¿¿¿½¿¿¿ûûû¹û½¹û½ÿûÛÿ¿Ûÿÿ¿¬Ûðÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\r  \0\0\0\0\0\0\0\0
\r¬¼¾Þðé®«	\0¿ÿù¿¿ûÿ¿ÿ¿ûÛûùûùûÿ»ù½»Û¿ùÿ»¿ûß¿ùÿÛùßºÿûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\n\0Ð©\0\0\0\0\0\0\nÊ\n

¼°¾¹éÚ»ýÿ¿ÿ¿ûû¿¿¿¹ûùûûûÿÛ¹»ùù¿ûÿÿÿ¿¿¿¿¿¿ùðûÛÛÿÿûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ \0\0\0\0\0\0\0\0	À

ËÀ	©­¼°©¿Ù½ûûÿûû¿½½¹ùÿû»ÙéÛ»ÿ¿ûûûûûûÿûÿ½©»¯ùëÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ \0\0\0\0\0\0\0\0\0\0\0\0©\0¼\0\0\0°\0°é	 \nß¹Û¿¿ÛûÿÙ	é	ùÛ½¿¿ùð©ðÙ½¿¿ÿÿÿÿÿ¿»ÿ½»¿ß¯ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\n\0\0\0\0\0\0\0\n\0\0 \0\0 \0 À
\nú	©©	»¹ûûûÿù©	½ºÐ»ß¹ù
	ÚÛùÿ¿¿¿ûûÿÿûÿý¹ÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0\0\n\0°\0\0 À\0¼­
	Ð\0½½¿¹¹©½	¿Ð	\0½ùûûÉ\nÛ	»ÿÿÿÿÿÿ½»¿û¾ùÿûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0\0\0°\0°\n

\n¼° º	»¹ûûÉ		Ð¼¿½	\n		\0	ûÿÿ¿ûûÿûÿ¿ý¾ùïÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\n\0\0\0\0\0\0\0\n\0  \0à¼°¬
\n
É\0
Ðù	¿¹	\0	\0\0\0\0\0\0
	«ß	°\0° ¿¿ÿÿÿÿ¿ÿûÛûÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\n\0\0\0\0\0\n\0
¬ÚÚ¬

Ëª\0ð¼©°
¿Û»\0\0\0\0\0\0\0½«			\0	©	°		¹ÿûÿûûûÿ½¿ðùÿÿÿÿÿÿÿÿÿÿÿÿëÿÿÿÿÿÿÿÿÿÿ\0\n\0\0\0\0\0\0ðÉ¯

¾¹éðÉ
\0­ ¹¬¹ù
	éû	
\0\0\0\0\0\0	


Ùð\0\0\0\0©éûÿÿ¿ÿÿû\0ûûþÿ¿ÿÿÿÿÿÿÿÿÿ½ÿÿÿÿÿÿÿþÿÿÿ	\0\0\0\0 \0\0ºððàË
é«Þ¹ °¬\n
Êû	¹½û½\0\0	\0\0\0°Ù½
	\0		\0\0\0	\0	ûûÿ¿ûÿ	
¿ÛÛùí½½ëýÿß¿¯¾ÿÿÿ¿¿¿ÿÿûüûÛ\0\0\0\0\0\0\0­¬ºý«Ë\n	©à°©©°
ÚÛ¿Û	°\0	©		Ë½\0\0\0\0\0\0\0			Éûûÿùÿ¿¯ûÿï½ëï¾ýÿßÛðùïÞß¯½ÿÿ¾ÿ\0\0\0\0\0\0\0\0\n°««
é­¯¯¼¬°\r\n\n
ÚË	\0		¿½»û
	\0	\0	¹°¹	©\0\0\0\0\0\0\0\0\0\0\0ùÿÿ¹\0
Ûü½¿Þ¿Ûß½¯¾ß¿ý¿ûýþ½éíð\0\0\0\0\0\0°­¼¾Úð½¯Ë
\0 ¬¼°©« ¹\0\0\0
ËÛù
É \0	\0\0\0\0\0\0	\0ÿÿÿù	¿­¯½¿éý¯­¯ÚùíºÚÚúÚùÚ
\0\0\0\0\0\n\n\n
©ª°¼ Úð°ð\n	


 ð\0\0\0ÚÚ\0\0\0\0\0	Ú			\0\0\0\0\0Ú½ûÿ¿ù	
ý¼úÛÚ½«ÚÛ­ùëÙí»ËëÉ\0\0\0\n\0\0\0\0¼°ÐéÐð½¯­­¬\nÉ\0à¼º\r©©\0\0\0		
É	\0\0\0		¹©	\0\0\0\0	\0\0\0	Ú¿ÿÿú­©ðððéü¯Ú©ðÞðÚð¼ÚÐ
\0\0\0\0\0\0É\n\0\n\n°ª à Ú°°°\0é©ë­ª\0	\0\0\0\0\0\0	\0\r		\0\0\0\0
©ûÿ¿ÿ¹¹¹ù½«ËË©ùéêÜ©é	ëÀü°ðé\n\0\0\0\0\0\0\n\r\0©é\r	É©­©ÀÀ\0\0­«Ë© °\0\0\0\0\0
\r©©Ë©Û	Ú©	\n\0\0\0¹\0
ÛûÿûÐ¿ÿúÚ°ð¼°ú¼½
éÏÛ\0\0\0\0\0\0\0\0\0©À\0\n\n\n\0\n Ú¼º\0 \0\0\0\0	\0\0
É		©°½
Ð\0\0\0\0¿ÿÿ¿¹½½ë\r­Ë\r©ËËËÐàð­°¬°àðààà\0\0\0\0\0\0\0\0\0\0
\0ð\r\0©\0\0
	à°ûðð°¬\0\0\0\0\0\0\0	\0\0ð		\0					©
\0\0		©	ûûÿÿ¿ý¿©­ °ÚÚ°°­ªÚÛ\0	Ê\0\0\0\0\0\0\0\0\0\0\0\0\n\0à \0\0 \n
­¯«
\0\0\0\0\0\0\0\0\0		\0°	©

	
¹

	©	¿»ûÿ¹	«ÿÛ\r¼¼¼¼Ú	ÀÙÉÀ¬© ÉÀ	\nËÊÀ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¬°ðéúùðð \0\0\0\0\0\0\0\0\0\0\0	\0	 			ùùé°Ûß½ùýÿû¯½¹ºÛÀÐ¼©\n\nÐ°°¼¬\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\nË
¿¯¯
\r©\0\0\0\0\0\0\0\0\0	\0	\0\0\0\0	\0		©		Ûß¿¿¿¿¿ûûÿ¿\0½¿\r\0¹­\n\0 \r\r
Ê\n\0ÀÀ	 ðÀà\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n	 °ððùûé¯\n\0\0\0\0\0\0\0\0\0\0\0\0\0¹°»½ûÿÿÿùûð\0¿ûð
ÊÉ©À\n\r ð ©¬	\r\r©
ÊÀ\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r­«¾¾à¼\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0					
\r
ù¹ëÿ¿ûÿ»¿¿¿¹\n
¿ÿàð \r\0\r\0É\nÊ\n¬\0ð	À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n

Ëé­®\n\n\0\0\0\0\0\0\0\0\0\0\0	\0			\0\0¹½¹é½¿¿ûýûÛ\0ÞÿÚ	\0ËÉ		à°\n\nÚ\n\0¬\0À\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0	\0\0À¼­«
Ë©°­	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0				©	

ÚÛ½½½¿¼»ý©\0
½¹	ðð°\nÊ\0\0À\0À\0Ú\0ð¬°à\0\0\0 À\0\0\0\n\0\0\0\0\0\0\0\0\0\n\0\0 


Ë	­
ËÊÐ \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0		ù¹ù­»ÛÛûû¼\0Ú\0ð\0				\0ÊÊ\n \0Ð	­­­\0°\0\0\0\0\nÀÀ\0\n\0\0\0\0à\0À\nÀ ¼°©ª\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0			é
Ë
Û½¿»ù¹û°\0
Û\0°\0°\0\0\0	©\0ÐÀêà\nË\nÀ\0\0\0\0\0\0\0\n
\0\0\0\0\n\0\r\0	\n	éÊÚÊ\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0		¹¹½»Û½½¹½½¼\r¯\0	\0à°\0é\0\0à
Ë	Êð¼\r©àð\0 \0\0\0¬­\n\0\0\0\r\0\n\n\0àº
© \0ð°  \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	°°É\r¹½»Û¿¿û»û	ËÚù\0°é	À©	\0°à¼¬¼­
Ê
à\n\0\0\0 ­\n\n\n\n\0\r\n	
°\n\nÊÉ	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0		
Ú½¿Ûß	\0\0°
ÚÀ 
Ê\0À\0	ÊÉééééééðé¬½éàð\0\0\0À\0°À\0\0À\0\n\r Ë«
\n\n¼\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	ËÛ»ÿ¿ù¿	
½­­
ÊÐð	\n\0\0 \nÚËÊ
Ë\0¼\0 \0\0À \0©Ê\n\0à­© º\n¾Ê\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0			\0	
	¹é¿¿ûÛù\n\0ËÚÚ
\nÐð\0°\r	àððððððí©ééü©ËÀ\r \0\0\0\0\0É\0\0\0\0ËË	À©ëé\n\0 À\r\n	 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0°ùÿ¿»ÿ	\0¹¯\nÚÐÚ\rª\0Ð\0 	ééééàðð¼¼°à¼ \0 \0\0\0\0Ê\0 \0Ë\n¬° ÊÚ\n¼
 \n\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0°\rù¿ûûÛùÿù©\0	\0ÛÚ
©ÚÉË\n\0
ËËËÉéà\0\0\n\0\n\0\0\0\n\0À\n\nËé ééëÚÀ ¬ É  \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0ù¿»ûù»Ð\0ùëëÞÚ ° À	àééàð¼¼¼¼¼­­¬¯\0	À\0ð\0\n\0\0\0\0\0à¬\0
©®\0\n\r\0\n	\0	\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0	\0ù¿ûûÿ½û½©\0\n½½«
Ë\r\r \0\0\0
ËËËËËËÚÚÛÐËÊ\0Ú\0°\r\0\0\n\0\0\0 	\n ©é ÚÉé	à­ ©\0©	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n	
	é¿ÛÛû¿¿¿Û	\0Ûÿ½é­ ðÊ\n	À\n	à¼¼¼¼¼­­­¬¼¼®°	\n
Ê\0 \0\0\0 À\0\0¬\nÉÀ\0\r ®\nÚ\r\nÊ \0 \0\0	\0\0\0	\0\0\0\0\0\0	\0\0\0ð¹ù¿¿½ûùû\n\0¼¿úÚ\r\n	\r\0 	éééééððéééà½\0àÀ¬\0°\0\0\0\0\0 À\0\0\0\n\nÚ\n	¬ é  \n\0 \0\0\0\0	\0\0\0\0	\0\0\0\0\0
	
¿ûûÿùûù¿¹ðû¾½é­ ðððà¬\0\0
ËÊ	\0éªÀ\0\0\0\0\0\0\0à\0À\0\0Ð\0à\nÀ\n	\0\0\0\0\0\0	\0\0\0	\0\0\0\0		éëÛ½ýû¿¿ùÿ	\0°ý¾Ú\r\n\0		\0\0© ððððééà¼¼¼ééðÀ \nÙé \0\0\0\0\0\0\0\0à\0	\0 	à¯©¬\0°à\n\n\0\0\0\0\0\0¼	\0
	\0	
		\0\0\0Ë¹¿Û¿¿ÿ½¿
\0Úßûé­ ðééé\0à
	
ËË¬\n\r­ª\0\0\0\0\0\0\0\0\0\0\0à\n\0\0 \nÐ	\n À
	\0\0\0\0	\0		 \n		\0\0\0ûûùûù°ù	©é½¹é­\n\0\0\0À\0\0°ËËé­\0à¼\0\0\0\0\0\0\0\0\0\0\0\0©\r¬°¬©\nÚ\0\0\0\0\0\0
\0 	
Û	 \0	©Û¿½¿ù¿°º	ûÿü°ÐéÊ
ËÀ	\0À¼ðð½©éàð°éð©\0	  \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n
\0© \0\0à \0\0\0\0				°		¹				\0¹Ë
ËûûÛûË\rðßûû\n\n \0\n \0
\nÚÚÏ
ÊÞë\r\0\nÀ \0\0\0\0¬\0\0\0\0\0\0\0\0\0\0\0­\0\n\0ðúÐ\0\0\0\0\0\0­\0\0
	¹	°°	\n\0	é°¹ùû¿»Û	ºûðùéÉàËÊ\nÐ\0\0ðË\nÚÚ
ËÚ
\0à \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¬
\0 \n\0\0\0
\n\r\0\0\0\0\0	\0	°©\0	Ú¼»ù½¼º\r¿Ð¼\n\n
\0\0\nÀ	\0\0¼­­¬°ð¼¼¼é®¼ ð\r\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¼©¬ ú©
\0\0\0\0\0\0	©\0ù	\0	­			
	\0©Ë	½©û
Ùð»üºÐ©ÉÀËÊÊ\nÀ\0	
ËËËËÏËËÉÉ­\0\0\0\0\0\0 \n\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\n	\0Ðà\0\0\0\0	©­¹°°\n\0	 °¹¹ú½¿	éûý © 	\0	\nÀ¬¼¼­©é¬©àéºÐ \n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0© àÀÐ¬ ­®\0\0\0\0
\0\0\n\r		\0ðð	©¹\0
Ùù
	
¹é¿¿\0©
\r\r
À	\0àÉ
ËÚÏ
ËÐëËÍ\nÚÀ\0\0 \n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\n\n\0Ú	ËÀ\0\0\0		¹	°°\0		¹°°	É©\0	°	 ûÞé	àÚÀà© ©\n\0\0\0°í­ ð¼­¬¼®Ú­\0\0\0\0\0\n \0\0\0\0\0\0\0\0\0\0\0\0\nÚ­¬¬\nÐ ¼ ¯À\0\0\0\0		Ð
°°
Ð
½©	°°°½¿¿	­\0©	\r\nÀ\0\0\r©àðé¬¹Ï©ÎÐé¬\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\r àÐ \0\n\0ÊÐ°	\0\0\0	
	©Ë	
\r 	½	
		\0Û	ÚÛûËÿ¹\n
\n\n\n\0Ð\0
Ú­­¼½é¬«©
\0\0À\0\0¬\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÚÏªÐ\n\n\0É \n
\0	\0\0\0	 	à¹Û\r\0Ê½

Ð©°Û	©¿½»ù°°\r\0\0	\n\r\0 Ð\0ð°üÚÀ¼©éðËððð¼\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¬\n\nÀ\0\n\n\r °Ð\0	\0\0\0°		°©\r°	Úð\0	é»»û¿ÿ°­©àé  ­\n\r\0 \r­©­À¼¼¼\0\0\0¬\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\nÐ°ðàà°\nÐ­\0ð­¬¾
\0\0\0\0\0\0\0\0©	ð»\0©¹­¹ð¹½½¿¿ûù©\n	\0\r\r\0\n\0\0¬©
ÊÚÚé¼¯°Ë­«À°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\n\n
\0ð\nÐ¯\0ðù Ð\0°		\0\0Ù
ÐðÚÛÛ	
Ûëûûý¿é	
\nË\nËÀ ¬ \0	\0ðé¬¼àðÚ°Ð¼Ðð\0¬\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0à°°©ààÊ\0­ªÐ¯úúíª	É\n\0	\0\0\0	©ù	é­
©©¹¿½¿¹ûùû¿û
°ÀÉ\0\r\0
¬\0\0\0°ùà¾\r©Ë­®­®\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0  

\nÊ
	©ÊÚ½êý­ïÛ	\0\0	\0°\0\0©ð°ù¿ßéÉ	ºß½¿¿ÿ½½\0\0© ­ ©àÀ¬¬\0À\n
Éà­¬Ë¬¼ÐéÊÀ\0\0\0\0\0\0\0\0\0\0\0\0\0\r	 \0°¹à°Ê©ëÎÚÿ½ª  \0°¹		\n\0É
í«üß°ý°ûûû\0\0\nÐ\r\0\r\0
\0\0 \0¼Ðù¬°ÉéªÐ°ðà\0\0\0\0\0\0\0\0\0\0\0\0\0 \n\n

\r¬­¬©Ê¼ûþ¯Ëï­«\0
É½\0¼¿
»¹ÉÉûùé	\n ¬° 
ÀÀÚ\0À \0
\nÚ\0ééú¼Ï\0ð\0\0\0\0\0\0\0\0\0\0\0\0\0	\0 \n\0©ÊÏ¯ËÛþÛËÀ
\0 ¹	¹°ÚÿÉ\0\r\r©«ËÛ\0\0©\0	\r\0	à\n\0Ê\0\0¼\r ðÚ ÚÉ¬°¾Ë\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\n\nË
ËÀÊ\0
Úý¯ï¾° ° Ð\0	\rû
\n©	\0	»Ëà	
ð½ûû\0Û\0	\0\0Ê\0­ ¬\0\0Ê\0\0\0\r¬¼ \r¬°ðÚÉ¼\0\0\0\0\0\0\0\0\0\0\0\0© ©	\0°¬\0
\0\n\r¬ ÚùðÿÏÀË\n\0
¹ùÛ­	­»	ð½©­¿¿é©
\0\0\0\0	 Ê\r	 à \0
	¬¼
Ë\rð¾	¬°ëÀ\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\nË\0\n	©À\0\0\0\0\r®¯úûùà°éë\0		\r©©é½ûÛëÛÿÿ­ ¿¿Ë\0	©\0	\0\0\nÀà\nÉ\0¬\0 À\0	É©¼°Ú\nÐÀðð\0\0\0\0\0\0\0\0\0\0\0 \0À °\0°À\0 \0À\0\r\nÉ¼½­í¬©ëÏ¼°Ë\0\0Úð½¾°	ÛÙ¹¼Ð\0©\0\0\0Ð\0 ­\0Ê\0\0°\0	\0\nÚÊ­­\nð	à­­\0\0\0\0\0\0\0\0\0\0\0\0\0°	\0 ¬\0À\0\0\0\0\n\0ÊÚÿûë¼­¯°\0\0­
»Ë­éëûË	©\nÀ\0\0	\0 ÊÐ¬\0\nÊÐ \0àà½¬¹ÊÐ¼éà
Ðà\0\0\0\0\0\0\0\0\0\0\0\0\0\0¬ 	 \0\0 \0\0¬­­¯ÛÏ¿ûÿ¯­¼°Ð©éù¹ð½½°ü¼½«ß¿\n\0À\0\0	\0\0	 ÀÊ\n\0\0\0		ÊÉ¬­¬Ë	à¼\n\0\0\0\0\0\0\0\0\0\0\0\0\0  \0\0\0\0\0\0\0\n\0\nÚÞëúúüÿÚÛÛËË\0½°¼»Úù«Ë½úù	\r	É\0À	\0\0À¬ ðÉ© \0\0\0\0¬°Ð°Û¬°ð°¼©ËéÊ\0\0\0\0\0\0\0\0\0\0\0\0  \0 \0\0\0\0\0\n\0	é¯éÿÿ¾ÿþ¾¼¾Ê½¿ý°ÿù¿ûàÛ\0 \0\0\0	\n	\0\0 À\r\0\r\0\0	\0àÉ\r É­	àÚ°	­\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0à\0\r¬ à°ðùîíÿÿ¿ûßûùþ¹Ë
éïù«Ëù\0\0\0 ©\0\0\0\0à	\n\0©  \n\0	\0°éà
ÊÉ®\r Ë\nÚÀ\0\0\0\0\0\0\0\0\0\0\0\0	 \0\0\0\0\0	à Ë\r©í¯¾ÛþûïÿÿûÏÿëÞ¹¬½ÿÛù¼û\n»Ëð\0
	\0\0\0	\0\0\0	\0
\0	À\0\0À\r¼
Ð¬É\r¼\r¬\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0©à	\r¬¾Þ¼úûÏ¯Ëÿûïÿÿïÿí¿ëÚß°¾Ûï¹éË¼Ð\0	\0	\0\0\0\r
\0à¬\0 °
\0	\0\0©©àÚÀ¼\nÐ¼°àÚ\nÚ	¬\0\0\n\nÀ\0\0\0\0\0\0\0\n\0À\0\0\0\0À\0\0à­­ª¿ûß¿þÿÿúÿ¿ûÿý¿ÿûïßý¾ÛÞ¹É­\0\n\0 	à\0\0	\0\0\0\0		 \0À 	\0


É­
À\r©\r ÚÉ\0
\0É\0 \0\0\0\0\0\0\0\0\n\0 \n\0\0\n \0ÚËíþÞÿïïïýÿÿÿÿÿÿûþüþÿ¯¯ÿ¿ëÛ©	
\r		\0	\0°\0\0	\0\0\nÀ©°
\0\0\0°¼¬\nÐ¬°ðÊÚ\r \0\0Ë  \0\0\0\0\0\0\0\0\0\0\0\0\0\0Ê\0\r¬­¼¿þ½ûßëÿÿÿÿïþþûÿ¿þýÿß­þ¬¹­\0\0\0	\0\0\0\0\0\0©\0\0\0À \0\0Ê\0À\0\0		é­	\0­	¬\r¬ \0\0\0\0\n\0\n\0\n\0\0\0	\0\0\0	\nÊúþþ½ÿ¯ëÿþûïÿÿ½ùÿÿÿÿ¾ÿÿÿ¿ÿË ­\0		\0\0	\0	\0\0\0Ê°°À °	À\0à\nÐ ðàÚÚÉàÚ	\0ú\n\0\0\0\0\0\0\0\0\0\0\n Ê\n\0¬­Ï½þúÜ½ïÿÿÿÏ½ï¾ý¯ÿÿÿ¿úÿþÊ©\0\0°À\0\0\0\0\0\0	À\0\0° 
\0\0	ÀÀ©\r
\r	©¬	 Ú\0Ð\0\0\0\0\0\0\0\n\0À\0\0\0\0\n\0\0\0	\nðþ¿Ï­­ëþ¿ÿÿÿûî°í¯ÿþÿÿÿÿÿÿÿ¼¹\0		\0\n\0\0\0\0\0\0\0À  À \0\n\0\0 Ðð ð ÚÚË	 ÚËÀ é
Ê\n\0\0 \0\0 \0\0\n\0\n\0\0\0À\n\nÀ­¹ðûËÀ©ËßïÿÏ¯Ëûûÿ¿þÿÿÿÿûËÀ\nÐ\0\0\n\0\0©\0\0É\0\n\0\0\r©\0\0 \0°\0	\0\r­\n\r\r \0¼\r °\r¬¬	À\0\0\0\0\0À\0\0\n\0\n\0\0 \0\0\0É\nÐëÞÏ\0àÞ¾ÿûïûÚÞÿÿûþÿïÿÿ­ð	\0 	\0\0	É\0\0	\0\0\0	À\0\0\0ð\0à\0\0\r\n\0°Ð° 
ËÊÊ\r\n	
\n\0\0\0\0\0\n\0À\0\0\0\0\0 \n\n\0­®¼à°¬
¾ÿß¼ééé¯ÿÿÿÿÿÿ¿ïÿÿ­ À		\n		\0\0	\0À\0\0\0\0\0À\0à\0\n		À\0\n	\n\r¬©	àÐ°ðàà\0\0\0\0\0\0\0\0 \0\0  \0\0	ÀÚÚÉË
ÊÐ\0Ð¼ÿßÿëÊ° °üûÿïÿÿÿÿ¿ïÚÚÉ	À\0\r\n\0\0\0\0	\0	\0	\0  \0\0\0À\0\0\0\0\0\0°Ð
\n\n
\n\r\0\0\0\0\0\0\0\0\0\0\0\0 \0\0©\0 \0   ¼\0\n\n\nËïï¾­¯ëþÿÿïÿÿÿÿ¿¿ð°\n		\0		\0\0\0\0\0\0Éà\0ð°\0 \0\0\0\r éÀÉéÀ ÐÐ\0Ê\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0©ÀÉËËÀ\0© \0\r½¿íúÚ

Ïÿÿÿÿþÿïÿÿï		\n\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0à \0\0à°\n
© é\n\0À\0\0\0\0\0\0\0\0 \0\0\0Ê\0\n\0\0 °¬ \r­ ­¯þþÚ\0\n¬úÿÿÿÿÿÿÿÿïÿÛù¬\0	\n\0\0Ð\0\0
\0	\0\0 \n\0à\0À\0\n\0\0ÀééÀ\0éÀÀÐÐ\nÀ\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\n\0Ê\0\0\0	
\n\0\0ðþÛù©ééÊ¿¿þÿÿÿÿÿûÿÿëþÚÉ­\0\0\n\0 	\0\0\0\0\0	\0	À\0\0
	À\0\0 \0\0\n©©  éÀ©à\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\r \0° éÊÚÚý¯\n\n©üÿÿþÿþÿÿÿûÿÿý¼°\0	\r\0\0\0\0	\0\0\0\0\0\0\0\0\n\0\0\0\0©\0\0Ë\0ÉééÉ\nÐÀÐÐ°Ð\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\n\0\0 \0\0\0\0\0 ©¬¾ÚðððÚßï¾ÿÿÿÿÿïÿïûÿëë
	 \0\0À\0	\0\0\0\0\n\0\n\0ÀÚ\0\0\0Ë\0\0\0\0Ê\0 ­

\n\nÊÀ à\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0àªÚËü¾ \n¯¾¿ÿÿÿÿÿÿÿÿÿïÿýðÐÀ\0 	\n	\0	\0\0\0\0\r\0\0À\r \0\0\0À
	¬Ð\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\r
ËÊ¼\n\r úÏÿÿÿÿÿÿÿÿÿÿÿï¿­ 	\r	\0	\0\0\0	\0\0\0\0\0\0\0\0\0\0 \0 \0	\0	\0Àà°	\n	©©© é\0à\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	À\0\0 \0 \0\nÀà¬¼«À­ ­­þ¿ÿÿÿÿÿÿÿÿÿÿÿýþÛÉ \0\0\0\0\0\0\0\0\0\0\0\0\0À\n\0 \0\r\0ð\0\0\0\0
	¼¬\0ÀÀÊ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \n\0 	À©À\n	ËÊ\0\nÚÛïÿþÿÿþÿþÿÿÿï¿ÿÿ¼°\r\0\0	\0\0\0\0À\0\0\0\0	\n\0\0\0\n\0\0À\0\0¬ÊË\0	­ \0­©©Ê	À\0\0\0\0\0\0\0\0\0À\0\0\0\0\0¬\0À\0\0 ° À 	 ùà ¼­¬¾ûÿÿþÿÿÿÿþÿÿÿþûëÏ\0©	\0	\0À\0	\0\0\0	\0\0À\0	\n\0\0\0 \0\0 °¼\0\0À Ú\n\0\0\0\0\0\0\0\0\0\0à\0\0\0\0\0 Ê	¬	À\n\n\nÊÐÊÿÿÿÿÿÿÿÿÿÿþÿÿÿÿýú	\0\0à\0	\0É\0	\0\0\0\n\0\nÀ\0 \0\r\nÐ\0\0\0\0\n\0­© \0é©É\0	\0\0\0\0\0\0\0\0\0\0\0¬\0\n\0­\0\0À\0¼®ð­\0 ¼­© ©êþ¿ÿþÿÿÿÿÿÿÿÿÿÿÿÿûéÊ\0\0	à\0\0\0\0\0\0\0\0\0\0\0\0
\0À\0\0\0\0	Ê\0°°¼À éà\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r \nÊÊ		àÊÐË½¿ÿïÿÿÿÿÿÿÿÿÿûÿï¿íùéÊ\0\0	 \0\0\0\0\0\0\0	 Ð\0À\0\0 \0\0\0\0\0Ð\n\0©©\0 °Ð	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿ\0\0\0\0\0\0³­þ','Anne heeft een BA in de Engelse Taalkunde, behaald aan het St. Lawrence College. Spreekt vloeiend Frans en Duits.'),(10,'Hellstern','Albert','Schoolstraat 52','Linden','3210','016 55 54 69','Bedrijfsleider',5000,NULL,'75',1,'1993-03-01 00:00:00.000000','1960-03-13 00:00:00.000000','1',_binary '\'\0\0\0\0\0 \0\0 \0×
OLE2F90CFC2\0PBrush\0\0\0\0\0\0 \0\0\0PBrush\0\0\0\0\0\0\0\00 0 192 223\0 T\0\0BMT\0\0\0\0\0\0v\0\0\0(\0\0\0À\0\0\0ß\0\0\0\0\0\0\0\0\0 S\0\0Ä\0\0Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÀÀÀ\0\0\0ÿ\0\0ÿ\0\0\0ÿÿ\0ÿ\0\0\0ÿ\0ÿ\0ÿÿ\0\0ÿÿÿ\0\0\0\0	\0\0\0\0\0°\0\0	\0\0\0\0\0°\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0	\0\0\0\0À\0Ð\0\0\0\0\0\0\0\0\0\0\0\0À\0\0À\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0		\0\0	©
\0\0\0\0	\0À°	\0\0\0\0À\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0À\0\0\0\0\0\0\0\0\0¬\0\0\0\0\0\0\0\0\0\0
À\0\0\0\0\0\0\0\0		\0\0		\0\0\0				\0	\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0é\0\0\0\0\0\0\0\0\0\0\0	\0	\0\0\0\0\0\0\0		\0À	\0		\0\0\r\0\0À\0\0Ð	\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0À\0\0\0\0\0¬\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0À\0À\0À\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0À\0\0\0\0\0\0Ê\0\0\0À\0\0\0\0\0\0\0\0\0À\0\0\0\0\0	À\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0		\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0À\0\0\0é\0\0\0\0\0\0\0\0	\0\0\0\0\0À\0\n\0\0\0\0\0À\0\0\0\0\0\0\nÀ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0àÀ\0\0\0\0\0\0\0\0\0é\0\0\0\0	\0Ð\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0À\0À\0\0\0\0\0\0\0\0À\0\0\0\0À\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0¬\0\0\0\0ÀÀ\0\0\0\0\n	\0\0\0\0à\0 \0\0\0\0\0\0\0À\0\0\0\0\0\0\0À\0\0\0À\0\0\0\0À\0\0\0¬\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0À\0\0\0\0\n\0\0\0\0\n\0\0\0\r		\r\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0À\0\0\0À\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0	\0\0 \0\0\0\r\0À\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0	\0\0	\0\r\0\0	\0\0\0\0\0	\0	\0				\0\0\0\0\0\0¬\0\0\n\0\0\0	\0	Ð\0\0\0Ë\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0À\0¹\0				\0\0\0	\0\0	\0\0	\0	\0\0\0\0\0\0À	\0\0\0\r	\0			 	©	É\0Ð	\0\0\0\0	\0»\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0À\n
\0\0\0\0\0	\0		\0		\0\0À	\0\0		©

\0\0\0\0\0\0\0\0Ð
¹	É\n°¹\0	\0\0\0\0Ð	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0 		
	¹\0\0	\0\0	\0\0\0		\0							\0		À	\0
		©°
\0\0\0\0		\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À
	\0\0\0\0\0À\0\0¹°	\0\0\0	\0\0	\0\0	\0	\0\0\0\0\0\0\0\0\0		\0\0\0ÐÉ\0\0
	¹	¹©\0\0	\0\0\0©\n\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0		\0\0\0\0\0\0\0		\0\0\0\0\0\0\0	\0\0\0\0	\0	\0\0\0\0\0\0\0\0\0\0°Ð©		Ê		\0\0\0\0	
	°\0\0\0\0\0\0¹°\0\0\0\0À\0\0\0\0\0\0	\0	\0		\0
		\0\0\0\0\0\0©\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0°	Ù		\0\0	\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\n\0\0À\0\0À\0\0\0\0\0\0\0\0	©\0	\0\0\0\0\0	\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0	\0\0	\0\0\0À\0\0	\0\0À\0\0\0\0\0\nÀ\0\0\0\0\0\0\0\0	\0Ð\0	\0\0	\0\0		\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0	\0	\0\0\0				\0\0\0\0\0\0\0\0\0			\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0		\0\0\0\0\0\0\0\0\0\0À\0\0\0Ð\0
\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0			\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0	\0\0À\0\0\0\0\0\0\0\0À\0\0\0\0À\0\0\0\0\0\0\0\0\0À\0\0\0\0É	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0É\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0À\0\0\0	\0\0\0\0	\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0À\0À\0\0\0\0\0\0\0\0\0\0	\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0À\0À\0\0\0\0\0\0\0À\0\0\0ÀÀ\0\0\0\0\0	\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\n\0À\0		\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0À\0\0\0\0\0\0À\0\0\0\0\0\0\0Ð\0\0\0À\0\0\0¬\0\0\0\0\0\0	\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0À\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0À\0\0\0	É\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0 \0ð¹	\0\0\0\0\0\0\0\0À\0À\0\0
\0\0É	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0Ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ¼	É\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0À\0\0\0\0\0\0\0\0\0À\0\rï\0\0\0\0À\0\0\0À\0\0\0\0\0\0À	\0\0\0\0\0\0\0À\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0À\0\0\0\0\r	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ù©ð	 \0\0À\0\0\0\0\0\0À\0\0\0\0À¼\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0û	\0À\0\0\0\0À\0\0\0\0\0\0
\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¿Ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0À\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0À	ÿù	¹©\0\0 À\0\0\0\0À\0\0\0ÀÀÀÙÀ\0\0\0\0À\0\0\0\0\0\0\0\0\0\0ï°\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0¿û	\0À\0\0\0\0\0\0À\0\0\0À\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ßÐ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿ°\0\0\0Ê\0\0\0À\0\0À\0\0\0\0\0	¹¬\0\0\0\0\0\0\0\0\0\0\0\0À\0\0ë\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0ÿÿ\0ÚÀ\0\0\0À\0\0\0\0\0\0À\0À\0°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ý\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0À\0\0\0\0\0À\0\0\0\0\0ÿù\0\0	\0\0À\0À\0À\0\0À\0\0\0À\0\0 \0À\0\0\0\0\0À\0\0\0\0\0°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0Àÿÿ\0\0\0\0\0\0\0\0À\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0	àð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0¯ÿÿ\0À\0\0\0À\0	 à\0\0À\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0íé\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0	ÿÿÿ\0\0\0\0\0\0 ÀàÀ\0\n\0\0\r\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0ðû\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¿ÿÿú\0\0\0\0\0\0\0À	\0\0\0\0\0\0\nÀ¬\0\0\0\0À\0À\0\0À\0\0\0\0\nÎÏð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ú
ÙÛû½ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿý\n\0\nÐ\0\0­\n\0	 \0À\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0¼¼ÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
ËÛý½ÛÛ»¹ù½©\n\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿ\0\0\0\0¬\0\0\0\0\0À\0 ÀÀ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÊÞ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
ÿ¼½»¹¹¹Ûùùûù¿¿Ûý©ÊÀ\0\0\0\0ð\0\0\0\0\0ÿÿÿÿù\0\0\0\0\0À\0\0\nÀ\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0À\0ïËþù\0\0\0\0\0\0\0\0\0\0\0\0\0°\0ûÛ½»ÛÙ»Ûÿ¿\0\0\0\0\0\0\0\0À\0¿ÿÿÿÿðÀ\0¬\0\0\0À\0Ð\0\0\0ÀÀ\0\0\0\0\0\0\0\0\0À\0\0\0\0À\0\0\0\0\0Ðþßÿú\0\0\0\0\0\0\0\0\0\0\0\0À¼¿ÿÐ¹¹¹¹½½¹û¿½½ÿÿÿ\0\0\0À\0\0\0 ¿ÿÿÿÿÿð \0\0
\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0îúßýð\0\0\0\0\0\0\0\0\0\0\0¼¿ÿË

		¹¿½»ù¿¿ûÿÿÿ\0\0\0\0\0\0ÿÿÿÿÿÿð\0\0\0\0\0	À\0	ÊÐÀ\0\0\0À\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0í­þÿÿð \0\0\0\0\0\0\0\nÿýù			Û»ÛÛ¿ßÿÿ¿\0\0\0\0¿ÿÿÿÿÿÿÿ\n\0Ê\0\n\0 \0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0À\0À\0\0\0\0Î¿Ïí¾ÿ\0\0\0\0\0\0\r­ÿÚÚ°\0¹
		
¹¹ùùû½¹¿ß¹¿½ÿÿ\0ÿÿÿÿÿÿÿÿú\0À\0\0\n\0\0\0\0ÉÀ\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0­àü¿ËÏþÿÛË\0\0\0\0àðé©½\0\0			°¹¹»ûÛûÿÿÿÿ¿ÿÿÿÿÿÿÿÿÿý\n\0	\0\0\0\0\0\0\0À\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 Þ¾ÏýðýëïþÚðÚÛÚÚ\0		
	©		©¹ù¿¿ûûßÿÿÿÿÿÿÿÿÿÿÿðÀÐ\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0üý¾þÚýùï½¯Ïé\0\0 ¹°¹¹¹½ÙùûûßûÿÿÿÿÿÿÿÿÿÿÿÚ Àà\0	 \0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0À\0\0\0\0\0\0\0\0\0\0\0ÚÚíï½¯ÚþùþÞÜ¼¼¼ð		\0							ûÛû¿¿¿¿Ûÿ¹ûÿÿÿÿÿÿÿÿÿÿÿÿ\0À\0\0\0¬\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0ïíÞÞÞþÛÎÐûëËËË	\0\0	\0°	\0	©°¹ÛÛ¿ûÛÿßÿÿÿÿÿÿÿÿÿÿ\0\0	\0	\0\0\0À\0\0\0\0À\0\0\0\0À\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0Éêþý¯íúÿÏ\r­©à\0°							°	
¹¿ûùù¿ÿ¹¿¿ÿÿÿÿÿÿÿÿÿÿ\0¼\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0®ßÉïüþü¾Úðüðê­		\0
\0°	\0			ùùù¿ùûûßÿÿÿÿÿÿÿÿÿÿð\0\0àÀ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0 ÍàþúËËËíí¯ÏËÊÐ\0\0	\0©	°		ûû¿ßÿÿÿÿÿÿÿÿÿÿ\0\0à\0 \0\0\0\0\0\0\0À\0\0\0\0\0À\0\0À\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\nßéíþÞÿÏ¼Úð¼àÊ¹©\0	\0		\0°		\0				\0¹Ûÿ¿ÿ¿½¿ÿÿÿÿÿÿÿÿÿ\0©À\0Ð\0\0\0\0\r\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¬þÛééðþÞÛË\0	\0		\0			
	
Ù¹¹¹¹ûûûÛÿÿÿÿÿÿÿÿÿ Ð\0\0\0Ê\0\0\0¬\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0À\0\0ËíþþÞÞþÚü¼¬¼
Ë\0\0	\0°	
	\0	\0\0	\0\0	°
½½ÿý¹ÿÿÿÿÿÿÿÿðÊ\0\n\0\0 \0\0\0\0\n		\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Þ\r­¯\r­ËÏÛÊÐ	\0	\0\0\0		©		°ûûÿûûÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\n\0	\0\0\0\0\0\0À\0\0\0\0\0Ë\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0ïÞþÞüþÚþÐ\0\0		\0		\0\0\0			°°¿½ûÿùÿÿÿÿÿÿÿÿ\nÐ\0\0À\0\0\nÀ©\0\0\0\n\0 \0À\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\nðÚðûËíËÚ		
\0		\0				\n©Ù°Ù©¹Ûùûÿÿÿÿÿÿÿÿû\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0À\0\0\0\0ÍïïÏÌþÚð¼íàÀ\0\0\n 		\0		


°¹ÿ¿ÿÿÿÿÿÿÿð\0\0\0\0\0\0À\0 
Ê\0\0\0 \0À\0\0\0\0\0\0\0À\0\0\0\0\0\0\nÐ
\nËÊ\nü¼¼¿­­ÎÞ°\0		\0	\0\0	\0\0\0	
	©°½¹½ù½ûûûûÿ¹ÿÿÿÿÿÿ\0À\0\0\0\0\0\0\0\0 \0\0\0\n\0 \0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\nÉ\0\0\0ÏïÎÞÚééÎÉ\0©	\0\0
©¹
ù½½¿ÿßù¿ÿÿÿÿÿ\0\0à\0\0\0À\0\0Ê\0\0\0\n\0\0\0\0\0\r\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0		\nÊ

\0­­¼¼üü¾¬	\0\0©\0		\0\0	\0\0\0\0	\0		½¹¹»¹¹ûÛÛûÿÿÿÿÿð\0°\0\0\0\0\0\0\0\n
\0\0 \0\r\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0¹É\r\0Ð
þÞÏÏ¯ÞÎ\n¹\0\0		\0				\0	
	¼¹Éù½Û¹½¹ûÿÿûÿÿÿÿÀ\0\0\0\0\0\0À\0\0	\0\0À\0\n\0\n\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0À\r\0\n\0°
\0°	í®¾Üý©©\0	
	\0	\0\0\0	\0\0\0\0\0		»¹°ÛÛ¿½ûÛý¿ÿÿÿû\0\0\0\0\0\0\0\0\0\0\0¬
\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0À\0	\n
	©
\0¹\r ýìéïÞÚ\0	\0		\0	Ù»Ù»Ù¹½½¿¿ÿ¿ÿÿÿð\0\0\0\0À\0\0\0\0\0À\0\0À\0\0\0À\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0ÐÀÀ\0ÏÞÚÚÍ\0	\n	\n\0		\0\0\0		©	º		©\r°¹°¹ùûÛÛÛÿÿÿÿÿðÀ \0À\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0
\n




\0\nÚí­ï¬ï\r \0\0			½¹¹ÛÙ
¿¿¿Ûÿ¹ÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\nÐþÚÙð\0			\0		\0		\0
»»¹¹¹¹ù¹¹ùùùùÿ¿ÿÿÿÐ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ïÉíîËÀ
\0	¹	
½½»Ù¹»Û¿½ûÛûÿÿð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0°\n\0 \n\0\0þà	©\0	©			¹ù¹¹»Û¿¹ùù½¹¹¹½¹¹ùùù½»ÿÿùÿÿ\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0		Éíì½ 
ùùùù¿ÛÛÛÛ¹¹¹»Ûß½¿ÿð\0 À\0\0\0À\0\0\0\0À\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	©		\0\0\0\0©\0\0ïëËÀ\n©		
Û¿¿»ÛÛ½¹ù¹¹»¹ùùûûÛÿûÿ\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 °\0\0\n\0\0üü¼	 	\0¿¹ÿÛ¿ÛÛûß¿¿ûÛÛ½¿½»Û¿ûÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0©\0\0\0\0\0	\0\0Ëíë\0
	
Ûù½½½¿½½¹ÿ¿½»Û»¹»Ùùùùù½ûßðÉ\0\0 \0\0\0	\0\0\0\0\0¬ \n	\n\n\0\n	\n\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0					\0\0\0	ÚÜ
	©\n		
û½ù¿ÿ¿½¿ûÿ½½¿½¹ùûÙ»û¿ÿ
		 °°
	Ë	­\0\nÉ\0É
\0°\0\0	\0\0\0\0\0\0\0\0\0
\0\n\n\n\0 ° 	 	ï\n	ÀÛù½¹½¿ß¿ÛÛûÛÛÿ¹»ùùù½½¹ûùû¼Ë\r	é°Ú°Ú é°ùéàð°¼½©ð©­­  \0°°\0© ©©\0
		É	°ðÝ©
\r¹	¹¿»ý¹ûûÛûß¿¿¿¿¿¹ÛÛÛý¿¿¯ù¼°ú°»Ú°Ú¼¼°ÛÚ
\nÚ
àÚÚ©\0©	ù\0Ù\0Úé °éªÊËË
Úé	\r\n\0°°½Ùß½¿½ùùûùûÛùû¹½¹ù¹½½¹»Ûß½ù­©ë\r©ËË­¿©û©ûËéïÏéý½½ù¿¯°¯\nÚ\r \n\n¹© 

à¹©©°ù©Ú°\n\rÛ¿»ù¹ûùýùûÿ¿½¿½¿¹¿ÛÛ¹½½¿¿¿ûû»û¿½ûË«ÿ»¿¹¿¹»í¿«ëë¯ËÛëÉùÚ½¾½©ûËÚ¹ðü½¯½©		\0	¹¹¹ù¿û¿ûÛÛÛûÛùû¹ûù¿Ùûùÿûùë­ëÏËË¼¿ýð½¯½þÞÞþÞþÛþßýÿß¿þý¿\nààéí ÚÉéëðß\0ùéðùéü¿éðýëÐ¹¹©Ùù»»½¹½ùÿ¿¿¿¿ÛÛùù»½¿½¯ßíÿûÿ¿üÿü¾¿ëðúÛûûÛûÛþ¼¾¼ü½¯½	©úÛùúÐûûËËËËð¿éúÛ
ÚÐ\0Ù¹¿¹¹ûùùûÛùûûù¿½¹ù»ÛûùÿÚ½ºÚðü¼ðûË¯ÛËÜ\r­í¯í¯í¯éÿËýëÛïÚ\0àÊÊ	¬\nÀð°°¼°ðËÀùÉ¬¼		©©ð¿»¹Ûù½¿¿½¿¿¹ù¿ù¿û¹¿¹ù½»ù­ëÏ¯¯¯¼ð¼¼«ðúúÚÚÚÚÚÚÞì¼­	©©ÀÉ­

ËËËËË\0¼
¬Éà°¹	 Ù	¹ÐÛù¿ùùùûý½¿ûÛù½¹ûùùÛÿÛÏ	à­\0ð\r­°àð¼­\r©éééééé­­­­
¼\0àÀÀ\n\0É¬\0\0À\0\0\0\0\0¼
°É À°©¹	¹¹ð¹¹¹ùûÿ½ûûù¹¹ùûûÛû¹û¿û\0é\0ð\r \0°\0° \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0		©©				¹¹¿½¿ûùùÿ»¿ùù½¹û¹ûß\0\0\0\0\0\0\0\0\0\0\0\0\0\0À¬\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
\r		©©©
Ù¹¿½¿ÿÿ¹°¿¿»Ûûû½»\0\0\0\0\0\0\0\0\0\0\0
\0	\0\0\0À\0\0\0\0\0À\0\0\0\0\0À\0à\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0		
°°¹ù		¹ù¹¹ùûÿÿÿ¿	¹ùùûù½¿ý½ûÛý \0\0\0\0\0\0\0\0\0\0
À\0\0\0\0À\0\0\0\0\0\0\0\0À\n\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	°			
¹ÛÛÛÛ½¿¹	¹¿¿½»Û¿»½»Ð\0\0\0\0À\0À\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ú
\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ú			\n¹©

Û¿¿ýûù¹\0	ùûß¿½¹ùÿ¹ûß°\0\0À\0\0\0\0\0\0\0\0\0\0ð \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0à\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	°		\n
½¹ùùÛ\0\0	¹¹½»ÛÛßÛ¿Ð\0\0\0\0\0\0\0\0\0\0\0\0\0É\0\0\0À\0À\0\0\0À\0À\0\0\0\n\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0©		°		¹¿¿½»ûû¿½¿ûù°\0\0\0\0\0\0\0\0\0\0À©\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0©\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¹Ð°	\0\0		\0	¹ùûÛßÛÛù½¿ý\0\0\0\0\0\0\0\0 	\n\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0©\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0©				\0\0\0	¹¹½û¿¹ûû¿¿¿û\0\0\0\0\0\0\0	\0\0\0\n
\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0½©\0\0\0			¹			¹¿¿¹ùùÿ½½ùùùùÿ		\0\0\0\0\0\0	\0À	\0\0\0\0\0\0\0\0\0\0À\0\0\0 ÊÀ¬\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
	\0	\0			\0©¹¹¹¹¹ùý½»ûû¿¿¿¿¿Ûûù»\0\0\0À\0\0\0\0\0é \0\0À\0\0\0\0À\0À\0\0\0\0\0ÀÀ\0 \n	\n\0\0\0\0\0\0\0\0°\0	\0Ð\0	©	\0	\0\0	¹	¹»ù¿»ßûÛß¿½¹ùù°À\0\0 \0	\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0 ¼¬°àÚà
\0 é À¼\n\n\0¼¼°¹¹©		\0			\0¹¹©¹¹ý¹»ûùÿ¿»ùûùùûûùÿ¿Û\n\0 \0ª\0®	à°\n\0 \0¼\n\0 \0\nÊ\n\n\nË	Î¬ é
Ë­¬ËÊÊ¼¾À©
			\0\0\0\0
¹ûûûû¹ùý¿¹ùýûùûûÿÿÿß¿¼úÜúÐ¾
ÊðÚÚËÊ¼Úðð°ü¼¼à°Þ©
	ü°Ë\nÐ°É­©­­
ËË\r
Ð°½©		\0	\0\0		¹¹¹¿½½ùß¿ûßÿ¿¿ÛûßÛÿûûÿÛÛéïéË­àÞ¯Í¯ÚÞÚÚÞ ¬¬©Î¬°é¾
Àð¼¼©é¼©\r¹	°	\0	\0	\0	©½¿û¹¹¹»Ûÿ»Ûûß¿¿½ÿÿßûÿûÛéï¯Ëé©àððüëÊúü¿Ë­ë­ë©éÊËÀÊËËËà	À°É©À
Ë\0¹	°°¹		\0\0		¹¹¹¿ùÿ½¿ÿß¿ß¿ûÛûûÿÿýûý¼¼°ðùí¯\rë¾»Ï¼ËíëÏíëÏ\0©\0
ÊÉ¬\0\0Éð©Àð¬¼°ð		
		\0\0\0	¹¹¿ý¿¹¹½¿ùù¿ù¿½û½ûßÿûÿÿÛûËÏ
ÀúéÉéÌ°Ëéé­\nÜ©Ê°\0 \0À\0 \0\0ð\0\0\0\0\0 \0\0\0 \0\0 
\n¹
©			\0		\0¹¹ÿùù
Û¿¿ý¿ýÿ¿ß¿ûÿûÿûù¿ù\n\0Ê
°\nÐ­\n©Ê\0À\0\0 \r Éà\0\n\0\0\0\0\0Ë\0\0\0\0\r\0¹
°\0\0°	\0\0	\0		ý¿¹ù¿ß¿Ûûß¿¿Ûûý½ûý¿ýÿ¹ÿ\0\n\0à°\0\0À\0À\0\0\0\0\0\0\0\0\0\0\0\0à\0\0\0\n\0\0À\0\0\0\0\0\0\0\0\0\0

	¹	©	\0\0\0	\0¿½¹¿Ûýÿ¿ÛÛÿ»ûý¿ùûßý»ð\0¬\0\0\0À\0\0\0\0\0\0\0\0\0\0\0¬\0\0À ÊÀ\0\0 \0\n\0 \r\n\0\n\0¬\0\0		°¹°°°\0		\0	ùûÿß¿ûùý¿ÿûßÿ¿ý¿ù¹ûý¼\0\0\0 ° \0\0\0\0\0\0À\0\0À\0\0\0¬\0\0É	\0\0à\0\0À\0\0ÊÀ\0\0À	é©©											°ÛûÛûý¿ÿûûÛÿûÛßûÿ¹½¿ù\0\n\0¬ÀÀ\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0 \n\0¬\0 \0\0\0\0À\nÀ	 ©\0©Ð
¹		\0
	¹¹ùÿ¿ÛÛûýÿ¿ÿÛÿÛÿÿ¿ûÿùÿý\0\0À\0à°\0\0À\0¬\0\0\0 ÀÀ\0À\nÀÀ\0\0À\0¬\0ÊÀ \n\0\n\0À¬\0À¹©
¹
	

				½Û¿¹ùÿ¿½ÿûÿÿÿûÛý¿ÿ»¿Ð	\0\0°\0 \0 \0\0\n\0\0\0\0\0 À\0	 À \0 \0\0À\0À\0\0 \0\n		Ð		½½ùûù½½¿ùÿÿûßÿÿûùÿÿ¿ÿûß°\n\0Ê\n\0À\0\n\0 \nÀ\0\0\0\nÀ¬\0\0\0\0Ê\0À\n\0\0ðÉÀ ÉÐ¹©¹½			ù©	ÙùûÛÛ½¹ù¿½¿ùûÿûÛûÿûûùý¿ù¹ûð\0\0	ÉÀÀ \0\0\0\0À\0\0\0\0\0\0\0\nÀÀÀ\0\0\r \0\0 \0 \0À \0\0\0 Ê
	©Ð©Ù
¹	ý½¿ùûùÿùÿÿÛÿÿý¿ÿûýý¿ûÛù¹¹ÿ	À\0Ê\n\n\0 Ê\0à\0\0 ÀÀÊ\0À\0\0 \0\0\0\0ÀÀ\0À\0\0À\0\0 É¹	\r
û
©°ùùÿ»ù¿ÿ¿ÿÛùÿùùÿ¿¿Ûÿ½¹¹¹ \nÚ°	\0\0À\0\0\0\0\0\0\0\0\0\0\0 \r  \0\0¬\0à\n\0à\0Ê\0\0\0 
	ù	Ë	ùù¹Éù¹ûÛùùÿ¿ùý½ýÿ¿¿ÿûÿÿûßûÿ¹¿¿Ð \0\0  \0\0\0\n\0ÀÀ\n\0\0\0\0\0   \0\0\0ÀÀ\0À\0\0ÀàÀ\r	\0°¹ÛÛ		Ð¹	½ûß½¿¹ý¿ûûûûßÿ½ûÿÿùÿ¹¹ùý¹°ÀÀàÐËÀ¬\0\0\0\0Ê\0\0\0\n\0\0\0\0\0\0\0À À\0\0À\0Ê\0\0\0 ¹ÉÛ©½¹ù¹¹Ù		¼¹½¹ù»ùûùÿûßÛß½¿ÿÿÿÿÿ¿ÿ¿ûù¿ÿ¿¿Û	 
\0\0\0 À\0\0\0\0\0\0\n\0\0\0\0\0\0	\0\n\0À
À \n\0\0\0À\0É	ËÛ	ùÙÛ¹ÛÛÛ¿¿½¿¿ûÿ¿ÿùùûÛÛÿÛùûý¹¹ÿýûùðÀÀÀÀéà\0 À\0À\0\0\0\0\0¼\0\0\0\0\nÊ À\0\0À\0À\r\0Ê	\n\0 
				
Ù½¹ù½¹
½½½»½½ûß½ùý½ý½¿ÿÿÿÿûÿÿýûû¹ÿû½¹¹  \n\0\0\0\0\0\0 \0\0Ê\0\0Ê\0À\0\0\r\0\0Ð\0\0\0  \n\0\0\0
\0À\0À\r\0ù½¹ù½¹ù½©ÛÛÛù½ùß¿¹ÿ¿ûûûûÿùÿ¿½ÿ¿¿ù¹ÿû¼\r\0ðÀÊ\r¬\nÀ	à\0\0\0À\0À\n\0\0 À  	\0É	\0à	\nÀ°\n¹\n	¿ÛÛ		É©½¿ù¿»Ûýÿÿÿ¿ýÿ¿ÿßÿûùûûÛ	û\0à	©­ \0© ÀÀ\0àÀÊ\0À\0ÀÀ\r\0©\0\0	\n\0\n\0\0\0\0\0\0\0\0À\n		Ë½Ûû½°¹ÛßÛù»½¹	¹ûûÛÿùûÿûûûý½»ÛÛÛÿ©\nÀÚÉ\0¬\n		\n\r ¬© \0 	 À \0\0\0 \0\0À\0é\n	\0Ë	\0©°Ù½¹ùûù		½¿¹½½ýû	¿ßýûÿ¿ûû¹¹º­\nÐ¬ °é­	­	\r\0\r	\0\0\0\0\0\0\0\0À\0\0\n\0\0\0\0\0\0Ë\0­	¹­û¹Û
ÛÛÛÛûÛÛ¿¹ù¿¿		û¿ÿûûÿûßÿÛ	ùË\0­\nÉ\r\0Ê\nÀ à\0\n\nÊ\nÀ©\0\r \n\0\0\0À\0\0\0\0\0À\nÀ\0\0À\0\0 \0		Ð½	ð¹ùÙ¼
\0¹ûýù¹ùùÛùù¿Ûûýÿ¿»ÿÛÐ¬­\nÉ¬  ð­­©É\0ÚÐÉ	À­À\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÉÉ	¼¹­»ù¿©¹½¼°	¹¿ûýÿÿûù½¿¿ý¿¯	\nÉ¬
ÀÚ\r\0\0Ê\n\0 \n\r\0 \0 À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \n\nÛ©
						

\0
¹ûý¿		\0		\0	½¿½¿ûûûÙ¹
ý¿ù\r\nÊÀ\n\n\r	\0\0\0¬\0\0À\n\0\0\0À \0\0\n\0À\0\0\0\0\nÀ\0\0°°		ÛÛùù	\0	\0\0\0
½»ûÛÛÿûÿýý»°¹¿ý½ ð\0¬éÀ É\0 \0\0\0\0À\0\0É\n\0\0	\0\0\0\0\0Ê\0\0©	\r\r
\r	
					\0\0¹¿½ù¹	\0\0		\0\0	»Û¿¿ùÿÛûûù¹	\n¬¼\0àà\0¬¬¬\0 À\n\0à\0\0©\nÀ \0\0à\0\0\0\0\0\0\0\0\0\n\0\0\0\n\0\0 °©\r
						
ÛÙû¿			\0\0			¹¹¹½½½½¿¿ÿÿÿ¿¹©
	Ú\nÐ\0\0 \0\nÉà\0\0\nÀÀ\0ÊÀ\0\0\0À\r\0\0¬\0\0Ê\0\0\0\r\0\0ÐÀÙÐ°¼	\0	\0\0
		ûýù°	¹»Ûûû¿ûýÿ¿Ûù¹\0\r\r\nÚÀ\n\n	ÀÀ\0\0À\0\0\0\0Ð \0\0\n\0\0\r\0	\0À\0\0\0\r\n\n	©\0		\0\0	\0	\0\0ÛÛ				½¹½»ÛÛý½ûùÿ¿ÿ¹°
	°°©\n\0¬\0\n\n\n	\0°Ê\n\0\0	¬\0\r\0©\n\0\r\n	À	¬\0\n\0Ê\0	à\0\0\n\r\0	
É°\0\0\0\0\0\0\0\0\0¹ûÙ			¹¹ùû¿½ûûùÿÿÛ	ð
ÚÐàÚÊÐÊÐÀÀàË\0ÚÊ\0\0\r\0\0\0\0Ê\0À\0\0	Ê\0\0\0ÚÀ\n\r ¼	\0\0\0\0\0\0\0		©	¹	¹½¹ûÛÛÿ¿ûÿÿ¹«		°\0\r\n\0 \0	¬°ð\0\nÚ\0Àà\0\0\0à\0\0 À \0\0\0À Ê\0	\0À©	


			\0		©¹©°¹¹¿¹ûÿ¿¿ÿß½ûû	©
Éê\r¬ \r¬©\0àÚ\0àà¼\0Ú	\0\n\0 \0\0\0\0\0\0\0 \0\0 \0\0\0ÊÀ  ðÐ\0\0		
	¹¹	¹¹ùù»ßÛÛßûûÿ½½¹¹©\0
É\n	ÊÉ\nÚ
Àà	¬
	
À\0\0À\0À\0\0¬\0\0
\0À¬\0À¬\n\0\0	À	©	©			
\0	°°¹¹½¹¹Ûù½»ÿûÿûýùÿÛÿ»û\nÐ°í¬©\0ÊËÀà¬¬	\0	\0À\0 \0\0\n\0\0\0	\0\0\0	\0°Ê\0é\0¼


				¹½¹½ÙÙ¿ùûßßß»ûÛý¿Ûù»\n¹Ë\nËÊ\0ð© \0\0à\0\0­Ë	Ê\0ÊÀ\0 \r\0\0\0\0À \0 ¬\0à\nÀ\n\0\0É\0		©
¹
¹¹»½»Ûû½¿ÿ¿ÿ»ßß¿¿ùû	\0¼é¬¬¬	ààÀ ¬Ê\0À\0\0\0\0\0Ê\0à\n\0À\0\0\0\0\0À\nÊ¬ é\r­
	½¹¹¹¹
¹¹¹¹¿¿ù½½¹ÿ¹ûÛßû»ùÿ¿¿\0\0»ÊÀ à\0 ©À\0	\nÀÀ¬ À\0\0ÀÀ\0\0\0\0¬\0\0°©\0ðË\0\0\0 	\0\n		©°ËÛ¹Ù¹Û¹ù¿ûùÿ¿½½ý¿»Û		¹Ì¼Ð\0àÀÊ\nÚÀÊÊÉÀÉ\0 \0
\0 \0À\0\0\0   \n\0\nËÀàÉÊ\0 ÉéÐÛÛÛ¹¹Û¹¿½½¹ùù¹ý¹Ùùùÿ½ùûû¿¿ûûÛ¹Ë\n
\0\n\0	\0\0©¬\0\0À\0\0	 \n\0¬\0À\0\0\0\0 \0\0	  \n©
ù½°¼¹¹ùÛÙ½½»¿¹ûÛÿ½½ùûÛý½»û©©	É¬©ààÚ\0Ê\r\0ÊÀÀÀ\0 \0¬\0ÀÐ\0\0\0\0

\n\r\r	\0	éÉàÙùÚð»»Ù¹»ûÛÛÛÛ½ûùûûß½¿¿¿½¿¿½¹°Ê­\0 À¬¬\0À\nÀ\0\0\n\n\0\0\n\n\0\0\0\0\0À À\nÀ\0\n\0	\0\0
\0 
\0°¹ð»Ù»ÛÙù½½½¿ûÛ½½¹ûÛûùùùûÛûùû°¹	¬¼àÀ¬¬À¬°À	ÊÀ\0ÀÀÀ\0\0À \n\0\0\0\0\0\0Ê\0  ­¬\0\0©ËéÉ½	
	¹Û½½¿½¹»ÛÛùùÿ½½¿ûß½¿¿¿½½¿½¹¹©°\0
É\0à­\0Ê\0	à\0\nÀ©à\0\0\0\n\0 ÀÀ À¬\0	ÊÐÉà\0\0©\0\n\0\0°°Ú\rÛ½ùùûûÛÛ½¿¿Ûûùù½»Ûùûß¿¿ûÛÙ\0­­¬\nÀ\0À¬\0À¬\0ÊÀà\n\0\0\0\0\0\0\0\0\0¬\0Ê\0\0 \0ÚËÀÊ\0
\0	
	ËÉ©©½¹ûÙ¿¿ß½½½ûÛùùû¿ÛûÛý¿Ûùû½½¿½»ù¹
	\0À¬\nÀ\0 À¬\nÀÀ \0Ê\0Ð¬\0\0\0\n\0 \0¬\0\0 ÀàÊÊ\0\0\n
\0°\0	é°¼©°
Û¿ùûÙù»ù½½¿½ùù½½¿Û½¿ûûÛýûù»Û¹\0©à\0À À¬\0\0¬¬ À\0	À\0\n\0\0\n\0\0À\0à°	\0 àÀ©à\0		 \0Ð­¹ý¹ÿ¿ÛÛùÿ½¿½»Ûÿ¿ûý¿»ÛÛù»Ûß¹¹ù¹\0\nÀ¬  À¬\0À\0à\0Ê\0\0ÐÊ\nÊ\0à\0\nÀ\0\0\0\0\0\0à\0À\0Ààà\0\r\0©À\0àà\0	©©­
­»ßùùû½»ûùùûß½¹ùûù½»Ûùùûÿý¿»Ù¿
\0ÐÀ\0À\0À à ÀÊ\n\0\n\0À\0À°ÊÀ\nÀ\0\0É \0\0àÀ¬ 
	\0ÐÚÐ¼Ë
Û½ûÿûÛùùýý¿½½¿ùûûùÛÛÝ»ÛÛùù¿¿¹¹
\n\0\0À\0¬\0à\0 À\0ÀÊÀ\0\0\0\n\0\0¬\0\0\0\0\0\0ÊÊÀ\0 
\0\0 °\0\n©	°¹Ð¹ùùû½¹½¿¹»¹½ûù½¿¿¹»½¿¿¿ÛÿÛûÛ	\r\0À¬¬\0à\0\0àÀ\0Ê\0¬¬¬\0\nÐ\0\0 \0\n\0\n	\0ÉÀÀÊ	\0\r				àÚÚÙËËÛÝ¿ßÛùÿ½ûùÿ½»ÛÛÛÛÛßÛÛÛÛùûù»ùùù¹ù	\0\n\0À\0\0À\0à\0\nÀ\0éÀ\0Àà\0\0\0\nÀ \0\n\0\0\n\n\0 \0 \n\0\0\0Ú©ù¹»Ù»Û½½¿ÛÛ½¿Ûý½½¿½¿½¿½¿½¿ý¿û°°©¬ à\0À¬\0à\n\0à À \n\0À\0 \0À\0\0Ê\0 \0\0\0ÀÀ \0¼½¬°	ùý»ý½ÛÛÛ½¹ù½½»Û¿ûÛÛ½¿ÛÛÛùûÛÿý¹°ùÐ\0\0à\0 À\0À\0À\0à ÀÊ\0Ê\0 \n\0\0Ê\0à©Éààà\0\0\0À\0¬\0\0		©	Ûßû¿ùùûÛùûý½ù½¿ÛÛ½»ÛÛÿý»ûÛ¹© \n\0À\0À À à\0À\0À\0ÉÀ\n\0\0 \0\0 Ê\0	\0\0à¬\0\0À	\0
	É½¹ù¹ùÙ¹¿½½¿ûûÛû¿½¿¿¿ù¿ý¿Ûù¹ù		\0À¬\0 à\0À¬  \0\0À\0à\0à\0àÊ\0 À	\0àÀ\0ÊÊÀÀ\0À\0\0Ê	\0\0©é		\0	ÛÛû½»ÛÛÛ»ûÛùÿùùÿÛÛùùùùÿùûùÿÛ°	©¬ À¬\0à¬\0ÀÀÀàÀ\0ÊÀÀ	©É\r ð\0¬\0
\r©\0\n\0À\0\0\nÀ\0\0\0¼½°¹ÐÛé½½½»Ý½¿¹ù¿¿½¿¹ù½¿¿¹¹é
\0°ÐÀ \0À\0\0À\0\0\0¬\0©\0¬\n\0¬	àÀ\nÀàÚªÊÊÀà¬\nÀÀ à°\0Ú
\r©			Ð¹¹ù¹ùûûÛ½½»ÛÙûß¿ß½ûÛß¿¿¿ùûßùÿ¹¹¹	\0° ÀÀà À\0À¬ \0àéÀàÊ\0¼É	à
\r©\0ðÐ¼¼\nÍ ¼ É\0\0	°ÚÚÐð¹Ë½½½»ÛÛûûÛ½û½ûß¿¹ùÛùù¿¿ùÿÛ°Ë\0 \0À\0À\n\0\0À À\n\0\0\0¬	àÀ\nÊÉ\nË\n\nÊ ð\nÀÊÚÚË	 \0	\r©	É¹Ù½½¹ùûÛÛ½½½½¿ÛßÛý¿Ûß½¿ùùùûÛû
	­­¬\0à\nÀ\n¬\0ÀÚÊÀÀ\nÐ \0\0¼­\0­\0ÀÐ­Ú¼­¬\0¼\0\0°ËË
ÉàÚ»Ûù½¿ÛÛ½¿¿¿ùûûûÛùû¿ûß¿¹°°	
\0\0 Ê\0À\0À\0Ê\0 \0\0¬ ¬\n\0àÀ\0É¬\0\0 \nÊ\nÚ\0ÀðÉÀ°ðÀðÐ	\0Ð°¹Ùùùù¹ÿ¹ù¹û¹ûûÛùùùÿ½½¹ù½½ÿùý½ù°éàÀ\0À¬\n\0¬¬\0ÐÊ\0
Ê\0¬  \0\0¬ \n\0ÊÊ\n\0\0
Ë\r
À¹
ËÛÛÛ½¿½¿¿½ûÛß½¿»ùûù¿¿»¹¹
	é\0\0¼\0\0ÀÀ\0\0\0\0À\0À Ê à\nÀ\0	\n\0\r \0\0\0\0\0\n°\0\0\0\0\0\0ÊÐ\0	é­¹Ééðùù¹½û½¹¹ý»ÙùûÛý¿Ûùû¿¹ûÛßßùùù°ËÊÊ®\n\n¬¼®\nÊ\0À À\nÀ\0\r¬¬\n\0\0¬\nÀà¬\0\0À\0\0\nÀ\0Ð¹ùù¹ÛÛÛÛ¿¿½¿ù¿½ûÛß½ûù¿û¿¿¹
éì¼­­Í­íËÉàðÊ¼¼­	àà­\0\0\0\n\n\0\nÀ\0\0\n\0\0\0Àà\0\nÀ\n\0 À°\0	©é­­¼¹Ûß½½½¹ûÛÛÛßý¿ÛûÛ½»ÛßÛûÛ©©
ÊÚÚêÞªàí®ËÏ­îéì¾ËÊîÊ¬¼¬°	À\0\0\0\0À\0\0àÊ\0 \0\0À\0À\n\0¬
Ðù½Û¹¹ûÛùù½½û¹ûÛùý¿ùûÙÿ½»ûûýûù»½¼¼­­½­Ý¿Ûì¼é­éÏ
Ë¼ðúÞ\0\0¬\0ÊÀÀ\0\n\0°	\0ÀÀ\0\0\0À\0ÀÊ\0	à½
ËÉ	ùùßÛÛÙûß½¿»Û¿Ûý½½¿½°¹©ëËÊÊ®ÊðìËÎÞ¬üííëÏ¯Ïë	¬¬\n\0 \0\0\0à \0\0À\0\0\0\0Ê\0\0À\0	Ú¼Ûûù¹¹ùùûùý»½½½¹ùù½½ûÛûûûÛ¹½¿ÀÀÀàíËÍ\r­¯
ÊÏ
­éí­­	\nÀÀ\0\0\0\0\0\n\0\0 À \0à\nÀà\0Àé\0 	É°é­½ÛùÛýùûÛÛ½½ûß¹

\0
\n\0 ¬\nÀààÎÏìÎÚþË ¬\0°	¬\0\0\0\r\0àÀ\0\0À\0\0\0­\0À\0àð¼ÛÙùûÛÛÛÛ¿½ù»ÛÛùù¹ù¹½½¹ûûß¹û¹½¹ðÉÀ\0
ÀÀàÀÀ\0\0\n\0\0À\0

Ê	ì\r\0­ \0 \0\0\0\0\0\0\0\0\0À\0\n\0\0
	\0		©éé©½ûÛÛ½¹¹ÛÛÛ¹û«
	 \0àà\0 \0\0\nÀÀ¬\0\0 ÀÀÀ\nÀ\0\0©À \0Ê\0à ÀÀÊ	\0àÀ\0\0À\0\0\0	\0éÙéûù¹ùùù¹ùùûÛÛùù¹½¹¹ùûùû¹ùù­°àÀé\0¬¬\n\0À À\0Àà ¼ ð\nÊ	À \0Úé\0À\0©\0Àà	¬\0\0\0ÊÀ¬¬\0\0\0\0\0\0éù­É
ß½½¹ù¹ù»½¹¹
À	 ¬ \0\n\0\0\0ÀÊ\0À\nÀ\0\0ÀÀÀ\0àÀ °ÚÚ\0À ¼\0à\0¬\0ààà\0\0À\0ÀéàÉ\0\n\0	¼¹ûù¹ùùù¹ýûùù¿Ù¹¹Ù¹ý»Û¹
½°½\0\0ËÀÀÀÊÊ\0\0¬\n\0\0¬ à\0¬\0
	©ð°\0\r \0	à \0­\0	éàÊÊ\nÊ\0\0 àÐË\0	 Ùé
ùÛ	¼ûÛ¹°½½½»Û»¹û\n\n\0¬¼\0\n\0\n\0\0ÊÀ\0\0 \0\0É\0à¹¿Û
	é\0	Àð	ÉËÀ à¬\0\0© °\0\r¼¹ý\r©ùû½½¿ùù¹ù¹¹½»ÙÛ	­¹°ðù\0ÐÀÀ\0¬\0\0À\0ÀÀÀÀ\0\n\nÊ\n\0¿¹û½°ð\0ÊÀ \0\0\n\0É\r	¬­  \n\0\0\0©ÀÀ\n
É
\r¹Û
û½¹°°»ù»¹¹ËÛ\nÚ\0\n¬ \n\0 \0àÊ\0à\n\0\n\0Ð ÀÛ»ÛÊ\0\0ÀÀÊÀÀà\0¬	\n\0ÐËÀðËÀéÊ
\0
\0¼é¹Ëùð¹¹¹¿ ¹ù½	¼\nÀ\0à\0À \0\0\0À\0\n\0à¬°\0À û¿»Û¿	Ê\n\n\0	 \0\0\0¬ \0\0\0°\n\0¬	©

¼Ëé¹¹
©»Ù¼½¿Ú\n\0àà\0ð À\0\0Ê\0	ÀÀÀ¹ù½»ù¼ \0ÊÉÀÀàà¬\n\0\0¬\r \nÀ		à¼	°¹		ù¹¹\0	©
»Û	­ Ð	É¬	\0¼\0Ê\nÀ Ê\0¬\0ÐÊ\0\0¬\n\0¬ \0û»û½¿¹Ðà\0\0\0 \0\n\0\0 \r¬\0\0 \0 \n\0 À\nÐ
Àà	­	 ð½½°\r¹Ù	°
¹	°Ú¹ùéûÚÐ¬¬ ÊÊÊÊ\0Ê Î\0àÀ\n\0ÀàÊ¼\0Ì¬¿½ûÛû©\0àààÊÀ ÀÀÀ\0À \0¬\0 Ð\nÀ©\n
			¹©°			ð

­
ËÊ°©é°Ë\0 à Àà­
 ÊÚ\0½¿»»û \0\0\0\0\0À \n\0Ê\0ÀÊÀ\0\n\0\0\0  ÀÐ\r\n		©°¹	°¹°	©ùùûËËàÚ\r®\n\nÐ
ÊÉ\0«É¬\0àËÉàû¿ý¹û
¬\0\0\n\0\n\0ÀÊÀÀÊ\0\n\0°°°ù

			©	
	
	©©°	©	°Û¹¬Ú
\r ÚÉÉ­\r©à¼	éà°àË°	éàé»Ûù»ÿ½¼\0 \0\0\n\0 \0\0\n\0à\0\0\n\0¬\n	¬°
	«
			©		
°°½	°¿	ÀÊÀ­ ¬\nÊ
Î\n°àÊà¬\nÊà¾ÿ¿¿ù¹ûàÀð¬ ÀàÀ\nÐ\0\n\0À\nÀÀÊ\0\0À\nÀ	©©Ë\r­°°	©
\0©\n	 
	ÚÏ	à¬¼\0ÀÊÐ­\0ÉÀ©ÊÀðË	ÊÀí
Ë\r­ú¹ù¹¿¿¹ð \0À \n \0 À\0àÀÊ\0À\0\0\0ÊÊ\nÚÀÀ Ú
\r©				
	\0© °
½©ð°ÊÊÀð­ Ê\rÀî\r­\0ì¬þþþïíí¿»ûùû¹ÊÀÀ \0À\0À\0¬	 \0 à¬\0\0À\0­\0\0°Ù ¼©

\n	
\n	\r	½»	ì¼àì¬\ràÌ­ ÉàààÚ	ÊÀ®ÚßîÞÞßÏï¹ù½»ùú\0¬ à À¬\0\nÀÀÀàÀ\0\0\0àà\0àÀàðÊ\r©
Ë	
		
Ù
Ú	¼°ððð¬\0À\0àÊÊÊÊ\nÀàÞ¬éÎ¬ÐïîßïþïïÎûÿ¿ÿûþ­¬\0 À\0¬\0à À\n\0 \0¬\nÀ¬\0¬\0©\0\0ÊÐ°\r­©ë	©	Ê
©ð°°ËÊ\nÚ\r¬\0ÐàÊ¬¼ËÊÊÎÊïÏÿïþÿþÿÿûùûÛýûÿ\0\0¬\nÀÊÀ¬\0À\0ÀÀÀÀÀ\0À¬\0\nÀ¬¬©¬ É©	
Ð°¹ÉË\rÚÚ\0\nÀàà¬¬¬\r¬àÐÊÌ\0àêÞÞþüÿÏíïÏïýÿÿÿÿýðéàÀ ¬\n\0\0À\0¬ \n\0¬Ê\0À¬\0ÀÀ ÀÉ\r©àÚðð¹é\nÚ°\0¹©é¬¹


­ààààìÀÐÊÎ¬àààìÏíïïÿïþÿÿÿþÿÿÿýïÿþÿÀ\0¬\0Ààà\n\0\0\0\0àà\0Ààà¬©¬ À	©Úù½­¹ÊÚÀððÚÚÚÐðÀ\0À\nÀÊÊÊÉÀÊÚÌ¬ÊÚÀí¬þþÞüþÿïïïïþÿïïýíÿÏþ\r\n\nÊ\0\0\nÀ\0ÀÊ\0 ¬\0 \0\0\0  \0À\0Ð°	àÚÚÐ¼¼¼
é©\r©ê\r\n­®¬¬Ê¬¬¬¬¬¬ Ú¼®þßïÿïÿïßþßþÿÿßÿïÿïþ\r \0ÊÀÀ\0à\0\0ÀÀà\0 ÀÀÀÀÀÊ¬ Ê\nÀð	© ù½°½­­\n\r\nÚÛÉÊ\0¬\0ËÀðÀàÐËÊÊÎàêÎÞÏîÿïþüþþÿïíþþþÞÿþÿíþ\0à\n \0à¬\0à\0  \0\n\0À\0à\0À\0¿Ê
Ð°° \0Ê\n\nÀÀ­­¬¬¬ÊÎÀÊ¬\nàì­àÎ\ríïïÿÿÞýïÿÿïþÿÿíÿÿÿþßüþàð\0Àà\0À\0À\n\0\0 \0¬\0¬\0À\n\r©\0\0ËÐ¯\rÀ\0
ËËÛÀÊ\0\nÀéÌàààÉààÀÀéêþÏÞþþÿïþþþÿÏþþþïÏïÿïÿýü à  à¬\nÀ¬\0\0À¬ À\0\0ÀÀ\0 ¬\0\nÀ\n
\0À­°À\0À ì¬\nÚàð ìÀ¬\0 ÉÀÏ¬ÞÏþÿíÿïþÿßïÏþÿÏÿÿÿýïÿïïïÍ\0Àà\0À¬\0ÀÊÀ\n À\0¬\0 ÊÀà\0¬\0ÐÊÉ\0\0
ÊËÀà
À\0À\0\0\0\0ééðààÌ\0¬	àÏÎàÀàÀ­¬ïïþÿïþþÞïÞþÿþÿÎþþþþþýþßýï\n \0Ê\0À\n\0\0ÀÀ ÀÀ\0À\n\0\0ÀÀÀ¬\n\0éÀð°¼\0\0\n\0¬¬¬½¯\nÀÊÀà	ÀàÊ®\r¬ìïüÿïÞÿïÿÿÿïïþïþÿÿíÿýÿþÿïïüü \0ÀÀÊ\0\0àÀ\0¬¬\0\0  \0¬\nÀÀà\0°\0Àð¬\0\0\0\0\0 	àððÊÀÀ­ÎéÀÊÎüïüþÿíþÞþÞÿþßýïþþÿíïíÿïÿþÿïËÊ\0 \n\0\0Ê \0\0¬¬\0 \0àÊÀÀÀ\0Àà\0À\0 ¬\0\0àÀ\nÊ\0À\nÀÀÀÊÚÚÚÌ\0¬\0àÊÀ¬êÎ¯ìÿþÿÿìþÿïÿïïïïïþÿÏïÿÿÿïßíïþÞà\0ÀÀàÊÀ\0ÀÀ\0\0À\0\0\0\n\0à\n \0\0Ê À\0À À\0 \n\0­­¬°àÀàÊÀìÀì¬\0éîüÿïíïïÿÿîþþÿüÿþÿíþÿþþþþÿþÿýïþ¬ ¬\0\nÊÎ\n\0ÀÀ¬\0à\0 \0À\0à\0À\nÀ\0àÀ\0À À\0\0Úðð\r¬\0é\nÀàîÞíïþÞÿþßþþßýïßïüïþÿïïïÿýÿÞýïïþÞþ\0\nÊÊ\0\0\0Ê\0 À¬\0 \0\0\nÀ\nÀ À À\0\0à\0àÀ¬\n \0\n
¬­¬ÀìÀÍ¬ÐíþßïÿïïþÏïþþÿîþÿÿÏïïüþíþþÿïýþÿïÏï\0À\nÊÀàÀ\0À\0\0\0\nÀ\0ÊÀ\0àÀ¬ À À\0 \0 \0À\0¬\0ÀðððÊÀÊÀÀ¬\0ì ÊÊïîÿîÞþýþÿÿÞÿïïÿÿïïþßþÿÿÿïÿþÿïïÞÿþÐ¬ à à\0\0 à\0àÀÀÊÀ\0À¬\0\0À\0\0À\0\nÀ\nÀÀ\0ÀÊÀ\0ÀÀ\0¬¼ÀàÎ\0ì®ÞÞÿÏÿþýïïÏïïüÿÞüþÞþÿîýïïþýïÏüÿÿïßíêÀ\0À¬¬\0Ê\0\n\0\0À Ê\0 \0À \n\0 \0\0\0À ¬\n\0ÀàùàÐÀì\r¬ÀéÉíïïÞÿïïþþÿþþÿïïïïïÿÏþÿþþþÿïÿþÿïíþþþÞ\r \0àà ÀÀÊÀ\0\0\0ÊÀ¬\0À¬\0\0\0\0À¬\0 ¬\0ÀÀ 	ë\nÊÊÊÀ¼àîþÞÿïïÞýïíþïßíÿïþÿþþÿïüïüÿíþÿïþýþÿÿÿïàÀà\0 \n\0\0à\nÀ\0Ê\0\0à¬\0\0ÀÀÊÀÀ¬\0à\0Ê\0\0À\0\0\0\0ÀÊ\0¬\r¬ÀÀÉàì\nÊÞÞþÿÏþþÿïÿþýþþþïüÿÏíþþÞÿþÿïÿïÞýïþÿÏííüþ\n\0àÀ ÀÀÀÀ\0À\0à\0ÊÀÀÀàÊ\0\n\0\n\0ÀÀ¬\0ÊÀ\0ÀÊÀÀ \0ÊÊ\0ÚËÎà¬¬¬\0ìþïîßïþÞýîþìÿîÿïÿüÿïïþÿÞÿîýïþþÿïþýïþÿþÿïé  ¬\n\0À\0\n\nÀ \0\nÀ\0 À\0\0\0\0\0\0\0\0\0Ëì¼¼°Ê\rÊÀÊÀîÚÏÞÿþÞþÿþÿßÿþÿüÿÏïïïÿïïïþßþÿíÿÏþÿïþßüÿïüþà  Àà\0ÀÀ¬\n\n\0\0\0ÀÌ\0ÀÊÀÀ\n\0\0¬\0¬\n¬\0\n¬
ËÀì¬Ê®ÐïþïÞïþýïïþïïíþïþþÿíÿÎýïþÿïïïïïþßíþÿïÿíþÿíü \0Ê¬\0À\nÀ¬\n\0à\0\n\0À \0\0\0ÀÀ\0À\n\0 \0\0 ÚÚð\nÌ­©ÊïìÿþÿÞÿïþÞßþüþýþÞÿÏþïÿïüïÏþÞüþ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ó­þ','Albert Hellstern heeft gestudeerd aan de Universiteit van Leuven , waar hij in 1981 een licentie in de TEW behaald heeft.  Heeft tevens een Master\'s Degree in International Studies, behaald aan de Universiteit van Stanford (1985). Albert trad in 1993 dienst als Assistent Bedrijfsleider en werd kort daarna bevorderd tot Bedrijfsleider.  Zijn moedertaal is Engels; spreekt tevens vloeiend Nederlands, Duits, Frans en Spaans.'),(11,'Smets','Tim','Tremelobaan 173','Keerbergen','3140','016 53 64 52','Postmedewerker',2050,'10','62',0,'1993-01-15 00:00:00.000000','1973-06-06 00:00:00.000000','1',_binary '\'\0\0\0\0\0 \0\0 \0×
OLE2C862633\0PBrush\0\0\0\0\0\0 \0\0\0PBrush\0\0\0\0\0\0\0\00 0 192 223\0 T\0\0BMT\0\0\0\0\0\0v\0\0\0(\0\0\0À\0\0\0ß\0\0\0\0\0\0\0\0\0 S\0\0Ä\0\0Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÀÀÀ\0\0\0ÿ\0\0ÿ\0\0\0ÿÿ\0ÿ\0\0\0ÿ\0ÿ\0ÿÿ\0\0ÿÿÿ\0\0\0\0Ê½¹°\0		\0\0\0¬\0\0\0À	\0ÉÀ\0ìà»»	ï¹ïðþÙ»»»»\0\0»¹	¹\0\0»	»\0¯\nÊÎÀ¬\0àÊÎÀàÎÊÀÀÀÀÀ\0	û¿\0\0\0\0\0À\0\0\0\0	à»\0\0\0	»¹ð		
¹Û¹	»»»¬	¹»à»
¹\0ìàëà¬\0À¬àÌ¬ÀÊÀÀÀÀàì¬\0©Ê	¯¹»\0\0\0\0\0\0ì \0\0\0\0ì°\0\0\0	»ÿë	ÿ¹»¹	¹»ÊÀ\0»¹é»\0°\0ÊË\nÀ\0Î\nÊì¬¬¬êí¬
Ê\nÀ\nÐüÉ\0\0\0\0Àì\0\0\0
ì¹\0\0\0\0\0»ïßð	»»»»¹	»	¹¬\0\0	°»\0»\0\0¬®\0Àéü\0à\0ÀàìÎÌÀÎ\0ÀÀË\0ÀÀàÐ°¬ é\0à\0\0\0À\0\0Îà\0\0à
¹\0\0\0\0\0	»Îïþ¹	»»¹¹	éÉ»À\0\0\0»»\0°\0\0ÀÀð\n\nÀ\0ÀàÎ\0àêî¬Ì\0À¬­¬¬à¬\nÊÀ°ÀÚ\0\0\0\0\0ìì\0\0\0
°À	¹ì\0\0\0	»ìù»¹\0	»	¹ð»¼	»\0\0\0\0	»»
¹»\0\0ÀÊÀíì\0À\0\0ÀÌÀÌ\0àÀ\0\nÊÀ
à	à\0\nÌà©ÀÉ	\0\0\0À\0\0\0Î¹é»\0\0\0\0\0\0»îð»		¹\0	»¯ù¹\0\0\0\0\0	»\0°»\0\0\0\nÀ¼\0êà\0ÀÀ¬àÊ\nÀìÀàÀÊÊÊîÎ¹¬
Ê
Ê\0À
ÌÚ\0\0\0\0\0\0Îî¹À»\0\0\0\0\0	¹é¹\0	»	»ü¹	¹\0\0\0\0\0»°\0¹°\0\0Ì\0ËÀËÐà\0ÀÎÌ¬Ê¬¬	©ÀÀà¼ \0ÀÀÊ	À \0\0\0\0ÀìîÎÀ
¹à\0\0\0\0\0\0	»\0\0»
¹ïÿ¹¹\0\0\0\0\0\0	»	\0	»¹\0\0\0 À¬¼\0ú\0\0¬ÊÌÊÀÀÀ\0àÊÀºÀ\0À\0\0ÎÞ\0\0\0	\0\0\0\0\0°ì\0¹\0\0\0\0\0	»
¹°	¹	»¯ßà¹»\0\0\0\0\0\0\0	¹\0	»	\0\0ÀàúÀÊÀ\0ÊÀì¬¬¬Ê¯ì¬Ì\0ÌÀ\0àêà ì\0\0
\0\0\0\0	»à\0	¹	»°\0\0\0\0	é	»¹\rÿúÀ»¹\0\0\0\0\0\0\0\0\0\0\0»ÎÀ\0À¼ê\0Àìàìàì¬ÀÊÊì¬Ê\0À\0À à\0ì
ÀÀ\0\n¹\0\0\0\0À\0	»»»\0\0\0\0\0¹¹	»
¹ÿì\0»°\0\0\0\0\0\0\0\0\0	¹\0àì\0À\nÛÀÀ\nÀà¬àÌÀ\nÊìÀÀÀ Ú¬àì¬\0	©\0\0à\0»	\0»»»Î\0\0\0\0	»
	¹»¹\rïÞ\0
»\0\0\0\0\0\0\0\0\0	\0»\0ÎÀ É¿­¬¬¬®Àîü¬®à\0ÚÚ¬\nÀàÀÀÊÊÀ\0\0¹ì	¹°	»¹\0\0\0\0\0°»¹ÿ¿ì\0»\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ì\0\0Ê\r ¹¾\0À\0ÀÀÀÎÀìÌ¬ÀÀàÊ\nÚÚÌÀÀì \0 Î àÊÎ\0\0	»\0Î\0»»\0ÀêàÀ\0\0\0\0°é	»¹\0þü\0\0	¹\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
Ú¹à¬¬¬ÀêÎ¬¬ÊÎààÀ\0ÀééËÀ¬¬ÊÌ àà\0\0»Ì	»»°	
° \0\0 \0\0\0	¹é	»ßþ\0\0¹\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0Êà	\0¹û\0ÀàÀÀàÀîÌàÀÀÊ°\0ÐÀ\n  ÎÎ\0ÀÊÀ¼¬	\0À
¹\0»	\0	¹À\0àêÊêÊÀ	°ð»¹­þÌ\0	¹\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\nË°À\0Ê¬®ÎÀÊÀéÀ\nÀàðÚÀ®\0àÀ\0ÊÊÀ\0à»\0	»\0\0
°\0\0\0\0\0 \0\0¹é\0ÿü\0\0
¹\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0«à\0»À\0ÀÀ\0ÀàÊÎÌÀÀ\0¼ÀÌË¬ ÀÎÀÀ¬\0\0\0	\0
¹\0\0\0	¹\0ÀÎÊÎÌ\0	°é	»	ÿþÊ\0À\0\0ÀÀ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\n­»ð\0\0À\0 à\0ÀÀ\0à\0àÀÊÀ\0Àà\0ÊÀÊ­ \0\0°\0°\0\0\0
\0\0\0\0\0\0»Ï	¹ýàìà\0	À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\nÐ\0É\0ÀÀÀÀàÌÌÀÀé
ËÊÊà\0ÎÀ\0\0à ì\0\0\0«À\0»\0\0
à\0\0\0\0\0\0úðþ¬Î	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0à¬\0\0\0	ð\0\0À\0\0 ÊÀ\0\0¼\0ìÊÀÊààà\0Àì\nÀ\n\0\0		\0	 \0°\0\0		\0\0àêÀà\0ÀìíðïÎÀ\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0À\0\0
ÀÀ\0Ì¬ÀÀÀÐð	àÎ\0ÊÀ\0À\0ÊÀ­\0 À\0\0\0\0\0\0	\0\0\n
\0\n\0\n\0\0\0Àîé\0íà\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0\0
¿\0\0ÀÀ\0ÀÀÀÊÀÀ\0\0	þ¬¬\0ì  À  À¬\0\0©\0À\0\0\0	°\0Àêàà\0Ê	àÎðþÎ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0À\0ÌÎ\0ÀÀÀéÊ\0°ÎÀÊÀÀÀÀÎÀ À
\0\nÀ\0\n	\n\0\0\0\0\0\0\0\0\0\0Ì¬ìîÀÀ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÀÀ\0
¿\0 À\0\nÀÊÌà\n½°àìàÀÀ\0àà  À\0Þ\nÀ\0\0	\0		\0\0	\0\0\0\0\0¬	\0À\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0
\n\0ù\nÀàËÀàËí®àðÀ¿¹»½ÎÊ¬ÀààÀ\nà\0\0\0\0
\0\0\0\0\0\0\0°\0\0\0\0\0\0¬	\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0  À
°í \n\0 \n\0êÊàê
¹½°	¼¬ÊÀÀ¬àÊÀÊ\0\n\0\0À\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0ÚÉ\0Ú¾ÚÀðÊ¼¾Þ¬°ð»¹»¹ÎÊÊÀÌ\0ÊàÀà\0ð\0\0\0\0

\0\0\0\0\0\0\0\0\nÌ	\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0é é\r¬ ª ÀÊÊëé\0À»¹ððì¬ ì¬Àà\0ð\0\0	\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
\0ð¾ÚÊÐë\0°¾¬¯
À»»ÎÊÊÊÌÊÀÀÀÀ\0\0 Ê\0	\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¼°¼­­ê\0\n\0ÊÊàëàÚ¹¹¿¹ðààì¬\0ì¬àÀàÀ\0Ð\n\0É\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 	\0	\0\0\0\0\0\0\0	ê\r­©©êÌààÊ\0
àþ­¬ »»¹¹½þÎÀÎÀàÊ ¬°\0Ð	\n\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0	 °\n¾¬à\nÊÀúËÊË
ûûÿ ì¬¬¬Ê\r©\0\0°\0©\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0	\0\0\0\0\0ÀÚÊÚ
	¬ì°ËÀ	®¾¼¬ð»»¹ÿðÊÞÊÀìààüà©Ê\0\0À\0 \n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\nÊ\0Ëð¾Ð ì \0àéëËÊÐ¾
ÛÛ»ÛýÿÎ\n¬Ê ­\0\0À\0É		\0	\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	¹ ©© 
	Ì\nÊÊ\0¾©¬\0À»°Ú¼ÿù­¬ÊÎÀ©ÊÚ\0\n\0\0°\0\0\0	\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0	\nÉ\0À	ú
ì\0À¬ÌÌÀÀÀ¹ÿÀð­\r	é °À	©\0\0\0	\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0©\0\0\0\0\0\0\0\0©\n	Ê\nàéËÀ\0À\0Àààý¹¬àÌÊ
\n\0	\0\nÀ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0	\0		
\0\0	\n		©\0¾\0ÀÐ\r	ÉÉÿ
\nÎ\rì\r	©
	\0
\0©\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 	 \0\0\0\0\0

\0\0	\0 °
	ÊËÉð\0\0\rÀ°ðùÿûÚÌÌ¬º\nàÎ	éÐ \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0		\n\0\0\0\0\n\0\0\0\0¹Ð°	À¾¿\0À ¬ÀÌÀËÛ»ÿÿü«Ë¿É ù	©
\r ¼©\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0	Ê\0\0©\0©À
\nÉËð ÉÊËÎ®\0é­»»ûÿïÐ½­é¾ùÀé Ð\r		\0\0\0\0\0\0		\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0°	\0\0\0\0	É	\0¹\0\n  ÊééÚ½¿»ûÿßÿÚûËÏ©ù°
\n\0
\0\0		\0		\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0		\0\0\0\0\0\0\0\n\0\0\0	\0é\n\0		¬úðéí­»»Û¿ÿÿúù¼¹ð¼°ð°½©ð©\0		\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\n\0\0\0\0\0\0É\0	\n°¹\n	\0\n
\0°­¯
\nÚÛû¿ÿûßËîÊÎËÚ	à°©  \0	\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	«°	 \0\0	\0	\0\n\0\0\0\0À\0ËËàðù¼¹»û¿ÿÏÿ¾Ðàð¹© 	 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 °	\0\0­­\0\0\0\0	©¹	\0\n¼ é¬¼¬¿½»ûÿÿéùàîìì¼©é¹©\0 Ð	 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0				\0	

	 	\0\0	©		­©\0\0\0
ÛÛ»û¿ÿÿÿûÛÌ¬®ËË 		© \n\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0		
\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0	ù\0\0		\0\0	
¹û¿°¹©\0 °àÎ¬¿½©ý½ÿ¼êÀÌ¬ðù©­		à \0			\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0°ù¼¼ \0\0\0\0\0\0\0 \0\0					\0ú° 		°ð¿ÛÛÛ\0\0°úßÿþùÿàêÎÚÐð\n		 \0\0		\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Û
ËÛù©\0\0\0\0				\0\0\0\0\0\0\n	\0	 \0 

ù»½»¿
©	À\0\0ÀÀÀí½°ÿÿÿ­¿¾\rééé°
		 °\0\0°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Û	ùù¹
ÛÐùËËà\0\0\0\0\0\0\0°\0\0\0	°°\0½°½¯ùù¹©\0À\0\0\0àÿïßßÿ	ËàààðúÛé°ËË
\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n°ð¯°»¹°ð©\0\0\0	\0\0°
	\0\0\0	

\0\0¿°é
¿½»É¹­°\0 \0\0\0\0\0ùëÿÿï½½½¿ûÛù¿­©© \0\0\0\0	\0\0\0	\0\0\0\0\0\0\0\0­\rÙÙÙùð½Ðð½ÚÐù\0\0\0\0\0\0\0\0			\n\0¿ºðð ûÛ
	»¿°ùù½¼¾ÿÏßÀËûúùùûËËÛ\n\n\0 \0\0\0\0\0\0\0\0\0\0\0\0\0¹°¼¾º¹Ûû¼¹	\0\0\0\0\0\0\0\0\0\0		­­°¹¾ÛÚ½»Ûð½½»ÚÛ¿»ûðÛËûëðàÎýÿ¯½°¼©
\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r­ÙðÛÙ©éû
	ð©\0\0\0	\0	\0	© \0°ð¹ûü¹º¿ÿ¿ý«¹¿¿ûûÿ¿ÿï¼ýÿðÊÌÛùëÏ°

\0 		\0\0\0\0\0\0\0\0\0¹Ùé©	­\r¹°½½°Ð\0\0\0\0\0ÚÛËýûÿù¯Þ¹éé½¹¹¿¿û¿ùë¯­ïðú½úúÚ¹é©°\0		\0\0	\0\0\0\0\0\0\0\0\0\0\0	©Ù°Ù­½­
¹
	°©	\0\0\0\0\0©	\0Ð		é©úù¿½¹¯ù©¿¿»ÚÛÛûÛû½ïþ¼ýÿ¿ÿß­½½þË
\0©	\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0©\r¹\rù
Ù½½	©©			\0\0\0°¹©	©°û¹¿¹ð»
ÛùÛÚß¯¿¿ÿûùûëïÞþ«Úþºùé¼\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Úé
Ð°½¹úÚ
	°°\0\0\0°\0°	\n

é¿¿¯¿¿Ðððûû¿þÿýÿ½¿ýþÿýéëÚ©©			\0\0	\0\0\0\0\0\0\0\0\0\0\0\0ÉÙéð¹Ù°¹©½°	©			\0	\0\0	 Ð¹ë	»
ËÙº	ü¹°¾ßð½¿ËÏ¿¯Ïÿëÿÿïý¯­°þ¿­° \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	
Û
É	ÚÙ­½¼ºÙÙ©¼°ù	\0\0\0
\0\0\0»É¹¹©	»»Ú°ù¯¼ÎËí¼ûÞü¾ÿßíÿÿúúÞéëü¼é© 
	\0\0\0	\0\0\0\0\0\0\0\0\0\0\0¹É°Ð°ù©
		¹¹		\0\0\0
	©	\0
	¿\r\r©©ËùàüÛà¼ìÎìÿÿÿÿßÿÛëð¿ûú			\0\0		\0\0\0\0\0\0\0\0\0\0\0\0\0¹	ù©Ù­Ë¹¼½½½¹	Ë	
\0	\0\0	\0ðð°	»»Ú°ùëÏìùïßýîìîÿÿÿÿ¿ßÿÎÊÚé­
\0	\0\0 	\0\0\0\0\0\0\0\0\0\0\0\0
\r
Ð©¼Û	\0\0 \0\0°		\n

û	°¹éé¯ð°ÀúÎ°þÎîÎÿÿýÿþÿü¼àû\r¹¼¹\r	\n			\0\0\0\0\0\0\0\0\0\0\0\0	Ù
Ù
¹	¹¼¹¹ù			\0\0\0	 °©


¹	
ûðùÏîíëéÿììîÿÿßÿÿÿÿÿþ\r\r¯\r­°
\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	©Ù Ð°ð			ù
½°\0	\0\0\0	\0ËÙ



Û		©¼¼¾ð»ËÚ¾Ïìþïïÿÿÿÿýÿÿùþ¿éðý»Ð°\0
É\0\0\0	\0\0\0\0\0\0\0\0\0°Ù Ù¹	Û
©	©	\0	\0\0\0\0	°°°©¼°
©ÉÎÿ¯Ï¾ÿïÿÿÿÿÿþÿÿÿýÿüðþ¯Ï¹\0

\0\n	\0\0\0\0\0\0\0\0\0\0\0	Ë	 			
\0¹	
	é©Û\0\0\0\0©\0°¹
Ë

	
ù©
	ÐûþÛ½¯ß¾ÿïÿÿÿÿÿÿýÿþÿÏïÛûËàð¹°ð°°\0		\0\0\0\0\0\0\0\0\0\0\0©	\nð°°\0°
©
	©			\0\0\0\0\0¿
Ú\0¹½­°¾°»
¼ûùëÏÿÿþûßÿÿßÿÿýÿ¿ÿÿü¿
	\0 \0\0\0\0\0\0\0\0\0\0\0	©°	©Û	
É°ÚÚ\0¹\0\0\0\0	©Ë\0\0ú¹\nÛ
		
©éýï¾Þþÿíÿÿÿïÿÿÿÿûÿÿÿýþûéÿ­¹¹é\n	 \0\0\0\0\0\0\0\0\0\0\0\0
°ÚÙð½	°½°¹°
		\0\0	\0°\nð»½ûË°°¹ÛÛëÛÏ¿¿ÿÿÿÿßÿÿÿÿÿßÿýÿÿýÿÿéúÚÛ¬°\n\0\0\0\0\0\0\0\0\0\0
	Ð	­
ù¼¹ùð­ùúÙ	
	\0\0\0\0\0°°©\0\0¿û°ù½©		\nþ¾Þýÿÿïÿïüÿÿÿßÿÿþÿúÿýü¿í¹°Û\n\0©\0\0\0	\0\0\0\0\0\0\0\0Ú
­
Û
¹Ûù	



\0\0\0\0		
\0	
Ëÿ½
ÿú°°¹ùúÿÿÿÿïÿÿßÿÿÿÿÿÿÿýÿýÿûÿ¿þÛé°\nÐ\0\0\0\0\0\0\0\0\0\0\0\0\0\0©©°\0ëùùùùÛ»Ûû°\0	\0\0	\0	\0\n\0­ûùðÿûÛ	
		
¼ðûÏ¯ÿÿÿÿÿÿ¿ÿýÿÿÿÿ¿ÿýÿÿßÿ© 	
\0\0\0	\0\0\0\0\0\0\0\0	Ð
\nÛË¿
½ûý½½ðÛ	
Ë\0\0\0\0\0\0\0		ûÿ©¿¯É©°°ûß¿ÿÿÿÿÿßÿïÿÞÿÿÿÿßÿÿÿÿý¹Ë½­¿
©	\0\0\0\0\0\0\0\0\0\0\0\0\0©©	Ð°½©ËÛß½»ß¿Ûû½¯	\0\0	\0		\0ÿ¿ùÿéûé©	­éïðÿþÿÿþÿÿÿÿßÿÿÿß¿þþ¿ËÛ	¿
	 \0\0\0\0\0\0\0\0\0\0\0\0\0	Ð°
ÉÚÛÛÝ¹ùùý½úÛ
	©		\0\0\0\0\0°\0ûÿ
ùûù°°¾¾¿ûÿÿÿïÿÿÿÿÿÿÿÿÿÿýÿÿïß¿ý¿éûÐ°\0\0\0\0\0\0\0\0\0\0\0\0

½¼¹ùùùý½ùûÿÿßû¹ù		©	\0	\0\0		\0¾ÿðùÿ­û

Ûùùúþÿ¿ÿÿÿÿßÿÿÿÿþÿÿþÿÿÿÿßþÿ°°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ß¹¹ÛÛÛùýÿß½©
\0	\0\0\0\0	«Ûý¿¿¿Ú°¹­¿¾ÿÿÏÿÿÿÿÿÿÿÿÿÿÿïÿÿÿßÿÿÿùéëÚ°\0©\0\0\0\0\0\0\0\0\0\0\0\0Ú	©°ÛÙùÐÚý½¿¿ùëÛ	¹©		\0©	\0°Ðù¯¿½°¿¹éù
ù¿ïÿ¾¿ûÿÿÿþÿïþÿÿýÿýÿýÿûïÿ½ÿ	
\0\0©\0	\0\0\0\0\0\0\0\0\0\0\0\n	¹ùÙù¹	¹¹Û
ÛÛÛý¿°ð©°\0\0\0	\0°°ùð»ûÉùï\0¿ûúÿÛÿßÿÿýÿÿÿÿÿÿÿÿÿÿÿÿþÿÿßýÿ©­\n
		\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r	©\r©º\r­	É©ùùùûÛý¿	©
©	\0\0	\0
	
ùð»úÛ\n½¿¿þÿßþÿïÿÿÿÿÿÿÿþÿÿïÿýïÿïÿÛ\0\0	\0\0\0\0\0\0\0\0\0\0\0\0	é°¹¹¹»ÛùùûÛË°\0\0	¹©½¿
°ù
Ëÿ¿ûÿý¿¿ûÿÿÿÿÿÿÿÿÿþÿÿÿÿÿÿÿÿÿ¼¼¹ 
	\n		\0	\0\0\0\0\0\0\0\0\0\0\0©	\0¼Ë©¹­°Ðù\r½¿½	é©©	\0\0­©\n
	ù©ù©ûûÛÛß¿ÿýÿþßÿÿïþþþþÿÿÿÿïÿíÿðÿßÿ	\0\0\0 \0\0\0\0\0\0\0\0\0\0\0ËÛÉ­¼¹ÛûÛûÙûù°©	\0\0
°°ð»»Ú¿¿¿ü¿¿¿ÿþÿïßÏÿÿýþÿÿïßÿûþÿÿïéð°° \0\0\0\0\0\0\0\0\0\0\0\0	é¬¹¹ËÙ¹»ß½½»ùËË¹°	\0\0\0½\r	
ß
Ùù­­¹¿¿¿½½ûûÿïÿëÚßþûíïïïïíûþüþùýéùù­	\0°\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0
ÚÙ¹©½¹¹¹ûûÛý¹¹©	É	\0\0û°°°
»ùºù°úÛðùûûïßùðÿýÿïëéì¾ÚÚÚýúüûûýïëþÿ¯
	\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\nÉù°½¹­ù¹ùÛÛß½»ðûÚ\0\0\0ü»	ù\0ù¯ð¿
¿ûý¿ûÿÿûëí½üþ¿Ëí¯íÚýëüìúðýéðù­¹
		\0	\0	\0\0\0\0\0\0\0\0\0\0\0¹É°°ÛÚÛ	ÙùùÛÛ½½¿Ûý½½©Û				\0\0ûÐð°
ù¹Ðùï¿ýÿ¿Ë¿½ÿûëëËÎ¾ÚÞ¯Ê¾¯Û\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À
Ë©¹¹éùÛ½½½ùùùÿÙùùûÛ¿°°°\0¹
¹ðûûÛ
ë½¿¾ûûý¿ßïéííí¯éí¯ëëü¿¬¿êëíí­ðù¼½©		\0\0	\0\0\0\0\0\0\0\0\0\0\0\0Û
\r¹	ù½¿¿½ùù«Û­		\0\0\nÚðÚ¹
û©­»ý½¿½¿íûûéÿÿ¾¾¾ðþ¾ÚÞÞ¯ÏûËßÞ¾¾úÛ	¯º\0\0\0\0\0\0\0\0\0\0\0\0©­«ðù¹ùùùù		½¹Ûß½ÛùûÛ½ù½
\0\r©
½°©ëùùºÛ¿¯¿¿þßÿ½­íÿßïýïÿïÿÿ¾þúÿßý¿ðù	©É
\0\0\0\0\0\0\0\0\0\0\0\0\0ðÛÙ	½­	ùÛûß½ûùð		\0
Ëð½¿°¹	¿½©ûÛûßûÛúßïÿÿïïÿïÿïÿïþßÿùÿÛï¾ý©°°»\0	\0\0\0\0\0\0\0\0\0\0\0\0	°ù°°ûÉ¹½¼		ðÿûûÛ¹ù¿\0\0¼	\0¹	
ÛÚ¿ùË½¿ÿÿÿûÿÿïÿÿÿÿÿÿÿÿÿÿþÿïÿþßëùé
	ë\r­\0\0\0\0\0\0\0\0\0\0\0\0\0ÚßÛÛ¿\0		\0û½½¯Ûùû\0\0
\0
Ëú¿¹ð

»ùúûËÿ¾ùÿþÿÿÿÿþÿþÿïÿÿïÿÿÿïßÿýé°°°°°	©\0\0\0\0\0\0\0\0\0¹©ù¼½­	¹ù	\0	\0\0\0\0	\0½ùûÛ¹ûÛ	\0	
\0	
Ë°½¼
½¿ÿßÿðÿÿþÿþÿÿÿÿÿÿÿÿýÿÿÿÿÿßûË	\0©­	 \0\0\0\0\0\0\0\0\0\0ËËÛ½\0\0ÝÝÛÙÐ\0\0Ù¿Ù½¿Û½½\0\0\0©é½½ 	Û
¹½©úùûþûÚÿÿÿÿÿÿÿÿÿÿÿÿÿÿþÿßÿþÿëð°°ð°°\0ð\0\0\0\0\0\0\0\0¹½°ù½¼Ù©	\0\0©­ý¿ýëÛ\0\0ý»ùù¹ÿ\0\0\0
¿«Û¿¼ûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿþÿÿßÿ°	ð 
\0\0\0\0\0\0\0\nÚÚÛ¹©\0­ßûëðûÿûÿü¹ù\0	ýûù°\0	 \0
	\0ùù©	¼¹½¾¾ûý¼¿ßþÿÿÿÿÿÿÿÿÿÿÿïÿþÿÿÿûüðú© \0àÉ	\0\0\0\0\0\0\0\0É½¹¼¹ùðÙ\0\r½°ù½¿¿Ûù¿ÿ¾\0	ù¹¹ùùûÛ\0\0\0\nù¹Ë
Ûðûß¿ÿÿ¯ÿÿÿÿÿÿÿÿÿÿÿýÿÿÿÿþÿþß¿
	
\n\0\r\0\0\0\0\0\0\0ËÚÛÛ\0	©\rÛ¼°½¹¹ð\0	ÛË¿¹\0\0
	©	\0¹©\r©
¹

Ëý¾Þ¿ÿÿÿÿÿÿÿÿïÿÿÿïþÿÞ½þÛÞßú	\0\0À\r\0\0\0\0\0\0\0\0ðù­½¹éé	\0\0¹		©\0\0
ÿ¿\0\0\0°°¼¹ù½½ºÿûßíÿþÿÿþÿÿÿÿÿÿÿÿþÿþ¿þÿ¾ùé°

	©
\0\0\0\0\0\0\0\0ù¹ù°ù©¹
Ù½¹¹		­ùùù\0
	Ú	
©

«ß¿ûïÿÿÿÿÿÿÿïþÿÿïÛíïÏí¬ÿéþ\0\0\0

\0é\0\0\0\0\0	¼¼½ù¿ÐðÐÛ©ð\r½¿Ùý¹ùÛÛùù	ùÿ¿¿¹\0\0\0¹ë°°é¹ú¹ùÚ¿úÿíÿÿÿ¿ïÿÿïÿÿÿþÿðþÚùëËÿ¼¿­½		©\0		\0\0\0\0\0\0\0\0
ËÛ¹ùÛßÙùÙ¿ß½ùý½¿°¹¿ùùùû\0\0é©
	ÚÚ½¼½½¿½ÿïÿÿïïßïÿïÿÿþü¾Þí¯ËÏðÛÚ¹ \0\0° \0\0\0\0\0­½°ûÛÛ­°ðûù
½
Ùýûÿß¿ûÿùÛÚÙ\r¿¿¿½\0\0\0¾ù	é©½©ËÛÚûûþÿïïßííÿÿþý¯ýþÞ­¯ËêÚðþðÿ¯©\0	 	\0\0\0\0\0\0\0Û
°¹ùù½©­ù°¿ÛßÛß»Ù¹¿ÛÛ	Ë	ðû°¼
°½½íûùÿûÿ¿ÿ¾ÞÿÿþúÿÿÞÚüý­ï
Ðÿ
\0	\0\0©\0	é\0\0\0\0\0­ùé°ùù

É°Û¹ÙË­½½¿½¿½ù¿¹ùùû½¿ð\0\0
\0½°
­¿»ûýÿùÿþÿ¯ÿÿþÿÿïïëïËêÚðþþý¯­\0
	\0\0\0\0\0\0\0\0ÛË½É°ÛÐ°ÙÉ
ÛßÛÛÛ	Û½ûù¹\0\0	

\r©ùé©ùí¾ûëþÿýÿßïÿïýþßÿÿü¼­­îÞÿ½¯	
\0	\0\0\0\0\0	
°ù½½½©©¹­¹
Ù°¹°ù¹ùý½ùùù¹¿ß¿Ûð\0\0\0\0û	­¹ùëûùÿýÿÿëÿïÿïÿþÿþüÿ­îÚÊ¼¾ÿëÚð°°\0
\0\0\r©\0\0	ÚÚ	¹ËÙ\0	¿ûý¿©¹»Ûûÿ½¹\0\0\0\0
\r\nú©¼°ü½ÿ½¾ÿÿïÿéÿíÿþÿÿïúÛíüëÏéëÞ½\r
\0	©		\0\0\0\0¹éð½¹ùù¹¹¼¹Û
	­¹¹	½¿¹¹ýù½½¹ûÛ		
	\0\n½Û
ÚÛÛ»û¯ïÿ¿ÿýÿÏÿïþúßþÿÿ¬¼®ðÿüûÚð°°°°\n\0	\0
¹ËÛÚÛ½¹ÚÙ	©ÛÙûß¹	½»ÛÛÿ½¿	°\0	\0\0»¿¹º¼ß½ÿÿëÿÿïÿÿÿþýþÿïÏËéï¯ïËý¯Û\0			¬\0\0Ú¹ð½½¹ùùù¹Ù»©ùý½¹½¹ûÙù¹	½ÿ¿ÛÛù¹Ë\0	

Ðð»ËéÛ¿¿ûÿïüûÿþ¿ÿÏïþÿÿïþÚúüþÞÛþðð°	°°\0\0\0»¹ù©ý½½½½»¿¹éÛù¿Ûß¿¹½¹ûÛûß¿¿
¹	\0\0\0\0
¿°ðùþÿÿ¿þßÿíïÿüÿïïýÿüü¾ðúüÿéÿûÉ
	\0\n©Éùðùù½ùÛÛ
		ùÛ½ùÿÛùÿ½ûÙ¹Ûßÿý¿½ùùûÐù	©\0\0\0°¹©ùüù¿¿½¿ÿÿþýÿÿïÿÿýÿïïëïÏí¯íëüþ¼°¹¹¼©à\0	\0\0	¹
ûÛùù½ÛÛ½¹ùùÿ¿ßßý»Û¿½½¿ýÿ¿ÿ¹¹½	\0\nÛ»ßÿüÿùÿ¿ÿþþÿïíïïÿÿ¼é®Þ¿ËûÛËÚÚÚÐ		\0\0	ù½­ÛÛß½ùÿÛù¹ðùÙ½ùÿýûÿûùùÙûÛÛÿÿÛûß¹ý°
\0	°\0\r	©°½¼»ÿÿ¾ÿíïÿïßýÿÿÿÿÏïÏÐìàïÏÿÏéð¹¹		©\0\0\0	\0é
ð¹Û­½¹ûßùùùùÛÛ½ùÿýûýùý¿»ßÿÿÛÛÿßùÿ»Û\0\0\0\0°¹ûÛ«Þÿ¿ûÿ¿ÿíÿþ¾þúÿïÿÿé\nðþ½úý­

\0\0\0\0\0\0\0Ù½½ÿùÿÛûÙ°½éûÛ¿ßûÿ¿Û½½ûÿÿ¿¿¿Û°\0\0\0\0	©
½ù»ûïüÿßÿÿ¿ï¿ÿÿßíÿïï\n\0à¯üþ½°¹©\0	\0\0\0\0\0		Ëù¹ëÛÛùÿùûý¿½ùýý½½ùý½ûýÿÿ¿Ûýÿýÿÿ¿Û\0\0\0\0\0	û°ý½ûÛÿÿþÿÿýïÏïÿÿïÛÿ\0\0\0ÊüÿËûË		\0\0\0\0\0\0\0
ùùýùÿýÛÿ½ùÛûÿÿ¿Û¿Ûùÿßÿÿý¿ùùù¹	\0	\0\0\0\0\0ùúÛûÿ¿ÿûïýÿïïÿÿÿïïÿïþ\0 à\0 þÞùù©°\0\0\0\0\0\0\0¹­¿ÛûßÛùûÿÛùýÛÙùÿßÛÛÛÿÿßÿÿÿûÿß¿ùÿÿ¿ù\0	\0\0\0
	­¿½¯¿ß¯ÿÿ¿ÿßÿïïïÿÿÏþÿ É\0 ü¿­ëÚÚÙ©\0\0\0\0\0\0\0\0°ÛÛÛÛù½ý¿ßßßýùù½½½¿½ÿ¿ý½ûý½½ÿÿýÿ¿ßÿ½½ûß\0\0\0\0\0\0°­©»ÛÚÿßÿÞþþÿÏýÿÞÞÞ¾ßï àÀÀéëíÿ¹¯
\0\0\0\0\0\0\0\0	\r°½­½½ûÛÛûÛùûÛß¹ËÛýÿ½ý¿ÿ½ûÿÿ¿Ûÿùÿûßÿÿ½»	\0	\0\0\0\0°¿ÿûÿ¿ÿßÿ¾ûï¯ï¿ÿÿúß\n\n\0ªÏïÞ¼¼ùé­	\0\0\0\0\0\0\0\0ÛÛß½½ÿÿý½ûÛÙûÙùûûûßûýûß¿ßßÿÛÿÿûùûß½\0\0\0
ß¾ùý¿ßÿÿúÿ¿Ïþßü¿ïëÏïú\0 À¾­ûÛ©¼¹­ \0\0\0\0			\0Ù½½¹ûÛÛùûùùùûÙ½ûÛßßßùýûß¿ß¿ÿý¿ÿßÿýÿßûÛ\0\0\0	\0\0ðÿ«ë¿ÿ¿ûÞýÿÏûÏ¾ÿïÞÞúüÿ\nÀàÊìúËí¼¹Ë\0\0\0\0\0\0\0\0¼½½ûÙùùß½½¿Ûý¹ù½¿ûß¿ß½ûýùûÿý¿ÿÿùûûÿ¿	\0\0

Úë¹ûÿÿþûÿïþÿþýëÞ¿¿ýûï\0 \n\0\r¬Ïü»ËË	
\0\0\0\0\0\0\0	\0\0
ÚÛ¿¹ûÛÛÙ½ùùûÛýýùý»ÛýûÿýûÛý¿ùÿÿßûÿÛ\0\0°°¼ðÿÿÿþÿ½ëÿ½þ½úÿïþü¾þß¼\nÊËþ¯
Þ\0\0\0\0\0\0\0ùÛÛß½¹Þ½Ûý¿ùÙÿÛÿ¿ûýÿß½ÿ½¿Ûý¿ÿ½¿ù½\0\0\0\0©Û
Û¾¿ÿßÿþÿýï­þÿýÿßÿÿÿÿ\n\n\n\0 ¼éðþí©	\0\0\0\0\0\0\0\0\0\0½½¹ûÛÝ¹¹ù	
Ù¹Ù¿ÙÿßÛÛùÿ­½¿ß½ÿÿý¿û\0°\nÚ°ð¼ù¿ûÿûÿÿÿßÿÿÿÿïïëïïïÿÀà¬¬
îÞéÚÚ\0\0\0\0\0\0\0	\0	ù½éÛÛ»Û	¹½©©ù¹Û¿ÿ¿ùÿ½ÿ©»Û½ûûÛÿÛÛ\0\0 	½»»¿ÿûÿûý¯ûïïþÿßÿÿÿ½þÿ¯© é  ìùëÊé°°Ð\0
\0\0\0\0\0\0\nË½¼©ù½¿ù\r½ßý½ý¿Û©ù¿½½ûÿßÿûÿ¿\0
¯
Ëéðÿßýÿþýïÿÿý½­þúÚÞüþ½íü\nÏí©þË	\n\0°\0\0\0\0\0		É½¹Ûû½­ÿ½¯¼¼¹¿ÿûùû¹½¿½ùùÿÿ¿¿½½ù°\0¼\0\nÙ½½¿
ûÿ¿ý½ûûí¼úþÿéíÿïëÞ¾¯àà ¬ þùðÏ©­¼àðÀÀ\0\0\0\0­¹°	ËÛ	ÉÙé		\r­ûÛÛÛÙÛÿÛùýùùÿûÿ\0\0ð¾úúÿßÿûÿûÿíÿëÏËÀ¾¾úÌ¬\r\0©­­\nÚËÏï­ÚÚðù	\0¬	
\0\0\0	©ÚÙûÏ	é\0 °ùÿÿý¹¹¹		©¬	\0½ý¿»\0\0\n¿­¿¿¾ß¿þ½¿¼¼\nÀ¼\0à	 \nÀ\nààþþÚ­éù
\0à°©	 \0Ë	\0\0	­¾¹é\0\0\0Ð\0\0û½½ûÛÚ
ÐÉàéÚûÿùÙ\0\0½©¯É«ÿüÿß¿Þÿÿ\0°
Ê\0\n\0à \0\0éêðùï\nÙ°¼¼\0Ð\0\0\0\0½¼½©\0\0\0ð©ð½ÿßÿ½¹			 	©\0¹¿½ùÿ½°
ý»ý¿ûûûÿûÿÛàùëÀà\0 à\0\n\0Ê\nêÀéïïËÏ¯
\nË\n\n\0°\0\0\0	ù©Ûé\0\0\0\0\0\0\0\0ÛÛûùûÛ\0\0	ùûÿùû\0
	é­º¿ûßýÿÛýûíùê\0\n  \n\0à °à°\0úëÏ¾¾ï¬Úðð­­	\0\0	\0\0\0\0ß­©ë¹©
\0\0\0°½½ýÿ		\0\0\0\0
¿¿©\0\0ù
ÚÛ¿ðÿ¿¿ûÿ¾ÿûëÐð\0 ÚÊÉ \0À© \nÊÏ¾ïïÚÛéÚÚ	à\nà\0	\0\0°þ°ÛÛ­	­ûÛùù¹	\0\0		ùùýûÿßù	
\0½©¼½»ùÿÿ½¾ùÿ¼¼ª\0à\n\n	 Ê\n\n\n° úýíüïËü¾þ¯
É\0\0\0	\0\0\0\0	\r¹¹éËÛùé¼¹\0 ¹ÿ½¿Ûùù¹
ù¿¿½ùû\0\0­
ÚÛúýÿùéÿý¿ûËË\0Ê\0à\0à¬ à©©¯ éêÚëÚüÿí­ùé©ð \0	\nÉ\0
	\0¹ëË½©	¼\0	\0¹ÛËÛù½½¹ÚÛßùÿßûß¿ùù		
	©ù­½ûûÿÿ¿ûÿü¿ é \n\nÊ\n\n\n\núºÊü­­ëËßêÏÚ©\0\n	 	\n\0\0\0\0

ÛÐ \0	Ë
½½ÛÛÛù	©ù¿¹ÿ¹ùÿ¹\0\0°ð½ºÛ¿í¿ÛÏÿé\n\n\nÚ\n
\n	©é °«àÞ¼¾þúßúù¼°¼	©\0\0	\0\n\0	­°ÚÛÙ©

	­»ü¿½½ûÛÛù½½»ß¹ùË\0Ùûßùÿÿ¹ù\né
¿ß¿ÿ¿¿ûûïÚé à °¬ª
\n®\nºÚÊ	ª\0àþùíü­ËË
\n\0\0Ë	\0\0\0\r\0\0Û½½
Ðùý¹ù¼Û½½¹ùûÛý¿½û¹¹¹ð¼¹ýûÛùûß	\0éÛÛëÛÚÛëÿÞ®Ê\n\nÊ	¬«ÊÀ¼¬  \n\n\0\nùïþ¯þ¿\r°Ð\0\0\0\0\0\0\0°\0	©ù¼»°ÿß½ÛùÛý¿ÙýÛÛýÿÿßÛÿ½½ÿ\0	 	ð¿¿Ûÿûýýÿ¿ü©  ¼°  ê\n¬ ¾

ÊÚ\0¬ à îÞÚÛËðúÊ\0
\0ð\0\0\0	Ð½©ùùß½ßùùûùûÙ¿Û¿¿ÿ½ÿùûÛÛûûù½¹ýûûùûù¹
\0Ù©©ðûÿ»ûûëûÊË\n\n\nÊ
Ë\nÊÊÊààà\n\n\nÎ¿ïïþý¯é	\0 \0\0À\0\0©\n\0©Ú¹ß¿ÿûßÛÿÛýùùùûÛßýÿÿßýÿÿÿûýýÿ½½\0\0	é\nÚÛÛÿúúßÿýýà© àª¼ °  ­®¬¯¯¯\n\n\nËíüü½éàù®©	©\0\0\0\0\0­½½¾ßûý½ÿùùùù¿¿ßý¿ûÛûÛûß¿½½½ûûûÛ¹\n	©	©ëùëùùûùúúºÚà ¼\n\nÊéêËÊÎÀ¬¬ à¬¿ï¿ïïÿ¼ù©é\0\0\0\0 	¬\nÐÉ
ÛùúßÛÛÿ½¿ßßÿß¿ûÛÛßÿßýÿÿýÿÿûýý½½¹\0\0Ð°\nÛ½¿¿¿þÿÿÛÀ \n
«\nÊ
\nÊ®þþ¾\nÊÎÊÞÞÛÞ¼ûÚÐ\0\0\0\0\0\0	
	à°ù­½ûÿ½½ûßûûùûýùÿÿÿ½¿¿ûý¿ÿÿýûûûùù°°©Ë		­¿ý¹Ëùûûú¿
à¬ ¬° ààà¼àùí¯Ê\n\n\0àþûï®ÿÏð¼\0\nÐ\0\0\0\0\0\nËÛùùûÛÛßÛý½½ýÿýûÿùùùÿýýÿßý¿ÿ¿½ý½¹°©ÊËÿ¿ÿÿÏ½  \n\nÊ¬ ©¬êÿîþüþàààîéþßßü¿ïé­\0Ê\0\0\0\0\0\0­­¹½ÿ¿¿ÛÿÛÿ¿Ûÿßÿÿûß¿¿ûÿÿÿÛßÛûÛÿ

	
¿éûýûûûº¼ êÚÊÎÏþÞ \0àþßëí¯ððü\nÐ\0\0\0\0\0	\0©Úùù½¿úÛÛßÙûÛÿÛÿ¿ûÛÛß¿ýýÿÛùûÿ¿¿Ûù¹°© ¯ÿûþß¿¼ ú¬ºË éë\nËêÿ¾ËïÞÊÊÀê¯ÞþÞÿÏ¯­É 		\0\0\0\0\0\r\nÛÙÛÿ½¿¿ßý¿ùý¿ýùÿÿÿÿß¿¿¿ÿÿý½ýûùÿÛÛ
	\0\0¹ù¼¼¿Ûÿùû¯\nÉ¬Ú¬¬þÎÿïÊà¬¬¬­íü¿ûÏ¿Ðúé\r \0\0\0\0\0\0°½°½¯½¹ßÛûÛý¿ûý¿¿ùùùûÿßßßÿ¿½¿½¹­\nÚ	
¼¿ûûï¿ûûààððü¾Ú­éëËÊËÿÏþþÞÊ\nÊÊëïíîÞþí¯¼à°\0° \0\0	­
ËÚÛÛùÛßûý¿½ÿÛý¿Ûýÿÿÿýùûûûÿÿûùùÿ½¿Û	©\0¼¹¿	ïýûÿÏËëÏëü¾Þ¼¼®ïÎþÏÏª¬àÎ àü¼¾ÛééúÛËú\0°À\0\0\0		é°½¿Ûßý¿Ûý¿ùùùûÿýýýùùý¿ûÛÛù¿¹Ð°¬»ùûÛûýûúûî¾¼½¯Úùïï®Þÿïþ¼üðêïËíïþßì¼ª\n\r\0\0\0\0© \r¹éùùùù¿½ÿý¿Ûý¿ßùÿÿÿß¿ûÿ¿ÿ¿Ûý¿½¿Ú¹ éÿ
ÿ¯íýïÏýÿîÚýïËÎüúðïÞþ®  ààùïËÚËêÛË¼©	\0\0\0\0\0Éé
É½¼¿¿ßÛÛý¿Ûý¿¿ÿßÛÛÛß¿ÛùûÛû©Ð°é\0	«¼½¿ÿß¿¯¼þ¾Êì½ïÊü¾úÚíïþÿïËÏî­ïîÚþïýíþûÉª¬
\0\0	\0\0
	½¼»ÛÛÛÛÙù¿½ÿÛý¿ÛýÿÿÿÿßÛûÿ¿ÿÿûý¿½½°Ù\nÐÚÚÙëÛúÿ¿üÿÏéí¿Ûþ½¯Úü¼¾ÚííîÞþúÀÊÀàêÚÛüùðþûéð¾©
©\0\0\0ðÙð½½¿¿Ûß½¿ß¿ÛÛÛÛÛûýý½ý½½½ûý¿¹ù°¹
	©©«¾ïéëÊðþ¾àîÊÎàì­ï­þ¾¿þ¾ß®¬þþûïÿéþÿïÙ«Ë\0\0 \0\0\0\0	ù­ºÛËÙùûý¿ùÿÛýûÿ¿ÿÿ¿ß¿¿ûûÿÛûÛûùùû	ÊºÛ¿ûÛÞ½¯\nË
í©é¬º\nÚÊíïÎÞÞ¯ÀêÊÊÎÏÏýïÿíþý®°ð\0\0\0\0\r°½½¾¿Ûß½¿Ûý½ý½½ý¿ßßßÛ¿Ûÿ¿©\r Û°¿ûÞÿû­\0éààà\n
Àð ¾üÿïïÞ\0ààþûþÚðüþ½úùð	 °\0\0­©ðÛ¹ùùûý¿ûÛý¿Ûÿûÿÿûýûûÿ¿½ý¿ùùû¾	©ù­ûÿ© Êà®\n\0   à\0 \n\nÀì¾úüÿïààîÎËÎËïþûÿïïËé	 \0°\0\0\0	\0Ð°ðùÞ½Ûý½ùûÛýùýùùýûýýùùûûÛÛÿ¹ù½¼¯	­
Ëù¿ÿ¯þÚ°\n\0 ê
Ê\nªÊ© à¯¯ííëüÿ­¯ÊéîÿüüýïÏßÿðð°úÐ\0\0\n\0	À°°Û
¹ùùûùûÛÿßý¿¿¿ÿÿ¿ýûûÿÿß¿½¹ÿ¾°¾ßëÚüª©©\n\n\n\n
\0¬ ªÊÚëïþûïîìïíîí¬ïëïþÿïÏ¯Ú\0\0©\0\0\0	É©ÉùË¿Ûý½¿ýýý½½ý¿½ýùùûý½ûý¹ù½°»É	éù¯ûûûý¯
 \n à¬ ê°®\n\0°®ÞÚßïÞüþúÞïÏ¼ýíéü¼¾Í­©Ë\0\0\0\0\0\0\n	©°	¹ùùûý¿ÛûýûÛûûÿÿûýÿûÿÿÿûÛÛ½¿	¿ßí¯ÚýªÊ¼ª\nÚ
\n

°¬ª\nàí¯¾úßïëËÏ­¼ï¾Ëî¾ÿïïÏ«éð°ð\0\0	\0	\0\0©
\r	ðÛ\r¹ÛÛùýý¿ÿßßùùýÿÛßÛÛÛýù½»Û»°½©½©¾ûûß­ªÐ \n°© àé«ë\nÀð\nÊË®ÏííîëÌéì¼ðí­¬¼Ð¼­

\n\0\0	\0\0\0°°\r¹û¿ßùûûùÿÿûûÿûÿÿ½»ÿÛ½ùË
ÚÛùýÿ¼¿ Ú
 é ë\n\nË°º ªÊÊ°ðà®ºÐ¼¾\nÚËÊ
Ú¼	\0\0\0¬\n\0Ú©¹éùùûùÿýýÿùùÿßùýûÛÛýù¹ù



Ú
ÛéûûðûÊü\n\0àË\n\0éàº àÊÀà­©©\nÊÉà\nÀ\0\0\0\0\0¬\0\0\0\0\r Ú\0°É\0\n	\0

©ÛÛûÿÿýûßûý¿¿Û¿¹ù½½½©ð¼¿¯ÿ¼©\n¼ª°\nÚ ©­®\0®\nÊÊÊà¬¬\n\0\n\0\n\0\0 \0\n\0 \0 ù­\r 	\0\0		\n°©­
ùù­»Ûÿßÿùûÿûý¿Ùù»Ùù¹Ú\n©ûééððúü\n¬\nð¬¬¬ 	 îÀàì¬¬¬ÊÀ \0\0\0\n\0\0 \0 \0\0\0 \0\n°\0\0\0 À
\0°\0	©	Ûß½¿ý½ÿßùýûÛûßß»½½½©ðù¿¾¿ðÿ\r«À \nêÊÊàà\nÊÊªÀ¬\0à\0 \0\0\0\0\0  \0\0  ùËÀ°ð¬°Ú	»Ú©\r©¿¹¹¹ÛûÛÛÿ½¿ßûý½½¹¹¹½°Ú°	¿ÛÙùï¼°ëÀ\nÀàà àìà¬Ì¬¬ÊÀààÌ¬Ê\n\0  \n\0\n\n\n\0© 	°¯
\0\0\0\0\0
	ÛÀ

Ú»Ù½¿Ûù»ùù½½»Ú
Ùëß­¼¿½«ÿûËÌ¼¬ \n\0Ààî àà¬ àì¬®®¬\0\0\0\0\0\0\0 \0\0¬°\0
\n\0ð\0°©\0\n\0Ð	¬©ð½\r¿ÚÙý¿Ýùý¹	ù¯©úÛùëýð¼¼©­\0\0\0À¬\0ÌÊÎ\nÀÀÀÊÀÀÀ\nÀ¬\n\0\n\0\0 
\0\0 \0\0  ð	\n\0Àé°Ð°\0°ù­éð¿
\r½¹û¹ù»ù¹ûË
Ð¹ð½¯«ÿðùÊÊÀ\0\0\0\0¬\nÊÊ à¬Àààààààì\0\n\0 \n\0Ê\0\0\0¬   \0©éë\r\0		\0©	©ËßËÚðû
éùùÛ
É	\0	Ë©Ê¼¾Ûëýððà¼ð\0\0\0ÀÀ\0\0\n¬\0 À\0\0\0À\0\0À\0\0\0\0\nË	\0\0\0Ê\0­°¼©  ¬¼ºÙ©\r°ù
ÚÙé¹¼¹°¹¹°Ð°Ð¹úÛù¿ÛëÚÛË\0\0\0\0\0\0\0À\0À\0ÀÀàÀ\0À\0À\0\0\0\0\0\0\0\0\0\0\0\0ÊÀ\0\0\0\0\0\0ËÉé\0Ð
	 ÉÐ ¹û
	­¹¹°Ù\r
	©

\n\0½¿ðûï­¬\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0À\0\0\0\0\0\0\0\0\0\0\0Ê\0\0\0\0\0\0\0\0\nÐ­ \rà
\n
ÚÚ¹\0	ð°½Ú¹°Û
				ù	É
ùùûý¾½¯Ú\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0­\0\0\0\0\0\0\0\0éí\n	à¬éÐ	­¹°ÚÚ	\r	©¹ùÚÙ©°\0\0ð
ý¿Ûý\nÐú\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0à\0\0\0\0\0\0À\0\r©©\0ð	 \0
\nÚÐ­­©©é °\r¹

	\0°¹­\r\r¿Ëðûü¾Ð­\0À\0\0\0\0\0\0À\0\0À\0\0\0\0\0\0\0\0\0À\0À\0\0\0\0\0\0\0\0\0\0\0à\0\0\0\0À\0\0\nÚÚÐ\n	\0Ë\0\0©ðÛÉÙ©
	\0		\0	©«Ë¿½ûù©Ê\0à\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\nÀ\0\0\0\0\0\0À
	\0
Ú
ÚÛ
©		ðù\rÛ\r°\0°°°¼ðûËËÊ\r \0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	À\0\0\0\0\0\0\0\0\0\0ððÚ	\0\0©\0	ÚÚÛ»°¾°½°
	é		\0	Þ¹úÛùÛý½¼Ú \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¬­\0\0\0\0\0\0\0\0\0­ ð\r ú­­°ù«ÚÉ¯
ùù©ËË	ùé© ¼½©°»©¯
ëÊ \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0ÚÙ	 ðÚ¼Ë¹¼ÚÛË		©\nÚÛÉëéûÙÿ¼\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0éÀÀ\0\0\0\0\0\0\0\0\0¬¼\0\n¹
ËË©íé
û¾úÙ©é­©­½©Ð¿¾¾© î\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0Ûé¬¼ù­¹°¿\r¯ù©ûÛÛ\r¾°¹«ðùËùþÛùùðÞ\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0À\0\0\0À\0\0\0\0\0\0\0\0\0 À\0\0\0\0\0\0\0\0\0\0\0¯\ré©¬
­\nÚû\rðù¼ºÚÐ°¼© ý¿¼¿¿©¿Ëéé©\0\0\0\0À\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0û\r¼©
\r

½¼°¿¿½¾ÛÐ½¿ÛÚÛ\nÚÛùùðÚÛùÿéûùÌ\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0Ê\0\0\0\0\0\0\0\0\0\0\0\0\0\0úÉÚÐ°°¹ëÛúÛð½\r¼ð­Ð½­¿¿½¼¾Úß	û\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0ÉÉúð¾ÚÚùëþÛ
Ï­¿½¿
Ëûû	¯­¹Ú¹Ê½­½¼½°ðÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0à\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0¯­
í©ûËÛÉ°ùûÛþ\r½¿¼½­ Þ½ù¼»ÚÛËËËï
ð\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÚüÞ\r¼­¾
Ëùùÿ¾ùû
Úððû
Ëé­©ü¿½¿¼ü\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0© \0\0\0\0\0\0\0\0\0\0\0¬\0­¿ÊºÛðËýùïù¿\r­­½½½¼¿Ú½©éûÊ¿\0\0\0\0\0\0\0\0À\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ê½àÍ­í¿¯½ûùéïðð¹ëËëððùü½½©ûËÿÀ\0À\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\n\0À\0\0\0\0\0\0\0\0À\0\0¬Þû¼¿íùùËËÛùÿÞúÙËËûëÞ°½ðùéééà\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0À\0\0À\0\0À\0\nÀÀ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
ËÏÏ­í¾¿Ï¿ù¾¿­¼½©úùúùûÏß¿ßÚ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0
\0\0\0\0\0\0\0\0\0\0\0\0À¬¼¼½ûþÙé¼ùïËùÿ
ÊÚÛËÉé­¿©éúÿ¼¬\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0À\0À\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0¬\n\0\0À\0\0\0\0\0\0\0À\0\0\0\n\0\nÀ\n\r¬­\r¯ûÞé¿Ïðý½¯ü½¿ÚÚßÿ­°ùëÞðÀ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0à\0\0\0\0\0\0\0\0\0\0\n\0\0À\0\0ÀÚÛÐúùí
éü¿©úÐû
ýûËßÏúùé\0°\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0À\0À\0\0\0­\0\0À\0À\0\0\0\0\0\0\0\0\0¬¯\rÚðÿùûÚðûéëÞ½¯ß
Ï¼ú¼½í¬ À\0\0\0\0\0\0\0\0\0À\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0À\0\0\0\0\n\n\0\0\0À\0\0\0\0À\0\0ÀÀ\0 	Ëëùéï	ïýÏÚÛ¼ûðûÏûÚÚ\0\0\0\0\0\0\0\0\0\0\0À\0À\0\0À\0À\0À\0\0À\0\0\0\0À\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0À\0\0\0ÀÀ\n¬\0ÐéïÞÚ¼úÛàùí­ëÞü½\0\0\0\0\0\0\0À\0\0\0\0\0\0\0À\0\0\0\0\0\0À\0\0\0À\0\0\0\0\0\0	à\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÀÀ\0¬¾ù­éééûß­¾°ü¼°Ú\0¼ \nÚÀ\0\0\0\0\0\0\0À\0\0\0\0\0\0À\0\0\0\0\0\0\0ÀÀ\0À\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0à\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Þ½ÚÚÐÿ\rééí©ËÏ¬¼\0ÀÀ\0\0\0À\0\0À\0À\0\0À\0\0\0\0\0\0\0\0\0\0À\0\0\0À\0\0À\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÊÊÚ°¼úË­\0\0\n\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0À\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0à
Àýééì¼ÚÊÀ\0ÀÀ\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0À\0\0\0\0\0\0\0À\0\0\0\0À\0\0\0\0\0À\0\0\0\0\0\0\0À¬\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À­	à¬¼ Ú
°°\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¬\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0à	\0\0\0À­ëà\r\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\nÊ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Àà\0­\0ÐÚËàð \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0À\0À\0À\0À\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0¬\0À\0\0\0À\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0Ê\n\n\0 \0¬¬¼¼	\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0À\0\0\0\0\0\0À\0\0 \0\0\0ËÉ¯\nÀ\0\0\n\0 \0\0\0\0\0 \0\0\0\0\0\0\0\0\n\0\0\r\0ÀÀ  À\0\0\0¬\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0à\n\0À\0àÊ\0\nÀÐ¬\nÀ¬¬\n\n \0Ê à\n\0ÀÀ\0ËÊÀ\0¬\0À\0ÀÀ\0\0\0À\0À\0ÀÀ\0\0\0\0\0\0\0\0\0\0ÀÀÀ\0\0\0À\0\0\0\0\0   \0\r­­ ­
À­
	©
	 °\n\n 
\nÐ°\n\n	À é\r Ú\0ð°\0\0\0Ð	\0\0\0\0\nÀ	\n	 \nÀ\0\n\0\0\0\0\0\0\0\0À\0À\0À\0 \0À\0\0À\0\0ÀÉàÐàÐàÚÀÚ\nÏ\nÀ­\nÀÊÀàÊÉÊÐÉÊÐàÉ¬ðéÌà\r¬Ð­ Àþ\nÀ¬\r\nÐàÚÀüÀðÚÐðÚÐðð	à	à	à\0é\nÊ\0




	©­ ð¼°¼°ð¼°¼°¼°¼©¬°©Ë
\n© °
Ú
\nÚ


\0\0\0\0\0\0\0\0\0°­\n	 
\0¬ \0¬\n\0à\n\0à\0à\0à\0àÀà\0ÊÀ\0ÀÀ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0­þ','Tim Smit heeft de Zeevaartschool met goed gevolg doorlopen en volgt momenteel een avondcursus aan de UVA. Hij hoopt in juni 1994 zijn programmeursdiploma te behalen en gaat dan verder studeren aan de Hogere Technische School in Breda. Tim wil een carriÃ¨re als programmeur/analist bij een plaatselijk software-bedrijf.'),(12,'Paters','Caroline','Swertmolenstraat 5','Herent','3020','016 20 66 42','Receptioniste',2100,'10','14',0,'1993-05-15 00:00:00.000000','1972-09-11 00:00:00.000000','2',_binary '\'\0\0\0\0\0 \0\0 \0×
OLE2E3E12A3\0PBrush\0\0\0\0\0\0 \0\0\0PBrush\0\0\0\0\0\0\0\00 0 192 223\0 T\0\0BMT\0\0\0\0\0\0v\0\0\0(\0\0\0À\0\0\0ß\0\0\0\0\0\0\0\0\0 S\0\0Ä\0\0Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÀÀÀ\0\0\0ÿ\0\0ÿ\0\0\0ÿÿ\0ÿ\0\0\0ÿ\0ÿ\0ÿÿ\0\0ÿÿÿ\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿüÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÏÎÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÞÏÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿàÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÜÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿüÏÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿþàÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿüüÏÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿüþÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÏÏÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÎÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿý¹ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿýÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿû­ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿý½ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÙù	ûùÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿùÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿýÿÿßÿßýýÿß°¹¿¹ùÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿýÿÿÿÿÿÿÿÿü½ï°¼	°ù»	©­\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿßÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿßÿýÿÿÿÿÿßýÿÚÐð°°½	ÊÙ	Û\n\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÛ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿïßÿÿÿþÿÏÝ½	\r©\0\0\0Ë\0éÛù©Êÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¹½ý¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿþÿÿÿÿÞßßÿÿÿßý¼ðú\r\nÐ \0 \r

°©\0© \rÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÛûýÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÍ\rÿÿÿßÿÿÿÿÿÿþÛÏ	É\r\0\0\n	\0Ð\0ÀÐÊ¹¹¹\0Ù
\n\0É \rÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿùù½½¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿýü\0àÏÿÿÿÿÞßíÿÿßüðÚÐ\n Ð\0\0Ú\0			\r©\n° ËËÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿù¿¿ÛÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿüÀÜÿÿÿÿÿýÿýÿÿÛßÉ	
\0À \0\0é\0\0\0©	\0Ú©\n° ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÙùý¿ßÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿðàÿÿÿÿÿÿü¿ÿÞü°	 			À°\0Ê\0É\n¹¿
\0Ú\n\0\r
ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿý½¿¿ûý½ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿýþßÿÀ\0ÏüÿÿÿÿÿÿÐÍï°° À\0ÀÐ\0		ûÙ¬©Í\n\0	­ à\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûùù½ûÿÿÿÿÿÿÿÿÿÿÿÿÿýÿßÿßþüýìþßÿÿÿÿÿÿÿ°À°\0\0É\0°\0\0\0À\n	©Ùÿ»°à\0\0¼­ ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿùùûßûý½ÿÿÍÿÿÿÿÿÿÿßßÿÿÿÿÿßÿïÿßÿÿÿÿÿÿÿÿÿÉ	\0\0	\0Ð\0\0À\0\0\n\0	
\0ð½ð°Ù\0àÊ\0\0\0àýÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ½¿ÛûÿüàÍÿÿÿÿÿÿÿÿÿÿÿÿþÿÏßÞÿÿÿÿÿÿÿÿþÐÉ
©\0À\0\0		\0	\0¹ßûÉ°	  \0°Ú\n\0ßÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿý½ûÛùÿ¿ÛßÌÎÿÿÿÿÿÿÿÿÿÿÿüÀÀÿþÿÿÿÿÿÿÿÿþÀ°	\0 À	\0\0	À
°¿ûÝÊß	 ©\r°\n\0\n\0Ê	 
\rÿÿÿÿÿÿÿÿÿÿÿÿßßÿÿû½¿ùùý¿üÿÿÿÿÿÿÿÿÿÿð\0Ïýÿÿÿÿÿÿÿÿßï	\0		\0\0\0\n\0°
\0ÙÝûùÉ	\0\r \0 \0À©\0àºßÿÿÿÿÿÿÿÿÿÿûÿßÿ½½ÿÛÿ¿àìÀßÿÿý	ÿÿÿÿÿÿü¼ÿÿÿÿÿÿÿÿÿüü°	\nÐ\0	À\nÀ\0
\r\0	ÿÝ°°ù	\0		à©
©\0°
\0¼¿ÿÿÿÿÿÿÿÿÿÿýÿÿù	ù¹ÿûß¿ÐÀÿÿÿð°ÿÿÿÿÿÿÀÎÌÿÿÿÿÿÿÿÿþß\0\0\0Àà\0\0\0\0\nÚý¹É\0	©àÀ\0 À\n\0\nÀ°ËË	½ÿÿÿÿÿÿÿÿÿÛýÿ°¹¿ÿùÿ½ûßÿÿÿÿÿÙÿÿÿÿÿü\0Àÿÿÿÿÿÿÿýýþ	\r	\n\0\0Ð\0\0\0Ð\r\0	\0ÿß°\nÉ\0	 \0\n\0\n\n\0ÊÀ\nÊ\n


ßÿÿÿÿÿÿýýÝ	
Ù½½¿¹ÿùÿÿÿÿÿù	©­©ÿÿÿÿÿìÏÿÿÿÿÿÿÿÿÿÉ\r°\0\0\0 \0°		°¼ùÝ©	\0ð¬	¬\n	\0	À	\0©\0	©	©°ù¹½ÿÿÿÿÿ¿	°½¿ûßß¹ù¿ßÿÿÿÿÐ\rÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÏù	
\0\0\0\0ÛÀ			°\rÛËýÚ°\0\0¼\0\0©\0\0Ê\0©\nÀ¬½°é	ÿÿÿÿÿÙùÀ
	Û»ûß¿ù¿ÿÿÿù
Ú¹¹ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0		À\0É\0\0°			\rË\0	\n\0 °\0\0\0 \n©

¼\0¹©ÿÿÿÿÛ°éùÿßùûÛÛßÿÿÿÐ	Û
ÿÿßÞßÿÿÿÿÿÿÿÿüüÀ\0­	 \0À\0
É©
\0ùé¹à°	À\0¬ \0À\0°Ð\nÀ	\0\nÐ¬	­½¹ÿÿÿýðÐ\0É	ûÛ½¿½¿ÿßÿ	©Ð°
ÿÿÿÿÿÿÿÿÿÿÿÿÿù\0
\n\0\0		©Ð½©\0É\r	Ê\0\0 \0\nÀ\0\0\n°¯\0\n¹\r©ÿÿÿÿ©\0°ÛýûÛùûÛùÿÿù¹
©	ÿÿÿÿÿÿÿÿÿÿßÎ\0		\0\0		
\n\0	Ë		Û\0\0\0\0	\0\0\0 °\0\0\n\n\n¬\0Ë	
\nÿÿÿÚÀ\0À½¿½½½ÿÿ°ùÐ°Ùÿÿÿÿÿÿÿÿÿÿù\0É\n\0	\0¬\0	°		

\0°\0\0¬ \0\0¬\0\0\0\0 \r¯	 Û\0ð¬Ù\0ÿÿÿÉ©\0ÛùûÛûûÛÛÿð½©¹Ë©	

	ÿÿÿÿÿÿÿÿí\0\0°É\r \0	\0Ù	
Ú
À	 \n\0\0\n\r	\0Ê\0 	ª \0 °\0	© ½\0ßÿÿð\0À\0¹ûß½¿½½¹ù¹©				ÿÿÿÿÿÿÿß	É	\0\0Ð\0	\n		É		©
é	©°\0\0É\0\0	 \n\n\0\0¬é\0	Ë°Ú	\0ÿÿùé\0
\0	ù½¿¿Û¿ËÐ¹©	ÿÿÿýþü\0À\0\0\0\0Ð\0¹­	é\0\0	\0\0 À \0\0\0À\0	\0 \0Ê	
\0©©©\0\0ÿÿûÛÚÀ	ûùùùûý½¹¹°¹É
		©Ð¹©¹ÿÿÿÿß\0	\0°Ð \0\0©é¹É Ð©¼¼\0 ©\0\0	\n\0¼  à\n\n	 À  \n©\0ÿý½­	ÊÿÛÛÛùÛùûÛ¹¹			é©©	ÿÿý \r\0°\0À 	\r		¹©	\0	 É\0\0À\0\n	\0\0\0\0\0	¬
Ê\0©Ð©à	\0ÊÏÿý¹é	¹ý¿½¹ÿßßÛ¹¹©	
¹¹°­ÿÉ\n\0\0\0\0	\0\0°½\0Ð°°	À\n\0\0\0\0\0\0\0À\n\0¬°\n\n\0¬\n	\0½\nÙ­\n°\0\0ÿÿÛÛÉ\0Û¿¹ûùÿù½ùûýù¹		©\r
©\0\0\0\0			
		\0°
\0Ð\0Ð\0\0\0
\0	Ê\0\0ð­ \0°
ËËÝéÚ		À\0\0À ÿý­¹½½½¿ûÙùßù
		
¹¹	Û	\0\0\0\0\0\0	\0©\0ð
	©	­ \r©	\0\0Ê\0\n\0\0\n\0Ë\0 °\0ÊÀ\0Ê°½ß½©		À\0\0ÿù	éûÛÛÙÿ½ùÛÙ¹ù½½Û		Û\r\0	À°\0\0\0	\0¹À°\0	\0\0\0 \0\0\n À\n\0à\0 Ë\n\0
\0\r\r½ýùÐÐ	 à\0À\0\0ÿù	½¿ÿ¹ùù»Û½¹ù	
	¹	\0\0\0 \0\0\r\0	\0Ë	

	\0°ð\r\0\0à\0	\0\r\0ÐÀ é \0°Ê\0É 	\0\n	éÿËÛßù½©\0É\0\0	\0\0\0ï¹ùù½ûÙ¹¹ù½½¹ùÿ¾
¹\r¹¹©\0\0\0\0\0\0\0©	\n	é¹À\n \0
À\0\0\0\0\0\0	«Ê	 ° ­ àÙ½ÞßÉ	Ê\0\0\0\0\0ù¿¿Û¿Û½ùù½Ù¼¹		­À\0ÀàÀ\0\0\0Ð\0Ê		À\0\0À\r\nÀ\0\0\nÀ©\0À ®½\nÊ\0\n		íßùüùù\n\0À\0À\0\0\0\0	ùù½½ûùÛÛ½Û¹ùûù¹Ú\0\0\0\0\0\0	\0
\r\0\0	


\0\0 	\0\0\0\0\0\0\n\0\r	Ûð	\0\n\nÊÜ½Ûß	©\0\0\0\0\0\0\0À¿Ûû½ûÛùù¹ÛÛÚÐ\0\0\0\0	À\0\0\0\0\0©
\r
\0		ð
\0 \0\0\0\nÀ\0ÀÀ ªÛË\0   °°éûßÛßÙ\0\0\0\0\0\0\0\0ð\0	ùÛùùùûÛÛùùý½½»½¹¹¹¹¹©¹
\0\0\0ÀÀ\0\0\0	\0©ð\0¹\0\0\r	Ê\0\0\0\0\0\0\0\0\0	ÿù	À
\nÀ\0\rðýùý°Ð\0©À\0\0\0\0\0
ùûù¿¹ù½ùù½ùÙù		©	\0\0\0\0	\0	\0\0	\n\0À
À \0\0\0\0À\0\0À\0\0\0Ëù  \n©à©©ééß½½\0\0\0\0\0\0\0\0\0\0À
ßùÿÛùûß¹ù»ÛÛ»\r¹	ù©°\0\0	\0\0\0\0\0	\0¼		
	
		\0	\0\0\0\0\0\0\n\0 \nÀ\0½ÿÿ	Ê¬»Þ°ÿßÚÝ	\0ð\0\0\0	\0	½ûùù¿¹ûùû¹ùûÙ¹¹½»Û		¹	\0À\0\0À\0\0\0À\0\0\0	\0	Ê\n \0\0À\0\0\0À\0\0ðÏÿßÿÉà\0 ©½ßýÉ©\0À\0À\0\0\0\0\0\0\0ûÛÛÿÛß¹ù¹Û½¿¹Ù
\0À\0\0\0\0\0\0\0\0\0ð©	À¹	
		À\0\0\0\0\0\0\0 \0½ýÿß°	­\0ßýÿýýÐ\0	\0\0\0\0\0À\0ÿ½¿ù½¹ùùÛ½¹½¹¹½¹©¹			\0\0\0À\0\0\0	\0	\0
	\0°Ð\n\0\0\n\0\n\0\0\0\0\0\0\0\0ßÿÿÿÙ \0©­ûßýýùé\nÉ\0\0\0\0\0\0\0\0\0\0¹ûÛ¹û½¹½½¼¼¹¹©À\0\r\0\0\0	\0\0À\0\0\0Ð
\r	
\nÀ\0À\0\0\nÀ\0\0\0\0\0\0é	ýÿÿßð\r©ÛßýÿÿðÙßÙ\0\0\nÀ	\0\0\0\0ßû½»Û¹©	¹¹Û¹Û°\0\0\0\0\0\0À\0 \0é\0°\0	\nÊ\0\0\0\0\0À\0À ©\rÿßßýÿýßßÝÿ

	
\0 \0À\0\0\0\0	û¿»Ù½¹ùÛ¹½»¹ù½»½	¹
\0À\0À\0À\0À\0\0\0\0		°
\0Ë\0À\0\0\0\0\0 \0À\0ßÿÿÿý ¼©ÿßýÿ¿Ù¼°\0\0\0\0À\0\0\0ÿ½ùÛùù¹ùù¹¹¹Ù¹¹º½Ð\0\0\0\0\0\0\0	\0\0\nÐ	©©\0	\0\0\0\0\0\0\0\0\0\0\n\0ßÿßýÿÚýÿßßßÉëÀ\0\0\0\0\0À\0	ûÛ¿½¹½ù»ù	
	\0\0À\0\0\0\0\0\0\0	\0		\n			
\0\0\0\0\0\0\0À\0°\0­ÿÿÿßý© ýÿýýù\0 \0À\0\0\0\0\0¿ùùù½ù¹ù¹½°½¹°¼\0\0ÀÀ\0À\0\0	\0\0	Ð\0Ð\0À\n\0\0\0\0\0À\0à\0ýýÿÿßÚýÿýÿùðð¼\0\0	\0À\0\0ÿûÛÛù½¹¿ÙÙ½¹ùÛ¹ù»ÙÛÐ\0\0\0À\0\0À\0\0\0\0\0\0
	\0Àð\0\0\0\0\0\0\0\0\0\0ßÿýýð©é\nÿÿßýÿ
	 °\0\0\0\0\0\0\0ù½ù¹ûÛÛÙÙÙ¹¹¹ùù\0\0\0\0\0\0\0\0À\0\0\0\nÐ	 Ð
		\0À\0\0À À\0\0ßËß\nÚ\nßßÿßðÉ\0À\0à\0	\0\0ÿ½ù¹½¿½¹½½½½¹Ù¹¿¹»¿°ùéÉ°\0\0\0À\0\0À\0\0\0\0°		\n	º\nÚ°\0\0\0\0\0\0\0\n\0ðý¼°Ð	\r­ÿÿßÿÚ\r©©	\0\0\0À\0\0ÀÀ\0ùÛ¹ûÛÛ¹ù½½Ù¹¹¹Û\0\0\0\0\0À\0\0\0\0\0\0	\n\rÉ	\0Ð\r\0À\0\0\0À\0\0À\0\0\0\n\n\n\nÿýý½°¬\0\n\0\0Ê\0\0
ÿ¿Û¹»Û¹¹Ù	»ÛÛÛ½¹
\0\0\0\0\0\0\0\0\0	É\0 ©
À	\n \0\0
\0\0\0\0ÀéÉÚßßÿùðË
		\0É\0\0\r\0\0 ÿÙù½¹ù½¹				\0½¹Ù¹\0\0\0À\0\0\0\0Ð\0\0\0\n\nÚÚÐ­\r\r\r\0É\0\0 \0\0\0\0¬«\0\n\0 ©ÿÿßßý©ÊÊ\0\0\0\0	ÉÀý»ùù»Ù\0ðÿÿ	¹ÛùÛÛùù	\0\0\0\0\0\0\0\0\0\0		 	\n					\r			\0\0\0\0\0\0\0\0 	\0Ë	©ÀÐßÿÿËÚ	é\0À\0 \0 \0¿Ûÿÿûÿÿÿû¹û¹¹ð\0\0ÀÀ\0\0\0À\0À\0\r\0Ð©\r\0©\0À\0\0ðà Ê\n¬\n

	ýýùþÚÚË\0\0\n\0\0\0À\0ß½ù½¿ùÿÙÐùûùð	¹¹¹\0\0\0\0À\0\0\0\0\0\0À\0
\0	É		ÉÐ°ÉÀÐ\0  \0\0\0	\0\0\0Éà\0í¼¼¼\r\0ÀÉ\nÀ»Û¹¹	\0\0ð					\0		¹¹¹¹¹½¹\0\0\0\0\0\0\0\0Ð\0\0°¼¼	É\0\0\0\n	É\0\0À\0\0ðà\0À\n
À¬©©\0ÐÛÏ
\0	\0\0	\0ûýùûÛ	\0		¹
		É\0	
Ùùù»ÛÀ\0À\0\0\0À\0\0\0\0à\0\0\nÐ	©ÐÉ\0	\0Ð\0	\0àðÀ\0\0\nÐÐ° 	\0\0Ê\0àþðþÐ°\0À\0\n\0ÿÛù½¹Ù½Ù¹¹
»¹ù¹ù\0\0\0\0\0\0\0\0°©ùÐ\0Ð°\0À\nÀ\0À\0
	À\0 \nÉ\0 ¼°\0ËûËð\0 \0À\0	ûÿ½½»¹ÛÙ¹¹¹ÛÙ©¹¹½¹»Ð\0\0À\0\0\0\0\0 \0\0\0	\nÛ©\0\0\0\0	\0\nÐ\0\0\0\n\0\r©\nË\0\0 \0ÏÚà\0À\0ÿÙ¹»Ûÿ½½¹ùû¹½¹À\0\0\0\0\0\0\0\r\0
	\0 ù\rðÙË
\0\0Ð\0\0\0Ð\n\r \0\r\n©\0\0°ð\0¬þùé¹\0\0\0Ð\0\0ÀÛùûùùûÛß¿ù¿ù¹Û½¹¹»ùùù¹½ù»\0\0\0\0\0\0\0À\0	\0\0\0°\r ÛÉü\r©\n\0°\0	\0ÀÀ\n¹À°°\0	Ê\0	­¾ð
À\0\0À\0ï½½½¹¹¹ÛÛÿ¿ßÙÙ¹½ÛÛÙ»¹ÛÙù\0\0\0À\0\0\0\n	\r\0­ùééùÀ	à \r	\0\0\0àÊÀ\nÚ\n	\0\nÚß\0Û\0À	\0°\0ÿ¿ÛÛÛÛÛÛ¿¹ù¹¹¹¿¹¹¹ù¹\0\0\0\0\0\0À\0À\0	¬É	ÚÙÉýßßÏ\0À  à\0\0\0\n¼©
À\0Ð\0à
Ëùù	\0ÀÀ\0Àýùùý»ù¹ù¿¿ÿÛ¹¹ù¹¿¹¹¹ÛùÛÙ\0\0\0\0À\0\0\0	\0\0\0		\0ð­¿ß½­ýé	

\0
\0\0Ëà 

\0°\0 ­¯°à\0 \0\0ÿ¿Ù¹ý½¹¹ù°ÛÙÙ¹¹ÛÙù¹ù¹° \0À\0\0\0\0À\0É\r	\0			éÐ½Íý­Ú\0\0ÊÀ©\0\0ß©
\0À¼\0\0ÀùéÛ\0\0\0\r\0ûÛù½¹½½½»ÛÛÛ¹	¹¹¹Ù¹Ù¹ÛûÛÀ\0\0\0\0\0\0\0\0\0°à\0ÛßÛÀ\0\0 \0	\0\0\0\0 üúÀ© 
\r ÊÚÞ\0	À\0\0ýùûÛÛ¹Û¿¹
			Û¹¹¹ù¹¹ù½¹©\0\0\0À\0\0\0
À	\0\nÝ\rððý¹À	°\0\nËË\r©	à\0\0 ©­¿
	à\0\0\0\0\0ûÿ»¹ÛÛÛ¹	\0½¹Ûù¹¹ù¹Ð\0\0À\0\0\0\0\0\r À\0		Ê
ÞÙÀ\0\0¬\0\0\n	\0\0\0ÚÚ º°¼\0Ðþð\0	°	àý¹ûùÛÛ¹ù½½¹	¹ÛÙù	¹¹¹¹¹¹½Ù©\0À\0\0\0\0\0\0°	À°ÐÝéÛÏÙ\0à°\0 ¬	À\n¼° À\0\nÛË		\n\0\0\0\0ûß¹ù¹ù½¹¹¹\0	¹¹ù¹À\0\0\0\0\0\0À\0\0\n\0\0
Ë\n\nÝ\0\0\0 \0\0 Ë\0\nð¼°À¬¼© Ð	\0\0\0
ß¿½¹ù½¹¹ÛÙù¹¹¹½¹¹ù¹ù¹ù
\0\0\0\0	\0ÀÐ	\nÚ	¬ùù©É\0 \0°\0 \0	à¼\níÛÊ\n
	\0	\0
ÿÛÛßÛ½ùù½¹Ù¹¹½¹ÙÛÛù½\nÀ\0\0\0	À\0	\0\0Ù\n\0­¬	 ©\0	\n\n\0À	À\0\0\0\0	éà\0¾ÿù\n	à¼\0 	 ß½½¿¹¿Ù¿ÿÿÛù¹¹ù¹Û½¹¹ù½Û	É	à\0\0\0\0	 	\0	 é
\n\0	\0\0Ê\0Ê\né	Ë
	ú\rÿÿßýð

	¬	\0\0ûÿßÙý¿ù¹ÿùùùÙùùùù¹Û½½¹½ÛÛÛù¹\0\0\0\0à	©°ð	\0 Ê\0\0\0\0\0 \0\0\n\0\0\r\r 	ºßßÿßÿ	¬\0\0	\0ûûÿÛù½¹ÿÿÿ¿ÿß¹½¿ùù½Ù»Ù¹½½¹	¼\0\0\0ÉÀ\0		À\0ù °\n\0 \n\0 \0\0Ê©À	\r¬\0°\n	ÿÿßÿßðÉ °À\0	\0ÿÿÿÿùûÛûÿÿÛÛûÿùý¿¹¹¿¹ý¿»ÛÛ¹¹°\0 \0À\0\0		©	Ë\0\0ÚÐ\0É\0\0	©Àð\0	\n\0	É ßýÿÿßÿ\0º\r	\0\0\n\0ûÛÛÿÿ½Û½ûÿÿÿÿÿýùûÛý¹ùùùû¹¹Û½¹Û½	\0\0\0\0		­\0°Ùð°\0ýý\0 \0\0\0À\0àÐ©	
			°¼­½ÿÿßÿÝ¼¹\0°	ÿÿýûùûÿýÿ½ûùÿÿÿÿûÿ½½¹ûÙû½Ûùù½¹\0Ð\0\0À\0À\0\0\0
\0\0ðÿÿð\0\n\0©\n		©ÀÀ\n	\n\0 É
½ÿßßýÿÿ

Ê\0à\0\0ûÛûýÿûýûßùÿÿÿýûùÛÛùù¿ÛùûÛ»Ûùù©\0©É\0\0À\0\r\0©\0
ÛÛÊßÿýýÐ\0 \0À\0°
\r\n\r\r°ð
ýÿÿßýýÐ\n
ý¿ýûùÿ¿ûûùÿÿÿÿÿÿÛùù¹½»Ûùùù¿ùûÛù½¹À\r\0\0\0\0	\0À	\0\r­­°	ÿÿßßÿ\0\r\0\0\n	\0\0	\n
©ÿßÿýÿßÛ\0°ð\0\0\0ÀûßÛÿßûÿÿÿý¿ßÿûÿÿÿ½¿½¹½¿Û½½½½½¹½¿	\0	\0ÀÀùà¾ÿÿÿÿÿý\0 \0À\0		¬©\nÐÐé©\0\0ÿßÿÿÿý	°
ß¿¿ÛûýÿÛÛÿß¿ûÛÿÿÿÿÿù½¿»Û»Û¿ûùûù¹¬\0À°\0\0\0 \0°	¾ßýýÿÿÿþ\0\0À\n\0©	 \0	\0À\n	\0
ýÿßýÿÛ	 ð\0À ùýûÿý¿¿¿ý»ÿùûÿßÿÿÿÛßù¹ÛûÛ½ÛÛÙ¿Ùù¹ùûÙ		\0À\0\0\0\r\0	 ÛÛ
ýÿÿýÿÿý \0\0	©\0À\0ÀðÚ\0\0\0°ÿÿÿßýÙËÐ	\0	¿ûý½¿ýùÿ¿ý½ýûÿýÿûÿ¹ùÛù½½û½½¿¿û¿»ß¹\0\0À\0Ë\0\r\0­¬¬ÿÿÿÿÿÿÐÀ\0\0\0àÊ©\0\0\n\0 \n	©	\rýýýýý¹à©\0 ©ß½ûÿùû¿ùûÛûûÛ½ûÿ¿ýù½½¹¿ÛÛÛ¹ùùùý¹½¿à\0\0\0	\0\0\0\0Û	ýÿßýý°\0À\r	 \0é \0É\0\0°\0\n¿ÿÿÐÞ\0À\0½ÿÿÛÿßûßûý½¿Ûýÿÿÿ¿Ûù¹ùù¹¿û¹ÿÛÛ°é\0Ð\0À\0\0\0
\r¼\n\0ýÿÿÿÿÿÐ\0\0\0ÚÚ \0À	\0\r\0àË\n°°ýÿûÊ°°\0ð\0°ûûÛý¿û¿¿¿Ù»ÛÛ½¿ÿÿÿùù½Û»Û¹½¹û¿½¹ù	\0\0\0À\0ÉÀ
	\0\0Ú
Ïÿÿÿÿþ\0\0	ÉàË\n\0¬\0©\0°	Ê\n¯ßý¼¯ËÐ\0À¿ßÿûý¿ÙÿßÛ½ûý¿ÿÛß½Ù½¿¹¹ûÛÛ¹ùý¹½¹°\0\0\0\0\0À	­\nÀ	À¯ßýÿýé\0\nÀ¬©	 ÉÀ	\0¯©¬©\nÊ		¬½ÿÚÊ°¹\0àÀ	¯ßûýß½ûÛÿÿ¿Ûýÿ¿û¹¹ß¹¿Ûß»\0\0\0\0À\0\0	\0\nÿÿý\nÀ\nÐÊ\0°º\0\0\0Ú\0Ð°àû
Ëà°\0 \0ÛûÿûÿÛ½½¹û¿½¿ÿý½¹Ù¹¹¹¹ùùÿ¹ù¹¹ùùùÐÉ\0\0À\0	à\0	\0°\0¬ËÀðà°	\0\né©éÊÀ\0\0 \n\nÀ \n\nÊ	ùß\0°½\0	À\0­ýûùù¹½ýûù¿¹ù¹ûÿûûÛÚ¿ðûù¹¹½¿Ù\0\0	\0à\0ÚÐ½\0	\0\0é\r \0Ê\0\r©ªð  \0À\0\0\0	\0\0	É\0	°«û\n°	\0¿½¿ÿßùûû½½½ÿýý¹¹¹¹°¹¹¹½¹¹	\0À\0\0\0\0\0\0
À\0À\0 \0à	Ê©Ê\n\n¼\0	\nÉà\0É\0 à¼©ºé	é\0\0©\0¿ÛÛß¿½ù¿¹»ð¿ÿ¿ù¹¹
°¹¹°¹	Ûù½\0À\0\0À\nÉ\0\n	Ê\0\0\0  Ðé éà
	\0\0\0\0\0\0\0\n\0¬	\0\0\0¹é
À\0\0¿ùù¹ßÛû¹¹Ûùù¿	¹	¹¹ÙÛ				¹û	Ð\0\0\0\0\0\0\0¬\n\0\n\0ÀÊ	\nÀ\nÀÉÀ©ÐÊ\0À\0\0\0\0\0	 °©©Ë\n¼°°­	\0\0	ûù¿\0¹ù¹¹¿ù¹½	¹¹Ú\0\0\0É \0
\0\0\0À\0\0¬\0\0\0
\n\0Ê\0\0°à°°\0\0\0À\0À\0\0\r\0\0©­©
	\0\0¯½		Ë		ßÿ½	\0­	
	\0\0	
ù¹\0À\0\0\0\r\n\0\0\0\0
\0  À° \0ËËÊÉ\0\0	\0	\0©		 
	 ¼\n\0¬	\0\0	ù¹\0\0É\0\0À
©	¿¿ùù¹	\0	ù\0\0É\0	ËÀ\0\0\0\0\0			\0\0À\0 éÀ\n\0\n	ú\0\r\0à\n\0\0À¬	 
Ê¬
\0 \0\0½¹	\0\0Ð\0\0\0\0	ùûù¹	\0\0\0\0\0\0\0		°
	 \0\0\0\r\0\0¼\0©\0\0\0\0\0Ú\n ­© ©\r­é é°\0\0\0	\0À\0\0¼©\n
\0°©
\0\r©\0\0\0		\0\0\0\0\0	\0¹ûÛ	\r	\0À\0\0	©	°\0\0\n\0À		Ê\n\0\0\0 ðé\n°ÊÊÛßßÚ\0\r\0À	©\0ÿÚ­\0Ë
	 ð\0\0Àà\0	\0\r\0\0	ûÛ	©\0\0\0Ú\0É\n		À\0\0\0\0À	À	\n\0ð \n®é \n°¼¼ÿýý¹é\0\0 \0\0\0\0ïýýÿÚ\0°° \n	\0À\0	\0\0\0	\0	½¹\0				\0É\0\0		\0\0ÐÐ
\0\0À\0\0\0	©\nÊÀ\0À\n\n\nÊúËéýÿßßýù\0©\0		\rÿÿýùð
Ë©\n\n	\0\0\0\0\0ù\0À\0		
	©	°¹Û»Ù¹	©\0	°\n\0\0\0\0\0ð\0\0\0\0À\0É\0É\0\0\0\0\n\n ¬\0\0ªßýÿßý\0 Ê\0\0\0©ÿßÿý©à\0\0\r	¬°Ð\0\0\0\0	É		¹¹Û			¹\0°	\0\0\0\0\0		À\0À\0\0\0\0¼
\0à à\0
Ê\n	\nýÿßýÿ\0\0\0\0	\0\rÿÿßÿÐ	­ ð¼		\0\0À	\0\0\0\0	\0	

	¹¼À	Ê\0	\0\0\0À\0\0Û\0\0\0\0\0\0À	\0Ú\n\0\0 \n\0\0ÀÊ	\rßýÿÿ\0\0	\0À¬\0ÿýÿÿý«\0	\nÐ\0\0\0	\0\0©\0\rÛÛù½¹¹					\nÉ	À\0\0Ð	
\0\0À\0é\0\0\0\nÉ\0À \0ÊÊ\0\0\n\0ßýý\r 
\0\0\0\rÿÿÿÿÐ		 ý¯\r© À\0\0©ù\0	\0À\0	\0Û¹¹ÛÛ°\0\0\0\0	\0\0\0\0Ê\0\0\0		\0\0\0\0\0\0°ÚÀ\0 °¬ °©\0\0\0\n\0\rÝÿÿÿ\0\0\0\0É¬
	ýÿÿßéà®½°ÐÐ\nÀ	½°\0\0			©\rûÙûÛ¹Û¿¹©É\0\0\0\0\0	\0	\0\0À	\r\0é­­¬À\n	ÀÊÊàÐ\0\0ª¼ýÿÿ\0\0\0\0\0\0\0ßýýð
	
ËÿÉ©\0 À\0¹	\0\0\0»½½¿¿ùû¹ÿ\r	\0À	\0À\0À\0ù\0\0\0\0\0\0©\0Éÿ
\0à©© 	 À\0°ÉÊßÿÿ\0\0\0\0\0\0\0\0\nßËËà\0¿ÛÝÐ\0É\0ÿ\0	\0¹ÛÛùù½¹¿¹ùùý¹¹ù\0\0\0À\0\0\0\0	©\0\0\0	\0à\0é­¼ÿýðàÊ©à\0 \n¾ºßßÿ	\0\0\0\0ÉËÐ	\n

Éýÿ½«\0\0\0
	ùÿ°\0	¹ù½¿ÛÛÛÛÛÐ	À\0\0À\0	\0\0\0\0\r\0É\0Ûýÿÿùé­\0\0 \0\0¬\0°à\r ýÿ\0¬\0\n\0\0\0À\n\n\n	àÚÿÝ\r\0À¹¹ù\0			Ûû¿½¿½»ÛÙ½¹
\0\0\0\0\n\0À	\0\0\0À\0©\0ßýÿÿýþÿúÿÛÀ­\n\r Ë¯ Ú\0\0\0\0\0\0 \0\0À\r	à
	ïßÿý¿\0\n\0
¹	¹ù½¿Ûÿßý½»ù©	\0\n\0\0À	°\0\0\0\0\0Àéÿÿýÿÿ½ÿýýýý©\0 À\0\0 À\0ð	\r\0\0\0\0\0\0 \0\0\n	°ÚÛßßÙ\0À©ÉÛÙ¹		©Ûý½¿ùÿùÿû½É\0	\0\n\0¹	\0\0	\0À
		ÿÿÿÿÿßÿÿÿÿÿðÊÉ© ¬\nÚ\0\0 \0À\0\0\0À\0\0À\0\n\0É\nÊ	­ÿÿ¼°\0\0¹¹Û°ûý¿ù¿¹ýùÛ»\0\0\0À\nÀ	\0Ð	 À\0\0\0\0ðÿßÿÿßýÿÿÿÿÿÞ\r\0 ð¬\0àÀ\0\0\0\nÀ\0\0À\nÀ\0\0 °¼ßßýù\0\0\0\0\n¿ù		\0¹ùý¿ùÿßÿ¿¿½¹	À	\0\0\0\0Ð	ÉÉ	\0\0\0À¬	\0	ÿÿÿßÿÿÿÿÿÿÿûÊ\0  ÊÐ\0\0\0\0à\0\0\n\0\n\0\0\0Ê\r©­
ïÛÛÐ	À\0	É\0½¿¿ý¿ûûÛÛÛÛ¹		\0\n\0ÀÚ\0©©\n\n 	
\rýýÿÿÿÿÿÿÿÿÿýéÀ
éà\n\0 \0À	\0\0À\0\0\0\0°		­½ý\0°\0 É°½¹°		¹ù½½¿ý½ý¿¿½¹Ù¹	\n\0ÀÉ\0\0\0	°\0\0É\0 À­

Ëïßÿýÿÿÿÿÿßÿý ê¼¼\n\0	ÀÐÀ\0\0\0 \0\0\0\nÉ \0à Ú\nÛ\0ÀÛùù	°Ûÿùûû¿ùùùù¹ 	\0\0	É	É		\0ÐÀ\0À\0À	\r¼°ÿÿÿÿÿÿÿÿÿÿßÐ\r

	Ê\n	­\0\0\0Ê\0\0\0\0\0\0°	é©©\r¯		\0\0\0Ù¹¹û°©\0½¿ýý½¿		\0\0\0°\0\n\n	\0	\0		\0\0À\nÐ
°­­ÿÿßÿÿÿÿÿÿÿ­ ¼¬  \0Ðà\n \0ÀÀ°
\0\r \0\0¬ 	é\0Ð
	ù			
¹ý¿¿ûùûÛ¹¹\0\0É\0	À\0¹\0©\0\r \0\0É\0¼\nßûðüúßÿÿÿÿÿÿÚ\0À\r\0©\nð\0\0 \n\0	°\0À\0			
Ë

\r\nÀ\0Ð°
\0°	Ûûûß½¹Ù©\0°	À\0À\0	É¬©\0	À°
ÿü\0\rÿßÿÿÿß\0À\n\nÊ\0éÀ¬\0\0É\0\0\0\0°\0 	Ê	ù°\0\0\0Ð¹	\r°½¿ß¿ûùùû¹		\0\0Ê		 Ú\0		°\0\0°\0ýÿ\0À ýÿÿßÿé\0°	ÀÉË\0¼°\0\0\0¬Ê\0àà©\n
	Û\0\0Ð¹¹\0Ùû½ùýûÛ\0\0\0\0À¬		\0 \0	é
\r
­ÿÛÀ\n\0Ð\0ÿÿÿÿýÊ\0à\nÀª¬\nË\0\0\0\0 \0\0\n	\0\0\0­ ½\0	½¹	é 			¿Ûÿ¿½¹û	­\0°\0Ê	É\0¼\0\r\0ÐÚ\nÚùí©\nßýÿÛ	\0\n	 
À
¼\0\0àà  ¼\n\0\0\0à	¬
Ë\r	à\0	½¹°	\0°¹ù¿¿ß°\0\0\0\0\0\r©	\n
É\0	©©	©ÞùÀ© 	Àüÿ¼°à\n\0Éà\0à
\nÀ\0\0\0	\0° \n\0É¬¹°\0
À\0©			é	\0ÛÛý¿À°¼
É	Ë\0\0\0	\0©À\0Ë
ÉÛÐðý­½ÿ
Ê

	éÚÀ\0	© \0é ðÞ	\0\0\n\n\n©\0	\n\n\r
	\nÛ\0À	\0\r°½¿ùù¹			\0\0	\0\0à\r Ð¼\0
\0ÀÐ\0°½ðüß

\0 \n	©é \nÚ	\0 ½ À° 	\n\0\0¬¬ \n	É\n\0Ú
\0\0\0
Ë\r		
ùûÛý½¹	\0É ¼àÐ	\0\0¬	
	
ùË\0ÿ	ûðü¬\n\n\n¬\0Éé©© à	¬ðÊ\0\0 \0\n\n\0\0¼	\0°Ú\n\0© 	\0Ë\r\0¹	
\0ð¹ûÛ	\nÉ\0\0\0\nÀ©
\n©	¬ËÚ\0ÞïÏ\0°­	\0\0°ð\n
\r©éÊ\n\r\0	 ð\0 °°\0 \0À°©°\0\0\0¹ù\r	\0Ð¹ÿ½¹é\nÉ	­\0¼	
É	\0\0	ÀÀ	

	
½\0¹ËÏ©­\r\0¬¼¼\0\n©éë©°¬©ª\0 	 °\0Ð\n	©

\nÙ\0©©©		\0		\0°\0°°ÉÛ½ùù	\0Ð\0¼\0\0\0Ð½	\0¹\0\0«Ë
¼\n\n\n\n \0°ð°

ÊÚ­	©	 Ð\0\0ð °°Ú \0\0 ù	 \0°É	É	ÛÛ	À°©  	\0\0\0\nÉ
\0ð\0¹ù	ÚÞ\0­\0Ê\nÐéÊ\0
©© °¼¬«¹ªÚ\0\0 	 	\0 \n\0­	©	Ë\n©©

É
\0°	°	½¹ûÛ	\r\r\r	ÀÀ\0\n°Ð\0É	
\r ð¼
\r¯ðÚÊ\0à°é®°¬Ú¯
\nß\n\n

éé	É 
\0 © °\0\n\0Àú°	
	¼	©\r
	¹ý½¹É\0°
\0\0¹­\0\0	À \0Ð\n¼	\0°°ðúßý\n	À©«
ëßÿýýÿû»« \0\0		\0\n\0­ýýÙÉ\n		ë	
É\r©
				¹ÐððÙ¹¹ÚÙ\0ùÉ\r	¼\0\0Éà			\0	½¹\0\nËÙ
Ëßýÿëß«\núÉ¬ûºÿÿÿÿÿýý¼º	 
	à	¬\0Ýÿß½ \0\n°°			¬	é
É©é\r		Ûß¹°\0© °É\n\0 	°ð©é	ù	°Ú­ÿÿýéßùééà	ª¹»­ÿÿÿÿÿÿº»¼\n­°°	 © ­ÿýÿÝ\0Ú	Ê°Ðù°°¹©¹½¹	Ð¼©ÐÐÐ	\r\nÀ\n\0ûÉ½¬	©éßÿÿßÿ°°­ \nÉ°ÿÿÿÿÿÿÿËÊÉÙ	 \n	\0É\rýÿýÛ\0	 ©	ùÉË		°¹	©Û\r©	É\r¹½¹©\0

\r
	\0Ð\n°¬\n\r­¯ÿÿÿÏðÚÏàË	 °°½ÿÿÿÿÿÿð¹	 ù©ð
\r\n\n\nßÿýÀ\0\0\n

Ë\r	é
Ù	©ÉÀ°é¹ùÐ½
ÀÐ°\0\0Ð©\0\rù\r	\r\n½\0°¹º½ýÿÿÿ¹ùû
\0àÉ\nßÿßÿÿÿÞ\n\0\nÉ	 ¼°°ÀÀÞýýð°\n ¹ ¹°°\rð¹©\0
Éà\0ðÉÀ\0Ð\0\0\0\n
Ë½	þûÏÿÿÿÿÛÚðð¯ ºË\n\rÿÿÿÿÿÿýé\r
	\0é¼Ð 
	ßß\r\0\0\n	\né\r©	\0½
			©½Ùéé À\0	É\0	©	©é ð¼¹Ð½	ßÿÿÿÿÿý½úð
ê­	Ëßÿßÿÿÿß°\n¬\0°
\0¹é©à©Ë\0¬­­\0À\0 \0\r °°éð
ððÐ¬Ð¹ 		É	\0\0ÚÙ	Ð\0\0\0­© ðÿúßÿÿÿÿÿÿúªð¿ýÿÿÿÿÿÿÐ° Ê
É©Ë
Ð\n\0°	\0\0\0\0©\0\r
É­\0°\r©		­	é©éù\r©¼¼\0Ú
É ¹©ð\0É½ ÛÛ¿ÿÛ\nýÿÿÿÿÿß©í¯é­\rÿÿÿÿÿÿÿÿ\r	\0Ð°

\0Úð é­ \0©À\0\0à\r©Û\r\0©ÚÛ\0ÐÀ	©\0\0\0Ð¹ÉÐ	©°		©Ë©É
ýý°¼ÿÿÿýÿþúûÛÛÿÿÿÿÿÿð	ª\n
©\nÐÚ
\0°À\0à\0\0àÚÚ¹ï¹\r\0ÚÐ©Ë\r
Ë	Ð­ À\r¼°
Ð»

É\0ðÐ°Ù°¿ßï\0 ýÿÿÿÿÿÏÝýùýÿýÿÿÿÿýðúí\0Ð°ÚÉ\0¹½©àùùé   °À\0\0\0à©\0 ½ûù°	©Ú½©é	é­­ ÐÊÀ°		éÉ©ÐÉððé
Ûßÿ°úËÿÿýÿýÿÿÿÿßÿÿÿÿÿ\rÿ° 
\0©ù½ýý\r\0

\0à\0	ÀÊû¿°É
Ë\r	ÀÚÙé\n\r
É
Ú
\0ð«	ÿü«Ê¬ ýÿÿýÿßÝ¬¬ýýÿßýýÿÿÿÿÛÉ¯ß\0ð
À\0Ú úßÿð
\n\0É\0Ê\0\n
	àðùÿ\r\nÛ	Ú		\nÉ\0­
	\r
Ë¹Ð
	¯¯¹©ÿ
°à«þßÿýÿ
ÛßÿýûËÿßßÿù¬\nßÿ
Ê	 © º½ÿý	 °ð\n\0 \0\0¬\0	\0û	\0é­©Ðð­­éÙ­\r©­°Û©ðÛ°þÚ½©¯	½ÿÿýßßß ÿßºÿßð½ÿÿ ºÛ
\0° Ëýûð \n\0À\0é¬¼	°¹éý¼	éÐ°		\0 	©Ù­\0Ù«Ë\r­©¹ú­©°°¬«Û\0¯Ëßßßÿÿù¯ÿúýÿü¼°ßÿù©

\r°	
\0ùí½­\nÚ\n\0©À\0\n\0\n\0 \r	°ûÉ\0¹é©Ë
ËðùÉéÀ¿¿\0»¼¿	°¹¹­«ÚûË
Ê¿¼½¿ÿýÿÿÿÙýÿ¯¹ëÚ°­©
ÿÿ©Ëú  \0\0©À\0Ð\r\0 \0À\0Ê	à­­\n\0°ðÐ	\0°»ùÐ\0¹\r	°¹ºú¼»\nÊÚ
ÚÝýÿÿÿÿÿÿùÿï»\nÚ°ýÿÛ	à¹Ïù\n	À°©\0\0°\0 °  \0\0Ê\0 
\0À\0\rý°\0

Û\r	ùËË\r¯\r\r©ùù©¼°¼¹°
Ûí©Ê½®þºð	ûÿÿÿÿÿÿýÿýù\n¼ßú°
\0°ÿÿù\n	\n\nÛù\0\0Ú\nË\0 \0	­»Ï\0¹	À\0ÿ­°ð\n	\r©
¹©°ð¹½¼ºú¹º\0ªÿß\n\nÚýÿÿÿÿÿýûÏûÚ\n\nË
 ¿Û
 °ß\0 °É\0Éíð °\0Ð\0\0 \r  \0¬\0Ð°é°ð\n
	ùúÐÙ­
ÚùàÐ¹àÛð¹»Ú«ë¯­ßÿ¹ °ßÿÿÿÿÿÿ°ðù °ù¯¼­ÿù À\0ýÿù©Ë\n° °Ûí
	À©  \n\n\0¼¹Ï	ý©­
ËÙ\nÐù­­ùù»Ð«Ë	©
ùÿ«ë»Ë\n¯ÿû\nÚ
¯¿ÿÿÿÿÿ¼¹¯\n
 ßú\r \0àÿ\0 
\0	¿Û°À °\0\nÐ¼\n\r\0¹°¼ù¿°°Ð¼°ðù	½ÛÛ
\r©ð¼°º½½¿°°¼¿¼®°
ßÿÿ
\nÏÿÿÿÿýé¬©©°°
Ê°ÿýé\n
	\0àÊ\n
ë
¬°ÐðÉ \0 \0
	 \n¬\r\nÐÛÛ
ÉËÜù©	Ù
ûË\r½­¼Ú	¼°úà «°º\0°­ÿÚÊ¼©©¿ßÿÿÿË »\0°©Êð½ÿ°Àà\0		\0\nºº°\n
\0©
\0Ê
	©¬½½ºÐ¹	Àð¯
Ð½¼	\0

û	»ÉÛùû	©­¯\n®Ê
ù\0
\nÚýÿÿÿðÚÊÚé °ÿºßßù\0\0\0Ê\nÊ\n	ª

\n\0\0Àà\0©	ª­­\nÛ\r¿Ú	Ðù
Ê\0
ý½	É
Ð¿°ð¹\n
«
­	 ©àð\n
êÉ©½¯ÿÿÿ\n		©\néé\nÿÿý°Ð°	\0\0\n\0º\n\n


\0ð¬\0	Ú	©ð©ËËÛéË
Ú
Ûÿ½½­©°ù©¼»ÐÛú© ­°¼»Êú¬°
	éàÚ¼¿ÿÛÉ\nî¼­­ï¾ðýÿßù\0 	\n\n
\0ð©é 	\0\0Àú\0	­ ð©éùË	ûÐ¹½½ë½ù­¼¿ÛËÐÐ½­©½¯	\0\nË
¬»Ë\0  º\n©é 
­« ªð	Êß\n
ÿÿÿß©é\r©¬\0­\0 \0À\n\n\0©	à \0
É\n
	é	©Ê­½¿ËÝ©Ûß½°ü°°¿»Ùé½
ÛË¬° °°ð»Ê°  ðÚËËé\nº
Àð\0\n¯ÿÿùðàÿÿÿÿ\0©¼ \0 É °À\0	\0é
\n¼°ùÐùðà\r½ºÛÛß\r¿ù¹ùÿÐ\r©Ú½½½½®	 «
ÊË
\0\0 ¼°\nð¹¬© «\n	à¯ýÿý¾ßÿÿÿ°Ð© \n\0	 \0\0à\0 à\n\nà

	
\0«­	é¼»Ûûý¾ûËû­ûÞÛÉ
Û½¿ÚÛ\0°ª½°¹ð°¬©\nà ð
\0Àü\n	ýÿý¿ÿÿÿÿ		 ÐËÀ\0à	­	\0°À
É\0	Ë
À \0

\r­«¾ûÝ½¿ßÛýù¹­¿¿½ééý½¼°\0\n«Ë\r°ºÛë

	\nÀÊ\nÐ\n\0°°à¯« é ¾ÿÿÿù©àðÿÿÿß°à
\0°\0©	¬\0 \0\0©\0\n	à\r °	­	© ¹°ÐÐÐ°Ð»Û»¿ÛÛÿü¿ÿßÛ\rÛ°ÐÐ°°¯°üª	©\0\r¯ùà\n	¬¼ü° ú	ÿïÿËÀßÿÿð\r	ÉÚ© 	©\r¬\0 ­\n	 ¼¬\0 \r©©©©Ë

Ë«éýÿÿÿÛÛÛÚû½ûëüý¿©½
é©©©ËÉùëéé­«Éà\0­\nßß 
ßûÊÚ¾ß°
à½ÿý° \0  à 	\0	à\0	 \0\0ÙÉ°\0 \r °Ð°ðù»»ýÿ¼¹àÿÏ¿ÛÛºÚ\nº°»»û\rª
\0­ÿÿð	­ÿý© é¬üþ\0°	ßßÚ\rÐ\n\0
\0		
\0°\n\nÉé\r\n­
Éé©É½¿¯­ÿýé
Ï	é¹ÉùéÉ©ë½­­¾­¼¾\r\r ÿÿÛé ÿÿÿ\nÞÚÚ	\rºÿÿý\0\0¬
\nÊ

\0Ë \0\0	ª \0\0°Û	«»¹ ßÐð°ºº	©é¹
é	  ¬­ÿÿù\nßÿýð\0À¬à\0 \rýÿ©à¼À\0\0\0\0°¹©é©é¬©­­\r­Ú¼¼½­©éùûËÉéé­©éË
ÉééééËËËÉééûËËÚÙéðËÚÛË¬ÿÿÚùùÿßÿ
Ë
\n	é
\nÿý\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0 \0\0°°°°°°°°É¹		¹­­ 		¬ÿÿÿÿÿÿÿÿ\0\0ÀÀÀ¼½­ý¼ýð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ë­þ','Caroline is afgestudeerd aan dHet Sint-Jozefsinstituut te Kessel-lo en heeft een avondcursus gevolgd  Ze is van plan verder te studeren en hoopt later een diploma Marketing te behalen.'),(13,'Verbrugge','Justin','Leeuwerikenlaan 53','Brussel','1150','02 672 55 44','Manager Marketing',2875,'10','37',1,'1994-01-01 00:00:00.000000','1962-10-08 00:00:00.000000','1',_binary '\'\0\0\0\0\0 \0\0 \0×
OLE2D10D0D9\0PBrush\0\0\0\0\0\0 \0\0\0PBrush\0\0\0\0\0\0\0\00 0 192 223\0 T\0\0BMT\0\0\0\0\0\0v\0\0\0(\0\0\0À\0\0\0ß\0\0\0\0\0\0\0\0\0 S\0\0Ä\0\0Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÀÀÀ\0\0\0ÿ\0\0ÿ\0\0\0ÿÿ\0ÿ\0\0\0ÿ\0ÿ\0ÿÿ\0\0ÿÿÿ\0\0\0\0\0À\0À\0\0\0\0\0\0\0\0\0ÀÀÀ\0\0À\0\0\0\0À\0\0À\0\0À\0\0\0ÀÀÀÀÀÀ\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0ÀÀÀÀÀ\0À\0À\0\0\0À\0\0À\0À\0À\0\0\0\0\0À\0\0ÀÀ\0\0À\0\0\0ÀÀ\0ÀÀ\0ÀÀÌ\0Ì\0À\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0ÀÀ\0\0À\0À\0À\0ÀÀÀ\0\0\0\0À\0\0\0\0\0\0À\0\0\0À\0À\0À\0À\0\0À\0\0\0À\0\0\0\0\0\0À\0ÀÀ\0ÀÀÀÀ\0À\0\0\0\0ÀÀÀ\0\0\0\0À\0\0\0À\0À\0\0À\0À\0À\0\0\0\0\0\0\0\0À\0\0\0\0\0ÀÀ\0À\0ÀÀÀ\0Ì\0\0\0\0ÀÀ\0\0À\0\0À\0\0\0\0\0\0\0\0\0ÀÀ\0\0\0ÀÀ\0\0\0ÀÀ\0À\0\0\0\0À\0\0\0\0\0À\0À\0\0\0À\0À\0\0À\0ÀÀ\0ÀÀÀÀ\0À\0\0\0\0\0\0\0\0À\0\0\0ÀÀÀ\0ÀÀ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0ÀÀ\0\0À\0Ì\0\0\0À\0\0\0ÀÌ\0\0Ì\0\0\0\0\0\0\0À\0\0\0\0\0À\0\0À\0\0\0À\0À\0À\0ÀÀÀ\0\0\0À\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0À\0\0\0ÀÀ\0\0\0\0À\0\0\0\0À\0Ì\0\0ÀÀ\0À\0\0\0À\0ÀÀ\0Ì\0ÀÀÌ\0\0\0\0À\0\0\0\0\0À\0\0\0ÀÀ\0\0\0\0\0\0\0À\0\0À\0\0\0\0\0\0\0\0\0À\0\0\0ÀÀÀ\0\0\0\0\0\0\0\0\0\0\0ÀÀÀ\0À\0\0\0À\0\0\0\0\0\0\0\0\0\0\0À\0\0\0À\0À\0\0\0\0\0À\0\0\0\0\0\0\0\0À\0ÀÀ\0ÀÀÀ\0\0\0\0\0À\0\0\0\0\0\0\0ÀÀ\0\0\0\0\0À\0À\0\0À\0À\0\0\0\0ÀÀÀÀ\0À\0\0\0À\0\0À\0\0\0ÀÀÀÀÀ\0\0\0\0\0\0À\0\0À\0\0ÀÀ\0\0\0\0\0ÀÀÀ\0\0\0ÀÀ\0\0ÀÀÀÀÀ\0À\0À\0ÀÀ\0À\0À\0\0ÀÀÀ\0\0\0\0\0\0À\0ÀÌ\0ÀÀ\0À\0ÀÀ\0\0\0\0\0ÀÀÀÀ\0\0À\0À\0\0À\0\0\0\0ÀÀÀÀÀ\0\0\0\0\0À\0\0\0À\0À\0\0\0\0À\0\0\0\0À\0\0À\0À\0À\0ÀÀÀÀ\0À\0À\0ÀÀÀ\0\0À\0\0\0\0À\0\0\0\0À\0À\0\0\0\0\0À\0\0ÀÌ\0À\0\0\0\0\0À\0À\0\0\0\0\0\0À\0À\0\0À\0ÀÀÀÌ\0ÀÀ\0\0\0À\0À\0À\0\0\0\0À\0À\0\0\0\0\0\0\0À\0ÀÀÀÀ\0ÀÀ\0ÀÀ\0À\0\0À\0À\0\0\0À\0\0\0\0ÀÀ\0ÀÌ\0À\0\0\0\0ÀÀÀ\0\0À\0\0ÀÀ\0\0À\0\0\0À\0À\0\0\0\0ÀÀÀ\0\0À\0\0ÀÀ\0\0ÀÀ\0\0\0\0\0\0À\0\0À\0\0\0ÀÀ\0À\0\0\0\0À\0ÀÀÀ\0\0\0À\0À\0\0À\0\0\0\0\0\0\0ÀÀÀ\0\0\0ÀÀ\0\0À\0À\0À\0ÀÌ\0ÀÀ\0À\0À\0\0\0\0À\0\0\0À\0\0À\0À\0\0\0\0À\0À\0\0\0\0À\0\0\0\0\0À\0À\0À\0\0\0ÀÀÀ\0\0\0\0\0ÀÌ\0\0À\0À\0ÀÀ\0\0\0\0À\0\0\0ÀÀÀ\0\0À\0\0À\0\0À\0\0\0ÀÀ\0À\0ÀÀÀ\0\0\0\0\0\0À\0\0\0\0\0À\0\0À\0À\0\0À\0\0\0\0\0\0\0Ì\0À\0\0\0\0ÀÀÀ\0À\0\0À\0À\0\0\0À\0À\0À\0À\0À\0\0\0\0À\0À\0\0\0ÀÀ\0ÀÀÀÀÀ\0À\0\0\0\0\0À\0\0\0À\0À\0\0À\0\0\0À\0\0\0\0À\0ÀÀ\0À\0À\0ÀÀÀ\0\0\0Ì\0\0\0\0\0\0À\0\0À\0\0À\0\0\0\0\0\0\0\0\0À\0À\0\0\0\0ÀÀ\0ÀÀ\0\0\0\0À\0À\0\0\0\0\0\0\0À\0ÀÀ\0À\0\0\0À\0\0\0\0À\0À\0\0\0\0À\0À\0À\0\0\0\0\0\0\0ÀÀÀÀ\0À\0\0ÀÀÀÀ\0ÀÀ\0\0\0\0\0À\0ÀÀ\0\0ÀÀ\0\0\0\0\0\0\0\0ÀÀ\0\0\0\0Ì\0\0À\0ÀÀÀ\0Ì\0À\0\0ÀÀ\0\0\0\0À\0\0À\0\0À\0Ì\0\0\0\0\0À\0À\0À\0\0\0\0\0À\0\0À\0\0\0À\0\0\0ÀÀÀ\0\0\0\0ÀÀ\0Ì\0À\0ÀÀ\0\0ÀÀ\0À\0\0\0À\0\0\0\0À\0À\0À\0\0\0ÀÀÀ\0À\0À\0ÀðúÞÜü¯ÀÀÀ\0\0\0\0ÀÀ\0\0\0À\0\0\0\0À\0À\0\0\0À\0\0ÀÀÀ\0\0\0À\0ÀÀ\0\0\0\0\0\0\0À\0\0ÀÀ\0\0\0\0\0À\0\0\0\0À\0\0À\0ÊÏþý¿¿ÿÏïÿÀÀ\0\0\0ÀÀÀÀÀ\0À\0ÀÀ\0\0\0\0ÀÀ\0À\0À\0À\0\0ÀÀ\0\0ÀÀÀÀ\0À\0\0À\0\0\0ÀÀ\0À\0ÀÀÀ\0À\0\0ÀÀÀ\0\0\0\0Àíÿÿû¿¿ýÿÿÿÿïïà\0À\0\0\0\0\0\0\0ÀÀ\0\0\0\0\0ÀÀ\0\0\0\0À\0\0\0\0À\0ÀÀ\0\0\0\0\0\0\0À\0À\0\0À\0À\0À\0\0\0\0ÀÀÎþÿÿýýý¿½ïÿíÿÿÿðÊÀ\0\0ÀÀÀ\0À\0À\0\0\0À\0\0\0\0À\0\0\0À\0ÀÀ\0ÀÀÀÀ\0À\0ÀÀ\0À\0À\0ÀÀ\0À\0\0\0\0\0À\0\0\0\0À\0Àïÿÿß¿¿¿ßÿ½íþüýüýì\0ÀÀ\0\0\0À\0\0\0\0ÀÀÀ\0\0ÀÀ\0À\0\0À\0À\0\0À\0ÀÌ\0\0\0\0\0\0\0Ì\0Ì\0ÀÀÌ\0\0\0À\0À\0\0À¯ÿÿÿþþßßÛùýÿþÞÿîÿîÿÎ\0\0ÀÀÀÌ\0\0\0\0\0\0\0Ì\0\0\0Ì\0À\0À\0\0\0À\0À\0\0À\0\0ÀÀ\0ÀÀÀ\0\0\0\0\0\0\0\0ÀÀÀ\0À\0\0ßïÿÏÿÿûûÿÿûÿÿïÎÞÞßüàÌÀ\0\0\0\0\0À\0\0À\0ÀÀ\0\0À\0À\0ÀÀÀÀÀÀÀ\0\0Ì\0\0\0\0À\0\0\0ÀÀ\0\0\0\0À\0ÀÀ\0ïÿßïÿÏÿßß¿ßí­íì¯ìïÊÎà\0À\0\0ÀÀ\0À\0\0À\0\0\0À\0\0ÀÀ\0\0\0\0\0\0\0\0\0\0À\0\0ÀÀ\0À\0\0\0\0À\0\0À\0\0À\0À\0\0À\0\0\0Ìÿïÿÿÿÿÿ¿¿ÿßýÿÊÊÎÚÞüüðÎÀ\0ÀÀ\0\0À\0À\0À\0ÀÀÀ\0\0À\0ÌÀ\0ÀÀÀÌ\0ÀÀÀÀÀ\0\0\0\0\0\0À\0À\0\0ÀÀ\0ÀÀïÿþÞÞÿùýýûß¿¿¿üü¬ìéÊìîÞÏÀÀ\0\0\0À\0\0\0\0À\0\0À\0\0\0ÀÀÀÀ\0À\0ÀÀ\0\0À\0À\0\0\0ÀÀ\0\0\0\0ÀÀ\0À\0ÀÀÀ\0\0ÀÿÿýïÎÿÿÿûûÿûýýÿÿþÞÞíËÀàüéÀÀ\0\0\0ÀÀ\0À\0ÀÀ\0À\0\0\0À\0ÀÀ\0À\0À\0À\0\0Ì\0\0\0\0\0\0\0À\0À\0ÀÀ\0\0À\0¯ÿßþü¿ùùÿ½ÿßß¿ùùÿÿÿúÐîÎÎàþÀ\0\0ÀÀ\0ÀÀ\0\0\0À\0\0À\0ÀÀ\0À\0\0Ì\0À\0ÀÀÌ\0ÀÌ\0\0\0ÀÀ\0\0À\0\0\0\0ÌÏïîÞÏÿÿ½ÿ¿ÿ¿ùÿ	ÿÿÿþ¼¬ÞÏíÀÀ\0\0À\0\0ÀÀ\0\0ÀÀ\0À\0À\0À\0\0ÀÌ\0\0\0\0\0\0\0\0À\0ÀÀÀ\0\0\0\0\0\0\0À\0ÀÀ\0À\0\0À\0ÀÀÀ\0ÿýðíïÿÛýûÿÿÛßùÿ½¹¹­ýüÿüìÊÎÊï¬ÀÀ\0\0ÌÀ\0ÀÀ\0À\0ÀÀÀÀ\0\0ÀÀÌ\0ÌÀ\0À\0ÀÀÀ\0\0\0\0\0\0\0À\0À\0\0ÀÀ\0ÿÞÏÿÿûÿûýùùÿûßùÙÙÙ¯ïÿïàì­ÿÐ\0À\0\0\0\0À\0\0\0\0\0ÀÀÀ\0\0\0Ì\0À\0À\0\0ÀÀ\0Ì\0\0À\0\0\0ÀÀ\0ÀÀÀ\0\0Àÿüêÿÿùýý½ÿ¿ÿ½½¿¹°°°ýþÞàÊÌÀÿïàÀ\0À\0ÀÌ\0\0À\0À\0À\0ÀÀ\0À\0\0ÀÀ\0ÀÌ\0\0\0\0ÀÀ\0\0À\0\0\0ÀÀ\0\0À\0À\0ïÿýÿÿ¿¿ÿÛÛß¿Û½Ù	ÿïÎÀ\nÊÏþßÀÀ\0\0À\0ÀÀ\0À\0Ì\0À\0ÀÀ\0\0Ì\0ÀÌ\0\0À\0À\0ÀÌ\0À\0ÀÀ\0À\0\0\0ÀÀÀ\0ÀÀþÿïÿûßýùÿûý¿¹Û
	°ù°ÿÏéîÌþßï\0À\0\0À\0\0\0À\0À\0\0À\0Ì\0	Ì\0Ì\0À\0\0\0\0\0\0À\0\0ÀÀÀÀ\0\0\0ÀýúÞùýûûÿùýûùß½¹	ÉýíêÞÀ\0ïÏïÏüÏ\0À\0\0\0ÀÀ\0ÀÀÀ\0\0À\0\0\0\0\0\0\0ÀÀÀ\0\0\0\0ÀÀÀ\0\0À\0ÀÀÀÀ\0ïÿýÿûÿßß¿½»°©ÊÏíïüüÿÿÀîÀÀ\0ÀÀÀÌÀÀ\0\0\0À\0À\0ÀÀÀÀ\0Ì	ÀÀÌ\0À\0ÀÌ\0À\0\0ÀÀ\0\0\0\0\0\0À\0À\0À\0\0ÀþþÿùÿÛûûÿ¹Ù¹©	ÿàÎÎÞËÎþÞþûÀ\0\0\0\0\0ÀÀ\0À\0ÀÀ\0À\0\0À\0\0\0ÀÀÀ\0\0À\0ÀÀÀ\0\0À\0\0ÀÀÀÀÀÀ\0À\0 ýýïûÿßùùû½¹	
©ÞþËÌðíïïÏÀïüÀÀÀ\0ÀÀÀ\0\0ÀÀ\0À\0À\0\0À		À\0À\0À\0\0\0À\0À\0À\0\0\0\0\0À\0À\0Þÿþù½½ùûÿù¿ù½	
		ßìì¬¯ïÎüÿÿìÿð\0\0À\0\0ÀÀÀ\0ÀÀÀ\0À\0ÀÀ\0Ì\0ÀÀÀ\0Ì\0ÀÀ\0ÀÌ\0\0À\0\0ÀÀÀÌ\0Àßÿÿþÿûÿ¿¿ÛÛÉ¹©°¹þÚÀìüüïÎÞüðïÿÎ\0ÀÀÀÀ\0\0\0\0À\0ÀÀ\0		\0À\0\0À\0\0À\0\0ÀÀÀÀ\0ÀÀ\0À\0À\nïßÿÿÞýùýù½ÿ½¹		
		þü\0ÿúÞïíïþÿÿ\0À\0ÀÀ\0À\0À\0À\0ÀÀ\0\0ÀÀÌÀÌÀÀÀ\0\0\0\0\0ÀÀ\0\0À\0À\0ÏÚïÿÿÿÿÿùù°	ýïÊíí­îüýìÿÿà\0\0Ì\0À\0\0\0À\0\0\0		À\0À\0\0\0ÀÀ\0\0\0\0ÀÀ\0\0ÀÌ\0\0ðíÿýïù\rûý¹ý½½¹ù\r		°¹		°	ðÏíþüîÍïþûïÿÿÀÀÀ\0À\0\0\0ÀÀ\0À\0ÀÀ		ÀÌ\0ÀÀÀ\0Ì\0\0\0\0\0\0ÀÀÀÎÞßÿÿýð¹ÿÛÛ		¹	\0ÿþÞïìúí¯Þßÿßð\0ÀÀ\0ÀÀÀ\0ÀÀÀÀÀ\0\0À\0ÀÀÀ\0À\0ÀÀÀ\0\0Ì\0\0\0\0À\0\0À\r¬¯ÿïÿ	ß¹ùùù­					üéìÞþÏÏÏïÿÿïÿÀÀ\0ÀÀ\0À\0\0\0ÀÀ		ÀÀÀÀ\0ÀÀ\0\0ÀÀÀ\0\0\0ÀÀÀ\0ïÀÏÿýï©½ý½¹½½	ð½°°Ûïï­ïïüîüÿïïÿÿà\0À\0\0ÀÀ\0\0À\0\0			\0ÀÀÀÀÀ\0ÀÀ\0Ì\0\0\0\0ÀÀÀÀÀÀý¬¿ÿß
½»ÛËÛù¹½°Û©				þÞÞÏíüïýïüÿÿÿÿÿÀ\0ÀÀ\0ÀÀÀ\0\0\0ÀÀÀÀÀ\0ÀÌ\0ÀÀ\0Ì\0ÀÌ\0\0\0\0\0\0ÀÀÀÀúÀÿüºÐÛý½¹½¹\r		°	íïïüÿîþÎïÏýÿþÿü À\0\0À\0À\0ÀÀ		ÌÀ\0À\0\0ÀÀÀ\0\0\0À\0À\0ýàÏÿý°½ÛÛÛ°°©		©	íìëÎ½íïÏîþÿÿÿÿü\0À\0Ì\0\0\0À\0\0À\0	\0ÀÀÀÀÀ\0\0À\0\0À\0ÀïÿÿÿÛÙ	ûÛ¼°½¹Ù©É	ÉÚÿÎýïÎÞü¼ÿïýÿþÿ\0\0À\0Ì\0ÀÀÀÀ\0ÀÀ				ÌÀÀ\0\0\0ÀÌ\0À\0ÀÀÿÿÿÿþ°ÙùùÚ	°°			­ìþÎÞûîÏïíÿïÿÿÿÊÀÌ\0\0À\0\0\0\0ÀÀ\0	À\0ÀÀ\0À\0À\0\0\0À\0ÀÏÿßïßù½»
Ù¹Ù­
\0¹				Ï­ëìüüüïÎÿÿïÿÿü\0\0ÀÀ\0\0\0ÀÌÀÀ	ÌÌÀÀ\0\0\0\0\0\0À\0ïÿÿÿ½	¿ÚÙù©©	©\0°		©	\0üïÎÛïëïÎÿþÿÿÿïÿ\0À\0Ì\0Ì\0\0ÀÀ\0À		\0\0\0\0\0ÀÀ\0Ì\0\0ÀÀÏÿÿÿÛ\0ËÛ½¹¹Ù¹ù©©			©	ÎþìüüüüîßßüÿÿÿþÌ\0ÀÀ\0\0\0À\0			ÙÐÌ\0ÌÀÀÀÀ\0\0À\0ÀÀÀÀ¿ÿÿÿð	¹½½¼°É	Ð¼°\0°\0¼ÏÏïïëïüîþÿÿÿÿü\0À\0ÀÀÀ\0\0\0ÀÀ	ÌÀ\0À\0\0À\0ÀÀÌÀÀ\0ÀïÿÏÿùùù¿	ðð¹©É		¹					\0îþþéüÿÎÊßÿÿïÿïÏ\0À\0ÀÀ\0À\0\0ÀÀÀÀÀ						ÌÀÀ\0\0\0\0\0\0ÀÀÀÀÏÿÿÿð
	
	¹		¹É	\nÀ\r\n\rííîÿïÿïìïÿÞÿÿþàÌ\0ÀÀÀÌ\0À\0\0ÀÀ\0\0			\0ÀÌ\0Ì\0\0\0\0ÿÿÿÛ	¹ùùù°ðÐ¹¼°	©
°\0ëÏÞÏÞÞÞþÞÞÿÿÿýþ\0À\0ÀÌÀ\0ÀÌ									À\0Ì\0À\0\0\0\0ÀÀÀÀÏÿÿß¼	û¼É	©	É\0\n								ÎîïïïÿïÏþÿýïÿÿïÀ\0\0ÀÀ\0\0À\0À\0	ÀÀÀÀÌÀÀÀ\0\0ÿÞûÉù­	Ù
°ù	À\0\0ÏÞÞýïÏïÎÿïÿÿÿÏÀÀÀÌ\0Ì\0À						\0À\0\0\0ÀÌ\0Ì\0Ïÿÿÿù
»¹©­¹é¹				\0©	 	
	©	©		þîüþÿþÞÿÏÿïþÿþþ\0À\0ÀÀÀ\0À\0À\0			À\0À\0\0À\0ÀÀ\nÿÿýé\r½°Û	°\0°Ê
ÏïíìÿíîüÿßÿÿýÿÀ\0ÀÀÀ\0\0\0Ì					ÀÀÀÀÀÀ\0Íÿþß½
ý°
	©
	\0			\0	É\0	üíïÿíïíîþþÿÿÿïÌ\0\0\0ÀÌ\0					\0À\0ÀÀÀÿÿÿ½¹¼	ù		\0
	°°°©		\0îþÞüþþÞÿÿÿÿÿþÿì\0\0ÌÀ\0À\0					\0À\0À\0ÀÿÿÚùÉù¹¼¹\0ð°Ú	\0\0		 			\0Î½ïþÞþÞÿíÿïÿÞðÀÀ\0ÀÀÀ\0ÀÀÀ						ÉÌ\0ÀÀÀÌÀÀïÿýùùù¹°¹¹¹		©			\0	°¼îþßíïïÏÿïÿÿÿþÌ\0\0À\0ÀÀ									\0\0À\0\0ßÿûð¿ÙÚùéùËðð¼ºÐ°°© \n©\0	
	\0	ïííïþüüþÿÿÿÿÿÿÐÀ\0ÀÊÀÀ\0ÀÀÀÀ							Ë\0ÀïÿÏÛÙ¹°Þ½½¿ÛÐ¬	 ¹ÚÞÞþÿÏÏïïþüÿÿþÿàÀÌÀÀÌ\0ÀÀÀ		ÙÀÀÀÀ\0ÿûý¿¹ûùûûùûü½ëðé©		\0°Ù	\0			
\0ïÏïïîþÞßÿÿÿÿÿü\0\0ÀÀ\0À¯													½¼Ìÿý¯½	­ûÛÛßû¿ùð°\0\0		
\rüýÿÞÞþÿïïÿÿÿÿìÀÀ\rÿ							ÛÙ\0ÀÀ\0ÀÿÿùùËÉ¿Û½ûÿ¿ÿÿûý½ûÛÛé\r©\0É
©\0
	íîþíïïÏïýÿÿÿïÿÀÀÀ\0ÀÀÀêÿï				\0Ìÿð¹é¿ß½ùùý¿Û½½¹ùû
\0Ð©
\0\0ýíÿþÞþßïïÿÿÿÿÀÌ\0ÀÀÌÌ\0\nËßÿÿß½¬\0Àïÿù¹ÚÿÛùûÿÿ¿ßÿ¿ýûûÿ¹ÐÀ	
		\0©	\0îþþïíïïÿßÿÿÿïþ\0\0Ìüÿþÿÿ																		¿ÿðÀÏÿ½
¹ûý¿ß½½ûûßÛûùý½ûùû¹°Ú\0Ð	É
Ð°	ÉïýýþüþþþÿÿÿÿðÀÀÀÀÌÀ\0ÿÿÿÿÿ		Ù		ýÿÿÿ½¯ßùûßûýÿûÿßßûûý¿\r	 \0	À°°îüþþþÞýÿÿÿÿïÿüàÀÀ\0þÿþÿÿï						ÿÿÿÿÌýÛ½»ûÿýûýÿ½ÿßûÿßÛÛÛû	à	\0¹		©É\0ÏÏïÿÏïïïíïÿÿü\0ÀÀïÿÿÿÿÿÿ	¿ÿÿù ¼½ûßÛùûý¿½ÿ¿¿ÿÿ¿¿½¿°ð©é\0°ÐþÿÏÿïÏüÿïÿüÊÀÌàÿÿþÿþÿÿ								ßÿýù¹¹ÛÛ¿ûùÿ¿ßÿ¿ßùÿý½ÿßûÛúù
	­\0\r©		©\0ÏïþþÞþÿïþ\0\0ÀÀ\0ðÿÿþÿÿÿÿÿ							¿ÿÿûß¹ù¿ÛÛßß½ÿÛ¿ßÿßùûÿ½¿ý½½¼\n	\0\0þßïßþßïü\0\0\0ÀÀÏïÿïÿÿýÿþÿ					ÿÿÿ½û
½ù¿½¿»Ûù½ý½¹¹ÿÿÿùÿùÿÛûÛ\n
\0Ð	©\r\0\0ìþßîïîü\0\0\0ÀÀÀ\nÿÿÿýÿÿïÿÿþ	ÿ¹					ßýÿý½¹Û¿ùûùý¿ù¹ù½½¹ùÿ¿Ûÿ½½­½\nÀ°
°\0ÞÿïýüÿÀ\0ÀÀ\0ÀÀËÏïÿÿÿþÿÿþÿÿ			¿				½ÿ¹		¿ÿÿÿéùû½¹ÿ¿Ûù¿ÛÛÛÛûÛÛûÛùùûÛÛ­	\0°Ð°Ð\nÏþþþï\0À\0\0¬þÿÿßþÿÿÿþÿÿÿ	½ùÿûÙÛßÿÿûÛß½¿ûÛý¿Û½°¹ù½½¹Ûý¿½¿¿ÚÚ¬°©\0°°\0þßÏïÐ\0\0\0\0éïÿÿÿÿïÿÿÿÿÿÿþÿý¹¹¹ûÛÿ	ÿýû¿ûÛÿÿÿùùùù»ûÛý½ÿù¹Û¹é¿½½ûÛùûß½¼¹¹ËÉ\0Ë	©\0\0þþþÞ ¬ ÿÿÿÿÿÿÿÿÿÿÿïþÿÿÿÿýûÿßßÿÿÙ		ÿÿÿû	ÿßÿÿÿûÛ½¿ý½½ûÿ¹ÿ½ûÙùû½¿½½¿Ûùé©°é
	\r
\0\0íÿþÿüÿÿþÿþÿÿÿþÿÿïÿÿÿÿïÿÿ¿ÿÿÿùÿÿÿý¹ÿÿýÿý¹ßÿÿÿÿÿùûÛ¿¿ÿ½ùûù¹ù°Û½¿¿ÛùûÐ	\0°\0\0þïÏÏÿÿÿÿÿÿÿïþÿÿÿÿÿÿÿÿÿÿÿýÿÿû¿ßÿßÿù			ý¿ÿÿûùùûÿÿÿßÿù¹½½½ûÛÛÿûÛùÿ¿»ÛËÛùûý½½¿½ù¹ð©	
\0\0\0íýïÿÿþÿÿþÿÿÿÿÿþÿÿïÿÿÿÿïÿ½ÿÿÿ½ÿßÿÿÿÿ¹ÿÿÿÿþÿÿûÿÿÿïÿýÛûÿ½½¿½½¿ùùÿ½½ûß¹ù½ÛÛÛÛûùÛ
\nÐà\0é\0\0ïîÿïÿÿÿÿÿÿÿÿÿÿÿÿÿÿïïþÿÿÏÿÿÿÿÿÿ¿ÿÿÿÿ	ÿÿïÿÿÿßÿßÿÿÿÿÿ°û½½ùùûÙÿÿùÿÿýÿÿß½»ùûÿ¿½½°
	© \0\0\0ïßÿÿþÿÿïÿÿþÿÿþßÿíÿÿßÿü¾þÿÿÿÿÿÿÿÿÿÿýÿù	½ÿÿÿßÿÿÿÿÿýÿÿùû¿Û¿¿½ÿÿÿÿÛÛÛßûß¿ÛûÛÛéÉàÐÐ­\0\0\0ÎþÿÿÿÿÿÿÿþÿÿïÿÿÿÿïïîÊÊÀ\0ÿþýÿÿÿÿÿýÿÿÿûÿÿÿÿÿÿÿÿÿÿÿÿÿð½¿¿ßÛù					½¹½ùùûÛ½¹©©©\0\0\0ïíÿÿÿÿÿÿÏý¿ýûÏî\0\0\0\0\0\0\0ÿÿÿÿßÿüÿÿïÿÿý¹ÿþÿßÿÿÿÿÿÿÿÿÿûÛùûß¿¿°¹¹		\0ß¿½ûÛûËÙ­¬	à\0\0\0üÿïïÿïÏúÿ¯î \0\0\0\0\0\0\0\0\0\0ýÿÿÿÿÿÿÿÿÿÿÿÿÿ¿½½ÿÿÿþÿÿÿïÿþÿÿý½¹ûÛ½¹ýûÙ¹ûÛû¹	\0	ùÿùû½»Ùû© °\0\0ïïýþÞÞúÏ\0\0  \0\0\0\0\0\0\0\0\0\0\0ÿÿþÿþÿÿÿÿÿÿÿÿÿßÿÿÿÿÿÿÿÞÿÿÿßÿÿÚÛÛÛý¿Û»¿Û½ýý½ù°°\0			¿Ûß¿ÙéÊÙÊ\0\0\0ï\n\n\0\0    \0\n\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿßÿÿÿÿÿßÿÿþÿÿÿÿÿÿÿÿÿßÿÿÿÿû½¿Û½ýùù¿ûß¿¿ûÚ½°û¹ùùé« °Ð\0\0ü\0\0\0\0\0 \n\n\n\0  \n\0\0\0\0\0\0\0\0\0\0ÿÿÿßûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿýÛ½½¹ß¿¿ÿý½ûßý½
Ðé		¹ûß¿¿¹ùÉðéÉ \0\0\0\0\0\0\0\0\0   \n\0\n\0\0\0\0\0\0\0\0\0\0\0þÿÿþÿþßïÿßÿÿïÿÿÿÿÿÞÿßÿÿÿÿÿÿÿÿ½»ùûù¿¹ùùùûÿ½¿°½©¹­©Û	\0	¹ÛÛÚ°\0\0\0ïÀ\0\0\0\0\0  \n\0     \n\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿßÿÿïÿÿÿßÿßÿÿÿÿÿÿÿÿÿÿ©ûÝ¿¿ù¿ÿ¿ßýûÛÐ\0¹\rÐ½¹¹¹ùÿ½½½ùùééË\0\0À\0\0\0\0\0\0\0\n ª\0\n\0\0\0\0\0\0\0\0\0\0\0\0ÿýïÿßÿÿÿþÿÿÿýÿÿÿïÿÿÿÿÿÿÿÿÿÿðÙ½»ùûÙûÛÛÛûÿ½
\r	Ù
Ú½Ûû
\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0  \n\0\n\0\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿþÿÿÿÿïÿÿÿÿÿÿÿÿÿÿÿÿ­¿ûÛùûùùÿýýùûÙ
\0°É	¹ùð¹ûÛý¿¼ùéùÊÐ¼\0\0\0\0\0\0\0\0\0\0  \n\n\0 \n\0\0\0\0\0\0\0\0\0\0ÿÿÿÿÿïÿïÿÿýÿÿÿÿÿÿþÿßÿïýÿÿß¹½û½¿¹½¿¿¿ý¹		©¹\r¿ùß¿ùÛ½°°¹
\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0 \n\0\0\0 \0\0\0\0\0\n\nÿÿÿÿïÿÿÿÿÿÿÿïÿÿÿÿÿÿÿÿÿïÿ¯ûÛÿßÛÛùùùÛÛßÛÛ	Ë©
©
¹û½½ùý¿½¹ùùé©\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\n\0   \0\0\0\0\0\0\0\0ÿïÿÿÿÿßÿýÿÿÿÿÿýïßýÿïÿûàý½¿¹ÿ¿¿ûß¿½¹¿ûÿù	¹¹Ë		ßßÛû½»ÙûÚ	°ÚÛ\0\0\0\0\0\0\0\0\0 \n\0\0\0\0  \0\0\0\0\0\0\0\0\0\0 ÿýþßÿÿÿßïüÿïýþÿÿþ¾¼°ÀàÛûý¿ùùý½ùùÿÙ¹ý½ý½½¹	©	
	¹ù»ùûÛÙ½¿¹ùðÛÉ©\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0  \0\n\0\0\0\0\0\n\0ÿÿÿÿÞúþÿþÿëùï­¬ àÀÊ\n\n
ÿýûÛùÿ¿¿ÿ¿ÿù¿ÿ¿½»ÛÛùù\0¿ß½½»ù¹°ÚË\0\0\0\0\0\0\0\0\0\n\0\n\0\n\0  \0\0\0\0\0\0\0\0\0\0 ÿÿ¿¿ÿÿßéééì¬\0\n\n\0\0\0\0\0ûÿù¿ßÛýùùÿÛùùÛßÛÿ½û©		©Û½ùù¹Ù½ïÛÐùé	¼\0\0\0\0\0\0\0\0\0\0\n\0\0\0 \n\n\0\n\n\0 \0\0\0\0\0\0íììì¬ \nÊ\n\0\n\0 \0\0\n\0  \0ïÿßùùÿûÿÛÿÿùÿ¹ùûÿÛÿ½û©©¿ÛÛ¿ù¹©Ú
\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0  \n\0\0\0\0\0\0\0\0\0\0\n\0 \n\0\n\0 \0\0\0\0\0\0\0\n \n\0 ¿ûÛý½½¿ý¿ßùûûß¿½ùÿÛß¹Û
Ùùý¹ù½»Ù½½­°\0\0\0\0\0\0\n\0\0\0\n\n\n\n\0\0 \n\n\n\0\0\0\0\0\0\0 À\0\0\0À\0\0à\0\0\n\0 \0\0\0\0\0\0ïÿßû½ûÿÿÿ¿Ûûÿý½¹ýûÿÿûßùûÙ¼½¹ùÛÝ¿ÛÛ­¹©\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\n\n\n\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0à\0  \0 \n\0\0 \n\0 \0 \nûÿ½ûý½½½ÿÿýùÿÛß»ßûÿß¹¿½¹ÛßÛ¿ùùû\r°½\0\0\0\0\0\0\0\0\n\0\0\0\0\n\n\0\0\0 \0 \n\0\0\0\0\0\0\n\0 \0 \0 \0\0\0\0À \0\0\0\0 \0	ÿßù¿¿ÿÿÿÿ¿Ûÿûÿ½ýûùýûûÝùùû	ù¹»Û½ùý¿Ë
\n\0\0\0\0\0\0\0\0\0\0\0 \0 \0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0à\n\0\0\0\nß¿ÿùùÿûùý¿ßÿûßÛÛ¿ÿýýû½¿ù½ÿ¿ù½½½¹ðù©\r\0\0\0\0\0\0\0\0\0\0 \0 \0  \0  \0\0\0\0\0\0\0\0\0\0\n\0 À\nÀ \0\0à\0 \0\n\0\0\0\0\0 ½ûÛÿ½½ÿ¿ÿÿÿûßûÿ¿ùýûÛÿ¿½Ûýû	¹¹ûÿÛý¿ÛÛÚ	Ú\0\0\0\0\0\0\0\0\0\0\0\n\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0 \0 \0\0\0\0À\0\0\0Ê\0\0\0\0\n\0\0ÛÿùùùÿûýûßÿûßÿßÛÛß¿ÿýùû½»ß¹ùùÛßûý¿Û¿½¼¹ðú¼\0\0\0\0\0\0\0\0\0\0\n\n\0    \0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0 \0\0 \0\0\0\n\0\n\0\0\0ËÿÙ½¿¿ùýûýûßÿÿ¿ÿ¿ÿ½ùý½ÿÿÛÝ¹Ë¿ûûÿÛù½ùûÛ©

\0\0\0\0\0\n\0\n\0\0\0\n\0\n\0\0\n\0\0\0\0\0\0\0\0\0\0\0 \0\0Ê\0 \n\0 \0\0\0\0\0\0\n\0\0\n\0½ù¹ùÿßÿ½ÿÿûßÿß¿ßÛÛ¿ûÿûùý¹û½¹Ûý½ýùÿ¿ßÿ½¹ùéÚÐ¼\0\0\0\0\0\0\n\0\0 \n  \n\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ûù¿ûÿ½ÿ¿ÿÿÿßûûýý½ÿýÿùÿ	½ûÿûÿ¿ÛûÛß½©°¹
	éÚÐ\0\0\0\n\0\0\0 \n \0\n\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0 \0\0\r¹\r½ý½ùûýÿûßÿÿ¿ûßý¿ûùÿ½¿¿½½»ßÛýÿÛýý¿»ùûÛÛÚð¹¹°\0\n\0\n\0 \0\0\n\n\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0 \n\0¬\0\0\0\0\n\n\0\0  ùÛ¿¿¿ýûùýûÛßßÿÿùùýÿÿßÛùùÛùý¿¿ÿ½ÿûûùý¿Û	ù
É\0\0\0\0\0\0\0\n\n\0 \n\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0Ê\0\0À\0\0\0À\0\0\0\0\0\0		½ýýûß¿ßû½¿ûÿÛÿ¿ÿ¿ÿ¿¿¿ûßÿÛÿ¿ßßûý½°ðÛ\0ð©½¹\0 \n\0 \0\0\0\n\0 \0\0\0\0 \0\0\0\0\0\0\0\0 \n\0\0\0\0\0\0\0\0\0\n\0\n\0\0\0¬\0	ùÛûûß¿ß¿ÛÛÿÿùùý½ýýý½¹ùùûßÿÛýÿßÿ¿¿Ûù½¹¼	é©Ûÿ\0\0\0 \0  \n\0 \0 \0\0\0\0\0\0\0\0\0\n\n\n\0\0\0 \0\0\0\0À\0\0\0Ê\0\0\0¬\0 

©½¿½ûùùù½½½¹ù¿ÿ¿ûÿûÿÛÛÛ½ûÿÿûÿßÛùùý¹Û\r©
	½ \n\0\n\n\0\n\0 \n\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0À\0\n\0\0\n\0\0\n\0\0\0\0	\0ÛýÿÛý¿ÛÛßýÿÛßûÿÿ½¹½¹ÿß½ùûßÿÿ¿¿ß½»Û«ÉðÚÙ½\0\n\0   \n\0 \n\n\0\0\0 \0 \n\0   \0\0\0\0\0\n\0 \0\0 \0À\0\0\0\0 \0¹	û¿¹Ûùùù½¹½¹¿ÛûùûßßÛßÛßÿ¿ÿÿÿÿùùýùû½½	©	¹ËûÀ\0 \n\0   \n\0 \0\0\0 \0\n\0\0\n\n\0\0\0Ê\0 \n\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0½ùùÿù½¹Ùÿ½ùÿÿÿûÿù½¿½½ûÛûßùÿÿûÿùÛÛ¹°¹Ëé½º\0\n\n\n\n\n\0  \n\0\0\0\0\n\0\0    \0\0\0À\0\0\0\0\0\0\0\n\0\0\0\0\0	\0		\0ß¿¹°ÛÛß½¹ÛßÛÿ½¹ÙÿÿßÿßùÿÛßùÿ½ûË¹Ê½ëÐÙ \0\0   ª\0\n\0 \n\0\n\0\n\0\n\n °\0\0\0\0\0\0\n\0\0\0\0 \0\0\0\0\n\0	\0\0\0\0ÿ½ùùù			½¿ÿù°¹
ûÿÿßÿÛÛûÛÛ½ù¿ùÿ¿ûÿùù°¹Ë\0¹\0Ú
°\0  \n\n\n\0\n\0\n\0 \n\0\0\0\n\0à\n\n\n\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
Û\0	\0½ß¿¿ùûß¿Ûßùý½½ûÿÛÛÙð¹ËÀ¹ðÐ \n\0   \0 \n\0\n\n\0\0\n\0\0\n\n°à  \n\0 \0\0\0\0\0À\n\0\0\0 \0\0	\0	\0\0	ý¿éù°	\0\0	\0\0ÿ¿ßßùùùÿÙùù½»ßûÿûßÛ½»\n½\n¹\n\0     \0\0  \n\0\n\0\0   Ê\n\0\0\0\0\0\0À\0\0\0\0\0\0\0Ê\0\0\0	\0\0\0\0\0\0¿Ûù\0\0\0\0\0			ÿÿ¿Û©
Ù¹©¹Ð¹ù½½¿¹ÿùûß	©
¹Ë\0\n\0\n\n\n\0\0\0\n\n\0ª\0\0\0\0\n\n   \0\0\0À\0\0\n\0 \0\0\0\0\0\0\0\0	\0\0\0\0
Ûù	­Û°\0\0\0					ûÛÿß¿
	ÛûÛß½¿¹ûË\r­© 	Ú\n \n\0  \n\0\n\0  \0     ¬\nÊ\0\0\0\0\0\0\0\0\0\0 \0\n\0\0\0\0	\0\0\0\0\0\r¿¹½¿Û½©\0\0\0°½ÿûûÙ		\0¹ùù¿ÛÛÛùûÛý½­°°		¹ \0 \n\n\n\0\0 \n\n\n\n\0\0\0\0\n\0 \0\0\0\0 \0\0 \0\0\0\0\0\0À\0 	\0\0\0\0\0\0
ÛùÙ½©		¹	¹ÿ¿ßß¹		\0		ÿÛÙ°½¿ý¿ûÛ°ÚÚ	
\0 \0\0   \0\0    \n\0\0   \n\n\0\0\0À\0\0\0\0\0\0À\0\0\0 \0\0\0\0\0\0\0 ùû©		
	°ß¿½ú	¿½ùûÛÛýºÛ©	
	Ð \n\0\0\0 \n\0\n\n\n\n\n\0\0\0\0 \n\0\0\0\0\0\0\n\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0ûÙð¿			\0		¹½ûûßÛ			\0	\0		É
		½¿¿É°Ðð	

\n\0\0\0 \n\0\n\n\n\n\n\0 \0\0ª\0 \0\0\0\0\0\0\0\0\0\0\0\0 \0 \0\0\0\0\0\0\0\0\0\0½¿½½	

°¹»Ù½½ý»Ð°	\0\0\0\0\0					

Ëß\r\nÐ\0\0\0\0\0       ª\0\0\n\0\n\0\0\0\0\n\0\0\0\0\0¬\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0½û¹ÿý½©
	°½»Ûûûýù¹¹	\0\0\0\0\0\0\0Ù½¹úß		\0	
Ë\0 \n\0\0\0\0   \n\n\n\0\0\0\0  \0\0\0\0\0À À\0¬\0\0\0\0\0\0\n\0\0	\0\0	\0\0\0©ùûùýû¹¿½»ÛýÛùý½»Û	\0\0\0\0	é©ÚÛÛù\0
°\0\0\0\0  \n\n\n\0  ª \n\0\n\n\n\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\n	\0\0\0\0\0\0\0¿¿ûýÿûßß½½ùý»½¿¿ûß¹ù
				ð©¹¼½½\0\0\0°¹©\0\n\0\n\n\0\0   \0\0\n\0\n\0\n\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ùùûÿß¿ûûÿßÿ¿ûß½ý½û½¹	\0	\r°	
ÛÚÛÛÉ \0\0Ð\0\0\0\0\n\n\n\n\0\0\0   \0    \0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0			\0\0\0\0ÿ¿ßÿÿÿ¿Ûßÿ¹ÿ¿ÿ½ùùûÛ
\0\0	°	Ûù¿\0\0	
	\n\n\0\n\n\0\0\0\0\0\0\0\0 \n\n\n\n\n\n\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0	\0\0\0	\0\0\0
ùùùýÿ¿ÛÛßÿßûÿ½½ÿÛÛûÿÛÛ½¹	\0	\0\r©Ú	é­
\0\0\0		\0\0\n\0\0    \0\0\n\0\n\0   \n\0 \0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0½¿¿ûùÿ¿ÿûÛÿýùÿÿ½ÿ¿ÿß¿½ûÿÛ	\0	\n				½¹ý¹\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0 \n    \0  \n\0\0\0\n\0 \0\0\0\0\0 \0\0\0 \0	\0	\0	\0	Ùûßß½ý½½ÿùûÿûÛßûßÛûÿÛßÙ¿°¹ ©	«ËÏ\0\0\0\0\0\0\0\0\0\n\n\n\n\0 \0\0\0 \0\n\n\n\n\n\n  \0\0À\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ù¿¿ÿ½ûûÿÿùÿßÛßÿûßûÿßÛÿûÿ¿ùÿ	Ë	ð©°Ù½¹ý \0\0\0\0\0\0\n\n\0\0\0\0 \0\0\0\n\n\n  \0\0\0 \n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0				
ÛÛÛûßÛÿûÿÿûùÿûß¿ÿßÛßûûûð¿
Ë
Ú\0\0\0\0\0\0\0\0\0\0\0 \n\0\n\0\0\n\0\n\0ª\n  \n\n   \0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0 \0\0	Ûùûÿûÿÿ¿ßýÿ¿ýÿÿÿÿß½ÿ¿ÿ¿ûÿù½°ûËù½½°\0\0\0\0\0\0\0\0\0\0\0 \0  \0\0\0\0\n\0ª\0 \0\0 \0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0	\0	\0Ûýùÿßßûÿ¿ßÿÿÿûß¿ÿûßÛý½ùÿÿÿûß½»Û
Ë\r\0\0\0\0\0\0\0\0\0\0\0\0\n\0\n\0\0\0\0 \n\0\n\0\n\n\n\nª\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0	¹ý¿¿Ûÿ¿ûûýÿßý¿¿ÿûßÿý¿ÿûý¿ÿ¿½¿ûß½ûß½©ù½°°\0\0\0\0\0\0\0\0\0\0\n\n\0¬  \0\0\0\0   \0\0\0  \0ª\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0	
ËÛùûÿÛÛßýÿ¿ÿ¿ÿßÿßÿ¿ÿý½ÿ¿ý½ýÿßùÿ½ûß½ëÚ
Ð\0\0\0\0\0\0\0\0\0\0\0\0 \n\0\0\0\0\0\0\0\n\0\0\n\n\n\n \0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\rÛùÿ½½¿ÿûûùÿÿßûÛÿ¿ß¿ÿÿýÿûÿ¿½½¿½ÿ½ûÛÚ©\0\0\0\0\0\0\0\0\0\0\0\0\n\0    \0\0\0\n\0\0\0\0\0  \n\n\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0		
	½»ÛÛßÿùý½ýÿÿÿÿ¿ÿÿÿßÿßÿ¿ÿùÿÛûÛÛÛß½½ù­©Ú\0\0\0\0\0\0\0\0\0\0\0\n\0\n\n\n\0\0\0\0  \n\n\0\0\n     \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ð\0	©Ûý¿¿ùùÿ¿ÿ¿¿ßÿßÿ½ÿÛÿûÿÿ½ÿýÿ½ùÿ¿¿Ûð½Û	\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\nÊ\n\0\0\0\0\n\n\0   \n\n\n\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0
	©¹Ûÿ¿Ûßßÿ¿¿ßÿ¿ÿûßûýÿÿÿÿ¿ýûÿ½¹ùùúÐ½°\0\0\0\0\0\0\0\0\0\0\0\0\0\0    \0\0\0\0\0ª\n\0\n\0  ª\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0½\0\0¹Ûùûÿßÿ¿ûÿ½ÿÿÿûÿßýÿÿßÿûßùûý¿½ùùûûß»Ð\0\0\0\0\0\0\0\0\0\0\0\0 \0\n\0  \0\n\0\n\0 \0 \n\0ª\n\n\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n¿½ùûûÙý½¹ßùÿÛýÿûûý¿¿ûßûÿÿÛÿÛûûÛÙð¿
\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\n\n\n\n\0\0\0\0\0\n\0 \0 \n\n\n \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0
Ù\0¹ùùÿ¿ý½¿¹¿ÿ¿Ûýÿ¿ýÿß¿ÿÛÛÿÛÿÛý¿¹ù­¹
\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0   \0\0\0\0\0\0\n\0 \0 \0   \n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0 ¿Ûÿ¿½¹ùÿùýÿÿÿýÿ¿ûÿý¿ÿýûý¿ùý»ÛßËÐ¹\0\0\0\0\0\0\0\0\0\0\0\0   \0\n\n\n\0\0\n\0\0\0\0\0 \n\n\0 ª \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0
	 ¹½½¹½¹ùùùù½¹ùÛý¿¿ýÿßÿý¿¿½ûý¿ûß½»©\0\0\0\0\0\0\0\0\0\0\0\0\n\n\0\0    \n\n\0\0\0\0\0\0\0\0\0 \0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0	½¹ûÛûÛÿßûÿ¿¿ÿ¿ýÿß¿Ûù½»ÛÛÛ	\0\0\0\0\0\0\0\0\0\0\0\0 \n\n\nÊ\n\0 \0\0\0 \0\0\n\n\n\n\0  ª\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
\0¹ù½	¹ÛÙ½¹ù¹Ûùÿßýý¿ý¿¿Ûý¿Ûý¿¼½¹©\0\0\0\0\0\0\0\0\0\0\0\0\n\n\0    \n\n\n\0 \n\0\0\0\0   \0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	¹¹°¿Û
½¿½ûÿý¿ÿýûý¿Ûù¿¯ÉÚÚ\0\0\0\0\0\0\0\0\0        \n\0 \n\0\n\0  \nÊ\n\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¹Ù½½½©Û©ÛûÛ½ùûÿ¿½¿ùÿùùùù¼¹©\0\n\0\0\0 \0\0\0\0\0\0\n\n\n\n\n\n\n\n\0\n\0 \n\0\0\0\n\n\n\0 \n\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0¹	©¹¹

	¹¹
©û½ûß¿ýùÿßßÿ¹ÿ¿ÛÉ©	\0\0\0\0\0\0\0\0\0\0        \n ª\0 \0\n\0  \n\n\0  \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0	\0\0\0		
		¹		½¹	¹
¹Û½°ùûÿûûûÛùÿý½¹é°ð° 	\0\0\0\0\0\0\0\0\0      \0\n\0\n\0 \0\n\0\0\0  ª\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0			\0°°ÿ\nÛý½ÿ½ÿù¿½½¹½	é \0\0\0\0\0\0\0\0\n\n\n\n\n\n\n   \0 \n\n\0\n\0\n\0  \n\n\n\0\0\0\0\0\0\0\0\0\0\0\0\0Ê\0\0\0	\0	\0\0\0			©	
	\0°¹©	Ûý¿ÿ½ûùûßÛùß¹é
 ©\0\0\0\0\0\0\0 \n\n\nÊ\n\0\n\0\n\n\n \0\n\0\0\0\n\n\n\0\n\0\0\0\0\0\0\0\0\0À\0\0\0¬\0\0\0\0\0	\0\0		 °
°	¹	Ûùÿùÿ¿½¹¿»½¬ \0\0\0\0\0\0\0\0\0   ©   \n \0 \0\n  \0\0   \n\n\n\0  \0\n\0À \n\r ¬¬É\0\0	\0\0		°°É¹ù	é©¹			\0¹¹
ÛùÿÛÿÿùûÙé°¹ ©	\0\0\0\0\0\0\0\n\n\0\0­\0\n\0 \0 \n  \n\n\0\0\n\n\0\0 ÀÀ¬ ¬¬ÀÀàÎ\nÌ \0\0\0\0\0\0°°\nù°°°

		
½¿ûý¿ù½¿½½¿\n\0\0\0\0\0\0\0\0   ª  ª\n\n\n\0 \n\n\0\0\0 \0\0\0 \n\n\nÊ ÀÌ\0à àà À\0\0\0	\0\0	
		©½
		\0	\0	ù¹ùÿßù¿û½»Û	«ð© 	\0\0\0\0\0\0\n\0\0 Ðà\n\0\0  \0 \n    \0\0  \0\0 ÌÊ\n\0à\0	\0\0\0\0\0		°½°°»\0°¹
ÉùùûûÛý½ý½½½	\0\0\0\0\0\0\0\0\n\n\nÐª\0  ª\n\n\n\n \0\n\0\0\n\n\0\0 \n\n\n\n\n\0À\0ÀÀÀ\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0
ËÉ\r	




	 	\0ß½ûÿ»Ûù
°ú\0\0
\0	\0\0\0\0\0°¬°\n \0\n\0 \0\0 \n\n\0\n\n\0\0\0\0\0\0\0ÀÀÀÀ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	°¹	©°°	©			\0		©¹½¹û½¿ß½¿ý¹\r©	\0\0\0\0\0\0\0\n\n \n\0  \n\0\n\n   \0\0\n\n\0 \0  \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0	\0¹°°		ðð°°°	°ÚßùûûùûÛÚ©\0\n\0	\0\0\0\0\0\0\n\nÐ \0 \n\n\n\0\0 \0\0 \n\n\0 \0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ù\0

Ë				\0\0\0		©¹Ú¹¿ûß½½¼½°\0\0\0\0\0\0\0\n¬°ª\0 \0 \0\0\n\0\0 ª\0  \n\0 \0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0	
ËË	\0ðù	 	\0\0	
		½¹ÿÛßûûÛËù¹Ë\n 	 \0\0\0\0\0 \n\n\0 \n\0\0  \0\0\n\n\0ª\0\0  \0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0 úÐÐ\n© °\0		\0\0\0\0Ûÿ¿½½½°\0 	\0\0\0\0\0Ú¬ª\0\0\0\0\n\0 \0\0 \0   ê\n\0\n\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0			é	
	©
\0ù
		\0\0		
	©	¼¿¹ùûûÛûÚÛ

	\0\0\0\0\0\0\0\0à °«\n\n\n\0\n\0\0\0\n\0\n\n\0\0\n	\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0° ù­¯\0ð\0	\0 	\0\0\0\0\0ÛÛùý¿\0\0\0\0\0\0\0\0
\n\n\0  \0\n\0\0 \0\0\n\0\0\0 à\n\0\0\n\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0		¹
¹\n		\0\0\0
¹ùû¿»Ûù°°°\0 \0\0\0\0\0\0\nÚ  ª \n\n\0\0 \n\0\0\0\0\n\0\0\0 \0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0			
°ú\0\0\0°\0		\0\0	\0\0\0	\0	Ë¹ùùù½
	©	\0\0\0\0\0\0Ê\r  \0\n °  \n\0\n\0\0\n\0\0\n\0 \0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0¼à°\0°\0\0	\0\0
\0\0\0\0	
­»ÛÚ	\0\0\0\0\0\0\0\0\n°º\n\nª \n\n\n\n\0\n\0\0\0\0\n\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0		ËÉ¼°	©	­	\0\0
\0
\0	\0\0©
Û­½¹¹¿°©\0\0\0\0\0\0\0\0\0\0à©ê\0\0      \0\0\0\0 \n\0\n\0\0\0\0  \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\n\0¼
Ëà\0°	©\0\0\0\0\0\0\0¹ÛÛÛÙ©\r°\0\n\0\0 «
\n°ª\n\n\0 \n
\n\n\0\0 \n\0\0\0\n\n\0 \0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0	\0¼°°\0	¬\0	 \0\0\0\0			
Ë

°ù °\0 \0\0\n\0\0
Ê\n
\0 \0 \n\0    \0\n\0 \0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0		\0ÉàÚ\0	 \0Ð°©
À\0	
\0\0\0°¼ù
\0\0\0\0\0\0 à© °àª\0 \0     \n\0  \0\0\n\n\n\0   \0\0à\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0°	©\0	°		\0Ê
\0©	©À\0\n\0	 ¹		¹½­°ùéð© \0\0\0\0°\0	©     \n\n\n\n\n\n\0   \0\0\0\0\0\0 \n\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	©\0°\r\0 
	\0­¼°\0°\0\0\0	\0°	°\0	\0	\0\0\n\0 ¼    \n \n\n\n\n\0¬\n\0\n\0\0\0\n\0   à\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0°°ËÉ ¹«ð\0\0\0\r\n\0\0\0\0	\0\0°
Ë	©°Ë°ð \n\0	 \0\0\0  \n\n\n\n\0\n\n\n\0 ¬ª\0 \0\0\0\0\0ª\n\n\n\0 \0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0Ù\0Ð
°ÚÚ°\0\0\0\0	

			
	°			é\n\0\0\n
\0\n\n\n\n\0 ª\n\n\n\n\0  \0 \0\0\0\n\0   ª\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0	¬	­°é ¼	\0		\0\0\n\0\0	\0\0\0\0\0½
	é¿\nÚ\0	
\0\0\0   \n\n\n\n\n\0    \n\0ê\0ª\n\0\0\0 \n\n\n\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	 	­¼\0\0Ú		 \0°\0\0	\0\0\0\0		
\0	\n\0	­
À\0 \n\n\0 \n     ª\n\n\n\n\0\n\0ª\0\0\n\0\0\0      \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
Ð­ 		¬°\0		\0
À©\0 \0\r©\nÐ»ð¼º°\0­	 \0 \n\0\n\n\n\n
\0       \0      ª\n\n\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\nÚ\r
	 \0	\0\0 \n\0\n\0\0
\0\0		\0\0°	
À
ËÉà\0ú \0 \n\0ª\0\n
é ª\n\0    \n\n\n\n\n\0\0\0\n\0    \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\r\0ð°\0	 \0°	°\0\0°\n°\n	  ½
\né©Ê\0 \n\0\n\0\n  \n  \0\n\0     \0\0 \n\0\0 ª\n\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0	 ðÊ
\0 °	\n	
\0\0 É\0\0\0\0\0\0\0 Ê\0Ð
© \n\0    \n\n \n\n  ª\n
\n\n\0ª\n\0 \n\0\0\0   \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	éÚú\r\0\r ðÐ\0\0\n\0\0	\0		\0\n\nÛ°©\0°\0\n° \0\0\n\nÀë\0\n\0\n\n à  \0 ª\n\0\0\0   \n\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	 ÊÚ\0é \0\r°°°\0\0°­\n\0°	\0\0\0\0	\0\0\0	É\0©\0©­\n\0\0\0    ¬¯   \n\0àê\n\n\nª\0\0\0 \0\n\0\n\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0		\0\r¼°\0É\0\0°	\0\0\0\0\0\0\0\0\0\0\0\0\0 ÐéëÐ° \r \n\0\n\nÊÀàËÊ\0¬®\n \0 \0\n\n\n\0\0À\n   \0\0\0\0àÀ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 
\0© ©\n°	\n\r  \n
\0\0	\0\0\0\0\0\0\0 °É \0\n\n\n\0\n\n\n­®Úà ¬ \0¬ÊÊ\n\n\n\0\0\0\0\n\n\0\n\n\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÀÐÚÐ­\n\r«ÚÙ \0\0	©\0\0\0\0\0\0\0\0\n
\nÚ\0°\0\0\0 \0
ÀêÚÉì¼ \n \0\0\0\0 \n\0\0\0\0\n\n\n  \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0ð­
	©ÚúÐ© \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ð °¼¼ 
Ê\n\n\0  ¯®ºÊÊÀ\0 \0\n\0\0\0\0\0\0\0\0 \n\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0À ¬ ¬\0à 
		\0 ¬Ú\0\0É\0\0\n\0	\0\0\0\0\0\0\0\0\0\0	é\n\ré °° \0\0\0\n\nðéëËÍ\n\0\0   \0\0\0\0\0\0\0\0\0\n\0   \0\0\0\0\n\nÊ\0À¬\0\0¬\0 \0\0à\0\0\0\0é\r
É	© \0Ú
	\0\0\0\0\0\0\0\0\0\0\0\0\nº\n\0ª\n\n\0 ¾¼¼º \0 \0\0\n\0 \0\0 \0\0\0\0\0\n\n\n\n\0\0\0\0\r\0À \0\0\0à\nÀ\nÀÊËÊÊÊÊÊÐàð©\0\0\0°àÐÚ\0°\0	©é¬©\0©\0\0\0\0\0\0\0\0\0©\0é¬	é©©­\0\0\0­©éúùëÚÙà \0  \0\0\0\0\0\0\n\0\0\0\0\0\0   \nÀ¬\nÊË\nÀààé¬¬¼¬¾¬¼­­¬®\nÐ©\0 \0	Ë	©¬	\0é\0\0\0\0\0\0\0\0\0\0©\nÛ\0¬\nÊ\n\n\n\n\n­«Ú¼ª\0\0\0\0\0  \0\n\0\0\0\n\0\0\0\0 \n\n\0\nÀí ðì¼ëËËÊÚÀËééðàùí¯\n 		é¬Ê	©\r\nÀ°\0\0\0\0	\n­ 
\0°°°  \0 éëúÛü«Ë\0\n\0\n\n\n\0\0 \0\0\0 \0\0\0\0 \0    à\nÞéàúÊ¬°í­¯¼¬°Ððùà­ \0É
\r úÚ\n\0\0°\0\0\0\0\0\nÀ
Ê­\0¼°  é \0 \nð½­«Ú\0 \0\0\0\0   \0\0\n\0\0 \0\0\0\0  \n\0ÞÚÉÊÚÏ­°í«ËÀë­¹ééÚþ¼¿° 
\0	 à°Û			à\0\0\0\0\0\0\0\0
\0°é\n\0\n\n\n \n\0éï¿Ú½ª\n\0\0\0 \0\n\0\0\0\0\0\0\0\0\0\0Ë\0\n\0 ©éé­éé®½­°éúÏÚ¼¿úÍ¯ðë°ß\0\0
		Ë\0ððð°\0\0\0	\0\0\0¬°ûÉ
é º ©¬° \n\0\néé¯\n\0\0\0\n\0\0  \n\0\0\0\0\0\0\0\0é© \0Û
ééÚÛ\r¹­½Ë½¯¹û½¯þ½ëÛú\0\0\0\0\0°ð°

	 \0	\0\0 ¼Ð¼°
à\0\n
\n\n     ¬¾»ðð  \0\0\0\n\0\0\0\0 \0\0\0\0\0\0\0\n\0\0 éé©¾ÛéúÚð¾ÚðúºÚðÚÐ¾Ú¼¹é°\0\0Ú\0°ðð¼Ð©\n
\0Ð\nË©ëËð©©\n\n\n\n
\n° \0\n
Ëë
\n\0\0 \0\0\0\0  \0\0\0\0\0\0\0\0\0­   \0½¿ÚÛûß­¾½¿½¿ß½¿ûùû¿Ûéÿ¹ûÏ¾¾°¼ºÛ\0©Ê
	©Ê	°­©½©½¼¿ ú\n\0\0 ©  \n\nª  °¿ðúê\0\0    \0\0 \0\0\0\0\0\0\0\0\0\0\0\0¾¿¼¼ºÛËðúÚðúÚðºÚð¼¾ÚºÚÚð¹éééëË\0	©ð ­¬°°
ÚË
ËÚ\n\n\n\n\n\n  \0\n\nËÚ\0 \0\n\0\0\0\0\0 \0\0\0\n\0\0\0\0\0\0\0   \0ÛËÛËÛý¾¿½¿½»ÛýûÛß½½»ý»ý¿þ¿¹ûùû
\0
\r©°ð­©¹ëÛ¹ëé    \n\n\n\0 ª «
éúÚ\n  \0\0 \n\n\0 \0\n\0\0\0\0\0\0\0\0\0\0\0­¿­¿¯
ééùëËéë¯
­¯©¯«Ï
Ï
Ë­©é­­¯
Ë©°éé©©é©ºÚü»Ú¾°ºú\n\n\0 ©©ª\n\0\n\0ú°  \n\n\0 \0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\n\n\0 úÙúÛÛý¿¿½¿ùûý¿ûÛÛ½û½û½ûÛ¿ÛûÛý¿½¾ùºËúÛé»ËûùùûÛËûùûé   ¬º\n\0ª\0ª©Ë\n\n\0\0 \0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0 \n
ë­¯
éééëË­«
\r­­­¯


­­©­©¯

Ë
\n°¼¾¼¼\n\n\n°­°°ª\0ª\0©ë     \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \n ½¹ûÛù¿¿½»ÛùûùûûûÛûùûùûùûÛûÛûÛùûùûùûùûùûÛûûûûùûûûûûûûûû«\n\n\n
ûë  \n\0\n\0 \0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0×­þ','Justin Brid heeft het HEC te Parijs (Hautes Etudes Commerciales de Paris) doorlopen en is daar in 1986 summa cum laude afgestudeerd. Justin heeft de American Graduate School of International Management (Thunderbird) in Glendale, Arizona, doorlopen. Voor zijn indiensttreding bij Noordenwind N.V. was hij in dienst bij verscheidene import-/exportbedrijven op het gebied van culinaire specialiteiten in Duitsland, Zwitserland en Oostenrijk. Spreekt vloeiend Frans en Duits. Spreekt tevens Engels en heeft een passieve kennis van het Spaans.'),(14,'Martin','Xavier','Zonnestraat 22','Brussel','1030','02 241 89 27','Marketing Associate',2500,'13','38',1,'1994-01-15 00:00:00.000000','1960-11-30 00:00:00.000000','1',_binary '\'\0\0\0\0\0 \0\0 \0×
OLE2EF0D128\0PBrush\0\0\0\0\0\0 \0\0\0PBrush\0\0\0\0\0\0\0\00 0 192 223\0 T\0\0BMT\0\0\0\0\0\0v\0\0\0(\0\0\0À\0\0\0ß\0\0\0\0\0\0\0\0\0 S\0\0Ä\0\0Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÀÀÀ\0\0\0ÿ\0\0ÿ\0\0\0ÿÿ\0ÿ\0\0\0ÿ\0ÿ\0ÿÿ\0\0ÿÿÿ\0\0À\0\0\0\0\0\0\nÞÀ ì®¯­®Êíàì¾í¯®êÏïî¬ðí¬ïîîþîÊïÚÞîêÎîðúúþìêÏàì þ¬éïÊü¬®¬¬úìêÀààî®\0\0\0ÀÀ\0\0\0\0\0\0\0À\0\0ïêêà¬¯ìüîÎé®®úîîÞêî¯ÊêêêàééîðàðîÚî®êþëî®ììàï¬®êþàþ®àî\nÎêÚï¬\0êÎ¬®À\0\0\0À\0\0\0\0\0\0\0À\0\0®ÏÊÀ\nÎ®¯¯íêü¬¼êËêîËÎêþ¯ìüüþþîîþ®Þ®í¬¼àúî¬àêíëëï¬êÏíêìì¾êÞàîàî¬îÊêþ¬êÚî\0\0\0\0\0\0\0\0À\0\0\0\0\0\0Ïî¬¬\nÀëîïÎÊì®¬ëîëïìþêî¼¼ààúêêÊ
Ëê­í®þî¾ì­ëïíêìì¬úÏ¬®¬¾¾ÊÞ®êËàúÊÞúîÊ\0êÎ¬à\0À\0À\0ÀÀ\0\0\0\0\0\0\0\0\0®úêà\nÎ¾þÊÚÎ¾®ïîêþþÏþþî®ÏïíêêÊÊÞÊþ®Î®ü¾¾ÊÎ¬®Êîàêþ¯Ïì®Êìªàì¼àîàÊì\0\0\0\0\0\0\0\0\0À\0\0\0\0\0ïî ëîïì¬êîî¯îïïîÞîëËÏ¬®êêïÞ®®­íïêêþÞ¯ïÏìî¾®Þì¾ÚÏÎÊÊêîàîÎÎ®êïàÀÊëî\0\0\0\0À\0\0\0\0À\0\0\0\0\0\0îðéî¬\nìàðëï¯ËËÊÊÚÊËêîð¬î®Êü¼í¬êïî®Þ¬ëÎ®¬­íàëêÞ®þúðàüêÚì®®¯¯ïÏéîéêêëÏ ®Î\0\0\0À\0ÀÀ\0\0\0\0À\0À\0\0À\0ïîÎ¬\núþïî®îþþîþüþ¼®ï¯Ëì®ï®úÏÚàúÎ®ðïêêïîÎ®üúàìïî®¬¬®ÞÞÎÊÊàî þàÞêîàì¬ì\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0ðêðàÀî®ÚþþÚÊàëëêêìïËÎÊîðìàï®úúí®Î¼àïÞ¼ü®íî¾ÞÚïÊêëëïíïîàî®àìðþ®à\0ê\0\0\0\0À\0\0\0\0\0\0\0À\0À\0À¾üêÊ\0àþÏ®ÊÊî¾üííïëêî¯¯Êî¾¾¬¬¬ì®íªÎ¯àîî®þîÊêü¾­îþî®®¯ÏÎì¬®®îÎðí®¾®àààì\0À\0\0À\0\0\0\0\0\0À\0\0\0\0\0\0Îêðà¬þêúí¯ïéìêêúêàüìðüì¾¼þàìþþúëïÊÎïËËÏ¯íîïÎðëÊüüþÎ®¯ïïÏéîºîêììí®Ï Î\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0Àî\nàþÏêààîêüüïíþ®¾®®¾ìêàþúÊÊÏÎ®\0îúîî®îìàêëÊúïÎìî®¼ïÎêÊÊàî¼ì¼àì¾¯®Ï¬à\nÀ\0\0\0\0\0\0\0\0\0À\0\0\0\0À\0\0\0\0\0ààî®Þï¯®¯¬êïüíìþÊúÞ¾Îþ¾®¾üðÀ\0àîËÊúþíîþíêúþÚìêÚðþþþþÊîÊï®ÎÎëìêì®\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0À\0\0êîþ®î¯îÞþÞ¾ü¯ªëàÿÎ®Îþ¼®ÎÞàêà\0Àðîî¾ïÎÊÚéàþïÎÊî®Ëîîàî¬®î¯ÊîÎ¾¾ÞêíêÊà\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0À\0\0\0\0íëÊÞïËÎ®®íêþíìþêëàúàêü¯®þÚÀ\0ëËÏ¯¯®Îïêðëïí®îðéïéïíéì®ðïëìì®¬\0À\0\0\0\0\0\0\0\0\0À\0\0\0À\0\0À\0\0\nÎïëÊî¾þÞþðúïéêúéíìþÎþÞëîÞêÊà\0¬\0îî®ïÎÎËëêÏïîàêààïîàîàêî®ðïàì®¾þîîÊÀ\0\0\0À\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0àîþÊÎ¯ïíàîüïî®¾¾­®¯ÎëÏï\0\0\0éíï¾¾îÎÞàêÞðþÞÎ¾ï­ïí­àîÎ®ìîÊËî¬\0\0\0\0\0À\0\0\0\0\0À\0\0\0\0\0\0À\0\0\0\0\0\0\0\0Êî¾úÞï®¾úÊþþÎÎþíì¯îêÎ\0\0î¬ïÎì¼¾ëïïêîêêëÎïîÎ¬®î®¬î¾Þ¯î¯îÀ\0\0\0\0\0À\0À\0À\0\0\0\0À\0\0\0\0À\0À\0\0\0\0\0À\0\0ÀÀìîêþþíîï¬ïÊëëÊúþþîà\0\0\0\0ÊðþúëËîì¾ÞàíàüíìàðéïëïíéíïêÊêîüëÎ¬àÀ\0À\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0 îþ¾ü¬ëêþþÎüì®þþ\0\0\0À\0\0îÊÎÞî­¯îëïêþëêêîîîêìàêîêÊÞììðëÎàÀ\0\0À\0À\0À\0À\0À\0\0\0\0À\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0À\0\0À\0ÊïïïÎËËëï¯ïï®îì\0\0\0\0À\nïëïîàúÞÊþ¬íí­¯íëïí­îî¬¾¾îî¬\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0À\0\0\0\0\0\0\0\0\0ÀÀ\0\0\0\0\0\0\0\0¯®îÎÊÎ\0À\0\0\0\0\0\0ÀÊîÞìëïíîÏ®êîìî¬àîî­­îìì¬\0\0\0\0\0À\0À\0À\0À\0\0\0À\0\0\0\0\0\0\0\0\0À\0À\0\0À\0\0\0\0\0À\0\0\0À\0\0\0À\0\0\0\0\0À\0\0ÀÀ\0À\0\0\0\0\0\0Àà®ëïíêúúËÎ¯ïïïéëÎîî\0\0\0\0\0\0\0À\0\0\0À\0À\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0À\0\0\0\0\0À\0\0À\0\0\0\0\0\0\0\0\0\0À\0À\0\0À¬êïìîî®îîÎÊàîîàà\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0À\0\0\0\0\0À\0\0À\0\0\0\0\0\0\0ÀÀ\0\0\0\0\0\0\0\0\0\0\0À\0\0ÀÀ\0À\0\0À\0À\0\0\0\0\0\0\0\0À\0À\0ÀÀÊÀÀÀ\0\0\0À\0\0\0À\0\0\0\0\0À\0À\0À\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0À\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0À\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0À\0\0À\0\0\0\0\0\0\0\0\0\0\0À\0À\0\0À\0À\0\0\0\0\0\0\0À\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0À\0À\0\0\0\0\0\0\0À\0\0\0À\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0À\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0À\0ÀÀ\0\0\0\0\0\0À\0\0\0À\0\0\0\0À\0\0\0\0\0\0\0À\0\0\0À\0\0\0\0\0\0\0À\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0À\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0À\0\0\0\0À\0\0\0\0\0À\0\0\0\0\0\0\0À\0\0\0À\0\0\0À\0À\0\0\0À\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0À\0À\0\0À\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0À\0À\0À\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0À\0\0\0\0À\0À\0À\0\0\0\0À\0À\0\0À\0\0\0\0\0\0À\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0À\0À\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0À\0\0\0\0\0\0\0\0\0À\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0ÀÀ\0\0\0\0\0\0\0\0\0\0ÀÀÀ\0À\0À\0\0\0\0\0\0\0À\0\0À\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0À\0\0\0\0\0À\0À\0\0\0\0\0\0\0\0\0\0À\0\0\0À\0\0À\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0À\0\0\0\0À\0\0\0\0\0\0\0À\0\0\0\0\0ÀÀÀ\0\0\0\0\0\0À\0\0\0\0À\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0À\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0À\0\0\0\0\0\0\0\0\0À\0\0\0À\0\0\0\0\0\0\0\0\0\0ÀÀ\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0À\0\0\0\0\0À\0\0À\0\0\0\0\0\0\0ÀÀ\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0ÀÀÀ\0\0\0\0À\0\0\0\0\0\0\0\0\0À\0\0\0À\0\0\0\0À\0\0\0À\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0À\0À\0\0\0À\0À\0\0\0\0À\0\0\0À\0\0\0À\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0À\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0À\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÀÀ\0\0\0À\0\0À\0À\0\0\0\0\0\0À\0\0\0À\0\0\0\0\0\0\0\0\0\0\0ÀÀ\0\0\0À\0\0\0\0À\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0À\0\0\0À\0\0\0À\0\0\0\0\0\0À\0À\0À\0\0\0\0\0À\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0À\0\0\0À\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0À\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0À\0\0À\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0À\0\0\0\0\0\0À\0\0\0\0\0À\0\0\0À\0\0À\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0ÀÀ\0\0À\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0À\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÀÀ\0\0À\0\0\0\0\0\0À\0\0\0\0\0\0\0À\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0À\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0À\0\0\0À\0À\0\0À\0\0\0\0\0À\0À\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÀÀ\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0À\0\0\0\0\0À\0\0\0\0\0À\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0À\0\0\0\0À\0\0\0\0À\0\0\0À\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0À\0À\0\0À\0À\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0À\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0À\0\0\0\0\0À\0\0\0\0\0\0ÀÀ\0\0\0\0\0\0À\0\0\0\0à¼\r	© \0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0À\0À\0\0\0\0\0\0À\0\0\0\0À\0\0À\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0À\0\0À\0\0\0\0\0À\0\0\0\0À\0\0\0À\0\0\0	¿½Ù»\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0À\0\0\0À\0\0\0\0\0\0\0À\0\0ÀÀ\0\0\0\0\0\0\0\0À\0\0\0\0À\0\0\0À\0\0\0\0\0À\0\0\0\0\0\0\0À\0\0\0ÿ½½¿½»Ù°°				\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0À\0\0À\0\0\0\0À\0\0ÀÀ\0\0À\0\0\0\0\0\0\0\0\0\0À\0À\0\0À\0À\0\0À\0À\0\0\0À\n¿ÛÛÛùù½¹­\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0À\0À\0\0\0\0\0À\0\0\0À\0\0\0\0\0\0	\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0À\0\0\0\r½ùûÿ¿ÛÛÛ¹¹ð¹\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0À\0\0\0\0À\0\0\0\0\0\0À\0\0\0Ê \0\0\0\0\0\0\0\0À\0\0\0À\0\0\0À\0\0\0\0\0\0\0\0\0À
ÛÛûý¿Ûûß½½¹Û
		é­©\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0ÀÀ\0\0\0\0\0\0\0\0\0À\0\0\0À\0ÀÀÀ\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0ÀÀÀ\0À\0½¿¿Ûùÿ»ÛÙù©\0\0\0\0\0\0\0\0À\0\0\0\0\0À\0\0\0\0\0\0\0\0À\0\0À\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0½ùÿ¿ß¹ûÝ½»	Ù
Ë			©­°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0À\0À\0\0Àð\0\0À\0\0\0\0\0À\0\0\0\0\0\0\0\0À\0À\0\0\0\0Àùÿ¿ÛÛûß»Û
¹½¹ÙÉ	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0À\0\0\0À\0À\0\0\0ÀÀ\0ÿ\n\0À\0\0À\0À\0\0\0\0\0\0\0À\0À\0À\0\0À\0ùÿ½ûÿ½¿¿ûÛ½¹Ù°¹		
	©¹\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0À\0\0\0ÿðÀ\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0À\0À\0\0\0	½¿½ÿ½ùÿùù½½\r©¹ù¹Ù\r©\0\0\0\0\0\0À\0\0À\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0À\0\0ùí°\0\0À\0\0\0\0À\0\0\0\0À\0À\0À\0\0\0\0\0\r\0¿ÿýÿùÿ¿¿ùù¹	¼	
¹\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0À\0\0À\0\0\0\0\0ÀÀûËÀ	 \0\0\0\0\0\0\0À\0\0\0\0À\0\0\0\0\0À\0\0\0ÛÛûÛÿÛßù	°		¹À\0\0\0À\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0À\0\0\0\0À\0\0ÿ\0©­¿\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0É\0\0ÿýÿÿ¿½ûý¿°É°Ù		¼Û\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0À\0\0\0\0\0\0ÀÀÿÿÿÿÿð\nÀÀ¬\0\0\0\0\0\0ÀÀ\0À\0\0\0À\0\0À\0ÿ¿ûùûÿßû½Ù½	°°°°Ù¹	°Ú\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0À\0\0\0\0	ûûÿÿÿÿÿð\0\0\0\0\0\0\0\0\0À\0\0\0À\0\0\0À\0À\0\0Ïÿß½ÿÿÛûÛ¿¹	©\0©
\r		Ù©É\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0À\0\0\0\0\0Àÿ»ÿÿÿÿÿÿÿ\0\0ÀÀÀ\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ¿ûùûÿÿ½		°Ð\0¹
©Û
\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0ÀÀÿÿÿÿÿÿÿÿÿûË\0\0\0\0\0\0\0\0\0\0À\0\0\0À\0\0\0ÿÿùýÿý¿ù½»ù¹°¹¹	¹©¹						\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿðËÀ À\0\0À\0\0\0À\0\0\0\0\0\0\0ÿÿÿûùûý¿ÛÙ			Ð°°Ð¹	©¹Ù©\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿð\0À\0\n\0\0\0\0\0À\0\0\0À\0\0\0ÿÿ½¿ß¿Ûù¹¹¹ð½©°¹	­
						ÐÉ \0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0À\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿð\0\0ÀÀÀ\0À\0À\0À\0\0À\0\0ÿÿýÿûûý½¿	Ð¹		\r©	©	©	¹	É\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Êÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿðð\0\0\0\0\0\0\0\0À\0\0\0\0\0\0ÿÿûûßý¿¿Û
	©		©¼°¹	Ð\0\0\0\0\0À\0\0\0\0\0\0À\0\0\0À\0\0\0À\0\0À\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0ð\nÀ\0\0À\0\0\0À\0\0°ÿÿÿßûùùûÙ	°©			\0Ð°¹Û	\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0ÿ½ÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0À\0\0\0\0\0À\0\0\0\0ÿÿÿ¿¿ÿ¿¹©°
°
\0\0¹©			É
\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0É¯ÿÿ»ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0 \0 \0\0\r\0\0Àÿÿýÿÿ½½¹		É	©	

\0¹\0°°	©©À\0\0\0\0À\0\0\0\0\0À\0À\0\0\0\0À\0\0ÀÀ¬ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\n\0\0À\0\0\0\0À\0ÿÿÿÿ½¿ùÿ
¹	ù°	©		\0 				
	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0ÀÀ\0¯ÿ¿¿ÿ¿ÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0\0 \0\nÐÿÿÿûÿý¿½¹
¹		©			\0			
\0Ú	É\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿûÛÿûÿ»ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0À\0É\0\0\0\0ÿÿÿÛÛùù°°¹	°\0Ð\0					°\0\0\0\0\0\0\0\0À\0\0À\0\0ÀÀ\0\0ÿÿÿÿ¿ÿûÿûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0
Ê\0À\r\0ÿÿÿÿ¿½¿	°©°		


\0\0	©	É	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿÿù¿ÿÿÿÛÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ À\0¼\0\0À\0ÿÿûÿßÿ½©­°	ûÛù»	\0Ð
	\0\r°°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿÿÿûÿÿÿÿð¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0¬\0 	ÿÿÿÛûÛù°	©	ß½½Ý¹ù©©\0
\0\0Ð	\0À\0\0\0\0\0\0\0\0\0\0À\0\0Ïÿÿÿÿÿÿÿ¿ÿÿÿÿ»ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð\0\0À\0àÿÿÿ¿ßûÛÉ°ùùûÿÿß¿¿½¹		°°\0\0\0\0\0\0\0À\0\0\0\0\nÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿û¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð\0\0\0À\0Àÿÿ½ÿ¿¹
	¿ÿý¿ûßÛÿÛÛÛ\0	\n	©\0\0\0\0\0\0\0\0À\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿÿÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð\0\0\0\0\0ÏÿûßÛûù
Ð°¹½½¿ÿÿÿ¿ý¹ÿûù½¹
ÚÐ	\r	©\0\0\0\0\0À\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿÿûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð\0\0À\0­ÿûûÛùûÿÿ¿ÿ½ÿ¿ÿ½½¿ÛÛðÐ \0\0\0À\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð\0\0\0Àÿ¿ùùÉÙ¹Û¿ùÿ¿ÿÿÿûßÛÛÿù¿
É			­\0\0\0\0\0\0\0\0\0\0ïÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0\0ý¿°»Û½½ýÿßÿÿÿÿûÿýùÿÛùûÐ°Ð\0\0\0\0À\0\0\0ïÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ©\0\0À\0\0ÿ°Û½¿»ûûÿùÿÿÿÿÿ¿ÿùýûÛ½Ù	
	\0\0À\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿ»ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0ù\r½½ûÛùý½ÿûÿÿ¿ÿÿÿÿ½¿ûùùù­©ðÚ\0\0\0\0\0\0ÏÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿýýúËÞÿÿ¿ÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿþ\0\0\0 \0\0\0\0\0\0¿ÿû½¿½½ÿ¿ÿßÿÿÿÿý¿ßÛ
\0\0\0\0ÀËÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿýûý½\n\0©ÿÿÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿùÀ\0\0\0\0\0\0ËÛ©¹ûýûùùù©ûÿßÿÿßßÿÛûÛûùù°ÚÉ
É\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿïùý­
\0\nÿÿÿû¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿð\0\n\0\0\0À\0\0À\0ý¿¿¿ÿ¿Ûûÿ¿ÿßý½½½é°°\0\0À\0Àÿÿÿÿÿÿÿÿÿÿþÿéùùé­©é\0ÙÉ\0\0\0\0ÿÿÿ¿ÿ»ÿÿÿÿÿÿÿÿÿÿÿÿÿ\0 \0\0\0\0\0\0\0\0\0¹½¿ûß¿ÛûÛûß¿ß¹¹½¹­°ù\r \0\0\0\0\0ÿÿÿÿÿÿÿýù
	\0\0	\0ð  À\0\0\0\0ÿÿÿÿû¿ÿÿÿÿÿÿÿÿÿÿÿÿð\0\0À\0\0\0\0\0ýùùÿûß¿½°		½ÿûù¹¹½\0	°\r\0\0\0\0Îÿÿÿÿÿÿÿÿ àÀÀ\0
ÚÚ¼\0Ð\0\0Àÿÿÿÿÿ¿¿ÿÿÿÿÿÿÿÿÿÿûÀ\0\0\0\0À\0\0\0\0\0À½¿ÿ½ùÿ\0Ûý½¹Ù¹¹¼\0\0À\0\0	ÿÿÿÿÿÿÿÿß\0\0		©
\0\0À\0		\0	ÿÿÿÿûûÿÿÿÿÿÿÿÿÿÿÿÞ\0\0\0\0\0\0\0\0À\0©ùù¿ûÿûÿ¹\0\0	½¿ùÿ¿¹ÛÙ		¹\0\0\0	\r©\r¼\0\0\0\0\0Ï¿ÿÿÿÿÿÿÿþ
\0\0	\0ËÀð\r©	à\0\0	\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿû\n\0\0À\0\0À\0\0\0\0½¿¿ý¿ùÿûùÙ\0		ùÿùÙÿÛÙÀ\0\0¹¹\0\0\0\0Àÿßÿÿÿÿÿÿÿýü\0\0	¬	\0°\0ðÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0Ùùýûý¿ý½ù°	À\0ù¿Ùß		\0\0É
Úð\0À\0\0\0ÿÿðÿÿÿÿÿÿÿú\0\0À	 ¼¼		 ­\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿðð\0\0À\0\0À\0\0\0\0\nûÿûßÿÿ¿ÿ»Ù\0\0\0	\0\0\0¹
\0\0\0\0\0ÿÿÿÿÿÿÿÿÿýù\0\0\0\0\0\0ÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿù
\0\0\0À\0\0À\0\0\0	ÿ¿ûýûÿß°\0	\0	\0		\0	\0\0\0	½°\0\0\0\0Àßÿÿÿÿÿÿÿÿë\0\0\0	\0©é­\0° ¬ ÿßÿÿÿÿÿÿÿÿÿÿÿÿÿýþ\0\0\0\0\0\0\0\0\0\0\0ûûÛÿÿÿÛûÛ	\0	\0		\0\0\0\0À\0ð\0À\0\0\0Ë½ÿÿÿÿÿÿÿÿÚÀÀÐºð ÚÚ

ûÿß¿ÿÿÿÿÿÿÿÿÿÿÿÿù\0\0\0À\0\0\0\0\0¿½ÿÿÿÿûûÿ¹°\0
À°\0		\0	\0\0\0	¹ù	°À\0\0À\0\0\0Þÿÿÿÿÿÿÿÿÿ\0\0	\nú
«© º ý¿¿ÿÿÿÿÿÿÿÿÿÿÿß¿Ú\0\0\0\0\0\0\0\0\0\0	ßûÛûùÿÿý¿ýù		Ë
É\0\0	\0\0\0	\0	À\0¹ÛÙ°\0\0\0À\0ðûÿÿÿÿÿÿÿÿÿý°\0\0	
ªº
\0 ºÿÿÿÿÿÿÿÿÿÿÿÿÿÿ½ééà\0\0\0\0\0À\0\0¹ÿÿßÿûÿ¿ùûÿ½¹©É\nÉ\0\0\0\0	
¹Ù©\0\0\0\0\0\0íÿÿÿÿÿÿÿÿÿÿþ
À¹««©©ª\nÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ°ù	à\0\0\0\0\0\0\0Ð
ßùûÿÿÿýÿÿýùûÛ\0\0\0	\0\0À\0\0Ú¹Ùé\0À\0\0\0\0\rÿÿÿÿÿÿÿÿÿÿÛì\0\0\0\n  º	ëÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÐ\0à\0\0\0\0\0\0À\0À\0¿ÿ¿ÿûÿ¿ûÿ¿¿¿ý¹ûûÐ°\0\0Ë	\0\0\0É	©½°\0\0\0À¯ÿÿÿÿÿÿÿÿÿÿÿÛ \0 º«©©ºÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿð\0\0\0	\0\0ý½ÿÿýÿÿÿýÿßÿ¿ÿÿù¹\r	\0\0À\0\0ð½¹\0\0\0\0\0\0éßÿÿÿÿÿÿÿÿÿÿÿÿß\0\0
  ºº
ÿÿÿÿÿÿÿÿÿÿÿÿÿý°°¼\0\n\0\0\0\0 \0¿ûùùÿÿÿ¿ûûÿý¿ÿÿÿßð	\0\0\0\0\0\0ð\0\0\0\0\nÿÿÿÿÿÿÿÿÿÿÿÿÿûë »ª\n\n© °ÿÿÿÿÿÿ½½¿ÿÿ¹	­\0\0\0\0\0	\0É	ûßÿÿÿ¿ÿßÿÿûÿ¿ÿÿÿÿÿ¹¹	¹\0À\0\0\0½¹ù½\0\0\0\0ÀýÿÿÿÿÿÿÿÿÿÿÿÿÿýðÀ
ª»ÿÿÿ¹¹¹­	\0\0\0\0À\0\0\0\0À	\0ßûûÿÿÿ¿ûÿýÿûßÿÿÿÿÿÛ\0ÀÐ	Ûù½¹¼\0\0\0\0ÿÿýÿÿÿÿÿÿÿÿÿÿÿÿ»«©¬\0«ª°°¿ûû\0\0\n\0\0\0\0\0\0\0\0¿ÿßÿûÿÿÿÿûÿßù½ÿÿÿÿÿ½¹	\0\0	¿½Ð\0\0\0\0\0ýÿùÿÿÿÿÿÿÿÿÿÿÿÞ\n\0\0¹©	û¿©\0ð	\0\0\0\0\0À\0\0\0\0\0­ûÛÿÛÿßÿÿûÿûÿÿûýÿÿÿ\0¹ùùý»ù¹À\0\0\0\0\0\0ÚßþÿÿÿÿÿÿÿÿÿÿÿÿÿÀ\0\0\0
\n¾»¹	\n	\0À\0\0\0\0À\0¿ÿÿ¿ÿÿ¿ÿÿÿÿûÿ¿ÿù\0¹\0Ùû¿¿Ùûù½\0\0À\0¯û	ÿÿÿÿÿÿÿÿÿÿÿù«À	À\0
¿©\0\0\0\0\0\0\0\0\0\0ÿýûßÿÿ¿ÿ¿ÿÿÿÿÿÿûß½½\0ùù¹	Ý½½¿¹
	 \0\0\0\0À\0\0Ð\0ÚÉïÿÿÿÿÿÿÿÿÿÿÿü\0\0\0	©é¹­\0\0\0\0\0À\0\0\0Ûûÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÛùÛÛý½¹ý»ÛùùÙù½\0\0\0\0\0\0\0\0À\0ÿÿÿÿÿÿÿÿÿÿÿýûð\0\0\0\0\n»\0\0\0\0\0\0\0	ÿýÿÿûÿ¿ÿ¿ÿÛÿÿÿÿùûÿÿÿÿÿÿÿÛ½¿Ù\0\0À\0\0À\0ÿÿÿÿÿÿÿÿÿÿÿÿÿð\0\0\0©¹»É\0\0\0\0À\0\0\0\0\0ÿÿ¿ùýýÿßÿÿùûÿ½ùÿ¿ÿ¿ÿÿÿÿÿÿÿý¹Ù½ÿÛ½°¹°\0\0À\0\0ï\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÛï \0À\0	¼	\0\0\0\0\0\0\0	ÿÿÿ¿ûûÿÿùÿÿÿÛßÛÿùÿÿÿÿÿÿÿûý¹»¹ùù¹Ù	\0\0\0\0\0¼ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÛÀ\0\0À	¹\0	 \0\0\0À\0ÿýÿÿÿÿ¿ÿÿ¿Ûÿûÿÿ½¹ÿÿÿÿÿÿÿÿÿÛÛû\0À\0À\0ðËÐ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0©»\r	\r \0\0\0\0\0½¹ûùÿÿÿÿÛÿÿÿÿÿÿÿùÿÿÿÿÿÿÿÿûÙù¹ùý»¹°\0\0\0\0À\0¬¬ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿðà\0°»	\0\0\0\0\0\0\0ÛÛÿûÿÿÿ¿ÿÿÿÿÿÿÿÿÿÿùßÿÿÿÿÿÿÿýÿÿ¿¿ýýû\0\0À\0\0ÀÐ	ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿùë\0 ¹\0ÐÉ\0\0\0\0\0\0¹¹ÿÛÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿû¿ÿÿÿÿÿÿÿù¹ÛÛÿßÿÛûùÿù\0\0\0\0\0\0\0
ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿùë¹		\0\0À\0ÿý¿ûÿÿÿÿÿÿÿÿÿÿÿÿÿÛÿÿÿÿÿÿÿùÛ¿ÿ¿¿ÛÛù¿ù\0À\0\0ð\0\0\rÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿðúð\n¹		\0	\0\0\0\0\0\0\0¿ÿÿÿÿÿÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÛÛÿÿßûÛùý½ùÿ\0\0\0ÀÀ\0\0\0­ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿­¯\0¹\0\0\0\r\0\0\0\0\0\0ÿ¿ûßÿÿùÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ½¿ÿýÿÿßÿÛ½¯\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿü¾° ¹¹		\0\0\0\0\0\0ýÿÿÿÿ¿ÿÿùÿÿÿÿÿÿÿÿùÿÿÿÿÿûß½½ûûûûÛý¿ùÛÛ\0À\0\0\0À\0¼¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿû©\n\0	\0\0\0À\0\0\0Ðÿûÿ¿ÿÿßÿÿÿÿýÿÿÿÿÿÿû¿ÿÿÿÿý½ÿÿÿÿßÿý¿½°Ð\0\0\0\0\0\0\0\0	Ïÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿª \n\r\0\0	\0\0	\0\0		¿ÿÿÿÿÿ¹ÿÿÿÿÿ¿ÿÿÿÿÿýùÿÿÿÿÿ¿ÿÿûÛÿÛùùùð«\0À\0À\0\0ÊÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÛ¯\0	\0Ð\nÀ\0\0\0\0 	ÿýûÿÿùÿÿÿÿÿÿÿßÿÿÿÿ¿ÿÿÿÿù½¿ß½ùÿÿÛÿÛûÛÜ\0\0\0\0\0\0	\0Éÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¾ \0\0À\0\0\0\0\0Ð
Ûûÿÿûÿÿÿÿ¿ÿÿÿûýÿÿùùÿÿÿýùÿÿ¿ÿ¿ý½ÛÛÐ\n\0\0À\0\0\0\0¾ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿë«Ê°¼\0À\0É\0\0À\0	ÿÿÿÿÿÿÿÿûÿßÿûý¿¿ÿù	ÿÿÿÿ¹Ù¹ùûÛýùûûù½°\r\0\0\0\0\r\0©ÿÿÿÿÿÿÿÿÿÿÿÿý¯ÿý¼ðº		\0°À\0\0\0\0	\0ýÿ¿ùÿÿÿÿßûùùý¿ÛÛð¹ÿÿÿÉ¿ÿßý»ÛÙÙ½°Ù\n\0\0\0\0\0ËÀ\0Úßÿÿÿÿÿÿÿÿÿÿÿÿð½®»ªÚ	\0\0\0À\0\0\0
\0¿¿ÿÿßÿÿÿÿûù¹Ù½½¿ÉÿÿùÛý¹É½¹«ÛÛ¼\r\0\0À\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿú\n\nÊ¯	À¼\0\0\0\0\0\0\0\0	ßÿ¿ý¿ÿ½ÿÿ½ûÛ¹ùùùð¿ÿÿù		Û½ÛÛÙ½\0\0À\0\0\0\0\0éûÿÿÿÿÿÿÿÿÿÿÿÿ¿¿ª«úÿ¹\0\0\0\0\0\0ÐÀ½ÿÿÿ»ÿûùù½½ù¹¹ÿÿû\0À	½½¹	©ð°\0\0\0\0\0À\0Ëüÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿Û\r\0\0\0\0À\0\0\0\0
¿ÿ¿¿ßßßùðÿÿÙ		Û¿¹ù\0À\0\0\0ÀÀ\0\0é¯ÿÿÿÿÿÿÿÿÿÿÿÿÿÿû¯ÿû\r\n\0À\0\0\0\0\0\0\0\rÿÿÿ¿¹\0\r ©ù		ù°\0\0	
éÙð¹ð\0\0\0\0\0\0\0\0\rÐßÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð	\0\0\0\0\0\0\0\0À\0\0ÿÙ\0	ù½ù	\0\0	É\0\0\0°ÿû\0		©	\0\0\0ð\0\0\0À\0Î ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ°\0\0\0\0\0À\0\0\0\0À¿°½°ÿÛÿù\0\0\0		\0		Ïùù\0\0\0À	\0
Ù­°ðÀ\0\0\0\0À \n¿Ðÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿùÿ
É\0	À\0À\0\0\0\0\0	ýÿûùÿ»	
\0\0\0\0\0\0\0\0	\0½Û\0À\0\0\0\0\0Ð\0Ï\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿÿ	©\0\0\0\0\0\0\0\0\0\0\0¿ÿÿÐßýùß©\0\0	é\r½¹ùÉ\0	\0À\0\0Ù	À	\0À\0\0\0\0\0\r°\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿýÿýûÿ\0Ð\0\0\0\0\0\0\0\0\0\0\0¿ß¿ÿ»
ÛûûßË\0»ý¹\0\0ð\0\0\0
Ë		©Àù\0¼\0\0À\0\0\0\nÿÿÿÿÿÿÿÿÿÿÿÿÿÿûû¼ù¹	ÀÀ\0\0\0\0\0\0À\0\0\0ÿÿßý½½°ÐÐÚÐÐ½½ýûùù¹	ððÙ¹°Ð

À\0\0\0\0\0\0\r	ïÿÿÿÿÿÿÿÿÿÿÿÿÿÿð\rúËÏ¹»
\0À\0\0\0\0\0\0\0ÀÿÿûÿûÛÛß¿¿¹½½»¹ý¹ûÿßÙð	  ðÀÐ	©ÀÐ\0\0\0\0\0\0\0\0\0éùÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿\n° ¹û¹ù\0\0\0\0\0\0\0\0\0\0\r¿ûÿûÿÿ½½ùùÿûýÿûÿßûÿ¿ÿ¿½¹ùðÐ\0\0\0À¹\0À\0\0À\0À\0\nßÿÿÿÿÿÿÿÿÿÿÿÿÿð­ú\n\n
ûÿ¹¹½	©\0\0\0\0À\0\0ÿÿÿÿÿÿÿûÿÿÿÿÿÿÿÿß¿ýÿÿûÛÛ½¿»Û
	é	\0\0\0\0\0\0\0\0\0\0\0ÐÙÿûÿÿÿÿÿÿÿÿÿÿÿÿÿ¬¼\0© «ÿÿÿ¿\0\0\0\0\0\0\0\0\0	Ûÿÿßÿÿÿÿÿÿÿÿÿÿ¿¿ÿ¿ÿýÿÿÿÛ»Ý¹ýù\0À\0À\0\0\0\0\0\0\0\0\nÛßßÿÿÿÿÿÿÿÿÿÿÿÿ	ëÊÿ¿¿ÿÿû¹¿üÐ\0\0\0\0\0\0\0À\0½½ûÿùÿÿÿÿÿÿÿÿýÿÿýýÿÛÛÛý¹Ù¹ý»Û\0\0\0\0À\0\0À \0\r­½½ÿÿÿÿÿÿÿÿÿÿÿð \0ÿûÿÿÿÿÛû¹ý¹¿\0	
\0\0\0\0\0\0\0ÿÿÿ¿ûÿÿÿÿÿÿÿÿÿÿÿ»½½¹ù¹½©°°\0\0\0\0\0\0\0\0\0\0	ý°ÿÿÿÿÿÿÿÿÿÿÿÿÿúéàÿÿÿÿÿûÿÿßßûý¹ºÐ¼	\0\0\0\0\0\0ûýûßÿÿÿÿùûßÿÿÿûÙÛÙ½¹½Ë		\0À\0\0\0\0\0\0ßÛý¿ùùýÿÿÿÿÿÿÿÿÿÿûÊ	ÿÿÿÿÿý¿ÿûûßÿ©¬\0	\0\0	­\0\0\r\0	»½¹¹ùÿùûÙ¹ÿÿÿßû¹Û½°½
°Ð\0\0\0\0À\0\0\0 ÿý¿ùÿÿ¿ûÿÿÿÿÿÿÿÿÿÿ¿û ÿÿÿÿÿûÛÿÿÿÿÿù\0\0\0\0\0\0\0\0¹Ù¹¿ùÿûùù	ùù½½\0Ù		\0\0\0\0\0\0\0\0ðÛ¿ýÿßÿßýÿ¿ÿÿÿÿÿÿÿÿÿÿÞÿÿÿÿù½ýý¿¿ÿùËð\0\0\0\0ÚÛà­\0	°ÿÿÿ¿ù\0	\0\0\0\0À\0\0\0\0À\0ýÿÿÿÿÿýûÛËßßÿÿÿÿÿÿÿÿÿ»ÿÿÿý¿»½ÿÿÐ\0\0Ð	\0\0\0ÛÐ\0Ù¹©				\0ýù¹ÿù	ù¹Ùùù\0Ð\0\0\0\0À\0\0\0\0\nÿûýýÿý¿½ûÛÚÿÿÿÿÿÿÿÿÿÿüÿÿÿû»ÿÿ°\0\0\0\0ð\0	 Ð¹	\0\0\0		ûÿßÿû\0		\0\0\0À\0\0À\0\0\0\0\0\0\0\rùÿýûÿ½¿ðúÚ°­¿ÿÿÿÿÿÿÿÿ¿ÿÿÿÿÉ	\0°\r\0À\r­\0\0\0\rùÙùÿ	\r©	\0À\0\0\0\0\0\0\0À\0\0\0­½¿ßÛÐ½
É\0ÉÿÿÿÿÿÿÿÿÿÿÿÙ¹ùð\0\0\0\0\0\0\0\0\0\0\0		\0	¬\0\0
¹½½\0\0À\0\0\0\0\0\0\0\0\0\0\0\0ÛÛÐ°ð°­\0 \0ÊÀÿÿÿÿÿÿÿÿÛÿû\0	À\0°ðÀ\0\0\0\0\0\0Ð		°\0\0ð\0\0À\0\0\0\0À\0\0\0\0\0\0\0\0À\n
\r		À¬ÿÿÿÿÿÿÿúÿùý\0\0\0 À\0\0\0\0\0\0\0\0\0	\0	ÛùùÐ\0		\0\0\0\0\0\0À\0\0\0\0\0\0\0ÀÐ\0\0à	\n\0\n\0à\0ýÿÿÿÿÿÛÿ¹ùÿ
	¬\0	\0\0\0\0\0\0\0\0\0\0À\0		°À	\r		½¹\0\0\0\0\0À\0\0\0\0\0\0\0\0\0À\0\0\n\0
À	àÉ
\r\0\0É\nüÿÿÿÿ ÿÿû\0\0\0É\0\0\0\0\0À\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0ÉÀ	\0	À	 
	\n	É°ð°ûÛÊ
ÿù¹ù¹ÿý\0	\0\0\0\0\0\0\0À\0\0\0\0	\0	\0	\0	\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0 
\0éÊ	\0\0\r\nÐ\0°\0\0­­¼¾
ðÿÿùÛÛ»ÛÛÿà\0À\0\0\0À\0\0\0\0\0	À
\0\0		À	\0	­	\0\0\0À\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0	\0	\0¼\0Ð­\0\0¼\r\r©\0
Ë	­«ÿÿÿÿÿÙßÿý½½ÿðÀ\0\0\0\0\0\0\0\0\0	\0	\0É\0	\0\0\0À\0\0\0			\0\0\0\0À\0\0À\0\0\0\0\0\0\0\0\0À\0©Ë	\0¼\r	\0°
\0¼»ðÿÿÿÿÿùÿÿÿÿÿÿ\0	\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\r\0\0\0\0\0\0É\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0É©\0°\0°		À	ÀÐ	\né\0Û°
\n\nÀ
ÿÿÿÿÿÿÿÿÿÿÿÿð\0\0\0\0\0\0\0\0\0\0\0\0Ð\0é\0\0	É\0\0\0\0	Ð	\0	\0À\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\r\0­Ð
\0Ð\r	àÉ«\0¼ ðÿÿÿÿÿùÿÿÿÿÿÿù\r À\0\0À\0\0\0\0\0À\0\0
À°\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0À¼°\r			
\nÉ
\0\0	
	»\0°©  ÿÿÿÿÿùÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0É\0	É\0\0\0\0\n\0\0		\0\0\r\0\0\0\0\0À\0\0\0\0\0\0À\0\0\0	©\r 	à\nÀ	\nð	\0ð°	Êÿÿÿÿÿùÿÿÿÿÿÿÿ\0Ð\0\0\0\0À\0À\0\0ËË\nÐÉ\0\0\0\0À\0\0\0	\0	À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0ð©		\0¼É\0\0Ú			àð©ð ÿÿÿÿÿùÿÿÿÿÿÿÿ \0\0\0\0\0\0\0\0\0\0\0\r\nÀ\0À\0\0\0\0\0\0\0ÉÀ\0\0ÀÊ\0\0\0\0À\0\0\0\0\0\0\0ð\r\r	ÀÐ¬	À\n\r	\0ÐÀ
\0	É éÿÿÿÿÿû¹¹ÿÿÿÿÿÿÿÀ\0\0\0\0\0\0\0\0\0À\0		°\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0À\0\0\0		\r© 	©\0Ú°ÊÐ

É\0ðÐ 	\0ÿÿÿÿÿÿùùÛÛÿÿÿÿÿÿÿ°\r\0\0\0\0\0\0À\0À	 \0\0\0\0ÀÀ\0\0\0\0\0\0\0\0\0\0\0À\0À\0\0\0\0\0\0\0¼\0¼\0°É	\0ÉÉ\0\r\0À\0Ð\0­	à°ÿÿÿÿÿÿÿÛÿý¹ÿÿÿÿÿÿÿÐ\n\0\0\0\0À\0\0\0\0\0\r\0\0\0À\0À\0\0\0\0°À\0À\0\r\0\0\0À\0\0\0À\0\nÐ	­\0		\r\0À\0é\0		Ë\0\0 ÿÿÿÿÿÿÿùùÿÿÿùÿÿÿÿÿÿÿÿÐ\0\0\0\0\0\0\0\0\nÚ\0\0\0\0\0\0\0\0\0\0\0\0\0ÀÀ\0\0\0\nÀ\0\0\n\0\0\0\0À\0\0\0\0\0\r	­\0°\r\0
Ê	À\0\r\0ÐÊ\0ËÀ
Ë\n	ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0­\0\0\0\0\0\0\0\0\r\0\0\0À\0\0À\0\0\0À\0\0\0\0À\0É\0\0\n\0À\0\0\0\0À\0\0¬\r\n\r\n\r\r\n
	É\0
À\0	ªÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÐ\0°\0À\0\0\0É\0\r\0\0\0\0\0\0À\0\0\0\0\0\0\0À\0\0\0\0\0À\0\0\0\0À\0\0\0\0\r\nÐÉ\n
ÀÀàË\0 \r\0\nÐ\0	Éà°ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÚ\0\0\0°\0\0\0\0\0\0à\0\0\0\0À\0\0\0\0\0\0\0\0\0\0
\0\0\0\0\0\0\0\0\0\0ÀÐ
\0 É	\0É	À\r\0Ð\0
ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0ùÀ\0\0é\0\0É\0	\0\0\0\0\0À\0\0À\0À\0\0\0\0\0\0\0\0\0\0	\0\0À\0\0\0\0\0 ÐÀ\0	ÊÉÉ	ÀÀ©\0Ð	\0\n

®ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÐð°\0\0\0\0\0\0\0É­\0À\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0À\0\0Ð\n©\0\0©\n	Ê
\0É	© \nÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ°ðÀ\0\0\0\0\0\0\n	\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0
É\r¬©é	É\r\0Ð\n	\0é\0ÚË\0Ú° ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿðû\0À\0À\0\0À\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\nÀ	©\0É\0\0\r\0Ð	©\0É\0À«°¼\n\nÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿù \0\0\0\nÀ\0\0\0\0À\0\0\0À\0\0\0	\0\0\0\0\0À\0\0\0\0\0\0\0Ë\0\0\0\0\0\0
\0\r
	À¼\0\r©Ê©\0\0°\0°	À¹Ú©	ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿû\0\0ÊËÀ\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0À\0\0À\0\0°À©\0ðÊ\0	ÉÀÐ	\r	Ê¬	©©\nÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿý\0\0\0Ð\nÐÉÀ\0\0\0\0À\0\0\0\0\0À\0\0\0\0\0\0À\0\0À\0\0\0\0\0\0\0\0\0©ÊÉ­\0Ð\0	\0Ð\0\0À		 \0É	¬\0Ðÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿù¬ Ð
\nÐ\0\0\0\0\0\0\0\0\0\0\0\0\0
À\0À\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0ËÀ 		 Ú  		Ë	\0À	\r
\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\r ü­\0\nÀ\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0À\0\0À\0\0\0		éÊÀ©	É¬	\0ÉÉ\0\r\0À\0À¬°\r­ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿý Ë	ÚÉÀÀ\0\0\0\0\0À\0\0À\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0ÊÀ	 \r	ÀÉ\0\0	­\0ð\n\0	 \0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\n\r­ °\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0		À\0\0\0ð\0\0\0ÀÀàÉ\0ÀÐÐÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð°\r­©\0\0\0À\0\0\0\r\0À\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\r­\0¼ 	©	À\0\0\n	\n°\0 ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÙàËÐàÚ\nÐ\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0©À	 ÉÀÐ\0	À\r	\0	¬\0à\0ÐÐ\r\0ÐÉÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð©
	É©\0\0\0À\0\0\0À\0\0\0\0\0\0\0\0\0\0À\0\0À\0\0À\0\0ÐÐ°ÐÐ	\0		Ë\0¼\0é	ÀÚ\0\0\0Ð \0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ½Ê\0\0\0	¼\0\0\0\0\0À\0\0À\0\0\0\0\0\0\0\0\0\0\0\0	
\0À\0\0Ú°À\0Ð\0	É\0ÊÀÊ	À\0°¬ÐÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÛùË	\0°\r\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0	\r	é\0	\0\0	
\r\0ÐÐ\0	¬À
ÀÀÀÐ ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ°ÚÉ\n\0\0¼\0Ð\0à\0\0À\0\0\0\0\0\0\0À\0\0ÀÀ\0\0Ú° \0ÚÀÐÐÀÐ©\n\0¼©	\0À¬Ð	
	\n\n\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÚ	ÊÙ¼	\0\0\0\0\0\0\0À\0\0\0\0À\0\0À\0\0\0\0\0\0\0\0\0À\0	ÉÉà		 \n	\0 ÀÀÀ¼À\r\r
\nÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ­\0À¬\0\0\0à\0À\0\0\0\0\0\0\0\0\0\0\0\0À\0À\0\0ÊÀ\0À	ÀÉ¬\0©ÀÐ°¼\0Ë\nÐ\nÐ°ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûË
	\rË\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0©	\0 \n¬°Ð	\nÉ©\nÀÀÀ¼°À\r\nÀÊÐ«
ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÉ­\0ÀÉ\0\0\0\0\0\0\0\0\0\0À\0\0\0à\0\0\0À\0\0À\r\0É\0Ð	\0©\nÊé ÊÐ\r
	
ÀÐ­	­\nºÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿý°ÊÀ
\nÊ\0ÀÀ\0À\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\nÉ\0À\r	ÀðÜ
É\r	é­\0Ú\nÀÊÐÚ\r¬ðÐ¼ÚÐÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ­\0\0\0\0\0À\0\0À\0ÀÀ°Ð\0\0\0ÀÀ
\nÚ\r à¼	 ÐÀ\0ð©ÀÐ­\0ÙðÛË¼­¯ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿù\0\0	\0À\0\0
\0\0\0\0\0\0\0À\0À\0\0\0\0\0\0\0\0	\r\0Ú	ì\r Ð\0¼	é¹­é
ÚÛ¬Ë¬ÐËìÐÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÛ\0\0©\0ÀÀ\0\r\0À\0\0\0À\0ÀÀ\0\0\0\nÚÚÚ\r Éà¼°©Ë	ËÀÊÐË	í\0ðÉ¹É¼½	¼ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0à©\0\0\0\0\0\0\0\0\r\0 °\0\0\0\0\0\0\0Ð	Éà°À¬©Ë¼¼éË½­¼¼é­À¼ÊÌÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿý°À©\0À\0\0À\0À\0\0\0\nÉÀÉÀ\0\0\0\0ÊÚ	Àé\rÉË\rºÙËÀÚÚÐÐéÀ¹Ú	
\r
	 ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿý»À\0\0\r \0\0\0\0\0
\0\0ÀÀ\0\0	ÀÉ
\0°àÉðÉë¿\r¯ùÉ¬¼¼¬\0\nÀÀÀÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿýÿûÊËÊ\0\0\0\0ÉùðÀ\0\0\0À¼ð¼\réàÚÚÙü¾ÉÏ
É	ËÉ
	àé\n\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿùýûÚùíàð\0àÐ\0\0Àðé\0\0\0\0ì\nÐ­	ËÚ­
Ù½©
ð©àð°ÐÐ\0\nÀÀ\0À©ÀÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿýùïÛ\r\n\0\0©©\0
	ðÚÞ½¯\rÙð¼Þ\r\rÀ¬\0\0ÊÀ\0¬\0¬\0À À¬ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿí­ ­\r	\0 \0\rº¹ëËÙð»Ùª
ÉðàààÊ\0ÀÀ\0¬\0\0\0À¬\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÛðþùðÐÐ\n	\0\0à­	àËééûÍÏ¼¼
ÌÐðÚÊÀÀÀ\0ÊÀ\0ÀÀÀÀàÀÊÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿýÿ\n\r­\0ð ð»¹Éùð¼¼\rà¬\0Ì\0\0À\nÌ¬¬¬\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ­éððý\r ðÚ\r ÐÀ\0ûÛÛéÍË¼¼¼Ì \0ÀÀ\0Ì\0ÀÀÀÀÌÀ\0ÀÀÀÀÀÀÊÌÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿý¿ÿÿÿÿÿÿÿÿÿûÿÛ\0ð\r\0é\rÙ©©Ú¼¼º½
É\nÌ\0ÀÀÀ\0ÀÀÀ\0À\0ÀÀÀ¬\0\0ûÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿßÿÿÿÿ¿ÿÿýùðü¼¼\0ðÚÎÚß­ùÛËÛé\rÐü¼àÌ\0\0ÀÀÀÊÀÌ\0ÀÌÀàÌàÎ¬ý¿ÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿýûýÿÿÿßÿþ¼
ËÊÐ­Ð	­¹é­°Ú¼¼¼ð¬\0À\0ÀÀ\0Ì\0ÀÀÀ\0À\nÌ¬\0\0à\0\0ÀÀÀùÿß¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿÿÿÿßÿÿÀÐ­­\0É\r\0Ë\r	\0\0À\0À\0À\0À\0ÀÌÀÌÀÀÀÌû½¿ß¿ûûÿûÿûýûÿÿÿÿßÿÿÿÿÿÿÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿì\nÐ©ÊÐàÚ\nÚÚÀÀÀÀÀÀ\0À\0ÀÀ\0ÀÌ\0À\0ÀÀ\0Ì\0ÀÀàÀ Ê¬ ùïßÿ¿ÿýÿûßûßûýûÛýûÿÿÿÿÿ¿ýÿÿÿÿÿÿÿÿÿÿÿÿÿ	­ÐéÊÜ­\0	\0À\r\0À¬\0\0\0\0À\0À\0\0À\0\0\0À\0ÀÀ\0\0Ì\0Ì\0¿Û¼½ÿùûÛßûß¹ýûÿÿûÿÿûÿÿÿÿÿÿÿÿ¿ÿÿÿýÿÿ¿ÿÿÿßüðÊ¼©À Ê\0\0\0\0ÀÀ\0ÀÀ\0\0ÀÀ\0ÀÀ\0ÀÀ\0ÀÀÀÊÀÀ\0Ì\0ÀÀÀËíûûùÿÿÿ­ï¼þÜËßÛßÿÛùÿßÿÿýÿßÿÿÿûúßÿÿÿÿÿ¿\r¬¼	Ê\0À	À\r
ÀÀ\0\0\0\0\0\0\0ÀÀ\0À\0\0À\0ÌÀÀ\0à¬ÿÞßùééûùËÛí«í½¯¯ûÛÿÿÿ¿ýÿûÿÿÿÿÿ¿ßÿßÿÿÿÿß¼\0Ú\0\0\0À\0\0\0\0\0À\0ÀÀ\0À\0\0\0À\0À\0À\0À¬\0Àùëý¿¿ÿÿÿþÞ¿¬í	êÙý­ïÿßÿÿûÿÿÿÿÿÿÿßÿ¿ÿÿÿÿ¿ÿ­¼¼
À°\0Ê	À\n\0\0À\0\0\0\0\0ÀÀ\0À\0À\0À\0\0ÌÀÀÀÀÀÀÀÀÿý«ÏÚÛÚÛÛûÚÛþþëËÿ½ÿ¿ÿßÿÿßÿÿßýÿÿ¿ßÿý¿ßý½ý­À\0ÀÀÀ¬\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0ÀÀÀÀÀÀÌ\0\0\0À\0ÀÀ\0ðÿß¾ÿÿÿþÿÞý­­ð«Þ¼¼þýÿÿýÿÿýÿÿÿÿýÿûýÿÿÿÿÿ¿þððÚ©©é\n\0ð\0\0À\0ÀÀÀÀÀÀ\0\0À\0\0\0\0\0\0\0\0ÀÀÀÀÀ\0À\0ÿððùðððùðûÚÚÚßàÞ©ËÛÿÿÿÿÿÿÿÿÿÿÿÿÿý¯Ûðùðùùý½½­¬\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÀÀÀÌÀÌ\0Àÿÿÿÿÿý­­­¾ûßÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿý¬ÿÿÿÿÿÿÛËÀ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ñ­þ','Xavier Martin is afgestudeerd aan de Universiteit van Leuven .  Hij heeft vele landen bezocht in Oost-Europa, waaronder recentelijk nog de Tsjechische Republiek, Polen en Hongarije met het oog op het opdoen van contacten voor toekomstige verkoopactiviteiten.   M. Martin spreekt vloeiend Duits en Frans (is volkomen tweetalig).  Spreekt tevens Engels en heeft een redelijke passieve kennis van het Pools.'),(15,'Pereira','Laurent','Beukendreef 6','Haacht','3150','016 60 37 85','Reclamespecialist',2250,'10','36',1,'1994-02-01 00:00:00.000000','1965-12-09 00:00:00.000000','1',_binary '.\0\0\0\0\0 \0\0\'\0ÄØPaintbrush Picture\0PBrush\0\0\0\0\0\0 \0\0\0PBrush\0\0\0\0\0\0\0\0\0@T\0\0BMT\0\0\0\0\0\0v\0\0\0(\0\0\0À\0\0\0ß\0\0\0\0\0\0\0\0\0 S\0\0Ä\0\0Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÀÀÀ\0\0\0ÿ\0\0ÿ\0\0\0ÿÿ\0ÿ\0\0\0ÿ\0ÿ\0ÿÿ\0\0ÿÿÿ\0ÿÿÿÿÿÿð\0¬\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÀÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿðÀ\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÀÀ\0ÿÿÿÿÿÿà\0\0\0\0\0\0\0\0\0À\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0ÀÀ\0ïÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð\0\0\0\0\0À\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿì\0À\0\0\0\0\0\0\0À\0\0\0\0\0\0\0À\0\0\0\0\0À\0\0Àÿÿÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0À\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð\0\0À\0\0\0\0\0À\0\0À\0À\0\0\0\0\0\0\0\0\0À\0\0À\0ÿÿÿÿÿÿ\0\0à\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0À\0À\0\0À\0\0À\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿþ\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0À\0\0ÿÿÿÿÿþ\0 \0\0\0\0\0\0À\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0ïÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿü\0À\n\0\0\0\0\0\0\0\0\0À\0\0\0\0À\0\0\0\0\0ÿÿÿÿÿð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0À\0\0À\0\0À\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿþ\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿÿðÀ\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0À\0\0\0À\0\0\0\0\0\0À\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿý\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÀÀ\0ÿÿÿÿÿð \0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0À\0À\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿþ\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0À\0\0\0\0\0Àÿÿÿÿÿð\0Ê\0\0\0\0\0\0\0\0\0À\0À\0À\0\0À\0\0\0\0À\0\0\0\0\0\0\0\0Ïÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0À\0À\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0ÿÿþÿÿÀ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Àÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿü\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0À\0À\0\0Àÿÿÿÿþ\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0À\0\0\0\0\0À\0À\0À\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0À\0À\0\0\0\0À\0\0\0\0\0\0\0\0\0À\0\0\0ÿÿÿÿÿ\0 \0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿþ\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0À\0\nÿÿÿÿð\0À\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0À\0\0\0À\0\0\0\0\0\0\0\0\0Ïÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0À\0\0\0\0\0À\0\0\0\0\0À\0\0À\0\0\0À\0Àÿþÿÿð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0À\0À\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿü\0\0\0\0À\0\0\0\0\0\0\0\0À\0\0\0\0\0\0À\0\0\0\0\0\0Ïÿÿÿÿà\n\0 \0\0\0À\0\0\0\0\0\0\0\0À\0\0\0À\0\0\0\0\0\0\0\0\0\0\0Àÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0À\0\0\0\0\0\0\0À\0\0\0\0\0À\0\0À\0\0\0\0\0\0ÿÿÿÿðÀ\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿþ\0\0\0\0\0À\0À\0\0À\0\0\0\0\0À\0\0\0À\0\0\0ÀÀ\0ÿÿÿÿÊ\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0À\0\0À\0\0\0\0À\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0À\0ÿÿÿÿ\0\0\0\0\0\0À\0À\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0À\0\0À\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿü\0\0\0À\0\0À\0\0À\0\0\0\0À\0\0\0\0\0À\0\0\0\0ÿÿÿÿÿ\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0À\0\0\0\0À\0À\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0\0À\0\0\0À\0\0\0\0\0\0\0À\0\0\0À\0\0À\0ÀÏÿÿÿÿ\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0À\0Àÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿþ\0\0\0\0\0\0\0\0À\0À\0\0\0\0\0\0\0\0\0\0\0À\0À\0ïÿÿÿü\n\0\0\0\0\0À\0À\0\0À\0\0\0\0\0À\0\0\0\0À\0\0\0\0\0À\0\0\0 Ïÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0À\0À\0À\0\0\0\0\0\0\0À\0À\0\0À\0\0\0\0\0ÿÿÿÿð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0À\0ïÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿü\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0À\0\0\0\0\0\0\0\0\0ÀÿÿÿÿÀ\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0À\0À\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0À\0À\0À\0À\0\0\0\0\0\0\0À\0\0\0\0\0\0\0ÿÿÿÿú\0À \0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÀÿÿÿÿÀ\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0À\0\0\0\0\0\0\0\0\0À\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÏÿÿÿÿÿÿÿÿÿÿÿÿ\0À\0À\0À\0À\0\0\0\0\0À\0\0\0\0\0\0\0\nÿÿÿÿ\0\n\0\0\0\0\0\0À\0\0\0\0\0\0À\0\0\0\0\0\0\0\0À\0\0\0\0\0\0Àÿÿÿÿÿÿÿÿÿÿÿÿÿðÿÿÿÿÿÿÿÿÿÿÿÿþ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0ïÿÿÿÿÿÿÿÿÿÿÿÿðÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0À\0À\0À\0À\0\0À\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿà\0\0\0\0À\0\0À\0\0\0\0À\0\0\0À\0\0\0\0\0\0\0\0À\0\0\0\0ÀÿÿÿÿÿÿÿÿÿÿÿÿÿÿÀÿÿÿÿÿÿÿÿÿÿÿÿÀÀ\0\0\0\0\0\0\0\0\0À\0\0\0À\0\0\0\0\0\0\0À\0\0ÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0À\0\0À\0\0\0À\0\0\0\0À\0\0\0\0À\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿþ\0\0À\0À\0À\0\0\0À\0\0\0\0\0\0\0\0À\0\0\0\0\0\0Àÿÿÿù\0 \0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0ïÿÿÿÿÿÿÿÿÿÿÿÿÿüÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0À\0À\0ÿÿÿÿþ\0\0 \0\0\0\0\0\0\0\0\0\0\0À\0\0\0À\0À\0À\0\0\0\0\0\0\0\0ÀÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿïÿÿÿÿÿÿÿÿÿÿÿÿÀÀ\0\0\0\0\0\0\0À\0\0À\0\0\0\0À\0\0\0\0\0\0\0\0\0ÏÿÿÿðÀ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0ÀÀ\0À\0À\0\0\0\0\0\0\0\0\0\0\0À\0\0À\0ïÿÿÿÐ \0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0ÀÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿþÀ\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0À\0\0\0\0\0ÿÿÿÿà\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0À\0ÿÿÿÿþÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿïÿÿÿ\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0À\0\0\0\0\0\0\0À\rÿÿÿÿ\0 \0À\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0À\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿïÿþ\0À\0\0À\0\0À\0\0À\0\0\0\0À\0\0\0\0\nÿÿÿÿà\0À\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿïÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿýÿÿÀ\0À\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Àÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0À\0\0\0\0À\0\0\0ïÿÿÿÏÿÿÿÿÿÿÿÿÿÿÿÿþÿÿÿÿÿÿÿÿþÿïï\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0À\0\0\0\0\0À\0ÿÿÿÿ\0\0\0\0\0\0\0\0À\0À\0\0\0\0\0\0À\0\0\0\0\0\0\0À\0\0\0\0\0Àÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿý\0À\0À\0\0\0\0\0\0\0\0À\0\0\0\0\0\0À\0\0\0\0\0\0Ïÿÿÿý\0Ê\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0ÿÿþÿïþÿÿÿÿÿÿÿÿÿïÿÿÏïÿÿÿÿÿÿÿÿÿþÀ\0\0\0\0\0À\0\0À\0\0\0\0\0\0À\0\0\0\0\0À\0ÀÿÿÿúÊ\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0ÿÿÿÿÿßÿÿÿÿÿÿÿÿÏÿßÿÿÿíÿÿÿÿþÿïþÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0À\0\0\0\0Ïÿÿÿð\0\0\0\0\0\0À\0\0\0\0\0\0\0À\0\0\0\0\0\0\0À\0\0\0\0\0ïÿþÿþÿïÿÿÿÿÿÿüÿÿÿùÿÿÏÿïßÿÿïÿÿÿý\0À\0\0\0\0\0\0\0\0\0\0À\0\0\0À\0\0\0\0\0\0\0ÿÿÿÿð\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0ÿïÿÿÿþÿÿÿÏÿþüÿþÿÿÿïÿþÿïïÿýþÞÿþ\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\nÿÿÿÿ\0¬\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0À\0\0íþÿÿÿýþüÿÿþýÿïÿÿùÿÞþßÏÿßÿþÿýþÿ\0\0\0\0\0\0\0\0À\0\0\0\0\0À\0\0\0\0\0\0\0ÿÿÿÿà\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0À\0\0Àþÿÿÿÿþßÿíþýþÿÿÿÿ½»ßÿÏïüþþÿÿÏîýïÀ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0Àÿÿÿÿ\0\0\0\0À\0\0À\0À\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿÿÿïÏÿíþÿÿÿÿùÛ¿üÿÞßÏßÏüþßÏÿ\0\0\0À\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ïÿÿÿú\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÀÀ\0\0\0\0\0\0\0ïÿÿÿÿÿýíþÞþÿÿýÿÿÛ¹ûÿðëþ¾þÿþüþïþ\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0À\0\0\0Àÿÿÿÿý\0À\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0À\0\0\0\0ïÿÿÿÿÿþÿýýïÏïíÿùÛ¹ÿïÞÍíéþýÞÿ\0À\0\0\0\0\0\0À\0\0\0\0\0À\0\0\0\0\0\0Àÿÿÿÿð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿüþþßÿßÿïÛ¹½þÿ¯ËÎÝïÎÞíï\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0ÿÿÿÿ°\n\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0À\0\0À\0\0\0ïÿÿÿÿÿÿÿÏÏí\0 Ïïÿÿ¹ý­ü¼ðêððïÚßÀ\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ïÿÿÿÿ\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿþ¾ËÀÿÿÿù©¹þüàü­íüìÿÎÿ\0\0\0\0\0\0\0\0À\0\0\0À\0À\0\0\0\0\0\0\0\0\0ÿÿÿÿÿ\0\0\0\0\0\0\0\0\0À\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÏÏÉ\0	ïÿÿÐ¹	ÿÿÿÀü¼ËËÎ¼ÿ\0\0\0\0\0À\0\0\0À\0\0\0\0\0À\0À\0\0\0ÿÿÿÿÿ\0 \0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0À\0\0À\0\0\0ïÿÿÿÿÿÿÿÿÿí¬\0þÿÿ¹Û½¹ÿÿÿËìüüþÿÀ\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿÿ\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÛÉ¯ÿÿý°©
ÿÿÿð¼­ïÏÿ\0\0\0\0\0\0\0\0À\0À\0À\0\0À\0\0\0\0\0\0ÿÿÿýþ\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿîþÿÿÿÛù°ÿÿÿÌêÞ­ïÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0ïÿÿÿûé\0\0\0\0\0\0\0À\0\0\0\0\0À\0\0À\0\0\0\0\0\0\0\0\0\0Àïÿÿÿÿÿÿÿÿÿÿýïÿýù¹­°¹©\0ÿÿÿúïÞÿÿÀ\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0À\0\0À\0Àÿÿÿÿ\0\0\0\0\0\0À\0\0À\0\0\0À\0\0À\0\0\0\0\0\0À\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÛËÛËÚ	ÿÿüéïÿÿ\0\0\0\0À\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0ÿÿÿÿ\0 \0À\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0À\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿùùù©°Û°°¹¹©ýÿÿïÿÿÿÀ\0\0\0\0\0\0\0\0\0À\0\0\0À\0\0\0\0ÿÿÿð\0\0\0\0À\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0Àïÿÿÿÿÿÿÿÿÿÿÿýù¹
Û¹Ù¹ÚÛ	ÿÿÿïÿÿÿÿ\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0ÿÿð\0\0À\0\0\0\0À\0\0\0\0\0\0\0\0\0À\0À\0\0\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿùð
Ð¹¹ùé ÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿ\0¬\n\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0ÿÿÿÿÿÿÿÿÿÿÿùÛÙÙ½¹\0½ÿÿÿÿÿÿ\0À\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0ÿýð\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0À\0À\0\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿùù¹ùÛ¹Ë°½°°°ÿÿÿÿÿÿý\0\0\0\0\0\0\0\0\0\0\0\0\0À\0ÿÊ\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0ÀÀ\0\0\0\0\0\0À\0\0\0\0\0À\0ÿÿÿÿÿÿÿÿÿÿ¹½¿ù¹¹©É¹¼	Û\rÙ°Þÿÿÿÿÿþ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0Ð\0\0\0\0\0\0 \0\0À\0\0\0\0À\0\0À\0À\0\0\0\0\0À\0\0Àÿÿÿÿÿÿÿÿÿß¿ûÛÛ©©	¹©°Ðÿÿÿÿÿù\0À\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0À  À\0\0\0\0\0\0\0ÀÀ\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0ïÿÿÿÿÿÿÿÿÿ¹ùùÛùÛ¹½¹Ù°Û¹Ïÿÿÿÿü\0\0\0\0\0À\0\0À\0\0\0\0À\0\0Ê\n\n\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0À\0\0\0\0À\0\0\0\0\0ÿÿÿÿÿÿÿÿÿ½¿½»ù½¹ùÛË

	Ù°¼¿ÿÿÿÿð\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0 \0\0\0\0\0\0\0\n
À\0\0\0\0À\0À\0À\0\0\0\0À\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÛÛûù¿Û©¹É©	ù	¹°Ïÿÿÿÿà\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0ÀÀàà¬ à\0\0\0\0 \0\0\0ÀÀ\0\0À\0\0\0À\0\0\0À\0\0\0À\0\0\0ïÿÿÿÿÿÿÿûùûÛÛùùûù½¹¹Ù
	©Ùéùÿÿÿÿ\0\0\0\0\0\0\0\0\0À\0\0À\0À\0à¬ \0à\0À\n\0 \0\0\0\0 ð \0\0\0\0\0À\0\0\0\0\0\0\0\0À\0\0\0ÿÿÿÿÿÿÿÿ½¿½½½¿ÛÛ¹ðÛ
°»¼ÿÿÿÿÀ\0\0\0\0À\0\0À\0\0\0\0\0\0\0À\0\nÚÀ\nÊ¬ À \0\0\0\0À\0ÀàÀÀ\0À\0\0\0À\0\0\0\0\0\0\0À\0ÿÿÿÿÿÿÿùý½¿¿¹ùùù¹¹Ú¼°ù	©¼¹¯	ïÿÿÿ\0À\0\0\0\0\0\0\0\0\0\0À\0\0\n

\0\0ÀÀ\0ÊÀ À«\n\0\n\0ê¯\0\0\0À\0\0À\0\0\0\0\0\0\0\0\0Ê\0\nÿÿÿÿÿÿÿÿ»¿½½¿Û¹
¹
Úßßÿù\0\0À\0\0\0\0\0\0\0\0\0À\0À\0À\0\0¬\0\0\n\0\0à Ü¼°\0\n\r\0 éÀ\0\0\0\0\0\0\0\0\0À\0\0ÿÿÿÿÿÿÿÛÛßÛùûÛù½¹ùù½Ù
¹\r©ð	ùð¼¿ÿÿþ\0\0\0\0\0\0À\0\0À\0\0\0\0Ê\0\0À\0\0À\n\0ÀÀ À¿éé°¯¼\0ÿý¬\0\0\0\0\0\0\0\0À\0\0ÿÿÿÿÿÿÿ¿¿»ÿÛÛùÿÛù¹©ù		É°ÏÏÿý\0\0\0\0\0\0\0\0\0\0\0ÊÌ\n\0\0\0\0\0\0\0\0\0À¬\0À¬ÏÿËíýù­ýÿÿÚ \0\0\0\0\0\0\0\0À\0ÿÿÿÿÿÿÿûÛÛß½¿½¿ù¹ùù½É¹
Ë½¿ÿð\0\0À\0À\0\0\0\0\0ÊÀ¬\n\0\0\0\0\0\0\0\0À\0À\0à\0À©ïý½ÿÿÿßÿÿÿúËÀÀ\0\0\0ÀÊ\0\0Êÿÿÿÿÿÿÿ½ùÿûÛûÛù½½½¹¹ù¹Ù©ù
ÉÐ¹ÐÛÛËßÿà\0\0\0\0\0\0\0¬í¬
É \0\0\0\0\0\0\0\0\0\n\n\0¬ ÿýÿÿÿÿßÿÿÿÿÐÿ\0\0\0\0À\0\0\0ÿÿÿÿÿÿý»¿¿¿ÛùùÛÛÛÙ¹Ù
	
¹©©¼ÿÿÐ\0\0\0\0\0\0ÿÞ\0 ª\0\0\0\0\0\0À\0Ê\0\n\0ÀßÿÏÿÿÿÿßÿÿ½\0ÞûÊÀÊÀ\0\0\0\0ÿÿÿÿÿÿÿ¿ß½ûûÛùÿ¹¿¹»­½
ÛËÏÿ\0\0\0\0\0\0àÊþüýûð  \0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿ°­ÿÿÿÿÿÿßÿ\0éÞÐ\0\0\0\0\0ÎÿÿÿÿÿÿûÛ»ß½ý¿ûÛùùùù½¹Ù	¹
		¹é°½¿ÿ\0\0\0\0ÎËüýí¯ü\n\n\n\0\0\0\0\0\0\0\0\0À\0\0\0\0 àÿÿ\0ßÿÿÿÿÿÿÿÙ\nïÿðÀ \0 Àÿÿÿÿÿÿý¿ýûÿ»ùÿ¿½¹Û¹°¹©
\0É
ÛÏð\0\0êíÏúÚü° \0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0ÿÚÚ­ÿÿÿÿÿÿÿÿ\n\0ÿÿÿ\0\0ÀÀ ÿÿÿÿÿÿÿ»ùûÿùý¿ÛÛÛùùùð¹°	\n©	°ðÛ	Ù­ÿð¯\r\n\0­¿\0Ï\n\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ýù\rÿÿÿÿÿÿÿÿß\0 ð­ÿßÿÀ ÿÿÿÿÿÿýûÿ½¿ÿ¿ûù½¹¹¹¹
		°
©ð¹ÿð\0úÀ \0\n\0Îð ÊÀ\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 ÿÿÿÿÿÿÿÿÿÿýð\n\níþßÿÐ ÿÿÿÿÿÿûýûÿÿùû¹ùùùù½		ÿ\r¬\0 ©\n°\0\0\0\nÀ \0\0\0\0\0\0\0\0\0\0\n\0\0\nÀÿÿÿÿýÿÿÿÿÿÿ ©Ê ðÿ­ÿÿÿÐÿÿÿÿÿÿÿ½¿½ÿ¿ÿ½ùû¹¹	©É¹ð¹	½	\r©©­°¹©ýÊÀ¼\n\0\0 \n\0\n\0\0\0\n\0\0\0\n\0\0\0\0\0\0\0À\0\0\0ÿÿÿÿÿ©ÿÿßÿéÀ\n	ÊÚ½ÿÿúÏÿÿÿÿÿýÿÿÿ¿ý¿ûÛ½½¹°¹¹		°¼°°	\r¼û\0°\0­é\n\nÊ\n\0\0À\0\0\0\0\0\0 À\0\0\0\0\0À\0\0\0\0\nÀ\0ÿÿÿÿÿÿýÿýýú°\0 \0	 ¬ëÏÎ½ïÿÿÿÿÿûûûÿÿÿùûùûû
é	©°¹ü\0\0\0
Þ °\0 \n\0¬\0 \0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿÿßý¬\nÀ\0 \n
°ùÊ¼ÿÿÿÿÿÿßÿÿûÿ¿ùû½¹ù¹©»Ù°ùÉ\r
Ð
\n©	©	 \0©Í¬ ÊÊ\n\0\0\0\0\0À\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0 ÿÿÿÿÿÿÿ½   \n\n	 ðÞÛ\rú¯ÿÿÿÿÿýÿßÿÿûý¿½ùÛÛ	Ù°		
\0Ù¬ð\0ûÉ\n© ©\0 \0\0\0\0\0\0 \0\0\0\0À\nÀ\0\0À\0À\0ÿÿÿÿÛÚ¯Ú\0
\n\n¹¬¾ßÐêÏÿÿÿÿ¿ÿý¿ÿýûÛÛ¿¹½½¹º¹\0É\0¹\0\r	Ú\0 º Ê  \0\0\0\0\0\n\0\0 À\0\0\0\0\n\n\0\0\0\n\0\0\0éÿÿÿÿþðù©ýÿÿÿé¹éÿ°	¬ÿÿÿÿýÿÿýÿ¿ÿûÿ¹¹ûÛ½©
	Ù¿

	°

\n­ ÐéïÍ
\n \n\n\n\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0úÿÿ­ûÿÿÿð°°©ïðË\n\0ÿÿÿÿÿÿÿÿÿÿ½½¹ûÛ¹¹ù»Ù½¿¹¹
°\r
Ù	­ª\0 \0ª\n\0\0\0\n\0\0\0\0\0\0\0\0à\nÊ\0 \nÀ\0À\0­­ÿðÚüð©ÿÿÿÿßÀüý½¹¬¼¼
ÿÿÿßÿÿÿÿùÿûß½¹¿¹ÛÛùù¹½¹¹	©	©	
 ¹Ðé­\0\n	®°º\n\n\n\0\0\0\0\0\0\0\0À\0\0 \0À\0\0\0\0\0\n««­©©ÊÉÿÿÿû\0°ÿûëÐðð\0© ÚÿÿÿÿÿÿÿÿÿÛ»ÛÛû»Û½°
\0 \0¼©ê\nÊ\0\0\0\0\0\0\0\0\0\0\0\0\0\n\n\n\0\0\n\0\n\0°©ÉÀêÊ\n	¬ÿÿÿüð\0ËßûÚÞ¼\nÊ	Ïÿÿ½ÿÿÿÿûÿ½ù½¹½¹ù½¹½¹½¿½ýû¹¹½
\rÐÉ¬\nÊð¼ª\n  \0\n\0\0\0À\0\0\0\0\n\0  \0\0\0\n««\0°\r Ëßÿÿû\n\nþý½­©\0 ° ¯ÿÿßÿÿÿÿ¿½û¿ûÛÛÛû½ùû¿¹û½½	 \n	 ¾ï\n \n\0à\0\0\0\0\0\0\0\0À\n\nÀ\0¬ \0\0\0 \0\0\0ª¿ÿÿÿý	Úü¼¼ ­¬		ïÿÿýÿÿÿýÿ¹ù½¹¹ùùùù¿¿¿¿ß¿Ù¹¹Û°°\0 \n\0àð«\0®\0  \0\0\0\0\0\n\0\0\0\0\0\0\0\nÊ\0\0\n\0\n	    \0
Ïÿÿÿÿ¬©©¯­ùàþ\n\n\nÿÿÿÿÿÿûùÿÛÛÛ¿ÛÛûûßù¿ÛûÛ½¹°à \n \0\n\0\0\0\0\0\0\0\0\nÀ\0\n\0à \0\n\n\0\0êÊ\0
\n\0 \0ýÿÿÿý°îÚ¯\0ð°
ÉàÐ 	Ïÿÿÿÿÿý¿ùù¹¹ùùù½½¹ù½½½¹ÿù½½»Û¹½°\n\0 °\0 ©\n\n    \0Ê\0\nÊ\n\0\0\0\0\0\0\0 \0\0   °°° \0 
ËÿÿÿÚÊ©ëÐ¼\0Àð 	 \n\0­
ËËûùÿÛÛÛÛÛ¿¿ßÿÛÛÙ¹ð©\nÊ\0\0©	\n\n\0\0 \0\0\0\0\0\0\0\0\n\0\0 à\n\0 \n\0\n\n\0¬ ßÿü©\0­©ëË\0\n\0\0 	¬ \0 ¼°¿½ûù½½¹½½½½¹½¹½¹¹¹¹¹©Û\nÚ©
\0°¼¼þ®\n\n\0\0\n\0   \0\n\n\0\0\0À\0à\n\n°\0° \n\n­ýù­º\0\nßýú	 ©Ë  Ú\n\n
\nÿÛ¹¹¹¹¹
¹¹¹É°°Ûðà\0\0ßùù \0\0 \0À\0À\0\0\0  \0 \0\n\n àð \n\0\0 ð \nýÿßÚúýÿßþÛÊ\0
Ëé­º°ûÛùù½½¹ÛÛ¿
	¹Û°©ë
\nÞüº\n\n\0\0\0\0    \n\0\0\0\0\0 \0\n\n©\n\0¯\nßÝýÿÿð° ­ÿÿÿßþðð°\0¬ 
\n½ûÛ½¹û¹ù¹¹ùù¹û
¹		°ß\0\0\0¼¿ÛÀ \0\n\0 \n\0\0\0\n\0\0  \0\0 à\0ð\n\0 
À ÿÿÿÿÿ
\n
Ïÿÿÿÿß

°¾ºÚ»¿ÿ¿Û¿¹û¹¹ý¹Û½¹¹©Û¼ÿß
ÏÿÏß\n\n\n\n\0\0À\0ÀÊ\n\0\n\0\0 \0 \n	\0 ú\0 à¯
ÿÿßÿýð¯\n¿ÿÿßÿûÊ\0­ 	°Úÿ¿½½ù¹¹¹½¹¹¹


ßÿßÿßÿÿð À\0\0\0\0\n\0ÀàÀ\0  À\0\0\0 \0 \n\0\n\0­ÿÿÿÿÿÿ¼ýÿÿÿÿý¼©°ðàÚ\n

ßùûûùûù¿¹ûÛùûùùÙ½Ù¹ÿýýÿÿÿÿÿ\n\n\0 \0  \0\0\0\0\0\0\0Ê\n\0\n\0 \0ü\0\0\0ºßÿÿÿÿÿÿûÿÿýÿÿÿ¹¼  ¹ \0ÊÿûÛÛÛÛÙ¿¹½¿ÛÙ¹ÛÛ¹°°¹ÿÿÿÿÿÿÿð\0\0\n\0 \0\0À\0\0\0\0à \0Ê\0\0\0\0ù °© ¯ÿÿýÿÿÿ°ùÿýÿÿÿÿÛà°°¾	ÊÉ­ýý¿½¿¿»ùûû½½¹¹½¹¹ÛïÿÿÿÿÿÿÿÚ\n\0  \0\0  ¬\0À\0\0\0\0  \0 \0\0\n\0\0\0\0\nßÿÿÿÿÿÿËßÿÿÿÿÿû


°°ÿûùûÛÛ¹ù¹ÛÛÛÛÛßÛÛÛÛÛ¹½¹¹
Ëÿÿÿÿÿÿÿü\0Ê\n\nÀ¬\0\0\0 \0\0\0\0 \0\0 \0\0\0\0¼°© © °­ÿÿÿÿýÿð\0­ÿÿÿÿÿýúðºðð\ríý½¿½¿ùûùùû	Û¹Û
Ù¹­ÿÿÿÿÿÿÿûÊ\0©à \n\n\n\0\0\0\0\0À\n\nÊ\n\0
\n © ÿÿÿÿÿÿÿ

­ÿÿÿÿû
Ë»éÿ¿ðûÛûÛù¿¿½¹¹\0\0¹ù¹¹¹ÿÿÿÿÿÿÿý\0\n\n\n\0  \n\n\0\0 À\0  \0\n à°ú¼ÿÿÿÿÛéà®\nÿÿÿÿùéï¿ÿùý	ùùùûÛùûûÛÛÛ°\0\0\0	\0
	\0				©ù½ÿÿÿÿÿÿÿð ©Ê\n\n\n\0à  \0\0\0Ðàð  °û
é º
Ëßÿÿ¼¿®°½©ýÿÿÿù¾ßßÿûß\0\n¿ûÛùÿ½¹½¹¹	\0	\0\0\0\0¹¹Ëßÿÿÿÿÿý\0\0\n\0°  «\n\0\0ððð °ê
Ê\n\n
	¼®\0 ¼¯ßþÛÉùê\n¿ÿÿßïúÿßßÞ\0½¿½¿ûùûùû	\0\0\0\0\0¹¹­ËÿÿÿýúÚ\0À¬  ª\n\n¬ \n	é©é© ¿

¬ºÚ
\0ÿ°¿Ê¹ù©éÿßÿù¾ßÛÿû	\0	ÛùûÛùÿ½¿ûÛ½								½¹
ÛÐ¼ß\0\0\n\0\0\0©¬  \n\0­½°éúé¬¼¼Ú\0\nË  °¿ é
é«Ûº­©­ÿýýý­¯­ÿ¼\0\0¿½¿¹ûûÛÛ¹ù¿ß»	Ù¹½¹ \0©é\0ð \0\nª\n
\n  \nË
­ËÚ«© °\n
\nÛû\nÚ©­\nÿÿßÿÿÛÚÜ\0\0
ÛùûÛùÿÛÿ¿ß¿¿ýû¹¹½\0 \0\0 \0\n\0  ©Ê
\n¼¾ÚÞÚù©í¼°¼¼°\n\n °º»Ê°®°¹ ­«\n

	½ÿÿÿÿÿû¯\0\0\0½¿½¿¿½¹ûù½½ùý¿ÿÿù¹¿Û¹¹ù¹ùúÿÿ\n\0\0\0\0 À°\n\n\n
\n	ËÛ©½¯ÚÛËË
ûÊ°°ÚÊ©ëÛ
ºË\n\n° °¾ßýÿÿÿÿ¼\0\0ùùûÛÛûÛÿ½¿û¿ûÿÿÿ¿ÿ¿ý»Û¹¹ù½ÿÿÿ° \0 \0\0°\0 \0À¬©ê¼ð¼ÛËÐ½½ ð¼ð

°ª©©ºº¿\nÊ¹\0¹©éÿÿÿÿÿÿË	ûù¿¿¿½¿ÿÛùÿÛßß¿ß½½ý¿½ûý¹ùùÙ¹ù¯ÿÿÿ \0\n\0Ê\0à°	¬©Û
éºÛ
ððý¹é°« º\nººûÛ
«\n©ªºÿÿÿÿÿÿ°½½½½¿ÛùùùÿÛÿ¿¿ûÿ¿ÿÛùù¹¹ùû»Ûù¿ÿÿ½º \n\0\r\n\0\0\0\nÊ©ÿý©þé°¬¼­\0
\r© ° ú¾¼º	 ð
«ù©íÿÿÿÿÿÛùûûÛûÛùûÛûÿý½ùûûÛý½ùûý¿¹½¹ÛÛ¹¹½ÿÿÿ	© \0\n\n\0\0 \0\0\0À	Êù©úéÛ\n\0ª\n\n\n º
ú
\n\0º

 ¼º¿ÿÿÿÿý¿ß½½¿½¿ý½»ÿ¿½½¿ÿ¿Û\r¹Û¿¹½¿ÿÿùëÊ\n\n\0\0\0 \0\0\0© ©ëÛ¾©à½¬½\0\0\0\0 û\0ð©\n\0\n\nª¹ºÏÿÿÿÿËÿÿÿ»Ûÿ½¿½½»ûÿÛßùÿùýùûÙ	­»Ù¿ÛÛ¹¹­ÿÿÚ°\n\0\0Ê\0à\0\0\n\0\0\0\0°ð°ùéÚÚÚ\n\0
\n\0  ú\nº
À©ª°°­º¹°ÿÿÿÿßÿß½¹ûÛûÛûß¿¿ûýùÿ¹¹ù¹©»ÙÙ¹¹¹ûÛÛÛ\rÿýû© ª\0 	\0\0\n\0 ­
Ú½éí©í©\0\n\0\0 \0°¯­	à° ®©«\nºûÏÿÿý¿ùÿûý¿ÿ½½½½¿¿ùýùý»ý¿½ù°¹Û»¹¹ù¹¹½¹ÿßà \0 \n\n\0\0\0\0 \n­©ð½©°°ù°ú\0©\n\n

ª
\n«
\nºº¹¯\0°ýÿ°ù¿ÿ½¿ùùûÛùûÛùý¿¿¿»ßÛÛ			\0	¹ÙûÛÛÛ	½¿ÿà À\nÊ\0\0 	­­ºÛËÛ	\0À¬©°º
\nª	\0	 ðàû«­ ©\rÿýûÛ¿½¿½¿ûýùÿßû½¹ù¹\0			¹ùùû½¹»ý­  \0 \0\n\0\n\0\0\0\0Éùé­¬¼ºÚÛ\0 	ª
\0­	 © °

ººë\n\0\nÐ
Û½ûÿ¿Ûùý½¿¿¿Ûù¹û\0\0¹	\0		¿ù¿\r¹û¿ðÉ \n\n\0\0\0\0\n\r¼¿ËÛ½ ð 
\0Û °ú\n\nÀ\0\nÊÀ°é		°¾é¯	ÿ¹¿½¿¹Û½¿¿ÿùÿÿßûý½ù½û
	\0¹ù»Û¹ùùðÉ \n\0\0 \0 \n\0À
é©

\nù©ù«\0\0\n ðë°Ððð°À\nË\nÊ 
\0®\0
ù	ßùûÛß¿ÛÛÛùÿ½¿¿û½¿	ùý¹ù½½ûÿð\0\0\n\n\n\0\0À\0\0\0¬Ëðéðý°ù\n\0éÉ ®¬\0\0°\nÿß\r©É°Êù¯©ÿ¿ùùûý¿½¿ß½ÿýÿÿÿùùÿÿù¹ù¹ù¹¿¹ù¹¹¯\0\0À \0\0\0\0\0 \n\n	¯	½©©­©ëË
Ë\0\0\0¬ ú¼Úð°\nÀÿúÚ\n	­þðÚÛÙÛý¿¿Ûßùûß½¿½¿½¿½ùûûß¿¹¿ÙûÛùûÛÛÛÙÿÐ\0\0\0 \n\n\n\0\0À\0°úÚÚÛË½­°  ¬\n\0Ð¬\n¬
\0°­ÿßß°ºßÿ	¹¹
ùß½ÿ½¹ûß¹ÿýÿýÿÛùûÿ¿½ùý½ÛÛ¿½¿¹¹¿½°\0\0\0\0À\0À\0\0\0 éé«
éëÛ
\nÚàð°°º\nþÿÿð¯ÿÚÚÙÛùù¹ûÛÛÿ½ÿ¹ÿ¿ûûÿßÿÿ¿ûûûù¹ùùûÛýùù	¼\0\0\0\n\0¬°À \0\n\n\0ðÙàùàù½¬\n ¬
\0\0
Àüýÿÿ
¯¯ÿýð	¹ûûÿý¿ÿùýûûßûß½ýùûùûÿÿÿÿý½½½Û¹¹ûÚð\0 ¬\0\n\0\0 \0 \0\0\0¬¿	¾¹¼½°úð¹	
\nÀÊÚÉàËí °«Ëÿÿß½¹ùýÿ	Ê	¹ý½ùûùùÿûßß¿ùûû¿½¿½ûÿÿÿÿ¿ù¹ùûûÛû¹ÛÛù¹\0\0\n\0\0	à\0 °
\0úÉËË
Ë\r­Àà\0	\n\0 
Ú¬ÿÿÿÿÿßÿéà	\0¹¹ûÿÿÿ¿¿ßùûßßßÛÛûßÿÿÿÿß½½¹ùý½½û½Û\n\0 \0\n\nÀ\0\0\0\n\0\0ðº¼¼½ºÚ­»\0¼ àÊÀÐÐÊÀ\0úðÐýÿÿÿÿûß\0		\0	¹\r½ûûÛÛÿßÛûÛ¹¹¹û¿½¿¿ÿ¿ÿÿ¿¿¹ûÛ¹¹¹¹			\0\0\0\0\0\n\n\0 ¬ \n\nÊÉËÉ
\nÉ©Ú\0\0\0\0\0\n\0©\nË	\0¬ÿÿÿÿýýÿé\0\0\0	\0¹¿¿ß¿ÿùÿ¿½¹ÛßßÛýùÿÿÿùù½»Ùù½¹ùÛÛûÙðð\n\0\0¬\0\0\0Ê
\0°ð° ­­\r¬\0À\0\0\0\0\r\0Ð¼­\n\0ÿÿßÿ­ÿÚ\0\0\0	\0\0	ùûß½ùùÿ¿ÛÛÛÙ¹¹½ùûÿÿßùÿÙ»¹½¿¿	  \0\0 \0° \0\n\0àÀ ¬\0\0¬

À\0\0\0À\0\0\0
\0\0\0	àßÞü½ºß\0\0\0\0\0\0\0ÛùûÿÿÛ½¹	¿ß¿ÿÿ½¹ù¹ÛÛÙ¹ùû¿ù \0\n\0\0 \0\0 \0\0\n\n		¬\nËÉ
ÀÐ°\0\0\0©\0\0\0\0	 \0\0\nÀ\0àé\r\0Ë	\0\0\0\0\0\0\0ûÛßÿ¿Û¹		Ù½»ÿßûÿù©»ËùÛý¿	¹\0ª\n\0\0\0À¬\0\0\0Ð\n	\nÉ \0\0à
\nÀ\0\0\0\0\0\0\0À\0°éíùà °\0\0\0\0\0\0\0		½¿ûûÿùù¹ù¹Ù½Ú½ùûÿÛùù½©Ù½¹¹½¿ûÛ	\r\0\n\0\0\0 \0\0À  ÀÊÀ\0à	\0À\0\0\0À	\0\n\0\n	 \0\0ÿýýýÿÙÀ\n\0\0\0\0\0\0\0\0\0\0¹ÛÛÛÛÛÛÛÛ¿ÿÛÿÛÚ¹Ù½½¿Ú \n\nÀ\n\0\0\n\0\0¬\0©\0 \0 	\0 Ð\0\0\0\0\0ÊÐ Ú\nßÿßßßðÉé\0\0\0\0\0\0\0\0
ûù½¹¹½»ùé¹Ù©Ûÿ½°°¹¹¹	©»Û	  \0\0\0\0¬\0\nÀ\0¬\0Ð\0\r\0 \0\0\0\0\0À ªÚ Ïÿýÿÿýÿ°\0\0\0\0\0\0\0\0ùùùùù\r°\0Ê©½ÿûÿ	Ù
\r½¹ùù	\0\0\0\0à\0\0\0\0\0\0
\0\0\nÊ\n\n\0\n\0\0\0\0\0\0\0¾¬¿ßÿÿýÿðë\nÐ\0\0\0\0\0\0½¹¹	\0Û\0\0½		¿Ûùýù½©©¹¹	½½°\0Àð\0 \0\0 \0¬  Ê\nÀËÀ\0À\0\r\0	À¼\0\0\0\0\0\0\n \nÏÿßýÿýýº\0\0\0\0\0\0\0\0\0¹¹ûý»	\0À\0\0		½ÿ¿©	­½Ù­©°\0\0\0\n\0\0\0°Ê\n\0\0	Ê\0\0É\0¬\0 \0\0À\0\0\0\0\0¼¼\0ýÿýÿÿÿúðËé\0\0\0\0\0\0	\0\0	Û¿ß¹ù¹°\0	é	\0ß¿\0	\n©\0	\0\0\0\0¬\0\0\0\0\nÊ\0ð\nÀÊË\n\nÀ\0\0\0\0\0\0\0\0\0\n\0\0ßÿÿÿýûÀË©°\0\0\0\0\0\0\0\0Ð¹ûÛùûÛ\0\0\0\0\0\0\0¿»Ù¹	\0ð\0\0\0Ù\n¹\0\0\0\0\0\0 ¬\0\n\0¬\0\0Ê¬\nÀ\0\0éà\0\0\0\0\0\0\0\0\0ýÿÿýÿüÚúÛ\0\0\0\0\0	\0\0\0
½¿ÛÛÛ\0			\0½½»\0			\0\0\0\nÀ		\0\0\0\0\r\0\0\0\0 \0¬­ÊÐí\nÀàðË\0ÀÀ\0\0\0\0\0\0\0\0\0\0\0ýÿÿßÐ À«ð\0\0\0\0\0\0\0ûÛùÿ½½¹ùÛ
	\0°ÛÛÙ\0\0\0\0À\0É	\0¼\0\0\0\0\0\n\n\n\n\0àÊ\0 \0\n¬\nÌ¼\0À\0¬  \0\0\0\0\0\0\0\0\0\0ýÿËÀÀ\0¹\0\0\0\0\0\0\0\0\0	½¿ùÛß­½½¹					°°		\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\n\0à\0¬ ÊÀ°ÊÚÀàíàÐÏü\0\0\0\0\0\0\0\0\0À\0\0\0Ê\0\0\0\0É\0\0\0\nÛÛÛûÛù©¹							¹ù\0	\0\0	\0\0©°¹\0\0\0\0\0 ¬\0À\0\n\n\0©à¼¬¬\nÐ\0¬ À\0\0\0\0\0\0À\0©­ËÀ\0\0\0\0\0Ù\0\0\0\0\0\0\0\0\0	½½½¿¹	\0\0\0\0\0		Û°	\0°°
	\r\0\0\0\0À\0
\0\0 \0 ©¬ÀÉÊÐàüÊÀÚ\0\0\0\0À\0	°ÀÊ	\0¬\0\0\0\0 \0\n\0\0\0\0\0\0ÚÛÛÛûý­\0
\0\0\0\0\0¹¹¹¹	\0			
ÙÙ\0\0\0\0\0\0\0\0\n\n	©\nÚ¬\nÀ
Ê\0\0\0\0\0°Ê\r\0\0\0\0\0\0\r\0 \0\0\0\0\0\0\0¹½¹½½½¿Ð\0\0\0\0Û°	\0\0\0©©\0\0\0\0\0\0\n\0\0À\0
Êà\nÀ¬ààÊÚÍ ¼ Ì \0\0\0\0\0\0\0À¼\0ÊÀ\0\0\0\0\0\0\0	\0¼	\0\0\0\0\0		ÛÛÛùð¹Ë
\0	\r©û½½¹ð	\0\0\0\0\0		\0ù\0\0\0\0\0\0	\0\n\n\0 à\nÊ
Àì\r°À ÀÀÌ°éÀ\0\0\0\0\0ÀÎ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	¹ð½¹ù°Û	¹	\0\0\0\0\0\0\0	\0ð\0\0\0\0\0\0\0  \0\n\0é­
Î\0¬\nÌ Ü\0\0À\0À	\0Ê\0À\0\0\0\0\0\0\0É\r­\0\0\0\0\0\0\0É¹	½©Û¹ùù½¹¹ù°\0\0\0	\0\0\0\0\0\0\0\0\0\0\0à Àð\0Àà\0ÉÊÌ\0Î\nÀÀÀààà\0\0\0\0ÊÎ\0\0\0\0\0\0\0\0\0	À\0 \0\0\0\0\0\0\0	\0	\0\0			
ÛÛÙ			\0	\0			\0\0\0\0\0\n\n\n\n \nÀ ¬\0	ÊÀà\r\0\0\0ÀàÎ\0\0\0\0\0À\0\0\0\0\0\0É	\0\0\0\0\0\0\0\0\0				\0\0\0\0\0		Ë½¹½¹	\n ¼
\0\0\0\0\0\0À\0\0À \0\n\0ÀÀ\0\n\0àà¬\r\0ðÊ à©­ À \0\0À\0\0\0\0\0\0\0\0\0°\0\0	\0\0\0\0\0\0À\0\0\0\0\0	\0\0\0\0¹¹	\0	
Ù		\0\0\0\0\0\0\0À\0ªÚ à\0\0\0À\0\0À\n	Ê\0\0\0ÀÀ\0\0\0À\0\0\0\0\0É	©ù	é\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0		½¹Ù\0\0	\0			Ë	°\0\0\0\0\0\0\0\0\0¾ É\0\0\0\0À\0À\nÀÊ\0¬\r \nÉ\0ð\0\0\0\0\0\0\0\0\0\0\0\0\0ÐÐ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0©
		é			\0\0\0\0\0\0\0\0\0	¬
 àÀ\0\0\0\0\0\0\0\0\0 \0ÀÀÍ\nÉ\0À\0\0\0À\0\0À\0\0\0À\0
\0°\r \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0		\0		\0	\0\0	©©\0\0\0\0\0\0\0	\0\0Ú¼\0\0\0\0\0\0\0\0À\0\0\0\0\0
\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ð\r		ËÉÀ\0Ð\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0	
©	\0\0\0\0\0\0\0\0\n¯¯ýí¿\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\n\0\0\0À\0\0\0\0\0\0\0\0\0\0	\0\0\0					\0		\0		©		\0\0\0\0\0\0\0\0\0	 ý °ðû\0À\0\0\0\0\0\0\0\0\0Ú\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0	¯\r
\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0		\0			\0\0\0\0\0\0\0	\0é ðÊ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0Ð\0\0À\0\0\0\0\0\0\0\0\0\0\0À\0\0\0Ð\0¬\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0					\0	\0			\0\0\0\0\0\0\0\0\0\0\0\0¬ð\n\0\0\0\0\0\0À\0À\0\0\0\0\0\0\0\0\0	\0À	\0À	\0\0\0\0\0\0\0\0\0\0	\0\r°	\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0		\0\0\0			\0\0\0\0\0\0\0À°	\n\0\0\0\0\0\0\0À\0\0\0\0À\0\0\0\0\0	\0\0\0\0\0\0À\0\0\0\0\0\0\0É		ÊÐ\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0		\0\0\0\0\0\0\0\0É\0ÉÀ \0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	©À\0\0\0\0\0\0\0\0À\0\0Ú	\0	\0\0\0\0\0\0\0\0\0\0\0\0	\0		\0	\0\0	\0\0	\0\0\0\0\0\0\0\0\0\0\0\nÚÀ\0\0\0\0\0\0À\0\0\0À\0\0\0À\0\0\0\0			\0À\0\0\0		 \0\0\0\0\0\0\0©½\0
À \0\0\r\0\0\0\0	\0\0\0\0\0	\0\0	\0		\0	\0\0\0\0\0\0\0\0	\0	À\n\0\0\0À\0\0À\0\0\0\0\0À\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0À\0\0\0ð°Ð\0À	\0\0\0	À		\0\0\0\0\0\0	\0\0	\0\0\0\0\0	\0\0\0\0\0\0\0\0É\0 \0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0À\0\0\0		\0\0\0À\0\0\0\0Ð\0\0À\0\0\0\0\0½\0À\0	\0\0\0\0\0\0À\0\0\0\0\0	\0\0\0\0\0	\0\0\0	\0\0\0\0\0\0\0\0	\0ÀÀ\0\0\0À\0À\0\0\0À\0\0\0\0\0\0\0À\0\0\0	\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0
Û©ËÊ\0\0É	\0É\0ð\r\0\0À\0Ð\0	\0\0		\0	\0\0\0	\0	\0\0\0\0\0\0\0\n\0\0\0ÀÉ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0À\0\0\r\0\0	\0\0\0\0\0	À\0\0\0\0\0\0\0\0À¼°Ð\0\0©\0©\0\0\0\0\0	\0\0\0\0\0\0	\0\0		\0\0\0	\r\0\0\0\0\0\0
\r	 \0À\0\0À\0À\0\0À\0\0\0\0\0\0\0\0ÀÀ\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	©\n\0\nÉ Ðé		\0\0\0\0\0©\0	\0\0\0\0	\0\0\0\0\0\0\0\0\0\0É©	À\0 \0\0\0\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\nÐ\0\0\0\0\0\0\n\0À\0\0\0ÚÐ\0	°\0\0	É©\nÚÊ	 \0\0	À		\0	\0	\0\0\0	\0\nÐ	\0\0\0\0\0\0\0	 à\0\0À\0À\0\0\0\0\0\0\0\0\0\0\0\0À\0\0	\0\0\0Ð\0	\0\0\0\0Ð\0\0\0\0\0\0\0À\0½	
\0\n\0À		\0É\0\0\0	 \0	\0\0\0\0\0	\0\0\r\0	\0	À\0ð ÚÀ	­¬\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0ÀÀ\0\0À\0\0Ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0°	\0ÚðÚ	àðððÉ\0\0É\0\0ËÀ	\0\0\0	\0		\0\0	\0\0Ê	É©	ëÊ\0\0\0\0À\0À\0ÀÀ\0À\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\0\0À\0\0\0\0\0\0À\0\0\0	\0ûÀ\r©\r©\0ð		\0\0\0\0	\0\0\0
	\0\0\0\0\0\0à\nÚÐ\0\0\0\r	©ÚÚ\0ÀÊ\0\0À\0\0\0\0À\0\0\0\0\0\0\0\0À\0\0\0\0À\n\0\0À\0	\0\0À\0\0\0\0\0À\0\0É\0	 \0ð¬°\0\0	\0	À\0\0	à\0\0\0\0		\0 	À\0\0 Ð©é\r©¼ Ð \0\0\0À\0\0\0\0À\0\0\0\0\0À\0ÀÀÀÀ\nÉ\0\0\0\0À	\0\0\0\0\0\0\0\0\0\0À\0	àð°Ðð\r	\r Ð À\0É\0	\0\r 	\0Ð­\0½\0À	\0½­°ðûÀ¬\0 \0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0	\0\0À\0\0 À	\0 \0¬\0\0\0\0Ð\0\0	é À\r©©à¬\n \0\0\0\0\0\0\0\0\0À\n\0Ð©Ë\0	\0\0\r 
©Ë\0\0\n¬\0\0À\0\0À\0\0\0\0\0\0À\0\0\0\0\0\0\0À\0ÀÀ¬\0 \n\0\0\0\0	É©\0\r
\0		Êð 	\0\0\0Ð\0\0\0	\0	É ©\0\0\r©ùé\r©ùË\0ÀÀ\0\0\0\0\0\0\0À\0\0ÀÀ\0\0\0\0\0\0ÀÀ\0À\0\0
\0É\0\0\0ÀÀÀ	\0\0¹\0ºÐ¯	 ð\r\nÚ	à	Ë\0\0\0\0\0\0\0À\0Ê	é Ð\0\0\0É°Ú°ðð¼	\0\0¬ à\0\0\0\0\0\0\0\0\0\0\0\0\n	\n\0\0À\0
\0À¬À\n\0\n\nËéÍ­¬	ÀðÚ	\0\0\0À\0\0\0	\0\0Ð©\0©ð¬
 Ë½é©Éé¼°àÀ\0\0\0 À\0\0À\0\0\0\0\0\0\0\0\0\0\0\r\0°	 \0À\0 \n\0\0©à\0\0 \0 ­ìûÀ°\0éùàð­¼°©\0\0\0\0\0À\0		\0\0¼\r­©À\0Ð		°Ê½Ë°½éÉ\0\0\0ÀÀ\0\0\0\0\0\0\0\0\0\0\0\0 \0À\nÀÀÀ¬	Àð¬\0àÐðì¬¼\0ÀÚ\0
\0Ð	©\0ÐÀ°É\0Ð\0 À\0°\0\0\0É©ËËÀÚÚ°éé°¬\0\0\0\0\0\0à À\0\0\0\0\0\0\0\0\0\0\0Ð
	à\0	À\0\n\0			\0ËÀ°\r\0À\0®ïÏ­©
\0ÊÚÐÛ\r
Ú \0\0°Û\0°Ð	­\nÐ\r\0\nÚ­­­°ÐÚÛ\r\0\0\0\0\0À\0À¬\0\0\0\0\0\0\0\0ÀÀ\0à©\r \0É 	àÐÊÀ­­ \0¼\nÚÎìü¼¿¹\0	\nº­\0	é	 \0\n\0°À\0\0\0\nÐ	\0\0ÐðùðÚ¹í½ ð¬\0\0ÀÀ\0À \0\0\0\0\0\0\0\0\0\0\0\0ÐðÛ\nÉ \0\0\0Ù\r¬\0\0\r\0ÉÏ¯Ïðù
\0\r
ÉàÚù©	\r		\0À\0\0\0\0Ï©
	é­©©É­­»ËÚ\0Ð\0\0\0\0\0\0àÀÀÀ\0\0\0À\0\0\0\0\0\0\r¬¬¾Î\r\nÉàÊÀ\0àð\0\0à¬\nÊÞþðü¿°ðÙ¯\0\0Úà\0\0Ú°¼  \0ð	¬\0°¼ð\r
ËÚÞ \0\0À\0 \0\0\0\0\0\0\0\0\0ÀÊËËÏÿþüþ¬\0à\0
ÊÀÐËÏÚÞÛÀüû
\nÐº©ë	°À¼°\0Ð\0\r©\0é


ËÉ
	­°ûÛÊ\0\0\0\0À\0\0\0 \0ÀÀ\0\0\0\0\0\0\0\0¬¼þþþÏìïÊÐ¼\0 	¬¬¼ðü¿½¯Ïùù¼¼ð¹þË°Ú°ð	­© Þ\0\0ùÀ¼©àðß©\0À\0\0\0\0\0À\0\0À À\0\0\0\0\0ÀÀ\0\0¬ÏÏÿýûþÿüïîêÊ ÊÚßï¯ûÐðÚü¿
	©©ë\nÚü°Û	É\0ð\0\0\0É©\r\0	ð¿\0°Ð­¹
É©ù\0à\0\0\0\0\0\0À\0\0À\0\0\0\0\0\0\0É¯þÿÿíïÿïýíýíìêÊ\r­ìíííëéïÞüÿ½½¯
Ï	½ ð\0\r		À\0¼©éËÛ\n¼¿\0Ê\0\0\0\0\0\0\0\0\0\0\0\0À\0\0\0\0À\0ÀÀÀ¬ÚßíïÿýïþþþþþÿÏÏÊÚðúþþúÛÏ¼éïËÛË	\nÐ°ÚÚÙ\nÐ	­\r\n\0Ê°\0\0ß¼	­½
Ëðð\0\0\0\0\0\0\0\0\0À\0Ê\0ÀÀÀ\0\0\0\0\0\0\0\nÏïÿþÿïÿÿÿÿïÿïþþüüïÏÏàýí¼ûþÚþ¿¿ûË°¼	©­¹é
\n	\0\0À\0\0é ÿ	à
ºÚÿ\0À\0\0\0\0\0\0ÀÀ\0À\0\0\0\0\0ÀÀ\0\0Ààþÿýýÿíþþÿÿþÿïþÿïüþþßî¾ÿ­íïÏÏð½Ë	ËûÚÚ¿ðÐ\r\0\0	\0Ë\0\0	ðÙí­¹	û\0\0À\0\0\0\0\0\0À\0\0\0\0\0\0\0\0\0\0\0\0\0­­íþÿïïÿÿþþÿÿÿÿþÿïþßþßÏÎÞúü¾ÿúÚ»Ú°û½»É	¹©
 \r É©éð°Ð¾¹½¼¾¼\0\0\0\0ÀÀ\0\0\0\0À\0ÀÀ\0ÊÀÀ\0\0\0ÀÀ\0ÊÊþßÿùðù
ÞýÿÿïÿïÿÿþÿïïïþÿííïËÎÿ½½¼½»ÚÿË\r¿¿©ÚÚ°	É\0\0\0ß\r­\0©ûðÛßéëÙà\0\0\0À\0\0ÀÀ\0\0\0À\0\0\0À\0\0\0Ê\0\0À\0\0\0Ê\0ÀÏïþÿÿþÞ¿¯ïïÿïÿïþÿïÿÿþÿïïïÏïííÿÛÛÞé
ÛúÐùú©Éà\0\0\0¼°Ù\r¿­©¿¿\0À\0\0\0\0\0\0\0\0\0\0À\0\0ÀÀà\0\0À\0À\0\0Ê¬­íþþÿ½ýýÿÿÿÿÿÿÿÿÿïÿÿþÿÿÿþÞÿ¯éþ¹¾É­ù¿½¼ºÚ	¼­\nÐð\nÚûËÛßééðÊ À\0ÀÀ\0\0\0\0\0\0\0\0\0¬À\0À\0À\0\r\0ÀÜþÿíÿÿÏïþþþÿÿïÿÿÿïÿïÿÿþÿïïÿÎÏ¿ùûûßý¾ÛùéÛù½
©\0 ù	­½½½¿¯ððÏ à\0\0\0\0\0\0\0\0\0\0\0ÀÀàÀ\0À\0À\0\nÊ\n\nÉìþüþûþÿÿýïïÿÿïÿÿÿÿÿïÿÿÿÿþÿüÿ¿»
ÛÛÛ­
ý¹©¼­ëÛËÛÿþÎ¬êÍ\0¬\0\0\0\0À\0\0À\0\0\0\0¬\0à\0À\0ð	ÀÀ¬¾ÞÞÛÏïïÿÿÿïÿïþþÿïÿÿïÿþÿïÿÏßûýýÿ¿½ù­°ùúùðß  ððû\r»Ù¯¿ÿýí­îÞêÌàÀì\0\0\0À\0À\0\0À\0 Àà\0\0À\r¬©\nÀàîíëïïþÞÿïïïÿÿÿÿÿÿÿÿÿÿÿÿÿÿïÿûýûûùùúûÛË
ÛÉÙù\rûÏ¯ýý½ïþÎéîÞúÏì¬ìêÀà\0\0\0\0\0\0\0ÀÀ\0\n\0\n\0ÐìÚðÚþÞÞÏïüþßÿÿïÿÿþþÿÿïÿïÿÿþÿþýëÿ½ÿ¾½ëùùùéú½­ \né©ðû­ùý¿¿ÿíïàþÞíîìþÞ¬¬Àà\0\0À\0\0ÀÀ\0\0àÊÀ\0\0Àð Ê¬Îìíïïþü¯ïïïïÿþþÿÿþÿÿÿÿÿïÿþýÿÿ½ûÛÛûË¾ÛÍÚÚß°½ÞÚ¿¿ýéì¾ÞÏÎíîüþÎþïÏÏì¾ÊÊÀà\0À\0\0ÀÀÀÀÀ\0ÚÉ\rË\r­®ËÎÏÏÏíïÞÞÿÿïïÿÿÿïÿÿÿÿÿþÿßÿÿÿý¿½©ùËÛËºß­éÊðù¹ëÛýýùÿÿþÞéî¼îüîÏìïÎîìîÎÚÜ¬¬ À\0À\0\0\0\0¬\0\0\0\nÀ¬Ê\rËì¯îüïïïïíÿÿïþÿÿþÿÿïþÿÿïïÿÿÿý¿ÿëùéýí ðþÏÏ¯¿þðü¿ïÎüÎÞÎüþÏìïÏÏíïìêÎÏàÍàà À\0ÀàÀ\0\n\nÀ Àà¬ÊüíîÞüüüüþþþÿïÿÿÿþÿÿÿÿïÿßÿÿÿÿþÛÛÞûúÛùéüûðûïßïí¯Ïïüý¯ïîíîÎþÎüîìîìàüüêÎîÀà\0À\0\0¬Î\0 À\0À\0\0ÀàÊÚÏ­¯¯ëï¯ËÏÏÿÞÿïÿÿÿþÿÿÿþÿÿÿïÿÿÿûÞßÚÿÚ
ÏËÏ­¼¾ßïÊÏ®Þü¬­îÞüìüîüþÞÞÞì¯íí¬àþÎÊÎ\nÀÀÀ\nÐ ¹éàÀ¬ ¬ \0¬¼îÞÞÞÞÞþþþÞÿïÿÿïïÿþþÿÿÿÿÿÿÿÿÿïûëëïïÿÊûí°íþßÏàþÿîÞìïÏîÞîîïÎîÎîîìþÎÎîÏÎÎì¬Ì¬ ¬ÀÎ\r À \0¬\0¬¼þÿïïïÏÏËïïÿþÿÿÿÿïßþÿÿþÿÿÿÿíÿÿßïýÿïÏûíðéëúÞíìýïËüìíìüþÏÎïÏííéïÞüüþíìîÞÏ®ÎÎÎ ¬ðÞ\nÚÀÊËÀ¬ààÚßÏïÎüþÞþþþüÿïÿþÿÿïÿþßÿïÿÿÿÿÿÿÿËéïßÿÿÿÿÞÛïÿüíïÚëîÎþÊúÞïîìþîüîÎîÎìì®ÎÎìÎ¯ìêìì¼éÊÎÌ©í¬ü¬¬¬¬ÚïîÿïÿïïïïïíïÏþÿÿÿïÿþÿÿÿÿÿÿÿÿÿÿûý¿¿þÿïþßþÿïüÿþÞîÞÏ­íïÌïÞÞìüïÏïÏíëÏíïíëïÎÞÞÞÞîÎí¬ü®ýïÚÚÚÛËðûÍíííýïÞüþÞüüüþþþÿïÿÿÿþÿþÿïÿÿþÿïþÿÏúßÏÿÿÿÿÿÿÿýÿïÿÿÞýìþêÎþÎíîïÎïÎìîìîÎìÎÎÎìîìîìíìîì¬ÎÚÚð­­íìüîÎîþþþþÿïïïïïïïííïÏÿïïÿÿÿÿþÿïÿÿÿÿÿÿÿûÿÿÿÿÿþÿïïïïÿïïïîÿííéÊüþÞÞüüüüüÞÞü¾üþÞüþÞÞÞÞÞüïÏËÎ¼ÿÿÛßþÿïþÿÿÿÿÿÿïþþþþþþþþþþþþþÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿþþþþïÎìîìîîîîîîîÎÎÎìîÎìîìîìîÎìîÎÎÎ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ï­þ','Laurent Pereira is in 1989 afgestudeerd aan het Sint Lucas-instituut te Brussel.');
/*!40000 ALTER TABLE `tblemployees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblorderinformation`
--

DROP TABLE IF EXISTS `tblorderinformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblorderinformation` (
  `OrderID` int NOT NULL,
  `Productnumber` int NOT NULL,
  `Quantity` double DEFAULT NULL,
  `Discount` double DEFAULT NULL,
  KEY `Productnummer` (`Productnumber`),
  KEY `fk_tblorderinformation_tblorders1_idx` (`OrderID`),
  CONSTRAINT `FK_tblOrderinformatie_tblProducten` FOREIGN KEY (`Productnumber`) REFERENCES `tblproducts` (`ProductNumber`),
  CONSTRAINT `fk_tblorderinformation_tblorders1` FOREIGN KEY (`OrderID`) REFERENCES `tblorders` (`OrderID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblorderinformation`
--

LOCK TABLES `tblorderinformation` WRITE;
/*!40000 ALTER TABLE `tblorderinformation` DISABLE KEYS */;
INSERT INTO `tblorderinformation` VALUES (10000,17,4,0),(10001,40,40,0),(10001,59,8,0),(10001,64,15,0.15),(10002,31,35,0),(10002,39,18,0),(10002,71,15,0),(10003,18,12,0.05),(10004,29,35,0),(10004,63,6,0),(10005,62,6,0.15),(10006,13,10,0),(10006,50,4,0),(10007,12,4,0),(10007,53,30,0),(10007,63,20,0),(10008,51,20,0),(10009,23,70,0),(10009,51,30,0),(10010,43,10,0),(10010,71,10,0),(10011,18,12,0.25),(10011,19,15,0),(10011,36,10,0.25),(10012,19,49,0),(10012,35,30,0),(10012,40,30,0),(10013,41,50,0),(10013,43,7,0),(10014,18,4,0),(10014,41,3,0),(10015,11,60,0),(10015,24,25,0),(10015,41,20,0),(10016,61,15,0.15),(10016,62,50,0),(10016,68,10,0.15),(10017,46,30,0),(10017,64,30,0),(10018,11,70,0),(10018,50,10,0.15),(10020,8,10,0),(10020,16,14,0),(10021,1,60,0.2),(10021,10,27,0),(10021,33,50,0.2),(10021,36,36,0.2),(10021,71,5,0.2),(10022,49,15,0.25),(10022,50,20,0),(10022,56,4,0.25),(10023,36,20,0),(10023,41,10,0),(10023,71,3,0),(10024,43,10,0),(10024,53,15,0),(10024,56,60,0),(10025,16,10,0),(10025,28,2,0),(10026,68,2,0),(10027,41,40,0.05),(10027,60,50,0.05),(10027,64,40,0.05),(10027,65,80,0.05),(10028,18,20,0),(10028,68,12,0),(10029,11,1,0),(10029,16,5,0),(10030,5,30,0.05),(10030,11,8,0.05),(10030,31,25,0.05),(10030,43,6,0.05),(10031,71,10,0.25),(10032,13,20,0.25),(10032,24,15,0.25),(10035,10,50,0),(10035,11,35,0.15),(10035,34,30,0.15),(10035,41,40,0),(10036,51,1,0),(10036,52,8,0),(10036,53,12,0),(10037,28,12,0.15),(10038,29,4,0.1),(10038,36,8,0),(10038,57,30,0.1),(10039,62,15,0.25),(10040,30,60,0),(10040,56,35,0),(10041,42,25,0.05),(10041,47,20,0),(10041,55,30,0.05),(10042,13,25,0.25),(10042,41,20,0),(10042,44,30,0.25),(10042,51,15,0),(10043,1,40,0.05),(10043,29,15,0.05),(10044,7,28,0),(10045,17,30,0),(10045,24,16,0.15),(10045,49,25,0.15),(10045,60,5,0.15),(10046,27,2,0),(10047,11,4,0),(10047,19,20,0),(10047,52,5,0),(10048,36,50,0),(10049,7,20,0.25),(10050,16,14,0),(10050,52,15,0),(10050,58,50,0),(10051,13,30,0),(10051,56,20,0),(10052,16,20,0),(10052,60,90,0.2),(10053,53,12,0.2),(10053,55,2,0.2),(10054,71,30,0.2),(10055,8,18,0),(10055,51,25,0),(10056,63,8,0.15),(10057,58,3,0),(10058,12,12,0),(10058,41,70,0),(10058,54,30,0),(10058,61,30,0),(10058,62,3,0),(10059,19,20,0.25),(10059,24,24,0.25),(10060,16,28,0),(10060,70,50,0),(10061,66,12,0),(10062,5,8,0.05),(10062,51,12,0.05),(10062,55,20,0.05),(10063,41,32,0.05),(10063,69,24,0),(10064,24,12,0.1),(10064,54,15,0.1),(10064,64,5,0.1),(10064,70,12,0.1),(10065,1,55,0.25),(10065,15,10,0.25),(10065,19,42,0.25),(10066,31,8,0),(10066,41,15,0.1),(10066,54,9,0.1),(10067,11,10,0),(10067,31,10,0),(10067,70,5,0),(10068,34,20,0.05),(10069,46,6,0),(10070,7,8,0),(10070,24,30,0.05),(10070,43,10,0.05),(10071,1,25,0.25),(10071,29,42,0),(10071,54,14,0.25),(10072,16,25,0.1),(10072,18,30,0.1),(10072,45,35,0.1),(10073,53,60,0),(10073,64,35,0),(10074,8,20,0),(10074,24,20,0),(10074,41,30,0),(10074,42,60,0),(10075,9,21,0),(10075,62,2,0),(10076,40,7,0),(10077,1,28,0.2),(10077,31,1,0),(10078,41,7,0.2),(10078,51,24,0),(10078,60,8,0.2),(10079,23,30,0.25),(10079,47,18,0.25),(10079,60,20,0.25),(10080,12,60,0),(10080,30,24,0),(10081,30,15,0),(10081,65,10,0),(10081,70,15,0),(10082,11,21,0.2),(10082,47,15,0.2),(10082,70,40,0.2),(10083,16,30,0),(10083,19,20,0),(10084,54,20,0),(10084,60,15,0),(10085,41,30,0),(10085,61,10,0),(10085,71,10,0),(10086,8,5,0),(10086,38,10,0),(10087,24,21,0),(10087,34,10,0),(10087,60,35,0),(10088,13,30,0.2),(10088,34,4,0.2),(10089,10,4,0),(10089,42,5,0),(10089,45,10,0),(10090,4,10,0),(10090,10,9,0),(10090,16,30,0),(10091,24,60,0.05),(10091,38,70,0),(10092,19,20,0),(10092,31,15,0),(10092,34,21,0),(10093,17,4,0.1),(10093,30,100,0),(10093,53,40,0.1),(10094,8,35,0),(10094,13,28,0),(10094,19,35,0),(10094,28,25,0),(10095,35,10,0),(10095,55,10,0),(10095,68,5,0),(10096,12,60,0),(10096,29,35,0),(10097,29,15,0),(10097,52,12,0),(10097,59,60,0),(10097,64,35,0),(10098,7,10,0.25),(10098,32,40,0.25),(10098,36,21,0.25),(10098,53,45,0.25),(10098,56,55,0),(10098,59,9,0.25),(10099,35,4,0.15),(10099,51,24,0),(10100,22,5,0),(10100,29,20,0),(10101,1,8,0.05),(10102,13,10,0),(10102,29,10,0),(10102,39,5,0),(10102,59,14,0),(10103,36,20,0.25),(10103,38,10,0.25),(10104,13,35,0),(10104,52,3,0),(10105,28,50,0.15),(10105,47,20,0.15),(10106,59,10,0),(10107,3,20,0.2),(10107,34,20,0),(10107,64,15,0.2),(10107,68,50,0.2),(10108,53,15,0),(10108,71,50,0),(10109,42,70,0.25),(10109,68,70,0),(10109,70,24,0),(10110,10,8,0),(10110,24,30,0),(10110,55,20,0),(10111,62,30,0.1),(10112,35,20,0),(10113,18,20,0),(10113,35,21,0),(10114,11,4,0),(10114,41,12,0),(10114,71,10,0),(10115,56,8,0),(10115,57,8,0),(10116,24,7,0),(10116,36,20,0),(10116,54,70,0),(10116,55,20,0),(10117,4,15,0),(10117,62,2,0),(10118,38,30,0),(10118,39,42,0),(10118,59,4,0),(10118,64,18,0),(10119,22,20,0),(10119,44,20,0),(10120,32,1,0),(10120,49,4,0),(10121,27,30,0),(10121,55,25,0),(10123,18,35,0.25),(10123,53,40,0.25),(10124,17,7,0),(10124,32,24,0),(10124,52,60,0),(10125,8,4,0),(10125,24,30,0),(10126,3,28,0),(10126,46,20,0),(10126,59,15,0),(10127,71,5,0),(10128,22,2,0),(10128,54,18,0),(10129,62,15,0.15),(10130,34,12,0),(10131,42,50,0),(10131,50,40,0),(10131,60,60,0),(10132,12,20,0.25),(10132,28,20,0.25),(10132,30,10,0.25),(10132,53,30,0.25),(10133,31,21,0),(10133,38,12,0),(10133,56,12,0),(10134,52,25,0.05),(10135,39,5,0),(10136,18,24,0.25),(10137,13,20,0),(10137,68,15,0),(10138,36,12,0),(10138,66,12,0),(10139,60,20,0),(10140,31,40,0.1),(10141,27,50,0.1),(10141,60,50,0),(10142,4,15,0),(10142,45,15,0),(10143,35,12,0.2),(10143,41,50,0.2),(10144,20,10,0),(10144,24,35,0),(10144,53,20,0),(10145,15,8,0.05),(10145,34,12,0.05),(10145,55,20,0.05),(10146,34,6,0),(10147,11,1,0),(10147,18,20,0),(10147,51,10,0),(10148,30,12,0.2),(10148,40,5,0.2),(10148,43,24,0.2),(10148,51,24,0.2),(10149,27,30,0),(10149,35,40,0),(10150,29,5,0),(10150,53,9,0),(10150,67,4,0),(10152,30,20,0.05),(10152,47,5,0.05),(10153,32,20,0.2),(10153,60,15,0.2),(10154,7,6,0),(10154,55,7,0),(10154,68,2,0),(10155,43,30,0),(10155,62,20,0),(10155,63,20,0),(10156,1,25,0),(10156,4,25,0),(10156,34,20,0),(10157,35,15,0),(10158,11,30,0.1),(10158,34,12,0),(10158,36,12,0),(10158,54,20,0.1),(10158,55,20,0.1),(10159,1,40,0.1),(10159,51,6,0.1),(10160,31,3,0),(10160,71,2,0.15),(10161,11,14,0),(10161,59,21,0),(10161,67,12,0),(10162,16,6,0.15),(10162,33,6,0.15),(10163,1,20,0),(10163,60,48,0),(10163,64,15,0),(10164,47,6,0),(10165,55,35,0.25),(10166,17,20,0),(10166,32,10,0),(10166,47,10,0),(10167,30,30,0.1),(10167,44,18,0.1),(10167,61,12,0.1),(10168,12,80,0),(10168,40,16,0),(10169,17,42,0),(10169,68,15,0),(10170,71,4,0),(10171,19,2,0),(10171,22,25,0),(10172,33,30,0),(10172,42,6,0),(10173,29,10,0),(10173,59,5,0),(10174,15,20,0.05),(10174,20,8,0.05),(10175,30,12,0.15),(10175,36,25,0.15),(10175,59,35,0.15),(10176,55,5,0),(10176,67,50,0),(10176,68,5,0),(10176,71,10,0),(10177,17,30,0.2),(10177,31,35,0.2),(10177,32,6,0.2),(10178,44,20,0),(10178,46,20,0),(10179,64,14,0),(10180,16,15,0),(10180,45,10,0),(10181,4,30,0),(10181,17,40,0),(10182,32,10,0),(10182,44,4,0),(10183,10,3,0),(10183,23,14,0),(10183,49,6,0),(10184,12,15,0),(10184,19,10,0),(10184,46,3,0),(10185,24,4,0.2),(10185,59,8,0.2),(10185,65,10,0.2),(10186,13,28,0),(10186,40,40,0),(10186,50,16,0),(10186,56,15,0),(10187,35,60,0.05),(10187,43,12,0.05),(10188,24,28,0),(10188,62,10,0.25),(10189,36,30,0.1),(10190,33,36,0),(10191,24,15,0),(10192,59,6,0),(10192,70,4,0),(10193,1,45,0),(10193,43,110,0),(10193,54,15,0),(10194,52,35,0),(10194,69,15,0),(10195,38,21,0),(10195,70,12,0),(10196,10,15,0),(10196,24,42,0.25),(10196,38,30,0.25),(10197,46,24,0.1),(10197,58,25,0.1),(10198,38,6,0),(10198,46,6,0),(10198,56,18,0),(10199,1,66,0),(10199,3,40,0),(10199,39,40,0),(10200,11,28,0),(10201,1,25,0.1),(10201,15,25,0.1),(10202,1,20,0),(10202,51,42,0.05),(10203,20,15,0),(10203,70,10,0),(10204,31,70,0.25),(10204,45,35,0.25),(10204,59,50,0.25),(10205,31,12,0),(10205,40,28,0),(10205,41,56,0),(10205,62,25,0),(10206,34,60,0),(10206,43,12,0),(10207,13,20,0.15),(10207,35,10,0.15),(10207,46,40,0.15),(10208,56,12,0.1),(10209,1,4,0.2),(10209,4,15,0.2),(10209,52,18,0.2),(10210,11,12,0),(10210,39,60,0.25),(10210,57,15,0.25),(10210,67,30,0.25),(10211,39,12,0),(10211,41,40,0),(10212,31,8,0),(10212,70,25,0.15),(10213,38,10,0),(10214,19,4,0),(10214,69,35,0),(10215,29,9,0.05),(10216,35,30,0.25),(10217,41,28,0),(10217,59,6,0),(10218,29,5,0.05),(10218,56,15,0.05),(10219,41,56,0.1),(10219,43,20,0),(10219,70,4,0.1),(10220,13,20,0.05),(10220,33,9,0.05),(10220,69,30,0.05),(10221,54,20,0),(10221,55,12,0),(10221,64,20,0),(10222,4,80,0),(10223,17,1,0),(10223,19,10,0),(10223,56,5,0),(10224,24,50,0.25),(10224,70,25,0.25),(10225,11,70,0),(10225,35,10,0),(10225,42,55,0),(10225,52,10,0),(10226,9,25,0),(10226,29,110,0.2),(10226,31,14,0.2),(10226,33,21,0.2),(10226,59,42,0.2),(10227,10,4,0.1),(10227,55,14,0.1),(10228,53,3,0),(10228,64,20,0),(10229,35,7,0),(10230,27,36,0),(10230,56,40,0),(10231,62,12,0.25),(10232,30,10,0),(10232,49,20,0),(10232,61,10,0),(10233,33,36,0),(10233,44,40,0),(10234,24,21,0),(10234,53,30,0),(10234,69,2,0),(10236,5,40,0),(10236,69,30,0.05),(10237,19,20,0.2),(10237,62,18,0.2),(10238,35,4,0),(10238,65,10,0),(10239,20,10,0),(10240,32,49,0.25),(10240,33,18,0.25),(10240,46,10,0.25),(10240,55,50,0.25),(10241,8,12,0.05),(10241,43,25,0.05),(10242,70,25,0.15),(10243,34,10,0),(10244,43,6,0.25),(10244,54,8,0.25),(10245,30,28,0.2),(10245,35,10,0.2),(10246,40,15,0),(10247,10,35,0.25),(10247,46,50,0),(10248,11,12,0),(10248,42,10,0),(10249,51,40,0),(10250,41,10,0),(10250,51,35,0.15),(10250,65,15,0.15),(10251,22,6,0.05),(10251,57,15,0.05),(10251,65,20,0),(10252,20,40,0.05),(10252,33,25,0.05),(10252,60,40,0),(10253,31,20,0),(10253,39,42,0),(10253,49,40,0),(10254,24,15,0.15),(10254,55,21,0.15),(10255,16,35,0),(10255,36,25,0),(10255,59,30,0),(10256,53,15,0),(10257,27,25,0),(10257,39,6,0),(10258,5,65,0.2),(10258,32,6,0.2),(10260,41,16,0.25),(10260,57,50,0),(10260,62,15,0.25),(10260,70,21,0.25),(10261,35,20,0),(10262,5,12,0.2),(10262,7,15,0),(10262,56,2,0),(10263,16,60,0.25),(10263,24,28,0),(10263,30,60,0.25),(10264,41,25,0.15),(10265,17,30,0),(10265,70,20,0),(10266,12,12,0.05),(10267,40,50,0),(10267,59,70,0.15),(10268,29,10,0),(10269,33,60,0.05),(10270,36,30,0),(10270,43,25,0),(10271,33,24,0),(10272,20,6,0),(10272,31,40,0),(10273,10,24,0.05),(10273,31,15,0.05),(10273,33,20,0),(10273,40,60,0.05),(10274,71,20,0),(10275,24,12,0.05),(10275,59,6,0.05),(10276,10,15,0),(10276,13,10,0),(10277,28,20,0),(10277,62,12,0),(10278,44,16,0),(10278,59,15,0),(10278,63,8,0),(10279,17,15,0.25),(10280,24,12,0),(10280,55,20,0),(10281,19,1,0),(10281,24,6,0),(10281,35,4,0),(10282,30,6,0),(10282,57,2,0),(10283,15,20,0),(10283,19,18,0),(10283,60,35,0),(10284,27,15,0.25),(10284,44,21,0),(10284,60,20,0.25),(10284,67,5,0.25),(10285,1,45,0.2),(10285,40,40,0.2),(10285,53,36,0.2),(10286,35,100,0),(10286,62,40,0),(10287,16,40,0.15),(10287,34,20,0),(10287,46,15,0.15),(10288,54,10,0.1),(10288,68,3,0.1),(10289,3,30,0),(10289,64,9,0),(10290,5,20,0),(10290,29,15,0),(10290,49,15,0),(10291,13,20,0.1),(10291,44,24,0.1),(10291,51,2,0.1),(10292,20,20,0),(10293,18,12,0),(10293,24,10,0),(10293,63,5,0),(10294,1,18,0),(10294,17,15,0),(10294,43,15,0),(10294,60,21,0),(10295,56,4,0),(10296,11,12,0),(10296,16,30,0),(10296,69,15,0),(10297,39,60,0),(10298,36,40,0.25),(10298,59,30,0.25),(10298,62,15,0),(10299,19,15,0),(10299,70,20,0),(10300,66,30,0),(10300,68,20,0),(10301,40,10,0),(10301,56,20,0),(10302,17,40,0),(10302,28,28,0),(10302,43,12,0),(10303,40,40,0.1),(10303,65,30,0.1),(10303,68,15,0.1),(10304,49,30,0),(10304,59,10,0),(10304,71,2,0),(10305,18,25,0.1),(10305,29,25,0.1),(10305,39,30,0.1),(10306,30,10,0),(10306,53,10,0),(10306,54,5,0),(10307,62,10,0),(10307,68,3,0),(10308,69,1,0),(10308,70,5,0),(10309,4,20,0),(10309,42,2,0),(10309,43,20,0),(10309,71,3,0),(10310,16,10,0),(10310,62,5,0),(10311,42,6,0),(10311,69,7,0),(10312,28,4,0),(10312,43,24,0),(10312,53,20,0),(10313,36,12,0),(10314,32,40,0.1),(10314,58,30,0.1),(10314,62,25,0.1),(10315,34,14,0),(10315,70,30,0),(10316,41,10,0),(10316,62,70,0),(10317,1,20,0),(10318,41,20,0),(10319,17,8,0),(10319,28,14,0),(10320,71,30,0),(10321,35,10,0),(10322,52,20,0),(10323,15,5,0),(10323,39,4,0),(10324,16,21,0.15),(10324,35,70,0.15),(10324,46,30,0),(10324,59,40,0.15),(10324,63,80,0.15),(10325,13,12,0),(10325,31,4,0),(10326,4,24,0),(10326,57,16,0),(10327,11,50,0.2),(10327,30,35,0.2),(10327,58,30,0.2),(10328,59,9,0),(10328,65,40,0),(10328,68,10,0),(10329,19,10,0.05),(10329,30,8,0.05),(10329,38,20,0.05),(10329,56,12,0.05),(10331,54,15,0),(10332,18,40,0.2),(10332,42,10,0.2),(10332,47,16,0.2),(10333,71,40,0.1),(10334,52,8,0),(10334,68,10,0),(10335,31,25,0.2),(10335,32,6,0.2),(10335,51,48,0.2),(10336,4,18,0.1),(10337,23,40,0),(10337,36,20,0),(10338,17,20,0),(10338,30,15,0),(10339,4,10,0),(10339,17,70,0.05),(10339,62,28,0),(10340,18,20,0.05),(10340,41,12,0.05),(10340,43,40,0.05),(10341,33,8,0),(10341,59,9,0.15),(10342,31,56,0.2),(10342,36,40,0.2),(10342,55,40,0.2),(10343,64,50,0),(10343,68,4,0.05),(10344,4,35,0),(10344,8,70,0.25),(10345,8,70,0),(10345,19,80,0),(10345,42,9,0),(10346,17,36,0.1),(10346,56,20,0),(10347,39,50,0.15),(10347,40,4,0),(10348,1,15,0.15),(10348,23,25,0),(10349,54,24,0),(10350,50,15,0.1),(10350,69,18,0.1),(10351,38,20,0.05),(10351,41,13,0),(10351,44,77,0.05),(10351,65,10,0.05),(10352,24,10,0),(10352,54,20,0.15),(10353,11,12,0.2),(10353,38,50,0.2),(10354,1,12,0),(10354,29,4,0),(10355,24,25,0),(10355,57,25,0),(10356,31,30,0),(10356,55,12,0),(10356,69,20,0),(10357,10,30,0.2),(10357,60,8,0.2),(10358,24,10,0.05),(10358,34,10,0.05),(10358,36,20,0.05),(10359,16,56,0.05),(10359,31,70,0.05),(10359,60,80,0.05),(10360,28,30,0),(10360,29,35,0),(10360,38,10,0),(10360,49,35,0),(10360,54,28,0),(10361,39,54,0.1),(10361,60,55,0.1),(10362,51,20,0),(10362,54,24,0),(10363,31,20,0),(10364,69,30,0),(10364,71,5,0),(10365,11,24,0),(10366,65,5,0),(10367,34,36,0),(10367,54,18,0),(10367,65,15,0),(10368,28,13,0.1),(10368,57,25,0),(10368,64,35,0.1),(10369,29,20,0),(10369,56,18,0.25),(10370,1,15,0.15),(10370,64,30,0),(10371,36,6,0.2),(10372,20,12,0.25),(10372,38,40,0.25),(10372,60,70,0.25),(10373,58,80,0.2),(10373,71,50,0.2),(10374,31,30,0),(10374,58,15,0),(10375,54,10,0),(10376,31,42,0.05),(10377,28,20,0.15),(10377,39,20,0.15),(10378,71,6,0),(10379,41,8,0.1),(10379,63,16,0.1),(10379,65,20,0.1),(10380,30,18,0.1),(10380,53,20,0.1),(10380,60,6,0.1),(10380,70,30,0),(10382,5,32,0),(10382,18,9,0),(10382,29,14,0),(10382,33,60,0),(10383,13,20,0),(10383,50,15,0),(10383,56,20,0),(10384,20,28,0),(10384,60,15,0),(10385,7,10,0.2),(10385,60,20,0.2),(10385,68,8,0.2),(10386,24,15,0),(10386,34,10,0),(10387,24,15,0),(10387,28,6,0),(10387,59,12,0),(10387,71,15,0),(10388,45,15,0.2),(10388,52,20,0.2),(10388,53,40,0),(10389,10,16,0),(10389,55,15,0),(10389,62,20,0),(10389,70,30,0),(10390,31,60,0.1),(10390,35,40,0.1),(10390,46,45,0),(10391,13,18,0),(10392,69,50,0),(10393,31,32,0),(10394,13,10,0),(10394,62,10,0),(10395,46,28,0.1),(10395,53,70,0.1),(10395,69,8,0),(10396,23,40,0),(10396,71,60,0),(10397,51,18,0.15),(10398,35,30,0),(10398,55,120,0.1),(10399,68,60,0),(10399,71,30,0),(10400,29,21,0),(10400,35,35,0),(10400,49,30,0),(10401,30,18,0),(10401,56,70,0),(10401,65,20,0),(10401,71,60,0),(10402,23,60,0),(10402,63,65,0),(10403,16,21,0.15),(10404,42,40,0.05),(10404,49,30,0.05),(10405,3,50,0),(10406,1,10,0),(10406,28,42,0.1),(10406,36,5,0.1),(10406,40,2,0.1),(10407,11,30,0),(10407,69,15,0),(10407,71,15,0),(10408,54,6,0),(10408,62,35,0),(10410,33,49,0),(10410,59,16,0),(10411,41,25,0.2),(10411,44,40,0.2),(10411,59,9,0.2),(10413,1,24,0),(10413,62,40,0),(10414,19,18,0.05),(10414,33,50,0),(10415,17,2,0),(10415,33,20,0),(10416,19,20,0),(10416,53,10,0),(10416,57,20,0),(10417,38,50,0),(10417,46,2,0.25),(10417,68,36,0.25),(10418,47,55,0),(10418,61,16,0),(10419,60,60,0.05),(10419,69,20,0.05),(10420,9,20,0.1),(10420,13,2,0.1),(10420,70,8,0.1),(10421,19,4,0.15),(10421,53,15,0.15),(10423,31,14,0),(10423,59,20,0),(10424,35,60,0.2),(10424,38,49,0.2),(10424,68,30,0.2),(10425,55,10,0.25),(10426,56,5,0),(10426,64,7,0),(10428,46,20,0),(10429,50,40,0),(10429,63,35,0.25),(10430,17,45,0.2),(10430,56,30,0),(10430,59,70,0.2),(10431,17,50,0.25),(10431,40,50,0.25),(10431,47,30,0.25),(10432,54,40,0),(10433,56,28,0),(10434,11,6,0),(10435,22,12,0),(10436,46,5,0),(10436,56,40,0.1),(10436,64,30,0.1),(10437,53,15,0),(10438,19,15,0.2),(10438,34,20,0.2),(10438,57,15,0.2),(10439,12,15,0),(10439,16,16,0),(10439,64,6,0),(10440,16,49,0.15),(10440,29,24,0.15),(10440,61,90,0.15),(10441,27,50,0),(10442,11,30,0),(10442,54,80,0),(10442,66,60,0),(10443,11,6,0.2),(10443,28,12,0),(10444,17,10,0),(10444,35,8,0),(10444,41,30,0),(10445,39,6,0),(10445,54,15,0),(10446,19,12,0.1),(10446,24,20,0.1),(10446,31,3,0.1),(10446,52,15,0.1),(10447,19,40,0),(10447,65,35,0),(10447,71,2,0),(10448,40,20,0),(10449,10,14,0),(10449,52,20,0),(10449,62,35,0),(10450,10,20,0.2),(10450,54,6,0.2),(10451,55,120,0.1),(10451,64,35,0.1),(10451,65,28,0.1),(10452,28,15,0),(10452,44,100,0.05),(10453,70,25,0.1),(10454,16,20,0.2),(10454,33,20,0.2),(10454,46,10,0.2),(10455,39,20,0),(10455,53,50,0),(10455,61,25,0),(10455,71,30,0),(10456,49,21,0.15),(10457,59,36,0),(10458,28,30,0),(10458,43,20,0),(10458,56,15,0),(10458,71,50,0),(10459,7,16,0.05),(10459,46,20,0.05),(10460,68,21,0.25),(10461,30,28,0.25),(10461,55,60,0.25),(10462,13,1,0),(10462,23,21,0),(10463,19,21,0),(10463,42,50,0),(10464,4,16,0.2),(10464,43,3,0),(10464,56,30,0.2),(10464,60,20,0),(10465,24,25,0),(10465,29,18,0.1),(10465,40,20,0),(10465,45,30,0.1),(10465,50,25,0),(10466,11,10,0),(10466,46,5,0),(10467,24,28,0),(10468,30,8,0),(10468,43,15,0),(10469,16,35,0.15),(10469,44,2,0.15),(10470,18,30,0),(10470,23,15,0),(10470,64,8,0),(10471,7,30,0),(10471,56,20,0),(10472,24,80,0.05),(10472,51,18,0),(10473,33,12,0),(10473,71,12,0),(10474,28,18,0),(10474,40,21,0),(10475,31,35,0.15),(10475,66,60,0.15),(10476,55,2,0.05),(10476,70,12,0),(10477,1,15,0),(10477,39,20,0.25),(10478,10,20,0.05),(10479,38,30,0),(10479,53,28,0),(10479,59,60,0),(10479,64,30,0),(10480,47,30,0),(10480,59,12,0),(10481,49,24,0),(10481,60,40,0),(10482,40,10,0),(10483,34,35,0.05),(10484,40,10,0),(10484,51,3,0),(10485,3,20,0.1),(10485,55,30,0.1),(10485,70,60,0.1),(10486,11,5,0),(10486,51,25,0),(10487,19,5,0),(10487,54,24,0.25),(10488,59,30,0),(10489,11,15,0.25),(10489,16,18,0),(10490,59,60,0),(10490,68,30,0),(10491,44,15,0.15),(10492,42,20,0.05),(10493,65,15,0.1),(10493,66,10,0.1),(10493,69,10,0.1),(10494,56,30,0),(10495,23,10,0),(10495,41,20,0),(10496,31,20,0.05),(10497,56,14,0),(10498,24,14,0),(10498,40,5,0),(10498,42,30,0),(10499,28,20,0),(10499,49,25,0),(10500,15,12,0.05),(10500,28,8,0.05),(10501,54,20,0),(10502,45,21,0),(10502,53,6,0),(10502,67,30,0),(10503,65,20,0),(10504,53,10,0),(10504,61,25,0),(10505,62,3,0),(10506,70,14,0.1),(10507,43,15,0.15),(10508,13,10,0),(10508,39,10,0),(10509,28,3,0),(10510,29,36,0),(10511,4,50,0.15),(10511,7,50,0.15),(10511,8,10,0.15),(10512,24,10,0.15),(10512,46,9,0.15),(10512,47,6,0.15),(10512,60,12,0.15),(10513,32,50,0.2),(10513,61,15,0.2),(10514,20,39,0),(10514,28,35,0),(10514,56,70,0),(10514,65,39,0),(10515,9,16,0.15),(10515,16,50,0),(10515,27,120,0),(10515,33,16,0.15),(10515,60,84,0.15),(10516,18,25,0.1),(10516,41,80,0.1),(10516,42,20,0),(10517,52,6,0),(10517,59,4,0),(10517,70,6,0),(10518,24,5,0),(10518,38,15,0),(10518,44,9,0),(10519,10,16,0.05),(10519,56,40,0),(10519,60,10,0.05),(10520,24,8,0),(10520,53,5,0),(10521,35,3,0),(10521,41,10,0),(10521,68,6,0),(10522,1,40,0.2),(10522,8,24,0),(10522,30,20,0.2),(10522,40,25,0.2),(10523,17,25,0.1),(10523,20,15,0.1),(10523,41,6,0.1),(10524,10,2,0),(10524,30,10,0),(10524,43,60,0),(10524,54,15,0),(10525,36,30,0),(10525,40,15,0.1),(10526,1,8,0.15),(10526,13,10,0),(10526,56,30,0.15),(10527,4,50,0.1),(10527,36,30,0.1),(10528,11,3,0),(10528,33,8,0.2),(10529,55,14,0),(10529,68,20,0),(10529,69,10,0),(10530,17,40,0),(10530,43,25,0),(10530,61,20,0),(10531,59,2,0),(10532,30,15,0),(10532,66,24,0),(10533,4,50,0.05),(10534,30,10,0),(10534,40,10,0.2),(10534,54,10,0.2),(10535,11,50,0.1),(10535,40,10,0.1),(10535,57,5,0.1),(10535,59,15,0.1),(10536,12,15,0.25),(10536,31,20,0),(10536,33,30,0),(10536,60,35,0.25),(10537,31,30,0),(10537,51,6,0),(10537,58,20,0),(10538,70,7,0),(10539,13,8,0),(10539,33,15,0),(10539,49,6,0),(10540,3,60,0),(10540,38,30,0),(10540,68,35,0),(10541,24,35,0.1),(10541,38,4,0.1),(10541,65,36,0.1),(10541,71,9,0.1),(10542,11,15,0.05),(10542,54,24,0.05),(10543,12,30,0.15),(10543,23,70,0.15),(10544,28,7,0),(10544,67,7,0),(10545,11,10,0),(10546,7,10,0),(10546,35,30,0),(10546,62,40,0),(10547,32,24,0.15),(10547,36,60,0),(10548,34,10,0.25),(10548,41,14,0),(10549,31,55,0.15),(10549,45,100,0.15),(10549,51,48,0.15),(10550,17,8,0.1),(10550,19,10,0),(10550,61,10,0.1),(10551,16,40,0.15),(10551,35,20,0.15),(10551,44,40,0),(10552,69,18,0),(10553,11,15,0),(10553,16,14,0),(10553,22,24,0),(10553,31,30,0),(10553,35,6,0),(10554,16,30,0.05),(10554,23,20,0.05),(10554,62,20,0.05),(10555,19,35,0.2),(10555,24,18,0.2),(10555,51,20,0.2),(10555,56,40,0.2),(10557,64,30,0),(10558,47,25,0),(10558,51,20,0),(10558,52,30,0),(10558,53,18,0),(10559,41,12,0.05),(10559,55,18,0.05),(10560,30,20,0),(10560,62,15,0.25),(10561,44,10,0),(10561,51,50,0),(10562,33,20,0.1),(10562,62,10,0.1),(10563,36,25,0),(10563,52,70,0),(10564,17,16,0.05),(10564,31,6,0.05),(10564,55,25,0.05),(10565,24,25,0.1),(10565,64,18,0.1),(10566,11,35,0.15),(10566,18,18,0.15),(10567,31,60,0.2),(10567,51,3,0),(10567,59,40,0.2),(10568,10,5,0),(10569,31,35,0.2),(10570,11,15,0.05),(10570,56,60,0.05),(10571,42,28,0.15),(10572,16,12,0.1),(10572,32,10,0.1),(10572,40,50,0),(10573,17,18,0),(10573,34,40,0),(10573,53,25,0),(10574,33,14,0),(10574,40,2,0),(10574,62,10,0),(10574,64,6,0),(10575,59,12,0),(10575,63,6,0),(10576,1,10,0),(10576,31,20,0),(10576,44,21,0),(10577,39,10,0),(10578,35,20,0),(10578,57,6,0),(10579,15,10,0),(10580,41,9,0.05),(10580,65,30,0.05),(10582,57,4,0),(10583,29,10,0),(10583,60,24,0.15),(10583,69,10,0.15),(10584,31,50,0.05),(10585,47,15,0),(10586,52,4,0.15),(10587,35,20,0),(10588,18,40,0.2),(10588,42,100,0.2),(10589,35,4,0),(10590,1,20,0),(10591,3,14,0),(10591,7,10,0),(10591,54,50,0),(10592,15,25,0.05),(10593,20,21,0.2),(10593,69,20,0.2),(10594,52,24,0),(10594,58,30,0),(10595,35,30,0.25),(10595,61,120,0.25),(10595,69,65,0.25),(10596,56,5,0.2),(10596,63,24,0.2),(10597,24,35,0.2),(10597,57,20,0),(10597,65,12,0.2),(10598,27,50,0),(10598,71,9,0),(10599,62,10,0),(10600,54,4,0),(10601,13,60,0),(10601,59,35,0),(10603,22,48,0),(10603,49,25,0.05),(10605,16,30,0.05),(10605,59,20,0.05),(10605,60,70,0.05),(10605,71,15,0.05),(10606,4,20,0.2),(10606,55,20,0.2),(10606,62,10,0.2),(10607,7,45,0),(10607,17,100,0),(10607,33,14,0),(10607,40,42,0),(10608,56,28,0),(10609,1,3,0),(10609,10,10,0),(10610,36,21,0.25),(10611,1,6,0),(10611,60,15,0),(10612,10,70,0),(10612,36,55,0),(10612,49,18,0),(10612,60,40,0),(10613,13,8,0.1),(10614,11,14,0),(10614,39,5,0),(10615,55,5,0),(10616,38,15,0.05),(10616,56,14,0),(10616,70,15,0.05),(10616,71,15,0.05),(10617,59,30,0.15),(10618,56,20,0),(10618,68,15,0),(10619,22,40,0),(10620,24,5,0),(10620,52,5,0),(10621,19,5,0),(10621,23,10,0),(10621,70,20,0),(10621,71,15,0),(10622,68,18,0.2),(10623,19,15,0.1),(10623,24,3,0),(10623,35,30,0.1),(10624,28,10,0),(10624,29,6,0),(10624,44,10,0),(10625,42,5,0),(10625,60,10,0),(10626,53,12,0),(10626,60,20,0),(10626,71,20,0),(10627,62,15,0),(10628,1,25,0),(10629,29,20,0),(10629,64,9,0),(10630,55,12,0.05),(10632,33,20,0.05),(10633,12,36,0.15),(10633,13,13,0.15),(10633,62,80,0.15),(10634,7,35,0),(10634,18,50,0),(10634,51,15,0),(10635,4,10,0.1),(10635,5,15,0.1),(10635,22,40,0),(10636,4,25,0),(10636,58,6,0),(10637,11,10,0),(10637,50,25,0.05),(10637,56,60,0.05),(10638,45,20,0),(10638,65,21,0),(10639,18,8,0),(10640,69,20,0.25),(10640,70,15,0.25),(10641,40,60,0),(10642,61,20,0.2),(10643,28,15,0.25),(10643,39,21,0.25),(10643,46,2,0.25),(10644,18,4,0.1),(10644,43,20,0),(10644,46,21,0.1),(10645,18,20,0),(10645,36,15,0),(10646,1,15,0.25),(10646,10,18,0.25),(10646,71,30,0.25),(10647,19,30,0),(10647,39,20,0),(10648,22,15,0),(10648,24,15,0.15),(10649,28,20,0),(10650,30,30,0),(10650,53,25,0.05),(10650,54,30,0),(10651,19,12,0.25),(10651,22,20,0.25),(10652,30,2,0.25),(10652,42,20,0),(10653,16,30,0.1),(10653,60,20,0.1),(10654,4,12,0.1),(10654,39,20,0.1),(10654,54,6,0.1),(10655,41,20,0.2),(10656,44,28,0.1),(10656,47,6,0.1),(10657,15,50,0),(10657,41,24,0),(10657,46,45,0),(10657,47,10,0),(10657,56,45,0),(10657,60,30,0),(10658,40,70,0.05),(10658,60,55,0.05),(10659,31,20,0.05),(10659,40,24,0.05),(10659,70,40,0.05),(10660,20,21,0),(10661,39,3,0.2),(10661,58,49,0.2),(10662,68,10,0),(10663,40,30,0.05),(10663,42,30,0.05),(10663,51,20,0.05),(10664,10,24,0.15),(10664,56,12,0.15),(10664,65,15,0.15),(10665,51,20,0),(10665,59,1,0),(10666,29,36,0),(10666,65,10,0),(10667,69,45,0.2),(10667,71,14,0.2),(10668,31,8,0.1),(10668,55,4,0.1),(10668,64,15,0.1),(10669,36,30,0),(10670,23,32,0),(10670,46,60,0),(10670,67,25,0),(10671,16,10,0),(10671,62,10,0),(10671,65,12,0),(10672,38,15,0.1),(10672,71,12,0),(10673,16,3,0),(10673,42,6,0),(10673,43,6,0),(10674,23,5,0),(10675,53,10,0),(10675,58,30,0),(10676,10,2,0),(10676,19,7,0),(10676,44,21,0),(10677,33,8,0.15),(10678,12,100,0),(10678,33,30,0),(10678,41,120,0),(10678,54,30,0),(10679,59,12,0),(10680,16,50,0.25),(10680,31,20,0.25),(10680,42,40,0.25),(10681,19,30,0.1),(10681,64,28,0),(10682,33,30,0),(10682,66,4,0),(10683,52,9,0),(10684,40,20,0),(10684,47,40,0),(10684,60,30,0),(10685,10,20,0),(10685,41,4,0),(10685,47,15,0),(10686,17,30,0.2),(10687,9,50,0.25),(10687,29,10,0),(10687,36,6,0.25),(10688,10,18,0.1),(10688,28,60,0.1),(10688,34,14,0),(10689,1,35,0.25),(10690,56,20,0.25),(10691,1,30,0),(10691,29,40,0),(10691,43,40,0),(10691,44,24,0),(10691,62,48,0),(10692,63,20,0),(10693,9,6,0),(10693,54,60,0.15),(10693,69,30,0.15),(10694,7,90,0),(10694,59,25,0),(10694,70,50,0),(10695,8,10,0),(10695,12,4,0),(10695,24,20,0),(10696,17,20,0),(10696,46,18,0),(10697,19,7,0.25),(10697,35,9,0.25),(10697,58,30,0.25),(10697,70,30,0.25),(10698,11,15,0),(10698,17,8,0.05),(10698,29,12,0.05),(10698,65,65,0.05),(10698,70,8,0.05),(10699,47,12,0),(10700,1,5,0.2),(10700,34,12,0.2),(10700,68,40,0.2),(10700,71,60,0.2),(10701,59,42,0.15),(10701,71,20,0.15),(10702,3,6,0),(10703,59,35,0),(10704,4,6,0),(10704,24,35,0),(10705,31,20,0),(10705,32,4,0),(10706,16,20,0),(10706,43,24,0),(10706,59,8,0),(10707,55,21,0),(10707,57,40,0),(10707,70,28,0.15),(10708,5,4,0),(10708,36,5,0),(10709,8,40,0),(10709,51,28,0),(10709,60,10,0),(10710,19,5,0),(10710,47,5,0),(10711,19,12,0),(10711,41,42,0),(10711,53,120,0),(10712,53,3,0.05),(10712,56,30,0),(10713,10,18,0),(10713,45,110,0),(10713,46,24,0),(10714,17,27,0.25),(10714,47,50,0.25),(10714,56,18,0.25),(10714,58,12,0.25),(10715,10,21,0),(10715,71,30,0),(10716,51,7,0),(10716,61,10,0),(10717,54,15,0),(10717,69,25,0.05),(10718,12,36,0),(10718,16,20,0),(10718,36,40,0),(10718,62,20,0),(10719,18,12,0.25),(10719,30,3,0.25),(10719,54,40,0.25),(10720,35,21,0),(10720,71,8,0),(10721,44,50,0.05),(10722,31,50,0),(10722,68,45,0),(10724,10,16,0),(10724,61,5,0),(10725,41,12,0),(10725,52,4,0),(10725,55,6,0),(10726,4,25,0),(10726,11,5,0),(10727,17,20,0.05),(10727,56,10,0.05),(10727,59,10,0.05),(10728,30,15,0),(10728,40,6,0),(10728,55,12,0),(10728,60,15,0),(10729,1,50,0),(10729,50,40,0),(10730,16,15,0.05),(10730,31,3,0.05),(10730,65,10,0.05),(10731,51,30,0.05),(10733,28,20,0),(10733,52,25,0),(10734,30,15,0),(10735,61,20,0.1),(10736,65,40,0),(10737,13,4,0),(10737,41,12,0),(10738,16,3,0),(10739,36,6,0),(10739,52,18,0),(10740,28,5,0.2),(10740,35,35,0.2),(10740,45,40,0.2),(10740,56,14,0.2),(10742,3,20,0),(10742,60,50,0),(10743,46,28,0.05),(10744,40,50,0.2),(10745,18,24,0),(10745,44,16,0),(10745,59,45,0),(10746,13,6,0),(10746,42,28,0),(10746,62,9,0),(10746,69,40,0),(10747,31,8,0),(10747,41,35,0),(10747,63,9,0),(10747,69,30,0),(10748,23,44,0),(10748,40,40,0),(10748,56,28,0),(10749,56,15,0),(10749,59,6,0),(10750,45,40,0.15),(10750,59,25,0.15),(10751,30,30,0),(10751,50,20,0.1),(10752,1,8,0),(10752,69,3,0),(10753,45,4,0),(10754,40,3,0),(10755,47,30,0.25),(10755,56,30,0.25),(10755,57,14,0.25),(10755,69,25,0.25),(10756,18,21,0.2),(10756,36,20,0.2),(10756,68,6,0.2),(10756,69,20,0.2),(10757,34,30,0),(10757,59,7,0),(10757,62,30,0),(10757,64,24,0),(10758,52,60,0),(10758,70,40,0),(10759,32,10,0),(10760,27,40,0),(10760,43,30,0.25),(10762,39,16,0),(10762,47,30,0),(10762,51,28,0),(10762,56,60,0),(10763,22,6,0),(10763,24,20,0),(10764,3,20,0.1),(10764,39,130,0.1),(10765,65,80,0.1),(10766,7,35,0),(10766,68,40,0),(10767,42,2,0),(10768,22,4,0),(10768,31,50,0),(10768,60,15,0),(10768,71,12,0),(10769,41,30,0.05),(10769,52,15,0.05),(10769,61,20,0),(10769,62,15,0),(10770,11,15,0.25),(10771,71,16,0),(10772,29,18,0),(10772,59,25,0),(10773,17,33,0),(10773,31,70,0.2),(10774,31,2,0.25),(10774,66,50,0),(10775,10,6,0),(10775,67,3,0),(10776,31,16,0.05),(10776,42,12,0.05),(10776,45,27,0.05),(10776,51,120,0.05),(10777,42,20,0.2),(10778,41,10,0),(10779,16,20,0),(10779,62,20,0),(10780,70,35,0),(10781,54,3,0.2),(10781,56,20,0.2),(10782,31,1,0),(10783,31,10,0),(10783,38,5,0),(10784,36,30,0),(10784,39,2,0.15),(10785,10,10,0),(10786,8,30,0.2),(10786,30,15,0.2),(10787,29,20,0.05),(10788,19,50,0.05),(10789,18,30,0),(10789,35,15,0),(10789,63,30,0),(10789,68,18,0),(10790,7,3,0.15),(10790,56,20,0.15),(10791,29,14,0.05),(10791,41,20,0.05),(10792,54,3,0),(10792,68,15,0),(10793,41,14,0),(10793,52,8,0),(10794,54,6,0.2),(10795,16,65,0),(10795,17,35,0.25),(10796,44,10,0),(10796,64,35,0.2),(10796,69,24,0.2),(10797,11,20,0),(10798,62,2,0),(10799,13,20,0.15),(10799,24,20,0.15),(10799,59,25,0),(10800,11,50,0.1),(10800,51,10,0.1),(10800,54,7,0.1),(10801,17,40,0.25),(10801,29,20,0.25),(10802,30,25,0.25),(10802,51,30,0.25),(10802,55,60,0.25),(10802,62,5,0.25),(10803,19,24,0.05),(10803,59,15,0.05),(10804,10,36,0),(10804,28,24,0),(10804,49,4,0.15),(10805,34,10,0),(10805,38,10,0),(10806,65,2,0),(10807,40,1,0),(10808,56,20,0.15),(10809,52,20,0),(10810,13,7,0),(10810,70,5,0),(10811,19,15,0),(10811,23,18,0),(10811,40,30,0),(10812,31,16,0.1),(10813,46,35,0),(10814,41,20,0),(10814,43,20,0.15),(10814,61,30,0.15),(10815,33,16,0),(10816,38,30,0.05),(10816,62,20,0.05),(10817,38,30,0),(10817,40,60,0.15),(10817,62,25,0.15),(10818,32,20,0),(10818,41,20,0),(10819,43,7,0),(10820,56,30,0),(10821,35,20,0),(10821,51,6,0),(10822,62,3,0),(10822,70,6,0),(10823,11,20,0.1),(10823,57,15,0),(10823,59,40,0.1),(10824,41,12,0),(10824,70,9,0),(10825,53,20,0),(10826,31,35,0),(10826,57,15,0),(10827,10,15,0),(10827,39,21,0),(10828,20,5,0),(10828,38,2,0),(10829,8,20,0),(10829,13,10,0),(10829,60,21,0),(10830,39,28,0),(10830,60,30,0),(10830,68,24,0),(10831,19,2,0),(10831,35,8,0),(10831,38,8,0),(10831,43,9,0),(10832,13,3,0.2),(10832,44,16,0.2),(10832,64,3,0),(10833,7,20,0.1),(10833,31,9,0.1),(10833,53,9,0.1),(10834,29,8,0.05),(10834,30,20,0.05),(10835,59,15,0),(10836,22,52,0),(10836,35,6,0),(10836,57,24,0),(10836,60,60,0),(10836,64,30,0),(10837,13,6,0),(10837,40,25,0),(10837,47,40,0.25),(10838,1,4,0.25),(10838,18,25,0.25),(10838,36,50,0.25),(10839,58,30,0.1),(10840,39,10,0.2),(10841,10,16,0),(10841,56,30,0),(10841,59,50,0),(10842,11,15,0),(10842,43,5,0),(10842,68,20,0),(10842,70,12,0),(10843,51,4,0.25),(10844,22,35,0),(10845,23,70,0.1),(10845,35,25,0.1),(10845,42,42,0.1),(10845,58,60,0.1),(10845,64,48,0),(10846,4,21,0),(10846,70,30,0),(10847,1,80,0.2),(10847,19,12,0.2),(10847,45,36,0.2),(10847,60,45,0.2),(10847,71,55,0.2),(10848,5,30,0),(10848,9,3,0),(10849,3,49,0),(10850,33,4,0.15),(10850,70,30,0.15),(10851,57,10,0.05),(10851,59,42,0.05),(10852,17,6,0),(10852,62,50,0),(10853,18,10,0),(10854,10,100,0.15),(10854,13,65,0.15),(10855,16,50,0),(10855,31,14,0),(10855,56,24,0),(10855,65,15,0.15),(10856,42,20,0),(10857,3,30,0),(10857,29,10,0.25),(10858,7,5,0),(10858,27,10,0),(10858,70,4,0),(10859,24,40,0.25),(10859,54,35,0.25),(10859,64,30,0.25),(10860,51,3,0),(10861,17,42,0),(10861,18,20,0),(10861,33,35,0),(10861,62,3,0),(10862,11,25,0),(10862,52,8,0),(10863,1,20,0.15),(10863,58,12,0.15),(10864,35,4,0),(10864,67,15,0),(10865,38,60,0.05),(10865,39,80,0.05),(10866,24,6,0.25),(10866,30,40,0.25),(10867,53,3,0),(10868,35,30,0),(10868,49,42,0.1),(10869,1,40,0),(10869,11,10,0),(10869,23,50,0),(10869,68,20,0),(10870,35,3,0),(10870,51,2,0),(10871,16,12,0.05),(10871,17,16,0.05),(10872,55,10,0.05),(10872,62,20,0.05),(10872,64,15,0.05),(10872,65,21,0.05),(10873,28,3,0),(10874,10,10,0),(10875,19,25,0),(10875,47,21,0.1),(10875,49,15,0),(10876,46,21,0),(10876,64,20,0),(10877,16,30,0.25),(10877,18,25,0),(10878,20,20,0.05),(10879,40,12,0),(10879,65,10,0),(10880,23,30,0.2),(10880,61,30,0.2),(10880,70,50,0.2),(10882,42,25,0),(10882,49,20,0.15),(10882,54,32,0.15),(10883,24,8,0),(10884,56,21,0.05),(10884,65,12,0.05),(10885,24,12,0),(10885,70,30,0),(10886,10,70,0),(10886,31,35,0),(10888,68,18,0),(10889,11,40,0),(10889,38,40,0),(10890,17,15,0),(10890,34,10,0),(10890,41,14,0),(10891,30,15,0.05),(10892,59,40,0.05),(10893,8,30,0),(10893,24,10,0),(10893,29,24,0),(10893,30,35,0),(10893,36,20,0),(10894,13,28,0.05),(10894,69,50,0.05),(10895,24,110,0),(10895,39,45,0),(10895,40,91,0),(10895,60,100,0),(10896,45,15,0),(10896,56,16,0),(10897,29,80,0),(10897,30,36,0),(10898,13,5,0),(10899,39,8,0.15),(10900,70,3,0.25),(10901,41,30,0),(10901,71,30,0),(10902,55,30,0.15),(10902,62,6,0.15),(10903,13,40,0),(10903,65,21,0),(10903,68,20,0),(10904,58,15,0),(10904,62,35,0),(10905,1,20,0.05),(10906,61,15,0),(10908,7,20,0.05),(10908,52,14,0.05),(10909,7,12,0),(10909,16,15,0),(10909,41,5,0),(10910,19,12,0),(10910,49,10,0),(10910,61,5,0),(10911,1,10,0),(10911,17,12,0),(10911,67,15,0),(10912,11,40,0.25),(10912,29,60,0.25),(10913,4,30,0.25),(10913,33,40,0.25),(10913,58,15,0),(10914,71,25,0),(10915,17,10,0),(10915,33,30,0),(10915,54,10,0),(10916,16,6,0),(10916,32,6,0),(10916,57,20,0),(10917,30,1,0),(10917,60,10,0),(10918,1,60,0.25),(10918,60,25,0.25),(10919,16,24,0),(10919,40,20,0),(10920,50,24,0),(10921,35,10,0),(10921,63,40,0),(10922,17,15,0),(10922,24,35,0),(10923,42,10,0.2),(10923,43,10,0.2),(10923,67,24,0.2),(10924,10,20,0.1),(10924,28,30,0.1),(10925,36,25,0.15),(10925,52,12,0.15),(10926,11,2,0),(10926,13,10,0),(10926,19,7,0),(10927,20,5,0),(10927,52,5,0),(10928,47,5,0),(10930,27,25,0),(10930,55,25,0.2),(10930,58,30,0.2),(10931,13,42,0.15),(10931,57,30,0),(10932,16,30,0.1),(10932,62,14,0.1),(10933,53,2,0),(10933,61,30,0),(10935,1,21,0),(10935,18,4,0.25),(10935,23,8,0.25),(10936,36,30,0.2),(10937,28,8,0),(10937,34,20,0),(10938,13,20,0.25),(10938,43,24,0.25),(10938,60,49,0.25),(10938,71,35,0.25),(10939,67,40,0.15),(10940,7,8,0),(10940,13,20,0),(10941,31,44,0.25),(10941,62,30,0.25),(10941,68,80,0.25),(10942,49,28,0),(10943,13,15,0),(10943,22,21,0),(10943,46,15,0),(10944,11,5,0.25),(10944,44,18,0.25),(10944,56,18,0),(10945,13,20,0),(10945,31,10,0),(10946,10,25,0),(10946,24,25,0),(10947,59,4,0),(10948,50,9,0),(10948,51,40,0),(10948,55,4,0),(10949,10,30,0),(10949,17,6,0),(10949,62,60,0),(10950,4,5,0),(10951,33,15,0.05),(10951,41,6,0.05),(10952,28,2,0),(10953,20,50,0.05),(10953,31,50,0.05),(10954,16,28,0.15),(10954,31,25,0.15),(10954,45,30,0),(10954,60,24,0.15),(10956,47,14,0),(10956,51,8,0),(10957,30,30,0),(10957,35,40,0),(10957,64,8,0),(10958,5,20,0),(10958,7,6,0),(10960,24,10,0.25),(10960,41,24,0),(10961,52,6,0.05),(10962,7,45,0),(10962,13,77,0),(10962,53,20,0),(10962,69,9,0),(10963,60,2,0.15),(10964,18,6,0),(10964,38,5,0),(10964,69,10,0),(10965,51,16,0),(10966,56,12,0.15),(10966,62,12,0.15),(10967,19,12,0),(10967,49,40,0),(10968,12,30,0),(10968,24,30,0),(10968,64,4,0),(10969,46,9,0),(10970,52,40,0.2),(10971,29,14,0),(10972,17,6,0),(10972,33,7,0),(10973,41,6,0),(10974,63,10,0),(10975,8,16,0),(10976,28,20,0),(10977,39,30,0),(10977,47,30,0),(10977,51,10,0),(10977,63,20,0),(10978,8,20,0.15),(10978,40,10,0),(10978,44,6,0.15),(10979,7,18,0),(10979,12,20,0),(10979,24,80,0),(10979,27,30,0),(10979,31,24,0),(10979,63,35,0),(10981,38,60,0),(10982,7,20,0),(10982,43,9,0),(10983,13,84,0.15),(10983,57,15,0),(10984,16,55,0),(10984,24,20,0),(10984,36,40,0),(10985,16,36,0.1),(10985,18,8,0.1),(10985,32,35,0.1),(10986,11,30,0),(10986,20,15,0),(10987,7,60,0),(10987,43,6,0),(10988,7,60,0),(10988,62,40,0.1),(10989,11,15,0),(10989,41,4,0),(10990,34,60,0.15),(10990,55,65,0.15),(10990,61,66,0.15),(10991,70,20,0.2),(10993,29,50,0.25),(10993,41,35,0.25),(10994,59,18,0.05),(10995,51,20,0),(10995,60,4,0),(10996,42,40,0),(10997,32,50,0),(10997,46,20,0.25),(10997,52,20,0.25),(10998,24,12,0),(10998,61,7,0),(10999,41,20,0.05),(10999,51,15,0.05),(11000,4,25,0.25),(11000,24,30,0.25),(11001,7,60,0),(11001,22,25,0),(11001,46,25,0),(11001,55,6,0),(11002,13,56,0),(11002,35,15,0.15),(11002,42,24,0.15),(11002,55,40,0),(11003,1,4,0),(11003,40,10,0),(11003,52,10,0),(11005,1,2,0),(11005,59,10,0),(11006,1,8,0),(11006,29,2,0.25),(11007,8,30,0),(11007,29,10,0),(11007,42,14,0),(11008,28,70,0.05),(11008,34,90,0.05),(11008,71,21,0),(11009,24,12,0),(11009,36,18,0.25),(11009,60,9,0),(11010,7,20,0),(11010,24,10,0),(11011,58,40,0.05),(11011,71,20,0),(11012,19,50,0.05),(11012,60,36,0.05),(11012,71,60,0.05),(11013,23,10,0),(11013,42,4,0),(11013,45,20,0),(11013,68,2,0),(11014,41,28,0.1),(11015,30,15,0),(11016,31,15,0),(11016,36,16,0),(11017,3,25,0),(11017,59,110,0),(11017,70,30,0),(11018,12,20,0),(11018,18,10,0),(11018,56,5,0),(11019,46,3,0),(11019,49,2,0),(11020,10,24,0.15),(11021,20,15,0),(11021,51,44,0.25),(11022,19,35,0),(11022,69,30,0),(11023,7,4,0),(11023,43,30,0),(11024,33,30,0),(11024,65,21,0),(11024,71,50,0),(11025,1,10,0.1),(11025,13,20,0.1),(11026,18,8,0),(11026,51,10,0),(11027,24,30,0.25),(11027,62,21,0.25),(11028,55,35,0),(11028,59,24,0),(11029,56,20,0),(11029,63,12,0),(11030,5,70,0),(11030,29,60,0.25),(11030,59,100,0.25),(11031,1,45,0),(11031,13,80,0),(11031,24,21,0),(11031,64,20,0),(11031,71,16,0),(11032,36,35,0),(11032,38,25,0),(11032,59,30,0),(11033,53,70,0.1),(11033,69,36,0.1),(11034,44,12,0),(11034,61,6,0),(11035,1,10,0),(11035,35,60,0),(11035,42,30,0),(11035,54,10,0),(11036,13,7,0),(11036,59,30,0),(11037,70,4,0),(11038,40,5,0.2),(11038,52,2,0),(11038,71,30,0),(11039,28,20,0),(11039,35,24,0),(11039,49,60,0),(11039,57,28,0),(11041,63,30,0),(11042,44,15,0),(11042,61,4,0),(11043,11,10,0),(11044,62,12,0),(11045,33,15,0),(11045,51,24,0),(11046,12,20,0.05),(11046,32,15,0.05),(11046,35,18,0.05),(11047,1,25,0.25),(11047,5,30,0.25),(11048,68,42,0),(11049,12,4,0.2),(11051,24,10,0.2),(11052,43,30,0.2),(11052,61,10,0.2),(11053,18,35,0.2),(11053,32,20,0),(11053,64,25,0.2),(11054,33,10,0),(11054,67,20,0),(11055,24,15,0),(11055,51,20,0),(11055,57,20,0),(11056,7,40,0),(11056,55,35,0),(11056,60,50,0),(11057,70,3,0),(11058,60,21,0),(11058,61,4,0),(11059,13,30,0),(11059,17,12,0),(11059,60,35,0),(11060,60,4,0),(11061,60,15,0),(11062,53,10,0.2),(11062,70,12,0.2),(11063,34,30,0),(11063,40,40,0.1),(11063,41,30,0.1),(11064,17,77,0.1),(11064,41,12,0),(11064,53,25,0.1),(11064,55,4,0.1),(11064,68,55,0),(11065,30,4,0.25),(11065,54,20,0.25),(11066,16,3,0),(11066,19,42,0),(11066,34,35,0),(11067,41,9,0),(11068,28,8,0.15),(11068,43,36,0.15),(11069,39,20,0),(11070,1,40,0.15),(11070,16,30,0.15),(11070,31,20,0),(11071,7,15,0.05),(11071,13,10,0.05),(11072,41,40,0),(11072,50,22,0),(11072,64,130,0),(11073,11,10,0),(11073,24,20,0),(11074,16,14,0.05),(11075,46,30,0.15),(11076,19,10,0.25),(11077,3,4,0),(11077,4,1,0),(11077,7,1,0.05),(11077,8,2,0.1),(11077,10,1,0),(11077,12,2,0.05),(11077,13,4,0),(11077,16,2,0.03),(11077,20,1,0.04),(11077,23,2,0),(11077,32,1,0),(11077,39,2,0.05),(11077,41,3,0),(11077,46,3,0.02),(11077,52,2,0),(11077,55,2,0),(11077,60,2,0.06),(11077,64,2,0.03),(11077,66,1,0),(11078,20,20,0),(11078,45,100,0),(11078,50,100,0),(11079,12,100,0.1),(11079,50,100,0),(11079,51,100,0);
/*!40000 ALTER TABLE `tblorderinformation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblorders`
--

DROP TABLE IF EXISTS `tblorders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblorders` (
  `OrderID` int NOT NULL AUTO_INCREMENT,
  `CustomerNumber` int DEFAULT NULL,
  `EmployeeID` int NOT NULL,
  `ShipperID` smallint DEFAULT NULL,
  `OrderDate` datetime(6) DEFAULT NULL,
  `ExpirationDate` datetime(6) DEFAULT NULL,
  `DeliveryDate` datetime(6) DEFAULT NULL,
  `ShippingsCost` double DEFAULT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `FK_tblOrders_tblCustomers` (`CustomerNumber`),
  KEY `FK_tblOrders_tblEmployees` (`EmployeeID`),
  KEY `FK_tblOrders_tblShippers` (`ShipperID`),
  CONSTRAINT `FK_tblOrders_tblCustomers` FOREIGN KEY (`CustomerNumber`) REFERENCES `tblcustomers` (`CustomerId`),
  CONSTRAINT `fk_tblorders_tblEmployees` FOREIGN KEY (`EmployeeID`) REFERENCES `tblemployees` (`EmployeeID`),
  CONSTRAINT `FK_tblOrders_tblShippers` FOREIGN KEY (`ShipperID`) REFERENCES `tblshippers` (`ShipperId`)
) ENGINE=InnoDB AUTO_INCREMENT=11081 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblorders`
--

LOCK TABLES `tblorders` WRITE;
/*!40000 ALTER TABLE `tblorders` DISABLE KEYS */;
INSERT INTO `tblorders` VALUES (10000,35,6,3,'2003-10-15 00:00:00.000000','2003-11-12 00:00:00.000000','2003-10-20 00:00:00.000000',1.8),(10001,102,9,3,'2003-10-18 00:00:00.000000','2003-11-15 00:00:00.000000','2003-10-28 00:00:00.000000',35.55),(10002,35,3,3,'2003-10-19 00:00:00.000000','2003-11-16 00:00:00.000000','2003-10-22 00:00:00.000000',16.2),(10003,201,9,1,'2003-10-20 00:00:00.000000','2003-11-17 00:00:00.000000','2003-10-29 00:00:00.000000',8.55),(10004,223,3,2,'2003-10-21 00:00:00.000000','2003-11-18 00:00:00.000000','2003-10-25 00:00:00.000000',9),(10005,227,6,3,'2003-10-25 00:00:00.000000','2003-11-22 00:00:00.000000','2003-10-29 00:00:00.000000',1.8),(10006,35,9,1,'2003-10-26 00:00:00.000000','2003-11-23 00:00:00.000000','2003-10-29 00:00:00.000000',1.8),(10007,102,4,3,'2003-10-27 00:00:00.000000','2003-11-24 00:00:00.000000','2003-11-16 00:00:00.000000',16.2),(10008,35,3,1,'2003-10-28 00:00:00.000000','2003-11-25 00:00:00.000000','2003-11-03 00:00:00.000000',33.3),(10009,201,9,1,'2003-10-29 00:00:00.000000','2003-11-26 00:00:00.000000','2003-11-05 00:00:00.000000',22.05),(10010,201,9,1,'2003-11-02 00:00:00.000000','2003-11-30 00:00:00.000000','2003-11-04 00:00:00.000000',1.35),(10011,227,6,3,'2003-11-03 00:00:00.000000','2003-12-01 00:00:00.000000','2003-11-08 00:00:00.000000',14.4),(10012,172,6,1,'2003-11-04 00:00:00.000000','2003-12-02 00:00:00.000000','2003-11-08 00:00:00.000000',46.35),(10013,199,3,3,'2003-11-05 00:00:00.000000','2003-12-03 00:00:00.000000','2003-11-12 00:00:00.000000',22.95),(10014,105,4,3,'2003-11-08 00:00:00.000000','2003-12-06 00:00:00.000000','2003-11-17 00:00:00.000000',8.1),(10015,194,6,1,'2003-11-10 00:00:00.000000','2003-12-08 00:00:00.000000','2003-11-25 00:00:00.000000',9.9),(10016,35,3,2,'2003-11-11 00:00:00.000000','2003-12-09 00:00:00.000000','2003-12-16 00:00:00.000000',50.85),(10017,102,4,1,'2003-11-12 00:00:00.000000','2003-12-10 00:00:00.000000','2003-11-15 00:00:00.000000',50.4),(10018,199,4,1,'2003-11-15 00:00:00.000000','2003-12-13 00:00:00.000000','2003-12-10 00:00:00.000000',29.25),(10019,102,6,3,'2003-11-16 00:00:00.000000','2003-12-14 00:00:00.000000','2003-11-25 00:00:00.000000',0.9),(10020,223,3,1,'2003-11-18 00:00:00.000000','2003-12-16 00:00:00.000000','2003-12-01 00:00:00.000000',12.6),(10021,22,7,3,'2003-11-19 00:00:00.000000','2003-12-17 00:00:00.000000','2003-12-07 00:00:00.000000',33.75),(10022,172,1,1,'2003-11-22 00:00:00.000000','2003-12-20 00:00:00.000000','2003-12-27 00:00:00.000000',20.7),(10023,211,3,1,'2003-11-23 00:00:00.000000','2003-12-21 00:00:00.000000','2003-12-03 00:00:00.000000',30.15),(10024,199,4,1,'2003-11-24 00:00:00.000000','2003-12-22 00:00:00.000000','2003-11-26 00:00:00.000000',2.25),(10025,199,4,3,'2003-11-26 00:00:00.000000','2003-12-24 00:00:00.000000','2003-11-30 00:00:00.000000',1.35),(10026,102,6,3,'2003-11-29 00:00:00.000000','2003-12-27 00:00:00.000000','2003-12-01 00:00:00.000000',0.45),(10027,22,7,3,'2003-11-30 00:00:00.000000','2003-12-28 00:00:00.000000','2003-12-07 00:00:00.000000',45),(10028,9,3,1,'2003-12-01 00:00:00.000000','2003-12-29 00:00:00.000000','2004-01-05 00:00:00.000000',21.15),(10029,201,3,2,'2003-12-02 00:00:00.000000','2003-12-30 00:00:00.000000','2003-12-10 00:00:00.000000',3.15),(10030,172,1,3,'2003-12-06 00:00:00.000000','2004-01-03 00:00:00.000000','2003-12-13 00:00:00.000000',11.7),(10031,201,1,3,'2003-12-07 00:00:00.000000','2003-12-21 00:00:00.000000','2003-12-14 00:00:00.000000',3.15),(10032,102,9,3,'2003-12-08 00:00:00.000000','2004-01-05 00:00:00.000000','2003-12-14 00:00:00.000000',0),(10033,188,3,3,'2003-12-09 00:00:00.000000','2004-01-20 00:00:00.000000','2003-12-13 00:00:00.000000',4.05),(10034,22,4,2,'2003-12-10 00:00:00.000000','2004-01-07 00:00:00.000000','2003-12-22 00:00:00.000000',28.8),(10035,115,1,3,'2003-12-14 00:00:00.000000','2004-01-11 00:00:00.000000','2003-12-22 00:00:00.000000',86.85),(10036,10,9,2,'2003-12-15 00:00:00.000000','2004-01-12 00:00:00.000000','2003-12-22 00:00:00.000000',7.65),(10037,223,3,3,'2003-12-16 00:00:00.000000','2004-01-13 00:00:00.000000','2003-12-22 00:00:00.000000',13.5),(10038,188,1,3,'2003-12-17 00:00:00.000000','2004-01-14 00:00:00.000000','2003-12-20 00:00:00.000000',16.65),(10039,102,1,2,'2003-12-20 00:00:00.000000','2004-01-17 00:00:00.000000','2003-12-23 00:00:00.000000',3.15),(10040,227,3,3,'2003-12-22 00:00:00.000000','2004-01-19 00:00:00.000000','2003-12-31 00:00:00.000000',23.4),(10041,115,3,2,'2003-12-23 00:00:00.000000','2004-01-20 00:00:00.000000','2004-01-05 00:00:00.000000',1.35),(10042,35,9,3,'2003-12-24 00:00:00.000000','2004-01-21 00:00:00.000000','2004-01-18 00:00:00.000000',47.7),(10043,172,9,2,'2003-12-27 00:00:00.000000','2004-01-24 00:00:00.000000','2004-01-05 00:00:00.000000',74.7),(10044,9,3,3,'2003-12-28 00:00:00.000000','2004-01-25 00:00:00.000000','2004-01-06 00:00:00.000000',30.6),(10045,102,9,1,'2003-12-30 00:00:00.000000','2004-02-10 00:00:00.000000','2004-01-05 00:00:00.000000',9.9),(10046,201,3,3,'2003-12-31 00:00:00.000000','2004-01-28 00:00:00.000000','2004-01-07 00:00:00.000000',7.2),(10047,102,4,1,'2004-01-03 00:00:00.000000','2004-01-31 00:00:00.000000','2004-01-06 00:00:00.000000',8.1),(10048,115,7,1,'2004-01-04 00:00:00.000000','2004-02-01 00:00:00.000000','2004-01-26 00:00:00.000000',27.9),(10049,211,6,2,'2004-01-05 00:00:00.000000','2004-02-02 00:00:00.000000','2004-01-10 00:00:00.000000',2.25),(10050,102,4,3,'2004-01-07 00:00:00.000000','2004-02-04 00:00:00.000000','2004-01-13 00:00:00.000000',22.05),(10051,35,6,3,'2004-01-10 00:00:00.000000','2004-02-07 00:00:00.000000','2004-01-28 00:00:00.000000',9.9),(10052,201,7,2,'2004-01-11 00:00:00.000000','2004-02-22 00:00:00.000000','2004-01-13 00:00:00.000000',81.9),(10053,227,4,1,'2004-01-12 00:00:00.000000','2004-02-09 00:00:00.000000','2004-01-14 00:00:00.000000',28.35),(10054,199,4,2,'2004-01-13 00:00:00.000000','2004-02-10 00:00:00.000000','2004-01-18 00:00:00.000000',23.4),(10055,102,3,1,'2004-01-17 00:00:00.000000','2004-02-14 00:00:00.000000','2004-02-21 00:00:00.000000',60.75),(10056,172,4,3,'2004-01-18 00:00:00.000000','2004-02-15 00:00:00.000000','2004-01-26 00:00:00.000000',9),(10057,211,4,2,'2004-01-19 00:00:00.000000','2004-03-01 00:00:00.000000','2004-01-28 00:00:00.000000',1.8),(10058,115,3,1,'2004-01-20 00:00:00.000000','2004-03-02 00:00:00.000000','2004-01-21 00:00:00.000000',45.9),(10059,172,3,1,'2004-01-21 00:00:00.000000','2004-02-18 00:00:00.000000','2004-02-25 00:00:00.000000',9.9),(10060,201,4,2,'2004-01-25 00:00:00.000000','2004-02-08 00:00:00.000000','2004-02-18 00:00:00.000000',45.9),(10061,22,1,2,'2004-01-26 00:00:00.000000','2004-02-23 00:00:00.000000','2004-01-28 00:00:00.000000',1.8),(10062,9,6,2,'2004-01-27 00:00:00.000000','2004-02-24 00:00:00.000000','2004-02-03 00:00:00.000000',21.15),(10063,115,4,2,'2004-01-28 00:00:00.000000','2004-02-25 00:00:00.000000','2004-02-07 00:00:00.000000',6.75),(10064,223,6,2,'2004-01-31 00:00:00.000000','2004-02-28 00:00:00.000000','2004-02-18 00:00:00.000000',4.5),(10065,201,1,3,'2004-02-02 00:00:00.000000','2004-03-01 00:00:00.000000','2004-02-08 00:00:00.000000',20.25),(10066,227,4,2,'2004-02-03 00:00:00.000000','2004-03-16 00:00:00.000000','2004-02-07 00:00:00.000000',3.15),(10067,35,9,2,'2004-02-04 00:00:00.000000','2004-03-03 00:00:00.000000','2004-02-08 00:00:00.000000',11.7),(10068,194,1,2,'2004-02-07 00:00:00.000000','2004-03-06 00:00:00.000000','2004-02-14 00:00:00.000000',8.55),(10069,172,3,2,'2004-02-08 00:00:00.000000','2004-03-07 00:00:00.000000','2004-02-11 00:00:00.000000',11.25),(10070,172,3,2,'2004-02-10 00:00:00.000000','2004-03-09 00:00:00.000000','2004-02-18 00:00:00.000000',21.6),(10071,115,7,1,'2004-02-11 00:00:00.000000','2004-03-10 00:00:00.000000','2004-02-15 00:00:00.000000',87.75),(10072,35,1,2,'2004-02-14 00:00:00.000000','2004-02-28 00:00:00.000000','2004-02-21 00:00:00.000000',79.65),(10073,35,3,2,'2004-02-15 00:00:00.000000','2004-03-14 00:00:00.000000','2004-02-24 00:00:00.000000',43.65),(10074,115,4,1,'2004-02-16 00:00:00.000000','2004-03-15 00:00:00.000000','2004-02-23 00:00:00.000000',23.4),(10075,10,3,1,'2004-02-18 00:00:00.000000','2004-03-17 00:00:00.000000','2004-02-25 00:00:00.000000',13.05),(10076,201,3,2,'2004-02-21 00:00:00.000000','2004-03-20 00:00:00.000000','2004-02-28 00:00:00.000000',0.45),(10077,172,3,1,'2004-02-22 00:00:00.000000','2004-03-21 00:00:00.000000','2004-02-28 00:00:00.000000',12.6),(10078,199,9,2,'2004-02-23 00:00:00.000000','2004-03-22 00:00:00.000000','2004-03-03 00:00:00.000000',31.5),(10079,201,3,3,'2004-02-24 00:00:00.000000','2004-03-23 00:00:00.000000','2004-03-03 00:00:00.000000',23.4),(10080,102,4,2,'2004-02-28 00:00:00.000000','2004-03-27 00:00:00.000000','2004-03-02 00:00:00.000000',15.75),(10081,10,6,2,'2004-02-29 00:00:00.000000','2004-03-28 00:00:00.000000','2004-03-15 00:00:00.000000',9.45),(10082,105,6,2,'2004-03-01 00:00:00.000000','2004-03-29 00:00:00.000000','2004-03-10 00:00:00.000000',1.35),(10083,201,6,1,'2004-03-02 00:00:00.000000','2004-03-30 00:00:00.000000','2004-03-07 00:00:00.000000',35.55),(10084,172,4,2,'2004-03-03 00:00:00.000000','2004-03-31 00:00:00.000000','2004-03-09 00:00:00.000000',34.65),(10085,201,9,2,'2004-03-07 00:00:00.000000','2004-04-04 00:00:00.000000','2004-03-09 00:00:00.000000',9.45),(10086,35,9,2,'2004-03-08 00:00:00.000000','2004-04-05 00:00:00.000000','2004-03-10 00:00:00.000000',80.1),(10087,102,4,1,'2004-03-09 00:00:00.000000','2004-04-06 00:00:00.000000','2004-03-10 00:00:00.000000',36),(10088,172,3,2,'2004-03-10 00:00:00.000000','2004-04-07 00:00:00.000000','2004-03-14 00:00:00.000000',2.25),(10089,105,4,2,'2004-03-13 00:00:00.000000','2004-04-10 00:00:00.000000','2004-03-20 00:00:00.000000',7.65),(10090,102,4,1,'2004-03-15 00:00:00.000000','2004-04-12 00:00:00.000000','2004-03-20 00:00:00.000000',36),(10091,199,9,2,'2004-03-16 00:00:00.000000','2004-04-13 00:00:00.000000','2004-04-14 00:00:00.000000',447.75),(10092,22,9,2,'2004-03-17 00:00:00.000000','2004-04-14 00:00:00.000000','2004-03-27 00:00:00.000000',7.2),(10093,198,7,2,'2004-03-20 00:00:00.000000','2004-04-17 00:00:00.000000','2004-03-28 00:00:00.000000',118.8),(10094,199,3,2,'2004-03-21 00:00:00.000000','2004-04-04 00:00:00.000000','2004-03-23 00:00:00.000000',60.75),(10095,172,3,3,'2004-03-23 00:00:00.000000','2004-04-20 00:00:00.000000','2004-03-24 00:00:00.000000',1.35),(10096,199,3,2,'2004-03-24 00:00:00.000000','2004-04-21 00:00:00.000000','2004-04-03 00:00:00.000000',210.6),(10097,22,1,2,'2004-03-27 00:00:00.000000','2004-04-24 00:00:00.000000','2004-04-28 00:00:00.000000',175.5),(10098,201,1,3,'2004-03-28 00:00:00.000000','2004-04-25 00:00:00.000000','2004-04-03 00:00:00.000000',79.65),(10099,102,9,3,'2004-03-29 00:00:00.000000','2004-04-26 00:00:00.000000','2004-04-05 00:00:00.000000',34.65),(10100,15,9,3,'2004-03-31 00:00:00.000000','2004-04-28 00:00:00.000000','2004-04-07 00:00:00.000000',71.1),(10101,9,9,2,'2004-04-03 00:00:00.000000','2004-05-01 00:00:00.000000','2004-04-07 00:00:00.000000',0.45),(10102,102,3,2,'2004-04-04 00:00:00.000000','2004-05-02 00:00:00.000000','2004-05-05 00:00:00.000000',52.2),(10103,35,9,3,'2004-04-05 00:00:00.000000','2004-05-03 00:00:00.000000','2004-05-04 00:00:00.000000',39.6),(10104,201,4,2,'2004-04-06 00:00:00.000000','2004-05-04 00:00:00.000000','2004-04-11 00:00:00.000000',10.8),(10105,201,4,3,'2004-04-10 00:00:00.000000','2004-05-08 00:00:00.000000','2004-05-09 00:00:00.000000',83.7),(10106,194,6,2,'2004-04-11 00:00:00.000000','2004-05-09 00:00:00.000000','2004-04-19 00:00:00.000000',9.9),(10107,227,6,1,'2004-04-12 00:00:00.000000','2004-05-10 00:00:00.000000','2004-05-08 00:00:00.000000',10.8),(10108,35,3,3,'2004-04-13 00:00:00.000000','2004-05-11 00:00:00.000000','2004-04-14 00:00:00.000000',14.4),(10109,198,3,2,'2004-04-14 00:00:00.000000','2004-05-12 00:00:00.000000','2004-04-21 00:00:00.000000',12.15),(10110,105,3,2,'2004-04-18 00:00:00.000000','2004-05-16 00:00:00.000000','2004-04-25 00:00:00.000000',31.05),(10111,199,9,2,'2004-04-19 00:00:00.000000','2004-05-17 00:00:00.000000','2004-04-26 00:00:00.000000',3.15),(10112,15,1,2,'2004-04-20 00:00:00.000000','2004-05-04 00:00:00.000000','2004-05-18 00:00:00.000000',0.45),(10113,35,4,3,'2004-04-21 00:00:00.000000','2004-05-19 00:00:00.000000','2004-04-27 00:00:00.000000',23.85),(10114,105,4,3,'2004-04-24 00:00:00.000000','2004-05-22 00:00:00.000000','2004-04-28 00:00:00.000000',4.95),(10115,188,4,3,'2004-04-26 00:00:00.000000','2004-05-24 00:00:00.000000','2004-05-08 00:00:00.000000',10.8),(10116,22,4,3,'2004-04-27 00:00:00.000000','2004-05-25 00:00:00.000000','2004-05-05 00:00:00.000000',0.9),(10117,211,9,2,'2004-04-28 00:00:00.000000','2004-05-26 00:00:00.000000','2004-05-05 00:00:00.000000',15.75),(10118,227,6,3,'2004-05-01 00:00:00.000000','2004-05-15 00:00:00.000000','2004-05-04 00:00:00.000000',77.85),(10119,35,6,2,'2004-05-02 00:00:00.000000','2004-05-30 00:00:00.000000','2004-05-09 00:00:00.000000',4.95),(10120,172,6,1,'2004-05-04 00:00:00.000000','2004-06-01 00:00:00.000000','2004-06-07 00:00:00.000000',2.25),(10121,102,1,3,'2004-05-05 00:00:00.000000','2004-06-02 00:00:00.000000','2004-05-12 00:00:00.000000',50.85),(10122,201,6,1,'2004-05-08 00:00:00.000000','2004-06-05 00:00:00.000000','2004-05-10 00:00:00.000000',0.45),(10123,223,4,3,'2004-05-09 00:00:00.000000','2004-06-06 00:00:00.000000','2004-05-18 00:00:00.000000',30.15),(10124,115,9,2,'2004-05-10 00:00:00.000000','2004-06-07 00:00:00.000000','2004-05-15 00:00:00.000000',21.15),(10125,199,1,1,'2004-05-12 00:00:00.000000','2004-06-09 00:00:00.000000','2004-05-18 00:00:00.000000',5.4),(10126,223,4,1,'2004-05-15 00:00:00.000000','2004-06-12 00:00:00.000000','2004-05-25 00:00:00.000000',10.35),(10127,227,4,2,'2004-05-16 00:00:00.000000','2004-06-13 00:00:00.000000','2004-05-24 00:00:00.000000',7.2),(10128,102,3,2,'2004-05-17 00:00:00.000000','2004-05-31 00:00:00.000000','2004-05-26 00:00:00.000000',22.95),(10129,199,9,1,'2004-05-18 00:00:00.000000','2004-06-15 00:00:00.000000','2004-05-19 00:00:00.000000',12.15),(10130,115,7,1,'2004-05-22 00:00:00.000000','2004-06-19 00:00:00.000000','2004-05-26 00:00:00.000000',39.6),(10131,102,3,1,'2004-05-23 00:00:00.000000','2004-06-20 00:00:00.000000','2004-05-26 00:00:00.000000',96.75),(10132,172,3,2,'2004-05-24 00:00:00.000000','2004-06-21 00:00:00.000000','2004-06-14 00:00:00.000000',50.4),(10133,199,6,2,'2004-05-25 00:00:00.000000','2004-06-22 00:00:00.000000','2004-05-29 00:00:00.000000',3.15),(10134,227,3,1,'2004-05-26 00:00:00.000000','2004-06-23 00:00:00.000000','2004-06-02 00:00:00.000000',3.6),(10135,105,3,1,'2004-05-30 00:00:00.000000','2004-06-27 00:00:00.000000','2004-06-09 00:00:00.000000',2.7),(10136,115,7,1,'2004-05-31 00:00:00.000000','2004-06-28 00:00:00.000000','2004-06-05 00:00:00.000000',18.45),(10137,9,9,1,'2004-06-01 00:00:00.000000','2004-06-29 00:00:00.000000','2004-06-28 00:00:00.000000',23.4),(10138,15,9,2,'2004-06-02 00:00:00.000000','2004-06-30 00:00:00.000000','2004-06-09 00:00:00.000000',0),(10139,223,9,2,'2004-06-05 00:00:00.000000','2004-07-03 00:00:00.000000','2004-06-15 00:00:00.000000',9),(10140,172,3,3,'2004-06-07 00:00:00.000000','2004-07-05 00:00:00.000000','2004-06-09 00:00:00.000000',12.15),(10141,35,3,3,'2004-06-08 00:00:00.000000','2004-07-06 00:00:00.000000','2004-06-15 00:00:00.000000',74.7),(10142,9,6,3,'2004-06-09 00:00:00.000000','2004-07-07 00:00:00.000000','2004-06-14 00:00:00.000000',3.6),(10143,188,4,3,'2004-06-12 00:00:00.000000','2004-07-10 00:00:00.000000','2004-06-20 00:00:00.000000',6.3),(10144,9,7,2,'2004-06-13 00:00:00.000000','2004-07-11 00:00:00.000000','2004-06-19 00:00:00.000000',13.95),(10145,105,9,2,'2004-06-15 00:00:00.000000','2004-07-13 00:00:00.000000','2004-06-22 00:00:00.000000',6.75),(10146,35,3,2,'2004-06-16 00:00:00.000000','2004-07-14 00:00:00.000000','2004-06-20 00:00:00.000000',0.45),(10147,35,3,2,'2004-06-19 00:00:00.000000','2004-07-17 00:00:00.000000','2004-06-27 00:00:00.000000',28.8),(10148,223,1,2,'2004-06-20 00:00:00.000000','2004-07-18 00:00:00.000000','2004-07-05 00:00:00.000000',27),(10149,188,1,3,'2004-06-21 00:00:00.000000','2004-07-19 00:00:00.000000','2004-06-29 00:00:00.000000',28.8),(10150,201,4,2,'2004-06-23 00:00:00.000000','2004-08-04 00:00:00.000000','2004-06-30 00:00:00.000000',14.4),(10151,35,3,1,'2004-06-26 00:00:00.000000','2004-07-24 00:00:00.000000','2004-06-30 00:00:00.000000',0.45),(10152,172,3,1,'2004-06-27 00:00:00.000000','2004-07-25 00:00:00.000000','2004-06-30 00:00:00.000000',4.95),(10153,223,7,2,'2004-06-28 00:00:00.000000','2004-07-26 00:00:00.000000','2004-07-03 00:00:00.000000',11.7),(10154,183,1,3,'2004-06-29 00:00:00.000000','2004-07-27 00:00:00.000000','2004-07-03 00:00:00.000000',9.45),(10155,10,4,2,'2004-07-03 00:00:00.000000','2004-07-31 00:00:00.000000','2004-08-04 00:00:00.000000',66.15),(10156,199,4,3,'2004-07-04 00:00:00.000000','2004-08-01 00:00:00.000000','2004-07-13 00:00:00.000000',30.6),(10157,115,4,2,'2004-07-05 00:00:00.000000','2004-08-02 00:00:00.000000','2004-07-11 00:00:00.000000',4.5),(10158,102,6,3,'2004-07-06 00:00:00.000000','2004-08-03 00:00:00.000000','2004-07-11 00:00:00.000000',8.55),(10159,102,4,1,'2004-07-07 00:00:00.000000','2004-08-04 00:00:00.000000','2004-07-11 00:00:00.000000',11.7),(10160,105,7,3,'2004-07-11 00:00:00.000000','2004-08-08 00:00:00.000000','2004-07-18 00:00:00.000000',2.25),(10161,167,3,1,'2004-07-12 00:00:00.000000','2004-08-09 00:00:00.000000','2004-07-21 00:00:00.000000',17.55),(10162,10,6,2,'2004-07-13 00:00:00.000000','2004-08-10 00:00:00.000000','2004-07-19 00:00:00.000000',5.85),(10163,35,4,2,'2004-07-14 00:00:00.000000','2004-08-11 00:00:00.000000','2004-07-18 00:00:00.000000',52.2),(10164,105,3,3,'2004-07-17 00:00:00.000000','2004-08-14 00:00:00.000000','2004-07-27 00:00:00.000000',1.35),(10165,172,4,1,'2004-07-19 00:00:00.000000','2004-08-16 00:00:00.000000','2004-07-21 00:00:00.000000',37.8),(10166,165,9,1,'2004-07-20 00:00:00.000000','2004-08-17 00:00:00.000000','2004-07-24 00:00:00.000000',24.75),(10167,201,3,3,'2004-07-21 00:00:00.000000','2004-08-18 00:00:00.000000','2004-07-25 00:00:00.000000',95.4),(10168,201,6,2,'2004-07-24 00:00:00.000000','2004-08-21 00:00:00.000000','2004-07-26 00:00:00.000000',53.1),(10169,199,9,3,'2004-07-25 00:00:00.000000','2004-08-22 00:00:00.000000','2004-07-28 00:00:00.000000',49.95),(10170,199,1,2,'2004-07-27 00:00:00.000000','2004-08-24 00:00:00.000000','2004-08-11 00:00:00.000000',0.45),(10171,102,6,3,'2004-07-27 00:00:00.000000','2004-08-24 00:00:00.000000','2004-08-04 00:00:00.000000',9),(10172,165,1,1,'2004-07-28 00:00:00.000000','2004-08-25 00:00:00.000000','2004-08-01 00:00:00.000000',3.6),(10173,35,4,3,'2004-07-31 00:00:00.000000','2004-08-28 00:00:00.000000','2004-08-07 00:00:00.000000',16.65),(10174,102,1,1,'2004-08-01 00:00:00.000000','2004-08-29 00:00:00.000000','2004-08-14 00:00:00.000000',20.25),(10175,201,9,3,'2004-08-02 00:00:00.000000','2004-08-30 00:00:00.000000','2004-08-11 00:00:00.000000',62.1),(10176,102,7,2,'2004-08-03 00:00:00.000000','2004-08-31 00:00:00.000000','2004-08-11 00:00:00.000000',2.25),(10177,172,3,1,'2004-08-04 00:00:00.000000','2004-09-15 00:00:00.000000','2004-08-14 00:00:00.000000',1.35),(10178,188,3,1,'2004-08-07 00:00:00.000000','2004-08-21 00:00:00.000000','2004-08-14 00:00:00.000000',27.9),(10179,35,6,2,'2004-08-08 00:00:00.000000','2004-09-05 00:00:00.000000','2004-08-14 00:00:00.000000',14.4),(10180,115,9,3,'2004-08-09 00:00:00.000000','2004-09-06 00:00:00.000000','2004-08-14 00:00:00.000000',8.1),(10181,35,4,1,'2004-08-09 00:00:00.000000','2004-09-06 00:00:00.000000','2004-08-18 00:00:00.000000',55.8),(10182,15,1,1,'2004-08-10 00:00:00.000000','2004-09-21 00:00:00.000000','2004-08-14 00:00:00.000000',9),(10183,102,3,2,'2004-08-11 00:00:00.000000','2004-09-08 00:00:00.000000','2004-08-22 00:00:00.000000',7.2),(10184,35,4,3,'2004-08-14 00:00:00.000000','2004-09-11 00:00:00.000000','2004-08-31 00:00:00.000000',14.4),(10185,35,3,1,'2004-08-15 00:00:00.000000','2004-09-12 00:00:00.000000','2004-09-15 00:00:00.000000',15.3),(10186,105,4,1,'2004-08-16 00:00:00.000000','2004-09-13 00:00:00.000000','2004-08-18 00:00:00.000000',9),(10187,223,3,1,'2004-08-17 00:00:00.000000','2004-09-14 00:00:00.000000','2004-08-22 00:00:00.000000',23.4),(10188,227,1,3,'2004-08-18 00:00:00.000000','2004-09-15 00:00:00.000000','2004-08-24 00:00:00.000000',0),(10189,115,3,2,'2004-08-21 00:00:00.000000','2004-09-18 00:00:00.000000','2004-08-25 00:00:00.000000',4.95),(10190,102,9,1,'2004-08-22 00:00:00.000000','2004-09-19 00:00:00.000000','2004-08-25 00:00:00.000000',0.45),(10191,102,4,2,'2004-08-22 00:00:00.000000','2004-09-19 00:00:00.000000','2004-08-24 00:00:00.000000',8.1),(10192,15,7,2,'2004-08-23 00:00:00.000000','2004-09-20 00:00:00.000000','2004-09-08 00:00:00.000000',12.15),(10193,201,1,2,'2004-08-24 00:00:00.000000','2004-09-21 00:00:00.000000','2004-09-12 00:00:00.000000',2.7),(10194,194,3,2,'2004-08-25 00:00:00.000000','2004-09-08 00:00:00.000000','2004-08-28 00:00:00.000000',16.65),(10195,198,4,3,'2004-08-28 00:00:00.000000','2004-09-25 00:00:00.000000','2004-09-01 00:00:00.000000',35.1),(10196,172,3,1,'2004-08-29 00:00:00.000000','2004-09-26 00:00:00.000000','2004-09-27 00:00:00.000000',184.95),(10197,172,6,3,'2004-08-30 00:00:00.000000','2004-09-27 00:00:00.000000','2004-09-01 00:00:00.000000',16.65),(10198,188,7,2,'2004-08-31 00:00:00.000000','2004-09-28 00:00:00.000000','2004-09-04 00:00:00.000000',13.95),(10199,201,1,3,'2004-09-01 00:00:00.000000','2004-09-15 00:00:00.000000','2004-09-04 00:00:00.000000',22.5),(10200,102,9,3,'2004-09-04 00:00:00.000000','2004-10-02 00:00:00.000000','2004-10-04 00:00:00.000000',11.25),(10201,201,3,3,'2004-09-04 00:00:00.000000','2004-10-16 00:00:00.000000','2004-09-07 00:00:00.000000',5.4),(10202,35,4,3,'2004-09-05 00:00:00.000000','2004-10-03 00:00:00.000000','2004-09-22 00:00:00.000000',77.85),(10203,15,9,2,'2004-09-06 00:00:00.000000','2004-10-18 00:00:00.000000','2004-09-08 00:00:00.000000',17.1),(10204,201,4,1,'2004-09-07 00:00:00.000000','2004-10-05 00:00:00.000000','2004-09-11 00:00:00.000000',0),(10205,115,9,2,'2004-09-08 00:00:00.000000','2004-10-06 00:00:00.000000','2004-09-19 00:00:00.000000',72),(10206,201,9,2,'2004-09-11 00:00:00.000000','2004-10-09 00:00:00.000000','2004-09-14 00:00:00.000000',18),(10207,211,3,2,'2004-09-12 00:00:00.000000','2004-10-10 00:00:00.000000','2004-09-21 00:00:00.000000',9.45),(10208,199,9,2,'2004-09-13 00:00:00.000000','2004-10-11 00:00:00.000000','2004-09-27 00:00:00.000000',11.7),(10209,199,6,2,'2004-09-14 00:00:00.000000','2004-10-12 00:00:00.000000','2004-10-11 00:00:00.000000',8.1),(10210,35,1,2,'2004-09-15 00:00:00.000000','2004-10-13 00:00:00.000000','2004-09-25 00:00:00.000000',4.05),(10211,102,9,3,'2004-09-15 00:00:00.000000','2004-10-13 00:00:00.000000','2004-09-20 00:00:00.000000',13.95),(10212,102,3,2,'2004-09-18 00:00:00.000000','2004-10-16 00:00:00.000000','2004-09-27 00:00:00.000000',4.5),(10213,102,7,3,'2004-09-19 00:00:00.000000','2004-10-17 00:00:00.000000','2004-09-27 00:00:00.000000',1.8),(10214,102,9,2,'2004-09-20 00:00:00.000000','2004-10-18 00:00:00.000000','2004-09-22 00:00:00.000000',35.55),(10215,227,9,1,'2004-09-21 00:00:00.000000','2004-10-19 00:00:00.000000','2004-10-16 00:00:00.000000',5.85),(10216,199,9,3,'2004-09-22 00:00:00.000000','2004-10-20 00:00:00.000000','2004-09-28 00:00:00.000000',13.05),(10217,102,1,3,'2004-09-25 00:00:00.000000','2004-11-06 00:00:00.000000','2004-10-13 00:00:00.000000',0.45),(10218,9,9,1,'2004-09-26 00:00:00.000000','2004-10-24 00:00:00.000000','2004-10-30 00:00:00.000000',35.1),(10219,201,3,2,'2004-09-27 00:00:00.000000','2004-11-08 00:00:00.000000','2004-09-29 00:00:00.000000',32.4),(10220,22,4,2,'2004-09-28 00:00:00.000000','2004-10-26 00:00:00.000000','2004-10-05 00:00:00.000000',14.85),(10221,102,3,1,'2004-09-28 00:00:00.000000','2004-10-26 00:00:00.000000','2004-10-06 00:00:00.000000',3.6),(10222,35,4,3,'2004-09-29 00:00:00.000000','2004-10-27 00:00:00.000000','2004-10-06 00:00:00.000000',61.65),(10223,201,4,3,'2004-10-02 00:00:00.000000','2004-10-30 00:00:00.000000','2004-10-06 00:00:00.000000',7.65),(10224,199,1,2,'2004-10-03 00:00:00.000000','2004-10-31 00:00:00.000000','2004-10-12 00:00:00.000000',11.25),(10225,201,3,3,'2004-10-04 00:00:00.000000','2004-11-01 00:00:00.000000','2004-10-09 00:00:00.000000',66.6),(10226,201,3,3,'2004-10-05 00:00:00.000000','2004-11-02 00:00:00.000000','2004-10-16 00:00:00.000000',161.55),(10227,211,6,2,'2004-10-06 00:00:00.000000','2004-11-17 00:00:00.000000','2004-11-09 00:00:00.000000',0.9),(10228,10,3,2,'2004-10-09 00:00:00.000000','2004-11-06 00:00:00.000000','2004-10-12 00:00:00.000000',16.2),(10229,172,7,1,'2004-10-10 00:00:00.000000','2004-11-07 00:00:00.000000','2004-10-12 00:00:00.000000',4.05),(10230,102,3,2,'2004-10-11 00:00:00.000000','2004-11-08 00:00:00.000000','2004-10-19 00:00:00.000000',67.95),(10231,102,6,3,'2004-10-11 00:00:00.000000','2004-11-08 00:00:00.000000','2004-10-18 00:00:00.000000',9.45),(10232,15,4,2,'2004-10-12 00:00:00.000000','2004-11-09 00:00:00.000000','2004-10-17 00:00:00.000000',5.4),(10233,102,1,3,'2004-10-13 00:00:00.000000','2004-11-10 00:00:00.000000','2004-10-20 00:00:00.000000',17.55),(10234,105,4,2,'2004-10-16 00:00:00.000000','2004-11-13 00:00:00.000000','2004-10-26 00:00:00.000000',13.5),(10235,223,7,1,'2004-10-17 00:00:00.000000','2004-11-14 00:00:00.000000','2004-10-25 00:00:00.000000',3.6),(10236,201,6,3,'2004-10-18 00:00:00.000000','2004-11-15 00:00:00.000000','2004-10-27 00:00:00.000000',24.3),(10237,227,7,1,'2004-10-19 00:00:00.000000','2004-11-02 00:00:00.000000','2004-10-27 00:00:00.000000',21.15),(10238,102,1,1,'2004-10-20 00:00:00.000000','2004-11-17 00:00:00.000000','2004-10-25 00:00:00.000000',3.15),(10239,35,3,1,'2004-10-23 00:00:00.000000','2004-11-20 00:00:00.000000','2004-10-26 00:00:00.000000',20.25),(10240,102,3,1,'2004-10-24 00:00:00.000000','2004-11-21 00:00:00.000000','2004-10-27 00:00:00.000000',6.75),(10241,102,7,2,'2004-10-24 00:00:00.000000','2004-11-21 00:00:00.000000','2004-11-01 00:00:00.000000',40.05),(10242,172,6,1,'2004-10-25 00:00:00.000000','2004-11-22 00:00:00.000000','2004-10-27 00:00:00.000000',25.2),(10243,10,3,1,'2004-10-26 00:00:00.000000','2004-11-23 00:00:00.000000','2004-11-03 00:00:00.000000',4.95),(10244,199,3,2,'2004-10-27 00:00:00.000000','2004-11-10 00:00:00.000000','2004-11-02 00:00:00.000000',6.75),(10245,115,9,2,'2004-10-30 00:00:00.000000','2004-11-27 00:00:00.000000','2004-11-08 00:00:00.000000',20.7),(10246,105,7,1,'2004-10-31 00:00:00.000000','2004-11-28 00:00:00.000000','2004-11-08 00:00:00.000000',6.3),(10247,201,4,1,'2004-11-01 00:00:00.000000','2004-11-29 00:00:00.000000','2004-11-07 00:00:00.000000',49.05),(10248,223,6,3,'2004-11-02 00:00:00.000000','2004-11-30 00:00:00.000000','2004-11-14 00:00:00.000000',14.4),(10249,211,6,1,'2004-11-03 00:00:00.000000','2004-12-15 00:00:00.000000','2004-11-08 00:00:00.000000',5.4),(10250,115,4,2,'2004-11-06 00:00:00.000000','2004-12-04 00:00:00.000000','2004-11-10 00:00:00.000000',29.7),(10251,223,3,1,'2004-11-06 00:00:00.000000','2004-12-04 00:00:00.000000','2004-11-13 00:00:00.000000',18.45),(10252,201,4,2,'2004-11-07 00:00:00.000000','2004-12-05 00:00:00.000000','2004-11-09 00:00:00.000000',22.95),(10253,115,3,2,'2004-11-08 00:00:00.000000','2004-11-22 00:00:00.000000','2004-11-14 00:00:00.000000',26.1),(10254,10,6,2,'2004-11-09 00:00:00.000000','2004-12-07 00:00:00.000000','2004-11-21 00:00:00.000000',10.35),(10255,199,9,3,'2004-11-10 00:00:00.000000','2004-12-08 00:00:00.000000','2004-11-13 00:00:00.000000',66.6),(10256,227,3,2,'2004-11-13 00:00:00.000000','2004-12-11 00:00:00.000000','2004-11-15 00:00:00.000000',6.3),(10257,115,4,3,'2004-11-14 00:00:00.000000','2004-12-12 00:00:00.000000','2004-11-20 00:00:00.000000',36.9),(10258,22,1,1,'2004-11-15 00:00:00.000000','2004-12-13 00:00:00.000000','2004-11-21 00:00:00.000000',63.45),(10259,10,4,3,'2004-11-16 00:00:00.000000','2004-12-14 00:00:00.000000','2004-11-23 00:00:00.000000',1.35),(10260,188,4,1,'2004-11-17 00:00:00.000000','2004-12-15 00:00:00.000000','2004-11-27 00:00:00.000000',24.75),(10261,198,4,2,'2004-11-17 00:00:00.000000','2004-12-15 00:00:00.000000','2004-11-28 00:00:00.000000',1.35),(10262,199,9,3,'2004-11-20 00:00:00.000000','2004-12-18 00:00:00.000000','2004-11-23 00:00:00.000000',21.6),(10263,22,9,3,'2004-11-21 00:00:00.000000','2004-12-19 00:00:00.000000','2004-11-29 00:00:00.000000',65.7),(10264,35,6,3,'2004-11-22 00:00:00.000000','2004-12-20 00:00:00.000000','2004-12-22 00:00:00.000000',1.8),(10265,102,3,1,'2004-11-23 00:00:00.000000','2004-12-21 00:00:00.000000','2004-12-11 00:00:00.000000',24.75),(10266,227,3,3,'2004-11-24 00:00:00.000000','2005-01-05 00:00:00.000000','2004-11-29 00:00:00.000000',11.7),(10267,35,4,1,'2004-11-27 00:00:00.000000','2004-12-25 00:00:00.000000','2004-12-05 00:00:00.000000',94.05),(10268,105,9,3,'2004-11-28 00:00:00.000000','2004-12-26 00:00:00.000000','2004-12-01 00:00:00.000000',29.7),(10269,227,6,1,'2004-11-29 00:00:00.000000','2004-12-13 00:00:00.000000','2004-12-08 00:00:00.000000',2.25),(10270,227,1,1,'2004-11-30 00:00:00.000000','2004-12-28 00:00:00.000000','2004-12-01 00:00:00.000000',61.65),(10271,201,6,2,'2004-11-30 00:00:00.000000','2004-12-28 00:00:00.000000','2004-12-29 00:00:00.000000',2.25),(10272,199,6,2,'2004-12-01 00:00:00.000000','2004-12-29 00:00:00.000000','2004-12-05 00:00:00.000000',44.1),(10273,198,3,3,'2004-12-04 00:00:00.000000','2005-01-01 00:00:00.000000','2004-12-11 00:00:00.000000',34.2),(10274,223,6,1,'2004-12-05 00:00:00.000000','2005-01-02 00:00:00.000000','2004-12-15 00:00:00.000000',2.7),(10275,102,1,1,'2004-12-06 00:00:00.000000','2005-01-03 00:00:00.000000','2004-12-08 00:00:00.000000',12.15),(10276,211,9,3,'2004-12-07 00:00:00.000000','2004-12-21 00:00:00.000000','2004-12-13 00:00:00.000000',6.3),(10277,102,3,3,'2004-12-08 00:00:00.000000','2005-01-05 00:00:00.000000','2004-12-12 00:00:00.000000',56.7),(10278,102,9,2,'2004-12-11 00:00:00.000000','2005-01-08 00:00:00.000000','2004-12-15 00:00:00.000000',41.85),(10279,172,9,2,'2004-12-12 00:00:00.000000','2005-01-09 00:00:00.000000','2004-12-15 00:00:00.000000',11.7),(10280,102,3,1,'2004-12-13 00:00:00.000000','2005-01-10 00:00:00.000000','2005-01-11 00:00:00.000000',4.05),(10281,199,4,1,'2004-12-13 00:00:00.000000','2004-12-27 00:00:00.000000','2004-12-20 00:00:00.000000',1.35),(10282,199,4,1,'2004-12-14 00:00:00.000000','2005-01-11 00:00:00.000000','2004-12-20 00:00:00.000000',5.85),(10283,172,3,3,'2004-12-15 00:00:00.000000','2005-01-12 00:00:00.000000','2004-12-22 00:00:00.000000',38.25),(10284,172,4,1,'2004-12-18 00:00:00.000000','2005-01-15 00:00:00.000000','2004-12-26 00:00:00.000000',34.65),(10285,198,1,2,'2004-12-19 00:00:00.000000','2005-01-16 00:00:00.000000','2004-12-25 00:00:00.000000',34.65),(10286,198,9,3,'2004-12-20 00:00:00.000000','2005-01-17 00:00:00.000000','2004-12-29 00:00:00.000000',103.05),(10287,199,9,3,'2004-12-21 00:00:00.000000','2005-01-18 00:00:00.000000','2004-12-27 00:00:00.000000',5.85),(10288,199,4,1,'2004-12-22 00:00:00.000000','2005-01-19 00:00:00.000000','2005-01-02 00:00:00.000000',3.15),(10289,102,7,3,'2004-12-25 00:00:00.000000','2005-01-22 00:00:00.000000','2004-12-27 00:00:00.000000',10.35),(10290,10,9,1,'2004-12-26 00:00:00.000000','2005-01-23 00:00:00.000000','2005-01-02 00:00:00.000000',36),(10291,198,6,2,'2004-12-26 00:00:00.000000','2005-01-23 00:00:00.000000','2005-01-03 00:00:00.000000',2.7),(10292,211,1,2,'2004-12-27 00:00:00.000000','2005-01-24 00:00:00.000000','2005-01-03 00:00:00.000000',0.45),(10293,211,1,3,'2004-12-28 00:00:00.000000','2005-01-25 00:00:00.000000','2005-01-10 00:00:00.000000',9.45),(10294,199,4,2,'2004-12-29 00:00:00.000000','2005-01-26 00:00:00.000000','2005-01-04 00:00:00.000000',66.15),(10295,223,3,2,'2005-01-03 00:00:00.000000','2005-01-29 00:00:00.000000','2005-01-09 00:00:00.000000',0.45),(10296,172,6,1,'2005-01-02 00:00:00.000000','2005-01-30 00:00:00.000000','2005-01-10 00:00:00.000000',0),(10297,102,6,2,'2005-01-03 00:00:00.000000','2005-02-14 00:00:00.000000','2005-01-09 00:00:00.000000',2.7),(10298,115,6,2,'2005-01-04 00:00:00.000000','2005-02-01 00:00:00.000000','2005-01-10 00:00:00.000000',75.6),(10299,199,4,2,'2005-01-05 00:00:00.000000','2005-02-02 00:00:00.000000','2005-01-12 00:00:00.000000',13.5),(10300,102,3,2,'2005-01-08 00:00:00.000000','2005-02-05 00:00:00.000000','2005-01-17 00:00:00.000000',8.1),(10301,227,9,2,'2005-01-08 00:00:00.000000','2005-02-05 00:00:00.000000','2005-01-16 00:00:00.000000',20.25),(10302,201,4,2,'2005-01-09 00:00:00.000000','2005-02-06 00:00:00.000000','2005-02-07 00:00:00.000000',2.7),(10303,105,7,2,'2005-01-10 00:00:00.000000','2005-02-07 00:00:00.000000','2005-01-17 00:00:00.000000',48.6),(10304,211,1,2,'2005-01-11 00:00:00.000000','2005-02-08 00:00:00.000000','2005-01-16 00:00:00.000000',28.8),(10305,188,9,3,'2005-01-12 00:00:00.000000','2005-02-09 00:00:00.000000','2005-02-07 00:00:00.000000',116.1),(10306,199,1,3,'2005-01-15 00:00:00.000000','2005-02-12 00:00:00.000000','2005-01-22 00:00:00.000000',3.6),(10307,172,3,2,'2005-01-16 00:00:00.000000','2005-02-13 00:00:00.000000','2005-01-24 00:00:00.000000',0.45),(10308,9,7,3,'2005-01-17 00:00:00.000000','2005-02-14 00:00:00.000000','2005-01-23 00:00:00.000000',0.9),(10309,115,3,1,'2005-01-18 00:00:00.000000','2005-02-15 00:00:00.000000','2005-02-21 00:00:00.000000',21.15),(10310,211,9,2,'2005-01-19 00:00:00.000000','2005-02-16 00:00:00.000000','2005-01-26 00:00:00.000000',8.1),(10311,15,1,3,'2005-01-19 00:00:00.000000','2005-02-02 00:00:00.000000','2005-01-25 00:00:00.000000',11.25),(10312,227,3,2,'2005-01-22 00:00:00.000000','2005-02-19 00:00:00.000000','2005-02-01 00:00:00.000000',18),(10313,198,3,2,'2005-01-23 00:00:00.000000','2005-02-20 00:00:00.000000','2005-02-02 00:00:00.000000',0.9),(10314,199,1,2,'2005-01-24 00:00:00.000000','2005-02-21 00:00:00.000000','2005-02-02 00:00:00.000000',33.3),(10315,165,4,2,'2005-01-25 00:00:00.000000','2005-02-22 00:00:00.000000','2005-02-01 00:00:00.000000',18.9),(10316,199,1,3,'2005-01-26 00:00:00.000000','2005-02-23 00:00:00.000000','2005-02-06 00:00:00.000000',67.5),(10317,172,6,1,'2005-01-29 00:00:00.000000','2005-02-26 00:00:00.000000','2005-02-08 00:00:00.000000',5.85),(10318,165,9,2,'2005-01-30 00:00:00.000000','2005-02-27 00:00:00.000000','2005-02-02 00:00:00.000000',2.25),(10319,211,7,3,'2005-01-31 00:00:00.000000','2005-02-28 00:00:00.000000','2005-02-09 00:00:00.000000',28.8),(10320,227,6,3,'2005-02-01 00:00:00.000000','2005-02-15 00:00:00.000000','2005-02-16 00:00:00.000000',15.75),(10321,165,3,2,'2005-02-01 00:00:00.000000','2005-03-01 00:00:00.000000','2005-02-09 00:00:00.000000',1.35),(10322,194,7,3,'2005-02-02 00:00:00.000000','2005-03-02 00:00:00.000000','2005-02-21 00:00:00.000000',0),(10323,167,4,1,'2005-02-05 00:00:00.000000','2005-03-05 00:00:00.000000','2005-02-12 00:00:00.000000',2.25),(10324,201,9,1,'2005-02-06 00:00:00.000000','2005-03-06 00:00:00.000000','2005-02-08 00:00:00.000000',96.3),(10325,167,1,3,'2005-02-07 00:00:00.000000','2005-02-21 00:00:00.000000','2005-02-12 00:00:00.000000',29.25),(10326,102,4,2,'2005-02-08 00:00:00.000000','2005-03-08 00:00:00.000000','2005-02-12 00:00:00.000000',35.1),(10327,35,3,1,'2005-02-09 00:00:00.000000','2005-03-09 00:00:00.000000','2005-02-12 00:00:00.000000',28.35),(10328,35,4,3,'2005-02-12 00:00:00.000000','2005-03-12 00:00:00.000000','2005-02-15 00:00:00.000000',39.15),(10329,201,4,2,'2005-02-13 00:00:00.000000','2005-03-27 00:00:00.000000','2005-02-21 00:00:00.000000',86.4),(10330,172,3,1,'2005-02-14 00:00:00.000000','2005-03-14 00:00:00.000000','2005-02-26 00:00:00.000000',5.85),(10331,102,9,1,'2005-02-14 00:00:00.000000','2005-03-28 00:00:00.000000','2005-02-19 00:00:00.000000',4.5),(10332,102,3,2,'2005-02-15 00:00:00.000000','2005-03-29 00:00:00.000000','2005-02-19 00:00:00.000000',23.85),(10333,227,6,3,'2005-02-16 00:00:00.000000','2005-03-16 00:00:00.000000','2005-02-23 00:00:00.000000',0.45),(10334,223,9,2,'2005-02-19 00:00:00.000000','2005-03-19 00:00:00.000000','2005-02-26 00:00:00.000000',4.05),(10335,115,7,2,'2005-02-20 00:00:00.000000','2005-03-20 00:00:00.000000','2005-02-22 00:00:00.000000',18.9),(10336,194,7,2,'2005-02-21 00:00:00.000000','2005-03-21 00:00:00.000000','2005-02-23 00:00:00.000000',7.2),(10337,35,4,3,'2005-02-22 00:00:00.000000','2005-03-22 00:00:00.000000','2005-02-27 00:00:00.000000',48.6),(10338,188,4,3,'2005-02-23 00:00:00.000000','2005-03-23 00:00:00.000000','2005-02-27 00:00:00.000000',37.8),(10339,102,3,2,'2005-02-26 00:00:00.000000','2005-03-26 00:00:00.000000','2005-03-05 00:00:00.000000',7.2),(10340,102,1,3,'2005-02-27 00:00:00.000000','2005-03-27 00:00:00.000000','2005-03-09 00:00:00.000000',74.7),(10341,201,7,3,'2005-02-27 00:00:00.000000','2005-03-27 00:00:00.000000','2005-03-06 00:00:00.000000',12.15),(10342,35,4,2,'2005-02-28 00:00:00.000000','2005-03-14 00:00:00.000000','2005-03-05 00:00:00.000000',24.75),(10343,172,4,1,'2005-03-01 00:00:00.000000','2005-03-29 00:00:00.000000','2005-03-07 00:00:00.000000',49.5),(10344,227,4,2,'2005-03-02 00:00:00.000000','2005-03-30 00:00:00.000000','2005-03-06 00:00:00.000000',10.35),(10345,198,3,2,'2005-03-05 00:00:00.000000','2005-04-02 00:00:00.000000','2005-03-12 00:00:00.000000',112.05),(10346,199,3,3,'2005-03-06 00:00:00.000000','2005-04-17 00:00:00.000000','2005-03-09 00:00:00.000000',63.9),(10347,35,4,3,'2005-03-07 00:00:00.000000','2005-04-04 00:00:00.000000','2005-03-09 00:00:00.000000',1.35),(10348,227,4,2,'2005-03-08 00:00:00.000000','2005-04-05 00:00:00.000000','2005-03-16 00:00:00.000000',0.45),(10349,201,7,1,'2005-03-09 00:00:00.000000','2005-04-06 00:00:00.000000','2005-03-16 00:00:00.000000',4.05),(10350,172,6,2,'2005-03-12 00:00:00.000000','2005-04-09 00:00:00.000000','2005-04-03 00:00:00.000000',28.8),(10351,22,1,1,'2005-03-12 00:00:00.000000','2005-04-09 00:00:00.000000','2005-03-21 00:00:00.000000',72.9),(10352,35,3,3,'2005-03-13 00:00:00.000000','2005-03-27 00:00:00.000000','2005-03-19 00:00:00.000000',0.45),(10353,194,7,3,'2005-03-14 00:00:00.000000','2005-04-11 00:00:00.000000','2005-03-26 00:00:00.000000',162.45),(10354,194,9,3,'2005-03-15 00:00:00.000000','2005-04-12 00:00:00.000000','2005-03-21 00:00:00.000000',24.3),(10355,9,6,1,'2005-03-16 00:00:00.000000','2005-04-13 00:00:00.000000','2005-03-21 00:00:00.000000',18.9),(10356,227,6,2,'2005-03-19 00:00:00.000000','2005-04-16 00:00:00.000000','2005-03-28 00:00:00.000000',16.65),(10357,172,1,3,'2005-03-20 00:00:00.000000','2005-04-17 00:00:00.000000','2005-04-02 00:00:00.000000',15.75),(10358,172,6,1,'2005-03-21 00:00:00.000000','2005-04-18 00:00:00.000000','2005-03-28 00:00:00.000000',9),(10359,201,6,3,'2005-03-22 00:00:00.000000','2005-04-19 00:00:00.000000','2005-03-27 00:00:00.000000',129.6),(10360,102,4,3,'2005-03-23 00:00:00.000000','2005-04-20 00:00:00.000000','2005-04-02 00:00:00.000000',59.4),(10361,198,1,2,'2005-03-23 00:00:00.000000','2005-04-20 00:00:00.000000','2005-04-03 00:00:00.000000',82.35),(10362,102,3,1,'2005-03-26 00:00:00.000000','2005-04-23 00:00:00.000000','2005-03-29 00:00:00.000000',43.2),(10363,15,4,3,'2005-03-27 00:00:00.000000','2005-04-24 00:00:00.000000','2005-04-04 00:00:00.000000',13.95),(10364,22,1,1,'2005-03-27 00:00:00.000000','2005-05-08 00:00:00.000000','2005-04-04 00:00:00.000000',32.4),(10365,9,3,2,'2005-03-28 00:00:00.000000','2005-04-25 00:00:00.000000','2005-04-02 00:00:00.000000',9.9),(10366,105,9,2,'2005-03-29 00:00:00.000000','2005-05-10 00:00:00.000000','2005-04-30 00:00:00.000000',4.5),(10367,223,7,3,'2005-03-29 00:00:00.000000','2005-04-26 00:00:00.000000','2005-04-02 00:00:00.000000',6.3),(10368,22,3,2,'2005-03-30 00:00:00.000000','2005-04-27 00:00:00.000000','2005-04-02 00:00:00.000000',45.9),(10369,201,9,2,'2005-04-02 00:00:00.000000','2005-04-30 00:00:00.000000','2005-04-09 00:00:00.000000',88.2),(10370,10,6,2,'2005-04-03 00:00:00.000000','2005-05-01 00:00:00.000000','2005-04-27 00:00:00.000000',0.45),(10371,172,1,1,'2005-04-03 00:00:00.000000','2005-05-01 00:00:00.000000','2005-04-24 00:00:00.000000',0),(10372,198,6,2,'2005-04-04 00:00:00.000000','2005-05-02 00:00:00.000000','2005-04-09 00:00:00.000000',400.95),(10373,115,4,3,'2005-04-05 00:00:00.000000','2005-05-03 00:00:00.000000','2005-04-11 00:00:00.000000',55.8),(10374,227,1,3,'2005-04-05 00:00:00.000000','2005-05-03 00:00:00.000000','2005-04-09 00:00:00.000000',1.8),(10375,115,3,2,'2005-04-06 00:00:00.000000','2005-05-04 00:00:00.000000','2005-04-09 00:00:00.000000',9),(10376,102,1,2,'2005-04-09 00:00:00.000000','2005-05-07 00:00:00.000000','2005-04-13 00:00:00.000000',9),(10377,201,1,3,'2005-04-09 00:00:00.000000','2005-05-07 00:00:00.000000','2005-04-13 00:00:00.000000',9.9),(10378,35,6,3,'2005-04-10 00:00:00.000000','2005-05-08 00:00:00.000000','2005-04-19 00:00:00.000000',2.25),(10379,198,3,1,'2005-04-11 00:00:00.000000','2005-05-09 00:00:00.000000','2005-04-13 00:00:00.000000',20.25),(10380,115,9,3,'2005-04-12 00:00:00.000000','2005-05-10 00:00:00.000000','2005-05-17 00:00:00.000000',15.75),(10381,172,3,3,'2005-04-12 00:00:00.000000','2005-05-10 00:00:00.000000','2005-04-13 00:00:00.000000',3.6),(10382,22,4,1,'2005-04-13 00:00:00.000000','2005-05-11 00:00:00.000000','2005-04-16 00:00:00.000000',42.75),(10383,9,9,3,'2005-04-16 00:00:00.000000','2005-05-14 00:00:00.000000','2005-04-18 00:00:00.000000',15.3),(10384,102,3,3,'2005-04-16 00:00:00.000000','2005-05-14 00:00:00.000000','2005-04-20 00:00:00.000000',76.05),(10385,201,1,2,'2005-04-17 00:00:00.000000','2005-05-15 00:00:00.000000','2005-04-23 00:00:00.000000',13.95),(10386,35,9,3,'2005-04-18 00:00:00.000000','2005-05-02 00:00:00.000000','2005-04-25 00:00:00.000000',6.3),(10387,201,1,2,'2005-04-18 00:00:00.000000','2005-05-16 00:00:00.000000','2005-04-20 00:00:00.000000',42.3),(10388,201,3,1,'2005-04-19 00:00:00.000000','2005-05-17 00:00:00.000000','2005-04-20 00:00:00.000000',15.75),(10389,102,4,2,'2005-04-20 00:00:00.000000','2005-05-18 00:00:00.000000','2005-04-24 00:00:00.000000',21.15),(10390,22,6,1,'2005-04-23 00:00:00.000000','2005-05-21 00:00:00.000000','2005-04-26 00:00:00.000000',56.7),(10391,15,3,3,'2005-04-23 00:00:00.000000','2005-05-21 00:00:00.000000','2005-05-01 00:00:00.000000',2.25),(10392,194,3,3,'2005-04-24 00:00:00.000000','2005-05-22 00:00:00.000000','2005-05-02 00:00:00.000000',54.9),(10393,201,1,3,'2005-04-25 00:00:00.000000','2005-05-23 00:00:00.000000','2005-05-04 00:00:00.000000',57.15),(10394,115,1,3,'2005-04-25 00:00:00.000000','2005-05-23 00:00:00.000000','2005-05-04 00:00:00.000000',13.5),(10395,115,6,1,'2005-04-26 00:00:00.000000','2005-05-24 00:00:00.000000','2005-05-04 00:00:00.000000',82.8),(10396,35,1,3,'2005-04-27 00:00:00.000000','2005-05-11 00:00:00.000000','2005-05-07 00:00:00.000000',60.75),(10397,194,6,1,'2005-04-27 00:00:00.000000','2005-05-25 00:00:00.000000','2005-05-03 00:00:00.000000',27),(10398,201,3,3,'2005-04-30 00:00:00.000000','2005-05-28 00:00:00.000000','2005-05-10 00:00:00.000000',40.05),(10399,223,9,3,'2005-05-01 00:00:00.000000','2005-05-15 00:00:00.000000','2005-05-09 00:00:00.000000',12.15),(10400,22,1,3,'2005-05-02 00:00:00.000000','2005-05-30 00:00:00.000000','2005-05-17 00:00:00.000000',37.8),(10401,199,1,1,'2005-05-02 00:00:00.000000','2005-05-30 00:00:00.000000','2005-05-11 00:00:00.000000',5.85),(10402,22,9,2,'2005-05-03 00:00:00.000000','2005-06-14 00:00:00.000000','2005-05-11 00:00:00.000000',30.6),(10403,22,4,3,'2005-05-04 00:00:00.000000','2005-06-01 00:00:00.000000','2005-05-10 00:00:00.000000',33.3),(10404,102,3,1,'2005-05-04 00:00:00.000000','2005-06-01 00:00:00.000000','2005-05-09 00:00:00.000000',70.2),(10405,172,1,1,'2005-05-07 00:00:00.000000','2005-06-04 00:00:00.000000','2005-05-23 00:00:00.000000',15.75),(10406,198,7,1,'2005-05-08 00:00:00.000000','2005-06-19 00:00:00.000000','2005-05-14 00:00:00.000000',48.6),(10407,188,3,2,'2005-05-08 00:00:00.000000','2005-06-05 00:00:00.000000','2005-05-31 00:00:00.000000',40.95),(10408,35,9,1,'2005-05-09 00:00:00.000000','2005-06-06 00:00:00.000000','2005-05-15 00:00:00.000000',4.95),(10409,188,3,1,'2005-05-10 00:00:00.000000','2005-06-07 00:00:00.000000','2005-05-15 00:00:00.000000',13.5),(10410,102,3,3,'2005-05-11 00:00:00.000000','2005-06-08 00:00:00.000000','2005-05-16 00:00:00.000000',0.9),(10411,102,9,3,'2005-05-11 00:00:00.000000','2005-06-08 00:00:00.000000','2005-05-22 00:00:00.000000',10.8),(10412,227,9,2,'2005-05-14 00:00:00.000000','2005-06-11 00:00:00.000000','2005-05-16 00:00:00.000000',1.8),(10413,172,3,2,'2005-05-15 00:00:00.000000','2005-06-12 00:00:00.000000','2005-05-17 00:00:00.000000',43.2),(10414,35,3,3,'2005-05-15 00:00:00.000000','2005-06-12 00:00:00.000000','2005-05-18 00:00:00.000000',9.45),(10415,115,3,1,'2005-05-16 00:00:00.000000','2005-06-13 00:00:00.000000','2005-05-25 00:00:00.000000',0),(10416,227,9,3,'2005-05-17 00:00:00.000000','2005-06-14 00:00:00.000000','2005-05-28 00:00:00.000000',10.35),(10417,201,4,3,'2005-05-17 00:00:00.000000','2005-06-14 00:00:00.000000','2005-05-29 00:00:00.000000',31.5),(10418,198,4,1,'2005-05-18 00:00:00.000000','2005-06-15 00:00:00.000000','2005-05-25 00:00:00.000000',8.1),(10419,199,4,2,'2005-05-21 00:00:00.000000','2005-06-18 00:00:00.000000','2005-05-31 00:00:00.000000',61.65),(10420,227,3,1,'2005-05-22 00:00:00.000000','2005-06-19 00:00:00.000000','2005-05-28 00:00:00.000000',19.8),(10421,198,9,1,'2005-05-22 00:00:00.000000','2005-07-03 00:00:00.000000','2005-05-28 00:00:00.000000',44.55),(10422,35,3,1,'2005-05-23 00:00:00.000000','2005-06-20 00:00:00.000000','2005-06-01 00:00:00.000000',1.35),(10423,105,6,3,'2005-05-24 00:00:00.000000','2005-06-07 00:00:00.000000','2005-06-25 00:00:00.000000',10.8),(10424,102,7,2,'2005-05-24 00:00:00.000000','2005-06-21 00:00:00.000000','2005-05-28 00:00:00.000000',166.95),(10425,172,6,2,'2005-05-25 00:00:00.000000','2005-06-22 00:00:00.000000','2005-06-15 00:00:00.000000',3.6),(10426,105,4,1,'2005-05-28 00:00:00.000000','2005-06-25 00:00:00.000000','2005-06-07 00:00:00.000000',8.55),(10427,194,4,2,'2005-05-28 00:00:00.000000','2005-06-25 00:00:00.000000','2005-07-02 00:00:00.000000',13.95),(10428,199,7,1,'2005-05-29 00:00:00.000000','2005-06-26 00:00:00.000000','2005-06-05 00:00:00.000000',4.95),(10429,115,3,2,'2005-05-30 00:00:00.000000','2005-07-11 00:00:00.000000','2005-06-08 00:00:00.000000',25.65),(10430,22,4,1,'2005-05-31 00:00:00.000000','2005-06-14 00:00:00.000000','2005-06-04 00:00:00.000000',206.55),(10431,102,4,2,'2005-05-31 00:00:00.000000','2005-06-14 00:00:00.000000','2005-06-08 00:00:00.000000',19.8),(10432,201,3,2,'2005-06-01 00:00:00.000000','2005-06-15 00:00:00.000000','2005-06-08 00:00:00.000000',1.8),(10433,194,3,3,'2005-06-04 00:00:00.000000','2005-07-02 00:00:00.000000','2005-07-03 00:00:00.000000',33.3),(10434,35,3,2,'2005-06-04 00:00:00.000000','2005-07-02 00:00:00.000000','2005-06-14 00:00:00.000000',8.1),(10435,10,9,2,'2005-06-05 00:00:00.000000','2005-07-17 00:00:00.000000','2005-06-08 00:00:00.000000',4.05),(10436,102,3,2,'2005-06-06 00:00:00.000000','2005-07-04 00:00:00.000000','2005-06-12 00:00:00.000000',70.65),(10437,227,9,1,'2005-06-06 00:00:00.000000','2005-07-04 00:00:00.000000','2005-06-13 00:00:00.000000',9),(10438,211,3,2,'2005-06-07 00:00:00.000000','2005-07-05 00:00:00.000000','2005-06-15 00:00:00.000000',3.6),(10439,102,6,3,'2005-06-08 00:00:00.000000','2005-07-06 00:00:00.000000','2005-06-11 00:00:00.000000',1.8),(10440,201,4,2,'2005-06-11 00:00:00.000000','2005-07-09 00:00:00.000000','2005-06-29 00:00:00.000000',39.15),(10441,188,3,2,'2005-06-11 00:00:00.000000','2005-07-23 00:00:00.000000','2005-07-13 00:00:00.000000',32.85),(10442,22,3,2,'2005-06-12 00:00:00.000000','2005-07-10 00:00:00.000000','2005-06-19 00:00:00.000000',21.6),(10443,199,9,1,'2005-06-13 00:00:00.000000','2005-07-11 00:00:00.000000','2005-06-15 00:00:00.000000',6.3),(10444,102,3,3,'2005-06-13 00:00:00.000000','2005-07-11 00:00:00.000000','2005-06-22 00:00:00.000000',1.8),(10445,102,3,1,'2005-06-14 00:00:00.000000','2005-07-12 00:00:00.000000','2005-06-21 00:00:00.000000',4.05),(10446,211,6,1,'2005-06-15 00:00:00.000000','2005-07-13 00:00:00.000000','2005-06-20 00:00:00.000000',6.75),(10447,199,4,2,'2005-06-15 00:00:00.000000','2005-07-13 00:00:00.000000','2005-07-06 00:00:00.000000',31.05),(10448,199,4,2,'2005-06-18 00:00:00.000000','2005-07-16 00:00:00.000000','2005-06-25 00:00:00.000000',17.55),(10449,102,3,2,'2005-06-19 00:00:00.000000','2005-07-17 00:00:00.000000','2005-06-28 00:00:00.000000',23.85),(10450,223,9,2,'2005-06-20 00:00:00.000000','2005-07-18 00:00:00.000000','2005-07-10 00:00:00.000000',3.15),(10451,198,4,3,'2005-06-20 00:00:00.000000','2005-07-04 00:00:00.000000','2005-07-11 00:00:00.000000',85.05),(10452,201,9,1,'2005-06-21 00:00:00.000000','2005-07-19 00:00:00.000000','2005-06-27 00:00:00.000000',63),(10453,9,1,2,'2005-06-22 00:00:00.000000','2005-07-20 00:00:00.000000','2005-06-27 00:00:00.000000',11.25),(10454,172,4,3,'2005-06-22 00:00:00.000000','2005-07-20 00:00:00.000000','2005-06-26 00:00:00.000000',1.35),(10455,227,9,2,'2005-06-25 00:00:00.000000','2005-08-06 00:00:00.000000','2005-07-02 00:00:00.000000',81),(10456,167,9,2,'2005-06-26 00:00:00.000000','2005-08-07 00:00:00.000000','2005-06-29 00:00:00.000000',3.6),(10457,167,3,1,'2005-06-26 00:00:00.000000','2005-07-24 00:00:00.000000','2005-07-02 00:00:00.000000',5.4),(10458,201,7,3,'2005-06-27 00:00:00.000000','2005-07-25 00:00:00.000000','2005-07-03 00:00:00.000000',66.15),(10459,223,4,2,'2005-06-28 00:00:00.000000','2005-07-26 00:00:00.000000','2005-06-29 00:00:00.000000',11.25),(10460,35,9,1,'2005-06-29 00:00:00.000000','2005-07-27 00:00:00.000000','2005-07-02 00:00:00.000000',7.2),(10461,172,1,3,'2005-06-29 00:00:00.000000','2005-07-27 00:00:00.000000','2005-07-04 00:00:00.000000',67.05),(10462,10,3,1,'2005-07-02 00:00:00.000000','2005-07-30 00:00:00.000000','2005-07-17 00:00:00.000000',2.7),(10463,201,6,3,'2005-07-03 00:00:00.000000','2005-07-31 00:00:00.000000','2005-07-05 00:00:00.000000',6.75),(10464,35,4,2,'2005-07-03 00:00:00.000000','2005-07-31 00:00:00.000000','2005-07-13 00:00:00.000000',40.05),(10465,223,1,3,'2005-07-04 00:00:00.000000','2005-08-01 00:00:00.000000','2005-07-13 00:00:00.000000',65.25),(10466,10,4,1,'2005-07-05 00:00:00.000000','2005-08-02 00:00:00.000000','2005-07-12 00:00:00.000000',5.4),(10467,102,9,2,'2005-07-05 00:00:00.000000','2005-08-02 00:00:00.000000','2005-07-10 00:00:00.000000',2.25),(10468,167,3,3,'2005-07-06 00:00:00.000000','2005-08-03 00:00:00.000000','2005-07-11 00:00:00.000000',19.8),(10469,227,1,1,'2005-07-09 00:00:00.000000','2005-08-06 00:00:00.000000','2005-07-13 00:00:00.000000',27),(10470,102,4,2,'2005-07-10 00:00:00.000000','2005-08-07 00:00:00.000000','2005-07-13 00:00:00.000000',29.25),(10471,102,3,3,'2005-07-10 00:00:00.000000','2005-08-07 00:00:00.000000','2005-07-17 00:00:00.000000',20.7),(10472,201,9,1,'2005-07-11 00:00:00.000000','2005-08-08 00:00:00.000000','2005-07-18 00:00:00.000000',1.8),(10473,165,1,3,'2005-07-12 00:00:00.000000','2005-07-26 00:00:00.000000','2005-07-20 00:00:00.000000',7.2),(10474,194,6,2,'2005-07-12 00:00:00.000000','2005-08-09 00:00:00.000000','2005-07-20 00:00:00.000000',37.35),(10475,201,9,1,'2005-07-13 00:00:00.000000','2005-08-10 00:00:00.000000','2005-08-03 00:00:00.000000',31.05),(10476,115,9,3,'2005-07-16 00:00:00.000000','2005-08-13 00:00:00.000000','2005-07-23 00:00:00.000000',1.8),(10477,194,6,2,'2005-07-16 00:00:00.000000','2005-08-13 00:00:00.000000','2005-07-24 00:00:00.000000',5.85),(10478,223,3,3,'2005-07-17 00:00:00.000000','2005-07-31 00:00:00.000000','2005-07-25 00:00:00.000000',2.25),(10479,199,3,3,'2005-07-18 00:00:00.000000','2005-08-15 00:00:00.000000','2005-07-20 00:00:00.000000',319.05),(10480,35,6,2,'2005-07-19 00:00:00.000000','2005-08-16 00:00:00.000000','2005-07-23 00:00:00.000000',0.45),(10481,199,9,2,'2005-07-19 00:00:00.000000','2005-08-16 00:00:00.000000','2005-07-24 00:00:00.000000',28.8),(10482,172,1,3,'2005-07-20 00:00:00.000000','2005-08-17 00:00:00.000000','2005-08-09 00:00:00.000000',3.15),(10483,227,7,2,'2005-07-23 00:00:00.000000','2005-08-20 00:00:00.000000','2005-08-24 00:00:00.000000',6.75),(10484,102,3,3,'2005-07-23 00:00:00.000000','2005-08-20 00:00:00.000000','2005-07-31 00:00:00.000000',3.15),(10485,172,4,2,'2005-07-24 00:00:00.000000','2005-08-07 00:00:00.000000','2005-07-30 00:00:00.000000',28.8),(10486,115,1,2,'2005-07-25 00:00:00.000000','2005-08-22 00:00:00.000000','2005-08-01 00:00:00.000000',13.95),(10487,198,3,2,'2005-07-25 00:00:00.000000','2005-08-22 00:00:00.000000','2005-07-27 00:00:00.000000',31.95),(10488,35,9,2,'2005-07-26 00:00:00.000000','2005-08-23 00:00:00.000000','2005-08-01 00:00:00.000000',2.25),(10489,194,6,2,'2005-07-27 00:00:00.000000','2005-08-24 00:00:00.000000','2005-08-08 00:00:00.000000',2.25),(10490,115,7,2,'2005-07-30 00:00:00.000000','2005-08-27 00:00:00.000000','2005-08-02 00:00:00.000000',94.5),(10491,35,9,3,'2005-07-30 00:00:00.000000','2005-08-27 00:00:00.000000','2005-08-07 00:00:00.000000',7.65),(10492,102,3,1,'2005-07-31 00:00:00.000000','2005-08-28 00:00:00.000000','2005-08-10 00:00:00.000000',28.35),(10493,172,4,3,'2005-08-01 00:00:00.000000','2005-08-29 00:00:00.000000','2005-08-09 00:00:00.000000',4.95),(10494,10,4,2,'2005-08-01 00:00:00.000000','2005-08-29 00:00:00.000000','2005-08-08 00:00:00.000000',29.7),(10495,172,3,3,'2005-08-02 00:00:00.000000','2005-08-30 00:00:00.000000','2005-08-10 00:00:00.000000',2.25),(10496,211,7,2,'2005-08-03 00:00:00.000000','2005-08-31 00:00:00.000000','2005-08-06 00:00:00.000000',21.15),(10497,172,7,1,'2005-08-03 00:00:00.000000','2005-08-31 00:00:00.000000','2005-08-06 00:00:00.000000',16.2),(10498,115,9,2,'2005-08-06 00:00:00.000000','2005-09-03 00:00:00.000000','2005-08-10 00:00:00.000000',13.5),(10499,172,4,2,'2005-08-07 00:00:00.000000','2005-09-04 00:00:00.000000','2005-08-15 00:00:00.000000',45.9),(10500,172,6,1,'2005-08-08 00:00:00.000000','2005-09-05 00:00:00.000000','2005-08-16 00:00:00.000000',19.35),(10501,102,9,3,'2005-08-08 00:00:00.000000','2005-09-05 00:00:00.000000','2005-08-15 00:00:00.000000',4.05),(10502,194,3,1,'2005-08-09 00:00:00.000000','2005-09-06 00:00:00.000000','2005-08-28 00:00:00.000000',31.05),(10503,115,6,2,'2005-08-10 00:00:00.000000','2005-09-07 00:00:00.000000','2005-08-15 00:00:00.000000',7.65),(10504,227,4,3,'2005-08-10 00:00:00.000000','2005-09-07 00:00:00.000000','2005-08-17 00:00:00.000000',26.55),(10505,102,3,3,'2005-08-13 00:00:00.000000','2005-09-10 00:00:00.000000','2005-08-20 00:00:00.000000',3.15),(10506,167,9,2,'2005-08-14 00:00:00.000000','2005-09-11 00:00:00.000000','2005-08-31 00:00:00.000000',9.45),(10507,9,7,1,'2005-08-14 00:00:00.000000','2005-09-11 00:00:00.000000','2005-08-21 00:00:00.000000',21.15),(10508,188,1,2,'2005-08-15 00:00:00.000000','2005-09-12 00:00:00.000000','2005-09-11 00:00:00.000000',2.25),(10509,102,4,1,'2005-08-16 00:00:00.000000','2005-09-13 00:00:00.000000','2005-08-28 00:00:00.000000',0),(10510,201,6,3,'2005-08-17 00:00:00.000000','2005-09-14 00:00:00.000000','2005-08-27 00:00:00.000000',165.6),(10511,102,4,3,'2005-08-17 00:00:00.000000','2005-09-14 00:00:00.000000','2005-08-20 00:00:00.000000',157.95),(10512,35,7,2,'2005-08-20 00:00:00.000000','2005-09-17 00:00:00.000000','2005-08-23 00:00:00.000000',1.8),(10513,227,7,1,'2005-08-21 00:00:00.000000','2005-10-02 00:00:00.000000','2005-08-27 00:00:00.000000',47.7),(10514,22,3,2,'2005-08-21 00:00:00.000000','2005-09-18 00:00:00.000000','2005-09-14 00:00:00.000000',355.5),(10515,198,3,1,'2005-08-22 00:00:00.000000','2005-09-05 00:00:00.000000','2005-09-21 00:00:00.000000',91.8),(10516,115,3,3,'2005-08-23 00:00:00.000000','2005-09-20 00:00:00.000000','2005-08-30 00:00:00.000000',28.35),(10517,183,3,3,'2005-08-23 00:00:00.000000','2005-09-20 00:00:00.000000','2005-08-28 00:00:00.000000',14.4),(10518,211,4,2,'2005-08-24 00:00:00.000000','2005-09-07 00:00:00.000000','2005-09-03 00:00:00.000000',98.1),(10519,10,6,3,'2005-08-27 00:00:00.000000','2005-09-24 00:00:00.000000','2005-08-30 00:00:00.000000',41.4),(10520,201,7,1,'2005-08-28 00:00:00.000000','2005-09-25 00:00:00.000000','2005-08-30 00:00:00.000000',5.85),(10521,10,9,2,'2005-08-28 00:00:00.000000','2005-09-25 00:00:00.000000','2005-08-31 00:00:00.000000',7.65),(10522,172,4,1,'2005-08-29 00:00:00.000000','2005-09-26 00:00:00.000000','2005-09-04 00:00:00.000000',20.25),(10523,201,7,2,'2005-08-30 00:00:00.000000','2005-09-27 00:00:00.000000','2005-09-28 00:00:00.000000',35.1),(10524,102,1,2,'2005-08-30 00:00:00.000000','2005-09-27 00:00:00.000000','2005-09-05 00:00:00.000000',110.25),(10525,102,1,2,'2005-08-31 00:00:00.000000','2005-09-28 00:00:00.000000','2005-09-21 00:00:00.000000',4.95),(10526,227,4,2,'2005-09-03 00:00:00.000000','2005-10-01 00:00:00.000000','2005-09-13 00:00:00.000000',26.55),(10527,198,7,1,'2005-09-03 00:00:00.000000','2005-10-01 00:00:00.000000','2005-09-05 00:00:00.000000',18.9),(10528,105,6,2,'2005-09-04 00:00:00.000000','2005-09-18 00:00:00.000000','2005-09-07 00:00:00.000000',1.35),(10529,102,6,2,'2005-09-05 00:00:00.000000','2005-10-03 00:00:00.000000','2005-09-07 00:00:00.000000',30.15),(10530,194,3,2,'2005-09-06 00:00:00.000000','2005-10-04 00:00:00.000000','2005-09-10 00:00:00.000000',152.55),(10531,188,7,1,'2005-09-06 00:00:00.000000','2005-10-04 00:00:00.000000','2005-09-17 00:00:00.000000',3.6),(10532,22,7,3,'2005-09-07 00:00:00.000000','2005-10-05 00:00:00.000000','2005-09-10 00:00:00.000000',33.3),(10533,35,9,1,'2005-09-10 00:00:00.000000','2005-10-08 00:00:00.000000','2005-09-20 00:00:00.000000',84.6),(10534,172,9,2,'2005-09-10 00:00:00.000000','2005-10-08 00:00:00.000000','2005-09-12 00:00:00.000000',12.6),(10535,9,4,1,'2005-09-11 00:00:00.000000','2005-10-09 00:00:00.000000','2005-09-19 00:00:00.000000',7.2),(10536,172,3,2,'2005-09-12 00:00:00.000000','2005-10-10 00:00:00.000000','2005-10-05 00:00:00.000000',26.55),(10537,199,1,1,'2005-09-12 00:00:00.000000','2005-09-26 00:00:00.000000','2005-09-17 00:00:00.000000',35.55),(10538,102,9,3,'2005-09-13 00:00:00.000000','2005-10-11 00:00:00.000000','2005-09-14 00:00:00.000000',2.25),(10539,102,6,3,'2005-09-14 00:00:00.000000','2005-10-12 00:00:00.000000','2005-09-21 00:00:00.000000',5.4),(10540,198,3,3,'2005-09-17 00:00:00.000000','2005-10-15 00:00:00.000000','2005-10-12 00:00:00.000000',453.6),(10541,115,3,1,'2005-09-17 00:00:00.000000','2005-10-15 00:00:00.000000','2005-09-27 00:00:00.000000',31.05),(10542,167,1,3,'2005-09-18 00:00:00.000000','2005-10-16 00:00:00.000000','2005-09-24 00:00:00.000000',4.95),(10543,172,9,2,'2005-09-19 00:00:00.000000','2005-10-17 00:00:00.000000','2005-09-21 00:00:00.000000',21.6),(10544,172,4,1,'2005-09-19 00:00:00.000000','2005-10-17 00:00:00.000000','2005-09-28 00:00:00.000000',11.25),(10545,172,9,2,'2005-09-20 00:00:00.000000','2005-10-18 00:00:00.000000','2005-10-25 00:00:00.000000',5.4),(10546,223,1,3,'2005-09-21 00:00:00.000000','2005-10-19 00:00:00.000000','2005-09-25 00:00:00.000000',87.75),(10547,201,3,2,'2005-09-21 00:00:00.000000','2005-10-19 00:00:00.000000','2005-10-01 00:00:00.000000',80.1),(10548,211,3,2,'2005-09-24 00:00:00.000000','2005-10-22 00:00:00.000000','2005-10-01 00:00:00.000000',0.45),(10549,198,6,1,'2005-09-25 00:00:00.000000','2005-10-09 00:00:00.000000','2005-09-28 00:00:00.000000',76.95),(10550,105,7,3,'2005-09-26 00:00:00.000000','2005-10-24 00:00:00.000000','2005-10-05 00:00:00.000000',1.8),(10551,35,4,3,'2005-09-26 00:00:00.000000','2005-11-07 00:00:00.000000','2005-10-05 00:00:00.000000',32.85),(10552,115,3,1,'2005-09-27 00:00:00.000000','2005-10-25 00:00:00.000000','2005-10-04 00:00:00.000000',37.35),(10553,227,3,2,'2005-09-28 00:00:00.000000','2005-10-26 00:00:00.000000','2005-10-02 00:00:00.000000',67.05),(10554,188,4,3,'2005-09-28 00:00:00.000000','2005-10-26 00:00:00.000000','2005-10-04 00:00:00.000000',54.45),(10555,201,6,3,'2005-10-01 00:00:00.000000','2005-10-29 00:00:00.000000','2005-10-03 00:00:00.000000',113.4),(10556,201,3,1,'2005-10-02 00:00:00.000000','2005-11-13 00:00:00.000000','2005-10-12 00:00:00.000000',4.5),(10557,172,9,2,'2005-10-02 00:00:00.000000','2005-10-16 00:00:00.000000','2005-10-05 00:00:00.000000',43.65),(10558,9,1,2,'2005-10-03 00:00:00.000000','2005-10-31 00:00:00.000000','2005-10-09 00:00:00.000000',32.85),(10559,102,6,1,'2005-10-04 00:00:00.000000','2005-11-01 00:00:00.000000','2005-10-12 00:00:00.000000',3.6),(10560,35,9,1,'2005-10-05 00:00:00.000000','2005-11-02 00:00:00.000000','2005-10-08 00:00:00.000000',16.65),(10561,35,3,2,'2005-10-05 00:00:00.000000','2005-11-02 00:00:00.000000','2005-10-08 00:00:00.000000',108.9),(10562,199,1,1,'2005-10-08 00:00:00.000000','2005-11-05 00:00:00.000000','2005-10-11 00:00:00.000000',10.35),(10563,199,3,2,'2005-10-09 00:00:00.000000','2005-11-20 00:00:00.000000','2005-10-23 00:00:00.000000',27),(10564,199,4,3,'2005-10-09 00:00:00.000000','2005-11-06 00:00:00.000000','2005-10-15 00:00:00.000000',6.3),(10565,102,9,2,'2005-10-10 00:00:00.000000','2005-11-07 00:00:00.000000','2005-10-17 00:00:00.000000',3.15),(10566,102,9,1,'2005-10-11 00:00:00.000000','2005-11-08 00:00:00.000000','2005-10-17 00:00:00.000000',39.6),(10567,115,1,1,'2005-10-11 00:00:00.000000','2005-11-08 00:00:00.000000','2005-10-16 00:00:00.000000',15.3),(10568,105,3,3,'2005-10-12 00:00:00.000000','2005-11-09 00:00:00.000000','2005-11-07 00:00:00.000000',3.15),(10569,199,6,1,'2005-10-15 00:00:00.000000','2005-11-12 00:00:00.000000','2005-11-09 00:00:00.000000',26.55),(10570,102,3,3,'2005-10-16 00:00:00.000000','2005-11-13 00:00:00.000000','2005-10-18 00:00:00.000000',85.05),(10571,22,9,3,'2005-10-16 00:00:00.000000','2005-11-27 00:00:00.000000','2005-11-02 00:00:00.000000',11.7),(10572,102,3,2,'2005-10-17 00:00:00.000000','2005-11-14 00:00:00.000000','2005-10-24 00:00:00.000000',52.2),(10573,9,7,3,'2005-10-18 00:00:00.000000','2005-11-15 00:00:00.000000','2005-10-19 00:00:00.000000',38.25),(10574,211,4,2,'2005-10-18 00:00:00.000000','2005-11-15 00:00:00.000000','2005-10-29 00:00:00.000000',17.1),(10575,102,6,1,'2005-10-19 00:00:00.000000','2005-11-02 00:00:00.000000','2005-10-29 00:00:00.000000',57.15),(10576,211,3,3,'2005-10-22 00:00:00.000000','2005-11-05 00:00:00.000000','2005-10-29 00:00:00.000000',8.55),(10577,211,9,2,'2005-10-22 00:00:00.000000','2005-12-03 00:00:00.000000','2005-10-29 00:00:00.000000',11.25),(10578,102,4,3,'2005-10-23 00:00:00.000000','2005-11-20 00:00:00.000000','2005-11-23 00:00:00.000000',13.5),(10579,172,1,2,'2005-10-24 00:00:00.000000','2005-11-21 00:00:00.000000','2005-11-02 00:00:00.000000',6.3),(10580,188,4,3,'2005-10-25 00:00:00.000000','2005-11-22 00:00:00.000000','2005-10-30 00:00:00.000000',34.2),(10581,35,3,1,'2005-10-25 00:00:00.000000','2005-11-22 00:00:00.000000','2005-10-31 00:00:00.000000',1.35),(10582,102,3,2,'2005-10-26 00:00:00.000000','2005-11-23 00:00:00.000000','2005-11-12 00:00:00.000000',12.6),(10583,227,3,2,'2005-10-29 00:00:00.000000','2005-11-26 00:00:00.000000','2005-11-02 00:00:00.000000',3.15),(10584,102,4,1,'2005-10-29 00:00:00.000000','2005-11-26 00:00:00.000000','2005-11-02 00:00:00.000000',26.55),(10585,227,7,1,'2005-10-30 00:00:00.000000','2005-11-27 00:00:00.000000','2005-11-08 00:00:00.000000',5.85),(10586,199,9,1,'2005-10-31 00:00:00.000000','2005-11-28 00:00:00.000000','2005-11-07 00:00:00.000000',0),(10587,198,1,1,'2005-10-31 00:00:00.000000','2005-11-28 00:00:00.000000','2005-11-07 00:00:00.000000',28.35),(10588,198,3,3,'2005-11-01 00:00:00.000000','2005-11-29 00:00:00.000000','2005-11-08 00:00:00.000000',87.75),(10589,105,9,2,'2005-11-02 00:00:00.000000','2005-11-30 00:00:00.000000','2005-11-12 00:00:00.000000',1.8),(10590,102,4,3,'2005-11-05 00:00:00.000000','2005-12-03 00:00:00.000000','2005-11-12 00:00:00.000000',20.25),(10591,223,1,1,'2005-11-05 00:00:00.000000','2005-11-19 00:00:00.000000','2005-11-14 00:00:00.000000',25.2),(10592,172,3,1,'2005-11-06 00:00:00.000000','2005-12-04 00:00:00.000000','2005-11-14 00:00:00.000000',14.4),(10593,172,7,2,'2005-11-07 00:00:00.000000','2005-12-05 00:00:00.000000','2005-12-12 00:00:00.000000',78.3),(10594,188,3,2,'2005-11-07 00:00:00.000000','2005-12-05 00:00:00.000000','2005-11-14 00:00:00.000000',2.25),(10595,22,3,1,'2005-11-08 00:00:00.000000','2005-12-06 00:00:00.000000','2005-11-12 00:00:00.000000',43.65),(10596,227,9,1,'2005-11-09 00:00:00.000000','2005-12-07 00:00:00.000000','2005-12-11 00:00:00.000000',7.2),(10597,194,7,3,'2005-11-09 00:00:00.000000','2005-12-07 00:00:00.000000','2005-11-16 00:00:00.000000',15.75),(10598,199,1,3,'2005-11-12 00:00:00.000000','2005-12-10 00:00:00.000000','2005-11-16 00:00:00.000000',19.8),(10599,102,6,3,'2005-11-13 00:00:00.000000','2005-12-25 00:00:00.000000','2005-11-19 00:00:00.000000',13.5),(10600,115,4,1,'2005-11-14 00:00:00.000000','2005-12-12 00:00:00.000000','2005-11-19 00:00:00.000000',20.25),(10601,115,7,1,'2005-11-14 00:00:00.000000','2005-12-26 00:00:00.000000','2005-11-20 00:00:00.000000',26.1),(10602,223,9,2,'2005-11-15 00:00:00.000000','2005-12-13 00:00:00.000000','2005-11-20 00:00:00.000000',1.35),(10603,201,9,2,'2005-11-16 00:00:00.000000','2005-12-14 00:00:00.000000','2005-12-07 00:00:00.000000',22.05),(10604,35,1,1,'2005-11-16 00:00:00.000000','2005-12-14 00:00:00.000000','2005-11-27 00:00:00.000000',3.15),(10605,102,1,2,'2005-11-19 00:00:00.000000','2005-12-17 00:00:00.000000','2005-11-27 00:00:00.000000',170.55),(10606,211,4,3,'2005-11-20 00:00:00.000000','2005-12-18 00:00:00.000000','2005-11-29 00:00:00.000000',35.55),(10607,201,6,1,'2005-11-20 00:00:00.000000','2005-12-18 00:00:00.000000','2005-11-23 00:00:00.000000',90),(10608,211,4,2,'2005-11-21 00:00:00.000000','2005-12-19 00:00:00.000000','2005-11-30 00:00:00.000000',12.6),(10609,15,7,2,'2005-11-22 00:00:00.000000','2005-12-20 00:00:00.000000','2005-11-28 00:00:00.000000',0.9),(10610,172,9,1,'2005-11-23 00:00:00.000000','2005-12-21 00:00:00.000000','2005-12-05 00:00:00.000000',12.15),(10611,227,6,2,'2005-11-23 00:00:00.000000','2005-12-21 00:00:00.000000','2005-11-30 00:00:00.000000',36.45),(10612,201,1,2,'2005-11-26 00:00:00.000000','2005-12-24 00:00:00.000000','2005-11-30 00:00:00.000000',244.8),(10613,115,4,2,'2005-11-27 00:00:00.000000','2005-12-25 00:00:00.000000','2005-11-30 00:00:00.000000',3.6),(10614,102,9,3,'2005-11-27 00:00:00.000000','2005-12-25 00:00:00.000000','2005-11-30 00:00:00.000000',0.9),(10615,227,3,3,'2005-11-28 00:00:00.000000','2005-12-26 00:00:00.000000','2005-12-05 00:00:00.000000',0.45),(10616,105,1,2,'2005-11-29 00:00:00.000000','2005-12-27 00:00:00.000000','2005-12-04 00:00:00.000000',52.65),(10617,105,4,2,'2005-11-29 00:00:00.000000','2005-12-27 00:00:00.000000','2005-12-03 00:00:00.000000',8.55),(10618,102,1,1,'2005-11-30 00:00:00.000000','2006-01-11 00:00:00.000000','2005-12-07 00:00:00.000000',69.75),(10619,102,3,3,'2005-12-03 00:00:00.000000','2005-12-31 00:00:00.000000','2005-12-06 00:00:00.000000',40.95),(10620,172,3,3,'2005-12-04 00:00:00.000000','2006-01-01 00:00:00.000000','2005-12-13 00:00:00.000000',0.45),(10621,165,4,2,'2005-12-04 00:00:00.000000','2006-01-01 00:00:00.000000','2005-12-10 00:00:00.000000',10.8),(10622,199,4,3,'2005-12-05 00:00:00.000000','2006-01-02 00:00:00.000000','2005-12-10 00:00:00.000000',22.95),(10623,35,9,2,'2005-12-06 00:00:00.000000','2006-01-03 00:00:00.000000','2005-12-11 00:00:00.000000',43.65),(10624,211,4,2,'2005-12-06 00:00:00.000000','2006-01-03 00:00:00.000000','2005-12-18 00:00:00.000000',42.75),(10625,9,3,1,'2005-12-07 00:00:00.000000','2006-01-04 00:00:00.000000','2005-12-13 00:00:00.000000',19.8),(10626,102,1,2,'2005-12-10 00:00:00.000000','2006-01-07 00:00:00.000000','2005-12-19 00:00:00.000000',62.55),(10627,201,9,3,'2005-12-10 00:00:00.000000','2006-01-21 00:00:00.000000','2005-12-20 00:00:00.000000',48.15),(10628,102,4,3,'2005-12-11 00:00:00.000000','2006-01-08 00:00:00.000000','2005-12-19 00:00:00.000000',13.5),(10629,105,4,3,'2005-12-11 00:00:00.000000','2006-01-08 00:00:00.000000','2005-12-19 00:00:00.000000',38.25),(10630,167,1,2,'2005-12-12 00:00:00.000000','2006-01-09 00:00:00.000000','2005-12-18 00:00:00.000000',14.4),(10631,172,9,1,'2005-12-13 00:00:00.000000','2006-01-10 00:00:00.000000','2005-12-14 00:00:00.000000',0.45),(10632,227,9,1,'2005-12-13 00:00:00.000000','2006-01-10 00:00:00.000000','2005-12-18 00:00:00.000000',18.45),(10633,22,7,3,'2005-12-14 00:00:00.000000','2006-01-11 00:00:00.000000','2005-12-17 00:00:00.000000',215.1),(10634,35,4,3,'2005-12-14 00:00:00.000000','2006-01-11 00:00:00.000000','2005-12-20 00:00:00.000000',219.15),(10635,102,9,3,'2005-12-17 00:00:00.000000','2006-01-14 00:00:00.000000','2005-12-20 00:00:00.000000',21.15),(10636,227,4,1,'2005-12-18 00:00:00.000000','2006-01-15 00:00:00.000000','2005-12-25 00:00:00.000000',0.45),(10637,198,6,1,'2005-12-18 00:00:00.000000','2006-01-15 00:00:00.000000','2005-12-25 00:00:00.000000',90.45),(10638,172,3,1,'2005-12-19 00:00:00.000000','2006-01-16 00:00:00.000000','2005-12-31 00:00:00.000000',71.1),(10639,201,7,3,'2005-12-19 00:00:00.000000','2006-01-16 00:00:00.000000','2005-12-26 00:00:00.000000',17.55),(10640,227,4,1,'2005-12-20 00:00:00.000000','2006-01-17 00:00:00.000000','2005-12-27 00:00:00.000000',10.8),(10641,115,4,2,'2005-12-21 00:00:00.000000','2006-01-18 00:00:00.000000','2005-12-25 00:00:00.000000',81),(10642,201,7,3,'2005-12-21 00:00:00.000000','2006-01-18 00:00:00.000000','2006-01-04 00:00:00.000000',18.9),(10643,9,6,1,'2005-12-24 00:00:00.000000','2006-01-21 00:00:00.000000','2006-01-01 00:00:00.000000',13.05),(10644,227,3,2,'2005-12-24 00:00:00.000000','2006-01-21 00:00:00.000000','2005-12-31 00:00:00.000000',0),(10645,115,4,1,'2005-12-25 00:00:00.000000','2006-01-22 00:00:00.000000','2006-01-02 00:00:00.000000',5.4),(10646,115,9,3,'2005-12-26 00:00:00.000000','2006-02-06 00:00:00.000000','2006-01-02 00:00:00.000000',63.9),(10647,198,4,2,'2005-12-26 00:00:00.000000','2006-01-09 00:00:00.000000','2006-01-02 00:00:00.000000',20.7),(10648,199,6,2,'2005-12-27 00:00:00.000000','2006-02-07 00:00:00.000000','2006-01-08 00:00:00.000000',6.3),(10649,102,6,3,'2005-12-27 00:00:00.000000','2006-01-24 00:00:00.000000','2005-12-28 00:00:00.000000',2.7),(10650,35,6,3,'2005-12-28 00:00:00.000000','2006-01-25 00:00:00.000000','2006-01-02 00:00:00.000000',79.65),(10651,227,9,2,'2005-12-31 00:00:00.000000','2006-01-28 00:00:00.000000','2006-01-10 00:00:00.000000',9.45),(10652,105,4,2,'2005-12-31 00:00:00.000000','2006-01-28 00:00:00.000000','2006-01-07 00:00:00.000000',3.15),(10653,35,1,1,'2006-01-02 00:00:00.000000','2006-01-29 00:00:00.000000','2006-01-18 00:00:00.000000',41.85),(10654,102,6,1,'2006-01-02 00:00:00.000000','2006-01-29 00:00:00.000000','2006-01-10 00:00:00.000000',24.75),(10655,199,1,2,'2006-01-02 00:00:00.000000','2006-01-30 00:00:00.000000','2006-01-10 00:00:00.000000',1.8),(10656,105,6,1,'2006-01-03 00:00:00.000000','2006-01-31 00:00:00.000000','2006-01-09 00:00:00.000000',25.65),(10657,201,3,2,'2006-01-03 00:00:00.000000','2006-01-31 00:00:00.000000','2006-01-14 00:00:00.000000',158.85),(10658,198,4,1,'2006-01-04 00:00:00.000000','2006-02-01 00:00:00.000000','2006-01-07 00:00:00.000000',163.8),(10659,198,7,2,'2006-01-04 00:00:00.000000','2006-02-01 00:00:00.000000','2006-01-09 00:00:00.000000',47.7),(10660,115,9,1,'2006-01-07 00:00:00.000000','2006-02-04 00:00:00.000000','2006-02-13 00:00:00.000000',49.95),(10661,115,7,3,'2006-01-08 00:00:00.000000','2006-02-05 00:00:00.000000','2006-01-14 00:00:00.000000',8.1),(10662,172,3,2,'2006-01-08 00:00:00.000000','2006-02-05 00:00:00.000000','2006-01-17 00:00:00.000000',0.45),(10663,102,3,2,'2006-01-09 00:00:00.000000','2006-01-23 00:00:00.000000','2006-02-01 00:00:00.000000',50.85),(10664,35,1,3,'2006-01-09 00:00:00.000000','2006-02-06 00:00:00.000000','2006-01-18 00:00:00.000000',0.45),(10665,172,1,2,'2006-01-10 00:00:00.000000','2006-02-07 00:00:00.000000','2006-01-16 00:00:00.000000',11.7),(10666,199,7,2,'2006-01-11 00:00:00.000000','2006-02-08 00:00:00.000000','2006-01-21 00:00:00.000000',104.4),(10667,22,7,1,'2006-01-11 00:00:00.000000','2006-02-08 00:00:00.000000','2006-01-18 00:00:00.000000',35.1),(10668,227,1,2,'2006-01-14 00:00:00.000000','2006-02-11 00:00:00.000000','2006-01-22 00:00:00.000000',21.15),(10669,201,3,1,'2006-01-14 00:00:00.000000','2006-02-11 00:00:00.000000','2006-01-21 00:00:00.000000',10.8),(10670,35,4,1,'2006-01-15 00:00:00.000000','2006-02-12 00:00:00.000000','2006-01-17 00:00:00.000000',91.35),(10671,35,1,1,'2006-01-16 00:00:00.000000','2006-02-13 00:00:00.000000','2006-01-23 00:00:00.000000',13.5),(10672,102,9,2,'2006-01-16 00:00:00.000000','2006-01-30 00:00:00.000000','2006-01-25 00:00:00.000000',43.2),(10673,227,3,1,'2006-01-17 00:00:00.000000','2006-02-14 00:00:00.000000','2006-01-18 00:00:00.000000',10.35),(10674,165,4,2,'2006-01-17 00:00:00.000000','2006-02-14 00:00:00.000000','2006-01-29 00:00:00.000000',0.45),(10675,35,6,2,'2006-01-18 00:00:00.000000','2006-02-15 00:00:00.000000','2006-01-22 00:00:00.000000',14.4),(10676,211,3,2,'2006-01-21 00:00:00.000000','2006-02-18 00:00:00.000000','2006-01-28 00:00:00.000000',0.9),(10677,9,1,3,'2006-01-21 00:00:00.000000','2006-02-18 00:00:00.000000','2006-01-25 00:00:00.000000',1.8),(10678,201,7,3,'2006-01-22 00:00:00.000000','2006-02-19 00:00:00.000000','2006-02-14 00:00:00.000000',175.05),(10679,102,9,3,'2006-01-22 00:00:00.000000','2006-02-19 00:00:00.000000','2006-01-29 00:00:00.000000',12.6),(10680,188,1,1,'2006-01-23 00:00:00.000000','2006-02-20 00:00:00.000000','2006-01-25 00:00:00.000000',12.15),(10681,105,3,3,'2006-01-24 00:00:00.000000','2006-02-21 00:00:00.000000','2006-01-29 00:00:00.000000',34.2),(10682,9,3,2,'2006-01-24 00:00:00.000000','2006-02-21 00:00:00.000000','2006-01-30 00:00:00.000000',16.2),(10683,15,3,1,'2006-01-25 00:00:00.000000','2006-02-22 00:00:00.000000','2006-01-30 00:00:00.000000',1.8),(10684,188,3,1,'2006-01-25 00:00:00.000000','2006-02-22 00:00:00.000000','2006-01-29 00:00:00.000000',65.7),(10685,105,4,2,'2006-01-28 00:00:00.000000','2006-02-11 00:00:00.000000','2006-02-01 00:00:00.000000',15.3),(10686,194,3,1,'2006-01-29 00:00:00.000000','2006-02-26 00:00:00.000000','2006-02-06 00:00:00.000000',43.2),(10687,115,9,2,'2006-01-29 00:00:00.000000','2006-02-26 00:00:00.000000','2006-02-28 00:00:00.000000',133.2),(10688,223,4,2,'2006-01-30 00:00:00.000000','2006-02-13 00:00:00.000000','2006-02-05 00:00:00.000000',134.55),(10689,102,1,2,'2006-01-30 00:00:00.000000','2006-02-27 00:00:00.000000','2006-02-05 00:00:00.000000',5.85),(10690,115,1,1,'2006-01-31 00:00:00.000000','2006-02-28 00:00:00.000000','2006-02-01 00:00:00.000000',7.2),(10691,198,3,2,'2006-02-01 00:00:00.000000','2006-03-15 00:00:00.000000','2006-02-20 00:00:00.000000',364.5),(10692,9,4,2,'2006-02-01 00:00:00.000000','2006-03-01 00:00:00.000000','2006-02-11 00:00:00.000000',27.45),(10693,227,3,3,'2006-02-04 00:00:00.000000','2006-02-18 00:00:00.000000','2006-02-08 00:00:00.000000',62.55),(10694,198,9,3,'2006-02-04 00:00:00.000000','2006-03-04 00:00:00.000000','2006-02-07 00:00:00.000000',179.1),(10695,227,7,1,'2006-02-05 00:00:00.000000','2006-03-19 00:00:00.000000','2006-02-12 00:00:00.000000',7.65),(10696,227,9,3,'2006-02-06 00:00:00.000000','2006-03-20 00:00:00.000000','2006-02-12 00:00:00.000000',46.35),(10697,172,3,1,'2006-02-06 00:00:00.000000','2006-03-06 00:00:00.000000','2006-02-12 00:00:00.000000',20.7),(10698,22,4,1,'2006-02-07 00:00:00.000000','2006-03-07 00:00:00.000000','2006-02-15 00:00:00.000000',122.4),(10699,102,3,3,'2006-02-07 00:00:00.000000','2006-03-07 00:00:00.000000','2006-02-11 00:00:00.000000',0.45),(10700,201,3,1,'2006-02-08 00:00:00.000000','2006-03-08 00:00:00.000000','2006-02-14 00:00:00.000000',29.25),(10701,115,6,3,'2006-02-11 00:00:00.000000','2006-02-25 00:00:00.000000','2006-02-13 00:00:00.000000',99),(10702,9,4,1,'2006-02-11 00:00:00.000000','2006-03-25 00:00:00.000000','2006-02-19 00:00:00.000000',10.8),(10703,35,6,2,'2006-02-12 00:00:00.000000','2006-03-12 00:00:00.000000','2006-02-18 00:00:00.000000',68.4),(10704,198,6,1,'2006-02-12 00:00:00.000000','2006-03-12 00:00:00.000000','2006-03-08 00:00:00.000000',2.25),(10705,115,9,2,'2006-02-13 00:00:00.000000','2006-03-13 00:00:00.000000','2006-03-19 00:00:00.000000',1.8),(10706,188,9,3,'2006-02-14 00:00:00.000000','2006-03-14 00:00:00.000000','2006-02-19 00:00:00.000000',61.2),(10707,9,4,3,'2006-02-14 00:00:00.000000','2006-02-28 00:00:00.000000','2006-02-21 00:00:00.000000',9.9),(10708,211,6,2,'2006-02-15 00:00:00.000000','2006-03-29 00:00:00.000000','2006-03-06 00:00:00.000000',1.35),(10709,105,1,3,'2006-02-15 00:00:00.000000','2006-03-15 00:00:00.000000','2006-03-21 00:00:00.000000',94.95),(10710,35,1,1,'2006-02-18 00:00:00.000000','2006-03-18 00:00:00.000000','2006-02-21 00:00:00.000000',2.25),(10711,201,6,2,'2006-02-19 00:00:00.000000','2006-04-02 00:00:00.000000','2006-02-27 00:00:00.000000',23.4),(10712,115,3,1,'2006-02-19 00:00:00.000000','2006-03-19 00:00:00.000000','2006-03-01 00:00:00.000000',40.5),(10713,201,1,1,'2006-02-20 00:00:00.000000','2006-03-20 00:00:00.000000','2006-02-22 00:00:00.000000',75.15),(10714,201,6,3,'2006-02-20 00:00:00.000000','2006-03-20 00:00:00.000000','2006-02-25 00:00:00.000000',10.8),(10715,102,3,1,'2006-02-21 00:00:00.000000','2006-03-07 00:00:00.000000','2006-02-27 00:00:00.000000',28.35),(10716,199,4,2,'2006-02-22 00:00:00.000000','2006-03-22 00:00:00.000000','2006-02-25 00:00:00.000000',10.35),(10717,35,1,2,'2006-02-22 00:00:00.000000','2006-03-22 00:00:00.000000','2006-02-27 00:00:00.000000',26.55),(10718,167,1,3,'2006-02-25 00:00:00.000000','2006-03-25 00:00:00.000000','2006-02-27 00:00:00.000000',76.95),(10719,172,9,2,'2006-02-25 00:00:00.000000','2006-03-25 00:00:00.000000','2006-03-06 00:00:00.000000',22.95),(10720,198,9,2,'2006-02-26 00:00:00.000000','2006-03-12 00:00:00.000000','2006-03-06 00:00:00.000000',4.5),(10721,198,6,3,'2006-02-27 00:00:00.000000','2006-03-27 00:00:00.000000','2006-03-01 00:00:00.000000',22.05),(10722,201,9,1,'2006-02-27 00:00:00.000000','2006-04-10 00:00:00.000000','2006-03-05 00:00:00.000000',33.75),(10723,227,3,1,'2006-02-28 00:00:00.000000','2006-03-28 00:00:00.000000','2006-03-26 00:00:00.000000',9.9),(10724,102,9,2,'2006-02-28 00:00:00.000000','2006-04-11 00:00:00.000000','2006-03-06 00:00:00.000000',26.1),(10725,35,4,3,'2006-03-01 00:00:00.000000','2006-03-29 00:00:00.000000','2006-03-06 00:00:00.000000',4.95),(10726,22,4,1,'2006-03-04 00:00:00.000000','2006-03-18 00:00:00.000000','2006-04-05 00:00:00.000000',7.65),(10727,199,3,1,'2006-03-04 00:00:00.000000','2006-04-01 00:00:00.000000','2006-04-05 00:00:00.000000',40.5),(10728,198,4,2,'2006-03-05 00:00:00.000000','2006-04-02 00:00:00.000000','2006-03-12 00:00:00.000000',26.1),(10729,172,9,3,'2006-03-05 00:00:00.000000','2006-04-16 00:00:00.000000','2006-03-15 00:00:00.000000',63.45),(10730,102,6,1,'2006-03-06 00:00:00.000000','2006-04-03 00:00:00.000000','2006-03-15 00:00:00.000000',9),(10731,10,7,1,'2006-03-07 00:00:00.000000','2006-04-04 00:00:00.000000','2006-03-15 00:00:00.000000',43.65),(10732,102,3,1,'2006-03-07 00:00:00.000000','2006-04-04 00:00:00.000000','2006-03-08 00:00:00.000000',7.65),(10733,102,1,3,'2006-03-08 00:00:00.000000','2006-04-05 00:00:00.000000','2006-03-11 00:00:00.000000',49.5),(10734,105,3,3,'2006-03-08 00:00:00.000000','2006-04-05 00:00:00.000000','2006-03-13 00:00:00.000000',0.9),(10735,172,6,2,'2006-03-11 00:00:00.000000','2006-04-08 00:00:00.000000','2006-03-22 00:00:00.000000',20.7),(10736,115,9,2,'2006-03-12 00:00:00.000000','2006-04-09 00:00:00.000000','2006-03-22 00:00:00.000000',19.8),(10737,223,3,2,'2006-03-12 00:00:00.000000','2006-04-09 00:00:00.000000','2006-03-19 00:00:00.000000',3.6),(10738,201,3,1,'2006-03-13 00:00:00.000000','2006-04-10 00:00:00.000000','2006-03-19 00:00:00.000000',1.35),(10739,223,3,3,'2006-03-13 00:00:00.000000','2006-04-10 00:00:00.000000','2006-03-18 00:00:00.000000',4.95),(10740,227,4,2,'2006-03-14 00:00:00.000000','2006-04-11 00:00:00.000000','2006-03-26 00:00:00.000000',36.9),(10741,9,4,3,'2006-03-15 00:00:00.000000','2006-03-29 00:00:00.000000','2006-03-19 00:00:00.000000',4.95),(10742,102,3,3,'2006-03-15 00:00:00.000000','2006-04-12 00:00:00.000000','2006-03-19 00:00:00.000000',109.8),(10743,9,1,2,'2006-03-18 00:00:00.000000','2006-04-15 00:00:00.000000','2006-03-22 00:00:00.000000',10.8),(10744,223,6,1,'2006-03-18 00:00:00.000000','2006-04-15 00:00:00.000000','2006-03-25 00:00:00.000000',31.05),(10745,198,9,1,'2006-03-19 00:00:00.000000','2006-04-16 00:00:00.000000','2006-03-28 00:00:00.000000',1.8),(10746,10,1,3,'2006-03-20 00:00:00.000000','2006-04-17 00:00:00.000000','2006-03-22 00:00:00.000000',13.95),(10747,194,6,1,'2006-03-20 00:00:00.000000','2006-04-17 00:00:00.000000','2006-03-27 00:00:00.000000',52.65),(10748,201,3,1,'2006-03-21 00:00:00.000000','2006-04-18 00:00:00.000000','2006-03-29 00:00:00.000000',104.85),(10749,165,4,2,'2006-03-21 00:00:00.000000','2006-04-18 00:00:00.000000','2006-04-19 00:00:00.000000',27.9),(10750,227,9,1,'2006-03-22 00:00:00.000000','2006-04-19 00:00:00.000000','2006-03-25 00:00:00.000000',35.55),(10751,199,3,3,'2006-03-25 00:00:00.000000','2006-04-22 00:00:00.000000','2006-04-03 00:00:00.000000',58.95),(10752,183,3,3,'2006-03-25 00:00:00.000000','2006-04-22 00:00:00.000000','2006-03-29 00:00:00.000000',0.45),(10753,35,3,1,'2006-03-26 00:00:00.000000','2006-04-23 00:00:00.000000','2006-03-28 00:00:00.000000',3.6),(10754,102,6,3,'2006-03-26 00:00:00.000000','2006-04-23 00:00:00.000000','2006-03-28 00:00:00.000000',0.9),(10755,102,4,2,'2006-03-27 00:00:00.000000','2006-04-24 00:00:00.000000','2006-03-29 00:00:00.000000',7.65),(10756,201,9,2,'2006-03-28 00:00:00.000000','2006-04-25 00:00:00.000000','2006-04-02 00:00:00.000000',32.85),(10757,201,6,1,'2006-03-28 00:00:00.000000','2006-04-25 00:00:00.000000','2006-04-15 00:00:00.000000',3.6),(10758,199,3,3,'2006-03-29 00:00:00.000000','2006-04-26 00:00:00.000000','2006-04-04 00:00:00.000000',62.1),(10759,9,3,3,'2006-03-29 00:00:00.000000','2006-04-26 00:00:00.000000','2006-04-12 00:00:00.000000',5.4),(10760,102,4,1,'2006-04-01 00:00:00.000000','2006-04-29 00:00:00.000000','2006-04-10 00:00:00.000000',70.2),(10761,199,6,2,'2006-04-02 00:00:00.000000','2006-04-30 00:00:00.000000','2006-04-08 00:00:00.000000',8.55),(10762,35,3,1,'2006-04-02 00:00:00.000000','2006-04-30 00:00:00.000000','2006-04-09 00:00:00.000000',148.05),(10763,35,3,3,'2006-04-03 00:00:00.000000','2006-05-01 00:00:00.000000','2006-04-08 00:00:00.000000',16.65),(10764,22,6,3,'2006-04-03 00:00:00.000000','2006-05-01 00:00:00.000000','2006-04-08 00:00:00.000000',65.25),(10765,198,3,3,'2006-04-04 00:00:00.000000','2006-05-02 00:00:00.000000','2006-04-09 00:00:00.000000',19.35),(10766,188,4,1,'2006-04-05 00:00:00.000000','2006-05-03 00:00:00.000000','2006-04-09 00:00:00.000000',71.1),(10767,201,4,3,'2006-04-05 00:00:00.000000','2006-05-03 00:00:00.000000','2006-04-15 00:00:00.000000',0.9),(10768,9,3,2,'2006-04-08 00:00:00.000000','2006-05-06 00:00:00.000000','2006-04-15 00:00:00.000000',65.7),(10769,223,3,1,'2006-04-08 00:00:00.000000','2006-05-06 00:00:00.000000','2006-04-12 00:00:00.000000',29.25),(10770,115,9,3,'2006-04-09 00:00:00.000000','2006-05-07 00:00:00.000000','2006-04-17 00:00:00.000000',2.25),(10771,22,9,2,'2006-04-10 00:00:00.000000','2006-05-08 00:00:00.000000','2006-05-03 00:00:00.000000',4.95),(10772,172,3,2,'2006-04-10 00:00:00.000000','2006-05-08 00:00:00.000000','2006-04-19 00:00:00.000000',40.95),(10773,22,1,3,'2006-04-11 00:00:00.000000','2006-05-09 00:00:00.000000','2006-04-16 00:00:00.000000',43.2),(10774,35,4,1,'2006-04-11 00:00:00.000000','2006-04-25 00:00:00.000000','2006-04-12 00:00:00.000000',21.6),(10775,211,7,1,'2006-04-12 00:00:00.000000','2006-05-10 00:00:00.000000','2006-04-26 00:00:00.000000',9),(10776,22,1,3,'2006-04-15 00:00:00.000000','2006-05-13 00:00:00.000000','2006-04-18 00:00:00.000000',158.4),(10777,105,7,2,'2006-04-15 00:00:00.000000','2006-04-29 00:00:00.000000','2006-05-22 00:00:00.000000',1.35),(10778,102,3,1,'2006-04-16 00:00:00.000000','2006-05-14 00:00:00.000000','2006-04-24 00:00:00.000000',3.15),(10779,102,3,2,'2006-04-16 00:00:00.000000','2006-05-14 00:00:00.000000','2006-05-15 00:00:00.000000',26.1),(10780,172,3,1,'2006-04-16 00:00:00.000000','2006-04-30 00:00:00.000000','2006-04-25 00:00:00.000000',18.9),(10781,227,3,3,'2006-04-17 00:00:00.000000','2006-05-15 00:00:00.000000','2006-04-19 00:00:00.000000',32.85),(10782,10,9,3,'2006-04-17 00:00:00.000000','2006-05-15 00:00:00.000000','2006-04-22 00:00:00.000000',0.45),(10783,115,4,2,'2006-04-18 00:00:00.000000','2006-05-16 00:00:00.000000','2006-04-19 00:00:00.000000',56.25),(10784,102,4,3,'2006-04-18 00:00:00.000000','2006-05-16 00:00:00.000000','2006-04-22 00:00:00.000000',31.5),(10785,105,1,3,'2006-04-18 00:00:00.000000','2006-05-16 00:00:00.000000','2006-04-24 00:00:00.000000',0.9),(10786,198,9,1,'2006-04-19 00:00:00.000000','2006-05-17 00:00:00.000000','2006-04-23 00:00:00.000000',49.95),(10787,172,3,1,'2006-04-19 00:00:00.000000','2006-05-03 00:00:00.000000','2006-04-26 00:00:00.000000',112.5),(10788,198,1,2,'2006-04-22 00:00:00.000000','2006-05-20 00:00:00.000000','2006-05-20 00:00:00.000000',19.35),(10789,35,1,2,'2006-04-22 00:00:00.000000','2006-05-20 00:00:00.000000','2006-05-01 00:00:00.000000',45.45),(10790,105,6,1,'2006-04-22 00:00:00.000000','2006-05-20 00:00:00.000000','2006-04-26 00:00:00.000000',12.6),(10791,35,6,2,'2006-04-23 00:00:00.000000','2006-05-21 00:00:00.000000','2006-05-02 00:00:00.000000',7.65),(10792,227,1,3,'2006-04-23 00:00:00.000000','2006-05-21 00:00:00.000000','2006-05-01 00:00:00.000000',10.8),(10793,9,3,3,'2006-04-24 00:00:00.000000','2006-05-22 00:00:00.000000','2006-05-09 00:00:00.000000',2.25),(10794,198,6,1,'2006-04-24 00:00:00.000000','2006-05-22 00:00:00.000000','2006-05-03 00:00:00.000000',9.45),(10795,22,9,2,'2006-04-24 00:00:00.000000','2006-05-22 00:00:00.000000','2006-05-21 00:00:00.000000',57.15),(10796,115,3,1,'2006-04-25 00:00:00.000000','2006-05-23 00:00:00.000000','2006-05-15 00:00:00.000000',12.15),(10797,15,7,2,'2006-04-25 00:00:00.000000','2006-05-23 00:00:00.000000','2006-05-06 00:00:00.000000',14.85),(10798,165,3,1,'2006-04-26 00:00:00.000000','2006-05-24 00:00:00.000000','2006-05-06 00:00:00.000000',0.9),(10799,167,9,3,'2006-04-26 00:00:00.000000','2006-06-07 00:00:00.000000','2006-05-06 00:00:00.000000',13.95),(10800,201,1,3,'2006-04-26 00:00:00.000000','2006-05-24 00:00:00.000000','2006-05-06 00:00:00.000000',61.65),(10801,102,4,2,'2006-04-29 00:00:00.000000','2006-05-27 00:00:00.000000','2006-05-01 00:00:00.000000',43.65),(10802,201,4,2,'2006-04-29 00:00:00.000000','2006-05-27 00:00:00.000000','2006-05-03 00:00:00.000000',115.65),(10803,227,4,1,'2006-04-30 00:00:00.000000','2006-05-28 00:00:00.000000','2006-05-07 00:00:00.000000',24.75),(10804,201,6,2,'2006-04-30 00:00:00.000000','2006-05-28 00:00:00.000000','2006-05-08 00:00:00.000000',12.15),(10805,211,3,3,'2006-04-30 00:00:00.000000','2006-05-28 00:00:00.000000','2006-05-10 00:00:00.000000',106.65),(10806,223,3,2,'2006-05-01 00:00:00.000000','2006-05-29 00:00:00.000000','2006-05-06 00:00:00.000000',9.9),(10807,35,4,1,'2006-05-01 00:00:00.000000','2006-05-29 00:00:00.000000','2006-05-31 00:00:00.000000',0.45),(10808,188,3,3,'2006-05-02 00:00:00.000000','2006-05-30 00:00:00.000000','2006-05-10 00:00:00.000000',20.7),(10809,227,7,1,'2006-05-02 00:00:00.000000','2006-05-30 00:00:00.000000','2006-05-08 00:00:00.000000',2.25),(10810,172,3,3,'2006-05-02 00:00:00.000000','2006-05-30 00:00:00.000000','2006-05-08 00:00:00.000000',1.8),(10811,172,9,1,'2006-05-03 00:00:00.000000','2006-05-31 00:00:00.000000','2006-05-09 00:00:00.000000',13.95),(10812,199,6,1,'2006-05-03 00:00:00.000000','2006-05-31 00:00:00.000000','2006-05-13 00:00:00.000000',27),(10813,199,1,1,'2006-05-06 00:00:00.000000','2006-06-03 00:00:00.000000','2006-05-10 00:00:00.000000',21.15),(10814,223,3,3,'2006-05-06 00:00:00.000000','2006-06-03 00:00:00.000000','2006-05-15 00:00:00.000000',58.95),(10815,201,3,3,'2006-05-06 00:00:00.000000','2006-06-03 00:00:00.000000','2006-05-15 00:00:00.000000',6.75),(10816,105,4,2,'2006-05-07 00:00:00.000000','2006-06-04 00:00:00.000000','2006-06-05 00:00:00.000000',324),(10817,167,3,2,'2006-05-07 00:00:00.000000','2006-05-21 00:00:00.000000','2006-05-14 00:00:00.000000',137.7),(10818,102,7,3,'2006-05-08 00:00:00.000000','2006-06-05 00:00:00.000000','2006-05-13 00:00:00.000000',29.25),(10819,10,3,3,'2006-05-08 00:00:00.000000','2006-06-05 00:00:00.000000','2006-05-17 00:00:00.000000',9),(10820,199,3,2,'2006-05-08 00:00:00.000000','2006-06-05 00:00:00.000000','2006-05-14 00:00:00.000000',17.1),(10821,201,1,1,'2006-05-09 00:00:00.000000','2006-06-06 00:00:00.000000','2006-05-16 00:00:00.000000',16.65),(10822,211,6,3,'2006-05-09 00:00:00.000000','2006-06-06 00:00:00.000000','2006-05-17 00:00:00.000000',3.15),(10823,172,6,2,'2006-05-10 00:00:00.000000','2006-06-07 00:00:00.000000','2006-05-14 00:00:00.000000',73.8),(10824,35,9,1,'2006-05-10 00:00:00.000000','2006-06-07 00:00:00.000000','2006-05-31 00:00:00.000000',0.45),(10825,15,1,1,'2006-05-10 00:00:00.000000','2006-06-07 00:00:00.000000','2006-05-15 00:00:00.000000',35.55),(10826,102,6,1,'2006-05-13 00:00:00.000000','2006-06-10 00:00:00.000000','2006-06-07 00:00:00.000000',3.15),(10827,102,1,2,'2006-05-13 00:00:00.000000','2006-05-27 00:00:00.000000','2006-06-07 00:00:00.000000',28.8),(10828,199,9,1,'2006-05-14 00:00:00.000000','2006-05-28 00:00:00.000000','2006-06-05 00:00:00.000000',40.95),(10829,165,9,1,'2006-05-14 00:00:00.000000','2006-06-11 00:00:00.000000','2006-05-24 00:00:00.000000',69.75),(10830,211,4,2,'2006-05-14 00:00:00.000000','2006-06-25 00:00:00.000000','2006-05-22 00:00:00.000000',36.9),(10831,201,3,2,'2006-05-15 00:00:00.000000','2006-06-12 00:00:00.000000','2006-05-24 00:00:00.000000',32.4),(10832,172,3,2,'2006-05-15 00:00:00.000000','2006-06-12 00:00:00.000000','2006-05-20 00:00:00.000000',19.35),(10833,188,6,2,'2006-05-16 00:00:00.000000','2006-06-13 00:00:00.000000','2006-05-24 00:00:00.000000',31.95),(10834,211,1,3,'2006-05-16 00:00:00.000000','2006-06-13 00:00:00.000000','2006-05-20 00:00:00.000000',13.5),(10835,9,1,3,'2006-05-16 00:00:00.000000','2006-06-13 00:00:00.000000','2006-05-22 00:00:00.000000',31.5),(10836,22,7,1,'2006-05-17 00:00:00.000000','2006-06-14 00:00:00.000000','2006-05-22 00:00:00.000000',185.4),(10837,102,9,3,'2006-05-17 00:00:00.000000','2006-06-14 00:00:00.000000','2006-05-24 00:00:00.000000',5.85),(10838,172,3,3,'2006-05-20 00:00:00.000000','2006-06-17 00:00:00.000000','2006-05-24 00:00:00.000000',26.55),(10839,211,3,3,'2006-05-20 00:00:00.000000','2006-06-17 00:00:00.000000','2006-05-23 00:00:00.000000',15.75),(10840,172,4,2,'2006-05-20 00:00:00.000000','2006-07-01 00:00:00.000000','2006-06-17 00:00:00.000000',1.35),(10841,201,6,2,'2006-05-21 00:00:00.000000','2006-06-18 00:00:00.000000','2006-05-30 00:00:00.000000',190.8),(10842,211,1,3,'2006-05-21 00:00:00.000000','2006-06-18 00:00:00.000000','2006-05-30 00:00:00.000000',24.3),(10843,223,4,2,'2006-05-22 00:00:00.000000','2006-06-19 00:00:00.000000','2006-05-27 00:00:00.000000',4.05),(10844,194,9,2,'2006-05-22 00:00:00.000000','2006-06-19 00:00:00.000000','2006-05-27 00:00:00.000000',11.25),(10845,198,9,1,'2006-05-22 00:00:00.000000','2006-06-05 00:00:00.000000','2006-05-31 00:00:00.000000',95.85),(10846,201,3,3,'2006-05-23 00:00:00.000000','2006-07-04 00:00:00.000000','2006-05-24 00:00:00.000000',25.2),(10847,201,4,3,'2006-05-23 00:00:00.000000','2006-06-06 00:00:00.000000','2006-06-11 00:00:00.000000',219.6),(10848,10,7,2,'2006-05-24 00:00:00.000000','2006-06-21 00:00:00.000000','2006-05-30 00:00:00.000000',17.1),(10849,167,9,2,'2006-05-24 00:00:00.000000','2006-06-21 00:00:00.000000','2006-05-31 00:00:00.000000',0.45),(10850,223,1,1,'2006-05-24 00:00:00.000000','2006-07-05 00:00:00.000000','2006-05-31 00:00:00.000000',22.05),(10851,199,6,1,'2006-05-27 00:00:00.000000','2006-06-24 00:00:00.000000','2006-06-03 00:00:00.000000',72.45),(10852,199,9,1,'2006-05-27 00:00:00.000000','2006-06-10 00:00:00.000000','2006-05-31 00:00:00.000000',78.3),(10853,102,9,2,'2006-05-28 00:00:00.000000','2006-06-25 00:00:00.000000','2006-06-04 00:00:00.000000',24.3),(10854,22,3,2,'2006-05-28 00:00:00.000000','2006-06-25 00:00:00.000000','2006-06-06 00:00:00.000000',45),(10855,188,3,1,'2006-05-28 00:00:00.000000','2006-06-25 00:00:00.000000','2006-06-05 00:00:00.000000',76.95),(10856,9,3,2,'2006-05-29 00:00:00.000000','2006-06-26 00:00:00.000000','2006-06-11 00:00:00.000000',26.1),(10857,102,9,2,'2006-05-29 00:00:00.000000','2006-06-26 00:00:00.000000','2006-06-07 00:00:00.000000',85.05),(10858,172,3,1,'2006-05-30 00:00:00.000000','2006-06-27 00:00:00.000000','2006-06-04 00:00:00.000000',23.85),(10859,35,1,2,'2006-05-30 00:00:00.000000','2006-06-27 00:00:00.000000','2006-06-03 00:00:00.000000',34.2),(10860,35,3,3,'2006-05-30 00:00:00.000000','2006-06-27 00:00:00.000000','2006-06-05 00:00:00.000000',8.55),(10861,227,4,2,'2006-05-31 00:00:00.000000','2006-06-28 00:00:00.000000','2006-06-18 00:00:00.000000',6.75),(10862,172,9,2,'2006-05-31 00:00:00.000000','2006-07-12 00:00:00.000000','2006-06-03 00:00:00.000000',23.85),(10863,115,4,2,'2006-06-03 00:00:00.000000','2006-07-01 00:00:00.000000','2006-06-18 00:00:00.000000',13.5),(10864,9,4,2,'2006-06-03 00:00:00.000000','2006-07-01 00:00:00.000000','2006-06-10 00:00:00.000000',1.35),(10865,198,3,1,'2006-06-03 00:00:00.000000','2006-06-17 00:00:00.000000','2006-06-13 00:00:00.000000',156.6),(10866,102,6,1,'2006-06-04 00:00:00.000000','2006-07-02 00:00:00.000000','2006-06-13 00:00:00.000000',49.05),(10867,172,6,1,'2006-06-04 00:00:00.000000','2006-07-16 00:00:00.000000','2006-06-12 00:00:00.000000',0.9),(10868,198,7,2,'2006-06-05 00:00:00.000000','2006-07-03 00:00:00.000000','2006-06-24 00:00:00.000000',85.95),(10869,201,6,1,'2006-06-05 00:00:00.000000','2006-07-03 00:00:00.000000','2006-06-10 00:00:00.000000',64.35),(10870,227,6,3,'2006-06-05 00:00:00.000000','2006-07-03 00:00:00.000000','2006-06-14 00:00:00.000000',5.4),(10871,102,9,2,'2006-06-06 00:00:00.000000','2006-07-04 00:00:00.000000','2006-06-11 00:00:00.000000',50.4),(10872,105,6,2,'2006-06-06 00:00:00.000000','2006-07-04 00:00:00.000000','2006-06-10 00:00:00.000000',78.75),(10873,227,4,1,'2006-06-07 00:00:00.000000','2006-07-05 00:00:00.000000','2006-06-10 00:00:00.000000',0.45),(10874,105,6,2,'2006-06-07 00:00:00.000000','2006-07-05 00:00:00.000000','2006-06-12 00:00:00.000000',9),(10875,102,4,2,'2006-06-07 00:00:00.000000','2006-07-05 00:00:00.000000','2006-07-02 00:00:00.000000',14.4),(10876,102,7,3,'2006-06-10 00:00:00.000000','2006-07-08 00:00:00.000000','2006-06-13 00:00:00.000000',27),(10877,199,1,1,'2006-06-10 00:00:00.000000','2006-07-08 00:00:00.000000','2006-06-20 00:00:00.000000',17.1),(10878,198,4,1,'2006-06-11 00:00:00.000000','2006-07-09 00:00:00.000000','2006-06-13 00:00:00.000000',21.15),(10879,227,3,3,'2006-06-11 00:00:00.000000','2006-07-09 00:00:00.000000','2006-06-13 00:00:00.000000',3.6),(10880,35,7,1,'2006-06-11 00:00:00.000000','2006-07-23 00:00:00.000000','2006-06-19 00:00:00.000000',39.6),(10881,10,4,1,'2006-06-12 00:00:00.000000','2006-07-10 00:00:00.000000','2006-06-19 00:00:00.000000',1.35),(10882,201,4,3,'2006-06-12 00:00:00.000000','2006-07-10 00:00:00.000000','2006-06-21 00:00:00.000000',10.35),(10883,172,9,3,'2006-06-13 00:00:00.000000','2006-07-11 00:00:00.000000','2006-06-21 00:00:00.000000',0.45),(10884,172,4,2,'2006-06-13 00:00:00.000000','2006-07-11 00:00:00.000000','2006-06-14 00:00:00.000000',40.95),(10885,201,6,3,'2006-06-13 00:00:00.000000','2006-07-11 00:00:00.000000','2006-06-19 00:00:00.000000',2.7),(10886,115,1,1,'2006-06-14 00:00:00.000000','2006-07-12 00:00:00.000000','2006-07-01 00:00:00.000000',2.25),(10887,105,9,3,'2006-06-14 00:00:00.000000','2006-07-12 00:00:00.000000','2006-06-17 00:00:00.000000',0.45),(10888,105,1,2,'2006-06-17 00:00:00.000000','2006-07-15 00:00:00.000000','2006-06-24 00:00:00.000000',23.4),(10889,199,9,3,'2006-06-17 00:00:00.000000','2006-07-15 00:00:00.000000','2006-06-24 00:00:00.000000',126.45),(10890,15,7,1,'2006-06-17 00:00:00.000000','2006-07-15 00:00:00.000000','2006-06-19 00:00:00.000000',14.85),(10891,172,7,2,'2006-06-18 00:00:00.000000','2006-07-16 00:00:00.000000','2006-06-20 00:00:00.000000',9),(10892,102,4,2,'2006-06-18 00:00:00.000000','2006-07-16 00:00:00.000000','2006-06-20 00:00:00.000000',54),(10893,167,9,2,'2006-06-19 00:00:00.000000','2006-07-17 00:00:00.000000','2006-06-21 00:00:00.000000',35.1),(10894,201,1,1,'2006-06-19 00:00:00.000000','2006-07-17 00:00:00.000000','2006-06-21 00:00:00.000000',52.2),(10895,22,3,1,'2006-06-19 00:00:00.000000','2006-07-17 00:00:00.000000','2006-06-24 00:00:00.000000',73.35),(10896,102,7,3,'2006-06-20 00:00:00.000000','2006-07-18 00:00:00.000000','2006-06-28 00:00:00.000000',14.4),(10897,115,3,2,'2006-06-20 00:00:00.000000','2006-07-18 00:00:00.000000','2006-06-26 00:00:00.000000',271.8),(10898,188,4,2,'2006-06-21 00:00:00.000000','2006-07-19 00:00:00.000000','2006-07-05 00:00:00.000000',0.45),(10899,172,6,3,'2006-06-21 00:00:00.000000','2006-07-19 00:00:00.000000','2006-06-27 00:00:00.000000',0.45),(10900,227,1,2,'2006-06-21 00:00:00.000000','2006-07-19 00:00:00.000000','2006-07-03 00:00:00.000000',0.9),(10901,115,4,1,'2006-06-24 00:00:00.000000','2006-07-22 00:00:00.000000','2006-06-27 00:00:00.000000',27.9),(10902,35,1,1,'2006-06-24 00:00:00.000000','2006-07-22 00:00:00.000000','2006-07-02 00:00:00.000000',19.8),(10903,115,3,3,'2006-06-25 00:00:00.000000','2006-07-23 00:00:00.000000','2006-07-03 00:00:00.000000',16.65),(10904,227,3,3,'2006-06-25 00:00:00.000000','2006-07-23 00:00:00.000000','2006-06-28 00:00:00.000000',73.35),(10905,227,9,2,'2006-06-25 00:00:00.000000','2006-07-23 00:00:00.000000','2006-07-05 00:00:00.000000',6.3),(10906,227,4,3,'2006-06-26 00:00:00.000000','2006-07-10 00:00:00.000000','2006-07-02 00:00:00.000000',11.7),(10907,201,6,3,'2006-06-26 00:00:00.000000','2006-07-24 00:00:00.000000','2006-06-28 00:00:00.000000',4.05),(10908,199,4,2,'2006-06-27 00:00:00.000000','2006-07-25 00:00:00.000000','2006-07-05 00:00:00.000000',14.85),(10909,201,1,2,'2006-06-27 00:00:00.000000','2006-07-25 00:00:00.000000','2006-07-09 00:00:00.000000',23.85),(10910,227,1,3,'2006-06-27 00:00:00.000000','2006-07-25 00:00:00.000000','2006-07-03 00:00:00.000000',17.1),(10911,105,3,1,'2006-06-27 00:00:00.000000','2006-07-25 00:00:00.000000','2006-07-04 00:00:00.000000',17.1),(10912,115,3,2,'2006-06-27 00:00:00.000000','2006-07-25 00:00:00.000000','2006-07-17 00:00:00.000000',261.45),(10913,198,4,1,'2006-06-27 00:00:00.000000','2006-07-25 00:00:00.000000','2006-07-03 00:00:00.000000',14.85),(10914,198,6,1,'2006-06-28 00:00:00.000000','2006-07-26 00:00:00.000000','2006-07-01 00:00:00.000000',9.45),(10915,211,3,2,'2006-06-28 00:00:00.000000','2006-07-26 00:00:00.000000','2006-07-01 00:00:00.000000',1.8),(10916,199,1,2,'2006-06-28 00:00:00.000000','2006-07-26 00:00:00.000000','2006-07-08 00:00:00.000000',28.8),(10917,199,4,2,'2006-07-01 00:00:00.000000','2006-07-29 00:00:00.000000','2006-07-10 00:00:00.000000',3.6),(10918,102,3,3,'2006-07-01 00:00:00.000000','2006-07-29 00:00:00.000000','2006-07-10 00:00:00.000000',22.05),(10919,172,3,2,'2006-07-01 00:00:00.000000','2006-07-29 00:00:00.000000','2006-07-03 00:00:00.000000',9),(10920,9,4,2,'2006-07-02 00:00:00.000000','2006-07-30 00:00:00.000000','2006-07-08 00:00:00.000000',13.5),(10921,223,1,1,'2006-07-02 00:00:00.000000','2006-08-13 00:00:00.000000','2006-07-08 00:00:00.000000',79.2),(10922,115,6,3,'2006-07-02 00:00:00.000000','2006-07-30 00:00:00.000000','2006-07-04 00:00:00.000000',28.35),(10923,172,7,3,'2006-07-02 00:00:00.000000','2006-08-13 00:00:00.000000','2006-07-12 00:00:00.000000',30.6),(10924,102,3,2,'2006-07-03 00:00:00.000000','2006-07-31 00:00:00.000000','2006-08-07 00:00:00.000000',68.4),(10925,115,3,1,'2006-07-03 00:00:00.000000','2006-07-31 00:00:00.000000','2006-07-12 00:00:00.000000',0.9),(10926,9,4,3,'2006-07-03 00:00:00.000000','2006-07-31 00:00:00.000000','2006-07-10 00:00:00.000000',18),(10927,172,4,1,'2006-07-04 00:00:00.000000','2006-08-01 00:00:00.000000','2006-08-07 00:00:00.000000',9),(10928,105,1,1,'2006-07-04 00:00:00.000000','2006-08-01 00:00:00.000000','2006-07-17 00:00:00.000000',0.45),(10929,35,6,1,'2006-07-04 00:00:00.000000','2006-08-01 00:00:00.000000','2006-07-11 00:00:00.000000',15.3),(10930,201,4,3,'2006-07-05 00:00:00.000000','2006-08-16 00:00:00.000000','2006-07-17 00:00:00.000000',7.2),(10931,199,4,2,'2006-07-05 00:00:00.000000','2006-07-19 00:00:00.000000','2006-07-18 00:00:00.000000',6.3),(10932,102,9,1,'2006-07-05 00:00:00.000000','2006-08-02 00:00:00.000000','2006-07-23 00:00:00.000000',60.75),(10933,165,6,3,'2006-07-05 00:00:00.000000','2006-08-02 00:00:00.000000','2006-07-15 00:00:00.000000',24.3),(10934,172,3,3,'2006-07-08 00:00:00.000000','2006-08-05 00:00:00.000000','2006-07-11 00:00:00.000000',14.4),(10935,227,4,3,'2006-07-08 00:00:00.000000','2006-08-05 00:00:00.000000','2006-07-17 00:00:00.000000',21.6),(10936,105,3,2,'2006-07-08 00:00:00.000000','2006-08-05 00:00:00.000000','2006-07-17 00:00:00.000000',15.3),(10937,10,7,3,'2006-07-09 00:00:00.000000','2006-07-23 00:00:00.000000','2006-07-12 00:00:00.000000',14.4),(10938,198,3,2,'2006-07-09 00:00:00.000000','2006-08-06 00:00:00.000000','2006-07-15 00:00:00.000000',14.4),(10939,102,3,2,'2006-07-09 00:00:00.000000','2006-08-06 00:00:00.000000','2006-07-12 00:00:00.000000',34.2),(10940,102,9,3,'2006-07-10 00:00:00.000000','2006-08-07 00:00:00.000000','2006-07-22 00:00:00.000000',9),(10941,201,7,2,'2006-07-10 00:00:00.000000','2006-08-07 00:00:00.000000','2006-07-19 00:00:00.000000',180.45),(10942,199,9,3,'2006-07-10 00:00:00.000000','2006-08-07 00:00:00.000000','2006-07-17 00:00:00.000000',8.1),(10943,102,4,2,'2006-07-10 00:00:00.000000','2006-08-07 00:00:00.000000','2006-07-18 00:00:00.000000',0.9),(10944,102,6,3,'2006-07-11 00:00:00.000000','2006-07-25 00:00:00.000000','2006-07-12 00:00:00.000000',23.85),(10945,102,4,1,'2006-07-11 00:00:00.000000','2006-08-08 00:00:00.000000','2006-07-17 00:00:00.000000',4.5),(10946,223,1,2,'2006-07-11 00:00:00.000000','2006-08-08 00:00:00.000000','2006-07-18 00:00:00.000000',12.15),(10947,102,3,2,'2006-07-12 00:00:00.000000','2006-08-09 00:00:00.000000','2006-07-15 00:00:00.000000',1.35),(10948,105,3,3,'2006-07-12 00:00:00.000000','2006-08-09 00:00:00.000000','2006-07-18 00:00:00.000000',10.35),(10949,102,3,3,'2006-07-12 00:00:00.000000','2006-08-09 00:00:00.000000','2006-07-16 00:00:00.000000',33.3),(10950,102,1,2,'2006-07-15 00:00:00.000000','2006-08-12 00:00:00.000000','2006-07-22 00:00:00.000000',0.9),(10951,199,9,2,'2006-07-15 00:00:00.000000','2006-08-26 00:00:00.000000','2006-08-06 00:00:00.000000',13.95),(10952,9,1,1,'2006-07-15 00:00:00.000000','2006-08-26 00:00:00.000000','2006-07-23 00:00:00.000000',18),(10953,9,9,2,'2006-07-15 00:00:00.000000','2006-07-29 00:00:00.000000','2006-07-24 00:00:00.000000',10.8),(10954,172,6,1,'2006-07-16 00:00:00.000000','2006-08-27 00:00:00.000000','2006-07-19 00:00:00.000000',12.6),(10955,35,9,2,'2006-07-16 00:00:00.000000','2006-08-13 00:00:00.000000','2006-07-19 00:00:00.000000',1.35),(10956,102,6,2,'2006-07-16 00:00:00.000000','2006-08-27 00:00:00.000000','2006-07-19 00:00:00.000000',20.25),(10957,115,9,3,'2006-07-17 00:00:00.000000','2006-08-14 00:00:00.000000','2006-07-26 00:00:00.000000',47.25),(10958,188,7,2,'2006-07-17 00:00:00.000000','2006-08-14 00:00:00.000000','2006-07-26 00:00:00.000000',22.5),(10959,105,6,2,'2006-07-17 00:00:00.000000','2006-08-28 00:00:00.000000','2006-07-22 00:00:00.000000',2.25),(10960,115,3,1,'2006-07-18 00:00:00.000000','2006-08-01 00:00:00.000000','2006-08-07 00:00:00.000000',0.9),(10961,198,9,1,'2006-07-18 00:00:00.000000','2006-08-15 00:00:00.000000','2006-07-29 00:00:00.000000',46.8),(10962,198,9,2,'2006-07-18 00:00:00.000000','2006-08-15 00:00:00.000000','2006-07-22 00:00:00.000000',124.2),(10963,35,9,3,'2006-07-18 00:00:00.000000','2006-08-15 00:00:00.000000','2006-07-25 00:00:00.000000',1.35),(10964,201,3,2,'2006-07-19 00:00:00.000000','2006-08-16 00:00:00.000000','2006-07-23 00:00:00.000000',39.15),(10965,188,6,3,'2006-07-19 00:00:00.000000','2006-08-16 00:00:00.000000','2006-07-29 00:00:00.000000',64.8),(10966,10,4,1,'2006-07-19 00:00:00.000000','2006-08-16 00:00:00.000000','2006-08-07 00:00:00.000000',12.15),(10967,211,3,2,'2006-07-22 00:00:00.000000','2006-08-19 00:00:00.000000','2006-08-01 00:00:00.000000',27.9),(10968,22,1,3,'2006-07-22 00:00:00.000000','2006-08-19 00:00:00.000000','2006-07-31 00:00:00.000000',33.75),(10969,10,1,2,'2006-07-22 00:00:00.000000','2006-08-19 00:00:00.000000','2006-07-29 00:00:00.000000',0),(10970,102,9,1,'2006-07-23 00:00:00.000000','2006-08-06 00:00:00.000000','2006-08-23 00:00:00.000000',7.2),(10971,35,3,2,'2006-07-23 00:00:00.000000','2006-08-20 00:00:00.000000','2006-08-01 00:00:00.000000',54.9),(10972,172,4,2,'2006-07-23 00:00:00.000000','2006-08-20 00:00:00.000000','2006-07-25 00:00:00.000000',0),(10973,172,6,2,'2006-07-23 00:00:00.000000','2006-08-20 00:00:00.000000','2006-07-26 00:00:00.000000',6.75),(10974,201,3,3,'2006-07-24 00:00:00.000000','2006-08-07 00:00:00.000000','2006-08-02 00:00:00.000000',5.85),(10975,102,1,3,'2006-07-24 00:00:00.000000','2006-08-21 00:00:00.000000','2006-07-26 00:00:00.000000',14.4),(10976,115,1,1,'2006-07-24 00:00:00.000000','2006-09-04 00:00:00.000000','2006-08-02 00:00:00.000000',17.1),(10977,35,9,3,'2006-07-25 00:00:00.000000','2006-08-22 00:00:00.000000','2006-08-09 00:00:00.000000',93.6),(10978,102,9,2,'2006-07-25 00:00:00.000000','2006-08-22 00:00:00.000000','2006-08-22 00:00:00.000000',14.85),(10979,22,9,2,'2006-07-25 00:00:00.000000','2006-08-22 00:00:00.000000','2006-07-30 00:00:00.000000',158.85),(10980,35,4,1,'2006-07-26 00:00:00.000000','2006-09-06 00:00:00.000000','2006-08-16 00:00:00.000000',0.45),(10981,115,1,2,'2006-07-26 00:00:00.000000','2006-08-23 00:00:00.000000','2006-08-01 00:00:00.000000',86.85),(10982,102,3,1,'2006-07-26 00:00:00.000000','2006-08-23 00:00:00.000000','2006-08-07 00:00:00.000000',6.3),(10983,201,3,2,'2006-07-26 00:00:00.000000','2006-08-23 00:00:00.000000','2006-08-05 00:00:00.000000',296.1),(10984,201,1,3,'2006-07-29 00:00:00.000000','2006-08-26 00:00:00.000000','2006-08-02 00:00:00.000000',94.95),(10985,115,3,1,'2006-07-29 00:00:00.000000','2006-08-26 00:00:00.000000','2006-08-01 00:00:00.000000',41.4),(10986,188,9,2,'2006-07-29 00:00:00.000000','2006-08-26 00:00:00.000000','2006-08-20 00:00:00.000000',98.1),(10987,22,9,1,'2006-07-30 00:00:00.000000','2006-08-27 00:00:00.000000','2006-08-05 00:00:00.000000',83.25),(10988,199,3,2,'2006-07-30 00:00:00.000000','2006-08-27 00:00:00.000000','2006-08-09 00:00:00.000000',27.45),(10989,198,3,1,'2006-07-30 00:00:00.000000','2006-08-27 00:00:00.000000','2006-08-01 00:00:00.000000',15.75),(10990,22,3,3,'2006-07-31 00:00:00.000000','2006-09-11 00:00:00.000000','2006-08-06 00:00:00.000000',53.1),(10991,198,1,1,'2006-07-31 00:00:00.000000','2006-08-28 00:00:00.000000','2006-08-06 00:00:00.000000',17.55),(10992,211,1,3,'2006-07-31 00:00:00.000000','2006-08-28 00:00:00.000000','2006-08-02 00:00:00.000000',1.8),(10993,35,7,3,'2006-07-31 00:00:00.000000','2006-08-28 00:00:00.000000','2006-08-09 00:00:00.000000',4.05),(10994,223,3,3,'2006-08-01 00:00:00.000000','2006-08-15 00:00:00.000000','2006-08-08 00:00:00.000000',29.7),(10995,194,1,3,'2006-08-01 00:00:00.000000','2006-08-29 00:00:00.000000','2006-08-05 00:00:00.000000',20.7),(10996,198,4,2,'2006-08-01 00:00:00.000000','2006-08-29 00:00:00.000000','2006-08-09 00:00:00.000000',0.45),(10997,172,9,2,'2006-08-02 00:00:00.000000','2006-09-13 00:00:00.000000','2006-08-12 00:00:00.000000',33.3),(10998,227,9,2,'2006-08-02 00:00:00.000000','2006-08-16 00:00:00.000000','2006-08-16 00:00:00.000000',9),(10999,188,6,2,'2006-08-02 00:00:00.000000','2006-08-30 00:00:00.000000','2006-08-09 00:00:00.000000',43.2),(11000,199,3,3,'2006-08-05 00:00:00.000000','2006-09-02 00:00:00.000000','2006-08-13 00:00:00.000000',24.75),(11001,35,3,2,'2006-08-05 00:00:00.000000','2006-09-02 00:00:00.000000','2006-08-13 00:00:00.000000',88.65),(11002,201,4,1,'2006-08-05 00:00:00.000000','2006-09-02 00:00:00.000000','2006-08-15 00:00:00.000000',63.45),(11003,211,3,3,'2006-08-05 00:00:00.000000','2006-09-02 00:00:00.000000','2006-08-07 00:00:00.000000',6.75),(11004,102,3,1,'2006-08-06 00:00:00.000000','2006-09-03 00:00:00.000000','2006-08-19 00:00:00.000000',20.25),(11005,227,3,1,'2006-08-06 00:00:00.000000','2006-09-03 00:00:00.000000','2006-08-09 00:00:00.000000',0.45),(11006,105,3,2,'2006-08-06 10:00:00.000000','2006-09-03 00:00:00.000000','2006-08-14 00:00:00.000000',11.25),(11007,194,9,2,'2006-08-07 00:00:00.000000','2006-09-04 00:00:00.000000','2006-08-12 00:00:00.000000',90.9),(11008,22,7,3,'2006-08-07 00:00:00.000000','2006-09-04 00:00:00.000000',NULL,35.55),(11009,105,3,1,'2006-08-07 00:00:00.000000','2006-09-04 00:00:00.000000','2006-08-09 00:00:00.000000',26.55),(11010,199,3,2,'2006-08-08 00:00:00.000000','2006-09-05 00:00:00.000000','2006-08-20 00:00:00.000000',13.05),(11011,9,3,1,'2006-08-08 00:00:00.000000','2006-09-05 00:00:00.000000','2006-08-12 00:00:00.000000',0.45),(11012,35,1,3,'2006-08-08 00:00:00.000000','2006-08-22 00:00:00.000000','2006-08-16 00:00:00.000000',109.35),(11013,199,3,1,'2006-08-08 00:00:00.000000','2006-09-05 00:00:00.000000','2006-08-09 00:00:00.000000',14.85),(11014,172,3,3,'2006-08-09 00:00:00.000000','2006-09-06 00:00:00.000000','2006-08-14 00:00:00.000000',10.8),(11015,201,3,2,'2006-08-09 00:00:00.000000','2006-08-23 00:00:00.000000','2006-08-19 00:00:00.000000',2.25),(11016,9,9,2,'2006-08-09 00:00:00.000000','2006-09-06 00:00:00.000000','2006-08-12 00:00:00.000000',15.3),(11017,22,9,2,'2006-08-12 00:00:00.000000','2006-09-09 00:00:00.000000','2006-08-19 00:00:00.000000',339.3),(11018,172,4,2,'2006-08-12 00:00:00.000000','2006-09-09 00:00:00.000000','2006-08-15 00:00:00.000000',5.4),(11019,199,6,3,'2006-08-12 00:00:00.000000','2006-09-09 00:00:00.000000',NULL,1.35),(11020,188,3,2,'2006-08-13 00:00:00.000000','2006-09-10 00:00:00.000000','2006-08-15 00:00:00.000000',19.35),(11021,198,3,1,'2006-08-13 00:00:00.000000','2006-09-10 00:00:00.000000','2006-08-20 00:00:00.000000',133.65),(11022,115,9,2,'2006-08-13 00:00:00.000000','2006-09-10 00:00:00.000000','2006-09-02 00:00:00.000000',2.7),(11023,102,1,2,'2006-08-13 00:00:00.000000','2006-08-27 00:00:00.000000','2006-08-23 00:00:00.000000',55.8),(11024,22,4,1,'2006-08-14 00:00:00.000000','2006-09-11 00:00:00.000000','2006-08-19 00:00:00.000000',33.3),(11025,227,6,3,'2006-08-14 00:00:00.000000','2006-09-11 00:00:00.000000','2006-08-23 00:00:00.000000',13.05),(11026,35,4,1,'2006-08-14 00:00:00.000000','2006-09-11 00:00:00.000000','2006-08-27 00:00:00.000000',21.15),(11027,102,1,1,'2006-08-15 00:00:00.000000','2006-09-12 00:00:00.000000','2006-08-19 00:00:00.000000',23.85),(11028,167,3,1,'2006-08-15 00:00:00.000000','2006-09-12 00:00:00.000000','2006-08-21 00:00:00.000000',13.5),(11029,10,4,1,'2006-08-15 00:00:00.000000','2006-09-12 00:00:00.000000','2006-08-26 00:00:00.000000',21.6),(11030,201,7,2,'2006-08-16 00:00:00.000000','2006-09-13 00:00:00.000000','2006-08-26 00:00:00.000000',373.95),(11031,201,6,2,'2006-08-16 00:00:00.000000','2006-09-13 00:00:00.000000','2006-08-23 00:00:00.000000',102.15),(11032,227,3,3,'2006-08-16 00:00:00.000000','2006-09-13 00:00:00.000000','2006-08-22 00:00:00.000000',272.7),(11033,199,7,3,'2006-08-16 00:00:00.000000','2006-09-13 00:00:00.000000','2006-08-22 00:00:00.000000',38.25),(11034,188,9,1,'2006-08-19 00:00:00.000000','2006-09-30 00:00:00.000000','2006-08-26 00:00:00.000000',18),(11035,201,3,2,'2006-08-19 00:00:00.000000','2006-09-16 00:00:00.000000','2006-08-23 00:00:00.000000',0),(11036,15,9,3,'2006-08-19 00:00:00.000000','2006-09-16 00:00:00.000000','2006-08-21 00:00:00.000000',67.05),(11037,105,7,1,'2006-08-20 00:00:00.000000','2006-09-17 00:00:00.000000','2006-08-26 00:00:00.000000',1.35),(11038,201,1,2,'2006-08-20 00:00:00.000000','2006-09-17 00:00:00.000000','2006-08-29 00:00:00.000000',13.5),(11039,172,1,2,'2006-08-20 00:00:00.000000','2006-09-17 00:00:00.000000',NULL,29.25),(11040,105,4,3,'2006-08-21 00:00:00.000000','2006-09-18 00:00:00.000000',NULL,8.55),(11041,10,3,2,'2006-08-21 00:00:00.000000','2006-09-18 00:00:00.000000','2006-08-27 00:00:00.000000',21.6),(11042,10,3,1,'2006-08-21 00:00:00.000000','2006-09-04 00:00:00.000000','2006-08-30 00:00:00.000000',13.5),(11043,201,6,2,'2006-08-21 00:00:00.000000','2006-09-18 00:00:00.000000','2006-08-28 00:00:00.000000',4.05),(11044,227,4,1,'2006-08-22 00:00:00.000000','2006-09-19 00:00:00.000000','2006-08-30 00:00:00.000000',4.05),(11045,102,6,2,'2006-08-22 00:00:00.000000','2006-09-19 00:00:00.000000',NULL,31.95),(11046,227,9,2,'2006-08-22 00:00:00.000000','2006-09-19 00:00:00.000000','2006-08-23 00:00:00.000000',32.4),(11047,22,7,3,'2006-08-23 00:00:00.000000','2006-09-20 00:00:00.000000','2006-08-30 00:00:00.000000',21.15),(11048,102,7,3,'2006-08-23 00:00:00.000000','2006-09-20 00:00:00.000000','2006-08-29 00:00:00.000000',10.8),(11049,105,3,1,'2006-08-23 00:00:00.000000','2006-09-20 00:00:00.000000','2006-09-02 00:00:00.000000',3.6),(11050,35,9,2,'2006-08-26 00:00:00.000000','2006-09-23 00:00:00.000000','2006-09-03 00:00:00.000000',26.55),(11051,172,7,3,'2006-08-26 00:00:00.000000','2006-09-23 00:00:00.000000',NULL,1.35),(11052,115,3,1,'2006-08-26 00:00:00.000000','2006-09-23 00:00:00.000000','2006-08-30 00:00:00.000000',30.15),(11053,194,3,2,'2006-08-26 00:00:00.000000','2006-09-23 00:00:00.000000','2006-08-28 00:00:00.000000',23.85),(11054,10,9,1,'2006-08-27 00:00:00.000000','2006-09-24 00:00:00.000000',NULL,0),(11055,115,7,2,'2006-08-27 00:00:00.000000','2006-09-24 00:00:00.000000','2006-09-03 00:00:00.000000',54.45),(11056,22,9,2,'2006-08-27 00:00:00.000000','2006-09-10 00:00:00.000000','2006-08-30 00:00:00.000000',125.55),(11057,183,3,3,'2006-08-28 00:00:00.000000','2006-09-25 00:00:00.000000','2006-08-30 00:00:00.000000',1.8),(11058,102,9,3,'2006-08-28 00:00:00.000000','2006-09-25 00:00:00.000000',NULL,13.95),(11059,199,3,2,'2006-08-28 00:00:00.000000','2006-10-09 00:00:00.000000',NULL,38.7),(11060,35,3,2,'2006-08-29 00:00:00.000000','2006-09-26 00:00:00.000000','2006-09-02 00:00:00.000000',4.95),(11061,105,4,3,'2006-08-29 00:00:00.000000','2006-10-10 00:00:00.000000',NULL,6.3),(11062,199,4,2,'2006-08-29 00:00:00.000000','2006-09-26 00:00:00.000000',NULL,13.5),(11063,115,3,2,'2006-08-29 00:00:00.000000','2006-09-26 00:00:00.000000','2006-09-04 00:00:00.000000',36.9),(11064,201,1,1,'2006-08-30 00:00:00.000000','2006-09-27 00:00:00.000000','2006-09-02 00:00:00.000000',13.5),(11065,172,9,1,'2006-08-30 00:00:00.000000','2006-09-27 00:00:00.000000',NULL,5.85),(11066,227,7,2,'2006-08-30 00:00:00.000000','2006-09-27 00:00:00.000000','2006-09-02 00:00:00.000000',20.25),(11067,15,1,2,'2006-09-02 00:00:00.000000','2006-09-16 00:00:00.000000','2006-09-04 00:00:00.000000',3.6),(11068,198,9,2,'2006-09-02 00:00:00.000000','2006-09-30 00:00:00.000000',NULL,36.9),(11069,211,1,2,'2006-09-02 00:00:00.000000','2006-09-30 00:00:00.000000','2006-09-04 00:00:00.000000',7.2),(11070,172,3,1,'2006-09-03 00:00:00.000000','2006-10-01 00:00:00.000000',NULL,61.2),(11071,172,1,1,'2006-09-03 00:00:00.000000','2006-10-01 00:00:00.000000',NULL,0.45),(11072,22,4,2,'2006-09-03 00:00:00.000000','2006-10-01 00:00:00.000000',NULL,116.55),(11073,194,3,2,'2006-09-03 00:00:00.000000','2006-10-01 00:00:00.000000',NULL,11.25),(11074,201,7,2,'2006-09-04 00:00:00.000000','2006-10-02 00:00:00.000000',NULL,8.1),(11075,199,9,2,'2006-09-04 00:00:00.000000','2006-10-02 00:00:00.000000',NULL,2.7),(11076,102,4,2,'2006-09-04 00:00:00.000000','2006-10-02 00:00:00.000000',NULL,17.1),(11077,199,1,2,'2006-09-04 00:00:00.000000','2006-10-02 00:00:00.000000',NULL,4.05),(11078,210,9,2,'2006-10-06 00:00:00.000000','2006-11-05 00:00:00.000000',NULL,NULL),(11079,199,9,2,'2006-10-14 00:00:00.000000','2006-11-05 00:00:00.000000',NULL,50),(11080,35,8,3,'2020-01-20 18:44:06.000000','2020-06-12 00:00:00.000000','2020-02-12 00:00:00.000000',200.5);
/*!40000 ALTER TABLE `tblorders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblproducts`
--

DROP TABLE IF EXISTS `tblproducts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblproducts` (
  `ProductNumber` int NOT NULL AUTO_INCREMENT,
  `SupplierNumber` int DEFAULT NULL,
  `CategoryNumber` int DEFAULT NULL,
  `ProductName` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `NederlandseNaam` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `QuantityPerUnit` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `PricePerUnit` decimal(19,4) DEFAULT NULL,
  `Stock` smallint DEFAULT NULL,
  `TaxCode` int DEFAULT NULL,
  `OnOrder` smallint DEFAULT NULL,
  `Shop` smallint DEFAULT NULL,
  `Discontinued` tinyint(1) NOT NULL,
  PRIMARY KEY (`ProductNumber`),
  KEY `FK_tblProducts_tbltaxrate` (`TaxCode`),
  KEY `FK_tblProducts_tblCategory_idx` (`CategoryNumber`),
  KEY `FK_tblProducts_tblSupplier_idx` (`SupplierNumber`),
  CONSTRAINT `fk_tblproducts_tblcategories1` FOREIGN KEY (`CategoryNumber`) REFERENCES `tblcategories` (`CategoryNumber`),
  CONSTRAINT `fk_tblproducts_tblsuppliers` FOREIGN KEY (`SupplierNumber`) REFERENCES `tblsuppliers` (`SupplierId`),
  CONSTRAINT `fk_tblproducts_tbltaxrate1` FOREIGN KEY (`TaxCode`) REFERENCES `tbltaxrate` (`TaxCode`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblproducts`
--

LOCK TABLES `tblproducts` WRITE;
/*!40000 ALTER TABLE `tblproducts` DISABLE KEYS */;
INSERT INTO `tblproducts` VALUES (1,1,1,'Chai','Dharamsala thee','10 dozen x 20 zakjes',17.8400,39,2,0,10,0),(2,1,1,'Chang','Tibetaans gerstebier','24 flesjes à  340 g',18.8300,17,2,40,25,0),(3,1,2,'Aniseed Syrup','Dropsiroop','12 flessen à  550 ml',9.9100,13,2,0,25,0),(4,2,2,'Chef Anton\'s Cajun Seasoning','Chef Anton\'s cajun-kruiden','48 potten à  170 g',21.8100,53,2,0,0,0),(5,2,2,'Chef Anton\'s Gumbo Mix','Chef Anton\'s okramix','36 dozen',21.1700,0,2,0,0,1),(6,3,2,'Grandma\'s Boysenberry Spread','Grandma\'s boysenberry-jam','12 potten à  230 g',24.7800,120,2,0,25,0),(7,3,7,'Uncle Bob\'s Organic Dried Pears','Uncle Bob\'s macrobiot. gedroogde peren','12 pakken à  455 g',29.7700,15,2,0,10,0),(8,3,2,'Northwoods Cranberry Sauce','Northwoods veenbessensaus','12 flessen à  340 g',39.6100,6,2,0,0,0),(9,4,6,'Mishi Kobe Niku','Mishi Kobe rundvlees','18 pakken à  500 g',96.1800,29,2,0,0,1),(10,4,8,'Ikura','Kuit','12 potten à  200 ml',30.7300,31,2,0,0,0),(11,5,4,'Queso Cabrales','Cabrales kaas','1,5 kg/verpakking',20.8200,22,2,30,30,0),(12,5,4,'Queso Manchego La Pastora','Manchego La Pastora kaas','10 pakken à  500 g',37.6700,86,2,0,0,0),(13,6,8,'Konbu','Kelp-zeewier','2 kg/verpakking',5.9400,24,2,0,5,0),(14,6,7,'Tofu','Tahoe','40 pakken à  100 g',23.0500,35,2,0,0,0),(15,6,2,'Genen Shouyu','Natriumarme sojasaus','24 flesjes à  250 ml',15.3600,39,2,0,5,0),(16,7,3,'Pavlova','Pavlova schuimgebak','32 dozen à  500 g',17.3000,29,2,0,10,0),(17,7,6,'Alice Mutton','Alice Springs lamsvlees','20 blikken à  1 kg',38.6700,0,2,0,0,1),(18,7,8,'Carnarvon Tigers','Carnarvon garnalen','16 kg/verpakking',61.9700,42,2,0,0,0),(19,8,3,'Teatime Chocolate Biscuits','Teatime chocoladebiscuits','10 dozen x 12 stuks',9.1200,25,2,0,5,0),(20,8,3,'Sir Rodney\'s Marmalade','Sir Rodney\'s marmelade','30 kadoverpakkingen',80.3100,40,2,0,0,0),(21,8,3,'Sir Rodney\'s Scones','Sir Rodney\'s cake','24 dozen x 4 stuks',9.9100,3,2,40,5,0),(22,9,5,'Gustaf\'s Knäckebröd','Gustaf\'s Rye knäckebröd','24 pakken à  500 g',20.8200,104,2,0,25,0),(23,9,5,'Tunnbröd','Toast','12 pakken à  250 g',8.9200,61,2,0,25,0),(24,10,1,'Guaraná Fantástica','Guaraná Fantástica frisdrank','12 blikken à  355 ml',4.4600,20,2,0,0,1),(25,11,3,'NuNuCa NuÃ-Nougat-Creme','NuNuCa noten/noga-pasta','20 potten à  450 g',13.8800,76,2,0,30,0),(26,11,3,'Gumbär Gummibärchen','Gumbär Gummibärchen','100 zakken à  250 g',30.9600,15,2,0,0,0),(27,11,3,'Schoggi Schokolade','Schoggi chocolade','100 stuks à  100 g',43.5300,49,2,0,30,0),(28,12,7,'Rössle Sauerkraut','Rössle zuurkool','25 blikken à  825 g',45.2100,26,2,0,0,1),(29,12,6,'Thüringer Rostbratwurst','Thüringer braadworst','50 zakk. x 30 worst',122.7400,0,2,0,0,1),(30,13,8,'Nord-Ost Matjeshering','Nord-Ost maatjesharing','10 glazen à  200 g',25.6700,10,2,0,15,0),(31,14,4,'Gorgonzola Telino','Gorgonzola Telino','12 pakken à  100 g',12.4700,0,2,70,20,0),(32,14,4,'Mascarpone Fabioli','Mascarpone Fabioli','24 pakken à  200 g',31.7400,9,2,40,25,0),(33,15,4,'Geitost','Geitekaas','500 g',2.4700,112,2,0,20,0),(34,16,1,'Sasquatch Ale','Sasquatch licht bier','24 flessen à  340 g',13.8200,111,2,0,15,0),(35,16,1,'Steeleye Stout','Steeleye donker bier','24 flessen à  340 g',17.8400,20,2,0,15,0),(36,7,8,'Inlagd Sill','Pekelharing','24 glazen à  250 g',18.9900,112,2,0,20,0),(37,7,8,'Gravad lax','Gravad zalm','12 pakken à  500 g',25.7900,12,2,50,25,0),(38,8,1,'Côte de Blaye','Côte de Blaye (Rode Bordeaux)','12 flessen à  75 cl',261.2700,17,2,0,15,0),(39,8,1,'Chartreuse verte','Chartreuse verte (likeur)','750 cc per fles',17.8400,69,2,0,5,0),(40,9,8,'Boston Crab Meat','Boston krab','24 blikjes à  114 g',18.4500,123,2,0,30,0),(41,9,8,'Jack\'s New England Clam Chowder','Jack\'s New England schelpdierensoep','12 blikken à  340 g',9.5700,85,2,0,10,0),(42,10,5,'Singaporean Hokkien Fried Mee','Singaporese mie','32 pakken à  1 kg',13.8200,26,2,0,0,1),(43,10,1,'Ipoh Coffee','Maleisische koffie','16 blikken à  500 g',45.6400,17,2,0,25,0),(44,10,2,'Gula Malacca','Donkerbruine suiker uit Malakka','20 zakken à  2 kg',19.2100,27,2,0,15,0),(45,7,8,'Røgede sild','Gerookte haring','1 kg/verpakking',9.4200,5,2,70,15,0),(46,7,8,'Spegesild','Gezouten haring','4 glazen à  450 g',11.8900,95,2,0,0,0),(47,11,3,'Zaanse koeken','Zaanse koeken','10 dozen à  114 g',9.4200,36,2,0,0,0),(48,11,3,'Chocolade','Hollandse chocolade','10 repen',12.6400,15,2,70,25,0),(49,13,3,'Maxilaku','Drop','24 zakjes à  50 g',19.8500,10,2,0,15,0),(50,13,3,'Valkoinen suklaa','Witte chocolade','12 repen à  100 g',16.1100,65,2,0,30,0),(51,4,7,'Manjimup Dried Apples','Manjimup gedroogde appels','50 pakken à  300 g',52.5400,20,2,0,10,0),(52,4,5,'Filo Mix','Mix voor Grieks bladerdeeg','16 dozen à  2 kg',6.4100,38,2,0,25,0),(53,4,6,'Perth Pasties','Perth vleespasteitjes','48 stuks',32.3600,0,2,0,0,1),(54,15,6,'Tourtière','Varkenvleespastei','16 stuks',7.3800,21,2,0,10,0),(55,15,6,'Pâté chinois','Shepard\'s Pie','24 dozen x 2 stuks',23.7800,115,2,0,20,0),(56,6,5,'Gnocchi di nonna Alice','Gramma Alice\'s knoedels','24 pakken à  250 g',37.9800,21,2,10,30,0),(57,6,5,'Ravioli Angelo','Angelo ravioli','24 pakken à  250 g',19.3700,36,2,0,20,0),(58,7,8,'Escargots de Bourgogne','Slakken uit Bourgondië','24 stuks',13.8400,62,2,0,20,0),(59,8,4,'Raclette Courdavault','Courdavault Raclette kaas','5 kg/verpakking',54.6600,79,2,0,0,0),(60,8,4,'Camembert Pierrot','Pierrot camembert','15 kazen à  300 g',33.7100,19,2,0,0,0),(61,9,2,'Sirop d\'érable','Ahornstroop','24 flessen à  500 ml',28.2500,113,2,0,25,0),(62,9,3,'Tarte au sucre','Suikertaart','48 stuks',48.8800,17,2,0,0,0),(63,7,2,'Vegie-spread','Plantaardige sandwich spread','15 glazen à  625 g',43.0100,24,2,0,5,0),(64,12,5,'Wimmers gute Semmelknödel','Wimmer\'s overheerlijke broodknoedels','20 zakken x 4 stuks',32.9800,22,2,80,30,0),(65,2,2,'Louisiana Fiery Hot Pepper Sauce','Louisiana scherpe pepersaus','32 flessen à  230 g',20.8700,76,2,0,0,0),(66,2,2,'Louisiana Hot Spiced Okra','Louisiana hete, gekruide okra','24 flessen à  230 g',16.8500,4,2,0,20,0),(67,16,1,'Laughing Lumberjack Lager','Laughing Lumberjack lagerbier','24 flessen à  340 g',13.8200,52,2,0,10,0),(68,8,3,'Scottish Longbreads','Schotse longbreads','10 dozen x 8 stuks',12.3900,6,2,10,15,0),(69,15,4,'Gudbrandsdalsost','Gudbrandsdals kaas','10 kg/verpakking',35.6700,26,2,0,15,0),(70,7,1,'Outback Lager','Australisch Outback lagerbier','24 flessen à  355 ml',14.8600,15,2,10,30,0),(71,15,4,'Fløtemysost','Fløtemys roomkaas','10 pakken à  500 g',21.3800,26,2,0,0,0),(72,14,4,'Mozzarella di Giovanni','Giovanni\'s mozzarella','24 pakken à  200 g',34.5000,14,2,0,0,0),(73,7,8,'Röd Kaviar','Rode kaviaar','24 flessen à  150 g',14.8700,101,2,0,5,0),(74,4,7,'Longlife tofu','Bewaar tahoe','5 kg/verpakking',9.5700,4,2,20,5,0),(75,12,1,'Rhönbräu Klosterbier','Rhönbräu bier','24 flessen à  0,5 l',7.4700,125,2,0,25,0),(76,13,1,'Lakkalikööri','Cloudberry likeur','500 ml',17.8400,57,2,0,20,0),(77,12,2,'Original Frankfurter grüne SoÃe','Originele Frankfurter groene saus','12 dozen',12.8900,32,2,0,15,0);
/*!40000 ALTER TABLE `tblproducts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblshippers`
--

DROP TABLE IF EXISTS `tblshippers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblshippers` (
  `ShipperId` smallint NOT NULL AUTO_INCREMENT,
  `Company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Phone` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`ShipperId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblshippers`
--

LOCK TABLES `tblshippers` WRITE;
/*!40000 ALTER TABLE `tblshippers` DISABLE KEYS */;
INSERT INTO `tblshippers` VALUES (1,'Speedy Express','02 512 63 85'),(2,'United Package','016 20 66 23'),(3,'Federal Shipping','09 201 55 75');
/*!40000 ALTER TABLE `tblshippers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblsuppliers`
--

DROP TABLE IF EXISTS `tblsuppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblsuppliers` (
  `SupplierId` int NOT NULL AUTO_INCREMENT,
  `Company` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `City` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Zipcode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Country` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `URL` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`SupplierId`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsuppliers`
--

LOCK TABLES `tblsuppliers` WRITE;
/*!40000 ALTER TABLE `tblsuppliers` DISABLE KEYS */;
INSERT INTO `tblsuppliers` VALUES (1,'Exotic Liquids','49 Gilbert ST.','Londen','EC14SD','Verenigd Koninkrijk',NULL),(2,'NEW Orleans Cajun Delights','P,O, Box 78934','New Orleans','70117','Verenigde Staten',NULL),(3,'Grandma Kelly\'s Homestead','707 Oxford Rd,','Ann Arbor','48104','Verenigde Staten',NULL),(4,'Tokyo Traders','9-8 Sekimai','Tokyo','100','Japan',NULL),(5,'Cooperative de Queos \"Las Cabras\"','Calle del Rosal 4','Oviedo','33007','Spanje',NULL),(6,'Mayumi\'s','92 Setsuko','Osaka','545','Japan',NULL),(7,'Pavlova, Ltd','74 Rose St,','Melbourne','3058','Australië',NULL),(8,'Speciality Biscuits, Ltd','29 King\'s Way','Manchester','M14 GSD','Verenigd Koninkrijk',NULL),(9,'PB Knäckebröd AB','Kaloadagatan 13','Göteborg','S-345 67','Zweden',NULL),(10,'Refrescos Americanas LTDA','Av, das Americanas 12890','São Paulo','5442','Brazilië',NULL),(11,'Heli Susswaren GmbH | Co KG','Tiergartenstrasse 5','Berlijn','10795','Duitsland',NULL),(12,'Plusspar Lebensmittelgrossmärkte AG','Bogenallee 51','Frankfurt','60439','Duitsland',NULL),(13,'Nord-Ost-Fisch Handelsgesellschaft mbH','Frahmredder 112a','Cuxhaven','27478','Duitsland',NULL),(14,'Formaggi Fortini s.r.l.','Viale Dante, 75','Ravenna','48100','Italië',NULL),(15,'Norske Meierier','Harlevegen 5','Sandvika','1320','Noorwegen',NULL),(16,'Bigfoot Breweries','3400 - 8th Avenue','Bend','97101','Verenigde Staten',NULL);
/*!40000 ALTER TABLE `tblsuppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltaxrate`
--

DROP TABLE IF EXISTS `tbltaxrate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbltaxrate` (
  `TaxCode` int NOT NULL AUTO_INCREMENT,
  `TaxPercentage` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`TaxCode`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltaxrate`
--

LOCK TABLES `tbltaxrate` WRITE;
/*!40000 ALTER TABLE `tbltaxrate` DISABLE KEYS */;
INSERT INTO `tbltaxrate` VALUES (1,0.00),(2,0.06),(3,0.12),(4,0.21);
/*!40000 ALTER TABLE `tbltaxrate` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-20 10:19:34
