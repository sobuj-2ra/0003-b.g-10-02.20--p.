-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2019 at 05:36 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bgwd`
--

-- --------------------------------------------------------

--
-- Table structure for table `acivity_logs`
--

CREATE TABLE `acivity_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `old_data` longtext COLLATE utf8mb4_unicode_ci,
  `new_data` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `acivity_logs`
--

INSERT INTO `acivity_logs` (`id`, `name`, `action`, `employee_id`, `old_data`, `new_data`, `created_at`, `updated_at`) VALUES
(15, 'Xatta trone', 'Added new Employee', '111.111', NULL, '{\"name\":\"Monzurul Islam\",\"employee_id\":\"555.555\",\"group\":\"watcher\",\"image\":\"555.555.jpg\",\"updated_at\":\"2018-12-30 21:32:03\",\"created_at\":\"2018-12-30 21:32:03\",\"id\":14}', '2018-12-30 15:32:04', '2018-12-30 15:32:04'),
(16, 'Xatta trone', 'Updated Employee', '111.111', '{\"name\":\"Monzurul Islam\"}', '{\"name\":\"Monzurul Islamsdcasd\"}', '2018-12-30 15:34:04', '2018-12-30 15:34:04'),
(17, 'Xatta trone', 'Added', '111.111', NULL, '{\"shift\":\"A\",\"machine\":\"01\",\"item\":\"1602001\",\"added_by\":1,\"updated_at\":\"2018-12-30 22:14:50\",\"created_at\":\"2018-12-30 22:14:50\",\"id\":10}', '2018-12-30 16:14:51', '2018-12-30 16:14:51'),
(18, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"A\"}', '2018-12-31 04:41:43', '2018-12-31 04:41:43'),
(19, 'Xatta trone', 'Logged in', '111.111', NULL, NULL, '2018-12-31 05:24:08', '2018-12-31 05:24:08'),
(20, 'Packer 03', 'Logged in', '002.003', NULL, NULL, '2018-12-31 05:25:21', '2018-12-31 05:25:21'),
(21, 'Xatta trone', 'Logged in', '111.111', NULL, NULL, '2018-12-31 10:25:21', '2018-12-31 10:25:21'),
(22, 'Xatta trone', 'Logged in', '111.111', NULL, NULL, '2018-12-31 10:26:15', '2018-12-31 10:26:15'),
(23, 'Xatta trone', 'Logged in', '111.111', NULL, NULL, '2018-12-31 10:26:53', '2018-12-31 10:26:53'),
(24, 'Xatta trone', 'Logged in', '111.111', NULL, NULL, '2018-12-31 10:27:55', '2018-12-31 10:27:55'),
(25, 'Xatta trone', 'Added', '111.111', NULL, '{\"shift\":\"A\",\"machine\":\"01\",\"item\":\"1601001\",\"added_by\":1,\"updated_at\":\"2018-12-31 16:28:13\",\"created_at\":\"2018-12-31 16:28:13\",\"id\":11}', '2018-12-31 10:28:14', '2018-12-31 10:28:14'),
(26, 'Xatta trone', 'Added', '111.111', NULL, '{\"shift\":\"A\",\"machine\":\"01\",\"item\":\"1602001\",\"added_by\":1,\"updated_at\":\"2018-12-31 16:28:38\",\"created_at\":\"2018-12-31 16:28:38\",\"id\":12}', '2018-12-31 10:28:38', '2018-12-31 10:28:38'),
(27, 'Xatta trone', 'Added', '111.111', NULL, '{\"shift\":\"A\",\"machine\":\"01\",\"item\":\"1601001\",\"added_by\":1,\"updated_at\":\"2018-12-31 16:29:00\",\"created_at\":\"2018-12-31 16:29:00\",\"id\":13}', '2018-12-31 10:29:01', '2018-12-31 10:29:01'),
(28, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"10\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"A\"}', '2018-12-31 10:29:14', '2018-12-31 10:29:14'),
(29, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"A\"}', '2018-12-31 10:29:38', '2018-12-31 10:29:38'),
(30, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"8\",\"printer\":\"543465\",\"packer\":\"002.003\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"A\"}', '2018-12-31 10:30:07', '2018-12-31 10:30:07'),
(31, '', 'Generated Barcode', '', NULL, '{\"grade\":\"B\",\"total_print\":\"4\",\"printer\":\"543459\",\"packer\":\"002.003\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"A\"}', '2018-12-31 10:31:15', '2018-12-31 10:31:15'),
(32, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.003\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"A\"}', '2018-12-31 10:32:08', '2018-12-31 10:32:08'),
(33, '', 'Generated Barcode', '', NULL, '{\"grade\":\"C\",\"total_print\":\"3\",\"printer\":\"543465\",\"packer\":\"002.003\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"A\"}', '2018-12-31 10:33:22', '2018-12-31 10:33:22'),
(34, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543465\",\"packer\":\"002.003\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"A\"}', '2018-12-31 10:34:08', '2018-12-31 10:34:08'),
(35, '', 'Generated Barcode', '', NULL, '{\"grade\":\"C\",\"total_print\":\"10\",\"printer\":\"543465\",\"packer\":\"002.003\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"A\"}', '2018-12-31 10:34:27', '2018-12-31 10:34:27'),
(36, 'Xatta trone', 'Added', '111.111', NULL, '{\"shift\":\"A\",\"machine\":\"01\",\"item\":\"1603001\",\"added_by\":1,\"updated_at\":\"2018-12-31 16:36:20\",\"created_at\":\"2018-12-31 16:36:20\",\"id\":14}', '2018-12-31 10:36:21', '2018-12-31 10:36:21'),
(37, 'Xatta trone', 'Added', '111.111', NULL, '{\"shift\":\"A\",\"machine\":\"01\",\"item\":\"1601001\",\"added_by\":1,\"updated_at\":\"2018-12-31 16:36:30\",\"created_at\":\"2018-12-31 16:36:30\",\"id\":15}', '2018-12-31 10:36:31', '2018-12-31 10:36:31'),
(38, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"7\",\"printer\":\"543465\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"A\"}', '2018-12-31 10:36:55', '2018-12-31 10:36:55'),
(39, 'Xatta trone', 'Added', '111.111', NULL, '{\"shift\":\"A\",\"machine\":\"01\",\"item\":\"1601001\",\"added_by\":1,\"updated_at\":\"2018-12-31 16:38:17\",\"created_at\":\"2018-12-31 16:38:17\",\"id\":16}', '2018-12-31 10:38:17', '2018-12-31 10:38:17'),
(40, 'Xatta trone', 'Added', '111.111', NULL, '{\"shift\":\"A\",\"machine\":\"01\",\"item\":\"1602001\",\"added_by\":1,\"updated_at\":\"2018-12-31 17:25:45\",\"created_at\":\"2018-12-31 17:25:45\",\"id\":17}', '2018-12-31 11:25:46', '2018-12-31 11:25:46'),
(41, 'Xatta trone', 'Logged in', '111.111', NULL, NULL, '2019-01-03 03:28:48', '2019-01-03 03:28:48'),
(42, 'Xatta trone', 'Generated Invoice', '111.111', NULL, '{\"name\":\"Md. Xatta islam\",\"user_id\":1,\"sales_order\":\"asdf0000\",\"transport_no\":\"sadasdasd\",\"reference_no\":\"asdasd\",\"sl_no\":4,\"delivery_time\":{\"date\":\"2019-01-03 09:44:36.589473\",\"timezone_type\":3,\"timezone\":\"Asia\\/Dhaka\"},\"delivery_data\":\"{\\\"29L18AA\\\":{\\\"item_name\\\":\\\"500ml Round Amber Glass Bottles\\\",\\\"item_code\\\":1601001,\\\"batch_no\\\":\\\"29L18AA\\\",\\\"pack_size\\\":56,\\\"total_cartoon\\\":1,\\\"total_qty\\\":56,\\\"barcodes\\\":[\\\"000005181229AA01_A001001002001\\\"]},\\\"29L18AC\\\":{\\\"item_name\\\":\\\"250ml Round Amber Glass Bottles\\\",\\\"item_code\\\":1602001,\\\"batch_no\\\":\\\"29L18AC\\\",\\\"pack_size\\\":76,\\\"total_cartoon\\\":1,\\\"total_qty\\\":76,\\\"barcodes\\\":[\\\"000001181229AC02_A001003002003\\\"]}}\",\"updated_at\":\"2019-01-03 09:44:36\",\"created_at\":\"2019-01-03 09:44:36\",\"id\":4}', '2019-01-03 03:44:36', '2019-01-03 03:44:36'),
(43, 'Xatta trone', 'Added New Sales Order', '111.111', NULL, '{\"name\":\"Monzurul Islam\",\"sales_order\":\"qweqweqwe\",\"transport_no\":\"sadasdasd\",\"reference_no\":\"asdasd\"}', '2019-01-03 05:30:57', '2019-01-03 05:30:57'),
(44, 'Xatta trone', 'Added New Sales Order', '111.111', NULL, '{\"name\":\"Monzurul Islam\",\"sales_order\":\"asdf0000\",\"transport_no\":\"sadasdasd\",\"reference_no\":\"asdasd\"}', '2019-01-03 05:46:47', '2019-01-03 05:46:47'),
(45, 'Xatta trone', 'Generated Invoice', '111.111', NULL, '{\"name\":\"Md. Xatta islam\",\"user_id\":1,\"sales_order\":\"asdf0000\",\"transport_no\":\"sadasdasd\",\"reference_no\":\"asdasd\",\"sl_no\":4,\"delivery_time\":{\"date\":\"2019-01-03 12:04:14.103273\",\"timezone_type\":3,\"timezone\":\"Asia\\/Dhaka\"},\"delivery_data\":\"{\\\"29L18AA\\\":{\\\"item_name\\\":\\\"500ml Round Amber Glass Bottles\\\",\\\"item_code\\\":1601001,\\\"batch_no\\\":\\\"29L18AA\\\",\\\"pack_size\\\":56,\\\"total_cartoon\\\":1,\\\"total_qty\\\":56,\\\"barcodes\\\":[\\\"000005181229AA01_A001001002001\\\"]},\\\"29L18AC\\\":{\\\"item_name\\\":\\\"250ml Round Amber Glass Bottles\\\",\\\"item_code\\\":1602001,\\\"batch_no\\\":\\\"29L18AC\\\",\\\"pack_size\\\":76,\\\"total_cartoon\\\":1,\\\"total_qty\\\":76,\\\"barcodes\\\":[\\\"000001181229AC02_A001003002003\\\"]}}\",\"updated_at\":\"2019-01-03 12:04:14\",\"created_at\":\"2019-01-03 12:04:14\",\"id\":5}', '2019-01-03 06:04:14', '2019-01-03 06:04:14'),
(46, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"A\"}', '2019-01-03 06:12:30', '2019-01-03 06:12:30'),
(47, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"A\"}', '2019-01-03 06:20:08', '2019-01-03 06:20:08'),
(48, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"A\"}', '2019-01-03 06:20:21', '2019-01-03 06:20:21'),
(49, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"A\"}', '2019-01-03 06:20:58', '2019-01-03 06:20:58'),
(50, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"A\"}', '2019-01-03 06:22:09', '2019-01-03 06:22:09'),
(51, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"A\"}', '2019-01-03 06:24:37', '2019-01-03 06:24:37'),
(52, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"A\"}', '2019-01-03 06:30:26', '2019-01-03 06:30:26'),
(53, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"A\"}', '2019-01-03 06:33:02', '2019-01-03 06:33:02'),
(54, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"A\"}', '2019-01-03 06:36:25', '2019-01-03 06:36:25'),
(55, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"A\"}', '2019-01-03 06:36:46', '2019-01-03 06:36:46'),
(56, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"A\"}', '2019-01-03 06:37:27', '2019-01-03 06:37:27'),
(57, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"A\"}', '2019-01-03 06:37:56', '2019-01-03 06:37:56'),
(58, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"A\"}', '2019-01-03 06:43:00', '2019-01-03 06:43:00'),
(59, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"A\"}', '2019-01-03 06:44:02', '2019-01-03 06:44:02'),
(60, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"A\"}', '2019-01-03 06:44:58', '2019-01-03 06:44:58'),
(61, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"A\"}', '2019-01-03 06:45:31', '2019-01-03 06:45:31'),
(62, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"A\"}', '2019-01-03 06:48:31', '2019-01-03 06:48:31'),
(63, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"A\"}', '2019-01-03 06:49:33', '2019-01-03 06:49:33'),
(64, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"A\"}', '2019-01-03 06:57:31', '2019-01-03 06:57:31'),
(65, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"A\"}', '2019-01-03 06:58:20', '2019-01-03 06:58:20'),
(66, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"A\"}', '2019-01-03 07:00:14', '2019-01-03 07:00:14'),
(67, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"A\"}', '2019-01-03 07:02:55', '2019-01-03 07:02:55'),
(68, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"A\"}', '2019-01-03 07:03:43', '2019-01-03 07:03:43'),
(69, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"A\"}', '2019-01-03 07:06:19', '2019-01-03 07:06:19'),
(70, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"A\"}', '2019-01-03 07:07:47', '2019-01-03 07:07:47'),
(71, 'Xatta trone', 'Added', '111.111', NULL, '{\"shift\":\"A\",\"machine\":\"01\",\"item\":\"1602001\",\"added_by\":1,\"updated_at\":\"2019-01-03 13:09:03\",\"created_at\":\"2019-01-03 13:09:03\",\"id\":18}', '2019-01-03 07:09:04', '2019-01-03 07:09:04'),
(72, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"A\"}', '2019-01-03 07:09:28', '2019-01-03 07:09:28'),
(73, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"A\"}', '2019-01-03 07:11:32', '2019-01-03 07:11:32'),
(74, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"A\"}', '2019-01-03 07:12:17', '2019-01-03 07:12:17'),
(75, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"A\"}', '2019-01-03 07:14:09', '2019-01-03 07:14:09'),
(76, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"A\"}', '2019-01-03 07:15:14', '2019-01-03 07:15:14'),
(77, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"A\"}', '2019-01-03 07:16:29', '2019-01-03 07:16:29'),
(78, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"A\"}', '2019-01-03 07:17:26', '2019-01-03 07:17:26'),
(79, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"A\"}', '2019-01-03 07:18:23', '2019-01-03 07:18:23'),
(80, 'Xatta trone', 'Logged in', '111.111', NULL, NULL, '2019-01-03 07:28:25', '2019-01-03 07:28:25'),
(81, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"A\"}', '2019-01-03 08:07:50', '2019-01-03 08:07:50'),
(82, 'Xatta trone', 'Logged in', '111.111', NULL, NULL, '2019-01-03 16:19:34', '2019-01-03 16:19:34'),
(83, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"A\"}', '2019-01-03 16:20:19', '2019-01-03 16:20:19'),
(84, 'Xatta trone', 'Generated Invoice', '111.111', NULL, '{\"name\":\"Monzurul Islam\",\"user_id\":1,\"sales_order\":\"qweqweqwe\",\"transport_no\":\"sadasdasd\",\"reference_no\":\"asdasd\",\"sl_no\":5,\"delivery_time\":{\"date\":\"2019-01-03 22:27:05.176410\",\"timezone_type\":3,\"timezone\":\"Asia\\/Dhaka\"},\"delivery_data\":\"[]\",\"updated_at\":\"2019-01-03 22:27:05\",\"created_at\":\"2019-01-03 22:27:05\",\"id\":6}', '2019-01-03 16:27:05', '2019-01-03 16:27:05'),
(85, 'Xatta trone', 'Added New Sales Order', '111.111', NULL, '{\"name\":\"Monzurul Islam\",\"sales_order\":\"SBH001\",\"transport_no\":\"Ka-9999\",\"reference_no\":\"asdasd\"}', '2019-01-03 16:28:11', '2019-01-03 16:28:11'),
(86, 'Xatta trone', 'Generated Invoice', '111.111', NULL, '{\"name\":\"Monzurul Islam\",\"user_id\":1,\"sales_order\":\"SBH001\",\"transport_no\":\"Ka-9999\",\"reference_no\":\"asdasd\",\"sl_no\":1,\"delivery_time\":{\"date\":\"2019-01-03 22:31:27.984198\",\"timezone_type\":3,\"timezone\":\"Asia\\/Dhaka\"},\"delivery_data\":\"{\\\"03A19AA\\\":{\\\"item_name\\\":\\\"250ml Round Amber Glass Bottles\\\",\\\"item_code\\\":1602001,\\\"batch_no\\\":\\\"03A19AA\\\",\\\"pack_size\\\":76,\\\"total_cartoon\\\":1,\\\"total_qty\\\":76,\\\"barcodes\\\":[\\\"000016190103AA01_A001002002002\\\"]}}\",\"updated_at\":\"2019-01-03 22:31:27\",\"created_at\":\"2019-01-03 22:31:27\",\"id\":1}', '2019-01-03 16:31:28', '2019-01-03 16:31:28'),
(87, 'Xatta trone', 'Added New Sales Order', '111.111', NULL, '{\"name\":\"Monzurul Islam\",\"sales_order\":\"SBH001\",\"transport_no\":\"Ka-9999\",\"reference_no\":\"asdasd\"}', '2019-01-03 16:33:16', '2019-01-03 16:33:16'),
(88, 'Xatta trone', 'Generated Invoice', '111.111', NULL, '{\"name\":\"Monzurul Islam\",\"user_id\":1,\"sales_order\":\"SBH001\",\"transport_no\":\"Ka-9999\",\"reference_no\":\"asdasd\",\"sl_no\":1,\"delivery_time\":{\"date\":\"2019-01-03 22:36:42.558190\",\"timezone_type\":3,\"timezone\":\"Asia\\/Dhaka\"},\"delivery_data\":\"{\\\"29L18AA\\\":{\\\"item_name\\\":\\\"500ml Round Amber Glass Bottles\\\",\\\"item_code\\\":1601001,\\\"batch_no\\\":\\\"29L18AA\\\",\\\"pack_size\\\":56,\\\"total_cartoon\\\":1,\\\"total_qty\\\":56,\\\"barcodes\\\":[\\\"000001181229AA01_A001001002001\\\"]}}\",\"updated_at\":\"2019-01-03 22:36:42\",\"created_at\":\"2019-01-03 22:36:42\",\"id\":1}', '2019-01-03 16:36:42', '2019-01-03 16:36:42'),
(89, 'Xatta trone', 'Generated Invoice', '111.111', NULL, '{\"name\":\"Monzurul Islam\",\"user_id\":1,\"sales_order\":\"SBH001\",\"transport_no\":\"Ka-9999\",\"reference_no\":\"asdasd\",\"sl_no\":1,\"delivery_time\":{\"date\":\"2019-01-03 22:48:09.959237\",\"timezone_type\":3,\"timezone\":\"Asia\\/Dhaka\"},\"delivery_data\":\"{\\\"29L18AA\\\":{\\\"item_name\\\":\\\"500ml Round Amber Glass Bottles\\\",\\\"item_code\\\":1601001,\\\"batch_no\\\":\\\"29L18AA\\\",\\\"pack_size\\\":56,\\\"total_cartoon\\\":1,\\\"total_qty\\\":56,\\\"barcodes\\\":[\\\"000001181229AA01_A001001002001\\\"]}}\",\"updated_at\":\"2019-01-03 22:48:09\",\"created_at\":\"2019-01-03 22:48:09\",\"id\":2}', '2019-01-03 16:48:10', '2019-01-03 16:48:10'),
(90, 'Xatta trone', 'Logged in', '111.111', NULL, NULL, '2019-01-11 08:03:22', '2019-01-11 08:03:22'),
(91, 'Xatta trone', 'Updated DailyShift', '111.111', '[]', '[]', '2019-01-11 08:52:09', '2019-01-11 08:52:09'),
(92, 'Xatta trone', 'Updated DailyShift', '111.111', '[]', '[]', '2019-01-11 08:52:32', '2019-01-11 08:52:32'),
(93, 'Xatta trone', 'Updated DailyShift', '111.111', '[]', '[]', '2019-01-11 08:54:24', '2019-01-11 08:54:24'),
(94, 'Xatta trone', 'Updated DailyShift', '111.111', '[]', '[]', '2019-01-11 08:55:13', '2019-01-11 08:55:13'),
(95, 'Xatta trone', 'Updated DailyShift', '111.111', '[]', '[]', '2019-01-11 08:55:23', '2019-01-11 08:55:23'),
(96, 'Xatta trone', 'Updated DailyShift', '111.111', '[]', '[]', '2019-01-11 09:03:44', '2019-01-11 09:03:44'),
(97, 'Xatta trone', 'Updated DailyShift', '111.111', '[]', '[]', '2019-01-11 09:03:58', '2019-01-11 09:03:58'),
(98, 'Xatta trone', 'Updated DailyShift', '111.111', '{\"item\":\"1602001\"}', '{\"item\":\"1601001\"}', '2019-01-11 09:04:59', '2019-01-11 09:04:59'),
(99, 'Xatta trone', 'Updated DailyShift', '111.111', '{\"item\":\"1601001\"}', '{\"item\":\"1602001\"}', '2019-01-11 09:05:16', '2019-01-11 09:05:16'),
(100, 'Xatta trone', 'Updated DailyShift', '111.111', '[]', '[]', '2019-01-11 09:25:01', '2019-01-11 09:25:01'),
(101, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"A\"}', '2019-01-11 09:56:10', '2019-01-11 09:56:10'),
(102, 'Xatta trone', 'Logged in', '111.111', NULL, NULL, '2019-01-13 15:48:54', '2019-01-13 15:48:54'),
(103, 'Xatta trone', 'Added New Sales Order', '111.111', NULL, '{\"name\":\"sadasd\",\"sales_order\":\"123456\",\"transport_no\":\"sdas\",\"reference_no\":\"sdasd\"}', '2019-01-13 16:27:16', '2019-01-13 16:27:16'),
(104, 'Xatta trone', 'Logged in', '111.111', NULL, NULL, '2019-01-16 14:06:22', '2019-01-16 14:06:22'),
(105, 'Xatta trone', 'Added', '111.111', NULL, '{\"shift\":\"A\",\"machine\":\"01\",\"item\":\"1601001\",\"added_by\":1,\"updated_at\":\"2019-01-16 20:54:35\",\"created_at\":\"2019-01-16 20:54:35\",\"id\":19}', '2019-01-16 14:54:35', '2019-01-16 14:54:35'),
(106, 'Xatta trone', 'Logged in', '111.111', NULL, NULL, '2019-02-01 16:46:54', '2019-02-01 16:46:54'),
(107, 'Xatta trone', 'Added', '111.111', NULL, '{\"shift\":\"B\",\"machine\":\"01\",\"item\":\"1602001\",\"added_by\":1,\"updated_at\":\"2019-02-01 22:52:17\",\"created_at\":\"2019-02-01 22:52:17\",\"id\":20}', '2019-02-01 16:52:17', '2019-02-01 16:52:17'),
(108, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-01 17:53:11', '2019-02-01 17:53:11'),
(109, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-01 17:57:14', '2019-02-01 17:57:14'),
(110, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-01 17:57:37', '2019-02-01 17:57:37'),
(111, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-01 18:01:42', '2019-02-01 18:01:42'),
(112, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-01 18:02:54', '2019-02-01 18:02:54'),
(113, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-01 18:06:28', '2019-02-01 18:06:28'),
(114, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-01 18:06:57', '2019-02-01 18:06:57'),
(115, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-01 18:11:44', '2019-02-01 18:11:44'),
(116, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-01 18:33:27', '2019-02-01 18:33:27'),
(117, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-01 18:33:28', '2019-02-01 18:33:28'),
(118, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-01 18:35:23', '2019-02-01 18:35:23'),
(119, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-01 18:35:23', '2019-02-01 18:35:23'),
(120, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-01 18:51:55', '2019-02-01 18:51:55'),
(121, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-01 18:53:19', '2019-02-01 18:53:19'),
(122, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-01 18:54:46', '2019-02-01 18:54:46'),
(123, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-01 18:57:06', '2019-02-01 18:57:06'),
(124, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-01 19:01:22', '2019-02-01 19:01:22'),
(125, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-01 19:01:47', '2019-02-01 19:01:47'),
(126, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-01 19:04:08', '2019-02-01 19:04:08'),
(127, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-01 19:05:25', '2019-02-01 19:05:25'),
(128, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-01 19:07:04', '2019-02-01 19:07:04'),
(129, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-01 19:07:38', '2019-02-01 19:07:38'),
(130, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-01 19:08:39', '2019-02-01 19:08:39'),
(131, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-01 19:10:04', '2019-02-01 19:10:04'),
(132, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-01 19:14:04', '2019-02-01 19:14:04'),
(133, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-01 19:15:36', '2019-02-01 19:15:36'),
(134, '', 'Generated Barcode', '', NULL, '{\"grade\":\"B\",\"total_print\":\"4\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-01 19:17:13', '2019-02-01 19:17:13'),
(135, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"4\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-01 19:19:21', '2019-02-01 19:19:21'),
(136, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-01 19:22:21', '2019-02-01 19:22:21'),
(137, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-01 19:23:04', '2019-02-01 19:23:04'),
(138, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-01 19:25:09', '2019-02-01 19:25:09'),
(139, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-01 19:25:51', '2019-02-01 19:25:51'),
(140, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-01 19:26:33', '2019-02-01 19:26:33'),
(141, '', 'Generated Barcode', '', NULL, '{\"grade\":\"B\",\"total_print\":\"2\",\"printer\":\"543465\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-01 19:26:56', '2019-02-01 19:26:56'),
(142, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"4\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-01 19:30:09', '2019-02-01 19:30:09'),
(143, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"4\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-01 19:30:10', '2019-02-01 19:30:10'),
(144, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-01 19:37:45', '2019-02-01 19:37:45'),
(145, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-01 19:39:07', '2019-02-01 19:39:07'),
(146, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-01 19:50:41', '2019-02-01 19:50:41'),
(147, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"4\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-01 19:51:15', '2019-02-01 19:51:15'),
(148, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-01 19:52:01', '2019-02-01 19:52:01'),
(149, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"4\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-01 19:53:06', '2019-02-01 19:53:06'),
(150, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-01 19:55:13', '2019-02-01 19:55:13'),
(151, '', 'Generated Barcode', '', NULL, '{\"grade\":\"B\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-01 19:56:57', '2019-02-01 19:56:57'),
(152, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"4\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-01 19:57:46', '2019-02-01 19:57:46'),
(153, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"4\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-01 19:59:30', '2019-02-01 19:59:30'),
(154, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-01 20:03:32', '2019-02-01 20:03:32'),
(155, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-01 20:05:34', '2019-02-01 20:05:34'),
(156, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-01 20:07:41', '2019-02-01 20:07:41'),
(157, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"4\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-01 20:10:19', '2019-02-01 20:10:19'),
(158, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-01 20:11:20', '2019-02-01 20:11:20'),
(159, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-01 20:12:30', '2019-02-01 20:12:30'),
(160, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-01 20:13:20', '2019-02-01 20:13:20'),
(161, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-01 20:15:33', '2019-02-01 20:15:33'),
(162, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-01 20:17:57', '2019-02-01 20:17:57'),
(163, '', 'Generated Barcode', '', NULL, '{\"grade\":\"B\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-01 20:19:33', '2019-02-01 20:19:33'),
(164, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-01 20:22:22', '2019-02-01 20:22:22'),
(165, '', 'Generated Barcode', '', NULL, '{\"grade\":\"B\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-01 20:25:07', '2019-02-01 20:25:07'),
(166, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-01 20:26:27', '2019-02-01 20:26:27'),
(167, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-01 20:27:07', '2019-02-01 20:27:07'),
(168, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-01 20:30:28', '2019-02-01 20:30:28'),
(169, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-03\"}', '2019-02-02 18:14:05', '2019-02-02 18:14:05'),
(170, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-03\"}', '2019-02-02 18:14:59', '2019-02-02 18:14:59'),
(171, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-03\"}', '2019-02-02 18:16:39', '2019-02-02 18:16:39'),
(172, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-03\"}', '2019-02-02 18:17:23', '2019-02-02 18:17:23'),
(173, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 18:22:52', '2019-02-02 18:22:52'),
(174, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 18:26:38', '2019-02-02 18:26:38'),
(175, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 18:27:10', '2019-02-02 18:27:10'),
(176, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 18:27:46', '2019-02-02 18:27:46'),
(177, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 18:30:21', '2019-02-02 18:30:21'),
(178, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 18:31:00', '2019-02-02 18:31:00'),
(179, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 18:34:46', '2019-02-02 18:34:46'),
(180, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 18:35:43', '2019-02-02 18:35:43'),
(181, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 18:36:25', '2019-02-02 18:36:25'),
(182, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 18:37:31', '2019-02-02 18:37:31'),
(183, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 18:41:35', '2019-02-02 18:41:35'),
(184, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 18:43:45', '2019-02-02 18:43:45'),
(185, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 18:48:22', '2019-02-02 18:48:22'),
(186, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 18:50:05', '2019-02-02 18:50:05'),
(187, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"4\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 18:58:26', '2019-02-02 18:58:26'),
(188, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 18:59:16', '2019-02-02 18:59:16'),
(189, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"5\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 19:03:22', '2019-02-02 19:03:22'),
(190, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 19:05:21', '2019-02-02 19:05:21'),
(191, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 19:05:39', '2019-02-02 19:05:39'),
(192, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 19:07:55', '2019-02-02 19:07:55'),
(193, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 19:11:08', '2019-02-02 19:11:08'),
(194, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 19:16:20', '2019-02-02 19:16:20'),
(195, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 19:18:23', '2019-02-02 19:18:23'),
(196, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 19:20:03', '2019-02-02 19:20:03'),
(197, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 19:21:54', '2019-02-02 19:21:54'),
(198, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 19:25:38', '2019-02-02 19:25:38'),
(199, '', 'Generated Barcode', '', NULL, '{\"grade\":\"B\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 19:26:02', '2019-02-02 19:26:02'),
(200, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 19:27:37', '2019-02-02 19:27:37'),
(201, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 19:28:21', '2019-02-02 19:28:21'),
(202, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"4\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 19:28:42', '2019-02-02 19:28:42'),
(203, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 19:34:59', '2019-02-02 19:34:59'),
(204, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 19:38:44', '2019-02-02 19:38:44'),
(205, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"5\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 19:42:41', '2019-02-02 19:42:41'),
(206, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"5\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 19:44:48', '2019-02-02 19:44:48'),
(207, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 19:45:23', '2019-02-02 19:45:23'),
(208, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 19:46:45', '2019-02-02 19:46:45'),
(209, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 19:49:34', '2019-02-02 19:49:34');
INSERT INTO `acivity_logs` (`id`, `name`, `action`, `employee_id`, `old_data`, `new_data`, `created_at`, `updated_at`) VALUES
(210, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 19:50:36', '2019-02-02 19:50:36'),
(211, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 19:52:38', '2019-02-02 19:52:38'),
(212, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 19:54:01', '2019-02-02 19:54:01'),
(213, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 19:54:24', '2019-02-02 19:54:24'),
(214, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 19:55:22', '2019-02-02 19:55:22'),
(215, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 19:55:59', '2019-02-02 19:55:59'),
(216, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 19:56:21', '2019-02-02 19:56:21'),
(217, '', 'Generated Barcode', '', NULL, '{\"grade\":\"B\",\"total_print\":\"4\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 19:57:01', '2019-02-02 19:57:01'),
(218, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 19:57:51', '2019-02-02 19:57:51'),
(219, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 19:58:19', '2019-02-02 19:58:19'),
(220, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"10\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 19:58:50', '2019-02-02 19:58:50'),
(221, '', 'Generated Barcode', '', NULL, '{\"grade\":\"B\",\"total_print\":\"5\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 19:59:48', '2019-02-02 19:59:48'),
(222, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 20:00:47', '2019-02-02 20:00:47'),
(223, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 20:01:47', '2019-02-02 20:01:47'),
(224, '', 'Generated Barcode', '', NULL, '{\"grade\":\"B\",\"total_print\":\"4\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 20:02:23', '2019-02-02 20:02:23'),
(225, '', 'Generated Barcode', '', NULL, '{\"grade\":\"B\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 20:03:53', '2019-02-02 20:03:53'),
(226, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 20:04:27', '2019-02-02 20:04:27'),
(227, '', 'Generated Barcode', '', NULL, '{\"grade\":\"B\",\"total_print\":\"4\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 20:06:31', '2019-02-02 20:06:31'),
(228, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 20:08:48', '2019-02-02 20:08:48'),
(229, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"5\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 20:11:10', '2019-02-02 20:11:10'),
(230, '', 'Generated Barcode', '', NULL, '{\"grade\":\"B\",\"total_print\":\"7\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 20:11:30', '2019-02-02 20:11:30'),
(231, '', 'Generated Barcode', '', NULL, '{\"grade\":\"B\",\"total_print\":\"7\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 20:11:59', '2019-02-02 20:11:59'),
(232, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"5\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 20:12:22', '2019-02-02 20:12:22'),
(233, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 20:14:18', '2019-02-02 20:14:18'),
(234, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-01\"}', '2019-02-02 20:14:32', '2019-02-02 20:14:32'),
(235, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"5\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-02\"}', '2019-02-02 20:15:19', '2019-02-02 20:15:19'),
(236, '', 'Generated Barcode', '', NULL, '{\"grade\":\"B\",\"total_print\":\"7\",\"printer\":\"543459\",\"packer\":\"002.001\",\"watcher\":\"001.001\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-12\"}', '2019-02-02 20:15:53', '2019-02-02 20:15:53'),
(237, 'Xatta trone', 'Logged in', '111.111', NULL, NULL, '2019-02-04 03:32:54', '2019-02-04 03:32:54'),
(238, 'Xatta trone', 'Added', '111.111', NULL, '{\"shift\":\"B\",\"machine\":\"01\",\"item\":\"1602001\",\"production_date\":{\"date\":\"2019-02-05 00:00:00.000000\",\"timezone_type\":3,\"timezone\":\"Asia\\/Dhaka\"},\"added_by\":1,\"updated_at\":\"2019-02-04 09:39:00\",\"created_at\":\"2019-02-04 09:39:00\",\"id\":21}', '2019-02-04 03:39:00', '2019-02-04 03:39:00'),
(239, '', 'Generated Barcode', '', NULL, '{\"grade\":\"B\",\"total_print\":\"20\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-02-04 03:42:03', '2019-02-04 03:42:03'),
(240, '', 'Reprinted Barcode', '', NULL, '{\"barcode\":\"000015190205BB01_A001002002002\",\"printer\":\"543459\",\"machine\":\"01\"}', '2019-02-04 04:12:06', '2019-02-04 04:12:06'),
(241, '', 'Reprinted Barcode', '', NULL, '{\"barcode\":\"000014190205BB01_A001002002002\",\"printer\":\"543459\",\"machine\":\"01\"}', '2019-02-04 04:13:32', '2019-02-04 04:13:32'),
(242, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"5\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-02-04 04:17:14', '2019-02-04 04:17:14'),
(243, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"5\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-02-05 04:13:11', '2019-02-05 04:13:11'),
(244, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"5\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-02-05 04:13:23', '2019-02-05 04:13:23'),
(245, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"5\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-02-05 04:14:29', '2019-02-05 04:14:29'),
(246, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"5\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-02-05 04:15:02', '2019-02-05 04:15:02'),
(247, '', 'Generated Barcode', '', NULL, '{\"grade\":\"B\",\"total_print\":\"5\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-02-05 04:15:40', '2019-02-05 04:15:40'),
(248, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"5\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-02-05 04:17:09', '2019-02-05 04:17:09'),
(249, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"5\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-02-05 04:17:29', '2019-02-05 04:17:29'),
(250, '', 'Generated Barcode', '', NULL, '{\"grade\":\"B\",\"total_print\":\"5\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-02-05 04:18:11', '2019-02-05 04:18:11'),
(251, '', 'Generated Barcode', '', NULL, '{\"grade\":\"B\",\"total_print\":\"5\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-02-05 04:18:36', '2019-02-05 04:18:36'),
(252, '', 'Generated Barcode', '', NULL, '{\"grade\":\"B\",\"total_print\":\"5\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-02-05 04:18:56', '2019-02-05 04:18:56'),
(253, '', 'Generated Barcode', '', NULL, '{\"grade\":\"B\",\"total_print\":\"5\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-02-05 04:23:04', '2019-02-05 04:23:04'),
(254, '', 'Generated Barcode', '', NULL, '{\"grade\":\"B\",\"total_print\":\"5\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-02-05 04:27:04', '2019-02-05 04:27:04'),
(255, '', 'Generated Barcode', '', NULL, '{\"grade\":\"B\",\"total_print\":\"5\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-02-05 04:28:00', '2019-02-05 04:28:00'),
(256, '', 'Generated Barcode', '', NULL, '{\"grade\":\"B\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-02-05 04:28:30', '2019-02-05 04:28:30'),
(257, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"6\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-02-05 04:28:58', '2019-02-05 04:28:58'),
(258, '', 'Reprinted Barcode', '', NULL, '{\"barcode\":\"000039190205BA01_A001002002002\",\"printer\":\"543465\",\"machine\":\"01\"}', '2019-02-05 04:30:39', '2019-02-05 04:30:39'),
(259, '', 'Reprinted Barcode', '', NULL, '{\"barcode\":\"000039190205BA01_A001002002002\",\"printer\":\"543465\",\"machine\":\"01\"}', '2019-02-05 04:31:02', '2019-02-05 04:31:02'),
(260, '', 'Generated Barcode', '', NULL, '{\"grade\":\"B\",\"total_print\":\"5\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-02-05 04:41:39', '2019-02-05 04:41:39'),
(261, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-02-05 04:42:16', '2019-02-05 04:42:16'),
(262, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-02-05 05:07:28', '2019-02-05 05:07:28'),
(263, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-02-05 05:07:56', '2019-02-05 05:07:56'),
(264, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"5\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-02-05 05:22:32', '2019-02-05 05:22:32'),
(265, '', 'Generated Barcode', '', NULL, '{\"grade\":\"B\",\"total_print\":\"5\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 05:10:08', '2019-03-06 05:10:08'),
(266, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"4\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 05:20:30', '2019-03-06 05:20:30'),
(267, '', 'Generated Barcode', '', NULL, '{\"grade\":\"B\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 05:29:52', '2019-03-06 05:29:52'),
(268, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 05:36:13', '2019-03-06 05:36:13'),
(269, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"4\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 05:42:03', '2019-03-06 05:42:03'),
(270, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 05:44:14', '2019-03-06 05:44:14'),
(271, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 05:47:17', '2019-03-06 05:47:17'),
(272, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 05:48:23', '2019-03-06 05:48:23'),
(273, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 05:48:37', '2019-03-06 05:48:37'),
(274, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 06:31:01', '2019-03-06 06:31:01'),
(275, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 06:32:18', '2019-03-06 06:32:18'),
(276, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 06:42:20', '2019-03-06 06:42:20'),
(277, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 06:44:59', '2019-03-06 06:44:59'),
(278, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 06:54:11', '2019-03-06 06:54:11'),
(279, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 06:58:26', '2019-03-06 06:58:26'),
(280, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 06:59:24', '2019-03-06 06:59:24'),
(281, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 07:00:47', '2019-03-06 07:00:47'),
(282, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 07:05:55', '2019-03-06 07:05:55'),
(283, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 07:06:47', '2019-03-06 07:06:47'),
(284, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 07:13:09', '2019-03-06 07:13:09'),
(285, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 07:15:26', '2019-03-06 07:15:26'),
(286, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 07:21:43', '2019-03-06 07:21:43'),
(287, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 07:33:20', '2019-03-06 07:33:20'),
(288, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 07:34:56', '2019-03-06 07:34:56'),
(289, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 07:35:46', '2019-03-06 07:35:46'),
(290, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 07:39:45', '2019-03-06 07:39:45'),
(291, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 07:41:53', '2019-03-06 07:41:53'),
(292, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 08:23:02', '2019-03-06 08:23:02'),
(293, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 08:25:33', '2019-03-06 08:25:33'),
(294, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 08:27:49', '2019-03-06 08:27:49'),
(295, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 08:28:26', '2019-03-06 08:28:26'),
(296, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 08:29:51', '2019-03-06 08:29:51'),
(297, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 08:33:17', '2019-03-06 08:33:17'),
(298, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 08:55:55', '2019-03-06 08:55:55'),
(299, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 08:59:45', '2019-03-06 08:59:45'),
(300, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 09:21:20', '2019-03-06 09:21:20'),
(301, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 09:22:13', '2019-03-06 09:22:13'),
(302, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 09:22:53', '2019-03-06 09:22:53'),
(303, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 09:50:54', '2019-03-06 09:50:54'),
(304, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 09:54:10', '2019-03-06 09:54:10'),
(305, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 09:57:36', '2019-03-06 09:57:36'),
(306, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 10:04:09', '2019-03-06 10:04:09'),
(307, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 10:08:05', '2019-03-06 10:08:05'),
(308, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 10:09:47', '2019-03-06 10:09:47'),
(309, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 10:20:21', '2019-03-06 10:20:21'),
(310, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 10:23:20', '2019-03-06 10:23:20'),
(311, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 10:25:05', '2019-03-06 10:25:05'),
(312, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 10:26:28', '2019-03-06 10:26:28'),
(313, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 10:26:46', '2019-03-06 10:26:46'),
(314, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 10:27:04', '2019-03-06 10:27:04'),
(315, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 10:38:37', '2019-03-06 10:38:37'),
(316, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 10:39:18', '2019-03-06 10:39:18'),
(317, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 10:39:49', '2019-03-06 10:39:49'),
(318, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 10:43:26', '2019-03-06 10:43:26'),
(319, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 10:43:46', '2019-03-06 10:43:46'),
(320, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 10:47:22', '2019-03-06 10:47:22'),
(321, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 10:48:37', '2019-03-06 10:48:37'),
(322, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 10:49:03', '2019-03-06 10:49:03'),
(323, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 10:52:25', '2019-03-06 10:52:25'),
(324, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 10:52:54', '2019-03-06 10:52:54'),
(325, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-06 10:53:45', '2019-03-06 10:53:45'),
(326, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 04:23:03', '2019-03-07 04:23:03'),
(327, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 04:24:15', '2019-03-07 04:24:15'),
(328, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 04:25:05', '2019-03-07 04:25:05'),
(329, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 04:26:44', '2019-03-07 04:26:44'),
(330, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 04:28:19', '2019-03-07 04:28:19'),
(331, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 04:29:15', '2019-03-07 04:29:15'),
(332, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 04:30:27', '2019-03-07 04:30:27'),
(333, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 04:30:58', '2019-03-07 04:30:58'),
(334, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 04:32:09', '2019-03-07 04:32:09'),
(335, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 04:32:48', '2019-03-07 04:32:48'),
(336, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 04:39:13', '2019-03-07 04:39:13'),
(337, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 04:41:43', '2019-03-07 04:41:43'),
(338, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 04:42:40', '2019-03-07 04:42:40'),
(339, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 04:43:00', '2019-03-07 04:43:00'),
(340, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 04:47:20', '2019-03-07 04:47:20'),
(341, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 04:48:01', '2019-03-07 04:48:01'),
(342, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 04:48:48', '2019-03-07 04:48:48'),
(343, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 04:50:44', '2019-03-07 04:50:44'),
(344, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 04:51:52', '2019-03-07 04:51:52'),
(345, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 04:53:14', '2019-03-07 04:53:14'),
(346, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 04:55:12', '2019-03-07 04:55:12'),
(347, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 04:55:34', '2019-03-07 04:55:34'),
(348, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 04:57:19', '2019-03-07 04:57:19'),
(349, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 04:57:50', '2019-03-07 04:57:50'),
(350, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 04:58:12', '2019-03-07 04:58:12'),
(351, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 04:59:48', '2019-03-07 04:59:48'),
(352, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 05:02:39', '2019-03-07 05:02:39'),
(353, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 05:03:27', '2019-03-07 05:03:27'),
(354, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 05:03:50', '2019-03-07 05:03:50'),
(355, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 05:06:27', '2019-03-07 05:06:27'),
(356, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 05:08:07', '2019-03-07 05:08:07'),
(357, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 05:08:40', '2019-03-07 05:08:40'),
(358, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 05:08:57', '2019-03-07 05:08:57'),
(359, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 05:09:26', '2019-03-07 05:09:26'),
(360, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 05:12:04', '2019-03-07 05:12:04'),
(361, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 05:13:36', '2019-03-07 05:13:36'),
(362, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 05:15:19', '2019-03-07 05:15:19'),
(363, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 05:16:34', '2019-03-07 05:16:34'),
(364, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 05:19:41', '2019-03-07 05:19:41'),
(365, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 05:20:26', '2019-03-07 05:20:26'),
(366, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 05:20:50', '2019-03-07 05:20:50'),
(367, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 05:25:17', '2019-03-07 05:25:17'),
(368, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 05:32:10', '2019-03-07 05:32:10'),
(369, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 05:32:41', '2019-03-07 05:32:41'),
(370, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 05:33:16', '2019-03-07 05:33:16'),
(371, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 05:34:53', '2019-03-07 05:34:53'),
(372, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 05:40:18', '2019-03-07 05:40:18'),
(373, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 05:41:29', '2019-03-07 05:41:29'),
(374, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 05:41:59', '2019-03-07 05:41:59'),
(375, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 05:43:16', '2019-03-07 05:43:16'),
(376, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 05:44:09', '2019-03-07 05:44:09'),
(377, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 05:45:18', '2019-03-07 05:45:18'),
(378, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"4\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 05:45:55', '2019-03-07 05:45:55'),
(379, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 05:46:26', '2019-03-07 05:46:26'),
(380, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 05:48:20', '2019-03-07 05:48:20'),
(381, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 05:50:03', '2019-03-07 05:50:03'),
(382, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 05:54:42', '2019-03-07 05:54:42'),
(383, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 06:02:30', '2019-03-07 06:02:30'),
(384, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 06:11:47', '2019-03-07 06:11:47'),
(385, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 06:12:16', '2019-03-07 06:12:16'),
(386, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 06:13:10', '2019-03-07 06:13:10'),
(387, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 06:14:12', '2019-03-07 06:14:12'),
(388, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 06:24:46', '2019-03-07 06:24:46'),
(389, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 06:27:05', '2019-03-07 06:27:05'),
(390, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 06:27:57', '2019-03-07 06:27:57'),
(391, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 06:32:37', '2019-03-07 06:32:37'),
(392, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 06:33:09', '2019-03-07 06:33:09'),
(393, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 06:35:49', '2019-03-07 06:35:49'),
(394, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 06:36:54', '2019-03-07 06:36:54'),
(395, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 06:42:23', '2019-03-07 06:42:23');
INSERT INTO `acivity_logs` (`id`, `name`, `action`, `employee_id`, `old_data`, `new_data`, `created_at`, `updated_at`) VALUES
(396, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 06:42:56', '2019-03-07 06:42:56'),
(397, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 06:43:47', '2019-03-07 06:43:47'),
(398, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 06:52:45', '2019-03-07 06:52:45'),
(399, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 06:53:08', '2019-03-07 06:53:08'),
(400, '', 'Generated Barcode', '', NULL, '{\"grade\":\"C\",\"total_print\":\"7\",\"printer\":\"543465\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-04\"}', '2019-03-07 06:56:15', '2019-03-07 06:56:15'),
(401, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 07:00:14', '2019-03-07 07:00:14'),
(402, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"5\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 07:03:14', '2019-03-07 07:03:14'),
(403, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"8\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 07:03:49', '2019-03-07 07:03:49'),
(404, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"5\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 07:04:26', '2019-03-07 07:04:26'),
(405, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"5\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 07:05:43', '2019-03-07 07:05:43'),
(406, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"5\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 07:06:54', '2019-03-07 07:06:54'),
(407, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"6\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 07:07:51', '2019-03-07 07:07:51'),
(408, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"4\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 07:09:31', '2019-03-07 07:09:31'),
(409, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 07:10:10', '2019-03-07 07:10:10'),
(410, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 07:10:54', '2019-03-07 07:10:54'),
(411, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 08:02:23', '2019-03-07 08:02:23'),
(412, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"4\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 08:03:51', '2019-03-07 08:03:51'),
(413, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"6\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 08:07:11', '2019-03-07 08:07:11'),
(414, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"6\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 08:08:48', '2019-03-07 08:08:48'),
(415, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"5\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 08:10:44', '2019-03-07 08:10:44'),
(416, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"5\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 08:11:13', '2019-03-07 08:11:13'),
(417, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"5\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 08:12:08', '2019-03-07 08:12:08'),
(418, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 08:15:40', '2019-03-07 08:15:40'),
(419, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"6\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 08:16:14', '2019-03-07 08:16:14'),
(420, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"6\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 08:16:57', '2019-03-07 08:16:57'),
(421, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"6\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 08:18:34', '2019-03-07 08:18:34'),
(422, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"6\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 08:18:56', '2019-03-07 08:18:56'),
(423, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"4\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 08:20:52', '2019-03-07 08:20:52'),
(424, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 08:22:56', '2019-03-07 08:22:56'),
(425, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 08:23:41', '2019-03-07 08:23:41'),
(426, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"4\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 08:24:43', '2019-03-07 08:24:43'),
(427, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 08:26:10', '2019-03-07 08:26:10'),
(428, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 08:29:11', '2019-03-07 08:29:11'),
(429, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"4\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 08:30:21', '2019-03-07 08:30:21'),
(430, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"4\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 08:32:44', '2019-03-07 08:32:44'),
(431, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 08:34:28', '2019-03-07 08:34:28'),
(432, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 08:35:33', '2019-03-07 08:35:33'),
(433, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"20\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 08:35:54', '2019-03-07 08:35:54'),
(434, '', 'Generated Barcode', '', NULL, '{\"grade\":\"B\",\"total_print\":\"2\",\"printer\":\"543465\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 08:37:56', '2019-03-07 08:37:56'),
(435, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 08:38:58', '2019-03-07 08:38:58'),
(436, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 08:40:10', '2019-03-07 08:40:10'),
(437, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 08:41:10', '2019-03-07 08:41:10'),
(438, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 08:42:10', '2019-03-07 08:42:10'),
(439, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"4\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 08:47:43', '2019-03-07 08:47:43'),
(440, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"6\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 08:48:58', '2019-03-07 08:48:58'),
(441, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 08:50:21', '2019-03-07 08:50:21'),
(442, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 08:51:57', '2019-03-07 08:51:57'),
(443, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 08:52:19', '2019-03-07 08:52:19'),
(444, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 09:12:22', '2019-03-07 09:12:22'),
(445, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 09:15:52', '2019-03-07 09:15:52'),
(446, 'Xatta trone', 'Logged in', '111.111', NULL, NULL, '2019-03-07 09:16:33', '2019-03-07 09:16:33'),
(447, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 09:27:32', '2019-03-07 09:27:32'),
(448, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 09:28:46', '2019-03-07 09:28:46'),
(449, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 09:29:14', '2019-03-07 09:29:14'),
(450, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 09:29:50', '2019-03-07 09:29:50'),
(451, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 09:30:17', '2019-03-07 09:30:17'),
(452, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 09:31:23', '2019-03-07 09:31:23'),
(453, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 09:33:54', '2019-03-07 09:33:54'),
(454, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 09:41:00', '2019-03-07 09:41:00'),
(455, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"4\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 09:43:10', '2019-03-07 09:43:10'),
(456, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 09:45:50', '2019-03-07 09:45:50'),
(457, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"20\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 09:48:42', '2019-03-07 09:48:42'),
(458, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"20\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 09:52:09', '2019-03-07 09:52:09'),
(459, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"20\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 09:53:19', '2019-03-07 09:53:19'),
(460, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"5\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 09:54:31', '2019-03-07 09:54:31'),
(461, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"5\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 09:54:52', '2019-03-07 09:54:52'),
(462, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 09:55:30', '2019-03-07 09:55:30'),
(463, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 09:56:22', '2019-03-07 09:56:22'),
(464, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 09:57:18', '2019-03-07 09:57:18'),
(465, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 09:57:32', '2019-03-07 09:57:32'),
(466, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 09:59:13', '2019-03-07 09:59:13'),
(467, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 10:09:50', '2019-03-07 10:09:50'),
(468, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"4\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 10:10:17', '2019-03-07 10:10:17'),
(469, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 10:18:34', '2019-03-07 10:18:34'),
(470, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"4\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 10:48:44', '2019-03-07 10:48:44'),
(471, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 10:52:54', '2019-03-07 10:52:54'),
(472, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 10:53:27', '2019-03-07 10:53:27'),
(473, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 10:54:46', '2019-03-07 10:54:46'),
(474, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 10:55:31', '2019-03-07 10:55:31'),
(475, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 10:55:59', '2019-03-07 10:55:59'),
(476, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 10:57:15', '2019-03-07 10:57:15'),
(477, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"4\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 10:59:03', '2019-03-07 10:59:03'),
(478, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"4\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 11:00:34', '2019-03-07 11:00:34'),
(479, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 11:01:22', '2019-03-07 11:01:22'),
(480, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"4\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 11:04:43', '2019-03-07 11:04:43'),
(481, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"4\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 11:05:38', '2019-03-07 11:05:38'),
(482, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543465\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 11:06:11', '2019-03-07 11:06:11'),
(483, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 11:07:47', '2019-03-07 11:07:47'),
(484, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 11:08:09', '2019-03-07 11:08:09'),
(485, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"4\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 11:08:52', '2019-03-07 11:08:52'),
(486, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"10\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 11:09:56', '2019-03-07 11:09:56'),
(487, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"5\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 11:12:22', '2019-03-07 11:12:22'),
(488, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"5\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 11:13:04', '2019-03-07 11:13:04'),
(489, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"5\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 11:14:40', '2019-03-07 11:14:40'),
(490, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"10\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 11:18:43', '2019-03-07 11:18:43'),
(491, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"5\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 11:22:00', '2019-03-07 11:22:00'),
(492, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 11:31:10', '2019-03-07 11:31:10'),
(493, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 11:34:10', '2019-03-07 11:34:10'),
(494, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"3\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 11:36:47', '2019-03-07 11:36:47'),
(495, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 11:38:09', '2019-03-07 11:38:09'),
(496, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 11:39:37', '2019-03-07 11:39:37'),
(497, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-07 11:40:41', '2019-03-07 11:40:41'),
(498, 'Xatta trone', 'Logged in', '111.111', NULL, NULL, '2019-03-13 09:06:19', '2019-03-13 09:06:19'),
(499, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-19 04:40:12', '2019-03-19 04:40:12'),
(500, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-19 04:43:24', '2019-03-19 04:43:24'),
(501, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-19 04:54:30', '2019-03-19 04:54:30'),
(502, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-19 04:55:51', '2019-03-19 04:55:51'),
(503, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-19 04:56:09', '2019-03-19 04:56:09'),
(504, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"16\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-19 04:56:35', '2019-03-19 04:56:35'),
(505, '', 'Generated Barcode', '', NULL, '{\"grade\":\"C\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-19 05:01:42', '2019-03-19 05:01:42'),
(506, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-19 05:04:47', '2019-03-19 05:04:47'),
(507, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-19 05:07:31', '2019-03-19 05:07:31'),
(508, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-19 05:09:18', '2019-03-19 05:09:18'),
(509, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-19 05:18:33', '2019-03-19 05:18:33'),
(510, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-19 05:30:58', '2019-03-19 05:30:58'),
(511, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-19 05:31:18', '2019-03-19 05:31:18'),
(512, '', 'Generated Barcode', '', NULL, '{\"grade\":\"B\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-19 05:38:57', '2019-03-19 05:38:57'),
(513, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-21 03:58:23', '2019-03-21 03:58:23'),
(514, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-28 06:37:07', '2019-03-28 06:37:07'),
(515, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-28 08:25:13', '2019-03-28 08:25:13'),
(516, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-28 08:25:36', '2019-03-28 08:25:36'),
(517, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"1\",\"printer\":\"543465\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-03-28 08:46:59', '2019-03-28 08:46:59'),
(518, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"4\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-04-01 05:01:49', '2019-04-01 05:01:49'),
(519, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"2\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-04-01 05:52:12', '2019-04-01 05:52:12');

-- --------------------------------------------------------

--
-- Table structure for table `barcodes`
--

CREATE TABLE `barcodes` (
  `id` int(10) UNSIGNED NOT NULL,
  `barcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `batch_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_print` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `barcodes`
--

INSERT INTO `barcodes` (`id`, `barcode`, `item`, `batch_no`, `total_print`, `created_at`, `updated_at`) VALUES
(3, '000001190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 19:07:04', '2019-02-01 19:07:04'),
(4, '000002190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 19:07:04', '2019-02-01 19:07:04'),
(5, '000003190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 19:07:38', '2019-02-01 19:07:38'),
(6, '000004190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 19:08:39', '2019-02-01 19:08:39'),
(7, '000005190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 19:10:04', '2019-02-01 19:10:04'),
(8, '000006190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 19:25:09', '2019-02-01 19:25:09'),
(9, '000007190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 19:25:09', '2019-02-01 19:25:09'),
(10, '000008190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 19:25:51', '2019-02-01 19:25:51'),
(11, '000009190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 19:25:51', '2019-02-01 19:25:51'),
(12, '000010190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 19:26:33', '2019-02-01 19:26:33'),
(13, '000011190202BB01_A001001002001', '1602001', '02B19BB', 1, '2019-02-01 19:26:56', '2019-02-01 19:26:56'),
(14, '000012190202BB01_A001001002001', '1602001', '02B19BB', 1, '2019-02-01 19:26:56', '2019-02-01 19:26:56'),
(15, '000013190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 19:30:09', '2019-02-01 19:30:09'),
(16, '000014190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 19:30:09', '2019-02-01 19:30:09'),
(17, '000015190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 19:30:09', '2019-02-01 19:30:09'),
(18, '000016190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 19:30:09', '2019-02-01 19:30:09'),
(19, '000017190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 19:30:10', '2019-02-01 19:30:10'),
(20, '000018190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 19:30:10', '2019-02-01 19:30:10'),
(21, '000019190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 19:30:10', '2019-02-01 19:30:10'),
(22, '000020190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 19:30:11', '2019-02-01 19:30:11'),
(23, '000021190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 19:37:45', '2019-02-01 19:37:45'),
(24, '000022190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 19:37:45', '2019-02-01 19:37:45'),
(25, '000023190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 19:39:07', '2019-02-01 19:39:07'),
(26, '000024190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 19:39:08', '2019-02-01 19:39:08'),
(27, '000025190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 19:50:41', '2019-02-01 19:50:41'),
(28, '000026190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 19:50:41', '2019-02-01 19:50:41'),
(29, '000027190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 19:51:15', '2019-02-01 19:51:15'),
(30, '000028190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 19:51:15', '2019-02-01 19:51:15'),
(31, '000029190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 19:51:16', '2019-02-01 19:51:16'),
(32, '000030190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 19:51:16', '2019-02-01 19:51:16'),
(33, '000031190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 19:52:01', '2019-02-01 19:52:01'),
(34, '000032190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 19:52:01', '2019-02-01 19:52:01'),
(35, '000033190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 19:52:01', '2019-02-01 19:52:01'),
(36, '000034190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 19:53:06', '2019-02-01 19:53:06'),
(37, '000035190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 19:53:06', '2019-02-01 19:53:06'),
(38, '000036190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 19:53:07', '2019-02-01 19:53:07'),
(39, '000037190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 19:53:07', '2019-02-01 19:53:07'),
(40, '000038190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 19:55:14', '2019-02-01 19:55:14'),
(41, '000039190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 19:55:14', '2019-02-01 19:55:14'),
(42, '000040190202BB01_A001001002001', '1602001', '02B19BB', 1, '2019-02-01 19:56:57', '2019-02-01 19:56:57'),
(43, '000041190202BB01_A001001002001', '1602001', '02B19BB', 1, '2019-02-01 19:56:57', '2019-02-01 19:56:57'),
(44, '000042190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 19:57:46', '2019-02-01 19:57:46'),
(45, '000043190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 19:57:46', '2019-02-01 19:57:46'),
(46, '000044190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 19:57:46', '2019-02-01 19:57:46'),
(47, '000045190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 19:57:46', '2019-02-01 19:57:46'),
(48, '000046190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 19:59:30', '2019-02-01 19:59:30'),
(49, '000047190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 19:59:30', '2019-02-01 19:59:30'),
(50, '000048190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 19:59:30', '2019-02-01 19:59:30'),
(51, '000049190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 19:59:30', '2019-02-01 19:59:30'),
(52, '000050190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 20:03:32', '2019-02-01 20:03:32'),
(53, '000051190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 20:03:32', '2019-02-01 20:03:32'),
(54, '000052190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 20:05:34', '2019-02-01 20:05:34'),
(55, '000053190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 20:05:34', '2019-02-01 20:05:34'),
(56, '000054190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 20:05:34', '2019-02-01 20:05:34'),
(57, '000055190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 20:07:41', '2019-02-01 20:07:41'),
(58, '000056190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 20:07:41', '2019-02-01 20:07:41'),
(59, '000057190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 20:07:41', '2019-02-01 20:07:41'),
(60, '000058190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 20:10:19', '2019-02-01 20:10:19'),
(61, '000059190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 20:10:19', '2019-02-01 20:10:19'),
(62, '000060190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 20:10:19', '2019-02-01 20:10:19'),
(63, '000061190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 20:10:19', '2019-02-01 20:10:19'),
(64, '000062190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 20:11:20', '2019-02-01 20:11:20'),
(65, '000063190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 20:11:20', '2019-02-01 20:11:20'),
(66, '000064190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 20:11:20', '2019-02-01 20:11:20'),
(67, '000065190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 20:12:30', '2019-02-01 20:12:30'),
(68, '000066190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 20:12:31', '2019-02-01 20:12:31'),
(69, '000067190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 20:12:31', '2019-02-01 20:12:31'),
(70, '000068190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 20:13:20', '2019-02-01 20:13:20'),
(71, '000069190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 20:13:21', '2019-02-01 20:13:21'),
(72, '000070190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 20:13:21', '2019-02-01 20:13:21'),
(73, '000071190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 20:15:33', '2019-02-01 20:15:33'),
(74, '000072190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 20:15:33', '2019-02-01 20:15:33'),
(75, '000073190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 20:15:33', '2019-02-01 20:15:33'),
(76, '000074190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 20:17:57', '2019-02-01 20:17:57'),
(77, '000075190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 20:17:57', '2019-02-01 20:17:57'),
(78, '000076190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 20:17:57', '2019-02-01 20:17:57'),
(79, '000077190202BB01_A001001002001', '1602001', '02B19BB', 1, '2019-02-01 20:19:33', '2019-02-01 20:19:33'),
(80, '000078190202BB01_A001001002001', '1602001', '02B19BB', 1, '2019-02-01 20:19:33', '2019-02-01 20:19:33'),
(81, '000079190202BB01_A001001002001', '1602001', '02B19BB', 1, '2019-02-01 20:19:34', '2019-02-01 20:19:34'),
(82, '000080190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 20:22:22', '2019-02-01 20:22:22'),
(83, '000081190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 20:22:22', '2019-02-01 20:22:22'),
(84, '000082190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 20:22:22', '2019-02-01 20:22:22'),
(85, '000083190202BB01_A001001002001', '1602001', '02B19BB', 1, '2019-02-01 20:25:07', '2019-02-01 20:25:07'),
(86, '000084190202BB01_A001001002001', '1602001', '02B19BB', 1, '2019-02-01 20:25:07', '2019-02-01 20:25:07'),
(87, '000085190202BB01_A001001002001', '1602001', '02B19BB', 1, '2019-02-01 20:25:07', '2019-02-01 20:25:07'),
(88, '000086190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 20:26:27', '2019-02-01 20:26:27'),
(89, '000087190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 20:26:27', '2019-02-01 20:26:27'),
(90, '000088190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 20:26:27', '2019-02-01 20:26:27'),
(91, '000089190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 20:27:07', '2019-02-01 20:27:07'),
(92, '000090190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 20:27:08', '2019-02-01 20:27:08'),
(93, '000091190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 20:27:08', '2019-02-01 20:27:08'),
(94, '000092190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 20:30:28', '2019-02-01 20:30:28'),
(95, '000093190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 20:30:28', '2019-02-01 20:30:28'),
(96, '000094190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-01 20:30:28', '2019-02-01 20:30:28'),
(97, '000001190203BA01_A001001002001', '1602001', '03B19BA', 1, '2019-02-02 18:14:05', '2019-02-02 18:14:05'),
(98, '000002190203BA01_A001001002001', '1602001', '03B19BA', 1, '2019-02-02 18:14:06', '2019-02-02 18:14:06'),
(99, '000003190203BA01_A001001002001', '1602001', '03B19BA', 1, '2019-02-02 18:14:59', '2019-02-02 18:14:59'),
(100, '000004190203BA01_A001001002001', '1602001', '03B19BA', 1, '2019-02-02 18:14:59', '2019-02-02 18:14:59'),
(101, '000005190203BA01_A001001002001', '1602001', '03B19BA', 1, '2019-02-02 18:15:00', '2019-02-02 18:15:00'),
(102, '000006190203BA01_A001001002001', '1602001', '03B19BA', 1, '2019-02-02 18:16:39', '2019-02-02 18:16:39'),
(103, '000007190203BA01_A001001002001', '1602001', '03B19BA', 1, '2019-02-02 18:16:39', '2019-02-02 18:16:39'),
(104, '000008190203BA01_A001001002001', '1602001', '03B19BA', 1, '2019-02-02 18:16:39', '2019-02-02 18:16:39'),
(105, '000009190203BA01_A001001002001', '1602001', '03B19BA', 1, '2019-02-02 18:17:23', '2019-02-02 18:17:23'),
(106, '000010190203BA01_A001001002001', '1602001', '03B19BA', 1, '2019-02-02 18:17:24', '2019-02-02 18:17:24'),
(107, '000011190203BA01_A001001002001', '1602001', '03B19BA', 1, '2019-02-02 18:17:24', '2019-02-02 18:17:24'),
(108, '000001190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 18:22:52', '2019-02-02 18:22:52'),
(109, '000002190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 18:22:53', '2019-02-02 18:22:53'),
(110, '000003190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 18:22:53', '2019-02-02 18:22:53'),
(111, '000004190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 18:26:38', '2019-02-02 18:26:38'),
(112, '000005190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 18:26:39', '2019-02-02 18:26:39'),
(113, '000006190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 18:26:39', '2019-02-02 18:26:39'),
(114, '000007190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 18:27:10', '2019-02-02 18:27:10'),
(115, '000008190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 18:27:11', '2019-02-02 18:27:11'),
(116, '000009190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 18:27:11', '2019-02-02 18:27:11'),
(117, '000010190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 18:27:46', '2019-02-02 18:27:46'),
(118, '000011190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 18:27:46', '2019-02-02 18:27:46'),
(119, '000012190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 18:27:46', '2019-02-02 18:27:46'),
(120, '000013190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 18:30:21', '2019-02-02 18:30:21'),
(121, '000014190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 18:30:21', '2019-02-02 18:30:21'),
(122, '000015190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 18:30:21', '2019-02-02 18:30:21'),
(123, '000016190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 18:31:00', '2019-02-02 18:31:00'),
(124, '000017190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 18:31:01', '2019-02-02 18:31:01'),
(125, '000018190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 18:31:01', '2019-02-02 18:31:01'),
(126, '000019190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 18:34:47', '2019-02-02 18:34:47'),
(127, '000020190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 18:34:47', '2019-02-02 18:34:47'),
(128, '000021190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 18:34:47', '2019-02-02 18:34:47'),
(129, '000022190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 18:35:43', '2019-02-02 18:35:43'),
(130, '000023190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 18:35:44', '2019-02-02 18:35:44'),
(131, '000024190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 18:35:44', '2019-02-02 18:35:44'),
(132, '000025190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 18:36:25', '2019-02-02 18:36:25'),
(133, '000026190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 18:36:25', '2019-02-02 18:36:25'),
(134, '000027190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 18:36:26', '2019-02-02 18:36:26'),
(135, '000028190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 18:37:31', '2019-02-02 18:37:31'),
(136, '000029190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 18:37:31', '2019-02-02 18:37:31'),
(137, '000030190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 18:37:31', '2019-02-02 18:37:31'),
(138, '000031190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 18:41:35', '2019-02-02 18:41:35'),
(139, '000032190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 18:41:35', '2019-02-02 18:41:35'),
(140, '000033190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 18:41:35', '2019-02-02 18:41:35'),
(141, '000034190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 18:43:45', '2019-02-02 18:43:45'),
(142, '000035190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 18:43:46', '2019-02-02 18:43:46'),
(143, '000036190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 18:43:46', '2019-02-02 18:43:46'),
(144, '000037190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 18:48:22', '2019-02-02 18:48:22'),
(145, '000038190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 18:48:22', '2019-02-02 18:48:22'),
(146, '000039190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 18:48:22', '2019-02-02 18:48:22'),
(147, '000040190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 18:50:05', '2019-02-02 18:50:05'),
(148, '000041190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 18:50:05', '2019-02-02 18:50:05'),
(149, '000042190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 18:58:26', '2019-02-02 18:58:26'),
(150, '000043190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 18:58:26', '2019-02-02 18:58:26'),
(151, '000044190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 18:58:26', '2019-02-02 18:58:26'),
(152, '000045190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 18:58:26', '2019-02-02 18:58:26'),
(153, '000046190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 18:59:16', '2019-02-02 18:59:16'),
(154, '000047190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 18:59:16', '2019-02-02 18:59:16'),
(155, '000048190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 18:59:16', '2019-02-02 18:59:16'),
(156, '000049190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:03:22', '2019-02-02 19:03:22'),
(157, '000050190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:03:22', '2019-02-02 19:03:22'),
(158, '000051190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:03:22', '2019-02-02 19:03:22'),
(159, '000052190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:03:22', '2019-02-02 19:03:22'),
(160, '000053190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:03:22', '2019-02-02 19:03:22'),
(161, '000054190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:18:23', '2019-02-02 19:18:23'),
(162, '000055190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:18:23', '2019-02-02 19:18:23'),
(163, '000056190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:18:23', '2019-02-02 19:18:23'),
(164, '000057190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:20:03', '2019-02-02 19:20:03'),
(165, '000058190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:20:03', '2019-02-02 19:20:03'),
(166, '000059190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:20:03', '2019-02-02 19:20:03'),
(167, '000060190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:21:54', '2019-02-02 19:21:54'),
(168, '000061190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:21:54', '2019-02-02 19:21:54'),
(169, '000062190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:21:55', '2019-02-02 19:21:55'),
(170, '000063190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:25:38', '2019-02-02 19:25:38'),
(171, '000064190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:25:38', '2019-02-02 19:25:38'),
(172, '000065190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:25:38', '2019-02-02 19:25:38'),
(173, '000066190201BB01_A001001002001', '1602001', '01B19BB', 1, '2019-02-02 19:26:02', '2019-02-02 19:26:02'),
(174, '000067190201BB01_A001001002001', '1602001', '01B19BB', 1, '2019-02-02 19:26:02', '2019-02-02 19:26:02'),
(175, '000068190201BB01_A001001002001', '1602001', '01B19BB', 1, '2019-02-02 19:26:02', '2019-02-02 19:26:02'),
(176, '000069190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:27:37', '2019-02-02 19:27:37'),
(177, '000070190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:27:37', '2019-02-02 19:27:37'),
(178, '000071190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:27:37', '2019-02-02 19:27:37'),
(179, '000072190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:28:21', '2019-02-02 19:28:21'),
(180, '000073190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:28:21', '2019-02-02 19:28:21'),
(181, '000074190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:28:21', '2019-02-02 19:28:21'),
(182, '000075190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:28:42', '2019-02-02 19:28:42'),
(183, '000076190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:28:42', '2019-02-02 19:28:42'),
(184, '000077190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:28:42', '2019-02-02 19:28:42'),
(185, '000078190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:28:42', '2019-02-02 19:28:42'),
(186, '000079190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:34:59', '2019-02-02 19:34:59'),
(187, '000080190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:34:59', '2019-02-02 19:34:59'),
(188, '000081190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:34:59', '2019-02-02 19:34:59'),
(189, '000082190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:38:45', '2019-02-02 19:38:45'),
(190, '000083190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:38:45', '2019-02-02 19:38:45'),
(191, '000084190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:38:45', '2019-02-02 19:38:45'),
(192, '000085190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:42:41', '2019-02-02 19:42:41'),
(193, '000086190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:42:41', '2019-02-02 19:42:41'),
(194, '000087190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:42:42', '2019-02-02 19:42:42'),
(195, '000088190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:42:42', '2019-02-02 19:42:42'),
(196, '000089190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:42:42', '2019-02-02 19:42:42'),
(197, '000090190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:44:48', '2019-02-02 19:44:48'),
(198, '000091190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:44:49', '2019-02-02 19:44:49'),
(199, '000092190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:44:49', '2019-02-02 19:44:49'),
(200, '000093190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:44:49', '2019-02-02 19:44:49'),
(201, '000094190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:44:49', '2019-02-02 19:44:49'),
(202, '000095190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:45:24', '2019-02-02 19:45:24'),
(203, '000096190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:45:24', '2019-02-02 19:45:24'),
(204, '000097190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:46:46', '2019-02-02 19:46:46'),
(205, '000098190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:46:46', '2019-02-02 19:46:46'),
(206, '000099190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:46:46', '2019-02-02 19:46:46'),
(207, '000100190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:49:34', '2019-02-02 19:49:34'),
(208, '000101190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:49:34', '2019-02-02 19:49:34'),
(209, '000102190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:49:34', '2019-02-02 19:49:34'),
(210, '000103190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:50:36', '2019-02-02 19:50:36'),
(211, '000104190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:50:37', '2019-02-02 19:50:37'),
(212, '000105190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:50:37', '2019-02-02 19:50:37'),
(213, '000106190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:52:38', '2019-02-02 19:52:38'),
(214, '000107190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:52:38', '2019-02-02 19:52:38'),
(215, '000108190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:52:38', '2019-02-02 19:52:38'),
(216, '000109190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:54:01', '2019-02-02 19:54:01'),
(217, '000110190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:54:01', '2019-02-02 19:54:01'),
(218, '000111190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:54:01', '2019-02-02 19:54:01'),
(219, '000112190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:54:24', '2019-02-02 19:54:24'),
(220, '000113190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:54:24', '2019-02-02 19:54:24'),
(221, '000114190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:54:24', '2019-02-02 19:54:24'),
(222, '000115190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:55:22', '2019-02-02 19:55:22'),
(223, '000116190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:55:22', '2019-02-02 19:55:22'),
(224, '000117190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:55:22', '2019-02-02 19:55:22'),
(225, '000118190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:55:59', '2019-02-02 19:55:59'),
(226, '000119190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:55:59', '2019-02-02 19:55:59'),
(227, '000120190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:55:59', '2019-02-02 19:55:59'),
(228, '000121190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:56:21', '2019-02-02 19:56:21'),
(229, '000122190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:56:21', '2019-02-02 19:56:21'),
(230, '000123190201BB01_A001001002001', '1602001', '01B19BB', 1, '2019-02-02 19:57:01', '2019-02-02 19:57:01'),
(231, '000124190201BB01_A001001002001', '1602001', '01B19BB', 1, '2019-02-02 19:57:02', '2019-02-02 19:57:02'),
(232, '000125190201BB01_A001001002001', '1602001', '01B19BB', 1, '2019-02-02 19:57:02', '2019-02-02 19:57:02'),
(233, '000126190201BB01_A001001002001', '1602001', '01B19BB', 1, '2019-02-02 19:57:02', '2019-02-02 19:57:02'),
(234, '000127190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:57:52', '2019-02-02 19:57:52'),
(235, '000128190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:57:52', '2019-02-02 19:57:52'),
(236, '000129190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:57:52', '2019-02-02 19:57:52'),
(237, '000130190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:58:19', '2019-02-02 19:58:19'),
(238, '000131190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:58:19', '2019-02-02 19:58:19'),
(239, '000132190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:58:20', '2019-02-02 19:58:20'),
(240, '000133190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:58:50', '2019-02-02 19:58:50'),
(241, '000134190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:58:50', '2019-02-02 19:58:50'),
(242, '000135190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:58:50', '2019-02-02 19:58:50'),
(243, '000136190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:58:50', '2019-02-02 19:58:50'),
(244, '000137190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:58:51', '2019-02-02 19:58:51'),
(245, '000138190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:58:51', '2019-02-02 19:58:51'),
(246, '000139190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:58:51', '2019-02-02 19:58:51'),
(247, '000140190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:58:51', '2019-02-02 19:58:51'),
(248, '000141190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:58:51', '2019-02-02 19:58:51'),
(249, '000142190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 19:58:51', '2019-02-02 19:58:51'),
(250, '000143190201BB01_A001001002001', '1602001', '01B19BB', 1, '2019-02-02 19:59:48', '2019-02-02 19:59:48'),
(251, '000144190201BB01_A001001002001', '1602001', '01B19BB', 1, '2019-02-02 19:59:48', '2019-02-02 19:59:48'),
(252, '000145190201BB01_A001001002001', '1602001', '01B19BB', 1, '2019-02-02 19:59:48', '2019-02-02 19:59:48'),
(253, '000146190201BB01_A001001002001', '1602001', '01B19BB', 1, '2019-02-02 19:59:49', '2019-02-02 19:59:49'),
(254, '000147190201BB01_A001001002001', '1602001', '01B19BB', 1, '2019-02-02 19:59:49', '2019-02-02 19:59:49'),
(255, '000148190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 20:00:47', '2019-02-02 20:00:47'),
(256, '000149190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 20:00:47', '2019-02-02 20:00:47'),
(257, '000150190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 20:00:47', '2019-02-02 20:00:47'),
(258, '000151190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 20:01:47', '2019-02-02 20:01:47'),
(259, '000152190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 20:01:48', '2019-02-02 20:01:48'),
(260, '000153190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 20:01:48', '2019-02-02 20:01:48'),
(261, '000154190201BB01_A001001002001', '1602001', '01B19BB', 1, '2019-02-02 20:02:23', '2019-02-02 20:02:23'),
(262, '000155190201BB01_A001001002001', '1602001', '01B19BB', 1, '2019-02-02 20:02:23', '2019-02-02 20:02:23'),
(263, '000156190201BB01_A001001002001', '1602001', '01B19BB', 1, '2019-02-02 20:02:23', '2019-02-02 20:02:23'),
(264, '000157190201BB01_A001001002001', '1602001', '01B19BB', 1, '2019-02-02 20:02:23', '2019-02-02 20:02:23'),
(265, '000158190201BB01_A001001002001', '1602001', '01B19BB', 1, '2019-02-02 20:03:54', '2019-02-02 20:03:54'),
(266, '000159190201BB01_A001001002001', '1602001', '01B19BB', 1, '2019-02-02 20:03:54', '2019-02-02 20:03:54'),
(267, '000160190201BB01_A001001002001', '1602001', '01B19BB', 1, '2019-02-02 20:03:54', '2019-02-02 20:03:54'),
(268, '000161190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 20:04:27', '2019-02-02 20:04:27'),
(269, '000162190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 20:04:27', '2019-02-02 20:04:27'),
(270, '000163190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 20:04:28', '2019-02-02 20:04:28'),
(271, '000164190201BB01_A001001002001', '1602001', '01B19BB', 1, '2019-02-02 20:06:31', '2019-02-02 20:06:31'),
(272, '000165190201BB01_A001001002001', '1602001', '01B19BB', 1, '2019-02-02 20:06:31', '2019-02-02 20:06:31'),
(273, '000166190201BB01_A001001002001', '1602001', '01B19BB', 1, '2019-02-02 20:06:32', '2019-02-02 20:06:32'),
(274, '000167190201BB01_A001001002001', '1602001', '01B19BB', 1, '2019-02-02 20:06:32', '2019-02-02 20:06:32'),
(275, '000168190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 20:08:48', '2019-02-02 20:08:48'),
(276, '000169190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 20:08:49', '2019-02-02 20:08:49'),
(277, '000170190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 20:08:49', '2019-02-02 20:08:49'),
(278, '000171190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 20:11:10', '2019-02-02 20:11:10'),
(279, '000172190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 20:11:10', '2019-02-02 20:11:10'),
(280, '000173190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 20:11:10', '2019-02-02 20:11:10'),
(281, '000174190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 20:11:11', '2019-02-02 20:11:11'),
(282, '000175190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 20:11:11', '2019-02-02 20:11:11'),
(283, '000176190201BB01_A001001002001', '1602001', '01B19BB', 1, '2019-02-02 20:11:30', '2019-02-02 20:11:30'),
(284, '000177190201BB01_A001001002001', '1602001', '01B19BB', 1, '2019-02-02 20:11:30', '2019-02-02 20:11:30'),
(285, '000178190201BB01_A001001002001', '1602001', '01B19BB', 1, '2019-02-02 20:11:30', '2019-02-02 20:11:30'),
(286, '000179190201BB01_A001001002001', '1602001', '01B19BB', 1, '2019-02-02 20:11:30', '2019-02-02 20:11:30'),
(287, '000180190201BB01_A001001002001', '1602001', '01B19BB', 1, '2019-02-02 20:11:30', '2019-02-02 20:11:30'),
(288, '000181190201BB01_A001001002001', '1602001', '01B19BB', 1, '2019-02-02 20:11:30', '2019-02-02 20:11:30'),
(289, '000182190201BB01_A001001002001', '1602001', '01B19BB', 1, '2019-02-02 20:11:31', '2019-02-02 20:11:31'),
(290, '000183190201BB01_A001001002001', '1602001', '01B19BB', 1, '2019-02-02 20:11:59', '2019-02-02 20:11:59'),
(291, '000184190201BB01_A001001002001', '1602001', '01B19BB', 1, '2019-02-02 20:11:59', '2019-02-02 20:11:59'),
(292, '000185190201BB01_A001001002001', '1602001', '01B19BB', 1, '2019-02-02 20:11:59', '2019-02-02 20:11:59'),
(293, '000186190201BB01_A001001002001', '1602001', '01B19BB', 1, '2019-02-02 20:12:00', '2019-02-02 20:12:00'),
(294, '000187190201BB01_A001001002001', '1602001', '01B19BB', 1, '2019-02-02 20:12:00', '2019-02-02 20:12:00'),
(295, '000188190201BB01_A001001002001', '1602001', '01B19BB', 1, '2019-02-02 20:12:00', '2019-02-02 20:12:00'),
(296, '000189190201BB01_A001001002001', '1602001', '01B19BB', 1, '2019-02-02 20:12:00', '2019-02-02 20:12:00'),
(297, '000190190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 20:12:23', '2019-02-02 20:12:23'),
(298, '000191190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 20:12:23', '2019-02-02 20:12:23'),
(299, '000192190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 20:12:23', '2019-02-02 20:12:23'),
(300, '000193190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 20:12:23', '2019-02-02 20:12:23'),
(301, '000194190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 20:12:23', '2019-02-02 20:12:23'),
(302, '000195190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 20:14:19', '2019-02-02 20:14:19'),
(303, '000196190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 20:14:19', '2019-02-02 20:14:19'),
(304, '000197190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 20:14:19', '2019-02-02 20:14:19'),
(305, '000198190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 20:14:32', '2019-02-02 20:14:32'),
(306, '000199190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 20:14:32', '2019-02-02 20:14:32'),
(307, '000200190201BA01_A001001002001', '1602001', '01B19BA', 1, '2019-02-02 20:14:32', '2019-02-02 20:14:32'),
(308, '000095190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-02 20:15:19', '2019-02-02 20:15:19'),
(309, '000096190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-02 20:15:19', '2019-02-02 20:15:19'),
(310, '000097190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-02 20:15:19', '2019-02-02 20:15:19'),
(311, '000098190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-02 20:15:19', '2019-02-02 20:15:19'),
(312, '000099190202BA01_A001001002001', '1602001', '02B19BA', 1, '2019-02-02 20:15:20', '2019-02-02 20:15:20'),
(313, '000001190212BB01_A001001002001', '1602001', '12B19BB', 1, '2019-02-02 20:15:53', '2019-02-02 20:15:53'),
(314, '000002190212BB01_A001001002001', '1602001', '12B19BB', 1, '2019-02-02 20:15:53', '2019-02-02 20:15:53'),
(315, '000003190212BB01_A001001002001', '1602001', '12B19BB', 1, '2019-02-02 20:15:53', '2019-02-02 20:15:53'),
(316, '000004190212BB01_A001001002001', '1602001', '12B19BB', 1, '2019-02-02 20:15:53', '2019-02-02 20:15:53'),
(317, '000005190212BB01_A001001002001', '1602001', '12B19BB', 1, '2019-02-02 20:15:53', '2019-02-02 20:15:53'),
(318, '000006190212BB01_A001001002001', '1602001', '12B19BB', 1, '2019-02-02 20:15:53', '2019-02-02 20:15:53'),
(319, '000007190212BB01_A001001002001', '1602001', '12B19BB', 1, '2019-02-02 20:15:54', '2019-02-02 20:15:54'),
(320, '000001190205BB01_A001002002002', '1602001', '05B19BB', 1, '2019-02-04 03:42:03', '2019-02-04 03:42:03'),
(321, '000002190205BB01_A001002002002', '1602001', '05B19BB', 1, '2019-02-04 03:42:04', '2019-02-04 03:42:04'),
(322, '000003190205BB01_A001002002002', '1602001', '05B19BB', 1, '2019-02-04 03:42:05', '2019-02-04 03:42:05'),
(323, '000004190205BB01_A001002002002', '1602001', '05B19BB', 1, '2019-02-04 03:42:05', '2019-02-04 03:42:05'),
(324, '000005190205BB01_A001002002002', '1602001', '05B19BB', 1, '2019-02-04 03:42:05', '2019-02-04 03:42:05'),
(325, '000006190205BB01_A001002002002', '1602001', '05B19BB', 1, '2019-02-04 03:42:05', '2019-02-04 03:42:05'),
(326, '000007190205BB01_A001002002002', '1602001', '05B19BB', 1, '2019-02-04 03:42:05', '2019-02-04 03:42:05'),
(327, '000008190205BB01_A001002002002', '1602001', '05B19BB', 1, '2019-02-04 03:42:05', '2019-02-04 03:42:05'),
(328, '000009190205BB01_A001002002002', '1602001', '05B19BB', 1, '2019-02-04 03:42:05', '2019-02-04 03:42:05'),
(329, '000010190205BB01_A001002002002', '1602001', '05B19BB', 1, '2019-02-04 03:42:05', '2019-02-04 03:42:05'),
(330, '000011190205BB01_A001002002002', '1602001', '05B19BB', 1, '2019-02-04 03:42:05', '2019-02-04 03:42:05'),
(331, '000012190205BB01_A001002002002', '1602001', '05B19BB', 1, '2019-02-04 03:42:06', '2019-02-04 03:42:06'),
(332, '000013190205BB01_A001002002002', '1602001', '05B19BB', 3, '2019-02-04 03:42:06', '2019-02-04 04:10:25'),
(333, '000014190205BB01_A001002002002', '1602001', '05B19BB', 4, '2019-02-04 03:42:06', '2019-02-04 04:13:32'),
(334, '000015190205BB01_A001002002002', '1602001', '05B19BB', 2, '2019-02-04 03:42:06', '2019-02-04 04:12:05'),
(335, '000016190205BB01_A001002002002', '1602001', '05B19BB', 2, '2019-02-04 03:42:06', '2019-02-04 04:11:44'),
(336, '000017190205BB01_A001002002002', '1602001', '05B19BB', 1, '2019-02-04 03:42:06', '2019-02-04 03:42:06'),
(337, '000018190205BB01_A001002002002', '1602001', '05B19BB', 1, '2019-02-04 03:42:06', '2019-02-04 03:42:06'),
(338, '000019190205BB01_A001002002002', '1602001', '05B19BB', 1, '2019-02-04 03:42:06', '2019-02-04 03:42:06'),
(339, '000020190205BB01_A001002002002', '1602001', '05B19BB', 2, '2019-02-04 03:42:07', '2019-02-04 04:05:52'),
(340, '000021190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-02-04 04:17:14', '2019-02-04 04:17:14'),
(341, '000022190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-02-04 04:17:14', '2019-02-04 04:17:14'),
(342, '000023190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-02-04 04:17:15', '2019-02-04 04:17:15'),
(343, '000024190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-02-04 04:17:15', '2019-02-04 04:17:15'),
(344, '000025190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-02-04 04:17:15', '2019-02-04 04:17:15'),
(345, '000026190205BB01_A001002002002', '1602001', '05B19BB', 1, '2019-02-05 04:28:01', '2019-02-05 04:28:01'),
(346, '000027190205BB01_A001002002002', '1602001', '05B19BB', 1, '2019-02-05 04:28:01', '2019-02-05 04:28:01'),
(347, '000028190205BB01_A001002002002', '1602001', '05B19BB', 1, '2019-02-05 04:28:01', '2019-02-05 04:28:01'),
(348, '000029190205BB01_A001002002002', '1602001', '05B19BB', 1, '2019-02-05 04:28:01', '2019-02-05 04:28:01'),
(349, '000030190205BB01_A001002002002', '1602001', '05B19BB', 1, '2019-02-05 04:28:01', '2019-02-05 04:28:01'),
(350, '000031190205BB01_A001002002002', '1602001', '05B19BB', 1, '2019-02-05 04:28:30', '2019-02-05 04:28:30'),
(351, '000032190205BB01_A001002002002', '1602001', '05B19BB', 1, '2019-02-05 04:28:30', '2019-02-05 04:28:30'),
(352, '000033190205BB01_A001002002002', '1602001', '05B19BB', 1, '2019-02-05 04:28:30', '2019-02-05 04:28:30'),
(353, '000034190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-02-05 04:28:58', '2019-02-05 04:28:58'),
(354, '000035190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-02-05 04:28:58', '2019-02-05 04:28:58'),
(355, '000036190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-02-05 04:28:58', '2019-02-05 04:28:58'),
(356, '000037190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-02-05 04:28:58', '2019-02-05 04:28:58'),
(357, '000038190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-02-05 04:28:58', '2019-02-05 04:28:58'),
(358, '000039190205BA01_A001002002002', '1602001', '05B19BA', 3, '2019-02-05 04:28:59', '2019-02-05 04:31:02'),
(359, '000040190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-02-05 04:42:16', '2019-02-05 04:42:16'),
(360, '000041190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-02-05 04:42:16', '2019-02-05 04:42:16'),
(361, '000042190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-02-05 04:42:17', '2019-02-05 04:42:17'),
(362, '000043190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-02-05 05:07:28', '2019-02-05 05:07:28'),
(363, '000044190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-02-05 05:07:29', '2019-02-05 05:07:29'),
(364, '000045190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-02-05 05:07:29', '2019-02-05 05:07:29'),
(365, '000046190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-02-05 05:07:56', '2019-02-05 05:07:56'),
(366, '000047190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-02-05 05:07:56', '2019-02-05 05:07:56'),
(367, '000048190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-02-05 05:07:57', '2019-02-05 05:07:57'),
(368, '000049190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-02-05 05:22:33', '2019-02-05 05:22:33'),
(369, '000050190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-02-05 05:22:33', '2019-02-05 05:22:33'),
(370, '000051190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-02-05 05:22:33', '2019-02-05 05:22:33'),
(371, '000052190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-02-05 05:22:33', '2019-02-05 05:22:33'),
(372, '000053190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-02-05 05:22:33', '2019-02-05 05:22:33'),
(373, '000054190205BB01_A001002002002', '1602001', '05B19BB', 1, '2019-03-06 05:10:09', '2019-03-06 05:10:09'),
(374, '000055190205BB01_A001002002002', '1602001', '05B19BB', 1, '2019-03-06 05:10:09', '2019-03-06 05:10:09'),
(375, '000056190205BB01_A001002002002', '1602001', '05B19BB', 1, '2019-03-06 05:10:10', '2019-03-06 05:10:10'),
(376, '000057190205BB01_A001002002002', '1602001', '05B19BB', 1, '2019-03-06 05:10:10', '2019-03-06 05:10:10'),
(377, '000058190205BB01_A001002002002', '1602001', '05B19BB', 1, '2019-03-06 05:10:10', '2019-03-06 05:10:10'),
(378, '000059190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 05:20:30', '2019-03-06 05:20:30'),
(379, '000060190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 05:20:30', '2019-03-06 05:20:30'),
(380, '000061190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 05:20:30', '2019-03-06 05:20:30'),
(381, '000062190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 05:20:31', '2019-03-06 05:20:31'),
(382, '000063190205BB01_A001002002002', '1602001', '05B19BB', 1, '2019-03-06 05:29:52', '2019-03-06 05:29:52'),
(383, '000064190205BB01_A001002002002', '1602001', '05B19BB', 1, '2019-03-06 05:29:52', '2019-03-06 05:29:52'),
(384, '000065190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 05:36:13', '2019-03-06 05:36:13'),
(385, '000066190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 05:36:14', '2019-03-06 05:36:14'),
(386, '000067190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 05:42:03', '2019-03-06 05:42:03'),
(387, '000068190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 05:42:04', '2019-03-06 05:42:04'),
(388, '000069190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 05:42:04', '2019-03-06 05:42:04'),
(389, '000070190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 05:42:04', '2019-03-06 05:42:04'),
(390, '000071190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 05:44:14', '2019-03-06 05:44:14'),
(391, '000072190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 05:44:15', '2019-03-06 05:44:15'),
(392, '000073190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 05:47:17', '2019-03-06 05:47:17'),
(393, '000074190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 05:47:18', '2019-03-06 05:47:18'),
(394, '000075190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 05:48:23', '2019-03-06 05:48:23'),
(395, '000076190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 05:48:24', '2019-03-06 05:48:24'),
(396, '000077190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 05:48:37', '2019-03-06 05:48:37'),
(397, '000078190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 05:48:38', '2019-03-06 05:48:38'),
(398, '000079190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 06:31:01', '2019-03-06 06:31:01'),
(399, '000080190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 06:31:02', '2019-03-06 06:31:02'),
(400, '000081190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 06:32:18', '2019-03-06 06:32:18'),
(401, '000082190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 06:32:18', '2019-03-06 06:32:18'),
(402, '000083190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 06:42:20', '2019-03-06 06:42:20'),
(403, '000084190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 06:42:20', '2019-03-06 06:42:20'),
(404, '000085190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 06:44:59', '2019-03-06 06:44:59'),
(405, '000086190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 06:44:59', '2019-03-06 06:44:59'),
(406, '000087190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 06:58:26', '2019-03-06 06:58:26'),
(407, '000088190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 06:58:26', '2019-03-06 06:58:26'),
(408, '000089190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 06:59:24', '2019-03-06 06:59:24'),
(409, '000090190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 06:59:24', '2019-03-06 06:59:24'),
(410, '000091190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 07:00:47', '2019-03-06 07:00:47'),
(411, '000092190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 07:00:48', '2019-03-06 07:00:48'),
(412, '000093190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 07:05:55', '2019-03-06 07:05:55'),
(413, '000094190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 07:05:56', '2019-03-06 07:05:56'),
(414, '000095190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 07:06:47', '2019-03-06 07:06:47'),
(415, '000096190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 07:06:47', '2019-03-06 07:06:47'),
(416, '000097190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 07:13:09', '2019-03-06 07:13:09'),
(417, '000098190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 07:13:09', '2019-03-06 07:13:09'),
(418, '000099190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 07:15:27', '2019-03-06 07:15:27'),
(419, '000100190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 07:15:27', '2019-03-06 07:15:27'),
(420, '000101190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 07:21:44', '2019-03-06 07:21:44'),
(421, '000102190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 07:21:44', '2019-03-06 07:21:44'),
(422, '000103190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 07:33:21', '2019-03-06 07:33:21'),
(423, '000104190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 07:33:21', '2019-03-06 07:33:21'),
(424, '000105190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 07:34:56', '2019-03-06 07:34:56'),
(425, '000106190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 07:34:57', '2019-03-06 07:34:57'),
(426, '000107190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 07:35:46', '2019-03-06 07:35:46'),
(427, '000108190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 07:35:46', '2019-03-06 07:35:46'),
(428, '000109190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 07:39:45', '2019-03-06 07:39:45'),
(429, '000110190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 07:39:45', '2019-03-06 07:39:45'),
(430, '000111190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 07:41:53', '2019-03-06 07:41:53'),
(431, '000112190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 07:41:54', '2019-03-06 07:41:54'),
(432, '000113190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 08:23:03', '2019-03-06 08:23:03'),
(433, '000114190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 08:23:06', '2019-03-06 08:23:06'),
(434, '000115190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 08:25:34', '2019-03-06 08:25:34'),
(435, '000116190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 08:25:36', '2019-03-06 08:25:36'),
(436, '000117190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 08:27:49', '2019-03-06 08:27:49'),
(437, '000118190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 08:27:52', '2019-03-06 08:27:52'),
(438, '000119190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 08:28:27', '2019-03-06 08:28:27'),
(439, '000120190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 08:28:29', '2019-03-06 08:28:29'),
(440, '000121190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 08:29:51', '2019-03-06 08:29:51'),
(441, '000122190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 08:29:52', '2019-03-06 08:29:52'),
(442, '000123190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 08:33:17', '2019-03-06 08:33:17'),
(443, '000124190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 08:33:18', '2019-03-06 08:33:18'),
(444, '000125190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 08:55:55', '2019-03-06 08:55:55'),
(445, '000126190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 08:55:56', '2019-03-06 08:55:56'),
(446, '000127190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 08:59:45', '2019-03-06 08:59:45'),
(447, '000128190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 08:59:45', '2019-03-06 08:59:45'),
(448, '000129190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 09:21:20', '2019-03-06 09:21:20'),
(449, '000130190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 09:21:23', '2019-03-06 09:21:23'),
(450, '000131190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 09:22:13', '2019-03-06 09:22:13'),
(451, '000132190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 09:22:16', '2019-03-06 09:22:16'),
(452, '000133190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 09:22:53', '2019-03-06 09:22:53'),
(453, '000134190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 09:22:53', '2019-03-06 09:22:53'),
(454, '000135190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 09:50:55', '2019-03-06 09:50:55'),
(455, '000136190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 09:50:55', '2019-03-06 09:50:55'),
(456, '000137190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 09:54:10', '2019-03-06 09:54:10');
INSERT INTO `barcodes` (`id`, `barcode`, `item`, `batch_no`, `total_print`, `created_at`, `updated_at`) VALUES
(457, '000138190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 09:54:11', '2019-03-06 09:54:11'),
(458, '000139190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 09:57:36', '2019-03-06 09:57:36'),
(459, '000140190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 09:57:36', '2019-03-06 09:57:36'),
(460, '000141190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 10:04:09', '2019-03-06 10:04:09'),
(461, '000142190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 10:04:12', '2019-03-06 10:04:12'),
(462, '000143190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 10:08:05', '2019-03-06 10:08:05'),
(463, '000144190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 10:08:08', '2019-03-06 10:08:08'),
(464, '000145190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 10:09:47', '2019-03-06 10:09:47'),
(465, '000146190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 10:09:50', '2019-03-06 10:09:50'),
(466, '000147190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 10:20:21', '2019-03-06 10:20:21'),
(467, '000148190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 10:20:22', '2019-03-06 10:20:22'),
(468, '000149190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 10:39:18', '2019-03-06 10:39:18'),
(469, '000150190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 10:39:49', '2019-03-06 10:39:49'),
(470, '000151190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 10:43:26', '2019-03-06 10:43:26'),
(471, '000152190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 10:43:46', '2019-03-06 10:43:46'),
(472, '000153190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 10:47:22', '2019-03-06 10:47:22'),
(473, '000154190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 10:47:23', '2019-03-06 10:47:23'),
(474, '000155190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 10:48:37', '2019-03-06 10:48:37'),
(475, '000156190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 10:48:38', '2019-03-06 10:48:38'),
(476, '000157190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 10:49:03', '2019-03-06 10:49:03'),
(477, '000158190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 10:49:04', '2019-03-06 10:49:04'),
(478, '000159190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 10:52:25', '2019-03-06 10:52:25'),
(479, '000160190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 10:52:54', '2019-03-06 10:52:54'),
(480, '000161190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 10:52:55', '2019-03-06 10:52:55'),
(481, '000162190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 10:53:45', '2019-03-06 10:53:45'),
(482, '000163190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-06 10:53:46', '2019-03-06 10:53:46'),
(483, '000164190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 04:26:44', '2019-03-07 04:26:44'),
(484, '000165190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 04:26:45', '2019-03-07 04:26:45'),
(485, '000166190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 04:28:19', '2019-03-07 04:28:19'),
(486, '000167190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 04:28:19', '2019-03-07 04:28:19'),
(487, '000168190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 04:29:15', '2019-03-07 04:29:15'),
(488, '000169190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 04:29:15', '2019-03-07 04:29:15'),
(489, '000170190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 04:30:27', '2019-03-07 04:30:27'),
(490, '000171190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 04:30:27', '2019-03-07 04:30:27'),
(491, '000172190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 04:30:58', '2019-03-07 04:30:58'),
(492, '000173190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 04:30:58', '2019-03-07 04:30:58'),
(493, '000174190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 04:32:09', '2019-03-07 04:32:09'),
(494, '000175190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 04:32:09', '2019-03-07 04:32:09'),
(495, '000176190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 04:32:49', '2019-03-07 04:32:49'),
(496, '000177190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 04:32:49', '2019-03-07 04:32:49'),
(497, '000178190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 04:51:52', '2019-03-07 04:51:52'),
(498, '000179190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 04:51:53', '2019-03-07 04:51:53'),
(499, '000180190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 04:53:15', '2019-03-07 04:53:15'),
(500, '000181190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 04:53:15', '2019-03-07 04:53:15'),
(501, '000182190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 04:55:12', '2019-03-07 04:55:12'),
(502, '000183190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 04:55:13', '2019-03-07 04:55:13'),
(503, '000184190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 04:55:34', '2019-03-07 04:55:34'),
(504, '000185190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 04:55:34', '2019-03-07 04:55:34'),
(505, '000186190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 04:57:19', '2019-03-07 04:57:19'),
(506, '000187190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 04:57:19', '2019-03-07 04:57:19'),
(507, '000188190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 04:57:50', '2019-03-07 04:57:50'),
(508, '000189190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 04:57:51', '2019-03-07 04:57:51'),
(509, '000190190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 04:58:12', '2019-03-07 04:58:12'),
(510, '000191190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 04:58:12', '2019-03-07 04:58:12'),
(511, '000192190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 04:59:48', '2019-03-07 04:59:48'),
(512, '000193190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 04:59:48', '2019-03-07 04:59:48'),
(513, '000194190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:02:39', '2019-03-07 05:02:39'),
(514, '000195190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:02:39', '2019-03-07 05:02:39'),
(515, '000196190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:03:27', '2019-03-07 05:03:27'),
(516, '000197190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:03:28', '2019-03-07 05:03:28'),
(517, '000198190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:03:50', '2019-03-07 05:03:50'),
(518, '000199190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:03:50', '2019-03-07 05:03:50'),
(519, '000200190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:08:07', '2019-03-07 05:08:07'),
(520, '000201190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:08:07', '2019-03-07 05:08:07'),
(521, '000202190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:08:40', '2019-03-07 05:08:40'),
(522, '000203190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:08:41', '2019-03-07 05:08:41'),
(523, '000204190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:08:57', '2019-03-07 05:08:57'),
(524, '000205190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:08:58', '2019-03-07 05:08:58'),
(525, '000206190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:09:26', '2019-03-07 05:09:26'),
(526, '000207190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:09:26', '2019-03-07 05:09:26'),
(527, '000208190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:12:05', '2019-03-07 05:12:05'),
(528, '000209190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:12:05', '2019-03-07 05:12:05'),
(529, '000210190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:16:34', '2019-03-07 05:16:34'),
(530, '000211190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:16:35', '2019-03-07 05:16:35'),
(531, '000212190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:19:41', '2019-03-07 05:19:41'),
(532, '000213190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:19:42', '2019-03-07 05:19:42'),
(533, '000214190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:20:26', '2019-03-07 05:20:26'),
(534, '000215190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:20:26', '2019-03-07 05:20:26'),
(535, '000216190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:20:50', '2019-03-07 05:20:50'),
(536, '000217190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:20:51', '2019-03-07 05:20:51'),
(537, '000218190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:25:18', '2019-03-07 05:25:18'),
(538, '000219190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:25:18', '2019-03-07 05:25:18'),
(539, '000220190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:32:10', '2019-03-07 05:32:10'),
(540, '000221190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:32:10', '2019-03-07 05:32:10'),
(541, '000222190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:32:41', '2019-03-07 05:32:41'),
(542, '000223190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:32:41', '2019-03-07 05:32:41'),
(543, '000224190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:33:16', '2019-03-07 05:33:16'),
(544, '000225190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:33:17', '2019-03-07 05:33:17'),
(545, '000226190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:34:53', '2019-03-07 05:34:53'),
(546, '000227190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:34:54', '2019-03-07 05:34:54'),
(547, '000228190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:40:18', '2019-03-07 05:40:18'),
(548, '000229190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:40:19', '2019-03-07 05:40:19'),
(549, '000230190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:41:29', '2019-03-07 05:41:29'),
(550, '000231190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:41:29', '2019-03-07 05:41:29'),
(551, '000232190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:41:59', '2019-03-07 05:41:59'),
(552, '000233190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:42:00', '2019-03-07 05:42:00'),
(553, '000234190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:43:16', '2019-03-07 05:43:16'),
(554, '000235190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:43:16', '2019-03-07 05:43:16'),
(555, '000236190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:44:09', '2019-03-07 05:44:09'),
(556, '000237190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:44:10', '2019-03-07 05:44:10'),
(557, '000238190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:44:10', '2019-03-07 05:44:10'),
(558, '000239190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:45:19', '2019-03-07 05:45:19'),
(559, '000240190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:45:19', '2019-03-07 05:45:19'),
(560, '000241190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:45:19', '2019-03-07 05:45:19'),
(561, '000242190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:45:55', '2019-03-07 05:45:55'),
(562, '000243190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:45:55', '2019-03-07 05:45:55'),
(563, '000244190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:45:55', '2019-03-07 05:45:55'),
(564, '000245190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:45:56', '2019-03-07 05:45:56'),
(565, '000246190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:46:26', '2019-03-07 05:46:26'),
(566, '000247190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:46:26', '2019-03-07 05:46:26'),
(567, '000248190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:48:20', '2019-03-07 05:48:20'),
(568, '000249190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:48:21', '2019-03-07 05:48:21'),
(569, '000250190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:50:03', '2019-03-07 05:50:03'),
(570, '000251190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:50:04', '2019-03-07 05:50:04'),
(571, '000252190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:50:04', '2019-03-07 05:50:04'),
(572, '000253190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:54:42', '2019-03-07 05:54:42'),
(573, '000254190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 05:54:43', '2019-03-07 05:54:43'),
(574, '000255190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 06:02:30', '2019-03-07 06:02:30'),
(575, '000256190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 06:02:31', '2019-03-07 06:02:31'),
(576, '000257190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 06:11:48', '2019-03-07 06:11:48'),
(577, '000258190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 06:11:48', '2019-03-07 06:11:48'),
(578, '000259190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 06:12:16', '2019-03-07 06:12:16'),
(579, '000260190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 06:13:10', '2019-03-07 06:13:10'),
(580, '000261190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 06:13:10', '2019-03-07 06:13:10'),
(581, '000262190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 06:14:12', '2019-03-07 06:14:12'),
(582, '000263190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 06:24:46', '2019-03-07 06:24:46'),
(583, '000264190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 06:27:05', '2019-03-07 06:27:05'),
(584, '000265190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 06:27:06', '2019-03-07 06:27:06'),
(585, '000266190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 06:27:57', '2019-03-07 06:27:57'),
(586, '000267190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 06:27:57', '2019-03-07 06:27:57'),
(587, '000268190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 06:32:37', '2019-03-07 06:32:37'),
(588, '000269190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 06:33:09', '2019-03-07 06:33:09'),
(589, '000270190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 06:35:49', '2019-03-07 06:35:49'),
(590, '000271190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 06:36:54', '2019-03-07 06:36:54'),
(591, '000272190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 06:42:24', '2019-03-07 06:42:24'),
(592, '000273190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 06:42:56', '2019-03-07 06:42:56'),
(593, '000274190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 06:43:47', '2019-03-07 06:43:47'),
(594, '000275190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 06:43:47', '2019-03-07 06:43:47'),
(595, '000276190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 06:52:46', '2019-03-07 06:52:46'),
(596, '000277190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 06:53:08', '2019-03-07 06:53:08'),
(597, '000001190204BC01_A001002002002', '1602001', '04B19BC', 1, '2019-03-07 06:56:15', '2019-03-07 06:56:15'),
(598, '000002190204BC01_A001002002002', '1602001', '04B19BC', 1, '2019-03-07 06:56:16', '2019-03-07 06:56:16'),
(599, '000003190204BC01_A001002002002', '1602001', '04B19BC', 1, '2019-03-07 06:56:16', '2019-03-07 06:56:16'),
(600, '000004190204BC01_A001002002002', '1602001', '04B19BC', 1, '2019-03-07 06:56:16', '2019-03-07 06:56:16'),
(601, '000005190204BC01_A001002002002', '1602001', '04B19BC', 1, '2019-03-07 06:56:17', '2019-03-07 06:56:17'),
(602, '000006190204BC01_A001002002002', '1602001', '04B19BC', 1, '2019-03-07 06:56:17', '2019-03-07 06:56:17'),
(603, '000007190204BC01_A001002002002', '1602001', '04B19BC', 1, '2019-03-07 06:56:17', '2019-03-07 06:56:17'),
(604, '000278190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 07:00:14', '2019-03-07 07:00:14'),
(605, '000279190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 07:00:15', '2019-03-07 07:00:15'),
(606, '000280190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 07:00:15', '2019-03-07 07:00:15'),
(607, '000281190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 07:03:14', '2019-03-07 07:03:14'),
(608, '000282190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 07:03:14', '2019-03-07 07:03:14'),
(609, '000283190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 07:03:15', '2019-03-07 07:03:15'),
(610, '000284190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 07:03:15', '2019-03-07 07:03:15'),
(611, '000285190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 07:03:15', '2019-03-07 07:03:15'),
(612, '000286190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 07:03:49', '2019-03-07 07:03:49'),
(613, '000287190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 07:03:49', '2019-03-07 07:03:49'),
(614, '000288190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 07:03:50', '2019-03-07 07:03:50'),
(615, '000289190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 07:03:50', '2019-03-07 07:03:50'),
(616, '000290190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 07:03:50', '2019-03-07 07:03:50'),
(617, '000291190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 07:03:50', '2019-03-07 07:03:50'),
(618, '000292190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 07:03:51', '2019-03-07 07:03:51'),
(619, '000293190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 07:03:51', '2019-03-07 07:03:51'),
(620, '000294190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 07:04:27', '2019-03-07 07:04:27'),
(621, '000295190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 07:04:27', '2019-03-07 07:04:27'),
(622, '000296190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 07:04:28', '2019-03-07 07:04:28'),
(623, '000297190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 07:04:28', '2019-03-07 07:04:28'),
(624, '000298190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 07:04:28', '2019-03-07 07:04:28'),
(625, '000299190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 07:05:44', '2019-03-07 07:05:44'),
(626, '000300190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 07:05:44', '2019-03-07 07:05:44'),
(627, '000301190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 07:05:44', '2019-03-07 07:05:44'),
(628, '000302190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 07:05:44', '2019-03-07 07:05:44'),
(629, '000303190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 07:05:45', '2019-03-07 07:05:45'),
(630, '000304190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 07:06:54', '2019-03-07 07:06:54'),
(631, '000305190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 07:06:55', '2019-03-07 07:06:55'),
(632, '000306190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 07:06:55', '2019-03-07 07:06:55'),
(633, '000307190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 07:06:55', '2019-03-07 07:06:55'),
(634, '000308190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 07:06:56', '2019-03-07 07:06:56'),
(635, '000309190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 07:07:51', '2019-03-07 07:07:51'),
(636, '000310190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 07:07:51', '2019-03-07 07:07:51'),
(637, '000311190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 07:07:52', '2019-03-07 07:07:52'),
(638, '000312190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 07:07:52', '2019-03-07 07:07:52'),
(639, '000313190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 07:07:52', '2019-03-07 07:07:52'),
(640, '000314190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 07:07:52', '2019-03-07 07:07:52'),
(641, '000315190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 07:09:31', '2019-03-07 07:09:31'),
(642, '000316190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 07:09:31', '2019-03-07 07:09:31'),
(643, '000317190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 07:09:31', '2019-03-07 07:09:31'),
(644, '000318190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 07:09:32', '2019-03-07 07:09:32'),
(645, '000319190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 07:10:10', '2019-03-07 07:10:10'),
(646, '000320190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 07:10:10', '2019-03-07 07:10:10'),
(647, '000321190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 07:10:10', '2019-03-07 07:10:10'),
(648, '000322190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 07:10:55', '2019-03-07 07:10:55'),
(649, '000323190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 07:10:55', '2019-03-07 07:10:55'),
(650, '000324190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 07:10:55', '2019-03-07 07:10:55'),
(651, '000325190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:02:23', '2019-03-07 08:02:23'),
(652, '000326190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:02:24', '2019-03-07 08:02:24'),
(653, '000327190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:02:24', '2019-03-07 08:02:24'),
(654, '000328190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:03:51', '2019-03-07 08:03:51'),
(655, '000329190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:03:52', '2019-03-07 08:03:52'),
(656, '000330190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:03:52', '2019-03-07 08:03:52'),
(657, '000331190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:03:52', '2019-03-07 08:03:52'),
(658, '000332190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:07:11', '2019-03-07 08:07:11'),
(659, '000333190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:07:12', '2019-03-07 08:07:12'),
(660, '000334190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:07:12', '2019-03-07 08:07:12'),
(661, '000335190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:07:12', '2019-03-07 08:07:12'),
(662, '000336190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:07:12', '2019-03-07 08:07:12'),
(663, '000337190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:07:12', '2019-03-07 08:07:12'),
(664, '000338190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:08:48', '2019-03-07 08:08:48'),
(665, '000339190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:08:49', '2019-03-07 08:08:49'),
(666, '000340190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:08:49', '2019-03-07 08:08:49'),
(667, '000341190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:08:49', '2019-03-07 08:08:49'),
(668, '000342190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:08:49', '2019-03-07 08:08:49'),
(669, '000343190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:08:49', '2019-03-07 08:08:49'),
(670, '000344190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:10:44', '2019-03-07 08:10:44'),
(671, '000345190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:10:45', '2019-03-07 08:10:45'),
(672, '000346190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:10:45', '2019-03-07 08:10:45'),
(673, '000347190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:10:45', '2019-03-07 08:10:45'),
(674, '000348190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:10:46', '2019-03-07 08:10:46'),
(675, '000349190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:11:13', '2019-03-07 08:11:13'),
(676, '000350190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:11:14', '2019-03-07 08:11:14'),
(677, '000351190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:11:14', '2019-03-07 08:11:14'),
(678, '000352190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:11:14', '2019-03-07 08:11:14'),
(679, '000353190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:11:15', '2019-03-07 08:11:15'),
(680, '000354190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:12:08', '2019-03-07 08:12:08'),
(681, '000355190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:12:08', '2019-03-07 08:12:08'),
(682, '000356190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:12:08', '2019-03-07 08:12:08'),
(683, '000357190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:12:09', '2019-03-07 08:12:09'),
(684, '000358190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:12:09', '2019-03-07 08:12:09'),
(685, '000359190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:15:40', '2019-03-07 08:15:40'),
(686, '000360190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:15:40', '2019-03-07 08:15:40'),
(687, '000361190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:15:40', '2019-03-07 08:15:40'),
(688, '000362190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:16:14', '2019-03-07 08:16:14'),
(689, '000363190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:16:14', '2019-03-07 08:16:14'),
(690, '000364190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:16:14', '2019-03-07 08:16:14'),
(691, '000365190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:16:15', '2019-03-07 08:16:15'),
(692, '000366190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:16:15', '2019-03-07 08:16:15'),
(693, '000367190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:16:15', '2019-03-07 08:16:15'),
(694, '000368190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:16:57', '2019-03-07 08:16:57'),
(695, '000369190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:16:58', '2019-03-07 08:16:58'),
(696, '000370190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:16:58', '2019-03-07 08:16:58'),
(697, '000371190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:16:58', '2019-03-07 08:16:58'),
(698, '000372190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:16:58', '2019-03-07 08:16:58'),
(699, '000373190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:16:58', '2019-03-07 08:16:58'),
(700, '000374190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:18:34', '2019-03-07 08:18:34'),
(701, '000375190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:18:35', '2019-03-07 08:18:35'),
(702, '000376190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:18:35', '2019-03-07 08:18:35'),
(703, '000377190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:18:35', '2019-03-07 08:18:35'),
(704, '000378190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:18:35', '2019-03-07 08:18:35'),
(705, '000379190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:18:35', '2019-03-07 08:18:35'),
(706, '000380190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:18:56', '2019-03-07 08:18:56'),
(707, '000381190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:18:56', '2019-03-07 08:18:56'),
(708, '000382190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:18:57', '2019-03-07 08:18:57'),
(709, '000383190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:18:57', '2019-03-07 08:18:57'),
(710, '000384190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:18:57', '2019-03-07 08:18:57'),
(711, '000385190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:18:57', '2019-03-07 08:18:57'),
(712, '000386190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:20:52', '2019-03-07 08:20:52'),
(713, '000387190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:20:52', '2019-03-07 08:20:52'),
(714, '000388190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:20:53', '2019-03-07 08:20:53'),
(715, '000389190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:20:53', '2019-03-07 08:20:53'),
(716, '000390190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:22:56', '2019-03-07 08:22:56'),
(717, '000391190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:23:41', '2019-03-07 08:23:41'),
(718, '000392190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:24:43', '2019-03-07 08:24:43'),
(719, '000393190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:24:44', '2019-03-07 08:24:44'),
(720, '000394190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:24:44', '2019-03-07 08:24:44'),
(721, '000395190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:24:44', '2019-03-07 08:24:44'),
(722, '000396190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:26:11', '2019-03-07 08:26:11'),
(723, '000397190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:26:11', '2019-03-07 08:26:11'),
(724, '000398190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:26:11', '2019-03-07 08:26:11'),
(725, '000399190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:29:11', '2019-03-07 08:29:11'),
(726, '000400190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:29:11', '2019-03-07 08:29:11'),
(727, '000401190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:29:12', '2019-03-07 08:29:12'),
(728, '000402190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:30:21', '2019-03-07 08:30:21'),
(729, '000403190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:30:21', '2019-03-07 08:30:21'),
(730, '000404190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:30:22', '2019-03-07 08:30:22'),
(731, '000405190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:30:22', '2019-03-07 08:30:22'),
(732, '000406190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:32:44', '2019-03-07 08:32:44'),
(733, '000407190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:32:44', '2019-03-07 08:32:44'),
(734, '000408190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:32:45', '2019-03-07 08:32:45'),
(735, '000409190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:32:45', '2019-03-07 08:32:45'),
(736, '000410190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:34:29', '2019-03-07 08:34:29'),
(737, '000411190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:34:29', '2019-03-07 08:34:29'),
(738, '000412190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:35:33', '2019-03-07 08:35:33'),
(739, '000413190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:35:34', '2019-03-07 08:35:34'),
(740, '000414190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:35:54', '2019-03-07 08:35:54'),
(741, '000415190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:35:55', '2019-03-07 08:35:55'),
(742, '000416190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:35:55', '2019-03-07 08:35:55'),
(743, '000417190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:35:55', '2019-03-07 08:35:55'),
(744, '000418190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:35:56', '2019-03-07 08:35:56'),
(745, '000419190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:35:56', '2019-03-07 08:35:56'),
(746, '000420190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:35:56', '2019-03-07 08:35:56'),
(747, '000421190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:35:56', '2019-03-07 08:35:56'),
(748, '000422190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:35:57', '2019-03-07 08:35:57'),
(749, '000423190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:35:57', '2019-03-07 08:35:57'),
(750, '000424190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:35:57', '2019-03-07 08:35:57'),
(751, '000425190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:35:57', '2019-03-07 08:35:57'),
(752, '000426190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:35:58', '2019-03-07 08:35:58'),
(753, '000427190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:35:58', '2019-03-07 08:35:58'),
(754, '000428190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:35:58', '2019-03-07 08:35:58'),
(755, '000429190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:35:58', '2019-03-07 08:35:58'),
(756, '000430190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:35:59', '2019-03-07 08:35:59'),
(757, '000431190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:35:59', '2019-03-07 08:35:59'),
(758, '000432190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:35:59', '2019-03-07 08:35:59'),
(759, '000433190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:36:00', '2019-03-07 08:36:00'),
(760, '000434190205BB01_A001002002002', '1602001', '05B19BB', 1, '2019-03-07 08:37:56', '2019-03-07 08:37:56'),
(761, '000435190205BB01_A001002002002', '1602001', '05B19BB', 1, '2019-03-07 08:37:57', '2019-03-07 08:37:57'),
(762, '000436190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:38:58', '2019-03-07 08:38:58'),
(763, '000437190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:38:58', '2019-03-07 08:38:58'),
(764, '000438190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:40:10', '2019-03-07 08:40:10'),
(765, '000439190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:40:11', '2019-03-07 08:40:11'),
(766, '000440190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:41:10', '2019-03-07 08:41:10'),
(767, '000441190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:41:11', '2019-03-07 08:41:11'),
(768, '000442190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:42:11', '2019-03-07 08:42:11'),
(769, '000443190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:42:11', '2019-03-07 08:42:11'),
(770, '000444190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:42:11', '2019-03-07 08:42:11'),
(771, '000445190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:47:43', '2019-03-07 08:47:43'),
(772, '000446190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:47:43', '2019-03-07 08:47:43'),
(773, '000447190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:47:44', '2019-03-07 08:47:44'),
(774, '000448190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:47:44', '2019-03-07 08:47:44'),
(775, '000449190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:48:58', '2019-03-07 08:48:58'),
(776, '000450190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:48:58', '2019-03-07 08:48:58'),
(777, '000451190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:48:58', '2019-03-07 08:48:58'),
(778, '000452190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:48:59', '2019-03-07 08:48:59'),
(779, '000453190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:48:59', '2019-03-07 08:48:59'),
(780, '000454190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:48:59', '2019-03-07 08:48:59'),
(781, '000455190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:50:21', '2019-03-07 08:50:21'),
(782, '000456190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:50:21', '2019-03-07 08:50:21'),
(783, '000457190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:50:22', '2019-03-07 08:50:22'),
(784, '000458190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:51:57', '2019-03-07 08:51:57'),
(785, '000459190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 08:52:20', '2019-03-07 08:52:20'),
(786, '000460190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:12:23', '2019-03-07 09:12:23'),
(787, '000461190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:15:52', '2019-03-07 09:15:52'),
(788, '000462190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:27:32', '2019-03-07 09:27:32'),
(789, '000463190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:28:46', '2019-03-07 09:28:46'),
(790, '000464190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:29:14', '2019-03-07 09:29:14'),
(791, '000465190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:29:50', '2019-03-07 09:29:50'),
(792, '000466190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:30:17', '2019-03-07 09:30:17'),
(793, '000467190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:31:23', '2019-03-07 09:31:23'),
(794, '000468190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:33:54', '2019-03-07 09:33:54'),
(795, '000469190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:41:01', '2019-03-07 09:41:01'),
(796, '000470190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:43:10', '2019-03-07 09:43:10'),
(797, '000471190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:43:10', '2019-03-07 09:43:10'),
(798, '000472190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:43:11', '2019-03-07 09:43:11'),
(799, '000473190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:43:11', '2019-03-07 09:43:11'),
(800, '000474190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:45:50', '2019-03-07 09:45:50'),
(801, '000475190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:48:42', '2019-03-07 09:48:42'),
(802, '000476190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:48:43', '2019-03-07 09:48:43'),
(803, '000477190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:48:43', '2019-03-07 09:48:43'),
(804, '000478190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:48:43', '2019-03-07 09:48:43'),
(805, '000479190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:48:43', '2019-03-07 09:48:43'),
(806, '000480190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:48:43', '2019-03-07 09:48:43'),
(807, '000481190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:48:44', '2019-03-07 09:48:44'),
(808, '000482190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:48:44', '2019-03-07 09:48:44'),
(809, '000483190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:48:44', '2019-03-07 09:48:44'),
(810, '000484190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:48:44', '2019-03-07 09:48:44'),
(811, '000485190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:48:45', '2019-03-07 09:48:45'),
(812, '000486190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:48:45', '2019-03-07 09:48:45'),
(813, '000487190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:48:45', '2019-03-07 09:48:45'),
(814, '000488190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:48:45', '2019-03-07 09:48:45'),
(815, '000489190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:48:45', '2019-03-07 09:48:45'),
(816, '000490190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:48:46', '2019-03-07 09:48:46'),
(817, '000491190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:48:46', '2019-03-07 09:48:46'),
(818, '000492190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:48:46', '2019-03-07 09:48:46'),
(819, '000493190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:48:46', '2019-03-07 09:48:46'),
(820, '000494190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:48:46', '2019-03-07 09:48:46'),
(821, '000495190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:52:10', '2019-03-07 09:52:10'),
(822, '000496190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:52:10', '2019-03-07 09:52:10'),
(823, '000497190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:52:10', '2019-03-07 09:52:10'),
(824, '000498190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:52:11', '2019-03-07 09:52:11'),
(825, '000499190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:52:11', '2019-03-07 09:52:11'),
(826, '000500190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:52:11', '2019-03-07 09:52:11'),
(827, '000501190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:52:12', '2019-03-07 09:52:12'),
(828, '000502190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:52:12', '2019-03-07 09:52:12'),
(829, '000503190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:52:12', '2019-03-07 09:52:12'),
(830, '000504190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:52:12', '2019-03-07 09:52:12'),
(831, '000505190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:52:13', '2019-03-07 09:52:13'),
(832, '000506190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:52:13', '2019-03-07 09:52:13'),
(833, '000507190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:52:13', '2019-03-07 09:52:13'),
(834, '000508190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:52:13', '2019-03-07 09:52:13'),
(835, '000509190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:52:13', '2019-03-07 09:52:13'),
(836, '000510190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:52:14', '2019-03-07 09:52:14'),
(837, '000511190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:52:14', '2019-03-07 09:52:14'),
(838, '000512190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:52:14', '2019-03-07 09:52:14'),
(839, '000513190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:52:14', '2019-03-07 09:52:14'),
(840, '000514190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:52:15', '2019-03-07 09:52:15'),
(841, '000515190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:53:19', '2019-03-07 09:53:19'),
(842, '000516190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:53:19', '2019-03-07 09:53:19'),
(843, '000517190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:53:20', '2019-03-07 09:53:20'),
(844, '000518190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:53:20', '2019-03-07 09:53:20'),
(845, '000519190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:53:20', '2019-03-07 09:53:20'),
(846, '000520190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:53:20', '2019-03-07 09:53:20'),
(847, '000521190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:53:20', '2019-03-07 09:53:20'),
(848, '000522190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:53:21', '2019-03-07 09:53:21'),
(849, '000523190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:53:21', '2019-03-07 09:53:21'),
(850, '000524190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:53:21', '2019-03-07 09:53:21'),
(851, '000525190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:53:21', '2019-03-07 09:53:21'),
(852, '000526190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:53:22', '2019-03-07 09:53:22'),
(853, '000527190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:53:22', '2019-03-07 09:53:22'),
(854, '000528190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:53:22', '2019-03-07 09:53:22'),
(855, '000529190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:53:22', '2019-03-07 09:53:22'),
(856, '000530190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:53:22', '2019-03-07 09:53:22'),
(857, '000531190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:53:23', '2019-03-07 09:53:23'),
(858, '000532190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:53:23', '2019-03-07 09:53:23'),
(859, '000533190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:53:23', '2019-03-07 09:53:23'),
(860, '000534190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:53:23', '2019-03-07 09:53:23'),
(861, '000535190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:54:31', '2019-03-07 09:54:31'),
(862, '000536190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:54:31', '2019-03-07 09:54:31'),
(863, '000537190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:54:31', '2019-03-07 09:54:31'),
(864, '000538190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:54:31', '2019-03-07 09:54:31'),
(865, '000539190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:54:32', '2019-03-07 09:54:32'),
(866, '000540190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:54:53', '2019-03-07 09:54:53'),
(867, '000541190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:54:53', '2019-03-07 09:54:53'),
(868, '000542190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:54:53', '2019-03-07 09:54:53'),
(869, '000543190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:54:53', '2019-03-07 09:54:53'),
(870, '000544190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:54:54', '2019-03-07 09:54:54'),
(871, '000545190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:55:30', '2019-03-07 09:55:30'),
(872, '000546190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:55:30', '2019-03-07 09:55:30'),
(873, '000547190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:55:31', '2019-03-07 09:55:31'),
(874, '000548190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:56:22', '2019-03-07 09:56:22'),
(875, '000549190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:56:23', '2019-03-07 09:56:23'),
(876, '000550190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:57:18', '2019-03-07 09:57:18'),
(877, '000551190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:57:32', '2019-03-07 09:57:32'),
(878, '000552190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:57:32', '2019-03-07 09:57:32'),
(879, '000553190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:57:33', '2019-03-07 09:57:33'),
(880, '000554190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:59:13', '2019-03-07 09:59:13'),
(881, '000555190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:59:13', '2019-03-07 09:59:13'),
(882, '000556190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 09:59:14', '2019-03-07 09:59:14'),
(883, '000557190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 10:09:50', '2019-03-07 10:09:50'),
(884, '000558190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 10:09:50', '2019-03-07 10:09:50'),
(885, '000559190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 10:10:17', '2019-03-07 10:10:17'),
(886, '000560190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 10:10:17', '2019-03-07 10:10:17'),
(887, '000561190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 10:10:18', '2019-03-07 10:10:18'),
(888, '000562190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 10:10:18', '2019-03-07 10:10:18'),
(889, '000563190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 10:18:34', '2019-03-07 10:18:34'),
(890, '000564190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 10:18:34', '2019-03-07 10:18:34'),
(891, '000565190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 10:18:35', '2019-03-07 10:18:35'),
(892, '000566190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 10:48:44', '2019-03-07 10:48:44'),
(893, '000567190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 10:48:46', '2019-03-07 10:48:46'),
(894, '000568190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 10:48:46', '2019-03-07 10:48:46'),
(895, '000569190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 10:48:46', '2019-03-07 10:48:46'),
(896, '000570190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 10:52:54', '2019-03-07 10:52:54'),
(897, '000571190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 10:52:55', '2019-03-07 10:52:55'),
(898, '000572190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 10:52:55', '2019-03-07 10:52:55'),
(899, '000573190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 10:53:27', '2019-03-07 10:53:27'),
(900, '000574190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 10:54:46', '2019-03-07 10:54:46'),
(901, '000575190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 10:55:31', '2019-03-07 10:55:31'),
(902, '000576190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 10:55:59', '2019-03-07 10:55:59'),
(903, '000577190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 10:57:15', '2019-03-07 10:57:15'),
(904, '000578190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 10:57:15', '2019-03-07 10:57:15'),
(905, '000579190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 10:57:16', '2019-03-07 10:57:16'),
(906, '000580190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 10:59:04', '2019-03-07 10:59:04'),
(907, '000581190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 10:59:05', '2019-03-07 10:59:05'),
(908, '000582190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 10:59:05', '2019-03-07 10:59:05'),
(909, '000583190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 10:59:06', '2019-03-07 10:59:06');
INSERT INTO `barcodes` (`id`, `barcode`, `item`, `batch_no`, `total_print`, `created_at`, `updated_at`) VALUES
(910, '000584190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:00:34', '2019-03-07 11:00:34'),
(911, '000585190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:00:35', '2019-03-07 11:00:35'),
(912, '000586190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:00:35', '2019-03-07 11:00:35'),
(913, '000587190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:00:36', '2019-03-07 11:00:36'),
(914, '000588190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:01:22', '2019-03-07 11:01:22'),
(915, '000589190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:01:23', '2019-03-07 11:01:23'),
(916, '000590190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:01:23', '2019-03-07 11:01:23'),
(917, '000591190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:04:43', '2019-03-07 11:04:43'),
(918, '000592190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:04:44', '2019-03-07 11:04:44'),
(919, '000593190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:04:44', '2019-03-07 11:04:44'),
(920, '000594190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:04:44', '2019-03-07 11:04:44'),
(921, '000595190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:05:38', '2019-03-07 11:05:38'),
(922, '000596190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:05:39', '2019-03-07 11:05:39'),
(923, '000597190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:05:39', '2019-03-07 11:05:39'),
(924, '000598190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:05:39', '2019-03-07 11:05:39'),
(925, '000599190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:06:11', '2019-03-07 11:06:11'),
(926, '000600190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:07:48', '2019-03-07 11:07:48'),
(927, '000601190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:07:48', '2019-03-07 11:07:48'),
(928, '000602190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:07:48', '2019-03-07 11:07:48'),
(929, '000603190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:08:09', '2019-03-07 11:08:09'),
(930, '000604190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:08:10', '2019-03-07 11:08:10'),
(931, '000605190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:08:10', '2019-03-07 11:08:10'),
(932, '000606190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:08:52', '2019-03-07 11:08:52'),
(933, '000607190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:08:53', '2019-03-07 11:08:53'),
(934, '000608190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:08:53', '2019-03-07 11:08:53'),
(935, '000609190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:08:53', '2019-03-07 11:08:53'),
(936, '000610190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:09:56', '2019-03-07 11:09:56'),
(937, '000611190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:09:57', '2019-03-07 11:09:57'),
(938, '000612190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:09:57', '2019-03-07 11:09:57'),
(939, '000613190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:09:57', '2019-03-07 11:09:57'),
(940, '000614190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:09:57', '2019-03-07 11:09:57'),
(941, '000615190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:09:58', '2019-03-07 11:09:58'),
(942, '000616190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:09:58', '2019-03-07 11:09:58'),
(943, '000617190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:09:58', '2019-03-07 11:09:58'),
(944, '000618190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:09:58', '2019-03-07 11:09:58'),
(945, '000619190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:09:59', '2019-03-07 11:09:59'),
(946, '000620190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:12:22', '2019-03-07 11:12:22'),
(947, '000621190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:12:22', '2019-03-07 11:12:22'),
(948, '000622190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:12:23', '2019-03-07 11:12:23'),
(949, '000623190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:12:23', '2019-03-07 11:12:23'),
(950, '000624190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:12:23', '2019-03-07 11:12:23'),
(951, '000625190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:13:04', '2019-03-07 11:13:04'),
(952, '000626190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:13:04', '2019-03-07 11:13:04'),
(953, '000627190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:13:05', '2019-03-07 11:13:05'),
(954, '000628190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:13:05', '2019-03-07 11:13:05'),
(955, '000629190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:13:05', '2019-03-07 11:13:05'),
(956, '000630190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:14:40', '2019-03-07 11:14:40'),
(957, '000631190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:14:40', '2019-03-07 11:14:40'),
(958, '000632190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:14:40', '2019-03-07 11:14:40'),
(959, '000633190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:14:41', '2019-03-07 11:14:41'),
(960, '000634190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:14:41', '2019-03-07 11:14:41'),
(961, '000635190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:18:43', '2019-03-07 11:18:43'),
(962, '000636190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:18:43', '2019-03-07 11:18:43'),
(963, '000637190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:18:44', '2019-03-07 11:18:44'),
(964, '000638190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:18:44', '2019-03-07 11:18:44'),
(965, '000639190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:18:44', '2019-03-07 11:18:44'),
(966, '000640190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:18:44', '2019-03-07 11:18:44'),
(967, '000641190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:18:44', '2019-03-07 11:18:44'),
(968, '000642190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:18:45', '2019-03-07 11:18:45'),
(969, '000643190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:18:45', '2019-03-07 11:18:45'),
(970, '000644190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:18:45', '2019-03-07 11:18:45'),
(971, '000645190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:22:00', '2019-03-07 11:22:00'),
(972, '000646190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:22:01', '2019-03-07 11:22:01'),
(973, '000647190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:22:01', '2019-03-07 11:22:01'),
(974, '000648190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:22:01', '2019-03-07 11:22:01'),
(975, '000649190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:22:01', '2019-03-07 11:22:01'),
(976, '000650190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:31:10', '2019-03-07 11:31:10'),
(977, '000651190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:31:11', '2019-03-07 11:31:11'),
(978, '000652190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:34:10', '2019-03-07 11:34:10'),
(979, '000653190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:34:10', '2019-03-07 11:34:10'),
(980, '000654190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:34:10', '2019-03-07 11:34:10'),
(981, '000655190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:36:47', '2019-03-07 11:36:47'),
(982, '000656190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:36:48', '2019-03-07 11:36:48'),
(983, '000657190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:36:48', '2019-03-07 11:36:48'),
(984, '000658190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:38:09', '2019-03-07 11:38:09'),
(985, '000659190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:39:37', '2019-03-07 11:39:37'),
(986, '000660190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-07 11:40:41', '2019-03-07 11:40:41'),
(987, '000661190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-03-19 04:40:12', '2019-03-19 04:40:12'),
(988, '000662190205BA160200101_A001002', '1602001', '05B19BA', 1, '2019-03-19 04:54:30', '2019-03-19 04:54:30'),
(989, '000662190205BA01_A001002', '1602001', '05B19BA', 1, '2019-03-19 04:55:51', '2019-03-19 04:55:51'),
(990, '000663190205BA01_A001002', '1602001', '05B19BA', 1, '2019-03-19 04:56:09', '2019-03-19 04:56:09'),
(991, '000664190205BA01_A001002', '1602001', '05B19BA', 1, '2019-03-19 04:56:35', '2019-03-19 04:56:35'),
(992, '000665190205BA01_A001002', '1602001', '05B19BA', 1, '2019-03-19 04:56:36', '2019-03-19 04:56:36'),
(993, '000666190205BA01_A001002', '1602001', '05B19BA', 1, '2019-03-19 04:56:36', '2019-03-19 04:56:36'),
(994, '000667190205BA01_A001002', '1602001', '05B19BA', 1, '2019-03-19 04:56:36', '2019-03-19 04:56:36'),
(995, '000668190205BA01_A001002', '1602001', '05B19BA', 1, '2019-03-19 04:56:36', '2019-03-19 04:56:36'),
(996, '000669190205BA01_A001002', '1602001', '05B19BA', 1, '2019-03-19 04:56:37', '2019-03-19 04:56:37'),
(997, '000670190205BA01_A001002', '1602001', '05B19BA', 1, '2019-03-19 04:56:37', '2019-03-19 04:56:37'),
(998, '000671190205BA01_A001002', '1602001', '05B19BA', 1, '2019-03-19 04:56:37', '2019-03-19 04:56:37'),
(999, '000672190205BA01_A001002', '1602001', '05B19BA', 1, '2019-03-19 04:56:37', '2019-03-19 04:56:37'),
(1000, '000673190205BA01_A001002', '1602001', '05B19BA', 1, '2019-03-19 04:56:37', '2019-03-19 04:56:37'),
(1001, '000674190205BA01_A001002', '1602001', '05B19BA', 1, '2019-03-19 04:56:38', '2019-03-19 04:56:38'),
(1002, '000675190205BA01_A001002', '1602001', '05B19BA', 1, '2019-03-19 04:56:38', '2019-03-19 04:56:38'),
(1003, '000676190205BA01_A001002', '1602001', '05B19BA', 1, '2019-03-19 04:56:38', '2019-03-19 04:56:38'),
(1004, '000677190205BA01_A001002', '1602001', '05B19BA', 1, '2019-03-19 04:56:38', '2019-03-19 04:56:38'),
(1005, '000678190205BA01_A001002', '1602001', '05B19BA', 1, '2019-03-19 04:56:38', '2019-03-19 04:56:38'),
(1006, '000679190205BA01_A001002', '1602001', '05B19BA', 1, '2019-03-19 04:56:39', '2019-03-19 04:56:39'),
(1007, '000680190205BC01_A001002', '1602001', '05B19BC', 1, '2019-03-19 05:01:42', '2019-03-19 05:01:42'),
(1008, '000681190205B01_A001002', '1602001', '05B19BA', 1, '2019-03-19 05:04:47', '2019-03-19 05:04:47'),
(1009, '000681190205B160200101_A001002', '1602001', '05B19BA', 1, '2019-03-19 05:07:31', '2019-03-19 05:07:31'),
(1010, '000682190205B160200101_A001002', '1602001', '05B19BA', 1, '2019-03-19 05:07:32', '2019-03-19 05:07:32'),
(1011, '000681190205B160200101_A001002', '1602001', '05B19BA', 1, '2019-03-19 05:09:18', '2019-03-19 05:09:18'),
(1012, '000681190205BA011602001001002', '1602001', '05B19BA', 1, '2019-03-19 05:18:33', '2019-03-19 05:18:33'),
(1013, '000682190205BA011602001001002', '1602001', '05B19BA', 1, '2019-03-19 05:30:58', '2019-03-19 05:30:58'),
(1014, '000683190205BA011602001001002', '1602001', '05B19BA', 1, '2019-03-19 05:31:18', '2019-03-19 05:31:18'),
(1015, '000684190205BB011602001001002', '1602001', '05B19BB', 1, '2019-03-19 05:38:57', '2019-03-19 05:38:57'),
(1016, '000685190205BA011602001001002', '1602001', '05B19BA', 1, '2019-03-21 03:58:23', '2019-03-21 03:58:23'),
(1017, '000686190205BA011602001001002', '1602001', '05B19BA', 1, '2019-03-21 03:58:24', '2019-03-21 03:58:24'),
(1018, '000687190205BA011602001001002', '1602001', '05B19BA', 1, '2019-03-28 06:37:07', '2019-03-28 06:37:07'),
(1019, '000688190205BA011602001001002', '1602001', '05B19BA', 1, '2019-03-28 08:25:13', '2019-03-28 08:25:13'),
(1020, '000689190205BA011602001001002', '1602001', '05B19BA', 1, '2019-03-28 08:25:14', '2019-03-28 08:25:14'),
(1021, '000690190205BA011602001001002', '1602001', '05B19BA', 1, '2019-03-28 08:25:36', '2019-03-28 08:25:36'),
(1022, '000691190205BA011602001001002', '1602001', '05B19BA', 1, '2019-03-28 08:46:59', '2019-03-28 08:46:59'),
(1023, '000692190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-04-01 05:01:49', '2019-04-01 05:01:49'),
(1024, '000693190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-04-01 05:01:50', '2019-04-01 05:01:50'),
(1025, '000694190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-04-01 05:01:50', '2019-04-01 05:01:50'),
(1026, '000695190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-04-01 05:01:50', '2019-04-01 05:01:50'),
(1027, '000696190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-04-01 05:52:12', '2019-04-01 05:52:12'),
(1028, '000697190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-04-01 05:52:13', '2019-04-01 05:52:13');

-- --------------------------------------------------------

--
-- Table structure for table `current_scanning_order`
--

CREATE TABLE `current_scanning_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `scanner_id` int(10) NOT NULL,
  `sales_order` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `current_scanning_order`
--

INSERT INTO `current_scanning_order` (`id`, `scanner_id`, `sales_order`) VALUES
(1, 1, '123456'),
(2, 2, 'SBH001');

-- --------------------------------------------------------

--
-- Table structure for table `dailyshifts`
--

CREATE TABLE `dailyshifts` (
  `id` int(10) UNSIGNED NOT NULL,
  `production_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `shift` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `machine` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dailyshifts`
--

INSERT INTO `dailyshifts` (`id`, `production_date`, `shift`, `item`, `machine`, `added_by`, `created_at`, `updated_at`) VALUES
(21, '2019-02-05 00:00:00', 'B', '1602001', '01', '1', '2019-02-04 03:39:00', '2019-02-04 04:30:26');

-- --------------------------------------------------------

--
-- Table structure for table `dailyshift_user`
--

CREATE TABLE `dailyshift_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `dailyshift_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dailyshift_user`
--

INSERT INTO `dailyshift_user` (`id`, `dailyshift_id`, `user_id`, `created_at`, `updated_at`) VALUES
(59, 21, 8, NULL, NULL),
(60, 21, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `daily_shift_details`
--

CREATE TABLE `daily_shift_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `shift` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `worker` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `worker_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `machine` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` int(10) UNSIGNED NOT NULL,
  `device_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `device_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `device_ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`id`, `device_name`, `device_id`, `device_ip`, `device_type`, `created_at`, `updated_at`) VALUES
(1, 'Scanner 1', 'SCNR1', NULL, 'scanner', '2018-12-29 08:43:43', '2018-12-29 08:43:43'),
(2, 'Scanner 2', 'SCNR2', NULL, 'scanner', '2018-12-29 08:43:57', '2018-12-29 08:43:57'),
(3, 'Printer @ Machine 1', 'PNTR1', '543459', 'printer', '2018-12-29 08:44:15', '2018-12-29 11:32:31'),
(4, 'Printer @ Machine 2', 'PNTR2', '543465', 'printer', '2018-12-29 08:44:31', '2018-12-29 11:26:46');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sales_order` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transport_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_no` int(11) DEFAULT NULL,
  `delivery_time` datetime DEFAULT NULL,
  `delivery_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `name`, `user_id`, `sales_order`, `transport_no`, `reference_no`, `sl_no`, `delivery_time`, `delivery_data`, `created_at`, `updated_at`) VALUES
(2, 'Monzurul Islam', '1', 'SBH001', 'Ka-9999', 'asdasd', 1, '2019-01-03 22:48:09', '{\"29L18AA\":{\"item_name\":\"500ml Round Amber Glass Bottles\",\"item_code\":1601001,\"batch_no\":\"29L18AA\",\"pack_size\":56,\"total_cartoon\":1,\"total_qty\":56,\"barcodes\":[\"000001181229AA01_A001001002001\"]}}', '2019-01-03 16:48:09', '2019-01-03 16:48:09');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_infos`
--

CREATE TABLE `invoice_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revision_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `effective_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_infos`
--

INSERT INTO `invoice_infos` (`id`, `document_no`, `revision_no`, `effective_date`, `created_at`, `updated_at`) VALUES
(1, 'BG-IMS-F-STR-00', '01', '2015-06-22', NULL, '2018-12-30 15:04:26');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_code` int(11) NOT NULL,
  `item_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_code` int(11) NOT NULL,
  `pack_size` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `item_code`, `item_name`, `group_name`, `group_code`, `pack_size`, `added_by`, `created_at`, `updated_at`) VALUES
(1, 1601001, '500ml Round Amber Glass Bottles', 'FG-Galva', 109, 56, 1, '2018-12-29 08:47:27', '2018-12-29 08:47:27'),
(2, 1602001, '250ml Round Amber Glass Bottles', 'FG-Amber', 109, 76, 1, '2018-12-29 08:47:48', '2018-12-29 08:47:48'),
(3, 1603001, '250ml Oval  Amber Bottles', 'FG-Xatta', 109, 1, 1, '2018-12-29 08:48:02', '2018-12-29 08:48:02'),
(5, 5555555, '500ml Round Amber Glass Bottles', 'FG-Amber', 109, 345, 1, '2018-12-30 15:27:53', '2018-12-30 15:27:53');

-- --------------------------------------------------------

--
-- Table structure for table `machines`
--

CREATE TABLE `machines` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `machines`
--

INSERT INTO `machines` (`id`, `name`, `number`, `created_at`, `updated_at`) VALUES
(1, 'Machine 01', '01', '2018-12-29 08:44:46', '2018-12-29 08:44:46'),
(2, 'Machine 02', '02', '2018-12-29 08:44:57', '2018-12-29 08:44:57'),
(3, 'Machine 03', '03', '2018-12-29 08:45:06', '2018-12-29 08:45:06');

-- --------------------------------------------------------

--
-- Table structure for table `machine_scanners`
--

CREATE TABLE `machine_scanners` (
  `id` int(10) UNSIGNED NOT NULL,
  `barcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scanner_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_12_14_032356_create_machine_scanners_table', 1),
(4, '2018_12_15_162814_create_devices_table', 1),
(5, '2018_12_16_030605_create_machines_table', 1),
(6, '2018_12_16_035831_create_shifts_table', 1),
(7, '2018_12_16_044452_create_items_table', 1),
(8, '2018_12_18_172139_create_daily_shift_details_table', 1),
(9, '2018_12_19_133807_create_dailyshifts_table', 1),
(10, '2018_12_19_134022_create_dailyshift_user_table', 1),
(11, '2018_12_20_074141_create_barcodes_table', 1),
(12, '2018_12_24_124919_create_product_stock_ins_table', 1),
(13, '2018_12_24_180328_create_stockouts_table', 1),
(14, '2018_12_24_181437_create_product_stockout_stockin_table', 1),
(15, '2018_12_24_181645_create_temporarystockouts_table', 1),
(16, '2018_12_27_135609_create_current_scanning_order', 1),
(17, '2018_12_27_220538_create_invoices_table', 1),
(18, '2018_12_27_231544_create_invoice_infos_table', 1),
(19, '2018_12_29_184413_create_pagepermissions_table', 2),
(20, '2018_12_29_184619_create_pagepermission_user_table', 2),
(22, '2018_12_30_184532_create_acivity_logs_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `pagepermissions`
--

CREATE TABLE `pagepermissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `page_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pagepermissions`
--

INSERT INTO `pagepermissions` (`id`, `page_name`, `created_at`, `updated_at`) VALUES
(1, 'employee_view', NULL, NULL),
(2, 'employee_edit', NULL, NULL),
(3, 'employee_add', NULL, NULL),
(4, 'employee_delete', NULL, NULL),
(5, 'device_view', NULL, NULL),
(6, 'device_edit', NULL, NULL),
(7, 'device_add', NULL, NULL),
(8, 'device_delete', NULL, NULL),
(9, 'machine_view', NULL, NULL),
(10, 'machine_add', NULL, NULL),
(11, 'machine_edit', NULL, NULL),
(12, 'machine_delete', NULL, NULL),
(13, 'shift_view', NULL, NULL),
(14, 'shift_edit', NULL, NULL),
(15, 'shift_add', NULL, NULL),
(16, 'shift_delete', NULL, NULL),
(17, 'item_view', NULL, NULL),
(18, 'item_edit', NULL, NULL),
(19, 'item_add', NULL, NULL),
(20, 'item_delete', NULL, NULL),
(21, 'invoiceinfo_view', NULL, NULL),
(22, 'invoiceinfo_edit', NULL, NULL),
(23, 'invoice_customer', NULL, NULL),
(24, 'invoice_item', NULL, NULL),
(25, 'daily_shift', NULL, NULL),
(26, 'delivery_section', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pagepermission_user`
--

CREATE TABLE `pagepermission_user` (
  `pagepermission_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pagepermission_user`
--

INSERT INTO `pagepermission_user` (`pagepermission_id`, `user_id`) VALUES
(23, 12),
(15, 12),
(16, 12),
(25, 1),
(26, 1),
(7, 1),
(8, 1),
(6, 1),
(5, 1),
(3, 1),
(4, 1),
(2, 1),
(1, 1),
(23, 1),
(24, 1),
(22, 1),
(21, 1),
(19, 1),
(20, 1),
(18, 1),
(17, 1),
(10, 1),
(12, 1),
(11, 1),
(9, 1),
(15, 1),
(16, 1),
(14, 1),
(13, 1),
(6, 11),
(25, 11),
(26, 11),
(7, 11),
(8, 11),
(5, 11),
(1, 11),
(23, 11),
(21, 11),
(25, 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_stock_ins`
--

CREATE TABLE `product_stock_ins` (
  `id` int(10) UNSIGNED NOT NULL,
  `barcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scanner_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_delivered` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_stock_ins`
--

INSERT INTO `product_stock_ins` (`id`, `barcode`, `item`, `batch_no`, `scanner_id`, `is_delivered`, `created_at`, `updated_at`) VALUES
(1, '000001181229AA01_A001001002001', '1601001', '29L18AA', '2', '1', '2018-12-29 08:53:27', '2019-01-03 16:48:09'),
(2, '000002181229AA01_A001001002001', '1601001', '29L18AA', '2', '0', '2018-12-29 08:53:39', '2019-01-03 16:36:42'),
(3, '000003181229AC02_A001003002003', '1602001', '29L18AC', '2', '0', '2018-12-29 08:53:44', '2019-01-03 06:04:14'),
(4, '000006181229AC02_A001003002003', '1602001', '29L18AC', '2', '0', '2018-12-29 08:53:51', '2019-01-03 06:04:14'),
(5, '000001181229AC02_A001003002003', '1602001', '29L18AC', '2', '0', '2018-12-29 15:51:10', '2019-01-03 06:04:14'),
(6, '000007181229AC02_A001003002003', '1602001', '29L18AC', '2', '0', '2018-12-29 15:51:30', '2019-01-03 06:04:14'),
(7, '000005181229AA01_A001001002001', '1601001', '29L18AA', '2', '0', '2018-12-31 06:02:31', '2019-01-03 16:36:42'),
(8, '000016190103AA01_A001002002002', '1602001', '03A19AA', '2', '0', '2019-01-03 16:20:42', '2019-01-03 16:31:27'),
(9, '000015190103AA01_A001002002002', '1602001', '03A19AA', '2', '0', '2019-01-03 16:20:49', '2019-01-03 16:31:27');

-- --------------------------------------------------------

--
-- Table structure for table `product_stock_in_stockout`
--

CREATE TABLE `product_stock_in_stockout` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_stock_in_id` int(11) NOT NULL,
  `stockout_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_stock_in_stockout`
--

INSERT INTO `product_stock_in_stockout` (`id`, `product_stock_in_id`, `stockout_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shifts`
--

CREATE TABLE `shifts` (
  `id` int(10) UNSIGNED NOT NULL,
  `shift_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shift_start` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shift_end` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shifts`
--

INSERT INTO `shifts` (`id`, `shift_number`, `shift_start`, `shift_end`, `created_at`, `updated_at`) VALUES
(1, 'A', '06:00 AM', '02:00 PM', '2018-12-29 08:45:41', '2018-12-29 08:45:41'),
(2, 'B', '02:00 PM', '10:00 PM', '2018-12-29 08:45:56', '2018-12-29 08:45:56'),
(3, 'C', '10:00 PM', '06:00 AM', '2018-12-29 08:46:12', '2018-12-29 08:46:12');

-- --------------------------------------------------------

--
-- Table structure for table `stockouts`
--

CREATE TABLE `stockouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sales_order` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transport_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_delivered` int(11) NOT NULL DEFAULT '0',
  `sl_no` int(10) UNSIGNED DEFAULT NULL,
  `delivery_time` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stockouts`
--

INSERT INTO `stockouts` (`id`, `name`, `sales_order`, `transport_no`, `reference_no`, `is_delivered`, `sl_no`, `delivery_time`, `created_at`, `updated_at`) VALUES
(1, 'Monzurul Islam', 'SBH001', 'Ka-9999', 'asdasd', 1, 1, NULL, '2019-01-03 16:33:15', '2019-01-03 16:48:09'),
(2, 'sadasd', '123456', 'sdas', 'sdasd', 0, NULL, NULL, '2019-01-13 16:27:14', '2019-01-13 16:27:14');

-- --------------------------------------------------------

--
-- Table structure for table `temporarystockouts`
--

CREATE TABLE `temporarystockouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `sales_order` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `employee_id`, `password`, `image`, `group`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Xatta trone', '111.111', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '111.111.jpg', 'manager', 'ou53kaft3c25JhEtwhyo5tLFE7XbHSXuLIbpn3PGV2wtC6I3GyZ6Z3vN8pwt', '2018-12-28 18:00:00', '2018-12-29 13:54:46'),
(2, 'Watcher 01', '001.001', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '001.001.jpg', 'watcher', NULL, '2018-12-29 08:38:22', '2018-12-29 08:38:22'),
(3, 'Watcher 02', '001.002', '$2y$10$S4q5IPEtt21TVVThF9l/EOzHHqPKpG32dXF/efvBI1vZQ4jfvKD.K', '001.002.jpg', 'watcher', 'AgqsJ8Ig293zdCCZMkkTMZZWdFVZ7f26Qpcu6vOnJGFRn9KsqdNCpI5F5mmV', '2018-12-29 08:39:06', '2018-12-29 16:01:44'),
(4, 'Watcher 03', '001.003', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '001.003.jpg', 'watcher', NULL, '2018-12-29 08:39:29', '2018-12-29 08:39:29'),
(5, 'Watcher 04', '001.004', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '001.004.jpg', 'watcher', NULL, '2018-12-29 08:39:49', '2018-12-29 08:39:49'),
(6, 'Watcher 05', '001.005', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '001.005.jpg', 'watcher', NULL, '2018-12-29 08:40:08', '2018-12-29 08:40:08'),
(7, 'Packer 01', '002.001', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '002.001.jpg', 'packer', NULL, '2018-12-29 08:40:52', '2018-12-29 08:40:52'),
(8, 'Packer 02', '002.002', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '002.002.jpg', 'packer', NULL, '2018-12-29 08:41:10', '2018-12-29 08:41:10'),
(9, 'Packer 03', '002.003', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '002.003.jpg', 'packer', NULL, '2018-12-29 08:41:26', '2018-12-29 08:41:26'),
(10, 'Packer 04', '002.004', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '002.004.jpg', 'packer', NULL, '2018-12-29 08:41:45', '2018-12-29 08:41:45'),
(12, 'Md. Xatta islam', '777.777', '$2y$10$m/hzJXjGynCOX1luGaO3he5.d2hSnJctV94FA2/jziZA88hOy0UAe', '777.777.jpg', 'manager', 'ifHdzGG5YrQDXwQ1rEkzJkd04nlBX8bxgCdauRQeGynMMmrm5aMRLwZCFsYk', '2018-12-29 13:21:27', '2018-12-29 15:58:40'),
(14, 'Monzurul Islamsdcasd', '555.555', '$2y$10$Se7e7zkMIkc3u2m4tJ7IFOyfXK9XQ7GAKz3vWMUB55d1YDZ8DyDOK', '555.555.jpg', 'watcher', NULL, '2018-12-30 15:32:03', '2018-12-30 15:34:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acivity_logs`
--
ALTER TABLE `acivity_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barcodes`
--
ALTER TABLE `barcodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `current_scanning_order`
--
ALTER TABLE `current_scanning_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dailyshifts`
--
ALTER TABLE `dailyshifts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dailyshift_user`
--
ALTER TABLE `dailyshift_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dailyshift_user_dailyshift_id_foreign` (`dailyshift_id`),
  ADD KEY `dailyshift_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `daily_shift_details`
--
ALTER TABLE `daily_shift_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_infos`
--
ALTER TABLE `invoice_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `machines`
--
ALTER TABLE `machines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `machine_scanners`
--
ALTER TABLE `machine_scanners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pagepermissions`
--
ALTER TABLE `pagepermissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `product_stock_ins`
--
ALTER TABLE `product_stock_ins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_stock_in_stockout`
--
ALTER TABLE `product_stock_in_stockout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifts`
--
ALTER TABLE `shifts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stockouts`
--
ALTER TABLE `stockouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temporarystockouts`
--
ALTER TABLE `temporarystockouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_employee_id_unique` (`employee_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acivity_logs`
--
ALTER TABLE `acivity_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=520;

--
-- AUTO_INCREMENT for table `barcodes`
--
ALTER TABLE `barcodes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1029;

--
-- AUTO_INCREMENT for table `current_scanning_order`
--
ALTER TABLE `current_scanning_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dailyshifts`
--
ALTER TABLE `dailyshifts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `dailyshift_user`
--
ALTER TABLE `dailyshift_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `daily_shift_details`
--
ALTER TABLE `daily_shift_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `invoice_infos`
--
ALTER TABLE `invoice_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `machines`
--
ALTER TABLE `machines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `machine_scanners`
--
ALTER TABLE `machine_scanners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `pagepermissions`
--
ALTER TABLE `pagepermissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `product_stock_ins`
--
ALTER TABLE `product_stock_ins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product_stock_in_stockout`
--
ALTER TABLE `product_stock_in_stockout`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shifts`
--
ALTER TABLE `shifts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `stockouts`
--
ALTER TABLE `stockouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `temporarystockouts`
--
ALTER TABLE `temporarystockouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dailyshift_user`
--
ALTER TABLE `dailyshift_user`
  ADD CONSTRAINT `dailyshift_user_dailyshift_id_foreign` FOREIGN KEY (`dailyshift_id`) REFERENCES `dailyshifts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `dailyshift_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
