-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2022 at 08:23 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bantuan`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_matrik`
--

CREATE TABLE `tbl_matrik` (
  `id_matrik` int(11) NOT NULL,
  `nik` int(11) NOT NULL,
  `kriteria1_pekerjaan` int(11) NOT NULL,
  `kriteria2_penghasilan` int(11) NOT NULL,
  `kriteria3_jenis_rumah` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_matrik`
--

INSERT INTO `tbl_matrik` (`id_matrik`, `nik`, `kriteria1_pekerjaan`, `kriteria2_penghasilan`, `kriteria3_jenis_rumah`) VALUES
(64, 12344, 65, 10, 80),
(59, 2003016, 60, 65, 50),
(68, 22222, 60, 10, 40),
(58, 2003001, 90, 60, 80),
(65, 12344, 40, 10, 50),
(69, 12345, 50, 80, 40),
(66, 1234, 40, 10, 50),
(57, 2003002, 90, 90, 50),
(70, 2003012, 90, 10, 50);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_warga`
--

CREATE TABLE `tbl_warga` (
  `nik` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_warga`
--

INSERT INTO `tbl_warga` (`nik`, `nama`, `alamat`) VALUES
(2003012, 'aaaaaa', 'LOHBE'),
(12345, 'ayuu', 'LOHBE'),
(22222, 'aan', 'LOHBE'),
(2003001, 'Aan anipah', 'LOHBE'),
(2003002, 'niken', 'LOHBE'),
(2003016, 'gunawan', 'LOHBE'),
(12344, 'bolang', 'LOHBE'),
(2003019, 'wahyu', 'LOHBE'),
(11111, 'aaannn', 'LOHBE'),
(1234, 'niikkeenn', 'LOHBE');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`) VALUES
('admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_matrik`
--
ALTER TABLE `tbl_matrik`
  ADD PRIMARY KEY (`id_matrik`);

--
-- Indexes for table `tbl_warga`
--
ALTER TABLE `tbl_warga`
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_matrik`
--
ALTER TABLE `tbl_matrik`
  MODIFY `id_matrik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
