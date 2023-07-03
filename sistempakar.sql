-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Jun 2023 pada 10.45
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.4

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
-- Struktur dari tabel `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_groups`
--

INSERT INTO `auth_groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Site Administrator'),
(2, 'user', 'Regular User');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_groups_permissions`
--

INSERT INTO `auth_groups_permissions` (`group_id`, `permission_id`) VALUES
(1, 1),
(1, 1),
(1, 1),
(1, 2),
(1, 2),
(1, 2),
(2, 2),
(2, 2),
(2, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`group_id`, `user_id`) VALUES
(1, 7),
(1, 7),
(1, 7),
(2, 8),
(2, 8),
(2, 8),
(2, 9),
(2, 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_logins`
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
(76, '::1', 'ssuperssup@gmail.com', 7, '2023-05-03 02:40:28', 1),
(77, '127.0.0.1', 'demo@sistempakar.com', 9, '2023-05-18 01:16:54', 1),
(78, '127.0.0.1', 'ssuperssup@gmail.com', 7, '2023-05-18 01:55:20', 1),
(79, '127.0.0.1', 'demo', NULL, '2023-05-18 01:58:39', 0),
(80, '127.0.0.1', 'demo@sistempakar.com', 9, '2023-05-18 01:58:45', 1),
(81, '127.0.0.1', 'ssuperssup@gmail.com', 7, '2023-05-18 02:05:11', 1),
(82, '127.0.0.1', 'gungwisnu', NULL, '2023-05-18 20:48:26', 0),
(83, '127.0.0.1', 'ssuperssup@gmail.com', 7, '2023-05-18 20:48:30', 1),
(84, '127.0.0.1', 'gungwisnu', NULL, '2023-05-19 10:47:09', 0),
(85, '127.0.0.1', 'ssuperssup@gmail.com', 7, '2023-05-19 10:47:51', 1),
(86, '127.0.0.1', 'ssuperssup@gmail.com', 7, '2023-05-20 01:59:11', 1),
(87, '127.0.0.1', 'ssuperssup@gmail.com', 7, '2023-05-20 10:49:58', 1),
(88, '127.0.0.1', 'ssuperssup@gmail.com', 7, '2023-05-20 22:07:04', 1),
(89, '127.0.0.1', 'ssuperssup@gmail.com', 7, '2023-05-21 02:51:23', 1),
(90, '127.0.0.1', 'demo@sistempakar.com', 9, '2023-05-21 08:40:05', 1),
(91, '127.0.0.1', 'ssuperssup@gmail.com', 7, '2023-05-21 08:59:38', 1),
(92, '127.0.0.1', 'demo@sistempakar.com', 9, '2023-05-21 09:05:04', 1),
(93, '127.0.0.1', 'ssuperssup@gmail.com', 7, '2023-05-21 09:38:38', 1),
(94, '127.0.0.1', 'demo@sistempakar.com', 9, '2023-05-21 09:42:52', 1),
(95, '::1', 'ssuperssup@gmail.com', 7, '2023-05-21 23:58:10', 1),
(96, '::1', 'ssuperssup@gmail.com', 7, '2023-05-22 00:10:19', 1),
(97, '::1', 'cokordayaya', NULL, '2023-05-22 00:10:51', 0),
(98, '::1', 'cokordayaya', NULL, '2023-05-22 00:10:59', 0),
(99, '::1', 'gandapurait30@gmail.com', 8, '2023-05-22 00:11:14', 1),
(100, '::1', 'ssuperssup@gmail.com', 7, '2023-05-22 00:12:43', 1),
(101, '::1', 'ssuperssup@gmail.com', 7, '2023-05-22 00:17:40', 1),
(102, '::1', 'gandapurait30@gmail.com', 8, '2023-05-22 00:47:14', 1),
(103, '::1', 'ssuperssup@gmail.com', 7, '2023-05-22 00:47:26', 1),
(104, '::1', 'gandapurait30@gmail.com', 8, '2023-05-22 00:48:07', 1),
(105, '::1', 'ssuperssup@gmail.com', 7, '2023-05-22 01:13:46', 1),
(106, '::1', 'ssuperssup@gmail.com', 7, '2023-05-22 01:15:05', 1),
(107, '::1', 'ssuperssup@gmail.com', 7, '2023-05-22 01:28:40', 1),
(108, '::1', 'gandapurait30@gmail.com', 8, '2023-05-22 01:29:14', 1),
(109, '::1', 'ssuperssup@gmail.com', 7, '2023-05-22 01:31:22', 1),
(110, '::1', 'gandapurait30@gmail.com', 8, '2023-05-22 01:42:06', 1),
(111, '::1', 'ssuperssup@gmail.com', 7, '2023-05-22 01:44:41', 1),
(112, '::1', 'ssuperssup@gmail.com', 7, '2023-05-22 01:45:16', 1),
(113, '::1', 'ssuperssup@gmail.com', 7, '2023-05-22 05:54:52', 1),
(114, '::1', 'ssuperssup@gmail.com', 7, '2023-05-22 05:59:25', 1),
(115, '::1', 'gandapurait30@gmail.com', 8, '2023-05-22 06:05:13', 1),
(116, '::1', 'ssuperssup@gmail.com', 7, '2023-05-22 06:34:21', 1),
(117, '::1', 'gandapurait30@gmail.com', 8, '2023-05-22 06:58:58', 1),
(118, '::1', 'demo@sistempakar.com', 9, '2023-05-22 07:15:16', 1),
(119, '::1', 'ssuperssup@gmail.com', 7, '2023-05-22 07:29:04', 1),
(120, '::1', 'ssuperssup@gmail.com', 7, '2023-05-22 07:48:34', 1),
(121, '::1', 'ssuperssup@gmail.com', 7, '2023-05-22 07:49:10', 1),
(122, '::1', 'ssuperssup@gmail.com', 7, '2023-05-22 07:53:19', 1),
(123, '::1', 'gandapurait30@gmail.com', 8, '2023-05-22 07:54:09', 1),
(124, '::1', 'ssuperssup@gmail.com', 7, '2023-05-22 08:06:04', 1),
(125, '::1', 'ssuperssup@gmail.com', 7, '2023-05-22 08:18:15', 1),
(126, '::1', 'ssuperssup@gmail.com', 7, '2023-05-22 08:28:27', 1),
(127, '::1', 'gandapurait30@gmail.com', 8, '2023-05-22 08:29:55', 1),
(128, '::1', 'ssuperssup@gmail.com', 7, '2023-05-22 08:37:04', 1),
(129, '::1', 'ssuperssup@gmail.com', 7, '2023-05-22 08:47:57', 1),
(130, '::1', 'ssuperssup@gmail.com', 7, '2023-05-22 09:25:26', 1),
(131, '::1', 'gandapurait30@gmail.com', 8, '2023-05-22 09:36:21', 1),
(132, '::1', 'gandapurait30@gmail.com', 8, '2023-05-22 10:03:04', 1),
(133, '::1', 'ssuperssup@gmail.com', 7, '2023-05-22 21:52:14', 1),
(134, '::1', 'gandapurait30@gmail.com', 8, '2023-05-22 21:52:37', 1),
(135, '::1', 'gungwisnu', NULL, '2023-05-22 22:09:04', 0),
(136, '::1', 'ssuperssup@gmail.com', 7, '2023-05-22 22:09:10', 1),
(137, '::1', 'gandapurait30@gmail.com', 8, '2023-05-22 22:11:20', 1),
(138, '::1', 'ssuperssup@gmail.com', 7, '2023-05-22 23:39:42', 1),
(139, '::1', 'gandapurait30@gmail.com', 8, '2023-05-23 02:55:16', 1),
(140, '::1', 'gandapurait30@gmail.com', 8, '2023-05-23 02:55:46', 1),
(141, '::1', 'ssuperssup@gmail.com', 7, '2023-05-25 00:09:32', 1),
(142, '::1', 'ssuperssup@gmail.com', 7, '2023-05-26 00:42:03', 1),
(143, '::1', 'tes', NULL, '2023-05-26 01:19:00', 0),
(144, '::1', 'coba@gmail.com', NULL, '2023-05-26 01:19:23', 0),
(145, '::1', 'gungwisnu', NULL, '2023-05-26 01:21:04', 0),
(146, '::1', 'tester', NULL, '2023-05-26 01:21:30', 0),
(147, '::1', 'ssuperssup@gmail.com', 7, '2023-05-26 01:24:36', 1),
(148, '::1', 'gungwisnu', NULL, '2023-05-26 01:47:27', 0),
(149, '::1', 'ssuperssup@gmail.com', 7, '2023-05-26 01:47:54', 1),
(150, '::1', 'ssuperssup@gmail.com', 7, '2023-05-26 03:24:05', 1),
(151, '::1', 'ssuperssup@gmail.com', 7, '2023-05-29 00:15:52', 1),
(152, '::1', 'ssuperssup@gmail.com', 7, '2023-05-29 22:28:58', 1),
(153, '::1', 'gungiwisnu', NULL, '2023-05-29 23:16:17', 0),
(154, '::1', 'ssuperssup@gmail.com', 7, '2023-05-29 23:16:24', 1),
(155, '::1', 'ssuperssup@gmail.com', 7, '2023-05-29 23:35:58', 1),
(156, '::1', 'ssuperssup@gmail.com', 7, '2023-05-29 23:36:18', 1),
(157, '::1', 'gandapurait30@gmail.com', 8, '2023-05-29 23:38:22', 1),
(158, '::1', 'ssuperssup@gmail.com', 7, '2023-05-29 23:42:19', 1),
(159, '::1', 'ssuperssup@gmail.com', 7, '2023-05-30 00:01:56', 1),
(160, '::1', 'ssuperssup@gmail.com', 7, '2023-05-30 00:25:08', 1),
(161, '::1', 'gandapurait30@gmail.com', 8, '2023-05-30 00:27:12', 1),
(162, '::1', 'ssuperssup@gmail.com', 7, '2023-05-30 00:27:42', 1),
(163, '::1', 'gandapurait30@gmail.com', 8, '2023-05-30 00:28:34', 1),
(164, '::1', 'gandapurait30@gmail.com', 8, '2023-05-30 00:30:54', 1),
(165, '::1', 'ssuperssup@gmail.com', 7, '2023-05-30 00:31:11', 1),
(166, '::1', 'cokorda yaya', NULL, '2023-05-30 00:31:26', 0),
(167, '::1', 'gandapurait30@gmail.com', 8, '2023-05-30 00:31:34', 1),
(168, '::1', 'ssuperssup@gmail.com', 7, '2023-05-30 00:47:14', 1),
(169, '::1', 'ssuperssup@gmail.com', 7, '2023-05-30 00:48:00', 1),
(170, '::1', 'gandapurait30@gmail.com', 8, '2023-05-30 00:48:20', 1),
(171, '::1', 'gandapurait30@gmail.com', 8, '2023-05-30 00:50:13', 1),
(172, '::1', 'ssuperssup@gmail.com', 7, '2023-05-30 00:50:33', 1),
(173, '::1', 'gandapurait30@gmail.com', 8, '2023-05-30 00:50:55', 1),
(174, '::1', 'gandapurait30@gmail.com', 8, '2023-05-30 00:55:37', 1),
(175, '::1', 'ssuperssup@gmail.com', 7, '2023-05-30 00:55:45', 1),
(176, '::1', 'ssuperssup@gmail.com', 7, '2023-05-31 23:58:46', 1),
(177, '::1', 'ssuperssup@gmail.com', 7, '2023-06-01 00:00:15', 1),
(178, '::1', 'ssuperssup@gmail.com', 7, '2023-06-01 00:06:06', 1),
(179, '::1', 'ssuperssup@gmail.com', 7, '2023-06-01 01:33:51', 1),
(180, '::1', 'ssuperssup@gmail.com', 7, '2023-06-01 02:49:01', 1),
(181, '::1', 'gandapurait30@gmail.com', 8, '2023-06-01 02:49:15', 1),
(182, '::1', 'gungwisnu', NULL, '2023-06-01 02:49:29', 0),
(183, '::1', 'ssuperssup@gmail.com', 7, '2023-06-01 02:49:37', 1),
(184, '::1', 'ssuperssup@gmail.com', 7, '2023-06-01 02:50:34', 1),
(185, '::1', 'ssuperssup@gmail.com', 7, '2023-06-01 02:52:06', 1),
(186, '::1', 'ssuperssup@gmail.com', 7, '2023-06-01 02:53:06', 1),
(187, '::1', 'ssuperssup@gmail.com', 7, '2023-06-01 02:54:25', 1),
(188, '::1', 'gungwisu', NULL, '2023-06-01 03:08:48', 0),
(189, '::1', 'ssuperssup@gmail.com', 7, '2023-06-01 03:08:56', 1),
(190, '::1', 'ssuperssup@gmail.com', 7, '2023-06-01 03:14:06', 1),
(191, '::1', 'gandapurait30@gmail.com', 8, '2023-06-01 03:14:27', 1),
(192, '::1', 'ssuperssup@gmail.com', 7, '2023-06-01 03:14:43', 1),
(193, '::1', 'ssuperssup@gmail.com', 7, '2023-06-01 06:30:11', 1),
(194, '::1', 'ssuperssup@gmail.com', 7, '2023-06-01 06:32:54', 1),
(195, '::1', 'ssuperssup@gmail.com', 7, '2023-06-01 06:33:12', 1),
(196, '::1', 'gandapurait30@gmail.com', 8, '2023-06-01 06:33:59', 1),
(197, '::1', 'ssuperssup@gmail.com', 7, '2023-06-01 06:34:10', 1),
(198, '::1', 'ssuperssup@gmail.com', 7, '2023-06-01 06:36:16', 1),
(199, '::1', 'ssuperssup@gmail.com', 7, '2023-06-01 06:38:22', 1),
(200, '::1', 'ssuperssup@gmail.com', 7, '2023-06-01 06:41:16', 1),
(201, '::1', 'ssuperssup@gmail.com', 7, '2023-06-01 06:59:31', 1),
(202, '::1', 'qw', NULL, '2023-06-01 08:42:10', 0),
(203, '::1', 'ssuperssup@gmail.com', 7, '2023-06-01 08:42:39', 1),
(204, '::1', 'ssuperssup@gmail.com', 7, '2023-06-01 08:46:22', 1),
(205, '::1', 'ssuperssup@gmail.com', 7, '2023-06-01 08:51:41', 1),
(206, '::1', 'gungwisnuff', NULL, '2023-06-01 08:52:47', 0),
(207, '::1', 'ssuperssup@gmail.com', 7, '2023-06-01 08:59:30', 1),
(208, '::1', 'ssuperssup@gmail.com', 7, '2023-06-01 09:00:25', 1),
(209, '::1', 'ssuperssup@gmail.com', 7, '2023-06-01 09:01:12', 1),
(210, '::1', 'ssuperssup@gmail.com', 7, '2023-06-01 09:01:28', 1),
(211, '::1', 'ssuperssup@gmail.com', 7, '2023-06-01 09:04:49', 1),
(212, '::1', 'gungwisnudddd', NULL, '2023-06-01 09:14:43', 0),
(213, '::1', 'ssuperssup@gmail.com', 7, '2023-06-01 09:21:03', 1),
(214, '::1', 'ssuperssup@gmail.com', 7, '2023-06-01 09:26:18', 1),
(215, '::1', 'ssuperssup@gmail.com', 7, '2023-06-01 09:27:47', 1),
(216, '::1', 'ssuperssup@gmail.com', 7, '2023-06-01 09:28:52', 1),
(217, '::1', 'ssuperssup@gmail.com', 7, '2023-06-01 09:29:53', 1),
(218, '::1', 'ssuperssup@gmail.com', 7, '2023-06-01 09:33:26', 1),
(219, '::1', 'ssuperssup@gmail.com', 7, '2023-06-01 09:33:42', 1),
(220, '::1', 'ssuperssup@gmail.com', 7, '2023-06-01 09:38:12', 1),
(221, '::1', 'gandapurait30@gmail.com', 8, '2023-06-01 09:38:25', 1),
(222, '::1', 'ssuperssup@gmail.com', 7, '2023-06-01 09:38:38', 1),
(223, '::1', 'ssuperssup@gmail.com', 7, '2023-06-01 09:44:05', 1),
(224, '::1', 'ssuperssup@gmail.com', 7, '2023-06-01 09:54:29', 1),
(225, '::1', 'ssuperssup@gmail.com', 7, '2023-06-01 09:54:43', 1),
(226, '::1', 'ssuperssup@gmail.com', 7, '2023-06-01 09:55:34', 1),
(227, '::1', 'ssuperssup@gmail.com', 7, '2023-06-01 10:09:10', 1),
(228, '::1', 'ssuperssup@gmail.com', 7, '2023-06-03 00:21:26', 1),
(229, '::1', 'ssuperssup@gmail.com', 7, '2023-06-03 02:20:13', 1),
(230, '::1', 'ssuperssup@gmail.com', 7, '2023-06-13 01:36:23', 1),
(231, '::1', 'ssuperssup@gmail.com', 7, '2023-06-13 01:36:35', 1),
(232, '::1', 'ssuperssup@gmail.com', 7, '2023-06-13 08:12:38', 1),
(233, '::1', 'ssuperssup@gmail.com', 7, '2023-06-13 08:17:57', 1),
(234, '::1', 'ssuperssup@gmail.com', 7, '2023-06-13 08:20:53', 1),
(235, '::1', 'coba@gmail.com', 10, '2023-06-14 02:55:55', 1),
(236, '::1', 'ssuperssup@gmail.com', 7, '2023-06-14 03:04:23', 1),
(237, '::1', 'ssuperssup@gmail.com', 7, '2023-06-14 03:10:04', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_permissions`
--

INSERT INTO `auth_permissions` (`id`, `name`, `description`) VALUES
(1, 'manage-users', 'Manage All Users'),
(2, 'manage-profile', 'Manage User Profile');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejala`
--

CREATE TABLE `gejala` (
  `id` int(11) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `nama_gejala` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `nilai_cf` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `gejala`
--

INSERT INTO `gejala` (`id`, `kode`, `nama_gejala`, `keterangan`, `nilai_cf`) VALUES
(1, 'G1', 'Merasa mudah lelah', 'Mungkin', 0.4),
(2, 'G2', ' Kehilangan kegembiraan', 'Mungkin', 0.4),
(3, 'G3', 'Suasana hati negatif', 'Mungkin', 0.4),
(4, 'G4', 'Sulit konsentrasi dan Tidur terganggu', 'Mungkin', 0.4),
(5, 'G5', 'Kepercayaan diri berkurang dan Pesimistis ', 'Mungkin', 0.4),
(6, 'G6', 'Rasa bersalah dan Tidak berguna', 'Kemungkinan Besar', 0.6),
(7, 'G7', 'Gagasan membahayakan diri (bunuh diri) dan Nafsu makan berkurang', 'Hampir Pasti', 0.8),
(8, 'G8', 'Berlangsung 2 minggu atau kurang', 'Kemungkinan Besar', 0.6),
(9, 'G9', 'Merasa cemas berlebihan ', 'Kemungkinan Besar', 0.6),
(10, 'G10', 'Serasa akan mati ', 'Kemungkinan Besar', 0.6),
(11, 'G11', 'Khawatir akan masa depan suram dan nasib buruk', 'Mungkin', 0.4),
(12, 'G12', 'Merasa ada yang membahayakan nyatanya tidak', 'Kemungkinan Besar', 0.6),
(13, 'G13', 'Berlangsung selama kurang atau sama dengan 1 bulan', 'Kemungkinan Besar', 0.6),
(14, 'G14', 'Merasa gelisah dan Tidak santai', 'Mungkin', 0.4),
(15, 'G15', 'Berkeringat dan Jantung berdebar', 'Kemungkinan Besar', 0.6),
(16, 'G16', 'Sesak nafas dan Pusing', 'Mungkin', 0.4),
(17, 'G17', 'Berlangsung setiap hari hingga berminggu', 'Kemungkinan Besar', 0.6),
(18, 'G18', 'Isi pikiran dirinya bergema dan berulang', 'Hampir Pasti', 0.8),
(19, 'G19', 'Isi pikiran yang asing masuk atau keluar dari luar', 'Hampir Pasti', 0.8),
(20, 'G20', 'Isi pikiran seolah orang lain atau umum mengetahuinya', 'Kemungkinan Besar', 0.6),
(21, 'G21', 'Waham dirinya dikendalikan oleh kekuatan dari luar', 'Hampir Pasti', 0.8),
(22, 'G22', 'Wahan dirinya pasrah oleh kekuatan dari luar', 'Hampir Pasti', 0.8),
(23, 'G23', 'Pengalaman inderawi yang tidak wajar', 'Kemungkinan Besar', 0.6),
(24, 'G24', 'Mendengar suara tentang perilaku penderita', 'Kemungkinan Besar', 0.6),
(25, 'G25', 'Mendiskusikan antara mereka sendiri', 'Kemungkinan Besar', 0.6),
(26, 'G26', 'Suara halusinasi berada dari suatu bagian', 'Hampir Pasti', 0.8),
(27, 'G27', 'Waham budaya setempat dianggap tidak wajar', 'Kemungkinan Besar', 0.6),
(28, 'G28', 'Merasa memiliki kekuatan diatas manusia', 'Hampir Pasti', 0.8),
(29, 'G29', 'Tidak wajar akan keyakinan atau politik tertentu', 'Hampir Pasti', 0.8),
(30, 'G30', 'Berlangsung satu bulan atau lebih', 'Kemungkinan Besar', 0.6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil`
--

CREATE TABLE `hasil` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `nama_pasien` text DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `no_telp` int(50) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `gejala` text DEFAULT NULL,
  `penyakit` text DEFAULT NULL,
  `hasil_cf` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `hasil`
--

INSERT INTO `hasil` (`id`, `user_id`, `nama_pasien`, `email`, `tgl_lahir`, `no_telp`, `alamat`, `gejala`, `penyakit`, `hasil_cf`, `created_at`, `updated_at`) VALUES
(47, 8, 'Peraturan Daerah Bali', 'daerah@gmail.com', '2009-02-03', 2147483647, 'Jalan mencoba lagi No. 11, Denpasar, Bali', 'G1, G2, G3, G4, , G9, G10, , G14, G15, ', 'P5', 99.502336, '2023-05-23 06:57:40', '2023-05-23 06:57:40'),
(49, 7, 'tes', 'tes@gmail.com', '2023-05-01', 12344321, 'Jalan mencoba ', 'G1, G2, G3, , , G6, , G9, G10, , G14, G15, G17', 'P5', 99.8672896, '2023-05-26 04:49:10', '2023-05-26 04:49:10'),
(50, 7, 'Mencoba', 'Mencoba@gmail.com', '2023-05-05', 2147483647, 'Jalan benar No. 15 Jakarta Barat', 'G1, G2, G3, , G5, , G9, G10, G12, G13', 'P4', 99.668224, '2023-05-30 03:55:52', '2023-05-30 03:55:52'),
(52, 10, 'mencoba', 'mencoba@gmail.com', '2023-06-07', 2147483647, 'Jalan Mencoba 12 Jakarta', 'G1, G2, G3, , G5, G8', 'P1', 94.816, '2023-06-14 07:02:17', '2023-06-14 07:02:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1677227480, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyakit`
--

CREATE TABLE `penyakit` (
  `id` int(11) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `nama_penyakit` varchar(255) NOT NULL,
  `keterangan` varchar(1000) NOT NULL,
  `anjuran` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `penyakit`
--

INSERT INTO `penyakit` (`id`, `kode`, `nama_penyakit`, `keterangan`, `anjuran`) VALUES
(1, 'P1', 'Depresi Ringan', 'Pertama, tingkatkan interaksi sosial masyarakat. Kedua, konsumsi makanan sehat. Ketiga, berolahraga atau berekreasi dengan pasangan serta keluarga.', 'Tidak ada anjuran obat'),
(2, 'P2', 'Depresi Sedang', 'Pertama, lakukan kontrol diri sedini mungkin. Kedua, keluhkan masalah dengan orang terpercaya. Ketiga, atur pola makan dan tidur secara teratur. Keempat, jika dirasa keadaan semakin memburuk lakukan pengobatan psikoterapi.', 'Fluoxetine untuk Dewasa: Dosis awal 20 mg sekali sehari. Dosis dapat ditingkatkan secara bertahap hingga maksimal 80 mg per hari. Anak usia ≥8 tahun: Dosis awal 10 mg per hari. Dosis dapat ditingkatkan menjadi 20 mg per hari setelah 1–2 minggu. Periksakan ke dokter jika efek samping di atas tidak kunjung reda atau malah memburuk. *Harus dengan resep dokter.'),
(5, 'P3', 'Depresi Berat', 'Segera periksakan masalah yang dialami dengan psikiater terdekat.', 'Fluvoxamine untuk Dewasa: Dosis awal adalah 50–100 mg 1 kali sehari diberikan menjelang tidur. Dosis dapat disesuaikan dengan respons pasien setiap 3–4 minggu. Dosis maksimal 300 mg per hari. Dosis lebih dari 150 mg harus dibagi ke dalam 2–3 dosis terpisah. Periksakan ke dokter jika efek samping di atas tidak kunjung reda atau malah memburuk. *Harus dengan resep dokter'),
(6, 'P4', 'Panik', 'Pertama, lakukan olahraga secara rutin terutama yoga atau pilates. Kedua, dukung dengan melakukan meditasi relaksasi. Ketiga, atur pola makan sehat dengan membatasi kadar gula tinggi, kafein, dan alkohol. Keempat, jika sulit diatasi dan memburuk lakukan pengobatan psikoterapi.', 'Alprazolam untuk Dewasa: Dosis 0,25 –0,5 mg, diminum 3 kali sehari. Dosis dapat ditingkatkan tiap 3–4 hari hingga mencapai dosis 3–4 mg per hari. Lama pengobatan tidak boleh lebih dari 12 minggu. Lansia: Dosis 0,25 mg, diminum 2–3 kali sehari. Periksakan ke dokter jika efek samping di atas tidak kunjung reda atau malah memburuk. *Harus dengan resep dokter'),
(7, 'P5', 'Cemas Menyeluruh', 'Pertama, berolahraga secara rutin. Kedua, atur pola tidur yang cukup. Ketiga, dukung penyembuhan dengan meditasi relaksasi. Keempat, jika sulit diatasi dan memburuk lakukan pengobatan Cognitive Behavioral Therapy (CBT) dan psikoterapi.', 'Setraline untuk Dewasa: 25 mg, 1 kali sehari. Dosis dapat ditingkatkan menjadi 50 mg, 1 kali sehari, setelah 1 minggu. Dosis maksimal 200 mg per hari. Periksakan ke dokter jika efek samping di atas tidak kunjung reda atau malah memburuk. *Harus dengan resep dokter.'),
(8, 'P6', 'Skizofrenia', 'Segera hubungi Dokter spesialis kesehatan jiwa ( Psikiater, Puskesmas, RSUD, RSUP, RSJ) terdekat.', '*Harus dengan resep dan arahan dokter terkait'),
(9, 'P7', 'Masalah Kesehatan (Non-ODGJ)', 'Pertama, atur pola makan dan tidur secara teratur serta cukup. Kedua, jika terasa kurang periksa masalah kesehatan yang dialami dengan dokter umum.', 'Tidak ada anjuran obat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rule`
--

CREATE TABLE `rule` (
  `id` int(11) NOT NULL,
  `gejala_id` int(11) NOT NULL,
  `parent` varchar(3) DEFAULT NULL,
  `ya` varchar(3) DEFAULT NULL,
  `tidak` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `rule`
--

INSERT INTO `rule` (`id`, `gejala_id`, `parent`, `ya`, `tidak`) VALUES
(1, 1, NULL, 'G2', 'G2'),
(2, 2, 'G1', 'G3', NULL),
(3, 3, 'G2', 'G4', NULL),
(4, 4, 'G3', 'G8', 'G5'),
(5, 5, 'G4', 'G8', 'G6'),
(6, 6, 'G5', 'G8', 'G9'),
(7, 7, 'G8', 'G8', 'G18'),
(8, 8, 'G6', 'P1', 'G9'),
(9, 9, NULL, 'G10', 'G11'),
(10, 10, 'G9', 'G12', 'G12'),
(11, 11, 'G9', 'G12', 'G14'),
(12, 12, NULL, 'G13', 'G14'),
(13, 13, 'G12', 'P4', 'P4'),
(14, 14, NULL, 'G15', 'G15'),
(15, 15, 'G14', 'G17', 'G18'),
(16, 16, NULL, NULL, NULL),
(17, 17, 'G15', 'P5', 'P5'),
(18, 18, 'G15', 'G19', 'G21'),
(19, 19, 'G18', 'G30', 'G30'),
(20, 20, NULL, NULL, NULL),
(21, 21, 'G18', 'G22', 'G24'),
(22, 22, NULL, 'G30', 'G30'),
(23, 23, NULL, NULL, NULL),
(24, 24, 'G21', 'G26', 'G27'),
(25, 25, 'G28', 'G30', 'G30'),
(26, 26, 'G24', 'G30', 'G30'),
(27, 27, 'G24', 'G29', 'G28'),
(28, 28, 'G27', 'P2', 'P2'),
(29, 29, 'G27', 'G30', 'G30'),
(30, 30, NULL, 'P6', 'P6');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `no_telp` text DEFAULT NULL,
  `alamat` text DEFAULT NULL,
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
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `fullname`, `tgl_lahir`, `no_telp`, `alamat`, `user_image`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(7, 'ssuperssup@gmail.com', 'gungwisnu', 'Denpasar', '2023-05-03', '12121212121', 'wewewewewe', 'default.svg', '$2y$10$MGC2tXNFAu4qwBLHX9ABB.uwXewd5kwM8lNU0ae.N5albP24BL43u', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-02-24 22:22:00', '2023-02-24 22:22:00', NULL),
(8, 'gandapurait30@gmail.com', 'cokorda yaya', 'Denpasar', '2023-05-05', '11111111111111', 'aaaaaaaaaaaaa', 'default.svg', '$2y$10$FsNpDfJByFp3ceFvCpIjbeqtVSieJeXwYvDO4699FZ16oymTdOJjW', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-02-24 23:18:22', '2023-02-24 23:18:22', NULL),
(9, 'demo@sistempakar.com', 'demo', 'demo', '2023-05-24', '089992382323', 'Desa Sebelah Selatan\r\n', 'default.svg', '$2y$10$xEbkb7fHM.sK7IDu6a3ce.9E9vVBmGecN2AwkCKn5bvkaUzudF5y.', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-05-18 01:16:39', '2023-05-18 01:16:39', NULL),
(10, 'coba@gmail.com', 'coba aja', NULL, NULL, NULL, NULL, 'default.svg', '$2y$10$M3aD9wah9emZ.UuvXssuVufkeQFq2nV/JkN9my3MozLioASCSz9BC', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-06-14 02:55:34', '2023-06-14 02:55:34', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indeks untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indeks untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indeks untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indeks untuk tabel `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `hasil`
--
ALTER TABLE `hasil`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rule`
--
ALTER TABLE `rule`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=238;

--
-- AUTO_INCREMENT untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `gejala`
--
ALTER TABLE `gejala`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `hasil`
--
ALTER TABLE `hasil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `rule`
--
ALTER TABLE `rule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
