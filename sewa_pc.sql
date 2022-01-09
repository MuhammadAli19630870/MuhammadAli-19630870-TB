-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Jan 2022 pada 12.42
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sewa_pc`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `id_member` varchar(11) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `telp` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`id_member`, `nama_lengkap`, `jenis_kelamin`, `alamat`, `telp`, `email`) VALUES
('01', 'muhammad ali', 'Laki-laki', 'sultan adam', '089336326396', 'muhammadali@gmailcom'),
('03', 'udin', 'Laki-laki', 'sungai andai', '083403284', 'udin@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pc`
--

CREATE TABLE `pc` (
  `no_pc` varchar(11) NOT NULL,
  `merek` varchar(50) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `harga` int(50) NOT NULL,
  `stok` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pc`
--

INSERT INTO `pc` (`no_pc`, `merek`, `jenis`, `harga`, `stok`) VALUES
('3', 'Acer', 'Laptop', 50000, 7),
('4', 'Asus', 'Laptop', 50000, 6),
('1', 'ROG', 'Laptop', 75000, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_sewa`
--

CREATE TABLE `transaksi_sewa` (
  `id_sewa` varchar(11) NOT NULL,
  `id_member` varchar(50) NOT NULL,
  `no_pc` varchar(50) NOT NULL,
  `jumlah_hari` int(12) NOT NULL,
  `biaya` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi_sewa`
--

INSERT INTO `transaksi_sewa` (`id_sewa`, `id_member`, `no_pc`, `jumlah_hari`, `biaya`) VALUES
('3', '2223', '23', 1, 33),
('2', '22', '222', 1, 2000),
('34', '34', '444444', 1, 111),
('12', 'qa3', '4xcd', 1, 2000),
('1', '1', '1', 1, 1),
('07', '01', '07', 2, 100000),
('03', '01', '02', 1, 50000),
('01', '01', '4', 2, 100000),
('02', '02', 'mellanie', 1, 50000);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
