-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2024 at 05:11 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_mahasiswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `angkatan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `alamat`, `jurusan`, `angkatan`) VALUES
(1001, 'Doe', 'Bandung', 'Sistem Informasi', 2022),
(1002, 'Jaka', 'Bandung', 'Sistem Informasi', 2020),
(1003, 'Andi Nugroho', 'Jakarta', 'Teknik Informatika', 2020),
(1004, 'Toni', 'Surabaya', 'Teknik Informatika', 2020),
(1005, 'Rani', 'Bandung', 'Sistem Informasi', 2021),
(1006, 'Indah', 'Surabaya', 'Teknik Informatika', 2021),
(1007, 'Ahmad', 'Bandung', 'Sistem Informasi', 2021),
(1008, 'Daffa', 'Bandung', 'Sistem Informasi', 2021),
(1009, 'Mikel', 'Jakarta', 'Teknik Industri', 2022),
(1010, 'Andi Kurnia', 'Jakarta', 'Sistem Informasi', 2022),
(1011, 'Dini', 'Bandung', 'Teknik Industri', 2022);

-- --------------------------------------------------------

--
-- Table structure for table `mata_kuliah`
--

CREATE TABLE `mata_kuliah` (
  `kode_mk` varchar(50) NOT NULL,
  `nama_mk` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`kode_mk`, `nama_mk`) VALUES
('mk001', 'Algoritma Pemrograman'),
('mk002', 'Sistem Basis Data'),
('mk003', 'Struktur Data');

-- --------------------------------------------------------

--
-- Table structure for table `nilai_mahasiswa`
--

CREATE TABLE `nilai_mahasiswa` (
  `nim_mahasiswa` int(11) NOT NULL,
  `kode_mata_kuliah` varchar(50) NOT NULL,
  `nilai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nilai_mahasiswa`
--

INSERT INTO `nilai_mahasiswa` (`nim_mahasiswa`, `kode_mata_kuliah`, `nilai`) VALUES
(1002, 'mk001', '80'),
(1003, 'mk001', '86'),
(1004, 'mk001', '88'),
(1005, 'mk001', '90'),
(1006, 'mk001', '67'),
(1007, 'mk001', '70'),
(1008, 'mk001', '80'),
(1010, 'mk001', '90'),
(1002, 'mk002', '95'),
(1003, 'mk002', '87'),
(1004, 'mk002', '44'),
(1005, 'mk002', '98'),
(1006, 'mk003', '85'),
(1007, 'mk003', '57'),
(1008, 'mk003', '89'),
(1010, 'mk003', '95');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD PRIMARY KEY (`kode_mk`);

--
-- Indexes for table `nilai_mahasiswa`
--
ALTER TABLE `nilai_mahasiswa`
  ADD KEY `nim_mahasiswa` (`nim_mahasiswa`),
  ADD KEY `kode_mata_kuliah` (`kode_mata_kuliah`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `nilai_mahasiswa`
--
ALTER TABLE `nilai_mahasiswa`
  ADD CONSTRAINT `nilai_mahasiswa_ibfk_1` FOREIGN KEY (`nim_mahasiswa`) REFERENCES `mahasiswa` (`nim`),
  ADD CONSTRAINT `nilai_mahasiswa_ibfk_2` FOREIGN KEY (`kode_mata_kuliah`) REFERENCES `mata_kuliah` (`kode_mk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
