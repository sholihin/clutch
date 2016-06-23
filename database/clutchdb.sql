-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 23, 2016 at 04:32 
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clutchdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` bigint(10) UNSIGNED NOT NULL,
  `name_admin` varchar(50) CHARACTER SET utf8 NOT NULL,
  `address_admin` text CHARACTER SET utf8 NOT NULL,
  `email_admin` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone_admin` varchar(12) CHARACTER SET utf8 NOT NULL,
  `username_admin` varchar(30) CHARACTER SET utf8 NOT NULL,
  `password_admin` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `name_admin`, `address_admin`, `email_admin`, `phone_admin`, `username_admin`, `password_admin`) VALUES
(7, 'Administrator', 'depok', 'admin@admin.com', '089678720078', 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(5) NOT NULL,
  `id_user` int(5) UNSIGNED NOT NULL,
  `id_produk` int(5) UNSIGNED NOT NULL,
  `id_header_transaction` int(5) UNSIGNED NOT NULL,
  `initial_name` varchar(3) NOT NULL,
  `qty` int(10) NOT NULL,
  `date` datetime NOT NULL,
  `status_pemesan` enum('buy','checkout') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `id_user`, `id_produk`, `id_header_transaction`, `initial_name`, `qty`, `date`, `status_pemesan`) VALUES
(86, 11, 5, 6, 'ads', 1, '2016-06-23 00:21:06', 'checkout'),
(87, 11, 1, 15, 'aaa', 1, '2016-06-23 00:23:46', 'checkout'),
(88, 11, 4, 23, 'add', 1, '2016-06-23 08:38:40', 'checkout'),
(89, 11, 4, 24, 'add', 1, '2016-06-23 08:38:53', 'checkout'),
(90, 11, 4, 25, 'add', 1, '2016-06-23 08:39:13', 'checkout'),
(91, 11, 4, 26, 'add', 1, '2016-06-23 08:39:25', 'checkout'),
(92, 11, 4, 27, 'adf', 1, '2016-06-23 08:57:35', 'checkout'),
(93, 11, 4, 28, 'adf', 1, '2016-06-23 08:58:01', 'checkout'),
(94, 11, 1, 28, 'a', 1, '2016-06-23 08:58:01', 'checkout'),
(95, 11, 4, 29, 'adf', 1, '2016-06-23 08:58:47', 'checkout'),
(96, 11, 1, 29, 'a', 1, '2016-06-23 08:58:47', 'checkout'),
(97, 11, 4, 29, 'asd', 1, '2016-06-23 08:58:47', 'checkout'),
(98, 11, 2, 29, '', 1, '2016-06-23 08:58:47', 'checkout'),
(99, 11, 4, 30, 'adf', 1, '2016-06-23 09:00:48', 'checkout'),
(100, 11, 1, 30, 'a', 1, '2016-06-23 09:00:48', 'checkout'),
(101, 11, 4, 30, 'asd', 1, '2016-06-23 09:00:48', 'checkout'),
(102, 11, 2, 30, '', 1, '2016-06-23 09:00:48', 'checkout'),
(103, 11, 2, 30, '', 5, '2016-06-23 09:00:48', 'checkout'),
(104, 11, 2, 30, '', 1, '2016-06-23 09:00:48', 'checkout'),
(105, 11, 4, 31, 'adf', 1, '2016-06-23 09:01:34', 'checkout'),
(106, 11, 1, 31, 'a', 1, '2016-06-23 09:01:34', 'checkout'),
(107, 11, 4, 31, 'asd', 1, '2016-06-23 09:01:34', 'checkout'),
(108, 11, 2, 31, '', 1, '2016-06-23 09:01:34', 'checkout'),
(109, 11, 2, 31, '', 5, '2016-06-23 09:01:34', 'checkout'),
(110, 11, 2, 31, '', 1, '2016-06-23 09:01:34', 'checkout'),
(111, 11, 4, 32, 'adf', 1, '2016-06-23 09:01:43', 'checkout'),
(112, 11, 1, 32, 'a', 1, '2016-06-23 09:01:43', 'checkout'),
(113, 11, 4, 32, 'asd', 1, '2016-06-23 09:01:43', 'checkout'),
(114, 11, 2, 32, '', 1, '2016-06-23 09:01:43', 'checkout'),
(115, 11, 2, 32, '', 5, '2016-06-23 09:01:43', 'checkout'),
(116, 11, 2, 32, '', 1, '2016-06-23 09:01:43', 'checkout'),
(117, 11, 4, 33, 'adf', 1, '2016-06-23 09:01:43', 'checkout'),
(118, 11, 1, 33, 'a', 1, '2016-06-23 09:01:43', 'checkout'),
(119, 11, 4, 33, 'asd', 1, '2016-06-23 09:01:43', 'checkout'),
(120, 11, 2, 33, '', 1, '2016-06-23 09:01:43', 'checkout'),
(121, 11, 2, 33, '', 5, '2016-06-23 09:01:43', 'checkout'),
(122, 11, 2, 33, '', 1, '2016-06-23 09:01:43', 'checkout'),
(123, 11, 4, 34, 'adf', 1, '2016-06-23 09:01:44', 'checkout'),
(124, 11, 1, 34, 'a', 1, '2016-06-23 09:01:44', 'checkout'),
(125, 11, 4, 34, 'asd', 1, '2016-06-23 09:01:44', 'checkout'),
(126, 11, 2, 34, '', 1, '2016-06-23 09:01:44', 'checkout'),
(127, 11, 2, 34, '', 5, '2016-06-23 09:01:44', 'checkout'),
(128, 11, 2, 34, '', 1, '2016-06-23 09:01:44', 'checkout'),
(129, 11, 4, 35, 'adf', 1, '2016-06-23 09:03:58', 'checkout'),
(130, 11, 1, 35, 'a', 1, '2016-06-23 09:03:58', 'checkout'),
(131, 11, 4, 35, 'asd', 1, '2016-06-23 09:03:58', 'checkout'),
(132, 11, 2, 35, '', 1, '2016-06-23 09:03:58', 'checkout'),
(133, 11, 2, 35, '', 5, '2016-06-23 09:03:58', 'checkout'),
(134, 11, 2, 35, '', 1, '2016-06-23 09:03:58', 'checkout'),
(135, 11, 4, 36, 'adf', 1, '2016-06-23 09:05:08', 'checkout'),
(136, 11, 1, 36, 'a', 1, '2016-06-23 09:05:08', 'checkout'),
(137, 11, 4, 36, 'asd', 1, '2016-06-23 09:05:08', 'checkout'),
(138, 11, 2, 36, '', 1, '2016-06-23 09:05:08', 'checkout'),
(139, 11, 2, 36, '', 5, '2016-06-23 09:05:08', 'checkout'),
(140, 11, 2, 36, '', 1, '2016-06-23 09:05:08', 'checkout'),
(141, 11, 4, 37, 'adf', 1, '2016-06-23 09:07:47', 'checkout'),
(142, 11, 1, 37, 'a', 1, '2016-06-23 09:07:47', 'checkout'),
(143, 11, 4, 37, 'asd', 1, '2016-06-23 09:07:47', 'checkout'),
(144, 11, 2, 37, '', 1, '2016-06-23 09:07:47', 'checkout'),
(145, 11, 2, 37, '', 5, '2016-06-23 09:07:47', 'checkout'),
(146, 11, 2, 37, '', 1, '2016-06-23 09:07:47', 'checkout'),
(147, 11, 4, 38, 'adf', 1, '2016-06-23 09:14:35', 'checkout'),
(148, 11, 1, 38, 'a', 1, '2016-06-23 09:14:35', 'checkout'),
(149, 11, 4, 38, 'asd', 1, '2016-06-23 09:14:35', 'checkout'),
(150, 11, 2, 38, '', 1, '2016-06-23 09:14:35', 'checkout'),
(151, 11, 2, 38, '', 5, '2016-06-23 09:14:35', 'checkout'),
(152, 11, 2, 38, '', 1, '2016-06-23 09:14:35', 'checkout'),
(153, 11, 4, 39, 'adf', 1, '2016-06-23 09:17:43', 'checkout'),
(154, 11, 1, 39, 'a', 1, '2016-06-23 09:17:43', 'checkout'),
(155, 11, 4, 39, 'asd', 1, '2016-06-23 09:17:43', 'checkout'),
(156, 11, 2, 39, '', 1, '2016-06-23 09:17:43', 'checkout'),
(157, 11, 2, 39, '', 5, '2016-06-23 09:17:43', 'checkout'),
(158, 11, 2, 39, '', 1, '2016-06-23 09:17:43', 'checkout'),
(159, 11, 2, 39, '', 1, '2016-06-23 09:17:43', 'checkout');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id_category` bigint(10) UNSIGNED NOT NULL,
  `name_category` varchar(30) CHARACTER SET utf8 NOT NULL,
  `status_category` enum('public','draft') CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id_category`, `name_category`, `status_category`) VALUES
(1, 'Tas Kulit', 'public'),
(2, 'Dompet Klasik', 'public'),
(3, 'Dompet Modern', 'public');

-- --------------------------------------------------------

--
-- Table structure for table `header_transaksi`
--

CREATE TABLE `header_transaksi` (
  `id` int(5) UNSIGNED NOT NULL,
  `status` enum('checkout','konfirmasi','diterima','ditolak','proses','komplain','retur','kembalikan_dana','selesai') COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(5) UNSIGNED NOT NULL,
  `date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `header_transaksi`
--

INSERT INTO `header_transaksi` (`id`, `status`, `user_id`, `date`) VALUES
(6, 'checkout', 11, '2016-06-22 17:21:06'),
(7, 'checkout', 11, '2016-06-22 17:21:11'),
(8, 'checkout', 11, '2016-06-22 17:21:57'),
(9, 'checkout', 11, '2016-06-22 17:22:34'),
(10, 'checkout', 11, '2016-06-22 17:22:43'),
(11, 'checkout', 11, '2016-06-22 17:22:48'),
(12, 'checkout', 11, '2016-06-22 17:22:56'),
(13, 'checkout', 11, '2016-06-22 17:23:28'),
(14, 'checkout', 11, '2016-06-22 17:23:29'),
(15, 'checkout', 11, '2016-06-22 17:23:46'),
(16, 'checkout', 11, '2016-06-22 21:28:49'),
(17, 'checkout', 11, '2016-06-22 21:28:52'),
(18, 'checkout', 11, '2016-06-22 21:28:53'),
(19, 'checkout', 11, '2016-06-22 21:28:54'),
(20, 'checkout', 11, '2016-06-22 21:28:54'),
(21, 'checkout', 11, '2016-06-22 21:28:54'),
(22, 'checkout', 11, '2016-06-22 21:34:09'),
(23, 'checkout', 11, '2016-06-23 01:38:40'),
(24, 'checkout', 11, '2016-06-23 01:38:53'),
(25, 'checkout', 11, '2016-06-23 01:39:13'),
(26, 'checkout', 11, '2016-06-23 01:39:25'),
(27, 'checkout', 11, '2016-06-23 01:57:35'),
(28, 'checkout', 11, '2016-06-23 01:58:01'),
(29, 'checkout', 11, '2016-06-23 01:58:47'),
(30, 'checkout', 11, '2016-06-23 02:00:48'),
(31, 'checkout', 11, '2016-06-23 02:01:34'),
(32, 'checkout', 11, '2016-06-23 02:01:43'),
(33, 'checkout', 11, '2016-06-23 02:01:43'),
(34, 'checkout', 11, '2016-06-23 02:01:44'),
(35, 'checkout', 11, '2016-06-23 02:03:58'),
(36, 'checkout', 11, '2016-06-23 02:05:08'),
(37, 'checkout', 11, '2016-06-23 02:07:47'),
(38, 'checkout', 11, '2016-06-23 02:14:35'),
(39, 'checkout', 11, '2016-06-23 02:17:43');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id_invoice` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('checkout','konfirmasi','diterima','ditolak','proses','komplain','retur','kembalikan_dana','selesai') COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_tagihan` decimal(19,0) DEFAULT '0',
  `id_header_transaction` int(5) UNSIGNED NOT NULL,
  `ongkos_kirim` decimal(19,0) NOT NULL,
  `user_id` int(5) UNSIGNED NOT NULL,
  `date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id_invoice`, `status`, `total_tagihan`, `id_header_transaction`, `ongkos_kirim`, `user_id`, `date`) VALUES
('INV2016062301', 'checkout', '2080000', 39, '32000', 11, '2016-06-23 02:17:43');

-- --------------------------------------------------------

--
-- Table structure for table `konfirmasi`
--

CREATE TABLE `konfirmasi` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `total_tagihan` decimal(19,0) NOT NULL,
  `nama_bank` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `no_rekening` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `atas_nama` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `rekening_tujuan` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `jumlah_bayar` decimal(19,0) NOT NULL,
  `bukti` text COLLATE utf8_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(5) UNSIGNED NOT NULL,
  `date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id_product` bigint(10) UNSIGNED NOT NULL,
  `code_product` varchar(30) CHARACTER SET utf32 NOT NULL,
  `name_product` varchar(50) CHARACTER SET utf8 NOT NULL,
  `id_category` int(10) UNSIGNED NOT NULL,
  `description_product` text CHARACTER SET utf8 NOT NULL,
  `price_product` decimal(19,0) NOT NULL,
  `size_product` varchar(100) CHARACTER SET utf8 NOT NULL,
  `berat` bigint(10) NOT NULL,
  `status_product` enum('public','draft') NOT NULL,
  `date_product` datetime NOT NULL,
  `stock_product` int(10) NOT NULL,
  `picture_product` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id_product`, `code_product`, `name_product`, `id_category`, `description_product`, `price_product`, `size_product`, `berat`, `status_product`, `date_product`, `stock_product`, `picture_product`) VALUES
(1, 'bj01', 'Manhattan Man Leather Bag', 1, 'Ukobag berkomitmen untuk membuat tas dengan kualitas terbaik dan juga mendukung global worming, oleh sebab itu tas yang anda beli hanya di buat saat di pesan tidak menggunakan sistem stok barang. Lamanya proses kerja adalah sekitar 5 minggu setelah pembayaran Anda dikonfirmasi.', '200000', '29.5 cm x 21.5 cm x 7 cm', 300, 'public', '2006-12-20 00:21:19', 9, 'manhattan_man_large.jpg'),
(2, 'bj02', 'Tas Baru', 1, 'Ukobag berkomitmen untuk membuat tas dengan kualitas terbaik dan juga mendukung global worming, oleh sebab itu tas yang anda beli hanya di buat saat di pesan tidak menggunakan sistem stok barang. Lamanya proses kerja adalah sekitar 5 minggu setelah pembayaran Anda dikonfirmasi.', '210000', '29.5 cm x 21.5 cm x 7 cm', 300, 'public', '2014-10-01 08:12:55', 2, 'manhattan_woman_small.jpg'),
(3, 'bj03', 'Baju Wanita', 10, 'Ukobag berkomitmen untuk membuat tas dengan kualitas terbaik dan juga mendukung global worming, oleh sebab itu tas yang anda beli hanya di buat saat di pesan tidak menggunakan sistem stok barang. Lamanya proses kerja adalah sekitar 5 minggu setelah pembayaran Anda dikonfirmasi.', '100000', '29.5 cm x 21.5 cm x 7 cm', 300, 'public', '2014-10-01 08:16:28', 10, 'manleatherbag.jpg'),
(4, 'bj04', 'Baju Wanita', 1, 'Ukobag berkomitmen untuk membuat tas dengan kualitas terbaik dan juga mendukung global worming, oleh sebab itu tas yang anda beli hanya di buat saat di pesan tidak menggunakan sistem stok barang. Lamanya proses kerja adalah sekitar 5 minggu setelah pembayaran Anda dikonfirmasi.', '100000', '29.5 cm x 21.5 cm x 7 cm', 300, 'public', '2014-10-01 09:08:40', 8, 'womanleatherbag.jpg'),
(5, 'bj001', 'nama', 10, 'des', '200', '12 x 12', 300, 'public', '2016-06-13 00:00:00', 9, 'manhattan_woman_small.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(10) UNSIGNED NOT NULL,
  `komentar` text CHARACTER SET utf8 NOT NULL,
  `date` datetime NOT NULL,
  `product_id` int(5) UNSIGNED NOT NULL,
  `user_id` int(5) UNSIGNED NOT NULL,
  `status` enum('aktif','blok') CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `komentar`, `date`, `product_id`, `user_id`, `status`) VALUES
(1, 'barang jelek', '2016-06-19 22:16:35', 1, 11, 'aktif');

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `id` int(11) NOT NULL,
  `lokasi` varchar(20) NOT NULL,
  `tarif` decimal(19,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` (`id`, `lokasi`, `tarif`) VALUES
(1, 'Bandung', '8000'),
(2, 'Jakarta', '8000'),
(3, 'Bali', '32000'),
(4, 'Bekasi', '8000'),
(6, 'Depok', '8000');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(5) NOT NULL,
  `fullname` varchar(50) CHARACTER SET utf8 NOT NULL,
  `password` varchar(100) NOT NULL,
  `city` varchar(20) CHARACTER SET utf8 NOT NULL,
  `country` varchar(20) NOT NULL,
  `address` text CHARACTER SET utf8 NOT NULL,
  `poscode` varchar(10) NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(15) CHARACTER SET utf8 NOT NULL,
  `date` datetime NOT NULL,
  `status` enum('aktif','blokir') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fullname`, `password`, `city`, `country`, `address`, `poscode`, `email`, `phone`, `date`, `status`) VALUES
(11, 'Uko', 'ee11cbb19052e40b07aac0ca060c23ee', 'Bandung', 'indonesia', 'jl. bambu kuning1', '16922', 'user@user.com', '08571134324', '2016-06-04 23:58:11', 'aktif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `header_transaksi`
--
ALTER TABLE `header_transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id_invoice`);

--
-- Indexes for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_product`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` bigint(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id_category` bigint(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `header_transaksi`
--
ALTER TABLE `header_transaksi`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id_product` bigint(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `shipping`
--
ALTER TABLE `shipping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
