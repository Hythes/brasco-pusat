-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2019 at 01:43 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `brasco_pusat`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

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
('CST-001          ', 'Hanif', 'okok', 'shitawss', '2222', '20002', 'uyoo', '02020202', '20202020', '1', 'Y', 'Iwi', 'hanifsetyananda17@gmail.com', 'kodeee', '2000', 'gatau', '2019-09-06', '2000', '30000', 'i like turtless', '2019-09-20 06:10:54', '2019-09-24 08:10:19');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(11) NOT NULL,
  `barcode` varchar(255) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `satuan` varchar(255) NOT NULL,
  `id_tipe_barang` varchar(255) NOT NULL,
  `harga_jual1` varchar(255) NOT NULL,
  `harga_jual2` varchar(255) NOT NULL,
  `harga_jual3` varchar(255) NOT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `barcode`, `nama_barang`, `satuan`, `id_tipe_barang`, `harga_jual1`, `harga_jual2`, `harga_jual3`, `quantity`, `created_at`, `update_at`) VALUES
(2, 'A33', 'Sepatu', '4', '6', '14000', '10000', '6500', '2', '2019-09-30 14:25:46', '2019-10-01 07:08:25'),
(3, 'A23', 'Baju', '4', '7', '50000', '40000', '45000', NULL, '2019-10-01 14:06:24', NULL),
(4, 'A13', 'Celana', '4', '8', '75000', '78000', '60000', NULL, '2019-10-01 14:07:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

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
('PH-001', '3', '2019-10-01', '2019-10-09', 'approev', 'approve', '2019-10-01 05:17:46', '2019-10-01 07:08:24'),
('PH-002', '2', '2019-10-01', '2019-10-05', 'aod', 'batal', '2019-10-01 06:09:53', '2019-10-01 07:08:25');

-- --------------------------------------------------------

--
-- Table structure for table `pph_item`
--

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
('PH-001', '2019-10-09', '3', 'A33', '6000', '6500', '2', 'Oke', '2019-10-01 05:17:46', NULL),
('PH-002', '2019-10-05', '2', 'A33', '14000', '12000', '11', 'idk', '2019-10-01 06:09:53', NULL),
('PH-002', '2019-10-05', '2', 'A33', '10000', '9000', '4', 'wakaranai', '2019-10-01 06:09:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profil`
--

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
('PO-001', '2019-10-05', '2019-10-02', 'SP-001', 'Hanif Setyananda', 'Jl. Basudewo 1086C\r\nJl. Kanguru Raya No. 2 AB', 'Kartonyono', 'jl. mulawarman 11', 'Ngawi', '53456', '02414752737', '08245465637', '30000', 'I', '2727.27', '922272.73', 'Purchase Order #2', 'sudah diapprove', 'Closed', '2019-10-01 14:08:56', '2019-10-02 00:59:16');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_item`
--

CREATE TABLE `purchase_order_item` (
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

INSERT INTO `purchase_order_item` (`kode_po`, `barcode_inventory`, `kode_item_supplier`, `nama_inventory`, `quantity`, `harga_satuan`, `satuan`, `created_at`, `updated_at`) VALUES
('PO-001', 'A13', 'B12', 'Celana', '10', '40000', '', '2019-10-01 14:10:46', NULL),
('PO-001', 'A23', 'B44', 'Baju', '15', '35000', '', '2019-10-01 14:10:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales_order`
--

CREATE TABLE `sales_order` (
  `nomor_so` varchar(255) NOT NULL,
  `tanggal_so` date NOT NULL,
  `kode_customer` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_item`
--

CREATE TABLE `sales_order_item` (
  `nomor_so` varchar(255) NOT NULL,
  `barcode` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `satuan`
--

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
('SP-001', 'Hanif Setyananda', 'Jl. Basudewo 1086C\r\nJl. Kanguru Raya No. 2 AB', 'Semarang', '50246', '222', '1', '2222', 'Hanif', 'hanifsetyananda17@gmail.com', 'wadad', '121313', 'Y', '2019-09-20 17:19:02', '2019-10-01 13:11:29'),
('SP-002', 'Nanda', 'Jl. Klipang Raya 2002', 'Semarang', '5003', '08959904423', '7790', 'Gtau', 'Nanda Reynaldi', 'nanda.reynaldi@gmail.com', '58882', '99992', 'Y', '2019-09-20 21:47:28', '2019-10-01 13:11:42');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_saldo`
--

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
(6, 'Barang Langka', '2019-09-30 14:19:40', NULL),
(7, 'Barang Biasa', '2019-09-30 14:19:44', NULL),
(8, 'Barang Rare', '2019-09-30 14:19:48', NULL);

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
-- Indexes for table `sales_order`
--
ALTER TABLE `sales_order`
  ADD PRIMARY KEY (`nomor_so`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
