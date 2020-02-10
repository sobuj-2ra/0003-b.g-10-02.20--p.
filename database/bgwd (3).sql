-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2019 at 06:39 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

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
(264, '', 'Generated Barcode', '', NULL, '{\"grade\":\"A\",\"total_print\":\"5\",\"printer\":\"543459\",\"packer\":\"002.002\",\"watcher\":\"001.002\",\"machine\":\"01\",\"shift\":\"B\",\"production_date\":\"2019-02-05\"}', '2019-02-05 05:22:32', '2019-02-05 05:22:32');

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
(372, '000053190205BA01_A001002002002', '1602001', '05B19BA', 1, '2019-02-05 05:22:33', '2019-02-05 05:22:33');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=265;

--
-- AUTO_INCREMENT for table `barcodes`
--
ALTER TABLE `barcodes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=373;

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
