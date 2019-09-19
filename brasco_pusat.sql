-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2019 at 10:34 AM
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
(10, '1294019', 'Detol', 'Lusi', '1', '2200', '2400', '30002', '2019-09-09 05:10:21', '2019-09-10 03:02:09'),
(11, '229292', 'd', 'msk', '1', '123123', '312321', '321312', '2019-09-10 02:58:07', '2019-09-10 03:03:25'),
(12, '12321', 'asdad', 'adwdawd', '2', '2131', '12231', '12312', '2019-09-12 06:09:02', NULL),
(13, '444', 'asdsad', 'adwwad', '1', '1231', '1313', '1313', '2019-09-12 06:13:48', NULL),
(14, '444', 'asdad', 'awdawd', '1', '21312', '123123', '123123', '2019-09-12 06:14:19', NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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
