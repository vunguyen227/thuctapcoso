-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: ttcoso
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `product_id` int NOT NULL,
  `content` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `user_id` int NOT NULL,
  KEY `product_id` (`product_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (20,'ok','November 22, 2021 11:39 AM',7),(20,'iphone 13 đẹp thực sự','November 22, 2021 11:39 AM',7),(20,'good','November 22, 2021 11:46 AM',7),(20,'mlem mlem','November 22, 2021 11:47 AM',7),(37,'ok','November 22, 2021 11:51 AM',7),(37,'a51','November 22, 2021 11:51 AM',7),(27,'test','November 22, 2021 3:28 PM',7),(23,'ok','November 22, 2021 3:29 PM',7),(22,'Xiaomi Redmi note 10 5G','November 22, 2021 3:41 PM',7),(24,'Xiaomi Redmi 9C','November 22, 2021 3:41 PM',7),(26,'Xiaomi Redmi 9T','November 22, 2021 3:41 PM',7),(28,'Xiaomi Redmi note 10S','November 22, 2021 3:42 PM',7),(28,'hihi','November 22, 2021 3:42 PM',7),(29,'hiu hiu','November 22, 2021 3:42 PM',7),(39,'Samsung Galaxy A52s 5G','November 22, 2021 4:02 PM',7),(45,'sony\r\n\r\nok done','November 22, 2021 4:07 PM',7),(66,'iphone 12','November 22, 2021 7:59 PM',7),(30,'aaaaaaaaa','November 22, 2021 10:07 PM',7),(67,'iPhone 11','November 23, 2021 6:56 PM',7),(23,'hiuhiu','November 28, 2021 9:38 AM',7);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `images` (
  `product_id` int NOT NULL,
  `image` varchar(255) NOT NULL,
  KEY `product_id` (`product_id`),
  CONSTRAINT `images_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (20,'4e8ee712265c99ab684b641a9862d458.png'),(20,'23864a219cb4345844fe8c9bb8673ae6.png'),(21,'ade92a20034d32ac80efd4a4aa85306e.png'),(21,'c5fa4386d7a531f6b02fe5585bf3b13d.png'),(21,'8113dec29498f48e1276c796619a4def.png'),(22,'1f5bfc9454e82c947f9ec904b2574b05.png'),(22,'961623c81af37f6c629fbdae96515f82.png'),(22,'f98924188a25ae81cc9643943d3940bc.png'),(23,'14756c8177a5b52b10603077450aaf14.png'),(23,'2fb4e1010e75fc7f18f2e4b1cac2b2dd.png'),(24,'fdf02d16ef146b5b617b8b2a83e5d672.png'),(24,'bdf3d4341a537a00cfe5e037a7600fa4.png'),(24,'d9ee182950dbd77a6ed5b526f697c0cb.png'),(25,'b632b740f3e000221f168692d8a906b4.png'),(25,'2650fd3cc86d8b0a40410dd59b59c66e.png'),(26,'df6527566ca706ff488d2f2ca8b8d91d.png'),(26,'bb1bbb494ba1b32b5003167d16fd04bf.png'),(26,'80e78e05541c9e2addc07503dbc0f1af.png'),(27,'69a952ae7b6a0789c99395a5df26b59f.png'),(27,'017d5084079f45c0fa167a09f38ad331.png'),(28,'b85acfeb4fd8621b7f740c151ec1b0ff.png'),(28,'866eae6f048b1097e47983fdbb9526b6.png'),(28,'70d14e665e1db1189cd6a76d2d663fdf.png'),(28,'33d5778668882fe66257c5e5abb57faf.png'),(29,'15880704699efc17f9c8fe84aff48e77.png'),(29,'87784d961342d11b9043280fafedde20.png'),(30,'dd4bea9cf5c403e0c9adf13b30fd7739.png'),(30,'897cba0e5253c8645aa8884acef4309f.png'),(31,'c58defa99603e34c421020b6263272ab.png'),(31,'a276b9fd2fc835d0eb974fb1e489b942.png'),(32,'56a2944222b59f99ca93a3a5a30327a8.png'),(32,'6e23cffc5b9576fa61be72c956d5af87.png'),(33,'b264fc76049e9902d2d4e3318280286c.png'),(33,'1f9b9b96d9a70a033d1efbf5f5885016.png'),(34,'3df857e3217f4fb96b6835cd99eb2bb2.png'),(34,'a433a726537d3c6b5bede4058456bc3d.png'),(35,'1c878d6556d6133881d4b3ffee9f2d4c.png'),(35,'860cae0fb4bd4b355081883d03b0e320.png'),(36,'430a6d8c2642307ead809b1760631438.png'),(36,'f7fc2cc2e4433c543ef0b0d2b55de403.png'),(37,'14e21a1c110bcae0ae2dc99c78522b4b.png'),(37,'2f27b94fef0d430186e1dca590201e83.png'),(38,'8b50a049b302695bf9b8d1a839a061e5.png'),(38,'63b6886d58f6d723c225b5c7899aac94.png'),(38,'5a92a8cd53649520a6b43b85b1146970.png'),(38,'316cdbc33ea1727c2f5e599d08038ae2.png'),(39,'1c9504ed0948484bdb9f366599a51c5b.png'),(39,'014b1138e32b88203eed3e210405dbfe.png'),(40,'81ef1a88ba22f119f8b0d61f56c9e863.png'),(40,'73a3f2022e0829f7e64fb07ae1dd9526.png'),(40,'70be3c235ac6ae42f6355ddf98115f1f.png'),(41,'7301e315222b6f8379c07c64fcc9091e.png'),(41,'d8e395c8fc4c48fa84c1e26265d2fbf1.png'),(41,'093f2bea90a92ace1d98b65e209c0afa.png'),(41,'91fa88168da5a54bef0b5fba5eda1a0d.png'),(42,'383fdaeb6ca65e9333de413d3b7ad823.png'),(42,'fd5369c3cb41f7c9edf2cb8afb45eab9.png'),(43,'f51230193ade7ad7dbe52db84564a3c9.png'),(43,'65d76acccf85564abc74835db07e0e3b.png'),(44,'2d623f7fb3b1a2fec9713fceb50d8928.png'),(44,'a289a5244f80331b200b4b07317cf368.png'),(45,'df7fa38df37d076330147366b7ef09ee.png'),(45,'7c313bf6ce012bf37457e0ec628d890c.png'),(45,'dab3b24795597eab9e19ebae02f6bed9.png'),(46,'3d6d356c48e4a3c59dd66471c4f98a9c.png'),(46,'7e710228c678129e6ef2f8bc54e625a2.png'),(47,'1d1b29628f8a99fc095f8ccd8397d263.png'),(47,'fe38ae082c83dce79fd78ab4f0bd46aa.png'),(48,'318c0e010f148b9b1dfe20e35e26ee8b.png'),(48,'efa7ae6d80b3bc4005555ce601f42ca5.png'),(49,'a664b5f5045fea5d7dd1b75f7db2bed1.png'),(49,'d7ae5b68cdc7a651d47f85e4eff1a217.png'),(50,'b8bdfdfb0dd3756e9a957dbbc9e48148.png'),(50,'7745602d0af0352f5d2ea60e625cb02f.png'),(50,'e5371510f5a312aa24b4f9801f5fb14c.png'),(51,'a6483bd2dc8d3ac20b7599edd1f21f3c.png'),(51,'3877953bd8fea35b6ed734d1cd2ab23e.png'),(52,'2b97e75f3fb11bf2735d4000086c29b2.png'),(52,'c64411372f989d3cd422f76b27e5c419.png'),(53,'131c17d7a4fbdb229ef1799281d3d102.png'),(53,'5ab8229047a7aba2647de9763ba0513a.png'),(54,'dace88d0bc9481c385324d3d428b9078.png'),(54,'2ca887ea6b148e451bae46a2744d442d.png'),(55,'189f7f7e33ea7b6bd89b6fcb852c0e0d.png'),(55,'8dff4daf03cd7ed6ae99c7939b5d8006.png'),(55,'4d51f2522cc1067a9030bf0b1e2c5a15.png'),(56,'eac22bfb4d94727b7cba34e9987cb0ee.png'),(56,'8bda656a8ee43ed28d417186b9676bb6.png'),(57,'da5992f79f09831f72ad5f6f48e5184e.png'),(57,'e66770574e7aa4f590b5e4f2494dbe34.png'),(57,'f79ce17726db620879f715f480c37175.png'),(58,'daf66a5779eb1706c7fec22d31a8c86a.png'),(58,'ec8ea1ccbd9bda5c4cafbfde2c63b861.png'),(59,'b8185c31691c9ad09aca427a727d2444.png'),(59,'10b7be63551efa39ebb133338cee9d81.png'),(59,'977ca61db40055900ba3f2629cee9964.png'),(60,'2dbde35d75cdb5822bbba48399e74728.png'),(60,'95f486a2e742f30d2362869f6de103a3.png'),(61,'e7b310cb2e5ce331a2238d33297786db.png'),(61,'3267d39ecf7fe3bfce76728e010ebc9e.png'),(62,'7dd05a00967d61f496b74f89554bcd57.png'),(62,'f0d61a702a61b9f4c433dde455ca1110.png'),(62,'164b147e0a84e13b41b93463a95d257d.png'),(63,'7e6925fb7a888740f61dee80fcaec5c7.png'),(63,'47857f8b32151aca7e4e2f61749b360f.png'),(64,'4057483c75a7c10f9a75b2f538120b75.png'),(64,'acaa3a5bab45481d753fd885db1e045d.png'),(64,'1f1b4c5a680cf78d7f6cac90b416c09f.png'),(65,'887e80ff387bda2d8ffec9153a2f7b96.png'),(65,'0cdff2b3b56c1facdc8a2459ba2952a6.png'),(65,'681e1a935722261ace451e41f7427795.png'),(66,'29879ab1d9f43b952f6290f1e34c6e6b.png'),(66,'9966f92342f198b840fb85e67453bf87.png'),(67,'000ccceb241fa4897a4f1d7a4db601fb.png'),(67,'db12a452d49cb78fb628a1983e966bba.png'),(68,'d9fc5faeed71726a64508add339f2f91.png'),(68,'1054f59a9c0c37e5811484c0901ded99.png'),(68,'62d3e561856ed3138be7a565f663d4e9.png'),(69,'8482003c338c2377bf4c5c9fe2275dae.png'),(69,'35a187f7b8a1f02b08e1371b659dd8b2.png'),(69,'18b99e13bfa722830b40ae327617de74.png'),(70,'d50950fc71783a3a2f87434b98a73db2.png'),(70,'9ac1c001b6b4eee4865e50d7e876c1ac.png'),(70,'84afc93f33c437d9f4add0a9ad80c707.png'),(71,'f91c0c8e5a5712cb44b0ef1fac9ceeb8.png'),(71,'566c2febc503d041aca170df9e349509.png'),(72,'e214e67f313a26fe236fd03a5a0054ed.png'),(72,'e3cf03fff2a621b8f426d80f22728ea7.png'),(73,'ed52f8e4f723ff8ed1a27087d98c71a9.png'),(73,'b98296196846990b1f1e54984977c7f4.png'),(73,'538af59ed832554abde31130bb93b1df.png'),(74,'1ccbda65eae6000c94eaac9796036dcc.png'),(74,'9b0d91721344f384e33582a52ecbb2ba.png'),(74,'177374ca216e66671ea6e35bbfaba1c4.png'),(75,'bafe6f7cc107fd4e4ee5dcf7a42f4357.png'),(75,'dcafaaa32b1a75994e2734c59c2a3316.png'),(76,'ef45bf5a441edb72d1fea29ce2d8bfb6.png'),(76,'6a318d612e5a186abcb66e3dfc8551bd.png'),(77,'c21c1d894316ec74e07932b83ef87a2f.png'),(77,'e9947dee6abe7e3766384ac7e389c2b6.png'),(78,'5c8acd0ba6ab4598a3ddb311f2bfdee3.png'),(78,'025a79ede3b4a7f7b4d643d99f3a8aa1.png'),(79,'d2315b2a442aa97320449de0c1b5f718.png'),(79,'df93a18f00bacaefc1f30c25514e8027.png'),(80,'00111eefe225a4725a117f7014f53e2a.png'),(80,'f0735186f11142e76f9d1c9bd6a2e823.png'),(81,'b2f5925dd8f85ae49e1f83dae9912d76.png'),(81,'5e3ae3887b5705a1531f71d105d83f15.png'),(82,'4d0aadd7c2314bcb94b7892a193e5464.png'),(82,'e8c103bb5d45c364798c73aa9eca8c03.png'),(83,'ed8df2da87111aec4d7f74961cd65f96.png'),(83,'4784c84b7b3213c48838b452229922c8.png'),(83,'1c4acf444648e9d5fb7704bd06d6f60c.png'),(83,'dc48ace0a98abe470723d0fbc1fa36ff.png');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_detail` (
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail`
--

LOCK TABLES `order_detail` WRITE;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
INSERT INTO `order_detail` VALUES (39,20,1),(39,27,3),(40,37,1),(41,27,1),(41,37,2),(42,21,1),(43,20,1),(42,28,2),(47,20,2),(46,23,2),(49,44,1),(49,37,1),(50,64,3),(50,25,1),(50,39,1),(51,29,2),(48,27,4),(57,23,1),(57,31,1),(61,20,2),(62,20,1),(63,20,2),(64,20,3);
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `user_id` int NOT NULL,
  `cost` int NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `status` int NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `payment_info` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  FULLTEXT KEY `created_at` (`created_at`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (7,72690000,'November 25, 2021 8:44 PM',3,39,0),(7,6500000,'June 6, 2021 0:00 AM',3,40,0),(7,25900000,'November 25, 2021 8:48 PM',3,41,0),(7,26970000,'November 25, 2021 10:19 PM',3,42,0),(10,33990000,'November 25, 2021 12:42 PM',3,43,0),(10,0,'LLL',0,44,0),(11,0,'LLL',0,45,0),(7,61800000,'November 27, 2021 1:12 PM',3,46,0),(12,0,'LLL',0,47,0),(7,51600000,'November 27, 2021 10:11 PM',3,48,0),(13,16890000,'November 27, 2021 8:30 PM',3,49,0),(13,51170000,'November 27, 2021 8:53 PM',3,50,0),(13,7300000,'November 27, 2021 10:09 PM',3,51,0),(13,0,'LLL',0,56,0),(7,37490000,'November 28, 2021 7:01 PM',1,57,0),(7,0,'LLL',0,60,0),(17,67980000,'November 28, 2021 7:03 PM',3,61,0),(17,33990000,'November 28, 2021 7:04 PM',3,62,0),(17,67980000,'November 28, 2021 7:04 PM',1,63,0),(17,101970000,'November 28, 2021 7:05 PM',1,64,0),(17,0,'LLL',0,65,0);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `quantity` int NOT NULL,
  `price` int NOT NULL,
  `manufacturer` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `name` (`name`),
  FULLTEXT KEY `name_2` (`name`),
  FULLTEXT KEY `name_3` (`name`),
  FULLTEXT KEY `name_4` (`name`),
  FULLTEXT KEY `name_5` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (20,'iPhone 13 Pro Max','- Apple A15\r\n- 6.7\"\r\n- 6GB\r\n- 128GB',87,33990000,'iphone'),(21,'Xiaomi 11T Pro\r\n','- Snapdragon 888\r\n- 6.67\'\r\n- 12GB rom\r\n- 256GB ram',50,14990000,'xiaomi'),(22,'Xiaomi Redmi note 10 5G\r\n',' - Dimensity 700\r\n - 6.67\'\r\n- 4GB ram\r\n- 128GB rom',33,4850000,'xiaomi'),(23,'iPhone 12 Pro Max','- Apple A14 Bionic (5 nm)\r\n- 6.7\"\r\n- 6GB\r\n- 128GB',100,30900000,'iphone'),(24,'Xiaomi Redmi 9C','- MediaTek Helio G35\r\n- 6.53\'\r\n- 3GB ram\r\n- 64GB rom',30,2750000,'xiaomi'),(25,'iPhone 11 Pro Max','- A13 Bionic\r\n- 6.5\"\r\n- 4GB\r\n- 64GB',100,26000000,'iphone'),(26,'Xiaomi Redmi 9T',' - Snapdragon 750 \r\n- 6.55\'\r\n- 6GB ram\r\n- 128 rom',100,4490000,'xiaomi'),(27,'iPhone XR','- Apple A12 Bionic\r\n- 6.1\"\r\n- 3GB\r\n- 64GB\r\n',97,12900000,'iphone'),(28,'Xiaomi Redmi note 10S\r\n','- MediaTek Helio G95\r\n- 6.66\'\r\n- 8GB ram\r\n- 128GB rom',21,5990000,'xiaomi'),(29,'Realme C21y','- Spreadtrum T610\r\n- 6.66\'\r\n- 3GB ram\r\n- 32GB rom',100,3650000,'realme'),(30,'Samsung Galaxy Z Fold2 5G','- Qualcomm SM8250 Snapdragon 865+\r\n- Chính 7.6\", Phụ 6.23\"\r\n- 12GB\r\n- 256GB',100,39000000,'samsung'),(31,'Realme 7 Pro','- Snapdragon 720G\r\n- 6.4\'\r\n- 8GB ram\r\n- 128Gb rom',30,6590000,'realme'),(32,'Samsung Galaxy S21 Ultra 5G','- Exynos 2100 8 nhân\r\n- 6.8\"\r\n- 12GB\r\n- 256GB',100,25000000,'samsung'),(33,'Realme C17','- Snapdragon 460\r\n- 6.5\'\r\n- 6GB ram\r\n- 128GB rom',40,4650000,'realme'),(34,'Samsung Galaxy Note 20 Ultra','- Exynos 990 (7 nm+)\r\n- 6.9\"\r\n- 8GB\r\n- 256GB',100,19200000,'samsung'),(35,'Realme 8 Pro','- Snapdragon 720G\r\n - 6.6\'\r\n- 8GB ram\r\n- 128GB rom',10,7490000,'realme'),(36,'Realme 8','- MediaTek Helio G95\r\n- 6.6\'\r\n- 8GB ram\r\n- 128GB rom',30,6490000,'realme'),(37,'Samsung Galaxy A51','- Exynos 9611\r\n- 6.5\"\r\n- 6GB\r\n- 128GB',100,6500000,'samsung'),(38,'Nokia C30','- Spreadtrum SC9863A\r\n- 5.9\'\r\n- 3GB ram\r\n- 32GB rom',50,2790000,'nokia'),(39,'Samsung Galaxy A52s 5G','- Snapdragon 778G 5G 8 nhân\r\n- 6.5\"\r\n- 8GB\r\n- 128GB',96,10500000,'samsung'),(40,'Nokia X10 5G','- Snapdragon 480 \r\n- 6.67\'\r\n- 6GB ram\r\n- 128GB rom',10,5990000,'nokia'),(41,'Nokia 2.4','- Snapdragon 480\r\n- 6.5\'\r\n- 2GB ram\r\n- 32Gb rom',50,2190000,'nokia'),(42,'Nokia C20','- Snapdragon 450\r\n- 5.5\'\r\n- 2GB ram\r\n- 32Gb rom',60,1990000,'nokia'),(43,'OPPO Find X3 Pro 5G','- Snapdragon 888 (5 nm)\r\n- 6.7\"\r\n- 12GB\r\n- 256GB',100,23990000,'oppo'),(44,'Oppo Reno5 5G','- Qualcomm SM7250 Snapdragon 765G (7 nm)\r\n- 6.43\"\r\n- 8GB\r\n- 128GB',100,10390000,'oppo'),(45,'Sony Xperia 1 ','- Snapdragon 888\r\n- 6.5\'\r\n- 8GB ram\r\n- 256GB rom\r\n',10,34990000,'sony'),(46,'Oppo A54','- Mediatek MT6765 Helio P35 (12nm)\r\n- 6.5\"\r\n- 4GB\r\n- 128GB',100,4350000,'oppo'),(47,'Oppo A15s','- Mediatek MT6765 Helio P35, 12nm, 8 nhân\r\n- 6.52\"\r\n- 4GB\r\n- 64GB\r\n',100,3790000,'oppo'),(48,'Sony Xperia 10','- Snapdragon 750G\r\n- 6.6\'\r\n- 6GB ram\r\n- 128GB rom',20,11990000,'sony'),(49,'Oppo A74','- Qualcomm Snapdragon 662\r\n- 6.43\"\r\n- 8GB\r\n- 128GB',100,6150000,'oppo'),(50,'Sony Xperia 5','- Snapdragon 750G\r\n- 6.6\'\r\n- 6GB ram\r\n- 128GB rom',30,7300000,'sony'),(51,'Oppo Reno4 Pro','- Qualcomm SM7125 Snapdragon 720G (8 nm)\r\n- 6.5\"\r\n- 8GB\r\n- 256GB',100,8990000,'oppo'),(52,'Xiaomi Redmi K40 5G','- Snapdragon 870\r\n- 6.67\'\r\n- 6GB ram\r\n- 128GB rom\r\n',50,7550000,'xiaomi'),(53,'OPPO Reno6 Z 5G','- MediaTek Dimensity 800U 5G 8 nhân\r\n- 6.43\"\r\n- 8GB\r\n- 128GB',100,9490000,'oppo'),(54,'Oppo A94','- Helio P95, tối đa 2.2GHz\r\n- 6.43\"\r\n- 8GB\r\n- 128GB',100,7050000,'oppo'),(55,'Xiaomi Redmi note 8',' - Snapdragon 665\r\n- 6.3\'\r\n- 6GB ram\r\n- 64GB rom',50,3690000,'xiaomi'),(56,'Oppo A73','- Qualcomm SM6115 Snapdragon 662 (11 nm)\r\n- 6.44\"\r\n- 6GB\r\n- 128GB',100,5190000,'oppo'),(57,'Xiaomi Redmi note 8 Pro','- Mediatek Helio G90T\r\n- 6.53\'\r\n- 8GB ram\r\n- 128GB rom\r\n',100,4590000,'xiaomi'),(58,'OPPO Reno6 5G','- MT6877 Dimensity 900 5G (6 nm)\r\n- 6.43\"\r\n- 8GB\r\n- 128GB',100,12990000,'oppo'),(59,'Xiaomi Mi Pad 5','- Qualcomm Snapdragon 860\r\n- 11\'\r\n- 6GB ram\r\n- 128GB rom\r\n',30,8290000,'xiaomi'),(60,'Xiaomi Redmi K30 5G','- Qualcomm SDM765\r\n- 6.67\'\r\n- 8GB ram\r\n- 128GB rom\r\n',50,6290000,'xiaomi'),(61,'iPhone 11 Pro','- A13 Bionic\r\n- 5.8\"\r\n- 4GB\r\n- 512GB',100,27000000,'iphone'),(62,'Xiaomi Redmi note 9 Pro','- Snapdragon 750G\r\n- 6.67\'\r\n- 8GB ram\r\n- 128GB rom',30,7690000,'xiaomi'),(63,'iPhone 12 Pro','- Apple A14 Bionic (5 nm)\r\n- 6.1\"\r\n- 6GB\r\n- 256GB',100,28500000,'iphone'),(64,'Realme Q3 ','- Snapdragon 750G\r\n- 6.5\'\r\n- 6GB ram\r\n - 128GB rom',50,4890000,'realme'),(65,'Realme Q3 Pro','- Dimensity 1100\r\n- 6.43\'\r\n- 6GB ram\r\n- 128GB rom',55,5550000,'realme'),(66,'iPhone 12','- Apple A14 Bionic (5 nm)\r\n- 6.1\"\r\n- 4GB\r\n- 128GB',94,23000000,'iphone'),(67,'iPhone 11','- A13 Bionic\r\n- 6.1\"\r\n- 4GB\r\n- 64GB',90,16500000,'iphone'),(68,'Realme GT Neo','- Dimensity 1200 \r\n- 6.43\'\r\n- 6GB ram\r\n- 128GB rom',50,6190000,'realme'),(69,'Realme GT Neo Flash','- MediaTek MT6893 \r\n- 6.43\'\r\n- 8GB ram\r\n- 128GB rom',20,7050000,'realme'),(70,'Realme Q2','- Dimensity 800U\r\n- 6.5\'\r\n- 4GB ram\r\n- 128GB rom',50,4290000,'realme'),(71,'iPhone X','- Apple A11 Bionic\r\n- 5.8\"\r\n- 3GB\r\n- 64GB',100,10890000,'iphone'),(72,'Apple iPhone XS Max','- Apple A12 Bionic\r\n- 6.5\"\r\n- 4GB\r\n- 512GB',100,15290000,'iphone'),(73,'Realme V15','- Dimensity 800U\r\n- 6.67\'\r\n- 6GB ram\r\n- 128GB rom',50,4690000,'realme'),(74,'Realme X2 Pro','- Snapdragon 855 Plus\r\n- 6.5\'\r\n- 8GB ram\r\n- 128GB rom',30,7600000,'realme'),(75,'Samsung Galaxy Z Fold3 5G','- Snapdragon 888 5G (5 nm)\r\n- 7.6\"\r\n- 12GB\r\n- 512GB',100,44990000,'samsung'),(76,'Realme X2','- Snapdragon 730G\r\n- 6.4\'\r\n- 6GB ram\r\n- 128GB rom',50,4750000,'realme'),(77,'Samsung Galaxy A12','- Helio G35\r\n- 6.5\"\r\n- 4GB\r\n- 128GB',100,4150000,'samsung'),(78,'Realme 6','- Helio G90T\r\n- 6.5\'\r\n- 6GB ram\r\n - 64GB rom',40,4750000,'realme'),(79,'Samsung Galaxy Note 20 Ultra 5G','- Exynos 990 (7 nm+)\r\n- 6.9\"\r\n- 12GB\r\n- 256GB',100,20500000,'samsung'),(80,'Samsung Galaxy S21 Plus 5G','- Exynos 2100 8 nhân\r\n- 6.7\"\r\n- 8GB\r\n- 256GB',100,22800000,'samsung'),(81,'Nokia 5.4','- Snapdragon 662\r\n- 6.39\'\r\n- 4GB ram\r\n- 128GB rom',50,3990000,'nokia'),(82,'Samsung Galaxy A52','- Snapdragon 720G (8 nm)\r\n- 6.5\"\r\n- 8GB\r\n- 128GB',100,8750000,'samsung'),(83,'Nokia 2.4','- Helio P22 \r\n- 6.5\'\r\n- 3GB ram\r\n- 64 rom',50,2690000,'nokia');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text,
  `email` text,
  `password` text,
  `phone` text,
  `address` text,
  `role` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (7,'Vũ Duy Nguyên','admin@admin.com','admin','0376652052','xã Trọng Quan, huyện Đông Hưng, tỉnh Thái Bình','admin','bee34bed7d22d1f035dd39ace536a0b0.png'),(10,'Test','test@gmail.com','1','0376652052','Thai Binh','staff','null');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-28 19:08:05
