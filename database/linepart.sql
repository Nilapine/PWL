-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2023 at 05:45 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `linepart`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama_lengkap`) VALUES
(1, 'rafiamir', 'rafiamir', 'Muhammad Rafi Amirullah');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Motor'),
(2, 'Mobil');

-- --------------------------------------------------------

--
-- Table structure for table `ongkir`
--

CREATE TABLE `ongkir` (
  `id_ongkir` int(11) NOT NULL,
  `nama_kota` varchar(100) NOT NULL,
  `tarif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `email_pelanggan` varchar(100) NOT NULL,
  `password_pelanggan` varchar(50) NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `telepon_pelanggan` varchar(100) NOT NULL,
  `alamat_pelanggan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `email_pelanggan`, `password_pelanggan`, `nama_pelanggan`, `telepon_pelanggan`, `alamat_pelanggan`) VALUES
(10, 'rafiamir41@gmail.com', '12345', 'Muhammad Rafi Amirullah', '081389381240', 'Kayen'),
(11, 'rafikamsia@gmail.com', '123', 'Udin', '081389381241', 'kudus'),
(14, 'samsudin1@gmail.com', '123', 'Samsudin', '081234567767', 'Jl. Prof. Sudarto No.13, Tembalang, Kec. Tembalang, Kota Semarang, Jawa Tengah 50275'),
(15, 'udin1@gmail.com', '123', 'Udin', '08123467889', 'Jl. Prof. Sudarto No.13, Tembalang, Kec. Tembalang, Kota Semarang, Jawa Tengah 50275');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `bank` varchar(255) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `bukti` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_pembelian`, `nama`, `bank`, `jumlah`, `tanggal`, `bukti`) VALUES
(10, 22, 'rafiamir', 'OPPO', 14515000, '2022-07-05', '202207051507231.jpg'),
(11, 25, 'Muhammad Rafi Amirullah', 'BNI', 30045000, '2022-07-10', '20220710043359WhatsApp Image 2021-10-24 at 08.30.57.jpeg'),
(12, 26, 'rafi', 'BNI', 30045000, '2022-12-26', '20221226044749d9afaf40ce8edf37c4db58bcbafe54e9.jpg'),
(13, 27, 'dodi', 'BNI', 2515000, '2022-12-26', '202212261559077caccbc30b91dcefd2a5e0ee8a217921.jpg'),
(14, 28, 'ope', 'JAGO', 2515000, '2022-12-27', '20221227075115BIL 1.PNG'),
(15, 29, 'odin', 'JAGO', 2515000, '2022-12-27', '202212270811527caccbc30b91dcefd2a5e0ee8a217921.jpg'),
(16, 30, 'Samsudin', 'JAGO', 1230000, '2022-12-27', '20221227084501kacang.jpg'),
(17, 31, 'Udin', 'BNI', 1230000, '2022-12-27', '20221227090947bill.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `id_pembelian` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `tanggal_pembelian` date NOT NULL,
  `total_pembelian` int(11) NOT NULL,
  `alamat_pengiriman` text NOT NULL,
  `status_pembelian` varchar(100) NOT NULL DEFAULT 'pending',
  `resi_pengiriman` varchar(50) NOT NULL,
  `totalberat` int(11) NOT NULL,
  `provinsi` varchar(255) NOT NULL,
  `distrik` varchar(255) NOT NULL,
  `tipe` varchar(255) NOT NULL,
  `kodepos` varchar(255) NOT NULL,
  `ekspedisi` varchar(255) NOT NULL,
  `paket` varchar(255) NOT NULL,
  `ongkir` int(11) NOT NULL,
  `estimasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`id_pembelian`, `id_pelanggan`, `tanggal_pembelian`, `total_pembelian`, `alamat_pengiriman`, `status_pembelian`, `resi_pengiriman`, `totalberat`, `provinsi`, `distrik`, `tipe`, `kodepos`, `ekspedisi`, `paket`, `ongkir`, `estimasi`) VALUES
(21, 6, '2022-07-05', 465000, 'Pati, Kode pos 59162', 'barang dikirim', '', 1000, 'Jawa Tengah', 'Pati', 'Kabupaten', '59114', 'tiki', 'ECO', 15000, '5'),
(22, 8, '2022-07-05', 14515000, 'Kayen Rt06/07', 'barang dikirim', '445677777', 1000, 'Jawa Tengah', 'Pati', 'Kabupaten', '59114', 'jne', 'REG', 15000, '4-5'),
(23, 8, '2022-07-10', 12515000, 'Kayen rt06/07', 'pending', '', 3000, 'Jawa Tengah', 'Pati', 'Kabupaten', '59114', 'jne', 'REG', 15000, '4-5'),
(24, 7, '2022-07-10', 30036000, '', 'pending', '', 3000, 'Jawa Tengah', 'Pati', 'Kabupaten', '59114', 'jne', 'OKE', 36000, '6-7'),
(26, 13, '2022-12-26', 30045000, '', 'lunas', '', 3000, 'Jawa Tengah', 'Pati', 'Kabupaten', '59114', 'jne', 'REG', 45000, '4-5'),
(27, 13, '2022-12-26', 2515000, 'ijewoifhwihf', 'barang dikirim', '123912301923', 1000, 'Jawa Tengah', 'Pati', 'Kabupaten', '59114', 'jne', 'REG', 15000, '4-5'),
(28, 13, '2022-12-27', 2515000, 'wahdwaiuhdowaid', 'sudah kirim pembayaran', '', 1000, 'Jawa Tengah', 'Pati', 'Kabupaten', '59114', 'jne', 'REG', 15000, '4-5'),
(29, 13, '2022-12-27', 2515000, 'oaihdoaiwdhowaid', 'barang dikirim', '', 1000, 'Jawa Tengah', 'Pati', 'Kabupaten', '59114', 'jne', 'REG', 15000, '4-5'),
(30, 14, '2022-12-27', 1230000, 'Jl. Prof. Sudarto No.13, Tembalang, Kec. Tembalang, Kota Semarang, Jawa Tengah 50275', 'lunas', '', 2000, 'Jawa Tengah', 'Pati', 'Kabupaten', '59114', 'jne', 'REG', 30000, '4-5'),
(31, 15, '2022-12-27', 1230000, 'Jl. Prof. Sudarto No.13, Tembalang, Kec. Tembalang, Kota Semarang, Jawa Tengah 50275', 'lunas', '', 2000, 'Jawa Tengah', 'Pati', 'Kabupaten', '59114', 'jne', 'REG', 30000, '4-5');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian_produk`
--

CREATE TABLE `pembelian_produk` (
  `id_pembelian_produk` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `berat` int(11) NOT NULL,
  `subberat` int(11) NOT NULL,
  `subharga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembelian_produk`
--

INSERT INTO `pembelian_produk` (`id_pembelian_produk`, `id_pembelian`, `id_produk`, `jumlah`, `nama`, `harga`, `berat`, `subberat`, `subharga`) VALUES
(38, 27, 2, 1, 'Kaliper Brembo M4 ', 2500000, 1000, 1000, 2500000),
(39, 28, 1, 1, 'Silinder Head Tiger', 2500000, 1000, 1000, 2500000),
(40, 29, 2, 1, 'Kaliper Brembo M4 ', 2500000, 1000, 1000, 2500000),
(41, 30, 8, 1, 'Knalpot Norifumi Torc', 1200000, 2000, 2000, 1200000),
(42, 31, 8, 1, 'Knalpot Norifumi Torc', 1200000, 2000, 2000, 1200000);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `id_kategori` int(5) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `harga_produk` int(11) NOT NULL,
  `berat_produk` int(11) NOT NULL,
  `foto_produk` varchar(100) NOT NULL,
  `deskripsi_produk` text NOT NULL,
  `stok_produk` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `id_kategori`, `nama_produk`, `harga_produk`, `berat_produk`, `foto_produk`, `deskripsi_produk`, `stok_produk`) VALUES
(1, 1, 'Silinder Head Tiger', 2500000, 1000, 'silinder head tiger BRT.jpeg', '                                                                   Silinder Head Tiger BRT ukuran sekian - sekian                                                ', 9),
(2, 1, 'Kaliper Brembo M4 ', 2500000, 1000, 'saman brembo.jpeg', '                                                            Kaliper Brembo M4 Cast Monobloc Alumunium                                             ', 8),
(3, 1, 'Kaliper Brembo m50 ', 2000000, 3000, 'kaliper brembo.jpeg', '                                            kaliper brembo m50 4 piston caliper 100mm left side ktm supermoto                                                  ', 10),
(4, 1, 'Shock RideIt GP', 1100000, 2000, 'shock ride GT.jpeg', '                                                                      Shock Ride It GP 340 MM                                                       ', 20),
(8, 1, 'Knalpot Norifumi Torc', 1200000, 2000, 'knalpot recing.jpeg', 'Knalpot Norifumi Torc KLX150 BF Dtracker Stainless', 8);

-- --------------------------------------------------------

--
-- Table structure for table `produk_foto`
--

CREATE TABLE `produk_foto` (
  `id_produk_foto` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `nama_produk_foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk_foto`
--

INSERT INTO `produk_foto` (`id_produk_foto`, `id_produk`, `nama_produk_foto`) VALUES
(9, 8, 'knalpot recing.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `ongkir`
--
ALTER TABLE `ongkir`
  ADD PRIMARY KEY (`id_ongkir`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indexes for table `pembelian_produk`
--
ALTER TABLE `pembelian_produk`
  ADD PRIMARY KEY (`id_pembelian_produk`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `produk_foto`
--
ALTER TABLE `produk_foto`
  ADD PRIMARY KEY (`id_produk_foto`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ongkir`
--
ALTER TABLE `ongkir`
  MODIFY `id_ongkir` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `pembelian_produk`
--
ALTER TABLE `pembelian_produk`
  MODIFY `id_pembelian_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `produk_foto`
--
ALTER TABLE `produk_foto`
  MODIFY `id_produk_foto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
