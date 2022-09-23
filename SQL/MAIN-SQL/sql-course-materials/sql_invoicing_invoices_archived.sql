-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: sql_invoicing
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `invoices_archived`
--

DROP TABLE IF EXISTS `invoices_archived`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoices_archived` (
  `invoice_id` int NOT NULL,
  `number` varchar(50) NOT NULL,
  `client_name` varchar(50),
  `invoice_total` decimal(9,2) NOT NULL,
  `payment_total` decimal(9,2) NOT NULL DEFAULT '0.00',
  `invoice_date` date NOT NULL,
  `due_date` date NOT NULL,
  `payment_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices_archived`
--

LOCK TABLES `invoices_archived` WRITE;
/*!40000 ALTER TABLE `invoices_archived` DISABLE KEYS */;
INSERT INTO `invoices_archived` VALUES (2,'03-898-6735','Topiclounge',175.32,8.18,'2019-06-11','2019-07-01','2019-02-12'),(6,'75-587-6626','Vinte',157.78,74.55,'2019-01-29','2019-02-18','2019-01-03'),(11,'20-848-0181','Yadel',126.15,0.03,'2019-01-07','2019-01-27','2019-01-11'),(13,'41-666-1035','Topiclounge',135.01,87.44,'2019-06-25','2019-07-15','2019-01-26'),(15,'55-105-9605','Yadel',167.29,80.31,'2019-11-25','2019-12-15','2019-01-15'),(17,'33-615-4694','Yadel',126.38,68.10,'2019-07-30','2019-08-19','2019-01-15'),(18,'52-269-9803','Topiclounge',180.17,42.77,'2019-05-23','2019-06-12','2019-01-08');
/*!40000 ALTER TABLE `invoices_archived` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-21 23:43:43
