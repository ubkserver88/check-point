-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2022 at 11:53 AM
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
-- Database: `checkpoint-ubk`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_check_point`
--

CREATE TABLE `data_check_point` (
  `id_check_point` int(11) NOT NULL,
  `tanggal_waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `nama_pemeriksa` varchar(50) NOT NULL,
  `sesi_check_point` varchar(10) NOT NULL,
  `area` varchar(100) NOT NULL,
  `photo_bukti` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_check_point`
--

INSERT INTO `data_check_point` (`id_check_point`, `tanggal_waktu`, `nama_pemeriksa`, `sesi_check_point`, `area`, `photo_bukti`) VALUES
(26, '2022-08-08 06:27:13', 'user', '4', '', '62f0acc19f9e1.png'),
(27, '2022-08-08 06:55:48', 'user', '1', 'test', '62f0b374a9653.png'),
(28, '2022-08-08 07:45:46', 'user', '2', 'test', '62f0bf2ac61ff.png'),
(29, '2022-08-08 07:45:57', 'user', '3', 'test', '62f0bf3534bad.png'),
(30, '2022-08-08 07:46:14', 'user', '3', 'test', '62f0bf4643166.png'),
(31, '2022-08-08 07:46:25', 'user', '4', 'test', '62f0bf5173a44.png'),
(32, '2022-08-08 07:46:36', 'user', '5', 'test', '62f0bf5c956c9.png'),
(33, '2022-08-08 07:46:46', 'user', '6', 'test', '62f0bf6694464.png'),
(34, '2022-08-08 08:31:18', 'user', '3', 'test', '62f0c9d6cd64c.png'),
(35, '2022-08-08 08:32:28', 'user', '2', 'test', '62f0ca1cb952c.png'),
(36, '2022-08-08 08:33:42', 'user', 'Check Poin', 'test', '62f0ca660df98.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(100) NOT NULL,
  `username_user` varchar(100) NOT NULL,
  `password_user` varchar(100) NOT NULL,
  `pengguna_level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `nama_user`, `username_user`, `password_user`, `pengguna_level`) VALUES
(1, 'user', 'user', 'user', 'checker'),
(2, 'admin', 'admin', 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_check_point`
--
ALTER TABLE `data_check_point`
  ADD PRIMARY KEY (`id_check_point`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_check_point`
--
ALTER TABLE `data_check_point`
  MODIFY `id_check_point` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
