-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2017 at 10:59 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ppk`
--

-- --------------------------------------------------------

--
-- Table structure for table `dgaji`
--

CREATE TABLE `dgaji` (
  `no` int(5) NOT NULL,
  `NIK` varchar(15) NOT NULL,
  `namakaryawan` varchar(30) NOT NULL,
  `gajibersih` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dgaji`
--

INSERT INTO `dgaji` (`no`, `NIK`, `namakaryawan`, `gajibersih`) VALUES
(1, '2017002', 'Yoga Sadewa', '15.000.000'),
(2, '2017001', 'Fahmi Alfareza', '9.000.000'),
(3, '2017004', 'Andhika Pratanto', '10.000.000'),
(4, '2017003', 'Agus Nugroho', '12.000.000');

-- --------------------------------------------------------

--
-- Table structure for table `djabatan`
--

CREATE TABLE `djabatan` (
  `no` int(5) NOT NULL,
  `kode` varchar(5) NOT NULL,
  `namajabatan` varchar(30) NOT NULL,
  `tunjangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `djabatan`
--

INSERT INTO `djabatan` (`no`, `kode`, `namajabatan`, `tunjangan`) VALUES
(1, 'H001', 'Manager IT', '500.000'),
(2, 'J001', 'Manager HRD', '1.000.000'),
(3, 'K001', 'Manager Keuangan', '750.000'),
(4, 'L001', 'Manager Pabrik', '500.000');

-- --------------------------------------------------------

--
-- Table structure for table `dkantor`
--

CREATE TABLE `dkantor` (
  `no` int(11) NOT NULL,
  `kode` varchar(5) NOT NULL,
  `namaKantor` varchar(30) NOT NULL,
  `lokasi` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dkantor`
--

INSERT INTO `dkantor` (`no`, `kode`, `namaKantor`, `lokasi`) VALUES
(1, 'M01', 'Kantor Cendrawasih', 'Jl. Cendrawasih No. 17, Malang'),
(2, 'B02', 'Kantor Wijaya', 'Jl. Wijaya 2 No. 5, Bandung'),
(3, 'C03', 'Kantor Diponegoro', 'Jl. Pangeran Diponegoro No. 3, Cirebon'),
(4, 'D04', 'Kantor Sudirman', 'Jl. Jenderal Sudirman No. 25, Jakarta Pusat');

-- --------------------------------------------------------

--
-- Table structure for table `dkaryawan`
--

CREATE TABLE `dkaryawan` (
  `no` int(10) NOT NULL,
  `namaKaryawan` varchar(30) NOT NULL,
  `jabatan` varchar(30) NOT NULL,
  `kantor` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dkaryawan`
--

INSERT INTO `dkaryawan` (`no`, `namaKaryawan`, `jabatan`, `kantor`) VALUES
(1, 'Fahmi Alfareza', 'Manager IT', 'Cendrawasih'),
(2, 'Yoga Sadewa', 'Manager HRD', 'Diponegoro'),
(3, 'Agus Nugroho', 'Manager Keuangan', 'Sudirman'),
(4, 'Andhika Pratanto', 'Manager Pabrik', 'Wijaya');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dgaji`
--
ALTER TABLE `dgaji`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `djabatan`
--
ALTER TABLE `djabatan`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `dkantor`
--
ALTER TABLE `dkantor`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `dkaryawan`
--
ALTER TABLE `dkaryawan`
  ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dgaji`
--
ALTER TABLE `dgaji`
  MODIFY `no` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `djabatan`
--
ALTER TABLE `djabatan`
  MODIFY `no` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dkantor`
--
ALTER TABLE `dkantor`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dkaryawan`
--
ALTER TABLE `dkaryawan`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
