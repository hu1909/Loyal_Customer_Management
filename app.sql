-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2021 at 11:34 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customername` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_birth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_card` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `customername`, `customer_birth`, `customer_phone`, `customer_card`, `created_at`, `updated_at`) VALUES
(1, 'trang', '01/06/2001', '123132133', 'diamond', '2021-10-27 01:29:04', '2021-10-27 01:29:04'),
(2, 'nam', '12/02/2001', '123123131', 'gold', '2021-10-27 01:29:17', '2021-10-27 01:29:17'),
(3, 'duc', '12/04/2001', '1231223123', 'gold', '2021-10-27 01:29:28', '2021-10-27 01:29:28'),
(4, 'hung', '12/06/2001', '033333333', 'sliver', '2021-10-27 02:13:06', '2021-10-27 02:13:06'),
(5, 'huong', '05/04/2001', '055555555', 'bronze', '2021-10-27 02:13:27', '2021-10-27 02:13:27');

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
-- Table structure for table `histories`
--

CREATE TABLE `histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customername` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_buy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `histories`
--

INSERT INTO `histories` (`id`, `customername`, `customer_phone`, `day_buy`, `description`, `created_at`, `updated_at`) VALUES
(1, 'trang', '123123123', '12/03/2021', 'buy shirt', '2021-10-27 02:10:32', '2021-10-27 02:10:32'),
(2, 'trang', '123132133', '10/10/2021', 'buy 1 cookie, 5 snacks', '2021-10-27 02:14:41', '2021-10-27 02:14:41'),
(3, 'nam', '123123131', '11/10/2001', 'buy 100 snack, 10 bottles of water', '2021-10-27 02:15:35', '2021-10-27 02:15:35'),
(4, 'duc', '1231223123', '12/10/2021', 'buy 1000 snacks, buy 100 cookies', '2021-10-27 02:16:25', '2021-10-27 02:16:25');

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
(5, '2021_10_27_053149_create_customers_table', 1),
(6, '2021_10_27_053210_create_histories_table', 1),
(7, '2021_10_27_053230_create_services_table', 1);

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
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type_card` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `type_card`, `last`, `description`, `created_at`, `updated_at`) VALUES
(1, 'diamond', '2 years', 'sale 50%', '2021-10-27 01:46:29', '2021-10-27 02:17:50'),
(2, 'gold', '5 years', 'sale 25%', '2021-10-27 02:16:53', '2021-10-27 02:17:57'),
(3, 'sliver', '3 years', 'sale 10%', '2021-10-27 02:17:11', '2021-10-27 02:18:09'),
(4, 'bronze', '1 years', 'sale 5%', '2021-10-27 02:17:33', '2021-10-27 02:18:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userbirth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userphone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `userbirth`, `userphone`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'hung', '19/09/2001', '123213131', 'hung@gmail.com', NULL, '$2y$10$vNb658fP/RQJkjboC0W8Lu0JGtOaFNi7AezYkqFVpsGrOb4UyXFWy', NULL, '2021-10-27 01:28:42', '2021-10-27 01:28:42'),
(2, 'duc', '11/02/2001', '011111111', 'duc@gmail.com', NULL, '$2y$10$y2upKsV/nkB8JYTda6iaruvXx1KkzW3ZdLZGdRj3JVTdDNlWouMLi', NULL, '2021-10-27 02:11:03', '2021-10-27 02:11:03'),
(3, 'dat', '01/02/2001', '022222222', 'dat@gmail.com', NULL, '$2y$10$gsz6a/WIjXvgUufuB8GZ1egBvZIpxHbRjMeq.aBV2wWi3zbh7/vMK', NULL, '2021-10-27 02:11:28', '2021-10-27 02:11:28'),
(4, 'viet', '04/02/2001', '033333333', 'viet@gmail.com', NULL, '$2y$10$UmQx.PbRJ4dxfSdHCdJ8aeszvjAWkzPTVUITYC16qINBLPX30488e', NULL, '2021-10-27 02:11:54', '2021-10-27 02:11:54'),
(5, 'son', '05/04/2001', '055555555', 'son@gmail.com', NULL, '$2y$10$IEJkQ7WXJWWa5fzYZwCIyORPSR1eZSgXGBm5csv6ec95OAQeKntJ.', NULL, '2021-10-27 02:12:16', '2021-10-27 02:12:16'),
(6, 'minh', '06/07/2001', '099999999', 'minh@gmail.com', NULL, '$2y$10$XeNwCBnHgrQf7ZtUByhR8e6pnBrkGuIYhEXVTmZ3DZgSfVfjTPvpu', NULL, '2021-10-27 02:12:38', '2021-10-27 02:12:38'),
(7, 'nam', '12/02/2001', '1231232313', 'nam@gmail.com', NULL, '$2y$10$R3FQLxmMllmSYLVFVxvpXukvbY3xq4kAiGvyPY2UO49zSzG1zQASC', NULL, '2021-10-27 02:20:48', '2021-10-27 02:20:48'),
(8, 'trang', '01/06/2001', '1231231231', 'trang@gmail.com', NULL, '$2y$10$LR.WGY2jRkkCWr.HnJteA.v1IIiy0ERL0UIh59a1u4uusLB5toAUq', NULL, '2021-10-27 02:24:50', '2021-10-27 02:24:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `histories`
--
ALTER TABLE `histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `histories`
--
ALTER TABLE `histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
