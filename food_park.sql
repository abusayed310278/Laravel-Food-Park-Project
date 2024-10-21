-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2024 at 03:57 PM
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
-- Database: `food_park`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `main_title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `video_link` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `image`, `title`, `main_title`, `description`, `video_link`, `created_at`, `updated_at`) VALUES
(1, '/uploads/media_6710dd3a7d3b1.jpg', 'Eu molestiae nesciun', 'Ut in nostrum except', 'Sed quae autem ab so', 'https://www.youtube.com/watch?v=yJg-Y5byMMw&ab_channel=NoCopyrightSounds', '2024-10-17 03:47:38', '2024-10-17 05:01:34');

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_area_id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `delivery_area_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `type`, `created_at`, `updated_at`) VALUES
(7, 1, 1, 'Xanthus', 'Pittman', 'zobyw@mailinator.com', '+1 (101) 148-3273', 'Harum pariatur Pari', 'home', '2024-10-09 08:26:06', '2024-10-09 08:26:06'),
(9, 2, 1, 'Chava', 'Curtis', 'bonehew@mailinator.com', '+1 (796) 141-8676', 'Qui consequatur Acc', 'home', '2024-10-09 14:39:29', '2024-10-09 14:39:29'),
(10, 1, 3, 'Cailin', 'Gilbert', 'kojulytyt@mailinator.com', '+1 (219) 761-8611', 'In labore sunt minus', 'office', '2024-10-09 15:24:29', '2024-10-09 15:24:29'),
(11, 2, 5, 'Alexandra', 'Chang', 'qydomaqeto@mailinator.com', '+1 (818) 646-8517', 'Quidem perferendis e', 'office', '2024-10-19 00:46:15', '2024-10-19 00:46:15');

-- --------------------------------------------------------

--
-- Table structure for table `admin_menus`
--

CREATE TABLE `admin_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menus`
--

INSERT INTO `admin_menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'main_menu', NULL, NULL),
(2, 'footer_menu_one', '2023-09-12 23:31:22', '2023-09-12 23:31:22'),
(3, 'footer_menu_two', '2023-09-12 23:34:53', '2023-09-12 23:34:53'),
(4, 'footer_menu_three', '2023-09-12 23:35:29', '2023-09-12 23:35:29');

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu_items`
--

CREATE TABLE `admin_menu_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `label` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `class` varchar(255) DEFAULT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `depth` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menu_items`
--

INSERT INTO `admin_menu_items` (`id`, `label`, `link`, `parent_id`, `sort`, `class`, `menu_id`, `depth`, `created_at`, `updated_at`) VALUES
(2, 'Home', '/', 0, 2, NULL, 2, 0, '2023-09-13 00:00:59', '2023-09-13 00:14:43'),
(3, 'About', '/about', 0, 1, NULL, 2, 0, '2023-09-13 00:02:18', '2023-09-13 00:16:10'),
(4, 'Contact', '/contact', 0, 0, NULL, 2, 0, '2023-09-13 00:03:39', '2023-09-13 00:16:10'),
(5, 'Our Service', '#', 0, 3, NULL, 2, 0, '2023-09-13 00:04:12', '2023-09-13 00:04:12'),
(6, 'More About Us', '#', 0, 4, NULL, 2, 0, '2023-09-13 00:04:27', '2023-09-13 00:04:27'),
(7, 'Trams and Condition', '/trams-and-conditions', 0, 3, NULL, 3, 0, '2023-09-13 00:56:59', '2023-09-13 01:00:59'),
(8, 'Privacy Policy', '/privacy-policy', 0, 2, NULL, 3, 0, '2023-09-13 00:57:29', '2023-09-13 01:00:59'),
(9, 'More', '#', 0, 4, NULL, 3, 0, '2023-09-13 00:59:45', '2023-09-13 01:00:59'),
(10, 'Blogs', '/blogs', 0, 0, NULL, 3, 0, '2023-09-13 01:00:20', '2023-09-13 01:00:56'),
(11, 'Chefs', '/chefs', 0, 1, NULL, 3, 0, '2023-09-13 01:00:41', '2023-09-13 01:01:05'),
(12, 'Contact', '/contact', 0, 0, NULL, 4, 0, '2023-09-13 01:03:56', '2023-09-13 01:04:12'),
(13, 'About', '/about', 0, 1, NULL, 4, 0, '2023-09-13 01:04:11', '2023-09-13 01:04:33'),
(14, 'Blogs', '/bogs', 0, 3, NULL, 4, 0, '2023-09-13 01:04:33', '2023-09-13 01:04:33'),
(15, 'Home', '/', 0, 0, NULL, 1, 0, '2023-09-13 01:21:58', '2023-09-13 01:22:21'),
(16, 'About', '/about', 0, 1, NULL, 1, 0, '2023-09-13 01:22:20', '2023-09-13 01:22:50'),
(17, 'Chefs', '/chef', 23, 6, NULL, 1, 1, '2023-09-13 01:22:49', '2024-10-18 13:30:05'),
(18, 'Blogs', '/blogs', 0, 3, NULL, 1, 0, '2023-09-13 01:23:05', '2024-10-18 13:30:05'),
(19, 'Contact', '/contact', 0, 4, NULL, 1, 0, '2023-09-13 01:23:23', '2024-10-18 13:30:05'),
(20, 'Testimonials', '/testimonials', 23, 7, NULL, 1, 1, '2023-09-13 01:24:10', '2024-10-18 13:30:05'),
(21, 'Privacy Policy', '/privacy-policy', 23, 8, NULL, 1, 1, '2023-09-13 01:24:53', '2024-10-18 13:30:05'),
(22, 'Trams and Conditions', '/trams-and-conditions', 23, 9, NULL, 1, 1, '2023-09-13 01:25:15', '2024-10-18 13:30:05'),
(23, 'Pages', '#', 0, 5, NULL, 1, 0, '2023-09-13 01:26:58', '2024-10-18 13:30:05'),
(24, 'Products', '/products', 0, 2, NULL, 1, 0, '2023-09-13 01:26:58', '2024-10-18 13:30:05');

-- --------------------------------------------------------

--
-- Table structure for table `app_download_sections`
--

CREATE TABLE `app_download_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `background` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `short_description` text NOT NULL,
  `play_store_link` varchar(255) DEFAULT NULL,
  `apple_store_link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_download_sections`
--

INSERT INTO `app_download_sections` (`id`, `image`, `background`, `title`, `short_description`, `play_store_link`, `apple_store_link`, `created_at`, `updated_at`) VALUES
(1, '/uploads/media_6708be80744c2.png', '/uploads/media_6708be807518c.jpg', 'Asperiores sint qui', 'Voluptates eos dolor', 'https://www.facebook.com/', 'https://www.facebook.com/', '2024-10-10 23:58:24', '2024-10-10 23:58:24');

-- --------------------------------------------------------

--
-- Table structure for table `banner_sliders`
--

CREATE TABLE `banner_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `banner` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner_sliders`
--

INSERT INTO `banner_sliders` (`id`, `title`, `sub_title`, `url`, `banner`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Placeat ullam dolor', 'Ex dolor hic laudant', 'Officia laborum Ab', '/uploads/media_67081dbf94322.png', 1, '2024-10-10 12:32:31', '2024-10-10 12:32:31'),
(3, 'Sed fugit reprehend', 'Velit distinctio Al', 'Vel ut et molestiae', '/uploads/media_67081dc925155.png', 1, '2024-10-10 12:32:41', '2024-10-10 12:32:56');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_description` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `user_id`, `category_id`, `image`, `title`, `slug`, `description`, `seo_title`, `seo_description`, `status`, `created_at`, `updated_at`) VALUES
(5, 1, 2, '/uploads/media_670fa88748d59.png', 'Eligendi unde mollit', 'eligendi-unde-mollit', 'Deserunt fuga Quaer', 'In adipisci in et qu', 'Autem vitae consecte', 1, '2024-10-16 05:50:31', '2024-10-16 05:50:39');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Pasta', 'pasta', 1, '2024-10-16 04:03:27', '2024-10-16 04:03:27');

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

CREATE TABLE `blog_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_comments`
--

INSERT INTO `blog_comments` (`id`, `blog_id`, `user_id`, `comment`, `status`, `created_at`, `updated_at`) VALUES
(1, 5, 1, 'ho', 1, '2024-10-17 11:23:32', '2024-10-17 11:23:41');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1',
  `show_at_home` varchar(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `status`, `show_at_home`, `created_at`, `updated_at`) VALUES
(14, 'Burger', 'burger', '1', '1', '2024-09-30 02:37:28', '2024-09-30 02:37:28'),
(15, 'Biryani', 'biryani', '1', '1', '2024-09-30 02:37:41', '2024-09-30 02:37:41'),
(16, 'Chicken', 'chicken', '1', '1', '2024-09-30 02:38:00', '2024-09-30 02:38:00'),
(17, 'Pizza', 'pizza', '1', '1', '2024-09-30 02:38:15', '2024-09-30 02:38:15'),
(18, 'Desserts', 'desserts', '1', '1', '2024-09-30 02:38:27', '2024-09-30 02:38:27');

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` bigint(20) UNSIGNED NOT NULL,
  `receiver_id` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`id`, `sender_id`, `receiver_id`, `message`, `seen`, `created_at`, `updated_at`) VALUES
(77, 7, 1, 'hello', 1, '2024-10-15 10:56:24', '2024-10-15 10:56:40'),
(78, 1, 7, 'ok', 1, '2024-10-15 10:56:43', '2024-10-16 04:52:21'),
(79, 1, 7, 'hey', 1, '2024-10-16 04:51:43', '2024-10-16 04:52:21'),
(80, 1, 7, 'are you ok', 1, '2024-10-16 04:51:52', '2024-10-16 04:52:21'),
(81, 7, 1, 'yes', 1, '2024-10-16 04:52:34', '2024-10-16 04:52:44'),
(82, 7, 1, 'hello', 0, '2024-10-16 05:40:12', '2024-10-16 05:40:12'),
(83, 1, 7, 'are you ok', 0, '2024-10-16 05:40:22', '2024-10-16 05:40:22');

-- --------------------------------------------------------

--
-- Table structure for table `chefs`
--

CREATE TABLE `chefs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `fb` varchar(255) DEFAULT NULL,
  `in` varchar(255) DEFAULT NULL,
  `x` varchar(255) DEFAULT NULL,
  `web` varchar(255) DEFAULT NULL,
  `show_at_home` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chefs`
--

INSERT INTO `chefs` (`id`, `image`, `name`, `title`, `fb`, `in`, `x`, `web`, `show_at_home`, `status`, `created_at`, `updated_at`) VALUES
(2, '/uploads/media_670833c851d02.jpg', 'Kennedy Reynolds', 'Iona Fox', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 1, 1, '2024-10-10 14:06:32', '2024-10-10 14:06:32'),
(3, '/uploads/media_6708a258491b9.jpg', 'Abbot Burnett', 'Vivien Lane', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 1, 1, '2024-10-10 21:58:16', '2024-10-10 21:58:16'),
(4, '/uploads/media_6708a26d00587.jpg', 'Ginger Middleton', 'Burton Noel', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 1, 1, '2024-10-10 21:58:37', '2024-10-10 21:58:37');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone_one` varchar(255) DEFAULT NULL,
  `phone_two` varchar(255) DEFAULT NULL,
  `mail_one` varchar(255) DEFAULT NULL,
  `mail_two` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `map_link` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `phone_one`, `phone_two`, `mail_one`, `mail_two`, `address`, `map_link`, `created_at`, `updated_at`) VALUES
(1, '999856', '0175158', 'feruwyr@mailinator.com', 'saniqi@mailinator.com', 'dhaka', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29199.78758207035!2d90.43684581929195!3d23.819543211524437!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c62fce7d991f%3A0xacfaf1ac8e944c05!2sBasundhara%20Residential%20Area%2C%20Dhaka!5e0!3m2!1sen!2sbd!4v1667021568123!5m2!1sen!2sbd', '2024-10-17 13:57:55', '2024-10-17 14:12:45');

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

CREATE TABLE `counters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `background` varchar(255) NOT NULL,
  `counter_icon_one` varchar(255) NOT NULL,
  `counter_count_one` varchar(255) NOT NULL,
  `counter_name_one` varchar(255) NOT NULL,
  `counter_icon_two` varchar(255) NOT NULL,
  `counter_count_two` varchar(255) NOT NULL,
  `counter_name_two` varchar(255) NOT NULL,
  `counter_icon_three` varchar(255) NOT NULL,
  `counter_count_three` varchar(255) NOT NULL,
  `counter_name_three` varchar(255) NOT NULL,
  `counter_icon_four` varchar(255) NOT NULL,
  `counter_count_four` varchar(255) NOT NULL,
  `counter_name_four` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `counters`
--

INSERT INTO `counters` (`id`, `background`, `counter_icon_one`, `counter_count_one`, `counter_name_one`, `counter_icon_two`, `counter_count_two`, `counter_name_two`, `counter_icon_three`, `counter_count_three`, `counter_name_three`, `counter_icon_four`, `counter_count_four`, `counter_name_four`, `created_at`, `updated_at`) VALUES
(1, '/uploads/media_670f52f98bc0b.jpg', 'fab fa-500px', '50', 'Channing Slater', 'fab fa-accessible-icon', '50', 'Dana Santiago', 'fab fa-accusoft', '50', 'Clementine Alvarado', 'fas fa-ad', '50', 'Gay Kramer', '2024-10-15 23:45:29', '2024-10-16 02:32:37');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `min_purchase_amount` int(11) NOT NULL DEFAULT 0,
  `expire_date` date NOT NULL,
  `discount_type` enum('percent','amount') NOT NULL,
  `discount` double NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `name`, `code`, `quantity`, `min_purchase_amount`, `expire_date`, `discount_type`, `discount`, `status`, `created_at`, `updated_at`) VALUES
(1, 'soluta', 'quidem', 50, 10, '2014-11-29', 'percent', 10, 1, '2024-10-04 09:09:12', '2024-10-04 09:57:04'),
(2, 'consequuntur', 'id', 50, 10, '2023-08-11', 'percent', 10, 1, '2024-10-04 09:09:12', '2024-10-04 09:09:12'),
(4, 'Chancellor Hobbs', 'Non molestiae harum', 276, 20, '1999-03-03', 'amount', 3, 1, '2024-10-04 09:45:40', '2024-10-04 09:45:40'),
(5, 'Hope Hyde', 'Laboris in consectet', 946, 20, '1980-05-31', 'percent', 3, 1, '2024-10-04 09:58:40', '2024-10-04 09:58:40'),
(6, 'Flag50', 'Flag50', 5, 100, '1990-03-22', 'percent', 20, 1, '2024-10-04 11:54:15', '2024-10-04 11:54:15'),
(7, 'Amy Chan', 'Fifty50', 579, 1, '2024-11-17', 'percent', 20, 1, '2024-10-04 14:37:29', '2024-10-05 03:31:46');

-- --------------------------------------------------------

--
-- Table structure for table `custom_page_builders`
--

CREATE TABLE `custom_page_builders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_page_builders`
--

INSERT INTO `custom_page_builders` (`id`, `name`, `slug`, `content`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Price Roach', 'price-roach', 'Facilis reiciendis l', 1, '2024-10-18 14:01:27', '2024-10-18 14:01:27');

-- --------------------------------------------------------

--
-- Table structure for table `daily_offers`
--

CREATE TABLE `daily_offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_areas`
--

CREATE TABLE `delivery_areas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `area_name` varchar(255) NOT NULL,
  `min_delivery_time` varchar(255) NOT NULL,
  `max_delivery_time` varchar(255) NOT NULL,
  `delivery_fee` double NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_areas`
--

INSERT INTO `delivery_areas` (`id`, `area_name`, `min_delivery_time`, `max_delivery_time`, `delivery_fee`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Zachary Howard', '10', '20', 1, 1, '2024-10-05 07:07:23', '2024-10-09 15:51:34'),
(3, 'Shoshana Albert', '10m', '20m', 2, 1, '2024-10-05 11:14:51', '2024-10-09 15:51:43'),
(4, 'Keegan Ford', '5', '10', 3, 1, '2024-10-05 11:15:09', '2024-10-09 15:51:50'),
(5, 'Ayanna Spears', '7', '8', 1, 1, '2024-10-05 11:15:25', '2024-10-09 15:51:57');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `footer_infos`
--

CREATE TABLE `footer_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `short_info` text DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `copyright` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footer_infos`
--

INSERT INTO `footer_infos` (`id`, `short_info`, `address`, `phone`, `email`, `copyright`, `created_at`, `updated_at`) VALUES
(1, 'Esse eligendi culpa', 'Ullamco possimus do', '+1 (126) 866-6945', 'syrohigyqy@mailinator.com', 'Copyright 2024 All Rights Reserved', '2024-10-18 08:37:01', '2024-10-18 10:55:40');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_09_23_074653_create_sliders_table', 1),
(7, '2024_09_27_092015_create_section_titles_table', 2),
(8, '2024_09_27_091449_create_why_choose_us_table', 3),
(9, '2024_09_28_084726_create_categories_table', 4),
(17, '2024_09_28_174233_create_products_table', 5),
(20, '2024_09_29_085259_create_product_galleries_table', 6),
(23, '2024_09_30_063546_create_product_sizes_table', 7),
(24, '2024_09_30_072557_create_product_options_table', 8),
(25, '2024_09_30_183604_create_settings_table', 9),
(26, '2024_10_04_141701_create_coupons_table', 10),
(27, '2024_10_05_123858_create_delivery_areas_table', 11),
(28, '2024_10_05_144120_create_addresses_table', 12),
(29, '2024_10_08_022501_create_orders_table', 13),
(30, '2024_10_08_022756_create_order_items_table', 13),
(32, '2024_10_08_043235_create_payment_gateway_settings_table', 14),
(33, '2024_10_10_175156_create_banner_sliders_table', 15),
(34, '2024_10_10_192632_create_chefs_table', 16),
(35, '2024_10_11_054532_create_app_download_sections_table', 17),
(36, '2024_10_11_083351_create_testimonials_table', 18),
(38, '2024_10_12_035131_add_address_id_table', 19),
(39, '2024_10_13_185944_create_order_placed_notifications_table', 20),
(40, '2024_10_14_050814_create_chats_table', 21),
(41, '2024_10_15_172304_create_daily_offers_table', 22),
(42, '2024_10_16_045955_create_counters_table', 23),
(44, '2024_10_16_090214_create_blog_categories_table', 24),
(45, '2024_10_16_102630_create_blogs_table', 25),
(46, '2024_10_17_041957_create_abouts_table', 26),
(47, '2024_10_17_155222_create_blog_comments_table', 27),
(48, '2024_10_17_173206_create_privacy_policies_table', 28),
(49, '2024_10_17_181410_create_privacy_policies_table', 29),
(50, '2024_10_17_185112_create_trams_and_conditions_table', 30),
(51, '2024_10_17_195130_create_contacts_table', 31),
(52, '2024_10_18_044232_create_reservation_times_table', 32),
(53, '2024_10_18_050353_create_reservations_table', 33),
(54, '2024_10_18_110134_create_subscribers_table', 34),
(55, '2024_10_18_132732_create_social_links_table', 35),
(56, '2024_10_18_143409_create_footer_infos_table', 36),
(57, '2017_08_11_073824_create_menus_wp_table', 37),
(58, '2017_08_11_074006_create_menu_items_wp_table', 37),
(59, '2024_10_18_194926_create_custom_page_builders_table', 38),
(60, '2024_10_19_040532_create_product_ratings_table', 39);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `address` text NOT NULL,
  `discount` double NOT NULL DEFAULT 0,
  `delivery_charge` double NOT NULL DEFAULT 0,
  `subtotal` double NOT NULL,
  `grand_total` double NOT NULL,
  `product_qty` int(11) NOT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) NOT NULL DEFAULT 'pending',
  `payment_approve_date` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `coupon_info` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`coupon_info`)),
  `currency_name` varchar(255) DEFAULT NULL,
  `order_status` varchar(255) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `invoice_id`, `user_id`, `address`, `discount`, `delivery_charge`, `subtotal`, `grand_total`, `product_qty`, `payment_method`, `payment_status`, `payment_approve_date`, `transaction_id`, `coupon_info`, `currency_name`, `order_status`, `created_at`, `updated_at`, `address_id`) VALUES
(32, '4461241226', 2, 'Qui consequatur Acc, Aria: Zachary Howard', 0, 1, 11, 12, 1, 'PayPal', 'completed', '2024-10-12 11:32:44', '4VL25032X0481682A', 'null', 'USD', 'delivered', '2024-10-12 11:32:26', '2024-10-13 05:04:45', 9),
(33, '2543241216', 2, 'Qui consequatur Acc, Aria: Zachary Howard', 0, 1, 24, 25, 1, 'Razorpay', 'completed', '2024-10-12 12:05:30', 'pay_P8DdP6ET8jtjEx', 'null', 'ARS', 'delivered', '2024-10-12 12:04:16', '2024-10-12 14:27:24', 9),
(34, '9689241317', 2, 'Qui consequatur Acc, Aria: Zachary Howard', 0, 1, 12, 13, 1, 'Razorpay', 'completed', '2024-10-12 23:57:19', 'pay_P8PlOTV7QlH7Jo', 'null', 'ARS', 'in_process', '2024-10-12 23:56:17', '2024-10-13 00:58:15', 9),
(35, '6766241313', 2, 'Qui consequatur Acc, Aria: Zachary Howard', 1.4, 1, 7, 6.6, 1, NULL, 'completed', NULL, NULL, '{\"code\":\"Fifty50\",\"discount\":\"1.40\"}', NULL, 'delivered', '2024-10-13 00:30:13', '2024-10-13 09:01:17', 9),
(36, '6520241336', 2, 'Qui consequatur Acc, Aria: Zachary Howard', 1.4, 1, 7, 6.6, 1, 'Stripe', 'completed', '2024-10-13 00:31:33', 'pi_3Q9LKvKFivzmuujN09LYGLPg', '{\"code\":\"Fifty50\",\"discount\":\"1.40\"}', 'usd', 'pending', '2024-10-13 00:30:36', '2024-10-13 00:31:33', 9),
(37, '2570241343', 2, 'Qui consequatur Acc, Aria: Zachary Howard', 0, 1, 22, 23, 1, 'Razorpay', 'completed', '2024-10-13 14:42:52', 'pay_P8eqiwPntzhzuj', 'null', 'ARS', 'pending', '2024-10-13 14:41:43', '2024-10-13 14:42:52', 9);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `unit_price` double NOT NULL,
  `qty` int(11) NOT NULL,
  `product_size` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`product_size`)),
  `product_option` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`product_option`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_name`, `product_id`, `unit_price`, `qty`, `product_size`, `product_option`, `created_at`, `updated_at`) VALUES
(34, 32, 'Steven Kinney', 11, 7, 1, '{\"id\":23,\"name\":\"Large\",\"price\":4}', '[]', '2024-10-12 11:32:26', '2024-10-12 11:32:26'),
(35, 33, 'Destiny Bryant', 9, 8, 2, '{\"id\":22,\"name\":\"Large\",\"price\":4}', '[]', '2024-10-12 12:04:16', '2024-10-12 12:04:16'),
(36, 34, 'Destiny Bryant', 9, 8, 1, '{\"id\":22,\"name\":\"Large\",\"price\":4}', '[{\"id\":15,\"name\":\"7up\",\"price\":null}]', '2024-10-12 23:56:17', '2024-10-12 23:56:17'),
(37, 35, 'Marshall Livingston', 13, 6, 1, '{\"id\":21,\"name\":\"small\",\"price\":1}', '[{\"id\":14,\"name\":\"7up\",\"price\":null}]', '2024-10-13 00:30:13', '2024-10-13 00:30:13'),
(38, 36, 'Marshall Livingston', 13, 6, 1, '{\"id\":21,\"name\":\"small\",\"price\":1}', '[{\"id\":14,\"name\":\"7up\",\"price\":null}]', '2024-10-13 00:30:36', '2024-10-13 00:30:36'),
(39, 37, 'Steven Kinney', 11, 7, 2, '{\"id\":23,\"name\":\"Large\",\"price\":4}', '[{\"id\":16,\"name\":\"sprite\",\"price\":null}]', '2024-10-13 14:41:43', '2024-10-13 14:41:43');

-- --------------------------------------------------------

--
-- Table structure for table `order_placed_notifications`
--

CREATE TABLE `order_placed_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` varchar(255) NOT NULL,
  `order_id` int(11) NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_placed_notifications`
--

INSERT INTO `order_placed_notifications` (`id`, `message`, `order_id`, `seen`, `created_at`, `updated_at`) VALUES
(1, '#53452 new order has been placed', 23, 1, NULL, '2024-10-13 14:33:33'),
(2, '#53262 new order has been placed', 25, 1, NULL, '2024-10-13 14:33:33'),
(3, '#4461241226 a new order has been placed!', 32, 1, '2024-10-13 14:09:14', '2024-10-13 14:33:33'),
(4, '#4461241226 a new order has been placed!', 32, 1, '2024-10-13 14:09:20', '2024-10-13 14:33:33'),
(5, '#4461241226 a new order has been placed!', 32, 1, '2024-10-13 14:09:40', '2024-10-13 14:33:33'),
(6, '#4461241226 a new order has been placed!', 32, 1, '2024-10-13 14:25:10', '2024-10-13 14:33:33'),
(7, '#4461241226 a new order has been placed!', 32, 1, '2024-10-13 14:25:34', '2024-10-13 14:33:33'),
(8, '#2570241343 a new order has been placed!', 37, 1, '2024-10-13 14:42:58', '2024-10-13 14:43:06');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('admin@gmail.com', '$2y$12$wPsSNnHX1eq/Xe3CNOOGo.JcGg1KfvrBQi6Q1wi3iStQ.MYU8TR42', '2024-10-11 09:48:57');

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateway_settings`
--

CREATE TABLE `payment_gateway_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_gateway_settings`
--

INSERT INTO `payment_gateway_settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'paypal_status', '1', '2024-10-10 00:32:27', '2024-10-10 00:32:27'),
(2, 'paypal_account_mode', 'sandbox', '2024-10-10 00:32:27', '2024-10-10 00:32:27'),
(3, 'paypal_country', 'BM', '2024-10-10 00:32:27', '2024-10-10 00:32:27'),
(4, 'paypal_currency', 'USD', '2024-10-10 00:32:27', '2024-10-10 01:52:06'),
(5, 'paypal_rate', '1', '2024-10-10 00:32:27', '2024-10-10 00:32:27'),
(6, 'paypal_api_key', 'AZfuV16ZE1yeKen0CxX4Zc4256OxQ4pvcb4agl7Pmik2bhmRx1lXORa9qrT4gQwJ4X0QMqNBZpNsJpn5', '2024-10-10 00:32:27', '2024-10-10 00:47:36'),
(7, 'paypal_secret_key', 'EH_xG0bVO5O1mNwGE1Emo5GmDR0EDVxCngbwTZ-7DT1FrbdietVuQmUm7pKsZWm_Rdw0f88jYD-Zh4RO', '2024-10-10 00:32:27', '2024-10-10 00:47:36'),
(8, 'paypal_logo', '/uploads/media_670a81d66e7eb.jpg', '2024-10-10 00:33:07', '2024-10-12 08:04:06'),
(9, 'paypal_app_id', 'APP_ID', '2024-10-11 23:54:04', '2024-10-11 23:54:04'),
(10, 'stripe_logo', '/uploads/media_670a309390628.png', '2024-10-12 02:07:13', '2024-10-12 02:17:23'),
(11, 'stripe_status', '1', '2024-10-12 02:07:13', '2024-10-12 02:07:13'),
(12, 'stripe_country', 'GB', '2024-10-12 02:07:13', '2024-10-12 02:07:13'),
(13, 'stripe_currency', 'USD', '2024-10-12 02:07:13', '2024-10-12 02:07:13'),
(14, 'stripe_rate', '1', '2024-10-12 02:07:13', '2024-10-12 02:07:13'),
(15, 'stripe_api_key', 'pk_test_51Q90Y2KFivzmuujNXNDO8OEeg69PaNo4GaVy8XvsjdG0AxOeNC5fPQWJijFb6X3HTBfVMRfgCIKWGr5RxaMcQOwm00SjJtpmBu', '2024-10-12 02:07:13', '2024-10-12 02:23:28'),
(16, 'stripe_secret_key', 'sk_test_51Q90Y2KFivzmuujNcGz5HfnffSUmTKgt9tbMcj1lxrh5N6Q64FhAlmo7fpiEBZmUVaXCk7VHpC0Ot1vPak5o0NIP008TWMfa2P', '2024-10-12 02:07:13', '2024-10-12 02:23:28'),
(17, 'razorpay_logo', '/uploads/media_670a51062b9b2.jpg', '2024-10-12 04:17:14', '2024-10-12 04:35:50'),
(18, 'razorpay_status', '1', '2024-10-12 04:17:14', '2024-10-12 08:04:30'),
(19, 'razorpay_country', 'IN', '2024-10-12 04:17:14', '2024-10-12 04:35:50'),
(20, 'razorpay_currency', 'INR', '2024-10-12 04:17:14', '2024-10-12 04:35:50'),
(21, 'razorpay_rate', '83.06', '2024-10-12 04:17:14', '2024-10-12 04:35:50'),
(22, 'razorpay_api_key', 'rzp_test_K7CipNQYyyMPiS', '2024-10-12 04:17:14', '2024-10-12 04:35:50'),
(23, 'razorpay_secret_key', 'zSBmNMorJrirOrnDrbOd1ALO', '2024-10-12 04:17:14', '2024-10-12 04:35:50');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `privacy_policies`
--

CREATE TABLE `privacy_policies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `privacy_policies`
--

INSERT INTO `privacy_policies` (`id`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Quia maiores deserun', '2024-10-17 12:29:43', '2024-10-17 12:29:43');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `thumb_image` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `short_description` text NOT NULL,
  `long_description` text NOT NULL,
  `price` double NOT NULL,
  `offer_price` double NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_description` varchar(255) DEFAULT NULL,
  `show_at_home` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `thumb_image`, `category_id`, `short_description`, `long_description`, `price`, `offer_price`, `quantity`, `sku`, `seo_title`, `seo_description`, `show_at_home`, `status`, `created_at`, `updated_at`) VALUES
(9, 'Destiny Bryant', 'destiny-bryant', '/uploads/media_66fa653ad6354.jpg', 17, 'Est ullam velit nis', 'Est ullam velit nis', 12, 8, 8, 'Sint rerum enim repr', 'Aut anim aliqua Ess', 'Dolorem dolor sed se', 1, 1, '2024-09-30 02:45:46', '2024-10-04 23:40:26'),
(11, 'Steven Kinney', 'steven-kinney-2', '/uploads/media_66fae1493a0a8.jpg', 16, 'Et sequi cillum repr', 'Et sequi cillum repr', 10, 7, 100, 'Reiciendis magna aut', 'Laborum Quisquam su', 'Non qui rerum soluta', 1, 1, '2024-09-30 02:46:35', '2024-10-04 23:25:11'),
(12, 'Theodore Petty', 'theodore-petty', '/uploads/media_66fa6589775a8.jpg', 18, 'Qui ab soluta illo e', 'Qui ab soluta illo e', 15, 10, 6, 'Minus voluptates exc', 'Totam debitis vero n', 'Ad numquam quam et i', 1, 1, '2024-09-30 02:47:05', '2024-10-04 23:39:55'),
(13, 'Marshall Livingston', 'marshall-livingston', '/uploads/media_66fa65c6e5f73.jpg', 18, 'Labore dolores expli', 'Labore dolores expli', 10, 6, 100, 'Odio ratione volupta', 'Expedita est iure n', 'Elit qui at illum', 1, 1, '2024-09-30 02:48:06', '2024-10-04 23:39:29'),
(20, 'Wyatt Valdez', 'wyatt-valdez', '/uploads/media_670fa826f217e.png', 17, 'In impedit perspici', 'Adipisci sed molesti', 263, 67, 534, 'Enim soluta ut et co', 'Dolor id dolore id', 'Rerum eligendi est', 1, 1, '2024-10-16 05:48:54', '2024-10-16 05:48:54');

-- --------------------------------------------------------

--
-- Table structure for table `product_galleries`
--

CREATE TABLE `product_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_galleries`
--

INSERT INTO `product_galleries` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 11, '/uploads/media_66fa9aaebf2ae.png', '2024-09-30 06:33:50', '2024-09-30 06:33:50'),
(2, 11, '/uploads/media_66fa9ab4c865e.png', '2024-09-30 06:33:56', '2024-09-30 06:33:56'),
(3, 11, '/uploads/media_66fa9abd6dc26.png', '2024-09-30 06:34:05', '2024-09-30 06:34:05'),
(4, 11, '/uploads/media_66fa9ac6a4b08.png', '2024-09-30 06:34:14', '2024-09-30 06:34:14'),
(5, 11, '/uploads/media_66fa9ace0eed9.png', '2024-09-30 06:34:22', '2024-09-30 06:34:22'),
(13, 9, '/uploads/media_66fa9fa279339.png', '2024-09-30 06:54:58', '2024-09-30 06:54:58'),
(14, 9, '/uploads/media_66fa9fa620b34.png', '2024-09-30 06:55:02', '2024-09-30 06:55:02'),
(15, 9, '/uploads/media_66fa9facdec34.jpg', '2024-09-30 06:55:08', '2024-09-30 06:55:08'),
(16, 12, '/uploads/media_66fa9fc17c475.jpg', '2024-09-30 06:55:29', '2024-09-30 06:55:29'),
(17, 12, '/uploads/media_66fa9fc992214.png', '2024-09-30 06:55:37', '2024-09-30 06:55:37'),
(18, 12, '/uploads/media_66fa9fce4bd54.jpg', '2024-09-30 06:55:42', '2024-09-30 06:55:42'),
(19, 13, '/uploads/media_66fa9fdb00c9e.jpg', '2024-09-30 06:55:55', '2024-09-30 06:55:55'),
(20, 13, '/uploads/media_66fa9fdfe28f7.png', '2024-09-30 06:55:59', '2024-09-30 06:55:59'),
(21, 13, '/uploads/media_66fa9fe5d2c88.jpg', '2024-09-30 06:56:05', '2024-09-30 06:56:05');

-- --------------------------------------------------------

--
-- Table structure for table `product_options`
--

CREATE TABLE `product_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_options`
--

INSERT INTO `product_options` (`id`, `product_id`, `name`, `price`, `created_at`, `updated_at`) VALUES
(14, 13, '7up', 1, '2024-10-02 11:49:33', '2024-10-02 11:49:33'),
(15, 9, '7up', 1, '2024-10-02 11:50:03', '2024-10-02 11:50:03'),
(16, 11, 'sprite', 4, '2024-10-02 11:50:25', '2024-10-02 11:50:25'),
(17, 12, '7up', 2, '2024-10-02 11:50:44', '2024-10-02 11:50:44');

-- --------------------------------------------------------

--
-- Table structure for table `product_ratings`
--

CREATE TABLE `product_ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `review` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_sizes`
--

CREATE TABLE `product_sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sizes`
--

INSERT INTO `product_sizes` (`id`, `product_id`, `name`, `price`, `created_at`, `updated_at`) VALUES
(21, 13, 'small', 1, '2024-10-02 11:49:27', '2024-10-02 11:49:27'),
(22, 9, 'Large', 4, '2024-10-02 11:49:57', '2024-10-02 11:49:57'),
(23, 11, 'Large', 4, '2024-10-02 11:50:18', '2024-10-02 11:50:18'),
(24, 12, 'Large', 8, '2024-10-02 11:50:39', '2024-10-02 11:50:39');

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reservation_id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(255) NOT NULL,
  `persons` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `reservation_id`, `user_id`, `name`, `phone`, `date`, `time`, `persons`, `status`, `created_at`, `updated_at`) VALUES
(1, '180531', 1, 'Amelia Kirkland', '+1 (502) 998-6379', '2000-01-03', '10-12', 4, 'approved', '2024-10-18 01:02:14', '2024-10-18 01:09:32'),
(3, '126816', 2, 'Aretha Harris', '+1 (517) 798-2169', '1974-10-03', '10-12', 5, 'pending', '2024-10-18 03:32:23', '2024-10-18 03:32:23');

-- --------------------------------------------------------

--
-- Table structure for table `reservation_times`
--

CREATE TABLE `reservation_times` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `start_time` varchar(255) NOT NULL,
  `end_time` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservation_times`
--

INSERT INTO `reservation_times` (`id`, `start_time`, `end_time`, `status`, `created_at`, `updated_at`) VALUES
(1, '10', '12', 1, '2024-10-17 22:55:29', '2024-10-17 22:55:29'),
(2, '12', '10', 1, '2024-10-17 23:18:37', '2024-10-17 23:18:37');

-- --------------------------------------------------------

--
-- Table structure for table `section_titles`
--

CREATE TABLE `section_titles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` text DEFAULT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `section_titles`
--

INSERT INTO `section_titles` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(4, 'why_choose_top_title', 'why choose us', '2024-09-27 11:56:20', '2024-09-27 11:56:20'),
(5, 'why_choose_main_title', 'why choose us', '2024-09-27 11:56:20', '2024-09-27 11:56:20'),
(6, 'why_choose_sub_title', 'Objectively pontificate quality models before intuitive information. Dramatically recaptiualize multifunctional materials.', '2024-09-27 11:56:20', '2024-09-27 11:56:20'),
(7, 'chef_top_title', 'Aute adipisicing rems', '2024-10-10 13:39:57', '2024-10-10 23:21:24'),
(8, 'chef_main_title', 'At laborum Quaerats', '2024-10-10 13:39:57', '2024-10-10 23:21:24'),
(9, 'chef_sub_title', 'Et cupidatat nihil vs', '2024-10-10 13:39:57', '2024-10-10 23:21:24'),
(10, 'testimonial_top_title', 'Nesciunt sed natus', '2024-10-11 02:50:59', '2024-10-11 02:50:59'),
(11, 'testimonial_main_title', 'Rerum expedita ducim', '2024-10-11 02:50:59', '2024-10-11 02:50:59'),
(12, 'testimonial_sub_title', 'Unde commodo ad ulla', '2024-10-11 02:50:59', '2024-10-11 02:50:59'),
(13, 'daily_offer_top_title', 'Reiciendis et quia a', '2024-10-15 11:28:52', '2024-10-15 11:28:52'),
(14, 'daily_offer_main_title', 'Quo quibusdam nesciu', '2024-10-15 11:28:52', '2024-10-15 11:28:52'),
(15, 'daily_offer_sub_title', 'Fugiat Nam odio corp', '2024-10-15 11:28:52', '2024-10-15 11:28:52');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'site_name', 'Food Park', '2024-09-30 20:38:31', '2024-09-30 20:38:31'),
(2, 'site_default_currency', 'ARS', '2024-09-30 20:38:31', '2024-09-30 22:34:34'),
(3, 'site_currency_icon', '$', '2024-09-30 20:38:31', '2024-09-30 22:20:25'),
(4, 'site_currency_icon_position', 'left', '2024-09-30 20:38:31', '2024-10-12 10:04:31'),
(5, 'pusher_app_id', '1878795', '2024-10-11 08:23:49', '2024-10-11 08:23:49'),
(6, 'pusher_key', '6c0a365b64158436defe', '2024-10-11 08:23:49', '2024-10-11 08:23:49'),
(7, 'pusher_secret', 'f931a71bb35d9f7a071a', '2024-10-11 08:23:49', '2024-10-11 08:23:49'),
(8, 'pusher_cluster', 'mt1', '2024-10-11 08:23:49', '2024-10-11 08:23:49'),
(9, 'mail_driver', 'smtp', '2024-10-17 14:42:25', '2024-10-17 14:42:25'),
(10, 'mail_host', 'sandbox.smtp.mailtrap.io', '2024-10-17 14:42:25', '2024-10-17 14:42:25'),
(11, 'mail_port', '2525', '2024-10-17 14:42:25', '2024-10-17 14:42:25'),
(12, 'mail_username', '8137cb80e553c7', '2024-10-17 14:42:25', '2024-10-17 14:42:25'),
(13, 'mail_password', 'dbd425280f23fd', '2024-10-17 14:42:25', '2024-10-17 14:42:25'),
(14, 'mail_encryption', 'tls', '2024-10-17 14:42:25', '2024-10-17 14:42:25'),
(15, 'mail_from_address', 'test@gmail.com', '2024-10-17 14:42:25', '2024-10-17 14:42:25'),
(16, 'mail_receive_address', 'test@gmail.com', '2024-10-17 14:42:25', '2024-10-17 14:51:17');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` text NOT NULL,
  `offer` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` varchar(255) NOT NULL,
  `short_description` varchar(255) NOT NULL,
  `button_link` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `offer`, `title`, `sub_title`, `short_description`, `button_link`, `status`, `created_at`, `updated_at`) VALUES
(27, '/uploads/media_66f591629eb7f.jpg', '50', 'Great food. Tastes good.', 'Fast Food & Restaurants', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ipsum fugit minima\r\n                                        et debitis ut distinctio optio qui voluptate natus.', 'shop now', 1, '2024-09-26 10:52:25', '2024-09-26 10:52:50'),
(30, '/uploads/media_66fbaf6d37c1c.jpg', 'Quia consectetur od', 'Corporis sint eiusmo', 'Illo nisi est ipsum', 'Qui non excepturi si', 'Autem error dolorum', 1, '2024-10-01 02:14:37', '2024-10-01 02:14:37'),
(31, '/uploads/media_66fbaf8892285.png', 'Deserunt aut optio', 'Perspiciatis aut ea', 'Nostrum aut aut aute', 'Labore et quia excep', 'Vel impedit commodi', 1, '2024-10-01 02:15:04', '2024-10-01 02:15:04'),
(32, '/uploads/media_66fbafa0cfaba.png', 'Irure pariatur Exce', 'Maiores voluptates a', 'Perspiciatis est au', 'Dicta ullam omnis mo', 'Rerum officiis inven', 1, '2024-10-01 02:15:28', '2024-10-01 02:15:28');

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE `social_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_links`
--

INSERT INTO `social_links` (`id`, `icon`, `name`, `link`, `status`, `created_at`, `updated_at`) VALUES
(2, 'fab fa-twitter', 'Twitter', 'https://x.com/', 1, '2024-10-18 08:04:57', '2024-10-18 08:04:57'),
(3, 'fab fa-facebook-f', 'Facebook', 'https://www.facebook.com/', 1, '2024-10-18 08:05:23', '2024-10-18 08:05:23');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'x@gmail.com', '2024-10-18 05:03:40', '2024-10-18 05:03:40');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `review` text NOT NULL,
  `rating` int(11) NOT NULL,
  `show_at_home` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `image`, `name`, `title`, `review`, `rating`, `show_at_home`, `status`, `created_at`, `updated_at`) VALUES
(2, '/uploads/media_6708ea0258455.png', 'Coby Dominguez', 'Gareth Conner', 'Natus sint et impedi', 4, 1, 1, '2024-10-11 02:50:42', '2024-10-11 03:04:02'),
(3, '/uploads/media_6708ef44c50d0.jpg', 'Yvonne Finley', 'Bernard Sanford', 'Corrupti laboriosam', 5, 1, 1, '2024-10-11 03:26:28', '2024-10-11 03:26:28'),
(4, '/uploads/media_6708ef5575c09.png', 'Hu Herrera', 'Fleur Sexton', 'Aliqua Tenetur dign', 2, 1, 1, '2024-10-11 03:26:45', '2024-10-11 03:28:07');

-- --------------------------------------------------------

--
-- Table structure for table `trams_and_conditions`
--

CREATE TABLE `trams_and_conditions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trams_and_conditions`
--

INSERT INTO `trams_and_conditions` (`id`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Dolore nobis sint mo', '2024-10-17 12:53:23', '2024-10-17 12:53:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `avatar` varchar(255) NOT NULL DEFAULT '/uploads/avatar.png',
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` enum('user','admin') NOT NULL DEFAULT 'user',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `avatar`, `name`, `email`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '/uploads/media_670e4e41af82e.jpg', 'Admin', 'admin@gmail.com', 'admin', NULL, '$2y$12$yQg5iffV2euV1cpfXIAlU.wSVWPCNFW4N3D8vTmpJO0XMLZ1S0tLm', NULL, NULL, '2024-10-15 05:13:05'),
(2, '/uploads/media_67038f144710e.png', 'User', 'user@gmail.com', 'user', NULL, '$2y$12$07EZYRUdLn35RhFZuLb9DuX0XkgPq4FJL5iEZe73s6b//fn/eM1bW', 'EAWGCHu61kCRdRamOhDYXUABbxUScToEMVRcMdqucslzOkFWODLdP4aYwHud', NULL, '2024-10-11 12:15:36'),
(4, '/uploads/avatar.png', 'subadmin', 'subadmin@gmail.com', 'admin', NULL, '$2y$12$EqGFQMZJw6Trz/y.d6z4Nu1miqQWlSLUcy5ie/umf4IswN7AcDT/a', NULL, '2024-10-11 07:00:48', '2024-10-11 07:15:46'),
(5, '/uploads/avatar.png', 'jamal', 'jamal@gmail.com', 'user', NULL, '$2y$12$rQluq/0vqM6wxOfbH6EMVuDuleQajxO0L1sxLmzYsSKc3nuguKE6W', 'dkKhxHDoXiSN53bfqaeOogKYCCv92yuzVFn9kcUJCrv9GTYLyNynW8M2iZXp', '2024-10-11 11:48:42', '2024-10-11 12:17:27'),
(6, '/uploads/avatar.png', 'Ralph Woodward', 'cerul@mailinator.com', 'user', NULL, '$2y$12$xaDbpL5HjB8hviC6N7f2oO2y1kDtEwMdu/Cf73ayamRtR6vJP5m6q', NULL, '2024-10-14 11:21:29', '2024-10-14 11:21:29'),
(7, '/uploads/avatar.png', 'deen', 'deen@gmail.com', 'user', NULL, '$2y$12$pEvmjVUJMDmMx5f.Nl9/febhQoO/peZDEgKGovitYMMdbZ2Aul6xm', NULL, '2024-10-15 08:29:53', '2024-10-15 08:29:53');

-- --------------------------------------------------------

--
-- Table structure for table `why_choose_us`
--

CREATE TABLE `why_choose_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `short_description` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `why_choose_us`
--

INSERT INTO `why_choose_us` (`id`, `icon`, `title`, `short_description`, `status`, `created_at`, `updated_at`) VALUES
(3, 'fab fa-accessible-icon', 'Quos magna quisquam', 'Eiusmod enim fugiat', 1, '2024-09-27 13:00:29', '2024-09-28 01:43:03'),
(4, 'fas fa-adjust', 'Non sint deserunt e', 'Et fuga Quaerat err', 1, '2024-09-27 22:27:30', '2024-09-28 01:42:50'),
(5, 'fab fa-accusoft', 'Quasi pariatur Quia', 'Sunt dolore commodi>', 1, '2024-09-28 01:48:06', '2024-09-28 02:40:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_user_id_foreign` (`user_id`),
  ADD KEY `addresses_delivery_area_id_foreign` (`delivery_area_id`);

--
-- Indexes for table `admin_menus`
--
ALTER TABLE `admin_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_menu_items`
--
ALTER TABLE `admin_menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `app_download_sections`
--
ALTER TABLE `app_download_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_sliders`
--
ALTER TABLE `banner_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_user_id_foreign` (`user_id`),
  ADD KEY `blogs_category_id_foreign` (`category_id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_comments_blog_id_foreign` (`blog_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chefs`
--
ALTER TABLE `chefs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_page_builders`
--
ALTER TABLE `custom_page_builders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daily_offers`
--
ALTER TABLE `daily_offers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `daily_offers_product_id_foreign` (`product_id`);

--
-- Indexes for table `delivery_areas`
--
ALTER TABLE `delivery_areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `footer_infos`
--
ALTER TABLE `footer_infos`
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
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Indexes for table `order_placed_notifications`
--
ALTER TABLE `order_placed_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payment_gateway_settings`
--
ALTER TABLE `payment_gateway_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `privacy_policies`
--
ALTER TABLE `privacy_policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_galleries`
--
ALTER TABLE `product_galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_galleries_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_options`
--
ALTER TABLE `product_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_options_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_ratings`
--
ALTER TABLE `product_ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_ratings_user_id_foreign` (`user_id`),
  ADD KEY `product_ratings_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_sizes_product_id_foreign` (`product_id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservation_times`
--
ALTER TABLE `reservation_times`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section_titles`
--
ALTER TABLE `section_titles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trams_and_conditions`
--
ALTER TABLE `trams_and_conditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `why_choose_us`
--
ALTER TABLE `why_choose_us`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `admin_menus`
--
ALTER TABLE `admin_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `admin_menu_items`
--
ALTER TABLE `admin_menu_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `app_download_sections`
--
ALTER TABLE `app_download_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banner_sliders`
--
ALTER TABLE `banner_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `chefs`
--
ALTER TABLE `chefs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `counters`
--
ALTER TABLE `counters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `custom_page_builders`
--
ALTER TABLE `custom_page_builders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `daily_offers`
--
ALTER TABLE `daily_offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_areas`
--
ALTER TABLE `delivery_areas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `footer_infos`
--
ALTER TABLE `footer_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `order_placed_notifications`
--
ALTER TABLE `order_placed_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payment_gateway_settings`
--
ALTER TABLE `payment_gateway_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `privacy_policies`
--
ALTER TABLE `privacy_policies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `product_galleries`
--
ALTER TABLE `product_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `product_options`
--
ALTER TABLE `product_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `product_ratings`
--
ALTER TABLE `product_ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_sizes`
--
ALTER TABLE `product_sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reservation_times`
--
ALTER TABLE `reservation_times`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `section_titles`
--
ALTER TABLE `section_titles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `social_links`
--
ALTER TABLE `social_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `trams_and_conditions`
--
ALTER TABLE `trams_and_conditions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `why_choose_us`
--
ALTER TABLE `why_choose_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_delivery_area_id_foreign` FOREIGN KEY (`delivery_area_id`) REFERENCES `delivery_areas` (`id`),
  ADD CONSTRAINT `addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `admin_menu_items`
--
ALTER TABLE `admin_menu_items`
  ADD CONSTRAINT `admin_menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `admin_menus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `blog_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blogs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD CONSTRAINT `blog_comments_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `daily_offers`
--
ALTER TABLE `daily_offers`
  ADD CONSTRAINT `daily_offers_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_galleries`
--
ALTER TABLE `product_galleries`
  ADD CONSTRAINT `product_galleries_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_options`
--
ALTER TABLE `product_options`
  ADD CONSTRAINT `product_options_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_ratings`
--
ALTER TABLE `product_ratings`
  ADD CONSTRAINT `product_ratings_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_ratings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD CONSTRAINT `product_sizes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
