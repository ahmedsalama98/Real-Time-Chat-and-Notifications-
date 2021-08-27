-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2021 at 08:46 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `real-time-notify`
--

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
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `body`, `user_id`, `created_at`, `updated_at`) VALUES
(57, 'hi guys', 1, '2021-08-27 03:11:39', '2021-08-27 03:11:39'),
(58, 'hi ahmed', 3, '2021-08-27 03:11:58', '2021-08-27 03:11:58'),
(59, 'good morning', 2, '2021-08-27 03:12:23', '2021-08-27 03:12:23'),
(62, 'good', 3, '2021-08-27 04:03:31', '2021-08-27 04:03:31'),
(63, 'again', 1, '2021-08-27 04:04:33', '2021-08-27 04:04:33'),
(64, 'haha', 3, '2021-08-27 04:05:30', '2021-08-27 04:05:30'),
(67, 'good', 1, '2021-08-27 04:32:40', '2021-08-27 04:32:40'),
(68, 'test message', 2, '2021-08-27 04:41:26', '2021-08-27 04:41:26');

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
(1, '0000_00_00_000000_create_websockets_statistics_entries_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_08_26_074941_create_notifications_table', 2),
(7, '2021_08_27_015243_create_messages_table', 3),
(8, '2021_08_27_053520_add_timezone_column_to_users_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('1d687fdd-4e98-47ab-a11f-a9ea5000fafe', 'App\\Notifications\\laravelNotifyTest', 'App\\Models\\User', 1, '{\"messeege\":\"ahmed\"}', NULL, '2021-08-26 06:59:58', '2021-08-26 06:59:58'),
('2c767055-b37b-4af4-b68b-8ea31e7eebe0', 'App\\Notifications\\laravelNotifyTest', 'App\\Models\\User', 1, '{\"messeege\":\"h\"}', NULL, '2021-08-26 08:06:58', '2021-08-26 08:06:58'),
('3acab222-c0cb-4761-8ff5-9f2390676f24', 'App\\Notifications\\laravelNotifyTest', 'App\\Models\\User', 4, '{\"messeege\":\"goo\"}', NULL, '2021-08-26 06:59:50', '2021-08-26 06:59:50'),
('47f449db-df25-4b40-8b20-db1fd4d0ff88', 'App\\Notifications\\laravelNotifyTest', 'App\\Models\\User', 4, '{\"messeege\":\"l\"}', NULL, '2021-08-26 06:58:29', '2021-08-26 06:58:29'),
('65ee160a-c004-4279-a8c5-9ca5c946a74c', 'App\\Notifications\\laravelNotifyTest', 'App\\Models\\User', 4, '{\"messeege\":\"hh\"}', NULL, '2021-08-26 06:59:01', '2021-08-26 06:59:01'),
('68a23ffc-cf8c-452b-899d-b500f5e06290', 'App\\Notifications\\laravelNotifyTest', 'App\\Models\\User', 2, '{\"messeege\":\"gg\"}', NULL, '2021-08-26 07:38:51', '2021-08-26 07:38:51'),
('74eda460-8645-4301-9a08-85b9f68def13', 'App\\Notifications\\laravelNotifyTest', 'App\\Models\\User', 1, '{\"messeege\":\"hh\"}', NULL, '2021-08-26 21:54:01', '2021-08-26 21:54:01'),
('82169b87-e1e9-4957-9884-a8e1d02fb4fb', 'App\\Notifications\\laravelNotifyTest', 'App\\Models\\User', 1, '{\"messeege\":\"go\"}', NULL, '2021-08-26 07:27:32', '2021-08-26 07:27:32'),
('a30d0ef7-30ca-468c-8bff-81a24cb42b81', 'App\\Notifications\\laravelNotifyTest', 'App\\Models\\User', 2, '{\"messeege\":\"gg\"}', NULL, '2021-08-26 08:06:44', '2021-08-26 08:06:44'),
('aef4f397-7df6-4593-bde2-d025b340651e', 'App\\Notifications\\laravelNotifyTest', 'App\\Models\\User', 2, '{\"messeege\":\"hhhh\"}', NULL, '2021-08-26 21:54:18', '2021-08-26 21:54:18'),
('b0883610-2591-42a2-a2e1-a75884fb12c4', 'App\\Notifications\\laravelNotifyTest', 'App\\Models\\User', 4, '{\"messeege\":\"hi\"}', NULL, '2021-08-26 07:28:03', '2021-08-26 07:28:03'),
('b1a050aa-b838-44b4-a270-aaa99452875e', 'App\\Notifications\\laravelNotifyTest', 'App\\Models\\User', 4, '{\"messeege\":\"good\"}', NULL, '2021-08-26 07:35:36', '2021-08-26 07:35:36'),
('cbcc4a4a-beb6-4915-9ed8-df9706547ea6', 'App\\Notifications\\laravelNotifyTest', 'App\\Models\\User', 1, '{\"messeege\":\"good\"}', NULL, '2021-08-26 07:28:20', '2021-08-26 07:28:20'),
('dc86730f-306d-4e85-a527-ea6b1b9b7e12', 'App\\Notifications\\laravelNotifyTest', 'App\\Models\\User', 4, '{\"messeege\":\"good\"}', NULL, '2021-08-26 07:27:13', '2021-08-26 07:27:13'),
('e6ef18ae-b5cd-4436-b23a-8c0fd17ad7a4', 'App\\Notifications\\laravelNotifyTest', 'App\\Models\\User', 2, '{\"messeege\":\"mj\"}', NULL, '2021-08-26 07:36:23', '2021-08-26 07:36:23'),
('ecd17e73-c0d8-4d08-a66c-2e6081378399', 'App\\Notifications\\laravelNotifyTest', 'App\\Models\\User', 1, '{\"messeege\":\"good\"}', NULL, '2021-08-26 07:48:37', '2021-08-26 07:48:37'),
('f727e78c-89ee-4ba1-86e4-2a15d2f67c58', 'App\\Notifications\\laravelNotifyTest', 'App\\Models\\User', 4, '{\"messeege\":\"good\"}', NULL, '2021-08-26 07:19:05', '2021-08-26 07:19:05');

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

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timezone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `timezone`, `created_at`, `updated_at`) VALUES
(1, 'ahmed eissa', 'ahmedeissa2016@gmail.com', NULL, '$2y$10$gzqTZA.Kd13vKl1tw1fAz.F6rcpSNaNil3W3XXLMzCgW1D6FyUdcG', '8DSuRg9YA0TuAm3JVq9jD8ySJPY23dLsHeukImEtiNVOKiiqpzfITw3XOz6S', NULL, '2021-08-26 00:29:27', '2021-08-26 00:29:27'),
(2, 'ali', 'ali@gmail.com', NULL, '$2y$10$R9y26xbaK/RLERm3uoF/GeNJsLezTt3P9a1ve1Z90rGZEPHGOxNNK', 'pBjZJ8uMCe0ZvTWr1ushR13XGYyWbLRAolDKVPLgCe2fN1Ytj4qCBdkuZJoo', NULL, '2021-08-26 03:47:10', '2021-08-26 03:47:10'),
(3, 'emad', 'emad@gmail.com', NULL, '$2y$10$mLbSIzomlwO9ab1JQw3o9OST0COjndGCBZ7jdb5Qvggeu5gIFTb.G', NULL, NULL, '2021-08-26 04:42:23', '2021-08-26 04:42:23'),
(4, 'mahmoud', 'mahmoud@gmail.com', NULL, '$2y$10$DfFzHHOpQ2WnevCT0cFdf.IGaIN04RTjcNawHKB6Qg3zYK5JifHg2', NULL, NULL, '2021-08-26 04:43:00', '2021-08-26 04:43:00');

-- --------------------------------------------------------

--
-- Table structure for table `websockets_statistics_entries`
--

CREATE TABLE `websockets_statistics_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `app_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peak_connection_count` int(11) NOT NULL,
  `websocket_message_count` int(11) NOT NULL,
  `api_message_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `websockets_statistics_entries`
--

INSERT INTO `websockets_statistics_entries` (`id`, `app_id`, `peak_connection_count`, `websocket_message_count`, `api_message_count`, `created_at`, `updated_at`) VALUES
(79, 'real-time-notify-id', 0, 10, 1, '2021-08-26 02:48:41', '2021-08-26 02:48:41'),
(80, 'real-time-notify-id', 1, 13, 0, '2021-08-26 02:49:55', '2021-08-26 02:49:55'),
(81, 'real-time-notify-id', 1, 5, 1, '2021-08-26 02:50:55', '2021-08-26 02:50:55'),
(82, 'real-time-notify-id', 1, 5, 1, '2021-08-26 02:51:55', '2021-08-26 02:51:55'),
(83, 'real-time-notify-id', 1, 4, 3, '2021-08-26 02:52:55', '2021-08-26 02:52:55'),
(84, 'real-time-notify-id', 1, 5, 1, '2021-08-26 02:53:55', '2021-08-26 02:53:55'),
(85, 'real-time-notify-id', 1, 5, 1, '2021-08-26 02:54:55', '2021-08-26 02:54:55'),
(86, 'real-time-notify-id', 1, 5, 1, '2021-08-26 02:55:55', '2021-08-26 02:55:55'),
(87, 'real-time-notify-id', 1, 5, 1, '2021-08-26 02:56:55', '2021-08-26 02:56:55'),
(88, 'real-time-notify-id', 1, 5, 1, '2021-08-26 02:57:55', '2021-08-26 02:57:55'),
(89, 'real-time-notify-id', 1, 5, 1, '2021-08-26 02:58:55', '2021-08-26 02:58:55'),
(90, 'real-time-notify-id', 1, 5, 1, '2021-08-26 02:59:55', '2021-08-26 02:59:55'),
(91, 'real-time-notify-id', 1, 5, 1, '2021-08-26 03:00:55', '2021-08-26 03:00:55'),
(92, 'real-time-notify-id', 1, 5, 1, '2021-08-26 03:01:55', '2021-08-26 03:01:55'),
(93, 'real-time-notify-id', 1, 5, 1, '2021-08-26 03:02:55', '2021-08-26 03:02:55'),
(94, 'real-time-notify-id', 1, 5, 1, '2021-08-26 03:03:55', '2021-08-26 03:03:55'),
(95, 'real-time-notify-id', 1, 5, 1, '2021-08-26 03:04:55', '2021-08-26 03:04:55'),
(96, 'real-time-notify-id', 1, 4, 3, '2021-08-26 03:05:55', '2021-08-26 03:05:55'),
(97, 'real-time-notify-id', 1, 5, 1, '2021-08-26 03:06:55', '2021-08-26 03:06:55'),
(98, 'real-time-notify-id', 1, 5, 1, '2021-08-26 03:07:55', '2021-08-26 03:07:55'),
(99, 'real-time-notify-id', 1, 5, 1, '2021-08-26 03:08:56', '2021-08-26 03:08:56'),
(100, 'real-time-notify-id', 1, 5, 1, '2021-08-26 03:09:55', '2021-08-26 03:09:55'),
(101, 'real-time-notify-id', 1, 5, 1, '2021-08-26 03:10:55', '2021-08-26 03:10:55'),
(102, 'real-time-notify-id', 1, 5, 1, '2021-08-26 03:11:55', '2021-08-26 03:11:55'),
(103, 'real-time-notify-id', 1, 5, 1, '2021-08-26 03:12:55', '2021-08-26 03:12:55'),
(104, 'real-time-notify-id', 1, 5, 1, '2021-08-26 03:13:55', '2021-08-26 03:13:55'),
(105, 'real-time-notify-id', 1, 5, 1, '2021-08-26 03:14:55', '2021-08-26 03:14:55'),
(106, 'real-time-notify-id', 2, 4, 1, '2021-08-26 03:15:55', '2021-08-26 03:15:55'),
(107, 'real-time-notify-id', 1, 7, 1, '2021-08-26 03:16:55', '2021-08-26 03:16:55'),
(108, 'real-time-notify-id', 1, 7, 1, '2021-08-26 03:17:55', '2021-08-26 03:17:55'),
(109, 'real-time-notify-id', 1, 7, 1, '2021-08-26 03:18:55', '2021-08-26 03:18:55'),
(110, 'real-time-notify-id', 1, 4, 2, '2021-08-26 03:19:55', '2021-08-26 03:19:55'),
(111, 'real-time-notify-id', 2, 3, 3, '2021-08-26 03:20:55', '2021-08-26 03:20:55'),
(112, 'real-time-notify-id', 1, 4, 1, '2021-08-26 03:21:55', '2021-08-26 03:21:55'),
(113, 'real-time-notify-id', 2, 6, 1, '2021-08-26 03:22:56', '2021-08-26 03:22:56'),
(114, 'real-time-notify-id', 2, 4, 1, '2021-08-26 03:23:55', '2021-08-26 03:23:55'),
(115, 'real-time-notify-id', 1, 5, 1, '2021-08-26 03:24:55', '2021-08-26 03:24:55'),
(116, 'real-time-notify-id', 1, 8, 1, '2021-08-26 03:25:55', '2021-08-26 03:25:55'),
(117, 'real-time-notify-id', 2, 7, 1, '2021-08-26 03:26:55', '2021-08-26 03:26:55'),
(118, 'real-time-notify-id', 2, 6, 1, '2021-08-26 03:27:55', '2021-08-26 03:27:55'),
(119, 'real-time-notify-id', 2, 8, 1, '2021-08-26 03:28:55', '2021-08-26 03:28:55'),
(120, 'real-time-notify-id', 2, 6, 1, '2021-08-26 03:29:55', '2021-08-26 03:29:55'),
(121, 'real-time-notify-id', 2, 9, 1, '2021-08-26 03:30:55', '2021-08-26 03:30:55'),
(122, 'real-time-notify-id', 2, 5, 2, '2021-08-26 03:31:55', '2021-08-26 03:31:55'),
(123, 'real-time-notify-id', 2, 8, 1, '2021-08-26 03:32:55', '2021-08-26 03:32:55'),
(124, 'real-time-notify-id', 2, 7, 1, '2021-08-26 03:33:55', '2021-08-26 03:33:55'),
(125, 'real-time-notify-id', 2, 7, 1, '2021-08-26 03:34:55', '2021-08-26 03:34:55'),
(126, 'real-time-notify-id', 2, 7, 1, '2021-08-26 03:35:55', '2021-08-26 03:35:55'),
(127, 'real-time-notify-id', 2, 7, 1, '2021-08-26 03:36:55', '2021-08-26 03:36:55'),
(128, 'real-time-notify-id', 2, 7, 1, '2021-08-26 03:37:55', '2021-08-26 03:37:55'),
(129, 'real-time-notify-id', 2, 7, 1, '2021-08-26 03:38:55', '2021-08-26 03:38:55'),
(130, 'real-time-notify-id', 2, 7, 1, '2021-08-26 03:39:55', '2021-08-26 03:39:55'),
(131, 'real-time-notify-id', 2, 7, 1, '2021-08-26 03:40:55', '2021-08-26 03:40:55'),
(132, 'real-time-notify-id', 2, 6, 1, '2021-08-26 03:41:55', '2021-08-26 03:41:55'),
(133, 'real-time-notify-id', 2, 7, 1, '2021-08-26 03:42:55', '2021-08-26 03:42:55'),
(134, 'real-time-notify-id', 2, 7, 1, '2021-08-26 03:43:55', '2021-08-26 03:43:55'),
(135, 'real-time-notify-id', 2, 7, 1, '2021-08-26 03:44:55', '2021-08-26 03:44:55'),
(136, 'real-time-notify-id', 2, 7, 1, '2021-08-26 03:45:55', '2021-08-26 03:45:55'),
(137, 'real-time-notify-id', 3, 8, 1, '2021-08-26 03:46:55', '2021-08-26 03:46:55'),
(138, 'real-time-notify-id', 3, 9, 1, '2021-08-26 03:47:55', '2021-08-26 03:47:55'),
(139, 'real-time-notify-id', 2, 7, 2, '2021-08-26 03:48:55', '2021-08-26 03:48:55'),
(140, 'real-time-notify-id', 2, 7, 1, '2021-08-26 03:49:55', '2021-08-26 03:49:55'),
(141, 'real-time-notify-id', 2, 7, 1, '2021-08-26 03:50:55', '2021-08-26 03:50:55'),
(142, 'real-time-notify-id', 2, 7, 1, '2021-08-26 03:51:55', '2021-08-26 03:51:55'),
(143, 'real-time-notify-id', 2, 7, 2, '2021-08-26 03:52:55', '2021-08-26 03:52:55'),
(144, 'real-time-notify-id', 2, 7, 1, '2021-08-26 03:53:55', '2021-08-26 03:53:55'),
(145, 'real-time-notify-id', 2, 7, 1, '2021-08-26 03:54:55', '2021-08-26 03:54:55'),
(146, 'real-time-notify-id', 2, 7, 1, '2021-08-26 03:55:55', '2021-08-26 03:55:55'),
(147, 'real-time-notify-id', 2, 7, 1, '2021-08-26 03:56:55', '2021-08-26 03:56:55'),
(148, 'real-time-notify-id', 2, 7, 1, '2021-08-26 03:57:55', '2021-08-26 03:57:55'),
(149, 'real-time-notify-id', 2, 6, 1, '2021-08-26 03:58:55', '2021-08-26 03:58:55'),
(150, 'real-time-notify-id', 2, 6, 1, '2021-08-26 03:59:55', '2021-08-26 03:59:55'),
(151, 'real-time-notify-id', 2, 7, 1, '2021-08-26 04:00:56', '2021-08-26 04:00:56'),
(152, 'real-time-notify-id', 2, 7, 1, '2021-08-26 04:01:55', '2021-08-26 04:01:55'),
(153, 'real-time-notify-id', 2, 6, 1, '2021-08-26 04:02:55', '2021-08-26 04:02:55'),
(154, 'real-time-notify-id', 2, 7, 1, '2021-08-26 04:03:56', '2021-08-26 04:03:56'),
(155, 'real-time-notify-id', 2, 5, 1, '2021-08-26 04:04:55', '2021-08-26 04:04:55'),
(156, 'real-time-notify-id', 2, 8, 1, '2021-08-26 04:05:55', '2021-08-26 04:05:55'),
(157, 'real-time-notify-id', 2, 6, 1, '2021-08-26 04:06:55', '2021-08-26 04:06:55'),
(158, 'real-time-notify-id', 2, 8, 1, '2021-08-26 04:07:55', '2021-08-26 04:07:55'),
(159, 'real-time-notify-id', 2, 7, 1, '2021-08-26 04:08:55', '2021-08-26 04:08:55'),
(160, 'real-time-notify-id', 2, 7, 1, '2021-08-26 04:09:55', '2021-08-26 04:09:55'),
(161, 'real-time-notify-id', 2, 7, 1, '2021-08-26 04:10:55', '2021-08-26 04:10:55'),
(162, 'real-time-notify-id', 2, 7, 1, '2021-08-26 04:11:55', '2021-08-26 04:11:55'),
(163, 'real-time-notify-id', 2, 7, 1, '2021-08-26 04:12:55', '2021-08-26 04:12:55'),
(164, 'real-time-notify-id', 2, 7, 1, '2021-08-26 04:13:55', '2021-08-26 04:13:55'),
(165, 'real-time-notify-id', 2, 7, 1, '2021-08-26 04:14:55', '2021-08-26 04:14:55'),
(166, 'real-time-notify-id', 2, 7, 1, '2021-08-26 04:15:55', '2021-08-26 04:15:55'),
(167, 'real-time-notify-id', 2, 8, 1, '2021-08-26 04:16:55', '2021-08-26 04:16:55'),
(168, 'real-time-notify-id', 2, 7, 1, '2021-08-26 04:17:55', '2021-08-26 04:17:55'),
(169, 'real-time-notify-id', 2, 7, 1, '2021-08-26 04:18:55', '2021-08-26 04:18:55'),
(170, 'real-time-notify-id', 2, 7, 1, '2021-08-26 04:19:55', '2021-08-26 04:19:55'),
(171, 'real-time-notify-id', 2, 7, 1, '2021-08-26 04:20:55', '2021-08-26 04:20:55'),
(172, 'real-time-notify-id', 2, 6, 2, '2021-08-26 04:21:55', '2021-08-26 04:21:55'),
(173, 'real-time-notify-id', 2, 7, 1, '2021-08-26 04:22:55', '2021-08-26 04:22:55'),
(174, 'real-time-notify-id', 2, 10, 1, '2021-08-26 04:23:55', '2021-08-26 04:23:55'),
(175, 'real-time-notify-id', 1, 9, 1, '2021-08-26 04:24:55', '2021-08-26 04:24:55'),
(176, 'real-time-notify-id', 2, 6, 1, '2021-08-26 04:25:55', '2021-08-26 04:25:55'),
(177, 'real-time-notify-id', 2, 8, 1, '2021-08-26 04:26:55', '2021-08-26 04:26:55'),
(178, 'real-time-notify-id', 2, 7, 1, '2021-08-26 04:27:55', '2021-08-26 04:27:55'),
(179, 'real-time-notify-id', 2, 8, 1, '2021-08-26 04:28:55', '2021-08-26 04:28:55'),
(180, 'real-time-notify-id', 1, 5, 1, '2021-08-26 04:29:55', '2021-08-26 04:29:55'),
(181, 'real-time-notify-id', 1, 5, 1, '2021-08-26 04:30:55', '2021-08-26 04:30:55'),
(182, 'real-time-notify-id', 1, 5, 1, '2021-08-26 04:31:55', '2021-08-26 04:31:55'),
(183, 'real-time-notify-id', 1, 5, 1, '2021-08-26 04:32:55', '2021-08-26 04:32:55'),
(184, 'real-time-notify-id', 1, 5, 1, '2021-08-26 04:33:55', '2021-08-26 04:33:55'),
(185, 'real-time-notify-id', 1, 5, 2, '2021-08-26 04:34:55', '2021-08-26 04:34:55'),
(186, 'real-time-notify-id', 1, 5, 1, '2021-08-26 04:35:55', '2021-08-26 04:35:55'),
(187, 'real-time-notify-id', 2, 7, 2, '2021-08-26 04:36:55', '2021-08-26 04:36:55'),
(188, 'real-time-notify-id', 2, 7, 1, '2021-08-26 04:37:55', '2021-08-26 04:37:55'),
(189, 'real-time-notify-id', 2, 7, 1, '2021-08-26 04:38:55', '2021-08-26 04:38:55'),
(190, 'real-time-notify-id', 2, 8, 3, '2021-08-26 04:39:55', '2021-08-26 04:39:55'),
(191, 'real-time-notify-id', 2, 7, 2, '2021-08-26 04:40:55', '2021-08-26 04:40:55'),
(192, 'real-time-notify-id', 2, 7, 1, '2021-08-26 04:41:55', '2021-08-26 04:41:55'),
(193, 'real-time-notify-id', 3, 11, 1, '2021-08-26 04:42:55', '2021-08-26 04:42:55'),
(194, 'real-time-notify-id', 3, 9, 1, '2021-08-26 04:43:55', '2021-08-26 04:43:55'),
(195, 'real-time-notify-id', 3, 14, 3, '2021-08-26 04:44:55', '2021-08-26 04:44:55'),
(196, 'real-time-notify-id', 3, 5, 1, '2021-08-26 04:45:55', '2021-08-26 04:45:55'),
(197, 'real-time-notify-id', 3, 5, 1, '2021-08-26 04:46:55', '2021-08-26 04:46:55'),
(198, 'real-time-notify-id', 3, 9, 1, '2021-08-26 04:47:55', '2021-08-26 04:47:55'),
(199, 'real-time-notify-id', 3, 9, 2, '2021-08-26 04:48:55', '2021-08-26 04:48:55'),
(200, 'real-time-notify-id', 3, 5, 2, '2021-08-26 04:49:55', '2021-08-26 04:49:55'),
(201, 'real-time-notify-id', 3, 5, 1, '2021-08-26 04:50:55', '2021-08-26 04:50:55'),
(202, 'real-time-notify-id', 3, 5, 1, '2021-08-26 04:51:56', '2021-08-26 04:51:56'),
(203, 'real-time-notify-id', 3, 5, 1, '2021-08-26 04:52:55', '2021-08-26 04:52:55'),
(204, 'real-time-notify-id', 3, 5, 1, '2021-08-26 04:53:55', '2021-08-26 04:53:55'),
(205, 'real-time-notify-id', 3, 5, 1, '2021-08-26 04:54:55', '2021-08-26 04:54:55'),
(206, 'real-time-notify-id', 3, 5, 1, '2021-08-26 04:55:55', '2021-08-26 04:55:55'),
(207, 'real-time-notify-id', 3, 5, 1, '2021-08-26 04:56:55', '2021-08-26 04:56:55'),
(208, 'real-time-notify-id', 3, 5, 1, '2021-08-26 04:57:55', '2021-08-26 04:57:55'),
(209, 'real-time-notify-id', 3, 5, 1, '2021-08-26 04:58:55', '2021-08-26 04:58:55'),
(210, 'real-time-notify-id', 3, 5, 1, '2021-08-26 04:59:55', '2021-08-26 04:59:55'),
(211, 'real-time-notify-id', 3, 5, 1, '2021-08-26 05:00:55', '2021-08-26 05:00:55'),
(212, 'real-time-notify-id', 3, 5, 1, '2021-08-26 05:01:55', '2021-08-26 05:01:55'),
(213, 'real-time-notify-id', 3, 5, 1, '2021-08-26 05:02:56', '2021-08-26 05:02:56'),
(214, 'real-time-notify-id', 3, 5, 1, '2021-08-26 05:03:55', '2021-08-26 05:03:55'),
(215, 'real-time-notify-id', 3, 5, 1, '2021-08-26 05:04:55', '2021-08-26 05:04:55'),
(216, 'real-time-notify-id', 3, 5, 1, '2021-08-26 05:05:56', '2021-08-26 05:05:56'),
(217, 'real-time-notify-id', 3, 5, 1, '2021-08-26 05:06:56', '2021-08-26 05:06:56'),
(218, 'real-time-notify-id', 3, 5, 1, '2021-08-26 05:07:56', '2021-08-26 05:07:56'),
(219, 'real-time-notify-id', 3, 5, 1, '2021-08-26 05:08:56', '2021-08-26 05:08:56'),
(220, 'real-time-notify-id', 3, 5, 1, '2021-08-26 05:09:56', '2021-08-26 05:09:56'),
(221, 'real-time-notify-id', 3, 4, 1, '2021-08-26 05:10:56', '2021-08-26 05:10:56'),
(222, 'real-time-notify-id', 3, 5, 1, '2021-08-26 05:11:56', '2021-08-26 05:11:56'),
(223, 'real-time-notify-id', 3, 5, 1, '2021-08-26 05:12:56', '2021-08-26 05:12:56'),
(224, 'real-time-notify-id', 3, 5, 1, '2021-08-26 05:13:56', '2021-08-26 05:13:56'),
(225, 'real-time-notify-id', 3, 5, 1, '2021-08-26 05:14:56', '2021-08-26 05:14:56'),
(226, 'real-time-notify-id', 3, 5, 1, '2021-08-26 05:15:56', '2021-08-26 05:15:56'),
(227, 'real-time-notify-id', 3, 5, 1, '2021-08-26 05:16:56', '2021-08-26 05:16:56'),
(228, 'real-time-notify-id', 3, 5, 1, '2021-08-26 05:17:56', '2021-08-26 05:17:56'),
(229, 'real-time-notify-id', 3, 5, 1, '2021-08-26 05:18:56', '2021-08-26 05:18:56'),
(230, 'real-time-notify-id', 3, 5, 1, '2021-08-26 05:19:56', '2021-08-26 05:19:56'),
(231, 'real-time-notify-id', 3, 4, 1, '2021-08-26 05:20:56', '2021-08-26 05:20:56'),
(232, 'real-time-notify-id', 3, 5, 1, '2021-08-26 05:21:56', '2021-08-26 05:21:56'),
(233, 'real-time-notify-id', 3, 5, 1, '2021-08-26 05:22:56', '2021-08-26 05:22:56'),
(234, 'real-time-notify-id', 3, 5, 1, '2021-08-26 05:23:56', '2021-08-26 05:23:56'),
(235, 'real-time-notify-id', 3, 5, 1, '2021-08-26 05:24:56', '2021-08-26 05:24:56'),
(236, 'real-time-notify-id', 3, 6, 1, '2021-08-26 05:25:56', '2021-08-26 05:25:56'),
(237, 'real-time-notify-id', 3, 11, 1, '2021-08-26 05:26:56', '2021-08-26 05:26:56'),
(238, 'real-time-notify-id', 3, 5, 1, '2021-08-26 05:27:56', '2021-08-26 05:27:56'),
(239, 'real-time-notify-id', 3, 5, 1, '2021-08-26 05:28:56', '2021-08-26 05:28:56'),
(240, 'real-time-notify-id', 3, 6, 1, '2021-08-26 05:29:56', '2021-08-26 05:29:56'),
(241, 'real-time-notify-id', 3, 7, 1, '2021-08-26 05:30:56', '2021-08-26 05:30:56'),
(242, 'real-time-notify-id', 3, 8, 2, '2021-08-26 05:31:56', '2021-08-26 05:31:56'),
(243, 'real-time-notify-id', 3, 5, 1, '2021-08-26 05:32:56', '2021-08-26 05:32:56'),
(244, 'real-time-notify-id', 3, 5, 1, '2021-08-26 05:33:56', '2021-08-26 05:33:56'),
(245, 'real-time-notify-id', 3, 5, 1, '2021-08-26 05:34:56', '2021-08-26 05:34:56'),
(246, 'real-time-notify-id', 3, 5, 1, '2021-08-26 05:35:56', '2021-08-26 05:35:56'),
(247, 'real-time-notify-id', 3, 5, 1, '2021-08-26 05:36:56', '2021-08-26 05:36:56'),
(248, 'real-time-notify-id', 3, 5, 1, '2021-08-26 05:37:56', '2021-08-26 05:37:56'),
(249, 'real-time-notify-id', 3, 8, 1, '2021-08-26 05:38:56', '2021-08-26 05:38:56'),
(250, 'real-time-notify-id', 3, 5, 1, '2021-08-26 05:39:56', '2021-08-26 05:39:56'),
(251, 'real-time-notify-id', 3, 8, 3, '2021-08-26 05:40:56', '2021-08-26 05:40:56'),
(252, 'real-time-notify-id', 3, 5, 1, '2021-08-26 05:41:56', '2021-08-26 05:41:56'),
(253, 'real-time-notify-id', 3, 3, 2, '2021-08-26 05:42:56', '2021-08-26 05:42:56'),
(254, 'real-time-notify-id', 2, 4, 3, '2021-08-26 05:43:56', '2021-08-26 05:43:56'),
(255, 'real-time-notify-id', 2, 3, 2, '2021-08-26 05:44:56', '2021-08-26 05:44:56'),
(256, 'real-time-notify-id', 2, 0, 3, '2021-08-26 05:45:56', '2021-08-26 05:45:56'),
(257, 'real-time-notify-id', 2, 1, 1, '2021-08-26 05:46:56', '2021-08-26 05:46:56'),
(258, 'real-time-notify-id', 2, 1, 1, '2021-08-26 05:47:56', '2021-08-26 05:47:56'),
(259, 'real-time-notify-id', 2, 1, 1, '2021-08-26 05:48:56', '2021-08-26 05:48:56'),
(260, 'real-time-notify-id', 2, 1, 1, '2021-08-26 05:49:56', '2021-08-26 05:49:56'),
(261, 'real-time-notify-id', 3, 4, 3, '2021-08-26 05:50:56', '2021-08-26 05:50:56'),
(262, 'real-time-notify-id', 3, 5, 1, '2021-08-26 05:51:56', '2021-08-26 05:51:56'),
(263, 'real-time-notify-id', 3, 5, 2, '2021-08-26 05:52:56', '2021-08-26 05:52:56'),
(264, 'real-time-notify-id', 3, 5, 1, '2021-08-26 05:53:56', '2021-08-26 05:53:56'),
(265, 'real-time-notify-id', 3, 5, 1, '2021-08-26 05:54:56', '2021-08-26 05:54:56'),
(266, 'real-time-notify-id', 3, 9, 2, '2021-08-26 05:55:56', '2021-08-26 05:55:56'),
(267, 'real-time-notify-id', 3, 5, 1, '2021-08-26 05:56:56', '2021-08-26 05:56:56'),
(268, 'real-time-notify-id', 3, 11, 2, '2021-08-26 05:57:56', '2021-08-26 05:57:56'),
(269, 'real-time-notify-id', 3, 7, 1, '2021-08-26 05:58:56', '2021-08-26 05:58:56'),
(270, 'real-time-notify-id', 3, 13, 4, '2021-08-26 05:59:56', '2021-08-26 05:59:56'),
(271, 'real-time-notify-id', 3, 17, 3, '2021-08-26 06:00:56', '2021-08-26 06:00:56'),
(272, 'real-time-notify-id', 3, 13, 2, '2021-08-26 06:01:56', '2021-08-26 06:01:56'),
(273, 'real-time-notify-id', 3, 5, 1, '2021-08-26 06:02:56', '2021-08-26 06:02:56'),
(274, 'real-time-notify-id', 3, 5, 1, '2021-08-26 06:03:56', '2021-08-26 06:03:56'),
(275, 'real-time-notify-id', 3, 5, 1, '2021-08-26 06:04:56', '2021-08-26 06:04:56'),
(276, 'real-time-notify-id', 3, 5, 1, '2021-08-26 06:05:56', '2021-08-26 06:05:56'),
(277, 'real-time-notify-id', 3, 5, 1, '2021-08-26 06:06:56', '2021-08-26 06:06:56'),
(278, 'real-time-notify-id', 3, 5, 1, '2021-08-26 06:07:56', '2021-08-26 06:07:56'),
(279, 'real-time-notify-id', 3, 5, 1, '2021-08-26 06:08:56', '2021-08-26 06:08:56'),
(280, 'real-time-notify-id', 3, 5, 1, '2021-08-26 06:09:56', '2021-08-26 06:09:56'),
(281, 'real-time-notify-id', 3, 5, 1, '2021-08-26 06:10:56', '2021-08-26 06:10:56'),
(282, 'real-time-notify-id', 3, 4, 1, '2021-08-26 06:11:56', '2021-08-26 06:11:56'),
(283, 'real-time-notify-id', 3, 5, 1, '2021-08-26 06:12:56', '2021-08-26 06:12:56'),
(284, 'real-time-notify-id', 3, 5, 1, '2021-08-26 06:13:56', '2021-08-26 06:13:56'),
(285, 'real-time-notify-id', 3, 5, 1, '2021-08-26 06:14:56', '2021-08-26 06:14:56'),
(286, 'real-time-notify-id', 3, 5, 1, '2021-08-26 06:15:56', '2021-08-26 06:15:56'),
(287, 'real-time-notify-id', 3, 5, 1, '2021-08-26 06:16:56', '2021-08-26 06:16:56'),
(288, 'real-time-notify-id', 3, 5, 1, '2021-08-26 06:17:56', '2021-08-26 06:17:56'),
(289, 'real-time-notify-id', 3, 5, 1, '2021-08-26 06:18:56', '2021-08-26 06:18:56'),
(290, 'real-time-notify-id', 3, 5, 1, '2021-08-26 06:19:56', '2021-08-26 06:19:56'),
(291, 'real-time-notify-id', 3, 5, 1, '2021-08-26 06:20:56', '2021-08-26 06:20:56'),
(292, 'real-time-notify-id', 3, 5, 1, '2021-08-26 06:21:56', '2021-08-26 06:21:56'),
(293, 'real-time-notify-id', 3, 5, 1, '2021-08-26 06:22:56', '2021-08-26 06:22:56'),
(294, 'real-time-notify-id', 3, 5, 1, '2021-08-26 06:23:56', '2021-08-26 06:23:56'),
(295, 'real-time-notify-id', 3, 5, 1, '2021-08-26 06:24:56', '2021-08-26 06:24:56'),
(296, 'real-time-notify-id', 3, 5, 1, '2021-08-26 06:25:56', '2021-08-26 06:25:56'),
(297, 'real-time-notify-id', 3, 5, 1, '2021-08-26 06:26:56', '2021-08-26 06:26:56'),
(298, 'real-time-notify-id', 3, 12, 3, '2021-08-26 06:27:56', '2021-08-26 06:27:56'),
(299, 'real-time-notify-id', 2, 6, 1, '2021-08-26 06:28:56', '2021-08-26 06:28:56'),
(300, 'real-time-notify-id', 3, 17, 3, '2021-08-26 06:29:56', '2021-08-26 06:29:56'),
(301, 'real-time-notify-id', 3, 8, 3, '2021-08-26 06:30:56', '2021-08-26 06:30:56'),
(302, 'real-time-notify-id', 3, 5, 1, '2021-08-26 06:31:56', '2021-08-26 06:31:56'),
(303, 'real-time-notify-id', 3, 5, 1, '2021-08-26 06:32:56', '2021-08-26 06:32:56'),
(304, 'real-time-notify-id', 3, 5, 1, '2021-08-26 06:33:56', '2021-08-26 06:33:56'),
(305, 'real-time-notify-id', 3, 5, 1, '2021-08-26 06:34:56', '2021-08-26 06:34:56'),
(306, 'real-time-notify-id', 3, 4, 1, '2021-08-26 06:35:56', '2021-08-26 06:35:56'),
(307, 'real-time-notify-id', 3, 5, 1, '2021-08-26 06:36:56', '2021-08-26 06:36:56'),
(308, 'real-time-notify-id', 3, 5, 1, '2021-08-26 06:37:56', '2021-08-26 06:37:56'),
(309, 'real-time-notify-id', 3, 5, 1, '2021-08-26 06:38:56', '2021-08-26 06:38:56'),
(310, 'real-time-notify-id', 3, 5, 1, '2021-08-26 06:39:56', '2021-08-26 06:39:56'),
(311, 'real-time-notify-id', 3, 5, 1, '2021-08-26 06:40:56', '2021-08-26 06:40:56'),
(312, 'real-time-notify-id', 3, 5, 1, '2021-08-26 06:41:56', '2021-08-26 06:41:56'),
(313, 'real-time-notify-id', 3, 16, 3, '2021-08-26 06:42:56', '2021-08-26 06:42:56'),
(314, 'real-time-notify-id', 3, 6, 2, '2021-08-26 06:43:56', '2021-08-26 06:43:56'),
(315, 'real-time-notify-id', 3, 5, 1, '2021-08-26 06:44:56', '2021-08-26 06:44:56'),
(316, 'real-time-notify-id', 3, 5, 1, '2021-08-26 06:45:56', '2021-08-26 06:45:56'),
(317, 'real-time-notify-id', 3, 7, 1, '2021-08-26 06:46:56', '2021-08-26 06:46:56'),
(318, 'real-time-notify-id', 3, 9, 3, '2021-08-26 06:47:56', '2021-08-26 06:47:56'),
(319, 'real-time-notify-id', 3, 7, 3, '2021-08-26 06:48:56', '2021-08-26 06:48:56'),
(320, 'real-time-notify-id', 3, 9, 3, '2021-08-26 06:49:56', '2021-08-26 06:49:56'),
(321, 'real-time-notify-id', 3, 5, 1, '2021-08-26 06:50:56', '2021-08-26 06:50:56'),
(322, 'real-time-notify-id', 3, 7, 2, '2021-08-26 06:51:56', '2021-08-26 06:51:56'),
(323, 'real-time-notify-id', 3, 9, 2, '2021-08-26 06:52:56', '2021-08-26 06:52:56'),
(324, 'real-time-notify-id', 3, 9, 3, '2021-08-26 06:53:56', '2021-08-26 06:53:56'),
(325, 'real-time-notify-id', 3, 7, 2, '2021-08-26 06:54:56', '2021-08-26 06:54:56'),
(326, 'real-time-notify-id', 3, 7, 2, '2021-08-26 06:55:56', '2021-08-26 06:55:56'),
(327, 'real-time-notify-id', 3, 9, 3, '2021-08-26 06:56:56', '2021-08-26 06:56:56'),
(328, 'real-time-notify-id', 3, 5, 1, '2021-08-26 06:57:56', '2021-08-26 06:57:56'),
(329, 'real-time-notify-id', 3, 6, 2, '2021-08-26 06:58:56', '2021-08-26 06:58:56'),
(330, 'real-time-notify-id', 3, 11, 3, '2021-08-26 06:59:56', '2021-08-26 06:59:56'),
(331, 'real-time-notify-id', 3, 5, 2, '2021-08-26 07:00:56', '2021-08-26 07:00:56'),
(332, 'real-time-notify-id', 3, 5, 1, '2021-08-26 07:01:56', '2021-08-26 07:01:56'),
(333, 'real-time-notify-id', 3, 5, 1, '2021-08-26 07:02:56', '2021-08-26 07:02:56'),
(334, 'real-time-notify-id', 3, 5, 1, '2021-08-26 07:03:56', '2021-08-26 07:03:56'),
(335, 'real-time-notify-id', 3, 5, 1, '2021-08-26 07:04:56', '2021-08-26 07:04:56'),
(336, 'real-time-notify-id', 3, 5, 1, '2021-08-26 07:05:56', '2021-08-26 07:05:56'),
(337, 'real-time-notify-id', 3, 5, 1, '2021-08-26 07:06:57', '2021-08-26 07:06:57'),
(338, 'real-time-notify-id', 3, 5, 1, '2021-08-26 07:07:56', '2021-08-26 07:07:56'),
(339, 'real-time-notify-id', 3, 5, 1, '2021-08-26 07:08:56', '2021-08-26 07:08:56'),
(340, 'real-time-notify-id', 3, 8, 0, '2021-08-26 07:11:22', '2021-08-26 07:11:22'),
(341, 'real-time-notify-id', 3, 5, 1, '2021-08-26 07:11:56', '2021-08-26 07:11:56'),
(342, 'real-time-notify-id', 3, 6, 1, '2021-08-26 07:12:56', '2021-08-26 07:12:56'),
(343, 'real-time-notify-id', 3, 5, 1, '2021-08-26 07:13:56', '2021-08-26 07:13:56'),
(344, 'real-time-notify-id', 3, 5, 1, '2021-08-26 07:14:57', '2021-08-26 07:14:57'),
(345, 'real-time-notify-id', 3, 6, 1, '2021-08-26 07:15:56', '2021-08-26 07:15:56'),
(346, 'real-time-notify-id', 2, 3, 1, '2021-08-26 07:17:09', '2021-08-26 07:17:09'),
(347, 'real-time-notify-id', 2, 4, 1, '2021-08-26 07:17:56', '2021-08-26 07:17:56'),
(348, 'real-time-notify-id', 2, 3, 1, '2021-08-26 07:18:56', '2021-08-26 07:18:56'),
(349, 'real-time-notify-id', 3, 5, 2, '2021-08-26 07:19:56', '2021-08-26 07:19:56'),
(350, 'real-time-notify-id', 3, 5, 1, '2021-08-26 07:20:56', '2021-08-26 07:20:56'),
(351, 'real-time-notify-id', 3, 10, 0, '2021-08-26 07:23:56', '2021-08-26 07:23:56'),
(352, 'real-time-notify-id', 3, 6, 1, '2021-08-26 07:24:56', '2021-08-26 07:24:56'),
(353, 'real-time-notify-id', 2, 9, 1, '2021-08-26 07:25:56', '2021-08-26 07:25:56'),
(354, 'real-time-notify-id', 3, 4, 1, '2021-08-26 07:26:57', '2021-08-26 07:26:57'),
(355, 'real-time-notify-id', 3, 8, 3, '2021-08-26 07:27:57', '2021-08-26 07:27:57'),
(356, 'real-time-notify-id', 3, 15, 3, '2021-08-26 07:28:56', '2021-08-26 07:28:56'),
(357, 'real-time-notify-id', 3, 7, 1, '2021-08-26 07:29:56', '2021-08-26 07:29:56'),
(358, 'real-time-notify-id', 3, 8, 1, '2021-08-26 07:30:56', '2021-08-26 07:30:56'),
(359, 'real-time-notify-id', 3, 7, 1, '2021-08-26 07:32:02', '2021-08-26 07:32:02'),
(360, 'real-time-notify-id', 2, 7, 1, '2021-08-26 07:32:56', '2021-08-26 07:32:56'),
(361, 'real-time-notify-id', 2, 4, 1, '2021-08-26 07:33:56', '2021-08-26 07:33:56'),
(362, 'real-time-notify-id', 3, 7, 1, '2021-08-26 07:34:56', '2021-08-26 07:34:56'),
(363, 'real-time-notify-id', 3, 14, 2, '2021-08-26 07:35:56', '2021-08-26 07:35:56'),
(364, 'real-time-notify-id', 3, 6, 2, '2021-08-26 07:36:57', '2021-08-26 07:36:57'),
(365, 'real-time-notify-id', 3, 5, 1, '2021-08-26 07:37:56', '2021-08-26 07:37:56'),
(366, 'real-time-notify-id', 3, 7, 2, '2021-08-26 07:38:57', '2021-08-26 07:38:57'),
(367, 'real-time-notify-id', 2, 6, 1, '2021-08-26 07:39:56', '2021-08-26 07:39:56'),
(368, 'real-time-notify-id', 3, 5, 1, '2021-08-26 07:40:56', '2021-08-26 07:40:56'),
(369, 'real-time-notify-id', 3, 5, 1, '2021-08-26 07:41:56', '2021-08-26 07:41:56'),
(370, 'real-time-notify-id', 3, 20, 1, '2021-08-26 07:42:56', '2021-08-26 07:42:56'),
(371, 'real-time-notify-id', 3, 5, 1, '2021-08-26 07:43:57', '2021-08-26 07:43:57'),
(372, 'real-time-notify-id', 3, 5, 1, '2021-08-26 07:44:56', '2021-08-26 07:44:56'),
(373, 'real-time-notify-id', 1, 2, 1, '2021-08-26 07:45:56', '2021-08-26 07:45:56'),
(374, 'real-time-notify-id', 1, 2, 1, '2021-08-26 07:46:56', '2021-08-26 07:46:56'),
(375, 'real-time-notify-id', 2, 6, 1, '2021-08-26 07:47:56', '2021-08-26 07:47:56'),
(376, 'real-time-notify-id', 3, 22, 2, '2021-08-26 07:48:56', '2021-08-26 07:48:56'),
(377, 'real-time-notify-id', 3, 8, 1, '2021-08-26 07:49:56', '2021-08-26 07:49:56'),
(378, 'real-time-notify-id', 3, 6, 1, '2021-08-26 07:50:56', '2021-08-26 07:50:56'),
(379, 'real-time-notify-id', 3, 5, 1, '2021-08-26 07:51:57', '2021-08-26 07:51:57'),
(380, 'real-time-notify-id', 3, 5, 1, '2021-08-26 07:52:56', '2021-08-26 07:52:56'),
(381, 'real-time-notify-id', 3, 5, 1, '2021-08-26 07:53:57', '2021-08-26 07:53:57'),
(382, 'real-time-notify-id', 3, 5, 1, '2021-08-26 07:54:57', '2021-08-26 07:54:57'),
(383, 'real-time-notify-id', 3, 5, 1, '2021-08-26 07:55:56', '2021-08-26 07:55:56'),
(384, 'real-time-notify-id', 3, 5, 1, '2021-08-26 07:56:56', '2021-08-26 07:56:56'),
(385, 'real-time-notify-id', 3, 5, 1, '2021-08-26 07:57:56', '2021-08-26 07:57:56'),
(386, 'real-time-notify-id', 3, 5, 1, '2021-08-26 07:58:56', '2021-08-26 07:58:56'),
(387, 'real-time-notify-id', 3, 6, 1, '2021-08-26 07:59:56', '2021-08-26 07:59:56'),
(388, 'real-time-notify-id', 3, 3, 1, '2021-08-26 08:00:56', '2021-08-26 08:00:56'),
(389, 'real-time-notify-id', 2, 4, 1, '2021-08-26 08:01:56', '2021-08-26 08:01:56'),
(390, 'real-time-notify-id', 2, 4, 1, '2021-08-26 08:02:56', '2021-08-26 08:02:56'),
(391, 'real-time-notify-id', 3, 4, 1, '2021-08-26 08:03:57', '2021-08-26 08:03:57'),
(392, 'real-time-notify-id', 3, 11, 1, '2021-08-26 08:04:56', '2021-08-26 08:04:56'),
(393, 'real-time-notify-id', 3, 4, 1, '2021-08-26 08:05:57', '2021-08-26 08:05:57'),
(394, 'real-time-notify-id', 3, 15, 2, '2021-08-26 08:06:56', '2021-08-26 08:06:56'),
(395, 'real-time-notify-id', 3, 6, 2, '2021-08-26 08:07:56', '2021-08-26 08:07:56'),
(396, 'real-time-notify-id', 3, 5, 1, '2021-08-26 08:08:56', '2021-08-26 08:08:56'),
(397, 'real-time-notify-id', 3, 5, 1, '2021-08-26 08:09:56', '2021-08-26 08:09:56'),
(398, 'real-time-notify-id', 3, 5, 1, '2021-08-26 08:10:56', '2021-08-26 08:10:56'),
(399, 'real-time-notify-id', 3, 5, 1, '2021-08-26 08:11:56', '2021-08-26 08:11:56'),
(400, 'real-time-notify-id', 3, 5, 1, '2021-08-26 08:12:56', '2021-08-26 08:12:56'),
(401, 'real-time-notify-id', 3, 5, 1, '2021-08-26 08:13:56', '2021-08-26 08:13:56'),
(402, 'real-time-notify-id', 3, 5, 1, '2021-08-26 08:14:56', '2021-08-26 08:14:56'),
(403, 'real-time-notify-id', 3, 5, 1, '2021-08-26 08:15:56', '2021-08-26 08:15:56'),
(404, 'real-time-notify-id', 3, 5, 1, '2021-08-26 08:16:56', '2021-08-26 08:16:56'),
(405, 'real-time-notify-id', 3, 5, 1, '2021-08-26 08:17:57', '2021-08-26 08:17:57'),
(406, 'real-time-notify-id', 3, 5, 1, '2021-08-26 08:18:56', '2021-08-26 08:18:56'),
(407, 'real-time-notify-id', 3, 5, 1, '2021-08-26 08:19:56', '2021-08-26 08:19:56'),
(408, 'real-time-notify-id', 3, 4, 1, '2021-08-26 08:20:57', '2021-08-26 08:20:57'),
(409, 'real-time-notify-id', 3, 5, 1, '2021-08-26 08:21:57', '2021-08-26 08:21:57'),
(410, 'real-time-notify-id', 3, 4, 1, '2021-08-26 08:22:57', '2021-08-26 08:22:57'),
(411, 'real-time-notify-id', 3, 5, 1, '2021-08-26 08:23:57', '2021-08-26 08:23:57'),
(412, 'real-time-notify-id', 3, 5, 1, '2021-08-26 08:24:57', '2021-08-26 08:24:57'),
(413, 'real-time-notify-id', 3, 5, 1, '2021-08-26 08:25:57', '2021-08-26 08:25:57'),
(414, 'real-time-notify-id', 3, 5, 1, '2021-08-26 08:26:57', '2021-08-26 08:26:57'),
(415, 'real-time-notify-id', 3, 5, 1, '2021-08-26 08:27:57', '2021-08-26 08:27:57'),
(416, 'real-time-notify-id', 3, 5, 1, '2021-08-26 08:28:57', '2021-08-26 08:28:57'),
(417, 'real-time-notify-id', 3, 5, 1, '2021-08-26 08:29:57', '2021-08-26 08:29:57'),
(418, 'real-time-notify-id', 3, 5, 1, '2021-08-26 08:30:57', '2021-08-26 08:30:57'),
(419, 'real-time-notify-id', 3, 5, 1, '2021-08-26 08:31:57', '2021-08-26 08:31:57'),
(420, 'real-time-notify-id', 3, 5, 1, '2021-08-26 08:32:57', '2021-08-26 08:32:57'),
(421, 'real-time-notify-id', 3, 5, 1, '2021-08-26 08:33:57', '2021-08-26 08:33:57'),
(422, 'real-time-notify-id', 3, 5, 1, '2021-08-26 08:34:57', '2021-08-26 08:34:57'),
(423, 'real-time-notify-id', 3, 5, 1, '2021-08-26 08:35:57', '2021-08-26 08:35:57'),
(424, 'real-time-notify-id', 3, 4, 1, '2021-08-26 08:36:57', '2021-08-26 08:36:57'),
(425, 'real-time-notify-id', 3, 5, 1, '2021-08-26 08:37:57', '2021-08-26 08:37:57'),
(426, 'real-time-notify-id', 3, 5, 1, '2021-08-26 08:39:05', '2021-08-26 08:39:05'),
(427, 'real-time-notify-id', 1, 4, 0, '2021-08-26 21:52:09', '2021-08-26 21:52:09'),
(428, 'real-time-notify-id', 2, 12, 1, '2021-08-26 21:53:09', '2021-08-26 21:53:09'),
(429, 'real-time-notify-id', 3, 10, 2, '2021-08-26 21:54:09', '2021-08-26 21:54:09'),
(430, 'real-time-notify-id', 3, 6, 2, '2021-08-26 21:55:09', '2021-08-26 21:55:09'),
(431, 'real-time-notify-id', 3, 5, 1, '2021-08-26 21:56:09', '2021-08-26 21:56:09'),
(432, 'real-time-notify-id', 3, 5, 1, '2021-08-26 21:57:09', '2021-08-26 21:57:09'),
(433, 'real-time-notify-id', 3, 5, 1, '2021-08-26 21:58:09', '2021-08-26 21:58:09'),
(434, 'real-time-notify-id', 3, 5, 1, '2021-08-26 21:59:09', '2021-08-26 21:59:09'),
(435, 'real-time-notify-id', 3, 5, 1, '2021-08-26 22:00:09', '2021-08-26 22:00:09'),
(436, 'real-time-notify-id', 3, 5, 1, '2021-08-26 22:01:09', '2021-08-26 22:01:09'),
(437, 'real-time-notify-id', 3, 5, 1, '2021-08-26 22:02:09', '2021-08-26 22:02:09'),
(438, 'real-time-notify-id', 3, 5, 1, '2021-08-26 22:03:09', '2021-08-26 22:03:09'),
(439, 'real-time-notify-id', 3, 4, 1, '2021-08-26 22:04:09', '2021-08-26 22:04:09'),
(440, 'real-time-notify-id', 3, 5, 1, '2021-08-26 22:05:09', '2021-08-26 22:05:09'),
(441, 'real-time-notify-id', 3, 4, 1, '2021-08-26 22:06:09', '2021-08-26 22:06:09'),
(442, 'real-time-notify-id', 3, 5, 1, '2021-08-26 22:07:09', '2021-08-26 22:07:09'),
(443, 'real-time-notify-id', 3, 5, 1, '2021-08-26 22:08:09', '2021-08-26 22:08:09'),
(444, 'real-time-notify-id', 3, 5, 1, '2021-08-26 22:09:09', '2021-08-26 22:09:09'),
(445, 'real-time-notify-id', 3, 5, 1, '2021-08-26 22:10:09', '2021-08-26 22:10:09'),
(446, 'real-time-notify-id', 3, 5, 1, '2021-08-26 22:11:09', '2021-08-26 22:11:09'),
(447, 'real-time-notify-id', 3, 5, 1, '2021-08-26 22:12:09', '2021-08-26 22:12:09'),
(448, 'real-time-notify-id', 3, 5, 1, '2021-08-26 22:13:09', '2021-08-26 22:13:09'),
(449, 'real-time-notify-id', 3, 5, 1, '2021-08-26 22:14:09', '2021-08-26 22:14:09'),
(450, 'real-time-notify-id', 3, 5, 1, '2021-08-26 22:15:09', '2021-08-26 22:15:09'),
(451, 'real-time-notify-id', 3, 7, 1, '2021-08-26 22:16:09', '2021-08-26 22:16:09'),
(452, 'real-time-notify-id', 3, 5, 1, '2021-08-26 22:17:09', '2021-08-26 22:17:09'),
(453, 'real-time-notify-id', 3, 3, 1, '2021-08-26 22:18:09', '2021-08-26 22:18:09'),
(454, 'real-time-notify-id', 3, 5, 1, '2021-08-26 22:19:09', '2021-08-26 22:19:09'),
(455, 'real-time-notify-id', 3, 5, 1, '2021-08-26 22:20:09', '2021-08-26 22:20:09'),
(456, 'real-time-notify-id', 3, 5, 1, '2021-08-26 22:21:10', '2021-08-26 22:21:10'),
(457, 'real-time-notify-id', 3, 5, 1, '2021-08-26 22:22:09', '2021-08-26 22:22:09'),
(458, 'real-time-notify-id', 3, 5, 1, '2021-08-26 22:23:10', '2021-08-26 22:23:10'),
(459, 'real-time-notify-id', 3, 5, 1, '2021-08-26 22:24:09', '2021-08-26 22:24:09'),
(460, 'real-time-notify-id', 3, 7, 1, '2021-08-26 22:25:09', '2021-08-26 22:25:09'),
(461, 'real-time-notify-id', 3, 5, 1, '2021-08-26 22:26:09', '2021-08-26 22:26:09'),
(462, 'real-time-notify-id', 3, 5, 1, '2021-08-26 22:27:09', '2021-08-26 22:27:09'),
(463, 'real-time-notify-id', 3, 5, 1, '2021-08-26 22:28:09', '2021-08-26 22:28:09'),
(464, 'real-time-notify-id', 3, 5, 1, '2021-08-26 22:29:09', '2021-08-26 22:29:09'),
(465, 'real-time-notify-id', 3, 5, 1, '2021-08-26 22:30:09', '2021-08-26 22:30:09'),
(466, 'real-time-notify-id', 3, 5, 1, '2021-08-26 22:31:09', '2021-08-26 22:31:09'),
(467, 'real-time-notify-id', 3, 5, 1, '2021-08-26 22:32:09', '2021-08-26 22:32:09'),
(468, 'real-time-notify-id', 3, 5, 1, '2021-08-26 22:33:09', '2021-08-26 22:33:09'),
(469, 'real-time-notify-id', 3, 3, 1, '2021-08-26 22:34:09', '2021-08-26 22:34:09'),
(470, 'real-time-notify-id', 3, 5, 1, '2021-08-26 22:35:09', '2021-08-26 22:35:09'),
(471, 'real-time-notify-id', 3, 5, 1, '2021-08-26 22:36:09', '2021-08-26 22:36:09'),
(472, 'real-time-notify-id', 3, 5, 1, '2021-08-26 22:37:09', '2021-08-26 22:37:09'),
(473, 'real-time-notify-id', 3, 5, 1, '2021-08-26 22:38:09', '2021-08-26 22:38:09'),
(474, 'real-time-notify-id', 3, 5, 1, '2021-08-26 22:39:09', '2021-08-26 22:39:09'),
(475, 'real-time-notify-id', 3, 5, 1, '2021-08-26 22:40:09', '2021-08-26 22:40:09'),
(476, 'real-time-notify-id', 3, 5, 1, '2021-08-26 22:41:09', '2021-08-26 22:41:09'),
(477, 'real-time-notify-id', 3, 5, 1, '2021-08-26 22:42:09', '2021-08-26 22:42:09'),
(478, 'real-time-notify-id', 3, 5, 1, '2021-08-26 22:43:09', '2021-08-26 22:43:09'),
(479, 'real-time-notify-id', 3, 5, 1, '2021-08-26 22:44:09', '2021-08-26 22:44:09'),
(480, 'real-time-notify-id', 3, 5, 1, '2021-08-26 22:45:10', '2021-08-26 22:45:10'),
(481, 'real-time-notify-id', 3, 5, 1, '2021-08-26 22:46:09', '2021-08-26 22:46:09'),
(482, 'real-time-notify-id', 3, 5, 1, '2021-08-26 22:47:09', '2021-08-26 22:47:09'),
(483, 'real-time-notify-id', 3, 5, 1, '2021-08-26 22:48:10', '2021-08-26 22:48:10'),
(484, 'real-time-notify-id', 3, 4, 1, '2021-08-26 22:49:09', '2021-08-26 22:49:09'),
(485, 'real-time-notify-id', 3, 5, 1, '2021-08-26 22:50:09', '2021-08-26 22:50:09'),
(486, 'real-time-notify-id', 3, 5, 1, '2021-08-26 22:51:10', '2021-08-26 22:51:10'),
(487, 'real-time-notify-id', 3, 5, 1, '2021-08-26 22:52:10', '2021-08-26 22:52:10'),
(488, 'real-time-notify-id', 3, 5, 1, '2021-08-26 22:53:10', '2021-08-26 22:53:10'),
(489, 'real-time-notify-id', 3, 4, 1, '2021-08-26 22:54:10', '2021-08-26 22:54:10'),
(490, 'real-time-notify-id', 3, 5, 1, '2021-08-26 22:55:10', '2021-08-26 22:55:10'),
(491, 'real-time-notify-id', 3, 5, 1, '2021-08-26 22:56:10', '2021-08-26 22:56:10'),
(492, 'real-time-notify-id', 3, 5, 1, '2021-08-26 22:57:10', '2021-08-26 22:57:10'),
(493, 'real-time-notify-id', 3, 5, 1, '2021-08-26 22:58:10', '2021-08-26 22:58:10'),
(494, 'real-time-notify-id', 3, 5, 1, '2021-08-26 22:59:10', '2021-08-26 22:59:10'),
(495, 'real-time-notify-id', 3, 5, 1, '2021-08-26 23:00:10', '2021-08-26 23:00:10'),
(496, 'real-time-notify-id', 3, 5, 1, '2021-08-26 23:01:10', '2021-08-26 23:01:10'),
(497, 'real-time-notify-id', 3, 5, 1, '2021-08-26 23:02:10', '2021-08-26 23:02:10'),
(498, 'real-time-notify-id', 3, 5, 1, '2021-08-26 23:03:10', '2021-08-26 23:03:10'),
(499, 'real-time-notify-id', 3, 5, 1, '2021-08-26 23:04:10', '2021-08-26 23:04:10'),
(500, 'real-time-notify-id', 3, 4, 1, '2021-08-26 23:05:10', '2021-08-26 23:05:10'),
(501, 'real-time-notify-id', 3, 5, 1, '2021-08-26 23:06:10', '2021-08-26 23:06:10'),
(502, 'real-time-notify-id', 3, 5, 1, '2021-08-26 23:07:10', '2021-08-26 23:07:10'),
(503, 'real-time-notify-id', 3, 5, 1, '2021-08-26 23:08:10', '2021-08-26 23:08:10'),
(504, 'real-time-notify-id', 3, 5, 1, '2021-08-26 23:09:10', '2021-08-26 23:09:10'),
(505, 'real-time-notify-id', 3, 5, 1, '2021-08-26 23:10:10', '2021-08-26 23:10:10'),
(506, 'real-time-notify-id', 3, 5, 1, '2021-08-26 23:11:10', '2021-08-26 23:11:10'),
(507, 'real-time-notify-id', 3, 5, 1, '2021-08-26 23:12:10', '2021-08-26 23:12:10'),
(508, 'real-time-notify-id', 3, 5, 1, '2021-08-26 23:13:10', '2021-08-26 23:13:10'),
(509, 'real-time-notify-id', 3, 4, 1, '2021-08-26 23:14:10', '2021-08-26 23:14:10'),
(510, 'real-time-notify-id', 3, 6, 1, '2021-08-26 23:15:10', '2021-08-26 23:15:10'),
(511, 'real-time-notify-id', 3, 5, 1, '2021-08-26 23:16:10', '2021-08-26 23:16:10'),
(512, 'real-time-notify-id', 3, 5, 1, '2021-08-26 23:17:10', '2021-08-26 23:17:10'),
(513, 'real-time-notify-id', 3, 4, 1, '2021-08-26 23:31:53', '2021-08-26 23:31:53'),
(514, 'real-time-notify-id', 3, 9, 1, '2021-08-26 23:32:53', '2021-08-26 23:32:53'),
(515, 'real-time-notify-id', 2, 6, 1, '2021-08-26 23:33:53', '2021-08-26 23:33:53'),
(516, 'real-time-notify-id', 2, 6, 1, '2021-08-26 23:34:53', '2021-08-26 23:34:53'),
(517, 'real-time-notify-id', 2, 6, 1, '2021-08-26 23:35:53', '2021-08-26 23:35:53'),
(518, 'real-time-notify-id', 2, 6, 1, '2021-08-26 23:36:53', '2021-08-26 23:36:53'),
(519, 'real-time-notify-id', 2, 6, 1, '2021-08-26 23:37:53', '2021-08-26 23:37:53'),
(520, 'real-time-notify-id', 2, 6, 1, '2021-08-26 23:38:54', '2021-08-26 23:38:54'),
(521, 'real-time-notify-id', 2, 6, 1, '2021-08-26 23:39:54', '2021-08-26 23:39:54'),
(522, 'real-time-notify-id', 2, 6, 1, '2021-08-26 23:40:53', '2021-08-26 23:40:53'),
(523, 'real-time-notify-id', 2, 6, 1, '2021-08-26 23:41:53', '2021-08-26 23:41:53'),
(524, 'real-time-notify-id', 2, 6, 1, '2021-08-26 23:42:54', '2021-08-26 23:42:54'),
(525, 'real-time-notify-id', 2, 6, 1, '2021-08-26 23:43:54', '2021-08-26 23:43:54'),
(526, 'real-time-notify-id', 2, 6, 1, '2021-08-26 23:44:54', '2021-08-26 23:44:54'),
(527, 'real-time-notify-id', 2, 5, 1, '2021-08-26 23:45:54', '2021-08-26 23:45:54'),
(528, 'real-time-notify-id', 2, 6, 1, '2021-08-26 23:46:54', '2021-08-26 23:46:54'),
(529, 'real-time-notify-id', 2, 5, 1, '2021-08-26 23:47:54', '2021-08-26 23:47:54'),
(530, 'real-time-notify-id', 2, 6, 1, '2021-08-26 23:48:54', '2021-08-26 23:48:54'),
(531, 'real-time-notify-id', 2, 5, 1, '2021-08-26 23:49:54', '2021-08-26 23:49:54'),
(532, 'real-time-notify-id', 2, 6, 1, '2021-08-26 23:50:55', '2021-08-26 23:50:55'),
(533, 'real-time-notify-id', 2, 6, 1, '2021-08-26 23:51:54', '2021-08-26 23:51:54'),
(534, 'real-time-notify-id', 2, 6, 1, '2021-08-26 23:52:54', '2021-08-26 23:52:54'),
(535, 'real-time-notify-id', 2, 6, 1, '2021-08-26 23:53:54', '2021-08-26 23:53:54'),
(536, 'real-time-notify-id', 2, 6, 1, '2021-08-26 23:54:54', '2021-08-26 23:54:54'),
(537, 'real-time-notify-id', 2, 6, 1, '2021-08-26 23:55:54', '2021-08-26 23:55:54'),
(538, 'real-time-notify-id', 2, 6, 1, '2021-08-26 23:56:54', '2021-08-26 23:56:54'),
(539, 'real-time-notify-id', 2, 6, 1, '2021-08-26 23:57:54', '2021-08-26 23:57:54'),
(540, 'real-time-notify-id', 2, 6, 1, '2021-08-26 23:58:54', '2021-08-26 23:58:54'),
(541, 'real-time-notify-id', 2, 5, 1, '2021-08-26 23:59:55', '2021-08-26 23:59:55'),
(542, 'real-time-notify-id', 2, 3, 1, '2021-08-27 00:00:54', '2021-08-27 00:00:54'),
(543, 'real-time-notify-id', 2, 6, 1, '2021-08-27 00:01:53', '2021-08-27 00:01:53'),
(544, 'real-time-notify-id', 2, 6, 1, '2021-08-27 00:02:54', '2021-08-27 00:02:54'),
(545, 'real-time-notify-id', 2, 6, 1, '2021-08-27 00:03:54', '2021-08-27 00:03:54'),
(546, 'real-time-notify-id', 2, 6, 1, '2021-08-27 00:04:54', '2021-08-27 00:04:54'),
(547, 'real-time-notify-id', 2, 6, 1, '2021-08-27 00:05:54', '2021-08-27 00:05:54'),
(548, 'real-time-notify-id', 2, 6, 1, '2021-08-27 00:06:54', '2021-08-27 00:06:54'),
(549, 'real-time-notify-id', 2, 6, 1, '2021-08-27 00:07:54', '2021-08-27 00:07:54'),
(550, 'real-time-notify-id', 2, 6, 1, '2021-08-27 00:08:54', '2021-08-27 00:08:54'),
(551, 'real-time-notify-id', 2, 13, 1, '2021-08-27 00:09:54', '2021-08-27 00:09:54'),
(552, 'real-time-notify-id', 2, 6, 1, '2021-08-27 00:10:54', '2021-08-27 00:10:54'),
(553, 'real-time-notify-id', 2, 6, 1, '2021-08-27 00:11:54', '2021-08-27 00:11:54'),
(554, 'real-time-notify-id', 2, 14, 1, '2021-08-27 00:12:54', '2021-08-27 00:12:54'),
(555, 'real-time-notify-id', 2, 15, 1, '2021-08-27 00:13:54', '2021-08-27 00:13:54'),
(556, 'real-time-notify-id', 2, 6, 1, '2021-08-27 00:14:54', '2021-08-27 00:14:54'),
(557, 'real-time-notify-id', 2, 5, 1, '2021-08-27 00:15:54', '2021-08-27 00:15:54'),
(558, 'real-time-notify-id', 1, 4, 1, '2021-08-27 00:16:54', '2021-08-27 00:16:54'),
(559, 'real-time-notify-id', 1, 4, 1, '2021-08-27 00:17:54', '2021-08-27 00:17:54'),
(560, 'real-time-notify-id', 1, 4, 1, '2021-08-27 00:18:54', '2021-08-27 00:18:54'),
(561, 'real-time-notify-id', 1, 3, 1, '2021-08-27 00:19:54', '2021-08-27 00:19:54'),
(562, 'real-time-notify-id', 1, 4, 1, '2021-08-27 00:20:54', '2021-08-27 00:20:54'),
(563, 'real-time-notify-id', 2, 6, 1, '2021-08-27 00:21:54', '2021-08-27 00:21:54'),
(564, 'real-time-notify-id', 2, 5, 1, '2021-08-27 00:22:54', '2021-08-27 00:22:54'),
(565, 'real-time-notify-id', 2, 7, 1, '2021-08-27 00:23:54', '2021-08-27 00:23:54'),
(566, 'real-time-notify-id', 3, 9, 1, '2021-08-27 00:24:54', '2021-08-27 00:24:54'),
(567, 'real-time-notify-id', 3, 8, 1, '2021-08-27 00:25:54', '2021-08-27 00:25:54'),
(568, 'real-time-notify-id', 3, 8, 1, '2021-08-27 00:26:55', '2021-08-27 00:26:55'),
(569, 'real-time-notify-id', 3, 8, 1, '2021-08-27 00:27:54', '2021-08-27 00:27:54'),
(570, 'real-time-notify-id', 3, 8, 1, '2021-08-27 00:28:54', '2021-08-27 00:28:54'),
(571, 'real-time-notify-id', 3, 8, 1, '2021-08-27 00:29:54', '2021-08-27 00:29:54'),
(572, 'real-time-notify-id', 3, 8, 1, '2021-08-27 00:30:54', '2021-08-27 00:30:54'),
(573, 'real-time-notify-id', 3, 8, 1, '2021-08-27 00:31:54', '2021-08-27 00:31:54'),
(574, 'real-time-notify-id', 3, 8, 1, '2021-08-27 00:32:54', '2021-08-27 00:32:54'),
(575, 'real-time-notify-id', 3, 14, 1, '2021-08-27 00:33:54', '2021-08-27 00:33:54'),
(576, 'real-time-notify-id', 3, 14, 1, '2021-08-27 00:34:54', '2021-08-27 00:34:54'),
(577, 'real-time-notify-id', 3, 11, 1, '2021-08-27 00:35:54', '2021-08-27 00:35:54'),
(578, 'real-time-notify-id', 3, 14, 1, '2021-08-27 00:36:54', '2021-08-27 00:36:54'),
(579, 'real-time-notify-id', 3, 7, 1, '2021-08-27 00:37:54', '2021-08-27 00:37:54'),
(580, 'real-time-notify-id', 3, 11, 1, '2021-08-27 00:38:54', '2021-08-27 00:38:54'),
(581, 'real-time-notify-id', 2, 1, 0, '2021-08-27 00:52:50', '2021-08-27 00:52:50'),
(582, 'real-time-notify-id', 3, 9, 1, '2021-08-27 00:53:50', '2021-08-27 00:53:50'),
(583, 'real-time-notify-id', 4, 8, 1, '2021-08-27 00:54:45', '2021-08-27 00:54:45'),
(584, 'real-time-notify-id', 4, 8, 1, '2021-08-27 00:55:45', '2021-08-27 00:55:45'),
(585, 'real-time-notify-id', 4, 8, 1, '2021-08-27 00:56:45', '2021-08-27 00:56:45'),
(586, 'real-time-notify-id', 4, 8, 1, '2021-08-27 00:57:45', '2021-08-27 00:57:45'),
(587, 'real-time-notify-id', 4, 8, 1, '2021-08-27 00:58:45', '2021-08-27 00:58:45'),
(588, 'real-time-notify-id', 4, 8, 1, '2021-08-27 00:59:45', '2021-08-27 00:59:45'),
(589, 'real-time-notify-id', 4, 8, 1, '2021-08-27 01:00:45', '2021-08-27 01:00:45'),
(590, 'real-time-notify-id', 4, 12, 1, '2021-08-27 01:01:45', '2021-08-27 01:01:45'),
(591, 'real-time-notify-id', 3, 12, 1, '2021-08-27 01:02:45', '2021-08-27 01:02:45'),
(592, 'real-time-notify-id', 3, 6, 1, '2021-08-27 01:03:45', '2021-08-27 01:03:45'),
(593, 'real-time-notify-id', 3, 13, 1, '2021-08-27 01:04:45', '2021-08-27 01:04:45'),
(594, 'real-time-notify-id', 4, 7, 1, '2021-08-27 01:05:45', '2021-08-27 01:05:45'),
(595, 'real-time-notify-id', 4, 12, 1, '2021-08-27 01:06:45', '2021-08-27 01:06:45'),
(596, 'real-time-notify-id', 4, 11, 1, '2021-08-27 01:07:45', '2021-08-27 01:07:45'),
(597, 'real-time-notify-id', 4, 8, 1, '2021-08-27 01:08:45', '2021-08-27 01:08:45'),
(598, 'real-time-notify-id', 4, 8, 1, '2021-08-27 01:09:45', '2021-08-27 01:09:45'),
(599, 'real-time-notify-id', 4, 11, 1, '2021-08-27 01:10:45', '2021-08-27 01:10:45'),
(600, 'real-time-notify-id', 4, 8, 1, '2021-08-27 01:11:45', '2021-08-27 01:11:45'),
(601, 'real-time-notify-id', 4, 8, 1, '2021-08-27 01:12:45', '2021-08-27 01:12:45'),
(602, 'real-time-notify-id', 4, 11, 1, '2021-08-27 01:13:45', '2021-08-27 01:13:45'),
(603, 'real-time-notify-id', 4, 11, 1, '2021-08-27 01:14:45', '2021-08-27 01:14:45'),
(604, 'real-time-notify-id', 6, 9, 1, '2021-08-27 01:15:45', '2021-08-27 01:15:45'),
(605, 'real-time-notify-id', 5, 15, 1, '2021-08-27 01:16:45', '2021-08-27 01:16:45'),
(606, 'real-time-notify-id', 6, 15, 1, '2021-08-27 01:17:45', '2021-08-27 01:17:45'),
(607, 'real-time-notify-id', 6, 17, 1, '2021-08-27 01:18:45', '2021-08-27 01:18:45'),
(608, 'real-time-notify-id', 6, 15, 1, '2021-08-27 01:19:45', '2021-08-27 01:19:45'),
(609, 'real-time-notify-id', 6, 12, 1, '2021-08-27 01:20:45', '2021-08-27 01:20:45'),
(610, 'real-time-notify-id', 6, 14, 1, '2021-08-27 01:21:45', '2021-08-27 01:21:45'),
(611, 'real-time-notify-id', 6, 16, 1, '2021-08-27 01:22:45', '2021-08-27 01:22:45'),
(612, 'real-time-notify-id', 5, 15, 1, '2021-08-27 01:23:45', '2021-08-27 01:23:45'),
(613, 'real-time-notify-id', 6, 12, 1, '2021-08-27 01:24:45', '2021-08-27 01:24:45'),
(614, 'real-time-notify-id', 6, 22, 1, '2021-08-27 01:25:45', '2021-08-27 01:25:45'),
(615, 'real-time-notify-id', 6, 12, 1, '2021-08-27 01:26:45', '2021-08-27 01:26:45'),
(616, 'real-time-notify-id', 6, 15, 1, '2021-08-27 01:27:45', '2021-08-27 01:27:45'),
(617, 'real-time-notify-id', 4, 21, 1, '2021-08-27 01:28:45', '2021-08-27 01:28:45'),
(618, 'real-time-notify-id', 5, 15, 1, '2021-08-27 01:29:45', '2021-08-27 01:29:45'),
(619, 'real-time-notify-id', 6, 11, 1, '2021-08-27 01:30:45', '2021-08-27 01:30:45'),
(620, 'real-time-notify-id', 6, 14, 1, '2021-08-27 01:31:45', '2021-08-27 01:31:45'),
(621, 'real-time-notify-id', 6, 11, 1, '2021-08-27 01:32:45', '2021-08-27 01:32:45'),
(622, 'real-time-notify-id', 6, 11, 1, '2021-08-27 01:33:45', '2021-08-27 01:33:45'),
(623, 'real-time-notify-id', 6, 17, 1, '2021-08-27 01:34:45', '2021-08-27 01:34:45'),
(624, 'real-time-notify-id', 6, 14, 1, '2021-08-27 01:35:45', '2021-08-27 01:35:45'),
(625, 'real-time-notify-id', 6, 14, 1, '2021-08-27 01:36:45', '2021-08-27 01:36:45'),
(626, 'real-time-notify-id', 6, 12, 1, '2021-08-27 01:37:45', '2021-08-27 01:37:45'),
(627, 'real-time-notify-id', 6, 12, 1, '2021-08-27 01:38:45', '2021-08-27 01:38:45'),
(628, 'real-time-notify-id', 6, 17, 1, '2021-08-27 01:39:45', '2021-08-27 01:39:45'),
(629, 'real-time-notify-id', 6, 14, 1, '2021-08-27 01:40:46', '2021-08-27 01:40:46'),
(630, 'real-time-notify-id', 6, 19, 1, '2021-08-27 01:41:46', '2021-08-27 01:41:46'),
(631, 'real-time-notify-id', 5, 13, 1, '2021-08-27 01:42:45', '2021-08-27 01:42:45'),
(632, 'real-time-notify-id', 6, 11, 1, '2021-08-27 01:43:45', '2021-08-27 01:43:45'),
(633, 'real-time-notify-id', 6, 14, 1, '2021-08-27 01:44:45', '2021-08-27 01:44:45'),
(634, 'real-time-notify-id', 6, 11, 1, '2021-08-27 01:45:45', '2021-08-27 01:45:45'),
(635, 'real-time-notify-id', 6, 12, 1, '2021-08-27 01:46:45', '2021-08-27 01:46:45'),
(636, 'real-time-notify-id', 6, 12, 1, '2021-08-27 01:47:45', '2021-08-27 01:47:45'),
(637, 'real-time-notify-id', 6, 12, 1, '2021-08-27 01:48:45', '2021-08-27 01:48:45'),
(638, 'real-time-notify-id', 6, 12, 1, '2021-08-27 01:49:45', '2021-08-27 01:49:45'),
(639, 'real-time-notify-id', 6, 11, 1, '2021-08-27 01:50:45', '2021-08-27 01:50:45'),
(640, 'real-time-notify-id', 6, 18, 1, '2021-08-27 01:51:45', '2021-08-27 01:51:45'),
(641, 'real-time-notify-id', 6, 11, 1, '2021-08-27 01:52:45', '2021-08-27 01:52:45'),
(642, 'real-time-notify-id', 6, 12, 1, '2021-08-27 01:53:45', '2021-08-27 01:53:45'),
(643, 'real-time-notify-id', 6, 12, 1, '2021-08-27 01:54:45', '2021-08-27 01:54:45'),
(644, 'real-time-notify-id', 6, 11, 1, '2021-08-27 01:55:45', '2021-08-27 01:55:45'),
(645, 'real-time-notify-id', 6, 17, 1, '2021-08-27 01:56:45', '2021-08-27 01:56:45'),
(646, 'real-time-notify-id', 6, 14, 1, '2021-08-27 01:57:45', '2021-08-27 01:57:45'),
(647, 'real-time-notify-id', 6, 12, 1, '2021-08-27 01:58:45', '2021-08-27 01:58:45'),
(648, 'real-time-notify-id', 6, 17, 1, '2021-08-27 01:59:46', '2021-08-27 01:59:46'),
(649, 'real-time-notify-id', 5, 10, 1, '2021-08-27 02:00:45', '2021-08-27 02:00:45'),
(650, 'real-time-notify-id', 6, 15, 1, '2021-08-27 02:01:45', '2021-08-27 02:01:45'),
(651, 'real-time-notify-id', 6, 12, 1, '2021-08-27 02:02:45', '2021-08-27 02:02:45'),
(652, 'real-time-notify-id', 6, 12, 1, '2021-08-27 02:03:45', '2021-08-27 02:03:45'),
(653, 'real-time-notify-id', 6, 14, 1, '2021-08-27 02:04:45', '2021-08-27 02:04:45'),
(654, 'real-time-notify-id', 6, 15, 1, '2021-08-27 02:05:45', '2021-08-27 02:05:45'),
(655, 'real-time-notify-id', 6, 10, 1, '2021-08-27 02:06:45', '2021-08-27 02:06:45'),
(656, 'real-time-notify-id', 6, 16, 1, '2021-08-27 02:07:46', '2021-08-27 02:07:46'),
(657, 'real-time-notify-id', 6, 14, 1, '2021-08-27 02:08:45', '2021-08-27 02:08:45'),
(658, 'real-time-notify-id', 6, 21, 1, '2021-08-27 02:09:45', '2021-08-27 02:09:45'),
(659, 'real-time-notify-id', 6, 11, 1, '2021-08-27 02:10:45', '2021-08-27 02:10:45'),
(660, 'real-time-notify-id', 6, 20, 1, '2021-08-27 02:11:45', '2021-08-27 02:11:45'),
(661, 'real-time-notify-id', 6, 10, 1, '2021-08-27 02:12:45', '2021-08-27 02:12:45'),
(662, 'real-time-notify-id', 6, 12, 1, '2021-08-27 02:13:45', '2021-08-27 02:13:45'),
(663, 'real-time-notify-id', 6, 12, 1, '2021-08-27 02:14:45', '2021-08-27 02:14:45'),
(664, 'real-time-notify-id', 6, 11, 1, '2021-08-27 02:15:45', '2021-08-27 02:15:45'),
(665, 'real-time-notify-id', 6, 11, 1, '2021-08-27 02:16:45', '2021-08-27 02:16:45'),
(666, 'real-time-notify-id', 6, 15, 1, '2021-08-27 02:17:45', '2021-08-27 02:17:45'),
(667, 'real-time-notify-id', 6, 13, 1, '2021-08-27 02:18:45', '2021-08-27 02:18:45'),
(668, 'real-time-notify-id', 6, 11, 1, '2021-08-27 02:19:45', '2021-08-27 02:19:45'),
(669, 'real-time-notify-id', 6, 15, 1, '2021-08-27 02:20:45', '2021-08-27 02:20:45'),
(670, 'real-time-notify-id', 6, 12, 1, '2021-08-27 02:21:45', '2021-08-27 02:21:45'),
(671, 'real-time-notify-id', 6, 10, 1, '2021-08-27 02:22:46', '2021-08-27 02:22:46'),
(672, 'real-time-notify-id', 4, 11, 1, '2021-08-27 02:23:48', '2021-08-27 02:23:48'),
(673, 'real-time-notify-id', 6, 10, 1, '2021-08-27 02:24:45', '2021-08-27 02:24:45'),
(674, 'real-time-notify-id', 6, 12, 1, '2021-08-27 02:25:45', '2021-08-27 02:25:45'),
(675, 'real-time-notify-id', 6, 12, 1, '2021-08-27 02:26:45', '2021-08-27 02:26:45'),
(676, 'real-time-notify-id', 6, 12, 1, '2021-08-27 02:27:45', '2021-08-27 02:27:45'),
(677, 'real-time-notify-id', 6, 12, 1, '2021-08-27 02:28:45', '2021-08-27 02:28:45');
INSERT INTO `websockets_statistics_entries` (`id`, `app_id`, `peak_connection_count`, `websocket_message_count`, `api_message_count`, `created_at`, `updated_at`) VALUES
(678, 'real-time-notify-id', 6, 12, 1, '2021-08-27 02:29:45', '2021-08-27 02:29:45'),
(679, 'real-time-notify-id', 6, 12, 1, '2021-08-27 02:30:46', '2021-08-27 02:30:46'),
(680, 'real-time-notify-id', 6, 14, 1, '2021-08-27 02:31:45', '2021-08-27 02:31:45'),
(681, 'real-time-notify-id', 5, 12, 1, '2021-08-27 02:32:45', '2021-08-27 02:32:45'),
(682, 'real-time-notify-id', 6, 12, 1, '2021-08-27 02:33:45', '2021-08-27 02:33:45'),
(683, 'real-time-notify-id', 6, 12, 1, '2021-08-27 02:34:45', '2021-08-27 02:34:45'),
(684, 'real-time-notify-id', 6, 12, 1, '2021-08-27 02:35:45', '2021-08-27 02:35:45'),
(685, 'real-time-notify-id', 6, 12, 1, '2021-08-27 02:36:45', '2021-08-27 02:36:45'),
(686, 'real-time-notify-id', 6, 12, 1, '2021-08-27 02:37:45', '2021-08-27 02:37:45'),
(687, 'real-time-notify-id', 6, 22, 2, '2021-08-27 02:38:45', '2021-08-27 02:38:45'),
(688, 'real-time-notify-id', 6, 12, 2, '2021-08-27 02:39:45', '2021-08-27 02:39:45'),
(689, 'real-time-notify-id', 6, 12, 1, '2021-08-27 02:40:45', '2021-08-27 02:40:45'),
(690, 'real-time-notify-id', 6, 22, 3, '2021-08-27 02:41:46', '2021-08-27 02:41:46'),
(691, 'real-time-notify-id', 6, 14, 5, '2021-08-27 02:42:45', '2021-08-27 02:42:45'),
(692, 'real-time-notify-id', 6, 12, 11, '2021-08-27 02:43:45', '2021-08-27 02:43:45'),
(693, 'real-time-notify-id', 6, 16, 3, '2021-08-27 02:44:45', '2021-08-27 02:44:45'),
(694, 'real-time-notify-id', 6, 17, 2, '2021-08-27 02:45:45', '2021-08-27 02:45:45'),
(695, 'real-time-notify-id', 6, 13, 2, '2021-08-27 02:46:45', '2021-08-27 02:46:45'),
(696, 'real-time-notify-id', 6, 17, 2, '2021-08-27 02:47:45', '2021-08-27 02:47:45'),
(697, 'real-time-notify-id', 6, 12, 2, '2021-08-27 02:48:45', '2021-08-27 02:48:45'),
(698, 'real-time-notify-id', 6, 16, 2, '2021-08-27 02:49:45', '2021-08-27 02:49:45'),
(699, 'real-time-notify-id', 6, 12, 1, '2021-08-27 02:50:45', '2021-08-27 02:50:45'),
(700, 'real-time-notify-id', 6, 12, 1, '2021-08-27 02:51:45', '2021-08-27 02:51:45'),
(701, 'real-time-notify-id', 6, 12, 1, '2021-08-27 02:52:45', '2021-08-27 02:52:45'),
(702, 'real-time-notify-id', 6, 12, 1, '2021-08-27 02:53:45', '2021-08-27 02:53:45'),
(703, 'real-time-notify-id', 6, 12, 1, '2021-08-27 02:54:45', '2021-08-27 02:54:45'),
(704, 'real-time-notify-id', 6, 12, 1, '2021-08-27 02:55:45', '2021-08-27 02:55:45'),
(705, 'real-time-notify-id', 6, 12, 1, '2021-08-27 02:56:45', '2021-08-27 02:56:45'),
(706, 'real-time-notify-id', 6, 11, 1, '2021-08-27 02:57:45', '2021-08-27 02:57:45'),
(707, 'real-time-notify-id', 6, 12, 1, '2021-08-27 02:58:45', '2021-08-27 02:58:45'),
(708, 'real-time-notify-id', 6, 11, 1, '2021-08-27 02:59:45', '2021-08-27 02:59:45'),
(709, 'real-time-notify-id', 6, 15, 3, '2021-08-27 03:00:45', '2021-08-27 03:00:45'),
(710, 'real-time-notify-id', 6, 12, 1, '2021-08-27 03:01:45', '2021-08-27 03:01:45'),
(711, 'real-time-notify-id', 6, 16, 1, '2021-08-27 03:02:45', '2021-08-27 03:02:45'),
(712, 'real-time-notify-id', 6, 16, 4, '2021-08-27 03:03:45', '2021-08-27 03:03:45'),
(713, 'real-time-notify-id', 6, 12, 2, '2021-08-27 03:04:45', '2021-08-27 03:04:45'),
(714, 'real-time-notify-id', 6, 14, 3, '2021-08-27 03:05:45', '2021-08-27 03:05:45'),
(715, 'real-time-notify-id', 6, 18, 5, '2021-08-27 03:06:45', '2021-08-27 03:06:45'),
(716, 'real-time-notify-id', 6, 12, 2, '2021-08-27 03:07:45', '2021-08-27 03:07:45'),
(717, 'real-time-notify-id', 6, 14, 3, '2021-08-27 03:08:45', '2021-08-27 03:08:45'),
(718, 'real-time-notify-id', 6, 11, 2, '2021-08-27 03:09:45', '2021-08-27 03:09:45'),
(719, 'real-time-notify-id', 6, 12, 2, '2021-08-27 03:10:45', '2021-08-27 03:10:45'),
(720, 'real-time-notify-id', 6, 13, 2, '2021-08-27 03:11:45', '2021-08-27 03:11:45'),
(721, 'real-time-notify-id', 6, 13, 3, '2021-08-27 03:12:45', '2021-08-27 03:12:45'),
(722, 'real-time-notify-id', 6, 12, 1, '2021-08-27 03:13:45', '2021-08-27 03:13:45'),
(723, 'real-time-notify-id', 6, 16, 1, '2021-08-27 03:14:45', '2021-08-27 03:14:45'),
(724, 'real-time-notify-id', 6, 11, 1, '2021-08-27 03:15:45', '2021-08-27 03:15:45'),
(725, 'real-time-notify-id', 6, 20, 1, '2021-08-27 03:16:45', '2021-08-27 03:16:45'),
(726, 'real-time-notify-id', 6, 20, 1, '2021-08-27 03:17:45', '2021-08-27 03:17:45'),
(727, 'real-time-notify-id', 6, 12, 1, '2021-08-27 03:18:45', '2021-08-27 03:18:45'),
(728, 'real-time-notify-id', 6, 24, 1, '2021-08-27 03:19:45', '2021-08-27 03:19:45'),
(729, 'real-time-notify-id', 6, 12, 1, '2021-08-27 03:20:45', '2021-08-27 03:20:45'),
(730, 'real-time-notify-id', 6, 16, 1, '2021-08-27 03:21:45', '2021-08-27 03:21:45'),
(731, 'real-time-notify-id', 6, 16, 1, '2021-08-27 03:22:45', '2021-08-27 03:22:45'),
(732, 'real-time-notify-id', 6, 12, 1, '2021-08-27 03:23:45', '2021-08-27 03:23:45'),
(733, 'real-time-notify-id', 6, 16, 1, '2021-08-27 03:24:45', '2021-08-27 03:24:45'),
(734, 'real-time-notify-id', 6, 12, 1, '2021-08-27 03:25:45', '2021-08-27 03:25:45'),
(735, 'real-time-notify-id', 6, 15, 1, '2021-08-27 03:26:45', '2021-08-27 03:26:45'),
(736, 'real-time-notify-id', 6, 8, 1, '2021-08-27 03:27:45', '2021-08-27 03:27:45'),
(737, 'real-time-notify-id', 6, 16, 1, '2021-08-27 03:28:45', '2021-08-27 03:28:45'),
(738, 'real-time-notify-id', 6, 12, 1, '2021-08-27 03:29:46', '2021-08-27 03:29:46'),
(739, 'real-time-notify-id', 6, 11, 1, '2021-08-27 03:30:45', '2021-08-27 03:30:45'),
(740, 'real-time-notify-id', 6, 6, 1, '2021-08-27 03:31:45', '2021-08-27 03:31:45'),
(741, 'real-time-notify-id', 6, 12, 1, '2021-08-27 03:32:45', '2021-08-27 03:32:45'),
(742, 'real-time-notify-id', 6, 16, 1, '2021-08-27 03:33:45', '2021-08-27 03:33:45'),
(743, 'real-time-notify-id', 6, 12, 1, '2021-08-27 03:34:46', '2021-08-27 03:34:46'),
(744, 'real-time-notify-id', 6, 12, 1, '2021-08-27 03:35:46', '2021-08-27 03:35:46'),
(745, 'real-time-notify-id', 6, 12, 1, '2021-08-27 03:36:45', '2021-08-27 03:36:45'),
(746, 'real-time-notify-id', 6, 12, 1, '2021-08-27 03:37:50', '2021-08-27 03:37:50'),
(747, 'real-time-notify-id', 6, 14, 1, '2021-08-27 03:38:46', '2021-08-27 03:38:46'),
(748, 'real-time-notify-id', 6, 20, 1, '2021-08-27 03:39:46', '2021-08-27 03:39:46'),
(749, 'real-time-notify-id', 6, 16, 1, '2021-08-27 03:40:45', '2021-08-27 03:40:45'),
(750, 'real-time-notify-id', 6, 12, 1, '2021-08-27 03:41:45', '2021-08-27 03:41:45'),
(751, 'real-time-notify-id', 6, 12, 1, '2021-08-27 03:42:45', '2021-08-27 03:42:45'),
(752, 'real-time-notify-id', 6, 15, 1, '2021-08-27 03:43:45', '2021-08-27 03:43:45'),
(753, 'real-time-notify-id', 6, 12, 1, '2021-08-27 03:44:46', '2021-08-27 03:44:46'),
(754, 'real-time-notify-id', 6, 16, 1, '2021-08-27 03:45:46', '2021-08-27 03:45:46'),
(755, 'real-time-notify-id', 6, 28, 1, '2021-08-27 03:46:45', '2021-08-27 03:46:45'),
(756, 'real-time-notify-id', 6, 11, 1, '2021-08-27 03:47:46', '2021-08-27 03:47:46'),
(757, 'real-time-notify-id', 6, 9, 2, '2021-08-27 03:48:46', '2021-08-27 03:48:46'),
(758, 'real-time-notify-id', 6, 16, 1, '2021-08-27 03:49:46', '2021-08-27 03:49:46'),
(759, 'real-time-notify-id', 6, 12, 1, '2021-08-27 03:50:46', '2021-08-27 03:50:46'),
(760, 'real-time-notify-id', 6, 12, 1, '2021-08-27 03:51:46', '2021-08-27 03:51:46'),
(761, 'real-time-notify-id', 6, 12, 1, '2021-08-27 03:52:46', '2021-08-27 03:52:46'),
(762, 'real-time-notify-id', 6, 14, 1, '2021-08-27 05:53:46', '2021-08-27 05:53:46'),
(763, 'real-time-notify-id', 6, 34, 1, '2021-08-27 03:54:46', '2021-08-27 03:54:46'),
(764, 'real-time-notify-id', 6, 16, 2, '2021-08-27 03:55:46', '2021-08-27 03:55:46'),
(765, 'real-time-notify-id', 6, 20, 1, '2021-08-27 03:56:46', '2021-08-27 03:56:46'),
(766, 'real-time-notify-id', 6, 12, 1, '2021-08-27 03:57:46', '2021-08-27 03:57:46'),
(767, 'real-time-notify-id', 6, 12, 1, '2021-08-27 03:58:46', '2021-08-27 03:58:46'),
(768, 'real-time-notify-id', 6, 12, 1, '2021-08-27 03:59:46', '2021-08-27 03:59:46'),
(769, 'real-time-notify-id', 6, 12, 1, '2021-08-27 04:00:46', '2021-08-27 04:00:46'),
(770, 'real-time-notify-id', 6, 12, 1, '2021-08-27 04:01:46', '2021-08-27 04:01:46'),
(771, 'real-time-notify-id', 6, 15, 1, '2021-08-27 04:02:46', '2021-08-27 04:02:46'),
(772, 'real-time-notify-id', 6, 14, 2, '2021-08-27 04:03:46', '2021-08-27 04:03:46'),
(773, 'real-time-notify-id', 6, 13, 2, '2021-08-27 04:04:46', '2021-08-27 04:04:46'),
(774, 'real-time-notify-id', 6, 19, 3, '2021-08-27 04:05:46', '2021-08-27 04:05:46'),
(775, 'real-time-notify-id', 6, 12, 1, '2021-08-27 04:06:46', '2021-08-27 04:06:46'),
(776, 'real-time-notify-id', 6, 28, 1, '2021-08-27 04:07:46', '2021-08-27 04:07:46'),
(777, 'real-time-notify-id', 6, 12, 1, '2021-08-27 04:08:46', '2021-08-27 04:08:46'),
(778, 'real-time-notify-id', 6, 12, 1, '2021-08-27 04:09:46', '2021-08-27 04:09:46'),
(779, 'real-time-notify-id', 6, 23, 1, '2021-08-27 04:10:46', '2021-08-27 04:10:46'),
(780, 'real-time-notify-id', 6, 13, 1, '2021-08-27 04:11:46', '2021-08-27 04:11:46'),
(781, 'real-time-notify-id', 6, 20, 1, '2021-08-27 04:12:46', '2021-08-27 04:12:46'),
(782, 'real-time-notify-id', 6, 12, 1, '2021-08-27 04:13:46', '2021-08-27 04:13:46'),
(783, 'real-time-notify-id', 6, 12, 1, '2021-08-27 04:14:46', '2021-08-27 04:14:46'),
(784, 'real-time-notify-id', 6, 16, 1, '2021-08-27 04:15:47', '2021-08-27 04:15:47'),
(785, 'real-time-notify-id', 6, 16, 1, '2021-08-27 04:16:46', '2021-08-27 04:16:46'),
(786, 'real-time-notify-id', 6, 23, 1, '2021-08-27 04:17:46', '2021-08-27 04:17:46'),
(787, 'real-time-notify-id', 6, 16, 1, '2021-08-27 04:18:46', '2021-08-27 04:18:46'),
(788, 'real-time-notify-id', 6, 21, 1, '2021-08-27 04:19:46', '2021-08-27 04:19:46'),
(789, 'real-time-notify-id', 6, 16, 1, '2021-08-27 04:20:46', '2021-08-27 04:20:46'),
(790, 'real-time-notify-id', 6, 16, 1, '2021-08-27 04:21:46', '2021-08-27 04:21:46'),
(791, 'real-time-notify-id', 6, 24, 1, '2021-08-27 04:22:46', '2021-08-27 04:22:46'),
(792, 'real-time-notify-id', 6, 16, 1, '2021-08-27 04:23:46', '2021-08-27 04:23:46'),
(793, 'real-time-notify-id', 6, 21, 1, '2021-08-27 04:24:46', '2021-08-27 04:24:46'),
(794, 'real-time-notify-id', 6, 16, 1, '2021-08-27 04:25:46', '2021-08-27 04:25:46'),
(795, 'real-time-notify-id', 6, 21, 2, '2021-08-27 04:26:46', '2021-08-27 04:26:46'),
(796, 'real-time-notify-id', 6, 12, 1, '2021-08-27 04:27:46', '2021-08-27 04:27:46'),
(797, 'real-time-notify-id', 6, 12, 1, '2021-08-27 04:28:46', '2021-08-27 04:28:46'),
(798, 'real-time-notify-id', 6, 12, 1, '2021-08-27 04:29:46', '2021-08-27 04:29:46'),
(799, 'real-time-notify-id', 6, 20, 1, '2021-08-27 04:30:46', '2021-08-27 04:30:46'),
(800, 'real-time-notify-id', 6, 12, 1, '2021-08-27 04:31:46', '2021-08-27 04:31:46'),
(801, 'real-time-notify-id', 6, 16, 2, '2021-08-27 04:32:46', '2021-08-27 04:32:46'),
(802, 'real-time-notify-id', 6, 12, 1, '2021-08-27 04:33:46', '2021-08-27 04:33:46'),
(803, 'real-time-notify-id', 7, 21, 1, '2021-08-27 04:34:46', '2021-08-27 04:34:46'),
(804, 'real-time-notify-id', 7, 17, 1, '2021-08-27 04:35:46', '2021-08-27 04:35:46'),
(805, 'real-time-notify-id', 7, 9, 1, '2021-08-27 04:36:46', '2021-08-27 04:36:46'),
(806, 'real-time-notify-id', 7, 12, 1, '2021-08-27 04:37:46', '2021-08-27 04:37:46'),
(807, 'real-time-notify-id', 7, 13, 1, '2021-08-27 04:38:46', '2021-08-27 04:38:46'),
(808, 'real-time-notify-id', 7, 24, 1, '2021-08-27 04:39:46', '2021-08-27 04:39:46'),
(809, 'real-time-notify-id', 7, 28, 1, '2021-08-27 04:40:46', '2021-08-27 04:40:46'),
(810, 'real-time-notify-id', 7, 10, 2, '2021-08-27 04:41:46', '2021-08-27 04:41:46'),
(811, 'real-time-notify-id', 7, 11, 1, '2021-08-27 04:42:46', '2021-08-27 04:42:46'),
(812, 'real-time-notify-id', 5, 8, 1, '2021-08-27 04:43:46', '2021-08-27 04:43:46'),
(813, 'real-time-notify-id', 5, 9, 1, '2021-08-27 04:44:46', '2021-08-27 04:44:46'),
(814, 'real-time-notify-id', 5, 7, 1, '2021-08-27 04:45:46', '2021-08-27 04:45:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=815;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
