-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3308
-- Generation Time: May 01, 2024 at 05:15 AM
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
-- Database: `datakaryawan`
--

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `usia` int(11) DEFAULT NULL,
  `jabatan` varchar(100) DEFAULT NULL,
  `gaji` decimal(10,2) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id`, `nama`, `usia`, `jabatan`, `gaji`, `alamat`) VALUES
(1, 'Michael Johnson', 40, 'Manajer Produksi', '5500.00', 'Jl. Gatot Subroto No. 321'),
(2, 'Emily Brown', 28, 'Desainer Grafis', '4200.00', 'Jl. Diponegoro No. 654'),
(3, 'David Lee', 32, 'Analisis Data', '4700.00', 'Jl. Asia Afrika No. 987'),
(4, 'Sarah Wang', 29, 'Koordinator Proyek', '4800.00', 'Jl. Thamrin No. 246'),
(5, 'Ahmad Nur', 27, 'Teknisi IT', '3800.00', 'Jl. Surya Kencana No. 135'),
(6, 'Maria Garcia', 31, 'HR Manager', '5200.00', 'Jl. HR No. 123'),
(7, 'Nancy Taylor', 29, 'Marketing Specialist', '4800.00', 'Jl. Marketing No. 456'),
(9, 'Jane Smith', 25, 'Programmer', '4000.00', 'Jl. Sudirman No. 456'),
(10, 'Alice Johnson', 35, 'Analis Sistem', '4500.00', 'Jl. Pahlawan No. 789');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
