-- MariaDB dump 10.19  Distrib 10.5.18-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: Nuklear_Winter_68
-- ------------------------------------------------------
-- Server version	10.5.18-MariaDB-0+deb11u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chits`
--

DROP TABLE IF EXISTS `chits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chits` (
  `id` int(11) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `front_id` int(11) DEFAULT NULL,
  `back_id` int(11) DEFAULT NULL,
  `front` varchar(40) DEFAULT NULL,
  `back` varchar(40) DEFAULT NULL,
  `pieceType` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chits`
--

LOCK TABLES `chits` WRITE;
/*!40000 ALTER TABLE `chits` DISABLE KEYS */;
INSERT INTO `chits` VALUES (1,'1_130 Chit',1,NULL,'1_130 Chit front.png',NULL,'chit'),(2,'1_130 CO',3,2,'1_130 CO front.png','1_130 CO back.png','CO'),(3,'1_130 E100',5,4,'1_130 E100 front.png','1_130 E100 back.png','combat'),(4,'1_130 Hummel',7,6,'1_130 Hummel front.png','1_130 Hummel back.png','combat'),(5,'1_130 KT',9,8,'1_130 KT front.png','1_130 KT back.png','combat'),(6,'1_130 Puma',11,10,'1_130 Puma front.png','1_130 Puma back.png','combat'),(7,'1_7 SS 250',13,12,'1_7 SS 250 front.png','1_7 SS 250 back.png','combat'),(8,'1_7 SS Chit',14,NULL,'1_7 SS Chit front.png',NULL,'chit'),(9,'1_7 SS CO',16,15,'1_7 SS CO front.png','1_7 SS CO back.png','CO'),(10,'1_7 SS VT',18,17,'1_7 SS VT front.png','1_7 SS VT back.png','combat'),(11,'1',19,NULL,'1.png',NULL,'misc'),(12,'1st Ranger Chit',20,NULL,'1st Ranger Chit front.png',NULL,'chit'),(13,'1st Ranger CO',22,21,'1st Ranger CO front.png','1st Ranger CO back.png','CO'),(14,'1st Ranger M113',24,23,'1st Ranger M113 front.png','1st Ranger M113 back.png','combat'),(15,'1st Ranger M60',26,25,'1st Ranger M60 front.png','1st Ranger M60 back.png','combat'),(16,'1st Ranger Ranger',28,27,'1st Ranger Ranger front.png','1st Ranger Ranger back.png','combat'),(17,'2_130 250',30,29,'2_130 250 front.png','2_130 250 back.png','combat'),(18,'2_130 chit',31,NULL,'2_130 chit front.png',NULL,'chit'),(19,'2_130 CO',33,32,'2_130 CO front.png','2_130 CO back.png','CO'),(20,'2_130 E100',35,34,'2_130 E100 front.png','2_130 E100 back.png','combat'),(21,'2_130 Fall',37,36,'2_130 Fall front.png','2_130 Fall back.png','combat'),(22,'2_130 JT',39,38,'2_130 JT front.png','2_130 JT back.png','combat'),(23,'2',51,NULL,'2.png',NULL,'misc'),(24,'2nd Ranger BRDM',41,40,'2nd Ranger BRDM front.png','2nd Ranger BRDM back.png','combat'),(25,'2nd Ranger Chit',42,NULL,'2nd Ranger Chit front.png',NULL,'chit'),(26,'2nd Ranger CO',44,43,'2nd Ranger CO front.png','2nd Ranger CO back.png','CO'),(27,'2nd Ranger M113',46,45,'2nd Ranger M113 front.png','2nd Ranger M113 back.png','combat'),(28,'2nd Ranger M60',48,47,'2nd Ranger M60 front.png','2nd Ranger M60 back.png','combat'),(29,'2nd Ranger Ranger',50,49,'2nd Ranger Ranger front.png','2nd Ranger Ranger back.png','combat'),(30,'3',52,NULL,'3.png',NULL,'misc'),(31,'4',53,NULL,'4.png',NULL,'misc'),(32,'4th G Chit',54,NULL,'4th G Chit front.png',NULL,'chit'),(33,'4th G CO',56,55,'4th G CO front.png','4th G CO back.png','CO'),(34,'4th G T64',58,57,'4th G T64 front.png','4th G T64 back.png','combat'),(35,'5',86,NULL,'5.png',NULL,'misc'),(36,'501SS Chit',59,NULL,'501SS Chit front.png',NULL,'chit'),(37,'501SS CO',61,60,'501SS CO front.png','501SS CO back.png','CO'),(38,'501SS E100',63,62,'501SS E100 front.png','501SS E100 back.png','combat'),(39,'502SS 250',65,64,'502SS 250 front.png','502SS 250 back.png','combat'),(40,'502SS Chit',66,NULL,'502SS Chit front.png',NULL,'chit'),(41,'502SS CO',68,67,'502SS CO front.png','502SS CO back.png','CO'),(42,'502SS E100',70,69,'502SS E100 front.png','502SS E100 back.png','combat'),(43,'502SS JT',72,71,'502SS JT front.png','502SS JT back.png','combat'),(44,'502SS VT',74,73,'502SS VT front.png','502SS VT back.png','combat'),(45,'58th Chit',75,NULL,'58th Chit front.png',NULL,'chit'),(46,'58th CO',77,76,'58th CO front.png','58th CO back.png','CO'),(47,'58th M113',79,78,'58th M113 front.png','58th M113 back.png','combat'),(48,'58th Rangers',81,80,'58th Rangers front.png','58th Rangers back.png','combat'),(49,'58th Spetsnaz',83,82,'58th Spetsnaz front.png','58th Spetsnaz back.png','combat'),(50,'58th T62',85,84,'58th T62 front.png','58th T62 back.png','combat'),(51,'6',87,NULL,'6.png',NULL,'misc'),(52,'9K32',88,NULL,'9K32 front.png',NULL,'weapon'),(53,'A6',89,NULL,'A6 front.png',NULL,'combat'),(54,'Advance',90,NULL,'Advance.png',NULL,'marker'),(55,'armies-icon',91,NULL,'armies-icon.png',NULL,'misc'),(56,'Army_Menu',92,NULL,'Army_Menu.png',NULL,'misc'),(57,'assault-icon',93,NULL,'assault-icon.png',NULL,'misc'),(58,'assault',94,NULL,'assault.png',NULL,'chart'),(59,'Barrage 3',95,NULL,'Barrage 3.png',NULL,'OBA'),(60,'Bio 1',96,NULL,'Bio 1.png',NULL,'OBA'),(61,'Black control',97,NULL,'Black control.png',NULL,'marker'),(62,'Black Hand Chit',98,NULL,'Black Hand Chit front.png',NULL,'chit'),(63,'Blighter',100,99,'Blighter front.png','Blighter back.png','combat'),(64,'blue control',101,NULL,'blue control.png',NULL,'marker'),(65,'BRDM',103,102,'BRDM front.png','BRDM back.png','combat'),(66,'Chemical 3',104,NULL,'Chemical 3.png',NULL,'OBA'),(67,'Chemical',105,NULL,'Chemical.png',NULL,'marker'),(68,'Combat-icon',107,106,'Combat-icon.png','Chit Back.png','misc'),(69,'Combat',108,NULL,'Combat.jpg',NULL,'chart'),(70,'Cowboys Chit',109,NULL,'Cowboys Chit front.png',NULL,'chit'),(71,'Cowboys Huey',111,110,'Cowboys Huey front.png','Cowboys Huey back.png','combat'),(72,'cup-icon',112,NULL,'cup-icon.png',NULL,'misc'),(73,'cup',113,NULL,'cup.jpg',NULL,'misc'),(74,'Derek Castle',114,NULL,'Derek Castle.png',NULL,'marker'),(75,'Diskord',115,NULL,'Diskord front.png',NULL,'weapon'),(76,'Event-icon',116,NULL,'Event-icon.png',NULL,'misc'),(77,'Event',117,NULL,'Event.png',NULL,'marker'),(78,'Finished-icon2',118,NULL,'Finished-icon2.png',NULL,'misc'),(79,'Finished',119,NULL,'Finished.png',NULL,'marker'),(80,'fire-icon',120,NULL,'fire-icon.png',NULL,'misc'),(81,'fire',121,NULL,'fire.png',NULL,'chart'),(82,'forward-button',122,NULL,'forward-button.png',NULL,'misc'),(83,'globe-dark-icon',123,NULL,'globe-dark-icon.png',NULL,'misc'),(84,'globe-icon',124,NULL,'globe-icon.png',NULL,'misc'),(85,'High Morale',125,NULL,'High Morale.png',NULL,'marker'),(86,'Hummel',127,126,'Hummel front.png','Hummel back.png','combat'),(87,'los-icon',128,NULL,'los-icon.png',NULL,'misc'),(88,'Luftf',129,NULL,'Luftf front.png',NULL,'weapon'),(89,'M-60',132,NULL,'M-60 front.png',NULL,'weapon'),(90,'M109',131,130,'M109 front.png','M109 back.png','combat'),(91,'M72Law',133,NULL,'M72Law front.png',NULL,'weapon'),(92,'magnify-minus',134,NULL,'magnify-minus.png',NULL,'misc'),(93,'magnify-plus',135,NULL,'magnify-plus.png',NULL,'misc'),(94,'magnify-size',136,NULL,'magnify-size.png',NULL,'misc'),(95,'Map-mini-icon',138,NULL,'Map-mini-icon.png',NULL,'misc'),(96,'Map',137,NULL,'Map.jpg',NULL,'map'),(97,'Megrim',140,139,'Megrim front.png','Megrim back.png','combat'),(98,'MG42',141,NULL,'MG42 front.png',NULL,'weapon'),(99,'Mines',142,NULL,'Mines.png',NULL,'marker'),(100,'mini-map-icon',143,NULL,'mini-map-icon.png',NULL,'misc'),(101,'moved-icon',144,NULL,'moved-icon.png',NULL,'misc'),(102,'Moved',145,NULL,'Moved.png',NULL,'misc'),(103,'Nuclear 6',146,NULL,'Nuclear 6.png',NULL,'OBA'),(104,'Objective',147,NULL,'Objective.png',NULL,'marker'),(105,'OOC-icon',148,NULL,'OOC-icon.png',NULL,'misc'),(106,'OOC',149,NULL,'OOC.png',NULL,'marker'),(107,'Ostwind',151,150,'Ostwind front.png','Ostwind back.png','combat'),(108,'Pest',153,152,'Pest front.png','Pest back.png','combat'),(109,'PFT3',154,NULL,'PFT3 front.png',NULL,'weapon'),(110,'Puma',156,155,'Puma front.png','Puma back.png','combat'),(111,'Rad',157,NULL,'Rad.png',NULL,'marker'),(112,'Rancor',159,158,'Rancor front.png','Rancor back.png','combat'),(113,'Ravager',161,160,'Ravager front.png','Ravager back.png','combat'),(114,'Red control',162,NULL,'Red control.png',NULL,'marker'),(115,'retire-button',163,NULL,'retire-button.png',NULL,'misc'),(116,'Sandbags',164,NULL,'Sandbags.png',NULL,'marker'),(117,'Scourge',166,165,'Scourge front.png','Scourge back.png','combat'),(118,'screenshot-icon',167,NULL,'screenshot-icon.png',NULL,'misc'),(119,'Scud',168,NULL,'Scud front.png',NULL,'combat'),(120,'server-button',169,NULL,'server-button.png',NULL,'misc'),(121,'SG2 Chit',170,NULL,'SG2 Chit front.png',NULL,'chit'),(122,'SG2 Saucer',172,171,'SG2 Saucer front.png','SG2 Saucer back.png','combat'),(123,'Shaken',173,NULL,'Shaken.png',NULL,'marker'),(124,'Shellholes',174,NULL,'Shellholes.png',NULL,'marker'),(125,'Smoke 3',175,NULL,'Smoke 3.png',NULL,'OBA'),(126,'Smoke L1',176,NULL,'Smoke L1.png',NULL,'marker'),(127,'Smoke L2',177,NULL,'Smoke L2.png',NULL,'marker'),(128,'Splash.gif',178,NULL,'Splash.gif',NULL,'misc'),(129,'Stuka',179,NULL,'Stuka front.png',NULL,'combat'),(130,'Turn',180,NULL,'Turn.png',NULL,'marker'),(131,'undo',181,NULL,'undo.png',NULL,'misc'),(132,'V2',182,NULL,'V2 front.png',NULL,'marker'),(133,'Vehicle Crew',183,NULL,'Vehicle Crew.png',NULL,'marker'),(134,'Vympel Chit',184,NULL,'Vympel Chit front.png',NULL,'chit'),(135,'Vympel Co',186,185,'Vympel Co front.png','Vympel Co back.png','CO'),(136,'Vympel Spetsnaz',188,187,'Vympel Spetsnaz front.png','Vympel Spetsnaz back.png','combat'),(137,'Wreck',189,NULL,'Wreck.png',NULL,'marker'),(138,'XM134',190,NULL,'XM134 front.png',NULL,'weapon'),(139,'Zealots',192,191,'Zealots front.png','Zealots back.png','combat'),(140,'ZSU23',194,193,'ZSU23 front.png','ZSU23 back.png','combat');
/*!40000 ALTER TABLE `chits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `pieceType` varchar(20) DEFAULT NULL,
  `formation` varchar(20) DEFAULT NULL,
  `nationality` varchar(20) DEFAULT NULL,
  `unitType` varchar(20) DEFAULT NULL,
  `Speed` int(11) DEFAULT NULL,
  `minSpeed` int(11) DEFAULT NULL,
  `Armor` int(11) DEFAULT NULL,
  `HE` int(11) DEFAULT NULL,
  `AP` int(11) DEFAULT NULL,
  `colors` int(11) DEFAULT NULL,
  `AP_range` int(11) DEFAULT NULL,
  `HE_range` int(11) DEFAULT NULL,
  `color_2` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (1,'1_130 Chit front.png',20095,'chit','1/130','Reich',NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(2,'1_130 CO back.png',31772,'command','1/130','Reich','2IC',-1,-1,-1,-1,-1,0,-1,-1,-1),(3,'1_130 CO front.png',31872,'command','1/130','Reich','CO',-1,-1,-1,-1,-1,0,-1,-1,-1),(4,'1_130 E100 back.png',28654,'combat','1/130','Reich','E-100',6,-1,20,4,10,145,9,4,1),(5,'1_130 E100 front.png',28325,'combat','1/130','Reich','E-100',6,-1,20,5,11,145,9,4,1),(6,'1_130 Hummel back.png',30244,'combat','1/130','Reich','Hummel',5,-1,14,5,9,25,18,18,9),(7,'1_130 Hummel front.png',30074,'combat','1/130','Reich','Hummel',5,-1,14,6,10,25,18,18,9),(8,'1_130 KT back.png',29492,'combat','1/130','Reich','King Tiger',6,-1,18,4,9,145,6,4,1),(9,'1_130 KT front.png',29167,'combat','1/130','Reich','King Tiger',6,-1,18,5,10,145,6,4,1),(10,'1_130 Puma back.png',30206,'combat','1/130','Reich','Puma',7,-1,15,3,8,145,4,3,1),(11,'1_130 Puma front.png',29780,'combat','1/130','Reich','Puma',7,-1,15,4,9,145,4,3,1),(12,'1_7 SS 250 back.png',33430,'combat','1/7 SS','Reich','SdKfz 250',6,-1,14,3,7,145,3,3,1),(13,'1_7 SS 250 front.png',33022,'combat','1/7 SS','Reich','SdKfz 250',6,-1,14,4,8,145,3,3,1),(14,'1_7 SS Chit front.png',20300,'chit','1/7 SS','Reich',NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(15,'1_7 SS CO back.png',32057,'command','1/7 SS','Reich','2IC',-1,-1,-1,-1,-1,0,-1,-1,-1),(16,'1_7 SS CO front.png',31757,'command','1/7 SS','Reich','CO',-1,-1,-1,-1,-1,0,-1,-1,-1),(17,'1_7 SS VT back.png',33992,'combat','1/7 SS','Reich','SS-VT',3,-1,13,5,5,148,3,3,4),(18,'1_7 SS VT front.png',34103,'combat','1/7 SS','Reich','SS-VT',3,-1,13,6,6,148,3,3,4),(19,'1.png',1679,'misc',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(20,'1st Ranger Chit front.png',29314,'chit','1st Ranger','NATO',NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(21,'1st Ranger CO back.png',41759,'command','1st Ranger','NATO','2IC',-1,-1,-1,-1,-1,0,-1,-1,-1),(22,'1st Ranger CO front.png',42071,'command','1st Ranger','NATO','CO',-1,-1,-1,-1,-1,0,-1,-1,-1),(23,'1st Ranger M113 back.png',36254,'combat','1st Ranger','NATO','M113',6,-1,14,3,-1,1,-1,3,1),(24,'1st Ranger M113 front.png',35994,'combat','1st Ranger','NATO','M113',6,-1,14,4,-1,1,-1,3,1),(25,'1st Ranger M60 back.png',36252,'combat','1st Ranger','NATO','M60A1',6,-1,17,4,9,145,7,4,1),(26,'1st Ranger M60 front.png',35638,'combat','1st Ranger','NATO','M60A1',6,-1,17,5,10,145,7,4,1),(27,'1st Ranger Ranger back.png',41827,'combat','1st Ranger','NATO','US Rangers',4,-1,13,4,5,148,3,3,4),(28,'1st Ranger Ranger front.png',41773,'combat','1st Ranger','NATO','US Rangers',4,-1,13,5,6,148,3,3,4),(29,'2_130 250 back.png',31836,'combat','2/130','Reich','SdKfz 250',6,-1,14,3,7,145,3,3,1),(30,'2_130 250 front.png',31604,'combat','2/130','Reich','SdKfz 250',6,-1,14,4,8,145,3,3,1),(31,'2_130 chit front.png',20745,'chit','2/130','Reich',NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(32,'2_130 CO back.png',31742,'command','2/130','Reich','2IC',-1,-1,-1,-1,-1,0,-1,-1,-1),(33,'2_130 CO front.png',31800,'command','2/130','Reich','CO',-1,-1,-1,-1,-1,0,-1,-1,-1),(34,'2_130 E100 back.png',29126,'combat','2/130','Reich','E-100',6,-1,20,4,10,145,9,4,1),(35,'2_130 E100 front.png',28746,'combat','2/130','Reich','E-100',6,-1,20,5,11,145,9,4,1),(36,'2_130 Fall back.png',36160,'combat','2/130','Reich','Fallschirmjager',3,-1,14,4,5,148,3,3,4),(37,'2_130 Fall front.png',36078,'combat','2/130','Reich','Fallschirmjager',3,-1,14,5,6,148,3,3,4),(38,'2_130 JT back.png',30417,'combat','2/130','Reich','Jagdtiger',6,-1,18,3,9,145,7,4,1),(39,'2_130 JT front.png',29422,'combat','2/130','Reich','Jagdtiger',6,-1,18,4,10,145,7,4,1),(40,'2nd Ranger BRDM back.png',35110,'combat','2nd Ranger','NATO','BRDM-2',8,-1,15,3,-1,1,-1,3,1),(41,'2nd Ranger BRDM front.png',34873,'combat','2nd Ranger','NATO','BRDM-2',8,-1,15,4,-1,1,-1,3,1),(42,'2nd Ranger Chit front.png',29426,'chit','2nd Ranger','NATO',NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(43,'2nd Ranger CO back.png',41556,'command','2nd Ranger','NATO','2IC',-1,-1,-1,-1,-1,0,-1,-1,-1),(44,'2nd Ranger CO front.png',41879,'command','2nd Ranger','NATO','CO',-1,-1,-1,-1,-1,0,-1,-1,-1),(45,'2nd Ranger M113 back.png',35915,'combat','2nd Ranger','NATO','M113',6,-1,14,3,-1,1,-1,3,1),(46,'2nd Ranger M113 front.png',35465,'combat','2nd Ranger','NATO','M113',6,-1,14,4,-1,1,-1,3,1),(47,'2nd Ranger M60 back.png',35626,'combat','2nd Ranger','NATO','M60A1',6,-1,17,4,9,145,7,4,1),(48,'2nd Ranger M60 front.png',35328,'combat','2nd Ranger','NATO','M60A1',6,-1,17,5,10,145,7,4,1),(49,'2nd Ranger Ranger back.png',41556,'combat','2nd Ranger','NATO','US Rangers',4,-1,13,4,5,148,3,3,4),(50,'2nd Ranger Ranger front.png',41583,'combat','2nd Ranger','NATO','US Rangers',4,-1,13,5,6,148,3,3,4),(51,'2.png',1705,'misc',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(52,'3.png',2028,'misc',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(53,'4.png',2180,'misc',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(54,'4th G Chit front.png',27976,'chit','4th Guards','NATO',NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(55,'4th G CO back.png',42029,'command','4th Guards','NATO','2IC',-1,-1,-1,-1,-1,0,-1,-1,-1),(56,'4th G CO front.png',42305,'command','4th Guards','NATO','CO',-1,-1,-1,-1,-1,0,-1,-1,-1),(57,'4th G T64 back.png',36289,'combat','4th Guards','NATO','T-64',7,-1,20,3,11,145,10,5,1),(58,'4th G T64 front.png',35885,'combat','4th Guards','NATO','T-64',7,-1,20,4,12,145,10,5,1),(59,'501SS Chit front.png',20541,'chit','1/501 SS','Reich',NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(60,'501SS CO back.png',31860,'command','1/501 SS','Reich','2IC',-1,-1,-1,-1,-1,0,-1,-1,-1),(61,'501SS CO front.png',32065,'command','1/501 SS','Reich','CO',-1,-1,-1,-1,-1,0,-1,-1,-1),(62,'501SS E100 back.png',31116,'combat','1/501 SS','Reich','E-100',6,-1,20,4,10,145,9,4,1),(63,'501SS E100 front.png',30723,'combat','1/501 SS','Reich','E-100',6,-1,20,5,11,145,9,4,1),(64,'502SS 250 back.png',33740,'combat','2/501 SS','Reich','SdKfz 250',6,-1,14,3,7,145,3,3,1),(65,'502SS 250 front.png',33205,'combat','2/501 SS','Reich','SdKfz 250',6,-1,14,4,8,145,3,3,1),(66,'502SS Chit front.png',21167,'chit','2/501 SS','Reich',NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(67,'502SS CO back.png',31727,'command','2/501 SS','Reich','2IC',-1,-1,-1,-1,-1,0,-1,-1,-1),(68,'502SS CO front.png',31758,'command','2/501 SS','Reich','CO',-1,-1,-1,-1,-1,0,-1,-1,-1),(69,'502SS E100 back.png',31207,'combat','2/501 SS','Reich','E-100',6,-1,20,4,10,145,9,4,1),(70,'502SS E100 front.png',30727,'combat','2/501 SS','Reich','E-100',6,-1,20,5,11,145,9,4,1),(71,'502SS JT back.png',32198,'combat','2/501 SS','Reich','Jagdtiger',6,-1,18,3,9,145,7,4,1),(72,'502SS JT front.png',31419,'combat','2/501 SS','Reich','Jagdtiger',6,-1,18,4,10,145,7,4,1),(73,'502SS VT back.png',33942,'combat','2/501 SS','Reich','SS-VT',3,-1,13,5,5,148,3,3,4),(74,'502SS VT front.png',33682,'combat','2/501 SS','Reich','SS-VT',3,-1,13,6,6,148,3,3,4),(75,'58th Chit front.png',29023,'chit','58th Rifle','NATO',NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(76,'58th CO back.png',42208,'command','58th Rifle','NATO','2IC',-1,-1,-1,-1,-1,0,-1,-1,-1),(77,'58th CO front.png',42937,'command','58th Rifle','NATO','CO',-1,-1,-1,-1,-1,0,-1,-1,-1),(78,'58th M113 back.png',37410,'combat','58th Rifle','NATO','M113',6,-1,14,3,-1,1,-1,3,1),(79,'58th M113 front.png',37046,'combat','58th Rifle','NATO','M113',6,-1,14,4,-1,1,-1,3,1),(80,'58th Rangers back.png',42629,'combat','58th Rifle','NATO','US Rangers',4,-1,13,4,5,148,3,3,4),(81,'58th Rangers front.png',42405,'combat','58th Rifle','NATO','US Rangers',4,-1,13,5,6,148,3,3,4),(82,'58th Spetsnaz back.png',41974,'combat','58th Rifle','NATO','Spetsnaz',3,-1,13,4,6,148,3,3,4),(83,'58th Spetsnaz front.png',41699,'combat','58th Rifle','NATO','Spetsnaz',3,-1,13,5,7,148,3,3,4),(84,'58th T62 back.png',36893,'combat','58th Rifle','NATO','T-62',7,-1,19,3,10,145,8,4,1),(85,'58th T62 front.png',36357,'combat','58th Rifle','NATO','T-62',7,-1,19,4,11,145,8,-1,1),(86,'5.png',2273,'misc',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(87,'6.png',2310,'misc',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(88,'9K32 front.png',30007,'weapon',NULL,'NATO','9K32 Strela-2',-1,-1,-1,-1,10,288,15,-1,0),(89,'A6 front.png',29925,'combat',NULL,'NATO','A-6 Intruder',30,5,18,6,13,18,-1,-1,2),(90,'Advance.png',27227,'marker',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(91,'armies-icon.png',5401,'misc',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(92,'Army_Menu.png',2423,'misc',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(93,'assault-icon.png',5272,'misc',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(94,'assault.png',852208,'chart',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(95,'Barrage 3.png',38117,'OBA',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(96,'Bio 1.png',36840,'OBA',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(97,'Black control.png',20251,'marker','Black Hand','Black Hand',NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(98,'Black Hand Chit front.png',25583,'chit','Black Hand','Black Hand',NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(99,'Blighter back.png',33964,'combat','Black Hand','Black Hand','Blighter',6,-1,14,5,9,57,15,15,25),(100,'Blighter front.png',33654,'combat','Black Hand','Black Hand','Blighter',6,-1,14,6,10,57,15,15,25),(101,'blue control.png',22117,'marker',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(102,'BRDM back.png',30789,'combat',NULL,'NATO','BRDM-2',8,-1,15,3,-1,1,-1,3,1),(103,'BRDM front.png',30486,'combat',NULL,'NATO','BRDM-2',8,-1,15,4,-1,1,-1,3,1),(104,'Chemical 3.png',37204,'OBA',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(105,'Chemical.png',29990,'marker',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(106,'Chit Back.png',42652,'misc',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(107,'Combat-icon.png',4907,'misc',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(108,'Combat.jpg',114562,'chart',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(109,'Cowboys Chit front.png',27358,'chit','Cowboys','NATO',NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(110,'Cowboys Huey back.png',35115,'combat','Cowboys','NATO','UH-1 Huey',20,-1,16,5,-1,2,-1,4,2),(111,'Cowboys Huey front.png',34995,'combat','Cowboys','NATO','UH-1 Huey',20,-1,16,5,13,18,8,4,2),(112,'cup-icon.png',4351,'misc',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(113,'cup.jpg',33355,'misc',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(114,'Derek Castle.png',32571,'marker',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(115,'Diskord front.png',31254,'weapon',NULL,'Black Hand','Diskord',-1,-1,-1,-1,10,48,10,-1,16),(116,'Event-icon.png',4973,'misc',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(117,'Event.png',28194,'marker',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(118,'Finished-icon2.png',5055,'misc',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(119,'Finished.png',28832,'marker',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(120,'fire-icon.png',5121,'misc',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(121,'fire.png',793971,'chart',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(122,'forward-button.png',3965,'misc',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(123,'globe-dark-icon.png',2614,'misc',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(124,'globe-icon.png',2853,'misc',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(125,'High Morale.png',28643,'marker',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(126,'Hummel back.png',27635,'combat',NULL,'Reich','Hummel',5,-1,14,5,9,25,18,18,9),(127,'Hummel front.png',27319,'combat',NULL,'Reich','Hummel',5,-1,14,6,10,25,18,18,9),(128,'los-icon.png',3253,'misc',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(129,'Luftf front.png',26234,'weapon',NULL,'Reich','Luftfaust',-1,-1,-1,-1,9,288,13,-1,0),(130,'M109 back.png',32728,'combat',NULL,'NATO','M109 Paladin',5,-1,15,6,10,25,20,20,9),(131,'M109 front.png',32144,'combat',NULL,'NATO','M109 Paladin',5,-1,15,7,11,25,20,20,9),(132,'M-60 front.png',29212,'weapon',NULL,'NATO','M60',-1,-1,-1,6,-1,0,-1,5,0),(133,'M72Law front.png',28369,'weapon',NULL,'NATO','M72 LAW',-1,-1,-1,-1,10,16,7,-1,0),(134,'magnify-minus.png',3441,'misc',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(135,'magnify-plus.png',3561,'misc',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(136,'magnify-size.png',3384,'misc',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(137,'Map.jpg',5595082,'map',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(138,'Map-mini-icon.png',2240,'misc',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(139,'Megrim back.png',34252,'combat','Black Hand','Black Hand','Megrim',6,-1,16,3,9,145,6,6,1),(140,'Megrim front.png',33328,'combat','Black Hand','Black Hand','Megrim',6,-1,16,4,10,145,6,6,1),(141,'MG42 front.png',25099,'weapon',NULL,'Reich','MG 42',-1,-1,-1,6,-1,0,-1,4,0),(142,'Mines.png',34489,'marker',NULL,NULL,NULL,-1,-1,-1,7,11,16,-1,-1,0),(143,'mini-map-icon.png',4655,'misc',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(144,'moved-icon.png',3175,'misc',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(145,'Moved.png',4455,'misc',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(146,'Nuclear 6.png',36596,'OBA',NULL,NULL,NULL,-1,-1,-1,10,15,16,-1,-1,0),(147,'Objective.png',24082,'marker',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(148,'OOC-icon.png',5067,'misc',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(149,'OOC.png',31589,'marker',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(150,'Ostwind back.png',26714,'combat',NULL,'Reich','Ostwind',5,-1,14,5,-1,161,7,5,1),(151,'Ostwind front.png',27144,'combat',NULL,'Reich','Ostwind',5,-1,14,6,-1,161,7,5,1),(152,'Pest back.png',33788,'combat','Black Hand','Black Hand','Pest',6,-1,14,3,-1,1,-1,3,1),(153,'Pest front.png',32875,'combat','Black Hand','Black Hand','Pest',6,-1,14,4,-1,1,-1,3,1),(154,'PFT3 front.png',25567,'weapon',NULL,'Reich','Panzerfaust 3',-1,-1,-1,-1,12,16,8,-1,0),(155,'Puma back.png',27706,'combat',NULL,'Reich','Puma',7,-1,15,3,8,145,4,3,1),(156,'Puma front.png',26979,'combat',NULL,'Reich','Puma',7,-1,15,4,9,145,4,3,1),(157,'Rad.png',26516,'marker',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(158,'Rancor back.png',33504,'combat','Black Hand','Black Hand','Rancor',6,-1,19,4,10,145,8,4,1),(159,'Rancor front.png',33259,'combat','Black Hand','Black Hand','Rancor',6,-1,19,5,11,145,8,4,1),(160,'Ravager back.png',39061,'combat','Black Hand','Black Hand','Ravager',3,-1,15,6,10,180,1,1,20),(161,'Ravager front.png',38928,'combat','Black Hand','Black Hand','Ravager',3,-1,15,7,11,180,1,1,20),(162,'Red control.png',23337,'marker',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(163,'retire-button.png',4978,'misc',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(164,'Sandbags.png',35965,'marker',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(165,'Scourge back.png',39521,'combat','Black Hand','Black Hand','Scourge',18,-1,16,5,-1,2,-1,4,2),(166,'Scourge front.png',40051,'combat','Black Hand','Black Hand','Scourge',18,-1,16,5,10,146,4,4,2),(167,'screenshot-icon.png',3402,'misc',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(168,'Scud front.png',31797,'combat',NULL,'NATO','SS-1C Scud-B',4,-1,13,8,14,17,-1,-1,1),(169,'server-button.png',4539,'misc',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(170,'SG2 Chit front.png',17051,'chit','SG 2','Reich',NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(171,'SG2 Saucer back.png',27748,'combat','SG 2','Reich','Haunebu III',17,-1,17,6,-1,2,-1,4,2),(172,'SG2 Saucer front.png',29211,'combat','SG 2','Reich','Haunebu III',17,-1,17,6,12,18,9,4,2),(173,'Shaken.png',28715,'marker',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(174,'Shellholes.png',33239,'marker',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(175,'Smoke 3.png',37560,'OBA',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(176,'Smoke L1.png',26445,'marker',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(177,'Smoke L2.png',28500,'marker',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(178,'Splash.gif',207761,'misc',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(179,'Stuka front.png',25546,'combat',NULL,'Reich','Ju-87G Stuka',25,3,17,5,12,18,-1,-1,2),(180,'Turn.png',27109,'marker',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(181,'undo.png',4741,'misc',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(182,'V2 front.png',24995,'marker',NULL,NULL,NULL,-1,-1,-1,8,14,16,-1,-1,0),(183,'Vehicle Crew.png',37334,'marker',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(184,'Vympel Chit front.png',26595,'chit','Vympel','NATO',NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(185,'Vympel Co back.png',41567,'command','Vympel','NATO','2IC',-1,-1,-1,-1,-1,0,-1,-1,-1),(186,'Vympel Co front.png',42092,'command','Vympel','NATO','CO',-1,-1,-1,-1,-1,0,-1,-1,-1),(187,'Vympel Spetsnaz back.png',40905,'combat','Vympel','NATO','Spetsnaz',3,-1,13,4,6,148,3,3,4),(188,'Vympel Spetsnaz front.png',40715,'combat','Vympel','NATO','Spetsnaz',3,-1,13,5,7,148,3,3,4),(189,'Wreck.png',32558,'marker',NULL,NULL,NULL,-1,-1,-1,-1,-1,0,-1,-1,-1),(190,'XM134 front.png',34350,'weapon',NULL,'Black Hand','XM134',-1,-1,-1,7,9,296,3,3,8),(191,'Zealots back.png',36181,'combat','Black Hand','Black Hand','Zealots',3,-1,13,4,5,148,3,3,4),(192,'Zealots front.png',35928,'combat','Black Hand','Black Hand','Zealots',3,-1,13,5,6,148,3,3,4),(193,'ZSU23 back.png',32363,'combat',NULL,'NATO','ZSU-23-4 Shilka',6,-1,15,5,-1,161,7,5,1),(194,'ZSU23 front.png',32300,'combat',NULL,'NATO','ZSU-23-4 Shilka',6,-1,15,6,-1,161,7,5,1);
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-20 23:45:27
