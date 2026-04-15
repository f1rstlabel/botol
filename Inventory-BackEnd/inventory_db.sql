-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2025 at 05:05 AM
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
-- Database: `inventory_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang_keluar`
--

CREATE TABLE `barang_keluar` (
  `id` int(11) NOT NULL,
  `no_transaksi` varchar(20) NOT NULL,
  `tanggal_keluar` date NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `nama_penerima` varchar(100) NOT NULL,
  `bagian` varchar(50) NOT NULL,
  `total_keluar` varchar(20) NOT NULL,
  `pengurus` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang_keluar`
--

INSERT INTO `barang_keluar` (`id`, `no_transaksi`, `tanggal_keluar`, `nama_barang`, `nama_penerima`, `bagian`, `total_keluar`, `pengurus`, `created_at`, `updated_at`) VALUES
(1, 'BK-2509010001', '2025-08-29', 'Laptop', 'Advin', 'IT', '5 Unit', 'Administrator', '2025-08-29 02:11:36', '2025-08-28 19:43:24'),
(2, 'BK-2509010002', '2025-08-01', 'Printer', 'Budi', 'Kosangan', '2 Unit', 'Dewi', '2025-08-29 02:11:36', '2025-08-29 02:11:36'),
(3, 'BK-2509020003', '2025-08-02', 'Kursi Kantor', 'Ctra', 'HRD', '10 Pcs', 'Budi', '2025-08-29 02:11:36', '2025-08-29 02:11:36'),
(4, 'BK-2509030004', '2025-08-03', 'Meja Kantor', 'Dian', 'Keuangan', '3 Unit', 'Administrator', '2025-08-29 02:11:36', '2025-08-29 02:11:36'),
(5, 'BK-2509040005', '2025-08-04', 'Monitor', 'Eka', 'IT', '7 Unit', 'Dewi', '2025-08-29 02:11:36', '2025-08-29 02:11:36'),
(6, 'BK-2509050006', '2025-08-05', 'Keyboard', 'Fajar', 'IT', '15 Pcs', 'Budi', '2025-08-29 02:11:36', '2025-08-29 02:11:36'),
(7, 'BK-2509060007', '2025-08-06', 'Mouse', 'Gita', 'Marketing', '12 Pcs', 'Administrator', '2025-08-29 02:11:36', '2025-08-29 02:11:36'),
(8, 'BK-2509070008', '2025-08-07', 'Proyektor', 'Hendra', 'HRD', '2 Unit', 'Dewi', '2025-08-29 02:11:36', '2025-08-29 02:11:36'),
(9, 'BK-2509080009', '2025-08-08', 'Kabel HDMI', 'Indra', 'IT', '20 Pcs', 'Budi', '2025-08-29 02:11:36', '2025-08-29 02:11:36'),
(10, 'BK-2509090010', '2025-08-09', 'Speaker', 'Joko', 'Marketing', '4 Unit', 'Administrator', '2025-08-29 02:11:36', '2025-08-29 02:11:36'),
(11, 'TRX001', '2025-08-29', 'Laptop', 'Budi', 'IT', '5', 'Andi', '2025-08-28 19:40:23', '2025-08-28 19:40:23');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
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
-- Table structure for table `master_barang`
--

CREATE TABLE `master_barang` (
  `id` int(11) NOT NULL,
  `kode_barang` varchar(20) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `satuan` varchar(20) NOT NULL,
  `stok` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `master_barang`
--

INSERT INTO `master_barang` (`id`, `kode_barang`, `nama_barang`, `satuan`, `stok`, `created_at`, `updated_at`) VALUES
(1, 'BRG-001', 'Laptop', 'Unit', 0, '2025-08-29 02:12:10', '2025-08-29 02:12:10'),
(2, 'BRG-002', 'Printer', 'Unit', 0, '2025-08-29 02:12:10', '2025-08-29 02:12:10'),
(3, 'BRG-003', 'Kursi Kantor', 'Pcs', 0, '2025-08-29 02:12:10', '2025-08-29 02:12:10'),
(4, 'BRG-004', 'Meja Kantor', 'Unit', 0, '2025-08-29 02:12:10', '2025-08-29 02:12:10'),
(5, 'BRG-005', 'Monitor', 'Unit', 0, '2025-08-29 02:12:10', '2025-08-29 02:12:10'),
(6, 'BRG-006', 'Keyboard', 'Pcs', 0, '2025-08-29 02:12:10', '2025-08-29 02:12:10'),
(7, 'BRG-007', 'Mouse', 'Pcs', 0, '2025-08-29 02:12:10', '2025-08-29 02:12:10'),
(8, 'BRG-008', 'Proyektor', 'Unit', 0, '2025-08-29 02:12:10', '2025-08-29 02:12:10'),
(9, 'BRG-009', 'Kabel HDMI', 'Pcs', 0, '2025-08-29 02:12:10', '2025-08-29 02:12:10'),
(10, 'BRG-010', 'Speaker', 'Unit', 0, '2025-08-29 02:12:10', '2025-08-29 02:12:10');

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1);

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
-- Table structure for table `sessions`
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
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('40Ou6NYPKgRg5VX8PRokaBk7xHePcnV22OG0wW6n', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic21reXZlV2xtOFZXczJXR1piMDlyOHJQN0pVMmRyanNHVlQ4M1MxdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756434114),
('yPq6JuIAJlZFqeyZE3SPfTwoOXsGyBvLCMMWW9Xd', NULL, '127.0.0.1', 'PostmanRuntime/7.45.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZWtHVDBiUkpkQmhlYmdIb0J4d05pczlBc2RONEZtS1ppemRmSk1BMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756435164);

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

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_laporan_barang_keluar`
-- (See below for the actual view)
--
CREATE TABLE `view_laporan_barang_keluar` (
`no_transaksi` varchar(20)
,`tanggal_keluar` date
,`nama_barang` varchar(100)
,`satuan` varchar(20)
,`nama_penerima` varchar(100)
,`bagian` varchar(50)
,`total_keluar` varchar(20)
,`pengurus` varchar(100)
);

-- --------------------------------------------------------

--
-- Structure for view `view_laporan_barang_keluar`
--
DROP TABLE IF EXISTS `view_laporan_barang_keluar`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_laporan_barang_keluar`  AS SELECT `bk`.`no_transaksi` AS `no_transaksi`, `bk`.`tanggal_keluar` AS `tanggal_keluar`, `bk`.`nama_barang` AS `nama_barang`, `mb`.`satuan` AS `satuan`, `bk`.`nama_penerima` AS `nama_penerima`, `bk`.`bagian` AS `bagian`, `bk`.`total_keluar` AS `total_keluar`, `bk`.`pengurus` AS `pengurus` FROM (`barang_keluar` `bk` left join `master_barang` `mb` on(`bk`.`nama_barang` = `mb`.`nama_barang`)) ORDER BY `bk`.`tanggal_keluar` DESC ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang_keluar`
--
ALTER TABLE `barang_keluar`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `no_transaksi` (`no_transaksi`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_barang`
--
ALTER TABLE `master_barang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_barang` (`kode_barang`);

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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `barang_keluar`
--
ALTER TABLE `barang_keluar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_barang`
--
ALTER TABLE `master_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
