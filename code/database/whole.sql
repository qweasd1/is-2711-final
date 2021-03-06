-- MySQL dump 10.13  Distrib 5.7.12, for osx10.9 (x86_64)
--
-- Host: localhost    Database: dw
-- ------------------------------------------------------
-- Server version	5.7.16

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
-- Current Database: `dw`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `dw` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `dw`;

--
-- Table structure for table `admin_batch_status`
--

DROP TABLE IF EXISTS `admin_batch_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_batch_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `date` date NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_batch_status`
--

LOCK TABLES `admin_batch_status` WRITE;
/*!40000 ALTER TABLE `admin_batch_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_batch_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_customer`
--

DROP TABLE IF EXISTS `dim_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `category` varchar(20) NOT NULL COMMENT 'cautions, we use category as string here let business access the data more easily',
  `batch_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_customer`
--

LOCK TABLES `dim_customer` WRITE;
/*!40000 ALTER TABLE `dim_customer` DISABLE KEYS */;
INSERT INTO `dim_customer` VALUES (1,'Stephanie Franklin','home',10),(2,'Shirley Howard','home',10),(3,'Doris Olson','home',10),(4,'Steven Gardner','home',10),(5,'Denise Andrews','home',10),(6,'Ralph Mendoza','home',10),(7,'Bonnie Holmes','home',10),(8,'Brandon Parker','home',10),(9,'Joseph Hill','home',10),(10,'Ruby Green','home',10),(11,'Henry Evans','business',10),(12,'Roger Rice','business',10),(13,'Bonnie Chapman','business',10),(14,'Christina Campbell','business',10),(15,'Samuel Burns','business',10),(16,'Lois Butler','business',10),(17,'David Barnes','business',10),(18,'Mark Simpson','business',10),(19,'Julie Clark','business',10),(20,'Keith Campbell','business',10);
/*!40000 ALTER TABLE `dim_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_date`
--

DROP TABLE IF EXISTS `dim_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_date` (
  `id` date NOT NULL,
  `year` int(11) NOT NULL,
  `month` tinyint(2) NOT NULL,
  `week` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_date`
--

LOCK TABLES `dim_date` WRITE;
/*!40000 ALTER TABLE `dim_date` DISABLE KEYS */;
INSERT INTO `dim_date` VALUES ('2016-02-03',2016,2,5),('2016-11-02',2016,11,2),('2016-12-09',2016,12,9);
/*!40000 ALTER TABLE `dim_date` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_product`
--

DROP TABLE IF EXISTS `dim_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `inprice` decimal(8,2) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `category` varchar(20) NOT NULL,
  `batch_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=258 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_product`
--

LOCK TABLES `dim_product` WRITE;
/*!40000 ALTER TABLE `dim_product` DISABLE KEYS */;
INSERT INTO `dim_product` VALUES (131,1,'ACURA - 3.2 CL',0.00,10865.00,'Sedan',1),(132,2,'ACURA - 3.2 CL 3.2L',0.00,6643.00,'Sedan',1),(133,3,'ACURA - 3.2 CL 3.2L',0.00,6446.00,'Sedan',1),(134,4,'ACURA - 3.2 TL',0.00,8940.00,'Sedan',1),(135,5,'ACURA - 3.2 TL 3.2L',0.00,8091.00,'Sedan',1),(136,6,'ACURA - 3.2 TL 3.2L',0.00,8257.00,'Sedan',1),(137,7,'ACURA - 3.2 TL 3.2L',0.00,11183.00,'Sedan',1),(138,8,'ACURA - 3.2 TL 3.2L',0.00,8554.00,'Sedan',1),(139,9,'ACURA - 3.2 TL 3.2L',0.00,8574.00,'Sedan',1),(140,10,'ACURA - 3.2 TL 3.2L',0.00,9208.00,'Sedan',1),(141,11,'TOYOTA - 4 RUNNER 2WD',0.00,15204.00,'Suv',1),(142,12,'TOYOTA - AVALON',0.00,10559.00,'Sedan',1),(143,13,'TOYOTA - CAMRY 4C',0.00,10846.00,'Sedan',1),(144,14,'TOYOTA - CAMRY 4C',0.00,15158.00,'Sedan',1),(145,15,'TOYOTA - CAMRY 4C',0.00,11127.00,'Sedan',1),(146,16,'TOYOTA - CAMRY 4C',0.00,11877.00,'Sedan',1),(147,17,'TOYOTA - CAMRY 4C',0.00,16331.00,'Sedan',1),(148,18,'TOYOTA - CAMRY 4C',0.00,14972.00,'Sedan',1),(149,19,'TOYOTA - CAMRY 4C',0.00,16675.00,'Sedan',1),(150,20,'TOYOTA - CAMRY 4C',0.00,15077.00,'Sedan',1),(151,21,'TOYOTA - CAMRY 4C',0.00,15545.00,'Sedan',1),(152,22,'TOYOTA - CAMRY 4C 2.4L I-4 EF',0.00,8585.00,'Sedan',1),(153,23,'TOYOTA - CAMRY 4C 2.4L I-4 SF',0.00,14135.00,'Sedan',1),(154,24,'TOYOTA - CAMRY 4C 2.4L I4 SFI',0.00,11094.00,'Sedan',1),(155,25,'TOYOTA - CAMRY 4C 2.4L I4 SFI',0.00,13072.00,'Sedan',1),(156,26,'TOYOTA - CAMRY 4C 2.4L I4 SFI',0.00,10964.00,'Sedan',1),(157,27,'TOYOTA - CAMRY 4C 2.4L I4 SFI',0.00,13175.00,'Sedan',1),(158,28,'TOYOTA - CAMRY 4C 2.4L I4 SFI',0.00,13104.00,'Sedan',1),(159,29,'TOYOTA - CAMRY SOLARA 4C',0.00,14089.00,'Sedan',1),(160,30,'TOYOTA - CAMRY SOLARA 4C',0.00,13216.00,'Sedan',1),(161,31,'TOYOTA - CAMRY SOLARA',0.00,9389.00,'Sedan',1),(162,32,'TOYOTA - CAMRY SOLARA',0.00,5891.00,'Sedan',1),(163,33,'TOYOTA - CAMRY',0.00,8878.00,'Sedan',1),(164,34,'TOYOTA - CAMRY',0.00,14742.00,'Sedan',1),(165,35,'TOYOTA - CAMRY',0.00,16009.00,'Sedan',1),(166,36,'TOYOTA - CAMRY',0.00,16770.00,'Sedan',1),(167,37,'TOYOTA - CAMRY',0.00,11509.00,'Sedan',1),(168,38,'TOYOTA - CAMRY',0.00,10302.00,'Sedan',1),(169,39,'TOYOTA - CAMRY',0.00,17204.00,'Sedan',1),(170,40,'TOYOTA - CAMRY',0.00,10994.00,'Sedan',1),(171,41,'TOYOTA - CAMRY',0.00,14924.00,'Sedan',1),(172,42,'BUICK - CENTURY',0.00,5887.00,'Luxury',1),(173,43,'BUICK - CENTURY',0.00,7424.00,'Luxury',1),(174,44,'BUICK - CENTURY',0.00,6627.00,'Luxury',1),(175,45,'BUICK - CENTURY',0.00,7330.00,'Luxury',1),(176,46,'BUICK - CENTURY',0.00,7496.00,'Luxury',1),(177,47,'BUICK - CENTURY',0.00,6650.00,'Luxury',1),(178,48,'BUICK - CENTURY',0.00,7890.00,'Luxury',1),(179,49,'BUICK - CENTURY',0.00,8196.00,'Luxury',1),(180,50,'BUICK - CENTURY',0.00,6622.00,'Luxury',1),(181,51,'BUICK - CENTURY',0.00,5402.00,'Luxury',1),(182,52,'BUICK - CENTURY',0.00,5298.00,'Luxury',1),(183,53,'BUICK - CENTURY',0.00,4375.00,'Luxury',1),(184,54,'BUICK - CENTURY',0.00,4133.00,'Luxury',1),(185,55,'BUICK - CENTURY',0.00,5441.00,'Luxury',1),(186,56,'BUICK - CENTURY',0.00,5208.00,'Luxury',1),(187,57,'BUICK - CENTURY',0.00,8979.00,'Luxury',1),(188,58,'BUICK - CENTURY',0.00,6103.00,'Luxury',1),(189,59,'TOYOTA - COROLLA',0.00,8660.00,'Sedan',1),(190,60,'TOYOTA - COROLLA',0.00,11059.00,'Sedan',1),(191,61,'TOYOTA - COROLLA',0.00,11059.00,'Sedan',1),(192,62,'TOYOTA - COROLLA',0.00,7258.00,'Sedan',1),(193,63,'TOYOTA - COROLLA',0.00,5683.00,'Sedan',1),(194,64,'TOYOTA - COROLLA',0.00,11802.00,'Sedan',1),(195,65,'TOYOTA - COROLLA',0.00,12742.00,'Sedan',1),(196,66,'TOYOTA - COROLLA',0.00,8178.00,'Sedan',1),(197,67,'TOYOTA - COROLLA',0.00,12575.00,'Sedan',1),(198,68,'TOYOTA - COROLLA',0.00,7780.00,'Sedan',1),(199,69,'TOYOTA - COROLLA',0.00,8242.00,'Sedan',1),(200,70,'TOYOTA - COROLLA',0.00,9796.00,'Sedan',1),(201,71,'TOYOTA - COROLLA',0.00,8009.00,'Sedan',1),(202,72,'TOYOTA - COROLLA',0.00,9824.00,'Sedan',1),(203,73,'TOYOTA - COROLLA',0.00,6598.00,'Sedan',1),(204,74,'TOYOTA - COROLLA',0.00,9068.00,'Sedan',1),(205,75,'TOYOTA - COROLLA',0.00,10369.00,'Sedan',1),(206,76,'TOYOTA - COROLLA',0.00,12441.00,'Sedan',1),(207,77,'CHEVROLET - EQUINOX AWD',0.00,12716.00,'Suv',1),(208,78,'TOYOTA - HIGHLANDER 2WD',0.00,9591.00,'Suv',1),(209,79,'TOYOTA - HIGHLANDER 2WD',0.00,9582.00,'Suv',1),(210,80,'TOYOTA - HIGHLANDER 2WD',0.00,10303.00,'Suv',1),(211,81,'TOYOTA - HIGHLANDER 2WD',0.00,10218.00,'Suv',1),(212,82,'CHEVROLET - IMPALA',0.00,12212.00,'Sedan',1),(213,83,'CHEVROLET - IMPALA',0.00,12471.00,'Sedan',1),(214,84,'CHEVROLET - IMPALA',0.00,8973.00,'Sedan',1),(215,85,'CHEVROLET - IMPALA',0.00,12235.00,'Sedan',1),(216,86,'CHEVROLET - IMPALA',0.00,10798.00,'Sedan',1),(217,87,'CHEVROLET - IMPALA 3.5L',0.00,12064.00,'Sedan',1),(218,88,'CHEVROLET - IMPALA',0.00,14604.00,'Sedan',1),(219,89,'BUICK - LACROSSE',0.00,13619.00,'Sedan',1),(220,90,'BUICK - LACROSSE',0.00,10851.00,'Sedan',1),(221,91,'BUICK - LACROSSE',0.00,12763.00,'Sedan',1),(222,92,'BUICK - LACROSSE',0.00,14133.00,'Sedan',1),(223,93,'BUICK - LACROSSE',0.00,13547.00,'Sedan',1),(224,94,'BUICK - LACROSSE',0.00,12109.00,'Sedan',1),(225,95,'BUICK - LACROSSE 3.8L',0.00,12858.00,'Sedan',1),(226,96,'BUICK - LACROSSE 3.8L',0.00,11100.00,'Sedan',1),(227,97,'BUICK - LACROSSE 3.8L',0.00,11100.00,'Sedan',1),(228,98,'BUICK - LACROSSE 3.8L',0.00,12281.00,'Sedan',1),(229,99,'BUICK - LACROSSE 3.8L',0.00,13978.00,'Sedan',1),(230,100,'BUICK - LE SABRE',0.00,11050.00,'Sedan',1),(231,101,'BUICK - LE SABRE',0.00,8409.00,'Sedan',1),(232,102,'BUICK - LE SABRE',0.00,8829.00,'Sedan',1),(233,103,'BUICK - LE SABRE',0.00,7894.00,'Sedan',1),(234,104,'BUICK - LE SABRE 3.8L',0.00,7776.00,'Sedan',1),(235,105,'BUICK - LE SABRE 3.8L',0.00,6114.00,'Sedan',1),(236,106,'BUICK - LE SABRE Unspecified',0.00,6500.00,'Sedan',1),(237,107,'BUICK - LE SABRE Unspecified',0.00,6322.00,'Sedan',1),(238,108,'BUICK - LE SABRE Unspecified',0.00,5843.00,'Sedan',1),(239,109,'BUICK - LE SABRE Unspecified',0.00,6500.00,'Sedan',1),(240,110,'BUICK - LE SABRE Unspecified',0.00,5397.00,'Sedan',1),(241,111,'CHEVROLET - MALIBU 4C',0.00,6909.00,'Sedan',1),(242,112,'CHEVROLET - MALIBU 4C',0.00,11661.00,'Sedan',1),(243,113,'CHEVROLET - MALIBU 4C',0.00,11914.00,'Sedan',1),(244,114,'CHEVROLET - MALIBU 4C',0.00,12413.00,'Sedan',1),(245,115,'CHEVROLET - MALIBU 4C 2.2L I4 MP',0.00,8806.00,'Sedan',1),(246,116,'CHEVROLET - MALIBU V6',0.00,12224.00,'Sedan',1),(247,117,'CHEVROLET - MALIBU V6',0.00,11078.00,'Sedan',1),(248,118,'CHEVROLET - MALIBU V6 3.1L',0.00,4407.00,'Sedan',1);
/*!40000 ALTER TABLE `dim_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_region`
--

DROP TABLE IF EXISTS `dim_region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_region` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `batch_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_region`
--

LOCK TABLES `dim_region` WRITE;
/*!40000 ALTER TABLE `dim_region` DISABLE KEYS */;
INSERT INTO `dim_region` VALUES (1,'AL',6),(2,'AK',4),(3,'AR',4),(4,'AZ',4),(5,'PA',4),(6,'NJ',4),(7,'NY',4),(8,'OH',4),(9,'OK',4),(10,'TX',4);
/*!40000 ALTER TABLE `dim_region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_store`
--

DROP TABLE IF EXISTS `dim_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_store` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `batch_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_store`
--

LOCK TABLES `dim_store` WRITE;
/*!40000 ALTER TABLE `dim_store` DISABLE KEYS */;
INSERT INTO `dim_store` VALUES (1,'UREEE',8),(2,'WEBU',8),(3,'IUTO',8),(4,'OATS',8),(5,'UIR',8),(6,'SRGRGSG',8),(7,'UIRRSE',8),(8,'EGXYR',8),(9,'YVEWF',8),(10,'ZETUI',8),(11,'AMEIE',8),(12,'ANIEG',8),(13,'CAUFHI',8),(14,'ACIA',8),(15,'DFJKEHJ',8);
/*!40000 ALTER TABLE `dim_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fact_transaction`
--

DROP TABLE IF EXISTS `fact_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fact_transaction` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `region_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `sale` decimal(8,2) NOT NULL,
  `profit` decimal(8,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_customer_idx` (`customer_id`),
  KEY `fk_date_idx` (`date`),
  KEY `fk_product_idx` (`product_id`),
  KEY `fk_region_idx` (`region_id`),
  KEY `fk_store_idx` (`store_id`),
  CONSTRAINT `fk_customer` FOREIGN KEY (`customer_id`) REFERENCES `dim_customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_date` FOREIGN KEY (`date`) REFERENCES `dim_date` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_product` FOREIGN KEY (`product_id`) REFERENCES `dim_product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_region` FOREIGN KEY (`region_id`) REFERENCES `dim_region` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_store` FOREIGN KEY (`store_id`) REFERENCES `dim_store` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fact_transaction`
--

LOCK TABLES `fact_transaction` WRITE;
/*!40000 ALTER TABLE `fact_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `fact_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stage_transaction`
--

DROP TABLE IF EXISTS `stage_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stage_transaction` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_dim_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL,
  `salesperson_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `sale` decimal(8,2) DEFAULT NULL,
  `profit` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stage_transaction`
--

LOCK TABLES `stage_transaction` WRITE;
/*!40000 ALTER TABLE `stage_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `stage_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'dw'
--
/*!50003 DROP FUNCTION IF EXISTS `category_name` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `category_name`(
	_code int
) RETURNS varchar(20) CHARSET latin1
BEGIN

return case _code
	when 0 then 'home'
    when 1 then 'business'
    when 2 then 'government'
    else 'unknown'
end;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `product_name` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `product_name`(
  _make varchar(20),
  _model varchar(20)
) RETURNS varchar(40) CHARSET latin1
BEGIN
RETURN concat(_make, ' - ', _model);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `load_dim_customer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `load_dim_customer`(
	_batch_id int
)
BEGIN

## insert
insert into dw.dim_customer
SELECT 
	vehicle.customer.id,
	vehicle.customer.name,
    category_name(vehicle.customer.kind) as category,
    _batch_id as batch_id
FROM vehicle.customer
where not exists (
select id from dw.dim_customer
where dw.dim_customer.id = vehicle.customer.id
);

## update
update dw.dim_customer,vehicle.customer
set dw.dim_customer.category = category_name(vehicle.customer.kind),
    dw.dim_customer.name = vehicle.customer.name,
    dw.dim_customer.batch_id = _batch_id
where dw.dim_customer.id = vehicle.customer.id
  and (category_name(vehicle.customer.kind) <> dw.dim_customer.category
  or dw.dim_customer.name <> vehicle.customer.name);
  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `load_dim_date` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `load_dim_date`(
	_date date
)
BEGIN
insert dw.dim_date(id,year,month,week)
values (_date,year(_date),month(_date),week(_date));
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `load_dim_product` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `load_dim_product`(
  _batch_id int
)
BEGIN
insert into dw.dim_product(product_id,name,inprice,price,category,batch_id)

select 
	vehicle.product.id,
    product_name(vehicle.product.make,vehicle.product.model),
    vehicle.product.inprice,
    vehicle.product.price,
    vehicle.product.product_kind,
    _batch_id
from vehicle.product
  left join
	(select dw.dim_product.*
	from dw.dim_product,
	(select 
	  dw.dim_product.product_id,
	  max(dw.dim_product.batch_id) as batch_id
	from dw.dim_product
	group by dw.dim_product.product_id) as latest
	where dw.dim_product.product_id = latest.product_id
	  and dw.dim_product.batch_id = latest.batch_id) as latest_dim
	on vehicle.product.id = latest_dim.product_id
    where latest_dim.product_id is null # new product
       or  (product_name(vehicle.product.make,vehicle.product.model) <> latest_dim.name or vehicle.product.inprice <> latest_dim.inprice or vehicle.product.price <> latest_dim.price or vehicle.product.product_kind <> latest_dim.category); # existing products

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `load_dim_region` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `load_dim_region`(
	_batch_id int
)
BEGIN

## insert
insert into dw.dim_region(id,name,batch_id)
SELECT 
	vehicle.region.id,
	vehicle.region.region_name,
    _batch_id as batch_id
FROM vehicle.region
where not exists (
select id from dw.dim_region
where dw.dim_region.id = vehicle.region.id
);

## update
update dw.dim_region,vehicle.region
set 
    dw.dim_region.name = vehicle.region.region_name,
    dw.dim_region.batch_id = _batch_id
where dw.dim_region.id = vehicle.region.id
  and (dw.dim_region.name <> vehicle.region.region_name);
  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `load_dim_store` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `load_dim_store`(
	_batch_id int
)
BEGIN

## insert
insert into dw.dim_store(id,name,batch_id)
SELECT 
	vehicle.store.id,
	vehicle.store.name,
    _batch_id as batch_id
FROM vehicle.store
where not exists (
select id from dw.dim_store
where dw.dim_store.id = vehicle.store.id
);

## update
update dw.dim_store,vehicle.store
set 
    dw.dim_store.name = vehicle.store.name,
    dw.dim_store.batch_id = _batch_id
where dw.dim_store.id = vehicle.store.id
  and (dw.dim_store.name <> vehicle.store.name);
  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `load_fact_transaction` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `load_fact_transaction`(
  _date date
)
BEGIN


truncate dw.stage_transaction;


# insert fact data into fact table
insert into dw.stage_transaction(id,date,customer_id,product_id,salesperson_id,quantity,sale,profit)
select 
vehicle.transaction.id,
 _date as date,
 vehicle.transaction.customer_id,
 vehicle.transaction.product_id,
 vehicle.transaction.salesperson_id,
 vehicle.transaction.quantity,
 vehicle.transaction.quantity * vehicle.product.price as sale,
 vehicle.transaction.quantity * (vehicle.product.price - vehicle.product.inprice) as profit
from vehicle.transaction, vehicle.product
where vehicle.transaction.product_id = vehicle.product.id
  and vehicle.transaction.purchase_date = _date;


# update store/ region dimension
update dw.stage_transaction, vehicle.salesperson, vehicle.store, vehicle.region
set 
	dw.stage_transaction.store_id = vehicle.store.id,
    dw.stage_transaction.region_id = vehicle.region.id
where dw.stage_transaction.salesperson_id = vehicle.salesperson.id
  and vehicle.salesperson.store_id = vehicle.store.id
  and vehicle.store.region_id = vehicle.region.id
  and dw.stage_transaction.date = _date;
  
  
# update product dimension

update dw.stage_transaction,(select dw.dim_product.id as product_dim_id, dw.dim_product.product_id
from dw.dim_product,dw.admin_batch_status
where dw.dim_product.batch_id = dw.admin_batch_status.id
  and dw.admin_batch_status.date = _date) as current_product
set 
  dw.stage_transaction.product_dim_id = current_product.product_dim_id  
where dw.stage_transaction.date = _date
  and dw.stage_transaction.product_id = current_product.product_id;
  
  
# insert data from stage into fact table
insert into dw.fact_transaction(id, date, customer_id, product_id, store_id, region_id, quantity, sale, profit)
select id, date, customer_id, product_dim_id, store_id, region_id, quantity, sale, profit
from dw.stage_transaction;






END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Current Database: `vehicle`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `vehicle` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `vehicle`;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `street` char(100) NOT NULL,
  `city` char(20) NOT NULL,
  `state` char(20) NOT NULL,
  `zip_code` char(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'669 Larry Plaza','San Diego','CA','92196'),(2,'67 Golden Leaf Way','Roanoke','VA','24004'),(3,'338 Delaware Alley','Orange','CA','92862'),(4,'7451 Moland Crossing','Irving','TX','75062'),(5,'03674 Fieldstone Terrace','Topeka','KS','66617'),(6,'1008 Bartelt Circle','Boston','MA','21109'),(7,'68899 Heffernan Road','Green Bay','WI','54305'),(8,'92838 Moulton Crossing','Atlanta','GA','30336'),(9,'867 Browning Hill','Charleston','SC','29424'),(10,'1 Hoepker Trail','Houston','TX','77260'),(11,'248 Village Trail','Miami','FL','33196'),(12,'0 Commercial Court','El Paso','TX','79928'),(13,'459 Walton Trail','Metairie','LA','70033'),(14,'73 Scofield Pass','Milwaukee','WI','53220'),(15,'8227 Butternut Plaza','Boston','MA','2203'),(16,'7 Hanover Place','Washington','DC','20392'),(17,'9 Lighthouse Bay Trail','Sioux City','IA','51110'),(18,'0 Anthes Park','Anderson','SC','29625'),(19,'50301 Toban Hill','Saint Louis','MO','63196'),(20,'660 Golf Lane','Vancouver','WA','98664'),(21,'366 Sachs Court','Houston','TX','77223'),(22,'3 Badeau Avenue','Atlanta','GA','30392'),(23,'109 Miller Parkway','Winston Salem','NC','27157'),(24,'722 Buhler Circle','Springfield','IL','62764'),(25,'317 Kim Plaza','Louisville','KY','40220'),(26,'0099 Toban Terrace','Saint Louis','MO','63116'),(27,'443 Sloan Drive','Fort Wayne','IN','46862'),(28,'14 North Street','Phoenix','AZ','85062'),(29,'2 Reinke Circle','Brea','CA','92822'),(30,'0 Scofield Hill','Montgomery','AL','36125'),(31,'493 Hovde Drive','Los Angeles','CA','90040'),(32,'14917 Red Cloud Road','Wilmington','NC','28410'),(33,'98 Warrior Plaza','Cedar Rapids','IA','52410'),(34,'351 Magdeline Park','Pueblo','CO','81005'),(35,'09056 Fordem Point','Sunnyvale','CA','94089'),(36,'04 Canary Terrace','Milwaukee','WI','53220'),(37,'4 Ridge Oak Parkway','Joliet','IL','60435'),(38,'429 Milwaukee Center','Pensacola','FL','32511'),(39,'68 Myrtle Alley','Seattle','WA','98166'),(40,'2 Florence Street','Atlanta','GA','31165'),(41,'1876 Walton Place','Atlanta','GA','31132'),(42,'9 Becker Street','Kansas City','MO','64193'),(43,'5 Rockefeller Junction','Bronx','NY','10474'),(44,'68 Burrows Junction','Washington','DC','20370'),(45,'3 Maple Road','Houston','TX','77260'),(46,'426 Bluejay Road','Visalia','CA','93291'),(47,'1 4th Circle','Temple','TX','76505'),(48,'23163 Fairfield Hill','Chicago','IL','60624'),(49,'508 Brickson Park Way','Tampa','FL','33686'),(50,'17809 Anderson Street','Atlanta','GA','31196'),(51,'251 Stang Park','Atlanta','GA','30392'),(52,'6919 Shoshone Junction','Oklahoma City','OK','73190'),(53,'8277 Anderson Point','Lexington','KY','40515'),(54,'48246 Johnson Center','Galveston','TX','77554'),(55,'18 Vernon Trail','Fort Collins','CO','80525'),(56,'25 Shopko Road','Manassas','VA','22111'),(57,'008 Prentice Plaza','Lake Worth','FL','33467'),(58,'1679 Scott Plaza','Cedar Rapids','IA','52405'),(59,'155 Fordem Parkway','Phoenix','AZ','85083'),(60,'7391 Memorial Court','Green Bay','WI','54305'),(61,'38361 Linden Avenue','Norfolk','VA','23520'),(62,'91675 Delladonna Terrace','Cincinnati','OH','45271'),(63,'6 Aberg Pass','Ashburn','VA','22093'),(64,'267 Meadow Vale Crossing','Fort Wayne','IN','46867'),(65,'68915 Graceland Center','Shawnee Mission','KS','66286'),(66,'63205 Toban Lane','Harrisburg','PA','17140'),(67,'99 Lawn Crossing','Naples','FL','33961'),(68,'64 Stephen Park','Prescott','AZ','86305'),(69,'60 Bultman Lane','Honolulu','HI','96805'),(70,'74057 Canary Parkway','Tulsa','OK','74103'),(71,'5354 Banding Center','Cincinnati','OH','45223'),(72,'669 Forest Way','Fort Worth','TX','76147'),(73,'7 Westerfield Trail','Milwaukee','WI','53263'),(74,'3056 Melrose Avenue','San Jose','CA','95150'),(75,'59 Scofield Drive','Washington','DC','20220'),(76,'9417 Daystar Parkway','Madison','WI','53705'),(77,'0625 Evergreen Place','Anaheim','CA','92812'),(78,'880 Maple Wood Parkway','Boca Raton','FL','33499'),(79,'1008 Monica Pass','Boston','MA','2298'),(80,'392 Meadow Vale Street','Irving','TX','75037'),(81,'1573 Farwell Alley','Berkeley','CA','94712'),(82,'5391 Anderson Crossing','Fresno','CA','93709'),(83,'78384 Gina Court','Metairie','LA','70033'),(84,'5 Kenwood Way','Raleigh','NC','27690'),(85,'47 Eastlawn Center','Spartanburg','SC','29305'),(86,'74377 Summit Plaza','Saint Paul','MN','55188'),(87,'3326 Nova Road','Charlottesville','VA','22908'),(88,'03 Independence Plaza','Fullerton','CA','92835'),(89,'91 Bonner Point','Fargo','ND','58122'),(90,'1050 Forest Dale Crossing','Lima','OH','45807'),(91,'8 Kennedy Parkway','Houston','TX','77090'),(92,'2022 Claremont Place','Anchorage','AK','99522'),(93,'37098 Arizona Park','Washington','DC','20591'),(94,'379 Armistice Crossing','Cleveland','OH','44197'),(95,'225 Arkansas Point','Corpus Christi','TX','78426'),(96,'85794 Knutson Circle','Gadsden','AL','35905'),(97,'3 Pepper Wood Hill','Winston Salem','NC','27105'),(98,'1 Corscot Park','Oklahoma City','OK','73152'),(99,'822 Colorado Circle','Fresno','CA','93786'),(100,'004 West Alley','Flint','MI','48505');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `business`
--

DROP TABLE IF EXISTS `business`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `business` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(64) DEFAULT NULL,
  `gross_annual_income` tinyint(4) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `customerid` (`customer_id`),
  CONSTRAINT `business_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business`
--

LOCK TABLES `business` WRITE;
/*!40000 ALTER TABLE `business` DISABLE KEYS */;
INSERT INTO `business` VALUES (1,'computer',3,19),(2,'construction',1,15),(3,'education',2,14),(4,'entertaiment',2,20),(5,'health',1,16),(6,'food',3,18),(7,'computer',3,11),(8,'construction',4,12),(9,'health',2,17),(10,'food',5,13);
/*!40000 ALTER TABLE `business` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` char(60) NOT NULL,
  `password` char(20) NOT NULL,
  `name` char(20) NOT NULL,
  `kind` tinyint(1) NOT NULL,
  `address_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `c_addressid` (`address_id`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'sfranklin0@themeforest.net','SWobv5','Stephanie Franklin',0,3),(2,'showard1@psu.edu','O87AviR0hCl','Shirley Howard',0,8),(3,'dolson2@vistaprint.com','WV3kIv9sF92k','Doris Olson',0,3),(4,'sgardner3@networkadvertising.org','Vi5H0qri','Steven Gardner',0,1),(5,'dandrews4@google.com','QpRCsPonNX','Denise Andrews',0,2),(6,'rmendoza5@cnbc.com','9cFXsRcGW','Ralph Mendoza',0,9),(7,'bholmes6@ed.gov','FVjQBxWqVbzx','Bonnie Holmes',0,66),(8,'bparker7@dmoz.org','1kGlV5HH','Brandon Parker',0,4),(9,'jhill8@elegantthemes.com','Skk4wnPLA6Y','Joseph Hill',0,7),(10,'rgreen9@alibaba.com','X0E3NsOs','Ruby Green',0,6),(11,'hevans1c@bandcamp.com','lBV6xMyYshL','Henry Evans',1,11),(12,'rrice1d@oracle.com','su329vG2Q5','Roger Rice',1,57),(13,'bchapman1e@squidoo.com','cNWRhxGu','Bonnie Chapman',1,43),(14,'ccampbell1f@epa.gov','cqJsuw7v','Christina Campbell',1,8),(15,'sburns1g@flickr.com','3Op28B5vtGm7','Samuel Burns',1,87),(16,'lbutler1h@google.pl','9DSFeTuJY2U9','Lois Butler',1,12),(17,'dbarnes1i@weather.com','NKJTxN5Ka','David Barnes',1,33),(18,'msimpson1j@cpanel.net','moQoNdY','Mark Simpson',1,36),(19,'jclark1k@sina.com.cn','dVsAXy','Julie Clark',1,90),(20,'kcampbell1l@indiatimes.com','wPlZ68C','Keith Campbell',1,13);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home`
--

DROP TABLE IF EXISTS `home`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gender` tinyint(1) DEFAULT NULL,
  `age` tinyint(4) DEFAULT NULL,
  `marriage_status` tinyint(1) DEFAULT NULL,
  `income` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `home_customer` FOREIGN KEY (`id`) REFERENCES `customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home`
--

LOCK TABLES `home` WRITE;
/*!40000 ALTER TABLE `home` DISABLE KEYS */;
INSERT INTO `home` VALUES (1,1,2,1,1),(2,1,3,1,5),(3,2,4,1,6),(4,2,4,1,4),(5,2,5,1,3),(6,1,2,2,3),(7,2,4,2,5),(8,2,1,1,3),(9,2,1,2,2),(10,2,6,2,2);
/*!40000 ALTER TABLE `home` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `make` char(20) NOT NULL,
  `cylinder` varchar(10) NOT NULL,
  `color` char(20) NOT NULL,
  `model` char(20) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `inprice` decimal(8,2) NOT NULL,
  `product_kind` char(20) NOT NULL,
  `image` text NOT NULL,
  `inventory_amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'ACURA','V6 EFI','SILVER','3.2 CL',10865.00,3000.00,'Sedan','/image/1.jpg',1),(2,'ACURA','V6 NA S','SILVER','3.2 CL 3.2L',6643.00,0.00,'Sedan','/image/2.jpg',1),(3,'ACURA','V6NA S','WHITE','3.2 CL 3.2L',6446.00,0.00,'Sedan','/image/3.jpg',1),(4,'ACURA','V6 NA S','BLACK','3.2 TL',8940.00,0.00,'Sedan','/image/4.jpg',1),(5,'ACURA','V6 EFI','WHITE','3.2 TL 3.2L',8091.00,0.00,'Sedan','/image/5.jpg',1),(6,'ACURA','V6 EFI','BLUE','3.2 TL 3.2L',8257.00,0.00,'Sedan','/image/6.jpg',1),(7,'ACURA','V6 EFI','RED','3.2 TL 3.2L',11183.00,0.00,'Sedan','/image/7.jpg',1),(8,'ACURA','V6 NA S','RED','3.2 TL 3.2L',8554.00,0.00,'Sedan','/image/8.jpg',1),(9,'ACURA','V4','WHITE','3.2 TL 3.2L',8574.00,0.00,'Sedan','/image/9.jpg',1),(10,'ACURA','V6 DO','SILVER','3.2 TL 3.2L',9208.00,0.00,'Sedan','/image/10.jpg',1),(11,'TOYOTA','V6 NA S','GREY','4 RUNNER 2WD',15204.00,0.00,'Suv','/image/11.jpg',1),(12,'TOYOTA','V6 SFI','WHITE','AVALON',10559.00,0.00,'Sedan','/image/12.jpg',1),(13,'TOYOTA','V6 SOHC','SILVER','CAMRY 4C',10846.00,0.00,'Sedan','/image/13.jpg',1),(14,'TOYOTA','V6 NA S','GREY','CAMRY 4C',15158.00,0.00,'Sedan','/image/14.jpg',1),(15,'TOYOTA','V6 EFI','BLUE','CAMRY 4C',11127.00,0.00,'Sedan','/image/15.jpg',1),(16,'TOYOTA','V6 NA S','GREY','CAMRY 4C',11877.00,0.00,'Sedan','/image/16.jpg',1),(17,'TOYOTA','V6 DO','BLUE','CAMRY 4C',16331.00,0.00,'Sedan','/image/17.jpg',1),(18,'TOYOTA','V6 EFI','BLACK','CAMRY 4C',14972.00,0.00,'Sedan','/image/18.jpg',1),(19,'TOYOTA','V6 EFI','RED','CAMRY 4C',16675.00,0.00,'Sedan','/image/19.jpg',1),(20,'TOYOTA','V4','RED','CAMRY 4C',15077.00,0.00,'Sedan','/image/20.jpg',1),(21,'TOYOTA',' V6 MFI SC','SILVER','CAMRY 4C',15545.00,0.00,'Sedan','/image/21.jpg',1),(22,'TOYOTA','V6 NA S','WHITE','CAMRY 4C 2.4L I-4 EF',8585.00,0.00,'Sedan','/image/22.jpg',1),(23,'TOYOTA','Eco','SILVER','CAMRY 4C 2.4L I-4 SF',14135.00,0.00,'Sedan','/image/23.jpg',1),(24,'TOYOTA','V6 E','WHITE','CAMRY 4C 2.4L I4 SFI',11094.00,0.00,'Sedan','/image/24.jpg',1),(25,'TOYOTA','V6 SFI','WHITE','CAMRY 4C 2.4L I4 SFI',13072.00,0.00,'Sedan','/image/25.jpg',1),(26,'TOYOTA','V4','GREY','CAMRY 4C 2.4L I4 SFI',10964.00,0.00,'Sedan','/image/26.jpg',1),(27,'TOYOTA','V4','RED','CAMRY 4C 2.4L I4 SFI',13175.00,0.00,'Sedan','/image/27.jpg',1),(28,'TOYOTA','V6 S','GREY','CAMRY 4C 2.4L I4 SFI',13104.00,0.00,'Sedan','/image/28.jpg',1),(29,'TOYOTA','V6 SFI','RED','CAMRY SOLARA 4C',14089.00,0.00,'Sedan','/image/29.jpg',1),(30,'TOYOTA','V6 SFI','RED','CAMRY SOLARA 4C',13216.00,0.00,'Sedan','/image/30.jpg',1),(31,'TOYOTA','V6 EFI','GREEN','CAMRY SOLARA',9389.00,0.00,'Sedan','/image/31.jpg',1),(32,'TOYOTA','V6 E','GREEN','CAMRY SOLARA',5891.00,0.00,'Sedan','/image/32.jpg',1),(33,'TOYOTA','V4','BROWN','CAMRY',8878.00,0.00,'Sedan','/image/33.jpg',1),(34,'TOYOTA','V6 E','BLUE','CAMRY',14742.00,0.00,'Sedan','/image/34.jpg',1),(35,'TOYOTA',' V6 MFI SC','BLUE','CAMRY',16009.00,0.00,'Sedan','/image/35.jpg',1),(36,'TOYOTA','V4','WHITE','CAMRY',16770.00,0.00,'Sedan','/image/36.jpg',1),(37,'TOYOTA','V8 T','WHITE','CAMRY',11509.00,0.00,'Sedan','/image/37.jpg',1),(38,'TOYOTA','V8 T','SILVER','CAMRY',10302.00,0.00,'Sedan','/image/38.jpg',1),(39,'TOYOTA','V6 MFI SC','GREY','CAMRY',17204.00,0.00,'Sedan','/image/39.jpg',1),(40,'TOYOTA','V6NA S','BLACK','CAMRY',10994.00,0.00,'Sedan','/image/40.jpg',1),(41,'TOYOTA','Eco','WHITE','CAMRY',14924.00,0.00,'Sedan','/image/41.jpg',1),(42,'BUICK','V8','RED','CENTURY',5887.00,0.00,'Luxury','/image/42.jpg',1),(43,'BUICK','V4','WHITE','CENTURY',7424.00,0.00,'Luxury','/image/43.jpg',1),(44,'BUICK','Eco','WHITE','CENTURY',6627.00,0.00,'Luxury','/image/44.jpg',1),(45,'BUICK','V4','GOLD','CENTURY',7330.00,0.00,'Luxury','/image/45.jpg',1),(46,'BUICK','V6 SFI','WHITE','CENTURY',7496.00,0.00,'Luxury','/image/46.jpg',1),(47,'BUICK','V6 SFI','GOLD','CENTURY',6650.00,0.00,'Luxury','/image/47.jpg',1),(48,'BUICK','V6 MFI SC','WHITE','CENTURY',7890.00,0.00,'Luxury','/image/48.jpg',1),(49,'BUICK','V8 T','SILVER','CENTURY',8196.00,0.00,'Luxury','/image/49.jpg',1),(50,'BUICK','Eco','GREY','CENTURY',6622.00,0.00,'Luxury','/image/50.jpg',1),(51,'BUICK','V6 S','BEIGE','CENTURY',5402.00,0.00,'Luxury','/image/51.jpg',1),(52,'BUICK','V6 SFI','GOLD','CENTURY',5298.00,0.00,'Luxury','/image/52.jpg',1),(53,'BUICK','V4','GOLD','CENTURY',4375.00,0.00,'Luxury','/image/53.jpg',1),(54,'BUICK','V6 SFI','WHITE','CENTURY',4133.00,0.00,'Luxury','/image/54.jpg',1),(55,'BUICK','V6 E','GREY','CENTURY',5441.00,0.00,'Luxury','/image/55.jpg',1),(56,'BUICK','V6 T','SILVER','CENTURY',5208.00,0.00,'Luxury','/image/56.jpg',1),(57,'BUICK','Eco','WHITE','CENTURY',8979.00,0.00,'Luxury','/image/57.jpg',1),(58,'BUICK','V6 E','BROWN','CENTURY',6103.00,0.00,'Luxury','/image/58.jpg',1),(59,'TOYOTA',' V6 MFI SC','SILVER','COROLLA',8660.00,0.00,'Sedan','/image/59.jpg',1),(60,'TOYOTA','V6 MFI SC','GREY','COROLLA',11059.00,0.00,'Sedan','/image/60.jpg',1),(61,'TOYOTA','V6 E','BLACK','COROLLA',11059.00,0.00,'Sedan','/image/61.jpg',1),(62,'TOYOTA','V8 T','SILVER','COROLLA',7258.00,0.00,'Sedan','/image/62.jpg',1),(63,'TOYOTA','V4','BLACK','COROLLA',5683.00,0.00,'Sedan','/image/63.jpg',1),(64,'TOYOTA','V6 MFI SC','GOLD','COROLLA',11802.00,0.00,'Sedan','/image/64.jpg',1),(65,'TOYOTA','V4','BLACK','COROLLA',12742.00,0.00,'Sedan','/image/65.jpg',1),(66,'TOYOTA','V4','BLACK','COROLLA',8178.00,0.00,'Sedan','/image/66.jpg',1),(67,'TOYOTA','V6 SFI','BEIGE','COROLLA',12575.00,0.00,'Sedan','/image/67.jpg',1),(68,'TOYOTA','V4','SILVER','COROLLA',7780.00,0.00,'Sedan','/image/68.jpg',1),(69,'TOYOTA','Eco','BLUE','COROLLA',8242.00,0.00,'Sedan','/image/69.jpg',1),(70,'TOYOTA','Eco','GOLD','COROLLA',9796.00,0.00,'Sedan','/image/70.jpg',1),(71,'TOYOTA','V6 NA S','RED','COROLLA',8009.00,0.00,'Sedan','/image/71.jpg',1),(72,'TOYOTA','V6 NA S','SILVER','COROLLA',9824.00,0.00,'Sedan','/image/72.jpg',1),(73,'TOYOTA','V6 DO','GREEN','COROLLA',6598.00,0.00,'Sedan','/image/73.jpg',1),(74,'TOYOTA','V6 EFI','SILVER','COROLLA',9068.00,0.00,'Sedan','/image/74.jpg',1),(75,'TOYOTA','V6 E','GOLD','COROLLA',10369.00,0.00,'Sedan','/image/75.jpg',1),(76,'TOYOTA','V6 SFI','SILVER','COROLLA',12441.00,0.00,'Sedan','/image/76.jpg',1),(77,'CHEVROLET','V6 SFI','RED','EQUINOX AWD',12716.00,0.00,'Suv','/image/77.jpg',1),(78,'TOYOTA','V6 EFI','RED','HIGHLANDER 2WD',9591.00,0.00,'Suv','/image/78.jpg',1),(79,'TOYOTA','V6 S','WHITE','HIGHLANDER 2WD',9582.00,0.00,'Suv','/image/79.jpg',1),(80,'TOYOTA','V6 EFI','SILVER','HIGHLANDER 2WD',10303.00,0.00,'Suv','/image/80.jpg',1),(81,'TOYOTA','V4','GOLD','HIGHLANDER 2WD',10218.00,0.00,'Suv','/image/81.jpg',1),(82,'CHEVROLET','V8','GREY','IMPALA',12212.00,0.00,'Sedan','/image/82.jpg',1),(83,'CHEVROLET','V4','BROWN','IMPALA',12471.00,0.00,'Sedan','/image/83.jpg',1),(84,'CHEVROLET',' V6 MFI SC','BLUE','IMPALA',8973.00,0.00,'Sedan','/image/84.jpg',1),(85,'CHEVROLET','V6 SFI','SILVER','IMPALA',12235.00,0.00,'Sedan','/image/85.jpg',1),(86,'CHEVROLET','V6 E','BLUE','IMPALA',10798.00,0.00,'Sedan','/image/86.jpg',1),(87,'CHEVROLET','V6 DO','GREY','IMPALA 3.5L',12064.00,0.00,'Sedan','/image/87.jpg',1),(88,'CHEVROLET','V4','RED','IMPALA',14604.00,0.00,'Sedan','/image/88.jpg',1),(89,'BUICK','V6 E','SILVER','LACROSSE',13619.00,0.00,'Sedan','/image/89.jpg',1),(90,'BUICK','V6 SFI','SILVER','LACROSSE',10851.00,0.00,'Sedan','/image/90.jpg',1),(91,'BUICK','V6 MFI SC','WHITE','LACROSSE',12763.00,0.00,'Sedan','/image/91.jpg',1),(92,'BUICK','V6 SFI','BLUE','LACROSSE',14133.00,0.00,'Sedan','/image/92.jpg',1),(93,'BUICK','V6 E','MAROON','LACROSSE',13547.00,0.00,'Sedan','/image/93.jpg',1),(94,'BUICK','V4','BEIGE','LACROSSE',12109.00,0.00,'Sedan','/image/94.jpg',1),(95,'BUICK','V6 SFI','BLACK','LACROSSE 3.8L',12858.00,0.00,'Sedan','/image/95.jpg',1),(96,'BUICK','V6 E','WHITE','LACROSSE 3.8L',11100.00,0.00,'Sedan','/image/96.jpg',1),(97,'BUICK','V6 SFI','GREY','LACROSSE 3.8L',11100.00,0.00,'Sedan','/image/97.jpg',1),(98,'BUICK','V6 MFI SC','BLUE','LACROSSE 3.8L',12281.00,0.00,'Sedan','/image/98.jpg',1),(99,'BUICK','V6 E','SILVER','LACROSSE 3.8L',13978.00,0.00,'Sedan','/image/99.jpg',1),(100,'BUICK','V6 SFI','SILVER','LE SABRE',11050.00,0.00,'Sedan','/image/100.jpg',1),(101,'BUICK','V4','WHITE','LE SABRE',8409.00,0.00,'Sedan','/image/101.jpg',1),(102,'BUICK','V6 SFI','BLUE','LE SABRE',8829.00,0.00,'Sedan','/image/102.jpg',1),(103,'BUICK','V4','WHITE','LE SABRE',7894.00,0.00,'Sedan','/image/103.jpg',1),(104,'BUICK','V4','SILVER','LE SABRE 3.8L',7776.00,0.00,'Sedan','/image/104.jpg',1),(105,'BUICK','Eco','SILVER','LE SABRE 3.8L',6114.00,0.00,'Sedan','/image/105.jpg',1),(106,'BUICK',' V6 MFI SC','GREY','LE SABRE Unspecified',6500.00,0.00,'Sedan','/image/106.jpg',1),(107,'BUICK','V4','SILVER','LE SABRE Unspecified',6322.00,0.00,'Sedan','/image/107.jpg',1),(108,'BUICK','V6 E','SILVER','LE SABRE Unspecified',5843.00,0.00,'Sedan','/image/108.jpg',1),(109,'BUICK','V4','GREEN','LE SABRE Unspecified',6500.00,0.00,'Sedan','/image/109.jpg',1),(110,'BUICK','V6 SFI','BLUE','LE SABRE Unspecified',5397.00,0.00,'Sedan','/image/110.jpg',1),(111,'CHEVROLET','V6 NA S','SILVER','MALIBU 4C',6909.00,0.00,'Sedan','/image/111.jpg',1),(112,'CHEVROLET',' V6 MFI SC','BLUE','MALIBU 4C',11661.00,0.00,'Sedan','/image/112.jpg',1),(113,'CHEVROLET','V6 SFI','SILVER','MALIBU 4C',11914.00,0.00,'Sedan','/image/113.jpg',1),(114,'CHEVROLET','V4','BLUE','MALIBU 4C',12413.00,0.00,'Sedan','/image/114.jpg',1),(115,'CHEVROLET','V6 NA S','BEIGE','MALIBU 4C 2.2L I4 MP',8806.00,0.00,'Sedan','/image/115.jpg',1),(116,'CHEVROLET','V6 NA S','RED','MALIBU V6',12224.00,0.00,'Sedan','/image/116.jpg',1),(117,'CHEVROLET','V6 T','GOLD','MALIBU V6',11078.00,0.00,'Sedan','/image/117.jpg',1),(118,'CHEVROLET','V6 SOHC','BLUE','MALIBU V6 3.1L',4407.00,0.00,'Sedan','/image/118.jpg',1);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `region` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `region_name` char(20) NOT NULL,
  `region_manager_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `region_manager` (`region_manager_id`),
  CONSTRAINT `region_ibfk_1` FOREIGN KEY (`region_manager_id`) REFERENCES `salesperson` (`id`) ON DELETE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES (1,'AL',28),(2,'AK',36),(3,'AR',26),(4,'AZ',37),(5,'PA',27),(6,'NJ',25),(7,'NY',41),(8,'OH',39),(9,'OK',40),(10,'TX',38);
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salesperson`
--

DROP TABLE IF EXISTS `salesperson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salesperson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(40) NOT NULL,
  `email` char(50) NOT NULL,
  `salary` decimal(8,2) NOT NULL,
  `job_title` char(40) NOT NULL,
  `store_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sp_addressid` (`address_id`),
  CONSTRAINT `sp_addressid` FOREIGN KEY (`id`) REFERENCES `address` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salesperson`
--

LOCK TABLES `salesperson` WRITE;
/*!40000 ALTER TABLE `salesperson` DISABLE KEYS */;
INSERT INTO `salesperson` VALUES (1,'Roy Crawford','rcrawford0@plala.or.jp',2480.00,'salesperson',6,1),(2,'Angela Wells','awells1@intel.com',3196.00,'salesperson',6,9),(3,'Sarah Nichols','snichols2@livejournal.com',3251.00,'salesperson',3,6),(4,'Henry Wells','hwells3@e-recht24.de',3564.00,'salesperson',15,14),(5,'Patrick Bowman','pbowman4@dailymotion.com',3226.00,'salesperson',3,13),(6,'Aaron James','ajames5@pcworld.com',3644.00,'salesperson',7,59),(7,'John Thomas','jthomas6@usnews.com',4002.00,'salesperson',4,69),(8,'Judith Chapman','jchapman7@ifeng.com',3293.00,'salesperson',6,21),(9,'Bonnie George','bgeorge8@biglobe.ne.jp',3046.00,'salesperson',13,46),(10,'Anne Payne','apayne9@blog.com',4420.00,'salesperson',10,21),(11,'Sharon Owens','sowensu@goodreads.com',3954.00,'salesperson',5,56),(12,'Irene Dixon','idixonv@house.gov',4488.00,'salesperson',15,22),(13,'Rebecca Romero','rromerow@intel.com',2611.00,'salesperson',6,48),(14,'Ernest Dunn','edunnx@ow.ly',4370.00,'salesperson',12,48),(15,'Pamela Andrews','pandrewsy@slate.com',4673.00,'store_manager',14,4),(16,'Eric Hart','ehartz@jigsy.com',2991.00,'store_manager',13,70),(17,'Ryan Robertson','rrobertson10@youtube.com',3805.00,'store_manager',11,4),(18,'Jack Nichols','jnichols11@t.co',2496.00,'store_manager',3,64),(19,'Jennifer Fuller','jfuller12@github.com',3727.00,'store_manager',2,32),(20,'Bonnie Duncan','bduncan13@canalblog.com',3771.00,'store_manager',4,11),(21,'Sarah Rivera','srivera14@yellowbook.com',3273.00,'store_manager',2,37),(22,'Cynthia Fuller','cfuller15@elpais.com',2410.00,'store_manager',5,69),(23,'Joe Johnston','jjohnston16@utexas.edu',2748.00,'region_manager',10,14),(24,'Scott Andrews','sandrews17@w3.org',3806.00,'region_manager',11,69),(25,'Ernest Spencer','espencer18@princeton.edu',3866.00,'region_manager',8,33),(26,'Charles Garrett','cgarrett19@ask.com',4619.00,'region_manager',15,46),(27,'Nicholas Riley','nriley1n@youtube.com',2521.00,'store_manager',11,54),(28,'Jeremy Watson','jwatson1o@eventbrite.com',2802.00,'store_manager',4,56),(29,'Ralph Wells','rwells1p@comcast.net',2724.00,'store_manager',14,53),(30,'Betty Fernandez','bfernandez1q@eepurl.com',3895.00,'store_manager',8,68),(31,'Joshua Kelley','jkelley1r@cbc.ca',4732.00,'store_manager',12,14),(32,'Marilyn Fowler','mfowler1s@amazon.co.jp',3942.00,'store_manager',1,51),(33,'William Hayes','whayes1t@so-net.ne.jp',2334.00,'store_manager',6,47),(34,'Roger Cooper','rcooper1u@4shared.com',2916.00,'region_manager',4,44),(35,'Kimberly Brown','kbrown1v@domainmarket.com',4198.00,'region_manager',1,12),(36,'Jason Long','jlong1w@ocn.ne.jp',3504.00,'region_manager',13,48),(37,'Joan Chavez','jchavez1x@canalblog.com',4310.00,'region_manager',1,63),(38,'Adam Lopez','alopez1y@desdev.cn',4922.00,'region_manager',9,40),(39,'Joyce Berry','jberry1z@mac.com',4863.00,'region_manager',12,21),(40,'Albert Washington','awashington26@cdbaby.com',3811.00,'salesperson',10,15),(41,'Jacqueline Wallace','jwallace27@shinystat.com',4123.00,'salesperson',3,12),(42,'Shawn Fields','sfields28@wordpress.org',3933.00,'salesperson',15,66),(43,'Ashley Powell','apowell29@jalbum.net',3078.00,'salesperson',6,48),(44,'Charles Hudson','chudson2a@mediafire.com',4811.00,'salesperson',1,3),(45,'Heather Kennedy','hkennedy2b@ebay.co.uk',3818.00,'salesperson',14,35),(46,'Jessica White','jwhite2c@narod.ru',2234.00,'salesperson',14,40),(47,'Jane Hernandez','jhernandez2d@yahoo.co.jp',3130.00,'salesperson',5,40),(48,'Terry King','tking2e@home.pl',2216.00,'salesperson',8,61),(49,'Ann Martin','amartin2f@ezinearticles.com',3873.00,'salesperson',1,63),(50,'Sean Cole','scole2g@cnn.com',3726.00,'salesperson',2,30),(51,'Cheryl Griffin','cgriffin2h@infoseek.co.jp',4326.00,'salesperson',12,21),(52,'Matthew Barnes','mbarnes2i@yandex.ru',2919.00,'salesperson',13,65),(53,'Jessica Wells','jwells2j@com.com',2867.00,'salesperson',8,19),(54,'Carlos Reid','creid2k@epa.gov',4422.00,'salesperson',13,47),(55,'Marilyn Williams','mwilliams2l@admin.ch',4705.00,'salesperson',9,61),(56,'Mildred Crawford','mcrawford2m@biglobe.ne.jp',4096.00,'salesperson',6,70),(57,'Nicole Stevens','nstevens2n@mediafire.com',4875.00,'salesperson',7,65),(58,'Brandon Lawrence','blawrence2o@php.net',3902.00,'salesperson',10,2),(59,'Donna Armstrong','darmstrong2p@umn.edu',4107.00,'salesperson',4,41),(60,'Norma Jacobs','njacobs2q@vinaora.com',4691.00,'salesperson',1,61),(61,'Evelyn Hill','ehill2r@barnesandnoble.com',4098.00,'salesperson',13,25);
/*!40000 ALTER TABLE `salesperson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num_of_salesperson` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `store_manager_id` int(11) NOT NULL,
  `region_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `store_manager` (`store_manager_id`),
  KEY `regionid` (`region_id`),
  KEY `s_addressid` (`address_id`),
  CONSTRAINT `store_ibfk_1` FOREIGN KEY (`store_manager_id`) REFERENCES `salesperson` (`id`) ON DELETE NO ACTION,
  CONSTRAINT `store_ibfk_2` FOREIGN KEY (`region_id`) REFERENCES `region` (`id`) ON DELETE NO ACTION,
  CONSTRAINT `store_ibfk_3` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store`
--

LOCK TABLES `store` WRITE;
/*!40000 ALTER TABLE `store` DISABLE KEYS */;
INSERT INTO `store` VALUES (1,5,'UREEE',29,3,72),(2,6,'WEBU',35,5,85),(3,8,'IUTO',33,7,88),(4,3,'OATS',34,9,72),(5,2,'UIR',30,6,86),(6,3,'SRGRGSG',24,1,92),(7,3,'UIRRSE',17,3,98),(8,2,'EGXYR',31,4,89),(9,5,'YVEWF',18,2,80),(10,3,'ZETUI',21,8,72),(11,4,'AMEIE',20,10,88),(12,5,'ANIEG',23,2,93),(13,7,'CAUFHI',32,1,91),(14,2,'ACIA',19,7,91),(15,3,'DFJKEHJ',22,9,94);
/*!40000 ALTER TABLE `store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_date` date NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `salesperson_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `customerid` (`customer_id`),
  KEY `transaction_product_idx` (`product_id`),
  KEY `transaction_salesperson_idx` (`salesperson_id`),
  CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE NO ACTION,
  CONSTRAINT `transaction_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `transaction_salesperson` FOREIGN KEY (`salesperson_id`) REFERENCES `salesperson` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES (1,'2013-03-13',1,1,1,4),(2,'2004-11-11',2,2,2,6),(3,'2001-10-07',3,3,3,8),(4,'2000-04-25',4,4,4,11),(5,'2004-07-07',5,5,5,1),(6,'2009-01-18',6,6,6,2),(7,'2011-05-23',7,7,7,8),(8,'2009-03-11',8,8,8,6),(9,'2010-11-14',9,9,9,14),(10,'2003-01-27',10,10,10,3);
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'vehicle'
--
/*!50003 DROP PROCEDURE IF EXISTS `admin_get_inventory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `admin_get_inventory`(

)
BEGIN
SELECT products.productid as id, products.image, count(1) as count
FROM products
	join vehicle
		on products.productid = vehicle.productid
where vehicle.orderid is null
group by products.productid, products.image;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `admin_statistic_get_aggregate_profit` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `admin_statistic_get_aggregate_profit`(
	_start_pdate datetime,
    _end_pdate datetime
)
BEGIN
select ifnull(sum(profit.profit),0) as totalProfit, count(1) as totalCount
from
	(select vehicle.productid as id
	from vehicle
		join `order`
			on vehicle.orderid = `order`.orderid
	where `order`.pdate >= _start_pdate and `order`.pdate <= _end_pdate) as sales
    
	join
    
	(select productid as id, price - inprice as profit
	from products) as profit

	on sales.id = profit.id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `admin_statistic_get_best_business` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `admin_statistic_get_best_business`(
	_productid int
)
BEGIN

select customer.name, count(1) as count
from vehicle
	join products
		on vehicle.productid = products.productid
       and products.productid = _productid
	join `order`
		on `order`.orderid = vehicle.orderid
	join customer
		on `order`.customerid = customer.customerid
       and customer.kind = 1
group by customer.name
order by count desc
limit 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `admin_statistic_get_region_sell_volumne` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `admin_statistic_get_region_sell_volumne`(
	_start_pdate datetime,
    _end_pdate datetime
)
BEGIN

select region_name as regionName, count(1) as totalCount, ifnull(sum(profit.profit),0) as totalProfit
from
	(select vehicle.productid as id, region.region_name
	from vehicle
		join `order`
			on vehicle.orderid = `order`.orderid
		join store
			on `order`.storeid = store.storeid
		join region
			on store.regionid = region.regionid
	where `order`.pdate >= _start_pdate and `order`.pdate <= _end_pdate
	) as sales
    
	join
    
	(select productid as id, price - inprice as profit
	from products) as profit

	on sales.id = profit.id
group by sales.region_name
order by totalCount desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `order_get_order_history_by_customerid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `order_get_order_history_by_customerid`(
	_customerid int
)
BEGIN
SELECT orderid, pdate, model, price, store.name as storeName, store.s_addressid
FROM `order` 
	join products
		on `order`.productid = products.productid
	join store
		on `order`.storeid = store.storeid
where customerid = _customerid
order by `order`.orderid desc;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `statistic_get_best_sell_cars` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `statistic_get_best_sell_cars`()
BEGIN
select 
	products.productid as id,
    products.model,
    products.image,
    products.price,
    bestSale.count
from products
	join
	(SELECT `order`.productid, count(1) as count 
	FROM vehicle.vehicle
		join `order`
			on `order`.orderid = vehicle.orderid
	where datediff( now(),`order`.pdate) < 30
	group by `order`.productid) as bestSale
		on products.productid = bestSale.productid
order by bestSale.count desc 
limit 6;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-01 17:08:35
