-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2025 at 08:16 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pendaftaran_magang`
--

-- --------------------------------------------------------

--
-- Table structure for table `pendaftar`
--

CREATE TABLE `pendaftar` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `sekolah` varchar(100) NOT NULL,
  `jurusan` varchar(100) NOT NULL,
  `prodi` varchar(100) NOT NULL,
  `jenjang` varchar(10) NOT NULL,
  `semester` varchar(50) NOT NULL,
  `ipk` varchar(10) DEFAULT NULL,
  `bidang` varchar(100) NOT NULL,
  `lama_magang` varchar(100) NOT NULL,
  `tujuan_magang` varchar(100) NOT NULL,
  `surat_pengantar` varchar(255) NOT NULL,
  `cv` varchar(255) NOT NULL,
  `ktm` varchar(255) NOT NULL,
  `transkrip` varchar(255) NOT NULL,
  `portofolio` varchar(255) DEFAULT NULL,
  `nama_darurat` varchar(100) NOT NULL,
  `hubungan_darurat` varchar(50) NOT NULL,
  `telepon_darurat` varchar(20) NOT NULL,
  `status` enum('diajukan','diterima','ditolak') DEFAULT 'diajukan',
  `komentar_admin` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pendaftar`
--

INSERT INTO `pendaftar` (`id`, `nama`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `alamat`, `telepon`, `email`, `foto`, `sekolah`, `jurusan`, `prodi`, `jenjang`, `semester`, `ipk`, `bidang`, `lama_magang`, `tujuan_magang`, `surat_pengantar`, `cv`, `ktm`, `transkrip`, `portofolio`, `nama_darurat`, `hubungan_darurat`, `telepon_darurat`, `status`, `komentar_admin`, `created_at`, `user_id`) VALUES
(7, 'm frizy oktario', 'agam', '2003-10-17', 'Laki-laki', 'padang', '082283003189', 'frizy@gmail.com', 'uploads/foto/1746290486_foto1.png', 'uin ib', 'Sistem Informasi', 'saintek', 'Sarjana (S', '6', '3.7', 'it support', '6 januri 2025 - 24 februari 2025  ', 'pemenuhan tuntutan kampus', 'uploads/surat_pengantar/1746290486_TECHNOPRENEURSHIP.pdf', 'uploads/cv/1746290486_TECHNOPRENEURSHIP.pdf', 'uploads/ktm/1746290486_TECHNOPRENEURSHIP.pdf', 'uploads/transkrip/1746290486_TECHNOPRENEURSHIP.pdf', 'uploads/portofolio/1746290486_TECHNOPRENEURSHIP.pdf', 'andika', 'kakak', '082283003189', 'diterima', 'memenuhi kriteria', '2025-05-03 16:41:26', 36),
(8, 'dio brando', 'padang', '2001-01-01', 'Laki-laki', 'padang', '082283003189', 'dio@gmail.com', 'uploads/foto/1746290656_foto2.png', 'unp', 'informatika', 'teknik', 'Sarjana (S', '6', '3,5', 'it support', '6 januri 2025 - 24 februari 2025  ', 'pemenuhan tuntutan kampus', 'uploads/surat_pengantar/1746290656_rangkuman.pdf', 'uploads/cv/1746290656_rangkuman.pdf', 'uploads/ktm/1746290656_rangkuman.pdf', 'uploads/transkrip/1746290656_rangkuman.pdf', 'uploads/portofolio/1746290656_rangkuman.pdf', 'fani', 'kakak', '081267408877', 'ditolak', 'posisi sudah terisi', '2025-05-03 16:44:16', 37),
(9, 'rani wahyuni', 'bukittinggi', '2002-02-02', 'Perempuan', 'bukittinggi', '081267408877', 'rani@gmail.com', 'uploads/foto/1746290779_foto3.jpg', 'unand', 'informatika', 'teknik', 'Sarjana (S', '6', '3,5', 'it support', '6 januri 2025 - 24 februari 2025  ', 'pemenuhan tuntutan kampus', 'uploads/surat_pengantar/1746290779_rangkuman.pdf', 'uploads/cv/1746290779_rangkuman.pdf', 'uploads/ktm/1746290779_rangkuman.pdf', 'uploads/transkrip/1746290779_rangkuman.pdf', 'uploads/portofolio/1746290779_rangkuman.pdf', 'fabian', 'kakak', '082283003185', 'ditolak', 'penuh', '2025-05-03 16:46:19', 38),
(11, 'Aulia Rahman', 'Padang', '2003-02-01', 'Laki-laki', '-', '-', 'rahmanygy@gmail.com', 'uploads/foto/1747072273_registrasi.jpeg', 'aaqadqd', '-', '-', 'Diploma (D', '-', '-', '-', '=', '-', 'uploads/surat_pengantar/1747072273_Melihat berkas pendaftar ,,.png', 'uploads/cv/1747072273_Melihat Data Statistik ,.png', 'uploads/ktm/1747072273_WhatsApp Image 2025-04-28 at 21.45.51.jpeg', 'uploads/transkrip/1747072273_WhatsApp Image 2025-04-28 at 21.45.51 (1).jpeg', 'uploads/portofolio/1747072273_WhatsApp Image 2025-05-05 at 17.00.32.jpeg', '-', '-', '-', 'diterima', 'bidang ini penuh silhkan ganti di bidang lain', '2025-05-12 17:51:13', 42);

-- --------------------------------------------------------

--
-- Table structure for table `security_questions`
--

CREATE TABLE `security_questions` (
  `id` int(11) NOT NULL,
  `question_text` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `security_questions`
--

INSERT INTO `security_questions` (`id`, `question_text`) VALUES
(3, 'Apa nama hewan peliharaan pertama Anda?'),
(1, 'Apa nama ibu kandung Anda?'),
(4, 'Apa nama sekolah dasar Anda?'),
(2, 'Di kota apa Anda dilahirkan?');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `session_token` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','pendaftar') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`, `created_at`) VALUES
(4, 'admin', '', '$2y$10$0D3ChnnOkRAMS2Kq/VmWuuDB03D0XEKdxvjVGbmOPg31aIuu7aeim', 'admin', '2025-04-13 14:36:07'),
(36, 'frizy', 'frizy@gmail.com', '$2y$10$8GwDHmI8KNudW7dvLf3bl.U2.O.U6HaUFwTCQBQ7cvCcUy9PKlTD.', 'pendaftar', '2025-04-30 17:29:58'),
(37, 'dio', 'dio@gmail.com', '$2y$10$4ExA.DQfUe1mA8XLNMk/oOm1dFdnTmnV1iDTri6PYBfwhdH3CzDdC', 'pendaftar', '2025-05-03 14:08:19'),
(38, 'rani', 'rani@gmail.com', '$2y$10$m0Csa/iDZEzYmMZNrYrp3ObHWgpUqOW4Tcq7NzmD9uzrPeHrYlDrO', 'pendaftar', '2025-05-03 16:44:48'),
(39, 'rio', 'rio@gmail.com', '$2y$10$J1zkWfoCXxpdxw7wlUIaBOA7nC2JgUvJzRBqoASDzjUAm524Drj2W', 'pendaftar', '2025-05-03 18:01:11'),
(40, 'alex', 'alex123@gmail.com', '$2y$10$csXJ3gFl2MuPf16Nx5b9k.BgfLcChwSe/N31WSNv6kAZlrQFswW6y', 'pendaftar', '2025-05-10 09:45:25'),
(41, 'fauzan', 'fauzan123@gmail.com', '$2y$10$GeohJYfH3UUfcCZRbos8MuTg8HC5benH4W0Yr4ljMrx6xKDQsiKjm', 'pendaftar', '2025-05-12 16:01:01'),
(42, 'aulia', 'aulia123@gmail.com', '$2y$10$S52h6MTUYRZR0fiojSpyg.TvvvOOEcDg0uWkxA16HZqrfQ846jYhy', 'pendaftar', '2025-05-12 17:02:05');

-- --------------------------------------------------------

--
-- Table structure for table `user_security_answers`
--

CREATE TABLE `user_security_answers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_security_answers`
--

INSERT INTO `user_security_answers` (`id`, `user_id`, `question_id`, `answer`, `created_at`) VALUES
(2, 36, 4, 'sd 13 guguak randah', '2025-04-30 17:29:58'),
(3, 37, 3, 'ciis', '2025-05-03 14:08:19'),
(4, 38, 2, 'bukittinggi', '2025-05-03 16:44:48'),
(5, 39, 4, 'sd 2', '2025-05-03 18:01:11'),
(6, 40, 3, 'opet', '2025-05-10 09:45:25'),
(7, 41, 2, 'solok selatan', '2025-05-12 16:01:01'),
(8, 42, 4, 'sd aja', '2025-05-12 17:02:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pendaftar`
--
ALTER TABLE `pendaftar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user` (`user_id`);

--
-- Indexes for table `security_questions`
--
ALTER TABLE `security_questions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `question_text` (`question_text`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `user_security_answers`
--
ALTER TABLE `user_security_answers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`question_id`),
  ADD KEY `question_id` (`question_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pendaftar`
--
ALTER TABLE `pendaftar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `security_questions`
--
ALTER TABLE `security_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `user_security_answers`
--
ALTER TABLE `user_security_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pendaftar`
--
ALTER TABLE `pendaftar`
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sessions`
--
ALTER TABLE `sessions`
  ADD CONSTRAINT `sessions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_security_answers`
--
ALTER TABLE `user_security_answers`
  ADD CONSTRAINT `user_security_answers_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_security_answers_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `security_questions` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
