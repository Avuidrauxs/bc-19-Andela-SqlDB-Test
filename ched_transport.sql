-- MySQL dump 10.14  Distrib 5.5.50-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: transport_a
-- ------------------------------------------------------
-- Server version	5.5.50-MariaDB

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
-- Table structure for table `battery`
--

DROP TABLE IF EXISTS `battery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `battery` (
  `car_id` varchar(25) NOT NULL,
  `batt_brand` varchar(25) DEFAULT NULL,
  `date_ins` datetime DEFAULT NULL,
  `voltage` int(10) DEFAULT NULL,
  PRIMARY KEY (`car_id`),
  CONSTRAINT `battery_ibfk_1` FOREIGN KEY (`car_id`) REFERENCES `car` (`car_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `battery`
--

LOCK TABLES `battery` WRITE;
/*!40000 ALTER TABLE `battery` DISABLE KEYS */;
INSERT INTO `battery` VALUES ('D001','fssdfsa','2017-01-20 00:00:00',250);
/*!40000 ALTER TABLE `battery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car` (
  `car_id` varchar(25) NOT NULL,
  `chassis_no` varchar(100) NOT NULL,
  `number_plate` varchar(25) DEFAULT NULL,
  `car_type` varchar(70) DEFAULT NULL,
  `car_model` varchar(25) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `date_received` datetime DEFAULT NULL,
  `regions` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`car_id`),
  UNIQUE KEY `chassis_no` (`chassis_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car`
--

LOCK TABLES `car` WRITE;
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
INSERT INTO `car` VALUES ('asfdf','safsafd','safd','Tipper Truck','Tipper Truck','safddf','2016-11-15 00:00:00',NULL),('D001','23232','GV-2234-15','Toyota','Hilux','Accra','2012-03-11 00:00:00',NULL),('safdef','safsfd','sfaf','Pickup','Pickup','sfaf','2017-01-19 00:00:00',NULL),('sdfsadf','sadfsdaf','sfsafd','Urvan','Urvan','sfdasf','2017-01-09 00:00:00',NULL);
/*!40000 ALTER TABLE `car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `driver` (
  `staff_id` int(12) NOT NULL,
  `name` text,
  `position` text,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver`
--

LOCK TABLES `driver` WRITE;
/*!40000 ALTER TABLE `driver` DISABLE KEYS */;
INSERT INTO `driver` VALUES (3001120,'AMEYIBOR  JOHNSON','Transport Officer'),(3001849,'ATTA  KWAME','Chief Driver'),(3026630,'HEKLI  NELSON','Chief Driver'),(3026689,'BALLEY  DANIEL','Principal Driver'),(3041241,'AKOSAH  CHARLES','Chief Driver'),(3047651,'MENSAH  JOSEPH COLLINS','Principal Driver'),(3047685,'MENSAH  ISAAC','Chief Driver'),(3049442,'KARIKARI  PHILIP','Chief Driver'),(3056306,'LAVOE  PETER','Chief Driver'),(3059607,'ANDOH  DEGRAFT JOHNSON','Chief Driver'),(3059714,'BAIDOO  SAMPSON','Chief Driver'),(3106705,'ASANTE  KWAME','Assistant Transport Officer'),(3108172,'QUARTSIN  ANDREWS','Assistant Transport Officer'),(3108180,'FOSU  KOFI SAMUEL','Chief Driver'),(3108230,'GYIMAH  ALEX','Principal Driver'),(3108297,'MINTAH  SAMUEL','Chief Driver'),(3109691,'ATTAMAH  MANASE K.','Chief Driver'),(3137346,'ASARE  JULIUS','Principal Security Guard'),(3137809,'YAMOAH  BERNARD','Assistant Transport Officer'),(3139144,'AMO  KWABENA','Principal Driver'),(3139995,'INCOOM  JOHN','Principal Driver'),(3140019,'OPPONG  OPRAH AUGUSTUS','Assistant Transport Officer'),(3140902,'OPPONG  AUGUSTINE','Assistant Transport Officer'),(3141033,'YAW  BIO','Principal Driver'),(3141488,'NUHU  MUNKAILA','Principal Driver'),(3141611,'GYAMFI  ADU','Prin.Transport Clerk'),(3141652,'AMEYAW  K. JOSEPH','Assistant Transport Officer'),(3141660,'PEASAH AMPONSAH  GEORGE','Principal Driver'),(3143500,'OWUSU ARYEH  BISMARK','Assistant Transport Officer'),(3143518,'AHMED NASSER  KWAME','Principal Driver'),(3152337,'ATTAH  FOSTER','Principal Driver'),(3152378,'RAHMAN ADAM  ABDUL','Principal Driver'),(3153517,'APREKO  STEPHEN','Principal Driver'),(3153905,'BOATENG  KINGSTINE','Assistant Transport Officer'),(3154051,'AYUUNE  CHARLES','Principal Driver'),(3154069,'ASSAH  AUGUSTINE','Principal Driver'),(3154077,'ALI  IBRAHIM','Assistant Transport Officer'),(3154234,'OBUOBI YEBOAH  ERIC','Principal Driver'),(3154515,'MENSAH  PETERKIN','Principal Driver'),(3154531,'EBO  EMMANUEL','Principal Driver'),(3200176,'TEI  KWAO','Principal Driver'),(3200185,'FOLI  PRECIOUS','Principal Driver'),(3200186,'KANDA  SETH','Principal Driver'),(3200188,'AGYIRI  FREDRICK','Principal Driver'),(3200190,'OBUOBI  ALEX','Principal Driver'),(3200191,'CHARWAY  ISAAC A','Principal Driver'),(3200199,'HOENYEFIA  REUBEN','Principal Driver'),(3200208,'DARKO CHARLES  VICTOR','Senior Driver'),(3200210,'TSAH  LAWSON','Principal Driver'),(3200213,'OSEI  YAW','Principal Driver'),(3200354,'ODAME  ISAAC','Senior Driver'),(3200382,'ANTWI  RICHARD','Senior Driver'),(3200390,'ADU-GYAMFI  MAXWELL','Senior Driver'),(3200397,'KWAKYE  SAMUEL','Senior Driver'),(3200406,'OSEI - TUTU  LAWRENCE','Senior Driver'),(3200709,'NYARKO  SAMUEL','Senior Driver'),(3200717,'ATUTORNU HUMPHERY  MAWUENA Y','Senior Driver'),(3200719,'ANNAN  ISAAC','Senior Driver'),(3200720,'DARKWA  JOHN','Senior Driver'),(3200726,'NTOW FRANCIS  DARKO','Senior Driver'),(3200727,'ACHEAMPONG  DAVID ADOMAKO','Senior Driver'),(3200732,'KODJIE  TEYE','Senior Driver'),(3200734,'ANTWI  BISMARK','Senior Driver'),(3200735,'APPEADU  FREDERICK','Senior Driver'),(3200737,'DUVOR  EMMANUEL','Senior Driver'),(3200746,'AMOAKO  NICHOLAS','Senior Driver'),(3200749,'ACQUAH  DOMINIC','Senior Driver'),(3200750,'MENSAH  PAUL','Senior Driver'),(3200751,'DJABEN  EDMUND','Senior Driver'),(3200752,'ADJEI  YAW','Senior Driver'),(3200754,'DIKIA  KWABENA','Senior Driver'),(3200761,'ADZIWOE  EMMANUEL','Senior Driver'),(3200768,'AKOSAH  ERNEST','Senior Driver'),(3200769,'TUFFOUR  GABRIEL','Senior Driver'),(3200770,'NSIAH  ANTHONY','Senior Driver'),(3200773,'PAUL ADDO  NYARKO','Snr. Technical Asst.'),(3200774,'AFFUL  ISAAC IMBEAH','Senior Driver'),(3200796,'APPIAH  EDWARD AMOFA','Senior Driver'),(3201125,'SEGBEFIA  FRANCIS YAO','Prin.Transport Officer'),(3201237,'OTENG  ANDREW','Driver'),(3201250,'MOHAMMED  SAFIANU','Driver'),(3201274,'GYAMFI  KOFI','Driver'),(3201276,'OKYERE  ALBERT ADU','Driver'),(3201295,'ADJEI  PUAL BAAH',''),(3201296,'AWUNI  JOHN','Driver'),(3201300,'DANSO  BISMARK','Driver'),(3201301,'NTI  KWAKU','Driver'),(3201307,'OWUSU  DANIEL FRANK','Driver'),(3201309,'ACQUAH  ERNEST','Driver'),(3201311,'MENSAH-ABIWU  FRANK','Driver'),(3201316,'LARBI  ERIC','Driver'),(3201317,'BOAKYE  OHENE','Driver'),(3201320,'KOJO  TAKYI','Driver'),(3201337,'AYIPEH-ADDISON  DANIEL KOFI','Driver'),(3201341,'ASARE  GAD','Driver'),(3201611,'AYEH-KUMI  SAMUEL PASHINGTON','Driver'),(3201612,'AGYAPONG  FOSTER','Driver'),(3201613,'AWUDU  BALA','Driver'),(3201671,'OSEI  OWUSU','Driver'),(3201672,'OFOSU  FOSTER','Driver'),(3201673,'ACHEAMPONG  KWAME','Driver'),(3201693,'AKWEI  FELIX','Driver'),(3201710,'YEBOAH  ALEX','Driver'),(3201805,'MENSAH  FREDERICK','Driver'),(3201814,'OSEI  FREDRICK','Driver'),(3201817,'BARNIEH  JOE','Driver'),(3201818,'NYARKO  ENOCK','Driver'),(3201832,'APPIAH  STEPHEN','Driver'),(3201834,'DORVLO  NEWLOVE','Driver');
/*!40000 ALTER TABLE `driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maintenance`
--

DROP TABLE IF EXISTS `maintenance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maintenance` (
  `car_id` varchar(25) NOT NULL,
  `last_date` datetime DEFAULT NULL,
  `next_date` datetime DEFAULT NULL,
  `garage` varchar(100) DEFAULT NULL,
  `driver_id` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`car_id`),
  CONSTRAINT `maintenance_ibfk_1` FOREIGN KEY (`car_id`) REFERENCES `car` (`car_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maintenance`
--

LOCK TABLES `maintenance` WRITE;
/*!40000 ALTER TABLE `maintenance` DISABLE KEYS */;
INSERT INTO `maintenance` VALUES ('asfdf','2017-01-06 00:00:00','2017-04-06 00:00:00','kjlkhkhk','3001849'),('D001','2017-01-12 00:00:00','2017-04-12 00:00:00','safdfa',NULL),('sdfsadf','0000-00-00 00:00:00','0000-00-00 00:00:00','2017-11-05','3201834');
/*!40000 ALTER TABLE `maintenance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tyres`
--

DROP TABLE IF EXISTS `tyres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tyres` (
  `car_id` varchar(25) NOT NULL,
  `tyre_brand` varchar(25) DEFAULT NULL,
  `tyre_type` varchar(25) DEFAULT NULL,
  `tyre_size` int(5) DEFAULT NULL,
  `date_ins` datetime DEFAULT NULL,
  PRIMARY KEY (`car_id`),
  CONSTRAINT `tyres_ibfk_1` FOREIGN KEY (`car_id`) REFERENCES `car` (`car_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tyres`
--

LOCK TABLES `tyres` WRITE;
/*!40000 ALTER TABLE `tyres` DISABLE KEYS */;
INSERT INTO `tyres` VALUES ('D001','Michelin','Round',11,'0000-00-00 00:00:00'),('safdef','sadf','dsafsd',11,'2017-01-12 00:00:00'),('sdfsadf','sdafsdf','sdfaf',11,'2017-01-27 00:00:00');
/*!40000 ALTER TABLE `tyres` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-30 23:51:55
