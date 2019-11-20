-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Nov 2019 pada 08.35
-- Versi server: 10.3.16-MariaDB
-- Versi PHP: 7.1.30

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
CREATE DATABASE IF NOT EXISTS `brasco_pusat` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `brasco_pusat`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `groupType` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `nomor_hp` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `groupType`, `alamat`, `nomor_hp`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$AP2e4HcWnDpoeRUON02Yp.iQymYrkFJBcdr8.I0TE/8F5Ijwo95ui', 'utility', 'admin', '123', '2019-11-11 04:45:45', NULL),
(8, 'inventory', '$2y$10$gm0UcnTl4jM4FwGvTaye/eMmELjQ/iQCFUlaBLW8WpOkjHFY6Zfsa', 'inventory', 'adwadwadawdwa', '02020', '2019-11-12 02:09:47', NULL),
(9, 'pemasaran', '$2y$10$cMg2US3K7tDXcnLHgSElyed.K8cVX.fI2XMcvrdsPj3p4Qi8E56Om', 'pemasaran', 'awdawdawdwad', '202020', '2019-11-12 02:10:17', NULL),
(10, 'procurement', '$2y$10$aQ.P2bY2TSBkgfeJK8G3Aew3gISp/l9wwly4X.m4K065NMaeH5j5K', 'procurement', 'Jl. Basudewo 1086C\r\nJl. Kanguru Raya No. 2 AB', '132213', '2019-11-12 02:10:35', NULL),
(11, 'utility', '$2y$10$A/m2D8JnXkBtuOVJjW4lkOmz93GOjCOoOqZ19Pu.nAcyNmd/5X7sq', 'utility', 'wadwadwa', '234', '2019-11-12 02:11:18', NULL),
(25, 'manager', '$2y$10$dFqRVqcr2.mlV7XdKDckbuSlGY6ypjtyCGRKM//cdbjFTtiDtxO2a', 'manager', 'awakkawok', '0812222', '2019-11-13 07:02:43', '2019-11-14 01:10:55'),
(30, 'superadmin', '$2y$10$U6ZteqP0KBL8EHPQGtqjNOAxMoABAEculsJwoTp/4lrAhOMnBV5l2', 'superadmin', 'adawdad', '21123', '2019-11-14 01:42:37', '2019-11-14 01:42:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bank`
--

DROP TABLE IF EXISTS `bank`;
CREATE TABLE IF NOT EXISTS `bank` (
  `kode_bank` varchar(255) NOT NULL,
  `nama_bank` varchar(255) NOT NULL,
  `saldo_jalan` varchar(255) NOT NULL,
  `saldo_awal` varchar(255) NOT NULL,
  `tipe` varchar(255) NOT NULL,
  `nomor_akun` varchar(255) NOT NULL,
  `id_admin` varchar(255) NOT NULL,
  `id_edit_admin` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`kode_bank`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bank`
--

INSERT INTO `bank` (`kode_bank`, `nama_bank`, `saldo_jalan`, `saldo_awal`, `tipe`, `nomor_akun`, `id_admin`, `id_edit_admin`, `created_at`, `updated_at`) VALUES
('00203', 'BANK BCA', '30403', '2000', 'bank', '100.104', '', '30', '2019-11-14 04:18:13', '2019-11-16 12:26:34'),
('00204', 'BANK MANDIRI', '3100', '3000', 'bank', '101.103', '', '30', '2019-11-14 06:39:03', '2019-11-16 12:26:35'),
('00205', 'BANK BNI', '507582', '5000', 'bank', '100.102', '', '30', '2019-11-15 06:48:19', '2019-11-16 09:44:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bank_input_pembayaran`
--

DROP TABLE IF EXISTS `bank_input_pembayaran`;
CREATE TABLE IF NOT EXISTS `bank_input_pembayaran` (
  `nomor_kas_keluar` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `id_bank` varchar(255) NOT NULL,
  `no_giro` varchar(255) NOT NULL,
  `tanggal_giro` date NOT NULL,
  `jenis_biaya` varchar(255) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `id_admin` varchar(255) NOT NULL,
  `id_edit_admin` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`nomor_kas_keluar`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bank_input_pembayaran`
--

INSERT INTO `bank_input_pembayaran` (`nomor_kas_keluar`, `tanggal`, `id_bank`, `no_giro`, `tanggal_giro`, `jenis_biaya`, `jumlah`, `keterangan`, `id_admin`, `id_edit_admin`, `created_at`, `updated_at`) VALUES
('NKK-00000001', '2019-11-14', '00204', '', '0000-00-00', '00203', '500', 'Bayar BCA', '', '', '2019-11-14 06:44:41', NULL),
('NKK-00000002', '2019-11-15', '00203', '333', '2019-11-07', '102.111', '232', 'adwadasdawd', '', '', '2019-11-15 06:40:17', NULL),
('NKK-00000003', '2019-11-15', '00206', '9920', '2019-12-25', '101.103', '1200', 'Utang', '', '', '2019-11-15 07:02:58', NULL),
('NKK-00000004', '2019-11-15', '10080', '', '0000-00-00', '00204', '1000', 'Sip', '', '', '2019-11-15 07:06:00', NULL),
('NKK-00000005', '2019-11-16', '00204', '21313', '2019-11-12', '800.000', '23131', 'adwadsada', '', '', '2019-11-16 00:54:14', NULL),
('NKK-00000006', '2019-11-16', '00203', '', '0000-00-00', '00204', '100', 'sip\n', '30', '0', '2019-11-16 12:26:35', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `bank_input_penerimaan`
--

DROP TABLE IF EXISTS `bank_input_penerimaan`;
CREATE TABLE IF NOT EXISTS `bank_input_penerimaan` (
  `nomor_kas_masuk` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `id_bank` varchar(255) NOT NULL,
  `no_giro` varchar(255) NOT NULL,
  `tanggal_giro` date NOT NULL,
  `jenis_pendapatan` varchar(255) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `id_admin` varchar(255) NOT NULL,
  `id_edit_admin` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`nomor_kas_masuk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bank_input_penerimaan`
--

INSERT INTO `bank_input_penerimaan` (`nomor_kas_masuk`, `tanggal`, `id_bank`, `no_giro`, `tanggal_giro`, `jenis_pendapatan`, `jumlah`, `keterangan`, `id_admin`, `id_edit_admin`, `created_at`, `updated_at`) VALUES
('NKM-00000002', '2019-11-15', '00205', '1555', '2019-12-25', '700.101', '252555', 'Oyoy', '', '', '2019-11-15 07:04:10', NULL),
('NKM-00000003', '2019-11-15', '00204', '', '0000-00-00', '10080', '1000', 'Sip', '', '', '2019-11-15 07:06:00', NULL),
('NKM-00000004', '2019-11-16', '00203', '', '0000-00-00', '100.104', '28003', 'u3i1hjsad', '', '', '2019-11-16 07:43:08', NULL),
('NKM-00000005', '2019-11-16', '00205', 'adaowkdok', '2019-11-16', '100.102', '252027', 'sadadawd', '', '', '2019-11-16 07:52:58', NULL),
('NKM-00000006', '2019-11-16', '00204', '', '0000-00-00', '00203', '100', 'sip\n', '30', '0', '2019-11-16 12:26:35', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `counter`
--

DROP TABLE IF EXISTS `counter`;
CREATE TABLE IF NOT EXISTS `counter` (
  `tabel` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `header` varchar(255) NOT NULL,
  `digit` varchar(8) NOT NULL,
  `id_edit_admin` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`tabel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `counter`
--

INSERT INTO `counter` (`tabel`, `nama`, `header`, `digit`, `id_edit_admin`, `created_at`, `updated_at`) VALUES
('customer', 'Kode Customer', 'CST', '2', '30', '2019-11-05 02:36:56', '2019-11-15 07:45:12'),
('diskon_barang_reject', 'Diskon Barang Reject', 'RJ', '00000000', '30', '2019-11-05 02:36:56', '2019-11-14 08:33:55'),
('faktur', 'Kode Faktur', 'IF', '00000010', '30', '2019-11-05 02:36:56', '2019-11-16 08:31:22'),
('kwitansi_invoice', 'Kwitansi Invoice', 'KV', '00000011', '30', '2019-11-05 02:36:56', '2019-11-16 08:31:22'),
('nomor_terima', 'Nomor Terima', 'NT', '00000000', '30', '2019-11-05 07:42:04', '2019-11-14 08:36:50'),
('nomor_transfer', 'Nomor Transfer', 'NF', '00000000', '30', '2019-11-05 07:42:04', '2019-11-14 08:36:50'),
('no_kas_keluar', 'Nomor Kas Keluar', 'NKK', '00000012', '30', '2019-11-05 07:42:04', '2019-11-19 08:52:27'),
('no_kas_masuk', 'Nomor Kas Masuk', 'NKM', '00000006', '30', '2019-11-05 07:42:04', '2019-11-16 12:26:34'),
('no_transaksi', 'Nomor Transaksi', 'NTR', '00000000', '30', '2019-11-05 07:42:04', '2019-11-14 08:36:50'),
('order_gudang', 'Kode Order Gudang', 'Order', '00000000', '30', '2019-11-05 02:36:56', '2019-11-16 23:50:25'),
('packing', 'Kode Packing Gudang', 'Pack', '00000000', '30', '2019-11-05 02:36:56', '2019-11-14 08:33:56'),
('pengajuan_perubahan_harga', 'Pengajuan Perubahan Harga', 'PH', '10004566', '30', '2019-11-05 02:36:56', '2019-11-15 06:39:50'),
('picking', 'Kode Packing Gudang', 'Pick', '18', '30', '2019-11-05 02:36:56', '2019-11-15 06:57:12'),
('purchase_order', 'Kode Purchase Order', 'PO', '00000036', '30', '2019-11-05 02:36:56', '2019-11-19 09:46:36'),
('purchasing', 'Kode Purchasing', 'PU', '00000000', '30', '2019-11-05 02:36:56', '2019-11-14 08:33:56'),
('retur_pembelian_barang', 'Kode Retur Pembelian Barang', 'RTR', '7', '30', '2019-11-06 06:49:06', '2019-11-15 07:07:04'),
('sales_invoice', 'Kode Sales Invoice', 'SI', '00000008', '30', '2019-11-05 02:36:56', '2019-11-16 08:31:22'),
('sales_order', 'Kode Sales Order', 'SO', '00000000', '30', '2019-11-05 02:36:56', '2019-11-14 08:37:11'),
('stock_opname', 'Kode Stock Opname', 'ST', '00000004', '30', '2019-11-05 02:36:56', '2019-11-15 08:19:13'),
('supplier', 'Kode Supplier', 'SP', '00000000', '30', '2019-11-05 02:36:56', '2019-11-14 08:36:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
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
  `id_admin` varchar(255) NOT NULL,
  `id_edit_admin` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`kode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`kode`, `nama`, `alamat`, `kota`, `kodepos`, `telepon`, `handphone`, `npwp`, `ktp`, `tipe_customer`, `kredit`, `contact_name`, `email`, `kode_sales`, `top`, `batas_kredit`, `tanggal_jual_akhir`, `saldo_awal`, `saldo_jalan`, `keterangan`, `id_admin`, `id_edit_admin`, `created_at`, `updated_at`) VALUES
('CST-001', 'Hanif Setyananda', 'Jl. Basudewo 1086C\r\nJl. Kanguru Raya No. 2 AB', 'Semarang', '50246', '62815424285', '08129232125', '20002', '1199921331', '1', 'Y', 'Seep_gan', 'seep@gmail.com', 'SL-001', '3', '20002', '2019-10-11', '50000', '80000', 'idk', '', '30', '2019-10-12 09:59:18', '2019-11-15 14:01:30'),
('CST-002', 'Sultan Iyus', 'jalanin aja dulu sapa tau sah ', 'kota kota', '50148', '85966176839', '09898789', '12345678', '9876542345678', '3', 'Y', 'sultan', 'sultaniyus19@nikah.com', '19', '1', '1555', '2019-12-25', '191919919191919', '1919191919191919919', 'nikah woyyyyyy', '', NULL, '2019-11-14 01:31:16', NULL),
('CST-003', 'kasu', 'alamat', 'semarang', '123', '12345678', '123232', 'qeqwe', 'qweqew', '2', 'T', 'sksadkadsk', 'asdasda@gmail.com', 'djdsjsdsd', '123213', '13212331312', '2019-11-13', '12312', '12313123123', 'oksiap', '30', '0', '2019-11-14 04:02:13', '2019-11-14 04:08:50'),
('CST-2', 'Barang Super Rare', 'dsqbbdqb', 'Semarang', '77739', '018308', '098301012', '732392', '7213827', '1', 'Y', 'Seep_gan', 'hsahksdklns@sakjndslkna', '17392', '127382', '137127389', '2019-11-15', '2093829', '829038092312', 'sadqdqjdqsd', '30', '0', '2019-11-15 07:45:12', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `diskon_barang_reject`
--

DROP TABLE IF EXISTS `diskon_barang_reject`;
CREATE TABLE IF NOT EXISTS `diskon_barang_reject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_reject` varchar(255) NOT NULL,
  `kode_customer` varchar(255) NOT NULL,
  `barcode` varchar(255) NOT NULL,
  `barcode_reject` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `diskon` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `id_admin` varchar(255) NOT NULL,
  `id_edit_admin` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `diskon_barang_reject`
--

INSERT INTO `diskon_barang_reject` (`id`, `kode_reject`, `kode_customer`, `barcode`, `barcode_reject`, `quantity`, `diskon`, `status`, `id_admin`, `id_edit_admin`, `created_at`, `updated_at`) VALUES
(1, 'RJ-001', 'CST-001', '2', '2R', '2', '40', 1, '', '', '2019-10-25 08:24:25', '2019-11-06 03:36:12'),
(2, 'RJ-001', 'CST-001', '2', '2R', '2', '40', 1, '', '', '2019-10-25 08:24:25', '2019-11-06 03:37:09'),
(3, 'RJ-002', 'CST-001', '2', '2R', '2', '40', 1, '', '', '2019-10-25 08:26:57', '2019-11-12 04:45:31'),
(4, 'RJ-002', 'CST-001', '2', '2R', '2', '40', 1, '', '', '2019-10-25 08:26:57', '2019-11-12 04:46:40'),
(5, 'RJ-1', 'CST-001', '2', '2R', '3', '8', 1, '', '', '2019-11-12 04:42:57', '2019-11-12 04:46:14'),
(6, 'RJ-1', 'CST-001', '3', '3R', '2', '22', 1, '', '30', '2019-11-12 04:44:19', '2019-11-15 07:19:08'),
(7, 'RJ-1', 'CST-001', '3', '3R', '13', '50', 0, '', '', '2019-11-12 04:45:05', NULL),
(8, 'RJ-1', 'CST-001', 'A33', 'A33R', '1', '30', 0, '8', '0', '2019-11-14 02:01:50', NULL),
(9, 'RJ-1', 'CST-001', '3', '3R', '10', '12', 0, '30', '0', '2019-11-15 06:30:53', NULL),
(10, 'RJ-1', 'CST-003', '3', '3R', '10', '20', 0, '30', '0', '2019-11-15 06:38:11', NULL),
(11, 'RJ-1', 'CST-001', 'A33', 'A33R', '5', '20', 1, '30', '30', '2019-11-15 06:38:42', '2019-11-15 07:19:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `intrn`
--

DROP TABLE IF EXISTS `intrn`;
CREATE TABLE IF NOT EXISTS `intrn` (
  `kode` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date NOT NULL,
  `kode_item` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `satuan` varchar(255) NOT NULL,
  `harga_beli` varchar(255) NOT NULL,
  `hpp` varchar(255) NOT NULL,
  `harga_jual` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `tipe_transaksi` varchar(255) NOT NULL,
  `kode_user` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`kode`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `intrn`
--

INSERT INTO `intrn` (`kode`, `tanggal`, `kode_item`, `quantity`, `satuan`, `harga_beli`, `hpp`, `harga_jual`, `discount`, `keterangan`, `tipe_transaksi`, `kode_user`, `created_at`, `updated_at`) VALUES
(1, '2019-11-19', '2', '15', '16121', '2000', '32242000', '0', '0', 'Purchasing', 'PU', '30', '2019-11-19 08:52:57', NULL),
(2, '2019-11-19', '3', '13', '10692', '2000', '21384000', '0', '0', 'Purchasing', 'PU', '30', '2019-11-19 08:52:57', NULL),
(3, '2019-11-19', 'A33', '22', '343', '2424', '831432', '0', '0', 'Purchasing', 'PU', '30', '2019-11-19 09:21:26', NULL),
(4, '2019-11-19', 'A33', '22', '343', '2424', '831432', '0', '0', 'Purchasing', 'PU', '30', '2019-11-19 09:21:26', NULL),
(5, '2019-11-19', 'A33', '22', '343', '2424', '831432', '0', '0', 'Purchasing', 'PU', '30', '2019-11-19 09:21:26', NULL),
(6, '2019-11-19', 'A33', '22', '343', '2424', '831432', '0', '0', 'Purchasing', 'PU', '30', '2019-11-19 09:21:26', NULL),
(7, '2019-11-19', 'A33', '22', '343', '2424', '831432', '0', '0', 'Purchasing', 'PU', '30', '2019-11-19 09:21:26', NULL),
(8, '2019-11-19', 'A33', '22', '343', '2424', '831432', '0', '0', 'Purchasing', 'PU', '30', '2019-11-19 09:21:26', NULL),
(9, '2019-11-19', 'A33', '22', '343', '2424', '831432', '0', '0', 'Purchasing', 'PU', '30', '2019-11-19 09:21:26', NULL),
(10, '2019-11-19', 'A23', '30', '30', '20000', '600000', '0', '0', 'Purchasing', 'PU', '30', '2019-11-19 09:31:32', NULL),
(11, '2019-11-19', 'A33', '30', '373', '50000', '18650000', '0', '0', 'Purchasing', 'PU', '30', '2019-11-19 09:31:32', NULL),
(12, '2019-11-19', '1', '4', '18', '5', '90', '0', '0', 'Purchasing', 'PU', '30', '2019-11-19 09:32:32', NULL),
(13, '2019-11-19', '1', '4', '18', '5', '90', '0', '0', 'Purchasing', 'PU', '30', '2019-11-19 09:32:32', NULL),
(14, '2019-11-19', 'A13', '500', '1003', '3', '3009', '0', '0', 'Purchasing', 'PU', '30', '2019-11-19 09:32:32', NULL),
(15, '2019-11-19', '5', '400', '800', '5', '4000', '0', '0', 'Purchasing', 'PU', '30', '2019-11-19 09:32:33', NULL),
(16, '2019-11-19', 'A23', '30', '60', '20000', '1200000', '0', '0', 'Purchasing', 'PU', '30', '2019-11-19 09:33:46', NULL),
(17, '2019-11-19', 'A33', '30', '403', '50000', '20150000', '0', '0', 'Purchasing', 'PU', '30', '2019-11-19 09:33:46', NULL),
(18, '2019-11-19', '1', '4', '22', '5', '110', '0', '0', 'Purchasing', 'PU', '30', '2019-11-19 09:35:27', NULL),
(19, '2019-11-19', '1', '4', '22', '5', '110', '0', '0', 'Purchasing', 'PU', '30', '2019-11-19 09:35:27', NULL),
(20, '2019-11-19', 'A13', '500', '1503', '3', '4509', '0', '0', 'Purchasing', 'PU', '30', '2019-11-19 09:35:27', NULL),
(21, '2019-11-19', '5', '400', '1200', '5', '6000', '0', '0', 'Purchasing', 'PU', '30', '2019-11-19 09:35:27', NULL),
(22, '2019-11-19', '1', '4', '26', '5', '130', '0', '0', 'Purchasing', 'PU', '30', '2019-11-19 09:37:11', NULL),
(23, '2019-11-19', '1', '4', '26', '5', '130', '0', '0', 'Purchasing', 'PU', '30', '2019-11-19 09:37:11', NULL),
(24, '2019-11-19', 'A13', '500', '2003', '3', '6009', '0', '0', 'Purchasing', 'PU', '30', '2019-11-19 09:37:12', NULL),
(25, '2019-11-19', '5', '400', '1600', '5', '8000', '0', '0', 'Purchasing', 'PU', '30', '2019-11-19 09:37:12', NULL),
(26, '2019-11-19', '2R', '29', '34', '0232', '7888', '0', '0', 'Purchasing', 'PU', '30', '2019-11-19 09:38:06', NULL),
(27, '2019-11-19', '2R', '29', '34', '0232', '7888', '0', '0', 'Purchasing', 'PU', '30', '2019-11-19 09:38:06', NULL),
(28, '2019-11-19', '2R', '29', '34', '0232', '7888', '0', '0', 'Purchasing', 'PU', '30', '2019-11-19 09:38:06', NULL),
(29, '2019-11-19', '2R', '29', '34', '0232', '7888', '0', '0', 'Purchasing', 'PU', '30', '2019-11-19 09:38:06', NULL),
(30, '2019-11-19', '2R', '29', '34', '0232', '7888', '0', '0', 'Purchasing', 'PU', '30', '2019-11-19 09:38:06', NULL),
(31, '2019-11-19', '2R', '29', '34', '0232', '7888', '0', '0', 'Purchasing', 'PU', '30', '2019-11-19 09:38:06', NULL),
(32, '2019-11-19', '2R', '3', '8', '4000', '32000', '0', '0', 'Purchasing', 'PU', '30', '2019-11-19 09:38:06', NULL),
(33, '2019-11-19', '2R', '3', '8', '4000', '32000', '0', '0', 'Purchasing', 'PU', '30', '2019-11-19 09:38:06', NULL),
(34, '2019-11-19', '2R', '3', '8', '4000', '32000', '0', '0', 'Purchasing', 'PU', '30', '2019-11-19 09:38:07', NULL),
(35, '2019-11-19', '2R', '3', '8', '4000', '32000', '0', '0', 'Purchasing', 'PU', '30', '2019-11-19 09:38:07', NULL),
(36, '2019-11-19', 'A23', '10', '70', '100000', '7000000', '0', '0', 'Purchasing', 'PU', '30', '2019-11-19 09:39:29', NULL),
(37, '2019-11-19', 'A23', '20', '90', '100000', '9000000', '0', '0', 'Purchasing', 'PU', '30', '2019-11-19 09:50:27', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `inventory`
--

DROP TABLE IF EXISTS `inventory`;
CREATE TABLE IF NOT EXISTS `inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `barcode` varchar(255) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `satuan` varchar(255) NOT NULL,
  `id_tipe_barang` varchar(255) NOT NULL,
  `harga_jual1` varchar(255) NOT NULL,
  `harga_jual2` varchar(255) NOT NULL,
  `harga_jual3` varchar(255) NOT NULL,
  `harga_beli` varchar(255) NOT NULL,
  `quantity` varchar(255) DEFAULT '0',
  `id_admin` varchar(255) NOT NULL,
  `id_edit_admin` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `inventory`
--

INSERT INTO `inventory` (`id`, `barcode`, `nama_barang`, `satuan`, `id_tipe_barang`, `harga_jual1`, `harga_jual2`, `harga_jual3`, `harga_beli`, `quantity`, `id_admin`, `id_edit_admin`, `created_at`, `update_at`) VALUES
(2, 'A33', 'Sepatu', '4', '6', '14000', '2', '6500', '10000', '403', '', '', '2019-09-30 14:25:46', '2019-11-19 09:33:46'),
(3, 'A23', 'Baju', '4', '7', '50000', '40000', '45000', '10000', '90', '', '', '2019-10-01 14:06:24', '2019-11-19 09:50:27'),
(4, 'A13', 'Celana', '4', '8', '75000', '78000', '60000', '10000', '2003', '', '', '2019-10-01 14:07:24', '2019-11-19 09:37:11'),
(5, '1', 'Ret', '4', '6', '2000', '5000', '3000', '10000', '26', '', '8', '2019-10-04 01:23:25', '2019-11-19 09:37:11'),
(6, '2', 'Priz', '7', '7', '2', '4', '2500', '10000', '16121', '', '8', '2019-10-04 01:23:42', '2019-11-19 08:52:57'),
(7, '3', 'Randu', '6', '8', '7000', '6000', '5000', '10000', '10692', '', '30', '2019-10-04 01:23:58', '2019-11-19 08:52:57'),
(8, '5', 'w', '4', '8', '2000', '2000', '3000', '10000', '1600', '', '', '2019-10-07 06:48:15', '2019-11-19 09:37:12'),
(9, '2R', 'Priz', '7', '7', '4000', '1200', '2500', '10000', '8', '', '', '2019-11-06 03:36:12', '2019-11-19 09:38:06'),
(11, '2R', 'Priz', '7', '7', '4000', '1200', '2500', '10000', '8', '', '', '2019-11-12 04:45:31', '2019-11-19 09:38:06'),
(12, '2R', 'Priz', '7', '7', '4000', '240', '2500', '10000', '8', '', '', '2019-11-12 04:46:14', '2019-11-19 09:38:06'),
(13, '2R', 'Priz', '7', '7', '4000', '1200', '2500', '10000', '8', '', '', '2019-11-12 04:46:40', '2019-11-19 09:38:06'),
(14, '2R', 'priz', '7', '7', '4000', '1200', '25000', '10000', '8', '', '', '2019-11-12 04:51:33', '2019-11-19 09:38:06'),
(17, '1', 'cek', '4', '6', '200000', '', '300000', '10000', '26', '30', '8', '2019-11-15 03:58:39', '2019-11-19 09:37:11'),
(25, '3', 'awdad', '4', '6', '123123', '123213', '12321312', '10000', '10692', '30', '30', '2019-11-15 06:13:15', '2019-11-19 08:52:57'),
(26, '232', 'adwad', '4', '6', '123', '123', '213', '10000', '0', '30', '0', '2019-11-15 06:14:29', '2019-11-16 07:02:32'),
(28, '123', 'rwerscfrft', '12', '8', '6373', '262', '17262', '10000', '0', '30', '0', '2019-11-15 06:21:50', '2019-11-16 07:02:37'),
(29, 'A33R', 'Sepatu', '4', '6', '2800', '2', '6500', '10000', '5', '30', '0', '2019-11-15 07:19:02', '2019-11-16 07:02:40'),
(30, '3R', 'Randu', '6', '8', '1540', '6000', '5000', '10000', '2', '30', '0', '2019-11-15 07:19:08', '2019-11-16 07:02:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurnal_referensi`
--

DROP TABLE IF EXISTS `jurnal_referensi`;
CREATE TABLE IF NOT EXISTS `jurnal_referensi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `retur_penjualan` char(13) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jurnal_referensi`
--

INSERT INTO `jurnal_referensi` (`id`, `kas`, `bank`, `umbeli`, `hutang`, `persediaan`, `ppnmasuk`, `ongkirbeli`, `persediaan_in_transit`, `persediaan_gd1`, `persediaan_gd2`, `persediaan_brg_jadi`, `persediaan_bahan_baku_dlm_proses`, `persediaan_bahan_pembantu`, `biaya_upah_produksi`, `biaya_jasa_maklon`, `biaya_biaya_listrik`, `biaya_penyusutan_inv_pabrik`, `biaya_pr_mesin`, `biaya_perlengkapan_pabrik`, `biaya_lain`, `persediaan_gd3`, `umjual`, `piutang`, `penjualan`, `ppnkeluar`, `ongkirjual`, `hpp`, `retur_penjualan`) VALUES
(1, '100.101', '100.102', '104.120', '401.000', '103.100', '104.100', '700.130', '103.100', '103.101', '103.100', '300.321', '104.101', '103.120', '401.000', '104.101', '100.000', '100.100', '100.000', '100.000', '100.000', '100.000', '600.101', '100.103', '500.000', '100.000', '300.301', '100.103', '104.100');

-- --------------------------------------------------------

--
-- Struktur dari tabel `label_barcode`
--

DROP TABLE IF EXISTS `label_barcode`;
CREATE TABLE IF NOT EXISTS `label_barcode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_po` varchar(255) NOT NULL,
  `barcode` varchar(255) NOT NULL,
  `harga` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `id_admin` varchar(255) NOT NULL,
  `id_edit_admin` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `label_barcode`
--

INSERT INTO `label_barcode` (`id`, `kode_po`, `barcode`, `harga`, `keterangan`, `quantity`, `id_admin`, `id_edit_admin`, `created_at`, `updated_at`) VALUES
(4, 'PO-004', 'A33', '2', 'awdawdwad', '2', '', '', '2019-10-24 01:30:36', NULL),
(5, 'PO-004', 'A33', '2', 'awdawdwad', '2', '', '', '2019-10-24 01:30:36', NULL),
(6, 'PO-004', 'A33', '2', 'awdawdwad', '2', '', '', '2019-10-24 01:30:37', NULL),
(7, 'PO-003', 'A33', '232', 'adwadsada', '22', '', '', '2019-10-24 02:17:38', NULL),
(8, 'PO-003', 'A33', '232', 'adwadsada', '22', '', '', '2019-10-24 02:17:38', NULL),
(9, 'PO-002', 'A33', '2', 'dwada', '1', '', '', '2019-10-24 02:17:56', NULL),
(10, 'PO-002', 'A33', '2', 'dwada', '1', '', '', '2019-10-24 02:17:56', NULL),
(14, 'PO-005', 'A33', '2', 'adwad', '2', '', '', '2019-10-24 04:27:50', NULL),
(15, 'PO-001', 'A33', '2', 'adawdaw', '12', '', '', '2019-11-14 07:28:39', NULL),
(16, 'PO-001', 'A33', '2', 'adawdaw', '12', '', '', '2019-11-14 07:28:39', NULL),
(17, 'PO-001', 'A33', '2', 'adawdaw', '12', '', '', '2019-11-14 07:28:39', NULL),
(18, 'UP-1', 'A33', '322', 'aijwdaiwjdijwa', '23', '30', '0', '2019-11-16 08:28:11', NULL),
(19, 'UP-1', 'A33', '322', 'aijwdaiwjdijwa', '23', '30', '0', '2019-11-16 08:28:11', NULL),
(20, 'PO-00000031', 'A33', '3', '4', '2', '30', '0', '2019-11-17 00:10:58', NULL),
(21, 'PO-00000031', 'A33', '3', '4', '2', '30', '0', '2019-11-17 00:10:58', NULL),
(22, 'PO-00000031', 'A33', '3', '4', '2', '30', '0', '2019-11-17 00:10:58', NULL),
(23, 'PO-00000031', 'A33', '3', '4', '2', '30', '0', '2019-11-17 00:10:58', NULL),
(24, 'PO-00000032', 'A33', '30', 'Hapu', '2', '30', '0', '2019-11-17 00:30:02', NULL),
(25, 'PO-00000032', 'A33', '30', 'Hapu', '2', '30', '0', '2019-11-17 00:30:03', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ms_akun`
--

DROP TABLE IF EXISTS `ms_akun`;
CREATE TABLE IF NOT EXISTS `ms_akun` (
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
  `lrj` char(1) DEFAULT 'N',
  PRIMARY KEY (`kodeakun`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ms_akun`
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
-- Struktur dari tabel `order_gudang`
--

DROP TABLE IF EXISTS `order_gudang`;
CREATE TABLE IF NOT EXISTS `order_gudang` (
  `nomor_order` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `nomor_so` varchar(255) NOT NULL,
  `kode_customer` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `id_admin` varchar(255) NOT NULL,
  `id_edit_admin` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`nomor_order`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `order_gudang`
--

INSERT INTO `order_gudang` (`nomor_order`, `tanggal`, `nomor_so`, `kode_customer`, `keterangan`, `total`, `id_admin`, `id_edit_admin`, `created_at`, `updated_at`) VALUES
('Order-001', '2019-10-05', 'SO-002', 'CST-001', 'adwad', '6', '', '', '2019-10-05 09:10:47', '2019-10-12 10:35:47'),
('Order-002', '2019-10-17', 'SO-003', 'CST-001', 'yay', '26', '', '', '2019-10-12 10:04:03', '2019-10-12 10:42:44'),
('Order-003', '2019-10-25', 'SO-003', 'CST-001', 'dd', '23', '', '', '2019-10-28 01:54:12', NULL),
('Order-1', '2019-11-15', 'SO-002', 'CST-001', 'CoD', '70', '30', '0', '2019-11-15 06:52:40', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_gudang_item`
--

DROP TABLE IF EXISTS `order_gudang_item`;
CREATE TABLE IF NOT EXISTS `order_gudang_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomor_order` varchar(255) NOT NULL,
  `barcode` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `id_admin` varchar(255) NOT NULL,
  `id_edit_admin` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `order_gudang_item`
--

INSERT INTO `order_gudang_item` (`id`, `nomor_order`, `barcode`, `quantity`, `id_admin`, `id_edit_admin`, `created_at`, `updated_at`) VALUES
(10, 'Order-001', 'A33', '3', '', '', '2019-10-12 10:35:47', NULL),
(11, 'Order-001', '2', '3', '', '', '2019-10-12 10:35:47', NULL),
(20, 'Order-002', 'A33', '22', '', '', '2019-10-12 10:42:44', NULL),
(21, 'Order-002', '3', '4', '', '', '2019-10-12 10:42:44', NULL),
(22, 'Order-003', 'A33', '23', '', '', '2019-10-28 01:54:12', NULL),
(23, 'Order-1', 'A33', '70', '30', '0', '2019-11-15 06:52:40', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `packing`
--

DROP TABLE IF EXISTS `packing`;
CREATE TABLE IF NOT EXISTS `packing` (
  `nomor_packing` varchar(255) NOT NULL,
  `kode_customer` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `total` varchar(255) NOT NULL,
  `id_admin` varchar(255) NOT NULL,
  `id_edit_admin` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`nomor_packing`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `packing`
--

INSERT INTO `packing` (`nomor_packing`, `kode_customer`, `tanggal`, `total`, `id_admin`, `id_edit_admin`, `created_at`, `updated_at`) VALUES
('Pack-1', 'CST-1', '2019-11-14', '12', '30', '0', '2019-11-14 08:33:21', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `packing_item`
--

DROP TABLE IF EXISTS `packing_item`;
CREATE TABLE IF NOT EXISTS `packing_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomor_packing` varchar(255) NOT NULL,
  `id_picking_item` int(11) NOT NULL,
  `quantity_packing` int(11) NOT NULL,
  `id_admin` varchar(255) NOT NULL,
  `id_edit_admin` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `packing_item`
--

INSERT INTO `packing_item` (`id`, `nomor_packing`, `id_picking_item`, `quantity_packing`, `id_admin`, `id_edit_admin`, `created_at`, `updated_at`) VALUES
(20, 'Pack-1', 3, 12, '30', '0', '2019-11-14 08:33:21', NULL),
(21, 'Pack-1', 1, 2, '30', '0', '2019-11-14 08:34:03', NULL),
(22, 'Pack-1', 3, 12, '30', '0', '2019-11-14 08:34:03', NULL),
(23, 'Pack-1', 5, 1, '30', '0', '2019-11-14 08:34:03', NULL),
(24, 'Pack-1', 2, 2, '30', '0', '2019-11-15 06:58:06', NULL),
(25, 'Pack-1', 4, 5, '30', '0', '2019-11-15 06:59:14', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengajuan_perubahan_harga`
--

DROP TABLE IF EXISTS `pengajuan_perubahan_harga`;
CREATE TABLE IF NOT EXISTS `pengajuan_perubahan_harga` (
  `nomor_pengajuan` varchar(255) NOT NULL,
  `tipe_customer` varchar(255) NOT NULL,
  `tanggal_approve` date DEFAULT NULL,
  `tanggal_pengajuan` date NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'belum_approve',
  `id_admin` varchar(255) NOT NULL,
  `id_edit_admin` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`nomor_pengajuan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengajuan_perubahan_harga`
--

INSERT INTO `pengajuan_perubahan_harga` (`nomor_pengajuan`, `tipe_customer`, `tanggal_approve`, `tanggal_pengajuan`, `keterangan`, `status`, `id_admin`, `id_edit_admin`, `created_at`, `updated_at`) VALUES
('PH-001', '3', '2019-11-15', '2019-10-09', '', 'approve', '', '30', '2019-10-01 05:17:46', '2019-11-15 07:20:01'),
('PH-002', '2', '2019-11-15', '2019-10-05', '', 'approve', '', '', '2019-10-01 06:09:53', '2019-11-15 07:20:02'),
('PH-10004564', '1', '2019-11-15', '2019-10-31', '', 'approve', '', '', '2019-11-12 15:08:02', '2019-11-15 07:20:03'),
('PH-10004565', '2', '2019-11-15', '2019-11-14', '', 'approve', '8', '', '2019-11-14 02:48:35', '2019-11-15 07:20:04'),
('PH-10004566', '2', '2019-11-15', '2019-11-15', '', 'approve', '30', '8', '2019-11-15 06:39:49', '2019-11-15 07:20:04'),
('PH-19110002', '2', '2019-11-15', '2019-11-13', '', 'approve', '', '30', '2019-11-12 14:44:26', '2019-11-15 07:20:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `picking`
--

DROP TABLE IF EXISTS `picking`;
CREATE TABLE IF NOT EXISTS `picking` (
  `nomor_picking` varchar(255) NOT NULL,
  `nomor_order` varchar(255) NOT NULL,
  `kode_customer` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `id_admin` varchar(255) NOT NULL,
  `id_edit_admin` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`nomor_picking`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `picking`
--

INSERT INTO `picking` (`nomor_picking`, `nomor_order`, `kode_customer`, `status`, `total`, `tanggal`, `id_admin`, `id_edit_admin`, `created_at`, `updated_at`) VALUES
('Pick-15', 'Order-001', 'CST-001', 'Selesai', '6', '2019-11-14', '', '30', '2019-11-14 08:05:12', '2019-11-15 06:56:34'),
('Pick-16', 'Order-003', 'CST-001', 'Selesai', '20', '2019-11-14', '', '0', '2019-11-14 08:07:04', NULL),
('Pick-17', 'Order-001', 'CST-001', 'Proses', '32', '2019-11-14', '30', '0', '2019-11-14 08:09:55', NULL),
('Pick-18', 'Order-001', 'CST-001', 'Selesai', '2', '2019-11-15', '30', '0', '2019-11-15 06:57:13', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `picking_item`
--

DROP TABLE IF EXISTS `picking_item`;
CREATE TABLE IF NOT EXISTS `picking_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomor_picking` varchar(255) NOT NULL,
  `barcode` varchar(255) NOT NULL,
  `id_order_item` varchar(255) NOT NULL,
  `quantity_picking` varchar(255) NOT NULL,
  `quantity_packing` varchar(255) NOT NULL DEFAULT '0',
  `quantity_order` varchar(255) NOT NULL,
  `id_admin` varchar(255) NOT NULL,
  `id_edit_admin` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `picking_item`
--

INSERT INTO `picking_item` (`id`, `nomor_picking`, `barcode`, `id_order_item`, `quantity_picking`, `quantity_packing`, `quantity_order`, `id_admin`, `id_edit_admin`, `created_at`, `updated_at`) VALUES
(1, 'Pick-15', 'A33', '10', '3', '2', '3', '', '30', '2019-11-14 08:05:12', '2019-11-14 08:34:03'),
(2, 'Pick-15', '2', '11', '3', '2', '3', '', '30', '2019-11-14 08:05:12', '2019-11-15 06:58:06'),
(3, 'Pick-16', 'A33', '22', '20', '12', '23', '', '30', '2019-11-14 08:07:04', '2019-11-14 08:33:21'),
(4, 'Pick-17', 'A33', '10', '20', '5', '3', '30', '30', '2019-11-14 08:09:55', '2019-11-15 06:59:14'),
(5, 'Pick-17', '2', '11', '12', '1', '3', '30', '30', '2019-11-14 08:09:55', '2019-11-14 08:34:03'),
(6, 'Pick-18', 'A33', '10', '', '0', '3', '30', '0', '2019-11-15 06:57:11', NULL),
(7, 'Pick-18', '2', '11', '2', '0', '3', '30', '0', '2019-11-15 06:57:12', NULL),
(8, 'Pick-18', 'A33', '10', '', '0', '3', '30', '0', '2019-11-15 06:57:12', NULL),
(9, 'Pick-18', '2', '11', '', '0', '3', '30', '0', '2019-11-15 06:57:14', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pph_item`
--

DROP TABLE IF EXISTS `pph_item`;
CREATE TABLE IF NOT EXISTS `pph_item` (
  `nomor_pengajuan` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `tipe_customer` varchar(255) NOT NULL,
  `barcode_inventory` varchar(255) NOT NULL,
  `harga_jual_lama` varchar(255) NOT NULL,
  `harga_jual_baru` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `id_admin` varchar(255) NOT NULL,
  `id_edit_admin` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pph_item`
--

INSERT INTO `pph_item` (`nomor_pengajuan`, `tanggal`, `tipe_customer`, `barcode_inventory`, `harga_jual_lama`, `harga_jual_baru`, `quantity`, `keterangan`, `id_admin`, `id_edit_admin`, `created_at`, `updated_at`) VALUES
('PH-001', '2019-10-09', '3', 'A33', '6000', '6500', '2', 'Oke', '', '', '2019-10-01 05:17:46', NULL),
('PH-002', '2019-10-05', '2', 'A33', '14000', '12000', '11', 'idk', '', '', '2019-10-01 06:09:53', NULL),
('PH-002', '2019-10-05', '2', 'A33', '10000', '9000', '4', 'wakaranai', '', '', '2019-10-01 06:09:54', NULL),
('PH-19110002', '2019-11-13', '2', 'A33', '10000', '2', '2', 'adwad', '', '', '2019-11-12 14:44:26', NULL),
('PH-1', '2019-10-31', '2', 'A33', '10000', '2', '2', 'adw', '', '', '2019-11-12 14:44:58', NULL),
('PH-10004564', '2019-10-31', '1', '2', '4000', '2', '2', '2', '', '', '2019-11-12 15:08:02', NULL),
('PH-10004565', '2019-11-14', '2', '1', '2000', '5000', '10', 'Tidak Laku', '8', '0', '2019-11-14 02:48:35', NULL),
('PH-10004565', '2019-11-14', '2', '2', '2', '4', '10', 'Tidak Laku', '8', '0', '2019-11-14 02:48:36', NULL),
('PH-10004566', '2019-11-15', '2', 'A33', '2', '20000', '5', 'Mahal', '30', '0', '2019-11-15 06:39:49', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `profil`
--

DROP TABLE IF EXISTS `profil`;
CREATE TABLE IF NOT EXISTS `profil` (
  `id` int(60) NOT NULL AUTO_INCREMENT,
  `kode_cabang` varchar(255) NOT NULL,
  `nama_cabang` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `alamat2` varchar(255) NOT NULL,
  `kota` varchar(255) NOT NULL,
  `kodepos` varchar(255) NOT NULL,
  `no_telp` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `chief` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `id_edit_admin` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `profil`
--

INSERT INTO `profil` (`id`, `kode_cabang`, `nama_cabang`, `alamat`, `alamat2`, `kota`, `kodepos`, `no_telp`, `no_hp`, `chief`, `logo`, `id_edit_admin`) VALUES
(1, '384', 'Kartonyonow', 'jl. mulawarman 11', 'RT 01 RW 12', 'Ngawie', '53456', '02414752737', '08245465637', 'Latipe', '100ox.png', '30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `purchase_order`
--

DROP TABLE IF EXISTS `purchase_order`;
CREATE TABLE IF NOT EXISTS `purchase_order` (
  `kode` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `tanggal_approve` date DEFAULT NULL,
  `kode_supplier` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `kota` varchar(255) NOT NULL,
  `kodepos` varchar(255) NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `handphone` varchar(255) NOT NULL,
  `dpp` varchar(255) NOT NULL,
  `uangmuka_beli` varchar(255) NOT NULL DEFAULT '0',
  `tipe_ppn` varchar(2) DEFAULT NULL,
  `tipe_ppn_input` varchar(255) NOT NULL,
  `total_harga` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `keterangan_approve` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'Belum Approve',
  `id_admin` varchar(255) NOT NULL,
  `id_edit_admin` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`kode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `purchase_order`
--

INSERT INTO `purchase_order` (`kode`, `tanggal`, `tanggal_approve`, `kode_supplier`, `nama`, `alamat`, `kota`, `kodepos`, `telepon`, `handphone`, `dpp`, `uangmuka_beli`, `tipe_ppn`, `tipe_ppn_input`, `total_harga`, `keterangan`, `keterangan_approve`, `status`, `id_admin`, `id_edit_admin`, `created_at`, `updated_at`) VALUES
('PO-00000031', '2019-11-21', '2019-11-19', 'SP-003', 'Kartonyonow', 'jl. mulawarman 11', 'Ngawie', '53456', '02414752737', '08245465637', '42728', '0', 'E', '5472', '48200', 'wahahahahahahaha', '', 'Approve', '30', '0', '2019-11-17 00:10:57', '2019-11-19 09:28:45'),
('PO-00000032', '2019-11-20', '2019-11-19', 'SP-003', 'Kartonyonow', 'jl. mulawarman 11', 'Ngawie', '53456', '02414752737', '08245465637', '9790', '0', 'I', '890', '10680', 'anjaay', '', 'Approve', '30', '0', '2019-11-17 00:30:02', '2019-11-19 09:28:46'),
('PO-00000033', '2019-11-22', '2019-11-19', 'SP-001', 'Kartonyonow', 'jl. mulawarman 11', 'Ngawie', '53456', '02414752737', '08245465637', '3520', '0', 'I', '138', '3520', 'awdad', '', 'Approve', '30', '0', '2019-11-18 05:43:45', '2019-11-19 09:28:46'),
('PO-00000034', '2019-11-16', '2019-11-19', 'SP-009', 'Kartonyonow', 'jl. mulawarman 11', 'Ngawie', '53456', '02414752737', '08245465637', '2100000', '0', 'E', '210000', '2310000', 'Tidak Laku', '', 'Closed', '30', '0', '2019-11-19 09:27:54', '2019-11-19 09:33:46'),
('PO-00000035', '2019-11-19', '2019-11-19', 'SP-009', 'Kartonyonow', 'jl. mulawarman 11', 'Ngawie', '53456', '02414752737', '08245465637', '1000000', '0', 'I', '90909', '1090909', '', '', 'Approve', '30', '0', '2019-11-19 09:38:39', '2019-11-19 09:47:02'),
('PO-00000036', '2019-11-19', '2019-11-19', 'SP-003', 'Kartonyonow', 'jl. mulawarman 11', 'Ngawie', '53456', '02414752737', '08245465637', '2000000', '0', 'I', '181818', '2181818', '', '', 'Closed', '30', '0', '2019-11-19 09:46:36', '2019-11-19 09:50:27'),
('PO-001', '2019-10-15', '2019-11-15', 'SP-001', 'Kartonyono', 'jl. mulawarman 11', 'Ngawi', '53456', '02414752737', '08245465637', '12000', '0', 'I', '1090.91', '7948.09', 'AWOKKOA', '', 'Closed', '', '30', '2019-10-04 01:20:18', '2019-11-19 01:28:46'),
('PO-002', '2019-10-16', '2019-11-15', 'SP-001', 'Kartonyono', 'jl. mulawarman 11', 'Ngawi', '53456', '02414752737', '08245465637', '92', '0', 'T', '0', '92', 'adwadwad', '', 'Closed', '', '', '2019-10-24 01:18:31', '2019-11-19 01:28:53'),
('PO-003', '2019-10-05', '2019-11-15', 'SP-001', 'Kartonyono', 'jl. mulawarman 11', 'Ngawi', '53456', '02414752737', '08245465637', '16', '0', 'T', '0', '16', 'adwadad', '', 'Closed', '', '', '2019-10-24 01:28:57', '2019-11-19 01:28:28'),
('PO-004', '2019-10-11', '2019-11-15', 'SP-001', 'Kartonyono', 'jl. mulawarman 11', 'Ngawi', '53456', '02414752737', '08245465637', '2155744', '0', 'T', '0', '2155744', 'adwad', '', 'Closed', '', '', '2019-10-24 01:30:36', '2019-11-19 01:28:32'),
('PO-005', '2019-10-12', '2019-11-15', 'SP-001', 'Kartonyono', 'jl. mulawarman 11', 'Ngawi', '53456', '02414752737', '08245465637', '56000', '0', 'T', '0', '56000', 'adwadwad', '', 'Closed', '', '', '2019-10-24 04:27:50', '2019-11-19 08:52:57'),
('PO-006', '2019-10-26', '2019-11-15', 'SP-001', 'Kartonyono', 'jl. mulawarman 11', 'Ngawi', '53456', '02414752737', '08245465637', '373296', '0', 'T', '0', '159984.00', 'awwwa', '', 'Closed', '', '', '2019-10-29 01:44:03', '2019-11-19 09:21:26'),
('PO-10000003', '2019-11-08', '2019-11-19', 'SP-001', 'Kartonyonow', 'jl. mulawarman 11', 'Ngawie', '53456', '02414752737', '08245465637', '121230', '0', 'E', '10%', '109107.00', '121232131123123', '', 'Batal', '30', '0', '2019-11-14 07:17:54', '2019-11-19 09:28:47'),
('UP-1', '2019-11-09', '2019-11-19', 'SP-001', 'Kartonyonow', 'jl. mulawarman 11', 'Ngawie', '53456', '02414752737', '08245465637', '988784', '0', 'I', '89889.45454545454', '898894.55', 'kdoaskdaowdk', '', 'Approve', '30', '0', '2019-11-16 08:28:11', '2019-11-19 09:28:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `purchase_order_item`
--

DROP TABLE IF EXISTS `purchase_order_item`;
CREATE TABLE IF NOT EXISTS `purchase_order_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_po` varchar(255) NOT NULL,
  `barcode_inventory` varchar(255) NOT NULL,
  `kode_item_supplier` varchar(255) DEFAULT NULL,
  `nama_inventory` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `harga_satuan` varchar(255) NOT NULL,
  `satuan` varchar(255) NOT NULL,
  `id_admin` varchar(255) NOT NULL,
  `id_edit_admin` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `purchase_order_item`
--

INSERT INTO `purchase_order_item` (`id`, `kode_po`, `barcode_inventory`, `kode_item_supplier`, `nama_inventory`, `quantity`, `harga_satuan`, `satuan`, `id_admin`, `id_edit_admin`, `created_at`, `updated_at`) VALUES
(10, 'PO-004', '2', 'aawdasd', 'Priz', '232', '2323', '7', '', '', '2019-10-24 01:30:36', NULL),
(11, 'PO-004', '2', 'aawdasd', 'Priz', '232', '2323', '7', '', '', '2019-10-24 01:30:36', NULL),
(12, 'PO-004', '2', 'aawdasd', 'Priz', '232', '2323', '7', '', '', '2019-10-24 01:30:36', NULL),
(13, 'PO-004', '2', 'aawdasd', 'Priz', '232', '2323', '7', '', '', '2019-10-24 01:30:36', NULL),
(14, 'PO-003', 'A33', '4', 'Sepatu', '2', '2', '', '', '', '2019-10-24 02:17:37', NULL),
(15, 'PO-003', 'A33', '4', 'Sepatu', '2', '2', '', '', '', '2019-10-24 02:17:38', NULL),
(16, 'PO-003', 'A33', '4', 'Sepatu', '2', '2', '', '', '', '2019-10-24 02:17:38', NULL),
(17, 'PO-003', 'A33', '4', 'Sepatu', '2', '2', '', '', '', '2019-10-24 02:17:38', NULL),
(18, 'PO-002', 'A33', '2', 'Sepatu', '23', '2', '', '', '', '2019-10-24 02:17:56', NULL),
(19, 'PO-002', 'A33', '2', 'Sepatu', '23', '2', '', '', '', '2019-10-24 02:17:56', NULL),
(23, 'PO-005', '2', '44', 'Priz', '15', '2000', '7', '', '', '2019-10-24 04:27:50', NULL),
(24, 'PO-005', '3', '12', 'Randu', '13', '2000', '6', '', '', '2019-10-24 04:27:50', NULL),
(25, 'PO-006', 'A33', '232', 'Sepatu', '22', '2424', '4', '', '', '2019-10-29 01:44:03', NULL),
(26, 'PO-006', 'A33', '232', 'Sepatu', '22', '2424', '4', '', '', '2019-10-29 01:44:03', NULL),
(27, 'PO-006', 'A33', '232', 'Sepatu', '22', '2424', '4', '', '', '2019-10-29 01:44:03', NULL),
(28, 'PO-006', 'A33', '232', 'Sepatu', '22', '2424', '4', '', '', '2019-10-29 01:44:03', NULL),
(29, 'PO-006', 'A33', '232', 'Sepatu', '22', '2424', '4', '', '', '2019-10-29 01:44:03', NULL),
(30, 'PO-006', 'A33', '232', 'Sepatu', '22', '2424', '4', '', '', '2019-10-29 01:44:03', NULL),
(31, 'PO-006', 'A33', '232', 'Sepatu', '22', '2424', '4', '', '', '2019-10-29 01:44:03', NULL),
(32, 'PO-10000003', 'A33', '123', 'Sepatu', '10', '12123', '4', '30', '0', '2019-11-14 07:17:54', NULL),
(33, 'PO-001', 'A33', '23', 'Sepatu', '23', '131', '', '', '', '2019-11-14 07:28:39', NULL),
(34, 'PO-001', 'A33', '23', 'Sepatu', '23', '131', '', '', '', '2019-11-14 07:28:39', NULL),
(35, 'PO-001', 'A33', '23', 'Sepatu', '23', '131', '', '', '', '2019-11-14 07:28:39', NULL),
(36, '', 'A33', 'SPT', 'Sepatu', '20', '15000', '4', '30', '0', '2019-11-15 07:12:25', NULL),
(37, 'UP-1', '2', 'adwad', 'Priz', '2131', '232', '7', '30', '0', '2019-11-16 08:28:11', NULL),
(38, 'UP-1', '3', 'adwad', 'Randu', '2131', '232', '6', '30', '0', '2019-11-16 08:28:11', NULL),
(39, 'PO-00000031', '2R', '232', 'Priz', '29', '0232', '7', '30', '0', '2019-11-17 00:10:57', NULL),
(40, 'PO-00000031', '2R', '232', 'Priz', '29', '0232', '7', '30', '0', '2019-11-17 00:10:57', NULL),
(41, 'PO-00000031', '2R', '232', 'Priz', '29', '0232', '7', '30', '0', '2019-11-17 00:10:57', NULL),
(42, 'PO-00000031', '2R', '232', 'Priz', '29', '0232', '7', '30', '0', '2019-11-17 00:10:57', NULL),
(43, 'PO-00000031', '2R', '232', 'Priz', '29', '0232', '7', '30', '0', '2019-11-17 00:10:57', NULL),
(44, 'PO-00000031', '2R', '232', 'Priz', '29', '0232', '7', '30', '0', '2019-11-17 00:10:57', NULL),
(45, 'PO-00000031', '2R', '232', 'Priz', '3', '4000', '7', '30', '0', '2019-11-17 00:10:57', NULL),
(46, 'PO-00000031', '2R', '232', 'Priz', '3', '4000', '7', '30', '0', '2019-11-17 00:10:58', NULL),
(47, 'PO-00000031', '2R', '232', 'Priz', '3', '4000', '7', '30', '0', '2019-11-17 00:10:58', NULL),
(48, 'PO-00000031', '2R', '232', 'Priz', '3', '4000', '7', '30', '0', '2019-11-17 00:10:58', NULL),
(49, 'PO-00000032', 'A13', '23', 'Celana', '3', '330', '4', '30', '0', '2019-11-17 00:30:02', NULL),
(50, 'PO-00000032', '2', '23', 'Priz', '4', '2200', '7', '30', '0', '2019-11-17 00:30:02', NULL),
(51, 'PO-00000033', '1', '2', 'Ret', '4', '5', '4', '30', '0', '2019-11-18 05:43:45', NULL),
(52, 'PO-00000033', '1', '2', 'Ret', '4', '5', '4', '30', '0', '2019-11-18 05:43:45', NULL),
(53, 'PO-00000033', 'A13', '22', 'Celana', '500', '3', '4', '30', '0', '2019-11-18 05:43:45', NULL),
(54, 'PO-00000033', '5', '6', 'w', '400', '5', '4', '30', '0', '2019-11-18 05:43:46', NULL),
(55, 'PO-00000034', 'A23', '23123', 'Baju', '30', '20000', '4', '30', '0', '2019-11-19 09:27:55', NULL),
(56, 'PO-00000034', 'A33', '23123', 'Sepatu', '30', '50000', '4', '30', '0', '2019-11-19 09:27:55', NULL),
(57, 'PO-00000035', 'A23', '23123', 'Baju', '10', '100000', '4', '30', '0', '2019-11-19 09:38:39', NULL),
(58, 'PO-00000036', 'A23', '23123', 'Baju', '20', '100000', '4', '30', '0', '2019-11-19 09:46:36', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `purchasing`
--

DROP TABLE IF EXISTS `purchasing`;
CREATE TABLE IF NOT EXISTS `purchasing` (
  `kode` varchar(255) NOT NULL,
  `nomor_surat_jalan` varchar(255) NOT NULL,
  `no_invoice` varchar(255) NOT NULL,
  `kode_supplier` varchar(255) NOT NULL,
  `kode_po` varchar(255) NOT NULL,
  `diterima_oleh` varchar(255) NOT NULL,
  `tanggal_terima` date NOT NULL,
  `tanggal_jatuh_tempo` date NOT NULL,
  `total_quantity` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `outstanding` varchar(255) NOT NULL,
  `id_admin` varchar(255) NOT NULL,
  `id_edit_admin` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`kode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `purchasing`
--

INSERT INTO `purchasing` (`kode`, `nomor_surat_jalan`, `no_invoice`, `kode_supplier`, `kode_po`, `diterima_oleh`, `tanggal_terima`, `tanggal_jatuh_tempo`, `total_quantity`, `total`, `outstanding`, `id_admin`, `id_edit_admin`, `created_at`, `updated_at`) VALUES
('PU-002', 'SJ-001', 'SI-00000007', 'SP-009', 'PO-00000035', 'Samsulus', '2019-11-19', '2019-11-25', '10', '1000000', '1090909', '30', '0', '2019-11-19 09:39:29', NULL),
('PU-003', 'SJ-006', 'SI-00000007', 'SP-009', 'PO-00000034', 'Samsulus_gan', '2019-11-19', '2019-11-25', '60', '2100000', '2310000', '30', '0', '2019-11-19 09:33:46', NULL),
('PU-004', 'SJ-001', '362689139218', 'SP-001', 'PO-005', 'Samsulus', '2019-11-19', '2019-11-24', '28', '56000', '56000', '30', '0', '2019-11-19 08:52:57', NULL),
('PU-005', 'SJ-004', '21739232343', 'SP-001', 'PO-006', 'Samsulis', '2019-11-19', '2019-11-24', '154', '373296', '373296', '30', '0', '2019-11-19 09:21:26', NULL),
('PU-008', 'SJ-008', 'SI-00000007', 'SP-003', 'PO-00000036', 'Samsulis', '2019-11-19', '2019-11-27', '20', '2000000', '2181818', '30', '0', '2019-11-19 09:50:27', NULL),
('PU-5000', 'SJII-222', 'OKKO-300', 'SP-001', 'PO-00000033', 'Hanif', '2019-11-18', '2019-11-23', '908', '3540', '0', '30', '30', '2019-11-18 05:45:40', '2019-11-19 06:14:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `purchasing_item`
--

DROP TABLE IF EXISTS `purchasing_item`;
CREATE TABLE IF NOT EXISTS `purchasing_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_pu` varchar(255) NOT NULL,
  `barcode` varchar(255) NOT NULL,
  `quantity_order` varchar(255) NOT NULL,
  `quantity_terima` varchar(255) NOT NULL,
  `harga_satuan` varchar(255) NOT NULL,
  `id_admin` varchar(255) NOT NULL,
  `id_edit_admin` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `purchasing_item`
--

INSERT INTO `purchasing_item` (`id`, `kode_pu`, `barcode`, `quantity_order`, `quantity_terima`, `harga_satuan`, `id_admin`, `id_edit_admin`, `created_at`, `updated_at`) VALUES
(115, 'OKKO-300', '1', '4', '4', '5', '30', '0', '2019-11-18 05:45:40', NULL),
(116, 'OKKO-300', '1', '4', '4', '5', '30', '0', '2019-11-18 05:45:40', NULL),
(117, 'OKKO-300', 'A13', '500', '500', '3', '30', '0', '2019-11-18 05:45:40', NULL),
(118, 'OKKO-300', '5', '400', '400', '5', '30', '0', '2019-11-18 05:45:40', NULL),
(119, '362689139218', '2', '2131', '2131', '232', '30', '0', '2019-11-19 08:43:47', NULL),
(120, '362689139218', '2', '2131', '2131', '232', '30', '0', '2019-11-19 08:46:13', NULL),
(121, '362689139218', '2', '15', '15', '2000', '30', '0', '2019-11-19 08:52:57', NULL),
(122, '362689139218', '3', '13', '13', '2000', '30', '0', '2019-11-19 08:52:57', NULL),
(123, '21739232343', 'A33', '22', '22', '2424', '30', '0', '2019-11-19 09:21:25', NULL),
(124, '21739232343', 'A33', '22', '22', '2424', '30', '0', '2019-11-19 09:21:26', NULL),
(125, '21739232343', 'A33', '22', '22', '2424', '30', '0', '2019-11-19 09:21:26', NULL),
(126, '21739232343', 'A33', '22', '22', '2424', '30', '0', '2019-11-19 09:21:26', NULL),
(127, '21739232343', 'A33', '22', '22', '2424', '30', '0', '2019-11-19 09:21:26', NULL),
(128, '21739232343', 'A33', '22', '22', '2424', '30', '0', '2019-11-19 09:21:26', NULL),
(129, '21739232343', 'A33', '22', '22', '2424', '30', '0', '2019-11-19 09:21:26', NULL),
(130, '324324235325', 'A23', '30', '30', '20000', '30', '0', '2019-11-19 09:31:32', NULL),
(131, '324324235325', 'A33', '30', '30', '50000', '30', '0', '2019-11-19 09:31:32', NULL),
(132, '7892739132', '1', '4', '4', '5', '30', '0', '2019-11-19 09:32:32', NULL),
(133, '7892739132', '1', '4', '4', '5', '30', '0', '2019-11-19 09:32:32', NULL),
(134, '7892739132', 'A13', '500', '500', '3', '30', '0', '2019-11-19 09:32:32', NULL),
(135, '7892739132', '5', '400', '400', '5', '30', '0', '2019-11-19 09:32:33', NULL),
(136, 'SI-00000007', 'A23', '30', '30', '20000', '30', '0', '2019-11-19 09:33:46', NULL),
(137, 'SI-00000007', 'A33', '30', '30', '50000', '30', '0', '2019-11-19 09:33:46', NULL),
(138, 'SI-00000007', '1', '4', '4', '5', '30', '0', '2019-11-19 09:35:27', NULL),
(139, 'SI-00000007', '1', '4', '4', '5', '30', '0', '2019-11-19 09:35:27', NULL),
(140, 'SI-00000007', 'A13', '500', '500', '3', '30', '0', '2019-11-19 09:35:27', NULL),
(141, 'SI-00000007', '5', '400', '400', '5', '30', '0', '2019-11-19 09:35:27', NULL),
(142, '362689139218', '1', '4', '4', '5', '30', '0', '2019-11-19 09:37:11', NULL),
(143, '362689139218', '1', '4', '4', '5', '30', '0', '2019-11-19 09:37:11', NULL),
(144, '362689139218', 'A13', '500', '500', '3', '30', '0', '2019-11-19 09:37:12', NULL),
(145, '362689139218', '5', '400', '400', '5', '30', '0', '2019-11-19 09:37:12', NULL),
(146, '12345', '2R', '29', '29', '0232', '30', '0', '2019-11-19 09:38:06', NULL),
(147, '12345', '2R', '29', '29', '0232', '30', '0', '2019-11-19 09:38:06', NULL),
(148, '12345', '2R', '29', '29', '0232', '30', '0', '2019-11-19 09:38:06', NULL),
(149, '12345', '2R', '29', '29', '0232', '30', '0', '2019-11-19 09:38:06', NULL),
(150, '12345', '2R', '29', '29', '0232', '30', '0', '2019-11-19 09:38:06', NULL),
(151, '12345', '2R', '29', '29', '0232', '30', '0', '2019-11-19 09:38:06', NULL),
(152, '12345', '2R', '3', '3', '4000', '30', '0', '2019-11-19 09:38:06', NULL),
(153, '12345', '2R', '3', '3', '4000', '30', '0', '2019-11-19 09:38:06', NULL),
(154, '12345', '2R', '3', '3', '4000', '30', '0', '2019-11-19 09:38:07', NULL),
(155, '12345', '2R', '3', '3', '4000', '30', '0', '2019-11-19 09:38:07', NULL),
(156, 'SI-00000007', 'A23', '10', '10', '100000', '30', '0', '2019-11-19 09:39:29', NULL),
(157, 'SI-00000007', 'A23', '20', '20', '100000', '30', '0', '2019-11-19 09:50:27', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `retur_pembelian_barang`
--

DROP TABLE IF EXISTS `retur_pembelian_barang`;
CREATE TABLE IF NOT EXISTS `retur_pembelian_barang` (
  `nomor_retur` varchar(255) NOT NULL,
  `nomor_invoice` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `kode_supplier` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `id_admin` varchar(255) NOT NULL,
  `id_edit_admin` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`nomor_retur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `retur_pembelian_barang`
--

INSERT INTO `retur_pembelian_barang` (`nomor_retur`, `nomor_invoice`, `tanggal`, `kode_supplier`, `keterangan`, `id_admin`, `id_edit_admin`, `created_at`, `updated_at`) VALUES
('RTR-3', 'Hanif Setyananda', '2019-11-06', 'SP-002', 'adwadwa', '', '', '2019-11-07 04:15:41', NULL),
('RTR-4', '1234', '2019-11-14', 'SP-003', 'awokawkawko', '30', '0', '2019-11-14 03:59:55', NULL),
('RTR-5', '1234', '2019-11-14', 'SP-002', 'wasdnasnoiwa', '30', '0', '2019-11-14 04:03:00', NULL),
('RTR-6', '12345', '2019-11-14', 'SP-001', 'saSASwqds', '30', '0', '2019-11-14 04:05:05', NULL),
('RTR-7', '1121455', '2019-11-15', 'SP-001', 'bayar', '30', '0', '2019-11-15 07:07:04', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `retur_pembelian_barang_item`
--

DROP TABLE IF EXISTS `retur_pembelian_barang_item`;
CREATE TABLE IF NOT EXISTS `retur_pembelian_barang_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `barcode` varchar(255) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `nomor_retur` varchar(255) NOT NULL,
  `id_admin` varchar(255) NOT NULL,
  `id_edit_admin` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `retur_pembelian_barang_item`
--

INSERT INTO `retur_pembelian_barang_item` (`id`, `barcode`, `jumlah`, `keterangan`, `nomor_retur`, `id_admin`, `id_edit_admin`, `created_at`, `updated_at`) VALUES
(1, '3', '2', 'adwadwa', 'RTR-3', '', '', '2019-11-07 04:15:42', NULL),
(2, '2', '3', 'anjayyy', 'RTR-4', '', '0', '2019-11-14 03:59:55', NULL),
(3, '3', '10', 'awsokakwak', 'RTR-5', '', '0', '2019-11-14 04:03:01', NULL),
(4, '3', '30', 'sddaweeaads', 'RTR-6', '30', '0', '2019-11-14 04:05:05', NULL),
(5, '2R', '2', 'elek', 'RTR-7', '30', '0', '2019-11-15 07:07:04', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sales_invoice`
--

DROP TABLE IF EXISTS `sales_invoice`;
CREATE TABLE IF NOT EXISTS `sales_invoice` (
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
  `outstanding` varchar(255) NOT NULL,
  `id_admin` varchar(255) NOT NULL,
  `id_edit_admin` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`nomor_invoice`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sales_invoice`
--

INSERT INTO `sales_invoice` (`nomor_invoice`, `tanggal`, `kode_customer`, `data`, `catatan`, `surat_jalan`, `kwitansi`, `subtotal`, `ongkir`, `ppn`, `tipe_ppn`, `total`, `outstanding`, `id_admin`, `id_edit_admin`, `created_at`, `updated_at`) VALUES
('SI-00000002', '2019-11-01', 'CST-001', '[\"Pack-1\"]', 'adwadwa', 1, 1, '280008', '22', '0', 't', '280030', '0', '30', '0', '2019-11-15 07:18:19', '2019-11-16 07:52:57'),
('SI-00000003', '2019-11-22', 'CST-001', '[\"Pack-1\"]', 'adawdawdwadawd', 1, 1, '112040', '33', '10185', 'i', '122258', '122258', '30', '0', '2019-11-15 07:35:17', NULL),
('SI-00000004', '2019-11-20', 'CST-001', '[\"Pack-1\"]', 'awddwad', 1, 1, '112040', '2323', '10185', 'i', '124548', '124548', '30', '0', '2019-11-15 07:36:18', NULL),
('SI-00000005', '2019-11-21', 'CST-001', '[\"Pack-1\"]', 'adwad', 1, 1, '112040', '21313', '11204', 'e', '144557', '144557', '30', '0', '2019-11-15 07:37:34', NULL),
('SI-00000006', '2019-11-09', 'CST-001', '[\"Pack-1\"]', 'awdad', 1, 1, '112040', '123213', '11204', 'e', '246457', '246457', '30', '0', '2019-11-15 07:38:26', NULL),
('SI-00000007', '2019-11-16', 'CST-2', '[\"Pack-1\"]', 'ANJAYYYYY', 1, 1, '112040', '20000', '10185', 'i', '142225', '142225', '30', '0', '2019-11-16 07:25:55', NULL),
('SI-00000008', '2019-11-11', 'CST-001', '[\"Pack-1\"]', 'mxmnsklnasdas', 1, 1, '112040', '1234', '10185', 'i', '123459', '123459', '30', '0', '2019-11-16 08:31:22', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sales_order`
--

DROP TABLE IF EXISTS `sales_order`;
CREATE TABLE IF NOT EXISTS `sales_order` (
  `nomor_so` varchar(255) NOT NULL,
  `tanggal_so` date NOT NULL,
  `kode_customer` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `uangmuka_jual` varchar(255) NOT NULL,
  `id_admin` varchar(255) NOT NULL,
  `id_edit_admin` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`nomor_so`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sales_order`
--

INSERT INTO `sales_order` (`nomor_so`, `tanggal_so`, `kode_customer`, `keterangan`, `total`, `uangmuka_jual`, `id_admin`, `id_edit_admin`, `created_at`, `updated_at`) VALUES
('SO-001', '2019-10-01', 'CST-001', 'Lve', '55', '', '', '', '2019-10-03 02:32:20', '2019-10-03 04:25:13'),
('SO-002', '2019-10-01', 'CST-001', 'ww', '11', '', '', '', '2019-10-03 07:18:54', '2019-10-03 07:20:56'),
('SO-003', '2019-10-09', 'CST-001', 'asdawdwad', '66', '', '', '', '2019-10-03 07:20:44', NULL),
('SO-004', '2019-10-18', 'CST-001', 'adwad', '8', '', '', '', '2019-10-04 03:42:47', NULL),
('SO-131231', '2019-11-21', 'CST-001', 'KETERAGAN', '4000', '', '30', '0', '2019-11-14 04:06:10', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sales_order_item`
--

DROP TABLE IF EXISTS `sales_order_item`;
CREATE TABLE IF NOT EXISTS `sales_order_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomor_so` varchar(255) NOT NULL,
  `barcode` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `id_admin` varchar(255) NOT NULL,
  `id_edit_admin` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sales_order_item`
--

INSERT INTO `sales_order_item` (`id`, `nomor_so`, `barcode`, `quantity`, `id_admin`, `id_edit_admin`, `created_at`, `updated_at`) VALUES
(1, 'SO-001', 'A33', '55', '', '', '2019-10-03 04:25:14', NULL),
(2, 'SO-003', 'A33', '22', '', '', '2019-10-03 07:20:44', NULL),
(3, 'SO-003', 'A33', '44', '', '', '2019-10-03 07:20:45', NULL),
(4, 'SO-002', 'A33', '2', '', '', '2019-10-03 07:20:56', NULL),
(5, 'SO-002', 'A33', '4', '', '', '2019-10-03 07:20:56', NULL),
(6, 'SO-002', 'A33', '5', '', '', '2019-10-03 07:20:56', NULL),
(7, 'SO-004', 'A33', '2', '', '', '2019-10-04 03:42:47', NULL),
(8, 'SO-004', 'A33', '2', '', '', '2019-10-04 03:42:47', NULL),
(9, 'SO-004', 'A33', '2', '', '', '2019-10-04 03:42:47', NULL),
(10, 'SO-004', 'A33', '2', '', '', '2019-10-04 03:42:47', NULL),
(11, 'SO-131231', '1', '1000', '30', '0', '2019-11-14 04:06:10', NULL),
(12, 'SO-131231', '2', '1000', '30', '0', '2019-11-14 04:06:11', NULL),
(13, 'SO-131231', '3', '1000', '30', '0', '2019-11-14 04:06:11', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `satuan`
--

DROP TABLE IF EXISTS `satuan`;
CREATE TABLE IF NOT EXISTS `satuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `satuan` varchar(50) NOT NULL,
  `id_admin` varchar(255) NOT NULL,
  `id_edit_admin` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `satuan`
--

INSERT INTO `satuan` (`id`, `satuan`, `id_admin`, `id_edit_admin`) VALUES
(4, 'Pcs', '', ''),
(5, 'Lusin', '', ''),
(6, 'Gram', '', ''),
(7, 'Kilogram', '', ''),
(8, 'celcius', '', ''),
(12, 'uwre', '8', '30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `stock_opname`
--

DROP TABLE IF EXISTS `stock_opname`;
CREATE TABLE IF NOT EXISTS `stock_opname` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) NOT NULL,
  `barcode_inventory` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `approved` int(1) NOT NULL,
  `id_admin` varchar(255) NOT NULL,
  `id_edit_admin` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `stock_opname`
--

INSERT INTO `stock_opname` (`id`, `kode`, `barcode_inventory`, `quantity`, `approved`, `id_admin`, `id_edit_admin`, `created_at`, `updated_at`) VALUES
(13, 'ST-00000003', '1', '9', 0, '30', '0', '2019-11-15 08:09:31', NULL),
(14, 'ST-00000003', '1', '6', 0, '30', '0', '2019-11-15 08:09:31', NULL),
(15, 'ST-00000004', '2', '6', 0, '30', '0', '2019-11-15 08:19:13', NULL),
(16, 'ST-00000004', '2', '9', 0, '30', '0', '2019-10-15 08:19:13', '2019-11-16 05:13:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

DROP TABLE IF EXISTS `supplier`;
CREATE TABLE IF NOT EXISTS `supplier` (
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
  `saldo_awal` varchar(255) DEFAULT '0',
  `saldo_jalan` varchar(255) NOT NULL DEFAULT '0',
  `tanggal_beli_akhir` date NOT NULL,
  `id_admin` varchar(255) NOT NULL,
  `id_edit_admin` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`kode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`kode`, `nama`, `alamat`, `kota`, `kodepos`, `telepon`, `fax`, `handphone`, `contact_name`, `email`, `kredit`, `top`, `pkp`, `saldo_awal`, `saldo_jalan`, `tanggal_beli_akhir`, `id_admin`, `id_edit_admin`, `created_at`, `updated_at`) VALUES
('SP-001', 'Hanif Setyananda', 'Jl. Basudewo 1086C\r\nJl. Kanguru Raya No. 2 AB', 'Semarang', '50246', '222', '1', '2222', 'Hanif', 'hanifsetyananda17@gmail.com', 'wadad', '5', 'Y', '2222', '24324', '2019-11-19', '', '', '2019-09-20 17:19:02', '2019-11-19 08:52:57'),
('SP-002', 'Nanda', 'Jl. Klipang Raya 2002', 'Semarang', '5003', '08959904423', '7790', 'Gtau', 'Nanda Reynaldi', 'nanda.reynaldi@gmail.com', '58882', '3', 'Y', '222', '333', '0000-00-00', '', '', '2019-09-20 21:47:28', '2019-11-18 05:11:59'),
('SP-003', 'Uzna', 'Jl. Basudewo 1086C\r\nJl. Kanguru Raya No. 2 AB', 'Semarang', '50246', '213', '123123', '123adadw', 'Hanif', 'hanifsetyananda17@gmail.com', 'adwadwa', '8', 'Y', '123213', '123123', '2019-11-19', '', '10', '2019-11-07 06:55:40', '2019-11-19 09:50:27'),
('SP-009', 'Afiza', 'Jalan rumah kita', 'kota kota', '56388', '08956855555', '86161846464618', '0845684225122', '0544425512', 'rdirofi34@gmail.com', '300', '6', 'Y', '190000000', '8000000', '2019-11-19', '30', '0', '2019-11-15 07:11:18', '2019-11-19 09:33:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier_saldo`
--

DROP TABLE IF EXISTS `supplier_saldo`;
CREATE TABLE IF NOT EXISTS `supplier_saldo` (
  `kode_supplier` varchar(255) NOT NULL,
  `saldo_awal` varchar(255) NOT NULL,
  `saldo_jalan` varchar(255) DEFAULT '0',
  `id_admin` varchar(255) NOT NULL,
  `id_edit_admin` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`kode_supplier`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `supplier_saldo`
--

INSERT INTO `supplier_saldo` (`kode_supplier`, `saldo_awal`, `saldo_jalan`, `id_admin`, `id_edit_admin`, `created_at`, `updated_at`) VALUES
('SP-002', '2222', '0', '', '', '2019-11-04 07:15:42', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tipe_barang`
--

DROP TABLE IF EXISTS `tipe_barang`;
CREATE TABLE IF NOT EXISTS `tipe_barang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_barang` varchar(255) NOT NULL,
  `id_admin` varchar(255) NOT NULL,
  `id_edit_admin` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tipe_barang`
--

INSERT INTO `tipe_barang` (`id`, `nama_barang`, `id_admin`, `id_edit_admin`, `created_at`, `update_at`) VALUES
(6, 'Barang baru', '', '30', '2019-09-30 14:19:40', '2019-11-15 06:46:49'),
(7, 'Barang Biasa', '', '', '2019-09-30 14:19:44', NULL),
(8, 'Barang Super Rare', '', '8', '2019-09-30 14:19:48', '2019-11-14 02:50:27'),
(12, 'asd', '8', '8', '2019-11-14 02:40:01', '2019-11-14 02:44:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tr_jurnal`
--

DROP TABLE IF EXISTS `tr_jurnal`;
CREATE TABLE IF NOT EXISTS `tr_jurnal` (
  `nomor` int(11) NOT NULL AUTO_INCREMENT,
  `noref` varchar(20) NOT NULL,
  `novoucher` varchar(20) NOT NULL,
  `nourut` int(11) NOT NULL,
  `kodeakun` varchar(20) NOT NULL,
  `debet` double(15,2) NOT NULL,
  `kredit` double(15,2) NOT NULL,
  `keterangan` varchar(225) NOT NULL,
  `tanggal` date NOT NULL,
  `jenis` char(2) NOT NULL DEFAULT 'JK',
  `posted` char(1) NOT NULL DEFAULT 'T',
  `kodecbg` char(3) NOT NULL DEFAULT '1',
  `userid` varchar(20) NOT NULL,
  `tglrekam` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `wbs` varchar(10) NOT NULL,
  `useredit` varchar(20) NOT NULL,
  `tgledit` timestamp NULL DEFAULT NULL,
  `statusid` int(11) NOT NULL,
  `ket` varchar(100) NOT NULL,
  PRIMARY KEY (`nomor`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tr_jurnal`
--

INSERT INTO `tr_jurnal` (`nomor`, `noref`, `novoucher`, `nourut`, `kodeakun`, `debet`, `kredit`, `keterangan`, `tanggal`, `jenis`, `posted`, `kodecbg`, `userid`, `tglrekam`, `wbs`, `useredit`, `tgledit`, `statusid`, `ket`) VALUES
(17, '', '123456', 1, '401.000', 0.00, 30000.00, 'Hutang beli dg PO', '2019-10-16', 'JK', 'T', '1', 'procurement', '2019-10-15 17:00:00', '', '', '0000-00-00 00:00:00', 0, ''),
(18, '', '123456', 2, '103.100', 27500.00, 0.00, 'Persediaan PU dg PO', '2019-10-16', 'JK', 'T', '1', 'procurement', '2019-10-15 17:00:00', '', '', '0000-00-00 00:00:00', 0, ''),
(19, '', '123456', 4, '700.130', 2500.00, 0.00, 'Ongkir PU dg PO', '2019-10-16', 'JK', 'T', '1', 'procurement', '2019-10-15 17:00:00', '', '', '0000-00-00 00:00:00', 0, ''),
(22, '', 'NKK-00000001', 0, '00204', 0.00, 500.00, 'Bayar BCA', '2019-11-14', '', '', '', '', '2019-11-14 06:44:41', '', '', '0000-00-00 00:00:00', 0, ''),
(23, '', 'NKM-10000001', 0, '00203', 500.00, 0.00, 'Bayar BCA', '2019-11-14', '', '', '', '', '2019-11-14 06:44:41', '', '', '0000-00-00 00:00:00', 0, ''),
(24, '', 'NKK-00000002', 0, '00203', 232.00, 0.00, 'adwadasdawd', '2019-11-15', '', '', '', '', '2019-11-15 06:40:17', '', '', '0000-00-00 00:00:00', 0, ''),
(25, '', 'NKK-00000002', 0, '102.111', 0.00, 232.00, 'adwadasdawd', '2019-11-15', '', '', '', '', '2019-11-15 06:40:17', '', '', '0000-00-00 00:00:00', 0, ''),
(26, '', 'NKK-00000003', 0, '00206', 1200.00, 0.00, 'Utang', '2019-11-15', '', '', '', '', '2019-11-15 07:02:58', '', '', '0000-00-00 00:00:00', 0, ''),
(27, '', 'NKK-00000003', 0, '101.103', 0.00, 1200.00, 'Utang', '2019-11-15', '', '', '', '', '2019-11-15 07:02:58', '', '', '0000-00-00 00:00:00', 0, ''),
(28, '', 'NKM-00000002', 0, '00205', 252555.00, 0.00, 'Oyoy', '2019-11-15', '', '', '', '', '2019-11-15 07:04:10', '', '', '0000-00-00 00:00:00', 0, ''),
(29, '', 'NKM-00000002', 0, '700.101', 0.00, 252555.00, 'Oyoy', '2019-11-15', '', '', '', '', '2019-11-15 07:04:11', '', '', '0000-00-00 00:00:00', 0, ''),
(30, '', 'NKK-00000004', 0, '10080', 0.00, 1000.00, 'Sip', '2019-11-15', '', '', '', '', '2019-11-15 07:06:01', '', '', '0000-00-00 00:00:00', 0, ''),
(31, '', 'NKM-00000003', 0, '00204', 1000.00, 0.00, 'Sip', '2019-11-15', '', '', '', '', '2019-11-15 07:06:01', '', '', '0000-00-00 00:00:00', 0, ''),
(32, '', 'NKK-00000005', 0, '00204', 23131.00, 0.00, 'adwadsada', '2019-11-16', '', '', '', '', '2019-11-16 00:54:14', '', '', '0000-00-00 00:00:00', 0, ''),
(33, '', 'NKK-00000005', 0, '800.000', 0.00, 23131.00, 'adwadsada', '2019-11-16', '', '', '', '', '2019-11-16 00:54:14', '', '', '0000-00-00 00:00:00', 0, ''),
(35, '', 'SI-00000008', 1, '103.100', 112040.00, 0.00, 'Persediaan Sales Invoice', '2019-11-16', 'JK', 'T', '1', '30', '2019-11-16 07:25:55', '', '', '0000-00-00 00:00:00', 0, ''),
(36, '', 'SI-00000008', 2, '104.100', 10185.00, 0.00, 'PPN Beli Sales Invoice', '2019-11-16', 'JK', 'T', '1', '30', '2019-11-16 07:25:55', '', '', '0000-00-00 00:00:00', 0, ''),
(37, '', 'SI-00000008', 3, '700.130', 20000.00, 0.00, 'Ongkir Beli Sales Invoice', '2019-11-16', 'JK', 'T', '1', '30', '2019-11-16 07:25:55', '', '', '0000-00-00 00:00:00', 0, ''),
(38, '', 'SI-00000008', 4, '401.000', 0.00, 142225.00, 'Hutang Sales Invoice', '2019-11-16', 'JK', 'T', '1', '30', '2019-11-16 07:25:55', '', '', '0000-00-00 00:00:00', 0, ''),
(39, '', 'NKM-00000004', 0, '00203', 28003.00, 0.00, 'u3i1hjsad', '2019-11-16', '', '', '', '', '2019-11-16 07:43:08', '', '', '0000-00-00 00:00:00', 0, ''),
(40, '', 'NKM-00000005', 0, '00205', 252027.00, 0.00, 'sadadawd', '2019-11-16', '', '', '', '', '2019-11-16 07:52:58', '', '', '0000-00-00 00:00:00', 0, ''),
(41, '', 'SI-00000009', 1, '103.100', 112040.00, 0.00, 'Persediaan Sales Invoice', '2019-11-16', '', '', '', '30', '2019-11-16 08:31:22', '', '', '0000-00-00 00:00:00', 0, ''),
(42, '', 'SI-00000009', 2, '104.100', 10185.00, 0.00, 'PPN Beli Sales Invoice', '2019-11-16', '', '', '', '30', '2019-11-16 08:31:22', '', '', '0000-00-00 00:00:00', 0, ''),
(43, '', 'SI-00000009', 3, '700.130', 1234.00, 0.00, 'Ongkir Beli Sales Invoice', '2019-11-16', '', '', '', '30', '2019-11-16 08:31:22', '', '', '0000-00-00 00:00:00', 0, ''),
(44, '', 'SI-00000009', 4, '401.000', 0.00, 123459.00, 'Hutang Sales Invoice', '2019-11-16', '', '', '', '30', '2019-11-16 08:31:23', '', '', '0000-00-00 00:00:00', 0, ''),
(45, '', '', 1, '103.100', 373296.00, 0.00, 'Persediaan Sales Invoice', '0000-00-00', 'JK', 'T', '1', '', '2019-11-16 09:52:57', '', '', '0000-00-00 00:00:00', 0, ''),
(46, '', '', 2, '104.100', 0.00, 0.00, 'PPN Beli Sales Invoice', '0000-00-00', 'JK', 'T', '1', '', '2019-11-16 09:52:57', '', '', '0000-00-00 00:00:00', 0, ''),
(47, '', '', 4, '401.000', 0.00, 0.00, 'Hutang Sales Invoice', '0000-00-00', 'JK', 'T', '1', '', '2019-11-16 09:52:57', '', '', '0000-00-00 00:00:00', 0, ''),
(48, '', '7892739132', 1, '103.100', 16.00, 0.00, 'Persediaan Purchasing', '2019-11-16', 'JK', 'T', '1', '30', '2019-11-16 11:40:32', '', '', NULL, 0, ''),
(49, '', '7892739132', 2, '104.100', 0.00, 0.00, 'PPN Purchasing', '2019-11-16', 'JK', 'T', '1', '30', '2019-11-16 11:40:32', '', '', NULL, 0, ''),
(50, '', '7892739132', 4, '401.000', 0.00, 0.00, 'Hutang Purchasing', '2019-11-16', 'JK', 'T', '1', '30', '2019-11-16 11:40:32', '', '', NULL, 0, ''),
(51, '', 'PU-002', 1, '103.100', 16.00, 0.00, 'Persediaan Purchasing', '2019-11-17', 'JK', 'T', '1', '30', '2019-11-17 00:41:26', '', '', NULL, 0, ''),
(55, '', 'PU-003', 1, '103.100', 88368.00, 0.00, 'Persediaan Purchasing', '2019-11-17', 'JK', 'T', '1', '30', '2019-11-17 00:59:45', '', '', NULL, 0, ''),
(56, '', 'PU-003', 2, '104.100', 5472.00, 0.00, 'PPN Purchasing', '2019-11-17', 'JK', 'T', '1', '30', '2019-11-17 00:59:45', '', '', NULL, 0, ''),
(57, '', 'PU-003', 4, '401.000', 0.00, 93840.00, 'Hutang Purchasing', '2019-11-17', 'JK', 'T', '1', '30', '2019-11-17 00:59:45', '', '', NULL, 0, ''),
(58, '', 'PU-2000', 1, '103.100', 9790.00, 0.00, 'Persediaan Purchasing', '2019-11-18', 'JK', 'T', '1', '30', '2019-11-18 05:21:15', '', '', NULL, 0, ''),
(59, '', 'PU-2000', 2, '104.100', 890.00, 0.00, 'PPN Purchasing', '2019-11-18', 'JK', 'T', '1', '30', '2019-11-18 05:21:15', '', '', NULL, 0, ''),
(60, '', 'PU-2000', 4, '401.000', 0.00, 10680.00, 'Hutang Purchasing', '2019-11-18', 'JK', 'T', '1', '30', '2019-11-18 05:21:15', '', '', NULL, 0, ''),
(61, '', 'PU-3000', 1, '103.100', 2155744.00, 0.00, 'Persediaan Purchasing', '2019-11-18', 'JK', 'T', '1', '30', '2019-11-18 05:23:32', '', '', NULL, 0, ''),
(62, '', 'PU-3000', 2, '104.100', 0.00, 0.00, 'PPN Purchasing', '2019-11-18', 'JK', 'T', '1', '30', '2019-11-18 05:23:32', '', '', NULL, 0, ''),
(63, '', 'PU-3000', 4, '401.000', 0.00, 2155744.00, 'Hutang Purchasing', '2019-11-18', 'JK', 'T', '1', '30', '2019-11-18 05:23:32', '', '', NULL, 0, ''),
(64, '', 'PU-5000', 1, '103.100', 3540.00, 0.00, 'Persediaan Purchasing', '2019-11-18', 'JK', 'T', '1', '30', '2019-11-18 05:45:40', '', '', NULL, 0, ''),
(65, '', 'PU-5000', 2, '104.100', 138.00, 0.00, 'PPN Purchasing', '2019-11-18', 'JK', 'T', '1', '30', '2019-11-18 05:45:40', '', '', NULL, 0, ''),
(66, '', 'PU-5000', 4, '401.000', 0.00, 3678.00, 'Hutang Purchasing', '2019-11-18', 'JK', 'T', '1', '30', '2019-11-18 05:45:40', '', '', NULL, 0, ''),
(74, '', 'NKK-00000013', 1, '401.000', 3540.00, 0.00, 'PIUTANG Pelunasan Supplier', '2019-11-19', 'JK', 'T', '1', '30', '2019-11-19 06:10:13', '', '', NULL, 0, ''),
(75, '', 'NKK-00000013', 3, '100.101', 0.00, 3540.00, 'Bank Pelunasan Supplier', '2019-11-19', 'JK', 'T', '1', '30', '2019-11-19 06:10:13', '', '', NULL, 0, ''),
(76, '', 'PU-004', 1, '103.100', 56000.00, 0.00, 'Persediaan Purchasing', '2019-11-19', 'JK', 'T', '1', '30', '2019-11-19 08:52:57', '', '', NULL, 0, ''),
(77, '', 'PU-004', 2, '104.100', 0.00, 0.00, 'PPN Purchasing', '2019-11-19', 'JK', 'T', '1', '30', '2019-11-19 08:52:58', '', '', NULL, 0, ''),
(78, '', 'PU-004', 4, '401.000', 0.00, 56000.00, 'Hutang Purchasing', '2019-11-19', 'JK', 'T', '1', '30', '2019-11-19 08:52:58', '', '', NULL, 0, ''),
(79, '', 'PU-005', 1, '103.100', 373296.00, 0.00, 'Persediaan Purchasing', '2019-11-19', 'JK', 'T', '1', '30', '2019-11-19 09:21:26', '', '', NULL, 0, ''),
(80, '', 'PU-005', 2, '104.100', 0.00, 0.00, 'PPN Purchasing', '2019-11-19', 'JK', 'T', '1', '30', '2019-11-19 09:21:26', '', '', NULL, 0, ''),
(81, '', 'PU-005', 4, '401.000', 0.00, 373296.00, 'Hutang Purchasing', '2019-11-19', 'JK', 'T', '1', '30', '2019-11-19 09:21:26', '', '', NULL, 0, ''),
(82, '', 'PU-003', 1, '103.100', 2100000.00, 0.00, 'Persediaan Purchasing', '2019-11-19', 'JK', 'T', '1', '30', '2019-11-19 09:33:46', '', '', NULL, 0, ''),
(83, '', 'PU-003', 2, '104.100', 210000.00, 0.00, 'PPN Purchasing', '2019-11-19', 'JK', 'T', '1', '30', '2019-11-19 09:33:46', '', '', NULL, 0, ''),
(84, '', 'PU-003', 4, '401.000', 0.00, 2310000.00, 'Hutang Purchasing', '2019-11-19', 'JK', 'T', '1', '30', '2019-11-19 09:33:46', '', '', NULL, 0, ''),
(85, '', 'PU-002', 1, '103.100', 1000000.00, 0.00, 'Persediaan Purchasing', '2019-11-19', 'JK', 'T', '1', '30', '2019-11-19 09:39:29', '', '', NULL, 0, ''),
(86, '', 'PU-002', 2, '104.100', 90909.00, 0.00, 'PPN Purchasing', '2019-11-19', 'JK', 'T', '1', '30', '2019-11-19 09:39:29', '', '', NULL, 0, ''),
(87, '', 'PU-002', 4, '401.000', 0.00, 1090909.00, 'Hutang Purchasing', '2019-11-19', 'JK', 'T', '1', '30', '2019-11-19 09:39:29', '', '', NULL, 0, ''),
(88, '', 'PU-008', 1, '103.100', 2000000.00, 0.00, 'Persediaan Purchasing', '2019-11-19', 'JK', 'T', '1', '30', '2019-11-19 09:50:27', '', '', NULL, 0, ''),
(89, '', 'PU-008', 2, '104.100', 181818.00, 0.00, 'PPN Purchasing', '2019-11-19', 'JK', 'T', '1', '30', '2019-11-19 09:50:27', '', '', NULL, 0, ''),
(90, '', 'PU-008', 4, '401.000', 0.00, 2181818.00, 'Hutang Purchasing', '2019-11-19', 'JK', 'T', '1', '30', '2019-11-19 09:50:27', '', '', NULL, 0, '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
