-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: leaningvulndb
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

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
-- Table structure for table `badapp_table`
--

DROP TABLE IF EXISTS `badapp_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `badapp_table` (
  `badapp_id` int(255) NOT NULL AUTO_INCREMENT,
  `badapp_name` varchar(255) NOT NULL,
  `badapp_class` varchar(255) NOT NULL DEFAULT 'guest',
  `badapp_pass` varchar(255) NOT NULL,
  PRIMARY KEY (`badapp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `badapp_table`
--

LOCK TABLES `badapp_table` WRITE;
/*!40000 ALTER TABLE `badapp_table` DISABLE KEYS */;
INSERT INTO `badapp_table` VALUES (1,'Michael','guest','M2$Lq^T5z&'),(2,'Noah','admin','NK7!xY#rV8'),(3,'Oliver','guest','Op4%Zc*M6w*'),(4,'Peter','guest','PE!dT7@P3qX*'),(5,'Quinn','guest','QF5z#yL2*R9'),(6,'Ryan','guest','RM6$B8xK7!'),(7,'SQLインジェクションの答え','guest','SQLInjection_Complete'),(8,'Thomas','guest','TP9N3dT7^L'),(9,'Uriel','guest','U2#rV8m5z$'),(10,'Victor','guest','VM6wJp4%Zc'),(11,'William','guest','W2!F5z#yR9'),(12,'Xavier','guest','X82z#yL2*vJ'),(13,'Yvonne','guest','YP9N3dT7!L'),(14,'Zach','guest','Zuq$B8xK7!'),(15,'ディレクトリトラバーサルのヒント','guest','?filename=../../LearningVuln/answer.txt');
/*!40000 ALTER TABLE `badapp_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_table`
--

DROP TABLE IF EXISTS `user_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_table` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `user_class` varchar(255) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_table`
--

LOCK TABLES `user_table` WRITE;
/*!40000 ALTER TABLE `user_table` DISABLE KEYS */;
INSERT INTO `user_table` VALUES (1,'Alex','admin','A9!f@d3P#X'),(2,'Ben','guest','B2$Lq^T5z&'),(3,'Chris','guest','CK7!xY#rV8'),(4,'David','guest','Dp4%Zc*M6w*'),(5,'Emma','guest','*E!dT7@P3qX*'),(6,'Felix','guest','*F5z#yL2*R9'),(7,'George','guest','GM6$B8xK7!'),(8,'Henry','guest','HqX4!cJpZ%'),(9,'Isaac','guest','IP9N3dT7^L'),(10,'Jack','guest','J2#rV8m5z$'),(11,'Kevin','admin','KM6wJp4%Zc'),(12,'Lucy','guest','L2!F5z#yR9');
/*!40000 ALTER TABLE `user_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-03  3:59:01
