-- MySQL dump 10.13  Distrib 5.7.44, for Linux (x86_64)
--
-- Host: localhost    Database: botol
-- ------------------------------------------------------
-- Server version	5.7.44

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `assets`
--

DROP TABLE IF EXISTS `assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_asset` varchar(255) NOT NULL,
  `merk_kode` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `ok` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `barcode` varchar(255) DEFAULT NULL,
  `kategori` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assets`
--

LOCK TABLES `assets` WRITE;
/*!40000 ALTER TABLE `assets` DISABLE KEYS */;
INSERT INTO `assets` VALUES (2,'Access Point unifi / ac-lr ','78:8A:20:8C:3D:15',1,NULL,1,'RTXXYG9908297320','Access Point','2026-04-15 02:44:16'),(3,'Access Point unifi / ac-lr ','78:8A:20:83:8E:3F',1,NULL,1,'TIGRAZ97366505','Access Point','2025-08-06 06:30:54'),(4,'Access Point unifi / ac-lr ','78:8A:20:83:F7:A6',1,NULL,1,'PUSSTE3187837765','Access Point','2026-01-19 03:03:17'),(5,'Access Point unifi / ac-lr ','E0:63:DA:02:9F:7F',1,NULL,1,'HDEUSD1534014606','Access Point','2026-04-15 02:42:19'),(6,'Access Point unifi / ac-lr ','F4:92:BF:10:47:22',1,NULL,1,NULL,'Access Point','2025-06-10 02:21:05'),(7,'ECS3510-28T / Edge core ','70:72:CF:91:9D:7E',1,NULL,1,'FGPIHX2232708455','Switch Management','2025-08-08 11:38:16'),(8,'ECS3510-28T / Edge core','70:72:CF:B1:A5:4C',1,NULL,1,NULL,'Switch Management','2025-06-10 02:23:48'),(9,'ECS3510-28T / Edge core','70:72:CF:75:DB:73',1,NULL,1,NULL,'Switch Management','2025-06-10 02:24:38'),(10,'ECS3510-28T / Edge core ','CC:37:AB:99:01:C8',1,NULL,1,NULL,'Switch Management','2025-06-10 02:25:02'),(11,'ECS3510-28T / Edge core ','70:72:CF:75:CF:54',1,NULL,1,NULL,'Switch Management','2025-06-10 02:25:21'),(12,'ECS4100-28T / Edge core','B8:6A:97:65:0B:40',1,NULL,1,NULL,'Switch Management','2025-06-10 02:25:43'),(13,'ECS3510-28T / Edge core ','70:72:CF:91:96:EC',1,NULL,1,NULL,'Switch Management','2025-06-10 02:26:25'),(14,'ECS3510-28T / Edge core ','70:72:CF:75:D1:7B',1,NULL,1,NULL,'Switch Management','2025-06-10 02:27:40'),(15,'ECS3510-28T / Edge core ','70:72:CF:75:C9:53',1,NULL,1,NULL,'Switch Management','2025-06-10 02:28:15'),(16,'Procurve switch 2510-24 / HP','C0:91:34:54:B5:00',1,NULL,1,'C0:91:34:54:B5:00_4937175758','Switch Management','2025-06-11 01:57:45'),(17,'ECS3510-28T / Edge core ','70:72:CF:7B:81:49',1,NULL,1,NULL,'Switch Management','2025-06-10 02:29:24'),(18,'ECS3510-28T / Edge core ','CC:37:AB:99:06:88',1,NULL,1,NULL,'Switch Management','2025-06-10 02:29:45'),(19,'ECS3510-28T / Edge core','70:72:CF:91:9D:61',1,NULL,1,NULL,'Switch Management','2025-06-10 02:29:58'),(20,'ECS3510-28T / Edge core','70:72:CF:B1:CB:3F',1,NULL,1,NULL,'Switch Management','2025-06-10 02:30:15'),(21,'ECS3510-28T / Edge core','70:72:CF:75:BB:47',1,NULL,1,NULL,'Switch Management','2025-06-10 02:30:29'),(22,'EC3510-28T / Edge core ','70:72:CF:7B:81:49',1,NULL,1,NULL,'Switch Management','2025-06-11 01:23:59'),(23,'EC3510-28T / Edge core','CC:37:AB:99:06:88',1,NULL,1,NULL,'Switch Management','2025-06-11 01:24:28'),(24,'EC3510-28T / Edge core ','70:72:CF:91:9D:61',1,NULL,1,NULL,'Switch Management','2025-06-11 01:26:40'),(25,'EC3510-28T / Edge core ','70:72:CF:B1:CB:3F',1,NULL,1,NULL,'Switch Management','2025-06-11 01:27:35'),(26,'EC3510-28T / Edge core ','70:72:CF:75:BB:47',1,NULL,1,NULL,'Switch Management','2025-06-11 01:27:55'),(27,'SF500-24 / Cisco','F4:EA:67:8B:E3:5B',1,NULL,1,NULL,'Switch Management','2025-06-11 01:28:46'),(28,'3CR17333-91 / 3COM','00:1C:C5:AD:95:7B',1,NULL,1,NULL,'Switch Management','2025-06-11 01:29:34'),(29,'ECS3510-52T / Edge Core ','CC:37:AB:66:49:4D',1,NULL,1,NULL,'Switch Management','2025-06-11 01:30:07'),(30,'TL-SG3452 / TP-LINK','34:60:F9:DA:C3:8B',1,NULL,1,NULL,'Switch Management','2025-06-11 01:30:33'),(31,'3C16471B / 3COM','-',1,NULL,1,'QZMVZC7265495484','Switch Management','2025-06-11 02:54:41'),(32,'ECS3510-52T / Edge Core ','CC:37:AB:63:C4:09',1,NULL,1,NULL,'Switch Management','2025-06-11 01:31:56'),(33,'SG220-26 / CISCO','1C:D1:E0:6B:52:E7',1,NULL,0,'FPMGDQ2378456257','Switch Management','2025-08-06 13:33:57'),(34,'ECS4100-52T / Edge Core','A8:8B:B5:86:4C:3D',1,NULL,1,NULL,'Switch Management','2025-06-11 01:33:09'),(35,'ECS3510-52T / Edge Core ','CC:37:AB:65:C8:8D',1,NULL,1,NULL,'Switch Management','2025-06-11 01:33:55'),(36,'TL-SG3452 / TP-LINK','34:60:F9:DA:C3:68',1,NULL,1,NULL,'Switch Management','2025-06-11 01:34:24'),(37,'DES-1210-52 / DLINK','6C:19:8F:98:32:0E',1,NULL,1,NULL,'Switch Management','2025-06-11 01:34:49'),(38,'ECS3510-52T / Edge Core ','70:72:CF:CA:EF:68',1,NULL,1,NULL,'Switch Management','2025-06-11 01:35:19'),(39,'ECS3510-52T / Edge Core ','70:72:CF:FB:B2:48',1,NULL,1,NULL,'Switch Management','2025-06-11 01:38:14'),(40,'RB1100 / MikroTik','6C:3B:6B:57:67:F6',1,NULL,1,'TDBDMC6837165081','Router','2025-08-06 06:31:02'),(41,'RBB201 1L-RM / MikroTik','D4:CA:6D:8D:EF:39',1,NULL,1,NULL,'Router','2025-06-11 01:39:18'),(42,'DGS-1016C / D-LINK','-',1,NULL,1,NULL,'Switch Unmanaged','2025-06-11 01:39:45'),(43,'DES-1016D / D-LINK','-',1,NULL,1,NULL,'Switch Unmanaged','2025-06-11 01:40:11'),(44,'DGS-1016C / D-LINK','-',1,NULL,1,NULL,'Switch Unmanaged','2025-06-11 01:40:49'),(45,'DGS-1016C / D-LINK','-',1,NULL,1,NULL,'Switch Unmanaged','2025-06-11 01:41:32'),(46,'DGS-1016C / D-LINK','-',1,NULL,1,NULL,'Switch Unmanaged','2025-06-11 01:41:48'),(47,'DES-1016C / DLINK','-',1,NULL,1,NULL,'Switch Unmanaged','2025-06-11 01:42:23'),(48,'TL-SG1024D / TP-LINK','-',1,NULL,1,NULL,'Switch Unmanaged','2025-06-11 01:43:57'),(49,'TL-SG1016D / TPLINK','-',1,NULL,1,NULL,'Switch Unmanaged','2025-06-11 01:45:02'),(50,'DGS-1024C / D-LINK','-',1,NULL,1,NULL,'Switch Unmanaged','2025-06-11 01:45:39'),(51,'DES-1016D / D-LINK','-',1,NULL,1,NULL,'Switch Unmanaged','2025-06-11 01:46:00'),(52,'DES-1024D / DLINK','-',1,NULL,1,NULL,'Switch Unmanaged','2025-06-11 01:47:27'),(53,'DES-1008C /DLINK','-',1,NULL,1,NULL,'Switch Unmanaged','2025-06-11 01:47:15'),(54,'TL-SF1008D / TPLINK','-',1,NULL,1,NULL,'Switch Unmanaged','2025-06-11 01:46:56'),(55,'DES-1008A / DLINK','-',1,NULL,1,NULL,'Switch Unmanaged','2025-06-11 01:47:51'),(56,'RB951Ui-2HnD / MikroTIK','-',1,NULL,1,NULL,'Router','2025-06-11 01:48:09'),(57,'Access Point unifi / U6 Lite','78:45:58:46:48:fc',1,NULL,1,NULL,'Access Point','2025-06-24 04:59:50'),(58,'Access Point unifi / ac-lr	','FC:EC:DA:8C:72:4A	',1,NULL,1,NULL,'Access Point','2025-07-22 01:25:27'),(62,'Regy kurnia saputra','avanza',1,NULL,1,NULL,'Walkie Talkie','2026-01-08 02:22:47');
/*!40000 ALTER TABLE `assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assets_copy`
--

DROP TABLE IF EXISTS `assets_copy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assets_copy`
--

LOCK TABLES `assets_copy` WRITE;
/*!40000 ALTER TABLE `assets_copy` DISABLE KEYS */;
INSERT INTO `assets_copy` VALUES ('Access Point unifi / ac-lr ','78:8A:20:83:89:18',1,1,NULL,NULL,'Access Point','2025-06-10 02:19:58'),('Access Point unifi / ac-lr ','78:8A:20:8C:3D:15',1,1,NULL,NULL,'Access Point','2025-06-10 02:20:04'),('Access Point unifi / ac-lr ','78:8A:20:83:8E:3F',1,1,NULL,NULL,'Access Point','2025-06-10 02:18:29'),('Access Point unifi / ac-lr ','78:8A:20:83:F7:A6',1,1,NULL,NULL,'Access Point','2025-06-10 02:19:03'),('Access Point unifi / ac-lr ','E0:63:DA:02:9F:7F',1,1,NULL,NULL,'Access Point','2025-06-10 02:20:31'),('Access Point unifi / ac-lr ','F4:92:BF:10:47:22',1,1,NULL,NULL,'Access Point','2025-06-10 02:21:05'),('ECS3510-28T / Edge core ','70:72:CF:91:9D:7E',1,1,NULL,NULL,'Switch Management','2025-06-10 02:23:13'),('ECS3510-28T / Edge core','70:72:CF:B1:A5:4C',1,1,NULL,NULL,'Switch Management','2025-06-10 02:23:48'),('ECS3510-28T / Edge core','70:72:CF:75:DB:73',1,1,NULL,NULL,'Switch Management','2025-06-10 02:24:38'),('ECS3510-28T / Edge core ','CC:37:AB:99:01:C8',1,1,NULL,NULL,'Switch Management','2025-06-10 02:25:02'),('ECS3510-28T / Edge core ','70:72:CF:75:CF:54',1,1,NULL,NULL,'Switch Management','2025-06-10 02:25:21'),('ECS4100-28T / Edge core','B8:6A:97:65:0B:40',1,1,NULL,NULL,'Switch Management','2025-06-10 02:25:43'),('ECS3510-28T / Edge core ','70:72:CF:91:96:EC',1,1,NULL,NULL,'Switch Management','2025-06-10 02:26:25'),('ECS3510-28T / Edge core ','70:72:CF:75:D1:7B',1,1,NULL,NULL,'Switch Management','2025-06-10 02:27:40'),('ECS3510-28T / Edge core ','70:72:CF:75:C9:53',1,1,NULL,NULL,'Switch Management','2025-06-10 02:28:15'),('Procurve switch 2510-24 / HP','C0:91:34:54:B5:00',1,1,NULL,'C0:91:34:54:B5:00_4937175758','Switch Management','2025-06-11 01:57:45'),('ECS3510-28T / Edge core ','70:72:CF:7B:81:49',1,1,NULL,NULL,'Switch Management','2025-06-10 02:29:24'),('ECS3510-28T / Edge core ','CC:37:AB:99:06:88',1,1,NULL,NULL,'Switch Management','2025-06-10 02:29:45'),('ECS3510-28T / Edge core','70:72:CF:91:9D:61',1,1,NULL,NULL,'Switch Management','2025-06-10 02:29:58'),('ECS3510-28T / Edge core','70:72:CF:B1:CB:3F',1,1,NULL,NULL,'Switch Management','2025-06-10 02:30:15'),('ECS3510-28T / Edge core','70:72:CF:75:BB:47',1,1,NULL,NULL,'Switch Management','2025-06-10 02:30:29'),('EC3510-28T / Edge core ','70:72:CF:7B:81:49',1,1,NULL,NULL,'Switch Management','2025-06-11 01:23:59'),('EC3510-28T / Edge core','CC:37:AB:99:06:88',1,1,NULL,NULL,'Switch Management','2025-06-11 01:24:28'),('EC3510-28T / Edge core ','70:72:CF:91:9D:61',1,1,NULL,NULL,'Switch Management','2025-06-11 01:26:40'),('EC3510-28T / Edge core ','70:72:CF:B1:CB:3F',1,1,NULL,NULL,'Switch Management','2025-06-11 01:27:35'),('EC3510-28T / Edge core ','70:72:CF:75:BB:47',1,1,NULL,NULL,'Switch Management','2025-06-11 01:27:55'),('SF500-24 / Cisco','F4:EA:67:8B:E3:5B',1,1,NULL,NULL,'Switch Management','2025-06-11 01:28:46'),('3CR17333-91 / 3COM','00:1C:C5:AD:95:7B',1,1,NULL,NULL,'Switch Management','2025-06-11 01:29:34'),('ECS3510-52T / Edge Core ','CC:37:AB:66:49:4D',1,1,NULL,NULL,'Switch Management','2025-06-11 01:30:07'),('TL-SG3452 / TP-LINK','34:60:F9:DA:C3:8B',1,1,NULL,NULL,'Switch Management','2025-06-11 01:30:33'),('3C16471B / 3COM','-',1,1,NULL,'QZMVZC7265495484','Switch Management','2025-06-11 02:54:41'),('ECS3510-52T / Edge Core ','CC:37:AB:63:C4:09',1,1,NULL,NULL,'Switch Management','2025-06-11 01:31:56'),('SG220-26 / CISCO','1C:D1:E0:6B:52:E7',1,1,NULL,NULL,'Switch Management','2025-06-11 01:32:39'),('ECS4100-52T / Edge Core','A8:8B:B5:86:4C:3D',1,1,NULL,NULL,'Switch Management','2025-06-11 01:33:09'),('ECS3510-52T / Edge Core ','CC:37:AB:65:C8:8D',1,1,NULL,NULL,'Switch Management','2025-06-11 01:33:55'),('TL-SG3452 / TP-LINK','34:60:F9:DA:C3:68',1,1,NULL,NULL,'Switch Management','2025-06-11 01:34:24'),('DES-1210-52 / DLINK','6C:19:8F:98:32:0E',1,1,NULL,NULL,'Switch Management','2025-06-11 01:34:49'),('ECS3510-52T / Edge Core ','70:72:CF:CA:EF:68',1,1,NULL,NULL,'Switch Management','2025-06-11 01:35:19'),('ECS3510-52T / Edge Core ','70:72:CF:FB:B2:48',1,1,NULL,NULL,'Switch Management','2025-06-11 01:38:14'),('RB1100 / MikroTik','6C:3B:6B:57:67:F6',1,1,NULL,NULL,'Router','2025-06-11 01:38:51'),('RBB201 1L-RM / MikroTik','D4:CA:6D:8D:EF:39',1,1,NULL,NULL,'Router','2025-06-11 01:39:18'),('DGS-1016C / D-LINK','-',1,1,NULL,NULL,'Switch Unmanaged','2025-06-11 01:39:45'),('DES-1016D / D-LINK','-',1,1,NULL,NULL,'Switch Unmanaged','2025-06-11 01:40:11'),('DGS-1016C / D-LINK','-',1,1,NULL,NULL,'Switch Unmanaged','2025-06-11 01:40:49'),('DGS-1016C / D-LINK','-',1,1,NULL,NULL,'Switch Unmanaged','2025-06-11 01:41:32'),('DGS-1016C / D-LINK','-',1,1,NULL,NULL,'Switch Unmanaged','2025-06-11 01:41:48'),('DES-1016C / DLINK','-',1,1,NULL,NULL,'Switch Unmanaged','2025-06-11 01:42:23'),('TL-SG1024D / TP-LINK','-',1,1,NULL,NULL,'Switch Unmanaged','2025-06-11 01:43:57'),('TL-SG1016D / TPLINK','-',1,1,NULL,NULL,'Switch Unmanaged','2025-06-11 01:45:02'),('DGS-1024C / D-LINK','-',1,1,NULL,NULL,'Switch Unmanaged','2025-06-11 01:45:39'),('DES-1016D / D-LINK','-',1,1,NULL,NULL,'Switch Unmanaged','2025-06-11 01:46:00'),('DES-1024D / DLINK','-',1,1,NULL,NULL,'Switch Unmanaged','2025-06-11 01:47:27'),('DES-1008C /DLINK','-',1,1,NULL,NULL,'Switch Unmanaged','2025-06-11 01:47:15'),('TL-SF1008D / TPLINK','-',1,1,NULL,NULL,'Switch Unmanaged','2025-06-11 01:46:56'),('DES-1008A / DLINK','-',1,1,NULL,NULL,'Switch Unmanaged','2025-06-11 01:47:51'),('RB951Ui-2HnD / MikroTIK','-',1,1,NULL,NULL,'Router','2025-06-11 01:48:09');
/*!40000 ALTER TABLE `assets_copy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `barang`
--

DROP TABLE IF EXISTS `barang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `barang` (
  `id_barang` char(7) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `stok` double NOT NULL,
  `satuan_id` int(11) NOT NULL,
  `jenis_id` int(11) NOT NULL,
  `harga` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_barang`) USING BTREE,
  KEY `satuan_id` (`satuan_id`) USING BTREE,
  KEY `kategori_id` (`jenis_id`) USING BTREE,
  CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`satuan_id`) REFERENCES `satuan` (`id_satuan`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `barang_ibfk_2` FOREIGN KEY (`jenis_id`) REFERENCES `jenis` (`id_jenis`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `barang`
--

LOCK TABLES `barang` WRITE;
/*!40000 ALTER TABLE `barang` DISABLE KEYS */;
INSERT INTO `barang` VALUES ('B000003','lakban',0,3,1,0),('B000004','Buku',290,1,1,NULL),('B000005','Kabel',440,3,1,500),('B000006','konektor',50,1,1,NULL),('B000007','Jam',21,1,1,NULL),('B000008','LAPTOP',0,1,1,NULL);
/*!40000 ALTER TABLE `barang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `barang_keluar`
--

DROP TABLE IF EXISTS `barang_keluar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `barang_keluar` (
  `id_barang_keluar` char(16) NOT NULL,
  `user_id` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `nama_penerima` char(50) NOT NULL,
  `alamat` text NOT NULL,
  `tanggal_keluar` date NOT NULL,
  PRIMARY KEY (`id_barang_keluar`) USING BTREE,
  KEY `id_user` (`user_id`) USING BTREE,
  KEY `id_customer` (`id_customer`),
  CONSTRAINT `barang_keluar_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `barang_keluar_ibfk_2` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `barang_keluar`
--

LOCK TABLES `barang_keluar` WRITE;
/*!40000 ALTER TABLE `barang_keluar` DISABLE KEYS */;
INSERT INTO `barang_keluar` VALUES ('T-BK-24111300001',1,1,'Kevin','Jaringan','2024-11-13'),('T-BK-24111300002',1,1,'Kevin','Jaringan','2024-11-13'),('T-BK-24111300003',1,1,'Kevin','Jaringan','2024-11-13'),('T-BK-24111300004',1,1,'Kevin','Jaringan','2024-11-13'),('T-BK-24111300005',1,2,'Advin','CCTV','2024-11-13'),('T-BK-24111300006',1,2,'Advin','CCTV','2024-11-13'),('T-BK-24111300007',1,2,'Advin','CCTV','2024-11-13'),('T-BK-24111300008',1,1,'Kevin','Jaringan','2024-11-13'),('T-BK-24111300009',1,2,'Advin','CCTV','2024-11-13');
/*!40000 ALTER TABLE `barang_keluar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `barang_keluar_copy1`
--

DROP TABLE IF EXISTS `barang_keluar_copy1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `barang_keluar_copy1` (
  `id_barang_keluar` char(16) NOT NULL,
  `user_id` int(11) NOT NULL,
  `barang_id` char(7) NOT NULL,
  `nama_penerima` char(50) NOT NULL,
  `alamat` text NOT NULL,
  `jumlah_keluar` double NOT NULL,
  `tanggal_keluar` date NOT NULL,
  PRIMARY KEY (`id_barang_keluar`) USING BTREE,
  KEY `id_user` (`user_id`) USING BTREE,
  KEY `barang_id` (`barang_id`) USING BTREE,
  CONSTRAINT `barang_keluar_copy1_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `barang_keluar_copy1_ibfk_2` FOREIGN KEY (`barang_id`) REFERENCES `barang` (`id_barang`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `barang_keluar_copy1`
--

LOCK TABLES `barang_keluar_copy1` WRITE;
/*!40000 ALTER TABLE `barang_keluar_copy1` DISABLE KEYS */;
/*!40000 ALTER TABLE `barang_keluar_copy1` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`appuser`@`%`*/ /*!50003 TRIGGER `update_stok_keluar_copy1` BEFORE INSERT ON `barang_keluar_copy1` FOR EACH ROW UPDATE `barang` SET `barang`.`stok` = `barang`.`stok` - NEW.jumlah_keluar WHERE `barang`.`id_barang` = NEW.barang_id */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `barang_keluar_dtl`
--

DROP TABLE IF EXISTS `barang_keluar_dtl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `barang_keluar_dtl` (
  `id_detail` int(11) NOT NULL AUTO_INCREMENT,
  `id_barang_keluar` char(16) NOT NULL,
  `barang_id` char(7) NOT NULL,
  `harga` int(11) NOT NULL,
  `jumlah_keluar` double NOT NULL,
  `total_nominal_dtl` int(1) NOT NULL,
  PRIMARY KEY (`id_detail`) USING BTREE,
  KEY `barang_keluar_dtl_ibfk_1` (`id_barang_keluar`) USING BTREE,
  CONSTRAINT `barang_keluar_dtl_ibfk_1` FOREIGN KEY (`id_barang_keluar`) REFERENCES `barang_keluar` (`id_barang_keluar`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `barang_keluar_dtl`
--

LOCK TABLES `barang_keluar_dtl` WRITE;
/*!40000 ALTER TABLE `barang_keluar_dtl` DISABLE KEYS */;
INSERT INTO `barang_keluar_dtl` VALUES (1,'T-BK-24111300001','B000004',2500,20,50000),(2,'T-BK-24111300002','B000004',0,20,0),(3,'T-BK-24111300003','B000003',0,1,0),(4,'T-BK-24111300004','B000003',0,2,0),(5,'T-BK-24111300005','B000003',0,200,0),(6,'T-BK-24111300006','B000004',0,60,0),(7,'T-BK-24111300007','B000003',0,20,0),(8,'T-BK-24111300007','B000005',0,50,0),(9,'T-BK-24111300008','B000004',0,90,0),(10,'T-BK-24111300008','B000005',0,60,0),(11,'T-BK-24111300009','B000004',0,20,0),(12,'T-BK-24111300009','B000003',0,90,0);
/*!40000 ALTER TABLE `barang_keluar_dtl` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`appuser`@`%`*/ /*!50003 TRIGGER `update_stok_keluar` BEFORE INSERT ON `barang_keluar_dtl` FOR EACH ROW UPDATE `barang` SET `barang`.`stok` = `barang`.`stok` - NEW.jumlah_keluar WHERE `barang`.`id_barang` = NEW.barang_id */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`appuser`@`%`*/ /*!50003 TRIGGER `delete_stok_keluar` AFTER DELETE ON `barang_keluar_dtl` FOR EACH ROW UPDATE `barang` SET `barang`.`stok` = `barang`.`stok` + OLD.jumlah_keluar WHERE `barang`.`id_barang` = OLD.barang_id */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `barang_masuk`
--

DROP TABLE IF EXISTS `barang_masuk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `barang_masuk` (
  `id_barang_masuk` char(16) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `barang_id` char(7) NOT NULL,
  `jumlah_masuk` double NOT NULL,
  `tanggal_masuk` date NOT NULL,
  PRIMARY KEY (`id_barang_masuk`) USING BTREE,
  KEY `id_user` (`user_id`) USING BTREE,
  KEY `supplier_id` (`supplier_id`) USING BTREE,
  KEY `barang_id` (`barang_id`) USING BTREE,
  CONSTRAINT `barang_masuk_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `barang_masuk_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id_supplier`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `barang_masuk_ibfk_3` FOREIGN KEY (`barang_id`) REFERENCES `barang` (`id_barang`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `barang_masuk`
--

LOCK TABLES `barang_masuk` WRITE;
/*!40000 ALTER TABLE `barang_masuk` DISABLE KEYS */;
INSERT INTO `barang_masuk` VALUES ('T-BM-24100700002',6,1,'B000003',1000,'2024-10-07'),('T-BM-24111300001',6,1,'B000003',20,'2024-11-14'),('T-BM-24111300002',6,1,'B000004',500,'2024-11-14'),('T-BM-24111300003',5,1,'B000005',500,'2024-11-13'),('T-BM-24111300004',5,5,'B000006',50,'2024-11-13'),('T-BM-24111300005',5,1,'B000005',50,'0000-00-00'),('T-BM-25082100001',5,1,'B000007',20,'2025-08-21');
/*!40000 ALTER TABLE `barang_masuk` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`appuser`@`%`*/ /*!50003 TRIGGER `update_stok_masuk` BEFORE INSERT ON `barang_masuk` FOR EACH ROW UPDATE `barang` SET `barang`.`stok` = `barang`.`stok` + NEW.jumlah_masuk WHERE `barang`.`id_barang` = NEW.barang_id */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(100) NOT NULL,
  `address` varchar(250) NOT NULL,
  `phone` varchar(16) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Kevin','Jaringan','0893482940923','2024-11-13 14:44:08'),(2,'Advin','CCTV','082912094','2024-11-13 15:32:06');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jenis`
--

DROP TABLE IF EXISTS `jenis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jenis` (
  `id_jenis` int(11) NOT NULL AUTO_INCREMENT,
  `nama_jenis` varchar(20) NOT NULL,
  PRIMARY KEY (`id_jenis`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jenis`
--

LOCK TABLES `jenis` WRITE;
/*!40000 ALTER TABLE `jenis` DISABLE KEYS */;
INSERT INTO `jenis` VALUES (1,'Alat'),(2,'Makanan'),(3,'Minuman'),(4,'Elektronik');
/*!40000 ALTER TABLE `jenis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peminjaman`
--

DROP TABLE IF EXISTS `peminjaman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peminjaman` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `assets_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `jumlah_pinjam` varchar(255) NOT NULL,
  `sisa_stok` int(11) DEFAULT NULL,
  `status_pengembalian` tinyint(1) DEFAULT '0',
  `peminjam` varchar(255) NOT NULL,
  `departemen` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_peminjaman_assets` (`assets_id`),
  CONSTRAINT `FK_peminjaman_assets` FOREIGN KEY (`assets_id`) REFERENCES `assets` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peminjaman`
--

LOCK TABLES `peminjaman` WRITE;
/*!40000 ALTER TABLE `peminjaman` DISABLE KEYS */;
INSERT INTO `peminjaman` VALUES (23,58,0,'2025-08-06','2025-09-06','1',NULL,0,'Lapang Tenis','BIRO UMUM');
/*!40000 ALTER TABLE `peminjaman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pengajuan_barang`
--

DROP TABLE IF EXISTS `pengajuan_barang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pengajuan_barang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date NOT NULL,
  `no_pengajuan` varchar(255) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `merk_kode` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `approved` tinyint(1) DEFAULT '0',
  `approved_qty` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pengajuan_barang`
--

LOCK TABLES `pengajuan_barang` WRITE;
/*!40000 ALTER TABLE `pengajuan_barang` DISABLE KEYS */;
INSERT INTO `pengajuan_barang` VALUES (37,'2025-07-24','24072025/VII/PAMBMD/2025','TES','TES',123,'TES',0,NULL),(38,'2025-08-06','06082025/VIII/PAMBMD/2025','laptop','12345678',100,'laptop',2,50),(39,'2025-08-12','12082025/VIII/PAMBMD/2025','Kulkas','Sharp',1,'Elektronik',2,1),(40,'2025-08-12','35712082025/VIII/PAMBMD/2025','Monitoy','Toshiba',2,'Alat',0,NULL),(41,'2025-08-21','21082025/VIII/PAMBMD/2025','Tes','Tes',10,'Tes',1,NULL);
/*!40000 ALTER TABLE `pengajuan_barang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pengajuan_barang_backup`
--

DROP TABLE IF EXISTS `pengajuan_barang_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pengajuan_barang_backup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date NOT NULL,
  `no_pengajuan` varchar(255) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `merk_kode` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `approved` tinyint(1) DEFAULT '0',
  `approved_qty` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pengajuan_barang_backup`
--

LOCK TABLES `pengajuan_barang_backup` WRITE;
/*!40000 ALTER TABLE `pengajuan_barang_backup` DISABLE KEYS */;
INSERT INTO `pengajuan_barang_backup` VALUES (1,'2024-10-12','5555','Baut','KUAT',10,'box',2,9),(2,'2024-10-11','6666','AP','UNIFI',55,'66',2,20),(3,'2024-10-11','123123','Laptop','HP',11,'11',2,5),(4,'2024-10-09','1234','buku baca','sidudu',11,'pcs',2,12),(5,'2024-10-11','1','11','11',11,'111',2,10);
/*!40000 ALTER TABLE `pengajuan_barang_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `satuan`
--

DROP TABLE IF EXISTS `satuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `satuan` (
  `id_satuan` int(11) NOT NULL AUTO_INCREMENT,
  `nama_satuan` varchar(15) NOT NULL,
  PRIMARY KEY (`id_satuan`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `satuan`
--

LOCK TABLES `satuan` WRITE;
/*!40000 ALTER TABLE `satuan` DISABLE KEYS */;
INSERT INTO `satuan` VALUES (1,'Pcs'),(2,'Botol'),(3,'Bungkus'),(4,'Porsi'),(5,'Ikat');
/*!40000 ALTER TABLE `satuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplier` (
  `id_supplier` int(11) NOT NULL AUTO_INCREMENT,
  `nama_supplier` varchar(50) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `alamat` text NOT NULL,
  PRIMARY KEY (`id_supplier`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (5,'PT BIT','085314522528','Jl. Sukarno Hatta, Kota Bandung'),(6,'PT Delca','082121678861','Jl. Jendral Sudirman, Garut'),(7,'PT Rebeca','0882356741','Sukabumi wetan');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `role` enum('gudang','admin') NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` int(11) NOT NULL,
  `foto` text NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Adminisitrator','admin','admin@admin.com','025123456789','admin','$2y$10$Mh4022E8uLMx3KaXme7ofuiIZvGqAqmTsuu/NsjD8cFgRlpZR3FBa',1568689561,'d5f22535b639d55be7d099a7315e1f7f.png',1),(3,'user1','user1','user1@gmail.com','123123','gudang','$2y$10$0xXxFq1RGBjni37F5vy0IOyvZytCLVkZhOX2i7.5t8KAzX/R7noXu',1728533676,'user.png',1),(4,'user','user','puta@gmail.com','012839817248912','gudang','$2y$10$iPmXwSu0G6GUwqMfEOiYz.53Vo8ProVYukiywRRMdASxXn/jRiG9C',1730433727,'user.png',1),(5,'Fahmi','gudang1','Fahmi@fahmi.com','0989275852','gudang','$2y$10$qlH5CtT/zMEVaci9QWlYAevhkShYjJwqqelfq3UtpnyZMxyRrzpoy',1731498257,'user.png',1),(6,'regy','regy','rks@gmail.com','12123123123','gudang','$2y$10$DEMyBxBeA/t1eNFoK3YZY.0kE5yfTC9ZAI3yAtG9QvFGC6uxT/0by',1749692784,'user.png',1),(7,'mikail','admin22','nanuna@gmail.com','0888763421232','admin','$2y$10$3DXq3IV.VFw7srvb51pbt.R4uffcQ.fBH4hxyRDxCXyyobZziXZ3a',1754454896,'user.png',0),(8,'tes','tes','tes@gmail.com','123123123','gudang','$2y$10$PhN8cgnwNKMLyWXgLiockOLob4HS3jfItuXKhv5YhLbu10nHBTgnG',1754462322,'user.png',0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-15  7:10:17
