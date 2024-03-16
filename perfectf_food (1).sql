-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2024 at 09:35 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perfectf_food`
--

-- --------------------------------------------------------

--
-- Table structure for table `billing_addresses`
--

CREATE TABLE `billing_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `thana_id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0=Pending,1=On The Way,2=Processing,3=Completed,4=Canceled,5=Failed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `billing_addresses`
--

INSERT INTO `billing_addresses` (`id`, `name`, `phone`, `email`, `country_id`, `division_id`, `district_id`, `thana_id`, `address`, `zip_code`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Anik Rahman', '01740829980', 'a7604366@gmail.com', 1, 1, 2, 277, 'Road-2', '1216', 1, '2022-12-28 10:54:49', '2022-12-28 10:54:49'),
(2, 'Anik Rahman', '01740829980', 'a7604366@gmail.com', 1, 1, 2, 277, 'Road-2', '1216', 1, '2022-12-28 10:55:40', '2022-12-28 10:55:40'),
(3, 'Anik Rahman', '01740829980', 'a7604366@gmail.com', 1, 1, 2, 277, 'Road-2', '1216', 1, '2022-12-28 10:56:51', '2022-12-28 10:56:51'),
(4, 'Anik Rahman', '01740829980', 'a7604366@gmail.com', 1, 1, 2, 277, 'Road-2', '1216', 1, '2022-12-28 10:57:18', '2022-12-28 10:57:18'),
(5, 'Anik Rahman', '01740829980', 'a7604366@gmail.com', 1, 1, 2, 277, 'Road-2', '1216', 1, '2022-12-28 10:59:38', '2022-12-28 10:59:38'),
(6, 'Anik Rahman', '01740829980', 'a7604366@gmail.com', 1, 1, 2, 277, 'Road-2', '1216', 1, '2022-12-28 11:01:29', '2022-12-28 11:01:29'),
(7, 'Anik Rahman', '01740829980', 'a7604366@gmail.com', 1, 1, 3, 362, 'Road-2', '1216', 1, '2022-12-28 12:06:59', '2022-12-28 12:06:59'),
(8, 'Anik Rahman', '01740829980', 'a7604366@gmail.com', 1, 1, 1, 179, 'Road-2', '1216', 1, '2022-12-28 12:10:07', '2022-12-28 12:10:07'),
(9, 'Anik Rahman', '01740829980', 'a7604366@gmail.com', 1, 1, 1, 179, 'Road-2', '1216', 1, '2022-12-28 12:10:56', '2022-12-28 12:10:56'),
(10, 'Anik Rahman', '01740829980', 'a7604366@gmail.com', 1, 1, 2, 275, 'Road-2', '1216', 1, '2022-12-28 12:14:01', '2022-12-28 12:14:01'),
(11, 'Anik Rahman', '01740829980', 'a7604366@gmail.com', 1, 1, 1, 177, 'Road-2', '1216', 1, '2022-12-28 13:52:22', '2022-12-28 13:52:22'),
(12, 'Anik Rahman', '01740829980', 'a7604366@gmail.com', 1, 1, 4, 418, 'Road-2', '1216', 1, '2022-12-28 14:00:41', '2022-12-28 14:00:41'),
(13, 'Anik Rahman', '01740829980', 'a7604366@gmail.com', 1, 1, 2, 277, 'Road-2', '1216', 1, '2022-12-30 21:19:20', '2022-12-30 21:19:20'),
(14, 'Anik Rahman', '01740829980', 'a7604366@gmail.com', 1, 1, 3, 363, 'Road-2', '1216', 1, '2023-01-02 20:57:07', '2023-01-02 20:57:07'),
(15, 'Anik Rahman', '01740829980', 'a7604366@gmail.com', 1, 1, 3, 363, 'Road-2', '1216', 1, '2023-01-02 20:58:54', '2023-01-02 20:58:54'),
(16, 'Anik Rahman', '01740829980', 'a7604366@gmail.com', 1, 1, 2, 276, 'Road-2', '1216', 1, '2023-01-02 20:59:19', '2023-01-02 20:59:19'),
(17, 'Anik Rahman', '01740829980', 'a7604366@gmail.com', 1, 1, 2, 276, 'Road-2', '1216', 1, '2023-01-02 21:00:56', '2023-01-02 21:00:56'),
(18, 'Anik Rahman', '01740829980', 'a7604366@gmail.com', 1, 1, 6, 476, 'Road-2', '1216', 1, '2023-01-02 21:03:28', '2023-01-02 21:03:28'),
(19, 'Anik Rahman', '01740829980', 'a7604366@gmail.com', 1, 1, 6, 476, 'Road-2', '1216', 1, '2023-01-02 21:05:27', '2023-01-02 21:05:27'),
(20, 'Anik Rahman', '01740829980', 'a7604366@gmail.com', 1, 1, 6, 476, 'Road-2', '1216', 1, '2023-01-02 21:06:53', '2023-01-02 21:06:53'),
(21, 'Anik Rahman', '01740829980', 'a7604366@gmail.com', 1, 1, 10, 285, 'Road-2', '1216', 1, '2023-01-02 21:10:53', '2023-01-02 21:10:53'),
(22, 'Anik Rahman', '01740829980', 'a7604366@gmail.com', 1, 1, 10, 285, 'Road-2', '1216', 1, '2023-01-02 21:11:42', '2023-01-02 21:11:42'),
(23, 'Anik Rahman', '01740829980', 'a7604366@gmail.com', 1, 1, 10, 285, 'Road-2', '1216', 1, '2023-01-02 21:12:25', '2023-01-02 21:12:25'),
(24, 'Anik Rahman', '01740829980', 'a7604366@gmail.com', 1, 1, 10, 285, 'Road-2', '1216', 1, '2023-01-02 21:12:49', '2023-01-02 21:12:49'),
(25, 'Anik Rahman', '01740829980', 'a7604366@gmail.com', 1, 1, 2, 276, 'Road-2', '1216', 1, '2023-01-02 21:14:20', '2023-01-02 21:14:20'),
(26, 'Morshed', '01735254295', 'mhsohel017@gmail.com', 1, 1, 1, 190, 'Dhaka', '1207', 1, '2023-01-02 21:46:33', '2023-01-02 21:46:33'),
(27, 'Safe Food', '01735254295', 'info@safefood.com.bd', 1, 1, 1, 170, 'Dhaka', '1216', 1, '2023-01-07 16:32:31', '2023-01-07 16:32:31'),
(28, 'Shopna Akther', '01608433387', 'shopnaakther@gmail.com', 1, 1, 1, 170, 'BISF mirpur 1,dhaka 1216', '1216', 1, '2023-01-07 16:34:15', '2023-01-07 16:34:15'),
(29, 'Rossy Forhad', '01707340695', 'abbrahossain@gmail.com', 1, 1, 1, 173, 'House # 23, Road # 27, Dhanmondi,', '1209', 1, '2023-01-13 11:56:54', '2023-01-13 11:56:54'),
(30, 'Md. Murad Khan', '01911737766', 'murad.khan57@gmail.com', 1, 1, 1, 165, 'O1 BONGSHAL MANOSHI CMPLEX SHOP NO: 14 NAWABPUR', '1100', 1, '2023-01-21 16:39:45', '2023-01-21 16:39:45'),
(31, 'Mithu', '01611345183', 'mithu1207@gmail.com', 1, 1, 1, 175, '157/f Distilary road katherpool Gandaria.', '1204', 1, '2023-02-02 17:37:39', '2023-02-02 17:37:39'),
(32, 'Mostafa Shamim', '01819690326', 'mmf_mim@yahoo.com', 1, 1, 1, 202, 'DRMEP Cell, Level 09, LGED Bhaban, Agargaon', '1207', 1, '2023-03-22 09:33:30', '2023-03-22 09:33:30'),
(33, 'Kazi Rabeet', '01755619087', 'mdrabeet@gmail.com', 1, 1, 1, 181, 'Flat-3A 52 North Road dhanmondi ( vooter goli)', '1205', 1, '2023-03-26 01:21:19', '2023-03-26 01:21:19'),
(34, 'ASHIS Chakrabarty', '01857485666', 'ashischakraborty2k20@gmail.com', 1, 1, 5, 437, 'BD', '1900', 1, '2023-04-12 08:23:26', '2023-04-12 08:23:26'),
(35, 'Engr. Mahodi Hasan', '01777995866', 'elevator.elab@gmail.com', 1, 1, 1, 184, '158 goran Bazar road Khilgaon Dhaka - 1219', '1219', 1, '2023-05-16 02:56:25', '2023-05-16 02:56:25'),
(36, 'Akram Hossain', '01711464199', 'arafateyasir1@gmail.com', 1, 1, 1, 170, 'Modina Phone Fax, AMin Bazar, Gabtoli,', '1348', 1, '2023-05-22 11:01:06', '2023-05-22 11:01:06'),
(37, 'Akram Hossain', '01711464199', 'arafateyasir1@gmail.com', 1, 1, 1, 170, 'Modina Phone Fax, AMin Bazar, Gabtoli,', '1348', 1, '2023-05-22 11:03:08', '2023-05-22 11:03:08'),
(38, 'dfg', '01735254295', 'superadmin@email.com', 1, 1, 1, 163, 'ghgf', '1207', 1, '2023-06-14 10:52:18', '2023-06-14 10:52:18'),
(39, 'MD.RAKIBUL HASAN', '01759526830', 'mahmud@140gmail.com', 1, 1, 7, 487, 'Choto harji', '8431', 1, '2023-06-14 11:32:44', '2023-06-14 11:32:44'),
(40, 'MD.RAKIBUL HASAN', '01759526830', 'mahmud@140gmail.com', 1, 1, 7, 487, 'Choto harji', '8431', 1, '2023-06-14 12:25:27', '2023-06-14 12:25:27'),
(41, 'sohel', '01735254295', NULL, 1, 1, 1, 190, 'mohammadpur', '1207', 1, '2023-09-30 19:02:17', '2023-09-30 19:02:17'),
(42, 'admin', '01715587496', 'admin@admin.com', 1, 1, 2, 277, 'tt', '', 1, '2023-09-30 21:05:19', '2023-09-30 21:05:19'),
(43, 'admin', '01715587496', 'admin@admin.com', 1, 1, 1, 190, 'test', '', 1, '2023-09-30 21:16:01', '2023-09-30 21:16:01'),
(44, 'মেহেদী জামান ফুয়াদ', '01712369882', 'admin@admin.com', 1, 1, 1, 190, 'দারুসসালাম টাওয়ার শপিং কমপ্লেক্স', '', 1, '2023-10-01 08:34:29', '2023-10-01 08:34:29'),
(45, 'Sohel', '01735254295', NULL, 1, 1, 1, 190, 'Dhaka', '', 1, '2023-10-16 16:08:07', '2023-10-16 16:08:07'),
(46, 'Sohel', '01735254295', NULL, 1, 1, 1, 190, 'Mohammadpur', '', 1, '2023-11-05 11:40:38', '2023-11-05 11:40:38'),
(47, 'sohel', '01735254295', NULL, 1, 1, 1, 190, 'Mohammadpur', '', 1, '2023-11-16 17:34:53', '2023-11-16 17:34:53'),
(48, 'sohel', '01735254295', '', 1, 1, 1, 190, 'Mohammadpur, Dhaka', '', 1, '2023-11-25 17:54:34', '2023-11-25 17:54:34'),
(49, 'sohel', '01735254295', '', 1, 1, 1, 190, 'Mohammadpur, Dhaka', '', 1, '2023-11-25 17:56:49', '2023-11-25 17:56:49'),
(50, 'sohel', '01735254295', '', 1, 1, 1, 190, 'Mohammadpur, Dhaka', '', 1, '2023-11-25 18:03:35', '2023-11-25 18:03:35'),
(51, 'Morhsed Habib', '01735254295', '', 1, 1, 1, 190, 'Mohammadpur, Dhaka-1207', '', 1, '2023-11-26 03:58:56', '2023-11-26 03:58:56'),
(52, 'Morhsed Habib', '01735254295', '', 1, 1, 1, 190, 'Mohammadpur, Dhaka-1207', '', 1, '2023-12-18 22:58:46', '2023-12-18 22:58:46'),
(53, 'Morhsed Habib', '01735254295', '', 1, 1, 1, 190, 'Mohammadpur, Dhaka-1207', '', 1, '2023-12-28 14:33:11', '2023-12-28 14:33:11'),
(54, 'ryerwy', '01643533365', '', 1, 1, 1, 190, 'eryr', '', 1, '2024-02-12 09:03:49', '2024-02-12 09:03:49'),
(55, 'Morhsed Habib', '01735254295', '', 1, 1, 1, 190, 'Mohammadpur, Dhaka-1207', '', 1, '2024-02-23 16:49:30', '2024-02-23 16:49:30'),
(56, 'Apurba Kumar Roy', '01714345878', '', 1, 1, 1, 190, 'Testing', '', 1, '2024-02-29 09:34:50', '2024-02-29 09:34:50'),
(57, 'Apurba Kumar Roy', '01714345878', '', 1, 1, 1, 190, 'Testing', '', 1, '2024-02-29 09:34:54', '2024-02-29 09:34:54'),
(58, 'Apurba Kumar Roy', '01714345878', '', 1, 1, 1, 190, 'Testing', '', 1, '2024-02-29 09:34:58', '2024-02-29 09:34:58');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=Active,0=Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `title`, `slug`, `photo`, `created_at`, `updated_at`) VALUES
(4, 'Unilever', 'unilever', 'unileversvg-1701670839.png', '2023-12-04 00:50:39', '2023-12-04 00:50:39'),
(5, 'Aci', 'aci', 'untitled-1701670892.png', '2023-12-04 00:51:32', '2023-12-04 00:51:32'),
(6, 'Square', 'square', 'square-banner-1701670988.jpg', '2023-12-04 00:53:08', '2023-12-04 00:53:08');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Active=1, Inactive=2',
  `main_menu` enum('true','false') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'false',
  `home_page` enum('true','false') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'false',
  `home_page_order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `short_desc`, `parent_id`, `img`, `status`, `main_menu`, `home_page`, `home_page_order`, `created_at`, `updated_at`) VALUES
(64, 'Dairy', 'dairy', NULL, 0, NULL, 1, 'true', 'false', 0, '2024-01-11 05:14:28', '2024-01-11 05:14:28'),
(65, 'Honey', 'honey', NULL, 0, NULL, 1, 'true', 'true', 3, '2024-01-11 05:16:24', '2024-01-11 05:16:24'),
(66, 'Nuts & Dates', 'nuts-dates', NULL, 0, NULL, 1, 'true', 'false', 0, '2024-01-11 05:16:55', '2024-01-11 05:16:55'),
(73, 'Pickle', 'pickle', NULL, 0, NULL, 1, 'true', 'true', 2, '2024-01-11 05:22:38', '2024-01-11 05:22:38'),
(154, 'Butter', 'butter', NULL, 0, NULL, 1, 'true', 'false', 0, '2024-01-13 04:12:13', '2024-01-13 04:12:13'),
(155, 'Super Food', 'super-food', NULL, 0, NULL, 1, 'true', 'true', 1, '2024-01-13 04:12:59', '2024-01-13 04:12:59'),
(156, 'Grocery', 'grocery', NULL, 0, NULL, 1, 'true', 'true', 4, '2024-01-13 04:13:51', '2024-01-13 04:13:51'),
(157, 'Energy Booster', 'energy-booster', NULL, 0, NULL, 1, 'true', 'true', 5, '2024-01-13 04:14:24', '2024-01-13 04:14:24'),
(158, 'Spices', 'spices', NULL, 159, NULL, 1, 'false', 'true', 6, '2024-01-13 04:14:34', '2024-01-13 04:14:34'),
(159, 'Organic Oil', 'organic-oil', NULL, 156, NULL, 1, 'false', 'false', 0, '2024-01-13 04:16:28', '2024-01-13 04:16:28'),
(160, 'Premium Ingredients', 'premium-ingredients', NULL, 156, NULL, 1, 'false', 'false', 0, '2024-01-13 04:17:07', '2024-01-13 04:17:07'),
(161, 'Egg', 'egg', NULL, 64, NULL, 1, 'false', 'false', 0, '2024-01-11 05:14:28', '2024-01-11 05:14:28'),
(162, 'Meat', 'meat', NULL, 64, NULL, 1, 'false', 'false', 0, '2024-01-11 05:14:28', '2024-01-11 05:14:28'),
(163, 'Beef', 'beef', NULL, 162, NULL, 1, 'false', 'false', 0, '2024-01-11 05:14:28', '2024-01-11 05:14:28'),
(164, 'Chicken', 'chicken', NULL, 162, NULL, 1, 'false', 'false', 0, '2024-01-11 05:14:28', '2024-01-11 05:14:28'),
(165, 'Chicken Egg', 'chicken-egg', NULL, 161, NULL, 1, 'false', 'false', 0, '2024-01-11 05:14:28', '2024-01-11 05:14:28'),
(166, 'duck Egg', 'duck-egg', NULL, 161, NULL, 1, 'false', 'false', 0, '2024-01-11 05:14:28', '2024-01-11 05:14:28'),
(167, 'Quail Egg', 'quail-egg', NULL, 161, NULL, 1, 'false', 'false', 0, '2024-01-11 05:14:28', '2024-01-11 05:14:28'),
(169, 'Quail Egg 1', 'quail-egg-1', NULL, 161, NULL, 1, 'false', 'false', 0, '2024-01-11 05:14:28', '2024-01-11 05:14:28'),
(170, 'Quail Egg 2', 'quail-egg-2', NULL, 161, NULL, 1, 'false', 'false', 0, '2024-01-11 05:14:28', '2024-01-11 05:14:28');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Active=1, Inactive=2',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Bangladesh', 1, '2022-12-19 15:34:58', '2022-12-19 15:34:58');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `validity` timestamp NULL DEFAULT NULL,
  `discount_type` enum('flat','percent') NOT NULL DEFAULT 'flat',
  `phone` varchar(255) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` enum('active','inactive','used') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `title`, `code`, `validity`, `discount_type`, `phone`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 'RAMADAN', 'RAMADAN10', '2024-04-11 16:31:00', 'percent', NULL, '10.00', 'active', '2024-03-10 10:32:19', '2024-03-10 10:32:28');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Active=1, Inactive=2',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `name`, `division_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Dhaka', 1, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(2, 'Gazipur', 1, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(3, 'Kishoreganj', 1, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(4, 'Manikganj', 1, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(5, 'Munshiganj', 1, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(6, 'Narayanganj', 1, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(7, 'Narsingdi', 1, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(8, 'Tangail', 1, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(9, 'Faridpur', 1, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(10, 'Gopalganj', 1, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(11, 'Madaripur', 1, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(12, 'Rajbari', 1, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(13, 'Shariatpur', 1, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(14, 'Chittagong', 2, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(15, 'Noakhali', 2, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(16, 'Feni', 2, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(17, 'Brahmanbaria', 2, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(18, 'Comilla', 2, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(19, 'Chandpur', 2, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(20, 'Lakshmipur', 2, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(21, 'Khagrachhari', 2, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(22, 'Rangamati', 2, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(23, 'Bandarban', 2, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(24, 'Cox\'s Bazar', 2, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(25, 'Bagerhat', 3, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(26, 'Chuadanga', 3, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(27, 'Jessore', 3, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(28, 'Jhenaidah', 3, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(29, 'Khulna', 3, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(30, 'Kushtia', 3, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(31, 'Magura', 3, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(32, 'Meherpur', 3, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(33, 'Narail', 3, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(34, 'Satkhira', 3, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(35, 'Habiganj', 4, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(36, 'Moulvibazar', 4, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(37, 'Sunamganj', 4, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(38, 'Sylhet', 4, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(39, 'Mymensingh', 5, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(40, 'Netrokona', 5, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(41, 'Jamalpur', 5, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(42, 'Sherpur', 5, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(43, 'Rajshahi', 6, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(44, 'Natore', 6, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(45, 'Naogaon', 6, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(46, 'Sirajganj', 6, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(47, 'Pabna', 6, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(48, 'Bogura', 6, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(49, 'Chapainawabganj', 6, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(50, 'Joypurhat', 6, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(51, 'Barisal', 7, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(52, 'Barguna', 7, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(53, 'Bhola', 7, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(54, 'Jhalokati', 7, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(55, 'Patuakhali', 7, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(56, 'Pirojpur', 7, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(57, 'Rangpur', 8, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(58, 'Dinajpur', 8, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(59, 'Kurigram', 8, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(60, 'Nilphamari', 8, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(61, 'Gaibandha', 8, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(62, 'Thakurgaon', 8, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(63, 'Panchagarh', 8, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(64, 'Lalmonirhat', 8, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59');

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Active=1, Inactive=2',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `country_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Dhaka', 1, 1, '2022-12-19 15:34:58', '2022-12-19 15:34:58'),
(2, 'Chittagong', 1, 1, '2022-12-19 15:34:58', '2022-12-19 15:34:58'),
(3, 'Khulna', 1, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(4, 'Sylhet', 1, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(5, 'Mymensingh', 1, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(6, 'Rajshahi', 1, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(7, 'Barisal', 1, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(8, 'Rangpur', 1, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `local_shippings`
--

CREATE TABLE `local_shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ship_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee_type` tinyint(4) NOT NULL COMMENT '1=Cart total fixed amount, 2=Cart total percentage(%), 3=Per product fixed amount, 4=Per product percentage(%)',
  `fee_amount` double(8,2) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Active = 1, Inactive = 0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `local_shippings`
--

INSERT INTO `local_shippings` (`id`, `ship_id`, `zone_name`, `fee_type`, `fee_amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 'ঢাকার ভিতর', 1, 60.00, 1, '2022-12-28 10:28:41', '2023-11-01 18:29:45'),
(2, 3, 'ঢাকার বাহিরে', 1, 120.00, 1, '2022-12-28 10:29:01', '2023-09-30 21:21:13');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_02_24_123930_create_countries_table', 1),
(6, '2021_02_24_124123_create_divisions_table', 1),
(7, '2021_02_24_124238_create_districts_table', 1),
(8, '2021_02_25_073107_create_orders_table', 1),
(9, '2021_03_06_210807_create_coupons_table', 1),
(10, '2021_03_09_051758_create_coupon__cats_table', 1),
(11, '2021_03_09_052011_create_coupon__products_table', 1),
(12, '2021_03_09_052034_create_coupon__users_table', 1),
(13, '2021_09_16_061856_create_categories_table', 1),
(14, '2021_09_16_062757_create_special_categories_table', 1),
(17, '2021_09_19_104308_create_sliders_table', 1),
(18, '2021_09_19_104422_create_slider_images_table', 1),
(20, '2021_09_26_103739_create_local_shippings_table', 1),
(22, '2021_10_10_124321_create_thanas_table', 1),
(23, '2021_10_12_110309_create_order_details_table', 1),
(24, '2021_10_12_110351_create_billing_addresses_table', 1),
(25, '2022_03_02_120820_create_product_reviews_table', 1),
(26, '2022_05_29_065735_create_contacts_table', 1),
(27, '2022_06_04_102028_create_product_attribute_stocks_table', 1),
(28, '2022_06_28_104220_create_blogs_table', 1),
(30, '2021_09_18_103023_create_products_table', 2),
(31, '2021_09_18_134813_create_product_attributes_table', 2),
(33, '2021_09_26_103602_create_shipping_methods_table', 3),
(34, '2021_09_26_103757_create_local_areas_table', 4),
(35, '2022_12_23_102146_create_offers_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Active=1, Inactive=2',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` double(8,2) NOT NULL,
  `total` double(8,2) NOT NULL,
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_amount` double(8,2) NOT NULL,
  `vat` double(8,2) NOT NULL DEFAULT 0.00,
  `tax` double(8,2) NOT NULL DEFAULT 0.00,
  `shipping_rate` double(8,2) NOT NULL,
  `shipping_option` tinyint(4) NOT NULL COMMENT '1=Outside Dhaka, 2=Inside Dhaka',
  `billing_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `special_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0=Pending,1=On The Way,2=Processing,3=Completed,4=Canceled,5=Failed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `invoice_id`, `payment_method`, `transaction_id`, `sub_total`, `total`, `coupon_code`, `coupon_amount`, `vat`, `tax`, `shipping_rate`, `shipping_option`, `billing_id`, `user_id`, `special_note`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'cash', NULL, 338.00, 398.00, NULL, 0.00, 0.00, 0.00, 60.00, 1, 52, 26, NULL, 0, '2023-12-18 22:58:46', '2023-12-18 22:58:46'),
(2, 2, 'cash', NULL, 800.00, 860.00, NULL, 0.00, 0.00, 0.00, 60.00, 1, 53, 26, NULL, 0, '2023-12-28 14:33:11', '2023-12-28 14:33:11'),
(3, 3, 'cash', NULL, 1610.00, 1670.00, NULL, 0.00, 0.00, 0.00, 60.00, 1, 54, 29, NULL, 0, '2024-02-12 09:03:49', '2024-02-12 09:03:49'),
(4, 4, 'cash', NULL, 555.00, 615.00, 'bijoy71', 0.00, 0.00, 0.00, 60.00, 1, 55, 26, NULL, 0, '2024-02-23 16:49:30', '2024-02-23 16:49:30'),
(5, 5, 'cash', NULL, 350.00, 410.00, NULL, 0.00, 0.00, 0.00, 60.00, 1, 56, 30, 'Attached This data for Mobile Application', 0, '2024-02-29 09:34:50', '2024-02-29 09:34:50');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `pre_order` tinyint(4) NOT NULL DEFAULT 2 COMMENT '0=Ready, 1=Pre-Order, 2=None',
  `price` double(8,2) NOT NULL,
  `total` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` longtext CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `slug`, `name`, `content`, `created_at`, `updated_at`) VALUES
(1, 'terms', 'Terms & Conditions', '<p><strong>Terms and Conditions 1. ব্যবহারের শর্তাবলী</strong><br />\r\n1.1 perfectfoodbd.net-এ স্বাগতম। perfectfoodbd.net ওয়েবসাইট বা মোবাইল অ্যাপ্লিকেশন/অ্যাপ বা অন্য কোনো মিডিয়া (&quot;ওয়েবসাইট&quot;) অ্যাক্সেস প্রদান করে যা এই পৃষ্ঠায় দেওয়া শর্তাবলী (&quot;শর্তাবলী&quot;) সাপেক্ষে। ওয়েবসাইট ব্যবহার করে, আপনি, এখানে নির্ধারিত যোগ্যতার মানদণ্ডের পরিপ্রেক্ষিতে একজন নিবন্ধিত বা অতিথি ব্যবহারকারী (&quot;ব্যবহারকারী&quot;) শর্তাবলী দ্বারা আবদ্ধ হতে সম্মত হন। ওয়েবসাইটের শর্তাবলী দয়া করে সেগুলিকে সাবধানে পড়ুন আপনার ক্রমাগত ব্যবহার করতে, আপনি এই শর্তাবলী দ্বারা আবদ্ধ হওয়ার জন্য আপনার চুক্তির স্বাক্ষর করছেন। আপনি শর্তাবলী দ্বারা আবদ্ধ হতে না চান, আপনি সাবস্ক্রাইব বা ওয়েবসাইট বা আমাদের পরিষেবা ব্যবহার করতে হবে না।<br />\r\n<br />\r\n1.2 নিহিত বা স্পষ্টভাবে এই শর্তাদি গ্রহণ করার মাধ্যমে, আপনি Perfect Food এর নীতি (সহ কিন্তু সীমাবদ্ধ নয় যে https:// perfectfoodbd.net/pages-privacy-policy/-এ উপলব্ধ privacy policy মধ্যে সীমাবদ্ধ নয়) দ্বারা আবদ্ধ হতে সম্মত হন।<br />\r\n<br />\r\n1.3 এই শর্তাবলীতে, &quot;আপনি&quot;, &quot;ব্যবহারকারী&quot; এর রেফারেন্সের অর্থ হল ওয়েবসাইট, এর বিষয়বস্তু এবং ওয়েবসাইটের মাধ্যমে প্রদত্ত পরিষেবাগুলি ব্যবহার করা শেষ ব্যবহারকারী/গ্রাহক। &quot;ওয়েবসাইট&quot;, &quot;Perfectfood&quot;, &quot; perfectfoodbd.net &quot;, &quot;আমরা&quot;, &quot;আমাদের&quot; এবং &quot;আমাদের&quot; এর রেফারেন্সের অর্থ ওয়েবসাইট এবং/অথবা perfectfood এর হবে।<br />\r\n<br />\r\n1.4 এখানে উল্লিখিত বিষয়বস্তু তথ্য ও যোগাযোগ প্রযুক্তি আইন, ২০০৬ (তথ্য ও যোগাযোগ প্রযুক্তি আইন, ২০০৬) এবং সময়ে সময়ে সংশোধিত এবং প্রযোজ্য নিয়মের অধীনে একটি ইলেকট্রনিক রেকর্ড গঠন করে। যেমন, এই নথিতে কোনও শারীরিক বা ডিজিটাল স্বাক্ষরের প্রয়োজন নেই এবং ওয়েবসাইট এবং ব্যবহারকারীর মধ্যে একটি বৈধ এবং বাধ্যতামূলক চুক্তি তৈরি করে।<br />\r\n<br />\r\n1.5 ওয়েবসাইটটি perfect food দ্বারা পরিচালিত হয়, বাংলাদেশের আইনের অধীনে লাইসেন্সপ্রাপ্ত একটি কোম্পানি যার নিবন্ধিত অফিস হাউস ১ /৪, রোড &ndash; ১, ঢাকা উদ্যান হাউজিং, ঢাকা, বাংলাদেশ। এই শর্তাবলীতে ওয়েবসাইটের সমস্ত রেফারেন্স অনলাইন পোর্টালের অন্তর্ভুক্তিতে পূর্বোক্ত সত্তার উল্লেখ বলে মনে করা হবে।<br />\r\n<br />\r\n1.6 এই ওয়েবসাইটটিতে অন্যান্য ওয়েবসাইটের লিঙ্কও থাকতে পারে, যেগুলি perfectfood দ্বারা পরিচালিত হয় না এবং perfectfood-এর লিঙ্কযুক্ত সাইটগুলির উপর কোনও নিয়ন্ত্রণ নেই এবং সেগুলির জন্য বা আপনার ব্যবহারের ফলে যে কোনও ক্ষতি বা ক্ষতি হতে পারে তার জন্য কোনও দায় perfectfood স্বীকার করে না৷ লিঙ্ক করা সাইটগুলির আপনার ব্যবহার এই ধরনের প্রতিটি সাইটের মধ্যে থাকা ব্যবহারের শর্তাবলী এবং পরিষেবার সাপেক্ষে হবে।<br />\r\n<br />\r\n1.7 আমরা যেকোনো সময় এই শর্তাবলী পরিবর্তন করার অধিকার সংরক্ষণ করি। ওয়েবসাইটে পোস্ট করা হলে এই ধরনের পরিবর্তন কার্যকর হবে। আমরা এই ধরনের কোনো পরিবর্তন পোস্ট করার পরে ওয়েবসাইট ব্যবহার চালিয়ে যাওয়ার মাধ্যমে, আপনি পরিবর্তিত হিসাবে শর্তাদি স্বীকার করেন।<br />\r\n<br />\r\n1.8 এই শর্তাবলী নিচে উল্লেখিত করা শর্তাবলী অনুসারে আপনি বা perfectfood দ্বারা সমাপ্ত না হওয়া পর্যন্ত প্রযোজ্য হবে:<br />\r\n<br />\r\n1.9 perfectfood এর সাথে চুক্তিটি (i) ওয়েবসাইট অ্যাক্সেস না করার মাধ্যমে বাতিল করা যেতে পারে; অথবা (ii) আপনার অ্যাকাউন্ট বন্ধ করা, যদি এই ধরনের বিকল্প আপনার জন্য উপলব্ধ করা হয়।<br />\r\n<br />\r\n1.10 পূর্বোক্ত সত্ত্বেও, এই শর্তাবলীতে সেট করা এই বিধানগুলি যা তাদের প্রকৃতির দ্বারা টিকে থাকে, এই চুক্তির সমাপ্তি / মেয়াদ শেষ হওয়ার পরেও বেঁচে থাকবে৷<br />\r\n<br />\r\n2. যোগ্যতা<br />\r\n2.1 ওয়েবসাইটটির ব্যবহার শুধুমাত্র সেই ব্যক্তিদের জন্য উপলব্ধ যারা চুক্তি আইন, 1872 এর অধীনে আইনিভাবে চুক্তি করতে পারেন।<br />\r\n<br />\r\n2.2 যদি আপনি একজন অপ্রাপ্তবয়স্ক হন অর্থাৎ 18 বছরের কম বয়সী হন, তাহলে আপনি perfectfood.net -এর ব্যবহারকারী হিসেবে নিবন্ধন করবেন না এবং ওয়েবসাইটটিতে লেনদেন বা ব্যবহার করবেন না। নাবালক হিসেবে আপনি ওয়েবসাইট ব্যবহার বা লেনদেন করতে চাইলে, এই ধরনের ব্যবহার বা লেনদেন ওয়েবসাইটে আপনার আইনি অভিভাবক বা পিতামাতার দ্বারা করা হতে পারে। perfectfood আপনার সদস্যপদ বাতিল করার অধিকার সংরক্ষণ করে এবং/অথবা যদি এটি perfectfood -এর নজরে আনা হয় বা যদি এটি আবিষ্কৃত হয় যে আপনি 18 বছরের কম বয়সী ওয়েবসাইটের অ্যাক্সেস প্রদান করতে অস্বীকার করে।<br />\r\n<br />\r\n2.3 শর্তাদি স্বীকার করে বা ওয়েবসাইটে ব্যবহার বা লেনদেন করার মাধ্যমে, ব্যবহারকারী অপরিবর্তনীয়ভাবে ঘোষণা করেন এবং অঙ্গীকার করেন যে তিনি আইনি বয়সের অর্থাৎ 18 বছর বা তার বেশি বয়সী এবং একটি বাধ্যতামূলক চুক্তিতে প্রবেশ করতে সক্ষম এবং এই ধরনের ব্যবহার একটি চুক্তি গঠন বলে গণ্য হবে ওয়েবসাইট এবং এই ধরনের ব্যবহারকারীর মধ্যে প্রযোজ্য আইনের অধীনে অনুমোদিত পরিমাণে।<br />\r\n<br />\r\n2.4 ওয়েবসাইটের মাধ্যমে প্রদত্ত পরিষেবাগুলির ব্যবহার শুধুমাত্র তখনই পাওয়া যায় যদি ব্যবহারকারীর ঠিকানাটি বাংলাদেশের মধ্যে থাকে; perfectfood সর্বাধিক 72 ঘন্টার মধ্যে ডেলিভারি পরিষেবা পরিবেশন করছে।<br />\r\n<br />\r\n3. যোগাযোগ<br />\r\n3.1 আপনি যখন perfectfood.net ব্যবহার করেন, বা ফোন বা ইমেলের মাধ্যমে আমাদের সাথে যোগাযোগ করেন, তখন আপনি আমাদের কাছ থেকে যোগাযোগ পেতে সম্মত হন। আপনি আমাদেরকে ই-মেইল, এসএমএস, ফোন কল বা ওয়েবসাইটে নোটিশ পোস্ট করে বা যোগাযোগের অন্য কোনো পদ্ধতির মাধ্যমে আপনার সাথে যোগাযোগ করার অনুমোদন দেন। চুক্তিভিত্তিক উদ্দেশ্যে, আপনি আমাদের কাছ থেকে যোগাযোগ (লেনদেনমূলক, প্রচারমূলক এবং/অথবা বাণিজ্যিক বার্তা সহ) পেতে সম্মতি দিচ্ছেন, আপনার ওয়েবসাইট ব্যবহার এবং/অথবা ওয়েবসাইটে দেওয়া আপনার অর্ডারের বিষয়ে। উপরন্তু, সাইটে পোস্ট করা কোনো প্রকাশ, বা ইমেলের মাধ্যমে আপনাকে পাঠানো লিখিতভাবে করা যোগাযোগের আইনি বাধ্যবাধকতা পূরণ করে।<br />\r\n<br />\r\n4. আপনার অ্যাকাউন্ট এবং দায়িত্ব<br />\r\n4.1 যেকোন ব্যক্তি ওয়েবসাইটে নিবন্ধন করে বা অতিথি হিসাবে ওয়েবসাইট ব্যবহার করে ওয়েবসাইট অ্যাক্সেস করতে পারেন। যাইহোক, কোনও অতিথি ব্যবহারকারীর নির্দিষ্ট সুবিধা/প্রচারমূলক অফার সহ ওয়েবসাইটের সমস্ত বিভাগে অ্যাক্সেস নাও থাকতে পারে, যা শুধুমাত্র নিবন্ধিত ব্যবহারকারীদের উদ্দেশ্যে সংরক্ষিত থাকবে এবং যা ওয়েবসাইটের নিজস্ব বিবেচনার ভিত্তিতে সময়ে সময়ে পরিবর্তিত হতে পারে।<br />\r\n<br />\r\n4.2 আপনি যদি ওয়েবসাইটে আপনার অ্যাকাউন্ট নিবন্ধন করতে চান, তাহলে আপনাকে একটি বৈধ বাংলাদেশী মোবাইল নম্বর প্রদান করতে হবে৷ তারপরে আপনি একটি পাসওয়ার্ড বা এককালীন পিন পাবেন যা দিয়ে আপনি অর্ডার দেওয়ার জন্য ওয়েবসাইটে লগইন করতে পারেন।<br />\r\n<br />\r\n4.3 আপনি যদি ওয়েবসাইট ব্যবহার করেন, তাহলে আপনি আপনার ব্যবহারকারীর নাম এবং পাসওয়ার্ডের গোপনীয়তা বজায় রাখার জন্য দায়ী থাকবেন এবং আপনার ব্যবহারকারীর নামের অধীনে ঘটে যাওয়া সমস্ত ক্রিয়াকলাপের জন্য আপনি দায়ী থাকবেন এবং আপনি আপনার কম্পিউটার বা মোবাইল ফোনে অ্যাক্সেস সীমাবদ্ধ করার বাধ্যবাধকতার অধীনে থাকবেন। আপনার অ্যাকাউন্টে অননুমোদিত অ্যাক্সেস প্রতিরোধ করুন। আপনার যদি বিশ্বাস করার কোনো কারণ থাকে যে আপনার পাসওয়ার্ড অন্য কেউ পরিচিত হয়ে গেছে, বা পাসওয়ার্ডটি অননুমোদিতভাবে ব্যবহার করা হচ্ছে বা হওয়ার সম্ভাবনা আছে, তাহলে আপনাকে অবিলম্বে আমাদের জানাতে হবে। আপনি সম্মত হন যে আপনি যদি এমন কোনো তথ্য প্রদান করেন যা অসত্য, ভুল, বর্তমান বা অসম্পূর্ণ নয় বা আমাদের কাছে সন্দেহ করার যুক্তিসঙ্গত কারণ থাকে যে এই ধরনের তথ্য অসত্য, ভুল, বর্তমান নয় বা অসম্পূর্ণ বা এই ব্যবহারের শর্তাবলী অনুসারে নয় ওয়েবসাইটে আপনার সদস্যপদ স্থগিত বা বাতিল করার অধিকার রাখে ।<br />\r\n<br />\r\n4.4 ওয়েবসাইটটি তার নিজস্ব বিবেচনার ভিত্তিতে প্রয়োজনীয় বলে মনে করতে পারে এমন উদ্দেশ্যে অ্যাক্সেসযোগ্য হতে পারে, তবে নিয়মিত রক্ষণাবেক্ষণ সহ কিন্তু সীমাবদ্ধ নয়। যাইহোক, কোনো অবস্থাতেই ব্যবহারকারীদের কাছে এই ধরনের অপ্রাপ্যতা থেকে উদ্ভূত কোনো ক্ষতি বা দাবির জন্য perfectfood কে দায়ী করা হবে না এবং ব্যবহারকারীরা এই বিষয়ে perfectfood এর বিরুদ্ধে কোনো দাবি স্পষ্টভাবে পরিত্যাগ করবেন।<br />\r\n<br />\r\n4.5 perfectfood একটি প্ল্যাটফর্ম হিসাবে বিভিন্ন মোবাইল নম্বর সহ একক ব্যবহারকারীর মালিকানাধীন একাধিক অ্যাকাউন্টকে সমর্থন বা উৎসাহিত করে না এবং পরিষেবার কোনও ধরণের অপব্যবহারের আওতায় পড়তে পারে এমন কোনও অ্যাকাউন্টকে সীমাবদ্ধ, নিষ্ক্রিয় বা নিষ্ক্রিয় করার অধিকার সংরক্ষণ করে।<br />\r\n<br />\r\n5. চার্জ<br />\r\n5.1 ওয়েবসাইটের সদস্যতা ব্যবহারকারীদের জন্য বিনামূল্যে। perfectfood ওয়েবসাইট ব্রাউজিং এবং কেনার জন্য কোনো ফি নেয় না। perfectfood বিভিন্ন সময়ে তার ফি নীতি পরিবর্তন করার অধিকার সংরক্ষণ করে। বিশেষ করে, perfectfood তার নিজস্ব বিবেচনার ভিত্তিতে নতুন পরিষেবাগুলি প্রবর্তন করতে পারে এবং ওয়েবসাইটে দেওয়া কিছু বা সমস্ত বিদ্যমান পরিষেবাগুলিকে সংশোধন করতে পারে৷ এই ধরনের ইভেন্টে, perfectfood প্রদত্ত নতুন পরিষেবাগুলির জন্য ফি প্রবর্তন করার বা বিদ্যমান পরিষেবাগুলির জন্য ফি সংশোধন/পরিবর্তনের অধিকার সংরক্ষণ করে, যেমনটি হতে পারে। ফি নীতিতে পরিবর্তনগুলি ওয়েবসাইটে পোস্ট করা হবে এবং এই ধরনের পরিবর্তনগুলি ওয়েবসাইটে পোস্ট করার সাথে সাথেই স্বয়ংক্রিয়ভাবে কার্যকর হবে৷<br />\r\n<br />\r\n6. কপিরাইট<br />\r\n6.1 perfectfood bd.net -এ থাকা উপাদান (বিষয়বস্তু, এবং অন্য কোনো বিষয়বস্তু, সফ্টওয়্যার বা পরিষেবাগুলি সহ) হল perfectfood, এর সহযোগী সংস্থা, সহযোগী এবং/অথবা তৃতীয়-পক্ষ লাইসেন্সকারীদের সম্পত্তি৷ perfectfood থেকে লিখিত অনুমতি ছাড়া এই সাইটের কোন উপাদান কপি, পুনরুত্পাদন, পুনঃপ্রকাশ, ইনস্টল, পোস্ট, প্রেরণ, সংরক্ষণ বা বিতরণ করা যাবে না।<br />\r\n<br />\r\n6.2 আপনি অ্যাক্সেস, অর্জন, অনুলিপি করার জন্য কোনো &quot;ডিপ-লিঙ্ক&quot;, &quot;পৃষ্ঠা-স্ক্র্যাপ&quot;, &quot;রোবট&quot;, &quot;স্পাইডার&quot; বা অন্যান্য স্বয়ংক্রিয় ডিভাইস, প্রোগ্রাম, অ্যালগরিদম বা পদ্ধতি, বা অনুরূপ বা সমতুল্য ম্যানুয়াল প্রক্রিয়া ব্যবহার করতে পারবেন না বা ওয়েবসাইটের কোনো অংশ বা কোনো বিষয়বস্তু নিরীক্ষণ, অথবা কোনো উপায়ে ন্যাভিগেশনাল স্ট্রাকচার বা ওয়েবসাইট বা কোনো বিষয়বস্তুর উপস্থাপনাকে পুনরুত্পাদন বা বাধা দেওয়া, উদ্দেশ্যমূলকভাবে উপলব্ধ করা হয়নি এমন কোনো উপায়ে কোনো উপকরণ, নথি বা তথ্য পাওয়ার বা প্রাপ্ত করার চেষ্টা করা। ওয়েবসাইট. আমরা এই ধরনের যেকোনো কার্যকলাপে বাধা দেওয়ার আমাদের অধিকার সংরক্ষণ করি।<br />\r\n<br />\r\n7. কুকি<br />\r\n7.1 এই সাইটটি কুকিজ ব্যবহার করে, যার অর্থ হল এই সাইটের সমস্ত কার্যকারিতা সঠিকভাবে কাজ করার জন্য আপনার কম্পিউটারে কুকিজ সক্রিয় থাকতে হবে৷ একটি কুকি হল একটি ছোট ডেটা ফাইল যা আপনার হার্ড ড্রাইভে লেখা হয় যখন আপনি কিছু নির্দিষ্ট ওয়েব সাইটে যান। কুকি ফাইলগুলিতে নির্দিষ্ট তথ্য থাকে, যেমন একটি এলোমেলো নম্বর ব্যবহারকারী আইডি যা সাইটটি পরিদর্শন করা পৃষ্ঠাগুলি ট্র্যাক করার জন্য একজন দর্শককে বরাদ্দ করে। একটি কুকি আপনার হার্ড ডিস্কের ডেটা পড়তে পারে না বা অন্য সাইট দ্বারা তৈরি কুকি ফাইলগুলি পড়তে পারে না। কুকিজ, নিজেদের দ্বারা, কোনো ব্যবহারকারীর পরিচয় খুঁজে বের করতে ব্যবহার করা যাবে না।<br />\r\n<br />\r\n8. প্রচারমূলক কার্যকলাপ<br />\r\n8.1 এর পরিষেবাগুলি প্রচার করার জন্য perfectfood বিভিন্ন বিজ্ঞাপন এবং বিজ্ঞাপন ব্যবহার করে যা সত্য এবং আমাদের সর্বোত্তম জ্ঞান এবং বিশ্বাসের জন্য প্রতারণামূলক বা অন্যায় নয়। প্রতিটি ব্যবহারকারী পরিষেবাটি ব্যবহার করার আগে ওয়েবসাইটে থাকা প্রাসঙ্গিক তথ্যের মাধ্যমে যেতে বাধ্য এবং এটি ধরে নেওয়া হবে যে প্রতিটি ব্যবহারকারী ওয়েবসাইটে প্রদত্ত প্রতিটি তথ্য সম্পর্কে সচেতন। ওয়েবসাইটের পণ্যের ছবি শুধুমাত্র রেফারেন্সের জন্য এবং প্রদত্ত ছবি থেকে প্রকৃত পণ্য ভিন্ন হতে পারে। ওয়েবসাইট আইন দ্বারা অনুমোদিত সম্পূর্ণ পরিমাণে এই শেষ পর্যন্ত কোনো অসঙ্গতি থেকে উদ্ভূত কোনো দায় অস্বীকার করে।<br />\r\n<br />\r\n8.2 যেকোন স্বল্পমেয়াদী বা দীর্ঘমেয়াদী প্রচারমূলক কার্যকলাপ বা অফার (গুলি) ডিফল্টভাবে perfectfoodbd.net -এ কোনো নির্দিষ্ট অ্যাকাউন্টের অধীনে প্রস্তাবিত সময়সীমার মধ্যে একটি একক অর্ডারের জন্য বৈধ। যেকোনো অফার বা প্রচারের সময় যে কোনো পুনরাবৃত্তিমূলক বা সন্দেহজনক বা অপমানজনক অনুশীলনের ফলে অর্ডার বাতিল হয়ে যেতে পারে এবং অন্যান্য ব্যবহারকারীদের অধিকার ও সুবিধাগুলি রক্ষা করার জন্য perfectfood এটি করার অধিকার সংরক্ষণ করে। যে অ্যাকাউন্টটি প্ল্যাটফর্মে যেকোনো উপায়ে যেকোনো অফারকে অপব্যবহার করতে পারে সেটিও প্ল্যাটফর্মে হাইজিন ফ্যাক্টর বজায় রাখার জন্য বন্ধ করা যেতে পারে। স্বয়ংক্রিয় অপব্যবহার শনাক্তকরণ প্রযুক্তি যা perfectfood -এর রয়েছে তা যেকোনো সময় কোনো ধরনের পূর্ব বিজ্ঞপ্তি ছাড়াই প্রয়োগ করা যেতে পারে।<br />\r\n<br />\r\n8.3 বিভিন্ন বিপণন চ্যানেলের মাধ্যমে গ্রাহকদের যেকোন/সমস্ত অংশকে অফার করা ডিসকাউন্ট কোড (গুলি) কোনো পূর্ব বিজ্ঞপ্তি ছাড়াই কর্তৃপক্ষ যে কোনো সময়ে নিষ্ক্রিয় বা বাড়ানো হতে পারে। মূল্য পরিবর্তন বা ওঠানামা এবং ব্যবহারকারী বেস দ্বারা একই ব্যবহার তীব্র যে কোনো ধরনের অপব্যবহার বা সংবেদনশীল ব্যবহার রক্ষার সাথে সামঞ্জস্য করার জন্য পদ্ধতি পরিবর্তন করা যেতে পারে।<br />\r\n<br />\r\n9. চুক্তি<br />\r\n9.1 আপনার অর্ডারটি আপনার অর্ডারে পণ্য (গুলি) কেনার জন্য আমাদের কাছে একটি অফার। আপনি যখন আমাদের কাছ থেকে একটি পণ্য কেনার জন্য একটি অর্ডার দেন, তখন আপনি একটি ই-মেইল এবং/অথবা আপনার মোবাইল ফোন নম্বরে আপনার অর্ডারের প্রাপ্তি নিশ্চিত করে এবং/অথবা আপনার অর্ডারের বিশদ বিবরণ সহ একটি ই-মেইল এবং/অথবা SMS পাবেন (&quot;অর্ডার নিশ্চিতকরণ ই-মেইল এবং/অথবা SMS&quot;)। অর্ডার কনফার্মেশন ই-মেইল এবং/অথবা এসএমএস হল এই স্বীকৃতি যে আমরা আপনার অর্ডার পেয়েছি, কিন্তু অর্ডার করা পণ্য (গুলি) কেনার জন্য আপনার প্রস্তাবের স্বীকৃতি নিশ্চিত করে না; যে যখন আমরা অর্ডার কনফার্মেশন ই-মেইল এবং/অথবা এসএমএস পাঠাই তখন একটি চুক্তি &quot;বিক্রয় করার চুক্তি&quot; নামে একটি চুক্তি সম্পন্ন হয় যা পণ্য বিক্রয় আইন, 1930 এর ধারা 4(3) অনুসারে সমাপ্ত হয় অর্থাৎ পণ্যের মধ্যে সম্পত্তি হস্তান্তর ভবিষ্যতের সময়ে সংঘটিত হবে যখন পণ্য (গুলি) আপনার নির্ধারিত ঠিকানায় পৌঁছে দেওয়া হবে। আমরা শুধুমাত্র আপনার অফারটি গ্রহণ করি এবং উপরোক্ত &quot;বিক্রয় করার চুক্তি&quot; পণ্য (গুলি) বিক্রয়ের জন্য একটি চুক্তিতে পরিণত হয় যা আপনি পণ্য বিক্রয় আইন, 1930-এর ধারা 4(4) অনুসারে অর্ডার করেছেন, যখন পণ্য (গুলি) আপনার নির্ধারিত ঠিকানায় পৌঁছে দেওয়া হয় এবং সেই সময়ে পণ্যের সম্পত্তি আমাদের থেকে আপনার কাছে হস্তান্তর করা হয়।<br />\r\n<br />\r\n9.2 পণ্যগুলি আপনার কাছে পৌঁছে দেওয়ার আগে আপনি কোনও মূল্য ছাড়াই কোনও পণ্যের জন্য আপনার অর্ডার বাতিল করতে পারেন।<br />\r\n<br />\r\n9.3 দয়া করে মনে রাখবেন যে আমরা কেবলমাত্র এমন পরিমাণে পণ্য বিক্রি করি যা একটি গড় পরিবারের সাধারণ চাহিদার সাথে সামঞ্জস্যপূর্ণ। এটি একটি একক অর্ডারের মধ্যে অর্ডার করা পণ্যের সংখ্যা এবং একই পণ্যের জন্য বেশ কয়েকটি অর্ডার দেওয়ার ক্ষেত্রে উভয় ক্ষেত্রেই প্রযোজ্য যেখানে স্বতন্ত্র অর্ডারগুলি একটি সাধারণ পরিবারের জন্য সাধারণ একটি পরিমাণ নিয়ে গঠিত।<br />\r\n<br />\r\n10. পণ্যের বিবরণ<br />\r\n10.1 perfectfood যতটা সম্ভব নির্ভুল হওয়ার চেষ্টা করে। perfectfood নিজেরাই সমস্ত পণ্য তৈরি বা উত্পাদন করে না। অতএব, perfectfood পণ্যের বিবরণ বা যেকোন perfectfood পণ্যের অন্যান্য বিষয়বস্তু সঠিক, সম্পূর্ণ, নির্ভরযোগ্য, বর্তমান বা ত্রুটি-মুক্ত হওয়ার নিশ্চয়তা দেয় না। যদি perfectfood দ্বারা প্রদত্ত একটি পণ্য বর্ণনা অনুযায়ী না হয়, তাহলে আপনার একমাত্র প্রতিকার হল এটি অব্যবহৃত অবস্থায় ফিরিয়ে দেওয়া।<br />\r\n<br />\r\n11. রিটার্ন পলিসি<br />\r\nরিটার্ন এবং রিফান্ডের শর্ত কি কি?<br />\r\nবিতরণের সময় বা 3 দিনের মধ্যে একটি আইটেম ফেরত দেওয়ার বৈধ শর্ত এবং কারণ যদি:<br />\r\n1. ভুল পণ্য ডেলিভারি করা<br />\r\n2. ত্রুটিপূর্ণ/ক্ষতিগ্রস্ত/পচা পণ্যের ডেলিভারি করা<br />\r\n3. পণ্য অব্যবহারযোগ্য অনুভব করা<br />\r\n4. পণ্যের গুণমান এবং পরিমাণ সম্পর্কে ওয়েবসাইটে ভুল বিষয়বস্তু<br />\r\n5. পচনশীল পণ্য (আম, ডিম, সবজি), ইত্যাদি বা দুধের জন্য ফেরত/প্রতিস্থাপন প্রযোজ্য নয়<br />\r\n<br />\r\n12 রিটার্ন জন্য শর্ত:<br />\r\n1. পণ্যটি অবশ্যই অব্যবহৃত, অধৌত এবং কোনো ত্রুটি ছাড়াই হতে হবে।<br />\r\n2. পণ্যটিতে অবশ্যই মূল ট্যাগ, ব্যবহারকারীর ম্যানুয়াল, ওয়ারেন্টি কার্ড, বিনামূল্যের জিনিসপত্র এবং আনুষাঙ্গিক অন্তর্ভুক্ত থাকতে হবে<br />\r\n3. পণ্যটি অবশ্যই আসল এবং অক্ষত প্রস্তুতকারকের প্যাকেজিং/বক্সে ফেরত দিতে হবে। যদি পণ্যটি Ekottre প্যাকেজিংয়ের দ্বিতীয় স্তরে বিতরণ করা হয় তবে এটি অবশ্যই একই অবস্থায় ফেরত দিতে হবে যার সাথে রিটার্ন শিপিং লেবেল সংযুক্ত রয়েছে। প্রস্তুতকারকের বাক্সে টেপ বা স্টিকার লাগাবেন না<br />\r\n<br />\r\n1. অনুগ্রহ করে আপনার অর্ডার নম্বর এবং যে বৈধ কারণে আপনি আইটেমটি ফেরত দিতে চান সে সম্পর্কে বিস্তারিত শেয়ার করুন।<br />\r\n2. আপনার ফেরত আইটেম হাতে পাবার পরে, পণ্য টি আপনার ফেরত পাঠানোর কারণ টা আমরা প্রয়োজনীয় পরীক্ষা করব।<br />\r\n3. পরীক্ষার পরে যদি কারণগুলি আমাদের কাছে বৈধ বলে মনে হয় তবে আমরা আপনাকে আরেকটি পণ্য (নতুন ও ইনটেক ) পুনরায় পাঠাব এবং আপনাকে অবহিত করব৷<br />\r\n4. কারণগুলি আমাদের কাছে অবৈধ বলে মনে হলে, আমরা আপনার ঠিকানায় আইটেমটি পুনরায় পাঠাব তবে আপনাকে অবশ্যই কুরিয়ার খরচ বহন করতে হবে।<br />\r\n4. সংগ্রহের 3 দিনের পরে আমরা আপনার আইটেমটির কোনো ফেরত অনুরোধ গ্রহণ করব না।<br />\r\n<br />\r\nকখন গ্রাহকের টাকা ফেরত দেওয়া হবে<br />\r\n1. গ্রাহককে যে পণ্যটি ডেলিভার করা হয়েছে তাতে সে সন্তুষ্ট না হলে আমরা তাকে ফেরত দিই। গ্রাহককে অবশ্যই আমাদের অব্যবহৃত পণ্যটি সংগ্রহের কাগজপত্র সহ আমাদের অফিসে ৩ দিনের মধ্যে পাঠাতে হবে এবং কুরিয়ার খরচ গ্রাহককে বহন করতে হবে। আমরা ব্যবহৃত এবং নষ্ট করা পণ্যের জন্য ফেরত দেব না।<br />\r\n2. আমরা যদি সমস্যা যুক্ত পণ্যের পরিবর্তে একই পণ্য (নতুন ও সীল করা) সরবরাহ করতে না পারি সেক্ষেত্রে আমরা ক্রেতা কে তার দেয়া পণ্যের মূল্য ফেরত দেয়া হবে ।<br />\r\n3. যদি কোন গ্রাহক পণ্যটি না পান তবে ফেরত পাবেন।<br />\r\n<br />\r\nযদি একটি পণ্য অপর্যাপ্ত অবস্থায় আমাদের কাছে ফেরত দেওয়া হয়, আমরা এটি আপনার কাছে ফেরত পাঠানোর অধিকার সংরক্ষণ করি।<br />\r\nN.B: যদি সীলটি ভেঙে যায় বা যদি যে অবস্থায় বা যে পরিমানে বিতরণ করা হয়েছিল তার পরিমাণ/ভলিউম একই না হয় তবে রিটার্ন/প্রতিস্থাপন নীতি গ্রহণ করা হবে না। তার জমা করা পণ্য টি 7 দিনের মধ্যে ফেরত পাঠানো হবে এবং শিপিং খরচ ক্রেতা বহন করবে।<br />\r\n<br />\r\n13. সরবরাহ নীতি:<br />\r\n13.1 perfectfood নিজেই সমস্ত পণ্য উত্পাদন বা উত্পাদন করে না, তাই perfectfood গুণমান নিয়ন্ত্রণ করার চেষ্টা করে, কিন্তু কোনোটির জন্য গুণমানের নিশ্চয়তা দেয় না। আমরা বিশ্বাস করি প্রস্তুতকারক/ বিক্রেতা/ সরবরাহকারী প্রতিটি পণ্যের গুণমান নিশ্চিত করতে সম্পূর্ণরূপে সক্ষম।<br />\r\n13.2 যদি কোনো ব্যবহারকারী, অর্ডার ডেলিভারি প্রাপ্তির সময়, স্বাস্থ্য/জীবন/নিরাপত্তার জন্য ক্ষতিকর কোনো পণ্য খুঁজে পান, আমরা সম্পূর্ণ দায় নেব এবং সেই পণ্যের ফেরত গ্রহণ করব। প্রদত্ত ডেলিভারির 72 ঘন্টা পরে ব্যবহারকারী যদি কোনও হুমকির সম্মুখীন হয়, আমরা এটিকে নির্মাতা বা সরবরাহকারীদের কাছ থেকে মানের নিশ্চয়তার অভাব হিসাবে বিবেচনা করব।<br />\r\n13.3 ওয়েবসাইটে প্রদর্শিত সমস্ত পণ্য পরিবর্তন সাপেক্ষে এবং প্রাপ্যতা সাপেক্ষে।<br />\r\n14. পরিবর্তন<br />\r\n14.1 perfectfood এই নিয়ম ও শর্তাবলী পরিবর্তন করার অধিকার সংরক্ষণ করে। perfectfoodbd.net এ পোস্ট করার সাথে সাথে এই ধরনের পরিবর্তন কার্যকর হবে। আপনি এই ধরনের পরিবর্তন পর্যালোচনার জন্য দায়ী. Perfectfoodbd.net -এর আপনার ক্রমাগত অ্যাক্সেস বা ব্যবহার আপনার পরিবর্তিত শর্তাবলীর স্বীকৃতি হিসেবে বিবেচিত হবে।<br />\r\n15. perfectfood সফ্টওয়্যার শর্তাবলী<br />\r\n15.1 perfectfood সফ্টওয়্যার/অ্যাপ্লিকেশন/অ্যাপ ব্যবহার: আপনি perfectfood সফ্টওয়্যার/অ্যাপ্লিকেশন/অ্যাপ ব্যবহার করতে পারেন শুধুমাত্র আপনাকে perfectfood দ্বারা প্রদত্ত পরিষেবাগুলি ব্যবহার এবং উপভোগ করতে সক্ষম করার উদ্দেশ্যে, এবং এই শর্তাবলী দ্বারা অনুমোদিত৷ আপনি perfectfoodbd সফ্টওয়্যার/অ্যাপ্লিকেশন/অ্যাপের কোনো অংশ আপনার নিজস্ব প্রোগ্রামে অন্তর্ভুক্ত করতে পারবেন না বা আপনার নিজের প্রোগ্রামের সাথে এটির কোনো অংশ সংকলন করতে পারবেন না, অন্য পরিষেবার সাথে ব্যবহারের জন্য এটি স্থানান্তর করতে পারবেন না, বা বিক্রি, ভাড়া, লিজ, ধার, ঋণ, perfectfood এর সফ্টওয়্যার/অ্যাপ্লিকেশন/অ্যাপ বিতরণ বা সাব-লাইসেন্স বা অন্যথায় সম্পূর্ণ বা আংশিকভাবে perfectfood এর সফ্টওয়্যার/অ্যাপ্লিকেশন/অ্যাপকে কোনো অধিকার বরাদ্দ করতে পারবেন না । আপনি কোনো বেআইনি উদ্দেশ্যে perfectfood Software/Application/App ব্যবহার করতে পারবেন না। আমরা যেকোন perfectfood সফ্টওয়্যার/অ্যাপ্লিকেশন/অ্যাপ প্রদান বন্ধ করে দিতে পারি এবং আমরা যেকোন সময় যেকোন ekottre সফ্টওয়্যার/অ্যাপ্লিকেশন/অ্যাপ ব্যবহার করার আপনার অধিকার বাতিল করতে পারি। perfectfood সফ্টওয়্যার/অ্যাপ্লিকেশন/অ্যাপ ব্যবহার করার জন্য আপনার অধিকারগুলি স্বয়ংক্রিয়ভাবে আমাদের কাছ থেকে বিজ্ঞপ্তি ছাড়াই শেষ হয়ে যাবে যদি আপনি এই শর্তাবলীর যেকোনো একটি মেনে চলতে ব্যর্থ হন। যেকোন perfectfood পরিষেবাতে ব্যবহৃত সমস্ত সফ্টওয়্যার হল perfectfood এবং/অথবা এর সহযোগী সংস্থা বা এর সফ্টওয়্যার সরবরাহকারীদের সম্পত্তি এবং বাংলাদেশের আইন দ্বারা সুরক্ষিত কিন্তু অন্যান্য প্রযোজ্য কপিরাইট আইনের মধ্যে সীমাবদ্ধ নয়।<br />\r\n<br />\r\n15.2 তৃতীয় পক্ষের পরিষেবাগুলির ব্যবহার: আপনি যখন perfectfood সফ্টওয়্যার/অ্যাপ্লিকেশন/অ্যাপ ব্যবহার করেন, তখন আপনি এক বা একাধিক তৃতীয় পক্ষের পরিষেবাগুলিও ব্যবহার করতে পারেন, যেমন একটি বেতার ক্যারিয়ার বা একটি মোবাইল প্ল্যাটফর্ম প্রদানকারী৷ এই তৃতীয় পক্ষের পরিষেবাগুলির আপনার ব্যবহার সেই তৃতীয় পক্ষের পৃথক নীতি, ব্যবহারের শর্তাবলী এবং ফিগুলির সাপেক্ষে হতে পারে৷<br />\r\n<br />\r\n15.3 রিভার্স ইঞ্জিনিয়ারিং নয়: আপনি নাও পারেন এবং আপনি অন্য কোনো ব্যক্তিকে perfectfood সফ্টওয়্যার/অ্যাপ্লিকেশন/অ্যাপকে কপি, পরিবর্তন, রিভার্স ইঞ্জিনিয়ার, ডিকম্পাইল বা ডিসসেম্বল করার জন্য উৎসাহিত, সহায়তা বা অনুমোদন করবেন না। আংশিকভাবে, বা perfectfood সফ্টওয়্যার/অ্যাপ্লিকেশন/অ্যাপ থেকে বা এর কোনো ডেরিভেটিভ কাজ তৈরি করুন।<br />\r\n<br />\r\n15.4 আপডেট: perfectfood সফ্টওয়্যার/অ্যাপ্লিকেশন/অ্যাপ আপ-টু-ডেট রাখার জন্য, আমরা যেকোনো সময় এবং আপনাকে নোটিশ ছাড়াই স্বয়ংক্রিয় বা ম্যানুয়াল আপডেট অফার করতে পারি।<br />\r\n<br />\r\n<br />\r\n<br />\r\n1. Terms of Use<br />\r\n<br />\r\n1.1 Welcome to perfectfoodbd.net. perfectfood (&ldquo;perfectfood&rdquo;) provides access to the perfectfoodbd.net website or the mobile application/app or any other media (&quot;Website&quot;) to you subject to the terms and conditions (&ldquo;Terms&rdquo;) set out on this page. By using the Website, you, a registered or guest user in terms of the eligibility criteria set out herein (&ldquo;User&rdquo;) agree to be bound by the Terms. Please read them carefully as your continued usage of the Website, you signify your agreement to be bound by these Terms. If you do not want to be bound by the Terms, you must not subscribe to or use the Website or our services.<br />\r\n<br />\r\n1.2 By impliedly or expressly accepting these Terms, you also accept and agree to be bound by perfectfoodbd.net Policies (including but not limited to Privacy Policy available at https://perfectfoodbd.net/pages-privacy-policy/) as amended from time to time.<br />\r\n<br />\r\n1.3 In these Terms, references to &quot;you&quot;, &quot;User&quot; shall mean the end user/customer accessing the Website, its contents and using the Services offered through the Website. References to the &ldquo;Website&rdquo;, &quot;perfectfood&quot;, &ldquo;perfectfoodbd.net&rdquo;, &quot;we&quot;, &quot;us&quot; and &quot;our&quot; shall mean the Website and/or perfectfood.<br />\r\n<br />\r\n1.4 The contents set out herein form an electronic record in terms of তথ্য ও যোগাযোগ প্রযুক্তি আইন, ২০০৬ (Information &amp; Communication Technology Act, 2006) and rules there under as applicable and as amended from time to time. As such, this document does not require any physical or digital signatures and forms a valid and binding agreement between the Website and the User.<br />\r\n<br />\r\n1.5 The Website is operated by perfectfood., a company Licensed under the laws of Bangladesh having its registered office at House 1/4, Road - 1 Dhaka Uddan Housing, Dhaka, Bangladesh. All references to the Website in these Terms shall deem to refer to the aforesaid entity in inclusion of the online portal.<br />\r\n<br />\r\n1.6 This Website may also contain links to other websites, which are not operated by perfectfood, and perfectfood has no control over the linked sites and accepts no responsibility for them or for any loss or damage that may arise from your use of them. Your use of the linked sites will be subject to the terms of use and service contained within each such site.<br />\r\n<br />\r\n1.7 We reserve the right to change these Terms at any time. Such changes will be effective when posted on the Website. By continuing to use the Website after we post any such changes, you accept the Terms as modified.<br />\r\n<br />\r\n1.8 These Terms will continue to apply until terminated by either You or perfectfood in accordance with the terms set out below:<br />\r\n<br />\r\n1.9 The agreement with perfectfood can be terminated by (i) not accessing the Website; or (ii) closing Your Account, if such option has been made available to You.<br />\r\n<br />\r\n1.10 Notwithstanding the foregoing, these provisions set out in these Terms which by their very nature survive are meant to survive termination, shall survive the termination / expiry of this agreement.<br />\r\n<br />\r\n2. Eligibility<br />\r\n<br />\r\n2.1 Use of the Website is available only to such persons who can legally contract under the Contract Act, 1872.<br />\r\n<br />\r\n2.2 If you are a minor i.e. under the age of 18 years, you shall not register as a user of perfectfoodbd.net and shall not transact on or use the Website. As a minor if you wish to use or transact on website, such use or transaction may be made by your legal guardian or parents on the Website. perfectfood reserves the right to terminate your membership and / or refuse to provide you with access to the website if it is brought to perfectfood&rsquo;s notice or if it is discovered that you are under the age of 18 years.<br />\r\n<br />\r\n2.3 By accepting the Terms or using or transacting on the Website, the User irrevocably declares and undertakes that he/she is of legal age i.e. 18 years or older and capable of entering into a binding contract and such usage shall be deemed to form a contract between the Website and such User to the extent permissible under applicable laws.<br />\r\n<br />\r\n2.4 The usage of the Services offered through the Website is only available if the address of the User to which the product(s) is/are to be delivered is within Bangladesh; perfectfood is serving with Maximum 72 Hour Delivery Service.<br />\r\n<br />\r\n3. Communication<br />\r\n<br />\r\n3.1 When you use perfectfoodbd.net, or contact us via phone or email, you consent to receive communication from us. You authorize us to communicate with you by e-mail, SMS, phone call or by posting notices on the website or by any other mode of communication. For contractual purposes, you consent to receive communications (including transactional, promotional and/or commercial messages), from us with respect to your use of the website and/or your order placed on the Website. Additionally, any disclosures posted on the site, or sent to you by email fulfill the legal obligation of communication made in writing.<br />\r\n<br />\r\n4. Your Account and Responsibilities<br />\r\n<br />\r\n4.1 Any person may access the Website either by registering to the Website or using the Website as a guest. However, a guest user may not have access to all sections of the Website including certain benefits/promotional offers, which shall be reserved only for the purpose of registered Users, and which may change from time to time at the sole discretion of the Website.<br />\r\n<br />\r\n4.2 If you wish to register your account with the Website, you shall be required to create an account by registering with a valid Bangladeshi mobile number. You will then receive a password or one-time PIN with which you can login to the website to place orders. &lt;<br />\r\n<br />\r\n4.3 If you use the website, you will be responsible for maintaining the confidentiality of your username and password and you will be responsible for all activities that occur under your username and you will be under the obligation to restrict access to your computer or mobile phone to prevent unauthorized access to your account. You should inform us immediately if you have any reason to believe that your password has become known to anyone else, or if the password is being, or is likely to be, used in an unauthorized manner. You agree that if you provide any information that is untrue, inaccurate, not current or incomplete or we have reasonable grounds to suspect that such information is untrue, inaccurate, not current or incomplete, or not in accordance with this Terms of Use, we have the right to suspend or terminate your membership on the website.<br />\r\n<br />\r\n4.4 The Website may be inaccessible for such purposes as it may, at its sole discretions deem necessary, including but not limited to regular maintenance. However, under no circumstances will perfectfood be held liable for any losses or claims arising out of such inaccessibility to the Users and the Users expressly waive any claims against perfectfood in this regard<br />\r\n<br />\r\n4.5 perfectfood as a platform do not support or encourage multiple accounts owned by a single user even with different mobile numbers &amp; reserves the right to restrict, deactivate or disable any account that might fall under any sort of abuse to the service.<br />\r\n<br />\r\n5. Charges<br />\r\n<br />\r\n5.1 Membership on the website is free for users. perfectfood does not charge any fee for browsing and buying on the website. perfectfood reserves the right to change its fee policy from time to time. In particular, perfectfood may at its sole discretion introduce new services and modify some or all of the existing services offered on the website. In such an event, perfectfood reserves the right to introduce fees for the new services offered or amend/introduce fees for existing services, as the case may be. Changes to the fee policy will be posted on the website and such changes will automatically become effective immediately after they are posted on the website.<br />\r\n<br />\r\n6. Copyright<br />\r\n<br />\r\n6.1 The material (including the content, and any other content, software or services) contained on perfectfoodbd.net are the property of perfectfood, its subsidiaries, affiliates and/or third-party licensors. No material on this site may be copied, reproduced, republished, installed, posted, transmitted, stored or distributed without written permission from perfectfood.<br />\r\n<br />\r\n6.2 You may not use any &ldquo;deep-link&rdquo;, &ldquo;page-scrape&rdquo;, &ldquo;robot&rdquo;, &ldquo;spider&rdquo; or other automatic device, program, algorithm or methodology, or any similar or equivalent manual process, to access, acquire, copy or monitor any portion of the website or any content, or in any way reproduce or circumvent the navigational structure or presentation of the website or any content, to obtain or attempt to obtain any materials, documents or information through any means not purposely made available through the website. We reserve our right to bar any such activity.<br />\r\n<br />\r\n7. Cookies<br />\r\n<br />\r\n7.1 This site uses cookies, which means that you must have cookies enabled on your computer in order for all functionality on this site to work properly. A cookie is a small data file that is written to your hard drive when you visit certain Web sites. Cookie files contain certain information, such as a random number user ID that the site assigns to a visitor to track the pages visited. A cookie cannot read data off your hard disk or read cookie files created by other sites. Cookies, by themselves, cannot be used to find out the identity of any user.<br />\r\n<br />\r\n8. Promotional Activity<br />\r\n<br />\r\n8.1 To promote its services perfectfood uses various advertisement and commercials which are truthful and are not deceptive or unfair to the best of our knowledge and belief. Every user is under the obligation to go through the relevant information contained in the Website before using the service and it will be assumed that each user is aware of every information provided in the Website. Images of products in the Website are for and by reference only and actual product may vary from the corresponding image exhibited. The Website disclaims any liabilities arising out of any discrepancies to this end to the fullest extent permitted by law.<br />\r\n<br />\r\n8.2 Any short term or long-term promotional activity or offer(s) are by default valid for a single order within the offered time frame under any specific account on perfectfoodbd.net. Any repetitive or suspicious or abusive practice during any offer or promotion might result as cancelled order &amp; perfectfood reserves the right to do so to protect the rights &amp; benefits of other users. Account that tends to abuse any offer by any means on the platform can also get terminated to maintain hygiene factor on the platform. The automated abuse detection technology that perfectfood has can be also enforced at any time without any sort of prior notice.<br />\r\n<br />\r\n8.3 Discount code(s) offered to any/all segment of customer(s) through different marketing channels might get disabled or extended by the authority at any time without any prior notice. The modality can also be changed to accommodate with price changes or fluctuation &amp; intense of uses of the same by the user base to protect any sort of abuse or susceptive uses.<br />\r\n<br />\r\n9. The Contract<br />\r\n<br />\r\n9.1 Your order is an offer to us to buy the product(s) in your order. When you place an order to purchase a product from us, you will receive an e-mail and/or SMS to your mobile phone number confirming receipt of your order and/or containing the details of your order (the &quot;Order Confirmation E-mail and/or SMS&quot;). The Order Confirmation E-mail and/or SMS is acknowledgement that we have received your order, but does not confirm acceptance of your offer to buy the product(s) ordered; that when we send the Order Confirmation E-mail and/or SMS a contract called an &ldquo;agreement to sell&rdquo; is concluded in accordance with Section 4(3) of the Sale of Goods Act, 1930 i.e. the transfer of the property in the goods is to take place at a future time when the product(s) is/are delivered to your designated address. We only accept your offer, and the above &ldquo;agreement to sell&rdquo; becomes a contract of sale for product(s) ordered by you in accordance with Section 4(4) of the Sale of Goods Act, 1930, when the product(s) is/are delivered to your designated address and at that time the property in the goods is transferred from us to you.<br />\r\n<br />\r\n9.2 You can cancel your order for a product at no cost any time before the goods are delivered to you.<br />\r\n<br />\r\n9.3 Please note that we sell products only in quantities which correspond to the typical needs of an average household. This applies both to the number of products ordered within a single order and the placing of several orders for the same product where the individual orders comprise a quantity typical for a normal household.<br />\r\n<br />\r\n10. Product Descriptions<br />\r\n<br />\r\n10.1 perfectfood attempts to be as accurate as possible. perfectfood does not manufacture or produce all the product by themselves. Therefore, perfectfood does not warrant that product descriptions or other content of any perfectfood product is accurate, complete, reliable, current, or error-free. If a product offered by perfectfood itself is not as described, your sole remedy is to return it in unused condition.<br />\r\n<br />\r\n11. Return Policy<br />\r\nValid conditions and reasons to return an item during the time of delivery or within 3 days if:<br />\r\n<br />\r\n1. Delivery of wrong product<br />\r\n2. Delivery of defective/ damaged/ rotten product<br />\r\n3. Finds product unusable<br />\r\n4. Incorrect content on the website about the product quality and quantity 5. Refund / Replace is not applicable for perishable product (mango, egg, vegetable), etc. or milk<br />\r\n<br />\r\nConditions for Returns<br />\r\n1. The product must be unused, unworn, unwashed, and without any flaws. Fashion products can be tried on to see if they fit and will still be considered unworn<br />\r\n2. The product must include the original tags, user manual, warranty cards, freebies, and accessories<br />\r\n3. The product must be returned in the original and undamaged manufacturer packaging/box. If the product was delivered in the second layer of Nil Bazar BD packaging, it must be returned in the same condition with the return shipping label attached. Do not put tape or stickers on the manufacturer&rsquo;s box<br />\r\n<br />\r\n1. Please share your order number and detail about the item you want to return for a valid reason.<br />\r\n2. After having your returned item, we will do requisite tests to justify the reasons for what you return the item.<br />\r\n3. After the tests if the reasons appear valid to us then we will send you a change and notify you.<br />\r\n4. if reasons appear to us invalid, we will also send the item to your address but you must bear the courier cost then.<br />\r\n4. We will not accept any return request of your item after 3 days of procurement.<br />\r\n<br />\r\n12. Refund Policy<br />\r\n<br />\r\nWhen customer will be refunded<br />\r\n1. We refund the customer if he/she doesn&rsquo;t satisfy with the product that he/she has been delivered. The customer must send us the unused product with procurement papers and carry courier costs within 3 days to a net refund. We will not refund for Used and worn product.<br />\r\n2. 2. Problematic product owner to whom we cannot provide with change will get a refund.<br />\r\n3. 3. If any customer does not receive the product at all will get a refund.<br />\r\n<br />\r\nIf a product is returned to us in an inadequate condition, we reserve the right to send it back to you.<br />\r\nN.B: Return/replacement policy will not be entertained if the seal is broken or if the quantity/volume is not the same as it was delivered. The shipping cost will be beard by the client. A refund will be made within 7 days.<br />\r\n<br />\r\n13. Supply Policy:<br />\r\n13.1 perfectfood, itself does not produce or manufacture all product, therefore perfectfood tries to control the quality, but do not give quality assurance for any. We believe the manufacturer/ vendor/ supplier are fully capable of assuring the quality of every product.<br />\r\n<br />\r\n13.2 If any user, at the time of receiving the order delivery, finds any product injurious to health/ life/ security, we will take full liability and will accept return of that product. If the user faces any threat after 72 hours of the provided delivery, we will consider it as a lacking within the quality assurance from the manufacturers or suppliers.<br />\r\n<br />\r\n13.3 All products displayed on the website are subject to change and are subject to availability.<br />\r\n<br />\r\n14. Modifications<br />\r\n<br />\r\n15.1 perfectfood reserves the right to modify these Terms and Conditions. Such modifications shall be effective immediately upon posting on perfectfoodbd.net. You are responsible for the reviewing of such modifications. Your continued access or use of perfectfoodbd.net shall be deemed your acceptance of the modified terms and conditions.<br />\r\n<br />\r\n15. Software Terms<br />\r\n<br />\r\n15.1 Use of the perfectfood Software/Application/App : You may use perfectfood Software/ Application/ App solely for purposes of enabling you to use and enjoy the services as provided by perfectfood, and as permitted by these Terms. You may not incorporate any portion of the perfectfood Software / Application/ App into your own programs or compile any portion of it in combination with your own programs, transfer it for use with another service, or sell, rent, lease, lend, loan, distribute or sub-license the perfectfood Software / Application/ App or otherwise assign any rights to the perfectfood Software / Application/ App in whole or in part. You may not use the perfectfood Software / Application/ App for any illegal purpose. We may cease providing any perfectfood Software / Application/ App and we may terminate your right to use any perfectfood Software / Application/ App at any time. Your rights to use the perfectfood Software / Application/ App will automatically terminate without notice from us if you fail to comply with any of these Terms. All software used in any perfectfood Service is the property of perfectfood and/or its affiliates or its software suppliers and protected by laws of Bangladesh including but not limited to any other applicable copyright laws.<br />\r\n<br />\r\n15.2 Use of Third-Party Services: When you use the perfectfood Software / Application/ App, you may also be using the services of one or more third parties, such as a wireless carrier or a mobile platform provider. Your use of these third-party services may be subject to the separate policies, terms of use, and fees of those third parties.<br />\r\n<br />\r\n15.3 No Reverse Engineering: You may not, and you will not encourage, assist or authorize any other person to copy, modify, reverse engineer, decompile or disassemble, or otherwise tamper with, the perfectfood Software / Application/ App, whether in whole or in part, or create any derivative works from or of the perfectfood Software / Application/ App.<br />\r\n<br />\r\n15.4 Updates: In order to keep the perfectfood Software / Application/ App up-to-date, we may offer automatic or manual updates at any time and without notice to you.<br />\r\n<br />\r\n<!--<h5>The following Terms and Conditions apply to your use of our website. Please read--> <!--    these Terms and Conditions carefully to make sure that you understand them before--> <!--    using our website. If you continue to use the services or order products from our--> <!--    website, we will take this as your acceptance of these Terms and Conditions.</h5>--> <!--<p><strong><br>1. Product information:</strong><br></p> --> <!--<p> We attempt to be as accurate as--> <!--    possible in the description of the products displayed on the Website. Please note--> <!--    that we cannot be held responsible for color shade differences that occur from--> <!--    screen resolution issues. We are not authorized to give unedited pictures via social--> <!--    media. Although we attempt to display colors accurately, we cannot guarantee that--> <!--    your computer\'s display of the images accurately reflects the true color of the--> <!--    products. The sizes may vary depending on different designs.<br> Please contact our--> <!--    Customer Service Advisors if you would like more information about a product.</p>--> <!--<p><strong>2. Purchase Terms:</strong></p>--> <!--<p>The Website allows you to check your order and correct any errors before completing a--> <!--    purchase or transaction. Please take the time to read and check your order at each--> <!--    page of the order process as you are responsible for ensuring that the information--> <!--    is accurate.</p>--> <!--<p><strong>3. Tax and Charges:</strong></p>--> <!--<p>Depending on your delivery address, different taxation rules and additional charges--> <!--    may apply.</p>--> <!--<p><strong>4. Order Delivery:</strong></p>--> <!--<p>The delivery is controlled by the courier services and we have no control over it. We--> <!--    do not know the exact date and time of delivery.</p>--> <!--<p>Our parcels are sent via courier service, so we really cannot control when they--> <!--    deliver the products. When they call you, please let them know your preferred time--> <!--    and date of delivery. The order cannot be delayed. It can take maximum 72 hours!</p>--> <!--<p><strong>5. Shoe Accessories Not Sold Separately:</strong></p>--> <!--<p>We don\'t sell shoe accessories separately without shoes. If you have bought shoes--> <!--    from us recently, please kindly show us a picture of the receipt. If you have shoes--> <!--    that you purchased previously that you want to wear with the tinkles, please kindly--> <!--    send us a picture of the shoe.</p>--> <!--<p><strong>6. Custom Made:</strong></p>--> <!--<p>You have to set appointment for any custom made orders with us. To set appointment contact us at <span>info@safefood.com</span></p>--> <!--<p><strong>7. Guarantee/Warranty:</strong></p>--> <!--<p>We can ensure that all our products are thoroughly tested before the launch to ensure--> <!--    longevity and durability of the product. Please note that the durability and--> <!--    longevity of any product depends on the care and usage of the product. We will not--> <!--    be held responsible for any issues occurring due to misuse or improper care of any--> <!--    product.</p>--> <!--<p><strong>8. Exchange Conditions:</strong></p>--> <!--<p>If there is any size issues kindly keep the pair with you pay the bill and let us--> <!--    know in 24 hours. Do not return the product. Once you let us know, we will send--> <!--    another pair for delivery, while delivering previous pair will be collected from you--> <!--    &amp; right pair will be handed over. You only need to pay the delivery charge.</p>--> <!--<p><strong>9. Your Account:<br> </strong>If you use this site, you are responsible for--> <!--    maintaining the confidentiality of your account and password and for restricting--> <!--    access to your computer, and you agree to accept responsibility for all activities--> <!--    that occur under your account or password.</p>--> <!--<p><strong>10. Price:</strong><br> Price and availability information provided on this--> <!--    website is subject to change without notice. All prices quoted are in Bangladeshi--> <!--    taka.</p>--> <!--<p><strong>11. Availability in Store:</strong></p>--> <!--<p>We aren\'t authorized to provide exact availability. We will not be taking any--> <!--    responsibility if they are sold out by the time you visit.</p>--> <!--<p><strong>12. Booking Options:</strong></p>--> <!--<p>We don\'t follow booking option. You can purchase directly from our stock.</p>--> <!--<p><strong>13. Cancelled Order:</strong></p>--> <!--<p>3 consecutive cancellations will result in your details being blacklisted from our--> <!--    system and you will not be able to order with us further.</p>--> <!--<p><strong>14. VAT Queries (online shopping):</strong></p>--> <!--<p>E-commerce purchases are not included under the taxation laws, so we are not taking--> <!--    any VAT for online purchases.</p>--> <!--<p><strong>15. Brand Copyrights:</strong></p>--> <!--<p>We hold our copyrights &amp; trademarks exclusively for our products on any of the--> <!--    display- website, social media, store.</p>--> <!--<p><strong>16. Changes:</strong></p>--> <!--<p>SafeFood may modify, alter or update the terms and conditions of this website from time to time. We will notify you of any such modifications to this website by posting notice of such changes in Facebook. If you continue using this site after the modifications it will constitute your acceptance of the modified terms and policies.</p>--> <!--<p><strong>17. Termination</strong><br> SafeFood reserves the right, at its sole discretion, to terminate your access to all or any part of this site, with or without notice.</p>--></p>', NULL, '2023-10-29 18:15:40');
INSERT INTO `pages` (`id`, `slug`, `name`, `content`, `created_at`, `updated_at`) VALUES
(2, 'privacy-policy', 'Privacy Policy', '<p><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">আপনি</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">যখন</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">আমাদের</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">ওয়েবসাইট</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">ব্যবহার</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">করেন</span></span></span><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#615e58\">, </span></span></span><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">তখন</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">আমরা</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">আপনার</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">ব্যক্তিগত</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">তথ্য</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">সংগ্রহ</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">এবং</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">সংরক্ষণ</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">করি</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">যা</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">আপনার</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">দ্বারা</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">বিভিন্ন সময়ে</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">প্রদান</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">করা</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">হয়েছে।</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">এটি</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">করার</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">ক্ষেত্রে</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">আমাদের</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">প্রাথমিক</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">লক্ষ্য</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">হল</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">আপনাকে</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">একটি</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">নিরাপদ</span></span></span><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#615e58\">, </span></span></span><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">দক্ষ</span></span></span><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#615e58\">, </span></span></span><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">মসৃণ</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">এবং</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">কাস্টমাইজড</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">অভিজ্ঞতা</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">প্রদান</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">করা।</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">এটি</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">আমাদের</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">পরিষেবা</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">এবং</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">বৈশিষ্ট্যগুলি</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">প্রদান</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">করতে</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">দেয়</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">যা</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">সম্ভবত</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">আপনার</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">প্রয়োজন</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">মেটাতে</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">পারে</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">এবং</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">আপনার</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">অভিজ্ঞতাকে</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">আরও</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">নিরাপদ</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">এবং</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">সহজ</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">করতে</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">আমাদের</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">ওয়েবসাইট</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">কাস্টমাইজ</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">করতে</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">পারে৷</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">আরও</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">গুরুত্বপূর্ণ</span></span></span><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#615e58\">, </span></span></span><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">এটি</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">করার</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">সময়</span></span></span><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#615e58\">, </span></span></span><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">আমরা</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">আপনার</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">কাছ</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">থেকে</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">ব্যক্তিগত</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">তথ্য</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">সংগ্রহ</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">করি</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">যা</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">আমরা</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">এই</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">উদ্দেশ্য</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">অর্জনের</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">জন্য</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">প্রয়োজনীয়</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">বলে</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">মনে</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">করি।</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">নীচে</span></span></span> <span style=\"font-size:12.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">আমরা</span></span></span> <span style=\"font-size:12.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">আপনার</span></span></span> <span style=\"font-size:12.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">তথ্য</span></span></span> <span style=\"font-size:12.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">সংগ্রহ</span></span></span> <span style=\"font-size:12.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">এবং</span></span></span> <span style=\"font-size:12.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">সংরক্ষণ</span></span></span> <span style=\"font-size:12.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">করার</span></span></span> <span style=\"font-size:12.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">কিছু</span></span></span> <span style=\"font-size:12.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">উপায়</span></span></span> <span style=\"font-size:12.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">রয়েছে</span></span></span><span style=\"font-size:12.5pt\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#615e58\">:</span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:48px\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#615e58\">&bull; </span></span></span><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">আমরা</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">আমাদের</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">ওয়েবসাইটে</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">আপনার</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">প্রবেশ</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">করা</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">যেকোন</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">তথ্য</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">গ্রহণ</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">করি</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">এবং</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">সঞ্চয়</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">করি</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">বা</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">অন্য</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">কোন</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">উপায়ে</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">আমাদের</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">আমাদের</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">কে</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">প্রদান</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">করা হয় ।</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">আপনার</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">অনুরোধে</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">সাড়া</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">দেওয়া</span></span></span><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#615e58\">, </span></span></span><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">আপনার</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">জন্য</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">ভবিষ্যত</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">কেনাকাটা</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">কাস্টমাইজ</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">করা</span></span></span><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#615e58\">, </span></span></span><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">আমাদের</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">স্টোরের</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">উন্নতি</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">করা</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">এবং</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">আপনার</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">সাথে</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">যোগাযোগ</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">করার</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">মতো</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">উদ্দেশ্যে</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">আপনি</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">যে</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">তথ্য</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">প্রদান</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">করেন</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">তা</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">আমরা</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">ব্যবহার</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">করি।</span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:48px\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#615e58\">&bull; </span></span></span><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">আপনি</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">যখনই</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">আমাদের</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">সাথে</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">ইন্টারঅ্যাক্ট</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">করেন</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">তখন</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">আমরা</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">নির্দিষ্ট</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">ধরনের</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">তথ্য</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">সঞ্চয়</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">করি।</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">উদাহরণস্বরূপ</span></span></span><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#615e58\">, </span></span></span><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">অনেক</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">ওয়েবসাইটের</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">মতো</span></span></span><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#615e58\">, </span></span></span><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">আমরা</span></span></span><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#615e58\"> &quot;</span></span></span><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">কুকিজ</span></span></span><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#615e58\">&quot; </span></span></span><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">ব্যবহার</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">করি</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">এবং</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">যখন</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">আপনার</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">ওয়েব</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">ব্রাউজার</span></span></span><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#615e58\"> perfectfoodbd.net </span></span></span><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">বা</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">বিজ্ঞাপন</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">এবং</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">অন্যান্য</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">ওয়েবসাইটগুলিতে</span></span></span><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#615e58\"> perfectfoodbd.net </span></span></span><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">এর</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">পক্ষ</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">থেকে</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">পরিবেশিত</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">অন্যান্য</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">বিষয়বস্তু</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">অ্যাক্সেস</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">করে</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">তখন</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">আমরা</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">নির্দিষ্ট</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">ধরণের</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">তথ্য</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">পাই৷</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">আপনার</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">তথ্য</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">পরিবর্তন</span></span></span><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#615e58\">:</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">আপনি</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">আমাদের</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">যে</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">তথ্য</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">প্রদান</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">করেন</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">তা</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">পাথরে</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">সেট</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">করা</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">হয়নি।</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">আপনি</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">যেকোনো</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">সময়</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">আপনার</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">প্রোফাইলের</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">ব্যক্তিগত</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">তথ্য</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">পর্যালোচনা</span></span></span><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#615e58\">, </span></span></span><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">আপডেট</span></span></span><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#615e58\">, </span></span></span><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">সংশোধন</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">বা</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">মুছে</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">ফেলতে</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">পারেন।</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#615e58\">&bull; </span></span></span><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">আপনি</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">যদি</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">চান</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">যে</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">আমরা</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">আমাদের</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">রেকর্ড</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">থেকে</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">আপনার</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">তথ্য</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">মুছে</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">ফেলি</span></span></span><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#615e58\">, </span></span></span><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">অনুগ্রহ</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">করে</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">আমাদের</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">সাথে</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">যোগাযোগ</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">করুন</span></span></span> <span style=\"color:black\"><a href=\"mailto:support@perfectfoodbd.net\" style=\"color:blue; text-decoration:underline\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\">support@perfectfoodbd.net</span></span></a></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">একটি</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">অনুরোধ</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">প্রেরণ</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">করুন৷</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">আমাদের</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">গ্রাহকদের</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">সম্পর্কে</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">তথ্য</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">আমাদের</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">ব্যবসার</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">একটি</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">গুরুত্বপূর্ণ</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">অংশ</span></span></span><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#615e58\">, </span></span></span><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">এবং</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">আমরা</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">এটি</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">অন্যদের</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">কাছে</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">বিক্রি</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">করার</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">ব্যবসায়</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">নই।</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">আমরা</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">অ্যাকাউন্ট</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">এবং</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">অন্যান্য</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">ব্যক্তিগত</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">তথ্য</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">তখনিই প্রকাশ</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">করি</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">যখন</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">আমরা</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">বিশ্বাস</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">করি</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">যে</span></span></span><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#615e58\"> perfectfoodbd.net </span></span></span><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">এর</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">অধিকার</span></span></span><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#615e58\">, </span></span></span><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">সম্পত্তি</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">বা</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">নিরাপত্তা</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">রক্ষা</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">করার</span></span></span> <span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">ক্ষেত্রে আমাদের সার্ভিস ব্যবহারের নিয়ম ভঙ্গ করা হচ্ছে তখন আমরা আইন প্রয়োগকারী প্রতিষ্ঠানের কাছে আপনার তথ্য শেয়ার করা উচিত মনে করি। এতে জালিয়াতি সুরক্ষার জন্য অন্যান্য কোম্পানি এবং সংস্থার সাথে তথ্য বিনিময় অন্তর্ভুক্ত রয়েছে।</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><a name=\"_Hlk143108706\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#615e58\">When you use our website, we collect and store your personal information which is provided by you from time to time. Our primary goal in doing so is to provide you a safe, efficient, smooth and customized experience. This allows us to provide services and features that most likely meet your needs, and to customize our website to make your experience safer and easier. More importantly, while doing so, we collect personal information from you that we consider necessary for achieving this purpose.&nbsp;</span></span></span></a></span></span></span><br />\r\n<br />\r\n<span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#615e58\">Below are some of the ways in which we collect and store your information:&nbsp;</span></span></span></span></span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#615e58\">We receive and store any information you enter on our website or give us in any other way. We use the information that you provide for such purposes as responding to your requests, customizing future shopping for you, improving our stores, and communicating with you.</span></span></span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#615e58\">We also store certain types of information whenever you interact with us. For example, like many websites, we use &quot;cookies,&quot; and we obtain certain types of information when your web browser accesses perfectfoodbd.net or advertisements and other content served by or on behalf of perfectfoodbd.net on other websites.</span></span></span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#615e58\">To help us make e-mails more useful and interesting, we often receive a confirmation when you open e-mail from perfectfoodbd.net if your computer supports such capabilities.</span></span></span></span></span></span></li>\r\n</ul>\r\n\r\n<p><br />\r\n<span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#615e58\">Changes To Your Information:<br />\r\nThe information you provide us isn&rsquo;t set in stone. You may review, update, correct or delete the personal information in your profile at any time.&nbsp;</span></span></span></span></span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#615e58\">If you would like us to remove your information from our records, please create a request at the Contact Us&nbsp;page.&nbsp;</span></span></span></span></span></span></li>\r\n</ul>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#615e58\">Information about our customers is an important part of our business, and we are not in the business of selling it to others.&nbsp;</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#615e58\">We release account and other personal information when we believe release is appropriate to comply with the law; enforce or apply our Terms of Use and other agreements; or protect the rights, property, or safety of perfectfoodbd.net, our users, or others. This includes exchanging information with other companies and organizations for fraud protection.</span></span></span></span></span></span></p>', NULL, '2023-10-29 18:48:24');
INSERT INTO `pages` (`id`, `slug`, `name`, `content`, `created_at`, `updated_at`) VALUES
(3, 'return-policy', 'Refund and return policy', '<h5>Product Refund and Replacement Policy (Customer)</h5>\r\n\r\n<p>Dear Valued Customer,<br />\r\nWe are delighted to welcome you to Perfect Food Limited.<br />\r\nWe appreciate your purchase from Perfect Food and would like to remind you of the procedures for making changes to your decision, the time limit for returning products, and the process for returning the product. Please refer to the instructions provided for more information.</p>\r\n\r\n<p><br />\r\n<strong>To return items ordered online/ offline:</strong></p>\r\n\r\n<ul>\r\n	<li>If you decide to not go through with your online purchase, please make sure to cancel your order within 60 minutes of placing it.</li>\r\n	<li>In the event that you have issues with the product&#39;s quality, price, or validity after receiving it, please return it within a week of purchase along with your proof of purchase (such as a sales invoice or order number) or contact our customer service team for online orders. For perishable food items, you will only have 48 hours to return or replace the product.</li>\r\n	<li>If you do return or exchange a product, you will be given a replacement of equal value or a refund for the same amount.</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>Product delivery:</strong></p>\r\n\r\n<ul>\r\n	<li>Regarding home delivery, we can deliver products of any weight within Dhaka city without a delivery fee. If the delivery needs to be made to a higher floor (3rd to above), a fee of Tk 10 will be added for every additional 5 kg of weight exceeding 15 kg. If there is a lift available, no extra charge will apply.</li>\r\n	<li>We strive to deliver your goods on the same day of your order. In the event that we are unable to do so, we will make sure to deliver them within the next 24 hours, God willing.</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>Get your money back:</strong></p>\r\n\r\n<p>We will refund your money similarly or conveniently after we return your product.</p>\r\n\r\n<ul>\r\n	<li>We will return the funds to your mobile banking account or the wallet (credit or debit card) linked to your account.</li>\r\n	<li>Please allow 5-7 business days for the refund to process. If you purchased the product during a sale or special offer, your refund, replacement, or adjustment would be based on the offer price.</li>\r\n	<li>In cases where multiple payment methods were used for your order, and some products are being returned, refunds will be applied in the following order:\r\n	<ul>\r\n		<li>If bought directly from the store, payment can be made in cash.</li>\r\n		<li>If purchased online or through customer service, payment can be made through a mobile banking portal such as bKash or cash.</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<p>Please refer to the instructions provided above for the simplest method of returning your purchased item. If you have any issues with your online purchase, do not hesitate to contact our customer service team. Our representative will assist you in resolving your complaint or problem efficiently.</p>', NULL, '2023-10-29 18:36:04'),
(4, 'cookie-policy', 'Cookie Policy', '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Shonar Bangla&quot;,serif\"><span style=\"color:#615e58\">এই ওয়েবসাইটটি ওয়েবসাইটের কার্যকারিতা নিশ্চিত করতে কুকি ব্যবহার করে এবং আপনার অনুমতি নিয়ে, বিষয়বস্তুকে ব্যক্তিগতকৃত করে, সামাজিক মিডিয়া বৈশিষ্ট্যগুলি প্রদান করে এবং ট্রাফিক বিশ্লেষণ করে। &quot;স্বীকার করুন&quot; বোতামে ক্লিক করে, আপনি তৃতীয় পক্ষের পরিষেবা সহ সমস্ত কুকির ব্যবহারে সম্মত হন৷ এটি করার সময়, আপনার এই ওয়েবসাইটটির ব্যবহার সম্পর্কে তথ্য আমাদের সামাজিক মিডিয়া এবং বিশ্লেষণ অংশীদারদের সাথে ভাগ করা হবে। </span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">This website uses cookie to ensure website functionality and, with your permission, personalize content, provide social media features and analyze traffic. By clicking the &ldquo;Accept&rdquo; button, you consent to the use of all cookies, including third-party services. In doing so, information about your use of this website will be shared with our social media and analytics partners. </span></span></p>', NULL, '2023-10-29 18:49:30'),
(5, 'about-us', 'About Us', '<h2 style=\"text-align:center\"><strong>আমাদের লক্ষ্য এবং উদ্দেশ্য</strong></h2>\r\n\r\n<p>সমস্ত গুরুত্বপূর্ণ সাফল্যের পরামিতিগুলিতে ফোকাস করে, আমরা একটি চূড়ান্ত লক্ষ্য অর্জন করতে চাই যা হল গ্রাহকের সন্তুষ্টি। এটি আমাদের ক্লায়েন্টদের সাথে আমাদের সম্পর্ককে শক্তিশালী করতে সাহায্য করে যা আমাদের জন্য একটি দুর্দান্ত অর্জন।</p>\r\n\r\n<p>Perfectfood পরিষেবা নিছক একটি ধারণা নয়। আমরা কীভাবে গ্রাহকের আনুগত্যের জন্য আমাদের পথ তৈরি করি তার মূল বিষয় এবং এটি এখানে কখনই থামবে না। আমরা ইতিমধ্যে যা অর্জন করা হয়েছে তা বজায় রাখার জন্য এবং যা এখনও অর্জন করা হয়নি তার জন্য কঠোর পরিশ্রম করতে বিশ্বাস করি। আমাদের প্রতিষ্ঠানের প্রতিটি ব্যক্তিকে অবশ্যই আবেগ, শ্রেষ্ঠত্ব এবং সর্বোচ্চ স্তরের সততার মনোভাব নিয়ে আমাদের ক্লায়েন্টদের সেবা করার জন্য প্রতিশ্রুতিবদ্ধ হতে হবে। আমরা বিশ্বাস করি যে এটি এমন এক ধরনের পরিষেবা যা সর্বদা অনবদ্য রেফারেন্স এবং ক্লায়েন্টদের একটি চিত্তাকর্ষক তালিকা পেতে পারে।</p>\r\n\r\n<p>সৃজনশীলতা প্রতিটি ক্ষেত্রে সাফল্যের জন্য একটি সাধারণ জিনিস। উদ্ভাবনী ধারণার সাথে একত্রিত কার্যকরী পদ্ধতি এবং দক্ষ কাজকে আমরা শ্রেষ্ঠত্বের জন্য একটি নিখুঁত রেসিপি বলে বিশ্বাস করি। আমরা আমাদের ক্লায়েন্টদের সর্বোত্তম বিকল্প এবং তাদের পাওয়ার সমস্যার সবচেয়ে কার্যকর সমাধান প্রদান করতে প্রতিশ্রুতিবদ্ধ।</p>\r\n\r\n<p>আমরা আমাদের কর্মীদের এমন আরামদায়ক পরিবেশ দেওয়ার চেষ্টা করি যাতে তারা সর্বোচ্চ আউটপুট দেওয়ার জন্য তাদের সেরা কাজ করতে পারে। আমাদের অঙ্গীকার হল আমাদের সর্বোচ্চ পারফরম্যান্সে কাজ করার জন্য ব্যক্তি হিসাবে এবং একটি কর্পোরেশন হিসাবে প্রস্তুত করা।</p>\r\n\r\n<h2 style=\"text-align:center\"><strong>কেন আমরা স্বতন্ত্র !</strong></h2>\r\n\r\n<p style=\"text-align:center\">100% নিরাপদ খাবার</p>\r\n\r\n<p style=\"text-align:center\">ক্রেতাদের সন্তুষ্টিই আমাদের শক্তি</p>\r\n\r\n<p style=\"text-align:center\">100% গ্যারান্টিযুক্ত, পরিষ্কার এবং নির্দিষ্ট রিটার্ন এবং রিফান্ড নীতি</p>\r\n\r\n<p style=\"text-align:center\">পণ্য নির্বাচন এবং পণ্যের গুণমান নিয়ে কখনই আপস করি না</p>\r\n\r\n<p style=\"text-align:center\">আমরা আমাদের ক্লায়েন্টদের কে শুধুমাত্র সেরা পণ্য ও সেবা দিতে বদ্ধপরিকর</p>\r\n\r\n<p style=\"text-align:center\">সেরা পণ্যের সংগ্রহ শুধু মাত্র আপনার ও আপনার পরিবারের জন্য</p>\r\n\r\n<p style=\"text-align:center\">সেরা কাঁচামাল থেকে প্রস্তুত সেরা এবং ফুড গ্রেড জারে সংরক্ষণকৃত খাবার আপনার কাছে পৌঁছে দেওয়া হচ্ছে</p>\r\n\r\n<p style=\"text-align:center\">সঠিক দামে ও সঠিক ওজনে পণ্য সরবরাহ করি</p>\r\n\r\n<p style=\"text-align:center\">সারা দেশে পণ্য ডেলিভারি করে থাকি</p>\r\n\r\n<p style=\"text-align:center\">কোন প্রকার প্রিজারভেটিভ/ কৃত্রিম উপাদান ব্যবহার করিনা</p>\r\n\r\n<p style=\"text-align:center\">স্বাস্থসম্মত উপায়ে সকল পণ্য প্যকেটজাত করি</p>', NULL, '2023-10-29 18:46:14'),
(6, 'faq', 'FAQ', '<p><strong>Q. How does the site work?</strong></p>\r\n\r\n<p>A. You can browse the site or use our search engine to find your desired products. You can then add them to your shopping bag or buy now option and click on Place order. You let us know your address, mobile number and require information, you are done. A perfectfood will then deliver your order right to your home or office.</p>\r\n\r\n<p><strong>Q. How much do deliveries cost?</strong></p>\r\n\r\n<p>A. The delivery fee across the country is in the table below: City Delivery Charge Dhaka 60 Outside of Dhaka 120 Order above 3000 Taka Free</p>\r\n\r\n<p><strong>Q. How can I contact you?</strong></p>\r\n\r\n<p>A. You can always call 09666-722833 or mail us at support@perfectfoodbd.net.</p>\r\n\r\n<p><strong>Q. What are your delivery time?</strong></p>\r\n\r\n<p>A. We deliver within 3 Days after confirming the order. Sometimes the schedule will be changed, it&rsquo;s depending on Political and Natural circumstance.</p>\r\n\r\n<p><strong>Q. How do I pay?</strong></p>\r\n\r\n<p>A. We accept cash on delivery (COD) and Online bKash service.</p>\r\n\r\n<p><strong>Q. I can&rsquo;t find the product I am looking for. What do I do?</strong></p>\r\n\r\n<p>A. You can also call 09666-722833 or mail us at support@perfectfoodbd.net to add an item to our inventory.</p>\r\n\r\n<p><strong>Q. My order is wrong. What do I do?</strong></p>\r\n\r\n<p>A. Please Immediately call 09666 722833 and let us know the problem.</p>\r\n\r\n<p><strong>Q. What about the prices?</strong></p>\r\n\r\n<p>A. Our prices are our own but we try our best to offer them to you at or below market prices. Our prices are the same as the local market and we are working hard to get them even lower! If you feel that any product is priced unfairly, please let us know.</p>\r\n\r\n<p><strong>Q. How do you deliver?</strong></p>\r\n\r\n<p>A. We use our own fleet and renowned courier service to deliver. Our goal is to deliver the products to your place on time.</p>\r\n\r\n<p><strong>Q. What is your policy on refunds?</strong></p>\r\n\r\n<p>A. Valid conditions and reasons to return an item during the time of delivery or within 3 days if:</p>\r\n\r\n<ol>\r\n	<li>1. Delivery of wrong product</li>\r\n	<li>2. Delivery of defective/ damaged/ rotten product</li>\r\n	<li>3. Finds product unusable</li>\r\n	<li>4. Incorrect content on the website about the product quality and quantity</li>\r\n	<li>5. Refund / Replace is not applicable for perishable product (mango, egg, vegetable), etc. or milk</li>\r\n</ol>\r\n\r\n<p><strong>Q. Can I get a refund via cash?</strong></p>\r\n\r\n<p>A. Yes, Cash will be refunded subject to sufficient proof.</p>\r\n\r\n<p><strong>Q. Can I order over the phone?</strong></p>\r\n\r\n<p>A. Absolutely. Our hotline is 09666 722833.</p>\r\n\r\n<p><strong>Q. What about quality?</strong></p>\r\n\r\n<p>A. We try our best to source the best quality items for you but if you are dissatisfied, you can always send them back to the delivery person. If you forget to do that, you can call us within 3 days and we will replace the item for free.</p>\r\n\r\n<p><strong>Q. How are you sourcing your products?</strong></p>\r\n\r\n<p>A. We have deals with whole-sellers, manufacturers, and importers. We only sell authentic products. Delivering to you the best food prepared from the best raw materials in the remote areas of Bangladesh with food grade preservation (JAR).</p>', NULL, '2023-10-29 18:41:34');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(2, 'App\\Models\\User', 6, 'MyApp', '8c52b63d85477ed5dfb076c2dea90e12504e4859a5cd847378801f3ec5414f32', '[\"*\"]', '2023-10-02 22:17:08', '2023-10-02 21:55:44', '2023-10-02 22:17:08'),
(5, 'App\\Models\\User', 24, 'MyApp', 'e869d6f50cb01fe01c51533475ece3770c4f64e7ff6af6b07b81e651977e2ad7', '[\"*\"]', NULL, '2023-11-11 15:23:25', '2023-11-11 15:23:25'),
(6, 'App\\Models\\User', 24, 'MyApp', '7f9703c0512f3526cc12fb6fdc611355b5e0737dba540e26086ec60a5a83fdd5', '[\"*\"]', NULL, '2023-11-11 15:23:51', '2023-11-11 15:23:51'),
(7, 'App\\Models\\User', 24, 'MyApp', '8f115e46e709269d3e2b25b7426f041e8550dd731a49da0b0f6640f26ae8a611', '[\"*\"]', NULL, '2023-11-11 15:26:03', '2023-11-11 15:26:03'),
(8, 'App\\Models\\User', 23, 'MyApp', 'defde069e4bad2c49a321f187bce7e8b5316a0fa8d487b77f2eccbfca972c9d6', '[\"*\"]', NULL, '2023-11-11 15:26:23', '2023-11-11 15:26:23'),
(9, 'App\\Models\\User', 21, 'MyApp', '593f62c7d7430043b14efbe4e1175314f9cff1ada7fd88088a07bd17d4b43a12', '[\"*\"]', NULL, '2023-11-11 15:40:45', '2023-11-11 15:40:45'),
(10, 'App\\Models\\User', 21, 'prantik', '83f973f42ccb91012aefcbb3f1c233fe48fe0cc78ea57a03b4bfe4d859455edd', '[\"*\"]', NULL, '2023-11-15 14:53:09', '2023-11-15 14:53:09'),
(11, 'App\\Models\\User', 21, 'prantik', '1cd759d0b910a84ad1d103d35776fd579479d08dfd4de92f6621da74c883baf7', '[\"*\"]', NULL, '2023-11-15 14:55:04', '2023-11-15 14:55:04'),
(12, 'App\\Models\\User', 21, 'prantik', 'df031e42f39e8f80287492af6857a98c3c2b21f0030ea12f7e68932c151fb803', '[\"*\"]', NULL, '2023-11-15 15:05:45', '2023-11-15 15:05:45'),
(13, 'App\\Models\\User', 21, 'prantik', 'c74e9ece68f15beba01e0a74988e03ca1d31883024c8bb93d7b4bbc5453db6e3', '[\"*\"]', NULL, '2023-11-15 15:07:58', '2023-11-15 15:07:58'),
(14, 'App\\Models\\User', 21, 'prantik', '3322f2a81470bcaee64019e8115eaf6290a21eb0fc6521030eac5865a49f623a', '[\"*\"]', '2023-11-15 15:33:50', '2023-11-15 15:11:52', '2023-11-15 15:33:50'),
(15, 'App\\Models\\User', 21, 'prantik', '25ef8968c9fb766e692a2dc42f6db64101c81d08e3922aa549e9293382c4f177', '[\"*\"]', NULL, '2023-11-15 16:23:36', '2023-11-15 16:23:36'),
(35, 'App\\Models\\User', 26, 'prantik', 'c720dc1c1a946aaa14f924f85e756e74ce4398bc574a22a9d14bfa59738235f3', '[\"*\"]', NULL, '2023-12-28 01:06:35', '2023-12-28 01:06:35'),
(36, 'App\\Models\\User', 26, 'prantik', 'fdda81e881ac885a0d63c6434db9201d8d96ea56fce85b7670acc6a49c7f4a7b', '[\"*\"]', '2023-12-28 14:41:15', '2023-12-28 14:32:45', '2023-12-28 14:41:15'),
(38, 'App\\Models\\User', 29, 'prantik', '65e6834b56b8e772f2ab869808b1b4983b930e345cf85f21575dc0cadca86d46', '[\"*\"]', '2024-02-13 04:49:49', '2024-02-12 08:58:58', '2024-02-13 04:49:49'),
(39, 'App\\Models\\User', 26, 'prantik', '3d328dcb068e76912552184786b5f4dd94910643ce465362063cfd91fa3c0f8f', '[\"*\"]', '2024-02-23 16:49:30', '2024-02-23 16:48:07', '2024-02-23 16:49:30'),
(41, 'App\\Models\\User', 30, 'prantik', 'ca9265f6a4ad436eea4eabbbce833611b3f4b640798228cc856517293340e2a1', '[\"*\"]', NULL, '2024-02-26 15:10:55', '2024-02-26 15:10:55'),
(42, 'App\\Models\\User', 30, 'prantik', '9593751078f7ecd065ff76a86b4c0236cc011ad2baf34c2a7235cddc7fec47c9', '[\"*\"]', NULL, '2024-02-26 15:23:35', '2024-02-26 15:23:35'),
(43, 'App\\Models\\User', 30, 'prantik', '8851f90aa6d22446ede130a7b816aee08d728ba9768feac099da0c7ed0cbf3b7', '[\"*\"]', NULL, '2024-02-26 15:27:44', '2024-02-26 15:27:44'),
(44, 'App\\Models\\User', 30, 'prantik', '54740d703b331ee7e1231942a51e59d1811015b2eb1e6560a0d177d983ab727f', '[\"*\"]', NULL, '2024-02-26 15:34:49', '2024-02-26 15:34:49'),
(45, 'App\\Models\\User', 30, 'prantik', '7038fa2f7501afcef37627b2ca7c421bc246e21f7255406d73cc3e46c5da2f19', '[\"*\"]', NULL, '2024-02-27 03:26:50', '2024-02-27 03:26:50'),
(46, 'App\\Models\\User', 30, 'prantik', 'c3fbb598112a2fbeb1b49364f5e6656a6a5319435ed7496937c0eaf22101880a', '[\"*\"]', '2024-02-29 09:35:56', '2024-02-27 04:50:08', '2024-02-29 09:35:56'),
(47, 'App\\Models\\User', 28, 'prantik', 'c6bb188683ab046e337d055700def46d0ada7facddff17dd47f051634f9cb32e', '[\"*\"]', NULL, '2024-02-28 11:49:41', '2024-02-28 11:49:41'),
(48, 'App\\Models\\User', 30, 'prantik', 'b00fb37549351ce6c6b5767823a458f81e2a84851295734215d9991d9dc37443', '[\"*\"]', NULL, '2024-02-29 07:27:50', '2024-02-29 07:27:50'),
(49, 'App\\Models\\User', 30, 'prantik', 'c8f0af16e7e2eb891a641e625951ab51833f436b565deb30dcf7da7be2547bdc', '[\"*\"]', NULL, '2024-02-29 07:29:59', '2024-02-29 07:29:59'),
(50, 'App\\Models\\User', 30, 'prantik', '96d9f53261c6e163c83e8c6ba328b50315a4389d31188617ef4c6d5d8ad1c737', '[\"*\"]', NULL, '2024-02-29 07:33:45', '2024-02-29 07:33:45'),
(51, 'App\\Models\\User', 30, 'prantik', 'c8c325382bc9bb82fdbc8415566fba9e429497d828e9b240fa9ff075e21377fe', '[\"*\"]', '2024-02-29 07:36:50', '2024-02-29 07:36:50', '2024-02-29 07:36:50'),
(52, 'App\\Models\\User', 30, 'prantik', '7d75815aa25dc30340e714212abafed2ab55428d72cda80b20bda963a0b44ae0', '[\"*\"]', '2024-03-02 14:00:15', '2024-02-29 07:37:22', '2024-03-02 14:00:15'),
(53, 'App\\Models\\User', 30, 'prantik', 'e808e8aa4f966b434cbb1b1a05762827e713c7af0145a96705fdd39601e58b18', '[\"*\"]', '2024-02-29 09:35:20', '2024-02-29 09:33:36', '2024-02-29 09:35:20'),
(54, 'App\\Models\\User', 30, 'prantik', '407812e01d87a2acbf8a9264c8ab7b22cd34a471e1e2ee3c839e478e9f12ed45', '[\"*\"]', '2024-03-03 11:44:14', '2024-03-03 11:44:13', '2024-03-03 11:44:14'),
(55, 'App\\Models\\User', 30, 'prantik', 'dbebf2591369a9e3b212e5ede3e717de0a9f39d79f370b9f6fd8b85df89d5413', '[\"*\"]', '2024-03-03 12:10:02', '2024-03-03 11:45:57', '2024-03-03 12:10:02'),
(56, 'App\\Models\\User', 28, 'prantik', '08237ce4340e46aaec4f32da5df6db21324943606305394598b24fa6f4e28de8', '[\"*\"]', '2024-03-03 11:49:31', '2024-03-03 11:47:23', '2024-03-03 11:49:31'),
(57, 'App\\Models\\User', 28, 'prantik', '31140f3f345536901f019fb9460b80e3e005ba6ed8228fdc34977d231eb8821d', '[\"*\"]', '2024-03-03 11:52:39', '2024-03-03 11:52:38', '2024-03-03 11:52:39'),
(58, 'App\\Models\\User', 30, 'prantik', '43fdb1934c1ab2d3e4c88d8e6f41a31a9f341f804b03064dbb2bf5fe715de3f7', '[\"*\"]', '2024-03-06 04:07:04', '2024-03-04 08:52:51', '2024-03-06 04:07:04'),
(59, 'App\\Models\\User', 30, 'prantik', '241f7e235c572c6a99260ee282498200b60bbc220657e0b101140380eb6456e8', '[\"*\"]', '2024-03-09 09:46:23', '2024-03-06 04:09:02', '2024-03-09 09:46:23');

-- --------------------------------------------------------

--
-- Table structure for table `productcategories`
--

CREATE TABLE `productcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `regular_price` double(8,2) NOT NULL,
  `sale_price` double(8,2) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery_img` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `special_cat_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_product_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `flash_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Active=1, Inactive=2',
  `delivery_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `sku`, `regular_price`, `sale_price`, `description`, `short_desc`, `featured_img`, `gallery_img`, `category_id`, `special_cat_id`, `related_product_id`, `brand_id`, `flash_title`, `status`, `delivery_note`, `created_at`, `updated_at`) VALUES
(70, 'Mustard Oil (Ghani) 1Liter', 'mustard-oil-ghani-1liter', '20', 300.00, 300.00, NULL, NULL, 'mustard-oil-ghani-1liter-1701069857.jpg', 'kalojira-oil-100ml-min-1710062362.png', '15', NULL, NULL, NULL, NULL, 1, NULL, '2023-11-27 01:54:17', '2023-11-27 01:59:22'),
(166, 'কাঠ বাদাম/Almond', 'kath-badamalmond', 'N&D-Almond', 350.00, 680.00, '<p>They are highly nutritious and rich in healthy fats, antioxidants, vitamins, and minerals.</p>\r\n\r\n<p><strong>Evidence-Based Health Benefits of Almonds:</strong><br />\r\n1. Almonds deliver a massive amount of nutrients<br />\r\n2. Almonds are loaded with antioxidants<br />\r\n3. Almonds are high in vitamin E<br />\r\n4. Almonds can assist with blood sugar control<br />\r\n5. Magnesium also benefits blood pressure levels<br />\r\n6. Almonds can lower cholesterol levels<br />\r\n7. Almonds prevent harmful oxidation of LDL cholesterol<br />\r\n8. Eating almonds reduces hunger<br />\r\n9. Almonds may be effective for weight loss</p>\r\n\r\n<p><br />\r\nAlmonds boast an impressive nutrient profile. A 1-ounce (oz), or 28-gram (g), serving of almonds contains (1Trusted Source, 2Trusted Source):</p>\r\n\r\n<p>Fiber: 3.5 g<br />\r\nProtein: 6 g<br />\r\nFat: 14 g (9 of which are monounsaturated)<br />\r\nVitamin E: 48% of the daily value (DV)<br />\r\nManganese: 27% of the DV<br />\r\nMagnesium: 18% of the DV<br />\r\na decent amount of copper, vitamin B2 (riboflavin), and phosphorus<br />\r\nThis is all from a small handful of almonds, which has 164 calories and 6 grams of carbohydrates, which includes 3.5 grams of fiber.<br />\r\n&nbsp;</p>', 'Almonds are high in antioxidants, vitamin E, protein, and fiber. Almonds may have health benefits, including supporting heart health and reducing blood pressure, among others. They are highly nutritious and rich in healthy fats, antioxidants, vitamins, and minerals.', '14-kath-badam-almond-min-1709932182.png', 'kalojira-oil-100ml-min-1710062362.png', '66', NULL, NULL, NULL, NULL, 1, NULL, '2024-03-07 20:41:45', '2024-03-08 21:09:42'),
(167, 'আখরোট/Walnuts', 'akhrotwalnuts', 'N&D-WN', 330.00, 650.00, '<p>Walnuts have been touted as the &lsquo;brain food&rsquo; because they resemble one with their furrowed appearance. The funny thing is that research has proved that consuming walnuts regularly does improve brain function. &nbsp; Easy to add to the diet, they are very rich in nutritional content. They are better than most other nuts, even almonds because they have a high amount of polyunsaturated fat, vitamins, and minerals like potassium, iron, zinc, and magnesium. Fibre-rich and antioxidant-rich, walnuts trump all the other dry fruits on all accounts.</p>\r\n\r\n<p><strong>Amazing Health Benefits Of Walnuts:</strong><br />\r\n1. Anti-Cancer<br />\r\n2. Beneficial for the brain<br />\r\n3. Heart Healthy<br />\r\n4. Support Good Body Composition<br />\r\n5. Good For Diabetes<br />\r\n6. Boost Metabolism<br />\r\n7. Good for the Bones<br />\r\n8. Anti-Inflammatory<br />\r\n9. Good for Digestion<br />\r\n10. Induce Sleep&nbsp;<br />\r\n11. Improve Fertility<br />\r\n12. Good for Skin and Hair<br />\r\n13. Helpful in Pregnancy<br />\r\n14. Helps in male reproductive health</p>', 'Walnuts have been touted as the ‘brain food’ because they resemble one with their furrowed appearance. The funny thing is that research has proved that consuming walnuts regularly does improve brain function.', '17-akhrot-min-1709932152.png', '17-akhrot-min-1709932152.png', '66', NULL, NULL, NULL, NULL, 1, NULL, '2024-03-07 20:53:42', '2024-03-08 21:09:12'),
(168, 'কাজু বাদাম/Cashew Nut', 'kaju-badamcashew-nut', 'N&D-CN', 400.00, 800.00, NULL, 'Cashews are rich in nutrients and may offer several health benefits. Selecting the right varieties and cooking or preparing them properly can help maximize their potential effects on health.', '15-cashew-nut-min-1709932123.png', '15-cashew-nut-min-1709932123.png', '66', NULL, NULL, NULL, NULL, 1, NULL, '2024-03-07 21:05:42', '2024-03-08 21:08:43'),
(169, 'পেস্তা বাদাম/Pistachio', 'pesta-badampistachio', 'N&D-PN', 925.00, 1850.00, '<p>Pistachios are rich in a variety of nutrients and may support weight loss, gut health, blood sugar control, and heart health. They are also versatile and can be enjoyed in many recipes.</p>\r\n\r\n<p><strong>Health Benefits of Pistachios:</strong><br />\r\n1. Loaded with nutrients<br />\r\n2. High in antioxidants<br />\r\n3. Low in calories yet high in protein<br />\r\n4. May aid weight loss<br />\r\n5. Promote healthy gut bacteria<br />\r\n6. May lower cholesterol and blood pressure<br />\r\n7. May promote blood vessel health<br />\r\n8. May help lower blood sugar<br />\r\n9. Delicious and fun to eat</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pistachios are very nutritious, with a 1-ounce (oz), or 28-gram (g), serving of about 49 pistachios containing the following nutrients (2Trusted Source):</p>\r\n\r\n<p>Calories: 159<br />\r\nCarbs: 8 g<br />\r\nFiber: 3 g<br />\r\nProtein: 6 g<br />\r\nFat: 13 g<br />\r\nPotassium: 6% of the Daily Value (DV)<br />\r\nPhosphorus: 11% of the DV<br />\r\nVitamin B6: 28% of the DV<br />\r\nThiamine: 21% of the DV<br />\r\nCopper: 41% of the DV<br />\r\nManganese: 15% of the DV<br />\r\n&nbsp;</p>', 'Pistachios are rich in a variety of nutrients and may support weight loss, gut health, blood sugar control, and heart health. They are also versatile and can be enjoyed in many recipes.', '16-pesta-badam-min-1709932070.png', '16-pesta-badam-min-1709932070.png', '66', '8,11', '166,167,168', NULL, NULL, 1, NULL, '2024-03-07 21:19:30', '2024-03-08 21:07:50'),
(170, 'ঘী /Ghee', 'ghee-ghee', 'D-G', 400.00, 800.00, '<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><strong><span style=\"font-size:13.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">গাওয়া</span></span></span></strong><strong> </strong><strong><span style=\"font-size:13.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">ঘী</span></span></span></strong><strong> </strong><strong><span style=\"font-size:13.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">এর</span></span></span></strong><strong> </strong><strong><span style=\"font-size:13.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">উপকারিতাঃ</span></span></span></strong></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><strong><span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">রোগ</span></span></span></strong><strong> </strong><strong><span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">পতিরোধ</span></span></span></strong><strong> </strong><strong><span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">ক্ষমতা</span></span></span></strong><strong> </strong><strong><span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">বৃদ্ধি</span></span></span></strong><strong> </strong><strong><span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">করে</span></span></span></strong><strong><span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">:</span></span></span></strong>&nbsp;<span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">ঘী</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">বিউটারিক</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">অ্যাসিড</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">এবং</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">প্রচুর</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">অ্যান্টিঅক্সিডেন্টস</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">সমৃদ্ধ</span></span></span><span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">, </span></span></span><span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">যা</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">শরীরকে</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">টি</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">কোষ</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">তৈরি</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">করতে</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">সাহায্য</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">করে</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">যা</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">রোগের</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">বিরুদ্ধে</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">লড়াই</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">করে</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">।</span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><strong><span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">অ্যান্টি</span></span></span></strong><strong><span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">-</span></span></span></strong><strong><span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">ইনফ্লেমেটরি</span></span></span></strong><strong> </strong><strong><span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">এবং</span></span></span></strong><strong> </strong><strong><span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">অ্যান্টি</span></span></span></strong><strong><span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">-</span></span></span></strong><strong><span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">ক্যান্সার</span></span></span></strong><strong><span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">:</span></span></span></strong>&nbsp;<span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">ঘী</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">তে</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">আছে</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">বিউটারিক</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">অ্যাসিড</span></span></span><span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">, </span></span></span><span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">যা</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">একটি</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">অ্যান্টি</span></span></span><span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">-</span></span></span><span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">ক্যান্সার</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">উপাদান।</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">এতে</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">উপস্থিত</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">অ্যান্টিঅক্সিডেন্ট</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">এটিকে</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">প্রদাহরোধী</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">করে</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">।</span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><strong><span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">স্বাস্থ্যকর</span></span></span></strong><strong> </strong><strong><span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">ফ্যাট</span></span></span></strong><strong><span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">:</span></span></span></strong>&nbsp;<span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">গবেষণায়</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">প্রমাণিত</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">হয়</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">যে</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">ঘী</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">তে</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">চর্বি</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">কম</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">থাকে।</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">এতে</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">স্বাস্থ্যকর</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">চর্বি</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">রয়েছে</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">যা</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">এটি</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">শরীরে</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">ভাল</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">কোলেস্টেরল</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">যোগ</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">করে।</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">ঘী</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">অন্যান্য</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">ধরনের</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">চর্বির</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">মতো</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">হৃদরোগের</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">কারণ</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">হয়</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">না</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">।</span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><strong><span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">থাইরয়েড</span></span></span></strong><strong> </strong><strong><span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">নিয়ন্ত্রণে</span></span></span></strong><strong><span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">:</span></span></span></strong>&nbsp;<span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">যেহেতু</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">ঘী</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">ব্যবহারের</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">ফলে</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">হরমোনের</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">ভারসাম্য</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">বজায়</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">থাকে</span></span></span><span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">, </span></span></span><span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">তাই</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">এটি</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">থাইরয়েডের</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">নিয়ন্ত্রণের</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">জন্য</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">সহায়ক</span></span></span> <span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#333333\">।</span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>', 'Ghee is clarified butter, which means it’s butter with water and milk solids removed. Compared to butter, ghee may contain more fat but contains no lactose.', 'ghee-500g-min-1709932749.png', 'ghee-250g-min-1709932772.png', '64', '8', NULL, NULL, NULL, 1, NULL, '2024-03-08 21:19:09', '2024-03-08 21:20:30'),
(171, 'হানি নাটস /Honey Nuts', 'hani-nats-honey-nuts', 'EB-HN', 1100.00, 1100.00, '<p><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:14.0pt\"><span style=\"color:#4a4a4a\">উপাদানসমূহ:</span></span></strong></span></span></span></p>\r\n\r\n<ol>\r\n	<li><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">কাঠবাদাম</span></span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">আখরোট</span></span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">কাজুবাদাম</span></span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">চিনাবাদাম</span></span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">পেস্তা বাদাম</span></span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">খেজুর</span></span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">ত্বীন ফল</span></span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">এপ্রিকোট</span></span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">আলুবোখারা</span></span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">সাদা তিল</span></span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">সূর্যমুখী বীজ</span></span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">সরিষা ফুলের মধু</span></span></span></span></span></li>\r\n</ol>', 'Honey Nuts is the best source for Boosting Energy.', 'honey-nuts-900g-min-1709933868.png', NULL, '157', NULL, NULL, NULL, NULL, 1, NULL, '2024-03-08 21:37:48', '2024-03-09 18:54:08'),
(172, 'হানি ত্বীন/Honey Teen', 'hani-tweenhoney-teen', 'EB-HT', 1000.00, 1000.00, NULL, NULL, 'honey-teen-900g-min-1709934351.png', NULL, '157', NULL, '171', NULL, NULL, 1, NULL, '2024-03-08 21:45:51', '2024-03-08 21:45:51'),
(173, 'Cinnamon (দারুচিনি) Powder', 'cinnamon-darucini-powder', 'SF-DP', 130.00, 220.00, NULL, NULL, 'darucini-powder-200g-min-1709935255.png', 'darucini-powder-100g-min-1709935255.png', '158', NULL, NULL, NULL, NULL, 1, NULL, '2024-03-08 21:50:45', '2024-03-08 22:00:55'),
(174, 'Cumin (জিরা) Powder', 'cumin-jira-powder', 'S-JP', 370.00, 370.00, NULL, NULL, 'jira-powder-200g-min-1709935414.png', NULL, '158', NULL, '173', NULL, NULL, 1, NULL, '2024-03-08 21:57:51', '2024-03-08 22:03:34'),
(175, 'Coriander (ধনিয়া)Powder', 'coriander-dhniyapowder', 'S-DP', 110.00, 110.00, NULL, NULL, 'dhonia-powder-200g-min-1709935544.png', NULL, '158', NULL, NULL, NULL, NULL, 1, NULL, '2024-03-08 22:05:44', '2024-03-08 22:05:44'),
(176, 'Turmeric (হলুদ) Powder', 'turmeric-hlud-powder', 'S-TP', 110.00, 110.00, NULL, NULL, 'holud-powder-200g-min-1709935647.png', NULL, '158', NULL, NULL, NULL, NULL, 1, NULL, '2024-03-08 22:07:27', '2024-03-08 22:07:27'),
(177, 'Chilli (মরিচ) Powder', 'chilli-mric-powder', 'S-CP', 210.00, 210.00, NULL, NULL, 'chilli-powder-200g-min-1709935738.png', NULL, '158', NULL, NULL, NULL, NULL, 1, NULL, '2024-03-08 22:08:58', '2024-03-08 22:08:58'),
(178, 'Peanut Butter - Creamy', 'peanut-butter-creamy', 'B-PB-CRM', 500.00, 500.00, '<p>Peanut butter is loaded with so many good, health-promoting nutrients, including vitamin E, magnesium, iron, selenium and vitamin B6. Research shows that people who regularly eat nuts and nut butter, including peanut butter, are less likely to develop heart disease and type 2 diabetes.&nbsp;</p>', 'Peanut butter is loaded with so many good, health-promoting nutrients, including vitamin E, magnesium, iron, selenium and vitamin B6. Research shows that people who regularly eat nuts and nut butter, including peanut butter, are less likely to develop heart disease and type 2 diabetes.', 'peanut-butter-creamy-min-1709936053.png', NULL, '154', NULL, NULL, NULL, NULL, 1, NULL, '2024-03-08 22:14:13', '2024-03-08 22:14:13'),
(179, 'Peanut Butter - Crunchy', 'peanut-butter-crunchy', 'B-PB-CRY', 500.00, 500.00, '<p>Peanut butter is loaded with so many good, health-promoting nutrients, including vitamin E, magnesium, iron, selenium and vitamin B6. Research shows that people who regularly eat nuts and nut butter, including peanut butter, are less likely to develop heart disease and type 2 diabetes.&nbsp;</p>', 'Peanut butter is loaded with so many good, health-promoting nutrients, including vitamin E, magnesium, iron, selenium and vitamin B6. Research shows that people who regularly eat nuts and nut butter, including peanut butter, are less likely to develop heart disease and type 2 diabetes.', 'peanut-butter-crunchy-min-1709936149.png', NULL, '154', NULL, NULL, NULL, NULL, 1, NULL, '2024-03-08 22:15:49', '2024-03-08 22:15:49'),
(180, 'Cashew Nuts Butter - Creamy', 'cashew-nuts-butter-creamy', 'B-CNB-CRM', 750.00, 750.00, '<p>Cashew Butter is particularly rich in copper, phosphorus, manganese and magnesium, which serve different important functions in the body. Including cashew butter in your diet could help support your heart, brain, muscles, energy metabolism, hormone production, and blood sugar levels, and could even help you lose weight</p>', 'Cashew Butter is particularly rich in copper, phosphorus, manganese and magnesium, which serve different important functions in the body. Including cashew butter in your diet could help support your heart, brain, muscles, energy metabolism, hormone production, and blood sugar levels, and could even help you lose weight', 'cashew-butter-creamy-min-1709936522.png', NULL, '154', '8', '178,179', NULL, NULL, 1, NULL, '2024-03-08 22:22:02', '2024-03-10 09:01:02'),
(181, 'Cashew Nuts Butter - Crunchy', 'cashew-nuts-butter-crunchy', 'B-CNB-CRY', 750.00, 750.00, '<p>Cashew Butter is particularly rich in copper, phosphorus, manganese and magnesium, which serve different important functions in the body. Including cashew butter in your diet could help support your heart, brain, muscles, energy metabolism, hormone production, and blood sugar levels, and could even help you lose weight</p>', 'Cashew Butter is particularly rich in copper, phosphorus, manganese and magnesium, which serve different important functions in the body. Including cashew butter in your diet could help support your heart, brain, muscles, energy metabolism, hormone production, and blood sugar levels, and could even help you lose weight', 'cashew-butter-crunchy-min-1709936620.png', NULL, '154', NULL, '178,179,180', NULL, NULL, 1, NULL, '2024-03-08 22:23:40', '2024-03-08 22:23:40'),
(182, 'আলু বোখারা / Alu Bokhara', 'alu-bokhara-alu-bokhara', 'P-AB-460g', 450.00, 450.00, '<p>আচারের অসংখ্য সম্ভাব্য উপকারিতা রয়েছে। এর মধ্যে রয়েছে আচার বিটা ক্যারোটিনের একটি ভালো উৎস, যা শরীর ভিটামিন এ-তে রূপান্তরিত করে, ইলেক্ট্রোলাইট ভারসাম্য পুনরুদ্ধার করা, পেশী ক্র্যাম্পের চিকিত্সা এবং আরও অনেক কিছু।। ক্লিভল্যান্ড ক্লিনিক অনুসারে ভিটামিন এ সুস্থ দৃষ্টি এবং ইমিউন ফাংশনকে সমর্থন করে।</p>\r\n\r\n<p>Health Benefits of Pickles:<br />\r\n1. Boosts immune system: The antioxidants and vitamins found in pickles can help strengthen your immune system and protect against illness.<br />\r\n2. Lowers blood sugar levels: Some studies have suggested that consuming vinegar-based pickles can help regulate blood sugar levels, benefiting those with diabetes.<br />\r\n2. Reduces muscle cramps: The electrolytes in pickles can help alleviate muscle cramps, making them a popular post-workout snack for athletes.<br />\r\n3. Supports bone health: Pickles are a good source of vitamin K, which is essential for maintaining strong bones and preventing osteoporosis.<br />\r\n4. Promotes weight loss: As a low-calorie snack, pickles can be a satisfying and healthy option for those trying to lose weight.<br />\r\n5. Fights inflammation: The antioxidants in pickles can help reduce inflammation in the body, which is linked to various chronic diseases.<br />\r\n&nbsp;</p>', 'আচারের অসংখ্য সম্ভাব্য উপকারিতা রয়েছে। এর মধ্যে রয়েছে আচার বিটা ক্যারোটিনের একটি ভালো উৎস, যা শরীর ভিটামিন এ-তে রূপান্তরিত করে, ইলেক্ট্রোলাইট ভারসাম্য পুনরুদ্ধার করা, পেশী ক্র্যাম্পের চিকিত্সা এবং আরও অনেক কিছু।। ক্লিভল্যান্ড ক্লিনিক অনুসারে ভিটামিন এ সুস্থ দৃষ্টি এবং ইমিউন ফাংশনকে সমর্থন করে।', 'alu-bokhara-achar-min-1709971756.png', NULL, '73', NULL, '183,184,185', NULL, NULL, 1, NULL, '2024-03-09 08:09:16', '2024-03-09 08:24:37'),
(183, 'আপেল / Apple', 'apel-apple', 'P-AP-450g', 450.00, 450.00, '<p>আচারের অসংখ্য সম্ভাব্য উপকারিতা রয়েছে। এর মধ্যে রয়েছে আচার বিটা ক্যারোটিনের একটি ভালো উৎস, যা শরীর ভিটামিন এ-তে রূপান্তরিত করে, ইলেক্ট্রোলাইট ভারসাম্য পুনরুদ্ধার করা, পেশী ক্র্যাম্পের চিকিত্সা। ক্লিভল্যান্ড ক্লিনিক অনুসারে ভিটামিন এ সুস্থ দৃষ্টি এবং ইমিউন ফাংশনকে সমর্থন করে।</p>\r\n\r\n<p>Health Benefits of Pickles:<br />\r\n1. Boosts immune system: The antioxidants and vitamins found in pickles can help strengthen your immune system and protect against illness.<br />\r\n2. Lowers blood sugar levels: Some studies have suggested that consuming vinegar-based pickles can help regulate blood sugar levels, benefiting those with diabetes.<br />\r\n2. Reduces muscle cramps: The electrolytes in pickles can help alleviate muscle cramps, making them a popular post-workout snack for athletes.<br />\r\n3. Supports bone health: Pickles are a good source of vitamin K, which is essential for maintaining strong bones and preventing osteoporosis.<br />\r\n4. Promotes weight loss: As a low-calorie snack, pickles can be a satisfying and healthy option for those trying to lose weight.<br />\r\n5. Fights inflammation: The antioxidants in pickles can help reduce inflammation in the body, which is linked to various chronic diseases.</p>', 'আচারের অসংখ্য সম্ভাব্য উপকারিতা রয়েছে। এর মধ্যে রয়েছে আচার বিটা ক্যারোটিনের একটি ভালো উৎস, যা শরীর ভিটামিন এ-তে রূপান্তরিত করে, ইলেক্ট্রোলাইট ভারসাম্য পুনরুদ্ধার করা, পেশী ক্র্যাম্পের চিকিত্সা। ক্লিভল্যান্ড ক্লিনিক অনুসারে ভিটামিন এ সুস্থ দৃষ্টি এবং ইমিউন ফাংশনকে সমর্থন করে।', 'apple-achar-2-final-min-1709972228.png', NULL, '73', NULL, '182', NULL, NULL, 1, NULL, '2024-03-09 08:17:08', '2024-03-09 08:17:08'),
(184, 'তেঁতুল / Tetul', 'tenntul-tetul', 'P-TL-450g', 450.00, 450.00, '<p>আচারের অসংখ্য সম্ভাব্য উপকারিতা রয়েছে। এর মধ্যে রয়েছে আচার বিটা ক্যারোটিনের একটি ভালো উৎস, যা শরীর ভিটামিন এ-তে রূপান্তরিত করে, ইলেক্ট্রোলাইট ভারসাম্য পুনরুদ্ধার করা, পেশী ক্র্যাম্পের চিকিত্সা। ক্লিভল্যান্ড ক্লিনিক অনুসারে ভিটামিন এ সুস্থ দৃষ্টি এবং ইমিউন ফাংশনকে সমর্থন করে।</p>\r\n\r\n<p>Health Benefits of Pickles:<br />\r\n1. Boosts immune system: The antioxidants and vitamins found in pickles can help strengthen your immune system and protect against illness.<br />\r\n2. Lowers blood sugar levels: Some studies have suggested that consuming vinegar-based pickles can help regulate blood sugar levels, benefiting those with diabetes.<br />\r\n2. Reduces muscle cramps: The electrolytes in pickles can help alleviate muscle cramps, making them a popular post-workout snack for athletes.<br />\r\n3. Supports bone health: Pickles are a good source of vitamin K, which is essential for maintaining strong bones and preventing osteoporosis.<br />\r\n4. Promotes weight loss: As a low-calorie snack, pickles can be a satisfying and healthy option for those trying to lose weight.<br />\r\n5. Fights inflammation: The antioxidants in pickles can help reduce inflammation in the body, which is linked to various chronic diseases.<br />\r\n&nbsp;</p>', 'আচারের অসংখ্য সম্ভাব্য উপকারিতা রয়েছে। এর মধ্যে রয়েছে আচার বিটা ক্যারোটিনের একটি ভালো উৎস, যা শরীর ভিটামিন এ-তে রূপান্তরিত করে, ইলেক্ট্রোলাইট ভারসাম্য পুনরুদ্ধার করা, পেশী ক্র্যাম্পের চিকিত্সা। ক্লিভল্যান্ড ক্লিনিক অনুসারে ভিটামিন এ সুস্থ দৃষ্টি এবং ইমিউন ফাংশনকে সমর্থন করে।', 'tetuler-achar-min-1709972444.png', NULL, '73', NULL, '182,183,185', NULL, NULL, 1, NULL, '2024-03-09 08:20:44', '2024-03-09 08:25:06'),
(185, 'এক কোয়া রসুন / Ek Koya Garlic', 'ek-koza-rsun-ek-koya-garlic', 'P-EKR-420g', 450.00, 450.00, '<p>আচারের অসংখ্য সম্ভাব্য উপকারিতা রয়েছে। এর মধ্যে রয়েছে আচার বিটা ক্যারোটিনের একটি ভালো উৎস, যা শরীর ভিটামিন এ-তে রূপান্তরিত করে, ইলেক্ট্রোলাইট ভারসাম্য পুনরুদ্ধার করা, পেশী ক্র্যাম্পের চিকিত্সা। ক্লিভল্যান্ড ক্লিনিক অনুসারে ভিটামিন এ সুস্থ দৃষ্টি এবং ইমিউন ফাংশনকে সমর্থন করে।</p>\r\n\r\n<p>Health Benefits of Pickles:<br />\r\n1. Boosts immune system: The antioxidants and vitamins found in pickles can help strengthen your immune system and protect against illness.<br />\r\n2. Lowers blood sugar levels: Some studies have suggested that consuming vinegar-based pickles can help regulate blood sugar levels, benefiting those with diabetes.<br />\r\n2. Reduces muscle cramps: The electrolytes in pickles can help alleviate muscle cramps, making them a popular post-workout snack for athletes.<br />\r\n3. Supports bone health: Pickles are a good source of vitamin K, which is essential for maintaining strong bones and preventing osteoporosis.<br />\r\n4. Promotes weight loss: As a low-calorie snack, pickles can be a satisfying and healthy option for those trying to lose weight.<br />\r\n5. Fights inflammation: The antioxidants in pickles can help reduce inflammation in the body, which is linked to various chronic diseases.<br />\r\n&nbsp;</p>', 'আচারের অসংখ্য সম্ভাব্য উপকারিতা রয়েছে। এর মধ্যে রয়েছে আচার বিটা ক্যারোটিনের একটি ভালো উৎস, যা শরীর ভিটামিন এ-তে রূপান্তরিত করে, ইলেক্ট্রোলাইট ভারসাম্য পুনরুদ্ধার করা, পেশী ক্র্যাম্পের চিকিত্সা। ক্লিভল্যান্ড ক্লিনিক অনুসারে ভিটামিন এ সুস্থ দৃষ্টি এবং ইমিউন ফাংশনকে সমর্থন করে।', 'ek-koya-roshuner-achar-min-1709972615.png', NULL, '73', NULL, '182,183,184', NULL, NULL, 1, NULL, '2024-03-09 08:23:35', '2024-03-09 08:23:35'),
(186, 'সুন্দরবনের প্রাকৃতিক চাকের মধু', 'sundrbner-prakrritik-caker-mdhu', 'H-SBNCM', 380.00, 750.00, '<p><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">খাঁটি মধুর জগতে সুন্দরবনের মধু খুবই দুর্লভ ও মূল্যবান। প্রধানত খলিসা এবং গোরান ফুলের নির্যাস আমাদের সুন্দরবনের প্রাকৃতিক মধুতে পাওয়া যাবে। মধু সংগ্রহকারীরা (মৌয়াল) সুন্দরবনের গভীরতম পয়েন্টে যেয়ে এই প্রাকৃতিক চাক থেকে এই মধু সংগ্রহ করে থাকে।</span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\"><span style=\"color:#5a3733\">সুন্দরবনের মধুর কিছু উপকারিতাঃ</span></span></strong></span></span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">ডায়াবেটিস রোগীদের জন্য চিনির চেয়ে ভালো। এর অ্যান্টি-অক্সিডেন্ট রক্তচাপ কমাতে উপকারী।</span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">শরীরে কোলেস্টেরল বাড়াতে সাহায্য করে। এতে থাকা অ্যান্টি-অক্সিডেন্ট হার্টের স্বাস্থ্যে কার্যকর।</span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">মধু কোষ্ঠকাঠিন্য দূর করে, ক্ষুধা বাড়ায়, হজমশক্তি ও ক্ষুধা বাড়ায়, রক্ত ​​পরিশোধন করে; শরীর এবং ফুসফুসকে শক্তিশালী করে; জিহ্বার জড়তা দূর করে।</span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">শারীরিক দুর্বলতা দূর করে এবং শক্তি দীর্ঘায়িত করে, ব্যায়ামকারীদের শক্তি বৃদ্ধি করে।</span></span></span></span></li>\r\n</ul>', 'খাঁটি মধুর জগতে সুন্দরবনের মধু খুবই দুর্লভ ও মূল্যবান। প্রধানত খলিসা এবং গোরান ফুলের নির্যাস আমাদের সুন্দরবনের প্রাকৃতিক মধুতে পাওয়া যাবে। মধু সংগ্রহকারীরা (মৌয়াল) সুন্দরবনের গভীরতম পয়েন্টে যেয়ে এই প্রাকৃতিক চাক থেকে এই মধু সংগ্রহ করে থাকে।', 'shundorboner-chaker-modhu-500g-min-1709973266.png', 'shundorboner-chaker-modhu-250g-min-1709973266.png', '65', NULL, '187,188,189,190,191,192', NULL, NULL, 1, NULL, '2024-03-09 08:34:26', '2024-03-09 09:37:38'),
(187, 'সুন্দরবনের খালিশা ফুলের মধু', 'sundrbner-khalisa-fuler-mdhu', 'H-SBKFM', 350.00, 700.00, '<p>সুন্দরবনের অনেক গাছপালার ভিড়ে ছোট থেকে মাঝারি গড়নের একটি গাছ হলো খলিশা। এটি গুল্ম বা ছোট বৃক্ষজাতীয় প্রকৃত ম্যানগ্রোভ উদ্ভিদ। খলিশা ফুল ফুটলে সারা দিন মৌমাছি মধু সংগ্রহের জন্য ভিড় করে। বহুদূর থেকে সৌরভ পেয়ে মৌমাছি, প্রজাপতি ছুটে আসে। সুন্দরবনের প্রজাপতিরও পছন্দের ফুল এটি।</p>\r\n\r\n<p><strong>সুন্দরবনের প্রাকৃতিক মধুর ৭ টি বৈশিষ্ট্যঃ</strong><br />\r\n&bull; দেখতে সাধারণত Light Amber রঙের হয় (তবে সময় ও ফুল ভেদে কিছুটা Light বা Dark হতে পারে)।<br />\r\n&bull; খেতে খুবই সুস্বাদু, হালকা টকটক মিষ্টি লাগে।<br />\r\n&bull; কিছু মানুষের কাছে- সুন্দরবনের মধু অনেকটা আখের রসের মতো লাগে।<br />\r\n&bull; মধুর ঘনত্ব সবসময় পাতলা হবে (আমরা কখনই সুন্দরবনে ঘন মধু পাইনি)।<br />\r\n&bull; সুন্দরবনের মধুর অন্যতম বৈশিষ্ট্য হচ্ছে- একটু ঝাঁকি লাগলেই প্রচুর পরিমাণে ফেনা হয়ে যাবে।<br />\r\n&bull; সুন্দরবনের খাটি মধু আমরা কখনই জমতে দেখনি। হোক সেটা ফ্রিজের ভেতরে বা বাইরে।<br />\r\n&bull; এই মধুর আরেকটি বড় বৈশিষ্ট্য হচ্ছে- হাতে চাক কাটা পদ্ধতিতে সংগ্রহ করা মধুর উপরে হলুদ রঙের পোলেন জমা হয়। এটাকে অনেকে গাদ জমা বলে থাকেন।</p>', 'সুন্দরবনের অনেক গাছপালার ভিড়ে ছোট থেকে মাঝারি গড়নের একটি গাছ হলো খলিশা। এটি গুল্ম বা ছোট বৃক্ষজাতীয় প্রকৃত ম্যানগ্রোভ উদ্ভিদ। খলিশা ফুল ফুটলে সারা দিন মৌমাছি মধু সংগ্রহের জন্য ভিড় করে। বহুদূর থেকে সৌরভ পেয়ে মৌমাছি, প্রজাপতি ছুটে আসে। সুন্দরবনের প্রজাপতিরও পছন্দের ফুল এটি।', 'kholisha-fuler-modhu-500g-min-1709973842.png', 'kalojira-fuler-modhu-250g-min-1709973842.png', '65', NULL, '186,188,189,190,191,192', NULL, NULL, 1, NULL, '2024-03-09 08:44:02', '2024-03-09 09:37:08'),
(188, 'কালোজিরা ফুলের মধু', 'kalojira-fuler-mdhu', 'H-KFM', 380.00, 750.00, '<p>রাসূল (সা.)-এর যুগ থেকেই মুসলমানগণ কালোজিরার ব্যাপারে গুরুত্ব প্রদান করে আসছেন। রাসূল (সা.) বলেছেন, তোমরা কালোজিরার ব্যাপারে গুরুত্ব প্রদান করো। কেননা তাতে মৃত্যু ব্যতীত সব রোগের নিরাময় রয়েছে। সহি বুখারি। রাসূল (সা.) বলেছেন, কুরআন হলো যেকোনো আত্মিক রোগের জন্য আর মধু হলো দৈহিক রোগের জন্য।</p>\r\n\r\n<p><strong>কালোজিরা ফুলের প্রাকৃতিক মধুর ৬ টি বৈশিষ্ট্যঃ</strong><br />\r\n&bull; দেখতে কালচে রঙের হয়।<br />\r\n&bull; খেতে একেবারে খেজুরের গুড়ের মত স্বাদ লাগে।<br />\r\n&bull; ঘ্রাণ টাও খেজুরের গুড়ের সাথে মিলে যায়।<br />\r\n&bull; মধুর ঘনত্ব কম বা বেশি হতে পারে।<br />\r\n&bull; মধু পাতলা হলে ফেনা হতে দেখা যায়। আর ঘনত্ব বেশি হলে ফেনা হতে দেখা যায় না।<br />\r\n&bull; সাধারণত কালোজিরা ফুলের খাটি মধু জমে যেতে দেখা যায় না। তবে ধনিয়া ফুল সহ অন্যান্য ফুলের মধুর মিশ্রনের ফলে অনেক সময় সামান্য জমতে দেখা যায়।</p>\r\n\r\n<p>&nbsp;</p>', 'রাসূল (সা.)-এর যুগ থেকেই মুসলমানগণ কালোজিরার ব্যাপারে গুরুত্ব প্রদান করে আসছেন। রাসূল (সা.) বলেছেন, তোমরা কালোজিরার ব্যাপারে গুরুত্ব প্রদান করো। কেননা তাতে মৃত্যু ব্যতীত সব রোগের নিরাময় রয়েছে। সহি বুখারি। রাসূল (সা.) বলেছেন, কুরআন হলো যেকোনো আত্মিক রোগের জন্য আর মধু হলো দৈহিক রোগের জন্য।', 'kalojira-fuler-modhu-500g-min-1709975107.png', 'kalojira-fuler-modhu-250g-min-1709975107.png', '65', '8', '186,187,189,190,191,192', NULL, NULL, 1, NULL, '2024-03-09 09:05:07', '2024-03-10 09:00:25');
INSERT INTO `products` (`id`, `title`, `slug`, `sku`, `regular_price`, `sale_price`, `description`, `short_desc`, `featured_img`, `gallery_img`, `category_id`, `special_cat_id`, `related_product_id`, `brand_id`, `flash_title`, `status`, `delivery_note`, `created_at`, `updated_at`) VALUES
(189, 'লিচু ফুলের মধু', 'licu-fuler-mdhu', 'H-LFM', 185.00, 350.00, '<p><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">লিচু ফুলের মধু নিখুঁত খাবারের সেরা মধুগুলির মধ্যে একটি, যা আপনাকে সর্বোচ্চ গুণমান এবং বিশুদ্ধতার নিশ্চয়তা প্রদান করে। লিচুর মধু আমাদের রোগ প্রতিরোধ ক্ষমতার জন্য দুর্দান্ত স্বাস্থ্য উপকারিতা এবং প্রাকৃতিক নিরাময়কারী বৈশিষ্ট্য রয়েছে কারণ মধুতে প্রকৃতি থেকে প্রাপ্ত বিভিন্ন প্রাকৃতিক উপাদান রয়েছে।</span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">লিচু</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">ফুলের</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">প্রাকৃতিক</span><span style=\"color:#4a4a4a\">&nbsp;</span><span style=\"color:#4a4a4a\">মধুর</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">৬</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">টি</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">বৈশিষ্ট্যঃ</span></span><strong><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">&nbsp;</span></span></strong></span></span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">দেখতে</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">সাধারণত</span></span><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\"> Light Amber </span></span><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">রঙের</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">হয়</span></span><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\"> (</span></span><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">তবে</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">সময়</span></span><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">, </span></span><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">স্থান</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">ও</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">ঘন</span></span><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">-</span></span><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">পাতলার</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">উপর</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">নির্ভর</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">করে</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">কিছুটা</span></span><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\"> Light </span></span><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">বা</span></span><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\"> Dark </span></span><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">হতে</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">পারে</span></span><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">)</span></span><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">।</span></span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">খেতে</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">খুবই</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">সুস্বাদু।</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">মধু</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">খাওয়ার</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">সময়</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">অনেক</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">সময়</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">মধুতে</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">লিচু</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">ফলের</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">স্বাদ</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">পাওয়া</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">যায়</span></span><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">।</span></span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">ঘ্রাণ</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">টাও</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">লিচু</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">ফলের</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">সাথে</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">মিলে</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">যায়</span></span><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\"> (</span></span><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">তবে</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">মধু</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">পুরাতন</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">হলে</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">স্বাদ</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">এবং</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">ঘ্রাণ</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">কিছুটা</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">পরিবর্তন</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">দেখা</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">যায়</span></span><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">)</span></span><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\"> ।</span></span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">মধুর</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">ঘনত্ব</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">কম</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">বা</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">বেশি</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">হতে</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">পারে</span></span><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">।</span></span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">মধু</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">পাতলা</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">হলে</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">ফেনা</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">হতে</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">দেখা</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">যায়।</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">আর</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">ঘনত্ব</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">বেশি</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">হলে</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">ফেনা</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">হতে</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">দেখা</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">যায়</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">না</span></span><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">।</span></span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">সাধারণত</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">লিচু</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">ফুলের</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">খাটি</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">মধু</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">সামান্য</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">জমতে</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">দেখা</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">যায়।</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">যদি</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">মধু</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">পাতলা</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">হয়</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">তাহলে</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">সেটা</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">কয়েকমাস</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">পরে</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">সামান্য</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">জমতে</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">পারে।</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">আর</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">যদি</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">মধু</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">খুবই</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">ঘন</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">হয়</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">তাহলে</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">সেটা</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">দ্রুত</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">জমতে</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">শুরু</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">করে</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">এবং</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">সম্পূর্ণ</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">মধুই</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">জমে</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">যেতে</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">পারে</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">বা</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">বেশীরভাগ</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">জমতে</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">পারে</span></span><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">।</span></span></span></span></span></li>\r\n</ul>', 'লিচু ফুলের মধু নিখুঁত খাবারের সেরা মধুগুলির মধ্যে একটি, যা আপনাকে সর্বোচ্চ গুণমান এবং বিশুদ্ধতার নিশ্চয়তা প্রদান করে। লিচুর মধু আমাদের রোগ প্রতিরোধ ক্ষমতার জন্য দুর্দান্ত স্বাস্থ্য উপকারিতা এবং প্রাকৃতিক নিরাময়কারী বৈশিষ্ট্য রয়েছে কারণ মধুতে প্রকৃতি থেকে প্রাপ্ত বিভিন্ন প্রাকৃতিক উপাদান রয়েছে।', 'lichu-fuler-modhu-500g-min-1709975436.png', 'lichu-fuler-modhu-250g-min-1709975436.png', '65', NULL, '186,187,188,190,191,192', NULL, NULL, 1, NULL, '2024-03-09 09:10:36', '2024-03-09 09:35:55'),
(190, 'সরিষা ফুলের মধু', 'srisha-fuler-mdhu', 'H-SFM', 150.00, 280.00, '<p><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">মধু প্রকৃতির অন্যতম বড় নেয়ামত এবং এতে রয়েছে রোগ প্রতিরোধের বিশেষ ক্ষমতা। আর মধু যাতে মানুষ নিজেদের আরোগ্য ও সুস্থতার জন্য ব্যবহার করতে পারে তার ইঙ্গিত সুরা আন-নাহলে দিয়েছেন সৃষ্টি কর্তা। নানা ধরনের রোগ-জীবাণুর বিরুদ্ধে প্রতিরোধ গড়ে তুলতে এবং শরীরের রোগ প্রতিরোধ ক্ষমতা বজায় রাখার জন্য মধু টনিকের মতো কাজ করে।</span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">নিজস্ব তত্ত্বাবধানে সরিষা ফুলের মৌসুমে বিশেষ বক্স পদ্ধতিতে সংগ্রহ করা হয় টাটকা মধু। আর আপনাদের স্বাস্থের নিশ্চয়তায় এই খাটি মধু পৌছে দিচ্ছি আপনাদের দোরগোড়ায়।</span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">সরিষা</span></span></strong><strong> </strong><strong><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">ফুলের</span></span></strong><strong> </strong><strong><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">প্রাকৃতিক</span></span></strong><strong><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\"> </span></span></strong><strong><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">মধুর</span></span></strong><strong> </strong><strong><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">৬</span></span></strong><strong> </strong><strong><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">টি</span></span></strong><strong> </strong><strong><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">বৈশিষ্ট্যঃ</span></span></strong><strong><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\"> (</span></span></strong><strong><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">মধু</span></span></strong><strong> </strong><strong><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">কেনার</span></span></strong><strong> </strong><strong><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">আগে</span></span></strong><strong> </strong><strong><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">অবশ্যই</span></span></strong><strong> </strong><strong><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">এই</span></span></strong><strong> </strong><strong><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">তথ্য</span></span></strong><strong> </strong><strong><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">গুলো</span></span></strong><strong> </strong><strong><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">জেনে</span></span></strong><strong> </strong><strong><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">নেওয়া</span></span></strong><strong> </strong><strong><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">উচিত</span></span></strong><strong><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">)</span></span></strong></span></span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">টাটকা</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">মধু</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">দেখতে</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">সাধারণত</span></span><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\"> Extra Light Amber </span></span><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">রঙের</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">হয়।</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">তবে</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">কিছু</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">দিন</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">পরে</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">জমে</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">যাওয়ার</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">ফলে</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">সাদা</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">রঙের</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">হয়ে</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">যায়</span></span><span style=\"font-size:10.5pt\"><span style=\"color:#777777\">।</span></span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">সরিষার</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">জমা</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">মধু</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">কারো</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">কাছে</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">অত্যান্ত</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">পছন্দের</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">আবার</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">কারো</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">কাছে</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">অপছন্দের</span></span><span style=\"font-size:10.5pt\"><span style=\"color:#777777\">।</span></span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">ঘ্রাণ</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">অনেকটা</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">সরিষার</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">ফুলের</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">সাথে</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">মিল</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">খুঁজে</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">পাওয়া</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">যায়</span></span><span style=\"font-size:10.5pt\"><span style=\"color:#777777\">।</span></span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">মধুর</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">ঘনত্ব</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">কম</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">বা</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">বেশি</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">হতে</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">পারে</span></span><span style=\"font-size:10.5pt\"><span style=\"color:#777777\">।</span></span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">মধু</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">পাতলা</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">হলে</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">ফেনা</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">হতে</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">দেখা</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">যায়।</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">আর</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">ঘনত্ব</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">বেশি</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">হলেও</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">সরিষা</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">মধুতে</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">অনেক</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">সময়</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">সামান্য</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">ফেনা</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">হতে</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">পারে</span></span><span style=\"font-size:10.5pt\"><span style=\"color:#777777\">।</span></span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">সরিষা</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">ফুলের</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">মধু</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">ঘন</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">হোক</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">বা</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">পাতলা</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">হক</span></span><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">- </span></span><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">এটা</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">সারা</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">বছরই</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">জমে</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">থাকে।</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">ঘন</span></span><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">-</span></span><span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">পাতলা</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">এবং</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">তাপমাত্রার</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">উপরে</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">নির্ভর</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">করে</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">সম্পূর্ণ</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">মধু</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">বা</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">বেশীরভাগ</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">মধু</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">জমে</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">সাদা</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">হয়ে</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">থাকে।</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">যেটা</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">একেবারে</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">ক্রিম</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">এর</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">মতো</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">দেখা</span></span> <span style=\"font-size:11.5pt\"><span style=\"color:#4a4a4a\">যায়</span></span><span style=\"font-size:10.5pt\"><span style=\"color:#777777\">।</span></span></span></span></span></li>\r\n</ul>', 'মধু প্রকৃতির অন্যতম বড় নেয়ামত এবং এতে রয়েছে রোগ প্রতিরোধের বিশেষ ক্ষমতা। আর মধু যাতে মানুষ নিজেদের আরোগ্য ও সুস্থতার জন্য ব্যবহার করতে পারে তার ইঙ্গিত সুরা আন-নাহলে দিয়েছেন সৃষ্টি কর্তা। নানা ধরনের রোগ-জীবাণুর বিরুদ্ধে প্রতিরোধ গড়ে তুলতে এবং শরীরের রোগ প্রতিরোধ ক্ষমতা বজায় রাখার জন্য মধু টনিকের মতো কাজ করে।', 'shorisha-fuler-modhu-500g-min-1709975958.png', 'shorisha-fuler-modhu-250g-min-1709975958.png', '65', NULL, '186,187,188,189,191,192', NULL, NULL, 1, NULL, '2024-03-09 09:19:18', '2024-03-09 09:35:22'),
(191, 'গ্রাম্য প্রাকৃতিক চাকের মধু', 'gramz-prakrritik-caker-mdhu', 'H-GCM', 280.00, 560.00, '<p>গ্রামীণ প্রাকৃতিক চাকের&nbsp;মধু&nbsp;অন্যতম সেরা একটি মধু হিসেবে বিবেচিত। মধু বিভিন্ন ধরনের হতে পারে। এর ভিন্নতা নির্ভর করে মৌমাছি সর্বাধিক কোন ফুল থেকে নেক্টার সংগ্রহ করেছে তার উপর। গ্রামীণ মধু মৌমাছি কর্তৃক বিশেষ কোন ফুল থেকে নয় বরং নানাবিধ বুনো ফুল থেকে সংগৃহীত নেকটার থেকে উৎপন্ন এক প্রকার মধু। নানাবিধ ফুলের নেক্টার থাকায় এই মধুর রং, ঘ্রাণ বা স্বাদ সব সময় একরকম হয় না।&nbsp;</p>\r\n\r\n<p><strong>গ্রামীণ প্রাকৃতিক চাকের&nbsp;মধুর রয়েছে নানাবিধ স্বাস্থ্য উপকারিতা:</strong><br />\r\n১। প্রাকৃতিক চাকের খাঁটি মধু হওয়ায় এতে আছে মৌমাছির পোলেন। যা দেহের ভিটামিন ও মিনারেল এর ঘাটতি পূরণ করে।<br />\r\n২। এই মধুতে রয়েছে প্রচুর পরিমাণে অ্যান্টি অক্সিডেন্ট যা শরীরের মেটাবলিজম বৃদ্ধি করে, ক্যান্সার ও হৃদরোগ প্রতিরোধ করে।<br />\r\n৩। দেহে তাপ ও শক্তির যোগান দেয়।<br />\r\n৪। উচ্চ রক্তচাপ নিয়ন্ত্রণে রাখতে বেশ ভালো কাজ করে।<br />\r\n৫। কোষ্ঠ্যকাঠিন্য এবং ডায়রিয়াতেও এটি বেশ উপযোগী।<br />\r\n৬। দেহের রোগ প্রতিরোধ ক্ষমতা বৃদ্ধি করে দেহকে সুরক্ষিত রাখে।<br />\r\n৭। সর্দি, কাশি, গলা ব্যথা দূর করতে চমৎকার কাজ করে।<br />\r\n৮। হাঁপানি ও ফুসফুসের সমস্যা সমাধানে কার্যকরী।<br />\r\n৯। ঘুমের সমস্যা সমাধানে এটি বেশ ভালো কাজ করে।<br />\r\n১০। রাতে ঘুমাতে যাওয়ার পূর্বে এক চা চামচ মধু হতে পারে অনিদ্রার ক্ষেত্রে বিশেষ কার্যকরী।<br />\r\n১১। রক্তশূন্যতা দূর করে ভূমিকা রাখে।<br />\r\n১২। দেহের পানিশূন্যতা দূর করতে ভূমিকা রাখে।<br />\r\n১৩। অতিরিক্ত মেদ কমিয়ে ওজন হ্রাসে ভূমিকা রাখে।<br />\r\n১৪। ত্বক মসৃণ ও সজীব রাখতে কাজ করে এটি।<br />\r\n১৫। অ্যাসিডিটি উপশমে বেশ ভালো কাজ করে।</p>', 'গ্রামীণ মধু অন্যতম সেরা একটি মধু হিসেবে বিবেচিত। মধু বিভিন্ন ধরনের হতে পারে। এর ভিন্নতা নির্ভর করে মৌমাছি সর্বাধিক কোন ফুল থেকে নেক্টার সংগ্রহ করেছে তার উপর। গ্রামীণ মধু মৌমাছি কর্তৃক বিশেষ কোন ফুল থেকে নয় বরং নানাবিধ বুনো ফুল থেকে সংগৃহীত নেকটার থেকে উৎপন্ন এক প্রকার মধু। নানাবিধ ফুলের নেক্টার থাকায় এই মধুর রং, ঘ্রাণ বা স্বাদ সব সময় একরকম হয় না।', 'grammo-chaker-modhu-500g-min-1709976398.png', 'grammo-chaker-modhu-250g-min-1709976398.png', '65', NULL, '186,187,188,189,190,192', NULL, NULL, 1, NULL, '2024-03-09 09:26:38', '2024-03-09 11:40:13'),
(192, 'বরই ফুলের মধু', 'bri-fuler-mdhu', 'H-BFM-250g', 260.00, 500.00, '<p>বরই মধু প্রধানত বরই ফুলের পরাগ থেকে তৈরি এক ধরনের মধু, যা গ্লুকোজ, ফ্রুক্টোজ এবং বিভিন্ন খনিজ পদার্থে সমৃদ্ধ। এই মধু সাধারণত গাঢ় এড অ্যাম্বার বা লালচে রঙ হয়, দেখতে স্বচ্ছ এবং চকচকে। সাথে থাকে শক্তিশালী বরই সুগন্ধ, এবং উচ্চ মিষ্টতার সঙ্গে হালকা টক স্বাদ থাকে।</p>\r\n\r\n<p><strong>বরই ফুলের মধুর ৬ টি বৈশিষ্ট্যঃ</strong><br />\r\n&bull; দেখতে সাধারণত Amber রঙের হয়।<br />\r\n&bull; খেতে খুবই সুস্বাদু। মধু খাওয়ার সময় অনেকটা পাকা বরই এর মতো স্বাদ লাগে।<br />\r\n&bull; ঘ্রাণ বরই ফুলের মতো লাগে।<br />\r\n&bull; মধুর ঘনত্ব খুবই পাতলা হবে। আমরা কখনোই বরই ফুলের ঘন মধু পাইনি।<br />\r\n&bull; বরই ফুলের মধুর অন্যতম বৈশিষ্ট্য হচ্ছে- একটু ঝাঁকি লাগলেই প্রচুর পরিমাণে ফেনা হয়ে যাবে।<br />\r\n&bull; সাধারণ তাপমাত্রায় বরই ফুলের খাটি মধু জমতে দেখা যায় না। (এই মধুর অভিজ্ঞতা আমার কম। আমি অন্য অভিজ্ঞদের থেকে যা জানতে পেরেছি, সেটাই এখানে লিখলাম)</p>', 'বরই মধু প্রধানত বরই ফুলের পরাগ থেকে তৈরি এক ধরনের মধু, যা গ্লুকোজ, ফ্রুক্টোজ এবং বিভিন্ন খনিজ পদার্থে সমৃদ্ধ। এই মধু সাধারণত গাঢ় এড অ্যাম্বার বা লালচে রঙ হয়, দেখতে স্বচ্ছ এবং চকচকে। সাথে থাকে শক্তিশালী বরই সুগন্ধ, এবং উচ্চ মিষ্টতার সঙ্গে হালকা টক স্বাদ থাকে।', 'boroi-fuler-modhu-500g-min-1709976855.png', 'boroi-fuler-modhu-250g-min-1709976855.png', '65', NULL, '186,187,189,190,191', NULL, NULL, 1, NULL, '2024-03-09 09:34:15', '2024-03-09 09:34:15'),
(193, 'আখের লাল চিনি  (হাতে বানানো)', 'akher-lal-cini-hate-banano', 'G-PI-ALC', 300.00, 1500.00, '<p>ময়মনসিংহের ত্রিশালের ঐতিহ্যিবাহী হাতে বানানো আখের লাল চিনি। &nbsp;কেউ এটাকে বলেন লাল চিনি, কেউ বা ব্রাউন সুগার আর কেউ বা সুগার পাউডার বা আখের জুস পাউডার।আখ থেকে সম্পূর্ণভাবে কৃষকের হাতে উৎপাদিত লাল চিনি।&nbsp;</p>\r\n\r\n<p>লাল চিনির উপকারিতা :<br />\r\n১। রিফাইন করা হয় না তাই আখের রসের সমস্ত পুষ্টিগুণ বজায় থাকে।<br />\r\n২। লাল চিনির মোলাসেস এন্ট্রি অক্সিডেন্ট হিসেবে কাজ করে।<br />\r\n৩। এতে বিদ্যমান ফলিক এসিড দেহে রক্ত সঞ্চালন বৃদ্ধি করে ।<br />\r\n৪। এ চিনি দেহে রক্ত কনিকা তৈরিতে সাহায্য করে<br />\r\n৫। লাল চিনির খাদ্য উপদান অন্ত্রের সুস্থতা বজায় রাখে এবং ক্ষুধামন্দ্য দূর করে ।<br />\r\n৬। এ চিনির উপাদান হজমে সহায়তা করে।<br />\r\n৭। আয়রন সমৃদ্ধ হওয়ায় এ চিনি প্রসব পরবর্তী সময়ে মায়েদের জন্য উপকারী<br />\r\n&nbsp;৮। স্বর্দি , জ্বর হলে লাল চিনি এক কাপ গরম পানির সঙ্গে আদা কুচি ও লাল চিনি মিশিয়ে খেলে সর্দি জ্বর দ্রুত ভালো হয়।<br />\r\n৯। আখের অ্যাটিঅক্সিডেন্ট ক্যান্সার প্রতিরোধ করে এবং শরীরের ভেতরে উপস্থিত ক্ষতিকর টক্সিক উপাদান বের করে দেয়।<br />\r\n১০। লিভার সুস্থ রাখতে সহায়তা করে।</p>\r\n\r\n<p>লাল চিনির বৈশিষ্ঠ্য:<br />\r\n১। সম্পূর্ণ পাউডারের মতো এটা বাজারের লাল চিনির মতো দানা দানা নয়।<br />\r\n২। বাজারের লাল চিনির মতো কোনো ময়লা বা বালি থাকবে না।<br />\r\n৩। আখের ছোবলা বা এই সদৃশ জিনিস থাকবে না।<br />\r\n৪। আদ্র ভাব থাকবে না।<br />\r\n৫। আখের রস বা জুস বা শরবতের মতো স্বাদ পাবেন পানিতে গুলিয়ে খেলে।<br />\r\n৬। এটাকে আখের জুস পাউডারও বলতে পারেন।<br />\r\n৭। হাতে তৈরী তাই সম্পূর্ণ নিরাপদ কারণ কোনো আর্টিফিশিয়াল প্রসেসের মধ্যে যায় না।<br />\r\n&nbsp;</p>', 'ময়মনসিংহের ত্রিশালের ঐতিহ্যিবাহী হাতে বানানো আখের লাল চিনি।  কেউ এটাকে বলেন লাল চিনি, কেউ বা ব্রাউন সুগার আর কেউ বা সুগার পাউডার বা আখের জুস পাউডার।আখ থেকে সম্পূর্ণভাবে কৃষকের হাতে উৎপাদিত লাল চিনি।', 'akher-lal-chini-1-kg-min-1709978591.png', 'akher-lal-chini-1-kg-1-min-1709978591.png', '160', '8,11', NULL, NULL, NULL, 1, NULL, '2024-03-09 10:03:11', '2024-03-10 09:03:48'),
(194, 'আলকুশি পাউডার', 'alkusi-paudar', 'SF-AKP', 220.00, 420.00, '<p>আলকুশি সিম আকৃতির লোম যুক্ত একটি গ্রীষ্মমন্ডলীয় উদ্ভিদ। আলকুশি (দুধ দিয়ে শোধিত) আলকুশি শারীরিক শক্তি বাড়াতে বিশেষ সহায়ক ও ওষুধে ব্যবহৃত রাসায়নিক এল-ডোপা (L-DOPA) সমৃদ্ধ বীজের জন্য পরিচিত। সুবিধার মধ্যে রয়েছে পারকিনসন্স ডিজিজ পরিচালনা, মেজাজ ভালো রাখা এবং সম্ভাব্যভাবে উর্বরতা এবং লিবিডোর উন্নতি।&nbsp;আলকুশি বীজ খাঁটি দুধে শোধন করে শুকিয়ে পাউডার&nbsp;করা।</p>\r\n\r\n<p><strong>আলকুশি বীজের উপকারিতা:</strong></p>\r\n\r\n<p>আলকুশি মুকুনা প্রুরিয়েন্স নামেও পরিচিত। এটি বেশ কয়েকটি স্বাস্থ্য সুবিধা প্রদান করে বলে মনে করা হয়। যা মূলত এর উচ্চ এল-ডোপা (L-DOPA) সামগ্রীর জন্য দায়ী। নিচে আলকুশি বীজের উপকারিতা সম্পর্কে আলোচনা করা হলো:</p>\r\n\r\n<p>১। পারকিনসন্স ডিজিজ: L-DOPA পারকিনসন্স রোগের উপসর্গগুলি পরিচালনা করতে ব্যবহৃত হয়। কারণ এটি মস্তিষ্কে ডোপামিনের মাত্রা বাড়াতে সাহায্য করে। কম্পন এবং অনমনীয়তার মতো মোটর লক্ষণগুলি প্রশমিত করে।</p>\r\n\r\n<p>২। মেজাজ ভালো রাখা: L-DOPA ডোপামিন বৃদ্ধি করে, সম্ভাব্য বিষণ্নতা এবং উদ্বেগের লক্ষণগুলি হ্রাস করে মেজাজের উপর ইতিবাচক প্রভাব ফেলতে পারে।</p>\r\n\r\n<p>৩। যৌন স্বাস্থ্য ভালো করে: আলকুশি বীজ, পাতার রস মানব দেহের উপকারে ব্যবহার হয়ে আসছে। এটি প্রজনন ক্ষমতাকে বাড়াতে সাহায্য করে। এটি নিয়মিত খেলে শুক্রাণু বৃদ্ধি করে যা প্রজনন এর ক্ষেত্রে ভুমিকা পালন করে। গরম দুধে মিশিয়ে Alkushi Powder খেলে বীর্য ঘন হয়। তাছাড়া এটি টেস্টস্টরেন মাত্রা বাড়িয়ে দেয় ফলে শুক্রানুর সংখ্যা বৃদ্ধি ও গতিশীল করে। যার ফলে যৌ*ন ক্ষমতা বহুগুনে বেড়ে যায়।</p>\r\n\r\n<p>৪। ডায়বেটিস রোগ প্রতিরোধ করে: আলকুশি বীজের পাউডারে ডি চিরো ইনসিডল নামক একটি উপাদান থাকে। যা ইন্সুলিন এর প্রভাব অনুকরন করতে পারে। যা রক্তে সুগার এর মাত্রা কমাতে সাহায্য করে। ফলে ডায়বেটিস রোগ প্রতিরধে বিশেষ ভুমিকা রাখে।</p>\r\n\r\n<p>৫। ক্যান্সার প্রতিরোধ: পরিশোধিত ও বিশুদ্ধ আলকুশির বীজের পাউডার নিয়মিত খেলে তা ক্যান্সার প্রতিরোধেকাজ করে। এটি সেবনে গ্লুটাথিয়ন ও ক্যাটালজের পরিমাণ বৃদ্ধি করে থাকে। ফলে এটি এন্টি অক্সিডেন্ট ও ফ্রি র&zwj;্যাডিক্যাল এর আঘাত থেকে কোষ গুলকে রক্ষা করতে পারে।&nbsp;</p>\r\n\r\n<p>৬। প্রজনন ক্ষমতা বৃদ্ধি ও বন্ধ্যাতা দুরীকরণ: কম টেস্টস্টরেন বা ফলিকন স্টিমুলেটিং হরমোন ও পোল্যাক্তিন বন্ধ্যাতা এর কারন হিসাবে পরিচিত। নিয়মিত Alkushi Powder খেলে এই সমস্যা সমধান পাওয়া যায়।</p>\r\n\r\n<p>৭। স্ট্রেস হ্রাস করে: কিছু গবেষণা পরামর্শ দেয় যে আলকুশি স্ট্রেস কমাতে এবং স্ট্রেসের প্রতি শরীরের প্রতিক্রিয়া উন্নত করতে সাহায্য করতে পারে।</p>\r\n\r\n<p>৮। উর্বরতা এবং লিবিডো: আলকুশির অ্যাফ্রোডিসিয়াক বৈশিষ্ট্য রয়েছে বলে বিশ্বাস করা হয় এবং ডোপামিন এবং অন্যান্য কারণের উপর প্রভাবের কারণে পুরুষের উর্বরতা বৃদ্ধি করতে পারে।</p>\r\n\r\n<p>৯। অ্যান্টিঅক্সিডেন্ট বৈশিষ্ট্য: উদ্ভিদে অ্যান্টিঅক্সিডেন্ট রয়েছে যা ফ্রি র&zwnj;্যাডিক্যালস দ্বারা সৃষ্ট ক্ষতি থেকে কোষগুলিকে রক্ষা করতে সাহায্য করতে পারে। তাছাড়া দীর্ঘস্থায়ী রোগের ঝুঁকি হ্রাস করে।</p>\r\n\r\n<p>১০। নিউরোপ্রোটেক্টিভ প্রভাব: কিছু গবেষণা ইঙ্গিত করে যে আলকুশির যৌগগুলির নিউরোপ্রোটেক্টিভ প্রভাব থাকতে পারে, যা সামগ্রিক মস্তিষ্কের স্বাস্থ্যের জন্য উপকারী হতে পারে।</p>\r\n\r\n<p><br />\r\nNote: আলকুশি বীজের উপকারিতা এর পাশাপাশি অত্যধিক সেবনের ফলে বমি বমি ভাব, হজম সংক্রান্ত সমস্যা এবং উচ্চ L-DOPA মাত্রা সম্পর্কিত জটিলতা সহ পার্শ্বপ্রতিক্রিয়া হতে পারে। কোনো নির্দিষ্ট স্বাস্থ্য উদ্বেগের জন্য এটি ব্যবহার করার আগে সর্বদা একটি স্বাস্থ্যসেবা প্রদানকারীর সাথে পরামর্শ করুন।</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>আলকুশি বীজের পাউডার খাওয়ার নিয়ম:</strong><br />\r\nসাধারণভাবে আলকুশি বীজের পাউডার প্রতিদিন প্রায় ১ থেকে ২ গ্রাম (প্রায় ১/২ থেকে ১ চা চামচ) খেতে পারেন। &nbsp;Alkushi Powder গরম দুধ বা পানির সাথে মিশিয়ে খেতে পারেন। সাথে প্রয়োজন হলে মধু যোগ করতে পারেন।</p>', 'আশ্চর্য ঔষধি গুণের অধিকারী \'আলকুশী\' আয়ুর্বেদ শাস্ত্রে প্রায় ২ হাজার বছরের নির্ভরযোগ্য ঔষধি ভেষজ। আলকুশি সিম আকৃতির লোম যুক্ত একটি গ্রীষ্মমন্ডলীয় উদ্ভিদ। আলকুশি (দুধ দিয়ে শোধিত) আলকুশি শারীরিক শক্তি বাড়াতে বিশেষ সহায়ক। সুবিধার মধ্যে রয়েছে মেজাজ ভালো রাখা এবং সম্ভাব্যভাবে উর্বরতা এবং লিবিডোর উন্নতি।', 'alkushi-powder-200g-min-1709985914.png', 'alkushi-powder-100g-min-1709985914.png', '155', NULL, NULL, NULL, NULL, 1, NULL, '2024-03-09 12:05:14', '2024-03-09 12:06:35'),
(195, 'অশ্বগন্ধা গুঁড়া', 'oswgndha-gunnra', 'SF-AP', 150.00, 300.00, '<p>অশ্বগন্ধা বা উইন্টারচেরী ( Winter cherry) কে বলা হয় আয়ুর্বেদ শাস্ত্রের নয়নমণি যার উপকারিতা হাতে গুণে শেষ করা যাবে না। প্রায় ৩০০০ বছর ধরে অশ্বগন্ধা একটি গুরুত্বপূর্ণ ঔষধি ভেষজ হিসেবে ব্যবহৃত হয়ে আসছে। অসাধারণ কার্যকারিতার জন্য অশ্বগন্ধাকে ইন্ডিয়ান জিনসেং হিসেবেও অভিহিত করা হয়। নিয়মিত খেলে অশ্ব বা ঘোড়ার মতো শক্তি বৃদ্ধি হয়।&nbsp;</p>\r\n\r\n<p><strong>অশ্বগন্ধা কীভাবে কাজ করেঃ&nbsp;</strong><br />\r\n&bull; শুক্রাণু বাড়াতে অশ্বগন্ধার নাম বহুল প্রচলিত। এ গাছের রস শক্তিবর্ধক<br />\r\n&bull; ঘুমানোর আগে অশ্বগন্ধা গুঁড়ো চিনিসহ খেলে তা ভালো ঘুমের সহায়ক হিসেবে কাজ করে<br />\r\n&bull; অশ্বগন্ধার মূল গুঁড়ো &nbsp;সর্দি-কাশি থেকে মুক্তি পেতে সাহায্য করে<br />\r\n&bull; অশ্বগন্ধার পাতা ও মূল স্নায়ুবিক বিভিন্ন রোগের সমাধান হিসেবে কাজ করে।অনিদ্রা সমস্যায় ভুগলে অশ্বগন্ধা উত্তম ওষুধ হিসাবে কার্যকর হতে পারে। এছাড়া দুধ ও ঘি এর সঙ্গে অশ্বগন্ধার পাতা ফুটিয়ে খেলে শরীরে বল পাওয়া যায়<br />\r\n&bull; চোখের ব্যথা দূর করতে বিশেষ উপকারী<br />\r\n&bull; ক্রনিক ব্রংকাইটিসের ক্ষেত্রেও একটি কার্যকর ওষধু হল অশ্বগন্ধা &nbsp;<br />\r\n&bull; অশ্বগন্ধা মাথা ঝিমঝিম করে ওঠা, সংজ্ঞাহীনতা, অবসাদ প্রভৃতি সহ নানা মানসিক ও শারীরিক সমস্যা দূর করতে সহায়ক। মনোযোগ বাড়ায়। ক্লান্তি দূর করে সঞ্জীবনী শক্তি পুনরুদ্ধার করে<br />\r\n&bull; হজমের সমস্যা থেকে মুক্তি পেতে অশ্বগন্ধা অনেক উপকারী। অম্বল-অজীর্ন, পেট ফাঁপা এবং পেটের ব্যথা নিরাময় সহ যকৃতের জন্য ভীষণ উপকারী অশ্বগন্ধার ফল। &nbsp;তবে অশোধিত অশ্বগন্ধা গুঁড়ো বা পাউডার হজমে গোলমাল সৃষ্টি করতে পারে। যার ফলে তলপেটে ব্যথা হতে পারে। সুতরাং যাদের হজমশক্তি দুর্বল, তাদের অবশ্যই ভালো মানের অশ্বগন্ধা সংগ্রহ করে সেবন করতে হবে</p>\r\n\r\n<p><br />\r\n<strong>মানব দেহে অশ্বগন্ধার প্রভাবঃ</strong><br />\r\n১. <strong>অনিদ্রা দূর করে:</strong><br />\r\nআমরা আগেই জেনেছি ক্লান্তি দূর করে স্নায়ুকে আরাম প্রদান করতে অশ্বগন্ধা খুবই কার্যকারী একটি ঔষধি ভেষজ। এর ফলে ঘুম খুব ভাল হয়। বিভিন্ন গবেষণার থেকে জানা যায় যে, অশ্বগন্ধা ব্যবহার করলে মনোযোগ বৃদ্ধি পায়।<br />\r\n২. <strong>স্ট্রেস কমায়:</strong><br />\r\nঅশ্বগন্ধায় অ্যানজাইলটিক উপাদান উপস্থিত থাকে বলে এটি মানসিক চাপকে কমিয়ে ফেলতে সাহায্য করে।অর্থাৎ এটি স্নায়ুতন্ত্রের ওপর কাজ করতে সক্ষম। আপনি যদি খুব ভয় পেয়ে যান কোনো কারণে তাহলে প্যানিক অ্যাট্যাক হওয়ার সম্ভাবনা থেকে যায়। তাই স্নায়ুর ওপর চাপ পড়ে, এই সমস্যা এড়াতে অশ্বগন্ধা সাহায্য করে।<br />\r\n৩. <strong>কোলেস্টেরল দূর করে:</strong><br />\r\nআয়ুর্বেদ শাস্ত্রে বলা হয়, অশ্বগন্ধা ভেষজ মানব শরীরের খারাপ কোলেস্টেরলের মাত্রা কমিয়ে পেশির শক্তি বাড়াতে সাহায্য করে।<br />\r\n৪. <strong>অশ্বগন্ধা কাম উত্তেজনা সৃষ্টিতে সহায়ক:</strong><br />\r\nপ্রাচীনকাল হতে অশ্বগন্ধা একটি আফ্রোডাইজিয়াক হিসেবে ব্যবহৃত হয়ে আসছে। কিংবদন্তি শাস্ত্র কাম সূত্রে অশ্বগন্ধাকে অত্যন্ত শক্তিশালী যৌন উত্তেজক ভেষজ হিসাবে উল্লেখ করা হয়েছে। আসলে, অশ্বগন্ধা ভেষজ আফ্রোডাইজিয়াক পণ্যগুলির মধ্যে একটি অনন্য। অশ্বগন্ধা কামাকাঙ্ক্ষা হ্রাস এবং ইরেকটাইল ডিসফাংশনের চিকিৎসায় কার্যকরী ভেষজ হিসেবে স্বীকৃত। পুরুষরা যখন অশ্বগন্ধা সেবন শুরু করেন, তখন তাদের দেহে নাইট্রিক অক্সাইডের উৎপাদন বেড়ে যায়। এটি যৌন আকাঙ্ক্ষা এবং তৃপ্তির বৃদ্ধি ঘটায়।<br />\r\n৫. <strong>যৌনক্ষমতা বাড়ায়:</strong><br />\r\nএটি প্রমাণিত যে অশ্বগন্ধা শরীরে টেস্টোস্টেরন ও প্রোজেস্টেরনের পরিমান বাড়াতে পারে। ফলে যৌন মিলনের ইচ্ছে বাড়ে। প্রাচীনকাল থেকেই ছেলেদের যৌনসমস্যা দূর করতে অশ্বগন্ধা ব্যবহার করা হয়।&nbsp;<br />\r\n৬. <strong>রক্তে টেস্টোস্টেরনের মাত্র বাড়ায়:</strong><br />\r\nবিজ্ঞানীরা প্রমান করেছে অশ্বগন্ধা রক্তে টেস্টোস্টেরনের মাত্রা উল্লেখযোগ্য ভাবে বাড়াতে পারে। টেস্টোস্টেরনকে বলা হয় সেক্স হরমোন। এটি পুরুষের লিঙ্গ দৃঢ় করে এবং কামাকাঙ্ক্ষা বৃদ্ধি করে। পুরুষদের বয়স বাড়তে থাকলে তাদের দেহে টেস্টোস্টেরনের উৎপাদন উল্লেখযোগ্য ভাবে হ্রাস পায়। এছাড়াও বিভিন্ন কারণে রক্তে টেস্টোস্টেরন উৎপাদন কমে যেতে পারে। অশ্বগন্ধা লুটেইনিজিং হরমোন এবং টেস্টোস্টেরনের সিরামের মাত্রা বৃদ্ধি করে, ফলে পুরুষের যৌন হরমোনগুলির প্রাকৃতিক ভারসাম্যকে বজায় থাকে। অশ্বগন্ধা করটিজলের বৃদ্ধি রোধ করে স্ট্রেস হ্রাস করতে পরিচিত, করটিজল প্রাকৃতিক টেস্টোস্টেরন উৎপাদনকে বাধাগ্রস্ত করে।<br />\r\n৭. <strong>সহনশীলতা বাড়ায়:</strong><br />\r\nঅশ্বগন্ধা শারীরিক পারফরম্যান্সকে আরও উন্নত করার পাশাপাশি যৌন স্বাস্থ্যের উন্নতিতেও করাতে কাজ করে। নিয়মিত অশ্বগন্ধা সেবনের ফলে ধৈর্য্যশীলতা, শারীরিক ক্রিয়াকলাপ ও সহনশীলতা প্রভৃতির উন্নতি ঘটে।<br />\r\n৮. <strong>রোগ প্রতিরোধ ক্ষমতা বৃদ্ধি পায়:</strong><br />\r\n&nbsp;অশ্বগন্ধায় অ্যান্টি-অক্সিডেন্ট উপাদান থাকার ফলে এটি শরীরে রোগ প্রতিরোধ ক্ষমতা বাড়াতে অনেক সাহায্য করে।<br />\r\n৯. <strong>থাইরয়েডের সমস্যা কমাতে:</strong><br />\r\nহাইপোথাইরয়েডের অর্থাৎ যাদের শরীরে থাইরয়েড হরমোনের পরিমান কম থাকে তাদের এই সমস্যা দূর করতে ব্যবহৃত হয় অশ্বগন্ধা। শরীরে থাইরক্সিন হরমোনের পরিমান বাড়ায় এই অশ্বগন্ধা।&nbsp;<br />\r\n১০. <strong>চোখের সমস্যা কমাতে:</strong><br />\r\nপ্রাচীনকালে চোখের স্বাস্থ্য ভালো করতে অশ্বগন্ধা ব্যবহার করা হত বলে জানা যায় ।&nbsp;<br />\r\n১১. <strong>আর্থ্রাইটিস সারাতে:</strong><br />\r\nআর্থ্রাইটিস এর ব্যথার তীব্রতা কমাতে অশ্বগন্ধার গুঁড়ো খুবই উপযোগী। আয়ুর্বেদ শাস্ত্রে আর্থ্রাইটিস সারাতে অশ্বগন্ধা ব্যবহৃত হয়।<br />\r\n১২. <strong>ক্যান্সার প্রতিরোধ করতে:</strong><br />\r\nঅশ্বগন্ধা ক্যান্সারের প্রতিরোধক হিসেবে কার্যকর ফলাফল দেয়।আয়ুর্বেদ শাস্ত্রে মতে অশ্বগন্ধার পাতা ও মূলের নির্যাসে উপস্থিত ফাইটোকেমিক্যালস টিউমার কোষকে ধ্বংস করতে ও সেই কোষে রক্ত সরবারহ বন্ধ করে দেয় ।ক্যান্সারের সময় কেমোথেরাপির মধ্যে দিয়ে যাদের যেতে হয়, তাদের জীবনের মানের উন্নতি ঘটাতে সাহায্য করে অশ্বগন্ধা।&nbsp;<br />\r\n১৩. <strong>ডায়াবেটিসের সমস্যা কমাতে:</strong><br />\r\nঅশ্বগন্ধার মূল ও পাতার নির্যাস অ্যান্টি-ডায়াবেটিক উপাদান থাকে। এই অংশের কোষে যে ফ্ল্যাভোনয়েডস থাকে তা ডায়াবেটিসে আক্রান্ত মানুষদের শরীরে ইনসুলিনের পরিমাণ বাড়াতে সাহায্য করে। এছাড়াও অশ্বগন্ধা ডায়াবেটিসে আক্রান্ত রোগীদের শরীরে লিপিডের পরিমান ঠিক রাখতে সাহায্য করে বলে জানা গেছে।&nbsp;<br />\r\n১৪. <strong>স্মৃতিশক্তি উন্নত করে:</strong><br />\r\nযাদের অ্যালজাইমারস রোগ আছে, তাদের ক্ষেত্রেও অবস্থার উন্নতিতে অশ্বগন্ধা কাজ করে।&nbsp;<br />\r\n১৫. <strong>পেশী মজবুত করে:</strong><br />\r\nঅশ্বগন্ধা পেশী মজবুত করতে যে কার্যকরী ফলাফল দেয়। পেশিতে কোনো আঘাত পেলে সেটি তা সারাতে সাহায্য করে। এছাড়াও ব্যায়াম করার ফলে পেশিতে যে চাপের সৃষ্টি হয় তা কমাতেও অশ্বগন্ধা ব্যবহৃত হয়।&nbsp;<br />\r\n১৬. <strong>ইনফেকশন থেকে বাঁচায় অশ্বগন্ধা:</strong><br />\r\nঅশ্বগন্ধার নানা ধরণের ইনফেকশন থেকে আমাদের বাঁচাতে সাহায্য করে কারণ এর পাতা ও মূলে রয়েছে অ্যান্টি-ইনফ্লেমেটরি এর মত উপাদান।&nbsp;<br />\r\n১৭. <strong>হার্টের সুরক্ষায় অশ্বগন্ধা:</strong><br />\r\nআমাদের শরীরে রক্ত চলাচল সঠিক রেখে আমাদের হার্টকে স্বাস্থ্যকর করে তোলে অশ্বগন্ধা। &nbsp;<br />\r\n১৮. <strong>শরীরের ওজন বৃদ্ধি করতে:&nbsp;</strong><br />\r\nঅনেকে মনে করেন অশ্বগন্ধার মূলের গুঁড়ো শরীরের ওজন বৃদ্ধি করতে সাহায্য করে, কিন্তু এটি এখনও প্রমানিত নয়।<br />\r\n১৯. <strong>অবসাদ কমাতে:</strong><br />\r\nঅশ্বগন্ধায় অ্যাড্যাপটোজেন থাকায় এর নির্যাস অবসাদ ও মনের উদ্বেগ কমাতে উপযোগী।&nbsp;<br />\r\n২০. <strong>খুশকি কমাতে:</strong><br />\r\nবেশিরভাগ খুশকি কমানোর শ্যাম্পুতে অশ্বগন্ধা থাকে কারণ অশ্বগন্ধার গুঁড়ো দিয়ে তৈরী তেল ও শ্যাম্পু খুশকি কমাতে অনবদ্য কাজ করে। &nbsp;<br />\r\n২১. <strong>অকালে চুল পাকা আটকাতে:</strong><br />\r\nআয়ুর্বেদ শাস্ত্র অনুযায়ী অশ্বগন্ধা গাছের নির্যাস অকালে চুল পাকা আটকাতে খুবই উপকারী।<br />\r\n২২. <strong>চুলকে মজবুত করতে:</strong><br />\r\nচুলকে ঝলমলে ও স্বাস্থ্যকর করে তুলতে আয়ুর্বেদ শাস্ত্রে অশ্বগন্ধাকে খুবই উপযোগী বলে মানা হয়।<br />\r\n২৩. <strong>বার্ধ্যকের ছাপ দূর করতে:</strong><br />\r\nআয়ুর্বেদ শাস্ত্রে মনে করা হয় অশ্বগন্ধা গাছের নির্যাস বার্ধ্যকের ছাপ পড়তে দেয় না।<br />\r\n২৪. <strong>ক্ষত সারাতে:</strong><br />\r\nঅশ্বগন্ধার ভিতর অ্যান্টি-ইনফ্লেমেটরি উপাদান থাকার ফলে এটি শরীরের ক্ষত সারাতে কার্যকর ভূমিকা রাখতে পারে।&nbsp;<br />\r\n২৫. <strong>কর্টিসল লেভেল কমাতে:</strong><br />\r\nমানব শরীরে অ্যাডরিনালিন গ্ল্যান্ডের কোনো সমস্যা থাকলে রক্তে কর্টিসলের পরিমান কম বেশি হয়, এই সমস্যা থেকে রক্ষা পেতে অশ্বগন্ধা ভালো সাহায্য করে।<br />\r\n২৬. <strong>মানসিক স্বাস্থ্য ভালো রাখতে:</strong><br />\r\nঅশ্বগন্ধার হল এডাপ্টোজেন যার অর্থ হল অশ্বগন্ধা আমাদের মানসিক চাপ কমাতে সাহায্য করে। তাই এটি মানসিক স্বাস্থ্যের উন্নতি করতে সক্ষম।<br />\r\n২৭. <strong>ত্বকের ইনফেকশন ঠিক করতে:</strong><br />\r\nঅশ্বগন্ধার পাতা এবং মূলে অ্যান্টি-ব্যাকটেরিয়াল উপাদান থাকার ফলে এটি ত্বকের ইনফেকশন কমাতে সাহায্য করে। &nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>সেবন পদ্ধতি :</strong> ১ চা চামচ পাউডার ১ কাপ কুসুম গরম পানি/রং চা/দুধের সাথে খাওয়া যাবে। মধুর সাথে খেলে আরো ভালো ফলাফল পাওয়া যাবে।</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>অশ্বগন্ধার পার্শ্ব প্রতিক্রিয়া:</strong><br />\r\nএতক্ষণ অশ্বগন্ধার উপকারিতা গুলো জানার পর চলুন এবার অশ্বগন্ধার পার্শ্ব প্রতিক্রিয়া গুলো সম্পর্কে জানা যাক। অশ্বগন্ধার তেমন কোনো পার্শ্ব প্রতিক্রিয়া নেই বলেই জানা যায়। তবে নিয়িমিত অনেকদিন ধরে ব্যবহার করলে হয়তো শ্বাসপ্রশ্বাস সংক্রান্ত সমস্যা, ঝিমিয়ে পড়া, ব্লাড প্রেসার কমতে পারে ও অস্বাভাবিক হৃৎস্পন্দনের সমস্যা দেখা দিতে পারে। গর্ভবতী মহিলারা এটি ব্যবহারের ক্ষেত্রে সতর্ক থাকবেন। ডাক্তারের সঙ্গে অবশ্যই পরামর্শ করে নেবেন এটি ব্যবহার করা শুরু করার আগে ।</p>\r\n\r\n<p>&nbsp;</p>', 'অশ্বগন্ধা বা উইন্টারচেরী ( Winter cherry) কে বলা হয় আয়ুর্বেদ শাস্ত্রের নয়নমণি যার উপকারিতা হাতে গুণে শেষ করা যাবে না। প্রায় ৩০০০ বছর ধরে অশ্বগন্ধা একটি গুরুত্বপূর্ণ ঔষধি ভেষজ হিসেবে ব্যবহৃত হয়ে আসছে। অসাধারণ কার্যকারিতার জন্য অশ্বগন্ধাকে ইন্ডিয়ান জিনসেং হিসেবেও অভিহিত করা হয়। নিয়মিত খেলে অশ্ব বা ঘোড়ার মতো শক্তি বৃদ্ধি হয়।', 'ashwagandha-powder-200g-min-1709987234.png', 'ashwagandha-powder-100g-min-1709987234.png', '155', NULL, NULL, NULL, NULL, 1, NULL, '2024-03-09 12:27:14', '2024-03-09 12:30:17'),
(196, 'বীর্যমনি গুঁড়া', 'beerzmni-gunnra', 'SF-BMP', 290.00, 560.00, '<p>বীর্যমনি গুঁড়া দ্রুত বীর্যপাত রোধ করে। লিঙ্গ শৈথিল্য ও ধাতু দৌর্বল্য দূর করে। শারীরিক দুর্বলতা দূর করে এবং শুক্রাণু বৃদ্ধিতে সাহায্য করে।</p>\r\n\r\n<p><strong>বীর্যমনি গুঁড়ার উপকারিতাঃ-</strong><br />\r\n&bull; বীর্যমনি গুঁড়া দ্রুত বীর্যপাত বন্ধের সাহায্য করে থাকে।<br />\r\n&bull; বীর্য যদি পাতলা হয়ে থাকে তাহলে বীর্যমনি গুড়া সেবনের মাধ্যমে পাতলা বীর্য গাঢ় করতে সহায়তা করে।<br />\r\n&bull; পুরুষের শারীরিক দুর্বলতা থাকে বীর্যমনি খাওয়ার ফলে শারীরিক দুর্বলতা এবং মানসিক যৌন দুর্বলতা দূর হয়।<br />\r\n&bull; বীর্যমনি ফল বা বীর্যমনি খুবই উপকারী একটি ফল এটি সেবনের মাধ্যমে পুরুষের বীর্যের মান উন্নয়ন ঘটে।<br />\r\n&bull; বীর্যমনি পুরুষের বীর্য ঘন করে বলে একে বীর্যমনি নামে ডাকা হয় এটা নিয়ম মাফিক খেলে গ্যাস্ট্রিক, ধাতু দুর্বলতা, যৌন দুর্বলতা সহ বিভিন্ন রোগের কাজ করে থাকে।</p>\r\n\r\n<p><strong>ব্যবহারবিধি:</strong> বীর্যমনি গুঁড়া খুবই উপকারী একটি ফল এটি সেবনের মাধ্যমে পুরুষের বীর&zwj;্যের মান উন্নয়ন ঘটে। &nbsp;বীর্যমূল গুঁড়া দৈনিক ২ চা চামচ করে সকাল বিকাল ভরা পেটে কুসুম গরম পানি অথবা কুসুম গরম দুধের সাথে মধু দিয়ে খেলে ভালো উপকার পাওয়া যায়।<br />\r\n&nbsp;</p>', 'বীর্যমনি গুঁড়া দ্রুত বীর্যপাত রোধ করে। লিঙ্গ শৈথিল্য ও ধাতু দৌর্বল্য দূর করে। শারীরিক দুর্বলতা দূর করে এবং শুক্রাণু বৃদ্ধিতে সাহায্য করে।', 'birjomoni-powder-200g-min-1709988217.png', 'birjomoni-powder-100g-min-1709988217.png', '155', NULL, NULL, NULL, NULL, 1, NULL, '2024-03-09 12:43:37', '2024-03-09 12:43:37');
INSERT INTO `products` (`id`, `title`, `slug`, `sku`, `regular_price`, `sale_price`, `description`, `short_desc`, `featured_img`, `gallery_img`, `category_id`, `special_cat_id`, `related_product_id`, `brand_id`, `flash_title`, `status`, `delivery_note`, `created_at`, `updated_at`) VALUES
(197, 'বিটরুট গুঁড়া', 'bitrut-gunnra', 'SF-BTP', 800.00, 800.00, '<p>বিটরুট (বিটা ভালগারিস) একটি মূল উদ্ভিজ্জ যা লাল বীট, টেবিল বিট, বাগানের বীট বা শুধু বিট নামেও পরিচিত। প্রয়োজনীয় পুষ্টিগুণে ভরপুর, বিটরুট হল প্রোটিন, ফাইবার, ভিটামিন সি, ভিটামিন বি৬, ফোলেট, ম্যাগনেসিয়াম, পটাসিয়াম, ম্যাঙ্গানিজ, আয়রন এর একটি বড় উৎস। বিটরুট পুষ্টি, ফাইবার এবং অনেক উদ্ভিদ যৌগের একটি ভাল উৎস। বীটরুট এবং বিটরুটের রস অনেক স্বাস্থ্য উপকারিতাগুলির মধ্যে রয়েছে উন্নত হৃদরোগ, উন্নত রক্ত প্রবাহ, রক্তচাপ কমানোর ক্ষমতা এবং ব্যায়ামের ক্ষমতা বাড়ানো।</p>\r\n\r\n<p>গবেষণায় করে দেখা গেছে যারা বেশি করে বিট খায় বা বিটের রস পান করে তাদের উচ্চ রক্তচাপের সমস্যা কম। উচ্চ রক্তচাপের ক্ষেত্রে নাইট্রেট নামক উপাদান থাকা এই বিট ওষুধের থেকেও ভালো কাজ করে। &nbsp;এটি শরীরের রক্ত সঞ্চালন স্বাভাবিক রেখে আমাদের স্ট্রোকের হাত থেকে বাঁচাতে সহায়তা করতে পারে।<br />\r\n&nbsp;<br />\r\nএই সুবিধাগুলির অনেকগুলি অজৈব নাইট্রেটের উচ্চ সামগ্রীর কারণে। বিটরুটগুলি বেশ সুস্বাদু, &nbsp;এটা কাঁচা খাওয়া ও সালাদ করে খাওয়া হয় , তবে সুস্বাদু রান্নায় ও আচারও করা হয়। বিটরুটের অসংখ্য প্রকার রয়েছে, যার মধ্যে অনেকগুলি তাদের রঙ দ্বারা আলাদা করা হয় - হলুদ, সাদা, গোলাপী বা গাঢ় বেগুনি।<br />\r\n&nbsp;<br />\r\nবিটরুটের উপকারিতা:<br />\r\n&bull; স্ট্রোকের ঝুঁকি কমিয়ে দেয়।<br />\r\n&bull; মস্তিষ্কের কর্মক্ষমতা বাড়ায়।<br />\r\n&bull; ক্যান্সার ও হৃদরোগ প্রতিরোধ করে।<br />\r\n&bull; হার্ট সুস্থ রাখে।<br />\r\n&bull; ডায়াবেটিস নিয়ন্ত্রনে রখে।<br />\r\n&bull; লিভার ও কিডনি সুস্থ রাখে।<br />\r\n&bull; গ্যাস্ট্রিক থেকে সারা জীবনের জন্য মুক্তি পাবেন।<br />\r\n&bull; উচ্চ রক্ত চাপ নিয়ন্ত্রণ থাকে।<br />\r\n&bull; রক্তশূন্যতা দূর করে, এবং রক্তের হিমোগ্লোবিন বৃদ্ধি করতে সহায়তা করে।<br />\r\n&bull; রক্তে শর্করার মাত্রা নিয়ন্ত্রণ করে।<br />\r\n&bull; যৌবন ধরে রাখে।<br />\r\n&bull; জ্বালা পোড়া বা প্রদাহ কমায়।<br />\r\n&bull; হজম শক্তি বাড়ায়।<br />\r\n&bull; কোষ্ঠকাঠিন্য দূর করে।<br />\r\n&bull; শারীরিক শক্তি বৃদ্ধি করে।<br />\r\n&bull; লিভারের কার্য ক্ষমতা বৃদ্ধি করে।<br />\r\n&bull; সঠিক ওজন বজায় রাখতে সহায়তা করে।<br />\r\n&bull; ব্যায়ামের স্ট্যামিনা উন্নত করে।<br />\r\n&bull; বদ হজম, ডায়রিয়া, গ্যাস্টিক সহ অন্যান্য পেটের সমস্যায় অত্যন্ত উপকারী।<br />\r\n&bull; দেহে ক্যালসিয়ামের সমস্যা দূরীকরণে অত্যন্ত কার্যকরী।<br />\r\n&bull; মানসিক সমস্যা দূর করে।</p>', 'বিটরুট (বিটা ভালগারিস) একটি মূল উদ্ভিজ্জ যা লাল বীট, টেবিল বিট, বাগানের বীট বা শুধু বিট নামেও পরিচিত। প্রয়োজনীয় পুষ্টিগুণে ভরপুর, বিটরুট হল প্রোটিন, ফাইবার, ভিটামিন সি, ভিটামিন বি৬, ফোলেট, ম্যাগনেসিয়াম, পটাসিয়াম, ম্যাঙ্গানিজ, আয়রন এর একটি বড় উৎস। বীটরুট এবং বিটরুটের রস অনেক স্বাস্থ্য উপকারিতাগুলির মধ্যে রয়েছে উন্নত হৃদরোগ, উন্নত রক্ত প্রবাহ, রক্তচাপ কমানোর ক্ষমতা এবং ব্যায়ামের ক্ষমতা বাড়ানো।', 'bit-root-200g-min-1709989479.png', NULL, '155', NULL, NULL, NULL, NULL, 1, NULL, '2024-03-09 13:04:39', '2024-03-09 13:04:39'),
(198, 'চিয়া সিড/Chia Seeds', 'ciza-sidchia-seeds', 'SF-CS', 320.00, 600.00, '<p>চিয়া সিড (Chia seed) বা চিয়া বীজ মরুভূমিতে জন্মানো সালভিয়া হিসপানিকা (Salvia Hispanica) উদ্ভিদের বীজ। এই অতি উপকারি বীজটির আদি জন্মস্থান সেন্ট্রাল আমেরিকা এবং সেখানকার প্রাচীন আদিবাসি অ্যাজটেক জাতির খাদ্য তালিকায় এই বীজ অন্তর্ভুক্ত থাকার প্রমাণ পাওয়া যায়। প্রাচীন মায়া এবং অ্যাজটেক জাতির মানুষ চিয়া সিডকে সোনার থেকেও মূল্যবান মনে করত। তারা বিশ্বাস করত এটা তাদের শক্তি ও সাহস জোগাবে।<br />\r\nচিয়া বীজ সাদা ও কালো রং এর এবং তিলের মত ছোট সাইজের হয়। চিয়া একটি সুপার সীড যাতে আছে প্রচুর পরিমানে ওমেগা-৩ ফ্যাটি এসিড; কোয়েরসেটিন (Quercetin) কেম্পফেরল (Kaempferol), ক্লোরোজেনিক এসিড (Chlorogenic acid) এবং ক্যাফিক এসিড (Caffeic acid) নামক এন্টিঅক্সিডেন্ট; পটাশিয়াম, ম্যাগনেশিয়াম, ম্যাংগানিজ, ফসফরাস, প্রোটিন, ফ্যাট, কার্বো হাইড্রেট। এবং দ্রবণীয় ও অদ্রবণীয় খাদ্যআঁশ (ফাইবার) ।<br />\r\nপৃথিবীর পুষ্টিকর খাবারগুলোর মধ্যে চিয়া সিড অন্যতম। অ্যাজটেক জাতির মানুষেরা মনে করতো এইত তাদের সক্তি ও সাহস জোগাবে। তারা একে সোনার চেয়েও মুল্যবান মনে করতো।</p>\r\n\r\n<p><strong>চিয়া সিড (Chia seed) এর পুষ্টিগুণ:</strong><br />\r\n&bull; এটা শক্তি এবং কর্মক্ষমতা বৃদ্ধি করে<br />\r\n&bull; চিয়া সীড রোগ প্রতিরোধ ক্ষমতাকে আরও শক্তিশালী করে<br />\r\n&bull; চিয়া বীজ ওজন কমাতে সহায়তা করে<br />\r\n&bull; চিয়া সিড ব্লাড সুগার (রক্তের চিনি) স্বাভাবিক রাখে, ফলে ডায়াবেটিস হওয়ার ঝুঁকি কমায়<br />\r\n&bull; চিয়া বীজ হাড়ের স্বাস্থ্য রক্ষায় বিশেষ উপকারি<br />\r\n&bull; চিয়া সিড মলাশয় (colon) পরিষ্কার রাখে ফলে কোলন ক্যান্সারের ঝুঁকি কমায়<br />\r\n&bull; চিয়া সিড শরীর থেকে টক্সিন (বিষাক্ত পদার্থ) বের করে দেয়<br />\r\n&bull; চিয়া সীড প্রদাহজনিত সমস্যা দূর করে<br />\r\n&bull; চিয়া সীড ভাল ঘুম হতে সাহায্য করে<br />\r\n&bull; চিয়া বীজ ক্যান্সার রোধ করে<br />\r\n&bull; চিয়া সীড এটেনশান ডেফিসিট হাইপার এক্টিভিটি ডিসর্ডার (Attention deficit hyperactivity disorder ADHD) দূর করে</p>', 'চিয়া একটি সুপার সীড যাতে আছে প্রচুর পরিমানে ওমেগা-৩ ফ্যাটি এসিড; কোয়েরসেটিন (Quercetin) কেম্পফেরল (Kaempferol), ক্লোরোজেনিক এসিড (Chlorogenic acid) এবং ক্যাফিক এসিড (Caffeic acid) নামক এন্টিঅক্সিডেন্ট; পটাশিয়াম, ম্যাগনেশিয়াম, ম্যাংগানিজ, ফসফরাস, প্রোটিন, ফ্যাট, কার্বো হাইড্রেট। এবং দ্রবণীয় ও অদ্রবণীয় খাদ্যআঁশ (ফাইবার)।', 'chia-seeds-500g-min-1710010359.png', 'chia-seeds-250g-min-1710010359.png', '155', NULL, NULL, NULL, NULL, 1, NULL, '2024-03-09 18:52:39', '2024-03-09 18:52:39'),
(199, 'ইসবগুলের ভুসি / Psyllium Husk', 'isbguler-vusi-psyllium-husk', 'SF-IGV', 320.00, 600.00, '<p>ইসবগুলের ভুসি সকলের কাছেই বেশ পরিচিত। বিশেষ করে কোষ্ঠ্যকাঠিন্যে যারা ভূগছেন তাদের জন্য যেনো আশির্বাদ স্বরূপ। এই উপাদানটি মূলত একটি গুল্ম জাতীয় গাছের বীজ থেকে প্রস্তুতকৃত। এর আদি আবাস ভূমধ্যসাগরীয় দেশগুলোতে হলেও ক্রমে এর বিস্তৃতি ঘটেছে স্পেন, উত্তর আফ্রিকা, চীন, পাকিস্তানের কিছু অঞ্চল, ভারত এবং বাংলাদেশে। পেটের নানাবিধ সমস্যায় চমৎকার কাজ করে বলে এটি বেশ সমাদৃত। মূলত বীজের খোসাকেই আমরা ইসবগুলের ভুসি বলে চিনে থাকি।</p>\r\n\r\n<p><strong>ইসবগুলের ভুসির উপকারিতা:</strong><br />\r\n১। কোষ্ঠকাঠিন্য সমস্যার সমাধানে দারুণ উপযোগী।<br />\r\n২। পরিপাকতন্ত্র সম্পর্কিত অন্যান্য সমস্যা যেমন পাইলস, আইবিএস, পেটে ব্যথা ইত্যাদি সমস্যা সমাধানে বেশ কার্যকরী।<br />\r\n৩। ডায়রিয়াতেও ভালো কাজ করে।<br />\r\n৪। ওজন কমাতে ভূমিকা রাখে।<br />\r\n৫। রক্তে কোলেস্টেরল নিয়ন্ত্রণে ভূমিকা রাখে।<br />\r\n৬। ডায়াবেটিস রোগীদের জন্যেও উপকারী।<br />\r\n৭। অ্যাসিডিটি সমস্যা সমাধান এবং হজমক্রিয়া উন্নতিতে সহায়ক।</p>\r\n\r\n<p><strong>ইসবগুলের ভুসি খাওয়ার নিয়ম:</strong><br />\r\n১) কোষ্ঠকাঠিন্য দূরীকরণেঃ ১ গ্লাস কুসুম গরম দুধের সাথে ২ চামচ ইসবগুল মিশিয়ে প্রতিদিন ঘুমাতে যাওয়ার আগে পান করুন।<br />\r\n২) ডায়রিয়া প্রতিরোধেঃ ২ চামচ ইসবগুলের সাথে ৩ চামচ টাটকা দই মিশিয়ে দিনে ২ বার পান করুন।<br />\r\n৩) অ্যাসিডিটি প্রতিরোধেঃ প্রতিবার খাবার পর ২ চামচ ইসবগুল আধা গ্লাস ঠান্ডা দুধে মিশিয়ে পান করতে হবে। এটি পাকস্থলীর অত্যাধিক অ্যাসিড উৎপাদন কমাতে সহায়তা করে।<br />\r\n৪) ওজন কমাতেঃ কুসুম গরম পানিতে ২ চামচ ইসবগুলের ভুষি ও সামান্য লেবুর রস মশিয়ে নিয়ে ভাত খাবার ঠিক আগে খেতে হবে।<br />\r\nএছাড়াও ১ গ্লাস পানিতে ১ চা চামচ &nbsp;ভুসি ৩ থেকে ৪ ঘন্টা ভিজিয়ে রেখে গ্রহণ করলেও উপকার পাওয়া যায়। অনেকে রাতে ভিজিয়ে সকালে গ্রহণ করে থাকেন, এভাবেও কাজ করে এই উপাদানটি।</p>', 'ইসবগুলের ভুসি সকলের কাছেই বেশ পরিচিত। বিশেষ করে কোষ্ঠ্যকাঠিন্যে যারা ভূগছেন তাদের জন্য যেনো আশির্বাদ স্বরূপ। এই উপাদানটি মূলত একটি গুল্ম জাতীয় গাছের বীজ থেকে প্রস্তুতকৃত। পেটের নানাবিধ সমস্যায় চমৎকার কাজ করে বলে এটি বেশ সমাদৃত। মূলত বীজের খোসাকেই আমরা ইসবগুলের ভুসি বলে চিনে থাকি।', 'ishubguler-vushi-200g-min-1710010711.png', 'ishubguler-vushi-100g-min-1710010711.png', '155', NULL, NULL, NULL, NULL, 1, NULL, '2024-03-09 18:58:31', '2024-03-09 18:58:31'),
(200, 'তোকমা দানা', 'tokma-dana', 'SF-TD-250g', 110.00, 110.00, '<p>তোকমা (Tokma) দানা মূলত ছোট কালো রঙের একটি বীজ, যা বিভিন্ন মিষ্টি পানীয় কিংবা শরবত তৈরিতে ব্যবহৃত হয়। আয়ুর্বেদিক চিকিৎসায়ও তোকমা বীজ অন্যতম একটি উপাদান। এটি স্থানভেদে সবজা বীজ, মিষ্টি বেসিল, ফালুদা বীজ কিংবা তুর্কমারিয়া বীজ হিসেবে পরিচিত। বহু গুণে গুণান্বিত এই ছোট ছোট বীজটি। আমাদের দেশে তোকমা খুবই পরিচিত ও জনপ্রিয় একটি বীজ দানা। আয়ুর্বেদ, ইউনানি ও চীনা মেডিসিনে এর বহুল ব্যবহার রয়েছে। এতে রয়েছে প্রচুর পরিমাণে আঁশ, প্রোটিন, আয়রন ও ক্যালরি।</p>\r\n\r\n<p><strong>তোকমা দানার পুষ্টিগুণ:</strong><br />\r\n১। কোষ্ঠকাঠিন্য সমস্যা দূর করতে খুবই কার্যকর। এটি হজমের সমস্যাও দূর করতে সহায়তা করে।<br />\r\n২। অনেকেই শরীরের ওজন কমাতে চায়। সেজন্য তোকমা অনেক সহায়ক খাদ্য হিসেবে উপকার করে থাকে। এতে কেবল আঁশই থাকে না। বরং শরীরে অনেক শক্তিও সরবরাহ করে।<br />\r\n৩। &nbsp;তোকমা গরমকালে দেহের তাপমাত্রা কমাতে সহায়তা করে। আর এ কারণে গরম আবহাওয়ার দেশগুলোতে বহু মানুষ তোকমার শরবত পান করে।<br />\r\n৪। এটি রক্তের শর্করা নিয়ন্ত্রণ করতে কার্যকর। মূলত দেহের বিপাকক্রিয়ার গতি ধীর করে দেয় তোকমা।<br />\r\n৫। তোকমা এসিডিটি দূর করতেও কার্যকর। এটি পেটের এসিড নিয়ন্ত্রণ করে জ্বালাপোড়া দূর করে।<br />\r\n৬। এটি নানা চর্মরোগ নিরাময়ে কাজ করে। এটি একজিমা ও সোরিয়াসিস নিরাময়ে কার্যকর। সুস্থ চুলের জন্য এটি নিয়মিত খাওয়া যেতে পারে।<br />\r\n৭। সর্দি-কাশি থেকে দূরে থাকতে চাইলে তাই নিয়মিত তোকমা খাওয়া যেতে পারে।<br />\r\n&nbsp;</p>', 'তোকমা (Tokma) দানা মূলত ছোট কালো রঙের একটি বীজ, যা বিভিন্ন মিষ্টি পানীয় কিংবা শরবত তৈরিতে ব্যবহৃত হয়। আয়ুর্বেদিক চিকিৎসায়ও তোকমা বীজ অন্যতম একটি উপাদান। এটি স্থানভেদে সবজা বীজ, মিষ্টি বেসিল, ফালুদা বীজ কিংবা তুর্কমারিয়া বীজ হিসেবে পরিচিত। বহু গুণে গুণান্বিত এই ছোট ছোট বীজটি। আমাদের দেশে তোকমা খুবই পরিচিত ও জনপ্রিয় একটি বীজ দানা। আয়ুর্বেদ, ইউনানি ও চীনা মেডিসিনে এর বহুল ব্যবহার রয়েছে। এতে রয়েছে প্রচুর পরিমাণে আঁশ, প্রোটিন, আয়রন ও ক্যালরি।', 'tokma-dana-250g-min-1710011151.png', NULL, '155', NULL, NULL, NULL, NULL, 1, NULL, '2024-03-09 19:05:51', '2024-03-09 19:05:51'),
(201, 'যষ্টিমধু গুঁড়া  /Licorice Powder', 'zshtimdhu-gunnra-licorice-powder', 'SF-JMP', 100.00, 200.00, '<p>Licorice is basically the root of the tree. In Ayurvedic medicine, licorice is given in almost every medicine made in the world.</p>\r\n\r\n<p><strong>Joshti Modhu Benefits:</strong><br />\r\n1. Respiratory &amp; Digestive Disorders<br />\r\n2. Reduces Stress &amp; Depression<br />\r\n3. Controls Cholesterol<br />\r\n4. Boosts Immunity<br />\r\n5. Keeps your Liver Healthy<br />\r\n6. Treats Skin Disorders<br />\r\n7. Weight Management<br />\r\n8. Treats Sore Throat &amp; Cough<br />\r\n9. Prevents Skin from Sun Damage<br />\r\n10. Helps in Relieving Cough<br />\r\n11. Prevent Hair Fall<br />\r\n12. Regulates Blood Sugar Level<br />\r\n13. Aids in HCL levels&nbsp;<br />\r\n14. Manages the Weight of the Person<br />\r\n15. Make the Skin Acne Free<br />\r\n&nbsp;</p>', 'Licorice is basically the root of the tree. In Ayurvedic medicine, licorice is given in almost every medicine made in the world.', 'joshti-modhu-powder-200g-min-1710012631.png', 'joshti-modhu-powder-100g-min-1710012631.png', '155', NULL, NULL, NULL, NULL, 1, NULL, '2024-03-09 19:30:31', '2024-03-09 19:30:31'),
(202, 'যষ্টিমধু  /Licorice', 'zshtimdhu-licorice', 'SF-JMW-100g', 110.00, 110.00, '<p>Licorice is basically the root of the tree. In Ayurvedic medicine, licorice is given in almost every medicine made in the world.</p>\r\n\r\n<p><strong>Licorice Powder benefits:</strong><br />\r\n1. Respiratory &amp; Digestive Disorders<br />\r\n2. Reduces Stress &amp; Depression<br />\r\n3. Controls Cholesterol<br />\r\n4. Boosts Immunity<br />\r\n5. Keeps your Liver Healthy<br />\r\n6. Treats Skin Disorders<br />\r\n7. Weight Management<br />\r\n8. Treats Sore Throat &amp; Cough<br />\r\n9. Prevents Skin from Sun Damage<br />\r\n10. Helps in Relieving Cough<br />\r\n11. Prevent Hair Fall<br />\r\n12. Regulates Blood Sugar Level<br />\r\n13. Aids in HCL levels&nbsp;<br />\r\n14. Manages the Weight of the Person<br />\r\n15. Make the Skin Acne Free</p>', 'Licorice is basically the root of the tree. In Ayurvedic medicine, licorice is given in almost every medicine made in the world.', 'joshti-modhu-whole-100g-min-1710012811.png', NULL, '155', NULL, NULL, NULL, NULL, 1, NULL, '2024-03-09 19:33:31', '2024-03-09 19:33:31'),
(203, 'কালিজিরা / Black Seed', 'kalijira-black-seed', 'SF-KJ', 80.00, 160.00, '<p>Black Seeds is flavorful, boasts medicinal properties, and can even be consumed while pregnant. Supplements may benefit your health. Interested in going for a Natural Alternative Medicine to diseases except death then black seed.</p>\r\n\r\n<p><strong>Health Benefits of Black Seeds:</strong><br />\r\n1. Packed With Antioxidants<br />\r\n2. Boosts memory &nbsp;<br />\r\n3. Helps control Diabetes<br />\r\n4. Healthy heart &nbsp;<br />\r\n5. Reduces inflammation<br />\r\n6. Controls blood pressure<br />\r\n7. Makes teeth stronger<br />\r\n8. Relieves asthma<br />\r\n10. Support weight loss<br />\r\n11. For skin and hair problems<br />\r\n12. Protects the kidney<br />\r\n13. Anti-cancerous properties<br />\r\n14. Reduce headaches<br />\r\n15. Packed With Antioxidants<br />\r\n16. May Lower Cholesterol<br />\r\n&nbsp;</p>', 'Black Seeds is flavorful, boasts medicinal properties, and can even be consumed while pregnant. Supplements may benefit your health. Interested in going for a Natural Alternative Medicine to diseases except death then black seed.', 'kalojira-whole-200g-min-1710013819.png', 'kalojira-whole-100g-min-1710013819.png', '155', NULL, NULL, NULL, NULL, 1, NULL, '2024-03-09 19:50:19', '2024-03-09 19:50:19'),
(204, 'কাতিলা গাম গুঁড়া', 'katila-gam-gunnra', 'SF-KGP-200g', 250.00, 250.00, '<p>কাতিলা গাম একটি উদ্ভিদ, গন্ধহীন, স্বাদহীন, এবং পলি-স্যাকারাইডের পানির দ্রবণীয় মিশ্রণ যা উদ্ভিদের শিকড় থেকে শুকিয়ে সংগ্রহ করা হয়।দেখতে তাল মিশ্রির মত মনে হলেও তার গুণের কোনো শেষ নেই। বিশেষ করে যারা শারীরিক সমস্যা ও যৌন দুর্বলতা কাটিয়ে ওঠাতে কার্যকরি একটি হারবাল ভেষজ। কাতিলা গম পুরুষের যৌন শক্তি বাড়াতে সবচেয়ে বেশি সাহায্য করে।</p>\r\n\r\n<p>এতে উচ্চ পুষ্টিগুণ ও মান রয়েছে। এই কারণেই এটি গর্ভাবস্থায় ব্যবহার করা যেতে পারে। কারণ, কোনও প্রসূতি মা এবং তার শিশুর স্বাস্থ্যের জন্য আরও ভাল পুষ্টি প্রয়োজন যা কাতিলা গাম পূরণ করতে সক্ষম। কিছু লোকের মধ্যে একটি সাধারণ সমস্যা হলো হাত পা জ্বালাপোড়া করা। এটা হাত ও পায়ে জ্বলন্ত সংবেদনকে উন্নত করে অর্থাৎ হাত- পায়ের জ্বালাপোড়া কমিয়ে দেয় কালিতার গাম হলো ফাইবার সমৃদ্ধ এবং দেহের বিপাক বাড়ানোর বৈশিষ্ট্যযুক্ত একটিউপাদেয়। উচ্চ ফাইবারের কারণে তৃপ্তি এবং ক্ষুধা যন্ত্রণা কম অনুভূত হয়ে থাকে। এটা সহজে কোন মানুষ বুঝতে পারে না। বর্ধিত বিপাকীয় হার স্বয়ংক্রিয়ভাবে দেহের শক্তির প্রয়োজনীয়তা বাড়িয়ে তুলবে যার ফলে চর্বিতে রূপান্তরিত করতে কম সংখ্যক ক্যালোরি প্রয়োজন হবে। সুতরাং, যদি আপনি শরীরের অতিরিক্ত ওজন কমাতে চান কিংবা ওজন রক্ষণাবেক্ষণের ডায়েটে থাকেন তবে এটা আপনাকে অনেকাংশে সহায়তা করবে। আপনার যদি কম কামশক্তি (যৌন শক্তি) থাকে কিংবা বীর্য পাতলা তবে কালিতার গামের নিয়মিত ব্যবহার আপনাকে প্রচুর পরিমাণে সাহায্য করতে পারে। পুরুষের বীর্য গাঢ় করতেও সাহায্য করে কাতিলা গাম।<br />\r\n&nbsp;</p>', 'কাতিলা গাম একটি উদ্ভিদ, গন্ধহীন, স্বাদহীন, এবং পলি-স্যাকারাইডের পানির দ্রবণীয় মিশ্রণ যা উদ্ভিদের শিকড় থেকে শুকিয়ে সংগ্রহ করা হয়।দেখতে তাল মিশ্রির মত মনে হলেও তার গুণের কোনো শেষ নেই। বিশেষ করে যারা শারীরিক সমস্যা ও যৌন দুর্বলতা কাটিয়ে ওঠাতে কার্যকরি একটি হারবাল ভেষজ। কাতিলা গম পুরুষের যৌন শক্তি বাড়াতে সবচেয়ে বেশি সাহায্য করে।', 'katila-gum-powder-200g-min-1710044321.png', NULL, '155', NULL, NULL, NULL, NULL, 1, NULL, '2024-03-10 04:18:41', '2024-03-10 04:21:22'),
(206, 'কাতিলা গাম', 'katila-gam', 'SF-KGW-200g', 220.00, 220.00, '<p>কাতিলা গাম একটি উদ্ভিদ, গন্ধহীন, স্বাদহীন, এবং পলি-স্যাকারাইডের পানির দ্রবণীয় মিশ্রণ যা উদ্ভিদের শিকড় থেকে শুকিয়ে সংগ্রহ করা হয়।দেখতে তাল মিশ্রির মত মনে হলেও তার গুণের কোনো শেষ নেই। বিশেষ করে যারা শারীরিক সমস্যা ও যৌন দুর্বলতা কাটিয়ে ওঠাতে কার্যকরি একটি হারবাল ভেষজ। কাতিলা গম পুরুষের যৌন শক্তি বাড়াতে সবচেয়ে বেশি সাহায্য করে।</p>\r\n\r\n<p>এতে উচ্চ পুষ্টিগুণ ও মান রয়েছে। এই কারণেই এটি গর্ভাবস্থায় ব্যবহার করা যেতে পারে। কারণ, কোনও প্রসূতি মা এবং তার শিশুর স্বাস্থ্যের জন্য আরও ভাল পুষ্টি প্রয়োজন যা কাতিলা গাম পূরণ করতে সক্ষম। কিছু লোকের মধ্যে একটি সাধারণ সমস্যা হলো হাত পা জ্বালাপোড়া করা। এটা হাত ও পায়ে জ্বলন্ত সংবেদনকে উন্নত করে অর্থাৎ হাত- পায়ের জ্বালাপোড়া কমিয়ে দেয় কালিতার গাম হলো ফাইবার সমৃদ্ধ এবং দেহের বিপাক বাড়ানোর বৈশিষ্ট্যযুক্ত একটিউপাদেয়। উচ্চ ফাইবারের কারণে তৃপ্তি এবং ক্ষুধা যন্ত্রণা কম অনুভূত হয়ে থাকে। এটা সহজে কোন মানুষ বুঝতে পারে না। বর্ধিত বিপাকীয় হার স্বয়ংক্রিয়ভাবে দেহের শক্তির প্রয়োজনীয়তা বাড়িয়ে তুলবে যার ফলে চর্বিতে রূপান্তরিত করতে কম সংখ্যক ক্যালোরি প্রয়োজন হবে। সুতরাং, যদি আপনি শরীরের অতিরিক্ত ওজন কমাতে চান কিংবা ওজন রক্ষণাবেক্ষণের ডায়েটে থাকেন তবে এটা আপনাকে অনেকাংশে সহায়তা করবে। আপনার যদি কম কামশক্তি (যৌন শক্তি) থাকে কিংবা বীর্য পাতলা তবে কালিতার গামের নিয়মিত ব্যবহার আপনাকে প্রচুর পরিমাণে সাহায্য করতে পারে। পুরুষের বীর্য গাঢ় করতেও সাহায্য করে কাতিলা গাম।<br />\r\n&nbsp;</p>', 'কাতিলা গাম একটি উদ্ভিদ, গন্ধহীন, স্বাদহীন, এবং পলি-স্যাকারাইডের পানির দ্রবণীয় মিশ্রণ যা উদ্ভিদের শিকড় থেকে শুকিয়ে সংগ্রহ করা হয়।দেখতে তাল মিশ্রির মত মনে হলেও তার গুণের কোনো শেষ নেই। বিশেষ করে যারা শারীরিক সমস্যা ও যৌন দুর্বলতা কাটিয়ে ওঠাতে কার্যকরি একটি হারবাল ভেষজ। কাতিলা গম পুরুষের যৌন শক্তি বাড়াতে সবচেয়ে বেশি সাহায্য করে।', 'katila-gum-whole-200g-min-1710044462.png', NULL, '155', NULL, NULL, NULL, NULL, 1, NULL, '2024-03-10 04:21:02', '2024-03-10 04:21:39'),
(207, 'মেথি / Fenugreek Seeds', 'methi-fenugreek-seeds', 'SF-MS', 115.00, 170.00, '<p>মেথি (Fenugreek) আমাদের দৈনন্দিন রান্নায় এক বহুল ব্যবহৃত উপাদান। এর পাশাপাশি মেথির রয়েছে চমৎকার ভেষজ গুণাগুণ। এতে রয়েছে প্রোটিন, ফাইবার, ভিটামিন সি, পটাশিয়াম, ক্যালসিয়াম, ম্যাগিনেশিয়াম, জিংক, আয়রন, কপার, নায়াসিন এর মতন গুরুত্বপূর্ণ পুষ্টি উপাদান। মেথির ভেষজ গুণাবলি স্বাস্থ্য সুরক্ষিত রাখতে গুরুত্বপূর্ণ ভূমিকা পালন করে।</p>\r\n\r\n<p><strong>মেথি গুঁড়ার উপকারিতা:</strong><br />\r\n১। রক্তে শর্করার মাত্রা হ্রাস করতে গুরুত্বপূর্ণ ভূমিকা পালন করে।<br />\r\n২। সকালে খালি পেটে গোটা মেথি বা মেথি ভেজানো পানি পান করলে রক্তে ক্ষতিকর কোলেস্টেরলের পরিমাণ হ্রাস পায়।<br />\r\n৩। খাবারে মেথির উপস্থিতি ডায়াবেটিস ও স্ট্রোকের ঝুঁকি অনেকাংশে হ্রাস করে।<br />\r\n৪। গ্যস্ট্রিক ও বদহজমের কার্যকরী মহৌষধ হিসেবে দারুণ ভূমিকা রাখে।<br />\r\n৫। মাতৃদুগ্ধ বৃদ্ধির জন্য মেথি বেশ কার্যকরী।<br />\r\n৬। মেথি ভেজানো নারিকেল তেল চুলে ব্যবহার করলে চুলের গোড়া মজবুত হয়।<br />\r\n৭। টক দইয়ের সাথে মেথি গুঁড়া মিশিয়ে ব্যবহার করলে চুল হয় কোমল ও ঝলমলে।<br />\r\n৮। এটি দিয়ে তৈরি ফেইস প্যাক ব্রণ, ডার্ক সার্কেল এর মতন ত্বকের সমস্যা সমাধানে বেশ কার্যকরী ভূমিকা রাখে।<br />\r\n&nbsp;</p>', 'মেথি (Fenugreek) আমাদের দৈনন্দিন রান্নায় এক বহুল ব্যবহৃত উপাদান। এর পাশাপাশি মেথির রয়েছে চমৎকার ভেষজ গুণাগুণ। এতে রয়েছে প্রোটিন, ফাইবার, ভিটামিন সি, পটাশিয়াম, ক্যালসিয়াম, ম্যাগিনেশিয়াম, জিংক, আয়রন, কপার, নায়াসিন এর মতন গুরুত্বপূর্ণ পুষ্টি উপাদান। মেথির ভেষজ গুণাবলি স্বাস্থ্য সুরক্ষিত রাখতে গুরুত্বপূর্ণ ভূমিকা পালন করে।', 'methi-whole-370g-min-1710044838.png', 'methi-whole-200g-min-1710044838.png', '155', NULL, NULL, NULL, NULL, 1, NULL, '2024-03-10 04:27:18', '2024-03-10 04:27:18'),
(208, 'মেথি গুঁড়া / Fenugreek Powder', 'methi-gunnra-fenugreek-powder', 'SF-MSP', 115.00, 190.00, '<p>মেথি (Fenugreek) আমাদের দৈনন্দিন রান্নায় এক বহুল ব্যবহৃত উপাদান। এর পাশাপাশি মেথির রয়েছে চমৎকার ভেষজ গুণাগুণ। এতে রয়েছে প্রোটিন, ফাইবার, ভিটামিন সি, পটাশিয়াম, ক্যালসিয়াম, ম্যাগিনেশিয়াম, জিংক, আয়রন, কপার, নায়াসিন এর মতন গুরুত্বপূর্ণ পুষ্টি উপাদান। মেথির ভেষজ গুণাবলি স্বাস্থ্য সুরক্ষিত রাখতে গুরুত্বপূর্ণ ভূমিকা পালন করে।</p>\r\n\r\n<p><strong>মেথি গুঁড়ার উপকারিতা:</strong><br />\r\n১। রক্তে শর্করার মাত্রা হ্রাস করতে গুরুত্বপূর্ণ ভূমিকা পালন করে।<br />\r\n২। সকালে খালি পেটে গোটা মেথি বা মেথি ভেজানো পানি পান করলে রক্তে ক্ষতিকর কোলেস্টেরলের পরিমাণ হ্রাস পায়।<br />\r\n৩। খাবারে মেথির উপস্থিতি ডায়াবেটিস ও স্ট্রোকের ঝুঁকি অনেকাংশে হ্রাস করে।<br />\r\n৪। গ্যস্ট্রিক ও বদহজমের কার্যকরী মহৌষধ হিসেবে দারুণ ভূমিকা রাখে।<br />\r\n৫। মাতৃদুগ্ধ বৃদ্ধির জন্য মেথি বেশ কার্যকরী।<br />\r\n৬। মেথি ভেজানো নারিকেল তেল চুলে ব্যবহার করলে চুলের গোড়া মজবুত হয়।<br />\r\n৭। টক দইয়ের সাথে মেথি গুঁড়া মিশিয়ে ব্যবহার করলে চুল হয় কোমল ও ঝলমলে।<br />\r\n৮। এটি দিয়ে তৈরি ফেইস প্যাক ব্রণ, ডার্ক সার্কেল এর মতন ত্বকের সমস্যা সমাধানে বেশ কার্যকরী ভূমিকা রাখে।<br />\r\n&nbsp;</p>', 'মেথি (Fenugreek) আমাদের দৈনন্দিন রান্নায় এক বহুল ব্যবহৃত উপাদান। এর পাশাপাশি মেথির রয়েছে চমৎকার ভেষজ গুণাগুণ। এতে রয়েছে প্রোটিন, ফাইবার, ভিটামিন সি, পটাশিয়াম, ক্যালসিয়াম, ম্যাগিনেশিয়াম, জিংক, আয়রন, কপার, নায়াসিন এর মতন গুরুত্বপূর্ণ পুষ্টি উপাদান। মেথির ভেষজ গুণাবলি স্বাস্থ্য সুরক্ষিত রাখতে গুরুত্বপূর্ণ ভূমিকা পালন করে।', 'methi-powder-250g-min-1710045088.png', 'methi-powder-150g-min-1710045088.png', '155', NULL, NULL, NULL, NULL, 1, NULL, '2024-03-10 04:31:28', '2024-03-10 04:31:28'),
(209, 'নীমের গুঁড়া / Neem Powder', 'neemer-gunnra-neem-powder', 'SF-NP', 70.00, 140.00, '<p>Interested in going for a Natural herbal remedy Alternative to synthetic medicinal remedy for diabetes, liver problem, bacterial infection or scabies.&nbsp;</p>\r\n\r\n<p>Neem is an evergreen tree with a well-earned reputation for being the most potent medicinal flora in the world. The neem tree is known in Ayurveda as nature&rsquo;s pharmacy. The tree grows predominantly in the Indian subcontinent but is now being cultivated in similar climates all over the world as people are beginning to recognize its usefulness.</p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Neem Leaf Powder: Incredible Benefits For Skin, Hair And Overall Health</span></span></p>\r\n\r\n<p><strong>Benefits and Uses of Neem:</strong></p>\r\n\r\n<ul>\r\n	<li>Helps Destroy Cancerous Cells</li>\r\n	<li>Helps Destroy Harmful Bacteria</li>\r\n	<li>Helps protect from Fever.</li>\r\n	<li>Helps Upset stomach.</li>\r\n	<li>Helps Improve Breathing conditions.</li>\r\n	<li>Helps protect from Malaria.</li>\r\n	<li>Helps for Worms.</li>\r\n	<li>Helps for Head lice.</li>\r\n	<li>Helps for Skin conditions and diseases.</li>\r\n	<li>Helps for Heart disease.</li>\r\n	<li>Helps for Diabetes.</li>\r\n	<li>Helps for Birth control (contraception).</li>\r\n	<li>Helps for Hair Health And Beauty</li>\r\n	<li>Helps for Boostong The Immune System</li>\r\n	<li>Helps for Promoting Gut Health</li>\r\n	<li>Helps for Dental Health</li>\r\n	<li>Helps for&nbsp;<span style=\"font-size:11.0pt\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\">Purifying</span></span> Blood</li>\r\n	<li>Helps for Relieves Pain And Inflammation</li>\r\n</ul>', 'Interested in going for a Natural herbal remedy Alternative to synthetic medicinal\r\nremedy for diabetes, liver problem, bacterial infection or scabies.', 'neem-powder-200g-min-1710056751.png', 'neem-powder-100g-min-1710056751.png', '155', NULL, NULL, NULL, NULL, 1, NULL, '2024-03-10 07:45:51', '2024-03-10 07:49:38'),
(210, 'Safed Musli Powder', 'safed-musli-powder', 'SF-SMP', 490.00, 990.00, '<p>Safed musli is a rare herb from India. It is used in traditional systems of medicine including Ayurveda, Unani, and homeopathy. It is traditionally used for arthritis, cancer, diabetes, boosting vitality, improving sexual performance, and for many other uses.</p>\r\n\r\n<p><strong>Safed musli Powder Benefits:</strong><br />\r\n&bull; Bodybuilding.<br />\r\n&bull; Weight loss.<br />\r\n&bull; Improving sexual performance.<br />\r\n&bull; Erectile dysfunction.<br />\r\n&bull; Stress.<br />\r\n&bull; Arthritis.<br />\r\n&bull; Cancer.<br />\r\n&bull; Diabetes.<br />\r\n&bull; Diarrhea.<br />\r\n&bull; Dysentery.<br />\r\n&bull; Painful urination (dysuria).<br />\r\n&bull; Increasing lactation in breast-feeding mothers.<br />\r\n&bull; Gonorrhea.<br />\r\n&bull; Sperm disorders (oligospermia).<br />\r\n&bull; Infections.</p>\r\n\r\n<p><strong>Safed Musli Powder Dosage:</strong><br />\r\n1-2 tbsp pf safed musli powder infused in warm milk twice a day or as suggested by the ayurvedic doctor.</p>', 'Safed musli is a rare herb from India. It is used in traditional systems of medicine including Ayurveda, Unani, and homeopathy. It is traditionally used for arthritis, cancer, diabetes, boosting vitality, improving sexual performance, and for many other uses.', 'safed-musli-powder-200g-min-1710057355.png', 'safed-musli-powder-100g-min-1710057355.png', '155', NULL, NULL, NULL, NULL, 1, NULL, '2024-03-10 07:55:55', '2024-03-10 07:59:50'),
(211, 'ত্রিফলা গুঁড়া / Triphala Powder', 'trifla-gunnra-triphala-powder', 'SF-TP', 110.00, 220.00, '<p>Though you may have never heard of Triphala, an ancient Ayurvedic treatment used a healing remedy for over 1,000 years. Triphala, a herbal remedy is a mixture of three dried fruits (Amla, Bibhitaki &amp; Haritaki).</p>\r\n\r\n<p>Triphala is used to treat fatigue, oxidative stress, and infectious disorders like tuberculosis, pneumonia, AIDS, and periodontal disease, among others. for headaches, dyspepsia, ascites, and leukorrhea.</p>\r\n\r\n<p><strong>Trifola Powder Benefits:</strong></p>\r\n\r\n<ul>\r\n	<li>Benefits of Triphala for Diabetes.</li>\r\n	<li>Benefits of Triphala for Heart.</li>\r\n	<li>Benefits of Triphala for Liver.</li>\r\n	<li>Benefits of Triphala for Immunity.</li>\r\n	<li>Benefits of Triphala for Cancer.</li>\r\n	<li>Benefits of Triphala for Lower cholesterol</li>\r\n	<li>Benefits of Triphala for Aging (Anti-Aging).</li>\r\n	<li>Benefits of Triphala for Normalize blood pressure.</li>\r\n	<li>Benefits of Triphala for Stress.</li>\r\n	<li>Benefits of Triphala for Skin.</li>\r\n	<li>Benefits of Triphala for Antioxidant activity.</li>\r\n	<li>Benefits of Triphala for Eyes.</li>\r\n	<li>Benefits of Triphala for Dental Care.</li>\r\n	<li>Benefits of Triphala for Infections.</li>\r\n	<li>Benefits of Triphala for Joint.</li>\r\n	<li>Benefits of Triphala for Digestive Tract.</li>\r\n	<li>Benefits of Triphala for Obesity.</li>\r\n	<li>Benefits of Triphala for Radioprotective activity.</li>\r\n	<li>Benefits of Triphala for Inhibit HIV.</li>\r\n</ul>', 'Though you may have never heard of Triphala, an ancient Ayurvedic treatment used a healing remedy for over 1,000 years. Triphala, a herbal remedy is a mixture of three dried fruits (Amla, Bibhitaki & Haritaki).', 'trifola-powder-200g-min-1710059080.png', 'trifola-powder-100g-min-1710059080.png', '155', NULL, NULL, NULL, NULL, 1, NULL, '2024-03-10 08:24:40', '2024-03-10 08:24:40'),
(212, 'সজিনা পাতার গুঁড়া / Moringa Powder', 'sjina-patar-gunnra-moringa-powder', 'SF-MP-450g', 800.00, 800.00, '<p>সজিনা পাতার গুঁড়া অত্যন্ত পুষ্টিকর একটি খাবার। পুষ্টি উপাদানে সমৃদ্ধ থাকায় সজিনা গাছকে &ldquo;মিরাকেল ট্রি&rdquo; এবং এর পাতাকে বলা হয় &ldquo;সুপার ফুড&rdquo; । এতে আছে পর্যাপ্ত পরিমাণে আয়রন, জিংক, আয়োডিন, ভিটামিন বি 9, ভিটামিন এ সহ দেহের জন্য উপকারী অন্যান্য ভিটামিন ও খনিজ উপাদান। দেহের জন্য প্রয়োজনীয় সকল অ্যামিনো এসিড পাওয়া যায় এই জাদুকরী গুণসম্পন্ন ভেষজে।</p>\r\n\r\n<p><strong>সজিনা পাতায় আছে :</strong><br />\r\n১) কমলা লেবুর তুলনায় ৭ গুণ ভিটামিন-সি রয়েছে।<br />\r\n২) দুধের তুলনায় ৪ গুণ ক্যালসিয়াম এবং দুই গুণ আমিষ রয়েছে।<br />\r\n৩) গাজরের তুলনায় ৪ গুণ ভিটামিন-এ পাওয়া যায়।<br />\r\n৪) কলার চেয়ে ৩ গুণ পটাশিয়াম বিদ্যমান।</p>\r\n\r\n<p><strong>সজিনা পাতার গুঁড়া ৩০ টি রোগের উপরে কাজ করে যা আপনাকে সুস্থ থাকতে সহায়তা করবে, ইন্শাল্লাহ:</strong><br />\r\n১) &nbsp;বার্ধক্যজনিত দুর্বলতা রোধ করে।<br />\r\n২) &nbsp;ভিটামিন আয়রন ক্যালসিয়াম এর অভাব পূরণ করে।<br />\r\n৩) কোমর, হাঁটু হাত-পায়ের আঙ্গুল ও জয়েন্টের ব্যাথা ভালো হয়।<br />\r\n৪) &nbsp;ঠান্ডা জনিত হাঁপানি সমস্যা দূর করে।<br />\r\n৫) &nbsp;কোষ্টকাঠিন্য (কষা) সমস্যা দূর করে।<br />\r\n৬) &nbsp;রক্ত স্বল্পতা হিমোগ্লোবিনের অভাব দূর করে।<br />\r\n৭) &nbsp;অস্টিওপোরোসিস বা হাড়ের ক্ষয় রোগ রোধ করে।<br />\r\n৮) &nbsp;শরীরে মাংসপেশি ব্যাথা বা চিনানো দূর করে।<br />\r\n৯) &nbsp;শ্বাসতন্ত্রে (কাশি) ইনফেকশন সমস্যা দূর করে।<br />\r\n১০) &nbsp;হজম দূর্বলতা আমাশয় সমস্যা দুর হয়।<br />\r\n১১) &nbsp;স্বাস্হ্যহীনতা রুগ্নতায় শরীর সবল করে।<br />\r\n১২) রিউমেটিক ফিভার (বাত) বা বাতজ্বর ভালো হয়।<br />\r\n১৩) &nbsp;নার্ভের ব্যথা দূর করতে সহায়তা করে।<br />\r\n১৪) ব্রেস্ট টিউমার এর জীবাণু ধ্বংস করে।<br />\r\n১৫) &nbsp;চোঁখ, হাত, পা জ্বালাপোড়া রোধ করে।<br />\r\n১৬) &nbsp;অনিয়মিত মাসিক নিয়মিত করে।<br />\r\n১৭) &nbsp;মাইগ্রেন (মাথা) ব্যথা বা ঘুমের সমস্যা দূর করে।<br />\r\n১৮) &nbsp;দৃষ্টি স্বল্পতা চোখে কম দেখা রোধ করে।<br />\r\n১৯) &nbsp;ডায়াবেটিস এর দূর্বলতা দূর করে।<br />\r\n২০) &nbsp;প্রসাবে জ্বালাপোড়া ইনফেকশন দূর করে।<br />\r\n২১) &nbsp;মাতৃত্বকালীন দূর্বলতা রোধ করে।<br />\r\n২২) শারীরিক দূর্বলতা রোধ করে।<br />\r\n২৩) মানব দেহের হরমোন ক্ষয়ের ঘাটতি পূরন করে।<br />\r\n২৪) &nbsp;লিউকোরিয়া সাদা স্রাব সমস্যা দূর করে।<br />\r\n২৫) &nbsp;টক্সিন বি-ভাইরাসের জীবানু ধ্বংস করে।<br />\r\n২৬) &nbsp;মাতৃদুগ্ধ বৃদ্ধি করতে বিশেষ ভুমিকা রাখে।<br />\r\n২৭) &nbsp;শরীরে রোগ প্রতিরোধ ক্ষমতার উন্নয়ন ঘটায়।<br />\r\n২৮) পাইলস্ ও অর্শ্ব রোগে কার্যকরী।<br />\r\n২৯) গর্ভধারণে সহায়তা করে।<br />\r\n৩০) কোল্ড এলার্জি / এজমা ঠান্ডা জনিত হাঁপানি সমস্যা দূর করে।</p>\r\n\r\n<p>যা আপনার ও আপনার বাচ্চার পুষ্টি হীনতায় পুষ্টি যোগায় , প্রতিদিন স্বাভাবিক খাবারের সাথে ১/২ চামচ সজিনা পাতার গুঁড়া খাইয়ে আপনার বাচ্চার সর্দি কাশি দূর করতে পারবেন ,সজিনা পাতা কেলসিয়ামের ঘাটতি পূরণ করে হার গঠন করতে সহায়তা করে, রোগ প্রতিরোধ ক্ষমতা বৃদ্ধি করে। এসব ছাড়াও সজনে পাতার রয়েছে প্রায় ৩০০টি ঔষধি গুনাগুন।</p>\r\n\r\n<p><br />\r\n&nbsp;</p>', 'সজিনা পাতার গুঁড়া অত্যন্ত পুষ্টিকর একটি খাবার। পুষ্টি উপাদানে সমৃদ্ধ থাকায় সজিনা গাছকে “মিরাকেল ট্রি” এবং এর পাতাকে বলা হয় “সুপার ফুড” । এতে আছে পর্যাপ্ত পরিমাণে আয়রন, জিংক, আয়োডিন, ভিটামিন বি 9, ভিটামিন এ সহ দেহের জন্য উপকারী অন্যান্য ভিটামিন ও খনিজ উপাদান। দেহের জন্য প্রয়োজনীয় সকল অ্যামিনো এসিড পাওয়া যায় এই জাদুকরী গুণসম্পন্ন ভেষজে।', 'moringa-powder-450g-min-1710059531.png', NULL, '155', NULL, NULL, NULL, NULL, 1, NULL, '2024-03-10 08:32:11', '2024-03-10 08:32:11'),
(213, 'স্পিরুলিনা গুঁড়া / Spirulina Powder', 'spirulina-gunnra-spirulina-powder', 'SF-SP', 1000.00, 2000.00, '<p>স্পিরুলিনা , এতে সব ধরনের পুষ্টি উপাদান বিদ্যমান থাকায় একে &lsquo;সুপার ফুড&rsquo; বলা হয়। সুপার ফুড বলার আরও কয়েকটি কারণ আছে। এতে মাছ ও গরুর মাংসের তুলনায় ৩ গুণ এবং ডিমের তুলনায় ৬ গুণ বেশি প্রোটিন রয়েছে। সয়াবিনের তুলনায় ২ গুণ বেশি মিনারেল রয়েছে। আটার চেয়ে ৪ গুণ বেশি ফাইবার বা খাদ্য আঁশ রয়েছে। এতে গাজরের তুলনায় ৫ গুণ ও পালং শাকের তুলনায় ৪০ গুণ বেশি ক্যারোটিন রয়েছে। দুধের তুলনায় ১০ গুণ বেশি ক্যালসিয়াম রয়েছে। এতে পালং শাকের তুলনায় ৬৫ গুণ বেশি এবং গরুর মাংসের তুলনায় ৩০ গুণ বেশি আয়রন থাকে। এটি পুষ্টিসমৃদ্ধ একটি সবজি। নাসা তার নভোচারীদের খাদ্য তালিকায় স্পিরুলিনা অগ্রাধিকারের ভিক্তিতে রাখে।</p>\r\n\r\n<p><strong>পরিচয়:</strong> স্পিরুলিনা একটি নীলাভ-সবুজ শৈবাল। এটি সাধারণত পানিতে জন্মে। তবে সামুদ্রিক শৈবাল হিসেবেই এটি বেশি পরিচিত। স্পিরুলিনা নামটি নেয়া হয়েছে মূলত ল্যাটিন শব্দ Spira থেকে। যার অর্থ সর্পিলাকার বা পাকানো। কারণ স্পিরুলিনা দেখতে সর্পিলাকারের হয়ে থাকে। এটি সাধারণত সালোকসংশ্লেষণ প্রক্রিয়ার মাধ্যমে শক্তি উৎপন্ন করে থাকে।</p>\r\n\r\n<p><strong>স্পিরুলিনা গুঁড়ার উপকারিতা:</strong><br />\r\n1. <strong>উচ্চ রক্তচাপ নিয়ন্ত্রণঃ</strong> স্পিরুলিনা শরীরে নাইট্রিক অক্সাইড তৈরিতে সাহায্য করে। এটি একটি গ্যাস অনু যা রক্তনালী প্রশস্থ করে রক্ত পরিবহন ঠিক রাখে। এর ফলে হৃদপিণ্ডকে কঠোর পরিশ্রম করতে হয় না, এভাবে এটি হার্ট attack ও স্ট্রোক এর ঝুঁকি হ্রাস করে।</p>\r\n\r\n<p>2. <strong>ডায়াবেটিস প্রতিরোধে:</strong> এটি রক্তে Glucose মাত্রা কমিয়ে ডায়াবেটিস নিয়ন্ত্রণে আনতে সহায়তা করে। কারণ এতে প্রচুর ফাইবার রয়েছে। যা রক্তে Glucose এর মাত্রা সহজে বাড়তে দেয় না।</p>\r\n\r\n<p>3. <strong>হৃদরোগের ঝুঁকি কমায়:</strong> এতে উচ্চমাত্রায় গামা লিনোলেয়িক অ্যাসিড রয়েছে। যা দেহের ক্ষতিকারক এলডিএলের মাত্রা কমিয়ে হৃদরোগের ঝুঁকি কমায়।</p>\r\n\r\n<p>4. <strong>রক্ত পরিষ্কার করে:</strong> এতে প্রচুর ক্লোরোফিল ও ম্যাগনেসিয়াম রয়েছে। এই ক্লোরোফিল ও ম্যাগনেসিয়াম মিলিত হয়ে রক্তের দূষক পদার্থসমূহ দূর করে এবং রক্ত পরিষ্কার করতে সহায়তা করে। গবেষণায় দেখা গেছে, প্রতিদিন ৯-১০ গ্রাম করে স্পিরুলিনা খাওয়ালে ৪-৬ মাস পর রোগির আর্সেনিকজনিত চর্মরোগ সম্পূর্ণরূপে উপশম হয়।</p>\r\n\r\n<p>5. <strong>ওজন হ্রাস করেঃ</strong> যদিও স্পিরুলিনা পুষ্টিতে পরিপূর্ণ, প্রতি টেবিল চামচ এ মাত্র ২০ ক্যালোরি শক্তি আছে। এতে phenylalanine নামে একটি অ্যামিনো এসিড রয়েছে, যা ক্ষুধা দমনে সহায়তা করে।</p>\r\n\r\n<p>6. <strong>অ্যালার্জি বিরুদ্ধে লড়াই করতে সাহায্য করেঃ</strong> যদি পরাগ, কুকুরের চুল, ঘাস বা অন্যান্য পরিবেশগত কারনগুলী আপনার অ্যালার্জিকে অতিরিক্ত মাত্রায় বাড়িয়ে দেয়, স্পিরুলিনা তাদের বিরুদ্ধে লড়াই করে, আপনার অ্যালার্জির মাত্রা নরমাল করতে সাহায্য করে।</p>\r\n\r\n<p>7. <strong>আদর্শ খাবার:</strong> এতে বেশি পরিমাণে প্রোটিন ও ভিটামিন বি১২ রয়েছে। যা নিরামিষভোজীদের এ দুটি পুষ্টি উপাদানের ঘাটতি কমায়। কারণ তাদের খাদ্য তালিকায় প্রোটিন ও ভিটামিন বি১২ অনুপস্থিত থাকে।</p>\r\n\r\n<p>8. <strong>কিডনিকে রক্ষা করে:</strong> স্পিরুলিনার ক্লোরোফিল একটি উচ্চ ঘনত্ব সম্পন্ন এবং সেরা প্রাকৃতিক detoxifiers; এটি কিডনি থেকে ভারি ধাতু, ক্ষতিকারক রশ্মি এবং দূষণকারী ধাতু সরিয়ে কিডনির বিষাক্ততা কমায়।</p>\r\n\r\n<p>9. <strong>গর্ভবতীর রক্তাল্পতা প্রতিরোধ:</strong> স্পিরুলিনাতে প্রচুর ক্লোরোফিল রয়েছে। যা রক্তের সবচেয়ে গুরুত্বপূর্ণ উপাদান হিমোগ্লোবিনে রূপান্তরিত হতে পারে এবং রক্তাল্পতা প্রতিরোধ করতে সাহায্য করে। তাছাড়া স্পিরুলিনাতে ভিটামিন বি১২, ফলিক অ্যাসিড, আয়রন ও অ্যামাইনো অ্যাসিড রয়েছে। যা রক্ত তৈরিতে গুরুত্বপূর্ণ ভূমিকা রাখে।</p>', 'স্পিরুলিনা , এতে সব ধরনের পুষ্টি উপাদান বিদ্যমান থাকায় একে ‘সুপার ফুড’ বলা হয়। সুপার ফুড বলার আরও কয়েকটি কারণ আছে। এতে মাছ ও গরুর মাংসের তুলনায় ৩ গুণ এবং ডিমের তুলনায় ৬ গুণ বেশি প্রোটিন রয়েছে। সয়াবিনের তুলনায় ২ গুণ বেশি মিনারেল রয়েছে। আটার চেয়ে ৪ গুণ বেশি ফাইবার বা খাদ্য আঁশ রয়েছে। এতে গাজরের তুলনায় ৫ গুণ ও পালং শাকের তুলনায় ৪০ গুণ বেশি ক্যারোটিন রয়েছে। দুধের তুলনায় ১০ গুণ বেশি ক্যালসিয়াম রয়েছে। এতে পালং শাকের তুলনায় ৬৫ গুণ বেশি এবং গরুর মাংসের তুলনায় ৩০ গুণ বেশি আয়রন থাকে। এটি পুষ্টিসমৃদ্ধ একটি সবজি। নাসা তার নভোচারীদের খাদ্য তালিকায় স্পিরুলিনা অগ্রাধিকারের ভিক্তিতে রাখে।', 'spirulina-100g-min-1710060276.png', NULL, '155', '8', NULL, NULL, NULL, 1, NULL, '2024-03-10 08:44:36', '2024-03-10 08:59:45'),
(214, 'শিলাজিৎ / Shilajit', 'silajitt-shilajit', 'SF-SJ', 1300.00, 2100.00, '<p>শিলাজিৎ একটি সুপরিচিত আয়ুর্বেদিক ভেষজ। এর সুবিধাগুলি প্রায় ৫০০০ বছর আগে ভারতে আবিষ্কৃত হয়। হিমালয়ের ১৮০০০ ফুট থেকে এই ভেষজ পাওয়া যায়। শিলাজিৎ শব্দটি পুরুষদের অপরিচিত নয়। তবে শিলাজিৎ শুধু যৌন শক্তিবর্ধক নয়। এটি শরীরে আরও বেশ কিছু পুষ্টি সরবরাহ করে। প্রাথমিকভাবে এটি তার খনিজ পদার্থের সম্পদের জন্য পরিচিত। যা মানুষের শক্তি ও বিভিন্ন কাজে উৎসাহ বাড়ায়।</p>\r\n\r\n<p>আয়ুর্বেদিক চিকিৎসায় শিলাজিত খুব গুরুত্বপূর্ণ ভূমিকা পালন করে থাকে।এটি দীর্ঘায়ু এবং অনেক অন্যান্য রোগের জন্য হাজার হাজার বছর ধরে ব্যবহার করা হচ্ছে। শিলাজিত একটি পুরু, কালো-বাদামী খনিজ কাঠকয়লা, যেটি হিমালয় পর্বতমালার ফাটলের পড়ে গরমে বাইরে বেরিয়ে যায়। শিলাজিত শতাব্দী পুরাতন, বিশৃঙ্খল উদ্ভিদ যা ভিটামিন, খনিজ ও অন্যান্য পুষ্টির শক্তিশালী উৎস। এটি একটি শক্তিশালী অভিযোজন, যা সকল ধরণের মানসিক ও শারীরিক চাপ প্রতিরোধে সহায়তা করে।</p>\r\n\r\n<p>শিলাজিতের লাভঃ<br />\r\n&bull; <strong>শক্তি এবং পুনরুদ্ধার প্রদান করাঃ</strong><br />\r\nশতাব্দী ধরে, আয়ুর্বেদিক ওষুধের অনুশীলনকারীরা শক্তি বৃদ্ধি এবং শরীরকে পুনর্জীবিত করার জন্য শিলাজিত ব্যবহার করেছেন। শরীরের মধ্যে মাইটোকন্ড্রিয়া কাজ বৃদ্ধি করে এটি শরীরকে শক্তি প্রদান করে। অ্যান্টিঅক্সিডেন্ট বৈশিষ্ট্য এই ঔষধি শক্তিশালীর সঙ্গে শরীরকে পুনর্জীবিত করে। র&zwj;্যাডিকেলস রোগের কারণের সাথে লড়াই করে, এটি রাসায়নিক এবং অন্যান্য বিপজ্জনক এজেন্টের কারণে শরীরের অভ্যন্তরীণ ক্ষতি মেরামত করে।<br />\r\n&bull; <strong>হরমোন এবং ইমিউন সিস্টেম ব অনাক্রম্যতা নিয়ন্ত্রণ করে:</strong><br />\r\nশিলাজিতের আরেকটি গুরুত্বপূর্ণ কাজ এটি আপনার শরীরের বিভিন্ন সিস্টেম, যেমন আপনার ইমিউন সিস্টেম অনাক্রম্যতা এবং হরমোনের ভারসাম্যকে নিয়ন্ত্রণ করে।<br />\r\n&bull; <strong>মস্তিষ্ক&zwnj; সুস্থ রাখে:</strong><br />\r\nগবেষণায় দেখা গেছে, এতে বিশেষ নিউরোপ্রোটেক্টিভ ক্ষমতা রয়েছে। এর মধ্যে থাকা পুষ্টি অ্যালঝাইমারসরোগের চিকিৎসায় ব্যবহার করা হয়।<br />\r\n&bull; <strong>এটি ব্যথা থেকে রেহাই দেয়।</strong><br />\r\n&bull; <strong>এটি এক শক্তিশালী রোগ প্রতিরোধক ক্ষমতা হিসেবে কাজ করে।</strong><br />\r\n&bull; <strong>ডায়বেটিস প্রতিরোধ করতে সাহায্য করেঃ</strong><br />\r\nশিলাজিত মধুমেহ বা ডায়াবেটিস রোগীদের রক্তে গ্লুকোজ এবং লিপিড প্রোফাইলকে কম করতে সাহায্য করে।<br />\r\n&bull; <strong>ক্যানসার থেকে বাঁচতে এবং রক্ষা করতে সাহায্য করেঃ</strong><br />\r\nফুসফুস, স্তন, কোলন, ডিম্বাশয় এবং লিভার ক্যানসার থেকে বাঁচায় ও অন্যান্য বিভিন্ন ধরণের ক্যানসারের জন্য শিলাজিত উপকারী।<br />\r\n&bull; <strong>জ্বলন কম করতে এবং কোষ্ঠকাঠিন্যর সাথে লড়াই করতে সাহায্য করেঃ</strong><br />\r\nএটা গ্যাস্ট্রিক, আলসার চিকিৎসা এবং প্রতিরোধ করতে কার্যকর।<br />\r\n&bull; <strong>এটা কঙ্কাল স্বাস্থ্যের উন্নতি ঘটায়।</strong><br />\r\n&bull; <strong>হার্ট এবং রক্তের জন্য ভালঃ</strong><br />\r\nএতে প্রচুর পরিমাণে আয়রনের উপস্থিতি রয়েছে যা অ্যানিমিয়া দূরীকরণে সহায়তা করে।<br />\r\n&bull; <strong>নিয়ন্ত্রণহীনতা ভাঙতে সাহায্য করে:</strong><br />\r\nঅন্যান্য ফার্মাসিউটিক্যাল পদার্থ সঙ্গে মিথস্ক্রিয়ার কারণে, শিলাজিতআসক্তি ভঙ্গ প্রক্রিয়ার উপর একটি গভীর প্রভাব ফেলে। যখন এটি অপিওড রোগীদের দেওয়া হয়,তখন আসক্তি হ্রাস করে এবং প্রত্যাহার উপসর্গগুলি হ্রাস করে।<br />\r\n&bull; এটি ব্যাপকভাবে পুরুষদের টেস্টরন হরমোন ব্যালান্স করতে সাহায্য করে।</p>\r\n\r\n<p><strong>খাবারের নিয়ম ও পরিমান:</strong><br />\r\nপ্রতিদিন একবার (সকালে বা রাতে) একটা কাঁচা ছোলা এর পরিমান কুসুম গরম পানিতে , চায়ের , কফি তে মিশিয়ে খেতে হবে।</p>\r\n\r\n<p><strong>শিলাজিতের পার্শ্ব প্রতিক্রিয়া:</strong><br />\r\nসঠিকভাবে এবং সঠিক পরিমাণে গ্রহণ করা হলে, শিলাজিতের কোন গুরুতর পার্শ্ব প্রতিক্রিয়া হয় না। কিন্তু যদি অত্যাধিক বেশি পরিমাণে গ্রহণ করা হয়, তাহলেনিম্নলিখিত পার্শ্ব প্রতিক্রিয়া ঘটতে পারে:<br />\r\n1. শরীরে অত্যধিক তাপ উদ্দীপনা।<br />\r\n2. পায়ে জ্বালা অনুভব করা।<br />\r\n3. হাত ও পায়ে বেশি উষ্ণতা অনুভব করা।<br />\r\n4. প্রস্রাব বৃদ্ধি বা কমতে থাকা।<br />\r\n5. অ্যালার্জি প্রতিক্রিয়া: শিলাজিতেরমধ্যে উপস্থিত কোনো যৌগ বা উপাদানে আপনার অ্যালার্জি থাকে তাহলে অ্যালার্জি প্রতিক্রিয়া লক্ষণ হিসাবেবমি, মাথা ঘোরা, হৃদস্পন্দন বৃদ্ধি, চুলকানি ইত্যাদি হতে পারে। তাহলে তখন শিলাজিত ব্যবহার করা বন্ধ করুন।<br />\r\n&nbsp;</p>', 'শিলাজিৎ একটি সুপরিচিত আয়ুর্বেদিক ভেষজ। এর সুবিধাগুলি প্রায় ৫০০০ বছর আগে ভারতে আবিষ্কৃত হয়। হিমালয়ের ১৮০০০ ফুট থেকে এই ভেষজ পাওয়া যায়। শিলাজিৎ শব্দটি পুরুষদের অপরিচিত নয়। তবে শিলাজিৎ শুধু যৌন শক্তিবর্ধক নয়। এটি শরীরে আরও বেশ কিছু পুষ্টি সরবরাহ করে। প্রাথমিকভাবে এটি তার খনিজ পদার্থের সম্পদের জন্য পরিচিত। যা মানুষের শক্তি ও বিভিন্ন কাজে উৎসাহ বাড়ায়।', 'shilajit-30g-min-1710061093.png', NULL, '155', NULL, NULL, NULL, NULL, 1, NULL, '2024-03-10 08:58:13', '2024-03-10 08:58:13'),
(215, 'কালোজিরার তেল / Black Seeds Oil', 'kalojirar-tel-black-seeds-oil', 'G-Ooil-BSO', 220.00, 220.00, '<p>কালোজিরা (Black Seeds) তেল বিশুদ্ধ দেশী কালোজিরা দানা থেকে প্রস্তুতকৃত। কালোজিরা কে বলা হয় মৃত্যু বাদে সকল রোগের মহৌষধ। ছোট কালো রঙের এই দানার ভিতর লুকিয়ে আছে চমৎকার সব স্বাস্থ্যগুণ। এতে আছে প্রায় শতাধিক যৌগের উপস্থিতি যা নানান রোগ থেকে সুরক্ষা প্রদান করে।&nbsp;</p>\r\n\r\n<p>হালকা ঝাঁঝালো স্বাদের এই ছোট দানা রসুইঘরে যেমন মসলা হিসেবে ব্যবহৃত হয় ঠিক তেমনই ভেষজ হিসেবে রোগের সুরক্ষায়ও ব্যবহৃত হয়। এমনকি এই দানা থেকে নিঃসৃত তেলও ব্যবহার করা হয়।&nbsp;</p>\r\n\r\n<p><strong>কালোজিরা (Black Seeds) তেলের গুণাগুণ:</strong><br />\r\n১। দুশ্চিন্তা দূর করতে চমৎকার কাজ করে। পাশাপাশি মেধার বিকাশে ভূমিকা রাখে। এক্ষেত্রে এক চা চামচ পুদিনা পাতার রস বা কমলার রস অথবা এক কাপ লাল চা এর সাথে এক চা চামচ কালিজিরার তেল মিশিয়ে গ্রহণ করতে হবে।<br />\r\n২। হাঁপানী বা শ্বাসকষ্টের রোগীদের জন্য এই তেল বিশেষ উপকারী। এক চা চামচ পরিমাণ এই তেল দুধ বা চা এর সাথে মিশিয়ে নিয়মিত ভাবে গ্রহণে এই সমস্যা থেকে মুক্তি সম্ভব।<br />\r\n৩। বাতের ব্যথা প্রশমনে এই তেল ভালো কাজ করে। ব্যথার স্থান ভালো করে পরিষ্কার করে এই তেল দিয়ে উত্তমরূপে মালিশ করলে ব্যথা উপশম হয়।<br />\r\n৪। হঠাৎ মাথাব্যথা দেখা দিলে এই তেলের মালিশ ভালো কাজ করে। এছাড়ার এক চা চামচ কালিজিরার তেলের সাথে সমপরিমাণ মধু &nbsp;মিশিয়ে দিনে ৩ বার করে ২ থেকে ৩ সপ্তাহ নিয়মিত গ্রহণ করলে এই সমস্যার সমাধান হয়।<br />\r\n৫। এই তেল নারী &ndash; পুরুষ উভয়ের যৌন ক্ষমতা বৃদ্ধিতে সাহায্য করে।<br />\r\n৬। ব্রণের সমস্যায় অ্যাপেল সাইডার ভিনেগার ও এই তেলের মিশ্রণ ব্যবহারে উপকার পাওয়া যায়।<br />\r\n৭। চুলের গোড়া শক্ত ও মজবুত হয় এবং নতুন চুল গজায়।<br />\r\n&nbsp;</p>', 'কালোজিরা (Black Seeds) তেল বিশুদ্ধ দেশী কালোজিরা দানা থেকে প্রস্তুতকৃত। কালোজিরা কে বলা হয় মৃত্যু বাদে সকল রোগের মহৌষধ। ছোট কালো রঙের এই দানার ভিতর লুকিয়ে আছে চমৎকার সব স্বাস্থ্যগুণ। এতে আছে প্রায় শতাধিক যৌগের উপস্থিতি যা নানান রোগ থেকে সুরক্ষা প্রদান করে।', 'kalojira-oil-100ml-min-1710062362.png', NULL, '159', NULL, NULL, NULL, NULL, 1, NULL, '2024-03-10 09:19:22', '2024-03-10 09:19:22');

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_values` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_qty` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Active=1, Inactive=2',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_attributes`
--

INSERT INTO `product_attributes` (`id`, `attribute_name`, `attribute_values`, `attribute_qty`, `attribute_price`, `attribute_sku`, `product_id`, `status`, `created_at`, `updated_at`) VALUES
(37, '250g', '250g', '100', '400', 'N&D-CN-250g', 168, 1, NULL, NULL),
(38, '500g', '500g', '100', '800', 'N&D-CN-500g', 168, 1, NULL, NULL),
(39, '250g', '250g', '100', '330', 'N&D-WN-250g', 167, 1, NULL, NULL),
(40, '500g', '500g', '100', '650', 'N&D-WN-500g', 167, 1, NULL, NULL),
(41, '250g', '250g', '100', '350', 'N&D-A-250g', 166, 1, NULL, NULL),
(42, '500g', '500g', '100', '680', 'N&D-A-500g', 166, 1, NULL, NULL),
(47, '250g', '250g', '100', '400', 'D-G-250g', 170, 1, NULL, NULL),
(48, '500g', '500g', '100', '800', 'D-G-500g', 170, 1, NULL, NULL),
(53, '900g', '900g', '100', '950', 'EB-HT-900g', 172, 1, NULL, NULL),
(58, '100g', '100g', '100', '130', 'SF-DP-100g', 173, 1, NULL, NULL),
(59, '200g', '200g', '100', '220', 'SF-DP-200g', 173, 1, NULL, NULL),
(60, '200g', '200g', '100', '370', 'S-JP-200g', 174, 1, NULL, NULL),
(61, '200g', '200g', '100', '110', 'S-DP-200g', 175, 1, NULL, NULL),
(62, '200g', '200g', '100', '110', 'S-TP-200g', 176, 1, NULL, NULL),
(63, '200g', '200g', '100', '210', 'S-CP-200g', 177, 1, NULL, NULL),
(64, '450g', '450g', '100', '500', 'B-PB-CRM-450g', 178, 1, NULL, NULL),
(65, '450g', '450g', '100', '500', 'B-PB-CRY-450g', 179, 1, NULL, NULL),
(67, '450g', '450g', '100', '750', 'B-CNB-CRY-450g', 181, 1, NULL, NULL),
(69, '450g', '450g', '100', '450', 'P-AP-450g', 183, 1, NULL, NULL),
(71, '420g', '420g', '100', '450', 'P-EKR-420g', 185, 1, NULL, NULL),
(72, '460g', '460g', '100', '450', 'P-AB-460g', 182, 1, NULL, NULL),
(73, '450g', '450g', '100', '450', 'P-TL-450g', 184, 1, NULL, NULL),
(86, '250g', '250g', '100', '260', 'H-BFM-250g', 192, 1, NULL, NULL),
(87, '500g', '500g', '100', '500', 'H-BFM-500g', 192, 1, NULL, NULL),
(90, '250g', '250g', '100', '150', 'H-SFM-250g', 190, 1, NULL, NULL),
(91, '500g', '500g', '100', '280', 'H-SFM-500g', 190, 1, NULL, NULL),
(94, '250g', '250g', '100', '185', 'H-LFM-250g', 189, 1, NULL, NULL),
(95, '500g', '500g', '100', '350', 'H-LFM-500g', 189, 1, NULL, NULL),
(98, '250g', '250g', '100', '350', 'H-SBKFM-250g', 187, 1, NULL, NULL),
(99, '500g', '500g', '100', '700', 'H-SBKFM-500g', 187, 1, NULL, NULL),
(100, '250g', '250g', '100', '380', 'H-SBNCM-250g', 186, 1, NULL, NULL),
(101, '500g', '500g', '100', '750', 'H-SBNCM-500g', 186, 1, NULL, NULL),
(124, '250g', '250g', '100', '280', 'H-GCM-250g', 191, 1, NULL, NULL),
(125, '500g', '500g', '100', '560', 'H-GCM-500g', 191, 1, NULL, NULL),
(128, '100g', '100g', '100', '220', 'SF-AKP-100g', 194, 1, NULL, NULL),
(129, '200g', '200g', '100', '420', 'SF-AKP-200g', 194, 1, NULL, NULL),
(132, '100g', '100g', '100', '150', 'SF-AP-100g', 195, 1, NULL, NULL),
(133, '200g', '200g', '100', '300', 'SF-AP-200g', 195, 1, NULL, NULL),
(134, '100g', '100g', '100', '290', 'SF-BMP-100g', 196, 1, NULL, NULL),
(135, '200g', '200g', '100', '560', 'SF-BMP-200g', 196, 1, NULL, NULL),
(136, '200g', '200g', '100', '800', 'SF-BTP-200g', 197, 1, NULL, NULL),
(137, '250g', '250g', '100', '320', 'SF-CS-250g', 198, 1, NULL, NULL),
(138, '500g', '500g', '100', '600', 'SF-CS-500g', 198, 1, NULL, NULL),
(139, '900g', '900g', '100', '1100', 'EB-HN-900g', 171, 1, NULL, NULL),
(140, '250g', '250g', '100', '320', 'SF-IGV-100g', 199, 1, NULL, NULL),
(141, '200g', '200g', '100', '600', 'SF-IGV-200g', 199, 1, NULL, NULL),
(142, '250g', '250g', '100', '110', 'SF-TD-250g', 200, 1, NULL, NULL),
(143, '100g', '100g', '100', '100', 'SF-JMP-100g', 201, 1, NULL, NULL),
(144, '200g', '200g', '100', '200', 'SF-JMP-200g', 201, 1, NULL, NULL),
(145, '100g', '100g', '100', '110', 'SF-JMW-100g', 202, 1, NULL, NULL),
(146, '100g', '100g', '100', '80', 'SF-KJ-100g', 203, 1, NULL, NULL),
(147, '200g', '200g', '100', '160', 'SF-KJ-200g', 203, 1, NULL, NULL),
(150, '200g', '200g', '100', '250', 'SF-KGP-200g', 204, 1, NULL, NULL),
(151, '200g', '200g', '100', '220', 'SF-KGW-200g', 206, 1, NULL, NULL),
(152, '200g', '200g', '100', '115', 'SF-MS-200g', 207, 1, NULL, NULL),
(153, '370g', '370g', '100', '170', 'SF-MS-370g', 207, 1, NULL, NULL),
(154, '150g', '150g', '100', '115', 'SF-MSP-150g', 208, 1, NULL, NULL),
(155, '250g', '250g', '100', '190', 'SF-MSP-250g', 208, 1, NULL, NULL),
(158, '100g', '100g', '100', '70', 'SF-NP-100g', 209, 1, NULL, NULL),
(159, '200g', '200g', '100', '140', 'SF-NP-200g', 209, 1, NULL, NULL),
(162, '100g', '100g', '100', '490', 'SF-SMP-100g', 210, 1, NULL, NULL),
(163, '200g', '200g', '200', '990', 'SF-SMP-200g', 210, 1, NULL, NULL),
(164, '100g', '100g', '100', '110', 'SF-TP-100g', 211, 1, NULL, NULL),
(165, '200g', '200g', '100', '220', 'SF-TP-200g', 211, 1, NULL, NULL),
(166, '450g', '450g', '100', '800', 'SF-MP-450g', 212, 1, NULL, NULL),
(169, '30g', '30g', '100', '1300', 'SF-SJ-30g', 214, 1, NULL, NULL),
(170, '50g', '50g', '100', '2100', 'SF-SJ-50g', 214, 1, NULL, NULL),
(173, '50g', '50g', '100', '1000', 'SF-SP-50g', 213, 1, NULL, NULL),
(174, '100g', '100g', '100', '2000', 'SF-SP-100g', 213, 1, NULL, NULL),
(175, '250g', '250g', '100', '380', 'H-KFM-250g', 188, 1, NULL, NULL),
(176, '500g', '500g', '100', '750', 'H-KFM-500g', 188, 1, NULL, NULL),
(177, '450g', '450g', '100', '750', 'B-CNB-CRM-450g', 180, 1, NULL, NULL),
(180, '1 kg', '1 kg', '100', '300', 'G-PI-ALC-1kg', 193, 1, NULL, NULL),
(181, '2 kg', '2 kg', '100', '600', 'G-PI-ALC-2kg', 193, 1, NULL, NULL),
(182, '3 kg', '3 kg', '100', '900', 'G-PI-ALC-3kg', 193, 1, NULL, NULL),
(183, '5 kg', '5 kg', '100', '1500', 'G-PI-ALC-5kg', 193, 1, NULL, NULL),
(184, '250g', '250g', '100', '925', 'N&D-PN-250g', 169, 1, NULL, NULL),
(185, '500g', '500g', '100', '1850', 'N&D-PN-500g', 169, 1, NULL, NULL),
(186, '100ml', '100ml', '100', '220', 'G-Ooil-BSO-100ml', 215, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_rating` tinyint(4) NOT NULL DEFAULT 0,
  `user_review` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=Active, 0=Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slogan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `banner` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dsn_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dsn_subtitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dsn_descrip` text COLLATE utf8_unicode_ci NOT NULL,
  `dsn_photo1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dsn_photo2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seilor_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seilor_details` longtext COLLATE utf8_unicode_ci NOT NULL,
  `collection_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `collection_details` longtext COLLATE utf8_unicode_ci NOT NULL,
  `fb` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `insta` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `youtube` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `linkedin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `logo`, `phone`, `email`, `address`, `slogan`, `banner`, `dsn_title`, `dsn_subtitle`, `dsn_descrip`, `dsn_photo1`, `dsn_photo2`, `seilor_title`, `seilor_details`, `collection_title`, `collection_details`, `fb`, `insta`, `youtube`, `linkedin`, `created_at`, `updated_at`) VALUES
(1, 'Perfect Food', '6125fd12285f8_armorlux_logo.svg', '+8801735254295', 'customercare@perfectfood.com', 'Mohammadpur, Dhaka Uddhan, Main Road, Dhaka.', 'A trusted E-Commerce platform', '65c0b7d8ef1ef_UK_Slider_principal_Nouvelle_Co_Mobile.gif', 'The design workshop', 'Design, cut, sew...', 'If you\'re looking for a Breton striped shirt that\'s truly unique, take a look at our virtual workshop where you can choose your pattern, knit, stitch and a signature on the collar. Your Breton striped shirt will be knitted, sewn and embroidered for you, in our workshop in Quimper, Brittany.', '60ffd6dddbead_image_atelier_de_confection_2.jpg', '60ffd6ec2c802_Atelier_de_confection_2.gif', 'Women, Men and Kids SAILOR CLOTHES', 'Created in 1938 in Quimper, Armor Lux has become an                                             iconic French fashion brand , famous for the originality                                             of its clothes inspired by the sea, and the commitment                                             to produce the highest quality knits from its factories                                             in the celtic region of Britany, France.', 'Our Collections', 'Our iconic clothing range is extended by two collections                                             per year : fall/winter and spring/summer, reinventing                                             the classic stripes with the best savoir-faire of the brand.', 'https://facebook.com', 'https://instagram.com', 'https://youtube.com', 'https://linkedin.com', NULL, '2023-12-28 14:44:03');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_methods`
--

CREATE TABLE `shipping_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee` double(8,2) NOT NULL,
  `minimum_amount` double(8,2) NOT NULL DEFAULT 0.00 COMMENT 'Only for freeshipping',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'active = 1, inactive = 0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Desktop=1, Mobile=2',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Active=1, Inactive=2',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `slider_description`, `slider_type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Desktop Slider', NULL, 1, 1, '2022-12-21 12:48:33', '2023-01-07 15:53:29'),
(3, 'Mobile Slider', NULL, 2, 1, '2023-03-08 23:38:36', '2023-03-08 23:38:36');

-- --------------------------------------------------------

--
-- Table structure for table `slider_images`
--

CREATE TABLE `slider_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hover_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_id` bigint(20) UNSIGNED NOT NULL,
  `position` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Active=1, Inactive=2',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider_images`
--

INSERT INTO `slider_images` (`id`, `title`, `hover_text`, `img`, `slider_id`, `position`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, '1900-570-1671648525.jpg', 1, 0, 2, NULL, '2023-01-07 15:19:23'),
(2, NULL, NULL, '1900x570-1-1671648525.webp', 1, 1, 2, NULL, '2023-01-07 15:19:23'),
(3, NULL, NULL, 'winter-campaign1900x570-scaled-1671648525.webp', 1, 2, 2, NULL, '2023-01-07 15:19:23'),
(4, 'EVERGREEN BD SAFE FOODS LTD.', 'EVERGREEN BD SAFE FOODS LTD.', '278211270-159203036494434-2216496773871231331-n-1673088780.jpg', 2, 0, 2, NULL, '2023-01-07 15:53:19'),
(23, NULL, NULL, '1-min-1700153829.jpeg', 1, 3, 1, NULL, NULL),
(24, NULL, NULL, '2-min-1700153842.jpeg', 1, 4, 1, NULL, NULL),
(25, NULL, NULL, '3-min-1700153855.jpeg', 1, 5, 1, NULL, NULL),
(26, NULL, NULL, '1-m-min-1700153914.png', 3, 0, 1, NULL, NULL),
(27, NULL, NULL, '2-m-min-1700153927.png', 3, 1, 1, NULL, NULL),
(28, NULL, NULL, '3-m-min-1700153937.png', 3, 2, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `special_categories`
--

CREATE TABLE `special_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Active=1, Inactive=2',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `special_categories`
--

INSERT INTO `special_categories` (`id`, `title`, `slug`, `short_desc`, `img`, `sl`, `status`, `created_at`, `updated_at`) VALUES
(8, 'Popular Products', 'popular-products', NULL, NULL, NULL, 1, '2023-11-28 22:29:34', '2024-03-08 07:18:03'),
(10, 'Special Offer', 'special-offer', NULL, NULL, NULL, 1, NULL, NULL),
(11, 'Ramadan Offer', 'ramadan-offer', NULL, NULL, NULL, 1, NULL, '2024-03-08 07:30:42');

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sl` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`id`, `name`, `sl`, `created_at`, `updated_at`) VALUES
(1, 'test', 1, '2023-11-30 23:14:47', '2023-11-30 23:14:47'),
(2, 'gps', 1351824120, '2023-11-30 23:15:00', '2023-11-30 23:15:00'),
(3, 'gps', 1351824120, '2023-11-30 23:15:02', '2023-11-30 23:15:02'),
(4, 'gps', 1351824120, '2023-11-30 23:15:03', '2023-11-30 23:15:03'),
(5, 'gps', 1351824120, '2023-11-30 23:15:06', '2023-11-30 23:15:06'),
(6, 'gps', 1351824120, '2023-11-30 23:15:07', '2023-11-30 23:15:07'),
(7, 'gps', 1351824120, '2023-11-30 23:15:09', '2023-11-30 23:15:09'),
(8, 'gps', 1351824120, '2023-11-30 23:15:12', '2023-11-30 23:15:12'),
(9, 'gps', 1351824120, '2023-11-30 23:15:15', '2023-11-30 23:15:15'),
(10, 'gps', 1351824120, '2023-11-30 23:15:17', '2023-11-30 23:15:17'),
(11, 'gps', 1351824120, '2023-11-30 23:15:18', '2023-11-30 23:15:18'),
(12, 'gps', 1351824120, '2023-11-30 23:15:20', '2023-11-30 23:15:20'),
(13, 'gps', 1351824120, '2023-11-30 23:19:03', '2023-11-30 23:19:03'),
(14, 'gps', 1351824120, '2023-11-30 23:19:06', '2023-11-30 23:19:06'),
(15, 'gps', 1351824120, '2023-11-30 23:19:09', '2023-11-30 23:19:09'),
(16, 'gps', 1351824120, '2023-11-30 23:19:10', '2023-11-30 23:19:10'),
(17, 'gps', 1351824120, '2023-11-30 23:19:13', '2023-11-30 23:19:13'),
(18, 'gps', 1351824120, '2023-11-30 23:19:14', '2023-11-30 23:19:14'),
(19, 'gps', 1351824120, '2023-11-30 23:19:16', '2023-11-30 23:19:16'),
(20, 'gps', 1351824120, '2023-11-30 23:19:19', '2023-11-30 23:19:19'),
(21, 'gps', 1351824120, '2023-11-30 23:19:20', '2023-11-30 23:19:20'),
(22, 'gps', 1351824120, '2023-11-30 23:19:23', '2023-11-30 23:19:23'),
(23, 'gps', 1351824120, '2023-11-30 23:19:26', '2023-11-30 23:19:26'),
(24, 'gps', 1351824120, '2023-11-30 23:19:27', '2023-11-30 23:19:27'),
(25, 'gps', 1, '2023-11-30 23:19:56', '2023-11-30 23:19:56'),
(26, 'gps', 2, '2023-11-30 23:19:59', '2023-11-30 23:19:59'),
(27, 'gps', 3, '2023-11-30 23:20:01', '2023-11-30 23:20:01'),
(28, 'gps', 4, '2023-11-30 23:20:03', '2023-11-30 23:20:03'),
(29, 'gps', 5, '2023-11-30 23:20:04', '2023-11-30 23:20:04'),
(30, 'gps', 6, '2023-11-30 23:20:06', '2023-11-30 23:20:06'),
(31, 'gps', 7, '2023-11-30 23:20:09', '2023-11-30 23:20:09'),
(32, 'gps', 8, '2023-11-30 23:20:10', '2023-11-30 23:20:10'),
(33, 'gps', 9, '2023-11-30 23:20:13', '2023-11-30 23:20:13'),
(34, 'gps', 10, '2023-11-30 23:20:16', '2023-11-30 23:20:16'),
(35, 'gps', 11, '2023-11-30 23:20:18', '2023-11-30 23:20:18'),
(36, 'gps', 12, '2023-11-30 23:20:21', '2023-11-30 23:20:21'),
(37, 'gps', 13, '2023-11-30 23:20:23', '2023-11-30 23:20:23'),
(38, 'gps', 14, '2023-11-30 23:20:26', '2023-11-30 23:20:26'),
(39, 'gps', 15, '2023-11-30 23:20:29', '2023-11-30 23:20:29'),
(40, 'gps', 16, '2023-11-30 23:20:31', '2023-11-30 23:20:31'),
(41, 'gps', 17, '2023-11-30 23:20:34', '2023-11-30 23:20:34'),
(42, 'gps', 18, '2023-11-30 23:20:35', '2023-11-30 23:20:35'),
(43, 'gps', 19, '2023-11-30 23:20:38', '2023-11-30 23:20:38'),
(44, 'gps', 20, '2023-11-30 23:20:41', '2023-11-30 23:20:41'),
(45, 'gps', 21, '2023-11-30 23:20:43', '2023-11-30 23:20:43'),
(46, 'gps', 22, '2023-11-30 23:20:45', '2023-11-30 23:20:45'),
(47, 'gps', 23, '2023-11-30 23:20:47', '2023-11-30 23:20:47'),
(48, 'gps', 24, '2023-11-30 23:20:49', '2023-11-30 23:20:49'),
(49, 'gps', 25, '2023-11-30 23:20:51', '2023-11-30 23:20:51'),
(50, 'gps', 26, '2023-11-30 23:20:53', '2023-11-30 23:20:53'),
(51, 'gps', 27, '2023-11-30 23:20:56', '2023-11-30 23:20:56'),
(52, 'gps', 28, '2023-11-30 23:20:59', '2023-11-30 23:20:59'),
(53, 'gps', 29, '2023-11-30 23:21:01', '2023-11-30 23:21:01'),
(54, 'gps', 30, '2023-11-30 23:21:02', '2023-11-30 23:21:02'),
(55, 'gps', 31, '2023-11-30 23:21:04', '2023-11-30 23:21:04'),
(56, 'gps', 32, '2023-11-30 23:21:06', '2023-11-30 23:21:06'),
(57, 'gps', 33, '2023-11-30 23:21:08', '2023-11-30 23:21:08'),
(58, 'gps', 34, '2023-11-30 23:21:10', '2023-11-30 23:21:10'),
(59, 'gps', 35, '2023-11-30 23:21:12', '2023-11-30 23:21:12'),
(60, 'gps', 36, '2023-11-30 23:21:15', '2023-11-30 23:21:15'),
(61, 'gps', 37, '2023-11-30 23:21:16', '2023-11-30 23:21:16'),
(62, 'gps', 38, '2023-11-30 23:21:19', '2023-11-30 23:21:19'),
(63, 'gps', 1, '2023-11-30 23:57:21', '2023-11-30 23:57:21'),
(64, 'gps', 2, '2023-11-30 23:57:26', '2023-11-30 23:57:26'),
(65, 'gps', 1, '2023-12-01 00:13:47', '2023-12-01 00:13:47'),
(66, 'gps', 2, '2023-12-01 00:13:50', '2023-12-01 00:13:50'),
(67, 'gps', 3, '2023-12-01 00:13:53', '2023-12-01 00:13:53'),
(68, 'gps', 4, '2023-12-01 00:13:56', '2023-12-01 00:13:56'),
(69, 'gps', 5, '2023-12-01 00:13:58', '2023-12-01 00:13:58'),
(70, 'gps', 6, '2023-12-01 00:13:59', '2023-12-01 00:13:59'),
(71, 'gps', 7, '2023-12-01 00:14:02', '2023-12-01 00:14:02'),
(72, 'gps', 8, '2023-12-01 00:14:04', '2023-12-01 00:14:04'),
(73, 'gps', 9, '2023-12-01 00:14:06', '2023-12-01 00:14:06'),
(74, 'gps', 10, '2023-12-01 00:14:09', '2023-12-01 00:14:09'),
(75, 'gps', 11, '2023-12-01 00:14:12', '2023-12-01 00:14:12');

-- --------------------------------------------------------

--
-- Table structure for table `thanas`
--

CREATE TABLE `thanas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'Active=1, Inactive=2',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `thanas`
--

INSERT INTO `thanas` (`id`, `name`, `district_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Akhaura', 17, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(2, 'Ashuganj', 17, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(3, 'Bancharampur', 17, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(4, 'Bijoynagar', 17, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(5, 'Brahmanbaria Sadar', 17, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(6, 'Kasba', 17, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(7, 'Nabinagar', 17, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(8, 'Nasirnagar', 17, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(9, 'Sarial', 17, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(10, 'Jaldi', 17, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(11, 'Bagerhat Sadar', 25, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(12, 'Chitalmari', 25, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(13, 'Fakirhat', 25, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(14, 'Kachua', 25, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(15, 'Mollahat', 25, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(16, 'Mongla', 25, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(17, 'Morrelganj', 25, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(18, 'Rampal', 25, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(19, 'Sarankhola', 25, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(20, 'Chalna Ankorage', 25, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(21, 'Sajiara', 25, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(22, 'Madinabad', 25, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(23, 'Chalna Bazar', 25, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(24, 'Alaipur', 25, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(25, 'Alikadam', 23, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(26, 'Bandarban Sadar', 23, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(27, 'Lama', 23, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(28, 'Naikhongchhari', 23, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(29, 'Roanchhari', 23, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(30, 'Ruma', 23, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(31, 'Thanchi', 23, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(32, 'Baishari', 23, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(33, 'Agailzhara', 51, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(34, 'Babuganj', 51, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(35, 'Bakerganj', 51, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(36, 'Banaripara', 51, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(37, 'Barishal Sadar', 51, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(38, 'Gouranadi', 51, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(39, 'Hizla', 51, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(40, 'Mehendiganj', 51, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(41, 'Muladi', 51, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(42, 'Uzirpur', 51, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(43, 'Barajalia', 51, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(44, 'Sahebganj', 51, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(45, 'Kajir Hat', 51, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(46, 'Kawnia', 51, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(47, 'Bhola Sadar', 53, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(48, 'Burhanuddin', 53, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(49, 'Char Fasson', 53, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(50, 'Daulatkhan', 53, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(51, 'Lalmohan', 53, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(52, 'Manpura', 53, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(53, 'Tazumuddin', 53, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(54, 'Hajirhat', 53, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(55, 'Hatshoshiganj', 53, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(56, 'Dakshinaicha', 53, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(57, 'Shasibussion', 53, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(58, 'Adamdighi', 48, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(59, 'Bogura Sadar', 48, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(60, 'Dhunat', 48, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(61, 'Dupchanchia', 48, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(62, 'Gabtoli', 48, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(63, 'Kahalu', 48, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(64, 'Nandigram', 48, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(65, 'Sariakandi', 48, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(66, 'Shajahanpur', 48, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(67, 'Sherpur', 48, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(68, 'Shibganj', 48, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(69, 'Sonatola', 48, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(70, 'Tanor', 48, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(71, 'Lalitganj', 48, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(72, 'Khodmohanpur', 48, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(73, 'Bhabaniganj', 48, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(74, 'Amtali', 52, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(75, 'Bamna', 52, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(76, 'Barguna Sadar', 52, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(77, 'Betagi', 52, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(78, 'Patharghata', 52, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(79, 'Taltoli', 52, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(80, 'Taltali', 52, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(81, 'Chandpur Sadar', 19, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(82, 'Faridganj', 19, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(83, 'Hayemchar', 19, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(84, 'Hajiganj', 19, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(85, 'Kachua', 19, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(86, 'Matlab Dakshin', 19, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(87, 'Matlab Uttar', 19, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(88, 'Shahrasti', 19, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(89, 'Bholahat', 49, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(90, 'Gomashtapur', 49, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(91, 'Nachole', 49, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(92, 'Nawabganj Sadar', 49, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(93, 'Shibganj', 49, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(94, 'Rohanpur', 49, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(95, 'Chapainawabganj Sadar', 49, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(96, 'Anwara', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(97, 'Bandar', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(98, 'Banshkhali', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(99, 'Boalkhali', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(100, 'Chandanaish', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(101, 'Chandgaon', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(102, 'Double Mooring', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(103, 'Fatikchhari', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(104, 'Hathazari', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(105, 'Kotwali', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(106, 'Lohagara', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(107, 'Mirsharai', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(108, 'Pahartali', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(109, 'Panchlaish', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(110, 'Patiya', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(111, 'Rangunia', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(112, 'Rouzan', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(113, 'Sandwip', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(114, 'Satkania', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(115, 'Sitakunda', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(116, 'Karnaphuli ', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(117, 'Bhujpur', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(118, 'Chattogram Sadar', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(119, 'Bayazid Bostami', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(120, 'Chittagong Epz', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(121, 'Joraganj', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(122, 'Khulshi', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(123, 'Sadarghat', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(124, 'East Joara', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(125, 'Halishahar', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(126, 'Bakalia', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(127, 'Patenga', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(128, 'Alamdanga', 26, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(129, 'Chuadanga Sadar', 26, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(130, 'Chuadanga Sadar', 26, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(131, 'Jibannagar', 26, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(132, 'Jiban Nagar', 26, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(133, 'Doulatganj', 26, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(134, 'Barura', 18, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(135, 'Brahmanpara', 18, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(136, 'Burichang', 18, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(137, 'Chandina', 18, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(138, 'Chauddagram', 18, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(139, 'Cumilla Adarsha Sadar', 18, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(140, 'Cumilla Sadar Dakshin', 18, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(141, 'Daudkandi', 18, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(142, 'Debidwar', 18, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(143, 'Homna', 18, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(144, 'Laksam', 18, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(145, 'Meghna', 18, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(146, 'Monohargonj', 18, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(147, 'Muradnagar', 18, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(148, 'Nangalkot', 18, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(149, 'Titas', 18, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(150, 'Bangora Bazar', 18, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(151, 'Manoharganj', 18, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(152, 'Lalmai', 18, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(153, 'Chakaria', 24, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(154, 'Cox\'s Bazar Sadar', 24, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(155, 'Kutubdia', 24, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(156, 'Maheshkhali', 24, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(157, 'Pekua', 24, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(158, 'Ramu', 24, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(159, 'Teknaf', 24, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(160, 'Ukhia', 24, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(161, 'Gorakghat', 24, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(162, 'Chiringga', 24, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(163, 'Adabor', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(164, 'Badda', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(165, 'Bangsal', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(166, 'Bimanbandar', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(167, 'Cantonment', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(168, 'Chak Bazar', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(169, 'Dakshinkhan', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(170, 'Darus Salam', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(171, 'Demra', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(172, 'Dhamrai', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(173, 'Dhanmondi', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(174, 'Dohar.', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(175, 'Gendaria', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(176, 'Gulshan', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(177, 'Hazaribagh', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(178, 'Jatrabari', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(179, 'Kadamtali', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(180, 'Kafrul', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(181, 'Kalabagan', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(182, 'Kamrangirchar', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(183, 'Keraniganj', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(184, 'Khilgaon', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(185, 'Khilkhet', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(186, 'Kotwali', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(187, 'Lalbagh', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(188, 'Mirpur', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(189, 'Mohakhali', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(190, 'Mohammadpur', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(191, 'Motijheel', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(192, 'Nawabganj', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(193, 'Natun Bazar', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(194, 'Pallabi', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(195, 'Paltan', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(196, 'Ramna', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(197, 'Rampura', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(198, 'Sabujbagh', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(199, 'Savar', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(200, 'Shah Ali', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(201, 'Shahbag', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(202, 'Sher-e-Bangla Nagar', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(203, 'Shyampur', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(204, 'Sutrapur', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(205, 'Tejgaon', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(206, 'Tejgaon Industrial Area', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(207, 'Turag', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(208, 'Uttar Khan', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(209, 'Uttara', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(210, 'Joypara', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(211, 'Ashulia', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(212, 'Rupnagar', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(213, 'Shahjahanpur', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(214, 'Shahjalal Airport', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(215, 'Uttara East', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(216, 'Uttara West', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(217, 'Vatara', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(218, 'Wari', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(219, 'Dakshin Khan', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(220, 'Dhaka Railway', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(221, 'Mugda', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(222, 'New Market', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(223, 'South Keraniganj', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(224, 'Bhashantek', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(225, 'New Market TSO', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(226, 'Shantinagar', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(227, 'Banani', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(228, 'Mugdapara', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(229, 'Shankar', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(230, 'Kawran Bazar', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(231, 'Banglamotor', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(232, 'Kakrail', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(233, 'Biral', 58, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(234, 'Birampur', 58, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(235, 'Birganj', 58, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(236, 'Bochaganj', 58, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(237, 'Chirirbandar', 58, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(238, 'Dinajpur Sadar', 58, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(239, 'Ghoraghat', 58, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(240, 'Hakimpur', 58, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(241, 'Kaharole', 58, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(242, 'Khansama', 58, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(243, 'Nawabganj', 58, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(244, 'Parbatipur', 58, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(245, 'Phulbari', 58, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(246, 'Setabganj', 58, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(247, 'Osmanpur', 58, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(248, 'Maharajganj', 58, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(249, 'Bangla Hili', 58, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(250, 'Alfadanga', 9, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(251, 'Bhanga', 9, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(252, 'Boalmari', 9, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(253, 'Charbhadrasan ', 9, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(254, 'Faridpur Sadar', 9, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(255, 'Madhukhali', 9, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(256, 'Nagarkanda', 9, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(257, 'Sadarpur', 9, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(258, 'Saltha', 9, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(259, 'Sundarpur', 9, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(260, 'Shriangan', 9, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(261, 'Chhagalnaiya', 16, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(262, 'Daganbhuiyan', 16, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(263, 'Feni Sadar', 16, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(264, 'Fulgazi', 16, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(265, 'Parshuram', 16, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(266, 'Sonagazi', 16, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(267, 'Gaibandha Sadar', 61, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(268, 'Gobindaganj', 61, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(269, 'Palashbari', 61, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(270, 'Phulchhari', 61, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(271, 'Saadullapur', 61, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(272, 'Sughatta', 61, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(273, 'Sundarganj', 61, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(274, 'Bonarpara', 61, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(275, 'Gazipur Sadar', 2, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(276, 'Kaliakair', 2, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(277, 'Kaliganj', 2, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(278, 'Kapasia', 2, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(279, 'Sreepur', 2, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(280, 'Tongi', 2, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(281, 'Monnunagar', 2, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(282, 'Ostagram', 2, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(283, 'Kashimpur', 2, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(284, 'Gopalganj Sadar', 10, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(285, 'Kashiani', 10, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(286, 'Kotalipara', 10, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(287, 'Muksudpur', 10, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(288, 'Tungipara', 10, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(289, 'Joydebpur', 10, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(290, 'Azmireeganj ', 35, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(291, 'Bahubal', 35, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(292, 'Baniachong', 35, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(293, 'Chunarughat', 35, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(294, 'Habiganj Sadar', 35, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(295, 'Lakhai', 35, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(296, 'Madhabpur', 35, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(297, 'Nabiganj', 35, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(298, 'Shayestaganj', 35, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(299, 'Kalauk', 35, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(300, 'Bakshiganj', 41, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(301, 'Dewanganj', 41, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(302, 'Islampur', 41, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(303, 'Jamalpur Sadar', 41, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(304, 'Madarganj', 41, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(305, 'Melandaha', 41, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(306, 'Sarishabari', 41, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(307, 'River Thana Bahadurabad', 41, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(308, 'Abhaynagar', 27, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(309, 'Bagherpara', 27, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(310, 'Chaugachha', 27, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(311, 'Jashore Sadar', 27, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(312, 'Jhikargachha', 27, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(313, 'Keshabpur', 27, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(314, 'Manirampur', 27, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(315, 'Sharsha', 27, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(316, 'Jhalokati Sadar', 54, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(317, 'Kathalia', 54, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(318, 'Nalchhiti', 54, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(319, 'Rajapur', 54, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(320, 'Harinakundu', 28, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(321, 'Jhenaidah Sadar', 28, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(322, 'Kaliganj', 28, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(323, 'Kotchandpur', 28, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(324, 'Maheshpur', 28, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(325, 'Shailkupa', 28, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(326, 'Benapole Port', 28, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(327, 'Akkelpur', 50, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(328, 'Joypurhat Sadar', 50, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(329, 'Kalai', 50, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(330, 'Khetlal', 50, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(331, 'Panchbibi', 50, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(332, 'Dighinala', 21, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(333, 'Khagrachhari', 21, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(334, 'Lakshmichhari', 21, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(335, 'Mahalchhari', 21, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(336, 'Manikchhari', 21, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(337, 'Matiranga', 21, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(338, 'Panchhari', 21, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(339, 'Ramgarh', 21, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(340, 'Guimara', 21, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(341, 'Khagrachhari Sadar', 21, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(342, 'Batiaghata', 29, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(343, 'Dacope', 29, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(344, 'Daulatpur', 29, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(345, 'Dighalia', 29, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(346, 'Dumuria', 29, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(347, 'Harintana', 29, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(348, 'Khalishpur', 29, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(349, 'Khan Jahan Ali', 29, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(350, 'Kotwali', 29, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(351, 'Koyra', 29, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(352, 'Paikgachha', 29, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(353, 'Phultala', 29, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(354, 'Rupsha', 29, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(355, 'Sonadanga', 29, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(356, 'Terokhada', 29, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(357, 'Khulna Sadar', 29, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(358, 'Aronghata', 29, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(359, 'Labanchora', 29, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(360, 'Astagram', 3, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(361, 'Bajitpur', 3, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(362, 'Bhairab', 3, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(363, 'Hossainpur', 3, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(364, 'Itna', 3, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(365, 'Karimganj', 3, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(366, 'Katiadi', 3, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(367, 'Kishoreganj Sadar', 3, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(368, 'Kuliarchar', 3, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(369, 'Mithamain', 3, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(370, 'Nikli', 3, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(371, 'Pakundia', 3, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(372, 'Tarail', 3, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(373, 'Bhurungamari', 59, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(374, 'Char Rajibpur', 59, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(375, 'Chilmari', 59, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(376, 'Kurigram Sadar', 59, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(377, 'Nageshwari', 59, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(378, 'Phulbari', 59, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(379, 'Rajarhat', 59, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(380, 'Roumari', 59, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(381, 'Ulipur', 59, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(382, 'Dusmara', 59, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(383, 'Kachakata', 59, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(384, 'Rajibpur', 59, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(385, 'Bheramara', 30, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(386, 'Daulatpur', 30, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(387, 'Khoksa', 30, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(388, 'Kumarkhali', 30, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(389, 'Kushtia Sadar', 30, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(390, 'Mirpur', 30, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(391, 'Shekhpara', 30, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(392, 'Islamic University', 30, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(393, 'Rafayetpur', 30, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(394, 'Aditmari', 64, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(395, 'Hatibandha', 64, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(396, 'Kaliganj', 64, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(397, 'Lalmonirhat Sadar', 64, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(398, 'Patgram', 64, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(399, 'Tushbhandar', 64, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(400, 'Kamalnagar', 20, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(401, 'Lakshmipur Sadar', 20, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(402, 'Raipur', 20, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(403, 'Ramganj', 20, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(404, 'Ramgati', 20, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(405, 'Char Alexgander', 20, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(406, 'Kalkini', 11, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(407, 'Madaripur Sadar', 11, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(408, 'Rajoir', 11, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(409, 'Shibchar', 11, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(410, 'Dashar', 11, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(411, 'Barhamganj', 11, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(412, 'Magura Sadar', 31, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(413, 'Mohammadpur', 31, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(414, 'Shalikha', 31, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(415, 'Sreepur', 31, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(416, 'Arpara', 31, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(417, 'Daulatpur', 4, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(418, 'Ghior', 4, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(419, 'Harirampur', 4, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(420, 'Manikganj Sadar', 4, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(421, 'Saturia', 4, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(422, 'Shivalaya', 4, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(423, 'Singair', 4, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(424, 'Gangni', 32, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(425, 'Meherpur Sadar', 32, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(426, 'Mujibnagar', 32, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(427, 'Baralekha', 36, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(428, 'Juri', 36, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(429, 'Kamalganj', 36, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(430, 'Kulaura', 36, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(431, 'Moulvibazar Sadar', 36, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(432, 'Rajnagar', 36, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(433, 'Sreemangal', 36, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(434, 'Gazaria', 5, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(435, 'Lohajang', 5, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(436, 'Munshiganj Sadar', 5, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(437, 'Sirajdikhan', 5, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(438, 'Sreenagar', 5, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(439, 'Tongibari', 5, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(440, 'Bhaluka', 39, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(441, 'Dhobaura', 39, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(442, 'Fulbaria', 39, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(443, 'Gaffargaon', 39, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(444, 'Gouripur', 39, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(445, 'Haluaghat', 39, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(446, 'Isshwargonj', 39, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(447, 'Muktagachha', 39, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(448, 'Mymensingh Sadar', 39, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(449, 'Nandail', 39, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(450, 'Phulpur', 39, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(451, 'Tara Khanda', 39, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(452, 'Trishal', 39, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(453, 'Tarakanda', 39, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(454, 'Atrai', 45, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(455, 'Badalgachhi', 45, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(456, 'Dhamoirhat', 45, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(457, 'Manda', 45, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(458, 'Mohadevpur', 45, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(459, 'Naogaon Sadar', 45, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(460, 'Niamatpur', 45, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(461, 'Patnitala', 45, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(462, 'Porsa', 45, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(463, 'Raninagar', 45, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(464, 'Sapahar', 45, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(465, 'Prasadpur', 45, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(466, 'Nitpur', 45, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(467, 'Ahsanganj', 45, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(468, 'Kalia', 33, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(469, 'Lohagora', 33, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(470, 'Naragati', 33, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(471, 'Narail Sadar', 33, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(472, 'Naragathi', 33, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(473, 'Mohajan', 33, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(474, 'Laxmipasha', 33, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(475, 'Araihazar', 6, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(476, 'Bandar', 6, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(477, 'Narayanganj Sadar', 6, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(478, 'Rupganj', 6, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(479, 'Sonargaon', 6, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(480, 'Fatullah', 6, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(481, 'Siddirganj', 6, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(482, 'Baidder Bazar', 6, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(483, 'Belabo', 7, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(484, 'Monohardi', 7, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(485, 'Narsingdi Sadar', 7, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(486, 'Palash', 7, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(487, 'Raipura', 7, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(488, 'Shibpur', 7, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(489, 'Bagatipara', 44, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(490, 'Baraigram', 44, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(491, 'Gurudaspur', 44, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(492, 'Lalpur', 44, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(493, 'Naldanga', 44, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(494, 'Natore Sadar', 44, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(495, 'Singra', 44, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(496, 'Laxman', 44, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(497, 'Harua', 44, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(498, 'Atpara', 40, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(499, 'Barhatta', 40, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(500, 'Durgapur', 40, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(501, 'Kalmakanda', 40, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(502, 'Kendua', 40, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(503, 'Khaliajhri', 40, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(504, 'Madan', 40, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(505, 'Mohanganj', 40, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(506, 'Netrakona Sadar', 40, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(507, 'Purbadhola', 40, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(508, 'Moddoynagar', 40, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(509, 'Dhobaura', 40, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(510, 'Susnng Durgapur', 40, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(511, 'Dimla', 60, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(512, 'Domar', 60, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(513, 'Jaldhaka', 60, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(514, 'Kishoriganj', 60, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(515, 'Nilphamari Sadar', 60, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(516, 'Saidpur', 60, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(517, 'Begumganj', 15, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(518, 'Chatkhil', 15, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(519, 'Companiganj', 15, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(520, 'Hatiya', 15, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(521, 'Kabirhat', 15, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(522, 'Noakhali Sadar', 15, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(523, 'Senbag', 15, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(524, 'Sonaimuri', 15, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(525, 'Subarnachar', 15, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(526, 'Char Jabbar', 15, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(527, 'Sudharam', 15, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(528, 'Basur Hat', 15, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(529, 'Ataikula', 47, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(530, 'Atgharia', 47, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(531, 'Bera', 47, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(532, 'Bhangura', 47, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(533, 'Chatmohar', 47, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(534, 'Faridpur', 47, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(535, 'Ishwardi', 47, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(536, 'Pabna Sadar', 47, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(537, 'Sathia', 47, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(538, 'Sujanagar', 47, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(539, 'Aminpur', 47, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(540, 'Debottar', 47, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(541, 'Banwarinagar', 47, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(542, 'Atwari', 63, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(543, 'Boda', 63, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(544, 'Dabiganj', 63, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(545, 'Panchagar Sadar', 63, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(546, 'Tetulia', 63, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(547, 'Chotto Dab', 63, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(548, 'Bauphal', 55, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(549, 'Dashmina', 55, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(550, 'Dumki', 55, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(551, 'Galachipa', 55, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(552, 'Kalapara', 55, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(553, 'Mirzaganj', 55, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(554, 'Patuakhali Sadar', 55, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(555, 'Rangabali', 55, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(556, 'Khepupara', 55, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(557, 'Subidkhali', 55, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(558, 'Mohipur', 55, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(559, 'Bhandaria', 56, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(560, 'Kaukhali ', 56, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(561, 'Mathbaria', 56, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(562, 'Nazirpur', 56, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(563, 'Nesarabad', 56, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(564, 'Pirojpur Sadar', 56, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(565, 'Zianagor', 56, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(566, 'Swarupkathi', 56, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(567, 'Indurkani', 56, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(568, 'Zianagar', 56, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(569, 'Baliakandi', 12, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(570, 'Goalandaghat', 12, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(571, 'Kalukhali', 12, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(572, 'Pangsha', 12, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(573, 'Rajbari Sadar', 12, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(574, 'Bagha', 43, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(575, 'Bagmara', 43, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(576, 'Boalia', 43, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(577, 'Charghat', 43, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(578, 'Durgapur', 43, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(579, 'Durgapur', 43, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(580, 'Matihar', 43, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(581, 'Mohanpur', 43, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(582, 'Paba', 43, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(583, 'Putia', 43, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(584, 'Rajpara', 43, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(585, 'Shah Mokdum', 43, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(586, 'Tanore', 43, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(587, 'Rajshahi Sadar', 43, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(588, 'Shah Makhdum', 43, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(589, 'Baghaichhari', 22, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(590, 'Barakal', 22, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(591, 'Bilaichari', 22, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(592, 'Jarachhari', 22, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(593, 'Kaptai', 22, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(594, 'Kaukhali ', 22, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(595, 'Langadu', 22, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(596, 'Naniarchar', 22, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(597, 'Rajasthali', 22, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(598, 'Rangamati Sadar', 22, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(599, 'Nanichhar', 22, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(600, 'Marishya', 22, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(601, 'Longachh', 22, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(602, 'Kalampati', 22, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(603, 'Badarganj', 57, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(604, 'Gangachhara', 57, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(605, 'Kaunia', 57, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(606, 'Mithapukur', 57, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(607, 'Pirgachha', 57, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(608, 'Pirganj', 57, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(609, 'Rangpur Sadar', 57, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(610, 'Taraganj', 57, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(611, 'Mitha Pukur', 57, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(612, 'Kotwali', 57, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(613, 'Assasuni', 34, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(614, 'Debhata', 34, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(615, 'Kalaroa', 34, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(616, 'Kaliganj', 34, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(617, 'Satkhira Sadar', 34, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(618, 'Shyamnagar', 34, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(619, 'Tala', 34, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(620, 'Nakipur', 34, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(621, 'Bhedarganj', 13, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(622, 'Damudya', 13, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(623, 'Gosairhat', 13, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(624, 'Naria', 13, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(625, 'Shakhipur', 13, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(626, 'Shariatpur Sadar', 13, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(627, 'Zanjira', 13, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(628, 'Jhenaigati', 42, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(629, 'Nakla', 42, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(630, 'Nalitabari', 42, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(631, 'Sherpur Sadar', 42, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(632, 'Shribardi', 42, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(633, 'Bakshigonj', 42, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(634, 'Belkuchi', 46, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(635, 'Chauhali', 46, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(636, 'Kamarkhanda', 46, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(637, 'Kazipur', 46, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(638, 'Raiganj', 46, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(639, 'Shahjadpur', 46, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(640, 'Sirajganj Sadar', 46, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(641, 'Tarash', 46, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(642, 'Ullapara', 46, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(643, 'Bangabandhu Bridge West', 46, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(644, 'Kamarkanda', 46, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(645, 'Salanga', 46, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(646, 'Dhangora', 46, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(647, 'Baiddya Jam Toil', 46, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(648, 'Bishwamvarpur', 37, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(649, 'Chhatak', 37, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(650, 'Derai', 37, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(651, 'Dharampasha', 37, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(652, 'Dowarabazar', 37, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(653, 'Jagnnathpur', 37, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(654, 'Jamalganj', 37, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(655, 'Dakshin Sunamganj', 37, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(656, 'Sullah', 37, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(657, 'Sunamganj Sadar', 37, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(658, 'Tahirpur', 37, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(659, 'Sachna', 37, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(660, 'Ghungiar', 37, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(661, 'Balaganj', 38, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(662, 'Beanibazar', 38, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(663, 'Bishwanath', 38, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(664, 'Companiganj', 38, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(665, 'Fenchuganj', 38, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(666, 'Golapganj', 38, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(667, 'Goainghat', 38, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(668, 'Jaintapur', 38, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(669, 'Kanaighat', 38, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(670, 'South Shurma', 38, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(671, 'Sylhet Sadar', 38, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(672, 'Jakiganj', 38, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(673, 'Osmani Nagar', 38, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(674, 'Mogla Bazar', 38, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(675, 'Shahporan', 38, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(676, 'Dakshin Surma', 38, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(677, 'Moddho Nagar', 38, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(678, 'Moglabazar', 38, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(679, 'Shahparan (R:)', 38, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(680, 'Basail', 8, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(681, 'Bhuapur', 8, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(682, 'Delduar', 8, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(683, 'Dhanbari', 8, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(684, 'Ghatail', 8, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(685, 'Gopalpur', 8, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(686, 'Kalihati', 8, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(687, 'Madhupur', 8, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(688, 'Mirzapur', 8, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(689, 'Nagarpur', 8, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(690, 'Sakhipur', 8, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(691, 'Tangail Sadar', 8, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(692, 'Bangabandu East Ps', 8, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(693, 'Jamuna Bridge (East)', 8, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(694, 'Kashkawlia', 8, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(695, 'Baliadangi', 62, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(696, 'Haripur', 62, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(697, 'Pirganj', 62, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(698, 'Rani Sankail', 62, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(699, 'Thakurgaon Sadar', 62, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(700, 'Jibanpur', 62, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Male=1,Female=2,Other=3',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` int(11) DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state/district` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` tinyint(4) NOT NULL COMMENT 'Admin=1, User=2',
  `account_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Normal=1, Google=2,Facebook=3',
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Active=1, Inactive=2',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `avatar`, `gender`, `phone`, `address`, `zip`, `city`, `state/district`, `country`, `role`, `account_type`, `provider_id`, `user_currency`, `email_verified_at`, `status`, `remember_token`, `otp`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'admin@admin.com', '$2y$10$efwSt3fHtFRcXx4XnOBMQ.87NqsBArh4aR7REcQrzchUSFHA/nI6q', '', 0, '01715587496', '', NULL, '', '', '', 1, 1, '', NULL, NULL, 1, NULL, '', '2022-12-19 15:34:58', '2024-03-07 21:26:39'),
(2, 'user', 'hello.user', 'user@gmail.com', '$2y$10$2E6MsRe8Xv5nrovIbaHCnuYzL31z5hwMFG8JIMh5GFoCIkVLU7Qfq', '', 0, '01715587497', '', NULL, '', '', '', 2, 1, '', NULL, NULL, 1, NULL, NULL, '2022-12-19 15:34:58', '2022-12-19 15:34:58'),
(3, 'Anik Rahman', 'anik rahman', 'a7604366@gmail.com', '$2y$10$u4lXXPKcqy7XZKN/2VvMfuMK20mM.ch2T2CcjsLKCeOiGFhuet/Uq', 'tamarind-chutney-400gm-1672456074.jpg', 0, '01740829980', 'Road-2', NULL, NULL, NULL, NULL, 2, 1, NULL, NULL, NULL, 1, NULL, NULL, '2022-12-30 20:48:46', '2022-12-30 21:16:24'),
(4, 'Safe Food', 'safefood', 'info@safefood.com.bd', '$2y$10$SqlVnE/JGYhDRQPaeCkxOOvAEHVKPmydQKoBoMuBC/NAACvNU.eQ2', '216664078-962191211212965-4418138603495221714-n-1672677885.png', 0, '01735254294', 'Dhaka', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, NULL, '2023-01-02 21:44:10', '2023-01-02 21:44:45'),
(6, 'Akram Hossain', 'akram hossain', 'arafateyasir1@gmail.com', '$2y$10$VYhm1nHpZUzHBMUgW1BVYOdZOwAJJkBl.20RZA4Zpkq7GpLtgImse', NULL, 0, '01735254299', NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, NULL, NULL, 1, NULL, NULL, '2023-05-22 10:58:58', '2023-05-22 10:58:58'),
(8, 'Mohib', 'mohib', 'mbmohib@gmail.com', '$2y$10$WE6DpSJ5d83Dve7cXQMnMudQ/JiQyMFVJ.e28biw/n1XMfSVqGIwG', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, NULL, NULL, 1, NULL, '016909', '2023-09-20 19:46:48', '2023-11-15 13:57:26'),
(9, 'Abdullah Al-Mamun', 'abdullah al-mamun', 'abdmamun07@gmail.com', '$2y$10$H9GajXUGL4bSosRVwqAQpOb7fHZddZ5BF84EKR.bqKKGWLct0/2Ni', NULL, 0, '01722122899', '132/3C Ahmedbagh, Sabujbagh, Dhaka', NULL, NULL, NULL, NULL, 2, 1, NULL, NULL, NULL, 1, NULL, NULL, '2023-09-21 11:11:30', '2023-09-21 11:12:11'),
(10, 'Jewel Rana', 'jewel rana', 'jewelranambstu@gmail.com', '$2y$10$qPMnFFLs.4e2WnSMJxpGoOZSwgPFJUA9WQ7PPk5fZUnj9MrMoSqza', NULL, 0, '01708595369', 'House no:202, Hazi nagor, demra, Dhaka', NULL, NULL, NULL, NULL, 2, 1, NULL, NULL, NULL, 1, NULL, NULL, '2023-10-03 11:32:12', '2023-10-03 11:33:07'),
(21, 'Sohel', NULL, NULL, NULL, NULL, 0, '01735254290', NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, NULL, NULL, 1, NULL, '', '2023-10-16 13:48:40', '2023-11-15 16:23:36'),
(22, NULL, NULL, NULL, NULL, NULL, 0, '01601224447', NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, NULL, NULL, 2, NULL, NULL, '2023-11-01 18:55:45', '2023-11-01 18:58:51'),
(23, NULL, NULL, NULL, NULL, NULL, 0, '01911205297', NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, NULL, NULL, 1, NULL, NULL, '2023-11-08 15:57:43', '2023-11-08 16:05:23'),
(24, NULL, NULL, NULL, NULL, NULL, 0, '01641195436', NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, NULL, NULL, 1, '298965', NULL, '2023-11-10 06:03:38', '2023-11-10 06:03:38'),
(25, NULL, NULL, NULL, NULL, NULL, 0, '01711123455', NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, NULL, NULL, 1, NULL, '139114', '2023-11-14 17:54:50', '2023-11-15 02:46:10'),
(26, 'Morhsed Habib', NULL, NULL, NULL, NULL, 0, '01735254295', 'Mohammadpur, Dhaka-1207', NULL, NULL, NULL, NULL, 2, 1, NULL, NULL, NULL, 1, NULL, '', '2023-11-15 17:17:55', '2024-02-23 16:48:07'),
(27, NULL, NULL, NULL, NULL, NULL, 0, '01614605256', NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, NULL, NULL, 1, NULL, '', '2023-11-28 01:23:44', '2023-11-28 01:24:15'),
(28, NULL, NULL, NULL, NULL, NULL, 0, '01716920198', NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, NULL, NULL, 1, NULL, '', '2024-02-08 09:31:00', '2024-03-03 11:52:38'),
(29, 'ryerwy', NULL, NULL, NULL, NULL, 0, '01643533365', 'eryr', NULL, NULL, NULL, NULL, 2, 1, NULL, NULL, NULL, 1, NULL, '', '2024-02-12 08:58:21', '2024-02-12 09:03:49'),
(30, 'Apurba Kumar Roy', NULL, NULL, NULL, NULL, 0, '01714345878', 'Testing', NULL, NULL, NULL, NULL, 2, 1, NULL, NULL, NULL, 1, NULL, '', '2024-02-26 09:23:38', '2024-03-06 04:09:02'),
(31, NULL, NULL, NULL, NULL, NULL, 0, '01567942874', NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, NULL, NULL, 1, NULL, '671122', '2024-02-26 14:43:47', '2024-02-26 14:43:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `billing_addresses`
--
ALTER TABLE `billing_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blogs_title_unique` (`title`),
  ADD UNIQUE KEY `blogs_slug_unique` (`slug`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_title_unique` (`title`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `main_menu` (`main_menu`),
  ADD KEY `home_page` (`home_page`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `local_shippings`
--
ALTER TABLE `local_shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `offers_title_unique` (`title`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `productcategories`
--
ALTER TABLE `productcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_title_unique` (`title`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD UNIQUE KEY `products_sku_unique` (`sku`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `brand_id` (`brand_id`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_methods`
--
ALTER TABLE `shipping_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider_images`
--
ALTER TABLE `slider_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `special_categories`
--
ALTER TABLE `special_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `special_categories_title_unique` (`title`),
  ADD UNIQUE KEY `special_categories_slug_unique` (`slug`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thanas`
--
ALTER TABLE `thanas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `billing_addresses`
--
ALTER TABLE `billing_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `local_shippings`
--
ALTER TABLE `local_shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `productcategories`
--
ALTER TABLE `productcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shipping_methods`
--
ALTER TABLE `shipping_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `slider_images`
--
ALTER TABLE `slider_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `special_categories`
--
ALTER TABLE `special_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `thanas`
--
ALTER TABLE `thanas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=701;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD CONSTRAINT `product_attributes_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
