-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Bulan Mei 2023 pada 19.53
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.4.7

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
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama_lengkap`) VALUES
(1, 'nilafar', 'nilafar', 'Nila Farihah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Meja'),
(2, 'Kursi'),
(3, 'Lemari');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ongkir`
--

CREATE TABLE `ongkir` (
  `id_ongkir` int(11) NOT NULL,
  `nama_kota` varchar(100) NOT NULL,
  `tarif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
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
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `email_pelanggan`, `password_pelanggan`, `nama_pelanggan`, `telepon_pelanggan`, `alamat_pelanggan`) VALUES
(16, 'nila@gmail.com', '123', 'nila', '089684550666', 'Desa Margosari, Rt 03/02, Kec Patebon, Kab Kendal'),
(17, 'adam@gmail.com', '123', 'adam', '081234567891', 'Kendal'),
(18, 'ck@gmail.com', '123', 'ck', '085839823416', 'Bandung'),
(19, 'rs@gmail.com', '123', 'rs', '089721123445', 'Kajen');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
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
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_pembelian`, `nama`, `bank`, `jumlah`, `tanggal`, `bukti`) VALUES
(10, 22, 'rafiamir', 'OPPO', 14515000, '2022-07-05', '202207051507231.jpg'),
(11, 25, 'Muhammad Rafi Amirullah', 'BNI', 30045000, '2022-07-10', '20220710043359WhatsApp Image 2021-10-24 at 08.30.57.jpeg'),
(12, 26, 'rafi', 'BNI', 30045000, '2022-12-26', '20221226044749d9afaf40ce8edf37c4db58bcbafe54e9.jpg'),
(13, 27, 'dodi', 'BNI', 2515000, '2022-12-26', '202212261559077caccbc30b91dcefd2a5e0ee8a217921.jpg'),
(14, 28, 'ope', 'JAGO', 2515000, '2022-12-27', '20221227075115BIL 1.PNG'),
(15, 29, 'odin', 'JAGO', 2515000, '2022-12-27', '202212270811527caccbc30b91dcefd2a5e0ee8a217921.jpg'),
(16, 30, 'Samsudin', 'JAGO', 1230000, '2022-12-27', '20221227084501kacang.jpg'),
(17, 31, 'Udin', 'BNI', 1230000, '2022-12-27', '20221227090947bill.jpg'),
(18, 33, 'nila', 'BCA', 1124000, '2023-05-04', '20230504000445WhatsApp Image 2023-04-30 at 17.53.10.jpeg'),
(19, 34, 'nil', 'BCA', 676000, '2023-05-04', '20230504211617bca.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian`
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
-- Dumping data untuk tabel `pembelian`
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
(31, 15, '2022-12-27', 1230000, 'Jl. Prof. Sudarto No.13, Tembalang, Kec. Tembalang, Kota Semarang, Jawa Tengah 50275', 'lunas', '', 2000, 'Jawa Tengah', 'Pati', 'Kabupaten', '59114', 'jne', 'REG', 30000, '4-5'),
(32, 11, '2023-05-03', 2546000, 'kayen', 'pending', '', 1000, 'Lampung', 'Tanggamus', 'Kabupaten', '35619', 'jne', 'OKE', 46000, '7-8'),
(33, 16, '2023-05-03', 1124000, 'Desa Margosari RT03/02, Patebon, Kendal,  Jawa Tengah', 'sudah kirim pembayaran', '', 2000, 'Jawa Tengah', 'Kendal', 'Kabupaten', '51314', 'pos', 'Pos Reguler', 24000, '3 HARI'),
(34, 16, '2023-05-04', 676000, 'Margosari, patebon, Kendal', 'sudah kirim pembayaran', '', 2000, 'Jawa Tengah', 'Kendal', 'Kabupaten', '51314', 'jne', 'OKE', 26000, '6-7'),
(35, 16, '2023-05-04', 620000, 'Jl. JUrang Blimbing, no 11/12, Tembalang, Semarang', 'pending', '', 3000, 'Jawa Tengah', 'Semarang', 'Kota', '50135', 'jne', 'YES', 45000, '1-1'),
(36, 16, '2023-05-04', 600500, 'Semarang', 'pending', '', 3000, 'Jawa Tengah', 'Semarang', 'Kota', '50135', 'pos', 'Pos Ekonomi', 25500, '7-14 HARI');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian_produk`
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
-- Dumping data untuk tabel `pembelian_produk`
--

INSERT INTO `pembelian_produk` (`id_pembelian_produk`, `id_pembelian`, `id_produk`, `jumlah`, `nama`, `harga`, `berat`, `subberat`, `subharga`) VALUES
(38, 27, 2, 1, 'Kaliper Brembo M4 ', 2500000, 1000, 1000, 2500000),
(39, 28, 1, 1, 'Silinder Head Tiger', 2500000, 1000, 1000, 2500000),
(40, 29, 2, 1, 'Kaliper Brembo M4 ', 2500000, 1000, 1000, 2500000),
(41, 30, 8, 1, 'Knalpot Norifumi Torc', 1200000, 2000, 2000, 1200000),
(42, 31, 8, 1, 'Knalpot Norifumi Torc', 1200000, 2000, 2000, 1200000),
(43, 32, 1, 1, 'Silinder Head Tiger', 2500000, 1000, 1000, 2500000),
(44, 33, 4, 1, 'Shock RideIt GP', 1100000, 2000, 2000, 1100000),
(45, 34, 1, 1, 'Meja Rak Hitam', 650000, 2000, 2000, 650000),
(46, 35, 10, 1, 'Meja Kaki Diagonal', 575000, 3000, 3000, 575000),
(47, 36, 10, 1, 'Meja Kaki Diagonal', 575000, 3000, 3000, 575000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
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
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `id_kategori`, `nama_produk`, `harga_produk`, `berat_produk`, `foto_produk`, `deskripsi_produk`, `stok_produk`) VALUES
(1, 1, 'Meja Rak Hitam', 650000, 2000, 'mejahitam.jpg', 'ukuran : 100*50*130cm\r\ntinggi meja : 70cm\r\nlebar rak : 24cm\r\nwarna : hitam\r\nbahan : pvc                                                      ', 10),
(2, 1, 'Meja + Tempat Buku', 475000, 1000, 'mejatempatbuku.jpg', 'rangka besi 3x3cm\r\nmultiplek 12mm lapis pvc sheet\r\nukuran meja 120x50x70cm\r\nslot buku 20cm                                                 ', 15),
(3, 2, 'Kursi Kafe', 120000, 500, 'kursikafe.jpg', 'ukuran 30*30cm\r\nukuran besi 3x3cm\r\ntinggi 46  \r\nbahan pvc                                                           ', 11),
(4, 2, 'Kursi Sandaran', 175000, 1000, 'kursisandar.jpg', 'uk 35*35 \r\ntinggi 45 \r\ntinggi sandaran 85\r\nrangka besi 25*25                                                           ', 10),
(8, 1, 'Meja Cafe', 450000, 3000, 'mejacafe.jpg', 'ukuran pxlxt 120x60x70\r\nrangka holo 3x3\r\nmultiplek 12 mm lapis tacosheet      ', 8),
(9, 1, 'Meja + Lemari', 650000, 2500, 'MEJALEMARI.jpg', 'Ukuran 100*50*70\r\nwarna : biru\r\nukuran besi : 3x3mm', 5),
(10, 1, 'Meja Kaki Diagonal', 575000, 3000, 'meja kaki diagonal.jpg', '          ukuran 120*60*70\r\nrangka besi 3*3\r\nmultiplek 12 mm, samping 24 mm\r\nlapis tacosheet        ', 15),
(11, 1, 'Meja Lesehan', 125000, 500, 'mejalesehan.jpg', 'ukuran 60*35*30cm\r\nrangka besi 2*2mm\r\nmultiplek 12mm\r\nwarna putih', 20),
(12, 1, 'Meja Standart HPL', 350000, 1000, 'mejastandart.jpg', 'rangka besi 3 x 3mm\r\nmultiplek 12 mm\r\nukuran p*l*t = 100*40*70cm\r\nwarna hitam', 24),
(14, 1, 'Meja Rak', 900000, 2000, 'mejarak.jpg', 'ukuran 120*50*130cm\r\nbesi 3mm\r\nwarna hitam', 45),
(15, 3, 'Lemari Dispenser', 500000, 2000, 'lemaridispenser.jpg', 'Rangka besi 25x25\r\nukuran 60*30*75cm\r\nwarna putih', 13);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk_foto`
--

CREATE TABLE `produk_foto` (
  `id_produk_foto` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `nama_produk_foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `produk_foto`
--

INSERT INTO `produk_foto` (`id_produk_foto`, `id_produk`, `nama_produk_foto`) VALUES
(9, 8, 'knalpot recing.jpeg'),
(10, 9, 'MEJALEMARI.jpg'),
(11, 10, 'meja kaki diagonal.jpg'),
(12, 11, 'mejalesehan.jpg'),
(13, 12, 'mejastandart.jpg'),
(14, 13, 'lemaridispenser.jpg'),
(15, 14, 'mejarak.jpg'),
(16, 15, 'lemaridispenser.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `ongkir`
--
ALTER TABLE `ongkir`
  ADD PRIMARY KEY (`id_ongkir`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indeks untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indeks untuk tabel `pembelian_produk`
--
ALTER TABLE `pembelian_produk`
  ADD PRIMARY KEY (`id_pembelian_produk`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `produk_foto`
--
ALTER TABLE `produk_foto`
  ADD PRIMARY KEY (`id_produk_foto`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `ongkir`
--
ALTER TABLE `ongkir`
  MODIFY `id_ongkir` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `pembelian_produk`
--
ALTER TABLE `pembelian_produk`
  MODIFY `id_pembelian_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `produk_foto`
--
ALTER TABLE `produk_foto`
  MODIFY `id_produk_foto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
