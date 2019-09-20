-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2019 at 12:00 AM
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
('CST-001  ', 'Hanif', 'fans', 'shitaw', '2222', '20002', 'uyoo', '02020202', '20202020', '1', 'Y', 'Iwi', 'hanifsetyananda17@gmail.com', 'kodeee', '2000', 'gatau', '2019-09-06', '2000', '30000', 'i like turtles', '2019-09-20 06:10:54', '2019-09-20 06:16:48');

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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `barcode`, `nama_barang`, `satuan`, `id_tipe_barang`, `harga_jual1`, `harga_jual2`, `harga_jual3`, `created_at`, `update_at`) VALUES
(16, '1', '1', '1', '1', '12', '12', '1', '2019-09-17 05:42:26', '2019-09-18 23:50:30'),
(17, '2', '2', '2', '2', '2', '2', '2', '2019-09-17 05:42:35', NULL),
(18, '3', '3', '3', '3', '3', '3', '3', '2019-09-17 05:42:41', NULL),
(19, '4', '4', '4', '4', '4', '4', '4', '2019-09-17 05:42:47', NULL),
(20, '5', '5', '5', '1', '5', '5', '5', '2019-09-17 05:42:53', NULL),
(21, '6', '6', '6', '3', '6', '6', '6', '2019-09-17 05:43:01', NULL),
(22, '7', '7', '7', '4', '7', '7', '7', '2019-09-17 05:43:09', NULL),
(23, '8', '8', '8', '4', '8', '8', '8', '2019-09-17 05:43:17', NULL),
(24, '9', '9', '9', '3', '9', '9', '9', '2019-09-17 05:43:24', NULL),
(25, '10', '10', '10', '2', '10', '10', '10', '2019-09-17 05:43:35', NULL),
(26, '11', '11', '11', '2', '11', '11', '11', '2019-09-17 05:43:43', NULL),
(27, '12', '12', '12', '3', '12', '12', '12', '2019-09-17 05:43:50', NULL),
(28, '13', '13', '13', '2', '13', '13', '13', '2019-09-17 05:43:59', NULL),
(29, '14', '14', '14', '1', '14', '14', '14', '2019-09-17 05:44:05', NULL),
(30, '15', '15', '15', '4', '15', '15', '15', '2019-09-17 05:44:15', NULL),
(31, '16', '16', '16', '3', '16', '16', '16', '2019-09-17 05:44:26', NULL);

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
-- Dumping data for table `pengajuan_perubahan_harga`
--

INSERT INTO `pengajuan_perubahan_harga` (`nomor_pengajuan`, `tanggal`, `tipe_customer`, `barcode_inventory`, `harga_jual_lama`, `harga_jual_baru`, `quantity`, `keterangan`, `created_at`, `updated_at`) VALUES
('PH-001', '2019-09-25', '1', '1', '2', '12', '1', 'awdad', '2019-09-18 23:50:08', NULL),
('PH-001', '2019-09-25', '1', '1', '2', '12', '1', 'awdad', '2019-09-18 23:50:08', NULL),
('PH-001', '2019-09-25', '1', '1', '2', '12', '1', 'awdad', '2019-09-18 23:50:08', NULL),
('PH-001', '2019-09-25', '1', '1', '2', '12', '1', 'awdad', '2019-09-18 23:50:09', NULL),
('PH-001', '2019-09-25', '1', '1', '2', '12', '1', 'awdad', '2019-09-18 23:50:09', NULL),
('PH-001', '2019-09-25', '1', '1', '2', '12', '1', 'awdad', '2019-09-18 23:50:09', NULL),
('PH-002', '2019-09-18', '1', '1', '2', '12', '11', 'saasd', '2019-09-18 23:50:30', NULL);

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
(1, '384', 'Kartonyono', 'jl. mulawarman 11', 'RT 01 RW 12', 'Ngawi', '53456', '02414752737', '08245465637', 'Latip', '12092019095608photo.jpg'),
(2, '314', 'Puncak', 'jl. Kedondong raya no. 35', 'RT 01 RW 02', 'Bogor', '53451', '02414752123', '08245465621', 'So Lee Kin', '12092019135842images.jpeg.jpg'),
(3, '218', 'Sri Kuncoro', 'mberok street', 'rt 6 rw 9', '', '3645', '021654322123', '087665543877', 'Kuncoro', '1209201915470920161213_083742.jpg'),
(4, '502', 'Watu Karang', 'jl. genuksari atas no. 03', 'rt 00 rw 00', '', '53423', '021645544321', '089983624111', 'Rak Jendral', '13092019100156677eb-ibm370.jpg'),
(5, '348', 'gdjsf', 'jgerh', 'hgsigh', '', '2341', '95023058', '3584068', 'hbfbkgbj', '130920191006242018-01-04.png'),
(6, '3572', 'fhkduhg', 'ihsguhero', 'jdhgehg', '', 'jfdhi', '294889325', '4629842384', 'dhufiguehgshgo', '13092019100919futuristic_computer.jpg'),
(7, '384', 'jdifjks', 'jwefjd', 'dsfsf', 'Timika', '6987d', 'dskjfoj', 'fdsjflds', 'fnldsknf', '6c1ca0daf3765a671775c0e83825a928.jpg'),
(8, '384', 'Kartonyono', 'jl. mulawarman 11', 'RT 01 RW 12', 'Ngawi', '53456', '02414752737', '08245465637', 'Latip', '1309201910543180120-3.jpg'),
(9, '348', 'bogor', 'jl. mulawarman 11', 'hgsigh', 'Bogor', '53423', '02414752123', '089983624111', 'So Lee Kin', '20180209_085109.jpg');

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
('asodk ', 'Hanif Setyananda', 'Jl. Basudewo 1086C\r\nJl. Kanguru Raya No. 2 AB', 'Semarang', '50246', '222', '1', '2222', 'Hanif', 'hanifsetyananda17@gmail.com', 'wadad', '121313', 'Y', '2019-09-20 17:19:02', '2019-09-20 21:46:08'),
('CST-002', 'Nanda', 'Jl. Klipang Raya 2002', 'Semarang', '50003', '08959904423', '7790', 'Gtau', 'Nanda Reynaldi', 'nanda.reynaldi@gmail.com', '58882', '99992', 'Y', '2019-09-20 21:47:28', NULL);

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
(1, 'Sabun', '2019-09-04 07:59:22', NULL),
(2, 'Shampo', '2019-09-04 08:00:02', NULL),
(3, 'Odol', '2019-09-04 08:00:30', NULL),
(4, 'Sunlight', '2019-09-04 08:00:50', NULL);

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
-- Indexes for table `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`kode`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

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
-- AUTO_INCREMENT for table `tipe_barang`
--
ALTER TABLE `tipe_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2019 at 12:00 AM
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
('CST-001  ', 'Hanif', 'fans', 'shitaw', '2222', '20002', 'uyoo', '02020202', '20202020', '1', 'Y', 'Iwi', 'hanifsetyananda17@gmail.com', 'kodeee', '2000', 'gatau', '2019-09-06', '2000', '30000', 'i like turtles', '2019-09-20 06:10:54', '2019-09-20 06:16:48');

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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `barcode`, `nama_barang`, `satuan`, `id_tipe_barang`, `harga_jual1`, `harga_jual2`, `harga_jual3`, `created_at`, `update_at`) VALUES
(16, '1', '1', '1', '1', '12', '12', '1', '2019-09-17 05:42:26', '2019-09-18 23:50:30'),
(17, '2', '2', '2', '2', '2', '2', '2', '2019-09-17 05:42:35', NULL),
(18, '3', '3', '3', '3', '3', '3', '3', '2019-09-17 05:42:41', NULL),
(19, '4', '4', '4', '4', '4', '4', '4', '2019-09-17 05:42:47', NULL),
(20, '5', '5', '5', '1', '5', '5', '5', '2019-09-17 05:42:53', NULL),
(21, '6', '6', '6', '3', '6', '6', '6', '2019-09-17 05:43:01', NULL),
(22, '7', '7', '7', '4', '7', '7', '7', '2019-09-17 05:43:09', NULL),
(23, '8', '8', '8', '4', '8', '8', '8', '2019-09-17 05:43:17', NULL),
(24, '9', '9', '9', '3', '9', '9', '9', '2019-09-17 05:43:24', NULL),
(25, '10', '10', '10', '2', '10', '10', '10', '2019-09-17 05:43:35', NULL),
(26, '11', '11', '11', '2', '11', '11', '11', '2019-09-17 05:43:43', NULL),
(27, '12', '12', '12', '3', '12', '12', '12', '2019-09-17 05:43:50', NULL),
(28, '13', '13', '13', '2', '13', '13', '13', '2019-09-17 05:43:59', NULL),
(29, '14', '14', '14', '1', '14', '14', '14', '2019-09-17 05:44:05', NULL),
(30, '15', '15', '15', '4', '15', '15', '15', '2019-09-17 05:44:15', NULL),
(31, '16', '16', '16', '3', '16', '16', '16', '2019-09-17 05:44:26', NULL);

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
-- Dumping data for table `pengajuan_perubahan_harga`
--

INSERT INTO `pengajuan_perubahan_harga` (`nomor_pengajuan`, `tanggal`, `tipe_customer`, `barcode_inventory`, `harga_jual_lama`, `harga_jual_baru`, `quantity`, `keterangan`, `created_at`, `updated_at`) VALUES
('PH-001', '2019-09-25', '1', '1', '2', '12', '1', 'awdad', '2019-09-18 23:50:08', NULL),
('PH-001', '2019-09-25', '1', '1', '2', '12', '1', 'awdad', '2019-09-18 23:50:08', NULL),
('PH-001', '2019-09-25', '1', '1', '2', '12', '1', 'awdad', '2019-09-18 23:50:08', NULL),
('PH-001', '2019-09-25', '1', '1', '2', '12', '1', 'awdad', '2019-09-18 23:50:09', NULL),
('PH-001', '2019-09-25', '1', '1', '2', '12', '1', 'awdad', '2019-09-18 23:50:09', NULL),
('PH-001', '2019-09-25', '1', '1', '2', '12', '1', 'awdad', '2019-09-18 23:50:09', NULL),
('PH-002', '2019-09-18', '1', '1', '2', '12', '11', 'saasd', '2019-09-18 23:50:30', NULL);

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
(1, '384', 'Kartonyono', 'jl. mulawarman 11', 'RT 01 RW 12', 'Ngawi', '53456', '02414752737', '08245465637', 'Latip', '12092019095608photo.jpg'),
(2, '314', 'Puncak', 'jl. Kedondong raya no. 35', 'RT 01 RW 02', 'Bogor', '53451', '02414752123', '08245465621', 'So Lee Kin', '12092019135842images.jpeg.jpg'),
(3, '218', 'Sri Kuncoro', 'mberok street', 'rt 6 rw 9', '', '3645', '021654322123', '087665543877', 'Kuncoro', '1209201915470920161213_083742.jpg'),
(4, '502', 'Watu Karang', 'jl. genuksari atas no. 03', 'rt 00 rw 00', '', '53423', '021645544321', '089983624111', 'Rak Jendral', '13092019100156677eb-ibm370.jpg'),
(5, '348', 'gdjsf', 'jgerh', 'hgsigh', '', '2341', '95023058', '3584068', 'hbfbkgbj', '130920191006242018-01-04.png'),
(6, '3572', 'fhkduhg', 'ihsguhero', 'jdhgehg', '', 'jfdhi', '294889325', '4629842384', 'dhufiguehgshgo', '13092019100919futuristic_computer.jpg'),
(7, '384', 'jdifjks', 'jwefjd', 'dsfsf', 'Timika', '6987d', 'dskjfoj', 'fdsjflds', 'fnldsknf', '6c1ca0daf3765a671775c0e83825a928.jpg'),
(8, '384', 'Kartonyono', 'jl. mulawarman 11', 'RT 01 RW 12', 'Ngawi', '53456', '02414752737', '08245465637', 'Latip', '1309201910543180120-3.jpg'),
(9, '348', 'bogor', 'jl. mulawarman 11', 'hgsigh', 'Bogor', '53423', '02414752123', '089983624111', 'So Lee Kin', '20180209_085109.jpg');

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
('asodk ', 'Hanif Setyananda', 'Jl. Basudewo 1086C\r\nJl. Kanguru Raya No. 2 AB', 'Semarang', '50246', '222', '1', '2222', 'Hanif', 'hanifsetyananda17@gmail.com', 'wadad', '121313', 'Y', '2019-09-20 17:19:02', '2019-09-20 21:46:08'),
('CST-002', 'Nanda', 'Jl. Klipang Raya 2002', 'Semarang', '50003', '08959904423', '7790', 'Gtau', 'Nanda Reynaldi', 'nanda.reynaldi@gmail.com', '58882', '99992', 'Y', '2019-09-20 21:47:28', NULL);

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
(1, 'Sabun', '2019-09-04 07:59:22', NULL),
(2, 'Shampo', '2019-09-04 08:00:02', NULL),
(3, 'Odol', '2019-09-04 08:00:30', NULL),
(4, 'Sunlight', '2019-09-04 08:00:50', NULL);

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
-- Indexes for table `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`kode`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

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
-- AUTO_INCREMENT for table `tipe_barang`
--
ALTER TABLE `tipe_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
