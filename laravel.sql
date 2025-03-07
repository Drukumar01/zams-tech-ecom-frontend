-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2025 at 01:08 PM
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
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Drupat kumar', 'tauheedrasheed537@gmail.com', 'dsdadsadsad', '2025-02-24 09:08:46', '2025-02-24 09:08:46'),
(2, 'Zams Tech Ecom', 'drukumarf@gmail.com', 'erfdgfdgffdgfg', '2025-02-24 09:10:01', '2025-02-24 09:10:01'),
(3, 'I Phone', 'drfdfs@gmail.comq', 'gfdgfdgfg', '2025-02-24 09:10:37', '2025-02-24 09:10:37'),
(4, 'Drupatkumar', 'tauheedrasheed537@gmail.com', 'sdfsdfds', '2025-02-24 10:38:11', '2025-02-24 10:38:11'),
(5, 'Drupat kumar', 'drukumar01@gmail.com', 'Hello Zams tech ecom', '2025-02-24 13:30:06', '2025-02-24 13:30:06');

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
(5, '2025_02_22_223022_create_contacts_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'YourAppName', 'fb1650e9595b7cc47a7d68379eb80d2504a0f1947e936c34d61887d147e1df67', '[\"*\"]', NULL, NULL, '2025-02-18 07:29:47', '2025-02-18 07:29:47'),
(2, 'App\\Models\\User', 2, 'YourAppName', '5d3c7ddeb569b000210ac98b1adc03eeb5c0cff415c3c44c5df624912539e5bc', '[\"*\"]', NULL, NULL, '2025-02-18 10:19:20', '2025-02-18 10:19:20'),
(3, 'App\\Models\\User', 3, 'YourAppName', 'e7a4c6dc3aad38081c79816fcf3199e817fe6debf90db74628910211c1a91932', '[\"*\"]', NULL, NULL, '2025-02-18 10:20:11', '2025-02-18 10:20:11'),
(4, 'App\\Models\\User', 4, 'YourAppName', '5b810dda461a766d5522ca29b0f17e21a8959d52a1db38b2e175db4df450918b', '[\"*\"]', NULL, NULL, '2025-02-18 10:29:21', '2025-02-18 10:29:21'),
(5, 'App\\Models\\User', 5, 'YourAppName', 'e0752b3550e74e6a94630934b91c93392f3789a4ab637b39a437b6dfebb5a11c', '[\"*\"]', NULL, NULL, '2025-02-18 10:35:06', '2025-02-18 10:35:06'),
(6, 'App\\Models\\User', 1, 'YourAppName', '55d38cf4ce92c36cecc8b4fa62adc234c3013a11d0444af422cc4851eb0ebc66', '[\"*\"]', NULL, NULL, '2025-02-22 17:07:18', '2025-02-22 17:07:18'),
(7, 'App\\Models\\User', 2, 'YourAppName', '2084dedeb8fedc9208da274f9fe926db5557b264b93ff0fadf3c1360179960f8', '[\"*\"]', NULL, NULL, '2025-02-22 17:20:23', '2025-02-22 17:20:23'),
(8, 'App\\Models\\User', 2, 'API Token', '0e3d2891a7a959614d1c3803f4ef3f47de9cd663480c21a63e1753bb5caf8781', '[\"*\"]', NULL, NULL, '2025-02-22 17:20:23', '2025-02-22 17:20:23'),
(9, 'App\\Models\\User', 3, 'YourAppName', '2dd55b57ff27487c0b27931306e4c3b5dc89e79c498218fa0b876e99170d94c8', '[\"*\"]', NULL, NULL, '2025-02-22 17:23:15', '2025-02-22 17:23:15'),
(10, 'App\\Models\\User', 3, 'API Token', '7c6decbe74519b2b6027a2d150776bc2498b9d1e4d5d2d4f2b67cc18f543506e', '[\"*\"]', NULL, NULL, '2025-02-22 17:23:15', '2025-02-22 17:23:15'),
(11, 'App\\Models\\User', 4, 'YourAppName', '20f94aa0f8b47895baf81c446797a43eb809bb54484e925314f14388a715f59c', '[\"*\"]', NULL, NULL, '2025-02-24 13:31:37', '2025-02-24 13:31:37'),
(12, 'App\\Models\\User', 4, 'API Token', '9b48a7cfb3765b5f7dcd0b0af86730ca8b1947d2f53339a93932ad8bdaf310d2', '[\"*\"]', NULL, NULL, '2025-02-24 13:31:37', '2025-02-24 13:31:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'I Phone', 'drfdfs@gmail.com', NULL, '$2y$12$vzM6byAYZD54eljGXQdMkuRtNO0Crwld6BMaJmTKyr6BNn2to/RUK', NULL, '2025-02-22 17:07:18', '2025-02-22 17:07:18'),
(2, 'Zams Tech Ecom', 'drukumar01@gmail.com', NULL, '$2y$12$xV.eLu84l5Hv1C6v/z9gU.4EYRqCG1jzT.1cZqNxvYbniQi/DuxeW', NULL, '2025-02-22 17:20:23', '2025-02-22 17:20:23'),
(3, 'I Phone', 'tauheedrasheed537@gmail.com', NULL, '$2y$12$sB8urX5xO/Ec6uptOvDZ/uOgXTp3wh75i4/Q2igH2Qf3cPP4tuO2G', NULL, '2025-02-22 17:23:15', '2025-02-22 17:23:15'),
(4, 'Drupat kumar', 'drukumar90@gmail.com', NULL, '$2y$12$/fwdMJx.z4LJ90jxH93pZuKIk1XJ/o37gSwlAQIUHZfoHnC4dfHmi', NULL, '2025-02-24 13:31:37', '2025-02-24 13:31:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
