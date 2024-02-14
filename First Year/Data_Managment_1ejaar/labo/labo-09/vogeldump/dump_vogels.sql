-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: vogelsdb
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
-- Temporary view structure for view `aantal_vogels_per_bedreiging`
--

DROP TABLE IF EXISTS `aantal_vogels_per_bedreiging`;
/*!50001 DROP VIEW IF EXISTS `aantal_vogels_per_bedreiging`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `aantal_vogels_per_bedreiging` AS SELECT 
 1 AS `bedreiging`,
 1 AS `aantal`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `bedreigde_aantallen_per_familie`
--

DROP TABLE IF EXISTS `bedreigde_aantallen_per_familie`;
/*!50001 DROP VIEW IF EXISTS `bedreigde_aantallen_per_familie`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `bedreigde_aantallen_per_familie` AS SELECT 
 1 AS `bedreiging`,
 1 AS `familie`,
 1 AS `aantal`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `bedreigingsoverzicht`
--

DROP TABLE IF EXISTS `bedreigingsoverzicht`;
/*!50001 DROP VIEW IF EXISTS `bedreigingsoverzicht`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `bedreigingsoverzicht` AS SELECT 
 1 AS `bedreiging`,
 1 AS `familie`,
 1 AS `vogelnaam`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `bird`
--

DROP TABLE IF EXISTS `bird`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bird` (
  `idbird` int NOT NULL,
  `iucn_id` int DEFAULT '4',
  `commonname` varchar(255) DEFAULT NULL,
  `scientificname` varchar(255) DEFAULT NULL,
  `idfamily` int DEFAULT NULL,
  `idredcode` int DEFAULT NULL,
  PRIMARY KEY (`idbird`),
  UNIQUE KEY `iucn_id_UNIQUE` (`iucn_id`),
  UNIQUE KEY `commonname_UNIQUE` (`commonname`),
  KEY `FK_bird_family_idx` (`idfamily`),
  KEY `FK_bird_redcode_idx` (`idredcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bird`
--

LOCK TABLES `bird` WRITE;
/*!40000 ALTER TABLE `bird` DISABLE KEYS */;
INSERT INTO `bird` VALUES (1,22714679,'River Warbler','Locustella fluviatilis',1,1),(2,22681114,'Middle Spotted Woodpecker','Dendrocoptes medius',2,1),(3,22680186,'Mallard','Anas platyrhynchos',3,1),(4,22715284,'Radde\'s Warbler','Phylloscopus schwarzi',4,1),(5,22693363,'Red Knot','Calidris canutus',5,2),(6,22694136,'Black-winged Pratincole','Glareola nordmanni',6,2),(7,22680373,'Ferruginous Duck','Aythya nyroca',3,2),(8,22694308,'Mew Gull','Larus canus',7,1),(9,22696792,'Great Cormorant','Phalacrocorax carbo',8,1),(10,103888106,'Common Blackbird','Turdus merula',9,1),(11,22694373,'Lesser Black-backed Gull','Larus fuscus',7,1),(12,22680370,'Ring-necked Duck','Aythya collaris',3,1),(13,22716776,'Bearded Reedling','Panurus biarmicus',10,1),(14,22709691,'Thrush Nightingale','Luscinia luscinia',11,1),(15,22714714,'Paddyfield Warbler','Acrocephalus agricola',12,1),(16,22718567,'Eurasian Rock Pipit','Anthus petrosus',13,1),(17,22710325,'Desert Wheatear','Oenanthe deserti',11,1),(18,102998555,'Eurasian Skylark','Alauda arvensis',14,1),(19,22696357,'Lesser Kestrel','Falco naumanni',15,1),(20,22717383,'Crested Lark','Galerida cristata',14,1),(21,22698209,'Sooty Shearwater','Ardenna grisea',16,2),(22,22714684,'Savi\'s Warbler','Locustella luscinioides',1,1),(23,22695028,'Black-winged Kite','Elanus caeruleus',17,1),(24,22693185,'Slender-billed Curlew','Numenius tenuirostrisÔÇá?',5,3),(25,22693494,'Red Phalarope','Phalaropus fulicarius',5,1),(26,22694656,'Little Tern','Sternula albifrons',18,1),(27,22695499,'Levant Sparrowhawk','Accipiter brevipes',17,1),(28,22692980,'Pallas\'s Sandgrouse','Syrrhaptes paradoxus',19,1),(29,22696060,'Golden Eagle','Aquila chrysaetos',17,1),(30,22693862,'Greater Sand Plover','Charadrius leschenaultii',20,1),(31,22709707,'Bluethroat','Luscinia svecica',11,1),(32,22694629,'Arctic Tern','Sterna paradisaea',18,1),(33,22693855,'Lesser Sand Plover','Charadrius mongolus',20,1),(34,22679935,'Canada Goose','Branta canadensis',3,1),(35,22693770,'Little Ringed Plover','Charadrius dubius',20,1),(36,22694420,'Black-headed Gull','Chroicocephalus ridibundus',7,1),(37,22705983,'Rook','Corvus frugilegus',21,1),(38,103773898,'Northern Wheatear','Oenanthe oenanthe',11,1),(39,22697360,'Greater Flamingo','Phoenicopterus roseus',22,1),(40,22679872,'Pink-footed Goose','Anser brachyrhynchus',3,1),(41,22695973,'Rough-legged Buzzard','Buteo lagopus',17,1),(42,22734972,'Black Kite','Milvus migrans',17,1),(43,22693211,'Common Redshank','Tringa totanus',5,1),(44,22694524,'Caspian Tern','Hydroprogne caspia',18,1),(45,103727048,'Eurasian Magpie','Pica pica',21,1),(46,22680409,'King Eider','Somateria spectabilis',3,1),(47,22690419,'European Turtle Dove','Streptopelia turtur',23,4),(48,22696574,'Pied-billed Grebe','Podilymbus podiceps',24,1),(49,22680398,'Greater Scaup','Aythya marila',3,1),(50,22689194,'Eurasian Pygmy Owl','Glaucidium passerinum',25,1),(51,22680024,'Common Shelduck','Tadorna tadorna',3,1),(52,22679460,'Willow Ptarmigan','Lagopus lagopus',26,1),(53,103822349,'Western Yellow Wagtail','Motacilla flava',13,1),(54,22696092,'Booted Eagle','Hieraaetus pennatus',17,1),(55,22705001,'Red-backed Shrike','Lanius collurio',27,1),(56,22680492,'Common Merganser','Mergus merganser',3,1),(57,22692913,'Eurasian Coot','Fulica atra',28,1),(58,22693150,'Black-tailed Godwit','Limosa limosa',5,2),(59,22696545,'Little Grebe','Tachybaptus ruficollis',24,1),(60,22680391,'Tufted Duck','Aythya fuligula',3,1),(61,22679954,'Red-breasted Goose','Branta ruficollis',3,4),(62,103874024,'Subalpine Warbler','Sylvia cantillans',29,1),(63,22697842,'Common Loon','Gavia immer',30,1),(64,22693158,'Bar-tailed Godwit','Limosa lapponica',5,2),(65,22714722,'Eurasian Reed Warbler','Acrocephalus scirpaceus',12,1),(66,22693490,'Red-necked Phalarope','Phalaropus lobatus',5,1),(67,22693740,'American Golden Plover','Pluvialis dominica',20,1),(68,22680107,'Mandarin Duck','Aix galericulata',3,1),(69,22689362,'Boreal Owl','Aegolius funereus',25,1),(70,103812643,'Red-rumped Swallow','Cecropis daurica',31,1),(71,22696602,'Great Crested Grebe','Podiceps cristatus',24,1),(72,22729717,'Eurasian Teal','Anas crecca',3,1),(73,22689887,'European Nightjar','Caprimulgus europaeus',32,1),(74,103879357,'Scaly Thrush','Zoothera dauma',9,1),(75,22718546,'Tree Pipit','Anthus trivialis',13,1),(76,22718379,'Citrine Wagtail','Motacilla citreola',13,1),(77,22680003,'Ruddy Shelduck','Tadorna ferruginea',3,1),(78,22717411,'Woodlark','Lullula arborea',14,1),(79,22694473,'Ivory Gull','Pagophila eburnea',7,2),(80,22711249,'Short-toed Treecreeper','Certhia brachydactyla',33,1),(81,22727137,'Eurasian Three-toed Woodpecker','Picoides tridactylus',2,1),(82,22679814,'White-headed Duck','Oxyura leucocephala',3,5),(83,22693379,'Little Stint','Calidris minuta',5,1),(84,22693949,'Northern Lapwing','Vanellus vanellus',20,2),(85,22679881,'Greater White-fronted Goose','Anser albifrons',3,1),(86,22681124,'Great Spotted Woodpecker','Dendrocopos major',2,1),(87,22708156,'White-throated Dipper','Cinclus cinclus',34,1),(88,22680358,'Common Pochard','Aythya ferina',3,4),(89,22696894,'European Shag','Phalacrocorax aristotelis',8,1),(90,62120190,'Common Moorhen','Gallinula chloropus',28,1),(91,22694601,'Roseate Tern','Sterna dougallii',18,1),(92,22712252,'Barn Swallow','Hirundo rustica',31,1),(93,103727252,'Spotted Nutcracker','Nucifraga caryocatactes',21,1),(94,22693369,'Sanderling','Calidris alba',5,1),(95,22727124,'White-backed Woodpecker','Dendrocopos leucotos',2,1),(96,22717434,'Horned Lark','Eremophila alpestris',14,1),(97,22716910,'Common Whitethroat','Sylvia communis',29,1),(98,22718617,'Alpine Accentor','Prunella collaris',35,1),(99,22694841,'Common Murre','Uria aalge',36,1),(100,22714696,'Aquatic Warbler','Acrocephalus paludicola',12,4),(101,22724879,'Common Scoter','Melanitta nigra',3,1),(102,22680441,'Surf Scoter','Melanitta perspicillata',3,1),(103,22693216,'Marsh Sandpiper','Tringa stagnatilis',5,1),(104,45354964,'Peregrine Falcon','Falco peregrinus',15,1),(105,22680427,'Long-tailed Duck','Clangula hyemalis',3,4),(106,22693247,'Wood Sandpiper','Tringa glareola',5,1),(107,22681076,'Lesser Spotted Woodpecker','Dryobates minor',2,1),(108,103815961,'Sand Martin','Riparia riparia',31,1),(109,103883277,'Eurasian Wren','Troglodytes troglodytes',37,1),(110,22709315,'Collared Flycatcher','Ficedula albicollis',11,1),(111,22718651,'Dunnock','Prunella modularis',35,1),(112,22697043,'Great Egret','Ardea alba',38,1),(113,22680348,'Red-crested Pochard','Netta rufina',3,1),(114,103692938,'Eurasian Golden Oriole','Oriolus oriolus',39,1),(115,22727969,'Black-winged Stilt','Himantopus himantopus',40,1),(116,22735002,'Common Firecrest','Regulus ignicapilla',41,1),(117,22697599,'Dalmatian Pelican','Pelecanus crispus',42,2),(118,22694127,'Collared Pratincole','Glareola pratincola',6,1),(119,22695683,'Northern Goshawk','Accipiter gentilis',17,1),(120,22694927,'Atlantic Puffin','Fratercula arctica',36,4),(121,22725469,'Tawny Owl','Strix aluco',25,1),(122,22679946,'Brant Goose','Branta bernicla',3,1),(123,22694989,'European Honey Buzzard','Pernis apivorus',17,1),(124,22683756,'European Bee-eater','Merops apiaster',43,1),(125,22688643,'Eurasian Scops Owl','Otus scops',25,1),(126,22689531,'Short-eared Owl','Asio flammeus',25,1),(127,22711703,'Willow Tit','Poecile montanus',44,1),(128,22716959,'Sardinian Warbler','Sylvia melanocephala',29,1),(129,22709308,'European Pied Flycatcher','Ficedula hypoleuca',11,1),(130,22679494,'Hazel Grouse','Tetrastes bonasia',26,1),(131,22686800,'Common Swift','Apus apus',45,1),(132,22695174,'Bearded Vulture','Gypaetus barbatus',17,2),(133,103821389,'Richard\'s Pipit','Anthus richardi',13,1),(134,22727487,'Kentish Plover','Charadrius alexandrinus',20,1),(135,22735990,'Great Tit','Parus major',44,1),(136,22698477,'European Storm Petrel','Hydrobates pelagicus',46,1),(137,22693447,'Buff-breasted Sandpiper','Calidris subruficollis',5,2),(138,22727811,'Eurasian Collared Dove','Streptopelia decaocto',23,1),(139,22718560,'Red-throated Pipit','Anthus cervinus',13,1),(140,22696027,'Greater Spotted Eagle','Clanga clanga',17,4),(141,22695344,'Western Marsh Harrier','Circus aeruginosus',17,1),(142,22715264,'Dusky Warbler','Phylloscopus fuscatus',4,1),(143,22694324,'Great Black-backed Gull','Larus marinus',7,1),(144,22735965,'Coal Tit','Periparus ater',44,1),(145,22693427,'Dunlin','Calidris alpina',5,1),(146,22694428,'Slender-billed Gull','Chroicocephalus genei',7,1),(147,22696460,'Eurasian Hobby','Falco subbuteo',15,1),(148,22680229,'Blue-winged Teal','Spatula discors',3,1),(149,22710184,'European Stonechat','Saxicola (torquatus) rubicola',11,1),(150,22693712,'Pied Avocet','Recurvirostra avosetta',40,1),(151,22718553,'Pechora Pipit','Anthus gustavi',13,1),(152,22694251,'Long-tailed Jaeger','Stercorarius longicaudus',47,1),(153,22735985,'Azure Tit','Cyanistes cyanus',44,1),(154,62030608,'European Herring Gull','Larus argentatus',7,1),(155,22718550,'Olive-backed Pipit','Anthus hodgsoni',13,1),(156,22693133,'Jack Snipe','Lymnocryptes minimus',5,1),(157,22694623,'Common Tern','Sterna hirundo',18,1),(158,22680405,'Common Eider','Somateria mollissima',3,2),(159,22696442,'Eleonora\'s Falcon','Falco eleonorae',15,1),(160,22715255,'Western Bonelli\'s Warbler','Phylloscopus bonelli',4,1),(161,22710156,'Whinchat','Saxicola rubetra',11,1),(162,22726503,'Grey-headed Woodpecker','Picus canus',2,1),(163,22714916,'Icterine Warbler','Hippolais icterina',12,1),(164,22729514,'Hume\'s Leaf Warbler','Phylloscopus humei',4,1),(165,22680485,'Red-breasted Merganser','Mergus serrator',3,1),(166,22697834,'Black-throated Loon','Gavia arctica',30,1),(167,22691900,'Great Bustard','Otis tarda',48,4),(168,22681382,'Black Woodpecker','Dryocopus martius',2,1),(169,22709696,'Common Nightingale','Luscinia megarhynchos',11,1),(170,22693220,'Common Greenshank','Tringa nebularia',5,1),(171,22705921,'Alpine Chough','Pyrrhocorax graculus',21,1),(172,22734997,'Goldcrest','Regulus regulus',41,1),(173,22697691,'White Stork','Ciconia ciconia',49,1),(174,22718348,'White Wagtail','Motacilla alba',13,1),(175,22693759,'Common Ringed Plover','Charadrius hiaticula',20,1),(176,22693190,'Eurasian Curlew','Numenius arquata',5,2),(177,22735060,'Eurasian Treecreeper','Certhia familiaris',33,1),(178,22715310,'Yellow-browed Warbler','Phylloscopus inornatus',4,1),(179,22696048,'Eastern Imperial Eagle','Aquila heliaca',17,4),(180,22696599,'Red-necked Grebe','Podiceps grisegena',24,1),(181,22697669,'Black Stork','Ciconia nigra',49,1),(182,22689118,'Great Grey Owl','Strix nebulosa',25,1),(183,22680157,'Eurasian Wigeon','Mareca penelope',3,1),(184,22697847,'Yellow-billed Loon','Gavia adamsii',30,2),(185,103845399,'Greenish Warbler','Phylloscopus trochiloides',4,1),(186,22714445,'Cetti\'s Warbler','Cettia cetti',50,1),(187,22728245,'Houbara Bustard','Chlamydotis undulata',48,4),(188,22693097,'Common Snipe','Gallinago gallinago',5,1),(189,22694479,'Sabine\'s Gull','Xema sabini',7,1),(190,22697829,'Red-throated Loon','Gavia stellata',30,1),(191,22695219,'Griffon Vulture','Gyps fulvus',17,1),(192,22680149,'Gadwall','Mareca strepera',3,1),(193,22718392,'Grey Wagtail','Motacilla cinerea',13,1),(194,22708822,'Song Thrush','Turdus philomelos',9,1),(195,22729533,'Iberian Grey Shrike','Lanius meridionalis',27,4),(196,22697866,'Northern Fulmar','Fulmarus glacialis',16,1),(197,22680301,'Northern Pintail','Anas acuta',3,1),(198,22679889,'Greylag Goose','Anser anser',3,1),(199,22693052,'Eurasian Woodcock','Scolopax rusticola',5,1),(200,103843725,'Common Chiffchaff','Phylloscopus collybita',4,1),(201,22692667,'Baillon\'s Crake','Zapornia pusilla',28,1),(202,132438298,'Leach\'s Storm Petrel','Hydrobates leucorhous',46,4),(203,22681127,'Syrian Woodpecker','Dendrocopos syriacus',2,1),(204,103845882,'Arctic Warbler','Phylloscopus borealis',4,1),(205,22709675,'European Robin','Erithacus rubecula',11,1),(206,22693735,'Pacific Golden Plover','Pluvialis fulva',20,1),(207,22693727,'European Golden Plover','Pluvialis apricaria',20,1),(208,22693749,'Grey Plover','Pluvialis squatarola',20,1),(209,22694053,'Sociable Lapwing','Vanellus gregarius',20,3),(210,22694064,'White-tailed Lapwing','Vanellus leucurus',20,1),(211,22693359,'Great Knot','Calidris tenuirostris',5,5),(212,22693373,'Semipalmated Sandpiper','Calidris pusilla',5,2),(213,22693388,'Temminck\'s Stint','Calidris temminckii',5,1),(214,22693399,'White-rumped Sandpiper','Calidris fuscicollis',5,1),(215,22693404,'Baird\'s Sandpiper','Calidris bairdii',5,1),(216,22693408,'Pectoral Sandpiper','Calidris melanotos',5,1),(217,22693431,'Curlew Sandpiper','Calidris ferruginea',5,2),(218,22693420,'Purple Sandpiper','Calidris maritima',5,1),(219,22693464,'Broad-billed Sandpiper','Calidris falcinellus',5,1),(220,22693468,'Ruff','Calidris pugnax',5,1),(221,22693093,'Great Snipe','Gallinago media',5,2),(222,22693178,'Whimbrel','Numenius phaeopus',5,1),(223,22693207,'Spotted Redshank','Tringa erythropus',5,1),(224,22693231,'Greater Yellowlegs','Tringa melanoleuca',5,1),(225,22693235,'Lesser Yellowlegs','Tringa flavipes',5,1),(226,22693243,'Green Sandpiper','Tringa ochropus',5,1),(227,22693251,'Terek Sandpiper','Xenus cinereus',5,1),(228,22693264,'Common Sandpiper','Actitis hypoleucos',5,1),(229,22693277,'Spotted Sandpiper','Actitis macularius',5,1),(230,22693336,'Ruddy Turnstone','Arenaria interpres',5,1),(231,22694240,'Pomarine Jaeger','Stercorarius pomarinus',47,1),(232,22694245,'Parasitic Jaeger','Stercorarius parasiticus',47,1),(233,22694160,'Great Skua','Catharacta skua',47,1),(234,22694379,'Pallas\'s Gull','Ichthyaetus ichthyaetus',7,1),(235,22694443,'Mediterranean Gull','Ichthyaetus melanocephalus',7,1),(236,22694469,'Little Gull','Hydrocoloeus minutus',7,1),(237,22694317,'Ring-billed Gull','Larus delawarensis',7,1),(238,22735929,'Caspian Gull','Larus cachinnans',7,1),(239,22729877,'Iceland Gull','Larus glaucoides',7,1),(240,22694343,'Glaucous Gull','Larus hyperboreus',7,1),(241,22694476,'Ross\'s Gull','Rhodostethia rosea',7,1),(242,22694497,'Black-legged Kittiwake','Rissa tridactyla',7,4),(243,62026481,'Gull-billed Tern','Gelochelidon nilotica',18,1),(244,22694591,'Sandwich Tern','Thalasseus sandvicensis',18,1),(245,22694764,'Whiskered Tern','Chlidonias hybrida',18,1),(246,22694787,'Black Tern','Chlidonias niger',18,1),(247,22694782,'White-winged Tern','Chlidonias leucopterus',18,1),(248,22694847,'Thick-billed Murre','Uria lomvia',36,1),(249,22694852,'Razorbill','Alca torda',36,2),(250,22694861,'Black Guillemot','Cepphus grylle',36,1),(251,22694837,'Little Auk','Alle alle',36,1),(252,22690066,'Rock Pigeon, urban\"\"','Columba livia f. urbana',23,1),(253,22690088,'Stock Dove','Columba oenas',23,1),(254,22690103,'Common Wood Pigeon','Columba palumbus',23,1),(255,22690439,'Oriental Turtle Dove','Streptopelia orientalis',23,1),(256,22683819,'Great Spotted Cuckoo','Clamator glandarius',51,1),(257,22683873,'Common Cuckoo','Cuculus canorus',51,1),(258,22688504,'Western Barn Owl','Tyto alba',52,1),(259,22688927,'Eurasian Eagle-owl','Bubo bubo',25,1),(260,22689055,'Snowy Owl','Bubo scandiacus',25,4),(261,22689189,'Northern Hawk-Owl','Surnia ulula',25,1),(262,22689328,'Little Owl','Athene noctua',25,1),(263,22689108,'Ural Owl','Strix uralensis',25,1),(264,22689507,'Long-eared Owl','Asio otus',25,1),(265,22686774,'Alpine Swift','Tachymarptis melba',45,1),(266,22683027,'Common Kingfisher','Alcedo atthis',53,1),(267,22683645,'Pied Kingfisher','Ceryle rudis',54,1),(268,22682860,'European Roller','Coracias garrulus',55,1),(269,22682655,'Eurasian Hoopoe','Upupa epops',56,1),(270,22680683,'Eurasian Wryneck','Jynx torquilla',2,1),(271,22725022,'European Green Woodpecker','Picus viridis',2,1),(272,22717285,'Calandra Lark','Melanocorypha calandra',14,1),(273,22717298,'White-winged Lark','Alauda leucoptera',14,1),(274,22717301,'Black Lark','Melanocorypha yeltoniensis',14,1),(275,103766207,'Greater Short-toed Lark','Calandrella brachydactyla',14,1),(276,103811886,'Common House Martin','Delichon urbicum',31,1),(277,22718501,'Tawny Pipit','Anthus campestris',13,1),(278,22718556,'Meadow Pipit','Anthus pratensis',13,2),(279,22718571,'Water Pipit','Anthus spinoletta',13,1),(280,22708146,'Bohemian Waxwing','Bombycilla garrulus',57,1),(281,22718630,'Siberian Accentor','Prunella montanella',35,1),(282,105294257,'Red-flanked Bluetail','Tarsiger cyanurus',11,1),(283,22710051,'Black Redstart','Phoenicurus ochruros',11,1),(284,22710055,'Common Redstart','Phoenicurus phoenicurus',11,1),(285,22710333,'Isabelline Wheatear','Oenanthe isabellina',11,1),(286,22710308,'Pied Wheatear','Oenanthe pleschanka',11,1),(287,22710302,'Black-eared Wheatear','Oenanthe hispanica',11,1),(288,22708257,'Common Rock Thrush','Monticola saxatilis',11,1),(289,22708382,'Siberian Thrush','Geokichla sibirica',9,1),(290,22708768,'Ring Ouzel','Turdus torquatus',9,1),(291,22708793,'Eyebrowed Thrush','Turdus obscurus',9,1),(292,103892088,'Naumann\'s Thrush','Turdus naumanni',9,1),(293,103892167,'Red-throated Thrush','Turdus ruficollis',9,1),(294,22708816,'Fieldfare','Turdus pilaris',9,1),(295,22708819,'Redwing','Turdus iliacus',9,2),(296,22708829,'Mistle Thrush','Turdus viscivorus',9,1),(297,22714664,'Pallas\'s Grasshopper Warbler','Locustella certhiola',1,1),(298,22714657,'Common Grasshopper Warbler','Locustella naevia',1,1),(299,22714693,'Moustached Warbler','Acrocephalus melanopogon',12,1),(300,22714700,'Sedge Warbler','Acrocephalus schoenobaenus',12,1),(301,22714736,'Blyth\'s Reed Warbler','Acrocephalus dumetorum',12,1),(302,22714741,'Marsh Warbler','Acrocephalus palustris',12,1),(303,104317670,'Great Reed Warbler','Acrocephalus arundinaceus',12,1),(304,22714912,'Melodious Warbler','Hippolais polyglotta',12,1),(305,22716937,'Barred Warbler','Sylvia nisoria',29,1),(306,22734992,'Lesser Whitethroat','Sylvia curruca',29,1),(307,22716906,'Garden Warbler','Sylvia borin',29,1),(308,22716901,'Eurasian Blackcap','Sylvia atricapilla',29,1),(309,22734364,'Pallas\'s Leaf Warbler','Phylloscopus proregulus',4,1),(310,22715260,'Wood Warbler','Phylloscopus sibilatrix',4,1),(311,22715240,'Willow Warbler','Phylloscopus trochilus',4,1),(312,22709192,'Spotted Flycatcher','Muscicapa striata',11,1),(313,22735909,'Red-breasted Flycatcher','Ficedula parva',11,1),(314,103871923,'Long-tailed Tit','Aegithalos caudatus',58,1),(315,22735995,'Marsh Tit','Poecile palustris',44,1),(316,22711810,'European Crested Tit','Lophophanes cristatus',44,1),(317,103761667,'Eurasian Blue Tit','Cyanistes caeruleus',44,1),(318,103879804,'Eurasian Nuthatch','Sitta europaea',59,1),(319,22711234,'Wallcreeper','Tichodroma muraria',60,1),(320,22736148,'Eurasian Penduline Tit','Remiz pendulinus',61,1),(321,103718693,'Isabelline Shrike','Lanius isabellinus',27,1),(322,22705038,'Lesser Grey Shrike','Lanius minor',27,1),(323,103718932,'Great Grey Shrike','Lanius excubitor',27,1),(324,22705095,'Woodchat Shrike','Lanius senator',27,1),(325,103723684,'Eurasian Jay','Garrulus glandarius',21,1),(326,22705775,'Siberian Jay','Perisoreus infaustus',21,1),(327,22705929,'Western Jackdaw','Corvus monedula',21,1),(328,22706016,'Carrion Crow','Corvus corone',21,1),(329,22696606,'Horned Grebe','Podiceps auritus',24,4),(330,22696610,'Black-necked Grebe','Podiceps nigricollis',24,1),(331,45061132,'Scopoli\'s Shearwater','Calonectris diomedea',16,1),(332,22728432,'Balearic Shearwater','Puffinus mauretanicus',16,3),(333,22698436,'Wilson\'s Storm Petrel','Oceanites oceanicus',62,1),(334,22696657,'Northern Gannet','Morus bassanus',63,1),(335,22696734,'Pygmy Cormorant','Microcarbo pygmaeus',8,1),(336,22697590,'Great White Pelican','Pelecanus onocrotalus',42,1),(337,22697346,'Eurasian Bittern','Botaurus stellaris',38,1),(338,22735766,'Little Bittern','Ixobrychus minutus',38,1),(339,22697211,'Black-crowned Night Heron','Nycticorax nycticorax',38,1),(340,22697123,'Squacco Heron','Ardeola ralloides',38,1),(341,22697109,'Western Cattle Egret','Bubulcus ibis',38,1),(342,62774969,'Little Egret','Egretta garzetta',38,1),(343,22696993,'Grey Heron','Ardea cinerea',38,1),(344,22697031,'Purple Heron','Ardea purpurea',38,1),(345,22697422,'Glossy Ibis','Plegadis falcinellus',64,1),(346,22697555,'Eurasian Spoonbill','Platalea leucorodia',64,1),(347,22679839,'Mute Swan','Cygnus olor',3,1),(348,22679862,'Tundra Swan','Cygnus columbianus',3,1),(349,22679856,'Whooper Swan','Cygnus cygnus',3,1),(350,22679875,'Taiga Bean Goose','Anser fabalis',3,1),(351,22679886,'Lesser White-fronted Goose','Anser erythropus',3,4),(352,22679943,'Barnacle Goose','Branta leucopsis',3,1),(353,22680313,'Garganey','Spatula querquedula',3,1),(354,22680247,'Northern Shoveler','Spatula clypeata',3,1),(355,22680402,'Lesser Scaup','Aythya affinis',3,1),(356,22680415,'Steller\'s Eider','Polysticta stelleri',3,4),(357,22680423,'Harlequin Duck','Histrionicus histrionicus',3,1),(358,22724836,'Velvet Scoter','Melanitta fusca',3,4),(359,22680455,'Common Goldeneye','Bucephala clangula',3,1),(360,22680465,'Smew','Mergellus albellus',3,1),(361,22695072,'Red Kite','Milvus milvus',17,2),(362,22695130,'Pallas\'s Fish Eagle','Haliaeetus leucoryphus',17,5),(363,22695137,'White-tailed Eagle','Haliaeetus albicilla',17,1),(364,22695180,'Egyptian Vulture','Neophron percnopterus',17,5),(365,22695231,'Cinereous Vulture','Aegypius monachus',17,2),(366,22734216,'Short-toed Snake Eagle','Circaetus gallicus',17,1),(367,22727733,'Hen Harrier','Circus cyaneus',17,1),(368,22695396,'Pallid Harrier','Circus macrourus',17,2),(369,22695405,'Montagu\'s Harrier','Circus pygargus',17,1),(370,22695624,'Eurasian Sparrowhawk','Accipiter nisus',17,1),(371,61695117,'Common Buzzard','Buteo buteo',17,1),(372,22736562,'Long-legged Buzzard','Buteo rufinus',17,1),(373,22696022,'Lesser Spotted Eagle','Clanga pomarina',17,1),(374,22696038,'Steppe Eagle','Aquila nipalensis',17,5),(375,22694938,'Western Osprey','Pandion haliaetus',65,1),(376,22696362,'Common Kestrel','Falco tinnunculus',15,1),(377,22696432,'Red-footed Falcon','Falco vespertinus',15,2),(378,22696453,'Merlin','Falco columbarius',15,1),(379,22696495,'Saker Falcon','Falco cherrug',15,5),(380,22696500,'Gyrfalcon','Falco rusticolus',15,1),(381,22679480,'Black Grouse','Lyrurus tetrix',26,1),(382,22679487,'Western Capercaillie','Tetrao urogallus',26,1),(383,22678911,'Grey Partridge','Perdix perdix',26,1),(384,22678944,'Common Quail','Coturnix coturnix',26,1),(385,45100023,'Common Pheasant','Phasianus colchicus',26,1),(386,22725141,'Water Rail','Rallus aquaticus',28,1),(387,22692676,'Spotted Crake','Porzana porzana',28,1),(388,22692663,'Little Crake','Zapornia parva',28,1),(389,22692543,'Corn Crake','Crex crex',28,1),(390,22692146,'Common Crane','Grus grus',66,1),(391,22692081,'Demoiselle Crane','Anthropoides virgo',66,1),(392,22691896,'Little Bustard','Tetrax tetrax',48,2),(393,22733462,'Eurasian Oystercatcher','Haematopus ostralegus',67,2),(394,45111439,'Eurasian Stone-curlew','Burhinus oedicnemus',68,1),(395,22693906,'Eurasian Dotterel','Charadrius morinellus',20,1);
/*!40000 ALTER TABLE `bird` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `family`
--

DROP TABLE IF EXISTS `family`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `family` (
  `idfamily` int NOT NULL,
  `commonname` varchar(255) DEFAULT NULL,
  `scientificname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idfamily`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `family`
--

LOCK TABLES `family` WRITE;
/*!40000 ALTER TABLE `family` DISABLE KEYS */;
INSERT INTO `family` VALUES (1,'Grass-warblers and allies / Old World Warblers','Locustellidae / Sylviidae'),(2,'Woodpeckers','Picidae'),(3,'Ducks, Geese and Swans','Anatidae'),(4,'Leaf-warblers and allies / Old World Warblers','Phylloscopidae / Sylviidae'),(5,'Sandpipers and Allies','Scolopacidae'),(6,'Pratincoles, Coursers','Glareolidae'),(7,'Gulls','Laridae'),(8,'Cormorants','Phalacrocoracidae'),(9,'Thrushes and Allies','Turdidae'),(10,'Bearded Reedling / Old World Warblers','Panuridae / Sylviidae'),(11,'Old World Flycatchers','Muscicapidae'),(12,'Marsh- and Tree-warblers / Old World Warblers','Acrocephalidae / Sylviidae'),(13,'Pipits and Wagtails','Motacillidae'),(14,'Larks','Alaudidae'),(15,'Falcons and Caracaras','Falconidae'),(16,'Petrels and Shearwaters','Procellariidae'),(17,'Hawks and Eagles','Accipitridae'),(18,'Gulls / Terns','Laridae : Sterninae / Sternidae'),(19,'Sandgrouse','Pteroclidae'),(20,'Plovers','Charadriidae'),(21,'Crows','Corvidae'),(22,'Flamingos','Phoenicopteridae'),(23,'Pigeons and Doves','Columbidae'),(24,'Grebes','Podicipedidae'),(25,'Typical Owls','Strigidae'),(26,'Pheasants and Partridges','Phasianidae'),(27,'Shrikes','Laniidae'),(28,'Rails, Gallinules and Coots','Rallidae'),(29,'Old World Warblers','Sylviidae'),(30,'Loons','Gaviidae'),(31,'Swallows and Martins','Hirundinidae'),(32,'Nightjars','Caprimulgidae'),(33,'Treecreepers','Certhiidae'),(34,'Dippers','Cinclidae'),(35,'Accentors','Prunellidae'),(36,'Auks','Alcidae'),(37,'Wrens','Troglodytidae'),(38,'Herons','Ardeidae'),(39,'Orioles','Oriolidae'),(40,'Avocets, Stilts','Recurvirostridae'),(41,'Kinglets & Firecrests','Regulidae'),(42,'Pelicans','Pelecanidae'),(43,'Bee-Eaters','Meropidae'),(44,'Tits and Chickadees','Paridae'),(45,'Swifts','Apodidae'),(46,'Storm-Petrels','Hydrobatidae'),(47,'Skuas','Stercorariidae'),(48,'Bustards','Otididae'),(49,'Storks','Ciconiidae'),(50,'Ground-warblers and allies / * (Scotocercidae : Cettiinae) / Old World Warblers','Cettiidae / Scotocercidae : Cettiinae / Sylviidae'),(51,'Cuckoos','Cuculidae'),(52,'Barn-Owls','Tytonidae'),(53,'Kingfishers','Alcedinidae'),(54,'Kingfishers : Water Kingfishers','Alcedinidae : Cerylinae / Cerylidae'),(55,'Rollers','Coraciidae'),(56,'Hoopoes','Upupidae'),(57,'Waxwings','Bombycillidae'),(58,'Long-tailed Tits / Old World Warblers','Aegithalidae / Sylviidae'),(59,'Nuthatches','Sittidae'),(60,'Wallcreeper / Nuthatches : Wallcreeper','Tichodromidae / Sittidae : Tichodromadinae'),(61,'Penduline Tits / Tits and Chickadees','Remizidae / Paridae'),(62,NULL,NULL),(63,'Gannets and Boobies','Sulidae'),(64,'Ibises and Spoonbills','Threskiornithidae'),(65,'Osprey','Pandionidae'),(66,'Cranes','Gruidae'),(67,'Oystercatchers','Haematopodidae'),(68,'Thick-Knees','Burhinidae');
/*!40000 ALTER TABLE `family` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `redcode`
--

DROP TABLE IF EXISTS `redcode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `redcode` (
  `idredcode` int NOT NULL,
  `code_english` varchar(45) DEFAULT NULL,
  `code_dutch` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idredcode`),
  UNIQUE KEY `code_engels_UNIQUE` (`code_english`),
  UNIQUE KEY `bedreigingscodecol_UNIQUE` (`code_dutch`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `redcode`
--

LOCK TABLES `redcode` WRITE;
/*!40000 ALTER TABLE `redcode` DISABLE KEYS */;
INSERT INTO `redcode` VALUES (1,'Least Concern','Niet bedreigd (veilig)'),(2,'Near threatened','Gevoelig'),(3,'Critically Endangered','Ernstig bedreigd'),(4,'Vulnerable','Kwetsbaar'),(5,'Endangered','Bedreigd');
/*!40000 ALTER TABLE `redcode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `aantal_vogels_per_bedreiging`
--

/*!50001 DROP VIEW IF EXISTS `aantal_vogels_per_bedreiging`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `aantal_vogels_per_bedreiging` AS select `r`.`code_dutch` AS `bedreiging`,count(`b`.`idbird`) AS `aantal` from (`redcode` `r` join `bird` `b` on((`b`.`idredcode` = `r`.`idredcode`))) group by `bedreiging` order by `aantal` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `bedreigde_aantallen_per_familie`
--

/*!50001 DROP VIEW IF EXISTS `bedreigde_aantallen_per_familie`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `bedreigde_aantallen_per_familie` AS select `r`.`code_dutch` AS `bedreiging`,`f`.`commonname` AS `familie`,count(`b`.`idredcode`) AS `aantal` from ((`bird` `b` join `redcode` `r` on((`r`.`idredcode` = `b`.`idredcode`))) join `family` `f` on((`f`.`idfamily` = `b`.`idfamily`))) group by `familie`,`bedreiging` order by `bedreiging`,`familie` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `bedreigingsoverzicht`
--

/*!50001 DROP VIEW IF EXISTS `bedreigingsoverzicht`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `bedreigingsoverzicht` AS select `r`.`code_dutch` AS `bedreiging`,`f`.`commonname` AS `familie`,`b`.`commonname` AS `vogelnaam` from ((`bird` `b` join `family` `f` on((`f`.`idfamily` = `b`.`idfamily`))) join `redcode` `r` on((`r`.`idredcode` = `b`.`idredcode`))) */;
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

-- Dump completed on 2023-04-30 16:15:28
