-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Sep 2025 pada 06.29
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_book_library`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`id`, `user_id`, `group`, `created_at`) VALUES
(1, 1, 'superadmin', '2025-06-09 16:43:59'),
(2, 2, 'admin', '2025-06-12 14:56:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_identities`
--

CREATE TABLE `auth_identities` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `secret` varchar(255) NOT NULL,
  `secret2` varchar(255) DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  `extra` text DEFAULT NULL,
  `force_reset` tinyint(1) NOT NULL DEFAULT 0,
  `last_used_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `auth_identities`
--

INSERT INTO `auth_identities` (`id`, `user_id`, `type`, `name`, `secret`, `secret2`, `expires`, `extra`, `force_reset`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'email_password', NULL, 'superadmin@admin.com', '$2y$12$uxYTtW4nqrFXDTQ3yfizYuFCAl7tyJOMGNVlGj7dxdpJNxj6Ih/5W', NULL, NULL, 0, '2025-09-02 10:33:32', '2025-06-09 16:43:58', '2025-09-02 10:33:32'),
(2, 2, 'email_password', NULL, 'resonanz@gmail.com', '$2y$12$sOFro7E1TAoEIOYIJohG8e7dW69tuu8Iv/0ITjg1ogPKaP1Xy3l/i', NULL, NULL, 0, '2025-08-28 14:04:57', '2025-06-12 14:56:42', '2025-08-28 14:04:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `id_type` varchar(255) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `user_agent`, `id_type`, `identifier`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'email_password', 'example@gmail.com', NULL, '2025-06-09 16:28:10', 0),
(2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'email_password', 'example@gmail.com', NULL, '2025-06-09 16:28:16', 0),
(3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'email_password', 'superadmin@admin.com', NULL, '2025-06-09 16:32:43', 0),
(4, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'email_password', 'superadmin@admin.com', NULL, '2025-06-09 16:35:23', 0),
(5, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'email_password', 'super@gmail.com', NULL, '2025-06-09 16:41:50', 0),
(6, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'email_password', 'superadmin@admin.com', NULL, '2025-06-09 16:42:49', 0),
(7, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'email_password', 'superadmin@admin.com', 1, '2025-06-09 16:45:19', 1),
(8, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'email_password', 'superadmin@admin.com', 1, '2025-06-12 11:04:43', 1),
(9, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'email_password', 'resonanz@gmail.com', 2, '2025-06-12 14:57:01', 1),
(10, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'resonanz@gmail.com', NULL, '2025-08-08 10:40:51', 0),
(11, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'resonanz@gmail.com', NULL, '2025-08-08 10:40:54', 0),
(12, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'resonanz@gmail.com', 2, '2025-08-08 10:40:58', 1),
(13, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'superadmin@admin.com', NULL, '2025-08-08 10:41:23', 0),
(14, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'superadmin@admin.com', NULL, '2025-08-08 10:41:26', 0),
(15, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'superadmin@admin.com', NULL, '2025-08-08 10:41:43', 0),
(16, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'superadmin@admin.com', NULL, '2025-08-08 10:41:46', 0),
(17, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'superadmin@admin.com', NULL, '2025-08-08 10:41:51', 0),
(18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'superadmin@admin.com', NULL, '2025-08-08 10:43:06', 0),
(19, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'superadmin@admin.com', NULL, '2025-08-08 10:43:09', 0),
(20, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'superadmin@admin.com', 1, '2025-08-08 10:43:15', 1),
(21, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'superadmin@admin.com', 1, '2025-08-08 10:44:00', 1),
(22, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'resonanz@gmail.com', 2, '2025-08-08 10:46:09', 1),
(23, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'superadmin@admin.com', 1, '2025-08-12 10:38:00', 1),
(24, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'superadmin@admin.com', 1, '2025-08-12 11:19:20', 1),
(25, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'superadmin@admin.com', 1, '2025-08-12 11:41:46', 1),
(26, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'superadmin@admin.com', 1, '2025-08-12 13:16:54', 1),
(27, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'superadmin@admin.com', 1, '2025-08-12 15:29:49', 1),
(28, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'superadmin@admin.com', 1, '2025-08-12 15:39:40', 1),
(29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'resonanz@gmail.com', NULL, '2025-08-12 16:03:17', 0),
(30, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'resonanz@gmail.com', 2, '2025-08-12 16:03:23', 1),
(31, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'superadmin@admin.com', 1, '2025-08-12 16:04:09', 1),
(32, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'resonanz@gmail.com', 2, '2025-08-12 16:12:47', 1),
(33, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'superadmin@admin.com', 1, '2025-08-12 16:13:15', 1),
(34, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'superadmin@admin.com', 1, '2025-08-16 10:25:17', 1),
(35, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'resonanz@gmail.com', 2, '2025-08-16 15:15:21', 1),
(36, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'superadmin@admin.com', 1, '2025-08-16 15:18:17', 1),
(37, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'superadmin@admin.com', NULL, '2025-08-16 15:18:26', 0),
(38, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'superadmin@admin.com', NULL, '2025-08-16 15:18:32', 0),
(39, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'superadmin@admin.com', 1, '2025-08-16 15:18:36', 1),
(40, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'superadmin@admin.com', 1, '2025-08-19 10:27:40', 1),
(41, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'resonanz@gmail.com', NULL, '2025-08-19 16:47:04', 0),
(42, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'resonanz@gmail.com', 2, '2025-08-19 16:47:08', 1),
(43, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'superadmin@admin.com', 1, '2025-08-20 09:20:34', 1),
(44, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'superadmin@admin.com', 1, '2025-08-20 10:31:18', 1),
(45, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'superadmin@admin.com', 1, '2025-08-20 11:30:10', 1),
(46, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'resonanz@gmail.com', 2, '2025-08-20 13:56:37', 1),
(47, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'superadmin@admin.com', 1, '2025-08-20 13:56:52', 1),
(48, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'superadmin@admin.com', 1, '2025-08-20 14:37:15', 1),
(49, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'superadmin@admin.com', 1, '2025-08-21 09:36:55', 1),
(50, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'superadmin@admin.com', 1, '2025-08-22 09:43:48', 1),
(51, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'superadmin@admin.com', NULL, '2025-08-22 15:49:47', 0),
(52, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'superadmin@admin.com', 1, '2025-08-22 15:49:52', 1),
(53, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'superadmin@admin.com', 1, '2025-08-23 09:23:22', 1),
(54, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'superadmin@admin.com', 1, '2025-08-26 09:55:22', 1),
(55, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'superadmin@admin.com', 1, '2025-08-27 09:39:51', 1),
(56, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'superadmin@admin.com', 1, '2025-08-28 09:10:14', 1),
(57, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'resonanz@gmail.com', NULL, '2025-08-28 14:04:53', 0),
(58, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'resonanz@gmail.com', 2, '2025-08-28 14:04:57', 1),
(59, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'superadmin@admin.com', 1, '2025-08-28 14:06:00', 1),
(60, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'superadmin@admin.com', 1, '2025-08-28 14:11:30', 1),
(61, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'superadmin@admin.com', NULL, '2025-08-28 14:21:58', 0),
(62, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'superadmin@admin.com', 1, '2025-08-28 14:22:11', 1),
(63, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'superadmin@admin.com', 1, '2025-08-28 15:22:35', 1),
(64, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'superadmin@admin.com', 1, '2025-08-28 16:48:50', 1),
(65, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'superadmin@admin.com', 1, '2025-08-29 09:11:57', 1),
(66, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'superadmin@admin.com', 1, '2025-08-29 13:45:52', 1),
(67, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'superadmin@admin.com', 1, '2025-08-29 15:19:01', 1),
(68, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'superadmin@admin.com', 1, '2025-08-30 10:05:50', 1),
(69, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'superadmin@admin.com', 1, '2025-08-30 14:01:54', 1),
(70, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'email_password', 'superadmin@admin.com', 1, '2025-09-02 10:33:32', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_permissions_users`
--

CREATE TABLE `auth_permissions_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `permission` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_remember_tokens`
--

CREATE TABLE `auth_remember_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_token_logins`
--

CREATE TABLE `auth_token_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `id_type` varchar(255) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(127) NOT NULL,
  `author` varchar(64) NOT NULL,
  `publisher` varchar(64) NOT NULL,
  `rack_id` int(11) UNSIGNED NOT NULL,
  `category_id` int(11) UNSIGNED NOT NULL,
  `book_cover` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `books`
--

INSERT INTO `books` (`id`, `slug`, `title`, `author`, `publisher`, `rack_id`, `category_id`, `book_cover`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'biru-383', 'biru', 'S', 'K1', 1, 2, '1755676940_b259e3acf4e75cafeea2.png', '2025-08-20 07:20:10', '2025-08-20 08:23:40', '2025-08-20 08:23:40'),
(2, 'edit', 'Ungu', 'S', 'A', 45, 3, '1755678015_1a2af9f2a2b4900b4042.png', '2025-08-20 08:18:43', '2025-08-20 08:23:38', '2025-08-20 08:23:38'),
(35, 'piala-128', 'Piala', 'L', 'K.1.001', 18, 2, '1755678202_98c6e7c1c42e397cd0df.jpg', '2025-08-20 08:23:22', '2025-08-20 08:23:42', '2025-08-20 08:23:42'),
(36, 'batik-biru-38', 'Batik Biru', 'S', 'K.1.001', 1, 2, '1755678254_5d4cdf8c07813ee77654.png', '2025-08-20 08:24:14', '2025-08-22 09:14:20', NULL),
(37, 'korset-atas-405', 'Korset Atas', 'S', 'K.1.002', 1, 2, '1755678415_25415b7083548d493ff7.png', '2025-08-20 08:26:55', '2025-08-20 09:17:54', NULL),
(38, 'korset-bawah-639', 'Korset Bawah', 'S', 'K.1.003', 1, 2, '1755681393_f42021473a4b0efa3bea.png', '2025-08-20 09:16:33', '2025-08-20 09:16:33', NULL),
(39, 'baju-pink-273', 'Baju Pink', 'S', 'K.1.004', 1, 2, '1755681454_b9d2b97dee1d620b3fb4.png', '2025-08-20 09:17:34', '2025-08-20 09:17:34', NULL),
(40, 'baju-putih-279', 'Baju Putih', 'S', 'K.1.005', 1, 2, '1755681601_5bc64981dfd580766740.png', '2025-08-20 09:20:01', '2025-08-20 09:20:01', NULL),
(41, 'baju-ungu-745', 'Baju Ungu', 'S', 'K.1.006', 1, 2, '1755681682_ca6ed3e7100bb64eb980.png', '2025-08-20 09:21:22', '2025-08-20 09:21:22', NULL),
(42, 'baju-lylac-986', 'Baju Lylac', 'S', 'K.1.007', 1, 2, '1755681789_121990dcec6cd7c5224c.png', '2025-08-20 09:23:09', '2025-08-20 09:23:09', NULL),
(43, 'baju-silver-242', 'Baju Silver', 'S', 'K.1.008', 1, 2, '1755681839_7d19c9dc8f367b206e3f.png', '2025-08-20 09:23:59', '2025-08-20 09:23:59', NULL),
(44, 'rok-batik-gold-301', 'Rok Batik Gold', 'S', 'K.2.001', 2, 2, '1755682147_efa1d24bdba6be3b99e6.png', '2025-08-20 09:29:07', '2025-08-20 09:29:07', NULL),
(45, 'rok-batik-red-684', 'Rok Batik Red', 'S', 'K.2.002', 2, 2, '1755682587_68e9e2a9486b6941fb51.png', '2025-08-20 09:36:27', '2025-08-20 09:36:27', NULL),
(46, 'sarung-kotak-kotak-520', 'Sarung Kotak Kotak', 'S', 'K.2.003', 2, 2, '1755682734_66c6effedcc0747a2bb1.png', '2025-08-20 09:38:54', '2025-08-20 09:38:54', NULL),
(47, 'rok-biru-abstract-191', 'Rok Biru Abstract', 'S', 'K.2.004', 2, 2, '1755682833_e77f0e2b58db1acfc1ca.png', '2025-08-20 09:40:33', '2025-08-20 09:40:33', NULL),
(48, 'selendang-merah-202', 'Selendang Merah', 'S', 'K.3.001', 3, 2, '1755682918_5f9cf60649ea227261cd.png', '2025-08-20 09:41:58', '2025-08-20 09:41:58', NULL),
(49, 'sarung-merah-412', 'Sarung Merah', 'S', 'K.3.002', 3, 2, '1755683154_ac7be6d136adef0be59b.png', '2025-08-20 09:45:54', '2025-08-20 09:45:54', NULL),
(50, 'baju-merah-96', 'Baju Merah', 'S', 'K.4.001', 4, 2, '1755746049_9ab13076b6fa82dc5ebb.png', '2025-08-21 03:14:09', '2025-08-21 03:14:09', NULL),
(51, 'rok-merah-457', 'Rok Merah', 'S', 'K.4.002', 4, 2, '1755746102_ead133fdf6a9f6b46d6a.png', '2025-08-21 03:15:02', '2025-08-21 03:15:02', NULL),
(52, 'selendang-merah-417', 'Selendang Merah', 'M', 'K.4.003', 4, 2, '1755746189_4dfa984312f860e82130.png', '2025-08-21 03:16:29', '2025-08-21 03:16:29', NULL),
(53, 'dua-selendang-merah-459', 'Dua Selendang merah', 'S', 'K.4.004', 4, 2, '1755746246_eb15d4e42f7151ba88b3.png', '2025-08-21 03:17:26', '2025-08-21 03:17:26', NULL),
(54, 'selendang-merah-901', 'Selendang Merah', 'L', 'K.4.005', 4, 2, '1755746296_54a7ab7591e3862e63cf.png', '2025-08-21 03:18:16', '2025-08-21 03:18:16', NULL),
(55, 'sarung-merah-598', 'Sarung Merah', 'M', 'K.4.006', 4, 2, '1755746354_1053d57489fdd1b3c173.png', '2025-08-21 03:19:14', '2025-08-21 03:19:14', NULL),
(56, 'rok-gold-flower-684', 'Rok Gold Flower', 'S', 'K.5.001', 5, 2, '1755746443_9291350dfbb378e0ae6b.png', '2025-08-21 03:20:43', '2025-08-21 03:20:43', NULL),
(57, 'rok-gold-blue-313', 'Rok Gold Blue', 'S', 'K.5.002', 5, 2, '1755746492_a337e9dbb620b21b4b21.png', '2025-08-21 03:21:32', '2025-08-21 03:21:32', NULL),
(58, 'sarung-silver-936', 'Sarung Silver', 'M', 'K.5.003', 5, 2, '1755746550_6b11857aeb2563814d9a.png', '2025-08-21 03:22:30', '2025-08-21 03:22:54', NULL),
(59, 'sarung-silver-769', 'Sarung Silver', 'S', 'K.5.004', 5, 2, '1755746601_7000ae72fb2592c6a97c.png', '2025-08-21 03:23:21', '2025-08-21 03:23:21', NULL),
(60, 'sarung-silver-222', 'Sarung Silver', 'L', 'K.5.005', 5, 2, '1755746669_357e322a32fff7166f21.png', '2025-08-21 03:24:29', '2025-08-21 03:24:29', NULL),
(61, 'rok-cream-529', 'Rok Cream', 'S', 'K.5.006', 5, 2, '1755746741_70e525f1e982e109639a.png', '2025-08-21 03:25:41', '2025-08-21 03:25:41', NULL),
(62, 'rok-ungu-614', 'Rok Ungu', 'S', 'K.5.007', 5, 2, '1755746785_99010302258cef4be51f.png', '2025-08-21 03:26:25', '2025-08-21 03:26:25', NULL),
(63, 'sarung-merah-kuning-17', 'Sarung Merah Kuning', 'S', 'K.5.008', 5, 2, '1755746831_0004cd81bef65e21c320.png', '2025-08-21 03:27:11', '2025-08-21 03:27:11', NULL),
(64, 'sarung-blue-gold-666', 'Sarung Blue Gold', 'S', 'K.5.009', 5, 2, '1755746904_5856fd86904c8baabd30.png', '2025-08-21 03:28:24', '2025-08-21 03:28:24', NULL),
(65, 'sarung-merah-kuning-288', 'Sarung Merah Kuning', 'M', 'K.5.010', 5, 2, '1755746970_5a85be6feb993041096b.png', '2025-08-21 03:29:30', '2025-08-21 03:29:30', NULL),
(66, 'celana-putih-241', 'Celana Putih', 'S', 'K.6.001', 6, 2, '1755747060_5dd11f5e46e67b144b10.png', '2025-08-21 03:31:00', '2025-08-21 03:31:00', NULL),
(67, 'celana-hitam-950', 'Celana Hitam', 'S', 'K.6.002', 6, 2, '1755747119_5cb3747fed2d6524a777.png', '2025-08-21 03:31:59', '2025-08-21 03:31:59', NULL),
(68, 'celana-coklat-tua-470', 'Celana Coklat Tua', 'S', 'K.6.003', 6, 2, '1755747170_d2a24d6269b1360008ec.png', '2025-08-21 03:32:50', '2025-08-21 03:32:50', NULL),
(69, 'celana-coklat-muda-331', 'Celana Coklat Muda', 'S', 'K.6.004', 6, 2, '1755747218_090d2e669a18aa0884aa.png', '2025-08-21 03:33:38', '2025-08-21 03:33:38', NULL),
(70, 'celana-hitam-garis-330', 'Celana Hitam Garis', 'M', 'K.6.005', 6, 2, '1755747274_ce222bcccfd7cb72ab57.png', '2025-08-21 03:34:34', '2025-08-21 03:34:34', NULL),
(71, 'celana-hitam-94', 'Celana Hitam', 'L', 'K.6.006', 6, 2, '1755747416_4a91e293cf8981414895.png', '2025-08-21 03:35:27', '2025-08-21 03:36:56', NULL),
(72, 'celana-ungu-164', 'Celana Ungu', 'S', 'K.6.007', 6, 2, '1755747445_3783dc2b8bd74e6a835d.png', '2025-08-21 03:37:25', '2025-08-21 03:37:25', NULL),
(73, 'celana-hitam-350', 'Celana Hitam', 'XL', 'K.6.008', 6, 2, '1755747471_cd3f1be7989aeb4176a2.png', '2025-08-21 03:37:51', '2025-08-21 03:37:51', NULL),
(74, 'celana-putih-684', 'Celana Putih', 'M', 'K.7.001', 7, 2, '1755747825_b34bc41905775d5fb53c.png', '2025-08-21 03:43:45', '2025-08-21 03:43:45', NULL),
(75, 'celana-putih-860', 'Celana Putih', 'M', 'K.7.002', 7, 2, '1755747892_a47aae6f4805fbb68fb0.png', '2025-08-21 03:44:52', '2025-08-21 03:44:52', NULL),
(76, 'celana-putih-222', 'Celana Putih', 'L', 'K.7.003', 7, 2, '1755747954_dbb3ea34e115cb7f95e4.png', '2025-08-21 03:45:54', '2025-08-21 03:45:54', NULL),
(77, 'celana-silver-327', 'Celana Silver', 'S', 'K.7.004', 7, 2, '1755747999_41eac5968441b2f710e4.png', '2025-08-21 03:46:39', '2025-08-21 03:46:39', NULL),
(78, 'baju-black-gold-712', 'Baju Black Gold', 'S', 'K.8.001', 8, 2, '1755748098_dc30defcbb4ff9405c15.png', '2025-08-21 03:48:18', '2025-08-21 03:48:18', NULL),
(79, 'korset-orange-244', 'Korset Orange', 'S', 'K.8.002', 8, 2, '1755748152_614b8d156f420d7224cd.png', '2025-08-21 03:49:12', '2025-08-21 03:49:12', NULL),
(80, 'korset-pink-816', 'Korset Pink', 'S', 'K.8.003', 8, 2, '1755748201_b24d8c7fb0732f2cdba1.png', '2025-08-21 03:50:01', '2025-08-21 03:50:01', NULL),
(81, 'sarung-black-flower-994', 'Sarung Black Flower', 'S', 'K.8.004', 8, 2, '1755748250_738ac78291a43f709559.png', '2025-08-21 03:50:50', '2025-08-21 03:50:50', NULL),
(82, 'sarung-black-flower-671', 'Sarung Black Flower', 'M', 'K.8.005', 8, 2, '1755748310_2f2d6012a34a86d217c1.png', '2025-08-21 03:51:50', '2025-08-21 03:51:50', NULL),
(83, 'sarung-black-flower-511', 'Sarung Black Flower', 'L', 'K.8.006', 8, 2, '1755748347_6c99b66473ab5fa8f543.png', '2025-08-21 03:52:27', '2025-08-21 03:52:27', NULL),
(84, 'sarung-black-flower-936', 'Sarung Black Flower', 'XL', 'K.8.007', 8, 2, '1755748397_75758fa0029234318a1b.png', '2025-08-21 03:53:17', '2025-08-21 03:53:17', NULL),
(85, 'sarung-black-flower-pink-407', 'Sarung Black Flower Pink', 'S', 'K.8.008', 8, 2, '1755748439_10aa5bb07f9e579a791a.png', '2025-08-21 03:53:59', '2025-08-21 03:53:59', NULL),
(86, 'korset-black-342', 'Korset Black', 'S', 'K.8.009', 8, 2, '1755748531_055c41d6477a3b125cbb.png', '2025-08-21 03:55:31', '2025-08-21 03:55:31', NULL),
(87, 'korset-putih-167', 'Korset Putih', 'S', 'K.8.010', 8, 2, '1755748576_3507db859927df867389.png', '2025-08-21 03:56:16', '2025-08-21 03:56:16', NULL),
(88, 'korset-hitam-573', 'Korset Hitam', 'M', 'K.8.011', 8, 2, '1755748622_05db1665841b65835dad.png', '2025-08-21 03:57:02', '2025-08-21 03:57:02', NULL),
(89, 'korset-hitam-540', 'Korset Hitam', 'L', 'K.8.012', 8, 2, '1755748678_e1fb71c6197707df4971.png', '2025-08-21 03:57:58', '2025-08-21 03:57:58', NULL),
(90, 'kaos-hitam-82', 'Kaos HItam', 'S', 'K.8.013', 8, 2, '1755748730_7bccc241afe63de5e05f.png', '2025-08-21 03:58:50', '2025-08-21 03:58:50', NULL),
(91, 'kaos-hitam-415', 'Kaos Hitam', 'M', 'K.8.014', 8, 2, '1755748766_314a273625c436b41c7e.png', '2025-08-21 03:59:26', '2025-08-21 03:59:26', NULL),
(92, 'sarung-merah-navy-568', 'Sarung Merah Navy', 'S', 'K.9.001', 9, 2, '1755749018_34fc0d28e85fdcc1b78f.png', '2025-08-21 04:03:38', '2025-08-21 04:03:38', NULL),
(93, 'sarung-merah-hijau-845', 'Sarung Merah Hijau', 'S', 'K.9.002', 9, 2, '1755749051_0d87ab1b42318c0c16be.png', '2025-08-21 04:04:11', '2025-08-21 04:04:11', NULL),
(94, 'sarung-merah-408', 'Sarung Merah', 'S', 'K.9.003', 9, 2, '1755749096_eccdd005d0345aa716fd.png', '2025-08-21 04:04:56', '2025-08-21 04:04:56', NULL),
(95, 'selendang-merah-490', 'Selendang Merah', 'S', 'K.9.004', 9, 2, '1755749133_2e60a0508d3bb6911f0d.png', '2025-08-21 04:05:33', '2025-08-21 04:05:33', NULL),
(96, 'dua-selendang-merah-465', 'Dua Selendang Merah', 'S', 'K.9.005', 9, 2, '1755749201_d23902359c86201bfa62.png', '2025-08-21 04:06:41', '2025-08-21 04:06:41', NULL),
(97, 'kaos-merah-537', 'Kaos Merah', 'S', 'K.9.006', 9, 2, '1755749237_7987e973476730e46c5e.png', '2025-08-21 04:07:17', '2025-08-21 04:07:17', NULL),
(98, 'ikat-kepala-segitiga-merah-295', 'Ikat Kepala Segitiga Merah', 'S', 'K.9.007', 9, 2, '1755749276_584460515885cd4731d2.png', '2025-08-21 04:07:56', '2025-08-21 04:08:49', NULL),
(99, 'ikat-kepala-merah-515', 'Ikat Kepala Merah', 'S', 'K.9.008', 9, 2, '1755749316_67453fdeee13cd19dc13.png', '2025-08-21 04:08:36', '2025-08-21 04:08:36', NULL),
(100, 'ikat-merah-79', 'Ikat Merah', 'S', 'K.9.009', 9, 2, '1755749376_a11be573bdfa8806b8d9.png', '2025-08-21 04:09:36', '2025-08-21 04:09:36', NULL),
(101, 'selendang-hitam-merah-314', 'Selendang Hitam Merah', 'S', 'K.10.001', 10, 2, '1755749505_ea69bd68cf40198e9c0e.png', '2025-08-21 04:11:45', '2025-08-21 04:11:45', NULL),
(102, 'selendang-hitam-merah-611', 'Selendang Hitam Merah', 'M', 'K.10.002', 10, 2, '1755749520_d6eb88d4bbb4d8a86053.png', '2025-08-21 04:12:00', '2025-08-21 04:12:00', NULL),
(103, 'selendang-hitam-merah-403', 'Selendang Hitam Merah', 'L', 'K.10.003', 10, 2, '1755749537_b5fb5e1fe3cd79bc2609.png', '2025-08-21 04:12:17', '2025-08-21 04:12:17', NULL),
(104, 'selendang-merah-biru-308', 'Selendang Merah Biru', 'S', 'K.10.004', 10, 2, '1755749596_2d4906fb9e7a594e7696.png', '2025-08-21 04:13:16', '2025-08-21 04:13:16', NULL),
(105, 'korset-merah-gold-914', 'Korset Merah Gold', 'S', 'K.10.005', 10, 2, '1755749642_b7d606901edf506f6e1e.png', '2025-08-21 04:14:02', '2025-08-21 04:14:02', NULL),
(106, 'korset-pink-muda-536', 'Korset Pink Muda', 'S', 'K.10.006', 10, 2, '1755749687_88a6697463f2e25dcb9a.png', '2025-08-21 04:14:47', '2025-08-21 04:14:47', NULL),
(107, 'sarung-pink-gold-2', 'Sarung Pink Gold', 'S', 'K.10.007', 10, 2, '1755749753_64b5ffa7ae8a9c9736c8.png', '2025-08-21 04:15:53', '2025-08-21 04:15:53', NULL),
(108, 'kerah-cream-605', 'Kerah Cream', 'S', 'K.11.001', 11, 2, '1755749869_ed26f151cf1b1f9ca745.png', '2025-08-21 04:17:49', '2025-08-21 04:17:49', NULL),
(109, 'kerah-hitam-443', 'Kerah Hitam', 'S', 'K.11.002', 11, 2, '1755749943_16ce219e608d5b8c0662.png', '2025-08-21 04:19:03', '2025-08-21 04:19:03', NULL),
(110, 'baju-oren-545', 'Baju Oren', 'S', 'K.11.003', 11, 2, '1755749980_237c9770a0d135f396fd.png', '2025-08-21 04:19:40', '2025-08-21 04:19:40', NULL),
(111, 'baju-loreng-935', 'Baju Loreng', 'S', 'K.11.004', 11, 2, '1755750052_8d5ef9a45290b8fa1b30.png', '2025-08-21 04:20:52', '2025-08-21 04:20:52', NULL),
(112, 'baju-loreng-410', 'Baju Loreng', 'M', 'K.11.005', 11, 2, '1755750110_588756cc68d619c74090.png', '2025-08-21 04:21:50', '2025-08-21 04:21:50', NULL),
(113, 'apron-coklat-249', 'Apron Coklat', 'S', 'K.11.006', 11, 2, '1755750188_9f1bec5586e57aeb3f18.png', '2025-08-21 04:23:08', '2025-08-21 04:23:08', NULL),
(114, 'jaket-navy-869', 'Jaket Navy', 'S', 'K.11.007', 11, 2, '1755750230_376ae51fad867464247b.png', '2025-08-21 04:23:50', '2025-08-21 04:23:50', NULL),
(115, 'jaket-putih-814', 'Jaket Putih', 'S', 'K.11.008', 11, 2, '1755750268_e700fc1198533e4486ba.png', '2025-08-21 04:24:28', '2025-08-21 04:24:28', NULL),
(116, 'jaket-hitam-349', 'Jaket Hitam', 'S', 'K.11.009', 11, 2, '1755750323_ac663b8c26bfa700c21f.png', '2025-08-21 04:25:23', '2025-08-21 04:27:01', NULL),
(117, 'jaket-biru-451', 'Jaket Biru', 'S', 'K.11.010', 11, 2, '1755750363_2aa2ec5ad2bd42465f03.png', '2025-08-21 04:26:03', '2025-08-21 04:26:03', NULL),
(118, 'tshirt-hitam-874', 'Tshirt Hitam', 'S', 'K.11.011', 11, 2, '1755750405_5b47b274e0dead55f7da.png', '2025-08-21 04:26:45', '2025-08-21 04:26:45', NULL),
(119, 'sarung-biru-387', 'Sarung Biru', 'S', 'K.11.012', 11, 2, '1755750469_335197cfc451dacdda0d.png', '2025-08-21 04:27:49', '2025-08-21 04:27:49', NULL),
(120, 'sarung-batik-hitam-197', 'Sarung Batik HItam', 'S', 'K.11.013', 11, 2, '1755750514_b87adbfee353b21b3201.png', '2025-08-21 04:28:34', '2025-08-21 04:28:34', NULL),
(121, 'korset-merah-gold-344', 'Korset Merah Gold', 'S', 'K.11.015', 11, 2, '1755750558_c0c0bce98a300922768b.png', '2025-08-21 04:29:18', '2025-08-21 04:29:18', NULL),
(122, 'kemeja-putih-999', 'Kemeja Putih', 'S', 'K.11.015', 11, 2, '1755750595_ae625b4b6384b612fbf1.png', '2025-08-21 04:29:55', '2025-08-21 04:29:55', NULL),
(123, 'rompi-hitam-610', 'Rompi Hitam', 'S', 'K.11.016', 11, 2, '1755750632_2b693a2de3bcb8662b1e.png', '2025-08-21 04:30:32', '2025-08-21 04:30:32', NULL),
(124, 'kerah-magenta-219', 'Kerah Magenta', 'S', 'K.11.017', 11, 2, '1755750695_710a81b83ef1d1ceea9a.png', '2025-08-21 04:31:35', '2025-08-21 04:31:35', NULL),
(125, 'kerah-cyan-994', 'Kerah Cyan', 'S', 'K.11.018', 11, 2, '1755750729_4a54eeadc6e648d93df5.png', '2025-08-21 04:32:09', '2025-08-21 04:32:09', NULL),
(126, 'sarung-biru-kotak-231', 'Sarung Biru Kotak', 'S', 'K.11.019', 11, 2, '1755750784_88b4b22dc64585d9887c.png', '2025-08-21 04:33:04', '2025-08-21 04:33:04', NULL),
(127, 'rompi-navy-955', 'Rompi Navy', 'S', 'K.11.020', 11, 2, '1755750828_c2aa3795311c4c12f6c8.png', '2025-08-21 04:33:48', '2025-08-21 04:33:48', NULL),
(128, 'sarung-merah-953', 'Sarung Merah', 'S', 'K.11.021', 11, 2, '1755750893_614a9d885770a8a77591.png', '2025-08-21 04:34:53', '2025-08-21 04:34:53', NULL),
(129, 'selendang-maroon-535', 'Selendang Maroon', 'S', 'K.11.022', 11, 2, '1755750929_8eb1e0a18abbd6dfd158.png', '2025-08-21 04:35:29', '2025-08-21 04:35:29', NULL),
(130, 'selendang-hitam-168', 'Selendang Hitam', 'S', 'K.11.023', 11, 2, '1755750970_f2d28b05f0f0f2506665.png', '2025-08-21 04:36:10', '2025-08-21 04:36:10', NULL),
(131, 'baju-ungu-cerah-448', 'Baju Ungu Cerah', 'S', 'K.12.001', 12, 2, '1755751403_e059e6d293363c4879de.png', '2025-08-21 04:41:57', '2025-08-21 04:44:05', NULL),
(132, 'kerah-putih-bulu-264', 'Kerah Putih Bulu', 'S', 'K.12.002', 12, 2, '1755751437_a9e307e83aeae22bd153.png', '2025-08-21 04:43:57', '2025-08-21 04:43:57', NULL),
(133, 'baju-putih-bulu-807', 'Baju Putih Bulu', 'S', 'K.12.003', 12, 2, '1755751491_32d6f87a05829d41ab16.png', '2025-08-21 04:44:51', '2025-08-21 04:44:51', NULL),
(134, 'topi-merah-putih-65', 'Topi Merah Putih', 'S', 'K.12.004', 12, 2, '1755751536_9539a819351c6d7f222e.png', '2025-08-21 04:45:36', '2025-08-21 04:47:27', NULL),
(135, 'topi-putih-gold-bulu-831', 'Topi Putih Gold Bulu', 'S', 'K.12.005', 12, 2, '1755751600_60ff043dd4b778501e65.png', '2025-08-21 04:46:40', '2025-08-21 04:46:40', NULL),
(136, 'topi-merah-gold-82', 'Topi Merah Gold', 'S', 'K.12.006', 12, 2, '1755751635_3d11e64bb16736133343.png', '2025-08-21 04:47:15', '2025-08-21 04:47:15', NULL),
(137, 'rok-putih-446', 'Rok Putih', 'S', 'K.12.007', 12, 2, '1755751695_782e14344b08a4187bc3.png', '2025-08-21 04:48:15', '2025-08-21 04:48:15', NULL),
(138, 'saku-biru-53', 'Saku Biru', 'S', 'K.13.001', 13, 2, '1755751764_eafdfb32e4dd6d7f021d.png', '2025-08-21 04:49:24', '2025-08-21 04:49:24', NULL),
(139, 'baju-champion-778', 'Baju Champion', 'S', 'K.13.002', 13, 2, '1755751825_a1915984e636949d0d54.png', '2025-08-21 04:50:25', '2025-08-21 04:52:43', NULL),
(140, 'baju-champion-268', 'Baju Champion', 'M', 'K.13.003', 13, 2, '1755751862_49036461c26ec26b66ee.png', '2025-08-21 04:51:02', '2025-08-21 04:52:52', NULL),
(141, 'baju-pink-music-169', 'Baju Pink Music', 'S', 'K.13.004', 13, 2, '1755751926_6a162a657e6f3fad44be.png', '2025-08-21 04:52:06', '2025-08-21 04:52:06', NULL),
(142, 'baju-pink-music-58', 'Baju Pink Music', 'M', 'K.13.005', 13, 2, '1755751946_31be6ebf7b58ad9b77f0.png', '2025-08-21 04:52:26', '2025-08-21 04:52:26', NULL),
(143, 'baju-kuning-music-485', 'Baju Kuning Music', 'S', 'K.13.006', 13, 2, '1755752028_b1bbd6e51d289cffb874.png', '2025-08-21 04:53:48', '2025-08-21 04:53:48', NULL),
(144, 'sarung-oren-745', 'Sarung Oren', 'S', 'K.13.007', 13, 2, '1755752063_13fac6d014cebfa8f592.png', '2025-08-21 04:54:23', '2025-08-21 04:54:23', NULL),
(145, 'polo-navy-putih-561', 'Polo Navy Putih', 'S', 'K.14.001', 14, 5, '1755759158_7282b80e125252aa600b.png', '2025-08-21 06:52:38', '2025-08-21 06:52:38', NULL),
(146, 'polo-kuning-putih-882', 'Polo Kuning Putih', 'S', 'K.14.002', 14, 5, '1755759202_4b1271068aae30fac420.png', '2025-08-21 06:53:22', '2025-08-21 06:54:34', NULL),
(147, 'polo-biru-putih-763', 'Polo Biru Putih', 'S', 'K.14.003', 14, 5, '1755759265_7a7db2b9d226b37ccc45.png', '2025-08-21 06:54:25', '2025-08-21 06:54:25', NULL),
(148, 'polo-cyan-putih-692', 'Polo Cyan Putih', 'S', 'K.14.004', 14, 5, '1755759333_56265644723f42f31b21.png', '2025-08-21 06:55:33', '2025-08-21 06:55:33', NULL),
(149, 'polo-hijau-putih-811', 'Polo HIjau Putih', 'S', 'K.14.005', 14, 5, '1755759385_696289b40f76bac65888.png', '2025-08-21 06:56:25', '2025-08-21 06:56:25', NULL),
(150, 'polo-merah-putih-92', 'Polo Merah Putih', 'S', 'K.14.006', 14, 5, '1755759425_a559edecdf0a93472657.png', '2025-08-21 06:57:05', '2025-08-21 06:57:05', NULL),
(151, 'polo-oren-putih-786', 'Polo Oren Putih', 'S', 'K.14.007', 14, 5, '1755759464_81346b09d9870968fe31.png', '2025-08-21 06:57:44', '2025-08-21 06:57:44', NULL),
(152, 'baju-hijau-cream-649', 'Baju Hijau Cream', 'S', 'K.14.008', 14, 2, '1755759516_da14ddac27e092ace1e4.png', '2025-08-21 06:58:36', '2025-08-21 06:59:21', NULL),
(153, 'celana-hijau-26', 'Celana HIjau', 'S', 'K.14.009', 14, 2, '1755759552_3d3f22913af829cc0c0d.png', '2025-08-21 06:59:12', '2025-08-21 06:59:12', NULL),
(154, 'jaket-merah-putih-600', 'Jaket Merah Putih', 'S', 'K.14.010', 14, 2, '1755759603_6e0f9c2e233f246292f9.png', '2025-08-21 07:00:03', '2025-08-21 07:00:03', NULL),
(155, 'jaket-merah-putih-550', 'Jaket Merah Putih', 'M', 'K.14.011', 14, 2, '1755759646_c85cef8419152b2d0fa9.png', '2025-08-21 07:00:46', '2025-08-21 07:00:46', NULL),
(156, 'dua-syal-merah-904', 'Dua Syal Merah', 'S', 'K.14.012', 14, 2, '1755759690_5abdd8adf5149a444274.png', '2025-08-21 07:01:30', '2025-08-21 07:01:30', NULL),
(157, 'polo-kuning-putih-267', 'Polo Kuning Putih', 'M', 'K.15.001', 15, 5, '1755759978_8314e8ac2982dc095cec.png', '2025-08-21 07:02:27', '2025-08-21 07:08:38', NULL),
(158, 'polo-navy-putih-619', 'Polo Navy Putih', 'M', 'K.15.002', 15, 5, '1755759991_0f0499cb88d9665e9c14.png', '2025-08-21 07:03:08', '2025-08-21 07:08:11', NULL),
(159, 'polo-biru-putih-183', 'Polo Biru Putih', 'M', 'K.15.003', 15, 5, '1755760002_66030ae28ae6520cdfb0.png', '2025-08-21 07:04:10', '2025-08-21 07:08:17', NULL),
(160, 'polo-putih-130', 'Polo Putih', 'S', 'K.15.004', 15, 5, '1755760013_4a6bfa7bb4baedf74cca.png', '2025-08-21 07:05:25', '2025-08-21 07:08:26', NULL),
(161, 'polo-ungu-kuning-483', 'Polo Ungu Kuning', 'S', 'K.12.001', 15, 5, '1755760058_fbb0684c0e9e1095cf5e.png', '2025-08-21 07:07:38', '2025-08-21 07:07:38', NULL),
(162, 'polo-oren-putih-373', 'Polo Oren Putih', 'M', 'K.15.006', 15, 5, '1755760165_3990a2454831ba802c00.png', '2025-08-21 07:09:25', '2025-08-21 07:09:25', NULL),
(163, 'polo-hijau-putih-428', 'Polo Hijau Putih', 'M', 'K.15.007', 15, 5, '1755760199_50b79818fd54a9dfc972.png', '2025-08-21 07:09:59', '2025-08-21 07:09:59', NULL),
(164, 'polo-merah-putih-829', 'Polo Merah Putih', 'M', 'K.15.008', 15, 5, '1755760235_440bb3e1e94727666dcc.png', '2025-08-21 07:10:35', '2025-08-21 07:10:35', NULL),
(165, 'polo-hitam-330', 'Polo Hitam', 'S', 'K.15.009', 15, 5, '1755760277_9d144d996d753ecbc799.png', '2025-08-21 07:11:17', '2025-08-21 07:11:17', NULL),
(166, 'celana-coklat-414', 'Celana Coklat', 'S', 'K.15.010', 15, 2, '1755760314_02620d9876ed0517e22f.png', '2025-08-21 07:11:54', '2025-08-21 07:11:54', NULL),
(167, 'baju-merah-calm-450', 'Baju Merah Calm', 'S', 'K.15.011', 15, 2, '1755760355_f1fc4ff1401f3b199cd8.png', '2025-08-21 07:12:35', '2025-08-21 07:12:35', NULL),
(168, 'baju-putih-blibli-196', 'Baju Putih Blibli', 'S', 'K.15.012', 15, 2, '1755760390_14f8f8d172ca28911917.png', '2025-08-21 07:13:10', '2025-08-21 07:13:10', NULL),
(169, 'baju-hitam-jco-618', 'Baju Hitam JCO', 'S', 'K.15.013', 15, 2, '1755760439_4bc5aa5645c516e52cfb.png', '2025-08-21 07:13:59', '2025-08-21 07:13:59', NULL),
(170, 'jaket-coklat-155', 'Jaket Coklat', 'S', 'K.15.014', 15, 2, '1755760476_41c476f1ffa3ff9b1370.png', '2025-08-21 07:14:36', '2025-08-21 07:14:36', NULL),
(171, 'jaket-putih-670', 'Jaket Putih', 'M', 'K.15.015', 15, 2, '1755760513_ad46145a858c4d45dbee.png', '2025-08-21 07:15:13', '2025-08-21 07:15:13', NULL),
(172, 'jaket-hitam-675', 'Jaket Hitam', 'M', 'K.15.016', 15, 2, '1755760554_12eaa927dba4e6197220.png', '2025-08-21 07:15:54', '2025-08-21 07:15:54', NULL),
(173, 'bendera-merah-putih-181', 'Bendera Merah Putih', 'S', 'K.16.001', 16, 2, '1755760625_7302bf8daf665d637794.png', '2025-08-21 07:17:05', '2025-08-21 07:17:05', NULL),
(174, 'bendera-merah-putih-114', 'Bendera Merah Putih', 'M', 'K.16.002', 16, 2, '1755760645_5867ab2746be3abe3639.png', '2025-08-21 07:17:25', '2025-08-21 07:17:25', NULL),
(175, 'dua-bendera-merah-putih-279', 'Dua Bendera Merah Putih', 'S', 'K.16.003', 16, 2, '1755760681_87eed7ef16929e8aa536.png', '2025-08-21 07:18:01', '2025-08-21 07:18:01', NULL),
(176, 'kain-gulung-v-285', 'Kain Gulung V', 'S', 'K.16.004', 16, 2, '1755760742_72418a74e037d5dcef71.png', '2025-08-21 07:19:02', '2025-08-21 07:19:02', NULL),
(177, 'kain-gulung-i-2', 'Kain Gulung I', 'S', 'K.16.005', 16, 2, '1755760781_3c9aebd12d3975d51653.png', '2025-08-21 07:19:41', '2025-08-21 07:19:41', NULL),
(178, 'kain-putih-906', 'Kain Putih', 'S', 'K.16.006', 16, 2, '1755760871_ce4dc170c4115c7b3a2c.png', '2025-08-21 07:21:11', '2025-08-21 07:21:11', NULL),
(179, 'kain-pink-992', 'Kain Pink', 'S', 'K.16.007', 16, 2, '1755760905_5caf2a1fb1344a180945.png', '2025-08-21 07:21:45', '2025-08-21 07:21:45', NULL),
(180, 'kain-pink-rumbay-360', 'Kain Pink Rumbay', 'S', 'K.16.008', 16, 2, '1755760947_f82aaf78c52123350f65.png', '2025-08-21 07:22:27', '2025-08-21 07:22:27', NULL),
(181, 'kain-magenta-769', 'Kain Magenta', 'S', 'K.16.009', 16, 2, '1755760994_5e90584ffc9cf2402ba1.png', '2025-08-21 07:23:14', '2025-08-21 07:23:14', NULL),
(182, 'kain-ungu-618', 'Kain Ungu', 'S', 'K.16.010', 16, 2, '1755761029_c9c6055b74c6b185c64d.png', '2025-08-21 07:23:49', '2025-08-21 07:23:49', NULL),
(183, 'kain-hitam-445', 'Kain HItam', 'S', 'K.16.011', 16, 2, '1755761065_7bdbb5d73a409b0b7809.png', '2025-08-21 07:24:25', '2025-08-21 07:24:25', NULL),
(184, 'kain-merah-252', 'Kain Merah', 'S', 'K.16.012', 16, 2, '1755761105_ddba427773ff11164893.png', '2025-08-21 07:25:05', '2025-08-21 07:25:05', NULL),
(185, 'kain-hijau-kuning-pink-806', 'Kain Hijau Kuning Pink', 'S', 'K.16.013', 16, 2, '1755761142_ddf07899fda385fd1165.png', '2025-08-21 07:25:42', '2025-08-21 07:25:42', NULL),
(186, 'kain-putih-172', 'Kain Putih', 'M', 'K.16.014', 16, 2, '1755761182_d663c2f44bfff677d71b.png', '2025-08-21 07:26:22', '2025-08-21 07:26:22', NULL),
(187, 'kain-merah-478', 'Kain Merah', 'S', 'K.16.015', 16, 2, '1755761216_e8ce902882810368a73c.png', '2025-08-21 07:26:56', '2025-08-21 07:26:56', NULL),
(188, 'kain-merah-489', 'Kain Merah', 'S', 'K.16.016', 16, 2, '1755761269_bd410887f6d3696a0712.png', '2025-08-21 07:27:49', '2025-08-21 07:27:49', NULL),
(189, 'kain-putih-flower-973', 'Kain Putih Flower', 'S', 'K.16.017', 16, 2, '1755761306_77c2f78fc2bf41cf03a6.png', '2025-08-21 07:28:26', '2025-08-21 07:28:26', NULL),
(190, 'korset-payet-biru-427', 'Korset Payet Biru', 'S', 'K.16.018', 16, 2, '1755761411_e3515cdadbef70cca4a0.png', '2025-08-21 07:30:11', '2025-08-21 07:30:11', NULL),
(191, 'kain-biru-318', 'Kain Biru', 'S', 'K.16.019', 16, 2, '1755761448_84176455b23fe6576d0b.png', '2025-08-21 07:30:48', '2025-08-21 07:30:48', NULL),
(192, 'kain-hijau-377', 'Kain Hijau', 'S', 'K.16.020', 16, 2, '1755761485_6760aa8e7a086ed5f768.png', '2025-08-21 07:31:25', '2025-08-21 07:31:25', NULL),
(193, 'kain-pink-366', 'Kain Pink', 'S', 'K.16.021', 16, 2, '1755761536_c109b6459fcd5677e66a.png', '2025-08-21 07:32:16', '2025-08-21 07:32:16', NULL),
(194, 'kain-kuning-411', 'Kain Kuning', 'S', 'K.16.022', 16, 2, '1755761618_6edfbc6d131ac26221b0.png', '2025-08-21 07:33:38', '2025-08-21 07:33:38', NULL),
(195, 'kain-cyan-hijau-kuning-71', 'Kain Cyan Hijau Kuning', 'S', 'K.16.023', 16, 2, '1755761668_c6337a61296e3268c6bb.png', '2025-08-21 07:34:28', '2025-08-21 07:34:28', NULL),
(196, 'kain-ungu-509', 'Kain Ungu', 'S', 'K.16.024', 16, 2, '1755761706_9ccf67192922eec3b4aa.png', '2025-08-21 07:35:06', '2025-08-21 07:35:06', NULL),
(197, 'kain-merah-batik-565', 'Kain Merah Batik', 'S', 'K.16.025', 16, 2, '1755761738_cc34e2ed51433f8ea2a8.png', '2025-08-21 07:35:38', '2025-08-21 07:35:38', NULL),
(198, 'no-name-863', 'no name', 'S', 'K.16.026', 16, 2, '1755761972_ef70b07dc2a544876e93.png', '2025-08-21 07:39:32', '2025-08-21 07:39:32', NULL),
(199, 'no-name-770', 'no name', 'S', 'K.16.027', 16, 2, '1755762064_58fe4f56c0fc03dd071f.png', '2025-08-21 07:41:04', '2025-08-21 07:41:04', NULL),
(200, 'kain-gold-flower-black-932', 'Kain Gold Flower Black', 'S', 'K.16.028', 16, 2, '1755762183_bbf7362b6e1cff97577b.png', '2025-08-21 07:43:03', '2025-08-21 07:43:03', NULL),
(201, 'kain-perca-gold-525', 'Kain Perca Gold ', 'S', 'K.16.029', 16, 2, '1755762240_ef277469b53b24cc7aea.png', '2025-08-21 07:44:00', '2025-08-21 07:44:00', NULL),
(202, 'kain-biru-gulung-925', 'Kain Biru Gulung', 'S', 'K.16.030', 16, 2, '1755762292_ebd98ac9be48da052f83.png', '2025-08-21 07:44:52', '2025-08-21 07:44:52', NULL),
(203, 'kain-hijau-glow-781', 'Kain Hijau Glow', 'S', 'K.16.031', 16, 2, '1755762346_7d6b2263f01d8cc35b72.png', '2025-08-21 07:45:46', '2025-08-21 07:45:46', NULL),
(204, 'kain-putih-110', 'Kain Putih', 'S', 'K.16.032', 16, 2, '1755762387_a8fafde5fcc3601e9650.png', '2025-08-21 07:46:27', '2025-08-21 07:46:27', NULL),
(205, 'kain-pink-909', 'Kain Pink', 'S', 'K.16.033', 16, 2, '1755762423_d64d414c912751b66551.png', '2025-08-21 07:47:03', '2025-08-21 07:47:03', NULL),
(206, 'kain-batik-merah-hijau-978', 'Kain Batik Merah Hijau', 'S', 'K.16.034', 16, 2, '1755762469_9c026bfaaafef8622634.png', '2025-08-21 07:47:49', '2025-08-21 07:47:49', NULL),
(207, 'kain-baik-hijau-merah-727', 'Kain Baik HIjau Merah', 'M', 'K.16.035', 16, 2, '1755762508_1f7d617fbf5f66b754c4.png', '2025-08-21 07:48:28', '2025-08-21 07:48:28', NULL),
(208, 'celana-hitam-844', 'Celana Hitam', 'S', 'K.16.036', 16, 2, '1755762548_d6f224037a961928c921.png', '2025-08-21 07:49:08', '2025-08-21 07:49:08', NULL),
(209, 'no-name-887', 'no name', 'S', 'K.16.037', 16, 2, '1755762580_66c75fa252c931c57ab3.png', '2025-08-21 07:49:40', '2025-08-21 07:49:40', NULL),
(210, 'baju-magenta-biru-990', 'Baju Magenta Biru', 'S', 'K.17.001', 17, 2, '1755762784_1620626c3d8e892373b3.png', '2025-08-21 07:53:04', '2025-08-21 07:53:04', NULL),
(211, 'celana-abu-410', 'Celana Abu', 'S', 'K.17.002', 17, 2, '1755762822_78cef9e49055a2a52b37.png', '2025-08-21 07:53:42', '2025-08-21 07:53:42', NULL),
(212, 'celana-sarung-hitam-527', 'Celana Sarung Hitam', 'S', 'K.17.003', 17, 2, '1755762870_19c3722b21714c667b35.png', '2025-08-21 07:54:30', '2025-08-21 07:54:30', NULL),
(213, 'kain-batik-merah-navy-778', 'Kain Batik Merah Navy', 'S', 'K.17.004', 17, 2, '1755762923_41dcee187c3d7fc48a13.png', '2025-08-21 07:55:23', '2025-08-21 07:55:23', NULL),
(214, 'baju-gold-abu-188', 'Baju Gold Abu', 'S', 'K.17.005', 17, 2, '1755762963_332e79a69fad85d7f5de.png', '2025-08-21 07:56:03', '2025-08-21 07:56:03', NULL),
(215, 'ikat-coklat-244', 'Ikat Coklat', 'S', 'K.18.001', 18, 2, '1755763587_c0bf96b8333ba30bda44.png', '2025-08-21 08:06:27', '2025-08-21 08:06:27', NULL),
(216, 'sarung-biru-batik-662', 'Sarung Biru Batik', 'S', 'K.18.002', 18, 2, '1755763628_4b832160209ef2f6b5c1.png', '2025-08-21 08:07:08', '2025-08-21 08:07:08', NULL),
(217, 'selendang-hitam-merah-186', 'Selendang Hitam Merah', 'S', 'K.18.003', 18, 2, '1755763684_0684d1c62fead660a157.png', '2025-08-21 08:08:04', '2025-08-21 08:08:04', NULL),
(218, 'selendang-hitam-merah-686', 'Selendang Hitam Merah', 'M', 'K.18.004', 18, 2, '1755763723_37edc3d1d7f320dd2308.png', '2025-08-21 08:08:43', '2025-08-21 08:08:43', NULL),
(219, 'sabuk-merah-519', 'Sabuk Merah', 'S', 'K.18.005', 18, 2, '1755763777_1f619dbe2802231cc8f7.png', '2025-08-21 08:09:37', '2025-08-21 08:09:37', NULL),
(220, 'sabuk-biru-gold-100', 'Sabuk Biru Gold', 'S', 'K.18.006', 18, 2, '1755763823_2c8a75e7bb653d712bd8.png', '2025-08-21 08:10:23', '2025-08-21 08:10:23', NULL),
(221, 'sabuk-biru-gold-19', 'Sabuk Biru Gold', 'M', 'K.18.007', 18, 2, '1755763865_598da3f31aa06f355b44.png', '2025-08-21 08:11:05', '2025-08-21 08:11:05', NULL),
(222, 'sabuk-merah-854', 'Sabuk Merah', 'S', 'K.18.008', 18, 2, '1755763906_c1bc4ab287f34b8dc04a.png', '2025-08-21 08:11:46', '2025-08-21 08:11:46', NULL),
(223, 'sabuk-silver-972', 'Sabuk Silver', 'S', 'K.18.009', 18, 2, '1755763943_273c0a6dfff8b25b786a.png', '2025-08-21 08:12:23', '2025-08-21 08:12:23', NULL),
(224, 'sabuk-merah-gold-957', 'Sabuk Merah Gold', 'S', 'K.18.010', 18, 2, '1755763982_525900c1e801f9def69d.png', '2025-08-21 08:13:02', '2025-08-21 08:13:02', NULL),
(225, 'sabuk-gold-besi-396', 'Sabuk Gold  Besi', 'S', 'K.18.011', 18, 2, '1755764024_b20d33bea2086c9e1737.png', '2025-08-21 08:13:44', '2025-08-21 08:14:28', NULL),
(226, 'sabuk-silver-besi-804', 'Sabuk Silver Besi', 'S', 'K.18.012', 18, 2, '1755764059_a50ff835ff007d38ff4c.png', '2025-08-21 08:14:19', '2025-08-21 08:14:19', NULL),
(227, 'sabuk-biru-gold-406', 'Sabuk Biru Gold', 'M', 'K.18.013', 18, 2, '1755764110_49407c535a6f363ae495.png', '2025-08-21 08:15:10', '2025-08-21 08:15:10', NULL),
(228, 'sabuk-silver-442', 'Sabuk Silver', 'M', 'K.18.014', 18, 2, '1755764149_b16297bbabaa49df3c64.png', '2025-08-21 08:15:49', '2025-08-21 08:15:49', NULL),
(229, 'celana-putih-499', 'Celana Putih', 'S', 'K.19.001', 19, 2, '1755764322_1b8a7ddf5e863f576fa1.png', '2025-08-21 08:18:42', '2025-08-21 08:18:42', NULL),
(230, 'celana-putih-872', 'Celana Putih', 'M', 'K.19.002', 19, 2, '1755764363_918042a47f0e45d999dc.png', '2025-08-21 08:19:23', '2025-08-21 08:19:23', NULL),
(231, 'celana-pendek-putih-662', 'Celana Pendek Putih', 'S', 'K.19.003', 19, 2, '1755764404_c29cb03079364729bbac.png', '2025-08-21 08:20:04', '2025-08-21 08:20:04', NULL),
(232, 'celana-biru-987', 'Celana Biru', 'S', 'K.19.004', 19, 2, '1755764440_e2d3c74df50c2fbd9f4a.png', '2025-08-21 08:20:40', '2025-08-21 08:20:40', NULL),
(233, 'jaket-hitam-508', 'Jaket Hitam', 'S', 'K.19.005', 19, 2, '1755764474_4e3ee920d10a4e249211.png', '2025-08-21 08:21:14', '2025-08-21 08:21:14', NULL),
(234, 'korset-merah-998', 'Korset Merah', 'S', 'K.19.006', 19, 2, '1755764508_fb03830aff1456b8d6b7.png', '2025-08-21 08:21:48', '2025-08-21 08:21:48', NULL),
(235, 'karet-korset-361', 'Karet Korset', 'S', 'K.19.007', 19, 2, '1755764551_548ff99f37b298b876e7.png', '2025-08-21 08:22:31', '2025-08-21 08:22:31', NULL),
(236, 'manset-maroon-179', 'Manset Maroon', 'S', 'K.19.008', 19, 2, '1755764593_0f0041dc7461a4aac682.png', '2025-08-21 08:23:13', '2025-08-21 08:23:13', NULL),
(237, 'kemeja-putih-921', 'Kemeja Putih', 'S', 'K.20.001', 20, 2, '1755767507_79a0b2fdbd9791475608.png', '2025-08-21 09:11:47', '2025-08-21 09:27:27', NULL),
(238, 'baju-pink-batik-936', 'Baju Pink Batik', 'S', 'K.20.002', 20, 2, '1755767576_976abd9728145b8b16f3.png', '2025-08-21 09:12:56', '2025-08-21 09:12:56', NULL),
(239, 'baju-pink-batik-483', 'Baju Pink Batik', 'M', 'K.20.003', 20, 2, '1755767645_2f3815f6ed6db7d40349.png', '2025-08-21 09:14:05', '2025-08-21 09:14:05', NULL),
(240, 'baju-merah-putih-919', 'Baju Merah Putih', 'S', 'K.20.004', 20, 2, '1755767725_b4aa8946b112556bdbe3.png', '2025-08-21 09:15:25', '2025-08-21 09:15:25', NULL),
(241, 'baju-merah-putih-348', 'Baju Merah Putih', 'M', 'K.20.005', 20, 2, '1755767790_b1de72c5537fd6ec2361.png', '2025-08-21 09:16:30', '2025-08-21 09:16:30', NULL),
(242, 'baju-merah-putih-620', 'Baju Merah Putih', 'L', 'K.20.006', 20, 2, '1755767831_c6e250899a30b5e26e26.png', '2025-08-21 09:17:11', '2025-08-21 09:17:11', NULL),
(243, 'kebaya-pink-999', 'Kebaya Pink', 'S', 'K.20.007', 20, 2, '1755767978_a8796ef3bdb339434c87.png', '2025-08-21 09:19:38', '2025-08-21 09:19:38', NULL),
(244, 'kebaya-hijau-659', 'Kebaya Hijau', 'S', 'K.20.009', 20, 2, '1755768106_49c8ebdc347c281c6f98.png', '2025-08-21 09:20:51', '2025-08-21 09:22:44', '2025-08-21 09:22:44'),
(245, 'kebaya-pink-513', 'Kebaya Pink', 'S', 'K.20.008', 20, 2, '1755768149_9308805ec481df45e70c.png', '2025-08-21 09:22:29', '2025-08-21 09:22:29', NULL),
(246, 'kebaya-hijau-589', 'Kebaya HIjau', 'S', 'K.20.009', 20, 2, '1755768195_d3596920645929412e37.png', '2025-08-21 09:23:15', '2025-08-21 09:23:15', NULL),
(247, 'baju-putih-kuning-stelan-205', 'Baju Putih Kuning Stelan', 'S', 'K.20.010', 20, 2, '1755768326_c1904ac2e38e840f4501.png', '2025-08-21 09:25:26', '2025-08-21 09:25:26', NULL),
(248, 'kemeja-putih-786', 'Kemeja Putih', 'S', 'K.20.011', 20, 2, '1755768385_95967141632e1e797926.png', '2025-08-21 09:26:25', '2025-08-21 09:26:25', NULL),
(249, 'kemeja-batik-pink-616', 'Kemeja Batik Pink', 'S', 'K.20.012', 20, 2, '1755768428_8e8abe92ff00110c4184.png', '2025-08-21 09:27:08', '2025-08-21 09:27:08', NULL),
(250, 'baju-kuning-singlet-524', 'Baju Kuning Singlet', 'S', 'K.20.013', 20, 2, '1755768494_584304ef49f891eea9e9.png', '2025-08-21 09:28:14', '2025-08-21 09:28:14', NULL),
(251, 'baju-pink-singlet-702', 'Baju Pink Singlet', 'S', 'K.20.014', 20, 2, '1755768540_0299d4c29cc5d71401e5.png', '2025-08-21 09:29:00', '2025-08-21 09:29:00', NULL),
(252, 'baju-ungu-singlet-516', 'Baju Ungu Singlet', 'S', 'K.20.015', 20, 2, '1755768582_b443f40ae7326547700a.png', '2025-08-21 09:29:42', '2025-08-21 09:29:42', NULL),
(253, 'baju-merah-singlet-774', 'Baju Merah Singlet', 'S', 'K.20.016', 20, 2, '1755768622_2895a82a27ee0ff1c3a3.png', '2025-08-21 09:30:22', '2025-08-21 09:30:22', NULL),
(254, 'baju-biru-singlet-963', 'Baju Biru Singlet', 'S', 'K.20.020', 20, 2, '1755768662_732fbf00c53e2a7cfa8b.png', '2025-08-21 09:31:02', '2025-08-21 09:31:02', NULL),
(255, 'baju-hijau-singlet-141', 'Baju Hijau Singlet', 'S', 'K.20.021', 20, 2, '1755768716_3a91c397ee66a8b1a76b.png', '2025-08-21 09:31:56', '2025-08-21 09:31:56', NULL),
(256, 'sarung-hitam-titik-473', 'Sarung Hitam Titik', 'S', 'K.21.001', 21, 2, '1755768776_291730c3380bcddbb0e2.png', '2025-08-21 09:32:56', '2025-08-21 09:32:56', NULL),
(257, 'kain-pink-pjg-549', 'Kain Pink Pjg', 'S', 'K.22.001', 22, 2, '1755852639_83c31ca2fca74cd4d129.png', '2025-08-22 08:50:39', '2025-08-22 08:50:39', NULL),
(258, 'kain-biru-937', 'Kain Biru', 'S', 'K.22.002', 22, 2, '1755852676_bfdf7d6795158125e697.png', '2025-08-22 08:51:16', '2025-08-22 08:51:16', NULL),
(259, 'kain-navy-380', 'Kain Navy', 'S', 'K.22.003', 22, 2, '1755852714_b63f513a977e23e860a8.png', '2025-08-22 08:51:54', '2025-08-22 08:51:54', NULL),
(260, 'kain-abu-344', 'Kain Abu', 'S', 'K.22.004', 22, 2, '1755852746_6ab3ce7219784bea7217.png', '2025-08-22 08:52:26', '2025-08-22 08:52:26', NULL),
(261, 'kain-maroon-155', 'Kain Maroon', 'S', 'K.22.005', 22, 2, '1755852799_a7b41e356dc6451f690e.png', '2025-08-22 08:53:19', '2025-08-22 08:53:19', NULL),
(262, 'kain-merah-518', 'Kain Merah', 'S', 'K.22.006', 22, 2, '1755852833_a022c8ac982625578b06.png', '2025-08-22 08:53:53', '2025-08-22 08:53:53', NULL),
(263, 'kain-gold-700', 'Kain Gold', 'S', 'K.22.007', 22, 2, '1755852864_fb868e3cb7877cb89036.png', '2025-08-22 08:54:24', '2025-08-22 08:54:24', NULL),
(264, 'kain-lylac-969', 'Kain Lylac', 'S', 'K.22.008', 22, 2, '1755852897_da2eb2597c22a0579eb2.png', '2025-08-22 08:54:57', '2025-08-22 08:54:57', NULL),
(265, 'kain-pink-937', 'Kain Pink', 'S', 'K.22.009', 22, 2, '1755852929_e15f8673894982ec00f6.png', '2025-08-22 08:55:29', '2025-08-22 08:55:29', NULL),
(266, 'kain-turtoise-522', 'Kain Turtoise', 'S', 'K.22.010', 22, 2, '1755852965_37f88393a578553c1a75.png', '2025-08-22 08:56:05', '2025-08-22 08:56:05', NULL),
(267, 'kain-ungu-179', 'Kain Ungu', 'S', 'K.22.011', 22, 2, '1755852994_b4b56c68b1711a9700a4.png', '2025-08-22 08:56:34', '2025-08-22 08:56:34', NULL),
(268, 'kain-hijau-547', 'Kain Hijau', 'S', 'K.22.012', 22, 2, '1755853027_94fb938ee245b861afd3.png', '2025-08-22 08:57:07', '2025-08-22 08:57:07', NULL),
(269, 'kain-pink-crh-88', 'Kain Pink Crh', 'S', 'K.22.013', 22, 2, '1755853064_275371163e8e6af84d9f.png', '2025-08-22 08:57:44', '2025-08-22 08:57:44', NULL),
(270, 'kain-pink-muda-955', 'Kain Pink Muda', 'S', 'K.22.014', 22, 2, '1755853101_3980f2f732609281572d.png', '2025-08-22 08:58:21', '2025-08-22 08:58:21', NULL),
(271, 'kain-batik-hitam-flower-189', 'Kain Batik Hitam Flower', 'S', 'K.22.015', 22, 2, '1755853140_0145d97a160398eaeb83.png', '2025-08-22 08:59:00', '2025-08-22 08:59:00', NULL),
(272, 'kain-batik-biru-flower-163', 'Kain Batik Biru Flower', 'S', 'K.22.016', 22, 2, '1755853183_fe183d39cf7def506bcf.png', '2025-08-22 08:59:43', '2025-08-22 08:59:43', NULL),
(273, 'kain-etnic-oren-cyan-kuning-571', 'Kain Etnic Oren Cyan Kuning', 'S', 'K.22.017', 22, 2, '1755853281_1ebcc4345c9d6cd62e4d.png', '2025-08-22 09:01:21', '2025-08-22 09:01:21', NULL),
(274, 'kain-moca-97', 'Kain Moca', 'S', 'K.22.018', 22, 2, '1755853313_1116d25730c09f2b2a53.png', '2025-08-22 09:01:53', '2025-08-22 09:01:53', NULL),
(275, 'kain-hijau-lumut-647', 'Kain Hijau Lumut', 'S', 'K.22.019', 22, 2, '1755853377_bb64ab41f6fbfd4fc378.png', '2025-08-22 09:02:57', '2025-08-22 09:02:57', NULL),
(276, 'kain-pink-548', 'Kain Pink', 'L', 'K.22.020', 22, 2, '1755853410_ef7d5e51889c88fa0cfb.png', '2025-08-22 09:03:30', '2025-08-22 09:03:30', NULL),
(277, 'kain-hijau-tua-140', 'Kain Hijau Tua', 'S', 'K.22.021', 22, 2, '1755853449_b3c4076a531a409f8759.png', '2025-08-22 09:04:09', '2025-08-22 09:04:09', NULL),
(278, 'kain-hijau-fosil-829', 'Kain HIjau Fosil', 'S', 'K.22.022', 22, 2, '1755853480_b4335199bce3eb0654eb.png', '2025-08-22 09:04:40', '2025-08-22 09:04:40', NULL),
(279, 'kain-putih-fosil-914', 'Kain Putih Fosil', 'S', 'K.22.023', 22, 2, '1755853511_0168e81d2815b6d67aaa.png', '2025-08-22 09:05:11', '2025-08-22 09:05:11', NULL),
(280, 'kain-blue-sky-fosil-33', 'Kain Blue Sky Fosil', 'S', 'K.22.024', 22, 2, '1755853540_bc9d7b285e738f6a8654.png', '2025-08-22 09:05:40', '2025-08-22 09:06:39', NULL),
(281, 'kain-biru-fosil-623', 'Kain Biru Fosil ', 'S', 'K.22.025', 22, 2, '1755853583_94855bd0d4191cfa5062.png', '2025-08-22 09:06:23', '2025-08-22 09:06:23', NULL),
(282, 'kain-kuning-fosil-732', 'Kain Kuning Fosil', 'S', 'K.22.026', 22, 2, '1755853649_b8a3cba22725246e67b3.png', '2025-08-22 09:07:29', '2025-08-22 09:07:29', NULL),
(283, 'kain-pink-fosill-741', 'Kain Pink Fosill', 'S', 'K.22.027', 22, 2, '1755853688_df0ce49160a6fc7dbd45.png', '2025-08-22 09:08:08', '2025-08-22 09:08:08', NULL),
(284, 'kain-pink-muda-fosil-47', 'Kain Pink Muda Fosil', 'S', 'K.22.028', 22, 2, '1755853719_32ff98c78dcaf570c068.png', '2025-08-22 09:08:39', '2025-08-22 09:08:39', NULL),
(285, 'kain-pink-crh-fosil-293', 'Kain Pink Crh Fosil', 'S', 'K.22.029', 22, 2, NULL, '2025-08-22 09:09:29', '2025-08-22 09:09:29', NULL),
(286, 'kain-pink-muda-fosil-173', 'Kain Pink Muda Fosil', 'S', 'K.22.030', 22, 2, '1755853804_46435df7a05ca4732412.png', '2025-08-22 09:10:04', '2025-08-22 09:10:04', NULL),
(287, 'no-name-545', 'no name', 'S', 'K.22.031', 22, 2, '1755853833_61e24e3693140a0f65f4.png', '2025-08-22 09:10:33', '2025-08-22 09:10:33', NULL),
(288, 'kain-hitam-681', 'Kain HItam', 'S', 'K.22.032', 22, 2, '1755853862_91042c5317f010a48e9e.png', '2025-08-22 09:11:02', '2025-08-22 09:11:02', NULL),
(289, 'kain-hijau-crh-331', 'Kain HIjau Crh', 'S', 'K.22.033', 22, 2, '1755853940_655654ca8c7b169a8996.png', '2025-08-22 09:12:20', '2025-08-22 09:12:20', NULL),
(290, 'no-name-784', 'no name', 'S', 'K.22.034', 22, 2, '1755853967_c2f6b92f18345c06d0ae.png', '2025-08-22 09:12:47', '2025-08-22 09:12:47', NULL),
(291, 'kain-pink-38', 'Kain Pink', 'S', 'K.22.035', 22, 2, '1755853993_bfd4119aea373c4bafeb.png', '2025-08-22 09:13:13', '2025-08-22 09:13:13', NULL),
(292, 'kain-pink-428', 'Kain Pink', 'S', 'K.22.036', 22, 2, '1755854031_8025ef78385ef5618d5f.png', '2025-08-22 09:13:51', '2025-08-22 09:13:51', NULL),
(293, 'kain-merah-307', 'Kain Merah', 'S', 'K.22.037', 22, 2, '1755854139_d7479ea10380703fcb4e.png', '2025-08-22 09:15:39', '2025-08-22 09:15:39', NULL),
(294, 'kain-pink-370', 'Kain Pink', 'S', 'K.22.038', 22, 2, '1755854179_c3e3b0b3fe426043f667.png', '2025-08-22 09:16:19', '2025-08-22 09:16:19', NULL),
(295, 'no-name-235', 'no name', 'S', 'K.22.039', 22, 2, '1755854226_80b2616030ae39d5378e.png', '2025-08-22 09:17:06', '2025-08-22 09:17:06', NULL),
(296, 'kain-biru-760', 'Kain Biru', 'S', 'K.22.040', 22, 2, '1755854290_3c3df709d696dc8fe853.png', '2025-08-22 09:18:10', '2025-08-22 09:18:10', NULL),
(297, 'kain-gold-468', 'Kain Gold', 'S', 'K.22.041', 22, 2, '1755854330_60c5ef55f9886f17be72.png', '2025-08-22 09:18:50', '2025-08-22 09:18:50', NULL),
(298, 'kain-cream-399', 'Kain Cream', 'S', 'K.22.042', 22, 2, '1755854361_72274322ee1b72334607.png', '2025-08-22 09:19:21', '2025-08-22 09:19:21', NULL),
(299, 'selendang-nama-merah-putih-996', 'Selendang Nama Merah Putih', 'S', 'K.22.043', 22, 2, '1755854413_00b77f07c8c7e8441a34.png', '2025-08-22 09:20:13', '2025-08-22 09:20:13', NULL),
(300, 'selendang-hijau-etnic-447', 'Selendang HIjau Etnic', 'S', 'K.22.044', 22, 2, '1755854454_474a97f438d0b12ed3d6.png', '2025-08-22 09:20:54', '2025-08-22 09:20:54', NULL),
(301, 'kain-segitiga-merah-425', 'Kain Segitiga Merah', 'S', 'K.22.045', 22, 2, '1755854487_27024bf17a63676ff262.png', '2025-08-22 09:21:27', '2025-08-22 09:21:27', NULL),
(302, 'kain-segitiga-merah-maroon-375', 'Kain Segitiga Merah Maroon', 'S', 'K.22.046', 22, 2, '1755854522_a456178d41894e895525.png', '2025-08-22 09:22:02', '2025-08-22 09:22:02', NULL),
(303, 'kain-segitiga-kuning-159', 'Kain Segitiga Kuning', 'S', 'K.22.047', 22, 2, '1755854559_bc59d0d5fd73ccd31a4c.png', '2025-08-22 09:22:39', '2025-08-22 09:22:39', NULL),
(304, 'kain-segitiga-pink-987', 'Kain Segitiga Pink', 'S', 'K.22.048', 22, 2, '1755854590_49e4abffa00e49bc6109.png', '2025-08-22 09:23:10', '2025-08-22 09:23:10', NULL),
(305, 'kain-segitiga-hijau-488', 'Kain Segitiga HIjau', 'S', 'K.22.049', 22, 2, '1755854625_1e036ddbbcc619412ab6.png', '2025-08-22 09:23:45', '2025-08-22 09:23:45', NULL),
(306, 'kain-pink-63', 'Kain Pink', 'S', 'K.22.050', 22, 2, '1755854654_e6b62531c95de9f95a96.png', '2025-08-22 09:24:14', '2025-08-22 09:24:14', NULL),
(307, 'kain-silver-503', 'Kain Silver', 'S', 'K.22.051', 22, 2, '1755854684_ef9c66ef737c8aaf5003.png', '2025-08-22 09:24:44', '2025-08-22 09:24:44', NULL),
(308, 'sarung-merah-etnic-230', 'Sarung Merah Etnic', 'S', 'K.23.001', 23, 2, '1755915945_6c2af4fd07f96d4705b6.png', '2025-08-23 02:25:45', '2025-08-23 02:25:45', NULL),
(309, 'sarung-maroon-etnic-607', 'Sarung Maroon Etnic', 'S', 'K.23.002', 23, 2, '1755915984_e01850aa954e849ca5f2.png', '2025-08-23 02:26:24', '2025-08-23 02:26:24', NULL),
(310, 'selendang-merah-etnic-863', 'Selendang Merah Etnic', 'S', 'K.23.003', 23, 2, '1755916014_a2a75d3897d215838bac.png', '2025-08-23 02:26:54', '2025-08-23 02:26:54', NULL),
(311, 'kaos-merah-945', 'Kaos Merah', 'S', 'K.23.004', 23, 2, '1755916048_50dfa027b24790ac71b1.png', '2025-08-23 02:27:28', '2025-08-23 02:27:28', NULL),
(312, 'kaos-coklat-singlet-221', 'Kaos Coklat Singlet', 'S', 'K.24.001', 24, 2, '1755916100_24515ee36b9513be0036.png', '2025-08-23 02:28:20', '2025-08-23 02:28:20', NULL),
(313, 'kemeja-maroon-putih-336', 'Kemeja Maroon Putih', 'S', 'K.24.002', 24, 2, '1755916150_bc7e1082dc97ba6b3133.png', '2025-08-23 02:29:10', '2025-08-23 02:29:10', NULL),
(314, 'celana-maroon-coklat-358', 'Celana Maroon Coklat', 'S', 'K.24.003', 24, 2, '1755916188_087d13eaa81399ac57f9.png', '2025-08-23 02:29:48', '2025-08-23 02:29:48', NULL),
(315, 'selendang-merah-gold-etnic-881', 'Selendang Merah Gold Etnic', 'S', 'K.25.001', 25, 2, '1755916237_3478db339533e9c05c5e.png', '2025-08-23 02:30:37', '2025-08-23 02:30:37', NULL),
(316, 'selendang-merah-gold-etnic-67', 'Selendang Merah Gold Etnic', 'M', 'K.25.002', 25, 2, '1755916279_83f048058c2b03ddb0ec.png', '2025-08-23 02:31:19', '2025-08-23 02:31:19', NULL),
(317, 'sarung-gold-merah-377', 'Sarung Gold Merah', 'S', 'K.25.003', 25, 2, '1755916324_beb76666c45ff20e8fa7.png', '2025-08-23 02:32:04', '2025-08-23 02:32:04', NULL),
(318, 'sarung-gold-merah-5', 'Sarung Gold Merah', 'M', 'K.25.004', 25, 2, '1755916358_748bfb567cad8b509cb4.png', '2025-08-23 02:32:38', '2025-08-23 02:32:38', NULL),
(319, 'selendang-gold-black-685', 'Selendang Gold Black', 'S', 'K.25.005', 25, 2, '1755916395_ccb71c29a04010e0d4d7.png', '2025-08-23 02:33:15', '2025-08-23 02:33:15', NULL),
(320, 'sarung-gold-black-588', 'Sarung Gold Black', 'S', 'K.25.006', 25, 2, '1755916428_bfa99eb9fe5f00f47337.png', '2025-08-23 02:33:48', '2025-08-23 02:33:48', NULL),
(321, 'sarung-pink-gold-469', 'Sarung Pink Gold', 'S', 'K.25.007', 25, 2, '1755916478_2342afe1f2a1255f8113.png', '2025-08-23 02:34:38', '2025-08-23 02:34:38', NULL),
(322, 'sarung-pink-gold-261', 'Sarung Pink Gold', 'M', 'K.25.008', 25, 2, '1755916512_ed8f0969c25f30e42866.png', '2025-08-23 02:35:12', '2025-08-23 02:35:12', NULL),
(323, 'sarung-ungu-gold-224', 'Sarung Ungu Gold ', 'S', 'K.26.001', 26, 2, '1755916582_ddbad5da2055a583d552.png', '2025-08-23 02:36:22', '2025-08-23 02:36:22', NULL),
(324, 'selendang-ungu-gold-531', 'Selendang Ungu Gold', 'S', 'K.26.002', 26, 2, '1755916620_d26a42b8f54bc2153cc9.png', '2025-08-23 02:37:00', '2025-08-23 02:37:00', NULL),
(325, 'no-name-984', 'no name', 'S', 'K.26.003', 26, 2, '1755916661_d4209eb3d9d8592e6f09.png', '2025-08-23 02:37:41', '2025-08-23 02:37:41', NULL),
(326, 'no-name-533', 'no name', 'S', 'K.26.004', 26, 2, '1755916679_8b22f35c4a11571ea774.png', '2025-08-23 02:37:59', '2025-08-23 02:37:59', NULL),
(327, 'selendang-oren-gold-112', 'Selendang Oren Gold', 'S', 'K.26.005', 26, 2, '1755916717_9ab7102b8de933da975e.png', '2025-08-23 02:38:37', '2025-08-23 02:38:37', NULL),
(328, 'sarung-oren-gold-552', 'Sarung Oren Gold', 'S', 'K.26.006', 26, 2, '1755916752_9622f7db36c5e0e8240a.png', '2025-08-23 02:39:12', '2025-08-23 02:39:12', NULL),
(329, 'sarung-navy-garis-kuning-793', 'Sarung Navy Garis Kuning', 'S', 'K.26.007', 26, 2, '1755916802_4b35766a7cc0a93b23e8.png', '2025-08-23 02:40:02', '2025-08-23 02:40:02', NULL),
(330, 'sarung-ungu-garis-gold-337', 'Sarung Ungu Garis Gold', 'S', 'K.26.008', 26, 2, '1755916835_6081cba974e31ff79751.png', '2025-08-23 02:40:35', '2025-08-23 02:40:35', NULL),
(331, 'sarung-flower-biru-708', 'Sarung Flower Biru', 'S', 'K.26.009', 26, 2, '1755916926_27183bc8bb2d7c8ba55c.png', '2025-08-23 02:42:06', '2025-08-23 02:42:06', NULL),
(332, 'sarung-flower-hijau-916', 'Sarung Flower Hijau', 'S', 'K.26.010', 26, 2, '1755916964_39dbbc2c308087318465.png', '2025-08-23 02:42:44', '2025-08-23 02:42:44', NULL),
(333, 'sarung-flower-pink-949', 'Sarung Flower Pink', 'S', 'K.26.011', 26, 2, '1755916998_8a7f44ef1c2922c640c7.png', '2025-08-23 02:43:18', '2025-08-23 02:43:18', NULL),
(334, 'sarung-flower-oren-863', 'Sarung Flower Oren', 'S', 'K.26.012', 26, 2, '1755917033_6e8b981e8a011741eb6a.png', '2025-08-23 02:43:53', '2025-08-23 02:43:53', NULL),
(335, 'rok-flower-pink-371', 'Rok Flower Pink', 'S', 'K.26.013', 26, 2, '1755917136_8df2ef3703213e17a370.png', '2025-08-23 02:45:36', '2025-08-23 02:45:36', NULL),
(336, 'sarung-pink-muda-864', 'Sarung Pink Muda', 'S', 'K.26.014', 26, 2, '1755917172_4d43b44334ee732be0db.png', '2025-08-23 02:46:12', '2025-08-23 02:46:12', NULL),
(337, 'sarung-lylac-etnic-277', 'Sarung Lylac Etnic', 'S', 'K.26.015', 26, 2, '1755917208_03d800d2545577e5a8c6.png', '2025-08-23 02:46:48', '2025-08-23 02:46:48', NULL),
(338, 'rok-flower-black-170', 'Rok Flower Black', 'S', 'K.27.001', 27, 2, '1755917289_ada79625210efa956a49.png', '2025-08-23 02:48:09', '2025-08-23 02:48:09', NULL),
(339, 'sarung-flower-black-47', 'Sarung Flower Black', 'S', 'K.27.002', 27, 2, '1755917324_e3af69df014b8bf90bbf.png', '2025-08-23 02:48:44', '2025-08-23 02:48:44', NULL),
(340, 'baju-payet-kuning-724', 'Baju Payet Kuning', 'S', 'K.27.003', 27, 2, '1755917368_cb1ff335ee95676e940f.png', '2025-08-23 02:49:28', '2025-08-23 02:49:28', NULL),
(341, 'korset-putih-741', 'Korset Putih', 'S', 'K.27.004', 27, 2, '1755917408_5bc6048956190a11668c.png', '2025-08-23 02:50:08', '2025-08-23 02:50:08', NULL),
(342, 'baju-pink-transparan-842', 'Baju Pink Transparan', 'S', 'K.27.005', 27, 2, '1755917520_28ce44f28a4e3cf88cbe.png', '2025-08-23 02:52:00', '2025-08-23 02:52:00', NULL),
(343, 'baju-hijau-transparan-490', 'Baju Hijau Transparan', 'S', 'K.27.006', 27, 2, '1755917553_5a745269be6f062dc202.png', '2025-08-23 02:52:33', '2025-08-23 02:52:33', NULL);
INSERT INTO `books` (`id`, `slug`, `title`, `author`, `publisher`, `rack_id`, `category_id`, `book_cover`, `created_at`, `updated_at`, `deleted_at`) VALUES
(344, 'rompi-hijau-transaparan-740', 'Rompi Hijau Transaparan', 'S', 'K.27.007', 27, 2, '1755917587_4c7399f7d7a0c59c026f.png', '2025-08-23 02:53:07', '2025-08-23 02:53:07', NULL),
(345, 'celana-hijau-transparan-900', 'Celana Hijau Transparan', 'S', 'K.27.008', 27, 2, '1755917682_7f009289292243236bb4.png', '2025-08-23 02:54:42', '2025-08-23 02:54:42', NULL),
(346, 'celana-kuning-transaparan-190', 'Celana Kuning Transaparan', 'S', 'K.27.009', 27, 2, '1755917716_30e15fde1a64224e5be3.png', '2025-08-23 02:55:16', '2025-08-23 02:55:16', NULL),
(347, 'celana-putih-transaparan-709', 'Celana Putih Transaparan', 'S', 'K.27.010', 27, 2, '1755917763_6aa669f9489ab78934bb.png', '2025-08-23 02:56:03', '2025-08-23 02:56:03', NULL),
(348, 'rok-hitam-231', 'Rok Hitam', 'S', 'K.27.011', 27, 2, '1755917792_3fe6fc02e957910ab09c.png', '2025-08-23 02:56:32', '2025-08-23 02:56:32', NULL),
(349, 'rok-ungu-709', 'Rok Ungu', 'S', 'K.27.012', 27, 2, '1755917823_e5463379fc6049a5f9fa.png', '2025-08-23 02:57:03', '2025-08-23 02:57:03', NULL),
(350, 'rok-pink-733', 'Rok Pink', 'S', 'K.27.013', 27, 2, '1755917860_edc4928490535f37820b.png', '2025-08-23 02:57:40', '2025-08-23 02:57:40', NULL),
(351, 'rok-magenta-286', 'Rok Magenta', 'S', 'K.27.014', 27, 2, '1755917899_102d01a3c20d67a6d088.png', '2025-08-23 02:58:19', '2025-08-23 02:58:19', NULL),
(352, 'selendang-flower-black-88', 'Selendang Flower Black', 'S', 'K.27.015', 27, 2, '1755917932_d9f856ef27a356f6b31a.png', '2025-08-23 02:58:52', '2025-08-23 02:58:52', NULL),
(353, 'kemeja-belang-618', 'Kemeja Belang', 'S', 'K.28.001', 28, 2, '1755918065_8920097ad00f943b21b3.png', '2025-08-23 03:01:05', '2025-08-23 03:01:05', NULL),
(354, 'kebaya-merah-6', 'Kebaya Merah', 'S', 'K.28.002', 28, 2, '1755918092_9e970907c52017e09d25.png', '2025-08-23 03:01:32', '2025-08-23 03:01:32', NULL),
(355, 'rok-merah-flower-382', 'Rok Merah Flower', 'S', 'K.28.003', 28, 2, '1755918126_3bb8a518c6a2f342d09f.png', '2025-08-23 03:02:06', '2025-08-23 03:02:06', NULL),
(356, 'rok-belang-727', 'Rok Belang', 'S', 'K.28.004', 28, 2, '1755918156_b28dc61c364ed83cb508.png', '2025-08-23 03:02:36', '2025-08-23 03:02:36', NULL),
(357, 'jaket-coklat-226', 'Jaket Coklat', 'S', 'K.28.005', 28, 2, '1755918192_4ebb0a2d511522e44f9d.png', '2025-08-23 03:03:12', '2025-08-23 03:03:12', NULL),
(358, 'kemeja-putih-transaparan-573', 'Kemeja Putih Transaparan', 'S', 'K.28.006', 28, 2, '1755918235_aa7588f31e79f47e9b50.png', '2025-08-23 03:03:55', '2025-08-23 03:03:55', NULL),
(359, 'baju-navy-659', 'Baju Navy', 'S', 'K.28.007', 28, 2, '1755918272_e9b73273e26e60d9b8c8.png', '2025-08-23 03:04:32', '2025-08-23 03:04:32', NULL),
(360, 'kemeja-hitam-646', 'Kemeja Hitam', 'S', 'K.28.008', 28, 2, '1755918305_57a9a1f3dd5fc22f56ac.png', '2025-08-23 03:05:05', '2025-08-23 03:05:05', NULL),
(361, 'afron-kuning-823', 'Afron Kuning', 'S', 'K.28.009', 28, 2, '1755918337_3249b4340c902df80e6a.png', '2025-08-23 03:05:37', '2025-08-23 03:05:37', NULL),
(362, 'celana-biru-848', 'Celana Biru', 'S', 'K.28.010', 28, 2, '1755918378_41a86723ac104884fdf5.png', '2025-08-23 03:06:18', '2025-08-23 03:06:18', NULL),
(363, 'kemeja-kuning-797', 'Kemeja Kuning', 'S', 'K.28.011', 28, 2, '1755918421_69f0cb2f25244c31949b.png', '2025-08-23 03:07:01', '2025-08-23 03:07:01', NULL),
(364, 'kemeja-pink-putih-423', 'Kemeja Pink Putih', 'S', 'K.28.012', 28, 2, '1755918451_896d73a2b8e909833e98.png', '2025-08-23 03:07:31', '2025-08-23 03:07:31', NULL),
(365, 'baju-kuning-biru-787', 'Baju Kuning Biru', 'S', 'K.28.013', 28, 2, '1755918487_fbee026d6ed04ffc407f.png', '2025-08-23 03:08:07', '2025-08-23 03:08:07', NULL),
(366, 'baju-cream-biru-533', 'Baju Cream Biru', 'S', 'K.28.014', 28, 2, '1755918517_820e8d34d52a8c738405.png', '2025-08-23 03:08:37', '2025-08-23 03:08:37', NULL),
(367, 'baju-kuning-oren-980', 'Baju Kuning Oren', 'S', 'K.28.015', 28, 2, '1755918554_b689c8ac944f7c715345.png', '2025-08-23 03:09:14', '2025-08-23 03:09:14', NULL),
(368, 'baju-maroon-190', 'Baju Maroon', 'S', 'K.28.016', 28, 2, '1755918580_46c4389899e1937f911d.png', '2025-08-23 03:09:40', '2025-08-23 03:09:40', NULL),
(369, 'kain-hitam-408', 'Kain Hitam', 'S', 'K.28.017', 28, 2, '1755918621_966709d31b621741b447.png', '2025-08-23 03:10:21', '2025-08-23 03:10:21', NULL),
(370, 'selandang-hitam-etnic-98', 'Selandang Hitam Etnic', 'S', 'K.28.018', 28, 2, '1755918654_9faf5f4da3b53d25f9e5.png', '2025-08-23 03:10:54', '2025-08-23 03:10:54', NULL),
(371, 'korset-maroon-815', 'Korset Maroon', 'S', 'K.28.019', 28, 2, '1755918688_ff7e4e0a01176f7fb602.png', '2025-08-23 03:11:28', '2025-08-23 03:11:28', NULL),
(372, 'korsert-pink-984', 'Korsert Pink', 'S', 'K.28.020', 28, 2, '1755918720_b736da99673811a1d149.png', '2025-08-23 03:12:00', '2025-08-23 03:12:00', NULL),
(373, 'korset-silver-972', 'Korset Silver', 'S', 'K.28.021', 28, 2, '1755918754_08ca6595ed69c5d4962c.png', '2025-08-23 03:12:34', '2025-08-23 03:12:34', NULL),
(374, 'baju-batik-tosca-529', 'Baju Batik Tosca', 'S', 'K.28.022', 28, 2, '1755918784_ed9cfcdf013643bda9c9.png', '2025-08-23 03:13:04', '2025-08-23 03:13:04', NULL),
(375, 'baju-batik-merah-479', 'Baju Batik Merah', 'S', 'K.28.023', 28, 2, '1755918814_22f99060b368bea0d91e.png', '2025-08-23 03:13:34', '2025-08-23 03:13:34', NULL),
(376, 'kemeja-coklat-53', 'Kemeja Coklat', 'S', 'K.28.024', 28, 2, '1755918852_c2eb583abd1b12a4c315.png', '2025-08-23 03:14:12', '2025-08-23 03:14:12', NULL),
(377, 'baju-oren-kuning-67', 'Baju Oren Kuning', 'S', 'K.28.025', 28, 2, '1755918884_9a61713ac86dbac10c24.png', '2025-08-23 03:14:44', '2025-08-23 03:14:44', NULL),
(378, 'kemeja-hijau-594', 'Kemeja Hijau', 'S', 'K.28.026', 28, 2, '1755918913_b0147c555d58468adc13.png', '2025-08-23 03:15:13', '2025-08-23 03:15:13', NULL),
(379, 'kemeja-putih-perca-787', 'Kemeja Putih Perca', 'S', 'K.28.027', 28, 2, '1755918961_dd2fba8d1cc96fd1a11b.png', '2025-08-23 03:16:01', '2025-08-23 03:16:01', NULL),
(380, 'outer-payet-coklat-837', 'Outer Payet Coklat', 'S', 'K.28.028', 28, 2, '1755918998_76f03e60c5fc550a8941.png', '2025-08-23 03:16:38', '2025-08-23 03:16:38', NULL),
(381, 'rok-maroon-696', 'Rok Maroon', 'S', 'K.28.029', 28, 2, '1755919044_9b5fea2cbcdfab073d36.png', '2025-08-23 03:17:24', '2025-08-23 03:17:24', NULL),
(382, 'rok-biru-112', 'Rok Biru', 'S', 'K.28.030', 28, 2, '1755919083_5a3296c13a1db54635b2.png', '2025-08-23 03:18:03', '2025-08-23 03:18:03', NULL),
(383, 'rok-hitam-218', 'Rok HItam', 'S', 'K.28.031', 28, 2, '1755919183_a0a6651977a4bed1c18e.png', '2025-08-23 03:19:43', '2025-08-23 03:19:43', NULL),
(384, 'rok-pink-985', 'Rok Pink', 'S', 'K.28.032', 28, 2, '1755919212_698535d3c4e56df21c36.png', '2025-08-23 03:20:12', '2025-08-23 03:20:12', NULL),
(385, 'selendang-kuning-638', 'Selendang Kuning', 'S', 'K.28.033', 28, 2, '1755919244_1303a1044d54c2f22949.png', '2025-08-23 03:20:44', '2025-08-23 03:20:44', NULL),
(386, 'baju-abu-tua-954', 'Baju Abu Tua', 'S', 'K.28.034', 28, 2, '1755919279_ac4f74fffaf2f1c738f6.png', '2025-08-23 03:21:19', '2025-08-23 03:21:19', NULL),
(387, 'baju-lylac-446', 'Baju Lylac', 'S', 'K.28.035', 28, 2, '1755919307_dc0267a777a5444fbb60.png', '2025-08-23 03:21:47', '2025-08-23 03:21:47', NULL),
(388, 'kain-cream-875', 'Kain Cream', 'S', 'K.29.001', 29, 2, '1755919476_92f75e41d05cfa91e793.png', '2025-08-23 03:24:36', '2025-08-23 03:25:24', NULL),
(389, 'kain-merah-824', 'Kain Merah', 'S', 'K.29.002', 29, 2, '1755919515_c18ea8e594f0c9163e99.png', '2025-08-23 03:25:15', '2025-08-23 03:25:15', NULL),
(390, 'dua-kain-pink-791', 'Dua Kain Pink', 'S', 'K.29.003', 29, 2, '1755919585_327aae34591256138b36.png', '2025-08-23 03:26:25', '2025-08-23 03:26:25', NULL),
(391, 'dua-kain-ungu-460', 'Dua Kain Ungu', 'S', 'K.29.004', 29, 2, '1755919630_417be40ec19533d527e1.png', '2025-08-23 03:27:10', '2025-08-23 03:27:10', NULL),
(392, 'selendang-gold-659', 'Selendang Gold', 'S', 'K.29.005', 29, 2, '1756177035_443c3edd56c02645d501.png', '2025-08-26 02:57:15', '2025-08-26 02:57:15', NULL),
(393, 'selendang-pink-473', 'Selendang Pink', 'S', 'K.29.006', 29, 2, '1756177110_6b0a6cf95e76f51a66a1.png', '2025-08-26 02:58:30', '2025-08-26 02:58:30', NULL),
(394, 'selendang-transparan-974', 'Selendang Transparan', 'S', 'K.29.007', 29, 2, '1756177687_1817fa251cd322c337c1.png', '2025-08-26 03:08:07', '2025-08-26 03:08:07', NULL),
(395, 'celana-pink-193', 'Celana Pink', 'S', 'K.29.008', 29, 2, '1756177728_b1155c34192526a735f2.png', '2025-08-26 03:08:48', '2025-08-26 03:08:48', NULL),
(396, 'celana-pink-muda-790', 'Celana Pink Muda', 'S', 'K.29.009', 29, 2, '1756177761_f27cd27791a935635c23.png', '2025-08-26 03:09:21', '2025-08-26 03:09:21', NULL),
(397, 'celana-ungu-756', 'Celana Ungu', 'S', 'K.29.010', 29, 2, '1756177799_804e1994b8c6929efaaa.png', '2025-08-26 03:09:59', '2025-08-26 03:09:59', NULL),
(398, 'sarung-batik-coklat-14', 'Sarung Batik Coklat', 'S', 'K.29.011', 29, 2, '1756177840_0461048cb1dfa29be9bb.png', '2025-08-26 03:10:40', '2025-08-26 03:10:40', NULL),
(399, 'kain-ungu-180', 'Kain Ungu', 'S', 'K.29.012', 29, 2, '1756177874_04d4bf7fa440238d0078.png', '2025-08-26 03:11:14', '2025-08-26 03:11:14', NULL),
(400, 'kain-batik-7-674', 'Kain Batik 7', 'S', 'K.29.013', 29, 2, '1756177920_ea5ec061ecb7ec933ed6.png', '2025-08-26 03:12:00', '2025-08-26 03:12:00', NULL),
(401, 'kain-shimer-6-412', 'Kain Shimer 6', 'S', 'K.29.014', 29, 2, '1756177964_17ad3484ebf7e44cbec4.png', '2025-08-26 03:12:44', '2025-08-26 03:12:44', NULL),
(402, 'kain-ungu-hijau-844', 'Kain Ungu Hijau', 'S', 'K.29.015', 29, 2, '1756178000_e9fbc18c3dba1aae76d6.png', '2025-08-26 03:13:20', '2025-08-26 03:13:20', NULL),
(403, 'kain-gold-376', 'Kain Gold', 'S', 'K.29.016', 29, 2, '1756178033_7ee5abad4851efc80448.png', '2025-08-26 03:13:53', '2025-08-26 03:13:53', NULL),
(404, 'baju-etnic-maroon-362', 'Baju Etnic Maroon', 'S', 'K.29.017', 29, 2, '1756178072_b09e7e592f60ac91ed5c.png', '2025-08-26 03:14:32', '2025-08-26 03:14:32', NULL),
(405, 'batik-maroon-3-365', 'Batik Maroon 3', 'S', 'K.29.018', 29, 2, '1756178116_c8246ab6db22834c26d4.png', '2025-08-26 03:15:16', '2025-08-26 03:15:16', NULL),
(406, 'kain-batik-7-867', 'Kain Batik 7', 'M', 'K.29.019', 29, 2, '1756178157_c5cf3d04186d109d95d2.png', '2025-08-26 03:15:57', '2025-08-26 03:15:57', NULL),
(407, 'baju-etnic-merah-634', 'Baju Etnic Merah', 'S', 'K.29.020', 29, 2, '1756178196_2b4e60af62e9de2c98ec.png', '2025-08-26 03:16:36', '2025-08-26 03:16:36', NULL),
(408, 'baju-etnic-biru-599', 'Baju Etnic Biru', 'S', 'K.29.021', 29, 2, '1756178363_4b32709c162e7ae259c0.png', '2025-08-26 03:19:23', '2025-08-26 03:19:23', NULL),
(409, 'baju-gold-835', 'Baju Gold', 'S', 'K.29.023', 29, 2, '1756178450_60100f6709cfd161336d.png', '2025-08-26 03:19:59', '2025-08-26 03:21:41', '2025-08-26 03:21:41'),
(410, 'baju-etnic-biru-659', 'Baju Etnic Biru', 'M', 'K.29.022', 29, 2, '1756178483_7e14892cd4b8d9270aa7.png', '2025-08-26 03:21:23', '2025-08-26 03:21:23', NULL),
(411, 'baju-gold-473', 'Baju Gold ', 'S', 'K.29.023', 29, 2, '1756178528_2725ed7ed15f95c37a09.png', '2025-08-26 03:22:08', '2025-08-26 03:22:08', NULL),
(412, 'rok-gold-998', 'Rok Gold', 'S', 'K.29.024', 29, 2, '1756178566_70dc1cef9df9d8f20cce.png', '2025-08-26 03:22:46', '2025-08-26 03:22:46', NULL),
(413, 'batik-oren-merah-689', 'Batik Oren Merah', 'S', 'K.29.025', 29, 2, '1756178606_cac6431b365a9346c73a.png', '2025-08-26 03:23:26', '2025-08-26 03:23:26', NULL),
(414, 'kain-ungu-496', 'Kain Ungu', 'S', 'K.29.026', 29, 2, '1756178638_e0aaec691b3bd731eb60.png', '2025-08-26 03:23:58', '2025-08-26 03:23:58', NULL),
(415, 'selendang-maroon-etnic-539', 'Selendang Maroon Etnic', 'S', 'K.29.027', 29, 2, '1756178672_da4b297c9ae78181eda8.png', '2025-08-26 03:24:32', '2025-08-26 03:24:32', NULL),
(416, 'kain-biru-navy-926', 'Kain Biru Navy', 'S', 'K.30.001', 30, 2, '1756183893_b2f89c92c4be72ef66e4.png', '2025-08-26 04:51:33', '2025-08-26 04:51:33', NULL),
(417, 'ikat-coklat-2-13', 'Ikat Coklat 2', 'S', 'K.30.002', 30, 2, '1756183930_ef68bd1b494d157d994b.png', '2025-08-26 04:52:10', '2025-08-26 04:52:10', NULL),
(418, 'selendang-coklat-muda-32', 'Selendang Coklat Muda', 'S', 'K.30.003', 30, 2, '1756183965_ca791db44f93ff1b419f.png', '2025-08-26 04:52:45', '2025-08-26 04:52:45', NULL),
(419, 'ikat-hitam-770', 'Ikat Hitam', 'S', 'K.30.004', 30, 2, '1756184006_683d27caab51dd06b57a.png', '2025-08-26 04:53:26', '2025-08-26 04:53:26', NULL),
(420, 'ikat-merah-370', 'Ikat Merah', 'S', 'K.30.005', 30, 2, '1756184041_15589511efcbfb9b05d2.png', '2025-08-26 04:54:01', '2025-08-26 04:54:01', NULL),
(421, 'ikat-5-warna-791', 'Ikat 5 Warna', 'S', 'K.30.006', 30, 2, '1756184074_1002d96ea3ef2597eb2a.png', '2025-08-26 04:54:34', '2025-08-26 04:54:34', NULL),
(422, 'baju-oren-632', 'Baju Oren', 'S', 'K.30.007', 30, 2, '1756184108_4216d9b7219feac376a0.png', '2025-08-26 04:55:08', '2025-08-26 04:55:08', NULL),
(423, 'celana-silver-475', 'Celana Silver', 'S', 'K.30.008', 30, 2, '1756184138_609c57baa2dc82717ff0.png', '2025-08-26 04:55:38', '2025-08-26 04:55:38', NULL),
(424, 'celana-hitam-920', 'Celana HItam', 'S', 'K.30.009', 30, 2, '1756184169_dcf75c11531306660e2c.png', '2025-08-26 04:56:09', '2025-08-26 04:56:09', NULL),
(425, 'celana-abu-491', 'Celana Abu', 'S', 'K.30.010', 30, 2, '1756184201_a7681a40a95382418473.png', '2025-08-26 04:56:41', '2025-08-26 04:56:41', NULL),
(426, 'no-name-418', 'no name', 'S', 'K.30.011', 30, 2, '1756184327_8c813534d7277c269131.png', '2025-08-26 04:58:47', '2025-08-26 04:58:47', NULL),
(427, 'no-name-155', 'no name', 'S', 'K.30.012', 30, 2, '1756184350_f2bcfe81d692fe0ff778.png', '2025-08-26 04:59:10', '2025-08-26 04:59:10', NULL),
(428, 'kain-batik-3-352', 'Kain Batik 3', 'S', 'K.30.013', 30, 2, '1756188886_f4c5fd965f5afaa8cb01.png', '2025-08-26 06:14:46', '2025-08-26 06:14:46', NULL),
(429, 'kain-batik-4-669', 'Kain Batik 4', 'S', 'K.30.014', 30, 2, '1756188921_0510148587cab8040bbe.png', '2025-08-26 06:15:21', '2025-08-26 06:15:21', NULL),
(430, 'korset-pink-684', 'Korset Pink', 'S', 'K.30.015', 30, 2, '1756188952_ced554f497b72855c902.png', '2025-08-26 06:15:52', '2025-08-26 06:15:52', NULL),
(431, 'batik-coklat-2-218', 'Batik Coklat 2', 'S', 'K.30.016', 30, 2, '1756188983_1f7845ef1f1156b342b2.png', '2025-08-26 06:16:23', '2025-08-26 06:16:23', NULL),
(432, 'kain-maroon-musik-42', 'Kain Maroon Musik', 'S', 'K.30.017', 30, 2, '1756189021_7af46feb36bd141ee96b.png', '2025-08-26 06:17:01', '2025-08-26 06:17:01', NULL),
(433, 'kain-pink-615', 'Kain Pink', 'S', 'K.30.018', 30, 2, '1756189055_1125b1d8a170d5bd6603.png', '2025-08-26 06:17:35', '2025-08-26 06:17:35', NULL),
(434, 'kain-hijau-blink-579', 'Kain HIjau Blink', 'S', 'K.30.019', 30, 2, '1756189094_02f9d73a164f524a1480.png', '2025-08-26 06:18:14', '2025-08-26 06:18:14', NULL),
(435, 'rumbay-gold-613', 'Rumbay Gold', 'S', 'K.30.020', 30, 2, '1756189128_e2764f4d21dffed9bbd2.png', '2025-08-26 06:18:48', '2025-08-26 06:18:48', NULL),
(436, 'no-name-311', 'no name', 'S', 'K.30.021', 30, 2, '1756189158_49ab5b4d69b413251674.png', '2025-08-26 06:19:18', '2025-08-26 06:19:18', NULL),
(437, 'aksesoris-gold-cc-477', 'Aksesoris Gold CC', 'S', 'K.30.022', 30, 2, '1756189206_109d82a02a0d37051968.png', '2025-08-26 06:20:06', '2025-08-26 06:20:06', NULL),
(438, 'batik-hitam-emas-530', 'Batik Hitam Emas', 'S', 'K.30.023', 30, 2, '1756189247_3e15aa6b3b5f6b9cda15.png', '2025-08-26 06:20:47', '2025-08-26 06:20:47', NULL),
(439, 'kain-merah-bulu-346', 'Kain Merah Bulu', 'S', 'K.30.024', 30, 2, '1756189286_10a0d2ece92f22abc58e.png', '2025-08-26 06:21:26', '2025-08-26 06:21:26', NULL),
(440, 'kain-biru-888', 'Kain Biru', 'S', 'K.30.025', 30, 2, '1756189320_da290110ae304e558623.png', '2025-08-26 06:22:00', '2025-08-26 06:22:00', NULL),
(441, 'kaos-putih-goes-449', 'Kaos Putih Goes', 'S', 'K.30.026', 30, 2, '1756189351_759b52b91a186b241983.png', '2025-08-26 06:22:31', '2025-08-26 06:22:31', NULL),
(442, 'kaos-hitam-jco-491', 'Kaos HItam JCO', 'S', 'K.30.027', 30, 2, '1756189379_3775cdc67c06ccfc2426.png', '2025-08-26 06:22:59', '2025-08-26 06:22:59', NULL),
(443, 'kaos-kuning-jco-620', 'Kaos Kuning JCO', 'S', 'K.30.028', 30, 2, '1756189411_40333e95ef0450d8dfef.png', '2025-08-26 06:23:31', '2025-08-26 06:23:31', NULL),
(444, 'ikat-putih-275', 'Ikat Putih', 'S', 'K.31.001', 31, 2, '1756191070_f1953852097c9a134d73.png', '2025-08-26 06:51:10', '2025-08-26 06:51:10', NULL),
(445, 'kain-putih-494', 'Kain Putih', 'L', 'K.31.002', 31, 2, '1756191104_c2f6462e726a6b172ea5.png', '2025-08-26 06:51:44', '2025-08-26 06:51:44', NULL),
(446, 'kain-hitam-622', 'Kain Hitam', 'L', 'K.31.003', 31, 2, '1756191136_5768495001f66c432482.png', '2025-08-26 06:52:16', '2025-08-26 06:52:16', NULL),
(447, 'kain-gold-936', 'Kain Gold', 'S', 'K.32.001', 32, 2, '1756191595_ea63fdcc65ed70297abd.png', '2025-08-26 06:59:55', '2025-08-26 06:59:55', NULL),
(448, 'kain-hijau-flower-210', 'Kain HIjau Flower', 'S', 'K.32.002', 32, 2, '1756191642_c8800dffae179dc87a63.png', '2025-08-26 07:00:42', '2025-08-26 07:00:42', NULL),
(449, 'kain-biru-961', 'Kain Biru', 'L', 'K.32.003', 32, 2, '1756191675_e9a5d80654a72d3972f2.png', '2025-08-26 07:01:15', '2025-08-26 07:01:15', NULL),
(450, 'no-name-242', 'no name', 'S', 'K.32.004', 32, 2, '1756191705_eced5bdc357a95c37010.png', '2025-08-26 07:01:45', '2025-08-26 07:01:45', NULL),
(451, 'kain-cyan-238', 'Kain Cyan', 'S', 'K.32.005', 32, 2, '1756262590_6ae586cdc842761c6eeb.png', '2025-08-27 02:43:10', '2025-08-27 02:43:10', NULL),
(452, 'kain-merah-172', 'Kain Merah', 'S', 'K.32.006', 32, 2, '1756262627_12c3c084300da471f363.png', '2025-08-27 02:43:47', '2025-08-27 02:43:47', NULL),
(453, 'kain-brown-973', 'Kain Brown', 'S', 'K.32.007', 32, 2, '1756262659_8d9f86c8dfc6bde0dbfc.png', '2025-08-27 02:44:19', '2025-08-27 02:44:19', NULL),
(454, 'kain-gold-723', 'Kain Gold', 'S', 'K.32.008', 32, 2, '1756262693_447ad214f2f6f7fef8a6.png', '2025-08-27 02:44:53', '2025-08-27 02:44:53', NULL),
(455, 'kain-batik-5-46', 'Kain Batik 5', 'S', 'K.32.009', 32, 2, '1756262732_8f0341d36d201243764d.png', '2025-08-27 02:45:32', '2025-08-27 02:45:32', NULL),
(456, 'no-name-552', 'no name', 'S', 'K.32.010', 32, 2, '1756262807_082ba4580361708c3676.png', '2025-08-27 02:46:47', '2025-08-27 02:46:47', NULL),
(457, 'batik-merah-732', 'Batik Merah', 'S', 'K.32.011', 32, 2, '1756262839_7594f50fa4e993ee043f.png', '2025-08-27 02:47:19', '2025-08-27 02:47:19', NULL),
(458, 'batik-pink-723', 'Batik Pink', 'S', 'K.32.012', 32, 2, '1756262912_76f36bed62454ae92c7a.png', '2025-08-27 02:48:32', '2025-08-27 02:48:32', NULL),
(459, 'kain-merah-66', 'Kain Merah', 'S', 'K.32.013', 32, 2, '1756262985_b370daf80d0aa7463085.png', '2025-08-27 02:49:45', '2025-08-27 02:49:45', NULL),
(460, 'kain-silver-titik-969', 'Kain Silver Titik', 'S', 'K.32.014', 32, 2, '1756263032_c9189e8808d1f4c38025.png', '2025-08-27 02:50:32', '2025-08-27 02:50:32', NULL),
(461, 'kain-merah-etnic-849', 'Kain Merah Etnic', 'S', 'K.32.015', 32, 2, '1756263252_57de96f987279f1d5eb8.png', '2025-08-27 02:54:12', '2025-08-27 02:54:12', NULL),
(462, 'kain-silver-shimer-345', 'Kain Silver Shimer', 'S', 'K.32.016', 32, 2, '1756263305_70782c6b4c6ad5e0155f.png', '2025-08-27 02:55:05', '2025-08-27 02:55:05', NULL),
(463, 'kain-cyan-shimer-249', 'Kain Cyan Shimer', 'S', 'K.32.017', 32, 2, '1756263341_e7cf106bcd7ba105960f.png', '2025-08-27 02:55:41', '2025-08-27 02:55:41', NULL),
(464, 'kain-flower-799', 'Kain Flower', 'S', 'K.32.018', 32, 2, '1756263373_8e41279a253fc0cfa98d.png', '2025-08-27 02:56:13', '2025-08-27 02:56:13', NULL),
(465, 'kain-pink-164', 'Kain Pink', 'S', 'K.32.019', 32, 2, '1756263406_29586b132fb0a032025f.png', '2025-08-27 02:56:46', '2025-08-27 02:56:46', NULL),
(466, 'kain-pink-muda-103', 'Kain Pink Muda', 'S', 'K.32.020', 32, 2, '1756263438_7ba05115acbeca3041c3.png', '2025-08-27 02:57:18', '2025-08-27 02:57:18', NULL),
(467, 'kain-coklat-hitam-184', 'Kain Coklat Hitam', 'S', 'K.33.001', 33, 2, '1756263469_3d0f8d41d3dd844e62b7.png', '2025-08-27 02:57:49', '2025-08-27 02:57:49', NULL),
(468, 'kain-merah-gold-flower-792', 'Kain Merah Gold Flower', 'S', 'K.33.002', 33, 2, '1756263501_e0bfc0e2a9570e08be51.png', '2025-08-27 02:58:21', '2025-08-27 02:58:21', NULL),
(469, 'kain-putih-transparan-payet-861', 'Kain Putih Transparan Payet', 'S', 'K.33.003', 33, 2, '1756263543_6713d3bad82f0f183dc0.png', '2025-08-27 02:59:03', '2025-08-27 02:59:03', NULL),
(470, 'kain-pink-306', 'Kain Pink', 'S', 'K.33.004', 33, 2, '1756263571_294a37f2d1f65e44de85.png', '2025-08-27 02:59:31', '2025-08-27 02:59:31', NULL),
(471, 'kain-ungu-43', 'Kain Ungu', 'S', 'K.33.005', 33, 2, '1756263638_39a4fb49268f287be7e5.png', '2025-08-27 03:00:38', '2025-08-27 03:00:38', NULL),
(472, 'kain-merah-262', 'Kain Merah', 'S', 'K.33.006', 33, 2, '1756263667_e658a945be26ce900262.png', '2025-08-27 03:01:07', '2025-08-27 03:01:07', NULL),
(473, 'kain-pink-muda-686', 'Kain Pink Muda', 'S', 'K.33.007', 33, 2, '1756263696_0cbf8659beed11d00cad.png', '2025-08-27 03:01:36', '2025-08-27 03:01:36', NULL),
(474, 'kain-coklat-184', 'Kain Coklat', 'S', 'K.33.008', 33, 2, '1756263721_955b397abab6bedb9e37.png', '2025-08-27 03:02:01', '2025-08-27 03:02:01', NULL),
(475, 'kain-putih-399', 'Kain Putih', 'S', 'K.33.009', 33, 2, '1756263759_1c95e9da3db5f8043ad0.png', '2025-08-27 03:02:39', '2025-08-27 03:02:39', NULL),
(476, 'kain-ungu-156', 'Kain Ungu', 'S', 'K.33.010', 33, 2, '1756263791_746629d4931650b36e57.png', '2025-08-27 03:03:11', '2025-08-27 03:03:11', NULL),
(477, 'kain-coklat-flower-590', 'Kain Coklat Flower', 'S', 'K.33.011', 33, 2, '1756263830_f4cd6ff65319354c23b4.png', '2025-08-27 03:03:50', '2025-08-27 03:03:50', NULL),
(478, 'kain-merah-521', 'Kain Merah', 'S', 'K.33.012', 33, 2, '1756263862_56fc482787fdf451256c.png', '2025-08-27 03:04:22', '2025-08-27 03:04:22', NULL),
(479, 'kain-maroon-904', 'Kain Maroon', 'S', 'K.33.013', 33, 2, '1756264124_55db88220d4f2037232c.png', '2025-08-27 03:08:44', '2025-08-27 03:08:44', NULL),
(480, 'kain-maroon-778', 'Kain Maroon', 'M', 'K.33.014', 33, 2, '1756264161_0ba7ec1e7af1064ffb50.png', '2025-08-27 03:09:21', '2025-08-27 03:09:21', NULL),
(481, 'kain-merah-854', 'Kain Merah', 'M', 'K.33.015', 33, 2, '1756264197_8c0045c606c56d8ffc8b.png', '2025-08-27 03:09:57', '2025-08-27 03:09:57', NULL),
(482, 'no-name-737', 'no name', 'S', 'K.33.016', 33, 2, '1756264226_af8b69534b88aa595f7e.png', '2025-08-27 03:10:26', '2025-08-27 03:10:26', NULL),
(483, 'kain-pink-849', 'Kain Pink', 'L', 'K.33.017', 33, 2, '1756264264_0571400fcaff0975bef1.png', '2025-08-27 03:11:04', '2025-08-27 03:11:04', NULL),
(484, 'kain-tosca-295', 'Kain Tosca', 'S', 'K.33.018', 33, 2, '1756264293_5f65bfbe5a919596e3d8.png', '2025-08-27 03:11:33', '2025-08-27 03:11:33', NULL),
(485, 'kain-ungu-470', 'Kain Ungu', 'M', 'K.33.019', 33, 2, '1756264326_828d8d7939a4cfa4facb.png', '2025-08-27 03:12:06', '2025-08-27 03:12:06', NULL),
(486, 'kain-pink-461', 'Kain Pink', 'S', 'K.33.020', 33, 2, '1756264355_1f52ef7f910206f6d6c2.png', '2025-08-27 03:12:35', '2025-08-27 03:12:35', NULL),
(487, 'no-name-839', 'no name', 'S', 'K.33.021', 33, 2, '1756264384_bef7d8f222f15883ad16.png', '2025-08-27 03:13:04', '2025-08-27 03:13:04', NULL),
(488, 'kain-pink-427', 'Kain Pink', 'S', 'K.33.022', 33, 2, '1756264420_8a4196ce642c8b567e49.png', '2025-08-27 03:13:40', '2025-08-27 03:13:40', NULL),
(489, 'kain-flower-coklat-951', 'Kain Flower Coklat', 'S', 'K.33.023', 33, 2, '1756264461_cacec679ae0b137134e6.png', '2025-08-27 03:14:21', '2025-08-27 03:14:21', NULL),
(490, 'kain-putih-573', 'Kain Putih', 'S', 'K.33.024', 33, 2, '1756264491_59b28cef299a4941ae50.png', '2025-08-27 03:14:51', '2025-08-27 03:14:51', NULL),
(491, 'kain-hijau-tua-991', 'Kain Hijau Tua', 'S', 'K.33.025', 33, 2, '1756264519_a43d80d046ad9cde8c67.png', '2025-08-27 03:15:19', '2025-08-27 03:15:19', NULL),
(492, 'kain-coklat-161', 'Kain Coklat', 'S', 'K.33.026', 33, 2, '1756264551_654210dcb237a8f65b89.png', '2025-08-27 03:15:51', '2025-08-27 03:15:51', NULL),
(493, 'no-name-jas-807', 'no name - jas', 'S', 'K.34.001', 34, 2, '1756264611_f12fdf82844ae2152324.png', '2025-08-27 03:16:51', '2025-08-27 03:16:51', NULL),
(494, 'kerah-merah-shimer-262', 'Kerah Merah Shimer', 'S', 'R.A.1.001', 35, 2, '1756264996_0ab0a55fca2ea7db0096.png', '2025-08-27 03:23:16', '2025-08-27 03:23:16', NULL),
(495, 'kebaya-hitam-647', 'Kebaya HItam', 'S', 'R.A.1.002', 35, 2, '1756265048_bf58fe067722d042aa0e.png', '2025-08-27 03:24:08', '2025-08-27 03:25:32', NULL),
(496, 'kebaya-putih-909', 'Kebaya Putih', 'S', 'R.A.1.003', 35, 2, '1756265083_0c5dcfcb5c2b1e1c3fb3.png', '2025-08-27 03:24:43', '2025-08-27 03:24:43', NULL),
(497, 'kebaya-gold-738', 'Kebaya Gold', 'S', 'R.A.1.004', 35, 2, '1756265117_2900710326230cf4fafd.png', '2025-08-27 03:25:17', '2025-08-27 03:25:17', NULL),
(498, 'baju-coklat-383', 'Baju Coklat', 'S', 'R.A.1.005', 35, 2, '1756265180_6858b97fda4b97168df1.png', '2025-08-27 03:26:20', '2025-08-27 03:27:12', NULL),
(499, 'baju-hitam-0', 'Baju Hitam', 'S', 'R.A.1.006', 35, 2, '1756265224_486a11812486f8c56396.png', '2025-08-27 03:27:04', '2025-08-27 03:27:04', NULL),
(500, 'kebaya-merah-gold-695', 'Kebaya Merah Gold', 'S', 'R.A.1.007', 35, 2, '1756265267_9bb57149ab0cc9ee9fcf.png', '2025-08-27 03:27:47', '2025-08-27 03:27:47', NULL),
(501, 'kebaya-oren-175', 'Kebaya Oren', 'S', 'R.A.1.008', 35, 2, '1756265297_4133ed25f20a454c3de6.png', '2025-08-27 03:28:17', '2025-08-27 03:28:17', NULL),
(502, 'baju-pink-645', 'Baju Pink', 'S', 'R.A.1.009', 35, 2, '1756265351_90be344064c90dd4900b.png', '2025-08-27 03:29:11', '2025-08-27 03:29:11', NULL),
(503, 'kebaya-hijau-985', 'Kebaya Hijau', 'S', 'R.A.1.010', 35, 2, '1756265386_b19060834eeb9718c1b8.png', '2025-08-27 03:29:46', '2025-08-27 03:29:46', NULL),
(504, 'outer-bulu-biru-847', 'Outer Bulu Biru', 'S', 'R.A.1.011', 35, 2, '1756265432_13e41c7b0b494d8d48fb.png', '2025-08-27 03:30:32', '2025-08-27 03:30:32', NULL),
(505, 'outer-bulu-biru-341', 'Outer Bulu Biru', 'M', 'R.A.1.012', 35, 2, '1756265453_57314fb6199689e0063b.png', '2025-08-27 03:30:53', '2025-08-27 03:30:53', NULL),
(506, 'kaos-merah-671', 'Kaos Merah', 'S', 'R.A.1.013', 35, 2, '1756265485_ceabdfb8f55b788d3d6f.png', '2025-08-27 03:31:25', '2025-08-27 03:31:25', NULL),
(507, 'kebaya-cream-371', 'Kebaya Cream', 'S', 'R.A.1.014', 35, 2, '1756265527_4c12706aabd4932a0665.png', '2025-08-27 03:32:07', '2025-08-27 03:32:07', NULL),
(508, 'baju-pink-476', 'Baju Pink', 'L', 'R.A.1.015', 35, 2, '1756265561_deb0ebf60fa88f3ccc82.png', '2025-08-27 03:32:41', '2025-08-27 03:32:41', NULL),
(509, 'baju-maroon-putih-918', 'Baju Maroon Putih', 'S', 'R.A.1.016', 35, 2, '1756265598_4b1e5dba6b0c84637b79.png', '2025-08-27 03:33:18', '2025-08-27 03:33:18', NULL),
(510, 'baju-maroon-shimer-838', 'Baju Maroon Shimer', 'S', 'R.A.1.017', 35, 2, '1756265634_764e73b9e3b8eed3b06b.png', '2025-08-27 03:33:54', '2025-08-27 03:33:54', NULL),
(511, 'kebaya-gold-754', 'Kebaya Gold', 'S', 'R.A.1.018', 35, 2, '1756265674_cfee80751202cfa76477.png', '2025-08-27 03:34:34', '2025-08-27 03:34:34', NULL),
(512, 'kain-silver-shimer-472', 'Kain Silver Shimer', 'S', 'R.A.1.019', 35, 2, '1756265704_8b17ec38674a11f776ba.png', '2025-08-27 03:35:04', '2025-08-27 03:35:04', NULL),
(513, 'baju-silver-hitam-701', 'Baju Silver Hitam', 'S', 'R.A.1.020', 35, 2, '1756265749_92fe9aefb84f7dae0442.png', '2025-08-27 03:35:49', '2025-08-27 03:35:49', NULL),
(514, 'rok-biru-shimer-168', 'Rok Biru Shimer', 'S', 'R.A.1.021', 35, 2, '1756265790_fd31664cfaa3dce70817.png', '2025-08-27 03:36:30', '2025-08-27 03:36:30', NULL),
(515, 'baju-biru-shimer-364', 'Baju Biru Shimer', 'S', 'R.A.1.022', 35, 2, '1756265823_449f9dbd911b6f21602b.png', '2025-08-27 03:37:03', '2025-08-27 03:37:03', NULL),
(516, 'kain-navy-shimer-169', 'Kain Navy Shimer', 'S', 'R.A.1.023', 35, 2, '1756265866_6c022a42c69921a1d287.png', '2025-08-27 03:37:46', '2025-08-27 03:37:46', NULL),
(517, 'baju-hitam-hijau-39', 'Baju Hitam Hijau', 'S', 'R.A.1.024', 35, 2, '1756265929_fc317865e4ee692d340e.png', '2025-08-27 03:38:49', '2025-08-27 03:38:49', NULL),
(518, 'celana-hitam-hijau-445', 'Celana Hitam Hijau', 'S', 'R.A.1.025', 35, 2, '1756265948_f43c08bad2acf061a4ad.png', '2025-08-27 03:39:08', '2025-08-27 03:39:08', NULL),
(519, 'baju-putih-payet-187', 'Baju Putih Payet', 'S', 'R.A.1.026', 35, 2, '1756265981_a65e7124141fdb477b02.png', '2025-08-27 03:39:41', '2025-08-27 03:39:41', NULL),
(520, 'baju-putih-pendek-6', 'Baju Putih Pendek', 'S', 'R.A.1.027', 35, 2, '1756266014_28c96c5a60a8359c4714.png', '2025-08-27 03:40:14', '2025-08-27 03:40:14', NULL),
(521, 'baju-putih-payet-359', 'Baju Putih Payet', 'S', 'R.A.1.028', 35, 2, '1756266049_e52cd402437270064464.png', '2025-08-27 03:40:49', '2025-08-27 03:40:49', NULL),
(522, 'kebaya-putih-163', 'Kebaya Putih', 'S', 'R.A.1.029', 35, 2, '1756266078_bd989ab88cf55ea5ea2c.png', '2025-08-27 03:41:18', '2025-08-27 03:41:18', NULL),
(523, 'baju-ungu-panjang-767', 'Baju Ungu Panjang', 'S', 'R.A.1.030', 35, 2, '1756266108_997444f344e35096a3df.png', '2025-08-27 03:41:48', '2025-08-27 03:41:48', NULL),
(524, 'jaket-hitam-panjang-663', 'Jaket HItam Panjang', 'S', 'R.A.1.031', 35, 2, '1756266141_af51c4391fd306d5b2a3.png', '2025-08-27 03:42:21', '2025-08-27 03:42:21', NULL),
(525, 'dress-pink-972', 'Dress Pink', 'S', 'R.B.1.001', 36, 2, '1756266279_66d0f831930a001cc1f2.png', '2025-08-27 03:44:39', '2025-08-27 03:44:39', NULL),
(526, 'dress-hijau-etnic-460', 'Dress HIjau Etnic', 'S', 'R.B.1.002', 36, 2, '1756266325_6e9f54957bc8b5ba11ee.png', '2025-08-27 03:45:25', '2025-08-27 03:45:25', NULL),
(527, 'dress-oren-etnic-650', 'Dress Oren Etnic', 'S', 'R.B.1.003', 36, 2, '1756266362_94b9da006bb3b5aa1868.png', '2025-08-27 03:46:02', '2025-08-27 03:46:02', NULL),
(528, 'outer-pink-maroon-173', 'Outer Pink Maroon', 'S', 'R.B.1.004', 36, 2, '1756266403_66421ebcbac2e94a5373.png', '2025-08-27 03:46:43', '2025-08-27 03:46:43', NULL),
(529, 'dress-silver-shimer-512', 'Dress Silver Shimer', 'S', 'R.B.1.005', 36, 2, '1756266436_2c3aa99304e572430c59.png', '2025-08-27 03:47:16', '2025-08-27 03:47:16', NULL),
(530, 'dress-cyan-shimer-845', 'Dress Cyan Shimer', 'S', 'R.B.1.006', 36, 2, '1756266487_5d46be4b4798964539e7.png', '2025-08-27 03:48:07', '2025-08-27 03:48:07', NULL),
(531, 'dress-hitam-etnic-349', 'Dress Hitam Etnic', 'S', 'R.B.1.007', 36, 2, '1756266536_ea73da1bceec0f53039d.png', '2025-08-27 03:48:56', '2025-08-27 03:48:56', NULL),
(532, 'dress-hijau-36', 'Dress Hijau', 'S', 'R.B.1.008', 36, 2, '1756266564_e5352c06cba6754fc6c9.png', '2025-08-27 03:49:24', '2025-08-27 03:49:24', NULL),
(533, 'dress-pink-603', 'Dress Pink', 'S', 'R.B.1.009', 36, 2, '1756266597_859b9ef7a954fe4926e5.png', '2025-08-27 03:49:57', '2025-08-27 03:49:57', NULL),
(534, 'celana-putih-maroon-594', 'Celana Putih Maroon', 'S', 'R.B.1.010', 36, 2, '1756266633_010aa96ae2751e065ecd.png', '2025-08-27 03:50:33', '2025-08-27 03:50:33', NULL),
(535, 'dress-navi-etnic-432', 'Dress Navi Etnic', 'S', 'R.B.1.011', 36, 2, '1756266671_12e43836f67d51e56c76.png', '2025-08-27 03:51:11', '2025-08-27 03:51:11', NULL),
(536, 'rok-maroon-batik-410', 'Rok Maroon Batik', 'S', 'R.B.1.012', 36, 2, '1756266712_d3de72144f7e8bc3208c.png', '2025-08-27 03:51:52', '2025-08-27 03:51:52', NULL),
(537, 'rok-hitam-panjang-837', 'Rok Hitam Panjang', 'S', 'R.B.1.013', 36, 2, '1756266744_6c09eaf216731527fc48.png', '2025-08-27 03:52:24', '2025-08-27 03:52:24', NULL),
(538, 'rok-gold-590', 'Rok Gold', 'S', 'R.B.1.014', 36, 2, '1756266774_cc5649cff9c1b66f4621.png', '2025-08-27 03:52:54', '2025-08-27 03:52:54', NULL),
(539, 'dress-silver-shimer-607', 'Dress Silver Shimer', 'S', 'R.B.1.015', 36, 2, '1756266808_0ae98401244c61545d30.png', '2025-08-27 03:53:28', '2025-08-27 03:53:28', NULL),
(540, 'rok-maroon-746', 'Rok Maroon', 'S', 'R.B.1.016', 36, 2, '1756266840_0db4d683a460a2ec8ae2.png', '2025-08-27 03:54:00', '2025-08-27 03:54:00', NULL),
(541, 'dress-putih-351', 'Dress Putih', 'S', 'R.B.1.017', 36, 2, '1756266879_74088d7019deee8b641c.png', '2025-08-27 03:54:39', '2025-08-27 03:54:39', NULL),
(542, 'rok-oren-954', 'Rok Oren', 'S', 'R.B.1.018', 36, 2, '1756266916_50fb9d6d34f0af703665.png', '2025-08-27 03:55:16', '2025-08-27 03:55:16', NULL),
(543, 'rok-gold-black-768', 'Rok Gold Black', 'S', 'R.B.1.019', 36, 2, '1756266970_d09dadc79043ee623fff.png', '2025-08-27 03:56:10', '2025-08-27 03:56:10', NULL),
(544, 'batik-gold-345', 'Batik Gold', 'S', 'R.B.1.020', 36, 2, '1756267007_f389bab9678e1522d9bc.png', '2025-08-27 03:56:47', '2025-08-27 03:56:47', NULL),
(545, 'jas-silver-649', 'Jas Silver', 'S', 'R.A.2.001', 37, 2, '1756267149_caeedbce1bebbf56a63d.png', '2025-08-27 03:59:09', '2025-08-27 03:59:09', NULL),
(546, 'celana-silver-577', 'Celana Silver', 'S', 'R.A.2.002', 37, 2, '1756267197_e2adb4c4848ba0c140b8.png', '2025-08-27 03:59:57', '2025-08-27 03:59:57', NULL),
(547, 'jas-hitam-744', 'Jas Hitam', 'S', 'R.A.2.003', 37, 2, '1756267243_73ec4bedfb9c608ff2bb.png', '2025-08-27 04:00:43', '2025-08-27 04:00:43', NULL),
(548, 'jas-hitam-550', 'Jas Hitam', 'M', 'R.A.2.005', 37, 2, '1756267652_8eeb4e16f978249885f0.png', '2025-08-27 04:02:04', '2025-08-27 04:07:32', NULL),
(549, 'jas-hitam-218', 'Jas Hitam', 'L', 'R.A.2.006', 37, 2, '1756267705_356ecceaceea897f0cb5.png', '2025-08-27 04:02:49', '2025-08-27 04:08:25', NULL),
(550, 'jas-merah-59', 'Jas Merah', 'S', 'R.A.2.007', 37, 2, '1756267718_9fd173a6d4f6259191b6.png', '2025-08-27 04:03:30', '2025-08-27 04:08:38', NULL),
(551, 'jas-cream-320', 'Jas Cream', 'S', 'R.A.2.008', 37, 2, '1756267729_c27c4d8d66b20a5fee41.png', '2025-08-27 04:04:14', '2025-08-27 04:08:49', NULL),
(552, 'baju-putih-gold-72', 'Baju Putih Gold', 'S', 'R.A.2.009', 37, 2, '1756267743_14bd35a4eb9c00bd3bb2.png', '2025-08-27 04:04:55', '2025-08-27 04:09:03', NULL),
(553, 'kemeja-coklat-735', 'Kemeja Coklat', 'S', 'R.A.2.004', 37, 2, '1756267628_aa683754f10b96369e07.png', '2025-08-27 04:07:08', '2025-08-27 04:07:08', NULL),
(554, 'jas-putih-220', 'Jas Putih', 'S', 'R.A.2.010', 37, 2, '1756267784_67976b5f48678338d43b.png', '2025-08-27 04:09:44', '2025-08-27 04:09:44', NULL),
(555, 'jas-hitam-210', 'Jas Hitam', 'S', 'R.A.2.011', 37, 2, '1756267816_7b4183caea344b7942d9.png', '2025-08-27 04:10:16', '2025-08-27 04:10:16', NULL),
(556, 'kemeja-hitam-421', 'Kemeja Hitam', 'S', 'R.A.2.012', 37, 2, '1756267852_20303a11604178725b5e.png', '2025-08-27 04:10:52', '2025-08-27 04:10:52', NULL),
(557, 'kemeja-putih-658', 'Kemeja Putih', 'S', 'R.A.2.013', 37, 2, '1756267888_7924e0650d705bad0a24.png', '2025-08-27 04:11:28', '2025-08-27 04:11:28', NULL),
(558, 'baju-biru-pendek-263', 'Baju Biru Pendek', 'S', 'R.B.2.001', 38, 2, '1756269443_fa2f8dad8411bd760aae.png', '2025-08-27 04:37:23', '2025-08-27 04:37:23', NULL),
(559, 'baju-batik-coklat-627', 'Baju Batik Coklat', 'S', 'R.B.2.002', 38, 2, '1756269479_324cf632d910617c8e1c.png', '2025-08-27 04:37:59', '2025-08-27 04:37:59', NULL),
(560, 'baju-hitam-belang-340', 'Baju Hitam Belang', 'S', 'R.B.2.003', 38, 2, '1756269517_1a5826af49d18bbbac7d.png', '2025-08-27 04:38:37', '2025-08-27 04:38:37', NULL),
(561, 'kemeja-biru-panjang-387', 'Kemeja Biru Panjang', 'S', 'R.B.2.004', 38, 2, '1756269564_33f65d467494b4a2fba8.png', '2025-08-27 04:39:24', '2025-08-27 04:39:24', NULL),
(562, 'kemeja-merah-135', 'Kemeja Merah', 'S', 'R.B.2.005', 38, 2, '1756269619_3d4d62d9d9d15cb31575.png', '2025-08-27 04:40:19', '2025-08-27 04:40:19', NULL),
(563, 'kemeja-gold-46', 'Kemeja Gold', 'S', 'R.B.2.006', 38, 2, '1756269656_045acf8c82d88d05df7e.png', '2025-08-27 04:40:56', '2025-08-27 04:40:56', NULL),
(564, 'kemeja-putih-148', 'Kemeja Putih', 'S', 'R.B.2.007', 38, 2, '1756269694_cf0c206b49a2cf15efae.png', '2025-08-27 04:41:34', '2025-08-27 04:41:34', NULL),
(565, 'kemeja-putih-206', 'Kemeja Putih', 'M', 'R.B.2.008', 38, 2, '1756269727_3c2dbaf6b2eaa426f282.png', '2025-08-27 04:42:07', '2025-08-27 04:42:07', NULL),
(566, 'kemeja-merah-gold-896', 'Kemeja Merah Gold', 'S', 'R.B.2.009', 38, 2, '1756269773_b20e1150c0e08eae7469.png', '2025-08-27 04:42:53', '2025-08-27 04:42:53', NULL),
(567, 'baju-hitam-hijau-604', 'Baju Hitam Hijau', 'S', 'R.B.2.010', 38, 2, '1756269823_b48a07d24f14f9121cd9.png', '2025-08-27 04:43:43', '2025-08-27 04:43:43', NULL),
(568, 'baju-hitam-oren-938', 'Baju Hitam Oren', 'S', 'R.B.2.011', 38, 2, '1756269856_41b4e4c7aeda32d3527a.png', '2025-08-27 04:44:16', '2025-08-27 04:44:16', NULL),
(569, 'rompi-hitam-etnic-603', 'Rompi Hitam Etnic', 'S', 'R.B.2.012', 38, 2, '1756269927_e8a3abe2370f414daf40.png', '2025-08-27 04:45:27', '2025-08-27 04:45:27', NULL),
(570, 'kemeja-gold-529', 'Kemeja Gold', 'S', 'R.B.2.013', 38, 2, '1756269962_1a80ed5265beada58721.png', '2025-08-27 04:46:02', '2025-08-27 04:46:02', NULL),
(571, 'rompi-cyan-shimer-428', 'Rompi Cyan Shimer', 'S', 'R.B.2.014', 38, 2, '1756270006_64534a1bf349dacf67cc.png', '2025-08-27 04:46:46', '2025-08-27 04:46:46', NULL),
(572, 'rompi-biru-shimer-481', 'Rompi Biru Shimer', 'S', 'R.B.2.015', 38, 2, '1756270041_201917973e54ab9f9b9a.png', '2025-08-27 04:47:21', '2025-08-27 04:47:21', NULL),
(573, 'rompi-gold-hitam-443', 'Rompi Gold Hitam', 'S', 'R.B.2.016', 38, 2, '1756270092_aca0e9f695a988137518.png', '2025-08-27 04:48:12', '2025-08-27 04:48:12', NULL),
(574, 'rompi-biru-etnic-690', 'Rompi Biru Etnic', 'S', 'R.B.2.017', 38, 2, '1756270127_85cbd7e166c44b9ce96d.png', '2025-08-27 04:48:47', '2025-08-27 04:48:47', NULL),
(575, 'baju-hitam-gold-942', 'Baju Hitam Gold', 'S', 'R.A.3.001', 39, 2, '1756270222_900db3d36f0a72dc9309.png', '2025-08-27 04:50:22', '2025-08-27 04:50:22', NULL),
(576, 'rok-cyan-399', 'Rok Cyan', 'S', 'R.B.3.001', 40, 2, '1756276348_df78a08210ee43da571f.png', '2025-08-27 06:32:28', '2025-08-27 06:32:28', NULL),
(577, 'rok-ungu-190', 'Rok Ungu', 'S', 'R.B.3.002', 40, 2, '1756276386_9a075efe1948c9d5b030.png', '2025-08-27 06:33:06', '2025-08-27 06:33:06', NULL),
(578, 'rok-navy-494', 'Rok Navy', 'S', 'R.B.3.003', 40, 2, '1756276446_07ee17c98f2f3441dffb.png', '2025-08-27 06:34:06', '2025-08-27 06:34:06', NULL),
(579, 'baju-putih-917', 'Baju Putih', 'S', 'R.B.3.004', 40, 2, '1756276478_c2f6f5423e4595490a68.png', '2025-08-27 06:34:38', '2025-08-27 06:34:38', NULL),
(580, 'baju-putih-824', 'Baju Putih', 'M', 'R.B.3.005', 40, 2, '1756276524_bce0b22d1308036ebfef.png', '2025-08-27 06:35:24', '2025-08-27 06:35:24', NULL),
(581, 'jas-hijau-701', 'Jas Hijau', 'S', 'R.B.3.006', 40, 2, '1756276561_4cf215af48c487706568.png', '2025-08-27 06:36:01', '2025-08-27 06:36:01', NULL),
(582, 'dress-hitam-526', 'Dress Hitam', 'S', 'R.B.3.007', 40, 2, '1756276606_436157ba015703cd5e40.png', '2025-08-27 06:36:46', '2025-08-27 06:36:46', NULL),
(583, 'dress-merah-616', 'Dress Merah', 'S', 'R.B.3.008', 40, 2, '1756276638_a4beac9062f9e19af7e9.png', '2025-08-27 06:37:18', '2025-08-27 06:37:18', NULL),
(584, 'dress-merah-663', 'Dress Merah', 'M', 'R.B.3.009', 40, 2, '1756276679_287f4bc8d97f77f9c805.png', '2025-08-27 06:37:59', '2025-08-27 06:37:59', NULL),
(585, 'baju-biru-gold-712', 'Baju Biru Gold', 'S', 'R.B.3.010', 40, 2, '1756276717_17932fe94ec966f3d73a.png', '2025-08-27 06:38:37', '2025-08-27 06:38:37', NULL),
(586, 'baju-cyan-rok-batik-799', 'Baju Cyan Rok Batik', 'S', 'R.B.3.011', 40, 2, '1756276755_0d48c7cba9df42981bb1.png', '2025-08-27 06:39:15', '2025-08-27 06:39:15', NULL),
(587, 'batik-gold-566', 'Batik Gold', 'S', 'R.B.3.012', 40, 2, '1756276792_74e93b7a758c026ec623.png', '2025-08-27 06:39:52', '2025-08-27 06:39:52', NULL),
(588, 'dress-cyan-836', 'Dress Cyan', 'S', 'R.B.3.013', 40, 2, '1756276889_c08abdf81e6e674ab23c.png', '2025-08-27 06:41:29', '2025-08-27 06:41:29', NULL),
(589, 'kemeja-hitam-etnic-832', 'Kemeja Hitam Etnic', 'S', 'R.B.3.014', 40, 2, '1756276935_3827acdec464fd8c1f09.png', '2025-08-27 06:42:15', '2025-08-27 06:42:15', NULL),
(590, 'baju-hitam-garis-merah-893', 'Baju Hitam Garis Merah', 'S', 'R.B.3.015', 40, 2, '1756276976_ce83595eac3e17ed6b33.png', '2025-08-27 06:42:56', '2025-08-27 06:42:56', NULL),
(591, 'celana-hitam-737', 'Celana Hitam', 'S', 'R.B.3.016', 40, 2, '1756277050_1f209990ca49d8c87d22.png', '2025-08-27 06:44:10', '2025-08-27 06:44:10', NULL),
(592, 'batik-hitam-coklat-595', 'Batik Hitam Coklat', 'S', 'R.B.3.017', 40, 2, '1756277150_f8774aad6500d667ed9c.png', '2025-08-27 06:45:50', '2025-08-27 06:45:50', NULL),
(593, 'baju-navy-etnic-704', 'Baju Navy Etnic', 'S', 'R.B.3.018', 40, 2, '1756277229_625c57a4f3a66a69fb44.png', '2025-08-27 06:47:09', '2025-08-27 06:47:09', NULL),
(594, 'baju-blue-jeans-740', 'Baju Blue Jeans', 'S', 'R.B.3.019', 40, 2, '1756277276_454bb4af8dcd86dd0504.png', '2025-08-27 06:47:56', '2025-08-27 06:47:56', NULL),
(595, 'baju-merah-etnic-492', 'Baju Merah Etnic', 'S', 'R.B.3.020', 40, 2, '1756277319_1659583ff90ea6a565a1.png', '2025-08-27 06:48:39', '2025-08-27 06:48:39', NULL),
(596, 'baju-ungu-344', 'Baju Ungu', 'S', 'R.B.3.021', 40, 2, '1756277348_745beeee77d8785a0da1.png', '2025-08-27 06:49:08', '2025-08-27 06:49:08', NULL),
(597, 'jaket-coklat-27', 'Jaket Coklat', 'S', 'R.B.3.022', 40, 2, '1756277380_838ca9220266dfdaac79.png', '2025-08-27 06:49:40', '2025-08-27 06:49:40', NULL),
(598, 'rok-hijau-69', 'Rok Hijau', 'S', 'R.B.3.023', 40, 2, '1756277419_30e1d391b189782ff284.png', '2025-08-27 06:50:19', '2025-08-27 06:50:19', NULL),
(599, 'rompi-merah-21', 'Rompi Merah', 'S', 'R.B.3.024', 40, 2, '1756277467_157c4c7a7aca6dd6e8b2.png', '2025-08-27 06:51:07', '2025-08-27 06:51:07', NULL),
(600, 'baju-kemeja-hitam-444', 'Baju Kemeja Hitam', 'M', 'R.B.3.025', 40, 2, '1756277516_6f19314c2901738e78fb.png', '2025-08-27 06:51:56', '2025-08-27 06:51:56', NULL),
(601, 'rok-hitam-pendek-923', 'Rok Hitam Pendek', 'S', 'R.B.3.026', 40, 2, '1756277546_05208e1b5c5816a978eb.png', '2025-08-27 06:52:26', '2025-08-27 06:52:26', NULL),
(602, 'kebaya-merah-849', 'Kebaya Merah', 'S', 'R.B.3.027', 40, 2, '1756277577_e1e1d7aa1eba73708bdc.png', '2025-08-27 06:52:57', '2025-08-27 06:52:57', NULL),
(603, 'baju-merah-210', 'Baju Merah', 'S', 'R.B.3.028', 40, 2, '1756277615_b768bf1e8c87fb0a6f64.png', '2025-08-27 06:53:35', '2025-08-27 06:53:35', NULL),
(604, 'kemeja-coklat-gold-781', 'Kemeja Coklat Gold', 'S', 'R.B.3.029', 40, 2, '1756277694_c51d502c96d67380cef7.png', '2025-08-27 06:54:54', '2025-08-27 06:54:54', NULL),
(605, 'kemeja-maroon-825', 'Kemeja Maroon', 'S', 'R.B.3.030', 40, 2, '1756277731_6c4f3657f5eaebda4c1b.png', '2025-08-27 06:55:31', '2025-08-27 06:55:31', NULL),
(606, 'baju-hitam-gold-934', 'Baju Hitam Gold', 'S', 'R.B.3.031', 40, 2, '1756277846_1f095e2508e11734768d.png', '2025-08-27 06:57:26', '2025-08-27 06:57:26', NULL),
(607, 'baju-biru-gold-451', 'Baju Biru Gold', 'S', 'R.B.3.032', 40, 2, '1756277879_4c17024f22f5111ca2fd.png', '2025-08-27 06:57:59', '2025-08-27 06:57:59', NULL),
(608, 'rok-pink-muda-599', 'Rok Pink Muda', 'S', 'R.B.3.033', 40, 2, '1756278000_98f1e44fb6b9b311fce7.png', '2025-08-27 07:00:00', '2025-08-27 07:00:00', NULL),
(609, 'baju-putih-88', 'Baju Putih', 'S', 'R.B.3.034', 40, 2, '1756278029_a573dc5b889119dfc0a6.png', '2025-08-27 07:00:29', '2025-08-27 07:00:29', NULL),
(610, 'baju-putih-131', 'Baju Putih', 'M', 'R.B.3.035', 40, 2, '1756278467_8600eb9bd1fe2bd7dda4.png', '2025-08-27 07:07:47', '2025-08-27 07:07:47', NULL),
(611, 'baju-putih-112', 'Baju Putih', 'L', 'R.B.3.036', 40, 2, '1756278507_586f69d4474f9ffb1d3e.png', '2025-08-27 07:08:27', '2025-08-27 07:08:27', NULL),
(612, 'kemeja-putih-937', 'Kemeja Putih', 'S', 'R.B.3.037', 40, 2, '1756278640_5c8f75025729703bd1f6.png', '2025-08-27 07:10:40', '2025-08-27 07:10:40', NULL),
(613, 'dress-cyan-669', 'Dress Cyan', 'S', 'R.B.3.038', 40, 2, '1756278686_9b7e4ca93c201efa2572.png', '2025-08-27 07:11:26', '2025-08-27 07:11:26', NULL),
(614, 'kain-garis-hijau-896', 'Kain Garis Hijau', 'S', 'R.B.3.039', 40, 2, '1756278758_aa7a1da6c9c10c585a52.png', '2025-08-27 07:12:38', '2025-08-27 07:12:38', NULL),
(615, 'rompi-merah-hitam-645', 'Rompi Merah Hitam', 'S', 'R.B.3.040', 40, 2, '1756278798_3e2f39a529261b318f05.png', '2025-08-27 07:13:18', '2025-08-27 07:13:18', NULL),
(616, 'celana-coklat-923', 'Celana Coklat', 'S', 'R.B.3.041', 40, 2, '1756278831_34fab0f2ca2daec2b6cd.png', '2025-08-27 07:13:51', '2025-08-27 07:13:51', NULL),
(617, 'baju-gold-288', 'Baju Gold', 'S', 'R.B.3.042', 40, 2, '1756278859_cbc7ff19feb3d3d3e4f9.png', '2025-08-27 07:14:19', '2025-08-27 07:14:19', NULL),
(618, 'baju-hitam-abu-70', 'Baju Hitam Abu', 'S', 'R.B.3.043', 40, 2, '1756278893_e02f4abd47c1855d16cd.png', '2025-08-27 07:14:53', '2025-08-27 07:14:53', NULL),
(619, 'dress-cyan-306', 'Dress Cyan', 'S', 'R.B.3.044', 40, 2, '1756278920_ba9012e3eb52416c271e.png', '2025-08-27 07:15:20', '2025-08-27 07:15:20', NULL),
(620, 'baju-oren-224', 'Baju Oren', 'S', 'R.B.3.045', 40, 2, '1756278958_8a858d40742712c87e55.png', '2025-08-27 07:15:58', '2025-08-27 07:15:58', NULL),
(621, 'baju-biru-kuning-714', 'Baju Biru Kuning', 'S', 'R.B.3.046', 40, 2, '1756278993_4ed184975daae43cad5d.png', '2025-08-27 07:16:33', '2025-08-27 07:16:33', NULL),
(622, 'jaket-cream-178', 'Jaket Cream', 'S', 'R.B.3.047', 40, 2, '1756279027_e3ab4878d2759a9b61dc.png', '2025-08-27 07:17:07', '2025-08-27 07:17:07', NULL),
(623, 'jas-hitam-242', 'Jas Hitam', 'S', 'R.B.3.048', 40, 2, '1756279056_831f0bc523adfdea51bd.png', '2025-08-27 07:17:36', '2025-08-27 07:17:36', NULL),
(624, 'jas-hitam-785', 'Jas Hitam', 'M', 'R.B.3.049', 40, 2, '1756279259_1a5f929dce27f8ec671d.png', '2025-08-27 07:18:11', '2025-08-27 07:20:59', NULL),
(625, 'jas-merah-543', 'Jas Merah', 'S', 'R.B.3.050', 40, 2, '1756279272_e37aaf4ccf2cb24e605e.png', '2025-08-27 07:18:46', '2025-08-27 07:21:12', NULL),
(626, 'jaket-ungu-rider-525', 'Jaket Ungu Rider', 'S', 'R.B.3.051', 40, 2, '1756279304_107620b8528f363b4adc.png', '2025-08-27 07:21:44', '2025-08-27 07:21:44', NULL),
(627, 'jaket-merah-rider-756', 'Jaket Merah Rider', 'S', 'R.B.3.052', 40, 2, '1756279333_2fd8080146e898fb52ed.png', '2025-08-27 07:22:13', '2025-08-27 07:22:13', NULL),
(628, 'baju-ungu-584', 'Baju Ungu', 'S', 'R.B.3.053', 40, 2, '1756279418_f5a861686fb4a80a62f0.png', '2025-08-27 07:23:38', '2025-08-27 07:23:38', NULL),
(629, 'baju-pink-536', 'Baju Pink', 'S', 'R.B.3.054', 40, 2, '1756279445_263c57006cc9022f64a4.png', '2025-08-27 07:24:05', '2025-08-27 07:24:05', NULL),
(630, 'kain-putih-692', 'Kain Putih', 'S', 'R.B.3.055', 40, 2, '1756279477_49ca92617a62559f5373.png', '2025-08-27 07:24:37', '2025-08-27 07:24:37', NULL),
(631, 'baju-putih-hitam-23', 'Baju Putih Hitam', 'S', 'R.B.3.056', 40, 2, '1756279514_d409b61b9c4276d9529a.png', '2025-08-27 07:25:14', '2025-08-27 07:25:14', NULL),
(632, 'dress-cyan-biru-251', 'Dress Cyan Biru', 'S', 'R.B.3.057', 40, 2, '1756279588_b57489a6db31d3923390.png', '2025-08-27 07:26:28', '2025-08-27 07:26:28', NULL),
(633, 'baju-oren-64', 'Baju Oren', 'S', 'R.B.3.058', 40, 2, '1756279616_af53cebf50ba1a9f8444.png', '2025-08-27 07:26:56', '2025-08-27 07:26:56', NULL),
(634, 'baju-ungu-882', 'Baju Ungu', 'S', 'R.B.3.059', 40, 2, '1756279646_408e3c1e6a1ca6351372.png', '2025-08-27 07:27:26', '2025-08-27 07:27:26', NULL),
(635, 'kain-hitam-363', 'Kain Hitam', 'S', 'R.B.3.060', 40, 2, '1756279679_c8e3596d0457b2c59d54.png', '2025-08-27 07:27:59', '2025-08-27 07:27:59', NULL),
(636, 'kain-merah-546', 'Kain Merah', 'S', 'R.B.3.061', 40, 2, '1756279709_edbc1a36b688e271f422.png', '2025-08-27 07:28:29', '2025-08-27 07:28:29', NULL),
(637, 'kain-merah-383', 'Kain Merah', 'M', 'R.B.3.062', 40, 2, '1756279745_7698086840777eaac716.png', '2025-08-27 07:29:05', '2025-08-27 07:29:05', NULL),
(638, 'dasi-hitam-993', 'Dasi Hitam', 'S', 'R.B.3.063', 40, 2, '1756279781_4508202d7bc6488916ab.png', '2025-08-27 07:29:41', '2025-08-27 07:29:41', NULL),
(639, 'dasi-hitam-836', 'Dasi Hitam', 'M', 'R.B.3.064', 40, 2, '1756279814_726f6e11e4d230ef67a8.png', '2025-08-27 07:30:14', '2025-08-27 07:30:14', NULL),
(640, 'kemeja-abu-339', 'Kemeja Abu', 'S', 'R.B.3.065', 40, 2, '1756279845_ef4e6567600c2e07ff9e.png', '2025-08-27 07:30:45', '2025-08-27 07:30:45', NULL),
(641, 'kebaya-putih-131', 'Kebaya Putih', 'S', 'R.B.3.066', 40, 2, '1756279874_52693f10d35ca774e877.png', '2025-08-27 07:31:14', '2025-08-27 07:31:14', NULL),
(642, 'kebaya-gold-817', 'Kebaya Gold', 'S', 'R.B.3.067', 40, 2, '1756279940_2e80227ffb199123f130.png', '2025-08-27 07:32:20', '2025-08-27 07:32:20', NULL),
(643, 'kebaya-putih-828', 'Kebaya Putih', 'S', 'R.B.3.068', 40, 2, '1756279976_95d8bd91afeb3cc1f824.png', '2025-08-27 07:32:56', '2025-08-27 07:32:56', NULL),
(644, 'kebaya-gold-917', 'Kebaya Gold', 'S', 'R.B.3.069', 40, 2, '1756280007_58532668c9f8872c2112.png', '2025-08-27 07:33:27', '2025-08-27 07:33:27', NULL),
(645, 'rompi-abu-197', 'Rompi Abu', 'S', 'R.B.3.070', 40, 2, '1756280039_c410143d28b2438e3e68.png', '2025-08-27 07:33:59', '2025-08-27 07:33:59', NULL),
(646, 'rompi-abu-343', 'Rompi Abu', 'M', 'R.B.3.071', 40, 2, '1756280070_d60533b67c66f3d5e74e.png', '2025-08-27 07:34:30', '2025-08-27 07:34:30', NULL),
(647, 'rompi-abu-motif-586', 'Rompi Abu Motif', 'S', 'R.B.3.072', 40, 2, '1756280108_7ee1a57f3e3df3fda233.png', '2025-08-27 07:35:08', '2025-08-27 07:35:08', NULL),
(648, 'rompi-putih-542', 'Rompi Putih', 'S', 'R.B.3.073', 40, 2, '1756280155_378b891d4862bec16186.png', '2025-08-27 07:35:55', '2025-08-27 07:35:55', NULL),
(649, 'rompi-abu-417', 'Rompi Abu', 'L', 'R.B.3.074', 40, 2, '1756280185_cf4b393d7b27da0a3970.png', '2025-08-27 07:36:25', '2025-08-27 07:36:25', NULL),
(650, 'baju-putih-835', 'Baju Putih', 'S', 'R.B.3.075', 40, 2, '1756280213_1c54f362aef6e578ce34.png', '2025-08-27 07:36:53', '2025-08-27 07:36:53', NULL),
(651, 'celana-hitam-666', 'Celana Hitam', 'S', 'R.B.3.076', 40, 2, '1756280241_cc5e4fa9b2ff4dc1cb6e.png', '2025-08-27 07:37:21', '2025-08-27 07:37:21', NULL),
(652, 'kebaya-cream-502', 'Kebaya Cream', 'S', 'R.B.3.077', 40, 2, '1756280278_1b1a044bd836b377eabb.png', '2025-08-27 07:37:58', '2025-08-27 07:37:58', NULL),
(653, 'bunga-merah-977', 'Bunga Merah', 'S', 'K.A.001', 41, 2, '1756280713_f5679750bf480356eba7.png', '2025-08-27 07:45:13', '2025-08-27 07:45:13', NULL),
(654, 'pinus-gold-866', 'Pinus Gold', 'S', 'K.A.002', 41, 2, '1756280759_278cdb31ad51c36875f0.png', '2025-08-27 07:45:59', '2025-08-27 07:45:59', NULL),
(655, 'bunga-merah-pinus-296', 'Bunga Merah Pinus', 'S', 'K.A.003', 41, 2, '1756280799_dbb7f31c0e38db34832b.png', '2025-08-27 07:46:39', '2025-08-27 07:46:39', NULL),
(656, 'daun-merah-746', 'Daun Merah', 'S', 'K.A.004', 41, 2, '1756280836_8242afd6e7948b5f4213.png', '2025-08-27 07:47:16', '2025-08-27 07:47:16', NULL),
(657, 'bunga-merah-gold-806', 'Bunga Merah Gold', 'S', 'K.A.005', 41, 2, '1756280901_c94bf8fe2bb8c7e273fc.png', '2025-08-27 07:48:21', '2025-08-27 07:48:21', NULL);
INSERT INTO `books` (`id`, `slug`, `title`, `author`, `publisher`, `rack_id`, `category_id`, `book_cover`, `created_at`, `updated_at`, `deleted_at`) VALUES
(658, 'daun-merah-gold-506', 'Daun Merah Gold', 'S', 'K.A.006', 41, 2, '1756280938_b8ff24a963f36e225226.png', '2025-08-27 07:48:58', '2025-08-27 07:48:58', NULL),
(659, 'pinus-gold-436', 'Pinus Gold', 'S', 'K.A.007', 41, 2, '1756280979_9964f46c0550f8c1bd5b.png', '2025-08-27 07:49:39', '2025-08-27 07:49:39', NULL),
(660, 'mawar-260', 'Mawar', 'S', 'K.A.008', 41, 2, '1756281008_77dcc1eb1c1de08f8d71.png', '2025-08-27 07:50:08', '2025-08-27 07:50:08', NULL),
(661, 'melati-putih-692', 'Melati Putih', 'S', 'K.A.009', 41, 2, '1756281038_e5396c517176a4404bfb.png', '2025-08-27 07:50:38', '2025-08-27 07:50:38', NULL),
(662, 'bunga-merah-kuning-524', 'Bunga Merah Kuning', 'S', 'K.A.010', 41, 2, '1756281073_ebd1613c0f94d13ae3d2.png', '2025-08-27 07:51:13', '2025-08-27 07:51:13', NULL),
(663, 'bunga-pink-13', 'Bunga Pink', 'S', 'K.A.011', 41, 2, '1756281111_9965483cab32fc8427d1.png', '2025-08-27 07:51:51', '2025-08-27 07:51:51', NULL),
(664, 'dog-christmas-999', 'Dog Christmas', 'S', 'K.A.012', 41, 2, '1756281145_92746e9ee5d57af292bf.png', '2025-08-27 07:52:25', '2025-08-27 07:52:25', NULL),
(665, 'gold-deer-17', 'Gold Deer', 'S', 'K.A.013', 41, 2, '1756281187_8720215a36f03a30901a.png', '2025-08-27 07:53:07', '2025-08-27 07:53:07', NULL),
(666, 'bunga-putih-pita-merah-655', 'Bunga Putih Pita Merah', 'S', 'K.A.014', 41, 2, '1756281225_5faa0175be500176f4c4.png', '2025-08-27 07:53:45', '2025-08-27 07:53:45', NULL),
(667, 'mawar-merah-386', 'Mawar Merah', 'S', 'K.A.015', 41, 2, '1756281264_eff36d2bb1c8e28bb705.png', '2025-08-27 07:54:24', '2025-08-27 07:54:24', NULL),
(668, 'mawar-oren-570', 'Mawar Oren', 'S', 'K.A.016', 41, 2, '1756281298_795eb78cc7b4ff962dfc.png', '2025-08-27 07:54:58', '2025-08-27 07:54:58', NULL),
(669, 'big-mawar-988', 'Big Mawar', 'M', 'K.A.017', 41, 2, '1756281335_5dddb96ca27ffcb6449e.png', '2025-08-27 07:55:35', '2025-08-27 07:55:35', NULL),
(670, 'triple-mawar-552', 'Triple Mawar', 'S', 'K.A.018', 41, 2, '1756281367_9a26f17668438293fb2f.png', '2025-08-27 07:56:07', '2025-08-27 07:56:07', NULL),
(671, 'lonceng-silver-321', 'Lonceng Silver', 'S', 'K.A.019', 41, 2, '1756281406_584e9f18963933ffc05c.png', '2025-08-27 07:56:46', '2025-08-27 07:56:46', NULL),
(672, 'mawar-hitam-224', 'Mawar Hitam', 'S', 'K.A.020', 41, 2, '1756281435_f75f5a1a15ba9471386f.png', '2025-08-27 07:57:15', '2025-08-27 07:57:15', NULL),
(673, 'bunga-merah-hijau-930', 'Bunga Merah HIjau', 'S', 'K.A.021', 41, 2, '1756281475_085cfd99126cad0dc7b5.png', '2025-08-27 07:57:55', '2025-08-27 07:57:55', NULL),
(674, 'bunga-merah-hijau-485', 'Bunga Merah Hijau', 'M', 'K.A.022', 41, 2, '1756281510_1bbd97227095e8e1d2b0.png', '2025-08-27 07:58:30', '2025-08-27 07:58:30', NULL),
(675, 'pita-gold-461', 'Pita Gold', 'S', 'K.A.023', 41, 2, '1756281542_dcfbcd53dae3a36560a8.png', '2025-08-27 07:59:02', '2025-08-27 07:59:02', NULL),
(676, 'kain-putih-831', 'Kain Putih', 'S', 'K.B.001', 42, 2, '1756281960_903e55593816b5edb132.png', '2025-08-27 08:06:00', '2025-08-27 08:06:00', NULL),
(677, 'topi-hitam-301', 'Topi Hitam', 'S', 'K.B.002', 42, 2, '1756281998_664738f22726c045ea68.png', '2025-08-27 08:06:38', '2025-08-27 08:06:38', NULL),
(678, 'cap-putih-bms-947', 'Cap Putih BMS', 'S', 'K.B.003', 42, 2, '1756282036_22a18c9c38e6b4e1d771.png', '2025-08-27 08:07:16', '2025-08-27 08:07:16', NULL),
(679, 'topi-christmast-290', 'Topi Christmast', 'S', 'K.B.004', 42, 2, '1756282073_4c7174a366d483736515.png', '2025-08-27 08:07:53', '2025-08-27 08:07:53', NULL),
(680, 'topi-christmast-801', 'Topi Christmast', 'M', 'K.B.005', 42, 2, '1756282120_73deaf83baab6949cf08.png', '2025-08-27 08:08:40', '2025-08-27 08:08:40', NULL),
(681, 'topi-christmast-962', 'Topi Christmast', 'L', 'K.B.006', 42, 2, '1756282160_4bd4f113b3a40b591dcd.png', '2025-08-27 08:09:20', '2025-08-27 08:09:20', NULL),
(682, 'topi-christmast-pattern-956', 'Topi Christmast Pattern', 'S', 'K.B.007', 42, 2, '1756282195_2bd1f92c22277182a9d9.png', '2025-08-27 08:09:55', '2025-08-27 08:09:55', NULL),
(683, 'bondu-rusa-merah-292', 'Bondu Rusa Merah', 'S', 'K.B.008', 42, 2, '1756282224_5a36435e9f3393a864d8.png', '2025-08-27 08:10:24', '2025-08-27 08:10:24', NULL),
(684, 'bondu-rusa-coklat-314', 'Bondu Rusa Coklat', 'S', 'K.B.009', 42, 2, '1756282253_c6fd80f89fbead4c700f.png', '2025-08-27 08:10:53', '2025-08-27 08:10:53', NULL),
(685, 'rok-putih-397', 'Rok Putih', 'S', 'K.B.010', 42, 2, '1756282289_f4818e8c8b4098b36ec1.png', '2025-08-27 08:11:29', '2025-08-27 08:11:29', NULL),
(686, 'kipas-biru-992', 'Kipas Biru', 'S', 'K.B.011', 42, 2, '1756282322_c0edc81b2894e6a90a1b.png', '2025-08-27 08:12:02', '2025-08-27 08:12:02', NULL),
(687, 'kipas-hitam-901', 'Kipas Hitam', 'S', 'K.B.012', 42, 2, '1756282360_baca685c5a5dd57b7694.png', '2025-08-27 08:12:40', '2025-08-27 08:12:40', NULL),
(688, 'kipas-putih-motif-251', 'Kipas Putih Motif', 'S', 'K.B.013', 42, 2, '1756282398_6c961d71a1d9be22afd2.png', '2025-08-27 08:13:18', '2025-08-27 08:13:18', NULL),
(689, 'bondu-merah-822', 'Bondu Merah', 'S', 'K.B.014', 42, 2, '1756282425_2fd2b396b04c431d218f.png', '2025-08-27 08:13:45', '2025-08-27 08:13:45', NULL),
(690, 'bondu-oren-288', 'Bondu Oren', 'S', 'K.B.015', 42, 2, '1756282453_9e15ca7fdc02aecea058.png', '2025-08-27 08:14:13', '2025-08-27 08:14:13', NULL),
(691, 'ikat-gold-456', 'Ikat Gold', 'S', 'K.C.001', 43, 2, '1756286896_70129b8a378f0e03d1e9.png', '2025-08-27 09:28:16', '2025-08-27 09:28:16', NULL),
(692, 'ikat-biru-coklat-279', 'Ikat Biru Coklat', 'S', 'K.C.002', 43, 2, '1756286931_3581c63913c6e7fab46b.png', '2025-08-27 09:28:51', '2025-08-27 09:28:51', NULL),
(693, 'ikat-segitiga-gold-354', 'Ikat Segitiga Gold', 'S', 'K.C.003', 43, 2, '1756286966_79b2c7832dcb6757a317.png', '2025-08-27 09:29:26', '2025-08-27 09:29:26', NULL),
(694, 'ikat-merah-393', 'Ikat Merah', 'S', 'K.C.004', 43, 2, '1756286999_9be6288c71de0082bcfd.png', '2025-08-27 09:29:59', '2025-08-27 09:29:59', NULL),
(695, 'bros-bunga-melati-160', 'Bros Bunga Melati', 'S', 'K.C.005', 43, 2, '1756287026_bdd7cbdc7f4a547e0cf4.png', '2025-08-27 09:30:26', '2025-08-27 09:30:26', NULL),
(696, 'clip-brown-742', 'Clip Brown', 'S', 'K.C.006', 43, 2, '1756287063_ce36f0d3ac09af1a9476.png', '2025-08-27 09:31:03', '2025-08-27 09:31:03', NULL),
(697, 'pita-gold-biru-305', 'Pita Gold Biru', 'S', 'K.C.007', 43, 2, '1756287126_37ab98e9356c3239b6b4.png', '2025-08-27 09:32:06', '2025-08-27 09:32:06', NULL),
(698, 'pita-hijau-merah-220', 'Pita Hijau Merah', 'S', 'K.C.001', 43, 2, '1756287156_4a383b6c6ff013226c7a.png', '2025-08-27 09:32:36', '2025-08-27 09:32:36', NULL),
(699, 'tali-baju-navy-157', 'Tali Baju Navy', 'S', 'K.C.009', 43, 2, '1756287225_bf3a258418cb9f72c3c7.png', '2025-08-27 09:33:45', '2025-08-27 09:33:45', NULL),
(700, 'tali-baju-hitam-398', 'Tali Baju Hitam', 'S', 'K.C.010', 43, 2, '1756287358_7318d7ad83a30df9fc07.png', '2025-08-27 09:35:58', '2025-08-27 09:35:58', NULL),
(701, 'karet-korset-coklat-349', 'Karet Korset Coklat', 'S', 'K.C.011', 43, 2, '1756287471_3e89851af1e597d02d7f.png', '2025-08-27 09:37:51', '2025-08-27 09:38:02', NULL),
(702, 'karet-korset-hitam-823', 'Karet Korset Hitam', 'S', 'K.C.012', 43, 2, '1756287515_918dd54935ea7c36cadf.png', '2025-08-27 09:38:35', '2025-08-27 09:38:35', NULL),
(703, 'sanggul-2-596', 'Sanggul 2', 'S', 'K.C.013', 43, 2, '1756287554_16f9181259c8172c7e1e.png', '2025-08-27 09:39:14', '2025-08-27 09:39:14', NULL),
(704, 'pita-oren-733', 'Pita Oren', 'S', 'K.C.014', 43, 2, '1756287583_56be4f27d08b19910f93.png', '2025-08-27 09:39:43', '2025-08-27 09:39:43', NULL),
(705, 'sabuk-cream-606', 'Sabuk Cream', 'S', 'K.C.015', 43, 2, '1756287617_0c52558cc44101ce5d6d.png', '2025-08-27 09:40:17', '2025-08-27 09:40:17', NULL),
(706, 'sabuk-hitam-605', 'Sabuk Hitam', 'S', 'K.C.016', 43, 2, '1756287648_6bb7f33a4729de36b724.png', '2025-08-27 09:40:48', '2025-08-27 09:40:48', NULL),
(707, 'peci-merah-203', 'Peci Merah', 'S', 'K.C.017', 43, 2, '1756288079_b946070f0b8e711e9ffe.png', '2025-08-27 09:47:59', '2025-08-27 09:47:59', NULL),
(708, 'peci-payet-927', 'Peci Payet', 'S', 'K.C.018', 43, 2, '1756288110_dd271cb0a8023f821f14.png', '2025-08-27 09:48:30', '2025-08-27 09:48:30', NULL),
(709, 'ikat-pink-976', 'Ikat Pink', 'S', 'K.C.019', 43, 2, '1756288137_b124b1ed6b72f03dc43c.png', '2025-08-27 09:48:57', '2025-08-27 09:48:57', NULL),
(710, 'gelang-2-17', 'Gelang 2', 'S', 'K.C.020', 43, 2, '1756288176_363f4c00c19f971b8a56.png', '2025-08-27 09:49:36', '2025-08-27 09:49:36', NULL),
(711, 'tali-tambang-765', 'Tali Tambang', 'S', 'K.C.021', 43, 2, '1756288255_4c67524ea10d46cd5d06.png', '2025-08-27 09:50:55', '2025-08-27 09:50:55', NULL),
(712, 'bros-cyan-mp-561', 'Bros Cyan MP', 'S', 'K.C.022', 43, 2, '1756288286_5dfdfe24d4cc1d58d82d.png', '2025-08-27 09:51:26', '2025-08-27 09:52:09', NULL),
(713, 'bros-putih-mp-450', 'Bros Putih MP', 'S', 'K.C.023', 43, 2, '1756288319_f46b71113a9ff366d30a.png', '2025-08-27 09:51:59', '2025-08-27 09:51:59', NULL),
(714, 'bros-kuning-mp-122', 'Bros Kuning MP', 'S', 'K.C.024', 43, 2, '1756288356_29499dab28fec0c3fad4.png', '2025-08-27 09:52:36', '2025-08-27 09:52:36', NULL),
(715, 'kawat-gorden-601', 'Kawat Gorden', 'S', 'K.C.025', 43, 2, '1756288401_22baeb64ad13cad0bbe3.png', '2025-08-27 09:53:21', '2025-08-27 09:53:21', NULL),
(716, 'selendang-panin-hitam-260', 'Selendang Panin Hitam ', 'S', 'K.C.026', 43, 2, '1756288468_0c37a9af58457c09d82e.png', '2025-08-27 09:54:28', '2025-08-27 09:54:28', NULL),
(717, 'stick-hijau-277', 'Stick Hijau', 'S', 'K.C.027', 43, 2, '1756288507_40fab492412be17a52dc.png', '2025-08-27 09:55:07', '2025-08-27 09:55:07', NULL),
(718, 'pengait-gorden-839', 'Pengait Gorden', 'S', 'K.C.028', 43, 2, '1756288540_b84326e38777d7b7bc67.png', '2025-08-27 09:55:40', '2025-08-27 09:55:40', NULL),
(719, 'name-tag-pharel-737', 'Name Tag Pharel', 'S', 'K.C.029', 43, 2, '1756288577_e46306521560adabd102.png', '2025-08-27 09:56:17', '2025-08-27 09:56:17', NULL),
(720, 'ring-baud-47', 'Ring Baud', 'S', 'K.C.030', 43, 2, '1756288602_c3d23e9e73895b7b6b54.png', '2025-08-27 09:56:42', '2025-08-27 09:56:42', NULL),
(721, 'benang-kasur-155', 'Benang Kasur', 'S', 'K.C.031', 43, 2, '1756288641_3519a7816375834c3780.png', '2025-08-27 09:57:21', '2025-08-27 09:57:21', NULL),
(722, 'bros-kuning-65', 'Bros Kuning', 'S', 'K.C.032', 43, 2, '1756288685_0c441d9c3706e2043b52.png', '2025-08-27 09:58:05', '2025-08-27 09:58:05', NULL),
(723, 'bros-biru-772', 'Bros Biru', 'S', 'K.C.033', 43, 2, '1756288714_97a15065870523b9d2ef.png', '2025-08-27 09:58:34', '2025-08-27 09:58:34', NULL),
(724, 'kayu-248', 'Kayu', 'S', 'K.C.034', 43, 2, '1756288746_30d31d0a8888a414f0d2.png', '2025-08-27 09:59:06', '2025-08-27 09:59:06', NULL),
(725, 'sedotan-bunga-870', 'Sedotan Bunga', 'S', 'K.C.035', 43, 2, '1756288778_b6b29e52f702207dead7.png', '2025-08-27 09:59:38', '2025-08-27 09:59:38', NULL),
(726, 'bendera-merah-752', 'Bendera Merah', 'S', 'K.C.036', 43, 2, '1756288825_aeeea8735f01d69015d4.png', '2025-08-27 10:00:25', '2025-08-27 10:00:25', NULL),
(727, 'ikat-gold-batik-414', 'Ikat Gold Batik', 'S', 'K.C.037', 43, 2, '1756288855_17b6fcc83b2229a8e3c3.png', '2025-08-27 10:00:55', '2025-08-27 10:00:55', NULL),
(728, 'ikat-gold-174', 'Ikat Gold', 'S', 'K.C.038', 43, 2, '1756288907_ac5a3a12daebae4db451.png', '2025-08-27 10:01:47', '2025-08-27 10:01:47', NULL),
(729, 'ikat-pink-batik-945', 'Ikat Pink Batik', 'S', 'K.C.039', 43, 2, '1756288935_ad32c2352400e4fdc069.png', '2025-08-27 10:02:15', '2025-08-27 10:02:15', NULL),
(730, 'ikat-batik-black-851', 'Ikat Batik Black', 'S', 'K.C.040', 43, 2, '1756288967_68047262b970f872ad44.png', '2025-08-27 10:02:47', '2025-08-27 10:02:47', NULL),
(731, 'sarung-silver-titik-977', 'Sarung Silver Titik', 'S', 'K.C.041', 43, 2, '1756289010_3f6ce380e410c8101d35.png', '2025-08-27 10:03:30', '2025-08-27 10:03:30', NULL),
(732, 'ikat-silver-216', 'Ikat Silver', 'S', 'K.C.042', 43, 2, '1756289040_e5d630ed02e28ab27144.png', '2025-08-27 10:04:00', '2025-08-27 10:04:00', NULL),
(733, 'ikat-irian-bulu-354', 'Ikat Irian Bulu', 'S', 'K.C.043', 43, 2, '1756289079_c53f36bc9bf688330a0e.png', '2025-08-27 10:04:39', '2025-08-27 10:04:39', NULL),
(734, 'ikat-putih-12', 'Ikat Putih', 'S', 'K.C.044', 43, 2, '1756289161_f9d371a7d6cba330b8ab.png', '2025-08-27 10:06:01', '2025-08-27 10:06:01', NULL),
(735, 'bunga-hitam-694', 'Bunga Hitam', 'S', 'K.C.045', 43, 2, '1756289206_a718d8348a7bc47b5ed3.png', '2025-08-27 10:06:46', '2025-08-27 10:06:46', NULL),
(736, 'kalung-sun-gold-460', 'Kalung Sun Gold', 'S', 'K.D.001', 44, 2, '1756289276_2647c47fad0cf3686547.png', '2025-08-27 10:07:56', '2025-08-27 10:07:56', NULL),
(737, 'kalung-5-rantai-gold-461', 'Kalung 5 Rantai Gold', 'S', 'K.D.002', 44, 2, '1756289357_95a239fbe2a900ddc7c2.png', '2025-08-27 10:09:17', '2025-08-27 10:09:17', NULL),
(738, 'kalung-daun-gold-165', 'Kalung Daun Gold', 'S', 'K.D.003', 44, 2, '1756289390_1afeae0805f8d4895039.png', '2025-08-27 10:09:50', '2025-08-27 10:09:50', NULL),
(739, 'dasi-kupu-kupu-ungu-386', 'Dasi Kupu Kupu Ungu', 'S', 'K.E.001', 45, 2, '1756289505_fb095e7a3e6dc073ea66.png', '2025-08-27 10:11:45', '2025-08-27 10:11:45', NULL),
(740, 'dasi-kupu-kupu-merah-352', 'Dasi Kupu Kupu Merah', 'S', 'K.E.002', 45, 2, '1756289536_1001e94a05c43be61ef2.png', '2025-08-27 10:12:16', '2025-08-27 10:12:16', NULL),
(741, 'dasi-kupu-kupu-abu-88', 'Dasi Kupu Kupu Abu', 'S', 'K.E.003', 45, 2, '1756289565_5d42e1a8ac0ba8228b3d.png', '2025-08-27 10:12:45', '2025-08-27 10:12:45', NULL),
(742, 'dasi-kupu-kupu-ungu-496', 'Dasi Kupu Kupu Ungu', 'S', 'K.E.004', 45, 2, '1756289626_6e635bc53afb691d1a9c.png', '2025-08-27 10:13:46', '2025-08-27 10:13:46', NULL),
(743, 'dasi-kupu-kupu-silver-493', 'Dasi Kupu Kupu Silver', 'S', 'K.E.005', 45, 2, '1756289662_a144e44a09ea8ec50afb.png', '2025-08-27 10:14:22', '2025-08-27 10:14:22', NULL),
(744, 'dasi-abu-abu-394', 'Dasi Abu Abu', 'S', 'K.E.006', 45, 2, '1756289694_26e160a34711b17a5aca.png', '2025-08-27 10:14:54', '2025-08-27 10:14:54', NULL),
(745, 'dasi-kupu-kupu-navy-729', 'Dasi Kupu Kupu Navy', 'S', 'K.E.007', 45, 2, '1756289725_460b6282837633ea8051.png', '2025-08-27 10:15:25', '2025-08-27 10:15:25', NULL),
(746, 'dasi-kupu-kupu-hitam-598', 'Dasi Kupu Kupu Hitam', 'S', 'K.E.008', 45, 2, '1756289753_859ca3f1c810e1bafa15.png', '2025-08-27 10:15:53', '2025-08-27 10:15:53', NULL),
(747, 'dasi-kupu-kupu-hijau-369', 'Dasi Kupu Kupu Hijau', 'S', 'K.E.009', 45, 2, '1756289800_1d5c794e09bb37d41e39.png', '2025-08-27 10:16:40', '2025-08-27 10:16:40', NULL),
(748, 'dasi-kupu-kupu-cyan-batik-14', 'Dasi Kupu Kupu Cyan Batik', 'S', 'K.E.010', 45, 2, '1756289865_47eaeafb23731b937ff4.png', '2025-08-27 10:17:45', '2025-08-27 10:17:45', NULL),
(749, 'dasi-kupu-kupu-merah-108', 'Dasi Kupu Kupu Merah', 'S', 'K.E.011', 45, 2, '1756289920_367eea58fe526e091a14.png', '2025-08-27 10:18:40', '2025-08-27 10:18:40', NULL),
(750, 'dasi-kupu-kupu-merah-304', 'Dasi Kupu Kupu Merah', 'M', 'K.E.012', 45, 2, '1756289979_8e46f71cab753bdbf2d7.png', '2025-08-27 10:19:39', '2025-08-27 10:19:39', NULL),
(751, 'dasi-kupu-kupu-biru-13', 'Dasi Kupu Kupu Biru', 'S', 'K.E.013', 45, 2, '1756290034_36d15307c37ee74f6a3c.png', '2025-08-27 10:20:34', '2025-08-27 10:20:34', NULL),
(752, 'dasi-kupu-kupu-abu-titik-354', 'Dasi Kupu Kupu Abu Titik', 'S', 'K.E.014', 45, 2, '1756290073_242e6e8381cb97b9d040.png', '2025-08-27 10:21:13', '2025-08-27 10:21:13', NULL),
(753, 'dasi-8-warna-430', 'Dasi 8 Warna', 'S', 'K.E.015', 45, 2, '1756290112_bc114142cc522882c8ab.png', '2025-08-27 10:21:52', '2025-08-27 10:21:52', NULL),
(754, 'dasi-abu-262', 'Dasi Abu', 'S', 'K.E.016', 45, 2, '1756290145_356a51c9c90ac89caf1a.png', '2025-08-27 10:22:25', '2025-08-27 10:22:25', NULL),
(755, 'dasi-hijau-tua-575', 'Dasi Hijau Tua', 'S', 'K.E.017', 45, 2, '1756290188_1832cb2305d931b9aeb5.png', '2025-08-27 10:23:08', '2025-08-27 10:23:08', NULL),
(756, 'dasi-coklat-336', 'Dasi Coklat', 'S', 'K.E.018', 45, 2, '1756290292_67222b8a9f5757fb4603.png', '2025-08-27 10:24:52', '2025-08-27 10:24:52', NULL),
(757, 'dasi-biru-182', 'Dasi Biru', 'S', 'K.E.019', 45, 2, '1756290324_3df8c5954c0085cce964.png', '2025-08-27 10:25:24', '2025-08-27 10:25:24', NULL),
(758, 'dasi-dasi-261', 'Dasi Dasi', 'S', 'K.E.020', 45, 2, '1756290385_945fc93e2da03f3453ef.png', '2025-08-27 10:26:25', '2025-08-27 10:26:25', NULL),
(759, 'anting-gold-873', 'Anting Gold', 'S', 'R1.A001', 46, 2, '1756347379_227195a693385f02ce22.png', '2025-08-28 02:16:19', '2025-08-28 02:16:19', NULL),
(760, 'anting-gold-2-557', 'Anting Gold 2', 'S', 'R1.A002', 46, 2, '1756347437_89df68d3b0ef96bf6a90.png', '2025-08-28 02:17:17', '2025-08-28 02:17:17', NULL),
(761, 'bros-gold-129', 'Bros Gold', 'S', 'R1.A003', 46, 2, '1756347648_a70ab7a9b1fb9098f83b.png', '2025-08-28 02:20:48', '2025-08-28 02:20:48', NULL),
(762, 'anting-silver-953', 'Anting Silver', 'S', 'R1.A004', 46, 2, '1756347700_ec613cdcaefc3ee016fe.png', '2025-08-28 02:21:40', '2025-08-28 02:21:40', NULL),
(763, 'bros-black-gold-808', 'Bros Black Gold', 'S', 'R1.B001', 46, 2, '1756347819_a1058e53b703ba87cf41.png', '2025-08-28 02:23:39', '2025-08-28 02:23:39', NULL),
(764, 'gelang-silver-194', 'Gelang Silver', 'S', 'R1.B002', 46, 2, '1756347857_96d09dfec88c507f84e1.png', '2025-08-28 02:24:17', '2025-08-28 02:24:17', NULL),
(765, 'gelang-merah-828', 'Gelang Merah', 'S', 'R1.C001', 46, 2, '1756347905_fa3448dd28e640716d5c.png', '2025-08-28 02:25:05', '2025-08-28 02:25:05', NULL),
(766, 'anting-gold-yuping-600', 'Anting Gold Yuping', 'S', 'R1.C002', 46, 2, '1756347948_9d0a54f367941f07939d.png', '2025-08-28 02:25:48', '2025-08-28 02:25:48', NULL),
(767, 'gelang-merah-898', 'Gelang Merah', 'M', 'R1.C001.1', 46, 2, '1756348008_6cc36ae5db952fe79129.png', '2025-08-28 02:26:48', '2025-08-28 02:26:48', NULL),
(768, 'anting-gold-xuping-167', 'Anting Gold Xuping', 'M', 'R1.C002.1', 46, 2, '1756348060_77e813cc1a8035babacb.png', '2025-08-28 02:27:40', '2025-08-28 02:27:40', NULL),
(769, 'bros-black-gold-622', 'Bros Black Gold', 'S', 'R1.D001', 46, 2, '1756348114_61dbe382dc1c0e8078ee.png', '2025-08-28 02:28:34', '2025-08-28 02:28:34', NULL),
(770, 'bros-black-653', 'Bros Black', 'S', 'R1.D002', 46, 2, '1756348151_0523220946555e8d70b6.png', '2025-08-28 02:29:11', '2025-08-28 02:29:11', NULL),
(771, 'kalung-dog-449', 'Kalung Dog', 'S', 'R1.D003', 46, 2, '1756348208_97d7858bd7bcd18d8b49.png', '2025-08-28 02:30:08', '2025-08-28 02:30:08', NULL),
(772, 'bulu-gold-179', 'Bulu Gold', 'S', 'R2.A001', 47, 2, '1756348317_7f1965fa2ac0c0b4f7e5.png', '2025-08-28 02:31:57', '2025-08-28 02:32:49', NULL),
(773, 'bros-gold-diamond-156', 'Bros Gold Diamond', 'S', 'R2.A002', 47, 2, '1756348358_2923c2c52247b72f8f3d.png', '2025-08-28 02:32:38', '2025-08-28 02:32:38', NULL),
(774, 'bros-oval-gold-399', 'Bros Oval Gold', 'S', 'R2.A003', 47, 2, '1756348397_b229c9ba03b372f987d7.png', '2025-08-28 02:33:17', '2025-08-28 02:33:17', NULL),
(775, 'bros-gold-o-302', 'Bros Gold O', 'S', 'R2.A004', 47, 2, '1756348444_69303e2461520f931219.png', '2025-08-28 02:34:04', '2025-08-28 02:34:04', NULL),
(776, 'gantungan-gold-square-85', 'Gantungan Gold Square', 'S', 'R2.A005', 47, 2, '1756348494_977a3748470f3706aabe.png', '2025-08-28 02:34:54', '2025-08-28 02:34:54', NULL),
(777, 'kalung-9-gold-573', 'Kalung 9 Gold', 'S', 'R2.A006', 47, 2, '1756348534_8d363c9c6d00adca6768.png', '2025-08-28 02:35:34', '2025-08-28 02:35:34', NULL),
(778, 'bros-diamond-flower-184', 'Bros Diamond Flower', 'S', 'R2.A007', 47, 2, '1756348583_959ac94af6777cc70bce.png', '2025-08-28 02:36:23', '2025-08-28 02:36:23', NULL),
(779, 'pin-black-bird-521', 'Pin Black Bird', 'S', 'R2.A008', 47, 2, '1756348620_271b924c43a88792516e.png', '2025-08-28 02:37:00', '2025-08-28 02:37:00', NULL),
(780, 'anting-gold-triangle-833', 'Anting Gold Triangle', 'S', 'R2.A009', 47, 2, '1756348666_762fa75b3290b22ef5a6.png', '2025-08-28 02:37:46', '2025-08-28 02:37:46', NULL),
(781, 'anting-leaf-gold-965', 'Anting Leaf Gold', 'S', 'R2.A010', 47, 2, '1756348717_57f4d7d866ef2bf4d188.png', '2025-08-28 02:38:37', '2025-08-28 02:38:37', NULL),
(782, 'anting-gold-water-181', 'Anting Gold Water', 'S', 'R2.A011', 47, 2, '1756348765_2acab6cca2a765499ec2.png', '2025-08-28 02:39:25', '2025-08-28 02:39:25', NULL),
(783, 'anting-rainbow-107', 'Anting Rainbow', 'S', 'R2.A012', 47, 2, '1756348812_e09d0c1a65780a0d0af4.png', '2025-08-28 02:40:12', '2025-08-28 02:40:12', NULL),
(784, 'bros-gold-motif-725', 'Bros Gold Motif', 'S', 'R2.A013', 47, 2, '1756348850_d3f43dc230bdd5d6cceb.png', '2025-08-28 02:40:50', '2025-08-28 02:40:50', NULL),
(785, 'bros-4-gold-291', 'Bros 4 Gold', 'S', 'R2.A014', 47, 2, '1756348898_9de6ecb8b2fdade44b4d.png', '2025-08-28 02:41:38', '2025-08-28 02:41:38', NULL),
(786, 'kalung-gold-minang-913', 'Kalung Gold Minang', 'S', 'R2.B001', 47, 2, '1756348947_01bdbe1fee6f2384b76d.png', '2025-08-28 02:42:27', '2025-08-28 02:42:27', NULL),
(787, 'bulu-gold-708', 'Bulu Gold', 'S', 'R2.B002', 47, 2, '1756349001_209334aa59fbb14a860e.png', '2025-08-28 02:43:21', '2025-08-28 02:43:21', NULL),
(788, 'kalung-gold-eye-59', 'Kalung Gold Eye', 'M', 'R2.B003', 47, 2, '1756349055_b6120102574780188c79.png', '2025-08-28 02:44:15', '2025-08-28 02:44:15', NULL),
(789, 'kalung-leaf-diamond-521', 'Kalung Leaf Diamond', 'S', 'R2.C001', 47, 2, '1756349100_4f47fc1a15d62a0ddcc6.png', '2025-08-28 02:45:00', '2025-08-28 02:45:00', NULL),
(790, 'bros-black-flower-14', 'Bros Black Flower', 'S', 'R2.D001', 47, 2, '1756349139_4be1c1d8b49e334923d4.png', '2025-08-28 02:45:39', '2025-08-28 02:45:39', NULL),
(791, 'anting-diamond-75', 'Anting Diamond', 'S', 'R2.D002', 47, 2, '1756349173_8246250cd53f728391e5.png', '2025-08-28 02:46:13', '2025-08-28 02:46:13', NULL),
(792, 'gelang-gold-528', 'Gelang Gold', 'S', 'R2.D003', 47, 2, '1756349212_95834389a49ae2da224c.png', '2025-08-28 02:46:52', '2025-08-28 02:46:52', NULL),
(793, 'jepit-bunga-melati-858', 'Jepit Bunga Melati', 'S', 'R3.A001', 48, 2, '1756352195_c09fc8a115ce5c47ce4b.png', '2025-08-28 03:36:35', '2025-08-28 03:36:35', NULL),
(794, 'gelang-mutiara-557', 'Gelang Mutiara', 'S', 'R3.A002', 48, 2, '1756352222_b0644f9b989d0d93a14a.png', '2025-08-28 03:37:02', '2025-08-28 03:37:02', NULL),
(795, 'bros-ruby-450', 'Bros Ruby', 'S', 'R3.A003', 48, 2, '1756352252_4e1ab5eaed90a28a1bee.png', '2025-08-28 03:37:32', '2025-08-28 03:37:32', NULL),
(796, 'anting-merah-90', 'Anting Merah', 'S', 'R3.A004', 48, 2, '1756352287_c8bdcfed15f05a495474.png', '2025-08-28 03:38:07', '2025-08-28 03:38:07', NULL),
(797, 'anting-ruby-675', 'Anting Ruby', 'S', 'R3.A005', 48, 2, '1756352323_fe5e3b7635758ba63f54.png', '2025-08-28 03:38:43', '2025-08-28 03:38:43', NULL),
(798, 'anitng-ruby-131', 'Anitng Ruby', 'M', 'R3.A006', 48, 2, '1756352350_f0847b02963d2b0ce9ac.png', '2025-08-28 03:39:10', '2025-08-28 03:39:10', NULL),
(799, 'bros-diamond-816', 'Bros Diamond', 'S', 'R3.A007', 48, 2, '1756352402_b5f67a456ecc177df338.png', '2025-08-28 03:40:02', '2025-08-28 03:40:02', NULL),
(800, 'bros-diamond-circle-505', 'Bros Diamond Circle', 'S', 'R3.A008', 48, 2, '1756352441_df20e976a3913933fa02.png', '2025-08-28 03:40:41', '2025-08-28 03:40:41', NULL),
(801, 'gelang-gold-215', 'Gelang Gold', 'S', 'R3.A009', 48, 2, '1756352475_9ba9bfae70a358303521.png', '2025-08-28 03:41:15', '2025-08-28 03:41:15', NULL),
(802, 'slop-hitam-300', 'Slop Hitam', 'S', 'RS.Lt3.001', 49, 2, '1756352550_42901e6f358ecc5ee962.png', '2025-08-28 03:42:30', '2025-08-28 03:42:30', NULL),
(803, 'pentofel-hitam-980', 'Pentofel Hitam', 'S', 'RS.Lt3.002', 49, 2, '1756352579_7f3da6ba5d1621d1cc6f.png', '2025-08-28 03:42:59', '2025-08-28 03:42:59', NULL),
(804, 'boots-hitam-383', 'Boots Hitam', 'S', 'RS.Lt3.003', 49, 2, '1756352603_b7d0200189c49be1b39e.png', '2025-08-28 03:43:23', '2025-08-28 03:43:23', NULL),
(805, 'pentofel-cream-39', 'Pentofel Cream', 'S', 'RS.Lt3.004', 49, 2, '1756352634_969cdd283f6be51eda01.png', '2025-08-28 03:43:54', '2025-08-28 03:43:54', NULL),
(806, 'balet-cream-320', 'Balet Cream', 'S', 'RS.Lt3.005', 49, 2, '1756352674_52b14e29a6db820aaf6e.png', '2025-08-28 03:44:34', '2025-08-28 03:44:34', NULL),
(807, 'pentofel-coklat-580', 'Pentofel Coklat', 'S', 'RS.Lt3.006', 49, 2, '1756352705_1cd54935df84205cae63.png', '2025-08-28 03:45:05', '2025-08-28 03:45:05', NULL),
(808, 'boots-hitam-349', 'Boots Hitam', 'S', 'RS.Lt3.007', 49, 2, '1756352738_38d02e4d763aa15ae2d4.png', '2025-08-28 03:45:38', '2025-08-28 03:45:38', NULL),
(809, 'slop-hitam-gold-457', 'Slop HItam Gold', 'S', 'RS.Lt3.008', 49, 2, '1756352765_b5aa3713c50a149d1110.png', '2025-08-28 03:46:05', '2025-08-28 03:46:05', NULL),
(810, 'slop-hitam-gold-451', 'Slop Hitam Gold', 'S', 'RS.Lt3.009', 49, 2, '1756352796_6800aed7487f9479ab32.png', '2025-08-28 03:46:36', '2025-08-28 03:46:36', NULL),
(811, 'slop-silver-941', 'Slop Silver', 'S', 'RS.Lt3.010', 49, 2, '1756352828_b571272e833c8fa5045c.png', '2025-08-28 03:47:08', '2025-08-28 03:47:08', NULL),
(812, 'slop-rose-989', 'Slop Rose', 'S', 'RS.Lt3.011', 49, 2, '1756352858_76629f40c36efa9d682a.png', '2025-08-28 03:47:38', '2025-08-28 03:47:38', NULL),
(813, 'slop-gold-866', 'Slop Gold', 'S', 'RS.Lt3.012', 49, 2, '1756352885_d1d689ad5ae91bb980c4.png', '2025-08-28 03:48:05', '2025-08-28 03:48:05', NULL),
(814, 'boot-hitam-379', 'Boot Hitam', 'S', 'RS.Lt3.013', 49, 2, '1756352921_c60f41a0bdf1b314a4ce.png', '2025-08-28 03:48:41', '2025-08-28 03:48:41', NULL),
(815, 'boots-cowboy-white-362', 'Boots Cowboy White', 'S', 'RS.Lt3.014', 49, 2, '1756352952_5c84ad2c370a4109bacf.png', '2025-08-28 03:49:12', '2025-08-28 03:49:12', NULL),
(816, 'slop-rose-gold-281', 'Slop Rose Gold', 'S', 'RS.Lt3.015', 49, 2, '1756352979_328d7185c9ccc8158adb.png', '2025-08-28 03:49:39', '2025-08-28 03:49:39', NULL),
(817, 'slop-brown-35', 'Slop Brown', 'S', 'RS.Lt3.016', 49, 2, '1756353006_921475b7dc2e425f58a5.png', '2025-08-28 03:50:06', '2025-08-28 03:50:06', NULL),
(818, 'slop-gold-242', 'Slop Gold', 'S', 'RS.Lt3.017', 49, 2, '1756353039_f356e892292b94c0c681.png', '2025-08-28 03:50:39', '2025-08-28 03:50:39', NULL),
(819, 'slop-yellow-126', 'Slop Yellow', 'S', 'RS.Lt3.018', 49, 2, '1756353064_6f873ab7a37167d59954.png', '2025-08-28 03:51:04', '2025-08-28 03:51:04', NULL),
(820, 'slop-black-jaring-282', 'Slop Black Jaring', 'S', 'RS.Lt3.019', 49, 2, '1756353094_fcfd8a005a66078bc48c.png', '2025-08-28 03:51:34', '2025-08-28 03:52:37', NULL),
(821, 'cek-185', 'cek', 's', 'a', 1, 1, '1756353553_62d0ddae959009a1147e.jpg', '2025-08-28 03:59:13', '2025-08-28 04:00:00', '2025-08-28 04:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `book_stock`
--

CREATE TABLE `book_stock` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `book_stock`
--

INSERT INTO `book_stock` (`id`, `book_id`, `quantity`, `created_at`, `updated_at`, `deleted_at`) VALUES
(36, 36, 1, '2025-08-20 08:24:14', '2025-08-22 09:14:20', NULL),
(37, 37, 1, '2025-08-20 08:26:55', '2025-08-20 09:17:54', NULL),
(38, 38, 1, '2025-08-20 09:16:33', '2025-08-20 09:16:33', NULL),
(39, 39, 1, '2025-08-20 09:17:34', '2025-08-20 09:17:34', NULL),
(40, 40, 1, '2025-08-20 09:20:01', '2025-08-20 09:20:01', NULL),
(41, 41, 1, '2025-08-20 09:21:22', '2025-08-20 09:21:22', NULL),
(42, 42, 1, '2025-08-20 09:23:09', '2025-08-20 09:23:09', NULL),
(43, 43, 1, '2025-08-20 09:23:59', '2025-08-20 09:23:59', NULL),
(44, 44, 1, '2025-08-20 09:29:07', '2025-08-20 09:29:07', NULL),
(45, 45, 1, '2025-08-20 09:36:27', '2025-08-20 09:36:27', NULL),
(46, 46, 1, '2025-08-20 09:38:54', '2025-08-20 09:38:54', NULL),
(47, 47, 1, '2025-08-20 09:40:33', '2025-08-20 09:40:33', NULL),
(48, 48, 1, '2025-08-20 09:41:58', '2025-08-20 09:41:58', NULL),
(49, 49, 1, '2025-08-20 09:45:54', '2025-08-20 09:45:54', NULL),
(50, 50, 1, '2025-08-21 03:14:09', '2025-08-21 03:14:09', NULL),
(51, 51, 1, '2025-08-21 03:15:02', '2025-08-21 03:15:02', NULL),
(52, 52, 1, '2025-08-21 03:16:29', '2025-08-21 03:16:29', NULL),
(53, 53, 1, '2025-08-21 03:17:26', '2025-08-21 03:17:26', NULL),
(54, 54, 1, '2025-08-21 03:18:16', '2025-08-21 03:18:16', NULL),
(55, 55, 1, '2025-08-21 03:19:14', '2025-08-21 03:19:14', NULL),
(56, 56, 1, '2025-08-21 03:20:43', '2025-08-21 03:20:43', NULL),
(57, 57, 1, '2025-08-21 03:21:32', '2025-08-21 03:21:32', NULL),
(58, 58, 1, '2025-08-21 03:22:30', '2025-08-21 03:22:54', NULL),
(59, 59, 1, '2025-08-21 03:23:21', '2025-08-21 03:23:21', NULL),
(60, 60, 1, '2025-08-21 03:24:29', '2025-08-21 03:24:29', NULL),
(61, 61, 1, '2025-08-21 03:25:41', '2025-08-21 03:25:41', NULL),
(62, 62, 1, '2025-08-21 03:26:25', '2025-08-21 03:26:25', NULL),
(63, 63, 1, '2025-08-21 03:27:11', '2025-08-21 03:27:11', NULL),
(64, 64, 1, '2025-08-21 03:28:24', '2025-08-21 03:28:24', NULL),
(65, 65, 1, '2025-08-21 03:29:30', '2025-08-21 03:29:30', NULL),
(66, 66, 1, '2025-08-21 03:31:00', '2025-08-21 03:31:00', NULL),
(67, 67, 1, '2025-08-21 03:31:59', '2025-08-21 03:31:59', NULL),
(68, 68, 1, '2025-08-21 03:32:50', '2025-08-21 03:32:50', NULL),
(69, 69, 1, '2025-08-21 03:33:38', '2025-08-21 03:33:38', NULL),
(70, 70, 1, '2025-08-21 03:34:34', '2025-08-21 03:34:34', NULL),
(71, 71, 1, '2025-08-21 03:35:27', '2025-08-21 03:36:56', NULL),
(72, 72, 1, '2025-08-21 03:37:25', '2025-08-21 03:37:25', NULL),
(73, 73, 1, '2025-08-21 03:37:51', '2025-08-21 03:37:51', NULL),
(74, 74, 1, '2025-08-21 03:43:45', '2025-08-21 03:43:45', NULL),
(75, 75, 1, '2025-08-21 03:44:52', '2025-08-21 03:44:52', NULL),
(76, 76, 1, '2025-08-21 03:45:54', '2025-08-21 03:45:54', NULL),
(77, 77, 1, '2025-08-21 03:46:39', '2025-08-21 03:46:39', NULL),
(78, 78, 1, '2025-08-21 03:48:18', '2025-08-21 03:48:18', NULL),
(79, 79, 1, '2025-08-21 03:49:12', '2025-08-21 03:49:12', NULL),
(80, 80, 1, '2025-08-21 03:50:01', '2025-08-21 03:50:01', NULL),
(81, 81, 1, '2025-08-21 03:50:50', '2025-08-21 03:50:50', NULL),
(82, 82, 1, '2025-08-21 03:51:50', '2025-08-21 03:51:50', NULL),
(83, 83, 1, '2025-08-21 03:52:27', '2025-08-21 03:52:27', NULL),
(84, 84, 1, '2025-08-21 03:53:17', '2025-08-21 03:53:17', NULL),
(85, 85, 1, '2025-08-21 03:53:59', '2025-08-21 03:53:59', NULL),
(86, 86, 1, '2025-08-21 03:55:31', '2025-08-21 03:55:31', NULL),
(87, 87, 1, '2025-08-21 03:56:16', '2025-08-21 03:56:16', NULL),
(88, 88, 1, '2025-08-21 03:57:02', '2025-08-21 03:57:02', NULL),
(89, 89, 1, '2025-08-21 03:57:58', '2025-08-21 03:57:58', NULL),
(90, 90, 1, '2025-08-21 03:58:50', '2025-08-21 03:58:50', NULL),
(91, 91, 1, '2025-08-21 03:59:26', '2025-08-21 03:59:26', NULL),
(92, 92, 1, '2025-08-21 04:03:38', '2025-08-21 04:03:38', NULL),
(93, 93, 1, '2025-08-21 04:04:11', '2025-08-21 04:04:11', NULL),
(94, 94, 1, '2025-08-21 04:04:56', '2025-08-21 04:04:56', NULL),
(95, 95, 1, '2025-08-21 04:05:33', '2025-08-21 04:05:33', NULL),
(96, 96, 1, '2025-08-21 04:06:41', '2025-08-21 04:06:41', NULL),
(97, 97, 1, '2025-08-21 04:07:17', '2025-08-21 04:07:17', NULL),
(98, 98, 1, '2025-08-21 04:07:56', '2025-08-21 04:08:49', NULL),
(99, 99, 1, '2025-08-21 04:08:36', '2025-08-21 04:08:36', NULL),
(100, 100, 1, '2025-08-21 04:09:36', '2025-08-21 04:09:36', NULL),
(101, 101, 1, '2025-08-21 04:11:45', '2025-08-21 04:11:45', NULL),
(102, 102, 1, '2025-08-21 04:12:00', '2025-08-21 04:12:00', NULL),
(103, 103, 1, '2025-08-21 04:12:17', '2025-08-21 04:12:17', NULL),
(104, 104, 1, '2025-08-21 04:13:16', '2025-08-21 04:13:16', NULL),
(105, 105, 1, '2025-08-21 04:14:02', '2025-08-21 04:14:02', NULL),
(106, 106, 1, '2025-08-21 04:14:47', '2025-08-21 04:14:47', NULL),
(107, 107, 1, '2025-08-21 04:15:53', '2025-08-21 04:15:53', NULL),
(108, 108, 1, '2025-08-21 04:17:49', '2025-08-21 04:17:49', NULL),
(109, 109, 1, '2025-08-21 04:19:03', '2025-08-21 04:19:03', NULL),
(110, 110, 1, '2025-08-21 04:19:40', '2025-08-21 04:19:40', NULL),
(111, 111, 1, '2025-08-21 04:20:52', '2025-08-21 04:20:52', NULL),
(112, 112, 1, '2025-08-21 04:21:50', '2025-08-21 04:21:50', NULL),
(113, 113, 1, '2025-08-21 04:23:08', '2025-08-21 04:23:08', NULL),
(114, 114, 1, '2025-08-21 04:23:50', '2025-08-21 04:23:50', NULL),
(115, 115, 1, '2025-08-21 04:24:28', '2025-08-21 04:24:28', NULL),
(116, 116, 1, '2025-08-21 04:25:23', '2025-08-21 04:27:01', NULL),
(117, 117, 1, '2025-08-21 04:26:03', '2025-08-21 04:26:03', NULL),
(118, 118, 1, '2025-08-21 04:26:45', '2025-08-21 04:26:45', NULL),
(119, 119, 1, '2025-08-21 04:27:49', '2025-08-21 04:27:49', NULL),
(120, 120, 1, '2025-08-21 04:28:34', '2025-08-21 04:28:34', NULL),
(121, 121, 1, '2025-08-21 04:29:18', '2025-08-21 04:29:18', NULL),
(122, 122, 1, '2025-08-21 04:29:55', '2025-08-21 04:29:55', NULL),
(123, 123, 1, '2025-08-21 04:30:32', '2025-08-21 04:30:32', NULL),
(124, 124, 1, '2025-08-21 04:31:35', '2025-08-21 04:31:35', NULL),
(125, 125, 1, '2025-08-21 04:32:09', '2025-08-21 04:32:09', NULL),
(126, 126, 1, '2025-08-21 04:33:04', '2025-08-21 04:33:04', NULL),
(127, 127, 1, '2025-08-21 04:33:48', '2025-08-21 04:33:48', NULL),
(128, 128, 1, '2025-08-21 04:34:53', '2025-08-21 04:34:53', NULL),
(129, 129, 1, '2025-08-21 04:35:29', '2025-08-21 04:35:29', NULL),
(130, 130, 1, '2025-08-21 04:36:10', '2025-08-21 04:36:10', NULL),
(131, 131, 1, '2025-08-21 04:41:57', '2025-08-21 04:44:05', NULL),
(132, 132, 1, '2025-08-21 04:43:57', '2025-08-21 04:43:57', NULL),
(133, 133, 1, '2025-08-21 04:44:51', '2025-08-21 04:44:51', NULL),
(134, 134, 1, '2025-08-21 04:45:36', '2025-08-21 04:47:27', NULL),
(135, 135, 1, '2025-08-21 04:46:40', '2025-08-21 04:46:40', NULL),
(136, 136, 1, '2025-08-21 04:47:15', '2025-08-21 04:47:15', NULL),
(137, 137, 1, '2025-08-21 04:48:15', '2025-08-21 04:48:15', NULL),
(138, 138, 1, '2025-08-21 04:49:24', '2025-08-21 04:49:24', NULL),
(139, 139, 1, '2025-08-21 04:50:25', '2025-08-21 04:52:43', NULL),
(140, 140, 1, '2025-08-21 04:51:02', '2025-08-21 04:52:52', NULL),
(141, 141, 1, '2025-08-21 04:52:06', '2025-08-21 04:52:06', NULL),
(142, 142, 1, '2025-08-21 04:52:26', '2025-08-21 04:52:26', NULL),
(143, 143, 1, '2025-08-21 04:53:48', '2025-08-21 04:53:48', NULL),
(144, 144, 1, '2025-08-21 04:54:23', '2025-08-21 04:54:23', NULL),
(145, 145, 1, '2025-08-21 06:52:38', '2025-08-21 06:52:38', NULL),
(146, 146, 1, '2025-08-21 06:53:22', '2025-08-21 06:54:34', NULL),
(147, 147, 1, '2025-08-21 06:54:25', '2025-08-21 06:54:25', NULL),
(148, 148, 1, '2025-08-21 06:55:33', '2025-08-21 06:55:33', NULL),
(149, 149, 1, '2025-08-21 06:56:25', '2025-08-21 06:56:25', NULL),
(150, 150, 1, '2025-08-21 06:57:05', '2025-08-21 06:57:05', NULL),
(151, 151, 1, '2025-08-21 06:57:44', '2025-08-21 06:57:44', NULL),
(152, 152, 1, '2025-08-21 06:58:36', '2025-08-21 06:59:21', NULL),
(153, 153, 1, '2025-08-21 06:59:12', '2025-08-21 06:59:12', NULL),
(154, 154, 1, '2025-08-21 07:00:03', '2025-08-21 07:00:03', NULL),
(155, 155, 1, '2025-08-21 07:00:46', '2025-08-21 07:00:46', NULL),
(156, 156, 1, '2025-08-21 07:01:30', '2025-08-21 07:01:30', NULL),
(157, 157, 1, '2025-08-21 07:02:27', '2025-08-21 07:08:38', NULL),
(158, 158, 1, '2025-08-21 07:03:08', '2025-08-21 07:08:11', NULL),
(159, 159, 1, '2025-08-21 07:04:10', '2025-08-21 07:08:17', NULL),
(160, 160, 1, '2025-08-21 07:05:25', '2025-08-21 07:08:26', NULL),
(161, 161, 1, '2025-08-21 07:07:38', '2025-08-21 07:07:38', NULL),
(162, 162, 1, '2025-08-21 07:09:25', '2025-08-21 07:09:25', NULL),
(163, 163, 1, '2025-08-21 07:09:59', '2025-08-21 07:09:59', NULL),
(164, 164, 1, '2025-08-21 07:10:35', '2025-08-21 07:10:35', NULL),
(165, 165, 1, '2025-08-21 07:11:17', '2025-08-21 07:11:17', NULL),
(166, 166, 1, '2025-08-21 07:11:54', '2025-08-21 07:11:54', NULL),
(167, 167, 1, '2025-08-21 07:12:35', '2025-08-21 07:12:35', NULL),
(168, 168, 1, '2025-08-21 07:13:10', '2025-08-21 07:13:10', NULL),
(169, 169, 1, '2025-08-21 07:13:59', '2025-08-21 07:13:59', NULL),
(170, 170, 1, '2025-08-21 07:14:36', '2025-08-21 07:14:36', NULL),
(171, 171, 1, '2025-08-21 07:15:13', '2025-08-21 07:15:13', NULL),
(172, 172, 1, '2025-08-21 07:15:54', '2025-08-21 07:15:54', NULL),
(173, 173, 1, '2025-08-21 07:17:05', '2025-08-21 07:17:05', NULL),
(174, 174, 1, '2025-08-21 07:17:25', '2025-08-21 07:17:25', NULL),
(175, 175, 1, '2025-08-21 07:18:01', '2025-08-21 07:18:01', NULL),
(176, 176, 1, '2025-08-21 07:19:02', '2025-08-21 07:19:02', NULL),
(177, 177, 1, '2025-08-21 07:19:41', '2025-08-21 07:19:41', NULL),
(178, 178, 1, '2025-08-21 07:21:11', '2025-08-21 07:21:11', NULL),
(179, 179, 1, '2025-08-21 07:21:45', '2025-08-21 07:21:45', NULL),
(180, 180, 1, '2025-08-21 07:22:27', '2025-08-21 07:22:27', NULL),
(181, 181, 1, '2025-08-21 07:23:14', '2025-08-21 07:23:14', NULL),
(182, 182, 1, '2025-08-21 07:23:49', '2025-08-21 07:23:49', NULL),
(183, 183, 1, '2025-08-21 07:24:25', '2025-08-21 07:24:25', NULL),
(184, 184, 1, '2025-08-21 07:25:05', '2025-08-21 07:25:05', NULL),
(185, 185, 1, '2025-08-21 07:25:42', '2025-08-21 07:25:42', NULL),
(186, 186, 1, '2025-08-21 07:26:22', '2025-08-21 07:26:22', NULL),
(187, 187, 1, '2025-08-21 07:26:56', '2025-08-21 07:26:56', NULL),
(188, 188, 1, '2025-08-21 07:27:49', '2025-08-21 07:27:49', NULL),
(189, 189, 1, '2025-08-21 07:28:26', '2025-08-21 07:28:26', NULL),
(190, 190, 1, '2025-08-21 07:30:11', '2025-08-21 07:30:11', NULL),
(191, 191, 1, '2025-08-21 07:30:48', '2025-08-21 07:30:48', NULL),
(192, 192, 1, '2025-08-21 07:31:25', '2025-08-21 07:31:25', NULL),
(193, 193, 1, '2025-08-21 07:32:16', '2025-08-21 07:32:16', NULL),
(194, 194, 1, '2025-08-21 07:33:38', '2025-08-21 07:33:38', NULL),
(195, 195, 1, '2025-08-21 07:34:28', '2025-08-21 07:34:28', NULL),
(196, 196, 1, '2025-08-21 07:35:06', '2025-08-21 07:35:06', NULL),
(197, 197, 1, '2025-08-21 07:35:38', '2025-08-21 07:35:38', NULL),
(198, 198, 1, '2025-08-21 07:39:32', '2025-08-21 07:39:32', NULL),
(199, 199, 1, '2025-08-21 07:41:04', '2025-08-21 07:41:04', NULL),
(200, 200, 1, '2025-08-21 07:43:03', '2025-08-21 07:43:03', NULL),
(201, 201, 1, '2025-08-21 07:44:00', '2025-08-21 07:44:00', NULL),
(202, 202, 1, '2025-08-21 07:44:52', '2025-08-21 07:44:52', NULL),
(203, 203, 1, '2025-08-21 07:45:46', '2025-08-21 07:45:46', NULL),
(204, 204, 1, '2025-08-21 07:46:27', '2025-08-21 07:46:27', NULL),
(205, 205, 1, '2025-08-21 07:47:03', '2025-08-21 07:47:03', NULL),
(206, 206, 1, '2025-08-21 07:47:49', '2025-08-21 07:47:49', NULL),
(207, 207, 1, '2025-08-21 07:48:28', '2025-08-21 07:48:28', NULL),
(208, 208, 1, '2025-08-21 07:49:08', '2025-08-21 07:49:08', NULL),
(209, 209, 1, '2025-08-21 07:49:40', '2025-08-21 07:49:40', NULL),
(210, 210, 1, '2025-08-21 07:53:04', '2025-08-21 07:53:04', NULL),
(211, 211, 1, '2025-08-21 07:53:42', '2025-08-21 07:53:42', NULL),
(212, 212, 1, '2025-08-21 07:54:30', '2025-08-21 07:54:30', NULL),
(213, 213, 1, '2025-08-21 07:55:23', '2025-08-21 07:55:23', NULL),
(214, 214, 1, '2025-08-21 07:56:03', '2025-08-21 07:56:03', NULL),
(215, 215, 1, '2025-08-21 08:06:27', '2025-08-21 08:06:27', NULL),
(216, 216, 1, '2025-08-21 08:07:08', '2025-08-21 08:07:08', NULL),
(217, 217, 1, '2025-08-21 08:08:04', '2025-08-21 08:08:04', NULL),
(218, 218, 1, '2025-08-21 08:08:43', '2025-08-21 08:08:43', NULL),
(219, 219, 1, '2025-08-21 08:09:37', '2025-08-21 08:09:37', NULL),
(220, 220, 1, '2025-08-21 08:10:23', '2025-08-21 08:10:23', NULL),
(221, 221, 1, '2025-08-21 08:11:05', '2025-08-21 08:11:05', NULL),
(222, 222, 1, '2025-08-21 08:11:46', '2025-08-21 08:11:46', NULL),
(223, 223, 1, '2025-08-21 08:12:23', '2025-08-21 08:12:23', NULL),
(224, 224, 1, '2025-08-21 08:13:02', '2025-08-21 08:13:02', NULL),
(225, 225, 1, '2025-08-21 08:13:44', '2025-08-21 08:14:28', NULL),
(226, 226, 1, '2025-08-21 08:14:19', '2025-08-21 08:14:19', NULL),
(227, 227, 1, '2025-08-21 08:15:10', '2025-08-21 08:15:10', NULL),
(228, 228, 1, '2025-08-21 08:15:49', '2025-08-21 08:15:49', NULL),
(229, 229, 1, '2025-08-21 08:18:42', '2025-08-21 08:18:42', NULL),
(230, 230, 1, '2025-08-21 08:19:23', '2025-08-21 08:19:23', NULL),
(231, 231, 1, '2025-08-21 08:20:04', '2025-08-21 08:20:04', NULL),
(232, 232, 1, '2025-08-21 08:20:40', '2025-08-21 08:20:40', NULL),
(233, 233, 1, '2025-08-21 08:21:14', '2025-08-21 08:21:14', NULL),
(234, 234, 1, '2025-08-21 08:21:48', '2025-08-21 08:21:48', NULL),
(235, 235, 1, '2025-08-21 08:22:31', '2025-08-21 08:22:31', NULL),
(236, 236, 1, '2025-08-21 08:23:13', '2025-08-21 08:23:13', NULL),
(237, 237, 1, '2025-08-21 09:11:47', '2025-08-21 09:27:27', NULL),
(238, 238, 1, '2025-08-21 09:12:56', '2025-08-21 09:12:56', NULL),
(239, 239, 1, '2025-08-21 09:14:05', '2025-08-21 09:14:05', NULL),
(240, 240, 1, '2025-08-21 09:15:25', '2025-08-21 09:15:25', NULL),
(241, 241, 1, '2025-08-21 09:16:30', '2025-08-21 09:16:30', NULL),
(242, 242, 1, '2025-08-21 09:17:11', '2025-08-21 09:17:11', NULL),
(243, 243, 1, '2025-08-21 09:19:38', '2025-08-21 09:19:38', NULL),
(245, 245, 1, '2025-08-21 09:22:29', '2025-08-21 09:22:29', NULL),
(246, 246, 1, '2025-08-21 09:23:15', '2025-08-21 09:23:15', NULL),
(247, 247, 1, '2025-08-21 09:25:26', '2025-08-21 09:25:26', NULL),
(248, 248, 1, '2025-08-21 09:26:25', '2025-08-21 09:26:25', NULL),
(249, 249, 1, '2025-08-21 09:27:08', '2025-08-21 09:27:08', NULL),
(250, 250, 1, '2025-08-21 09:28:14', '2025-08-21 09:28:14', NULL),
(251, 251, 1, '2025-08-21 09:29:00', '2025-08-21 09:29:00', NULL),
(252, 252, 1, '2025-08-21 09:29:42', '2025-08-21 09:29:42', NULL),
(253, 253, 1, '2025-08-21 09:30:22', '2025-08-21 09:30:22', NULL),
(254, 254, 1, '2025-08-21 09:31:02', '2025-08-21 09:31:02', NULL),
(255, 255, 1, '2025-08-21 09:31:56', '2025-08-21 09:31:56', NULL),
(256, 256, 1, '2025-08-21 09:32:56', '2025-08-21 09:32:56', NULL),
(257, 257, 1, '2025-08-22 08:50:39', '2025-08-22 08:50:39', NULL),
(258, 258, 1, '2025-08-22 08:51:16', '2025-08-22 08:51:16', NULL),
(259, 259, 1, '2025-08-22 08:51:54', '2025-08-22 08:51:54', NULL),
(260, 260, 1, '2025-08-22 08:52:26', '2025-08-22 08:52:26', NULL),
(261, 261, 1, '2025-08-22 08:53:19', '2025-08-22 08:53:19', NULL),
(262, 262, 1, '2025-08-22 08:53:53', '2025-08-22 08:53:53', NULL),
(263, 263, 1, '2025-08-22 08:54:24', '2025-08-22 08:54:24', NULL),
(264, 264, 1, '2025-08-22 08:54:57', '2025-08-22 08:54:57', NULL),
(265, 265, 1, '2025-08-22 08:55:29', '2025-08-22 08:55:29', NULL),
(266, 266, 1, '2025-08-22 08:56:05', '2025-08-22 08:56:05', NULL),
(267, 267, 1, '2025-08-22 08:56:34', '2025-08-22 08:56:34', NULL),
(268, 268, 1, '2025-08-22 08:57:07', '2025-08-22 08:57:07', NULL),
(269, 269, 1, '2025-08-22 08:57:44', '2025-08-22 08:57:44', NULL),
(270, 270, 1, '2025-08-22 08:58:21', '2025-08-22 08:58:21', NULL),
(271, 271, 1, '2025-08-22 08:59:00', '2025-08-22 08:59:00', NULL),
(272, 272, 1, '2025-08-22 08:59:43', '2025-08-22 08:59:43', NULL),
(273, 273, 1, '2025-08-22 09:01:21', '2025-08-22 09:01:21', NULL),
(274, 274, 1, '2025-08-22 09:01:53', '2025-08-22 09:01:53', NULL),
(275, 275, 1, '2025-08-22 09:02:57', '2025-08-22 09:02:57', NULL),
(276, 276, 1, '2025-08-22 09:03:30', '2025-08-22 09:03:30', NULL),
(277, 277, 1, '2025-08-22 09:04:09', '2025-08-22 09:04:09', NULL),
(278, 278, 1, '2025-08-22 09:04:40', '2025-08-22 09:04:40', NULL),
(279, 279, 1, '2025-08-22 09:05:11', '2025-08-22 09:05:11', NULL),
(280, 280, 1, '2025-08-22 09:05:40', '2025-08-22 09:06:39', NULL),
(281, 281, 1, '2025-08-22 09:06:23', '2025-08-22 09:06:23', NULL),
(282, 282, 1, '2025-08-22 09:07:29', '2025-08-22 09:07:29', NULL),
(283, 283, 1, '2025-08-22 09:08:08', '2025-08-22 09:08:08', NULL),
(284, 284, 1, '2025-08-22 09:08:39', '2025-08-22 09:08:39', NULL),
(285, 285, 1, '2025-08-22 09:09:29', '2025-08-22 09:09:29', NULL),
(286, 286, 1, '2025-08-22 09:10:04', '2025-08-22 09:10:04', NULL),
(287, 287, 1, '2025-08-22 09:10:33', '2025-08-22 09:10:33', NULL),
(288, 288, 1, '2025-08-22 09:11:02', '2025-08-22 09:11:02', NULL),
(289, 289, 1, '2025-08-22 09:12:20', '2025-08-22 09:12:20', NULL),
(290, 290, 1, '2025-08-22 09:12:47', '2025-08-22 09:12:47', NULL),
(291, 291, 1, '2025-08-22 09:13:13', '2025-08-22 09:13:13', NULL),
(292, 292, 1, '2025-08-22 09:13:51', '2025-08-22 09:13:51', NULL),
(293, 293, 1, '2025-08-22 09:15:39', '2025-08-22 09:15:39', NULL),
(294, 294, 1, '2025-08-22 09:16:19', '2025-08-22 09:16:19', NULL),
(295, 295, 1, '2025-08-22 09:17:06', '2025-08-22 09:17:06', NULL),
(296, 296, 1, '2025-08-22 09:18:10', '2025-08-22 09:18:10', NULL),
(297, 297, 1, '2025-08-22 09:18:50', '2025-08-22 09:18:50', NULL),
(298, 298, 1, '2025-08-22 09:19:21', '2025-08-22 09:19:21', NULL),
(299, 299, 1, '2025-08-22 09:20:13', '2025-08-22 09:20:13', NULL),
(300, 300, 1, '2025-08-22 09:20:54', '2025-08-22 09:20:54', NULL),
(301, 301, 1, '2025-08-22 09:21:27', '2025-08-22 09:21:27', NULL),
(302, 302, 1, '2025-08-22 09:22:02', '2025-08-22 09:22:02', NULL),
(303, 303, 1, '2025-08-22 09:22:39', '2025-08-22 09:22:39', NULL),
(304, 304, 1, '2025-08-22 09:23:10', '2025-08-22 09:23:10', NULL),
(305, 305, 1, '2025-08-22 09:23:45', '2025-08-22 09:23:45', NULL),
(306, 306, 1, '2025-08-22 09:24:14', '2025-08-22 09:24:14', NULL),
(307, 307, 1, '2025-08-22 09:24:44', '2025-08-22 09:24:44', NULL),
(308, 308, 1, '2025-08-23 02:25:45', '2025-08-23 02:25:45', NULL),
(309, 309, 1, '2025-08-23 02:26:24', '2025-08-23 02:26:24', NULL),
(310, 310, 1, '2025-08-23 02:26:54', '2025-08-23 02:26:54', NULL),
(311, 311, 1, '2025-08-23 02:27:28', '2025-08-23 02:27:28', NULL),
(312, 312, 1, '2025-08-23 02:28:20', '2025-08-23 02:28:20', NULL),
(313, 313, 1, '2025-08-23 02:29:10', '2025-08-23 02:29:10', NULL),
(314, 314, 1, '2025-08-23 02:29:48', '2025-08-23 02:29:48', NULL),
(315, 315, 1, '2025-08-23 02:30:37', '2025-08-23 02:30:37', NULL),
(316, 316, 1, '2025-08-23 02:31:19', '2025-08-23 02:31:19', NULL),
(317, 317, 1, '2025-08-23 02:32:04', '2025-08-23 02:32:04', NULL),
(318, 318, 1, '2025-08-23 02:32:38', '2025-08-23 02:32:38', NULL),
(319, 319, 1, '2025-08-23 02:33:15', '2025-08-23 02:33:15', NULL),
(320, 320, 1, '2025-08-23 02:33:48', '2025-08-23 02:33:48', NULL),
(321, 321, 1, '2025-08-23 02:34:38', '2025-08-23 02:34:38', NULL),
(322, 322, 1, '2025-08-23 02:35:12', '2025-08-23 02:35:12', NULL),
(323, 323, 1, '2025-08-23 02:36:22', '2025-08-23 02:36:22', NULL),
(324, 324, 1, '2025-08-23 02:37:00', '2025-08-23 02:37:00', NULL),
(325, 325, 1, '2025-08-23 02:37:41', '2025-08-23 02:37:41', NULL),
(326, 326, 1, '2025-08-23 02:37:59', '2025-08-23 02:37:59', NULL),
(327, 327, 1, '2025-08-23 02:38:37', '2025-08-23 02:38:37', NULL),
(328, 328, 1, '2025-08-23 02:39:12', '2025-08-23 02:39:12', NULL),
(329, 329, 1, '2025-08-23 02:40:02', '2025-08-23 02:40:02', NULL),
(330, 330, 1, '2025-08-23 02:40:35', '2025-08-23 02:40:35', NULL),
(331, 331, 1, '2025-08-23 02:42:06', '2025-08-23 02:42:06', NULL),
(332, 332, 1, '2025-08-23 02:42:44', '2025-08-23 02:42:44', NULL),
(333, 333, 1, '2025-08-23 02:43:18', '2025-08-23 02:43:18', NULL),
(334, 334, 1, '2025-08-23 02:43:53', '2025-08-23 02:43:53', NULL),
(335, 335, 1, '2025-08-23 02:45:36', '2025-08-23 02:45:36', NULL),
(336, 336, 1, '2025-08-23 02:46:12', '2025-08-23 02:46:12', NULL),
(337, 337, 1, '2025-08-23 02:46:48', '2025-08-23 02:46:48', NULL),
(338, 338, 1, '2025-08-23 02:48:09', '2025-08-23 02:48:09', NULL),
(339, 339, 1, '2025-08-23 02:48:44', '2025-08-23 02:48:44', NULL),
(340, 340, 1, '2025-08-23 02:49:28', '2025-08-23 02:49:28', NULL),
(341, 341, 1, '2025-08-23 02:50:08', '2025-08-23 02:50:08', NULL),
(342, 342, 1, '2025-08-23 02:52:00', '2025-08-23 02:52:00', NULL),
(343, 343, 1, '2025-08-23 02:52:33', '2025-08-23 02:52:33', NULL),
(344, 344, 1, '2025-08-23 02:53:07', '2025-08-23 02:53:07', NULL),
(345, 345, 1, '2025-08-23 02:54:42', '2025-08-23 02:54:42', NULL),
(346, 346, 1, '2025-08-23 02:55:16', '2025-08-23 02:55:16', NULL),
(347, 347, 1, '2025-08-23 02:56:03', '2025-08-23 02:56:03', NULL),
(348, 348, 1, '2025-08-23 02:56:32', '2025-08-23 02:56:32', NULL),
(349, 349, 1, '2025-08-23 02:57:03', '2025-08-23 02:57:03', NULL),
(350, 350, 1, '2025-08-23 02:57:40', '2025-08-23 02:57:40', NULL),
(351, 351, 1, '2025-08-23 02:58:19', '2025-08-23 02:58:19', NULL),
(352, 352, 1, '2025-08-23 02:58:52', '2025-08-23 02:58:52', NULL),
(353, 353, 1, '2025-08-23 03:01:05', '2025-08-23 03:01:05', NULL),
(354, 354, 1, '2025-08-23 03:01:32', '2025-08-23 03:01:32', NULL),
(355, 355, 1, '2025-08-23 03:02:06', '2025-08-23 03:02:06', NULL),
(356, 356, 1, '2025-08-23 03:02:36', '2025-08-23 03:02:36', NULL),
(357, 357, 1, '2025-08-23 03:03:12', '2025-08-23 03:03:12', NULL),
(358, 358, 1, '2025-08-23 03:03:55', '2025-08-23 03:03:55', NULL),
(359, 359, 1, '2025-08-23 03:04:32', '2025-08-23 03:04:32', NULL),
(360, 360, 1, '2025-08-23 03:05:05', '2025-08-23 03:05:05', NULL),
(361, 361, 1, '2025-08-23 03:05:37', '2025-08-23 03:05:37', NULL),
(362, 362, 1, '2025-08-23 03:06:18', '2025-08-23 03:06:18', NULL),
(363, 363, 1, '2025-08-23 03:07:01', '2025-08-23 03:07:01', NULL),
(364, 364, 1, '2025-08-23 03:07:31', '2025-08-23 03:07:31', NULL),
(365, 365, 1, '2025-08-23 03:08:07', '2025-08-23 03:08:07', NULL),
(366, 366, 1, '2025-08-23 03:08:37', '2025-08-23 03:08:37', NULL),
(367, 367, 1, '2025-08-23 03:09:14', '2025-08-23 03:09:14', NULL),
(368, 368, 1, '2025-08-23 03:09:40', '2025-08-23 03:09:40', NULL),
(369, 369, 1, '2025-08-23 03:10:21', '2025-08-23 03:10:21', NULL),
(370, 370, 1, '2025-08-23 03:10:54', '2025-08-23 03:10:54', NULL),
(371, 371, 1, '2025-08-23 03:11:28', '2025-08-23 03:11:28', NULL),
(372, 372, 1, '2025-08-23 03:12:00', '2025-08-23 03:12:00', NULL),
(373, 373, 1, '2025-08-23 03:12:34', '2025-08-23 03:12:34', NULL),
(374, 374, 1, '2025-08-23 03:13:04', '2025-08-23 03:13:04', NULL),
(375, 375, 1, '2025-08-23 03:13:34', '2025-08-23 03:13:34', NULL),
(376, 376, 1, '2025-08-23 03:14:12', '2025-08-23 03:14:12', NULL),
(377, 377, 1, '2025-08-23 03:14:44', '2025-08-23 03:14:44', NULL),
(378, 378, 1, '2025-08-23 03:15:13', '2025-08-23 03:15:13', NULL),
(379, 379, 1, '2025-08-23 03:16:01', '2025-08-23 03:16:01', NULL),
(380, 380, 1, '2025-08-23 03:16:38', '2025-08-23 03:16:38', NULL),
(381, 381, 1, '2025-08-23 03:17:24', '2025-08-23 03:17:24', NULL),
(382, 382, 1, '2025-08-23 03:18:03', '2025-08-23 03:18:03', NULL),
(383, 383, 1, '2025-08-23 03:19:43', '2025-08-23 03:19:43', NULL),
(384, 384, 1, '2025-08-23 03:20:12', '2025-08-23 03:20:12', NULL),
(385, 385, 1, '2025-08-23 03:20:44', '2025-08-23 03:20:44', NULL),
(386, 386, 1, '2025-08-23 03:21:19', '2025-08-23 03:21:19', NULL),
(387, 387, 1, '2025-08-23 03:21:47', '2025-08-23 03:21:47', NULL),
(388, 388, 1, '2025-08-23 03:24:36', '2025-08-23 03:25:24', NULL),
(389, 389, 1, '2025-08-23 03:25:15', '2025-08-23 03:25:15', NULL),
(390, 390, 1, '2025-08-23 03:26:25', '2025-08-23 03:26:25', NULL),
(391, 391, 1, '2025-08-23 03:27:10', '2025-08-23 03:27:10', NULL),
(392, 392, 1, '2025-08-26 02:57:15', '2025-08-26 02:57:15', NULL),
(393, 393, 1, '2025-08-26 02:58:30', '2025-08-26 02:58:30', NULL),
(394, 394, 1, '2025-08-26 03:08:07', '2025-08-26 03:08:07', NULL),
(395, 395, 1, '2025-08-26 03:08:48', '2025-08-26 03:08:48', NULL),
(396, 396, 1, '2025-08-26 03:09:21', '2025-08-26 03:09:21', NULL),
(397, 397, 1, '2025-08-26 03:09:59', '2025-08-26 03:09:59', NULL),
(398, 398, 1, '2025-08-26 03:10:40', '2025-08-26 03:10:40', NULL),
(399, 399, 1, '2025-08-26 03:11:14', '2025-08-26 03:11:14', NULL),
(400, 400, 1, '2025-08-26 03:12:00', '2025-08-26 03:12:00', NULL),
(401, 401, 1, '2025-08-26 03:12:44', '2025-08-26 03:12:44', NULL),
(402, 402, 1, '2025-08-26 03:13:20', '2025-08-26 03:13:20', NULL),
(403, 403, 1, '2025-08-26 03:13:53', '2025-08-26 03:13:53', NULL),
(404, 404, 1, '2025-08-26 03:14:32', '2025-08-26 03:14:32', NULL),
(405, 405, 1, '2025-08-26 03:15:16', '2025-08-26 03:15:16', NULL),
(406, 406, 1, '2025-08-26 03:15:57', '2025-08-26 03:15:57', NULL),
(407, 407, 1, '2025-08-26 03:16:36', '2025-08-26 03:16:36', NULL),
(408, 408, 1, '2025-08-26 03:19:23', '2025-08-26 03:19:23', NULL),
(410, 410, 1, '2025-08-26 03:21:23', '2025-08-26 03:21:23', NULL),
(411, 411, 1, '2025-08-26 03:22:08', '2025-08-26 03:22:08', NULL),
(412, 412, 1, '2025-08-26 03:22:46', '2025-08-26 03:22:46', NULL),
(413, 413, 1, '2025-08-26 03:23:26', '2025-08-26 03:23:26', NULL),
(414, 414, 1, '2025-08-26 03:23:58', '2025-08-26 03:23:58', NULL),
(415, 415, 1, '2025-08-26 03:24:32', '2025-08-26 03:24:32', NULL),
(416, 416, 1, '2025-08-26 04:51:33', '2025-08-26 04:51:33', NULL),
(417, 417, 1, '2025-08-26 04:52:10', '2025-08-26 04:52:10', NULL),
(418, 418, 1, '2025-08-26 04:52:45', '2025-08-26 04:52:45', NULL),
(419, 419, 1, '2025-08-26 04:53:26', '2025-08-26 04:53:26', NULL),
(420, 420, 1, '2025-08-26 04:54:01', '2025-08-26 04:54:01', NULL),
(421, 421, 1, '2025-08-26 04:54:34', '2025-08-26 04:54:34', NULL),
(422, 422, 1, '2025-08-26 04:55:08', '2025-08-26 04:55:08', NULL),
(423, 423, 1, '2025-08-26 04:55:38', '2025-08-26 04:55:38', NULL),
(424, 424, 1, '2025-08-26 04:56:09', '2025-08-26 04:56:09', NULL),
(425, 425, 1, '2025-08-26 04:56:41', '2025-08-26 04:56:41', NULL),
(426, 426, 1, '2025-08-26 04:58:47', '2025-08-26 04:58:47', NULL),
(427, 427, 1, '2025-08-26 04:59:10', '2025-08-26 04:59:10', NULL),
(428, 428, 1, '2025-08-26 06:14:46', '2025-08-26 06:14:46', NULL),
(429, 429, 1, '2025-08-26 06:15:21', '2025-08-26 06:15:21', NULL),
(430, 430, 1, '2025-08-26 06:15:52', '2025-08-26 06:15:52', NULL),
(431, 431, 1, '2025-08-26 06:16:23', '2025-08-26 06:16:23', NULL),
(432, 432, 1, '2025-08-26 06:17:01', '2025-08-26 06:17:01', NULL),
(433, 433, 1, '2025-08-26 06:17:35', '2025-08-26 06:17:35', NULL),
(434, 434, 1, '2025-08-26 06:18:14', '2025-08-26 06:18:14', NULL),
(435, 435, 1, '2025-08-26 06:18:48', '2025-08-26 06:18:48', NULL),
(436, 436, 1, '2025-08-26 06:19:18', '2025-08-26 06:19:18', NULL),
(437, 437, 1, '2025-08-26 06:20:06', '2025-08-26 06:20:06', NULL),
(438, 438, 1, '2025-08-26 06:20:47', '2025-08-26 06:20:47', NULL),
(439, 439, 1, '2025-08-26 06:21:26', '2025-08-26 06:21:26', NULL),
(440, 440, 1, '2025-08-26 06:22:00', '2025-08-26 06:22:00', NULL),
(441, 441, 1, '2025-08-26 06:22:31', '2025-08-26 06:22:31', NULL),
(442, 442, 1, '2025-08-26 06:22:59', '2025-08-26 06:22:59', NULL),
(443, 443, 1, '2025-08-26 06:23:31', '2025-08-26 06:23:31', NULL),
(444, 444, 1, '2025-08-26 06:51:10', '2025-08-26 06:51:10', NULL),
(445, 445, 1, '2025-08-26 06:51:44', '2025-08-26 06:51:44', NULL),
(446, 446, 1, '2025-08-26 06:52:16', '2025-08-26 06:52:16', NULL),
(447, 447, 1, '2025-08-26 06:59:55', '2025-08-26 06:59:55', NULL),
(448, 448, 1, '2025-08-26 07:00:42', '2025-08-26 07:00:42', NULL),
(449, 449, 1, '2025-08-26 07:01:15', '2025-08-26 07:01:15', NULL),
(450, 450, 1, '2025-08-26 07:01:45', '2025-08-26 07:01:45', NULL),
(451, 451, 1, '2025-08-27 02:43:10', '2025-08-27 02:43:10', NULL),
(452, 452, 1, '2025-08-27 02:43:47', '2025-08-27 02:43:47', NULL),
(453, 453, 1, '2025-08-27 02:44:19', '2025-08-27 02:44:19', NULL),
(454, 454, 1, '2025-08-27 02:44:53', '2025-08-27 02:44:53', NULL),
(455, 455, 1, '2025-08-27 02:45:32', '2025-08-27 02:45:32', NULL),
(456, 456, 1, '2025-08-27 02:46:47', '2025-08-27 02:46:47', NULL),
(457, 457, 1, '2025-08-27 02:47:19', '2025-08-27 02:47:19', NULL),
(458, 458, 1, '2025-08-27 02:48:32', '2025-08-27 02:48:32', NULL),
(459, 459, 1, '2025-08-27 02:49:45', '2025-08-27 02:49:45', NULL),
(460, 460, 1, '2025-08-27 02:50:32', '2025-08-27 02:50:32', NULL),
(461, 461, 1, '2025-08-27 02:54:12', '2025-08-27 02:54:12', NULL),
(462, 462, 1, '2025-08-27 02:55:05', '2025-08-27 02:55:05', NULL),
(463, 463, 1, '2025-08-27 02:55:41', '2025-08-27 02:55:41', NULL),
(464, 464, 1, '2025-08-27 02:56:13', '2025-08-27 02:56:13', NULL),
(465, 465, 1, '2025-08-27 02:56:46', '2025-08-27 02:56:46', NULL),
(466, 466, 1, '2025-08-27 02:57:18', '2025-08-27 02:57:18', NULL),
(467, 467, 1, '2025-08-27 02:57:49', '2025-08-27 02:57:49', NULL),
(468, 468, 1, '2025-08-27 02:58:21', '2025-08-27 02:58:21', NULL),
(469, 469, 1, '2025-08-27 02:59:03', '2025-08-27 02:59:03', NULL),
(470, 470, 1, '2025-08-27 02:59:31', '2025-08-27 02:59:31', NULL),
(471, 471, 1, '2025-08-27 03:00:38', '2025-08-27 03:00:38', NULL),
(472, 472, 1, '2025-08-27 03:01:07', '2025-08-27 03:01:07', NULL),
(473, 473, 1, '2025-08-27 03:01:36', '2025-08-27 03:01:36', NULL),
(474, 474, 1, '2025-08-27 03:02:01', '2025-08-27 03:02:01', NULL),
(475, 475, 1, '2025-08-27 03:02:39', '2025-08-27 03:02:39', NULL),
(476, 476, 1, '2025-08-27 03:03:11', '2025-08-27 03:03:11', NULL),
(477, 477, 1, '2025-08-27 03:03:50', '2025-08-27 03:03:50', NULL),
(478, 478, 1, '2025-08-27 03:04:22', '2025-08-27 03:04:22', NULL),
(479, 479, 1, '2025-08-27 03:08:44', '2025-08-27 03:08:44', NULL),
(480, 480, 1, '2025-08-27 03:09:21', '2025-08-27 03:09:21', NULL),
(481, 481, 1, '2025-08-27 03:09:57', '2025-08-27 03:09:57', NULL),
(482, 482, 1, '2025-08-27 03:10:26', '2025-08-27 03:10:26', NULL),
(483, 483, 1, '2025-08-27 03:11:04', '2025-08-27 03:11:04', NULL),
(484, 484, 1, '2025-08-27 03:11:33', '2025-08-27 03:11:33', NULL),
(485, 485, 1, '2025-08-27 03:12:06', '2025-08-27 03:12:06', NULL),
(486, 486, 1, '2025-08-27 03:12:35', '2025-08-27 03:12:35', NULL),
(487, 487, 1, '2025-08-27 03:13:04', '2025-08-27 03:13:04', NULL),
(488, 488, 1, '2025-08-27 03:13:40', '2025-08-27 03:13:40', NULL),
(489, 489, 1, '2025-08-27 03:14:21', '2025-08-27 03:14:21', NULL),
(490, 490, 1, '2025-08-27 03:14:51', '2025-08-27 03:14:51', NULL),
(491, 491, 1, '2025-08-27 03:15:19', '2025-08-27 03:15:19', NULL),
(492, 492, 1, '2025-08-27 03:15:51', '2025-08-27 03:15:51', NULL),
(493, 493, 1, '2025-08-27 03:16:51', '2025-08-27 03:16:51', NULL),
(494, 494, 1, '2025-08-27 03:23:16', '2025-08-27 03:23:16', NULL),
(495, 495, 1, '2025-08-27 03:24:08', '2025-08-27 03:25:32', NULL),
(496, 496, 1, '2025-08-27 03:24:43', '2025-08-27 03:24:43', NULL),
(497, 497, 1, '2025-08-27 03:25:17', '2025-08-27 03:25:17', NULL),
(498, 498, 1, '2025-08-27 03:26:20', '2025-08-27 03:27:12', NULL),
(499, 499, 1, '2025-08-27 03:27:04', '2025-08-27 03:27:04', NULL),
(500, 500, 1, '2025-08-27 03:27:47', '2025-08-27 03:27:47', NULL),
(501, 501, 1, '2025-08-27 03:28:17', '2025-08-27 03:28:17', NULL),
(502, 502, 1, '2025-08-27 03:29:11', '2025-08-27 03:29:11', NULL),
(503, 503, 1, '2025-08-27 03:29:46', '2025-08-27 03:29:46', NULL),
(504, 504, 1, '2025-08-27 03:30:32', '2025-08-27 03:30:32', NULL),
(505, 505, 1, '2025-08-27 03:30:53', '2025-08-27 03:30:53', NULL),
(506, 506, 1, '2025-08-27 03:31:25', '2025-08-27 03:31:25', NULL),
(507, 507, 1, '2025-08-27 03:32:07', '2025-08-27 03:32:07', NULL),
(508, 508, 1, '2025-08-27 03:32:41', '2025-08-27 03:32:41', NULL),
(509, 509, 1, '2025-08-27 03:33:18', '2025-08-27 03:33:18', NULL),
(510, 510, 1, '2025-08-27 03:33:54', '2025-08-27 03:33:54', NULL),
(511, 511, 1, '2025-08-27 03:34:34', '2025-08-27 03:34:34', NULL),
(512, 512, 1, '2025-08-27 03:35:04', '2025-08-27 03:35:04', NULL),
(513, 513, 1, '2025-08-27 03:35:49', '2025-08-27 03:35:49', NULL),
(514, 514, 1, '2025-08-27 03:36:30', '2025-08-27 03:36:30', NULL),
(515, 515, 1, '2025-08-27 03:37:03', '2025-08-27 03:37:03', NULL),
(516, 516, 1, '2025-08-27 03:37:46', '2025-08-27 03:37:46', NULL),
(517, 517, 1, '2025-08-27 03:38:49', '2025-08-27 03:38:49', NULL),
(518, 518, 1, '2025-08-27 03:39:08', '2025-08-27 03:39:08', NULL),
(519, 519, 1, '2025-08-27 03:39:41', '2025-08-27 03:39:41', NULL),
(520, 520, 1, '2025-08-27 03:40:14', '2025-08-27 03:40:14', NULL),
(521, 521, 1, '2025-08-27 03:40:49', '2025-08-27 03:40:49', NULL),
(522, 522, 1, '2025-08-27 03:41:18', '2025-08-27 03:41:18', NULL),
(523, 523, 1, '2025-08-27 03:41:48', '2025-08-27 03:41:48', NULL),
(524, 524, 1, '2025-08-27 03:42:21', '2025-08-27 03:42:21', NULL),
(525, 525, 1, '2025-08-27 03:44:39', '2025-08-27 03:44:39', NULL),
(526, 526, 1, '2025-08-27 03:45:25', '2025-08-27 03:45:25', NULL),
(527, 527, 1, '2025-08-27 03:46:02', '2025-08-27 03:46:02', NULL),
(528, 528, 1, '2025-08-27 03:46:43', '2025-08-27 03:46:43', NULL),
(529, 529, 1, '2025-08-27 03:47:16', '2025-08-27 03:47:16', NULL),
(530, 530, 1, '2025-08-27 03:48:07', '2025-08-27 03:48:07', NULL),
(531, 531, 1, '2025-08-27 03:48:56', '2025-08-27 03:48:56', NULL),
(532, 532, 1, '2025-08-27 03:49:24', '2025-08-27 03:49:24', NULL),
(533, 533, 1, '2025-08-27 03:49:57', '2025-08-27 03:49:57', NULL),
(534, 534, 1, '2025-08-27 03:50:33', '2025-08-27 03:50:33', NULL),
(535, 535, 1, '2025-08-27 03:51:11', '2025-08-27 03:51:11', NULL),
(536, 536, 1, '2025-08-27 03:51:52', '2025-08-27 03:51:52', NULL),
(537, 537, 1, '2025-08-27 03:52:24', '2025-08-27 03:52:24', NULL),
(538, 538, 1, '2025-08-27 03:52:54', '2025-08-27 03:52:54', NULL),
(539, 539, 1, '2025-08-27 03:53:28', '2025-08-27 03:53:28', NULL),
(540, 540, 1, '2025-08-27 03:54:00', '2025-08-27 03:54:00', NULL),
(541, 541, 1, '2025-08-27 03:54:39', '2025-08-27 03:54:39', NULL),
(542, 542, 1, '2025-08-27 03:55:16', '2025-08-27 03:55:16', NULL),
(543, 543, 1, '2025-08-27 03:56:10', '2025-08-27 03:56:10', NULL),
(544, 544, 1, '2025-08-27 03:56:47', '2025-08-27 03:56:47', NULL),
(545, 545, 1, '2025-08-27 03:59:09', '2025-08-27 03:59:09', NULL),
(546, 546, 1, '2025-08-27 03:59:57', '2025-08-27 03:59:57', NULL),
(547, 547, 1, '2025-08-27 04:00:43', '2025-08-27 04:00:43', NULL),
(548, 548, 1, '2025-08-27 04:02:04', '2025-08-27 04:07:32', NULL),
(549, 549, 1, '2025-08-27 04:02:49', '2025-08-27 04:08:25', NULL),
(550, 550, 1, '2025-08-27 04:03:30', '2025-08-27 04:08:38', NULL),
(551, 551, 1, '2025-08-27 04:04:14', '2025-08-27 04:08:49', NULL),
(552, 552, 1, '2025-08-27 04:04:55', '2025-08-27 04:09:03', NULL),
(553, 553, 1, '2025-08-27 04:07:08', '2025-08-27 04:07:08', NULL),
(554, 554, 1, '2025-08-27 04:09:44', '2025-08-27 04:09:44', NULL),
(555, 555, 1, '2025-08-27 04:10:16', '2025-08-27 04:10:16', NULL),
(556, 556, 1, '2025-08-27 04:10:52', '2025-08-27 04:10:52', NULL),
(557, 557, 1, '2025-08-27 04:11:28', '2025-08-27 04:11:28', NULL),
(558, 558, 1, '2025-08-27 04:37:23', '2025-08-27 04:37:23', NULL),
(559, 559, 1, '2025-08-27 04:37:59', '2025-08-27 04:37:59', NULL),
(560, 560, 1, '2025-08-27 04:38:37', '2025-08-27 04:38:37', NULL),
(561, 561, 1, '2025-08-27 04:39:24', '2025-08-27 04:39:24', NULL),
(562, 562, 1, '2025-08-27 04:40:19', '2025-08-27 04:40:19', NULL),
(563, 563, 1, '2025-08-27 04:40:56', '2025-08-27 04:40:56', NULL),
(564, 564, 1, '2025-08-27 04:41:34', '2025-08-27 04:41:34', NULL),
(565, 565, 1, '2025-08-27 04:42:07', '2025-08-27 04:42:07', NULL),
(566, 566, 1, '2025-08-27 04:42:53', '2025-08-27 04:42:53', NULL),
(567, 567, 1, '2025-08-27 04:43:43', '2025-08-27 04:43:43', NULL),
(568, 568, 1, '2025-08-27 04:44:16', '2025-08-27 04:44:16', NULL),
(569, 569, 1, '2025-08-27 04:45:27', '2025-08-27 04:45:27', NULL),
(570, 570, 1, '2025-08-27 04:46:02', '2025-08-27 04:46:02', NULL),
(571, 571, 1, '2025-08-27 04:46:46', '2025-08-27 04:46:46', NULL),
(572, 572, 1, '2025-08-27 04:47:21', '2025-08-27 04:47:21', NULL),
(573, 573, 1, '2025-08-27 04:48:12', '2025-08-27 04:48:12', NULL),
(574, 574, 1, '2025-08-27 04:48:47', '2025-08-27 04:48:47', NULL),
(575, 575, 1, '2025-08-27 04:50:22', '2025-08-27 04:50:22', NULL),
(576, 576, 1, '2025-08-27 06:32:28', '2025-08-27 06:32:28', NULL),
(577, 577, 1, '2025-08-27 06:33:06', '2025-08-27 06:33:06', NULL),
(578, 578, 1, '2025-08-27 06:34:06', '2025-08-27 06:34:06', NULL),
(579, 579, 1, '2025-08-27 06:34:38', '2025-08-27 06:34:38', NULL),
(580, 580, 1, '2025-08-27 06:35:24', '2025-08-27 06:35:24', NULL),
(581, 581, 1, '2025-08-27 06:36:01', '2025-08-27 06:36:01', NULL),
(582, 582, 1, '2025-08-27 06:36:46', '2025-08-27 06:36:46', NULL),
(583, 583, 1, '2025-08-27 06:37:18', '2025-08-27 06:37:18', NULL),
(584, 584, 1, '2025-08-27 06:37:59', '2025-08-27 06:37:59', NULL),
(585, 585, 1, '2025-08-27 06:38:37', '2025-08-27 06:38:37', NULL),
(586, 586, 1, '2025-08-27 06:39:15', '2025-08-27 06:39:15', NULL),
(587, 587, 1, '2025-08-27 06:39:52', '2025-08-27 06:39:52', NULL),
(588, 588, 1, '2025-08-27 06:41:29', '2025-08-27 06:41:29', NULL),
(589, 589, 1, '2025-08-27 06:42:15', '2025-08-27 06:42:15', NULL),
(590, 590, 1, '2025-08-27 06:42:56', '2025-08-27 06:42:56', NULL),
(591, 591, 1, '2025-08-27 06:44:10', '2025-08-27 06:44:10', NULL),
(592, 592, 1, '2025-08-27 06:45:50', '2025-08-27 06:45:50', NULL),
(593, 593, 1, '2025-08-27 06:47:09', '2025-08-27 06:47:09', NULL),
(594, 594, 1, '2025-08-27 06:47:56', '2025-08-27 06:47:56', NULL),
(595, 595, 1, '2025-08-27 06:48:39', '2025-08-27 06:48:39', NULL),
(596, 596, 1, '2025-08-27 06:49:08', '2025-08-27 06:49:08', NULL),
(597, 597, 1, '2025-08-27 06:49:40', '2025-08-27 06:49:40', NULL),
(598, 598, 1, '2025-08-27 06:50:19', '2025-08-27 06:50:19', NULL),
(599, 599, 1, '2025-08-27 06:51:07', '2025-08-27 06:51:07', NULL),
(600, 600, 1, '2025-08-27 06:51:56', '2025-08-27 06:51:56', NULL),
(601, 601, 1, '2025-08-27 06:52:26', '2025-08-27 06:52:26', NULL),
(602, 602, 1, '2025-08-27 06:52:57', '2025-08-27 06:52:57', NULL),
(603, 603, 1, '2025-08-27 06:53:35', '2025-08-27 06:53:35', NULL),
(604, 604, 1, '2025-08-27 06:54:54', '2025-08-27 06:54:54', NULL),
(605, 605, 1, '2025-08-27 06:55:31', '2025-08-27 06:55:31', NULL),
(606, 606, 1, '2025-08-27 06:57:26', '2025-08-27 06:57:26', NULL),
(607, 607, 1, '2025-08-27 06:57:59', '2025-08-27 06:57:59', NULL),
(608, 608, 1, '2025-08-27 07:00:00', '2025-08-27 07:00:00', NULL),
(609, 609, 1, '2025-08-27 07:00:29', '2025-08-27 07:00:29', NULL),
(610, 610, 1, '2025-08-27 07:07:47', '2025-08-27 07:07:47', NULL),
(611, 611, 1, '2025-08-27 07:08:27', '2025-08-27 07:08:27', NULL),
(612, 612, 1, '2025-08-27 07:10:40', '2025-08-27 07:10:40', NULL),
(613, 613, 1, '2025-08-27 07:11:26', '2025-08-27 07:11:26', NULL),
(614, 614, 1, '2025-08-27 07:12:38', '2025-08-27 07:12:38', NULL),
(615, 615, 1, '2025-08-27 07:13:18', '2025-08-27 07:13:18', NULL),
(616, 616, 1, '2025-08-27 07:13:51', '2025-08-27 07:13:51', NULL),
(617, 617, 1, '2025-08-27 07:14:19', '2025-08-27 07:14:19', NULL),
(618, 618, 1, '2025-08-27 07:14:53', '2025-08-27 07:14:53', NULL),
(619, 619, 1, '2025-08-27 07:15:20', '2025-08-27 07:15:20', NULL),
(620, 620, 1, '2025-08-27 07:15:58', '2025-08-27 07:15:58', NULL),
(621, 621, 1, '2025-08-27 07:16:33', '2025-08-27 07:16:33', NULL),
(622, 622, 1, '2025-08-27 07:17:07', '2025-08-27 07:17:07', NULL),
(623, 623, 1, '2025-08-27 07:17:36', '2025-08-27 07:17:36', NULL),
(624, 624, 1, '2025-08-27 07:18:11', '2025-08-27 07:20:59', NULL),
(625, 625, 1, '2025-08-27 07:18:46', '2025-08-27 07:21:12', NULL),
(626, 626, 1, '2025-08-27 07:21:44', '2025-08-27 07:21:44', NULL),
(627, 627, 1, '2025-08-27 07:22:13', '2025-08-27 07:22:13', NULL),
(628, 628, 1, '2025-08-27 07:23:38', '2025-08-27 07:23:38', NULL),
(629, 629, 1, '2025-08-27 07:24:05', '2025-08-27 07:24:05', NULL),
(630, 630, 1, '2025-08-27 07:24:37', '2025-08-27 07:24:37', NULL),
(631, 631, 1, '2025-08-27 07:25:14', '2025-08-27 07:25:14', NULL),
(632, 632, 1, '2025-08-27 07:26:28', '2025-08-27 07:26:28', NULL),
(633, 633, 1, '2025-08-27 07:26:56', '2025-08-27 07:26:56', NULL),
(634, 634, 1, '2025-08-27 07:27:26', '2025-08-27 07:27:26', NULL),
(635, 635, 1, '2025-08-27 07:27:59', '2025-08-27 07:27:59', NULL),
(636, 636, 1, '2025-08-27 07:28:29', '2025-08-27 07:28:29', NULL),
(637, 637, 1, '2025-08-27 07:29:05', '2025-08-27 07:29:05', NULL),
(638, 638, 1, '2025-08-27 07:29:41', '2025-08-27 07:29:41', NULL),
(639, 639, 1, '2025-08-27 07:30:14', '2025-08-27 07:30:14', NULL),
(640, 640, 1, '2025-08-27 07:30:45', '2025-08-27 07:30:45', NULL),
(641, 641, 1, '2025-08-27 07:31:14', '2025-08-27 07:31:14', NULL),
(642, 642, 1, '2025-08-27 07:32:20', '2025-08-27 07:32:20', NULL),
(643, 643, 1, '2025-08-27 07:32:56', '2025-08-27 07:32:56', NULL),
(644, 644, 1, '2025-08-27 07:33:27', '2025-08-27 07:33:27', NULL),
(645, 645, 1, '2025-08-27 07:33:59', '2025-08-27 07:33:59', NULL),
(646, 646, 1, '2025-08-27 07:34:30', '2025-08-27 07:34:30', NULL),
(647, 647, 1, '2025-08-27 07:35:08', '2025-08-27 07:35:08', NULL),
(648, 648, 1, '2025-08-27 07:35:55', '2025-08-27 07:35:55', NULL),
(649, 649, 1, '2025-08-27 07:36:25', '2025-08-27 07:36:25', NULL),
(650, 650, 1, '2025-08-27 07:36:53', '2025-08-27 07:36:53', NULL),
(651, 651, 1, '2025-08-27 07:37:21', '2025-08-27 07:37:21', NULL),
(652, 652, 1, '2025-08-27 07:37:58', '2025-08-27 07:37:58', NULL),
(653, 653, 1, '2025-08-27 07:45:13', '2025-08-27 07:45:13', NULL),
(654, 654, 1, '2025-08-27 07:45:59', '2025-08-27 07:45:59', NULL),
(655, 655, 1, '2025-08-27 07:46:39', '2025-08-27 07:46:39', NULL),
(656, 656, 1, '2025-08-27 07:47:16', '2025-08-27 07:47:16', NULL),
(657, 657, 1, '2025-08-27 07:48:21', '2025-08-27 07:48:21', NULL),
(658, 658, 1, '2025-08-27 07:48:58', '2025-08-27 07:48:58', NULL),
(659, 659, 1, '2025-08-27 07:49:39', '2025-08-27 07:49:39', NULL),
(660, 660, 1, '2025-08-27 07:50:08', '2025-08-27 07:50:08', NULL),
(661, 661, 1, '2025-08-27 07:50:38', '2025-08-27 07:50:38', NULL),
(662, 662, 1, '2025-08-27 07:51:13', '2025-08-27 07:51:13', NULL),
(663, 663, 1, '2025-08-27 07:51:51', '2025-08-27 07:51:51', NULL),
(664, 664, 1, '2025-08-27 07:52:25', '2025-08-27 07:52:25', NULL),
(665, 665, 1, '2025-08-27 07:53:07', '2025-08-27 07:53:07', NULL),
(666, 666, 1, '2025-08-27 07:53:45', '2025-08-27 07:53:45', NULL),
(667, 667, 1, '2025-08-27 07:54:24', '2025-08-27 07:54:24', NULL),
(668, 668, 1, '2025-08-27 07:54:58', '2025-08-27 07:54:58', NULL),
(669, 669, 1, '2025-08-27 07:55:35', '2025-08-27 07:55:35', NULL),
(670, 670, 1, '2025-08-27 07:56:07', '2025-08-27 07:56:07', NULL),
(671, 671, 1, '2025-08-27 07:56:46', '2025-08-27 07:56:46', NULL),
(672, 672, 1, '2025-08-27 07:57:15', '2025-08-27 07:57:15', NULL),
(673, 673, 1, '2025-08-27 07:57:55', '2025-08-27 07:57:55', NULL),
(674, 674, 1, '2025-08-27 07:58:30', '2025-08-27 07:58:30', NULL),
(675, 675, 1, '2025-08-27 07:59:02', '2025-08-27 07:59:02', NULL),
(676, 676, 1, '2025-08-27 08:06:00', '2025-08-27 08:06:00', NULL),
(677, 677, 1, '2025-08-27 08:06:38', '2025-08-27 08:06:38', NULL),
(678, 678, 1, '2025-08-27 08:07:16', '2025-08-27 08:07:16', NULL),
(679, 679, 1, '2025-08-27 08:07:53', '2025-08-27 08:07:53', NULL),
(680, 680, 1, '2025-08-27 08:08:40', '2025-08-27 08:08:40', NULL),
(681, 681, 1, '2025-08-27 08:09:20', '2025-08-27 08:09:20', NULL),
(682, 682, 1, '2025-08-27 08:09:55', '2025-08-27 08:09:55', NULL),
(683, 683, 1, '2025-08-27 08:10:24', '2025-08-27 08:10:24', NULL),
(684, 684, 1, '2025-08-27 08:10:53', '2025-08-27 08:10:53', NULL),
(685, 685, 1, '2025-08-27 08:11:29', '2025-08-27 08:11:29', NULL),
(686, 686, 1, '2025-08-27 08:12:02', '2025-08-27 08:12:02', NULL),
(687, 687, 1, '2025-08-27 08:12:40', '2025-08-27 08:12:40', NULL),
(688, 688, 1, '2025-08-27 08:13:18', '2025-08-27 08:13:18', NULL),
(689, 689, 1, '2025-08-27 08:13:45', '2025-08-27 08:13:45', NULL),
(690, 690, 1, '2025-08-27 08:14:13', '2025-08-27 08:14:13', NULL),
(691, 691, 1, '2025-08-27 09:28:16', '2025-08-27 09:28:16', NULL),
(692, 692, 1, '2025-08-27 09:28:51', '2025-08-27 09:28:51', NULL),
(693, 693, 1, '2025-08-27 09:29:26', '2025-08-27 09:29:26', NULL),
(694, 694, 1, '2025-08-27 09:29:59', '2025-08-27 09:29:59', NULL),
(695, 695, 1, '2025-08-27 09:30:26', '2025-08-27 09:30:26', NULL),
(696, 696, 1, '2025-08-27 09:31:03', '2025-08-27 09:31:03', NULL),
(697, 697, 1, '2025-08-27 09:32:06', '2025-08-27 09:32:06', NULL),
(698, 698, 1, '2025-08-27 09:32:36', '2025-08-27 09:32:36', NULL),
(699, 699, 1, '2025-08-27 09:33:45', '2025-08-27 09:33:45', NULL),
(700, 700, 1, '2025-08-27 09:35:58', '2025-08-27 09:35:58', NULL),
(701, 701, 1, '2025-08-27 09:37:51', '2025-08-27 09:38:02', NULL),
(702, 702, 1, '2025-08-27 09:38:35', '2025-08-27 09:38:35', NULL),
(703, 703, 1, '2025-08-27 09:39:14', '2025-08-27 09:39:14', NULL),
(704, 704, 1, '2025-08-27 09:39:43', '2025-08-27 09:39:43', NULL),
(705, 705, 1, '2025-08-27 09:40:17', '2025-08-27 09:40:17', NULL),
(706, 706, 1, '2025-08-27 09:40:48', '2025-08-27 09:40:48', NULL),
(707, 707, 1, '2025-08-27 09:47:59', '2025-08-27 09:47:59', NULL),
(708, 708, 1, '2025-08-27 09:48:30', '2025-08-27 09:48:30', NULL),
(709, 709, 1, '2025-08-27 09:48:57', '2025-08-27 09:48:57', NULL),
(710, 710, 1, '2025-08-27 09:49:36', '2025-08-27 09:49:36', NULL),
(711, 711, 1, '2025-08-27 09:50:55', '2025-08-27 09:50:55', NULL),
(712, 712, 1, '2025-08-27 09:51:26', '2025-08-27 09:52:09', NULL),
(713, 713, 1, '2025-08-27 09:51:59', '2025-08-27 09:51:59', NULL),
(714, 714, 1, '2025-08-27 09:52:36', '2025-08-27 09:52:36', NULL),
(715, 715, 1, '2025-08-27 09:53:21', '2025-08-27 09:53:21', NULL),
(716, 716, 1, '2025-08-27 09:54:28', '2025-08-27 09:54:28', NULL),
(717, 717, 1, '2025-08-27 09:55:07', '2025-08-27 09:55:07', NULL),
(718, 718, 1, '2025-08-27 09:55:40', '2025-08-27 09:55:40', NULL),
(719, 719, 1, '2025-08-27 09:56:17', '2025-08-27 09:56:17', NULL),
(720, 720, 1, '2025-08-27 09:56:42', '2025-08-27 09:56:42', NULL),
(721, 721, 1, '2025-08-27 09:57:21', '2025-08-27 09:57:21', NULL),
(722, 722, 1, '2025-08-27 09:58:05', '2025-08-27 09:58:05', NULL),
(723, 723, 1, '2025-08-27 09:58:34', '2025-08-27 09:58:34', NULL),
(724, 724, 1, '2025-08-27 09:59:06', '2025-08-27 09:59:06', NULL),
(725, 725, 1, '2025-08-27 09:59:38', '2025-08-27 09:59:38', NULL),
(726, 726, 1, '2025-08-27 10:00:25', '2025-08-27 10:00:25', NULL),
(727, 727, 1, '2025-08-27 10:00:55', '2025-08-27 10:00:55', NULL),
(728, 728, 1, '2025-08-27 10:01:47', '2025-08-27 10:01:47', NULL),
(729, 729, 1, '2025-08-27 10:02:15', '2025-08-27 10:02:15', NULL),
(730, 730, 1, '2025-08-27 10:02:47', '2025-08-27 10:02:47', NULL),
(731, 731, 1, '2025-08-27 10:03:30', '2025-08-27 10:03:30', NULL),
(732, 732, 1, '2025-08-27 10:04:00', '2025-08-27 10:04:00', NULL),
(733, 733, 1, '2025-08-27 10:04:39', '2025-08-27 10:04:39', NULL),
(734, 734, 1, '2025-08-27 10:06:01', '2025-08-27 10:06:01', NULL),
(735, 735, 1, '2025-08-27 10:06:46', '2025-08-27 10:06:46', NULL),
(736, 736, 1, '2025-08-27 10:07:56', '2025-08-27 10:07:56', NULL),
(737, 737, 1, '2025-08-27 10:09:17', '2025-08-27 10:09:17', NULL),
(738, 738, 1, '2025-08-27 10:09:50', '2025-08-27 10:09:50', NULL),
(739, 739, 1, '2025-08-27 10:11:45', '2025-08-27 10:11:45', NULL),
(740, 740, 1, '2025-08-27 10:12:16', '2025-08-27 10:12:16', NULL),
(741, 741, 1, '2025-08-27 10:12:45', '2025-08-27 10:12:45', NULL),
(742, 742, 1, '2025-08-27 10:13:47', '2025-08-27 10:13:47', NULL),
(743, 743, 1, '2025-08-27 10:14:22', '2025-08-27 10:14:22', NULL),
(744, 744, 1, '2025-08-27 10:14:54', '2025-08-27 10:14:54', NULL),
(745, 745, 1, '2025-08-27 10:15:25', '2025-08-27 10:15:25', NULL),
(746, 746, 1, '2025-08-27 10:15:53', '2025-08-27 10:15:53', NULL),
(747, 747, 1, '2025-08-27 10:16:40', '2025-08-27 10:16:40', NULL),
(748, 748, 1, '2025-08-27 10:17:45', '2025-08-27 10:17:45', NULL),
(749, 749, 1, '2025-08-27 10:18:40', '2025-08-27 10:18:40', NULL),
(750, 750, 1, '2025-08-27 10:19:39', '2025-08-27 10:19:39', NULL),
(751, 751, 1, '2025-08-27 10:20:34', '2025-08-27 10:20:34', NULL),
(752, 752, 1, '2025-08-27 10:21:13', '2025-08-27 10:21:13', NULL),
(753, 753, 1, '2025-08-27 10:21:52', '2025-08-27 10:21:52', NULL),
(754, 754, 1, '2025-08-27 10:22:25', '2025-08-27 10:22:25', NULL),
(755, 755, 1, '2025-08-27 10:23:08', '2025-08-27 10:23:08', NULL),
(756, 756, 1, '2025-08-27 10:24:52', '2025-08-27 10:24:52', NULL),
(757, 757, 1, '2025-08-27 10:25:24', '2025-08-27 10:25:24', NULL),
(758, 758, 1, '2025-08-27 10:26:25', '2025-08-27 10:26:25', NULL),
(759, 759, 1, '2025-08-28 02:16:19', '2025-08-28 02:16:19', NULL),
(760, 760, 1, '2025-08-28 02:17:17', '2025-08-28 02:17:17', NULL),
(761, 761, 1, '2025-08-28 02:20:48', '2025-08-28 02:20:48', NULL),
(762, 762, 1, '2025-08-28 02:21:40', '2025-08-28 02:21:40', NULL),
(763, 763, 1, '2025-08-28 02:23:39', '2025-08-28 02:23:39', NULL),
(764, 764, 1, '2025-08-28 02:24:17', '2025-08-28 02:24:17', NULL),
(765, 765, 1, '2025-08-28 02:25:05', '2025-08-28 02:25:05', NULL),
(766, 766, 1, '2025-08-28 02:25:48', '2025-08-28 02:25:48', NULL),
(767, 767, 1, '2025-08-28 02:26:48', '2025-08-28 02:26:48', NULL),
(768, 768, 1, '2025-08-28 02:27:40', '2025-08-28 02:27:40', NULL),
(769, 769, 1, '2025-08-28 02:28:34', '2025-08-28 02:28:34', NULL),
(770, 770, 1, '2025-08-28 02:29:11', '2025-08-28 02:29:11', NULL),
(771, 771, 1, '2025-08-28 02:30:08', '2025-08-28 02:30:08', NULL),
(772, 772, 1, '2025-08-28 02:31:57', '2025-08-28 02:32:49', NULL),
(773, 773, 1, '2025-08-28 02:32:38', '2025-08-28 02:32:38', NULL),
(774, 774, 1, '2025-08-28 02:33:17', '2025-08-28 02:33:17', NULL),
(775, 775, 1, '2025-08-28 02:34:04', '2025-08-28 02:34:04', NULL),
(776, 776, 1, '2025-08-28 02:34:54', '2025-08-28 02:34:54', NULL),
(777, 777, 1, '2025-08-28 02:35:34', '2025-08-28 02:35:34', NULL),
(778, 778, 1, '2025-08-28 02:36:23', '2025-08-28 02:36:23', NULL),
(779, 779, 1, '2025-08-28 02:37:00', '2025-08-28 02:37:00', NULL),
(780, 780, 1, '2025-08-28 02:37:46', '2025-08-28 02:37:46', NULL),
(781, 781, 1, '2025-08-28 02:38:37', '2025-08-28 02:38:37', NULL),
(782, 782, 1, '2025-08-28 02:39:25', '2025-08-28 02:39:25', NULL),
(783, 783, 1, '2025-08-28 02:40:12', '2025-08-28 02:40:12', NULL),
(784, 784, 1, '2025-08-28 02:40:50', '2025-08-28 02:40:50', NULL),
(785, 785, 1, '2025-08-28 02:41:38', '2025-08-28 02:41:38', NULL),
(786, 786, 1, '2025-08-28 02:42:27', '2025-08-28 02:42:27', NULL),
(787, 787, 1, '2025-08-28 02:43:21', '2025-08-28 02:43:21', NULL),
(788, 788, 1, '2025-08-28 02:44:15', '2025-08-28 02:44:15', NULL),
(789, 789, 1, '2025-08-28 02:45:00', '2025-08-28 02:45:00', NULL),
(790, 790, 1, '2025-08-28 02:45:39', '2025-08-28 02:45:39', NULL),
(791, 791, 1, '2025-08-28 02:46:13', '2025-08-28 02:46:13', NULL),
(792, 792, 1, '2025-08-28 02:46:52', '2025-08-28 02:46:52', NULL),
(793, 793, 1, '2025-08-28 03:36:35', '2025-08-28 03:36:35', NULL),
(794, 794, 1, '2025-08-28 03:37:02', '2025-08-28 03:37:02', NULL),
(795, 795, 1, '2025-08-28 03:37:32', '2025-08-28 03:37:32', NULL),
(796, 796, 1, '2025-08-28 03:38:07', '2025-08-28 03:38:07', NULL),
(797, 797, 1, '2025-08-28 03:38:43', '2025-08-28 03:38:43', NULL),
(798, 798, 1, '2025-08-28 03:39:10', '2025-08-28 03:39:10', NULL),
(799, 799, 1, '2025-08-28 03:40:02', '2025-08-28 03:40:02', NULL),
(800, 800, 1, '2025-08-28 03:40:41', '2025-08-28 03:40:41', NULL),
(801, 801, 1, '2025-08-28 03:41:15', '2025-08-28 03:41:15', NULL),
(802, 802, 1, '2025-08-28 03:42:30', '2025-08-28 03:42:30', NULL),
(803, 803, 1, '2025-08-28 03:42:59', '2025-08-28 03:42:59', NULL),
(804, 804, 1, '2025-08-28 03:43:23', '2025-08-28 03:43:23', NULL),
(805, 805, 1, '2025-08-28 03:43:54', '2025-08-28 03:43:54', NULL),
(806, 806, 1, '2025-08-28 03:44:34', '2025-08-28 03:44:34', NULL);
INSERT INTO `book_stock` (`id`, `book_id`, `quantity`, `created_at`, `updated_at`, `deleted_at`) VALUES
(807, 807, 1, '2025-08-28 03:45:05', '2025-08-28 03:45:05', NULL),
(808, 808, 1, '2025-08-28 03:45:38', '2025-08-28 03:45:38', NULL),
(809, 809, 1, '2025-08-28 03:46:05', '2025-08-28 03:46:05', NULL),
(810, 810, 1, '2025-08-28 03:46:36', '2025-08-28 03:46:36', NULL),
(811, 811, 1, '2025-08-28 03:47:08', '2025-08-28 03:47:08', NULL),
(812, 812, 1, '2025-08-28 03:47:38', '2025-08-28 03:47:38', NULL),
(813, 813, 1, '2025-08-28 03:48:05', '2025-08-28 03:48:05', NULL),
(814, 814, 1, '2025-08-28 03:48:41', '2025-08-28 03:48:41', NULL),
(815, 815, 1, '2025-08-28 03:49:13', '2025-08-28 03:49:13', NULL),
(816, 816, 1, '2025-08-28 03:49:39', '2025-08-28 03:49:39', NULL),
(817, 817, 1, '2025-08-28 03:50:06', '2025-08-28 03:50:06', NULL),
(818, 818, 1, '2025-08-28 03:50:39', '2025-08-28 03:50:39', NULL),
(819, 819, 1, '2025-08-28 03:51:04', '2025-08-28 03:51:04', NULL),
(820, 820, 1, '2025-08-28 03:51:34', '2025-08-28 03:52:37', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'JCO', '2025-06-09 09:43:59', '2025-08-20 04:00:11', NULL),
(2, 'BMS', '2025-06-09 09:43:59', '2025-08-20 03:59:00', NULL),
(3, 'ARMONIA', '2025-06-09 09:43:59', '2025-08-20 04:00:28', NULL),
(4, 'TRCC', '2025-06-09 09:43:59', '2025-08-20 04:00:32', NULL),
(5, 'TRMS', '2025-06-09 09:43:59', '2025-08-20 04:00:37', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `fines`
--

CREATE TABLE `fines` (
  `id` int(11) UNSIGNED NOT NULL,
  `loan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount_paid` int(11) UNSIGNED DEFAULT NULL,
  `fine_amount` int(11) UNSIGNED NOT NULL,
  `paid_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `fines_per_day`
--

CREATE TABLE `fines_per_day` (
  `id` int(11) UNSIGNED NOT NULL,
  `amount` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `fines_per_day`
--

INSERT INTO `fines_per_day` (`id`, `amount`, `created_at`, `updated_at`) VALUES
(1, 1000, '2025-06-09 09:23:01', '2025-06-09 09:23:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `loans`
--

CREATE TABLE `loans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` varchar(255) NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `member_id` int(11) UNSIGNED NOT NULL,
  `loan_date` datetime NOT NULL,
  `due_date` date NOT NULL,
  `return_date` datetime DEFAULT NULL,
  `qr_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `loans`
--

INSERT INTO `loans` (`id`, `uid`, `book_id`, `quantity`, `member_id`, `loan_date`, `due_date`, `return_date`, `qr_code`, `created_at`, `updated_at`, `deleted_at`) VALUES
(11, '6ef731eb91e0042e64d72f738b8464775d6a6801', 36, 1, 7, '2025-08-20 16:06:01', '2025-08-27', '2025-08-20 16:09:36', 'aldi-rn_batik-bi_34f24_1756369431.png', '2025-08-20 09:06:01', '2025-08-28 08:23:51', NULL),
(12, '6ca2d223ba221cc116fa5a148cfe9ad56c331331', 36, 1, 7, '2025-08-20 16:06:24', '2025-08-27', '2025-08-20 16:11:30', NULL, '2025-08-20 09:06:24', '2025-08-20 09:11:33', NULL),
(13, '28472d9cc3cd67b5f4d9cf0cc899d2b21d0c5009', 37, 1, 8, '2025-08-20 16:07:38', '2025-09-03', '2025-08-20 16:17:43', NULL, '2025-08-20 09:07:38', '2025-08-20 09:17:46', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `members`
--

CREATE TABLE `members` (
  `id` int(11) UNSIGNED NOT NULL,
  `uid` varchar(255) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` text DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `qr_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `members`
--

INSERT INTO `members` (`id`, `uid`, `first_name`, `last_name`, `email`, `phone`, `address`, `date_of_birth`, `gender`, `qr_code`, `created_at`, `updated_at`, `deleted_at`) VALUES
(7, 'c555b1367e36f3b5951481e3176c3de0eaf49630', 'Aldi', 'RN', 'aldi@gmail.com', '08123456789', 'Bandung', '1998-11-14', 'Male', 'aldi-rn_b8de0_1755672448.png', '2025-08-20 06:47:29', '2025-08-20 09:11:55', '2025-08-20 09:11:55'),
(8, 'becf180cbd6e1252b068189c9f8ad83eefde0139', 'Nur', 'Cahya', 'nur@gmail.com', '083832056754', 'Jakarta', '1999-11-11', 'Female', 'nur-cahya_802b4_1755680826.png', '2025-08-20 09:07:06', '2025-08-21 04:58:32', '2025-08-21 04:58:32'),
(9, '9744ae3cd00364ac90f2180f2c22ddc1a5b08a4c', 'Manusia', 'Kuat', 'manusiakuat@gmail.com', '08123456789', 'Kertanegara', '2001-01-01', 'Male', 'manusia-kuat_26a1c_1755752304.png', '2025-08-21 04:58:24', '2025-08-21 04:58:24', NULL);

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
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2020-12-28-223112', 'CodeIgniter\\Shield\\Database\\Migrations\\CreateAuthTables', 'default', 'CodeIgniter\\Shield', 1749460981, 1),
(2, '2021-07-04-041948', 'CodeIgniter\\Settings\\Database\\Migrations\\CreateSettingsTable', 'default', 'CodeIgniter\\Settings', 1749460981, 1),
(3, '2021-11-14-143905', 'CodeIgniter\\Settings\\Database\\Migrations\\AddContextColumn', 'default', 'CodeIgniter\\Settings', 1749460981, 1),
(4, '2023-08-12-000001', 'App\\Database\\Migrations\\CreateRacksTable', 'default', 'App', 1749460981, 1),
(5, '2023-08-12-000002', 'App\\Database\\Migrations\\CreateCategoriesTable', 'default', 'App', 1749460981, 1),
(6, '2023-08-12-000003', 'App\\Database\\Migrations\\CreateBooksTable', 'default', 'App', 1749460981, 1),
(7, '2023-08-12-000004', 'App\\Database\\Migrations\\CreateBookStockTable', 'default', 'App', 1749460981, 1),
(8, '2023-08-12-000005', 'App\\Database\\Migrations\\CreateMembersTable', 'default', 'App', 1749460981, 1),
(9, '2023-08-12-000006', 'App\\Database\\Migrations\\CreateLoansTable', 'default', 'App', 1749460981, 1),
(10, '2023-08-12-000007', 'App\\Database\\Migrations\\CreateFinesTable', 'default', 'App', 1749460981, 1),
(11, '2024-07-08-045735', 'App\\Database\\Migrations\\CreateFinesPerDayTable', 'default', 'App', 1749460981, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `racks`
--

CREATE TABLE `racks` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `floor` varchar(16) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `racks`
--

INSERT INTO `racks` (`id`, `name`, `floor`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Kontainer Kostum', 'Kontainer 1', '2025-06-09 09:43:59', '2025-08-20 03:39:29', NULL),
(2, 'Kontainer Kostum', 'Kontainer 2', '2025-06-09 09:43:59', '2025-08-20 03:44:39', NULL),
(3, 'Kontainer Kostum', 'Kontainer 3', '2025-06-09 09:43:59', '2025-08-20 03:46:22', NULL),
(4, 'Kontainer Kostum', 'Kontainer 4', '2025-06-09 09:43:59', '2025-08-20 03:46:46', NULL),
(5, 'Kontainer Kostum', 'Kontainer 5', '2025-06-09 09:43:59', '2025-08-20 03:46:58', NULL),
(6, 'Kontainer Kostum', 'Kontainer 6', '2025-06-09 09:43:59', '2025-08-20 03:47:18', NULL),
(7, 'Kontainer Kostum', 'Kontainer 7', '2025-06-09 09:43:59', '2025-08-20 03:47:32', NULL),
(8, 'Kontainer Kostum', 'Kontainer 8', '2025-06-09 09:43:59', '2025-08-20 03:47:44', NULL),
(9, 'Kontainer Kostum', 'Kontainer 9', '2025-06-09 09:43:59', '2025-08-20 03:47:58', NULL),
(10, 'Kontainer Kostum', 'Kontainer 10', '2025-06-09 09:43:59', '2025-08-20 03:48:14', NULL),
(11, 'Kontainer Kostum', 'Kontainer 11', '2025-08-12 07:03:26', '2025-08-20 03:48:25', NULL),
(12, 'Kontainer Kostum', 'Kontainer 12', '2025-08-20 03:48:46', '2025-08-20 03:48:46', NULL),
(13, 'Kontainer Kostum', 'Kontainer 13', '2025-08-20 03:49:04', '2025-08-20 03:49:04', NULL),
(14, 'Kontainer Kostum', 'Kontainer 14', '2025-08-20 03:49:21', '2025-08-20 03:49:21', NULL),
(15, 'Kontainer Kostum', 'Kontainer 15', '2025-08-20 03:49:31', '2025-08-20 03:49:31', NULL),
(16, 'Kontainer Kostum', 'Kontainer 16', '2025-08-20 03:49:38', '2025-08-20 03:49:38', NULL),
(17, 'Kontainer Kostum', 'Kontainer 17', '2025-08-20 03:49:47', '2025-08-20 03:49:47', NULL),
(18, 'Kontainer Kostum', 'Kontainer 18', '2025-08-20 03:49:57', '2025-08-20 03:49:57', NULL),
(19, 'Kontainer Kostum', 'Kontainer 19', '2025-08-20 03:50:13', '2025-08-20 03:50:13', NULL),
(20, 'Kontainer Kostum', 'Kontainer 20', '2025-08-20 03:50:22', '2025-08-20 03:50:22', NULL),
(21, 'Kontainer Kostum', 'Kontainer 21', '2025-08-20 03:50:33', '2025-08-20 03:50:33', NULL),
(22, 'Kontainer Kostum', 'Kontainer 22', '2025-08-20 03:50:50', '2025-08-20 03:50:57', NULL),
(23, 'Kontainer Kostum', 'Kontainer 23', '2025-08-20 03:51:07', '2025-08-20 03:51:07', NULL),
(24, 'Kontainer Kostum', 'Kontainer 24', '2025-08-20 03:51:13', '2025-08-20 03:51:13', NULL),
(25, 'Kontainer Kostum', 'Kontainer 25', '2025-08-20 03:51:18', '2025-08-20 03:51:18', NULL),
(26, 'Kontainer Kostum', 'Kontainer 26', '2025-08-20 03:51:23', '2025-08-20 03:51:23', NULL),
(27, 'Kontainer Kostum', 'Kontainer 27', '2025-08-20 03:51:28', '2025-08-20 03:51:28', NULL),
(28, 'Kontainer Kostum', 'Kontainer 28', '2025-08-20 03:51:37', '2025-08-20 03:51:37', NULL),
(29, 'Kontainer Kostum', 'Kontainer 29', '2025-08-20 03:51:42', '2025-08-20 03:51:42', NULL),
(30, 'Kontainer Kostum', 'Kontainer 30', '2025-08-20 03:51:49', '2025-08-20 03:51:49', NULL),
(31, 'Kontainer Kostum', 'Kontainer 31', '2025-08-20 03:52:01', '2025-08-20 03:52:01', NULL),
(32, 'Kontainer Kostum', 'Kontainer 32', '2025-08-20 03:52:09', '2025-08-20 03:52:09', NULL),
(33, 'Kontainer Kostum', 'Kontainer 33', '2025-08-20 03:52:25', '2025-08-20 03:52:25', NULL),
(34, 'Kontainer Kostum', 'Kontainer 34', '2025-08-20 03:52:31', '2025-08-20 03:52:31', NULL),
(35, 'Rak Kostum', '1 Atas', '2025-08-20 03:52:56', '2025-08-20 03:52:56', NULL),
(36, 'Rak Kostum', '1 Bawah', '2025-08-20 03:53:15', '2025-08-20 03:53:15', NULL),
(37, 'Rak Kostum', '2 Atas', '2025-08-20 03:53:22', '2025-08-20 03:53:22', NULL),
(38, 'Rak Kostum', '2 Bawah', '2025-08-20 03:53:32', '2025-08-20 03:53:32', NULL),
(39, 'Rak Kostum', '3 Atas', '2025-08-20 03:53:38', '2025-08-20 03:53:38', NULL),
(40, 'Rak Kostum', '3 Bawah', '2025-08-20 03:53:44', '2025-08-20 03:53:44', NULL),
(41, 'Kontainer Aksesoris', 'Kontainer A', '2025-08-20 03:54:11', '2025-08-20 03:54:11', NULL),
(42, 'Kontainer Aksesoris', 'Kontainer B', '2025-08-20 03:54:18', '2025-08-20 03:54:18', NULL),
(43, 'Kontainer Aksesoris', 'Kontainer C', '2025-08-20 03:54:25', '2025-08-20 03:54:50', NULL),
(44, 'Kontainer Aksesoris', 'Kontainer D', '2025-08-20 03:54:32', '2025-08-20 03:54:32', NULL),
(45, 'Kontainer Aksesoris', 'Kontainer E', '2025-08-20 03:54:38', '2025-08-20 03:54:38', NULL),
(46, 'Rak Aksesoris', 'Rak Level 1 A-D', '2025-08-20 03:55:57', '2025-08-20 03:55:57', NULL),
(47, 'Rak Aksesoris', 'Rak Level 2 A-D', '2025-08-20 03:56:12', '2025-08-20 03:56:12', NULL),
(48, 'Rak Aksesoris', 'Rak Level 3 A', '2025-08-20 03:56:29', '2025-08-20 03:56:29', NULL),
(49, 'Rak Sepatu', 'Rak 1', '2025-08-20 03:56:55', '2025-08-20 03:57:05', NULL),
(50, 'Kontainer Kostum', '5', '2025-08-20 06:14:25', '2025-08-20 06:14:30', '2025-08-20 06:14:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `id` int(9) NOT NULL,
  `class` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `type` varchar(31) NOT NULL DEFAULT 'string',
  `context` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `last_active` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `status`, `status_message`, `active`, `last_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'superadmin', NULL, NULL, 1, '2025-09-02 10:39:42', '2025-06-09 16:43:58', '2025-06-09 16:43:59', NULL),
(2, 'Resonanz', NULL, NULL, 1, '2025-08-28 14:05:47', '2025-06-12 14:56:42', '2025-06-12 14:56:42', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `auth_identities`
--
ALTER TABLE `auth_identities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type_secret` (`type`,`secret`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type_identifier` (`id_type`,`identifier`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `auth_permissions_users`
--
ALTER TABLE `auth_permissions_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_permissions_users_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `auth_remember_tokens`
--
ALTER TABLE `auth_remember_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `selector` (`selector`),
  ADD KEY `auth_remember_tokens_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `auth_token_logins`
--
ALTER TABLE `auth_token_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type_identifier` (`id_type`,`identifier`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `books_rack_id_foreign` (`rack_id`),
  ADD KEY `books_category_id_foreign` (`category_id`);

--
-- Indeks untuk tabel `book_stock`
--
ALTER TABLE `book_stock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_stock_book_id_foreign` (`book_id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `fines`
--
ALTER TABLE `fines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fines_loan_id_foreign` (`loan_id`);

--
-- Indeks untuk tabel `fines_per_day`
--
ALTER TABLE `fines_per_day`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `loans`
--
ALTER TABLE `loans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uid` (`uid`),
  ADD KEY `loans_book_id_foreign` (`book_id`),
  ADD KEY `loans_member_id_foreign` (`member_id`);

--
-- Indeks untuk tabel `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uid` (`uid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `racks`
--
ALTER TABLE `racks`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `auth_identities`
--
ALTER TABLE `auth_identities`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT untuk tabel `auth_permissions_users`
--
ALTER TABLE `auth_permissions_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_remember_tokens`
--
ALTER TABLE `auth_remember_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `auth_token_logins`
--
ALTER TABLE `auth_token_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=822;

--
-- AUTO_INCREMENT untuk tabel `book_stock`
--
ALTER TABLE `book_stock`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=822;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `fines`
--
ALTER TABLE `fines`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `fines_per_day`
--
ALTER TABLE `fines_per_day`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `loans`
--
ALTER TABLE `loans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `racks`
--
ALTER TABLE `racks`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_identities`
--
ALTER TABLE `auth_identities`
  ADD CONSTRAINT `auth_identities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_permissions_users`
--
ALTER TABLE `auth_permissions_users`
  ADD CONSTRAINT `auth_permissions_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_remember_tokens`
--
ALTER TABLE `auth_remember_tokens`
  ADD CONSTRAINT `auth_remember_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `books_rack_id_foreign` FOREIGN KEY (`rack_id`) REFERENCES `racks` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `book_stock`
--
ALTER TABLE `book_stock`
  ADD CONSTRAINT `book_stock_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `fines`
--
ALTER TABLE `fines`
  ADD CONSTRAINT `fines_loan_id_foreign` FOREIGN KEY (`loan_id`) REFERENCES `loans` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `loans`
--
ALTER TABLE `loans`
  ADD CONSTRAINT `loans_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `loans_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
