CREATE DATABASE  IF NOT EXISTS `vishwablog` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `vishwablog`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: vishwablog
-- ------------------------------------------------------
-- Server version	5.7.20-log

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
-- Table structure for table `lifeblog`
--

DROP TABLE IF EXISTS `lifeblog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lifeblog` (
  `idlifeBlog` int(11) NOT NULL,
  `topic` varchar(200) NOT NULL,
  `author` varchar(45) DEFAULT NULL,
  `tags` varchar(45) DEFAULT NULL,
  `content` varchar(5000) DEFAULT NULL,
  `createdDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idlifeBlog`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lifeblog`
--

LOCK TABLES `lifeblog` WRITE;
/*!40000 ALTER TABLE `lifeblog` DISABLE KEYS */;
INSERT INTO `lifeblog` VALUES (1,'Welcome to my Life Blog','Vishwa','life','First of all I welcome you to my Life Blog Here i will share some of my life lessons and experiences which i feel one cant learn some from text book or traditional school and colleges.if you like it you can share with your friends on different platform and feel free to provide your constructive feedback.','2017-12-27 15:19:40'),(2,'Confidence Vs OverConfidence','Vishwa','life','Now when I had mastered the language of this water and had come to know every trifling feature that bordered the great river as familiarly as I knew the letters of the alphabet, I had made a valuable acquisition. I still keep in mind a certain wonderful sunset which I witnessed when and steamboating','2017-12-27 15:21:36'),(3,'Feel Good','Vishwa','life','Now when I had mastered the language of this water and had come to know every trifling feature that bordered the great river as familiarly as I knew the letters of the alphabet, I had made a valuable acquisition. I still keep in mind a certain wonderful sunset which I witnessed when and steamboating','2017-12-28 02:21:23'),(4,'Enjoy Life','Vishwa ','life','Now when I had mastered the language of this water and had come to know every trifling feature that bordered the great river as familiarly as I knew the letters of the alphabet, I had made a valuable acquisition. I still keep in mind a certain wonderful sunset which I witnessed when and steamboating','2017-12-28 02:22:40'),(5,'Less Expectation from others more happiness','Vishwa','life','Now when I had mastered the language of this water and had come to know every trifling feature that bordered the great river as familiarly as I knew the letters of the alphabet, I had made a valuable acquisition. I still keep in mind a certain wonderful sunset which I witnessed when and steamboating','2017-12-28 02:22:40'),(6,'Do Good Be Good','Vishwa','life','Now when I had mastered the language of this water and had come to know every trifling feature that bordered the great river as familiarly as I knew the letters of the alphabet, I had made a valuable acquisition. I still keep in mind a certain wonderful sunset which I witnessed when and steamboating','2017-12-28 02:22:40'),(7,'Welcome to Life Blog','Vishwa ','Life','First of all I welcome you to my Life Blog Here i will share','2017-12-28 02:22:40'),(8,'You cant learn everything in school or college. Life teach you most valued lessons','Vishwa','life','Now when I had mastered the language of this water and had come to know every trifling feature that bordered the great river as familiarly as I knew the letters of the alphabet, I had made a valuable acquisition. I still keep in mind a certain wonderful sunset which I witnessed when and steamboating','2017-12-29 23:47:12');
/*!40000 ALTER TABLE `lifeblog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staging`
--

DROP TABLE IF EXISTS `staging`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staging` (
  `stagingId` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(45) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `device` varchar(45) DEFAULT NULL,
  `browser` varchar(200) DEFAULT NULL,
  `locationLattitude` varchar(45) DEFAULT NULL,
  `locationLongitude` varchar(45) DEFAULT NULL,
  `locationAddress` varchar(200) DEFAULT NULL,
  `otherDetails` varchar(1000) DEFAULT NULL,
  `createdts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`stagingId`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staging`
--

LOCK TABLES `staging` WRITE;
/*!40000 ALTER TABLE `staging` DISABLE KEYS */;
INSERT INTO `staging` VALUES (1,'HomePage',' 162.158.50.86','sizeAvailW:1366sizeAvailH:728','5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','17.4767191','78.3916332',NULL,'-5.5','2017-12-27 13:58:08'),(2,'HomePage',' 162.158.50.86','sizeAvailW:1366sizeAvailH:728','5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','17.4762087','78.39188999999999','HIG-H-142, Raintree Park Rd, KPHB 5th Phase, Kukatpally, Hyderabad, Telangana 500072, India','-5.5','2017-12-27 14:05:03'),(3,'HomePage',' 162.158.50.86','sizeAvailW:1366sizeAvailH:728','5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','17.4975871','78.39872009999999','76D, Jal Vayu Vihar, Kukatpally, Hyderabad, Telangana 500072, India','-5.5','2017-12-27 14:08:20'),(4,'HomePage',' 162.158.50.86','sizeAvailW:1366sizeAvailH:728','5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','17.4764811','78.391836','Block 10, Malaysian Twp, Kukatpally Housing Board Colony, Kukatpally, Hyderabad, Telangana 500072, India','-5.5','2017-12-27 14:32:21'),(5,'HomePage',' 162.158.50.86','sizeAvailW:1366sizeAvailH:728','5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','17.4975871','78.39872009999999','76D, Jal Vayu Vihar, Kukatpally, Hyderabad, Telangana 500072, India','-5.5','2017-12-27 14:34:33'),(6,'HomePage',' 162.158.50.86','sizeAvailW:1366sizeAvailH:728','5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','17.4765042','78.39177389999999','Block 10, Malaysian Twp, Kukatpally Housing Board Colony, Kukatpally, Hyderabad, Telangana 500072, India','-5.5','2017-12-27 14:53:08'),(7,'HomePage',' 162.158.50.86','sizeAvailW:1366sizeAvailH:728','5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','17.4975871','78.39872009999999','76D, Jal Vayu Vihar, Kukatpally, Hyderabad, Telangana 500072, India','-5.5','2017-12-27 15:14:14'),(8,'HomePage',' 162.158.50.86','sizeAvailW:1366sizeAvailH:728','5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','17.4975871','78.39872009999999','76D, Jal Vayu Vihar, Kukatpally, Hyderabad, Telangana 500072, India','-5.5','2017-12-27 15:16:35'),(9,'HomePage',' 162.158.50.86','sizeAvailW:1366sizeAvailH:728','5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','17.385044','78.486671','Mobile Tower, Main Rd, Goutam Nagar, Badi Chowdi, Kachiguda, Hyderabad, Telangana 500095, India','-5.5','2017-12-28 02:30:38'),(10,'HomePage',' 162.158.50.86','sizeAvailW:1366sizeAvailH:728','5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','17.4768404','78.3916374','HIG-H-142, Raintree Park Rd, KPHB 5th Phase, Kukatpally, Hyderabad, Telangana 500072, India','-5.5','2017-12-28 17:50:11'),(11,'HomePage',' 162.158.50.86','sizeAvailW:1366sizeAvailH:728','5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','17.4766767','78.3915442','Block 10, Malaysian Twp, Kukatpally Housing Board Colony, Kukatpally, Hyderabad, Telangana 500072, India','-5.5','2017-12-30 00:07:26'),(12,'HomePage',' 162.158.50.86','sizeAvailW:1366sizeAvailH:728','5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','17.476549','78.39178249999999','Block 10, Malaysian Twp, Kukatpally Housing Board Colony, Kukatpally, Hyderabad, Telangana 500072, India','-5.5','2017-12-30 00:12:30'),(13,'HomePage',' 162.158.50.86','sizeAvailW:1366sizeAvailH:728','5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','17.476549','78.39178249999999','Block 10, Malaysian Twp, Kukatpally Housing Board Colony, Kukatpally, Hyderabad, Telangana 500072, India','-5.5','2017-12-30 00:13:04'),(14,'HomePage',' 162.158.50.86','sizeAvailW:1366sizeAvailH:728','5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','17.476742299999998','78.3916162','HIG-H-142, Raintree Park Rd, KPHB 5th Phase, Kukatpally, Hyderabad, Telangana 500072, India','-5.5','2017-12-30 05:34:33'),(15,'HomePage',' 162.158.50.86','sizeAvailW:1366sizeAvailH:728','5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','17.4975269','78.39963089999999','Sri Sai Estate Block A, Jal Vayu Vihar, Raji Reddy Nagar, Hyderabad, Telangana 500072, India','-5.5','2017-12-30 05:41:22'),(16,'HomePage',' 162.158.50.86','sizeAvailW:1366sizeAvailH:728','5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','17.476499999999998','78.39187609999999','Block 10, Malaysian Twp, Kukatpally Housing Board Colony, Kukatpally, Hyderabad, Telangana 500072, India','-5.5','2017-12-30 05:47:31'),(17,'HomePage',' 162.158.50.86','sizeAvailW:1366sizeAvailH:728','5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','17.4975269','78.39963089999999','Sri Sai Estate Block A, Jal Vayu Vihar, Raji Reddy Nagar, Hyderabad, Telangana 500072, India','-5.5','2017-12-30 06:05:22'),(18,'HomePage',' 162.158.50.86','sizeAvailW:1366sizeAvailH:728','5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','17.4975269','78.39963089999999','Sri Sai Estate Block A, Jal Vayu Vihar, Raji Reddy Nagar, Hyderabad, Telangana 500072, India','-5.5','2017-12-30 06:08:23'),(19,'HomePage',' 162.158.50.86','sizeAvailW:1366sizeAvailH:728','5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','17.4767083','78.3916976','Block 10, Malaysian Twp, Kukatpally Housing Board Colony, Kukatpally, Hyderabad, Telangana 500072, India','-5.5','2017-12-30 06:09:31'),(20,'HomePage',' 162.158.50.86','sizeAvailW:1366sizeAvailH:728','5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','17.4767512','78.3915916','HIG-H-142, Raintree Park Rd, KPHB 5th Phase, Kukatpally, Hyderabad, Telangana 500072, India','-5.5','2017-12-30 06:39:01'),(21,'HomePage',' 162.158.50.86','sizeAvailW:1366sizeAvailH:728','5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','17.4977545','78.399631','Sri Sai Estate Block A, Jal Vayu Vihar, Raji Reddy Nagar, Hyderabad, Telangana 500072, India','-5.5','2017-12-30 06:46:59'),(22,'HomePage',' 162.158.50.86','sizeAvailW:1366sizeAvailH:728','5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','17.4767847','78.3917002','HIG-H-142, Raintree Park Rd, KPHB 5th Phase, Kukatpally, Hyderabad, Telangana 500072, India','-5.5','2017-12-30 08:42:54'),(23,'HomePage',' 162.158.50.86','sizeAvailW:1366sizeAvailH:728','5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','17.4767773','78.39169679999999','HIG-H-142, Raintree Park Rd, KPHB 5th Phase, Kukatpally, Hyderabad, Telangana 500072, India','-5.5','2017-12-30 08:43:14'),(24,'HomePage',' 162.158.50.86','sizeAvailW:1366sizeAvailH:728','5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','17.476789','78.3917079','HIG-H-142, Raintree Park Rd, KPHB 5th Phase, Kukatpally, Hyderabad, Telangana 500072, India','-5.5','2017-12-30 08:44:10'),(25,'HomePage',' 162.158.50.86','sizeAvailW:1366sizeAvailH:728','5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','17.498050199999998','78.399631','Sri Sai Estate Block A, Jal Vayu Vihar, Raji Reddy Nagar, Hyderabad, Telangana 500072, India','-5.5','2017-12-30 08:44:53'),(26,'HomePage',' 162.158.50.86','sizeAvailW:1366sizeAvailH:728','5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','17.4766852','78.3916172','Block 10, Malaysian Twp, Kukatpally Housing Board Colony, Kukatpally, Hyderabad, Telangana 500072, India','-5.5','2017-12-30 08:45:25'),(27,'HomePage',' 162.158.50.86','sizeAvailW:1366sizeAvailH:728','5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','17.4766933','78.3917446','Block 10, Malaysian Twp, Kukatpally Housing Board Colony, Kukatpally, Hyderabad, Telangana 500072, India','-5.5','2017-12-30 08:52:10'),(28,'HomePage',' 162.158.50.86','sizeAvailW:1366sizeAvailH:728','5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','17.4767079','78.39161759999999','Block 10, Malaysian Twp, Kukatpally Housing Board Colony, Kukatpally, Hyderabad, Telangana 500072, India','-5.5','2017-12-30 08:55:02'),(29,'HomePage',' 162.158.50.86','sizeAvailW:1366sizeAvailH:728','5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','17.476681199999998','78.391677','Block 10, Malaysian Twp, Kukatpally Housing Board Colony, Kukatpally, Hyderabad, Telangana 500072, India','-5.5','2017-12-30 09:03:51'),(30,'HomePage',' 162.158.50.86','sizeAvailW:1366sizeAvailH:728','5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','17.498050199999998','78.399631','Sri Sai Estate Block A, Jal Vayu Vihar, Raji Reddy Nagar, Hyderabad, Telangana 500072, India','-5.5','2017-12-30 09:07:58'),(31,'HomePage',' 162.158.50.86','sizeAvailW:1366sizeAvailH:728','5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','17.498050199999998','78.399631','Sri Sai Estate Block A, Jal Vayu Vihar, Raji Reddy Nagar, Hyderabad, Telangana 500072, India','-5.5','2017-12-30 09:10:31'),(32,'HomePage',' 162.158.50.86','sizeAvailW:1366sizeAvailH:728','5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','17.4766077','78.391762','Block 10, Malaysian Twp, Kukatpally Housing Board Colony, Kukatpally, Hyderabad, Telangana 500072, India','-5.5','2017-12-30 09:11:19'),(33,'HomePage',' 162.158.50.86','sizeAvailW:1366sizeAvailH:728','5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','17.4766112','78.3917719','Block 10, Malaysian Twp, Kukatpally Housing Board Colony, Kukatpally, Hyderabad, Telangana 500072, India','-5.5','2017-12-30 09:12:04'),(34,'HomePage',' 162.158.50.86','sizeAvailW:1366sizeAvailH:728','5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','17.4766452','78.39177099999999','Block 10, Malaysian Twp, Kukatpally Housing Board Colony, Kukatpally, Hyderabad, Telangana 500072, India','-5.5','2017-12-30 09:14:43'),(35,'HomePage',' 162.158.50.86','sizeAvailW:1366sizeAvailH:728','5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','17.4766315','78.3917767','Block 10, Malaysian Twp, Kukatpally Housing Board Colony, Kukatpally, Hyderabad, Telangana 500072, India','-5.5','2017-12-30 09:15:36'),(36,'HomePage',' 162.158.50.86','sizeAvailW:1366sizeAvailH:728','5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','17.4767472','78.39161','HIG-H-142, Raintree Park Rd, KPHB 5th Phase, Kukatpally, Hyderabad, Telangana 500072, India','-5.5','2017-12-30 09:23:54');
/*!40000 ALTER TABLE `staging` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'vishwablog'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-30 22:59:25
