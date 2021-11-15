-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: cs336db.cupto20i6ymu.us-east-2.rds.amazonaws.com    Database: users
-- ------------------------------------------------------
-- Server version	8.0.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `customer` (
  `email_address` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `last_name` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `first_name` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`email_address`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('001@gmail.com','J','K');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `customerRevenue`
--

DROP TABLE IF EXISTS `customerRevenue`;
/*!50001 DROP VIEW IF EXISTS `customerRevenue`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `customerRevenue` AS SELECT 
 1 AS `passenger`,
 1 AS `totalRevenue`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employee` (
  `ssn` int NOT NULL DEFAULT '0',
  `last_name` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `first_name` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `username` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `password` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`ssn`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (66666,'yalin','yalin',NULL,NULL),(666,'liu','yujia',NULL,NULL),(1111111,'yujia','yujia',NULL,NULL);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `make`
--

DROP TABLE IF EXISTS `make`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `make` (
  `reservation_number` int NOT NULL DEFAULT '0',
  `email_address` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`reservation_number`) USING BTREE,
  KEY `email_address` (`email_address`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `make`
--

LOCK TABLES `make` WRITE;
/*!40000 ALTER TABLE `make` DISABLE KEYS */;
INSERT INTO `make` VALUES (1,'001@gmail.com');
/*!40000 ALTER TABLE `make` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ownaccount`
--

DROP TABLE IF EXISTS `ownaccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ownaccount` (
  `username` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `password` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `reservation_portfolio` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `email_address` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`username`) USING BTREE,
  KEY `email_address` (`email_address`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ownaccount`
--

LOCK TABLES `ownaccount` WRITE;
/*!40000 ALTER TABLE `ownaccount` DISABLE KEYS */;
/*!40000 ALTER TABLE `ownaccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `question` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question_user_id` int DEFAULT NULL,
  `question` varchar(2000) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `question_date` datetime DEFAULT NULL,
  `answer_user_id` int DEFAULT NULL,
  `answer` varchar(2000) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `answer_date` datetime DEFAULT NULL,
  `resolved` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `star` int DEFAULT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (-1,1,'How to make 100 million','2020-12-15 10:35:58',1,'dream','2020-12-16 16:54:00','Y',1,'2020-12-16 16:54:00',0),(-2,1,'What time does the train to New York leave?','2020-12-13 10:37:06',1,'yesterday','2020-12-16 10:37:20','Y',3,'2020-12-16 10:37:27',1),(6,1,'11111','2020-12-16 11:54:55',1,'my answer','2020-12-16 16:51:06','Y',NULL,'2020-12-16 16:51:06',NULL),(5,1,'1111','2020-12-16 11:53:47',1,'my answer','2020-12-16 15:56:41','Y',NULL,'2020-12-16 15:56:41',NULL),(4,1,'question','2020-12-16 11:38:14',1,'','2020-12-16 16:28:44','Y',NULL,'2020-12-16 16:28:44',NULL),(7,1,'sss','2020-12-16 11:57:06',1,'','2020-12-16 16:28:43','Y',NULL,'2020-12-16 16:28:43',NULL),(8,1,'jslfaljlsdf;a','2020-12-16 11:58:04',1,'','2020-12-16 16:37:18','Y',NULL,'2020-12-16 16:37:18',NULL),(10,1,'1231231231','2020-12-16 12:03:53',1,'this is an answer','2020-12-16 16:56:45','Y',NULL,'2020-12-16 16:56:45',NULL),(11,1,'1231','2020-12-16 12:07:23',1,'aa','2020-12-16 18:14:59','Y',NULL,'2020-12-16 18:14:59',NULL),(12,1,'abcdefghijklmnopqrstuvwxyz','2020-12-16 18:14:03',1,'aaaaa','2020-12-16 18:14:16','Y',NULL,'2020-12-16 18:14:16',NULL),(13,1,'fadfadf11111111','2020-12-16 18:15:07',1,'asdf','2020-12-16 20:31:28','Y',NULL,'2020-12-16 20:31:28',NULL),(14,1,'soamfmfmfm','2020-12-16 21:51:55',1,'fjlallffl','2020-12-16 21:52:05','Y',NULL,'2020-12-16 21:52:05',NULL),(15,1,'3333','2020-12-17 15:17:02',1,'DREAM','2020-12-17 21:06:17','Y',NULL,'2020-12-17 21:06:17',NULL),(16,1,'HOW TO HAVE AN A+','2020-12-17 21:04:14',1,'DREAM','2020-12-17 21:05:57','Y',NULL,'2020-12-17 21:05:57',NULL);
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservereservation`
--

DROP TABLE IF EXISTS `reservereservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `reservereservation` (
  `reservation_number` int NOT NULL DEFAULT '0',
  `train_ID` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `passenger` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `total_fare` double DEFAULT NULL,
  `travel_date` date DEFAULT NULL,
  `transit_line_name` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`reservation_number`) USING BTREE,
  KEY `train_ID` (`train_ID`,`transit_line_name`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservereservation`
--

LOCK TABLES `reservereservation` WRITE;
/*!40000 ALTER TABLE `reservereservation` DISABLE KEYS */;
INSERT INTO `reservereservation` VALUES (1,'1','user001',100,'2020-12-15','NYC - Philly'),(2,'1','123',100,'2020-12-15','NYC - Philly'),(3,'3','123',200,'2021-11-17','A - D'),(14,'2','123',60,'2020-12-17','A - B'),(950,'4','123',50,'2020-12-17','D - A'),(190,'3','123',50,'2020-12-17','A - D'),(555,'6','1',150,'2020-12-17','Q - O'),(600,'6','1',75,'2020-12-17','Q - O'),(843,'6','123',150,'2020-12-17','Q - O'),(881,'6','1',75,'2021-12-17','O - Q'),(748,'5','1',300,'2020-12-17','O - Q'),(218,'6','1',300,'2020-12-17','Q - O');
/*!40000 ALTER TABLE `reservereservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `station`
--

DROP TABLE IF EXISTS `station`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `station` (
  `station_ID` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `city` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `state` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `name` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`station_ID`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `station`
--

LOCK TABLES `station` WRITE;
/*!40000 ALTER TABLE `station` DISABLE KEYS */;
INSERT INTO `station` VALUES ('1','New York','1','New York'),('2','Princeton','1','Princeton'),('3','Philadelphia','1','Philadelphia'),('4','A','1','A'),('5','B','1','B'),('6','C','1','C'),('7','D','1','D'),('10','Q','1','Q'),('9','P','1','P'),('8','O','1','O');
/*!40000 ALTER TABLE `station` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stops`
--

DROP TABLE IF EXISTS `stops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `stops` (
  `train_ID` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `transit_line_name` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `station_ID` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `departure` datetime DEFAULT NULL,
  `arrival` datetime DEFAULT NULL,
  `orders` int DEFAULT NULL,
  PRIMARY KEY (`train_ID`,`transit_line_name`,`station_ID`) USING BTREE,
  KEY `station_ID` (`station_ID`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stops`
--

LOCK TABLES `stops` WRITE;
/*!40000 ALTER TABLE `stops` DISABLE KEYS */;
INSERT INTO `stops` VALUES ('1','NYC - Philly','1','2020-12-15 22:01:55','2020-12-15 22:01:51',1),('1','NYC - Philly','2','2020-12-15 22:02:55','2020-12-15 22:02:06',2),('1','NYC - Philly','3','2020-12-15 22:02:55','2020-12-16 22:02:17',3),('2','A - B','4','2020-12-16 01:57:50','2020-12-17 01:57:20',1),('2','A - B','5','2020-12-17 02:10:13','2020-12-18 02:00:17',2),('3','A - D','5','2021-11-18 03:10:13','2021-11-18 04:56:13',2),('3','A - D','6','2021-11-18 13:20:13','2021-11-18 13:10:13',3),('3','A - D','7','2021-11-18 17:20:13','2021-11-18 17:10:13',4),('3','A - D','4','2021-11-17 02:00:50','2021-11-17 02:00:00',1),('4','D - A','7','2021-11-17 09:10:13','2021-11-17 09:00:13',1),('4','D - A','4','2021-11-19 09:30:13','2021-11-19 09:10:13',4),('4','D - A','6','2021-11-17 13:00:13','2021-11-17 12:00:13',2),('4','D - A','5','2021-11-18 11:00:13','2021-11-18 10:00:13',3),('5','O - Q','8','2020-12-17 02:10:13','2020-12-17 02:09:13',1),('5','O - Q','9','2020-12-17 06:10:13','2020-12-17 05:10:13',2),('5','O - Q','10','2020-12-18 02:11:13','2020-12-18 02:10:13',3),('6','Q - O','10','2021-12-17 02:10:13','2021-12-17 02:09:13',1),('6','Q - O','9','2021-12-17 04:10:13','2021-12-17 03:10:13',2),('6','Q - O','8','2021-12-17 09:10:50','2021-12-17 09:10:13',3),('7','NYC - Philly','1','2021-12-15 22:01:47','2021-12-15 22:01:00',1),('7','NYC - Philly','2','2021-12-15 22:03:01','2021-12-15 22:02:06',2),('7','NYC - Philly','3','2021-12-16 22:02:13','2021-12-16 22:02:17',3);
/*!40000 ALTER TABLE `stops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `traininformation`
--

DROP TABLE IF EXISTS `traininformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `traininformation` (
  `train_ID` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `train_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `transit_line_name` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `origin` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `destination` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `travel_time` varchar(0) DEFAULT NULL,
  `num_stops` int DEFAULT NULL,
  `fare` double DEFAULT NULL,
  PRIMARY KEY (`train_ID`,`transit_line_name`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `traininformation`
--

LOCK TABLES `traininformation` WRITE;
/*!40000 ALTER TABLE `traininformation` DISABLE KEYS */;
INSERT INTO `traininformation` VALUES ('1','train001','NYC - Philly','New York','Philadelphia',NULL,2,444),('2','train002','A - B','A','B','',1,600),('3','train003','A - D','A','D','',3,300),('7','train006','NYC - Philly','New York','Philadelphia',NULL,2,444),('6','train006','Q - O','Q','O',NULL,2,600),('5','train005','O - Q','O','Q',NULL,2,600),('4','train004','D - A','D','A',NULL,3,300);
/*!40000 ALTER TABLE `traininformation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `id` varchar(20) NOT NULL,
  `pw` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('1','root'),('11','111'),('123','123456'),('yj','111'),('yl','111'),('user001','111'),('user002','111'),('user003','111'),('user004','111'),('liuyalin','123456');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workon`
--

DROP TABLE IF EXISTS `workon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `workon` (
  `station_ID` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `ssn` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`station_ID`,`ssn`) USING BTREE,
  KEY `ssn` (`ssn`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workon`
--

LOCK TABLES `workon` WRITE;
/*!40000 ALTER TABLE `workon` DISABLE KEYS */;
INSERT INTO `workon` VALUES ('1',1);
/*!40000 ALTER TABLE `workon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `customerRevenue`
--

/*!50001 DROP VIEW IF EXISTS `customerRevenue`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`yalinliu`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `customerRevenue` AS select `reservereservation`.`passenger` AS `passenger`,sum(`reservereservation`.`total_fare`) AS `totalRevenue` from `reservereservation` group by `reservereservation`.`passenger` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-17 17:08:03
