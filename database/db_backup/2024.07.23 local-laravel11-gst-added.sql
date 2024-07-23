-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2024 at 07:29 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel11`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_num` varchar(192) NOT NULL,
  `account_name` varchar(192) NOT NULL,
  `initial_balance` decimal(10,2) NOT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `adjustments`
--

CREATE TABLE `adjustments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `date` datetime NOT NULL,
  `Ref` varchar(192) NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `items` double NOT NULL DEFAULT 0,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `adjustments`
--

INSERT INTO `adjustments` (`id`, `user_id`, `date`, `Ref`, `warehouse_id`, `items`, `notes`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 5, '2024-06-24 20:18:00', 'AD_1111', 1, 1, '', '2024-06-24 20:19:17', '2024-06-24 20:19:17', NULL),
(2, 5, '2024-07-01 20:04:00', 'AD_1112', 1, 1, '', '2024-07-01 20:05:24', '2024-07-01 20:05:24', NULL),
(3, 5, '2024-07-02 11:47:00', 'AD_1113', 1, 1, '', '2024-07-02 11:48:13', '2024-07-02 11:48:13', NULL),
(4, 5, '2024-07-02 11:48:00', 'AD_1114', 1, 1, '', '2024-07-02 11:48:47', '2024-07-02 11:48:47', NULL),
(5, 5, '2024-07-02 11:48:00', 'AD_1115', 1, 1, '', '2024-07-02 11:49:05', '2024-07-02 11:49:05', NULL),
(6, 5, '2024-07-02 11:49:00', 'AD_1116', 1, 1, '', '2024-07-02 11:49:22', '2024-07-02 11:49:22', NULL),
(7, 5, '2024-07-02 11:49:00', 'AD_1117', 1, 1, '', '2024-07-02 11:50:11', '2024-07-02 11:50:11', NULL),
(8, 5, '2024-07-02 11:50:00', 'AD_1118', 1, 1, '', '2024-07-02 11:50:46', '2024-07-02 11:50:46', NULL),
(9, 5, '2024-07-02 11:50:00', 'AD_1119', 1, 1, '', '2024-07-02 11:51:28', '2024-07-02 11:51:28', NULL),
(10, 5, '2024-07-02 11:51:00', 'AD_1120', 1, 1, '', '2024-07-02 11:51:51', '2024-07-02 11:51:51', NULL),
(11, 5, '2024-07-02 11:57:00', 'AD_1121', 1, 1, '', '2024-07-02 11:58:11', '2024-07-02 11:58:11', NULL),
(12, 5, '2024-07-02 11:58:00', 'AD_1122', 1, 1, '', '2024-07-02 11:58:36', '2024-07-02 11:58:36', NULL),
(13, 5, '2024-07-02 11:58:00', 'AD_1123', 1, 1, '', '2024-07-02 11:59:09', '2024-07-02 11:59:09', NULL),
(14, 5, '2024-07-03 11:00:00', 'AD_1124', 1, 1, '', '2024-07-03 11:01:10', '2024-07-03 11:01:10', NULL),
(15, 5, '2024-07-03 11:01:00', 'AD_1125', 1, 1, '', '2024-07-03 11:01:38', '2024-07-03 11:01:38', NULL),
(16, 5, '2024-07-13 18:45:00', 'AD_1126', 1, 1, '', '2024-07-13 18:46:27', '2024-07-13 18:46:27', NULL),
(17, 5, '2024-07-13 18:46:00', 'AD_1127', 1, 1, '', '2024-07-13 18:46:54', '2024-07-13 18:46:54', NULL),
(18, 5, '2024-07-13 18:47:00', 'AD_1128', 1, 1, '', '2024-07-13 18:47:26', '2024-07-13 18:47:26', NULL),
(19, 5, '2024-07-13 18:47:00', 'AD_1129', 1, 1, '', '2024-07-13 18:47:48', '2024-07-13 18:47:48', NULL),
(20, 5, '2024-07-13 18:47:00', 'AD_1130', 1, 1, '', '2024-07-13 18:48:10', '2024-07-13 18:48:10', NULL),
(21, 5, '2024-07-13 19:01:00', 'AD_1131', 1, 1, '', '2024-07-13 19:02:16', '2024-07-13 19:02:16', NULL),
(22, 5, '2024-07-13 19:06:00', 'AD_1132', 1, 1, '', '2024-07-13 19:07:06', '2024-07-13 19:07:06', NULL),
(23, 5, '2024-07-13 19:18:00', 'AD_1133', 1, 1, '', '2024-07-13 19:20:01', '2024-07-13 19:20:01', NULL),
(24, 5, '2024-07-13 19:20:00', 'AD_1134', 1, 1, '', '2024-07-13 19:20:26', '2024-07-13 19:20:26', NULL),
(25, 5, '2024-07-13 19:20:00', 'AD_1135', 1, 1, '', '2024-07-13 19:21:07', '2024-07-13 19:21:07', NULL),
(26, 5, '2024-07-13 19:21:00', 'AD_1136', 1, 1, '', '2024-07-13 19:24:29', '2024-07-13 19:24:29', NULL),
(27, 5, '2024-07-13 19:27:00', 'AD_1137', 1, 1, '', '2024-07-13 19:27:57', '2024-07-13 19:27:57', NULL),
(28, 5, '2024-07-13 19:28:00', 'AD_1138', 1, 1, '', '2024-07-13 19:28:34', '2024-07-13 19:28:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `adjustment_details`
--

CREATE TABLE `adjustment_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `adjustment_id` bigint(20) UNSIGNED NOT NULL,
  `product_variant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` double NOT NULL,
  `type` varchar(192) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `adjustment_details`
--

INSERT INTO `adjustment_details` (`id`, `product_id`, `adjustment_id`, `product_variant_id`, `quantity`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, 4, 'add', NULL, NULL),
(2, 20, 2, NULL, 12, 'add', NULL, NULL),
(3, 36, 3, NULL, 12, 'add', NULL, NULL),
(4, 36, 4, NULL, 9, 'add', NULL, NULL),
(5, 37, 5, NULL, 10, 'add', NULL, NULL),
(6, 38, 6, NULL, 8, 'add', NULL, NULL),
(7, 39, 7, NULL, 10, 'add', NULL, NULL),
(8, 40, 8, NULL, 11, 'add', NULL, NULL),
(9, 44, 9, NULL, 10, 'add', NULL, NULL),
(10, 45, 10, NULL, 7, 'add', NULL, NULL),
(11, 47, 11, NULL, 8, 'add', NULL, NULL),
(12, 46, 12, NULL, 10, 'add', NULL, NULL),
(13, 48, 13, NULL, 25, 'add', NULL, NULL),
(14, 49, 14, NULL, 500, 'add', NULL, NULL),
(15, 50, 15, NULL, 50, 'add', NULL, NULL),
(16, 55, 16, NULL, 100, 'add', NULL, NULL),
(17, 51, 17, NULL, 30, 'add', NULL, NULL),
(18, 52, 18, NULL, 12, 'add', NULL, NULL),
(19, 53, 19, NULL, 25, 'add', NULL, NULL),
(20, 54, 20, NULL, 75, 'add', NULL, NULL),
(21, 56, 21, NULL, 8, 'add', NULL, NULL),
(22, 47, 22, NULL, 50, 'add', NULL, NULL),
(23, 59, 23, NULL, 200, 'add', NULL, NULL),
(24, 58, 24, NULL, 150, 'add', NULL, NULL),
(25, 57, 25, NULL, 130, 'add', NULL, NULL),
(26, 60, 26, NULL, 48, 'add', NULL, NULL),
(27, 62, 27, NULL, 80, 'add', NULL, NULL),
(28, 61, 28, NULL, 10, 'add', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(192) NOT NULL,
  `description` varchar(192) DEFAULT NULL,
  `image` varchar(192) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'HP', 'Description for Brand HP', 'image_default.png', '2024-06-23 08:33:35', '2024-06-23 08:33:35', NULL),
(2, 'Tata', 'Description for Tata', 'image_default.png', '2024-06-23 08:33:35', '2024-06-23 08:33:35', NULL),
(3, 'Double Bull', 'Description for Double Bull', 'image_default.png', '2024-06-23 08:33:35', '2024-06-23 08:33:35', NULL),
(4, 'Ultra Tech', 'Description for Ultra Tech', 'image_default.png', '2024-06-23 08:33:35', '2024-06-23 08:33:35', NULL),
(5, 'JSW', 'Description for JSW', 'image_default.png', '2024-06-23 08:33:35', '2024-06-23 08:33:35', NULL),
(6, 'Nerolack', 'Description for Nerolack', 'image_default.png', '2024-06-23 08:33:35', '2024-06-23 08:33:35', NULL),
(7, 'ADHUNIK', 'ADHUNIK', 'image_default.png', '2024-06-29 10:52:00', '2024-06-29 10:52:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(191) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('admin@smartstock.in|103.55.98.36', 'i:4;', 1720699718),
('admin@smartstock.in|103.55.98.36:timer', 'i:1720699718;', 1720699718),
('admin@smartstock.in|223.30.137.122', 'i:3;', 1720202217),
('admin@smartstock.in|223.30.137.122:timer', 'i:1720202217;', 1720202217),
('admin@smartstok.in|103.224.190.194', 'i:1;', 1720105689),
('admin@smartstok.in|103.224.190.194:timer', 'i:1720105689;', 1720105689),
('ar9009728133@gmail.com|2409:4043:249d:b273::740:f8a4', 'i:1;', 1721472976),
('ar9009728133@gmail.com|2409:4043:249d:b273::740:f8a4:timer', 'i:1721472976;', 1721472976),
('biswajitsarkar.malda1995@gmail.com|223.30.137.122', 'i:1;', 1720202308),
('biswajitsarkar.malda1995@gmail.com|223.30.137.122:timer', 'i:1720202308;', 1720202308),
('rajravi0906@gmail.com|2401:4900:855b:c7c2::2e17:95cf', 'i:1;', 1721304889),
('rajravi0906@gmail.com|2401:4900:855b:c7c2::2e17:95cf:timer', 'i:1721304889;', 1721304889),
('spatie.permission.cache', 'a:3:{s:5:\"alias\";a:5:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";s:1:\"j\";s:11:\"description\";}s:11:\"permissions\";a:125:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:9:\"user_view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:8:\"user_add\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:9:\"user_edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:11:\"user_delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:12:\"account_view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:11:\"account_add\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:6;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:12:\"account_edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:7;a:4:{s:1:\"a\";i:8;s:1:\"b\";s:14:\"account_delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:8;a:4:{s:1:\"a\";i:9;s:1:\"b\";s:12:\"deposit_view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:9;a:4:{s:1:\"a\";i:10;s:1:\"b\";s:11:\"deposit_add\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:10;a:4:{s:1:\"a\";i:11;s:1:\"b\";s:12:\"deposit_edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:11;a:4:{s:1:\"a\";i:12;s:1:\"b\";s:14:\"deposit_delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:12;a:4:{s:1:\"a\";i:13;s:1:\"b\";s:12:\"expense_view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:13;a:4:{s:1:\"a\";i:14;s:1:\"b\";s:11:\"expense_add\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:14;a:4:{s:1:\"a\";i:15;s:1:\"b\";s:12:\"expense_edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:15;a:4:{s:1:\"a\";i:16;s:1:\"b\";s:14:\"expense_delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:16;a:4:{s:1:\"a\";i:17;s:1:\"b\";s:15:\"client_view_all\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:17;a:4:{s:1:\"a\";i:18;s:1:\"b\";s:10:\"client_add\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:18;a:4:{s:1:\"a\";i:19;s:1:\"b\";s:11:\"client_edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:19;a:4:{s:1:\"a\";i:20;s:1:\"b\";s:13:\"client_delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:20;a:4:{s:1:\"a\";i:21;s:1:\"b\";s:16:\"deposit_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:21;a:4:{s:1:\"a\";i:22;s:1:\"b\";s:14:\"payment_method\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:22;a:4:{s:1:\"a\";i:23;s:1:\"b\";s:16:\"expense_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:23;a:4:{s:1:\"a\";i:24;s:1:\"b\";s:8:\"settings\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:24;a:4:{s:1:\"a\";i:25;s:1:\"b\";s:8:\"currency\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:25;a:4:{s:1:\"a\";i:26;s:1:\"b\";s:6:\"backup\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:26;a:4:{s:1:\"a\";i:27;s:1:\"b\";s:16:\"group_permission\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:27;a:4:{s:1:\"a\";i:28;s:1:\"b\";s:13:\"products_view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:28;a:4:{s:1:\"a\";i:29;s:1:\"b\";s:12:\"products_add\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:29;a:4:{s:1:\"a\";i:30;s:1:\"b\";s:13:\"products_edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:30;a:4:{s:1:\"a\";i:31;s:1:\"b\";s:15:\"products_delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:31;a:4:{s:1:\"a\";i:32;s:1:\"b\";s:12:\"barcode_view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:32;a:4:{s:1:\"a\";i:33;s:1:\"b\";s:8:\"category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:33;a:4:{s:1:\"a\";i:34;s:1:\"b\";s:5:\"brand\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:34;a:4:{s:1:\"a\";i:35;s:1:\"b\";s:4:\"unit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:35;a:4:{s:1:\"a\";i:36;s:1:\"b\";s:9:\"warehouse\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:36;a:4:{s:1:\"a\";i:37;s:1:\"b\";s:19:\"adjustment_view_all\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:37;a:4:{s:1:\"a\";i:38;s:1:\"b\";s:14:\"adjustment_add\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:38;a:4:{s:1:\"a\";i:39;s:1:\"b\";s:15:\"adjustment_edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:39;a:4:{s:1:\"a\";i:40;s:1:\"b\";s:17:\"adjustment_delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:40;a:4:{s:1:\"a\";i:41;s:1:\"b\";s:17:\"transfer_view_all\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:41;a:4:{s:1:\"a\";i:42;s:1:\"b\";s:12:\"transfer_add\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:42;a:4:{s:1:\"a\";i:43;s:1:\"b\";s:13:\"transfer_edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:43;a:4:{s:1:\"a\";i:44;s:1:\"b\";s:15:\"transfer_delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:44;a:4:{s:1:\"a\";i:45;s:1:\"b\";s:14:\"sales_view_all\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:45;a:4:{s:1:\"a\";i:46;s:1:\"b\";s:9:\"sales_add\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:46;a:4:{s:1:\"a\";i:47;s:1:\"b\";s:10:\"sales_edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:47;a:4:{s:1:\"a\";i:48;s:1:\"b\";s:12:\"sales_delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:48;a:4:{s:1:\"a\";i:49;s:1:\"b\";s:13:\"bon_livraison\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:49;a:4:{s:1:\"a\";i:50;s:1:\"b\";s:18:\"purchases_view_all\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:50;a:4:{s:1:\"a\";i:51;s:1:\"b\";s:13:\"purchases_add\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:51;a:4:{s:1:\"a\";i:52;s:1:\"b\";s:14:\"purchases_edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:52;a:4:{s:1:\"a\";i:53;s:1:\"b\";s:16:\"purchases_delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:53;a:4:{s:1:\"a\";i:54;s:1:\"b\";s:19:\"quotations_view_all\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:54;a:4:{s:1:\"a\";i:55;s:1:\"b\";s:14:\"quotations_add\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:55;a:4:{s:1:\"a\";i:56;s:1:\"b\";s:15:\"quotations_edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:56;a:4:{s:1:\"a\";i:57;s:1:\"b\";s:17:\"quotations_delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:57;a:4:{s:1:\"a\";i:58;s:1:\"b\";s:21:\"sale_returns_view_all\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:58;a:4:{s:1:\"a\";i:59;s:1:\"b\";s:16:\"sale_returns_add\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:59;a:4:{s:1:\"a\";i:60;s:1:\"b\";s:17:\"sale_returns_edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:60;a:4:{s:1:\"a\";i:61;s:1:\"b\";s:19:\"sale_returns_delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:61;a:4:{s:1:\"a\";i:62;s:1:\"b\";s:25:\"purchase_returns_view_all\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:62;a:4:{s:1:\"a\";i:63;s:1:\"b\";s:20:\"purchase_returns_add\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:63;a:4:{s:1:\"a\";i:64;s:1:\"b\";s:21:\"purchase_returns_edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:64;a:4:{s:1:\"a\";i:65;s:1:\"b\";s:23:\"purchase_returns_delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:65;a:4:{s:1:\"a\";i:66;s:1:\"b\";s:18:\"payment_sales_view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:66;a:4:{s:1:\"a\";i:67;s:1:\"b\";s:17:\"payment_sales_add\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:67;a:4:{s:1:\"a\";i:68;s:1:\"b\";s:18:\"payment_sales_edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:68;a:4:{s:1:\"a\";i:69;s:1:\"b\";s:20:\"payment_sales_delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:69;a:4:{s:1:\"a\";i:70;s:1:\"b\";s:22:\"payment_purchases_view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:70;a:4:{s:1:\"a\";i:71;s:1:\"b\";s:21:\"payment_purchases_add\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:71;a:4:{s:1:\"a\";i:72;s:1:\"b\";s:22:\"payment_purchases_edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:72;a:4:{s:1:\"a\";i:73;s:1:\"b\";s:24:\"payment_purchases_delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:73;a:4:{s:1:\"a\";i:74;s:1:\"b\";s:25:\"payment_sell_returns_view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:74;a:4:{s:1:\"a\";i:75;s:1:\"b\";s:24:\"payment_sell_returns_add\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:75;a:4:{s:1:\"a\";i:76;s:1:\"b\";s:25:\"payment_sell_returns_edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:76;a:4:{s:1:\"a\";i:77;s:1:\"b\";s:27:\"payment_sell_returns_delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:77;a:4:{s:1:\"a\";i:78;s:1:\"b\";s:18:\"suppliers_view_all\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:78;a:4:{s:1:\"a\";i:79;s:1:\"b\";s:13:\"suppliers_add\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:79;a:4:{s:1:\"a\";i:80;s:1:\"b\";s:14:\"suppliers_edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:80;a:4:{s:1:\"a\";i:81;s:1:\"b\";s:16:\"suppliers_delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:81;a:4:{s:1:\"a\";i:82;s:1:\"b\";s:12:\"sale_reports\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:82;a:4:{s:1:\"a\";i:83;s:1:\"b\";s:16:\"purchase_reports\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:83;a:4:{s:1:\"a\";i:84;s:1:\"b\";s:20:\"payment_sale_reports\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:84;a:4:{s:1:\"a\";i:85;s:1:\"b\";s:24:\"payment_purchase_reports\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:85;a:4:{s:1:\"a\";i:86;s:1:\"b\";s:27:\"payment_return_sale_reports\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:86;a:4:{s:1:\"a\";i:87;s:1:\"b\";s:19:\"top_products_report\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:87;a:4:{s:1:\"a\";i:88;s:1:\"b\";s:15:\"report_products\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:88;a:4:{s:1:\"a\";i:89;s:1:\"b\";s:17:\"report_inventaire\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:89;a:4:{s:1:\"a\";i:90;s:1:\"b\";s:14:\"report_clients\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:4;}}i:90;a:4:{s:1:\"a\";i:91;s:1:\"b\";s:19:\"report_fournisseurs\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:91;a:4:{s:1:\"a\";i:92;s:1:\"b\";s:13:\"reports_devis\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:92;a:4:{s:1:\"a\";i:93;s:1:\"b\";s:17:\"reports_alert_qty\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:93;a:4:{s:1:\"a\";i:94;s:1:\"b\";s:3:\"pos\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:94;a:4:{s:1:\"a\";i:95;s:1:\"b\";s:13:\"report_profit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:95;a:4:{s:1:\"a\";i:96;s:1:\"b\";s:9:\"dashboard\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:96;a:4:{s:1:\"a\";i:97;s:1:\"b\";s:12:\"print_labels\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:97;a:4:{s:1:\"a\";i:98;s:1:\"b\";s:18:\"adjustment_details\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:98;a:4:{s:1:\"a\";i:99;s:1:\"b\";s:12:\"pay_sale_due\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:99;a:4:{s:1:\"a\";i:100;s:1:\"b\";s:19:\"pay_sale_return_due\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:100;a:4:{s:1:\"a\";i:101;s:1:\"b\";s:14:\"client_details\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:101;a:4:{s:1:\"a\";i:102;s:1:\"b\";s:16:\"supplier_details\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:102;a:4:{s:1:\"a\";i:103;s:1:\"b\";s:16:\"pay_purchase_due\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:103;a:4:{s:1:\"a\";i:104;s:1:\"b\";s:23:\"pay_purchase_return_due\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:104;a:4:{s:1:\"a\";i:105;s:1:\"b\";s:17:\"purchases_details\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:105;a:4:{s:1:\"a\";i:106;s:1:\"b\";s:13:\"sales_details\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:106;a:4:{s:1:\"a\";i:107;s:1:\"b\";s:17:\"quotation_details\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:107;a:4:{s:1:\"a\";i:108;s:1:\"b\";s:12:\"sms_settings\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:108;a:4:{s:1:\"a\";i:109;s:1:\"b\";s:21:\"notification_template\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:109;a:4:{s:1:\"a\";i:110;s:1:\"b\";s:29:\"payment_purchase_returns_view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:110;a:4:{s:1:\"a\";i:111;s:1:\"b\";s:28:\"payment_purchase_returns_add\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:111;a:4:{s:1:\"a\";i:112;s:1:\"b\";s:29:\"payment_purchase_returns_edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:112;a:4:{s:1:\"a\";i:113;s:1:\"b\";s:31:\"payment_purchase_returns_delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:113;a:4:{s:1:\"a\";i:114;s:1:\"b\";s:31:\"payment_return_purchase_reports\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:114;a:4:{s:1:\"a\";i:115;s:1:\"b\";s:12:\"pos_settings\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:115;a:4:{s:1:\"a\";i:200;s:1:\"b\";s:19:\"adjustment_view_own\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:3;}}i:116;a:3:{s:1:\"a\";i:201;s:1:\"b\";s:17:\"transfer_view_own\";s:1:\"c\";s:3:\"web\";}i:117;a:4:{s:1:\"a\";i:202;s:1:\"b\";s:14:\"sales_view_own\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:3;i:1;i:4;}}i:118;a:3:{s:1:\"a\";i:203;s:1:\"b\";s:18:\"purchases_view_own\";s:1:\"c\";s:3:\"web\";}i:119;a:3:{s:1:\"a\";i:204;s:1:\"b\";s:19:\"quotations_view_own\";s:1:\"c\";s:3:\"web\";}i:120;a:3:{s:1:\"a\";i:205;s:1:\"b\";s:21:\"sale_returns_view_own\";s:1:\"c\";s:3:\"web\";}i:121;a:3:{s:1:\"a\";i:206;s:1:\"b\";s:25:\"purchase_returns_view_own\";s:1:\"c\";s:3:\"web\";}i:122;a:4:{s:1:\"a\";i:207;s:1:\"b\";s:15:\"client_view_own\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:3;i:1;i:4;}}i:123;a:3:{s:1:\"a\";i:208;s:1:\"b\";s:18:\"suppliers_view_own\";s:1:\"c\";s:3:\"web\";}i:124;a:3:{s:1:\"a\";i:209;s:1:\"b\";s:19:\"attendance_view_own\";s:1:\"c\";s:3:\"web\";}}s:5:\"roles\";a:4:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:11:\"Super Admin\";s:1:\"j\";s:11:\"Super Admin\";s:1:\"c\";s:3:\"web\";}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:5:\"Admin\";s:1:\"j\";s:13:\"Administrator\";s:1:\"c\";s:3:\"web\";}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:7:\"Manager\";s:1:\"j\";s:7:\"Manager\";s:1:\"c\";s:3:\"web\";}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:6:\"Seller\";s:1:\"j\";s:6:\"Seller\";s:1:\"c\";s:3:\"web\";}}}', 1721796215);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(191) NOT NULL,
  `owner` varchar(191) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(192) NOT NULL,
  `name` varchar(192) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `code`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Cement', 'Cement', '2024-06-23 08:33:35', '2024-06-23 08:33:35', NULL),
(2, 'Steel Bars', 'Steel Bars', '2024-06-23 08:33:35', '2024-06-23 08:33:35', NULL),
(3, 'Paints', 'Paints', '2024-06-23 08:33:35', '2024-06-23 08:33:35', NULL),
(4, 'Wall Puttys', 'Wall Puttys', '2024-06-23 08:33:35', '2024-06-23 08:33:35', NULL),
(5, 'Paint Rollers', 'Paint Rollers', '2024-06-23 08:33:35', '2024-06-23 08:33:35', NULL),
(6, 'Paint Brushes', 'Paint Brushes', '2024-06-23 08:33:35', '2024-06-23 08:33:35', NULL),
(7, 'Wall Primer', 'Wall Primer', '2024-06-23 08:33:35', '2024-06-23 08:33:35', NULL),
(8, 'Black Papers', 'Black Papers', '2024-06-23 08:33:35', '2024-06-23 08:33:35', NULL),
(9, 'Red Papers', 'Red Papers', '2024-06-23 08:33:35', '2024-06-23 08:33:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(191) NOT NULL,
  `code` varchar(192) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `photo` varchar(192) DEFAULT NULL,
  `email` varchar(192) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `is_gst` varchar(10) NOT NULL DEFAULT 'no',
  `gst_no` varchar(191) DEFAULT NULL,
  `has_due` varchar(10) NOT NULL DEFAULT 'no',
  `previous_due` decimal(10,2) NOT NULL DEFAULT 0.00,
  `previous_due_date` date DEFAULT NULL,
  `previous_due_notes` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `user_id`, `username`, `code`, `status`, `photo`, `email`, `country`, `city`, `phone`, `address`, `created_at`, `updated_at`, `deleted_at`, `is_gst`, `gst_no`, `has_due`, `previous_due`, `previous_due_date`, `previous_due_notes`) VALUES
(1, 1, 'Walk in Customer', '1', 1, 'no_avatar.png', 'walk-in-customer@smartstock.in', 'India', 'Kolkata', '9876543210', 'address', '2024-06-23 08:33:35', '2024-06-23 08:33:35', NULL, 'no', NULL, 'no', 0.00, NULL, NULL),
(2, 2, 'ratan pal', '2', 1, 'no_avatar.png', 'ratanpal79082@gmail.com', NULL, 'malda', '7908203138', 'mongal bari school para', '2024-06-24 09:34:33', '2024-06-24 14:01:29', NULL, 'no', NULL, 'no', 0.00, NULL, NULL),
(3, 5, 'fd', '3', 1, 'no_avatar.png', '', NULL, 'malda', '', '', '2024-06-25 18:28:30', '2024-06-25 18:28:30', NULL, 'no', NULL, 'no', 0.00, NULL, NULL),
(4, 5, 'MD. OBIDUR RAHMAN', '4', 1, 'no_avatar.png', '', NULL, 'malda', '7908117763', 'NEW POLLE', '2024-07-02 12:02:02', '2024-07-02 12:02:02', NULL, 'no', NULL, 'no', 0.00, NULL, NULL),
(5, 5, 'BISWAJIT SARKAR', '5', 1, 'no_avatar.png', '', NULL, 'MALDA', '8670260373', 'COLONY', '2024-07-02 12:46:26', '2024-07-02 12:46:26', NULL, 'no', NULL, 'no', 0.00, NULL, NULL),
(6, 5, 'SUJOY SAN', '6', 1, 'no_avatar.png', '', NULL, 'malda', '', 'SCHOOL PARA', '2024-07-13 19:02:59', '2024-07-13 19:02:59', NULL, 'no', NULL, 'no', 0.00, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(192) NOT NULL,
  `name` varchar(192) NOT NULL,
  `symbol` varchar(192) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `code`, `name`, `symbol`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'INR', 'Indian Rupee', '₹', '2024-06-23 08:33:34', '2024-06-23 08:33:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_id` bigint(20) UNSIGNED NOT NULL,
  `deposit_category_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_method_id` bigint(20) UNSIGNED NOT NULL,
  `date` datetime NOT NULL,
  `deposit_ref` varchar(192) NOT NULL,
  `description` text DEFAULT NULL,
  `attachment` varchar(192) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deposit_categories`
--

CREATE TABLE `deposit_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(192) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_messages`
--

CREATE TABLE `email_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(192) DEFAULT NULL,
  `subject` varchar(192) DEFAULT NULL,
  `body` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_messages`
--

INSERT INTO `email_messages` (`id`, `name`, `subject`, `body`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'sale', 'Thank you for your purchase!', '<h1><span>Dear  {contact_name},</span></h1><p style=\"color:rgb(17,24,39);font-size:16px;\">Thank you for your purchase! Your invoice number is {invoice_number}.</p><p style=\"color:rgb(17,24,39);font-size:16px;\">If you have any questions or concerns, please don\'t hesitate to reach out to us. We are here to help!</p><p style=\"color:rgb(17,24,39);font-size:16px;\">Best regards,</p><p style=\"color:rgb(17,24,39);font-size:16px;\"><span>{business_name}</span></p>', NULL, NULL, NULL),
(2, 'quotation', 'Thank you for your interest in our products !', '<p style=\"color:rgb(17,24,39);font-size:16px;\"><span>Dear {contact_name},</span></p><p style=\"color:rgb(17,24,39);font-size:16px;\">Thank you for your interest in our products. Your quotation number is {quotation_number}.</p><p style=\"color:rgb(17,24,39);font-size:16px;\">Please let us know if you have any questions or concerns regarding your quotation. We are here to assist you.</p><p style=\"color:rgb(17,24,39);font-size:16px;\">Best regards,</p><p style=\"color:rgb(17,24,39);font-size:16px;\"><span>{business_name}</span></p>', NULL, NULL, NULL),
(3, 'payment_received', 'Payment Received - Thank You', '<p style=\"color:rgb(17,24,39);font-size:16px;\"><span>Dear {contact_name},</span></p><p style=\"color:rgb(17,24,39);font-size:16px;\">Thank you for making your payment. We have received it and it has been processed successfully.</p><p style=\"color:rgb(17,24,39);font-size:16px;\">If you have any further questions or concerns, please don\'t hesitate to reach out to us. We are always here to help.</p><p style=\"color:rgb(17,24,39);font-size:16px;\">Best regards,</p><p style=\"color:rgb(17,24,39);font-size:16px;\"><span>{business_name}</span></p>', NULL, NULL, NULL),
(4, 'purchase', 'Thank You for Your Cooperation and Service', '<p style=\"color:rgb(17,24,39);font-size:16px;\"><span>Dear {contact_name},</span></p><p style=\"color:rgb(17,24,39);font-size:16px;\">I recently made a purchase from your company and I wanted to thank you for your cooperation and service. My invoice number is {invoice_number} .</p><p style=\"color:rgb(17,24,39);font-size:16px;\">If you have any questions or concerns regarding my purchase, please don\'t hesitate to contact me. I am here to make sure I have a positive experience with your company.</p><p style=\"color:rgb(17,24,39);font-size:16px;\">Best regards,</p><p style=\"color:rgb(17,24,39);font-size:16px;\"><span>{business_name}</span></p>', NULL, NULL, NULL),
(5, 'payment_sent', 'Payment Sent - Thank You for Your Service', '<p style=\"color:rgb(17,24,39);font-size:16px;\"><span>Dear {contact_name},</span></p><p style=\"color:rgb(17,24,39);font-size:16px;\">We have just sent the payment . We appreciate your prompt attention to this matter and the high level of service you provide.</p><p style=\"color:rgb(17,24,39);font-size:16px;\">If you need any further information or clarification, please do not hesitate to reach out to us. We are here to help.</p><p style=\"color:rgb(17,24,39);font-size:16px;\">Best regards,</p><p style=\"color:rgb(17,24,39);font-size:16px;\"><span>{business_name}</span></p>', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_id` bigint(20) UNSIGNED NOT NULL,
  `expense_category_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_method_id` bigint(20) UNSIGNED NOT NULL,
  `date` datetime NOT NULL,
  `expense_ref` varchar(192) NOT NULL,
  `description` text DEFAULT NULL,
  `attachment` varchar(192) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(192) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_05_23_035142_create_permission_tables', 1),
(5, '2024_05_23_035254_add_fields_to_users_table', 1),
(6, '2024_05_23_133227_create_clients_table', 1),
(7, '2024_05_23_133327_create_currencies_table', 1),
(8, '2024_05_23_171323_create_warehouses_table', 1),
(9, '2024_05_23_171614_create_settings_table', 1),
(10, '2024_05_23_172434_create_units_table', 1),
(11, '2024_05_23_172626_create_user_warehouse_table', 1),
(12, '2024_05_24_132255_create_accounts_table', 1),
(13, '2024_05_24_132720_create_adjustments_table', 1),
(14, '2024_05_24_132840_create_adjustment_details_table', 1),
(15, '2024_05_24_132957_create_brands_table', 1),
(16, '2024_05_24_133136_create_categories_table', 1),
(17, '2024_05_24_133430_create_deposits_table', 1),
(18, '2024_05_24_133620_create_deposit_categories_table', 1),
(19, '2024_05_24_133744_create_email_messages_table', 1),
(20, '2024_05_24_133825_create_expenses_table', 1),
(21, '2024_05_24_133911_create_expense_categories_table', 1),
(22, '2024_05_24_135338_create_pos_settings_table', 1),
(23, '2024_05_24_165826_create_products_table', 1),
(24, '2024_05_24_165946_create_product_variants_table', 1),
(25, '2024_05_24_170201_create_product_warehouse_table', 1),
(26, '2024_05_24_170340_create_providers_table', 1),
(27, '2024_05_24_170448_create_purchases_table', 1),
(28, '2024_05_24_170606_create_purchase_details_table', 1),
(29, '2024_05_24_170743_create_purchase_returns_table', 1),
(30, '2024_05_24_170904_create_purchase_return_details_table', 1),
(31, '2024_05_24_171017_create_quotations_table', 1),
(32, '2024_05_24_171050_create_quotation_details_table', 1),
(33, '2024_05_24_171502_create_sales_table', 1),
(34, '2024_05_24_171521_create_sale_details_table', 1),
(35, '2024_05_24_171540_create_sale_returns_table', 1),
(36, '2024_05_24_171551_create_sale_return_details_table', 1),
(37, '2024_05_24_172235_create_sms_messages_table', 1),
(38, '2024_05_24_172315_create_transfers_table', 1),
(39, '2024_05_24_172355_create_transfers_details_table', 1),
(40, '2024_05_24_174019_create_payment_methods_table', 1),
(41, '2024_05_24_174450_create_payment_purchases_table', 1),
(42, '2024_05_24_174638_create_payment_purchase_returns_table', 1),
(43, '2024_05_24_174826_create_payment_sales_table', 1),
(44, '2024_05_24_175211_create_payment_sale_returns_table', 1),
(45, '2024_07_22_224822_add_previous_due_to_clients_table', 2),
(46, '2024_07_23_132413_add_gst_details_to_sales_table', 2),
(47, '2024_07_24_002904_add_gst_no_to_settings_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 5),
(2, 'App\\Models\\User', 6),
(3, 'App\\Models\\User', 2),
(4, 'App\\Models\\User', 3),
(4, 'App\\Models\\User', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(192) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `title`, `is_default`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Debit Card', 0, NULL, NULL, NULL),
(2, 'UPI', 1, NULL, NULL, NULL),
(3, 'Bank transfer', 0, NULL, NULL, NULL),
(4, 'Credit card', 1, NULL, NULL, NULL),
(5, 'Cheque', 0, NULL, NULL, NULL),
(6, 'Cash', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment_purchases`
--

CREATE TABLE `payment_purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `Ref` varchar(192) NOT NULL,
  `purchase_id` bigint(20) UNSIGNED NOT NULL,
  `montant` double NOT NULL,
  `change` double NOT NULL DEFAULT 0,
  `payment_method_id` bigint(20) UNSIGNED NOT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_purchase_returns`
--

CREATE TABLE `payment_purchase_returns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `Ref` varchar(192) NOT NULL,
  `purchase_return_id` bigint(20) UNSIGNED NOT NULL,
  `montant` double NOT NULL,
  `change` double NOT NULL DEFAULT 0,
  `payment_method_id` bigint(20) UNSIGNED NOT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_sales`
--

CREATE TABLE `payment_sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `Ref` varchar(192) NOT NULL,
  `sale_id` bigint(20) UNSIGNED NOT NULL,
  `montant` double NOT NULL,
  `change` double NOT NULL DEFAULT 0,
  `payment_method_id` bigint(20) UNSIGNED NOT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_sales`
--

INSERT INTO `payment_sales` (`id`, `user_id`, `account_id`, `date`, `Ref`, `sale_id`, `montant`, `change`, `payment_method_id`, `notes`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 5, NULL, '2024-06-24 20:25:00', 'INV/SL-20240624-328767', 1, 750, 0, 6, '', '2024-06-24 20:28:39', '2024-07-13 18:32:30', '2024-07-13 18:32:30'),
(2, 5, NULL, '2024-06-25 11:59:00', 'INV/SL-20240625-205530', 2, 1500, 0, 6, '', '2024-06-25 12:01:32', '2024-07-13 18:32:22', '2024-07-13 18:32:22'),
(3, 5, NULL, '2024-06-25 18:28:00', 'INV/SL-20240625-124523', 3, 720, 0, 6, '200', '2024-06-25 18:31:21', '2024-07-13 18:32:16', '2024-07-13 18:32:16'),
(4, 5, NULL, '2024-07-01 20:05:00', 'INV/SL-20240701-299990', 4, 600, 0, 6, '600', '2024-07-01 20:07:39', '2024-07-13 18:32:06', '2024-07-13 18:32:06'),
(5, 5, NULL, '2024-07-02 12:02:00', 'INV/SL-20240702-206274', 5, 21000, 0, 6, 'ALL PIDE', '2024-07-02 12:11:17', '2024-07-02 12:11:17', NULL),
(6, 5, NULL, '2024-07-02 12:46:00', 'INV/SL-20240702-298246', 6, 750, 0, 6, '', '2024-07-02 12:48:58', '2024-07-13 18:31:58', '2024-07-13 18:31:58'),
(7, 5, NULL, '2024-07-02 12:54:00', 'INV/SL-20240702-197718', 7, 250, 0, 6, '', '2024-07-02 12:56:48', '2024-07-13 18:31:31', '2024-07-13 18:31:31'),
(8, 5, NULL, '2024-07-03 11:05:00', 'INV/SL-20240703-220824', 8, 760, 0, 6, '360', '2024-07-03 11:25:58', '2024-07-13 18:31:24', '2024-07-13 18:31:24'),
(9, 2, NULL, '2024-07-04 20:47:00', 'INV/SL-20240704-114875', 9, 275, 0, 6, '100', '2024-07-04 20:51:09', '2024-07-13 18:31:16', '2024-07-13 18:31:16'),
(10, 5, NULL, '2024-07-13 18:10:00', 'INV/SL-20240713-351828', 10, 700, 0, 6, '', '2024-07-13 18:11:12', '2024-07-13 18:31:05', '2024-07-13 18:31:05');

-- --------------------------------------------------------

--
-- Table structure for table `payment_sale_returns`
--

CREATE TABLE `payment_sale_returns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `Ref` varchar(192) NOT NULL,
  `sale_return_id` bigint(20) UNSIGNED NOT NULL,
  `montant` double NOT NULL,
  `change` double NOT NULL DEFAULT 0,
  `payment_method_id` bigint(20) UNSIGNED NOT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'user_view', 'web', NULL, NULL),
(2, 'user_add', 'web', NULL, NULL),
(3, 'user_edit', 'web', NULL, NULL),
(4, 'user_delete', 'web', NULL, NULL),
(5, 'account_view', 'web', NULL, NULL),
(6, 'account_add', 'web', NULL, NULL),
(7, 'account_edit', 'web', NULL, NULL),
(8, 'account_delete', 'web', NULL, NULL),
(9, 'deposit_view', 'web', NULL, NULL),
(10, 'deposit_add', 'web', NULL, NULL),
(11, 'deposit_edit', 'web', NULL, NULL),
(12, 'deposit_delete', 'web', NULL, NULL),
(13, 'expense_view', 'web', NULL, NULL),
(14, 'expense_add', 'web', NULL, NULL),
(15, 'expense_edit', 'web', NULL, NULL),
(16, 'expense_delete', 'web', NULL, NULL),
(17, 'client_view_all', 'web', NULL, NULL),
(18, 'client_add', 'web', NULL, NULL),
(19, 'client_edit', 'web', NULL, NULL),
(20, 'client_delete', 'web', NULL, NULL),
(21, 'deposit_category', 'web', NULL, NULL),
(22, 'payment_method', 'web', NULL, NULL),
(23, 'expense_category', 'web', NULL, NULL),
(24, 'settings', 'web', NULL, NULL),
(25, 'currency', 'web', NULL, NULL),
(26, 'backup', 'web', NULL, NULL),
(27, 'group_permission', 'web', NULL, NULL),
(28, 'products_view', 'web', NULL, NULL),
(29, 'products_add', 'web', NULL, NULL),
(30, 'products_edit', 'web', NULL, NULL),
(31, 'products_delete', 'web', NULL, NULL),
(32, 'barcode_view', 'web', NULL, NULL),
(33, 'category', 'web', NULL, NULL),
(34, 'brand', 'web', NULL, NULL),
(35, 'unit', 'web', NULL, NULL),
(36, 'warehouse', 'web', NULL, NULL),
(37, 'adjustment_view_all', 'web', NULL, NULL),
(38, 'adjustment_add', 'web', NULL, NULL),
(39, 'adjustment_edit', 'web', NULL, NULL),
(40, 'adjustment_delete', 'web', NULL, NULL),
(41, 'transfer_view_all', 'web', NULL, NULL),
(42, 'transfer_add', 'web', NULL, NULL),
(43, 'transfer_edit', 'web', NULL, NULL),
(44, 'transfer_delete', 'web', NULL, NULL),
(45, 'sales_view_all', 'web', NULL, NULL),
(46, 'sales_add', 'web', NULL, NULL),
(47, 'sales_edit', 'web', NULL, NULL),
(48, 'sales_delete', 'web', NULL, NULL),
(49, 'bon_livraison', 'web', NULL, NULL),
(50, 'purchases_view_all', 'web', NULL, NULL),
(51, 'purchases_add', 'web', NULL, NULL),
(52, 'purchases_edit', 'web', NULL, NULL),
(53, 'purchases_delete', 'web', NULL, NULL),
(54, 'quotations_view_all', 'web', NULL, NULL),
(55, 'quotations_add', 'web', NULL, NULL),
(56, 'quotations_edit', 'web', NULL, NULL),
(57, 'quotations_delete', 'web', NULL, NULL),
(58, 'sale_returns_view_all', 'web', NULL, NULL),
(59, 'sale_returns_add', 'web', NULL, NULL),
(60, 'sale_returns_edit', 'web', NULL, NULL),
(61, 'sale_returns_delete', 'web', NULL, NULL),
(62, 'purchase_returns_view_all', 'web', NULL, NULL),
(63, 'purchase_returns_add', 'web', NULL, NULL),
(64, 'purchase_returns_edit', 'web', NULL, NULL),
(65, 'purchase_returns_delete', 'web', NULL, NULL),
(66, 'payment_sales_view', 'web', NULL, NULL),
(67, 'payment_sales_add', 'web', NULL, NULL),
(68, 'payment_sales_edit', 'web', NULL, NULL),
(69, 'payment_sales_delete', 'web', NULL, NULL),
(70, 'payment_purchases_view', 'web', NULL, NULL),
(71, 'payment_purchases_add', 'web', NULL, NULL),
(72, 'payment_purchases_edit', 'web', NULL, NULL),
(73, 'payment_purchases_delete', 'web', NULL, NULL),
(74, 'payment_sell_returns_view', 'web', NULL, NULL),
(75, 'payment_sell_returns_add', 'web', NULL, NULL),
(76, 'payment_sell_returns_edit', 'web', NULL, NULL),
(77, 'payment_sell_returns_delete', 'web', NULL, NULL),
(78, 'suppliers_view_all', 'web', NULL, NULL),
(79, 'suppliers_add', 'web', NULL, NULL),
(80, 'suppliers_edit', 'web', NULL, NULL),
(81, 'suppliers_delete', 'web', NULL, NULL),
(82, 'sale_reports', 'web', NULL, NULL),
(83, 'purchase_reports', 'web', NULL, NULL),
(84, 'payment_sale_reports', 'web', NULL, NULL),
(85, 'payment_purchase_reports', 'web', NULL, NULL),
(86, 'payment_return_sale_reports', 'web', NULL, NULL),
(87, 'top_products_report', 'web', NULL, NULL),
(88, 'report_products', 'web', NULL, NULL),
(89, 'report_inventaire', 'web', NULL, NULL),
(90, 'report_clients', 'web', NULL, NULL),
(91, 'report_fournisseurs', 'web', NULL, NULL),
(92, 'reports_devis', 'web', NULL, NULL),
(93, 'reports_alert_qty', 'web', NULL, NULL),
(94, 'pos', 'web', NULL, NULL),
(95, 'report_profit', 'web', NULL, NULL),
(96, 'dashboard', 'web', NULL, NULL),
(97, 'print_labels', 'web', NULL, NULL),
(98, 'adjustment_details', 'web', NULL, NULL),
(99, 'pay_sale_due', 'web', NULL, NULL),
(100, 'pay_sale_return_due', 'web', NULL, NULL),
(101, 'client_details', 'web', NULL, NULL),
(102, 'supplier_details', 'web', NULL, NULL),
(103, 'pay_purchase_due', 'web', NULL, NULL),
(104, 'pay_purchase_return_due', 'web', NULL, NULL),
(105, 'purchases_details', 'web', NULL, NULL),
(106, 'sales_details', 'web', NULL, NULL),
(107, 'quotation_details', 'web', NULL, NULL),
(108, 'sms_settings', 'web', NULL, NULL),
(109, 'notification_template', 'web', NULL, NULL),
(110, 'payment_purchase_returns_view', 'web', NULL, NULL),
(111, 'payment_purchase_returns_add', 'web', NULL, NULL),
(112, 'payment_purchase_returns_edit', 'web', NULL, NULL),
(113, 'payment_purchase_returns_delete', 'web', NULL, NULL),
(114, 'payment_return_purchase_reports', 'web', NULL, NULL),
(115, 'pos_settings', 'web', NULL, NULL),
(200, 'adjustment_view_own', 'web', NULL, NULL),
(201, 'transfer_view_own', 'web', NULL, NULL),
(202, 'sales_view_own', 'web', NULL, NULL),
(203, 'purchases_view_own', 'web', NULL, NULL),
(204, 'quotations_view_own', 'web', NULL, NULL),
(205, 'sale_returns_view_own', 'web', NULL, NULL),
(206, 'purchase_returns_view_own', 'web', NULL, NULL),
(207, 'client_view_own', 'web', NULL, NULL),
(208, 'suppliers_view_own', 'web', NULL, NULL),
(209, 'attendance_view_own', 'web', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pos_settings`
--

CREATE TABLE `pos_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `note_customer` varchar(192) NOT NULL DEFAULT 'Thank You For Shopping With Us . Please Come Again',
  `show_note` tinyint(4) NOT NULL DEFAULT 1,
  `show_barcode` tinyint(4) NOT NULL DEFAULT 1,
  `show_discount` tinyint(4) NOT NULL DEFAULT 1,
  `show_customer` tinyint(4) NOT NULL DEFAULT 1,
  `show_email` tinyint(4) NOT NULL DEFAULT 1,
  `show_phone` tinyint(4) NOT NULL DEFAULT 1,
  `show_address` tinyint(4) NOT NULL DEFAULT 1,
  `show_Warehouse` tinyint(4) NOT NULL DEFAULT 1,
  `is_printable` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pos_settings`
--

INSERT INTO `pos_settings` (`id`, `note_customer`, `show_note`, `show_barcode`, `show_discount`, `show_customer`, `show_email`, `show_phone`, `show_address`, `show_Warehouse`, `is_printable`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Thank You For Shopping With Us . Please Come Again', 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(192) NOT NULL,
  `code` varchar(192) NOT NULL,
  `Type_barcode` varchar(192) NOT NULL,
  `name` varchar(192) NOT NULL,
  `cost` double NOT NULL,
  `price` double NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `unit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `unit_sale_id` bigint(20) UNSIGNED DEFAULT NULL,
  `unit_purchase_id` bigint(20) UNSIGNED DEFAULT NULL,
  `TaxNet` double NOT NULL DEFAULT 0,
  `tax_method` varchar(192) NOT NULL DEFAULT '1',
  `image` text DEFAULT NULL,
  `note` text DEFAULT NULL,
  `stock_alert` double NOT NULL DEFAULT 0,
  `qty_min` double NOT NULL DEFAULT 0,
  `is_promo` tinyint(4) NOT NULL DEFAULT 0,
  `promo_price` double NOT NULL DEFAULT 0,
  `promo_start_date` date DEFAULT NULL,
  `promo_end_date` date DEFAULT NULL,
  `is_variant` tinyint(4) NOT NULL DEFAULT 0,
  `is_imei` tinyint(4) NOT NULL DEFAULT 0,
  `not_selling` tinyint(4) NOT NULL DEFAULT 0,
  `is_active` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `type`, `code`, `Type_barcode`, `name`, `cost`, `price`, `category_id`, `brand_id`, `unit_id`, `unit_sale_id`, `unit_purchase_id`, `TaxNet`, `tax_method`, `image`, `note`, `stock_alert`, `qty_min`, `is_promo`, `promo_price`, `promo_start_date`, `promo_end_date`, `is_variant`, `is_imei`, `not_selling`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'is_single', '62690847', 'CODE128', 'HSI 1B', 637, 800, 3, 5, 1, 1, 1, 18, '2', 'no_image.png', 'HSI', 100, 5, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-06-24 20:16:30', '2024-06-29 11:11:22', '2024-06-29 11:11:22'),
(2, 'is_single', '11278615', 'CODE128', 'HSI 3B', 637, 800, 3, 5, 1, 1, 1, 18, '2', 'no_image.png', 'HSI 3B', 100, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-06-25 18:46:35', '2024-06-29 11:11:35', '2024-06-29 11:11:35'),
(3, 'is_single', '15967075', 'CODE128', 'HSI YB', 637, 800, 3, 5, 1, 1, 1, 0, '2', 'no_image.png', '100', 100, 100, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-06-25 18:51:46', '2024-06-27 20:28:58', '2024-06-27 20:28:58'),
(4, 'is_single', '71742879', 'CODE128', 'TATA 8MM', 391, 391, 2, 2, 1, 1, 1, 0, '2', 'no_image.png', '', 10, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-06-29 10:47:37', '2024-06-29 10:47:37', NULL),
(5, 'is_single', '56072670', 'CODE128', 'TATA  10MM', 606, 606, 2, 2, 1, 1, 1, 0, '2', 'no_image.png', '', 10, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-06-29 10:48:14', '2024-06-29 10:48:14', NULL),
(6, 'is_single', '75953609', 'CODE128', 'TATA  12MM', 869, 869, 2, 2, 1, 1, 1, 0, '2', 'no_image.png', '', 10, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-06-29 10:48:53', '2024-06-29 10:48:53', NULL),
(7, 'is_single', '19786163', 'CODE128', 'TATA   16MM', 1529, 1529, 2, 2, 1, 1, 1, 0, '2', 'no_image.png', '', 10, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-06-29 10:49:35', '2024-06-29 10:49:35', NULL),
(8, 'is_single', '14589584', 'CODE128', 'TATA  6MM', 234, 234, 2, 2, 1, 1, 1, 0, '2', 'no_image.png', '', 10, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-06-29 10:50:14', '2024-06-29 10:50:14', NULL),
(9, 'is_single', '94746301', 'CODE128', 'ADHUNIK 8MM', 220, 220, 2, 7, 1, 1, 1, 0, '2', 'no_image.png', '', 10, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-06-29 10:51:14', '2024-06-29 10:52:18', NULL),
(10, 'is_single', '13424485', 'CODE128', 'ADHUNIK 10MM', 580, 580, 2, 7, 1, 1, 1, 0, '2', 'no_image.png', '', 10, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-06-29 10:53:01', '2024-06-29 10:53:01', NULL),
(11, 'is_single', '95682174', 'CODE128', 'ADHUNIK 12MM', 840, 840, 2, 7, 1, 1, 1, 0, '2', 'no_image.png', '', 10, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-06-29 10:53:37', '2024-06-29 10:53:37', NULL),
(12, 'is_single', '45051289', 'CODE128', 'ADHUNIK 16MM', 1500, 1500, 2, 7, 1, 1, 1, 0, '2', 'no_image.png', '', 10, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-06-29 10:54:39', '2024-06-29 10:54:39', NULL),
(13, 'is_single', '87028911', 'CODE128', 'ADHUNIK 6MM', 200, 200, 2, 7, 1, 1, 1, 0, '2', 'no_image.png', '', 10, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-06-29 10:55:10', '2024-06-29 10:55:10', NULL),
(14, 'is_single', '85623607', 'CODE128', 'DOUBLE BULL PPC 50K', 360, 360, 1, 3, 1, 1, 1, 0, '2', 'no_image.png', '', 10, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-06-29 10:56:26', '2024-06-29 10:56:26', NULL),
(15, 'is_single', '94951043', 'CODE128', 'DOUBLE BULL MASTER 50K', 390, 390, 1, 3, 1, 1, 1, 0, '2', 'no_image.png', '', 10, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-06-29 10:57:23', '2024-06-29 10:57:23', NULL),
(16, 'is_single', '47546423', 'CODE128', 'DOUBLE BULL CONCITO 50K', 410, 410, 1, 3, 1, 1, 1, 0, '2', 'no_image.png', '', 10, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-06-29 10:58:03', '2024-06-29 10:58:03', NULL),
(17, 'is_single', '36769029', 'CODE128', 'ULTRA TECK PPC 50K', 360, 360, 1, 4, 1, 1, 1, 0, '2', 'no_image.png', '', 10, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-06-29 10:59:12', '2024-06-29 10:59:12', NULL),
(18, 'is_single', '30337852', 'CODE128', 'ULTRA TECK SUPER 50K', 400, 400, 1, 4, 1, 1, 1, 0, '2', 'no_image.png', '', 10, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-06-29 10:59:50', '2024-06-29 10:59:50', NULL),
(19, 'is_single', '27627668', 'CODE128', 'ULTRA TECK PREMIUM 50K', 410, 410, 1, 4, 1, 1, 1, 0, '2', 'no_image.png', '', 10, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-06-29 11:00:31', '2024-06-29 11:00:31', NULL),
(20, 'is_single', '88062574', 'CODE128', 'JSW HALO HSI 1B INT 1L', 615, 800, 3, 5, 1, 1, 1, 0, '2', 'no_image.png', '', 10, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-06-29 11:03:18', '2024-06-29 11:03:18', NULL),
(21, 'is_single', '33024419', 'CODE128', 'JSW HALO HSI 1B INT 4L', 2410, 3200, 3, 5, 1, 1, 1, 0, '2', 'no_image.png', '', 10, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-06-29 11:04:50', '2024-06-29 11:04:50', NULL),
(22, 'is_single', '45987915', 'CODE128', 'JSW HALO HSI 1B INT 10L', 5970, 7500, 3, 5, 1, 1, 1, 0, '2', 'no_image.png', '', 10, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-06-29 11:07:10', '2024-06-29 11:07:10', NULL),
(23, 'is_single', '18280549', 'CODE128', 'JSW HALO HSI 1B INT 20L', 11847, 14000, 3, 5, 1, 1, 1, 0, '2', 'no_image.png', '', 10, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-06-29 11:08:11', '2024-06-29 11:08:11', NULL),
(24, 'is_single', '42471102', 'CODE128', 'JSW HALO HSI 3B INT 1L', 615, 800, 3, 5, 1, 1, 1, 0, '2', 'no_image.png', '', 10, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-06-29 11:09:54', '2024-06-29 11:09:54', NULL),
(25, 'is_single', '23128010', 'CODE128', 'JSW HALO HSI 3B INT 4L', 2410, 3200, 3, 5, 1, 1, 1, 0, '2', 'no_image.png', '', 10, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-06-29 11:10:45', '2024-06-29 11:10:45', NULL),
(26, 'is_single', '74291987', 'CODE128', 'JSW HALO HSI 3B INT 10L', 5970, 7500, 3, 5, 1, 1, 1, 0, '2', 'no_image.png', '', 10, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-06-29 11:13:07', '2024-06-29 11:13:07', NULL),
(27, 'is_single', '28423181', 'CODE128', 'JSW HALO HSI 3B INT 20L', 11847, 14000, 3, 5, 1, 1, 1, 0, '2', 'no_image.png', '', 10, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-06-29 11:14:14', '2024-06-29 11:14:14', NULL),
(28, 'is_single', '85240040', 'CODE128', 'JSW HALO HSI 4B INT 1L', 615, 800, 3, 5, 1, 1, 1, 0, '2', 'no_image.png', '', 10, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-06-29 11:19:01', '2024-06-29 11:19:01', NULL),
(29, 'is_single', '89442618', 'CODE128', 'JSW HALO HSI 4B INT 4L', 2410, 3200, 3, 5, 1, 1, 1, 0, '2', 'no_image.png', '', 10, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-06-29 11:19:45', '2024-06-29 11:19:45', NULL),
(30, 'is_single', '93073040', 'CODE128', 'JSW HALO HSI MB INT 10L', 5970, 7500, 3, 5, 1, 1, 1, 0, '2', 'no_image.png', '', 10, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-06-29 11:20:23', '2024-06-29 11:20:23', NULL),
(31, 'is_single', '16618050', 'CODE128', 'JSW HALO HSI MB INT 20L', 11847, 14000, 3, 5, 1, 1, 1, 0, '2', 'no_image.png', '', 10, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-06-29 11:20:58', '2024-06-29 11:20:58', NULL),
(32, 'is_single', '78365268', 'CODE128', 'JSW HALO HSI YB INT 1L', 615, 800, 3, 5, 1, 1, 1, 0, '2', 'no_image.png', '', 10, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-06-29 11:22:16', '2024-06-29 11:22:16', NULL),
(33, 'is_single', '12389054', 'CODE128', 'JSW HALO HSI YB INT 4L', 2410, 3200, 3, 5, 1, 1, 1, 0, '2', 'no_image.png', '', 10, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-06-29 11:23:00', '2024-06-29 11:23:00', NULL),
(34, 'is_single', '27216767', 'CODE128', 'JSW HALO HSI YB INT 10L', 5970, 7500, 3, 5, 1, 1, 1, 0, '2', 'no_image.png', '', 10, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-06-29 11:23:37', '2024-06-29 11:23:37', NULL),
(35, 'is_single', '83358695', 'CODE128', 'JSW HALO HSI YB INT 20L', 11847, 14000, 3, 5, 1, 1, 1, 0, '2', 'no_image.png', '', 10, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-06-29 11:24:03', '2024-06-29 11:24:03', NULL),
(36, 'is_single', '74028353', 'CODE128', 'PIXA  PSI 1B    1L', 218, 300, 3, 5, 1, 1, 1, 0, '2', 'no_image.png', '', 10, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-07-02 11:34:15', '2024-07-02 11:34:15', NULL),
(37, 'is_single', '87612431', 'CODE128', 'PIXA  PSI 1B    4L', 826, 1140, 3, 5, 1, 1, 1, 0, '2', 'no_image.png', '', 10, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-07-02 11:35:47', '2024-07-02 11:35:47', NULL),
(38, 'is_single', '82428846', 'CODE128', 'PIXA  PSI 1B   10L', 1947, 2750, 3, 5, 1, 1, 1, 0, '2', 'no_image.png', '', 10, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-07-02 11:36:31', '2024-07-02 11:36:31', NULL),
(39, 'is_single', '41458653', 'CODE128', 'PIXA  PSI 1B   20L', 3728, 5200, 3, 5, 1, 1, 1, 0, '2', 'no_image.png', '', 10, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-07-02 11:37:32', '2024-07-02 11:37:32', NULL),
(40, 'is_single', '82827255', 'CODE128', 'PIXA  PSI  3B  1L', 218, 300, 3, 5, 1, 1, 1, 0, '2', 'no_image.png', '', 10, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-07-02 11:38:52', '2024-07-02 11:38:52', NULL),
(41, 'is_single', '87050527', 'CODE128', 'PIXA  PSI 3B    4L', 826, 1140, 3, 5, 1, 1, 1, 0, '2', 'no_image.png', '', 10, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-07-02 11:39:47', '2024-07-02 11:39:47', NULL),
(42, 'is_single', '14833302', 'CODE128', 'PIXA  PSI 3B   10L', 1947, 2750, 3, 5, 1, 1, 1, 0, '2', 'no_image.png', '', 10, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-07-02 11:40:32', '2024-07-02 11:40:32', NULL),
(43, 'is_single', '24049859', 'CODE128', 'PIXA  PSI 3B   20L', 3728, 5200, 3, 5, 1, 1, 1, 0, '2', 'no_image.png', '', 10, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-07-02 11:41:16', '2024-07-02 11:41:16', NULL),
(44, 'is_single', '51973534', 'CODE128', 'PIXA  PSI 4B    1L', 218, 300, 3, 5, 1, 1, 1, 0, '2', 'no_image.png', '', 10, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-07-02 11:41:56', '2024-07-02 11:41:56', NULL),
(45, 'is_single', '75330883', 'CODE128', 'PIXA  PSI 4B    4L', 826, 1140, 3, 5, 1, 1, 1, 0, '2', 'no_image.png', '', 10, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-07-02 11:42:31', '2024-07-02 11:42:31', NULL),
(46, 'is_single', '71199161', 'CODE128', 'I BLOK INT 20L', 3860, 4800, 7, 5, 1, 1, 1, 0, '2', 'no_image.png', '', 10, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-07-02 11:53:38', '2024-07-02 11:53:38', NULL),
(47, 'is_single', '51606492', 'CODE128', 'ROND BRUSHES', 35, 40, 6, 5, 1, 1, 1, 0, '2', 'no_image.png', '', 10, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-07-02 11:55:56', '2024-07-02 11:55:56', NULL),
(48, 'is_single', '23661535', 'CODE128', 'POP PARIS', 11, 20, 4, 5, 3, 3, 3, 0, '2', 'no_image.png', '', 10, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-07-02 11:57:36', '2024-07-02 11:57:36', NULL),
(49, 'is_single', '45015373', 'CODE128', 'black paper', 11.27, 15, 8, NULL, 1, 1, 1, 0, '2', 'no_image.png', '', 10, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-07-03 10:57:32', '2024-07-03 10:57:32', NULL),
(50, 'is_single', '32208510', 'CODE128', '4IN SP BRUSHES', 90, 250, 6, NULL, 1, 1, 1, 0, '2', 'no_image.png', '', 10, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-07-03 11:00:11', '2024-07-03 11:00:11', NULL),
(51, 'is_single', '75344633', 'CODE128', 'WHITE CEMENT 50K', 707, 950, 1, 5, 1, 1, 1, 0, '2', 'no_image.png', '', 10, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-07-13 18:42:12', '2024-07-13 18:42:12', NULL),
(52, 'is_single', '41509967', 'CODE128', 'WHITE CEMENT 25K', 404, 550, 1, 5, 1, 1, 1, 0, '2', 'no_image.png', '', 10, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-07-13 18:43:01', '2024-07-13 18:43:01', NULL),
(53, 'is_single', '22425274', 'CODE128', 'WHITE CEMENT 5K', 100, 150, 1, 5, 1, 1, 1, 0, '2', 'no_image.png', '', 10, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-07-13 18:43:48', '2024-07-13 18:43:48', NULL),
(54, 'is_single', '99174608', 'CODE128', 'WHITE CEMENT 1K', 19, 30, 1, 5, 1, 1, 1, 0, '2', 'no_image.png', '', 10, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-07-13 18:44:40', '2024-07-13 18:44:40', NULL),
(55, 'is_single', '78674764', 'CODE128', 'WHITE CEMENT', 20, 25, 1, 5, 3, 3, 3, 0, '2', 'no_image.png', '', 10, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-07-13 18:45:22', '2024-07-13 18:45:22', NULL),
(56, 'is_single', '50517954', 'CODE128', 'BIRLA  WHITE CEMENT 50K', 950, 1050, 1, 4, 1, 1, 1, 0, '2', 'no_image.png', '', 10, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-07-13 19:01:33', '2024-07-13 19:01:33', NULL),
(57, 'is_single', '89847473', 'CODE128', '3IN PAINT BRUSHES', 30, 50, 6, 1, 1, 1, 1, 0, '2', 'no_image.png', '', 10, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-07-13 19:14:15', '2024-07-13 19:14:15', NULL),
(58, 'is_single', '49024648', 'CODE128', 'RED PAPER', 20, 25, 9, 1, 1, 1, 1, 0, '2', 'no_image.png', '', 10, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-07-13 19:15:47', '2024-07-13 19:15:47', NULL),
(59, 'is_single', '49643382', 'CODE128', 'TARPIN OLL  1L', 78, 100, 2, 1, 1, 1, 1, 0, '2', 'no_image.png', '', 10, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-07-13 19:17:34', '2024-07-13 19:17:34', NULL),
(60, 'is_single', '48031685', 'CODE128', 'ZINE PRIMER ST', 240, 300, 3, 6, 1, 1, 1, 0, '2', 'no_image.png', '', 10, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-07-13 19:18:24', '2024-07-13 19:18:24', NULL),
(61, 'is_single', '29416430', 'CODE128', 'EXCEL TOTAL 10B', 670, 850, 3, 6, 1, 1, 1, 0, '2', 'no_image.png', '', 10, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-07-13 19:25:59', '2024-07-13 19:25:59', NULL),
(62, 'is_single', '82492817', 'CODE128', 'SHOW BRUSHES', 33, 40, 6, 1, 1, 1, 1, 0, '2', 'no_image.png', '', 10, 1, 0, 0, NULL, NULL, 0, 0, 0, 1, '2024-07-13 19:27:09', '2024-07-13 19:27:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

CREATE TABLE `product_variants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `code` varchar(191) NOT NULL,
  `name` varchar(192) DEFAULT NULL,
  `cost` double NOT NULL DEFAULT 0,
  `price` double NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_warehouse`
--

CREATE TABLE `product_warehouse` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `product_variant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `qte` double NOT NULL DEFAULT 0,
  `manage_stock` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_warehouse`
--

INSERT INTO `product_warehouse` (`id`, `product_id`, `warehouse_id`, `product_variant_id`, `qte`, `manage_stock`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, NULL, 0, 1, NULL, '2024-06-29 11:11:22', '2024-06-29 11:11:22'),
(2, 2, 1, NULL, 0, 1, NULL, '2024-06-29 11:11:35', '2024-06-29 11:11:35'),
(3, 3, 1, NULL, 0, 1, NULL, '2024-06-27 20:28:58', '2024-06-27 20:28:58'),
(4, 4, 1, NULL, 0, 1, NULL, NULL, NULL),
(5, 5, 1, NULL, 0, 1, NULL, NULL, NULL),
(6, 6, 1, NULL, 0, 1, NULL, NULL, NULL),
(7, 7, 1, NULL, 0, 1, NULL, NULL, NULL),
(8, 8, 1, NULL, 0, 1, NULL, NULL, NULL),
(9, 9, 1, NULL, 0, 1, NULL, NULL, NULL),
(10, 10, 1, NULL, 0, 1, NULL, NULL, NULL),
(11, 11, 1, NULL, 0, 1, NULL, NULL, NULL),
(12, 12, 1, NULL, 0, 1, NULL, NULL, NULL),
(13, 13, 1, NULL, 0, 1, NULL, NULL, NULL),
(14, 14, 1, NULL, 0, 1, NULL, NULL, NULL),
(15, 15, 1, NULL, 0, 1, NULL, NULL, NULL),
(16, 16, 1, NULL, 0, 1, NULL, NULL, NULL),
(17, 17, 1, NULL, 0, 1, NULL, NULL, NULL),
(18, 18, 1, NULL, 0, 1, NULL, NULL, NULL),
(19, 19, 1, NULL, 0, 1, NULL, NULL, NULL),
(20, 20, 1, NULL, 12, 1, NULL, '2024-07-13 18:32:06', NULL),
(21, 21, 1, NULL, 0, 1, NULL, NULL, NULL),
(22, 22, 1, NULL, 0, 1, NULL, NULL, NULL),
(23, 23, 1, NULL, 0, 1, NULL, NULL, NULL),
(24, 24, 1, NULL, 0, 1, NULL, NULL, NULL),
(25, 25, 1, NULL, 0, 1, NULL, NULL, NULL),
(26, 26, 1, NULL, 0, 1, NULL, NULL, NULL),
(27, 27, 1, NULL, 0, 1, NULL, NULL, NULL),
(28, 28, 1, NULL, 0, 1, NULL, NULL, NULL),
(29, 29, 1, NULL, 0, 1, NULL, NULL, NULL),
(30, 30, 1, NULL, 0, 1, NULL, NULL, NULL),
(31, 31, 1, NULL, 0, 1, NULL, NULL, NULL),
(32, 32, 1, NULL, 0, 1, NULL, NULL, NULL),
(33, 33, 1, NULL, 0, 1, NULL, NULL, NULL),
(34, 34, 1, NULL, 0, 1, NULL, NULL, NULL),
(35, 35, 1, NULL, 0, 1, NULL, NULL, NULL),
(36, 36, 1, NULL, 21, 1, NULL, '2024-07-13 18:31:31', NULL),
(37, 37, 1, NULL, 9, 1, NULL, '2024-07-02 12:11:17', NULL),
(38, 38, 1, NULL, 8, 1, NULL, '2024-07-02 11:49:22', NULL),
(39, 39, 1, NULL, 8, 1, NULL, '2024-07-02 12:11:17', NULL),
(40, 40, 1, NULL, 8, 1, NULL, '2024-07-02 12:11:17', NULL),
(41, 41, 1, NULL, 0, 1, NULL, NULL, NULL),
(42, 42, 1, NULL, 0, 1, NULL, NULL, NULL),
(43, 43, 1, NULL, 0, 1, NULL, NULL, NULL),
(44, 44, 1, NULL, 8, 1, NULL, '2024-07-02 12:11:17', NULL),
(45, 45, 1, NULL, 6, 1, NULL, '2024-07-02 12:11:17', NULL),
(46, 46, 1, NULL, 8, 1, NULL, '2024-07-02 12:11:17', NULL),
(47, 47, 1, NULL, 54, 1, NULL, '2024-07-13 19:31:30', NULL),
(48, 48, 1, NULL, 15, 1, NULL, '2024-07-02 12:11:17', NULL),
(49, 49, 1, NULL, 500, 1, NULL, '2024-07-13 19:31:30', NULL),
(50, 50, 1, NULL, 50, 1, NULL, '2024-07-13 18:31:24', NULL),
(51, 51, 1, NULL, 30, 1, NULL, '2024-07-13 19:31:30', NULL),
(52, 52, 1, NULL, 12, 1, NULL, '2024-07-13 18:47:26', NULL),
(53, 53, 1, NULL, 25, 1, NULL, '2024-07-13 18:47:48', NULL),
(54, 54, 1, NULL, 75, 1, NULL, '2024-07-13 18:48:10', NULL),
(55, 55, 1, NULL, 100, 1, NULL, '2024-07-13 18:46:27', NULL),
(56, 56, 1, NULL, 8, 1, NULL, '2024-07-13 19:31:30', NULL),
(57, 57, 1, NULL, 130, 1, NULL, '2024-07-13 19:21:07', NULL),
(58, 58, 1, NULL, 150, 1, NULL, '2024-07-13 19:20:26', NULL),
(59, 59, 1, NULL, 200, 1, NULL, '2024-07-13 19:20:01', NULL),
(60, 60, 1, NULL, 48, 1, NULL, '2024-07-13 19:24:29', NULL),
(61, 61, 1, NULL, 10, 1, NULL, '2024-07-13 19:28:34', NULL),
(62, 62, 1, NULL, 80, 1, NULL, '2024-07-13 19:27:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `providers`
--

CREATE TABLE `providers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `code` varchar(191) NOT NULL,
  `email` varchar(192) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `Ref` varchar(192) NOT NULL,
  `date` datetime NOT NULL,
  `provider_id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate` double NOT NULL DEFAULT 0,
  `TaxNet` double NOT NULL DEFAULT 0,
  `discount` double NOT NULL DEFAULT 0,
  `discount_type` varchar(192) NOT NULL,
  `discount_percent_total` double NOT NULL DEFAULT 0,
  `shipping` double NOT NULL DEFAULT 0,
  `GrandTotal` double NOT NULL,
  `paid_amount` double NOT NULL DEFAULT 0,
  `statut` varchar(191) NOT NULL,
  `payment_statut` varchar(192) NOT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_details`
--

CREATE TABLE `purchase_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` datetime NOT NULL,
  `cost` double NOT NULL,
  `purchase_unit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `TaxNet` double NOT NULL DEFAULT 0,
  `tax_method` varchar(192) NOT NULL DEFAULT '1',
  `discount` double NOT NULL DEFAULT 0,
  `discount_method` varchar(192) NOT NULL DEFAULT '1',
  `purchase_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_variant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `imei_number` text DEFAULT NULL,
  `total` double NOT NULL,
  `quantity` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_returns`
--

CREATE TABLE `purchase_returns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `date` datetime NOT NULL,
  `Ref` varchar(192) NOT NULL,
  `purchase_id` bigint(20) UNSIGNED DEFAULT NULL,
  `provider_id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate` double NOT NULL DEFAULT 0,
  `TaxNet` double NOT NULL DEFAULT 0,
  `discount` double NOT NULL DEFAULT 0,
  `discount_type` varchar(192) NOT NULL,
  `discount_percent_total` double NOT NULL DEFAULT 0,
  `shipping` double NOT NULL DEFAULT 0,
  `GrandTotal` double NOT NULL,
  `paid_amount` double NOT NULL DEFAULT 0,
  `payment_statut` varchar(192) NOT NULL,
  `statut` varchar(192) NOT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_return_details`
--

CREATE TABLE `purchase_return_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cost` decimal(16,3) NOT NULL,
  `purchase_unit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `TaxNet` double NOT NULL DEFAULT 0,
  `tax_method` varchar(192) NOT NULL DEFAULT '1',
  `discount` double NOT NULL DEFAULT 0,
  `discount_method` varchar(192) NOT NULL DEFAULT '1',
  `total` double NOT NULL,
  `quantity` double NOT NULL,
  `purchase_return_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_variant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `imei_number` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quotations`
--

CREATE TABLE `quotations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `date` datetime NOT NULL,
  `Ref` varchar(192) NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate` double NOT NULL DEFAULT 0,
  `TaxNet` double NOT NULL DEFAULT 0,
  `discount` double NOT NULL DEFAULT 0,
  `discount_type` varchar(192) NOT NULL,
  `discount_percent_total` double NOT NULL DEFAULT 0,
  `shipping` double NOT NULL DEFAULT 0,
  `GrandTotal` double NOT NULL,
  `statut` varchar(192) NOT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quotation_details`
--

CREATE TABLE `quotation_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `price` double NOT NULL,
  `sale_unit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `TaxNet` double NOT NULL DEFAULT 0,
  `tax_method` varchar(192) NOT NULL DEFAULT '1',
  `discount` double NOT NULL DEFAULT 0,
  `discount_method` varchar(192) NOT NULL DEFAULT '1',
  `total` double NOT NULL,
  `quantity` double NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_variant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `imei_number` text DEFAULT NULL,
  `quotation_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `guard_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Super Admin', 'Super Admin', 'web', '2024-06-23 08:33:34', '2024-06-23 08:33:34', '2024-06-23 07:16:51'),
(2, 'Admin', 'Administrator', 'web', '2024-06-23 08:33:34', '2024-06-23 08:33:34', NULL),
(3, 'Manager', 'Manager', 'web', '2024-06-23 08:33:34', '2024-06-23 08:33:34', NULL),
(4, 'Seller', 'Seller', 'web', '2024-06-23 08:33:34', '2024-06-23 08:33:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(3, 3),
(4, 1),
(4, 2),
(5, 1),
(5, 2),
(5, 3),
(6, 1),
(6, 2),
(7, 1),
(7, 2),
(8, 1),
(8, 2),
(9, 1),
(9, 2),
(9, 3),
(10, 1),
(10, 2),
(10, 3),
(11, 1),
(11, 2),
(12, 1),
(12, 2),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(17, 2),
(17, 3),
(18, 1),
(18, 2),
(18, 3),
(18, 4),
(19, 1),
(19, 2),
(19, 3),
(19, 4),
(20, 1),
(20, 2),
(21, 1),
(21, 2),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(27, 2),
(27, 3),
(28, 1),
(28, 2),
(28, 3),
(28, 4),
(29, 1),
(29, 2),
(29, 3),
(30, 1),
(30, 2),
(30, 3),
(31, 1),
(31, 2),
(31, 3),
(32, 1),
(32, 2),
(32, 3),
(32, 4),
(33, 1),
(33, 2),
(33, 3),
(33, 4),
(34, 1),
(34, 2),
(34, 3),
(34, 4),
(35, 1),
(35, 2),
(35, 3),
(35, 4),
(36, 1),
(37, 1),
(37, 2),
(37, 3),
(38, 1),
(38, 2),
(38, 3),
(39, 1),
(39, 2),
(39, 3),
(40, 1),
(40, 2),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(45, 2),
(45, 3),
(46, 1),
(46, 2),
(46, 3),
(46, 4),
(47, 1),
(47, 2),
(47, 3),
(47, 4),
(48, 1),
(48, 2),
(49, 1),
(49, 2),
(49, 3),
(49, 4),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(66, 2),
(66, 3),
(66, 4),
(67, 1),
(67, 2),
(67, 3),
(67, 4),
(68, 1),
(68, 2),
(68, 3),
(68, 4),
(69, 1),
(69, 2),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(82, 2),
(82, 3),
(82, 4),
(83, 1),
(84, 1),
(84, 2),
(84, 3),
(84, 4),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(88, 2),
(88, 3),
(88, 4),
(89, 1),
(89, 2),
(89, 3),
(89, 4),
(90, 1),
(90, 2),
(90, 4),
(91, 1),
(92, 1),
(92, 2),
(92, 3),
(93, 1),
(93, 2),
(93, 3),
(93, 4),
(94, 1),
(95, 1),
(96, 1),
(96, 2),
(96, 3),
(96, 4),
(97, 1),
(98, 1),
(98, 2),
(98, 3),
(99, 1),
(99, 2),
(99, 3),
(99, 4),
(100, 1),
(101, 1),
(101, 2),
(101, 3),
(101, 4),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(106, 2),
(106, 3),
(106, 4),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(200, 3),
(202, 3),
(202, 4),
(207, 3),
(207, 4);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `date` datetime NOT NULL,
  `Ref` varchar(192) NOT NULL,
  `is_pos` tinyint(4) NOT NULL DEFAULT 0,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate` double NOT NULL DEFAULT 0,
  `TaxNet` double NOT NULL DEFAULT 0,
  `discount` double NOT NULL DEFAULT 0,
  `discount_type` varchar(192) NOT NULL,
  `discount_percent_total` double NOT NULL DEFAULT 0,
  `shipping` double NOT NULL DEFAULT 0,
  `GrandTotal` double NOT NULL,
  `paid_amount` double NOT NULL DEFAULT 0,
  `payment_statut` varchar(192) NOT NULL,
  `statut` varchar(191) NOT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `is_gst` varchar(10) NOT NULL DEFAULT 'no',
  `gst_no` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `date`, `Ref`, `is_pos`, `client_id`, `warehouse_id`, `tax_rate`, `TaxNet`, `discount`, `discount_type`, `discount_percent_total`, `shipping`, `GrandTotal`, `paid_amount`, `payment_statut`, `statut`, `notes`, `created_at`, `updated_at`, `deleted_at`, `is_gst`, `gst_no`) VALUES
(1, 5, '2024-06-24 20:25:00', 'SO-20240624-082839', 0, 2, 1, 0, 0, 0, 'fixed', 0, 0, 750, 750, 'paid', 'completed', '', '2024-06-24 20:28:39', '2024-07-13 18:32:30', '2024-07-13 18:32:30', 'no', NULL),
(2, 5, '2024-06-25 11:59:00', 'SO-20240625-120132', 0, 2, 1, 0, 0, 0, 'fixed', 0, 0, 1500, 1500, 'paid', 'completed', '', '2024-06-25 12:01:32', '2024-07-13 18:32:22', '2024-07-13 18:32:22', 'no', NULL),
(3, 5, '2024-06-25 18:28:00', 'SO-20240625-063121', 0, 3, 1, 0, 0, 10, 'percent', 80, 0, 720, 720, 'paid', 'completed', '200', '2024-06-25 18:31:21', '2024-07-13 18:32:16', '2024-07-13 18:32:16', 'no', NULL),
(4, 5, '2024-07-01 20:05:00', 'SO-20240701-080739', 0, 2, 1, 0, 0, 0, 'fixed', 0, 0, 750, 600, 'partial', 'completed', '', '2024-07-01 20:07:39', '2024-07-13 18:32:06', '2024-07-13 18:32:06', 'no', NULL),
(5, 5, '2024-07-02 12:02:00', 'SO-20240702-121117', 0, 4, 1, 0, 0, 260, 'fixed', 0, 0, 21000, 21000, 'paid', 'completed', '', '2024-07-02 12:11:17', '2024-07-02 12:11:17', NULL, 'no', NULL),
(6, 5, '2024-07-02 12:46:00', 'SO-20240702-124858', 0, 5, 1, 0, 0, 0, 'fixed', 0, 0, 750, 750, 'paid', 'completed', '500', '2024-07-02 12:48:58', '2024-07-13 18:31:58', '2024-07-13 18:31:58', 'no', NULL),
(7, 5, '2024-07-02 12:54:00', 'SO-20240702-125648', 0, 5, 1, 0, 0, 0, 'fixed', 0, 0, 250, 250, 'paid', 'completed', '200', '2024-07-02 12:56:48', '2024-07-13 18:31:31', '2024-07-13 18:31:31', 'no', NULL),
(8, 5, '2024-07-03 11:05:00', 'SO-20240703-112558', 0, 4, 1, 0, 0, 0, 'fixed', 0, 0, 760, 760, 'paid', 'completed', '360', '2024-07-03 11:25:58', '2024-07-13 18:31:24', '2024-07-13 18:31:24', 'no', NULL),
(9, 2, '2024-07-04 20:47:00', 'SO-20240704-085109', 0, 5, 1, 0, 0, 0, 'fixed', 0, 0, 275, 275, 'paid', 'completed', '', '2024-07-04 20:51:09', '2024-07-13 18:31:16', '2024-07-13 18:31:16', 'no', NULL),
(10, 5, '2024-07-13 18:10:00', 'SO-20240713-061112', 0, 2, 1, 0, 0, 0, 'fixed', 0, 0, 800, 700, 'partial', 'completed', '', '2024-07-13 18:11:12', '2024-07-13 18:31:05', '2024-07-13 18:31:05', 'no', NULL),
(11, 5, '2024-07-09 19:07:00', 'SO-20240713-071152', 0, 6, 1, 0, 0, 0, 'fixed', 0, 0, 9195, 0, 'unpaid', 'completed', '', '2024-07-13 19:11:52', '2024-07-13 19:31:30', '2024-07-13 19:31:30', 'no', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sale_details`
--

CREATE TABLE `sale_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` datetime NOT NULL,
  `sale_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_variant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `imei_number` text DEFAULT NULL,
  `price` double NOT NULL,
  `sale_unit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `TaxNet` double DEFAULT NULL,
  `tax_method` varchar(192) NOT NULL DEFAULT '1',
  `discount` double DEFAULT NULL,
  `discount_method` varchar(192) NOT NULL DEFAULT '1',
  `total` double NOT NULL,
  `quantity` double NOT NULL,
  `optional_pname` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sale_details`
--

INSERT INTO `sale_details` (`id`, `date`, `sale_id`, `product_id`, `product_variant_id`, `imei_number`, `price`, `sale_unit_id`, `TaxNet`, `tax_method`, `discount`, `discount_method`, `total`, `quantity`, `optional_pname`, `created_at`, `updated_at`) VALUES
(5, '2024-07-02 12:02:00', 5, 40, NULL, '', 300, 1, 0, '2', 40, '2', 780, 3, '4195', NULL, NULL),
(6, '2024-07-02 12:02:00', 5, 39, NULL, '', 5200, 1, 0, '2', 700, '2', 9000, 2, '4192', NULL, NULL),
(7, '2024-07-02 12:02:00', 5, 44, NULL, '', 300, 1, 0, '2', 40, '2', 520, 2, '5208', NULL, NULL),
(8, '2024-07-02 12:02:00', 5, 45, NULL, '', 1140, 1, 0, '2', 140, '2', 1000, 1, '5208', NULL, NULL),
(9, '2024-07-02 12:02:00', 5, 37, NULL, '', 1140, 1, 0, '2', 140, '2', 1000, 1, 'WH', NULL, NULL),
(10, '2024-07-02 12:02:00', 5, 46, NULL, '', 4800, 1, 0, '2', 500, '2', 8600, 2, NULL, NULL, NULL),
(11, '2024-07-02 12:02:00', 5, 47, NULL, '', 40, 1, 0, '2', 0, '2', 160, 4, NULL, NULL, NULL),
(12, '2024-07-02 12:02:00', 5, 48, NULL, '', 20, 3, 0, '2', 0, '2', 200, 10, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sale_returns`
--

CREATE TABLE `sale_returns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `date` datetime NOT NULL,
  `Ref` varchar(192) NOT NULL,
  `sale_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate` double NOT NULL DEFAULT 0,
  `TaxNet` double NOT NULL DEFAULT 0,
  `discount` double NOT NULL DEFAULT 0,
  `discount_type` varchar(192) NOT NULL,
  `discount_percent_total` double NOT NULL DEFAULT 0,
  `shipping` double NOT NULL DEFAULT 0,
  `GrandTotal` double NOT NULL,
  `paid_amount` double NOT NULL DEFAULT 0,
  `payment_statut` varchar(192) NOT NULL,
  `statut` varchar(192) NOT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sale_return_details`
--

CREATE TABLE `sale_return_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_return_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `price` double NOT NULL,
  `sale_unit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `TaxNet` double NOT NULL DEFAULT 0,
  `tax_method` varchar(192) NOT NULL DEFAULT '1',
  `discount` double NOT NULL DEFAULT 0,
  `discount_method` varchar(192) NOT NULL DEFAULT '1',
  `product_variant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `imei_number` text DEFAULT NULL,
  `quantity` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('cXTuhaA6W3xCPp82JbMzXyc4ZGqAitcdh2sDAxj2', NULL, '152.59.47.230', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMnNMVEVkdmt6QjVrR0pDb21IMmxaeUNpSFBIbVpkNzJkUVdZUklsSSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMToiaHR0cHM6Ly9zbWFydHN0b2NrLmluIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vc21hcnRzdG9jay5pbi9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1721743621),
('dgXs666ZJdWCtyfFfHHRhYrXQXWJPS4GfW0pGEA6', NULL, '191.101.209.8', 'Mozilla/5.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieW1HWTZVZG9QVGcxNEZXZnVqajBaOFpIUkozY1NJNW5sTFRKNlhUSiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMToiaHR0cHM6Ly9zbWFydHN0b2NrLmluIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vc21hcnRzdG9jay5pbi9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1721706325),
('ETxbdKmXEHHPReQgVzLTPcySuZraBU8F19Neov1W', NULL, '49.44.67.139', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSTBXc0ZoZFJ6Sk1MY09NUGo5bkZ0Q1poSkFVNDl1M3hYU29oWExiMCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNjoiaHR0cHM6Ly9zbWFydHN0b2NrLmluL3Blb3BsZS9jbGllbnRzIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vc21hcnRzdG9jay5pbi9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1721709836),
('j8tsWIRHgu9GU9nGbJ4TteKqtNKv3l4FYx7iz5Po', NULL, '2001:bc8:1201:2b:ba2a:72ff:fed9:efeb', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.3', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidkFpYlpIQmd6OTF0bHc5THQ2RjhDNmdTdmpBT2E1bVJTSjdDb21uUyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyNToiaHR0cHM6Ly93d3cuc21hcnRzdG9jay5pbiI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMxOiJodHRwczovL3d3dy5zbWFydHN0b2NrLmluL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1721702872),
('jkkbzJZpBmQUwtnbgvkg7WzlOyhvxkf2aYnxobJd', NULL, '2a02:4780:11:c0de::21', 'Go-http-client/2.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicmlFVUE5TU0za1J4ZWhjNVZoRFM5aEJpc282WFVUSjhSZ0syRFhvbCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMToiaHR0cHM6Ly9zbWFydHN0b2NrLmluIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vc21hcnRzdG9jay5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1721723690),
('KG9sffIBkdGGYgZEDt0hzCiEktzOtlriZgYokh1t', NULL, '49.44.122.43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaHhSZE1PZ3FzdEcwT0JoTjhsaktNNXhOZm5wUkdKWFNoalI1WmY0VyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vc21hcnRzdG9jay5pbi9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1721709813),
('ll3kQrlqlC3GdqUUgXUmtJInm9ChhjubkrqP4eGh', NULL, '2a02:4780:11:c0de::21', 'Go-http-client/2.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTm5sWjFVSmsyZzRuZTdUaG5xeVI1SFhQVFRGcmRQVmI3RDNsbmttayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vc21hcnRzdG9jay5pbi9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1721723691),
('nBJ5QDjsXzQZPY2AtS7phWa2Ream0JoIXLAGkmoK', NULL, '18.236.236.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQkxRVWRVMmZjcE9Zc3Y3VGNpR0hOb0VhMFlNeGVGc1RONXZ1YUFsTyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMToiaHR0cHM6Ly9zbWFydHN0b2NrLmluIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vc21hcnRzdG9jay5pbi9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1721732096),
('OhZuJsOjVCzSTi4RsLo31QruS5YfNiH3KFKlMvH7', NULL, '2001:bc8:1201:2b:ba2a:72ff:fed9:efeb', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.3', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiR1pXOTJncjNTNXdpV3N3aTMwYnZmMGtWNmtERFVCM2R0cGlnQWd4dSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyNToiaHR0cHM6Ly93d3cuc21hcnRzdG9jay5pbiI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMxOiJodHRwczovL3d3dy5zbWFydHN0b2NrLmluL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1721702937),
('WtaZOIxYYyTYVc9OwSxhI58QYkfGIm11yRhergbO', 6, '103.55.98.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiV2Vack11eWl3bXJPT2lYcWtiWExtNloxQjlKWFNKSjdCWFhsVU94UiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTM6Imh0dHBzOi8vc21hcnRzdG9jay5pbi9yZXBvcnRzL3JlcG9ydHNfcXVhbnRpdHlfYWxlcnRzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NjtzOjQ6ImF1dGgiO2E6MTp7czoyMToicGFzc3dvcmRfY29uZmlybWVkX2F0IjtpOjE3MjE3MDk4MTM7fX0=', 1721709918);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `currency_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED DEFAULT NULL,
  `warehouse_id` bigint(20) UNSIGNED DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `app_name` varchar(192) NOT NULL,
  `CompanyName` varchar(191) NOT NULL,
  `CompanyPhone` varchar(191) NOT NULL,
  `CompanyAdress` varchar(191) NOT NULL,
  `logo` varchar(191) DEFAULT NULL,
  `invoice_footer` varchar(192) DEFAULT NULL,
  `footer` varchar(192) NOT NULL,
  `developed_by` varchar(192) DEFAULT NULL,
  `default_language` varchar(192) NOT NULL DEFAULT 'en',
  `default_sms_gateway` varchar(192) DEFAULT NULL,
  `symbol_placement` varchar(192) NOT NULL DEFAULT 'before',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `gst_no` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `currency_id`, `client_id`, `warehouse_id`, `email`, `app_name`, `CompanyName`, `CompanyPhone`, `CompanyAdress`, `logo`, `invoice_footer`, `footer`, `developed_by`, `default_language`, `default_sms_gateway`, `symbol_placement`, `created_at`, `updated_at`, `deleted_at`, `gst_no`) VALUES
(1, 1, NULL, NULL, 'admin@smartstock.in', 'CSMS', 'Sarkar Enterprises', '9475620401/9851564940', 'Mirjaur more, Old Malda Road, Malda', 'logo-default.png', NULL, 'CSMS - Customize Stock Management System', 'Lightangle Technologies', 'en', 'twilio', 'before', '2024-06-23 08:33:34', '2024-06-23 08:33:34', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sms_messages`
--

CREATE TABLE `sms_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(192) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_messages`
--

INSERT INTO `sms_messages` (`id`, `name`, `text`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'sale', 'Dear {contact_name},\nThank you for your purchase! Your invoice number is {invoice_number}.\nIf you have any questions or concerns, please don\'t hesitate to reach out to us. We are here to help!\nBest regards,\n{business_name}', NULL, NULL, NULL),
(2, 'purchase', 'Dear {contact_name},\nI recently made a purchase from your company and I wanted to thank you for your cooperation and service. My invoice number is {invoice_number} .\nIf you have any questions or concerns regarding my purchase, please don\'t hesitate to contact me. I am here to make sure I have a positive experience with your company.\nBest regards,\n{business_name}', NULL, NULL, NULL),
(3, 'quotation', 'Dear {contact_name},\nThank you for your interest in our products. Your quotation number is {quotation_number}.\nPlease let us know if you have any questions or concerns regarding your quotation. We are here to assist you.\nBest regards,\n{business_name}', NULL, NULL, NULL),
(4, 'payment_received', 'Dear {contact_name},\nThank you for making your payment. We have received it and it has been processed successfully.\nIf you have any further questions or concerns, please don\'t hesitate to reach out to us. We are always here to help.\nBest regards,\n{business_name}', NULL, NULL, NULL),
(5, 'payment_sent', 'Dear {contact_name},\nWe have just sent the payment . We appreciate your prompt attention to this matter and the high level of service you provide.\nIf you need any further information or clarification, please do not hesitate to reach out to us. We are here to help.\nBest regards,\n{business_name}', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `Ref` varchar(192) NOT NULL,
  `date` datetime NOT NULL,
  `from_warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `to_warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `items` double NOT NULL,
  `tax_rate` double NOT NULL DEFAULT 0,
  `TaxNet` double NOT NULL DEFAULT 0,
  `discount` double NOT NULL DEFAULT 0,
  `discount_type` varchar(192) NOT NULL,
  `discount_percent_total` double NOT NULL DEFAULT 0,
  `shipping` double NOT NULL DEFAULT 0,
  `GrandTotal` double NOT NULL,
  `statut` varchar(192) NOT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transfers_details`
--

CREATE TABLE `transfers_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transfer_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_variant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cost` double NOT NULL,
  `purchase_unit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `TaxNet` double DEFAULT NULL,
  `tax_method` varchar(192) NOT NULL DEFAULT '1',
  `discount` double DEFAULT NULL,
  `discount_method` varchar(192) NOT NULL DEFAULT '1',
  `quantity` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(192) NOT NULL,
  `ShortName` varchar(192) NOT NULL,
  `base_unit` bigint(20) UNSIGNED DEFAULT NULL,
  `operator` char(192) NOT NULL DEFAULT '*',
  `operator_value` double NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `ShortName`, `base_unit`, `operator`, `operator_value`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Piece', 'pc', NULL, '*', 1, '2024-06-23 08:33:35', '2024-06-23 08:33:35', NULL),
(2, 'Gram', 'gm', NULL, '/', 1000, '2024-06-23 08:33:35', '2024-06-23 08:33:35', NULL),
(3, 'Kilogram', 'kg', NULL, '*', 1, '2024-06-23 08:33:35', '2024-06-23 08:33:35', NULL),
(4, 'Dozen', 'dozen', NULL, '*', 1, '2024-06-23 08:33:35', '2024-06-23 08:33:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(192) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `role_users_id` bigint(20) UNSIGNED NOT NULL,
  `is_all_warehouses` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`, `avatar`, `status`, `role_users_id`, `is_all_warehouses`) VALUES
(1, 'Super Admin', 'superadmin@smartstock.in', NULL, '$2y$12$ARuxG.64ltNKYe3oQJpBbudY/75eiGP9/lWyeIlR7FUOnkKii/.OK', NULL, NULL, NULL, NULL, 'no_avatar.png', 0, 1, 1),
(2, 'BISWAJIT SARKAR', 'biswajitsarkar.malda1995@gmail.com', NULL, '$2y$12$vQZagG8UZ3l9p3nXPPJWfOvYUIByXg9yG.43brSN5WJgbItU8zRny', NULL, NULL, '2024-07-13 18:23:14', NULL, 'no_avatar.png', 1, 3, 1),
(3, 'Manager', 'manager@smartstock.in', NULL, '$2y$12$6xUpQjQPVzAbc9p2LLz/cuYelzEw.Xz765smattW6JSlNiQYLD5hC', NULL, NULL, '2024-07-03 11:38:18', NULL, 'no_avatar.png', 1, 4, 1),
(4, 'Salesman', 'seller@smartstock.in', NULL, '$2y$12$ClEHUDESTAQW1s.SjeQNVeu3p303odr0A9/DkWsabXffFHOgdlqzO', NULL, NULL, '2024-07-03 11:38:02', '2024-07-03 11:38:02', 'no_avatar.png', 0, 4, 1),
(5, 'ratan pal', 'ratanpal79082@gmail.com', NULL, '$2y$12$O6WpDHN2gavFF3GfPOzXCOOkQeqAlaqhxYEP0p2SQCUimzkVZCsNK', NULL, '2024-06-24 20:12:06', '2024-07-03 11:37:51', NULL, 'no_avatar.png', 1, 2, 1),
(6, 'Suraj Saraf Developer', 'surajsarafmalda@gmail.com', NULL, '$2y$12$xiZBgxi4EqQxgQI8Sk4pY.9.bgZCr0LdoX5IbpuBLOHdXnqt1ERcG', NULL, '2024-07-13 18:21:41', '2024-07-13 18:21:41', NULL, 'no_avatar.png', 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_warehouse`
--

CREATE TABLE `user_warehouse` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(192) NOT NULL,
  `city` varchar(192) DEFAULT NULL,
  `mobile` varchar(192) DEFAULT NULL,
  `zip` varchar(192) DEFAULT NULL,
  `email` varchar(192) DEFAULT NULL,
  `country` varchar(192) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `name`, `city`, `mobile`, `zip`, `email`, `country`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Shop 1', 'Kolkata', '9876543210', '1000', 'shop1@gmail.com', 'India', '2024-06-23 08:33:35', '2024-06-23 08:33:35', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adjustments`
--
ALTER TABLE `adjustments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adjustment_details`
--
ALTER TABLE `adjustment_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposit_categories`
--
ALTER TABLE `deposit_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_messages`
--
ALTER TABLE `email_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_purchases`
--
ALTER TABLE `payment_purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_purchases_user_id_foreign` (`user_id`),
  ADD KEY `payment_purchases_account_id_foreign` (`account_id`),
  ADD KEY `payment_purchases_purchase_id_foreign` (`purchase_id`),
  ADD KEY `payment_purchases_payment_method_id_foreign` (`payment_method_id`);

--
-- Indexes for table `payment_purchase_returns`
--
ALTER TABLE `payment_purchase_returns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_purchase_returns_user_id_foreign` (`user_id`),
  ADD KEY `payment_purchase_returns_account_id_foreign` (`account_id`),
  ADD KEY `payment_purchase_returns_purchase_return_id_foreign` (`purchase_return_id`),
  ADD KEY `payment_purchase_returns_payment_method_id_foreign` (`payment_method_id`);

--
-- Indexes for table `payment_sales`
--
ALTER TABLE `payment_sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_sales_user_id_foreign` (`user_id`),
  ADD KEY `payment_sales_account_id_foreign` (`account_id`),
  ADD KEY `payment_sales_sale_id_foreign` (`sale_id`),
  ADD KEY `payment_sales_payment_method_id_foreign` (`payment_method_id`);

--
-- Indexes for table `payment_sale_returns`
--
ALTER TABLE `payment_sale_returns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_sale_returns_user_id_foreign` (`user_id`),
  ADD KEY `payment_sale_returns_account_id_foreign` (`account_id`),
  ADD KEY `payment_sale_returns_sale_return_id_foreign` (`sale_return_id`),
  ADD KEY `payment_sale_returns_payment_method_id_foreign` (`payment_method_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `pos_settings`
--
ALTER TABLE `pos_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_unit_id_foreign` (`unit_id`),
  ADD KEY `products_unit_sale_id_foreign` (`unit_sale_id`),
  ADD KEY `products_unit_purchase_id_foreign` (`unit_purchase_id`);

--
-- Indexes for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_variants_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_warehouse`
--
ALTER TABLE `product_warehouse`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_warehouse_product_id_foreign` (`product_id`),
  ADD KEY `product_warehouse_warehouse_id_foreign` (`warehouse_id`),
  ADD KEY `product_warehouse_product_variant_id_foreign` (`product_variant_id`);

--
-- Indexes for table `providers`
--
ALTER TABLE `providers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `providers_user_id_foreign` (`user_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchases_user_id_foreign` (`user_id`),
  ADD KEY `purchases_provider_id_foreign` (`provider_id`),
  ADD KEY `purchases_warehouse_id_foreign` (`warehouse_id`);

--
-- Indexes for table `purchase_details`
--
ALTER TABLE `purchase_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_details_purchase_id_foreign` (`purchase_id`),
  ADD KEY `purchase_details_product_id_foreign` (`product_id`),
  ADD KEY `purchase_details_product_variant_id_foreign` (`product_variant_id`),
  ADD KEY `purchase_details_purchase_unit_id_foreign` (`purchase_unit_id`);

--
-- Indexes for table `purchase_returns`
--
ALTER TABLE `purchase_returns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_returns_user_id_foreign` (`user_id`),
  ADD KEY `purchase_returns_purchase_id_foreign` (`purchase_id`),
  ADD KEY `purchase_returns_provider_id_foreign` (`provider_id`),
  ADD KEY `purchase_returns_warehouse_id_foreign` (`warehouse_id`);

--
-- Indexes for table `purchase_return_details`
--
ALTER TABLE `purchase_return_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_return_details_purchase_unit_id_foreign` (`purchase_unit_id`),
  ADD KEY `purchase_return_details_purchase_return_id_foreign` (`purchase_return_id`),
  ADD KEY `purchase_return_details_product_id_foreign` (`product_id`),
  ADD KEY `purchase_return_details_product_variant_id_foreign` (`product_variant_id`);

--
-- Indexes for table `quotations`
--
ALTER TABLE `quotations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quotations_user_id_foreign` (`user_id`),
  ADD KEY `quotations_client_id_foreign` (`client_id`),
  ADD KEY `quotations_warehouse_id_foreign` (`warehouse_id`);

--
-- Indexes for table `quotation_details`
--
ALTER TABLE `quotation_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quotation_details_sale_unit_id_foreign` (`sale_unit_id`),
  ADD KEY `quotation_details_product_id_foreign` (`product_id`),
  ADD KEY `quotation_details_product_variant_id_foreign` (`product_variant_id`),
  ADD KEY `quotation_details_quotation_id_foreign` (`quotation_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_user_id_foreign` (`user_id`),
  ADD KEY `sales_client_id_foreign` (`client_id`),
  ADD KEY `sales_warehouse_id_foreign` (`warehouse_id`);

--
-- Indexes for table `sale_details`
--
ALTER TABLE `sale_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_details_sale_id_foreign` (`sale_id`),
  ADD KEY `sale_details_product_id_foreign` (`product_id`),
  ADD KEY `sale_details_product_variant_id_foreign` (`product_variant_id`),
  ADD KEY `sale_details_sale_unit_id_foreign` (`sale_unit_id`);

--
-- Indexes for table `sale_returns`
--
ALTER TABLE `sale_returns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_returns_user_id_foreign` (`user_id`),
  ADD KEY `sale_returns_sale_id_foreign` (`sale_id`),
  ADD KEY `sale_returns_client_id_foreign` (`client_id`),
  ADD KEY `sale_returns_warehouse_id_foreign` (`warehouse_id`);

--
-- Indexes for table `sale_return_details`
--
ALTER TABLE `sale_return_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_return_details_sale_return_id_foreign` (`sale_return_id`),
  ADD KEY `sale_return_details_product_id_foreign` (`product_id`),
  ADD KEY `sale_return_details_sale_unit_id_foreign` (`sale_unit_id`),
  ADD KEY `sale_return_details_product_variant_id_foreign` (`product_variant_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `settings_currency_id_foreign` (`currency_id`),
  ADD KEY `settings_client_id_foreign` (`client_id`),
  ADD KEY `settings_warehouse_id_foreign` (`warehouse_id`);

--
-- Indexes for table `sms_messages`
--
ALTER TABLE `sms_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfers_details`
--
ALTER TABLE `transfers_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_users_id` (`role_users_id`);

--
-- Indexes for table `user_warehouse`
--
ALTER TABLE `user_warehouse`
  ADD PRIMARY KEY (`user_id`,`warehouse_id`),
  ADD KEY `user_warehouse_warehouse_id_foreign` (`warehouse_id`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `adjustments`
--
ALTER TABLE `adjustments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `adjustment_details`
--
ALTER TABLE `adjustment_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deposit_categories`
--
ALTER TABLE `deposit_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_messages`
--
ALTER TABLE `email_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payment_purchases`
--
ALTER TABLE `payment_purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_purchase_returns`
--
ALTER TABLE `payment_purchase_returns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_sales`
--
ALTER TABLE `payment_sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payment_sale_returns`
--
ALTER TABLE `payment_sale_returns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT for table `pos_settings`
--
ALTER TABLE `pos_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_warehouse`
--
ALTER TABLE `product_warehouse`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `providers`
--
ALTER TABLE `providers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_details`
--
ALTER TABLE `purchase_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_returns`
--
ALTER TABLE `purchase_returns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_return_details`
--
ALTER TABLE `purchase_return_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotations`
--
ALTER TABLE `quotations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotation_details`
--
ALTER TABLE `quotation_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `sale_details`
--
ALTER TABLE `sale_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT for table `sale_returns`
--
ALTER TABLE `sale_returns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sale_return_details`
--
ALTER TABLE `sale_return_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sms_messages`
--
ALTER TABLE `sms_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transfers_details`
--
ALTER TABLE `transfers_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payment_purchases`
--
ALTER TABLE `payment_purchases`
  ADD CONSTRAINT `payment_purchases_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`),
  ADD CONSTRAINT `payment_purchases_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`),
  ADD CONSTRAINT `payment_purchases_purchase_id_foreign` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`),
  ADD CONSTRAINT `payment_purchases_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `payment_purchase_returns`
--
ALTER TABLE `payment_purchase_returns`
  ADD CONSTRAINT `payment_purchase_returns_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`),
  ADD CONSTRAINT `payment_purchase_returns_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`),
  ADD CONSTRAINT `payment_purchase_returns_purchase_return_id_foreign` FOREIGN KEY (`purchase_return_id`) REFERENCES `purchase_returns` (`id`),
  ADD CONSTRAINT `payment_purchase_returns_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `payment_sales`
--
ALTER TABLE `payment_sales`
  ADD CONSTRAINT `payment_sales_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`),
  ADD CONSTRAINT `payment_sales_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`),
  ADD CONSTRAINT `payment_sales_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`),
  ADD CONSTRAINT `payment_sales_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `payment_sale_returns`
--
ALTER TABLE `payment_sale_returns`
  ADD CONSTRAINT `payment_sale_returns_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`),
  ADD CONSTRAINT `payment_sale_returns_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`),
  ADD CONSTRAINT `payment_sale_returns_sale_return_id_foreign` FOREIGN KEY (`sale_return_id`) REFERENCES `sale_returns` (`id`),
  ADD CONSTRAINT `payment_sale_returns_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `products_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`),
  ADD CONSTRAINT `products_unit_purchase_id_foreign` FOREIGN KEY (`unit_purchase_id`) REFERENCES `units` (`id`),
  ADD CONSTRAINT `products_unit_sale_id_foreign` FOREIGN KEY (`unit_sale_id`) REFERENCES `units` (`id`);

--
-- Constraints for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD CONSTRAINT `product_variants_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `product_warehouse`
--
ALTER TABLE `product_warehouse`
  ADD CONSTRAINT `product_warehouse_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_warehouse_product_variant_id_foreign` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`),
  ADD CONSTRAINT `product_warehouse_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`);

--
-- Constraints for table `providers`
--
ALTER TABLE `providers`
  ADD CONSTRAINT `providers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_provider_id_foreign` FOREIGN KEY (`provider_id`) REFERENCES `providers` (`id`),
  ADD CONSTRAINT `purchases_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `purchases_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`);

--
-- Constraints for table `purchase_details`
--
ALTER TABLE `purchase_details`
  ADD CONSTRAINT `purchase_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `purchase_details_product_variant_id_foreign` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`),
  ADD CONSTRAINT `purchase_details_purchase_id_foreign` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`),
  ADD CONSTRAINT `purchase_details_purchase_unit_id_foreign` FOREIGN KEY (`purchase_unit_id`) REFERENCES `units` (`id`);

--
-- Constraints for table `purchase_returns`
--
ALTER TABLE `purchase_returns`
  ADD CONSTRAINT `purchase_returns_provider_id_foreign` FOREIGN KEY (`provider_id`) REFERENCES `providers` (`id`),
  ADD CONSTRAINT `purchase_returns_purchase_id_foreign` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`),
  ADD CONSTRAINT `purchase_returns_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `purchase_returns_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`);

--
-- Constraints for table `purchase_return_details`
--
ALTER TABLE `purchase_return_details`
  ADD CONSTRAINT `purchase_return_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `purchase_return_details_product_variant_id_foreign` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`),
  ADD CONSTRAINT `purchase_return_details_purchase_return_id_foreign` FOREIGN KEY (`purchase_return_id`) REFERENCES `purchase_returns` (`id`),
  ADD CONSTRAINT `purchase_return_details_purchase_unit_id_foreign` FOREIGN KEY (`purchase_unit_id`) REFERENCES `units` (`id`);

--
-- Constraints for table `quotations`
--
ALTER TABLE `quotations`
  ADD CONSTRAINT `quotations_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `quotations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `quotations_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`);

--
-- Constraints for table `quotation_details`
--
ALTER TABLE `quotation_details`
  ADD CONSTRAINT `quotation_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `quotation_details_product_variant_id_foreign` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`),
  ADD CONSTRAINT `quotation_details_quotation_id_foreign` FOREIGN KEY (`quotation_id`) REFERENCES `quotations` (`id`),
  ADD CONSTRAINT `quotation_details_sale_unit_id_foreign` FOREIGN KEY (`sale_unit_id`) REFERENCES `units` (`id`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `sales_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `sales_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`);

--
-- Constraints for table `sale_details`
--
ALTER TABLE `sale_details`
  ADD CONSTRAINT `sale_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `sale_details_product_variant_id_foreign` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`),
  ADD CONSTRAINT `sale_details_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`),
  ADD CONSTRAINT `sale_details_sale_unit_id_foreign` FOREIGN KEY (`sale_unit_id`) REFERENCES `units` (`id`);

--
-- Constraints for table `sale_returns`
--
ALTER TABLE `sale_returns`
  ADD CONSTRAINT `sale_returns_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `sale_returns_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`),
  ADD CONSTRAINT `sale_returns_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `sale_returns_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`);

--
-- Constraints for table `sale_return_details`
--
ALTER TABLE `sale_return_details`
  ADD CONSTRAINT `sale_return_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `sale_return_details_product_variant_id_foreign` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `sale_return_details_sale_return_id_foreign` FOREIGN KEY (`sale_return_id`) REFERENCES `sale_returns` (`id`),
  ADD CONSTRAINT `sale_return_details_sale_unit_id_foreign` FOREIGN KEY (`sale_unit_id`) REFERENCES `units` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `settings`
--
ALTER TABLE `settings`
  ADD CONSTRAINT `settings_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `settings_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `settings_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_users_id` FOREIGN KEY (`role_users_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_warehouse`
--
ALTER TABLE `user_warehouse`
  ADD CONSTRAINT `user_warehouse_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_warehouse_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
