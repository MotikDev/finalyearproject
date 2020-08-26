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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_06_01_000001_create_oauth_auth_codes_table',1),(4,'2016_06_01_000002_create_oauth_access_tokens_table',1),(5,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(6,'2016_06_01_000004_create_oauth_clients_table',1),(7,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(8,'2019_08_19_000000_create_failed_jobs_table',1),(10,'2020_08_12_073524_chats',2),(12,'2014_10_12_000000_create_users_table',3),(16,'2020_08_18_211624_create_requests_table',4),(18,'0000_00_00_000000_create_websockets_statistics_entries_table',5);
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
INSERT INTO `oauth_access_tokens` VALUES ('028af18968b763a95759b9ca73afa2c08465769b241b86eda61e034a81f3270fbabba5f6526718cf',1,1,'authToken','[]',0,'2020-08-18 10:49:09','2020-08-18 10:49:09','2021-02-18 10:49:08'),('029cd092c4b03c7d45c72b9afe5cf34306f1cb4ab9689f28e2040701f7da0b0594362d069f036c78',1,1,'authToken','[]',0,'2020-08-19 12:17:42','2020-08-19 12:17:42','2021-02-19 12:17:41'),('06d78f2477f3a30c6d53c06de4ec99a788f747e5f239cca53939a81592e987fdd41a9a4a6d2852fd',2,1,'authToken','[]',0,'2020-08-18 08:04:27','2020-08-18 08:04:27','2021-02-18 08:04:26'),('0877247baa54cc37d6d472aa88224f745884572176c56c021b7593aa8b4169294fe89c048b4fa8fb',1,1,'authToken','[]',0,'2020-08-07 06:17:38','2020-08-07 06:17:38','2021-02-07 07:17:36'),('08e866e4a00574d572f99b921534ab7293a829b8680e51bddc0d17e05f0b6a0d31929b28cb259cef',1,1,'authToken','[]',0,'2020-08-06 21:33:05','2020-08-06 21:33:05','2021-02-06 22:33:05'),('0a3f76d043a37f574333676aa095f2151b5c51a597e3dfd8c09ab6446e4b84407c7d8e7518ed8fe8',11,1,'authToken','[]',0,'2020-08-19 21:03:20','2020-08-19 21:03:20','2021-02-19 21:03:20'),('0ca35605107e261d09b2f9e11b4dec831c6eb379b4793cb1f68680581831a518ab0deee767736711',1,1,'authToken','[]',0,'2020-08-18 10:37:01','2020-08-18 10:37:01','2021-02-18 10:37:00'),('0ed242fcb701b3ced2f13676679271ac7ab889ae1728f3b06a67864fdf1a9b76c0bc3b84f1df1a7e',14,1,'authToken','[]',0,'2020-08-18 08:31:43','2020-08-18 08:31:43','2021-02-18 08:31:42'),('1455d946edfa2f58402cf73ef17b8b5a31b42339223e41b34388fba640a949214357055c99a5c71c',8,1,'authToken','[]',0,'2020-08-18 08:18:41','2020-08-18 08:18:41','2021-02-18 08:18:40'),('14973263a5cfc1b3262cb546d1c73018f9ed3f43b53be0fe088ab543306b9b812f53b742a526cad7',6,1,'authToken','[]',0,'2020-08-18 08:14:59','2020-08-18 08:14:59','2021-02-18 08:14:58'),('1538c3bb054bba7a130aed97bc616720ee3d40b46b8bf3b6085fd5450ebbe033a3ec4598629307f0',4,1,'authToken','[]',0,'2020-08-18 08:09:55','2020-08-18 08:09:55','2021-02-18 08:09:53'),('153e4a16a688b076f73aa0ece2f805a617a8fb454be0ca69daf92225dc1eeebf031b79ab91e79568',1,1,'authToken','[]',0,'2020-08-18 17:52:10','2020-08-18 17:52:10','2021-02-18 17:52:09'),('15dc266603da896860a32e64189d77095fe6394e1c7be419fb7984e5b3758dbdf676ed5bec8222c1',12,1,'authToken','[]',0,'2020-08-18 08:27:26','2020-08-18 08:27:26','2021-02-18 08:27:25'),('1c09be61631fbae0f7f535d5d723830b6a184e838b2ae229fbbe169872deb2ac9ed91c7931186b86',14,1,'authToken','[]',0,'2020-08-19 17:01:13','2020-08-19 17:01:13','2021-02-19 17:01:12'),('1e81d96becc28b6fe02134d660be8a5f2544b29ce1389f04d35d4330e4301ea17c3eb2db010b6c0b',1,1,'authToken','[]',0,'2020-08-18 20:25:09','2020-08-18 20:25:09','2021-02-18 20:25:08'),('25aa83092584f750a19420993c16cb87b300e27dfa7252cc25a3ed0137b3390334ae71c596b20535',5,1,'authToken','[]',0,'2020-08-18 08:13:05','2020-08-18 08:13:05','2021-02-18 08:13:04'),('25c6309674417cff247fdfb919ac2fbb5039ea3eae9d8c58b05459178780150212e88e42bbfeb6e3',10,1,'authToken','[]',0,'2020-08-18 18:46:16','2020-08-18 18:46:16','2021-02-18 18:46:16'),('278f362dccf74171c710a692b4d7ff32cc44efbda7cddfdd7b5f1d72f3d8a2d7c879dba4c665838f',13,1,'authToken','[]',0,'2020-08-18 08:29:32','2020-08-18 08:29:32','2021-02-18 08:29:31'),('2996047f6871acf550d415c3df984157de63405b43c1958296e2ed13b54d8f5b4e095698033085e7',1,1,'authToken','[]',0,'2020-08-19 21:28:29','2020-08-19 21:28:29','2021-02-19 21:28:28'),('2b4848a2cca24717b5903b1ba3dd1877283877591f7c5e4d2147678a41ac8179dfc4861666708160',1,1,'authToken','[]',0,'2020-08-07 09:25:03','2020-08-07 09:25:03','2021-02-07 10:25:03'),('2b5493d742e49bd85e9265ad7ef1868bed603611b4bebe635d5d498706086487451c1286f3b30906',9,1,'authToken','[]',0,'2020-08-18 08:20:24','2020-08-18 08:20:24','2021-02-18 08:20:23'),('2d53f90377f0e17fe0ebf400e4f96942429e4ec77f78400cb735dfc5b2c95dfe04fed07e88c7beef',4,1,'authToken','[]',0,'2020-08-19 20:48:57','2020-08-19 20:48:57','2021-02-19 20:48:57'),('2dbe9745c8ad50e51649ac3885debb03ba3d8fbfedeb55484efee3918dbd376541ba5329957786ef',14,1,'authToken','[]',0,'2020-08-19 17:00:54','2020-08-19 17:00:54','2021-02-19 17:00:53'),('333147716b95dab266e64b3d09108ee29d2b019d5ae32464907ce3aa06cb5aec4fd361ccbbfcb2b1',1,1,'authToken','[]',0,'2020-08-07 09:24:55','2020-08-07 09:24:55','2021-02-07 10:24:54'),('3a5a1dd3a98a185e61ad55e64a608b9ea49ad35b5e261cb7f5fd1bcc5f227fb4742952881496f9c3',7,1,'authToken','[]',0,'2020-08-18 08:16:59','2020-08-18 08:16:59','2021-02-18 08:16:58'),('409439a07eb9ace72c8d11c0f1b18e62cdcd34115070ad8dc25d3c676f345c542d8e9ad101d3b1c6',1,1,'authToken','[]',0,'2020-08-18 10:32:56','2020-08-18 10:32:56','2021-02-18 10:32:56'),('414db120fd1a7c1e98e1a308d821397f5bab13691db83bbac7aa0b18497d322d94f804cb4e3e7593',1,1,'authToken','[]',0,'2020-08-06 23:01:19','2020-08-06 23:01:19','2021-02-07 00:01:18'),('43064c7a9da4fadac49910e65ff311132d80a98682df4c8100bb3e7d2eb9f6cb39cd37c6ca9139ad',3,1,'authToken','[]',0,'2020-08-19 12:21:41','2020-08-19 12:21:41','2021-02-19 12:21:41'),('432a443bd1ed73bd759bcf9ed510b52fd3275fbcdb64b63d7117be4ece25ded4e4b4b42c4096ff10',1,1,'authToken','[]',0,'2020-08-07 09:26:09','2020-08-07 09:26:09','2021-02-07 10:26:09'),('456a267e7bd903ac307fad5911b94d526fb0496db3d8faa3b342a81154b4de7ba02068a831d7fa1f',1,1,'authToken','[]',0,'2020-08-07 09:25:12','2020-08-07 09:25:12','2021-02-07 10:25:11'),('467f6588c35ca19eead0c9cb9639b47dce4106783b746d0a89f9cdcb9ba8fe65cb1e79b5dc6c1457',10,1,'authToken','[]',0,'2020-08-18 18:45:22','2020-08-18 18:45:22','2021-02-18 18:45:21'),('4a1853574c7791435039f2d7e715792811ba6d2c0817647f2c41ae7d978dab50f6664770fd736696',11,1,'authToken','[]',0,'2020-08-18 08:25:04','2020-08-18 08:25:04','2021-02-18 08:25:02'),('4bfd6d304c987cdeed02a2858afcd7bd45f23778200be1e7cab94eb388e3200029f7ef067ec3b403',1,1,'authToken','[]',0,'2020-08-18 10:09:57','2020-08-18 10:09:57','2021-02-18 10:09:57'),('4ceb4f2b2f5ace948b5d8b659982fdc8348d078684b54fc3759832a432d65ecdc9c5f522a3fbaece',14,1,'authToken','[]',0,'2020-08-19 20:50:13','2020-08-19 20:50:13','2021-02-19 20:50:13'),('4d4e7d61403b578ed486bccc900dae6e9a9564246f97b10c91407dbdd940f4b4a1fe372f8b8170a1',1,1,'authToken','[]',0,'2020-08-19 00:30:13','2020-08-19 00:30:13','2021-02-19 00:30:12'),('4e2cc04a383e1eacd032230596979eecd7421817d50873bf6434023aea688df29bc3d20963d496c8',1,1,'authToken','[]',0,'2020-08-06 21:53:04','2020-08-06 21:53:04','2021-02-06 22:53:04'),('4e6e530cbe8c098cbecd26a2a5aa239167066fdd7249edab4260d6395b0754d47b3caa668997cc9f',1,1,'authToken','[]',0,'2020-08-18 10:48:12','2020-08-18 10:48:12','2021-02-18 10:48:11'),('50f22e59e0850a5e814cf787524e71195b860e971892f8af9f1b39e27c3efd1a933607b2317d22e7',1,1,'authToken','[]',0,'2020-08-19 00:14:35','2020-08-19 00:14:35','2021-02-19 00:14:34'),('51b2107437beadc92a7e0e679d85014e4957ec62a22451460077f5d3a77616c08af4d28d3a041020',1,1,'authToken','[]',0,'2020-08-06 21:12:45','2020-08-06 21:12:45','2021-02-06 22:12:44'),('51daae3eed0540e2d96fd21cda62c86cdfbedb91ce98261aa596055fd911970c68866e1be45c2c5d',15,1,'authToken','[]',0,'2020-08-19 21:05:21','2020-08-19 21:05:21','2021-02-19 21:05:20'),('55225a6b8e0ff7eedd68bc3647db6b12b1f3d7d3329f2638e1230ba913dc5174b38d5a5e1549cfad',1,1,'authToken','[]',0,'2020-08-19 16:39:47','2020-08-19 16:39:47','2021-02-19 16:39:46'),('552860e2fe1a0c5156ff50ecce9d60dd4b46541dd16a2fe07b5f11e096dd7e405ff83290afc9f18f',1,1,'authToken','[]',0,'2020-08-18 10:39:19','2020-08-18 10:39:19','2021-02-18 10:39:19'),('553b57a8c2bd94b072b36b4ca4233fe38e45c2632d814b2729396dddd19ff22b91ceac095aa663c9',1,1,'authToken','[]',0,'2020-08-19 20:51:50','2020-08-19 20:51:50','2021-02-19 20:51:50'),('57918b94cadc38fd73636a8dc0e895cd467463d1648cb919d59faf4b58466ad40c0e74101c0fc78d',1,1,'authToken','[]',0,'2020-08-07 09:28:40','2020-08-07 09:28:40','2021-02-07 10:28:40'),('58b1806a75c051679324e4937770b28b3bb8a788d86cac97cff5992b9a2aa328e24a2b58877957df',3,1,'authToken','[]',0,'2020-08-20 11:15:24','2020-08-20 11:15:24','2021-02-20 11:15:24'),('61674efc902c87255c647937b7780f602404bb9ccec8a19cb8214833707e5e5fc6e5ea28cce96c18',3,1,'authToken','[]',0,'2020-08-18 08:06:50','2020-08-18 08:06:50','2021-02-18 08:06:49'),('642728a8d3f808f1b7cbb7600e4ba40855afca5e3c893252d3a1fd454df7328a6f454f537c975466',1,1,'authToken','[]',0,'2020-08-19 11:17:59','2020-08-19 11:17:59','2021-02-19 11:17:58'),('6c464d5bb6c7a52157184175c1f99f6ef4a74f895c19371b93908f46bab6dfdebdc7936f2afc2ff0',1,1,'authToken','[]',0,'2020-08-18 11:17:53','2020-08-18 11:17:53','2021-02-18 11:17:53'),('6d9ebef9eb3832a12896e78555913a2dc8084f329bcb00bb181df559ba3f6edf517b341d40323ced',15,1,'authToken','[]',0,'2020-08-19 21:04:59','2020-08-19 21:04:59','2021-02-19 21:04:59'),('77863f696c783d3ba5605e17e84d542bed6108458f80063ccd31bc560b021e0135fc3b6042ed40a3',13,1,'authToken','[]',0,'2020-08-19 12:26:03','2020-08-19 12:26:03','2021-02-19 12:26:03'),('79565760a0f55b95c940bfba637b56f0eddb9574870ddce5ac0b5b431a2e69cf339123eb243e51f3',1,1,'authToken','[]',0,'2020-08-07 09:15:54','2020-08-07 09:15:54','2021-02-07 10:15:51'),('813836bbd7a015ba369aac493e1a68dbfb0cdae51228524762bbbd6637b721400ffd1c60d1067e75',1,1,'authToken','[]',0,'2020-08-18 10:58:50','2020-08-18 10:58:50','2021-02-18 10:58:49'),('81b656dbdc8f069f44df5a371c48f54103b08b38518a0ee38babc28e6c25852b895e670d81a7368d',1,1,'authToken','[]',0,'2020-08-18 20:34:32','2020-08-18 20:34:32','2021-02-18 20:34:32'),('852ae457d4878995fbeb7a36d99014f878a670e266660c432873f1aebe53309312d9553e1c9c7c9a',1,1,'authToken','[]',0,'2020-08-19 12:49:44','2020-08-19 12:49:44','2021-02-19 12:49:43'),('873655c85559ec4c9759554038836520d44526f84557069a7f45f5bbfeea28b1211e45ee5f93985d',9,1,'authToken','[]',0,'2020-08-19 17:21:19','2020-08-19 17:21:19','2021-02-19 17:21:19'),('8d9da5af7f31570ecfa609a4c41ad03362845d06356e8de997450f77936f2df374793e27f0212c61',1,1,'authToken','[]',0,'2020-08-18 18:42:39','2020-08-18 18:42:39','2021-02-18 18:42:39'),('906ecb05547f73f6a41bd34b166b294aab53486f6e8d1dea09abb911979070dccb2876018c46ae9c',1,1,'authToken','[]',0,'2020-08-18 09:52:21','2020-08-18 09:52:21','2021-02-18 09:52:20'),('90a226c25067194cf451d5f49536ea2825950f884b775ce6aa361c544488ce3c976094f472c3ac78',1,1,'authToken','[]',0,'2020-08-07 07:17:37','2020-08-07 07:17:37','2021-02-07 08:17:37'),('919d94b6842d71d4eb8ca1209c90722b76421f6b36eb09e0326b812d4378efda9f7ccae3cacbfdab',1,1,'authToken','[]',0,'2020-08-18 10:08:46','2020-08-18 10:08:46','2021-02-18 10:08:46'),('956f530fa7e09c8c92dbd9adbbcbba492f85aa70462d68fd8bd071792aaf21649dd5ed73840417c7',1,1,'authToken','[]',0,'2020-08-19 16:24:43','2020-08-19 16:24:43','2021-02-19 16:24:43'),('96172583d9bae5074322a9a049c13b642f02d54cc4d89ce33c9fd301532af3ccb82709355e919fe0',10,1,'authToken','[]',0,'2020-08-18 08:22:31','2020-08-18 08:22:31','2021-02-18 08:22:30'),('9dfee4c40abe7ebd80dbb82370ce08ddcaf45342d8d4dca772b0acce43b7d5f6eae19e365038fde5',1,1,'authToken','[]',0,'2020-08-06 21:31:47','2020-08-06 21:31:47','2021-02-06 22:31:47'),('a253e4f5364f0f0165b3dc429cc1eb363ebe734818ac820d77bdcb0c8dc9a82c4652eb39009fc331',1,1,'authToken','[]',0,'2020-08-07 09:24:32','2020-08-07 09:24:32','2021-02-07 10:24:31'),('b1cfad1dc417fbfe6cb143e2c1158e48b59708ccd98b344f202b993c5d2aadb69b3bd0f4c6c38773',1,1,'authToken','[]',0,'2020-08-18 12:31:50','2020-08-18 12:31:50','2021-02-18 12:31:49'),('b20747fad53f5bc1b1f632540368004ba8f8a2a55fb80f98c8f6d7951630f4227807c18d77192558',4,1,'authToken','[]',0,'2020-08-19 20:49:20','2020-08-19 20:49:20','2021-02-19 20:49:20'),('b2b6388ec6cb02a744ec955e6edd15cc510169ed4eee9f9e69f6d3834081c1e5f18dc2add9b0f53b',1,1,'authToken','[]',0,'2020-08-07 09:23:05','2020-08-07 09:23:05','2021-02-07 10:23:05'),('ba1b2c1b6c72e6262ae115ffc23b55a16a0818f3695ce317589bc049ed75e26b15713aa6eb24db14',1,1,'authToken','[]',0,'2020-08-18 12:26:28','2020-08-18 12:26:28','2021-02-18 12:26:28'),('bbe61d0fd15720f75ed2a544b4a76e26259857446218abbfe4f0a2883c942b2682c264315fddaf1a',1,1,'authToken','[]',0,'2020-08-19 02:09:49','2020-08-19 02:09:49','2021-02-19 02:09:48'),('bc459828c8860ee6be4905edba4788bdf50dc9df00308fa013166cae9626254b140e4f8f479fae04',1,1,'authToken','[]',0,'2020-08-19 01:57:14','2020-08-19 01:57:14','2021-02-19 01:57:13'),('bcd66e0776d28d0da83b37ec92ad7dc5935429c76eea276792dcb90e5af656a9f2fd138d4da80a42',1,1,'authToken','[]',0,'2020-08-07 10:22:29','2020-08-07 10:22:29','2021-02-07 11:22:29'),('be807c42b2f37690d6546c391a5c84923afa2c6ddf41dc1f5f4ca804e7befb80fe945603b8635b9b',1,1,'authToken','[]',0,'2020-08-18 13:56:22','2020-08-18 13:56:22','2021-02-18 13:56:21'),('c1b4694f0df3975a81382f6c0ee53ee0985655b809dcd96d488c5f4d226ee31b4f1a13536015d1e3',1,1,'authToken','[]',0,'2020-08-19 01:33:57','2020-08-19 01:33:57','2021-02-19 01:33:57'),('c5e6511094211ad84f4ec5a5d603e0cd1ba76c73e73786134bc43ecd081720d3cb5fa990b0c41f65',13,1,'authToken','[]',0,'2020-08-19 12:25:39','2020-08-19 12:25:39','2021-02-19 12:25:38'),('d061a9c2bc4f9765c356c50c79fe41bb45b4d2168e593e6573cd3906f5a2c037e593194994dc163a',13,1,'authToken','[]',0,'2020-08-19 21:00:25','2020-08-19 21:00:25','2021-02-19 21:00:25'),('d2aab0f649eeea90c653b2ff95c6c654997c27a611df628192d28bd1ace6ae5c58a0a3ac021ed2c0',1,1,'authToken','[]',0,'2020-08-18 12:15:02','2020-08-18 12:15:02','2021-02-18 12:15:02'),('d2d7578b9b9a29d93d9029c92e8c67839710c81020de51ac144cfdb3487f0c5ff651f040bc3b9f94',1,1,'authToken','[]',0,'2020-08-18 09:54:59','2020-08-18 09:54:59','2021-02-18 09:54:59'),('d3380693a7da082acd36091cd0b457798bf461f06e8abf9bc3aacda349728c73ff73d631df14ae02',1,1,'authToken','[]',0,'2020-08-18 07:49:19','2020-08-18 07:49:19','2021-02-18 07:49:14'),('d5142ee9d5833f325b6e2e927993865adf4b4c3b0fa91a760af4396e48038c3d58b03757d20d46a3',1,1,'authToken','[]',0,'2020-08-18 14:09:55','2020-08-18 14:09:55','2021-02-18 14:09:55'),('d7dd8fe0500e4d42a92ffdfaa16e296362fbef6d6359d439e88f708331ebdfbcd02f5559100a6e3d',1,1,'authToken','[]',0,'2020-08-07 19:40:35','2020-08-07 19:40:35','2021-02-07 20:40:35'),('e0ef5e374f3d3c4f6d266c1aaec434ff2c98123b0689d850ecfca53d1fa2de22c306765a6e4cdc34',1,1,'authToken','[]',0,'2020-08-19 02:51:38','2020-08-19 02:51:38','2021-02-19 02:51:37'),('e34f48d4fd0678d8b461667d936076a6526986839e0aae3b825d8e5a27457d8edcb22383b405619a',1,1,'authToken','[]',0,'2020-08-19 11:05:58','2020-08-19 11:05:58','2021-02-19 11:05:57'),('e4d7dbd175edaac8fe5003dff4476622f7fc065067c15c2f4b73817f6231b6003a9d6453f31be9f5',1,1,'authToken','[]',0,'2020-08-19 21:06:44','2020-08-19 21:06:44','2021-02-19 21:06:44'),('e8924b0af4c6ef42643606bafa6ffcff0fd1b04bc727566093b644efeb6993b74b0c750cb32ba6d4',3,1,'authToken','[]',0,'2020-08-19 12:22:05','2020-08-19 12:22:05','2021-02-19 12:22:05'),('eae9331094203a1d64022a345c9ae31b0bf45d70e685d04d0b26e6b21f4f6652caa7b03e35122416',1,1,'authToken','[]',0,'2020-08-07 09:24:41','2020-08-07 09:24:41','2021-02-07 10:24:40'),('ec84a66019ef0135a7e5ee2fe66337f930110142db78960642b939be3cf6af5a75ac64fda42cab36',16,1,'authToken','[]',0,'2020-08-18 08:36:01','2020-08-18 08:36:01','2021-02-18 08:35:58'),('ed3258f3ab19093468829a85e7f40bf11f76a11af7ca39868b639a61637c7a42c1838ba1868b4743',1,1,'authToken','[]',0,'2020-08-07 19:39:47','2020-08-07 19:39:47','2021-02-07 20:39:41'),('efed391b52e70e7da0cbbbaaa233307ba63ab818868e2efd228ad25a036edfde8dd8bda8742f8600',15,1,'authToken','[]',0,'2020-08-18 08:33:40','2020-08-18 08:33:40','2021-02-18 08:33:39'),('f12e23dfeb5672eab2d7ae000811347985fcf483e15276fe0f5f3a0c3ab9fa9b21e11cb7e4db25f5',9,1,'authToken','[]',0,'2020-08-19 17:21:45','2020-08-19 17:21:45','2021-02-19 17:21:45'),('f5b135311576e8ddfa2800d86e4cb1a4c26c8d860b1381d331f0843f7d30d0b4d97944c7fcc860ff',1,1,'authToken','[]',0,'2020-08-18 14:36:21','2020-08-18 14:36:21','2021-02-18 14:36:21'),('f681922ece769f28d8e304ece5667ebc17ed06ba175d042ae89a6b2dd794bfb0229638eee8bdbc7b',1,1,'authToken','[]',0,'2020-08-07 20:12:51','2020-08-07 20:12:51','2021-02-07 21:12:45'),('fae3e90c70ffe6770591799d0377c6d0c35bd7dfdbe92829f5c29970248da17a002f2d378909d519',15,1,'authToken','[]',0,'2020-08-20 11:14:22','2020-08-20 11:14:22','2021-02-20 11:14:22'),('fecd76bed110d84722903c9d65effcb827311122554b45c4c7c4c5d84fff48662e8c9952845d9de0',11,1,'authToken','[]',0,'2020-08-19 21:03:44','2020-08-19 21:03:44','2021-02-19 21:03:44');
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
-- Table structure for table `requests`
--

DROP TABLE IF EXISTS `requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requests` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `connectionReceiver` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connectionSender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `senderName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `senderMarital` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `senderJob` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `senderEdu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `senderLocation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `senderPic` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requests`
--

LOCK TABLES `requests` WRITE;
/*!40000 ALTER TABLE `requests` DISABLE KEYS */;
INSERT INTO `requests` VALUES (1,'11','9','Victor Osimhen',NULL,NULL,NULL,NULL,'profile/8KcyJveszVS90UZ25WgzouPCZJbSF8SCXiQQS16D.png','2020-08-19 20:43:00','2020-08-19 20:43:00'),(3,'7','14','Tonye Tunji',NULL,NULL,NULL,NULL,'profile/LZkId347AybhLDA6c2XL5BjuMImMSYeWGT07jyPl.png','2020-08-19 20:51:05','2020-08-19 20:51:05'),(4,'10','14','Tonye Tunji',NULL,NULL,NULL,NULL,'profile/LZkId347AybhLDA6c2XL5BjuMImMSYeWGT07jyPl.png','2020-08-19 20:51:15','2020-08-19 20:51:15'),(5,'7','13','Tumini Effiong',NULL,NULL,NULL,NULL,'profile/PTFMOt5y1jPXvqnBlYeLCZFQmbf9nsy2Z9yTCruS.png','2020-08-19 21:00:39','2020-08-19 21:00:39'),(6,'10','13','Tumini Effiong',NULL,NULL,NULL,NULL,'profile/PTFMOt5y1jPXvqnBlYeLCZFQmbf9nsy2Z9yTCruS.png','2020-08-19 21:00:49','2020-08-19 21:00:49'),(7,'3','13','Tumini Effiong',NULL,NULL,NULL,NULL,'profile/PTFMOt5y1jPXvqnBlYeLCZFQmbf9nsy2Z9yTCruS.png','2020-08-19 21:00:57','2020-08-19 21:00:57'),(8,'10','11','Jasmine Enebi',NULL,NULL,NULL,NULL,'profile/i3HAtxwcerqH7EGzMT9B9s7zMRPRY7vzF6b7uOXz.png','2020-08-19 21:04:01','2020-08-19 21:04:01'),(9,'9','11','Jasmine Enebi',NULL,NULL,NULL,NULL,'profile/i3HAtxwcerqH7EGzMT9B9s7zMRPRY7vzF6b7uOXz.png','2020-08-19 21:04:09','2020-08-19 21:04:09'),(10,'8','11','Jasmine Enebi',NULL,NULL,NULL,NULL,'profile/i3HAtxwcerqH7EGzMT9B9s7zMRPRY7vzF6b7uOXz.png','2020-08-19 21:04:17','2020-08-19 21:04:17');
/*!40000 ALTER TABLE `requests` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Omotayo Kuye','Male','\"2000-08-03T23:15:30.000Z\"','idCard/S3Cob06XYZHwPKDyddR1x2B9Ut0GE9tOeAUY2pjL.png','wofbi/nCPTdt0mR3G6djV3jHEvydvarEqrblAfM1HCycdu.jpeg','profile/TMVWtWBVUjJ3gR6YDqJCyDVH1c1Q1oESouJtQErE.png','unconnected',NULL,'omotayo.kuye@stu.cu.edu.ng',NULL,'$2y$10$Zcozn5clgETEbD9Xla4dIOCxpqwSKn1nRgpvePpX/RJIRNX6oeuS6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-08-18 07:49:17','2020-08-18 09:17:25'),(2,'Olatunji Kuye','Male','\"1988-05-28T23:15:30.000Z\"','idCard/vdeBnbAFLQuczz8XTzzRuw6pM6DxbVAmWAYo3L3H.png','wofbi/UXz3z1vjbl9eIj0Wj0fhLGT6NHxRQtBvsnKR3ZXw.png','profile/u2v17S63fihcfdUCHdDVtjMoOZljfH3q4XD0tM8P.png','pending',NULL,'olatunji.kuye@stu.cu.edu.ng',NULL,'$2y$10$P/N4rN1jUPsVbnqfvB11zuywIdeYS62pJ1kEhH2JdArG6kskV9Trq',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-08-18 08:04:26','2020-08-18 08:04:26'),(3,'Aminu Garba','Male','\"1982-09-30T23:15:30.000Z\"','idCard/EI8RqFM7I4esVGXFDRQC6HrsieasHgFSvZtp6Ooz.png','wofbi/W5ccLeXCPA2d9piQDgmGoh92OxEgmu5R7v8dRpgU.png','profile/ZtmNeXywDgze0PWuX437ANCR32OA8Iog8FsYbu9o.png','unconnected',NULL,'aminu.garba',NULL,'$2y$10$k0SFroXKOl7xnKrcUHMUMuLhDI739.uvRkHYIXZBNdYEkyhMz7L1m',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-08-18 08:06:49','2020-08-19 12:21:41'),(4,'Ayola Ayola','Male','\"1978-07-09T23:15:30.000Z\"','idCard/h9xDvInemuDv1MIuZF6EHtnVHeAEvJjSFvyFPYHf.png','wofbi/RtYw83o3VLc4OvqiDTCqqeb0F5OPs13SQvfwtF54.png','profile/1SvSqSbaw5C3PTlVdRfbgqt7aVBlPQowHegfEUXj.png','unconnected',NULL,'ayola.ayola',NULL,'$2y$10$l1VEck6eMH5aaNptcjiErevIc4y.ZNrclcAS5HOYxTgvqlgOhAAFa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-08-18 08:09:54','2020-08-19 20:48:57'),(5,'Louis Okojie','Male','\"1993-04-25T23:15:30.000Z\"','idCard/ogfbJPybhpx2XMMkEasYZZt4yhi2q0j53HEpyewQ.png','wofbi/su5rEbtbWZe1XkGUv1wZ93QJtw8Q6ZgI9kuvUB9o.png','profile/6GW9XZjXNcvHis3AhF5bI2YFo5GOQzF0xpOYSMuU.png','pending',NULL,'louis.okojie',NULL,'$2y$10$MmT2M/DGOnBcrXM8d0kCoedTKMUu6/7As6ccCroCncgMmZH4OpO5i',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-08-18 08:13:05','2020-08-18 08:13:05'),(6,'Lanre Teju','Male','\"1976-12-26T23:15:30.000Z\"','idCard/NquXyz4NeMnRPFLoHAbf8GzmlEaf7ol22Y3HfhKG.png','wofbi/yaqQxSY2mj6HoUUBmf3COAIiTBL4xd7reZHD7zmF.png','profile/wBShVBQ4yGgsxZRglzzdWWXxwFo40chYeS6KLwCq.png','pending',NULL,'lanre.teju',NULL,'$2y$10$STxWPTY9jL2YME4BTUEkqOtJ/ZYsc59nBnXAmvc1JzcJ26AYWeeBW',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-08-18 08:14:59','2020-08-18 08:14:59'),(7,'David Adeleke','Male','\"1990-01-05T23:15:30.000Z\"','idCard/UxOQ9RGfgvMROgux43fgnfdcFHNz9M4KMV6ZwRfb.png','wofbi/ZGgwaupEBeq8bamZP6pmnOPfe6vMIWjqRFnFNV0C.png','profile/JSVJa2kG6IUiUDR8ozt4qh9w8Vk1HrmTiQuHNkbS.png','pending',NULL,'david.adeleke',NULL,'$2y$10$R88Ijf53vQR7Gj9gedPztOjwj3L4E7hh9GMM32eoDJYOUQ9XrzK9y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-08-18 08:16:59','2020-08-18 08:16:59'),(8,'Olamide Adetunji','Male','\"1993-05-25T23:15:30.000Z\"','idCard/Jrb64J4SkddDjCbvzZHaVB87gZg7yIymZgPpWhUS.png','wofbi/XCgbrB4AbK2nCXLyhsPGgW6o0nByc7b50iIoZcMO.png','profile/Pzx6eozmz53FeNGmAcurjlG6JO2dGO8ExWYh59Qy.png','pending',NULL,'olamide.adetunji',NULL,'$2y$10$j1IJD8ajvsdIYiI3BuaseeEwd5ZRcLhzjOxAkCl7MTqxL7CyYXgH.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-08-18 08:18:41','2020-08-18 08:18:41'),(9,'Victor Osimhen','Male','\"1998-12-07T23:15:30.000Z\"','idCard/7Ohua1yEaVntCpBT3UzKWerUvSicuYBquFqMDWOe.png','wofbi/zdplXt8fOdp8SLIAonZ0uHWcl1zt7U6sZpMKpHNZ.png','profile/8KcyJveszVS90UZ25WgzouPCZJbSF8SCXiQQS16D.png','unconnected',NULL,'victor.osimhen',NULL,'$2y$10$oqQFKVYRgLsxhh6RLGc1S.C7M0d4XFspEACnW5Hy7wI/zcYQ9I/VC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-08-18 08:20:24','2020-08-19 17:21:19'),(10,'Mikel Obi','Male','\"1971-06-26T23:15:30.000Z\"','idCard/DHOpM27UetcBAeZ412Reg0MiNrvdvzCQjJIgS9KY.png','wofbi/ewku6mNzXwGNTKh1PozGFkJRvVcMrkQcr10VO8Zz.png','profile/Ruph2csTFXDvStb5qgtF8DyW6kUvHLxMYoU2avLs.png','unconnected',NULL,'mikel.obi',NULL,'$2y$10$eOkyI2Q3BHuc4tLoLWw9W.TfBCz0CTxw4ffEzWEZoIffPJEf9GZzu',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-08-18 08:22:30','2020-08-18 18:45:22'),(11,'Jasmine Enebi','Female','\"1993-11-29T23:15:30.000Z\"','idCard/BavemyACNSKxzXRJ9sm7baNPtfmRuLl9g0LAi4xZ.png','wofbi/wnvknQZfLavujpLeN5Z3cLivL5KmHj6UEoMDRNJa.png','profile/i3HAtxwcerqH7EGzMT9B9s7zMRPRY7vzF6b7uOXz.png','unconnected',NULL,'jasmi.enebi',NULL,'$2y$10$j589NxEJ8vaLNI.En4wpgekRlBsKz5w/BZxmT78IDhf1dZfjIOIhO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-08-18 08:25:03','2020-08-19 21:03:20'),(12,'Racheal Adeola','Female','\"1994-12-02T23:15:30.000Z\"','idCard/9hIh6l3hDKDgJMbD3BR9VP8ZsQqKoCeF2Dfszn8W.png','wofbi/AlzJ0tEchr2ez2aYnhoO6BOHGh3tqP9PLFARwAJm.png','profile/jYqTl4ATaN1Adw7v31RUurGXobEhqokLd7zmDdM0.png','pending',NULL,'racheal.adeola',NULL,'$2y$10$TmX8.UbbQE8J9kyXfW1taOPg.LkZahXgWe4ZYg4lOW7mYV21BpyzK',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-08-18 08:27:25','2020-08-18 08:27:25'),(13,'Tumini Effiong','Female','\"1992-12-09T23:15:30.000Z\"','idCard/WB5xDeWBog9KUuE4lkY7jOvp5WNnrRtAWc4oODty.png','wofbi/pWQv4KNuVWoEkI1sXHdFXJKMplGHRS6ltrP4fmp7.png','profile/PTFMOt5y1jPXvqnBlYeLCZFQmbf9nsy2Z9yTCruS.png','connected',3,'tumini.effiong',NULL,'$2y$10$rgk6F/rsTNY4y54huhGGJOd6a8lljVrb485fNBGFKwa1qk1ANBYD6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-08-18 08:29:32','2020-08-20 11:41:09'),(14,'Tonye Tunji','Female','\"1986-01-21T23:15:30.000Z\"','idCard/P7jQbmkyyLyLatj8TMpb83WOaPxKZOja0BKzR0mL.png','wofbi/1gSMlfJtJR9rxqKa3VR17pcI3bdGmpLm4qUnoI8G.png','profile/LZkId347AybhLDA6c2XL5BjuMImMSYeWGT07jyPl.png','unconnected',NULL,'tonye.tunji',NULL,'$2y$10$Utvh7E3uBzLVYI8REGqA2.pEMwgmbGQhYOFr/oWg/aaoi8jKGih7O',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-08-18 08:31:42','2020-08-19 17:00:54'),(15,'Lola Badmus','Female','\"1994-04-27T23:15:30.000Z\"','idCard/AAYcNIkZ5xcmzFPh4NKxkjKDNdI3EyQTrVNPpbOi.png','wofbi/fh8d8TlztDnMHlB8LXFVrJtzVOuJzdeXVyDduSPa.png','profile/Il8Cce6cE89kfe50F3Y4gdlRtnBXKZukcoyVGSWp.png','unconnected',NULL,'lola.badmus',NULL,'$2y$10$GSCj4ExOKz56nNdFjIabLenzW9AjEZLzqmHI6JRC/xWeivQttJd6u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-08-18 08:33:40','2020-08-19 21:04:59'),(16,'Tiaraoluwa Omoniyi','Female','\"1998-07-06T23:15:30.000Z\"','idCard/SeapW69i3qJF0bce7dA6Z2xZZyJAZojRDGSdEOV7.png','wofbi/RjhcYjKUp9I3tYM2yxcNzXsYJBQtqziIcWXjq16r.png','profile/2ZsQOeEFb98ZXFn4nVhfMvOgqqC58pYePND6QIpi.png','pending',NULL,'tiaraoluwa.omoniyi',NULL,'$2y$10$0TwEYwIZumZKL7nbFBVMJOqNaULcis5TKq3L0k4SJofNj5J13IGKW',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-08-18 08:35:59','2020-08-18 08:35:59');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `websockets_statistics_entries`
--

DROP TABLE IF EXISTS `websockets_statistics_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `websockets_statistics_entries` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `app_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peak_connection_count` int NOT NULL,
  `websocket_message_count` int NOT NULL,
  `api_message_count` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `websockets_statistics_entries`
--

LOCK TABLES `websockets_statistics_entries` WRITE;
/*!40000 ALTER TABLE `websockets_statistics_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `websockets_statistics_entries` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-23 18:36:31
