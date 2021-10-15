-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2020 at 01:26 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `finalyearproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0877247baa54cc37d6d472aa88224f745884572176c56c021b7593aa8b4169294fe89c048b4fa8fb', 1, 1, 'authToken', '[]', 0, '2020-08-07 06:17:38', '2020-08-07 06:17:38', '2021-02-07 07:17:36'),
('08e866e4a00574d572f99b921534ab7293a829b8680e51bddc0d17e05f0b6a0d31929b28cb259cef', 1, 1, 'authToken', '[]', 0, '2020-08-06 21:33:05', '2020-08-06 21:33:05', '2021-02-06 22:33:05'),
('0f77d5af709f4b9f2855ff380ea7c319ae4336d88ddd37557d886537877d1ff8bfe8f516b57108bb', 1, 1, 'authToken', '[]', 0, '2020-08-16 11:57:50', '2020-08-16 11:57:50', '2021-02-16 11:57:48'),
('1d102223a1965ec571c55da663dce68e501e5d8fcc6070b5641d0aa4c0ba5a301982e221d863d344', 7, 1, 'authToken', '[]', 0, '2020-08-16 12:07:10', '2020-08-16 12:07:10', '2021-02-16 12:07:09'),
('2b4848a2cca24717b5903b1ba3dd1877283877591f7c5e4d2147678a41ac8179dfc4861666708160', 1, 1, 'authToken', '[]', 0, '2020-08-07 09:25:03', '2020-08-07 09:25:03', '2021-02-07 10:25:03'),
('333147716b95dab266e64b3d09108ee29d2b019d5ae32464907ce3aa06cb5aec4fd361ccbbfcb2b1', 1, 1, 'authToken', '[]', 0, '2020-08-07 09:24:55', '2020-08-07 09:24:55', '2021-02-07 10:24:54'),
('3ef6f9232f382ec1b20d639a4b39b4bcbf25d42386305fd8833cc6902648b0150a48c78b0cd46a14', 4, 1, 'authToken', '[]', 0, '2020-08-16 12:02:34', '2020-08-16 12:02:34', '2021-02-16 12:02:33'),
('414db120fd1a7c1e98e1a308d821397f5bab13691db83bbac7aa0b18497d322d94f804cb4e3e7593', 1, 1, 'authToken', '[]', 0, '2020-08-06 23:01:19', '2020-08-06 23:01:19', '2021-02-07 00:01:18'),
('432a443bd1ed73bd759bcf9ed510b52fd3275fbcdb64b63d7117be4ece25ded4e4b4b42c4096ff10', 1, 1, 'authToken', '[]', 0, '2020-08-07 09:26:09', '2020-08-07 09:26:09', '2021-02-07 10:26:09'),
('456a267e7bd903ac307fad5911b94d526fb0496db3d8faa3b342a81154b4de7ba02068a831d7fa1f', 1, 1, 'authToken', '[]', 0, '2020-08-07 09:25:12', '2020-08-07 09:25:12', '2021-02-07 10:25:11'),
('49f236c08487569a342f2317a78160688526a520c76f392d3ecaf13d640109e9ef3a83c5a4a102ec', 6, 1, 'authToken', '[]', 0, '2020-08-16 12:05:08', '2020-08-16 12:05:08', '2021-02-16 12:05:06'),
('4e2cc04a383e1eacd032230596979eecd7421817d50873bf6434023aea688df29bc3d20963d496c8', 1, 1, 'authToken', '[]', 0, '2020-08-06 21:53:04', '2020-08-06 21:53:04', '2021-02-06 22:53:04'),
('506a99c4e1712472990bb2aa1ea58ae70526ee5e0c695685809ef63d268bc46546c388b93ac88ce6', 2, 1, 'authToken', '[]', 0, '2020-08-16 11:59:58', '2020-08-16 11:59:58', '2021-02-16 11:59:58'),
('51b2107437beadc92a7e0e679d85014e4957ec62a22451460077f5d3a77616c08af4d28d3a041020', 1, 1, 'authToken', '[]', 0, '2020-08-06 21:12:45', '2020-08-06 21:12:45', '2021-02-06 22:12:44'),
('57918b94cadc38fd73636a8dc0e895cd467463d1648cb919d59faf4b58466ad40c0e74101c0fc78d', 1, 1, 'authToken', '[]', 0, '2020-08-07 09:28:40', '2020-08-07 09:28:40', '2021-02-07 10:28:40'),
('77105c4d5a2e404a1f0735139a5c5f62f8d9989159c8251922a247e8d3b662b895f345442d978213', 8, 1, 'authToken', '[]', 0, '2020-08-16 12:08:27', '2020-08-16 12:08:27', '2021-02-16 12:08:26'),
('79565760a0f55b95c940bfba637b56f0eddb9574870ddce5ac0b5b431a2e69cf339123eb243e51f3', 1, 1, 'authToken', '[]', 0, '2020-08-07 09:15:54', '2020-08-07 09:15:54', '2021-02-07 10:15:51'),
('8fb90463172905da4480d22565bb1ac223d4b26d5d5f1d837aeedc5e5ecdc62049df091ac6e805e2', 10, 1, 'authToken', '[]', 0, '2020-08-16 12:10:53', '2020-08-16 12:10:53', '2021-02-16 12:10:52'),
('90a226c25067194cf451d5f49536ea2825950f884b775ce6aa361c544488ce3c976094f472c3ac78', 1, 1, 'authToken', '[]', 0, '2020-08-07 07:17:37', '2020-08-07 07:17:37', '2021-02-07 08:17:37'),
('9ac1fa7ee69d83e68e61a8e0d42e0823b92ee75522c040754703e7ecd9006edf9beb136abdfcc347', 3, 1, 'authToken', '[]', 0, '2020-08-16 12:01:22', '2020-08-16 12:01:22', '2021-02-16 12:01:21'),
('9dfee4c40abe7ebd80dbb82370ce08ddcaf45342d8d4dca772b0acce43b7d5f6eae19e365038fde5', 1, 1, 'authToken', '[]', 0, '2020-08-06 21:31:47', '2020-08-06 21:31:47', '2021-02-06 22:31:47'),
('a253e4f5364f0f0165b3dc429cc1eb363ebe734818ac820d77bdcb0c8dc9a82c4652eb39009fc331', 1, 1, 'authToken', '[]', 0, '2020-08-07 09:24:32', '2020-08-07 09:24:32', '2021-02-07 10:24:31'),
('b2b6388ec6cb02a744ec955e6edd15cc510169ed4eee9f9e69f6d3834081c1e5f18dc2add9b0f53b', 1, 1, 'authToken', '[]', 0, '2020-08-07 09:23:05', '2020-08-07 09:23:05', '2021-02-07 10:23:05'),
('bcd66e0776d28d0da83b37ec92ad7dc5935429c76eea276792dcb90e5af656a9f2fd138d4da80a42', 1, 1, 'authToken', '[]', 0, '2020-08-07 10:22:29', '2020-08-07 10:22:29', '2021-02-07 11:22:29'),
('c0e6622825e8f7c2987a8b54466faca8e89ae6f004720753ee477a8bf7fa715e7311fb0306edc756', 9, 1, 'authToken', '[]', 0, '2020-08-16 12:09:35', '2020-08-16 12:09:35', '2021-02-16 12:09:34'),
('d7dd8fe0500e4d42a92ffdfaa16e296362fbef6d6359d439e88f708331ebdfbcd02f5559100a6e3d', 1, 1, 'authToken', '[]', 0, '2020-08-07 19:40:35', '2020-08-07 19:40:35', '2021-02-07 20:40:35'),
('eae9331094203a1d64022a345c9ae31b0bf45d70e685d04d0b26e6b21f4f6652caa7b03e35122416', 1, 1, 'authToken', '[]', 0, '2020-08-07 09:24:41', '2020-08-07 09:24:41', '2021-02-07 10:24:40'),
('ed3258f3ab19093468829a85e7f40bf11f76a11af7ca39868b639a61637c7a42c1838ba1868b4743', 1, 1, 'authToken', '[]', 0, '2020-08-07 19:39:47', '2020-08-07 19:39:47', '2021-02-07 20:39:41'),
('ee1b2f42ece6be4c6511b4806302ba435ecd1abb8ec14c347f683f0db7e34c61c2c7403d9592d86b', 5, 1, 'authToken', '[]', 0, '2020-08-16 12:03:48', '2020-08-16 12:03:48', '2021-02-16 12:03:47'),
('f681922ece769f28d8e304ece5667ebc17ed06ba175d042ae89a6b2dd794bfb0229638eee8bdbc7b', 1, 1, 'authToken', '[]', 0, '2020-08-07 20:12:51', '2020-08-07 20:12:51', '2021-02-07 21:12:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
