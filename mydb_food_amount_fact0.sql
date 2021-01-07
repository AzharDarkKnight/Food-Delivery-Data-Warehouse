-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb_food
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `amount_fact`
--

DROP TABLE IF EXISTS `amount_fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amount_fact` (
  `Orders_Order_Id` varchar(20) NOT NULL,
  `Customer_Cust_Id` varchar(20) NOT NULL,
  `Restuarant_Rest_Id` varchar(45) NOT NULL,
  `Employee_Emp_Id` varchar(45) NOT NULL,
  `Total_Amount` mediumtext NOT NULL,
  `Total_Orders` mediumtext NOT NULL,
  `Popular_Category` varchar(45) DEFAULT NULL,
  `amount_factid` varchar(45) NOT NULL,
  PRIMARY KEY (`amount_factid`),
  KEY `fk_Sales_Fact_Orders_idx` (`Orders_Order_Id`),
  KEY `fk_Sales_Fact_Customer1_idx` (`Customer_Cust_Id`),
  KEY `fk_Sales_Fact_Restuarant1_idx` (`Restuarant_Rest_Id`),
  KEY `fk_Sales_Fact_Employee1_idx` (`Employee_Emp_Id`),
  CONSTRAINT `fk_Sales_Fact_Customer1` FOREIGN KEY (`Customer_Cust_Id`) REFERENCES `customer` (`Cust_Id`),
  CONSTRAINT `fk_Sales_Fact_Employee1` FOREIGN KEY (`Employee_Emp_Id`) REFERENCES `employee` (`Emp_Id`),
  CONSTRAINT `fk_Sales_Fact_Orders` FOREIGN KEY (`Orders_Order_Id`) REFERENCES `orders` (`Order_Id`),
  CONSTRAINT `fk_Sales_Fact_Restuarant1` FOREIGN KEY (`Restuarant_Rest_Id`) REFERENCES `restuarant` (`Rest_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amount_fact`
--

LOCK TABLES `amount_fact` WRITE;
/*!40000 ALTER TABLE `amount_fact` DISABLE KEYS */;
/*!40000 ALTER TABLE `amount_fact` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-19 14:15:31
