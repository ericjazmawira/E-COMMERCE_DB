-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: glam_ecommerce
-- ------------------------------------------------------
-- Server version	8.0.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `attribute_category`
--

DROP TABLE IF EXISTS `attribute_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attribute_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attribute_category`
--

LOCK TABLES `attribute_category` WRITE;
/*!40000 ALTER TABLE `attribute_category` DISABLE KEYS */;
INSERT INTO `attribute_category` VALUES (1,'Physical','Attributes related to the physical characteristics of a product (e.g., weight, dimensions)','2025-04-25 11:52:24'),(2,'Material','Attributes related to the material used in the product (e.g., cotton, plastic)','2025-04-25 11:52:24'),(3,'Technical','Attributes related to technical specifications of a product (e.g., processor speed, memory)','2025-04-25 11:52:24'),(4,'Aesthetic','Attributes related to the visual appeal of a product (e.g., color, finish)','2025-04-25 11:52:24');
/*!40000 ALTER TABLE `attribute_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attribute_type`
--

DROP TABLE IF EXISTS `attribute_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attribute_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attribute_type`
--

LOCK TABLES `attribute_type` WRITE;
/*!40000 ALTER TABLE `attribute_type` DISABLE KEYS */;
INSERT INTO `attribute_type` VALUES (1,'Text','A textual attribute, like material or brand name','2025-04-25 11:53:34'),(2,'Number','A numeric attribute, like weight or dimensions','2025-04-25 11:53:34'),(3,'Boolean','A binary attribute, typically true/false or yes/no','2025-04-25 11:53:34');
/*!40000 ALTER TABLE `attribute_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text,
  `country_origin` varchar(100) DEFAULT 'Kenya',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES (1,'Safaricom','Kenya\'s leading telecom and electronics brand, offering phones and accessories','Kenya','2025-04-25 10:54:37'),(2,'Hotpoint','Major Kenyan electronics and appliances distributor and retailer','Kenya','2025-04-25 10:54:37'),(3,'Jua Kali Crafts','Authentic handmade home and lifestyle products from local artisans','Kenya','2025-04-25 10:54:37'),(4,'Rivatex','Renowned local textile manufacturer producing fabrics and garments','Kenya','2025-04-25 10:54:37'),(5,'Twende Sports','Kenyan sportswear brand supporting East African athletes','Kenya','2025-04-25 10:54:37'),(6,'Mavazi Trends','Trendy, affordable fashion brand made for Kenyan youth','Kenya','2025-04-25 10:54:37'),(7,'Zeco Electronics','Emerging local brand offering budget electronics','Kenya','2025-04-25 10:54:37'),(8,'Tuskys Select','Former in-house brand by Tuskys supermarket for everyday essentials','Kenya','2025-04-25 10:54:37'),(9,'Jumia Basics','Jumia\'s budget-friendly line of everyday products for Kenyan shoppers','Kenya','2025-04-25 10:54:37'),(10,'Equity Essentials','Bank-affiliated brand offering mobile devices & accessories under digital banking campaigns','Kenya','2025-04-25 10:54:37');
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `color`
--

DROP TABLE IF EXISTS `color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `color` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `hex_code` varchar(7) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `color`
--

LOCK TABLES `color` WRITE;
/*!40000 ALTER TABLE `color` DISABLE KEYS */;
INSERT INTO `color` VALUES (1,'Black','#000000'),(2,'White','#FFFFFF'),(3,'Red','#FF0000'),(4,'Green','#008000'),(5,'Blue','#0000FF'),(6,'Yellow','#FFFF00'),(7,'Brown','#A52A2A'),(8,'Grey','#808080'),(9,'Orange','#FFA500'),(10,'Turquoise','#40E0D0');
/*!40000 ALTER TABLE `color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `brand_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `base_price` decimal(10,2) DEFAULT NULL,
  `description` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `brand_id` (`brand_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`),
  CONSTRAINT `product_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Safaricom Neon Ray Pro',1,1,5999.00,'Affordable 4G smartphone from Safaricom','2025-04-25 10:55:43'),(2,'Samsung Galaxy A14',2,1,21500.00,'Popular mid-range smartphone','2025-04-25 10:55:43'),(3,'Rivatex Ankara Shirt',6,2,1500.00,'Handmade Ankara shirt from Rivatex','2025-04-25 10:55:43'),(4,'Ramtons Microwave 20L',9,3,8999.00,'Compact microwave ideal for Kenyan homes','2025-04-25 10:55:43'),(5,'Hotpoint Blender 1.5L',4,3,4299.00,'Durable kitchen blender with glass jar','2025-04-25 10:55:43'),(6,'Safaricom Neon Ray Pro',1,1,5999.00,'Affordable 4G smartphone from Safaricom','2025-04-25 10:57:31'),(7,'Samsung Galaxy A14',2,1,21500.00,'Popular mid-range smartphone','2025-04-25 10:57:31'),(8,'Rivatex Ankara Shirt',6,2,1500.00,'Handmade Ankara shirt from Rivatex','2025-04-25 10:57:31'),(9,'Ramtons Microwave 20L',9,3,8999.00,'Compact microwave ideal for Kenyan homes','2025-04-25 10:57:31'),(10,'Hotpoint Blender 1.5L',4,3,4299.00,'Durable kitchen blender with glass jar','2025-04-25 10:57:31');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_attribute`
--

DROP TABLE IF EXISTS `product_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_attribute` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `attribute_name` varchar(100) NOT NULL,
  `attribute_value` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `product_attribute_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_attribute`
--

LOCK TABLES `product_attribute` WRITE;
/*!40000 ALTER TABLE `product_attribute` DISABLE KEYS */;
INSERT INTO `product_attribute` VALUES (1,1,'Weight','1.5kg','2025-04-25 11:47:54'),(2,1,'Material','Plastic','2025-04-25 11:47:54'),(3,2,'Weight','200g','2025-04-25 11:47:54'),(4,3,'Material','Cotton','2025-04-25 11:47:54'),(5,4,'Weight','5kg','2025-04-25 11:47:54'),(6,5,'Material','Stainless Steel','2025-04-25 11:47:54');
/*!40000 ALTER TABLE `product_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category`
--

LOCK TABLES `product_category` WRITE;
/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
INSERT INTO `product_category` VALUES (1,'Electronics','Phones, accessories, and smart devices popular in Kenyan markets'),(2,'Fashion','Clothing, shoes, and accessories for men, women, and children'),(3,'Home & Living','Furniture, decor, and kitchenware made in Kenya'),(4,'Health & Beauty','Personal care, skincare, and wellness products'),(5,'Agricultural Tools','Farming tools and equipment suited for local farmers');
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_image`
--

DROP TABLE IF EXISTS `product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_image` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `product_image_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_image`
--

LOCK TABLES `product_image` WRITE;
/*!40000 ALTER TABLE `product_image` DISABLE KEYS */;
INSERT INTO `product_image` VALUES (1,1,'https://example.com/images/NEON-RAY-BLK-64.jpg','2025-04-25 11:23:26'),(2,2,'https://example.com/images/SG-A14-GRN-128.jpg','2025-04-25 11:23:26'),(3,3,'https://example.com/images/RVX-SHIRT-BLUE-M.jpg','2025-04-25 11:23:26'),(4,4,'https://example.com/images/RM-MW20L-WHT.jpg','2025-04-25 11:23:26'),(5,5,'https://example.com/images/HP-BLEND-1.5-BLU.jpg','2025-04-25 11:23:26');
/*!40000 ALTER TABLE `product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_item`
--

DROP TABLE IF EXISTS `product_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_item` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `sku` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock_quantity` int DEFAULT '0',
  `color_id` int DEFAULT NULL,
  `size_option_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sku` (`sku`),
  KEY `product_id` (`product_id`),
  KEY `color_id` (`color_id`),
  KEY `size_option_id` (`size_option_id`),
  CONSTRAINT `product_item_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `product_item_ibfk_2` FOREIGN KEY (`color_id`) REFERENCES `color` (`id`),
  CONSTRAINT `product_item_ibfk_3` FOREIGN KEY (`size_option_id`) REFERENCES `size_option` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_item`
--

LOCK TABLES `product_item` WRITE;
/*!40000 ALTER TABLE `product_item` DISABLE KEYS */;
INSERT INTO `product_item` VALUES (6,1,'NEON-RAY-BLK-64',5999.00,100,1,NULL,'2025-04-25 11:11:03'),(7,2,'SG-A14-GRN-128',21500.00,80,4,NULL,'2025-04-25 11:11:03'),(8,3,'RVX-SHIRT-BLUE-M',1500.00,50,5,2,'2025-04-25 11:11:03'),(9,4,'RM-MW20L-WHT',8999.00,30,2,NULL,'2025-04-25 11:11:03'),(10,5,'HP-BLEND-1.5-BLU',4299.00,25,4,NULL,'2025-04-25 11:11:03');
/*!40000 ALTER TABLE `product_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_variation`
--

DROP TABLE IF EXISTS `product_variation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_variation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `color_id` int DEFAULT NULL,
  `size_option_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `color_id` (`color_id`),
  KEY `size_option_id` (`size_option_id`),
  CONSTRAINT `product_variation_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `product_variation_ibfk_2` FOREIGN KEY (`color_id`) REFERENCES `color` (`id`),
  CONSTRAINT `product_variation_ibfk_3` FOREIGN KEY (`size_option_id`) REFERENCES `size_option` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_variation`
--

LOCK TABLES `product_variation` WRITE;
/*!40000 ALTER TABLE `product_variation` DISABLE KEYS */;
INSERT INTO `product_variation` VALUES (6,1,1,NULL,'2025-04-25 11:45:33'),(7,2,4,NULL,'2025-04-25 11:45:33'),(8,3,5,2,'2025-04-25 11:45:33'),(9,4,2,NULL,'2025-04-25 11:45:33'),(10,5,4,NULL,'2025-04-25 11:45:33');
/*!40000 ALTER TABLE `product_variation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `size_category`
--

DROP TABLE IF EXISTS `size_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `size_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `size_category`
--

LOCK TABLES `size_category` WRITE;
/*!40000 ALTER TABLE `size_category` DISABLE KEYS */;
INSERT INTO `size_category` VALUES (1,'Clothing','Apparel sizes for men, women, and children'),(2,'Clothing','Apparel sizes for men, women, and kids'),(3,'Shoes','Footwear sizes');
/*!40000 ALTER TABLE `size_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `size_option`
--

DROP TABLE IF EXISTS `size_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `size_option` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `size_option_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `size_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `size_option`
--

LOCK TABLES `size_option` WRITE;
/*!40000 ALTER TABLE `size_option` DISABLE KEYS */;
INSERT INTO `size_option` VALUES (9,1,'S',NULL),(10,1,'M',NULL),(11,1,'L',NULL),(12,1,'XL',NULL),(13,1,'S',NULL),(14,1,'M',NULL),(15,1,'L',NULL),(16,1,'XL',NULL),(17,2,'38',NULL),(18,2,'40',NULL),(19,2,'42',NULL),(20,2,'44',NULL);
/*!40000 ALTER TABLE `size_option` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-25 21:42:17
