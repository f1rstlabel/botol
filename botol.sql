-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Jul 2025 pada 06.55
-- Versi server: 10.1.36-MariaDB
-- Versi PHP: 7.0.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `botol`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `assets`
--

CREATE TABLE `assets` (
  `id` int(11) NOT NULL,
  `nama_asset` varchar(255) NOT NULL,
  `merk_kode` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `ok` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `barcode` varchar(255) DEFAULT NULL,
  `kategori` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `assets`
--

INSERT INTO `assets` (`id`, `nama_asset`, `merk_kode`, `qty`, `ok`, `status`, `barcode`, `kategori`, `updated_at`) VALUES
(1, 'Access Point unifi / ac-lr ', '78:8A:20:83:89:18', 1, NULL, 1, NULL, 'Access Point', '2025-06-10 02:19:58'),
(2, 'Access Point unifi / ac-lr ', '78:8A:20:8C:3D:15', 1, NULL, 1, NULL, 'Access Point', '2025-06-10 02:20:04'),
(3, 'Access Point unifi / ac-lr ', '78:8A:20:83:8E:3F', 1, NULL, 1, NULL, 'Access Point', '2025-06-10 02:18:29'),
(4, 'Access Point unifi / ac-lr ', '78:8A:20:83:F7:A6', 1, NULL, 1, NULL, 'Access Point', '2025-06-10 02:19:03'),
(5, 'Access Point unifi / ac-lr ', 'E0:63:DA:02:9F:7F', 1, NULL, 1, NULL, 'Access Point', '2025-06-10 02:20:31'),
(6, 'Access Point unifi / ac-lr ', 'F4:92:BF:10:47:22', 1, NULL, 1, NULL, 'Access Point', '2025-06-10 02:21:05'),
(7, 'ECS3510-28T / Edge core ', '70:72:CF:91:9D:7E', 1, NULL, 1, NULL, 'Switch Management', '2025-06-10 02:23:13'),
(8, 'ECS3510-28T / Edge core', '70:72:CF:B1:A5:4C', 1, NULL, 1, NULL, 'Switch Management', '2025-06-10 02:23:48'),
(9, 'ECS3510-28T / Edge core', '70:72:CF:75:DB:73', 1, NULL, 1, NULL, 'Switch Management', '2025-06-10 02:24:38'),
(10, 'ECS3510-28T / Edge core ', 'CC:37:AB:99:01:C8', 1, NULL, 1, NULL, 'Switch Management', '2025-06-10 02:25:02'),
(11, 'ECS3510-28T / Edge core ', '70:72:CF:75:CF:54', 1, NULL, 1, NULL, 'Switch Management', '2025-06-10 02:25:21'),
(12, 'ECS4100-28T / Edge core', 'B8:6A:97:65:0B:40', 1, NULL, 1, NULL, 'Switch Management', '2025-06-10 02:25:43'),
(13, 'ECS3510-28T / Edge core ', '70:72:CF:91:96:EC', 1, NULL, 1, NULL, 'Switch Management', '2025-06-10 02:26:25'),
(14, 'ECS3510-28T / Edge core ', '70:72:CF:75:D1:7B', 1, NULL, 1, NULL, 'Switch Management', '2025-06-10 02:27:40'),
(15, 'ECS3510-28T / Edge core ', '70:72:CF:75:C9:53', 1, NULL, 1, NULL, 'Switch Management', '2025-06-10 02:28:15'),
(16, 'Procurve switch 2510-24 / HP', 'C0:91:34:54:B5:00', 1, NULL, 1, 'C0:91:34:54:B5:00_4937175758', 'Switch Management', '2025-06-11 01:57:45'),
(17, 'ECS3510-28T / Edge core ', '70:72:CF:7B:81:49', 1, NULL, 1, NULL, 'Switch Management', '2025-06-10 02:29:24'),
(18, 'ECS3510-28T / Edge core ', 'CC:37:AB:99:06:88', 1, NULL, 1, NULL, 'Switch Management', '2025-06-10 02:29:45'),
(19, 'ECS3510-28T / Edge core', '70:72:CF:91:9D:61', 1, NULL, 1, NULL, 'Switch Management', '2025-06-10 02:29:58'),
(20, 'ECS3510-28T / Edge core', '70:72:CF:B1:CB:3F', 1, NULL, 1, NULL, 'Switch Management', '2025-06-10 02:30:15'),
(21, 'ECS3510-28T / Edge core', '70:72:CF:75:BB:47', 1, NULL, 1, NULL, 'Switch Management', '2025-06-10 02:30:29'),
(22, 'EC3510-28T / Edge core ', '70:72:CF:7B:81:49', 1, NULL, 1, NULL, 'Switch Management', '2025-06-11 01:23:59'),
(23, 'EC3510-28T / Edge core', 'CC:37:AB:99:06:88', 1, NULL, 1, NULL, 'Switch Management', '2025-06-11 01:24:28'),
(24, 'EC3510-28T / Edge core ', '70:72:CF:91:9D:61', 1, NULL, 1, NULL, 'Switch Management', '2025-06-11 01:26:40'),
(25, 'EC3510-28T / Edge core ', '70:72:CF:B1:CB:3F', 1, NULL, 1, NULL, 'Switch Management', '2025-06-11 01:27:35'),
(26, 'EC3510-28T / Edge core ', '70:72:CF:75:BB:47', 1, NULL, 1, NULL, 'Switch Management', '2025-06-11 01:27:55'),
(27, 'SF500-24 / Cisco', 'F4:EA:67:8B:E3:5B', 1, NULL, 1, NULL, 'Switch Management', '2025-06-11 01:28:46'),
(28, '3CR17333-91 / 3COM', '00:1C:C5:AD:95:7B', 1, NULL, 1, NULL, 'Switch Management', '2025-06-11 01:29:34'),
(29, 'ECS3510-52T / Edge Core ', 'CC:37:AB:66:49:4D', 1, NULL, 1, NULL, 'Switch Management', '2025-06-11 01:30:07'),
(30, 'TL-SG3452 / TP-LINK', '34:60:F9:DA:C3:8B', 1, NULL, 1, NULL, 'Switch Management', '2025-06-11 01:30:33'),
(31, '3C16471B / 3COM', '-', 1, NULL, 1, 'QZMVZC7265495484', 'Switch Management', '2025-06-11 02:54:41'),
(32, 'ECS3510-52T / Edge Core ', 'CC:37:AB:63:C4:09', 1, NULL, 1, NULL, 'Switch Management', '2025-06-11 01:31:56'),
(33, 'SG220-26 / CISCO', '1C:D1:E0:6B:52:E7', 1, NULL, 1, NULL, 'Switch Management', '2025-06-11 01:32:39'),
(34, 'ECS4100-52T / Edge Core', 'A8:8B:B5:86:4C:3D', 1, NULL, 1, NULL, 'Switch Management', '2025-06-11 01:33:09'),
(35, 'ECS3510-52T / Edge Core ', 'CC:37:AB:65:C8:8D', 1, NULL, 1, NULL, 'Switch Management', '2025-06-11 01:33:55'),
(36, 'TL-SG3452 / TP-LINK', '34:60:F9:DA:C3:68', 1, NULL, 1, NULL, 'Switch Management', '2025-06-11 01:34:24'),
(37, 'DES-1210-52 / DLINK', '6C:19:8F:98:32:0E', 1, NULL, 1, NULL, 'Switch Management', '2025-06-11 01:34:49'),
(38, 'ECS3510-52T / Edge Core ', '70:72:CF:CA:EF:68', 1, NULL, 1, NULL, 'Switch Management', '2025-06-11 01:35:19'),
(39, 'ECS3510-52T / Edge Core ', '70:72:CF:FB:B2:48', 1, NULL, 1, NULL, 'Switch Management', '2025-06-11 01:38:14'),
(40, 'RB1100 / MikroTik', '6C:3B:6B:57:67:F6', 1, NULL, 1, NULL, 'Router', '2025-06-11 01:38:51'),
(41, 'RBB201 1L-RM / MikroTik', 'D4:CA:6D:8D:EF:39', 1, NULL, 1, NULL, 'Router', '2025-06-11 01:39:18'),
(42, 'DGS-1016C / D-LINK', '-', 1, NULL, 1, NULL, 'Switch Unmanaged', '2025-06-11 01:39:45'),
(43, 'DES-1016D / D-LINK', '-', 1, NULL, 1, NULL, 'Switch Unmanaged', '2025-06-11 01:40:11'),
(44, 'DGS-1016C / D-LINK', '-', 1, NULL, 1, NULL, 'Switch Unmanaged', '2025-06-11 01:40:49'),
(45, 'DGS-1016C / D-LINK', '-', 1, NULL, 1, NULL, 'Switch Unmanaged', '2025-06-11 01:41:32'),
(46, 'DGS-1016C / D-LINK', '-', 1, NULL, 1, NULL, 'Switch Unmanaged', '2025-06-11 01:41:48'),
(47, 'DES-1016C / DLINK', '-', 1, NULL, 1, NULL, 'Switch Unmanaged', '2025-06-11 01:42:23'),
(48, 'TL-SG1024D / TP-LINK', '-', 1, NULL, 1, NULL, 'Switch Unmanaged', '2025-06-11 01:43:57'),
(49, 'TL-SG1016D / TPLINK', '-', 1, NULL, 1, NULL, 'Switch Unmanaged', '2025-06-11 01:45:02'),
(50, 'DGS-1024C / D-LINK', '-', 1, NULL, 1, NULL, 'Switch Unmanaged', '2025-06-11 01:45:39'),
(51, 'DES-1016D / D-LINK', '-', 1, NULL, 1, NULL, 'Switch Unmanaged', '2025-06-11 01:46:00'),
(52, 'DES-1024D / DLINK', '-', 1, NULL, 1, NULL, 'Switch Unmanaged', '2025-06-11 01:47:27'),
(53, 'DES-1008C /DLINK', '-', 1, NULL, 1, NULL, 'Switch Unmanaged', '2025-06-11 01:47:15'),
(54, 'TL-SF1008D / TPLINK', '-', 1, NULL, 1, NULL, 'Switch Unmanaged', '2025-06-11 01:46:56'),
(55, 'DES-1008A / DLINK', '-', 1, NULL, 1, NULL, 'Switch Unmanaged', '2025-06-11 01:47:51'),
(56, 'RB951Ui-2HnD / MikroTIK', '-', 1, NULL, 1, NULL, 'Router', '2025-06-11 01:48:09'),
(57, 'Access Point unifi / U6 Lite', '78:45:58:46:48:fc', 1, NULL, 1, NULL, 'Access Point', '2025-06-24 04:59:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `assets_copy`
--

CREATE TABLE `assets_copy` (
  `nama_asset` varchar(255) CHARACTER SET utf8 NOT NULL,
  `merk_kode` varchar(255) CHARACTER SET utf8 NOT NULL,
  `qty` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `ok` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `barcode` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `kategori` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `assets_copy`
--

INSERT INTO `assets_copy` (`nama_asset`, `merk_kode`, `qty`, `status`, `ok`, `barcode`, `kategori`, `updated_at`) VALUES
('Access Point unifi / ac-lr ', '78:8A:20:83:89:18', 1, 1, NULL, NULL, 'Access Point', '2025-06-10 02:19:58'),
('Access Point unifi / ac-lr ', '78:8A:20:8C:3D:15', 1, 1, NULL, NULL, 'Access Point', '2025-06-10 02:20:04'),
('Access Point unifi / ac-lr ', '78:8A:20:83:8E:3F', 1, 1, NULL, NULL, 'Access Point', '2025-06-10 02:18:29'),
('Access Point unifi / ac-lr ', '78:8A:20:83:F7:A6', 1, 1, NULL, NULL, 'Access Point', '2025-06-10 02:19:03'),
('Access Point unifi / ac-lr ', 'E0:63:DA:02:9F:7F', 1, 1, NULL, NULL, 'Access Point', '2025-06-10 02:20:31'),
('Access Point unifi / ac-lr ', 'F4:92:BF:10:47:22', 1, 1, NULL, NULL, 'Access Point', '2025-06-10 02:21:05'),
('ECS3510-28T / Edge core ', '70:72:CF:91:9D:7E', 1, 1, NULL, NULL, 'Switch Management', '2025-06-10 02:23:13'),
('ECS3510-28T / Edge core', '70:72:CF:B1:A5:4C', 1, 1, NULL, NULL, 'Switch Management', '2025-06-10 02:23:48'),
('ECS3510-28T / Edge core', '70:72:CF:75:DB:73', 1, 1, NULL, NULL, 'Switch Management', '2025-06-10 02:24:38'),
('ECS3510-28T / Edge core ', 'CC:37:AB:99:01:C8', 1, 1, NULL, NULL, 'Switch Management', '2025-06-10 02:25:02'),
('ECS3510-28T / Edge core ', '70:72:CF:75:CF:54', 1, 1, NULL, NULL, 'Switch Management', '2025-06-10 02:25:21'),
('ECS4100-28T / Edge core', 'B8:6A:97:65:0B:40', 1, 1, NULL, NULL, 'Switch Management', '2025-06-10 02:25:43'),
('ECS3510-28T / Edge core ', '70:72:CF:91:96:EC', 1, 1, NULL, NULL, 'Switch Management', '2025-06-10 02:26:25'),
('ECS3510-28T / Edge core ', '70:72:CF:75:D1:7B', 1, 1, NULL, NULL, 'Switch Management', '2025-06-10 02:27:40'),
('ECS3510-28T / Edge core ', '70:72:CF:75:C9:53', 1, 1, NULL, NULL, 'Switch Management', '2025-06-10 02:28:15'),
('Procurve switch 2510-24 / HP', 'C0:91:34:54:B5:00', 1, 1, NULL, 'C0:91:34:54:B5:00_4937175758', 'Switch Management', '2025-06-11 01:57:45'),
('ECS3510-28T / Edge core ', '70:72:CF:7B:81:49', 1, 1, NULL, NULL, 'Switch Management', '2025-06-10 02:29:24'),
('ECS3510-28T / Edge core ', 'CC:37:AB:99:06:88', 1, 1, NULL, NULL, 'Switch Management', '2025-06-10 02:29:45'),
('ECS3510-28T / Edge core', '70:72:CF:91:9D:61', 1, 1, NULL, NULL, 'Switch Management', '2025-06-10 02:29:58'),
('ECS3510-28T / Edge core', '70:72:CF:B1:CB:3F', 1, 1, NULL, NULL, 'Switch Management', '2025-06-10 02:30:15'),
('ECS3510-28T / Edge core', '70:72:CF:75:BB:47', 1, 1, NULL, NULL, 'Switch Management', '2025-06-10 02:30:29'),
('EC3510-28T / Edge core ', '70:72:CF:7B:81:49', 1, 1, NULL, NULL, 'Switch Management', '2025-06-11 01:23:59'),
('EC3510-28T / Edge core', 'CC:37:AB:99:06:88', 1, 1, NULL, NULL, 'Switch Management', '2025-06-11 01:24:28'),
('EC3510-28T / Edge core ', '70:72:CF:91:9D:61', 1, 1, NULL, NULL, 'Switch Management', '2025-06-11 01:26:40'),
('EC3510-28T / Edge core ', '70:72:CF:B1:CB:3F', 1, 1, NULL, NULL, 'Switch Management', '2025-06-11 01:27:35'),
('EC3510-28T / Edge core ', '70:72:CF:75:BB:47', 1, 1, NULL, NULL, 'Switch Management', '2025-06-11 01:27:55'),
('SF500-24 / Cisco', 'F4:EA:67:8B:E3:5B', 1, 1, NULL, NULL, 'Switch Management', '2025-06-11 01:28:46'),
('3CR17333-91 / 3COM', '00:1C:C5:AD:95:7B', 1, 1, NULL, NULL, 'Switch Management', '2025-06-11 01:29:34'),
('ECS3510-52T / Edge Core ', 'CC:37:AB:66:49:4D', 1, 1, NULL, NULL, 'Switch Management', '2025-06-11 01:30:07'),
('TL-SG3452 / TP-LINK', '34:60:F9:DA:C3:8B', 1, 1, NULL, NULL, 'Switch Management', '2025-06-11 01:30:33'),
('3C16471B / 3COM', '-', 1, 1, NULL, 'QZMVZC7265495484', 'Switch Management', '2025-06-11 02:54:41'),
('ECS3510-52T / Edge Core ', 'CC:37:AB:63:C4:09', 1, 1, NULL, NULL, 'Switch Management', '2025-06-11 01:31:56'),
('SG220-26 / CISCO', '1C:D1:E0:6B:52:E7', 1, 1, NULL, NULL, 'Switch Management', '2025-06-11 01:32:39'),
('ECS4100-52T / Edge Core', 'A8:8B:B5:86:4C:3D', 1, 1, NULL, NULL, 'Switch Management', '2025-06-11 01:33:09'),
('ECS3510-52T / Edge Core ', 'CC:37:AB:65:C8:8D', 1, 1, NULL, NULL, 'Switch Management', '2025-06-11 01:33:55'),
('TL-SG3452 / TP-LINK', '34:60:F9:DA:C3:68', 1, 1, NULL, NULL, 'Switch Management', '2025-06-11 01:34:24'),
('DES-1210-52 / DLINK', '6C:19:8F:98:32:0E', 1, 1, NULL, NULL, 'Switch Management', '2025-06-11 01:34:49'),
('ECS3510-52T / Edge Core ', '70:72:CF:CA:EF:68', 1, 1, NULL, NULL, 'Switch Management', '2025-06-11 01:35:19'),
('ECS3510-52T / Edge Core ', '70:72:CF:FB:B2:48', 1, 1, NULL, NULL, 'Switch Management', '2025-06-11 01:38:14'),
('RB1100 / MikroTik', '6C:3B:6B:57:67:F6', 1, 1, NULL, NULL, 'Router', '2025-06-11 01:38:51'),
('RBB201 1L-RM / MikroTik', 'D4:CA:6D:8D:EF:39', 1, 1, NULL, NULL, 'Router', '2025-06-11 01:39:18'),
('DGS-1016C / D-LINK', '-', 1, 1, NULL, NULL, 'Switch Unmanaged', '2025-06-11 01:39:45'),
('DES-1016D / D-LINK', '-', 1, 1, NULL, NULL, 'Switch Unmanaged', '2025-06-11 01:40:11'),
('DGS-1016C / D-LINK', '-', 1, 1, NULL, NULL, 'Switch Unmanaged', '2025-06-11 01:40:49'),
('DGS-1016C / D-LINK', '-', 1, 1, NULL, NULL, 'Switch Unmanaged', '2025-06-11 01:41:32'),
('DGS-1016C / D-LINK', '-', 1, 1, NULL, NULL, 'Switch Unmanaged', '2025-06-11 01:41:48'),
('DES-1016C / DLINK', '-', 1, 1, NULL, NULL, 'Switch Unmanaged', '2025-06-11 01:42:23'),
('TL-SG1024D / TP-LINK', '-', 1, 1, NULL, NULL, 'Switch Unmanaged', '2025-06-11 01:43:57'),
('TL-SG1016D / TPLINK', '-', 1, 1, NULL, NULL, 'Switch Unmanaged', '2025-06-11 01:45:02'),
('DGS-1024C / D-LINK', '-', 1, 1, NULL, NULL, 'Switch Unmanaged', '2025-06-11 01:45:39'),
('DES-1016D / D-LINK', '-', 1, 1, NULL, NULL, 'Switch Unmanaged', '2025-06-11 01:46:00'),
('DES-1024D / DLINK', '-', 1, 1, NULL, NULL, 'Switch Unmanaged', '2025-06-11 01:47:27'),
('DES-1008C /DLINK', '-', 1, 1, NULL, NULL, 'Switch Unmanaged', '2025-06-11 01:47:15'),
('TL-SF1008D / TPLINK', '-', 1, 1, NULL, NULL, 'Switch Unmanaged', '2025-06-11 01:46:56'),
('DES-1008A / DLINK', '-', 1, 1, NULL, NULL, 'Switch Unmanaged', '2025-06-11 01:47:51'),
('RB951Ui-2HnD / MikroTIK', '-', 1, 1, NULL, NULL, 'Router', '2025-06-11 01:48:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` char(7) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `stok` double NOT NULL,
  `satuan_id` int(11) NOT NULL,
  `jenis_id` int(11) NOT NULL,
  `harga` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `stok`, `satuan_id`, `jenis_id`, `harga`) VALUES
('B000003', 'lakban', 707, 1, 1, NULL),
('B000004', 'Buku', 290, 1, 1, NULL),
('B000005', 'Kabel', 440, 3, 1, 500),
('B000006', 'konektor', 50, 1, 1, NULL),
('B000007', 'Jam', 0, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang_keluar`
--

CREATE TABLE `barang_keluar` (
  `id_barang_keluar` char(16) NOT NULL,
  `user_id` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `nama_penerima` char(50) NOT NULL,
  `alamat` text NOT NULL,
  `tanggal_keluar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `barang_keluar`
--

INSERT INTO `barang_keluar` (`id_barang_keluar`, `user_id`, `id_customer`, `nama_penerima`, `alamat`, `tanggal_keluar`) VALUES
('T-BK-24111300001', 1, 1, 'Kevin', 'Jaringan', '2024-11-13'),
('T-BK-24111300002', 1, 1, 'Kevin', 'Jaringan', '2024-11-13'),
('T-BK-24111300003', 1, 1, 'Kevin', 'Jaringan', '2024-11-13'),
('T-BK-24111300004', 1, 1, 'Kevin', 'Jaringan', '2024-11-13'),
('T-BK-24111300005', 1, 2, 'Advin', 'CCTV', '2024-11-13'),
('T-BK-24111300006', 1, 2, 'Advin', 'CCTV', '2024-11-13'),
('T-BK-24111300007', 1, 2, 'Advin', 'CCTV', '2024-11-13'),
('T-BK-24111300008', 1, 1, 'Kevin', 'Jaringan', '2024-11-13'),
('T-BK-24111300009', 1, 2, 'Advin', 'CCTV', '2024-11-13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang_keluar_copy1`
--

CREATE TABLE `barang_keluar_copy1` (
  `id_barang_keluar` char(16) NOT NULL,
  `user_id` int(11) NOT NULL,
  `barang_id` char(7) NOT NULL,
  `nama_penerima` char(50) NOT NULL,
  `alamat` text NOT NULL,
  `jumlah_keluar` double NOT NULL,
  `tanggal_keluar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Trigger `barang_keluar_copy1`
--
DELIMITER $$
CREATE TRIGGER `update_stok_keluar_copy1` BEFORE INSERT ON `barang_keluar_copy1` FOR EACH ROW UPDATE `barang` SET `barang`.`stok` = `barang`.`stok` - NEW.jumlah_keluar WHERE `barang`.`id_barang` = NEW.barang_id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang_keluar_dtl`
--

CREATE TABLE `barang_keluar_dtl` (
  `id_detail` int(11) NOT NULL,
  `id_barang_keluar` char(16) NOT NULL,
  `barang_id` char(7) NOT NULL,
  `harga` int(11) NOT NULL,
  `jumlah_keluar` double NOT NULL,
  `total_nominal_dtl` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `barang_keluar_dtl`
--

INSERT INTO `barang_keluar_dtl` (`id_detail`, `id_barang_keluar`, `barang_id`, `harga`, `jumlah_keluar`, `total_nominal_dtl`) VALUES
(1, 'T-BK-24111300001', 'B000004', 2500, 20, 50000),
(2, 'T-BK-24111300002', 'B000004', 0, 20, 0),
(3, 'T-BK-24111300003', 'B000003', 0, 1, 0),
(4, 'T-BK-24111300004', 'B000003', 0, 2, 0),
(5, 'T-BK-24111300005', 'B000003', 0, 200, 0),
(6, 'T-BK-24111300006', 'B000004', 0, 60, 0),
(7, 'T-BK-24111300007', 'B000003', 0, 20, 0),
(8, 'T-BK-24111300007', 'B000005', 0, 50, 0),
(9, 'T-BK-24111300008', 'B000004', 0, 90, 0),
(10, 'T-BK-24111300008', 'B000005', 0, 60, 0),
(11, 'T-BK-24111300009', 'B000004', 0, 20, 0),
(12, 'T-BK-24111300009', 'B000003', 0, 90, 0);

--
-- Trigger `barang_keluar_dtl`
--
DELIMITER $$
CREATE TRIGGER `delete_stok_keluar` AFTER DELETE ON `barang_keluar_dtl` FOR EACH ROW UPDATE `barang` SET `barang`.`stok` = `barang`.`stok` + OLD.jumlah_keluar WHERE `barang`.`id_barang` = OLD.barang_id
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_stok_keluar` BEFORE INSERT ON `barang_keluar_dtl` FOR EACH ROW UPDATE `barang` SET `barang`.`stok` = `barang`.`stok` - NEW.jumlah_keluar WHERE `barang`.`id_barang` = NEW.barang_id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang_masuk`
--

CREATE TABLE `barang_masuk` (
  `id_barang_masuk` char(16) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `barang_id` char(7) NOT NULL,
  `jumlah_masuk` double NOT NULL,
  `tanggal_masuk` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `barang_masuk`
--

INSERT INTO `barang_masuk` (`id_barang_masuk`, `supplier_id`, `user_id`, `barang_id`, `jumlah_masuk`, `tanggal_masuk`) VALUES
('T-BM-24100700002', 6, 1, 'B000003', 1000, '2024-10-07'),
('T-BM-24111300001', 6, 1, 'B000003', 20, '2024-11-14'),
('T-BM-24111300002', 6, 1, 'B000004', 500, '2024-11-14'),
('T-BM-24111300003', 5, 1, 'B000005', 500, '2024-11-13'),
('T-BM-24111300004', 5, 5, 'B000006', 50, '2024-11-13'),
('T-BM-24111300005', 5, 1, 'B000005', 50, '0000-00-00');

--
-- Trigger `barang_masuk`
--
DELIMITER $$
CREATE TRIGGER `update_stok_masuk` BEFORE INSERT ON `barang_masuk` FOR EACH ROW UPDATE `barang` SET `barang`.`stok` = `barang`.`stok` + NEW.jumlah_masuk WHERE `barang`.`id_barang` = NEW.barang_id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `address` varchar(250) NOT NULL,
  `phone` varchar(16) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`id`, `fullname`, `address`, `phone`, `created_at`) VALUES
(1, 'Kevin', 'Jaringan', '0893482940923', '2024-11-13 14:44:08'),
(2, 'Advin', 'CCTV', '082912094', '2024-11-13 15:32:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis`
--

CREATE TABLE `jenis` (
  `id_jenis` int(11) NOT NULL,
  `nama_jenis` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `jenis`
--

INSERT INTO `jenis` (`id_jenis`, `nama_jenis`) VALUES
(1, 'Alat'),
(2, 'Makanan'),
(3, 'Minuman');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id` int(11) NOT NULL,
  `assets_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `jumlah_pinjam` varchar(255) NOT NULL,
  `sisa_stok` int(11) DEFAULT NULL,
  `status_pengembalian` tinyint(1) DEFAULT '0',
  `peminjam` varchar(255) NOT NULL,
  `departemen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`id`, `assets_id`, `user_id`, `tanggal_pinjam`, `tanggal_kembali`, `jumlah_pinjam`, `sisa_stok`, `status_pengembalian`, `peminjam`, `departemen`) VALUES
(20, 48, 0, '2025-07-10', '2025-07-31', '1', NULL, 0, 'Biro Bia', 'BKD'),
(21, 5, 0, '2025-07-10', '2025-07-31', '1', NULL, 0, 'Biro Bia', 'BKD');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengajuan_barang`
--

CREATE TABLE `pengajuan_barang` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `no_pengajuan` varchar(255) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `merk_kode` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `approved` tinyint(1) DEFAULT '0',
  `approved_qty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengajuan_barang`
--

INSERT INTO `pengajuan_barang` (`id`, `tanggal`, `no_pengajuan`, `nama_barang`, `merk_kode`, `qty`, `jenis`, `approved`, `approved_qty`) VALUES
(17, '2025-07-12', '12062025/VI/PAMBMD/2025', 'swirch managed 52 port', 'TL-SG3452 TP-LINK', 100, 'Switch Management', 0, NULL),
(18, '2026-04-16', '98512062025/VI/PAMBMD/2025', 'AP', 'UNIFI', 100, 'AP', 1, NULL),
(19, '2026-04-16', '98512062025/VI/PAMBMD/2025', 'MODEM', 'Smart', 100, 'AP', 1, NULL),
(20, '2025-07-12', '18612062025/VI/PAMBMD/2025', 'swirch managed 52 port', 'ECS3510-28T', 1, 'Switch Management', 1, NULL),
(21, '2025-07-12', '18612062025/VI/PAMBMD/2025', 'Laptop', 'HP', 23, 'Laptop', 2, 20),
(22, '2025-06-29', '59112062025/VI/PAMBMD/2025', 'swirch managed 64 port', 'UNIFI', 19, 'Switch Management', 1, NULL),
(23, '2025-06-26', '25062025/VI/PAMBMD/2025', 'Switch PoE', 'Unifi', 2, 'Switch Management', 1, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengajuan_barang_backup`
--

CREATE TABLE `pengajuan_barang_backup` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `no_pengajuan` varchar(255) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `merk_kode` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `approved` tinyint(1) DEFAULT '0',
  `approved_qty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengajuan_barang_backup`
--

INSERT INTO `pengajuan_barang_backup` (`id`, `tanggal`, `no_pengajuan`, `nama_barang`, `merk_kode`, `qty`, `jenis`, `approved`, `approved_qty`) VALUES
(1, '2024-10-12', '5555', 'Baut', 'KUAT', 10, 'box', 2, 9),
(2, '2024-10-11', '6666', 'AP', 'UNIFI', 55, '66', 2, 20),
(3, '2024-10-11', '123123', 'Laptop', 'HP', 11, '11', 2, 5),
(4, '2024-10-09', '1234', 'buku baca', 'sidudu', 11, 'pcs', 2, 12),
(5, '2024-10-11', '1', '11', '11', 11, '111', 2, 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `satuan`
--

CREATE TABLE `satuan` (
  `id_satuan` int(11) NOT NULL,
  `nama_satuan` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `satuan`
--

INSERT INTO `satuan` (`id_satuan`, `nama_satuan`) VALUES
(1, 'Pcs'),
(2, 'Botol'),
(3, 'Bungkus'),
(4, 'Porsi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` int(11) NOT NULL,
  `nama_supplier` varchar(50) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nama_supplier`, `no_telp`, `alamat`) VALUES
(5, 'PT BIT', '085314522528', 'Jl. Sukarno Hatta, Bandung'),
(6, 'PT Delca', '082121678861', 'Jl. Jendral Sudirman, Garut');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `role` enum('gudang','admin') NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` int(11) NOT NULL,
  `foto` text NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `email`, `no_telp`, `role`, `password`, `created_at`, `foto`, `is_active`) VALUES
(1, 'Adminisitrator', 'admin', 'admin@admin.com', '025123456789', 'admin', '$2y$10$Mh4022E8uLMx3KaXme7ofuiIZvGqAqmTsuu/NsjD8cFgRlpZR3FBa', 1568689561, 'd5f22535b639d55be7d099a7315e1f7f.png', 1),
(3, 'user1', 'user1', 'user1@gmail.com', '123123', 'gudang', '$2y$10$0xXxFq1RGBjni37F5vy0IOyvZytCLVkZhOX2i7.5t8KAzX/R7noXu', 1728533676, 'user.png', 1),
(4, 'user', 'user', 'puta@gmail.com', '012839817248912', 'gudang', '$2y$10$iPmXwSu0G6GUwqMfEOiYz.53Vo8ProVYukiywRRMdASxXn/jRiG9C', 1730433727, 'user.png', 1),
(5, 'Fahmi', 'gudang1', 'Fahmi@fahmi.com', '0989275852', 'gudang', '$2y$10$qlH5CtT/zMEVaci9QWlYAevhkShYjJwqqelfq3UtpnyZMxyRrzpoy', 1731498257, 'user.png', 1),
(6, 'regy', 'regy', 'rks@gmail.com', '12123123123', 'gudang', '$2y$10$DEMyBxBeA/t1eNFoK3YZY.0kE5yfTC9ZAI3yAtG9QvFGC6uxT/0by', 1749692784, 'user.png', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`) USING BTREE,
  ADD KEY `satuan_id` (`satuan_id`) USING BTREE,
  ADD KEY `kategori_id` (`jenis_id`) USING BTREE;

--
-- Indeks untuk tabel `barang_keluar`
--
ALTER TABLE `barang_keluar`
  ADD PRIMARY KEY (`id_barang_keluar`) USING BTREE,
  ADD KEY `id_user` (`user_id`) USING BTREE,
  ADD KEY `id_customer` (`id_customer`);

--
-- Indeks untuk tabel `barang_keluar_copy1`
--
ALTER TABLE `barang_keluar_copy1`
  ADD PRIMARY KEY (`id_barang_keluar`) USING BTREE,
  ADD KEY `id_user` (`user_id`) USING BTREE,
  ADD KEY `barang_id` (`barang_id`) USING BTREE;

--
-- Indeks untuk tabel `barang_keluar_dtl`
--
ALTER TABLE `barang_keluar_dtl`
  ADD PRIMARY KEY (`id_detail`) USING BTREE,
  ADD KEY `barang_keluar_dtl_ibfk_1` (`id_barang_keluar`) USING BTREE;

--
-- Indeks untuk tabel `barang_masuk`
--
ALTER TABLE `barang_masuk`
  ADD PRIMARY KEY (`id_barang_masuk`) USING BTREE,
  ADD KEY `id_user` (`user_id`) USING BTREE,
  ADD KEY `supplier_id` (`supplier_id`) USING BTREE,
  ADD KEY `barang_id` (`barang_id`) USING BTREE;

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`id_jenis`) USING BTREE;

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_peminjaman_assets` (`assets_id`);

--
-- Indeks untuk tabel `pengajuan_barang`
--
ALTER TABLE `pengajuan_barang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengajuan_barang_backup`
--
ALTER TABLE `pengajuan_barang_backup`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `satuan`
--
ALTER TABLE `satuan`
  ADD PRIMARY KEY (`id_satuan`) USING BTREE;

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`) USING BTREE;

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`) USING BTREE;

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `assets`
--
ALTER TABLE `assets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT untuk tabel `barang_keluar_dtl`
--
ALTER TABLE `barang_keluar_dtl`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `jenis`
--
ALTER TABLE `jenis`
  MODIFY `id_jenis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `pengajuan_barang`
--
ALTER TABLE `pengajuan_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `pengajuan_barang_backup`
--
ALTER TABLE `pengajuan_barang_backup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `satuan`
--
ALTER TABLE `satuan`
  MODIFY `id_satuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`satuan_id`) REFERENCES `satuan` (`id_satuan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `barang_ibfk_2` FOREIGN KEY (`jenis_id`) REFERENCES `jenis` (`id_jenis`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `barang_keluar`
--
ALTER TABLE `barang_keluar`
  ADD CONSTRAINT `barang_keluar_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `barang_keluar_ibfk_2` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `barang_keluar_copy1`
--
ALTER TABLE `barang_keluar_copy1`
  ADD CONSTRAINT `barang_keluar_copy1_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `barang_keluar_copy1_ibfk_2` FOREIGN KEY (`barang_id`) REFERENCES `barang` (`id_barang`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `barang_keluar_dtl`
--
ALTER TABLE `barang_keluar_dtl`
  ADD CONSTRAINT `barang_keluar_dtl_ibfk_1` FOREIGN KEY (`id_barang_keluar`) REFERENCES `barang_keluar` (`id_barang_keluar`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `barang_masuk`
--
ALTER TABLE `barang_masuk`
  ADD CONSTRAINT `barang_masuk_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `barang_masuk_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id_supplier`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `barang_masuk_ibfk_3` FOREIGN KEY (`barang_id`) REFERENCES `barang` (`id_barang`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `FK_peminjaman_assets` FOREIGN KEY (`assets_id`) REFERENCES `assets` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
