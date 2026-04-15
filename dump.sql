-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: 
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `dbinventory`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `dbinventory` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `dbinventory`;

--
-- Table structure for table `barang`
--

DROP TABLE IF EXISTS `barang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `barang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `kode_barang` varchar(50) NOT NULL,
  `nama_barang` varchar(150) NOT NULL,
  `jenis_id` bigint(20) DEFAULT NULL,
  `satuan_id` bigint(20) DEFAULT NULL,
  `harga` decimal(18,2) DEFAULT NULL,
  `stok` int(11) NOT NULL DEFAULT 0,
  `adalah_aset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `kode_barang` (`kode_barang`),
  KEY `fk_barang_jenis` (`jenis_id`),
  KEY `fk_barang_satuan` (`satuan_id`),
  KEY `idx_barang_nama` (`nama_barang`),
  CONSTRAINT `fk_barang_jenis` FOREIGN KEY (`jenis_id`) REFERENCES `jenis_barang` (`id`),
  CONSTRAINT `fk_barang_satuan` FOREIGN KEY (`satuan_id`) REFERENCES `satuan_barang` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `barang`
--

LOCK TABLES `barang` WRITE;
/*!40000 ALTER TABLE `barang` DISABLE KEYS */;
/*!40000 ALTER TABLE `barang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `barang_keluar`
--

DROP TABLE IF EXISTS `barang_keluar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `barang_keluar` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `no_transaksi` varchar(50) NOT NULL,
  `tanggal_keluar` date NOT NULL,
  `tenaga_kerja_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `penerima_nama` varchar(120) DEFAULT NULL,
  `divisi_penerima` varchar(120) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `no_transaksi` (`no_transaksi`),
  KEY `fk_bk_user` (`user_id`),
  KEY `fk_bk_tenaga` (`tenaga_kerja_id`),
  KEY `idx_bk_tanggal` (`tanggal_keluar`),
  CONSTRAINT `fk_bk_tenaga` FOREIGN KEY (`tenaga_kerja_id`) REFERENCES `tenaga_kerja` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_bk_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `barang_keluar`
--

LOCK TABLES `barang_keluar` WRITE;
/*!40000 ALTER TABLE `barang_keluar` DISABLE KEYS */;
/*!40000 ALTER TABLE `barang_keluar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `barang_keluar_detail`
--

DROP TABLE IF EXISTS `barang_keluar_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `barang_keluar_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `barang_keluar_id` bigint(20) NOT NULL,
  `barang_id` bigint(20) NOT NULL,
  `jumlah_keluar` int(11) NOT NULL,
  `satuan_nama` varchar(40) NOT NULL,
  `stok_sebelum` int(11) DEFAULT NULL,
  `stok_sesudah` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_bk_item` (`barang_keluar_id`,`barang_id`),
  KEY `fk_bkd_barang` (`barang_id`),
  CONSTRAINT `fk_bkd_barang` FOREIGN KEY (`barang_id`) REFERENCES `barang` (`id`),
  CONSTRAINT `fk_bkd_bk` FOREIGN KEY (`barang_keluar_id`) REFERENCES `barang_keluar` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `barang_keluar_detail`
--

LOCK TABLES `barang_keluar_detail` WRITE;
/*!40000 ALTER TABLE `barang_keluar_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `barang_keluar_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `barang_masuk`
--

DROP TABLE IF EXISTS `barang_masuk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `barang_masuk` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `no_transaksi` varchar(50) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `supplier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `no_transaksi` (`no_transaksi`),
  KEY `fk_bm_user` (`user_id`),
  KEY `fk_bm_supplier` (`supplier_id`),
  KEY `idx_bm_tanggal` (`tanggal_masuk`),
  CONSTRAINT `fk_bm_supplier` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_bm_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `barang_masuk`
--

LOCK TABLES `barang_masuk` WRITE;
/*!40000 ALTER TABLE `barang_masuk` DISABLE KEYS */;
/*!40000 ALTER TABLE `barang_masuk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `barang_masuk_detail`
--

DROP TABLE IF EXISTS `barang_masuk_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `barang_masuk_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `barang_masuk_id` bigint(20) NOT NULL,
  `barang_id` bigint(20) NOT NULL,
  `jumlah_masuk` int(11) NOT NULL,
  `satuan_nama` varchar(40) NOT NULL,
  `stok_sebelum` int(11) DEFAULT NULL,
  `stok_sesudah` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_bm_item` (`barang_masuk_id`,`barang_id`),
  KEY `fk_bmd_barang` (`barang_id`),
  CONSTRAINT `fk_bmd_barang` FOREIGN KEY (`barang_id`) REFERENCES `barang` (`id`),
  CONSTRAINT `fk_bmd_bm` FOREIGN KEY (`barang_masuk_id`) REFERENCES `barang_masuk` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `barang_masuk_detail`
--

LOCK TABLES `barang_masuk_detail` WRITE;
/*!40000 ALTER TABLE `barang_masuk_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `barang_masuk_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_aset`
--

DROP TABLE IF EXISTS `data_aset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_aset` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nama_aset` varchar(150) NOT NULL,
  `merk_kode` varchar(120) NOT NULL,
  `kategori_id` bigint(20) DEFAULT NULL,
  `status` varchar(15) NOT NULL COMMENT 'OK|Rusak',
  `qty` int(11) NOT NULL DEFAULT 1,
  `kode_barcode` varchar(120) DEFAULT NULL,
  `updated_qc` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `kode_barcode` (`kode_barcode`),
  KEY `fk_data_aset_kategori` (`kategori_id`),
  KEY `idx_data_aset_nama` (`nama_aset`),
  CONSTRAINT `fk_data_aset_kategori` FOREIGN KEY (`kategori_id`) REFERENCES `kategori_aset` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_aset`
--

LOCK TABLES `data_aset` WRITE;
/*!40000 ALTER TABLE `data_aset` DISABLE KEYS */;
/*!40000 ALTER TABLE `data_aset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detail_opname`
--

DROP TABLE IF EXISTS `detail_opname`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detail_opname` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `opname_id` bigint(20) NOT NULL,
  `aset_id` bigint(20) NOT NULL,
  `barcode` varchar(120) DEFAULT NULL,
  `status_qc` varchar(15) NOT NULL COMMENT 'OK|Rusak',
  `qty` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `fk_detail_opname_opname` (`opname_id`),
  KEY `fk_detail_opname_aset` (`aset_id`),
  CONSTRAINT `fk_detail_opname_aset` FOREIGN KEY (`aset_id`) REFERENCES `data_aset` (`id`),
  CONSTRAINT `fk_detail_opname_opname` FOREIGN KEY (`opname_id`) REFERENCES `stok_opname` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail_opname`
--

LOCK TABLES `detail_opname` WRITE;
/*!40000 ALTER TABLE `detail_opname` DISABLE KEYS */;
/*!40000 ALTER TABLE `detail_opname` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detail_pengajuan`
--

DROP TABLE IF EXISTS `detail_pengajuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detail_pengajuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pengajuan_id` bigint(20) NOT NULL,
  `barang_id` bigint(20) DEFAULT NULL,
  `nama_barang` varchar(150) NOT NULL,
  `merk_kode` varchar(120) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `jenis_nama` varchar(80) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_pengajuan_barang` (`pengajuan_id`,`barang_id`),
  KEY `fk_detail_pengajuan_barang` (`barang_id`),
  CONSTRAINT `fk_detail_pengajuan_barang` FOREIGN KEY (`barang_id`) REFERENCES `barang` (`id`),
  CONSTRAINT `fk_detail_pengajuan_pengajuan` FOREIGN KEY (`pengajuan_id`) REFERENCES `pengajuan_barang` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail_pengajuan`
--

LOCK TABLES `detail_pengajuan` WRITE;
/*!40000 ALTER TABLE `detail_pengajuan` DISABLE KEYS */;
/*!40000 ALTER TABLE `detail_pengajuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jenis_barang`
--

DROP TABLE IF EXISTS `jenis_barang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jenis_barang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nama_jenis` varchar(80) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `nama_jenis` (`nama_jenis`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jenis_barang`
--

LOCK TABLES `jenis_barang` WRITE;
/*!40000 ALTER TABLE `jenis_barang` DISABLE KEYS */;
/*!40000 ALTER TABLE `jenis_barang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kategori_aset`
--

DROP TABLE IF EXISTS `kategori_aset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kategori_aset` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(120) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `nama_kategori` (`nama_kategori`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategori_aset`
--

LOCK TABLES `kategori_aset` WRITE;
/*!40000 ALTER TABLE `kategori_aset` DISABLE KEYS */;
/*!40000 ALTER TABLE `kategori_aset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peminjaman_aset`
--

DROP TABLE IF EXISTS `peminjaman_aset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peminjaman_aset` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali` date DEFAULT NULL,
  `peminjam_nama` varchar(150) NOT NULL,
  `departemen` varchar(120) DEFAULT NULL,
  `status` varchar(15) NOT NULL COMMENT 'Berjalan|Dikembalikan|Terlambat|Batal',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_peminjaman_tanggal` (`tanggal_pinjam`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peminjaman_aset`
--

LOCK TABLES `peminjaman_aset` WRITE;
/*!40000 ALTER TABLE `peminjaman_aset` DISABLE KEYS */;
/*!40000 ALTER TABLE `peminjaman_aset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peminjaman_aset_detail`
--

DROP TABLE IF EXISTS `peminjaman_aset_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peminjaman_aset_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `peminjaman_id` bigint(20) NOT NULL,
  `aset_id` bigint(20) NOT NULL,
  `barcode` varchar(120) DEFAULT NULL,
  `jumlah_dipinjam` int(11) NOT NULL DEFAULT 1,
  `sisa_stok` int(11) DEFAULT NULL,
  `status_detail` varchar(15) NOT NULL COMMENT 'Dipinjam|Dikembalikan',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_pinjam_aset` (`peminjaman_id`,`aset_id`),
  KEY `fk_pinjam_detail_aset` (`aset_id`),
  CONSTRAINT `fk_pinjam_detail_aset` FOREIGN KEY (`aset_id`) REFERENCES `data_aset` (`id`),
  CONSTRAINT `fk_pinjam_detail_pinjam` FOREIGN KEY (`peminjaman_id`) REFERENCES `peminjaman_aset` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peminjaman_aset_detail`
--

LOCK TABLES `peminjaman_aset_detail` WRITE;
/*!40000 ALTER TABLE `peminjaman_aset_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `peminjaman_aset_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peminjaman_draf`
--

DROP TABLE IF EXISTS `peminjaman_draf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peminjaman_draf` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'draft' COMMENT 'draft|submitted',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `fk_draf_user` (`user_id`),
  CONSTRAINT `fk_draf_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peminjaman_draf`
--

LOCK TABLES `peminjaman_draf` WRITE;
/*!40000 ALTER TABLE `peminjaman_draf` DISABLE KEYS */;
/*!40000 ALTER TABLE `peminjaman_draf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peminjaman_draf_detail`
--

DROP TABLE IF EXISTS `peminjaman_draf_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peminjaman_draf_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `draf_id` bigint(20) NOT NULL,
  `aset_id` bigint(20) NOT NULL,
  `barcode` varchar(120) DEFAULT NULL,
  `qty` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_draf_aset` (`draf_id`,`aset_id`),
  KEY `fk_draf_detail_aset` (`aset_id`),
  CONSTRAINT `fk_draf_detail_aset` FOREIGN KEY (`aset_id`) REFERENCES `data_aset` (`id`),
  CONSTRAINT `fk_draf_detail_draf` FOREIGN KEY (`draf_id`) REFERENCES `peminjaman_draf` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peminjaman_draf_detail`
--

LOCK TABLES `peminjaman_draf_detail` WRITE;
/*!40000 ALTER TABLE `peminjaman_draf_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `peminjaman_draf_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pengajuan_barang`
--

DROP TABLE IF EXISTS `pengajuan_barang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pengajuan_barang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tanggal_pengajuan` date NOT NULL,
  `nomor_pengajuan` varchar(80) NOT NULL,
  `status` varchar(12) NOT NULL COMMENT 'Pending|Approved|Rejected',
  `dibuat_oleh` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `nomor_pengajuan` (`nomor_pengajuan`),
  KEY `fk_pengajuan_user` (`dibuat_oleh`),
  KEY `idx_pengajuan_tanggal` (`tanggal_pengajuan`),
  CONSTRAINT `fk_pengajuan_user` FOREIGN KEY (`dibuat_oleh`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pengajuan_barang`
--

LOCK TABLES `pengajuan_barang` WRITE;
/*!40000 ALTER TABLE `pengajuan_barang` DISABLE KEYS */;
/*!40000 ALTER TABLE `pengajuan_barang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `satuan_barang`
--

DROP TABLE IF EXISTS `satuan_barang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `satuan_barang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nama_satuan` varchar(40) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `nama_satuan` (`nama_satuan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `satuan_barang`
--

LOCK TABLES `satuan_barang` WRITE;
/*!40000 ALTER TABLE `satuan_barang` DISABLE KEYS */;
/*!40000 ALTER TABLE `satuan_barang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stok_opname`
--

DROP TABLE IF EXISTS `stok_opname`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stok_opname` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `status` varchar(10) NOT NULL COMMENT 'Dibuka|Ditutup',
  `mulai_pada` timestamp NULL DEFAULT NULL,
  `selesai_pada` timestamp NULL DEFAULT NULL,
  `catatan` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `fk_opname_user` (`user_id`),
  CONSTRAINT `fk_opname_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stok_opname`
--

LOCK TABLES `stok_opname` WRITE;
/*!40000 ALTER TABLE `stok_opname` DISABLE KEYS */;
/*!40000 ALTER TABLE `stok_opname` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplier` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nama_supplier` varchar(120) NOT NULL,
  `telepon` varchar(30) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenaga_kerja`
--

DROP TABLE IF EXISTS `tenaga_kerja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tenaga_kerja` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nama_tenaga` varchar(120) NOT NULL,
  `divisi` varchar(120) DEFAULT NULL,
  `telepon` varchar(30) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenaga_kerja`
--

LOCK TABLES `tenaga_kerja` WRITE;
/*!40000 ALTER TABLE `tenaga_kerja` DISABLE KEYS */;
/*!40000 ALTER TABLE `tenaga_kerja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `username` varchar(60) NOT NULL,
  `email` varchar(191) NOT NULL,
  `kata_sandi` varchar(255) NOT NULL,
  `telepon` varchar(30) DEFAULT NULL,
  `peran` varchar(20) NOT NULL COMMENT 'Admin|Staff',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `inventory_db`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `inventory_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `inventory_db`;

--
-- Table structure for table `barang_keluar`
--

DROP TABLE IF EXISTS `barang_keluar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `barang_keluar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_transaksi` varchar(20) NOT NULL,
  `tanggal_keluar` date NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `nama_penerima` varchar(100) NOT NULL,
  `bagian` varchar(50) NOT NULL,
  `total_keluar` varchar(20) NOT NULL,
  `pengurus` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `no_transaksi` (`no_transaksi`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `barang_keluar`
--

LOCK TABLES `barang_keluar` WRITE;
/*!40000 ALTER TABLE `barang_keluar` DISABLE KEYS */;
INSERT INTO `barang_keluar` VALUES (1,'BK-2509010001','2025-08-29','Laptop','Advin','IT','5 Unit','Administrator','2025-08-29 02:11:36','2025-08-28 19:43:24'),(2,'BK-2509010002','2025-08-01','Printer','Budi','Kosangan','2 Unit','Dewi','2025-08-29 02:11:36','2025-08-29 02:11:36'),(3,'BK-2509020003','2025-08-02','Kursi Kantor','Ctra','HRD','10 Pcs','Budi','2025-08-29 02:11:36','2025-08-29 02:11:36'),(4,'BK-2509030004','2025-08-03','Meja Kantor','Dian','Keuangan','3 Unit','Administrator','2025-08-29 02:11:36','2025-08-29 02:11:36'),(5,'BK-2509040005','2025-08-04','Monitor','Eka','IT','7 Unit','Dewi','2025-08-29 02:11:36','2025-08-29 02:11:36'),(6,'BK-2509050006','2025-08-05','Keyboard','Fajar','IT','15 Pcs','Budi','2025-08-29 02:11:36','2025-08-29 02:11:36'),(7,'BK-2509060007','2025-08-06','Mouse','Gita','Marketing','12 Pcs','Administrator','2025-08-29 02:11:36','2025-08-29 02:11:36'),(8,'BK-2509070008','2025-08-07','Proyektor','Hendra','HRD','2 Unit','Dewi','2025-08-29 02:11:36','2025-08-29 02:11:36'),(9,'BK-2509080009','2025-08-08','Kabel HDMI','Indra','IT','20 Pcs','Budi','2025-08-29 02:11:36','2025-08-29 02:11:36'),(10,'BK-2509090010','2025-08-09','Speaker','Joko','Marketing','4 Unit','Administrator','2025-08-29 02:11:36','2025-08-29 02:11:36'),(11,'TRX001','2025-08-29','Laptop','Budi','IT','5','Andi','2025-08-28 19:40:23','2025-08-28 19:40:23');
/*!40000 ALTER TABLE `barang_keluar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
INSERT INTO `cache` VALUES ('laravel-cache-livewire-rate-limiter:16d36dff9abd246c67dfac3e63b993a169af77e6','i:1;',1757390168),('laravel-cache-livewire-rate-limiter:16d36dff9abd246c67dfac3e63b993a169af77e6:timer','i:1757390168;',1757390168);
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_barang`
--

DROP TABLE IF EXISTS `master_barang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_barang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_barang` varchar(20) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `satuan` varchar(20) NOT NULL,
  `stok` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `kode_barang` (`kode_barang`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_barang`
--

LOCK TABLES `master_barang` WRITE;
/*!40000 ALTER TABLE `master_barang` DISABLE KEYS */;
INSERT INTO `master_barang` VALUES (1,'BRG-001','Laptop','Unit',0,'2025-08-29 02:12:10','2025-08-29 02:12:10'),(2,'BRG-002','Printer','Unit',0,'2025-08-29 02:12:10','2025-08-29 02:12:10'),(3,'BRG-003','Kursi Kantor','Pcs',0,'2025-08-29 02:12:10','2025-08-29 02:12:10'),(4,'BRG-004','Meja Kantor','Unit',0,'2025-08-29 02:12:10','2025-08-29 02:12:10'),(5,'BRG-005','Monitor','Unit',0,'2025-08-29 02:12:10','2025-08-29 02:12:10'),(6,'BRG-006','Keyboard','Pcs',0,'2025-08-29 02:12:10','2025-08-29 02:12:10'),(7,'BRG-007','Mouse','Pcs',0,'2025-08-29 02:12:10','2025-08-29 02:12:10'),(8,'BRG-008','Proyektor','Unit',0,'2025-08-29 02:12:10','2025-08-29 02:12:10'),(9,'BRG-009','Kabel HDMI','Pcs',0,'2025-08-29 02:12:10','2025-08-29 02:12:10'),(10,'BRG-010','Speaker','Unit',0,'2025-08-29 02:12:10','2025-08-29 02:12:10');
/*!40000 ALTER TABLE `master_barang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('40Ou6NYPKgRg5VX8PRokaBk7xHePcnV22OG0wW6n',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoic21reXZlV2xtOFZXczJXR1piMDlyOHJQN0pVMmRyanNHVlQ4M1MxdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1756434114),('EiMA2tTRfjhuMKEZfgWs6FrJ7fE9rOWNDeTserwd',1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36','YTo2OntzOjY6Il90b2tlbiI7czo0MDoidGZNWkZDbVJEcU9GM0VWcXg4cUxRUUFpMXppTExEWGZ1aXZXeVpMMSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI3OiJodHRwOi8vbG9jYWxob3N0OjgwMDAvYWRtaW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkMWw0TzRSRzBBSEVyZ2NpLlRkbDVUT2EzRFhKM0Nla2UvN1JzQmliL0k1SDViWmoua21MTWUiO30=',1757390110),('IYS7uAeE2IQoaVJeHJegacOPHS9IrJdmwl3FE2lM',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ1RXSTIwQ0hBMUxpWXg2WmYwS0ViazVsZlRLNlViVThaNUp4ZWoyYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1757389184),('yPq6JuIAJlZFqeyZE3SPfTwoOXsGyBvLCMMWW9Xd',NULL,'127.0.0.1','PostmanRuntime/7.45.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZWtHVDBiUkpkQmhlYmdIb0J4d05pczlBc2RONEZtS1ppemRmSk1BMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1756435164);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin@gmail.com',NULL,'$2y$12$1l4O4RG0AHErgci.Tdl5TOa3DXJ3Ceke/7RsBib/I5H5bZj.kmLMe',NULL,'2025-09-08 20:54:08','2025-09-08 20:54:08');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `view_laporan_barang_keluar`
--

DROP TABLE IF EXISTS `view_laporan_barang_keluar`;
/*!50001 DROP VIEW IF EXISTS `view_laporan_barang_keluar`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_laporan_barang_keluar` AS SELECT
 1 AS `no_transaksi`,
  1 AS `tanggal_keluar`,
  1 AS `nama_barang`,
  1 AS `satuan`,
  1 AS `nama_penerima`,
  1 AS `bagian`,
  1 AS `total_keluar`,
  1 AS `pengurus` */;
SET character_set_client = @saved_cs_client;

--
-- Current Database: `laporan_produksi_kain`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `laporan_produksi_kain` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `laporan_produksi_kain`;

--
-- Table structure for table `kain`
--

DROP TABLE IF EXISTS `kain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kain` (
  `id_barang` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kain` varchar(100) NOT NULL,
  `kode_kain` varchar(50) NOT NULL,
  `tanggal_produksi` date DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `nomor_mesin` varchar(50) DEFAULT NULL,
  `jenis_kain` varchar(50) DEFAULT NULL,
  `warna` varchar(50) DEFAULT NULL,
  `gross` decimal(10,2) DEFAULT NULL,
  `net` decimal(10,2) DEFAULT NULL,
  `harga_per_meter` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_barang`),
  UNIQUE KEY `kode_kain` (`kode_kain`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kain`
--

LOCK TABLES `kain` WRITE;
/*!40000 ALTER TABLE `kain` DISABLE KEYS */;
INSERT INTO `kain` VALUES (1,'Gritty','007N254','2024-11-01','Andi','M-101','Katun','Putih',150.00,145.00,25000.00),(2,'Velvet','008V200','2024-11-02','Budi','M-102','Sutra','Merah',120.00,118.50,32000.00),(3,'Denim','009D350','2024-11-03','Citra','M-103','Jeans','Biru',200.00,198.00,28000.00),(4,'Canvas','010C210','2024-11-03','Dian','M-104','Katun Tebal','Hijau',180.00,175.00,23000.00),(5,'Satin','011S250','2024-11-04','Eka','M-105','Sutra Halus','Hitam',160.00,158.00,35000.00),(6,'Linen','012L222','2024-11-04','Fajar','M-106','Linen','Krem',140.00,138.00,27000.00),(7,'Drill','013D199','2024-11-05','Gilang','M-107','Katun Tebal','Abu-abu',190.00,187.00,26000.00),(8,'Wool','014W311','2024-11-05','Hani','M-108','Wol','Coklat',110.00,109.00,40000.00),(9,'Rayon','015R404','2024-11-06','Ika','M-109','Rayon','Ungu',175.00,172.00,30000.00),(10,'Corduroy','016C450','2024-11-06','Joko','M-110','Katun Bergaris','Kuning',130.00,128.00,24000.00),(11,'Viscose','017V100','2025-11-20','Lina','M-111','Viscose','Teal',135.00,133.00,29000.00);
/*!40000 ALTER TABLE `kain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `konsumen`
--

DROP TABLE IF EXISTS `konsumen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `konsumen` (
  `id_konsumen` int(11) NOT NULL AUTO_INCREMENT,
  `nama_konsumen` varchar(100) NOT NULL,
  `jumlah_meter` decimal(10,2) DEFAULT NULL,
  `kontak` varchar(50) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_konsumen`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `konsumen`
--

LOCK TABLES `konsumen` WRITE;
/*!40000 ALTER TABLE `konsumen` DISABLE KEYS */;
INSERT INTO `konsumen` VALUES (1,'CV. Maju Jaya Textile',120.00,'0812-3456-1111','Bandung, Jawa Barat'),(2,'PT. Kurnia Abadi',250.00,'0821-7788-2222','Cimahi, Jawa Barat'),(3,'UD. Sinar Mulia',75.00,'0857-1234-3333','Garut, Jawa Barat'),(4,'Toko Kain Sejahtera',90.00,'0838-5678-4444','Tasikmalaya, Jawa Barat'),(5,'CV. Mandala Utama',300.00,'0813-8899-5555','Solo, Jawa Tengah'),(6,'PT. Global Sandang',180.00,'0822-1000-6666','Jakarta Timur, DKI Jakarta'),(7,'Toko Sumber Tekstil',140.00,'0877-5551-7777','Surabaya, Jawa Timur'),(8,'CV. Prima Kain',200.00,'0819-4412-8888','Bandung, Jawa Barat'),(9,'UD. Bintang Baru',110.00,'0851-2200-9999','Tangerang, Banten'),(10,'PT. Mega Nusantara',260.00,'0878-1122-0000','Bekasi, Jawa Barat');
/*!40000 ALTER TABLE `konsumen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pembuat`
--

DROP TABLE IF EXISTS `pembuat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pembuat` (
  `nik_pembuat` varchar(20) NOT NULL,
  `operator` varchar(100) NOT NULL,
  `nomor_mesin` varchar(50) DEFAULT NULL,
  `divisi` varchar(100) DEFAULT NULL,
  `shift` varchar(50) DEFAULT NULL,
  `foreman` varchar(100) DEFAULT NULL,
  `jenis_kain` varchar(50) DEFAULT NULL,
  `id_barang` int(11) DEFAULT NULL,
  PRIMARY KEY (`nik_pembuat`),
  KEY `id_barang` (`id_barang`),
  CONSTRAINT `pembuat_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `kain` (`id_barang`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pembuat`
--

LOCK TABLES `pembuat` WRITE;
/*!40000 ALTER TABLE `pembuat` DISABLE KEYS */;
INSERT INTO `pembuat` VALUES ('P001','Bambang S','M-101','Weaving','Pagi','Adi','Katun',1),('P002','Citra L','M-102','Dyeing','Siang','Budi','Sutra',2),('P003','Dian R','M-103','Weaving','Malam','Cahyo','Jeans',3),('P004','Eka M','M-104','Finishing','Pagi','Adi','Katun Tebal',4),('P005','Fajar A','M-105','Dyeing','Siang','Budi','Sutra Halus',5),('P006','Gilang P','M-106','Weaving','Malam','Cahyo','Linen',6),('P007','Hani T','M-107','Finishing','Pagi','Adi','Katun Tebal',7),('P008','Ika D','M-108','Dyeing','Siang','Budi','Wol',8),('P009','Joko K','M-109','Weaving','Malam','Cahyo','Rayon',9),('P010','Kiki Z','M-110','Finishing','Pagi','Adi','Katun Bergaris',10);
/*!40000 ALTER TABLE `pembuat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `mysql`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `mysql` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `mysql`;

--
-- Table structure for table `general_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `general_log` (
  `event_time` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `user_host` mediumtext NOT NULL,
  `thread_id` bigint(21) unsigned NOT NULL,
  `server_id` int(10) unsigned NOT NULL,
  `command_type` varchar(64) NOT NULL,
  `argument` mediumtext NOT NULL
) ENGINE=CSV DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='General log';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `slow_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `slow_log` (
  `start_time` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `user_host` mediumtext NOT NULL,
  `query_time` time(6) NOT NULL,
  `lock_time` time(6) NOT NULL,
  `rows_sent` int(11) NOT NULL,
  `rows_examined` int(11) NOT NULL,
  `db` varchar(512) NOT NULL,
  `last_insert_id` int(11) NOT NULL,
  `insert_id` int(11) NOT NULL,
  `server_id` int(10) unsigned NOT NULL,
  `sql_text` mediumtext NOT NULL,
  `thread_id` bigint(21) unsigned NOT NULL,
  `rows_affected` int(11) NOT NULL
) ENGINE=CSV DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Slow log';
/*!40101 SET character_set_client = @saved_cs_client */;
