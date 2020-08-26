-- MySQL dump 10.13  Distrib 8.0.20, for Linux (x86_64)
--
-- Host: localhost    Database: finalyearproject
-- ------------------------------------------------------
-- Server version	8.0.20-0ubuntu0.20.04.1

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
-- Current Database: `finalyearproject`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `finalyearproject` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `finalyearproject`;

--
-- Table structure for table `chats`
--

DROP TABLE IF EXISTS `chats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chats` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `senderID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ReceiverID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chats`
--

LOCK TABLES `chats` WRITE;
/*!40000 ALTER TABLE `chats` DISABLE KEYS */;
/*!40000 ALTER TABLE `chats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_06_01_000001_create_oauth_auth_codes_table',1),(4,'2016_06_01_000002_create_oauth_access_tokens_table',1),(5,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(6,'2016_06_01_000004_create_oauth_clients_table',1),(7,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(8,'2019_08_19_000000_create_failed_jobs_table',1),(10,'2020_08_12_073524_chats',2),(12,'2014_10_12_000000_create_users_table',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `client_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` VALUES ('0877247baa54cc37d6d472aa88224f745884572176c56c021b7593aa8b4169294fe89c048b4fa8fb',1,1,'authToken','[]',0,'2020-08-07 06:17:38','2020-08-07 06:17:38','2021-02-07 07:17:36'),('08e866e4a00574d572f99b921534ab7293a829b8680e51bddc0d17e05f0b6a0d31929b28cb259cef',1,1,'authToken','[]',0,'2020-08-06 21:33:05','2020-08-06 21:33:05','2021-02-06 22:33:05'),('0f77d5af709f4b9f2855ff380ea7c319ae4336d88ddd37557d886537877d1ff8bfe8f516b57108bb',1,1,'authToken','[]',0,'2020-08-16 11:57:50','2020-08-16 11:57:50','2021-02-16 11:57:48'),('1d102223a1965ec571c55da663dce68e501e5d8fcc6070b5641d0aa4c0ba5a301982e221d863d344',7,1,'authToken','[]',0,'2020-08-16 12:07:10','2020-08-16 12:07:10','2021-02-16 12:07:09'),('2b4848a2cca24717b5903b1ba3dd1877283877591f7c5e4d2147678a41ac8179dfc4861666708160',1,1,'authToken','[]',0,'2020-08-07 09:25:03','2020-08-07 09:25:03','2021-02-07 10:25:03'),('333147716b95dab266e64b3d09108ee29d2b019d5ae32464907ce3aa06cb5aec4fd361ccbbfcb2b1',1,1,'authToken','[]',0,'2020-08-07 09:24:55','2020-08-07 09:24:55','2021-02-07 10:24:54'),('3ef6f9232f382ec1b20d639a4b39b4bcbf25d42386305fd8833cc6902648b0150a48c78b0cd46a14',4,1,'authToken','[]',0,'2020-08-16 12:02:34','2020-08-16 12:02:34','2021-02-16 12:02:33'),('414db120fd1a7c1e98e1a308d821397f5bab13691db83bbac7aa0b18497d322d94f804cb4e3e7593',1,1,'authToken','[]',0,'2020-08-06 23:01:19','2020-08-06 23:01:19','2021-02-07 00:01:18'),('432a443bd1ed73bd759bcf9ed510b52fd3275fbcdb64b63d7117be4ece25ded4e4b4b42c4096ff10',1,1,'authToken','[]',0,'2020-08-07 09:26:09','2020-08-07 09:26:09','2021-02-07 10:26:09'),('456a267e7bd903ac307fad5911b94d526fb0496db3d8faa3b342a81154b4de7ba02068a831d7fa1f',1,1,'authToken','[]',0,'2020-08-07 09:25:12','2020-08-07 09:25:12','2021-02-07 10:25:11'),('49f236c08487569a342f2317a78160688526a520c76f392d3ecaf13d640109e9ef3a83c5a4a102ec',6,1,'authToken','[]',0,'2020-08-16 12:05:08','2020-08-16 12:05:08','2021-02-16 12:05:06'),('4e2cc04a383e1eacd032230596979eecd7421817d50873bf6434023aea688df29bc3d20963d496c8',1,1,'authToken','[]',0,'2020-08-06 21:53:04','2020-08-06 21:53:04','2021-02-06 22:53:04'),('506a99c4e1712472990bb2aa1ea58ae70526ee5e0c695685809ef63d268bc46546c388b93ac88ce6',2,1,'authToken','[]',0,'2020-08-16 11:59:58','2020-08-16 11:59:58','2021-02-16 11:59:58'),('51b2107437beadc92a7e0e679d85014e4957ec62a22451460077f5d3a77616c08af4d28d3a041020',1,1,'authToken','[]',0,'2020-08-06 21:12:45','2020-08-06 21:12:45','2021-02-06 22:12:44'),('57918b94cadc38fd73636a8dc0e895cd467463d1648cb919d59faf4b58466ad40c0e74101c0fc78d',1,1,'authToken','[]',0,'2020-08-07 09:28:40','2020-08-07 09:28:40','2021-02-07 10:28:40'),('77105c4d5a2e404a1f0735139a5c5f62f8d9989159c8251922a247e8d3b662b895f345442d978213',8,1,'authToken','[]',0,'2020-08-16 12:08:27','2020-08-16 12:08:27','2021-02-16 12:08:26'),('79565760a0f55b95c940bfba637b56f0eddb9574870ddce5ac0b5b431a2e69cf339123eb243e51f3',1,1,'authToken','[]',0,'2020-08-07 09:15:54','2020-08-07 09:15:54','2021-02-07 10:15:51'),('8fb90463172905da4480d22565bb1ac223d4b26d5d5f1d837aeedc5e5ecdc62049df091ac6e805e2',10,1,'authToken','[]',0,'2020-08-16 12:10:53','2020-08-16 12:10:53','2021-02-16 12:10:52'),('90a226c25067194cf451d5f49536ea2825950f884b775ce6aa361c544488ce3c976094f472c3ac78',1,1,'authToken','[]',0,'2020-08-07 07:17:37','2020-08-07 07:17:37','2021-02-07 08:17:37'),('9ac1fa7ee69d83e68e61a8e0d42e0823b92ee75522c040754703e7ecd9006edf9beb136abdfcc347',3,1,'authToken','[]',0,'2020-08-16 12:01:22','2020-08-16 12:01:22','2021-02-16 12:01:21'),('9dfee4c40abe7ebd80dbb82370ce08ddcaf45342d8d4dca772b0acce43b7d5f6eae19e365038fde5',1,1,'authToken','[]',0,'2020-08-06 21:31:47','2020-08-06 21:31:47','2021-02-06 22:31:47'),('a253e4f5364f0f0165b3dc429cc1eb363ebe734818ac820d77bdcb0c8dc9a82c4652eb39009fc331',1,1,'authToken','[]',0,'2020-08-07 09:24:32','2020-08-07 09:24:32','2021-02-07 10:24:31'),('b2b6388ec6cb02a744ec955e6edd15cc510169ed4eee9f9e69f6d3834081c1e5f18dc2add9b0f53b',1,1,'authToken','[]',0,'2020-08-07 09:23:05','2020-08-07 09:23:05','2021-02-07 10:23:05'),('bcd66e0776d28d0da83b37ec92ad7dc5935429c76eea276792dcb90e5af656a9f2fd138d4da80a42',1,1,'authToken','[]',0,'2020-08-07 10:22:29','2020-08-07 10:22:29','2021-02-07 11:22:29'),('c0e6622825e8f7c2987a8b54466faca8e89ae6f004720753ee477a8bf7fa715e7311fb0306edc756',9,1,'authToken','[]',0,'2020-08-16 12:09:35','2020-08-16 12:09:35','2021-02-16 12:09:34'),('d7dd8fe0500e4d42a92ffdfaa16e296362fbef6d6359d439e88f708331ebdfbcd02f5559100a6e3d',1,1,'authToken','[]',0,'2020-08-07 19:40:35','2020-08-07 19:40:35','2021-02-07 20:40:35'),('eae9331094203a1d64022a345c9ae31b0bf45d70e685d04d0b26e6b21f4f6652caa7b03e35122416',1,1,'authToken','[]',0,'2020-08-07 09:24:41','2020-08-07 09:24:41','2021-02-07 10:24:40'),('ed3258f3ab19093468829a85e7f40bf11f76a11af7ca39868b639a61637c7a42c1838ba1868b4743',1,1,'authToken','[]',0,'2020-08-07 19:39:47','2020-08-07 19:39:47','2021-02-07 20:39:41'),('ee1b2f42ece6be4c6511b4806302ba435ecd1abb8ec14c347f683f0db7e34c61c2c7403d9592d86b',5,1,'authToken','[]',0,'2020-08-16 12:03:48','2020-08-16 12:03:48','2021-02-16 12:03:47'),('f681922ece769f28d8e304ece5667ebc17ed06ba175d042ae89a6b2dd794bfb0229638eee8bdbc7b',1,1,'authToken','[]',0,'2020-08-07 20:12:51','2020-08-07 20:12:51','2021-02-07 21:12:45');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `client_id` bigint unsigned NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES (1,NULL,'Laravel Personal Access Client','RheL2Yyr81UxBFfo6jSd5QktwMP066itQ1hJ8vTm',NULL,'http://localhost',1,0,0,'2020-08-06 20:55:42','2020-08-06 20:55:42'),(2,NULL,'Laravel Password Grant Client','Um3PNTcj5mrwdGYvYPCCBOA4NXqcHrURr3HoaA7k','users','http://localhost',0,1,0,'2020-08-06 20:55:42','2020-08-06 20:55:42');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,1,'2020-08-06 20:55:42','2020-08-06 20:55:42');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `DOB` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ID_Card` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `WOFBI_Cert` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_Pic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection_id` int DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `myMaritalStatus` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `myQualification` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `myEmploymentStatus` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `myLocation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `myStatOfOrigin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `myGenotype` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mateAge` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mateMaritalStatus` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mateQualification` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mateEmploymentStatus` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mateLocation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mateStatOfOrigin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'test test','Female','20/20/20','idCard/t8FypVMSp6fTNWXek2p6zSd4MkgiJrVBppJNG4Th.jpeg','wofbi/iuseS4d6EjJfAQvfdlEzheuslZTlpx99fbNfjbIg.jpeg','profile/wDzpGYolptNvX3JFlk29C8ITEbZllTkPmJqCbGhr.jpeg','pending',NULL,'lady@lady',NULL,'$2y$10$2MeIrqYXlD1fuLJYL4kzBeETDa4bcGrHGtitFImRzgfDzZPzlQF9O',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-08-16 11:57:48','2020-08-16 11:57:48'),(2,'Omotayo Kuye','Male','20/20/20','idCard/s9F4TKtYMuzC9DUTJEEtLBEZUN2s9ViUMiDlIB5w.jpeg','wofbi/Hy05jagIXb7HNCgvoVx0cBInkIUb8CnrGS5z2IRp.jpeg','profile/RtUlm7OgmBmZKNSal4htmdNLDZ0cGHNt6DXEgsxM.jpeg','pending',NULL,'omotayo.kuye@stu.cu.edu.ng',NULL,'$2y$10$LDTq3FhkRXvLRJlL.Wr/uO4V/3BJ/1B0atBoj21MUkVogpGr4lc.y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-08-16 11:59:58','2020-08-16 11:59:58'),(3,'Olatunji Kuye','Male','20/20/20','idCard/l8UTlyaobFLZnIs16e8dEvbClxbxjOaTWqkflnsu.jpeg','wofbi/HCR9raucaQ5M8rjIi9srUHeKX4ihGFqktl7aipxi.jpeg','profile/cgApX2bzdl6xEHLwLVZSSD0msC0M3QHTbZaIB7bR.jpeg','pending',NULL,'olatunji.kuye@stu.cu.edu.ng',NULL,'$2y$10$CeAi5VODN8estpkCueJHjOO//waWb9X1JQGFc.dmD4DPFvVxwH62C',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-08-16 12:01:21','2020-08-16 12:01:21'),(4,'Esther Adebisi','Female','20/20/20','idCard/Xn5QtZWmK37SDOUVsFBboM2WLWGedpQc6LVJkuHo.jpeg','wofbi/1puhW8nb6cvmH9RaiHBtWH4EEYgeScoQTQASYpKy.jpeg','profile/oz972aMyvbmJfOAvgaNBJt8cLLx6CtxHehdIU3Mc.jpeg','pending',NULL,'esther.adebisi@stu.cu.edu.ng',NULL,'$2y$10$EChLLbj6GwkAsgUft52G3OefoIMpBCvb6j4r/AcHQoK3n9HQ0F4fy',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-08-16 12:02:33','2020-08-16 12:02:33'),(5,'Ben Chukwueze','Female','20/20/20','idCard/5TgNO1whLJLe1Igdy1RscquAkvBuwqdzlkpyKWIp.jpeg','wofbi/WQPaUXTrBLQSAOJTur2kkb58wVwiUEa7paNzx1p1.jpeg','profile/UH6uAb809A2Lzueabd82KE03EyPNadoJVJGxHsE4.jpeg','pending',NULL,'ben.chukwueze@stu.cu.edu.ng',NULL,'$2y$10$5Xj94LEhGq6lJ.dKTIb0v.J5J/JRdt3fK641NVp/mI3EvCDr0l1gi',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-08-16 12:03:47','2020-08-16 12:03:47'),(6,'Sarah Onwe','Female','20/20/20','idCard/ArYfmuo4pezaOqQIT786E4uzW0rOohK692tVLs5n.jpeg','wofbi/Qr5hD7p8Mb373xFFGUvhAB1gHx64los8QqCh46q5.jpeg','profile/oPAz7yNt7UOH4UakCwTBLY4mdmp6jSDJb2ScU4ap.jpeg','pending',NULL,'sarah.onwe@stu.cu.edu.ng',NULL,'$2y$10$t30XaIVIyYfyQwH/XgN7bepswmfmKeYvfls2OU4kTCZUKqR3hNr02',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-08-16 12:05:06','2020-08-16 12:05:06'),(7,'Babatunde Adeyori','Male','20/20/20','idCard/UMmDfy85NCQssIltwUHnAVgZH31KcXjtAiQ1SPOZ.jpeg','wofbi/6FFQ9ahyxLS36bMMnjfGgnE3TCP1qo5TDE7GfpET.jpeg','profile/CCiKPW5KhIxUS49tQkXUZ7ySsyz8wBjoxElcWc9C.jpeg','pending',NULL,'babatunde.adeyori@stu.cu.edu.ng',NULL,'$2y$10$Sa9HhMN1O89nKzRNm8LTceehJvg7jsqebk9oi5DDhutTuQwvOHfGS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-08-16 12:07:10','2020-08-16 12:07:10'),(8,'Yemisi Opeyemi','Female','20/20/20','idCard/XKl39tBqETeQ1yJiOE71RTADB6KkT5Xxt87DKKA0.jpeg','wofbi/c3hY71Ej6Q7bm6rKn9GWu9Sien7agiGJ9FlATKGJ.jpeg','profile/ez74aIxFUp6VZJuyZTG4eIqZLKiYCNvHK9AFVkQA.jpeg','pending',NULL,'yemisi.opeyemi@stu.cu.edu.ng',NULL,'$2y$10$.NQADlWFRCov1x76ndjYI..6dvVVjrgZMaon7I5DMrtFWWp/K710y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-08-16 12:08:26','2020-08-16 12:08:26'),(9,'Frank Adelowo','Male','20/20/20','idCard/ZrrpWGaYbz9czPRThp3MhB9O8Qq82Q2gOpjsQuQ2.jpeg','wofbi/7nTTlloAob1uvwTOryvzh91zDCP01SPyLnWPtb3q.jpeg','profile/by6crK3Z3K5cRcziBgfAV3ElSvv5nY6L380ZnfZX.jpeg','pending',NULL,'frank.adelowo@stu.cu.edu.ng',NULL,'$2y$10$z9uKPbAdRb4JrExNA7.GneRPTB0F2TIBpVbzB.7WTaqPDaylPsCF.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-08-16 12:09:35','2020-08-16 12:09:35'),(10,'Grace Osawaru','Female','20/20/20','idCard/5NnwevA4JH5w2NXMcYqph5YvPIRyTvwmyyCYREcM.jpeg','wofbi/nOQ1dhCNWfiWk5cu3dGJ3OzisVYb0iNuI8dnI6py.jpeg','profile/0ZlY4F14MP4OcafQPS24mdKxnYpA9JBo6yLgMREY.jpeg','pending',NULL,'grace.osawaru@stu.cu.edu.ng',NULL,'$2y$10$JzzmEMaxBwDRi6.FO05rMuSgh09C2o6H6QHnPuRwRUcSZ1Z7jGcWS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-08-16 12:10:53','2020-08-16 12:10:53');
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

-- Dump completed on 2020-08-16 12:14:40
