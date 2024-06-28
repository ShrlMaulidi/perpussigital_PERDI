-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2024 at 04:03 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_perpus`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` varchar(11) NOT NULL,
  `judul_buku` varchar(30) NOT NULL,
  `pengarang` varchar(30) NOT NULL,
  `penerbit` varchar(30) NOT NULL,
  `tahun_terbit` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `judul_buku`, `pengarang`, `penerbit`, `tahun_terbit`) VALUES
('KD001', 'Pemrograman web', 'Haris', 'Horizon', '2009'),
('KD004', 'Algoritma', 'sh', 'ss', 'd');

-- --------------------------------------------------------

--
-- Table structure for table `kunjungan`
--

CREATE TABLE `kunjungan` (
  `nama` varchar(30) NOT NULL,
  `prodi` varchar(30) NOT NULL,
  `nim` varchar(20) NOT NULL,
  `tujuan` varchar(30) NOT NULL,
  `tanggal` date NOT NULL,
  `tingkat` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kunjungan`
--

INSERT INTO `kunjungan` (`nama`, `prodi`, `nim`, `tujuan`, `tanggal`, `tingkat`) VALUES
('rendi', 'D3 Kebidanan', '12', 'Mengerjakan Tugas/Skripsi', '2024-06-03', '2'),
('rifky permana', 'S1 Manajenem', '321', 'Mengerjakan Tugas/Skripsi', '2024-06-07', '4'),
('mila', 'S1 Sisitem Informasi', '4333', 'Diskusi/Kerja Kelompok', '2024-06-20', '2'),
('dea', 'S1 Sisitem Informasi', '437853633772222', 'Meminjam Buku', '2024-06-16', '2');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `nidn` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(40) NOT NULL,
  `divisi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`nidn`, `nama`, `email`, `divisi`) VALUES
('2563377373', 'rifky', 'rifky21@gmail.com', 'peralatan');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_account` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_account`, `fullname`, `email`, `password`) VALUES
(1, 'sahrul maulidi', 'sahrul@gmail.com', 'sahrul123'),
(2, 'Rifky', 'rifky123@gmail.com', 'rifky123'),
(3, 'Liza Andareta', 'liza123@gmail.com', 'liza123'),
(4, 'rifkypermana', 'rifky1234@gmail.com', 'rifky1234'),
(5, 'sahrulM', 'sahrulmaulidi@gmail.com', 'sahrul1234'),
(6, 'sahrulmaulidi', 'sahrul4321@gmail.com', 'sahrul321'),
(7, 'sahrul54', 'sahrul29@gmail.com', '123456'),
(8, 'Admin', 'admin1@gmail.com', 'admin123'),
(9, 'Dadan Satria Islami', 'dadan2@gmail.com', 'dadan123'),
(10, 'rendi', 'ren1@gmail.com', 'ren12345'),
(11, 'rifky permana', 'rifky12@gmail.com', 'rifky123'),
(12, 'Dadan satria', 'ddn@gmail.com', 'ddn1234'),
(13, 'Sahrul Maulidi', 'sahrul1234@gmail.com', 'sahrul1234'),
(14, 'Mila adelia', 'mila@gmail.com', 'mila123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `kunjungan`
--
ALTER TABLE `kunjungan`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`nidn`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_account`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_account` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
