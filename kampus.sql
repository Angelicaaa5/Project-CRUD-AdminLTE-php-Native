-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Jan 2024 pada 04.37
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kampus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `profil` text NOT NULL,
  `level` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama`, `profil`, `level`) VALUES
(1, 'apw', 'fc536e00733a9fb7b8cc2e8d3727fced', 'angel', '', 'admin'),
(2, 'angel', 'ab1dbd386662b62477b62087a389256a', 'angelica', '', 'pegawai');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `nama_barang`, `harga`, `stok`) VALUES
(3, 'le minerale', 2500, 100),
(4, 'sprite', 6000, 100),
(5, 'floridina', 3000, 100),
(6, 'ultra milk', 5000, 100),
(7, 'teh gelas', 1000, 100);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_jual`
--

CREATE TABLE `detail_jual` (
  `id` int(11) NOT NULL,
  `id_jual` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `detail_jual`
--

INSERT INTO `detail_jual` (`id`, `id_jual`, `id_barang`, `harga`, `qty`, `total`) VALUES
(1, 7, 1, 2000, 1, 2000),
(2, 8, 1, 2000, 1, 2000),
(3, 9, 1, 2000, 1, 2000),
(4, 10, 1, 2000, 1, 2000),
(5, 11, 1, 2000, 1, 2000),
(6, 12, 1, 2000, 1, 2000),
(7, 13, 1, 2000, 1, 2000),
(8, 14, 7, 1000, 1, 1000),
(9, 15, 7, 1000, 2, 2000),
(10, 17, 7, 1000, 5, 5000),
(11, 18, 7, 1000, 1, 1000),
(12, 19, 6, 5000, 5, 25000),
(13, 20, 7, 1000, 1, 1000),
(14, 21, 7, 1000, 1, 1000),
(15, 22, 7, 1000, 1, 1000),
(16, 23, 7, 1000, 3, 3000),
(17, 24, 7, 1000, 1, 1000),
(18, 24, 6, 5000, 1, 5000),
(19, 25, 7, 1000, 5, 5000),
(20, 25, 4, 6000, 4, 24000),
(21, 25, 6, 5000, 2, 10000),
(22, 26, 7, 1000, 4, 4000),
(23, 26, 3, 2500, 2, 5000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jual`
--

CREATE TABLE `jual` (
  `id` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `pegawai` varchar(50) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jual`
--

INSERT INTO `jual` (`id`, `tgl`, `pegawai`, `total`) VALUES
(16, '2024-01-23', 'apw', 5000),
(17, '2024-01-23', 'apw', 5000),
(18, '2024-01-23', 'apw', 1000),
(19, '2024-01-23', 'apw', 25000),
(20, '2024-01-23', 'apw', 1000),
(21, '2024-01-23', 'apw', 1000),
(22, '2024-01-23', 'apw', 1000),
(23, '2024-01-23', 'apw', 3000),
(24, '2024-01-23', 'apw', 6000),
(25, '2024-01-23', 'apw', 39000),
(26, '2024-01-30', 'apw', 9000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_mahasiswa` int(11) NOT NULL,
  `nim` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kelas` varchar(25) NOT NULL,
  `jurusan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_mahasiswa`, `nim`, `nama`, `kelas`, `jurusan`) VALUES
(4, '06363236283', 'angel', 'Siang', 'Akutansi'),
(5, '1234567', 'apw', 'Karyawan', 'Manajemen Informatika');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `id` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`id`, `id_barang`, `harga`, `qty`, `total`) VALUES
(1, 3, 2500, 2, 5000),
(2, 1, 2000, 5, 10000),
(3, 1, 2000, 4, 8000),
(4, 6, 5000, 5, 25000),
(5, 5, 3000, 4, 12000),
(6, 4, 6000, 2, 12000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `detail_jual`
--
ALTER TABLE `detail_jual`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jual`
--
ALTER TABLE `jual`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `detail_jual`
--
ALTER TABLE `detail_jual`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `jual`
--
ALTER TABLE `jual`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id_mahasiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
