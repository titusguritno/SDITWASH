-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Nov 2022 pada 09.20
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sd_it wash`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `Id_customer` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `Alamat` varchar(90) NOT NULL,
  `Telepon` varchar(12) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`Id_customer`, `username`, `Alamat`, `Telepon`, `Email`, `Password`) VALUES
(1, 'Jeno Lee', 'Jalan Baning Hulu', '081345456722', 'jeno@yahoo.com', 'jenoL123'),
(2, 'Andy Park', 'Jalan Bulan Sewindu', '081345452233', 'andyP@gmail.com', 'andyP123'),
(3, 'Karina', 'Jalan Kwangya', '081347551212', 'karina@gmail.com', 'karina123'),
(4, 'Ning Ning', 'Jalan Kwangya 2', '081547552920', 'ning2@gmail.com', 'ning2345'),
(5, 'Renjun ', 'Jalan Mimpi', '081245623310', 'renjun@gmail.com', 'renjun000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail pesanan`
--

CREATE TABLE `detail pesanan` (
  `Id_pesanan` int(11) NOT NULL,
  `Id_barangCucian` int(11) NOT NULL,
  `Jumlah_item` varchar(11) NOT NULL,
  `Harga_transaksi` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail pesanan`
--

INSERT INTO `detail pesanan` (`Id_pesanan`, `Id_barangCucian`, `Jumlah_item`, `Harga_transaksi`) VALUES
(1, 1, '1', '25000'),
(2, 2, '1', '20000'),
(3, 3, '1', '30000'),
(4, 4, '1', '25000'),
(5, 5, '1', '40000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `paket`
--

CREATE TABLE `paket` (
  `Id_barangCucian` int(11) NOT NULL,
  `Jenis_paket` int(11) NOT NULL,
  `Paket_layanan` int(11) NOT NULL,
  `Harga_paket` varchar(30) NOT NULL,
  `Id_penyediaJasa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `paket`
--

INSERT INTO `paket` (`Id_barangCucian`, `Jenis_paket`, `Paket_layanan`, `Harga_paket`, `Id_penyediaJasa`) VALUES
(1, 1, 1, '25000', 1),
(2, 1, 4, '20000', 1),
(3, 2, 1, '30000', 1),
(4, 2, 4, '25000', 1),
(5, 1, 2, '40000', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyedia jasa`
--

CREATE TABLE `penyedia jasa` (
  `Id_penyediaJasa` int(11) NOT NULL,
  `Nama_penyediaJasa` varchar(50) NOT NULL,
  `Alamat` varchar(90) NOT NULL,
  `Telepon` varchar(14) NOT NULL,
  `Email_laundry` varchar(50) NOT NULL,
  `Rating` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penyedia jasa`
--

INSERT INTO `penyedia jasa` (`Id_penyediaJasa`, `Nama_penyediaJasa`, `Alamat`, `Telepon`, `Email_laundry`, `Rating`) VALUES
(1, 'SD_IT Wash', 'Jl.Sempu I, Pucanganom, Wedomartanai, Ngemplak, Sleman, Yogyakarta.', ' 081097568934 ', ' CuciSepatu@gmail.com', '5/5');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan`
--

CREATE TABLE `pesanan` (
  `Id_pesanan` int(11) NOT NULL,
  `Tgl_pesan` date NOT NULL,
  `Tgl_bayar` date NOT NULL,
  `Total_pembayaran` varchar(30) NOT NULL,
  `Id_customer` int(11) NOT NULL,
  `Id_penyediaJasa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pesanan`
--

INSERT INTO `pesanan` (`Id_pesanan`, `Tgl_pesan`, `Tgl_bayar`, `Total_pembayaran`, `Id_customer`, `Id_penyediaJasa`) VALUES
(1, '2022-11-01', '2022-11-07', '25000', 1, 1),
(2, '2022-11-08', '2022-11-14', '20000', 2, 1),
(3, '2022-11-15', '2022-11-21', '30000', 3, 1),
(4, '2022-11-22', '2022-11-28', '25000', 4, 1),
(5, '2022-11-29', '2022-12-05', '40000', 5, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `Id_customer` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `Alamat` varchar(90) NOT NULL,
  `Telepon` varchar(12) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`Id_customer`, `username`, `Alamat`, `Telepon`, `Email`, `Password`) VALUES
(1, 'Jeno Lee', 'Jalan Baning Hulu', '081345456722', 'jeno@yahoo.com', '00bb0f6c22277e23d6272869eb9a2ae1'),
(2, 'Andy Park', 'Jalan Bulan Sewindu', '081345452233', 'andyP@gmail.com', 'e3c0b04563d84dafe316e621bfdaabe5'),
(3, 'Karina', 'Jalan Kwangya ', '081347551212', 'karina@gmail.com', 'd540f6ec39cc713902a749f22d5aae51'),
(4, 'Ning Ning', 'Jalan Kwangya 2', '081547552920', 'ning2@gmail.com', '0abf88594363f9cff408abdf5b65c209'),
(5, 'Renjun ', 'Jalan Mimpi', '081245623310', 'renjun@gmail.com', '19a916a62851beb0275a174a3fb8a529');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Id_customer`);

--
-- Indeks untuk tabel `detail pesanan`
--
ALTER TABLE `detail pesanan`
  ADD PRIMARY KEY (`Id_pesanan`);

--
-- Indeks untuk tabel `paket`
--
ALTER TABLE `paket`
  ADD PRIMARY KEY (`Id_barangCucian`);

--
-- Indeks untuk tabel `penyedia jasa`
--
ALTER TABLE `penyedia jasa`
  ADD PRIMARY KEY (`Id_penyediaJasa`);

--
-- Indeks untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`Id_pesanan`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id_customer`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `customer`
--
ALTER TABLE `customer`
  MODIFY `Id_customer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `detail pesanan`
--
ALTER TABLE `detail pesanan`
  MODIFY `Id_pesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `paket`
--
ALTER TABLE `paket`
  MODIFY `Id_barangCucian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `penyedia jasa`
--
ALTER TABLE `penyedia jasa`
  MODIFY `Id_penyediaJasa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `Id_pesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `Id_customer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
