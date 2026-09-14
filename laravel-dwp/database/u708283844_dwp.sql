-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Waktu pembuatan: 14 Sep 2026 pada 07.43
-- Versi server: 11.8.9-MariaDB-log
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
(50, 1, 'login', 'Login admin berhasil.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-10 05:02:33'),
(51, 9, 'login', 'Login admin berhasil.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-09 01:19:41'),
(52, 9, 'login', 'Login admin berhasil.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-09 01:20:59'),
(53, 9, 'login', 'Login admin berhasil.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-09 01:23:02'),
(54, 10, 'login', 'Login admin berhasil.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-09 01:23:24'),
(55, 9, 'login', 'Login admin berhasil.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-09 02:49:10'),
(56, 9, 'logout', 'Logout admin.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-09 03:09:21'),
(57, 13, 'login', 'Login admin berhasil.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-09 03:17:12'),
(58, 13, 'login', 'Login admin berhasil.', '180.254.105.36', 'Mozilla/5.0 (Linux; Android 15; V2231) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/123.0.6312.118 Mobile Safari/537.36 VivoBrowser/15.0.2.3', '2026-09-09 04:17:31'),
(59, 9, 'login', 'Login admin berhasil.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-09 05:33:52'),
(60, 13, 'login', 'Login admin berhasil.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-09 08:15:41'),
(61, 9, 'login', 'Login admin berhasil.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-10 03:05:01'),
(62, 9, 'login', 'Login admin berhasil.', '103.177.177.217', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.5.2 Mobile/15E148 Safari/604.1', '2026-09-10 08:43:59'),
(63, 9, 'login', 'Login admin berhasil.', '2402:8780:106b:6575:8d30:10c:cb91:ee2c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-10 12:55:16'),
(64, 13, 'login', 'Login admin berhasil.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-11 02:58:26'),
(65, 9, 'login', 'Login admin berhasil.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-11 03:00:41'),
(66, 9, 'login', 'Login admin berhasil.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-14 01:00:56'),
(67, 10, 'login', 'Login admin berhasil.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-14 03:28:32'),
(68, 13, 'login', 'Login admin berhasil.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-14 05:09:30'),
(69, 9, 'login', 'Login admin berhasil.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-14 06:55:38'),
(70, 13, 'login', 'Login admin berhasil.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36', '2026-09-14 07:35:55');

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
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-002b5ef3b23f4e5a07ae873522f6bbb7b5309b0f', 'i:1;', 1789101165),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-002b5ef3b23f4e5a07ae873522f6bbb7b5309b0f:timer', 'i:1789101165;', 1789101165),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-003c74ed5e83579788989229b916db5e6b8fb2e4', 'i:1;', 1789264086),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-003c74ed5e83579788989229b916db5e6b8fb2e4:timer', 'i:1789264086;', 1789264086),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-00fbd0dec7ce1bab99ac2c0bd1c5c3a37a05c961', 'i:1;', 1789362265),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-00fbd0dec7ce1bab99ac2c0bd1c5c3a37a05c961:timer', 'i:1789362265;', 1789362265),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-01510faacef9ade6dc69ab6051e29a018bc0ea29', 'i:1;', 1789103260),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-01510faacef9ade6dc69ab6051e29a018bc0ea29:timer', 'i:1789103260;', 1789103260),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-022d926a1a3a3afa47930f8e72535adeb992a460', 'i:1;', 1789131210),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-022d926a1a3a3afa47930f8e72535adeb992a460:timer', 'i:1789131210;', 1789131210),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-02639130b417b05e4bfb51831b7b798e86076317', 'i:2;', 1789361445),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-02639130b417b05e4bfb51831b7b798e86076317:timer', 'i:1789361445;', 1789361445),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-039a1f9670e22fb61a3fe3c7bbe9320b6d13f0f2', 'i:1;', 1789356888),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-039a1f9670e22fb61a3fe3c7bbe9320b6d13f0f2:timer', 'i:1789356888;', 1789356888),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-03b2291e5043a467b64468338533bce4334749d9', 'i:2;', 1789275227),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-03b2291e5043a467b64468338533bce4334749d9:timer', 'i:1789275227;', 1789275227),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-050ea0ef611a64d85f1c88f929f1f2b878a33d44', 'i:2;', 1789360775),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-050ea0ef611a64d85f1c88f929f1f2b878a33d44:timer', 'i:1789360775;', 1789360775),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-0571e28fad2b8b7685fa7b0178750b9b93137697', 'i:1;', 1789271957),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-0571e28fad2b8b7685fa7b0178750b9b93137697:timer', 'i:1789271957;', 1789271957),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-057a58c037781486664a22fde8c1f65a12135714', 'i:2;', 1789052791),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-057a58c037781486664a22fde8c1f65a12135714:timer', 'i:1789052791;', 1789052791),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-0842e7bb9af7d4aa2712daca4b479c5d683d4307', 'i:1;', 1789172294),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-0842e7bb9af7d4aa2712daca4b479c5d683d4307:timer', 'i:1789172294;', 1789172294),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-090ab680dfc797f2118ec84147ef6c9c52ed7288', 'i:1;', 1789271629),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-090ab680dfc797f2118ec84147ef6c9c52ed7288:timer', 'i:1789271629;', 1789271629),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-0983a2d3efb45c920015992341bbbd66b5fdca26', 'i:1;', 1789222696),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-0983a2d3efb45c920015992341bbbd66b5fdca26:timer', 'i:1789222696;', 1789222696),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-0be2471176f4d42434cb58555d6a13cf260274f0', 'i:2;', 1789103147),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-0be2471176f4d42434cb58555d6a13cf260274f0:timer', 'i:1789103147;', 1789103147),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-0f292b8383b45ec71936ea7c493a1ecabdf00bc3', 'i:2;', 1789272196),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-0f292b8383b45ec71936ea7c493a1ecabdf00bc3:timer', 'i:1789272196;', 1789272196),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-11dbe1a66780573874abae89bd003bdb0dbec4cf', 'i:1;', 1789362233),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-11dbe1a66780573874abae89bd003bdb0dbec4cf:timer', 'i:1789362233;', 1789362233),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-11f1081cb61e8533ccfd956368d7a57f6388ccd5', 'i:2;', 1789301315),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-11f1081cb61e8533ccfd956368d7a57f6388ccd5:timer', 'i:1789301315;', 1789301315),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-124fe337c44889406092530c2378351f07e42737', 'i:1;', 1789113737),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-124fe337c44889406092530c2378351f07e42737:timer', 'i:1789113737;', 1789113737),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-127f31d56cd9353ac324f08ee5f7fb86af7040d1', 'i:1;', 1789105558),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-127f31d56cd9353ac324f08ee5f7fb86af7040d1:timer', 'i:1789105558;', 1789105558),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-12f45328185534c673e8e4fe1d45330abe312695', 'i:1;', 1789362571),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-12f45328185534c673e8e4fe1d45330abe312695:timer', 'i:1789362571;', 1789362571),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-12fd191b2fb95cf32b04040f53a3582bac108623', 'i:2;', 1789344827),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-12fd191b2fb95cf32b04040f53a3582bac108623:timer', 'i:1789344827;', 1789344827),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-13362d5a07292383bebcb7aa4939aa74db4b89af', 'i:2;', 1789265552),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-13362d5a07292383bebcb7aa4939aa74db4b89af:timer', 'i:1789265552;', 1789265552),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-1349c086024c6aba80b6218508c83dc844e85639', 'i:1;', 1789259123),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-1349c086024c6aba80b6218508c83dc844e85639:timer', 'i:1789259123;', 1789259123),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-13bca6c1af35083a2d9ca28ee182e77788f86bb8', 'i:1;', 1789265616),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-13bca6c1af35083a2d9ca28ee182e77788f86bb8:timer', 'i:1789265616;', 1789265616),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-13f1c8f9fed957f78176e7f7688978f625b2d491', 'i:1;', 1789369936),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-13f1c8f9fed957f78176e7f7688978f625b2d491:timer', 'i:1789369936;', 1789369936),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-152d1cc6f63b75a039c2e1592f67674dda6513cd', 'i:1;', 1789265791),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-152d1cc6f63b75a039c2e1592f67674dda6513cd:timer', 'i:1789265791;', 1789265791),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-15f61eb7375088420be4daaec793ba88daf4fff1', 'i:1;', 1789265364),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-15f61eb7375088420be4daaec793ba88daf4fff1:timer', 'i:1789265364;', 1789265364),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-1605806e4fd5454cd7974ebabecf555989203837', 'i:1;', 1789339045),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-1605806e4fd5454cd7974ebabecf555989203837:timer', 'i:1789339045;', 1789339045),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-1605cc9914c211d9e1f9912584f59768d5345604', 'i:1;', 1789167689),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-1605cc9914c211d9e1f9912584f59768d5345604:timer', 'i:1789167689;', 1789167689),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-176151889d51f3d87fa039950d612424619c26a8', 'i:2;', 1789276755),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-176151889d51f3d87fa039950d612424619c26a8:timer', 'i:1789276755;', 1789276755),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-1811db887be15da1edbc07d16d3c8ff2ff912a8a', 'i:1;', 1789366706),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-1811db887be15da1edbc07d16d3c8ff2ff912a8a:timer', 'i:1789366706;', 1789366706),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-182c28f001a01b056b8b871f94877560c1f044e3', 'i:2;', 1789369715),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-182c28f001a01b056b8b871f94877560c1f044e3:timer', 'i:1789369715;', 1789369715),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-1859d69ff1690403c0b32349133523dd2db47bb1', 'i:2;', 1789183478),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-1859d69ff1690403c0b32349133523dd2db47bb1:timer', 'i:1789183478;', 1789183478),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-185b0f4ae97d94f8e53becb76b4c2abef230b1d8', 'i:1;', 1789124415),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-185b0f4ae97d94f8e53becb76b4c2abef230b1d8:timer', 'i:1789124415;', 1789124415),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-18f4efca0698e47ae5250d6ac6b0bcf7b119e052', 'i:1;', 1789050092),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-18f4efca0698e47ae5250d6ac6b0bcf7b119e052:timer', 'i:1789050092;', 1789050092),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-194f01147f90c01f16da0db50a561f1efaa70d3e', 'i:1;', 1789295101),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-194f01147f90c01f16da0db50a561f1efaa70d3e:timer', 'i:1789295101;', 1789295101),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-199a7e3f2bdf2e1682cd58b583cc4be4b81814cd', 'i:1;', 1789269862),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-199a7e3f2bdf2e1682cd58b583cc4be4b81814cd:timer', 'i:1789269862;', 1789269862),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-19e2e24fc2ecd5b79d00f0169d14aac5b7ca1762', 'i:2;', 1789359251),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-19e2e24fc2ecd5b79d00f0169d14aac5b7ca1762:timer', 'i:1789359251;', 1789359251),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-1cb8f565d4c5f62e2f63d4d33353390345823a2e', 'i:2;', 1789170035),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-1cb8f565d4c5f62e2f63d4d33353390345823a2e:timer', 'i:1789170035;', 1789170035),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-1d74f117d4bf53060fae05e75a9b2b2eda91c2a4', 'i:1;', 1789051567),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-1d74f117d4bf53060fae05e75a9b2b2eda91c2a4:timer', 'i:1789051567;', 1789051567),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-1da57b0ccf49c1be877d70102ec00a2df7ac6cff', 'i:1;', 1789359694),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-1da57b0ccf49c1be877d70102ec00a2df7ac6cff:timer', 'i:1789359694;', 1789359694),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-1e1270ebb83efde0beb79c1597129a43f4c3e15f', 'i:2;', 1789303274),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-1e1270ebb83efde0beb79c1597129a43f4c3e15f:timer', 'i:1789303274;', 1789303274),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-1e50dfe81e69bd80259095e52313db634310e5a7', 'i:2;', 1789102260),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-1e50dfe81e69bd80259095e52313db634310e5a7:timer', 'i:1789102260;', 1789102260),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-1f2fab1d91415058211c368c41dff0106265fd98', 'i:1;', 1789350084),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-1f2fab1d91415058211c368c41dff0106265fd98:timer', 'i:1789350084;', 1789350084),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-204cbe713fd467215d63c99350e827a180879046', 'i:1;', 1789054144),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-204cbe713fd467215d63c99350e827a180879046:timer', 'i:1789054144;', 1789054144),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-213c838f920ed69394350bfb4f163c70a0b6603e', 'i:1;', 1789290811),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-213c838f920ed69394350bfb4f163c70a0b6603e:timer', 'i:1789290811;', 1789290811),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-2157234eb4eba1d1b4b220e3a9fdf5597a830ef2', 'i:1;', 1789359387),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-2157234eb4eba1d1b4b220e3a9fdf5597a830ef2:timer', 'i:1789359387;', 1789359387),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-22473e04fdb0069300257adea88861ef1de69e9c', 'i:1;', 1789098876),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-22473e04fdb0069300257adea88861ef1de69e9c:timer', 'i:1789098876;', 1789098876),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-227c3e9f287cceda5fea909da35ca417e14f3fcb', 'i:1;', 1789363077),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-227c3e9f287cceda5fea909da35ca417e14f3fcb:timer', 'i:1789363077;', 1789363077),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-230393ed870dfedf12d8ed856a7b63f11eaec5be', 'i:1;', 1789050874),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-230393ed870dfedf12d8ed856a7b63f11eaec5be:timer', 'i:1789050874;', 1789050874),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-25d17bbf027d23ed6679a04da7bb11009fa3bde1', 'i:1;', 1789294384),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-25d17bbf027d23ed6679a04da7bb11009fa3bde1:timer', 'i:1789294384;', 1789294384),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-25e4e613eb16c12eb18affaf6a306256c6e2e253', 'i:1;', 1789285177),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-25e4e613eb16c12eb18affaf6a306256c6e2e253:timer', 'i:1789285177;', 1789285177),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-2713b719004a71fe20b4f2f1e197b66472380468', 'i:1;', 1789321167),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-2713b719004a71fe20b4f2f1e197b66472380468:timer', 'i:1789321167;', 1789321167),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-27189de271809a2102ff1ef4459a0722bb3495e0', 'i:1;', 1789350414),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-27189de271809a2102ff1ef4459a0722bb3495e0:timer', 'i:1789350414;', 1789350414),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-296d2f54df0d8d9b77ec4fff6a7db17c2be055b3', 'i:1;', 1789176249),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-296d2f54df0d8d9b77ec4fff6a7db17c2be055b3:timer', 'i:1789176249;', 1789176249),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-2999aa9775de997eaf3350afa770e0a00c08d028', 'i:1;', 1789352341),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-2999aa9775de997eaf3350afa770e0a00c08d028:timer', 'i:1789352341;', 1789352341),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-29a0f92756d87a795d028b00989aac5b26fac8a1', 'i:1;', 1789360427),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-29a0f92756d87a795d028b00989aac5b26fac8a1:timer', 'i:1789360427;', 1789360427),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-29d0c420e34f524b0363b9eb29bfe35479f18d94', 'i:1;', 1789359729),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-29d0c420e34f524b0363b9eb29bfe35479f18d94:timer', 'i:1789359729;', 1789359729),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-2a5f719b8513517ac7205fa39b5e5f91b8aa79ea', 'i:1;', 1789268205),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-2a5f719b8513517ac7205fa39b5e5f91b8aa79ea:timer', 'i:1789268205;', 1789268205),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-2adcb945a1e16784ca70fbaf4876f9384acceec6', 'i:1;', 1789284860),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-2adcb945a1e16784ca70fbaf4876f9384acceec6:timer', 'i:1789284860;', 1789284860),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-2d654fa30698255792f277984935fb4378c5c9ae', 'i:1;', 1789178976),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-2d654fa30698255792f277984935fb4378c5c9ae:timer', 'i:1789178976;', 1789178976),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-2d870459635b1bb1f435f180fe9845315d3cddc8', 'i:1;', 1789104666),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-2d870459635b1bb1f435f180fe9845315d3cddc8:timer', 'i:1789104666;', 1789104666),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-2e68426f894b7debfb49b4ae06335c05ea6552b9', 'i:1;', 1789260405),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-2e68426f894b7debfb49b4ae06335c05ea6552b9:timer', 'i:1789260405;', 1789260405),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-2f50cc5b9b7a5d62a3d4418c71a520504e8a5dc5', 'i:3;', 1789100933),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-2f50cc5b9b7a5d62a3d4418c71a520504e8a5dc5:timer', 'i:1789100933;', 1789100933),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-326f0c18cf3e2389b72b153f23c3600778aa47e6', 'i:1;', 1789052686),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-326f0c18cf3e2389b72b153f23c3600778aa47e6:timer', 'i:1789052686;', 1789052686),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-335c90dc5cf44c16faddd19407c98f1c9400810f', 'i:2;', 1789361825),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-335c90dc5cf44c16faddd19407c98f1c9400810f:timer', 'i:1789361825;', 1789361825),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-33b3c1fc6cd7c47f2f0e6cb0038715ce66c7f33c', 'i:1;', 1789216717),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-33b3c1fc6cd7c47f2f0e6cb0038715ce66c7f33c:timer', 'i:1789216717;', 1789216717),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-33e9cabbc32fcdb28541fbe96014c150637fcafe', 'i:1;', 1789280701),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-33e9cabbc32fcdb28541fbe96014c150637fcafe:timer', 'i:1789280701;', 1789280701),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-33ec6053a7de68296c49c6b4d63ee732c785cba8', 'i:1;', 1789046066),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-33ec6053a7de68296c49c6b4d63ee732c785cba8:timer', 'i:1789046066;', 1789046066),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-34f48e5856c2f0b5a9eefdce182ce660ab866e28', 'i:1;', 1789366427),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-34f48e5856c2f0b5a9eefdce182ce660ab866e28:timer', 'i:1789366427;', 1789366427),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-35511e35c9da3f128fd31490b0aec5035eec1753', 'i:1;', 1789371302),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-35511e35c9da3f128fd31490b0aec5035eec1753:timer', 'i:1789371302;', 1789371302),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-356e6359b05e793882fdbd59be069addca57b610', 'i:1;', 1789257320),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-356e6359b05e793882fdbd59be069addca57b610:timer', 'i:1789257320;', 1789257320),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-36530b954c733cf138e4d2f18b64e1e96baa0748', 'i:2;', 1789103400),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-36530b954c733cf138e4d2f18b64e1e96baa0748:timer', 'i:1789103400;', 1789103400),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-371265f4b8ffe78c1dfd34e7cf4c062168195e58', 'i:1;', 1789112824),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-371265f4b8ffe78c1dfd34e7cf4c062168195e58:timer', 'i:1789112824;', 1789112824),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-38ce1db6af475c48c7c2bfe98ac4bb3f437d119c', 'i:1;', 1789364480),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-38ce1db6af475c48c7c2bfe98ac4bb3f437d119c:timer', 'i:1789364480;', 1789364480),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-391ec7fca3db9c57ce98f099d40d31570fef0412', 'i:1;', 1789175337),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-391ec7fca3db9c57ce98f099d40d31570fef0412:timer', 'i:1789175337;', 1789175337),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-39474285a8ef5a536ade2c63ce4f3b50390c1db8', 'i:1;', 1789292731),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-39474285a8ef5a536ade2c63ce4f3b50390c1db8:timer', 'i:1789292731;', 1789292731),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-3964f3eff1ae5cdb32b4287f04bbecc3348f4da8', 'i:1;', 1789215821),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-3964f3eff1ae5cdb32b4287f04bbecc3348f4da8:timer', 'i:1789215821;', 1789215821),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-3a0277e7b07d07ab3d5db95e54a0c11e3bcd0116', 'i:1;', 1789127403),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-3a0277e7b07d07ab3d5db95e54a0c11e3bcd0116:timer', 'i:1789127403;', 1789127403),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-3a9444938263257bee83cf8d66e4c974ca232bec', 'i:1;', 1789174499),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-3a9444938263257bee83cf8d66e4c974ca232bec:timer', 'i:1789174499;', 1789174499),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-3d93b86f4435ec7a8ef7445301795b84bb161cae', 'i:1;', 1789098383),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-3d93b86f4435ec7a8ef7445301795b84bb161cae:timer', 'i:1789098383;', 1789098383),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-3dfa91a2185a13982a125e966a9144970ce66b2d', 'i:1;', 1789047261),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-3dfa91a2185a13982a125e966a9144970ce66b2d:timer', 'i:1789047261;', 1789047261),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-3e1f491bdf443fe59b275ee6f12573b3700712dd', 'i:2;', 1789366202),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-3e1f491bdf443fe59b275ee6f12573b3700712dd:timer', 'i:1789366202;', 1789366202),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-3e634a7be19664576ca2f7419d6b8410ffb9ee64', 'i:1;', 1789368536),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-3e634a7be19664576ca2f7419d6b8410ffb9ee64:timer', 'i:1789368536;', 1789368536),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-3e7767c0124768bff476ff997db84bb78f4de5ff', 'i:2;', 1789102811),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-3e7767c0124768bff476ff997db84bb78f4de5ff:timer', 'i:1789102811;', 1789102811),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-404594215dea7945f6d377acacfd5d32cf4982f6', 'i:3;', 1789102783),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-404594215dea7945f6d377acacfd5d32cf4982f6:timer', 'i:1789102783;', 1789102783),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-417080b0b7e46f3fe2abf526878a8b21fe7585bc', 'i:1;', 1789188585),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-417080b0b7e46f3fe2abf526878a8b21fe7585bc:timer', 'i:1789188585;', 1789188585),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-42c7d5885e9985f39d443868fbab4686028ae626', 'i:2;', 1789122858),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-42c7d5885e9985f39d443868fbab4686028ae626:timer', 'i:1789122858;', 1789122858),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-4434dcb598c0c188d12727622aff7585c05b742a', 'i:1;', 1789120833),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-4434dcb598c0c188d12727622aff7585c05b742a:timer', 'i:1789120833;', 1789120833),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-4492002b6abae49f6069b13c27541ea56ed5cd87', 'i:2;', 1789266255),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-4492002b6abae49f6069b13c27541ea56ed5cd87:timer', 'i:1789266255;', 1789266255),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-4583f775a0a522668cbce873cb952d88c7830808', 'i:1;', 1789268495),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-4583f775a0a522668cbce873cb952d88c7830808:timer', 'i:1789268495;', 1789268495),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-46f880685e5e1f4b83cf7e06a436d27fec278577', 'i:1;', 1789099024),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-46f880685e5e1f4b83cf7e06a436d27fec278577:timer', 'i:1789099024;', 1789099024),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-476aaabedd384008a12cf5990642e091e09d65ba', 'i:1;', 1789346450),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-476aaabedd384008a12cf5990642e091e09d65ba:timer', 'i:1789346450;', 1789346450),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-48131447e3db5bd32d207008fd3f20146ea3191f', 'i:1;', 1789174452),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-48131447e3db5bd32d207008fd3f20146ea3191f:timer', 'i:1789174452;', 1789174452),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-485321c168828683f622e2f46bfbe7b313519d32', 'i:2;', 1789358980),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-485321c168828683f622e2f46bfbe7b313519d32:timer', 'i:1789358980;', 1789358980),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-4868b7bdf0f8d8ec02bc2bd5e98c000028ef7b93', 'i:2;', 1789124453),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-4868b7bdf0f8d8ec02bc2bd5e98c000028ef7b93:timer', 'i:1789124453;', 1789124453),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-497e88c8b7499e652cf42d29ab5e6670a5b354ef', 'i:1;', 1789371415),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-497e88c8b7499e652cf42d29ab5e6670a5b354ef:timer', 'i:1789371415;', 1789371415),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-4a9f336edca6b9f2069442942d9e71e93bb504dd', 'i:1;', 1789359848),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-4a9f336edca6b9f2069442942d9e71e93bb504dd:timer', 'i:1789359848;', 1789359848),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-4c665870472484e5fecb1078bcbb8bcc2206c98f', 'i:2;', 1789359911),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-4c665870472484e5fecb1078bcbb8bcc2206c98f:timer', 'i:1789359911;', 1789359911),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-4cc456cea895941ff6f89722bc64c23d523933c4', 'i:1;', 1789103129),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-4cc456cea895941ff6f89722bc64c23d523933c4:timer', 'i:1789103129;', 1789103129),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-4d18678e6f9052c00ecf8494100db50d0e5ac9b9', 'i:1;', 1789259509),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-4d18678e6f9052c00ecf8494100db50d0e5ac9b9:timer', 'i:1789259509;', 1789259509),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-4ff0a916f9a7d18c66580eef9bbb3468d6e05643', 'i:1;', 1789360835),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-4ff0a916f9a7d18c66580eef9bbb3468d6e05643:timer', 'i:1789360835;', 1789360835),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-50223182f45d1ec5b5563b5f0b02723231ffb9a0', 'i:1;', 1789106267),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-50223182f45d1ec5b5563b5f0b02723231ffb9a0:timer', 'i:1789106267;', 1789106267),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-509dd2cc2feff72716cad790e7dab839d1bd44ae', 'i:2;', 1789107896),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-509dd2cc2feff72716cad790e7dab839d1bd44ae:timer', 'i:1789107896;', 1789107896),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-50f5a2e7bde4859f86b0ac5d64b1cdcbd0a1ae2d', 'i:1;', 1789208387),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-50f5a2e7bde4859f86b0ac5d64b1cdcbd0a1ae2d:timer', 'i:1789208387;', 1789208387),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-528a88830ab215e33c97b486169ae2886445468b', 'i:2;', 1789265928),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-528a88830ab215e33c97b486169ae2886445468b:timer', 'i:1789265928;', 1789265928),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-5331b1f4ec3cc54b890cc2836114caaa1b95bf96', 'i:1;', 1789361543),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-5331b1f4ec3cc54b890cc2836114caaa1b95bf96:timer', 'i:1789361543;', 1789361543),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-536bb7525fe902c48962d935bce5b547a4336b03', 'i:1;', 1789290651),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-536bb7525fe902c48962d935bce5b547a4336b03:timer', 'i:1789290651;', 1789290651),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-545c6d66b5c0dc464521f3de0f73db34b7aee4be', 'i:1;', 1789120505),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-545c6d66b5c0dc464521f3de0f73db34b7aee4be:timer', 'i:1789120505;', 1789120505),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-551ff808d3cf312e0eb5b44d107371c90bddbcfe', 'i:1;', 1789357156),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-551ff808d3cf312e0eb5b44d107371c90bddbcfe:timer', 'i:1789357156;', 1789357156),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-5601dd02198ccb33056cfc13559f10cc161071c6', 'i:1;', 1789126101),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-5601dd02198ccb33056cfc13559f10cc161071c6:timer', 'i:1789126101;', 1789126101),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-588adec0523b213dfa8cc9c1bb8c862e6f7804b5', 'i:1;', 1789054451),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-588adec0523b213dfa8cc9c1bb8c862e6f7804b5:timer', 'i:1789054451;', 1789054451),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-588c82dbf574eeeeb9d3f2731e2eb47eace87bcf', 'i:1;', 1789360342),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-588c82dbf574eeeeb9d3f2731e2eb47eace87bcf:timer', 'i:1789360342;', 1789360342),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-595ac3e7784e40ed4717ba0da20891a572d19af7', 'i:1;', 1789109366),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-595ac3e7784e40ed4717ba0da20891a572d19af7:timer', 'i:1789109366;', 1789109366),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-5b49ddf21886e2ff2e74b42390f1a8cab6dbef74', 'i:1;', 1789177505),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-5b49ddf21886e2ff2e74b42390f1a8cab6dbef74:timer', 'i:1789177505;', 1789177505),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-5b5fb4173e79ded34d6e4207ad0d17b12da470bd', 'i:2;', 1789360592),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-5b5fb4173e79ded34d6e4207ad0d17b12da470bd:timer', 'i:1789360592;', 1789360592),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-5d8bc29ba90ddc06316f1ee714d710db8b4c095e', 'i:1;', 1789117607),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-5d8bc29ba90ddc06316f1ee714d710db8b4c095e:timer', 'i:1789117607;', 1789117607),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-5e3048c50fedca3908cb332862610a0bec583d62', 'i:1;', 1789370672),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-5e3048c50fedca3908cb332862610a0bec583d62:timer', 'i:1789370672;', 1789370672),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-5ebdf5c5d96dfa80eeba5280aa9b3d8ed517b02b', 'i:3;', 1789097277),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-5ebdf5c5d96dfa80eeba5280aa9b3d8ed517b02b:timer', 'i:1789097277;', 1789097277),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-61fda35792c8d16c911a1a4a24537361b76fc257', 'i:1;', 1789176593),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-61fda35792c8d16c911a1a4a24537361b76fc257:timer', 'i:1789176593;', 1789176593),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-63fba2736a44e5e3014fbcd73bedf894687e9017', 'i:2;', 1789211450),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-63fba2736a44e5e3014fbcd73bedf894687e9017:timer', 'i:1789211450;', 1789211450),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-6579153ff712c7bd1b3cf2ea62a808856167c881', 'i:1;', 1789047948),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-6579153ff712c7bd1b3cf2ea62a808856167c881:timer', 'i:1789047948;', 1789047948),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-668f1fc541fb54121396814c17d2ed7684e2a627', 'i:3;', 1789270757),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-668f1fc541fb54121396814c17d2ed7684e2a627:timer', 'i:1789270757;', 1789270757),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-66e3f3789e3c7d57b71a2f7432c2985c2059ca35', 'i:1;', 1789051899),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-66e3f3789e3c7d57b71a2f7432c2985c2059ca35:timer', 'i:1789051899;', 1789051899),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-6783e3f92e3d3dd052033132fe6fd7767d5d54fa', 'i:2;', 1789351164),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-6783e3f92e3d3dd052033132fe6fd7767d5d54fa:timer', 'i:1789351164;', 1789351164),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-67fbde27b2d2a162f5f72e2b7f9601c6ae449ea1', 'i:1;', 1789103289),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-67fbde27b2d2a162f5f72e2b7f9601c6ae449ea1:timer', 'i:1789103289;', 1789103289),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-6b1ab1da17ed8b8a0fa6cf3516ebf411c0f87011', 'i:2;', 1789100757),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-6b1ab1da17ed8b8a0fa6cf3516ebf411c0f87011:timer', 'i:1789100757;', 1789100757),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-6ca308d178f8e7cdcba3db0f9b775aae224f7498', 'i:1;', 1789211594),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-6ca308d178f8e7cdcba3db0f9b775aae224f7498:timer', 'i:1789211594;', 1789211594),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-6ce0a8966eb8229abfad28d17efb11ef3042d40d', 'i:1;', 1789359777),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-6ce0a8966eb8229abfad28d17efb11ef3042d40d:timer', 'i:1789359777;', 1789359777),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-6d1fdf0be816c78e02fb7f6bead62c3cd7a0130a', 'i:1;', 1789306041),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-6d1fdf0be816c78e02fb7f6bead62c3cd7a0130a:timer', 'i:1789306041;', 1789306041),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-6f4877226ec3ffc12a6bee7754669727aa135653', 'i:1;', 1788927511),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-6f4877226ec3ffc12a6bee7754669727aa135653:timer', 'i:1788927511;', 1788927511),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-6f70719502b33245890fad4ab4435ee1b19d0925', 'i:1;', 1789221377),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-6f70719502b33245890fad4ab4435ee1b19d0925:timer', 'i:1789221377;', 1789221377),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-7027ed13ef65c05d0f2adc6366ed024fd227d4e7', 'i:1;', 1789278401),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-7027ed13ef65c05d0f2adc6366ed024fd227d4e7:timer', 'i:1789278401;', 1789278401),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-711dcc5f1875dc3d8071af7313f26b006ce98785', 'i:1;', 1789105160),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-711dcc5f1875dc3d8071af7313f26b006ce98785:timer', 'i:1789105160;', 1789105160),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-7296d1b278ac14430b825cd094109ceb50076a5f', 'i:1;', 1789360862),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-7296d1b278ac14430b825cd094109ceb50076a5f:timer', 'i:1789360862;', 1789360862),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-72b3b3bd5fee3db5c2fab52b34e784befcac4c8d', 'i:2;', 1789218801),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-72b3b3bd5fee3db5c2fab52b34e784befcac4c8d:timer', 'i:1789218801;', 1789218801),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-734ddaf649bd0bc9cfb3e2a2223298b15804e8d7', 'i:2;', 1789102641),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-734ddaf649bd0bc9cfb3e2a2223298b15804e8d7:timer', 'i:1789102641;', 1789102641),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-74139fcd50732d0492186c23a234be1b2c1e1bcc', 'i:1;', 1789216764),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-74139fcd50732d0492186c23a234be1b2c1e1bcc:timer', 'i:1789216764;', 1789216764),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-743e9388b8ec838fa48c622bf31d77e973de1bfe', 'i:1;', 1789358954),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-743e9388b8ec838fa48c622bf31d77e973de1bfe:timer', 'i:1789358954;', 1789358954),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-74711f68f7b5552584be92e4e64568613035b4cd', 'i:1;', 1789364558),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-74711f68f7b5552584be92e4e64568613035b4cd:timer', 'i:1789364558;', 1789364558),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-76c367d4d58039718c9cffd3e844fdc45d4f35d9', 'i:1;', 1789209332),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-76c367d4d58039718c9cffd3e844fdc45d4f35d9:timer', 'i:1789209332;', 1789209332),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-7901275c8b648a7e93a35dfabc4d9350c18a56da', 'i:1;', 1789113880),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-7901275c8b648a7e93a35dfabc4d9350c18a56da:timer', 'i:1789113880;', 1789113880),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-79303c4214987121ea7fd5ff46cb5ffba3fcd85e', 'i:2;', 1789187832),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-79303c4214987121ea7fd5ff46cb5ffba3fcd85e:timer', 'i:1789187832;', 1789187832),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-798b6cb2b66af5a02fe60fc2d9deb1993dcbf323', 'i:1;', 1789365446),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-798b6cb2b66af5a02fe60fc2d9deb1993dcbf323:timer', 'i:1789365446;', 1789365446),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-79f2b960dc9c0d40f9d1b0d28cfee3da032f4cd8', 'i:1;', 1789262663),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-79f2b960dc9c0d40f9d1b0d28cfee3da032f4cd8:timer', 'i:1789262663;', 1789262663),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-79fddee9589e381febc93bb547fe61ff45211980', 'i:1;', 1789259133),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-79fddee9589e381febc93bb547fe61ff45211980:timer', 'i:1789259133;', 1789259133),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-7a07883f7b080f5304737e9adcd7d714df588d0e', 'i:1;', 1789278223),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-7a07883f7b080f5304737e9adcd7d714df588d0e:timer', 'i:1789278223;', 1789278223),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-7a39d242db873b36240b50d46cad092db4278ba8', 'i:1;', 1789365743),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-7a39d242db873b36240b50d46cad092db4278ba8:timer', 'i:1789365743;', 1789365743),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-7b6f87a6d33f052cf937c5f842a8da2db44e6d15', 'i:1;', 1789279478),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-7b6f87a6d33f052cf937c5f842a8da2db44e6d15:timer', 'i:1789279478;', 1789279478),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-7ca7fcad2d29004c7055601ced4663af27df069a', 'i:1;', 1789120274),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-7ca7fcad2d29004c7055601ced4663af27df069a:timer', 'i:1789120274;', 1789120274),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-7ccd5174e042b7f290669dfdf3bc6b7fca4216e7', 'i:1;', 1789052199),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-7ccd5174e042b7f290669dfdf3bc6b7fca4216e7:timer', 'i:1789052199;', 1789052199),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-7d4557b5deb768d6190f0903351c156dede2158e', 'i:2;', 1789275684),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-7d4557b5deb768d6190f0903351c156dede2158e:timer', 'i:1789275684;', 1789275684),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-7d637955f8877784a7243e4d62a38336933f2cdd', 'i:1;', 1789272047),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-7d637955f8877784a7243e4d62a38336933f2cdd:timer', 'i:1789272047;', 1789272047),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-7e0b9e378dba0736ffeaafbec294cbb5770d3f62', 'i:1;', 1789177420),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-7e0b9e378dba0736ffeaafbec294cbb5770d3f62:timer', 'i:1789177420;', 1789177420),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-7e23a8918773117c46c5494ec222cd211427c1bf', 'i:1;', 1789126207),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-7e23a8918773117c46c5494ec222cd211427c1bf:timer', 'i:1789126207;', 1789126207),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-7e6365bdcb908f4592b04896572f0ab251151fc1', 'i:2;', 1789088805),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-7e6365bdcb908f4592b04896572f0ab251151fc1:timer', 'i:1789088805;', 1789088805),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-7e7bfa9cd26fde5435672bfdc96d411eaf9806d6', 'i:1;', 1789127605),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-7e7bfa9cd26fde5435672bfdc96d411eaf9806d6:timer', 'i:1789127605;', 1789127605),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-7eb71e9cb31f98b8a710bfac69ee285bc883b168', 'i:2;', 1789120729),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-7eb71e9cb31f98b8a710bfac69ee285bc883b168:timer', 'i:1789120729;', 1789120729),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-7f904b89746f2b2d8da766cc8a416abb70664715', 'i:1;', 1789102968),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-7f904b89746f2b2d8da766cc8a416abb70664715:timer', 'i:1789102968;', 1789102968),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-80344e6b1edadeeec1fd3de052b08dc87ddae725', 'i:1;', 1789360936),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-80344e6b1edadeeec1fd3de052b08dc87ddae725:timer', 'i:1789360936;', 1789360936),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-8080dd28000d5a358cefe9f9101cd9fb0cc542b6', 'i:1;', 1789283017),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-8080dd28000d5a358cefe9f9101cd9fb0cc542b6:timer', 'i:1789283017;', 1789283017),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-80d930c2509ff16c2340a6b515fbec8f5bff8309', 'i:1;', 1789264879),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-80d930c2509ff16c2340a6b515fbec8f5bff8309:timer', 'i:1789264879;', 1789264879),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-811210ece5171125cc9afb4015f49a401f0b5769', 'i:1;', 1789364456),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-811210ece5171125cc9afb4015f49a401f0b5769:timer', 'i:1789364456;', 1789364456),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-818b5bcf21453d1ff94ca2472c48dec320804dbd', 'i:1;', 1789355718),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-818b5bcf21453d1ff94ca2472c48dec320804dbd:timer', 'i:1789355718;', 1789355718),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-8452d2e79fca05770c3ebe2c8f5abf56de339793', 'i:2;', 1789258135),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-8452d2e79fca05770c3ebe2c8f5abf56de339793:timer', 'i:1789258135;', 1789258135),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-8500f6029ae3be04ca6e2797cb19186c709c5901', 'i:1;', 1789360268),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-8500f6029ae3be04ca6e2797cb19186c709c5901:timer', 'i:1789360268;', 1789360268),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-851e5afee63ec3e1791fba95d06666f424caba77', 'i:2;', 1789265048),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-851e5afee63ec3e1791fba95d06666f424caba77:timer', 'i:1789265048;', 1789265048),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-8714c62a8895acaa69227211248e2eaa1d405ceb', 'i:3;', 1789265215),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-8714c62a8895acaa69227211248e2eaa1d405ceb:timer', 'i:1789265215;', 1789265215),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-873c205ea6e904784ead1ba5f4b79cd7b2333c47', 'i:2;', 1789278579),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-873c205ea6e904784ead1ba5f4b79cd7b2333c47:timer', 'i:1789278579;', 1789278579),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-8740d20eb13b674d0b27e8dd439f536d595c61f0', 'i:1;', 1789360277),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-8740d20eb13b674d0b27e8dd439f536d595c61f0:timer', 'i:1789360277;', 1789360277),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-88a5bab9dfdcfe6c425268d8f32039b292edd647', 'i:1;', 1789304910),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-88a5bab9dfdcfe6c425268d8f32039b292edd647:timer', 'i:1789304910;', 1789304910),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-8a6978ca461a536cc492ff711d2a6573678bbcf8', 'i:2;', 1789103049),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-8a6978ca461a536cc492ff711d2a6573678bbcf8:timer', 'i:1789103049;', 1789103049),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-8c251f21e90280ce894e9e97cc76b08330d14200', 'i:1;', 1789100594),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-8c251f21e90280ce894e9e97cc76b08330d14200:timer', 'i:1789100594;', 1789100594),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-8c3b96cbd0c553bfbd4604ab4363b8f3cb48100c', 'i:1;', 1789361052),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-8c3b96cbd0c553bfbd4604ab4363b8f3cb48100c:timer', 'i:1789361052;', 1789361052),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-8c9761ee186743982a56b5356fd955d4fa8b97ce', 'i:1;', 1789100587),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-8c9761ee186743982a56b5356fd955d4fa8b97ce:timer', 'i:1789100587;', 1789100587),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-8cf07d20711546da0154ae03ac3dd886e6e53b94', 'i:2;', 1789195175),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-8cf07d20711546da0154ae03ac3dd886e6e53b94:timer', 'i:1789195175;', 1789195175),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-8dbba0859707afb7682f3741828564f753300e9f', 'i:1;', 1789275801),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-8dbba0859707afb7682f3741828564f753300e9f:timer', 'i:1789275801;', 1789275801),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-8e272a876ce1baf559c8be1e71781716776c7c1b', 'i:1;', 1789110094),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-8e272a876ce1baf559c8be1e71781716776c7c1b:timer', 'i:1789110094;', 1789110094),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-8e97264680b75f1799de0070ccf64dbd269d0bef', 'i:2;', 1789267615),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-8e97264680b75f1799de0070ccf64dbd269d0bef:timer', 'i:1789267615;', 1789267615),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-8fd281af4d1c4ccfb7223a38259659b9dfcb2cf5', 'i:1;', 1789360164),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-8fd281af4d1c4ccfb7223a38259659b9dfcb2cf5:timer', 'i:1789360164;', 1789360164),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-906b9331bab604e53bf318b05e2c92228e17e112', 'i:1;', 1789192058),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-906b9331bab604e53bf318b05e2c92228e17e112:timer', 'i:1789192058;', 1789192058),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-9102118200b87ac7e1f0dadabbcc083f4cdcfdfa', 'i:1;', 1789347449),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-9102118200b87ac7e1f0dadabbcc083f4cdcfdfa:timer', 'i:1789347449;', 1789347449),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-91bc8085a30389b4ccc4d377b496005a8680dc86', 'i:1;', 1789103148),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-91bc8085a30389b4ccc4d377b496005a8680dc86:timer', 'i:1789103148;', 1789103148),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-91d299aeb48d211921f38f63c98d29c12d4b74fc', 'i:2;', 1789185826),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-91d299aeb48d211921f38f63c98d29c12d4b74fc:timer', 'i:1789185826;', 1789185826),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-9417d507ae61395c7999be1b94f7a1b7381b149b', 'i:2;', 1789265854),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-9417d507ae61395c7999be1b94f7a1b7381b149b:timer', 'i:1789265854;', 1789265854),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-947b5755cdb19cd5d16aab454c2e377fd5111516', 'i:1;', 1789357902),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-947b5755cdb19cd5d16aab454c2e377fd5111516:timer', 'i:1789357902;', 1789357902),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-94eb9c77cb3bcfcaf84fc99564f785c50ad3cf5e', 'i:1;', 1789257250),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-94eb9c77cb3bcfcaf84fc99564f785c50ad3cf5e:timer', 'i:1789257250;', 1789257250),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-95d2a24c6f0f6963647e906433e23811037609f6', 'i:1;', 1789305446),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-95d2a24c6f0f6963647e906433e23811037609f6:timer', 'i:1789305446;', 1789305446),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-960936253f23bf532d2d3750a7adf65d379756a2', 'i:2;', 1789085908),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-960936253f23bf532d2d3750a7adf65d379756a2:timer', 'i:1789085908;', 1789085908),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-96715988642e24f610944d7aae56876229153adb', 'i:3;', 1789174410),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-96715988642e24f610944d7aae56876229153adb:timer', 'i:1789174410;', 1789174410),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-96e0072c3c076ec1d9be84bd542aac7693284d81', 'i:1;', 1789347834),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-96e0072c3c076ec1d9be84bd542aac7693284d81:timer', 'i:1789347834;', 1789347834),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-977dadc89c1c22c8c640bc42e0c864579ce29980', 'i:2;', 1789292791),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-977dadc89c1c22c8c640bc42e0c864579ce29980:timer', 'i:1789292791;', 1789292791),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-97811e2a3abfc736797887b0e6d90c72efc3a573', 'i:2;', 1789362234),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-97811e2a3abfc736797887b0e6d90c72efc3a573:timer', 'i:1789362234;', 1789362234),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-97b383294f61aa10e99c70412e47f026f54bbac8', 'i:1;', 1789099077),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-97b383294f61aa10e99c70412e47f026f54bbac8:timer', 'i:1789099077;', 1789099077),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-99bca05a1724b5d22d9923092160199b12c85bfd', 'i:2;', 1789116623);
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-99bca05a1724b5d22d9923092160199b12c85bfd:timer', 'i:1789116623;', 1789116623),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-9a1879b444484380c9bfbdd975132fc2091bd1a8', 'i:1;', 1789279582),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-9a1879b444484380c9bfbdd975132fc2091bd1a8:timer', 'i:1789279582;', 1789279582),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-9a41b44e9cf59b3571f597a3f5c75fa38fa03f21', 'i:1;', 1789268155),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-9a41b44e9cf59b3571f597a3f5c75fa38fa03f21:timer', 'i:1789268155;', 1789268155),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-9b49e4bdc07e2ba8533f4593c9a85b6feda10e34', 'i:1;', 1789279334),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-9b49e4bdc07e2ba8533f4593c9a85b6feda10e34:timer', 'i:1789279334;', 1789279334),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-9b58d3983f157da5f8d2342afa77722091a0d070', 'i:1;', 1789105684),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-9b58d3983f157da5f8d2342afa77722091a0d070:timer', 'i:1789105684;', 1789105684),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-9b763d7832c1fc0f103178e17dd770ff5687ebc4', 'i:1;', 1789051181),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-9b763d7832c1fc0f103178e17dd770ff5687ebc4:timer', 'i:1789051181;', 1789051181),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-9ba5a909209cef40161a50539f6eedfb114eefab', 'i:1;', 1789044975),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-9ba5a909209cef40161a50539f6eedfb114eefab:timer', 'i:1789044975;', 1789044975),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-9bc9434bbaea8e9195a2790ccf939fda80f87ae5', 'i:1;', 1789048487),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-9bc9434bbaea8e9195a2790ccf939fda80f87ae5:timer', 'i:1789048487;', 1789048487),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-9bcbf87f48a55f798c66b58da5e1de40cb13ca38', 'i:2;', 1789123137),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-9bcbf87f48a55f798c66b58da5e1de40cb13ca38:timer', 'i:1789123137;', 1789123137),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-9d302daf7c1f8c6cd0f051fb2ed721dd80e13c00', 'i:2;', 1789047028),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-9d302daf7c1f8c6cd0f051fb2ed721dd80e13c00:timer', 'i:1789047028;', 1789047028),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-9d4cb08afdd2875b39319750ab3e0481f2fa1493', 'i:2;', 1789303887),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-9d4cb08afdd2875b39319750ab3e0481f2fa1493:timer', 'i:1789303887;', 1789303887),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-9de4dd30599af9ef6a91dae30c1caa52abdbef78', 'i:2;', 1789100900),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-9de4dd30599af9ef6a91dae30c1caa52abdbef78:timer', 'i:1789100900;', 1789100900),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-9e7a8230a79dae144a8cf147b37eebca38c436ed', 'i:1;', 1789105063),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-9e7a8230a79dae144a8cf147b37eebca38c436ed:timer', 'i:1789105063;', 1789105063),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-9eeec7c004673fcd661e4aae76b61b5085771bd7', 'i:1;', 1789043268),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-9eeec7c004673fcd661e4aae76b61b5085771bd7:timer', 'i:1789043268;', 1789043268),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-9f76f07d7c151fd4981e091fd6c53b2385dc45d0', 'i:1;', 1789352940),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-9f76f07d7c151fd4981e091fd6c53b2385dc45d0:timer', 'i:1789352940;', 1789352940),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-9fc61f9ff9d802ef2a9b36c2c6ffd1d2c3c2e3ba', 'i:2;', 1789265914),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-9fc61f9ff9d802ef2a9b36c2c6ffd1d2c3c2e3ba:timer', 'i:1789265914;', 1789265914),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-a2372c283780ffb4b796d519fe4ee90fd9b5ab28', 'i:1;', 1789273008),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-a2372c283780ffb4b796d519fe4ee90fd9b5ab28:timer', 'i:1789273008;', 1789273008),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-a3c6a9cf3218df89a4abf48c61316e65e11358ba', 'i:1;', 1789301298),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-a3c6a9cf3218df89a4abf48c61316e65e11358ba:timer', 'i:1789301298;', 1789301298),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-a4245ee192effe3886f2514de8f91e95ac0cb1cd', 'i:1;', 1789103776),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-a4245ee192effe3886f2514de8f91e95ac0cb1cd:timer', 'i:1789103776;', 1789103776),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-a4363266c6255e3294b0be92c14ab0a3e44b2544', 'i:1;', 1789104829),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-a4363266c6255e3294b0be92c14ab0a3e44b2544:timer', 'i:1789104829;', 1789104829),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-a524c8d07d40dc008120d8489531b76e73056bf6', 'i:1;', 1789126091),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-a524c8d07d40dc008120d8489531b76e73056bf6:timer', 'i:1789126091;', 1789126091),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-a6acffd2da97782519059089f65c568bec6da59b', 'i:1;', 1789123882),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-a6acffd2da97782519059089f65c568bec6da59b:timer', 'i:1789123882;', 1789123882),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-a6d723367fabfd401d014973fe2cbe795fe27e74', 'i:1;', 1789277328),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-a6d723367fabfd401d014973fe2cbe795fe27e74:timer', 'i:1789277328;', 1789277328),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-a80f5f9ba31580c873ba3b2ad49cc578668b632e', 'i:1;', 1789097141),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-a80f5f9ba31580c873ba3b2ad49cc578668b632e:timer', 'i:1789097141;', 1789097141),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-a973b91c7cd5e5aa87f449b74f295035095c23e5', 'i:1;', 1789265910),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-a973b91c7cd5e5aa87f449b74f295035095c23e5:timer', 'i:1789265910;', 1789265910),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-a97f44b7c0de3f9ac3438a434b44bc22927302c3', 'i:2;', 1789103312),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-a97f44b7c0de3f9ac3438a434b44bc22927302c3:timer', 'i:1789103312;', 1789103312),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-a9c2c436e2a7e17de63b6c9053496cd57d81b409', 'i:1;', 1789178554),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-a9c2c436e2a7e17de63b6c9053496cd57d81b409:timer', 'i:1789178554;', 1789178554),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-aa2e7c4e6481c912498808b6b86c254a411bae17', 'i:1;', 1789181224),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-aa2e7c4e6481c912498808b6b86c254a411bae17:timer', 'i:1789181224;', 1789181224),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-aa600fd838c845c0d3c8242899be971afdb3fec6', 'i:1;', 1789370891),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-aa600fd838c845c0d3c8242899be971afdb3fec6:timer', 'i:1789370891;', 1789370891),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-abb288ded1ae879f95ef816bdc58151f60e290a5', 'i:1;', 1789185448),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-abb288ded1ae879f95ef816bdc58151f60e290a5:timer', 'i:1789185448;', 1789185448),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-aea3a3a6fc4b49d814688eaed073a46131b9390c', 'i:1;', 1789097370),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-aea3a3a6fc4b49d814688eaed073a46131b9390c:timer', 'i:1789097370;', 1789097370),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-aecc01fa6dbe675357fe45f183b1172415a02037', 'i:2;', 1789360370),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-aecc01fa6dbe675357fe45f183b1172415a02037:timer', 'i:1789360370;', 1789360370),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b043ff80f16a6dca28855ea7d3be4a7bccb817b1', 'i:1;', 1789184494),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b043ff80f16a6dca28855ea7d3be4a7bccb817b1:timer', 'i:1789184494;', 1789184494),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b10c60b1a5d903f8d16949978faa4684bf432f42', 'i:1;', 1789359669),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b10c60b1a5d903f8d16949978faa4684bf432f42:timer', 'i:1789359669;', 1789359669),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b16216dd89af300692a0358d8e72e463f8d5e100', 'i:1;', 1789350218),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b16216dd89af300692a0358d8e72e463f8d5e100:timer', 'i:1789350218;', 1789350218),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b250fbb59a60293bcf385861e463502699594b3a', 'i:1;', 1789174014),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b250fbb59a60293bcf385861e463502699594b3a:timer', 'i:1789174014;', 1789174014),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b2cce9134e30475e6a85ed9dd900b344246b890a', 'i:2;', 1789124042),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b2cce9134e30475e6a85ed9dd900b344246b890a:timer', 'i:1789124042;', 1789124042),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b2ecac0b12ab54675a5c52fb4be88ea577650c2a', 'i:1;', 1789266881),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b2ecac0b12ab54675a5c52fb4be88ea577650c2a:timer', 'i:1789266881;', 1789266881),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b32c52dde02e158b2124186c21cca76f8744d174', 'i:1;', 1789277950),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b32c52dde02e158b2124186c21cca76f8744d174:timer', 'i:1789277950;', 1789277950),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b3dc96bfac689bfaed8604c62b3bd4bb4e7a6b68', 'i:1;', 1789363273),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b3dc96bfac689bfaed8604c62b3bd4bb4e7a6b68:timer', 'i:1789363273;', 1789363273),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b466b751d796f8589719893e4a488e8a7281dcd7', 'i:1;', 1789265224),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b466b751d796f8589719893e4a488e8a7281dcd7:timer', 'i:1789265224;', 1789265224),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b499b8f4e7ac262c97c065180ec1d8bab34a68d8', 'i:1;', 1789112185),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b499b8f4e7ac262c97c065180ec1d8bab34a68d8:timer', 'i:1789112185;', 1789112185),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b51f9a5f7390906ecc0da4d3c69fb5fa5df123ce', 'i:1;', 1789271720),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b51f9a5f7390906ecc0da4d3c69fb5fa5df123ce:timer', 'i:1789271720;', 1789271720),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b58a3f1ee18081e1d439b4f9a342442b59dcb6ad', 'i:1;', 1789359738),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b58a3f1ee18081e1d439b4f9a342442b59dcb6ad:timer', 'i:1789359738;', 1789359738),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b617704656fb557b2196123967fe5b80e09a75e3', 'i:1;', 1789266661),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b617704656fb557b2196123967fe5b80e09a75e3:timer', 'i:1789266661;', 1789266661),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b7e809df1ea3eab61f1da110cafb36885532c3b2', 'i:1;', 1789303327),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b7e809df1ea3eab61f1da110cafb36885532c3b2:timer', 'i:1789303327;', 1789303327),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b9f8b1a972642058de10f03d7c613e42ff447885', 'i:2;', 1789361728),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b9f8b1a972642058de10f03d7c613e42ff447885:timer', 'i:1789361728;', 1789361728),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-ba1d75943f84c7fbc5036cde4f4292db19cca810', 'i:1;', 1789271787),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-ba1d75943f84c7fbc5036cde4f4292db19cca810:timer', 'i:1789271787;', 1789271787),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-bd402b3599db32a66f3e8549f9b40f5bb927b1dd', 'i:1;', 1789174388),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-bd402b3599db32a66f3e8549f9b40f5bb927b1dd:timer', 'i:1789174388;', 1789174388),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-bea8b4c369f24a729ef08ee79e2225b3148e90d3', 'i:1;', 1789361489),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-bea8b4c369f24a729ef08ee79e2225b3148e90d3:timer', 'i:1789361489;', 1789361489),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-c022c80b78080bb7d139e0a38abfb458932a8cec', 'i:1;', 1789105273),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-c022c80b78080bb7d139e0a38abfb458932a8cec:timer', 'i:1789105273;', 1789105273),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-c227a92b4a1241bcc33cc1ff1f0e9da9c3815ed5', 'i:1;', 1789102019),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-c227a92b4a1241bcc33cc1ff1f0e9da9c3815ed5:timer', 'i:1789102019;', 1789102019),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-c2625606b9523eca27bb29a8ccd86a4fe7204524', 'i:2;', 1789101082),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-c2625606b9523eca27bb29a8ccd86a4fe7204524:timer', 'i:1789101082;', 1789101082),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-c2c5efea8bca8a21d527ccbc88eb27fd6e39803e', 'i:1;', 1789116332),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-c2c5efea8bca8a21d527ccbc88eb27fd6e39803e:timer', 'i:1789116332;', 1789116332),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-c2f1b91eaf2ef95399300b13865a15a0da27a984', 'i:1;', 1789263295),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-c2f1b91eaf2ef95399300b13865a15a0da27a984:timer', 'i:1789263295;', 1789263295),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-c36dcb8116d00f62e689469084c1a11d5d838921', 'i:1;', 1789359541),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-c36dcb8116d00f62e689469084c1a11d5d838921:timer', 'i:1789359541;', 1789359541),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-c3ef86f740fa5624ca770a99e12335ca485fa1d7', 'i:1;', 1789298738),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-c3ef86f740fa5624ca770a99e12335ca485fa1d7:timer', 'i:1789298738;', 1789298738),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-c4179eb519080d0965dc623bdf08fed74e367fba', 'i:1;', 1789267437),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-c4179eb519080d0965dc623bdf08fed74e367fba:timer', 'i:1789267437;', 1789267437),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-c427b1094ce50dbc112cad2de76f62645b8df861', 'i:2;', 1789265765),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-c427b1094ce50dbc112cad2de76f62645b8df861:timer', 'i:1789265765;', 1789265765),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-c5009aed0bc53ff0d73b3b5e847c51cd1c4aa207', 'i:1;', 1789362651),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-c5009aed0bc53ff0d73b3b5e847c51cd1c4aa207:timer', 'i:1789362651;', 1789362651),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-c516f3414b10d73401031bb8213f0413f18d381b', 'i:1;', 1789209483),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-c516f3414b10d73401031bb8213f0413f18d381b:timer', 'i:1789209483;', 1789209483),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-c56751dc0a9d2209a9d12bd0a63caeecd55b43dd', 'i:2;', 1789109280),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-c56751dc0a9d2209a9d12bd0a63caeecd55b43dd:timer', 'i:1789109280;', 1789109280),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-c61af23632004f40f1854357bc8f929f8a569f95', 'i:1;', 1789285774),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-c61af23632004f40f1854357bc8f929f8a569f95:timer', 'i:1789285774;', 1789285774),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-c64a4487763c6b6c17239138dd4d0ae1de19e75e', 'i:2;', 1789098656),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-c64a4487763c6b6c17239138dd4d0ae1de19e75e:timer', 'i:1789098656;', 1789098656),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-c6bebea3267212b41a6bf884936bab6fa1b5dd71', 'i:1;', 1789108615),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-c6bebea3267212b41a6bf884936bab6fa1b5dd71:timer', 'i:1789108615;', 1789108615),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-c72097b5ee6e9b398751952bebd9e3ddc770d54b', 'i:1;', 1789186533),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-c72097b5ee6e9b398751952bebd9e3ddc770d54b:timer', 'i:1789186533;', 1789186533),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-c7987d52ab4af4fa982a14fe92ae9be39cefe4f6', 'i:1;', 1789045278),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-c7987d52ab4af4fa982a14fe92ae9be39cefe4f6:timer', 'i:1789045278;', 1789045278),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-c87cb66274df248ed8f8ff5f4e791be70b9f6037', 'i:1;', 1789047107),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-c87cb66274df248ed8f8ff5f4e791be70b9f6037:timer', 'i:1789047107;', 1789047107),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-c904f4620571851f35526483fd6a647d5eb3ea4a', 'i:1;', 1789349443),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-c904f4620571851f35526483fd6a647d5eb3ea4a:timer', 'i:1789349443;', 1789349443),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-c90b2cff5aefe90faf564812b471dc55ed2b817a', 'i:1;', 1789046649),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-c90b2cff5aefe90faf564812b471dc55ed2b817a:timer', 'i:1789046649;', 1789046649),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-ca33316152e53515637a8cdea7741afb92062a7e', 'i:1;', 1789353891),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-ca33316152e53515637a8cdea7741afb92062a7e:timer', 'i:1789353891;', 1789353891),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-ca8e853223b2c7e44d357ddbc63817eeb852303b', 'i:2;', 1789267296),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-ca8e853223b2c7e44d357ddbc63817eeb852303b:timer', 'i:1789267296;', 1789267296),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-cad6a665fec47077ef1a4f1bfb4b5726d8a0f25f', 'i:2;', 1789188054),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-cad6a665fec47077ef1a4f1bfb4b5726d8a0f25f:timer', 'i:1789188054;', 1789188054),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-cae604f139dcdf10977ab1245b987721c6c0ada0', 'i:1;', 1789277553),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-cae604f139dcdf10977ab1245b987721c6c0ada0:timer', 'i:1789277553;', 1789277553),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-cb0418b38bf91953fc8e66f8626e909e4855c0e2', 'i:1;', 1789100858),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-cb0418b38bf91953fc8e66f8626e909e4855c0e2:timer', 'i:1789100858;', 1789100858),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-cb4146d17e5c41fe9f4f825452b80b76205f8358', 'i:1;', 1789103037),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-cb4146d17e5c41fe9f4f825452b80b76205f8358:timer', 'i:1789103037;', 1789103037),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-cba2842ab448287fa8914e7a924187a8341064cd', 'i:1;', 1789051641),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-cba2842ab448287fa8914e7a924187a8341064cd:timer', 'i:1789051641;', 1789051641),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-cba8f67936661fd098daa0212f974cd037b9e5cb', 'i:1;', 1789357556),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-cba8f67936661fd098daa0212f974cd037b9e5cb:timer', 'i:1789357556;', 1789357556),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-cf2770fbb14b536d28b04066b351e2960535679e', 'i:1;', 1789309217),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-cf2770fbb14b536d28b04066b351e2960535679e:timer', 'i:1789309217;', 1789309217),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-d0a8342707bd836001a04490ddbfd6dc44f60a5b', 'i:2;', 1789107896),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-d0a8342707bd836001a04490ddbfd6dc44f60a5b:timer', 'i:1789107896;', 1789107896),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-d0e11e15bfb08126997f08a051f194ac9653238f', 'i:1;', 1789359641),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-d0e11e15bfb08126997f08a051f194ac9653238f:timer', 'i:1789359641;', 1789359641),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-d1aca89b28dabd9a87255ffbd5b69f7da48d105b', 'i:1;', 1789101549),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-d1aca89b28dabd9a87255ffbd5b69f7da48d105b:timer', 'i:1789101549;', 1789101549),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-d2e0be42de4e34986a0e989f93160cbf79db3923', 'i:1;', 1789369767),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-d2e0be42de4e34986a0e989f93160cbf79db3923:timer', 'i:1789369767;', 1789369767),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-d31cfd4113f5dbbff0fea037a28a8214c85e3a8d', 'i:1;', 1789301376),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-d31cfd4113f5dbbff0fea037a28a8214c85e3a8d:timer', 'i:1789301376;', 1789301376),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-d33edc4f5ae1c91e79bfe4b01392205cd5dff514', 'i:1;', 1789365244),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-d33edc4f5ae1c91e79bfe4b01392205cd5dff514:timer', 'i:1789365244;', 1789365244),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-d41182c6afbbd2899b2c2534b5657b21196f1851', 'i:1;', 1789050302),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-d41182c6afbbd2899b2c2534b5657b21196f1851:timer', 'i:1789050302;', 1789050302),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-d47ab988083a4489e2983adb34e7dad3de16a452', 'i:1;', 1789051822),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-d47ab988083a4489e2983adb34e7dad3de16a452:timer', 'i:1789051822;', 1789051822),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-d6150261e730eeddc59e142493d28bfc927227ed', 'i:2;', 1789360527),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-d6150261e730eeddc59e142493d28bfc927227ed:timer', 'i:1789360527;', 1789360527),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-d7b07b469f4d542adab9240f41262b27309e12a5', 'i:1;', 1789052149),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-d7b07b469f4d542adab9240f41262b27309e12a5:timer', 'i:1789052149;', 1789052149),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-d7d12def23b7877b1fe7f503d6667dfda050ed81', 'i:1;', 1789232954),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-d7d12def23b7877b1fe7f503d6667dfda050ed81:timer', 'i:1789232954;', 1789232954),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-d7d5cdf49476a38feca871938134bd9a35d8cee2', 'i:1;', 1789131066),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-d7d5cdf49476a38feca871938134bd9a35d8cee2:timer', 'i:1789131066;', 1789131066),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-d8bca6e0d4440a36605302084cc4dbae619a4183', 'i:1;', 1789243684),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-d8bca6e0d4440a36605302084cc4dbae619a4183:timer', 'i:1789243684;', 1789243684),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-d92b77dc53834edb7523ae39736e45a76c6dcb06', 'i:1;', 1789100991),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-d92b77dc53834edb7523ae39736e45a76c6dcb06:timer', 'i:1789100991;', 1789100991),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-d9e1b088dd4d633040635a234fcab1eaf285028a', 'i:3;', 1789272999),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-d9e1b088dd4d633040635a234fcab1eaf285028a:timer', 'i:1789272999;', 1789272999),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-dacbd913388c3ebfdc34091ac4ac824ec5faadcb', 'i:1;', 1789093845),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-dacbd913388c3ebfdc34091ac4ac824ec5faadcb:timer', 'i:1789093845;', 1789093845),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-dae1b339bec4e2bedb7dfd2c05a0bd78a0148958', 'i:3;', 1789137688),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-dae1b339bec4e2bedb7dfd2c05a0bd78a0148958:timer', 'i:1789137688;', 1789137688),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-db428b1dda18e859d810c1c68beab7d7fb706881', 'i:1;', 1789348034),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-db428b1dda18e859d810c1c68beab7d7fb706881:timer', 'i:1789348034;', 1789348034),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-dd012e2809eb71e9b1a53106ae7d04147940ce18', 'i:1;', 1789349428),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-dd012e2809eb71e9b1a53106ae7d04147940ce18:timer', 'i:1789349428;', 1789349428),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-ddf9c09bbe1f1b2167f9af3c4f48c371cf267650', 'i:1;', 1789182799),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-ddf9c09bbe1f1b2167f9af3c4f48c371cf267650:timer', 'i:1789182799;', 1789182799),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-de8c0868f3f54ac7cd00fed5b9dd1ab74958a837', 'i:2;', 1789204492),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-de8c0868f3f54ac7cd00fed5b9dd1ab74958a837:timer', 'i:1789204492;', 1789204492),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-e10dd64cb9b270d3fb43bd534bc19ae19e122c6a', 'i:1;', 1789360735),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-e10dd64cb9b270d3fb43bd534bc19ae19e122c6a:timer', 'i:1789360735;', 1789360735),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-e1f27b7a4f22327a6f921bf68532a78160ab8a72', 'i:1;', 1789345724),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-e1f27b7a4f22327a6f921bf68532a78160ab8a72:timer', 'i:1789345724;', 1789345724),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-e240adc3b6428463b6125291ad66a3dee731e206', 'i:2;', 1789211993),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-e240adc3b6428463b6125291ad66a3dee731e206:timer', 'i:1789211993;', 1789211993),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-e2efb23ed4076036e167fd6e345053342c2b6d5e', 'i:2;', 1789355127),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-e2efb23ed4076036e167fd6e345053342c2b6d5e:timer', 'i:1789355127;', 1789355127),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-e359d75fe0e2708ce19da18a2e98994f1b9a9950', 'i:1;', 1789278501),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-e359d75fe0e2708ce19da18a2e98994f1b9a9950:timer', 'i:1789278501;', 1789278501),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-e3770ef9a97a50b9146ad8c599e247265435a566', 'i:2;', 1789102995),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-e3770ef9a97a50b9146ad8c599e247265435a566:timer', 'i:1789102995;', 1789102995),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-e37fd9950b5a92fbc681f3bbd25614a3ef86e85f', 'i:1;', 1789368897),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-e37fd9950b5a92fbc681f3bbd25614a3ef86e85f:timer', 'i:1789368897;', 1789368897),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-e382576d8e639a205871ffe8b18db5e509bc743b', 'i:1;', 1789304593),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-e382576d8e639a205871ffe8b18db5e509bc743b:timer', 'i:1789304593;', 1789304593),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-e3d47945378e5aab56c18e82a9c1fb494fff9e21', 'i:1;', 1789362123),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-e3d47945378e5aab56c18e82a9c1fb494fff9e21:timer', 'i:1789362123;', 1789362123),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-e4da9483d524e06797ef6f9e99c28fa3b3c384cc', 'i:1;', 1789270569),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-e4da9483d524e06797ef6f9e99c28fa3b3c384cc:timer', 'i:1789270569;', 1789270569),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-e7334bd2c8905f63e45bb2ba555b9a5404ead694', 'i:1;', 1789303003),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-e7334bd2c8905f63e45bb2ba555b9a5404ead694:timer', 'i:1789303003;', 1789303003),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-e77043aec762951c6a2cbc44b039d571bd7df98b', 'i:1;', 1789043813),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-e77043aec762951c6a2cbc44b039d571bd7df98b:timer', 'i:1789043813;', 1789043813),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-e7ec427fe6e499a5f98236d74df26cb88947bc8b', 'i:1;', 1789348285),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-e7ec427fe6e499a5f98236d74df26cb88947bc8b:timer', 'i:1789348285;', 1789348285),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-e8e7a2d959b004091da8f76116ae0d0a6bb9c231', 'i:1;', 1789269903),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-e8e7a2d959b004091da8f76116ae0d0a6bb9c231:timer', 'i:1789269903;', 1789269903),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-e9abfd7be351018b5a69ecf396d8a5f72ddcf9d6', 'i:2;', 1789268477),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-e9abfd7be351018b5a69ecf396d8a5f72ddcf9d6:timer', 'i:1789268477;', 1789268477),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-ea0291f5e6ee16ec4375c3f16c59c9a081ae82d6', 'i:1;', 1789280023),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-ea0291f5e6ee16ec4375c3f16c59c9a081ae82d6:timer', 'i:1789280023;', 1789280023),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-eb1dcc4b0cf90c47c8d88b35b028be450a51599a', 'i:2;', 1789102064),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-eb1dcc4b0cf90c47c8d88b35b028be450a51599a:timer', 'i:1789102064;', 1789102064),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-ebb1615591ce8cb9c75b50a827dabfe3989b1bb3', 'i:1;', 1789050083),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-ebb1615591ce8cb9c75b50a827dabfe3989b1bb3:timer', 'i:1789050083;', 1789050083),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-ebec44aeaabedcaeb5ac8f7ed0fdc130e13fd0a7', 'i:1;', 1789267335),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-ebec44aeaabedcaeb5ac8f7ed0fdc130e13fd0a7:timer', 'i:1789267335;', 1789267335),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-ecc400be21379e59448a7e02d2e3672988069dde', 'i:2;', 1789111457),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-ecc400be21379e59448a7e02d2e3672988069dde:timer', 'i:1789111457;', 1789111457),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-f09073b6605fd9c00a6d57296e7fd6ad789a5f4e', 'i:1;', 1789268817),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-f09073b6605fd9c00a6d57296e7fd6ad789a5f4e:timer', 'i:1789268817;', 1789268817),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-f1ed15082e0f264621220a4c44e32c1c9d13a18d', 'i:1;', 1789117997),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-f1ed15082e0f264621220a4c44e32c1c9d13a18d:timer', 'i:1789117997;', 1789117997),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-f24d8b5aa28709d5d6a17fb028b44e77c7f2a370', 'i:2;', 1789124071),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-f24d8b5aa28709d5d6a17fb028b44e77c7f2a370:timer', 'i:1789124071;', 1789124071),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-f363bdf9d81da105aa2a238675b1457c0a856853', 'i:1;', 1789353862),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-f363bdf9d81da105aa2a238675b1457c0a856853:timer', 'i:1789353862;', 1789353862),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-f44819230095c60a536396aaf8761f77bfb60573', 'i:1;', 1789361077),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-f44819230095c60a536396aaf8761f77bfb60573:timer', 'i:1789361077;', 1789361077),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-f5807c78074edb43f126f589275caa97eacb06ec', 'i:1;', 1789273192),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-f5807c78074edb43f126f589275caa97eacb06ec:timer', 'i:1789273192;', 1789273192),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-f5dd5b4c97fff6202d7409e6bed76c2584b9e4d1', 'i:1;', 1789217628),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-f5dd5b4c97fff6202d7409e6bed76c2584b9e4d1:timer', 'i:1789217628;', 1789217628),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-f6ad7cfb5359c12576bf327f1a6994436b64c14a', 'i:1;', 1789125875),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-f6ad7cfb5359c12576bf327f1a6994436b64c14a:timer', 'i:1789125875;', 1789125875),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-f6b1babafde943d8cc29cdb39fbf8be790d10fa9', 'i:2;', 1789102850),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-f6b1babafde943d8cc29cdb39fbf8be790d10fa9:timer', 'i:1789102850;', 1789102850),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-f6d12c47d00f50ab071953f4b475c5fba229fe17', 'i:2;', 1789127348),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-f6d12c47d00f50ab071953f4b475c5fba229fe17:timer', 'i:1789127348;', 1789127348),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-f96eb4873d12f35523f71bbea31983786dc55b25', 'i:1;', 1789181185),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-f96eb4873d12f35523f71bbea31983786dc55b25:timer', 'i:1789181185;', 1789181185),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-fbbd6679f17f8d32a147fcb4596c8659f18defc9', 'i:1;', 1789370344),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-fbbd6679f17f8d32a147fcb4596c8659f18defc9:timer', 'i:1789370344;', 1789370344),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-fc33f98bdebc26091d790c8532e1b01e78bf849c', 'i:2;', 1789044831),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-fc33f98bdebc26091d790c8532e1b01e78bf849c:timer', 'i:1789044831;', 1789044831);

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
(3, 'WSD-20260910-NPWA', 'Gabriella Louders Sinaga', 'P27902123137', NULL, 2, 'D3 Kebidanan', 2026, 'gabriellasinaga39@gmail.com', '082110181913', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HalpF3ZLOhLqbLkdgLbkqpac02XIdfIkibHRDpdC', '2026-09-10 12:26:48', '2026-09-10 12:26:48'),
(4, 'WSD-20260910-OJPS', 'NAJAH', 'P27902123065', NULL, 2, 'D3 Kebidanan', 2026, 'najahredmi@gmail.com', '089646478555', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/4/7d93e1e0-335a-4a08-91d6-7b2b703be597.jpg', 'Screenshot_2026-09-10-19-33-22-816_id.bni.wondr.jpg', 'image/jpeg', 657572, '2026-09-10 12:35:53', '2026-09-11 03:05:51', 9, NULL, NULL, NULL, NULL, 'wVXx0DgiStsVip02CJiAqkvkuxsPCrl3RiUygNvf', '2026-09-10 12:30:38', '2026-09-11 03:05:58'),
(5, 'WSD-20260910-QFMU', 'ANGGUN SRI MASITOH', 'P27902123045', NULL, 2, 'D3 Kebidanan', 2026, 'anggunsr92@gmail.com', '08999721364', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'O82Na7Gnn2eZHJD5eOvqaHwJxjQlrgGvDZEbQeyB', '2026-09-10 12:39:54', '2026-09-10 12:39:54'),
(6, 'WSD-20260910-ECJ6', 'Intan Apriliani', 'P27902123100', NULL, 2, 'D3 Kebidanan', 2026, 'intanapriliani111224@gmail.com', '085694237402', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/6/d2dc09d7-57ab-4732-8348-d211abf11b3c.png', 'IMG_6394.png', 'image/png', 264706, '2026-09-10 12:52:29', '2026-09-11 03:07:19', 9, NULL, NULL, NULL, NULL, 'tVnPMoXAtV653FfJHw8S2uBvLJV8j4KBgjWZWkKZ', '2026-09-10 12:50:29', '2026-09-11 03:07:23'),
(7, 'WSD-20260910-J099', 'Tri Safel Ahmad Subagna', 'P27901123046', NULL, 1, 'D3 Keperawatan', 2026, 'subagjasafel@gmail.com', '085881410826', 'Laki-laki', 'All Size', 'yaaa semoga lebih baik kedepan nya', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/7/12c952dd-bdcc-42c5-8449-e7d4c17c89ae.jpg', 'Screenshot_20260910_195245.jpg', 'image/jpeg', 282365, '2026-09-10 12:53:13', '2026-09-11 03:17:56', 9, NULL, NULL, NULL, NULL, 'SozoZxpYe7rhUZzjrR6PM5637qdpGNbKK6HsgaP6', '2026-09-10 12:52:51', '2026-09-11 03:17:59'),
(8, 'WSD-20260910-XQQB', 'Jahrotun Nisa', 'P27902123144', NULL, 2, 'D3 Kebidanan', 2026, 'zahrotunnisadua78@gmail.com', '085777709436', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/8/678a177d-b1a8-4a2e-9efa-ae83753a6ebc.jpeg', 'd1feb7d1-f667-4ac9-88d5-6dedf4c0f7e6.jpeg', 'image/jpeg', 64482, '2026-09-11 10:59:15', NULL, NULL, NULL, NULL, NULL, NULL, 'y9RiPgc4dwEo9Jnq6KkbWDMHG57BS4BLXqes8RrL', '2026-09-10 12:56:34', '2026-09-11 10:59:15'),
(9, 'WSD-20260910-FLOS', 'Nadiyah Restu Hanifah', 'P27902123029', NULL, 2, 'D3 Kebidanan', 2026, 'nadiyahrestu05@gmail.com', '087873333930', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/9/3d2fc2b4-6894-460b-8123-ef8dc5b200a7.jpg', 'Transaksi_BCAmobile-20260911-112137.jpg', 'image/jpeg', 426570, '2026-09-11 04:22:07', '2026-09-11 05:55:42', 9, NULL, NULL, NULL, NULL, 'ePT4mXaCMHhtyFFEnmAmqzEDfFfVzejlfn3ZBwcJ', '2026-09-10 13:00:18', '2026-09-11 05:55:45'),
(10, 'WSD-20260910-QPNM', 'Dina Meyliani', 'P27902123051', NULL, 2, 'D3 Kebidanan', 2026, 'dinameyliani371@gmail.com', '082258602292', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'QblcXrPOeeIUxgfsGGebcSP0rvEdbcdcoL3R7rHy', '2026-09-10 13:09:26', '2026-09-10 13:09:26'),
(11, 'WSD-20260910-OKDB', 'Siti Najah Irda Maelani Julian', 'P27901123100', NULL, 1, 'D3 Keperawatan', 2026, 'irdanajah123@gmail.com', '085697126504', 'Perempuan', 'All Size', NULL, 4, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'OQB4bsLzGIepghT4MR6xOt1AgKmYMAAaJDiQXgH8', '2026-09-10 13:13:26', '2026-09-10 13:13:26'),
(12, 'WSD-20260910-NLM4', 'Adinda Igisty Aulya Putri', 'P27902123001', NULL, 2, 'D3 Kebidanan', 2026, 'dinchacha07@gmail.com', '082126353572', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/12/8e45ab3e-a28b-4ba6-8a99-957325ec25c2.jpg', 'Screenshot_20260911_092908_SeaBank.jpg', 'image/jpeg', 233004, '2026-09-11 02:29:45', '2026-09-11 05:51:45', 9, NULL, NULL, NULL, NULL, 'dhvI4YpPk2kcKRdNSlWusULttaDjjIOAocXDVHic', '2026-09-10 13:23:09', '2026-09-11 05:51:49'),
(13, 'WSD-20260910-N1RT', 'Husnul afia', 'P27902123017', NULL, 2, 'D3 Kebidanan', 2026, 'husnulafia71@gmail.com', '089603436671', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/13/28c7ae0e-2d89-4a40-b6b4-89760fe40bce.jpeg', '9931025B-A802-4331-B471-BB6670E9DA89.jpeg', 'image/jpeg', 58912, '2026-09-10 13:33:21', '2026-09-11 04:19:52', 9, NULL, NULL, NULL, NULL, '8yqede2LR3g57T3xT0wUHl8JSVxOPcuzrUavZOnu', '2026-09-10 13:27:25', '2026-09-11 04:19:55'),
(14, 'WSD-20260910-1ODO', 'ANGGUN SRI MASITOH', 'P27902123045', NULL, 2, 'D3 Kebidanan', 2026, 'anggunsr92@gmail.com', '08999721364', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/14/a542b4a0-2e58-4f0d-9067-75ff072f48c8.png', 'IMG_3862.png', 'image/png', 200961, '2026-09-10 13:29:48', '2026-09-11 03:18:35', 9, NULL, NULL, NULL, NULL, 'IQhrBFJzStCkUuLbH34xKC2yef2kmgKPcdPfvq1T', '2026-09-10 13:29:28', '2026-09-11 03:18:42'),
(15, 'WSD-20260910-IMKC', 'NAZLAH IPTIHAR', 'P27902123108', NULL, 2, 'D3 Kebidanan', 2026, 'nazlahiftihar28@gmail.com', '081212917480', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DNgqKuCE5P9wVqwlzPnEhP6Y9ZKPTPkpOGmHM8kv', '2026-09-10 13:30:47', '2026-09-10 13:30:47'),
(16, 'WSD-20260910-UTGU', 'Euis Octaviani Wijaya', 'P27903123061', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'euisoctavianiwijya@gmail.com', '08990027943', 'Perempuan', 'All Size', 'Ukuran S', 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BUh8ZEAKgspVVn1WSqeJh9jzkmoknlp7PtSwEmlM', '2026-09-10 13:44:48', '2026-09-10 13:44:48'),
(17, 'WSD-20260910-ZD2K', 'Syivatu Nadroh', 'P27902123039', NULL, 2, 'D3 Kebidanan', 2026, 'syivatun@gmail.com', '087711912395', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'l3wF6BpJjIKeOb6zGIqFw6CeqLnWidnSsBYQ5gEl', '2026-09-10 13:48:18', '2026-09-10 13:48:18'),
(18, 'WSD-20260910-8JXB', 'Yunika Aulia', 'P27901123107', NULL, 1, 'D3 Keperawatan', 2026, 'yunikaaulia2@gmail.com', '085770334673', 'Perempuan', 'All Size', 'Pemesanan toga untuk 5 orang wisudawan perempuan', 5, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/18/bac97739-e8f7-45bd-9233-7161e602b6b9.jpeg', '9eac8e86-6294-47c0-a893-5cfefdbf3824.jpeg', 'image/jpeg', 52596, '2026-09-10 13:53:47', '2026-09-11 04:51:44', 9, NULL, NULL, NULL, NULL, 'KrOZt2PBKff6nGHNpIigGk6P0eh0kiHmFAy5m8oh', '2026-09-10 13:50:22', '2026-09-11 04:51:50'),
(19, 'WSD-20260910-PGIV', 'Ghaida Dwi Ramadhani Faza', 'P27901123016', NULL, 1, 'D3 Keperawatan', 2026, 'ghaidadwirf@gmail.com', '081214862658', 'Perempuan', 'All Size', NULL, 2, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/19/72a6241b-9034-42dd-a232-733f0938ac0a.png', 'IMG_4544.png', 'image/png', 404362, '2026-09-10 14:20:32', '2026-09-11 03:23:50', 9, NULL, NULL, NULL, NULL, 'p4KFefLMTwpTionpaDmv562ajJvIiq6nTth7EbMt', '2026-09-10 14:17:02', '2026-09-11 03:23:54'),
(20, 'WSD-20260910-7KLJ', 'Firda Chairunnisa', 'P27901123014', NULL, 1, 'D3 Keperawatan', 2026, 'firdachairunnisa25@gmail.com', '08561716147', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/20/0e3851fc-87c3-41bd-b065-5b433980c46a.png', 'IMG_1835.png', 'image/png', 480230, '2026-09-10 14:19:23', '2026-09-11 03:22:10', 9, NULL, NULL, NULL, NULL, 'NSHeLbTRRdMBeFHuFlff3v5jjck1KLnRvzsB6TWG', '2026-09-10 14:17:44', '2026-09-11 03:22:13'),
(21, 'WSD-20260910-8CGX', 'Reza Supriatna', 'P27901123092', NULL, 1, 'D3 Keperawatan', 2026, 'supriatnareza14@gmail.com', '081295084531', 'Laki-laki', 'All Size', 'Kalo Bisa Ukurannya M aja ya', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/21/be88d065-f7ef-495f-bf52-e0874382ea69.jpeg', 'Bukti Tf Toga Reza Supriatna P27901123092.jpeg', 'image/jpeg', 187578, '2026-09-10 14:24:02', '2026-09-11 03:26:41', 9, NULL, NULL, NULL, NULL, 'jDPSxtCMy0SiMsDoEz2CZMZjLqP6XG0CoxQnFLXf', '2026-09-10 14:20:23', '2026-09-11 03:26:43'),
(22, 'WSD-20260910-PVCR', 'Alya Septiani suhardja', 'P27903123005', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'suhardjaalyaseptiani@gmail.com', '081316055330', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '27rgTWgLDuTD2qBCrN95g1J5lgXRNQFLYMJkpjQc', '2026-09-10 14:28:30', '2026-09-10 14:28:30'),
(23, 'WSD-20260910-RLVO', 'PUTRI AYU WIDIA NINGRUM', 'P27901123089', NULL, 1, 'D3 Keperawatan', 2026, 'ningruma298@gmail.com', '085888413823', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'd5KTRz2Rvo5Qa17igdBTYDzAljahfENWbJv686zD', '2026-09-10 14:33:34', '2026-09-10 14:33:34'),
(24, 'WSD-20260910-U9XV', 'Nazwa Qurotul Aini', 'P27901123086', NULL, 1, 'D3 Keperawatan', 2026, 'nazwaqurotulaini@gmail.com', '083813318225', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'OL0P2nfCY8IxGDxHRjLIVVgwFGcMvtB5Y1YMKALr', '2026-09-10 14:35:32', '2026-09-10 14:35:32'),
(25, 'WSD-20260910-NNS5', 'Nazwa Qurotul Aini', 'P27901123086', NULL, 1, 'D3 Keperawatan', 2026, 'nazwaqurotulaini@gmail.com', '083813318225', 'Perempuan', 'All Size', 'ukuran m', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/25/077578e5-a402-45f1-a74f-350642dcfdd0.jpg', 'Screenshot_20260910_213758_SeaBank.jpg', 'image/jpeg', 164777, '2026-09-10 14:38:41', '2026-09-11 03:28:30', 9, NULL, NULL, NULL, NULL, '1CixsU98EpEkuN6Nv0OPSxKngt1DheEa7FzN3Sl7', '2026-09-10 14:36:13', '2026-09-11 03:28:33'),
(26, 'WSD-20260910-891B', 'Nurfitriani', 'P27901123087', NULL, 1, 'D3 Keperawatan', 2026, 'fitrinr1607@gmail.com', '085714523976', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RAO2kkPqjX2PaY8tZEb897VvKPN19O1BSHxvjyJ2', '2026-09-10 14:37:41', '2026-09-10 14:37:41'),
(27, 'WSD-20260910-U8FE', 'putri rahmawati', 'P27901123090', NULL, 1, 'D3 Keperawatan', 2026, 'putrirahmawati150405@gmail.com', '‪0895406552612‬', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/27/de7436da-e3db-49ad-9604-dc39fb131ddd.png', 'IMG_2393.png', 'image/png', 136829, '2026-09-10 14:46:21', '2026-09-11 03:30:19', 9, NULL, NULL, NULL, NULL, 'anUxrwTRAqyRVt5okyC3Q9UAyxzatmPiuDEGz6Dp', '2026-09-10 14:42:34', '2026-09-11 03:30:23'),
(28, 'WSD-20260910-WNCC', 'Ikke wardah Alifia', 'P27902123019', NULL, 2, 'D3 Kebidanan', 2026, 'ikkewardahalifia2005@gmail.com', '085187844276', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/28/2184868e-7b46-4ef9-bde3-159f4bcad7e2.png', 'IMG_9997.png', 'image/png', 275445, '2026-09-10 14:45:07', '2026-09-11 03:29:29', 9, NULL, NULL, NULL, NULL, 'UqM6Xb3fno3Tk6mQ4VZjoddR9VhS55iumFKN9IvP', '2026-09-10 14:43:55', '2026-09-11 03:29:31'),
(29, 'WSD-20260910-KUIC', 'Nindiya keisha putri wardhana', 'P27903123032', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'nindikeisha5@gmail.com', '085393675425', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/29/64a3ff2e-3e61-4a1d-b905-86ffc0d2f09f.png', 'IMG_3479.png', 'image/png', 217567, '2026-09-10 14:49:22', '2026-09-11 03:28:59', 9, NULL, NULL, NULL, NULL, 'b8iwuSDxYSsl3PBOXPpBrUDxLMrF38VEKVZYkWml', '2026-09-10 14:47:04', '2026-09-11 03:29:03'),
(30, 'WSD-20260910-YJ2N', 'Salsabila Fatinah', 'P27902123034', NULL, 2, 'D3 Kebidanan', 2026, 'salsabilafatinah123@gmail.com', '081381967011', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VootIenno6R9WDQxBQNpfX7VJReKeAWmkhLC9mXa', '2026-09-10 14:50:39', '2026-09-10 14:50:39'),
(31, 'WSD-20260910-ZV49', 'Nanda Triana', 'P27901123085', NULL, 1, 'D3 Keperawatan', 2026, 'nandatriana63@gmail.com', '0895610777538', 'Perempuan', 'All Size', 'Ukuran M', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/31/f34688db-2837-4a1a-97c9-129bafe56ef7.png', 'IMG_2859.png', 'image/png', 228897, '2026-09-10 15:03:46', '2026-09-11 03:31:12', 9, NULL, NULL, NULL, NULL, 'viLtar7wt03fcZ9MYr6M5EFIkiVxwMlnfhXtLJNG', '2026-09-10 14:52:39', '2026-09-11 03:31:16'),
(32, 'WSD-20260910-YC5W', 'Kayla amanda', 'P27903123023', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'kaymanda25@gmail.con', '085110532715', 'Perempuan', 'All Size', '-', 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12DeFPqJIz50atV5LuaQvwmqXT1qh740K2m1moMz', '2026-09-10 14:54:49', '2026-09-10 14:54:49'),
(33, 'WSD-20260910-WRZG', 'Najmy Nasyiriah', 'P27901123084', NULL, 1, 'D3 Keperawatan', 2026, 'najmynsy@gmail.com', '081911288454', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'AB5hcgi8qR2bqSwou0coa2RZmACthlgjUcWqJjyW', '2026-09-10 14:55:39', '2026-09-10 14:55:39'),
(34, 'WSD-20260910-6HIV', 'HIMATUL ALIYAH', 'P27901123079', NULL, 1, 'D3 Keperawatan', 2026, 'himatulhimatulaliyah15@gmail.com', '082258094672', 'Perempuan', 'All Size', '-', 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pu4V1mvX9w9OKQgCVL1XHKA4AnnIVQV0WIZjRXKo', '2026-09-10 14:57:22', '2026-09-10 14:57:22'),
(35, 'WSD-20260910-06EJ', 'Nadifa nisa’ul afni putria', 'P27902123028', NULL, 2, 'D3 Kebidanan', 2026, 'nadippp10@gmail.com', '087774961932', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/35/d25b7d47-636a-4523-b228-c54dd7e6d5bf.jpeg', 'af4791b5-5233-423a-8d8c-1cee14d1f468.jpeg', 'image/jpeg', 94495, '2026-09-10 15:05:51', '2026-09-11 04:14:55', 9, NULL, NULL, NULL, NULL, 'lo26cQDQApX1AvzkkQqKWTuE9U0L9VlXhoADJhHt', '2026-09-10 15:05:31', '2026-09-11 04:16:09'),
(36, 'WSD-20260910-FBA5', 'Oktavira Hayani', 'P27901123088', NULL, 1, 'D3 Keperawatan', 2026, 'oktavira.hayani21@gmail.com', '085718614320', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/36/04cfb527-101f-4811-bd22-c6585631e9e1.jpeg', 'IMG_1009.jpeg', 'image/jpeg', 247422, '2026-09-10 15:16:30', '2026-09-11 03:33:08', 9, NULL, NULL, NULL, NULL, 'KnpWl3MnxIFc5jdHngKnRalig3dt6Zsyx9RCDnqA', '2026-09-10 15:14:21', '2026-09-11 03:33:11'),
(37, 'WSD-20260910-5JLT', 'Mave Ismatul Maftuhah', 'P27901123077', NULL, 1, 'D3 Keperawatan', 2026, 'maveisma07@gmail.com', '089665988915', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ztj9lrI16sO7ezW1t6Nih0HpEGhPFuLOMSsdpyDP', '2026-09-10 15:28:04', '2026-09-10 15:28:04'),
(38, 'WSD-20260910-WZPW', 'Nurfitriani', 'P27901123087', NULL, 1, 'D3 Keperawatan', 2026, 'fitrinr1607@gmail.com', '085714523976', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/38/e7b34b32-834a-402f-b086-3f8997e93e80.jpg', 'Screenshot_2026-09-10-22-29-58-76_121d0782f1cd8474b48c9b27865007fd.jpg', 'image/jpeg', 146543, '2026-09-10 15:31:32', '2026-09-11 05:44:57', 9, NULL, NULL, NULL, NULL, '0JkZGKfaxNPALjPGhSm1rWDCyhXJgWTjngo1UNgl', '2026-09-10 15:28:57', '2026-09-11 05:45:00'),
(39, 'WSD-20260910-NEB9', 'A.Yodyajaya Nugraha', 'P27901123060', NULL, 1, 'D3 Keperawatan', 2026, 'jayaayodya87@gmail.com', '082377116023', 'Laki-laki', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'gpQdkvswrrqlL7jaJ4y7O5e3XAGJho2BXq4jOC9W', '2026-09-10 15:33:11', '2026-09-10 15:33:11'),
(40, 'WSD-20260911-5P8U', 'Chika Dea Hermawan F', 'P27901123062', NULL, 1, 'D3 Keperawatan', 2026, 'chikadeahf@gmail.com', '085894175637', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/40/1a7c444e-a1dd-4ce2-bf1b-8f29958be646.jpeg', 'IMG_2581.jpeg', 'image/jpeg', 245845, '2026-09-11 00:17:52', '2026-09-11 03:20:34', 9, NULL, NULL, NULL, NULL, 'RaOR93zxYFHAXC4nmEQS0LVvbNsgtnQbpCq01Cgk', '2026-09-11 00:17:28', '2026-09-11 03:20:38'),
(41, 'WSD-20260911-NO4V', 'Listi Aulia', 'P27901123076', NULL, 1, 'D3 Keperawatan', 2026, 'listiaulia23@gmail.com', '089651217028', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/41/d1b4e085-53bc-4740-8668-373a704b2544.jpg', 'Screenshot_20260911_080343_DANA.jpg', 'image/jpeg', 288098, '2026-09-11 01:06:29', '2026-09-11 03:19:36', 9, NULL, NULL, NULL, NULL, 'awG4wQhUID74d7wGO13ARhKGy7RMMlSps5l9Xige', '2026-09-11 01:05:45', '2026-09-11 03:19:39'),
(42, 'WSD-20260911-13NR', 'SITI RAHMA FADHILA', 'P27902123117', NULL, 2, 'D3 Kebidanan', 2026, 'fadhilarahma283@gmail.com', '085715407233', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/42/9b982cec-1441-48b0-aac5-6abb0cb0064b.jpg', 'IMG-20260911-WA0009.jpg', 'image/jpeg', 81038, '2026-09-11 03:24:41', '2026-09-11 03:46:46', 9, NULL, NULL, NULL, NULL, 'ItL2kquclpi4CbZgSdnLQrtEkMI8Q6zWkUcIuGQY', '2026-09-11 03:17:35', '2026-09-11 03:46:50'),
(43, 'WSD-20260911-ZS9N', 'Erlinah Ependi', 'P27901123010', NULL, 1, 'D3 Keperawatan', 2026, 'erlinahefendi05@gmail.com', '085811723991', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/43/d481e88f-0adc-4a34-985b-d06a844c0ad2.png', 'IMG_9871.png', 'image/png', 294052, '2026-09-11 03:27:36', NULL, NULL, NULL, NULL, NULL, NULL, 'qYA619zKB9Z7fHWOt4HK25oezXFdVNIgmh2y0l2W', '2026-09-11 03:25:10', '2026-09-11 03:27:36'),
(44, 'WSD-20260911-LAZM', 'Siti Adinda Aisyah', 'P27901123042', NULL, 1, 'D3 Keperawatan', 2026, 'sitiadinda321@gmail.com', '085312893993', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/44/ddda25da-7296-4285-8578-f3991e46398f.jpg', 'image.jpg', 'image/jpeg', 4165154, '2026-09-11 03:27:12', '2026-09-11 05:52:31', 9, NULL, NULL, NULL, NULL, 'dO05A6YLMrqsgJkwL4wPFGUiOzzjaP5gAO9ReVro', '2026-09-11 03:26:10', '2026-09-11 05:52:34'),
(45, 'WSD-20260911-9BBN', 'Euis Khaerunisa', 'P27901123011', NULL, 1, 'D3 Keperawatan', 2026, 'nengeuis997@gmail.com', '085135437304', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/45/19a648fe-4f38-4f73-a0e2-de1b3d46b9b5.png', 'IMG_4674.png', 'image/png', 177247, '2026-09-11 03:28:30', '2026-09-11 04:01:52', 9, NULL, NULL, NULL, NULL, 'zoURH1xbdD3gN4b6lcUBlZySBzqKjkXtB2rCYltI', '2026-09-11 03:26:37', '2026-09-11 04:01:56'),
(46, 'WSD-20260911-PD11', 'Yeti Lidiawati', 'P27901123052', NULL, 1, 'D3 Keperawatan', 2026, 'yetilidiawati135@gmail.com', '085694688132', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2LQifZRmuXQ1EM62hViB4TJ08fEFA3rVcnIbfnkf', '2026-09-11 03:30:07', '2026-09-11 03:30:07'),
(47, 'WSD-20260911-BME9', 'Yeti Lidiawati', 'P27901123052', NULL, 1, 'D3 Keperawatan', 2026, 'yetilidiawati135@gmail.com', '085694688132', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/47/ef62706f-4ad0-4f7d-8cfa-840778ca5ee6.jpg', 'IMG-20260911-WA0027.jpg', 'image/jpeg', 70780, '2026-09-11 03:45:23', NULL, NULL, NULL, NULL, NULL, NULL, '4aSa0l4WD1Fiuq85wfqMcYckKTsocQLfuzdQwJ5Z', '2026-09-11 03:34:02', '2026-09-11 03:45:23'),
(48, 'WSD-20260911-RFTV', 'Revaluna Maira Fuadi', 'P27901123037', NULL, 1, 'D3 Keperawatan', 2026, 'rmfluns@gmail.com', '081998695511', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BrMhrputrwpfuNxkm74SgBtawh3qS1EWl0X3iQ4h', '2026-09-11 03:49:42', '2026-09-11 03:49:42'),
(49, 'WSD-20260911-LE7X', 'Asep saipul Buchori', 'P27901123004', NULL, 1, 'D3 Keperawatan', 2026, 'asepofficia57@gmail.com', '085697885179', 'Laki-laki', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/49/af1abe4c-db78-4070-a521-fc899affd2a3.jpg', '1789098558677.jpg', 'image/jpeg', 503635, '2026-09-11 03:50:31', '2026-09-11 05:54:31', 9, NULL, NULL, NULL, NULL, 'SHKJrBfatDJpmJ3CTGGgn9fNJS8a1UT82e3Evzdq', '2026-09-11 03:49:56', '2026-09-11 05:54:35'),
(50, 'WSD-20260911-FKSN', 'Yati Nofiyanti', 'P27902123123', NULL, 2, 'D3 Kebidanan', 2026, 'yatinofiyanti6@gmail.com', '089628284440', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/50/8d5a886c-24a9-4838-abcc-50221852188e.png', 'IMG_7963.png', 'image/png', 113560, '2026-09-11 03:53:36', '2026-09-11 04:12:31', 9, NULL, NULL, NULL, NULL, 'zFqGUabtqwc3klTVZ5Gvhhf4YK8UdwaEJi3pPRRf', '2026-09-11 03:50:38', '2026-09-11 04:12:34'),
(51, 'WSD-20260911-EITX', 'Revaluna Maira Fuadi', 'P27901123037', NULL, 1, 'D3 Keperawatan', 2026, 'rmfluns@gmail.com', '081998695511', 'Perempuan', 'All Size', 'size S', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/51/edc6ce2c-1dd6-4ba6-818d-6cc90e7d38c0.jpg', 'IMG-20260911-WA0081.jpg', 'image/jpeg', 61452, '2026-09-11 05:44:58', '2026-09-11 06:37:28', 9, NULL, NULL, NULL, NULL, 'maZuUiyo1zlze3JPzaYFxGeQYlna8t5qOB4oBimf', '2026-09-11 03:56:04', '2026-09-11 06:37:31'),
(52, 'WSD-20260911-YAJI', 'Jolanda Juliana', 'P27902123022', NULL, 2, 'D3 Kebidanan', 2026, 'jolandjlian0@gmail.com', '082114402738', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/52/aa7954f1-4efd-4018-8da5-4f945b7a352d.jpeg', 'Jago_receipt_21-11-2026 11-21@260911SYATIDJ100019268.jpeg', 'image/jpeg', 100839, '2026-09-11 04:22:14', '2026-09-11 05:55:21', 9, NULL, NULL, NULL, NULL, 'LoSNKw03GEHh8LkmBcdQEqKq15OSEGCbF7FIKhbb', '2026-09-11 04:19:58', '2026-09-11 05:55:24'),
(53, 'WSD-20260911-R2OQ', 'Nabila Aulia Farhanni', 'P27901123081', NULL, 1, 'D3 Keperawatan', 2026, 'hanni0875@gmail.com', '085893388695', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/53/8900a724-8dbb-47e1-bd91-2a158a07d1ad.jpg', 'Pembayaran Toga.jpg', 'image/png', 237360, '2026-09-11 04:25:49', '2026-09-11 08:05:48', 9, NULL, NULL, NULL, NULL, '2DyxZupx3i24aOYJFc3EKWjmaH0aZQfKRvWxQXv6', '2026-09-11 04:24:57', '2026-09-11 08:06:56'),
(54, 'WSD-20260911-JY0H', 'Linta Ratmawati', 'P27902123145', NULL, 2, 'D3 Kebidanan', 2026, 'lintaratmawati29@gmail.com', '0858-8601-4823', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/54/81a68b59-9caa-4158-bab3-119bf00ee53d.jpg', 'IMG_Fri Sep 11 11_27_56 GMT+07_00 2026.jpg', 'image/jpeg', 210206, '2026-09-11 04:28:51', '2026-09-11 05:58:36', 9, NULL, NULL, NULL, NULL, 'mFqqcGSXhgISUZm8LbKWKJTghJwhpw9nnPU6Tilk', '2026-09-11 04:26:38', '2026-09-11 05:58:39'),
(55, 'WSD-20260911-E0TR', 'Alfiyatuzzahro', 'P27901123001', NULL, 1, 'D3 Keperawatan', 2026, 'alfiyatuzzahro02@gmail.com', '085893079442', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/55/c9ebdef3-9b0e-48f6-93e5-fee2fbdfcd53.jpg', 'Screenshot_20260911_112717_SeaBank.jpg', 'image/jpeg', 256137, '2026-09-11 04:27:55', '2026-09-11 05:56:11', 9, NULL, NULL, NULL, NULL, '1QrFRfVoOBOx59DRoHeKpuos1A9MphrmthfqxiYl', '2026-09-11 04:27:20', '2026-09-11 05:56:14'),
(56, 'WSD-20260911-UJMJ', 'Salsabila Nur Aulia', 'P27901123096', NULL, 1, 'D3 Keperawatan', 2026, '245salsabilanur@gmail.com', '089530058099', 'Perempuan', 'All Size', 'Pembayaran dan pemesanan bergabung dengan yunika aulia', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/56/54ec5874-6c33-4357-bbd0-ea3c8ce027a7.jpg', 'IMG-20260910-WA0100.jpg', 'image/jpeg', 52596, '2026-09-11 04:28:28', '2026-09-11 04:53:07', 9, NULL, NULL, NULL, NULL, 'IGwySaHWjFwfNvcFWxiGBKoHhJxa87shTC7vBoiW', '2026-09-11 04:27:53', '2026-09-11 04:53:10'),
(57, 'WSD-20260911-RZKP', 'Early Azzahra', 'P27901123065', NULL, 1, 'D3 Keperawatan', 2026, 'azzearly@gmail.con', '089651503133', 'Perempuan', 'All Size', 'pemesananan dan pembayaran bergabung dengan yunika aulia', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/57/ddbf4ee9-bb73-473c-933e-84cb3ddc3aea.jpeg', 'A492C7C9-38C7-4F1C-9E58-DC2C7BF9D5BF.jpeg', 'image/jpeg', 52596, '2026-09-11 04:30:55', '2026-09-11 04:51:18', 9, NULL, NULL, NULL, NULL, 'zEoGVbkI4jKeMO1HPZFHTDtkB3fFzoGIGOKgjfDX', '2026-09-11 04:30:22', '2026-09-11 04:51:21'),
(58, 'WSD-20260911-QQTV', 'Vidni Aulia', 'P27901123048', NULL, 1, 'D3 Keperawatan', 2026, 'vidnia040@gmail.com', '0895326022048', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fITPvkYD3PoHLZMcSd5egxXfiGkNkje64sPeA2E9', '2026-09-11 04:31:45', '2026-09-11 04:31:45'),
(59, 'WSD-20260911-IJM7', 'Azzahra Satriani Kayla Adzikarinda', 'P27901123061', NULL, 1, 'D3 Keperawatan', 2026, 'kaylasatriani.ks@gmail.com', '089508557090', 'Perempuan', 'All Size', 'pemesanan dan pembayaran bergabung dengan yunika aulia', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/59/0445a7ac-91ae-40c4-906a-0eaa0558491d.jpg', 'IMG-20260910-WA0052.jpg', 'image/jpeg', 52596, '2026-09-11 04:38:09', '2026-09-11 04:53:36', 9, NULL, NULL, NULL, NULL, 'uYDvz3kh2gTPIEM8dRqm2c7u76cTqFIFGBZeyrlw', '2026-09-11 04:36:21', '2026-09-11 04:53:39'),
(60, 'WSD-20260911-FUID', 'Nenden Nurul Aliffah', 'P27901123031', NULL, 1, 'D3 Keperawatan', 2026, 'nendenna49@gmail.com', '081511920984', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'wKFHDomdNCikCK8SDKT3xdpod2uuZ9qV4fnGimrg', '2026-09-11 04:37:43', '2026-09-11 04:37:43'),
(61, 'WSD-20260911-UXV4', 'Nenden Nurul Aliffah', 'P27901123031', NULL, 1, 'D3 Keperawatan', 2026, 'nendenna49@gmail.com', '081511920984', 'Perempuan', 'All Size', 'mohon maap jika diperbolehkan mau ukurannya yang M yaaa, terima kasih banyakkk', 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/61/6a7a18bd-dfc2-4bc9-9633-d176abc306de.jpg', 'image.jpg', 'image/jpeg', 3455923, '2026-09-11 05:47:04', NULL, NULL, NULL, NULL, NULL, NULL, 'EjXjPn2uM3JmVAF8FjryIRTMzCbDmdFj5TcjDpTX', '2026-09-11 04:40:13', '2026-09-11 05:47:04'),
(62, 'WSD-20260911-OQSA', 'SOFARIANI MARTIANA', 'P27902123120', NULL, 2, 'D3 Kebidanan', 2026, 'rianimartiana8@gmail.com', '085693556189', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/62/e988697f-fbc5-4550-927d-b5d7a46a041f.jpeg', 'fdb6082a-d5bb-40a5-b3ea-58032888aa49.jpeg', 'image/jpeg', 64547, '2026-09-11 04:47:35', '2026-09-11 05:58:57', 9, NULL, NULL, NULL, NULL, 'Wm17U2sxkuVBazM5Waae3LhsWCEY8UCQnZSLu5r2', '2026-09-11 04:43:00', '2026-09-11 05:59:01'),
(63, 'WSD-20260911-2WFJ', 'Naila', 'P27901123029', NULL, 1, 'D3 Keperawatan', 2026, 'nailaplwn22@gmail.com', '082122481532', 'Perempuan', 'All Size', 'sudah transfer bareng atas nama ghaida', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/63/c1cd65e6-138f-4721-94a0-d663b9556539.jpeg', '08ba1edf-abac-4f92-8918-b22e5e0bdc3b.jpeg', 'image/jpeg', 114878, '2026-09-11 04:50:45', '2026-09-11 04:54:16', 9, NULL, NULL, NULL, NULL, 'By1L1Wp0mhOjw08Hvn6XnK5nl7c8IoSDkbx9brqm', '2026-09-11 04:43:08', '2026-09-11 04:54:19'),
(64, 'WSD-20260911-LPE3', 'SITI MUKOYIMAH', 'P27902123078', NULL, 2, 'D3 Kebidanan', 2026, 'sitimukoyimah2@gmail.com', '083879987300', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/64/1a2f9727-cabf-4d61-a144-5126fdb5fc6a.jpg', 'Bukti Pembayaran Set Toga Wisuda Siti Mukoyimah .jpg', 'image/jpeg', 295627, '2026-09-11 07:24:01', '2026-09-14 02:44:39', 9, NULL, NULL, NULL, NULL, 'UeaJI7SBaRbIuvHN9G8h6wL4M1OosfRVlooQTHqE', '2026-09-11 04:45:59', '2026-09-14 02:44:42'),
(65, 'WSD-20260911-XBEU', 'Zahara Nur Azzani', 'P27901123053', NULL, 1, 'D3 Keperawatan', 2026, 'zaharaazzani11@gmail.com', '085719009838', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/65/a96acf9c-45ed-4cea-9081-234ec3bc6557.png', 'IMG_2767.png', 'image/png', 139485, '2026-09-11 04:57:06', '2026-09-11 06:16:24', 9, NULL, NULL, NULL, NULL, 'LVvsQvaem2HV6yZJC5xy4SNuKmMQDn6iSXzMfcDY', '2026-09-11 04:56:21', '2026-09-11 06:16:27'),
(66, 'WSD-20260911-NH1O', 'Lifiya Nuryansyah', 'P27901123020', NULL, 1, 'D3 Keperawatan', 2026, 'lifiyanur22@gmail.com', '085814944505', 'Perempuan', 'All Size', 'ukuran toga M', 1, 'completed', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/66/6befc6ac-0e00-40f9-8bd8-4688cb2498db.jpeg', 'IMG_2449.jpeg', 'image/jpeg', 257498, '2026-09-11 05:01:48', NULL, NULL, NULL, NULL, NULL, NULL, 'K9QrWexAFPM6hYawPInmQDvgkCKZeEdJhraqFLlJ', '2026-09-11 04:57:41', '2026-09-11 06:51:54'),
(67, 'WSD-20260911-WR6N', 'Anggun Ana Resta', 'P27901123002', NULL, 1, 'D3 Keperawatan', 2026, 'anggunar28@gmail.com', '085716626968', 'Perempuan', 'All Size', 'transfer melalui seabank an. zahara', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/67/5a1ea701-eec7-4c2d-bb61-df32fbc56e00.jpeg', 'bd19bf34-92c1-41e3-a700-61dcae388db6.jpeg', 'image/jpeg', 95497, '2026-09-11 04:59:31', '2026-09-11 06:11:13', 9, NULL, NULL, NULL, NULL, 'ivqmSDSxdvE8UG09IDhYxcUdswzPUNSb7iUQQL4F', '2026-09-11 04:58:43', '2026-09-11 06:11:16'),
(68, 'WSD-20260911-ARSD', 'Erika Haustin Firdaus', 'P27901123066', NULL, 1, 'D3 Keperawatan', 2026, 'austinerikafie@gmail.com', '085111250627', 'Perempuan', 'All Size', 'transfer melalui seabank an Zahara Nur Azzani', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/68/12996922-5bd4-4e07-8434-0482fc4d6a3b.jpg', 'IMG-20260911-WA0001.jpg', 'image/jpeg', 95497, '2026-09-11 04:59:42', '2026-09-11 06:15:22', 9, NULL, NULL, NULL, NULL, 'm4tguV2nu2awkqw2iDrfr4oeEvyUI1rzHSzKKYRz', '2026-09-11 04:59:11', '2026-09-11 06:15:25'),
(69, 'WSD-20260911-OTPP', 'NADIA ERNASARI', 'P27901123028', NULL, 1, 'D3 Keperawatan', 2026, 'ernasarinadia1@gmail.com', '088808348239', 'Perempuan', 'All Size', 'Pembayaran Pemesanan bergabung dengan Yunika Aulia', 1, 'completed', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/69/172f1fbe-e57e-4629-ab76-471c4186f6a9.jpeg', '341a378f-e4e2-4bfa-b067-4792e8149ae0.jpeg', 'image/jpeg', 74338, '2026-09-11 05:00:18', NULL, NULL, NULL, NULL, NULL, NULL, 'QkzG3eQ79VE9PW0hPVFFAVL3cqAdIyQQFCmqFxJz', '2026-09-11 04:59:50', '2026-09-11 07:15:43'),
(70, 'WSD-20260911-MUBN', 'Fadilla Aulia Sofyanti', 'P27901123067', NULL, 1, 'D3 Keperawatan', 2026, 'sofyantifadilla@gmail.com', '083896945528', 'Perempuan', 'All Size', 'Fadilla Aulia Sofyanti sudah transfer melalui seabank a.n Zahara Nur Azzani', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/70/2e12e03b-8e67-4d9b-8111-281b61499c3b.jpg', 'IMG-20260911-WA0006.jpg', 'image/jpeg', 95497, '2026-09-11 05:04:48', '2026-09-11 06:15:44', 9, NULL, NULL, NULL, NULL, 'pPLDyWyvzuXNGeDLtvwnlYgeA0pdIZ1nLx8QGxQn', '2026-09-11 05:00:23', '2026-09-11 06:15:47'),
(71, 'WSD-20260911-PZCG', 'Sri Wahyuni', 'P27901123045', NULL, 1, 'D3 Keperawatan', 2026, 'sriwah01yuni@gmail.com', '088210439440', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/71/98ad319a-42d8-49dc-9e4a-a7853afaef2f.jpg', 'IMG-20260911-WA0015.jpg', 'image/jpeg', 116219, '2026-09-11 05:02:57', '2026-09-11 06:20:22', 9, NULL, NULL, NULL, NULL, 'zi3o5kI6qQ5hmKsAksreqqPW9hdbAZEei1KN5RU5', '2026-09-11 05:00:43', '2026-09-11 06:20:25'),
(72, 'WSD-20260911-SK2G', 'Fiona Zahira', 'P27901123013', NULL, 1, 'D3 Keperawatan', 2026, 'fionazahira43@gmail.com', '085881607134', 'Perempuan', 'All Size', 'transfer melalui seabank an. zahara', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/72/c7d8a07d-2a5f-43d5-95ae-f9d2d53a7e4d.jpg', 'IMG-20260911-WA0001.jpg', 'image/jpeg', 95497, '2026-09-11 05:04:29', '2026-09-11 06:13:14', 9, NULL, NULL, NULL, NULL, 'DFV241vV2FwvdZQWSPb0J1y8jcD70pkU7xIssFOU', '2026-09-11 05:02:14', '2026-09-11 06:13:17'),
(73, 'WSD-20260911-HQQW', 'Wulan Amilia Simbolon', 'P27901123050', NULL, 1, 'D3 Keperawatan', 2026, 'wulanamilia8@gmail.com', '089526806014', 'Perempuan', 'All Size', 'transfer melalui seabank an. zahara', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/73/cc1f19fe-4950-4899-a9d5-863e426f87ca.jpeg', '1630cb4b-c017-4fe9-880e-3650d87312d4.jpeg', 'image/jpeg', 115312, '2026-09-11 05:02:43', '2026-09-11 06:15:08', 9, NULL, NULL, NULL, NULL, 'kCSo0OZUx9wJahAZGl9WSzbYCHnYklY9fT3SH7IV', '2026-09-11 05:02:15', '2026-09-11 06:15:10'),
(74, 'WSD-20260911-RL2T', 'Shelin Hapytiary', 'P27901123041', NULL, 1, 'D3 Keperawatan', 2026, 'hapitiaryshelin@gmail.com', '089638631453', 'Perempuan', 'All Size', 'transfer melalui seabank a.n zahara nur azzani', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/74/100251b4-3a12-486d-b172-95f775b97720.jpeg', 'b35468fd-1868-4129-9ced-faf8ed22d173.jpeg', 'image/jpeg', 115344, '2026-09-11 05:03:33', '2026-09-11 06:14:52', 9, NULL, NULL, NULL, NULL, 'Ye9fVy965zuH00VhGXSoBnR3zWUp9Imv2riqmnNA', '2026-09-11 05:03:09', '2026-09-11 06:14:54'),
(75, 'WSD-20260911-NL1M', 'Sandrina Atsna Fadhlaeni', 'P27901123040', NULL, 1, 'D3 Keperawatan', 2026, 'sandrinadinaatsna@gmail.com', '081322497360', 'Perempuan', 'All Size', 'Sandrina Atsna Fadhlaeni transfer melalui Seabank a.n Zahara Nur Azzani', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/75/c2cbb529-3158-45d5-98d1-b2b01684e318.jpg', 'IMG-20260911-WA0024.jpg', 'image/jpeg', 73202, '2026-09-11 05:06:40', '2026-09-11 06:11:48', 9, NULL, NULL, NULL, NULL, 'gIx5tdZKnTnqahGkAlnyNRjI9q8I44msjgsbAxns', '2026-09-11 05:04:26', '2026-09-11 06:11:51'),
(76, 'WSD-20260911-QP53', 'Astrid Salsabila', 'P27901123005', NULL, 1, 'D3 Keperawatan', 2026, 'astridsalsabila0@gmail.com', '08985567428', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/76/e82f15bb-0ce9-4fb6-b0ab-1675b51d262b.jpg', 'IMG-20260911-WA0021.jpg', 'image/jpeg', 95497, '2026-09-11 05:05:33', '2026-09-11 06:10:49', 9, NULL, NULL, NULL, NULL, 'izvxGL5fInN9gJZpqAb0HIWuuJr8Es4RCiTTbZjm', '2026-09-11 05:04:47', '2026-09-11 06:10:52'),
(77, 'WSD-20260911-JAEJ', 'Mira Nurpatmawati', 'P27901123024', NULL, 1, 'D3 Keperawatan', 2026, 'miranma4255@gmail.com', '081525878640', 'Perempuan', 'All Size', 'Mira Nurpatmawati transfer melalui seabank a. n Zahara', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/77/4f1c6b51-3637-4c6d-96fd-29726977fdcd.jpg', 'IMG-20260911-WA0002.jpg', 'image/jpeg', 95497, '2026-09-11 05:07:55', '2026-09-11 06:11:30', 9, NULL, NULL, NULL, NULL, 'lLGv30OeZVnsMz51LB3n2kW1Cy15RWtXdP2dsuR3', '2026-09-11 05:05:50', '2026-09-11 06:11:33'),
(78, 'WSD-20260911-XRMN', 'puji kharisma', 'P27901123035', NULL, 1, 'D3 Keperawatan', 2026, 'pujikharisma520@gmail.com', '085819068824', 'Perempuan', 'All Size', 'transfer melalui seabank a.n Zahara nur azani', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/78/9252c7a7-8bbc-4790-ba88-112d6367c796.jpg', 'IMG-20260911-WA0012.jpg', 'image/jpeg', 95497, '2026-09-11 05:07:09', '2026-09-11 06:12:11', 9, NULL, NULL, NULL, NULL, 'qiFSHMZlJqf6k0BHI88moEls7DJMjmO19BETkVuk', '2026-09-11 05:06:03', '2026-09-11 06:12:14'),
(79, 'WSD-20260911-RJ3G', 'Rindi Yandini', 'P27901123093', NULL, 1, 'D3 Keperawatan', 2026, 'rindiyandini2@gmail.com', '085863197554', 'Perempuan', 'All Size', 'Rindi Yandini transfer melalui seabank a.n Zahara', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/79/cd33a5c9-3b71-4516-841e-b9fc8a146aa1.jpeg', 'bbcd299a-0f11-4e67-97c6-d73707bf44c1.jpeg', 'image/jpeg', 115344, '2026-09-11 05:09:47', '2026-09-11 06:16:00', 9, NULL, NULL, NULL, NULL, 'KBJR9CdQaZtDKkcZxo1SLd3EnAnZve5SzrNjPP5d', '2026-09-11 05:09:00', '2026-09-11 06:16:03'),
(80, 'WSD-20260911-GB9J', 'Rahma Laela', 'P27901123036', NULL, 1, 'D3 Keperawatan', 2026, 'laelarahma945@gmail.com', '088214663240', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/80/8bf65bf5-b01c-402e-951b-4fcc1f30fe22.png', 'IMG_4220.png', 'image/png', 124711, '2026-09-11 05:11:53', '2026-09-11 06:21:13', 9, NULL, NULL, NULL, NULL, 'i7ZENE8tL1gSDRmLECKnX3LWGaPdlM5mKvmWDGbV', '2026-09-11 05:10:25', '2026-09-11 06:21:17'),
(81, 'WSD-20260911-LUUR', 'NADIA DWI PUTRI', 'P27901123027', NULL, 1, 'D3 Keperawatan', 2026, 'nadiadwiputri39@gmail.com', '‪085545272097‬', 'Perempuan', 'All Size', 'Bapak/Ibu kalau bisa ukuran M', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/81/bfeef4c4-0f0e-4fef-a656-a226c459216e.png', 'IMG_4521.png', 'image/png', 594482, '2026-09-11 05:15:14', '2026-09-11 06:22:05', 9, NULL, NULL, NULL, NULL, 'aeCjrbIPeLDnAJMIqbTvuMn3f5Vwu6QHzGduIcY9', '2026-09-11 05:12:38', '2026-09-11 06:55:36'),
(82, 'WSD-20260911-JBLE', 'Vidni Aulia', 'P27901123048', NULL, 1, 'D3 Keperawatan', 2026, 'vidnia040@gmail.com', '0895326022048', 'Perempuan', 'All Size', 'mohon maaf jika diperbolehkan mau ukuran nya M, terima kasii', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/82/e733de26-fdbd-45da-969a-d5555443dd27.png', 'IMG_3552.png', 'image/png', 263442, '2026-09-11 05:15:16', '2026-09-11 06:23:38', 9, NULL, NULL, NULL, NULL, 'BIMlfmnt6lGKf09NqAofxbDAQVmGPfncdyR9sUsa', '2026-09-11 05:13:59', '2026-09-11 06:23:42'),
(83, 'WSD-20260911-8QAK', 'SENI KANIA ARDILA', 'P27901123097', NULL, 1, 'D3 Keperawatan', 2026, 'Senikania016@gmail.com', '081289864041', 'Perempuan', 'All Size', 'Ibu/bapak kalo bisa ukuran L yah', 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'w6B2bCfVhTEgnKzXxTpjAm0LQzBsVwNb8vTNfPYW', '2026-09-11 05:14:03', '2026-09-11 05:14:03'),
(84, 'WSD-20260911-HNTQ', 'Citra Amanda Ramadhani', 'P27901123007', NULL, 1, 'D3 Keperawatan', 2026, 'mandakybie@gmail.com', '085770348734', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/84/73075111-926d-4e40-9365-f7df86ca7ca4.jpg', 'Transaksi_BCAmobile-20260911-122105.jpg', 'image/jpeg', 497628, '2026-09-11 05:21:29', '2026-09-11 06:24:57', 9, NULL, NULL, NULL, NULL, 'gJdHKfKTqJGOkCML0g07zSJEayxzmXMZwohbDzCF', '2026-09-11 05:17:40', '2026-09-11 06:24:59'),
(85, 'WSD-20260911-YRYM', 'SENI KANIA ARDILA', 'P27901123097', NULL, 1, 'D3 Keperawatan', 2026, 'Senikania016@gmail.com', '081289864041', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fdGEcv0V6xfnd76n4U047Xtbco964v5v7azW4N5w', '2026-09-11 05:20:11', '2026-09-11 05:20:11'),
(86, 'WSD-20260911-69YH', 'Lia Ramadhayani', 'P27901123019', NULL, 1, 'D3 Keperawatan', 2026, 'ramadhayanilia@gmail.com', '081278010977', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/86/2aa8f5f6-a6af-495b-863d-e972c670ddb2.png', 'IMG_5501.png', 'image/png', 266627, '2026-09-11 05:23:25', '2026-09-11 06:25:29', 9, NULL, NULL, NULL, NULL, 'maafANbhtzedezzhPLgIw9E4cl8bWfvG7Ry2P0MZ', '2026-09-11 05:20:50', '2026-09-11 06:25:32'),
(87, 'WSD-20260911-WNBK', 'ALYA RAHMA AZKIA', 'P27901123056', NULL, 1, 'D3 Keperawatan', 2026, 'alyarahmaazkia293@gmail.com', '083895706999', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/87/9d60a2f2-095c-4fa1-ad63-1e1f9c9f4a5c.jpeg', 'WhatsApp Image 2026-09-11 at 12.36.16.jpeg', 'image/jpeg', 318188, '2026-09-11 05:36:43', '2026-09-11 06:27:04', 9, NULL, NULL, NULL, NULL, 'C7sarKVKkhdI3KiFSNfcdas1FgQnuSvedrvfgLIh', '2026-09-11 05:24:25', '2026-09-11 06:27:08'),
(88, 'WSD-20260911-TFE4', 'LAELA AWALIAH', 'P27901123075', NULL, 1, 'D3 Keperawatan', 2026, 'laelaawaliah@gmail.com', '085711546902', 'Perempuan', 'All Size', 'Kalo bisa ukurannya jangan terlalu besar ya kak, TB saya 157 Bb 45', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/88/475aecfc-db0d-4b5a-a754-7fa48bfc17e7.jpg', 'IMG-20260911-WA0016.jpg', 'image/jpeg', 147211, '2026-09-11 05:29:07', '2026-09-14 01:34:48', 9, NULL, NULL, NULL, NULL, 'iAZyl70x2FHrOSTaiMKOGRf4FXc2i3GzNOpBhXfm', '2026-09-11 05:27:31', '2026-09-14 01:34:51'),
(89, 'WSD-20260911-8LRV', 'Dede Fitriyani', 'P27901123063', NULL, 1, 'D3 Keperawatan', 2026, 'dedefitriyani215@gmail.com', '0895636709076', 'Perempuan', 'All Size', 'pemesanan toga wisuda keperawatan an.Dede Fitriyani', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/89/26fa4185-60fb-4794-964f-af8a5e88b874.jpg', 'IMG_Fri Sep 11 14_34_17 GMT+07_00 2026.jpg', 'image/jpeg', 233952, '2026-09-11 07:35:25', '2026-09-14 02:45:11', 9, NULL, NULL, NULL, NULL, 'Mzk1qAl0utWCEwDKh1ZumToyMEcNA3pELUVXR2Yg', '2026-09-11 05:30:06', '2026-09-14 02:45:14'),
(90, 'WSD-20260911-KYZ4', 'ARAFAH NISA AULIA', 'P27901123059', NULL, 1, 'D3 Keperawatan', 2012, 'arafahnisa01@gmail.com', '081219477790', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'UBD9I1rCu0ttM2Pue6uc9TaMgW0rHoZG9nDHnA5h', '2026-09-11 05:30:39', '2026-09-11 05:30:39'),
(91, 'WSD-20260911-2PRO', 'Nadin Irdi Fasya', 'P27901123083', NULL, 1, 'D3 Keperawatan', 2026, 'nadinirdifasya@gmail.com', '087867988629', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/91/30b897b0-14f5-4810-865a-126ff0b6e68d.jpg', 'IMG-20260911-WA0010.jpg', 'image/png', 215816, '2026-09-11 05:32:49', '2026-09-11 05:45:46', 9, NULL, NULL, NULL, NULL, 'dv0ZBBlEW1QMb4lx0a6rKJvI0n9seFbWq6fGAB8X', '2026-09-11 05:31:20', '2026-09-11 05:45:50'),
(92, 'WSD-20260911-WTZU', 'Uswatun Hasanah', 'P27901123105', NULL, 1, 'D3 Keperawatan', 2026, 'uswat000@gmail.com', '082113555875', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/92/d1341b86-9371-48b1-96de-fdc2df0f404d.jpg', 'Screenshot_2026-09-11-12-37-50-062_id.dana.jpg', 'image/jpeg', 486678, '2026-09-11 05:38:20', '2026-09-11 05:53:26', 9, NULL, NULL, NULL, NULL, 'IAk6mzbzZ9KGGPQWZmBxtwXSqQ2swCL72ik6imcx', '2026-09-11 05:35:57', '2026-09-11 05:53:29'),
(93, 'WSD-20260911-QQHN', 'Siti Najah Irda Maelani Julian', 'P27901123100', NULL, 1, 'D3 Keperawatan', 2026, 'irdanajah123@gmail.com', '085697126504', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/93/ad83a4c9-54ae-481e-a36a-29c33a97644e.jpg', 'IMG-20260911-WA0000.jpg', 'image/jpeg', 56025, '2026-09-11 05:40:13', '2026-09-11 06:31:34', 9, NULL, NULL, NULL, NULL, 'mXeQKRbUFwdCELTQXawEuAUu8B3pcXIVsbxqPSYU', '2026-09-11 05:36:14', '2026-09-11 06:31:37'),
(94, 'WSD-20260911-ZWUY', 'Ladiyan Hanifa', 'P27901123074', NULL, 1, 'D3 Keperawatan', 2026, 'ladiyanhanifa8@gmail.com', '085692771471', 'Perempuan', 'All Size', 'Bayar toga an. Ladiyan Hanifa', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/94/efb01c89-cc31-4621-947c-eaeed7db0d59.jpg', 'IMG-20260911-WA0042.jpg', 'image/jpeg', 128921, '2026-09-11 05:43:41', '2026-09-11 05:53:01', 9, NULL, NULL, NULL, NULL, 'JrWnFDtu8MKSpP1LdD5Vw0nkqNc3sGKvE5Permta', '2026-09-11 05:42:39', '2026-09-11 05:53:04'),
(95, 'WSD-20260911-IUCD', 'Yanti Febriyanti', 'P27901123051', NULL, 1, 'D3 Keperawatan', 2026, 'FY111220@gmail.com', '081384605954', 'Perempuan', 'All Size', 'Jangan terlalu besar', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/95/fffe706b-69e7-45da-9c13-9c9973212956.jpg', 'IMG_20260911_124606_266.jpg', 'image/jpeg', 109654, '2026-09-11 05:47:03', '2026-09-11 06:32:28', 9, NULL, NULL, NULL, NULL, 'JUNTaZMVV7raZ3cWGEqHGXMgR6MizQKh4YxSXD2t', '2026-09-11 05:44:38', '2026-09-11 06:32:31'),
(96, 'WSD-20260911-TKSB', 'Siti Nuranisa', 'P27901123043', NULL, 1, 'D3 Keperawatan', 2026, 'sitinuranisa475@gmail.com', '08558681369', 'Perempuan', 'All Size', 'agak kecilan bb 44 tb 155', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/96/5643ec21-2769-4c3f-bfb2-787c0ac7c651.png', 'IMG_7831.png', 'image/png', 261045, '2026-09-11 05:54:14', '2026-09-11 07:15:51', 9, NULL, NULL, NULL, NULL, 'Sm8Dd8rDe4hc72Rn2Vk8l5bBjyB7lJYcBiEgYUX9', '2026-09-11 05:49:36', '2026-09-11 07:15:53'),
(97, 'WSD-20260911-KO1D', 'Linda Oktaviani', 'P27901123021', NULL, 1, 'D3 Keperawatan', 2026, 'archivesndaa@gmail.com', '085971686528', 'Perempuan', 'All Size', 'Linda Oktaviani transfer melalui Seabank a.n Zahara Nur Azzani', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/97/3e78edbd-2e26-4c5c-b774-cab2f575c128.jpg', 'IMG-20260911-WA0023.jpg', 'image/jpeg', 95497, '2026-09-11 06:06:44', '2026-09-11 06:13:32', 9, NULL, NULL, NULL, NULL, 'eEBFqsSAvpocnPJJPvoYfJJXXhGNCUn5eDZTjmky', '2026-09-11 06:05:00', '2026-09-11 06:13:35'),
(98, 'WSD-20260911-FJ30', 'Fortuna Putri Wanda Pratami', 'P27902123096', NULL, 2, 'D3 Kebidanan', 2026, 'fortunaputri04@gmail.com', '085930470845', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'AMpt4cQ4MNXG3t6cL3hZb2v0izQGJXqoDtNvtZHc', '2026-09-11 06:23:32', '2026-09-11 06:23:32'),
(99, 'WSD-20260911-PEZW', 'Gabriella Svetlana de Kock', 'P27901123015', NULL, 1, 'D3 Keperawatan', 2026, 'elagabri247@gmail.com', '089675640376', 'Perempuan', 'All Size', 'size toga S', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/99/e3fa86e4-a4c6-4869-8a6c-142f75761bc9.jpeg', 'ed20adba-0009-4393-8df3-7e4c915b2b0a.jpeg', 'image/jpeg', 115344, '2026-09-11 06:24:30', '2026-09-11 06:33:06', 9, NULL, NULL, NULL, NULL, 'gaJF2v0o93oLGEBEqgbrFou35xHpm2CEzkjv4Kbj', '2026-09-11 06:23:56', '2026-09-11 06:33:09'),
(100, 'WSD-20260911-YPKI', 'Triwanda Daulay', 'P27901123047', NULL, 1, 'D3 Keperawatan', 2026, 'daulaytriwanda08@gmail.com', '081328269685', 'Perempuan', 'All Size', 'size toga M', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/100/7ca094f8-b0b1-4c4c-a13c-f3b1e6dae376.jpg', 'IMG-20260911-WA0009.jpg', 'image/jpeg', 95497, '2026-09-11 06:24:48', '2026-09-11 06:34:01', 9, NULL, NULL, NULL, NULL, 'KNQuN983CTbXcdTRYURCKevwzIMBMEk1xuUAiXXM', '2026-09-11 06:23:56', '2026-09-11 06:34:04'),
(101, 'WSD-20260911-RNH7', 'Fortuna Putri Wanda Pratami', 'P27902123096', NULL, 2, 'D3 Kebidanan', 2026, 'fortunaputri04@gmail.com', '085930470845', 'Perempuan', 'All Size', 'BB 50kg\r\nTB 153cm', 1, 'completed', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/101/e7696e8a-2f90-43a6-a8b9-b54f8b2ecb4a.jpg', 'Screenshot_2026-09-11-13-31-13-006_id.dana.jpg', 'image/jpeg', 551241, '2026-09-11 06:35:55', NULL, NULL, NULL, NULL, NULL, NULL, '8OtryBq2toezMqg5RZcGiDr5mOthscskDrieugpp', '2026-09-11 06:34:44', '2026-09-14 02:38:21'),
(102, 'WSD-20260911-XUMM', 'Oktavira Hayani', 'P27901123088', NULL, 1, 'D3 Keperawatan', 2026, 'oktavira.hayani21@gmail.com', '085718614320', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/102/a5f6bb74-f9da-4770-9efd-addefde6e52f.jpeg', 'IMG_1009.jpeg', 'image/jpeg', 247422, '2026-09-11 06:47:26', '2026-09-11 06:49:33', 9, NULL, NULL, NULL, NULL, 'gIxSeAdGj8KTkmkvEvdJFOqxbpfTkRiIOeGF2fD4', '2026-09-11 06:47:00', '2026-09-11 06:49:36'),
(103, 'WSD-20260911-KV0E', 'Ira puspitasari', 'P27901123017', NULL, 1, 'D3 Keperawatan', 2026, 'puspitsariira@gmail.com', '088224648137', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/103/8ac1d0ac-b53b-4c7d-ad2d-566077a27e75.jpg', 'IMG-20260911-WA0024.jpg', 'image/jpeg', 236796, '2026-09-11 09:12:17', NULL, NULL, NULL, NULL, NULL, NULL, 'YwFTjW0hJ5GYqgGy0ASuLDG60LfYyjqB7ryga2zG', '2026-09-11 06:48:26', '2026-09-11 09:12:17'),
(104, 'WSD-20260911-3GHC', 'ARAFAH NISA AULIA', 'P27901123059', NULL, 1, 'D3 Keperawatan', 2026, 'arafahnisa01@gmail.com', '081219477790', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/104/7d924abd-e943-482e-9a0e-786780fc6ee6.jpeg', 'WhatsApp Image 2026-09-11 at 1.56.10 PM.jpeg', 'image/jpeg', 84692, '2026-09-11 07:00:34', '2026-09-14 02:44:05', 9, NULL, NULL, NULL, NULL, 'GGszbpXlDc4kshGh5rCf72eTJp3rdjO6z3vq8Ssp', '2026-09-11 06:53:54', '2026-09-14 02:44:08'),
(105, 'WSD-20260911-ZVZM', 'Susan Nurmeida', 'P27901123101', NULL, 1, 'D3 Keperawatan', 2026, 'susannurmeida506@gmail.com', '083172206091', 'Perempuan', 'All Size', 'kalo ada uk m mau yang ya m ya minn soalnya saya petite hehe🙏🏻', 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mAcH1lPwpT90iywVqbCllC9ywyrk1vDLD39IhAIN', '2026-09-11 07:46:04', '2026-09-11 07:46:04'),
(106, 'WSD-20260911-LRFF', 'Aninda Nur Fitriyana', 'P27901123003', NULL, 1, 'D3 Keperawatan', 2026, 'anindafitri2019@gmail.com', '083876289867', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hv9sAnKczCbskm3CcUPWpttQ9r1VrTBdVRHhcms0', '2026-09-11 07:59:53', '2026-09-11 07:59:53');
INSERT INTO `graduation_toga_orders` (`id`, `order_code`, `student_name`, `nim`, `nik`, `study_program_id`, `study_program_name`, `graduation_year`, `email`, `phone`, `gender`, `toga_size`, `size_note`, `quantity`, `status`, `payment_status`, `payment_amount`, `payment_method`, `payment_proof_path`, `payment_proof_original_name`, `payment_proof_mime`, `payment_proof_size`, `payment_uploaded_at`, `payment_verified_at`, `payment_verified_by`, `payment_rejected_at`, `payment_rejected_by`, `admin_note`, `rejection_note`, `public_token`, `created_at`, `updated_at`) VALUES
(107, 'WSD-20260911-RED3', 'SITI NURHAYATI', 'P27901123044', NULL, 1, 'D3 Keperawatan', 2026, 'stnurhayati2604@gmail.com', '085280457876', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SduZsNWV7JMbdLTOEo41MBG5TaDEkztdRbtWflUX', '2026-09-11 08:01:17', '2026-09-11 08:01:17'),
(108, 'WSD-20260911-EPGO', 'Aninda Nur Fitriyana', 'P27901123003', NULL, 1, 'D3 Keperawatan', 2026, 'anindafitri2019@gmail.com', '083876289867', 'Perempuan', 'All Size', 'uk :s', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/108/f09c75c9-34fc-481e-a030-75431cf20910.jpg', 'IMG-20260911-WA0010.jpg', 'image/jpeg', 65802, '2026-09-11 08:06:27', '2026-09-14 02:46:12', 9, NULL, NULL, NULL, NULL, 'YWtqmtRuNBXEo4o1paMrccG0IpWQCu9nIHB1SnNp', '2026-09-11 08:02:42', '2026-09-14 02:46:16'),
(109, 'WSD-20260911-PDBD', 'Putri Rahmawati Ningsih', 'P27903123035', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'putrirahmaa713@gmail.com', '085942579052', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/109/ff585d53-84f4-4e06-bb60-69a2f5449f8a.jpg', 'Screenshot_20260912_181007_Chrome.jpg', 'image/jpeg', 555200, '2026-09-12 11:10:20', '2026-09-14 03:14:04', 9, NULL, NULL, NULL, NULL, 'odBjP1hiD32HP3MYXQy4YKpH5Mi7aCJlqJ4zE1xK', '2026-09-11 08:03:40', '2026-09-14 03:14:09'),
(110, 'WSD-20260911-ZSW6', 'Marzela Diana Putri', 'P27903123025', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'marzeladianaputri@gmail.com', '085779719532', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/110/bead2fb7-b416-4ca3-9fc6-c108cc62c195.jpg', 'IMG-20260912-WA0040.jpg', 'image/jpeg', 73053, '2026-09-12 11:19:31', '2026-09-14 03:15:36', 9, NULL, NULL, NULL, NULL, '6rqH95xVbC3B1HqVQHYoIWKt9sHJQcDdZx1GNWlB', '2026-09-11 08:05:25', '2026-09-14 03:15:41'),
(111, 'WSD-20260911-3MZW', 'HIMATUL ALIYAH', 'P27901123070', NULL, 1, 'D3 Keperawatan', 2026, 'himatulhimatulaliyah15@gmail.com', '082258094672', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/111/b2180af7-8cde-430f-a0a7-abb06d9ef065.png', 'IMG_6519.png', 'image/png', 115679, '2026-09-11 08:44:32', '2026-09-14 01:35:44', 9, NULL, NULL, NULL, NULL, 'DZJ7dRPpPxty1kuC3YdAxJv9Eo1V9aqbciIpc0fj', '2026-09-11 08:42:02', '2026-09-14 01:35:47'),
(112, 'WSD-20260911-3ONM', 'PUTRI AYU WIDIA NINGRUM', 'P27901123089', NULL, 1, 'D3 Keperawatan', 2026, 'ningruma298@gmail.com', '085888413823', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/112/69fbb2b7-38b4-45f9-99f1-22acef909947.jpg', 'Screenshot_20260911_154915_SeaBank.jpg', 'image/jpeg', 272249, '2026-09-11 08:49:43', '2026-09-14 02:47:11', 9, NULL, NULL, NULL, NULL, 'Bst6xsdUmXeunSiGVGATLoTay2h9QnjSDspQ26Oc', '2026-09-11 08:49:23', '2026-09-14 02:47:15'),
(113, 'WSD-20260911-KRBO', 'Zahwa Alifya Nurushafa', 'P27901123054', NULL, 1, 'D3 Keperawatan', 2026, 'alifyazahwa31@gmail.com', '085881562019', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/113/04cd2b15-d100-4f40-ba5c-39aa2cdcf8a5.png', 'IMG_4592.png', 'image/png', 286397, '2026-09-11 09:05:47', '2026-09-14 02:48:02', 9, NULL, NULL, NULL, NULL, '1vU1Qg10GDqRZwOdiHTzCcQ0f6tfulIInWQGHAgk', '2026-09-11 09:02:39', '2026-09-14 02:48:06'),
(114, 'WSD-20260911-2YHE', 'Dinda Aulia Oktaviana', 'P27901123008', NULL, 1, 'D3 Keperawatan', 2026, 'auliaoktavianadinda@gmail.com', '085774466218', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/114/93897e0e-cc34-4813-8257-966ba03efc5f.jpg', 'IMG-20260911-WA0053.jpg', 'image/jpeg', 64557, '2026-09-11 09:50:14', NULL, NULL, NULL, NULL, NULL, NULL, 'PCCz742Gacs22QRkWYmXK09U40zwCNO5wA7N3Nj8', '2026-09-11 09:27:04', '2026-09-11 09:50:14'),
(115, 'WSD-20260911-XPZH', 'Syahla Khoerunnisa', 'P27901123102', NULL, 1, 'D3 Keperawatan', 2026, 'Syahlakhoerunnisa12@gmail.com', '085135417709', 'Perempuan', 'All Size', 'ibu/bapak punten ukuran toga jubahnya jgn terlalu besar ukurannya \"S\" karena BB saya 39 kg dan TB saya 159🙏', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/115/14fb8b94-39cc-4873-ae0c-d71d6171a285.jpg', '1000513414.jpg', 'image/jpeg', 119972, '2026-09-11 09:59:33', '2026-09-14 02:48:59', 9, NULL, NULL, NULL, NULL, 'o4nc2ir4eFJjun8KapjlJTP6Kjl5FnXS4jYhiDcI', '2026-09-11 09:54:05', '2026-09-14 02:49:02'),
(116, 'WSD-20260911-TARH', 'Neneng Kurniasih', 'P27902123108', NULL, 2, 'D3 Kebidanan', 2026, 'nenengk2005@gmail.com', '085782612161', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/116/d1c20155-6669-4e0c-b69e-26cd6fea413f.jpg', 'Screenshot_20260911_165652_DANA.jpg', 'image/jpeg', 452301, '2026-09-11 09:58:12', '2026-09-14 01:33:33', 9, NULL, NULL, NULL, NULL, 'D1EeYR8wxuKZBXPg3aaFP7gbzAHWx23ZqClOOKay', '2026-09-11 09:57:49', '2026-09-14 01:33:36'),
(117, 'WSD-20260911-TGGA', 'Shinta Meilani Jamal', 'P27901123098', NULL, 1, 'D3 Keperawatan', 2026, 'shitamelani@gmail.com', '0895321814517', 'Perempuan', 'All Size', 'Ibu/bapak punten untuk jubah dan toga untuk berat badan 50 kg dan tinggi badan 156 cm', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/117/bc98d297-b334-4309-b6a4-1fffab1044dd.png', 'IMG_0414.png', 'image/png', 134403, '2026-09-11 10:33:56', '2026-09-14 02:50:00', 9, NULL, NULL, NULL, NULL, '4lWoUiVI3UC5bKrP8mQA7BxzP2Sz670u5zMlQY8a', '2026-09-11 10:33:18', '2026-09-14 02:50:04'),
(118, 'WSD-20260911-RFGX', 'Vita Alya Syawaliah', 'P27901123106', NULL, 1, 'D3 Keperawatan', 2026, 'vitanovember21@gmail.com', '085814201788', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/118/00a6c699-b1b9-407f-b481-aee0a4df8912.jpeg', 'IMG_4914.jpeg', 'image/jpeg', 249421, '2026-09-11 10:38:13', '2026-09-14 02:50:34', 9, NULL, NULL, NULL, NULL, 'p0ASPk5c2RRrzjIZodgl0ECMSwGogLoQUB1HrduY', '2026-09-11 10:37:57', '2026-09-14 02:50:37'),
(119, 'WSD-20260911-FUXA', 'GISKA AULIA', 'P27903123163', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'giskaaulia0365@gmail.com', '089677737085', 'Perempuan', 'All Size', 'req muat untuk bb 90', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/119/a52a5760-c18b-4f7d-af14-dd7007f7d11b.jpg', 'Transaksi_BCAmobile-20260911-174913.jpg', 'image/jpeg', 483251, '2026-09-11 10:50:22', '2026-09-14 02:51:00', 9, NULL, NULL, NULL, NULL, '0wxhhMNfkuxQNzwd2cw10svhp5ZKRDvZusxjfEw8', '2026-09-11 10:46:42', '2026-09-14 02:51:03'),
(120, 'WSD-20260911-SZOG', 'Devina Dwi Safitri', 'P2790123157', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'vina04996@gmail.com', '087810433467', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/120/80c49eea-4255-4523-a77a-c0ba21d5f626.jpg', 'IMG-20260912-WA0007.jpg', 'image/jpeg', 89698, '2026-09-12 03:56:28', '2026-09-14 02:03:00', 9, NULL, NULL, NULL, NULL, 'jS3yZZvAqyvIzfrqzamEbLI7TmDcxVNZZZVm5tEN', '2026-09-11 10:47:03', '2026-09-14 02:03:03'),
(121, 'WSD-20260911-BHLD', 'Nayla Putri Yadi', 'P27903123180', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'naylaputriyadi140805@gmail.com', '087776258328', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/121/c0ac3348-3e48-4f77-a999-9442834af066.jpg', 'IMG_Fri Sep 11 17_59_56 GMT+07_00 2026.jpg', 'image/jpeg', 148916, '2026-09-11 11:00:58', '2026-09-14 02:54:44', 9, NULL, NULL, NULL, NULL, 'EoLUcDlINTMCg9RYTBmMkA1elrnL7hSLTtmkaZwr', '2026-09-11 10:50:16', '2026-09-14 02:54:47'),
(122, 'WSD-20260911-BA75', 'Alfina Suganda Putri', 'P27902123007', NULL, 2, 'D3 Kebidanan', 2026, 'alfinasugandaputri9@gmail.com', '085215820621', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/122/d7a77fcd-c055-4723-afb6-13f5a35bc60b.png', 'IMG_5066.png', 'image/png', 218686, '2026-09-11 10:53:59', '2026-09-14 02:51:41', 9, NULL, NULL, NULL, NULL, '65FwA44OK7gElcXYGVDDN3WpnfP4y84uRFvsRgTI', '2026-09-11 10:51:33', '2026-09-14 02:51:45'),
(123, 'WSD-20260911-ZK5V', 'Mutiara Salsabila', 'P27902124106', NULL, 2, 'D3 Kebidanan', 2026, 'salsabilamutiara226@gmail.com', '081211848958', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/123/5ce2b33f-a6ce-44ca-a9c5-8f101f608944.png', 'IMG_8645.png', 'image/png', 199134, '2026-09-11 10:54:14', '2026-09-14 02:52:21', 9, NULL, NULL, NULL, NULL, 'VIaq66VvNqkWwVoD9aC6vtcWzeslT0DGUf323EJU', '2026-09-11 10:53:31', '2026-09-14 02:52:24'),
(124, 'WSD-20260911-UWWN', 'MAYA DEWANTI', 'P27903123172', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'mayadewantiii@gmail.com', '089665922780', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/124/1d74c2c7-8f16-4f84-9b3c-89360bd85555.jpg', 'Screenshot_20260911-180032.jpg', 'image/jpeg', 415684, '2026-09-11 11:02:29', NULL, NULL, NULL, NULL, NULL, NULL, 'OdshK8mIezDBXzyQLEnFIEqQ2CkC0dOu54SCatS4', '2026-09-11 10:56:50', '2026-09-11 11:02:29'),
(125, 'WSD-20260911-XLGK', 'TASYA FITRIA AMANDA', 'P27902123160', NULL, 2, 'D3 Kebidanan', 2026, 'tasyafa20@gmail.com', '085721652497', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/125/7d8029e0-8f38-4b59-b63e-779e05e06ee1.png', 'IMG_3202.png', 'image/png', 245089, '2026-09-11 11:00:14', '2026-09-14 02:02:23', 9, NULL, NULL, NULL, NULL, 'eYsG2KmRtLkAB5vms0kFiVQkA8QkLKFldg0ATRNf', '2026-09-11 10:59:53', '2026-09-14 02:02:26'),
(126, 'WSD-20260911-DYPE', 'Zalfa July Ariqah', 'P27902123164', NULL, 2, 'D3 Kebidanan', 2026, 'zalfaariqah13@gmail.com', '085718626348', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2mwXumg1NpMVk9sLV1UnzexatcUbT43Irzufdl5E', '2026-09-11 11:19:59', '2026-09-11 11:19:59'),
(127, 'WSD-20260911-4JOU', 'Farih Nabilah', 'P27902123053', NULL, 2, 'D3 Kebidanan', 2026, '800farih@gmail.com', '083896534831', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/127/8a138483-f161-4aa9-8b7a-c74ff0aa0559.png', 'IMG_4734.png', 'image/png', 156286, '2026-09-11 11:27:21', '2026-09-14 02:56:13', 9, NULL, NULL, NULL, NULL, 'BLIGWc719MDQQfoa179f0FaRYZDmE2YlkEz9sc8x', '2026-09-11 11:23:35', '2026-09-14 02:56:18'),
(128, 'WSD-20260911-1V3E', 'Siti Nurcahya', 'P27902123114', NULL, 2, 'D3 Kebidanan', 2026, 'snurcahya942@gmail.com', '08817448188', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/128/55ae487a-b34a-4908-9dca-062d935fbcaf.png', 'IMG_6145.png', 'image/png', 201241, '2026-09-11 11:27:11', '2026-09-14 02:57:04', 9, NULL, NULL, NULL, NULL, '3sRYFfAo0JyAhjH8knvVWRyiUgdZhyxL2Sy7ZR07', '2026-09-11 11:25:12', '2026-09-14 02:57:08'),
(129, 'WSD-20260911-XSZ2', 'Erica Sintya', 'P27903123015', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'ericasintya1012@gmail.com', '089507933851', 'Perempuan', 'All Size', 'Ibu/Bapak yang terhormat. Saya memiliki badan yang gemuk, ukuran lingkar dada baju biasa 130cm sehingga kemungkinan untuk toga 140 cm. Mohon dipesan terpisah dan perhatikan ukurannya demi kenyamanan saat pelaksaan wisuda. Terima kasih.', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/129/42d00c1e-522c-4e30-a07d-2742c6ab6e48.jpg', 'Screenshot_20260911_182635_DANA.jpg', 'image/jpeg', 465752, '2026-09-11 11:29:07', '2026-09-14 01:36:47', 9, NULL, NULL, NULL, NULL, 'L9XusAxvdy2BtfsnxRk5rC707BTuSe2MjKr5g5Qo', '2026-09-11 11:27:14', '2026-09-14 01:36:50'),
(130, 'WSD-20260911-ASW7', 'Rompianti Salsah Sulinah', 'P27901123039', NULL, 1, 'D3 Keperawatan', 2026, 'salsahsulinah511@gmail.com', '08567340676', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/130/91f1e12a-5bd4-40ea-bea9-8a8213643f13.pdf', 'DOC-20260911-WA0039.pdf', 'application/pdf', 243567, '2026-09-11 11:53:55', '2026-09-14 02:58:11', 9, NULL, NULL, NULL, NULL, '6QO2WCpYSusoAuvTNXHN4Eh0cJMmkr8PVDY6faAs', '2026-09-11 11:41:23', '2026-09-14 02:58:13'),
(131, 'WSD-20260911-LDE0', 'MUTIA INTAN PERMATASARI', 'P27902123063', NULL, 2, 'D3 Kebidanan', 2026, 'permatamutia902@gmail.com', '085135431781', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/131/df0ea201-b2c8-4ee6-bf75-9e596811ce73.jpg', 'Screenshot_20260911_184816_BRImo.jpg', 'image/jpeg', 552618, '2026-09-11 11:49:03', '2026-09-14 02:58:36', 9, NULL, NULL, NULL, NULL, 'De24skEGboIy5rTgRdesAZ8yvpVndIoZN4I4JQ5I', '2026-09-11 11:46:38', '2026-09-14 02:58:40'),
(132, 'WSD-20260911-BRBC', 'Erlis Julita', 'P27902123094', NULL, 2, 'D3 Kebidanan', 2026, 'elisjulita2@gamil.com', '081388495396', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/132/848c5181-479d-4611-9827-64ce3da12af8.png', 'IMG_0037.png', 'image/png', 214220, '2026-09-11 11:48:49', '2026-09-14 02:57:31', 9, NULL, NULL, NULL, NULL, 'H7S3A0Yc7UYOUAja6rUDUWzDjWuAMep6UPySCTbD', '2026-09-11 11:47:04', '2026-09-14 02:57:34'),
(133, 'WSD-20260911-UA8G', 'Elva Munzilah Riyanti', 'P27901123009', NULL, 1, 'D3 Keperawatan', 2026, 'elvamunzilah2112@gmail.com', '083872142382', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/133/1dc12c87-d680-4513-8b53-e78de25d8ba1.jpg', 'IMG-20260911-WA0009.jpg', 'image/jpeg', 80679, '2026-09-11 11:52:25', NULL, NULL, NULL, NULL, NULL, NULL, 'sqd3RlIsKME0FdaNVKJtlzqW1jkvm8Xutge8NuFu', '2026-09-11 11:51:22', '2026-09-11 11:52:25'),
(134, 'WSD-20260911-EVGL', 'Verna Winarni Syakiroh', 'P27902123080', NULL, 2, 'D3 Kebidanan', 2026, 'winarniverna127@gmail.com', '081912631707', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tBIBpM0awR6jOttAjr8dvaSbNtEOg8l9EJ59OzKs', '2026-09-11 12:34:27', '2026-09-11 12:34:27'),
(135, 'WSD-20260911-Q8DV', 'Mayesa Al-Fiana', 'P27901123023', NULL, 1, 'D3 Keperawatan', 2026, 'ichaa7869@gmail.com', '089517286830', 'Perempuan', 'All Size', 'Ukuran s', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/135/41df6e26-c331-4298-9a54-bfeada65eb4b.jpg', 'IMG-20260911-WA0018.jpg', 'image/jpeg', 86506, '2026-09-11 12:52:30', '2026-09-14 02:59:58', 9, NULL, NULL, NULL, NULL, 'yoIjGvtHylB2JOzCyMUUPG4WfzZ9q1mFyvsyMxjK', '2026-09-11 12:43:21', '2026-09-14 03:00:01'),
(136, 'WSD-20260911-LJPE', 'Verna Winarni Syakiroh', 'P27902123080', NULL, 2, 'D3 Kebidanan', 2026, 'winarniverna127@gmail.com', '081912631707', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/136/8c6c8498-303d-43d6-b7ab-661561a3d903.jpg', 'Screenshot_20260911_194939.jpg', 'image/jpeg', 271601, '2026-09-11 12:50:06', '2026-09-14 02:59:33', 9, NULL, NULL, NULL, NULL, 'ZOt4JdDODEXdtkm7YVJVrovKxdhl7RaJZFlccNpV', '2026-09-11 12:45:25', '2026-09-14 02:59:36'),
(137, 'WSD-20260911-FIP3', 'SITI NURHAYATI', 'P27901123044', NULL, 1, 'D3 Keperawatan', 2026, 'stnurhayati2604@gmail.com', '085280457876', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/137/7d991526-db8b-454e-bba0-71b3a8a614af.jpg', 'IMG-20260911-WA0011.jpg', 'image/jpeg', 79117, '2026-09-11 14:07:35', NULL, NULL, NULL, NULL, NULL, NULL, 'WWyLQikVbvR2o9ZFAv5SdrLKGSK6u7ziIjK9PO0O', '2026-09-11 14:06:51', '2026-09-11 14:07:35'),
(138, 'WSD-20260911-9WLN', 'ZAHWA MASAYU AULIA', 'P27902123163', NULL, 2, 'D3 Kebidanan', 2026, 'zahwamasayu@gmail.com', '083105107273', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/138/4b1ffc7b-6076-4c60-899a-18d0d2cf7c6b.jpeg', 'bukti pembayran toga zahwa.jpeg', 'image/jpeg', 74859, '2026-09-11 14:41:03', '2026-09-14 01:59:12', 9, NULL, NULL, NULL, NULL, 'GPbglFp84CpRrvb2XglUAbVKtQljKpNA7skTegJ7', '2026-09-11 14:37:17', '2026-09-14 01:59:14'),
(139, 'WSD-20260911-BD3K', 'Seni Kania Ardila', 'P27901123097', NULL, 1, 'D3 Keperawatan', 2026, 'senikania016@gmail.com', '081289864041', 'Perempuan', 'All Size', 'Ibu/bapak Kalo bisa mau ukuran L', 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/139/232eb77b-e62e-455d-88e1-dd26d5a9bfc4.jpeg', 'WhatsApp Image 2026-09-11 at 21.40.56.jpeg', 'image/jpeg', 88796, '2026-09-11 15:03:57', NULL, NULL, NULL, NULL, NULL, NULL, '0ceW9BSCL491FYxeZ6rOg2Djm0eFsMTrFtycCdkJ', '2026-09-11 15:02:25', '2026-09-11 15:03:57'),
(140, 'WSD-20260911-NF7K', 'SITI NURHAYATI', 'P27901123044', NULL, 1, 'D3 Keperawatan', 2026, 'stnurhayati2604@gmail.com', '085280457876', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/140/4248000b-8c14-42c5-81c2-da9738f2337f.jpg', 'IMG-20260911-WA0011.jpg', 'image/jpeg', 79117, '2026-09-11 23:00:29', NULL, NULL, NULL, NULL, NULL, NULL, 'p2SywfyQELb4W4pKSjKxsHVJXrlHktCEJnT8JlTk', '2026-09-11 22:59:25', '2026-09-11 23:00:29'),
(141, 'WSD-20260911-U3MH', 'Revaluna Maira Fuadi', 'P27901123037', NULL, 1, 'D3 Keperawatan', 2026, 'rmfluns@gmail.com', '081998695511', 'Perempuan', 'All Size', 'size S', 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/141/cd4fcdf5-ab3b-417f-90c2-918a0d88ef5d.jpg', 'IMG-20260911-WA0081.jpg', 'image/jpeg', 61452, '2026-09-11 23:40:12', NULL, NULL, NULL, NULL, NULL, NULL, 'x30dr0s6E15QUv6wdhFFY8r3M0mqysRmsaAVHmn0', '2026-09-11 23:39:35', '2026-09-11 23:40:12'),
(142, 'WSD-20260912-IFVP', 'Meri Maherani', 'P27901123078', NULL, 1, 'D3 Keperawatan', 2026, 'maheranii.ajja@gmail.com', '0895405435295', 'Perempuan', 'All Size', '-', 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/142/5c63e0c1-fb50-4b3a-882f-08a9d1f90859.png', 'IMG_4228.png', 'image/png', 116620, '2026-09-12 00:17:14', NULL, NULL, NULL, NULL, NULL, NULL, 'GHkZ3BeoprojbjDMLA474EAHbi5LD9eF5ZsuGh1a', '2026-09-12 00:16:13', '2026-09-12 00:17:14'),
(143, 'WSD-20260912-T70R', 'Anfaunnisa', 'P27902123087', NULL, 2, 'D3 Kebidanan', 2026, 'unnisaanfa@gmail.com', '085863507971', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/143/addbfa8e-4548-43ed-88a4-2f97d4d9965f.png', 'IMG_1457.png', 'image/png', 186679, '2026-09-12 00:45:54', NULL, NULL, NULL, NULL, NULL, NULL, 'rtOFtLvTTDOWw3noa5WDsxKmxlLl8gxMakdbOij2', '2026-09-12 00:43:55', '2026-09-12 00:45:54'),
(144, 'WSD-20260912-IJ2L', 'Rohimatun', 'P27901123095', NULL, 1, 'D3 Keperawatan', 2026, 'rohimatunmutmainah045@gmail.com', '081318218593', 'Perempuan', 'All Size', 'TB : 156 cm\r\nBB : 60 kg', 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/144/3254e931-6e2f-4341-a890-90fafca2cfbe.jpg', 'Screenshot_2026-09-12-07-49-25-21_f0d5010b4078101d669cabe708845c5e.jpg', 'image/jpeg', 363597, '2026-09-12 00:50:28', NULL, NULL, NULL, NULL, NULL, NULL, 'E0Sfbru7B0G2h8Jb3XdJUlComjKyLN7WJiEKBird', '2026-09-12 00:46:56', '2026-09-12 00:50:28'),
(145, 'WSD-20260912-UTOS', 'wulan', 'P27902123122', NULL, 9, 'Sarjana Terapan Kebidanan', 2026, 'wdari8908@gmail.com', '088296179579', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SzrQvwlkcF3fJgex6Yf44PhKVFCJlppRFjKS3Wyd', '2026-09-12 00:52:08', '2026-09-12 00:52:08'),
(146, 'WSD-20260912-1URO', 'Riska Hidayani', 'P27901123094', NULL, 1, 'D3 Keperawatan', 2026, 'riskahidayani120221@gmail.com', '08881359624', 'Perempuan', 'All Size', 'TB : 157\r\nBB : 56', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/146/b2aef810-835e-48fd-aece-6a9f3474bfd3.png', 'Screenshot_20260912-075209.png', 'image/png', 219986, '2026-09-12 00:53:12', '2026-09-14 03:01:27', 9, NULL, NULL, NULL, NULL, 'M3wb7W0IKTeoQWWQ7bkwHiB3eIPw8XrjUZGjIDqD', '2026-09-12 00:52:30', '2026-09-14 03:01:30'),
(147, 'WSD-20260912-QM1Q', 'wulan', 'P27902123122', NULL, 2, 'D3 Kebidanan', 2026, 'wdari8908@gmail.com', '088296-79579', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/147/9be38878-9e73-42f3-9046-e0c67741f588.png', 'IMG_4028.png', 'image/png', 175119, '2026-09-12 00:53:59', NULL, NULL, NULL, NULL, NULL, NULL, 'wcSCJeRkqXmgLdc4JHqNC01sq5MVdcI3OqXORcWn', '2026-09-12 00:53:12', '2026-09-12 00:53:59'),
(148, 'WSD-20260912-6HOI', 'BINTANG SALSABILA CAHYANINGRAT', 'P27901123006', NULL, 1, 'D3 Keperawatan', 2026, 'denynggie@gmail.com', '083875425476', 'Perempuan', 'All Size', 'Size M', 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FPL2jcLyz5jebavoNCbwZGi45wXLpGJOLmcTXX1w', '2026-09-12 01:07:57', '2026-09-12 01:07:57'),
(149, 'WSD-20260912-MSUW', 'Tri Oktaviani', 'P27903123047', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'trioktaviani2004@gmail.com', '087774114890', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/149/713d9893-5209-4c1c-af39-3e12430ab52c.jpg', 'Screenshot_2026-09-12-11-13-59-41.jpg', 'image/jpeg', 365828, '2026-09-12 04:14:33', '2026-09-14 01:40:50', 9, NULL, NULL, NULL, NULL, 'dTdpXs8vvs9a6RJFyoIXEb1lm7Cqdor4aFT4hgRL', '2026-09-12 01:15:14', '2026-09-14 01:40:53'),
(150, 'WSD-20260912-L2AT', 'Dina Nurhasanah', 'P27902123091', NULL, 2, 'D3 Kebidanan', 2026, 'dinanurhasanah102@gmail.com', '087761060061', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/150/63e46cbe-0219-49c9-9db4-c3f3be2b94f3.jpeg', 'WhatsApp Image 2026-09-12 at 08.43.53.jpeg', 'image/jpeg', 85306, '2026-09-12 01:44:05', '2026-09-14 03:01:53', 9, NULL, NULL, NULL, NULL, 'Lj9z8hgGgpQqIv0b4Vt0ANOp3R5UAvzaj6aEOlou', '2026-09-12 01:42:40', '2026-09-14 03:01:57'),
(151, 'WSD-20260912-VVT8', 'Anindita Aprilia', 'P27903123007', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'aninditaaprilia04@gmail.com', '083869023187', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/151/b9ef98a3-31a9-4671-b05f-f1a809cc520c.png', 'IMG_3718.png', 'image/png', 610895, '2026-09-12 02:01:34', '2026-09-14 07:40:18', 9, NULL, NULL, NULL, NULL, 'gpCVsnLiuDiEEJE6c2guzCTgUtsXas40awEMix10', '2026-09-12 01:59:27', '2026-09-14 07:40:21'),
(152, 'WSD-20260912-QRU4', 'Alivia Diva Junita Makatita', 'P27903123004', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'aliviadiva436@gmail.com', '081386538928', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/152/c21eefc1-4337-4282-9985-34551ff6fa19.jpeg', '34d636a0-def2-4ed7-b6b3-05dc48ab0bc4.jpeg', 'image/jpeg', 44709, '2026-09-12 02:08:36', '2026-09-14 06:21:43', 9, NULL, NULL, NULL, NULL, 'fJxDZ3hoOUYpT2jtvUzLgHtxwug84OpIiFQsVl9c', '2026-09-12 02:06:12', '2026-09-14 06:21:45'),
(153, 'WSD-20260912-DEXR', 'Elsa Sofia Nazza', 'P27903123013', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'elsasofianazza265@gmail.com', '082114771927', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/153/d374e096-5b59-437d-b730-8dc2222a0f25.jpg', 'Screenshot_2026-09-12-09-42-56-85_78ed797590cf9a33dfc5e341b7a9537a.jpg', 'image/jpeg', 508946, '2026-09-12 02:45:25', '2026-09-14 03:02:41', 9, NULL, NULL, NULL, NULL, 'DvWsVqLMszdMjMo67H5aiN8wwE0ZnIaxSHxqslkA', '2026-09-12 02:43:33', '2026-09-14 03:02:45'),
(154, 'WSD-20260912-8JKG', 'Kayla amanda', 'P27903123023', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'kaymanda25@gmail.con', '085110532715', 'Perempuan', 'All Size', '-', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/154/260c9649-ffc5-44c1-9a7d-1096d53a2bf4.png', '348CA138-1E10-4DC6-A4CE-F4649FA6B596.png', 'image/png', 112802, '2026-09-12 02:46:04', '2026-09-14 02:42:41', 9, NULL, NULL, NULL, NULL, 'evHApRgXxLwkeNOrqfRIEcgyvoszjuA4YH7of51H', '2026-09-12 02:44:56', '2026-09-14 02:42:43'),
(155, 'WSD-20260912-MJSD', 'Azkia Maulidya', 'P27902123129', NULL, 2, 'D3 Kebidanan', 2026, 'azkia250405@gmail.com', '081930777965', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4bEbDyyFzc6nNsF63AlI0d3JLEVApAFOzoqlrHqv', '2026-09-12 02:51:43', '2026-09-12 02:51:43'),
(156, 'WSD-20260912-BOKA', 'Azkia Maulidya', 'P27902123129', NULL, 2, 'D3 Kebidanan', 2026, 'azkia250405@gmail.com', '081930777965', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uoaXgHAVgAwY4PzqMHw0ZMwoOKa1nAuaSTDyL31P', '2026-09-12 03:12:19', '2026-09-12 03:12:19'),
(157, 'WSD-20260912-SMXZ', 'Azkia Maulidya', 'P27902123129', NULL, 2, 'D3 Kebidanan', 2026, 'azkia250405@gmail.com', '081930777965', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uhbybUQnB83hRppUrBna3xtIKRb23JZuw570IE8J', '2026-09-12 03:20:53', '2026-09-12 03:20:53'),
(158, 'WSD-20260912-NKQX', 'Azkia Maulidya', 'P27902123129', NULL, 2, 'D3 Kebidanan', 2026, 'azkia250405@gmail.com', '081930777965', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/158/8203baf4-b639-4e61-bbae-0fa09a1ac332.jpg', 'IMG-20260912-WA0002.jpg', 'image/jpeg', 76572, '2026-09-12 03:24:10', '2026-09-14 03:09:26', 9, NULL, NULL, NULL, NULL, 'vQEO1wayqO5N5LD8P5u3hlZ8j04kWCmGhuKKDrH3', '2026-09-12 03:23:38', '2026-09-14 03:09:29'),
(159, 'WSD-20260912-VPIU', 'BELLA DWI YULIANI', 'P27902123047', NULL, 2, 'D3 Kebidanan', 2026, 'dwyulianibella@gmail.com', '089517287953', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'lhz3AVytYSlQfNaLnSZYE01oEICNw87DJt8Y74LP', '2026-09-12 03:24:22', '2026-09-12 03:24:22'),
(160, 'WSD-20260912-3PZS', 'Kamila Khairunnisa', 'P27903123022', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'kamilakhairunnisa02@gmail.com', '087761140721', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/160/fa5dd3c4-751c-4468-86ac-8489e7914399.jpg', 'Screenshot_20260912_103035_DANA.jpg', 'image/jpeg', 568882, '2026-09-12 03:40:34', NULL, NULL, NULL, NULL, NULL, NULL, 'lW4F9SMjG1OnXQnLJnhpXDbUFTEzJiyWRtB0hJN9', '2026-09-12 03:38:19', '2026-09-12 03:40:34'),
(161, 'WSD-20260912-UWEU', 'Jeni ayu amanda', 'P27903123069', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'jenimanda09@gmail.com', '089528687077', 'Perempuan', 'All Size', 'ukuran yg M', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/161/184ec7c7-a691-430f-a588-e2b2faa56e9d.jpg', 'image.jpg', 'image/jpeg', 2271401, '2026-09-12 04:03:20', '2026-09-14 03:10:15', 9, NULL, NULL, NULL, NULL, 'u1wLoyE5qXXHOCrTnOcFKKHsBMvPp5bGdaLE2tHl', '2026-09-12 04:02:46', '2026-09-14 03:10:18'),
(162, 'WSD-20260912-J0Y2', 'Tazkia Azzahra Sugara', 'P27902123161', NULL, 2, 'D3 Kebidanan', 2026, 'tazkiaazzahrasugara@gmail.com', '88210757242', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/162/6675f5c0-ed80-4b8f-aade-b2374c870110.jpeg', 'IMG_0478.jpeg', 'image/jpeg', 164177, '2026-09-12 04:36:37', '2026-09-14 03:10:52', 9, NULL, NULL, NULL, NULL, 'MxfZ3sDk0Z7fu9vad5AAow4hx7PCzXEakBJblgWC', '2026-09-12 04:32:39', '2026-09-14 03:10:56'),
(163, 'WSD-20260912-YKAD', 'Novi Avrina Rihadini', 'P27903123130', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'noviavrina6@gmail.com', '089513665740', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'QZCbKnLu4N5pGPX1MuKeVBTCRrext4mprf63BTe8', '2026-09-12 04:35:36', '2026-09-12 04:35:36'),
(164, 'WSD-20260912-WJYO', 'Novi Avrina Rihadini', 'P27903123130', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'noviavrina6@gmail.com', '089513665740', 'Perempuan', 'All Size', 'Kalo ada mau ukuran M ya kk', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/164/f06a2551-c0d0-4a83-86fc-efa96717498c.jpg', 'Transaksi_BCAmobile-20260912-113855.jpg', 'image/jpeg', 468774, '2026-09-12 04:40:07', '2026-09-14 03:11:20', 9, NULL, NULL, NULL, NULL, 'b4At6fAyaSlVTTJxHMsKv5LvzO3CrXjHQPHSmMXO', '2026-09-12 04:36:32', '2026-09-14 03:11:22'),
(165, 'WSD-20260912-TZSX', 'VIORELLY AL-HUDA', 'P27901123049', NULL, 1, 'D3 Keperawatan', 2026, 'viorellyalhuda@gmail.com', '085778239723', 'Laki-laki', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/165/9063cb97-9a1e-48e7-a42c-7c1acf6ef859.jpg', 'IMG-20260912-WA0014.jpg', 'image/jpeg', 81370, '2026-09-12 04:48:45', '2026-09-14 03:11:52', 9, NULL, NULL, NULL, NULL, 'MOjDp7GRoJJZpIh8yAYbLrldo9oPNtX3LS6EXtLu', '2026-09-12 04:45:09', '2026-09-14 03:11:56'),
(166, 'WSD-20260912-UH8E', 'Salsabila Nur Azizah Kesuma Harjo', 'P27902123035', NULL, 2, 'D3 Kebidanan', 2026, 'sbila2113@gmail.com', '085719367991', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pzy2ZGbOVJJrBce521tTYrWJgB3F7SJH3PD5kUzq', '2026-09-12 05:31:57', '2026-09-12 05:31:57'),
(167, 'WSD-20260912-3B5Y', 'Salsabila Nur Azizah Kesuma Harjo', 'P27902123035', NULL, 2, 'D3 Kebidanan', 2026, 'sbila2113@gmail.com', '085719367991', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/167/4ca0dd94-8130-4022-ad55-a2087bf26583.jpg', 'IMG-20260912-WA0001.jpg', 'image/jpeg', 86882, '2026-09-12 05:46:38', '2026-09-14 01:42:13', 9, NULL, NULL, NULL, NULL, 'z46o9bWfRSwfJcrty79m6kdLM2i8uvynmctc9cz6', '2026-09-12 05:44:07', '2026-09-14 01:42:16'),
(168, 'WSD-20260912-PQSI', 'SITI NURHAYATI', 'P27901123044', NULL, 1, 'D3 Keperawatan', 2026, 'stnurhayati2604@gmail.com', '085280457876', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/168/ac7a8927-abb6-4acd-b5dd-5a1cdab250d1.jpg', 'IMG-20260911-WA0011.jpg', 'image/jpeg', 79117, '2026-09-12 06:39:11', NULL, NULL, NULL, NULL, NULL, NULL, '5JqPGnzB9QmKg1a2FXRkGndw16PYa0X9fHWq9As3', '2026-09-12 06:38:35', '2026-09-12 06:39:11'),
(169, 'WSD-20260912-LCPQ', 'Agni Meliani', 'P27902123002', NULL, 2, 'D3 Kebidanan', 2026, 'melianiagni4@gmail.com', '083890379110', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/169/9c3834e9-d2a6-41ad-9498-c4fd7d5c8c04.jpg', 'Screenshot_20260912_161320.jpg', 'image/jpeg', 159473, '2026-09-12 09:14:19', '2026-09-14 01:55:38', 9, NULL, NULL, NULL, NULL, '3kOb2Ji5Pg3CSNsAqRl8hkeEaXEwOIQWoSf6hb8B', '2026-09-12 09:12:16', '2026-09-14 01:55:40'),
(170, 'WSD-20260912-PUZO', 'Ahyati Nufus', 'P27902123003', NULL, 2, 'D3 Kebidanan', 2026, 'ahyatinufus12@gmail.com', '081323894511', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/170/74be83d9-4662-4675-afe1-3306d5693aec.jpg', 'Screenshot_20260912_173648_SeaBank.jpg', 'image/jpeg', 267027, '2026-09-12 10:37:03', '2026-09-14 01:38:38', 9, NULL, NULL, NULL, NULL, '22UZwLKYm69pEC1Je6R7kdj1ZUVVCzFvBWoVgu00', '2026-09-12 09:59:22', '2026-09-14 01:38:40'),
(171, 'WSD-20260912-J2O0', 'Euis Octaviani Wijaya', 'P27903123061', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'euisoctavianiwijya@gmail.com', '08990027943', 'Perempuan', 'All Size', 'Ukuran S', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/171/6fe9f211-84f9-4ab7-b080-f8d18ff89efe.jpg', 'Screenshot_20260912_171814_Superbank.jpg', 'image/jpeg', 346581, '2026-09-12 10:18:47', '2026-09-14 02:04:28', 9, NULL, NULL, NULL, NULL, 'JKR7xS05fWp6Hlx9rbjciwyLkgkVHZ9wi0fJFjH3', '2026-09-12 10:17:20', '2026-09-14 02:04:31'),
(172, 'WSD-20260912-AC91', 'BINTANG SALSABILA CAHYANINGRAT', 'P27901123006', NULL, 1, 'D3 Keperawatan', 2026, 'denynggie@gmail.com', '083875425476', 'Perempuan', 'All Size', 'Size M', 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/172/256e6a71-0e2f-48d8-b421-30d4073e158f.jpg', 'IMG-20260912-WA0065.jpg', 'image/jpeg', 71366, '2026-09-12 10:34:32', NULL, NULL, NULL, NULL, NULL, NULL, 'abfNYfZpk1MH1Wce4iFHrflBTUNzYgywk3TlRMSM', '2026-09-12 10:31:38', '2026-09-12 10:34:32'),
(173, 'WSD-20260912-HMNU', 'Elsa Auliana', 'P27903123159', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'elsaauliana52@gmail.com', '085219612973', 'Perempuan', 'All Size', 'ukuran S/M', 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/173/7aa6815c-fd06-491e-b119-43c229372086.jpg', 'IMG-20260913-WA0008.jpg', 'image/jpeg', 85244, '2026-09-13 03:54:20', NULL, NULL, NULL, NULL, NULL, NULL, '2QaRx6rk4rV0DQDpagzqfbCCqjNT0kN1qXI4QX46', '2026-09-12 11:12:14', '2026-09-13 03:54:20'),
(174, 'WSD-20260912-PDU9', 'Zalfa July Ariqah', 'P27902123164', NULL, 1, 'D3 Keperawatan', 2026, 'zalfaariqah13@gmail.com', '085718626348', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/174/28ae58a8-d204-4813-89a3-1cbef4803cee.jpg', 'Screenshot_20260912-184003.jpg', 'image/jpeg', 290777, '2026-09-12 11:40:31', '2026-09-14 03:16:18', 9, NULL, NULL, NULL, NULL, 'Sms1xZiv84DuA3X2h0QGXmsdGJcLegqwRfVobeNY', '2026-09-12 11:31:35', '2026-09-14 03:16:21'),
(175, 'WSD-20260912-OV0R', 'Dhini Febriyanti', 'P27903123011', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'dhinifebriyanti2@gmail.com', '089619297130', 'Perempuan', 'All Size', '-', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/175/9fb89189-1fd1-4f91-bdfe-b076e7eb3b81.jpg', 'IMG-20260912-WA0189.jpg', 'image/jpeg', 102282, '2026-09-12 12:22:41', '2026-09-14 01:39:30', 9, NULL, NULL, NULL, NULL, 'uOtCkqVyNIoQcGusj7qNcKdeeufO11pjjjXvYEc7', '2026-09-12 12:20:28', '2026-09-14 01:39:32'),
(176, 'WSD-20260912-H7BD', 'Yazna Khalisha', 'P27903123048', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'yazna2811@gmail.com', '083153963176', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/176/99ebabe9-32fa-4d8b-928e-be649835240e.jpeg', 'IMG_6286.jpeg', 'image/jpeg', 169425, '2026-09-12 12:38:24', '2026-09-14 01:40:17', 9, NULL, NULL, NULL, NULL, 'SUmRCWT4NbMy8P2JQHy6yGdFXQ3eLCESWSGI23b1', '2026-09-12 12:37:37', '2026-09-14 01:40:20'),
(177, 'WSD-20260912-MRHC', 'Ikhsan Maulana', 'P27901123071', NULL, 1, 'D3 Keperawatan', 2026, 'ikhsanmaulanaa1@gmail.com', '083895305025', 'Laki-laki', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/177/858db6a4-2e60-41b9-8fbc-9627db143679.jpg', 'IMG-20260913-WA0004.jpg', 'image/jpeg', 114889, '2026-09-13 02:41:15', NULL, NULL, NULL, NULL, NULL, NULL, 'Urm0fbXpWu109daXrik9O6EtrOvlCXun7qWGC6nm', '2026-09-12 12:52:48', '2026-09-13 02:41:15'),
(178, 'WSD-20260912-6ZRL', 'Najwa Muflihah', 'P27903123128', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'najwamuflihah04@gmail.com', '+62 855 8160 215', 'Perempuan', 'All Size', '-', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/178/887713cc-a0c6-4a50-a3d6-acd2ba4a4f98.jpg', 'Screenshot_20260912_201149.jpg', 'image/jpeg', 257284, '2026-09-12 13:12:42', '2026-09-14 01:43:50', 9, NULL, NULL, NULL, NULL, 'PhbQTUpBAIhUqXlGgBx6u0PtbcexrdYaHEA2J1wh', '2026-09-12 13:09:20', '2026-09-14 01:43:53'),
(179, 'WSD-20260912-A7NJ', 'Meri Maherani', 'P27901123078', NULL, 1, 'D3 Keperawatan', 2026, 'maheranii.ajja@gmail.com', '0895405435295', 'Perempuan', 'All Size', '-', 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/179/ca73c458-dec5-436e-a2dd-9926ecb1b467.png', 'IMG_4228.png', 'image/png', 116620, '2026-09-12 13:22:25', NULL, NULL, NULL, NULL, NULL, NULL, 'Say6CQ4QUdhdnW4uxyiscUXg4fkOWDdzEYIdK8AK', '2026-09-12 13:21:58', '2026-09-12 13:22:25'),
(180, 'WSD-20260912-WGMB', 'Mira Kusniawati', 'P27903123026', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'mirakusniawati15@gmail.com', '0895335224534', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/180/c9c90e89-9c89-4a86-b44e-c8d52b8f837e.jpg', 'Transaksi_BCAmobile-20260912-205426.jpg', 'image/jpeg', 446410, '2026-09-12 13:55:17', '2026-09-14 01:41:15', 9, NULL, NULL, NULL, NULL, 'YrwOpY26jJ4z7rET8x3fBbwm2KH5w5ycbQnj3pm6', '2026-09-12 13:48:27', '2026-09-14 01:41:18'),
(181, 'WSD-20260912-L2RJ', 'Nurul Azkiya', 'P27903123131', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'nrlazkiya6@gmail.com', '085697727203', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/181/993aeea7-94d5-426b-8c4e-5deb7df8116a.jpg', 'Screenshot_20260912_211218_SeaBank.jpg', 'image/jpeg', 172576, '2026-09-12 14:17:16', '2026-09-14 03:17:46', 9, NULL, NULL, NULL, NULL, 'wCfJPS4uz9Xbz7kBNkqAYqJraMy2fg1e2JdoWnoN', '2026-09-12 14:13:09', '2026-09-14 03:17:50'),
(182, 'WSD-20260912-RGQ0', 'Shifa Nadia Ulfa', 'P27902123070', NULL, 2, 'D3 Kebidanan', 2026, 'shifanadiaulfa74@gmail.com', '085882746044', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HaGzi0Dz2phOuI9O3EzAoPk9uBGvzyCSXnP9Z2SN', '2026-09-12 17:08:14', '2026-09-12 17:08:14'),
(183, 'WSD-20260912-MJCZ', 'Alfa Rizsiana Nurdin', 'P27903123003', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'alfarizsiana12@gmail.com', '082260111132', 'Laki-laki', 'All Size', 'sukses selalu', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/183/0cf0f215-242c-48d9-b2ee-1faf65380dae.png', 'IMG_4495.png', 'image/png', 202201, '2026-09-12 20:07:04', '2026-09-14 03:18:08', 9, NULL, NULL, NULL, NULL, 'IkZ3u5R4chi0NjnjeVFQQ7XyW8n1X6Tx271bScZk', '2026-09-12 20:01:52', '2026-09-14 03:18:11'),
(184, 'WSD-20260912-BMAC', 'ERLIANA SARI', 'P27902123052', NULL, 2, 'D3 Kebidanan', 2026, 'eerliww1894@gmail.com', '083188558610', 'Perempuan', 'All Size', 'Apa bisa toga nya datang di tanggal 25 dan ukuran nya di ubah jadi ukuran S, terus ambil toga nya dimana bapak/ibu', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/184/fc8293a3-b293-4841-8589-e4daf4f4b15b.jpg', 'Screenshot_2026-09-13-06-52-29-539_id.co.bankbkemobile.digitalbank.jpg', 'image/jpeg', 141673, '2026-09-12 23:54:20', '2026-09-14 03:18:30', 9, NULL, NULL, NULL, NULL, 'BwydVsdz7PCLk9nfi9Ql71sPHQWN7vy6eb1oMKrF', '2026-09-12 23:51:15', '2026-09-14 03:18:34'),
(185, 'WSD-20260913-SFJE', 'Muhamad Leon', 'P27903123074', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'muhamadleon029@gmail.com', '085781051802', 'Laki-laki', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/185/8a056f8b-cc93-4701-82a5-7b246863b320.jpg', 'Screenshot_2026-09-13-07-07-27-66_121d0782f1cd8474b48c9b27865007fd.jpg', 'image/jpeg', 144708, '2026-09-13 00:08:09', '2026-09-14 03:19:08', 9, NULL, NULL, NULL, NULL, 'WqA5OzY0sqUA3ZvlX05iFaBHFHqEIHNRSogCk1h5', '2026-09-13 00:05:38', '2026-09-14 03:19:11'),
(186, 'WSD-20260913-7UOV', 'Nabila', 'P27902123026', NULL, 2, 'D3 Kebidanan', 2026, 'nabiladoang245@gmail.com', '083129037986', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/186/41fac664-493b-4504-be08-a352a6c765a0.jpeg', 'B001EBD2-4BC9-48E7-B4A0-A11CBC4265AD.jpeg', 'image/jpeg', 268037, '2026-09-13 00:24:33', '2026-09-14 03:20:19', 9, NULL, NULL, NULL, NULL, 'aYtA4mEXVmG943DAoiZSraSYxzmM0SqVurPlhBqy', '2026-09-13 00:23:29', '2026-09-14 03:20:23'),
(187, 'WSD-20260913-MSPS', 'Lintang Mutiara Az Zahra', 'P27902123146', NULL, 2, 'D3 Kebidanan', 2026, 'lintangmutiara000@gmail.com', '085935086588', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/187/258e90ba-e629-4565-a938-f7e683211b24.jpg', 'Screenshot_2026-09-13-07-30-17-04_f339d16c976c0b263d991820e972fb72.jpg', 'image/jpeg', 291857, '2026-09-13 00:30:49', '2026-09-14 03:21:06', 9, NULL, NULL, NULL, NULL, 'fL3uC3maEHxQMai02D74YzkPvuCb2MnFGmhj3AmJ', '2026-09-13 00:24:23', '2026-09-14 03:21:09'),
(188, 'WSD-20260913-DCGA', 'Nopi Ashari', 'P27902123148', NULL, 2, 'D3 Kebidanan', 2026, 'asharinovi03@gmail.com', '083173542094', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/188/fbe648d0-4ab2-4ac2-b292-9d2bea719c6e.png', 'IMG_7307.png', 'image/png', 134684, '2026-09-13 00:28:42', NULL, NULL, NULL, NULL, NULL, NULL, 'Ud1LqiK2DQAD8tse0GISpUDTOlMOtY0KEiSaURT6', '2026-09-13 00:26:26', '2026-09-13 00:28:42'),
(189, 'WSD-20260913-DK7U', 'Magfiroh', 'P27903123024', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'fmaghfiroh214@gmail.com', '083877713241', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/189/9c0874b0-4e3a-4a28-8a29-f184f0a66bdc.jpg', 'Screenshot_20260913_074412.jpg', 'image/jpeg', 319706, '2026-09-13 00:45:46', NULL, NULL, NULL, NULL, NULL, NULL, 'UoYHxsE8iPUl3cZlLoQnWcrwg1CWaTRbdygtzkx4', '2026-09-13 00:40:24', '2026-09-13 00:45:46'),
(190, 'WSD-20260913-TBSF', 'Ifaisyah Rahmania', 'P27903123213', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'ifaisyah61@gmail.com', '081318274469', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/190/94b21c4b-ed47-4daf-96a5-abbbdcc7af2b.jpg', 'Transaksi_BCAmobile-20260913-082227.jpg', 'image/jpeg', 548329, '2026-09-13 01:23:23', '2026-09-14 03:22:04', 9, NULL, NULL, NULL, NULL, 'H8AAro8RPAavFOqOH8w8P0zAJYcP3ueap25wAAsi', '2026-09-13 01:20:05', '2026-09-14 03:22:07'),
(191, 'WSD-20260913-DZYD', 'Siti Alfiatun Nisa', 'P27903123042', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'alfiaanissa25@gmail.com', '088809682055', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fKM9SGjKr02Ex6Wkz2PzTyNmSpLt6YGgVrLMaYLM', '2026-09-13 01:33:55', '2026-09-13 01:33:55'),
(192, 'WSD-20260913-SN8T', 'Alda legi Pratama', 'P27902123005', NULL, 2, 'D3 Kebidanan', 2026, 'aldalegipratama17@gmail.com', '087892841882', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/192/99601b08-45bb-4ea0-bb9f-2706b343504f.jpg', 'Screenshot_2026-09-13-08-44-54-46.jpg', 'image/jpeg', 183688, '2026-09-13 01:45:40', '2026-09-14 03:22:32', 9, NULL, NULL, NULL, NULL, 'AyxCLWMYXUOkLfnmX7OISwkS31CSzju2kkmoudW6', '2026-09-13 01:42:25', '2026-09-14 03:22:36'),
(193, 'WSD-20260913-PQH1', 'Alya Septiani Suhardja', 'P27903123005', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'suhardjaalyaseptiani@gmail.com', '081316055330', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/193/72b2f218-718f-4fe2-b28a-3814bbb1ed75.jpeg', '85a8d0ad-bc43-42a0-a5b1-c096ac4e3277.jpeg', 'image/jpeg', 57966, '2026-09-13 01:47:06', '2026-09-14 03:23:03', 9, NULL, NULL, NULL, NULL, 'Ue0KjmzhSB5N3njFZOT821fnE8cXaZnHW7yk8Bih', '2026-09-13 01:44:32', '2026-09-14 03:23:05'),
(194, 'WSD-20260913-Y037', 'Maysin Nunnajah', 'P27903123073', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'maysinnunnajah@gmail.com', '083812794614', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/194/d9591b03-0178-4035-91cc-b27e88c02874.jpg', 'IMG-20260913-WA0015.jpg', 'image/jpeg', 70926, '2026-09-13 02:00:19', '2026-09-14 04:46:38', 9, NULL, NULL, NULL, NULL, 'v7QrlxGjKoBqahuJkIVi4HHuZO9BbT0KnxnXZPV2', '2026-09-13 01:45:23', '2026-09-14 04:46:43'),
(195, 'WSD-20260913-BEBX', 'Futihatul Aini', 'P27903123113', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'futihatulaini262@gmail.com', '081315445097', 'Perempuan', 'All Size', '.', 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/195/7f917518-c33c-4adf-8450-03fe8bf43408.jpg', '17892649975176355638738794472889.jpg', 'image/jpeg', 2638244, '2026-09-13 02:03:28', NULL, NULL, NULL, NULL, NULL, NULL, 'tK9E0LgHSK5mgWOu8TArxQluNaOL7lrCDTtqGSpP', '2026-09-13 01:57:17', '2026-09-13 02:03:28'),
(196, 'WSD-20260913-4ROX', 'Suci Khairunisa', 'P27903123044', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'sucikhairunisa20@gmail.com', '0895397203444', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/196/ee04d0a1-1723-4394-a7ac-34a8d5d2c47b.jpg', 'Transaksi_BCAmobile-20260913-090510.jpg', 'image/jpeg', 420170, '2026-09-13 02:06:44', '2026-09-14 03:04:10', 9, NULL, NULL, NULL, NULL, 'KpkgEwRiJs1IPRYA3jyIxJtQClkJ87kYkt3TspXf', '2026-09-13 02:05:55', '2026-09-14 03:04:13'),
(197, 'WSD-20260913-QFS7', 'Anggun Diva Maghfirah', 'P27903123200', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'anggundivdiv26@gmail.com', '081946232673', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'z7CM1IgPWD3b7dcO6dX73LN8g9LXf5LgUBfacLSF', '2026-09-13 02:06:04', '2026-09-13 02:06:04'),
(198, 'WSD-20260913-5IR3', 'FADILAH RIYANTI', 'P27902123013', NULL, 2, 'D3 Kebidanan', 2026, 'riyantifadilah5@gmail.com', '083871293578', 'Perempuan', 'All Size', 'Data saya: \r\n• Tinggi badan: 151 cm, \r\n• Berat badan:40 kg. \r\nMohon untuk toga disesuaikan ukurannya agar tidak terlalu kebesaran, terimakasih pak/bu🙏🏻', 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/198/bb901893-dc3e-48af-acf3-2af125ed5055.jpg', 'IMG-20260913-WA0010.jpg', 'image/jpeg', 78619, '2026-09-13 02:15:31', NULL, NULL, NULL, NULL, NULL, NULL, 'qZhrkuoGY7Hy5fQ8hiD2YEsg17oKdb5w1moPXEEY', '2026-09-13 02:06:32', '2026-09-13 02:15:31'),
(199, 'WSD-20260913-WB7K', 'Bagus Wicaksono', 'P27903123202', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'baguswicaksono759@gmail.com', '081290690974', 'Laki-laki', 'All Size', 'untuk ukuran all size. apakah bisa saya pake ukuran XL', 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/199/1fb6151a-9623-47d2-86d1-c92ec3c3f28d.jpeg', 'Bukti transfer Toga Wisuda_Bagus Wicaksono_D3 TLM.jpeg', 'image/jpeg', 105760, '2026-09-13 03:59:47', NULL, NULL, NULL, NULL, NULL, NULL, '3qeqxuBXqs1fhxoIZnMotUeuN9eHbZysvDHFVdkK', '2026-09-13 02:07:53', '2026-09-13 03:59:47'),
(200, 'WSD-20260913-LMZL', 'Shelyn Safitriyani', 'P27903123233', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2025, 'shelynsafitriyani@gmail.com', '088293603997', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5EmYHGfPVEBCNesUuy9Hqm7GcuHS1bQJA8TzkA1d', '2026-09-13 02:08:24', '2026-09-13 02:08:24'),
(201, 'WSD-20260913-NUVF', 'Muhammad Faza Al-Fadhil', 'P27903123125', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'fazafadhil86@gmail.com', '085863167362', 'Laki-laki', 'All Size', 'Muhammad Faza Al-Fadhil Jurusan TLM jenis kelamin : laki-laki, memesan toga untuk wisuda tanggal 30 september jika ada ukuran toga mau yg ukuran M', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/201/6944303a-5795-482c-8656-32f25ab116fa.png', 'IMG_7415.png', 'image/png', 369773, '2026-09-13 02:12:36', '2026-09-14 03:37:53', 9, NULL, NULL, NULL, NULL, 'R249vKvdWdlTYbNUKSU24EvxdQUlyC6OKzsBWO9S', '2026-09-13 02:08:31', '2026-09-14 03:37:56'),
(202, 'WSD-20260913-J6ES', 'Saidita Abna As-Sayuti', 'P27903123040', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'asaiditaabna@gmail.com', '081390146681', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/202/f1c88eb3-34d7-46b7-8cd0-5f3eaacf0ecf.png', 'IMG_4997.png', 'image/png', 392924, '2026-09-13 02:11:55', '2026-09-14 03:37:25', 9, NULL, NULL, NULL, NULL, 'vptpVnr5SYgF50otZj2h5kMY6ogH3OkDKsTvEvz6', '2026-09-13 02:11:32', '2026-09-14 03:37:29'),
(203, 'WSD-20260913-9S1I', 'Farahdiba Syaharani', 'P27903123111', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'farahdibasyaharani2@gmail.com', '085692116900', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/203/5591697d-3d6f-4b05-b8f2-b6615a581209.jpg', 'IMG-20260913-WA0012.jpg', 'image/jpeg', 61840, '2026-09-13 02:17:30', '2026-09-14 03:39:49', 9, NULL, NULL, NULL, NULL, 'Bu7oA5AIVFCTKcbjm8b3GJQ24aqE6KRciWBU4dVN', '2026-09-13 02:14:36', '2026-09-14 03:39:52'),
(204, 'WSD-20260913-QBFL', 'Siti Masitoh', 'P27903123081', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'sitoooh22@gmail.com', '088224733870', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/204/0ad7d3b2-fb91-4b98-bb8f-d62bb91053d3.jpg', 'Screenshot_20260913_091457_SeaBank.jpg', 'image/jpeg', 260965, '2026-09-13 02:15:29', '2026-09-14 03:38:51', 9, NULL, NULL, NULL, NULL, 'WZZ1WfMvunpZnJDheCUHJLhOOayltunsvL1Oea8L', '2026-09-13 02:15:05', '2026-09-14 03:38:54'),
(205, 'WSD-20260913-XKKN', 'Intan Nur Annisa', 'P27903123167', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'intannur682@gmail.com', '085214095259', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/205/f740e13b-c8ae-445c-91ef-7ae4814cd22f.jpg', 'IMG-20260913-WA0005.jpg', 'image/jpeg', 144125, '2026-09-13 02:17:16', NULL, NULL, NULL, NULL, NULL, NULL, 'Q3PMZlYZ2nHQ4MVsWsjNKhV6k8AT3yRndqGeb1oQ', '2026-09-13 02:16:34', '2026-09-13 02:17:16'),
(206, 'WSD-20260913-30GP', 'Halwa Fadliya Muharom', 'P27903123018', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'halwafadliya@gmail.com', '085782276595', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/206/a882dc26-0d8e-4a68-a0dd-91e6c5d50926.png', 'IMG_6964.png', 'image/png', 205614, '2026-09-13 02:17:41', '2026-09-14 03:39:15', 9, NULL, NULL, NULL, NULL, '2wfbrEG0k7f44ycRfh1FLmmCu5FQZcXLUkPFgG1i', '2026-09-13 02:16:40', '2026-09-14 03:39:18');
INSERT INTO `graduation_toga_orders` (`id`, `order_code`, `student_name`, `nim`, `nik`, `study_program_id`, `study_program_name`, `graduation_year`, `email`, `phone`, `gender`, `toga_size`, `size_note`, `quantity`, `status`, `payment_status`, `payment_amount`, `payment_method`, `payment_proof_path`, `payment_proof_original_name`, `payment_proof_mime`, `payment_proof_size`, `payment_uploaded_at`, `payment_verified_at`, `payment_verified_by`, `payment_rejected_at`, `payment_rejected_by`, `admin_note`, `rejection_note`, `public_token`, `created_at`, `updated_at`) VALUES
(207, 'WSD-20260913-FMXF', 'Dina Meyliani', 'P27902123051', NULL, 2, 'D3 Kebidanan', 2026, 'dinameyliani371@gmail.com', '082258602292', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/207/3a7219e8-ee64-43ac-8250-d947eaf262d9.jpeg', 'e57ea81c-558f-442d-a609-21b36c72c649.jpeg', 'image/jpeg', 195510, '2026-09-13 02:18:18', NULL, NULL, NULL, NULL, NULL, NULL, 'Mq18JPM795LslTg4Az6F7DSxGj2FqJnNOPWTNt6H', '2026-09-13 02:17:34', '2026-09-13 02:18:18'),
(208, 'WSD-20260913-BC9Y', 'Meri Maherani', 'P27901123078', NULL, 1, 'D3 Keperawatan', 2026, 'maheranii.ajja@gmail.com', '0895405435295', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/208/5aacfdb5-10ba-4af6-b64a-57354cb47a6c.png', 'IMG_4228.png', 'image/png', 116620, '2026-09-13 02:18:11', NULL, NULL, NULL, NULL, NULL, NULL, 'BRz2soJ1LeGeF1zxVwTvEeUdy9ZYxBFZkKX7kHek', '2026-09-13 02:17:48', '2026-09-13 02:18:11'),
(209, 'WSD-20260913-ILPG', 'Risma Dwinarni', 'P27903123229', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'rismadwinarni21@gmail.com', '081412113868', 'Perempuan', 'All Size', 'Untuk all size maksimal bbnya berapa ya?', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/209/3b701dd5-74cd-4d1b-9122-064cb2c501e0.jpg', 'Screenshot_20260913_092213_BRImo.jpg', 'image/jpeg', 581121, '2026-09-13 02:24:22', '2026-09-14 01:44:52', 9, NULL, NULL, NULL, NULL, 'YJtEdNOGDiqCUffxiO5bSYYNJ9elX3hTKVWERiAV', '2026-09-13 02:22:31', '2026-09-14 01:44:54'),
(210, 'WSD-20260913-MQRE', 'Shelyn Safitriyani', 'P27903123233', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'shelynsafitriyani20@gmail.com', '088293603997', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/210/aaabbe45-e04d-419f-b41a-7a448cf61a31.jpeg', 'bukti pembayaran toga.jpeg', 'image/jpeg', 146895, '2026-09-13 02:23:47', '2026-09-14 03:38:18', 9, NULL, NULL, NULL, NULL, '0xAJuOdc1TZAev55V6JRiomhvBRRYk3fr1xVKo5z', '2026-09-13 02:23:15', '2026-09-14 03:38:20'),
(211, 'WSD-20260913-ZJ0X', 'BELLA DWI YULIANI', 'P27902123047', NULL, 2, 'D3 Kebidanan', 2026, 'dwyulianibella@gmail.com', '089517287953', 'Perempuan', 'All Size', 'semoga ukuran nya ga kebesaran juga ga kekecilan~', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/211/2f3278af-0c3f-413d-91d8-f7e54a186512.jpg', 'IMG-20260913-WA0004.jpg', 'image/jpeg', 43751, '2026-09-13 05:45:41', '2026-09-14 03:40:57', 9, NULL, NULL, NULL, NULL, 'o7i0iyzDTOvows3qpnKrNHLlgBQPzOye4vhWSkFk', '2026-09-13 02:24:31', '2026-09-14 03:41:00'),
(212, 'WSD-20260913-FJME', 'Dhea Soraya', 'P27903123204', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'dheoysr@gmail.com', '0882018798336', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/212/72575e41-c603-4886-8665-c4e1f78dc3ea.png', '80FBC573-FD02-4AA4-B483-38EF4FA2FE8B.png', 'image/png', 232607, '2026-09-13 02:30:01', '2026-09-14 01:45:30', 9, NULL, NULL, NULL, NULL, 'B5NQcAmMXXLzkG98mNX5mGDK5FkhqzphakinsDFz', '2026-09-13 02:26:56', '2026-09-14 01:45:33'),
(213, 'WSD-20260913-FLB2', 'Siti Alfi Ainurrahmah', 'P27903123234', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'alfiainurrahmah@gmail.com', '085810714738', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/213/1c8cc99a-a78d-4d69-9a32-5c0056d31ffc.png', 'IMG_2404.png', 'image/png', 349438, '2026-09-13 12:08:36', '2026-09-14 02:06:57', 9, NULL, NULL, NULL, NULL, 'j12r1Fx6xPWlJtawpfOkw8XqFbbL0RqN9LjzW2Ju', '2026-09-13 02:30:29', '2026-09-14 02:07:00'),
(214, 'WSD-20260913-O19L', 'Yusuf Bachtiar', 'P27903123147', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'yb7885522@gmail.com', '089639168069', 'Laki-laki', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/214/3d468170-9f5a-4250-bc21-4eceb15cd58e.jpg', 'Screenshot_20260913_093335_BRImo.jpg', 'image/jpeg', 541681, '2026-09-13 02:34:19', '2026-09-14 01:46:51', 9, NULL, NULL, NULL, NULL, 'AergUwfJVOY4n5HM3spWvvVcy3KDZnzoKKcPz2j7', '2026-09-13 02:31:47', '2026-09-14 01:46:54'),
(215, 'WSD-20260913-LQWS', 'Fathiah', 'P27903123161', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'fathi4hhh@gmail.com', '081289909073', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'x5es29OOmBqhjJ04dqAlOZJgIH0jMzhAC0qosaUJ', '2026-09-13 02:33:41', '2026-09-13 02:33:41'),
(216, 'WSD-20260913-EUD1', 'Angga Ramadan', 'P27903123152', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'ramadanangga417@gmail.com', '08812164380', 'Laki-laki', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'URl7tfTVwloqWlxirolwFHOFT1DyF8p4kh07FZ3M', '2026-09-13 02:37:30', '2026-09-13 02:37:30'),
(217, 'WSD-20260913-XAAY', 'Velisa Illona Rahmadhani', 'P27903123145', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'velisaillona05@gmail.com', '081388082601', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/217/d4dbf6a0-137e-419b-95c6-5af4816e1bf2.jpeg', 'Bukti Bayar Toga D3TLM_Velisa Illona Rahmadhani_P27903123145.jpeg', 'image/jpeg', 131853, '2026-09-13 03:00:35', NULL, NULL, NULL, NULL, NULL, NULL, 'F5vuny3hdg9DRTJkWnYVwOFiH8r6xExd4KQs5dIY', '2026-09-13 02:38:18', '2026-09-13 03:00:35'),
(218, 'WSD-20260913-HRP0', 'Angga Ramadan', 'P27903123152', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'ramadanangga417@gmail.com', '08812164380', 'Laki-laki', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3AxtLFCk3afrFMsZKTO2Jicgl58VlLuxSwBTWV0O', '2026-09-13 02:40:36', '2026-09-13 02:40:36'),
(219, 'WSD-20260913-U6TC', 'Imam Murijal', 'P27903123068', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'imammurijal2728@gmail.com', '085693225009', 'Laki-laki', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/219/b84a6c8e-1b67-4d14-8d37-b4c435e68d24.jpg', 'IMG-20260913-WA0050.jpg', 'image/jpeg', 123449, '2026-09-13 02:41:05', '2026-09-14 03:42:01', 9, NULL, NULL, NULL, NULL, 'Zae0t8PZUvkT9RHNmcMjx8EZYc8j0rr6kyej2FOv', '2026-09-13 02:40:40', '2026-09-14 03:42:04'),
(220, 'WSD-20260913-PSJW', 'Angga Ramadan', 'P27903123152', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'ramadanangga417@gmail.com', '08812164380', 'Laki-laki', 'All Size', 'Ukuran L (kalau memungkinkan)', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/220/3b919102-ac01-4cd1-9448-a3232a0f60bb.jpg', 'Screenshot_20260914-094254.jpg', 'image/jpeg', 516708, '2026-09-14 02:43:22', '2026-09-14 06:24:27', 9, NULL, NULL, NULL, NULL, '1ElTu1AzIyFHjtIumidXlQyQirVOyv5N90jpxAy2', '2026-09-13 02:41:11', '2026-09-14 06:24:29'),
(221, 'WSD-20260913-V5EV', 'Aisyah Amaliah', 'P27903123148', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'aisyahais388@gmail.com', '089631390570', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/221/ca7c1615-6a8a-4c58-a323-188f9aa2206e.jpeg', 'c4b8dbbf-e114-4147-b2dd-3813466b6b28.jpeg', 'image/jpeg', 122876, '2026-09-13 03:24:03', NULL, NULL, NULL, NULL, NULL, NULL, 'vmZDN3362m6kYjRHMkPe94jUY4Z5jKhSjNc0Jb66', '2026-09-13 02:42:57', '2026-09-13 03:24:03'),
(222, 'WSD-20260913-VI7U', 'DINI KAMALIA', 'P27903123059', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'dinikamalia812@gmail.com', '089653921500', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'UX9BYSIPmbCqFLqZYlLNxC55lZKKN4KT5v2PLC7V', '2026-09-13 02:44:31', '2026-09-13 02:44:31'),
(223, 'WSD-20260913-MOYT', 'Yusuf Bachtiar', 'P27903123147', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'yb7885522@gmail.com', '089639168069', 'Laki-laki', 'All Size', 'Ukuran L', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/223/3693f61b-ab3e-4a87-9ddd-d90697896fc6.jpg', 'Screenshot_20260913_093335_BRImo.jpg', 'image/jpeg', 541681, '2026-09-13 02:46:15', '2026-09-14 03:41:35', 9, NULL, NULL, NULL, NULL, 'WS7U4j0uVOqqW3rGwvw7pfOqclOWpqIYWfAwTuMN', '2026-09-13 02:45:55', '2026-09-14 03:41:38'),
(224, 'WSD-20260913-1PJW', 'AJI DARMA KOMARA', 'P27903123100', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'ajidarmakomara@gmail.com', '085776894358', 'Laki-laki', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uZSP3lg74XE87woRkyBmxgDkkJLesO2Pzy5PQC74', '2026-09-13 02:46:41', '2026-09-13 02:46:41'),
(225, 'WSD-20260913-2EYG', 'AJI DARMA KOMARA', 'P27903123100', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'ajidarmakomara2c@gmail.com', '085776894358', 'Laki-laki', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/225/b43e3ef6-6ffc-4eb4-bd2d-d639ea34d3a0.png', 'IMG_2712.png', 'image/png', 164956, '2026-09-13 02:54:55', '2026-09-14 01:47:52', 9, NULL, NULL, NULL, NULL, 'zYNxtYWer8NmwQqjuzND2HRig0eIV4JVfgjOplyA', '2026-09-13 02:50:58', '2026-09-14 01:47:56'),
(226, 'WSD-20260913-CRKU', 'Muhammad Akhtar Athaya', 'P27903123219', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'athayachol765@gmail.com', '081385338801', 'Laki-laki', 'All Size', 'Ukuran L', 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/226/9f5bcb94-7846-4661-b7da-21d8786569c3.jpg', 'Muhammad Akhtar Athaya.jpg', 'image/jpeg', 81335, '2026-09-13 07:33:20', NULL, NULL, NULL, NULL, NULL, NULL, 'Iny4s5oAM1SpDVn6B86v1ZmTzMGqWkunkCjGfbZv', '2026-09-13 02:51:52', '2026-09-13 07:33:20'),
(227, 'WSD-20260913-TNR9', 'DINI KAMALIA', 'P27903123059', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'dinikamalia812@gmail.com', '089653921500', 'Perempuan', 'All Size', 'Kepala saya kecil, apakah muat dan sesuai kalau all size? terima kasih', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/227/81952231-b316-4937-bb3c-2b4961dcba11.jpg', 'Screenshot_2026-09-13-09-54-53-18.jpg', 'image/jpeg', 206186, '2026-09-13 02:55:45', '2026-09-14 03:43:00', 9, NULL, NULL, NULL, NULL, 'Qj7B4AAfdypoKlEHtyRWVlSuRkuDVpBRwlCzBHUs', '2026-09-13 02:51:58', '2026-09-14 03:43:03'),
(228, 'WSD-20260913-GNEJ', 'Imam Murijal', 'P27903123068', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'imammurijal2728@gmail.com', '085693225009', 'Laki-laki', 'All Size', 'Ukuran L (jika memungkinkan)', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/228/9645519c-ecfd-4fb6-b65c-9ec503bf1959.jpg', 'IMG-20260913-WA0050.jpg', 'image/jpeg', 123449, '2026-09-13 03:00:33', '2026-09-14 04:50:48', 9, NULL, NULL, NULL, NULL, 'tWEvZidaj1UmpxLCjN65SBXr9bd0QTT5x0dqao4z', '2026-09-13 03:00:17', '2026-09-14 04:50:51'),
(229, 'WSD-20260913-RWTS', 'Risma Sari Ramadani', 'P27903123184', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'rismasariramadani61@gmail.com', '085973264522', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'we6qL5rr1kW1liZF1lktISFlyxorJWDKb56pwlZJ', '2026-09-13 03:05:57', '2026-09-13 03:05:57'),
(230, 'WSD-20260913-6ADR', 'Jihan Tsabitul Azmi', 'P27903123168', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'tsabitulazmijihan931@gmail.com', '081299581462', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/230/0e293c49-2a83-4480-993d-7361021bb1cd.jpg', 'IMG_Sun Sep 13 10_22_30 GMT+07_00 2026.jpg', 'image/jpeg', 242838, '2026-09-13 03:23:22', '2026-09-14 03:43:56', 9, NULL, NULL, NULL, NULL, 'dWi4WXii0hha1ajNJyD1mTJS8dvkALnII850KbLw', '2026-09-13 03:20:30', '2026-09-14 03:43:59'),
(231, 'WSD-20260913-ZAFC', 'Rezky Pandu Suseno', 'P27903123084', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'rezkypandususeno@gmail.com', '087774031456', 'Laki-laki', 'All Size', 'XXL', 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'oX8zpaj8pjeCDFsLVD2W3yDvzr3hIMgHUaWPBZUo', '2026-09-13 03:23:58', '2026-09-13 03:23:58'),
(232, 'WSD-20260913-559H', 'Widya Putri Wulandari', 'P27903123241', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'wp957377@gmail.com', '085694292140', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/232/1bfeac10-2b45-4c1e-a93f-cf1f643798d8.jpg', 'Screenshot_2026-09-13-10-34-46-574_id.dana.jpg', 'image/jpeg', 563355, '2026-09-13 03:35:09', '2026-09-14 04:11:45', 9, NULL, NULL, NULL, NULL, 'qE8vqVsNizFBdtg4ncmvNN8BqE4fTTPbihuFI8Nc', '2026-09-13 03:31:16', '2026-09-14 04:11:47'),
(233, 'WSD-20260913-R4Q5', 'Siti Rohamah', 'P27903123142', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'sitirohamah3ctlm@gmail.con', '085718257663', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/233/1d13cb32-02eb-44eb-beae-703aa5610d2c.png', 'IMG_9301.png', 'image/png', 511542, '2026-09-13 03:38:57', '2026-09-14 01:50:47', 9, NULL, NULL, NULL, NULL, 'UyFtR9mNHAq4cAp2BD7e1BJ2o1G0t3wRGig0D183', '2026-09-13 03:38:17', '2026-09-14 01:50:50'),
(234, 'WSD-20260913-MQDZ', 'Siti Nurus Sya’adah', 'P27903123189', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'stnursydh@gmail.com', '085716773188', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/234/4f2a45f0-30d4-4cd5-8f5b-9619fb5861e1.jpeg', 'IMG_1111.jpeg', 'image/jpeg', 240891, '2026-09-13 03:49:58', '2026-09-14 01:51:40', 9, NULL, NULL, NULL, NULL, 'tq1ksigjTSxf4k9ZlPOb3XCwEnNcElP72UlDeBiX', '2026-09-13 03:47:24', '2026-09-14 01:51:43'),
(235, 'WSD-20260913-G0AG', 'Siti Khodijah', 'P27902123077', NULL, 2, 'D3 Kebidanan', 2026, 'sitikhodijah1336@gmail.com', '081213481710', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/235/c5b25373-bf68-42ec-ade1-07a0cac65a11.jpg', 'IMG-20260913-WA0003.jpg', 'image/jpeg', 77058, '2026-09-13 03:52:49', NULL, NULL, NULL, NULL, NULL, NULL, 'VXzVorK2lCvAoAqfBhjckP5ItaxF68s6ItVksMDF', '2026-09-13 03:51:18', '2026-09-13 03:52:49'),
(236, 'WSD-20260913-R15V', 'Siti Nurus Sya’adah', 'P27903123189', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'stnursydh@gmail.com', '085716773188', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/236/521b792e-2389-430b-820d-7e5a1ddf97ae.jpeg', 'IMG_1111.jpeg', 'image/jpeg', 240891, '2026-09-13 03:55:27', NULL, NULL, NULL, NULL, NULL, NULL, 'paJnI7rusWdP83fOV3vuefZBKdIL53U5EpEbzEq4', '2026-09-13 03:52:02', '2026-09-13 03:55:27'),
(237, 'WSD-20260913-SZBG', 'Rezky Pandu Suseno', 'P27903123084', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'rezkypandususeno@gmail.com', '087774031456', 'Laki-laki', 'All Size', 'XL', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/237/bc1f6adc-5d82-42be-b323-d4d78afe11a8.jpg', 'Screenshot_20260913-102625.jpg', 'image/jpeg', 400596, '2026-09-14 06:17:26', '2026-09-14 06:18:39', 9, NULL, NULL, NULL, NULL, 'SyUQBLb5u6KzrOCTZ9nOrJGaTUrD8P0h9AE5cC3m', '2026-09-13 03:54:17', '2026-09-14 06:18:41'),
(238, 'WSD-20260913-I6RQ', 'Anisa Rosit', 'P27902123084', NULL, 2, 'D3 Kebidanan', 2026, 'annsrsta09@gmail.com', '085711932769', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '02ZdTZkUSJFU1tB4bEhGSUWtvjsLDrYfjXNpttlA', '2026-09-13 03:56:43', '2026-09-13 03:56:43'),
(239, 'WSD-20260913-FBQ0', 'Anisa Rosita', 'P27902123084', NULL, 2, 'D3 Kebidanan', 2026, 'annsrsta09@gmail.com', '085711932769', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/239/56c3ac7f-efbe-4901-b713-3582cdedef69.png', 'IMG_4308.png', 'image/png', 284373, '2026-09-13 03:58:17', '2026-09-14 01:52:28', 9, NULL, NULL, NULL, NULL, 'MtxvVY4jQ9ZivjzZeFdD7Y4NFcXnNKHerDPGLdx1', '2026-09-13 03:57:02', '2026-09-14 01:52:30'),
(240, 'WSD-20260913-CDEY', 'Hernawati', 'P27902123138', NULL, 2, 'D3 Kebidanan', 2026, 'hernawati57381@gmail.com', '083845594142', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/240/a2cc8572-0c15-4cfa-b239-21bf34bc7ed1.jpeg', '48aee957-d426-4318-adb7-407207a966f0.jpeg', 'image/jpeg', 102220, '2026-09-13 04:10:23', '2026-09-14 04:13:55', 9, NULL, NULL, NULL, NULL, 'rnmT3JvnYXeCm9kBbp4W7sae0q5nhZM8dz4APmMF', '2026-09-13 04:08:35', '2026-09-14 04:13:58'),
(241, 'WSD-20260913-TVMV', 'AZRUL ROSYID KAMAL', 'P27903123155', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'azrulkamalrosyid@gmail.com', '083813958416', 'Laki-laki', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'h1dW643K8HVQVJOVirfCb1EBqMnrullnx3GkzE5N', '2026-09-13 04:10:56', '2026-09-13 04:10:56'),
(242, 'WSD-20260913-AZJC', 'NIKITA AULIA PUTRI', 'P27903123031', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'nikitaauliaputri882@gmail.com', '081295282340', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/242/fd5664e0-006d-4460-8a08-501dbfe7061b.jpg', '1789272924309.jpg', 'image/jpeg', 465005, '2026-09-13 04:15:48', '2026-09-14 01:53:14', 9, NULL, NULL, NULL, NULL, 'OAx1DFYSDOK4BTMN5rfhFW3j9msesFCvX2Yk9K5n', '2026-09-13 04:13:49', '2026-09-14 01:53:17'),
(243, 'WSD-20260913-LDLR', 'AZRUL ROSYID KAMAL', 'P27903123155', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'azrulkamalrosyid@gmail.com', '083813958416', 'Laki-laki', 'All Size', 'M', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/243/b0ff80eb-723f-4b24-a46b-5d84161123de.jpg', 'IMG-20260913-WA0174.jpg', 'image/jpeg', 66479, '2026-09-13 04:18:52', '2026-09-14 04:14:58', 9, NULL, NULL, NULL, NULL, 'dpAcviTjP7VUCsuxwvxLdqyWYloi0tzN14ZR7AIM', '2026-09-13 04:15:11', '2026-09-14 04:15:02'),
(244, 'WSD-20260913-ZWLD', 'Putry Oktaviany', 'P27903123226', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'putryokta14@gmail.com', '08567527175', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/244/8d6c3c35-8cbd-4fe6-af82-e21d98a45ef2.jpg', 'IMG-20260913-WA0006.jpg', 'image/jpeg', 71965, '2026-09-13 04:16:12', '2026-09-14 04:14:17', 9, NULL, NULL, NULL, NULL, 'GtVsB4eTvRnBPwq7jJ8hUFX23U195Q9natJQ7CS9', '2026-09-13 04:15:39', '2026-09-14 04:14:21'),
(245, 'WSD-20260913-YMRO', 'Wahyu Fadillah Kurniawan', 'P27903123194', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'wahyufadillah12345@gmail.com', '082112944929', 'Laki-laki', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'e0Jqb7puTR3hzkfOiEVbtpD6T19mRUwiho5i5V6W', '2026-09-13 04:17:23', '2026-09-13 04:17:23'),
(246, 'WSD-20260913-XXWK', 'Wahyu Fadillah Kurniawan', 'P27903123194', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'wahyufadillah12345@gmail.com', '082112944929', 'Laki-laki', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ywPqXweRH1ewUl8ELsW7vV9SBHgnP3Sfms3SnTc6', '2026-09-13 04:23:05', '2026-09-13 04:23:05'),
(247, 'WSD-20260913-RFAP', 'Wahyu Fadillah Kurniawan', 'P27903123194', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'wahyufadillah12345@gmail.com', '082112944929', 'Laki-laki', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/247/b688d613-87b2-402c-bd51-57e762a081ee.jpeg', '66dac366-a0f2-4c29-9be1-eb908b04b54e.jpeg', 'image/jpeg', 128049, '2026-09-13 04:25:56', '2026-09-14 04:15:29', 9, NULL, NULL, NULL, NULL, 'h4qBreNq3juROTKLt8YVafVSdVZUZ8NAtntxZrni', '2026-09-13 04:24:42', '2026-09-14 04:15:33'),
(248, 'WSD-20260913-LVGA', 'Wahyu Fadillah Kurniawan', 'P27903123194', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'wahyufadillah12345@gmail.com', '082112944929', 'Laki-laki', 'All Size', 'Ukuran M', 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/248/b7dcc755-9330-4cc4-9bc9-1295aef0bf88.jpeg', '66dac366-a0f2-4c29-9be1-eb908b04b54e.jpeg', 'image/jpeg', 128049, '2026-09-14 04:20:34', NULL, NULL, NULL, NULL, NULL, NULL, 'Jk9qRPJNHeirZZFIelmM9lsjr1TqD7mZopExWTts', '2026-09-13 04:52:47', '2026-09-14 04:20:34'),
(249, 'WSD-20260913-DTNF', 'Muhamad Reza Fadli', 'P27903123220', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'muhamadrezafadli06@gmail.com', '087773251256', 'Laki-laki', 'All Size', 'tinggi 168\r\nBB 67', 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'huneQx4Q7dHisvYFLvG4HwQFboQZPsURvVkTvgG0', '2026-09-13 05:00:07', '2026-09-13 05:00:07'),
(250, 'WSD-20260913-Y9AA', 'Wafiq Alya Afifah', 'P27903123146', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'alyawafiq29@gmail.com', '085773752733', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JOwoo1hRdWRSh8weXrvRtcs1utUbYPaxQihNZW9c', '2026-09-13 05:00:24', '2026-09-13 05:00:24'),
(251, 'WSD-20260913-K6UA', 'Wafiq Alya Afifah', 'P27903123146', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'alyawafiq29@gmail.com', '085773752733', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/251/0b16253e-4bfa-4d02-b1e6-f7061ce414ce.png', 'reSabeipt_58672_03_23_00_12_02.png', 'image/png', 278602, '2026-09-14 01:29:28', '2026-09-14 02:01:16', 9, NULL, NULL, NULL, NULL, 'dZFniHQ5ToCRqWIkF80QQUIIM4xqhaC6hsclQpUG', '2026-09-13 05:00:41', '2026-09-14 02:01:19'),
(252, 'WSD-20260913-C6UZ', 'Muhamad Reza Fadli', 'P27903123220', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'muhamadrezafadli06@gmail.com', '087773251256', 'Laki-laki', 'All Size', 'Tinggi badan 168\r\nBerat badan 57', 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/252/990ee966-53d9-40f7-b360-c876f4fae929.jpg', 'Screenshot_2026-09-13-20-01-50-10.jpg', 'image/jpeg', 175364, '2026-09-13 13:02:13', NULL, NULL, NULL, NULL, NULL, NULL, 'XwjGmSnLOzgyEw60U1JvR57vJrFKV8YKEOWUPrap', '2026-09-13 05:02:21', '2026-09-13 13:02:13'),
(253, 'WSD-20260913-NMNJ', 'Nadif Marwan Jafr', 'P27903123127', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'nadifmarwan21@gmail.com', '085773909098', 'Laki-laki', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/253/26e53245-4d1a-4d53-abdf-26bfb9da777c.jpeg', '10096810-8520-43c1-b739-16587b16adb8.jpeg', 'image/jpeg', 123826, '2026-09-13 05:38:10', '2026-09-14 03:54:26', 9, NULL, NULL, NULL, NULL, '7X26pXkxvxxwDqZskRza1UgjexZAOyV2cKmkGIyA', '2026-09-13 05:27:48', '2026-09-14 03:54:29'),
(254, 'WSD-20260913-KMYL', 'PUTRI MAYASARI', 'P27903123182', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'putrimayasari166@gmail.com', '085892596781', 'Perempuan', 'All Size', 'Kalo bisa toga saya jangan gede2 yah soalnya saya tb 150 bb 52 huhuu', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/254/c74d2b34-304a-495f-a126-73afeecfd762.png', 'IMG_4192.png', 'image/png', 215504, '2026-09-13 05:31:33', '2026-09-14 01:53:45', 9, NULL, NULL, NULL, NULL, 'NMut32ASqCmKaTVwSNeiBk7VU0lvFbsAbP8WIEnJ', '2026-09-13 05:29:25', '2026-09-14 01:53:48'),
(255, 'WSD-20260913-NJRL', 'Deliani Elyanti Irawan', 'P27903123107', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'delianiellyanti@gmail.com', '081524638779', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7KiQcc48kDQ6CW09QlizFbTSnpogNlaeiL97Y3RM', '2026-09-13 05:41:04', '2026-09-13 05:41:04'),
(256, 'WSD-20260913-KTDX', 'SITI MURTAFIAH', 'P27902123113', NULL, 2, 'D3 Kebidanan', 2026, 'fifimurtafiah369@gmail.com', '085161092004', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/256/bbf73391-a121-42c5-992f-be6510c87aff.png', 'Screenshot_20260913-131056.png', 'image/png', 150289, '2026-09-13 06:12:43', '2026-09-14 04:17:15', 9, NULL, NULL, NULL, NULL, 'rUuNrLisrtU3oBmN2Ot0moZNgrTU25TJA4NSxtmB', '2026-09-13 05:42:43', '2026-09-14 04:17:18'),
(257, 'WSD-20260913-J5RX', 'Hera Fahma Lestari', 'P27903123115', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'herafahmalestari@gmail.com', '083134274450', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/257/d020aced-0645-4250-bb15-7cf0cd63d289.jpg', 'Screenshot_2026-09-13-12-46-49-19_121d0782f1cd8474b48c9b27865007fd.jpg', 'image/jpeg', 158666, '2026-09-13 05:47:21', '2026-09-14 04:16:38', 9, NULL, NULL, NULL, NULL, 'oA4HqKe9BxjsBx9idsUAjrMji8jQHbsau5yRQ9UJ', '2026-09-13 05:45:07', '2026-09-14 04:16:41'),
(258, 'WSD-20260913-I3LC', 'ANGGIE RIVA PERTIWI', 'P27903123104', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'anggieriva18@gmail.com', '0895707004848', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/258/78735d3c-b999-4924-b8a2-f2de5d0c0e24.jpg', 'Screenshot_20260913_124833_SeaBank.jpg', 'image/jpeg', 270805, '2026-09-13 05:49:03', '2026-09-14 01:55:14', 9, NULL, NULL, NULL, NULL, '0nU5iRRJ7DTY2XpjswaLXDtirIXNWXYnEJxCRKOz', '2026-09-13 05:48:39', '2026-09-14 01:55:17'),
(259, 'WSD-20260913-GAES', 'Nazwa Faradita', 'P27903123030', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'nazwafaradita1603@gmail.com', '0895610439580', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/259/164135c1-1b0d-4094-9161-5584a81eb837.jpeg', 'BUKTI PEMBAYARAN TOGA WISUDA NAZWA FARADITA.jpeg', 'image/jpeg', 81056, '2026-09-13 06:01:14', '2026-09-14 01:56:02', 9, NULL, NULL, NULL, NULL, 'HSueKiqbSyEMbYJXchV6WkiyzWBHNTOueDAlWyJc', '2026-09-13 05:59:22', '2026-09-14 01:56:05'),
(260, 'WSD-20260913-BHSY', 'Tania Putri Khalisoh', 'P27903123046', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'taniaputrik12@gmail.com', '081294917459', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/260/54230159-4aa2-4b44-8cbc-bd4cbd4001ce.jpg', 'Transaksi_BCAmobile-20260913-130248.jpg', 'image/jpeg', 244501, '2026-09-13 06:03:38', '2026-09-14 01:56:27', 9, NULL, NULL, NULL, NULL, 'In565CA8He20PIYmcv6VEsThjAsRMtoD8xQoHWJr', '2026-09-13 05:59:42', '2026-09-14 01:56:29'),
(261, 'WSD-20260913-EDMZ', 'Salsa Ardelia Zulfianti', 'P27903123087', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'zsalsaardelia@gmail.com', '085717691874', 'Perempuan', 'All Size', 'Size M', 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/261/632bf679-8b94-475d-b12b-f3889b60adee.jpg', 'IMG-20260913-WA0020.jpg', 'image/jpeg', 77435, '2026-09-13 06:05:22', NULL, NULL, NULL, NULL, NULL, NULL, 'Zrk2xxJuoUe93tb2C183s8SPDi3ij7IVrXkScJHn', '2026-09-13 06:01:57', '2026-09-13 06:05:22'),
(262, 'WSD-20260913-62O1', 'OLIVIA MELFIRA SANDRA', 'P27903123225', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'oliviamelfirasandra@gmail.com', '085779187084', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'oIb0H1zsly7gB9SCNLMU1FyjFdKACSYuL27CuhOI', '2026-09-13 06:24:01', '2026-09-13 06:24:01'),
(263, 'WSD-20260913-QV1W', 'Afifah Nur Kholida', 'P27903123050', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'fifahbarun@gmail.com', '085880861408', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/263/b0aecb99-ddfc-44d9-851a-7fbfa1b95b8b.png', 'reSabeipt_58672_11_30_21_18_32.png', 'image/png', 271838, '2026-09-14 07:34:02', NULL, NULL, NULL, NULL, NULL, NULL, '6zg5kxDTdd81UVfBtk3ROtWQMgfT5hm17CnOzb6o', '2026-09-13 06:49:18', '2026-09-14 07:34:02'),
(264, 'WSD-20260913-DMKS', 'Tegar Pribadi Gumilar', 'P27903123192', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'pribaditegar186@gmail.com', '082111839042', 'Laki-laki', 'All Size', 'Tinggi badan 168\r\nBerat badan 78', 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'E3otNQJTsZpUpTAb1alzyddpogHUpdPED1lSFn7m', '2026-09-13 06:51:31', '2026-09-13 06:51:31'),
(265, 'WSD-20260913-FMQK', 'Tegar Pribadi Gumilar', 'P27903123192', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'pribaditegar186@gmail.com', '082111839042', 'Laki-laki', 'All Size', 'Tb 168\r\nBb 75', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/265/e1c12e9b-ab9b-4a7d-9988-aa7b7a612abd.jpg', 'Screenshot_20260913_135710_myBCA.jpg', 'image/jpeg', 456290, '2026-09-13 07:02:38', '2026-09-14 04:18:21', 9, NULL, NULL, NULL, NULL, 'VvJxM8CEB1oMD7mNLAyIfLSxPF9jFwWlTXJjzgV1', '2026-09-13 06:56:07', '2026-09-14 04:18:23'),
(266, 'WSD-20260913-6LYY', 'Felia Nagita Cheriel', 'P27903123016', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'fenaril05@gmail.com', '089507040693', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/266/dd007c38-d360-422f-b6cb-745b8298bf2e.jpg', 'Screenshot_2026-09-13-14-37-51-442_id.co.bri.brimo.jpg', 'image/jpeg', 642943, '2026-09-13 07:38:38', '2026-09-14 04:20:19', 9, NULL, NULL, NULL, NULL, 'cHJWCrYf4odFAdHltvomCETyg2viflmB07IoLhuf', '2026-09-13 07:34:47', '2026-09-14 04:20:22'),
(267, 'WSD-20260913-AJFB', 'Hanita Salsabila', 'P27903123065', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'hanitasalsabila08@gmail.com', '085811162897', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/267/f4732b49-6685-49d3-b1b9-e6e44e86ea05.jpeg', 'Bukti Bayar Toga a.n. Hanita Salsabila (TLM).jpeg', 'image/jpeg', 75989, '2026-09-13 07:48:34', NULL, NULL, NULL, NULL, NULL, NULL, '6fZlEEVGZOVkPnWZrogYGOAjMff5bYsk8iCb4f8q', '2026-09-13 07:39:53', '2026-09-13 07:48:34'),
(268, 'WSD-20260913-WG8E', 'Ru\'yatul Fauziah', 'P27903123185', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'fauziahruyatul525@gmail.com', '081323894788', 'Perempuan', 'All Size', '-', 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'flSN2wEVPFn3jcMnCJGHmTIIOnnJJwcxAtnwVQsu', '2026-09-13 08:21:15', '2026-09-13 08:21:15'),
(269, 'WSD-20260913-XJE7', 'Ru\'yatul Fauziah', 'P27903123185', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'fauziahruyatul525@gmail.com', '081323894788', 'Perempuan', 'All Size', '-', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/269/6bf007c3-3e70-4eef-b886-093ed52e5e9c.jpg', 'IMG-20260913-WA0027.jpg', 'image/jpeg', 58623, '2026-09-13 08:33:03', '2026-09-14 04:21:14', 9, NULL, NULL, NULL, NULL, 'KtIlqvyDeKZhNhqXH4YVPA0zKPaJgMUQ7ZJ2iflw', '2026-09-13 08:31:58', '2026-09-14 04:21:16'),
(270, 'WSD-20260913-EGGK', 'Tasmia Nurhaliza', 'P27903123094', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'tasmianurhaliza@gmail.com', '081995357062', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/270/4459ab74-87d7-4a89-96ff-f87d190b025f.jpg', 'Screenshot_20260913_161202_DANA.jpg', 'image/jpeg', 287582, '2026-09-13 09:12:31', '2026-09-14 02:00:45', 9, NULL, NULL, NULL, NULL, 'UIulbTwZtKkYV43wGtTkiLig4ViTdcd9aH6L2GZt', '2026-09-13 09:09:51', '2026-09-14 02:00:48'),
(271, 'WSD-20260913-0ZHP', 'MUHAMAD ALDIANSYAH', 'P27901123079', NULL, 1, 'D3 Keperawatan', 2026, 'muhamadaldiansyah1605@gmail.com', '085218496606', 'Laki-laki', 'All Size', 'MUHAMAD ALDIANSYAH \r\nNIM: P27901123079\r\nD-III KEPERAWATAN', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/271/bf76cfaa-e129-4b83-801c-ccaafd0d9bba.png', 'IMG_3081.png', 'image/png', 323747, '2026-09-13 09:44:31', '2026-09-14 04:21:52', 9, NULL, NULL, NULL, NULL, 'KkrtN0BBqxBozQkrEJ5CbSHUvy3TgXdEP0iLyIXj', '2026-09-13 09:42:49', '2026-09-14 04:21:54'),
(272, 'WSD-20260913-555G', 'SUCI OKTAVIA RAMADHANI', 'P27903123093', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'sucioktavia020@gmail.com', '081617967269', 'Perempuan', 'All Size', 'Suci Oktavia Ramadhani transfer melalui BNI a.n SUCI OKTAVIA RAMADHANI', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/272/d15a227f-9cb3-4749-af72-8a5138648644.png', 'IMG_8455.png', 'image/png', 346449, '2026-09-13 09:45:52', '2026-09-14 04:22:15', 9, NULL, NULL, NULL, NULL, 'doMGeDQv8NVVotXKk8693Wfxn0qDIfE559Y65ktZ', '2026-09-13 09:45:31', '2026-09-14 04:22:19'),
(273, 'WSD-20260913-B6XF', 'Latifatun Nahdiyah', 'P27902123062', NULL, 2, 'D3 Kebidanan', 2026, 'latifatunnadya0@gmail.com', '085600108967', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/273/0f8dfe5e-123a-450d-873b-302b9e32e1ca.jpg', 'Screenshot_2026-09-13-17-11-26-811_com.bca.jpg', 'image/jpeg', 526570, '2026-09-13 10:12:04', '2026-09-14 04:22:41', 9, NULL, NULL, NULL, NULL, 'UNWvHtUiqsNXZR4g9e7p86rIzYcbQLNGhwrWu3ZR', '2026-09-13 10:09:16', '2026-09-14 04:22:45'),
(274, 'WSD-20260913-3MRJ', 'Nurul Muflihat', 'P27903123033', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'nurulmuflihat@gmail.com', '083875418563', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/274/feb7f354-3b44-4bdc-9f68-0510d637076b.png', 'IMG_1265.png', 'image/png', 173099, '2026-09-13 10:24:01', '2026-09-14 01:59:46', 9, NULL, NULL, NULL, NULL, 'FgmMw7eQvj1H732Cq4ZOOqMDY6YFpBSEAnuOwDYC', '2026-09-13 10:22:28', '2026-09-14 01:59:49'),
(275, 'WSD-20260913-UXCX', 'OLIVIA MELFIRA SANDRA', 'P27903123225', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'oliviamelfirasandra@gmail.com', '085779187094', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/275/0aa7eee9-a8c1-424f-83f1-91f64af43fd0.jpg', 'IMG-20260913-WA0020.jpg', 'image/jpeg', 183698, '2026-09-13 11:24:38', NULL, NULL, NULL, NULL, NULL, NULL, 'qrnhfhZIFivFXF8EtBcL2KwWn6ohw9VsPkCnaLIi', '2026-09-13 11:06:11', '2026-09-13 11:24:38'),
(276, 'WSD-20260913-TDAJ', 'Frida Yospiana', 'P27902123136', NULL, 2, 'D3 Kebidanan', 2026, 'fridayospiana02@gmail.com', '083147155558', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/276/9de9b93a-c093-4aa5-b70f-0aa0e783df4d.jpg', 'Screenshot_2026-09-13-18-19-21-09_78ed797590cf9a33dfc5e341b7a9537a.jpg', 'image/jpeg', 222858, '2026-09-13 11:19:56', '2026-09-14 04:27:55', 9, NULL, NULL, NULL, NULL, 'Sdev2QfH6wMaFpmKsM5DxREk5zczur8ehI0ji2Ff', '2026-09-13 11:17:36', '2026-09-14 04:27:58'),
(277, 'WSD-20260913-CZZI', 'SITI NURHAYATI', 'P27901123044', NULL, 1, 'D3 Keperawatan', 2026, 'stnurhayati2604@gmail.com', '085280457876', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/277/5f8f9c51-cc7d-44df-af4b-7af931e91f33.jpg', 'IMG-20260911-WA0011.jpg', 'image/jpeg', 79117, '2026-09-13 12:07:57', '2026-09-14 04:24:43', 9, NULL, NULL, NULL, NULL, 'cd9kNY4ruR1o0UGJSxj216sR72aRQXGOAFsTH5rP', '2026-09-13 12:07:35', '2026-09-14 04:24:46'),
(278, 'WSD-20260913-JB7H', 'Meilinda Khoirunnisa', 'P27903123218', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'meilindakhoirunnisa6@gmail.com', '0895636195458', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6Z4qWXAZypHFTu8OWrFSWECEsZJ6DxyUkscHvkm2', '2026-09-13 12:12:39', '2026-09-13 12:12:39'),
(279, 'WSD-20260913-BRUK', 'Meilinda Khoirunnisa', 'P27903123218', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'meilindakhoirunnisa6@gmail.com', '0895636195458', 'Perempuan', 'All Size', 'ukuran L', 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/279/bc52d630-4690-413d-9868-e03ad7b5c83b.jpg', 'Meilinda Khoirunnisa.JPG', 'image/jpeg', 117517, '2026-09-14 05:03:25', NULL, NULL, NULL, NULL, NULL, NULL, 'PkkjhTe8NSQzYUNOlcbopl074sBIOk79lUFvBFAy', '2026-09-13 12:15:57', '2026-09-14 05:03:25'),
(280, 'WSD-20260913-SMLK', 'Kamilah Khoirunisa Solehah', 'P27901123073', NULL, 1, 'D3 Keperawatan', 2026, 'milaakhnsa@gmail.com', '081385172171', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/280/63216917-3ce7-4793-89f1-7a5dcde1d31d.png', 'IMG_3936.png', 'image/png', 117036, '2026-09-13 12:35:43', '2026-09-14 03:09:50', 9, NULL, NULL, NULL, NULL, 'RefIvb0nCe5NBPRn5iYkn8W1oVryI3JSGP66S7m1', '2026-09-13 12:33:53', '2026-09-14 03:09:53'),
(281, 'WSD-20260913-WMKO', 'Nazwa Aura Ramadhani', 'P27903123129', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'nzwaurar30@gmail.com', '082124347797', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/281/269870ee-92f8-471f-bf61-891a6fab136c.jpg', 'IMG-20260913-WA0014.jpg', 'image/jpeg', 58103, '2026-09-13 12:41:07', '2026-09-14 04:29:31', 9, NULL, NULL, NULL, NULL, 'zJODwbrblWUD1rhB2NbIpFTSozDTx65M7f6vk1oW', '2026-09-13 12:37:49', '2026-09-14 04:29:35'),
(282, 'WSD-20260913-KEXN', 'Ratu Hana Chaerunisa', 'P27903123134', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'ratuhana620@gmail.com', '083132044615', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/282/37d4c123-53b6-4258-822c-80e48b26a747.jpeg', 'f2239399-1152-4466-b0d4-e3c0f6958ba9.jpeg', 'image/jpeg', 82656, '2026-09-13 12:40:59', '2026-09-14 04:28:53', 9, NULL, NULL, NULL, NULL, '9SnHaLlMFw1uYcs6R8pFVZxmD0tsq1KQr7TYIkEi', '2026-09-13 12:40:14', '2026-09-14 04:28:55'),
(283, 'WSD-20260913-ZGCN', 'Nabila Aulia Putri', 'P27903123029', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'nblauliaput10@gmail.com', '08139840524', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/283/f0ae33ff-307b-4e08-982b-6b6a73f7e232.jpg', 'Screenshot_2026-09-13-19-50-15-87_78ed797590cf9a33dfc5e341b7a9537a.jpg', 'image/jpeg', 325201, '2026-09-13 12:50:59', '2026-09-14 04:29:55', 9, NULL, NULL, NULL, NULL, '921PZoE2YhaoSQqkoJXIeDQYGe4ig8b8iwABX6bt', '2026-09-13 12:50:27', '2026-09-14 04:29:58'),
(284, 'WSD-20260913-3AY4', 'SITI AULIA QURNIATILLAH', 'P27902123076', NULL, 2, 'D3 Kebidanan', 2026, 'qurniatillah11@gmail.com', '087895383021', 'Perempuan', 'All Size', 'TOGA PRODI D3 KEBIDANAN A.N SITI AULIA QURNIATILLAH', 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/284/96905f2a-5c64-4c1c-bd39-035e78d9cf82.jpg', 'IMG-20260913-WA0056.jpg', 'image/jpeg', 53345, '2026-09-13 13:16:26', NULL, NULL, NULL, NULL, NULL, NULL, 'KQ1X1Zd9HsWR0MYJY7xAVtAzcWYIbqlYEhFUDw9V', '2026-09-13 13:07:30', '2026-09-13 13:16:26'),
(285, 'WSD-20260913-QJEB', 'Latifa Muthi Nurjanah', 'P27903123121', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'latifamuthi08@gmail.com', '08984982143', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/285/0ee5e830-8337-403a-b78b-6e83f6b23b6e.jpg', 'IMG_Sun Sep 13 20_25_41 GMT+07_00 2026.jpg', 'image/jpeg', 129666, '2026-09-13 13:26:21', '2026-09-14 04:31:06', 9, NULL, NULL, NULL, NULL, 'EjMprIYdAQSpQKgHMr6W42cLe5XUh4O7sjtFpOwq', '2026-09-13 13:23:55', '2026-09-14 04:31:08'),
(286, 'WSD-20260913-GDEI', 'SITI AZKIYA PATONAH SIREGAR', 'P27901123099', NULL, 1, 'D3 Keperawatan', 2026, 'sitiazkiaf@gmail.com', '081617964564', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/286/8fdafef9-0e7a-47e2-a690-2f27808fb416.png', 'IMG_4027.png', 'image/png', 190672, '2026-09-13 14:19:17', '2026-09-14 04:32:56', 9, NULL, NULL, NULL, NULL, 'nrRIPd5s99SFoc8QHY5ygt853c3ebrEMVYoDmCcA', '2026-09-13 14:17:38', '2026-09-14 04:32:58'),
(287, 'WSD-20260913-RALH', 'NOVI', 'P27902123149', NULL, 2, 'D3 Kebidanan', 2026, 'novimvi7@gmail.com', '083180129100', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/287/5920422a-ef17-4690-b216-18415d30e82c.png', 'IMG_3072.png', 'image/png', 346386, '2026-09-14 01:45:54', '2026-09-14 04:33:31', 9, NULL, NULL, NULL, NULL, 'eisrSWRoYbh3SGKvzcuqdeomE09bwwdo0t8KlZsb', '2026-09-13 15:29:11', '2026-09-14 04:33:33'),
(288, 'WSD-20260913-CCXY', 'Ahmad Lepi Kurniawan', 'P27901123055', NULL, 1, 'D3 Keperawatan', 2026, 'levik4312@gmail.com', '082311448960', 'Laki-laki', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aHGOKt17ozFCvIqdYwNhNpriAMvUueFkT9tmn7yC', '2026-09-13 17:38:27', '2026-09-13 17:38:27'),
(289, 'WSD-20260913-JRLQ', 'Linda Yulianti Sari', 'P27903123171', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'lindayuliantisari024@gmail.com', '085692929293', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/289/b7227e4f-d915-4db2-a270-adc0aad58da1.jpeg', 'IMG_5391.jpeg', 'image/jpeg', 267586, '2026-09-13 22:36:25', '2026-09-14 01:42:48', 9, NULL, NULL, NULL, NULL, '7MjIIrEuDAWp3gKCLV4TrhLIH6s5HILzU2ebztg3', '2026-09-13 22:34:11', '2026-09-14 01:42:50'),
(290, 'WSD-20260914-JGPY', 'Maharani Eka Pratiwi', 'P27903123217', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'maharaniekap24@gmail.com', '085659746775', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/290/333a4709-1358-4c0d-880e-e81aab0f786e.jpg', 'Screenshot_20260914_071202_DANA.jpg', 'image/jpeg', 559388, '2026-09-14 00:13:15', '2026-09-14 02:03:37', 9, NULL, NULL, NULL, NULL, 'DTqqOrSBNvUl7xW3CVJpxWGNjlTv42Gi7zLCeif3', '2026-09-14 00:12:48', '2026-09-14 02:03:39'),
(291, 'WSD-20260914-JSZK', 'Keryn Zairi Annisa', 'P27903123070', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'kerynzairi@gmail.com', '0895387157336', 'Perempuan', 'All Size', 'ukuran toga M', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/291/96399cde-667b-4d00-a868-790fa1c53bb9.jpg', 'IMG-20260914-WA0000.jpg', 'image/jpeg', 63928, '2026-09-14 00:27:44', '2026-09-14 04:34:58', 9, NULL, NULL, NULL, NULL, '7f3y5IdZUjitSOOA079EsgzJhXNnZVwOxfGo4agw', '2026-09-14 00:22:43', '2026-09-14 04:35:01'),
(292, 'WSD-20260914-IDRX', 'Silfi Wulandari', 'P27904122088', NULL, 8, 'Sarjana Terapan Keperawatan', 2026, 'wulandarisilvi76@gmail.com', '085211400643', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/292/cba9bfdb-1cd1-4733-a653-d0a39300b47f.jpg', 'Screenshot_2026-09-14-07-39-09-586_id.co.bri.brimo.jpg', 'image/jpeg', 340155, '2026-09-14 00:39:50', '2026-09-14 04:35:18', 9, NULL, NULL, NULL, NULL, 'EUahXQxoXUBJrkH8maWpIhqzWsz3PKE4lnP22eKJ', '2026-09-14 00:38:02', '2026-09-14 04:35:20'),
(293, 'WSD-20260914-N9FS', 'Dini Muhtarissahra', 'P27902123093', NULL, 2, 'D3 Kebidanan', 2026, 'dinimuhtarissahra@gmail.com', '085881645687', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/293/9c08d89e-0e2a-436f-b7f7-91cfc06046f8.png', 'IMG_9879.png', 'image/png', 287215, '2026-09-14 00:56:29', '2026-09-14 04:35:40', 9, NULL, NULL, NULL, NULL, '0CVDL7RVYAjwvLUNlqJ2ZMY94jPxtdhYo0hWzmxQ', '2026-09-14 00:53:46', '2026-09-14 04:35:42'),
(294, 'WSD-20260914-VKHZ', 'Putri Hidayani', 'P27902123068', NULL, 2, 'D3 Kebidanan', 2026, 'hidayanip076@gmail.com', '085885007677', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/294/1a39b66d-4c46-419c-a7bb-2e31ed5250a0.png', '9906F3A1-091F-43ED-A93E-D6FD21ABD24C.png', 'image/png', 406370, '2026-09-14 01:06:15', '2026-09-14 04:36:01', 9, NULL, NULL, NULL, NULL, 'LmI9KhWbNuoacTU4Kja1nChjy1twIJMqPOgkH3zV', '2026-09-14 01:02:54', '2026-09-14 04:36:06'),
(295, 'WSD-20260914-5TFZ', 'FITRIA KUSUMA WARDANI', 'P27901123069', NULL, 1, 'D3 Keperawatan', 2026, 'fitriakusumawardani33@gmail.com', '085821628615', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KrAFPdwyTB8tM41hKKLnfOp4XTk6fjkq67A7MN7M', '2026-09-14 01:10:25', '2026-09-14 01:10:25'),
(296, 'WSD-20260914-EX3D', 'Nurul Sapitri', 'P27901123034', NULL, 1, 'D3 Keperawatan', 2026, 'nurulsapitri322@gmail.com', '085817108481', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/296/28a71140-2a44-4ea6-b3ea-a3e64cf02146.png', 'IMG_2454.png', 'image/png', 167891, '2026-09-14 01:13:15', '2026-09-14 04:36:48', 9, NULL, NULL, NULL, NULL, 'AiTqJKcpLK1J8z2iJqPAS2x9Or6OXyJipGfnAyOV', '2026-09-14 01:12:02', '2026-09-14 04:36:51'),
(297, 'WSD-20260914-TJZA', 'Silvia Eka Hermanda', 'P27904122089', NULL, 8, 'Sarjana Terapan Keperawatan', 2026, 'silviahermanda279@gmail.com', '089635957239', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/297/fa81bae5-6ee0-41d3-8f4c-c835a6290052.jpg', 'Screenshot_20260914_082804.jpg', 'image/jpeg', 591224, '2026-09-14 01:29:43', '2026-09-14 04:38:07', 9, NULL, NULL, NULL, NULL, 'tKgFBpcIQRgeAuDzAJBSEeaklRTA97h3Hy24IAqd', '2026-09-14 01:26:21', '2026-09-14 04:38:10'),
(298, 'WSD-20260914-NM9C', 'Alya Dhiya elhaq izzaty', 'P27903123198', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'alyadhiyaelhaqizaty@gmail.com', '087774927236', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/298/700200b6-1a07-4956-87af-5abd7c66a05b.png', 'IMG_3195.png', 'image/png', 327757, '2026-09-14 01:40:24', '2026-09-14 04:39:20', 9, NULL, NULL, NULL, NULL, 'bEk8ccdH56UvIPZe2QlmQxcoVcb6FJxdnUkUJ6Eo', '2026-09-14 01:38:04', '2026-09-14 04:39:23'),
(299, 'WSD-20260914-E9ZO', 'Siva Novianti', 'P27902123119', NULL, 2, 'D3 Kebidanan', 2026, 'sivanovianti25@gmail.com', '083873618286', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/299/714c9e40-7339-41f3-af60-63bd113a5669.png', 'IMG_9285.png', 'image/png', 123246, '2026-09-14 01:42:38', '2026-09-14 04:38:35', 9, NULL, NULL, NULL, NULL, 'Lr0BDR75St59S1b5N4Q983WDwur8TWv28gmYAqfL', '2026-09-14 01:39:09', '2026-09-14 04:38:38'),
(300, 'WSD-20260914-1OI9', 'Rianti Rut Maria Mahulae', 'P27904122082', NULL, 4, 'Sarjana Terapan Keperawatan Reguler', 2026, 'riantirutmaria5@gmail.com', '087818380638', 'Perempuan', 'All Size', 'Ukuran XXL', 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/300/a0dd8581-5315-4dc2-b98a-a4e38390d7f6.jpg', 'IMG-20260914-WA0000.jpg', 'image/jpeg', 79388, '2026-09-14 01:58:49', NULL, NULL, NULL, NULL, NULL, NULL, '6BeG2jpbxKifOOfq2JIYGHpWehAMCQLefUhxaTcV', '2026-09-14 01:57:22', '2026-09-14 01:58:49'),
(301, 'WSD-20260914-IDWQ', 'Deliani Elyanti Irawan', 'P27903123107', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'delianiellyanti@gmail.com', '081524638779', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'zQgY036VjFBwMFwOagMzkgL05XX65fWLC8NEET5L', '2026-09-14 02:00:09', '2026-09-14 02:00:09'),
(302, 'WSD-20260914-HB4K', 'Deliani Elyanti Irawan', 'P27903123107', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'delianiellyanti@gmail.com', '081524638779', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/302/4a062fe5-d048-45c0-add9-1f043b23a3ea.jpg', 'Screenshot_20260913_124250.jpg', 'image/jpeg', 282169, '2026-09-14 02:18:01', '2026-09-14 02:20:15', 9, NULL, NULL, NULL, NULL, 'yfB2kxMGAIvfvBrGDNV92FGBUKs6e9yLV6hQoccf', '2026-09-14 02:16:43', '2026-09-14 02:20:18'),
(303, 'WSD-20260914-0GUD', 'Windi Suci Widiana', 'P27903123242', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'suciwidianawindi@gmail.com', '085883378646', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/303/82a6d4ff-0ea9-4366-850e-81877d57a4e6.png', 'IMG_3271.png', 'image/png', 214604, '2026-09-14 02:28:00', '2026-09-14 06:23:47', 9, NULL, NULL, NULL, NULL, 'zBzC9roR0NRy3vXDeGKyV4kLCxnoxJn3JdyGZ0Yo', '2026-09-14 02:25:34', '2026-09-14 06:23:50'),
(304, 'WSD-20260914-MNTV', 'Yola Ramadanti', 'P27902123124', NULL, 2, 'D3 Kebidanan', 2026, 'yolaramdanti502@gmail.com', '083877960330', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/304/e6d0c7f0-311f-4d6e-8c58-36fcc9315aaf.png', 'IMG_8307.png', 'image/png', 217291, '2026-09-14 02:43:51', '2026-09-14 07:28:23', 9, NULL, NULL, NULL, NULL, 'Q77NZVlOsZ5Ti78gEaiLYEG4p49qgLdsLDazc1H0', '2026-09-14 02:41:26', '2026-09-14 07:28:26'),
(305, 'WSD-20260914-MIGO', 'Najwa Maulida', 'P27902123066', NULL, 2, 'D3 Kebidanan', 2026, 'najwamaulida230505@gmail.com', '085536638941', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/305/5e441356-0b24-4669-a1e5-3445dcfa7930.jpeg', 'IMG_2711.jpeg', 'image/jpeg', 239837, '2026-09-14 03:04:57', '2026-09-14 07:28:50', 9, NULL, NULL, NULL, NULL, 'WawHo69NNerXmSUq2h84VZz5NiqPLJaxdgwqAoec', '2026-09-14 03:04:27', '2026-09-14 07:28:53'),
(306, 'WSD-20260914-DI8B', 'SITI SOLIHATUL AWALIAH', 'P27902123118', NULL, 2, 'D3 Kebidanan', 2026, 'sitisolihatulawaliah@gmail.com', '089524566675', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/306/6833f78f-1afb-4815-a380-99e5f81b5a21.jpg', 'Screenshot_20260914_101331_DANA.jpg', 'image/jpeg', 552942, '2026-09-14 03:14:18', '2026-09-14 07:29:19', 9, NULL, NULL, NULL, NULL, 'Xfzs80GSUZXN0UdqEpRzXfcKE34MOIV0HwFryLV5', '2026-09-14 03:11:28', '2026-09-14 07:29:22'),
(307, 'WSD-20260914-PS0G', 'Naila Nazma Syahmina', 'P27901123030', NULL, 1, 'D3 Keperawatan', 2026, 'nailanazma1605@gmail.com', '089658846824', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DTGmd81WQEVRIXJ7Gd5DUbLo6CIdoQkUj9eRw4ps', '2026-09-14 03:33:48', '2026-09-14 03:33:48');
INSERT INTO `graduation_toga_orders` (`id`, `order_code`, `student_name`, `nim`, `nik`, `study_program_id`, `study_program_name`, `graduation_year`, `email`, `phone`, `gender`, `toga_size`, `size_note`, `quantity`, `status`, `payment_status`, `payment_amount`, `payment_method`, `payment_proof_path`, `payment_proof_original_name`, `payment_proof_mime`, `payment_proof_size`, `payment_uploaded_at`, `payment_verified_at`, `payment_verified_by`, `payment_rejected_at`, `payment_rejected_by`, `admin_note`, `rejection_note`, `public_token`, `created_at`, `updated_at`) VALUES
(308, 'WSD-20260914-BNGB', 'Wulan Molydina', 'P27904122049', NULL, 4, 'Sarjana Terapan Keperawatan Reguler', 2026, 'wulanmolydina4@gmail.com', '089630637797', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/308/f796c29e-b78e-417b-bc4b-28a0759cfe0e.png', 'IMG_4805.png', 'image/png', 403617, '2026-09-14 03:38:16', NULL, NULL, NULL, NULL, NULL, NULL, '6731KIHm4ltq0eZpBf5GTduYJqYpIvcxUnGhVd0v', '2026-09-14 03:36:42', '2026-09-14 03:38:16'),
(309, 'WSD-20260914-KP6O', 'Naila Nazma Syahmina', 'P27901123030', NULL, 1, 'D3 Keperawatan', 2026, 'nailanazma1605@gmail.com', '089658846824', 'Perempuan', 'All Size', 'Ukuran L', 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/309/92370839-b6cc-4173-baf8-eb43c517ebb9.jpeg', '506e4b7a-66bf-42a0-84b4-ccf0db33b59c.jpeg', 'image/jpeg', 306376, '2026-09-14 03:44:56', NULL, NULL, NULL, NULL, NULL, NULL, 'Q20Lz0XDkzDRyERtq8mv6YNMF3UtNNvlCtMPoRzd', '2026-09-14 03:36:50', '2026-09-14 03:44:56'),
(310, 'WSD-20260914-ZHI9', 'Siti Fadmina Nur Permata', 'P27904122041', NULL, 4, 'Sarjana Terapan Keperawatan Reguler', 2026, 'fadmiinapermata@gmail.com', '081219441108', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/310/f4950db2-db87-4c03-8dba-f4c732fa994e.png', 'IMG_4688.png', 'image/png', 279627, '2026-09-14 03:50:42', '2026-09-14 07:31:15', 9, NULL, NULL, NULL, NULL, 'VBrN39rkrx7o689IpuCTxQjFdiSWSWkgHyEOcXxA', '2026-09-14 03:47:45', '2026-09-14 07:31:18'),
(311, 'WSD-20260914-CBGI', 'Niluh Ayu Dwi Cahyani', 'P27904122027', NULL, 8, 'Sarjana Terapan Keperawatan', 2026, 'niluhadc25@gmail.com', '082129539692', 'Perempuan', 'All Size', 'Ukuran M', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/311/0028844c-7db3-42f4-af83-27cf0ea1a8a4.png', 'reRabeipt_58672_07_10_11_30_19.png', 'image/png', 453803, '2026-09-14 04:18:01', '2026-09-14 07:31:43', 9, NULL, NULL, NULL, NULL, '96zsaOdOiBSmvNF3DKfTQEFroYwNtCPPZ1tyfi2D', '2026-09-14 04:04:25', '2026-09-14 07:31:45'),
(312, 'WSD-20260914-HG4T', 'Nazlah Iptihar', 'P27902123107', NULL, 2, 'D3 Kebidanan', 2026, 'nazlahiftihar28@gmail.com', '081212917480', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NTmZxyRXCuZSktwtjxlYxzLoWl5QD4pwAQyaAUZQ', '2026-09-14 04:08:14', '2026-09-14 04:08:14'),
(313, 'WSD-20260914-7SHH', 'Dhelia Nishfa Nahira', 'P27902123010', NULL, 2, 'D3 Kebidanan', 2026, 'dhelianishfanahira@gmail.com', '088297469567', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/313/b87ed727-eddd-4f08-bf16-0ae445ada3e4.png', 'IMG_2919.png', 'image/png', 283289, '2026-09-14 04:09:02', '2026-09-14 07:32:43', 9, NULL, NULL, NULL, NULL, 'y85rMWhhkV6fkesCwnIMiSwmPgq6dw9MVzxo3duv', '2026-09-14 04:08:40', '2026-09-14 07:32:45'),
(314, 'WSD-20260914-LXTG', 'Delfia Maharani', 'P27903123058', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'delfiamarani@gmail.com', '083896997061', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/314/26e1d755-9559-4ae7-ac71-c87e21541b1e.jpg', 'Screenshot_20260914_111142_DANA.jpg', 'image/jpeg', 517131, '2026-09-14 04:13:34', '2026-09-14 04:18:47', 9, NULL, NULL, NULL, NULL, 'PMI5SKIxgGiHaHvs3Cg6D4UAvjxxYkvTRf4tczP0', '2026-09-14 04:11:05', '2026-09-14 04:18:50'),
(315, 'WSD-20260914-N2P5', 'Siti Nurul Aina', 'P27902123116', NULL, 2, 'D3 Kebidanan', 2026, 'sitinurulaina88467@gmail.com', '085773521097', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/315/c6673ca2-6a0f-4354-8f4b-78fc6ae54be0.jpeg', '5b1f5a3d-0805-4178-a29a-22471fb63c79.jpeg', 'image/jpeg', 210066, '2026-09-14 04:20:09', NULL, NULL, NULL, NULL, NULL, NULL, 'YPEta8wgFnqOXbWiPHYJ3aQDPSAbbWpnbuyBT2AU', '2026-09-14 04:12:59', '2026-09-14 04:20:09'),
(316, 'WSD-20260914-OUTV', 'Santi paraswati', 'P27904122037', NULL, 8, 'Sarjana Terapan Keperawatan', 2026, 'santiparaswati1@gmail.com', '089528992163', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/316/edd2f31a-6c9f-4832-a249-ac5cb3c49b59.jpg', 'IMG-20260914-WA0027.jpg', 'image/jpeg', 74823, '2026-09-14 04:15:27', '2026-09-14 07:33:26', 9, NULL, NULL, NULL, NULL, 'fmTZ0YY2u7U9w1GvJnXjjwyOfiYPQFlTeLMcd7ou', '2026-09-14 04:13:04', '2026-09-14 07:33:29'),
(317, 'WSD-20260914-NYLK', 'Salsabila Azahra', 'P27903123138', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'salsabilaazahra0805@gmail.com', '081915717188', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/317/15395c23-66a6-45fc-9fc4-d8508eebf78b.png', 'IMG_0913.png', 'image/png', 172714, '2026-09-14 04:21:09', '2026-09-14 04:23:56', 9, NULL, NULL, NULL, NULL, 'fxw6LYRnF8AmFPIhgHqPQnBBPuobuFedr2pLdoJE', '2026-09-14 04:14:57', '2026-09-14 04:23:59'),
(318, 'WSD-20260914-8WGN', 'Alfia Yusi Damayanti', 'P27902123006', NULL, 2, 'D3 Kebidanan', 2026, 'alfiayusi35@gmail.com', '081586675546', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/318/c02494c4-7f04-4375-a685-b343524ab5ff.jpg', 'Screenshot_2026-09-14-11-19-06-70_78ed797590cf9a33dfc5e341b7a9537a.jpg', 'image/jpeg', 296627, '2026-09-14 04:19:41', '2026-09-14 07:33:51', 9, NULL, NULL, NULL, NULL, 'I0hZLSv6fM2kjWEzNqRPfi1Z4u0yqASxm6GmHBVY', '2026-09-14 04:16:01', '2026-09-14 07:33:53'),
(319, 'WSD-20260914-ADJL', 'Ayu Nur Rahayu', 'P27903123154', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'rahayuayunur@gmail.com', '081212139460', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/319/dd1a7a21-2524-4825-b9a9-4156c4b39177.png', 'IMG_0458.png', 'image/png', 202331, '2026-09-14 04:23:08', NULL, NULL, NULL, NULL, NULL, NULL, 'JZ2ERWuvsv327j4akKGgqTN4uoVqT6klpXoHUapN', '2026-09-14 04:21:18', '2026-09-14 04:23:08'),
(320, 'WSD-20260914-JMLC', 'Rosita Sazwana', 'P27903123137', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'rsazwana@gmail.com', '081511048601', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/320/6b6396ff-302b-4a8e-9de4-b9d882772b78.jpg', 'IMG-20260914-WA0009.jpg', 'image/jpeg', 56753, '2026-09-14 04:28:24', NULL, NULL, NULL, NULL, NULL, NULL, 'gAc1R1eGRLmTB3an4T4RUES8PEOvyPClrhaCpeFa', '2026-09-14 04:21:45', '2026-09-14 04:28:24'),
(321, 'WSD-20260914-6GHZ', 'Ru\'yatul Fauziah', 'P27903123185', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'fauziahruyatul525@gmail.com', '081323894788', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'gQAnCuX7LXKy30A0mm3Was5xsX00LGvBiJnY6hoB', '2026-09-14 04:21:57', '2026-09-14 04:21:57'),
(322, 'WSD-20260914-8YUH', 'Shifa Nuraini', 'P27903123089', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'shifanuraini05@gmail.com', '087868857484', 'Perempuan', 'All Size', 'Mahasiswi Poltekkes Banten jurusan TLM', 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/322/a534716e-46db-4bff-b8ad-3f2a4de3b352.png', 'IMG_0920.png', 'image/png', 338749, '2026-09-14 04:24:32', NULL, NULL, NULL, NULL, NULL, NULL, 'uTqs1d1Jf5EVwsRxyrfYtV6aPLHSmNWIIbdO4lAJ', '2026-09-14 04:24:11', '2026-09-14 04:24:32'),
(323, 'WSD-20260914-KNXT', 'Wanda Rahmanda', 'P27903123240', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'wandarahmanda2@gmail.com', '085881364536', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8ngJbYpyvXVIRewYfVyNJPIhV807ypWYPIaZyAFV', '2026-09-14 04:30:08', '2026-09-14 04:30:08'),
(324, 'WSD-20260914-PTH1', 'Nurhalimah', 'P27903123181', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'nurhlimah1601@gmail.con', '089654955766', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'khljPBqWUVZtu086fLErSFCpREs3Q3RbfVkv4vxy', '2026-09-14 04:30:17', '2026-09-14 04:30:17'),
(325, 'WSD-20260914-GHAM', 'Maula Meilani', 'P27903123123', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'meilanimaula@gmail.com', '083841350890', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/325/016f8708-3fe6-40ca-ac49-f76e143e7ce9.jpg', 'pembayaran toga maula meilani 2026.jpg', 'image/jpeg', 232315, '2026-09-14 04:32:47', NULL, NULL, NULL, NULL, NULL, NULL, '3eKGmREv5htcCOhcPoh03Sr0ueuZz8JiPRQSA8Ae', '2026-09-14 04:31:22', '2026-09-14 04:32:47'),
(326, 'WSD-20260914-5NPC', 'Amanda Fikri', 'P27903123053', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'amndaaaa002@gmail.com', '082124257964', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/326/12428606-4991-4459-81c9-a33c7f1b29ae.png', 'IMG_6898.png', 'image/png', 264133, '2026-09-14 04:32:21', NULL, NULL, NULL, NULL, NULL, NULL, 'ojY5J8kTZFEJsYxI4ZZPyimPtaGHh3tR3UZYVFtA', '2026-09-14 04:31:50', '2026-09-14 04:32:21'),
(327, 'WSD-20260914-LCNI', 'Julia Ariani', 'P27903123216', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'juliaariani107@gmail.com', '085894740795', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/327/c08349e4-b207-4d44-afcb-6b43f6f5fad1.jpg', 'IMG-20260914-WA0009.jpg', 'image/jpeg', 59419, '2026-09-14 04:40:02', '2026-09-14 04:44:31', 9, NULL, NULL, NULL, NULL, 'CMDc6HT7k5FYjZPlQFWxYUuGjoK2Gj1i8MKG3sB9', '2026-09-14 04:33:21', '2026-09-14 06:18:17'),
(328, 'WSD-20260914-RHJC', 'Rizkha Putri Azzahra', 'P27903123230', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'rizkhap716@gmail.com', '0895405023881', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/328/1f1139ee-c05d-4979-9f42-962ddc3e98ee.jpg', 'Screenshot_2026-09-14-11-36-36-993_id.dana.jpg', 'image/jpeg', 556544, '2026-09-14 04:37:55', '2026-09-14 04:41:10', 9, NULL, NULL, NULL, NULL, 'bGfVemG5ecIkiWUOL569g2fXJMijpbE9KMG6om2K', '2026-09-14 04:34:22', '2026-09-14 04:41:21'),
(329, 'WSD-20260914-CKDJ', 'Rindiani', 'P27903123228', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'rindi5047@gmail.com', '085778237015', 'Perempuan', 'All Size', '-', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/329/76b714b6-9422-435d-a028-06833f1513fe.jpeg', 'IMG_0507.jpeg', 'image/jpeg', 262748, '2026-09-14 04:35:21', '2026-09-14 05:59:20', 13, NULL, NULL, NULL, NULL, 'aQwQytKUxFfKZkGtZ06DvY7RO1cbKW5wOsmCgBGH', '2026-09-14 04:34:27', '2026-09-14 05:59:24'),
(330, 'WSD-20260914-10V0', 'Muhammad Dillal Putra Aidiena', 'P27903123027', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'dilalaidiena@gmail.com', '083170026805', 'Laki-laki', 'All Size', 'tb saya 180cm bb saya 95kg', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/330/78ce5009-9588-436e-8824-5e554951fee2.png', 'IMG_2598.png', 'image/png', 198138, '2026-09-14 04:35:58', '2026-09-14 06:00:03', 13, NULL, NULL, NULL, NULL, 'Tb1Bzd5Y4cGO3f4BduAknnE4niHx60Suq5YtXhqE', '2026-09-14 04:35:32', '2026-09-14 06:00:08'),
(331, 'WSD-20260914-4BMD', 'Fitia Ramadani', 'P27903123064', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'fitiaramadani15@gmail.com', '089527024569', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/331/05693aed-3ebc-49c4-a947-c6b1059ffab2.png', 'IMG_7389.png', 'image/png', 236455, '2026-09-14 04:38:57', '2026-09-14 05:38:32', 13, NULL, NULL, NULL, NULL, '85IpHEylFnbpLitZGW8JYKN8VmHunDQ509NMmFwv', '2026-09-14 04:38:35', '2026-09-14 05:38:37'),
(332, 'WSD-20260914-FRPA', 'Siti Maura Fauza', 'P27903123092', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'maurafauza@gmail.com', '0895345609371', 'Perempuan', 'All Size', 'Ukuran S', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/332/e9dfd27c-18c9-41eb-8e68-62cdf527ad6c.jpeg', 'IMG_9281.jpeg', 'image/jpeg', 157323, '2026-09-14 04:41:16', '2026-09-14 05:37:40', 13, NULL, NULL, NULL, NULL, 'Tcvxd1gPvSfErGpfTi65fkCusGj50cmaiQr9CHdg', '2026-09-14 04:39:35', '2026-09-14 05:37:44'),
(333, 'WSD-20260914-QTEV', 'Muhamad Zaky Mubarok', 'P27903123126', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'zakymubarok02092005@gmail.com', '088976096668', 'Laki-laki', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/333/e3e57009-2a6d-4f96-85ad-1eb6bcda3624.jpg', 'IMG-20260914-WA0004.jpg', 'image/jpeg', 78291, '2026-09-14 04:43:12', '2026-09-14 05:02:17', 9, NULL, NULL, NULL, NULL, 'z1XwJgboLDpSLUbD6WzigzaPezBizXUJbgavSHrK', '2026-09-14 04:39:43', '2026-09-14 05:02:20'),
(334, 'WSD-20260914-QHO2', 'Nazwa Fauziyyah', 'P27903123223', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'fauziyyahnazwa30@gmail.com', '085282033801', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/334/8cc2be95-9c24-4c04-bc7e-5ae54f2bc828.jpg', 'IMG-20260914-WA0016.jpg', 'image/png', 120110, '2026-09-14 04:43:37', '2026-09-14 06:00:50', 13, NULL, NULL, NULL, NULL, 'ISrEPG1gw0NV4cmrvm83KtpaQji0B6sNMyPctZ9f', '2026-09-14 04:39:51', '2026-09-14 06:00:54'),
(335, 'WSD-20260914-OUIT', 'Avrindita Lailani', 'P27903123106', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'avrindita48@gmail.com', '089508342478', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/335/cd683c33-d4a6-4b05-8b9e-38c14c88566d.jpg', 'Sen14September20261148.jpg', 'image/jpeg', 847498, '2026-09-14 04:50:13', '2026-09-14 05:35:11', 13, NULL, NULL, NULL, NULL, 'W03GjIhsBDRwvzn1jPJPvpRYLcQyuDR5eQCkFGyL', '2026-09-14 04:49:45', '2026-09-14 05:35:16'),
(336, 'WSD-20260914-DGXZ', 'Fauziyah Dea Susila', 'P27903123209', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'fauziyahdea05@gmail.com', '081383767481', 'Perempuan', 'All Size', '-', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/336/d97374d9-2de5-4d9d-928e-921cc226089a.jpg', 'Screenshot_2026-09-14-11-55-23-13_78ed797590cf9a33dfc5e341b7a9537a.jpg', 'image/jpeg', 284669, '2026-09-14 04:56:31', '2026-09-14 05:36:11', 13, NULL, NULL, NULL, NULL, 'NEKrARrDMe6eIbqkhVTryxes1K6ngsYJDzFMhf4a', '2026-09-14 04:50:27', '2026-09-14 05:36:16'),
(337, 'WSD-20260914-M1ZL', 'Dewi Wulansari', 'P27902123009', NULL, 2, 'D3 Kebidanan', 2026, 'dewiwulansari2101@gmail.com', '085774600388', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/337/dd2765f1-bb69-4739-81a2-c0cb6a35cf38.jpg', 'IMG-20260914-WA0137.jpg', 'image/jpeg', 80794, '2026-09-14 05:09:51', '2026-09-14 05:33:33', 13, NULL, NULL, NULL, NULL, 'p5OLHDvZA3tLVz53qW6X6zWp5P1cJAH0rNqf9X6p', '2026-09-14 04:50:29', '2026-09-14 05:33:38'),
(338, 'WSD-20260914-7CES', 'Fitria Kusuma Wardani', 'P27901123069', NULL, 1, 'D3 Keperawatan', 2026, 'fitriakusumawardani33@gmail.com', '085821628615', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0VgMyDKX6hzBMx6k6C0nXwxvzOTYEXyJFHQXn2sc', '2026-09-14 04:51:23', '2026-09-14 04:51:23'),
(339, 'WSD-20260914-QWO8', 'FITRIA KUSUMA WARDANI', 'P27901123069', NULL, 1, 'D3 Keperawatan', 2026, 'fitriakusumawardani33@gmail.com', '085821628615', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/339/ec6825dd-a200-4ae0-b5c1-1d93e001357f.jpeg', '3ec2ed84-a1a2-4dbd-b285-32c4b6a85939.jpeg', 'image/jpeg', 98654, '2026-09-14 04:54:50', '2026-09-14 04:56:06', 9, NULL, NULL, NULL, NULL, 'RHd9Bm58S3dxsCeZtZDsVeemoPnFCnXTrqosXIlG', '2026-09-14 04:54:28', '2026-09-14 04:56:09'),
(340, 'WSD-20260914-X9RE', 'Nurhasanah', 'P27904122029', NULL, 8, 'Sarjana Terapan Keperawatan', 2026, 'nurh60876@gmail.com', '085691946953', 'Perempuan', 'All Size', 'Ukuran S', 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/340/196d5711-20cf-4dc2-8848-444f952bc82e.jpg', 'IMG-20260914-WA0012.jpg', 'image/jpeg', 85544, '2026-09-14 05:01:03', NULL, NULL, NULL, NULL, NULL, NULL, 'TIGAzh5UGTIveJSKJaxVXljn4Z2K0S1L0bocLstj', '2026-09-14 04:56:36', '2026-09-14 05:01:03'),
(341, 'WSD-20260914-FTBW', 'Davva Awalia Salsabil Putri', 'P27902123089', NULL, 2, 'D3 Kebidanan', 2026, 'davvasalsabil@gmail.com', '085220990582', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/341/17410f2c-7bb1-48a4-8f86-932b8eac0f75.png', 'IMG_1071.png', 'image/png', 294812, '2026-09-14 05:03:15', '2026-09-14 05:23:28', 13, NULL, NULL, NULL, NULL, 'FbJNE8bxhxDYJ7NiHLPNICD8hDjhxddzuIotYDj1', '2026-09-14 05:01:33', '2026-09-14 06:56:11'),
(342, 'WSD-20260914-B9MD', 'ASTRID VINA ALVIANI', 'P27904122054', NULL, 8, 'Sarjana Terapan Keperawatan', 2026, 'astridvina6@gmail.com', '087880203670', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/342/868f2388-0f44-4376-b7a2-1b96b3171b31.jpg', 'Sen14September20261206.jpg', 'image/jpeg', 770974, '2026-09-14 05:08:31', '2026-09-14 05:21:09', 13, NULL, NULL, NULL, NULL, 'H59MnPNXYYf17FCyF5FmxCngI7rTWySk2WrSTubm', '2026-09-14 05:02:53', '2026-09-14 06:56:29'),
(343, 'WSD-20260914-KCWW', 'Putri Fajriah Agustina', 'P27903123034', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2023, 'ptrgstn98@gmail.com', '085817536870', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/343/59886cd9-deab-4737-a47c-102356d94818.jpg', 'Screenshot_20260914_120701.jpg', 'image/jpeg', 159758, '2026-09-14 05:12:04', '2026-09-14 06:03:01', 13, NULL, NULL, NULL, NULL, 'GIAkshheE5Mb7xgDrNtbdsSBePsXiBDl9mpUB6QZ', '2026-09-14 05:11:30', '2026-09-14 06:03:06'),
(344, 'WSD-20260914-TPEZ', 'Dika Husaini Suheri', 'P27903123205', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'dikahusaini7@gmail.com', '082297055886', 'Laki-laki', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/344/b89cf45b-832f-486f-b72b-5d5b7bcdf9bd.jpg', 'Transaksi_BCAmobile-20260914-121906.jpg', 'image/jpeg', 412344, '2026-09-14 05:20:13', NULL, NULL, NULL, NULL, NULL, NULL, 'oSjSwr3n185kWaFrGa7zPfx0t3OGaqaTBoLfM5cx', '2026-09-14 05:16:14', '2026-09-14 05:20:13'),
(345, 'WSD-20260914-4UE8', 'Putri Fajriah Agustina', 'P27903123034', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'ptrgstn98@gmail.com', '085817536870', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kopqu5ihy8EMnNNt0L71d2Qbv0bgl2lOvmv5LFnh', '2026-09-14 05:16:57', '2026-09-14 05:16:57'),
(346, 'WSD-20260914-M8FZ', 'Alda legi Pratama', 'P27902123005', NULL, 2, 'D3 Kebidanan', 2026, 'itsme.yla05@gmail.com', '087892841882', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/346/e4c0a87f-e969-4fda-8933-7d2b5523bb66.jpg', 'Screenshot_2026-09-13-08-44-54-46.jpg', 'image/jpeg', 183688, '2026-09-14 05:20:53', '2026-09-14 06:03:33', 13, NULL, NULL, NULL, NULL, 'UFZx3E0H7SfZkRTX3oRIg406DdYCGTo2prr7UfP6', '2026-09-14 05:19:31', '2026-09-14 06:03:37'),
(347, 'WSD-20260914-NATO', 'Safiratun Nisa', 'P27902122038', NULL, 2, 'D3 Kebidanan', 2026, 'safiratunnisa46@gmail.com', '089668484124', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/347/9566501c-e84b-4829-a107-0d48a141b05b.png', 'Screenshot_20260914-122719.png', 'image/png', 90508, '2026-09-14 05:27:48', NULL, NULL, NULL, NULL, NULL, NULL, 'Wmf6DyhSYtl9ejZ8BwgKGZhLiebwNSrgl0GKN0QZ', '2026-09-14 05:26:17', '2026-09-14 05:27:48'),
(348, 'WSD-20260914-N97O', 'Aliyah Laksmi Santosa', 'P27904122051', NULL, 8, 'Sarjana Terapan Keperawatan', 2026, 'alylaksmi@gmail.com', '082295786237', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/348/5c9275fd-63d3-4439-8ae4-754349c4b125.jpg', 'IMG-20260914-WA0024.jpg', 'image/jpeg', 78105, '2026-09-14 05:41:38', NULL, NULL, NULL, NULL, NULL, NULL, 'KLVxY73jQmjOndfiFe1XeLlneEj2taZZRVruxGGe', '2026-09-14 05:28:24', '2026-09-14 05:41:38'),
(349, 'WSD-20260914-JQDC', 'Restu Putri Anggraeni', 'P27903123036', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'rstptrrr@gmail.com', '087773114421', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/349/6e144370-e436-477f-a9f3-91cd8ee3643d.jpeg', 'WhatsApp Image 2026-09-14 at 12.39.13.jpeg', 'image/jpeg', 92339, '2026-09-14 05:39:56', NULL, NULL, NULL, NULL, NULL, NULL, 'JSo5otF8JgklKPfudrgElsxpEfyCwbc7mTYv3Gvu', '2026-09-14 05:36:36', '2026-09-14 05:39:56'),
(350, 'WSD-20260914-XPHU', 'Maysya Hani Handayani', 'P27903123124', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'maysyahani7282@gmail.com', '085216157203', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/350/ade23add-6e12-4af7-9140-fe84ae09717c.jpg', 'Screenshot_20260914-123936.jpg', 'image/jpeg', 286078, '2026-09-14 05:40:20', NULL, NULL, NULL, NULL, NULL, NULL, 'DC2cO8EfEfuQkFKveoUpcmUqV3sxrooRX2HPdIbp', '2026-09-14 05:38:36', '2026-09-14 05:40:20'),
(351, 'WSD-20260914-WRM7', 'Anika Putri', 'P27901123057', NULL, 1, 'D3 Keperawatan', 2026, 'anikaputri919@gmail.com', '081299296480', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/351/0196ae83-f3af-4111-960e-f4c4b0823e09.jpg', 'Screenshot_2026-09-14-12-45-24-69_121d0782f1cd8474b48c9b27865007fd.jpg', 'image/jpeg', 143274, '2026-09-14 05:47:38', NULL, NULL, NULL, NULL, NULL, NULL, 'IVrxGCajgaW2fAODYFSogkY0CXwnRo7VUwzonhKL', '2026-09-14 05:47:09', '2026-09-14 05:47:38'),
(352, 'WSD-20260914-ZV7N', 'Mutiara Salsabila', 'P27903123028', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'mtarasalsabila@gmail.com', '085864112995', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/352/31f3899e-fe86-4807-aeee-e8c2259caccc.jpg', 'Screenshot_20260914_125341_DANA.jpg', 'image/jpeg', 237722, '2026-09-14 05:56:26', '2026-09-14 06:55:35', 13, NULL, NULL, NULL, NULL, '3qG3Xp6vXzYNfkUmAhSf45WA5tobqSPW4cEQhC8k', '2026-09-14 05:51:13', '2026-09-14 06:55:40'),
(353, 'WSD-20260914-55OW', 'NAZWA AL HIDAYATI', 'P27902123067', NULL, 2, 'D3 Kebidanan', 2026, 'nazwaalhidayati@gmail.com', '083876390847', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/353/7856468d-8d39-4cb2-90ad-bc0f828c9b12.png', 'IMG_0794.png', 'image/png', 196867, '2026-09-14 06:01:23', '2026-09-14 06:19:57', 9, NULL, NULL, NULL, NULL, 'pD0YKS29w6mqVN9u07SW6k9ZtM4Oat4279IuWAN8', '2026-09-14 05:53:04', '2026-09-14 06:20:00'),
(354, 'WSD-20260914-8TTD', 'ALSA NUR ALIFAH', 'P27903123150', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'alsanur3015@gmail.com', '0895635323935', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'rdOVUZ8dY7oKLgDRxbamy23PJM55OEuWMzOItoZf', '2026-09-14 06:06:52', '2026-09-14 06:06:52'),
(355, 'WSD-20260914-QKW2', 'NADA NUR FATIKHAKH', 'P27903123076', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'nadanurfatikhah@gmail.com', '0895322509183', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/355/786c4a46-0d97-4bde-90f8-21025bdadb0a.jpg', 'Screenshot_20260914_130825_BRImo.jpg', 'image/jpeg', 664285, '2026-09-14 06:09:23', '2026-09-14 07:33:12', 13, NULL, NULL, NULL, NULL, '1RCKVn0nRBLMXMC7Q2Go9YC8CUN942xxT9eHTmIL', '2026-09-14 06:09:02', '2026-09-14 07:33:16'),
(356, 'WSD-20260914-P5AY', 'ALSA NUR ALIFAH', 'P27903123150', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'alsanur3015@gmail.com', '0895635323935', 'Perempuan', 'All Size', 'Uk. S atau M', 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/356/26a2d4bc-5aeb-47d4-a318-f5ce244f3f29.jpg', 'Screenshot_20260914_130639_BCA mobile.jpg', 'image/jpeg', 286190, '2026-09-14 06:12:47', NULL, NULL, NULL, NULL, NULL, NULL, 'qGMAYnBkeaUORVP4sCA9Dply9XRKjt7FzeBw3TSF', '2026-09-14 06:09:56', '2026-09-14 06:12:47'),
(357, 'WSD-20260914-CYPZ', 'Siti A\'afiyah', 'P27903123140', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'sitiaafiyah3ctlm@gmail.com', '085717259092', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/357/a062d2aa-5416-4a68-a640-ab14b9515a1f.jpg', 'IMG-20260914-WA0004.jpg', 'image/jpeg', 535040, '2026-09-14 06:47:56', NULL, NULL, NULL, NULL, NULL, NULL, 'JSbxVayGTeWy6QEETeTsboMUjHUJQ8nzi6zLof5R', '2026-09-14 06:44:19', '2026-09-14 06:47:56'),
(358, 'WSD-20260914-1DY0', 'Candra Dwi Prasetya', 'P27903123203', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'candradwip810@gmail.com', '089618859149', 'Laki-laki', 'All Size', 'TB: 150\r\nBB: 45\r\nUk baju: M', 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/358/7c307d4c-9c2e-45cd-85ff-614892e260bf.jpg', '1789368818541.jpg', 'image/jpeg', 471458, '2026-09-14 06:53:57', NULL, NULL, NULL, NULL, NULL, NULL, '88GzRjklXAY6bRZ9GzVqYRc1wsZqbW8dE5VfOt1S', '2026-09-14 06:50:55', '2026-09-14 06:53:57'),
(359, 'WSD-20260914-XWHV', 'Tiara Kania Dewi', 'P27902123040', NULL, 2, 'D3 Kebidanan', 2026, 'tiaratiara63260@gmail.com', '838 0579 2193', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/359/578a1c64-f2ab-4a7f-9e66-4985186a2a41.jpg', 'Transaksi_BCAmobile-20260914-140800.jpg', 'image/jpeg', 281111, '2026-09-14 07:08:27', NULL, NULL, NULL, NULL, NULL, NULL, 'LpbkTi4EnvHMzSi4qIyR1yxIY2H4NywIaCWB4w3B', '2026-09-14 07:00:04', '2026-09-14 07:08:27'),
(360, 'WSD-20260914-Q9UZ', 'Susan Nurmeida', 'P27901123101', NULL, 1, 'D3 Keperawatan', 2026, 'susannurmeida506@gmail.com', '083172206091', 'Perempuan', 'All Size', 'Uk m ya ka kl bisa soalnya saya bb 50 tb 150 pae allsize tkt jd gamis, terimakasih 🙏🏻', 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/360/2c6da4fe-2143-4966-b9cb-5d9552e7d839.jpg', 'image.jpg', 'image/jpeg', 2976283, '2026-09-14 07:11:16', NULL, NULL, NULL, NULL, NULL, NULL, 'chE3Rnf8NJUVUwG79IwTVDJjYm2x2dLFwt6igjH0', '2026-09-14 07:07:26', '2026-09-14 07:11:16'),
(361, 'WSD-20260914-S3VD', 'Nadia Dwi Mulya', 'P27903123221', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'nadiadwimulya430@gmail.com', '082122722024', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/361/4e970329-c8d6-41e4-a86e-e92cea7f3940.jpg', 'IMG-20260914-WA0007.jpg', 'image/jpeg', 56360, '2026-09-14 07:08:22', NULL, NULL, NULL, NULL, NULL, NULL, 'bDnUmwLxPV9OAheGrohd4rx94XCUw0RMAYUuFY9z', '2026-09-14 07:07:35', '2026-09-14 07:08:22'),
(362, 'WSD-20260914-YJZV', 'Putri Susanti', 'P27902123152', NULL, 2, 'D3 Kebidanan', 2026, 'putrisusanti983@gmail.com', '087709109288', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'j7YGdc5W3pDxkP1X99wkn1L4YKVKolxWBowPi4tF', '2026-09-14 07:13:40', '2026-09-14 07:13:40'),
(363, 'WSD-20260914-E5BD', 'PUTRI SUSANTI', 'P27902123152', NULL, 2, 'D3 Kebidanan', 2026, 'putrisusanti983@gmail.com', '087709109288', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0l3ZWC44DyEuCnktIgbwv6WT2XSR7lhaprJW0Zhr', '2026-09-14 07:18:04', '2026-09-14 07:18:04'),
(364, 'WSD-20260914-UDE3', 'RISMA MAULIDYA', 'P27902123153', NULL, 2, 'D3 Kebidanan', 2026, 'rismamaulidya79@gmail.com', '081296359422', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/364/dbe916a7-6d5e-4afa-a029-59f54d4c81e6.jpeg', 'IMG_7427.jpeg', 'image/jpeg', 2008742, '2026-09-14 07:27:11', NULL, NULL, NULL, NULL, NULL, NULL, 'XZlpirNcRD0beUjoEGF1bjtL8EWKdvLsVAmpQ1sy', '2026-09-14 07:21:19', '2026-09-14 07:27:11'),
(365, 'WSD-20260914-C9MT', 'Nurul Mahmudah', 'P27902123151', NULL, 2, 'D3 Kebidanan', 2026, 'nurulmahmudah810@gmail.com', '081221906027', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'eGi0Ilavcky5nZXZ93qN9U5QVS7qFM2l4RJGCyLF', '2026-09-14 07:23:32', '2026-09-14 07:23:32');

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
('3pDhww7YEfp5VTaFkQfZIxNBH71JYrLeT0FXBBU8', NULL, '114.8.197.64', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJiT2ZFZ1NFc1dNVWdrYWt6NUZhOHRKNUh5eFlHN0FqdWk3VnBtOXpQIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYVwvcGVzYW5hblwvV1NELTIwMjYwOTE0LTFEWTBcL3BlbWJheWFyYW4/dG9rZW49ODhHelJqa2xYQVk2YlJaOUd6VnFZUmMxd3NacWJXOGRFNVZmT3QxUyIsInJvdXRlIjoid2lzdWRhLnBheW1lbnQifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1789368837),
('3y6OHeLUwcU2yLDfthSdk9sgWKXxj3NXzJrAKsSJ', 13, '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJieFpiTjIxb0ExaXprMmFPWDJLQ3JvR0lINnljVXpWb1ZuZUZ2Z3cyIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL2FkbWluXC93aXN1ZGFcL29yZGVyc1wvcHJpbnQ/cGF5bWVudF9zdGF0dXM9dmVyaWZpZWQiLCJyb3V0ZSI6ImFkbWluLndpc3VkYS5vcmRlcnMucHJpbnQifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119LCJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI6MTN9', 1789371445),
('4kZHYEDepAZfhvIw3pHSraHN4x6yl05kM80xYZ0q', NULL, '103.140.78.234', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Mobile Safari/537.36', 'eyJfdG9rZW4iOiJoaWxWUWJrWk9xN0ozWGZsaFBGUklOdmJjOHVzQ1ZvcDh5VzhQM3RJIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYVwvcGVzYW5hblwvV1NELTIwMjYwOTE0LVFURVZcL3BlbWJheWFyYW4/dG9rZW49ejFYd0pnYm9MRHBTTFViRDZXemlnemFQZXpCaXpYVUpiZ2F2U0hySyIsInJvdXRlIjoid2lzdWRhLnBheW1lbnQifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1789366299),
('4Rf4EayAMOZByhlya3NndWlY8VQWqr8iJhJ038eK', 13, '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJINkFEZnZQMWxHQk9weVJPelFRcmFKT0NraXJadE0zWVBtQ3hHeUxNIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL2FkbWluXC93aXN1ZGFcL29yZGVyc1wvMzYwXC9wcmV2aWV3LXBheW1lbnQtcHJvb2YiLCJyb3V0ZSI6ImFkbWluLndpc3VkYS5vcmRlcnMucHJldmlldy1wYXltZW50LXByb29mIn0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfSwibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiOjEzfQ==', 1789371759),
('6q3tEhl8FPPT5SRPGu0JuCnT3Si799WVCDXQAt9C', NULL, '82.158.131.173', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_2_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) GSA/437.4.973319807 Mobile/15E148 Safari/604.1', 'eyJfdG9rZW4iOiJ5QUpJeUN5eHpNTk5EMVZHOHJOeWtIYm9ZWFRtQmg2UDZSdGc5VmhrIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL2JlcmFuZGEiLCJyb3V0ZSI6ImJlcmFuZGEifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1789364887),
('790u4LWmd63xYBAkRhYcKNoKGGUoBN9b52jPpgiS', NULL, '103.36.9.58', 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:24.0) Gecko/20100101 Firefox/24.0 Chrome/80.0.3987.132 Safari/537.36', 'eyJfdG9rZW4iOiJQdUdDd0xoUVc0eVFMaW5xMHZsRmxzOUpUZDROWDNtbjQzenpKSGtEIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYVwvcGVzYW5hblwvV1NELTIwMjYwOTExLVRBUkg/dG9rZW49RDFFZVlSOHd4dUtaQlhQZzNhYUZQN2diekFIV3gyM1pxQ2xPT0theSIsInJvdXRlIjoid2lzdWRhLm9yZGVyLnNob3cifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1789367719),
('7myRmDIxcz9xtcGhnGINDshWNKuMLaoS9GtNNbzD', NULL, '103.111.98.171', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', 'eyJfdG9rZW4iOiI2WWE4TjN6bGZNUU5GSDc5RGp1ak44NHRCRGZ0Q3BGMnhiT204bGtFIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYSIsInJvdXRlIjoid2lzdWRhLmluZGV4In0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1789370589),
('7QSmfn3p0i1UwkDcJGUfYUUsVtu4nMDXH28mNaaD', NULL, '82.158.131.208', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/30.0 Chrome/143.0.0.0 Mobile Safari/537.36', 'eyJfdG9rZW4iOiJUT1F0cEtGWVBaOFpTcUFnQ3BiWWpURm1Pc2xKekdxN0VTODNxaVdSIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYSIsInJvdXRlIjoid2lzdWRhLmluZGV4In0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1789366379),
('9ioJn4dnvPiaLLHUmBhry1rUF8zdoR4x1sezeGpu', NULL, '114.4.82.152', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/30.0 Chrome/143.0.0.0 Mobile Safari/537.36', 'eyJfdG9rZW4iOiJxT2oxM0NiOFRCejZ2anZPYUdkU0xwN094YlhUdzZ4NUhOQTBkN1NFIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYSIsInJvdXRlIjoid2lzdWRhLmluZGV4In0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1789369627),
('9pAnZY3TpzsR6Iqu5WKbvbi412rfcnFCvFdoALCs', NULL, '114.8.214.44', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJwOGRYRGVxUTR6cm1UcmVSNWdQTTFaYmhBRGtzSmFoZzQ4Y3QyNmFLIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYSIsInJvdXRlIjoid2lzdWRhLmluZGV4In0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1789364741),
('Bi27Ipz1eMxJKyoOI3t1T6XhS4WokMEyyEATr60k', NULL, '103.164.235.144', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Mobile Safari/537.36', 'eyJfdG9rZW4iOiJWdEFlUVZDUkw2QU1DR1JBUXlxZW5uelRFb2llVUJLYnZjWDhhbllvIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYVwvcGVzYW5hblwvV1NELTIwMjYwOTEzLVFWMVdcL3BlbWJheWFyYW4/dG9rZW49NnpnNWt4RFRkZDgxVVZmQnRrM1JPdFdRTWdmVDVobTE3Q25PemI2byIsInJvdXRlIjoid2lzdWRhLnBheW1lbnQifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1789371242),
('bJTUZteyESE9M2VrUkqy9196gaOsR7tdrLlSfiOu', NULL, '103.147.157.58', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Mobile Safari/537.36', 'eyJfdG9rZW4iOiJsS1BxOXU1bmJ5UkxDbDNaWWVLZXFrcVdSTEZtd00wZmQ2Vmk1R2h6IiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYSIsInJvdXRlIjoid2lzdWRhLmluZGV4In0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1789364555),
('BzhcGrRY2LNoL8gxV1xQzvspJHduH3bFwVmujVj5', NULL, '182.6.160.96', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/30.0 Chrome/143.0.0.0 Mobile Safari/537.36', 'eyJfdG9rZW4iOiJsMjZaTlNxeDdJZ2J4ZkRFNkFXRTlYUTJBSjZpb0lhbWFFQVU5S3E5IiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL2JlcmFuZGEiLCJyb3V0ZSI6ImJlcmFuZGEifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1789369924),
('c6seunZsvrK8UxWgHeJHB9lrlJFI8d5Aa7KoJ930', NULL, '103.36.11.145', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Mobile Safari/537.36', 'eyJfdG9rZW4iOiJ2bVduQldRNm4zcURET2lYQ0xQTlI4S0d3WWM2dTJjQzdLUlprd2U2IiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYVwvcGVzYW5hblwvV1NELTIwMjYwOTE0LU0xWkxcL3BlbWJheWFyYW4/dG9rZW49cDVPTEhEdlpBM3RMVno1M3FXNlg2eldwNVAxY0pBSDByTnFmOVg2cCIsInJvdXRlIjoid2lzdWRhLnBheW1lbnQifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1789366721),
('C7GFYQmfYYqQ78b4f7BShsybWVZ0ZEwBN4jY1DD6', NULL, '114.8.199.182', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJ5ZVViZWJyR0tzNHBhMUlIWkRjS0NFaFNwRGdBT0ZGZ3YyN1Zta2pHIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3Byb2R1a1wvcGVybmFrLXBlcm5pay1rd2FzLTIiLCJyb3V0ZSI6InByb2R1ay5zaG93In0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1789364452),
('cC0ldW55ZVP8Fxk28gYiGtQxRP0prhZybj6o1Mjc', NULL, '103.177.92.182', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', 'eyJfdG9rZW4iOiJEcXJZU1k1a1JDdXpxT0JDaXRBTFJ1V0VZQXhWWXlQQWRJNWlGc1RwIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYSIsInJvdXRlIjoid2lzdWRhLmluZGV4In0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1789369591),
('CFRRPb6AZPXxZu7BQqd65TBmj8OY2VfnxrVbJ2PS', NULL, '158.140.180.101', 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:24.0) Gecko/20100101 Firefox/24.0 Chrome/80.0.3987.132 Safari/537.36', 'eyJfdG9rZW4iOiI1a2lPR2E5dnFTN2lXcXRlV3VRSEZQdUF5MWF6OEt6dmZSTEJSekZOIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYVwvcGVzYW5hblwvV1NELTIwMjYwOTEzLU1PWVQ/dG9rZW49V1M3VTRqMHVWT3FxVzNyR3d2dzdwZk9xY2xPV3BxSVlXZkF3VHVNTiIsInJvdXRlIjoid2lzdWRhLm9yZGVyLnNob3cifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1789367333),
('CKriApMvTD7iWXmZuJcTwGYPzLhNZ12d6cDSwqw2', 9, '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJTZlhBZm1CQUlYa1hTeHZPOEFUdzcxWEdnWkFCOE9JRGp2NTlHQjlzIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL2FkbWluXC93aXN1ZGFcL29yZGVyc1wvMjIwXC9wcmV2aWV3LXBheW1lbnQtcHJvb2YiLCJyb3V0ZSI6ImFkbWluLndpc3VkYS5vcmRlcnMucHJldmlldy1wYXltZW50LXByb29mIn0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfSwibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiOjl9', 1789367069),
('cqn79YbEccxPHxC0fZOZSA0lQkKdM22Na7Lq5tWx', NULL, '2001:448a:20a0:9e65:34a6:5b04:f02:fea1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.7.5 Mobile/15E148 Safari/604.1', 'eyJfdG9rZW4iOiJWcUttVExORWhjNzlvc2dwa21zeDA3ZDg5aEYyd05NQmN0ZzcxVGdDIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYSIsInJvdXRlIjoid2lzdWRhLmluZGV4In0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1789370993),
('cXBoFiKbtfgREMrXtt9YtbMldtcFZV7HjjYf8taY', NULL, '160.22.134.45', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Mobile Safari/537.36', 'eyJfdG9rZW4iOiJRdzh6a2FVVmlHNnVwNEsxTEw4ZlljSkxPR2E0eVNvSkx0VWg4dnBRIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYVwvcGVzYW4iLCJyb3V0ZSI6Indpc3VkYS5vcmRlci5jcmVhdGUifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1789364860),
('dmfMZ0UgTmQgMRbjvXXR9fjgZRgLXyEXHvQgNJe4', NULL, '125.161.70.232', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJ4cFI0NXFhM2dQM1NycDlEREJIQmNveTllcnBPM3R6YXZCRXkxZDJUIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYSIsInJvdXRlIjoid2lzdWRhLmluZGV4In0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1789371514),
('eRyCyGyuVIEzXVlD3CrH3Z873TIFFCGwWYlaXGFu', NULL, '2001:448a:20b0:9055:f1b1:3e06:6e61:92c3', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Mobile Safari/537.36', 'eyJfdG9rZW4iOiJYTldlRkVQRVpWTmdPWU95Q2dSQTloTzU0N3J0ZFBDQmhXRlJRUWhrIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL2JlcmFuZGEiLCJyb3V0ZSI6ImJlcmFuZGEifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1789369972),
('FloKRubcZ6Zk3tptP2GL4ffBOHwG5fPOACyNVq9d', NULL, '103.153.134.58', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/601.2.4 (KHTML, like Gecko) Version/9.0.1 Safari/601.2.4 facebookexternalhit/1.1 Facebot Twitterbot/1.0', 'eyJfdG9rZW4iOiJwc2tuRGJiWVFXSjQ5YVA1ZDZ1bmxjanpyZjBIVUFxbmJFVFZ5RjhRIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYSIsInJvdXRlIjoid2lzdWRhLmluZGV4In0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1789369774),
('fvz7XZUXO0WArrdld8UNY9CjmZqJzuq0Jb3aKHf4', NULL, '2400:9800:3ac:3b08:b09f:f09d:5723:53c9', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.3 Mobile/15E148 Safari/604.1', 'eyJfdG9rZW4iOiJoeVNsNGVVRjAyYXJpT3g2bldkVXhKd1pYNmZaUmo1OU14VEtYYndwIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYVwvcGVzYW5hblwvV1NELTIwMjYwOTE0LVE5VVo/dG9rZW49Y2hFM1JuZjhOSlVWVXdHNzlJd1RWREpqWW0yeDJkTEZ3dDZpZ2pIMCIsInJvdXRlIjoid2lzdWRhLm9yZGVyLnNob3cifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1789370961),
('GBS6SSB5NSKs0e67EwvWfUnvivEaeNrVaAeRqR3B', NULL, '82.158.131.173', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJ6ejFnUzdkYWNabXVraVVEUW5hZWJOU1RyazlmMFhjMnUzY21DR0RKIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYVwvcGVzYW5hblwvV1NELTIwMjYwOTE0LUpRRENcL3BlbWJheWFyYW4/dG9rZW49SlNvNW90RjhKZ2tsS1BmdWRyZ0Vsc3hwRWZ5Q3diYzdtVFl2M0d2dSIsInJvdXRlIjoid2lzdWRhLnBheW1lbnQifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1789364396),
('gS213BvLhX6Nuf3Z9BJ2amMj96YA90BikYVsUjpQ', NULL, '103.177.177.217', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36', 'eyJfdG9rZW4iOiJqaVNYZ3JXaTc5TnMxRlB6YjdYZGZWTllKYWFwMzhVbDB4cURBRFpXIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYVwvcGVzYW5hblwvV1NELTIwMjYwOTE0LVdSTTdcL3BlbWJheWFyYW4/dG9rZW49SVZyeEdDYWpnYVcyZkFPRFlGU29na1kwQ1h3blJvN1ZVd3pvbmhLTCIsInJvdXRlIjoid2lzdWRhLnBheW1lbnQifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1789364858),
('h2QzOZGKLesRFtOmYWPq9ziU8Ae2mZYQXwpLT1Sn', NULL, '49.0.3.161', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.6.1 Safari/605.1.15', 'eyJfdG9rZW4iOiJveGF1dkQ1MFJ6clBabFY1dU9CWVpmNjBFYXlMSXhZczF3M25ZUmoxIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYSIsInJvdXRlIjoid2lzdWRhLmluZGV4In0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1789366151),
('HmggpmLHcyxkS0VJ2n5fcsUGUAzf8QnpZdRLShoL', NULL, '182.3.46.133', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Mobile Safari/537.36', 'eyJfdG9rZW4iOiJwZjZkQnN1M2tObUFwN3p6YWRscTcyM0cwbmpCajYzOGV6TGJtMG5aIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYVwvcGVzYW5hblwvV1NELTIwMjYwOTE0LU45N09cL3BlbWJheWFyYW4/dG9rZW49S0xWeFk3M2pRbWpPbmRmaUZlMVhlTGxuZUVqMnRhWlpSVnJ1eEdHZSIsInJvdXRlIjoid2lzdWRhLnBheW1lbnQifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1789364498),
('I0YvQzPYzaJ5yEHDEmqIjsH3jIM3jhvzR9yV5Bft', NULL, '114.10.26.189', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/601.2.4 (KHTML, like Gecko) Version/9.0.1 Safari/601.2.4 facebookexternalhit/1.1 Facebot Twitterbot/1.0', 'eyJfdG9rZW4iOiJXSW5NSGRQcVVTc0phaTNQck84Y1piMXprdDRwdVBvOVc4akxWQ2FWIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYVwvcGVzYW5hblwvV1NELTIwMjYwOTEzLVY1RVY/dG9rZW49dm1aRE4zMzYybTZrWWpSSE1rUGU5NGpVWTRaNWpLaFNqTmMwSmI2NiIsInJvdXRlIjoid2lzdWRhLm9yZGVyLnNob3cifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1789365296),
('iAVrR8fEEF0wxN7WasNhM5GQ9PBso96fXCNU4eFs', NULL, '103.255.163.14', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_4_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) GSA/437.4.973319807 Mobile/15E148 Safari/604.1', 'eyJfdG9rZW4iOiIxZGl3aG1GczVaczVaU2tLRThaTDcyR0NKNVRpckZMeHI4MmxDRjYxIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYSIsInJvdXRlIjoid2lzdWRhLmluZGV4In0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1789366201),
('IBcFnTNDG7cXyc45SiCavWfb2mvVnna0eIW8Xkt9', 9, '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJGZEc0M2Jqd2pQZWNIN3NxSUdxYkI5ODRZRVVrdTBDQ3ZONU5NUU5BIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL2FkbWluXC93aXN1ZGFcL29yZGVycz9kYXRlX2Zyb209JmRhdGVfdG89JmVtYWlsPSZncmFkdWF0aW9uX3llYXI9Jm5pbT0mb3JkZXJfY29kZT0mcGF5bWVudF9zdGF0dXM9JnBlcmlvZD0mcHJvb2ZfZmlsdGVyPSZzdGF0dXM9JnN0dWRlbnRfbmFtZT1hbGZpYSZzdHVkeV9wcm9ncmFtX2lkPSZ0b2dhX3NpemU9Iiwicm91dGUiOiJhZG1pbi53aXN1ZGEub3JkZXJzLmluZGV4In0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfSwibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiOjl9', 1789371650),
('KH4vPDMjRVdBfi7vZSimntKMCRAoF3xYPMtSltls', NULL, '114.8.204.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJRWGhsTUF1QkFZQjY4SktobE9vRkpueEFla2hlcjRHekMyUThWd0xuIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYVwvcGVzYW5hblwvV1NELTIwMjYwOTExLTNHSEM/dG9rZW49R0dzemJwWGxEYzRrc2hHaDVyQ2Y3MmVUSnAzcmRqTzZ6M3ZxOFNzcCIsInJvdXRlIjoid2lzdWRhLm9yZGVyLnNob3cifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1789369676),
('KrR65ndpzmV7DZ4F8yIjvedjN5dRZLBNodQCO0zS', NULL, '49.0.3.161', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.6.1 Mobile/15E148 Safari/604.1', 'eyJfdG9rZW4iOiJ0SWg3UW1sUmNUOWhxNXhFektqUVFJeUkxNkVTWk5SQmlqZFVRcHNaIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYSIsInJvdXRlIjoid2lzdWRhLmluZGV4In0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1789369495),
('LyiQ2LuBAuoWaYezvgD7LHOWel1YnEikdQ3MeVm8', NULL, '2001:448a:20a0:d668:61a9:976e:7013:f762', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_6_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.6 Mobile/15E148 Safari/604.1', 'eyJfdG9rZW4iOiJlc0RrTFpSQ05YblA4Zm9VOThoaE5JOW1FM1N0UmpLTzhleXlkbE9PIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYVwvcGVzYW5hblwvV1NELTIwMjYwOTE0LUU5Wk8/dG9rZW49THIwQkRSNzVTdDU5UzFiNU40UTk4M1dEd3VyOFRXdjI4Z21ZQXFmTCIsInJvdXRlIjoid2lzdWRhLm9yZGVyLnNob3cifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1789368557),
('nrI2eKaGU20zQIvRPfB2FcoWZnv11qx1emhukNFB', NULL, '140.213.251.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6.1 Mobile/15E148 Safari/604.1', 'eyJfdG9rZW4iOiJ6bW9DS0J1QmhVU1JUckk4bnQ2Zkw4RGRDZzBlendlYzduMkhkMkJaIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYVwvcGVzYW5hblwvV1NELTIwMjYwOTE0LUU1QkQ/dG9rZW49MGwzWldDNDREeUV1Q25rdElnYnd2NldUMlhTUjdsaGFwckpXMFpociIsInJvdXRlIjoid2lzdWRhLm9yZGVyLnNob3cifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1789370284),
('NS1c2530ogGajhVOmWtKVzt6rrLQiwiMrIp75l8k', NULL, '114.10.72.135', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Mobile Safari/537.36', 'eyJfdG9rZW4iOiJwZWhyMmZBU3BGOEFHVTZNVGh2QVhucEdEckZmMFJZVWI5OHNqZ2F2IiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYVwvcGVzYW5hblwvV1NELTIwMjYwOTExLThMUlY/dG9rZW49TXprMXFBbDB1dFdDRXdES2gxWnVtVG95TUVjTkEzcEVMVVZYUjJZZyIsInJvdXRlIjoid2lzdWRhLm9yZGVyLnNob3cifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1789369822),
('o9FjczRdmkPWbQDB7WSmXePjiwedvbYNQN38UdJf', NULL, '103.177.177.217', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Mobile Safari/537.36', 'eyJfdG9rZW4iOiJyemtLMFQ1eDNGSHdJZ2NZSDdKRmFXRjJpMDF2NEJ6OER1M1ppRXdRIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL2JlcmFuZGEiLCJyb3V0ZSI6ImJlcmFuZGEifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1789364361),
('OD0c2BjkPX0UjtTaxNEt4Pqc3pfKQKJKCUKRJi4P', NULL, '114.8.210.47', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Mobile Safari/537.36', 'eyJfdG9rZW4iOiJndVZUN05sTGJabUszRTF5ZzlXS09pb1IxbjZxZG9RbzlJbEZTNG9EIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL2FkbWluXC9sb2dpbiIsInJvdXRlIjoiYWRtaW4ubG9naW4ifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1789369428),
('OrImuCciKFOEZCTcgYwbymf9m6NU0erFP42IKVNR', NULL, '157.85.212.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJLVFFSWk1BN0hvWU1valFPOU9RTWNSS1pXV0tqVFgzdHAyZ1JtQXNvIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYVwvcGVzYW5hblwvV1NELTIwMjYwOTE0LVA1QVk/dG9rZW49cUdNQVluQmtlYVVPUlZQNHNDQTlEcGx5OVhSS2p0N0Z6ZUJ3M1RTRiIsInJvdXRlIjoid2lzdWRhLm9yZGVyLnNob3cifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1789367987),
('pa17lVhcyGlnRqb2reF5GKR1b8ZZwoXGyD0gVPkq', NULL, '114.4.214.125', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/29.0 Chrome/136.0.0.0 Mobile Safari/537.36', 'eyJfdG9rZW4iOiI2aGtOVmloYkpXTFF1U1JrQWZ0a1JDNHR6RWxuNlVnRHBpSFZxMmJZIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYVwvcGVzYW5hblwvV1NELTIwMjYwOTE0LVMzVkRcL3BlbWJheWFyYW4/dG9rZW49YkRuVW13THhQVjlPQWhlR3JvaGQ0cng5NFhDVXcwUk1BWVV1Rlk5eiIsInJvdXRlIjoid2lzdWRhLnBheW1lbnQifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1789369702),
('pakjwfFrgsfQ8IJXOVpuJuod5PPDUkF0x6bRuXGe', NULL, '103.177.177.217', 'Mozilla/5.0 (Linux; U; Android 14; in-id; CPH2387 Build/TP1A.220905.001) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.5970.168 Mobile Safari/537.36 HeyTapBrowser/45.14.7.1', 'eyJfdG9rZW4iOiI0N2JFVUxwcWQwaGFQNW9LMG5tZkl6MnQ0QU9RbUVhV2RXS05vaHRsIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3Byb2R1a1wvcGFrZXQtYmFqdS10b2dhLXdpc3VkYS1wb2x0ZWtrZXMta2VtZW5rZXMtYmFudGVuIiwicm91dGUiOiJwcm9kdWsuc2hvdyJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19', 1789364393),
('pBfwe9QW6EwgyI7cCnCiDBYEgdpTVweFwyOHa1JJ', NULL, '103.125.19.27', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJKb241bkJQdXdFeDFIdmVkeDZ4ZkZkdFB0aWNlbXpGdnJnTmNjdXk4IiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYVwvcGVzYW5hblwvV1NELTIwMjYwOTE0LUM5TVQ/dG9rZW49ZUdpMElsYXZja3k1blpYWjkzcU45VTVRVlM3cUZNMmw0UkpHQ3lMRiIsInJvdXRlIjoid2lzdWRhLm9yZGVyLnNob3cifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1789370612),
('PdnactdtmZtiuyJK4KjPMtNDmPrWHTjhU6x3mQzX', NULL, '112.215.151.52', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.5 Mobile/15E148 Safari/604.1', 'eyJfdG9rZW4iOiI4RXBlaGd4ZE9wbzk1dmFqOHlZWXRiT1ZSWGZXdWNxRnNaSjhqSmtQIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYVwvcGVzYW5hblwvV1NELTIwMjYwOTE0LTU1T1dcL3BlbWJheWFyYW4/dG9rZW49cEQwWUtTMjl3Nm1xVk45dTA3U1c2azladE00T2F0NDI3OUl1V0FOOCIsInJvdXRlIjoid2lzdWRhLnBheW1lbnQifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1789365683),
('Pkx0gr4R6WgOzi7O4f2YcYTrtZzWswfv4XbukuTA', NULL, '103.36.9.58', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/30.0 Chrome/143.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJyQ2lGSzFFaktDaXQzdWloQnhiekZJaWw5cElpMmEyclV0SFlFb0RFIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYVwvcGVzYW5hblwvV1NELTIwMjYwOTExLVRBUkg/dG9rZW49RDFFZVlSOHd4dUtaQlhQZzNhYUZQN2diekFIV3gyM1pxQ2xPT0theSIsInJvdXRlIjoid2lzdWRhLm9yZGVyLnNob3cifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1789367711),
('pOuDRYutE2ba7fie5EwcU5QM7UMwHPfNyPuoPs7g', NULL, '2001:448a:20b0:a9c0:39d9:62b:ea1:2157', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/601.2.4 (KHTML, like Gecko) Version/9.0.1 Safari/601.2.4 facebookexternalhit/1.1 Facebot Twitterbot/1.0', 'eyJfdG9rZW4iOiJXSDV1aHliQ29TcVlCeThIQmpQc2dZRmpzTE9GeFBhNkpHdGQzSjRlIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL2JlcmFuZGEiLCJyb3V0ZSI6ImJlcmFuZGEifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1789368070),
('Qg8X1KDRtkML38YPka8GDewZmHaC74JJCwBPYxPy', NULL, '2001:448a:2050:a9ba:23b7:5ba0:1bb4:adf7', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJSNnBHZ1l6cVhBUmc4eGJISEVrOUFuQmNuTE84TThCeGhHdE1sbDk4IiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYSIsInJvdXRlIjoid2lzdWRhLmluZGV4In0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1789369824),
('rOICOTo58dXbiM4AOj5lYK2f0ey1WdlBTZMLXynp', NULL, '140.213.132.166', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Mobile Safari/537.36', 'eyJfdG9rZW4iOiJRS0JQNzRVVTRpZ1AwTmZ6RDd6RnpSNjZtQkNXY2hOYkxOQjJrR1dxIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL2JlcmFuZGEiLCJyb3V0ZSI6ImJlcmFuZGEifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1789370246),
('Rsxl0wFV3P0bdDB3RvxkSH9yKKIILTZ4Zz77NNFm', NULL, '114.8.211.7', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/152.0.7977.64 Mobile/15E148 Safari/604.1', 'eyJfdG9rZW4iOiIwcENoNFdVZ3ZCZ2tUMjVhZk45ZUZ0eVBrTXNEYnI4YVJqYU9JSnI4IiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYSIsInJvdXRlIjoid2lzdWRhLmluZGV4In0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1789369448),
('SMkC9ECGZlPw2ETI8QoAlWT1ABgZ75xKtPfF1H1T', NULL, '2001:448a:20a0:d668:61a9:976e:7013:f762', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_6_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.6 Mobile/15E148 Safari/604.1', 'eyJfdG9rZW4iOiJmajZQTTBPVVF3d1djV1puUW9LV0pESTJZdE10SW9NUjVsZW5ZTURUIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYSIsInJvdXRlIjoid2lzdWRhLmluZGV4In0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1789368235),
('uBvB4oClwtSb2B6xAq4oxsm94zjl379NJFmqYqt8', NULL, '2001:448a:20a0:9a02:e913:99c5:1b7b:11e0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJnclZMcVRPVTd0ZXdJUlVFdFF6dU83eTdUZjVtaTRldU9uVlZhNVVnIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYSIsInJvdXRlIjoid2lzdWRhLmluZGV4In0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1789364840),
('uOwPS989tEvo4WOIt49beqWy7VkRmfMfhzAuzBqv', NULL, '2001:448a:20b0:a9c0:39d9:62b:ea1:2157', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.3 Mobile/15E148 Safari/604.1', 'eyJfdG9rZW4iOiJndnQ4UXZjaVRuZ2hrMVRrb3kwMFFQd0prcVNnanA1M2lsWUh6NmdmIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL2JlcmFuZGEiLCJyb3V0ZSI6ImJlcmFuZGEifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1789368070),
('uWBRmpwC0ktgKN471h0h4mQLrrPyxh9DN7RtoKxo', NULL, '2001:448a:2016:2e82:59be:9f55:938e:6c8a', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/147.0.7727.99 Mobile/15E148 Safari/604.1', 'eyJfdG9rZW4iOiI0NzBsdkpVOFBlUU9qYkptdFljMXVsT1NUTFhMRkdXbXQzMmRDbndVIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYVwvcGVzYW5hblwvV1NELTIwMjYwOTE0LVVERTM/dG9rZW49WFpscGlyTmNSRDBiZVVqb0VHRjFianRMOEVXS2R2THNWQW1wUTFzeSIsInJvdXRlIjoid2lzdWRhLm9yZGVyLnNob3cifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1789370867),
('wFClkHwWa8SdgTLNyg3s0OaYIfvka6ju9iNx3rVG', NULL, '103.153.134.58', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.5 Mobile/15E148 Safari/604.1', 'eyJfdG9rZW4iOiJkb0pqMnlNbDJ6TGI5MTE0WG5xckNwemlTSWg4aXNsQjZsZUhIWUtOIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYSIsInJvdXRlIjoid2lzdWRhLmluZGV4In0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1789369774),
('Wx2iJLafjVLiweokG3OlHods3TGrVLVBNFF478y4', NULL, '182.253.152.223', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJ3WGlXeGNib01wem5EaVJjZXlHZUtFR1ozVlhmRnBFeUdBMHNUcGdFIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYSIsInJvdXRlIjoid2lzdWRhLmluZGV4In0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1789369614),
('XAOlpePL5g0gYI8GHFWOpYdOiPl4TzA0rL7pEREi', NULL, '163.128.163.11', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.6 Mobile/15E148 Safari/604.1', 'eyJfdG9rZW4iOiJWQVE1NFh4RFRFdXc3RVhUUHpJTHRrb1J0aVVzaXJ2bG9TT3YxY21zIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYSIsInJvdXRlIjoid2lzdWRhLmluZGV4In0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1789366356),
('xIODgqcvQc7cxuqZ0lo8MHX5Yj149nlH4YA5nht2', NULL, '180.243.14.175', 'Mozilla/5.0 (Linux; Android 12; SAMSUNG SM-A127F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/22.0 Chrome/111.0.5563.116 Mobile Safari/537.36', 'eyJfdG9rZW4iOiJpenZTZWRTeTAwVmdvbTlDdzd5U25HQnZYUDF6aG1vNTBzVm1tNlhPIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYVwvcGVzYW5hblwvV1NELTIwMjYwOTE0LVhXSFZcL3BlbWJheWFyYW4/dG9rZW49THBia1RpNEVudkhNelNpNHFJeVIxeXhJWTJINE55d0lhQ1dCNHczQiIsInJvdXRlIjoid2lzdWRhLnBheW1lbnQifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1789369707),
('ydskUt0qWWmP75DMaAUFg1aA8Qrf8xDrky7NKSne', NULL, '38.248.19.73', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/30.0 Chrome/143.0.0.0 Mobile Safari/537.36', 'eyJfdG9rZW4iOiIyS1QycEc4RHphVmhoSnEwa21rVXpPRE1KR1RaaFJTWmt1R2E2M21ZIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYVwvcGVzYW5hblwvV1NELTIwMjYwOTE0LVpWN05cL3BlbWJheWFyYW4/dG9rZW49M3FHM1hwNnZYellOZmtVbUFoU2Y0NVdBNXRvYnFTUFc0Y0VRaEM4ayIsInJvdXRlIjoid2lzdWRhLnBheW1lbnQifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1789365386),
('YEAuI5WnM786rhYmGpgcRkS591ADZ0MuqZpyx9Fe', NULL, '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36 Edg/153.0.0.0', 'eyJfdG9rZW4iOiJtUmloVVpzcG5HWmFXRm10NG9rdTZZUklUdjV4REpldEU1UGVoODRBIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL2JlcmFuZGEiLCJyb3V0ZSI6ImJlcmFuZGEifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1789371705),
('ZQUwWcmBuvFRDUd1CBaj9Q1zxVIQN50z4t1BHOa2', NULL, '2001:448a:20a0:8e79:b663:850f:1af2:3d05', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJSd0NBZkFtNkk4QndYZE5XaHVGbTBsTFRvdlV0NlNrRk82a0RBVHFIIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYVwvcGVzYW5hblwvV1NELTIwMjYwOTE0LUNZUFpcL3BlbWJheWFyYW4/dG9rZW49SlNieFZheUdUZVd5NlFFRVRlVHNib01VakhVSlE4bnppNnpMb2Y1UiIsInJvdXRlIjoid2lzdWRhLnBheW1lbnQifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1789368476),
('zvXkvwVm6cMe9MpxE4XEE8si00zDq1oHUpQYA4Db', NULL, '82.158.131.223', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJVOEdlVmlQYWVpd2FjNGl0Q2gzRGNsNkwwVDgxY2MzSDVzcWFXT0djIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYVwvcGVzYW5hblwvV1NELTIwMjYwOTEzLVNaQkdcL3BlbWJheWFyYW4/dG9rZW49U3lVUUJMYjV1Nkt6ck9DVFo5bk9ySkdhVFVyRDhQMGg5QUU1Y0MzbSIsInJvdXRlIjoid2lzdWRhLnBheW1lbnQifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1789366646);

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
(1, 'Qowiyrofi', 'qowiyrofi@poltekkesbanten.ac.id', '2026-09-09 01:19:10', '$2y$12$KjLYD4Ti/rW6U/Y1mA0iPeAw/CDI5Ppfxxgj/8IMxGfA0ZRDymGCe', 'superadmin', NULL, 0, 1, 'CwzEoWwpV7jkRjWeVODGGcz4wQWXUQPphe40Ipk2QeoJhQPaCGrLdHl349Vq', '2026-06-09 02:56:18', '2026-09-09 02:41:19'),
(2, 'Kuntum Ekawati', 'kuntum.ekawati@poltekkesbanten.ac.id', '2026-09-09 01:19:10', '$2y$12$Ih6wrjWGCyaAnRXR1p3atOtswAuoKbERjges5SWX3PkVgzz2A7DHy', 'superadmin', NULL, 0, 1, NULL, '2026-06-09 02:56:18', '2026-09-09 02:41:19'),
(3, 'Osep Yasier', 'osep.yasier@poltekkesbanten.ac.id', NULL, '$2y$12$sdmqsV0kYo98RBr0fUE0OeukpX0C7LoLY41CI5HMWDQSoGGWkGupK', 'superadmin', NULL, 0, 1, 'nNktLSIHkjgOfBMRimk5cOhFUwHTnZnnPyGQEOejwuUf209AdGlsSCQtedjJ', '2026-06-10 03:40:16', '2026-06-10 03:43:02'),
(4, 'Shofi Rofifah', 'shofi.rofifah@poltekkesbanten.ac.id', NULL, '$2y$12$nwr4zoWl6aZdyglgiMMkEu2nNW49A9G9RHJpF9Ar3kg5BqY1dx7eS', 'superadmin', NULL, 0, 1, 'Tpyjc3CeB7273qGrLHYDib9uegRPaoip3iAutuDCJVApUgKHrrf0uWd4saTF', '2026-06-10 03:40:16', '2026-06-10 03:41:25'),
(5, 'Admin D3 Kebidanan', 'poltekkesadakpoltekkes@gmail.com', NULL, '$2y$12$MseLhtIonxZp.1W7/0YwEOT7SjoBkYdYu/P.wWgqmRh7Sn7xInt2e', 'admin_jurusan', 2, 0, 1, NULL, '2026-06-26 04:25:08', '2026-07-10 06:58:11'),
(6, 'Admin D3 Keperawatan', 'd3.keperawatan@poltekkesbanten.ac.id', NULL, '$2y$12$FMt64mrKXZ2mp7XAkaK0ge57qrpsyV86YZJC5tPvnzuKQ4wDBEgI2', 'admin_jurusan', 1, 0, 1, NULL, '2026-06-26 04:25:08', '2026-07-10 07:00:39'),
(7, 'Admin D3 TLM', 'adak.tlm@poltekkesbanten.ac.id', NULL, '$2y$12$UZF1cCWO6dAkTnapjsSTV.ZgWyZaeegv42iwSiP0MdaDYAX5qS2ny', 'admin_jurusan', 3, 0, 1, NULL, '2026-06-26 04:25:08', '2026-07-10 07:02:12'),
(8, 'Admin STR Ners', 'strners@poltekkesbanten.ac.id', NULL, '$2y$12$JxJSI/KGg3cNgFuV2pWUxuIpVZ3yhjQgYW0n.aaVjSnq77AV7jQa2', 'admin_jurusan', 8, 1, 1, NULL, '2026-06-26 04:25:09', '2026-06-26 04:25:09'),
(9, 'Putri Dewi', 'putri.dewi@poltekkesbanten.ac.id', '2026-09-09 01:19:10', '$2y$12$MY5K8pGfzrmn4pJKUuJ1f.lvJNOGjhHkrqUBMgzxQH4beDueq0KmO', 'superadmin', NULL, 0, 1, 'KxpmZ1BShTIhA6ONK1zKnKfWUZgMVauox4P8XeX6y7oiwL0YTsWU9LsVJGxE', '2026-09-09 01:19:11', '2026-09-09 02:41:19'),
(10, 'Dias Arliadini', 'dias.arliadini@poltekkesbanten.ac.id', '2026-09-09 01:19:11', '$2y$12$pIGAXMMCzGufHSvMEe/uPOZleJAMVzQn..AImVXIZBaKIcEvR2Alu', 'superadmin', NULL, 0, 1, NULL, '2026-09-09 01:19:11', '2026-09-09 02:41:19'),
(11, 'Hadits Lissentiya', 'hadits.lissentiya@poltekkesbanten.ac.id', '2026-09-09 02:41:19', '$2y$12$BKDID4wn3BzuXSsIDu1OB.XYfcU8o7DLvU/oDF2Js6YZ4fBldQj0m', 'superadmin', NULL, 0, 1, NULL, '2026-09-09 02:41:20', '2026-09-09 02:41:20'),
(12, 'Ida Lindawati', 'ida.lindawati@poltekkesbanten.ac.id', '2026-09-09 02:41:20', '$2y$12$fwd760nOgiwyX9Q6oIDmVO4YCfJtvMV44FlLwrMQgWg84DjsaBoSG', 'superadmin', NULL, 0, 1, NULL, '2026-09-09 02:41:20', '2026-09-09 02:41:20'),
(13, 'Lailatul Fadilah', 'lailatul.fadilah@poltekkesbanten.ac.id', '2026-09-09 03:16:18', '$2y$12$nuvZCf5c8I343qQ1BmhiH.etDJcstum217N2KLeIunevIQdyDItNC', 'superadmin', NULL, 0, 1, 'B2VdQHP70hnXocnS7cEcKOF78pxLb9wZHobxDMr2jujWB1hSt0IoE2FSkUlR', '2026-09-09 03:16:19', '2026-09-09 03:16:19');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=366;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
