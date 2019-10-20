-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2019 at 06:32 AM
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
(6, '2', 'Priz', '7', '7', '4000', '3000', '2500', '0', '2019-10-04 08:23:42', '2019-10-13 14:34:25'),
(7, '3', 'Randu', '6', '8', '7000', '6000', '5000', '0', '2019-10-04 08:23:58', '2019-10-13 14:34:27'),
(8, '5', 'w', '4', '8', '2000', '2000', '3000', '0', '2019-10-07 13:48:15', '2019-10-13 14:34:29');

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
('Order-002', '2019-10-17', 'SO-003', 'CST-001', 'yay', '26', '2019-10-12 17:04:03', '2019-10-12 17:42:44');

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
(21, 'Order-002', '3', '4', '2019-10-12 17:42:44', NULL);

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
(1, '384', 'Kartonyono', 'jl. mulawarman 11', 'RT 01 RW 12', 'Ngawi', '53456', '02414752737', '08245465637', 'Latip', '12092019095608photo.jpg');

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
('PO-001', '2019-10-15', NULL, 'SP-001', 'Hanif Setyananda', 'Jl. Basudewo 1086C\r\nJl. Kanguru Raya No. 2 AB', 'Kartonyono', 'jl. mulawarman 11', 'Ngawi', '53456', '02414752737', '08245465637', '12000', 'I', '1090.91', '7948.09', 'AWOKKOA', NULL, 'Belum Approve', '2019-10-04 08:20:18', NULL);

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
(1, 'PO-001', 'A33', '23', 'Sepatu', '23', '131', '4', '2019-10-04 08:20:18', NULL),
(2, 'PO-001', 'A33', '23', 'Sepatu', '23', '131', '4', '2019-10-04 08:20:19', NULL),
(3, 'PO-001', 'A33', '23', 'Sepatu', '23', '131', '4', '2019-10-04 08:20:19', NULL);

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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_gudang_item`
--
ALTER TABLE `order_gudang_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `profil`
--
ALTER TABLE `profil`
  MODIFY `id` int(60) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `purchase_order_item`
--
ALTER TABLE `purchase_order_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `purchasing_item`
--
ALTER TABLE `purchasing_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
