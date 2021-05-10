-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2021 at 12:15 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'vatslagarg99@gmail.com', '$2y$10$wmg.d9FXJsn1aToUcV5huuO5CDRHKXGRXywVn/cJlmzDMqkbF3zS6', '2021-03-21 13:00:00', '2021-03-24 00:27:48');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `is_home` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `image`, `status`, `is_home`, `created_at`, `updated_at`) VALUES
(1, 'nike', '1619247484.jpg', 1, 1, '2021-04-24 01:28:04', '2021-04-24 01:28:04'),
(2, 'adidas', '1619247500.jpg', 1, 1, '2021-04-24 01:28:20', '2021-04-24 01:28:20'),
(3, 'Peter England', '1619248409.jpg', 1, 1, '2021-04-24 01:43:29', '2021-04-24 01:43:29');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_type` enum('Reg','Non-Reg') NOT NULL,
  `qty` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_attr_id` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `user_type`, `qty`, `product_id`, `product_attr_id`, `added_on`) VALUES
(10, 676877816, 'Non-Reg', 1, 4, 4, '2021-05-07 06:14:00'),
(11, 19, 'Reg', 1, 4, 4, '2021-05-07 06:18:17'),
(13, 20, 'Reg', 1, 4, 4, '2021-05-07 06:21:34'),
(14, 21, 'Reg', 1, 1, 1, '2021-05-07 06:24:03'),
(16, 22, 'Reg', 1, 4, 4, '2021-05-08 11:59:05'),
(17, 23, 'Reg', 1, 4, 4, '2021-05-08 12:12:02'),
(18, 24, 'Reg', 1, 4, 4, '2021-05-08 12:13:52'),
(19, 25, 'Reg', 1, 4, 4, '2021-05-08 12:19:58'),
(20, 25, 'Reg', 1, 1, 1, '2021-05-08 12:20:02'),
(21, 26, 'Reg', 1, 4, 4, '2021-05-08 12:20:52'),
(25, 18, 'Reg', 3, 4, 4, '2021-05-10 08:29:55');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_category_id` int(11) NOT NULL,
  `category_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_home` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_slug`, `parent_category_id`, `category_image`, `is_home`, `created_at`, `status`, `updated_at`) VALUES
(1, 'Man', 'mans', 0, '1619247380.jpg', 1, '2021-04-24 01:26:20', 1, '2021-04-24 01:26:20'),
(2, 'women', 'woman', 0, '1619247396.jpg', 1, '2021-04-24 01:26:36', 1, '2021-04-24 01:26:36'),
(3, 'Kids', 'kids', 0, '1619247412.jpg', 1, '2021-04-24 01:26:52', 1, '2021-04-24 01:26:52'),
(4, 'Bags', 'bags', 2, '1619248316.jpg', 1, '2021-04-24 01:41:56', 1, '2021-04-24 01:41:56'),
(5, 'Shoes', 'shoes', 3, '1619250972.jpg', 1, '2021-04-24 02:26:12', 0, '2021-04-24 11:14:21');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `color`, `status`, `created_at`, `updated_at`) VALUES
(1, 'black', 1, '2021-04-24 01:28:29', '2021-04-24 01:28:29'),
(2, 'pink', 1, '2021-04-24 01:28:35', '2021-04-24 01:28:35'),
(3, 'red', 1, '2021-04-24 01:28:41', '2021-04-24 01:28:41'),
(4, 'orange', 1, '2021-04-24 01:43:38', '2021-04-24 01:43:38'),
(5, 'blue', 1, '2021-04-24 01:44:00', '2021-04-24 01:44:00'),
(6, 'green', 1, '2021-04-24 01:44:06', '2021-04-24 01:44:06'),
(7, 'yellow', 1, '2021-04-24 01:44:14', '2021-04-24 01:44:14'),
(8, 'brown', 1, '2021-04-24 01:44:22', '2021-04-24 01:44:22'),
(9, 'purple', 1, '2021-04-24 01:44:29', '2021-04-24 01:44:29');

-- --------------------------------------------------------

--
-- Table structure for table `coupans`
--

CREATE TABLE `coupans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('Value','Per') COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_order_amt` int(11) NOT NULL,
  `is_one_time` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupans`
--

INSERT INTO `coupans` (`id`, `title`, `code`, `value`, `type`, `min_order_amt`, `is_one_time`, `created_at`, `status`, `updated_at`) VALUES
(1, 'winters', 'win2021', '15', 'Per', 500, 1, '2021-04-24 01:29:12', 1, '2021-04-24 01:29:12'),
(2, 'summers', 'sum100', '100', 'Value', 100, 0, '2021-04-24 01:29:27', 1, '2021-04-24 01:29:27'),
(3, 'April Sale', 'APR50', '150', 'Value', 100, 0, '2021-04-24 01:42:59', 0, '2021-04-24 01:42:59');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gstin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `is_verify` int(11) NOT NULL,
  `is_forgot_password` int(11) DEFAULT NULL,
  `rand_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `mobile`, `password`, `address`, `city`, `state`, `zip`, `company`, `gstin`, `status`, `is_verify`, `is_forgot_password`, `rand_id`, `created_at`, `updated_at`) VALUES
(18, 'vatsla garg', 'vatslagarg99@gmail.com', '9928220835', 'eyJpdiI6IlR2MHdIUmh5WDE1Z3NmSkptSXJrNkE9PSIsInZhbHVlIjoiK1I2L1hQY2J5V1hqaUUvK3RuTGd6dz09IiwibWFjIjoiMjMzZDhlYTI4MmI3N2U3ZWMzNzA0ZmIxODcxZTk5ODY2N2QzYzIzOTU5NDhkOTdiYWU4MmYzNjhhMzc1Zjc2MiJ9', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, '', '2021-05-04 19:35:57', '2021-05-04 19:35:57'),
(26, 'vatsla garg', 'sk232599@gmail.com', '7073430760', 'eyJpdiI6IlRkeUtSYjRJMmJqYWtoRUtTQWZHbGc9PSIsInZhbHVlIjoiOHdZaWRQUHIzQ1NzWnEyenVmdTQ3QT09IiwibWFjIjoiOTYyY2E5YzA0Yjg4NDdiN2ZiOTg1Y2ZjODQyMzg3YWNhOTNlZTQ1NzM3YTEwNTFjOGE5Yzc3OGRkMWVkNmIyYSJ9', 'G264/6 vaibhav nagar\r\nbhopalpura road, near lucky palace', 'Select', 'Rajasthan', '311001', NULL, NULL, 1, 1, 0, '446093528', '2021-05-08 06:51:35', '2021-05-08 06:51:35'),
(27, 'Rajeev garg', 'vatsla99@gmail.com', '9414287208', 'eyJpdiI6IjloY1Y1dm5ldElWVytOOGZZdE00YVE9PSIsInZhbHVlIjoiMHBIRm1BemxxaEdRT3JYK0FiOTk4dz09IiwibWFjIjoiZjQxZjE1ZTNmZTE0NDkwYjljNjUxMWFlMGVlZWI0YWEzYmE3MmE3Y2NiOThiNjY3ODhjODUyZDRiNjljOGIwOCJ9', 'G264/6 vaibhav nagar\r\nbhopalpura road, near lucky palace', 'Bhilwara', 'Rajasthan', '311001', NULL, NULL, 1, 1, 0, '818242028', '2021-05-08 06:54:44', '2021-05-08 06:54:44'),
(28, 'shreshth', 'xyz@gmail.com', '9149155883', 'eyJpdiI6ImNpM29JeE45UFBSQjAyYVhhOXAzR2c9PSIsInZhbHVlIjoiZDUrUE43OXNCc2RxWkE4SlQ1em9HQT09IiwibWFjIjoiZmM2YjVmODZhNWNlYzBiMDI2YWQ2NmJkMzlkZWQ3YTVhNWViYmQzMDM1OTc5NTBhMzMzYjE3NWI2NzkxZDA3YSJ9', 'fhghgj', 'mzn', 'UP', '251001', NULL, NULL, 1, 1, 0, '738572547', '2021-05-08 07:02:21', '2021-05-08 07:02:21'),
(29, 'siya', 'siya@gmail.com', '8888888888', 'eyJpdiI6IklKaUdCa1kzd0ZLMW0vRWhBaFhDRGc9PSIsInZhbHVlIjoiSXA2ZkNGTFFlK3pISnZEdGdteVlKdz09IiwibWFjIjoiNGMyMjdiZWVmZWViZjNjN2ZhZDE4NTIwM2NmMTYyNmYyM2NiZTZkMTgxODI1ZTg5Yjc2Mzc3MGE0MTMwNTk5ZSJ9', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, '799746789', '2021-05-10 00:18:38', '2021-05-10 00:18:38'),
(32, 'ram', 'ram@gmail.com', '7777777777', 'eyJpdiI6ImRQdTB5QWdTMTdrNW5IMEJkVENWNVE9PSIsInZhbHVlIjoiYnNMbm12RVh5OEp0MDFneGQ1Lzg0QT09IiwibWFjIjoiMWE3OTU0ZDU3Y2U4ZjQzYWRjMDM5YzRiZDI2YTQ1MmJiNjNmMGU0ZjczYTg2M2ZiNDk2YjhlMzc2Yjc2NzE5NCJ9', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '178484254', '2021-05-10 00:37:51', '2021-05-10 00:37:51'),
(33, 'ram', 'ram2@gmail.com', '7777777777', 'eyJpdiI6Ijh5ZEVmemhVdnptQXAvdlpkRWtrT0E9PSIsInZhbHVlIjoiVzhDWWs2dUtWaXNEd3E2Sm5qL3JPdz09IiwibWFjIjoiYmI5NzFlMTI1OWZhOWI2ZjY4OGIzMzgzMjMxOWY4ZDUzNmMxMzNjMDg2ZjlhZjhiNWZlZjk4ZDBiYzFlYzE1NCJ9', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '449597252', '2021-05-10 00:40:16', '2021-05-10 00:40:16'),
(34, 'frooty', 'fr@gmail.com', '6666666666', 'eyJpdiI6IkgzNWtyaWk1TTlVRHk0Kzg1NkQ0dmc9PSIsInZhbHVlIjoicWVrSFhkbVhWeTFNaDExQWRSVXUxUT09IiwibWFjIjoiYzQzNjg3YzA5ZThlYTIzOTM3ODEzMjYwOWVmZjQyMjZmYWNjMjhmYTIwNzRlYWExNzkxYzU1M2U4M2E0N2EyZCJ9', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '231106333', '2021-05-10 00:42:48', '2021-05-10 00:42:48'),
(35, 'frooty', 'fr2@gmail.com', '6767676767', 'eyJpdiI6InFMdGxHYzhNYnphY0UwQzh4dm5wcUE9PSIsInZhbHVlIjoia3Vza2hKTDNhcnUvZnVHWkhvcnloZz09IiwibWFjIjoiNTJkNzIwYTQ2YjFkOWM1OTkxM2FlMzM1NjA5Y2Y3MDAyN2FkNDVlZDg5MmFlZjg3OTVhMmZiZmIzMDYwODg1NiJ9', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '164546262', '2021-05-10 00:43:59', '2021-05-10 00:43:59'),
(36, 'f', 'f45@gmail.com', '2323232323', 'eyJpdiI6IkRkeWpFbGsrbkxESHhYMGFqVC9jN2c9PSIsInZhbHVlIjoiQkd5S0puZVZyTlZXaEZEMWx6azh5UT09IiwibWFjIjoiMWE5OTQ1MDdmM2VjMGYxMWExYTc4MmJhMzE1ZDgwYzc5Yzk1ODM2MjA5OTZhMDFiZDY3ZTUwM2RmZGY0NDMwZiJ9', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '538324647', '2021-05-10 00:49:15', '2021-05-10 00:49:15'),
(37, 'vatsla garg', 'vatslagarg79@gmail.com', '9928220835', 'eyJpdiI6Ikk0aGgvS0FOM2NoeDhKbWhQblQ3NWc9PSIsInZhbHVlIjoiWFIvS0pLUERST1oxcjVCVFBOMW1QY1J1OEhIMFk1eStxMGREamhNa2p5ND0iLCJtYWMiOiJiMzEzZjhiNTNkNjQ0MTY0MjkwZjkyNjg2ZmIwZmZkYjNmZjBjZGFjY2EzZWFmZjViNjAwMThhODhlN2U5Mjk2In0=', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, '838355270', '2021-05-10 00:51:42', '2021-05-10 00:51:42'),
(38, 'fg', 'fg@gmail.com', '2222222222', 'eyJpdiI6Ijhwem1iSWNOTU5kOUtMRnZ0aVp5OWc9PSIsInZhbHVlIjoiRGxvVXBIZzhHK3ZqeDVPT0tqS1pjUT09IiwibWFjIjoiMDliZmUwZWUwZTQzZTRmZjBjZWFlODYyZThkNGNhOTdhMjA4OTEyNmQ2N2YxNDljZTdlNjE5YzkzNTZkNDA4ZCJ9', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, '749113014', '2021-05-10 00:52:50', '2021-05-10 00:52:50');

-- --------------------------------------------------------

--
-- Table structure for table `home_banners`
--

CREATE TABLE `home_banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `btn_txt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_banners`
--

INSERT INTO `home_banners` (`id`, `image`, `btn_txt`, `btn_link`, `status`, `created_at`, `updated_at`) VALUES
(1, '1619247961.jpg', 'SHOP NOW', 'http://google.com', 1, '2021-04-24 01:36:01', '2021-04-24 01:36:01'),
(2, '1619247973.jpg', NULL, NULL, 1, '2021-04-24 01:36:13', '2021-04-24 01:36:13');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `pincode` varchar(25) NOT NULL,
  `coupan_code` varchar(50) DEFAULT NULL,
  `coupan_value` int(11) DEFAULT NULL,
  `order_status` int(11) NOT NULL,
  `payment_type` enum('COD','Gateway') NOT NULL,
  `payment_status` varchar(50) NOT NULL,
  `payment_id` varchar(50) DEFAULT NULL,
  `txn_id` varchar(100) DEFAULT NULL,
  `total_amt` int(11) NOT NULL,
  `track_details` text DEFAULT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customers_id`, `name`, `email`, `mobile`, `address`, `city`, `state`, `pincode`, `coupan_code`, `coupan_value`, `order_status`, `payment_type`, `payment_status`, `payment_id`, `txn_id`, `total_amt`, `track_details`, `added_on`) VALUES
(1, 18, 'vatsla  garg', 'vatslagarg99@gmail.com', '9999999999', 'sddfgfhg', 'Bhilwara', 'Rajasthan', '311001', 'sum100', 100, 1, 'COD', 'Success', NULL, '', 8794, 'reached jaipur', '2021-05-07 08:31:13'),
(2, 18, 'vatsla  garg', 'vatslagarg99@gmail.com', '9928220835', 'fhghgj', 'Bhilwara', 'Rajasthan', '311001', NULL, 0, 1, 'Gateway', 'Pending', NULL, NULL, 799, NULL, '2021-05-07 05:33:36'),
(3, 18, 'vatsla  garg', 'vatslagarg99@gmail.com', '9928220835', 'fhghgj', 'Bhilwara', 'Rajasthan', '311001', NULL, 0, 1, 'Gateway', 'Pending', NULL, NULL, 799, NULL, '2021-05-07 05:33:58'),
(4, 18, 'vatsla garg', 'vatslagarg99@gmail.com', '9928220835', 'G264/6 vaibhav nagar\r\nbhopalpura road, near lucky palace', 'Bhilwara', 'Rajasthan', '311001', NULL, 0, 1, 'Gateway', 'Success', 'MOJO1507A05A20307005', '17628184af5e40aba072c36be49398b9', 799, NULL, '2021-05-07 05:35:07'),
(5, 19, 'Rajeev garg', 'vatsla99@gmail.com', '09414287208', 'G264/6 vaibhav nagar\r\nbhopalpura road, near lucky palace', 'Bhilwara', 'Rajasthan', '311001', NULL, 0, 1, 'Gateway', 'Pending', NULL, NULL, 0, NULL, '2021-05-07 06:14:32'),
(6, 19, 'Rajeev garg', 'vatsla99@gmail.com', '09414287208', 'G264/6 vaibhav nagar\r\nbhopalpura road, near lucky palace', 'Bhilwara', 'Rajasthan', '311001', NULL, 0, 1, 'Gateway', 'Pending', NULL, NULL, 0, NULL, '2021-05-07 06:14:54'),
(7, 20, 'Rajeev garg', 'vatsla99@gmail.com', '9414287208', 'G264/6 vaibhav nagar\r\nbhopalpura road, near lucky palace', 'Bhilwara', 'Rajasthan', '311001', NULL, 0, 1, 'Gateway', 'Pending', NULL, 'ea6a28e4563041dd95c863b1f38e99a1', 1999, NULL, '2021-05-07 06:19:30'),
(8, 20, 'Rajeev garg', 'vatsla99@gmail.com', '9414287208', 'G264/6 vaibhav nagar\r\nbhopalpura road, near lucky palace', 'Bhilwara', 'Rajasthan', '311001', NULL, 0, 1, 'Gateway', 'Pending', NULL, NULL, 0, NULL, '2021-05-07 06:19:55'),
(9, 20, 'Rajeev garg', 'vatsla99@gmail.com', '9414287208', 'G264/6 vaibhav nagar\r\nbhopalpura road, near lucky palace', 'Bhilwara', 'Rajasthan', '311001', NULL, 0, 1, 'Gateway', 'Pending', NULL, NULL, 0, NULL, '2021-05-07 06:20:16'),
(10, 20, 'Rajeev garg', 'vatsla99@gmail.com', '9414287208', 'G264/6 vaibhav nagar\r\nbhopalpura road, near lucky palace', 'Bhilwara', 'Rajasthan', '311001', NULL, 0, 1, 'Gateway', 'Pending', NULL, NULL, 0, NULL, '2021-05-07 06:20:21'),
(11, 20, 'Rajeev garg', 'vatsla99@gmail.com', '9414287208', 'G264/6 vaibhav nagar\r\nbhopalpura road, near lucky palace', 'Bhilwara', 'Rajasthan', '311001', NULL, 0, 1, 'Gateway', 'Pending', NULL, NULL, 1999, NULL, '2021-05-07 06:21:47'),
(12, 21, 'Rajeev garg', 'vatsla99@gmail.com', '9414287208', 'G264/6 vaibhav nagar\r\nbhopalpura road, near lucky palace', 'Bhilwara', 'Rajasthan', '311001', NULL, 0, 1, 'Gateway', 'Pending', NULL, NULL, 599, NULL, '2021-05-07 06:24:26'),
(13, 21, 'Rajeev garg', 'vatsla99@gmail.com', '9414287208', 'G264/6 vaibhav nagar\r\nbhopalpura road, near lucky palace', 'Bhilwara', 'Rajasthan', '311001', NULL, 0, 1, 'Gateway', 'Pending', NULL, NULL, 599, NULL, '2021-05-07 06:24:45'),
(14, 21, 'Rajeev garg', 'vatsla99@gmail.com', '9414287208', 'G264/6 vaibhav nagar\r\nbhopalpura road, near lucky palace', 'Bhilwara', 'Rajasthan', '311001', NULL, 0, 1, 'COD', 'Pending', NULL, NULL, 599, NULL, '2021-05-07 06:25:27'),
(15, 21, 'Rajeev garg', 'vatsla99@gmail.com', '9414287208', 'G264/6 vaibhav nagar\r\nbhopalpura road, near lucky palace', 'Bhilwara', 'Rajasthan', '311001', NULL, 0, 1, 'COD', 'Pending', NULL, NULL, 599, NULL, '2021-05-07 06:25:28'),
(16, 21, 'Rajeev garg', 'vatsla99@gmail.com', '9414287208', 'G264/6 vaibhav nagar\r\nbhopalpura road, near lucky palace', 'Bhilwara', 'Rajasthan', '311001', NULL, 0, 1, 'COD', 'Pending', NULL, NULL, 599, NULL, '2021-05-07 06:25:29'),
(17, 21, 'Rajeev garg', 'vatsla99@gmail.com', '9414287208', 'G264/6 vaibhav nagar\r\nbhopalpura road, near lucky palace', 'Bhilwara', 'Rajasthan', '311001', NULL, 0, 1, 'COD', 'Pending', NULL, NULL, 599, NULL, '2021-05-07 06:25:29'),
(18, 21, 'Rajeev garg', 'vatsla99@gmail.com', '9414287208', 'G264/6 vaibhav nagar\r\nbhopalpura road, near lucky palace', 'Bhilwara', 'Rajasthan', '311001', NULL, 0, 1, 'Gateway', 'Pending', NULL, NULL, 599, NULL, '2021-05-07 06:25:42'),
(19, 21, 'Rajeev garg', 'vatsla99@gmail.com', '9414287208', 'G264/6 vaibhav nagar\r\nbhopalpura road, near lucky palace', 'Bhilwara', 'Rajasthan', '311001', NULL, 0, 1, 'COD', 'Pending', NULL, NULL, 599, NULL, '2021-05-07 06:25:56'),
(20, 21, 'Rajeev garg', 'vatsla99@gmail.com', '9414287208', 'G264/6 vaibhav nagar\r\nbhopalpura road, near lucky palace', 'Bhilwara', 'Rajasthan', '311001', NULL, 0, 1, 'COD', 'Pending', NULL, NULL, 599, NULL, '2021-05-07 06:25:57'),
(21, 21, 'Rajeev garg', 'vatsla99@gmail.com', '9414287208', 'G264/6 vaibhav nagar\r\nbhopalpura road, near lucky palace', 'Bhilwara', 'Rajasthan', '311001', NULL, 0, 1, 'COD', 'Pending', NULL, NULL, 599, NULL, '2021-05-07 06:25:57'),
(22, 18, 'vatsla garg', 'vatslagarg99@gmail.com', '9928220835', 'G264/6 vaibhav nagar\r\nbhopalpura road, near lucky palace', 'Bhilwara', 'Rajasthan', '311001', NULL, 0, 1, 'Gateway', 'Pending', NULL, NULL, 200, NULL, '2021-05-07 06:26:46'),
(23, 18, 'vatsla garg', 'vatslagarg99@gmail.com', '9928220835', 'G264/6 vaibhav nagar\r\nbhopalpura road, near lucky palace', 'Bhilwara', 'Rajasthan', '311001', NULL, 0, 1, 'Gateway', 'Pending', NULL, NULL, 200, NULL, '2021-05-07 06:27:04'),
(24, 18, 'vatsla garg', 'vatslagarg99@gmail.com', '9928220835', 'G264/6 vaibhav nagar\r\nbhopalpura road, near lucky palace', 'Bhilwara', 'Rajasthan', '311001', NULL, 0, 1, 'Gateway', 'Pending', NULL, NULL, 200, NULL, '2021-05-07 06:32:36'),
(25, 18, 'vatsla garg', 'vatslagarg99@gmail.com', '9928220835', 'G264/6 vaibhav nagar\r\nbhopalpura road, near lucky palace', 'Bhilwara', 'Rajasthan', '311001', NULL, 0, 1, 'Gateway', 'Pending', NULL, NULL, 200, NULL, '2021-05-07 06:32:36'),
(26, 18, 'vatsla garg', 'vatslagarg99@gmail.com', '9928220835', 'G264/6 vaibhav nagar\r\nbhopalpura road, near lucky palace', 'Bhilwara', 'Rajasthan', '311001', NULL, 0, 1, 'Gateway', 'Pending', NULL, NULL, 200, NULL, '2021-05-07 06:32:37'),
(27, 18, 'vatsla garg', 'vatslagarg99@gmail.com', '9928220835', 'G264/6 vaibhav nagar\r\nbhopalpura road, near lucky palace', 'Bhilwara', 'Rajasthan', '311001', NULL, 0, 1, 'Gateway', 'Pending', NULL, NULL, 200, NULL, '2021-05-07 06:32:39'),
(28, 18, 'vatsla garg', 'vatslagarg99@gmail.com', '9928220835', 'efs', 'pilani', 'Rajasthan', '333031', NULL, 0, 1, 'COD', 'Pending', NULL, NULL, 200, NULL, '2021-05-07 06:33:08'),
(29, 18, 'vatsla garg', 'vatslagarg99@gmail.com', '9928220835', 'efs', 'pilani', 'Rajasthan', '333031', NULL, 0, 1, 'Gateway', 'Pending', NULL, NULL, 200, NULL, '2021-05-07 06:33:27'),
(30, 22, 'Rajeev garg', 'vatsla99@gmail.com', '9414287208', 'G264/6 vaibhav nagar\r\nbhopalpura road, near lucky palace', 'Bhilwara', 'Rajasthan', '311001', NULL, 0, 1, 'Gateway', 'Pending', NULL, NULL, 1999, NULL, '2021-05-08 11:59:45'),
(31, 22, 'Rajeev garg', 'vatsla99@gmail.com', '9414287208', 'G264/6 vaibhav nagar\r\nbhopalpura road, near lucky palace', 'Bhilwara', 'Rajasthan', '311001', NULL, 0, 1, 'Gateway', 'Pending', NULL, NULL, 1999, NULL, '2021-05-08 12:03:53'),
(32, 23, 'Rajeev garg', 'vatsla99@gmail.com', '9414287208', 'G264/6 vaibhav nagar\r\nbhopalpura road, near lucky palace', 'Bhilwara', 'Rajasthan', '311001', NULL, 0, 1, 'Gateway', 'Pending', NULL, NULL, 1999, NULL, '2021-05-08 12:12:38'),
(33, 24, 'Rajeev garg', 'vatsla99@gmail.com', '9414287208', 'G264/6 vaibhav nagar\r\nbhopalpura road, near lucky palace', 'Bhilwara', 'Rajasthan', '311001', NULL, 0, 1, 'Gateway', 'Pending', NULL, NULL, 1999, NULL, '2021-05-08 12:14:17'),
(34, 25, 'Rajeev garg', 'vatsla99@gmail.com', '9414287208', 'G264/6 vaibhav nagar\r\nbhopalpura road, near lucky palace', 'Bhilwara', 'Rajasthan', '311001', NULL, 0, 1, 'Gateway', 'Pending', NULL, NULL, 2598, NULL, '2021-05-08 12:20:23'),
(35, 26, 'vatsla garg', 'sk232599@gmail.com', '7073430760', 'G264/6 vaibhav nagar\r\nbhopalpura road, near lucky palace', 'Select', 'Rajasthan', '311001', NULL, 0, 1, 'Gateway', 'Pending', NULL, NULL, 1999, NULL, '2021-05-08 12:21:35'),
(36, 27, 'Rajeev garg', 'vatsla99@gmail.com', '9414287208', 'G264/6 vaibhav nagar\r\nbhopalpura road, near lucky palace', 'Bhilwara', 'Rajasthan', '311001', NULL, 0, 1, 'Gateway', 'Success', 'MOJO1508B05A07166314', 'afff0f7cd08b430caf5840f53571ada9', 1999, NULL, '2021-05-08 12:24:45'),
(37, 18, 'vatsla garg', 'vatslagarg99@gmail.com', '9928220835', 'efs', 'pilani', 'Rajasthan', '333031', NULL, 0, 1, 'Gateway', 'Pending', NULL, NULL, 200, NULL, '2021-05-08 12:26:35'),
(38, 18, 'vatsla garg', 'vatslagarg99@gmail.com', '9928220835', 'efs', 'pilani', 'Rajasthan', '333031', NULL, 0, 1, 'Gateway', 'Pending', NULL, NULL, 200, NULL, '2021-05-08 12:27:11'),
(39, 18, 'vatsla garg', 'vatslagarg99@gmail.com', '9928220835', 'BK Birla Institute Of Engineering And Technology\r\nceeri road, pilani rajasthan', 'pilani', 'Rajasthan', '333031', NULL, 0, 1, 'COD', 'Pending', NULL, NULL, 200, NULL, '2021-05-08 12:27:41'),
(40, 18, 'vatsla garg', 'vatslagarg99@gmail.com', '9928220835', 'efs', 'pilani', 'Rajasthan', '333031', NULL, 0, 1, 'Gateway', 'Success', 'MOJO1508405A07166322', 'd0ffb766b4d74123a7a49062efe17e30', 200, NULL, '2021-05-08 12:29:03'),
(41, 18, 'vatsla garg', 'vatslagarg99@gmail.com', '9928220835', 'efs', 'pilani', 'Rajasthan', '333031', NULL, 0, 3, 'COD', 'Success', NULL, NULL, 1999, NULL, '2021-05-08 12:30:52'),
(42, 28, 'shreshth', 'xyz@gmail.com', '9149155883', 'fhghgj', 'mzn', 'UP', '251001', NULL, 0, 1, 'Gateway', 'Success', 'MOJO1508Q05A07166324', '40d2e54cb74e47dfa1cd7dd89551efa9', 1999, NULL, '2021-05-08 12:32:21');

-- --------------------------------------------------------

--
-- Table structure for table `orders_details`
--

CREATE TABLE `orders_details` (
  `id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `products_attr_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders_details`
--

INSERT INTO `orders_details` (`id`, `orders_id`, `product_id`, `products_attr_id`, `price`, `qty`) VALUES
(1, 1, 1, 1, 599, 1),
(2, 1, 4, 4, 1999, 1),
(3, 1, 1, 1, 599, 1),
(4, 1, 4, 4, 1999, 1),
(5, 1, 2, 2, 1000, 1),
(6, 1, 1, 1, 599, 1),
(7, 1, 4, 4, 1999, 1),
(8, 2, 1, 1, 599, 1),
(9, 2, 3, 3, 200, 1),
(10, 3, 1, 1, 599, 1),
(11, 3, 3, 3, 200, 1),
(12, 4, 1, 1, 599, 1),
(13, 4, 3, 3, 200, 1),
(14, 7, 4, 4, 1999, 1),
(15, 12, 1, 1, 599, 1),
(16, 30, 4, 4, 1999, 1),
(17, 32, 4, 4, 1999, 1),
(18, 33, 4, 4, 1999, 1),
(19, 34, 4, 4, 1999, 1),
(20, 34, 1, 1, 599, 1),
(21, 35, 4, 4, 1999, 1),
(22, 36, 4, 4, 1999, 1),
(23, 40, 3, 3, 200, 1),
(24, 41, 4, 4, 1999, 1),
(25, 42, 4, 4, 1999, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders_status`
--

CREATE TABLE `orders_status` (
  `id` int(11) NOT NULL,
  `orders_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders_status`
--

INSERT INTO `orders_status` (`id`, `orders_status`) VALUES
(1, 'Placed'),
(2, 'On The way'),
(3, 'Delivered');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `technical_specification` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uses` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `warranty` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `lead_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_id` int(11) DEFAULT NULL,
  `is_promo` int(11) NOT NULL,
  `is_featured` int(11) NOT NULL,
  `is_discounted` int(11) NOT NULL,
  `is_tranding` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `image`, `slug`, `brand`, `model`, `short_desc`, `desc`, `keywords`, `technical_specification`, `uses`, `warranty`, `lead_time`, `tax_id`, `is_promo`, `is_featured`, `is_discounted`, `is_tranding`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Polo T Shirt', '1619247675.png', 'polo-t-shirt', '1', 'Polo T Shirt - Nike', '<p>100% Original Products</p>\r\n\r\n<p>Free Delivery on order above Rs 799</p>\r\n\r\n<p>Pay on delivery might be available</p>\r\n\r\n<p>easy 30 days returns and exchanges</p>\r\n\r\n<p>&nbsp;</p>', NULL, 'Polo T Shirt, Polo T Shirt - Nike', NULL, 'T Shirt For Man', 'Easy 30 days returns and exchanges', 'Same day delivery', 1, 0, 1, 1, 1, 1, '2021-04-24 01:31:15', '2021-04-25 07:36:47'),
(2, 2, 'Black Printed Sweatshirt', '1619247760.jpg', 'black sweatshirt', '2', 'Women Black Printed AS W NK ICNCLSH MIDLAYER Sweatshirt', '<p>pqr</p>', '<p>pqr</p>', 'pqr', '<p>pqr</p>', 'pqr', 'pqr', 'pqr', 1, 1, 0, 1, 0, 1, '2021-04-24 01:32:40', '2021-04-24 01:32:40'),
(3, 3, 'Boy\\\'s Thrum K Running Shoes', '1619247865.jpg', 'boys-thrum-running-shoes', '1', 'shoes', '<p>abc</p>', '<p>abc</p>', 'abc', '<p>abc</p>', 'abc', 'abc', 'abc', 1, 1, 1, 1, 1, 1, '2021-04-24 01:34:25', '2021-04-24 01:34:25'),
(4, 1, 'Peter England Blue Shirt', '1619248588.png', 'peter-england-blue-shirt', '3', 'Peter England Blue Shirt', '<p>ilu</p>', '<p>ilu</p>', 'ilu', '<p>ilu</p>', 'ilu', 'ilu', 'ilu', 2, 1, 0, 0, 1, 1, '2021-04-24 01:46:28', '2021-04-24 01:46:28');

-- --------------------------------------------------------

--
-- Table structure for table `products_attr`
--

CREATE TABLE `products_attr` (
  `id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `attr_image` varchar(255) NOT NULL,
  `mrp` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products_attr`
--

INSERT INTO `products_attr` (`id`, `products_id`, `sku`, `attr_image`, `mrp`, `price`, `qty`, `size_id`, `color_id`) VALUES
(1, 1, '1', '680104622.jpg', 999, 599, 100, 1, 7),
(2, 2, '2', '995245554.jpg', 1250, 1000, 10, 1, 1),
(3, 3, '3', '259131478.jpg', 499, 200, 5, 1, 2),
(4, 4, '4', '781957723.png', 2999, 1999, 8, 5, 9),
(5, 1, '6', '222792368.jpg', 999, 599, 10, 4, 9),
(6, 1, '7', '289060052.jpg', 999, 599, 5, 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `images` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `products_id`, `images`) VALUES
(1, 1, '363129916.jpg'),
(2, 2, '161702184.jpg'),
(3, 3, '397454807.jpg'),
(4, 4, '400841085.png'),
(5, 1, '602940319.jpg'),
(6, 1, '505370150.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product_review`
--

CREATE TABLE `product_review` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `rating` varchar(20) NOT NULL,
  `review` text NOT NULL,
  `status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_review`
--

INSERT INTO `product_review` (`id`, `customer_id`, `products_id`, `rating`, `review`, `status`, `added_on`) VALUES
(1, 18, 4, 'Very Good', 'i loved it', 1, '2021-05-09 05:58:22'),
(2, 18, 4, 'Very Good', 'i loved it', 0, '2021-05-09 05:58:25'),
(3, 18, 4, 'Very Good', 'i loved it', 1, '2021-05-09 05:58:37'),
(4, 29, 4, 'Bad', 'poor quality', 0, '2021-05-10 05:53:45'),
(5, 38, 4, 'Fantastic', 'excellent quality', 1, '2021-05-10 06:23:59');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `size`, `status`, `created_at`, `updated_at`) VALUES
(1, 'XL', 1, '2021-04-24 01:28:48', '2021-04-24 01:28:48'),
(2, 'XXL', 1, '2021-04-24 01:28:53', '2021-04-24 01:28:53'),
(3, 'S', 1, '2021-04-24 01:39:45', '2021-04-24 01:39:45'),
(4, 'L', 1, '2021-04-24 01:40:36', '2021-04-24 01:40:36'),
(5, 'M', 1, '2021-04-24 01:40:41', '2021-04-24 01:40:41'),
(6, 'XS', 1, '2021-04-24 01:40:47', '2021-04-24 01:40:47'),
(7, 'XXXL', 1, '2021-04-24 01:41:07', '2021-04-24 01:41:07');

-- --------------------------------------------------------

--
-- Table structure for table `taxs`
--

CREATE TABLE `taxs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tax_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxs`
--

INSERT INTO `taxs` (`id`, `tax_desc`, `tax_value`, `status`, `created_at`, `updated_at`) VALUES
(1, 'GST 18%', '18', 1, '2021-04-24 01:29:46', '2021-04-24 01:29:46'),
(2, 'GST 12%', '12', 1, '2021-04-24 01:44:42', '2021-04-24 01:44:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupans`
--
ALTER TABLE `coupans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_banners`
--
ALTER TABLE `home_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_details`
--
ALTER TABLE `orders_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_status`
--
ALTER TABLE `orders_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_attr`
--
ALTER TABLE `products_attr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_review`
--
ALTER TABLE `product_review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxs`
--
ALTER TABLE `taxs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `coupans`
--
ALTER TABLE `coupans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `home_banners`
--
ALTER TABLE `home_banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `orders_details`
--
ALTER TABLE `orders_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `orders_status`
--
ALTER TABLE `orders_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products_attr`
--
ALTER TABLE `products_attr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_review`
--
ALTER TABLE `product_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `taxs`
--
ALTER TABLE `taxs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
