-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2023 at 12:02 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistempakar`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups`
--

INSERT INTO `auth_groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Site Administrator'),
(2, 'user', 'Regular User');

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups_permissions`
--

INSERT INTO `auth_groups_permissions` (`group_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`group_id`, `user_id`) VALUES
(1, 7),
(2, 8);

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'ssuperssup@gmail.com', 7, '2023-02-24 22:28:58', 1),
(2, '::1', 'ssuperssup@gmail.com', 7, '2023-02-24 22:52:11', 1),
(3, '::1', 'ssuperssup@gmail.com', 7, '2023-02-24 22:53:36', 1),
(4, '::1', 'ssuperssup@gmail.com', 7, '2023-02-24 22:53:51', 1),
(5, '::1', 'gungwisnu', NULL, '2023-02-24 23:30:24', 0),
(6, '::1', 'ssuperssup@gmail.com', 7, '2023-02-24 23:30:39', 1),
(7, '::1', 'gandapurait30@gmail.com', 8, '2023-02-24 23:30:57', 1),
(8, '::1', 'ssuperssup@gmail.com', 7, '2023-02-24 23:32:39', 1),
(9, '::1', 'gandapurait30@gmail.com', 8, '2023-02-24 23:33:04', 1),
(10, '::1', 'ssuperssup@gmail.com', 7, '2023-02-24 23:34:59', 1),
(11, '::1', 'gandapurait30@gmail.com', 8, '2023-02-24 23:35:19', 1),
(12, '::1', 'ssuperssup@gmail.com', 7, '2023-02-24 23:38:52', 1),
(13, '::1', 'gandapurait30@gmail.com', 8, '2023-02-24 23:39:06', 1),
(14, '::1', 'gandapurait30@gmail.com', 8, '2023-02-24 23:43:33', 1),
(15, '::1', 'ssuperssup@gmail.com', 7, '2023-02-24 23:43:43', 1),
(16, '::1', 'ssuperssup@gmail.com', 7, '2023-02-24 23:49:01', 1),
(17, '::1', 'gandapurait30@gmail.com', 8, '2023-02-24 23:52:36', 1),
(18, '::1', 'ssuperssup@gmail.com', 7, '2023-02-24 23:53:23', 1),
(19, '::1', 'gandapurait30@gmail.com', 8, '2023-02-24 23:58:01', 1),
(20, '::1', 'ssuperssup@gmail.com', 7, '2023-02-25 02:34:26', 1),
(21, '::1', 'gandapurait30@gmail.com', 8, '2023-02-25 05:16:50', 1),
(22, '::1', 'ssuperssup@gmail.com', 7, '2023-02-25 05:18:15', 1),
(23, '::1', 'ssuperssup@gmail.com', 7, '2023-02-25 06:00:34', 1),
(24, '::1', 'ssuperssup@gmail.com', 7, '2023-02-25 06:14:41', 1),
(25, '::1', 'ssuperssup@gmail.com', 7, '2023-02-25 06:18:55', 1),
(26, '::1', 'gandapurait30@gmail.com', 8, '2023-02-25 06:23:27', 1),
(27, '::1', 'ssuperssup@gmail.com', 7, '2023-02-25 06:33:57', 1),
(28, '::1', 'gandapurait30@gmail.com', 8, '2023-02-25 06:35:47', 1),
(29, '::1', 'gandapurait30@gmail.com', 8, '2023-02-25 06:38:32', 1),
(30, '::1', 'gandapurait30@gmail.com', 8, '2023-02-25 06:40:24', 1),
(31, '::1', 'ssuperssup@gmail.com', 7, '2023-02-25 06:41:31', 1),
(32, '::1', 'gungwisnu', NULL, '2023-03-10 21:31:17', 0),
(33, '::1', 'gandapurait30@gmail.com', 8, '2023-03-10 21:31:38', 1),
(34, '::1', 'gungwisnu', NULL, '2023-03-10 21:31:57', 0),
(35, '::1', 'ssuperssup@gmail.com', 7, '2023-03-10 21:32:29', 1),
(36, '::1', 'gandapurait30@gmail.com', 8, '2023-03-10 21:43:36', 1),
(37, '::1', ' gungwisnu', NULL, '2023-03-10 21:44:31', 0),
(38, '::1', 'ssuperssup@gmail.com', 7, '2023-03-10 21:44:39', 1),
(39, '::1', 'gandapurait30@gmail.com', 8, '2023-03-10 21:47:33', 1),
(40, '::1', 'ssuperssup@gmail.com', 7, '2023-03-10 21:47:44', 1),
(41, '::1', 'gandapurait30@gmail.com', 8, '2023-03-10 21:50:06', 1),
(42, '::1', 'ssuperssup@gmail.com', 7, '2023-03-10 21:50:27', 1),
(43, '::1', 'ssuperssup@gmail.com', 7, '2023-03-11 01:00:26', 1),
(44, '::1', 'ssuperssup@gmail.com', 7, '2023-03-11 04:36:44', 1),
(45, '::1', 'gandapurait30@gmail.com', 8, '2023-03-11 06:11:47', 1),
(46, '::1', 'gungwisnu', NULL, '2023-03-11 06:15:18', 0),
(47, '::1', 'ssuperssup@gmail.com', 7, '2023-03-11 06:15:27', 1),
(48, '::1', 'ssuperssup@gmail.com', 7, '2023-03-11 06:25:00', 1),
(49, '::1', 'ssuperssup@gmail.com', 7, '2023-03-12 04:01:33', 1),
(50, '::1', 'ssuperssup@gmail.com', 7, '2023-03-13 21:32:27', 1),
(51, '::1', 'ssuperssup@gmail.com', 7, '2023-03-13 21:41:23', 1),
(52, '::1', 'gandapurait30@gmail.com', 8, '2023-03-13 21:42:22', 1),
(53, '::1', 'gandapurait30@gmail.com', 8, '2023-03-13 21:43:53', 1),
(54, '::1', 'ssuperssup@gmail.com', 7, '2023-03-13 21:45:39', 1),
(55, '::1', 'ssuperssup@gmail.com', 7, '2023-03-13 21:59:50', 1),
(56, '::1', 'ssuperssup@gmail.com', 7, '2023-03-13 22:09:32', 1),
(57, '::1', 'ssuperssup@gmail.com', 7, '2023-03-13 22:10:02', 1),
(58, '::1', 'ssuperssup@gmail.com', 7, '2023-03-13 22:25:46', 1),
(59, '::1', 'ssuperssup@gmail.com', 7, '2023-03-13 22:34:04', 1),
(60, '::1', 'ssuperssup@gmail.com', 7, '2023-03-24 22:12:37', 1),
(61, '::1', 'ssuperssup@gmail.com', 7, '2023-03-25 00:14:59', 1),
(62, '::1', 'ssuperssup@gmail.com', 7, '2023-03-25 01:39:02', 1),
(63, '::1', 'ssuperssup@gmail.com', 7, '2023-03-25 03:49:01', 1),
(64, '::1', 'ssuperssup@gmail.com', 7, '2023-04-12 01:42:00', 1),
(65, '::1', 'ssuperssup@gmail.com', 7, '2023-04-12 05:59:56', 1),
(66, '::1', 'ssuperssup@gmail.com', 7, '2023-04-16 21:30:09', 1),
(67, '::1', 'ssuperssup@gmail.com', 7, '2023-04-29 08:09:11', 1),
(68, '::1', 'gandapurait30@gmail.com', 8, '2023-04-29 08:09:34', 1),
(69, '::1', 'gandapurait30@gmail.com', 8, '2023-04-29 08:15:34', 1),
(70, '::1', 'ssuperssup@gmail.com', 7, '2023-04-29 08:17:35', 1),
(71, '::1', 'ssuperssup@gmail.com', 7, '2023-04-29 08:40:36', 1),
(72, '::1', 'ssuperssup@gmail.com', 7, '2023-05-01 22:27:49', 1),
(73, '::1', 'ssuperssup@gmail.com', 7, '2023-05-02 20:03:04', 1),
(74, '::1', 'gandapurait30@gmail.com', 8, '2023-05-02 21:54:33', 1),
(75, '::1', 'ssuperssup@gmail.com', 7, '2023-05-02 21:54:53', 1),
(76, '::1', 'ssuperssup@gmail.com', 7, '2023-05-03 02:40:28', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_permissions`
--

INSERT INTO `auth_permissions` (`id`, `name`, `description`) VALUES
(1, 'manage-users', 'Manage All Users'),
(2, 'manage-profile', 'Manage User Profile');

-- --------------------------------------------------------

--
-- Table structure for table `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE `gejala` (
  `id` int(11) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `nama_gejala` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`id`, `kode`, `nama_gejala`, `keterangan`) VALUES
(1, 'G1', 'Pusing', 'Penderita merasa sakit kepala terus-menerus'),
(2, 'G2', 'Contoh', 'Demam'),
(3, 'G4', 'Tes2', 'Test1');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1677227480, 1);

-- --------------------------------------------------------

--
-- Table structure for table `penyakit`
--

CREATE TABLE `penyakit` (
  `id` int(11) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `nama_penyakit` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`id`, `kode`, `nama_penyakit`, `keterangan`) VALUES
(1, 'P1', 'Depresi Ringan', 'Coba'),
(2, 'P2', 'Depresi Sedang', 'Test'),
(5, 'P3', 'Depresi Berat', 'Contoh');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `user_image` varchar(255) NOT NULL DEFAULT 'default.svg',
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `fullname`, `user_image`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(7, 'ssuperssup@gmail.com', 'gungwisnu', NULL, 'default.svg', '$2y$10$MGC2tXNFAu4qwBLHX9ABB.uwXewd5kwM8lNU0ae.N5albP24BL43u', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-02-24 22:22:00', '2023-02-24 22:22:00', NULL),
(8, 'gandapurait30@gmail.com', 'cokorda yaya', NULL, 'default.svg', '$2y$10$FsNpDfJByFp3ceFvCpIjbeqtVSieJeXwYvDO4699FZ16oymTdOJjW', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-02-24 23:18:22', '2023-02-24 23:18:22', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indexes for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indexes for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gejala`
--
ALTER TABLE `gejala`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
