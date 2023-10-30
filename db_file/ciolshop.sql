-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2023 at 03:22 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ciolshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(120) NOT NULL,
  `keterangan` varchar(225) NOT NULL,
  `kategori` varchar(60) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(4) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`id_brg`, `nama_brg`, `keterangan`, `kategori`, `harga`, `stok`, `gambar`) VALUES
(18, 'Sandal Jepit X1', 'Sandal Limitid Edition X1', 'Sandal Pria', 100000, 19, 'pria2.jpg'),
(19, 'Sandal Jepit Y1', 'Sandal Limitid Edition Y1', 'Sandal Wanita', 200000, 29, 'wanita2.jpg'),
(21, 'Sandal Jepit Z1', 'Sandal Limitid Edition Z1', 'Sandal Anak', 50000, 1, 'anak2_(1).jpg'),
(22, 'Aksesoris Cartoon', 'Icon', 'Aksesoris', 5000, 49, 'aksesoris2_(1)1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_invoice`
--

CREATE TABLE `tb_invoice` (
  `id` int(11) NOT NULL,
  `nama` varchar(60) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_invoice`
--

INSERT INTO `tb_invoice` (`id`, `nama`, `alamat`, `no_telp`, `tgl_pesan`, `batas_bayar`) VALUES
(11, 'pembeli satu', 'alamat satu', '', '2023-10-29 21:11:49', '2023-10-30 21:11:49'),
(12, 'pembeli dua', 'alamat dua', '082222', '2023-10-30 01:47:30', '2023-10-31 01:47:30'),
(13, 'pembeli tiga', 'alamat tiga', '08333', '2023-10-30 03:16:24', '2023-10-31 03:16:24');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(50) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `harga` int(10) NOT NULL,
  `pilihan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`id`, `id_invoice`, `id_brg`, `nama_brg`, `jumlah`, `harga`, `pilihan`) VALUES
(11, 8, 21, 'Sandal Jepit Z1', 1, 50000, ''),
(12, 9, 18, 'Sandal Jepit X1', 1, 100000, ''),
(13, 9, 20, 'Bungha Pink', 1, 1000, ''),
(14, 11, 19, 'Sandal Jepit Y1', 1, 200000, ''),
(15, 11, 20, 'Bungha Pink', 1, 1000, ''),
(16, 11, 21, 'Sandal Jepit Z1', 1, 50000, ''),
(17, 11, 18, 'Sandal Jepit X1', 1, 100000, ''),
(18, 12, 20, 'Bungha Pink', 1, 1000, ''),
(19, 12, 19, 'Sandal Jepit Y1', 1, 200000, ''),
(20, 12, 18, 'Sandal Jepit X1', 1, 100000, ''),
(21, 12, 21, 'Sandal Jepit Z1', 1, 50000, ''),
(22, 13, 18, 'Sandal Jepit X1', 1, 100000, ''),
(23, 13, 19, 'Sandal Jepit Y1', 1, 200000, ''),
(24, 13, 21, 'Sandal Jepit Z1', 1, 50000, ''),
(25, 13, 22, 'Aksesoris Cartoon', 1, 5000, '');

--
-- Triggers `tb_pesanan`
--
DELIMITER $$
CREATE TRIGGER `update_stok_barang` AFTER INSERT ON `tb_pesanan` FOR EACH ROW BEGIN 
UPDATE tb_barang SET stok = stok-NEW.jumlah
WHERE id_brg=NEW.id_brg;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `username`, `password`, `role_id`) VALUES
(1, 'Administrator', 'admin', '123', 1),
(2, 'Pengunjung', 'user', 'user', 2),
(10, 'tes', 'tes', 'tes', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_brg`);

--
-- Indexes for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
