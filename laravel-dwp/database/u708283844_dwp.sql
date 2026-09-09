-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Waktu pembuatan: 09 Sep 2026 pada 01.09
-- Versi server: 11.8.8-MariaDB-log
-- Versi PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u708283844_dwp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `academic_satisfaction_surveys`
--

CREATE TABLE `academic_satisfaction_surveys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `submission_id` bigint(20) UNSIGNED DEFAULT NULL,
  `satisfaction_level` varchar(255) NOT NULL,
  `service_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `service_name` varchar(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `feedback` text DEFAULT NULL,
  `respondent_name` varchar(255) DEFAULT NULL,
  `respondent_email` varchar(255) DEFAULT NULL,
  `ticket_number` varchar(100) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `academic_satisfaction_surveys`
--

INSERT INTO `academic_satisfaction_surveys` (`id`, `submission_id`, `satisfaction_level`, `service_type_id`, `service_name`, `reason`, `feedback`, `respondent_name`, `respondent_email`, `ticket_number`, `ip_address`, `user_agent`, `created_at`, `updated_at`) VALUES
(1, NULL, 'puas', 1, 'Perubahan Data Mahasiswa Aktif', 'Layanan Cepat', 'sudah oke', 'shofiw', 'bunga@gmail.com', 'lestari', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 05:28:39', '2026-07-23 05:28:39'),
(2, 8, 'puas', 8, 'Surat Keterangan Aktif Kuliah', 'Layanan Cepat', 'terima kasih', 'SHOFI ROFIFAH', 'shofirofifahkerja@gmail.com', 'AKD-2026-000006', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-10 04:29:35', '2026-08-10 04:29:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `academic_service_queues`
--

CREATE TABLE `academic_service_queues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue_date` date NOT NULL,
  `queue_number` int(10) UNSIGNED NOT NULL,
  `queue_code` varchar(20) NOT NULL,
  `visitor_name` varchar(255) DEFAULT NULL,
  `visitor_identity` varchar(255) DEFAULT NULL,
  `visitor_phone` varchar(30) DEFAULT NULL,
  `visitor_type` varchar(50) DEFAULT NULL,
  `service_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `service_name` varchar(255) DEFAULT NULL,
  `purpose` varchar(255) DEFAULT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'waiting',
  `called_at` timestamp NULL DEFAULT NULL,
  `served_at` timestamp NULL DEFAULT NULL,
  `skipped_at` timestamp NULL DEFAULT NULL,
  `cancelled_at` timestamp NULL DEFAULT NULL,
  `finished_at` timestamp NULL DEFAULT NULL,
  `called_by` bigint(20) UNSIGNED DEFAULT NULL,
  `served_by` bigint(20) UNSIGNED DEFAULT NULL,
  `skipped_by` bigint(20) UNSIGNED DEFAULT NULL,
  `cancelled_by` bigint(20) UNSIGNED DEFAULT NULL,
  `finished_by` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `academic_service_queues`
--

INSERT INTO `academic_service_queues` (`id`, `queue_date`, `queue_number`, `queue_code`, `visitor_name`, `visitor_identity`, `visitor_phone`, `visitor_type`, `service_type_id`, `service_name`, `purpose`, `status`, `called_at`, `served_at`, `skipped_at`, `cancelled_at`, `finished_at`, `called_by`, `served_by`, `skipped_by`, `cancelled_by`, `finished_by`, `admin_note`, `created_at`, `updated_at`) VALUES
(1, '2026-08-10', 1, 'A-001', 'Rofi', NULL, NULL, 'Mahasiswa', 8, 'Surat Keterangan Aktif Kuliah', 'Surat Keterangan Aktif Kuliah', 'served', '2026-08-10 03:47:55', '2026-08-10 03:48:07', NULL, NULL, '2026-08-10 03:48:07', 4, 4, NULL, NULL, 4, NULL, '2026-08-10 03:47:21', '2026-08-10 03:48:07'),
(2, '2026-08-10', 2, 'A-002', 'Shofi Rofifah', '0000000000000000', '08999999999', 'Umum', NULL, 'Lainnya', 'Lainnya', 'waiting', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-08-10 04:22:19', '2026-08-10 04:22:19'),
(3, '2026-08-11', 1, 'A-001', 'Azhar', '19930708', '0896', 'Pegawai', 1, 'Perubahan Data Mahasiswa Aktif', 'Perubahan Data Mahasiswa Aktif', 'waiting', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-08-11 03:06:54', '2026-08-11 03:06:54'),
(4, '2026-08-11', 2, 'A-002', 'Azhar', 'Pp', '08', 'Mahasiswa', 1, 'Perubahan Data Mahasiswa Aktif', 'Perubahan Data Mahasiswa Aktif', 'waiting', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-08-11 03:10:35', '2026-08-11 03:10:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin_activity_logs`
--

CREATE TABLE `admin_activity_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `action` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `admin_activity_logs`
--

INSERT INTO `admin_activity_logs` (`id`, `user_id`, `action`, `description`, `ip_address`, `user_agent`, `created_at`) VALUES
(1, 2, 'login', 'Login admin berhasil.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-06-09 04:34:19'),
(2, 2, 'login', 'Login admin berhasil.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-06-09 08:31:00'),
(3, 2, 'logout', 'Logout admin.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-06-09 09:31:34'),
(4, 2, 'login', 'Login admin berhasil.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-06-10 00:33:37'),
(5, 2, 'change_password', 'Password akun diperbarui.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-06-10 00:45:09'),
(6, 2, 'logout', 'Logout admin.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-06-10 00:46:49'),
(7, 2, 'login', 'Login admin berhasil.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-06-10 01:37:56'),
(8, 2, 'export_submissions', 'Export data pengajuan ke CSV', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-06-10 01:47:45'),
(9, 2, 'login', 'Login admin berhasil.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-06-10 01:48:30'),
(10, 2, 'export_submissions', 'Export data pengajuan ke CSV', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-06-10 02:51:34'),
(11, 2, 'logout', 'Logout admin.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-06-10 03:40:52'),
(12, 4, 'login', 'Login admin berhasil.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-06-10 03:41:11'),
(13, 4, 'change_password', 'Password akun diperbarui.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-06-10 03:41:25'),
(14, 4, 'logout', 'Logout admin.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-06-10 03:42:16'),
(15, 3, 'login', 'Login admin berhasil.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-06-10 03:42:49'),
(16, 3, 'change_password', 'Password akun diperbarui.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-06-10 03:43:02'),
(17, 3, 'logout', 'Logout admin.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-06-10 03:49:16'),
(18, 2, 'login', 'Login admin berhasil.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-06-10 06:49:58'),
(19, 3, 'login', 'Login admin berhasil.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-06-10 23:17:22'),
(20, 5, 'login', 'Login admin berhasil.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-06-26 04:25:42'),
(21, 5, 'logout', 'Logout admin.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-06-26 04:26:15'),
(22, 1, 'login', 'Login admin berhasil.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-10 06:45:33'),
(23, 1, 'change_password', 'Password akun diperbarui.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-10 06:46:58'),
(24, 1, 'login', 'Login admin berhasil.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-10 06:47:38'),
(25, 1, 'logout', 'Logout admin.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-10 06:57:10'),
(26, 5, 'login', 'Login admin berhasil.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-10 06:57:33'),
(27, 5, 'change_password', 'Password akun diperbarui.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-10 06:58:11'),
(28, 5, 'logout', 'Logout admin.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-10 06:59:19'),
(29, 5, 'login', 'Login admin berhasil.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-10 06:59:26'),
(30, 5, 'logout', 'Logout admin.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-10 06:59:29'),
(31, 6, 'login', 'Login admin berhasil.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-10 07:00:17'),
(32, 6, 'change_password', 'Password akun diperbarui.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-10 07:00:39'),
(33, 6, 'logout', 'Logout admin.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-10 07:00:45'),
(34, 6, 'login', 'Login admin berhasil.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-10 07:01:09'),
(35, 6, 'logout', 'Logout admin.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-10 07:01:16'),
(36, 7, 'login', 'Login admin berhasil.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-10 07:01:44'),
(37, 7, 'change_password', 'Password akun diperbarui.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-10 07:02:12'),
(38, 7, 'logout', 'Logout admin.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-10 07:02:15'),
(39, 4, 'login', 'Login admin berhasil.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-15 01:37:27'),
(40, 3, 'login', 'Login admin berhasil.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-20 04:46:02'),
(41, 3, 'login', 'Login admin berhasil.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-20 06:59:46'),
(42, 3, 'login', 'Login admin berhasil.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 05:26:55'),
(43, 4, 'login', 'Login admin berhasil.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-10 03:40:31'),
(44, 4, 'queue_call', 'Memanggil antrean A-001.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-10 03:47:55'),
(45, 4, 'queue_finish', 'Menyelesaikan antrean A-001.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-10 03:48:07'),
(46, 4, 'download_supporting_file', 'Download file pendukung 20260810093438Kebidanan_SUKET MAHASISWA AKTIF_Yasmin Fadhilah.pdf (2).pdf pengajuan AKD-2026-000006', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-10 04:30:32'),
(47, 4, 'update_status', 'Ubah status pengajuan AKD-2026-000006 dari Diajukan ke Terkirim Email', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-10 04:32:11'),
(48, 4, 'upload_final_file', 'Upload file final pengajuan AKD-2026-000006', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-10 04:32:33'),
(49, 4, 'resend_email', 'Kirim ulang email hasil pengajuan AKD-2026-000006 ke shofirofifahkerja@gmail.com', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-10 04:32:54'),
(50, 1, 'login', 'Login admin berhasil.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-10 05:02:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-497e88c8b7499e652cf42d29ab5e6670a5b354ef', 'i:4;', 1788915468),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-497e88c8b7499e652cf42d29ab5e6670a5b354ef:timer', 'i:1788915468;', 1788915468);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dwp_catalog_categories`
--

CREATE TABLE `dwp_catalog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `dwp_catalog_categories`
--

INSERT INTO `dwp_catalog_categories` (`id`, `name`, `slug`, `description`, `sort_order`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Wisuda', 'wisuda', 'Paket baju toga wisuda mahasiswa Poltekkes Kemenkes Banten.', 1, 1, '2026-09-08 13:05:44', '2026-09-08 13:05:44'),
(2, 'Batik', 'batik', 'Pre order baju dan kain batik DWP.', 2, 1, '2026-09-08 13:05:44', '2026-09-08 13:05:44'),
(3, 'Pernak-Pernik', 'pernak-pernik', 'Pernak-pernik KWAS Dharma Wanita Persatuan.', 3, 1, '2026-09-08 13:05:44', '2026-09-08 13:05:44'),
(4, 'Atribut DWP', 'atribut-dwp', 'Atribut resmi Dharma Wanita Persatuan.', 4, 1, '2026-09-08 13:05:44', '2026-09-08 13:05:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dwp_catalog_products`
--

CREATE TABLE `dwp_catalog_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dwp_catalog_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(15,2) DEFAULT NULL,
  `price_text` varchar(255) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `contact_name` varchar(255) DEFAULT NULL,
  `contact_phone` varchar(255) DEFAULT NULL,
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `dwp_catalog_products`
--

INSERT INTO `dwp_catalog_products` (`id`, `dwp_catalog_category_id`, `name`, `slug`, `description`, `price`, `price_text`, `unit`, `image_path`, `contact_name`, `contact_phone`, `sort_order`, `is_featured`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 'Paket Baju Toga Wisuda Poltekkes Kemenkes Banten', 'paket-baju-toga-wisuda-poltekkes-kemenkes-banten', 'Paket baju toga wisuda resmi untuk mahasiswa Poltekkes Kemenkes Banten Tahun 2026/2027.', 200000.00, 'Hubungi Tim Sekretariat', 'paket', 'src/img/wisuda/Baju-Toga-Mahasiswa.jpeg', 'Tim Sekretariat DWP Poltekkes Kemenkes Banten', '+62 895-0839-4483 / +62 877-4112-1505', 1, 1, 1, '2026-09-08 13:05:44', '2026-09-08 13:51:44'),
(2, 2, 'Baju Batik Jadi', 'baju-batik-jadi', NULL, NULL, 'Hubungi Tim Sekretariat', 'pcs', NULL, 'Dias Arliadini (Tim Sekretariat DWP Poltekkes Kemenkes Banten)', '+62 851-8777-8838 / +62 877-4112-1505', 1, 0, 1, '2026-09-08 13:05:44', '2026-09-08 13:05:44'),
(3, 2, 'Bahan Seragam Batik', 'bahan-seragam-batik', NULL, NULL, 'Hubungi Tim Sekretariat', 'meter', NULL, 'Dias Arliadini (Tim Sekretariat DWP Poltekkes Kemenkes Banten)', '+62 851-8777-8838 / +62 877-4112-1505', 2, 0, 1, '2026-09-08 13:05:44', '2026-09-08 13:05:44'),
(4, 3, 'Pernak Pernik KWAS 1', 'pernak-pernik-kwas-1', NULL, NULL, 'Hubungi Tim Sekretariat', 'paket', NULL, 'Dias Arliadini (Tim Sekretariat DWP Poltekkes Kemenkes Banten)', '+62 851-8777-8838 / +62 877-4112-1505', 1, 0, 1, '2026-09-08 13:05:44', '2026-09-08 13:05:44'),
(5, 3, 'Pernak Pernik KWAS 2', 'pernak-pernik-kwas-2', NULL, NULL, 'Hubungi Tim Sekretariat', 'paket', NULL, 'Dias Arliadini (Tim Sekretariat DWP Poltekkes Kemenkes Banten)', '+62 851-8777-8838 / +62 877-4112-1505', 2, 0, 1, '2026-09-08 13:05:44', '2026-09-08 13:05:44'),
(6, 3, 'Pernak Pernik KWAS 3', 'pernak-pernik-kwas-3', NULL, NULL, 'Hubungi Tim Sekretariat', 'paket', NULL, 'Dias Arliadini (Tim Sekretariat DWP Poltekkes Kemenkes Banten)', '+62 851-8777-8838 / +62 877-4112-1505', 3, 0, 1, '2026-09-08 13:05:44', '2026-09-08 13:05:44'),
(7, 4, 'AD/ART', 'adart', NULL, 20000.00, NULL, 'buku', NULL, 'Dias Arliadini (Tim Sekretariat DWP Poltekkes Kemenkes Banten)', '+62 851-8777-8838 / +62 877-4112-1505', 1, 0, 1, '2026-09-08 13:05:44', '2026-09-08 13:05:44'),
(8, 4, 'Bahan Seragam Kerja/Resmi', 'bahan-seragam-kerjaresmi', NULL, 60000.00, NULL, 'meter', NULL, 'Dias Arliadini (Tim Sekretariat DWP Poltekkes Kemenkes Banten)', '+62 851-8777-8838 / +62 877-4112-1505', 2, 0, 1, '2026-09-08 13:05:44', '2026-09-08 13:05:44'),
(9, 4, 'Bisban', 'bisban', NULL, 12000.00, NULL, 'paket', NULL, 'Dias Arliadini (Tim Sekretariat DWP Poltekkes Kemenkes Banten)', '+62 851-8777-8838 / +62 877-4112-1505', 3, 0, 1, '2026-09-08 13:05:44', '2026-09-08 13:05:44'),
(10, 4, 'Jilbab Bergo', 'jilbab-bergo', NULL, NULL, 'Hubungi Tim Sekretariat', 'buah', NULL, 'Dias Arliadini (Tim Sekretariat DWP Poltekkes Kemenkes Banten)', '+62 851-8777-8838 / +62 877-4112-1505', 4, 0, 1, '2026-09-08 13:05:44', '2026-09-08 13:05:44'),
(11, 4, 'Kerudung Batik Standar', 'kerudung-batik-standar', NULL, NULL, 'Hubungi Tim Sekretariat', 'buah', NULL, 'Dias Arliadini (Tim Sekretariat DWP Poltekkes Kemenkes Banten)', '+62 851-8777-8838 / +62 877-4112-1505', 5, 0, 1, '2026-09-08 13:05:44', '2026-09-08 13:05:44'),
(12, 4, 'Kerudung Batik Jumbo', 'kerudung-batik-jumbo', NULL, NULL, 'Hubungi Tim Sekretariat', 'buah', NULL, 'Dias Arliadini (Tim Sekretariat DWP Poltekkes Kemenkes Banten)', '+62 851-8777-8838 / +62 877-4112-1505', 6, 0, 1, '2026-09-08 13:05:44', '2026-09-08 13:05:44'),
(13, 4, 'Kerudung Segiempat / Scarf', 'kerudung-segiempat-scarf', NULL, NULL, 'Hubungi Tim Sekretariat', 'buah', NULL, 'Dias Arliadini (Tim Sekretariat DWP Poltekkes Kemenkes Banten)', '+62 851-8777-8838 / +62 877-4112-1505', 7, 0, 1, '2026-09-08 13:05:44', '2026-09-08 13:05:44'),
(14, 4, 'Lencana', 'lencana', NULL, NULL, 'Hubungi Tim Sekretariat', 'buah', NULL, 'Dias Arliadini (Tim Sekretariat DWP Poltekkes Kemenkes Banten)', '+62 851-8777-8838 / +62 877-4112-1505', 8, 0, 1, '2026-09-08 13:05:44', '2026-09-08 13:05:44'),
(15, 4, 'Piagam', 'piagam', NULL, NULL, 'Hubungi Tim Sekretariat', 'buah', NULL, 'Dias Arliadini (Tim Sekretariat DWP Poltekkes Kemenkes Banten)', '+62 851-8777-8838 / +62 877-4112-1505', 9, 0, 1, '2026-09-08 13:05:44', '2026-09-08 13:05:44'),
(16, 4, 'Topi DWP', 'topi-dwp', NULL, NULL, 'Hubungi Tim Sekretariat', 'buah', NULL, 'Dias Arliadini (Tim Sekretariat DWP Poltekkes Kemenkes Banten)', '+62 851-8777-8838 / +62 877-4112-1505', 10, 0, 1, '2026-09-08 13:05:44', '2026-09-08 13:05:44'),
(17, 4, 'Vandel Provinsi', 'vandel-provinsi', NULL, NULL, 'Hubungi Tim Sekretariat', 'buah', NULL, 'Dias Arliadini (Tim Sekretariat DWP Poltekkes Kemenkes Banten)', '+62 851-8777-8838 / +62 877-4112-1505', 11, 0, 1, '2026-09-08 13:05:44', '2026-09-08 13:05:44'),
(18, 4, 'Vandel Kabupaten', 'vandel-kabupaten', NULL, NULL, 'Hubungi Tim Sekretariat', 'buah', NULL, 'Dias Arliadini (Tim Sekretariat DWP Poltekkes Kemenkes Banten)', '+62 851-8777-8838 / +62 877-4112-1505', 12, 0, 1, '2026-09-08 13:05:44', '2026-09-08 13:05:44'),
(19, 4, 'Vandel Kecamatan', 'vandel-kecamatan', NULL, NULL, 'Hubungi Tim Sekretariat', 'buah', NULL, 'Dias Arliadini (Tim Sekretariat DWP Poltekkes Kemenkes Banten)', '+62 851-8777-8838 / +62 877-4112-1505', 13, 0, 1, '2026-09-08 13:05:44', '2026-09-08 13:05:44'),
(20, 4, 'Vandel Meja', 'vandel-meja', NULL, 300000.00, NULL, 'buah', NULL, 'Dias Arliadini (Tim Sekretariat DWP Poltekkes Kemenkes Banten)', '+62 851-8777-8838 / +62 877-4112-1505', 14, 0, 1, '2026-09-08 13:05:44', '2026-09-08 13:05:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `email_templates`
--

INSERT INTO `email_templates` (`id`, `code`, `name`, `subject`, `body`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'submission_received', 'Pengajuan Diterima', 'Pengajuan Layanan Akademik - {{tiket}}', 'Halo {{nama}}, pengajuan {{layanan}} dengan nomor tiket {{tiket}} telah kami terima. Simpan token progres Anda: {{token}}. Cek progres di {{link_progres}}.', 1, '2026-06-09 02:56:18', '2026-06-09 02:56:18'),
(2, 'submission_completed', 'File Selesai', 'File Layanan Akademik Tersedia - {{tiket}}', 'Halo {{nama}}, pengajuan {{layanan}} dengan nomor tiket {{tiket}} sudah selesai. Silakan cek progres di {{link_progres}}.', 1, '2026-06-09 02:56:18', '2026-06-09 02:56:18'),
(3, 'submission_status_changed', 'Perubahan Status', 'Update Status Pengajuan - {{tiket}}', 'Halo {{nama}}, status pengajuan {{layanan}} ({{tiket}}) berubah dari {{status_lama}} menjadi {{status_baru}}. Catatan: {{catatan}}. Cek progres di {{link_progres}}.', 1, '2026-06-09 02:56:18', '2026-06-09 02:56:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` varchar(255) NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `graduation_toga_orders`
--

CREATE TABLE `graduation_toga_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_code` varchar(255) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `nim` varchar(255) NOT NULL,
  `nik` varchar(255) DEFAULT NULL,
  `study_program_id` bigint(20) UNSIGNED DEFAULT NULL,
  `study_program_name` varchar(255) DEFAULT NULL,
  `graduation_year` smallint(5) UNSIGNED DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `toga_size` varchar(255) NOT NULL,
  `size_note` text DEFAULT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `status` varchar(255) NOT NULL DEFAULT 'pending_payment',
  `payment_status` varchar(255) NOT NULL DEFAULT 'unpaid',
  `payment_amount` decimal(12,2) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `payment_proof_path` varchar(255) DEFAULT NULL,
  `payment_proof_original_name` varchar(255) DEFAULT NULL,
  `payment_proof_mime` varchar(255) DEFAULT NULL,
  `payment_proof_size` int(10) UNSIGNED DEFAULT NULL,
  `payment_uploaded_at` timestamp NULL DEFAULT NULL,
  `payment_verified_at` timestamp NULL DEFAULT NULL,
  `payment_verified_by` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_rejected_at` timestamp NULL DEFAULT NULL,
  `payment_rejected_by` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_note` text DEFAULT NULL,
  `rejection_note` text DEFAULT NULL,
  `public_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `graduation_toga_orders`
--

INSERT INTO `graduation_toga_orders` (`id`, `order_code`, `student_name`, `nim`, `nik`, `study_program_id`, `study_program_name`, `graduation_year`, `email`, `phone`, `gender`, `toga_size`, `size_note`, `quantity`, `status`, `payment_status`, `payment_amount`, `payment_method`, `payment_proof_path`, `payment_proof_original_name`, `payment_proof_mime`, `payment_proof_size`, `payment_uploaded_at`, `payment_verified_at`, `payment_verified_by`, `payment_rejected_at`, `payment_rejected_by`, `admin_note`, `rejection_note`, `public_token`, `created_at`, `updated_at`) VALUES
(1, 'WSD-20260905-CEN2', 'Asmawati', '123456', '1771064202750003', 1, 'D3 Keperawatan', 2026, 'my.asdhira.zifa02@gmail.com', '085312323411', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'YjIyzjZWkwQNr7Xc0hKFPQM0QoeDgvSIj3HjkWzn', '2026-09-05 07:35:29', '2026-09-05 07:35:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` smallint(5) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_06_09_000001_add_role_to_users_table', 1),
(5, '2026_06_09_000002_create_study_programs_table', 1),
(6, '2026_06_09_000003_create_service_types_table', 1),
(7, '2026_06_09_000004_create_submissions_table', 1),
(8, '2026_06_09_000005_create_submission_files_table', 1),
(9, '2026_06_09_000006_create_status_histories_table', 1),
(10, '2026_06_09_000007_create_email_templates_table', 1),
(11, '2026_06_09_100001_update_users_for_roles', 1),
(12, '2026_06_09_100002_create_admin_activity_logs_table', 1),
(13, '2026_06_09_200001_add_sort_order_to_service_types_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `report_export_logs`
--

CREATE TABLE `report_export_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `report_type` varchar(64) NOT NULL,
  `format` varchar(16) NOT NULL,
  `filters` text DEFAULT NULL,
  `file_name` varchar(255) NOT NULL,
  `exported_at` timestamp NOT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `service_types`
--

CREATE TABLE `service_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `sort_order` int(10) UNSIGNED DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `service_types`
--

INSERT INTO `service_types` (`id`, `code`, `name`, `slug`, `description`, `is_active`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 'PDM', 'Perubahan Data Mahasiswa Aktif', 'perubahan-data-mahasiswa-aktif', 'Untuk mengusulkan perbaikan data mahasiswa aktif seperti NIM, NIK, nama, tempat/tanggal lahir, dan nama ibu kandung.', 1, 1, '2026-06-09 02:56:18', '2026-06-09 09:43:17'),
(2, 'SKAK', 'Surat Keterangan Aktif Kuliah (Legacy)', 'surat-aktif-kuliah', 'Layanan lama — dialihkan ke Surat Keterangan Aktif Kuliah.', 0, 99, '2026-06-09 02:56:18', '2026-06-09 09:46:55'),
(3, 'REGISTRASI', 'Surat Keterangan Registrasi', 'surat-keterangan-registrasi', 'Layanan lama/nonaktif.', 0, 99, '2026-06-09 02:56:18', '2026-06-10 04:58:44'),
(4, 'CUTI', 'Surat Cuti Mahasiswa', 'surat-cuti-mahasiswa', 'Untuk mengusulkan Surat Cuti Mahasiswa.', 1, 3, '2026-06-09 02:56:18', '2026-06-10 04:58:44'),
(5, 'SKAL', 'Surat Keterangan Alumni (Legacy)', 'surat-keterangan-alumni', 'Layanan lama — dialihkan ke Surat Keterangan Verifikasi Ijazah Alumni.', 0, 99, '2026-06-09 02:56:18', '2026-06-09 09:46:55'),
(6, 'SIAKAD', 'Layanan Sistem Informasi Akademik (SIAKAD)', 'siakad', 'Untuk melaporkan kendala SIAKAD seperti lupa password, login, KRS, dan KHS.', 1, 9, '2026-06-09 02:56:18', '2026-06-10 04:58:44'),
(8, 'AKTIF_KULIAH', 'Surat Keterangan Aktif Kuliah', 'surat-keterangan-aktif-kuliah', 'Untuk mengusulkan pembuatan Surat Keterangan Aktif Kuliah.', 1, 2, '2026-06-09 09:43:17', '2026-06-09 09:43:17'),
(11, 'BEASISWA', 'Surat Keterangan Beasiswa', 'surat-keterangan-beasiswa', 'Untuk mengusulkan pembuatan Surat Keterangan Beasiswa.', 1, 5, '2026-06-09 09:46:55', '2026-06-10 04:58:44'),
(12, 'BERKELAKUAN_BAIK', 'Surat Keterangan Berkelakuan Baik', 'surat-keterangan-berkelakuan-baik', 'Untuk mengusulkan pembuatan Surat Keterangan Berkelakuan Baik.', 1, 6, '2026-06-09 09:46:55', '2026-06-10 04:58:44'),
(13, 'VERIFIKASI_IJAZAH_ALUMNI', 'Surat Keterangan Verifikasi Ijazah Alumni', 'surat-keterangan-verifikasi-ijazah-alumni', 'Untuk mengusulkan pembuatan Surat Keterangan Verifikasi Ijazah Alumni.', 1, 7, '2026-06-09 09:46:55', '2026-06-10 04:58:44'),
(14, 'REKOMENDASI', 'Surat Rekomendasi Mahasiswa/Alumni', 'surat-rekomendasi', 'Untuk mengusulkan Surat Rekomendasi Mahasiswa/Alumni, termasuk keperluan magang dan keperluan lainnya.', 1, 8, '2026-06-09 09:46:55', '2026-06-10 04:58:44'),
(15, 'PDM_LEGACY', 'Perbaikan Data Mahasiswa (Legacy)', 'perbaikan-data-mahasiswa', 'Layanan lama — dialihkan ke Perubahan Data Mahasiswa Aktif.', 0, 99, '2026-06-09 09:46:55', '2026-06-09 09:46:55'),
(16, 'AKTIFKULIAH', 'Surat Aktif Kuliah (Legacy)', 'aktifkuliah', 'Layanan lama — dialihkan ke Surat Keterangan Aktif Kuliah.', 0, 99, '2026-06-09 09:46:55', '2026-06-09 09:46:55'),
(17, 'MASALAH_SIAKAD', 'Masalah SIAKAD (Legacy)', 'masalahsiakad', 'Layanan lama — dialihkan ke Layanan Sistem Informasi Akademik (SIAKAD).', 0, 99, '2026-06-09 09:46:55', '2026-06-09 09:46:55'),
(18, 'KETREGIS_LEGACY', 'Ketregis (Legacy)', 'ketregis', 'Layanan lama — dialihkan ke Surat Keterangan Registrasi.', 0, 99, '2026-06-09 09:46:55', '2026-06-09 09:46:55'),
(19, 'KETCUTI_LEGACY', 'Ketcuti (Legacy)', 'ketcuti', 'Layanan lama — dialihkan ke Surat Cuti Mahasiswa.', 0, 99, '2026-06-09 09:46:55', '2026-06-09 09:46:55'),
(20, 'KETALUMNI_LEGACY', 'Ketalumni (Legacy)', 'ketalumni', 'Layanan lama — dialihkan ke Surat Keterangan Verifikasi Ijazah Alumni.', 0, 99, '2026-06-09 09:46:55', '2026-06-09 09:46:55'),
(21, 'KELUAR', 'Surat Keluar Mahasiswa', 'surat-keluar-mahasiswa', 'Untuk mengusulkan Surat Keluar Mahasiswa.', 1, 4, '2026-06-10 04:24:30', '2026-06-10 04:58:44'),
(22, 'SURAT_TUGAS_MAHASISWA', 'Pengajuan Surat Tugas Mahasiswa', 'surat-tugas-mahasiswa', 'Untuk pengajuan Surat Tugas Mahasiswa bagi mahasiswa yang mengikuti kegiatan.', 1, 10, '2026-07-23 04:05:22', '2026-07-23 04:05:22'),
(23, 'NOTA_DINAS_DISPEN', 'Pengajuan Nota Dinas Dispen Kegiatan Mahasiswa', 'nota-dinas-dispen-kegiatan-mahasiswa', 'Untuk pengajuan Nota Dinas Dispensasi kegiatan mahasiswa.', 1, 11, '2026-07-23 04:05:22', '2026-07-23 04:05:22'),
(24, 'PENGAKTIFAN_KEMBALI', 'Pengajuan Pengaktifan Kembali Mahasiswa Cuti/Keluar', 'pengaktifan-kembali-mahasiswa', 'Untuk pengajuan pengaktifan kembali mahasiswa yang sebelumnya cuti atau keluar.', 1, 12, '2026-07-23 04:05:22', '2026-07-23 04:05:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('3o9H6s6GUrkmisnqawi4ToLyF3zmKfDUzmKCYn1Z', NULL, '2402:8780:106b:6575:4c8:e09c:e0ee:2226', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.5.2 Mobile/15E148 Safari/604.1', 'eyJfdG9rZW4iOiJuaFNMNlZwR0lVY3dkVExMdDhNOHVxeEpxcUw2bVhpR3F5Zk1LNE5JIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL2JlcmFuZGEiLCJyb3V0ZSI6ImJlcmFuZGEifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1788910613),
('qfAErbx6wTtRYhLURx304yct6mn3D5dacNrHBqNH', NULL, '2001:448a:20a0:db0c:e306:6d29:230c:a1e3', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Mobile Safari/537.36', 'eyJfdG9rZW4iOiJkSU5LZjdMTjBkMnZza0JwVG9od0RKREdnalYxQ3JhdjVyZ1UwdjhDIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL2JlcmFuZGEiLCJyb3V0ZSI6ImJlcmFuZGEifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1788884029),
('QVqiVsIn4mnD73NfQpbNGLewf3CNsKqV2zZxfKFt', NULL, '165.22.232.71', 'Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0', 'eyJfdG9rZW4iOiI3Q3lxMDY4Y1NPeXpxVTc2dmMxZnVCdVhhTFd2RW81NDVETm84b3p6IiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWQiLCJyb3V0ZSI6ImhvbWUifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1788894273),
('Tf5uia9D6orGgTB9MsFa6OOt0KOOpnLS8x5zmXiB', NULL, '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJXWG1KNFdTWFBLNDZ3N0N0SjhuRWxqYnZBWTFBMXFvYUxCYlRkQWVnIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL2FkbWluXC9sb2dpbiIsInJvdXRlIjoiYWRtaW4ubG9naW4ifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1788915434),
('Tg1GjdTkhpp1zPFYTaouP9ZKajBjojX5bDepJKyi', NULL, '64.227.98.171', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJIdjQyam4xUE9PcXlKWVdQU2E5bVYwUkpxMWNGOVZxaWlBYU9PNTFjIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC93d3cuZGhhcm1hLXdhbml0YS1wZXJzYXR1YW4ucG9sdGVra2VzYmFudGVuLmFjLmlkIiwicm91dGUiOiJob21lIn0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1788895038),
('uVNHv7WSSe8hwQtUjX5zPpksqmubkiEtb9T61X7a', NULL, '103.177.177.217', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Mobile Safari/537.36', 'eyJfdG9rZW4iOiI2WlpLMGlqdVVhR2RpTjdCU2ZMdldNRHZVMXlYVXp4czV5bHFHQ3dKIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3Byb2R1a1wvcGFrZXQtYmFqdS10b2dhLXdpc3VkYS1wb2x0ZWtrZXMta2VtZW5rZXMtYmFudGVuIiwicm91dGUiOiJwcm9kdWsuc2hvdyJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19', 1788909622),
('vPf6Hax7ydpaf4d39DgPb12Bs6xO8Vr5m9uIAHJC', NULL, '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJTR084T0gwaFNSbGF4VndqZm00V1N1cFpTU2xKQU9xbU5DTHFFSjU0IiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL2FkbWluXC9sb2dpbiIsInJvdXRlIjoiYWRtaW4ubG9naW4ifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1788915464);

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_histories`
--

CREATE TABLE `status_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `submission_id` bigint(20) UNSIGNED NOT NULL,
  `old_status` varchar(255) DEFAULT NULL,
  `new_status` varchar(255) NOT NULL,
  `note` text DEFAULT NULL,
  `changed_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `status_histories`
--

INSERT INTO `status_histories` (`id`, `submission_id`, `old_status`, `new_status`, `note`, `changed_by`, `created_at`, `updated_at`) VALUES
(2, 2, NULL, 'Diajukan', 'Pengajuan dibuat oleh pemohon.', NULL, '2026-07-24 13:09:47', '2026-07-24 13:09:47'),
(3, 3, NULL, 'Diajukan', 'Pengajuan dibuat oleh pemohon.', NULL, '2026-07-31 04:28:26', '2026-07-31 04:28:26'),
(4, 4, NULL, 'Diajukan', 'Pengajuan dibuat oleh pemohon.', NULL, '2026-07-31 04:30:57', '2026-07-31 04:30:57'),
(5, 5, NULL, 'Diajukan', 'Pengajuan dibuat oleh pemohon.', NULL, '2026-07-31 15:19:45', '2026-07-31 15:19:45'),
(6, 6, NULL, 'Diajukan', 'Pengajuan dibuat oleh pemohon.', NULL, '2026-08-10 04:25:24', '2026-08-10 04:25:24'),
(7, 8, NULL, 'Diajukan', 'Pengajuan dibuat oleh pemohon.', NULL, '2026-08-10 04:25:43', '2026-08-10 04:25:43'),
(8, 8, 'Diajukan', 'Terkirim Email', 'silahkan untuk surat sudah selesai dan silahkan cek secara berkala pada email masuk', 4, '2026-08-10 04:32:11', '2026-08-10 04:32:11'),
(9, 8, 'Terkirim Email', 'Selesai / File Tersedia', 'silahkan untuk surat sudah selesai dan silahkan cek secara berkala pada email masuk', 4, '2026-08-10 04:32:33', '2026-08-10 04:32:33'),
(10, 8, 'Selesai / File Tersedia', 'Terkirim Email', 'Email file hasil dikirim manual oleh admin.', 4, '2026-08-10 04:32:54', '2026-08-10 04:32:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `study_programs`
--

CREATE TABLE `study_programs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `study_programs`
--

INSERT INTO `study_programs` (`id`, `name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'D3 Keperawatan', 1, '2026-06-09 02:56:18', '2026-06-09 02:56:18'),
(2, 'D3 Kebidanan', 1, '2026-06-09 02:56:18', '2026-06-09 02:56:18'),
(3, 'D3 Teknologi Laboratorium Medis', 1, '2026-06-09 02:56:18', '2026-06-09 02:56:18'),
(4, 'Sarjana Terapan Keperawatan Reguler', 1, '2026-06-09 02:56:18', '2026-06-10 02:11:32'),
(5, 'Sarjana Terapan Keperawatan Kelas Internasional', 1, '2026-06-09 02:56:18', '2026-06-10 02:12:03'),
(6, 'Sarjana Terapan Keperawatan RPL', 1, '2026-06-10 02:12:39', '2026-06-10 02:12:39'),
(7, 'Pendidikan Profesi NERS', 1, '2026-06-10 02:13:21', '2026-06-10 02:13:21'),
(8, 'Sarjana Terapan Keperawatan', 1, '2026-06-10 04:24:30', '2026-06-10 04:24:30'),
(9, 'Sarjana Terapan Kebidanan', 1, '2026-06-10 04:24:30', '2026-06-10 04:24:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `submissions`
--

CREATE TABLE `submissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_number` varchar(255) NOT NULL,
  `progress_token` varchar(64) NOT NULL,
  `service_type_id` bigint(20) UNSIGNED NOT NULL,
  `study_program_id` bigint(20) UNSIGNED NOT NULL,
  `nim` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `nik` varchar(16) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `whatsapp` varchar(255) NOT NULL,
  `semester` varchar(255) DEFAULT NULL,
  `gpa_score` decimal(3,2) DEFAULT NULL,
  `mother_name` varchar(255) DEFAULT NULL,
  `request_type` varchar(255) DEFAULT NULL,
  `corrected_data` text DEFAULT NULL,
  `purpose` text DEFAULT NULL,
  `issue_type` varchar(255) DEFAULT NULL,
  `leave_reason` text DEFAULT NULL,
  `exit_reason` text DEFAULT NULL,
  `entry_year` varchar(255) DEFAULT NULL,
  `graduation_year` varchar(255) DEFAULT NULL,
  `alumni_letter_type` varchar(255) DEFAULT NULL,
  `certificate_number` varchar(255) DEFAULT NULL,
  `additional_note` text DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Diajukan',
  `admin_note` text DEFAULT NULL,
  `ready_to_send_email` tinyint(1) NOT NULL DEFAULT 0,
  `email_sent_at` timestamp NULL DEFAULT NULL,
  `email_error` text DEFAULT NULL,
  `data_confirmed` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `activity_name` varchar(255) DEFAULT NULL,
  `activity_date` date DEFAULT NULL,
  `activity_location` varchar(255) DEFAULT NULL,
  `participant_list` text DEFAULT NULL,
  `previous_status` varchar(255) DEFAULT NULL,
  `reactivation_reason` text DEFAULT NULL,
  `jurusan_verified_at` timestamp NULL DEFAULT NULL,
  `jurusan_verified_by` bigint(20) UNSIGNED DEFAULT NULL,
  `jurusan_verification_note` text DEFAULT NULL,
  `central_verified_at` timestamp NULL DEFAULT NULL,
  `central_verified_by` bigint(20) UNSIGNED DEFAULT NULL,
  `central_verification_note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `submissions`
--

INSERT INTO `submissions` (`id`, `ticket_number`, `progress_token`, `service_type_id`, `study_program_id`, `nim`, `full_name`, `nik`, `email`, `whatsapp`, `semester`, `gpa_score`, `mother_name`, `request_type`, `corrected_data`, `purpose`, `issue_type`, `leave_reason`, `exit_reason`, `entry_year`, `graduation_year`, `alumni_letter_type`, `certificate_number`, `additional_note`, `status`, `admin_note`, `ready_to_send_email`, `email_sent_at`, `email_error`, `data_confirmed`, `created_at`, `updated_at`, `activity_name`, `activity_date`, `activity_location`, `participant_list`, `previous_status`, `reactivation_reason`, `jurusan_verified_at`, `jurusan_verified_by`, `jurusan_verification_note`, `central_verified_at`, `central_verified_by`, `central_verification_note`) VALUES
(2, 'AKD-2026-000001', 'a6bc4f7d3c8515e407beedc3d1a7d972f60d7f2ca883aaa1b11f0ec2654189be', 6, 2, 'P27902126137', 'Raesa Naural Fatihah', '3602144706080002', 'nauralfatihah@gmail.com', '62895323350116', NULL, NULL, NULL, NULL, NULL, NULL, 'Tidak Bisa Login', NULL, NULL, NULL, NULL, NULL, NULL, '-', 'Diajukan', NULL, 0, NULL, NULL, 1, '2026-07-24 13:09:47', '2026-07-24 13:09:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'AKD-2026-000002', '148bea129b08233da1076890149904a9cef7175f950b959cf15ec49e15939018', 6, 5, 'P27907126002', 'Almeirra Farhain', '3604076310080001', 'almeirraf@gmail.com', '6283896660100', NULL, NULL, NULL, NULL, NULL, NULL, 'Lupa Password', NULL, NULL, NULL, NULL, NULL, NULL, '-', 'Diajukan', NULL, 0, NULL, NULL, 1, '2026-07-31 04:28:26', '2026-07-31 04:28:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'AKD-2026-000003', '247f9b62fb8a5144d187ff9b4dea77ec4a5826562090038ccd44b25226834165', 6, 5, 'P27907126002', 'Almeirra Farhain', '3604076310080001', 'almeirraf@gmail.com', '6283896660100', NULL, NULL, NULL, NULL, NULL, NULL, 'Lupa Password', NULL, NULL, NULL, NULL, NULL, NULL, '-', 'Diajukan', NULL, 0, NULL, NULL, 1, '2026-07-31 04:30:57', '2026-07-31 04:30:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'AKD-2026-000004', '22439f20e14d6885cc10dab4df8ba182fb90d271b83de20c59bda79edea38c85', 6, 2, 'P27902126130', 'Naurah Nadzifah', '3672084603080001', 'naurahnadzifah9@gmail.com', '6283143426795', NULL, NULL, NULL, NULL, NULL, NULL, 'Lupa Password', NULL, NULL, NULL, NULL, NULL, NULL, '-', 'Diajukan', NULL, 0, NULL, NULL, 1, '2026-07-31 15:19:45', '2026-07-31 15:19:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'AKD-2026-000005', '6722ac6ad550a17a20022b9bee66d6923eeb018b19f3e37758a2da90a54c00ce', 8, 1, 'P271099999', 'SHOFI ROFIFAH', '3699999999999999', 'shofirofifahkerja@gmail.com', '6283841140298', '1', NULL, NULL, NULL, NULL, 'untuk keterangan aktif berkuliah di poltekkes kemenkes banten', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', 'Diajukan', NULL, 0, NULL, NULL, 1, '2026-08-10 04:25:24', '2026-08-10 04:25:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'AKD-2026-000006', '07da466e0f3a5fda90c633df52fd6426839072d922ff3926df2084681cf3ac3a', 8, 1, 'P271099999', 'SHOFI ROFIFAH', '3602186803010001', 'shofirofifahkerja@gmail.com', '6283841140298', '1', NULL, NULL, NULL, NULL, 'untuk keterangan aktif berkuliah di poltekkes kemenkes banten', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', 'Terkirim Email', 'silahkan untuk surat sudah selesai dan silahkan cek secara berkala pada email masuk', 0, '2026-08-10 04:32:54', NULL, 1, '2026-08-10 04:25:43', '2026-08-10 04:32:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `submission_files`
--

CREATE TABLE `submission_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `submission_id` bigint(20) UNSIGNED NOT NULL,
  `file_category` varchar(255) NOT NULL,
  `original_name` varchar(255) NOT NULL,
  `stored_path` varchar(255) NOT NULL,
  `mime_type` varchar(255) NOT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `uploaded_by` enum('applicant','admin') NOT NULL DEFAULT 'applicant',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `submission_files`
--

INSERT INTO `submission_files` (`id`, `submission_id`, `file_category`, `original_name`, `stored_path`, `mime_type`, `size`, `uploaded_by`, `created_at`, `updated_at`) VALUES
(3, 2, 'optional_supporting_data', 'invalidd.png', 'submissions/2/optional_supporting_data/0ba90dc0-2e56-4d9c-a068-b3bd1f1ec14f.png', 'image/png', 55425, 'applicant', '2026-07-24 13:09:47', '2026-07-24 13:09:47'),
(4, 3, 'optional_supporting_data', 'IMG_0594.png', 'submissions/3/optional_supporting_data/ba5d6e33-637a-441c-9f28-8048a3c5b14d.png', 'image/png', 955769, 'applicant', '2026-07-31 04:28:26', '2026-07-31 04:28:26'),
(5, 6, 'active_krs', '20260810093438Kebidanan_SUKET MAHASISWA AKTIF_Yasmin Fadhilah.pdf (2).pdf', 'submissions/6/active_krs/ee3504db-4aea-476b-b134-81cde6deb5be.pdf', 'application/pdf', 253608, 'applicant', '2026-08-10 04:25:24', '2026-08-10 04:25:24'),
(6, 8, 'active_krs', '20260810093438Kebidanan_SUKET MAHASISWA AKTIF_Yasmin Fadhilah.pdf (2).pdf', 'submissions/8/active_krs/2d0d12fa-a418-4f00-ba2b-1f7c60ee57f0.pdf', 'application/pdf', 253608, 'applicant', '2026-08-10 04:25:43', '2026-08-10 04:25:43'),
(7, 8, 'final_result', '20260810093438Kebidanan_SUKET MAHASISWA AKTIF_Yasmin Fadhilah.pdf (2) (1).pdf', 'submissions/8/final_result/51296fab-9e96-4c0d-945a-43abce393c22.pdf', 'application/pdf', 253608, 'admin', '2026-08-10 04:32:33', '2026-08-10 04:32:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(20) NOT NULL DEFAULT 'admin',
  `study_program_id` bigint(20) UNSIGNED DEFAULT NULL,
  `must_change_password` tinyint(1) NOT NULL DEFAULT 1,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `study_program_id`, `must_change_password`, `is_active`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Qowiyrofi', 'qowiyrofi@poltekkesbanten.ac.id', NULL, '$2y$12$lA4xAnt6Harxa19PmanR0Ogq6Y1fWO/ZUV6EUDxAseuDWjnL6UiPm', 'superadmin', NULL, 0, 1, 'CwzEoWwpV7jkRjWeVODGGcz4wQWXUQPphe40Ipk2QeoJhQPaCGrLdHl349Vq', '2026-06-09 02:56:18', '2026-07-10 06:46:58'),
(2, 'Kuntum Ekawati', 'kuntum.ekawati@poltekkesbanten.ac.id', NULL, '$2y$12$5VXpTDW1R9zMnhXElNp6Z.G3tNB8YLo9TwK2UhbASeEEu6rXpyO.O', 'superadmin', NULL, 0, 1, NULL, '2026-06-09 02:56:18', '2026-06-10 00:45:09'),
(3, 'Osep Yasier', 'osep.yasier@poltekkesbanten.ac.id', NULL, '$2y$12$sdmqsV0kYo98RBr0fUE0OeukpX0C7LoLY41CI5HMWDQSoGGWkGupK', 'superadmin', NULL, 0, 1, 'nNktLSIHkjgOfBMRimk5cOhFUwHTnZnnPyGQEOejwuUf209AdGlsSCQtedjJ', '2026-06-10 03:40:16', '2026-06-10 03:43:02'),
(4, 'Shofi Rofifah', 'shofi.rofifah@poltekkesbanten.ac.id', NULL, '$2y$12$nwr4zoWl6aZdyglgiMMkEu2nNW49A9G9RHJpF9Ar3kg5BqY1dx7eS', 'superadmin', NULL, 0, 1, 'Tpyjc3CeB7273qGrLHYDib9uegRPaoip3iAutuDCJVApUgKHrrf0uWd4saTF', '2026-06-10 03:40:16', '2026-06-10 03:41:25'),
(5, 'Admin D3 Kebidanan', 'poltekkesadakpoltekkes@gmail.com', NULL, '$2y$12$MseLhtIonxZp.1W7/0YwEOT7SjoBkYdYu/P.wWgqmRh7Sn7xInt2e', 'admin_jurusan', 2, 0, 1, NULL, '2026-06-26 04:25:08', '2026-07-10 06:58:11'),
(6, 'Admin D3 Keperawatan', 'd3.keperawatan@poltekkesbanten.ac.id', NULL, '$2y$12$FMt64mrKXZ2mp7XAkaK0ge57qrpsyV86YZJC5tPvnzuKQ4wDBEgI2', 'admin_jurusan', 1, 0, 1, NULL, '2026-06-26 04:25:08', '2026-07-10 07:00:39'),
(7, 'Admin D3 TLM', 'adak.tlm@poltekkesbanten.ac.id', NULL, '$2y$12$UZF1cCWO6dAkTnapjsSTV.ZgWyZaeegv42iwSiP0MdaDYAX5qS2ny', 'admin_jurusan', 3, 0, 1, NULL, '2026-06-26 04:25:08', '2026-07-10 07:02:12'),
(8, 'Admin STR Ners', 'strners@poltekkesbanten.ac.id', NULL, '$2y$12$JxJSI/KGg3cNgFuV2pWUxuIpVZ3yhjQgYW0n.aaVjSnq77AV7jQa2', 'admin_jurusan', 8, 1, 1, NULL, '2026-06-26 04:25:09', '2026-06-26 04:25:09');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `academic_satisfaction_surveys`
--
ALTER TABLE `academic_satisfaction_surveys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `academic_satisfaction_surveys_satisfaction_level_index` (`satisfaction_level`),
  ADD KEY `academic_satisfaction_surveys_created_at_index` (`created_at`),
  ADD KEY `academic_satisfaction_surveys_service_type_id_index` (`service_type_id`),
  ADD KEY `academic_satisfaction_surveys_submission_id_foreign` (`submission_id`);

--
-- Indeks untuk tabel `academic_service_queues`
--
ALTER TABLE `academic_service_queues`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `academic_service_queues_queue_date_queue_number_unique` (`queue_date`,`queue_number`),
  ADD UNIQUE KEY `academic_service_queues_queue_date_queue_code_unique` (`queue_date`,`queue_code`),
  ADD KEY `academic_service_queues_queue_date_index` (`queue_date`),
  ADD KEY `academic_service_queues_status_index` (`status`),
  ADD KEY `academic_service_queues_queue_number_index` (`queue_number`),
  ADD KEY `academic_service_queues_service_type_id_index` (`service_type_id`),
  ADD KEY `academic_service_queues_created_at_index` (`created_at`),
  ADD KEY `academic_service_queues_called_by_index` (`called_by`),
  ADD KEY `academic_service_queues_served_by_index` (`served_by`),
  ADD KEY `academic_service_queues_skipped_by_index` (`skipped_by`),
  ADD KEY `academic_service_queues_cancelled_by_index` (`cancelled_by`),
  ADD KEY `academic_service_queues_finished_by_index` (`finished_by`);

--
-- Indeks untuk tabel `admin_activity_logs`
--
ALTER TABLE `admin_activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_activity_logs_user_id_created_at_index` (`user_id`,`created_at`),
  ADD KEY `admin_activity_logs_action_index` (`action`);

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indeks untuk tabel `dwp_catalog_categories`
--
ALTER TABLE `dwp_catalog_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dwp_catalog_categories_slug_unique` (`slug`);

--
-- Indeks untuk tabel `dwp_catalog_products`
--
ALTER TABLE `dwp_catalog_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dwp_catalog_products_slug_unique` (`slug`),
  ADD KEY `dwp_catalog_products_category_id_index` (`dwp_catalog_category_id`);

--
-- Indeks untuk tabel `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_templates_code_unique` (`code`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`),
  ADD KEY `failed_jobs_connection_queue_failed_at_index` (`connection`,`queue`,`failed_at`);

--
-- Indeks untuk tabel `graduation_toga_orders`
--
ALTER TABLE `graduation_toga_orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `graduation_toga_orders_order_code_unique` (`order_code`),
  ADD UNIQUE KEY `graduation_toga_orders_public_token_unique` (`public_token`),
  ADD KEY `graduation_toga_orders_study_program_id_index` (`study_program_id`),
  ADD KEY `graduation_toga_orders_payment_verified_by_index` (`payment_verified_by`),
  ADD KEY `graduation_toga_orders_payment_rejected_by_index` (`payment_rejected_by`),
  ADD KEY `graduation_toga_orders_status_index` (`status`),
  ADD KEY `graduation_toga_orders_payment_status_index` (`payment_status`),
  ADD KEY `graduation_toga_orders_nim_index` (`nim`),
  ADD KEY `graduation_toga_orders_email_index` (`email`),
  ADD KEY `graduation_toga_orders_created_at_index` (`created_at`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `report_export_logs`
--
ALTER TABLE `report_export_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `report_export_logs_user_id_index` (`user_id`),
  ADD KEY `report_export_logs_report_type_index` (`report_type`),
  ADD KEY `report_export_logs_format_index` (`format`),
  ADD KEY `report_export_logs_exported_at_index` (`exported_at`);

--
-- Indeks untuk tabel `service_types`
--
ALTER TABLE `service_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `service_types_code_unique` (`code`),
  ADD UNIQUE KEY `service_types_slug_unique` (`slug`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `status_histories`
--
ALTER TABLE `status_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status_histories_submission_id_foreign` (`submission_id`),
  ADD KEY `status_histories_changed_by_foreign` (`changed_by`);

--
-- Indeks untuk tabel `study_programs`
--
ALTER TABLE `study_programs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `submissions`
--
ALTER TABLE `submissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `submissions_ticket_number_unique` (`ticket_number`),
  ADD UNIQUE KEY `submissions_progress_token_unique` (`progress_token`),
  ADD KEY `submissions_service_type_id_foreign` (`service_type_id`),
  ADD KEY `submissions_study_program_id_foreign` (`study_program_id`),
  ADD KEY `submissions_status_created_at_index` (`status`,`created_at`),
  ADD KEY `submissions_nim_index` (`nim`),
  ADD KEY `submissions_email_index` (`email`),
  ADD KEY `submissions_jurusan_verified_by_foreign` (`jurusan_verified_by`),
  ADD KEY `submissions_central_verified_by_foreign` (`central_verified_by`);

--
-- Indeks untuk tabel `submission_files`
--
ALTER TABLE `submission_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `submission_files_submission_id_foreign` (`submission_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_study_program_id_foreign` (`study_program_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `academic_satisfaction_surveys`
--
ALTER TABLE `academic_satisfaction_surveys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `academic_service_queues`
--
ALTER TABLE `academic_service_queues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `admin_activity_logs`
--
ALTER TABLE `admin_activity_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `dwp_catalog_categories`
--
ALTER TABLE `dwp_catalog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `dwp_catalog_products`
--
ALTER TABLE `dwp_catalog_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `graduation_toga_orders`
--
ALTER TABLE `graduation_toga_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `report_export_logs`
--
ALTER TABLE `report_export_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `service_types`
--
ALTER TABLE `service_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `status_histories`
--
ALTER TABLE `status_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `study_programs`
--
ALTER TABLE `study_programs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `submissions`
--
ALTER TABLE `submissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `submission_files`
--
ALTER TABLE `submission_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `academic_satisfaction_surveys`
--
ALTER TABLE `academic_satisfaction_surveys`
  ADD CONSTRAINT `academic_satisfaction_surveys_service_type_id_foreign` FOREIGN KEY (`service_type_id`) REFERENCES `service_types` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `academic_satisfaction_surveys_submission_id_foreign` FOREIGN KEY (`submission_id`) REFERENCES `submissions` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `academic_service_queues`
--
ALTER TABLE `academic_service_queues`
  ADD CONSTRAINT `academic_service_queues_called_by_foreign` FOREIGN KEY (`called_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `academic_service_queues_cancelled_by_foreign` FOREIGN KEY (`cancelled_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `academic_service_queues_finished_by_foreign` FOREIGN KEY (`finished_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `academic_service_queues_served_by_foreign` FOREIGN KEY (`served_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `academic_service_queues_service_type_id_foreign` FOREIGN KEY (`service_type_id`) REFERENCES `service_types` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `academic_service_queues_skipped_by_foreign` FOREIGN KEY (`skipped_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `admin_activity_logs`
--
ALTER TABLE `admin_activity_logs`
  ADD CONSTRAINT `admin_activity_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `dwp_catalog_products`
--
ALTER TABLE `dwp_catalog_products`
  ADD CONSTRAINT `dwp_catalog_products_category_fk` FOREIGN KEY (`dwp_catalog_category_id`) REFERENCES `dwp_catalog_categories` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `graduation_toga_orders`
--
ALTER TABLE `graduation_toga_orders`
  ADD CONSTRAINT `graduation_toga_orders_payment_rejected_by_foreign` FOREIGN KEY (`payment_rejected_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `graduation_toga_orders_payment_verified_by_foreign` FOREIGN KEY (`payment_verified_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `graduation_toga_orders_study_program_id_foreign` FOREIGN KEY (`study_program_id`) REFERENCES `study_programs` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `report_export_logs`
--
ALTER TABLE `report_export_logs`
  ADD CONSTRAINT `report_export_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `status_histories`
--
ALTER TABLE `status_histories`
  ADD CONSTRAINT `status_histories_changed_by_foreign` FOREIGN KEY (`changed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `status_histories_submission_id_foreign` FOREIGN KEY (`submission_id`) REFERENCES `submissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `submissions`
--
ALTER TABLE `submissions`
  ADD CONSTRAINT `submissions_central_verified_by_foreign` FOREIGN KEY (`central_verified_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `submissions_jurusan_verified_by_foreign` FOREIGN KEY (`jurusan_verified_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `submissions_service_type_id_foreign` FOREIGN KEY (`service_type_id`) REFERENCES `service_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `submissions_study_program_id_foreign` FOREIGN KEY (`study_program_id`) REFERENCES `study_programs` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `submission_files`
--
ALTER TABLE `submission_files`
  ADD CONSTRAINT `submission_files_submission_id_foreign` FOREIGN KEY (`submission_id`) REFERENCES `submissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_study_program_id_foreign` FOREIGN KEY (`study_program_id`) REFERENCES `study_programs` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
