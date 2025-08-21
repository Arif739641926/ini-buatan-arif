-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 21 Agu 2025 pada 06.56
-- Versi server: 5.7.34
-- Versi PHP: 8.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_hewan1`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `hewan1`
--

CREATE TABLE `hewan1` (
  `id_hewan` int(11) NOT NULL,
  `nama_hewan` varchar(25) NOT NULL,
  `jenis_hewan` varchar(25) NOT NULL,
  `asal` text NOT NULL,
  `jumlah` int(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `hewan1`
--

INSERT INTO `hewan1` (`id_hewan`, `nama_hewan`, `jenis_hewan`, `asal`, `jumlah`) VALUES
(1, 'Harimau Sumatera ', 'Jantan', 'Sumatera ', 1),
(2, 'Kangguru Merah ', 'Betina ', 'Australia ', 11),
(3, 'Penguin Kaisar', 'Betina', 'Antartika ', 595),
(4, 'Panda Raksasa ', 'Jantan', 'Tiongkok ', 8),
(5, 'Gajah Afrika ', 'Jantan', 'Afrika Sub-Sahara ', 415);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `hewan1`
--
ALTER TABLE `hewan1`
  ADD PRIMARY KEY (`id_hewan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `hewan1`
--
ALTER TABLE `hewan1`
  MODIFY `id_hewan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
