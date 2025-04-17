-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Apr 2025 pada 06.43
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_visual`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kasir`
--

CREATE TABLE `tb_kasir` (
  `id_kasir` char(10) NOT NULL,
  `nama_kasir` char(30) NOT NULL,
  `jk_kasir` char(15) NOT NULL,
  `telp_kasir` char(15) NOT NULL,
  `agama_kasir` char(15) NOT NULL,
  `alamat_kasir` text NOT NULL,
  `password_kasir` char(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_kasir`
--

INSERT INTO `tb_kasir` (`id_kasir`, `nama_kasir`, `jk_kasir`, `telp_kasir`, `agama_kasir`, `alamat_kasir`, `password_kasir`) VALUES
('K01', 'Marsel Ruliana Hermawan', 'Laki-Laki', '081340131013', 'Islam', 'Depok', '12345'),
('K02', 'Raisa', 'Perempuan', '085175209039', 'Islam', 'bandung', '123'),
('K03', 'Yogs', 'Laki-Laki', '081310134124', 'Islam', 'Jakarta Timur', '123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pelanggan`
--

CREATE TABLE `tb_pelanggan` (
  `id_pel` char(10) NOT NULL,
  `nama_pel` char(25) NOT NULL,
  `jk_pel` char(15) NOT NULL,
  `telp_pel` char(15) NOT NULL,
  `alamat_pel` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_pelanggan`
--

INSERT INTO `tb_pelanggan` (`id_pel`, `nama_pel`, `jk_pel`, `telp_pel`, `alamat_pel`) VALUES
('P01', 'Marsel', 'Laki-Laki', '081310134013', 'Depok'),
('P02', 'Raisa', 'Perempuan', '085175209039', 'Bandung'),
('P03', 'Yogs', 'Laki-Laki', '081310134123', 'Jakarta Timur');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_kasir`
--
ALTER TABLE `tb_kasir`
  ADD PRIMARY KEY (`id_kasir`);

--
-- Indeks untuk tabel `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  ADD PRIMARY KEY (`id_pel`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
