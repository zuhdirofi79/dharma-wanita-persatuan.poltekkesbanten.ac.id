-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Waktu pembuatan: 18 Sep 2026 pada 05.56
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
(70, 13, 'login', 'Login admin berhasil.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36', '2026-09-14 07:35:55'),
(71, 10, 'login', 'Login admin berhasil.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-14 08:18:45'),
(72, 9, 'login', 'Login admin berhasil.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-14 08:30:47'),
(73, 13, 'logout', 'Logout admin.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36', '2026-09-14 08:39:18'),
(74, 9, 'login', 'Login admin berhasil.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36', '2026-09-14 08:39:26'),
(75, 9, 'login', 'Login admin berhasil.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36', '2026-09-14 12:21:07'),
(76, 10, 'login', 'Login admin berhasil.', '2402:8780:106b:4aaf:ec2f:947f:737b:157b', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-14 12:31:51'),
(77, 10, 'login', 'Login admin berhasil.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-15 01:50:45'),
(78, 13, 'login', 'Login admin berhasil.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-15 04:46:27'),
(79, 10, 'login', 'Login admin berhasil.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-15 07:29:08'),
(80, 9, 'login', 'Login admin berhasil.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36', '2026-09-15 08:51:04'),
(81, 13, 'login', 'Login admin berhasil.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-16 02:37:58'),
(82, 13, 'login', 'Login admin berhasil.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-17 02:43:30'),
(83, 13, 'login', 'Login admin berhasil.', '103.177.177.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-17 09:26:12'),
(84, 10, 'login', 'Login admin berhasil.', '2402:8780:106b:4aaf:5845:7eea:5964:5404', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36', '2026-09-17 13:55:36');

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
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-00992865fea4d554bea48f0223001f49973f4212', 'i:1;', 1789433362),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-00992865fea4d554bea48f0223001f49973f4212:timer', 'i:1789433362;', 1789433362),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-00fbd0dec7ce1bab99ac2c0bd1c5c3a37a05c961', 'i:1;', 1789641482),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-00fbd0dec7ce1bab99ac2c0bd1c5c3a37a05c961:timer', 'i:1789641482;', 1789641482),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-01398d541e1231e3af9ac6c0b8a557b6eda06168', 'i:2;', 1789706302),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-01398d541e1231e3af9ac6c0b8a557b6eda06168:timer', 'i:1789706302;', 1789706302),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-025a01fe387f37fa92fe5285d776eef40496b231', 'i:2;', 1789639333),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-025a01fe387f37fa92fe5285d776eef40496b231:timer', 'i:1789639333;', 1789639333),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-03aaafba0ae3a949cdb81a78139e679617b90c3f', 'i:1;', 1789621490),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-03aaafba0ae3a949cdb81a78139e679617b90c3f:timer', 'i:1789621490;', 1789621490),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-03c5aac6b7eb6436aa8c767d22d7d8df898aff31', 'i:1;', 1789441206),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-03c5aac6b7eb6436aa8c767d22d7d8df898aff31:timer', 'i:1789441206;', 1789441206),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-0489e4e8d24452ba7fddfd44ed7bf79a511554a4', 'i:2;', 1789619706),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-0489e4e8d24452ba7fddfd44ed7bf79a511554a4:timer', 'i:1789619706;', 1789619706),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-06c935895164ce810474e457290d3f4c62d0ba59', 'i:1;', 1789645123),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-06c935895164ce810474e457290d3f4c62d0ba59:timer', 'i:1789645123;', 1789645123),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-08adea191a14e33fc3e66269af1bb70938df6a22', 'i:2;', 1789574559),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-08adea191a14e33fc3e66269af1bb70938df6a22:timer', 'i:1789574559;', 1789574559),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-0a050444213ab5a61e03d47cafd16d5f922696de', 'i:1;', 1789481647),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-0a050444213ab5a61e03d47cafd16d5f922696de:timer', 'i:1789481647;', 1789481647),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-0aafae9b7e073261fc69417795bca6e6068eac7d', 'i:1;', 1789482942),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-0aafae9b7e073261fc69417795bca6e6068eac7d:timer', 'i:1789482942;', 1789482942),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-0b41d6a91cbfeb65d4e1fe2fb0ff030edfbce65b', 'i:1;', 1789619967),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-0b41d6a91cbfeb65d4e1fe2fb0ff030edfbce65b:timer', 'i:1789619967;', 1789619967),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-0d24997af95c4166a3778de0b9d0db85f94ebade', 'i:1;', 1789456569),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-0d24997af95c4166a3778de0b9d0db85f94ebade:timer', 'i:1789456569;', 1789456569),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-0f27c777f3ef7e4cce8a0429e8f26be4dcb35cd7', 'i:1;', 1789450503),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-0f27c777f3ef7e4cce8a0429e8f26be4dcb35cd7:timer', 'i:1789450503;', 1789450503),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-0f5ff7d90b97fea51c63efd7ddd86bf1616eb47a', 'i:1;', 1789565703),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-0f5ff7d90b97fea51c63efd7ddd86bf1616eb47a:timer', 'i:1789565703;', 1789565703),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-107c2bfe2e6f71331d365ba48b350f65d485ea25', 'i:1;', 1789447768),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-107c2bfe2e6f71331d365ba48b350f65d485ea25:timer', 'i:1789447768;', 1789447768),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-1171ebe58da77477c730e3724ac3d53294e303ab', 'i:1;', 1789452807),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-1171ebe58da77477c730e3724ac3d53294e303ab:timer', 'i:1789452807;', 1789452807),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-11abee5d705eca3e51eb4e0004d145e9f7fffb79', 'i:1;', 1789555542),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-11abee5d705eca3e51eb4e0004d145e9f7fffb79:timer', 'i:1789555542;', 1789555542),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-124f15b183b5be009335014d9aece0c5f00781e5', 'i:1;', 1789437319),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-124f15b183b5be009335014d9aece0c5f00781e5:timer', 'i:1789437319;', 1789437319),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-134c86e2b0bddaae0cfa0963207137af6e21cc1a', 'i:2;', 1789579594),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-134c86e2b0bddaae0cfa0963207137af6e21cc1a:timer', 'i:1789579594;', 1789579594),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-137b578db85ebf1b0291c865dca367c9678fcb50', 'i:1;', 1789445088),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-137b578db85ebf1b0291c865dca367c9678fcb50:timer', 'i:1789445088;', 1789445088),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-146d056ee24790a2d9b152c2ec0488dea0c24851', 'i:1;', 1789531734),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-146d056ee24790a2d9b152c2ec0488dea0c24851:timer', 'i:1789531734;', 1789531734),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-180f3bf3eb9b9b32ec86363e6777a2ebb7b3b812', 'i:1;', 1789606494),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-180f3bf3eb9b9b32ec86363e6777a2ebb7b3b812:timer', 'i:1789606494;', 1789606494),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-192f4d50b4ffa4f1f4eb3e6a7db416c9e73de7c1', 'i:1;', 1789628997),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-192f4d50b4ffa4f1f4eb3e6a7db416c9e73de7c1:timer', 'i:1789628997;', 1789628997),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-194d4fb7a9b5a03606850ad0e527edb71ab1edf8', 'i:1;', 1789632748),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-194d4fb7a9b5a03606850ad0e527edb71ab1edf8:timer', 'i:1789632748;', 1789632748),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-194f01147f90c01f16da0db50a561f1efaa70d3e', 'i:2;', 1789619028),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-194f01147f90c01f16da0db50a561f1efaa70d3e:timer', 'i:1789619028;', 1789619028),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-1a2a7b03ae943383e46cfd9fa3dbad19af59294c', 'i:1;', 1789472048),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-1a2a7b03ae943383e46cfd9fa3dbad19af59294c:timer', 'i:1789472048;', 1789472048),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-1be8d0f017f322c9e23729b0be4f33093fd21119', 'i:1;', 1789616042),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-1be8d0f017f322c9e23729b0be4f33093fd21119:timer', 'i:1789616042;', 1789616042),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-1c294c583ac572b73a1403b426b0bb7e22d5f4fe', 'i:1;', 1789532473),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-1c294c583ac572b73a1403b426b0bb7e22d5f4fe:timer', 'i:1789532473;', 1789532473),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-1e9635cdc781ad790587565a8eff7844142f0d8d', 'i:2;', 1789613507),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-1e9635cdc781ad790587565a8eff7844142f0d8d:timer', 'i:1789613507;', 1789613507),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-1fca4d46f9225b8ab0a5c61256f02d832b588872', 'i:1;', 1789442873),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-1fca4d46f9225b8ab0a5c61256f02d832b588872:timer', 'i:1789442873;', 1789442873),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-200994f7d543bef1d059940325cb7b000ea55f21', 'i:1;', 1789607130),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-200994f7d543bef1d059940325cb7b000ea55f21:timer', 'i:1789607130;', 1789607130),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-20227abbf36bfac88018f02c7c88c7835bbac880', 'i:1;', 1789431510),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-20227abbf36bfac88018f02c7c88c7835bbac880:timer', 'i:1789431510;', 1789431510),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-20efb80790768592e9776944634e72aa425229c9', 'i:1;', 1789527635),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-20efb80790768592e9776944634e72aa425229c9:timer', 'i:1789527635;', 1789527635),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-20f6e0de0f18ee59fb70517bab1273cdc2536a2b', 'i:1;', 1789439792),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-20f6e0de0f18ee59fb70517bab1273cdc2536a2b:timer', 'i:1789439792;', 1789439792),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-23672466d72ca2b59017f93ee762c75e5b500255', 'i:1;', 1789642620),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-23672466d72ca2b59017f93ee762c75e5b500255:timer', 'i:1789642620;', 1789642620),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-26065fa7e3b7dc35d5aae3d2ba974ce9bcd002e0', 'i:1;', 1789573592),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-26065fa7e3b7dc35d5aae3d2ba974ce9bcd002e0:timer', 'i:1789573592;', 1789573592),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-260a5aac529dec6cb462b752065425c43a3fbfe3', 'i:1;', 1789452776),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-260a5aac529dec6cb462b752065425c43a3fbfe3:timer', 'i:1789452776;', 1789452776),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-287df5a754f413eec17d2c236ed5e9a686eb0859', 'i:1;', 1789441257),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-287df5a754f413eec17d2c236ed5e9a686eb0859:timer', 'i:1789441257;', 1789441257),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-2a07227f87d2cd13279d1129e627b4b2be0425e9', 'i:1;', 1789614046),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-2a07227f87d2cd13279d1129e627b4b2be0425e9:timer', 'i:1789614046;', 1789614046),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-2b68499c831a429c4471ee41811c1d702fdb16a7', 'i:2;', 1789458629),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-2b68499c831a429c4471ee41811c1d702fdb16a7:timer', 'i:1789458629;', 1789458629),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-2bf955b7fb9b6273ffd0a7a770299647d9f7dfc5', 'i:2;', 1789640168),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-2bf955b7fb9b6273ffd0a7a770299647d9f7dfc5:timer', 'i:1789640168;', 1789640168),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-2f44c05030eec7f2eade289b87274fcca546856e', 'i:2;', 1789615152),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-2f44c05030eec7f2eade289b87274fcca546856e:timer', 'i:1789615152;', 1789615152),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-2ffa544d52ce29af1b453dc519af3495d86b5db5', 'i:1;', 1789545877),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-2ffa544d52ce29af1b453dc519af3495d86b5db5:timer', 'i:1789545877;', 1789545877),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-305be68fa3ccb525b45c92e7118366f60cadb099', 'i:1;', 1789452309),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-305be68fa3ccb525b45c92e7118366f60cadb099:timer', 'i:1789452309;', 1789452309),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-337aacc661f9839daf6c61f5a0f5656ff8d256b4', 'i:1;', 1789539083),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-337aacc661f9839daf6c61f5a0f5656ff8d256b4:timer', 'i:1789539083;', 1789539083),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-3456206a5f902d98305f5b60d193138539e04b70', 'i:1;', 1789687246),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-3456206a5f902d98305f5b60d193138539e04b70:timer', 'i:1789687246;', 1789687246),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-35511e35c9da3f128fd31490b0aec5035eec1753', 'i:1;', 1789454654),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-35511e35c9da3f128fd31490b0aec5035eec1753:timer', 'i:1789454654;', 1789454654),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-3806c5c2603f280315c0fea6321340af2219fb0e', 'i:1;', 1789617337),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-3806c5c2603f280315c0fea6321340af2219fb0e:timer', 'i:1789617337;', 1789617337),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-3b32c9e9cb9ca5778c6453529b8f31abcd33d118', 'i:1;', 1789541454),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-3b32c9e9cb9ca5778c6453529b8f31abcd33d118:timer', 'i:1789541454;', 1789541454),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-3cd64a7e34075bbf50a6b79cfda6dddd525263ff', 'i:1;', 1789452174),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-3cd64a7e34075bbf50a6b79cfda6dddd525263ff:timer', 'i:1789452174;', 1789452174),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-3d40a474ff83127e690a19ea7cb4eb72106fccd9', 'i:1;', 1789446246),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-3d40a474ff83127e690a19ea7cb4eb72106fccd9:timer', 'i:1789446246;', 1789446246),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-3e5d3c933e187de907f8b47a8f4c38f6dc03d427', 'i:2;', 1789659079),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-3e5d3c933e187de907f8b47a8f4c38f6dc03d427:timer', 'i:1789659079;', 1789659079),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-3f017f1a217d311862559ee3d44dda4cdba8a3fd', 'i:1;', 1789448370),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-3f017f1a217d311862559ee3d44dda4cdba8a3fd:timer', 'i:1789448370;', 1789448370),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-3f597a17f9cf75b99365cd683f27d870f30e122e', 'i:1;', 1789638721),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-3f597a17f9cf75b99365cd683f27d870f30e122e:timer', 'i:1789638721;', 1789638721),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-42f0f5115ef3b46e1d6595f2d1f4fbf7f4cde2a3', 'i:1;', 1789450490),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-42f0f5115ef3b46e1d6595f2d1f4fbf7f4cde2a3:timer', 'i:1789450490;', 1789450490),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-44b4b9678ffff1f55db270916bb0607c5d2ca04f', 'i:1;', 1789550764),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-44b4b9678ffff1f55db270916bb0607c5d2ca04f:timer', 'i:1789550764;', 1789550764),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-44c1234850021337ff6276e4cc4ae486793da206', 'i:1;', 1789700940),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-44c1234850021337ff6276e4cc4ae486793da206:timer', 'i:1789700940;', 1789700940),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-44f32ccb6dce4513e43b6c182ea6faedec82949d', 'i:1;', 1789530525),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-44f32ccb6dce4513e43b6c182ea6faedec82949d:timer', 'i:1789530525;', 1789530525),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-450b20bdd57e019f81274f0c1c8d2c90e9b6de05', 'i:1;', 1789447955),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-450b20bdd57e019f81274f0c1c8d2c90e9b6de05:timer', 'i:1789447955;', 1789447955),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-477bd044b2f579a193efe6eecdaa7185409829df', 'i:1;', 1789639012),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-477bd044b2f579a193efe6eecdaa7185409829df:timer', 'i:1789639012;', 1789639012),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-48e4cb6cceb2b65dc0dabbfd4ed378241828f712', 'i:1;', 1789573595),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-48e4cb6cceb2b65dc0dabbfd4ed378241828f712:timer', 'i:1789573595;', 1789573595),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-48fb54e1bc334cf993bd93636c3be8f73fc1d0a4', 'i:1;', 1789451233),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-48fb54e1bc334cf993bd93636c3be8f73fc1d0a4:timer', 'i:1789451233;', 1789451233),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-497e88c8b7499e652cf42d29ab5e6670a5b354ef', 'i:1;', 1789637232),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-497e88c8b7499e652cf42d29ab5e6670a5b354ef:timer', 'i:1789637232;', 1789637232),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-4a3f7a97adfdb5a9e61ff51fe734bd0ea94bb087', 'i:1;', 1789628010),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-4a3f7a97adfdb5a9e61ff51fe734bd0ea94bb087:timer', 'i:1789628010;', 1789628010),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-4acbcd2111b6ed9acc0bdbf7bfcf8c744d9bf188', 'i:1;', 1789626638),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-4acbcd2111b6ed9acc0bdbf7bfcf8c744d9bf188:timer', 'i:1789626638;', 1789626638),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-4cf1b10134f78e9e4cb7c0c9c4d3a952aeb421d3', 'i:1;', 1789647483),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-4cf1b10134f78e9e4cb7c0c9c4d3a952aeb421d3:timer', 'i:1789647483;', 1789647483),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-4dfa679ff55ca1315299711b46f4b489e6680b68', 'i:1;', 1789515779),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-4dfa679ff55ca1315299711b46f4b489e6680b68:timer', 'i:1789515779;', 1789515779),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-50bbcc62509863d96a87a5637e1ab8863c1ecc42', 'i:2;', 1789617173),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-50bbcc62509863d96a87a5637e1ab8863c1ecc42:timer', 'i:1789617173;', 1789617173),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-522b43bda1954bda004e07bd0113c4fbf4692ce4', 'i:1;', 1789559115),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-522b43bda1954bda004e07bd0113c4fbf4692ce4:timer', 'i:1789559115;', 1789559115),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-52e50af19962fbe77e68f7e86a435c1d6caca056', 'i:1;', 1789570961),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-52e50af19962fbe77e68f7e86a435c1d6caca056:timer', 'i:1789570961;', 1789570961),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-540b3281c88b5cb889333a64322895ca64fe5e0d', 'i:2;', 1789555951),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-540b3281c88b5cb889333a64322895ca64fe5e0d:timer', 'i:1789555951;', 1789555951),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-574ffbbcc1545bf6686776e0d0968a439514637b', 'i:1;', 1789618569),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-574ffbbcc1545bf6686776e0d0968a439514637b:timer', 'i:1789618569;', 1789618569),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-5780122c6c3995ab61d43a0533594c1f30febe28', 'i:1;', 1789572704),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-5780122c6c3995ab61d43a0533594c1f30febe28:timer', 'i:1789572704;', 1789572704),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-59748e3bd807b5db886bced272cb3804a57b3c08', 'i:1;', 1789621458),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-59748e3bd807b5db886bced272cb3804a57b3c08:timer', 'i:1789621458;', 1789621458),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-5ace8a4507a9d6900ccaa58225b352c95990b527', 'i:2;', 1789436312),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-5ace8a4507a9d6900ccaa58225b352c95990b527:timer', 'i:1789436312;', 1789436312),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-5b314393a96197ee52aa9e8bbc57ead4d52a83e2', 'i:1;', 1789701106),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-5b314393a96197ee52aa9e8bbc57ead4d52a83e2:timer', 'i:1789701106;', 1789701106),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-5b54b80fb823e0960582e1ee099b77b58707728f', 'i:1;', 1789647774),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-5b54b80fb823e0960582e1ee099b77b58707728f:timer', 'i:1789647774;', 1789647774),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-5b553c5ad0232c731f64c0cfb15cea22fd277a9e', 'i:1;', 1789447073),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-5b553c5ad0232c731f64c0cfb15cea22fd277a9e:timer', 'i:1789447073;', 1789447073),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-5ddea7e34c815cec919e3b6ddd1e401ba9e21276', 'i:1;', 1789453395),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-5ddea7e34c815cec919e3b6ddd1e401ba9e21276:timer', 'i:1789453395;', 1789453395),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-5f09144745d970c59924dac06264bbc279c1a165', 'i:2;', 1789618066),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-5f09144745d970c59924dac06264bbc279c1a165:timer', 'i:1789618066;', 1789618066),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-5f568765df9eb80af613ed56b39eb802cc0a0abd', 'i:1;', 1789641852),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-5f568765df9eb80af613ed56b39eb802cc0a0abd:timer', 'i:1789641852;', 1789641852),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-6047f5df8c0b89c38ef75b7c5ac7c6f08f4ba310', 'i:1;', 1789709637),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-6047f5df8c0b89c38ef75b7c5ac7c6f08f4ba310:timer', 'i:1789709637;', 1789709637),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-60f1337767f4583538f6070d3738f9cf5f2d8b63', 'i:2;', 1789699120),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-60f1337767f4583538f6070d3738f9cf5f2d8b63:timer', 'i:1789699120;', 1789699120),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-62ab172dffcb82b1dd60eef2c282cbed9acd036c', 'i:1;', 1789559633),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-62ab172dffcb82b1dd60eef2c282cbed9acd036c:timer', 'i:1789559633;', 1789559633),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-6750a03c6d0f885c4eaea2857793b0d376588381', 'i:1;', 1789641793),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-6750a03c6d0f885c4eaea2857793b0d376588381:timer', 'i:1789641793;', 1789641793),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-69bc4cf30266f2a0f5b63fd627aa6bb37f196ce8', 'i:1;', 1789615999),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-69bc4cf30266f2a0f5b63fd627aa6bb37f196ce8:timer', 'i:1789615999;', 1789615999),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-6ade83da69646b7678171618ae343ad9440be546', 'i:1;', 1789627012),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-6ade83da69646b7678171618ae343ad9440be546:timer', 'i:1789627012;', 1789627012),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-6bc36fa9c7fa137190a3b735d8b8db215c7d90bd', 'i:1;', 1789444324),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-6bc36fa9c7fa137190a3b735d8b8db215c7d90bd:timer', 'i:1789444324;', 1789444324),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-6c5be1a82391939aae5e81b5fb9ebf59f66ac746', 'i:3;', 1789612345),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-6c5be1a82391939aae5e81b5fb9ebf59f66ac746:timer', 'i:1789612345;', 1789612345),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-6c89d061c39a778b93b429c9d77ac61375ee4fc1', 'i:1;', 1789480023),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-6c89d061c39a778b93b429c9d77ac61375ee4fc1:timer', 'i:1789480023;', 1789480023),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-6cb0b5bd1995a5178fc7ebf420d07100b772d433', 'i:1;', 1789441288),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-6cb0b5bd1995a5178fc7ebf420d07100b772d433:timer', 'i:1789441288;', 1789441288),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-6e3077c63ff737a0b6cc90cfcdc1b5e00d897688', 'i:1;', 1789533408),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-6e3077c63ff737a0b6cc90cfcdc1b5e00d897688:timer', 'i:1789533408;', 1789533408),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-6e65eaf125c0b8c3563282f8bfdc04081b33b27c', 'i:1;', 1789571549),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-6e65eaf125c0b8c3563282f8bfdc04081b33b27c:timer', 'i:1789571549;', 1789571549),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-7027ed13ef65c05d0f2adc6366ed024fd227d4e7', 'i:1;', 1789520886),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-7027ed13ef65c05d0f2adc6366ed024fd227d4e7:timer', 'i:1789520886;', 1789520886),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-7107e87be572e05bd777fa24edcbf7e6d3408dd4', 'i:2;', 1789556154),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-7107e87be572e05bd777fa24edcbf7e6d3408dd4:timer', 'i:1789556154;', 1789556154),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-71117c6fe013fd7336b34fbe99880347637ecd2b', 'i:2;', 1789472804),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-71117c6fe013fd7336b34fbe99880347637ecd2b:timer', 'i:1789472804;', 1789472804),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-716b6217cc5951856b44b282324f12cf2bb20206', 'i:1;', 1789626129),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-716b6217cc5951856b44b282324f12cf2bb20206:timer', 'i:1789626129;', 1789626129),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-729b7017d1b03185283a04f813c4fbd2db6af28a', 'i:1;', 1789523463),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-729b7017d1b03185283a04f813c4fbd2db6af28a:timer', 'i:1789523463;', 1789523463),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-72f4af2ae8ea0f928276dc0596299fb35da9a2b6', 'i:1;', 1789614395),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-72f4af2ae8ea0f928276dc0596299fb35da9a2b6:timer', 'i:1789614395;', 1789614395),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-732467a5069c31edc62d57b2db431c823fdadec3', 'i:1;', 1789619060),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-732467a5069c31edc62d57b2db431c823fdadec3:timer', 'i:1789619060;', 1789619060),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-740bc70c5eeb3d7a4a898cb585019bd002236c8a', 'i:1;', 1789640047),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-740bc70c5eeb3d7a4a898cb585019bd002236c8a:timer', 'i:1789640047;', 1789640047),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-75292b5ad9b98e72a397946cf1e0f78ba8b31a88', 'i:1;', 1789559496),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-75292b5ad9b98e72a397946cf1e0f78ba8b31a88:timer', 'i:1789559496;', 1789559496),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-75a49176fdcfa048fb1252cd5d01dbca322ebfa8', 'i:2;', 1789439775),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-75a49176fdcfa048fb1252cd5d01dbca322ebfa8:timer', 'i:1789439775;', 1789439775),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-780a66e6504044361f7a1bf60efbc1410a91f287', 'i:2;', 1789459175),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-780a66e6504044361f7a1bf60efbc1410a91f287:timer', 'i:1789459175;', 1789459175),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-791469979dd75002670ca54e48333a53cf5df904', 'i:1;', 1789692932),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-791469979dd75002670ca54e48333a53cf5df904:timer', 'i:1789692932;', 1789692932),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-7a6f74fd52958ac10429df83eb0451a9a00103d3', 'i:1;', 1789538266),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-7a6f74fd52958ac10429df83eb0451a9a00103d3:timer', 'i:1789538266;', 1789538266),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-7af4d4a1abc514f02f9c7caa1df0a8b35b22fcbc', 'i:2;', 1789632066),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-7af4d4a1abc514f02f9c7caa1df0a8b35b22fcbc:timer', 'i:1789632066;', 1789632066),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-7ccd5174e042b7f290669dfdf3bc6b7fca4216e7', 'i:1;', 1789517127),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-7ccd5174e042b7f290669dfdf3bc6b7fca4216e7:timer', 'i:1789517127;', 1789517127),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-7e483d7bd2d78f953f90402fc6a662814fdff170', 'i:1;', 1789520375),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-7e483d7bd2d78f953f90402fc6a662814fdff170:timer', 'i:1789520375;', 1789520375),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-8166030d986803697335bc89411c1e8ece6fe0b3', 'i:2;', 1789571790),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-8166030d986803697335bc89411c1e8ece6fe0b3:timer', 'i:1789571790;', 1789571790),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-822715721a983be079be827d9e0800a6cce66307', 'i:1;', 1789526784),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-822715721a983be079be827d9e0800a6cce66307:timer', 'i:1789526784;', 1789526784),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-853260e9f8232eda5868f4b9a6383f9f71a9b64c', 'i:1;', 1789526714),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-853260e9f8232eda5868f4b9a6383f9f71a9b64c:timer', 'i:1789526714;', 1789526714),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-86d27a1649be57aeb8caf7cdcaae5f98e5965e7d', 'i:1;', 1789456435),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-86d27a1649be57aeb8caf7cdcaae5f98e5965e7d:timer', 'i:1789456435;', 1789456435),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-892fd4104fa281bc1e2102c879cf688544a8b891', 'i:1;', 1789606894),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-892fd4104fa281bc1e2102c879cf688544a8b891:timer', 'i:1789606894;', 1789606894),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-89a694edfebcd0b4a5bfeaa3c5917e838f685118', 'i:1;', 1789632257),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-89a694edfebcd0b4a5bfeaa3c5917e838f685118:timer', 'i:1789632257;', 1789632257),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-8a5973548ebaa760051ed21fb54e2e258137c266', 'i:2;', 1789439369),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-8a5973548ebaa760051ed21fb54e2e258137c266:timer', 'i:1789439369;', 1789439369),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-8b549284fd942ea9d3648fd80f91c2f5e43035ed', 'i:1;', 1789477576),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-8b549284fd942ea9d3648fd80f91c2f5e43035ed:timer', 'i:1789477576;', 1789477576),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-8ba40fcb4fac426ae4bec463f22ddac5f6476828', 'i:1;', 1789623395),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-8ba40fcb4fac426ae4bec463f22ddac5f6476828:timer', 'i:1789623395;', 1789623395),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-8be6938d302f09fab08838e572e737d0768966d9', 'i:2;', 1789619527),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-8be6938d302f09fab08838e572e737d0768966d9:timer', 'i:1789619527;', 1789619527),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-8c0c33b0e689651820fc08ffbe049602985df159', 'i:1;', 1789560143),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-8c0c33b0e689651820fc08ffbe049602985df159:timer', 'i:1789560143;', 1789560143),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-8dbba0859707afb7682f3741828564f753300e9f', 'i:1;', 1789654466),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-8dbba0859707afb7682f3741828564f753300e9f:timer', 'i:1789654466;', 1789654466),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-8fea76b37bcd380f986b039815a95b4e84b5be09', 'i:1;', 1789465939),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-8fea76b37bcd380f986b039815a95b4e84b5be09:timer', 'i:1789465939;', 1789465939),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-906b9331bab604e53bf318b05e2c92228e17e112', 'i:1;', 1789623753),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-906b9331bab604e53bf318b05e2c92228e17e112:timer', 'i:1789623753;', 1789623753),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-91933a88f897c470399e3219a5935e9ccc74b0a3', 'i:1;', 1789613245),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-91933a88f897c470399e3219a5935e9ccc74b0a3:timer', 'i:1789613245;', 1789613245),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-925025379bb5cb74386296ce8f9692feed7dbdda', 'i:1;', 1789528605),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-925025379bb5cb74386296ce8f9692feed7dbdda:timer', 'i:1789528605;', 1789528605),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-9267a17fc87a8b1ab5209e5d68a1075dd5876299', 'i:1;', 1789484225),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-9267a17fc87a8b1ab5209e5d68a1075dd5876299:timer', 'i:1789484225;', 1789484225),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-94a4a025d8b36e45117b05f06b3ee48f46e96c31', 'i:2;', 1789521988),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-94a4a025d8b36e45117b05f06b3ee48f46e96c31:timer', 'i:1789521988;', 1789521988),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-94a52039b9752f59d68ebb1cc47c0fe6d497f398', 'i:1;', 1789454895),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-94a52039b9752f59d68ebb1cc47c0fe6d497f398:timer', 'i:1789454895;', 1789454895),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-94f83f8bb61fce82efe81c4923b3ffb3874cbac2', 'i:1;', 1789632001),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-94f83f8bb61fce82efe81c4923b3ffb3874cbac2:timer', 'i:1789632001;', 1789632001),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-96715988642e24f610944d7aae56876229153adb', 'i:1;', 1789627716),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-96715988642e24f610944d7aae56876229153adb:timer', 'i:1789627716;', 1789627716),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-98db29f763dec276e6b1e31efa04af892adacf51', 'i:1;', 1789478376),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-98db29f763dec276e6b1e31efa04af892adacf51:timer', 'i:1789478376;', 1789478376),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-9b4879bcb11a850c4aeeac4b8f1ac39451d7736c', 'i:1;', 1789473124),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-9b4879bcb11a850c4aeeac4b8f1ac39451d7736c:timer', 'i:1789473124;', 1789473124),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-9c7c49dfba5a1903ccc3d222a6afe8243a374eb2', 'i:1;', 1789662657),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-9c7c49dfba5a1903ccc3d222a6afe8243a374eb2:timer', 'i:1789662657;', 1789662657),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-9dda61d99ba7e02a9fdc481937a2dfca43ab4d25', 'i:2;', 1789596940),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-9dda61d99ba7e02a9fdc481937a2dfca43ab4d25:timer', 'i:1789596940;', 1789596940),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-9ea769fbae8defa260e22307ea77d01f5d08341e', 'i:1;', 1789521791),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-9ea769fbae8defa260e22307ea77d01f5d08341e:timer', 'i:1789521791;', 1789521791),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-9eec31649b3ca1a80bfea9832371ad43a8ffc7e4', 'i:1;', 1789579302),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-9eec31649b3ca1a80bfea9832371ad43a8ffc7e4:timer', 'i:1789579302;', 1789579302),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-a162914ca7b4fd6ecd11d12d091e468338c67d17', 'i:1;', 1789633534),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-a162914ca7b4fd6ecd11d12d091e468338c67d17:timer', 'i:1789633534;', 1789633534),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-a18c2fc4de97a3d58ccfc41538972cb24d6b0175', 'i:1;', 1789623532),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-a18c2fc4de97a3d58ccfc41538972cb24d6b0175:timer', 'i:1789623532;', 1789623532),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-a1c19427da56e7a9851d1b7c3373678b3c684471', 'i:1;', 1789617112),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-a1c19427da56e7a9851d1b7c3373678b3c684471:timer', 'i:1789617112;', 1789617112),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-a32450a9175446452fb5c323bf5005fdf5f046ab', 'i:2;', 1789620456),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-a32450a9175446452fb5c323bf5005fdf5f046ab:timer', 'i:1789620456;', 1789620456),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-a43de0a594283c9a189e4c07ff7df10f21c4db62', 'i:2;', 1789552981),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-a43de0a594283c9a189e4c07ff7df10f21c4db62:timer', 'i:1789552981;', 1789552981),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-a74a777f0e2d1c34cfa4abe243e20e58441e2f82', 'i:1;', 1789456321),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-a74a777f0e2d1c34cfa4abe243e20e58441e2f82:timer', 'i:1789456321;', 1789456321),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-a7502b27a168a76934037e0bcb881eecd4d56be3', 'i:1;', 1789480141),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-a7502b27a168a76934037e0bcb881eecd4d56be3:timer', 'i:1789480141;', 1789480141),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-a838db326b489becc7a4a72355c100eaa0590683', 'i:1;', 1789694163),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-a838db326b489becc7a4a72355c100eaa0590683:timer', 'i:1789694163;', 1789694163),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-a97fffa2a00fa6c0c62af927ba382226c52fea52', 'i:1;', 1789703081),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-a97fffa2a00fa6c0c62af927ba382226c52fea52:timer', 'i:1789703081;', 1789703081),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-aad8000ed229e860cc6cc731ab309cad83246ff2', 'i:1;', 1789436268),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-aad8000ed229e860cc6cc731ab309cad83246ff2:timer', 'i:1789436268;', 1789436268),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-aaf26dba5e71548e6fc3c6ab49c54948cf84c075', 'i:1;', 1789539551),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-aaf26dba5e71548e6fc3c6ab49c54948cf84c075:timer', 'i:1789539551;', 1789539551),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-ab066990f862088a29b8cd87c89f2f40530e32e4', 'i:1;', 1789465333),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-ab066990f862088a29b8cd87c89f2f40530e32e4:timer', 'i:1789465333;', 1789465333),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-abdff2e15a53e5a73b8fc2f804381242b430cd7c', 'i:2;', 1789631272),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-abdff2e15a53e5a73b8fc2f804381242b430cd7c:timer', 'i:1789631272;', 1789631272),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-af17e8e751d5ef3b1f6d683f48bc49fb7e49db97', 'i:1;', 1789655322),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-af17e8e751d5ef3b1f6d683f48bc49fb7e49db97:timer', 'i:1789655322;', 1789655322),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-afbf62ce731773f37f357789ca73f6aa7130116d', 'i:1;', 1789440808),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-afbf62ce731773f37f357789ca73f6aa7130116d:timer', 'i:1789440808;', 1789440808),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b043ff80f16a6dca28855ea7d3be4a7bccb817b1', 'i:1;', 1789655614),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b043ff80f16a6dca28855ea7d3be4a7bccb817b1:timer', 'i:1789655614;', 1789655614),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b0d98c4ef96ced936388007316e4e3f0fc4d26bb', 'i:2;', 1789446138),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b0d98c4ef96ced936388007316e4e3f0fc4d26bb:timer', 'i:1789446138;', 1789446138),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b13a1efd958d4833d1e7eebc7f9a0ffb88bf05bf', 'i:2;', 1789531801),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b13a1efd958d4833d1e7eebc7f9a0ffb88bf05bf:timer', 'i:1789531801;', 1789531801),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b1d5781111d84f7b3fe45a0852e59758cd7a87e5', 'i:1;', 1789653810),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b1d5781111d84f7b3fe45a0852e59758cd7a87e5:timer', 'i:1789653810;', 1789653810),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b466b751d796f8589719893e4a488e8a7281dcd7', 'i:1;', 1789439514),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b466b751d796f8589719893e4a488e8a7281dcd7:timer', 'i:1789439514;', 1789439514),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b4cd1658b64d15653fbfb23f2729a68b0173ebdc', 'i:1;', 1789614654),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b4cd1658b64d15653fbfb23f2729a68b0173ebdc:timer', 'i:1789614654;', 1789614654),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b4f70d3c372fb02aff2aec492e6e79511960df1d', 'i:5;', 1789640804),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b4f70d3c372fb02aff2aec492e6e79511960df1d:timer', 'i:1789640804;', 1789640804),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b5385f370942b639fe5e1ae6f8ea09890c2f6418', 'i:2;', 1789446284),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b5385f370942b639fe5e1ae6f8ea09890c2f6418:timer', 'i:1789446284;', 1789446284),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b55bbdced8ff52e9088803f6a58a7d6874381bb0', 'i:1;', 1789545987),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b55bbdced8ff52e9088803f6a58a7d6874381bb0:timer', 'i:1789545987;', 1789545987),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b5a3c4a31a64de4ec05fbeb269140f9f86f0d0bb', 'i:1;', 1789527751),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b5a3c4a31a64de4ec05fbeb269140f9f86f0d0bb:timer', 'i:1789527751;', 1789527751),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b5c2270eb9e838716f9ae7867ef193862929c4e9', 'i:1;', 1789484915),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b5c2270eb9e838716f9ae7867ef193862929c4e9:timer', 'i:1789484915;', 1789484915),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b5c36e8082d2b33d2df0a537d2e10d2a385b6f60', 'i:2;', 1789615291),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b5c36e8082d2b33d2df0a537d2e10d2a385b6f60:timer', 'i:1789615291;', 1789615291),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b6c1b87495216117201657b9ff24de88602a72a2', 'i:2;', 1789551936),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b6c1b87495216117201657b9ff24de88602a72a2:timer', 'i:1789551936;', 1789551936),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b903eb7ab1e26965633d4d35abd7a94f64fd0ebd', 'i:1;', 1789538191),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b903eb7ab1e26965633d4d35abd7a94f64fd0ebd:timer', 'i:1789538191;', 1789538191),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b9ae463dd5766af23992bdf57b0379c063585cb2', 'i:3;', 1789613919),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-b9ae463dd5766af23992bdf57b0379c063585cb2:timer', 'i:1789613919;', 1789613919),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-bb6de586eb6b5e9a72585be3e4272ed70d126ed9', 'i:1;', 1789648128),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-bb6de586eb6b5e9a72585be3e4272ed70d126ed9:timer', 'i:1789648128;', 1789648128),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-bb82d44a9781455090a07dc282ce51efd68e11e6', 'i:2;', 1789621080),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-bb82d44a9781455090a07dc282ce51efd68e11e6:timer', 'i:1789621080;', 1789621080),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-bc7b45ed4daccd5b31d192345a0cd157d4d8bd4b', 'i:1;', 1789558292),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-bc7b45ed4daccd5b31d192345a0cd157d4d8bd4b:timer', 'i:1789558292;', 1789558292),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-bd0b561b12447794853645861474c32d19e8ac2b', 'i:1;', 1789563186),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-bd0b561b12447794853645861474c32d19e8ac2b:timer', 'i:1789563186;', 1789563186),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-bed97c2c4917e3cc189e716d5d8d35573cb4921e', 'i:1;', 1789469912),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-bed97c2c4917e3cc189e716d5d8d35573cb4921e:timer', 'i:1789469912;', 1789469912),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-c2c5efea8bca8a21d527ccbc88eb27fd6e39803e', 'i:1;', 1789696186),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-c2c5efea8bca8a21d527ccbc88eb27fd6e39803e:timer', 'i:1789696186;', 1789696186),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-c3980c30f008ba5ae14b591796a020ddca894561', 'i:1;', 1789559031),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-c3980c30f008ba5ae14b591796a020ddca894561:timer', 'i:1789559031;', 1789559031),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-c456ef7c44d8fca597229bba74293a53ffb397ea', 'i:1;', 1789437906),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-c456ef7c44d8fca597229bba74293a53ffb397ea:timer', 'i:1789437906;', 1789437906),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-c471a6b282563f9680fd4ffe9164b15b6c6ff800', 'i:1;', 1789539047),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-c471a6b282563f9680fd4ffe9164b15b6c6ff800:timer', 'i:1789539047;', 1789539047),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-c6e4e138b125aeaaa393ee136d25770034fb5d87', 'i:2;', 1789473273),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-c6e4e138b125aeaaa393ee136d25770034fb5d87:timer', 'i:1789473273;', 1789473273),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-c84b05fb7d003004239ca7623b42099a67c56796', 'i:1;', 1789446533),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-c84b05fb7d003004239ca7623b42099a67c56796:timer', 'i:1789446533;', 1789446533),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-c853e930ebb8f29353af4c118f25a23aa39b781e', 'i:1;', 1789437949),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-c853e930ebb8f29353af4c118f25a23aa39b781e:timer', 'i:1789437949;', 1789437949),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-ca779effc18a2105c8c8c0e1f3a4e608450efc59', 'i:1;', 1789533098),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-ca779effc18a2105c8c8c0e1f3a4e608450efc59:timer', 'i:1789533098;', 1789533098),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-cabc3ef51f9676e1239ab28eb6fe620ce6cb0c03', 'i:1;', 1789633716),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-cabc3ef51f9676e1239ab28eb6fe620ce6cb0c03:timer', 'i:1789633716;', 1789633716),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-cc58eeafbc33a51d90fc173cfb3f8e5b64f8e81b', 'i:1;', 1789655306),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-cc58eeafbc33a51d90fc173cfb3f8e5b64f8e81b:timer', 'i:1789655306;', 1789655306),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-cc8bc135f2c72cf510c5b6c0f9c717c7eeeb16a5', 'i:1;', 1789660776),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-cc8bc135f2c72cf510c5b6c0f9c717c7eeeb16a5:timer', 'i:1789660776;', 1789660776),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-ccccc4f93832d57e66589dad966288ea7070ac28', 'i:1;', 1789613491),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-ccccc4f93832d57e66589dad966288ea7070ac28:timer', 'i:1789613491;', 1789613491),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-cf8c4ee483e39851773a9695d0023d16bc1a2a43', 'i:2;', 1789530426),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-cf8c4ee483e39851773a9695d0023d16bc1a2a43:timer', 'i:1789530426;', 1789530426),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-cfa48ff1ea25b8607cd0d923093e69d2899246da', 'i:1;', 1789629524),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-cfa48ff1ea25b8607cd0d923093e69d2899246da:timer', 'i:1789629524;', 1789629524),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-cfb5908c5ab487665157253b39326a8110623483', 'i:2;', 1789648220),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-cfb5908c5ab487665157253b39326a8110623483:timer', 'i:1789648220;', 1789648220),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-d2d0cbd6aa98c842f0e72f48e6cbce106956295a', 'i:1;', 1789644011),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-d2d0cbd6aa98c842f0e72f48e6cbce106956295a:timer', 'i:1789644011;', 1789644011),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-d300df0e14f1ca86feac7862b1368075c66df07c', 'i:1;', 1789459464),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-d300df0e14f1ca86feac7862b1368075c66df07c:timer', 'i:1789459464;', 1789459464),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-d45e86a972c0a4b011273240ac77a5d055f29b69', 'i:2;', 1789543126),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-d45e86a972c0a4b011273240ac77a5d055f29b69:timer', 'i:1789543126;', 1789543126),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-d4a9d7abf9a9033dbbed2ec8124ebd82a9bd0a35', 'i:1;', 1789525007),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-d4a9d7abf9a9033dbbed2ec8124ebd82a9bd0a35:timer', 'i:1789525007;', 1789525007),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-d4bcc030a1a151638957096ef40b0e043b134097', 'i:1;', 1789691483),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-d4bcc030a1a151638957096ef40b0e043b134097:timer', 'i:1789691483;', 1789691483),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-d90e28f2888d96198f5b3de58cf87ef944ff7746', 'i:1;', 1789632564),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-d90e28f2888d96198f5b3de58cf87ef944ff7746:timer', 'i:1789632564;', 1789632564),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-d9ab1bbb1969c7d7d42f0ae1f52f4fc477bf8af7', 'i:1;', 1789655487),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-d9ab1bbb1969c7d7d42f0ae1f52f4fc477bf8af7:timer', 'i:1789655487;', 1789655487),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-dbee50ec6d8b25d1cb15ce2c11ffc981790f4d44', 'i:1;', 1789634785),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-dbee50ec6d8b25d1cb15ce2c11ffc981790f4d44:timer', 'i:1789634785;', 1789634785),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-de06246374b40a35e4c4553939cd76f3676fada8', 'i:2;', 1789451515);
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-de06246374b40a35e4c4553939cd76f3676fada8:timer', 'i:1789451515;', 1789451515),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-e033162b6fccb25c1ff7057d3605767b15b3c191', 'i:1;', 1789535331),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-e033162b6fccb25c1ff7057d3605767b15b3c191:timer', 'i:1789535331;', 1789535331),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-e1755fa2c12ebccffa3ff67febbedcba109d4c24', 'i:2;', 1789616460),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-e1755fa2c12ebccffa3ff67febbedcba109d4c24:timer', 'i:1789616460;', 1789616460),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-e44e476b1cd151483ac6583890e23093ed41a68b', 'i:1;', 1789572667),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-e44e476b1cd151483ac6583890e23093ed41a68b:timer', 'i:1789572667;', 1789572667),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-e45bb9e9d4a014b61dc7f57bef61222ff50728e3', 'i:1;', 1789563235),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-e45bb9e9d4a014b61dc7f57bef61222ff50728e3:timer', 'i:1789563235;', 1789563235),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-e61d41afa50c2e8bbd700769fbff6a645c141e11', 'i:1;', 1789553139),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-e61d41afa50c2e8bbd700769fbff6a645c141e11:timer', 'i:1789553139;', 1789553139),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-e6a194c17bcc9ef24376b2ec0f5ed61a37576c9c', 'i:1;', 1789606581),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-e6a194c17bcc9ef24376b2ec0f5ed61a37576c9c:timer', 'i:1789606581;', 1789606581),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-e92a7f48d69f45a83f5398bfae5823066b2b7f6e', 'i:2;', 1789434250),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-e92a7f48d69f45a83f5398bfae5823066b2b7f6e:timer', 'i:1789434250;', 1789434250),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-ebb1706b0fc532ec330df24fb40329e8a2df1875', 'i:1;', 1789458077),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-ebb1706b0fc532ec330df24fb40329e8a2df1875:timer', 'i:1789458077;', 1789458077),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-ebd9f7c4fb7a2762bbbac61bf663d0dfe622ff96', 'i:1;', 1789523368),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-ebd9f7c4fb7a2762bbbac61bf663d0dfe622ff96:timer', 'i:1789523368;', 1789523368),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-ec641b83fec0a99f4edc16ca8d8e438abe6f65c2', 'i:1;', 1789524879),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-ec641b83fec0a99f4edc16ca8d8e438abe6f65c2:timer', 'i:1789524879;', 1789524879),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-ec9a485c77ef55a7cbbdc0bd2341135bc75c8b9b', 'i:1;', 1789702791),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-ec9a485c77ef55a7cbbdc0bd2341135bc75c8b9b:timer', 'i:1789702791;', 1789702791),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-ed4c1b6ebd0cda1ae0afa672cf237a1feeb4d661', 'i:1;', 1789437189),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-ed4c1b6ebd0cda1ae0afa672cf237a1feeb4d661:timer', 'i:1789437189;', 1789437189),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-ed682a8b2950b75f5ed582ae892cf0a5ef90a2d4', 'i:1;', 1789438579),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-ed682a8b2950b75f5ed582ae892cf0a5ef90a2d4:timer', 'i:1789438579;', 1789438579),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-eeb0e9c69f3b81a4356079d84abce4b665fb15c7', 'i:1;', 1789437597),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-eeb0e9c69f3b81a4356079d84abce4b665fb15c7:timer', 'i:1789437597;', 1789437597),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-f09073b6605fd9c00a6d57296e7fd6ad789a5f4e', 'i:1;', 1789440666),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-f09073b6605fd9c00a6d57296e7fd6ad789a5f4e:timer', 'i:1789440666;', 1789440666),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-f0b9d9db7b0b9df16b86401413e3134383f253ea', 'i:1;', 1789473156),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-f0b9d9db7b0b9df16b86401413e3134383f253ea:timer', 'i:1789473156;', 1789473156),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-f17410d4745692a98c7ade1e7e495e10b0fa2e97', 'i:1;', 1789433747),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-f17410d4745692a98c7ade1e7e495e10b0fa2e97:timer', 'i:1789433747;', 1789433747),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-f4036dd90189dd8d190af51e183636ad46622131', 'i:2;', 1789531207),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-f4036dd90189dd8d190af51e183636ad46622131:timer', 'i:1789531207;', 1789531207),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-f72e02f371958b72a0cc36d954c0337ed0ae9762', 'i:1;', 1789646865),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-f72e02f371958b72a0cc36d954c0337ed0ae9762:timer', 'i:1789646865;', 1789646865),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-f8074fa94fbf5c14ec2c9a4bf2f10e71992c67a7', 'i:1;', 1789533303),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-f8074fa94fbf5c14ec2c9a4bf2f10e71992c67a7:timer', 'i:1789533303;', 1789533303),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-f8db2b73c9fd91dce3d8aa81dba1722881803ca6', 'i:3;', 1789478898),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-f8db2b73c9fd91dce3d8aa81dba1722881803ca6:timer', 'i:1789478898;', 1789478898),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-f91a4f97868f9e45de6d43ce21844573d35aca48', 'i:1;', 1789553402),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-f91a4f97868f9e45de6d43ce21844573d35aca48:timer', 'i:1789553402;', 1789553402),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-fb1886634798a87fefef2fd172c463e7d5892d8c', 'i:1;', 1789602905),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-fb1886634798a87fefef2fd172c463e7d5892d8c:timer', 'i:1789602905;', 1789602905),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-fb94ab13cb9f8d6f3dad10e21fece142395850d4', 'i:1;', 1789653396),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-fb94ab13cb9f8d6f3dad10e21fece142395850d4:timer', 'i:1789653396;', 1789653396),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-fbf75ac406397d150d441497c4116882a03a2a06', 'i:1;', 1789479544),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-fbf75ac406397d150d441497c4116882a03a2a06:timer', 'i:1789479544;', 1789479544),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-fc28ed0cbc199634292a949ecc7fad82665df5e7', 'i:1;', 1789530401),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-fc28ed0cbc199634292a949ecc7fad82665df5e7:timer', 'i:1789530401;', 1789530401),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-fd64044b20942a5d2077b9360a2517ed53340eb8', 'i:1;', 1789629776),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-fd64044b20942a5d2077b9360a2517ed53340eb8:timer', 'i:1789629776;', 1789629776),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-fe08609b91dbbf6ee93628dccd4744c380deb1f1', 'i:2;', 1789571553),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-fe08609b91dbbf6ee93628dccd4744c380deb1f1:timer', 'i:1789571553;', 1789571553),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-ff0961103e6576b5e365487b0030962baed854fd', 'i:1;', 1789685025),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-ff0961103e6576b5e365487b0030962baed854fd:timer', 'i:1789685025;', 1789685025),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-ff67ef1d773dcbf72d7375f27660b7ff8fda60dc', 'i:2;', 1789454799),
('dharma-wanita-persatuan-poltekkes-kemenkes-banten-cache-ff67ef1d773dcbf72d7375f27660b7ff8fda60dc:timer', 'i:1789454799;', 1789454799);

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
  `transfer_sender_name` varchar(150) DEFAULT NULL,
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

INSERT INTO `graduation_toga_orders` (`id`, `order_code`, `student_name`, `nim`, `nik`, `study_program_id`, `study_program_name`, `graduation_year`, `email`, `phone`, `transfer_sender_name`, `gender`, `toga_size`, `size_note`, `quantity`, `status`, `payment_status`, `payment_amount`, `payment_method`, `payment_proof_path`, `payment_proof_original_name`, `payment_proof_mime`, `payment_proof_size`, `payment_uploaded_at`, `payment_verified_at`, `payment_verified_by`, `payment_rejected_at`, `payment_rejected_by`, `admin_note`, `rejection_note`, `public_token`, `created_at`, `updated_at`) VALUES
(4, 'WSD-20260910-OJPS', 'NAJAH', 'P27902123065', NULL, 2, 'D3 Kebidanan', 2026, 'najahredmi@gmail.com', '089646478555', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/4/7d93e1e0-335a-4a08-91d6-7b2b703be597.jpg', 'Screenshot_2026-09-10-19-33-22-816_id.bni.wondr.jpg', 'image/jpeg', 657572, '2026-09-10 12:35:53', '2026-09-11 03:05:51', 9, NULL, NULL, NULL, NULL, 'wVXx0DgiStsVip02CJiAqkvkuxsPCrl3RiUygNvf', '2026-09-10 12:30:38', '2026-09-11 03:05:58'),
(6, 'WSD-20260910-ECJ6', 'Intan Apriliani', 'P27902123100', NULL, 2, 'D3 Kebidanan', 2026, 'intanapriliani111224@gmail.com', '085694237402', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/6/d2dc09d7-57ab-4732-8348-d211abf11b3c.png', 'IMG_6394.png', 'image/png', 264706, '2026-09-10 12:52:29', '2026-09-11 03:07:19', 9, NULL, NULL, NULL, NULL, 'tVnPMoXAtV653FfJHw8S2uBvLJV8j4KBgjWZWkKZ', '2026-09-10 12:50:29', '2026-09-11 03:07:23'),
(7, 'WSD-20260910-J099', 'Tri Safel Ahmad Subagna', 'P27901123046', NULL, 1, 'D3 Keperawatan', 2026, 'subagjasafel@gmail.com', '085881410826', NULL, 'Laki-laki', 'All Size', 'yaaa semoga lebih baik kedepan nya', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/7/12c952dd-bdcc-42c5-8449-e7d4c17c89ae.jpg', 'Screenshot_20260910_195245.jpg', 'image/jpeg', 282365, '2026-09-10 12:53:13', '2026-09-11 03:17:56', 9, NULL, NULL, NULL, NULL, 'SozoZxpYe7rhUZzjrR6PM5637qdpGNbKK6HsgaP6', '2026-09-10 12:52:51', '2026-09-11 03:17:59'),
(8, 'WSD-20260910-XQQB', 'Jahrotun Nisa', 'P27902123144', NULL, 2, 'D3 Kebidanan', 2026, 'zahrotunnisadua78@gmail.com', '085777709436', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/8/678a177d-b1a8-4a2e-9efa-ae83753a6ebc.jpeg', 'd1feb7d1-f667-4ac9-88d5-6dedf4c0f7e6.jpeg', 'image/jpeg', 64482, '2026-09-11 10:59:15', '2026-09-14 13:19:15', 10, NULL, NULL, NULL, NULL, 'y9RiPgc4dwEo9Jnq6KkbWDMHG57BS4BLXqes8RrL', '2026-09-10 12:56:34', '2026-09-14 13:19:18'),
(9, 'WSD-20260910-FLOS', 'Nadiyah Restu Hanifah', 'P27902123029', NULL, 2, 'D3 Kebidanan', 2026, 'nadiyahrestu05@gmail.com', '087873333930', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/9/3d2fc2b4-6894-460b-8123-ef8dc5b200a7.jpg', 'Transaksi_BCAmobile-20260911-112137.jpg', 'image/jpeg', 426570, '2026-09-11 04:22:07', '2026-09-11 05:55:42', 9, NULL, NULL, NULL, NULL, 'ePT4mXaCMHhtyFFEnmAmqzEDfFfVzejlfn3ZBwcJ', '2026-09-10 13:00:18', '2026-09-11 05:55:45'),
(12, 'WSD-20260910-NLM4', 'Adinda Igisty Aulya Putri', 'P27902123001', NULL, 2, 'D3 Kebidanan', 2026, 'dinchacha07@gmail.com', '082126353572', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/12/8e45ab3e-a28b-4ba6-8a99-957325ec25c2.jpg', 'Screenshot_20260911_092908_SeaBank.jpg', 'image/jpeg', 233004, '2026-09-11 02:29:45', '2026-09-11 05:51:45', 9, NULL, NULL, NULL, NULL, 'dhvI4YpPk2kcKRdNSlWusULttaDjjIOAocXDVHic', '2026-09-10 13:23:09', '2026-09-11 05:51:49'),
(13, 'WSD-20260910-N1RT', 'Husnul afia', 'P27902123017', NULL, 2, 'D3 Kebidanan', 2026, 'husnulafia71@gmail.com', '089603436671', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/13/28c7ae0e-2d89-4a40-b6b4-89760fe40bce.jpeg', '9931025B-A802-4331-B471-BB6670E9DA89.jpeg', 'image/jpeg', 58912, '2026-09-10 13:33:21', '2026-09-11 04:19:52', 9, NULL, NULL, NULL, NULL, '8yqede2LR3g57T3xT0wUHl8JSVxOPcuzrUavZOnu', '2026-09-10 13:27:25', '2026-09-11 04:19:55'),
(14, 'WSD-20260910-1ODO', 'ANGGUN SRI MASITOH', 'P27902123045', NULL, 2, 'D3 Kebidanan', 2026, 'anggunsr92@gmail.com', '08999721364', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/14/a542b4a0-2e58-4f0d-9067-75ff072f48c8.png', 'IMG_3862.png', 'image/png', 200961, '2026-09-10 13:29:48', '2026-09-11 03:18:35', 9, NULL, NULL, NULL, NULL, 'IQhrBFJzStCkUuLbH34xKC2yef2kmgKPcdPfvq1T', '2026-09-10 13:29:28', '2026-09-11 03:18:42'),
(18, 'WSD-20260910-8JXB', 'Yunika Aulia', 'P27901123107', NULL, 1, 'D3 Keperawatan', 2026, 'yunikaaulia2@gmail.com', '085770334673', NULL, 'Perempuan', 'All Size', 'Pemesanan toga untuk 5 orang wisudawan perempuan', 5, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/18/bac97739-e8f7-45bd-9233-7161e602b6b9.jpeg', '9eac8e86-6294-47c0-a893-5cfefdbf3824.jpeg', 'image/jpeg', 52596, '2026-09-10 13:53:47', '2026-09-11 04:51:44', 9, NULL, NULL, NULL, NULL, 'KrOZt2PBKff6nGHNpIigGk6P0eh0kiHmFAy5m8oh', '2026-09-10 13:50:22', '2026-09-11 04:51:50'),
(19, 'WSD-20260910-PGIV', 'Ghaida Dwi Ramadhani Faza', 'P27901123016', NULL, 1, 'D3 Keperawatan', 2026, 'ghaidadwirf@gmail.com', '081214862658', NULL, 'Perempuan', 'All Size', NULL, 2, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/19/72a6241b-9034-42dd-a232-733f0938ac0a.png', 'IMG_4544.png', 'image/png', 404362, '2026-09-10 14:20:32', '2026-09-11 03:23:50', 9, NULL, NULL, NULL, NULL, 'p4KFefLMTwpTionpaDmv562ajJvIiq6nTth7EbMt', '2026-09-10 14:17:02', '2026-09-11 03:23:54'),
(20, 'WSD-20260910-7KLJ', 'Firda Chairunnisa', 'P27901123014', NULL, 1, 'D3 Keperawatan', 2026, 'firdachairunnisa25@gmail.com', '08561716147', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/20/0e3851fc-87c3-41bd-b065-5b433980c46a.png', 'IMG_1835.png', 'image/png', 480230, '2026-09-10 14:19:23', '2026-09-11 03:22:10', 9, NULL, NULL, NULL, NULL, 'NSHeLbTRRdMBeFHuFlff3v5jjck1KLnRvzsB6TWG', '2026-09-10 14:17:44', '2026-09-11 03:22:13'),
(21, 'WSD-20260910-8CGX', 'Reza Supriatna', 'P27901123092', NULL, 1, 'D3 Keperawatan', 2026, 'supriatnareza14@gmail.com', '081295084531', NULL, 'Laki-laki', 'All Size', 'Kalo Bisa Ukurannya M aja ya', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/21/be88d065-f7ef-495f-bf52-e0874382ea69.jpeg', 'Bukti Tf Toga Reza Supriatna P27901123092.jpeg', 'image/jpeg', 187578, '2026-09-10 14:24:02', '2026-09-11 03:26:41', 9, NULL, NULL, NULL, NULL, 'jDPSxtCMy0SiMsDoEz2CZMZjLqP6XG0CoxQnFLXf', '2026-09-10 14:20:23', '2026-09-11 03:26:43'),
(25, 'WSD-20260910-NNS5', 'Nazwa Qurotul Aini', 'P27901123086', NULL, 1, 'D3 Keperawatan', 2026, 'nazwaqurotulaini@gmail.com', '083813318225', NULL, 'Perempuan', 'All Size', 'ukuran m', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/25/077578e5-a402-45f1-a74f-350642dcfdd0.jpg', 'Screenshot_20260910_213758_SeaBank.jpg', 'image/jpeg', 164777, '2026-09-10 14:38:41', '2026-09-11 03:28:30', 9, NULL, NULL, NULL, NULL, '1CixsU98EpEkuN6Nv0OPSxKngt1DheEa7FzN3Sl7', '2026-09-10 14:36:13', '2026-09-11 03:28:33'),
(27, 'WSD-20260910-U8FE', 'putri rahmawati', 'P27901123090', NULL, 1, 'D3 Keperawatan', 2026, 'putrirahmawati150405@gmail.com', '‪0895406552612‬', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/27/de7436da-e3db-49ad-9604-dc39fb131ddd.png', 'IMG_2393.png', 'image/png', 136829, '2026-09-10 14:46:21', '2026-09-11 03:30:19', 9, NULL, NULL, NULL, NULL, 'anUxrwTRAqyRVt5okyC3Q9UAyxzatmPiuDEGz6Dp', '2026-09-10 14:42:34', '2026-09-11 03:30:23'),
(28, 'WSD-20260910-WNCC', 'Ikke wardah Alifia', 'P27902123019', NULL, 2, 'D3 Kebidanan', 2026, 'ikkewardahalifia2005@gmail.com', '085187844276', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/28/2184868e-7b46-4ef9-bde3-159f4bcad7e2.png', 'IMG_9997.png', 'image/png', 275445, '2026-09-10 14:45:07', '2026-09-11 03:29:29', 9, NULL, NULL, NULL, NULL, 'UqM6Xb3fno3Tk6mQ4VZjoddR9VhS55iumFKN9IvP', '2026-09-10 14:43:55', '2026-09-11 03:29:31'),
(29, 'WSD-20260910-KUIC', 'Nindiya keisha putri wardhana', 'P27903123032', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'nindikeisha5@gmail.com', '085393675425', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/29/64a3ff2e-3e61-4a1d-b905-86ffc0d2f09f.png', 'IMG_3479.png', 'image/png', 217567, '2026-09-10 14:49:22', '2026-09-11 03:28:59', 9, NULL, NULL, NULL, NULL, 'b8iwuSDxYSsl3PBOXPpBrUDxLMrF38VEKVZYkWml', '2026-09-10 14:47:04', '2026-09-11 03:29:03'),
(30, 'WSD-20260910-YJ2N', 'Salsabila Fatinah', 'P27902123034', NULL, 2, 'D3 Kebidanan', 2026, 'salsabilafatinah123@gmail.com', '081381967011', NULL, 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VootIenno6R9WDQxBQNpfX7VJReKeAWmkhLC9mXa', '2026-09-10 14:50:39', '2026-09-10 14:50:39'),
(31, 'WSD-20260910-ZV49', 'Nanda Triana', 'P27901123085', NULL, 1, 'D3 Keperawatan', 2026, 'nandatriana63@gmail.com', '0895610777538', NULL, 'Perempuan', 'All Size', 'Ukuran M', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/31/f34688db-2837-4a1a-97c9-129bafe56ef7.png', 'IMG_2859.png', 'image/png', 228897, '2026-09-10 15:03:46', '2026-09-11 03:31:12', 9, NULL, NULL, NULL, NULL, 'viLtar7wt03fcZ9MYr6M5EFIkiVxwMlnfhXtLJNG', '2026-09-10 14:52:39', '2026-09-11 03:31:16'),
(33, 'WSD-20260910-WRZG', 'Najmy Nasyiriah', 'P27901123084', NULL, 1, 'D3 Keperawatan', 2026, 'najmynsy@gmail.com', '081911288454', NULL, 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'AB5hcgi8qR2bqSwou0coa2RZmACthlgjUcWqJjyW', '2026-09-10 14:55:39', '2026-09-10 14:55:39'),
(35, 'WSD-20260910-06EJ', 'Nadifa nisa’ul afni putria', 'P27902123028', NULL, 2, 'D3 Kebidanan', 2026, 'nadippp10@gmail.com', '087774961932', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/35/d25b7d47-636a-4523-b228-c54dd7e6d5bf.jpeg', 'af4791b5-5233-423a-8d8c-1cee14d1f468.jpeg', 'image/jpeg', 94495, '2026-09-10 15:05:51', '2026-09-11 04:14:55', 9, NULL, NULL, NULL, NULL, 'lo26cQDQApX1AvzkkQqKWTuE9U0L9VlXhoADJhHt', '2026-09-10 15:05:31', '2026-09-11 04:16:09'),
(37, 'WSD-20260910-5JLT', 'Mave Ismatul Maftuhah', 'P27901123077', NULL, 1, 'D3 Keperawatan', 2026, 'maveisma07@gmail.com', '089665988915', NULL, 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ztj9lrI16sO7ezW1t6Nih0HpEGhPFuLOMSsdpyDP', '2026-09-10 15:28:04', '2026-09-10 15:28:04'),
(38, 'WSD-20260910-WZPW', 'Nurfitriani', 'P27901123087', NULL, 1, 'D3 Keperawatan', 2026, 'fitrinr1607@gmail.com', '085714523976', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/38/e7b34b32-834a-402f-b086-3f8997e93e80.jpg', 'Screenshot_2026-09-10-22-29-58-76_121d0782f1cd8474b48c9b27865007fd.jpg', 'image/jpeg', 146543, '2026-09-10 15:31:32', '2026-09-11 05:44:57', 9, NULL, NULL, NULL, NULL, '0JkZGKfaxNPALjPGhSm1rWDCyhXJgWTjngo1UNgl', '2026-09-10 15:28:57', '2026-09-11 05:45:00'),
(39, 'WSD-20260910-NEB9', 'A.Yodyajaya Nugraha', 'P27901123060', NULL, 1, 'D3 Keperawatan', 2026, 'jayaayodya87@gmail.com', '082377116023', NULL, 'Laki-laki', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'gpQdkvswrrqlL7jaJ4y7O5e3XAGJho2BXq4jOC9W', '2026-09-10 15:33:11', '2026-09-10 15:33:11'),
(40, 'WSD-20260911-5P8U', 'Chika Dea Hermawan F', 'P27901123062', NULL, 1, 'D3 Keperawatan', 2026, 'chikadeahf@gmail.com', '085894175637', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/40/1a7c444e-a1dd-4ce2-bf1b-8f29958be646.jpeg', 'IMG_2581.jpeg', 'image/jpeg', 245845, '2026-09-11 00:17:52', '2026-09-11 03:20:34', 9, NULL, NULL, NULL, NULL, 'RaOR93zxYFHAXC4nmEQS0LVvbNsgtnQbpCq01Cgk', '2026-09-11 00:17:28', '2026-09-11 03:20:38'),
(41, 'WSD-20260911-NO4V', 'Listi Aulia', 'P27901123076', NULL, 1, 'D3 Keperawatan', 2026, 'listiaulia23@gmail.com', '089651217028', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/41/d1b4e085-53bc-4740-8668-373a704b2544.jpg', 'Screenshot_20260911_080343_DANA.jpg', 'image/jpeg', 288098, '2026-09-11 01:06:29', '2026-09-11 03:19:36', 9, NULL, NULL, NULL, NULL, 'awG4wQhUID74d7wGO13ARhKGy7RMMlSps5l9Xige', '2026-09-11 01:05:45', '2026-09-11 03:19:39'),
(42, 'WSD-20260911-13NR', 'SITI RAHMA FADHILA', 'P27902123117', NULL, 2, 'D3 Kebidanan', 2026, 'fadhilarahma283@gmail.com', '085715407233', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/42/9b982cec-1441-48b0-aac5-6abb0cb0064b.jpg', 'IMG-20260911-WA0009.jpg', 'image/jpeg', 81038, '2026-09-11 03:24:41', '2026-09-11 03:46:46', 9, NULL, NULL, NULL, NULL, 'ItL2kquclpi4CbZgSdnLQrtEkMI8Q6zWkUcIuGQY', '2026-09-11 03:17:35', '2026-09-11 03:46:50'),
(43, 'WSD-20260911-ZS9N', 'Erlinah Ependi', 'P27901123010', NULL, 1, 'D3 Keperawatan', 2026, 'erlinahefendi05@gmail.com', '085811723991', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/43/d481e88f-0adc-4a34-985b-d06a844c0ad2.png', 'IMG_9871.png', 'image/png', 294052, '2026-09-11 03:27:36', '2026-09-14 13:18:30', 10, NULL, NULL, NULL, NULL, 'qYA619zKB9Z7fHWOt4HK25oezXFdVNIgmh2y0l2W', '2026-09-11 03:25:10', '2026-09-14 13:18:34'),
(44, 'WSD-20260911-LAZM', 'Siti Adinda Aisyah', 'P27901123042', NULL, 1, 'D3 Keperawatan', 2026, 'sitiadinda321@gmail.com', '085312893993', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/44/ddda25da-7296-4285-8578-f3991e46398f.jpg', 'image.jpg', 'image/jpeg', 4165154, '2026-09-11 03:27:12', '2026-09-11 05:52:31', 9, NULL, NULL, NULL, NULL, 'dO05A6YLMrqsgJkwL4wPFGUiOzzjaP5gAO9ReVro', '2026-09-11 03:26:10', '2026-09-11 05:52:34'),
(45, 'WSD-20260911-9BBN', 'Euis Khaerunisa', 'P27901123011', NULL, 1, 'D3 Keperawatan', 2026, 'nengeuis997@gmail.com', '085135437304', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/45/19a648fe-4f38-4f73-a0e2-de1b3d46b9b5.png', 'IMG_4674.png', 'image/png', 177247, '2026-09-11 03:28:30', '2026-09-11 04:01:52', 9, NULL, NULL, NULL, NULL, 'zoURH1xbdD3gN4b6lcUBlZySBzqKjkXtB2rCYltI', '2026-09-11 03:26:37', '2026-09-11 04:01:56'),
(47, 'WSD-20260911-BME9', 'Yeti Lidiawati', 'P27901123052', NULL, 1, 'D3 Keperawatan', 2026, 'yetilidiawati135@gmail.com', '085694688132', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/47/ef62706f-4ad0-4f7d-8cfa-840778ca5ee6.jpg', 'IMG-20260911-WA0027.jpg', 'image/jpeg', 70780, '2026-09-11 03:45:23', '2026-09-14 13:16:53', 10, NULL, NULL, NULL, NULL, '4aSa0l4WD1Fiuq85wfqMcYckKTsocQLfuzdQwJ5Z', '2026-09-11 03:34:02', '2026-09-14 13:16:59'),
(49, 'WSD-20260911-LE7X', 'Asep saipul Buchori', 'P27901123004', NULL, 1, 'D3 Keperawatan', 2026, 'asepofficia57@gmail.com', '085697885179', NULL, 'Laki-laki', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/49/af1abe4c-db78-4070-a521-fc899affd2a3.jpg', '1789098558677.jpg', 'image/jpeg', 503635, '2026-09-11 03:50:31', '2026-09-11 05:54:31', 9, NULL, NULL, NULL, NULL, 'SHKJrBfatDJpmJ3CTGGgn9fNJS8a1UT82e3Evzdq', '2026-09-11 03:49:56', '2026-09-11 05:54:35'),
(50, 'WSD-20260911-FKSN', 'Yati Nofiyanti', 'P27902123123', NULL, 2, 'D3 Kebidanan', 2026, 'yatinofiyanti6@gmail.com', '089628284440', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/50/8d5a886c-24a9-4838-abcc-50221852188e.png', 'IMG_7963.png', 'image/png', 113560, '2026-09-11 03:53:36', '2026-09-11 04:12:31', 9, NULL, NULL, NULL, NULL, 'zFqGUabtqwc3klTVZ5Gvhhf4YK8UdwaEJi3pPRRf', '2026-09-11 03:50:38', '2026-09-11 04:12:34'),
(52, 'WSD-20260911-YAJI', 'Jolanda Juliana', 'P27902123022', NULL, 2, 'D3 Kebidanan', 2026, 'jolandjlian0@gmail.com', '082114402738', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/52/aa7954f1-4efd-4018-8da5-4f945b7a352d.jpeg', 'Jago_receipt_21-11-2026 11-21@260911SYATIDJ100019268.jpeg', 'image/jpeg', 100839, '2026-09-11 04:22:14', '2026-09-11 05:55:21', 9, NULL, NULL, NULL, NULL, 'LoSNKw03GEHh8LkmBcdQEqKq15OSEGCbF7FIKhbb', '2026-09-11 04:19:58', '2026-09-11 05:55:24'),
(53, 'WSD-20260911-R2OQ', 'Nabila Aulia Farhanni', 'P27901123081', NULL, 1, 'D3 Keperawatan', 2026, 'hanni0875@gmail.com', '085893388695', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/53/8900a724-8dbb-47e1-bd91-2a158a07d1ad.jpg', 'Pembayaran Toga.jpg', 'image/png', 237360, '2026-09-11 04:25:49', '2026-09-11 08:05:48', 9, NULL, NULL, NULL, NULL, '2DyxZupx3i24aOYJFc3EKWjmaH0aZQfKRvWxQXv6', '2026-09-11 04:24:57', '2026-09-11 08:06:56'),
(54, 'WSD-20260911-JY0H', 'Linta Ratmawati', 'P27902123145', NULL, 2, 'D3 Kebidanan', 2026, 'lintaratmawati29@gmail.com', '0858-8601-4823', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/54/81a68b59-9caa-4158-bab3-119bf00ee53d.jpg', 'IMG_Fri Sep 11 11_27_56 GMT+07_00 2026.jpg', 'image/jpeg', 210206, '2026-09-11 04:28:51', '2026-09-11 05:58:36', 9, NULL, NULL, NULL, NULL, 'mFqqcGSXhgISUZm8LbKWKJTghJwhpw9nnPU6Tilk', '2026-09-11 04:26:38', '2026-09-11 05:58:39'),
(55, 'WSD-20260911-E0TR', 'Alfiyatuzzahro', 'P27901123001', NULL, 1, 'D3 Keperawatan', 2026, 'alfiyatuzzahro02@gmail.com', '085893079442', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/55/c9ebdef3-9b0e-48f6-93e5-fee2fbdfcd53.jpg', 'Screenshot_20260911_112717_SeaBank.jpg', 'image/jpeg', 256137, '2026-09-11 04:27:55', '2026-09-11 05:56:11', 9, NULL, NULL, NULL, NULL, '1QrFRfVoOBOx59DRoHeKpuos1A9MphrmthfqxiYl', '2026-09-11 04:27:20', '2026-09-11 05:56:14'),
(56, 'WSD-20260911-UJMJ', 'Salsabila Nur Aulia', 'P27901123096', NULL, 1, 'D3 Keperawatan', 2026, '245salsabilanur@gmail.com', '089530058099', NULL, 'Perempuan', 'All Size', 'Pembayaran dan pemesanan bergabung dengan yunika aulia', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/56/54ec5874-6c33-4357-bbd0-ea3c8ce027a7.jpg', 'IMG-20260910-WA0100.jpg', 'image/jpeg', 52596, '2026-09-11 04:28:28', '2026-09-11 04:53:07', 9, NULL, NULL, NULL, NULL, 'IGwySaHWjFwfNvcFWxiGBKoHhJxa87shTC7vBoiW', '2026-09-11 04:27:53', '2026-09-11 04:53:10'),
(57, 'WSD-20260911-RZKP', 'Early Azzahra', 'P27901123065', NULL, 1, 'D3 Keperawatan', 2026, 'azzearly@gmail.con', '089651503133', NULL, 'Perempuan', 'All Size', 'pemesananan dan pembayaran bergabung dengan yunika aulia', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/57/ddbf4ee9-bb73-473c-933e-84cb3ddc3aea.jpeg', 'A492C7C9-38C7-4F1C-9E58-DC2C7BF9D5BF.jpeg', 'image/jpeg', 52596, '2026-09-11 04:30:55', '2026-09-11 04:51:18', 9, NULL, NULL, NULL, NULL, 'zEoGVbkI4jKeMO1HPZFHTDtkB3fFzoGIGOKgjfDX', '2026-09-11 04:30:22', '2026-09-11 04:51:21'),
(59, 'WSD-20260911-IJM7', 'Azzahra Satriani Kayla Adzikarinda', 'P27901123061', NULL, 1, 'D3 Keperawatan', 2026, 'kaylasatriani.ks@gmail.com', '089508557090', NULL, 'Perempuan', 'All Size', 'pemesanan dan pembayaran bergabung dengan yunika aulia', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/59/0445a7ac-91ae-40c4-906a-0eaa0558491d.jpg', 'IMG-20260910-WA0052.jpg', 'image/jpeg', 52596, '2026-09-11 04:38:09', '2026-09-11 04:53:36', 9, NULL, NULL, NULL, NULL, 'uYDvz3kh2gTPIEM8dRqm2c7u76cTqFIFGBZeyrlw', '2026-09-11 04:36:21', '2026-09-11 04:53:39'),
(61, 'WSD-20260911-UXV4', 'Nenden Nurul Aliffah', 'P27901123031', NULL, 1, 'D3 Keperawatan', 2026, 'nendenna49@gmail.com', '081511920984', NULL, 'Perempuan', 'All Size', 'mohon maap jika diperbolehkan mau ukurannya yang M yaaa, terima kasih banyakkk', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/61/6a7a18bd-dfc2-4bc9-9633-d176abc306de.jpg', 'image.jpg', 'image/jpeg', 3455923, '2026-09-11 05:47:04', '2026-09-14 13:27:17', 10, NULL, NULL, NULL, NULL, 'EjXjPn2uM3JmVAF8FjryIRTMzCbDmdFj5TcjDpTX', '2026-09-11 04:40:13', '2026-09-14 13:27:20'),
(62, 'WSD-20260911-OQSA', 'SOFARIANI MARTIANA', 'P27902123120', NULL, 2, 'D3 Kebidanan', 2026, 'rianimartiana8@gmail.com', '085693556189', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/62/e988697f-fbc5-4550-927d-b5d7a46a041f.jpeg', 'fdb6082a-d5bb-40a5-b3ea-58032888aa49.jpeg', 'image/jpeg', 64547, '2026-09-11 04:47:35', '2026-09-11 05:58:57', 9, NULL, NULL, NULL, NULL, 'Wm17U2sxkuVBazM5Waae3LhsWCEY8UCQnZSLu5r2', '2026-09-11 04:43:00', '2026-09-11 05:59:01'),
(63, 'WSD-20260911-2WFJ', 'Naila', 'P27901123029', NULL, 1, 'D3 Keperawatan', 2026, 'nailaplwn22@gmail.com', '082122481532', NULL, 'Perempuan', 'All Size', 'sudah transfer bareng atas nama ghaida', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/63/c1cd65e6-138f-4721-94a0-d663b9556539.jpeg', '08ba1edf-abac-4f92-8918-b22e5e0bdc3b.jpeg', 'image/jpeg', 114878, '2026-09-11 04:50:45', '2026-09-11 04:54:16', 9, NULL, NULL, NULL, NULL, 'By1L1Wp0mhOjw08Hvn6XnK5nl7c8IoSDkbx9brqm', '2026-09-11 04:43:08', '2026-09-11 04:54:19'),
(64, 'WSD-20260911-LPE3', 'SITI MUKOYIMAH', 'P27902123078', NULL, 2, 'D3 Kebidanan', 2026, 'sitimukoyimah2@gmail.com', '083879987300', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/64/1a2f9727-cabf-4d61-a144-5126fdb5fc6a.jpg', 'Bukti Pembayaran Set Toga Wisuda Siti Mukoyimah .jpg', 'image/jpeg', 295627, '2026-09-11 07:24:01', '2026-09-14 02:44:39', 9, NULL, NULL, NULL, NULL, 'UeaJI7SBaRbIuvHN9G8h6wL4M1OosfRVlooQTHqE', '2026-09-11 04:45:59', '2026-09-14 02:44:42'),
(65, 'WSD-20260911-XBEU', 'Zahara Nur Azzani', 'P27901123053', NULL, 1, 'D3 Keperawatan', 2026, 'zaharaazzani11@gmail.com', '085719009838', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/65/a96acf9c-45ed-4cea-9081-234ec3bc6557.png', 'IMG_2767.png', 'image/png', 139485, '2026-09-11 04:57:06', '2026-09-11 06:16:24', 9, NULL, NULL, NULL, NULL, 'LVvsQvaem2HV6yZJC5xy4SNuKmMQDn6iSXzMfcDY', '2026-09-11 04:56:21', '2026-09-11 06:16:27'),
(66, 'WSD-20260911-NH1O', 'Lifiya Nuryansyah', 'P27901123020', NULL, 1, 'D3 Keperawatan', 2026, 'lifiyanur22@gmail.com', '085814944505', NULL, 'Perempuan', 'All Size', 'ukuran toga M', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/66/6befc6ac-0e00-40f9-8bd8-4688cb2498db.jpeg', 'IMG_2449.jpeg', 'image/jpeg', 257498, '2026-09-11 05:01:48', '2026-09-14 13:32:02', 10, NULL, NULL, NULL, NULL, 'K9QrWexAFPM6hYawPInmQDvgkCKZeEdJhraqFLlJ', '2026-09-11 04:57:41', '2026-09-14 13:32:06'),
(67, 'WSD-20260911-WR6N', 'Anggun Ana Resta', 'P27901123002', NULL, 1, 'D3 Keperawatan', 2026, 'anggunar28@gmail.com', '085716626968', NULL, 'Perempuan', 'All Size', 'transfer melalui seabank an. zahara', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/67/5a1ea701-eec7-4c2d-bb61-df32fbc56e00.jpeg', 'bd19bf34-92c1-41e3-a700-61dcae388db6.jpeg', 'image/jpeg', 95497, '2026-09-11 04:59:31', '2026-09-11 06:11:13', 9, NULL, NULL, NULL, NULL, 'ivqmSDSxdvE8UG09IDhYxcUdswzPUNSb7iUQQL4F', '2026-09-11 04:58:43', '2026-09-11 06:11:16'),
(68, 'WSD-20260911-ARSD', 'Erika Haustin Firdaus', 'P27901123066', NULL, 1, 'D3 Keperawatan', 2026, 'austinerikafie@gmail.com', '085111250627', NULL, 'Perempuan', 'All Size', 'transfer melalui seabank an Zahara Nur Azzani', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/68/12996922-5bd4-4e07-8434-0482fc4d6a3b.jpg', 'IMG-20260911-WA0001.jpg', 'image/jpeg', 95497, '2026-09-11 04:59:42', '2026-09-11 06:15:22', 9, NULL, NULL, NULL, NULL, 'm4tguV2nu2awkqw2iDrfr4oeEvyUI1rzHSzKKYRz', '2026-09-11 04:59:11', '2026-09-11 06:15:25'),
(69, 'WSD-20260911-OTPP', 'NADIA ERNASARI', 'P27901123028', NULL, 1, 'D3 Keperawatan', 2026, 'ernasarinadia1@gmail.com', '088808348239', NULL, 'Perempuan', 'All Size', 'Pembayaran Pemesanan bergabung dengan Yunika Aulia', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/69/172f1fbe-e57e-4629-ab76-471c4186f6a9.jpeg', '341a378f-e4e2-4bfa-b067-4792e8149ae0.jpeg', 'image/jpeg', 74338, '2026-09-11 05:00:18', '2026-09-14 13:33:57', 10, NULL, NULL, NULL, NULL, 'QkzG3eQ79VE9PW0hPVFFAVL3cqAdIyQQFCmqFxJz', '2026-09-11 04:59:50', '2026-09-14 13:34:00'),
(70, 'WSD-20260911-MUBN', 'Fadilla Aulia Sofyanti', 'P27901123067', NULL, 1, 'D3 Keperawatan', 2026, 'sofyantifadilla@gmail.com', '083896945528', NULL, 'Perempuan', 'All Size', 'Fadilla Aulia Sofyanti sudah transfer melalui seabank a.n Zahara Nur Azzani', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/70/2e12e03b-8e67-4d9b-8111-281b61499c3b.jpg', 'IMG-20260911-WA0006.jpg', 'image/jpeg', 95497, '2026-09-11 05:04:48', '2026-09-11 06:15:44', 9, NULL, NULL, NULL, NULL, 'pPLDyWyvzuXNGeDLtvwnlYgeA0pdIZ1nLx8QGxQn', '2026-09-11 05:00:23', '2026-09-11 06:15:47'),
(71, 'WSD-20260911-PZCG', 'Sri Wahyuni', 'P27901123045', NULL, 1, 'D3 Keperawatan', 2026, 'sriwah01yuni@gmail.com', '088210439440', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/71/98ad319a-42d8-49dc-9e4a-a7853afaef2f.jpg', 'IMG-20260911-WA0015.jpg', 'image/jpeg', 116219, '2026-09-11 05:02:57', '2026-09-11 06:20:22', 9, NULL, NULL, NULL, NULL, 'zi3o5kI6qQ5hmKsAksreqqPW9hdbAZEei1KN5RU5', '2026-09-11 05:00:43', '2026-09-11 06:20:25'),
(72, 'WSD-20260911-SK2G', 'Fiona Zahira', 'P27901123013', NULL, 1, 'D3 Keperawatan', 2026, 'fionazahira43@gmail.com', '085881607134', NULL, 'Perempuan', 'All Size', 'transfer melalui seabank an. zahara', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/72/c7d8a07d-2a5f-43d5-95ae-f9d2d53a7e4d.jpg', 'IMG-20260911-WA0001.jpg', 'image/jpeg', 95497, '2026-09-11 05:04:29', '2026-09-11 06:13:14', 9, NULL, NULL, NULL, NULL, 'DFV241vV2FwvdZQWSPb0J1y8jcD70pkU7xIssFOU', '2026-09-11 05:02:14', '2026-09-11 06:13:17'),
(73, 'WSD-20260911-HQQW', 'Wulan Amilia Simbolon', 'P27901123050', NULL, 1, 'D3 Keperawatan', 2026, 'wulanamilia8@gmail.com', '089526806014', NULL, 'Perempuan', 'All Size', 'transfer melalui seabank an. zahara', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/73/cc1f19fe-4950-4899-a9d5-863e426f87ca.jpeg', '1630cb4b-c017-4fe9-880e-3650d87312d4.jpeg', 'image/jpeg', 115312, '2026-09-11 05:02:43', '2026-09-11 06:15:08', 9, NULL, NULL, NULL, NULL, 'kCSo0OZUx9wJahAZGl9WSzbYCHnYklY9fT3SH7IV', '2026-09-11 05:02:15', '2026-09-11 06:15:10'),
(74, 'WSD-20260911-RL2T', 'Shelin Hapytiary', 'P27901123041', NULL, 1, 'D3 Keperawatan', 2026, 'hapitiaryshelin@gmail.com', '089638631453', NULL, 'Perempuan', 'All Size', 'transfer melalui seabank a.n zahara nur azzani', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/74/100251b4-3a12-486d-b172-95f775b97720.jpeg', 'b35468fd-1868-4129-9ced-faf8ed22d173.jpeg', 'image/jpeg', 115344, '2026-09-11 05:03:33', '2026-09-11 06:14:52', 9, NULL, NULL, NULL, NULL, 'Ye9fVy965zuH00VhGXSoBnR3zWUp9Imv2riqmnNA', '2026-09-11 05:03:09', '2026-09-11 06:14:54'),
(75, 'WSD-20260911-NL1M', 'Sandrina Atsna Fadhlaeni', 'P27901123040', NULL, 1, 'D3 Keperawatan', 2026, 'sandrinadinaatsna@gmail.com', '081322497360', NULL, 'Perempuan', 'All Size', 'Sandrina Atsna Fadhlaeni transfer melalui Seabank a.n Zahara Nur Azzani', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/75/c2cbb529-3158-45d5-98d1-b2b01684e318.jpg', 'IMG-20260911-WA0024.jpg', 'image/jpeg', 73202, '2026-09-11 05:06:40', '2026-09-11 06:11:48', 9, NULL, NULL, NULL, NULL, 'gIx5tdZKnTnqahGkAlnyNRjI9q8I44msjgsbAxns', '2026-09-11 05:04:26', '2026-09-11 06:11:51'),
(76, 'WSD-20260911-QP53', 'Astrid Salsabila', 'P27901123005', NULL, 1, 'D3 Keperawatan', 2026, 'astridsalsabila0@gmail.com', '08985567428', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/76/e82f15bb-0ce9-4fb6-b0ab-1675b51d262b.jpg', 'IMG-20260911-WA0021.jpg', 'image/jpeg', 95497, '2026-09-11 05:05:33', '2026-09-11 06:10:49', 9, NULL, NULL, NULL, NULL, 'izvxGL5fInN9gJZpqAb0HIWuuJr8Es4RCiTTbZjm', '2026-09-11 05:04:47', '2026-09-11 06:10:52'),
(77, 'WSD-20260911-JAEJ', 'Mira Nurpatmawati', 'P27901123024', NULL, 1, 'D3 Keperawatan', 2026, 'miranma4255@gmail.com', '081525878640', NULL, 'Perempuan', 'All Size', 'Mira Nurpatmawati transfer melalui seabank a. n Zahara', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/77/4f1c6b51-3637-4c6d-96fd-29726977fdcd.jpg', 'IMG-20260911-WA0002.jpg', 'image/jpeg', 95497, '2026-09-11 05:07:55', '2026-09-11 06:11:30', 9, NULL, NULL, NULL, NULL, 'lLGv30OeZVnsMz51LB3n2kW1Cy15RWtXdP2dsuR3', '2026-09-11 05:05:50', '2026-09-11 06:11:33'),
(78, 'WSD-20260911-XRMN', 'puji kharisma', 'P27901123035', NULL, 1, 'D3 Keperawatan', 2026, 'pujikharisma520@gmail.com', '085819068824', NULL, 'Perempuan', 'All Size', 'transfer melalui seabank a.n Zahara nur azani', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/78/9252c7a7-8bbc-4790-ba88-112d6367c796.jpg', 'IMG-20260911-WA0012.jpg', 'image/jpeg', 95497, '2026-09-11 05:07:09', '2026-09-11 06:12:11', 9, NULL, NULL, NULL, NULL, 'qiFSHMZlJqf6k0BHI88moEls7DJMjmO19BETkVuk', '2026-09-11 05:06:03', '2026-09-11 06:12:14'),
(79, 'WSD-20260911-RJ3G', 'Rindi Yandini', 'P27901123093', NULL, 1, 'D3 Keperawatan', 2026, 'rindiyandini2@gmail.com', '085863197554', NULL, 'Perempuan', 'All Size', 'Rindi Yandini transfer melalui seabank a.n Zahara', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/79/cd33a5c9-3b71-4516-841e-b9fc8a146aa1.jpeg', 'bbcd299a-0f11-4e67-97c6-d73707bf44c1.jpeg', 'image/jpeg', 115344, '2026-09-11 05:09:47', '2026-09-11 06:16:00', 9, NULL, NULL, NULL, NULL, 'KBJR9CdQaZtDKkcZxo1SLd3EnAnZve5SzrNjPP5d', '2026-09-11 05:09:00', '2026-09-11 06:16:03'),
(80, 'WSD-20260911-GB9J', 'Rahma Laela', 'P27901123036', NULL, 1, 'D3 Keperawatan', 2026, 'laelarahma945@gmail.com', '088214663240', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/80/8bf65bf5-b01c-402e-951b-4fcc1f30fe22.png', 'IMG_4220.png', 'image/png', 124711, '2026-09-11 05:11:53', '2026-09-11 06:21:13', 9, NULL, NULL, NULL, NULL, 'i7ZENE8tL1gSDRmLECKnX3LWGaPdlM5mKvmWDGbV', '2026-09-11 05:10:25', '2026-09-11 06:21:17'),
(81, 'WSD-20260911-LUUR', 'NADIA DWI PUTRI', 'P27901123027', NULL, 1, 'D3 Keperawatan', 2026, 'nadiadwiputri39@gmail.com', '‪085545272097‬', NULL, 'Perempuan', 'All Size', 'Bapak/Ibu kalau bisa ukuran M', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/81/bfeef4c4-0f0e-4fef-a656-a226c459216e.png', 'IMG_4521.png', 'image/png', 594482, '2026-09-11 05:15:14', '2026-09-11 06:22:05', 9, NULL, NULL, NULL, NULL, 'aeCjrbIPeLDnAJMIqbTvuMn3f5Vwu6QHzGduIcY9', '2026-09-11 05:12:38', '2026-09-11 06:55:36'),
(82, 'WSD-20260911-JBLE', 'Vidni Aulia', 'P27901123048', NULL, 1, 'D3 Keperawatan', 2026, 'vidnia040@gmail.com', '0895326022048', NULL, 'Perempuan', 'All Size', 'mohon maaf jika diperbolehkan mau ukuran nya M, terima kasii', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/82/e733de26-fdbd-45da-969a-d5555443dd27.png', 'IMG_3552.png', 'image/png', 263442, '2026-09-11 05:15:16', '2026-09-11 06:23:38', 9, NULL, NULL, NULL, NULL, 'BIMlfmnt6lGKf09NqAofxbDAQVmGPfncdyR9sUsa', '2026-09-11 05:13:59', '2026-09-11 06:23:42'),
(84, 'WSD-20260911-HNTQ', 'Citra Amanda Ramadhani', 'P27901123007', NULL, 1, 'D3 Keperawatan', 2026, 'mandakybie@gmail.com', '085770348734', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/84/73075111-926d-4e40-9365-f7df86ca7ca4.jpg', 'Transaksi_BCAmobile-20260911-122105.jpg', 'image/jpeg', 497628, '2026-09-11 05:21:29', '2026-09-11 06:24:57', 9, NULL, NULL, NULL, NULL, 'gJdHKfKTqJGOkCML0g07zSJEayxzmXMZwohbDzCF', '2026-09-11 05:17:40', '2026-09-11 06:24:59'),
(86, 'WSD-20260911-69YH', 'Lia Ramadhayani', 'P27901123019', NULL, 1, 'D3 Keperawatan', 2026, 'ramadhayanilia@gmail.com', '081278010977', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/86/2aa8f5f6-a6af-495b-863d-e972c670ddb2.png', 'IMG_5501.png', 'image/png', 266627, '2026-09-11 05:23:25', '2026-09-11 06:25:29', 9, NULL, NULL, NULL, NULL, 'maafANbhtzedezzhPLgIw9E4cl8bWfvG7Ry2P0MZ', '2026-09-11 05:20:50', '2026-09-11 06:25:32'),
(87, 'WSD-20260911-WNBK', 'ALYA RAHMA AZKIA', 'P27901123056', NULL, 1, 'D3 Keperawatan', 2026, 'alyarahmaazkia293@gmail.com', '083895706999', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/87/9d60a2f2-095c-4fa1-ad63-1e1f9c9f4a5c.jpeg', 'WhatsApp Image 2026-09-11 at 12.36.16.jpeg', 'image/jpeg', 318188, '2026-09-11 05:36:43', '2026-09-11 06:27:04', 9, NULL, NULL, NULL, NULL, 'C7sarKVKkhdI3KiFSNfcdas1FgQnuSvedrvfgLIh', '2026-09-11 05:24:25', '2026-09-11 06:27:08'),
(88, 'WSD-20260911-TFE4', 'LAELA AWALIAH', 'P27901123075', NULL, 1, 'D3 Keperawatan', 2026, 'laelaawaliah@gmail.com', '085711546902', NULL, 'Perempuan', 'All Size', 'Kalo bisa ukurannya jangan terlalu besar ya kak, TB saya 157 Bb 45', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/88/475aecfc-db0d-4b5a-a754-7fa48bfc17e7.jpg', 'IMG-20260911-WA0016.jpg', 'image/jpeg', 147211, '2026-09-11 05:29:07', '2026-09-14 01:34:48', 9, NULL, NULL, NULL, NULL, 'iAZyl70x2FHrOSTaiMKOGRf4FXc2i3GzNOpBhXfm', '2026-09-11 05:27:31', '2026-09-14 01:34:51'),
(89, 'WSD-20260911-8LRV', 'Dede Fitriyani', 'P27901123063', NULL, 1, 'D3 Keperawatan', 2026, 'dedefitriyani215@gmail.com', '0895636709076', NULL, 'Perempuan', 'All Size', 'pemesanan toga wisuda keperawatan an.Dede Fitriyani', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/89/26fa4185-60fb-4794-964f-af8a5e88b874.jpg', 'IMG_Fri Sep 11 14_34_17 GMT+07_00 2026.jpg', 'image/jpeg', 233952, '2026-09-11 07:35:25', '2026-09-14 02:45:11', 9, NULL, NULL, NULL, NULL, 'Mzk1qAl0utWCEwDKh1ZumToyMEcNA3pELUVXR2Yg', '2026-09-11 05:30:06', '2026-09-14 02:45:14'),
(91, 'WSD-20260911-2PRO', 'Nadin Irdi Fasya', 'P27901123083', NULL, 1, 'D3 Keperawatan', 2026, 'nadinirdifasya@gmail.com', '087867988629', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/91/30b897b0-14f5-4810-865a-126ff0b6e68d.jpg', 'IMG-20260911-WA0010.jpg', 'image/png', 215816, '2026-09-11 05:32:49', '2026-09-11 05:45:46', 9, NULL, NULL, NULL, NULL, 'dv0ZBBlEW1QMb4lx0a6rKJvI0n9seFbWq6fGAB8X', '2026-09-11 05:31:20', '2026-09-11 05:45:50'),
(92, 'WSD-20260911-WTZU', 'Uswatun Hasanah', 'P27901123105', NULL, 1, 'D3 Keperawatan', 2026, 'uswat000@gmail.com', '082113555875', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/92/d1341b86-9371-48b1-96de-fdc2df0f404d.jpg', 'Screenshot_2026-09-11-12-37-50-062_id.dana.jpg', 'image/jpeg', 486678, '2026-09-11 05:38:20', '2026-09-11 05:53:26', 9, NULL, NULL, NULL, NULL, 'IAk6mzbzZ9KGGPQWZmBxtwXSqQ2swCL72ik6imcx', '2026-09-11 05:35:57', '2026-09-11 05:53:29'),
(93, 'WSD-20260911-QQHN', 'Siti Najah Irda Maelani Julian', 'P27901123100', NULL, 1, 'D3 Keperawatan', 2026, 'irdanajah123@gmail.com', '085697126504', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/93/ad83a4c9-54ae-481e-a36a-29c33a97644e.jpg', 'IMG-20260911-WA0000.jpg', 'image/jpeg', 56025, '2026-09-11 05:40:13', '2026-09-11 06:31:34', 9, NULL, NULL, NULL, NULL, 'mXeQKRbUFwdCELTQXawEuAUu8B3pcXIVsbxqPSYU', '2026-09-11 05:36:14', '2026-09-11 06:31:37'),
(94, 'WSD-20260911-ZWUY', 'Ladiyan Hanifa', 'P27901123074', NULL, 1, 'D3 Keperawatan', 2026, 'ladiyanhanifa8@gmail.com', '085692771471', NULL, 'Perempuan', 'All Size', 'Bayar toga an. Ladiyan Hanifa', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/94/efb01c89-cc31-4621-947c-eaeed7db0d59.jpg', 'IMG-20260911-WA0042.jpg', 'image/jpeg', 128921, '2026-09-11 05:43:41', '2026-09-11 05:53:01', 9, NULL, NULL, NULL, NULL, 'JrWnFDtu8MKSpP1LdD5Vw0nkqNc3sGKvE5Permta', '2026-09-11 05:42:39', '2026-09-11 05:53:04'),
(95, 'WSD-20260911-IUCD', 'Yanti Febriyanti', 'P27901123051', NULL, 1, 'D3 Keperawatan', 2026, 'FY111220@gmail.com', '081384605954', NULL, 'Perempuan', 'All Size', 'Jangan terlalu besar', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/95/fffe706b-69e7-45da-9c13-9c9973212956.jpg', 'IMG_20260911_124606_266.jpg', 'image/jpeg', 109654, '2026-09-11 05:47:03', '2026-09-11 06:32:28', 9, NULL, NULL, NULL, NULL, 'JUNTaZMVV7raZ3cWGEqHGXMgR6MizQKh4YxSXD2t', '2026-09-11 05:44:38', '2026-09-11 06:32:31'),
(96, 'WSD-20260911-TKSB', 'Siti Nuranisa', 'P27901123043', NULL, 1, 'D3 Keperawatan', 2026, 'sitinuranisa475@gmail.com', '08558681369', NULL, 'Perempuan', 'All Size', 'agak kecilan bb 44 tb 155', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/96/5643ec21-2769-4c3f-bfb2-787c0ac7c651.png', 'IMG_7831.png', 'image/png', 261045, '2026-09-11 05:54:14', '2026-09-11 07:15:51', 9, NULL, NULL, NULL, NULL, 'Sm8Dd8rDe4hc72Rn2Vk8l5bBjyB7lJYcBiEgYUX9', '2026-09-11 05:49:36', '2026-09-11 07:15:53'),
(97, 'WSD-20260911-KO1D', 'Linda Oktaviani', 'P27901123021', NULL, 1, 'D3 Keperawatan', 2026, 'archivesndaa@gmail.com', '085971686528', NULL, 'Perempuan', 'All Size', 'Linda Oktaviani transfer melalui Seabank a.n Zahara Nur Azzani', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/97/3e78edbd-2e26-4c5c-b774-cab2f575c128.jpg', 'IMG-20260911-WA0023.jpg', 'image/jpeg', 95497, '2026-09-11 06:06:44', '2026-09-11 06:13:32', 9, NULL, NULL, NULL, NULL, 'eEBFqsSAvpocnPJJPvoYfJJXXhGNCUn5eDZTjmky', '2026-09-11 06:05:00', '2026-09-11 06:13:35'),
(99, 'WSD-20260911-PEZW', 'Gabriella Svetlana de Kock', 'P27901123015', NULL, 1, 'D3 Keperawatan', 2026, 'elagabri247@gmail.com', '089675640376', NULL, 'Perempuan', 'All Size', 'size toga S', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/99/e3fa86e4-a4c6-4869-8a6c-142f75761bc9.jpeg', 'ed20adba-0009-4393-8df3-7e4c915b2b0a.jpeg', 'image/jpeg', 115344, '2026-09-11 06:24:30', '2026-09-11 06:33:06', 9, NULL, NULL, NULL, NULL, 'gaJF2v0o93oLGEBEqgbrFou35xHpm2CEzkjv4Kbj', '2026-09-11 06:23:56', '2026-09-11 06:33:09'),
(100, 'WSD-20260911-YPKI', 'Triwanda Daulay', 'P27901123047', NULL, 1, 'D3 Keperawatan', 2026, 'daulaytriwanda08@gmail.com', '081328269685', NULL, 'Perempuan', 'All Size', 'size toga M', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/100/7ca094f8-b0b1-4c4c-a13c-f3b1e6dae376.jpg', 'IMG-20260911-WA0009.jpg', 'image/jpeg', 95497, '2026-09-11 06:24:48', '2026-09-11 06:34:01', 9, NULL, NULL, NULL, NULL, 'KNQuN983CTbXcdTRYURCKevwzIMBMEk1xuUAiXXM', '2026-09-11 06:23:56', '2026-09-11 06:34:04'),
(101, 'WSD-20260911-RNH7', 'Fortuna Putri Wanda Pratami', 'P27902123096', NULL, 2, 'D3 Kebidanan', 2026, 'fortunaputri04@gmail.com', '085930470845', NULL, 'Perempuan', 'All Size', 'BB 50kg\r\nTB 153cm', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/101/e7696e8a-2f90-43a6-a8b9-b54f8b2ecb4a.jpg', 'Screenshot_2026-09-11-13-31-13-006_id.dana.jpg', 'image/jpeg', 551241, '2026-09-11 06:35:55', '2026-09-14 13:32:49', 10, NULL, NULL, NULL, NULL, '8OtryBq2toezMqg5RZcGiDr5mOthscskDrieugpp', '2026-09-11 06:34:44', '2026-09-15 01:51:17'),
(102, 'WSD-20260911-XUMM', 'Oktavira Hayani', 'P27901123088', NULL, 1, 'D3 Keperawatan', 2026, 'oktavira.hayani21@gmail.com', '085718614320', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/102/a5f6bb74-f9da-4770-9efd-addefde6e52f.jpeg', 'IMG_1009.jpeg', 'image/jpeg', 247422, '2026-09-11 06:47:26', '2026-09-11 06:49:33', 9, NULL, NULL, NULL, NULL, 'gIxSeAdGj8KTkmkvEvdJFOqxbpfTkRiIOeGF2fD4', '2026-09-11 06:47:00', '2026-09-11 06:49:36'),
(103, 'WSD-20260911-KV0E', 'Ira puspitasari', 'P27901123017', NULL, 1, 'D3 Keperawatan', 2026, 'puspitsariira@gmail.com', '088224648137', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/103/8ac1d0ac-b53b-4c7d-ad2d-566077a27e75.jpg', 'IMG-20260911-WA0024.jpg', 'image/jpeg', 236796, '2026-09-11 09:12:17', '2026-09-14 13:29:54', 9, NULL, NULL, NULL, NULL, 'YwFTjW0hJ5GYqgGy0ASuLDG60LfYyjqB7ryga2zG', '2026-09-11 06:48:26', '2026-09-14 13:29:57'),
(104, 'WSD-20260911-3GHC', 'ARAFAH NISA AULIA', 'P27901123059', NULL, 1, 'D3 Keperawatan', 2026, 'arafahnisa01@gmail.com', '081219477790', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/104/7d924abd-e943-482e-9a0e-786780fc6ee6.jpeg', 'WhatsApp Image 2026-09-11 at 1.56.10 PM.jpeg', 'image/jpeg', 84692, '2026-09-11 07:00:34', '2026-09-14 02:44:05', 9, NULL, NULL, NULL, NULL, 'GGszbpXlDc4kshGh5rCf72eTJp3rdjO6z3vq8Ssp', '2026-09-11 06:53:54', '2026-09-14 02:44:08'),
(108, 'WSD-20260911-EPGO', 'Aninda Nur Fitriyana', 'P27901123003', NULL, 1, 'D3 Keperawatan', 2026, 'anindafitri2019@gmail.com', '083876289867', NULL, 'Perempuan', 'All Size', 'uk :s', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/108/f09c75c9-34fc-481e-a030-75431cf20910.jpg', 'IMG-20260911-WA0010.jpg', 'image/jpeg', 65802, '2026-09-11 08:06:27', '2026-09-14 02:46:12', 9, NULL, NULL, NULL, NULL, 'YWtqmtRuNBXEo4o1paMrccG0IpWQCu9nIHB1SnNp', '2026-09-11 08:02:42', '2026-09-14 02:46:16'),
(109, 'WSD-20260911-PDBD', 'Putri Rahmawati Ningsih', 'P27903123035', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'putrirahmaa713@gmail.com', '085942579052', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/109/ff585d53-84f4-4e06-bb60-69a2f5449f8a.jpg', 'Screenshot_20260912_181007_Chrome.jpg', 'image/jpeg', 555200, '2026-09-12 11:10:20', '2026-09-14 03:14:04', 9, NULL, NULL, NULL, NULL, 'odBjP1hiD32HP3MYXQy4YKpH5Mi7aCJlqJ4zE1xK', '2026-09-11 08:03:40', '2026-09-14 03:14:09'),
(110, 'WSD-20260911-ZSW6', 'Marzela Diana Putri', 'P27903123025', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'marzeladianaputri@gmail.com', '085779719532', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/110/bead2fb7-b416-4ca3-9fc6-c108cc62c195.jpg', 'IMG-20260912-WA0040.jpg', 'image/jpeg', 73053, '2026-09-12 11:19:31', '2026-09-14 03:15:36', 9, NULL, NULL, NULL, NULL, '6rqH95xVbC3B1HqVQHYoIWKt9sHJQcDdZx1GNWlB', '2026-09-11 08:05:25', '2026-09-14 03:15:41'),
(111, 'WSD-20260911-3MZW', 'HIMATUL ALIYAH', 'P27901123070', NULL, 1, 'D3 Keperawatan', 2026, 'himatulhimatulaliyah15@gmail.com', '082258094672', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/111/b2180af7-8cde-430f-a0a7-abb06d9ef065.png', 'IMG_6519.png', 'image/png', 115679, '2026-09-11 08:44:32', '2026-09-14 01:35:44', 9, NULL, NULL, NULL, NULL, 'DZJ7dRPpPxty1kuC3YdAxJv9Eo1V9aqbciIpc0fj', '2026-09-11 08:42:02', '2026-09-14 01:35:47'),
(112, 'WSD-20260911-3ONM', 'PUTRI AYU WIDIA NINGRUM', 'P27901123089', NULL, 1, 'D3 Keperawatan', 2026, 'ningruma298@gmail.com', '085888413823', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/112/69fbb2b7-38b4-45f9-99f1-22acef909947.jpg', 'Screenshot_20260911_154915_SeaBank.jpg', 'image/jpeg', 272249, '2026-09-11 08:49:43', '2026-09-14 02:47:11', 9, NULL, NULL, NULL, NULL, 'Bst6xsdUmXeunSiGVGATLoTay2h9QnjSDspQ26Oc', '2026-09-11 08:49:23', '2026-09-14 02:47:15'),
(113, 'WSD-20260911-KRBO', 'Zahwa Alifya Nurushafa', 'P27901123054', NULL, 1, 'D3 Keperawatan', 2026, 'alifyazahwa31@gmail.com', '085881562019', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/113/04cd2b15-d100-4f40-ba5c-39aa2cdcf8a5.png', 'IMG_4592.png', 'image/png', 286397, '2026-09-11 09:05:47', '2026-09-14 02:48:02', 9, NULL, NULL, NULL, NULL, '1vU1Qg10GDqRZwOdiHTzCcQ0f6tfulIInWQGHAgk', '2026-09-11 09:02:39', '2026-09-14 02:48:06'),
(114, 'WSD-20260911-2YHE', 'Dinda Aulia Oktaviana', 'P27901123008', NULL, 1, 'D3 Keperawatan', 2026, 'auliaoktavianadinda@gmail.com', '085774466218', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/114/93897e0e-cc34-4813-8257-966ba03efc5f.jpg', 'IMG-20260911-WA0053.jpg', 'image/jpeg', 64557, '2026-09-11 09:50:14', '2026-09-14 13:29:23', 9, NULL, NULL, NULL, NULL, 'PCCz742Gacs22QRkWYmXK09U40zwCNO5wA7N3Nj8', '2026-09-11 09:27:04', '2026-09-14 13:29:27'),
(115, 'WSD-20260911-XPZH', 'Syahla Khoerunnisa', 'P27901123102', NULL, 1, 'D3 Keperawatan', 2026, 'Syahlakhoerunnisa12@gmail.com', '085135417709', NULL, 'Perempuan', 'All Size', 'ibu/bapak punten ukuran toga jubahnya jgn terlalu besar ukurannya \"S\" karena BB saya 39 kg dan TB saya 159🙏', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/115/14fb8b94-39cc-4873-ae0c-d71d6171a285.jpg', '1000513414.jpg', 'image/jpeg', 119972, '2026-09-11 09:59:33', '2026-09-14 02:48:59', 9, NULL, NULL, NULL, NULL, 'o4nc2ir4eFJjun8KapjlJTP6Kjl5FnXS4jYhiDcI', '2026-09-11 09:54:05', '2026-09-14 02:49:02'),
(116, 'WSD-20260911-TARH', 'Neneng Kurniasih', 'P27902123108', NULL, 2, 'D3 Kebidanan', 2026, 'nenengk2005@gmail.com', '085782612161', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/116/d1c20155-6669-4e0c-b69e-26cd6fea413f.jpg', 'Screenshot_20260911_165652_DANA.jpg', 'image/jpeg', 452301, '2026-09-11 09:58:12', '2026-09-14 01:33:33', 9, NULL, NULL, NULL, NULL, 'D1EeYR8wxuKZBXPg3aaFP7gbzAHWx23ZqClOOKay', '2026-09-11 09:57:49', '2026-09-14 01:33:36'),
(117, 'WSD-20260911-TGGA', 'Shinta Meilani Jamal', 'P27901123098', NULL, 1, 'D3 Keperawatan', 2026, 'shitamelani@gmail.com', '0895321814517', NULL, 'Perempuan', 'All Size', 'Ibu/bapak punten untuk jubah dan toga untuk berat badan 50 kg dan tinggi badan 156 cm', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/117/bc98d297-b334-4309-b6a4-1fffab1044dd.png', 'IMG_0414.png', 'image/png', 134403, '2026-09-11 10:33:56', '2026-09-14 02:50:00', 9, NULL, NULL, NULL, NULL, '4lWoUiVI3UC5bKrP8mQA7BxzP2Sz670u5zMlQY8a', '2026-09-11 10:33:18', '2026-09-14 02:50:04'),
(118, 'WSD-20260911-RFGX', 'Vita Alya Syawaliah', 'P27901123106', NULL, 1, 'D3 Keperawatan', 2026, 'vitanovember21@gmail.com', '085814201788', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/118/00a6c699-b1b9-407f-b481-aee0a4df8912.jpeg', 'IMG_4914.jpeg', 'image/jpeg', 249421, '2026-09-11 10:38:13', '2026-09-14 02:50:34', 9, NULL, NULL, NULL, NULL, 'p0ASPk5c2RRrzjIZodgl0ECMSwGogLoQUB1HrduY', '2026-09-11 10:37:57', '2026-09-14 02:50:37'),
(119, 'WSD-20260911-FUXA', 'GISKA AULIA', 'P27903123163', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'giskaaulia0365@gmail.com', '089677737085', NULL, 'Perempuan', 'All Size', 'req muat untuk bb 90', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/119/a52a5760-c18b-4f7d-af14-dd7007f7d11b.jpg', 'Transaksi_BCAmobile-20260911-174913.jpg', 'image/jpeg', 483251, '2026-09-11 10:50:22', '2026-09-14 02:51:00', 9, NULL, NULL, NULL, NULL, '0wxhhMNfkuxQNzwd2cw10svhp5ZKRDvZusxjfEw8', '2026-09-11 10:46:42', '2026-09-14 02:51:03'),
(120, 'WSD-20260911-SZOG', 'Devina Dwi Safitri', 'P2790123157', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'vina04996@gmail.com', '087810433467', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/120/80c49eea-4255-4523-a77a-c0ba21d5f626.jpg', 'IMG-20260912-WA0007.jpg', 'image/jpeg', 89698, '2026-09-12 03:56:28', '2026-09-14 02:03:00', 9, NULL, NULL, NULL, NULL, 'jS3yZZvAqyvIzfrqzamEbLI7TmDcxVNZZZVm5tEN', '2026-09-11 10:47:03', '2026-09-14 02:03:03'),
(121, 'WSD-20260911-BHLD', 'Nayla Putri Yadi', 'P27903123180', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'naylaputriyadi140805@gmail.com', '087776258328', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/121/c0ac3348-3e48-4f77-a999-9442834af066.jpg', 'IMG_Fri Sep 11 17_59_56 GMT+07_00 2026.jpg', 'image/jpeg', 148916, '2026-09-11 11:00:58', '2026-09-14 02:54:44', 9, NULL, NULL, NULL, NULL, 'EoLUcDlINTMCg9RYTBmMkA1elrnL7hSLTtmkaZwr', '2026-09-11 10:50:16', '2026-09-14 02:54:47'),
(122, 'WSD-20260911-BA75', 'Alfina Suganda Putri', 'P27902123007', NULL, 2, 'D3 Kebidanan', 2026, 'alfinasugandaputri9@gmail.com', '085215820621', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/122/d7a77fcd-c055-4723-afb6-13f5a35bc60b.png', 'IMG_5066.png', 'image/png', 218686, '2026-09-11 10:53:59', '2026-09-14 02:51:41', 9, NULL, NULL, NULL, NULL, '65FwA44OK7gElcXYGVDDN3WpnfP4y84uRFvsRgTI', '2026-09-11 10:51:33', '2026-09-14 02:51:45'),
(123, 'WSD-20260911-ZK5V', 'Mutiara Salsabila', 'P27902124106', NULL, 2, 'D3 Kebidanan', 2026, 'salsabilamutiara226@gmail.com', '081211848958', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/123/5ce2b33f-a6ce-44ca-a9c5-8f101f608944.png', 'IMG_8645.png', 'image/png', 199134, '2026-09-11 10:54:14', '2026-09-14 02:52:21', 9, NULL, NULL, NULL, NULL, 'VIaq66VvNqkWwVoD9aC6vtcWzeslT0DGUf323EJU', '2026-09-11 10:53:31', '2026-09-14 02:52:24'),
(124, 'WSD-20260911-UWWN', 'MAYA DEWANTI', 'P27903123172', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'mayadewantiii@gmail.com', '089665922780', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/124/1d74c2c7-8f16-4f84-9b3c-89360bd85555.jpg', 'Screenshot_20260911-180032.jpg', 'image/jpeg', 415684, '2026-09-11 11:02:29', '2026-09-14 13:29:00', 9, NULL, NULL, NULL, NULL, 'OdshK8mIezDBXzyQLEnFIEqQ2CkC0dOu54SCatS4', '2026-09-11 10:56:50', '2026-09-14 13:29:03');
INSERT INTO `graduation_toga_orders` (`id`, `order_code`, `student_name`, `nim`, `nik`, `study_program_id`, `study_program_name`, `graduation_year`, `email`, `phone`, `transfer_sender_name`, `gender`, `toga_size`, `size_note`, `quantity`, `status`, `payment_status`, `payment_amount`, `payment_method`, `payment_proof_path`, `payment_proof_original_name`, `payment_proof_mime`, `payment_proof_size`, `payment_uploaded_at`, `payment_verified_at`, `payment_verified_by`, `payment_rejected_at`, `payment_rejected_by`, `admin_note`, `rejection_note`, `public_token`, `created_at`, `updated_at`) VALUES
(125, 'WSD-20260911-XLGK', 'TASYA FITRIA AMANDA', 'P27902123160', NULL, 2, 'D3 Kebidanan', 2026, 'tasyafa20@gmail.com', '085721652497', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/125/7d8029e0-8f38-4b59-b63e-779e05e06ee1.png', 'IMG_3202.png', 'image/png', 245089, '2026-09-11 11:00:14', '2026-09-14 02:02:23', 9, NULL, NULL, NULL, NULL, 'eYsG2KmRtLkAB5vms0kFiVQkA8QkLKFldg0ATRNf', '2026-09-11 10:59:53', '2026-09-14 02:02:26'),
(127, 'WSD-20260911-4JOU', 'Farih Nabilah', 'P27902123053', NULL, 2, 'D3 Kebidanan', 2026, '800farih@gmail.com', '083896534831', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/127/8a138483-f161-4aa9-8b7a-c74ff0aa0559.png', 'IMG_4734.png', 'image/png', 156286, '2026-09-11 11:27:21', '2026-09-14 02:56:13', 9, NULL, NULL, NULL, NULL, 'BLIGWc719MDQQfoa179f0FaRYZDmE2YlkEz9sc8x', '2026-09-11 11:23:35', '2026-09-14 02:56:18'),
(128, 'WSD-20260911-1V3E', 'Siti Nurcahya', 'P27902123114', NULL, 2, 'D3 Kebidanan', 2026, 'snurcahya942@gmail.com', '08817448188', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/128/55ae487a-b34a-4908-9dca-062d935fbcaf.png', 'IMG_6145.png', 'image/png', 201241, '2026-09-11 11:27:11', '2026-09-14 02:57:04', 9, NULL, NULL, NULL, NULL, '3sRYFfAo0JyAhjH8knvVWRyiUgdZhyxL2Sy7ZR07', '2026-09-11 11:25:12', '2026-09-14 02:57:08'),
(129, 'WSD-20260911-XSZ2', 'Erica Sintya', 'P27903123015', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'ericasintya1012@gmail.com', '089507933851', NULL, 'Perempuan', 'All Size', 'Ibu/Bapak yang terhormat. Saya memiliki badan yang gemuk, ukuran lingkar dada baju biasa 130cm sehingga kemungkinan untuk toga 140 cm. Mohon dipesan terpisah dan perhatikan ukurannya demi kenyamanan saat pelaksaan wisuda. Terima kasih.', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/129/42d00c1e-522c-4e30-a07d-2742c6ab6e48.jpg', 'Screenshot_20260911_182635_DANA.jpg', 'image/jpeg', 465752, '2026-09-11 11:29:07', '2026-09-14 01:36:47', 9, NULL, NULL, NULL, NULL, 'L9XusAxvdy2BtfsnxRk5rC707BTuSe2MjKr5g5Qo', '2026-09-11 11:27:14', '2026-09-14 01:36:50'),
(130, 'WSD-20260911-ASW7', 'Rompianti Salsah Sulinah', 'P27901123039', NULL, 1, 'D3 Keperawatan', 2026, 'salsahsulinah511@gmail.com', '08567340676', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/130/91f1e12a-5bd4-40ea-bea9-8a8213643f13.pdf', 'DOC-20260911-WA0039.pdf', 'application/pdf', 243567, '2026-09-11 11:53:55', '2026-09-14 02:58:11', 9, NULL, NULL, NULL, NULL, '6QO2WCpYSusoAuvTNXHN4Eh0cJMmkr8PVDY6faAs', '2026-09-11 11:41:23', '2026-09-14 02:58:13'),
(131, 'WSD-20260911-LDE0', 'MUTIA INTAN PERMATASARI', 'P27902123063', NULL, 2, 'D3 Kebidanan', 2026, 'permatamutia902@gmail.com', '085135431781', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/131/df0ea201-b2c8-4ee6-bf75-9e596811ce73.jpg', 'Screenshot_20260911_184816_BRImo.jpg', 'image/jpeg', 552618, '2026-09-11 11:49:03', '2026-09-14 02:58:36', 9, NULL, NULL, NULL, NULL, 'De24skEGboIy5rTgRdesAZ8yvpVndIoZN4I4JQ5I', '2026-09-11 11:46:38', '2026-09-14 02:58:40'),
(132, 'WSD-20260911-BRBC', 'Erlis Julita', 'P27902123094', NULL, 2, 'D3 Kebidanan', 2026, 'elisjulita2@gamil.com', '081388495396', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/132/848c5181-479d-4611-9827-64ce3da12af8.png', 'IMG_0037.png', 'image/png', 214220, '2026-09-11 11:48:49', '2026-09-14 02:57:31', 9, NULL, NULL, NULL, NULL, 'H7S3A0Yc7UYOUAja6rUDUWzDjWuAMep6UPySCTbD', '2026-09-11 11:47:04', '2026-09-14 02:57:34'),
(133, 'WSD-20260911-UA8G', 'Elva Munzilah Riyanti', 'P27901123009', NULL, 1, 'D3 Keperawatan', 2026, 'elvamunzilah2112@gmail.com', '083872142382', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/133/1dc12c87-d680-4513-8b53-e78de25d8ba1.jpg', 'IMG-20260911-WA0009.jpg', 'image/jpeg', 80679, '2026-09-11 11:52:25', '2026-09-14 08:34:37', 9, NULL, NULL, NULL, NULL, 'sqd3RlIsKME0FdaNVKJtlzqW1jkvm8Xutge8NuFu', '2026-09-11 11:51:22', '2026-09-14 08:34:40'),
(135, 'WSD-20260911-Q8DV', 'Mayesa Al-Fiana', 'P27901123023', NULL, 1, 'D3 Keperawatan', 2026, 'ichaa7869@gmail.com', '089517286830', NULL, 'Perempuan', 'All Size', 'Ukuran s', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/135/41df6e26-c331-4298-9a54-bfeada65eb4b.jpg', 'IMG-20260911-WA0018.jpg', 'image/jpeg', 86506, '2026-09-11 12:52:30', '2026-09-14 02:59:58', 9, NULL, NULL, NULL, NULL, 'yoIjGvtHylB2JOzCyMUUPG4WfzZ9q1mFyvsyMxjK', '2026-09-11 12:43:21', '2026-09-14 03:00:01'),
(136, 'WSD-20260911-LJPE', 'Verna Winarni Syakiroh', 'P27902123080', NULL, 2, 'D3 Kebidanan', 2026, 'winarniverna127@gmail.com', '081912631707', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/136/8c6c8498-303d-43d6-b7ab-661561a3d903.jpg', 'Screenshot_20260911_194939.jpg', 'image/jpeg', 271601, '2026-09-11 12:50:06', '2026-09-14 02:59:33', 9, NULL, NULL, NULL, NULL, 'ZOt4JdDODEXdtkm7YVJVrovKxdhl7RaJZFlccNpV', '2026-09-11 12:45:25', '2026-09-14 02:59:36'),
(138, 'WSD-20260911-9WLN', 'ZAHWA MASAYU AULIA', 'P27902123163', NULL, 2, 'D3 Kebidanan', 2026, 'zahwamasayu@gmail.com', '083105107273', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/138/4b1ffc7b-6076-4c60-899a-18d0d2cf7c6b.jpeg', 'bukti pembayran toga zahwa.jpeg', 'image/jpeg', 74859, '2026-09-11 14:41:03', '2026-09-14 01:59:12', 9, NULL, NULL, NULL, NULL, 'GPbglFp84CpRrvb2XglUAbVKtQljKpNA7skTegJ7', '2026-09-11 14:37:17', '2026-09-14 01:59:14'),
(141, 'WSD-20260911-U3MH', 'Revaluna Maira Fuadi', 'P27901123037', NULL, 1, 'D3 Keperawatan', 2026, 'rmfluns@gmail.com', '081998695511', NULL, 'Perempuan', 'All Size', 'size S', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/141/cd4fcdf5-ab3b-417f-90c2-918a0d88ef5d.jpg', 'IMG-20260911-WA0081.jpg', 'image/jpeg', 61452, '2026-09-11 23:40:12', '2026-09-14 13:24:08', 9, NULL, NULL, NULL, NULL, 'x30dr0s6E15QUv6wdhFFY8r3M0mqysRmsaAVHmn0', '2026-09-11 23:39:35', '2026-09-14 13:24:11'),
(143, 'WSD-20260912-T70R', 'Anfaunnisa', 'P27902123087', NULL, 2, 'D3 Kebidanan', 2026, 'unnisaanfa@gmail.com', '085863507971', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/143/addbfa8e-4548-43ed-88a4-2f97d4d9965f.png', 'IMG_1457.png', 'image/png', 186679, '2026-09-12 00:45:54', '2026-09-14 13:22:51', 10, NULL, NULL, NULL, NULL, 'rtOFtLvTTDOWw3noa5WDsxKmxlLl8gxMakdbOij2', '2026-09-12 00:43:55', '2026-09-14 13:22:58'),
(144, 'WSD-20260912-IJ2L', 'Rohimatun', 'P27901123095', NULL, 1, 'D3 Keperawatan', 2026, 'rohimatunmutmainah045@gmail.com', '081318218593', NULL, 'Perempuan', 'All Size', 'TB : 156 cm\r\nBB : 60 kg', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/144/3254e931-6e2f-4341-a890-90fafca2cfbe.jpg', 'Screenshot_2026-09-12-07-49-25-21_f0d5010b4078101d669cabe708845c5e.jpg', 'image/jpeg', 363597, '2026-09-12 00:50:28', '2026-09-14 13:22:22', 9, NULL, NULL, NULL, NULL, 'E0Sfbru7B0G2h8Jb3XdJUlComjKyLN7WJiEKBird', '2026-09-12 00:46:56', '2026-09-14 13:22:25'),
(146, 'WSD-20260912-1URO', 'Riska Hidayani', 'P27901123094', NULL, 1, 'D3 Keperawatan', 2026, 'riskahidayani120221@gmail.com', '08881359624', NULL, 'Perempuan', 'All Size', 'TB : 157\r\nBB : 56', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/146/b2aef810-835e-48fd-aece-6a9f3474bfd3.png', 'Screenshot_20260912-075209.png', 'image/png', 219986, '2026-09-12 00:53:12', '2026-09-14 03:01:27', 9, NULL, NULL, NULL, NULL, 'M3wb7W0IKTeoQWWQ7bkwHiB3eIPw8XrjUZGjIDqD', '2026-09-12 00:52:30', '2026-09-14 03:01:30'),
(147, 'WSD-20260912-QM1Q', 'wulan', 'P27902123122', NULL, 2, 'D3 Kebidanan', 2026, 'wdari8908@gmail.com', '088296-79579', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/147/9be38878-9e73-42f3-9046-e0c67741f588.png', 'IMG_4028.png', 'image/png', 175119, '2026-09-12 00:53:59', '2026-09-14 13:22:07', 9, NULL, NULL, NULL, NULL, 'wcSCJeRkqXmgLdc4JHqNC01sq5MVdcI3OqXORcWn', '2026-09-12 00:53:12', '2026-09-14 13:22:10'),
(149, 'WSD-20260912-MSUW', 'Tri Oktaviani', 'P27903123047', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'trioktaviani2004@gmail.com', '087774114890', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/149/713d9893-5209-4c1c-af39-3e12430ab52c.jpg', 'Screenshot_2026-09-12-11-13-59-41.jpg', 'image/jpeg', 365828, '2026-09-12 04:14:33', '2026-09-14 01:40:50', 9, NULL, NULL, NULL, NULL, 'dTdpXs8vvs9a6RJFyoIXEb1lm7Cqdor4aFT4hgRL', '2026-09-12 01:15:14', '2026-09-14 01:40:53'),
(150, 'WSD-20260912-L2AT', 'Dina Nurhasanah', 'P27902123091', NULL, 2, 'D3 Kebidanan', 2026, 'dinanurhasanah102@gmail.com', '087761060061', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/150/63e46cbe-0219-49c9-9db4-c3f3be2b94f3.jpeg', 'WhatsApp Image 2026-09-12 at 08.43.53.jpeg', 'image/jpeg', 85306, '2026-09-12 01:44:05', '2026-09-14 03:01:53', 9, NULL, NULL, NULL, NULL, 'Lj9z8hgGgpQqIv0b4Vt0ANOp3R5UAvzaj6aEOlou', '2026-09-12 01:42:40', '2026-09-14 03:01:57'),
(151, 'WSD-20260912-VVT8', 'Anindita Aprilia', 'P27903123007', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'aninditaaprilia04@gmail.com', '083869023187', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/151/b9ef98a3-31a9-4671-b05f-f1a809cc520c.png', 'IMG_3718.png', 'image/png', 610895, '2026-09-12 02:01:34', '2026-09-14 07:40:18', 9, NULL, NULL, NULL, NULL, 'gpCVsnLiuDiEEJE6c2guzCTgUtsXas40awEMix10', '2026-09-12 01:59:27', '2026-09-14 07:40:21'),
(152, 'WSD-20260912-QRU4', 'Alivia Diva Junita Makatita', 'P27903123004', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'aliviadiva436@gmail.com', '081386538928', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/152/c21eefc1-4337-4282-9985-34551ff6fa19.jpeg', '34d636a0-def2-4ed7-b6b3-05dc48ab0bc4.jpeg', 'image/jpeg', 44709, '2026-09-12 02:08:36', '2026-09-14 06:21:43', 9, NULL, NULL, NULL, NULL, 'fJxDZ3hoOUYpT2jtvUzLgHtxwug84OpIiFQsVl9c', '2026-09-12 02:06:12', '2026-09-14 06:21:45'),
(153, 'WSD-20260912-DEXR', 'Elsa Sofia Nazza', 'P27903123013', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'elsasofianazza265@gmail.com', '082114771927', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/153/d374e096-5b59-437d-b730-8dc2222a0f25.jpg', 'Screenshot_2026-09-12-09-42-56-85_78ed797590cf9a33dfc5e341b7a9537a.jpg', 'image/jpeg', 508946, '2026-09-12 02:45:25', '2026-09-14 03:02:41', 9, NULL, NULL, NULL, NULL, 'DvWsVqLMszdMjMo67H5aiN8wwE0ZnIaxSHxqslkA', '2026-09-12 02:43:33', '2026-09-14 03:02:45'),
(154, 'WSD-20260912-8JKG', 'Kayla amanda', 'P27903123023', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'kaymanda25@gmail.con', '085110532715', NULL, 'Perempuan', 'All Size', '-', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/154/260c9649-ffc5-44c1-9a7d-1096d53a2bf4.png', '348CA138-1E10-4DC6-A4CE-F4649FA6B596.png', 'image/png', 112802, '2026-09-12 02:46:04', '2026-09-14 02:42:41', 9, NULL, NULL, NULL, NULL, 'evHApRgXxLwkeNOrqfRIEcgyvoszjuA4YH7of51H', '2026-09-12 02:44:56', '2026-09-14 02:42:43'),
(158, 'WSD-20260912-NKQX', 'Azkia Maulidya', 'P27902123129', NULL, 2, 'D3 Kebidanan', 2026, 'azkia250405@gmail.com', '081930777965', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/158/8203baf4-b639-4e61-bbae-0fa09a1ac332.jpg', 'IMG-20260912-WA0002.jpg', 'image/jpeg', 76572, '2026-09-12 03:24:10', '2026-09-14 03:09:26', 9, NULL, NULL, NULL, NULL, 'vQEO1wayqO5N5LD8P5u3hlZ8j04kWCmGhuKKDrH3', '2026-09-12 03:23:38', '2026-09-14 03:09:29'),
(160, 'WSD-20260912-3PZS', 'Kamila Khairunnisa', 'P27903123022', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'kamilakhairunnisa02@gmail.com', '087761140721', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/160/fa5dd3c4-751c-4468-86ac-8489e7914399.jpg', 'Screenshot_20260912_103035_DANA.jpg', 'image/jpeg', 568882, '2026-09-12 03:40:34', '2026-09-14 13:21:52', 9, NULL, NULL, NULL, NULL, 'lW4F9SMjG1OnXQnLJnhpXDbUFTEzJiyWRtB0hJN9', '2026-09-12 03:38:19', '2026-09-14 13:21:56'),
(161, 'WSD-20260912-UWEU', 'Jeni ayu amanda', 'P27903123069', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'jenimanda09@gmail.com', '089528687077', NULL, 'Perempuan', 'All Size', 'ukuran yg M', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/161/184ec7c7-a691-430f-a588-e2b2faa56e9d.jpg', 'image.jpg', 'image/jpeg', 2271401, '2026-09-12 04:03:20', '2026-09-14 03:10:15', 9, NULL, NULL, NULL, NULL, 'u1wLoyE5qXXHOCrTnOcFKKHsBMvPp5bGdaLE2tHl', '2026-09-12 04:02:46', '2026-09-14 03:10:18'),
(162, 'WSD-20260912-J0Y2', 'Tazkia Azzahra Sugara', 'P27902123161', NULL, 2, 'D3 Kebidanan', 2026, 'tazkiaazzahrasugara@gmail.com', '88210757242', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/162/6675f5c0-ed80-4b8f-aade-b2374c870110.jpeg', 'IMG_0478.jpeg', 'image/jpeg', 164177, '2026-09-12 04:36:37', '2026-09-14 03:10:52', 9, NULL, NULL, NULL, NULL, 'MxfZ3sDk0Z7fu9vad5AAow4hx7PCzXEakBJblgWC', '2026-09-12 04:32:39', '2026-09-14 03:10:56'),
(164, 'WSD-20260912-WJYO', 'Novi Avrina Rihadini', 'P27903123130', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'noviavrina6@gmail.com', '089513665740', NULL, 'Perempuan', 'All Size', 'Kalo ada mau ukuran M ya kk', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/164/f06a2551-c0d0-4a83-86fc-efa96717498c.jpg', 'Transaksi_BCAmobile-20260912-113855.jpg', 'image/jpeg', 468774, '2026-09-12 04:40:07', '2026-09-14 03:11:20', 9, NULL, NULL, NULL, NULL, 'b4At6fAyaSlVTTJxHMsKv5LvzO3CrXjHQPHSmMXO', '2026-09-12 04:36:32', '2026-09-14 03:11:22'),
(165, 'WSD-20260912-TZSX', 'VIORELLY AL-HUDA', 'P27901123049', NULL, 1, 'D3 Keperawatan', 2026, 'viorellyalhuda@gmail.com', '085778239723', NULL, 'Laki-laki', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/165/9063cb97-9a1e-48e7-a42c-7c1acf6ef859.jpg', 'IMG-20260912-WA0014.jpg', 'image/jpeg', 81370, '2026-09-12 04:48:45', '2026-09-14 03:11:52', 9, NULL, NULL, NULL, NULL, 'MOjDp7GRoJJZpIh8yAYbLrldo9oPNtX3LS6EXtLu', '2026-09-12 04:45:09', '2026-09-14 03:11:56'),
(167, 'WSD-20260912-3B5Y', 'Salsabila Nur Azizah Kesuma Harjo', 'P27902123035', NULL, 2, 'D3 Kebidanan', 2026, 'sbila2113@gmail.com', '085719367991', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/167/4ca0dd94-8130-4022-ad55-a2087bf26583.jpg', 'IMG-20260912-WA0001.jpg', 'image/jpeg', 86882, '2026-09-12 05:46:38', '2026-09-14 01:42:13', 9, NULL, NULL, NULL, NULL, 'z46o9bWfRSwfJcrty79m6kdLM2i8uvynmctc9cz6', '2026-09-12 05:44:07', '2026-09-14 01:42:16'),
(169, 'WSD-20260912-LCPQ', 'Agni Meliani', 'P27902123002', NULL, 2, 'D3 Kebidanan', 2026, 'melianiagni4@gmail.com', '083890379110', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/169/9c3834e9-d2a6-41ad-9498-c4fd7d5c8c04.jpg', 'Screenshot_20260912_161320.jpg', 'image/jpeg', 159473, '2026-09-12 09:14:19', '2026-09-14 01:55:38', 9, NULL, NULL, NULL, NULL, '3kOb2Ji5Pg3CSNsAqRl8hkeEaXEwOIQWoSf6hb8B', '2026-09-12 09:12:16', '2026-09-14 01:55:40'),
(170, 'WSD-20260912-PUZO', 'Ahyati Nufus', 'P27902123003', NULL, 2, 'D3 Kebidanan', 2026, 'ahyatinufus12@gmail.com', '081323894511', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/170/74be83d9-4662-4675-afe1-3306d5693aec.jpg', 'Screenshot_20260912_173648_SeaBank.jpg', 'image/jpeg', 267027, '2026-09-12 10:37:03', '2026-09-14 01:38:38', 9, NULL, NULL, NULL, NULL, '22UZwLKYm69pEC1Je6R7kdj1ZUVVCzFvBWoVgu00', '2026-09-12 09:59:22', '2026-09-14 01:38:40'),
(171, 'WSD-20260912-J2O0', 'Euis Octaviani Wijaya', 'P27903123061', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'euisoctavianiwijya@gmail.com', '08990027943', NULL, 'Perempuan', 'All Size', 'Ukuran S', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/171/6fe9f211-84f9-4ab7-b080-f8d18ff89efe.jpg', 'Screenshot_20260912_171814_Superbank.jpg', 'image/jpeg', 346581, '2026-09-12 10:18:47', '2026-09-14 02:04:28', 9, NULL, NULL, NULL, NULL, 'JKR7xS05fWp6Hlx9rbjciwyLkgkVHZ9wi0fJFjH3', '2026-09-12 10:17:20', '2026-09-14 02:04:31'),
(172, 'WSD-20260912-AC91', 'BINTANG SALSABILA CAHYANINGRAT', 'P27901123006', NULL, 1, 'D3 Keperawatan', 2026, 'denynggie@gmail.com', '083875425476', NULL, 'Perempuan', 'All Size', 'Size M', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/172/256e6a71-0e2f-48d8-b421-30d4073e158f.jpg', 'IMG-20260912-WA0065.jpg', 'image/jpeg', 71366, '2026-09-12 10:34:32', '2026-09-14 13:21:20', 9, NULL, NULL, NULL, NULL, 'abfNYfZpk1MH1Wce4iFHrflBTUNzYgywk3TlRMSM', '2026-09-12 10:31:38', '2026-09-14 13:21:25'),
(173, 'WSD-20260912-HMNU', 'Elsa Auliana', 'P27903123159', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'elsaauliana52@gmail.com', '085219612973', NULL, 'Perempuan', 'All Size', 'ukuran S/M', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/173/7aa6815c-fd06-491e-b119-43c229372086.jpg', 'IMG-20260913-WA0008.jpg', 'image/jpeg', 85244, '2026-09-13 03:54:20', '2026-09-14 13:07:35', 10, NULL, NULL, NULL, NULL, '2QaRx6rk4rV0DQDpagzqfbCCqjNT0kN1qXI4QX46', '2026-09-12 11:12:14', '2026-09-16 08:00:16'),
(174, 'WSD-20260912-PDU9', 'Zalfa July Ariqah', 'P27902123164', NULL, 1, 'D3 Keperawatan', 2026, 'zalfaariqah13@gmail.com', '085718626348', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/174/28ae58a8-d204-4813-89a3-1cbef4803cee.jpg', 'Screenshot_20260912-184003.jpg', 'image/jpeg', 290777, '2026-09-12 11:40:31', '2026-09-14 03:16:18', 9, NULL, NULL, NULL, NULL, 'Sms1xZiv84DuA3X2h0QGXmsdGJcLegqwRfVobeNY', '2026-09-12 11:31:35', '2026-09-14 03:16:21'),
(175, 'WSD-20260912-OV0R', 'Dhini Febriyanti', 'P27903123011', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'dhinifebriyanti2@gmail.com', '089619297130', NULL, 'Perempuan', 'All Size', '-', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/175/9fb89189-1fd1-4f91-bdfe-b076e7eb3b81.jpg', 'IMG-20260912-WA0189.jpg', 'image/jpeg', 102282, '2026-09-12 12:22:41', '2026-09-14 01:39:30', 9, NULL, NULL, NULL, NULL, 'uOtCkqVyNIoQcGusj7qNcKdeeufO11pjjjXvYEc7', '2026-09-12 12:20:28', '2026-09-14 01:39:32'),
(176, 'WSD-20260912-H7BD', 'Yazna Khalisha', 'P27903123048', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'yazna2811@gmail.com', '083153963176', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/176/99ebabe9-32fa-4d8b-928e-be649835240e.jpeg', 'IMG_6286.jpeg', 'image/jpeg', 169425, '2026-09-12 12:38:24', '2026-09-14 01:40:17', 9, NULL, NULL, NULL, NULL, 'SUmRCWT4NbMy8P2JQHy6yGdFXQ3eLCESWSGI23b1', '2026-09-12 12:37:37', '2026-09-14 01:40:20'),
(177, 'WSD-20260912-MRHC', 'Ikhsan Maulana', 'P27901123071', NULL, 1, 'D3 Keperawatan', 2026, 'ikhsanmaulanaa1@gmail.com', '083895305025', NULL, 'Laki-laki', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/177/858db6a4-2e60-41b9-8fbc-9627db143679.jpg', 'IMG-20260913-WA0004.jpg', 'image/jpeg', 114889, '2026-09-13 02:41:15', '2026-09-14 13:06:45', 10, NULL, NULL, NULL, NULL, 'Urm0fbXpWu109daXrik9O6EtrOvlCXun7qWGC6nm', '2026-09-12 12:52:48', '2026-09-14 13:18:47'),
(178, 'WSD-20260912-6ZRL', 'Najwa Muflihah', 'P27903123128', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'najwamuflihah04@gmail.com', '+62 855 8160 215', NULL, 'Perempuan', 'All Size', '-', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/178/887713cc-a0c6-4a50-a3d6-acd2ba4a4f98.jpg', 'Screenshot_20260912_201149.jpg', 'image/jpeg', 257284, '2026-09-12 13:12:42', '2026-09-14 01:43:50', 9, NULL, NULL, NULL, NULL, 'PhbQTUpBAIhUqXlGgBx6u0PtbcexrdYaHEA2J1wh', '2026-09-12 13:09:20', '2026-09-14 01:43:53'),
(180, 'WSD-20260912-WGMB', 'Mira Kusniawati', 'P27903123026', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'mirakusniawati15@gmail.com', '0895335224534', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/180/c9c90e89-9c89-4a86-b44e-c8d52b8f837e.jpg', 'Transaksi_BCAmobile-20260912-205426.jpg', 'image/jpeg', 446410, '2026-09-12 13:55:17', '2026-09-14 01:41:15', 9, NULL, NULL, NULL, NULL, 'YrwOpY26jJ4z7rET8x3fBbwm2KH5w5ycbQnj3pm6', '2026-09-12 13:48:27', '2026-09-14 01:41:18'),
(181, 'WSD-20260912-L2RJ', 'Nurul Azkiya', 'P27903123131', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'nrlazkiya6@gmail.com', '085697727203', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/181/993aeea7-94d5-426b-8c4e-5deb7df8116a.jpg', 'Screenshot_20260912_211218_SeaBank.jpg', 'image/jpeg', 172576, '2026-09-12 14:17:16', '2026-09-14 03:17:46', 9, NULL, NULL, NULL, NULL, 'wCfJPS4uz9Xbz7kBNkqAYqJraMy2fg1e2JdoWnoN', '2026-09-12 14:13:09', '2026-09-14 03:17:50'),
(182, 'WSD-20260912-RGQ0', 'Shifa Nadia Ulfa', 'P27902123070', NULL, 2, 'D3 Kebidanan', 2026, 'shifanadiaulfa74@gmail.com', '085882746044', NULL, 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HaGzi0Dz2phOuI9O3EzAoPk9uBGvzyCSXnP9Z2SN', '2026-09-12 17:08:14', '2026-09-12 17:08:14'),
(183, 'WSD-20260912-MJCZ', 'Alfa Rizsiana Nurdin', 'P27903123003', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'alfarizsiana12@gmail.com', '082260111132', NULL, 'Laki-laki', 'All Size', 'sukses selalu', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/183/0cf0f215-242c-48d9-b2ee-1faf65380dae.png', 'IMG_4495.png', 'image/png', 202201, '2026-09-12 20:07:04', '2026-09-14 03:18:08', 9, NULL, NULL, NULL, NULL, 'IkZ3u5R4chi0NjnjeVFQQ7XyW8n1X6Tx271bScZk', '2026-09-12 20:01:52', '2026-09-14 03:18:11'),
(184, 'WSD-20260912-BMAC', 'ERLIANA SARI', 'P27902123052', NULL, 2, 'D3 Kebidanan', 2026, 'eerliww1894@gmail.com', '083188558610', NULL, 'Perempuan', 'All Size', 'Apa bisa toga nya datang di tanggal 25 dan ukuran nya di ubah jadi ukuran S, terus ambil toga nya dimana bapak/ibu', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/184/fc8293a3-b293-4841-8589-e4daf4f4b15b.jpg', 'Screenshot_2026-09-13-06-52-29-539_id.co.bankbkemobile.digitalbank.jpg', 'image/jpeg', 141673, '2026-09-12 23:54:20', '2026-09-14 03:18:30', 9, NULL, NULL, NULL, NULL, 'BwydVsdz7PCLk9nfi9Ql71sPHQWN7vy6eb1oMKrF', '2026-09-12 23:51:15', '2026-09-14 03:18:34'),
(185, 'WSD-20260913-SFJE', 'Muhamad Leon', 'P27903123074', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'muhamadleon029@gmail.com', '085781051802', NULL, 'Laki-laki', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/185/8a056f8b-cc93-4701-82a5-7b246863b320.jpg', 'Screenshot_2026-09-13-07-07-27-66_121d0782f1cd8474b48c9b27865007fd.jpg', 'image/jpeg', 144708, '2026-09-13 00:08:09', '2026-09-14 03:19:08', 9, NULL, NULL, NULL, NULL, 'WqA5OzY0sqUA3ZvlX05iFaBHFHqEIHNRSogCk1h5', '2026-09-13 00:05:38', '2026-09-14 03:19:11'),
(186, 'WSD-20260913-7UOV', 'Nabila', 'P27902123026', NULL, 2, 'D3 Kebidanan', 2026, 'nabiladoang245@gmail.com', '083129037986', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/186/41fac664-493b-4504-be08-a352a6c765a0.jpeg', 'B001EBD2-4BC9-48E7-B4A0-A11CBC4265AD.jpeg', 'image/jpeg', 268037, '2026-09-13 00:24:33', '2026-09-14 03:20:19', 9, NULL, NULL, NULL, NULL, 'aYtA4mEXVmG943DAoiZSraSYxzmM0SqVurPlhBqy', '2026-09-13 00:23:29', '2026-09-14 03:20:23'),
(187, 'WSD-20260913-MSPS', 'Lintang Mutiara Az Zahra', 'P27902123146', NULL, 2, 'D3 Kebidanan', 2026, 'lintangmutiara000@gmail.com', '085935086588', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/187/258e90ba-e629-4565-a938-f7e683211b24.jpg', 'Screenshot_2026-09-13-07-30-17-04_f339d16c976c0b263d991820e972fb72.jpg', 'image/jpeg', 291857, '2026-09-13 00:30:49', '2026-09-14 03:21:06', 9, NULL, NULL, NULL, NULL, 'fL3uC3maEHxQMai02D74YzkPvuCb2MnFGmhj3AmJ', '2026-09-13 00:24:23', '2026-09-14 03:21:09'),
(188, 'WSD-20260913-DCGA', 'Nopi Ashari', 'P27902123148', NULL, 2, 'D3 Kebidanan', 2026, 'asharinovi03@gmail.com', '083173542094', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/188/fbe648d0-4ab2-4ac2-b292-9d2bea719c6e.png', 'IMG_7307.png', 'image/png', 134684, '2026-09-13 00:28:42', '2026-09-14 12:56:58', 10, NULL, NULL, NULL, NULL, 'Ud1LqiK2DQAD8tse0GISpUDTOlMOtY0KEiSaURT6', '2026-09-13 00:26:26', '2026-09-15 00:50:54'),
(189, 'WSD-20260913-DK7U', 'Magfiroh', 'P27903123024', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'fmaghfiroh214@gmail.com', '083877713241', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/189/9c0874b0-4e3a-4a28-8a29-f184f0a66bdc.jpg', 'Screenshot_20260913_074412.jpg', 'image/jpeg', 319706, '2026-09-13 00:45:46', '2026-09-14 08:33:08', 9, NULL, NULL, NULL, NULL, 'UoYHxsE8iPUl3cZlLoQnWcrwg1CWaTRbdygtzkx4', '2026-09-13 00:40:24', '2026-09-14 08:33:11'),
(190, 'WSD-20260913-TBSF', 'Ifaisyah Rahmania', 'P27903123213', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'ifaisyah61@gmail.com', '081318274469', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/190/94b21c4b-ed47-4daf-96a5-abbbdcc7af2b.jpg', 'Transaksi_BCAmobile-20260913-082227.jpg', 'image/jpeg', 548329, '2026-09-13 01:23:23', '2026-09-14 03:22:04', 9, NULL, NULL, NULL, NULL, 'H8AAro8RPAavFOqOH8w8P0zAJYcP3ueap25wAAsi', '2026-09-13 01:20:05', '2026-09-14 03:22:07'),
(191, 'WSD-20260913-DZYD', 'Siti Alfiatun Nisa', 'P27903123042', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'alfiaanissa25@gmail.com', '088809682055', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/191/3f863af7-e301-490d-b21e-66b2007b7a89.jpg', 'Screenshot_20260916_184224_SeaBank.jpg', 'image/jpeg', 257055, '2026-09-16 11:42:51', '2026-09-17 02:40:37', 9, NULL, NULL, NULL, NULL, 'fKM9SGjKr02Ex6Wkz2PzTyNmSpLt6YGgVrLMaYLM', '2026-09-13 01:33:55', '2026-09-17 02:40:39'),
(193, 'WSD-20260913-PQH1', 'Alya Septiani Suhardja', 'P27903123005', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'suhardjaalyaseptiani@gmail.com', '081316055330', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/193/72b2f218-718f-4fe2-b28a-3814bbb1ed75.jpeg', '85a8d0ad-bc43-42a0-a5b1-c096ac4e3277.jpeg', 'image/jpeg', 57966, '2026-09-13 01:47:06', '2026-09-14 03:23:03', 9, NULL, NULL, NULL, NULL, 'Ue0KjmzhSB5N3njFZOT821fnE8cXaZnHW7yk8Bih', '2026-09-13 01:44:32', '2026-09-14 03:23:05'),
(194, 'WSD-20260913-Y037', 'Maysin Nunnajah', 'P27903123073', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'maysinnunnajah@gmail.com', '083812794614', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/194/d9591b03-0178-4035-91cc-b27e88c02874.jpg', 'IMG-20260913-WA0015.jpg', 'image/jpeg', 70926, '2026-09-13 02:00:19', '2026-09-14 04:46:38', 9, NULL, NULL, NULL, NULL, 'v7QrlxGjKoBqahuJkIVi4HHuZO9BbT0KnxnXZPV2', '2026-09-13 01:45:23', '2026-09-14 04:46:43'),
(195, 'WSD-20260913-BEBX', 'Futihatul Aini', 'P27903123113', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'futihatulaini262@gmail.com', '081315445097', NULL, 'Perempuan', 'All Size', '.', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/195/7f917518-c33c-4adf-8450-03fe8bf43408.jpg', '17892649975176355638738794472889.jpg', 'image/jpeg', 2638244, '2026-09-13 02:03:28', '2026-09-14 08:31:32', 9, NULL, NULL, NULL, NULL, 'tK9E0LgHSK5mgWOu8TArxQluNaOL7lrCDTtqGSpP', '2026-09-13 01:57:17', '2026-09-14 08:31:38'),
(196, 'WSD-20260913-4ROX', 'Suci Khairunisa', 'P27903123044', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'sucikhairunisa20@gmail.com', '0895397203444', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/196/ee04d0a1-1723-4394-a7ac-34a8d5d2c47b.jpg', 'Transaksi_BCAmobile-20260913-090510.jpg', 'image/jpeg', 420170, '2026-09-13 02:06:44', '2026-09-14 03:04:10', 9, NULL, NULL, NULL, NULL, 'KpkgEwRiJs1IPRYA3jyIxJtQClkJ87kYkt3TspXf', '2026-09-13 02:05:55', '2026-09-14 03:04:13'),
(198, 'WSD-20260913-5IR3', 'FADILAH RIYANTI', 'P27902123013', NULL, 2, 'D3 Kebidanan', 2026, 'riyantifadilah5@gmail.com', '083871293578', NULL, 'Perempuan', 'All Size', 'Data saya: \r\n• Tinggi badan: 151 cm, \r\n• Berat badan:40 kg. \r\nMohon untuk toga disesuaikan ukurannya agar tidak terlalu kebesaran, terimakasih pak/bu🙏🏻', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/198/bb901893-dc3e-48af-acf3-2af125ed5055.jpg', 'IMG-20260913-WA0010.jpg', 'image/jpeg', 78619, '2026-09-13 02:15:31', '2026-09-14 12:55:55', 10, NULL, NULL, NULL, NULL, 'qZhrkuoGY7Hy5fQ8hiD2YEsg17oKdb5w1moPXEEY', '2026-09-13 02:06:32', '2026-09-15 08:43:30'),
(199, 'WSD-20260913-WB7K', 'Bagus Wicaksono', 'P27903123202', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'baguswicaksono759@gmail.com', '081290690974', NULL, 'Laki-laki', 'All Size', 'untuk ukuran all size. apakah bisa saya pake ukuran XL', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/199/1fb6151a-9623-47d2-86d1-c92ec3c3f28d.jpeg', 'Bukti transfer Toga Wisuda_Bagus Wicaksono_D3 TLM.jpeg', 'image/jpeg', 105760, '2026-09-13 03:59:47', '2026-09-14 12:54:03', 10, NULL, NULL, NULL, NULL, '3qeqxuBXqs1fhxoIZnMotUeuN9eHbZysvDHFVdkK', '2026-09-13 02:07:53', '2026-09-16 08:00:03'),
(201, 'WSD-20260913-NUVF', 'Muhammad Faza Al-Fadhil', 'P27903123125', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'fazafadhil86@gmail.com', '085863167362', NULL, 'Laki-laki', 'All Size', 'Muhammad Faza Al-Fadhil Jurusan TLM jenis kelamin : laki-laki, memesan toga untuk wisuda tanggal 30 september jika ada ukuran toga mau yg ukuran M', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/201/6944303a-5795-482c-8656-32f25ab116fa.png', 'IMG_7415.png', 'image/png', 369773, '2026-09-13 02:12:36', '2026-09-14 03:37:53', 9, NULL, NULL, NULL, NULL, 'R249vKvdWdlTYbNUKSU24EvxdQUlyC6OKzsBWO9S', '2026-09-13 02:08:31', '2026-09-14 03:37:56'),
(202, 'WSD-20260913-J6ES', 'Saidita Abna As-Sayuti', 'P27903123040', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'asaiditaabna@gmail.com', '081390146681', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/202/f1c88eb3-34d7-46b7-8cd0-5f3eaacf0ecf.png', 'IMG_4997.png', 'image/png', 392924, '2026-09-13 02:11:55', '2026-09-14 03:37:25', 9, NULL, NULL, NULL, NULL, 'vptpVnr5SYgF50otZj2h5kMY6ogH3OkDKsTvEvz6', '2026-09-13 02:11:32', '2026-09-14 03:37:29'),
(203, 'WSD-20260913-9S1I', 'Farahdiba Syaharani', 'P27903123111', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'farahdibasyaharani2@gmail.com', '085692116900', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/203/5591697d-3d6f-4b05-b8f2-b6615a581209.jpg', 'IMG-20260913-WA0012.jpg', 'image/jpeg', 61840, '2026-09-13 02:17:30', '2026-09-14 03:39:49', 9, NULL, NULL, NULL, NULL, 'Bu7oA5AIVFCTKcbjm8b3GJQ24aqE6KRciWBU4dVN', '2026-09-13 02:14:36', '2026-09-14 03:39:52'),
(204, 'WSD-20260913-QBFL', 'Siti Masitoh', 'P27903123081', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'sitoooh22@gmail.com', '088224733870', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/204/0ad7d3b2-fb91-4b98-bb8f-d62bb91053d3.jpg', 'Screenshot_20260913_091457_SeaBank.jpg', 'image/jpeg', 260965, '2026-09-13 02:15:29', '2026-09-14 03:38:51', 9, NULL, NULL, NULL, NULL, 'WZZ1WfMvunpZnJDheCUHJLhOOayltunsvL1Oea8L', '2026-09-13 02:15:05', '2026-09-14 03:38:54'),
(205, 'WSD-20260913-XKKN', 'Intan Nur Annisa', 'P27903123167', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'intannur682@gmail.com', '085214095259', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/205/f740e13b-c8ae-445c-91ef-7ae4814cd22f.jpg', 'IMG-20260913-WA0005.jpg', 'image/jpeg', 144125, '2026-09-13 02:17:16', '2026-09-14 12:51:57', 10, NULL, NULL, NULL, NULL, 'Q3PMZlYZ2nHQ4MVsWsjNKhV6k8AT3yRndqGeb1oQ', '2026-09-13 02:16:34', '2026-09-16 07:59:48'),
(206, 'WSD-20260913-30GP', 'Halwa Fadliya Muharom', 'P27903123018', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'halwafadliya@gmail.com', '085782276595', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/206/a882dc26-0d8e-4a68-a0dd-91e6c5d50926.png', 'IMG_6964.png', 'image/png', 205614, '2026-09-13 02:17:41', '2026-09-14 03:39:15', 9, NULL, NULL, NULL, NULL, '2wfbrEG0k7f44ycRfh1FLmmCu5FQZcXLUkPFgG1i', '2026-09-13 02:16:40', '2026-09-14 03:39:18'),
(208, 'WSD-20260913-BC9Y', 'Meri Maherani', 'P27901123078', NULL, 1, 'D3 Keperawatan', 2026, 'maheranii.ajja@gmail.com', '0895405435295', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/208/5aacfdb5-10ba-4af6-b64a-57354cb47a6c.png', 'IMG_4228.png', 'image/png', 116620, '2026-09-13 02:18:11', '2026-09-14 12:44:36', 10, NULL, NULL, NULL, NULL, 'BRz2soJ1LeGeF1zxVwTvEeUdy9ZYxBFZkKX7kHek', '2026-09-13 02:17:48', '2026-09-16 07:59:32'),
(209, 'WSD-20260913-ILPG', 'Risma Dwinarni', 'P27903123229', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'rismadwinarni21@gmail.com', '081412113868', NULL, 'Perempuan', 'All Size', 'Untuk all size maksimal bbnya berapa ya?', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/209/3b701dd5-74cd-4d1b-9122-064cb2c501e0.jpg', 'Screenshot_20260913_092213_BRImo.jpg', 'image/jpeg', 581121, '2026-09-13 02:24:22', '2026-09-14 01:44:52', 9, NULL, NULL, NULL, NULL, 'YJtEdNOGDiqCUffxiO5bSYYNJ9elX3hTKVWERiAV', '2026-09-13 02:22:31', '2026-09-14 01:44:54'),
(210, 'WSD-20260913-MQRE', 'Shelyn Safitriyani', 'P27903123233', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'shelynsafitriyani20@gmail.com', '088293603997', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/210/aaabbe45-e04d-419f-b41a-7a448cf61a31.jpeg', 'bukti pembayaran toga.jpeg', 'image/jpeg', 146895, '2026-09-13 02:23:47', '2026-09-14 03:38:18', 9, NULL, NULL, NULL, NULL, '0xAJuOdc1TZAev55V6JRiomhvBRRYk3fr1xVKo5z', '2026-09-13 02:23:15', '2026-09-14 03:38:20'),
(211, 'WSD-20260913-ZJ0X', 'BELLA DWI YULIANI', 'P27902123047', NULL, 2, 'D3 Kebidanan', 2026, 'dwyulianibella@gmail.com', '089517287953', NULL, 'Perempuan', 'All Size', 'semoga ukuran nya ga kebesaran juga ga kekecilan~', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/211/2f3278af-0c3f-413d-91d8-f7e54a186512.jpg', 'IMG-20260913-WA0004.jpg', 'image/jpeg', 43751, '2026-09-13 05:45:41', '2026-09-14 03:40:57', 9, NULL, NULL, NULL, NULL, 'o7i0iyzDTOvows3qpnKrNHLlgBQPzOye4vhWSkFk', '2026-09-13 02:24:31', '2026-09-14 03:41:00'),
(212, 'WSD-20260913-FJME', 'Dhea Soraya', 'P27903123204', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'dheoysr@gmail.com', '0882018798336', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/212/72575e41-c603-4886-8665-c4e1f78dc3ea.png', '80FBC573-FD02-4AA4-B483-38EF4FA2FE8B.png', 'image/png', 232607, '2026-09-13 02:30:01', '2026-09-14 01:45:30', 9, NULL, NULL, NULL, NULL, 'B5NQcAmMXXLzkG98mNX5mGDK5FkhqzphakinsDFz', '2026-09-13 02:26:56', '2026-09-14 01:45:33'),
(213, 'WSD-20260913-FLB2', 'Siti Alfi Ainurrahmah', 'P27903123234', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'alfiainurrahmah@gmail.com', '085810714738', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/213/1c8cc99a-a78d-4d69-9a32-5c0056d31ffc.png', 'IMG_2404.png', 'image/png', 349438, '2026-09-13 12:08:36', '2026-09-14 02:06:57', 9, NULL, NULL, NULL, NULL, 'j12r1Fx6xPWlJtawpfOkw8XqFbbL0RqN9LjzW2Ju', '2026-09-13 02:30:29', '2026-09-14 02:07:00'),
(215, 'WSD-20260913-LQWS', 'Fathiah', 'P27903123161', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'fathi4hhh@gmail.com', '081289909073', NULL, 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/215/6c8158d9-82f8-48e6-9f62-cbd27b01604f.jpg', 'IMG-20260917-WA0053.jpg', 'image/jpeg', 69174, '2026-09-17 10:56:00', NULL, NULL, NULL, NULL, NULL, NULL, 'x5es29OOmBqhjJ04dqAlOZJgIH0jMzhAC0qosaUJ', '2026-09-13 02:33:41', '2026-09-17 10:56:00'),
(217, 'WSD-20260913-XAAY', 'Velisa Illona Rahmadhani', 'P27903123145', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'velisaillona05@gmail.com', '081388082601', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/217/d4dbf6a0-137e-419b-95c6-5af4816e1bf2.jpeg', 'Bukti Bayar Toga D3TLM_Velisa Illona Rahmadhani_P27903123145.jpeg', 'image/jpeg', 131853, '2026-09-13 03:00:35', '2026-09-14 08:32:04', 9, NULL, NULL, NULL, NULL, 'F5vuny3hdg9DRTJkWnYVwOFiH8r6xExd4KQs5dIY', '2026-09-13 02:38:18', '2026-09-14 08:32:07'),
(220, 'WSD-20260913-PSJW', 'Angga Ramadan', 'P27903123152', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'ramadanangga417@gmail.com', '08812164380', NULL, 'Laki-laki', 'All Size', 'Ukuran L (kalau memungkinkan)', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/220/3b919102-ac01-4cd1-9448-a3232a0f60bb.jpg', 'Screenshot_20260914-094254.jpg', 'image/jpeg', 516708, '2026-09-14 02:43:22', '2026-09-14 06:24:27', 9, NULL, NULL, NULL, NULL, '1ElTu1AzIyFHjtIumidXlQyQirVOyv5N90jpxAy2', '2026-09-13 02:41:11', '2026-09-14 06:24:29'),
(221, 'WSD-20260913-V5EV', 'Aisyah Amaliah', 'P27903123148', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'aisyahais388@gmail.com', '089631390570', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/221/ca7c1615-6a8a-4c58-a323-188f9aa2206e.jpeg', 'c4b8dbbf-e114-4147-b2dd-3813466b6b28.jpeg', 'image/jpeg', 122876, '2026-09-13 03:24:03', '2026-09-14 08:32:40', 9, NULL, NULL, NULL, NULL, 'vmZDN3362m6kYjRHMkPe94jUY4Z5jKhSjNc0Jb66', '2026-09-13 02:42:57', '2026-09-14 08:32:43'),
(223, 'WSD-20260913-MOYT', 'Yusuf Bachtiar', 'P27903123147', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'yb7885522@gmail.com', '089639168069', NULL, 'Laki-laki', 'All Size', 'Ukuran L', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/223/3693f61b-ab3e-4a87-9ddd-d90697896fc6.jpg', 'Screenshot_20260913_093335_BRImo.jpg', 'image/jpeg', 541681, '2026-09-13 02:46:15', '2026-09-14 03:41:35', 9, NULL, NULL, NULL, NULL, 'WS7U4j0uVOqqW3rGwvw7pfOqclOWpqIYWfAwTuMN', '2026-09-13 02:45:55', '2026-09-14 03:41:38'),
(225, 'WSD-20260913-2EYG', 'AJI DARMA KOMARA', 'P27903123100', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'ajidarmakomara2c@gmail.com', '085776894358', NULL, 'Laki-laki', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/225/b43e3ef6-6ffc-4eb4-bd2d-d639ea34d3a0.png', 'IMG_2712.png', 'image/png', 164956, '2026-09-13 02:54:55', '2026-09-14 01:47:52', 9, NULL, NULL, NULL, NULL, 'zYNxtYWer8NmwQqjuzND2HRig0eIV4JVfgjOplyA', '2026-09-13 02:50:58', '2026-09-14 01:47:56'),
(226, 'WSD-20260913-CRKU', 'Muhammad Akhtar Athaya', 'P27903123219', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'athayachol765@gmail.com', '081385338801', NULL, 'Laki-laki', 'All Size', 'Ukuran L', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/226/9f5bcb94-7846-4661-b7da-21d8786569c3.jpg', 'Muhammad Akhtar Athaya.jpg', 'image/jpeg', 81335, '2026-09-13 07:33:20', '2026-09-14 12:42:52', 10, NULL, NULL, NULL, NULL, 'Iny4s5oAM1SpDVn6B86v1ZmTzMGqWkunkCjGfbZv', '2026-09-13 02:51:52', '2026-09-16 08:00:44'),
(227, 'WSD-20260913-TNR9', 'DINI KAMALIA', 'P27903123059', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'dinikamalia812@gmail.com', '089653921500', NULL, 'Perempuan', 'All Size', 'Kepala saya kecil, apakah muat dan sesuai kalau all size? terima kasih', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/227/81952231-b316-4937-bb3c-2b4961dcba11.jpg', 'Screenshot_2026-09-13-09-54-53-18.jpg', 'image/jpeg', 206186, '2026-09-13 02:55:45', '2026-09-14 03:43:00', 9, NULL, NULL, NULL, NULL, 'Qj7B4AAfdypoKlEHtyRWVlSuRkuDVpBRwlCzBHUs', '2026-09-13 02:51:58', '2026-09-14 03:43:03'),
(228, 'WSD-20260913-GNEJ', 'Imam Murijal', 'P27903123068', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'imammurijal2728@gmail.com', '085693225009', NULL, 'Laki-laki', 'All Size', 'Ukuran L (jika memungkinkan)', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/228/9645519c-ecfd-4fb6-b65c-9ec503bf1959.jpg', 'IMG-20260913-WA0050.jpg', 'image/jpeg', 123449, '2026-09-13 03:00:33', '2026-09-14 04:50:48', 9, NULL, NULL, NULL, NULL, 'tWEvZidaj1UmpxLCjN65SBXr9bd0QTT5x0dqao4z', '2026-09-13 03:00:17', '2026-09-14 04:50:51'),
(229, 'WSD-20260913-RWTS', 'Risma Sari Ramadani', 'P27903123184', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'rismasariramadani61@gmail.com', '085973264522', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/229/b5807363-c2f3-4bcc-a122-27218c555586.jpg', 'Screenshot_2026-09-14-15-49-12-02_78ed797590cf9a33dfc5e341b7a9537a.jpg', 'image/jpeg', 494076, '2026-09-15 02:50:06', '2026-09-15 04:04:28', 10, NULL, NULL, NULL, NULL, 'we6qL5rr1kW1liZF1lktISFlyxorJWDKb56pwlZJ', '2026-09-13 03:05:57', '2026-09-15 04:04:32'),
(230, 'WSD-20260913-6ADR', 'Jihan Tsabitul Azmi', 'P27903123168', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'tsabitulazmijihan931@gmail.com', '081299581462', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/230/0e293c49-2a83-4480-993d-7361021bb1cd.jpg', 'IMG_Sun Sep 13 10_22_30 GMT+07_00 2026.jpg', 'image/jpeg', 242838, '2026-09-13 03:23:22', '2026-09-14 03:43:56', 9, NULL, NULL, NULL, NULL, 'dWi4WXii0hha1ajNJyD1mTJS8dvkALnII850KbLw', '2026-09-13 03:20:30', '2026-09-14 03:43:59'),
(232, 'WSD-20260913-559H', 'Widya Putri Wulandari', 'P27903123241', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'wp957377@gmail.com', '085694292140', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/232/1bfeac10-2b45-4c1e-a93f-cf1f643798d8.jpg', 'Screenshot_2026-09-13-10-34-46-574_id.dana.jpg', 'image/jpeg', 563355, '2026-09-13 03:35:09', '2026-09-14 04:11:45', 9, NULL, NULL, NULL, NULL, 'qE8vqVsNizFBdtg4ncmvNN8BqE4fTTPbihuFI8Nc', '2026-09-13 03:31:16', '2026-09-14 04:11:47'),
(233, 'WSD-20260913-R4Q5', 'Siti Rohamah', 'P27903123142', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'sitirohamah3ctlm@gmail.con', '085718257663', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/233/1d13cb32-02eb-44eb-beae-703aa5610d2c.png', 'IMG_9301.png', 'image/png', 511542, '2026-09-13 03:38:57', '2026-09-14 01:50:47', 9, NULL, NULL, NULL, NULL, 'UyFtR9mNHAq4cAp2BD7e1BJ2o1G0t3wRGig0D183', '2026-09-13 03:38:17', '2026-09-14 01:50:50'),
(234, 'WSD-20260913-MQDZ', 'Siti Nurus Sya’adah', 'P27903123189', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'stnursydh@gmail.com', '085716773188', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/234/4f2a45f0-30d4-4cd5-8f5b-9619fb5861e1.jpeg', 'IMG_1111.jpeg', 'image/jpeg', 240891, '2026-09-13 03:49:58', '2026-09-14 01:51:40', 9, NULL, NULL, NULL, NULL, 'tq1ksigjTSxf4k9ZlPOb3XCwEnNcElP72UlDeBiX', '2026-09-13 03:47:24', '2026-09-14 01:51:43'),
(235, 'WSD-20260913-G0AG', 'Siti Khodijah', 'P27902123077', NULL, 2, 'D3 Kebidanan', 2026, 'sitikhodijah1336@gmail.com', '081213481710', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/235/c5b25373-bf68-42ec-ade1-07a0cac65a11.jpg', 'IMG-20260913-WA0003.jpg', 'image/jpeg', 77058, '2026-09-13 03:52:49', '2026-09-14 13:11:47', 10, NULL, NULL, NULL, NULL, 'VXzVorK2lCvAoAqfBhjckP5ItaxF68s6ItVksMDF', '2026-09-13 03:51:18', '2026-09-15 08:43:10'),
(237, 'WSD-20260913-SZBG', 'Rezky Pandu Suseno', 'P27903123084', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'rezkypandususeno@gmail.com', '087774031456', NULL, 'Laki-laki', 'All Size', 'XL', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/237/bc1f6adc-5d82-42be-b323-d4d78afe11a8.jpg', 'Screenshot_20260913-102625.jpg', 'image/jpeg', 400596, '2026-09-14 06:17:26', '2026-09-14 06:18:39', 9, NULL, NULL, NULL, NULL, 'SyUQBLb5u6KzrOCTZ9nOrJGaTUrD8P0h9AE5cC3m', '2026-09-13 03:54:17', '2026-09-14 06:18:41'),
(239, 'WSD-20260913-FBQ0', 'Anisa Rosita', 'P27902123084', NULL, 2, 'D3 Kebidanan', 2026, 'annsrsta09@gmail.com', '085711932769', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/239/56c3ac7f-efbe-4901-b713-3582cdedef69.png', 'IMG_4308.png', 'image/png', 284373, '2026-09-13 03:58:17', '2026-09-14 01:52:28', 9, NULL, NULL, NULL, NULL, 'MtxvVY4jQ9ZivjzZeFdD7Y4NFcXnNKHerDPGLdx1', '2026-09-13 03:57:02', '2026-09-14 01:52:30'),
(240, 'WSD-20260913-CDEY', 'Hernawati', 'P27902123138', NULL, 2, 'D3 Kebidanan', 2026, 'hernawati57381@gmail.com', '083845594142', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/240/a2cc8572-0c15-4cfa-b239-21bf34bc7ed1.jpeg', '48aee957-d426-4318-adb7-407207a966f0.jpeg', 'image/jpeg', 102220, '2026-09-13 04:10:23', '2026-09-14 04:13:55', 9, NULL, NULL, NULL, NULL, 'rnmT3JvnYXeCm9kBbp4W7sae0q5nhZM8dz4APmMF', '2026-09-13 04:08:35', '2026-09-14 04:13:58'),
(242, 'WSD-20260913-AZJC', 'NIKITA AULIA PUTRI', 'P27903123031', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'nikitaauliaputri882@gmail.com', '081295282340', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/242/fd5664e0-006d-4460-8a08-501dbfe7061b.jpg', '1789272924309.jpg', 'image/jpeg', 465005, '2026-09-13 04:15:48', '2026-09-14 01:53:14', 9, NULL, NULL, NULL, NULL, 'OAx1DFYSDOK4BTMN5rfhFW3j9msesFCvX2Yk9K5n', '2026-09-13 04:13:49', '2026-09-14 01:53:17'),
(243, 'WSD-20260913-LDLR', 'AZRUL ROSYID KAMAL', 'P27903123155', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'azrulkamalrosyid@gmail.com', '083813958416', NULL, 'Laki-laki', 'All Size', 'M', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/243/b0ff80eb-723f-4b24-a46b-5d84161123de.jpg', 'IMG-20260913-WA0174.jpg', 'image/jpeg', 66479, '2026-09-13 04:18:52', '2026-09-14 04:14:58', 9, NULL, NULL, NULL, NULL, 'dpAcviTjP7VUCsuxwvxLdqyWYloi0tzN14ZR7AIM', '2026-09-13 04:15:11', '2026-09-14 04:15:02'),
(244, 'WSD-20260913-ZWLD', 'Putry Oktaviany', 'P27903123226', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'putryokta14@gmail.com', '08567527175', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/244/8d6c3c35-8cbd-4fe6-af82-e21d98a45ef2.jpg', 'IMG-20260913-WA0006.jpg', 'image/jpeg', 71965, '2026-09-13 04:16:12', '2026-09-14 04:14:17', 9, NULL, NULL, NULL, NULL, 'GtVsB4eTvRnBPwq7jJ8hUFX23U195Q9natJQ7CS9', '2026-09-13 04:15:39', '2026-09-14 04:14:21'),
(248, 'WSD-20260913-LVGA', 'Wahyu Fadillah Kurniawan', 'P27903123194', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'wahyufadillah12345@gmail.com', '082112944929', NULL, 'Laki-laki', 'All Size', 'Ukuran M', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/248/80633005-f245-4af5-a2d1-bf860e9e2208.jpeg', '66dac366-a0f2-4c29-9be1-eb908b04b54e.jpeg', 'image/jpeg', 128049, '2026-09-14 09:58:24', '2026-09-14 13:13:17', 9, NULL, NULL, NULL, NULL, 'Jk9qRPJNHeirZZFIelmM9lsjr1TqD7mZopExWTts', '2026-09-13 04:52:47', '2026-09-14 13:13:21'),
(251, 'WSD-20260913-K6UA', 'Wafiq Alya Afifah', 'P27903123146', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'alyawafiq29@gmail.com', '085773752733', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/251/0b16253e-4bfa-4d02-b1e6-f7061ce414ce.png', 'reSabeipt_58672_03_23_00_12_02.png', 'image/png', 278602, '2026-09-14 01:29:28', '2026-09-14 02:01:16', 9, NULL, NULL, NULL, NULL, 'dZFniHQ5ToCRqWIkF80QQUIIM4xqhaC6hsclQpUG', '2026-09-13 05:00:41', '2026-09-14 02:01:19'),
(252, 'WSD-20260913-C6UZ', 'Muhamad Reza Fadli', 'P27903123220', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'muhamadrezafadli06@gmail.com', '087773251256', NULL, 'Laki-laki', 'All Size', 'Tinggi badan 168\r\nBerat badan 57', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/252/4edd416f-a20f-4821-b10c-cc7ec7d6dd01.jpg', 'Screenshot_2026-09-13-20-01-50-10.jpg', 'image/jpeg', 175364, '2026-09-14 08:40:40', '2026-09-14 09:17:52', 10, NULL, NULL, NULL, NULL, 'XwjGmSnLOzgyEw60U1JvR57vJrFKV8YKEOWUPrap', '2026-09-13 05:02:21', '2026-09-15 00:52:00'),
(253, 'WSD-20260913-NMNJ', 'Nadif Marwan Jafr', 'P27903123127', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'nadifmarwan21@gmail.com', '085773909098', NULL, 'Laki-laki', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/253/26e53245-4d1a-4d53-abdf-26bfb9da777c.jpeg', '10096810-8520-43c1-b739-16587b16adb8.jpeg', 'image/jpeg', 123826, '2026-09-13 05:38:10', '2026-09-14 03:54:26', 9, NULL, NULL, NULL, NULL, '7X26pXkxvxxwDqZskRza1UgjexZAOyV2cKmkGIyA', '2026-09-13 05:27:48', '2026-09-14 03:54:29');
INSERT INTO `graduation_toga_orders` (`id`, `order_code`, `student_name`, `nim`, `nik`, `study_program_id`, `study_program_name`, `graduation_year`, `email`, `phone`, `transfer_sender_name`, `gender`, `toga_size`, `size_note`, `quantity`, `status`, `payment_status`, `payment_amount`, `payment_method`, `payment_proof_path`, `payment_proof_original_name`, `payment_proof_mime`, `payment_proof_size`, `payment_uploaded_at`, `payment_verified_at`, `payment_verified_by`, `payment_rejected_at`, `payment_rejected_by`, `admin_note`, `rejection_note`, `public_token`, `created_at`, `updated_at`) VALUES
(254, 'WSD-20260913-KMYL', 'PUTRI MAYASARI', 'P27903123182', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'putrimayasari166@gmail.com', '085892596781', NULL, 'Perempuan', 'All Size', 'Kalo bisa toga saya jangan gede2 yah soalnya saya tb 150 bb 52 huhuu', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/254/c74d2b34-304a-495f-a126-73afeecfd762.png', 'IMG_4192.png', 'image/png', 215504, '2026-09-13 05:31:33', '2026-09-14 01:53:45', 9, NULL, NULL, NULL, NULL, 'NMut32ASqCmKaTVwSNeiBk7VU0lvFbsAbP8WIEnJ', '2026-09-13 05:29:25', '2026-09-14 01:53:48'),
(256, 'WSD-20260913-KTDX', 'SITI MURTAFIAH', 'P27902123113', NULL, 2, 'D3 Kebidanan', 2026, 'fifimurtafiah369@gmail.com', '085161092004', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/256/bbf73391-a121-42c5-992f-be6510c87aff.png', 'Screenshot_20260913-131056.png', 'image/png', 150289, '2026-09-13 06:12:43', '2026-09-14 04:17:15', 9, NULL, NULL, NULL, NULL, 'rUuNrLisrtU3oBmN2Ot0moZNgrTU25TJA4NSxtmB', '2026-09-13 05:42:43', '2026-09-14 04:17:18'),
(257, 'WSD-20260913-J5RX', 'Hera Fahma Lestari', 'P27903123115', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'herafahmalestari@gmail.com', '083134274450', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/257/d020aced-0645-4250-bb15-7cf0cd63d289.jpg', 'Screenshot_2026-09-13-12-46-49-19_121d0782f1cd8474b48c9b27865007fd.jpg', 'image/jpeg', 158666, '2026-09-13 05:47:21', '2026-09-14 04:16:38', 9, NULL, NULL, NULL, NULL, 'oA4HqKe9BxjsBx9idsUAjrMji8jQHbsau5yRQ9UJ', '2026-09-13 05:45:07', '2026-09-14 04:16:41'),
(258, 'WSD-20260913-I3LC', 'ANGGIE RIVA PERTIWI', 'P27903123104', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'anggieriva18@gmail.com', '0895707004848', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/258/78735d3c-b999-4924-b8a2-f2de5d0c0e24.jpg', 'Screenshot_20260913_124833_SeaBank.jpg', 'image/jpeg', 270805, '2026-09-13 05:49:03', '2026-09-14 01:55:14', 9, NULL, NULL, NULL, NULL, '0nU5iRRJ7DTY2XpjswaLXDtirIXNWXYnEJxCRKOz', '2026-09-13 05:48:39', '2026-09-14 01:55:17'),
(259, 'WSD-20260913-GAES', 'Nazwa Faradita', 'P27903123030', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'nazwafaradita1603@gmail.com', '0895610439580', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/259/164135c1-1b0d-4094-9161-5584a81eb837.jpeg', 'BUKTI PEMBAYARAN TOGA WISUDA NAZWA FARADITA.jpeg', 'image/jpeg', 81056, '2026-09-13 06:01:14', '2026-09-14 01:56:02', 9, NULL, NULL, NULL, NULL, 'HSueKiqbSyEMbYJXchV6WkiyzWBHNTOueDAlWyJc', '2026-09-13 05:59:22', '2026-09-14 01:56:05'),
(260, 'WSD-20260913-BHSY', 'Tania Putri Khalisoh', 'P27903123046', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'taniaputrik12@gmail.com', '081294917459', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/260/54230159-4aa2-4b44-8cbc-bd4cbd4001ce.jpg', 'Transaksi_BCAmobile-20260913-130248.jpg', 'image/jpeg', 244501, '2026-09-13 06:03:38', '2026-09-14 01:56:27', 9, NULL, NULL, NULL, NULL, 'In565CA8He20PIYmcv6VEsThjAsRMtoD8xQoHWJr', '2026-09-13 05:59:42', '2026-09-14 01:56:29'),
(261, 'WSD-20260913-EDMZ', 'Salsa Ardelia Zulfianti', 'P27903123087', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'zsalsaardelia@gmail.com', '085717691874', NULL, 'Perempuan', 'All Size', 'Size M', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/261/632bf679-8b94-475d-b12b-f3889b60adee.jpg', 'IMG-20260913-WA0020.jpg', 'image/jpeg', 77435, '2026-09-13 06:05:22', '2026-09-14 13:12:53', 9, NULL, NULL, NULL, NULL, 'Zrk2xxJuoUe93tb2C183s8SPDi3ij7IVrXkScJHn', '2026-09-13 06:01:57', '2026-09-14 13:12:57'),
(263, 'WSD-20260913-QV1W', 'Afifah Nur Kholida', 'P27903123050', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'fifahbarun@gmail.com', '085880861408', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/263/b0aecb99-ddfc-44d9-851a-7fbfa1b95b8b.png', 'reSabeipt_58672_11_30_21_18_32.png', 'image/png', 271838, '2026-09-14 07:34:02', '2026-09-14 13:00:17', 9, NULL, NULL, NULL, NULL, '6zg5kxDTdd81UVfBtk3ROtWQMgfT5hm17CnOzb6o', '2026-09-13 06:49:18', '2026-09-14 13:00:24'),
(265, 'WSD-20260913-FMQK', 'Tegar Pribadi Gumilar', 'P27903123192', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'pribaditegar186@gmail.com', '082111839042', NULL, 'Laki-laki', 'All Size', 'Tb 168\r\nBb 75', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/265/e1c12e9b-ab9b-4a7d-9988-aa7b7a612abd.jpg', 'Screenshot_20260913_135710_myBCA.jpg', 'image/jpeg', 456290, '2026-09-13 07:02:38', '2026-09-14 04:18:21', 9, NULL, NULL, NULL, NULL, 'VvJxM8CEB1oMD7mNLAyIfLSxPF9jFwWlTXJjzgV1', '2026-09-13 06:56:07', '2026-09-14 04:18:23'),
(266, 'WSD-20260913-6LYY', 'Felia Nagita Cheriel', 'P27903123016', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'fenaril05@gmail.com', '089507040693', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/266/dd007c38-d360-422f-b6cb-745b8298bf2e.jpg', 'Screenshot_2026-09-13-14-37-51-442_id.co.bri.brimo.jpg', 'image/jpeg', 642943, '2026-09-13 07:38:38', '2026-09-14 04:20:19', 9, NULL, NULL, NULL, NULL, 'cHJWCrYf4odFAdHltvomCETyg2viflmB07IoLhuf', '2026-09-13 07:34:47', '2026-09-14 04:20:22'),
(267, 'WSD-20260913-AJFB', 'Hanita Salsabila', 'P27903123065', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'hanitasalsabila08@gmail.com', '085811162897', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/267/f4732b49-6685-49d3-b1b9-e6e44e86ea05.jpeg', 'Bukti Bayar Toga a.n. Hanita Salsabila (TLM).jpeg', 'image/jpeg', 75989, '2026-09-13 07:48:34', '2026-09-14 13:20:32', 9, NULL, NULL, NULL, NULL, '6fZlEEVGZOVkPnWZrogYGOAjMff5bYsk8iCb4f8q', '2026-09-13 07:39:53', '2026-09-14 13:20:37'),
(269, 'WSD-20260913-XJE7', 'Ru\'yatul Fauziah', 'P27903123185', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'fauziahruyatul525@gmail.com', '081323894788', NULL, 'Perempuan', 'All Size', '-', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/269/6bf007c3-3e70-4eef-b886-093ed52e5e9c.jpg', 'IMG-20260913-WA0027.jpg', 'image/jpeg', 58623, '2026-09-13 08:33:03', '2026-09-14 04:21:14', 9, NULL, NULL, NULL, NULL, 'KtIlqvyDeKZhNhqXH4YVPA0zKPaJgMUQ7ZJ2iflw', '2026-09-13 08:31:58', '2026-09-14 04:21:16'),
(270, 'WSD-20260913-EGGK', 'Tasmia Nurhaliza', 'P27903123094', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'tasmianurhaliza@gmail.com', '081995357062', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/270/4459ab74-87d7-4a89-96ff-f87d190b025f.jpg', 'Screenshot_20260913_161202_DANA.jpg', 'image/jpeg', 287582, '2026-09-13 09:12:31', '2026-09-14 02:00:45', 9, NULL, NULL, NULL, NULL, 'UIulbTwZtKkYV43wGtTkiLig4ViTdcd9aH6L2GZt', '2026-09-13 09:09:51', '2026-09-14 02:00:48'),
(271, 'WSD-20260913-0ZHP', 'MUHAMAD ALDIANSYAH', 'P27901123079', NULL, 1, 'D3 Keperawatan', 2026, 'muhamadaldiansyah1605@gmail.com', '085218496606', NULL, 'Laki-laki', 'All Size', 'MUHAMAD ALDIANSYAH \r\nNIM: P27901123079\r\nD-III KEPERAWATAN', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/271/bf76cfaa-e129-4b83-801c-ccaafd0d9bba.png', 'IMG_3081.png', 'image/png', 323747, '2026-09-13 09:44:31', '2026-09-14 04:21:52', 9, NULL, NULL, NULL, NULL, 'KkrtN0BBqxBozQkrEJ5CbSHUvy3TgXdEP0iLyIXj', '2026-09-13 09:42:49', '2026-09-14 04:21:54'),
(272, 'WSD-20260913-555G', 'SUCI OKTAVIA RAMADHANI', 'P27903123093', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'sucioktavia020@gmail.com', '081617967269', NULL, 'Perempuan', 'All Size', 'Suci Oktavia Ramadhani transfer melalui BNI a.n SUCI OKTAVIA RAMADHANI', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/272/d15a227f-9cb3-4749-af72-8a5138648644.png', 'IMG_8455.png', 'image/png', 346449, '2026-09-13 09:45:52', '2026-09-14 04:22:15', 9, NULL, NULL, NULL, NULL, 'doMGeDQv8NVVotXKk8693Wfxn0qDIfE559Y65ktZ', '2026-09-13 09:45:31', '2026-09-14 04:22:19'),
(273, 'WSD-20260913-B6XF', 'Latifatun Nahdiyah', 'P27902123062', NULL, 2, 'D3 Kebidanan', 2026, 'latifatunnadya0@gmail.com', '085600108967', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/273/0f8dfe5e-123a-450d-873b-302b9e32e1ca.jpg', 'Screenshot_2026-09-13-17-11-26-811_com.bca.jpg', 'image/jpeg', 526570, '2026-09-13 10:12:04', '2026-09-14 04:22:41', 9, NULL, NULL, NULL, NULL, 'UNWvHtUiqsNXZR4g9e7p86rIzYcbQLNGhwrWu3ZR', '2026-09-13 10:09:16', '2026-09-14 04:22:45'),
(275, 'WSD-20260913-UXCX', 'OLIVIA MELFIRA SANDRA', 'P27903123225', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'oliviamelfirasandra@gmail.com', '085779187094', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/275/0aa7eee9-a8c1-424f-83f1-91f64af43fd0.jpg', 'IMG-20260913-WA0020.jpg', 'image/jpeg', 183698, '2026-09-13 11:24:38', '2026-09-14 09:48:21', 13, NULL, NULL, NULL, NULL, 'qrnhfhZIFivFXF8EtBcL2KwWn6ohw9VsPkCnaLIi', '2026-09-13 11:06:11', '2026-09-14 09:48:24'),
(276, 'WSD-20260913-TDAJ', 'Frida Yospiana', 'P27902123136', NULL, 2, 'D3 Kebidanan', 2026, 'fridayospiana02@gmail.com', '083147155558', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/276/9de9b93a-c093-4aa5-b70f-0aa0e783df4d.jpg', 'Screenshot_2026-09-13-18-19-21-09_78ed797590cf9a33dfc5e341b7a9537a.jpg', 'image/jpeg', 222858, '2026-09-13 11:19:56', '2026-09-14 04:27:55', 9, NULL, NULL, NULL, NULL, 'Sdev2QfH6wMaFpmKsM5DxREk5zczur8ehI0ji2Ff', '2026-09-13 11:17:36', '2026-09-14 04:27:58'),
(277, 'WSD-20260913-CZZI', 'SITI NURHAYATI', 'P27901123044', NULL, 1, 'D3 Keperawatan', 2026, 'stnurhayati2604@gmail.com', '085280457876', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/277/5f8f9c51-cc7d-44df-af4b-7af931e91f33.jpg', 'IMG-20260911-WA0011.jpg', 'image/jpeg', 79117, '2026-09-13 12:07:57', '2026-09-14 04:24:43', 9, NULL, NULL, NULL, NULL, 'cd9kNY4ruR1o0UGJSxj216sR72aRQXGOAFsTH5rP', '2026-09-13 12:07:35', '2026-09-14 04:24:46'),
(279, 'WSD-20260913-BRUK', 'Meilinda Khoirunnisa', 'P27903123218', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'meilindakhoirunnisa6@gmail.com', '0895636195458', NULL, 'Perempuan', 'All Size', 'ukuran L', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/279/bc52d630-4690-413d-9868-e03ad7b5c83b.jpg', 'Meilinda Khoirunnisa.JPG', 'image/jpeg', 117517, '2026-09-14 05:03:25', '2026-09-14 09:50:55', 13, NULL, NULL, NULL, NULL, 'PkkjhTe8NSQzYUNOlcbopl074sBIOk79lUFvBFAy', '2026-09-13 12:15:57', '2026-09-14 09:50:59'),
(280, 'WSD-20260913-SMLK', 'Kamilah Khoirunisa Solehah', 'P27901123073', NULL, 1, 'D3 Keperawatan', 2026, 'milaakhnsa@gmail.com', '081385172171', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/280/63216917-3ce7-4793-89f1-7a5dcde1d31d.png', 'IMG_3936.png', 'image/png', 117036, '2026-09-13 12:35:43', '2026-09-14 03:09:50', 9, NULL, NULL, NULL, NULL, 'RefIvb0nCe5NBPRn5iYkn8W1oVryI3JSGP66S7m1', '2026-09-13 12:33:53', '2026-09-14 03:09:53'),
(281, 'WSD-20260913-WMKO', 'Nazwa Aura Ramadhani', 'P27903123129', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'nzwaurar30@gmail.com', '082124347797', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/281/269870ee-92f8-471f-bf61-891a6fab136c.jpg', 'IMG-20260913-WA0014.jpg', 'image/jpeg', 58103, '2026-09-13 12:41:07', '2026-09-14 04:29:31', 9, NULL, NULL, NULL, NULL, 'zJODwbrblWUD1rhB2NbIpFTSozDTx65M7f6vk1oW', '2026-09-13 12:37:49', '2026-09-14 04:29:35'),
(282, 'WSD-20260913-KEXN', 'Ratu Hana Chaerunisa', 'P27903123134', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'ratuhana620@gmail.com', '083132044615', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/282/37d4c123-53b6-4258-822c-80e48b26a747.jpeg', 'f2239399-1152-4466-b0d4-e3c0f6958ba9.jpeg', 'image/jpeg', 82656, '2026-09-13 12:40:59', '2026-09-14 04:28:53', 9, NULL, NULL, NULL, NULL, '9SnHaLlMFw1uYcs6R8pFVZxmD0tsq1KQr7TYIkEi', '2026-09-13 12:40:14', '2026-09-14 04:28:55'),
(283, 'WSD-20260913-ZGCN', 'Nabila Aulia Putri', 'P27903123029', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'nblauliaput10@gmail.com', '08139840524', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/283/f0ae33ff-307b-4e08-982b-6b6a73f7e232.jpg', 'Screenshot_2026-09-13-19-50-15-87_78ed797590cf9a33dfc5e341b7a9537a.jpg', 'image/jpeg', 325201, '2026-09-13 12:50:59', '2026-09-14 04:29:55', 9, NULL, NULL, NULL, NULL, '921PZoE2YhaoSQqkoJXIeDQYGe4ig8b8iwABX6bt', '2026-09-13 12:50:27', '2026-09-14 04:29:58'),
(284, 'WSD-20260913-3AY4', 'SITI AULIA QURNIATILLAH', 'P27902123076', NULL, 2, 'D3 Kebidanan', 2026, 'qurniatillah11@gmail.com', '087895383021', NULL, 'Perempuan', 'All Size', 'TOGA PRODI D3 KEBIDANAN A.N SITI AULIA QURNIATILLAH', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/284/96905f2a-5c64-4c1c-bd39-035e78d9cf82.jpg', 'IMG-20260913-WA0056.jpg', 'image/jpeg', 53345, '2026-09-13 13:16:26', '2026-09-14 09:45:49', 13, NULL, NULL, NULL, NULL, 'KQ1X1Zd9HsWR0MYJY7xAVtAzcWYIbqlYEhFUDw9V', '2026-09-13 13:07:30', '2026-09-14 09:45:52'),
(285, 'WSD-20260913-QJEB', 'Latifa Muthi Nurjanah', 'P27903123121', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'latifamuthi08@gmail.com', '08984982143', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/285/0ee5e830-8337-403a-b78b-6e83f6b23b6e.jpg', 'IMG_Sun Sep 13 20_25_41 GMT+07_00 2026.jpg', 'image/jpeg', 129666, '2026-09-13 13:26:21', '2026-09-14 04:31:06', 9, NULL, NULL, NULL, NULL, 'EjMprIYdAQSpQKgHMr6W42cLe5XUh4O7sjtFpOwq', '2026-09-13 13:23:55', '2026-09-14 04:31:08'),
(286, 'WSD-20260913-GDEI', 'SITI AZKIYA PATONAH SIREGAR', 'P27901123099', NULL, 1, 'D3 Keperawatan', 2026, 'sitiazkiaf@gmail.com', '081617964564', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/286/8fdafef9-0e7a-47e2-a690-2f27808fb416.png', 'IMG_4027.png', 'image/png', 190672, '2026-09-13 14:19:17', '2026-09-14 04:32:56', 9, NULL, NULL, NULL, NULL, 'nrRIPd5s99SFoc8QHY5ygt853c3ebrEMVYoDmCcA', '2026-09-13 14:17:38', '2026-09-14 04:32:58'),
(287, 'WSD-20260913-RALH', 'NOVI', 'P27902123149', NULL, 2, 'D3 Kebidanan', 2026, 'novimvi7@gmail.com', '083180129100', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/287/5920422a-ef17-4690-b216-18415d30e82c.png', 'IMG_3072.png', 'image/png', 346386, '2026-09-14 01:45:54', '2026-09-14 04:33:31', 9, NULL, NULL, NULL, NULL, 'eisrSWRoYbh3SGKvzcuqdeomE09bwwdo0t8KlZsb', '2026-09-13 15:29:11', '2026-09-14 04:33:33'),
(288, 'WSD-20260913-CCXY', 'Ahmad Lepi Kurniawan', 'P27901123055', NULL, 1, 'D3 Keperawatan', 2026, 'levik4312@gmail.com', '082311448960', NULL, 'Laki-laki', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aHGOKt17ozFCvIqdYwNhNpriAMvUueFkT9tmn7yC', '2026-09-13 17:38:27', '2026-09-13 17:38:27'),
(289, 'WSD-20260913-JRLQ', 'Linda Yulianti Sari', 'P27903123171', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'lindayuliantisari024@gmail.com', '085692929293', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/289/b7227e4f-d915-4db2-a270-adc0aad58da1.jpeg', 'IMG_5391.jpeg', 'image/jpeg', 267586, '2026-09-13 22:36:25', '2026-09-14 01:42:48', 9, NULL, NULL, NULL, NULL, '7MjIIrEuDAWp3gKCLV4TrhLIH6s5HILzU2ebztg3', '2026-09-13 22:34:11', '2026-09-14 01:42:50'),
(290, 'WSD-20260914-JGPY', 'Maharani Eka Pratiwi', 'P27903123217', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'maharaniekap24@gmail.com', '085659746775', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/290/333a4709-1358-4c0d-880e-e81aab0f786e.jpg', 'Screenshot_20260914_071202_DANA.jpg', 'image/jpeg', 559388, '2026-09-14 00:13:15', '2026-09-14 02:03:37', 9, NULL, NULL, NULL, NULL, 'DTqqOrSBNvUl7xW3CVJpxWGNjlTv42Gi7zLCeif3', '2026-09-14 00:12:48', '2026-09-14 02:03:39'),
(291, 'WSD-20260914-JSZK', 'Keryn Zairi Annisa', 'P27903123070', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'kerynzairi@gmail.com', '0895387157336', NULL, 'Perempuan', 'All Size', 'ukuran toga M', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/291/96399cde-667b-4d00-a868-790fa1c53bb9.jpg', 'IMG-20260914-WA0000.jpg', 'image/jpeg', 63928, '2026-09-14 00:27:44', '2026-09-14 04:34:58', 9, NULL, NULL, NULL, NULL, '7f3y5IdZUjitSOOA079EsgzJhXNnZVwOxfGo4agw', '2026-09-14 00:22:43', '2026-09-14 04:35:01'),
(292, 'WSD-20260914-IDRX', 'Silfi Wulandari', 'P27904122088', NULL, 8, 'Sarjana Terapan Keperawatan', 2026, 'wulandarisilvi76@gmail.com', '085211400643', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/292/cba9bfdb-1cd1-4733-a653-d0a39300b47f.jpg', 'Screenshot_2026-09-14-07-39-09-586_id.co.bri.brimo.jpg', 'image/jpeg', 340155, '2026-09-14 00:39:50', '2026-09-14 04:35:18', 9, NULL, NULL, NULL, NULL, 'EUahXQxoXUBJrkH8maWpIhqzWsz3PKE4lnP22eKJ', '2026-09-14 00:38:02', '2026-09-14 04:35:20'),
(293, 'WSD-20260914-N9FS', 'Dini Muhtarissahra', 'P27902123093', NULL, 2, 'D3 Kebidanan', 2026, 'dinimuhtarissahra@gmail.com', '085881645687', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/293/9c08d89e-0e2a-436f-b7f7-91cfc06046f8.png', 'IMG_9879.png', 'image/png', 287215, '2026-09-14 00:56:29', '2026-09-14 04:35:40', 9, NULL, NULL, NULL, NULL, '0CVDL7RVYAjwvLUNlqJ2ZMY94jPxtdhYo0hWzmxQ', '2026-09-14 00:53:46', '2026-09-14 04:35:42'),
(294, 'WSD-20260914-VKHZ', 'Putri Hidayani', 'P27902123068', NULL, 2, 'D3 Kebidanan', 2026, 'hidayanip076@gmail.com', '085885007677', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/294/1a39b66d-4c46-419c-a7bb-2e31ed5250a0.png', '9906F3A1-091F-43ED-A93E-D6FD21ABD24C.png', 'image/png', 406370, '2026-09-14 01:06:15', '2026-09-14 04:36:01', 9, NULL, NULL, NULL, NULL, 'LmI9KhWbNuoacTU4Kja1nChjy1twIJMqPOgkH3zV', '2026-09-14 01:02:54', '2026-09-14 04:36:06'),
(296, 'WSD-20260914-EX3D', 'Nurul Sapitri', 'P27901123034', NULL, 1, 'D3 Keperawatan', 2026, 'nurulsapitri322@gmail.com', '085817108481', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/296/28a71140-2a44-4ea6-b3ea-a3e64cf02146.png', 'IMG_2454.png', 'image/png', 167891, '2026-09-14 01:13:15', '2026-09-14 04:36:48', 9, NULL, NULL, NULL, NULL, 'AiTqJKcpLK1J8z2iJqPAS2x9Or6OXyJipGfnAyOV', '2026-09-14 01:12:02', '2026-09-14 04:36:51'),
(297, 'WSD-20260914-TJZA', 'Silvia Eka Hermanda', 'P27904122089', NULL, 8, 'Sarjana Terapan Keperawatan', 2026, 'silviahermanda279@gmail.com', '089635957239', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/297/fa81bae5-6ee0-41d3-8f4c-c835a6290052.jpg', 'Screenshot_20260914_082804.jpg', 'image/jpeg', 591224, '2026-09-14 01:29:43', '2026-09-14 04:38:07', 9, NULL, NULL, NULL, NULL, 'tKgFBpcIQRgeAuDzAJBSEeaklRTA97h3Hy24IAqd', '2026-09-14 01:26:21', '2026-09-14 04:38:10'),
(298, 'WSD-20260914-NM9C', 'Alya Dhiya elhaq izzaty', 'P27903123198', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'alyadhiyaelhaqizaty@gmail.com', '087774927236', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/298/700200b6-1a07-4956-87af-5abd7c66a05b.png', 'IMG_3195.png', 'image/png', 327757, '2026-09-14 01:40:24', '2026-09-14 04:39:20', 9, NULL, NULL, NULL, NULL, 'bEk8ccdH56UvIPZe2QlmQxcoVcb6FJxdnUkUJ6Eo', '2026-09-14 01:38:04', '2026-09-14 04:39:23'),
(299, 'WSD-20260914-E9ZO', 'Siva Novianti', 'P27902123119', NULL, 2, 'D3 Kebidanan', 2026, 'sivanovianti25@gmail.com', '083873618286', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/299/714c9e40-7339-41f3-af60-63bd113a5669.png', 'IMG_9285.png', 'image/png', 123246, '2026-09-14 01:42:38', '2026-09-14 04:38:35', 9, NULL, NULL, NULL, NULL, 'Lr0BDR75St59S1b5N4Q983WDwur8TWv28gmYAqfL', '2026-09-14 01:39:09', '2026-09-14 04:38:38'),
(300, 'WSD-20260914-1OI9', 'Rianti Rut Maria Mahulae', 'P27904122082', NULL, 4, 'Sarjana Terapan Keperawatan Reguler', 2026, 'riantirutmaria5@gmail.com', '087818380638', NULL, 'Perempuan', 'All Size', 'Ukuran XXL', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/300/a0dd8581-5315-4dc2-b98a-a4e38390d7f6.jpg', 'IMG-20260914-WA0000.jpg', 'image/jpeg', 79388, '2026-09-14 01:58:49', '2026-09-14 09:40:29', 13, NULL, NULL, NULL, NULL, '6BeG2jpbxKifOOfq2JIYGHpWehAMCQLefUhxaTcV', '2026-09-14 01:57:22', '2026-09-14 09:40:34'),
(302, 'WSD-20260914-HB4K', 'Deliani Elyanti Irawan', 'P27903123107', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'delianiellyanti@gmail.com', '081524638779', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/302/4a062fe5-d048-45c0-add9-1f043b23a3ea.jpg', 'Screenshot_20260913_124250.jpg', 'image/jpeg', 282169, '2026-09-14 02:18:01', '2026-09-14 02:20:15', 9, NULL, NULL, NULL, NULL, 'yfB2kxMGAIvfvBrGDNV92FGBUKs6e9yLV6hQoccf', '2026-09-14 02:16:43', '2026-09-14 02:20:18'),
(303, 'WSD-20260914-0GUD', 'Windi Suci Widiana', 'P27903123242', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'suciwidianawindi@gmail.com', '085883378646', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/303/82a6d4ff-0ea9-4366-850e-81877d57a4e6.png', 'IMG_3271.png', 'image/png', 214604, '2026-09-14 02:28:00', '2026-09-14 06:23:47', 9, NULL, NULL, NULL, NULL, 'zBzC9roR0NRy3vXDeGKyV4kLCxnoxJn3JdyGZ0Yo', '2026-09-14 02:25:34', '2026-09-14 06:23:50'),
(304, 'WSD-20260914-MNTV', 'Yola Ramadanti', 'P27902123124', NULL, 2, 'D3 Kebidanan', 2026, 'yolaramdanti502@gmail.com', '083877960330', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/304/e6d0c7f0-311f-4d6e-8c58-36fcc9315aaf.png', 'IMG_8307.png', 'image/png', 217291, '2026-09-14 02:43:51', '2026-09-14 07:28:23', 9, NULL, NULL, NULL, NULL, 'Q77NZVlOsZ5Ti78gEaiLYEG4p49qgLdsLDazc1H0', '2026-09-14 02:41:26', '2026-09-14 07:28:26'),
(305, 'WSD-20260914-MIGO', 'Najwa Maulida', 'P27902123066', NULL, 2, 'D3 Kebidanan', 2026, 'najwamaulida230505@gmail.com', '085536638941', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/305/5e441356-0b24-4669-a1e5-3445dcfa7930.jpeg', 'IMG_2711.jpeg', 'image/jpeg', 239837, '2026-09-14 03:04:57', '2026-09-14 07:28:50', 9, NULL, NULL, NULL, NULL, 'WawHo69NNerXmSUq2h84VZz5NiqPLJaxdgwqAoec', '2026-09-14 03:04:27', '2026-09-14 07:28:53'),
(306, 'WSD-20260914-DI8B', 'SITI SOLIHATUL AWALIAH', 'P27902123118', NULL, 2, 'D3 Kebidanan', 2026, 'sitisolihatulawaliah@gmail.com', '089524566675', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/306/6833f78f-1afb-4815-a380-99e5f81b5a21.jpg', 'Screenshot_20260914_101331_DANA.jpg', 'image/jpeg', 552942, '2026-09-14 03:14:18', '2026-09-14 07:29:19', 9, NULL, NULL, NULL, NULL, 'Xfzs80GSUZXN0UdqEpRzXfcKE34MOIV0HwFryLV5', '2026-09-14 03:11:28', '2026-09-14 07:29:22'),
(308, 'WSD-20260914-BNGB', 'Wulan Molydina', 'P27904122049', NULL, 4, 'Sarjana Terapan Keperawatan Reguler', 2026, 'wulanmolydina4@gmail.com', '089630637797', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/308/f796c29e-b78e-417b-bc4b-28a0759cfe0e.png', 'IMG_4805.png', 'image/png', 403617, '2026-09-14 03:38:16', '2026-09-14 09:39:23', 13, NULL, NULL, NULL, NULL, '6731KIHm4ltq0eZpBf5GTduYJqYpIvcxUnGhVd0v', '2026-09-14 03:36:42', '2026-09-14 09:39:27'),
(309, 'WSD-20260914-KP6O', 'Naila Nazma Syahmina', 'P27901123030', NULL, 1, 'D3 Keperawatan', 2026, 'nailanazma1605@gmail.com', '089658846824', NULL, 'Perempuan', 'All Size', 'Ukuran L', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/309/92370839-b6cc-4173-baf8-eb43c517ebb9.jpeg', '506e4b7a-66bf-42a0-84b4-ccf0db33b59c.jpeg', 'image/jpeg', 306376, '2026-09-14 03:44:56', '2026-09-14 09:38:28', 13, NULL, NULL, NULL, NULL, 'Q20Lz0XDkzDRyERtq8mv6YNMF3UtNNvlCtMPoRzd', '2026-09-14 03:36:50', '2026-09-14 09:38:31'),
(310, 'WSD-20260914-ZHI9', 'Siti Fadmina Nur Permata', 'P27904122041', NULL, 4, 'Sarjana Terapan Keperawatan Reguler', 2026, 'fadmiinapermata@gmail.com', '081219441108', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/310/f4950db2-db87-4c03-8dba-f4c732fa994e.png', 'IMG_4688.png', 'image/png', 279627, '2026-09-14 03:50:42', '2026-09-14 07:31:15', 9, NULL, NULL, NULL, NULL, 'VBrN39rkrx7o689IpuCTxQjFdiSWSWkgHyEOcXxA', '2026-09-14 03:47:45', '2026-09-14 07:31:18'),
(311, 'WSD-20260914-CBGI', 'Niluh Ayu Dwi Cahyani', 'P27904122027', NULL, 8, 'Sarjana Terapan Keperawatan', 2026, 'niluhadc25@gmail.com', '082129539692', NULL, 'Perempuan', 'All Size', 'Ukuran M', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/311/0028844c-7db3-42f4-af83-27cf0ea1a8a4.png', 'reRabeipt_58672_07_10_11_30_19.png', 'image/png', 453803, '2026-09-14 04:18:01', '2026-09-14 07:31:43', 9, NULL, NULL, NULL, NULL, '96zsaOdOiBSmvNF3DKfTQEFroYwNtCPPZ1tyfi2D', '2026-09-14 04:04:25', '2026-09-14 07:31:45'),
(312, 'WSD-20260914-HG4T', 'Nazlah Iptihar', 'P27902123107', NULL, 2, 'D3 Kebidanan', 2026, 'nazlahiftihar28@gmail.com', '081212917480', NULL, 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NTmZxyRXCuZSktwtjxlYxzLoWl5QD4pwAQyaAUZQ', '2026-09-14 04:08:14', '2026-09-14 04:08:14'),
(313, 'WSD-20260914-7SHH', 'Dhelia Nishfa Nahira', 'P27902123010', NULL, 2, 'D3 Kebidanan', 2026, 'dhelianishfanahira@gmail.com', '088297469567', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/313/b87ed727-eddd-4f08-bf16-0ae445ada3e4.png', 'IMG_2919.png', 'image/png', 283289, '2026-09-14 04:09:02', '2026-09-14 07:32:43', 9, NULL, NULL, NULL, NULL, 'y85rMWhhkV6fkesCwnIMiSwmPgq6dw9MVzxo3duv', '2026-09-14 04:08:40', '2026-09-14 07:32:45'),
(314, 'WSD-20260914-LXTG', 'Delfia Maharani', 'P27903123058', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'delfiamarani@gmail.com', '083896997061', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/314/26e1d755-9559-4ae7-ac71-c87e21541b1e.jpg', 'Screenshot_20260914_111142_DANA.jpg', 'image/jpeg', 517131, '2026-09-14 04:13:34', '2026-09-14 04:18:47', 9, NULL, NULL, NULL, NULL, 'PMI5SKIxgGiHaHvs3Cg6D4UAvjxxYkvTRf4tczP0', '2026-09-14 04:11:05', '2026-09-14 04:18:50'),
(315, 'WSD-20260914-N2P5', 'Siti Nurul Aina', 'P27902123116', NULL, 2, 'D3 Kebidanan', 2026, 'sitinurulaina88467@gmail.com', '085773521097', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/315/c6673ca2-6a0f-4354-8f4b-78fc6ae54be0.jpeg', '5b1f5a3d-0805-4178-a29a-22471fb63c79.jpeg', 'image/jpeg', 210066, '2026-09-14 04:20:09', '2026-09-14 07:46:06', 9, NULL, NULL, NULL, NULL, 'YPEta8wgFnqOXbWiPHYJ3aQDPSAbbWpnbuyBT2AU', '2026-09-14 04:12:59', '2026-09-14 07:46:10'),
(316, 'WSD-20260914-OUTV', 'Santi paraswati', 'P27904122037', NULL, 8, 'Sarjana Terapan Keperawatan', 2026, 'santiparaswati1@gmail.com', '089528992163', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/316/edd2f31a-6c9f-4832-a249-ac5cb3c49b59.jpg', 'IMG-20260914-WA0027.jpg', 'image/jpeg', 74823, '2026-09-14 04:15:27', '2026-09-14 07:33:26', 9, NULL, NULL, NULL, NULL, 'fmTZ0YY2u7U9w1GvJnXjjwyOfiYPQFlTeLMcd7ou', '2026-09-14 04:13:04', '2026-09-14 07:33:29'),
(317, 'WSD-20260914-NYLK', 'Salsabila Azahra', 'P27903123138', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'salsabilaazahra0805@gmail.com', '081915717188', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/317/15395c23-66a6-45fc-9fc4-d8508eebf78b.png', 'IMG_0913.png', 'image/png', 172714, '2026-09-14 04:21:09', '2026-09-14 04:23:56', 9, NULL, NULL, NULL, NULL, 'fxw6LYRnF8AmFPIhgHqPQnBBPuobuFedr2pLdoJE', '2026-09-14 04:14:57', '2026-09-14 04:23:59'),
(318, 'WSD-20260914-8WGN', 'Alfia Yusi Damayanti', 'P27902123006', NULL, 2, 'D3 Kebidanan', 2026, 'alfiayusi35@gmail.com', '081586675546', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/318/c02494c4-7f04-4375-a685-b343524ab5ff.jpg', 'Screenshot_2026-09-14-11-19-06-70_78ed797590cf9a33dfc5e341b7a9537a.jpg', 'image/jpeg', 296627, '2026-09-14 04:19:41', '2026-09-14 07:33:51', 9, NULL, NULL, NULL, NULL, 'I0hZLSv6fM2kjWEzNqRPfi1Z4u0yqASxm6GmHBVY', '2026-09-14 04:16:01', '2026-09-14 07:33:53'),
(319, 'WSD-20260914-ADJL', 'Ayu Nur Rahayu', 'P27903123154', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'rahayuayunur@gmail.com', '081212139460', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/319/dd1a7a21-2524-4825-b9a9-4156c4b39177.png', 'IMG_0458.png', 'image/png', 202331, '2026-09-14 04:23:08', '2026-09-14 07:47:04', 9, NULL, NULL, NULL, NULL, 'JZ2ERWuvsv327j4akKGgqTN4uoVqT6klpXoHUapN', '2026-09-14 04:21:18', '2026-09-14 07:47:08'),
(320, 'WSD-20260914-JMLC', 'Rosita Sazwana', 'P27903123137', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'rsazwana@gmail.com', '081511048601', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/320/6b6396ff-302b-4a8e-9de4-b9d882772b78.jpg', 'IMG-20260914-WA0009.jpg', 'image/jpeg', 56753, '2026-09-14 04:28:24', '2026-09-14 07:49:00', 9, NULL, NULL, NULL, NULL, 'gAc1R1eGRLmTB3an4T4RUES8PEOvyPClrhaCpeFa', '2026-09-14 04:21:45', '2026-09-14 07:49:02'),
(322, 'WSD-20260914-8YUH', 'Shifa Nuraini', 'P27903123089', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'shifanuraini05@gmail.com', '087868857484', NULL, 'Perempuan', 'All Size', 'Mahasiswi Poltekkes Banten jurusan TLM', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/322/a534716e-46db-4bff-b8ad-3f2a4de3b352.png', 'IMG_0920.png', 'image/png', 338749, '2026-09-14 04:24:32', '2026-09-14 07:49:57', 9, NULL, NULL, NULL, NULL, 'uTqs1d1Jf5EVwsRxyrfYtV6aPLHSmNWIIbdO4lAJ', '2026-09-14 04:24:11', '2026-09-14 07:50:00'),
(325, 'WSD-20260914-GHAM', 'Maula Meilani', 'P27903123123', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'meilanimaula@gmail.com', '083841350890', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/325/016f8708-3fe6-40ca-ac49-f76e143e7ce9.jpg', 'pembayaran toga maula meilani 2026.jpg', 'image/jpeg', 232315, '2026-09-14 04:32:47', '2026-09-14 07:50:27', 9, NULL, NULL, NULL, NULL, '3eKGmREv5htcCOhcPoh03Sr0ueuZz8JiPRQSA8Ae', '2026-09-14 04:31:22', '2026-09-14 07:50:30'),
(326, 'WSD-20260914-5NPC', 'Amanda Fikri', 'P27903123053', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'amndaaaa002@gmail.com', '082124257964', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/326/12428606-4991-4459-81c9-a33c7f1b29ae.png', 'IMG_6898.png', 'image/png', 264133, '2026-09-14 04:32:21', '2026-09-14 07:51:20', 9, NULL, NULL, NULL, NULL, 'ojY5J8kTZFEJsYxI4ZZPyimPtaGHh3tR3UZYVFtA', '2026-09-14 04:31:50', '2026-09-14 07:51:23'),
(327, 'WSD-20260914-LCNI', 'Julia Ariani', 'P27903123216', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'juliaariani107@gmail.com', '085894740795', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/327/c08349e4-b207-4d44-afcb-6b43f6f5fad1.jpg', 'IMG-20260914-WA0009.jpg', 'image/jpeg', 59419, '2026-09-14 04:40:02', '2026-09-14 04:44:31', 9, NULL, NULL, NULL, NULL, 'CMDc6HT7k5FYjZPlQFWxYUuGjoK2Gj1i8MKG3sB9', '2026-09-14 04:33:21', '2026-09-14 06:18:17'),
(328, 'WSD-20260914-RHJC', 'Rizkha Putri Azzahra', 'P27903123230', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'rizkhap716@gmail.com', '0895405023881', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/328/1f1139ee-c05d-4979-9f42-962ddc3e98ee.jpg', 'Screenshot_2026-09-14-11-36-36-993_id.dana.jpg', 'image/jpeg', 556544, '2026-09-14 04:37:55', '2026-09-14 04:41:10', 9, NULL, NULL, NULL, NULL, 'bGfVemG5ecIkiWUOL569g2fXJMijpbE9KMG6om2K', '2026-09-14 04:34:22', '2026-09-14 04:41:21'),
(329, 'WSD-20260914-CKDJ', 'Rindiani', 'P27903123228', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'rindi5047@gmail.com', '085778237015', NULL, 'Perempuan', 'All Size', '-', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/329/76b714b6-9422-435d-a028-06833f1513fe.jpeg', 'IMG_0507.jpeg', 'image/jpeg', 262748, '2026-09-14 04:35:21', '2026-09-14 05:59:20', 13, NULL, NULL, NULL, NULL, 'aQwQytKUxFfKZkGtZ06DvY7RO1cbKW5wOsmCgBGH', '2026-09-14 04:34:27', '2026-09-14 05:59:24'),
(330, 'WSD-20260914-10V0', 'Muhammad Dillal Putra Aidiena', 'P27903123027', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'dilalaidiena@gmail.com', '083170026805', NULL, 'Laki-laki', 'All Size', 'tb saya 180cm bb saya 95kg', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/330/78ce5009-9588-436e-8824-5e554951fee2.png', 'IMG_2598.png', 'image/png', 198138, '2026-09-14 04:35:58', '2026-09-14 06:00:03', 13, NULL, NULL, NULL, NULL, 'Tb1Bzd5Y4cGO3f4BduAknnE4niHx60Suq5YtXhqE', '2026-09-14 04:35:32', '2026-09-14 06:00:08'),
(331, 'WSD-20260914-4BMD', 'Fitia Ramadani', 'P27903123064', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'fitiaramadani15@gmail.com', '089527024569', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/331/05693aed-3ebc-49c4-a947-c6b1059ffab2.png', 'IMG_7389.png', 'image/png', 236455, '2026-09-14 04:38:57', '2026-09-14 05:38:32', 13, NULL, NULL, NULL, NULL, '85IpHEylFnbpLitZGW8JYKN8VmHunDQ509NMmFwv', '2026-09-14 04:38:35', '2026-09-14 05:38:37'),
(332, 'WSD-20260914-FRPA', 'Siti Maura Fauza', 'P27903123092', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'maurafauza@gmail.com', '0895345609371', NULL, 'Perempuan', 'All Size', 'Ukuran S', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/332/e9dfd27c-18c9-41eb-8e68-62cdf527ad6c.jpeg', 'IMG_9281.jpeg', 'image/jpeg', 157323, '2026-09-14 04:41:16', '2026-09-14 05:37:40', 13, NULL, NULL, NULL, NULL, 'Tcvxd1gPvSfErGpfTi65fkCusGj50cmaiQr9CHdg', '2026-09-14 04:39:35', '2026-09-14 05:37:44'),
(333, 'WSD-20260914-QTEV', 'Muhamad Zaky Mubarok', 'P27903123126', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'zakymubarok02092005@gmail.com', '088976096668', NULL, 'Laki-laki', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/333/e3e57009-2a6d-4f96-85ad-1eb6bcda3624.jpg', 'IMG-20260914-WA0004.jpg', 'image/jpeg', 78291, '2026-09-14 04:43:12', '2026-09-14 05:02:17', 9, NULL, NULL, NULL, NULL, 'z1XwJgboLDpSLUbD6WzigzaPezBizXUJbgavSHrK', '2026-09-14 04:39:43', '2026-09-14 05:02:20'),
(334, 'WSD-20260914-QHO2', 'Nazwa Fauziyyah', 'P27903123223', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'fauziyyahnazwa30@gmail.com', '085282033801', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/334/8cc2be95-9c24-4c04-bc7e-5ae54f2bc828.jpg', 'IMG-20260914-WA0016.jpg', 'image/png', 120110, '2026-09-14 04:43:37', '2026-09-14 06:00:50', 13, NULL, NULL, NULL, NULL, 'ISrEPG1gw0NV4cmrvm83KtpaQji0B6sNMyPctZ9f', '2026-09-14 04:39:51', '2026-09-14 06:00:54'),
(335, 'WSD-20260914-OUIT', 'Avrindita Lailani', 'P27903123106', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'avrindita48@gmail.com', '089508342478', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/335/cd683c33-d4a6-4b05-8b9e-38c14c88566d.jpg', 'Sen14September20261148.jpg', 'image/jpeg', 847498, '2026-09-14 04:50:13', '2026-09-14 05:35:11', 13, NULL, NULL, NULL, NULL, 'W03GjIhsBDRwvzn1jPJPvpRYLcQyuDR5eQCkFGyL', '2026-09-14 04:49:45', '2026-09-14 05:35:16'),
(336, 'WSD-20260914-DGXZ', 'Fauziyah Dea Susila', 'P27903123209', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'fauziyahdea05@gmail.com', '081383767481', NULL, 'Perempuan', 'All Size', '-', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/336/d97374d9-2de5-4d9d-928e-921cc226089a.jpg', 'Screenshot_2026-09-14-11-55-23-13_78ed797590cf9a33dfc5e341b7a9537a.jpg', 'image/jpeg', 284669, '2026-09-14 04:56:31', '2026-09-14 05:36:11', 13, NULL, NULL, NULL, NULL, 'NEKrARrDMe6eIbqkhVTryxes1K6ngsYJDzFMhf4a', '2026-09-14 04:50:27', '2026-09-14 05:36:16'),
(337, 'WSD-20260914-M1ZL', 'Dewi Wulansari', 'P27902123009', NULL, 2, 'D3 Kebidanan', 2026, 'dewiwulansari2101@gmail.com', '085774600388', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/337/dd2765f1-bb69-4739-81a2-c0cb6a35cf38.jpg', 'IMG-20260914-WA0137.jpg', 'image/jpeg', 80794, '2026-09-14 05:09:51', '2026-09-14 05:33:33', 13, NULL, NULL, NULL, NULL, 'p5OLHDvZA3tLVz53qW6X6zWp5P1cJAH0rNqf9X6p', '2026-09-14 04:50:29', '2026-09-14 05:33:38'),
(339, 'WSD-20260914-QWO8', 'FITRIA KUSUMA WARDANI', 'P27901123069', NULL, 1, 'D3 Keperawatan', 2026, 'fitriakusumawardani33@gmail.com', '085821628615', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/339/ec6825dd-a200-4ae0-b5c1-1d93e001357f.jpeg', '3ec2ed84-a1a2-4dbd-b285-32c4b6a85939.jpeg', 'image/jpeg', 98654, '2026-09-14 04:54:50', '2026-09-14 04:56:06', 9, NULL, NULL, NULL, NULL, 'RHd9Bm58S3dxsCeZtZDsVeemoPnFCnXTrqosXIlG', '2026-09-14 04:54:28', '2026-09-14 04:56:09'),
(340, 'WSD-20260914-X9RE', 'Nurhasanah', 'P27904122029', NULL, 8, 'Sarjana Terapan Keperawatan', 2026, 'nurh60876@gmail.com', '085691946953', NULL, 'Perempuan', 'All Size', 'Ukuran S', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/340/196d5711-20cf-4dc2-8848-444f952bc82e.jpg', 'IMG-20260914-WA0012.jpg', 'image/jpeg', 85544, '2026-09-14 05:01:03', '2026-09-14 09:35:50', 13, NULL, NULL, NULL, NULL, 'TIGAzh5UGTIveJSKJaxVXljn4Z2K0S1L0bocLstj', '2026-09-14 04:56:36', '2026-09-14 09:35:54'),
(341, 'WSD-20260914-FTBW', 'Davva Awalia Salsabil Putri', 'P27902123089', NULL, 2, 'D3 Kebidanan', 2026, 'davvasalsabil@gmail.com', '085220990582', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/341/17410f2c-7bb1-48a4-8f86-932b8eac0f75.png', 'IMG_1071.png', 'image/png', 294812, '2026-09-14 05:03:15', '2026-09-14 05:23:28', 13, NULL, NULL, NULL, NULL, 'FbJNE8bxhxDYJ7NiHLPNICD8hDjhxddzuIotYDj1', '2026-09-14 05:01:33', '2026-09-14 06:56:11'),
(342, 'WSD-20260914-B9MD', 'ASTRID VINA ALVIANI', 'P27904122054', NULL, 8, 'Sarjana Terapan Keperawatan', 2026, 'astridvina6@gmail.com', '087880203670', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/342/868f2388-0f44-4376-b7a2-1b96b3171b31.jpg', 'Sen14September20261206.jpg', 'image/jpeg', 770974, '2026-09-14 05:08:31', '2026-09-14 05:21:09', 13, NULL, NULL, NULL, NULL, 'H59MnPNXYYf17FCyF5FmxCngI7rTWySk2WrSTubm', '2026-09-14 05:02:53', '2026-09-14 06:56:29'),
(343, 'WSD-20260914-KCWW', 'Putri Fajriah Agustina', 'P27903123034', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2023, 'ptrgstn98@gmail.com', '085817536870', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/343/59886cd9-deab-4737-a47c-102356d94818.jpg', 'Screenshot_20260914_120701.jpg', 'image/jpeg', 159758, '2026-09-14 05:12:04', '2026-09-14 06:03:01', 13, NULL, NULL, NULL, NULL, 'GIAkshheE5Mb7xgDrNtbdsSBePsXiBDl9mpUB6QZ', '2026-09-14 05:11:30', '2026-09-14 06:03:06'),
(344, 'WSD-20260914-TPEZ', 'Dika Husaini Suheri', 'P27903123205', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'dikahusaini7@gmail.com', '082297055886', NULL, 'Laki-laki', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/344/b89cf45b-832f-486f-b72b-5d5b7bcdf9bd.jpg', 'Transaksi_BCAmobile-20260914-121906.jpg', 'image/jpeg', 412344, '2026-09-14 05:20:13', '2026-09-14 08:06:43', 9, NULL, NULL, NULL, NULL, 'oSjSwr3n185kWaFrGa7zPfx0t3OGaqaTBoLfM5cx', '2026-09-14 05:16:14', '2026-09-14 08:06:46'),
(346, 'WSD-20260914-M8FZ', 'Alda legi Pratama', 'P27902123005', NULL, 2, 'D3 Kebidanan', 2026, 'itsme.yla05@gmail.com', '087892841882', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/346/e4c0a87f-e969-4fda-8933-7d2b5523bb66.jpg', 'Screenshot_2026-09-13-08-44-54-46.jpg', 'image/jpeg', 183688, '2026-09-14 05:20:53', '2026-09-14 06:03:33', 13, NULL, NULL, NULL, NULL, 'UFZx3E0H7SfZkRTX3oRIg406DdYCGTo2prr7UfP6', '2026-09-14 05:19:31', '2026-09-14 06:03:37'),
(347, 'WSD-20260914-NATO', 'Safiratun Nisa', 'P27902122038', NULL, 2, 'D3 Kebidanan', 2026, 'safiratunnisa46@gmail.com', '089668484124', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/347/9566501c-e84b-4829-a107-0d48a141b05b.png', 'Screenshot_20260914-122719.png', 'image/png', 90508, '2026-09-14 05:27:48', '2026-09-14 09:35:15', 13, NULL, NULL, NULL, NULL, 'Wmf6DyhSYtl9ejZ8BwgKGZhLiebwNSrgl0GKN0QZ', '2026-09-14 05:26:17', '2026-09-14 09:35:18'),
(348, 'WSD-20260914-N97O', 'Aliyah Laksmi Santosa', 'P27904122051', NULL, 8, 'Sarjana Terapan Keperawatan', 2026, 'alylaksmi@gmail.com', '082295786237', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/348/5c9275fd-63d3-4439-8ae4-754349c4b125.jpg', 'IMG-20260914-WA0024.jpg', 'image/jpeg', 78105, '2026-09-14 05:41:38', '2026-09-14 09:34:17', 13, NULL, NULL, NULL, NULL, 'KLVxY73jQmjOndfiFe1XeLlneEj2taZZRVruxGGe', '2026-09-14 05:28:24', '2026-09-14 09:34:20'),
(349, 'WSD-20260914-JQDC', 'Restu Putri Anggraeni', 'P27903123036', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'rstptrrr@gmail.com', '087773114421', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/349/6e144370-e436-477f-a9f3-91cd8ee3643d.jpeg', 'WhatsApp Image 2026-09-14 at 12.39.13.jpeg', 'image/jpeg', 92339, '2026-09-14 05:39:56', '2026-09-14 09:33:38', 13, NULL, NULL, NULL, NULL, 'JSo5otF8JgklKPfudrgElsxpEfyCwbc7mTYv3Gvu', '2026-09-14 05:36:36', '2026-09-14 09:33:42'),
(350, 'WSD-20260914-XPHU', 'Maysya Hani Handayani', 'P27903123124', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'maysyahani7282@gmail.com', '085216157203', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/350/ade23add-6e12-4af7-9140-fe84ae09717c.jpg', 'Screenshot_20260914-123936.jpg', 'image/jpeg', 286078, '2026-09-14 05:40:20', '2026-09-14 09:32:51', 13, NULL, NULL, NULL, NULL, 'DC2cO8EfEfuQkFKveoUpcmUqV3sxrooRX2HPdIbp', '2026-09-14 05:38:36', '2026-09-14 09:32:55'),
(351, 'WSD-20260914-WRM7', 'Anika Putri', 'P27901123057', NULL, 1, 'D3 Keperawatan', 2026, 'anikaputri919@gmail.com', '081299296480', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/351/0196ae83-f3af-4111-960e-f4c4b0823e09.jpg', 'Screenshot_2026-09-14-12-45-24-69_121d0782f1cd8474b48c9b27865007fd.jpg', 'image/jpeg', 143274, '2026-09-14 05:47:38', '2026-09-14 09:32:03', 13, NULL, NULL, NULL, NULL, 'IVrxGCajgaW2fAODYFSogkY0CXwnRo7VUwzonhKL', '2026-09-14 05:47:09', '2026-09-14 09:32:06'),
(352, 'WSD-20260914-ZV7N', 'Mutiara Salsabila', 'P27903123028', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'mtarasalsabila@gmail.com', '085864112995', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/352/31f3899e-fe86-4807-aeee-e8c2259caccc.jpg', 'Screenshot_20260914_125341_DANA.jpg', 'image/jpeg', 237722, '2026-09-14 05:56:26', '2026-09-14 06:55:35', 13, NULL, NULL, NULL, NULL, '3qG3Xp6vXzYNfkUmAhSf45WA5tobqSPW4cEQhC8k', '2026-09-14 05:51:13', '2026-09-14 06:55:40'),
(353, 'WSD-20260914-55OW', 'NAZWA AL HIDAYATI', 'P27902123067', NULL, 2, 'D3 Kebidanan', 2026, 'nazwaalhidayati@gmail.com', '083876390847', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/353/7856468d-8d39-4cb2-90ad-bc0f828c9b12.png', 'IMG_0794.png', 'image/png', 196867, '2026-09-14 06:01:23', '2026-09-14 06:19:57', 9, NULL, NULL, NULL, NULL, 'pD0YKS29w6mqVN9u07SW6k9ZtM4Oat4279IuWAN8', '2026-09-14 05:53:04', '2026-09-14 06:20:00'),
(355, 'WSD-20260914-QKW2', 'NADA NUR FATIKHAKH', 'P27903123076', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'nadanurfatikhah@gmail.com', '0895322509183', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/355/786c4a46-0d97-4bde-90f8-21025bdadb0a.jpg', 'Screenshot_20260914_130825_BRImo.jpg', 'image/jpeg', 664285, '2026-09-14 06:09:23', '2026-09-14 07:33:12', 13, NULL, NULL, NULL, NULL, '1RCKVn0nRBLMXMC7Q2Go9YC8CUN942xxT9eHTmIL', '2026-09-14 06:09:02', '2026-09-14 07:33:16'),
(356, 'WSD-20260914-P5AY', 'ALSA NUR ALIFAH', 'P27903123150', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'alsanur3015@gmail.com', '0895635323935', NULL, 'Perempuan', 'All Size', 'Uk. S atau M', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/356/26a2d4bc-5aeb-47d4-a318-f5ce244f3f29.jpg', 'Screenshot_20260914_130639_BCA mobile.jpg', 'image/jpeg', 286190, '2026-09-14 06:12:47', '2026-09-14 07:47:29', 13, NULL, NULL, NULL, NULL, 'qGMAYnBkeaUORVP4sCA9Dply9XRKjt7FzeBw3TSF', '2026-09-14 06:09:56', '2026-09-14 07:47:33'),
(357, 'WSD-20260914-CYPZ', 'Siti A\'afiyah', 'P27903123140', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'sitiaafiyah3ctlm@gmail.com', '085717259092', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/357/a062d2aa-5416-4a68-a640-ab14b9515a1f.jpg', 'IMG-20260914-WA0004.jpg', 'image/jpeg', 535040, '2026-09-14 06:47:56', '2026-09-14 09:30:23', 13, NULL, NULL, NULL, NULL, 'JSbxVayGTeWy6QEETeTsboMUjHUJQ8nzi6zLof5R', '2026-09-14 06:44:19', '2026-09-14 09:30:27'),
(358, 'WSD-20260914-1DY0', 'Candra Dwi Prasetya', 'P27903123203', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'candradwip810@gmail.com', '089618859149', NULL, 'Laki-laki', 'All Size', 'TB: 150\r\nBB: 45\r\nUk baju: M', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/358/7c307d4c-9c2e-45cd-85ff-614892e260bf.jpg', '1789368818541.jpg', 'image/jpeg', 471458, '2026-09-14 06:53:57', '2026-09-14 08:06:38', 13, NULL, NULL, NULL, NULL, '88GzRjklXAY6bRZ9GzVqYRc1wsZqbW8dE5VfOt1S', '2026-09-14 06:50:55', '2026-09-14 08:06:44'),
(359, 'WSD-20260914-XWHV', 'Tiara Kania Dewi', 'P27902123040', NULL, 2, 'D3 Kebidanan', 2026, 'tiaratiara63260@gmail.com', '838 0579 2193', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/359/578a1c64-f2ab-4a7f-9e66-4985186a2a41.jpg', 'Transaksi_BCAmobile-20260914-140800.jpg', 'image/jpeg', 281111, '2026-09-14 07:08:27', '2026-09-14 08:00:25', 13, NULL, NULL, NULL, NULL, 'LpbkTi4EnvHMzSi4qIyR1yxIY2H4NywIaCWB4w3B', '2026-09-14 07:00:04', '2026-09-14 08:00:30'),
(360, 'WSD-20260914-Q9UZ', 'Susan Nurmeida', 'P27901123101', NULL, 1, 'D3 Keperawatan', 2026, 'susannurmeida506@gmail.com', '083172206091', NULL, 'Perempuan', 'All Size', 'Uk m ya ka kl bisa soalnya saya bb 50 tb 150 pae allsize tkt jd gamis, terimakasih 🙏🏻', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/360/2c6da4fe-2143-4966-b9cb-5d9552e7d839.jpg', 'image.jpg', 'image/jpeg', 2976283, '2026-09-14 07:11:16', '2026-09-14 09:01:39', 13, NULL, NULL, NULL, NULL, 'chE3Rnf8NJUVUwG79IwTVDJjYm2x2dLFwt6igjH0', '2026-09-14 07:07:26', '2026-09-14 09:01:43'),
(361, 'WSD-20260914-S3VD', 'Nadia Dwi Mulya', 'P27903123221', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'nadiadwimulya430@gmail.com', '082122722024', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/361/4e970329-c8d6-41e4-a86e-e92cea7f3940.jpg', 'IMG-20260914-WA0007.jpg', 'image/jpeg', 56360, '2026-09-14 07:08:22', '2026-09-14 07:55:01', 13, NULL, NULL, NULL, NULL, 'bDnUmwLxPV9OAheGrohd4rx94XCUw0RMAYUuFY9z', '2026-09-14 07:07:35', '2026-09-14 07:55:07'),
(363, 'WSD-20260914-E5BD', 'PUTRI SUSANTI', 'P27902123152', NULL, 2, 'D3 Kebidanan', 2026, 'putrisusanti983@gmail.com', '087709109288', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/363/93915984-7f66-482d-b394-76785b8352fd.png', 'C2973DE3-728F-4DB1-A18E-E526B771BC89.png', 'image/png', 259357, '2026-09-14 09:11:06', '2026-09-14 09:15:00', 9, NULL, NULL, NULL, NULL, '0l3ZWC44DyEuCnktIgbwv6WT2XSR7lhaprJW0Zhr', '2026-09-14 07:18:04', '2026-09-14 09:15:06'),
(364, 'WSD-20260914-UDE3', 'RISMA MAULIDYA', 'P27902123153', NULL, 2, 'D3 Kebidanan', 2026, 'rismamaulidya79@gmail.com', '081296359422', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/364/dbe916a7-6d5e-4afa-a029-59f54d4c81e6.jpeg', 'IMG_7427.jpeg', 'image/jpeg', 2008742, '2026-09-14 07:27:11', '2026-09-14 07:55:39', 13, NULL, NULL, NULL, NULL, 'XZlpirNcRD0beUjoEGF1bjtL8EWKdvLsVAmpQ1sy', '2026-09-14 07:21:19', '2026-09-14 07:55:43');
INSERT INTO `graduation_toga_orders` (`id`, `order_code`, `student_name`, `nim`, `nik`, `study_program_id`, `study_program_name`, `graduation_year`, `email`, `phone`, `transfer_sender_name`, `gender`, `toga_size`, `size_note`, `quantity`, `status`, `payment_status`, `payment_amount`, `payment_method`, `payment_proof_path`, `payment_proof_original_name`, `payment_proof_mime`, `payment_proof_size`, `payment_uploaded_at`, `payment_verified_at`, `payment_verified_by`, `payment_rejected_at`, `payment_rejected_by`, `admin_note`, `rejection_note`, `public_token`, `created_at`, `updated_at`) VALUES
(365, 'WSD-20260914-C9MT', 'Nurul Mahmudah', 'P27902123151', NULL, 2, 'D3 Kebidanan', 2026, 'nurulmahmudah810@gmail.com', '081221906027', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/365/4f677031-bbef-4370-9204-e076d74312e8.jpg', 'IMG_Mon Sep 14 19_48_07 GMT+07_00 2026.jpg', 'image/jpeg', 146682, '2026-09-14 12:55:16', '2026-09-14 13:20:51', 9, NULL, NULL, NULL, NULL, 'eGi0Ilavcky5nZXZ93qN9U5QVS7qFM2l4RJGCyLF', '2026-09-14 07:23:32', '2026-09-14 13:20:54'),
(366, 'WSD-20260914-AGOP', 'Salwa Widiastri Nindia Putri', 'P2793123139', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'salwawidiastri29@gmail.com', '85881023239', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/366/b54b196a-81a8-4f1f-976e-1895301f1c72.png', 'IMG_6159.png', 'image/png', 134551, '2026-09-14 07:56:24', '2026-09-14 09:07:37', 13, NULL, NULL, NULL, NULL, 'zqgXdXTnxTyXiZHUkeITPd6Omh2W55vKwDzkQq4i', '2026-09-14 07:54:48', '2026-09-14 09:07:41'),
(367, 'WSD-20260914-WVMP', 'Eka almira Safitri', 'P27902123134', NULL, 2, 'D3 Kebidanan', 2026, 'ekaalmirasafitri05@gmail.com', '082112170510', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/367/72be8041-38c8-4d41-996d-f0f3a0345d4e.png', 'IMG_9875.png', 'image/png', 352542, '2026-09-14 08:07:08', '2026-09-14 09:25:05', 13, NULL, NULL, NULL, NULL, 'Egx2MSF7gr0MzMlt8o0tl2SouOTFYmovERX11Nd7', '2026-09-14 08:06:36', '2026-09-14 09:25:09'),
(368, 'WSD-20260914-UR2N', 'Ninis Lusiyana', 'P27902123110', NULL, 2, 'D3 Kebidanan', 2026, 'ninislusiyana05@gmail.com', '083848243668', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/368/04d165af-4826-44cf-8fd8-c8a18564ee20.jpg', 'IMG_Mon Sep 14 15_26_59 GMT+07_00 2026.jpg', 'image/jpeg', 229286, '2026-09-14 08:30:01', '2026-09-14 09:24:56', 10, NULL, NULL, NULL, NULL, 'ClbmcvfK3hHHGxJiE1p9kRdqVJ9EfbmRQGuoMN17', '2026-09-14 08:20:41', '2026-09-14 13:34:21'),
(369, 'WSD-20260914-5GJY', 'Wanda Rahmanda', 'P27903123240', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'wandarahmanda2@gmail.com', '085881364536', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/369/9c4a115a-84f4-4692-b3bd-ee3969dc1e98.jpeg', 'IMG_1647.jpeg', 'image/jpeg', 136419, '2026-09-14 08:36:15', '2026-09-14 09:23:49', 13, NULL, NULL, NULL, NULL, 'ZyQ8mNzsNzaWtHiCMKsCBuc2SHIKXjI3nJLeovRq', '2026-09-14 08:23:14', '2026-09-14 09:23:54'),
(370, 'WSD-20260914-1KKM', 'Herliah', 'P27902123098', NULL, 2, 'D3 Kebidanan', 2026, 'herliahliyah@gmail.com', '085894193317', NULL, 'Perempuan', 'All Size', 'Mahasiswa D3 kebidanan', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/370/183cc1bb-fbd1-4254-a908-cbe7dd0f8086.jpg', 'IMG-20260914-WA0087.jpg', 'image/jpeg', 72400, '2026-09-14 08:31:01', '2026-09-14 09:20:42', 13, NULL, NULL, NULL, NULL, 'b5DCBDeuR4goUuvcS7gqg5bXnn6gZxb6TDsXK9qN', '2026-09-14 08:30:05', '2026-09-14 09:20:45'),
(371, 'WSD-20260914-PEBE', 'Aini Safitri', 'P27904122050', NULL, 8, 'Sarjana Terapan Keperawatan', 2026, 'ainisafitri18@gmail.com', '082110798345', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/371/71bb7886-af6f-4be4-b818-69257bd7f3fe.png', 'IMG_4284.png', 'image/png', 1110036, '2026-09-14 08:32:01', '2026-09-14 09:16:10', 13, NULL, NULL, NULL, NULL, 'Okk2sgqoNdIke6LFlOwjK7T7CHetoiXTecBNvNgF', '2026-09-14 08:30:30', '2026-09-14 09:16:15'),
(372, 'WSD-20260914-G957', 'Keysa Azka Muchlisina', 'P27904122063', NULL, 8, 'Sarjana Terapan Keperawatan', 2026, 'keysaazkamuchlisina@gmail.com', '0895703133230', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/372/ea099092-a2a4-4449-b71a-15308ce141fd.jpeg', 'IMG_9913.jpeg', 'image/jpeg', 155787, '2026-09-15 02:04:49', '2026-09-15 04:05:14', 10, NULL, NULL, NULL, NULL, 'MKn9ENNUD6F8vndN84SkyrZ7SkyXcyXf2ps1AwFC', '2026-09-14 08:40:17', '2026-09-15 04:05:18'),
(373, 'WSD-20260914-VB10', 'Ghita Farsya', 'P27903123114', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'ghitafarsyaa@gmail.com', '081385254112', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/373/380f31df-31bc-4469-ad77-5e33429e746c.jpeg', 'IMG_4045.jpeg', 'image/jpeg', 263068, '2026-09-14 08:44:55', '2026-09-14 09:17:14', 13, NULL, NULL, NULL, NULL, 'upeWHueigYJBADWhTsuMztDcwnKEMReV5JD7HZdM', '2026-09-14 08:44:02', '2026-09-14 09:17:19'),
(374, 'WSD-20260914-TCVN', 'Herawati', 'P27902123097', NULL, 2, 'D3 Kebidanan', 2026, 'Areher0203@gmail.com', '085777735891', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/374/9c5d08a2-7d24-495c-8a88-f145095c8417.jpeg', '8538de6d-0950-4990-b82c-f3ea058dc88e.jpeg', 'image/jpeg', 106751, '2026-09-14 08:45:01', '2026-09-14 09:14:29', 10, NULL, NULL, NULL, NULL, 'Wj7RQ8Pp7VJIxHblvbCCJey6VlNlpGNtlkZ1ExNe', '2026-09-14 08:44:39', '2026-09-15 08:42:50'),
(375, 'WSD-20260914-YL8H', 'Ismawati', 'P27903123215', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'ismawatiwati159@gmail.com', '+62 896-7569-8167', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/375/d713bdbe-ecca-475f-93e7-f59e23cb2c3e.jpg', 'Screenshot_20260914_154817_DANA.jpg', 'image/jpeg', 444698, '2026-09-14 08:48:51', '2026-09-14 09:15:33', 13, NULL, NULL, NULL, NULL, '4nFVHQr2g5rRDALjZQpyHK7DZnOkki4LjoitOxn2', '2026-09-14 08:48:26', '2026-09-14 09:15:37'),
(376, 'WSD-20260914-E4C1', 'Dina Meyliani', 'P27902123051', NULL, 2, 'D3 Kebidanan', 2026, 'dinameyliani317@gmail.com', '082258602292', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/376/2e6d5b53-a66b-47f3-8af4-92c78bb94a33.jpeg', 'e57ea81c-558f-442d-a609-21b36c72c649.jpeg', 'image/jpeg', 195510, '2026-09-14 08:52:23', '2026-09-14 09:13:38', 13, NULL, NULL, NULL, NULL, '2c1QZGIMjaQDprLgmfOWSqvRE5mzTuFELrUJCZsy', '2026-09-14 08:51:56', '2026-09-14 09:13:42'),
(377, 'WSD-20260914-5H97', 'Aprilia Megan Utami', 'P27903123153', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'apriliameganutami0@gmail.com', '081285287484', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/377/c03e20f7-30ec-4609-968f-483787b499f5.png', 'IMG_2576.png', 'image/png', 364505, '2026-09-14 08:53:12', '2026-09-14 09:11:06', 13, NULL, NULL, NULL, NULL, '0grhz5yD7K0yGnLWzlFS9f93hP0L7zHcjDftto1a', '2026-09-14 08:52:44', '2026-09-14 09:11:11'),
(378, 'WSD-20260914-NV4E', 'Zihan Anita', 'P27903123243', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'zihanimut31@gmail.com', '083894274795', NULL, 'Perempuan', 'All Size', 'Ukuran S jangan terlalu besar', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/378/6458bdb6-f0fd-404f-b245-6e92f17317e0.png', 'IMG_2529.png', 'image/png', 194496, '2026-09-14 08:55:39', '2026-09-14 09:10:26', 13, NULL, NULL, NULL, NULL, 'BGKnJykXJbEFDRlYJwRPfuvw3m8F0DJ1pS4OQKGw', '2026-09-14 08:54:32', '2026-09-14 09:10:32'),
(379, 'WSD-20260914-65ZC', 'Sekar Hapsari purnomo', 'P27903123187', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'sekarrrhapsarii@gmail.com', '081939855778', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/379/5fdc1f16-e952-4f25-a3cb-e0cf64821cd6.png', 'IMG_2245.png', 'image/png', 364880, '2026-09-14 09:01:34', '2026-09-14 09:09:53', 13, NULL, NULL, NULL, NULL, 'A8rx1m8jzJn8cpevAygorAw5Tq2MfT7jif0x7UgC', '2026-09-14 09:01:12', '2026-09-14 09:09:57'),
(380, 'WSD-20260914-K18F', 'Saskia Nuril Anwar', 'P27904122086', NULL, 8, 'Sarjana Terapan Keperawatan', 2026, 'saskianuril11@gmail.com', '‪0812‑1398‑3372‬', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/380/cc68103a-7afa-4c58-9e93-341a4d7b449d.png', 'IMG_0243.png', 'image/png', 216352, '2026-09-14 09:23:31', '2026-09-14 09:26:05', 13, NULL, NULL, NULL, NULL, '8NnKSFRj6S91CQevGxjQilOELkyZIUlOBimVBabB', '2026-09-14 09:12:24', '2026-09-14 09:26:09'),
(381, 'WSD-20260914-FFB6', 'Vidya Nadzar Maula', 'P27903123096', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'vidyaanadzarmaula10@gmail.com', '081953916447', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/381/ddb9a59b-c617-4b72-9070-1ae8e80598d7.png', 'IMG_9734.png', 'image/png', 123409, '2026-09-14 09:41:33', '2026-09-14 13:28:03', 9, NULL, NULL, NULL, NULL, 'ExZvcuLiABEDzHUGdgciteUkyewv92E3cxkTkNgl', '2026-09-14 09:39:54', '2026-09-14 13:28:06'),
(382, 'WSD-20260914-OHBC', 'Rizka Sabilah', 'P27903123136', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'sabillahrizka8@gmail.com', '‪+62 815‑8518‑9128‬', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/382/aa6d10f7-4a81-4398-aecf-eae5847eceaf.jpeg', '7b848e95-e60b-4913-9ecd-61fa407d32e6.jpeg', 'image/jpeg', 198061, '2026-09-14 09:50:50', '2026-09-14 13:12:33', 9, NULL, NULL, NULL, NULL, 'xdONzdVMP6UWIjh3L5T90pAp6Ja0m0V35rflIubR', '2026-09-14 09:46:49', '2026-09-14 13:12:36'),
(383, 'WSD-20260914-B61U', 'Indah Aprilliani', 'P27902123057', NULL, 2, 'D3 Kebidanan', 2026, 'indahapriliani1990@gmail.com', '085692697166', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/383/c7296da1-f10d-4ab9-9807-1e96f8ebda8b.jpeg', '69fcb0e7-3c22-4b27-8ac8-6c79609f3100.jpeg', 'image/jpeg', 90280, '2026-09-14 10:10:22', '2026-09-14 13:27:25', 9, NULL, NULL, NULL, NULL, 'x50PPFARzvAXNVy73pTCAPg8gtNk6gQtDKYxhWVy', '2026-09-14 10:09:09', '2026-09-14 13:27:29'),
(384, 'WSD-20260914-TXWF', 'Artika Dwi Lestari', 'P27903123055', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'artikalestar@gmail.com', '083879873970', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/384/d0752243-2cc6-4682-8062-f17a5ca0d846.png', 'IMG_7347.png', 'image/png', 196750, '2026-09-14 10:29:28', '2026-09-14 13:20:32', 9, NULL, NULL, NULL, NULL, 'GMv4DKeWAAUDo3NGdBxOuQdNVDtANpLS802y5PuH', '2026-09-14 10:29:05', '2026-09-14 13:20:35'),
(385, 'WSD-20260914-8VKJ', 'Natasya Angel.S', 'P27903123179', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'natasyaangel0911@gmail.com', '085956771525', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/385/46ccd335-6890-4ab4-ae76-522174983c29.png', 'IMG_8070.png', 'image/png', 136771, '2026-09-14 10:33:10', '2026-09-14 13:20:12', 9, NULL, NULL, NULL, NULL, 'zQhsaBjUqaznCirzGtPuLYmqhALE3IGfnwuOAjt6', '2026-09-14 10:31:25', '2026-09-14 13:20:19'),
(386, 'WSD-20260914-FFIL', 'Velasepti Indryani', 'P27902123079', NULL, 2, 'D3 Kebidanan', 2026, 'velaseptivela@gmail.com', '083833138959', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/386/077f6454-9ef0-4534-b439-a25425a0ace4.jpg', 'Screenshot_2026-09-14-17-52-57-08_78ed797590cf9a33dfc5e341b7a9537a.jpg', 'image/jpeg', 326121, '2026-09-14 10:53:37', '2026-09-14 13:19:46', 9, NULL, NULL, NULL, NULL, 'ZwIxC8QXMExe2sDfzIoN1F3PU3IUVgeQ53kNbKIS', '2026-09-14 10:50:41', '2026-09-14 13:19:49'),
(387, 'WSD-20260914-5GKH', 'Tasya Mufidah Nabilah', 'P27903123095', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'tasyamufidahnabilah31@gmail.con', '081385196192', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/387/751ed52a-7732-4605-b632-a41f735c1e3a.png', 'IMG_6887.png', 'image/png', 199549, '2026-09-14 11:04:12', '2026-09-14 13:19:31', 9, NULL, NULL, NULL, NULL, '2C9FzGUo28YzeaCYpBZzU01nOmDJSgm1uR7iKYlR', '2026-09-14 11:02:57', '2026-09-14 13:19:34'),
(388, 'WSD-20260914-BGH3', 'Syivatu Nadroh', 'P27902123039', NULL, 2, 'D3 Kebidanan', 2026, 'syivatun@gmail.com', '087711912395', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/388/af064425-a3fd-41b9-9b35-8a10c836b9f9.jpg', 'IMG_Mon Sep 14 18_07_32 GMT+07_00 2026.jpg', 'image/jpeg', 131497, '2026-09-14 11:08:35', '2026-09-14 13:11:28', 9, NULL, NULL, NULL, NULL, 'pEsUB17UABpbuMCZN6pE1iCRIvhXp5z1LXVr8RiY', '2026-09-14 11:06:18', '2026-09-14 13:11:32'),
(389, 'WSD-20260914-KHIL', 'Siti Nurmila', 'P27902123115', NULL, 2, 'D3 Kebidanan', 2026, 'snmilaa1@gmail.com', '083841471193', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/389/a31bd66e-e6f6-438c-b258-b8a4b1675aa4.png', 'IMG_0366.png', 'image/png', 175202, '2026-09-14 11:09:49', '2026-09-14 13:11:02', 9, NULL, NULL, NULL, NULL, 'ZAtEaRJnMamwfRqJcb7A08zMGtRnQgL51vcdhBNa', '2026-09-14 11:08:14', '2026-09-14 13:11:06'),
(390, 'WSD-20260914-50DU', 'Doni Kanigia', 'P27903123109', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'donikanigia6@gmail.com', '08567164481', NULL, 'Laki-laki', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/390/25a2f5e8-95e5-4f31-b57f-74bd04a524f9.jpg', 'Screenshot_20260914_180855_blu.jpg', 'image/jpeg', 401444, '2026-09-14 11:12:43', '2026-09-14 13:10:30', 9, NULL, NULL, NULL, NULL, 'F6Movzo4Bc7wshJvz6sKipRJ9mebeBfYLuUTHcrG', '2026-09-14 11:12:16', '2026-09-14 13:10:34'),
(391, 'WSD-20260914-QW64', 'Husniatur Rosyikhotir Rohimah', 'P27903123165', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'husniarohimah@gmail.com', '081511366427', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/391/b80abc97-fa63-4283-99ca-97e2e8c0eb3b.jpg', 'Screenshot_20260914-181405.jpg', 'image/jpeg', 374789, '2026-09-14 11:14:35', '2026-09-14 13:09:53', 9, NULL, NULL, NULL, NULL, '90NXukfA4siXLPin3uXhnWN5VeH06TReCnNxb0Tf', '2026-09-14 11:14:12', '2026-09-14 13:09:57'),
(392, 'WSD-20260914-3BMD', 'Windu Fitriyanti Amaliyah', 'P27902123083', NULL, 2, 'D3 Kebidanan', 2026, 'windufitri1809@gmail.com', '088289741596', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/392/91dd5e92-ddf8-4fec-a96e-e9d1543014e6.jpg', 'Screenshot_20260914_181940.jpg', 'image/jpeg', 158164, '2026-09-14 11:20:17', '2026-09-14 13:09:32', 9, NULL, NULL, NULL, NULL, 'a6hNt2MhWjw6OUQ5lCjkoZ8AmvisKQMoYa7Ba23C', '2026-09-14 11:18:22', '2026-09-14 13:09:34'),
(393, 'WSD-20260914-LTON', 'Yearly Adib Fathoni Fadli', 'P27903123049', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'adibp8299@gmail.com', '085817413750', NULL, 'Laki-laki', 'All Size', 'Ukuran xl atau xxl yah karna saya gemuk dan tinggi saya 160cm', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/393/47f57cd4-674e-4411-90bf-1d7260f96688.jpeg', 'IMG-20260914-WA0002.jpeg', 'image/jpeg', 2368912, '2026-09-14 11:33:36', '2026-09-14 13:09:09', 9, NULL, NULL, NULL, NULL, '7dcy4WaRHUVKBS7R8UTWBUmQvsp1FVtgrxiEgtyo', '2026-09-14 11:21:22', '2026-09-14 13:09:12'),
(394, 'WSD-20260914-6OPW', 'Intan Damayanti', 'P27902123101', NULL, 2, 'D3 Kebidanan', 2026, 'intandamayanti212@gmail.com', '083863791248', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/394/a1af4077-0459-4451-bef2-a4d5401495e2.png', 'IMG_6842.png', 'image/png', 455552, '2026-09-14 11:41:16', '2026-09-14 13:19:14', 9, NULL, NULL, NULL, NULL, 'OGayf6GunzNJy8btVMT5yokv7wPwmO7WyKcOUQXC', '2026-09-14 11:37:17', '2026-09-14 13:19:17'),
(395, 'WSD-20260914-EARL', 'Anggi Saepul Aprilia', 'P27902123044', NULL, 2, 'D3 Kebidanan', 2026, 'anggisaepulapriliaa@gmail.com', '082124098589', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/395/c26d75af-3501-4e82-b714-5d7a961791e0.png', 'IMG_0727.png', 'image/png', 161882, '2026-09-14 11:42:33', '2026-09-14 13:08:15', 9, NULL, NULL, NULL, NULL, 'dleZuEMM4FDP6aKtvjlxxYmMZ2s27BvDUoxLCVnP', '2026-09-14 11:39:23', '2026-09-14 13:08:18'),
(396, 'WSD-20260914-KPGK', 'Rizal Jamal Fauzan', 'P27904122036', NULL, 8, 'Sarjana Terapan Keperawatan', 2026, 'rizaljamalfauzan10@gmail.com', '089503247731', NULL, 'Laki-laki', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/396/45236098-b2e0-449f-8cf6-9bf1e718c02e.jpg', 'IMG_20260914_184444.jpg', 'image/jpeg', 336202, '2026-09-14 11:45:12', '2026-09-14 13:07:50', 9, NULL, NULL, NULL, NULL, '88wbBd8W0hPGRT5Ijw2FXoDk4qNvEhgU3zGPI5rG', '2026-09-14 11:41:17', '2026-09-14 13:07:54'),
(397, 'WSD-20260914-FEAB', 'Mutiara Sukma', 'P27903123176', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'mutiarasukmaa26@gmail.com', '08588272891', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/397/8af82e8b-8e3a-474a-a03a-5459acc2b4e3.jpg', 'Screenshot_20260914_184730_DANA.jpg', 'image/jpeg', 537679, '2026-09-14 11:47:50', '2026-09-14 12:51:34', 9, NULL, NULL, NULL, NULL, 'TwinFLmv8Y2baXS1jmH2PWg4CZAgjQAJKn6v0D2Q', '2026-09-14 11:45:29', '2026-09-14 12:51:38'),
(398, 'WSD-20260914-BWG4', 'NURHALIMAH', 'P27903123181', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'nurhlimah1601@gmail.com', '089654955766', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/398/cf5a50cd-8799-4023-a018-349e2c8d2a82.jpg', 'Screenshot_20260914_185005_GoPay.jpg', 'image/jpeg', 182757, '2026-09-14 11:50:24', '2026-09-14 12:56:02', 9, NULL, NULL, NULL, NULL, 'kJCrkSwtXrGlp4FVBbpReEqPgUheGqzaBG3UgUUZ', '2026-09-14 11:46:51', '2026-09-14 12:56:07'),
(399, 'WSD-20260914-QAWV', 'Arum Nurmala', 'P27903123008', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'arumnurmala08@gmail.com', '089509758927', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/399/f1873fb5-9744-4258-9af1-fa4dd34245d3.jpg', 'IMG-20260914-WA0034.jpg', 'image/jpeg', 54287, '2026-09-14 12:05:58', '2026-09-14 12:55:27', 9, NULL, NULL, NULL, NULL, 'O1yOSJkHuBgAyKB3iIw6cRPl4USWFCO1e3iJ1chQ', '2026-09-14 11:53:34', '2026-09-14 12:55:30'),
(400, 'WSD-20260914-MVWF', 'Siti Ajeng Najwa', 'P27902123074', NULL, 2, 'D3 Kebidanan', 2026, 'ajengnajwa0102@gmail.com', '083132040688', NULL, 'Perempuan', 'All Size', 'Ukuran nya 2XL', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/400/201c8ff8-2b9a-4481-8e2f-e7edda36b4ed.jpg', 'Screenshot_20260914_192708.jpg', 'image/jpeg', 319567, '2026-09-14 12:27:57', '2026-09-14 12:55:07', 9, NULL, NULL, NULL, NULL, 'HkBkMjY4yNlkmuQSipIMXJBt8P2asuJATzW0LbNM', '2026-09-14 12:27:23', '2026-09-14 12:55:11'),
(401, 'WSD-20260914-PX2S', 'Ning Diani Pasha', 'P27904122075', NULL, 8, 'Sarjana Terapan Keperawatan', 2026, 'ningdianipasha@gmail.com', '083874677753', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/401/cf5bcc30-bf3d-4553-973d-8bfd809e1da2.jpg', 'Screenshot_2026-09-14-19-49-31-81_78ed797590cf9a33dfc5e341b7a9537a.jpg', 'image/jpeg', 253803, '2026-09-14 12:50:00', '2026-09-14 13:07:36', 9, NULL, NULL, NULL, NULL, 'MrKMtL67xOOxFv2ZyTPxi1Ub5KFqxt9vgMqkzhZB', '2026-09-14 12:47:53', '2026-09-14 13:07:40'),
(402, 'WSD-20260914-YLQW', 'Nida Amalia', 'P27904122074', NULL, 4, 'Sarjana Terapan Keperawatan Reguler', 2026, 'amalianida820@gmail.com', '083808216268', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/402/e43ad6ee-0c02-4e34-8cf9-b2b1bb6ae9af.jpg', 'Screenshot_2026-09-14-20-05-09-548_id.dana.jpg', 'image/jpeg', 559586, '2026-09-14 13:05:53', '2026-09-14 13:07:22', 9, NULL, NULL, NULL, NULL, 'tsbybM0UhlnIPmzaWThLocqvjzV57dFGggWKYWEl', '2026-09-14 13:02:16', '2026-09-14 13:07:26'),
(403, 'WSD-20260914-O94A', 'Siti Baiturrohmah', 'P27903123043', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'rohmaaa174@gmail.com', '081927155934', NULL, 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Xkmv1d4D5JkWyQNM8BD4jHRur6RH3QyyyMNehxgX', '2026-09-14 14:11:28', '2026-09-14 14:11:28'),
(404, 'WSD-20260914-5QX9', 'Seni Kania Ardila', 'P27901123097', NULL, 1, 'D3 Keperawatan', 2026, 'senikania016@gmail.com', '081289864041', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/404/f8a8a55c-41ec-4dd7-8867-678053bd5437.jpeg', 'WhatsApp Image 2026-09-14 at 21.08.01 (1).jpeg', 'image/jpeg', 59617, '2026-09-14 14:14:51', '2026-09-14 14:26:20', 9, NULL, NULL, NULL, NULL, 'ZNvKJt1RGqFXVPsuG0v0bU6TQ6Wwmir4QOw3P0T9', '2026-09-14 14:14:27', '2026-09-14 14:26:26'),
(405, 'WSD-20260914-IHB7', 'Khairiny Maharani', 'P27904122016', NULL, 8, 'Sarjana Terapan Keperawatan', 2026, 'khairinym@gmail.com', '089514443537', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/405/55d75c28-aa6c-431c-8f59-f87d756d18de.png', 'IMG_6753.png', 'image/png', 870749, '2026-09-14 14:25:28', '2026-09-14 14:26:50', 10, NULL, NULL, NULL, NULL, 'Jf9R2y8odZlB4XOYpr3eJd3isAK7XpKhkq8ul64p', '2026-09-14 14:24:50', '2026-09-14 14:26:55'),
(406, 'WSD-20260914-XSCL', 'Ghaida Ismadiah Zahra', 'P27903123210', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'ghaidaismadiahzahra@gmail.com', '083161811257', NULL, 'Perempuan', 'All Size', 'A.n Ghaida Ismadiah Zahra', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/406/9030dd74-ffee-49a3-8417-50aaa24b2343.jpg', 'Screenshot_2026-09-14-21-31-49-88_78ed797590cf9a33dfc5e341b7a9537a.jpg', 'image/jpeg', 234217, '2026-09-14 14:32:37', '2026-09-15 04:05:50', 10, NULL, NULL, NULL, NULL, 'EFWzDmFUfWWCc0r1pDefmCYis3Hflx2I9zHkM2SA', '2026-09-14 14:32:04', '2026-09-15 04:05:54'),
(407, 'WSD-20260914-CCA4', 'Syifa Nurul Aulia', 'P27904122044', NULL, 4, 'Sarjana Terapan Keperawatan Reguler', 2026, 'syifauxlia20@gmail.com', '081292157836', NULL, 'Perempuan', 'All Size', 'Ukuran toga M/L', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/407/90dbb997-fcfe-4cdc-9090-36a90a0bc12b.jpg', 'Screenshot_20260914_213357_DANA.jpg', 'image/jpeg', 362470, '2026-09-14 14:35:27', '2026-09-15 04:06:22', 10, NULL, NULL, NULL, NULL, 'eGS1ieUiZyuUN0fb5WuCIwYReTqtyMBELVv78AgB', '2026-09-14 14:34:11', '2026-09-15 04:06:25'),
(408, 'WSD-20260914-78QD', 'Nandini Varia Mustika', 'P27904122022', NULL, 8, 'Sarjana Terapan Keperawatan', 2026, 'nandinivariamstk16@gmail.com', '081384513712', NULL, 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/408/caea60d7-6696-4de5-9714-1a6fd8cdb3f7.png', 'IMG_9448.png', 'image/png', 164587, '2026-09-14 15:00:09', '2026-09-15 04:07:01', 10, NULL, NULL, NULL, NULL, 'VhhOTPcsjjOVXBll6djTWc1VHWcEE9fKhBhAPOJQ', '2026-09-14 14:55:42', '2026-09-15 04:07:05'),
(409, 'WSD-20260915-DWQW', 'Santi Nurhayati', 'P27903123186', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'santinurhayati1005@gmail.com', '085973943560', 'Santi Nurhayati', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/409/0d067a07-55e6-491c-a626-b6bb57d0cbf8.jpg', 'Screenshot_20260915_053001.jpg', 'image/jpeg', 198596, '2026-09-14 22:31:43', '2026-09-15 04:07:53', 10, NULL, NULL, NULL, NULL, 'PRSkTidnZMq2kyMpGXjl6p0XmfZtAho9fJ0k00PO', '2026-09-14 22:31:16', '2026-09-15 04:07:56'),
(410, 'WSD-20260915-CQQV', 'Anis Fithri Nafisah', 'P27902123046', NULL, 2, 'D3 Kebidanan', 2026, 'fithrinafisah127@gmail.com', '085770620362', 'Tarma', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/410/f831000f-8580-4fce-8099-b5a8abf07a7a.jpg', 'IMG-20260915-WA0000.jpg', 'image/jpeg', 56648, '2026-09-14 23:16:26', '2026-09-15 04:08:28', 10, NULL, NULL, NULL, NULL, 'DCv5a5gNGKjmLKaopIIsYFNAVVQbiYzk47Z7sJSc', '2026-09-14 23:15:20', '2026-09-15 04:08:32'),
(411, 'WSD-20260915-TUIB', 'Ade Lia Rizayanti', 'P27904122001', NULL, 8, 'Sarjana Terapan Keperawatan', 2026, 'adeliarizayanti18@gmail.com', '08979839218', 'Ade Lia Rizayanti', 'Perempuan', 'All Size', 'Untuk tinggi 160', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/411/74f0d96c-e868-4f59-bf09-21a677a53fc9.jpg', 'Screenshot_2026-09-15-08-36-20-12_121d0782f1cd8474b48c9b27865007fd.jpg', 'image/jpeg', 156367, '2026-09-15 01:36:48', '2026-09-15 04:09:04', 10, NULL, NULL, NULL, NULL, '60yY9mndzt2yBfKXZroBgSAoZU7ib0OPwlQc8daE', '2026-09-15 00:04:50', '2026-09-15 04:09:07'),
(412, 'WSD-20260915-QJWN', 'Hertin aulia putri', 'P27902123139', NULL, 2, 'D3 Kebidanan', 2026, 'Hertinaulia15@gmail.com', '085811561249', 'Saya Sendiri', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/412/ae8d4605-c7ed-4663-b2d2-b66f908c96af.png', 'IMG_1978.png', 'image/png', 189934, '2026-09-15 00:17:30', '2026-09-15 04:09:49', 10, NULL, NULL, NULL, NULL, '5xCXZtH3rFAxumfihnJZHVvv2kgob6aEfYZpjap5', '2026-09-15 00:15:00', '2026-09-15 04:09:52'),
(413, 'WSD-20260915-TVFF', 'Najwa Syifa Salsabila', 'P27903123177', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'juaasy18@gmail.com', '081298496828', 'Najwa Syifa Salsabila', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/413/be5b2711-7a4e-4d2b-a58f-afecd12e951a.jpeg', 'IMG_2537.jpeg', 'image/jpeg', 479219, '2026-09-15 00:54:47', '2026-09-15 00:57:48', 9, NULL, NULL, NULL, NULL, 'YILI9jXZBnDLHvLcTF8oxAfp8AyzcGXSkspPtuVm', '2026-09-15 00:51:27', '2026-09-15 00:57:51'),
(414, 'WSD-20260915-9XYZ', 'Dila Mardiana', 'P27904122010', NULL, 8, 'Sarjana Terapan Keperawatan', 2026, 'dilamardiana2501@gmail.com', '083895329555', 'Dila Mardiana', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/414/6e023c95-1f3d-4124-842c-a103ec547a36.jpg', 'Screenshot_20260915_080209_Shopee.jpg', 'image/jpeg', 312016, '2026-09-15 01:03:31', '2026-09-15 04:10:29', 10, NULL, NULL, NULL, NULL, 'dQxrB3N3e95oxf0nVdqutKGsmAfj1VE9IirBA1rA', '2026-09-15 01:03:10', '2026-09-15 04:10:32'),
(415, 'WSD-20260915-MYHS', 'AFINA SHAFA SALSABILA', 'P27903123197', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'afinashafa13@gmail.com', '085778121606', 'IMAS PUTRASARI/Afina Shafa Salsabila', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/415/6830cf0d-301f-466b-8977-d67d450cc740.png', 'IMG_5235.png', 'image/png', 191136, '2026-09-15 01:38:17', '2026-09-15 04:11:19', 10, NULL, NULL, NULL, NULL, 'vReBJluqYHcIWHJcZQ6PDPnLTJDLrkEEP6JlXLbe', '2026-09-15 01:37:32', '2026-09-15 04:11:22'),
(416, 'WSD-20260915-VUC9', 'Eka Astyah Rohmah', 'P27903123206', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'ekaastyahrohmah@gmail.com', '+6283802186710', 'Eka Astyah Rohmah', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/416/7a75ecfa-1b27-426a-9ad8-732478341e42.jpg', 'IMG-20260915-WA0000.jpg', 'image/jpeg', 54668, '2026-09-15 01:48:20', '2026-09-15 04:11:55', 10, NULL, NULL, NULL, NULL, 'FnsHTuoqAC9Sj2nPzofzTEWkkZwbrpTLBEhl1GVa', '2026-09-15 01:47:56', '2026-09-15 04:11:58'),
(417, 'WSD-20260915-7718', 'Cahaya Safitri', 'P27904122008', NULL, 8, 'Sarjana Terapan Keperawatan', 2026, 'csafitri2004@gmail.com', '082117797454', 'Maryati', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/417/c4650329-4bad-48d5-8f68-fb1d83f89176.jpeg', 'f4c22b26-0536-475b-a1d6-2a36988f81e0.jpeg', 'image/jpeg', 106560, '2026-09-15 01:52:09', '2026-09-15 04:14:06', 10, NULL, NULL, NULL, NULL, 'tLHfCGQvsZH9a6b0TZg3AqSkBgYUVHVPUCLro5QC', '2026-09-15 01:48:53', '2026-09-15 04:14:09'),
(418, 'WSD-20260915-WM2E', 'Yunita', 'P27903123098', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'yunitaserang7@gmail.com', '085882710895', 'Yunita', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/418/1cd06c02-9f8c-48e0-9112-deb6d2eade4b.jpg', 'Screenshot_2026-09-15-08-56-45-19_78ed797590cf9a33dfc5e341b7a9537a.jpg', 'image/jpeg', 256847, '2026-09-15 01:58:57', '2026-09-15 04:15:05', 10, NULL, NULL, NULL, NULL, '8ZET5nY3WGi3liYUcomhXRXafkSmF9r2Vy4llfYP', '2026-09-15 01:54:19', '2026-09-15 04:15:08'),
(419, 'WSD-20260915-HXGP', 'Naslah', 'P27904122070', NULL, 8, 'Sarjana Terapan Keperawatan', 2026, 'naslaah1904@gmail.com', '081388453058', 'Marsuta', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/419/668baed5-be9f-4b67-9e18-7040e6a56612.jpg', 'Screenshot_2026-09-16-12-52-30-94_78ed797590cf9a33dfc5e341b7a9537a.jpg', 'image/jpeg', 317003, '2026-09-16 05:56:46', '2026-09-16 07:50:16', 13, NULL, NULL, NULL, NULL, '3Kd74wY8zMFDL9k9XFgb1uB9ZVKYR0ab5sICOHgD', '2026-09-15 02:04:06', '2026-09-16 07:50:20'),
(420, 'WSD-20260915-RGF0', 'Serly Safariyatul Aeni', 'P27902123038', NULL, 2, 'D3 Kebidanan', 2026, 'safariyatulaeniserly@gmail.com', '081286290393', 'Serly Safariyatul Aeni', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/420/20ba364f-4f0a-425f-b941-c185b71ffc75.png', 'IMG_1951.png', 'image/png', 221946, '2026-09-15 02:15:19', '2026-09-15 04:15:43', 10, NULL, NULL, NULL, NULL, 'C5JaCRZ2s60lCi5CgzOJWfjqbcnFmLMH5YOycDbv', '2026-09-15 02:13:30', '2026-09-15 04:15:46'),
(421, 'WSD-20260915-TV0J', 'Anggun Diva Maghfirah', 'P27903123200', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'anggundivdiv26@gmail.com', '081946232673', 'Anggun Diva Maghfirah', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/421/544aff40-6b18-43c3-9184-dde600939e64.png', 'IMG_8173.png', 'image/png', 121600, '2026-09-15 02:30:54', '2026-09-15 02:39:03', 9, NULL, NULL, NULL, NULL, 'p9W6l0oWwUAuWN3k0h9dpbb0Io9BLfx47hHYeRjb', '2026-09-15 02:26:25', '2026-09-15 02:39:06'),
(422, 'WSD-20260915-QAP6', 'Tasya Aulia putri', 'P27903123144', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'tasyaauuliaptri@gmail.com', '081299103465', 'Tasya Aulia putri', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/422/17dd1859-4c5a-4584-9a5d-1f76234f6b5b.jpeg', '385d33e2-d117-4467-906f-b406bcf3f51d.jpeg', 'image/jpeg', 114994, '2026-09-15 02:29:21', '2026-09-15 04:16:31', 10, NULL, NULL, NULL, NULL, 'wqkAqEJvxJTMZc2FpH3Ljig1RmXkcjPfPSCaCX3M', '2026-09-15 02:28:29', '2026-09-15 04:16:34'),
(423, 'WSD-20260915-L4MM', 'Farroh \'Afiyah Aghni', 'P27902123054', NULL, 2, 'D3 Kebidanan', 2026, 'farrohafiyahaghni@gmail.com', '0852 1736 4783', 'Farroh Afiyah Aghni', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/423/e59d32a8-5c56-4426-8c22-befad9027aff.jpg', 'Screenshot_20260915_093514_DANA.jpg', 'image/jpeg', 269244, '2026-09-15 02:35:32', '2026-09-15 04:17:20', 10, NULL, NULL, NULL, NULL, 'H5EUs405QiFSM40P0pqrU0IU6idcCtLcb9TghMg0', '2026-09-15 02:30:28', '2026-09-15 04:17:24'),
(424, 'WSD-20260915-WNRR', 'Ilmania Nur Hajizah', 'P27903123067', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'ilmania2626@gmail.com', '083856375533', 'Ilmania Nur Hajizah', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/424/0910ad77-e8c2-4651-ab9c-9d1bb6d13625.jpg', 'IMG-20260915-WA0004.jpg', 'image/jpeg', 69273, '2026-09-15 02:36:01', '2026-09-15 02:40:14', 9, NULL, NULL, NULL, NULL, 'GuD0xP7f3lEGsilVbLRa5lhZGxNGVgq9LTLpRHrw', '2026-09-15 02:33:13', '2026-09-15 02:40:17'),
(425, 'WSD-20260915-KHDR', 'Rita Septiani', 'P27901123038', NULL, 1, 'D3 Keperawatan', 2026, 'ritaseptiani333@gmail.com', '+6285771473304', 'Siska Agustina', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/425/007b2289-7bdc-4772-a5bf-5329e54c6b11.jpg', 'IMG-20260915-WA0004.jpg', 'image/jpeg', 50941, '2026-09-15 03:00:28', '2026-09-15 04:17:58', 10, NULL, NULL, NULL, NULL, 'utqdblElIseiKLg5G2sXPsjjt0ixSEcBpoKNmV6h', '2026-09-15 02:46:21', '2026-09-15 04:18:01'),
(426, 'WSD-20260915-W02O', 'Qowiy Muhammad Rofi Zuhdi', '08148679503123', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'qowiyrofi@gmail.com', '081945821517', 'Kuat Santoso', 'Laki-laki', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BAEQqgNYiqSFSJTKnjvheSUyiIjMsADzKF6X3zan', '2026-09-15 02:47:29', '2026-09-15 02:47:29'),
(427, 'WSD-20260915-BKLB', 'Riska April Mulyatin Firmansyah', 'P27902123112', NULL, 2, 'D3 Kebidanan', 2023, 'riskaaprilmf@gmail.com', '087786711270', 'Euis Yuliana', 'Perempuan', 'All Size', 'D3 Kebidanan, Perempuan', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/427/03451c62-58ba-4902-a674-e72067e98527.jpeg', '07685ee6-73ad-4889-8d71-f9bd0c4c44ec.jpeg', 'image/jpeg', 90008, '2026-09-15 02:52:28', '2026-09-15 04:02:54', 10, NULL, NULL, NULL, NULL, '8g2Q5FZ8KtODQL3HsLoxcrogX52FdVaMrQP0uMFx', '2026-09-15 02:50:38', '2026-09-15 04:02:58'),
(428, 'WSD-20260915-3CCQ', 'Aditya Rizky Wahyu Ramadhan', 'P27903123001', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'adityarizkywahyuramadhan24@gmail.com', '087789021888', 'Aditya Rizky Wahyu Ramadhan', 'Laki-laki', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/428/612cebca-f8fa-40b1-8658-72868b80c7aa.jpg', 'Screenshot_2026-09-15-09-58-06-797_id.dana.jpg', 'image/jpeg', 479846, '2026-09-15 02:59:06', '2026-09-15 03:06:53', 9, NULL, NULL, NULL, NULL, 'GTJlabAHKJocVxHBEvGe5qvW5G9CcYN1NVQ05tg8', '2026-09-15 02:55:26', '2026-09-15 03:06:56'),
(429, 'WSD-20260915-HBV7', 'Stya fermana', 'P27905125099', NULL, 7, 'Pendidikan Profesi NERS', 2026, 'stya.fermana@gmail.com', '085930033777', 'Stya Fermana', 'Laki-laki', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/429/bc9255de-f407-4ca2-80ef-29cc3567e9ab.jpg', 'Transaksi_BCAmobile-20260915-102602.jpg', 'image/jpeg', 448374, '2026-09-15 03:26:53', '2026-09-15 04:19:49', 10, NULL, NULL, NULL, NULL, 'ojIWdZ6dkPjXeYq9ORDhRvmc1x7vJxK1yztDIIZ6', '2026-09-15 03:24:09', '2026-09-15 04:19:52'),
(430, 'WSD-20260915-L3WF', 'Mutiara Mardiyelva', 'P27905125027', NULL, 7, 'Pendidikan Profesi NERS', 2026, 'mutiaramy21@gmail.com', '089629613127', 'mutiara Mardiyelva', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'oBTPVGE2Xpd31Y3h7m9rXGWArhk8DePHRVTmKm2j', '2026-09-15 03:51:04', '2026-09-15 03:51:04'),
(431, 'WSD-20260915-VQLW', 'Indah Nur Aeni', 'P27903123214', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'indahnuraini0409@gmail.com', '083894425742', 'INDAH NUR AENI', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/431/0bafc3bb-7c98-4c22-903c-df2af70da652.jpg', 'Screenshot_2026-09-15-11-03-22-97_78ed797590cf9a33dfc5e341b7a9537a.jpg', 'image/jpeg', 271803, '2026-09-15 04:03:48', '2026-09-15 04:20:35', 10, NULL, NULL, NULL, NULL, 'gvlSXUDvfcUEZLs2AQ3A6fgPtW1FuRzsTTUQKvak', '2026-09-15 04:01:54', '2026-09-15 04:20:37'),
(432, 'WSD-20260915-9EYQ', 'Safinatul Hasanah', 'P27903123039', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'fina97911@gmail.com', '083896788623', 'pengirim transfer: Safinatul Hasanah', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/432/2db9d043-8d3b-4814-90f7-300f59d67ef8.png', 'IMG_3675.png', 'image/png', 119863, '2026-09-15 04:21:42', '2026-09-15 07:43:34', 9, NULL, NULL, NULL, NULL, 'X5PlpUmzn63FtJEmXkXHrbInhT1FJ7qztLXYPfOP', '2026-09-15 04:21:18', '2026-09-15 07:43:37'),
(433, 'WSD-20260915-FTWB', 'Fella Indriyanti', 'P27903123063', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'fellaindriyanti@gmail.com', '085213621045', 'FELLA INDRIYANTI', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/433/7d3b64d7-507a-4a5a-811e-4558e6313de5.jpg', 'Screenshot_20260915_114516_DANA.jpg', 'image/jpeg', 286467, '2026-09-15 04:51:35', '2026-09-15 07:43:14', 9, NULL, NULL, NULL, NULL, 'EGjlCWeTrmyJR7FNddAyGYX87kD0en3CVglIoQtd', '2026-09-15 04:23:06', '2026-09-15 07:43:17'),
(434, 'WSD-20260915-X68U', 'Alya Okstifa Brillian', 'P27905125094', NULL, 7, 'Pendidikan Profesi NERS', 2026, 'alyabrillian25@gmail.com', '089638684663', 'aep wahyudin', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/434/5721edff-b8c5-4208-a793-fa9704e6711c.jpeg', '96c58599-6d31-4f65-85ab-a8529d6ac71e.jpeg', 'image/jpeg', 193406, '2026-09-15 04:24:15', '2026-09-15 07:42:53', 9, NULL, NULL, NULL, NULL, 'AKSdPMGluonaRW5Co3nXxN7ea2M5CEd2xN82NOb7', '2026-09-15 04:23:44', '2026-09-15 07:42:55'),
(435, 'WSD-20260915-VII4', 'Aisyah Nabila', 'P27903123196', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'nainabila0505@gmail.com', '081284650142', 'Aisyah Nabila', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/435/2a7291b5-5b42-48f0-a0dd-c87879a26a13.jpeg', 'Pembayaran Toga Aisyah Nabila.jpeg', 'image/jpeg', 45332, '2026-09-15 04:27:53', '2026-09-15 07:42:19', 9, NULL, NULL, NULL, NULL, 'B3lshR6wGJ26qOUfwCcZoM1Qnw25DJxC02sIFFAH', '2026-09-15 04:25:19', '2026-09-15 07:42:22'),
(437, 'WSD-20260915-ZHFF', 'HANI HANDAYANI', 'P27902123016', NULL, 2, 'D3 Kebidanan', 2026, 'hanihanda.05@gmail.com', '085775033328', 'JENAB', 'Perempuan', 'All Size', 'Data saya : \r\n- tinggi badan : 150\r\n- berat badan : 55 kg\r\nMohon untuk toga disesuaikan ukurannya agar tidak terlalu kebesaran, terimakasih pak/buu🙏', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/437/7d9e5e36-6e18-4b98-9eac-39de682380c0.jpg', 'IMG-20260915-WA0032.jpg', 'image/jpeg', 100989, '2026-09-15 04:35:05', '2026-09-15 07:41:55', 9, NULL, NULL, NULL, NULL, 'wyuGgEeWA7wFMKtMsLoxY231VnZGBvhxxB0G042s', '2026-09-15 04:32:55', '2026-09-15 07:41:58'),
(439, 'WSD-20260915-Q6SM', 'Faizha Ariqa Putri', 'P27903123062', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'ariqazone24@gmail.com', '082112528948', 'Faizha Ariqa Putri', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/439/00d9a41c-69d9-496b-bda7-0dac257b4d65.jpg', 'Sel15September20261147.jpg', 'image/jpeg', 853373, '2026-09-15 04:48:28', '2026-09-15 06:30:24', 9, NULL, NULL, NULL, NULL, 'lLCAwQxFxo4lhf3OnyojVnMKzEfNm0LbbeANueq6', '2026-09-15 04:45:52', '2026-09-15 06:30:29'),
(440, 'WSD-20260915-Q09F', 'Finry Putri Nabhila', 'P27903123112', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'putrifindry@gmail.com', '089504056206', 'Finry Putri Nabhila', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/440/2cf24f82-a56b-44fd-956c-7c2c2f81d7bc.png', 'IMG_1020.png', 'image/png', 301597, '2026-09-15 05:33:50', '2026-09-15 07:41:39', 9, NULL, NULL, NULL, NULL, 'xJJ7ykGEtSoYNYGYW92c6A26D2layUQE0n36n7V7', '2026-09-15 05:31:24', '2026-09-15 07:41:41'),
(441, 'WSD-20260915-EX2F', 'Fakhriyah', 'P27903123160', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'f.khriiyahhh@gmail.com', '081321218605', 'Fakhriyah', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/441/da487121-fc63-458f-ae0c-45353529c06a.png', 'IMG_3572.png', 'image/png', 114689, '2026-09-15 05:34:03', '2026-09-15 07:41:20', 9, NULL, NULL, NULL, NULL, 'Ttggr3FS78pOs6ljJAqxYr95xXC7N1czDuUublEG', '2026-09-15 05:32:46', '2026-09-15 07:41:22'),
(442, 'WSD-20260915-LUPJ', 'Yolanda Septriasa Nurman Hanah', 'P27903123097', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'yolandaseptriasa20@gmail.com', '081382068174', 'N Nuraeni', 'Perempuan', 'All Size', '-', 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NcrWS0qqElIBNBUJVoiGRtZvMZAtLMOp46zAcZH4', '2026-09-15 05:33:31', '2026-09-15 05:33:31'),
(443, 'WSD-20260915-3QRF', 'Nur Fadila', 'P27905126120', NULL, 8, 'Sarjana Terapan Keperawatan', 2026, 'nurfadilaa1506@gmail.com', '083813311493', 'Nur Fadila', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/443/2f617e33-5a5f-4a0b-a62d-ffc306f0ac6c.jpg', 'Screenshot_2026-09-15-12-39-47-18_f0d5010b4078101d669cabe708845c5e.jpg', 'image/jpeg', 625661, '2026-09-15 05:41:54', '2026-09-15 07:41:03', 9, NULL, NULL, NULL, NULL, 'BVc8ZoqvKMExvqcTLqgqu1FOAni3k4jnjVBsw8sH', '2026-09-15 05:41:22', '2026-09-15 07:41:06'),
(444, 'WSD-20260915-X38N', 'AQILAH FAIRUZ ZAHRAH', 'P27903123201', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'aqilahfairuz57@gmail.com', '089518564304', 'AQILAH FAIRUZ ZAHRAH', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/444/95ae4641-c8a5-473c-a844-b3611327b476.jpg', 'IMG-20260915-WA0000.jpg', 'image/jpeg', 70222, '2026-09-15 05:46:13', '2026-09-15 07:40:44', 9, NULL, NULL, NULL, NULL, 'cGDRASVakoWVEk6ULIsCtXp4xfyNGozkVgNO2Z20', '2026-09-15 05:44:25', '2026-09-15 07:40:46'),
(445, 'WSD-20260915-WJJZ', 'Syaffa Allysia', 'P27903123236', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'syaffaallysiaa.30@gmail.com', '083890883349', 'Syaffa Allysia Wardojo', 'Perempuan', 'All Size', 'Untuk UK 3XL Muat tidak ya kak', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/445/0fa17dea-b74e-4f74-85b1-51b68f3cc4ad.jpg', 'WA_1789451420256.jpg', 'image/jpeg', 235346, '2026-09-15 05:51:30', '2026-09-15 07:40:25', 9, NULL, NULL, NULL, NULL, 'bkbJrdAAVXEFp7aL7oSXtT6NHgqGN5aQqbIjUD0k', '2026-09-15 05:50:55', '2026-09-15 07:40:28'),
(446, 'WSD-20260915-C7H1', 'Meili Hayatunnupus', 'P27905125046', NULL, 7, 'Pendidikan Profesi NERS', 2026, 'Hayatunupusmeili@gmail.com', '085770317871', 'Meili Hayatunnupus', 'Perempuan', 'All Size', 'Pastikan jahitan bagus dan sesuai', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/446/bc392a56-8255-49d1-a4e1-f6e454b9717d.png', 'IMG_3665.png', 'image/png', 109671, '2026-09-15 06:01:54', '2026-09-15 07:37:32', 9, NULL, NULL, NULL, NULL, 'yb79uIwyYw743MvU0ieLBvqRXRr18VtDyKca5SoZ', '2026-09-15 05:55:16', '2026-09-15 07:37:34'),
(447, 'WSD-20260915-3KCP', 'Indah Tri Aprilyanti', 'P27903123118', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'aprilyantiindahtri@gmail.com', '085778072187', 'Peri Juniawan', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/447/40aa2c11-34a8-46a0-a1c7-476c58652b0a.jpeg', '774dbeb8-be46-456e-a6c8-e1d9c077f0b7.jpeg', 'image/jpeg', 57278, '2026-09-15 11:51:04', '2026-09-16 01:57:26', 9, NULL, NULL, NULL, NULL, 'M6cHkVd6WFswSxy2ddRDYM6nT7bnbCs3DDkMCqS7', '2026-09-15 06:04:09', '2026-09-16 01:57:29'),
(448, 'WSD-20260915-QREO', 'Dewi Susanti', 'P27905125043', NULL, 7, 'Pendidikan Profesi NERS', 2026, 'susterdewi20@gmail.com', '085692592434', 'Dewi Susanti', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/448/e17dd9d2-a164-4c46-ac76-19f90ae3e241.jpg', 'Screenshot_20260915_131158_SeaBank.jpg', 'image/jpeg', 256625, '2026-09-15 06:12:27', '2026-09-15 07:40:02', 9, NULL, NULL, NULL, NULL, 'zlkYQ9b0SFqfJA0VmqfTM7KhrePN4ZPY2dUcMq6p', '2026-09-15 06:09:12', '2026-09-15 07:40:05'),
(449, 'WSD-20260915-9ZW6', 'Fiarenza Bilqis', 'P27904122011', NULL, 8, 'Sarjana Terapan Keperawatan', 2026, 'fiarenzabilqisku@gmail.com', '087772666474', 'Fiarenza Bilqis', 'Perempuan', 'All Size', 'Untuk tinggi badan 152 cm', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/449/86ae31e6-bbe7-4bd0-8653-39502d42fd17.png', 'IMG_4334.png', 'image/png', 176604, '2026-09-15 06:11:56', '2026-09-15 07:39:44', 9, NULL, NULL, NULL, NULL, 'qgXskeZrX8700A1n77dpfPQ1h8mD9mvWN5VxHTDe', '2026-09-15 06:09:57', '2026-09-15 07:39:47'),
(450, 'WSD-20260915-MXG3', 'Rayhan Hafids Ardhita', 'P27903123183', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'rayhanhafidsardhita26@gmail.com', '0895378650906', 'Rayhan Hafids Ardhita (saya sendiri)', 'Laki-laki', 'All Size', 'Saya mau ukuran toganya L', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/450/3dee19f1-beb7-4504-96d0-3626844b4b9a.jpg', 'Screenshot_2026-09-15-13-21-20-35_108c94adbf0eadedf3ece0276fc9de80.jpg', 'image/jpeg', 378703, '2026-09-15 06:22:15', '2026-09-15 07:39:24', 9, NULL, NULL, NULL, NULL, 'KDK9F3LFJZLOlAahPosqCRUQpSdJB6HbOe7kdW76', '2026-09-15 06:15:31', '2026-09-15 07:39:27'),
(451, 'WSD-20260915-XYUT', 'Rahma Septyana', 'P27903123133', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'rahmaseptyana2004@gmail.com', '085218249216', 'Rahma Septyana', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/451/8a9427c6-f105-4ec4-97dc-94c9499eb16c.png', 'IMG_5668.png', 'image/png', 312155, '2026-09-15 06:43:14', '2026-09-15 07:38:48', 9, NULL, NULL, NULL, NULL, 'NOzNllO22rDrimMtBg0jpkA6iiJtMsG4IYZc40BA', '2026-09-15 06:41:18', '2026-09-15 07:38:50'),
(452, 'WSD-20260915-BNAK', 'ALFINA JULFA', 'P27903123149', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'alvinazulfa87@gmail.com', '089603813627', 'Hernayati ( ALFINA JULFA)', 'Perempuan', 'All Size', 'Ukuran Toga M', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/452/7375a551-76e3-43d3-a6ab-4f89ebb39c71.jpg', 'Sel15September20261135.jpg', 'image/jpeg', 840065, '2026-09-15 06:46:37', '2026-09-15 06:53:05', 9, NULL, NULL, NULL, NULL, '9iZLSJQNs2Ow7G9we8NdrRInT9VHYxyCHZGbyLAg', '2026-09-15 06:45:39', '2026-09-15 06:53:09'),
(454, 'WSD-20260915-EBY6', 'Rayna Tasya Pelita', 'P27904122081', NULL, 8, 'Sarjana Terapan Keperawatan', 2026, 'raynatasyapelitaazis181@gmail.com', '085771914638', 'Rayna Tasya Pelita', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/454/5da5a157-7664-42c9-8e96-292dc07a72cc.jpeg', 'IMG_1215.jpeg', 'image/jpeg', 160868, '2026-09-15 07:11:01', '2026-09-15 07:38:23', 9, NULL, NULL, NULL, NULL, 'FWUxdfPhCkocOc0qeqKhmzuRaIDXDKVvbpoK0I3c', '2026-09-15 07:09:58', '2026-09-15 07:38:26'),
(455, 'WSD-20260915-4FKU', 'NOVELLIA RAHMATIKA', 'P27905125029', NULL, 7, 'Pendidikan Profesi NERS', 2026, 'athayatimaarhey@gmail.com', '083166157375', 'Novellia Rahmatika', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '764uaEmv5DmqcHxdYfENZR9u8JiIFvzdP8aYdWvV', '2026-09-15 07:12:55', '2026-09-15 07:12:55'),
(456, 'WSD-20260915-V0UA', 'Bunga Juita Saputri', 'P27905125012', NULL, 7, 'Pendidikan Profesi NERS', 2026, 'bungasptri22@gmail.com', '083115370266', 'Bunga Juita Saputri', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FCOXgmPAj4xFCpWbe4iM8eEkJCO1F00Y1ENgZ9sB', '2026-09-15 07:15:09', '2026-09-15 07:15:09'),
(457, 'WSD-20260915-CSZ5', 'Hugo Rayyan Rivandira', 'P27903123164', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'rayyanhugo153@gmail.com', '081298279027', 'Sudira/Hugo Rayyan Rivandira', 'Laki-laki', 'All Size', 'Tinggi 162', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/457/46893942-4fdd-4064-9bba-5769af073245.jpg', 'IMG-20260915-WA0003.jpg', 'image/jpeg', 66686, '2026-09-15 07:40:17', '2026-09-15 07:44:13', 9, NULL, NULL, NULL, NULL, 'a7Bc908NSQYPRmkyZaOLMB7ei4DsdmKHewrb27wK', '2026-09-15 07:37:54', '2026-09-15 07:44:16'),
(458, 'WSD-20260915-J032', 'Putri Indah Subhani', 'P27903123132', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'indahsubhani@gmail.com', '085167057374', 'Setiyarto', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/458/3210b639-4188-4bf0-9ce4-3b533cf7b0f0.jpeg', 'cf76d0f4-c5f2-4499-b9d9-8ee0a7064d35.jpeg', 'image/jpeg', 93851, '2026-09-15 07:49:55', '2026-09-15 07:52:58', 9, NULL, NULL, NULL, NULL, 'chZjZeeJF50xoUgktKGOQdQGMW8YTCAHcW8G6uBs', '2026-09-15 07:49:29', '2026-09-15 07:53:00'),
(459, 'WSD-20260915-DTD5', 'Rahmatul Hafizah', 'P27903123083', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'rahmatulhafizah09@gmail.com', '083865490192', 'Iswandi HS', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/459/d521563b-fd1c-479e-bd62-47e85d9452cb.jpeg', '45c9fb0d-3396-4a8a-ab7b-b4d96facf7dd.jpeg', 'image/jpeg', 121394, '2026-09-16 01:48:28', '2026-09-16 02:39:06', 13, NULL, NULL, NULL, NULL, 'gsckCtQ0Hx8Q1bi0Xc4MWsBr1Y2YHOuov9jpQbrz', '2026-09-15 07:55:49', '2026-09-16 02:39:10'),
(466, 'WSD-20260915-GDEQ', 'Siti Adelia', 'P27904122090', NULL, 8, 'Sarjana Terapan Keperawatan', 2026, 'adeliasiti133@gmail.com', '088296469921', 'Siti Adelia', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/466/3b0fe52f-b403-46f2-aaa9-ab55b524d644.jpeg', 'toga siti adelia.jpeg', 'image/jpeg', 56943, '2026-09-15 09:01:42', '2026-09-15 09:03:17', 9, NULL, NULL, NULL, NULL, 'avvtItOsc4bJgpJTktZym1NQDYxK4zo0ajZZo0hf', '2026-09-15 08:58:11', '2026-09-15 09:03:20'),
(467, 'WSD-20260915-KPQB', 'Regita Asmara Bahari', 'P27905125035', NULL, 7, 'Pendidikan Profesi NERS', 2026, 'regitaasmarabahari002@gmail.com', '085719688717', 'Regita Asmara Bahari', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/467/3d21cfff-bfbc-4a26-8211-42fa960f99ba.jpg', 'Screenshot_20260915_164052_Gmail.jpg', 'image/jpeg', 325586, '2026-09-15 09:41:13', '2026-09-16 02:42:41', 9, NULL, NULL, NULL, NULL, 'tiFdxxUySSeMgvKownAV4Zs0kUdqghDbfg8kTIwv', '2026-09-15 09:36:10', '2026-09-16 02:42:44');
INSERT INTO `graduation_toga_orders` (`id`, `order_code`, `student_name`, `nim`, `nik`, `study_program_id`, `study_program_name`, `graduation_year`, `email`, `phone`, `transfer_sender_name`, `gender`, `toga_size`, `size_note`, `quantity`, `status`, `payment_status`, `payment_amount`, `payment_method`, `payment_proof_path`, `payment_proof_original_name`, `payment_proof_mime`, `payment_proof_size`, `payment_uploaded_at`, `payment_verified_at`, `payment_verified_by`, `payment_rejected_at`, `payment_rejected_by`, `admin_note`, `rejection_note`, `public_token`, `created_at`, `updated_at`) VALUES
(468, 'WSD-20260915-IELZ', 'Annisa Tasya Ramadhanti', 'P27902123086', NULL, 2, 'D3 Kebidanan', 2026, 'tasyaannisa1324@gmail.com', '085959710120', 'THOYIBAH', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/468/7a8b7318-692b-4c5c-bc48-faf9beaefdfe.jpg', 'IMG-20260915-WA0000.jpg', 'image/jpeg', 52946, '2026-09-15 09:47:49', '2026-09-16 02:43:08', 9, NULL, NULL, NULL, NULL, 'kU9H172uR2LPCSxlqz3tX8meXDFtieFm4B5JCzyn', '2026-09-15 09:45:03', '2026-09-16 02:43:11'),
(469, 'WSD-20260915-MHQB', 'PAHREZA ZAKA RAIHAN', 'P27904122078', NULL, 8, 'Sarjana Terapan Keperawatan', 2026, 'pahrezazaka@gmail.com', '083897671082', 'pahreza zaka raihan', 'Laki-laki', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/469/609367c9-773f-4f59-9bf9-85b264e3f12a.png', 'IMG_5911.png', 'image/png', 402018, '2026-09-15 09:51:19', '2026-09-16 02:43:33', 9, NULL, NULL, NULL, NULL, 'Kq9XbTSBokSaY66xrzUbHz4wzP7fLQxVBHkKNFx5', '2026-09-15 09:49:55', '2026-09-16 02:43:36'),
(471, 'WSD-20260915-OYJ2', 'Nurhaliza', 'P27901123033', NULL, 1, 'D3 Keperawatan', 2026, 'h50620375@gmail.com', '089626040637', 'Nurhaliza', 'Perempuan', 'All Size', 'Permisi ibu/bapak izin menginformasikan mungkin ukuran toga saya bisa agak di kecilkan seperti ukuran M/S karna saya tubuhnya kecil ibu/bapak, terima kasih🙏🏻', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/471/86615c45-d059-48a4-bce8-8e3194583c3f.jpg', 'Screenshot_20260915_175519.jpg', 'image/jpeg', 282113, '2026-09-15 10:57:32', '2026-09-16 02:43:50', 9, NULL, NULL, NULL, NULL, 'dyCq5Wra6KNV0BM1fMxvYbdNyksD059whucfPjBE', '2026-09-15 10:55:49', '2026-09-16 02:43:52'),
(472, 'WSD-20260915-Y4XA', 'Nabila Rianti', 'P27902123027', NULL, 2, 'D3 Kebidanan', 2026, 'nabilarianti0908@gmail.com', '081328418127', 'Nabila Rianti', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/472/47716f7a-34cc-45c3-8da6-df7ecb3bd1a3.jpg', 'Screenshot_20260915_182901_DANA.jpg', 'image/jpeg', 475416, '2026-09-15 11:33:08', '2026-09-16 02:44:09', 9, NULL, NULL, NULL, NULL, 'l9fx5dArPfDY3IKaX7ce0szYwlsVrnkJz3zeR4jb', '2026-09-15 11:26:21', '2026-09-16 02:44:13'),
(473, 'WSD-20260915-5AH2', 'Rinda Putri Maharani', 'P27905126131', NULL, 8, 'Sarjana Terapan Keperawatan', 2026, 'rinda6489@gmail.com', '085710430370', 'Rinda Putri Maharani', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1nKsZ9UjfFdnPl2TV74U8SOn25JXnZPbwkrwFPO9', '2026-09-15 11:43:52', '2026-09-15 11:43:52'),
(474, 'WSD-20260915-0NGY', 'Rinda Putri Maharani', 'P27904122035', NULL, 8, 'Sarjana Terapan Keperawatan', 2026, 'rinda6489@gmail.com', '085710430370', 'Rinda Putri Maharani', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/474/fa3982fe-2fc6-40dc-b937-e16f1c51dcfc.jpg', 'Screenshot_2026-09-15-18-44-44-07_121d0782f1cd8474b48c9b27865007fd.jpg', 'image/jpeg', 264362, '2026-09-15 11:46:17', '2026-09-16 02:44:31', 9, NULL, NULL, NULL, NULL, '4rKBXm2OoWdNTfwlKDFekB8HIqRjkUXlRIqJVfDs', '2026-09-15 11:45:44', '2026-09-16 02:44:35'),
(475, 'WSD-20260915-STTM', 'NIDA KHANIFAH', 'P27905125028', NULL, 7, 'Pendidikan Profesi NERS', 2026, 'nidakkhanifah07@gmail.com', '085774893393', 'MUSNAENIROH', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/475/ef225678-2890-46f8-a44b-310c22de205c.jpg', 'IMG-20260915-WA0003.jpg', 'image/jpeg', 165840, '2026-09-15 11:51:36', '2026-09-16 02:45:04', 9, NULL, NULL, NULL, NULL, 'wkfeRtjPgmTIhexBINCWMJGfvOp5LqhCFCVyyu4G', '2026-09-15 11:48:25', '2026-09-16 02:45:07'),
(476, 'WSD-20260915-5BLP', 'Riri Indriani', 'P27903123135', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'ririindriani308@gmail.com', '089526739956', 'Riri Indriani', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/476/63313f17-8121-4c49-a8f1-68e92433c70b.jpg', 'Screenshot_20260915_185238_SeaBank.jpg', 'image/jpeg', 274872, '2026-09-15 11:54:06', '2026-09-16 02:45:23', 9, NULL, NULL, NULL, NULL, '6t0EOLYNCrN4Y3VXSkx1o8Nxd8ksLJ3aVEIrIGRm', '2026-09-15 11:53:33', '2026-09-16 02:45:25'),
(477, 'WSD-20260915-CVG5', 'Nik\'mah Cahyaning Tyas', 'P27905125091', NULL, 7, 'Pendidikan Profesi NERS', 2026, 'nikmah.cahyaningtyas@gmail.com', '085215061526', 'Daryana', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/477/ce3992bd-1902-430c-aaf4-a75f47df6e47.jpeg', 'IMG_3498.jpeg', 'image/jpeg', 1580941, '2026-09-15 14:13:07', '2026-09-16 02:45:59', 9, NULL, NULL, NULL, NULL, '0weJKZZGmFw9sNWzYt0kjds0fH9C5HqTjxFXIl5K', '2026-09-15 13:05:16', '2026-09-16 02:46:01'),
(478, 'WSD-20260915-RPHX', 'Nazwa Aryanti Diannisa', 'P27903123078', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'arynzzd@gmail.com', '085932191291', 'Ghalda Yuli', 'Perempuan', 'All Size', '-', 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '42OWjmtWE0I5tHrahQLZTQi844OM8kWrpxw0qV8X', '2026-09-15 13:18:36', '2026-09-15 13:18:36'),
(479, 'WSD-20260915-KV3T', 'Syifa Uzzakiyah', 'P27902123159', NULL, 2, 'D3 Kebidanan', 2026, 'syifauzzakiyah60@gmail.com', '085697263274', 'Syifa Uzzakiyah', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/479/ed2c0bd4-7a6e-44db-8651-1b873036d825.png', 'IMG_9608.png', 'image/png', 467554, '2026-09-15 13:28:17', '2026-09-16 02:44:15', 13, NULL, NULL, NULL, NULL, 'HuQ2TD8K6cZKfol3uOpTvBQYojCneOphAFty9FJQ', '2026-09-15 13:25:09', '2026-09-16 02:44:19'),
(480, 'WSD-20260915-4FQ1', 'Aprila azana Maghribella', 'P27901123058', NULL, 1, 'D3 Keperawatan', 2026, 'Aprilaazana@gmail.com', '0895342108775', 'Asdi Surahman Dan Dwi Juniarti', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/480/64565e90-dac3-460c-95e4-fc6cbf0ac6ae.jpeg', '38089c6e-267c-447f-96ba-a9f9a6ef418c.jpeg', 'image/jpeg', 74218, '2026-09-15 13:27:48', '2026-09-16 02:43:05', 13, NULL, NULL, NULL, NULL, 'ielM6YUdOuRmmlMEaBASdsfTGKaetQKAkDBDv02m', '2026-09-15 13:27:26', '2026-09-16 02:43:09'),
(481, 'WSD-20260915-LEO9', 'AYU SARAH RAHMAYANTI', 'P27902123126', NULL, 2, 'D3 Kebidanan', 2026, 'ayusarahmayanti@gmail.com', '085887669113', 'AYU SARAH RAHMAYANTI', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/481/6046655a-b968-4000-b9bf-c461684e8821.jpg', 'Screenshot_2026-09-15-20-31-11-267_id.dana.jpg', 'image/jpeg', 485779, '2026-09-15 13:33:41', '2026-09-16 02:42:14', 9, NULL, NULL, NULL, NULL, '5OgNJx3h5FjPmbKArt4lAA35fMefMDA8sh0Ox7TJ', '2026-09-15 13:33:11', '2026-09-16 02:42:17'),
(483, 'WSD-20260915-T3QV', 'Mukti Nurul Vazri', 'P27903123175', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'muktig719@gmail.com', '089527502606', 'Enung Nurhani', 'Laki-laki', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/483/8d6bccf3-022a-4d10-8acc-e307f4e42fc2.jpeg', 'ff20c96a-6753-454d-a436-fa45ab4dd6c2.jpeg', 'image/jpeg', 74140, '2026-09-15 13:48:01', '2026-09-16 02:42:25', 13, NULL, NULL, NULL, NULL, 'izG1gRMnqEYQduAkYzGLFE8TRMVaInuKBdXmjb5h', '2026-09-15 13:42:38', '2026-09-16 02:42:28'),
(484, 'WSD-20260915-OMK4', 'Ayu susinta', 'P27902123127', NULL, 2, 'D3 Kebidanan', 2027, 'susintaayu@gmail.com', '085217787310', 'Ayu susinta', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'xBIVcs6jSvFka8zRChZ0Z2Y24foyXksGxUN39WS6', '2026-09-15 13:46:03', '2026-09-15 13:46:03'),
(485, 'WSD-20260915-ADVK', 'Erni Septiana Ariyanti', 'P27902123135', NULL, 2, 'D3 Kebidanan', 2026, 'ariantyerni@gmail.com', '083837218353', 'Erni Septiana Ariyanti', 'Perempuan', 'All Size', 'Toga jurusan kebidanan', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/485/0485dab4-c4e5-4798-9a28-a9b15f024829.png', 'IMG_5977.png', 'image/png', 195244, '2026-09-15 14:34:42', '2026-09-16 02:41:23', 13, NULL, NULL, NULL, NULL, 'Ep9zvGcJpPQuYiqmPncpCLOz41OMuGR9uSPx6YiO', '2026-09-15 14:32:43', '2026-09-16 02:41:27'),
(486, 'WSD-20260915-ZIPM', 'Silvi \'Indana Rusyida', 'P27904122040', NULL, 8, 'Sarjana Terapan Keperawatan', 2026, 'silviindana02@gmail.com', '082249378504', 'SILVI INDANA RUSYIDA', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/486/59a3888b-c624-48d8-9657-9c946129a449.jpg', 'Screenshot_2026-09-15-22-06-42-34_f0d5010b4078101d669cabe708845c5e.jpg', 'image/jpeg', 651115, '2026-09-15 15:07:35', '2026-09-16 02:40:44', 9, NULL, NULL, NULL, NULL, 'lk16imST2lqdOCdQ4CD7CFGeUAQ9JDHknmCWnTPy', '2026-09-15 14:51:17', '2026-09-16 02:40:47'),
(487, 'WSD-20260915-28XT', 'Inaz Zafira', 'P27903123166', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'inazzafira12105@gmail.com', '087764258711', 'Inaz Zafira', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/487/9303afe1-e4c7-4696-a35c-c6b92c6d83c3.jpg', 'IMG-20260915-WA0047.jpg', 'image/jpeg', 82339, '2026-09-15 14:56:05', '2026-09-16 02:40:12', 9, NULL, NULL, NULL, NULL, 'MILpnof5bREKW839Djbso9kH6BT8lbThyw5OSojl', '2026-09-15 14:51:54', '2026-09-16 02:40:14'),
(488, 'WSD-20260916-PWCE', 'Dea Oktafiani Nuragnisyah Putri', 'P27902123090', NULL, 2, 'D3 Kebidanan', 2026, 'deok.putri@gmail.com', '85892706421', 'Dea Oktafiani Nuragnisyah Putri', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/488/a94e4867-c7a2-4e00-8178-6ed684334a47.jpg', 'Screenshot_2026-09-16-06-31-33-71.jpg', 'image/jpeg', 146209, '2026-09-15 23:41:59', '2026-09-16 02:40:33', 13, NULL, NULL, NULL, NULL, 'agELMIRvotZwyuulltdh8a9YUxX8EEBI1sn66Bcq', '2026-09-15 23:24:59', '2026-09-16 02:40:37'),
(489, 'WSD-20260916-ZPOO', 'Malika Zakia Razak', 'P27903123072', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'malikazakia04@gmail.com', '08991633013', 'Linda Sariani/Ulya Faza Razak', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/489/488f1b22-a1ed-4548-a980-c1710aae28c2.jpg', 'IMG-20260916-WA0004.jpg', 'image/jpeg', 60530, '2026-09-16 01:07:06', '2026-09-16 02:39:02', 9, NULL, NULL, NULL, NULL, 'IDSr4JDXgBIwRUxv75omFMv9yj5BIpfLWun28MNM', '2026-09-16 00:43:07', '2026-09-16 02:39:05'),
(491, 'WSD-20260916-PXF5', 'Fadya Nurmeysandi', 'P27901123068', NULL, 1, 'D3 Keperawatan', 2026, 'nengfadya65@gmail.com', '087846962096', 'Fadya Nurmeysandi', 'Perempuan', 'All Size', 'kalau ada ukuran M, tolong M ya', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/491/08acdcb2-cdaa-4cef-9624-348aece694bc.png', 'IMG_3811.png', 'image/png', 191787, '2026-09-16 01:22:11', '2026-09-16 02:38:18', 9, NULL, NULL, NULL, NULL, 'uc301VXaIWpJRq4fLJY2XrQIOaXMlgcpNGwzklLm', '2026-09-16 01:19:31', '2026-09-16 02:38:20'),
(492, 'WSD-20260916-XOMQ', 'SYIFA SALSABILA', 'P27903123237', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'ssabilaaa04@gmail.com', '081384006022', 'Syifa Salsabila', 'Perempuan', 'All Size', 'a.n Syifa Salsabila (UK.S)', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/492/9476c4ac-ab13-4da1-a4c1-ec2d178099e5.jpg', 'IMG_Wed Sep 16 07_54_15 GMT+07_00 2026.jpg', 'image/jpeg', 119249, '2026-09-16 01:25:58', '2026-09-16 01:28:37', 9, NULL, NULL, NULL, NULL, 'dEtDZDdOcf5S6KLSo2RC90dAJEDi4KlYM887LitZ', '2026-09-16 01:25:28', '2026-09-16 01:28:40'),
(493, 'WSD-20260916-I3VZ', 'NOVI AULIA', 'P27901123032', NULL, 1, 'D3 Keperawatan', 2026, 'nnovi9312@gmail.com', '08815373427', 'Novi Aulia', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/493/b3c32908-637b-4d8d-8c4a-4fbe5eb0a1e0.jpeg', 'IMG_0820.jpeg', 'image/jpeg', 146650, '2026-09-16 10:09:02', '2026-09-17 02:40:55', 9, NULL, NULL, NULL, NULL, 'NIy5BcMmwO536LWJJiOBgOfgZ2gnBoAjArntTBIM', '2026-09-16 01:50:03', '2026-09-17 02:40:58'),
(494, 'WSD-20260916-TXDX', 'Raysya Zafira', 'P27903123227', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'raysyazafira10@gmail.com', '089529527211', 'Raysya Zafira', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/494/4bdc26b1-0f19-441f-a172-d133ffd7eb05.jpg', 'Bukti Pembayaran Raysya Zafira.jpg', 'image/jpeg', 289485, '2026-09-16 02:15:47', '2026-09-16 02:16:41', 9, NULL, NULL, NULL, NULL, 'a1KkKv3NAUDXXyhJdG3YA0w7bHqDeCAlpxRzXIkm', '2026-09-16 02:00:27', '2026-09-16 02:16:43'),
(495, 'WSD-20260916-RN5I', 'Ajeng Ersawati', 'P27905125042', NULL, 7, 'Pendidikan Profesi NERS', 2026, 'ajengersawati492@gmail.com', '082129655604', 'Ajeng Ersawati', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/495/b863d5f9-42dd-48f7-886d-e89cbc50e9c0.png', 'IMG_0494.png', 'image/png', 413502, '2026-09-16 02:13:39', '2026-09-16 02:38:00', 9, NULL, NULL, NULL, NULL, 'pWIzRzAYhabKfwyoFlKlqcsVa1oWC3G7VDLF0pPa', '2026-09-16 02:09:31', '2026-09-16 02:38:02'),
(496, 'WSD-20260916-E7BX', 'Sri ardina mulyani', 'P27903123235', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'dinaxyna@gmail.com', '083117693420', 'Sri Ardina Mulyani', 'Perempuan', 'All Size', 'Bb 35 Tb 147', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/496/482881bf-8b1a-46f6-8c0b-dc13634d637e.jpg', 'Screenshot_20260915_172745_SeaBank.jpg', 'image/jpeg', 161877, '2026-09-16 02:13:11', '2026-09-16 02:37:03', 9, NULL, NULL, NULL, NULL, 'FcZuPuQ5w3S3MqxGf1c5saOFrP8n8eMTr6425BO7', '2026-09-16 02:12:37', '2026-09-16 02:37:06'),
(497, 'WSD-20260916-4I95', 'Oktavia Romadona', 'P27904122030', NULL, 8, 'Sarjana Terapan Keperawatan', 2026, 'oktaviaromadona412@gmail.com', '082283122886', 'Oktavia Romadona', 'Perempuan', 'All Size', 'mau uk M/L yaa buu🤭', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/497/72d2cc00-a986-4dc6-8cf1-003835af70d2.png', 'IMG_9558.png', 'image/png', 469055, '2026-09-16 02:44:14', '2026-09-16 02:47:37', 9, NULL, NULL, NULL, NULL, 'NaUdviVDPw5KY36IApqSonduD3rHmQnC7d04Ss2H', '2026-09-16 02:41:11', '2026-09-16 02:47:41'),
(499, 'WSD-20260916-BWRG', 'Lusia Hanifah', 'P27901123022', NULL, 1, 'D3 Keperawatan', 2026, 'lusiahanifah123@gmail.com', '087810324977', 'Lusia Hanifah', 'Perempuan', 'All Size', 'ukuran toga s', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/499/da8b73c1-f795-4edc-bca5-ce8b88211cc0.jpeg', '0E48C746-88B0-4B5F-93A5-585BB5BDB9DA.jpeg', 'image/jpeg', 161016, '2026-09-16 03:01:31', '2026-09-16 07:52:02', 9, NULL, NULL, NULL, NULL, 'w7R0755ZsNPGYHd94bVtb4Ctb3eSGwnGQuMDxzj8', '2026-09-16 02:59:35', '2026-09-16 07:52:08'),
(500, 'WSD-20260916-TTIA', 'Iman Nurul Zanah', 'P27905125044', NULL, 7, 'Pendidikan Profesi NERS', 2026, 'zanah7567@gmail.com', '089684862203', 'Iman Nurul Zanah', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/500/e1dd2151-f005-4356-9af9-d782d8941c0f.jpg', 'Screenshot_2026-09-16-10-01-18-359_id.co.bankbkemobile.digitalbank.jpg', 'image/jpeg', 269419, '2026-09-16 03:15:45', '2026-09-16 07:51:44', 9, NULL, NULL, NULL, NULL, 'pstEDELxdAAE36unJVnKeH1E9tPkv3H72R43S4mA', '2026-09-16 03:14:58', '2026-09-16 07:51:47'),
(501, 'WSD-20260916-IOPJ', 'Dava Rahmat Hidayat', 'P27905125053', NULL, 7, 'Pendidikan Profesi NERS', 2026, 'davarahmat19@gmail.com', '085711732016', 'Dava Rahmat Hidayat', 'Laki-laki', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/501/6560e10b-5b16-4891-b8a9-91cb541742ee.jpeg', '8BEC09F6-3F9D-4E51-B6E0-1004C43CA1B0.jpeg', 'image/jpeg', 250420, '2026-09-16 03:47:45', '2026-09-16 07:51:25', 9, NULL, NULL, NULL, NULL, 'UiaA9b2rrXcrJLGitBfjoCGZGkF6QIDJ6hbb1x1Y', '2026-09-16 03:45:41', '2026-09-16 07:51:28'),
(502, 'WSD-20260916-FVCM', 'Amalia Octaviani', 'P27903123151', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'ameliaoctaviani439@gmail.com', '085776782334', 'Amalia Octaviani', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/502/b42ce168-f16e-4f7b-a9fa-be0acc8f0445.png', 'IMG_6902.png', 'image/png', 217119, '2026-09-16 03:46:55', '2026-09-16 07:51:07', 9, NULL, NULL, NULL, NULL, '7PA8SUTG9QsE5eMagWkVCFpWINjz47C8I53aacpr', '2026-09-16 03:46:06', '2026-09-16 07:51:09'),
(503, 'WSD-20260916-BFSK', 'Rina Nirmala', 'P27903123085', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'rinanirmala5@gmail.con', '085710546928', 'Rina Nirmala', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/503/57414df3-b603-47af-83c7-7b0b89566778.png', 'IMG_4672.png', 'image/png', 219973, '2026-09-16 04:00:03', '2026-09-16 07:50:44', 9, NULL, NULL, NULL, NULL, '8ZyCk89GNysgMR1ARKmo7H5nOz8nMuAHOJiLsebF', '2026-09-16 03:59:07', '2026-09-16 07:50:48'),
(504, 'WSD-20260916-EMZI', 'Rahma Yatul Sari', 'P27902123032', NULL, 2, 'D3 Kebidanan', 2026, 'Rahmayatulsari980@gmail.com', '089643351296', 'Rahma Yatul Sari', 'Perempuan', 'All Size', 'Ukuran toba 3XL', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/504/425ffc15-198e-4bea-b1dd-616e516fe128.jpg', 'IMG_Wed Sep 16 11_03_59 GMT+07_00 2026.jpg', 'image/jpeg', 140673, '2026-09-16 04:07:54', '2026-09-16 04:18:52', 9, NULL, NULL, NULL, NULL, 'CtKgukztVOfTmzU3UgnCzZkukiBRqiMusSKDPI9L', '2026-09-16 03:59:46', '2026-09-16 04:18:55'),
(505, 'WSD-20260916-G52Y', 'Isna Arofah', 'P27905125062', NULL, 7, 'Pendidikan Profesi NERS', 2026, 'isnaarofah07@gmail.com', '085692840751', 'Irvan Maulana', 'Perempuan', 'All Size', 'ukuran baju hitamnya L ya bu/Pak', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/505/b521729f-fbbb-4cb8-8222-c6797e6d1b5c.jpg', 'IMG-20260916-WA0017.jpg', 'image/jpeg', 68371, '2026-09-16 04:09:27', '2026-09-16 04:10:44', 9, NULL, NULL, NULL, NULL, 'K2NZE1dR54EJG19CEq89KVAkDjeJPCh64PMMgyGv', '2026-09-16 04:09:01', '2026-09-16 04:10:47'),
(506, 'WSD-20260916-6GUB', 'Salza Shinta Mustopa', 'P27905126019', NULL, 8, 'Sarjana Terapan Keperawatan', 2026, 'salzashinta25@gmail.com', '081584538556', 'Salza Shinta Mustopa', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/506/f3fbb2c4-1aff-464b-96cb-6709e4c99147.png', 'Screenshot_2026-09-16-11-19-40-34.png', 'image/png', 163155, '2026-09-16 04:20:13', '2026-09-16 07:50:28', 9, NULL, NULL, NULL, NULL, 'mOyFQ7oLBm5Ygoc4zQ1mTXXKVF1AEN97dv6knV2v', '2026-09-16 04:16:36', '2026-09-16 07:50:31'),
(507, 'WSD-20260916-T8BV', 'Tika Oktaviani', 'P27904122094', NULL, 8, 'Sarjana Terapan Keperawatan', 2026, 'octaviatika27@gmail.com', '08979180311', 'Silfi Wulandari', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/507/a50ba1a2-c8bb-4d9b-9015-23640a2623e0.jpg', 'IMG-20260916-WA0012.jpg', 'image/jpeg', 81349, '2026-09-16 04:38:36', '2026-09-16 07:50:04', 9, NULL, NULL, NULL, NULL, 'IGkk5xROvyKZaYMExVpGiCRkQ1WMrUYQhS54iLog', '2026-09-16 04:24:53', '2026-09-16 07:50:07'),
(508, 'WSD-20260916-E2PY', 'Siti Ai Aliyatul Hasanah', 'P27903123188', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'sitiaialiya130@gmail.com', '0895358573324', 'Siti Ai Aliyatul Hasanah', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/508/5b7bb08c-ad84-4701-a55c-9d616928c580.jpg', 'Screenshot_20260916_113522_BRImo.jpg', 'image/jpeg', 662015, '2026-09-16 04:35:48', '2026-09-16 07:49:29', 9, NULL, NULL, NULL, NULL, 'aCzxiMWXTMR7WPkaTraoOMANixM0geHvVcr60Ce7', '2026-09-16 04:30:38', '2026-09-16 07:49:33'),
(509, 'WSD-20260916-DNJ8', 'Natasya Sofia', 'P27903123222', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2023, 'ntsyasofia07@gmail.com', '082123370626', 'Natasya Sofia', 'Perempuan', 'All Size', 'BB : 50\r\nTB : 150', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/509/be884b9f-c31f-495a-8d4d-7e294bcf93ac.png', 'IMG_3214.png', 'image/png', 272848, '2026-09-16 04:34:03', '2026-09-16 07:48:48', 13, NULL, NULL, NULL, NULL, '8wn2LmMOfxipUkNFTjr6IKMyzfAjknkWeTuOIsL2', '2026-09-16 04:32:35', '2026-09-16 07:48:51'),
(510, 'WSD-20260916-2OST', 'Joana Patricia Hutagalung', 'P27905125045', NULL, 7, 'Pendidikan Profesi NERS', 2026, 'joanapatriciahtg@gmail.com', '081263182945', 'Joana Patricia Hutagalung', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'iCFiSmrjLBwZsDiaC81B851sKjiIntxfZ6vlmTWu', '2026-09-16 05:03:26', '2026-09-16 05:03:26'),
(511, 'WSD-20260916-X7KR', 'OKKE AFIVAH MURTI', 'P27904122077', NULL, 8, 'Sarjana Terapan Keperawatan', 2026, 'okkeafivah@gmail.com', '085930233815', 'Okke Afivah Murti', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/511/2bd626bb-2bea-4e20-a01c-f8afc51aadd1.jpg', 'Screenshot_20260916_120720_DANA.jpg', 'image/jpeg', 474833, '2026-09-16 05:07:51', '2026-09-16 07:47:46', 9, NULL, NULL, NULL, NULL, 'H6Dm3Ozmx8IYPtLo2lFU3a6HGPqo14oyJb4aPFUo', '2026-09-16 05:06:40', '2026-09-16 07:47:49'),
(512, 'WSD-20260916-8GXU', 'Nasya Nabila Hermawan', 'P27903123178', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'nasyanbila13@gmail.com', '083878925131', 'Nasya Nabila Hermawan', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/512/dca1a47c-773f-4dc3-9e6f-51814a5a9d9f.jpeg', 'WhatsApp Image 2026-09-16 at 12.54.47.jpeg', 'image/jpeg', 59874, '2026-09-16 05:55:31', '2026-09-16 07:46:04', 9, NULL, NULL, NULL, NULL, '0Tac3nbeikkw0pHswOFcMyiJaOheH3RZ8CUxTOPr', '2026-09-16 05:54:14', '2026-09-16 07:46:06'),
(513, 'WSD-20260916-U4G6', 'TUTI HANDAYANI', 'P27902123042', NULL, 2, 'D3 Kebidanan', 2026, 'tutyhandayani2138@gmail.com', '083109917473', 'TUTI HANDAYANI', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/513/7245d527-d8a4-4eff-9aba-1cbb5280ece9.jpg', 'IMG-20260916-WA0010.jpg', 'image/jpeg', 291614, '2026-09-16 06:10:23', '2026-09-16 07:45:42', 9, NULL, NULL, NULL, NULL, 'C7nVmGq6IvPhiP62I2reWAjPceQ3fZso4Djqfkl9', '2026-09-16 06:05:05', '2026-09-16 07:45:45'),
(514, 'WSD-20260916-LTS0', 'Andriani', 'P27902123043', NULL, 2, 'D3 Kebidanan', 2026, 'andrianiindri434@gmail.com', '089688128676', 'Andriani', 'Perempuan', 'All Size', 'kalo bisa uk L ka🙏🏻', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/514/04a30abe-42d8-41c4-ac05-a299fd181428.jpg', 'Screenshot_20260916_130912_DANA.jpg', 'image/jpeg', 573741, '2026-09-16 06:09:48', '2026-09-16 07:45:20', 9, NULL, NULL, NULL, NULL, 'qfTqzd12TR0Du08CMOqwEHGKHEtNnnxvDu21ghe2', '2026-09-16 06:07:03', '2026-09-16 07:45:24'),
(515, 'WSD-20260916-DQDA', 'INTAN SABRINA ALI NASUTION', 'P27902123140', NULL, 2, 'D3 Kebidanan', 2026, 'sabrinanasution1345@gmail.com', '089637880921', 'INTAN SABRINA ALI NASUTION', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/515/029fb383-688f-4fd8-aec8-ef722c28dc17.jpeg', '07cd191c-66cf-4209-b842-2130e72aa0a9.jpeg', 'image/jpeg', 54590, '2026-09-16 06:49:54', '2026-09-16 07:44:53', 9, NULL, NULL, NULL, NULL, '7b1Wd0NxYFKIwMfKYetQTEqFNDmO6T5LWolweHn0', '2026-09-16 06:47:28', '2026-09-16 07:44:57'),
(516, 'WSD-20260916-RXIB', 'Alfira Dyah Nur Safitri', 'P27903123052', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'alfiradiah1111@gmail.com', '0895630386676', 'Alfira Dyah Nur Safitri', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/516/8a417080-2248-48b7-9a9a-8885e84a44c6.png', 'reJumeipt_58678_05_10_09_17_01.png', 'image/png', 457218, '2026-09-16 07:18:15', '2026-09-16 07:44:23', 9, NULL, NULL, NULL, NULL, 'ZLtYjXp3Qg4iEKMHrzh2Hv1euCz3PGC2fGHa15uz', '2026-09-16 07:17:46', '2026-09-16 07:44:27'),
(517, 'WSD-20260916-2GZD', 'Azizah Putri Ramadhani', 'P27902123128', NULL, 2, 'D3 Kebidanan', 2026, 'azizahp800@gmail.com', '085714459001', 'Winarti', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/517/43fc1815-998d-4984-b4e9-d3a1e4af7aba.jpg', 'IMG-20260916-WA0020.jpg', 'image/jpeg', 56698, '2026-09-16 08:05:27', '2026-09-17 02:41:17', 9, NULL, NULL, NULL, NULL, '0vLLz5SezZWss7FExalWVHtq5d49s2xp6uUxbi9J', '2026-09-16 07:58:03', '2026-09-17 02:41:20'),
(518, 'WSD-20260916-3299', 'Detha Meilani', 'P27902123008', NULL, 2, 'D3 Kebidanan', 2023, 'meilanidetha@gmail.com', '083841264388', 'DETHA MEILANI', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/518/7489d0d3-e40b-4f82-8dd8-1419d721d1fe.jpeg', 'WhatsApp Image 2026-09-16 at 15.01.57.jpeg', 'image/jpeg', 76703, '2026-09-16 08:03:37', '2026-09-17 02:41:34', 9, NULL, NULL, NULL, NULL, 'QqjtbN86pQjQzsYAEdXTwUZCKVIVZEeaB9ej59pj', '2026-09-16 07:59:53', '2026-09-17 02:41:37'),
(519, 'WSD-20260916-UKCR', 'Nurhasanah', 'P27903123224', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'nsanah522@gmail.com', '083125583586', 'Bahrudin Akbar', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/519/04705b49-9fe3-46ba-9fd7-521a68499685.jpg', 'IMG-20260916-WA0011.jpg', 'image/jpeg', 51358, '2026-09-16 09:25:04', '2026-09-17 02:41:53', 9, NULL, NULL, NULL, NULL, 'PSHlUe5hKWnPupNIk5WrnfpPTsgFsNhbhYPO1cHb', '2026-09-16 09:23:13', '2026-09-17 02:41:56'),
(520, 'WSD-20260916-VGYT', 'Gita Rhamadhani', 'P27902123015', NULL, 2, 'D3 Kebidanan', 2026, 'gitaramadhaniii19@gmail.com', '085882445922', 'Gita Rhamadhani', 'Perempuan', 'All Size', 'Data saya :\r\n- Tinggi badan :155 Cm \r\n- Berat badan : 50 kg \r\nMohon untuk toga disesuaikan ukurannya agar tidak terlalu kebesaran , terimakasih pak/bu🙏☺️', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/520/f6188c29-014c-4404-add7-a25c3ac863ab.png', 'IMG_1716.png', 'image/png', 847270, '2026-09-16 09:45:16', '2026-09-17 02:42:26', 9, NULL, NULL, NULL, NULL, '0m2J86hasVAGABoawkfmzoFSWNsiDF3bSRtRAl37', '2026-09-16 09:44:36', '2026-09-17 02:42:29'),
(521, 'WSD-20260916-NTRC', 'Wawan Setiawan', 'P27904122095', NULL, 8, 'Sarjana Terapan Keperawatan', 2026, 'ws05052003@gmail.com', '083841241297', 'Wawan Setiawan', 'Laki-laki', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/521/03b3bf2c-f194-4d12-9a80-c9d1b55abd03.jpg', 'IMG-20260916-WA0057.jpg', 'image/jpeg', 81178, '2026-09-16 10:04:39', '2026-09-17 02:42:42', 9, NULL, NULL, NULL, NULL, 'SzD5Tgtah8ipiZWh99mJ48Y09zRQDrZYSXfHV2Np', '2026-09-16 09:58:49', '2026-09-17 02:42:45'),
(523, 'WSD-20260916-PFB1', 'Titi Damayanti', 'P27904122046', NULL, 8, 'Sarjana Terapan Keperawatan', 2026, 'titidamayanti80@gmail.com', '085839398749', 'Titi Damayanti', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/523/68624147-bf4e-44e7-89b7-73f224947881.jpg', 'Screenshot_2026-09-16-17-09-34-38_121d0782f1cd8474b48c9b27865007fd.jpg', 'image/jpeg', 169891, '2026-09-16 10:10:11', '2026-09-17 02:43:00', 9, NULL, NULL, NULL, NULL, 'gfAprViqydW8Pn1rFfFOxQp2E4IY3LVxshCi16hV', '2026-09-16 10:06:57', '2026-09-17 02:43:03'),
(524, 'WSD-20260916-WC94', 'Alzena Rafa Zafira', 'P27903123102', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'ranazari1404@gmail.com', '081213477940', 'Alzena Rafa Zafira', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/524/4d623f8b-beb8-4b16-a692-2838b420a317.jpg', 'IMG-20260916-WA0028.jpg', 'image/jpeg', 80022, '2026-09-16 10:44:42', '2026-09-17 02:39:51', 9, NULL, NULL, NULL, NULL, 'q2et6LLfaVa9sCAyOqy4gdEbqk7AQCH8eKwSGdQ5', '2026-09-16 10:39:31', '2026-09-17 02:39:54'),
(525, 'WSD-20260916-KUEH', 'Khayrotul Husna', 'P27903123120', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'khayrotulhusna.2c@gmail.com', '085697961695', 'Khayrotul Husna', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/525/ce08be1c-8584-48d9-9323-9cb1e011fc3d.png', 'IMG_6713.png', 'image/png', 552151, '2026-09-16 10:51:58', '2026-09-17 02:39:27', 9, NULL, NULL, NULL, NULL, 'AQgpAehkDBEEt2sIDzQ7TDCxuSlYdoSQz6zxsZkc', '2026-09-16 10:51:31', '2026-09-17 02:39:31'),
(526, 'WSD-20260916-J2QT', 'NIKITA YUSUF', 'P27905125090', NULL, 7, 'Pendidikan Profesi NERS', 2026, 'nikitayusuf901@gmail.com', '089635825660', 'Nikita Yusuf', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/526/e74f1ee2-01bf-4183-ab16-855b4b391149.jpg', 'IMG-20260916-WA0000.jpg', 'image/jpeg', 71203, '2026-09-16 10:55:42', '2026-09-17 02:39:09', 9, NULL, NULL, NULL, NULL, 'xVayQsbfovyYEbTcM7vYDEV04yljlF0Q1vAA0q2d', '2026-09-16 10:54:54', '2026-09-17 02:39:11'),
(527, 'WSD-20260916-X0HH', 'Naswa Nathania', 'P27904122023', NULL, 8, 'Sarjana Terapan Keperawatan', 2026, 'nathania.200603@gmail.com', '081318390822', 'Nurseha/Naswa Nathania', 'Perempuan', 'All Size', 'Ukuran XL', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/527/b3d13562-256c-47d4-ba00-d9e13fda571e.png', 'IMG_3750.png', 'image/png', 169308, '2026-09-16 11:30:32', '2026-09-17 02:38:51', 9, NULL, NULL, NULL, NULL, 'lFr8QYZH9Cc2VoVD8Dxxyuxx8M4XQGnHtnPv4711', '2026-09-16 11:28:09', '2026-09-17 02:38:53'),
(528, 'WSD-20260916-NG7X', 'Devi Nurmeika', 'P27903123156', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'devinurmeika@gmail.com', '085772793538', 'Devi Nurmeika', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/528/a7b63c4f-0526-404b-b641-5e9be764e5b0.png', 'IMG_6078.png', 'image/png', 119728, '2026-09-16 11:52:53', '2026-09-17 02:38:32', 9, NULL, NULL, NULL, NULL, 'RS0XKarmiqNXJwDlnevioiipowDArddE56UqeL8k', '2026-09-16 11:50:36', '2026-09-17 02:38:34'),
(529, 'WSD-20260916-G8DX', 'Nila Arroya', 'P27904122026', NULL, 8, 'Sarjana Terapan Keperawatan', 2026, 'arroyaaa051@gmail.com', '082175450130', 'Nila Arroya', 'Perempuan', 'All Size', 'Ukuran M', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/529/edc61255-4631-4989-ae27-64f129916c6f.png', 'IMG_0244.png', 'image/png', 374474, '2026-09-16 12:01:23', '2026-09-17 02:38:13', 9, NULL, NULL, NULL, NULL, 'ZrfCfLTvF1BI8k5XzUW2c9SEnrj1xEdFkGuZoifb', '2026-09-16 11:59:26', '2026-09-17 02:38:16'),
(530, 'WSD-20260916-SCR9', 'Amanda Revitasari', 'P27904122052', NULL, 8, 'Sarjana Terapan Keperawatan', 2026, 'amandarevitasari91@gmail.com', '081392089219', 'Amanda', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/530/5fb56eb2-411c-4459-9e4e-961b3fec9baf.png', 'reKameipt_58678_12_26_20_45_41.png', 'image/png', 450530, '2026-09-16 12:52:55', '2026-09-17 02:37:35', 9, NULL, NULL, NULL, NULL, 'V49VtjkseJXPdZRFrsC90hmzT8cuGHovdvd3LMw1', '2026-09-16 12:43:21', '2026-09-17 02:37:39'),
(531, 'WSD-20260916-P6HW', 'Siti Aisyah Nurman', 'P27902123073', NULL, 2, 'D3 Kebidanan', 2026, 'aisyahnurman245@gmail.com', '082110912274', 'Siti Aisyah Nurman', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/531/cae61d9c-a393-4a6e-b627-acbeaf643812.png', 'reSeneipt_58678_12_30_21_47_46.png', 'image/png', 412847, '2026-09-16 12:52:06', '2026-09-17 02:37:18', 9, NULL, NULL, NULL, NULL, 'upBentN5Ok4jexFxH9XmeyaetNo475cc4cbA0ejE', '2026-09-16 12:49:42', '2026-09-17 02:37:20'),
(532, 'WSD-20260916-PTVO', 'Dara Jingga mahameru', 'p27902123048', NULL, 2, 'D3 Kebidanan', 2026, 'darajingga618@gmail.com', '083872917316', 'dara Jingga mahameru', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/532/dc1dec86-79b5-4d75-92c9-a418c4c17ff8.jpg', 'Screenshot_20260916_203338.jpg', 'image/jpeg', 158589, '2026-09-16 13:34:03', '2026-09-17 02:36:53', 9, NULL, NULL, NULL, NULL, '8WJICcwzXoEjf9GRDJElSkE7gM9nLujHH92hKtqd', '2026-09-16 13:32:23', '2026-09-17 02:36:56'),
(533, 'WSD-20260916-FC63', 'Vivi Ramadhani', 'P27902123081', NULL, 2, 'D3 Kebidanan', 2026, 'vivirny@gmail.com', '089627461701', 'Vivi Ramadhani', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/533/7cfb6175-aec3-48f1-9785-9daa0f63886e.png', 'Screenshot_20260916-220104.png', 'image/png', 174984, '2026-09-16 15:01:41', '2026-09-17 02:36:34', 9, NULL, NULL, NULL, NULL, 'wqmP8Vfysa7a1fBfsD1Pcllv31sCmFOxuZ3va7NA', '2026-09-16 15:00:22', '2026-09-17 02:36:39'),
(534, 'WSD-20260916-PFLT', 'Maya Sofatul Apifah', 'P27902123025', NULL, 2, 'D3 Kebidanan', 2026, 'msofatulafipah@gmail.com', '08568051271', 'Maya Sofatul Apifah', 'Perempuan', 'All Size', NULL, 1, 'payment_verified', 'verified', NULL, NULL, 'wisuda/payment-proofs/534/839017e5-8d27-4896-94dc-862c47e6cdcc.png', 'TOGA MAYA SOFATUL APIFAH.PNG', 'image/png', 223048, '2026-09-16 15:11:29', '2026-09-17 02:36:05', 9, NULL, NULL, NULL, NULL, 'gfDl3FnAj0KeVHYUGy5irZXpivgRt8g4cPaKMMVB', '2026-09-16 15:09:13', '2026-09-17 02:36:05'),
(535, 'WSD-20260916-3YUO', 'Kusti Susilawati', 'p27902123023', NULL, 2, 'D3 Kebidanan', 2026, 'kustisusilawati3@gmail.com', '085691306171', 'Kusti Susilawati', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/535/dd72f555-7bb2-428a-8f13-add8d4ac860d.png', 'IMG_5385.png', 'image/png', 187042, '2026-09-16 15:12:17', '2026-09-17 02:35:41', 9, NULL, NULL, NULL, NULL, 'spmmFKlYkMsA7hLRLUgqYZ06hm4kLEqASwPRz3zr', '2026-09-16 15:10:08', '2026-09-17 02:35:46'),
(536, 'WSD-20260916-SUK9', 'Sulistiawati', 'P27903123191', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'ulistiawt@gmail.com', '085714784839', 'Sulistiawati', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/536/8b0d7f2b-0b5c-4752-824d-66b7d6690107.png', 'IMG_1951.png', 'image/png', 190891, '2026-09-16 15:16:02', '2026-09-17 02:35:23', 9, NULL, NULL, NULL, NULL, 'y7zL6jl40BQTkDoaG9v7SVMrjxeScKTR6n6OPvGY', '2026-09-16 15:15:30', '2026-09-17 02:35:25'),
(537, 'WSD-20260916-S5KT', 'Wilda Inayah', 'P27906125047', NULL, 6, 'Sarjana Terapan Keperawatan RPL', 2026, 'wildainayah312@gmail.com', '087777210873', 'Wilda Inayah', 'Perempuan', 'All Size', 'Ukuran Toga L', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/537/cb166b21-2c2a-4306-bcd1-fb55a14ee594.jpeg', 'IMG_2516.jpeg', 'image/jpeg', 171021, '2026-09-16 15:18:01', '2026-09-17 02:34:55', 9, NULL, NULL, NULL, NULL, 'FzPR2NjDr8xJ3lUBMB1r2Lb7sRlBzpgI167Tf87k', '2026-09-16 15:17:21', '2026-09-17 02:34:58'),
(538, 'WSD-20260916-XMZD', 'Sumenah', 'P27906125041', NULL, 6, 'Sarjana Terapan Keperawatan RPL', 2026, 'sumenah012@gmail.com', '083811856601', 'Sumenah', 'Perempuan', 'All Size', '(Ukuran Toga : S)', 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'IlG3t1hzwbOjM1TEv6DXXnCqOPaRMOWWYIdSr03u', '2026-09-16 15:30:07', '2026-09-16 15:30:07'),
(539, 'WSD-20260916-TWWJ', 'Wynda Damayanti', 'P27906125048', NULL, 6, 'Sarjana Terapan Keperawatan RPL', 2026, 'wyndadamayanti835@gmail.com', '085279645879', 'Wynda Damayanti', 'Perempuan', 'All Size', 'ukuran S', 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ZabKVLbDlIpMd9zOSEOSZxQjJkgsrJJw9fiO3RXz', '2026-09-16 15:30:44', '2026-09-16 15:30:44'),
(540, 'WSD-20260916-RLRL', 'ANANDA HELVIKA NENO', 'P27903123006', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'vikaneno2016@gmail.com', '08987026283', 'Ananda Helvika Neno', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/540/6c696409-a5be-44d8-bdd7-822d32cbcc51.jpg', 'Screenshot_20260916_224302_DANA.jpg', 'image/jpeg', 751475, '2026-09-16 15:45:32', '2026-09-17 02:43:28', 9, NULL, NULL, NULL, NULL, 'hHcWWZxmHxVVX1FWfqFMQR3VOQT7REAFzJcCq9Ew', '2026-09-16 15:44:07', '2026-09-17 02:43:30'),
(541, 'WSD-20260916-LTDU', 'SELVIA DESTI FITRIANI', 'P27903123041', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'selviadestifitriani@gmail.com', '087771644834', 'Selvia Desti Fitriani', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/541/f7bcc5e9-a43d-4f54-823a-507509fe7a3e.jpeg', '32F70079-D51A-48DF-B08D-4CE907C65A1E.jpeg', 'image/jpeg', 272757, '2026-09-16 15:45:35', '2026-09-17 02:34:13', 9, NULL, NULL, NULL, NULL, 'NzGNtC0XcHSQv5t51XGLT4vthZGYFkX4ltm44yny', '2026-09-16 15:44:09', '2026-09-17 02:34:16'),
(542, 'WSD-20260916-JKZT', 'Chantika Deandra Rosadi', 'P27903123009', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'chantikaadr@gmail.com', '083897374243', 'Chantika Deandra Rosadi', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/542/a65d6339-1ffc-44f9-933d-740803329ec5.png', 'IMG_2092.png', 'image/png', 959794, '2026-09-16 16:02:14', '2026-09-17 02:33:53', 9, NULL, NULL, NULL, NULL, 'seh2NH8115xRaoODwtzQbHdSiVx0o6QbJiBHSg8i', '2026-09-16 15:58:55', '2026-09-17 02:33:56'),
(543, 'WSD-20260917-KT3Q', 'ISMIFTA YUDHI AINUN BALQIS', 'P27902123103', NULL, 2, 'D3 Kebidanan', 2026, 'ismifthayabalqis@gmail.com', '089503873306', 'ISMIFTA YUDHI AINUN BALQIS', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/543/fc205ad8-1c85-4707-88ae-b605dade82d2.jpg', 'IMG-20260917-WA0000.jpg', 'image/jpeg', 75933, '2026-09-16 17:20:42', '2026-09-17 02:33:29', 9, NULL, NULL, NULL, NULL, 'sGT65QFWq2s27b84x0UlBZwMIr9nuekjxLm0Mmgh', '2026-09-16 17:19:30', '2026-09-17 02:33:33'),
(544, 'WSD-20260917-Y3VK', 'Selindia Eka Prasasti', 'P27904122038', NULL, 8, 'Sarjana Terapan Keperawatan', 2026, 'shelinekaa4@gmail.com', '089523674289', 'Selindia Eka Prasasti', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/544/8110eedc-27e4-4c33-b957-40c710447619.jpg', 'Screenshot_20260917-002429.jpg', 'image/jpeg', 267240, '2026-09-16 17:25:53', '2026-09-17 02:32:59', 9, NULL, NULL, NULL, NULL, 'EMmCQlVaiS31rOY0LYVIByfRTQ7cJOw7HwNKI9eQ', '2026-09-16 17:25:34', '2026-09-17 02:33:01'),
(545, 'WSD-20260917-YQSY', 'Safinatun Najah', 'P27904122084', NULL, 8, 'Sarjana Terapan Keperawatan', 2026, 'safinatunnajah0804@gmail.com', '0895413667709', 'Safinatun Najah', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/545/fe5c1b2a-3011-42cb-b0ab-a1b82f8f6611.jpg', 'IMG_Thu Sep 17 02_29_06 GMT+07_00 2026.jpg', 'image/jpeg', 101309, '2026-09-16 19:31:02', '2026-09-17 02:43:50', 9, NULL, NULL, NULL, NULL, '8xdskpl1sVwn0x2rHkCtuyQvRuOp8SaSgzUu4Jd5', '2026-09-16 19:30:17', '2026-09-17 02:43:54'),
(546, 'WSD-20260917-JRQ5', 'Dea Nur Asisya', 'P27903123057', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'deanurasisya12@gmail.com', '081368844983', 'Dea Nur Asisya', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/546/f02c74ff-c3fa-4657-9b25-5019d1db3fde.jpg', 'Screenshot_20260917-051314_DANA.jpg', 'image/jpeg', 268471, '2026-09-16 22:15:12', '2026-09-17 02:32:20', 9, NULL, NULL, NULL, NULL, 'UxjpdUoN70HDaO9DEw6y1gBLyJoqJdk9buxBnRT6', '2026-09-16 22:14:40', '2026-09-17 02:32:22'),
(547, 'WSD-20260917-ZML5', 'Muhamad Faqih Alfaridzki', 'P27903123173', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'muhamadfaqihalfaridzki@gmail.com', '82258558516', '-', 'Laki-laki', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/547/6e04803b-d3d8-4a2e-b589-0d4e2c0e40a6.jpg', 'IMG_Thu Sep 17 07_26_19 GMT+07_00 2026.jpg', 'image/jpeg', 195467, '2026-09-17 00:26:48', '2026-09-17 02:31:38', 9, NULL, NULL, NULL, NULL, 'HP6mXh9cAJ8bbZrwm8pdncUrNmOtCytQxWa5rHRn', '2026-09-17 00:25:23', '2026-09-17 02:31:40'),
(548, 'WSD-20260917-TBEF', 'Wanda Fadilah', 'P27904122048', NULL, 4, 'Sarjana Terapan Keperawatan Reguler', 2026, 'wandafadilah6@gmail.com', '0895414001931', 'Rosmiati', 'Perempuan', 'All Size', '-', 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'baNIDWwV4G1lyedKun60huop59QQamLF56kO4pOE', '2026-09-17 00:28:07', '2026-09-17 00:28:07'),
(549, 'WSD-20260917-YU5P', 'Ika Rosela', 'P27902123018', NULL, 2, 'D3 Kebidanan', 2026, 'ikarosela33@gmail.com', '085691058143', 'Ika Rosela', 'Perempuan', 'All Size', 'pemesanan toga wisuda poltekkes banten jurusan kebidanan', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/549/e12444eb-65cc-4d41-8dee-9f3e17c78261.jpg', 'Screenshot_20260917_075431_BRImo.jpg', 'image/jpeg', 332650, '2026-09-17 00:55:21', '2026-09-17 02:29:55', 9, NULL, NULL, NULL, NULL, 'SvJ53RObpQgllYHUgvS4k4Ek0EeLRnivg2ejFNMX', '2026-09-17 00:52:19', '2026-09-17 02:29:58'),
(550, 'WSD-20260917-OQ20', 'ELSA MULYANI', 'P27902123012', NULL, 2, 'D3 Kebidanan', 2026, 'elsamulyani273@gmail.com', '081292804521', 'Dana Elsa Mulyani', 'Perempuan', 'All Size', 'Kalau bisa toga nya yg besal soalnya saya genduttt🥺🥺', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/550/022be4c5-0dda-4870-aaec-45f15c93431c.jpg', 'Screenshot_2026-09-17-07-57-25-88_78ed797590cf9a33dfc5e341b7a9537a.jpg', 'image/jpeg', 269391, '2026-09-17 01:00:34', '2026-09-17 02:29:30', 9, NULL, NULL, NULL, NULL, 'ssDDrS3vtDQtBqpOGmwXITvzCzJcnw7fD99RNXT1', '2026-09-17 00:53:54', '2026-09-17 02:29:33'),
(551, 'WSD-20260917-NNWN', 'Sumenah', 'P27906125046', NULL, 6, 'Sarjana Terapan Keperawatan RPL', 2026, 'sumenah012@gmail.com', '083811856601', 'Sumenah', 'Perempuan', 'All Size', 'Ukuran toga : S', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/551/9fb42282-dec2-4713-a6da-c8f1807da85b.jpeg', '810730b0-7c3e-4768-9f8c-4361b4f71722.jpeg', 'image/jpeg', 79764, '2026-09-17 01:04:30', '2026-09-17 02:29:04', 9, NULL, NULL, NULL, NULL, 'Oxbvx7GBslCMP6z9t5rf4Gm8qDncz4eoZ5TTtCk2', '2026-09-17 00:58:49', '2026-09-17 02:29:06'),
(552, 'WSD-20260917-2V16', 'Meylda Maharany', 'P27905125025', NULL, 7, 'Pendidikan Profesi NERS', 2026, 'meyldamaharany0305@gmail.com', '081385367747', 'MEYLDA MAHARANY', 'Perempuan', 'All Size', 'Tb saya 173 cm, jangan sampai terlihat cingkrang ya', 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/552/2d872dec-e45c-4801-aa77-84425d06c819.jpg', 'Screenshot_20260917_092355_DANA.jpg', 'image/jpeg', 552673, '2026-09-17 02:30:54', '2026-09-17 02:44:22', 9, NULL, NULL, NULL, NULL, 'CCuQnS6MzvEUKRGmK8UcBRCklWBwNKh9I8MFHxeO', '2026-09-17 02:30:01', '2026-09-17 02:44:25'),
(553, 'WSD-20260917-BYFY', 'Alifa Ismi', 'P27905125003', NULL, 7, 'Pendidikan Profesi NERS', 2026, 'alifaismi2002@gmail.com', '089636471632', 'Alifa Ismi', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/553/38356ebf-ab9c-43b0-bd4e-792bd76066e3.jpeg', '59bcbc51-7572-45d7-a23b-fa43e235b287.jpeg', 'image/jpeg', 48511, '2026-09-17 02:31:27', '2026-09-17 02:44:33', 9, NULL, NULL, NULL, NULL, 'QYGRLTHmUiOSYaQoe07qXdq4jhKUyfisT9n4XY6e', '2026-09-17 02:30:19', '2026-09-17 02:44:36'),
(554, 'WSD-20260917-GSIZ', 'Savana Aprilliani', 'P27905125036', NULL, 7, 'Pendidikan Profesi NERS', 2026, 'savanaprl07@gmail.com', '089670910358', 'Savana Aprilliani', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/554/c179afa0-fac9-4d48-8292-d824380c2dd1.png', 'DFECD46D-A780-4649-947D-9C3F5E4FFA45.png', 'image/png', 298502, '2026-09-17 02:32:00', '2026-09-17 02:45:06', 9, NULL, NULL, NULL, NULL, 'Z0iWz6Vr0m9Rl6KudiZCNlEi9LJnPlo0y0prPXy8', '2026-09-17 02:31:25', '2026-09-17 02:45:08'),
(556, 'WSD-20260917-BNHW', 'Fyrda Fatimah Hudaya', 'P27905125016', NULL, 7, 'Pendidikan Profesi NERS', 2026, 'fyrdaftmhudaya@gmail.com', '+6285219560693', 'Fyrda Fatimah Hudaya', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/556/55ce0470-0d51-46c8-8ae3-bb03c24bf567.jpg', 'IMG_8622.JPG', 'image/jpeg', 243092, '2026-09-17 02:50:31', NULL, NULL, NULL, NULL, NULL, NULL, 'LsWqb2MnmuxRyv0y4RofsYHjhCubNUtBlYtA3I44', '2026-09-17 02:48:35', '2026-09-17 02:50:31'),
(557, 'WSD-20260917-NPFI', 'dwisyifa khoirunnisa', 'P27902123133', NULL, 2, 'D3 Kebidanan', 2026, 'dwisyifakhoirunnisa@gmail.com', '081283798327', 'Dwisyifa Khoirunnisa', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/557/f6355e83-2ccd-4c8c-b43a-63281368d557.jpg', 'IMG-20260917-WA0000.jpg', 'image/jpeg', 106729, '2026-09-17 02:51:31', NULL, NULL, NULL, NULL, NULL, NULL, 'coS69xK9bBviSDmmxbb2OTKSv0LHJ3vo5gmEgvAs', '2026-09-17 02:50:47', '2026-09-17 02:51:31'),
(558, 'WSD-20260917-EYNI', 'Iis Ismawati', 'P27903123020', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'iisisma246@gmail.com', '088293625462', 'IIS ISMAWATI', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/558/09869e30-a72d-4713-99d1-a5002411a612.jpeg', 'WhatsApp Image 2026-09-17 at 09.31.23.jpeg', 'image/jpeg', 79435, '2026-09-17 02:58:14', '2026-09-17 03:11:16', 9, NULL, NULL, NULL, NULL, 'Hlc0Je6CypNhhmNj62v2sleBMXb72UCWFtnz0blZ', '2026-09-17 02:57:39', '2026-09-17 03:11:19'),
(559, 'WSD-20260917-VM1H', 'Ati Sarra', 'P27905125008', NULL, 7, 'Pendidikan Profesi NERS', 2026, 'atisarra10@gmail.com', '088976758685', 'Adang Saefudin / Ati Sarra', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/559/d6a7eb35-730c-4e37-aca6-dc46f1f84893.jpeg', '66c130af-c094-4519-8362-e24eea98e3a9.jpeg', 'image/jpeg', 158468, '2026-09-17 03:09:54', NULL, NULL, NULL, NULL, NULL, NULL, 'rOmNYLJCmzWvA6p0IjbJth5yb5oqO3B2HlfKhU3h', '2026-09-17 02:59:46', '2026-09-17 03:09:54'),
(560, 'WSD-20260917-98QH', 'Viola Nur Amalina', 'P27903123239', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'violanuramalinaa@gmail.com', '089697464320', 'Umiyati/Viola', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/560/eb1b6087-ef83-4552-b8b8-f4541a87a9ca.jpg', 'IMG_Thu Sep 17 09_58_00 GMT+07_00 2026.jpg', 'image/jpeg', 235234, '2026-09-17 03:05:35', '2026-09-17 03:10:53', 9, NULL, NULL, NULL, NULL, 'WZAnvZ6rhIpE94cARgtCwsGaTDFGQ4hQT411G2uF', '2026-09-17 03:04:12', '2026-09-17 03:10:57'),
(561, 'WSD-20260917-E30K', 'Laila Dwi Ariyana', 'P27902123061', NULL, 2, 'D3 Kebidanan', 2026, 'lailaadwiiariyana@gmail.com', '089659363506', 'Laila Dwi Ariyana', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/561/c4048037-7af8-4fd7-a097-e43fb50b8d37.png', 'IMG_8820.png', 'image/png', 428204, '2026-09-17 03:18:42', NULL, NULL, NULL, NULL, NULL, NULL, 'FBg3EjZHYZlMruriROiWRbkmfOpohMkBSY7YQ0WY', '2026-09-17 03:18:12', '2026-09-17 03:18:42'),
(562, 'WSD-20260917-DXTN', 'Saidah Haqqi Nur Baity', 'P27903123231', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'saidahhaqqi0@gmail.com', '085819442820', 'saidah haqqi nur baity', 'Perempuan', 'All Size', NULL, 1, 'completed', 'verified', NULL, NULL, 'wisuda/payment-proofs/562/c4345924-94f2-4990-89f8-0205ec3e5cfe.jpg', 'Screenshot_20260917_101943_DANA.jpg', 'image/jpeg', 561691, '2026-09-17 03:20:58', '2026-09-17 03:23:05', 9, NULL, NULL, NULL, NULL, 'f6GiM0btkIlKNUuNLBh79lJP0zuUwnfIHTk2qS5N', '2026-09-17 03:20:31', '2026-09-17 03:23:08'),
(563, 'WSD-20260917-LPW3', 'Maharani Pertiwi', 'P27905125021', NULL, 7, 'Pendidikan Profesi NERS', 2026, 'maharanipertw14@gmail.com', '081387071268', 'Maharani Pertiwi', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/563/2f320e3c-1967-47e1-ad10-f798ef377c18.png', '8CD9C8F3-3A16-421E-BB94-AC17414E1EA7.png', 'image/png', 649190, '2026-09-17 03:32:19', NULL, NULL, NULL, NULL, NULL, NULL, 'ORVEKIGQHP2uDv5VSQr3wV10zdwxBQfaKT4Daf3k', '2026-09-17 03:29:37', '2026-09-17 03:32:19'),
(564, 'WSD-20260917-R4MZ', 'Naila Aisyah', 'P27902123030', NULL, 2, 'D3 Kebidanan', 2026, 'aisyahnaila1912@gmail.com', '087871574921', 'Naila Aisyah', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/564/399e9ca9-d4f0-4553-b8ac-d27d0061c1ad.png', 'IMG_0408.png', 'image/png', 178246, '2026-09-17 03:33:02', NULL, NULL, NULL, NULL, NULL, NULL, 'btBST9o6AXdsxPZ8apZWupXTqnCMXc2ZpemLT6xw', '2026-09-17 03:31:35', '2026-09-17 03:33:02'),
(565, 'WSD-20260917-YSDE', 'Dede susanti', 'P27902123130', NULL, 2, 'D3 Kebidanan', 2026, 'dedesusanti555@gmail.com', '081383527304', 'Ayu susinta', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/565/546f89f9-8645-4cc0-8969-9a4a2ce3ec44.jpeg', 'ed01a907-461a-4dae-b615-b19b6f08dbff.jpeg', 'image/jpeg', 83853, '2026-09-17 03:40:25', NULL, NULL, NULL, NULL, NULL, NULL, '8H5y4wA1Ps14Xst9Fx6IY1F8pvL6jkzscdh8SjDl', '2026-09-17 03:40:00', '2026-09-17 03:40:25'),
(566, 'WSD-20260917-KVMQ', 'Syela Fitratunnisa', 'P27902123156', NULL, 2, 'D3 Kebidanan', 2026, 'syelafitratunnisa02@gmail.com', '081617762935', 'Syela Fitratunnisa', 'Perempuan', 'All Size', 'Ukuran S\r\n\r\nPerumahan Taman Cikande Blok C 15/01 RT/RW 006/002. Kelurahan Cikande, Kecamatan Jayanti, Kabupaten Tangerang, Provinsi Banten. Kode pos 15610', 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/566/ea1e5301-b636-4bd1-82a5-90c091d0871f.png', 'IMG_6083.png', 'image/png', 184475, '2026-09-17 03:50:52', NULL, NULL, NULL, NULL, NULL, NULL, 'mcAQcOxFuzT28oOXNiKy66HQQZrYlKXHeXkATf3F', '2026-09-17 03:45:29', '2026-09-17 03:50:52');
INSERT INTO `graduation_toga_orders` (`id`, `order_code`, `student_name`, `nim`, `nik`, `study_program_id`, `study_program_name`, `graduation_year`, `email`, `phone`, `transfer_sender_name`, `gender`, `toga_size`, `size_note`, `quantity`, `status`, `payment_status`, `payment_amount`, `payment_method`, `payment_proof_path`, `payment_proof_original_name`, `payment_proof_mime`, `payment_proof_size`, `payment_uploaded_at`, `payment_verified_at`, `payment_verified_by`, `payment_rejected_at`, `payment_rejected_by`, `admin_note`, `rejection_note`, `public_token`, `created_at`, `updated_at`) VALUES
(567, 'WSD-20260917-5HWS', 'Sri Mulyani', 'P27904122092', NULL, 8, 'Sarjana Terapan Keperawatan', 2026, 'srim7730@gmail.com', '087881217739', 'Sri Mulyani', 'Perempuan', 'All Size', '-', 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/567/26eabf0f-ada2-4c92-9d3f-f2d5cd97fbfb.jpg', 'Screenshot_20260917_105129.jpg', 'image/jpeg', 229490, '2026-09-17 03:52:24', NULL, NULL, NULL, NULL, NULL, NULL, 'Bv1sUNAHJAR7evw5LjjJMF20hFf86ZBLPqqsuWWw', '2026-09-17 03:51:53', '2026-09-17 03:52:24'),
(568, 'WSD-20260917-JED8', 'WINI YULIANTI', 'P27902123121', NULL, 2, 'D3 Kebidanan', 2026, 'winiyulianti126@gmail.com', '083829281049', 'Wini Yulianti', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/568/20ab26b4-34d3-4081-be1c-79caaaefb75f.jpeg', '0fa4fa9e-1095-47c9-a335-e1ce8bee2c15.jpeg', 'image/jpeg', 52567, '2026-09-17 03:54:37', NULL, NULL, NULL, NULL, NULL, NULL, 'AMmSRvLqhZ9AiYflu5tqmy5OEVr8MuSGYPJ76v14', '2026-09-17 03:52:39', '2026-09-17 03:54:37'),
(569, 'WSD-20260917-8VQ3', 'Muhamad Firdaus', 'P27905125026', NULL, 7, 'Pendidikan Profesi NERS', 2026, 'mfrds040404@gmail.com', '088213980180', 'Unayah', 'Laki-laki', 'All Size', 'Muhamad Firdaus Profesi Ners', 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/569/0cd3d9aa-0c83-4d9b-a310-4c3d6812882e.png', 'IMG_3049.png', 'image/png', 364368, '2026-09-17 04:04:34', NULL, NULL, NULL, NULL, NULL, NULL, '42o8WWYgJOFeRlbc1ysAHshye2xA1ieHIhZfEKG9', '2026-09-17 04:02:14', '2026-09-17 04:04:34'),
(570, 'WSD-20260917-HOGW', 'Adinda Putri Azhari', 'P27905125001', NULL, 7, 'Pendidikan Profesi NERS', 2026, 'adindaputriazh03@gmail.com', '081310911057', 'Adinda Putri Azhari', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/570/880f651b-a04e-4a35-a189-d4026b4d0843.jpeg', 'IMG_8602.jpeg', 'image/jpeg', 270262, '2026-09-17 04:07:11', NULL, NULL, NULL, NULL, NULL, NULL, 'VN3ya4FwNUadeqJZznUkmMpZN6ey4LNgTO8GLJY0', '2026-09-17 04:04:36', '2026-09-17 04:07:11'),
(571, 'WSD-20260917-IITQ', 'Fuad Amin', 'P27905125097', NULL, 7, 'Pendidikan Profesi NERS', 2026, 'fuadamin140@gmail.com', '081532220111', 'Fuad Amin', 'Laki-laki', 'All Size', 'ukuran xl (Fuad Amin)', 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/571/8130a0aa-2dd9-4388-ae87-844cd1643bb7.jpeg', 'Bukti Pembayaran toga Ners (Fuad Amin).jpeg', 'image/jpeg', 93724, '2026-09-17 04:15:09', NULL, NULL, NULL, NULL, NULL, NULL, '5OKhgGMsVLhV0gPQtCBT6axAbPgYylQsoSqNAm4w', '2026-09-17 04:13:07', '2026-09-17 04:15:09'),
(572, 'WSD-20260917-BSZR', 'Isa Mustafa', 'P27902123060', NULL, 2, 'D3 Kebidanan', 2026, 'imstf111@gmail.com', '08158914829', 'Isa Mustafa', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/572/eaaed19c-cc5a-4e25-8aa2-e51dab626bc4.jpg', 'IMG-20260917-WA0034(1).jpg', 'image/jpeg', 53765, '2026-09-17 04:23:20', NULL, NULL, NULL, NULL, NULL, NULL, 'bMS4tB8Xuux82ILEncVD94FJISVc2ajtEuOeIrv0', '2026-09-17 04:21:16', '2026-09-17 04:23:20'),
(573, 'WSD-20260917-OFOK', 'Nurul Muflihat', 'P27903123033', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'nurulmuflihat@gmail.com', '083875418563', 'Nurul Muflihat', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/573/6e7f9e1d-0709-4159-bf2a-cf8f7a134a15.png', 'IMG_1265.png', 'image/png', 173099, '2026-09-17 04:23:29', NULL, NULL, NULL, NULL, NULL, NULL, 'A1HfKRI8HDMsLi21Cms2vIiHbEdK4BELba0ImuFI', '2026-09-17 04:22:48', '2026-09-17 04:23:29'),
(574, 'WSD-20260917-KMQL', 'Farah Hayatun Kamila', 'P27902123014', NULL, 2, 'D3 Kebidanan', 2026, 'farahkamila2005@gmail.com', '081295759059', 'Najmah Zhahirotun Huwaida (pengirim transfer)', 'Perempuan', 'All Size', 'Punten bapak/ibu sebelumnya Farah sudah mengisi list yang dikirim oleh Diana, yaitu dengan ukuran 3XL ya ibu, terima kasih', 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/574/07c4fc4b-f21c-4240-ad14-9e5a55cc4f80.jpg', 'IMG-20260917-WA0000.jpg', 'image/jpeg', 59986, '2026-09-17 04:31:55', NULL, NULL, NULL, NULL, NULL, NULL, '2rRhD8WzfHkwolpHH0U7W809tAT1vk0Lw7Afs2Kn', '2026-09-17 04:31:07', '2026-09-17 04:31:55'),
(575, 'WSD-20260917-UNHP', 'Gabriella Louders Sinaga', 'P27902123137', NULL, 2, 'D3 Kebidanan', 2026, 'gabriellasinaga39@gmail.com', '082110181913', 'Gabriella Louders Sinaga', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/575/26622ea1-0e7b-490e-9dd1-f23981e2ab5b.png', 'IMG_4421.png', 'image/png', 239359, '2026-09-17 04:35:03', NULL, NULL, NULL, NULL, NULL, NULL, 'yjpLp4Os5aSIx0l8NbmQJeiFFQfpMR4AWciiQaXf', '2026-09-17 04:32:46', '2026-09-17 04:35:03'),
(576, 'WSD-20260917-ODTU', 'Suci Sri Novianti', 'P27903123143', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'sucisrinovianti894@gmail.com', '081315573286', 'Suci Sri Novianti', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'qZ7mwDKfo3VtkIncffbH8TWA54Yb7atLPJ57PR0p', '2026-09-17 04:38:27', '2026-09-17 04:38:27'),
(577, 'WSD-20260917-BHWU', 'Ismiyana Anisa Anasiru', 'P27903123021', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'anasiruismiyana@gmail.com', '082217463130', 'Ismiyana Anisa Anasiru', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/577/67037dfd-b93b-47dd-89c0-62926bdaca43.jpeg', '6E231841-F31E-4595-A358-B793865B1FC0.jpeg', 'image/jpeg', 148412, '2026-09-17 04:47:02', NULL, NULL, NULL, NULL, NULL, NULL, 'LmmTRKe6poT3ku6RfZmASQuXWD9kBhQKfm0Yq6Fb', '2026-09-17 04:46:36', '2026-09-17 04:47:02'),
(578, 'WSD-20260917-MTVQ', 'Siti Umayah', 'P27905125039', NULL, 7, 'Pendidikan Profesi NERS', 2026, 'sitiumayah336@gmail.com', '089522900744', 'Siti Umayah', 'Perempuan', 'All Size', 'kalo ada ukuran pakai ukuran S ya😊🙏🏻', 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/578/e302a6f2-e576-4592-a0ca-7fea3b82e8bc.png', 'IMG_0471.png', 'image/png', 113005, '2026-09-17 04:57:24', NULL, NULL, NULL, NULL, NULL, NULL, 'zVSDWtnhXNGNvarZzgRoRqoBYSbHzEjp2sGi057B', '2026-09-17 04:55:00', '2026-09-17 04:57:24'),
(579, 'WSD-20260917-IJU8', 'Nur Fitria Solihat', 'P27903123080', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'nurfitriast@gmail.com', '0895412738245', 'Nur Fitria Solihat', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/579/0c6946a0-b135-44bb-b106-af11c80cada5.jpg', 'Screenshot_20260917-120325_DANA.jpg', 'image/jpeg', 225459, '2026-09-17 05:03:50', NULL, NULL, NULL, NULL, NULL, NULL, '7u32SKkeVY2uxbIibj1Z1fMIicjtV9iweMx66bb4', '2026-09-17 05:00:35', '2026-09-17 05:03:50'),
(580, 'WSD-20260917-IGME', 'Amanda Salsabilah', 'P27905125005', NULL, 7, 'Pendidikan Profesi NERS', 2026, 'amandasalsabilah56@gmail.com', '089528185447', 'Dina/Amanda Salsabilah', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/580/db4cfcf9-4219-4706-8828-75806b8d2d9b.png', 'IMG_3261.png', 'image/png', 332891, '2026-09-17 05:03:18', NULL, NULL, NULL, NULL, NULL, NULL, 'l010EmNB3tpWHNBGlAklSeepVdmcPgWZlIN8fx5r', '2026-09-17 05:01:37', '2026-09-17 05:03:18'),
(581, 'WSD-20260917-WPCV', 'Arisa Bukhori', 'P27905125007', NULL, 7, 'Pendidikan Profesi NERS', 2026, 'arisabukhori.ab30@gmail.com', '085774145371', 'Arisa Bukhori', 'Perempuan', 'All Size', 'Pemesanan toga untuk wisuda keperawatan profesi ners kampus tangerang a/n Arisa Bukhori', 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ya9rdagMUEsSMoKPWKW6tmWLeKSNtiEKgdNeoGuP', '2026-09-17 05:26:30', '2026-09-17 05:26:30'),
(582, 'WSD-20260917-WD9L', 'Rizky Alfikri Ramadhan', 'P27904122083', NULL, 8, 'Sarjana Terapan Keperawatan', 2026, 'rizkyalfikriramadan@gmail.com', '085718604435', 'Rizky Alfikri Ramadhan', 'Laki-laki', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/582/79e27538-2913-4b69-b827-f9150f72d5ec.jpg', 'Screenshot_2026-09-17-12-32-05-736_id.dana.jpg', 'image/jpeg', 537420, '2026-09-17 05:33:42', NULL, NULL, NULL, NULL, NULL, NULL, '02Kl3gYvCCAT51Sr6rbvI7Yz7MiiDBInXq0I9Vwx', '2026-09-17 05:31:00', '2026-09-17 05:33:42'),
(583, 'WSD-20260917-RMSD', 'Vindy Dwi Oktaviany', 'P27905125041', NULL, 7, 'Pendidikan Profesi NERS', 2026, 'vindydwio06@gmail.com', '085161061032', 'Vindy Dwi Oktaviany', 'Perempuan', 'All Size', 'kalau ada ukuran pakai ukuran M ya😊🙏🏻', 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/583/cfa5fc5e-9a80-4553-bcf3-5ff6f8fae3a8.png', 'IMG_8589.png', 'image/png', 119087, '2026-09-17 05:35:35', NULL, NULL, NULL, NULL, NULL, NULL, 'z9GRPsrpT4lqX9YUJ8csI65aepOeTi4Y2lgQsehA', '2026-09-17 05:33:46', '2026-09-17 05:35:35'),
(584, 'WSD-20260917-N2QN', 'Syifa Hade Nabila', 'P27905125040', NULL, 7, 'Pendidikan Profesi NERS', 2026, 'syifahadenabila@gmail.com', '089647631779', 'Hariyanto/Syifa Hade Nabila', 'Perempuan', 'All Size', 'kalau bisa saya ukurannya m ya, jangan all size terlalu besar BB:65/TB:161', 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/584/f7ad2505-5128-4a59-9d0a-aa39e320acc6.jpg', 'IMG-20260917-WA0026.jpg', 'image/jpeg', 47027, '2026-09-17 05:41:33', NULL, NULL, NULL, NULL, NULL, NULL, 'rCQvvGDTIn8pTyBcRR6RuMDRaboFoGi2ovlCe8gv', '2026-09-17 05:37:52', '2026-09-17 05:41:33'),
(585, 'WSD-20260917-JPJG', 'SUCI DIAN PRATIWI', 'P27903123190', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'sucidianpratiwi9d@gmail.com', '085772278265', 'Suci Dian Pratiwi', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/585/a43010df-97d1-485d-afe6-b533383004f1.png', 'IMG_4390.png', 'image/png', 190108, '2026-09-17 06:10:11', NULL, NULL, NULL, NULL, NULL, NULL, 'W53sH8HyW8OBof5QlOc8pzkam1gTtouCgkxaDYVq', '2026-09-17 06:09:24', '2026-09-17 06:10:11'),
(586, 'WSD-20260917-3NHE', 'SELENA LINTANG ARNE', 'P27903123232', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'selenalintang11@gmail.com', '085693635780', 'SELENA LINTANG ARNE', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/586/67ec4d31-a4e2-4905-97e5-b4756f9ee47a.jpg', 'IMG-20260917-WA0035.jpg', 'image/jpeg', 89331, '2026-09-17 06:21:09', NULL, NULL, NULL, NULL, NULL, NULL, 'jINFM8xXyToQR0PWd6cFQLxij5pXHG6ctJN1zRkE', '2026-09-17 06:18:36', '2026-09-17 06:21:09'),
(587, 'WSD-20260917-5SYZ', 'Rizqia Triana', 'P27903123086', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'rizqiatriana37@gmail.com', '085692442771', 'Rizqia Triana', 'Perempuan', 'All Size', 'Uk : L', 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/587/8ca750a3-971d-4a21-b509-8aaefdea47a6.jpg', 'Screenshot_20260917_133449.jpg', 'image/jpeg', 300235, '2026-09-17 06:35:52', NULL, NULL, NULL, NULL, NULL, NULL, 'RLM4qEdIMn2yO8C9SyJjd9ucJnG3Xj4XTtnS5Djh', '2026-09-17 06:28:49', '2026-09-17 06:35:52'),
(588, 'WSD-20260917-PYO9', 'Dita Rismuna', 'P27904122057', NULL, 8, 'Sarjana Terapan Keperawatan', 2026, 'ditarismuna11@gmail.com', '081295089097', 'Kartini/Dita', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/588/78743815-9e6c-43f8-bdf3-82924cd9597a.jpg', 'IMG-20260917-WA0002.jpg', 'image/jpeg', 82587, '2026-09-17 06:52:30', NULL, NULL, NULL, NULL, NULL, NULL, 'ezlGI9I4Ym9Ib41K2VvDUQc1hH2u0pdj29HD8ATY', '2026-09-17 06:29:38', '2026-09-17 06:52:30'),
(589, 'WSD-20260917-WRMR', 'Latifah', 'P27903123170', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'llatifah341@gmail.com', '085803209208', 'SRI FITRIYANI', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/589/8ef473db-89aa-421d-bf1b-a56cd93a4ce2.jpg', 'IMG-20260917-WA0029.jpg', 'image/jpeg', 56140, '2026-09-17 06:47:36', NULL, NULL, NULL, NULL, NULL, NULL, 'W1lkkq3c7MIe1UhLBRcZUFUkKfEf1XTYe0Zmap6k', '2026-09-17 06:45:01', '2026-09-17 06:47:36'),
(590, 'WSD-20260917-PLN8', 'Herpiyani Yunitasari', 'P27903123066', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'herpiyaniyunitasari20@gmail.com', '085776877045', 'Arif Hidayat', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/590/de80eac5-71fb-410b-a380-a0ad459bc9d0.jpg', 'IMG-20260917-WA0038.jpg', 'image/jpeg', 93480, '2026-09-17 07:08:57', NULL, NULL, NULL, NULL, NULL, NULL, 'X9fjBHuJr6hsN01eKRrfqePciOn7d8tW960gX6aQ', '2026-09-17 07:00:02', '2026-09-17 07:08:57'),
(591, 'WSD-20260917-5WON', 'Irdia Sijabat', 'P27902123142', NULL, 2, 'D3 Kebidanan', 2026, 'irdiasijabat12@gmail.com', '087888359145', 'Gabriella Louders Sinaga', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/591/5d8b056b-b927-4315-9997-7e211c82e3ed.png', 'IMG_4436.png', 'image/png', 160353, '2026-09-17 07:17:44', NULL, NULL, NULL, NULL, NULL, NULL, 'KOvVjq3QjlQHCCQLjUsrlLkk4p8SvDBKhExdzWQi', '2026-09-17 07:16:02', '2026-09-17 07:17:44'),
(592, 'WSD-20260917-4H7P', 'Yunita Ayu Rahmanisawati', 'P27904122097', NULL, 8, 'Sarjana Terapan Keperawatan', 2026, 'choxolhc@gmail.com', '088975611183', 'Yunita Ayu Rahmanisawati', 'Perempuan', 'All Size', 'uk L', 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/592/92019373-89c4-42dc-8b29-34831afd3814.jpg', 'Screenshot_20260917_142106_BCA mobile.jpg', 'image/jpeg', 577851, '2026-09-17 07:21:56', NULL, NULL, NULL, NULL, NULL, NULL, 'fJq3xbCeY9Pg2GdHaJc1MoAGkjKqrSFeIAhcEtgL', '2026-09-17 07:17:38', '2026-09-17 07:21:56'),
(593, 'WSD-20260917-IUZK', 'Muinah', 'P2790612042', NULL, 6, 'Sarjana Terapan Keperawatan RPL', 2026, 'muinah97@gmail.com', '083891353344', 'Muinah', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/593/86871b0c-dc7c-486c-822f-22db60eb346c.jpg', 'Screenshot_20260917_144525_BCA mobile.jpg', 'image/jpeg', 516790, '2026-09-17 07:47:28', NULL, NULL, NULL, NULL, NULL, NULL, 'VVAUWbXXxFkF9JlxyMPGVL3ps9mZ8IqNDbC5TMrA', '2026-09-17 07:46:52', '2026-09-17 07:47:28'),
(594, 'WSD-20260917-SA7E', 'Lyra Pratama Putri', 'P27904122018', NULL, 8, 'Sarjana Terapan Keperawatan', 2026, 'lyrapratamap@gmail.com', '089507534320', 'Lyra Pratama Putri', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/594/ffd9aac7-e264-41a1-8760-a3fddf928fc5.png', 'IMG_5945.png', 'image/png', 194945, '2026-09-17 08:00:20', NULL, NULL, NULL, NULL, NULL, NULL, 'nGnQRdwt99D3Yt8JYkw0W8o6eedchsJNVGYN8U50', '2026-09-17 07:59:01', '2026-09-17 08:00:20'),
(595, 'WSD-20260917-JWHM', 'Esha Fatriawan', 'P27905125096', NULL, 7, 'Pendidikan Profesi NERS', 2026, 'eshanum78@gmail.com', '085888474358', 'Esha Fatriawan', 'Laki-laki', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/595/62196f3b-4ee5-489a-a710-54c889893e76.jpg', 'IMG-20260917-WA0050.jpg', 'image/jpeg', 64313, '2026-09-17 08:08:24', NULL, NULL, NULL, NULL, NULL, NULL, 'Upyi4o9QxQzrcWqVnwm0PS6xirH4eXVd3MxoNZED', '2026-09-17 07:59:52', '2026-09-17 08:08:24'),
(596, 'WSD-20260917-5EQK', 'Zenith Chiendiwangi', 'P27902123165', NULL, 2, 'D3 Kebidanan', 2026, 'zenithchiendiwangi@gmail.com', '087780360389', 'zenith chiendiwangi', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/596/9f1f0438-35e0-4ecc-8844-f2a7b5116968.png', 'IMG_8549.png', 'image/png', 233551, '2026-09-17 08:03:17', NULL, NULL, NULL, NULL, NULL, NULL, '3WOKHLHGfr8WGVt43d9lzuXJxUBprwbMBsrdMq0W', '2026-09-17 08:01:05', '2026-09-17 08:03:17'),
(597, 'WSD-20260917-DNQO', 'Racheila Agnisia', 'P27903123082', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'racheilaagnisia8@gmail.com', '083899085138', 'Racheila Agnisia', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/597/0fe8d7bb-71c4-450f-b356-6d283569792b.jpg', 'IMG-20260917-WA0010.jpg', 'image/png', 97951, '2026-09-17 08:11:28', NULL, NULL, NULL, NULL, NULL, NULL, 'iTBLvlLERGazTkt2tO3YkuXINwuOwBaBjFboltzn', '2026-09-17 08:09:45', '2026-09-17 08:11:28'),
(598, 'WSD-20260917-HNPT', 'Bulan Saffanah Cikal Ar-rayyan', 'P27905125011', NULL, 7, 'Pendidikan Profesi NERS', 2026, 'saffanahbulan28@gmail.com', '085810172598', 'Eva Fauziah', 'Perempuan', 'All Size', 'Pembayaran Toga Bulan Profesi Ners', 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/598/1d5672a5-f2e0-4d77-bb6c-17c61a96f2b9.jpeg', 'C37D9A0D-7402-4F73-BBF3-BD063A1F857D.jpeg', 'image/jpeg', 51718, '2026-09-17 08:24:34', NULL, NULL, NULL, NULL, NULL, NULL, 'dckfQ8XNceD7kBbvjPzgnseR4CFdXn8YdJp2m7gv', '2026-09-17 08:23:31', '2026-09-17 08:24:34'),
(599, 'WSD-20260917-BLUM', 'Alivia Yuliani Putri', 'P27903123101', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'aliviayuliani4@gmail.com', '088296086655', 'Alivia Yuliani Putri', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/599/e02f6ca6-9b50-4374-9651-610d763ad83c.png', '532C3320-2E56-4161-A375-760551DAD060.png', 'image/png', 641394, '2026-09-17 08:27:36', NULL, NULL, NULL, NULL, NULL, NULL, 'eG5rPbbzU1bSGDAYnz8IQWLuEHw6h8SocZzKds12', '2026-09-17 08:25:23', '2026-09-17 08:27:36'),
(600, 'WSD-20260917-K3XY', 'Firda Sunarti', 'P27905125015', NULL, 7, 'Pendidikan Profesi NERS', 2026, 'firdasunarti22@gmail.com', '085775032810', 'Firda Sunarti', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/600/aa7a50f8-71e2-44f8-8f3b-7855ce686d77.jpg', 'Screenshot_20260917-154442_DANA.jpg', 'image/jpeg', 279528, '2026-09-17 08:45:25', NULL, NULL, NULL, NULL, NULL, NULL, 'VAj2l8t50vW5WcRM6dMS6OBAC1OrFkxli0QC4IBf', '2026-09-17 08:41:52', '2026-09-17 08:45:25'),
(601, 'WSD-20260917-LXPI', 'Tiara Ramadhani', 'P27903123238', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'tiararmdny16@gmail.con', '0895622778813', 'Tiara Ramadhani', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'QlBrh0LLPbD6qtn5EDRvMu47jDqPwmtJSKBJymq9', '2026-09-17 09:38:47', '2026-09-17 09:38:47'),
(602, 'WSD-20260917-SAEE', 'Ivana Putri Noviyan', 'P27905125018', NULL, 7, 'Pendidikan Profesi NERS', 2026, 'ivanaputrinoviyan@gmail.com', '6281299792751', 'Ivana Putri Noviyan', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'AmUjLlLTlSVNI7C7SFLBqZp3a7nns5AN3m6aNJpM', '2026-09-17 09:45:39', '2026-09-17 09:45:39'),
(603, 'WSD-20260917-DIIA', 'Neti sumaeti', 'P27906125058', NULL, 6, 'Sarjana Terapan Keperawatan RPL', 2026, 'nsumaeti@gmail.com', '089622085840', 'Neti Sumaeti', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/603/e8bec159-3b0f-4c99-a4c6-fead80e8a491.jpg', 'Screenshot_2026-09-17-16-57-39-697_id.dana.jpg', 'image/jpeg', 267058, '2026-09-17 10:01:35', NULL, NULL, NULL, NULL, NULL, NULL, 'MnsTe8j6fVJ61AXuzKTXUJEZp502DnvX7M7BQpjX', '2026-09-17 09:54:57', '2026-09-17 10:01:35'),
(604, 'WSD-20260917-H69B', 'Awiddah Nisa Sabrina', 'P27905125010', NULL, 7, 'Pendidikan Profesi NERS', 2026, 'awiddahnisasabrina@gmail.com', '085773431746', 'Awiddah Nisa Sabrina', 'Perempuan', 'All Size', 'Profesi ners', 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/604/f22a4227-7c7b-4ac6-8b84-ed3fe9074862.png', 'IMG_2486.png', 'image/png', 187716, '2026-09-17 10:15:32', NULL, NULL, NULL, NULL, NULL, NULL, 'hiPEEUtAj4xNo7cD3Gmb6gbzu6cILeNJJZeoJqlm', '2026-09-17 10:13:07', '2026-09-17 10:15:32'),
(605, 'WSD-20260917-GJ5T', 'Irma Julianti', 'P27902123143', NULL, 2, 'D3 Kebidanan', 2026, 'irmajulianti1722@gmail.com', '088801019252', 'Irma Julianti', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/605/60723b5e-b10d-4724-9fab-cac744b7d711.jpeg', 'IMG_2752.jpeg', 'image/jpeg', 142816, '2026-09-17 10:37:02', NULL, NULL, NULL, NULL, NULL, NULL, 'rQCsHnH1h2HPVbsU0HEIOhdFP0gUq9vU7qLzSRJ3', '2026-09-17 10:35:17', '2026-09-17 10:37:02'),
(606, 'WSD-20260917-BMFU', 'Putri Luvi Kurniawati', 'P27905125034', NULL, 7, 'Pendidikan Profesi NERS', 2026, 'putriluvikurniawati01@gmail.com', '085692026118', 'Putri Luvi Kurniawati', 'Perempuan', 'All Size', '-', 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/606/508fa0ba-a696-49ad-9131-56c7c286db1a.png', 'IMG_0309.png', 'image/png', 126351, '2026-09-17 10:43:12', NULL, NULL, NULL, NULL, NULL, NULL, 'xDGmsloBqfcq5DI430jfGsA7fLTu1nTt7pa925ZC', '2026-09-17 10:42:13', '2026-09-17 10:43:12'),
(607, 'WSD-20260917-AFMZ', 'IIM SAPITRI', 'P27903123019', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'iimsapitri23@gmail.com', '085956171905', 'IIM SAPITRI', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '28a5dALgiBl8DJ3CbYIRgSLnIthdfkzRquMwpBop', '2026-09-17 11:19:11', '2026-09-17 11:19:11'),
(608, 'WSD-20260917-M6O0', 'Nur Awliya Hidayati', 'P27905125032', NULL, 7, 'Pendidikan Profesi NERS', 2026, 'nurawliyahdyt@gmail.com', '082118057451', 'Suparji', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/608/498d906b-bb20-465d-a432-f8fcbe810f63.jpeg', '308ec3ad-1b7b-4f7b-af1a-297977ab772b.jpeg', 'image/jpeg', 86004, '2026-09-17 11:37:43', NULL, NULL, NULL, NULL, NULL, NULL, '0Wy1Di9t1ADlveZ9QnobEDmzjiLLzKU8XCaVb78w', '2026-09-17 11:36:42', '2026-09-17 11:37:43'),
(609, 'WSD-20260917-ICTF', 'Marwahthul Sofa', 'P27905125022', NULL, 7, 'Pendidikan Profesi NERS', 2026, 'wa.sofa12@gmail.com', '085710917351', 'Marwahthul Sofa', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/609/3ace485f-ff60-42cb-9678-9de9da479965.jpg', 'Screenshot_20260917_190620_SeaBank.jpg', 'image/jpeg', 281348, '2026-09-17 12:06:45', NULL, NULL, NULL, NULL, NULL, NULL, 'pjJrpToM9j3pmGbfExxLUzgY8DtTxuShn9kKcdX4', '2026-09-17 12:04:15', '2026-09-17 12:06:45'),
(610, 'WSD-20260917-LOI3', 'Siti Nurul Salsabila', 'P27905125038', NULL, 7, 'Pendidikan Profesi NERS', 2026, 'sitinurulsalsabila03@gmail.com', '085694893149', 'Ahmad/Siti Nurul Salsabila', 'Perempuan', 'All Size', 'Profesi ners', 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/610/bc1c2e17-f151-4a49-badc-269157672477.png', 'IMG_7782.png', 'image/png', 112025, '2026-09-17 12:17:03', NULL, NULL, NULL, NULL, NULL, NULL, 'z2Yz5MFg0adOfZOckymgufufpLXHAxrSNdC1csVN', '2026-09-17 12:15:57', '2026-09-17 12:17:03'),
(611, 'WSD-20260917-WV1Y', 'Meliana Indhar Regita Cahya', 'P27905125023', NULL, 7, 'Pendidikan Profesi NERS', 2026, 'melianaindhar10@gmail.com', '085773585342', 'Meliana Indhar Regita Cahya', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/611/cb85ca16-d21c-4f53-b478-73222062d367.png', 'IMG_6667.png', 'image/png', 296923, '2026-09-17 12:27:48', NULL, NULL, NULL, NULL, NULL, NULL, 'bLTz7fjmXWAEjkEeHjegUTks0rJzzqstzI7YFiP3', '2026-09-17 12:21:01', '2026-09-17 12:27:48'),
(612, 'WSD-20260917-GHDX', 'Rahma Nur Hanifah', 'P27904122032', NULL, 4, 'Sarjana Terapan Keperawatan Reguler', 2026, 'rahmanur3004@gmail.com', '081382051667', 'Sujarwo', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/612/49b67610-7563-4874-90ad-1a08145b0290.jpg', 'IMG-20260917-WA0026.jpg', 'image/jpeg', 61218, '2026-09-17 12:29:57', NULL, NULL, NULL, NULL, NULL, NULL, 'AnNZGSMwOBl8EpvBWCOwMy11CumVQcyLup1ZY26Y', '2026-09-17 12:27:26', '2026-09-17 12:29:57'),
(613, 'WSD-20260917-0BCZ', 'Anandita Zahra Ramadani', 'P27903123054', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'zhrdta@gmail.com', '087873680896', 'Anandita Zahra Ramadani', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/613/331bcd42-3c40-469d-b4f9-48ec8a45641d.jpg', 'IMG-20260917-WA0025.jpg', 'image/jpeg', 72757, '2026-09-17 14:30:27', NULL, NULL, NULL, NULL, NULL, NULL, '348cITMdhnrpYoak22g85QqKpHj6RYyb2edbaXKZ', '2026-09-17 13:27:04', '2026-09-17 14:30:27'),
(614, 'WSD-20260917-Q2VP', 'dias arliadii', '13864874575476', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'diasarliadini03@gmail.com', '2386127421549512', 'raswandi', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sDFYu4BDI8AiH1bYQqLSR9a03ua6dSiqFbe2uYru', '2026-09-17 14:02:30', '2026-09-17 14:02:30'),
(615, 'WSD-20260917-FXKL', 'Nazwa nur maulya', 'P27904122071', NULL, 8, 'Sarjana Terapan Keperawatan', 2026, 'nazwanur893@gmail.com', '089659897506', 'Kartini/nazwa', 'Perempuan', 'All Size', 'Mau size m', 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/615/03f260b1-efcb-4ab5-98a8-9979f5812f39.png', 'IMG_0262.png', 'image/png', 101748, '2026-09-17 14:13:26', NULL, NULL, NULL, NULL, NULL, NULL, 'gTNrRc5pUJtYWl8Ev7dbyrCY5SeUyESCQVXChzbM', '2026-09-17 14:10:19', '2026-09-17 14:13:26'),
(616, 'WSD-20260917-REC2', 'Jhonatan Indra Pratama', 'P27903123119', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'jhonatanindrapratama@gmail.com', '085123623788', 'Jhonatan Indra Pratama', 'Laki-laki', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/616/bce6eb2b-3147-4c48-8125-0febbf44f081.jpg', 'IMG_Thu Sep 17 21_31_05 GMT+07_00 2026.jpg', 'image/jpeg', 215543, '2026-09-17 14:32:34', NULL, NULL, NULL, NULL, NULL, NULL, 'ueviNbE6zhEbYBr6fSLjvcaehq0s2UHkyxYMFcZj', '2026-09-17 14:27:42', '2026-09-17 14:32:34'),
(617, 'WSD-20260917-U7Z7', 'Andini Putri Juanto', 'P27905125006', NULL, 7, 'Pendidikan Profesi NERS', 2026, 'andiniputrijuanto6@gmail.com', '089652945673', 'Andini Putri Juanto', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/617/790e54f0-a6cd-404e-9bdc-7518d10cb900.png', 'IMG_7306.png', 'image/png', 108616, '2026-09-17 15:30:57', NULL, NULL, NULL, NULL, NULL, NULL, 'DP8Qvrx9s1ONFbtvvJlJOkbm4TG32NeBDzoVfoQH', '2026-09-17 15:30:19', '2026-09-17 15:30:57'),
(618, 'WSD-20260917-FW5V', 'Reivan Supriyana', 'P27905125098', NULL, 7, 'Pendidikan Profesi NERS', 2026, 'reivanvan@gmail.com', '081776005046', 'Reivan Supriyana', 'Laki-laki', 'All Size', 'Ibu/pak maaf sebelumnya klo bisa ukurannya yg besar ya xxl ya pak bu', 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/618/c4e1b634-efc8-4daa-86a4-2093dfaff601.jpeg', 'IMG_0762.jpeg', 'image/jpeg', 438844, '2026-09-17 16:29:57', NULL, NULL, NULL, NULL, NULL, NULL, 'cut6EYyvg3VXccifcypcz6HkqjQuj3JkM8Wb8AHL', '2026-09-17 16:24:44', '2026-09-17 16:29:57'),
(619, 'WSD-20260918-YCPZ', 'Maya septiani', 'P27905126056', NULL, 6, 'Sarjana Terapan Keperawatan RPL', 2026, 'mayaseptiani1988@gmail.com', '081910955666', 'Pazdi Hakiki', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tdTPZlYXS2Nbz5cgWASLRFpacJvGv8BNDm35N22h', '2026-09-17 22:42:45', '2026-09-17 22:42:45'),
(620, 'WSD-20260918-LBFH', 'Dilla Adilya', 'P27902123050', NULL, 2, 'D3 Kebidanan', 2026, 'dillaadilya@gmail.com', '085710823893', 'Dilla Adilya', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/620/367440b0-a6bb-41be-b15f-3b6d0eff455d.jpg', 'Screenshot_2026-09-18-06-19-27-57_121d0782f1cd8474b48c9b27865007fd.jpg', 'image/jpeg', 281820, '2026-09-17 23:19:46', NULL, NULL, NULL, NULL, NULL, NULL, 'tHli2oasC4RMOoKBsDegKa2aVQM3zLPwl4jZqM5k', '2026-09-17 23:18:17', '2026-09-17 23:19:46'),
(621, 'WSD-20260918-JEJQ', 'Fitri Aulia Zahra', 'P27904122012', NULL, 8, 'Sarjana Terapan Keperawatan', 2026, 'fitriauliazahra04@gmail.com', '089619908575', 'Moh. Ishak/Maria Ulpah', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'k0SRIT85F9wkHDpyRXj47WVUJMiSGavl7Rr0QrLc', '2026-09-18 00:30:23', '2026-09-18 00:30:23'),
(622, 'WSD-20260918-IJ5C', 'Nanda carliva toyotatu', 'P27906125044', NULL, 6, 'Sarjana Terapan Keperawatan RPL', 2026, 'nandacarliva@gmail.com', '089618918204', 'Nanda Carliva Toyotatu', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'XsMf6uLtoCv6lqcPvux9QrOWyiFhgf6qjjOinSAm', '2026-09-18 00:52:28', '2026-09-18 00:52:28'),
(623, 'WSD-20260918-WHFS', 'SRI APRILIA TRIO NINGSIH', 'P27902123155', NULL, 2, 'D3 Kebidanan', 2026, 'sriaprilia.456@gmail.com', '085779602507', 'SRI APRILIA TRIO NINGSIH', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dhi7HLso8DhR0EWfV5o6PUavSZbQTe0cxZEifa7z', '2026-09-18 01:11:43', '2026-09-18 01:11:43'),
(624, 'WSD-20260918-1MW0', 'Zahwa Nurul Aida', 'P27903123195', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'zahwanurulaida8@gmail.com', '0838-3457-0775', 'Zahwa Nurul Aida', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/624/b6446bc0-6fa3-4405-9a8f-9d97bffd63ea.jpg', 'Screenshot_20260918-093724.jpg', 'image/jpeg', 285435, '2026-09-18 02:38:24', NULL, NULL, NULL, NULL, NULL, NULL, 'OPn2w0Xkh4vI5DqJfYhFgNIbbsT1nhr4QwPKu2Yh', '2026-09-18 02:37:40', '2026-09-18 02:38:24'),
(625, 'WSD-20260918-XTMP', 'Dyta Rachmadhany', 'P27903123060', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'rachmadhanydyta@gmail.com', '081296936966', 'Dyta Rachmadhany', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/625/074de932-0522-4591-94c0-0e918864442a.png', 'Screenshot_20260918-095004.png', 'image/png', 147756, '2026-09-18 03:10:46', NULL, NULL, NULL, NULL, NULL, NULL, 'X8Py8QFFXggOl5JuahVXswuMtWGYvjkQiGMpWUuo', '2026-09-18 02:48:47', '2026-09-18 03:10:46'),
(626, 'WSD-20260918-OYUH', 'Widiya Astuti', 'P27904122096', NULL, 8, 'Sarjana Terapan Keperawatan', 2026, 'widiyaastuti328@gmail.com', '085710358480', 'Widiya Astuti', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/626/753cbe01-7841-4415-a584-bc4b5e3c1996.jpg', 'IMG-20260918-WA0006.jpg', 'image/jpeg', 62658, '2026-09-18 03:08:00', NULL, NULL, NULL, NULL, NULL, NULL, '48qvzaJDCSS32tFMxFTyRK4Oecp81FP4OPeKrfeK', '2026-09-18 03:04:37', '2026-09-18 03:08:00'),
(627, 'WSD-20260918-WZX5', 'KASYIFAH', 'P27905125019', NULL, 7, 'Pendidikan Profesi NERS', 2026, 'kasyifah015@gmail.com', '085782680163', 'Kasyifah (diri sendiri)', 'Perempuan', 'All Size', 'pemesanan toga untuk Kasyifah (profesi Ners)', 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/627/d0c4eec3-a44d-4671-848a-1301901ef927.jpg', 'Screenshot_20260918_103711.jpg', 'image/jpeg', 144022, '2026-09-18 03:38:51', NULL, NULL, NULL, NULL, NULL, NULL, 'ifh2yondOr8A0Af4Ciqbun1imTFgDNk9pVCAUoHm', '2026-09-18 03:34:03', '2026-09-18 03:38:51'),
(628, 'WSD-20260918-9Y1F', 'Husnul Fadillah', 'P27903123212', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'hasnulfadila@gmail.com', '081365406162', 'HUSNUL FADILLAH', 'Perempuan', 'All Size', 'Bayar toga wisuda Husnul Fadillah, A.Md.Kes Poltekkes Banten', 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/628/e75c8fa7-39b6-4cc4-b0d3-7608938b764b.png', 'IMG_0439.png', 'image/png', 153116, '2026-09-18 03:43:41', NULL, NULL, NULL, NULL, NULL, NULL, 'wDL0qhqdkU1JZsNkXAztwS0NNrCmTIJUjHW8teRR', '2026-09-18 03:41:18', '2026-09-18 03:43:41'),
(629, 'WSD-20260918-SZMS', 'Dhea Amelia', 'P27906125039', NULL, 6, 'Sarjana Terapan Keperawatan RPL', 2026, 'dheaa0610@gmail.com', '0895379644600', 'Dhea Amelia', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/629/2db09a3a-ad56-4b67-bf93-abb96e509b54.png', 'IMG_6563.png', 'image/png', 206927, '2026-09-18 04:24:23', NULL, NULL, NULL, NULL, NULL, NULL, 'bbGLWdac3NdX59tamgbj6873bfz1802gY2E1KSmh', '2026-09-18 04:23:55', '2026-09-18 04:24:23'),
(630, 'WSD-20260918-U4RQ', 'Anis Vina Nopitasari', 'P27906125038', NULL, 6, 'Sarjana Terapan Keperawatan RPL', 2026, 'nopitasarianis@gmail.com', '085715185475', 'Anis Vina Nopitasari', 'Perempuan', 'All Size', NULL, 1, 'payment_uploaded', 'uploaded', NULL, NULL, 'wisuda/payment-proofs/630/978b95f0-678c-4bd2-b74d-c5abd25d2cc0.jpg', 'IMG-20260918-WA0012.jpg', 'image/jpeg', 88925, '2026-09-18 04:37:38', NULL, NULL, NULL, NULL, NULL, NULL, 'QtO66fLJafttpwy6oeUyImVKMApgoI4qDX7O9GOw', '2026-09-18 04:29:58', '2026-09-18 04:37:38'),
(631, 'WSD-20260918-TAUT', 'Salsabila Ramadhani Nababan', 'P27903123088', NULL, 3, 'D3 Teknologi Laboratorium Medis', 2026, 'hyunislaas@gmail.com', '085697154201', 'Otong Nababan', 'Perempuan', 'All Size', NULL, 1, 'pending_payment', 'unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5zecVTiBj9hGxwU7dJyaJ6NnlmCN0cmlrf9NXVgN', '2026-09-18 05:32:57', '2026-09-18 05:32:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `graduation_toga_order_nim_locks`
--

CREATE TABLE `graduation_toga_order_nim_locks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nim_normalized` varchar(100) NOT NULL,
  `first_order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `graduation_toga_order_nim_locks`
--

INSERT INTO `graduation_toga_order_nim_locks` (`id`, `nim_normalized`, `first_order_id`, `created_at`, `updated_at`) VALUES
(1, 'P27901123001', 55, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(2, 'P27901123002', 67, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(3, 'P27901123003', 108, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(4, 'P27901123004', 49, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(5, 'P27901123005', 76, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(6, 'P27901123006', 172, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(7, 'P27901123007', 84, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(8, 'P27901123008', 114, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(9, 'P27901123009', 133, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(10, 'P27901123010', 43, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(11, 'P27901123011', 45, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(12, 'P27901123013', 72, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(13, 'P27901123014', 20, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(14, 'P27901123015', 99, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(15, 'P27901123016', 19, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(16, 'P27901123017', 103, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(17, 'P27901123019', 86, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(18, 'P27901123020', 66, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(19, 'P27901123021', 97, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(20, 'P27901123023', 135, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(21, 'P27901123024', 77, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(22, 'P27901123027', 81, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(23, 'P27901123028', 69, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(24, 'P27901123029', 63, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(25, 'P27901123030', 309, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(26, 'P27901123031', 61, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(27, 'P27901123034', 296, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(28, 'P27901123035', 78, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(29, 'P27901123036', 80, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(30, 'P27901123037', 141, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(31, 'P27901123039', 130, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(32, 'P27901123040', 75, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(33, 'P27901123041', 74, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(34, 'P27901123042', 44, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(35, 'P27901123043', 96, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(36, 'P27901123044', 277, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(37, 'P27901123045', 71, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(38, 'P27901123046', 7, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(39, 'P27901123047', 100, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(40, 'P27901123048', 58, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(41, 'P27901123049', 165, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(42, 'P27901123050', 73, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(43, 'P27901123051', 95, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(44, 'P27901123052', 47, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(45, 'P27901123053', 65, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(46, 'P27901123054', 113, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(47, 'P27901123055', 288, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(48, 'P27901123056', 87, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(49, 'P27901123057', 351, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(50, 'P27901123059', 90, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(51, 'P27901123060', 39, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(52, 'P27901123061', 59, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(53, 'P27901123062', 40, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(54, 'P27901123063', 89, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(55, 'P27901123065', 57, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(56, 'P27901123066', 68, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(57, 'P27901123067', 70, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(58, 'P27901123069', 339, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(59, 'P27901123070', 111, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(60, 'P27901123071', 177, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(61, 'P27901123073', 280, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(62, 'P27901123074', 94, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(63, 'P27901123075', 88, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(64, 'P27901123076', 41, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(65, 'P27901123077', 37, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(66, 'P27901123078', 208, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(67, 'P27901123079', 34, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(68, 'P27901123081', 53, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(69, 'P27901123083', 91, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(70, 'P27901123084', 33, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(71, 'P27901123085', 31, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(72, 'P27901123086', 25, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(73, 'P27901123087', 38, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(74, 'P27901123088', 36, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(75, 'P27901123089', 23, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(76, 'P27901123090', 27, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(77, 'P27901123092', 21, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(78, 'P27901123093', 79, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(79, 'P27901123094', 146, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(80, 'P27901123095', 144, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(81, 'P27901123096', 56, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(82, 'P27901123097', 404, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(83, 'P27901123098', 117, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(84, 'P27901123099', 286, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(85, 'P27901123100', 11, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(86, 'P27901123101', 105, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(87, 'P27901123102', 115, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(88, 'P27901123105', 92, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(89, 'P27901123106', 118, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(90, 'P27901123107', 18, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(91, 'P2790123157', 120, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(92, 'P27902122038', 347, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(93, 'P27902123001', 12, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(94, 'P27902123002', 169, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(95, 'P27902123003', 170, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(96, 'P27902123005', 192, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(97, 'P27902123006', 318, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(98, 'P27902123007', 122, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(99, 'P27902123009', 337, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(100, 'P27902123010', 313, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(101, 'P27902123013', 198, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(102, 'P27902123017', 13, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(103, 'P27902123019', 28, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(104, 'P27902123022', 52, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(105, 'P27902123026', 186, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(106, 'P27902123028', 35, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(107, 'P27902123029', 9, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(108, 'P27902123034', 30, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(109, 'P27902123035', 167, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(110, 'P27902123039', 17, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(111, 'P27902123040', 359, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(112, 'P27902123044', 395, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(113, 'P27902123045', 14, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(114, 'P27902123047', 211, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(115, 'P27902123051', 376, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(116, 'P27902123052', 184, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(117, 'P27902123053', 127, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(118, 'P27902123057', 383, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(119, 'P27902123062', 273, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(120, 'P27902123063', 131, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(121, 'P27902123065', 4, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(122, 'P27902123066', 305, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(123, 'P27902123067', 353, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(124, 'P27902123068', 294, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(125, 'P27902123070', 182, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(126, 'P27902123074', 400, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(127, 'P27902123076', 284, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(128, 'P27902123077', 235, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(129, 'P27902123078', 64, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(130, 'P27902123079', 386, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(131, 'P27902123080', 136, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(132, 'P27902123083', 392, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(133, 'P27902123084', 239, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(134, 'P27902123087', 143, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(135, 'P27902123089', 341, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(136, 'P27902123091', 150, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(137, 'P27902123093', 293, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(138, 'P27902123094', 132, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(139, 'P27902123096', 101, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(140, 'P27902123097', 374, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(141, 'P27902123098', 370, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(142, 'P27902123100', 6, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(143, 'P27902123101', 394, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(144, 'P27902123107', 312, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(145, 'P27902123108', 15, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(146, 'P27902123110', 368, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(147, 'P27902123113', 256, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(148, 'P27902123114', 128, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(149, 'P27902123115', 389, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(150, 'P27902123116', 315, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(151, 'P27902123117', 42, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(152, 'P27902123118', 306, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(153, 'P27902123119', 299, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(154, 'P27902123120', 62, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(155, 'P27902123122', 147, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(156, 'P27902123123', 50, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(157, 'P27902123124', 304, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(158, 'P27902123129', 158, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(159, 'P27902123134', 367, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(160, 'P27902123136', 276, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(162, 'P27902123138', 240, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(163, 'P27902123144', 8, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(164, 'P27902123145', 54, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(165, 'P27902123146', 187, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(166, 'P27902123148', 188, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(167, 'P27902123149', 287, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(168, 'P27902123151', 365, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(169, 'P27902123152', 363, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(170, 'P27902123153', 364, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(171, 'P27902123160', 125, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(172, 'P27902123161', 162, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(173, 'P27902123163', 138, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(174, 'P27902123164', 126, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(175, 'P27902124106', 123, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(176, 'P27903123003', 183, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(177, 'P27903123004', 152, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(178, 'P27903123005', 193, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(179, 'P27903123007', 151, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(180, 'P27903123008', 399, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(181, 'P27903123011', 175, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(182, 'P27903123013', 153, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(183, 'P27903123015', 129, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(184, 'P27903123016', 266, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(185, 'P27903123018', 206, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(186, 'P27903123022', 160, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(187, 'P27903123023', 154, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(188, 'P27903123024', 189, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(189, 'P27903123025', 110, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(190, 'P27903123026', 180, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(191, 'P27903123027', 330, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(192, 'P27903123028', 352, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(193, 'P27903123029', 283, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(194, 'P27903123030', 259, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(195, 'P27903123031', 242, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(196, 'P27903123032', 29, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(198, 'P27903123034', 343, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(199, 'P27903123035', 109, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(200, 'P27903123036', 349, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(201, 'P27903123040', 202, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(202, 'P27903123042', 191, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(203, 'P27903123043', 403, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(204, 'P27903123044', 196, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(205, 'P27903123046', 260, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(206, 'P27903123047', 149, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(207, 'P27903123048', 176, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(208, 'P27903123049', 393, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(209, 'P27903123050', 263, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(210, 'P27903123053', 326, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(211, 'P27903123055', 384, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(212, 'P27903123058', 314, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(213, 'P27903123059', 227, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(214, 'P27903123061', 171, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(215, 'P27903123064', 331, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(216, 'P27903123065', 267, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(217, 'P27903123068', 228, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(218, 'P27903123069', 161, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(219, 'P27903123070', 291, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(220, 'P27903123073', 194, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(221, 'P27903123074', 185, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(222, 'P27903123076', 355, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(223, 'P27903123081', 204, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(224, 'P27903123084', 237, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(225, 'P27903123087', 261, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(226, 'P27903123089', 322, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(227, 'P27903123092', 332, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(228, 'P27903123093', 272, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(229, 'P27903123094', 270, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(230, 'P27903123095', 387, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(231, 'P27903123096', 381, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(232, 'P27903123100', 225, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(233, 'P27903123104', 258, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(234, 'P27903123106', 335, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(235, 'P27903123107', 302, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(236, 'P27903123109', 390, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(237, 'P27903123111', 203, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(238, 'P27903123113', 195, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(239, 'P27903123114', 373, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(240, 'P27903123115', 257, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(241, 'P27903123121', 285, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(242, 'P27903123123', 325, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(243, 'P27903123124', 350, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(244, 'P27903123125', 201, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(245, 'P27903123126', 333, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(246, 'P27903123127', 253, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(247, 'P27903123128', 178, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(248, 'P27903123129', 281, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(249, 'P27903123130', 164, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(250, 'P27903123131', 181, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(251, 'P27903123134', 282, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(252, 'P27903123136', 382, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(253, 'P27903123137', 320, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(254, 'P27903123138', 317, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(255, 'P27903123140', 357, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(256, 'P27903123142', 233, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(257, 'P27903123145', 217, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(258, 'P27903123146', 251, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(259, 'P27903123147', 223, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(260, 'P27903123148', 221, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(261, 'P27903123150', 356, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(262, 'P27903123152', 220, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(263, 'P27903123153', 377, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(264, 'P27903123154', 319, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(265, 'P27903123155', 243, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(266, 'P27903123159', 173, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(267, 'P27903123161', 215, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(268, 'P27903123163', 119, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(269, 'P27903123165', 391, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(270, 'P27903123167', 205, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(271, 'P27903123168', 230, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(272, 'P27903123171', 289, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(273, 'P27903123172', 124, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(274, 'P27903123176', 397, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(275, 'P27903123179', 385, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(276, 'P27903123180', 121, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(277, 'P27903123181', 398, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(278, 'P27903123182', 254, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(279, 'P27903123184', 229, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(280, 'P27903123185', 269, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(281, 'P27903123187', 379, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(282, 'P27903123189', 234, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(283, 'P27903123192', 265, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(284, 'P27903123194', 248, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(285, 'P27903123198', 298, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(287, 'P27903123202', 199, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(288, 'P27903123203', 358, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(289, 'P27903123204', 212, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(290, 'P27903123205', 344, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(291, 'P27903123209', 336, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(292, 'P27903123210', 406, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(293, 'P27903123213', 190, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(294, 'P27903123215', 375, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(295, 'P27903123216', 327, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(296, 'P27903123217', 290, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(297, 'P27903123218', 279, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(298, 'P27903123219', 226, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(299, 'P27903123220', 252, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(300, 'P27903123221', 361, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(301, 'P27903123223', 334, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(302, 'P27903123225', 275, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(303, 'P27903123226', 244, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(304, 'P27903123228', 329, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(305, 'P27903123229', 209, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(306, 'P27903123230', 328, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(307, 'P27903123233', 210, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(308, 'P27903123234', 213, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(309, 'P27903123240', 369, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(310, 'P27903123241', 232, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(311, 'P27903123242', 303, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(312, 'P27903123243', 378, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(313, 'P27904122016', 405, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(314, 'P27904122022', 408, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(315, 'P27904122027', 311, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(316, 'P27904122029', 340, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(317, 'P27904122036', 396, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(318, 'P27904122037', 316, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(319, 'P27904122041', 310, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(320, 'P27904122044', 407, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(321, 'P27904122049', 308, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(322, 'P27904122051', 348, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(323, 'P27904122054', 342, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(324, 'P27904122063', 372, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(325, 'P27904122074', 402, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(326, 'P27904122075', 401, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(327, 'P27904122082', 300, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(328, 'P27904122086', 380, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(329, 'P27904122088', 292, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(330, 'P27904122089', 297, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(332, 'P2793123139', 366, '2026-09-14 15:08:38', '2026-09-14 15:08:38'),
(512, 'P27903123186', 409, '2026-09-14 22:31:16', '2026-09-14 22:31:16'),
(513, 'P27902123046', 410, '2026-09-14 23:15:20', '2026-09-14 23:15:20'),
(514, 'P27904122001', 411, '2026-09-15 00:04:50', '2026-09-15 00:04:50'),
(515, 'P27902123139', 412, '2026-09-15 00:15:00', '2026-09-15 00:15:00'),
(516, 'P27903123177', 413, '2026-09-15 00:51:27', '2026-09-15 00:51:27'),
(517, 'P27904122010', 414, '2026-09-15 01:03:10', '2026-09-15 01:03:10'),
(518, 'P27903123197', 415, '2026-09-15 01:37:32', '2026-09-15 01:37:32'),
(519, 'P27903123206', 416, '2026-09-15 01:47:56', '2026-09-15 01:47:56'),
(520, 'P27904122008', 417, '2026-09-15 01:48:53', '2026-09-15 01:48:53'),
(521, 'P27903123098', 418, '2026-09-15 01:54:19', '2026-09-15 01:54:19'),
(522, 'P27904122070', 419, '2026-09-15 02:04:06', '2026-09-15 02:04:06'),
(523, 'P27902123038', 420, '2026-09-15 02:13:30', '2026-09-15 02:13:30'),
(524, 'P27903123200', 421, '2026-09-15 02:26:25', '2026-09-15 02:26:25'),
(525, 'P27903123144', 422, '2026-09-15 02:28:29', '2026-09-15 02:28:29'),
(526, 'P27902123054', 423, '2026-09-15 02:30:28', '2026-09-15 02:30:28'),
(527, 'P27903123067', 424, '2026-09-15 02:33:13', '2026-09-15 02:33:13'),
(528, 'P27901123038', 425, '2026-09-15 02:46:21', '2026-09-15 02:46:21'),
(529, '08148679503123', 426, '2026-09-15 02:47:29', '2026-09-15 02:47:29'),
(530, 'P27902123112', 427, '2026-09-15 02:50:38', '2026-09-15 02:50:38'),
(531, 'P27903123001', 428, '2026-09-15 02:55:26', '2026-09-15 02:55:26'),
(532, 'P27905125099', 429, '2026-09-15 03:24:09', '2026-09-15 03:24:09'),
(533, 'P27905125027', 430, '2026-09-15 03:51:04', '2026-09-15 03:51:04'),
(534, 'P27903123214', 431, '2026-09-15 04:01:54', '2026-09-15 04:01:54'),
(535, 'P27903123039', 432, '2026-09-15 04:21:18', '2026-09-15 04:21:18'),
(536, 'P27903123063', 433, '2026-09-15 04:23:06', '2026-09-15 04:23:06'),
(537, 'P27905125094', 434, '2026-09-15 04:23:44', '2026-09-15 04:23:44'),
(538, 'P27903123196', 435, '2026-09-15 04:25:19', '2026-09-15 04:25:19'),
(540, 'P27902123016', 437, '2026-09-15 04:32:55', '2026-09-15 04:32:55'),
(542, 'P27903123062', 439, '2026-09-15 04:45:52', '2026-09-15 04:45:52'),
(543, 'P27903123112', 440, '2026-09-15 05:31:24', '2026-09-15 05:31:24'),
(544, 'P27903123160', 441, '2026-09-15 05:32:46', '2026-09-15 05:32:46'),
(545, 'P27903123097', 442, '2026-09-15 05:33:31', '2026-09-15 05:33:31'),
(546, 'P27905126120', 443, '2026-09-15 05:41:22', '2026-09-15 05:41:22'),
(547, 'P27903123201', 444, '2026-09-15 05:44:25', '2026-09-15 05:44:25'),
(548, 'P27903123236', 445, '2026-09-15 05:50:55', '2026-09-15 05:50:55'),
(549, 'P27905125046', 446, '2026-09-15 05:55:16', '2026-09-15 05:55:16'),
(550, 'P27903123118', 447, '2026-09-15 06:04:09', '2026-09-15 06:04:09'),
(551, 'P27905125043', 448, '2026-09-15 06:09:12', '2026-09-15 06:09:12'),
(552, 'P27904122011', 449, '2026-09-15 06:09:57', '2026-09-15 06:09:57'),
(553, 'P27903123183', 450, '2026-09-15 06:15:31', '2026-09-15 06:15:31'),
(554, 'P27903123133', 451, '2026-09-15 06:41:18', '2026-09-15 06:41:18'),
(555, 'P27903123149', 452, '2026-09-15 06:45:39', '2026-09-15 06:45:39'),
(557, 'P27904122081', 454, '2026-09-15 07:09:58', '2026-09-15 07:09:58'),
(558, 'P27905125029', 455, '2026-09-15 07:12:55', '2026-09-15 07:12:55'),
(559, 'P27905125012', 456, '2026-09-15 07:15:09', '2026-09-15 07:15:09'),
(560, 'P27903123164', 457, '2026-09-15 07:37:54', '2026-09-15 07:37:54'),
(561, 'P27903123132', 458, '2026-09-15 07:49:29', '2026-09-15 07:49:29'),
(562, 'P27903123083', 459, '2026-09-15 07:55:49', '2026-09-15 07:55:49'),
(569, 'P27904122090', 466, '2026-09-15 08:58:11', '2026-09-15 08:58:11'),
(570, 'P27905125035', 467, '2026-09-15 09:36:10', '2026-09-15 09:36:10'),
(571, 'P27902123086', 468, '2026-09-15 09:45:03', '2026-09-15 09:45:03'),
(572, 'P27904122078', 469, '2026-09-15 09:49:55', '2026-09-15 09:49:55'),
(574, 'P27901123033', 471, '2026-09-15 10:55:49', '2026-09-15 10:55:49'),
(575, 'P27902123027', 472, '2026-09-15 11:26:21', '2026-09-15 11:26:21'),
(576, 'P27905126131', 473, '2026-09-15 11:43:52', '2026-09-15 11:43:52'),
(577, 'P27904122035', 474, '2026-09-15 11:45:44', '2026-09-15 11:45:44'),
(578, 'P27905125028', 475, '2026-09-15 11:48:25', '2026-09-15 11:48:25'),
(579, 'P27903123135', 476, '2026-09-15 11:53:33', '2026-09-15 11:53:33'),
(580, 'P27905125091', 477, '2026-09-15 13:05:16', '2026-09-15 13:05:16'),
(581, 'P27903123078', 478, '2026-09-15 13:18:36', '2026-09-15 13:18:36'),
(582, 'P27902123159', 479, '2026-09-15 13:25:09', '2026-09-15 13:25:09'),
(583, 'P27901123058', 480, '2026-09-15 13:27:26', '2026-09-15 13:27:26'),
(584, 'P27902123126', 481, '2026-09-15 13:33:11', '2026-09-15 13:33:11'),
(586, 'P27903123175', 483, '2026-09-15 13:42:38', '2026-09-15 13:42:38'),
(587, 'P27902123127', 484, '2026-09-15 13:46:03', '2026-09-15 13:46:03'),
(588, 'P27902123135', 485, '2026-09-15 14:32:43', '2026-09-15 14:32:43'),
(589, 'P27904122040', 486, '2026-09-15 14:51:17', '2026-09-15 14:51:17'),
(590, 'P27903123166', 487, '2026-09-15 14:51:54', '2026-09-15 14:51:54'),
(591, 'P27902123090', 488, '2026-09-15 23:24:59', '2026-09-15 23:24:59'),
(592, 'P27903123072', 489, '2026-09-16 00:43:07', '2026-09-16 00:43:07'),
(594, 'P27901123068', 491, '2026-09-16 01:19:31', '2026-09-16 01:19:31'),
(595, 'P27903123237', 492, '2026-09-16 01:25:28', '2026-09-16 01:25:28'),
(596, 'P27901123032', 493, '2026-09-16 01:50:03', '2026-09-16 01:50:03'),
(597, 'P27903123227', 494, '2026-09-16 02:00:27', '2026-09-16 02:00:27'),
(598, 'P27905125042', 495, '2026-09-16 02:09:31', '2026-09-16 02:09:31'),
(599, 'P27903123235', 496, '2026-09-16 02:12:37', '2026-09-16 02:12:37'),
(600, 'P27904122030', 497, '2026-09-16 02:41:11', '2026-09-16 02:41:11'),
(602, 'P27901123022', 499, '2026-09-16 02:59:35', '2026-09-16 02:59:35'),
(603, 'P27905125044', 500, '2026-09-16 03:14:58', '2026-09-16 03:14:58'),
(604, 'P27905125053', 501, '2026-09-16 03:45:41', '2026-09-16 03:45:41'),
(605, 'P27903123151', 502, '2026-09-16 03:46:06', '2026-09-16 03:46:06'),
(606, 'P27903123085', 503, '2026-09-16 03:59:07', '2026-09-16 03:59:07'),
(607, 'P27902123032', 504, '2026-09-16 03:59:46', '2026-09-16 03:59:46'),
(608, 'P27905125062', 505, '2026-09-16 04:09:01', '2026-09-16 04:09:01'),
(609, 'P27905126019', 506, '2026-09-16 04:16:36', '2026-09-16 04:16:36'),
(610, 'P27904122094', 507, '2026-09-16 04:24:53', '2026-09-16 04:24:53'),
(611, 'P27903123188', 508, '2026-09-16 04:30:38', '2026-09-16 04:30:38'),
(612, 'P27903123222', 509, '2026-09-16 04:32:35', '2026-09-16 04:32:35'),
(613, 'P27905125045', 510, '2026-09-16 05:03:26', '2026-09-16 05:03:26'),
(614, 'P27904122077', 511, '2026-09-16 05:06:40', '2026-09-16 05:06:40'),
(615, 'P27903123178', 512, '2026-09-16 05:54:14', '2026-09-16 05:54:14'),
(616, 'P27902123042', 513, '2026-09-16 06:05:05', '2026-09-16 06:05:05'),
(617, 'P27902123043', 514, '2026-09-16 06:07:03', '2026-09-16 06:07:03'),
(618, 'P27902123140', 515, '2026-09-16 06:47:28', '2026-09-16 06:47:28'),
(619, 'P27903123052', 516, '2026-09-16 07:17:46', '2026-09-16 07:17:46'),
(620, 'P27902123128', 517, '2026-09-16 07:58:03', '2026-09-16 07:58:03'),
(621, 'P27902123008', 518, '2026-09-16 07:59:53', '2026-09-16 07:59:53'),
(622, 'P27903123224', 519, '2026-09-16 09:23:13', '2026-09-16 09:23:13'),
(623, 'P27902123015', 520, '2026-09-16 09:44:36', '2026-09-16 09:44:36'),
(624, 'P27904122095', 521, '2026-09-16 09:58:49', '2026-09-16 09:58:49'),
(626, 'P27904122046', 523, '2026-09-16 10:06:57', '2026-09-16 10:06:57'),
(627, 'P27903123102', 524, '2026-09-16 10:39:31', '2026-09-16 10:39:31'),
(628, 'P27903123120', 525, '2026-09-16 10:51:31', '2026-09-16 10:51:31'),
(629, 'P27905125090', 526, '2026-09-16 10:54:54', '2026-09-16 10:54:54'),
(630, 'P27904122023', 527, '2026-09-16 11:28:09', '2026-09-16 11:28:09'),
(631, 'P27903123156', 528, '2026-09-16 11:50:36', '2026-09-16 11:50:36'),
(632, 'P27904122026', 529, '2026-09-16 11:59:26', '2026-09-16 11:59:26'),
(633, 'P27904122052', 530, '2026-09-16 12:43:21', '2026-09-16 12:43:21'),
(634, 'P27902123073', 531, '2026-09-16 12:49:42', '2026-09-16 12:49:42'),
(635, 'P27902123048', 532, '2026-09-16 13:32:23', '2026-09-16 13:32:23'),
(636, 'P27902123081', 533, '2026-09-16 15:00:22', '2026-09-16 15:00:22'),
(637, 'P27902123025', 534, '2026-09-16 15:09:13', '2026-09-16 15:09:13'),
(638, 'P27902123023', 535, '2026-09-16 15:10:08', '2026-09-16 15:10:08'),
(639, 'P27903123191', 536, '2026-09-16 15:15:30', '2026-09-16 15:15:30'),
(640, 'P27906125047', 537, '2026-09-16 15:17:21', '2026-09-16 15:17:21'),
(641, 'P27906125041', 538, '2026-09-16 15:30:07', '2026-09-16 15:30:07'),
(642, 'P27906125048', 539, '2026-09-16 15:30:44', '2026-09-16 15:30:44'),
(643, 'P27903123006', 540, '2026-09-16 15:44:07', '2026-09-16 15:44:07'),
(644, 'P27903123041', 541, '2026-09-16 15:44:09', '2026-09-16 15:44:09'),
(645, 'P27903123009', 542, '2026-09-16 15:58:55', '2026-09-16 15:58:55'),
(646, 'P27902123103', 543, '2026-09-16 17:19:30', '2026-09-16 17:19:30'),
(647, 'P27904122038', 544, '2026-09-16 17:25:34', '2026-09-16 17:25:34'),
(648, 'P27904122084', 545, '2026-09-16 19:30:17', '2026-09-16 19:30:17'),
(649, 'P27903123057', 546, '2026-09-16 22:14:40', '2026-09-16 22:14:40'),
(650, 'P27903123173', 547, '2026-09-17 00:25:23', '2026-09-17 00:25:23'),
(651, 'P27904122048', 548, '2026-09-17 00:28:07', '2026-09-17 00:28:07'),
(652, 'P27902123018', 549, '2026-09-17 00:52:19', '2026-09-17 00:52:19'),
(653, 'P27902123012', 550, '2026-09-17 00:53:54', '2026-09-17 00:53:54'),
(654, 'P27906125046', 551, '2026-09-17 00:58:49', '2026-09-17 00:58:49'),
(655, 'P27905125025', 552, '2026-09-17 02:30:01', '2026-09-17 02:30:01'),
(656, 'P27905125003', 553, '2026-09-17 02:30:19', '2026-09-17 02:30:19'),
(657, 'P27905125036', 554, '2026-09-17 02:31:25', '2026-09-17 02:31:25'),
(659, 'P27905125016', 556, '2026-09-17 02:48:35', '2026-09-17 02:48:35'),
(660, 'P27902123133', 557, '2026-09-17 02:50:47', '2026-09-17 02:50:47'),
(661, 'P27903123020', 558, '2026-09-17 02:57:39', '2026-09-17 02:57:39'),
(662, 'P27905125008', 559, '2026-09-17 02:59:46', '2026-09-17 02:59:46'),
(663, 'P27903123239', 560, '2026-09-17 03:04:12', '2026-09-17 03:04:12'),
(664, 'P27902123061', 561, '2026-09-17 03:18:12', '2026-09-17 03:18:12'),
(665, 'P27903123231', 562, '2026-09-17 03:20:31', '2026-09-17 03:20:31'),
(666, 'P27905125021', 563, '2026-09-17 03:29:37', '2026-09-17 03:29:37'),
(667, 'P27902123030', 564, '2026-09-17 03:31:35', '2026-09-17 03:31:35'),
(668, 'P27902123130', 565, '2026-09-17 03:40:00', '2026-09-17 03:40:00'),
(669, 'P27902123156', 566, '2026-09-17 03:45:29', '2026-09-17 03:45:29'),
(670, 'P27904122092', 567, '2026-09-17 03:51:53', '2026-09-17 03:51:53'),
(671, 'P27902123121', 568, '2026-09-17 03:52:39', '2026-09-17 03:52:39'),
(672, 'P27905125026', 569, '2026-09-17 04:02:14', '2026-09-17 04:02:14'),
(673, 'P27905125001', 570, '2026-09-17 04:04:36', '2026-09-17 04:04:36'),
(674, 'P27905125097', 571, '2026-09-17 04:13:07', '2026-09-17 04:13:07'),
(675, 'P27902123060', 572, '2026-09-17 04:21:16', '2026-09-17 04:21:16'),
(676, 'P27903123033', 573, '2026-09-17 04:22:48', '2026-09-17 04:22:48'),
(677, 'P27902123014', 574, '2026-09-17 04:31:07', '2026-09-17 04:31:07'),
(678, 'P27902123137', 575, '2026-09-17 04:32:46', '2026-09-17 04:32:46'),
(679, 'P27903123143', 576, '2026-09-17 04:38:27', '2026-09-17 04:38:27'),
(680, 'P27903123021', 577, '2026-09-17 04:46:36', '2026-09-17 04:46:36'),
(681, 'P27905125039', 578, '2026-09-17 04:55:00', '2026-09-17 04:55:00'),
(682, 'P27903123080', 579, '2026-09-17 05:00:35', '2026-09-17 05:00:35'),
(683, 'P27905125005', 580, '2026-09-17 05:01:37', '2026-09-17 05:01:37'),
(684, 'P27905125007', 581, '2026-09-17 05:26:30', '2026-09-17 05:26:30'),
(685, 'P27904122083', 582, '2026-09-17 05:31:00', '2026-09-17 05:31:00'),
(686, 'P27905125041', 583, '2026-09-17 05:33:46', '2026-09-17 05:33:46'),
(687, 'P27905125040', 584, '2026-09-17 05:37:52', '2026-09-17 05:37:52'),
(688, 'P27903123190', 585, '2026-09-17 06:09:24', '2026-09-17 06:09:24'),
(689, 'P27903123232', 586, '2026-09-17 06:18:36', '2026-09-17 06:18:36'),
(690, 'P27903123086', 587, '2026-09-17 06:28:49', '2026-09-17 06:28:49'),
(691, 'P27904122057', 588, '2026-09-17 06:29:38', '2026-09-17 06:29:38'),
(692, 'P27903123170', 589, '2026-09-17 06:45:01', '2026-09-17 06:45:01'),
(693, 'P27903123066', 590, '2026-09-17 07:00:02', '2026-09-17 07:00:02'),
(694, 'P27902123142', 591, '2026-09-17 07:16:02', '2026-09-17 07:16:02'),
(695, 'P27904122097', 592, '2026-09-17 07:17:38', '2026-09-17 07:17:38'),
(696, 'P2790612042', 593, '2026-09-17 07:46:52', '2026-09-17 07:46:52'),
(697, 'P27904122018', 594, '2026-09-17 07:59:01', '2026-09-17 07:59:01'),
(698, 'P27905125096', 595, '2026-09-17 07:59:52', '2026-09-17 07:59:52'),
(699, 'P27902123165', 596, '2026-09-17 08:01:05', '2026-09-17 08:01:05'),
(700, 'P27903123082', 597, '2026-09-17 08:09:45', '2026-09-17 08:09:45'),
(701, 'P27905125011', 598, '2026-09-17 08:23:31', '2026-09-17 08:23:31'),
(702, 'P27903123101', 599, '2026-09-17 08:25:23', '2026-09-17 08:25:23'),
(703, 'P27905125015', 600, '2026-09-17 08:41:52', '2026-09-17 08:41:52'),
(704, 'P27903123238', 601, '2026-09-17 09:38:47', '2026-09-17 09:38:47'),
(705, 'P27905125018', 602, '2026-09-17 09:45:39', '2026-09-17 09:45:39'),
(706, 'P27906125058', 603, '2026-09-17 09:54:57', '2026-09-17 09:54:57'),
(707, 'P27905125010', 604, '2026-09-17 10:13:07', '2026-09-17 10:13:07'),
(708, 'P27902123143', 605, '2026-09-17 10:35:17', '2026-09-17 10:35:17'),
(709, 'P27905125034', 606, '2026-09-17 10:42:13', '2026-09-17 10:42:13'),
(710, 'P27903123019', 607, '2026-09-17 11:19:11', '2026-09-17 11:19:11'),
(711, 'P27905125032', 608, '2026-09-17 11:36:42', '2026-09-17 11:36:42'),
(712, 'P27905125022', 609, '2026-09-17 12:04:15', '2026-09-17 12:04:15'),
(713, 'P27905125038', 610, '2026-09-17 12:15:57', '2026-09-17 12:15:57'),
(714, 'P27905125023', 611, '2026-09-17 12:21:01', '2026-09-17 12:21:01'),
(715, 'P27904122032', 612, '2026-09-17 12:27:26', '2026-09-17 12:27:26'),
(716, 'P27903123054', 613, '2026-09-17 13:27:04', '2026-09-17 13:27:04'),
(717, '13864874575476', 614, '2026-09-17 14:02:30', '2026-09-17 14:02:30'),
(718, 'P27904122071', 615, '2026-09-17 14:10:19', '2026-09-17 14:10:19'),
(719, 'P27903123119', 616, '2026-09-17 14:27:42', '2026-09-17 14:27:42'),
(720, 'P27905125006', 617, '2026-09-17 15:30:19', '2026-09-17 15:30:19'),
(721, 'P27905125098', 618, '2026-09-17 16:24:44', '2026-09-17 16:24:44'),
(722, 'P27905126056', 619, '2026-09-17 22:42:45', '2026-09-17 22:42:45'),
(723, 'P27902123050', 620, '2026-09-17 23:18:17', '2026-09-17 23:18:17'),
(724, 'P27904122012', 621, '2026-09-18 00:30:23', '2026-09-18 00:30:23'),
(725, 'P27906125044', 622, '2026-09-18 00:52:28', '2026-09-18 00:52:28'),
(726, 'P27902123155', 623, '2026-09-18 01:11:43', '2026-09-18 01:11:43'),
(727, 'P27903123195', 624, '2026-09-18 02:37:40', '2026-09-18 02:37:40'),
(728, 'P27903123060', 625, '2026-09-18 02:48:47', '2026-09-18 02:48:47'),
(729, 'P27904122096', 626, '2026-09-18 03:04:37', '2026-09-18 03:04:37'),
(730, 'P27905125019', 627, '2026-09-18 03:34:03', '2026-09-18 03:34:03'),
(731, 'P27903123212', 628, '2026-09-18 03:41:18', '2026-09-18 03:41:18'),
(732, 'P27906125039', 629, '2026-09-18 04:23:55', '2026-09-18 04:23:55'),
(733, 'P27906125038', 630, '2026-09-18 04:29:58', '2026-09-18 04:29:58'),
(734, 'P27903123088', 631, '2026-09-18 05:32:57', '2026-09-18 05:32:57');

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
('0MixXwOAnJdMv0PfpdZvbIYaXMR0O6ll3CmgRPc6', NULL, '180.254.68.241', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiIxRGhVVWZuRWY1ZkV1MXl6QlRGU3FOajZKV0N4MjJoRXRqR2pTN1ZaIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYVwvcGVzYW5hblwvV1NELTIwMjYwOTE3LU5QRkk/dG9rZW49Y29TNjl4SzliQnZpU0RtbXhiYjJPVEtTdjBMSEozdm81Z21FZ3ZBcyIsInJvdXRlIjoid2lzdWRhLm9yZGVyLnNob3cifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1789706398),
('3cv2If77VGU4A4dTfcmHeKKj6fBV0O7VlJpkL9MQ', NULL, '182.2.185.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.4 Mobile/15E148 Safari/604.1', 'eyJfdG9rZW4iOiJJbkM2Z251dEpPeU1NNVJDN1h6d3NUU2s0eTZFOW9yc0M5QkN4d1F3IiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYSIsInJvdXRlIjoid2lzdWRhLmluZGV4In0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1789704254),
('6aJi7l1clW15NOCEDBMnMV0i4chQwSalGX7fUm2I', NULL, '2001:448a:2098:5b6a:46bd:f702:8922:2989', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/30.0 Chrome/143.0.0.0 Mobile Safari/537.36', 'eyJfdG9rZW4iOiI4bW9MOVFweWlCc0tHSzJ6d1NhM3ZnTk5lZnFhdTBUYkp0dDU1WnQ2IiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYVwvcGVzYW5hblwvV1NELTIwMjYwOTEzLVpXTERcL3BlbWJheWFyYW4/dG9rZW49R3RWc0I0ZVR2Um5CUHdxN2pKOGhVRlgyM1UxOTVROW5hdEpRN0NTOSIsInJvdXRlIjoid2lzdWRhLnBheW1lbnQifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1789705303),
('8DzayOzb68bnipOvtjQCj6L4oM1Y5JxAUhih7yjX', NULL, '114.10.70.229', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Mobile Safari/537.36', 'eyJfdG9rZW4iOiJjZVhVVWxkdjlQeUFLbnN3a1Q2bTB6YUNGUXg3TlRWMW1vN3NubEE1IiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYVwvcGVzYW4iLCJyb3V0ZSI6Indpc3VkYS5vcmRlci5jcmVhdGUifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1789707599),
('8WbShbS0o9csP2RXXSl6pH5143JGWGW5qqHt8fjV', NULL, '103.172.118.74', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/601.2.4 (KHTML, like Gecko) Version/9.0.1 Safari/601.2.4 facebookexternalhit/1.1 Facebot Twitterbot/1.0', 'eyJfdG9rZW4iOiJXRmo3WUVpcVd0Mnp6NXpwWXIxS2tpNGlBbG4zdGE1VWVoMWtOVU5pIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYSIsInJvdXRlIjoid2lzdWRhLmluZGV4In0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1789708581),
('aqMfKr4XrPGGP0nVLBaXQJBfeNyLbgva2FXzaeGi', NULL, '114.8.203.234', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Mobile/15E148 Safari/604.1', 'eyJfdG9rZW4iOiJpTGdwbmVlb0FLdTFmeURoV01zcjZQRnFRWktpVGhscDhmQXJpUVU0IiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL2JlcmFuZGEiLCJyb3V0ZSI6ImJlcmFuZGEifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1789704696),
('B7vQKeOSlt11he3wDqGcrC5M0VEBHKP6Y4lMY3w5', NULL, '157.20.98.62', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJqWnYxdkhVZTA0Ulo3QU03eFdnRVkxa2FtbjYzUlFOYk8wYlVLRHYxIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYSIsInJvdXRlIjoid2lzdWRhLmluZGV4In0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1789703907),
('CjidBDGg484WNNQ69WRXD9uQA8l9K4FXy8ZEwIz9', NULL, '103.140.131.161', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJvZjNaTnN0Y1pXY1ZvbkhwNEoxVmRZUDdJa3BTSjNUYlhBbmM5N0J6IiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYVwvcGVzYW5hblwvV1NELTIwMjYwOTE4LVRBVVQ/dG9rZW49NXplY1ZUaUJqOWhHeHdVN2RKeWFKNk5ubG1DTjBjbWxyZjlOWFZnTiIsInJvdXRlIjoid2lzdWRhLm9yZGVyLnNob3cifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1789709578),
('Dd6llF62H6o777sn2a2B8HaIVDGyykLNybN6o2HB', NULL, '103.177.92.178', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/30.0 Chrome/143.0.0.0 Mobile Safari/537.36', 'eyJfdG9rZW4iOiJOeDFqaWZudmFrYlhwTlM0T3gyNDZjQ2wySnZRanpacmFRem4xTDU3IiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYVwvcGVzYW5hblwvV1NELTIwMjYwOTE4LVU0UlFcL3BlbWJheWFyYW4/dG9rZW49UXRPNjZmTEphZnR0cHd5Nm9lVXlJbVZLTUFwZ29JNHFEWDdPOUdPdyIsInJvdXRlIjoid2lzdWRhLnBheW1lbnQifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1789706258),
('fw1vXhvIhentte42Q1t331SgOv1oc6K2M2bMjdl9', NULL, '182.2.185.104', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiI5ZWRqUDVwZEczb2lKeWVRVjlNbUIwdXNWeUZUd1N6U0tvbkxuVFI1IiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL2JlcmFuZGEiLCJyb3V0ZSI6ImJlcmFuZGEifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1789708343),
('IECR0ME36y6TKbkqWUdDJqv0Rn3Vi4WIBF3w65Wl', NULL, '182.3.43.124', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Mobile Safari/537.36', 'eyJfdG9rZW4iOiJ6U3FOVEJvbzQzSXpwOWR1Z0pXRWZla0tuS2ZKOWlpUWtsS2JrbmxpIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYSIsInJvdXRlIjoid2lzdWRhLmluZGV4In0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1789707942),
('Jcj8D3v7cnWtCvarYRorADz8EGkFrz3QgsxeTk5K', NULL, '182.2.185.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/601.2.4 (KHTML, like Gecko) Version/9.0.1 Safari/601.2.4 facebookexternalhit/1.1 Facebot Twitterbot/1.0', 'eyJfdG9rZW4iOiJNUVJSbzV6UWpmTHpHZ1ppT2RNSWJsVEZ4bGthUUdPYkwwZ1dJdFV4IiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYSIsInJvdXRlIjoid2lzdWRhLmluZGV4In0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1789704254),
('JtM8kLpxKdvwRkMvVKpVZvEb2mIxUjhk47YS5Dj3', NULL, '103.177.92.178', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.7.5 Mobile/15E148 Safari/604.1', 'eyJfdG9rZW4iOiJBY3NHRkFPcHlxOExyZjJJT2xNU2x0d2F3MXltcHFTeWlFV090dU45IiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYVwvcGVzYW5hblwvV1NELTIwMjYwOTE4LVNaTVNcL3BlbWJheWFyYW4/dG9rZW49YmJHTFdkYWMzTmRYNTl0YW1nYmo2ODczYmZ6MTgwMmdZMkUxS1NtaCIsInJvdXRlIjoid2lzdWRhLnBheW1lbnQifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1789705497),
('laIDg4AffWKx0Y2qsaQavSkpBiNn0J47ZribrtfY', NULL, '114.4.215.161', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_8_8 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6.8 Mobile/15E148 Safari/604.1', 'eyJfdG9rZW4iOiJidExnOWY5WHNJSVBPcUM3VlowbmdMc1Y0Z2pNd0FObjRwYVpzQXZYIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYSIsInJvdXRlIjoid2lzdWRhLmluZGV4In0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1789705281),
('LqNfuogqPtpylchX5xSHJbtMcys49jYqHIfwZEny', NULL, '114.8.203.234', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/601.2.4 (KHTML, like Gecko) Version/9.0.1 Safari/601.2.4 facebookexternalhit/1.1 Facebot Twitterbot/1.0', 'eyJfdG9rZW4iOiJzc2psNlVOMTc1dm9PSlpTdnYwaW0wR2tTdGk5VDdUVEhZRndLZDg3IiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL2JlcmFuZGEiLCJyb3V0ZSI6ImJlcmFuZGEifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1789704696),
('m5eEQUJ71Bez9ot1BJ93BzggtdRQkJGL1gQKEL8b', NULL, '2001:448a:20a0:f410:b9e4:b67b:60ce:5e5b', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Mobile Safari/537.36', 'eyJfdG9rZW4iOiI0M05IWENjRlhGM0lxRnQxSnk5QjZxQU5FTU5iZE5Mc1pFSjhVYWZpIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYVwvcGVzYW5hblwvV1NELTIwMjYwOTE4LVdaWDVcL3BlbWJheWFyYW4/dG9rZW49aWZoMnlvbmRPcjhBMEFmNENpcWJ1bjFpbVRGZ0ROazlwVkNBVW9IbSIsInJvdXRlIjoid2lzdWRhLnBheW1lbnQifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1789702732),
('mAcYilUKxyHUiUeZ8P33N3mjDP0pyhgzmcPMdQ4Q', NULL, '114.4.83.188', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiI4ZWJ2Q2MzcTRJV29JODhIZ1pIODRQaGt1RTJ5T0ZOcFBqVGdrVW9HIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYVwvcGVzYW5hblwvV1NELTIwMjYwOTE4LUxCRkhcL3BlbWJheWFyYW4/dG9rZW49dEhsaTJvYXNDNFJNT29LQnNEZWdLYTJhVlFNM3pMUHdsNGpacU01ayIsInJvdXRlIjoid2lzdWRhLnBheW1lbnQifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1789703572),
('oThlsmek1noXD6iTwqSM1h158qZP81eNs1Dz2bF2', NULL, '103.3.220.59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiI5N0l6ZURGaTFFR1gzU3VtVGQyNVM1eU13SVZ4dHVva1FqQjZZSTZvIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYSIsInJvdXRlIjoid2lzdWRhLmluZGV4In0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1789706126),
('prkDoprJT3bKhKl0p43SOoDUforGTd87lptrk0Al', NULL, '182.2.183.94', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_7_16 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6.2 Mobile/15E148 Safari/604.1', 'eyJfdG9rZW4iOiJIRE1pY2pHVDRKaEtHeDVZc3RvRUhpR1VReFBTMXhRZVNqQkhXUkJTIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYVwvcGVzYW5hblwvV1NELTIwMjYwOTExLTJXRko/dG9rZW49QnkxTDFXcDBtaE9qdzA4SHZuNlhuSzVubDdjOElvU0RrYng5YnJxbSIsInJvdXRlIjoid2lzdWRhLm9yZGVyLnNob3cifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1789702286),
('PutOcToxB5yTMR7nAy83FWNi4J9LgR8L4fKWhnsH', NULL, '182.2.185.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.4 Mobile/15E148 Safari/604.1', 'eyJfdG9rZW4iOiIzUVVzSXZ0bEhKMUlEQTNUaTBtakFMRkY5R1FmbW9IMVlSeE5PZmhJIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYVwvcGVzYW5hblwvV1NELTIwMjYwOTE4LTlZMUZcL3BlbWJheWFyYW4/dG9rZW49d0RMMHFocWRrVTFKWnNOa1hBenR3UzBOTnJDbVRJSlVqSFc4dGVSUiIsInJvdXRlIjoid2lzdWRhLnBheW1lbnQifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1789704030),
('PvgkmSbZwdzXYqEiDKPmNe1EtcWFNsl7sQFBpHRI', NULL, '180.254.74.26', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.6 Mobile/15E148 Safari/604.1', 'eyJfdG9rZW4iOiJBMjUxdlBXWjlhYVNXbFdpSWV4M2hGdWxZVmFzbUh2dTU2SFhJajVJIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL2luZm9ybWFzaSIsInJvdXRlIjoiaW5mb3JtYXNpIn0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1789704818),
('syIp0YqBU3kPoVO9sRICxQEy7Xd1up3ggCaH5gRs', NULL, '114.10.76.188', 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:24.0) Gecko/20100101 Firefox/24.0 Chrome/80.0.3987.132 Safari/537.36', 'eyJfdG9rZW4iOiJmYTZtc215cjRaSmE2YkM4TDB1SEJjb2g0MEFhajA1U0N1ODkzT05tIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYVwvcGVzYW5hblwvV1NELTIwMjYwOTEzLURaWUQ/dG9rZW49ZktNOVNHaktyMDJFeDZXa3oyUHpUeU5tU3BMdDZZR2dWckxNYVlMTSIsInJvdXRlIjoid2lzdWRhLm9yZGVyLnNob3cifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1789704968),
('TVJtvQNulbF1tYjIXsPBjOckVPvcRNEnmg03GmmL', NULL, '45.123.142.41', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Mobile/15E148 Safari/604.1', 'eyJfdG9rZW4iOiJkUmJkRDhtbXBkWnlHeGFxTjBKU2h6dm9LamZQV250OTA1TDFmNTR3IiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYVwvcGVzYW5hblwvV1NELTIwMjYwOTE3LVJNU0Q/dG9rZW49ejlHUlBzcnBUNGxxWDlZVUo4Y3NJNjVhZXBPZVRpNFkybGdRc2VoQSIsInJvdXRlIjoid2lzdWRhLm9yZGVyLnNob3cifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1789702619),
('Z2fwp2eUhNKnOkb1GncTEjbgAyfL3tDrogqgdzp9', NULL, '114.10.76.188', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/30.0 Chrome/143.0.0.0 Mobile Safari/537.36', 'eyJfdG9rZW4iOiI3WFFWNGhBcXhtNVRCYjdMbjFVRGdzWEkyQ1g4TmRBQXVWNFlaZ0h6IiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9kaGFybWEtd2FuaXRhLXBlcnNhdHVhbi5wb2x0ZWtrZXNiYW50ZW4uYWMuaWRcL3dpc3VkYVwvcGVzYW5hblwvV1NELTIwMjYwOTEzLURaWUQ/dG9rZW49ZktNOVNHaktyMDJFeDZXa3oyUHpUeU5tU3BMdDZZR2dWckxNYVlMTSIsInJvdXRlIjoid2lzdWRhLm9yZGVyLnNob3cifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1789704790);

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
(13, 'Lailatul Fadilah', 'lailatul.fadilah@poltekkesbanten.ac.id', '2026-09-09 03:16:18', '$2y$12$nuvZCf5c8I343qQ1BmhiH.etDJcstum217N2KLeIunevIQdyDItNC', 'superadmin', NULL, 0, 1, 'MbctSNedA9iTNeTvl864EHSpJQYkWRpxbzxsJCEbcHDFpxhJLCCmU52l2LDa', '2026-09-09 03:16:19', '2026-09-09 03:16:19');

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
  ADD UNIQUE KEY `nim` (`nim`),
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
-- Indeks untuk tabel `graduation_toga_order_nim_locks`
--
ALTER TABLE `graduation_toga_order_nim_locks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `graduation_toga_order_nim_locks_nim_normalized_unique` (`nim_normalized`),
  ADD KEY `graduation_toga_order_nim_locks_first_order_id_index` (`first_order_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=632;

--
-- AUTO_INCREMENT untuk tabel `graduation_toga_order_nim_locks`
--
ALTER TABLE `graduation_toga_order_nim_locks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=735;

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
