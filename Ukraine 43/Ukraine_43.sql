-- MariaDB dump 10.19  Distrib 10.6.7-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: Ukraine_43
-- ------------------------------------------------------
-- Server version	10.6.7-MariaDB-2ubuntu1.1

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
-- Table structure for table `ChitStatus`
--

DROP TABLE IF EXISTS `ChitStatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ChitStatus` (
  `id` int(11) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `front` int(11) DEFAULT NULL,
  `back` int(11) DEFAULT NULL,
  `rem` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ChitStatus`
--

LOCK TABLES `ChitStatus` WRITE;
/*!40000 ALTER TABLE `ChitStatus` DISABLE KEYS */;
INSERT INTO `ChitStatus` VALUES (1,'Arrow-3',1,NULL,NULL),(2,'Arrow-4',2,NULL,NULL),(3,'Central-RH',4,5,NULL),(4,'CentralFront',3,NULL,NULL),(5,'CM Icon',6,NULL,NULL),(6,'CombatArrowNS',7,NULL,NULL),(7,'CombatResult-blank Flipped',8,NULL,NULL),(8,'Cover 300',9,NULL,NULL),(9,'CZ-17-1Czech',10,NULL,NULL),(10,'DDResult-No(-1 Step)',11,NULL,NULL),(11,'DDResult-No',12,NULL,NULL),(12,'DDResult-Yes(-1 Step)',13,NULL,NULL),(13,'DDResult-Yes(EX)',14,NULL,NULL),(14,'Disrupted-1',15,16,NULL),(15,'EmergencySupply-1',17,18,NULL),(16,'GameTurn',19,20,NULL),(17,'GE Icon',180,NULL,NULL),(18,'GE-10S-101Jaeg',21,22,NULL),(19,'GE-11S-79',23,24,NULL),(20,'GE-12N-20Pzg',25,27,26),(21,'GE-13W-389',28,29,NULL),(22,'GE-14N-123_293',30,31,NULL),(23,'GE-14W-24Pz',32,34,33),(24,'GE-15S-97Jaeg',35,36,NULL),(25,'GE-17S-14Pz',37,39,38),(26,'GE-18W-509Tiger',40,NULL,NULL),(27,'GE-19W-2Para',41,42,NULL),(28,'GE-1N-221SEC',43,NULL,NULL),(29,'GE-1P-5W',44,46,45),(30,'GE-1Pz-15',47,48,NULL),(31,'GE-1Pz-17Pz',49,51,50),(32,'GE-1Pz-198',52,53,NULL),(33,'GE-1Pz-257',54,55,NULL),(34,'GE-1Pz-328',56,57,NULL),(35,'GE-1Pz-333',58,59,NULL),(36,'GE-1Pz-387',62,63,NULL),(37,'GE-1Pz-38_62',60,61,NULL),(38,'GE-1Pz-3Pz',64,66,65),(39,'GE-1Pz-46',67,68,NULL),(40,'GE-20W-25Pz',69,71,70),(41,'GE-21W-1LAH',72,74,73),(42,'GE-2A-327',75,76,NULL),(43,'GE-2A-340',77,78,NULL),(44,'GE-2A-68',79,80,NULL),(45,'GE-2A-75',81,82,NULL),(46,'GE-2A-88',83,84,NULL),(47,'GE-2N-34',85,86,NULL),(48,'GE-3N-GD',87,88,NULL),(49,'GE-4N-4Pz_9Pz',89,91,90),(50,'GE-4N-82',92,93,NULL),(51,'GE-4Pz-11Pz',94,96,95),(52,'GE-4Pz-167',97,98,NULL),(53,'GE-4Pz-19Pz',99,101,100),(54,'GE-4Pz-255',102,103,NULL),(55,'GE-4Pz-332',104,105,NULL),(56,'GE-4Pz-57',106,107,NULL),(57,'GE-4Pz-7Pz',108,110,109),(58,'GE-5N-10Pzg',111,113,112),(59,'GE-5N-183_208',114,115,NULL),(60,'GE-6A-111',116,117,NULL),(61,'GE-6A-16Pzg',118,120,119),(62,'GE-6A-17',121,122,NULL),(63,'GE-6A-23Pz',123,125,124),(64,'GE-6A-294_335',126,127,NULL),(65,'GE-6A-2DR',128,130,129),(66,'GE-6A-302',131,132,NULL),(67,'GE-6A-304_306',133,134,NULL),(68,'GE-6A-336',135,136,NULL),(69,'GE-6A-3Mo',137,138,NULL),(70,'GE-6A-3T',139,141,140),(71,'GE-6N-112_251',142,143,NULL),(72,'GE-6W-8Cav',144,145,NULL),(73,'GE-7S-13Pz',146,148,147),(74,'GE-8A-106',149,150,NULL),(75,'GE-8A-161',151,152,NULL),(76,'GE-8A-168',153,154,NULL),(77,'GE-8A-282',155,156,NULL),(78,'GE-8A-320',157,158,NULL),(79,'GE-8A-39',159,160,NULL),(80,'GE-8A-6Pz',161,163,162),(81,'GE-8N-8Pz',164,166,165),(82,'GE-8S-125',167,168,NULL),(83,'GE-Air1',169,170,NULL),(84,'GE-Air2',171,172,NULL),(85,'GE-Dn-444SEC',173,NULL,NULL),(86,'GE-E-228Stug',174,NULL,NULL),(87,'GE-E-239StugA',175,NULL,NULL),(88,'GE-E-239StugB',176,NULL,NULL),(89,'GE-E-243Stug',177,NULL,NULL),(90,'GE-Fort-1',178,179,NULL),(91,'GE-K-503Tiger',181,NULL,NULL),(92,'GE-K-911Stug',182,NULL,NULL),(93,'GE-Kv-218SEC',183,NULL,NULL),(94,'GE-Leader-Manstein',184,185,NULL),(95,'GE-Po-213SEC',186,NULL,NULL),(96,'GE-REM-GD',187,NULL,NULL),(97,'GE-REM-Para',188,NULL,NULL),(98,'GE-Za-454SEC',189,NULL,NULL),(99,'HUN-2A-1H',190,191,NULL),(100,'Markers Icon',192,NULL,NULL),(101,'OutOfSupply-1',193,194,NULL),(102,'RailMove-1',195,NULL,NULL),(103,'Remove CM Icon',196,NULL,NULL),(104,'ReplMarker-1',197,NULL,NULL),(105,'RiverAssault-1',198,199,NULL),(106,'RO-18S-4R',200,201,NULL),(107,'RO-9Odessa-24R',202,203,NULL),(108,'SLO-16S-1Slov',204,205,NULL),(109,'South1-RH',206,207,NULL),(110,'South2-RH',208,209,NULL),(111,'SOV Icon',268,NULL,NULL),(112,'SOV-10-19Tank',210,211,NULL),(113,'SOV-10-20Tank',212,213,NULL),(114,'SOV-11-3GdsTankHQ',214,NULL,NULL),(115,'SOV-11-6GdsTank',215,216,NULL),(116,'SOV-11-7GdsTank',217,218,NULL),(117,'SOV-11-7Mech',219,221,220),(118,'SOV-12-108_109Gds',222,223,NULL),(119,'SOV-13-6_70Gds',224,225,NULL),(120,'SOV-16-9Mech',226,228,227),(121,'SOV-2-136_254',229,230,NULL),(122,'SOV-3-294_295',231,232,NULL),(123,'SOV-4-3GdsTank',233,234,NULL),(124,'SOV-4-5A_7AGds',235,236,NULL),(125,'SOV-4-8A_80Gds',237,238,NULL),(126,'SOV-5-11Tank',239,240,NULL),(127,'SOV-6-373_417',241,242,NULL),(128,'SOV-7-301_328',243,244,NULL),(129,'SOV-8-216_257',245,246,NULL),(130,'SOV-9-5GdsCav',247,248,NULL),(131,'SOV-A-1GdsAbne',249,NULL,NULL),(132,'SOV-A-2GdsAbne',250,NULL,NULL),(133,'SOV-A-5GdsAbne',251,NULL,NULL),(134,'SOV-Air1',252,253,NULL),(135,'SOV-Air2',254,255,NULL),(136,'SOV-E-140',258,NULL,NULL),(137,'SOV-E-173T34',259,NULL,NULL),(138,'SOV-E-266_279',260,261,NULL),(139,'SOV-E-27GdsT34',262,NULL,NULL),(140,'SOV-E-68_69Gds',263,264,NULL),(141,'SOV-E-6T34Gds',265,NULL,NULL),(142,'SOV-Fort-1',266,267,NULL),(143,'SOV-Ku-K-3GdsArty',269,270,NULL),(144,'SOV-Leader-Zhukov',271,272,NULL),(145,'SOV-S-118_127',273,274,NULL),(146,'SOV-S-126_221',275,276,NULL),(147,'SOV-S-130_151',277,278,NULL),(148,'SOV-S-248_416',281,282,NULL),(149,'SOV-S-24_33Gds',279,280,NULL),(150,'SOV-S-2GdsMech',283,285,284),(151,'SOV-S-315_271',286,287,NULL),(152,'SOV-S-32T34Gds',288,NULL,NULL),(153,'SOV-S-347_387',289,290,NULL),(154,'SOV-S-3Arty',291,292,NULL),(155,'SOV-S-40_96Gds',293,294,NULL),(156,'SOV-S-43S',297,NULL,NULL),(157,'SOV-S-49_87Gds',298,299,NULL),(158,'SOV-S-4GdsCav',300,301,NULL),(159,'SOV-S-4GdsMech',302,304,303),(160,'SOV-S-4_34Gds',295,296,NULL),(161,'SOV-S-50_54Gds',305,306,NULL),(162,'SOV-S-5ShockHQ',307,NULL,NULL),(163,'SOV-S-78_116',308,309,NULL),(164,'SOV-S-86_3Gds',310,311,NULL),(165,'SOV-S-91_87',312,313,NULL),(166,'SOV-S-99_346',314,315,NULL),(167,'SOV-S-KV-3Gds',316,NULL,NULL),(168,'SOV-St-107_183',317,318,NULL),(169,'SOV-St-111_213',319,320,NULL),(170,'SOV-St-15_28Gds',321,322,NULL),(171,'SOV-St-16Arty',323,324,NULL),(172,'SOV-St-1Mech',325,327,326),(173,'SOV-St-201T34',328,NULL,NULL),(174,'SOV-St-214_233',329,330,NULL),(175,'SOV-St-252_299',331,332,NULL),(176,'SOV-St-305_375',333,334,NULL),(177,'SOV-St-36_72Gds',335,336,NULL),(178,'SOV-St-73_89Gds',337,338,NULL),(179,'SOV-St-80_81Gds',339,340,NULL),(180,'SOV-St-84_116',341,342,NULL),(181,'SOV-St-SU-3',343,NULL,NULL),(182,'SOV-SW-11T34',344,NULL,NULL),(183,'SOV-SW-14_35Gds',345,346,NULL),(184,'SOV-SW-152_263',347,348,NULL),(185,'SOV-SW-172_333',349,350,NULL),(186,'SOV-SW-195_259',351,352,NULL),(187,'SOV-SW-1GdsMech',353,355,354),(188,'SOV-SW-20_38Gds',356,357,NULL),(189,'SOV-SW-23Tank',358,359,NULL),(190,'SOV-SW-243_279',362,363,NULL),(191,'SOV-SW-244_350',364,365,NULL),(192,'SOV-SW-24_203',360,361,NULL),(193,'SOV-SW-267_288',366,367,NULL),(194,'SOV-SW-41_47Gds',368,369,NULL),(195,'SOV-SW-44_57Gds',370,371,NULL),(196,'SOV-SW-50_78',372,373,NULL),(197,'SOV-SW-58_59Gds',374,375,NULL),(198,'SOV-SW-5GdsMot',376,NULL,NULL),(199,'SOV-SW-60_61Gds',377,378,NULL),(200,'SOV-SW-78_79Gds',379,380,NULL),(201,'SOV-SW-7_9_11Arty',381,382,NULL),(202,'SOV-SW-IGdsCav',383,384,NULL),(203,'SOV-SW-KV-BGds',385,NULL,NULL),(204,'SOV-SW-T34-3',386,NULL,NULL),(205,'SOV-V-100_161',387,388,NULL),(206,'SOV-V-10Tank',389,390,NULL),(207,'SOV-V-13Arty',393,394,NULL),(208,'SOV-V-13_9AGds',391,392,NULL),(209,'SOV-V-147_155',395,396,NULL),(210,'SOV-V-163_166',397,398,NULL),(211,'SOV-V-167_232',399,400,NULL),(212,'SOV-V-17Arty',401,402,NULL),(213,'SOV-V-180_240',403,404,NULL),(214,'SOV-V-18Tank',405,406,NULL),(215,'SOV-V-1TankHQ',407,NULL,NULL),(216,'SOV-V-206_237',408,409,NULL),(217,'SOV-V-218_337',410,411,NULL),(218,'SOV-V-23_29',412,413,NULL),(219,'SOV-V-241_340',414,415,NULL),(220,'SOV-V-29Tank',416,417,NULL),(221,'SOV-V-2Tank',418,419,NULL),(222,'SOV-V-30_38',420,421,NULL),(223,'SOV-V-31Tank',422,423,NULL),(224,'SOV-V-3GdsMArty',424,425,NULL),(225,'SOV-V-3GdsMech',426,428,427),(226,'SOV-V-3Mech',429,431,430),(227,'SOV-V-42_71Gds',432,433,NULL),(228,'SOV-V-4GdsTank',434,435,NULL),(229,'SOV-V-51_52Gds',436,437,NULL),(230,'SOV-V-5GdsMech',438,440,439),(231,'SOV-V-5GdsTank',441,443,NULL),(232,'SOV-V-5GdsTankHQ',442,NULL,NULL),(233,'SOV-V-65',444,NULL,NULL),(234,'SOV-V-66_67Gds',445,446,NULL),(235,'SOV-V-6Tank',447,448,NULL),(236,'SOV-V-71_375',449,450,NULL),(237,'SOV-V-75',451,NULL,NULL),(238,'SOV-V-86',452,NULL,NULL),(239,'SOV-V-90_47Gds',453,454,NULL),(240,'SOV-V-95_97Gds',455,456,NULL),(241,'SOV-V-96T34',457,NULL,NULL),(242,'SOV-V-K-1GdsArty',458,459,NULL),(243,'SOV-V-K-2GdsArty',460,461,NULL),(244,'SOV-V-KV-AGds',462,NULL,NULL),(245,'SOV-V-SU-1',463,NULL,NULL),(246,'SOV-V-SU-2',464,NULL,NULL),(247,'SOV-V-T34-1',465,NULL,NULL),(248,'SovControl-1',256,257,NULL),(249,'SoWest-RH',466,467,NULL),(250,'Steppe-RH',468,469,NULL),(251,'TU-Ko-Turk',470,NULL,NULL),(252,'UK43 German Campaign Final',471,NULL,NULL),(253,'UK43 German Scen2 Final',472,NULL,NULL),(254,'UK43 German Scen3 Final',473,NULL,NULL),(255,'UK43 Soviet Campaign Final',477,NULL,NULL),(256,'UK43 Soviet Scen2 Final',478,NULL,NULL),(257,'UK43 Soviet Scen3 Final',479,NULL,NULL),(258,'UK43-MAP-2015',474,NULL,NULL),(259,'UK43-PAC-FINAL-pg1',475,NULL,NULL),(260,'UK43-PAC-FINAL-pg2',476,NULL,NULL),(261,'Voronezh-RH',480,481,NULL),(262,'VPs_x1',484,485,NULL),(263,'VPs_x10',482,483,NULL),(264,'Weather Chart Final',486,NULL,NULL),(265,'Weather',487,NULL,NULL),(266,'YellowSmallBox Flipped',488,NULL,NULL);
/*!40000 ALTER TABLE `ChitStatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chits`
--

DROP TABLE IF EXISTS `chits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chits` (
  `id` int(11) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chits`
--

LOCK TABLES `chits` WRITE;
/*!40000 ALTER TABLE `chits` DISABLE KEYS */;
INSERT INTO `chits` VALUES (1,'Arrow-3.gif'),(2,'Arrow-4.png'),(3,'CentralFront-f.png'),(4,'Central-RH-f.png'),(5,'Central-RH-r.png'),(6,'CM Icon.png'),(7,'CombatArrowNS.png'),(8,'CombatResult-blank Flipped.png'),(9,'Cover 300.jpg'),(10,'CZ-17-1Czech-f.png'),(11,'DDResult-No(-1 Step).png'),(12,'DDResult-No.png'),(13,'DDResult-Yes(-1 Step).png'),(14,'DDResult-Yes(EX).png'),(15,'Disrupted-1-f.png'),(16,'Disrupted-1-r.png'),(17,'EmergencySupply-1-f.png'),(18,'EmergencySupply-1-r.png'),(19,'GameTurn-f.png'),(20,'GameTurn-r.png'),(21,'GE-10S-101Jaeg-f.png'),(22,'GE-10S-101Jaeg-r.png'),(23,'GE-11S-79-f.png'),(24,'GE-11S-79-r.png'),(25,'GE-12N-20Pzg-f.png'),(26,'GE-12N-20Pzg-REM.png'),(27,'GE-12N-20Pzg-r.png'),(28,'GE-13W-389-f.png'),(29,'GE-13W-389-r.png'),(30,'GE-14N-123_293-f.png'),(31,'GE-14N-123_293-r.png'),(32,'GE-14W-24Pz-f.png'),(33,'GE-14W-24Pz-REM.png'),(34,'GE-14W-24Pz-r.png'),(35,'GE-15S-97Jaeg-f.png'),(36,'GE-15S-97Jaeg-r.png'),(37,'GE-17S-14Pz-f.png'),(38,'GE-17S-14Pz-REM.png'),(39,'GE-17S-14Pz-r.png'),(40,'GE-18W-509Tiger-f.png'),(41,'GE-19W-2Para-f.png'),(42,'GE-19W-2Para-r.png'),(43,'GE-1N-221SEC-f.png'),(44,'GE-1P-5W-f.png'),(45,'GE-1P-5W-REM.png'),(46,'GE-1P-5W-r.png'),(47,'GE-1Pz-15-f.png'),(48,'GE-1Pz-15-r.png'),(49,'GE-1Pz-17Pz-f.png'),(50,'GE-1Pz-17Pz-REM.png'),(51,'GE-1Pz-17Pz-r.png'),(52,'GE-1Pz-198-f.png'),(53,'GE-1Pz-198-r.png'),(54,'GE-1Pz-257-f.png'),(55,'GE-1Pz-257-r.png'),(56,'GE-1Pz-328-f.png'),(57,'GE-1Pz-328-r.png'),(58,'GE-1Pz-333-f.png'),(59,'GE-1Pz-333-r.png'),(60,'GE-1Pz-38_62-f.png'),(61,'GE-1Pz-38_62-r.png'),(62,'GE-1Pz-387-f.png'),(63,'GE-1Pz-387-r.png'),(64,'GE-1Pz-3Pz-f.png'),(65,'GE-1Pz-3Pz-REM.png'),(66,'GE-1Pz-3Pz-r.png'),(67,'GE-1Pz-46-f.png'),(68,'GE-1Pz-46-r.png'),(69,'GE-20W-25Pz-f.png'),(70,'GE-20W-25Pz-REM.png'),(71,'GE-20W-25Pz-r.png'),(72,'GE-21W-1LAH-f.png'),(73,'GE-21W-1LAH-REM.png'),(74,'GE-21W-1LAH-r.png'),(75,'GE-2A-327-f.png'),(76,'GE-2A-327-r.png'),(77,'GE-2A-340-f.png'),(78,'GE-2A-340-r.png'),(79,'GE-2A-68-f.png'),(80,'GE-2A-68-r.png'),(81,'GE-2A-75-f.png'),(82,'GE-2A-75-r.png'),(83,'GE-2A-88-f.png'),(84,'GE-2A-88-r.png'),(85,'GE-2N-34-f.png'),(86,'GE-2N-34-r.png'),(87,'GE-3N-GD-f.png'),(88,'GE-3N-GD-r.png'),(89,'GE-4N-4Pz_9Pz-f.png'),(90,'GE-4N-4Pz_9Pz-REM.png'),(91,'GE-4N-4Pz_9Pz-r.png'),(92,'GE-4N-82-f.png'),(93,'GE-4N-82-r.png'),(94,'GE-4Pz-11Pz-f.png'),(95,'GE-4Pz-11Pz-REM.png'),(96,'GE-4Pz-11Pz-r.png'),(97,'GE-4Pz-167-f.png'),(98,'GE-4Pz-167-r.png'),(99,'GE-4Pz-19Pz-f.png'),(100,'GE-4Pz-19Pz-REM.png'),(101,'GE-4Pz-19Pz-r.png'),(102,'GE-4Pz-255-f.png'),(103,'GE-4Pz-255-r.png'),(104,'GE-4Pz-332-f.png'),(105,'GE-4Pz-332-r.png'),(106,'GE-4Pz-57-f.png'),(107,'GE-4Pz-57-r.png'),(108,'GE-4Pz-7Pz-f.png'),(109,'GE-4Pz-7Pz-REM.png'),(110,'GE-4Pz-7Pz-r.png'),(111,'GE-5N-10Pzg-f.png'),(112,'GE-5N-10Pzg-REM.png'),(113,'GE-5N-10Pzg-r.png'),(114,'GE-5N-183_208-f.png'),(115,'GE-5N-183_208-r.png'),(116,'GE-6A-111-f.png'),(117,'GE-6A-111-r.png'),(118,'GE-6A-16Pzg-f.png'),(119,'GE-6A-16Pzg-REM.png'),(120,'GE-6A-16Pzg-r.png'),(121,'GE-6A-17-f.png'),(122,'GE-6A-17-r.png'),(123,'GE-6A-23Pz-f.png'),(124,'GE-6A-23Pz-REM.png'),(125,'GE-6A-23Pz-r.png'),(126,'GE-6A-294_335-f.png'),(127,'GE-6A-294_335-r.png'),(128,'GE-6A-2DR-f.png'),(129,'GE-6A-2DR-REM.png'),(130,'GE-6A-2DR-r.png'),(131,'GE-6A-302-f.png'),(132,'GE-6A-302-r.png'),(133,'GE-6A-304_306-f.png'),(134,'GE-6A-304_306-r.png'),(135,'GE-6A-336-f.png'),(136,'GE-6A-336-r.png'),(137,'GE-6A-3Mo-f.png'),(138,'GE-6A-3Mo-r.png'),(139,'GE-6A-3T-f.png'),(140,'GE-6A-3T-REM.png'),(141,'GE-6A-3T-r.png'),(142,'GE-6N-112_251-f.png'),(143,'GE-6N-112_251-r.png'),(144,'GE-6W-8Cav-f.png'),(145,'GE-6W-8Cav-r.png'),(146,'GE-7S-13Pz-f.png'),(147,'GE-7S-13Pz-REM.png'),(148,'GE-7S-13Pz-r.png'),(149,'GE-8A-106-f.png'),(150,'GE-8A-106-r.png'),(151,'GE-8A-161-f.png'),(152,'GE-8A-161-r.png'),(153,'GE-8A-168-f.png'),(154,'GE-8A-168-r.png'),(155,'GE-8A-282-f.png'),(156,'GE-8A-282-r.png'),(157,'GE-8A-320-f.png'),(158,'GE-8A-320-r.png'),(159,'GE-8A-39-f.png'),(160,'GE-8A-39-r.png'),(161,'GE-8A-6Pz-f.png'),(162,'GE-8A-6Pz-REM.png'),(163,'GE-8A-6Pz-r.png'),(164,'GE-8N-8Pz-f.png'),(165,'GE-8N-8Pz-REM.png'),(166,'GE-8N-8Pz-r.png'),(167,'GE-8S-125-f.png'),(168,'GE-8S-125-r.png'),(169,'GE-Air1-f.png'),(170,'GE-Air1-r.png'),(171,'GE-Air2-f.png'),(172,'GE-Air2-r.png'),(173,'GE-Dn-444SEC-f.png'),(174,'GE-E-228Stug-f.png'),(175,'GE-E-239StugA-f.png'),(176,'GE-E-239StugB-f.png'),(177,'GE-E-243Stug-f.png'),(178,'GE-Fort-1-f.png'),(179,'GE-Fort-1-r.png'),(180,'GE Icon.png'),(181,'GE-K-503Tiger-f.png'),(182,'GE-K-911Stug-f.png'),(183,'GE-Kv-218SEC-f.png'),(184,'GE-Leader-Manstein-f.png'),(185,'GE-Leader-Manstein-r.png'),(186,'GE-Po-213SEC-f.png'),(187,'GE-REM-GD-f.png'),(188,'GE-REM-Para-f.png'),(189,'GE-Za-454SEC-f.png'),(190,'HUN-2A-1H-f.png'),(191,'HUN-2A-1H-r.png'),(192,'Markers Icon.png'),(193,'OutOfSupply-1-f.png'),(194,'OutOfSupply-1-r.png'),(195,'RailMove-1-f.png'),(196,'Remove CM Icon.png'),(197,'ReplMarker-1-f.png'),(198,'RiverAssault-1-f.png'),(199,'RiverAssault-1-r.png'),(200,'RO-18S-4R-f.png'),(201,'RO-18S-4R-r.png'),(202,'RO-9Odessa-24R-f.png'),(203,'RO-9Odessa-24R-r.png'),(204,'SLO-16S-1Slov-f.png'),(205,'SLO-16S-1Slov-r.png'),(206,'South1-RH-f.png'),(207,'South1-RH-r.png'),(208,'South2-RH-f.png'),(209,'South2-RH-r.png'),(210,'SOV-10-19Tank-f.png'),(211,'SOV-10-19Tank-r.png'),(212,'SOV-10-20Tank-f.png'),(213,'SOV-10-20Tank-r.png'),(214,'SOV-11-3GdsTankHQ-f.png'),(215,'SOV-11-6GdsTank-f.png'),(216,'SOV-11-6GdsTank-r.png'),(217,'SOV-11-7GdsTank-f.png'),(218,'SOV-11-7GdsTank-r.png'),(219,'SOV-11-7Mech-f.png'),(220,'SOV-11-7Mech-REM.png'),(221,'SOV-11-7Mech-r.png'),(222,'SOV-12-108_109Gds-f.png'),(223,'SOV-12-108_109Gds-r.png'),(224,'SOV-13-6_70Gds-f.png'),(225,'SOV-13-6_70Gds-r.png'),(226,'SOV-16-9Mech-f.png'),(227,'SOV-16-9Mech-REM.png'),(228,'SOV-16-9Mech-r.png'),(229,'SOV-2-136_254-f.png'),(230,'SOV-2-136_254-r.png'),(231,'SOV-3-294_295-f.png'),(232,'SOV-3-294_295-r.png'),(233,'SOV-4-3GdsTank-f.png'),(234,'SOV-4-3GdsTank-r.png'),(235,'SOV-4-5A_7AGds-f.png'),(236,'SOV-4-5A_7AGds-r.png'),(237,'SOV-4-8A_80Gds-f.png'),(238,'SOV-4-8A_80Gds-r.png'),(239,'SOV-5-11Tank-f.png'),(240,'SOV-5-11Tank-r.png'),(241,'SOV-6-373_417-f.png'),(242,'SOV-6-373_417-r.png'),(243,'SOV-7-301_328-f.png'),(244,'SOV-7-301_328-r.png'),(245,'SOV-8-216_257-f.png'),(246,'SOV-8-216_257-r.png'),(247,'SOV-9-5GdsCav-f.png'),(248,'SOV-9-5GdsCav-r.png'),(249,'SOV-A-1GdsAbne-f.png'),(250,'SOV-A-2GdsAbne-f.png'),(251,'SOV-A-5GdsAbne-f.png'),(252,'SOV-Air1-f.png'),(253,'SOV-Air1-r.png'),(254,'SOV-Air2-f.png'),(255,'SOV-Air2-r.png'),(256,'SovControl-1-f.png'),(257,'SovControl-1-r.png'),(258,'SOV-E-140-f.png'),(259,'SOV-E-173T34-f.png'),(260,'SOV-E-266_279-f.png'),(261,'SOV-E-266_279-r.png'),(262,'SOV-E-27GdsT34-f.png'),(263,'SOV-E-68_69Gds-f.png'),(264,'SOV-E-68_69Gds-r.png'),(265,'SOV-E-6T34Gds-f.png'),(266,'SOV-Fort-1-f.png'),(267,'SOV-Fort-1-r.png'),(268,'SOV Icon.png'),(269,'SOV-Ku-K-3GdsArty-f.png'),(270,'SOV-Ku-K-3GdsArty-r.png'),(271,'SOV-Leader-Zhukov-f.png'),(272,'SOV-Leader-Zhukov-r.png'),(273,'SOV-S-118_127-f.png'),(274,'SOV-S-118_127-r.png'),(275,'SOV-S-126_221-f.png'),(276,'SOV-S-126_221-r.png'),(277,'SOV-S-130_151-f.png'),(278,'SOV-S-130_151-r.png'),(279,'SOV-S-24_33Gds-f.png'),(280,'SOV-S-24_33Gds-r.png'),(281,'SOV-S-248_416-f.png'),(282,'SOV-S-248_416-r.png'),(283,'SOV-S-2GdsMech-f.png'),(284,'SOV-S-2GdsMech-REM.png'),(285,'SOV-S-2GdsMech-r.png'),(286,'SOV-S-315_271-f.png'),(287,'SOV-S-315_271-r.png'),(288,'SOV-S-32T34Gds-f.png'),(289,'SOV-S-347_387-f.png'),(290,'SOV-S-347_387-r.png'),(291,'SOV-S-3Arty-f.png'),(292,'SOV-S-3Arty-r.png'),(293,'SOV-S-40_96Gds-f.png'),(294,'SOV-S-40_96Gds-r.png'),(295,'SOV-S-4_34Gds-f.png'),(296,'SOV-S-4_34Gds-r.png'),(297,'SOV-S-43S-f.png'),(298,'SOV-S-49_87Gds-f.png'),(299,'SOV-S-49_87Gds-r.png'),(300,'SOV-S-4GdsCav-f.png'),(301,'SOV-S-4GdsCav-r.png'),(302,'SOV-S-4GdsMech-f.png'),(303,'SOV-S-4GdsMech-REM.png'),(304,'SOV-S-4GdsMech-r.png'),(305,'SOV-S-50_54Gds-f.png'),(306,'SOV-S-50_54Gds-r.png'),(307,'SOV-S-5ShockHQ-f.png'),(308,'SOV-S-78_116-f.png'),(309,'SOV-S-78_116-r.png'),(310,'SOV-S-86_3Gds-f.png'),(311,'SOV-S-86_3Gds-r.png'),(312,'SOV-S-91_87-f.png'),(313,'SOV-S-91_87-r.png'),(314,'SOV-S-99_346-f.png'),(315,'SOV-S-99_346-r.png'),(316,'SOV-S-KV-3Gds-f.png'),(317,'SOV-St-107_183-f.png'),(318,'SOV-St-107_183-r.png'),(319,'SOV-St-111_213-f.png'),(320,'SOV-St-111_213-r.png'),(321,'SOV-St-15_28Gds-f.png'),(322,'SOV-St-15_28Gds-r.png'),(323,'SOV-St-16Arty-f.png'),(324,'SOV-St-16Arty-r.png'),(325,'SOV-St-1Mech-f.png'),(326,'SOV-St-1Mech-REM.png'),(327,'SOV-St-1Mech-r.png'),(328,'SOV-St-201T34-f.png'),(329,'SOV-St-214_233-f.png'),(330,'SOV-St-214_233-r.png'),(331,'SOV-St-252_299-f.png'),(332,'SOV-St-252_299-r.png'),(333,'SOV-St-305_375-f.png'),(334,'SOV-St-305_375-r.png'),(335,'SOV-St-36_72Gds-f.png'),(336,'SOV-St-36_72Gds-r.png'),(337,'SOV-St-73_89Gds-f.png'),(338,'SOV-St-73_89Gds-r.png'),(339,'SOV-St-80_81Gds-f.png'),(340,'SOV-St-80_81Gds-r.png'),(341,'SOV-St-84_116-f.png'),(342,'SOV-St-84_116-r.png'),(343,'SOV-St-SU-3-f.png'),(344,'SOV-SW-11T34-f.png'),(345,'SOV-SW-14_35Gds-f.png'),(346,'SOV-SW-14_35Gds-r.png'),(347,'SOV-SW-152_263-f.png'),(348,'SOV-SW-152_263-r.png'),(349,'SOV-SW-172_333-f.png'),(350,'SOV-SW-172_333-r.png'),(351,'SOV-SW-195_259-f.png'),(352,'SOV-SW-195_259-r.png'),(353,'SOV-SW-1GdsMech-f.png'),(354,'SOV-SW-1GdsMech-REM.png'),(355,'SOV-SW-1GdsMech-r.png'),(356,'SOV-SW-20_38Gds-f.png'),(357,'SOV-SW-20_38Gds-r.png'),(358,'SOV-SW-23Tank-f.png'),(359,'SOV-SW-23Tank-r.png'),(360,'SOV-SW-24_203-f.png'),(361,'SOV-SW-24_203-r.png'),(362,'SOV-SW-243_279-f.png'),(363,'SOV-SW-243_279-r.png'),(364,'SOV-SW-244_350-f.png'),(365,'SOV-SW-244_350-r.png'),(366,'SOV-SW-267_288-f.png'),(367,'SOV-SW-267_288-r.png'),(368,'SOV-SW-41_47Gds-f.png'),(369,'SOV-SW-41_47Gds-r.png'),(370,'SOV-SW-44_57Gds-f.png'),(371,'SOV-SW-44_57Gds-r.png'),(372,'SOV-SW-50_78-f.png'),(373,'SOV-SW-50_78-r.png'),(374,'SOV-SW-58_59Gds-f.png'),(375,'SOV-SW-58_59Gds-r.png'),(376,'SOV-SW-5GdsMot-f.png'),(377,'SOV-SW-60_61Gds-f.png'),(378,'SOV-SW-60_61Gds-r.png'),(379,'SOV-SW-78_79Gds-f.png'),(380,'SOV-SW-78_79Gds-r.png'),(381,'SOV-SW-7_9_11Arty-f.png'),(382,'SOV-SW-7_9_11Arty-r.png'),(383,'SOV-SW-IGdsCav-f.png'),(384,'SOV-SW-IGdsCav-r.png'),(385,'SOV-SW-KV-BGds-f.png'),(386,'SOV-SW-T34-3-f.png'),(387,'SOV-V-100_161-f.png'),(388,'SOV-V-100_161-r.png'),(389,'SOV-V-10Tank-f.png'),(390,'SOV-V-10Tank-r.png'),(391,'SOV-V-13_9AGds-f.png'),(392,'SOV-V-13_9AGds-r.png'),(393,'SOV-V-13Arty-f.png'),(394,'SOV-V-13Arty-r.png'),(395,'SOV-V-147_155-f.png'),(396,'SOV-V-147_155-r.png'),(397,'SOV-V-163_166-f.png'),(398,'SOV-V-163_166-r.png'),(399,'SOV-V-167_232-f.png'),(400,'SOV-V-167_232-r.png'),(401,'SOV-V-17Arty-f.png'),(402,'SOV-V-17Arty-r.png'),(403,'SOV-V-180_240-f.png'),(404,'SOV-V-180_240-r.png'),(405,'SOV-V-18Tank-f.png'),(406,'SOV-V-18Tank-r.png'),(407,'SOV-V-1TankHQ-f.png'),(408,'SOV-V-206_237-f.png'),(409,'SOV-V-206_237-r.png'),(410,'SOV-V-218_337-f.png'),(411,'SOV-V-218_337-r.png'),(412,'SOV-V-23_29-f.png'),(413,'SOV-V-23_29-r.png'),(414,'SOV-V-241_340-f.png'),(415,'SOV-V-241_340-r.png'),(416,'SOV-V-29Tank-f.png'),(417,'SOV-V-29Tank-r.png'),(418,'SOV-V-2Tank-f.png'),(419,'SOV-V-2Tank-r.png'),(420,'SOV-V-30_38-f.png'),(421,'SOV-V-30_38-r.png'),(422,'SOV-V-31Tank-f.png'),(423,'SOV-V-31Tank-r.png'),(424,'SOV-V-3GdsMArty-f.png'),(425,'SOV-V-3GdsMArty-r.png'),(426,'SOV-V-3GdsMech-f.png'),(427,'SOV-V-3GdsMech-REM.png'),(428,'SOV-V-3GdsMech-r.png'),(429,'SOV-V-3Mech-f.png'),(430,'SOV-V-3Mech-REM.png'),(431,'SOV-V-3Mech-r.png'),(432,'SOV-V-42_71Gds-f.png'),(433,'SOV-V-42_71Gds-r.png'),(434,'SOV-V-4GdsTank-f.png'),(435,'SOV-V-4GdsTank-r.png'),(436,'SOV-V-51_52Gds-f.png'),(437,'SOV-V-51_52Gds-r.png'),(438,'SOV-V-5GdsMech-f.png'),(439,'SOV-V-5GdsMech-REM.png'),(440,'SOV-V-5GdsMech-r.png'),(441,'SOV-V-5GdsTank-f.png'),(442,'SOV-V-5GdsTankHQ-f.png'),(443,'SOV-V-5GdsTank-r.png'),(444,'SOV-V-65-f.png'),(445,'SOV-V-66_67Gds-f.png'),(446,'SOV-V-66_67Gds-r.png'),(447,'SOV-V-6Tank-f.png'),(448,'SOV-V-6Tank-r.png'),(449,'SOV-V-71_375-f.png'),(450,'SOV-V-71_375-r.png'),(451,'SOV-V-75-f.png'),(452,'SOV-V-86-f.png'),(453,'SOV-V-90_47Gds-f.png'),(454,'SOV-V-90_47Gds-r.png'),(455,'SOV-V-95_97Gds-f.png'),(456,'SOV-V-95_97Gds-r.png'),(457,'SOV-V-96T34-f.png'),(458,'SOV-V-K-1GdsArty-f.png'),(459,'SOV-V-K-1GdsArty-r.png'),(460,'SOV-V-K-2GdsArty-f.png'),(461,'SOV-V-K-2GdsArty-r.png'),(462,'SOV-V-KV-AGds-f.png'),(463,'SOV-V-SU-1-f.png'),(464,'SOV-V-SU-2-f.png'),(465,'SOV-V-T34-1-f.png'),(466,'SoWest-RH-f.png'),(467,'SoWest-RH-r.png'),(468,'Steppe-RH-f.png'),(469,'Steppe-RH-r.png'),(470,'TU-Ko-Turk-f.png'),(471,'UK43 German Campaign Final.jpg'),(472,'UK43 German Scen2 Final.jpg'),(473,'UK43 German Scen3 Final.jpg'),(474,'UK43-MAP-2015.jpg'),(475,'UK43-PAC-FINAL-pg1.png'),(476,'UK43-PAC-FINAL-pg2.png'),(477,'UK43 Soviet Campaign Final.jpg'),(478,'UK43 Soviet Scen2 Final.jpg'),(479,'UK43 Soviet Scen3 Final.jpg'),(480,'Voronezh-RH-f.png'),(481,'Voronezh-RH-r.png'),(482,'VPs_x10-f.png'),(483,'VPs_x10-r.png'),(484,'VPs_x1-f.png'),(485,'VPs_x1-r.png'),(486,'Weather Chart Final.png'),(487,'Weather-f.png'),(488,'YellowSmallBox Flipped.png');
/*!40000 ALTER TABLE `chits` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-20 22:11:23
