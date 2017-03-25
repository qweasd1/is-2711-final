-- MySQL dump 10.13  Distrib 5.7.12, for osx10.9 (x86_64)
--
-- Host: localhost    Database: vehicle
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
INSERT INTO `product` VALUES (1,'ACURA','V6 EFI','SILVER','3.2 CL',10865.00,0.00,'Sedan','/image/1.jpg',1),(2,'ACURA','V6 NA S','SILVER','3.2 CL 3.2L',6643.00,0.00,'Sedan','/image/2.jpg',1),(3,'ACURA','V6NA S','WHITE','3.2 CL 3.2L',6446.00,0.00,'Sedan','/image/3.jpg',1),(4,'ACURA','V6 NA S','BLACK','3.2 TL',8940.00,0.00,'Sedan','/image/4.jpg',1),(5,'ACURA','V6 EFI','WHITE','3.2 TL 3.2L',8091.00,0.00,'Sedan','/image/5.jpg',1),(6,'ACURA','V6 EFI','BLUE','3.2 TL 3.2L',8257.00,0.00,'Sedan','/image/6.jpg',1),(7,'ACURA','V6 EFI','RED','3.2 TL 3.2L',11183.00,0.00,'Sedan','/image/7.jpg',1),(8,'ACURA','V6 NA S','RED','3.2 TL 3.2L',8554.00,0.00,'Sedan','/image/8.jpg',1),(9,'ACURA','V4','WHITE','3.2 TL 3.2L',8574.00,0.00,'Sedan','/image/9.jpg',1),(10,'ACURA','V6 DO','SILVER','3.2 TL 3.2L',9208.00,0.00,'Sedan','/image/10.jpg',1),(11,'TOYOTA','V6 NA S','GREY','4 RUNNER 2WD',15204.00,0.00,'Suv','/image/11.jpg',1),(12,'TOYOTA','V6 SFI','WHITE','AVALON',10559.00,0.00,'Sedan','/image/12.jpg',1),(13,'TOYOTA','V6 SOHC','SILVER','CAMRY 4C',10846.00,0.00,'Sedan','/image/13.jpg',1),(14,'TOYOTA','V6 NA S','GREY','CAMRY 4C',15158.00,0.00,'Sedan','/image/14.jpg',1),(15,'TOYOTA','V6 EFI','BLUE','CAMRY 4C',11127.00,0.00,'Sedan','/image/15.jpg',1),(16,'TOYOTA','V6 NA S','GREY','CAMRY 4C',11877.00,0.00,'Sedan','/image/16.jpg',1),(17,'TOYOTA','V6 DO','BLUE','CAMRY 4C',16331.00,0.00,'Sedan','/image/17.jpg',1),(18,'TOYOTA','V6 EFI','BLACK','CAMRY 4C',14972.00,0.00,'Sedan','/image/18.jpg',1),(19,'TOYOTA','V6 EFI','RED','CAMRY 4C',16675.00,0.00,'Sedan','/image/19.jpg',1),(20,'TOYOTA','V4','RED','CAMRY 4C',15077.00,0.00,'Sedan','/image/20.jpg',1),(21,'TOYOTA',' V6 MFI SC','SILVER','CAMRY 4C',15545.00,0.00,'Sedan','/image/21.jpg',1),(22,'TOYOTA','V6 NA S','WHITE','CAMRY 4C 2.4L I-4 EF',8585.00,0.00,'Sedan','/image/22.jpg',1),(23,'TOYOTA','Eco','SILVER','CAMRY 4C 2.4L I-4 SF',14135.00,0.00,'Sedan','/image/23.jpg',1),(24,'TOYOTA','V6 E','WHITE','CAMRY 4C 2.4L I4 SFI',11094.00,0.00,'Sedan','/image/24.jpg',1),(25,'TOYOTA','V6 SFI','WHITE','CAMRY 4C 2.4L I4 SFI',13072.00,0.00,'Sedan','/image/25.jpg',1),(26,'TOYOTA','V4','GREY','CAMRY 4C 2.4L I4 SFI',10964.00,0.00,'Sedan','/image/26.jpg',1),(27,'TOYOTA','V4','RED','CAMRY 4C 2.4L I4 SFI',13175.00,0.00,'Sedan','/image/27.jpg',1),(28,'TOYOTA','V6 S','GREY','CAMRY 4C 2.4L I4 SFI',13104.00,0.00,'Sedan','/image/28.jpg',1),(29,'TOYOTA','V6 SFI','RED','CAMRY SOLARA 4C',14089.00,0.00,'Sedan','/image/29.jpg',1),(30,'TOYOTA','V6 SFI','RED','CAMRY SOLARA 4C',13216.00,0.00,'Sedan','/image/30.jpg',1),(31,'TOYOTA','V6 EFI','GREEN','CAMRY SOLARA',9389.00,0.00,'Sedan','/image/31.jpg',1),(32,'TOYOTA','V6 E','GREEN','CAMRY SOLARA',5891.00,0.00,'Sedan','/image/32.jpg',1),(33,'TOYOTA','V4','BROWN','CAMRY',8878.00,0.00,'Sedan','/image/33.jpg',1),(34,'TOYOTA','V6 E','BLUE','CAMRY',14742.00,0.00,'Sedan','/image/34.jpg',1),(35,'TOYOTA',' V6 MFI SC','BLUE','CAMRY',16009.00,0.00,'Sedan','/image/35.jpg',1),(36,'TOYOTA','V4','WHITE','CAMRY',16770.00,0.00,'Sedan','/image/36.jpg',1),(37,'TOYOTA','V8 T','WHITE','CAMRY',11509.00,0.00,'Sedan','/image/37.jpg',1),(38,'TOYOTA','V8 T','SILVER','CAMRY',10302.00,0.00,'Sedan','/image/38.jpg',1),(39,'TOYOTA','V6 MFI SC','GREY','CAMRY',17204.00,0.00,'Sedan','/image/39.jpg',1),(40,'TOYOTA','V6NA S','BLACK','CAMRY',10994.00,0.00,'Sedan','/image/40.jpg',1),(41,'TOYOTA','Eco','WHITE','CAMRY',14924.00,0.00,'Sedan','/image/41.jpg',1),(42,'BUICK','V8','RED','CENTURY',5887.00,0.00,'Luxury','/image/42.jpg',1),(43,'BUICK','V4','WHITE','CENTURY',7424.00,0.00,'Luxury','/image/43.jpg',1),(44,'BUICK','Eco','WHITE','CENTURY',6627.00,0.00,'Luxury','/image/44.jpg',1),(45,'BUICK','V4','GOLD','CENTURY',7330.00,0.00,'Luxury','/image/45.jpg',1),(46,'BUICK','V6 SFI','WHITE','CENTURY',7496.00,0.00,'Luxury','/image/46.jpg',1),(47,'BUICK','V6 SFI','GOLD','CENTURY',6650.00,0.00,'Luxury','/image/47.jpg',1),(48,'BUICK','V6 MFI SC','WHITE','CENTURY',7890.00,0.00,'Luxury','/image/48.jpg',1),(49,'BUICK','V8 T','SILVER','CENTURY',8196.00,0.00,'Luxury','/image/49.jpg',1),(50,'BUICK','Eco','GREY','CENTURY',6622.00,0.00,'Luxury','/image/50.jpg',1),(51,'BUICK','V6 S','BEIGE','CENTURY',5402.00,0.00,'Luxury','/image/51.jpg',1),(52,'BUICK','V6 SFI','GOLD','CENTURY',5298.00,0.00,'Luxury','/image/52.jpg',1),(53,'BUICK','V4','GOLD','CENTURY',4375.00,0.00,'Luxury','/image/53.jpg',1),(54,'BUICK','V6 SFI','WHITE','CENTURY',4133.00,0.00,'Luxury','/image/54.jpg',1),(55,'BUICK','V6 E','GREY','CENTURY',5441.00,0.00,'Luxury','/image/55.jpg',1),(56,'BUICK','V6 T','SILVER','CENTURY',5208.00,0.00,'Luxury','/image/56.jpg',1),(57,'BUICK','Eco','WHITE','CENTURY',8979.00,0.00,'Luxury','/image/57.jpg',1),(58,'BUICK','V6 E','BROWN','CENTURY',6103.00,0.00,'Luxury','/image/58.jpg',1),(59,'TOYOTA',' V6 MFI SC','SILVER','COROLLA',8660.00,0.00,'Sedan','/image/59.jpg',1),(60,'TOYOTA','V6 MFI SC','GREY','COROLLA',11059.00,0.00,'Sedan','/image/60.jpg',1),(61,'TOYOTA','V6 E','BLACK','COROLLA',11059.00,0.00,'Sedan','/image/61.jpg',1),(62,'TOYOTA','V8 T','SILVER','COROLLA',7258.00,0.00,'Sedan','/image/62.jpg',1),(63,'TOYOTA','V4','BLACK','COROLLA',5683.00,0.00,'Sedan','/image/63.jpg',1),(64,'TOYOTA','V6 MFI SC','GOLD','COROLLA',11802.00,0.00,'Sedan','/image/64.jpg',1),(65,'TOYOTA','V4','BLACK','COROLLA',12742.00,0.00,'Sedan','/image/65.jpg',1),(66,'TOYOTA','V4','BLACK','COROLLA',8178.00,0.00,'Sedan','/image/66.jpg',1),(67,'TOYOTA','V6 SFI','BEIGE','COROLLA',12575.00,0.00,'Sedan','/image/67.jpg',1),(68,'TOYOTA','V4','SILVER','COROLLA',7780.00,0.00,'Sedan','/image/68.jpg',1),(69,'TOYOTA','Eco','BLUE','COROLLA',8242.00,0.00,'Sedan','/image/69.jpg',1),(70,'TOYOTA','Eco','GOLD','COROLLA',9796.00,0.00,'Sedan','/image/70.jpg',1),(71,'TOYOTA','V6 NA S','RED','COROLLA',8009.00,0.00,'Sedan','/image/71.jpg',1),(72,'TOYOTA','V6 NA S','SILVER','COROLLA',9824.00,0.00,'Sedan','/image/72.jpg',1),(73,'TOYOTA','V6 DO','GREEN','COROLLA',6598.00,0.00,'Sedan','/image/73.jpg',1),(74,'TOYOTA','V6 EFI','SILVER','COROLLA',9068.00,0.00,'Sedan','/image/74.jpg',1),(75,'TOYOTA','V6 E','GOLD','COROLLA',10369.00,0.00,'Sedan','/image/75.jpg',1),(76,'TOYOTA','V6 SFI','SILVER','COROLLA',12441.00,0.00,'Sedan','/image/76.jpg',1),(77,'CHEVROLET','V6 SFI','RED','EQUINOX AWD',12716.00,0.00,'Suv','/image/77.jpg',1),(78,'TOYOTA','V6 EFI','RED','HIGHLANDER 2WD',9591.00,0.00,'Suv','/image/78.jpg',1),(79,'TOYOTA','V6 S','WHITE','HIGHLANDER 2WD',9582.00,0.00,'Suv','/image/79.jpg',1),(80,'TOYOTA','V6 EFI','SILVER','HIGHLANDER 2WD',10303.00,0.00,'Suv','/image/80.jpg',1),(81,'TOYOTA','V4','GOLD','HIGHLANDER 2WD',10218.00,0.00,'Suv','/image/81.jpg',1),(82,'CHEVROLET','V8','GREY','IMPALA',12212.00,0.00,'Sedan','/image/82.jpg',1),(83,'CHEVROLET','V4','BROWN','IMPALA',12471.00,0.00,'Sedan','/image/83.jpg',1),(84,'CHEVROLET',' V6 MFI SC','BLUE','IMPALA',8973.00,0.00,'Sedan','/image/84.jpg',1),(85,'CHEVROLET','V6 SFI','SILVER','IMPALA',12235.00,0.00,'Sedan','/image/85.jpg',1),(86,'CHEVROLET','V6 E','BLUE','IMPALA',10798.00,0.00,'Sedan','/image/86.jpg',1),(87,'CHEVROLET','V6 DO','GREY','IMPALA 3.5L',12064.00,0.00,'Sedan','/image/87.jpg',1),(88,'CHEVROLET','V4','RED','IMPALA',14604.00,0.00,'Sedan','/image/88.jpg',1),(89,'BUICK','V6 E','SILVER','LACROSSE',13619.00,0.00,'Sedan','/image/89.jpg',1),(90,'BUICK','V6 SFI','SILVER','LACROSSE',10851.00,0.00,'Sedan','/image/90.jpg',1),(91,'BUICK','V6 MFI SC','WHITE','LACROSSE',12763.00,0.00,'Sedan','/image/91.jpg',1),(92,'BUICK','V6 SFI','BLUE','LACROSSE',14133.00,0.00,'Sedan','/image/92.jpg',1),(93,'BUICK','V6 E','MAROON','LACROSSE',13547.00,0.00,'Sedan','/image/93.jpg',1),(94,'BUICK','V4','BEIGE','LACROSSE',12109.00,0.00,'Sedan','/image/94.jpg',1),(95,'BUICK','V6 SFI','BLACK','LACROSSE 3.8L',12858.00,0.00,'Sedan','/image/95.jpg',1),(96,'BUICK','V6 E','WHITE','LACROSSE 3.8L',11100.00,0.00,'Sedan','/image/96.jpg',1),(97,'BUICK','V6 SFI','GREY','LACROSSE 3.8L',11100.00,0.00,'Sedan','/image/97.jpg',1),(98,'BUICK','V6 MFI SC','BLUE','LACROSSE 3.8L',12281.00,0.00,'Sedan','/image/98.jpg',1),(99,'BUICK','V6 E','SILVER','LACROSSE 3.8L',13978.00,0.00,'Sedan','/image/99.jpg',1),(100,'BUICK','V6 SFI','SILVER','LE SABRE',11050.00,0.00,'Sedan','/image/100.jpg',1),(101,'BUICK','V4','WHITE','LE SABRE',8409.00,0.00,'Sedan','/image/101.jpg',1),(102,'BUICK','V6 SFI','BLUE','LE SABRE',8829.00,0.00,'Sedan','/image/102.jpg',1),(103,'BUICK','V4','WHITE','LE SABRE',7894.00,0.00,'Sedan','/image/103.jpg',1),(104,'BUICK','V4','SILVER','LE SABRE 3.8L',7776.00,0.00,'Sedan','/image/104.jpg',1),(105,'BUICK','Eco','SILVER','LE SABRE 3.8L',6114.00,0.00,'Sedan','/image/105.jpg',1),(106,'BUICK',' V6 MFI SC','GREY','LE SABRE Unspecified',6500.00,0.00,'Sedan','/image/106.jpg',1),(107,'BUICK','V4','SILVER','LE SABRE Unspecified',6322.00,0.00,'Sedan','/image/107.jpg',1),(108,'BUICK','V6 E','SILVER','LE SABRE Unspecified',5843.00,0.00,'Sedan','/image/108.jpg',1),(109,'BUICK','V4','GREEN','LE SABRE Unspecified',6500.00,0.00,'Sedan','/image/109.jpg',1),(110,'BUICK','V6 SFI','BLUE','LE SABRE Unspecified',5397.00,0.00,'Sedan','/image/110.jpg',1),(111,'CHEVROLET','V6 NA S','SILVER','MALIBU 4C',6909.00,0.00,'Sedan','/image/111.jpg',1),(112,'CHEVROLET',' V6 MFI SC','BLUE','MALIBU 4C',11661.00,0.00,'Sedan','/image/112.jpg',1),(113,'CHEVROLET','V6 SFI','SILVER','MALIBU 4C',11914.00,0.00,'Sedan','/image/113.jpg',1),(114,'CHEVROLET','V4','BLUE','MALIBU 4C',12413.00,0.00,'Sedan','/image/114.jpg',1),(115,'CHEVROLET','V6 NA S','BEIGE','MALIBU 4C 2.2L I4 MP',8806.00,0.00,'Sedan','/image/115.jpg',1),(116,'CHEVROLET','V6 NA S','RED','MALIBU V6',12224.00,0.00,'Sedan','/image/116.jpg',1),(117,'CHEVROLET','V6 T','GOLD','MALIBU V6',11078.00,0.00,'Sedan','/image/117.jpg',1),(118,'CHEVROLET','V6 SOHC','BLUE','MALIBU V6 3.1L',4407.00,0.00,'Sedan','/image/118.jpg',1);
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-25 10:59:18
