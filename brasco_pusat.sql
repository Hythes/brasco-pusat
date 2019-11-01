-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2019 at 07:52 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `brasco_pusat`
--
CREATE DATABASE IF NOT EXISTS `brasco_pusat` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `brasco_pusat`;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `kode` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `kota` varchar(255) NOT NULL,
  `kodepos` varchar(255) NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `handphone` varchar(255) NOT NULL,
  `npwp` varchar(255) NOT NULL,
  `ktp` varchar(255) NOT NULL,
  `tipe_customer` varchar(255) NOT NULL,
  `kredit` varchar(2) NOT NULL,
  `contact_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `kode_sales` varchar(255) NOT NULL,
  `top` varchar(255) NOT NULL,
  `batas_kredit` varchar(255) NOT NULL,
  `tanggal_jual_akhir` date NOT NULL,
  `saldo_awal` varchar(255) NOT NULL,
  `saldo_jalan` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`kode`, `nama`, `alamat`, `kota`, `kodepos`, `telepon`, `handphone`, `npwp`, `ktp`, `tipe_customer`, `kredit`, `contact_name`, `email`, `kode_sales`, `top`, `batas_kredit`, `tanggal_jual_akhir`, `saldo_awal`, `saldo_jalan`, `keterangan`, `created_at`, `updated_at`) VALUES
('CST-001', 'Hanif Setyananda', 'Jl. Basudewo 1086C\r\nJl. Kanguru Raya No. 2 AB', 'Semarang', '50246', '62815424285', '08129232125', '20002', '1199921331', '2', 'T', 'Seep', 'seep@gmail.com', 'SL-001', 'TOP', '20002', '2019-10-11', '50000', '80000', 'idk', '2019-10-12 16:59:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `diskon_barang_reject`
--

DROP TABLE IF EXISTS `diskon_barang_reject`;
CREATE TABLE `diskon_barang_reject` (
  `id` int(11) NOT NULL,
  `kode_reject` varchar(255) NOT NULL,
  `kode_customer` varchar(255) NOT NULL,
  `barcode` varchar(255) NOT NULL,
  `barcode_reject` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `diskon` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `diskon_barang_reject`
--

INSERT INTO `diskon_barang_reject` (`id`, `kode_reject`, `kode_customer`, `barcode`, `barcode_reject`, `quantity`, `diskon`, `status`, `created_at`, `updated_at`) VALUES
(1, 'RJ-001', 'CST-001', '2', '2R', '2', '40', 0, '2019-10-25 15:24:25', NULL),
(2, 'RJ-001', 'CST-001', '2', '2R', '2', '40', 0, '2019-10-25 15:24:25', NULL),
(3, 'RJ-002', 'CST-001', '2', '2R', '2', '40', 0, '2019-10-25 15:26:57', NULL),
(4, 'RJ-002', 'CST-001', '2', '2R', '2', '40', 0, '2019-10-25 15:26:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
CREATE TABLE `inventory` (
  `id` int(11) NOT NULL,
  `barcode` varchar(255) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `satuan` varchar(255) NOT NULL,
  `id_tipe_barang` varchar(255) NOT NULL,
  `harga_jual1` varchar(255) NOT NULL,
  `harga_jual2` varchar(255) NOT NULL,
  `harga_jual3` varchar(255) NOT NULL,
  `quantity` varchar(255) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `barcode`, `nama_barang`, `satuan`, `id_tipe_barang`, `harga_jual1`, `harga_jual2`, `harga_jual3`, `quantity`, `created_at`, `update_at`) VALUES
(2, 'A33', 'Sepatu', '4', '6', '14000', '10000', '6500', '2', '2019-09-30 21:25:46', '2019-10-01 14:08:25'),
(3, 'A23', 'Baju', '4', '7', '50000', '40000', '45000', '0', '2019-10-01 21:06:24', '2019-10-13 14:34:19'),
(4, 'A13', 'Celana', '4', '8', '75000', '78000', '60000', '0', '2019-10-01 21:07:24', '2019-10-13 14:34:22'),
(5, '1', 'Ret', '4', '6', '2000', '1000', '3000', '0', '2019-10-04 08:23:25', '2019-10-13 14:34:23'),
(6, '2', 'Priz', '7', '7', '4000', '3000', '2500', '15', '2019-10-04 08:23:42', '2019-10-24 11:30:15'),
(7, '3', 'Randu', '6', '8', '7000', '6000', '5000', '13', '2019-10-04 08:23:58', '2019-10-24 11:30:15'),
(8, '5', 'w', '4', '8', '2000', '2000', '3000', '0', '2019-10-07 13:48:15', '2019-10-13 14:34:29');

-- --------------------------------------------------------

--
-- Table structure for table `jurnal_referensi`
--

DROP TABLE IF EXISTS `jurnal_referensi`;
CREATE TABLE `jurnal_referensi` (
  `id` int(11) NOT NULL,
  `kas` char(13) NOT NULL,
  `bank` char(13) NOT NULL,
  `umbeli` char(13) NOT NULL,
  `hutang` char(13) NOT NULL,
  `persediaan` char(13) NOT NULL,
  `ppnmasuk` char(13) NOT NULL,
  `ongkirbeli` char(13) NOT NULL,
  `persediaan_in_transit` char(13) NOT NULL,
  `persediaan_gd1` char(13) NOT NULL,
  `persediaan_gd2` char(13) NOT NULL,
  `persediaan_brg_jadi` char(13) NOT NULL,
  `persediaan_bahan_baku_dlm_proses` char(13) NOT NULL,
  `persediaan_bahan_pembantu` char(13) NOT NULL,
  `biaya_upah_produksi` char(13) NOT NULL,
  `biaya_jasa_maklon` char(13) NOT NULL,
  `biaya_biaya_listrik` char(13) NOT NULL,
  `biaya_penyusutan_inv_pabrik` char(13) NOT NULL,
  `biaya_pr_mesin` char(13) NOT NULL,
  `biaya_perlengkapan_pabrik` char(13) NOT NULL,
  `biaya_lain` char(13) NOT NULL,
  `persediaan_gd3` char(13) NOT NULL,
  `umjual` char(13) NOT NULL,
  `piutang` char(13) NOT NULL,
  `penjualan` char(13) NOT NULL,
  `ppnkeluar` char(13) NOT NULL,
  `ongkirjual` char(13) NOT NULL,
  `hpp` char(13) NOT NULL,
  `retur_penjualan` char(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jurnal_referensi`
--

INSERT INTO `jurnal_referensi` (`id`, `kas`, `bank`, `umbeli`, `hutang`, `persediaan`, `ppnmasuk`, `ongkirbeli`, `persediaan_in_transit`, `persediaan_gd1`, `persediaan_gd2`, `persediaan_brg_jadi`, `persediaan_bahan_baku_dlm_proses`, `persediaan_bahan_pembantu`, `biaya_upah_produksi`, `biaya_jasa_maklon`, `biaya_biaya_listrik`, `biaya_penyusutan_inv_pabrik`, `biaya_pr_mesin`, `biaya_perlengkapan_pabrik`, `biaya_lain`, `persediaan_gd3`, `umjual`, `piutang`, `penjualan`, `ppnkeluar`, `ongkirjual`, `hpp`, `retur_penjualan`) VALUES
(1, '100.101', '100.102', '104.120', '401.000', '103.100', '104.100', '700.130', '103.100', '103.101', '103.100', '300.321', '104.101', '103.120', '401.000', '104.101', '100.000', '100.100', '100.000', '100.000', '100.000', '100.000', '600.101', '100.103', '500.000', '100.000', '300.301', '100.103', '104.100');

-- --------------------------------------------------------

--
-- Table structure for table `label_barcode`
--

DROP TABLE IF EXISTS `label_barcode`;
CREATE TABLE `label_barcode` (
  `id` int(11) NOT NULL,
  `kode_po` varchar(255) NOT NULL,
  `barcode` varchar(255) NOT NULL,
  `harga` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `label_barcode`
--

INSERT INTO `label_barcode` (`id`, `kode_po`, `barcode`, `harga`, `keterangan`, `quantity`, `created_at`, `updated_at`) VALUES
(4, 'PO-004', 'A33', '2', 'awdawdwad', '2', '2019-10-24 08:30:36', NULL),
(5, 'PO-004', 'A33', '2', 'awdawdwad', '2', '2019-10-24 08:30:36', NULL),
(6, 'PO-004', 'A33', '2', 'awdawdwad', '2', '2019-10-24 08:30:37', NULL),
(7, 'PO-003', 'A33', '232', 'adwadsada', '22', '2019-10-24 09:17:38', NULL),
(8, 'PO-003', 'A33', '232', 'adwadsada', '22', '2019-10-24 09:17:38', NULL),
(9, 'PO-002', 'A33', '2', 'dwada', '1', '2019-10-24 09:17:56', NULL),
(10, 'PO-002', 'A33', '2', 'dwada', '1', '2019-10-24 09:17:56', NULL),
(11, 'PO-001', 'A33', '2', 'adawdaw', '12', '2019-10-24 10:12:04', NULL),
(12, 'PO-001', 'A33', '2', 'adawdaw', '12', '2019-10-24 10:12:04', NULL),
(13, 'PO-001', 'A33', '2', 'adawdaw', '12', '2019-10-24 10:12:04', NULL),
(14, 'PO-005', 'A33', '2', 'adwad', '2', '2019-10-24 11:27:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ms_akun`
--

DROP TABLE IF EXISTS `ms_akun`;
CREATE TABLE `ms_akun` (
  `kodeakun` varchar(20) NOT NULL,
  `namaakun` varchar(100) DEFAULT NULL,
  `jenis` char(1) DEFAULT NULL,
  `status` char(1) DEFAULT 'A',
  `kelompok` varchar(20) DEFAULT NULL,
  `akuninduk` varchar(20) DEFAULT NULL,
  `kodecab` char(3) DEFAULT NULL,
  `tx` char(1) DEFAULT 'Y',
  `lvl` int(11) DEFAULT 0,
  `perusahaan` varchar(2) DEFAULT '0',
  `divisi` varchar(2) DEFAULT '0',
  `lrj` char(1) DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ms_akun`
--

INSERT INTO `ms_akun` (`kodeakun`, `namaakun`, `jenis`, `status`, `kelompok`, `akuninduk`, `kodecab`, `tx`, `lvl`, `perusahaan`, `divisi`, `lrj`) VALUES
('100.000', 'AKTIVA', 'D', 'A', NULL, NULL, NULL, 'N', 0, '0', '0', 'N'),
('100.100', 'AKTIVA LANCAR', 'D', 'A', NULL, NULL, NULL, 'N', 0, '0', '0', 'N'),
('100.101', 'Kas', 'D', 'A', 'B', NULL, NULL, 'Y', 0, '0', '0', 'N'),
('100.102', 'Bank BNI', 'D', 'A', 'B', NULL, NULL, 'Y', 0, '0', '0', 'N'),
('100.103', 'Bank BCA', 'D', 'A', 'B', NULL, NULL, 'Y', 0, '0', '0', 'N'),
('100.104', 'Bank Mandiri', 'D', 'A', 'B', NULL, NULL, 'Y', 0, '0', '0', 'N'),
('101.100', 'Piutang Dagang', 'D', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('101.102', 'Piutang Gesek BCA', 'D', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('101.103', 'Piutang Gesek Mandiri', 'D', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('102.100', 'Pajak Dibayar Dimuka', 'D', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('102.101', 'Pajak Dibayar Dimuka PPH 25', 'D', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('102.102', 'Pajak Dibayar Dimuka PPH 22', 'D', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('102.103', 'Pajak Dibayar Dimuka PPH 23', 'D', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('102.110', 'Pajak Dibayar Dimuka PPH Final', 'D', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('102.111', 'Pajak Dibayar Dimuka PPH', 'D', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('103.100', 'Persediaan Barang Dagangan', 'D', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('103.101', 'Persediaan Barang Dagang', 'D', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('103.110', 'PPN Masukan', 'D', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('103.120', 'Pembelian yg blm di FP kan', 'D', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('104.100', 'Biaya Dibayar Dimuka', 'D', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('104.101', 'Sewa Dibayar Dimuka', 'D', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('104.110', 'Biaya Bunga Ditangguhkan', 'D', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('104.120', 'Uang Muka Pembelian', 'D', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('200.000', 'AKTIVA TETAP', 'D', 'A', NULL, NULL, NULL, 'N', 0, '0', '0', 'N'),
('201.100', 'Bangunan', 'D', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('201.101', 'Peralatan', 'D', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('201.200', 'Inventaris Kantor', 'D', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('201.201', 'Inventaris Kendaraan', 'D', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('201.300', 'Akumulasi Penyusutan Kantor', 'D', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('201.301', 'Akumulasi Penyusutan Kendaraan', 'D', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('202.000', 'AKTIVA LAIN LAIN', 'D', 'A', NULL, NULL, NULL, 'N', 0, '0', '0', 'N'),
('300.000', 'PASSIVA', 'K', 'A', NULL, NULL, NULL, 'N', 0, '0', '0', 'N'),
('300.100', 'PASSIVA LANCAR', 'K', 'A', NULL, NULL, NULL, 'N', 0, '0', '0', 'N'),
('300.200', 'Hutang Dagang', 'K', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('300.300', 'Hutang Pajak', 'K', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('300.301', 'Hutang PPH 25', 'K', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('300.302', 'Hutang PPH 21', 'K', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('300.310', 'Hutang PPN', 'K', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('300.311', 'Hutang PPH Final', 'K', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('300.320', 'PPN Keluaran', 'K', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('300.321', 'PPN Keluaran Dibebaskan', 'K', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('300.330', 'Penjualan yg blm di FP kan', 'K', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('400.000', 'Hutang Bank', 'K', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('400.100', 'Hutang Bank BNI', 'K', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('400.200', 'Hutang Leasing', 'K', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('401.000', 'Hutang Lain - Lain', 'K', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('401.100', 'Hutang Lain-Lain', 'K', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('500.000', 'EKUITAS', 'K', 'A', NULL, NULL, NULL, 'N', 0, '0', '0', 'N'),
('500.100', 'Modal', 'K', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('500.110', 'Laba Yang Ditahan', 'K', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('500.520', 'Prive', 'K', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('500.530', 'Laba Rugi Periode Berjalan', 'K', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('600.000', 'PENDAPATAN USAHA', 'K', 'A', NULL, NULL, NULL, 'N', 0, '0', '0', 'N'),
('600.100', 'Penjualan', 'K', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('600.101', 'Uang Muka Penjualan', 'K', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('600.200', 'HARGA POKOK PENJUALAN', 'K', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('600.201', 'HPP', 'K', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('700.000', 'BIAYA - BIAYA USAHA', 'D', 'A', NULL, NULL, NULL, 'N', 0, '0', '0', 'N'),
('700.100', 'Biaya Gaji', 'D', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('700.101', 'Biaya Listrik & Air', 'D', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('700.102', 'Biaya Telepon & Fax', 'D', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('700.103', 'Biaya Kantor', 'D', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('700.104', 'Biaya Alat Tulis Kantor', 'D', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('700.105', 'Biaya Bahan Bakar', 'D', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('700.106', 'Biaya Pemeliharan Bangunan', 'D', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('700.107', 'Biaya Service & Pemeliharaan', 'D', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('700.108', 'Biaya Pajak', 'D', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('700.109', 'Biaya PPH Final Pasal 4 (2)', 'D', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('700.110', 'Biaya Keamanan', 'D', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('700.111', 'Biaya Parkir & Tol', 'D', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('700.112', 'Biaya Penyusutan Inventaris Kantor', 'D', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('700.113', 'Biaya Penyusutan Inventaris Kendaraan', 'D', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('700.114', 'Biaya Asuransi', 'D', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('700.115', 'Biaya Pengobatan', 'D', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('700.116', 'Biaya Perlengkapan', 'D', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('700.117', 'Biaya Transport', 'D', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('700.118', 'Biaya Perjalanan Dinas', 'D', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('700.119', 'Biaya Materai', 'D', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('700.120', 'Biaya Kliring', 'D', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('700.121', 'Biaya Paket', 'D', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('700.122', 'Biaya Pengiriman', 'D', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('700.123', 'Biaya Kendaraan', 'D', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('700.124', 'Biaya KB-KB', 'D', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('700.130', 'Biaya Lain - Lain', 'D', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('700.131', 'Biaya Sewa', 'D', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('700.200', 'BIAYA LAIN - LAINNYA (Diluar Usaha)', 'D', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('700.201', 'Biaya Administrasi Bank', 'D', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('700.210', 'Pajak Bunga', 'D', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('700.211', 'Biaya Bunga', 'D', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('700.300', 'BIAYA LAIN-LAIN', 'D', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('700.310', 'Kerugian Lain - Lain', 'D', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('800.000', 'PENDAPATAN LAIN-LAIN', 'K', 'A', NULL, NULL, NULL, 'N', 0, '0', '0', 'N'),
('800.100', 'Pendapatan Lain -Lain', 'K', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('800.110', 'Pendapatan Bunga', 'K', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N'),
('800.120', 'Pendapatan Jasa Giro', 'K', 'A', NULL, NULL, NULL, 'Y', 0, '0', '0', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `order_gudang`
--

DROP TABLE IF EXISTS `order_gudang`;
CREATE TABLE `order_gudang` (
  `nomor_order` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `nomor_so` varchar(255) NOT NULL,
  `kode_customer` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_gudang`
--

INSERT INTO `order_gudang` (`nomor_order`, `tanggal`, `nomor_so`, `kode_customer`, `keterangan`, `total`, `created_at`, `updated_at`) VALUES
('Order-001', '2019-10-05', 'SO-002', 'CST-001', 'adwad', '6', '2019-10-05 16:10:47', '2019-10-12 17:35:47'),
('Order-002', '2019-10-17', 'SO-003', 'CST-001', 'yay', '26', '2019-10-12 17:04:03', '2019-10-12 17:42:44'),
('Order-003', '2019-10-25', 'SO-003', 'CST-001', 'dd', '23', '2019-10-28 08:54:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_gudang_item`
--

DROP TABLE IF EXISTS `order_gudang_item`;
CREATE TABLE `order_gudang_item` (
  `id` int(11) NOT NULL,
  `nomor_order` varchar(255) NOT NULL,
  `barcode` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_gudang_item`
--

INSERT INTO `order_gudang_item` (`id`, `nomor_order`, `barcode`, `quantity`, `created_at`, `updated_at`) VALUES
(10, 'Order-001', 'A33', '3', '2019-10-12 17:35:47', NULL),
(11, 'Order-001', '2', '3', '2019-10-12 17:35:47', NULL),
(20, 'Order-002', 'A33', '22', '2019-10-12 17:42:44', NULL),
(21, 'Order-002', '3', '4', '2019-10-12 17:42:44', NULL),
(22, 'Order-003', 'A33', '23', '2019-10-28 08:54:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `packing`
--

DROP TABLE IF EXISTS `packing`;
CREATE TABLE `packing` (
  `nomor_packing` varchar(255) NOT NULL,
  `kode_customer` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `total` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packing`
--

INSERT INTO `packing` (`nomor_packing`, `kode_customer`, `tanggal`, `total`, `created_at`, `updated_at`) VALUES
('Pack-001', 'CST-001', '2019-10-17', '15', '2019-10-17 11:27:40', '2019-10-17 11:27:55'),
('Pack-002', 'CST-001', '2019-10-30', '4', '2019-10-31 01:20:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `packing_item`
--

DROP TABLE IF EXISTS `packing_item`;
CREATE TABLE `packing_item` (
  `id` int(11) NOT NULL,
  `nomor_packing` varchar(255) NOT NULL,
  `id_picking_item` int(11) NOT NULL,
  `quantity_packing` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packing_item`
--

INSERT INTO `packing_item` (`id`, `nomor_packing`, `id_picking_item`, `quantity_packing`, `created_at`, `updated_at`) VALUES
(11, 'Pack-001', 10, 2, '2019-10-17 11:27:39', '2019-10-17 11:27:55'),
(12, 'Pack-001', 9, 1, '2019-10-17 11:27:40', NULL),
(13, 'Pack-001', 8, 3, '2019-10-17 11:27:40', NULL),
(14, 'Pack-001', 7, 3, '2019-10-17 11:27:40', NULL),
(15, 'Pack-001', 6, 3, '2019-10-17 11:27:40', NULL),
(16, 'Pack-001', 5, 3, '2019-10-17 11:27:40', NULL),
(17, 'Pack-002', 8, 3, '2019-10-31 01:20:09', NULL),
(18, 'Pack-002', 9, 1, '2019-10-31 01:20:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

DROP TABLE IF EXISTS `pelanggan`;
CREATE TABLE `pelanggan` (
  `id` int(11) NOT NULL,
  `kode` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `kota` varchar(255) NOT NULL,
  `kodepos` varchar(255) NOT NULL,
  `no_telepon` varchar(255) NOT NULL,
  `no_handphone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id`, `kode`, `tanggal`, `nama`, `alamat`, `kota`, `kodepos`, `no_telepon`, `no_handphone`) VALUES
(3, '123456', '2019-08-05', 'Wulan Suci N.', 'Boja', 'Semarang', '09876', '02409090', '0899812020'),
(4, '111111', '2019-08-06', 'Idrus Gymnas Tiar', 'Pedurungan', 'Semarang', '50140', '024765987', '081234987623');

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_perubahan_harga`
--

DROP TABLE IF EXISTS `pengajuan_perubahan_harga`;
CREATE TABLE `pengajuan_perubahan_harga` (
  `nomor_pengajuan` varchar(255) NOT NULL,
  `tipe_customer` varchar(255) NOT NULL,
  `tanggal_approve` date DEFAULT NULL,
  `tanggal_pengajuan` date NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'belum_approve',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengajuan_perubahan_harga`
--

INSERT INTO `pengajuan_perubahan_harga` (`nomor_pengajuan`, `tipe_customer`, `tanggal_approve`, `tanggal_pengajuan`, `keterangan`, `status`, `created_at`, `updated_at`) VALUES
('PH-001', '3', '2019-10-01', '2019-10-09', 'approev', 'approve', '2019-10-01 12:17:46', '2019-10-01 14:08:24'),
('PH-002', '2', '2019-10-01', '2019-10-05', 'aod', 'batal', '2019-10-01 13:09:53', '2019-10-01 14:08:25');

-- --------------------------------------------------------

--
-- Table structure for table `picking`
--

DROP TABLE IF EXISTS `picking`;
CREATE TABLE `picking` (
  `nomor_picking` varchar(255) NOT NULL,
  `nomor_order` varchar(255) NOT NULL,
  `kode_customer` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `picking`
--

INSERT INTO `picking` (`nomor_picking`, `nomor_order`, `kode_customer`, `status`, `total`, `tanggal`, `created_at`, `updated_at`) VALUES
('Pick-001', 'Order-001', 'CST-001', 'Selesai', '6', '2019-10-17', '2019-10-12 20:44:11', '2019-10-14 13:19:41'),
('Pick-002', 'Order-001', 'CST-001', 'Selesai', '6', '2019-10-23', '2019-10-12 20:44:38', '2019-10-31 01:19:32'),
('Pick-003', 'Order-002', 'CST-001', 'Proses', '5', '2019-10-18', '2019-10-14 09:18:39', '2019-10-15 07:45:21');

-- --------------------------------------------------------

--
-- Table structure for table `picking_item`
--

DROP TABLE IF EXISTS `picking_item`;
CREATE TABLE `picking_item` (
  `id` int(11) NOT NULL,
  `nomor_picking` varchar(255) NOT NULL,
  `barcode` varchar(255) NOT NULL,
  `id_order_item` varchar(255) NOT NULL,
  `quantity_picking` varchar(255) NOT NULL,
  `quantity_packing` varchar(255) NOT NULL DEFAULT '0',
  `quantity_order` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `picking_item`
--

INSERT INTO `picking_item` (`id`, `nomor_picking`, `barcode`, `id_order_item`, `quantity_picking`, `quantity_packing`, `quantity_order`, `created_at`, `updated_at`) VALUES
(5, 'Pick-001', 'A33', '10', '3', '3', '3', '2019-10-12 20:42:53', '2019-10-17 11:27:40'),
(6, 'Pick-001', '2', '11', '3', '3', '3', '2019-10-12 20:42:53', '2019-10-17 11:27:40'),
(7, 'Pick-002', 'A33', '10', '3', '3', '3', '2019-10-12 20:44:37', '2019-10-17 11:27:40'),
(8, 'Pick-002', '2', '11', '3', '3', '3', '2019-10-12 20:44:37', '2019-10-17 11:27:40'),
(9, 'Pick-003', 'A33', '20', '1', '1', '22', '2019-10-14 09:18:38', '2019-10-17 11:27:40'),
(10, 'Pick-003', '3', '21', '4', '2', '4', '2019-10-14 09:18:39', '2019-10-17 11:27:55');

-- --------------------------------------------------------

--
-- Table structure for table `pph_item`
--

DROP TABLE IF EXISTS `pph_item`;
CREATE TABLE `pph_item` (
  `nomor_pengajuan` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `tipe_customer` varchar(255) NOT NULL,
  `barcode_inventory` varchar(255) NOT NULL,
  `harga_jual_lama` varchar(255) NOT NULL,
  `harga_jual_baru` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pph_item`
--

INSERT INTO `pph_item` (`nomor_pengajuan`, `tanggal`, `tipe_customer`, `barcode_inventory`, `harga_jual_lama`, `harga_jual_baru`, `quantity`, `keterangan`, `created_at`, `updated_at`) VALUES
('PH-001', '2019-10-09', '3', 'A33', '6000', '6500', '2', 'Oke', '2019-10-01 12:17:46', NULL),
('PH-002', '2019-10-05', '2', 'A33', '14000', '12000', '11', 'idk', '2019-10-01 13:09:53', NULL),
('PH-002', '2019-10-05', '2', 'A33', '10000', '9000', '4', 'wakaranai', '2019-10-01 13:09:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profil`
--

DROP TABLE IF EXISTS `profil`;
CREATE TABLE `profil` (
  `id` int(60) NOT NULL,
  `kode_cabang` varchar(255) NOT NULL,
  `nama_cabang` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `alamat2` varchar(255) NOT NULL,
  `kota` varchar(255) NOT NULL,
  `kodepos` varchar(255) NOT NULL,
  `no_telp` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `chief` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profil`
--

INSERT INTO `profil` (`id`, `kode_cabang`, `nama_cabang`, `alamat`, `alamat2`, `kota`, `kodepos`, `no_telp`, `no_hp`, `chief`, `logo`) VALUES
(1, '384', 'Kartonyono', 'jl. mulawarman 11', 'RT 01 RW 12', 'Ngawi', '53456', '02414752737', '08245465637', 'Latip', '100ox.png');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order`
--

DROP TABLE IF EXISTS `purchase_order`;
CREATE TABLE `purchase_order` (
  `kode` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `tanggal_approve` date DEFAULT NULL,
  `kode_supplier` varchar(255) NOT NULL,
  `nama_supplier` varchar(255) NOT NULL,
  `alamat_supplier` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `kota` varchar(255) NOT NULL,
  `kodepos` varchar(255) NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `handphone` varchar(255) NOT NULL,
  `dpp` varchar(255) NOT NULL,
  `tipe_ppn` varchar(2) DEFAULT NULL,
  `tipe_ppn_input` varchar(255) NOT NULL,
  `total_harga` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `keterangan_approve` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'Belum Approve',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_order`
--

INSERT INTO `purchase_order` (`kode`, `tanggal`, `tanggal_approve`, `kode_supplier`, `nama_supplier`, `alamat_supplier`, `nama`, `alamat`, `kota`, `kodepos`, `telepon`, `handphone`, `dpp`, `tipe_ppn`, `tipe_ppn_input`, `total_harga`, `keterangan`, `keterangan_approve`, `status`, `created_at`, `updated_at`) VALUES
('PO-001', '2019-10-15', '2019-10-24', 'SP-001', 'Hanif Setyananda', 'Jl. Basudewo 1086C\r\nJl. Kanguru Raya No. 2 AB', 'Kartonyono', 'jl. mulawarman 11', 'Ngawi', '53456', '02414752737', '08245465637', '12000', 'I', '1090.91', '7948.09', 'AWOKKOA', '', 'Approve', '2019-10-04 08:20:18', '2019-10-24 11:28:43'),
('PO-002', '2019-10-16', '2019-10-24', 'SP-001', 'Hanif Setyananda', 'Jl. Basudewo 1086C\r\nJl. Kanguru Raya No. 2 AB', 'Kartonyono', 'jl. mulawarman 11', 'Ngawi', '53456', '02414752737', '08245465637', '92', 'T', '0', '92', 'adwadwad', '', 'Approve', '2019-10-24 08:18:31', '2019-10-24 11:28:43'),
('PO-003', '2019-10-05', '2019-10-24', 'SP-001', 'Hanif Setyananda', 'Jl. Basudewo 1086C\r\nJl. Kanguru Raya No. 2 AB', 'Kartonyono', 'jl. mulawarman 11', 'Ngawi', '53456', '02414752737', '08245465637', '16', 'T', '0', '16', 'adwadad', '', 'Approve', '2019-10-24 08:28:57', '2019-10-24 11:28:44'),
('PO-004', '2019-10-11', '2019-10-24', 'SP-001', 'Hanif Setyananda', 'Jl. Basudewo 1086C\r\nJl. Kanguru Raya No. 2 AB', 'Kartonyono', 'jl. mulawarman 11', 'Ngawi', '53456', '02414752737', '08245465637', '2155744', 'T', '0', '2155744', 'adwad', '', 'Approve', '2019-10-24 08:30:36', '2019-10-24 11:28:44'),
('PO-005', '2019-10-12', '2019-10-24', 'SP-001', 'Hanif Setyananda', 'Jl. Basudewo 1086C\r\nJl. Kanguru Raya No. 2 AB', 'Kartonyono', 'jl. mulawarman 11', 'Ngawi', '53456', '02414752737', '08245465637', '56000', 'T', '0', '56000', 'adwadwad', 'ter approve', 'Approve', '2019-10-24 11:27:50', '2019-10-24 11:28:44'),
('PO-006', '2019-10-26', NULL, 'SP-001', 'Hanif Setyananda', 'Jl. Basudewo 1086C\r\nJl. Kanguru Raya No. 2 AB', 'Kartonyono', 'jl. mulawarman 11', 'Ngawi', '53456', '02414752737', '08245465637', '373296', 'T', '0', '159984.00', 'awwwa', NULL, 'Belum Approve', '2019-10-29 08:44:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_item`
--

DROP TABLE IF EXISTS `purchase_order_item`;
CREATE TABLE `purchase_order_item` (
  `id` int(11) NOT NULL,
  `kode_po` varchar(255) NOT NULL,
  `barcode_inventory` varchar(255) NOT NULL,
  `kode_item_supplier` varchar(255) DEFAULT NULL,
  `nama_inventory` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `harga_satuan` varchar(255) NOT NULL,
  `satuan` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_order_item`
--

INSERT INTO `purchase_order_item` (`id`, `kode_po`, `barcode_inventory`, `kode_item_supplier`, `nama_inventory`, `quantity`, `harga_satuan`, `satuan`, `created_at`, `updated_at`) VALUES
(10, 'PO-004', '2', 'aawdasd', 'Priz', '232', '2323', '7', '2019-10-24 08:30:36', NULL),
(11, 'PO-004', '2', 'aawdasd', 'Priz', '232', '2323', '7', '2019-10-24 08:30:36', NULL),
(12, 'PO-004', '2', 'aawdasd', 'Priz', '232', '2323', '7', '2019-10-24 08:30:36', NULL),
(13, 'PO-004', '2', 'aawdasd', 'Priz', '232', '2323', '7', '2019-10-24 08:30:36', NULL),
(14, 'PO-003', 'A33', '4', 'Sepatu', '2', '2', '', '2019-10-24 09:17:37', NULL),
(15, 'PO-003', 'A33', '4', 'Sepatu', '2', '2', '', '2019-10-24 09:17:38', NULL),
(16, 'PO-003', 'A33', '4', 'Sepatu', '2', '2', '', '2019-10-24 09:17:38', NULL),
(17, 'PO-003', 'A33', '4', 'Sepatu', '2', '2', '', '2019-10-24 09:17:38', NULL),
(18, 'PO-002', 'A33', '2', 'Sepatu', '23', '2', '', '2019-10-24 09:17:56', NULL),
(19, 'PO-002', 'A33', '2', 'Sepatu', '23', '2', '', '2019-10-24 09:17:56', NULL),
(20, 'PO-001', 'A33', '23', 'Sepatu', '23', '131', '', '2019-10-24 10:12:03', NULL),
(21, 'PO-001', 'A33', '23', 'Sepatu', '23', '131', '', '2019-10-24 10:12:03', NULL),
(22, 'PO-001', 'A33', '23', 'Sepatu', '23', '131', '', '2019-10-24 10:12:04', NULL),
(23, 'PO-005', '2', '44', 'Priz', '15', '2000', '7', '2019-10-24 11:27:50', NULL),
(24, 'PO-005', '3', '12', 'Randu', '13', '2000', '6', '2019-10-24 11:27:50', NULL),
(25, 'PO-006', 'A33', '232', 'Sepatu', '22', '2424', '4', '2019-10-29 08:44:03', NULL),
(26, 'PO-006', 'A33', '232', 'Sepatu', '22', '2424', '4', '2019-10-29 08:44:03', NULL),
(27, 'PO-006', 'A33', '232', 'Sepatu', '22', '2424', '4', '2019-10-29 08:44:03', NULL),
(28, 'PO-006', 'A33', '232', 'Sepatu', '22', '2424', '4', '2019-10-29 08:44:03', NULL),
(29, 'PO-006', 'A33', '232', 'Sepatu', '22', '2424', '4', '2019-10-29 08:44:03', NULL),
(30, 'PO-006', 'A33', '232', 'Sepatu', '22', '2424', '4', '2019-10-29 08:44:03', NULL),
(31, 'PO-006', 'A33', '232', 'Sepatu', '22', '2424', '4', '2019-10-29 08:44:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchasing`
--

DROP TABLE IF EXISTS `purchasing`;
CREATE TABLE `purchasing` (
  `kode` varchar(255) NOT NULL,
  `nomor_surat_jalan` varchar(255) NOT NULL,
  `kode_supplier` varchar(255) NOT NULL,
  `diterima_oleh` varchar(255) NOT NULL,
  `tanggal_terima` date NOT NULL,
  `tanggal_jatuh_tempo` date NOT NULL,
  `total_quantity` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchasing`
--

INSERT INTO `purchasing` (`kode`, `nomor_surat_jalan`, `kode_supplier`, `diterima_oleh`, `tanggal_terima`, `tanggal_jatuh_tempo`, `total_quantity`, `created_at`, `updated_at`) VALUES
('INV-001', 'SJ-001', 'SP-001', 'Rendi', '2019-10-23', '2019-10-18', '28', '2019-10-24 11:30:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchasing_item`
--

DROP TABLE IF EXISTS `purchasing_item`;
CREATE TABLE `purchasing_item` (
  `id` int(11) NOT NULL,
  `kode_pu` varchar(255) NOT NULL,
  `barcode` varchar(255) NOT NULL,
  `quantity_order` varchar(255) NOT NULL,
  `quantity_terima` varchar(255) NOT NULL,
  `harga_satuan` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchasing_item`
--

INSERT INTO `purchasing_item` (`id`, `kode_pu`, `barcode`, `quantity_order`, `quantity_terima`, `harga_satuan`, `created_at`, `updated_at`) VALUES
(1, 'INV-001', '2', '15', '15', '2000', '2019-10-24 11:30:15', NULL),
(2, 'INV-001', '3', '13', '13', '2000', '2019-10-24 11:30:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales_invoice`
--

DROP TABLE IF EXISTS `sales_invoice`;
CREATE TABLE `sales_invoice` (
  `nomor_invoice` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `kode_customer` varchar(255) NOT NULL,
  `data` text NOT NULL,
  `catatan` text NOT NULL,
  `surat_jalan` int(1) NOT NULL DEFAULT 0,
  `kwitansi` int(1) NOT NULL DEFAULT 0,
  `subtotal` varchar(255) NOT NULL,
  `ongkir` varchar(255) NOT NULL,
  `ppn` varchar(255) NOT NULL,
  `tipe_ppn` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_invoice`
--

INSERT INTO `sales_invoice` (`nomor_invoice`, `tanggal`, `kode_customer`, `data`, `catatan`, `surat_jalan`, `kwitansi`, `subtotal`, `ongkir`, `ppn`, `tipe_ppn`, `total`, `created_at`, `updated_at`) VALUES
('IVC-001', '2019-11-01', 'CST-001', '[\"Pack-001\"]', 'sadijdsaij', 1, 1, '228000', '222', '22800', 'e', '251022', '2019-11-01 08:18:29', NULL),
('IVC-002', '2019-11-20', 'CST-001', '[\"Pack-001\"]', 'oksadoksadoksa', 1, 1, '228000', '22', '20727', 'i', '248749', '2019-11-01 08:20:14', NULL),
('IVC-003', '2019-11-20', 'CST-001', '[\"Pack-001\"]', 'jiosadjidawojwadjio', 1, 1, '228000', '2020', '22800', 'e', '252820', '2019-11-01 08:21:20', NULL),
('IVC-004', '2019-11-20', 'CST-001', '[\"Pack-002\"]', 'sajidasjidsa', 1, 1, '65000', '202020', '5909', 'i', '272929', '2019-11-01 08:25:15', NULL),
('IVC-005', '2019-11-26', 'CST-001', '[\"Pack-001\"]', 'sadijasjidasji', 0, 1, '228000', '02020', '20727', 'i', '250747', '2019-11-01 08:28:12', NULL),
('IVC-006', '2019-11-28', 'CST-001', '[\"Pack-001\"]', 'osasadjsdaijsadjisdidsa', 1, 1, '228000', '2222', '20727', 'i', '250949', '2019-11-01 08:33:10', NULL),
('IVC-007', '2019-11-06', 'CST-001', '[\"Pack-002\"]', 'ijsjasjisd', 1, 1, '65000', '222', '5909', 'i', '71131', '2019-11-01 08:38:35', NULL),
('IVC-008', '2019-11-29', 'CST-001', '[\"Pack-002\"]', 'sidoaokdas', 1, 0, '65000', '9292', '6500', 'e', '80792', '2019-11-01 08:39:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales_order`
--

DROP TABLE IF EXISTS `sales_order`;
CREATE TABLE `sales_order` (
  `nomor_so` varchar(255) NOT NULL,
  `tanggal_so` date NOT NULL,
  `kode_customer` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_order`
--

INSERT INTO `sales_order` (`nomor_so`, `tanggal_so`, `kode_customer`, `keterangan`, `total`, `created_at`, `updated_at`) VALUES
('SO-001', '2019-10-01', 'CST-001', 'Lve', '55', '2019-10-03 09:32:20', '2019-10-03 11:25:13'),
('SO-002', '2019-10-01', 'CST-001', 'ww', '11', '2019-10-03 14:18:54', '2019-10-03 14:20:56'),
('SO-003', '2019-10-09', 'CST-001', 'asdawdwad', '66', '2019-10-03 14:20:44', NULL),
('SO-004', '2019-10-18', 'CST-001', 'adwad', '8', '2019-10-04 10:42:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_item`
--

DROP TABLE IF EXISTS `sales_order_item`;
CREATE TABLE `sales_order_item` (
  `id` int(11) NOT NULL,
  `nomor_so` varchar(255) NOT NULL,
  `barcode` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_order_item`
--

INSERT INTO `sales_order_item` (`id`, `nomor_so`, `barcode`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 'SO-001', 'A33', '55', '2019-10-03 11:25:14', NULL),
(2, 'SO-003', 'A33', '22', '2019-10-03 14:20:44', NULL),
(3, 'SO-003', 'A33', '44', '2019-10-03 14:20:45', NULL),
(4, 'SO-002', 'A33', '2', '2019-10-03 14:20:56', NULL),
(5, 'SO-002', 'A33', '4', '2019-10-03 14:20:56', NULL),
(6, 'SO-002', 'A33', '5', '2019-10-03 14:20:56', NULL),
(7, 'SO-004', 'A33', '2', '2019-10-04 10:42:47', NULL),
(8, 'SO-004', 'A33', '2', '2019-10-04 10:42:47', NULL),
(9, 'SO-004', 'A33', '2', '2019-10-04 10:42:47', NULL),
(10, 'SO-004', 'A33', '2', '2019-10-04 10:42:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `satuan`
--

DROP TABLE IF EXISTS `satuan`;
CREATE TABLE `satuan` (
  `id` int(11) NOT NULL,
  `satuan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `satuan`
--

INSERT INTO `satuan` (`id`, `satuan`) VALUES
(4, 'Pcs'),
(5, 'Lusin'),
(6, 'Gram'),
(7, 'Kilogram');

-- --------------------------------------------------------

--
-- Table structure for table `stock_opname`
--

DROP TABLE IF EXISTS `stock_opname`;
CREATE TABLE `stock_opname` (
  `id` varchar(255) NOT NULL,
  `barcode_inventory` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier` (
  `kode` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `kota` varchar(255) NOT NULL,
  `kodepos` varchar(255) NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `fax` varchar(255) NOT NULL,
  `handphone` varchar(255) NOT NULL,
  `contact_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `kredit` varchar(255) NOT NULL,
  `top` varchar(255) NOT NULL,
  `pkp` varchar(2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`kode`, `nama`, `alamat`, `kota`, `kodepos`, `telepon`, `fax`, `handphone`, `contact_name`, `email`, `kredit`, `top`, `pkp`, `created_at`, `updated_at`) VALUES
('SP-001', 'Hanif Setyananda', 'Jl. Basudewo 1086C\r\nJl. Kanguru Raya No. 2 AB', 'Semarang', '50246', '222', '1', '2222', 'Hanif', 'hanifsetyananda17@gmail.com', 'wadad', '121313', 'Y', '2019-09-21 00:19:02', '2019-10-01 20:11:29'),
('SP-002', 'Nanda', 'Jl. Klipang Raya 2002', 'Semarang', '5003', '08959904423', '7790', 'Gtau', 'Nanda Reynaldi', 'nanda.reynaldi@gmail.com', '58882', '99992', 'Y', '2019-09-21 04:47:28', '2019-10-01 20:11:42');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_saldo`
--

DROP TABLE IF EXISTS `supplier_saldo`;
CREATE TABLE `supplier_saldo` (
  `id` int(11) NOT NULL,
  `kode_supplier` varchar(255) NOT NULL,
  `nama_supplier` varchar(255) NOT NULL,
  `saldo_awal` varchar(255) NOT NULL,
  `saldo_jalan` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tipe_barang`
--

DROP TABLE IF EXISTS `tipe_barang`;
CREATE TABLE `tipe_barang` (
  `id` int(11) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tipe_barang`
--

INSERT INTO `tipe_barang` (`id`, `nama_barang`, `created_at`, `update_at`) VALUES
(6, 'Barang Langka', '2019-09-30 21:19:40', NULL),
(7, 'Barang Biasa', '2019-09-30 21:19:44', NULL),
(8, 'Barang Rare', '2019-09-30 21:19:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tr_jurnal`
--

DROP TABLE IF EXISTS `tr_jurnal`;
CREATE TABLE `tr_jurnal` (
  `nomor` int(11) NOT NULL,
  `noref` varchar(20) NOT NULL,
  `novoucher` varchar(20) NOT NULL,
  `nourut` int(11) NOT NULL,
  `kodeakun` varchar(20) NOT NULL,
  `debet` double(15,2) NOT NULL,
  `kredit` double(15,2) NOT NULL,
  `keterangan` varchar(225) NOT NULL,
  `tanggal` date NOT NULL,
  `jenis` char(2) NOT NULL,
  `posted` char(1) NOT NULL,
  `kodecbg` char(3) NOT NULL,
  `userid` varchar(20) NOT NULL,
  `tglrekam` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `wbs` varchar(10) NOT NULL,
  `useredit` varchar(20) NOT NULL,
  `tgledit` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `statusid` int(11) NOT NULL,
  `ket` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tr_jurnal`
--

INSERT INTO `tr_jurnal` (`nomor`, `noref`, `novoucher`, `nourut`, `kodeakun`, `debet`, `kredit`, `keterangan`, `tanggal`, `jenis`, `posted`, `kodecbg`, `userid`, `tglrekam`, `wbs`, `useredit`, `tgledit`, `statusid`, `ket`) VALUES
(17, '', '123456', 1, '401.000', 0.00, 30000.00, 'Hutang beli dg PO', '2019-10-16', 'JK', 'T', '1', 'procurement', '2019-10-16 00:00:00', '', '', '0000-00-00 00:00:00', 0, ''),
(18, '', '123456', 2, '103.100', 27500.00, 0.00, 'Persediaan PU dg PO', '2019-10-16', 'JK', 'T', '1', 'procurement', '2019-10-16 00:00:00', '', '', '0000-00-00 00:00:00', 0, ''),
(19, '', '123456', 4, '700.130', 2500.00, 0.00, 'Ongkir PU dg PO', '2019-10-16', 'JK', 'T', '1', 'procurement', '2019-10-16 00:00:00', '', '', '0000-00-00 00:00:00', 0, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `diskon_barang_reject`
--
ALTER TABLE `diskon_barang_reject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jurnal_referensi`
--
ALTER TABLE `jurnal_referensi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `label_barcode`
--
ALTER TABLE `label_barcode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ms_akun`
--
ALTER TABLE `ms_akun`
  ADD PRIMARY KEY (`kodeakun`);

--
-- Indexes for table `order_gudang`
--
ALTER TABLE `order_gudang`
  ADD PRIMARY KEY (`nomor_order`);

--
-- Indexes for table `order_gudang_item`
--
ALTER TABLE `order_gudang_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packing`
--
ALTER TABLE `packing`
  ADD PRIMARY KEY (`nomor_packing`);

--
-- Indexes for table `packing_item`
--
ALTER TABLE `packing_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengajuan_perubahan_harga`
--
ALTER TABLE `pengajuan_perubahan_harga`
  ADD PRIMARY KEY (`nomor_pengajuan`);

--
-- Indexes for table `picking`
--
ALTER TABLE `picking`
  ADD PRIMARY KEY (`nomor_picking`);

--
-- Indexes for table `picking_item`
--
ALTER TABLE `picking_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_order`
--
ALTER TABLE `purchase_order`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `purchase_order_item`
--
ALTER TABLE `purchase_order_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchasing`
--
ALTER TABLE `purchasing`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `purchasing_item`
--
ALTER TABLE `purchasing_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_invoice`
--
ALTER TABLE `sales_invoice`
  ADD PRIMARY KEY (`nomor_invoice`);

--
-- Indexes for table `sales_order`
--
ALTER TABLE `sales_order`
  ADD PRIMARY KEY (`nomor_so`);

--
-- Indexes for table `sales_order_item`
--
ALTER TABLE `sales_order_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `satuan`
--
ALTER TABLE `satuan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `supplier_saldo`
--
ALTER TABLE `supplier_saldo`
  ADD KEY `id` (`id`);

--
-- Indexes for table `tipe_barang`
--
ALTER TABLE `tipe_barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tr_jurnal`
--
ALTER TABLE `tr_jurnal`
  ADD PRIMARY KEY (`nomor`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `diskon_barang_reject`
--
ALTER TABLE `diskon_barang_reject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `jurnal_referensi`
--
ALTER TABLE `jurnal_referensi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `label_barcode`
--
ALTER TABLE `label_barcode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `order_gudang_item`
--
ALTER TABLE `order_gudang_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `packing_item`
--
ALTER TABLE `packing_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `picking_item`
--
ALTER TABLE `picking_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `profil`
--
ALTER TABLE `profil`
  MODIFY `id` int(60) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `purchase_order_item`
--
ALTER TABLE `purchase_order_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `purchasing_item`
--
ALTER TABLE `purchasing_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sales_order_item`
--
ALTER TABLE `sales_order_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `satuan`
--
ALTER TABLE `satuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `supplier_saldo`
--
ALTER TABLE `supplier_saldo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tipe_barang`
--
ALTER TABLE `tipe_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tr_jurnal`
--
ALTER TABLE `tr_jurnal`
  MODIFY `nomor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
